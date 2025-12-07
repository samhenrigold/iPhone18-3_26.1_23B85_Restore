Swift::Int sub_1001C03EC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_101391C00[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1001C0474(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_101391C00[v2]);
  return Hasher._finalize()();
}

uint64_t sub_1001C04C0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001D9514(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001C0504(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001DB39C();
  v5 = sub_1000C3258();

  return Error<>._code.getter(a1, a2, v4, v5);
}

unint64_t sub_1001C055C()
{
  v1 = type metadata accessor for StandaloneBeacon(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OwnedBeaconRecord(0);
  __chkstk_darwin(v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OwnedBeaconGroup(0);
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AirPodsLEPairingManager.BeaconCreationResult(0);
  __chkstk_darwin(v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001DA7B4(v0, v12, type metadata accessor for AirPodsLEPairingManager.BeaconCreationResult);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1001DA9D8(v12, v3, type metadata accessor for StandaloneBeacon);
    v24 = 0;
    v25 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v24 = 0xD000000000000014;
    v25 = 0x800000010134B540;
    type metadata accessor for UUID();
    sub_1001DAC6C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v13);

    v14._countAndFlagsBits = 41;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    v15 = v24;
    v16 = type metadata accessor for StandaloneBeacon;
    v17 = v3;
  }

  else
  {
    v18 = *(sub_1000BC4D4(&qword_101697330, &qword_101391910) + 48);
    sub_1001DA9D8(v12, v9, type metadata accessor for OwnedBeaconGroup);
    sub_1001DA9D8(&v12[v18], v6, type metadata accessor for OwnedBeaconRecord);
    v24 = 0;
    v25 = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    v24 = 0xD000000000000010;
    v25 = 0x800000010134B560;
    type metadata accessor for UUID();
    sub_1001DAC6C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v19);

    v20._countAndFlagsBits = 0x6E6F63616562202CLL;
    v20._object = 0xEA0000000000203ALL;
    String.append(_:)(v20);
    v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v21);

    v22._countAndFlagsBits = 41;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    v15 = v24;
    sub_1001DAA40(v6, type metadata accessor for OwnedBeaconRecord);
    v16 = type metadata accessor for OwnedBeaconGroup;
    v17 = v9;
  }

  sub_1001DAA40(v17, v16);
  return v15;
}

uint64_t sub_1001C0974()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_101698F70);
  v1 = sub_1000076D4(v0, qword_101698F70);
  if (qword_1016950E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177C448);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001C0A54(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_100044B3C(v3, a2);
  sub_1000076D4(v3, a2);
  return static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
}

uint64_t sub_1001C0AA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4;
  v36 = a4;
  v35 = a3;
  v38 = a1;
  v39 = a2;
  v6 = type metadata accessor for UUID();
  __chkstk_darwin(v6 - 8);
  v37 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v8);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1000BC488();
  (*(v11 + 104))(v13, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v10);
  static DispatchQoS.unspecified.getter();
  v40 = _swiftEmptyArrayStorage;
  sub_1001DAC6C(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v4 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v4 + 56) = 0;
  *(v4 + 72) = &_swiftEmptySetSingleton;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  sub_1000BC4D4(&unk_1016B11B0, &unk_101391880);
  swift_allocObject();
  *(v4 + 104) = PassthroughSubject.init()();
  *(v4 + 112) = xmmword_10138BBF0;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0u;
  *(v4 + 160) = 0;
  *(v4 + 168) = 0xF000000000000000;
  *(v4 + 176) = _swiftEmptyArrayStorage;
  *(v4 + 184) = 0;
  *(v4 + 192) = 0;
  if (qword_1016950E0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177C448);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "AirPodsLEPairingManager.init", v17, 2u);
  }

  v18 = v39;
  *(v5 + 24) = v38;
  *(v5 + 32) = v18;
  type metadata accessor for AccessoryPairingValidator();
  v19 = swift_allocObject();
  type metadata accessor for DeviceIdentityUtility(0);
  v20 = swift_allocObject();

  swift_defaultActor_initialize();
  v21 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v22 = type metadata accessor for Date();
  (*(*(v22 - 8) + 56))(v20 + v21, 1, 1, v22);
  *(v20 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v20 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v20 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 9;
  *(v19 + 16) = v20;
  *(v19 + 24) = 0;
  *(v5 + 48) = v19;
  *(v5 + 200) = v35 & 1;
  v23 = v37;
  *(v5 + 208) = v36;
  UUID.init()();
  v24 = *(v5 + 48);
  v25 = *(v5 + 16);
  type metadata accessor for AccessoryPairingCoordinator(0);
  swift_allocObject();

  v26 = sub_10110ABC0(v23, v24, v25);
  v27 = v26;
  if (v26)
  {
    *(v5 + 64) = v26;

    sub_1000BC4D4(&unk_1016A6140, &unk_1013D4EB0);
    unsafeFromAsyncTask<A>(_:)();
    v28 = v40;
    if (v40)
    {

      *(v5 + 40) = v28;
      return v5;
    }

    sub_100101B58();
    swift_allocError();
    *v29 = 16;
    *(v29 + 8) = 0u;
    *(v29 + 24) = 0u;
    *(v29 + 40) = 11;
    swift_willThrow();

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Missing central manager service!", v32, 2u);
    }
  }

  else
  {
  }

  if (v27)
  {
  }

  sub_100006654(*(v5 + 112), *(v5 + 120));

  sub_1000BB27C(*(v5 + 144), *(v5 + 152));
  sub_100006654(*(v5 + 160), *(v5 + 168));

  type metadata accessor for AirPodsLEPairingManager();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1001C11BC()
{
  v1 = v0;
  if (qword_1016950E0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C448);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "AirPodsLEPairingManager.deinit", v5, 2u);
  }

  sub_100006654(*(v1 + 112), *(v1 + 120));

  sub_1000BB27C(*(v1 + 144), *(v1 + 152));
  sub_100006654(*(v1 + 160), *(v1 + 168));

  return v1;
}

uint64_t sub_1001C133C()
{
  sub_1001C11BC();

  return swift_deallocClassInstance();
}

uint64_t sub_1001C1394()
{
  v1 = v0;
  sub_1000BC4D4(&unk_1016B11B0, &unk_101391880);
  swift_allocObject();
  v2 = PassthroughSubject.init()();
  *(v0 + 104) = v2;

  v3 = *(v0 + 16);
  OS_dispatch_queue.sync<A>(execute:)();
  if (aBlock[0])
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177C448);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Existing pairing session in progress!", v7, 2u);
    }

    aBlock[0] = v2;
    sub_1000041A4(&qword_1016B1210, &unk_1016B11B0, &unk_101391880, &protocol conformance descriptor for PassthroughSubject<A, B>);
    v8 = Publisher.eraseToAnyPublisher()();
    goto LABEL_9;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = sub_1001DAF8C;
  *(v9 + 24) = v1;
  aBlock[4] = sub_1000D2FB0;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_101612E78;
  v10 = _Block_copy(aBlock);

  dispatch_sync(v3, v10);
  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v13 = type metadata accessor for Transaction();
    __chkstk_darwin(v13);
    static Transaction.named<A>(_:with:)();
    aBlock[0] = v2;
    sub_1000041A4(&qword_1016B1210, &unk_1016B11B0, &unk_101391880, &protocol conformance descriptor for PassthroughSubject<A, B>);
    v8 = Publisher.eraseToAnyPublisher()();

LABEL_9:

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001C1780(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + 16);
  *v5 = v6;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    *(a1 + 184) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001C1894(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v50 = a4;
  v38 = a8;
  v39 = a5;
  v40 = a6;
  v51 = a3;
  v42 = a1;
  v43 = a9;
  v47 = type metadata accessor for DispatchWorkItemFlags();
  v49 = *(v47 - 8);
  __chkstk_darwin(v47);
  v45 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for DispatchQoS();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v41 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MACAddress();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v36 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v35 - v17;
  v44 = *(a2 + 16);
  v37 = a2;
  v19 = *(v14 + 16);
  v19(&v35 - v17, a7, v13);
  v19(&v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v38, v13);
  v20 = *(v14 + 80);
  v21 = (v20 + 42) & ~v20;
  v22 = v15 + 7;
  v23 = (v15 + 7 + v21) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v20 + v23 + 8) & ~v20;
  v25 = (v22 + v24) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v27 = v50;
  v28 = v51;
  *(v26 + 16) = a2;
  *(v26 + 24) = v28;
  *(v26 + 32) = v27;
  LOBYTE(v27) = v40;
  *(v26 + 40) = v39;
  *(v26 + 41) = v27;
  v29 = *(v14 + 32);
  v29(v26 + v21, v18, v13);
  *(v26 + v23) = v42;
  v29(v26 + v24, v36, v13);
  *(v26 + v25) = v43;
  aBlock[4] = sub_1001DAFD0;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101612EC8;
  v30 = _Block_copy(aBlock);

  sub_10002E98C(v51, v50);

  v31 = v41;
  static DispatchQoS.unspecified.getter();
  aBlock[8] = _swiftEmptyArrayStorage;
  sub_1001DAC6C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v32 = v45;
  v33 = v47;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v30);
  (*(v49 + 8))(v32, v33);
  (*(v46 + 8))(v31, v48);
}

uint64_t sub_1001C1D18(void *a1, uint64_t a2, unint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v150 = a8;
  v152 = a7;
  v165 = a6;
  v166 = type metadata accessor for MACAddress();
  v170 = *(v166 - 8);
  v164 = *(v170 + 64);
  v13 = __chkstk_darwin(v166);
  v151 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v163 = &v108 - v15;
  v16 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v16 - 8);
  v18 = &v108 - v17;
  v158 = sub_1000BC4D4(&qword_1016994E8, &qword_101391A00);
  v161 = *(v158 - 8);
  __chkstk_darwin(v158);
  v20 = &v108 - v19;
  v120 = sub_1000BC4D4(&qword_1016994F0, &qword_101391A08);
  v155 = *(v120 - 8);
  __chkstk_darwin(v120);
  v116 = &v108 - v21;
  v122 = sub_1000BC4D4(&qword_1016994F8, &qword_101391A10);
  v125 = *(v122 - 8);
  __chkstk_darwin(v122);
  v117 = &v108 - v22;
  v126 = sub_1000BC4D4(&qword_101699500, &qword_101391A18);
  v128 = *(v126 - 8);
  __chkstk_darwin(v126);
  v118 = &v108 - v23;
  v129 = sub_1000BC4D4(&qword_101699508, &qword_101391A20);
  v130 = *(v129 - 8);
  __chkstk_darwin(v129);
  v119 = &v108 - v24;
  v131 = sub_1000BC4D4(&qword_101699510, &qword_101391A28);
  v132 = *(v131 - 8);
  __chkstk_darwin(v131);
  v121 = &v108 - v25;
  v133 = sub_1000BC4D4(&qword_101699518, &qword_101391A30);
  v134 = *(v133 - 8);
  __chkstk_darwin(v133);
  v124 = &v108 - v26;
  v135 = sub_1000BC4D4(&qword_101699520, &qword_101391A38);
  v136 = *(v135 - 8);
  __chkstk_darwin(v135);
  v127 = &v108 - v27;
  v141 = sub_1000BC4D4(&qword_101699528, &qword_101391A40);
  v139 = *(v141 - 8);
  __chkstk_darwin(v141);
  v123 = &v108 - v28;
  v143 = sub_1000BC4D4(&qword_101699530, &qword_101391A48);
  v142 = *(v143 - 8);
  __chkstk_darwin(v143);
  v140 = &v108 - v29;
  v146 = sub_1000BC4D4(&qword_101699538, &qword_101391A50);
  v145 = *(v146 - 8);
  __chkstk_darwin(v146);
  v144 = &v108 - v30;
  v149 = sub_1000BC4D4(&qword_101699540, &qword_101391A58);
  v148 = *(v149 - 8);
  __chkstk_darwin(v149);
  v162 = &v108 - v31;
  v32 = a1[14];
  v33 = a1[15];
  a1[14] = a2;
  a1[15] = a3;
  sub_10002E98C(a2, a3);
  sub_100006654(v32, v33);
  *(*(a1[8] + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_forcePair) = a4;
  type metadata accessor for AnalyticsEvent(0);
  v34 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v34 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v35 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v36 = type metadata accessor for DispatchTime();
  v37 = *(*(v36 - 8) + 56);
  v37(&v34[v35], 1, 1, v36);
  v37(&v34[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v36);
  *(v34 + 15) = 0xD00000000000002CLL;
  *(v34 + 16) = 0x800000010134D0D0;
  a1[24] = v34;

  type metadata accessor for Transaction();
  v38 = swift_allocObject();
  *(v38 + 16) = v34;
  *(v38 + 24) = a5;
  v147 = v34;

  static Transaction.asyncTask(name:block:)();

  type metadata accessor for AccessoryDiscoverySession(0);
  swift_allocObject();
  v39 = sub_10062E9B4();
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  v41 = v165;
  v137 = v39;
  v42 = sub_10062F30C(v165);
  v171 = a1[2];
  v43 = v171;
  v172 = v42;
  v160 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v44 = *(v160 - 8);
  v167 = *(v44 + 56);
  v159 = v44 + 56;
  v167(v18, 1, 1, v160);
  v110 = v43;
  sub_1000BC4D4(&qword_101699548, &unk_101391A70);
  v169 = sub_1000BC488();
  v109 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_1000041A4(&qword_1016A6240, &qword_101699548, &unk_101391A70, &protocol conformance descriptor for AnyPublisher<A, B>);
  v168 = sub_1001DAC6C(&qword_1016AF9C0, sub_1000BC488, &protocol conformance descriptor for OS_dispatch_queue);
  v153 = v18;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v18, &unk_1016B0FE0, &unk_101391980);

  v45 = v170;
  v46 = *(v170 + 16);
  v47 = v163;
  v48 = v166;
  v113 = v170 + 16;
  v112 = v46;
  v46(v163, v41, v166);
  v49 = *(v45 + 80);
  v111 = ~v49;
  v50 = (v49 + 24) & ~v49;
  v51 = (v164 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v115 = v49;
  v52 = swift_allocObject();
  *(v52 + 16) = a1;
  v53 = *(v45 + 32);
  v170 = v45 + 32;
  v114 = v53;
  v53((v52 + v50), v47, v48);
  *(v52 + v51) = v40;
  v54 = type metadata accessor for Peripheral(0);
  v154 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_1000041A4(&qword_101699550, &qword_1016994E8, &qword_101391A00, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v138 = v40;

  v55 = v116;
  v56 = v158;
  v156 = v54;
  Publisher.compactMap<A>(_:)();

  (v161[1])(v20, v56);

  static Subscribers.Demand.unlimited.getter();
  v157 = sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
  sub_1000041A4(&qword_101699558, &qword_1016994F0, &qword_101391A08, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  v158 = sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970, v109);
  v57 = v117;
  v58 = v120;
  Publisher.flatMap<A, B>(maxPublishers:_:)();
  v161 = a1;

  v155[1](v55, v58);
  v59 = v110;
  v172 = v110;
  v60 = v153;
  v61 = v160;
  v167(v153, 1, 1, v160);
  v155 = &protocol conformance descriptor for Publishers.FlatMap<A, B>;
  sub_1000041A4(&qword_101699560, &qword_1016994F8, &qword_101391A10, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v62 = v59;
  v63 = v118;
  v64 = v122;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v60, &unk_1016B0FE0, &unk_101391980);

  (*(v125 + 8))(v57, v64);
  static Subscribers.Demand.unlimited.getter();
  v65 = v154;
  sub_1000041A4(&qword_101699568, &qword_101699500, &qword_101391A18, v154);
  v66 = v119;
  v67 = v126;
  Publisher.flatMap<A, B>(maxPublishers:_:)();
  (*(v128 + 8))(v63, v67);
  v172 = v62;
  v68 = v153;
  v69 = v167;
  v167(v153, 1, 1, v61);
  sub_1000041A4(&qword_101699570, &qword_101699508, &qword_101391A20, v155);
  v70 = v62;
  v71 = v121;
  v72 = v68;
  v73 = v129;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v72, &unk_1016B0FE0, &unk_101391980);

  v74 = v66;
  v75 = v69;
  (*(v130 + 8))(v74, v73);
  static Subscribers.Demand.unlimited.getter();
  sub_1000041A4(&qword_101699578, &qword_101699510, &qword_101391A28, v65);
  v76 = v124;
  v77 = v131;
  Publisher.flatMap<A, B>(maxPublishers:_:)();
  v78 = v77;
  v79 = v72;
  v80 = v160;
  (*(v132 + 8))(v71, v78);
  v172 = v70;
  v75(v72, 1, 1, v80);
  sub_1000041A4(&qword_101699580, &qword_101699518, &qword_101391A30, v155);
  v81 = v127;
  v82 = v133;
  v83 = v76;
  Publisher.receive<A>(on:options:)();
  v84 = v123;
  sub_10000B3A8(v79, &unk_1016B0FE0, &unk_101391980);

  (*(v134 + 8))(v83, v82);
  sub_1000041A4(&qword_101699588, &qword_101699520, &qword_101391A38, v154);
  v85 = v135;
  Publisher.compactMap<A>(_:)();
  (*(v136 + 8))(v81, v85);
  if (qword_1016944A8 != -1)
  {
    swift_once();
  }

  v86 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_1000076D4(v86, qword_101698FA0);
  v172 = v70;
  v167(v79, 1, 1, v80);
  sub_1000041A4(&qword_101699590, &qword_101699528, &qword_101391A40, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  v87 = v140;
  v88 = v141;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_10000B3A8(v79, &unk_1016B0FE0, &unk_101391980);

  (*(v139 + 8))(v84, v88);
  sub_1000BC4D4(&unk_1016A6150, &unk_10139DB30);
  sub_1000041A4(&qword_101699598, &qword_101699530, &qword_101391A48, &protocol conformance descriptor for Publishers.Timeout<A, B>);
  v89 = v144;
  v90 = v143;
  Publisher.map<A>(_:)();
  (*(v142 + 8))(v87, v90);
  sub_1000BC4D4(&qword_1016A6160, &unk_10139DC80);
  sub_1000041A4(&qword_1016995A0, &qword_101699538, &qword_101391A50, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_1000041A4(&qword_1016A6170, &qword_1016A6160, &unk_10139DC80, &protocol conformance descriptor for Just<A>);
  v91 = v146;
  Publisher.catch<A>(_:)();
  (*(v145 + 8))(v89, v91);
  v92 = swift_allocObject();
  swift_weakInit();
  v93 = v163;
  v94 = v166;
  v95 = v112;
  v112(v163, v150, v166);
  v96 = v151;
  v95(v151, v165, v94);
  v97 = (v115 + 48) & v111;
  v98 = (v164 + v115 + v97) & v111;
  v99 = swift_allocObject();
  v100 = v152;
  *(v99 + 2) = v92;
  *(v99 + 3) = v100;
  v101 = v138;
  *(v99 + 4) = v137;
  *(v99 + 5) = v101;
  v102 = &v99[v97];
  v103 = v114;
  v114(v102, v93, v94);
  v103(&v99[v98], v96, v94);
  sub_1000041A4(&qword_1016995A8, &qword_101699540, &qword_101391A58, &protocol conformance descriptor for Publishers.Catch<A, B>);

  v104 = v149;
  v105 = v162;
  v106 = Publisher<>.sink(receiveValue:)();

  (*(v148 + 8))(v105, v104);
  v161[17] = v106;
}

uint64_t sub_1001C3380(uint64_t a1, char a2)
{
  *(v2 + 56) = a2;
  *(v2 + 40) = a1;
  sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0);
  *(v2 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_1001C3424, a1, 0);
}

uint64_t sub_1001C3424(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  static DispatchTime.now()();
  v4 = type metadata accessor for DispatchTime();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  swift_beginAccess();
  sub_10002311C(v3, v2 + v5, &qword_101696CA8, &qword_10138B5E0);
  swift_endAccess();

  return _swift_task_switch(sub_1001C351C, v2, 0);
}

uint64_t sub_1001C351C()
{
  sub_10118F4D8(*(v0 + 40), *(v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

void sub_1001C35A0(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v59 = a4;
  v64 = a2;
  v8 = type metadata accessor for MACAddress();
  v61 = *(v8 - 8);
  v62 = v8;
  __chkstk_darwin(v8);
  v60 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for UUID();
  v10 = *(v63 - 8);
  v11 = __chkstk_darwin(v63);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v57 - v14;
  v16 = *a1;
  if (qword_1016950E0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177C448);
  v18 = v16;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v58 = v15;
    v23 = a3;
    v24 = a5;
    v25 = v22;
    *v21 = 138543362;
    *(v21 + 4) = v18;
    *v22 = v18;
    v26 = v18;
    _os_log_impl(&_mh_execute_header, v19, v20, "Discovered %{public}@", v21, 0xCu);
    sub_10000B3A8(v25, &qword_10169BB30, &unk_10138B3C0);
    a5 = v24;
    a3 = v23;
    v15 = v58;
  }

  __chkstk_darwin(v27);
  *(&v57 - 2) = a3;
  *(&v57 - 1) = v28;
  sub_1000BC4D4(&unk_1016A6370, &unk_101391AA0);
  v29 = a3;
  Lock.callAsFunction<A>(_:)();
  v30 = v65[0];
  if (!v65[0])
  {
    v38 = v60;
    v39 = v61;
    v40 = v62;
    (*(v61 + 16))(v60, v29, v62);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v65[0] = v44;
      *v43 = 141558275;
      *(v43 + 4) = 1752392040;
      *(v43 + 12) = 2081;
      sub_1001DAC6C(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v38;
      v48 = v47;
      (*(v39 + 8))(v46, v40);
      v49 = sub_1000136BC(v45, v48, v65);

      *(v43 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v41, v42, "Missing connected peripheral for %{private,mask.hash}s", v43, 0x16u);
      sub_100007BAC(v44);
    }

    else
    {

      (*(v39 + 8))(v38, v40);
    }

LABEL_14:
    v30 = 0;
    goto LABEL_15;
  }

  v31 = [*(v65[0] + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject) identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v32 = [v18 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v32) = static UUID.== infix(_:_:)();
  v33 = *(v10 + 8);
  v34 = v63;
  v33(v13, v63);
  v33(v15, v34);
  if ((v32 & 1) == 0)
  {
    v50 = v18;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = a5;
      v55 = swift_slowAlloc();
      *v53 = 138543362;
      *(v53 + 4) = v50;
      *v55 = v50;
      v56 = v50;
      _os_log_impl(&_mh_execute_header, v51, v52, "Ignoring accessory %{public}@", v53, 0xCu);
      sub_10000B3A8(v55, &qword_10169BB30, &unk_10138B3C0);
      a5 = v54;
    }

    goto LABEL_14;
  }

  sub_100A245E8(0xD000000000000015, 0x800000010134D140);
  v35 = v59;
  swift_beginAccess();
  v36 = *(v35 + 16);
  *(v35 + 16) = v18;
  v37 = v18;

LABEL_15:
  *a5 = v30;
}

uint64_t sub_1001C3C24@<X0>(char **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v5;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  v6 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
  v7 = sub_10131F050(v3, v6);

  *a2 = v7;
  return result;
}

uint64_t sub_1001C3D08@<X0>(uint64_t *a1@<X8>)
{
  sub_1000BC4D4(&qword_1016A61D0, &unk_1013A3540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 56) = &type metadata for BAServiceIdentifier;
  *(inited + 64) = &off_10162CAF0;
  *(inited + 32) = 1;
  v3 = (inited + 32);
  v4 = sub_100A255C8(inited);
  swift_setDeallocating();
  result = sub_100007BAC(v3);
  *a1 = v4;
  return result;
}

uint64_t sub_1001C3DA4@<X0>(char **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_1016995B0, &unk_101391A80);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - v6;
  v8 = sub_1000BC4D4(&unk_1016A6310, &unk_10139DC90);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - v10;
  v12 = *a1;
  v34[3] = &type metadata for BAServiceIdentifier;
  v34[4] = &off_10162CAF0;
  LOBYTE(v34[0]) = 1;
  v13 = OBJC_IVAR____TtC12searchpartyd10Peripheral_services;
  swift_beginAccess();
  v14 = *&v12[v13];
  v33 = v34;

  v15 = sub_1012BBDB4(sub_1001DB3F8, v32, v14);

  sub_100007BAC(v34);
  if (v15)
  {
    v16 = sub_10039C428(&off_1016082D8);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = v16;
    sub_1000BC4D4(&unk_1016CDD30, &unk_101391A90);
    swift_allocObject();

    v34[0] = Future.init(_:)();
    sub_1000041A4(&qword_1016A6330, &unk_1016CDD30, &unk_101391A90, &protocol conformance descriptor for Future<A, B>);
    v18 = Publisher.eraseToAnyPublisher()();
  }

  else
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_10177C448);
    v21 = v12;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v31 = a2;
      v25 = v24;
      v26 = swift_slowAlloc();
      v30 = v9;
      v27 = v26;
      *v25 = 138412290;
      *(v25 + 4) = v21;
      *v26 = v21;
      v28 = v21;
      _os_log_impl(&_mh_execute_header, v22, v23, "No FindMy service for %@", v25, 0xCu);
      sub_10000B3A8(v27, &qword_10169BB30, &unk_10138B3C0);
      v9 = v30;

      a2 = v31;
    }

    v34[0] = v21;
    type metadata accessor for Peripheral(0);
    v29 = v21;
    Just.init(_:)();
    sub_100101B58();
    Just.setFailureType<A>(to:)();
    (*(v5 + 8))(v7, v4);
    sub_1000041A4(&qword_1016995B8, &unk_1016A6310, &unk_10139DC90, &protocol conformance descriptor for Result<A, B>.Publisher);
    v18 = Publisher.eraseToAnyPublisher()();
    result = (*(v9 + 8))(v11, v8);
  }

  *a2 = v18;
  return result;
}

uint64_t sub_1001C4234(uint64_t a1)
{
  sub_100101AA8(a1, v2);
  v2[41] = 1;
  sub_1000BC4D4(&unk_1016A6150, &unk_10139DB30);
  return Just.init(_:)();
}

uint64_t sub_1001C4290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int (*a6)(uint64_t, uint64_t, uint64_t), uint64_t a7)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  Transaction.capture()();
  sub_1000D2A70(a1, &v45, &unk_1016A6150, &unk_10139DB30);
  if ((v47 & 1) == 0)
  {
    v40 = a6;
    v22 = v45;
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_1000076D4(v23, qword_10177C448);
    sub_100A245E8(0xD000000000000013, 0x800000010134D120);
    *&v44[8] = &type metadata for BAServiceIdentifier;
    *&v44[16] = &off_10162CAF0;
    LOBYTE(v43) = 1;
    v24 = OBJC_IVAR____TtC12searchpartyd10Peripheral_services;
    v25 = swift_beginAccess();
    v26 = *&v22[v24];
    __chkstk_darwin(v25);
    v38 = &v43;

    v27 = sub_1012BBDB4(sub_1001DB280, v37, v26);

    sub_100007BAC(&v43);
    if (v27)
    {
      v39 = a4;
      *&v44[8] = &type metadata for BACharacteristicIdentifier.FindMy;
      *&v44[16] = &off_10162CAD0;
      LOBYTE(v43) = 0;
      v28 = swift_beginAccess();
      v29 = *(v27 + 40);
      __chkstk_darwin(v28);
      v38 = &v43;

      v30 = sub_1012BBE10(sub_1001DB2A0, v37, v29);

      sub_100007BAC(&v43);
      if (v30)
      {
        result = swift_beginAccess();
        v31 = *(a5 + 16);
        v32 = v39;
        if (!v31)
        {
          __break(1u);
          return result;
        }

        v33 = v31;
        sub_1001C4B28(v30, v22, v33, v40);

        sub_1001C86A8(v32, 0);
      }

      a4 = v39;
    }

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "No pairing characteristic!", v36, 2u);
    }

    sub_1001C86A8(a4, 1);
  }

  v43 = v45;
  *v44 = *v46;
  *&v44[9] = *&v46[9];
  if (qword_1016950E0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177C448);
  sub_100101AA8(&v43, v42);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v41[0] = v17;
    *v16 = 136446210;
    sub_100101B58();
    v18 = Error.localizedDescription.getter();
    v20 = v19;
    sub_100101B04(v42);
    v21 = sub_1000136BC(v18, v20, v41);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "Peripheral discovery error: %{public}s", v16, 0xCu);
    sub_100007BAC(v17);
  }

  else
  {

    sub_100101B04(v42);
  }

  sub_1001C48F8(a6, a7);
  sub_1001C86A8(a4, 1);

  return sub_100101B04(&v43);
}

uint64_t sub_1001C47D0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 16);
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    *a2 = *(a1 + 184);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001C48F8(unsigned int (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2)
{
  v5 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v2 + 16);
  *v11 = v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v11, v8);
  if (v12)
  {
    sub_1001D9F10();
    v15 = swift_allocError();
    *v16 = 3;
    v17 = type metadata accessor for MACAddress();
    v18 = *(v17 - 8);
    (*(v18 + 16))(v7, a2, v17);
    (*(v18 + 56))(v7, 0, 1, v17);
    sub_1001D8778(v15, a1, v7);
    sub_10000B3A8(v7, &qword_1016A40D0, &unk_10138BE70);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001C4B28(uint64_t a1, char *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v138 = a2;
  v139 = a3;
  v129 = a1;
  v7 = *v5;
  v8 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  __chkstk_darwin(v8 - 8);
  v130 = &v122 - v9;
  v10 = type metadata accessor for MACAddress();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = v5[2];
  *v17 = v18;
  v19 = *(v15 + 104);
  v134 = enum case for DispatchPredicate.onQueue(_:);
  v135 = v15 + 104;
  v133 = v19;
  v19(v17);
  v131 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  v21 = *(v15 + 8);
  v20 = v15 + 8;
  v136 = v17;
  v132 = v21;
  v21(v17, v14);
  if (v18)
  {
    v127 = v20;
    v125 = v7;
    if (qword_1016950E0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v22 = type metadata accessor for Logger();
  v23 = sub_1000076D4(v22, qword_10177C448);
  v24 = *(v11 + 16);
  v126 = a4;
  v24(v13, a4, v10);
  v137 = v23;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  v27 = os_log_type_enabled(v25, v26);
  v128 = v14;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v140 = v29;
    *v28 = 136446210;
    sub_1001DAC6C(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v5;
    v33 = v32;
    (*(v11 + 8))(v13, v10);
    v34 = sub_1000136BC(v30, v33, &v140);
    v5 = v31;

    *(v28 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v25, v26, "Start pairing AirPods. classicMACAddress: %{public}s", v28, 0xCu);
    sub_100007BAC(v29);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  v35 = v138;
  sub_100A245E8(0, 0xE000000000000000);
  v36 = v139;
  v37 = [v139 discoveredMetadata];
  v38 = [v37 productData];

  v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  v42 = sub_100314594(v39, v41);
  if (v43 >> 60 == 15)
  {
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Invalid product data!", v46, 2u);
    }

LABEL_17:

    return;
  }

  v47 = v43;
  v48 = v42;
  v49 = [v36 productInformation];
  if (!v49)
  {
    v44 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v44, v57, "Missing product info!", v58, 2u);
    }

    sub_100006654(v48, v47);
    goto LABEL_17;
  }

  v50 = v49;
  if (![v49 eligibleForPairing])
  {
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      v56 = "Not eligible for pairing!";
      goto LABEL_20;
    }

LABEL_21:
    sub_100006654(v48, v47);

    return;
  }

  v51 = v5[7];
  v5[7] = v35;
  v52 = v35;

  sub_1001C9E28(&v140);
  if (v142)
  {
    sub_10000B3A8(&v140, &qword_1016993E0, &qword_101391978);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      v56 = "Failed to create pairing coordinator!";
LABEL_20:
      _os_log_impl(&_mh_execute_header, v53, v54, v56, v55, 2u);

      goto LABEL_21;
    }

    goto LABEL_21;
  }

  v124 = v5;
  v59 = v140;
  v60 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo;
  v61 = *(v140 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
  v62 = *(v61 + 104);
  v63 = *(v61 + 112);
  *(v61 + 104) = v48;
  *(v61 + 112) = v47;

  v137 = v48;
  sub_10002E98C(v48, v47);
  sub_100006654(v62, v63);

  v64 = *(v59 + v60);

  v65 = v130;
  sub_101199070(v130);
  v66 = type metadata accessor for AccessoryProductInfo(0);
  v67 = v36;
  v68 = v50;
  v69 = *(v66 - 8);
  v70 = *(v69 + 56);
  v123 = v66;
  v70(v65, 0, 1);
  v71 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
  swift_beginAccess();
  sub_10002311C(v65, v64 + v71, &qword_101697268, &qword_101394FE0);
  swift_endAccess();

  v138 = v59;
  v72 = *(v59 + v60);

  v73 = [v67 discoveredMetadata];
  v74 = [v73 firmwareVersion];

  v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v77 = v76;

  *(v72 + 88) = v75;
  *(v72 + 96) = v77;

  v139 = v68;
  v78 = [v68 encryptionKeyE1];
  if (v78)
  {
    v79 = v78;
    v80 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v82 = v81;

    v140 = v80;
    v141 = v82;
    sub_1000E0A3C();
    v83 = DataProtocol.isNull.getter();
    sub_100016590(v80, v82);
    if ((v83 & 1) == 0)
    {
      v84 = [v139 verificationKeyS2];
      if (v84)
      {
        v85 = v84;
        v86 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v88 = v87;

        v140 = v86;
        v141 = v88;
        v89 = DataProtocol.isNull.getter();
        sub_100016590(v86, v88);
        if ((v89 & 1) == 0)
        {

          v90 = sub_10024C764(&v140);
          v92 = v91;
          v93 = *(v69 + 48);
          v94 = v123;
          if (v93(v91, 1, v123))
          {
            (v90)(&v140, 0);
          }

          else
          {
            v95 = [v139 encryptionKeyE1];
            if (v95)
            {
              v96 = v95;
              v130 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v98 = v97;

              v99 = v130;
            }

            else
            {
              v99 = 0;
              v98 = 0xF000000000000000;
            }

            v100 = (v92 + *(v94 + 96));
            v101 = *v100;
            v102 = v100[1];
            *v100 = v99;
            v100[1] = v98;
            sub_100006654(v101, v102);
            (v90)(&v140, 0);
          }

          v103 = sub_10024C764(&v140);
          v105 = v104;
          if (v93(v104, 1, v94))
          {
            (v103)(&v140, 0);
          }

          else
          {
            v106 = [v139 verificationKeyS2];
            if (v106)
            {
              v107 = v106;
              v108 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v110 = v109;
            }

            else
            {
              v108 = 0;
              v110 = 0xF000000000000000;
            }

            v111 = (v105 + *(v94 + 100));
            v112 = *v111;
            v113 = v111[1];
            *v111 = v108;
            v111[1] = v110;
            sub_100006654(v112, v113);
            (v103)(&v140, 0);
          }
        }
      }
    }
  }

  v114 = v136;
  v115 = v131;
  *v136 = v131;
  v116 = v128;
  v133(v114, v134, v128);
  v117 = v115;
  LOBYTE(v115) = _dispatchPreconditionTest(_:)();
  v132(v114, v116);
  if (v115)
  {
    v118 = type metadata accessor for Transaction();
    __chkstk_darwin(v118);
    v119 = v129;
    *(&v122 - 4) = v124;
    *(&v122 - 3) = v119;
    v120 = v126;
    v121 = v125;
    *(&v122 - 2) = v126;
    *(&v122 - 1) = v121;
    static Transaction.named<A>(_:with:)();
    sub_1001D9538(v119, v120);

    sub_100006654(v137, v47);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1001C56E0(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v70 = a5;
  v76 = a4;
  v73 = a1;
  v7 = type metadata accessor for MACAddress();
  v71 = *(v7 - 8);
  v72 = v7;
  __chkstk_darwin(v7);
  v68 = v8;
  v69 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v9 - 8);
  v11 = v49 - v10;
  v55 = sub_1000BC4D4(&qword_1016993E8, &unk_1013D4DF0);
  v56 = *(v55 - 8);
  __chkstk_darwin(v55);
  v50 = v49 - v12;
  v59 = sub_1000BC4D4(&qword_1016993F0, &qword_101391990);
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v75 = v49 - v13;
  v14 = sub_1000BC4D4(&qword_1016993F8, &qword_101391998);
  v60 = *(v14 - 8);
  v61 = v14;
  __chkstk_darwin(v14);
  v58 = v49 - v15;
  v16 = sub_1000BC4D4(&qword_101699400, &qword_1013919A0);
  v63 = *(v16 - 8);
  v64 = v16;
  __chkstk_darwin(v16);
  v62 = v49 - v17;
  v18 = sub_1000BC4D4(&qword_101699408, &qword_1013919A8);
  v66 = *(v18 - 8);
  v67 = v18;
  __chkstk_darwin(v18);
  v65 = v49 - v19;
  v78 = sub_101317D88(0, a3);
  v77 = *(a2 + 16);
  v20 = v77;
  v21 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v22 = *(v21 - 8);
  v52 = *(v22 + 56);
  v51 = v22 + 56;
  v52(v11, 1, 1, v21);
  v54 = v20;
  sub_1000BC4D4(&qword_1016C4520, &unk_1013B6090);
  v23 = sub_1000BC488();
  sub_1000041A4(&qword_101699348, &qword_1016C4520, &unk_1013B6090, &protocol conformance descriptor for AnyPublisher<A, B>);
  v24 = sub_1001DAC6C(&qword_1016AF9C0, sub_1000BC488, &protocol conformance descriptor for OS_dispatch_queue);
  v25 = v50;
  v53 = v23;
  v49[1] = v24;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v11, &unk_1016B0FE0, &unk_101391980);

  v26 = swift_allocObject();
  v27 = v76;
  *(v26 + 16) = a2;
  *(v26 + 24) = v27;
  v74 = a2;

  static Subscribers.Demand.unlimited.getter();
  sub_1000BC4D4(&qword_101699358, &unk_1013918D0);
  sub_1000041A4(&qword_101699410, &qword_1016993E8, &unk_1013D4DF0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  sub_1000041A4(&qword_101699418, &qword_101699358, &unk_1013918D0, &protocol conformance descriptor for Future<A, B>);
  v28 = v55;
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  (*(v56 + 8))(v25, v28);
  if (qword_1016944A8 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_1000076D4(v29, qword_101698FA0);
  v30 = v54;
  v78 = v54;
  v52(v11, 1, 1, v21);
  sub_1000041A4(&qword_101699420, &qword_1016993F0, &qword_101391990, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v31 = v58;
  v32 = v59;
  v33 = v75;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_10000B3A8(v11, &unk_1016B0FE0, &unk_101391980);

  (*(v57 + 8))(v33, v32);
  sub_1000BC4D4(&qword_101699350, &qword_1013918C8);
  sub_1000041A4(&qword_101699428, &qword_1016993F8, &qword_101391998, &protocol conformance descriptor for Publishers.Timeout<A, B>);
  v34 = v61;
  v35 = v62;
  Publisher.map<A>(_:)();
  (*(v60 + 8))(v31, v34);
  sub_1000BC4D4(&qword_101699430, &unk_1013919B0);
  sub_1000041A4(&qword_101699438, &qword_101699400, &qword_1013919A0, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_1000041A4(&qword_101699440, &qword_101699430, &unk_1013919B0, &protocol conformance descriptor for Just<A>);
  v36 = v64;
  v37 = v65;
  Publisher.catch<A>(_:)();
  (*(v63 + 8))(v35, v36);
  v38 = swift_allocObject();
  v39 = v74;
  swift_weakInit();
  v40 = v71;
  v41 = v69;
  v42 = v72;
  (*(v71 + 16))(v69, v70, v72);
  v43 = (*(v40 + 80) + 40) & ~*(v40 + 80);
  v44 = swift_allocObject();
  *(v44 + 2) = v38;
  v45 = v76;
  *(v44 + 3) = v73;
  *(v44 + 4) = v45;
  (*(v40 + 32))(&v44[v43], v41, v42);
  sub_1000041A4(&qword_101699448, &qword_101699408, &qword_1013919A8, &protocol conformance descriptor for Publishers.Catch<A, B>);

  v46 = v67;
  v47 = Publisher<>.sink(receiveValue:)();

  (*(v66 + 8))(v37, v46);
  *(v39 + 88) = v47;
}

uint64_t sub_1001C6120@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  if (qword_1016950E0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177C448);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Getting beacon group data...", v7, 2u);
  }

  sub_1001DACD4(v13);
  v10[10] = v13[10];
  v10[11] = v13[11];
  v10[12] = v13[12];
  v11 = v14;
  v10[6] = v13[6];
  v10[7] = v13[7];
  v10[8] = v13[8];
  v10[9] = v13[9];
  v10[2] = v13[2];
  v10[3] = v13[3];
  v10[4] = v13[4];
  v10[5] = v13[5];
  v10[0] = v13[0];
  v10[1] = v13[1];
  v12 = 0;
  v8 = sub_1001CA1CC(v10, a1);
  result = sub_10000B3A8(v10, &qword_101699350, &qword_1013918C8);
  *a2 = v8;
  return result;
}

uint64_t sub_1001C629C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  __chkstk_darwin(v8 - 8);
  v10 = &v30 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    Transaction.capture()();
    sub_1000D2A70(a1, &v35, &qword_101699350, &qword_1013918C8);
    if (v37)
    {
      v33 = v35;
      v34[0] = v36[0];
      *(v34 + 9) = *(v36 + 9);
      if (qword_1016950E0 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_1000076D4(v13, qword_10177C448);
      sub_100101AA8(&v33, v32);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v30 = a5;
        v17 = v16;
        v18 = swift_slowAlloc();
        v31 = v18;
        *v17 = 136446210;
        v19 = sub_1013181BC();
        v21 = v20;
        sub_100101B04(v32);
        v22 = sub_1000136BC(v19, v21, &v31);

        *(v17 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v14, v15, "Failed to write initial pairing data. Error %{public}s", v17, 0xCu);
        sub_100007BAC(v18);

        a5 = v30;
      }

      else
      {

        sub_100101B04(v32);
      }

      sub_1001C889C(a4);
      sub_100101B58();
      v27 = swift_allocError();
      sub_100101AA8(&v33, v28);
      v29 = type metadata accessor for MACAddress();
      (*(*(v29 - 8) + 56))(v10, 1, 1, v29);
      sub_1001D8778(v27, a5, v10);

      sub_10000B3A8(v10, &qword_1016A40D0, &unk_10138BE70);
      sub_100101B04(&v33);
    }

    else
    {
      sub_10000B3A8(&v35, &qword_101699350, &qword_1013918C8);
      if (qword_1016950E0 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_1000076D4(v23, qword_10177C448);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Requested beacon group data. Waiting for AirPods to respond.", v26, 2u);
      }

      *(v12 + 88) = 0;
    }
  }

  return result;
}

uint64_t sub_1001C6680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v111 = a2;
  v108 = a4;
  v102 = a1;
  v109 = type metadata accessor for MACAddress();
  v112 = *(v109 - 8);
  __chkstk_darwin(v109);
  v106 = v5;
  v107 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v6 - 8);
  v105 = &v71 - v7;
  v88 = sub_1000BC4D4(&qword_101699450, &unk_10139DBC0);
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v86 = &v71 - v8;
  v91 = sub_1000BC4D4(&qword_101699458, &qword_1013919C0);
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v89 = &v71 - v9;
  v10 = sub_1000BC4D4(&qword_101699460, &qword_1013919C8);
  v93 = *(v10 - 8);
  v94 = v10;
  __chkstk_darwin(v10);
  v92 = &v71 - v11;
  v12 = sub_1000BC4D4(&qword_101699468, &qword_1013919D0);
  v96 = *(v12 - 8);
  v97 = v12;
  __chkstk_darwin(v12);
  v95 = &v71 - v13;
  v14 = sub_1000BC4D4(&qword_101699470, &qword_1013919D8);
  v98 = *(v14 - 8);
  v99 = v14;
  __chkstk_darwin(v14);
  v104 = &v71 - v15;
  v16 = sub_1000BC4D4(&qword_101699478, &qword_1013919E0);
  v100 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v71 - v17;
  v19 = sub_1000BC4D4(&qword_101699480, &qword_1013919E8);
  v101 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v71 - v20;
  v22 = sub_1000BC4D4(&qword_101699488, &unk_1013919F0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v71 - v24;
  sub_1000BC4D4(&qword_101699490, &unk_1013B3BC0);
  v103 = a3;
  v26 = v110;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  if (v26)
  {

    v27 = 0;
    v28 = v111;
  }

  else
  {
    v74 = v18;
    v75 = v16;
    v76 = v21;
    v73 = v19;
    v77 = 0;
    v78 = v25;
    v79 = v23;
    v80 = v22;
    v72 = v114;
    v29 = v111;
    v113 = *(v111 + 16);
    v30 = v113;
    v85 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v31 = *(v85 - 8);
    v84 = *(v31 + 56);
    v83 = v31 + 56;
    v32 = v105;
    v84(v105, 1, 1, v85);
    v110 = sub_1000BC488();
    sub_1000041A4(&qword_101699498, &qword_101699490, &unk_1013B3BC0, &protocol conformance descriptor for AnyPublisher<A, B>);
    v81 = sub_1001DAC6C(&qword_1016AF9C0, sub_1000BC488, &protocol conformance descriptor for OS_dispatch_queue);
    v82 = v30;
    v33 = v86;
    Publisher.receive<A>(on:options:)();
    sub_10000B3A8(v32, &unk_1016B0FE0, &unk_101391980);

    static Subscribers.Demand.unlimited.getter();
    sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
    sub_1000BC4D4(&qword_101699378, &unk_1013B60B0);
    v71 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
    sub_1000041A4(&qword_1016994A0, &qword_101699450, &unk_10139DBC0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v72 = &protocol conformance descriptor for Future<A, B>;
    sub_1000041A4(&qword_1016994A8, &qword_101699378, &unk_1013B60B0, &protocol conformance descriptor for Future<A, B>);
    v34 = v89;
    v35 = v88;
    Publisher.flatMap<A, B>(maxPublishers:_:)();

    (*(v87 + 8))(v33, v35);
    v36 = v82;
    v114 = v82;
    v84(v32, 1, 1, v85);
    sub_1000041A4(&qword_1016994B0, &qword_101699458, &qword_1013919C0, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
    v37 = v92;
    v38 = v91;
    Publisher.receive<A>(on:options:)();
    sub_10000B3A8(v32, &unk_1016B0FE0, &unk_101391980);

    v90[1](v34, v38);
    v39 = v112;
    v40 = *(v112 + 16);
    v41 = v107;
    v42 = v109;
    v91 = v112 + 16;
    v90 = v40;
    (v40)(v107, v108, v109);
    v43 = *(v39 + 80);
    v88 = ~v43;
    v44 = swift_allocObject();
    *(v44 + 16) = v29;
    v45 = *(v39 + 32);
    v112 = v39 + 32;
    v89 = v45;
    (v45)(v44 + ((v43 + 24) & ~v43), v41, v42);

    v46 = sub_1000BC4D4(&qword_101699350, &qword_1013918C8);
    sub_1000041A4(&qword_1016994B8, &qword_101699460, &qword_1013919C8, v71);
    v47 = v94;
    v48 = v95;
    v87 = v46;
    Publisher.map<A>(_:)();

    (*(v93 + 8))(v37, v47);
    v49 = swift_allocObject();
    v50 = v103;
    *(v49 + 16) = v29;
    *(v49 + 24) = v50;
    v51 = v29;

    static Subscribers.Demand.unlimited.getter();
    sub_1000BC4D4(&qword_101699358, &unk_1013918D0);
    sub_1000041A4(&qword_1016994C0, &qword_101699468, &qword_1013919D0, &protocol conformance descriptor for Publishers.Map<A, B>);
    sub_1000041A4(&qword_101699418, &qword_101699358, &unk_1013918D0, v72);
    v52 = v97;
    Publisher.flatMap<A, B>(maxPublishers:_:)();

    (*(v96 + 8))(v48, v52);
    if (qword_1016944A0 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
    sub_1000076D4(v53, qword_101698F88);
    v54 = v82;
    v114 = v82;
    v55 = v105;
    v84(v105, 1, 1, v85);
    sub_1000041A4(&qword_1016994C8, &qword_101699470, &qword_1013919D8, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
    v56 = v74;
    v57 = v99;
    v58 = v104;
    Publisher.timeout<A>(_:scheduler:options:customError:)();
    sub_10000B3A8(v55, &unk_1016B0FE0, &unk_101391980);

    (*(v98 + 8))(v58, v57);
    sub_1000041A4(&qword_1016994D0, &qword_101699478, &qword_1013919E0, &protocol conformance descriptor for Publishers.Timeout<A, B>);
    v59 = v76;
    v60 = v75;
    Publisher.map<A>(_:)();
    (*(v100 + 8))(v56, v60);
    sub_1000BC4D4(&qword_101699430, &unk_1013919B0);
    sub_1000041A4(&qword_1016994D8, &qword_101699480, &qword_1013919E8, &protocol conformance descriptor for Publishers.Map<A, B>);
    sub_1000041A4(&qword_101699440, &qword_101699430, &unk_1013919B0, &protocol conformance descriptor for Just<A>);
    v61 = v78;
    v62 = v73;
    Publisher.catch<A>(_:)();
    (*(v101 + 8))(v59, v62);
    v63 = swift_allocObject();
    v28 = v51;
    swift_weakInit();
    v64 = v107;
    v65 = v109;
    (v90)(v107, v108, v109);
    v66 = (v43 + 40) & v88;
    v67 = swift_allocObject();
    v67[2] = v63;
    v68 = v103;
    v67[3] = v102;
    v67[4] = v68;
    (v89)(v67 + v66, v64, v65);
    sub_1000041A4(&qword_1016994E0, &qword_101699488, &unk_1013919F0, &protocol conformance descriptor for Publishers.Catch<A, B>);

    v69 = v80;
    v27 = Publisher<>.sink(receiveValue:)();

    (*(v79 + 8))(v61, v69);
  }

  *(v28 + 80) = v27;
}

uint64_t sub_1001C764C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 176);
  v3 = *(a1 + 144);
  v30 = *(a1 + 160);
  v31 = v2;
  v4 = *(a1 + 176);
  v32 = *(a1 + 192);
  v5 = *(a1 + 112);
  v7 = *(a1 + 80);
  v26 = *(a1 + 96);
  v6 = v26;
  v27 = v5;
  v8 = *(a1 + 112);
  v9 = *(a1 + 144);
  v28 = *(a1 + 128);
  v10 = v28;
  v29 = v9;
  v11 = *(a1 + 48);
  v13 = *(a1 + 16);
  v22 = *(a1 + 32);
  v12 = v22;
  v23 = v11;
  v14 = *(a1 + 48);
  v15 = *(a1 + 80);
  v24 = *(a1 + 64);
  v16 = v24;
  v25 = v15;
  v17 = *(a1 + 16);
  v21[0] = *a1;
  v18 = v21[0];
  v21[1] = v17;
  *(a2 + 160) = v30;
  *(a2 + 176) = v4;
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 96) = v6;
  *(a2 + 112) = v8;
  *(a2 + 128) = v10;
  *(a2 + 144) = v3;
  *(a2 + 32) = v12;
  *(a2 + 48) = v14;
  *(a2 + 64) = v16;
  *(a2 + 80) = v7;
  v33 = *(a1 + 208);
  *(a2 + 208) = *(a1 + 208);
  *a2 = v18;
  *(a2 + 16) = v13;
  *(a2 + 216) = 0;
  return sub_1001D9B48(v21, v20);
}

uint64_t sub_1001C7704(uint64_t a1)
{
  sub_100101AA8(a1, v2);
  v2[216] = 1;
  sub_1000BC4D4(&qword_101699350, &qword_1013918C8);
  return Just.init(_:)();
}

uint64_t sub_1001C7760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int (*a5)(uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Transaction.capture()();
    sub_1001C77EC(a1, a4, a5);
  }

  return result;
}

void sub_1001C77EC(uint64_t a1, uint64_t a2, unsigned int (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = v3;
  v105 = a3;
  v106 = a1;
  v6 = type metadata accessor for MACAddress();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v100 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v9 - 8);
  v101 = &v93 - v10;
  v11 = type metadata accessor for OwnedBeaconGroup(0);
  v98 = *(v11 - 8);
  v99 = v11;
  __chkstk_darwin(v11);
  v97 = (&v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  __chkstk_darwin(v13 - 8);
  v104 = &v93 - v14;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v4 + 16);
  *v18 = v19;
  (*(v16 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v15);
  v20 = v19;
  v21 = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v18, v15);
  if (v21)
  {
    v102 = v7;
    if (qword_1016950E0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177C448);
  sub_1000D2A70(v106, &v113, &qword_101699350, &qword_1013918C8);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  v25 = os_log_type_enabled(v23, v24);
  v103 = v6;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v95 = v4;
    v96 = a2;
    v28 = v27;
    *&v110[0] = v27;
    *v26 = 136315138;
    v94 = v22;
    sub_1000D2A70(&v113, &v107, &qword_101699350, &qword_1013918C8);
    sub_1000BC4D4(&qword_101699350, &qword_1013918C8);
    v29 = String.init<A>(describing:)();
    v31 = v30;
    sub_10000B3A8(&v113, &qword_101699350, &qword_1013918C8);
    v32 = sub_1000136BC(v29, v31, v110);

    *(v26 + 4) = v32;
    v22 = v94;
    _os_log_impl(&_mh_execute_header, v23, v24, "handlePublisherUpdate %s", v26, 0xCu);
    sub_100007BAC(v28);
    v4 = v95;
    a2 = v96;
  }

  else
  {

    sub_10000B3A8(&v113, &qword_101699350, &qword_1013918C8);
  }

  sub_1000D2A70(v106, &v113, &qword_101699350, &qword_1013918C8);
  if ((v126 & 1) == 0)
  {
    v110[10] = v122;
    v110[11] = v123;
    v110[12] = v124;
    v110[6] = v118;
    v110[7] = v119;
    v110[8] = v120;
    v110[9] = v121;
    v110[2] = v114[1];
    v110[3] = v115;
    v110[4] = v116;
    v110[5] = v117;
    v110[0] = v113;
    v110[1] = v114[0];
    v108[9] = v122;
    v108[10] = v123;
    v108[11] = v124;
    v108[5] = v118;
    v108[6] = v119;
    v108[7] = v120;
    v108[8] = v121;
    v108[1] = v114[1];
    v108[2] = v115;
    v108[3] = v116;
    v108[4] = v117;
    v111 = v125;
    v109 = v125;
    v107 = v113;
    v108[0] = v114[0];
    v44 = sub_1001DA684(&v107);
    if (v44 <= 3)
    {
      if (v44 == 1)
      {
        sub_10004CA28(&v107);
        v69 = Logger.logObject.getter();
        v70 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          *v71 = 0;
          _os_log_impl(&_mh_execute_header, v69, v70, "Sent initiate pairing.", v71, 2u);
        }

        sub_1001D9FB8(v110);
        *(*(v4 + 64) + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState) = 0;
        return;
      }

      if (v44 != 3)
      {
        goto LABEL_37;
      }
    }

    else if (v44 != 4)
    {
      if (v44 == 6)
      {
        if (qword_1016950D0 != -1)
        {
          swift_once();
        }

        sub_1000076D4(v22, qword_10177C418);
        v66 = Logger.logObject.getter();
        v67 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          *v68 = 0;
          _os_log_impl(&_mh_execute_header, v66, v67, "Requested beacon group data.", v68, 2u);

          sub_1001D9FB8(v110);
        }

        else
        {
        }

        *(*(v4 + 64) + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState) = 1;
        return;
      }

      if (v44 == 7)
      {
        v45 = *(v4 + 200);
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.default.getter();
        v48 = os_log_type_enabled(v46, v47);
        if (v45 == 1)
        {
          if (v48)
          {
            v49 = swift_slowAlloc();
            *v49 = 0;
            _os_log_impl(&_mh_execute_header, v46, v47, "Sent pairing complete, skip ackRequest.", v49, 2u);
          }
        }

        else
        {
          if (v48)
          {
            v84 = swift_slowAlloc();
            *v84 = 0;
            _os_log_impl(&_mh_execute_header, v46, v47, "Sent pairing complete, continue with ackRequest.", v84, 2u);
          }

          sub_1001CE9D4();
        }

        v85 = *(v4 + 64);
        if (*(v85 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState) == 9)
        {
          v86 = Logger.logObject.getter();
          v87 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v86, v87))
          {
            v88 = swift_slowAlloc();
            *v88 = 0;
            _os_log_impl(&_mh_execute_header, v86, v87, "Pairing has been completed for all serial numbers.", v88, 2u);
          }
        }

        else
        {
          *(v85 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState) = 6;
        }

        sub_1001D8094();
        v80 = a2;
LABEL_53:
        sub_1001C889C(v80);
        sub_1001D9FB8(v110);
        return;
      }

LABEL_37:

      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v112 = v75;
        *v74 = 136315138;
        v76 = sub_10110A934(*(*(v4 + 64) + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState));
        v78 = a2;
        v79 = sub_1000136BC(v76, v77, &v112);

        *(v74 + 4) = v79;
        a2 = v78;
        _os_log_impl(&_mh_execute_header, v72, v73, "Invalid pairing state %s!", v74, 0xCu);
        sub_100007BAC(v75);
      }

      v80 = a2;
      goto LABEL_53;
    }

    sub_10004CA28(&v107);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "Sent finalize pairing.", v62, 2u);
    }

    sub_1001D9FB8(v110);
    *(*(v4 + 64) + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState) = 4;
    return;
  }

  v107 = v113;
  v108[0] = v114[0];
  *(v108 + 9) = *(v114 + 9);
  sub_100101AA8(&v107, v110);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = a2;
    v36 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    *v36 = 136446466;
    v37 = sub_1013181BC();
    v39 = v38;
    sub_100101B04(v110);
    v40 = sub_1000136BC(v37, v39, &v112);

    *(v36 + 4) = v40;
    *(v36 + 12) = 2082;
    v41 = sub_10110A934(*(*(v4 + 64) + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState));
    v43 = sub_1000136BC(v41, v42, &v112);

    *(v36 + 14) = v43;
    _os_log_impl(&_mh_execute_header, v33, v34, "Pairing error %{public}s). Pairing state: %{public}s)", v36, 0x16u);
    swift_arrayDestroy();

    a2 = v35;
  }

  else
  {

    sub_100101B04(v110);
  }

  v50 = v102;
  sub_100101B58();
  v51 = swift_allocError();
  sub_100101AA8(&v107, v52);
  v54 = v103;
  v53 = v104;
  (*(v50 + 56))(v104, 1, 1, v103);
  sub_1001D8778(v51, v105, v53);
  sub_10000B3A8(v53, &qword_1016A40D0, &unk_10138BE70);

  sub_1001C889C(a2);
  v55 = *(v4 + 56);
  if (v55)
  {
    v56 = *(v4 + 64);
    if (*(v56 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState) >= 4u)
    {
      v57 = v55;
      v58 = v100;
      sub_100A22DF0(v100);
      v59 = v101;
      sub_100AC5D4C(v58, v101);
      (*(v50 + 8))(v58, v54);
      if ((*(v98 + 48))(v59, 1, v99) == 1)
      {
        sub_100101B04(&v107);

        sub_10000B3A8(v59, &unk_1016AF8B0, &unk_1013A0700);
        return;
      }

      v81 = v97;
      sub_1001DA9D8(v59, v97, type metadata accessor for OwnedBeaconGroup);
      v82 = (*(v56 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
      v83 = v82[1];
      if (v83 >> 60 == 15)
      {
      }

      else
      {
        *&v110[0] = *v82;
        v89 = *&v110[0];
        *(&v110[0] + 1) = v83;
        sub_100017D5C(*&v110[0], v83);
        sub_1000E0A3C();
        if (DataProtocol.isNull.getter())
        {
        }

        else
        {
          v90 = Data.trimmed.getter();
          v92 = v91;
          sub_1001D4BA8(v90, v91, v81);

          sub_100016590(v90, v92);
        }

        sub_100006654(v89, v83);
      }

      sub_1001DAA40(v81, type metadata accessor for OwnedBeaconGroup);
    }
  }

  else
  {
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v63, v64, "Missing peripheral to clean up pending pairing!", v65, 2u);
    }
  }

  sub_100101B04(&v107);
}

void sub_1001C86A8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v3 + 16);
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    if (qword_1016950E0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_10177C448);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "stopDiscovery", v14, 2u);
  }

  sub_10062EF30();
  *(v3 + 136) = 0;

  if (a2)
  {
    sub_1001C889C(0);
  }
}

void sub_1001C889C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + 16);
  *v7 = v8;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v10 = *(v5 + 104);
  v10(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v34 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v11 = *(v5 + 8);
  v11(v7, v4);
  if (v8)
  {
    v32 = v11;
    v33 = v10;
    if (qword_1016950E0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_10177C448);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v31 = a1;
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "cleanUp", v15, 2u);
    a1 = v31;
  }

  *(v2 + 80) = 0;

  *(v2 + 88) = 0;

  if (a1)
  {
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v35 = 13;
    v36 = 0u;
    v37 = 0u;
    v38 = 11;
    sub_100A5A2B8(&v35);
    sub_100101B04(&v35);
  }

  v16 = v33;
  *v7 = v34;
  v16(v7, v9, v4);
  v17 = _dispatchPreconditionTest(_:)();
  v32(v7, v4);
  if (v17)
  {
    *(v2 + 184) = 0;
    v18 = *(v2 + 160);
    v19 = *(v2 + 168);
    *(v2 + 160) = xmmword_10138BBF0;
    sub_100006654(v18, v19);

    PassthroughSubject.send(_:)();

    LOBYTE(v35) = 1;

    PassthroughSubject.send(completion:)();

    v20 = *(v2 + 56);
    if (!v20)
    {
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "Missing peripheral to clean up!", v29, 2u);
      }

      goto LABEL_15;
    }

    v21 = v20;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Disconnecting on cleanUp", v24, 2u);
    }

    v25 = *(v2 + 40);
    v35 = sub_10131FAE0(v21);
    sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
    sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher.oneshot(_:)();

    if (*(v25 + OBJC_IVAR____TtC12searchpartyd14CentralManager_isSharedPairingAgent) == 1)
    {
      __chkstk_darwin(v26);
      *(&v30 - 2) = v25;
      type metadata accessor for SharedPairingAgent();
      Lock.callAsFunction<A>(_:)();
      v27 = v35;
      sub_10104E044(v21);

LABEL_15:
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1001C8DD4(uint64_t a1)
{
  sub_1000D2A70(a1, &v11, &unk_1016A6150, &unk_10139DB30);
  if ((v13 & 1) == 0)
  {
    return sub_10000B3A8(&v11, &unk_1016A6150, &unk_10139DB30);
  }

  v9 = v11;
  *v10 = *v12;
  *&v10[9] = *&v12[9];
  sub_100101B58();
  swift_willThrowTypedImpl();
  swift_allocError();
  *v1 = v9;
  v1[1] = *v10;
  *(v1 + 25) = *&v10[9];
  swift_errorRetain();
  if (qword_1016950E0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C448);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    v7 = _convertErrorToNSError(_:)();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Disconnection failure: %{public}@!", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }
}

void sub_1001C8FD4(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v138 = a2;
  v139 = a3;
  v6 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v129[-v7];
  v9 = type metadata accessor for AccessoryProductInfo(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v129[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v140 = a1;
  v141 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo;
  v13 = *(a1 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
  v14 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
  swift_beginAccess();
  sub_1000D2A70(v13 + v14, v8, &qword_101697268, &qword_101394FE0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000B3A8(v8, &qword_101697268, &qword_101394FE0);
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_10177C418);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v144 = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_1000136BC(0xD00000000000003ELL, 0x800000010134CFC0, &v144);
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s Missing productInfo!", v18, 0xCu);
      sub_100007BAC(v19);
    }

    *a4 = 8;
    *(a4 + 8) = 0u;
    *(a4 + 24) = 0u;
    goto LABEL_23;
  }

  sub_1001DA9D8(v8, v12, type metadata accessor for AccessoryProductInfo);
  v20 = &v12[*(v9 + 96)];
  v21 = *v20;
  v22 = v20[1];

  v23 = sub_100F4F600(v21, v22);
  v25 = v24;

  v136 = v12;
  if (v25 >> 60 == 15)
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000076D4(v26, qword_10177C418);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Unable to generate E1 blob.", v29, 2u);
    }

LABEL_22:

    sub_1001DAA40(v136, type metadata accessor for AccessoryProductInfo);
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0;
LABEL_23:
    *(a4 + 40) = 11;
    *(a4 + 216) = 1;
    return;
  }

  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v135 = type metadata accessor for Logger();
  sub_1000076D4(v135, qword_10177C418);
  sub_100017D5C(v23, v25);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  sub_100006654(v23, v25);
  if (os_log_type_enabled(v30, v31))
  {
    v32 = v23;
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v144 = v34;
    *v33 = 136315138;
    sub_100017D5C(v32, v25);
    v35 = v25;
    v36 = Data.hexString.getter();
    v38 = v37;
    sub_100006654(v32, v35);
    v39 = sub_1000136BC(v36, v38, &v144);

    *(v33 + 4) = v39;
    v25 = v35;
    _os_log_impl(&_mh_execute_header, v30, v31, "E1: %s", v33, 0xCu);
    sub_100007BAC(v34);

    v23 = v32;
  }

  v40 = v140;
  v41 = (*(v140 + v141) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_findMyNetworkId);
  v42 = v41[1];
  if (v42 >> 60 == 15)
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v135, qword_10177C448);
    v27 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v27, v43, "Missing FindMyNetworkId to generate init pairing.", v44, 2u);
    }

    sub_100006654(v23, v25);
    goto LABEL_22;
  }

  v45 = *v41;
  if (*(v137 + 200) == 1)
  {
    sub_100017D5C(v45, v42);
    v46 = 0;
  }

  else
  {
    My = type metadata accessor for Feature.FindMy();
    *(&v145 + 1) = My;
    *&v146 = sub_1001DAC6C(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
    v48 = sub_1000280DC(&v144);
    (*(*(My - 8) + 104))(v48, enum case for Feature.FindMy.alphaWasp(_:), My);
    sub_100017D5C(v45, v42);
    LOBYTE(My) = isFeatureEnabled(_:)();
    sub_100007BAC(&v144);
    v46 = My & 1;
  }

  v49 = v45;
  v50 = *(v40 + v141);
  v51 = *(v50 + 16);
  v52 = *(v50 + 24);
  v130 = v46;
  v164 = v46;
  sub_10002E98C(v23, v25);
  v53 = v49;
  sub_10002E98C(v49, v42);
  sub_100017D5C(v51, v52);
  sub_1000198E8();
  v54 = FixedWidthInteger.data.getter();
  v133 = v52;
  v56 = v52 >> 62;
  if ((v52 >> 62) <= 1)
  {
    if (!v56)
    {
      v57 = BYTE6(v133);
LABEL_36:
      v59 = v138;
      v58 = v139;
      goto LABEL_37;
    }

LABEL_34:
    LODWORD(v57) = HIDWORD(v51) - v51;
    if (__OFSUB__(HIDWORD(v51), v51))
    {
      __break(1u);
      goto LABEL_99;
    }

    v57 = v57;
    goto LABEL_36;
  }

  v59 = v138;
  v58 = v139;
  if (v56 != 2)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v61 = *(v51 + 16);
  v60 = *(v51 + 24);
  v62 = __OFSUB__(v60, v61);
  v57 = v60 - v61;
  if (v62)
  {
    __break(1u);
    goto LABEL_34;
  }

LABEL_37:
  if (v57 != 32)
  {
    goto LABEL_105;
  }

  v63 = v25 >> 62;
  if ((v25 >> 62) <= 1)
  {
    if (!v63)
    {
      v64 = BYTE6(v25);
      goto LABEL_47;
    }

LABEL_45:
    LODWORD(v64) = HIDWORD(v23) - v23;
    if (!__OFSUB__(HIDWORD(v23), v23))
    {
      v64 = v64;
      goto LABEL_47;
    }

LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  if (v63 != 2)
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v66 = *(v23 + 16);
  v65 = *(v23 + 24);
  v62 = __OFSUB__(v65, v66);
  v64 = v65 - v66;
  if (v62)
  {
    __break(1u);
    goto LABEL_45;
  }

LABEL_47:
  if (v64 != 113)
  {
    goto LABEL_106;
  }

  v67 = v42 >> 62;
  if ((v42 >> 62) <= 1)
  {
    if (!v67)
    {
      v68 = BYTE6(v42);
      goto LABEL_57;
    }

LABEL_55:
    LODWORD(v68) = HIDWORD(v49) - v49;
    if (!__OFSUB__(HIDWORD(v49), v49))
    {
      v68 = v68;
      goto LABEL_57;
    }

LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  if (v67 != 2)
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v70 = *(v49 + 16);
  v69 = *(v49 + 24);
  v62 = __OFSUB__(v69, v70);
  v68 = v69 - v70;
  if (v62)
  {
    __break(1u);
    goto LABEL_55;
  }

LABEL_57:
  if (v68 != 32)
  {
    goto LABEL_107;
  }

  v71 = v55 >> 62;
  if ((v55 >> 62) <= 1)
  {
    if (!v71)
    {
      v72 = BYTE6(v55);
      goto LABEL_67;
    }

LABEL_65:
    LODWORD(v72) = HIDWORD(v54) - v54;
    if (!__OFSUB__(HIDWORD(v54), v54))
    {
      v72 = v72;
      goto LABEL_67;
    }

LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  if (v71 != 2)
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v74 = *(v54 + 16);
  v73 = *(v54 + 24);
  v62 = __OFSUB__(v73, v74);
  v72 = v73 - v74;
  if (v62)
  {
    __break(1u);
    goto LABEL_65;
  }

LABEL_67:
  if (v72 != 1)
  {
    goto LABEL_108;
  }

  v75 = v58 >> 62;
  if ((v58 >> 62) <= 1)
  {
    if (!v75)
    {
      v76 = BYTE6(v58);
      goto LABEL_77;
    }

LABEL_75:
    LODWORD(v76) = HIDWORD(v59) - v59;
    if (!__OFSUB__(HIDWORD(v59), v59))
    {
      v76 = v76;
      goto LABEL_77;
    }

LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  if (v75 != 2)
  {
LABEL_109:
    __break(1u);
    return;
  }

  v78 = *(v59 + 16);
  v77 = *(v59 + 24);
  v62 = __OFSUB__(v77, v78);
  v76 = v77 - v78;
  if (v62)
  {
    __break(1u);
    goto LABEL_75;
  }

LABEL_77:
  if (v76 != 96)
  {
    goto LABEL_109;
  }

  *&v163 = v59;
  *(&v163 + 1) = v58;
  *&v132 = v54;
  *(&v132 + 1) = v55;
  if (v75 == 2)
  {
    v81 = *(v59 + 16);
    v80 = *(v59 + 24);
    v79 = v80 - v81;
    if (!__OFSUB__(v80, v81))
    {
      goto LABEL_83;
    }

    goto LABEL_104;
  }

  if (v75 == 1)
  {
    if (!__OFSUB__(HIDWORD(v59), v59))
    {
      v79 = HIDWORD(v59) - v59;
LABEL_83:
      sub_100017D5C(v59, v58);
      goto LABEL_85;
    }

    goto LABEL_103;
  }

  v79 = BYTE6(v58);
LABEL_85:
  v137 = v53;
  if (__OFSUB__(96, v79))
  {
    __break(1u);
    goto LABEL_97;
  }

  *&v144 = sub_100845C88(96 - v79);
  *(&v144 + 1) = v82;
  sub_100776394(&v144, 0);
  v83 = v144;
  Data.append(_:)();
  sub_100016590(v83, *(&v83 + 1));
  *&v158 = v51;
  *(&v158 + 1) = v133;
  *&v159 = v23;
  *(&v159 + 1) = v25;
  *&v160 = v137;
  *(&v160 + 1) = v42;
  v133 = v42;
  v161 = v163;
  v162 = v132;
  if (qword_1016950E0 != -1)
  {
LABEL_97:
    swift_once();
  }

  v84 = sub_1000076D4(v135, qword_10177C448);
  v85 = v140;

  v135 = v84;
  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.default.getter();

  v88 = os_log_type_enabled(v86, v87);
  v134 = v25;
  v131 = v23;
  if (v88)
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    *&v144 = v90;
    *v89 = 136315138;
    v91 = *(v85 + v141);
    v92 = *(v91 + 16);
    v93 = *(v91 + 24);
    sub_100017D5C(v92, v93);
    v94 = Data.hexString.getter();
    v96 = v95;
    sub_100016590(v92, v93);
    v97 = v94;
    v98 = v137;
    v99 = sub_1000136BC(v97, v96, &v144);
    v100 = v139;

    *(v89 + 4) = v99;
    _os_log_impl(&_mh_execute_header, v86, v87, "sessionNonce: %s", v89, 0xCu);
    sub_100007BAC(v90);

    v101 = v138;
  }

  else
  {

    v98 = v137;
    v101 = v138;
    v100 = v139;
  }

  sub_100017D5C(v101, v100);
  v102 = Logger.logObject.getter();
  v103 = static os_log_type_t.default.getter();
  sub_100016590(v101, v100);
  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    *&v144 = v105;
    *v104 = 136315138;
    v106 = Data.hexString.getter();
    v108 = sub_1000136BC(v106, v107, &v144);

    *(v104 + 4) = v108;
    _os_log_impl(&_mh_execute_header, v102, v103, "companionSessionNonce: %s", v104, 0xCu);
    sub_100007BAC(v105);
  }

  v109 = v134;
  v147 = v161;
  v148 = v162;
  v145 = v159;
  v146 = v160;
  v144 = v158;
  sub_1001DAAA0(&v144);
  v110 = v98;
  v111 = v98;
  v112 = v133;
  sub_10002E98C(v110, v133);
  sub_1001DAB40(&v158, v143);
  v113 = Logger.logObject.getter();
  v114 = static os_log_type_t.default.getter();
  sub_100006654(v111, v112);
  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v142 = v116;
    v143[0] = v111;
    *v115 = 141558531;
    *(v115 + 4) = 1752392040;
    *(v115 + 12) = 2081;
    v143[1] = v112;
    sub_100101CD0();
    v117 = RawRepresentable<>.hexString.getter();
    v119 = sub_1000136BC(v117, v118, &v142);

    *(v115 + 14) = v119;
    *(v115 + 22) = 256;
    *(v115 + 24) = v130;
    _os_log_impl(&_mh_execute_header, v113, v114, "generateInitPairingPayload request success: fmNetworkId: %{private,mask.hash}s, accountHint: %hhu.", v115, 0x19u);
    sub_100007BAC(v116);

    sub_100006654(v131, v134);
    sub_1001DAB9C(&v158);
    sub_100006654(v111, v112);
  }

  else
  {
    sub_100006654(v131, v109);
    sub_1001DAB9C(&v158);

    sub_100006654(v111, v112);
  }

  sub_1001DAA40(v136, type metadata accessor for AccessoryProductInfo);
  v120 = v155;
  v121 = v156;
  v122 = v153;
  *(a4 + 160) = v154;
  *(a4 + 176) = v120;
  *(a4 + 192) = v121;
  v123 = v151;
  v124 = v152;
  v125 = v149;
  *(a4 + 96) = v150;
  *(a4 + 112) = v123;
  *(a4 + 128) = v124;
  *(a4 + 144) = v122;
  v126 = v147;
  v127 = v148;
  *(a4 + 32) = v146;
  *(a4 + 48) = v126;
  *(a4 + 208) = v157;
  *(a4 + 64) = v127;
  *(a4 + 80) = v125;
  v128 = v145;
  *a4 = v144;
  *(a4 + 16) = v128;
  *(a4 + 216) = 0;
}

void sub_1001C9E28(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + 16);
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_100F54748();
  if (v11 >> 60 == 15)
  {
    if (qword_1016950E0 == -1)
    {
LABEL_4:
      v12 = type metadata accessor for Logger();
      sub_1000076D4(v12, qword_10177C448);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "Unable to generate FindMyNetworkId.", v15, 2u);
      }

      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 40) = 267;
      return;
    }

LABEL_13:
    swift_once();
    goto LABEL_4;
  }

  v16 = v10;
  v17 = v11;
  if (qword_1016950E0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000076D4(v18, qword_10177C448);
  sub_100017D5C(v16, v17);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  sub_100006654(v16, v17);
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v32 = v22;
    *v21 = 136315138;
    sub_100017D5C(v16, v17);
    v23 = Data.hexString.getter();
    v25 = v24;
    sub_100006654(v16, v17);
    v26 = sub_1000136BC(v23, v25, &v32);

    *(v21 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v19, v20, "findMyNetworkId: %s", v21, 0xCu);
    sub_100007BAC(v22);
  }

  v27 = *(v2 + 64);
  v28 = (*(v27 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_findMyNetworkId);
  v29 = *v28;
  v30 = v28[1];
  *v28 = v16;
  v28[1] = v17;

  sub_100006654(v29, v30);

  *a1 = v27;
  *(a1 + 41) = 0;
}

uint64_t sub_1001CA1CC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v2 + 16);
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_5;
  }

  sub_1000D2A70(a1, &v28, &qword_101699350, &qword_1013918C8);
  if (v31)
  {
    v32 = v28;
    v33[0] = v29[0];
    *(v33 + 9) = *(v29 + 9);
    sub_100101AA8(&v32, &v25);
    v11 = swift_allocObject();
    v12 = v26[0];
    v11[1] = v25;
    v11[2] = v12;
    *(v11 + 41) = *(v26 + 9);
    sub_1000BC4D4(&qword_101699358, &unk_1013918D0);
    swift_allocObject();
    v13 = Future.init(_:)();
    sub_100101B04(&v32);
    return v13;
  }

  v41 = v29[9];
  v42 = v29[10];
  v43 = v29[11];
  v44 = v30;
  v37 = v29[5];
  v38 = v29[6];
  v39 = v29[7];
  v40 = v29[8];
  v33[1] = v29[1];
  v34 = v29[2];
  v35 = v29[3];
  v36 = v29[4];
  v32 = v28;
  v33[0] = v29[0];
  if (qword_1016950E0 != -1)
  {
    goto LABEL_10;
  }

LABEL_5:
  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177C448);
  sub_1001D9B48(&v32, &v25);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  sub_1001D9FB8(&v32);
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136446210;
    v26[9] = v41;
    v26[10] = v42;
    v26[11] = v43;
    v27 = v44;
    v26[5] = v37;
    v26[6] = v38;
    v26[7] = v39;
    v26[8] = v40;
    v26[1] = v33[1];
    v26[2] = v34;
    v26[3] = v35;
    v26[4] = v36;
    v25 = v32;
    v26[0] = v33[0];
    sub_1001D9B48(&v32, v23);
    v19 = String.init<A>(describing:)();
    v21 = sub_1000136BC(v19, v20, &v24);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "Sending %{public}s)", v17, 0xCu);
    sub_100007BAC(v18);
  }

  v13 = sub_1001D6CAC(&v32, a2);
  sub_1001D9FB8(&v32);
  return v13;
}

double sub_1001CA590@<D0>(uint64_t a1@<X0>, unsigned int (*a2)(uint64_t, uint64_t, uint64_t)@<X1>, unsigned __int128 *a3@<X8>)
{
  v451 = a2;
  v455 = a3;
  v5 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  __chkstk_darwin(v5 - 8);
  v436 = &v429 - v6;
  v7 = type metadata accessor for StandaloneBeacon(0);
  v8 = __chkstk_darwin(v7 - 8);
  v431 = &v429 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v441 = &v429 - v11;
  __chkstk_darwin(v10);
  v433 = &v429 - v12;
  v13 = type metadata accessor for OwnedBeaconRecord(0);
  __chkstk_darwin(v13 - 8);
  v437 = &v429 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v434 = type metadata accessor for AirPodsLEPairingManager.BeaconCreationResult(0);
  v15 = __chkstk_darwin(v434);
  v435 = &v429 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v438 = &v429 - v17;
  v439 = sub_1000BC4D4(&qword_1016993A0, &qword_101391908);
  __chkstk_darwin(v439);
  v440 = (&v429 - v18);
  v19 = type metadata accessor for OwnedBeaconGroup(0);
  v452 = *(v19 - 8);
  v453 = v19;
  v20 = __chkstk_darwin(v19);
  v432 = &v429 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v445 = &v429 - v22;
  v456 = type metadata accessor for Logger();
  v447 = *(v456 - 1);
  __chkstk_darwin(v456);
  v450 = (&v429 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v24 - 8);
  v448 = &v429 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for MACAddress();
  v443 = *(v26 - 8);
  v444 = v26;
  __chkstk_darwin(v26);
  v442 = &v429 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v29 = __chkstk_darwin(v28 - 8);
  v449 = &v429 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v446 = &v429 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = &v429 - v34;
  __chkstk_darwin(v33);
  v37 = &v429 - v36;
  v38 = type metadata accessor for DispatchPredicate();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v41 = (&v429 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v454 = v3;
  v42 = *(v3 + 16);
  *v41 = v42;
  (*(v39 + 104))(v41, enum case for DispatchPredicate.onQueue(_:), v38);
  v43 = v42;
  v44 = _dispatchPreconditionTest(_:)();
  (*(v39 + 8))(v41, v38);
  if ((v44 & 1) == 0)
  {
    __break(1u);
    goto LABEL_165;
  }

  sub_1001011C0(a1, &v517);
  sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
  if (!swift_dynamicCast())
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v456, qword_10177C448);
    sub_1001011C0(a1, &v470);
    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      *&v532 = v103;
      *v102 = 136446210;
      sub_1001011C0(&v470, v546);
      v104 = String.init<A>(describing:)();
      v106 = v105;
      sub_100007BAC(&v470);
      v107 = sub_1000136BC(v104, v106, &v532);

      *(v102 + 4) = v107;
      _os_log_impl(&_mh_execute_header, v100, v101, "Invalid command from payload %{public}s", v102, 0xCu);
      sub_100007BAC(v103);
    }

    else
    {

      sub_100007BAC(&v470);
    }

    goto LABEL_53;
  }

  v542 = v513;
  v543 = v514;
  v544 = v515;
  v538 = v509;
  v539 = v510;
  v540 = v511;
  v541 = v512;
  v534 = v505;
  v535 = v506;
  v536 = v507;
  v537 = v508;
  v532 = v503;
  v533 = v504;
  v499 = v513;
  v500 = v514;
  v501 = v515;
  v495 = v509;
  v496 = v510;
  v497 = v511;
  v498 = v512;
  v491 = v505;
  v492 = v506;
  v493 = v507;
  v494 = v508;
  v545 = v516;
  v502 = v516;
  v489 = v503;
  v490 = v504;
  if (qword_1016950E0 != -1)
  {
    swift_once();
  }

  v45 = sub_1000076D4(v456, qword_10177C448);
  sub_1001D9B48(&v532, &v470);
  v46 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();
  sub_1001D9FB8(&v532);
  if (os_log_type_enabled(v46, v44))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *&v518 = v48;
    *v47 = 136446210;
    v479 = v542;
    v480 = v543;
    v481 = v544;
    v482 = v545;
    v475 = v538;
    v476 = v539;
    v477 = v540;
    v478 = v541;
    v471[1] = v534;
    v472 = v535;
    v473 = v536;
    v474 = v537;
    v470 = v532;
    v471[0] = v533;
    sub_1001D9B48(&v532, v546);
    v49 = String.init<A>(describing:)();
    v42 = sub_1000136BC(v49, v50, &v518);

    *(v47 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v46, v44, "Received command: %{public}s", v47, 0xCu);
    sub_100007BAC(v48);
  }

  v546[10] = v542;
  v546[11] = v543;
  v546[12] = v544;
  v547 = v545;
  v546[6] = v538;
  v546[7] = v539;
  v546[8] = v540;
  v546[9] = v541;
  v546[2] = v534;
  v546[3] = v535;
  v546[4] = v536;
  v546[5] = v537;
  v546[0] = v532;
  v546[1] = v533;
  v51 = sub_1001DA684(v546);
  if (v51 == 5)
  {
    sub_10004CA28(v546);
    v158 = Logger.logObject.getter();
    v159 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v158, v159))
    {
      v160 = swift_slowAlloc();
      *v160 = 0;
      _os_log_impl(&_mh_execute_header, v158, v159, "Received pairing status.", v160, 2u);
    }

    v44 = *(v454 + 64);
    v155 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState;
    *(v44 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState) = 5;
    sub_100D5B64C(v488);
    sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
    if (swift_dynamicCast())
    {
      v485[0] = v457;
      v485[1] = v458[0];
      v486 = v458[1];
      v487 = v459;
      v45 = *(&v458[0] + 1);
      v153 = *&v458[0];
      sub_100017D5C(*&v458[0], *(&v458[0] + 1));
      v161 = sub_1008CDF88(v153, v45);
      if (v161)
      {
        v162 = v161;
        v163 = Logger.logObject.getter();
        v164 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v163, v164))
        {
          v165 = swift_slowAlloc();
          v166 = swift_slowAlloc();
          *&v470 = v166;
          *v165 = 136446210;
          v167 = sub_1008CDD10(v162);
          v169 = sub_1000136BC(v167, v168, &v470);

          *(v165 + 4) = v169;
          _os_log_impl(&_mh_execute_header, v163, v164, "Pairing failed with status %{public}s", v165, 0xCu);
          sub_100007BAC(v166);
        }

        sub_1001DA6B0(v485);
LABEL_66:
        sub_1001D9FB8(&v532);
        v177 = 8;
        goto LABEL_54;
      }

      v42 = *(&v485[0] + 1);
      v41 = *&v485[0];
      sub_100017D5C(*&v485[0], *(&v485[0] + 1));
      v37 = 0;
      sub_100496254(v41, v42, &v470);
      goto LABEL_81;
    }

    sub_1001D9B48(&v532, &v470);
    v180 = Logger.logObject.getter();
    v181 = static os_log_type_t.error.getter();
    sub_1001D9FB8(&v532);
    if (os_log_type_enabled(v180, v181))
    {
      v182 = swift_slowAlloc();
      v183 = swift_slowAlloc();
      *&v518 = v183;
      *v182 = 136446210;
      sub_100D5B64C(&v470);
      v188 = String.init<A>(describing:)();
      v190 = sub_1000136BC(v188, v189, &v518);

      *(v182 + 4) = v190;
      v187 = "Invalid sendPairingStatus payload %{public}s";
      goto LABEL_61;
    }

LABEL_62:

    sub_1001D9FB8(&v532);
    v178 = v455;
    v177 = 10;
    goto LABEL_55;
  }

  if (v51 != 2)
  {
    if (!v51)
    {
      v52 = sub_10004CA28(v546);
      v53 = *v52;
      v54 = *(v52 + 8);
      v55 = v45;
      v57 = *(v52 + 16);
      v56 = *(v52 + 24);
      v479 = v499;
      v480 = v500;
      v481 = v501;
      v482 = v502;
      v475 = v495;
      v476 = v496;
      v477 = v497;
      v478 = v498;
      v471[1] = v491;
      v472 = v492;
      v473 = v493;
      v474 = v494;
      v470 = v489;
      v471[0] = v490;
      v58 = sub_10004CA28(&v470);
      v60 = v58[2];
      v59 = v58[3];
      sub_100017D5C(*v58, v58[1]);
      sub_100017D5C(v60, v59);
      v430 = v55;
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.default.getter();
      sub_1001D9FB8(&v532);
      v63 = os_log_type_enabled(v61, v62);
      v456 = v53;
      v449 = v57;
      v450 = v54;
      v448 = v56;
      if (v63)
      {
        v64 = swift_slowAlloc();
        v447 = swift_slowAlloc();
        *&v485[0] = v447;
        *v64 = 136315138;
        *&v457 = v53;
        *(&v457 + 1) = v54;
        *&v458[0] = v57;
        *(&v458[0] + 1) = v56;
        v528 = v499;
        v529 = v500;
        v530 = v501;
        v531 = v502;
        v524 = v495;
        v525 = v496;
        v526 = v497;
        v527 = v498;
        v520 = v491;
        v521 = v492;
        v522 = v493;
        v523 = v494;
        v518 = v489;
        v519 = v490;
        v65 = sub_10004CA28(&v518);
        v66 = v65[2];
        v67 = v65[3];
        sub_100017D5C(*v65, v65[1]);
        sub_100017D5C(v66, v67);
        v68 = String.init<A>(describing:)();
        v70 = sub_1000136BC(v68, v69, v485);

        *(v64 + 4) = v70;
        _os_log_impl(&_mh_execute_header, v61, v62, "Received beacon group data %s", v64, 0xCu);
        sub_100007BAC(v447);
      }

      v528 = v499;
      v529 = v500;
      v530 = v501;
      v531 = v502;
      v524 = v495;
      v525 = v496;
      v526 = v497;
      v527 = v498;
      v520 = v491;
      v521 = v492;
      v522 = v493;
      v523 = v494;
      v518 = v489;
      v519 = v490;
      v71 = sub_10004CA28(&v518);
      v72 = v71[2];
      v73 = v71[3];
      sub_100017D5C(*v71, v71[1]);
      sub_100017D5C(v72, v73);
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.debug.getter();
      sub_1001D9FB8(&v532);
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *&v457 = v77;
        *v76 = 136315138;
        v78 = Data.hexString.getter();
        v80 = sub_1000136BC(v78, v79, &v457);

        *(v76 + 4) = v80;
        _os_log_impl(&_mh_execute_header, v74, v75, "numberOfBeacons: %s", v76, 0xCu);
        sub_100007BAC(v77);
      }

      v466 = v499;
      v467 = v500;
      v468 = v501;
      v469 = v502;
      v462 = v495;
      v463 = v496;
      v464 = v497;
      v465 = v498;
      v458[1] = v491;
      v459 = v492;
      v460 = v493;
      v461 = v494;
      v457 = v489;
      v458[0] = v490;
      v81 = sub_10004CA28(&v457);
      v82 = v81[2];
      v83 = v81[3];
      sub_100017D5C(*v81, v81[1]);
      sub_100017D5C(v82, v83);
      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.debug.getter();
      sub_1001D9FB8(&v532);
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        *&v485[0] = v87;
        *v86 = 136315138;
        v88 = Data.hexString.getter();
        v90 = sub_1000136BC(v88, v89, v485);

        *(v86 + 4) = v90;
        _os_log_impl(&_mh_execute_header, v84, v85, "beaconGroupData: %s", v86, 0xCu);
        sub_100007BAC(v87);
      }

      v91 = v456;
      v92 = v454;
      v93 = *(v454 + 64);
      *(v93 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState) = 2;
      v94 = *(v92 + 56);
      if (v94)
      {
        if (*(v92 + 200) == 1)
        {
          (*(v452 + 56))(v37, 1, 1, v453);
          v95 = v94;
          v96 = sub_10110D3E0(v37, 255);
          v453 = v97;
          v35 = v37;
          v99 = v448;
          v98 = v449;
LABEL_74:
          sub_10000B3A8(v35, &unk_1016AF8B0, &unk_1013A0700);
          v203 = sub_1000E0768(v91, v450, v98, v99);

          v204 = Logger.logObject.getter();
          v205 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v204, v205))
          {
            v206 = swift_slowAlloc();
            v456 = swift_slowAlloc();
            *&v485[0] = v456;
            *v206 = 136315138;
            type metadata accessor for MultipartAccessoryPairingInfo(0);
            sub_100101BAC();
            v207 = Dictionary.description.getter();
            v209 = v94;
            v210 = v96;
            v211 = v93;
            v212 = sub_1000136BC(v207, v208, v485);

            *(v206 + 4) = v212;
            v93 = v211;
            v96 = v210;
            v94 = v209;
            _os_log_impl(&_mh_execute_header, v204, v205, "beaconGroupInfo: %s", v206, 0xCu);
            sub_100007BAC(v456);
          }

          v213 = v453;
          *(*(v93 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds) = v203;

          sub_1001C8FD4(v93, v96, v213, v455);

          sub_1001D9FB8(&v532);
          sub_100016590(v96, v213);
          return result;
        }

        v94;
        sub_100AC5D4C(v451, v35);
        v194 = v446;
        sub_1000D2A70(v35, v446, &unk_1016AF8B0, &unk_1013A0700);
        if ((*(v452 + 48))(v194, 1, v453) == 1)
        {
          sub_10000B3A8(v194, &unk_1016AF8B0, &unk_1013A0700);
          v99 = v448;
          v98 = v449;
        }

        else
        {
          v195 = v442;
          v196 = v93;
          v197 = v194;
          sub_100A22DF0(v442);
          sub_10051578C(v195);
          v199 = v198;
          (*(v443 + 8))(v195, v444);
          v200 = v197;
          v93 = v196;
          sub_1001DAA40(v200, type metadata accessor for OwnedBeaconGroup);
          v201 = v199;
          v99 = v448;
          v98 = v449;
          if ((v201 & 0x100) == 0)
          {
LABEL_73:
            v96 = sub_10110D3E0(v35, v201);
            v453 = v202;
            goto LABEL_74;
          }
        }

        v201 = 255;
        goto LABEL_73;
      }

      v191 = Logger.logObject.getter();
      v192 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v191, v192))
      {
        v193 = swift_slowAlloc();
        *v193 = 0;
        _os_log_impl(&_mh_execute_header, v191, v192, "Missing peripheral to start pairing!", v193, 2u);
      }

      goto LABEL_66;
    }

    sub_1001D9B48(&v532, &v470);
    v170 = Logger.logObject.getter();
    v171 = static os_log_type_t.error.getter();
    sub_1001D9FB8(&v532);
    if (os_log_type_enabled(v170, v171))
    {
      v172 = swift_slowAlloc();
      v173 = swift_slowAlloc();
      *&v457 = v173;
      *v172 = 136446210;
      v479 = v542;
      v480 = v543;
      v481 = v544;
      v482 = v545;
      v475 = v538;
      v476 = v539;
      v477 = v540;
      v478 = v541;
      v471[1] = v534;
      v472 = v535;
      v473 = v536;
      v474 = v537;
      v470 = v532;
      v471[0] = v533;
      sub_1001D9B48(&v532, &v518);
      v174 = String.init<A>(describing:)();
      v176 = sub_1000136BC(v174, v175, &v457);

      *(v172 + 4) = v176;
      _os_log_impl(&_mh_execute_header, v170, v171, "Received unexpected command %{public}s", v172, 0xCu);
      sub_100007BAC(v173);
    }

    sub_1001D9FB8(&v532);
LABEL_53:
    v177 = 7;
LABEL_54:
    v178 = v455;
LABEL_55:
    *v178 = v177;
    result = 0.0;
    *(v178 + 8) = 0u;
    *(v178 + 24) = 0u;
    *(v178 + 40) = 11;
LABEL_56:
    *(v178 + 216) = 1;
    return result;
  }

  sub_10004CA28(v546);
  v108 = Logger.logObject.getter();
  v109 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v108, v109))
  {
    v110 = swift_slowAlloc();
    *v110 = 0;
    _os_log_impl(&_mh_execute_header, v108, v109, "Received pairing data.", v110, 2u);
  }

  sub_100D5B64C(&v457);
  sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
  if (!swift_dynamicCast())
  {
    sub_1001D9B48(&v532, &v470);
    v180 = Logger.logObject.getter();
    v181 = static os_log_type_t.error.getter();
    sub_1001D9FB8(&v532);
    if (os_log_type_enabled(v180, v181))
    {
      v182 = swift_slowAlloc();
      v183 = swift_slowAlloc();
      *&v518 = v183;
      *v182 = 136446210;
      sub_100D5B64C(&v470);
      v184 = String.init<A>(describing:)();
      v186 = sub_1000136BC(v184, v185, &v518);

      *(v182 + 4) = v186;
      v187 = "Invalid sendPairingData payload %{public}s";
LABEL_61:
      _os_log_impl(&_mh_execute_header, v180, v181, v187, v182, 0xCu);
      sub_100007BAC(v183);

      goto LABEL_62;
    }

    goto LABEL_62;
  }

  v528 = v479;
  v529 = v480;
  v530 = v481;
  v531 = v482;
  v524 = v475;
  v525 = v476;
  v526 = v477;
  v527 = v478;
  v520 = v471[1];
  v521 = v472;
  v522 = v473;
  v523 = v474;
  v518 = v470;
  v519 = v471[0];
  sub_1001DA8B8(&v518, &v470);
  v111 = Logger.logObject.getter();
  v112 = static os_log_type_t.debug.getter();
  sub_1001DA914(&v518);
  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    *&v470 = v114;
    *v113 = 136315138;
    v115 = Data.hexString.getter();
    v117 = sub_1000136BC(v115, v116, &v470);

    *(v113 + 4) = v117;
    _os_log_impl(&_mh_execute_header, v111, v112, "SerialNumber: %s", v113, 0xCu);
    sub_100007BAC(v114);
  }

  sub_1001DA8B8(&v518, &v470);
  v118 = Logger.logObject.getter();
  v119 = static os_log_type_t.debug.getter();
  sub_1001DA914(&v518);
  if (os_log_type_enabled(v118, v119))
  {
    v120 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    *&v470 = v121;
    *v120 = 136315138;
    v122 = Data.hexString.getter();
    v124 = sub_1000136BC(v122, v123, &v470);

    *(v120 + 4) = v124;
    _os_log_impl(&_mh_execute_header, v118, v119, "ChipId: %s", v120, 0xCu);
    sub_100007BAC(v121);
  }

  sub_1001DA8B8(&v518, &v470);
  v125 = Logger.logObject.getter();
  v126 = static os_log_type_t.debug.getter();
  sub_1001DA914(&v518);
  if (os_log_type_enabled(v125, v126))
  {
    v127 = swift_slowAlloc();
    v128 = swift_slowAlloc();
    *&v470 = v128;
    *v127 = 136315138;
    v129 = Data.hexString.getter();
    v131 = sub_1000136BC(v129, v130, &v470);

    *(v127 + 4) = v131;
    _os_log_impl(&_mh_execute_header, v125, v126, "ECID: %s", v127, 0xCu);
    sub_100007BAC(v128);
  }

  sub_1001DA8B8(&v518, &v470);
  v132 = Logger.logObject.getter();
  v133 = static os_log_type_t.debug.getter();
  sub_1001DA914(&v518);
  if (os_log_type_enabled(v132, v133))
  {
    v134 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    *&v470 = v135;
    *v134 = 136315138;
    v136 = Data.hexString.getter();
    v138 = sub_1000136BC(v136, v137, &v470);

    *(v134 + 4) = v138;
    _os_log_impl(&_mh_execute_header, v132, v133, "numberOfBeacons: %s", v134, 0xCu);
    sub_100007BAC(v135);
  }

  sub_1001DA8B8(&v518, &v470);
  v139 = Logger.logObject.getter();
  v140 = static os_log_type_t.debug.getter();
  sub_1001DA914(&v518);
  if (os_log_type_enabled(v139, v140))
  {
    v141 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    *&v470 = v142;
    *v141 = 136315138;
    v143 = Data.hexString.getter();
    v145 = sub_1000136BC(v143, v144, &v470);

    *(v141 + 4) = v145;
    _os_log_impl(&_mh_execute_header, v139, v140, "otherSerialNumber: %s", v141, 0xCu);
    sub_100007BAC(v142);
  }

  sub_1001DA8B8(&v518, &v470);
  v146 = Logger.logObject.getter();
  v147 = static os_log_type_t.debug.getter();
  sub_1001DA914(&v518);
  if (os_log_type_enabled(v146, v147))
  {
    v148 = swift_slowAlloc();
    v149 = swift_slowAlloc();
    *&v470 = v149;
    *v148 = 136315138;
    v150 = Data.hexString.getter();
    v152 = sub_1000136BC(v150, v151, &v470);

    *(v148 + 4) = v152;
    _os_log_impl(&_mh_execute_header, v146, v147, "seed: %s", v148, 0xCu);
    sub_100007BAC(v149);
  }

  sub_1001DA8B8(&v518, &v470);
  v153 = Logger.logObject.getter();
  v154 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v153, v154))
  {
    sub_1001DA914(&v518);
LABEL_91:

    sub_1001DA8B8(&v518, &v470);
    v246 = Logger.logObject.getter();
    v247 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v246, v247))
    {
      sub_1001DA914(&v518);
LABEL_104:

      sub_1001DA8B8(&v518, &v470);
      v255 = Logger.logObject.getter();
      v256 = static os_log_type_t.debug.getter();
      v257 = os_log_type_enabled(v255, v256);
      v430 = v45;
      if (v257)
      {
        v258 = swift_slowAlloc();
        *v258 = 16777472;
        v258[4] = v530;
        sub_1001DA914(&v518);
        _os_log_impl(&_mh_execute_header, v255, v256, "beaconPartId: %hhu", v258, 5u);
      }

      else
      {
        sub_1001DA914(&v518);
      }

      v259 = *(v454 + 64);
      *(v259 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState) = 3;
      v260 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo;
      v261 = *(v259 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
      v263 = *(&v518 + 1);
      v262 = v518;

      sub_100017D5C(v262, v263);
      sub_1004A4714(v262, v263, &v470);
      v264 = *(v261 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1);
      v265 = *(v261 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1 + 8);
      *(v261 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1) = v470;
      sub_100006654(v264, v265);

      v267 = *(&v522 + 1);
      v266 = v522;
      v268 = (*(v259 + v260) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid);
      v269 = *v268;
      v270 = v268[1];
      *v268 = v522;
      v268[1] = v267;

      sub_100017D5C(v266, v267);
      sub_100006654(v269, v270);

      v272 = *(&v520 + 1);
      v271 = v520;
      v273 = (*(v259 + v260) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
      v274 = *v273;
      v275 = v273[1];
      *v273 = v520;
      v273[1] = v272;

      sub_100017D5C(v271, v272);
      sub_100006654(v274, v275);

      v277 = *(&v523 + 1);
      v276 = v523;
      v278 = (*(v259 + v260) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId);
      v279 = *v278;
      v280 = v278[1];
      *v278 = v523;
      v278[1] = v277;

      sub_100017D5C(v276, v277);
      sub_100006654(v279, v280);

      v282 = *(&v526 + 1);
      v281 = v526;
      v283 = (*(v259 + v260) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaSignatureS2);
      v284 = *v283;
      v285 = v283[1];
      *v283 = v526;
      v283[1] = v282;

      sub_100017D5C(v281, v282);
      sub_100006654(v284, v285);

      v287 = *(&v525 + 1);
      v286 = v525;
      v288 = (*(v259 + v260) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_scrtAttestation);
      v289 = *v288;
      v290 = v288[1];
      *v288 = v525;
      v288[1] = v287;

      sub_100017D5C(v286, v287);
      sub_100006654(v289, v290);

      v292 = *(&v524 + 1);
      v291 = v524;
      v293 = (*(v259 + v260) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_seedK1);
      v294 = *v293;
      v295 = v293[1];
      *v293 = v524;
      v293[1] = v292;

      sub_100017D5C(v291, v292);
      sub_100006654(v294, v295);

      v296 = *(v259 + v260);
      *(v296 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId) = v530;
      v470 = v519;
      sub_1000E0A3C();

      *(v296 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_numBeacons) = DataProtocol.intValue.getter();

      v298 = *(&v528 + 1);
      v297 = v528;
      v299 = (*(v259 + v260) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_systemPublicKey);
      v300 = *v299;
      v301 = v299[1];
      *v299 = v528;
      v299[1] = v298;

      sub_100017D5C(v297, v298);
      sub_100006654(v300, v301);

      v303 = *(&v527 + 1);
      v302 = v527;
      v304 = (*(v259 + v260) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_refPublicKey);
      v305 = *v304;
      v306 = v304[1];
      *v304 = v527;
      v304[1] = v303;

      sub_100017D5C(v302, v303);
      sub_100006654(v305, v306);

      v307 = Data.trimmed.getter();
      v309 = v308;
      static String.Encoding.utf8.getter();
      v310 = String.init(data:encoding:)();
      v312 = v311;
      sub_100016590(v307, v309);
      if (!v312)
      {
        v313 = Data.trimmed.getter();
        v315 = v314;
        v310 = Data.hexString.getter();
        v312 = v316;
        sub_100016590(v313, v315);
      }

      v317 = Logger.logObject.getter();
      v318 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v317, v318))
      {
        v319 = swift_slowAlloc();
        v320 = swift_slowAlloc();
        *&v470 = v320;
        *v319 = 136446210;
        *(v319 + 4) = sub_1000136BC(v310, v312, &v470);
        _os_log_impl(&_mh_execute_header, v317, v318, "beaconDisplayName: %{public}s", v319, 0xCu);
        sub_100007BAC(v320);
      }

      v321 = (*(v259 + v260) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryDisplayName);
      *v321 = v310;
      v321[1] = v312;

      sub_10024C7C4();
      v323 = v322;

      if (v323)
      {
        if (qword_101694498 != -1)
        {
          swift_once();
        }

        v324 = v456;
        v325 = sub_1000076D4(v456, qword_101698F70);
        v326 = v447;
        (v447[2])(v450, v325, v324);
        v327 = Logger.logObject.getter();
        v328 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v327, v328))
        {
          v329 = swift_slowAlloc();
          *v329 = 0;
          _os_log_impl(&_mh_execute_header, v327, v328, "S1 contains session nonce. Hardcoded pairing detected!", v329, 2u);
          v326 = v447;
        }

        (v326[1])(v450, v456);
      }

      v330 = Data.chunked(into:)();
      v331 = sub_1000F7A60(v330);
      *(*(v259 + v260) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbers) = v330;

      v332 = v449;
      if (*(v454 + 200))
      {
      }

      else
      {
        sub_100AC5D4C(v451, v449);
        v333 = v453;
        if ((*(v452 + 48))(v332, 1, v453) == 1)
        {

          sub_10000B3A8(v332, &unk_1016AF8B0, &unk_1013A0700);
        }

        else
        {
          v334 = v445;
          sub_1001DA9D8(v332, v445, type metadata accessor for OwnedBeaconGroup);
          v335 = sub_1003CDA20(*(v334 + v333[10]));
          v336 = sub_1011299C8(v335);

          v337 = sub_100101618(v331, v336);

          if (!v337)
          {

            v357 = v430;
            v358 = Logger.logObject.getter();
            v359 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v358, v359))
            {
              v360 = swift_slowAlloc();
              *&v470 = swift_slowAlloc();
              *v360 = 136315394;
              v361 = v357;
              v362 = Array.description.getter();
              v364 = v363;

              v365 = v362;
              v357 = v361;
              v366 = sub_1000136BC(v365, v364, &v470);

              *(v360 + 4) = v366;
              *(v360 + 12) = 2080;
              sub_100101BAC();
              v367 = Set.description.getter();
              v369 = v368;

              v370 = sub_1000136BC(v367, v369, &v470);

              *(v360 + 14) = v370;
              _os_log_impl(&_mh_execute_header, v358, v359, "Invalid otherSerialNumbers: %s. allSerialNumbers: %s", v360, 0x16u);
              swift_arrayDestroy();
            }

            else
            {
            }

            v372 = v445;
            sub_1005160CC(v357);
            sub_1001D9FB8(&v532);
            sub_1001DA914(&v518);
            sub_1001DAA40(v372, type metadata accessor for OwnedBeaconGroup);
            v177 = 14;
            goto LABEL_54;
          }

          sub_1001DAA40(v334, type metadata accessor for OwnedBeaconGroup);
        }
      }

      v338 = *(v259 + v260);

      *(v338 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndMACAddresses) = sub_1001CE22C();

      sub_1001CF6D0(v451, &v470);
      if (v483)
      {
        v457 = v470;
        v458[0] = v471[0];
        *(v458 + 9) = *(v471 + 9);
        sub_100101AA8(&v457, v485);
        v339 = Logger.logObject.getter();
        v340 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v339, v340))
        {
          v341 = swift_slowAlloc();
          v342 = swift_slowAlloc();
          v488[0] = v342;
          *v341 = 136446210;
          v343 = sub_1013181BC();
          v345 = v344;
          sub_100101B04(v485);
          v346 = sub_1000136BC(v343, v345, v488);

          *(v341 + 4) = v346;
          _os_log_impl(&_mh_execute_header, v339, v340, "Unable to generate finalizeCommand payload due to %{public}s", v341, 0xCu);
          sub_100007BAC(v342);

          sub_1001DA914(&v518);
          sub_1001D9FB8(&v532);
        }

        else
        {

          sub_1001DA914(&v518);
          sub_1001D9FB8(&v532);
          sub_100101B04(v485);
        }

        v178 = v455;
        v371 = v458[0];
        *v455 = v457;
        v178[1] = v371;
        result = *(v458 + 9);
        *(v178 + 25) = *(v458 + 9);
        goto LABEL_56;
      }

      v347 = Logger.logObject.getter();
      v348 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v347, v348))
      {
        v349 = swift_slowAlloc();
        *v349 = 0;
        _os_log_impl(&_mh_execute_header, v347, v348, "Successfully generated finalize pairing command.", v349, 2u);
      }

      sub_1001DA914(&v518);
      sub_1001D9FB8(&v532);
LABEL_129:
      v350 = v480;
      v351 = v455;
      v455[10] = v479;
      v351[11] = v350;
      v351[12] = v481;
      *(v351 + 26) = v482;
      v352 = v476;
      v351[6] = v475;
      v351[7] = v352;
      v353 = v478;
      v351[8] = v477;
      v351[9] = v353;
      v354 = v472;
      v351[2] = v471[1];
      v351[3] = v354;
      v355 = v474;
      v351[4] = v473;
      v351[5] = v355;
      result = *&v470;
      v356 = v471[0];
      *v351 = v470;
      v351[1] = v356;
      *(v351 + 216) = 0;
      return result;
    }

    v37 = swift_slowAlloc();
    v155 = swift_slowAlloc();
    *&v470 = v155;
    *v37 = 134218242;
    v41 = v526;
    v248 = *(&v526 + 1) >> 62;
    if ((*(&v526 + 1) >> 62) > 1)
    {
      if (v248 != 2)
      {
        v249 = 0;
        goto LABEL_103;
      }

      v251 = *(v526 + 16);
      v250 = *(v526 + 24);
      v216 = __OFSUB__(v250, v251);
      v249 = v250 - v251;
      if (!v216)
      {
        goto LABEL_103;
      }

      __break(1u);
    }

    else if (!v248)
    {
      v249 = BYTE14(v526);
LABEL_103:
      *(v37 + 4) = v249;
      sub_1001DA914(&v518);
      *(v37 + 6) = 2080;
      v252 = Data.hexString.getter();
      v254 = sub_1000136BC(v252, v253, &v470);

      *(v37 + 14) = v254;
      _os_log_impl(&_mh_execute_header, v246, v247, "BAA signature (S2) count %ld: %s", v37, 0x16u);
      sub_100007BAC(v155);

      goto LABEL_104;
    }

    LODWORD(v249) = HIDWORD(v41) - v41;
    if (!__OFSUB__(HIDWORD(v41), v41))
    {
      v249 = v249;
      goto LABEL_103;
    }

    goto LABEL_176;
  }

  v37 = swift_slowAlloc();
  v155 = swift_slowAlloc();
  *&v470 = v155;
  *v37 = 134218242;
  v41 = v525;
  v156 = *(&v525 + 1) >> 62;
  if ((*(&v525 + 1) >> 62) <= 1)
  {
    if (v156)
    {
      LODWORD(v157) = DWORD1(v525) - v525;
      if (__OFSUB__(DWORD1(v525), v525))
      {
        __break(1u);
LABEL_176:
        __break(1u);
        goto LABEL_177;
      }

      v157 = v157;
    }

    else
    {
      v157 = BYTE14(v525);
    }

    goto LABEL_90;
  }

  if (v156 != 2)
  {
    v157 = 0;
LABEL_90:
    *(v37 + 4) = v157;
    sub_1001DA914(&v518);
    *(v37 + 6) = 2080;
    v243 = Data.hexString.getter();
    v245 = sub_1000136BC(v243, v244, &v470);

    *(v37 + 14) = v245;
    _os_log_impl(&_mh_execute_header, v153, v154, "attestation (S1) count %ld: %s", v37, 0x16u);
    sub_100007BAC(v155);

    goto LABEL_91;
  }

  v215 = *(v525 + 16);
  v214 = *(v525 + 24);
  v216 = __OFSUB__(v214, v215);
  v157 = v214 - v215;
  if (!v216)
  {
    goto LABEL_90;
  }

  __break(1u);
LABEL_81:
  v449 = v42;
  v450 = v41;
  v447 = v155;
  v448 = v37;
  v217 = *(&v470 + 1);
  v218 = v470;
  v219 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo;
  v220 = *(v44 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
  *(&v471[0] + 1) = &type metadata for CollaborativeKeyGen.v1.C3;
  *&v471[1] = sub_100101704();
  v470 = __PAIR128__(v217, v218);
  v221 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC3;
  swift_beginAccess();

  v452 = v217;
  v453 = v218;
  sub_100017D5C(v218, v217);
  sub_10002311C(&v470, v220 + v221, &qword_101697320, &qword_10138BE90);
  swift_endAccess();

  v222 = (*(v44 + v219) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status);
  v223 = *v222;
  v224 = v222[1];
  *v222 = v153;
  v222[1] = v45;
  sub_100017D5C(v153, v45);

  sub_100006654(v223, v224);

  v225 = *(v44 + v219);
  v155 = *(&v486 + 1);
  v41 = v486;
  v226 = (v225 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4);
  v227 = *(v225 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4);
  v228 = *(v225 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4 + 8);
  *v226 = v486;
  v226[1] = v155;

  sub_100017D5C(v41, v155);
  sub_100006654(v227, v228);

  v229 = Logger.logObject.getter();
  v230 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v229, v230))
  {
    v231 = swift_slowAlloc();
    v232 = swift_slowAlloc();
    v446 = v155;
    v233 = v232;
    *&v470 = v232;
    *v231 = 136446210;
    v234 = sub_1008CDD10(0);
    v236 = sub_1000136BC(v234, v235, &v470);

    *(v231 + 4) = v236;
    _os_log_impl(&_mh_execute_header, v229, v230, "status: %{public}s", v231, 0xCu);
    sub_100007BAC(v233);
    v155 = v446;
  }

  sub_1001DA704(v485, &v470);
  v237 = Logger.logObject.getter();
  v238 = static os_log_type_t.debug.getter();
  v239 = os_log_type_enabled(v237, v238);
  v42 = v453;
  if (!v239)
  {
    sub_1001DA6B0(v485);
    goto LABEL_145;
  }

  v37 = swift_slowAlloc();
  v240 = swift_slowAlloc();
  *&v470 = v240;
  *v37 = 134218242;
  v241 = v155 >> 62;
  if ((v155 >> 62) > 1)
  {
    if (v241 != 2)
    {
      v242 = 0;
      goto LABEL_144;
    }

    v374 = v41[2];
    v373 = v41[3];
    v216 = __OFSUB__(v373, v374);
    v242 = v373 - v374;
    if (!v216)
    {
      goto LABEL_144;
    }

    __break(1u);
LABEL_141:
    LODWORD(v242) = HIDWORD(v41) - v41;
    if (__OFSUB__(HIDWORD(v41), v41))
    {
LABEL_177:
      __break(1u);
      goto LABEL_178;
    }

    v242 = v242;
    goto LABEL_144;
  }

  if (v241)
  {
    goto LABEL_141;
  }

  v242 = BYTE6(v155);
LABEL_144:
  *(v37 + 4) = v242;
  sub_1001DA6B0(v485);
  *(v37 + 6) = 2080;
  v375 = Data.hexString.getter();
  v377 = sub_1000136BC(v375, v376, &v470);

  *(v37 + 14) = v377;
  _os_log_impl(&_mh_execute_header, v237, v238, "S4 count %ld: %s", v37, 0x16u);
  sub_100007BAC(v240);

LABEL_145:

  sub_1001DA704(v485, &v470);
  v378 = Logger.logObject.getter();
  v379 = static os_log_type_t.debug.getter();
  sub_1001DA6B0(v485);
  if (os_log_type_enabled(v378, v379))
  {
    v380 = swift_slowAlloc();
    v381 = swift_slowAlloc();
    *&v470 = v381;
    *v380 = 136315138;
    v382 = Data.hexString.getter();
    v384 = sub_1000136BC(v382, v383, &v470);

    *(v380 + 4) = v384;
    _os_log_impl(&_mh_execute_header, v378, v379, "C3: %s", v380, 0xCu);
    sub_100007BAC(v381);
  }

  v155 = v441;
  v41 = v452;
  v385 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingOwnerContext;
  swift_beginAccess();
  sub_1000D2A70(v44 + v385, &v470, &qword_101697380, &unk_10138BEF0);
  if (!*(&v471[0] + 1))
  {
    sub_10000B3A8(&v470, &qword_101697380, &unk_10138BEF0);
    goto LABEL_152;
  }

  sub_1000BC4D4(&qword_1016973C0, &unk_10138BF40);
  type metadata accessor for CollaborativeKeyGen.v1.OwnerContext();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_152:
    v388 = Logger.logObject.getter();
    v389 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v388, v389))
    {
      v390 = swift_slowAlloc();
      *v390 = 0;
      _os_log_impl(&_mh_execute_header, v388, v389, "Unable to generate initial pairing data from owner context and C3!)", v390, 2u);
    }

    sub_100016590(v42, v41);

    goto LABEL_155;
  }

  v386 = v518;
  sub_100017D5C(v42, v41);
  v387 = CCCKGGetOpeningSize();

  v37 = v448;
  sub_1003F141C(v42, v41, v386, v387, &v470);
  if (v37)
  {

    sub_100016590(v42, v41);

    goto LABEL_152;
  }

  sub_100016590(v42, v41);
  v520 = v471[1];
  v521 = v472;
  v522 = v473;
  v519 = v471[0];
  v518 = v470;
  v391 = v440;
  sub_1001D35A4(&v518, v451, v440);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v402 = v438;
    sub_1001DA9D8(v391, v438, type metadata accessor for AirPodsLEPairingManager.BeaconCreationResult);
    v38 = v435;
    sub_1001DA7B4(v402, v435, type metadata accessor for AirPodsLEPairingManager.BeaconCreationResult);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v42 = v433;
      sub_1001DA9D8(v38, v433, type metadata accessor for StandaloneBeacon);
      if (qword_1016950D0 == -1)
      {
LABEL_162:
        sub_1000076D4(v456, qword_10177C418);
        sub_1001DA7B4(v42, v155, type metadata accessor for StandaloneBeacon);
        v403 = v431;
        sub_1001DA7B4(v42, v431, type metadata accessor for StandaloneBeacon);
        v404 = Logger.logObject.getter();
        v405 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v404, v405))
        {
          v406 = swift_slowAlloc();
          LODWORD(v451) = v405;
          v407 = v155;
          v408 = v406;
          v454 = swift_slowAlloc();
          *&v470 = v454;
          *v408 = 136315651;
          v409 = sub_100B9B27C();
          v410 = v403;
          v412 = v411;
          v456 = type metadata accessor for StandaloneBeacon;
          sub_1001DAA40(v407, type metadata accessor for StandaloneBeacon);
          v413 = v409;
          v41 = v452;
          v414 = sub_1000136BC(v413, v412, &v470);

          *(v408 + 4) = v414;
          *(v408 + 12) = 2160;
          *(v408 + 14) = 1752392040;
          *(v408 + 22) = 2081;
          type metadata accessor for UUID();
          sub_1001DAC6C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v415 = v410;
          v416 = v404;
          v417 = dispatch thunk of CustomStringConvertible.description.getter();
          v419 = v418;
          sub_1001DAA40(v415, v456);
          v420 = sub_1000136BC(v417, v419, &v470);

          *(v408 + 24) = v420;
          _os_log_impl(&_mh_execute_header, v416, v451, "Created standalone beacon: %s. BeaconId: %{private,mask.hash}s", v408, 0x20u);
          swift_arrayDestroy();

          v421 = v433;
          v422 = v456;
        }

        else
        {

          sub_1001DAA40(v403, type metadata accessor for StandaloneBeacon);
          sub_1001DAA40(v155, type metadata accessor for StandaloneBeacon);
          v421 = v42;
          v422 = type metadata accessor for StandaloneBeacon;
        }

        sub_1001DAA40(v421, v422);
        sub_1001DAA40(v438, type metadata accessor for AirPodsLEPairingManager.BeaconCreationResult);
        *(v447 + v44) = 9;
        v42 = v453;
LABEL_172:
        static Data.random(bytes:)();
        sub_1001DA81C();
        BinaryDecodable.init(data:)();
        if (!v37)
        {
          sub_100016590(v42, v41);

          sub_1001DA760(&v518);
          sub_1001DA6B0(v485);
          sub_1001D9FB8(&v532);
          sub_1001DA870(&v470);
          goto LABEL_129;
        }

        sub_100016590(v42, v41);

        sub_1001DA760(&v518);
LABEL_155:
        sub_1001DA6B0(v485);
        sub_1001D9FB8(&v532);
        v177 = 10;
        goto LABEL_54;
      }

LABEL_178:
      swift_once();
      goto LABEL_162;
    }

LABEL_165:
    v423 = *(sub_1000BC4D4(&qword_101697330, &qword_101391910) + 48);
    v424 = v432;
    sub_1001DA9D8(v38, v432, type metadata accessor for OwnedBeaconGroup);
    sub_1001DA9D8(v38 + v423, v437, type metadata accessor for OwnedBeaconRecord);
    v425 = Logger.logObject.getter();
    v426 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v425, v426))
    {
      v427 = swift_slowAlloc();
      *v427 = 0;
      _os_log_impl(&_mh_execute_header, v425, v426, "Saved new beacon. Proceed to sending pairing complete.", v427, 2u);
      v424 = v432;
    }

    if (sub_100518118())
    {
      *(v447 + v44) = 9;
    }

    v428 = v437;
    sub_100A5187C(v437);
    sub_1001DAA40(v428, type metadata accessor for OwnedBeaconRecord);
    sub_1001DAA40(v424, type metadata accessor for OwnedBeaconGroup);
    sub_1001DAA40(v438, type metadata accessor for AirPodsLEPairingManager.BeaconCreationResult);
    goto LABEL_172;
  }

  v392 = *v391;
  swift_errorRetain();
  v393 = Logger.logObject.getter();
  v394 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v393, v394))
  {
    v395 = swift_slowAlloc();
    v396 = swift_slowAlloc();
    *&v470 = v396;
    *v395 = 136446210;
    v484 = v392;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v397 = String.init<A>(describing:)();
    v399 = sub_1000136BC(v397, v398, &v470);
    v42 = v453;

    *(v395 + 4) = v399;
    _os_log_impl(&_mh_execute_header, v393, v394, "Failed to create new beacon. %{public}s", v395, 0xCu);
    sub_100007BAC(v396);
    v41 = v452;
  }

  v400 = v436;
  (*(v443 + 56))(v436, 1, 1, v444);
  sub_1001D8778(v392, v451, v400);

  sub_1001DA760(&v518);
  sub_1001D9FB8(&v532);

  sub_100016590(v42, v41);
  sub_1001DA6B0(v485);
  sub_10000B3A8(v400, &qword_1016A40D0, &unk_10138BE70);
  v401 = v455;
  *v455 = 10;
  result = 0.0;
  *(v401 + 8) = 0u;
  *(v401 + 24) = 0u;
  *(v401 + 40) = 11;
  *(v401 + 216) = 1;
  return result;
}

void *sub_1001CE22C()
{
  v23 = _swiftEmptyDictionarySingleton;
  v22 = *(v0 + 16);
  sub_1000E0A3C();
  v1 = DataProtocol.intValue.getter();
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C418);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    *(v5 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v3, v4, "Number of beacons: %{public}ld", v5, 0xCu);
  }

  if (v1 < 2)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v6 = Data.chunked(into:)();
  sub_1001BFF14(v6, &v23);

  v7 = v23;
  v8 = v23[2];
  v9 = Logger.logObject.getter();
  if (v8 == v1 - 1)
  {
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *&v22 = v12;
      *v11 = 136315138;

      sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
      sub_100101BAC();
      v13 = Dictionary.description.getter();
      v15 = v14;

      v16 = sub_1000136BC(v13, v15, &v22);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "serialNumbersAndMacAddressesMap: %s", v11, 0xCu);
      sub_100007BAC(v12);
    }
  }

  else
  {
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134349056;
      *(v18 + 4) = v7[2];
      _os_log_impl(&_mh_execute_header, v9, v17, "Unexpected number of other serial numbers: %{public}ld", v18, 0xCu);
    }

    v19 = type metadata accessor for BinaryEncodingError();
    sub_1001DAC6C(&qword_101696E20, &type metadata accessor for BinaryEncodingError, &protocol conformance descriptor for BinaryEncodingError);
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, enum case for BinaryEncodingError.encodingError(_:), v19);
    swift_willThrow();
  }

  return v7;
}

uint64_t sub_1001CE5E0@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v26 = a1;
  v28 = a2;
  v4 = sub_1000BC4D4(&qword_1016993A8, &unk_101391930);
  __chkstk_darwin(v4);
  v6 = (&v23 - v5);
  v24 = type metadata accessor for AirPodsLEPairingLockCheckResponse(0);
  v7 = __chkstk_darwin(v24);
  v23 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v23 - v9;
  v11 = swift_allocBox();
  v13 = v12;
  type metadata accessor for SPPairingSessionError(0);
  v30 = 1;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_1001DAC6C(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
  _BridgedStoredNSError.init(_:userInfo:)();
  *v13 = v29[0];
  swift_storeEnumTagMultiPayload();
  v14 = dispatch_group_create();
  dispatch_group_enter(v14);
  v25 = v3;
  v15 = *(v3 + 200);
  v16 = swift_allocObject();
  *(v16 + 16) = v11;
  *(v16 + 24) = v14;
  v27 = v11;

  v17 = v14;
  sub_100924C68(v26, v15, sub_1001DA614, v16);

  OS_dispatch_group.wait()();
  swift_beginAccess();
  sub_1000D2A70(v13, v6, &qword_1016993A8, &unk_101391930);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = *v6;
    v18 = v30;
    sub_1001DAC6C(&qword_101695F60, type metadata accessor for SPPairingSessionError, &unk_101389E60);
    swift_willThrowTypedImpl();
  }

  else
  {

    v19 = v23;
    sub_1001DA9D8(v6, v23, type metadata accessor for AirPodsLEPairingLockCheckResponse);
    sub_1001DA9D8(v19, v10, type metadata accessor for AirPodsLEPairingLockCheckResponse);
    v20 = *(*(v25 + 64) + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
    v21 = *&v10[*(v24 + 56)];

    sub_1001DAA40(v10, type metadata accessor for AirPodsLEPairingLockCheckResponse);
    *(v20 + 32) = v21;
  }

  sub_1000D2A70(v13, v28, &qword_1016993A8, &unk_101391930);
}

void sub_1001CE960(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = swift_projectBox();
  swift_beginAccess();
  sub_1001DA61C(a1, v5, &qword_1016993A8, &unk_101391930);
  dispatch_group_leave(a3);
}

void sub_1001CE9D4()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  sub_10002E98C(v1, v2);
  sub_100F514E8(v1, v2, v8);
  sub_100006654(v1, v2);

  memcpy(v9, v8, sizeof(v9));
  if (sub_1001010A8(v9) == 1)
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177C448);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Unable to generate ack data!", v6, 2u);
    }
  }

  else
  {
    memcpy(v10, v9, sizeof(v10));
    v7 = type metadata accessor for Transaction();
    __chkstk_darwin(v7);
    static Transaction.named<A>(_:with:)();
    sub_10000B3A8(v8, &qword_1016993B8, &unk_101391960);
  }
}

uint64_t sub_1001CEBE4(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v14 = a3;
  v6 = type metadata accessor for MACAddress();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v6);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = a1;
  (*(v7 + 32))(v11 + v10, &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  sub_100925674(v14, sub_1001DA538, v11);
}

uint64_t sub_1001CED84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a4;
  v67 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v66 = *(v5 - 8);
  __chkstk_darwin(v5);
  v64 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for DispatchQoS();
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MACAddress();
  v59 = *(v8 - 8);
  v60 = v8;
  v9 = *(v59 + 64);
  __chkstk_darwin(v8);
  v58 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AirPodsLEPairingLockAckResponse(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v55 - v15;
  __chkstk_darwin(v14);
  v18 = &v55 - v17;
  v19 = sub_1000BC4D4(&qword_1016993C0, &qword_1013C82C0);
  __chkstk_darwin(v19);
  v21 = (&v55 - v20);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v23 = result;
    v57 = v5;
    v56 = a3;
    Transaction.capture()();
    sub_1000D2A70(v67, v21, &qword_1016993C0, &qword_1013C82C0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = *v21;
      if (qword_1016950E0 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_1000076D4(v25, qword_10177C448);
      v26 = v24;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v68 = v26;
        aBlock[0] = v30;
        *v29 = 136446210;
        type metadata accessor for SPPairingSessionError(0);
        v31 = v26;
        v32 = String.init<A>(describing:)();
        v34 = sub_1000136BC(v32, v33, aBlock);

        *(v29 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v27, v28, "Ack register failed with error - %{public}s", v29, 0xCu);
        sub_100007BAC(v30);
      }

      v35 = v56;
      v37 = v58;
      v36 = v59;
      v38 = v60;
      (*(v59 + 16))(v58, v61, v60);
      v39 = (*(v36 + 80) + 40) & ~*(v36 + 80);
      v40 = swift_allocObject();
      *(v40 + 2) = v35;
      *(v40 + 3) = v23;
      *(v40 + 4) = v26;
      (*(v36 + 32))(&v40[v39], v37, v38);
      aBlock[4] = sub_1001DA5AC;
      aBlock[5] = v40;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100006684;
      aBlock[3] = &unk_101612D10;
      v41 = _Block_copy(aBlock);
      v42 = v26;

      v43 = v62;
      static DispatchQoS.unspecified.getter();
      v68 = _swiftEmptyArrayStorage;
      sub_1001DAC6C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v44 = v64;
      v45 = v57;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v41);

      (*(v66 + 8))(v44, v45);
      (*(v63 + 8))(v43, v65);
    }

    else
    {
      sub_1001DA9D8(v21, v18, type metadata accessor for AirPodsLEPairingLockAckResponse);
      if (qword_1016950E0 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_1000076D4(v46, qword_10177C448);
      sub_1001DA7B4(v18, v16, type metadata accessor for AirPodsLEPairingLockAckResponse);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        aBlock[0] = v50;
        *v49 = 136446210;
        sub_1001DA7B4(v16, v13, type metadata accessor for AirPodsLEPairingLockAckResponse);
        v51 = String.init<A>(describing:)();
        v53 = v52;
        sub_1001DAA40(v16, type metadata accessor for AirPodsLEPairingLockAckResponse);
        v54 = sub_1000136BC(v51, v53, aBlock);

        *(v49 + 4) = v54;
        _os_log_impl(&_mh_execute_header, v47, v48, "Ack register was success. %{public}s", v49, 0xCu);
        sub_100007BAC(v50);
      }

      else
      {

        sub_1001DAA40(v16, type metadata accessor for AirPodsLEPairingLockAckResponse);
      }

      return sub_1001DAA40(v18, type metadata accessor for AirPodsLEPairingLockAckResponse);
    }
  }

  return result;
}

uint64_t sub_1001CF5CC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  __chkstk_darwin(v6 - 8);
  v8 = &v11 - v7;
  Transaction.capture()();
  v9 = type metadata accessor for MACAddress();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1001D8778(a3, a4, v8);
  return sub_10000B3A8(v8, &qword_1016A40D0, &unk_10138BE70);
}

void sub_1001CF6D0(unsigned int (*a1)(uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v5 - 8);
  v211 = &v182 - v6;
  v7 = type metadata accessor for AirPodsLEPairingLockCheckResponse(0);
  v8 = __chkstk_darwin(v7);
  v209 = &v182 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v182 - v10;
  v12 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  __chkstk_darwin(v12 - 8);
  v210 = &v182 - v13;
  v212 = sub_1000BC4D4(&qword_1016993A8, &unk_101391930);
  __chkstk_darwin(v212);
  v213 = (&v182 - v14);
  v219 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v214 = *(v219 - 8);
  v15 = __chkstk_darwin(v219);
  v222 = &v182 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v218 = &v182 - v17;
  v223 = sub_1000BC4D4(&qword_101696E38, &qword_1013D8510);
  v18 = __chkstk_darwin(v223);
  v217 = &v182 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v216 = &v182 - v21;
  v22 = __chkstk_darwin(v20);
  v215 = (&v182 - v23);
  v24 = __chkstk_darwin(v22);
  v220 = (&v182 - v25);
  __chkstk_darwin(v24);
  v221 = (&v182 - v26);
  v27 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v27 - 8);
  isUniquelyReferenced_nonNull_native = &v182 - v28;
  v30 = type metadata accessor for HashAlgorithm();
  __chkstk_darwin(v30);
  v33 = &v182 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v2 + 64);
  v35 = (*(v34 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1);
  v36 = v35[1];
  if (v36 >> 60 == 15)
  {
    if (qword_1016950E0 != -1)
    {
      goto LABEL_55;
    }

    goto LABEL_3;
  }

  v204 = v31;
  v205 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo;
  v206 = v34;
  v207 = v7;
  v203 = v11;
  v41 = *v35;
  sub_10002E98C(*v35, v36);
  sub_100017D5C(v41, v36);
  v42 = sub_100A7491C(v41, v36);
  v208 = v36;
  v195 = a1;
  v201 = a2;
  v202 = v43;
  v200 = v2;
  v44 = v42;
  v46 = v45;
  sub_100006654(v41, v36);
  sub_100017D5C(v44, v46);
  sub_10049613C(v44, v46, v256);
  v183 = 0;
  v193 = v44;
  v194 = v46;
  v185 = v41;
  v47 = v256[0];
  v48 = v256[1];
  v49 = v206;
  v50 = *(v206 + v205);
  v256[3] = &type metadata for CollaborativeKeyGen.v1.C2;
  v256[4] = sub_1001023A0();
  v256[0] = v47;
  v256[1] = v48;
  v51 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC2;
  swift_beginAccess();

  v190 = v47;
  v191 = v48;
  sub_100017D5C(v47, v48);
  sub_10002311C(v256, v50 + v51, &qword_101697378, &unk_101391940);
  swift_endAccess();

  v52 = type metadata accessor for CollaborativeKeyGen.v1.OwnerContext();
  v256[4] = &off_101645BA0;
  v256[3] = v52;
  v256[0] = v202;
  v53 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingOwnerContext;
  swift_beginAccess();

  sub_10002311C(v256, v49 + v53, &qword_101697380, &unk_10138BEF0);
  swift_endAccess();
  if (qword_1016950E0 != -1)
  {
LABEL_58:
    swift_once();
  }

  v54 = type metadata accessor for Logger();
  v55 = sub_1000076D4(v54, qword_10177C448);
  v56 = v193;
  a2 = v194;
  sub_100017D5C(v193, v194);
  v184 = v55;
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.debug.getter();
  sub_100016590(v56, a2);
  v59 = os_log_type_enabled(v57, v58);
  v60 = v207;
  if (v59)
  {
    v61 = v58;
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v256[0] = v63;
    *v62 = 136315138;
    v64 = Data.hexString.getter();
    a2 = sub_1000136BC(v64, v65, v256);

    *(v62 + 4) = a2;
    v66 = v61;
    v60 = v207;
    _os_log_impl(&_mh_execute_header, v57, v66, "C2: %s", v62, 0xCu);
    sub_100007BAC(v63);
  }

  v67 = v204;
  (v204[13])(v33, enum case for HashAlgorithm.sha256(_:), v30);
  v69 = v190;
  v68 = v191;
  sub_100017D5C(v190, v191);
  v189 = Data.hash(algorithm:)();
  v186 = v70;
  sub_100016590(v69, v68);
  (v67[1])(v33, v30);
  sub_100AC5D4C(v195, isUniquelyReferenced_nonNull_native);
  v71 = type metadata accessor for OwnedBeaconGroup(0);
  if ((*(*(v71 - 8) + 48))(isUniquelyReferenced_nonNull_native, 1, v71) == 1)
  {
    sub_10000B3A8(isUniquelyReferenced_nonNull_native, &unk_1016AF8B0, &unk_1013A0700);
    v72 = *(*(v206 + v205) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);
    v75 = *(v72 + 64);
    v74 = v72 + 64;
    v73 = v75;
    v76 = 1 << *(*(*(v206 + v205) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds) + 32);
    v77 = -1;
    if (v76 < 64)
    {
      v77 = ~(-1 << v76);
    }

    v78 = v77 & v73;
    v79 = (v76 + 63) >> 6;
    v192 = *(*(v206 + v205) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);
    swift_bridgeObjectRetain_n();
    v33 = 0;
    v30 = _swiftEmptyDictionarySingleton;
    v187 = v79;
    v188 = v74;
    while (1)
    {
      if (!v78)
      {
        while (1)
        {
          v80 = (v33 + 1);
          if (__OFADD__(v33, 1))
          {
            break;
          }

          if (v80 >= v79)
          {

            goto LABEL_33;
          }

          v78 = *(v74 + 8 * v80);
          ++v33;
          if (v78)
          {
            v204 = v30;
            v33 = v80;
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_55:
        swift_once();
LABEL_3:
        v37 = type metadata accessor for Logger();
        sub_1000076D4(v37, qword_10177C448);
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&_mh_execute_header, v38, v39, "Missing C1 from accessory!", v40, 2u);
        }

        *a2 = 0xD00000000000001ALL;
        *(a2 + 8) = 0x800000010134B370;
        *(a2 + 40) = 9;
        *(a2 + 216) = 1;
        return;
      }

      v204 = v30;
LABEL_21:
      v81 = __clz(__rbit64(v78)) | (v33 << 6);
      v82 = *(v192 + 56);
      v83 = (*(v192 + 48) + 16 * v81);
      v85 = v83[1];
      v196 = *v83;
      v84 = v196;
      v86 = (type metadata accessor for MultipartAccessoryPairingInfo(0) - 8);
      v87 = v82 + *(*v86 + 72) * v81;
      v88 = v221;
      sub_1001DA7B4(v87, v221 + *(v223 + 48), type metadata accessor for MultipartAccessoryPairingInfo);
      *v88 = v84;
      v88[1] = v85;
      v89 = v220;
      sub_1000D2A70(v88, v220, &qword_101696E38, &qword_1013D8510);
      v90 = *v89;
      v198 = v89[1];
      v199 = v90;
      v91 = sub_1000BC4D4(&qword_1016A4230, &unk_101391950);
      v92 = v218;
      v197 = &v218[*(v91 + 48)];
      v93 = v215;
      sub_1000D2A70(v88, v215, &qword_101696E38, &qword_1013D8510);
      v95 = *v93;
      v94 = v93[1];
      sub_100017D5C(v196, v85);
      sub_100016590(v95, v94);
      v96 = v223;
      v97 = v93 + *(v223 + 48);
      sub_1000D2A70(v97 + v86[8], v92, &qword_1016A40D0, &unk_10138BE70);
      sub_1001DAA40(v97, type metadata accessor for MultipartAccessoryPairingInfo);
      v98 = v216;
      sub_1000D2A70(v88, v216, &qword_101696E38, &qword_1013D8510);
      sub_100016590(*v98, *(v98 + 8));
      v99 = *(v96 + 48);
      LOBYTE(v97) = *(v98 + v99);
      sub_1001DAA40(v98 + v99, type metadata accessor for MultipartAccessoryPairingInfo);
      v100 = v217;
      sub_1000D2A70(v88, v217, &qword_101696E38, &qword_1013D8510);
      sub_100016590(*v100, *(v100 + 8));
      v101 = v100 + *(v96 + 48);
      LOBYTE(v86) = *(v101 + v86[9]);
      sub_1001DAA40(v101, type metadata accessor for MultipartAccessoryPairingInfo);
      v102 = v197;
      *v197 = v97;
      v103 = v198;
      v102[1] = 0;
      v102[2] = v86;
      swift_storeEnumTagMultiPayload();
      sub_1001DA9D8(v92, v222, type metadata accessor for OwnedBeaconGroup.PairingState);
      v104 = v204;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v256[0] = v104;
      v30 = v199;
      v106 = sub_100771E30(v199, v103);
      v107 = *(v104 + 16);
      v108 = (v105 & 1) == 0;
      v109 = v107 + v108;
      if (__OFADD__(v107, v108))
      {
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      a2 = v105;
      if (*(v104 + 24) >= v109)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10100586C();
        }

        isUniquelyReferenced_nonNull_native = v30;
        v30 = v256[0];
        if (a2)
        {
          goto LABEL_13;
        }
      }

      else
      {
        sub_100FE71DC(v109, isUniquelyReferenced_nonNull_native);
        isUniquelyReferenced_nonNull_native = v30;
        v110 = sub_100771E30(v30, v103);
        if ((a2 & 1) != (v111 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

        v106 = v110;
        v30 = v256[0];
        if (a2)
        {
LABEL_13:
          sub_100101D24(v222, v30[7] + *(v214 + 72) * v106);
          sub_100016590(isUniquelyReferenced_nonNull_native, v103);
          sub_10000B3A8(v221, &qword_101696E38, &qword_1013D8510);
          goto LABEL_14;
        }
      }

      v30[(v106 >> 6) + 8] |= 1 << v106;
      v112 = (v30[6] + 16 * v106);
      *v112 = isUniquelyReferenced_nonNull_native;
      v112[1] = v103;
      sub_1001DA9D8(v222, v30[7] + *(v214 + 72) * v106, type metadata accessor for OwnedBeaconGroup.PairingState);
      sub_10000B3A8(v221, &qword_101696E38, &qword_1013D8510);
      v113 = v30[2];
      v114 = __OFADD__(v113, 1);
      v115 = v113 + 1;
      if (v114)
      {
        goto LABEL_57;
      }

      v30[2] = v115;
LABEL_14:
      v60 = v207;
      v79 = v187;
      v74 = v188;
      v78 &= v78 - 1;
      sub_1001DAA40(v220 + *(v223 + 48), type metadata accessor for MultipartAccessoryPairingInfo);
    }
  }

  v30 = *(isUniquelyReferenced_nonNull_native + *(v71 + 40));

  sub_1001DAA40(isUniquelyReferenced_nonNull_native, type metadata accessor for OwnedBeaconGroup);
LABEL_33:
  v116 = *(v200 + 112);
  v117 = *(v200 + 120);

  sub_10002E98C(v116, v117);
  v118 = v186;
  sub_100F518CC(v189, v186, v116, v117, v30, v224);

  sub_100006654(v116, v117);

  memcpy(v255, v224, sizeof(v255));
  if (sub_100101D88(v255) == 1)
  {
    v119 = Logger.logObject.getter();
    v120 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      *v121 = 0;
      _os_log_impl(&_mh_execute_header, v119, v120, "Unable to create pairing check data.", v121, 2u);
    }

    sub_100016590(v190, v191);
    sub_100006654(v185, v208);
    sub_100016590(v193, v194);
    sub_100016590(v189, v118);
    v122 = v201;
    *v201 = 0xD00000000000001ALL;
    v122[1] = 0x800000010134B3C0;
    *(v122 + 40) = 9;
    *(v122 + 216) = 1;
  }

  else
  {
    memcpy(v256, v255, 0x160uLL);
    v123 = v213;
    sub_1001CE5E0(v256, v213);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v136 = v203;
      sub_1001DA9D8(v123, v203, type metadata accessor for AirPodsLEPairingLockCheckResponse);
      v137 = v209;
      sub_1001DA7B4(v136, v209, type metadata accessor for AirPodsLEPairingLockCheckResponse);
      v138 = Logger.logObject.getter();
      v139 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v138, v139))
      {
        v140 = swift_slowAlloc();
        v141 = swift_slowAlloc();
        *&v241 = v141;
        *v140 = 136446210;
        if (*(v137 + v60[13] + 8) >> 60 == 15)
        {
          v142 = 0;
          v143 = 0xE000000000000000;
        }

        else
        {
          v142 = Data.hexString.getter();
          v143 = v145;
        }

        sub_1001DAA40(v137, type metadata accessor for AirPodsLEPairingLockCheckResponse);
        v146 = sub_1000136BC(v142, v143, &v241);

        *(v140 + 4) = v146;
        _os_log_impl(&_mh_execute_header, v138, v139, "Received SeedS and S3 from server. Pairing token: %{public}s", v140, 0xCu);
        sub_100007BAC(v141);

        v60 = v207;
      }

      else
      {

        sub_1001DAA40(v137, type metadata accessor for AirPodsLEPairingLockCheckResponse);
      }

      v147 = v205;
      v148 = *(v206 + v205);
      v149 = v206;
      v150 = v60[9];
      v151 = type metadata accessor for UUID();
      v152 = *(v151 - 8);
      v153 = v203;
      v154 = v203 + v150;
      v155 = v211;
      (*(v152 + 16))(v211, v154, v151);
      (*(v152 + 56))(v155, 0, 1, v151);
      v156 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_fmnaId;
      swift_beginAccess();

      sub_10002311C(v155, v148 + v156, &qword_1016980D0, &unk_10138F3B0);
      swift_endAccess();

      v157 = v149;
      v158 = (v153 + v60[11]);
      v159 = *v158;
      v160 = v158[1];
      v161 = (*(v149 + v147) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccLeafCert);
      v162 = v60;
      v163 = *v161;
      v164 = v161[1];
      *v161 = v159;
      v161[1] = v160;

      sub_100017D5C(v159, v160);
      sub_100006654(v163, v164);

      v165 = (v153 + v162[12]);
      v166 = *v165;
      v167 = v165[1];
      v168 = (*(v157 + v147) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccIntCA1);
      v169 = *v168;
      v170 = v168[1];
      *v168 = v166;
      v168[1] = v167;

      sub_100017D5C(v166, v167);
      sub_100006654(v169, v170);

      v171 = v183;
      sub_1001D176C(v153, v193, v194, v195, v225);
      if (v171)
      {

        v172 = v186;
        v173 = v201;
      }

      else
      {
        v237 = v225[10];
        v238 = v225[11];
        v239 = v225[12];
        v240 = v226;
        v233 = v225[6];
        v234 = v225[7];
        v235 = v225[8];
        v236 = v225[9];
        v229 = v225[2];
        v230 = v225[3];
        v231 = v225[4];
        v232 = v225[5];
        v227 = v225[0];
        v228 = v225[1];
        v174 = sub_1001DA45C(&v227);
        v172 = v186;
        v173 = v201;
        if (v174 != 1)
        {
          v251 = v237;
          v252 = v238;
          v253 = v239;
          v254 = v240;
          v247 = v233;
          v248 = v234;
          v249 = v235;
          v250 = v236;
          v243 = v229;
          v244 = v230;
          v245 = v231;
          v246 = v232;
          v241 = v227;
          v242 = v228;
          v175 = v186;
          sub_1001DAA40(v203, type metadata accessor for AirPodsLEPairingLockCheckResponse);

          sub_100016590(v190, v191);
          sub_100006654(v185, v208);
          sub_100016590(v193, v194);
          sub_100016590(v189, v175);
          sub_10000B3A8(v224, &qword_1016993B0, &unk_1013E1330);
          v176 = v252;
          *(v173 + 10) = v251;
          *(v173 + 11) = v176;
          *(v173 + 12) = v253;
          v173[26] = v254;
          v177 = v248;
          *(v173 + 6) = v247;
          *(v173 + 7) = v177;
          v178 = v250;
          *(v173 + 8) = v249;
          *(v173 + 9) = v178;
          v179 = v244;
          *(v173 + 2) = v243;
          *(v173 + 3) = v179;
          v180 = v246;
          *(v173 + 4) = v245;
          *(v173 + 5) = v180;
          v181 = v242;
          *v173 = v241;
          *(v173 + 1) = v181;
          *(v173 + 216) = 0;
          return;
        }
      }

      sub_100016590(v189, v172);
      sub_10000B3A8(v224, &qword_1016993B0, &unk_1013E1330);
      sub_100006654(v185, v208);

      sub_100016590(v190, v191);
      sub_100016590(v193, v194);
      sub_1001DAA40(v203, type metadata accessor for AirPodsLEPairingLockCheckResponse);
      *v173 = 0xD000000000000019;
      v173[1] = 0x800000010134B3E0;
      *(v173 + 40) = 9;
      *(v173 + 216) = 1;
      return;
    }

    v124 = *v123;
    v125 = Logger.logObject.getter();
    v126 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      *&v241 = v128;
      *v127 = 136446210;
      *&v227 = v124;
      type metadata accessor for SPPairingSessionError(0);
      v129 = v124;
      v130 = String.init<A>(describing:)();
      v132 = sub_1000136BC(v130, v131, &v241);

      *(v127 + 4) = v132;
      v118 = v186;
      _os_log_impl(&_mh_execute_header, v125, v126, "Pairing lock check failed. Error %{public}s", v127, 0xCu);
      sub_100007BAC(v128);
    }

    v133 = type metadata accessor for MACAddress();
    v134 = v210;
    (*(*(v133 - 8) + 56))(v210, 1, 1, v133);
    v135 = v124;
    sub_1001D8778(v135, v195, v134);

    sub_10000B3A8(v134, &qword_1016A40D0, &unk_10138BE70);
    *&v241 = v135;
    type metadata accessor for SPPairingSessionError(0);
    sub_1001DAC6C(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.code.getter();
    if (v227 == 18)
    {
      sub_1001D0ED0(v206, v201);

      sub_100016590(v190, v191);
      sub_100006654(v185, v208);
      sub_100016590(v193, v194);
      sub_100016590(v189, v118);
      sub_10000B3A8(v224, &qword_1016993B0, &unk_1013E1330);
    }

    else
    {

      sub_100016590(v190, v191);
      sub_100006654(v185, v208);
      sub_100016590(v193, v194);
      sub_100016590(v189, v118);
      sub_10000B3A8(v224, &qword_1016993B0, &unk_1013E1330);
      v144 = v201;
      *v201 = v135;
      *(v144 + 40) = 0;
      *(v144 + 216) = 1;
    }
  }
}

double sub_1001D0ED0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for MACAddress();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v10 - 8);
  v11 = *(v3 + 56);
  if (!v11)
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_10177C448);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Missing peripheral to handle pairing lock error!", v18, 2u);
    }

    goto LABEL_15;
  }

  v12 = (*(a1 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
  v13 = v12[1];
  if (v13 >> 60 != 15)
  {
    v70 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo;
    v71 = a1;
    v72[0] = *v12;
    v19 = v72[0];
    v72[1] = v13;
    v69 = v11;
    sub_10002E98C(v19, v13);
    sub_1000E0A3C();
    if (DataProtocol.isNull.getter())
    {
      sub_100006654(v19, v13);
      goto LABEL_10;
    }

    v63 = v7;
    v65 = v13;
    v24 = Data.trimmed.getter();
    v26 = v25;
    sub_100017D5C(v24, v25);
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v64 = v19;
    v27 = type metadata accessor for Logger();
    v28 = sub_1000076D4(v27, qword_10177C448);
    sub_100017D5C(v24, v26);
    v66 = v28;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    sub_100016590(v24, v26);
    v31 = os_log_type_enabled(v29, v30);
    v32 = &unk_10138B000;
    v67 = v24;
    if (v31)
    {
      LODWORD(v68) = v30;
      v33 = v24;
      v34 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v72[0] = v62;
      *v34 = 136315138;
      sub_100017D5C(v33, v26);
      static String.Encoding.utf8.getter();
      v35 = String.init(data:encoding:)();
      if (!v36)
      {
        v35 = Data.hexString.getter();
      }

      v37 = v35;
      v38 = v36;
      sub_100016590(v33, v26);
      sub_100016590(v33, v26);
      v39 = sub_1000136BC(v37, v38, v72);

      *(v34 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v29, v68, "Accessory serial number: %s.", v34, 0xCu);
      sub_100007BAC(v62);

      v32 = &unk_10138B000;
    }

    else
    {
      sub_100016590(v24, v26);
    }

    v68 = v26;
    v41 = v70;
    v40 = v71;
    v42 = *(*(v71 + v70) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();
    v45 = os_log_type_enabled(v43, v44);
    v62 = v42;
    if (v45)
    {
      v46 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v72[0] = v60;
      *v46 = v32[107];
      type metadata accessor for MultipartAccessoryPairingInfo(0);
      sub_100101BAC();
      v47 = Dictionary.description.getter();
      v49 = sub_1000136BC(v47, v48, v72);

      *(v46 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v43, v44, "beaconGroupInfo: %s", v46, 0xCu);
      sub_100007BAC(v60);

      v41 = v70;
      v40 = v71;
    }

    v50 = v69;
    v51 = *&v69[OBJC_IVAR____TtC12searchpartyd10Peripheral_injectedName + 8];
    v61 = v6;
    if (v51)
    {
      v52 = *&v69[OBJC_IVAR____TtC12searchpartyd10Peripheral_injectedName];
      v53 = v51;
    }

    else
    {
      v54 = [*&v69[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject] name];
      if (!v54)
      {
        v52 = 0;
        v53 = 0xE000000000000000;
        v41 = v70;
        v40 = v71;
        goto LABEL_31;
      }

      v55 = v54;
      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v56;

      v41 = v70;
      v40 = v71;
    }

LABEL_31:
    sub_100A22DF0(v9);
    v57 = *(v40 + v41);

    v58 = v67;
    v59 = v68;
    sub_100B8AFF4(v67, v68, v52, v53, v9, v62, v57);
    (*(v63 + 8))(v9, v61);
    sub_100006654(v64, v65);
    sub_100016590(v58, v59);

    goto LABEL_16;
  }

  v14 = v11;
LABEL_10:
  if (qword_1016950E0 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_1000076D4(v20, qword_10177C448);
  v16 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v16, v21, "Invalid serial number.", v22, 2u);
  }

LABEL_15:
LABEL_16:
  *a2 = 9;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 11;
  *(a2 + 216) = 1;
  return result;
}

void sub_1001D176C(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v279 = a4;
  v299 = a2;
  v292 = a5;
  v8 = type metadata accessor for Endianness();
  __chkstk_darwin(v8 - 8);
  v281 = &v277 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = type metadata accessor for String.Encoding();
  v283 = *(v291 - 8);
  __chkstk_darwin(v291);
  v282 = &v277 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v12 = __chkstk_darwin(v11 - 8);
  v278 = &v277 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v280 = (&v277 - v15);
  __chkstk_darwin(v14);
  v284 = (&v277 - v16);
  v301 = type metadata accessor for AirPodsLEPairingLockCheckResponse(0);
  v17 = __chkstk_darwin(v301);
  v290 = (&v277 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __chkstk_darwin(v17);
  v289 = &v277 - v20;
  v21 = __chkstk_darwin(v19);
  v288 = (&v277 - v22);
  v23 = __chkstk_darwin(v21);
  v287 = &v277 - v24;
  v25 = __chkstk_darwin(v23);
  v286 = &v277 - v26;
  v27 = __chkstk_darwin(v25);
  v285 = &v277 - v28;
  v29 = __chkstk_darwin(v27);
  v294 = &v277 - v30;
  v31 = __chkstk_darwin(v29);
  v293 = &v277 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = &v277 - v34;
  v36 = __chkstk_darwin(v33);
  v295 = &v277 - v37;
  v38 = __chkstk_darwin(v36);
  v40 = &v277 - v39;
  __chkstk_darwin(v38);
  v42 = &v277 - v41;
  if (qword_1016950E0 != -1)
  {
    swift_once();
  }

  v297 = v5;
  v43 = type metadata accessor for Logger();
  v44 = sub_1000076D4(v43, qword_10177C448);
  sub_1001DA7B4(a1, v42, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  sub_1001DA7B4(a1, v40, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  v300 = v44;
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();
  v47 = os_log_type_enabled(v45, v46);
  v298 = a3;
  v346 = a1;
  if (!v47)
  {
    sub_1001DAA40(v42, type metadata accessor for AirPodsLEPairingLockCheckResponse);

    sub_1001DAA40(v40, type metadata accessor for AirPodsLEPairingLockCheckResponse);
    goto LABEL_16;
  }

  v48 = swift_slowAlloc();
  v49 = swift_slowAlloc();
  *&v331 = v49;
  *v48 = 134218242;
  v50 = *(v42 + 8);
  v51 = *(v42 + 9);
  v52 = v51 >> 62;
  v277 = v35;
  if ((v51 >> 62) > 1)
  {
    if (v52 != 2)
    {
      v53 = 0;
      goto LABEL_15;
    }

    v55 = v50 + 16;
    v50 = *(v50 + 16);
    v54 = *(v55 + 8);
    v53 = v54 - v50;
    if (!__OFSUB__(v54, v50))
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_12:
    v56 = __OFSUB__(HIDWORD(v50), v50);
    v57 = HIDWORD(v50) - v50;
    if (v56)
    {
      __break(1u);
      goto LABEL_101;
    }

    v53 = v57;
    goto LABEL_15;
  }

  if (v52)
  {
    goto LABEL_12;
  }

  v53 = BYTE6(v51);
LABEL_15:
  sub_1001DAA40(v42, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  *(v48 + 4) = v53;
  *(v48 + 12) = 2080;
  v58 = Data.hexString.getter();
  v60 = v59;
  sub_1001DAA40(v40, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  v61 = sub_1000136BC(v58, v60, &v331);

  *(v48 + 14) = v61;
  _os_log_impl(&_mh_execute_header, v45, v46, "S3 count %ld: %s", v48, 0x16u);
  sub_100007BAC(v49);

  a3 = v298;
  a1 = v346;
  v35 = v277;
LABEL_16:
  v62 = v295;
  sub_1001DA7B4(a1, v295, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  sub_1001DA7B4(a1, v35, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v63, v64))
  {
    sub_1001DAA40(v62, type metadata accessor for AirPodsLEPairingLockCheckResponse);

    sub_1001DAA40(v35, type metadata accessor for AirPodsLEPairingLockCheckResponse);
    v72 = v294;
    goto LABEL_29;
  }

  v65 = swift_slowAlloc();
  v66 = swift_slowAlloc();
  *&v331 = v66;
  *v65 = 134218242;
  v67 = (v62 + v301[11]);
  v68 = *v67;
  v69 = v67[1];
  v70 = v69 >> 62;
  if ((v69 >> 62) > 1)
  {
    v71 = v35;
    if (v70 != 2)
    {
      v35 = 0;
      goto LABEL_28;
    }

    v74 = v68 + 16;
    v68 = *(v68 + 16);
    v73 = *(v74 + 8);
    v35 = v73 - v68;
    if (!__OFSUB__(v73, v68))
    {
      goto LABEL_28;
    }

    __break(1u);
LABEL_25:
    v56 = __OFSUB__(HIDWORD(v68), v68);
    v75 = HIDWORD(v68) - v68;
    if (!v56)
    {
      v71 = v35;
      v35 = v75;
      goto LABEL_28;
    }

LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  if (v70)
  {
    goto LABEL_25;
  }

  v71 = v35;
  v35 = BYTE6(v69);
LABEL_28:
  sub_1001DAA40(v295, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  *(v65 + 4) = v35;
  *(v65 + 12) = 2080;
  v76 = Data.hexString.getter();
  v78 = v77;
  sub_1001DAA40(v71, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  v79 = sub_1000136BC(v76, v78, &v331);

  *(v65 + 14) = v79;
  _os_log_impl(&_mh_execute_header, v63, v64, "baaLeaf count %ld: %s", v65, 0x16u);
  sub_100007BAC(v66);

  a1 = v346;
  v72 = v294;
  a3 = v298;
LABEL_29:
  v80 = v293;
  sub_1001DA7B4(a1, v293, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  sub_1001DA7B4(a1, v72, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.debug.getter();
  v83 = os_log_type_enabled(v81, v82);
  v84 = v299;
  if (!v83)
  {
    sub_1001DAA40(v80, type metadata accessor for AirPodsLEPairingLockCheckResponse);

    sub_1001DAA40(v72, type metadata accessor for AirPodsLEPairingLockCheckResponse);
    goto LABEL_42;
  }

  v85 = swift_slowAlloc();
  v86 = swift_slowAlloc();
  *&v331 = v86;
  *v85 = 134218242;
  v87 = (v80 + v301[12]);
  v88 = *v87;
  v89 = v87[1];
  v90 = v89 >> 62;
  if ((v89 >> 62) > 1)
  {
    if (v90 != 2)
    {
      v91 = 0;
      goto LABEL_41;
    }

    v93 = v88 + 16;
    v88 = *(v88 + 16);
    v92 = *(v93 + 8);
    v91 = v92 - v88;
    if (!__OFSUB__(v92, v88))
    {
      goto LABEL_41;
    }

    __break(1u);
LABEL_38:
    v56 = __OFSUB__(HIDWORD(v88), v88);
    v94 = HIDWORD(v88) - v88;
    if (!v56)
    {
      v91 = v94;
      goto LABEL_41;
    }

LABEL_102:
    __break(1u);
    return;
  }

  if (v90)
  {
    goto LABEL_38;
  }

  v91 = BYTE6(v89);
LABEL_41:
  sub_1001DAA40(v80, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  *(v85 + 4) = v91;
  *(v85 + 12) = 2080;
  v95 = v294;
  v96 = Data.hexString.getter();
  v98 = v97;
  sub_1001DAA40(v95, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  v99 = sub_1000136BC(v96, v98, &v331);

  *(v85 + 14) = v99;
  _os_log_impl(&_mh_execute_header, v81, v82, "baaIntermediate count %ld: %s", v85, 0x16u);
  sub_100007BAC(v86);

  a3 = v298;
  v84 = v299;
  a1 = v346;
LABEL_42:
  if (*(v296 + 200) != 1)
  {
    if (!*(a1 + v301[10] + 8) || (v124 = v282, static String.Encoding.utf8.getter(), v294 = String.data(using:allowLossyConversion:)(), v126 = v125, (*(v283 + 8))(v124, v291), v126 >> 60 == 15))
    {
      v127 = Logger.logObject.getter();
      v128 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v127, v128))
      {
        v129 = swift_slowAlloc();
        *v129 = 0;
        _os_log_impl(&_mh_execute_header, v127, v128, "Unable to decode masked apple ID", v129, 2u);
      }

      sub_1001DA2E4(&v331);
      goto LABEL_90;
    }

    v229 = v84;
    v293 = v126;
    v230 = *(v296 + 64);
    v231 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo;
    v232 = *(v230 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
    v233 = (v232 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId);
    if ((*(v232 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId + 1) & 1) == 0)
    {
      v234 = (v232 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
      v235 = v234[1];
      if (v235 >> 60 != 15)
      {
        v236 = *v233;
        *&v317 = *v234;
        v237 = v317;
        *(&v317 + 1) = v235;
        sub_100017D5C(v317, v235);
        sub_1000E0A3C();
        if ((DataProtocol.isNull.getter() & 1) == 0)
        {
          v284 = Data.trimmed.getter();
          v268 = v267;
          v269 = v280;
          sub_100AC5D4C(v279, v280);
          v103 = v269;
          v270 = v269;
          v271 = v278;
          sub_1000D2A70(v270, v278, &unk_1016AF8B0, &unk_1013A0700);
          v272 = type metadata accessor for OwnedBeaconGroup(0);
          if ((*(*(v272 - 8) + 48))(v271, 1, v272) == 1)
          {
            sub_10000B3A8(v271, &unk_1016AF8B0, &unk_1013A0700);
          }

          else
          {
            v273 = sub_1005183F0(v284, v268);
            sub_1001DAA40(v271, type metadata accessor for OwnedBeaconGroup);
            if ((v273 & 0x100) != 0)
            {
              v236 = v236;
            }

            else
            {
              v236 = v273;
            }

            v103 = v280;
          }

          v291 = sub_10110DFBC(v103, v236);
          v295 = v274;
          sub_100016590(v284, v268);
          sub_100006654(v237, v235);
          a1 = v346;
          v84 = v229;
          goto LABEL_44;
        }

        sub_100006654(v237, v235);
      }
    }

    v238 = Logger.logObject.getter();
    v239 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v238, v239))
    {
      v240 = swift_slowAlloc();
      v241 = swift_slowAlloc();
      *&v303 = v241;
      *v240 = 141558275;
      *(v240 + 4) = 1752392040;
      *(v240 + 12) = 2081;
      v242 = (*(v230 + v231) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
      v243 = v242[1];
      *&v317 = *v242;
      *(&v317 + 1) = v243;
      sub_10002E98C(v317, v243);
      sub_1000BC4D4(&qword_1016A40E0, &unk_101396F30);
      v244 = String.init<A>(describing:)();
      v246 = sub_1000136BC(v244, v245, &v303);

      *(v240 + 14) = v246;
      _os_log_impl(&_mh_execute_header, v238, v239, "Invalid serial number %{private,mask.hash}s!", v240, 0x16u);
      sub_100007BAC(v241);
    }

    sub_100006654(v294, v293);

    v247 = v292;
    sub_1001DA2E4(&v331);
    goto LABEL_91;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  v100 = __DataStorage.init(length:)();
  *&v317 = 0x3C00000000;
  *(&v317 + 1) = v100;
  v101 = v297;
  sub_1007765FC(&v317, 0);
  v297 = v101;
  v293 = *(&v317 + 1) | 0x4000000000000000;
  v294 = v317;
  v102 = type metadata accessor for OwnedBeaconGroup(0);
  v103 = v284;
  (*(*(v102 - 8) + 56))(v284, 1, 1, v102);
  v291 = sub_10110DFBC(v103, 255);
  v295 = v104;
LABEL_44:
  sub_10000B3A8(v103, &unk_1016AF8B0, &unk_1013A0700);
  sub_100017D5C(v84, a3);
  v105 = Logger.logObject.getter();
  v106 = static os_log_type_t.default.getter();
  sub_100016590(v84, a3);
  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    *&v317 = v108;
    *v107 = 136446210;
    v109 = Data.hexString.getter();
    v111 = sub_1000136BC(v109, v110, &v317);

    *(v107 + 4) = v111;
    a1 = v346;
    _os_log_impl(&_mh_execute_header, v105, v106, "sharedCommitment: %{public}s", v107, 0xCu);
    sub_100007BAC(v108);
  }

  v112 = v294;
  v113 = v285;
  sub_1001DA7B4(a1, v285, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  v114 = Logger.logObject.getter();
  v115 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v114, v115))
  {
    v116 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    *&v317 = v117;
    *v116 = 136446210;
    v118 = Data.hexString.getter();
    v119 = v113;
    v120 = v118;
    v122 = v121;
    sub_1001DAA40(v119, type metadata accessor for AirPodsLEPairingLockCheckResponse);
    v123 = sub_1000136BC(v120, v122, &v317);
    a1 = v346;

    *(v116 + 4) = v123;
    _os_log_impl(&_mh_execute_header, v114, v115, "response.serverSeed: %{public}s", v116, 0xCu);
    sub_100007BAC(v117);
  }

  else
  {

    sub_1001DAA40(v113, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  }

  v130 = v286;
  sub_1001DA7B4(a1, v286, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  v131 = Logger.logObject.getter();
  v132 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v131, v132))
  {
    v133 = swift_slowAlloc();
    v134 = swift_slowAlloc();
    *&v317 = v134;
    *v133 = 136446210;
    v135 = Data.hexString.getter();
    v136 = v130;
    v137 = v135;
    v139 = v138;
    sub_1001DAA40(v136, type metadata accessor for AirPodsLEPairingLockCheckResponse);
    v140 = sub_1000136BC(v137, v139, &v317);

    *(v133 + 4) = v140;
    _os_log_impl(&_mh_execute_header, v131, v132, "response.serverSignature: %{public}s", v133, 0xCu);
    sub_100007BAC(v134);
  }

  else
  {

    sub_1001DAA40(v130, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  }

  v141 = v293;
  sub_100017D5C(v112, v293);
  v142 = Logger.logObject.getter();
  v143 = static os_log_type_t.default.getter();
  sub_100016590(v112, v141);
  if (os_log_type_enabled(v142, v143))
  {
    v144 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    *&v317 = v145;
    *v144 = 136446210;
    sub_100017D5C(v112, v141);
    v146 = Data.description.getter();
    v147 = v141;
    v149 = v148;
    sub_100016590(v112, v147);
    v150 = sub_1000136BC(v146, v149, &v317);

    *(v144 + 4) = v150;
    _os_log_impl(&_mh_execute_header, v142, v143, "maskedIdentifier: %{public}s", v144, 0xCu);
    sub_100007BAC(v145);
  }

  v151 = v346;
  v152 = v287;
  v153 = v288;
  sub_1001DA7B4(v346, v287, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  v154 = Logger.logObject.getter();
  v155 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v154, v155))
  {
    v156 = swift_slowAlloc();
    v157 = swift_slowAlloc();
    *&v317 = v157;
    *v156 = 136446210;
    v158 = Data.hexString.getter();
    v159 = v152;
    v160 = v158;
    v162 = v161;
    sub_1001DAA40(v159, type metadata accessor for AirPodsLEPairingLockCheckResponse);
    v163 = sub_1000136BC(v160, v162, &v317);
    v151 = v346;

    *(v156 + 4) = v163;
    _os_log_impl(&_mh_execute_header, v154, v155, "response.baaAccLeafCert: %{public}s", v156, 0xCu);
    sub_100007BAC(v157);
  }

  else
  {

    sub_1001DAA40(v152, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  }

  sub_1001DA7B4(v151, v153, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  v164 = Logger.logObject.getter();
  v165 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v164, v165))
  {
    v166 = swift_slowAlloc();
    v167 = swift_slowAlloc();
    *&v317 = v167;
    *v166 = 136446210;
    v168 = Data.hexString.getter();
    v170 = v169;
    sub_1001DAA40(v153, type metadata accessor for AirPodsLEPairingLockCheckResponse);
    v171 = sub_1000136BC(v168, v170, &v317);
    v151 = v346;

    *(v166 + 4) = v171;
    _os_log_impl(&_mh_execute_header, v164, v165, "response.baaAccIntCA1: %{public}s", v166, 0xCu);
    sub_100007BAC(v167);
  }

  else
  {

    sub_1001DAA40(v153, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  }

  v172 = v289;
  sub_1001DA7B4(v151, v289, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  v173 = Logger.logObject.getter();
  v174 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v173, v174))
  {
    v175 = swift_slowAlloc();
    v288 = swift_slowAlloc();
    *&v317 = v288;
    *v175 = 136446210;
    *&v303 = *(v172 + v301[14]);
    sub_100102194();
    v176 = FixedWidthInteger.data.getter();
    v178 = v177;
    v179 = Data.hexString.getter();
    v181 = v180;
    sub_100016590(v176, v178);
    sub_1001DAA40(v172, type metadata accessor for AirPodsLEPairingLockCheckResponse);
    v182 = sub_1000136BC(v179, v181, &v317);

    *(v175 + 4) = v182;
    _os_log_impl(&_mh_execute_header, v173, v174, "response.pairingEpoch: %{public}s", v175, 0xCu);
    sub_100007BAC(v288);
  }

  else
  {

    sub_1001DAA40(v172, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  }

  v183 = v291;
  v184 = v295;
  sub_100017D5C(v291, v295);
  v185 = Logger.logObject.getter();
  v186 = static os_log_type_t.default.getter();
  sub_100016590(v183, v184);
  if (os_log_type_enabled(v185, v186))
  {
    v187 = swift_slowAlloc();
    v188 = swift_slowAlloc();
    *&v317 = v188;
    *v187 = 136446210;
    v189 = Data.hexString.getter();
    v191 = sub_1000136BC(v189, v190, &v317);

    *(v187 + 4) = v191;
    _os_log_impl(&_mh_execute_header, v185, v186, "companionPairingEpochs: %{public}s", v187, 0xCu);
    sub_100007BAC(v188);
  }

  v192 = v290;
  sub_1001DA7B4(v346, v290, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  v193 = Logger.logObject.getter();
  v194 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v193, v194))
  {
    v195 = swift_slowAlloc();
    v290 = swift_slowAlloc();
    *&v317 = v290;
    *v195 = 136446210;
    *&v303 = *(v192 + v301[14]);
    sub_100102194();
    v196 = FixedWidthInteger.data.getter();
    v198 = v197;
    v199 = Data.hexString.getter();
    v201 = v200;
    sub_100016590(v196, v198);
    sub_1001DAA40(v192, type metadata accessor for AirPodsLEPairingLockCheckResponse);
    v202 = sub_1000136BC(v199, v201, &v317);
    v183 = v291;

    *(v195 + 4) = v202;
    _os_log_impl(&_mh_execute_header, v193, v194, "pairingEpoch: %{public}s", v195, 0xCu);
    sub_100007BAC(v290);
  }

  else
  {

    sub_1001DAA40(v192, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  }

  v203 = v295;
  sub_100017D5C(v183, v295);
  v204 = Logger.logObject.getter();
  v205 = static os_log_type_t.default.getter();
  sub_100016590(v183, v203);
  if (os_log_type_enabled(v204, v205))
  {
    v206 = swift_slowAlloc();
    v207 = swift_slowAlloc();
    *&v317 = v207;
    *v206 = 136446210;
    v208 = Data.hexString.getter();
    v210 = sub_1000136BC(v208, v209, &v317);

    *(v206 + 4) = v210;
    _os_log_impl(&_mh_execute_header, v204, v205, "companionPairingEpochs: %{public}s", v206, 0xCu);
    sub_100007BAC(v207);
  }

  v211 = v346;
  v212 = *(*(v296 + 64) + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
  v213 = *(v212 + 112);
  if (v213 >> 60 != 15)
  {
    v214 = *(v212 + 104);
    sub_100017D5C(v214, *(v212 + 112));
    if (sub_100313A28(v214, v213) == 76)
    {
      sub_100313B54(v214, v213);
      static Endianness.current.getter();
      sub_10012BF24();
      FixedWidthInteger.init(data:ofEndianness:)();
      sub_100006654(v214, v213);
      if ((BYTE4(v317) & 1) == 0 && v317 == 8233)
      {
        v216 = v211[7];
        v346 = v211[6];
        v215 = v346;
        v218 = v211[9];
        v300 = v211[8];
        v217 = v300;
        v219 = v301[12];
        v220 = (v211 + v301[11]);
        v221 = v211;
        v223 = *v220;
        v222 = v220[1];
        v224 = *(v221 + v219);
        v225 = *(v221 + v219 + 8);
        v302 = *(v221 + v301[14]);
        sub_100017D5C(v299, v298);
        sub_100017D5C(v215, v216);
        sub_100017D5C(v217, v218);
        sub_100017D5C(v223, v222);
        sub_100017D5C(v224, v225);
        sub_100102194();
        v226 = FixedWidthInteger.data.getter();
        *(&v276 + 1) = v295;
        *(&v275 + 1) = v227;
        *&v276 = v291;
        *&v275 = v226;
        v228 = v297;
        sub_1008BB678(v299, v298, v346, v216, v294, v293, v300, v218, v345, v223, v222, v224, v225, v275, v276);
        if (v228)
        {
          return;
        }

        v311 = v345[8];
        v312 = v345[9];
        v313 = v345[10];
        v314 = v345[11];
        v307 = v345[4];
        v308 = v345[5];
        v309 = v345[6];
        v310 = v345[7];
        v303 = v345[0];
        v304 = v345[1];
        v305 = v345[2];
        v306 = v345[3];
        sub_1001DA3BC(&v303);
        v327 = v313;
        v328 = v314;
        v329 = v315;
        v330 = v316;
        v323 = v309;
        v324 = v310;
        v325 = v311;
        v326 = v312;
        v319 = v305;
        v320 = v306;
        v321 = v307;
        v322 = v308;
        v317 = v303;
        v318 = v304;
        SharingCircleWildAdvertisementKey.init(key:)();
        v341 = v327;
        v342 = v328;
        v343 = v329;
        v344 = v330;
        v337 = v323;
        v338 = v324;
        v339 = v325;
        v340 = v326;
        v333 = v319;
        v334 = v320;
        v335 = v321;
        v336 = v322;
        v331 = v317;
        v332 = v318;
        goto LABEL_90;
      }
    }

    else
    {
      sub_100006654(v214, v213);
    }
  }

  v249 = v211[7];
  v346 = v211[6];
  v248 = v346;
  v251 = v211[9];
  v300 = v211[8];
  v250 = v300;
  v252 = v301[12];
  v253 = (v211 + v301[11]);
  v254 = v211;
  v256 = *v253;
  v255 = v253[1];
  v257 = *(v254 + v252);
  v258 = *(v254 + v252 + 8);
  *&v317 = *(v254 + v301[14]);
  sub_100017D5C(v299, v298);
  sub_100017D5C(v248, v249);
  sub_100017D5C(v250, v251);
  sub_100017D5C(v256, v255);
  sub_100017D5C(v257, v258);
  sub_100102194();
  v259 = FixedWidthInteger.data.getter();
  sub_1001BE9F4(v299, v298, v346, v249, v294, v293, v300, v251, &v303, v256, v255, v257, v258, v259, v260, v291, v295);
  sub_1001DA318(&v303);
  v327 = v313;
  v328 = v314;
  v329 = v315;
  v330 = v316;
  v323 = v309;
  v324 = v310;
  v325 = v311;
  v326 = v312;
  v319 = v305;
  v320 = v306;
  v321 = v307;
  v322 = v308;
  v317 = v303;
  v318 = v304;
  SharingCircleWildAdvertisementKey.init(key:)();
  v341 = v327;
  v342 = v328;
  v343 = v329;
  v344 = v330;
  v337 = v323;
  v338 = v324;
  v339 = v325;
  v340 = v326;
  v333 = v319;
  v334 = v320;
  v335 = v321;
  v336 = v322;
  v331 = v317;
  v332 = v318;
LABEL_90:
  v247 = v292;
LABEL_91:
  v261 = v342;
  *(v247 + 160) = v341;
  *(v247 + 176) = v261;
  *(v247 + 192) = v343;
  *(v247 + 208) = v344;
  v262 = v338;
  *(v247 + 96) = v337;
  *(v247 + 112) = v262;
  v263 = v340;
  *(v247 + 128) = v339;
  *(v247 + 144) = v263;
  v264 = v334;
  *(v247 + 32) = v333;
  *(v247 + 48) = v264;
  v265 = v336;
  *(v247 + 64) = v335;
  *(v247 + 80) = v265;
  v266 = v332;
  *v247 = v331;
  *(v247 + 16) = v266;
}

uint64_t sub_1001D35A4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v129 = type metadata accessor for StandaloneBeacon(0);
  __chkstk_darwin(v129);
  v130 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MACAddress();
  v128 = *(v9 - 8);
  v10 = *(v128 + 64);
  v11 = __chkstk_darwin(v9);
  v127 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v111 - v12;
  v14 = type metadata accessor for OwnedBeaconGroup(0);
  __chkstk_darwin(v14 - 8);
  v16 = (&v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v126 = type metadata accessor for OwnedBeaconRecord(0);
  __chkstk_darwin(v126);
  v131 = (&v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v18 - 8);
  v19 = *(v4 + 56);
  if (v19)
  {
    v125 = v16;
    v20 = *(v4 + 64);
    v21 = (*(v20 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
    v22 = v21[1];
    if (v22 >> 60 == 15)
    {
      v23 = v19;
LABEL_13:
      if (qword_1016950E0 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_1000076D4(v32, qword_10177C448);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "Invalid serial number.", v35, 2u);
      }

      sub_1001D9F10();
      v36 = swift_allocError();
      *v37 = 1;

      *a3 = v36;
      sub_1000BC4D4(&qword_1016993A0, &qword_101391908);
      return swift_storeEnumTagMultiPayload();
    }

    v122 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo;
    v123 = a2;
    v124 = v20;
    v120 = a1;
    v132[0] = *v21;
    v31 = v132[0];
    v132[1] = v22;
    v121 = v19;
    sub_10002E98C(v31, v22);
    sub_1000E0A3C();
    if (DataProtocol.isNull.getter())
    {
      sub_100006654(v31, v22);
      goto LABEL_13;
    }

    v117 = v31;
    v118 = v22;
    v38 = Data.trimmed.getter();
    v40 = v39;
    sub_100017D5C(v38, v39);
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v114 = type metadata accessor for Logger();
    sub_1000076D4(v114, qword_10177C418);
    sub_100017D5C(v38, v40);
    v41 = Logger.logObject.getter();
    v42 = v40;
    v43 = static os_log_type_t.default.getter();
    sub_100016590(v38, v42);
    v113 = v43;
    v44 = os_log_type_enabled(v41, v43);
    v119 = a3;
    v116 = v42;
    if (v44)
    {
      v111 = v41;
      v45 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v132[0] = v112;
      *v45 = 141558275;
      *(v45 + 4) = 1752392040;
      *(v45 + 12) = 2081;
      static String.Encoding.utf8.getter();
      v46 = String.init(data:encoding:)();
      if (v47)
      {
        v48 = v47;
        v49 = v46;
      }

      else
      {
        v49 = Data.hexString.getter();
        v48 = v51;
      }

      sub_100016590(v38, v42);
      v52 = v111;
      v53 = sub_1000136BC(v49, v48, v132);

      *(v45 + 14) = v53;
      _os_log_impl(&_mh_execute_header, v52, v113, "Creating beacon for %{private,mask.hash}s", v45, 0x16u);
      sub_100007BAC(v112);

      v50 = v116;
    }

    else
    {
      sub_100016590(v38, v42);

      v50 = v42;
    }

    v54 = *(v4 + 200);
    v115 = v38;
    if (v54)
    {
      if (qword_1016950E0 != -1)
      {
        swift_once();
      }

      v55 = sub_1000076D4(v114, qword_10177C448);
      v56 = v128;
      v131 = *(v128 + 16);
      v131(v13, v123, v9);
      v126 = v55;
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        v132[0] = v125;
        *v59 = 136446210;
        sub_1001DAC6C(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
        LODWORD(v124) = v58;
        v60 = dispatch thunk of CustomStringConvertible.description.getter();
        v62 = v61;
        (*(v56 + 8))(v13, v9);
        v63 = sub_1000136BC(v60, v62, v132);

        *(v59 + 4) = v63;
        _os_log_impl(&_mh_execute_header, v57, v124, "Creating standalone beacon. classicMACAddress %{public}s", v59, 0xCu);
        sub_100007BAC(v125);
      }

      else
      {

        (*(v56 + 8))(v13, v9);
      }

      v74 = v56;
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v75 = __DataStorage.init(length:)() | 0x4000000000000000;
      v76 = v127;
      v131(v127, v123, v9);
      v77 = (*(v56 + 80) + 112) & ~*(v56 + 80);
      v78 = (v10 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
      v79 = swift_allocObject();
      *(v79 + 16) = v4;
      v80 = v120;
      v81 = *v120;
      *(v79 + 40) = v120[1];
      v82 = v80[3];
      *(v79 + 56) = v80[2];
      *(v79 + 72) = v82;
      *(v79 + 88) = v80[4];
      *(v79 + 24) = v81;
      v83 = v74;
      v84 = v121;
      *(v79 + 104) = v121;
      (*(v83 + 32))(v79 + v77, v76, v9);
      v85 = (v79 + v78);
      *v85 = 0x6000000000;
      v85[1] = v75;
      v86 = v84;

      sub_100102538(v80, v132);

      v87 = v130;
      unsafeFromAsyncTask<A>(_:)();
      sub_100006654(v117, v118);
      sub_100016590(v115, v116);

      sub_1001DA9D8(v87, v119, type metadata accessor for StandaloneBeacon);
      type metadata accessor for AirPodsLEPairingManager.BeaconCreationResult(0);
      swift_storeEnumTagMultiPayload();
      sub_1000BC4D4(&qword_1016993A0, &qword_101391908);
      return swift_storeEnumTagMultiPayload();
    }

    v64 = *(*(v124 + v122) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);
    v65 = qword_1016950E0;

    if (v65 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v114, qword_10177C448);
    swift_bridgeObjectRetain_n();
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v132[0] = v69;
      *v68 = 136315394;
      type metadata accessor for MultipartAccessoryPairingInfo(0);
      sub_100101BAC();
      v70 = Dictionary.description.getter();
      v72 = sub_1000136BC(v70, v71, v132);

      *(v68 + 4) = v72;
      *(v68 + 12) = 2048;
      v73 = *(v64 + 16);

      *(v68 + 14) = v73;

      _os_log_impl(&_mh_execute_header, v66, v67, "allSerialNumbersAndPartIds: %s. Count %ld", v68, 0x16u);
      sub_100007BAC(v69);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v88 = *(v4 + 24);
    v89 = *(v124 + v122);
    v90 = v121;
    v91 = *&v121[OBJC_IVAR____TtC12searchpartyd10Peripheral_injectedName + 8];
    if (v91)
    {
      v92 = *&v121[OBJC_IVAR____TtC12searchpartyd10Peripheral_injectedName];

      v93 = v91;
      v94 = v117;
    }

    else
    {
      v95 = *&v121[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject];

      v96 = [v95 name];
      v94 = v117;
      if (!v96)
      {
        v92 = 0;
        v93 = 0xE000000000000000;
        goto LABEL_43;
      }

      v97 = v96;
      v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v93 = v98;
    }

LABEL_43:
    v99 = v131;
    sub_100B8BFA0(v131, v125, v120, v89, v92, v93, v123, v64);

    v100 = *(v124 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_locationMonitor);
    v101 = OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_currentLocation;
    swift_beginAccess();
    v102 = *(v100 + v101);
    if (v102)
    {
      v103 = (v131 + *(v126 + 20));
      v104 = type metadata accessor for Transaction();
      __chkstk_darwin(v104);
      LOBYTE((&v111)[-4]) = 0;
      *(&v111 - 3) = v102;
      *(&v111 - 2) = v103;
      v99 = v131;
      *(&v111 - 1) = v88;
      v105 = v102;
      static Transaction.named<A>(_:with:)();

      sub_100016590(v115, v50);
      sub_100006654(v94, v118);
    }

    else
    {
      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        *v108 = 0;
        _os_log_impl(&_mh_execute_header, v106, v107, "Unable to retrieve current location from CL for pairing", v108, 2u);
      }

      sub_100006654(v94, v118);
      sub_100016590(v115, v50);
    }

    v109 = v119;
    v110 = *(sub_1000BC4D4(&qword_101697330, &qword_101391910) + 48);
    sub_1001DA9D8(v125, v109, type metadata accessor for OwnedBeaconGroup);
    sub_1001DA9D8(v99, v109 + v110, type metadata accessor for OwnedBeaconRecord);
    type metadata accessor for AirPodsLEPairingManager.BeaconCreationResult(0);
    swift_storeEnumTagMultiPayload();
    sub_1000BC4D4(&qword_1016993A0, &qword_101391908);
    return swift_storeEnumTagMultiPayload();
  }

  if (qword_1016950E0 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_1000076D4(v24, qword_10177C448);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Missing peripheral to create beacon!", v27, 2u);
  }

  sub_1001D9F10();
  v28 = swift_allocError();
  *v29 = 1;
  *a3 = v28;
  sub_1000BC4D4(&qword_1016993A0, &qword_101391908);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1001D47B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = type metadata accessor for MACAddress();
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();

  return _swift_task_switch(sub_1001D4880, 0, 0);
}

uint64_t sub_1001D4880()
{
  v1 = v0[11];
  v2 = *(*(v0[3] + 64) + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
  v0[12] = v2;

  sub_100A22DF0(v1);
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_1001D496C;
  v4 = v0[11];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[6];
  v8 = v0[4];
  v9 = v0[2];

  return sub_100B90BDC(v9, v8, v2, v4, v7, v5, v6);
}

uint64_t sub_1001D496C()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 112) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return _swift_task_switch(sub_1001D4B44, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1001D4B44()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1001D4BA8(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v6 - 8);
  v100 = (&v93 - v7);
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v8 - 8);
  v104 = (&v93 - v9);
  v10 = type metadata accessor for UUID();
  v105 = *(v10 - 8);
  __chkstk_darwin(v10);
  v101 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OwnedBeaconGroup(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v111 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v93 - v17;
  v19 = __chkstk_darwin(v16);
  v99 = &v93 - v20;
  __chkstk_darwin(v19);
  v103 = &v93 - v21;
  v22 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v22 - 8);
  if (qword_1016950E0 != -1)
  {
    swift_once();
  }

  v108 = v13;
  v98 = v18;
  v23 = type metadata accessor for Logger();
  v24 = sub_1000076D4(v23, qword_10177C448);
  sub_100017D5C(a1, a2);
  v107 = v24;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  sub_100016590(a1, a2);
  v27 = os_log_type_enabled(v25, v26);
  v109 = v12;
  v110 = v10;
  v112 = a3;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v114[0] = v29;
    *v28 = 141558275;
    *(v28 + 4) = 1752392040;
    *(v28 + 12) = 2081;
    static String.Encoding.utf8.getter();
    v30 = String.init(data:encoding:)();
    v31 = a1;
    v33 = v32;
    v34 = v31;
    if (!v32)
    {
      v30 = Data.hexString.getter();
      v33 = v35;
    }

    v36 = sub_1000136BC(v30, v33, v114);

    *(v28 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v25, v26, "Clean up pending pairing for %{private,mask.hash}s", v28, 0x16u);
    sub_100007BAC(v29);

    a1 = v34;
    a3 = v112;
  }

  else
  {
  }

  v37 = swift_allocBox();
  sub_1001DA7B4(a3, v38, type metadata accessor for OwnedBeaconGroup);
  if (sub_100519780(a1, a2))
  {
    v96 = a1;
    v97 = a2;
    v39 = dispatch_group_create();
    dispatch_group_enter(v39);
    isa = v102[3].isa;
    v95 = swift_allocObject();
    *(v95 + 16) = v39;

    v102 = v39;
    v41 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v42 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_101385D80;
    *(v43 + 56) = &type metadata for String;
    *(v43 + 64) = sub_100008C00();
    *(v43 + 32) = 0x65736C6166;
    *(v43 + 40) = 0xE500000000000000;
    os_log(_:dso:log:_:_:)(v41, &_mh_execute_header, v42, "Modify record. Disk First? (%@)", 31, 2, v43);

    v44 = objc_autoreleasePoolPush();
    sub_1011218E0(a3);
    v46 = v45;
    v94 = v45;
    objc_autoreleasePoolPop(v44);
    sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
    v111 = isa;
    type metadata accessor for CloudKitCoordinator();
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v93 = type metadata accessor for OwnedBeaconGroup;
    v47 = v103;
    sub_1001DA7B4(a3, v103, type metadata accessor for OwnedBeaconGroup);
    v48 = *(v108 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = sub_1001DA00C;
    *(v49 + 24) = v37;
    v50 = a3;
    v106 = v37;
    sub_1001DA9D8(v47, v49 + ((v48 + 32) & ~v48), type metadata accessor for OwnedBeaconGroup);

    sub_100FDCA40(v46, sub_1001DA038, v49);

    v51 = swift_allocObject();
    v52 = v95;
    *(v51 + 16) = sub_1001DA014;
    *(v51 + 24) = v52;

    Future.addFailure(block:)();

    sub_1001DA7B4(v50, v47, v93);
    v53 = (v48 + 16) & ~v48;
    v54 = (v14 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v55 = swift_allocObject();
    sub_1001DA9D8(v47, v55 + v53, type metadata accessor for OwnedBeaconGroup);
    *(v55 + v54) = v111;
    v56 = (v55 + ((v54 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v56 = sub_1001DA014;
    v56[1] = v52;

    Future.addSuccess(block:)();

    v57 = v102;
    OS_dispatch_group.wait()();
    v58 = v104;
    sub_100519BCC(v96, v97, v104);
    v59 = v105;
    v60 = v110;
    if ((*(v105 + 48))(v58, 1, v110) == 1)
    {

      v61 = &qword_1016980D0;
      v62 = &unk_10138F3B0;
    }

    else
    {
      v76 = v101;
      (*(v59 + 32))(v101, v58, v60);
      v58 = v100;
      sub_100AC53EC(v76, v100);
      if ((*(v108 + 48))(v58, 1, v109) != 1)
      {
        v77 = v99;
        sub_1001DA9D8(v58, v99, type metadata accessor for OwnedBeaconGroup);
        v78 = sub_100B93B5C(v77);
        if (v78)
        {
          v79 = v78;
          v80 = v98;
          sub_1001DA7B4(v77, v98, type metadata accessor for OwnedBeaconGroup);
          swift_errorRetain();
          v81 = Logger.logObject.getter();
          v82 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v81, v82))
          {
            v83 = v59;
            v84 = swift_slowAlloc();
            v114[0] = swift_slowAlloc();
            *v84 = 141558531;
            *(v84 + 4) = 1752392040;
            *(v84 + 12) = 2081;
            LODWORD(v112) = v82;
            sub_1001DAC6C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v85 = dispatch thunk of CustomStringConvertible.description.getter();
            v87 = v86;
            sub_1001DAA40(v80, type metadata accessor for OwnedBeaconGroup);
            v88 = sub_1000136BC(v85, v87, v114);

            *(v84 + 14) = v88;
            *(v84 + 22) = 2082;
            v113 = v79;
            swift_errorRetain();
            sub_1000BC4D4(&qword_101696960, &unk_10138B220);
            v89 = String.init<A>(describing:)();
            v91 = sub_1000136BC(v89, v90, v114);

            *(v84 + 24) = v91;
            _os_log_impl(&_mh_execute_header, v81, v112, "Failed to delete pending record %{private,mask.hash}s\ndue to %{public}s", v84, 0x20u);
            swift_arrayDestroy();

            sub_1001DAA40(v99, type metadata accessor for OwnedBeaconGroup);
            (*(v83 + 8))(v76, v110);
            goto LABEL_28;
          }

          sub_1001DAA40(v80, type metadata accessor for OwnedBeaconGroup);
          v92 = v77;
        }

        else
        {

          v92 = v77;
        }

        sub_1001DAA40(v92, type metadata accessor for OwnedBeaconGroup);
        (*(v59 + 8))(v76, v60);
        goto LABEL_28;
      }

      (*(v59 + 8))(v76, v60);

      v61 = &unk_1016AF8B0;
      v62 = &unk_1013A0700;
    }

    sub_10000B3A8(v58, v61, v62);
LABEL_28:

    return;
  }

  v63 = a3;
  v64 = v111;
  sub_1001DA7B4(v63, v111, type metadata accessor for OwnedBeaconGroup);
  sub_100017D5C(a1, a2);
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.error.getter();
  sub_100016590(a1, a2);
  if (!os_log_type_enabled(v65, v66))
  {

    sub_1001DAA40(v64, type metadata accessor for OwnedBeaconGroup);
    goto LABEL_28;
  }

  v67 = swift_slowAlloc();
  v114[0] = swift_slowAlloc();
  *v67 = 141558787;
  *(v67 + 4) = 1752392040;
  *(v67 + 12) = 2081;
  static String.Encoding.utf8.getter();
  v68 = String.init(data:encoding:)();
  if (!v69)
  {
    v68 = Data.hexString.getter();
  }

  v70 = sub_1000136BC(v68, v69, v114);

  *(v67 + 14) = v70;
  *(v67 + 22) = 2160;
  *(v67 + 24) = 1752392040;
  *(v67 + 32) = 2081;
  sub_1001DAC6C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v71 = v111;
  v72 = dispatch thunk of CustomStringConvertible.description.getter();
  v74 = v73;
  sub_1001DAA40(v71, type metadata accessor for OwnedBeaconGroup);
  v75 = sub_1000136BC(v72, v74, v114);

  *(v67 + 34) = v75;
  _os_log_impl(&_mh_execute_header, v65, v66, "Unable to unpair %{private,mask.hash}s from %{private,mask.hash}s!", v67, 0x2Au);
  swift_arrayDestroy();
}

uint64_t sub_1001D59AC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for OwnedBeaconGroup(0);
  v4 = swift_projectBox();
  swift_beginAccess();
  v5 = *(v3 + 40);
  v6 = *(v4 + v5);

  *(a1 + v5) = v6;
  return result;
}

void sub_1001D5A28(uint64_t a1, NSObject *a2)
{
  v4 = type metadata accessor for OwnedBeaconGroup(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v32 - v8;
  v10 = sub_1000BC4D4(&qword_101699398, &qword_101391900);
  __chkstk_darwin(v10);
  v12 = (&v32 - v11);
  sub_1000D2A70(a1, &v32 - v11, &qword_101699398, &qword_101391900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_10177C448);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v32 = v13;
      v33 = v18;
      *v17 = 136446210;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v19 = String.init<A>(describing:)();
      v21 = sub_1000136BC(v19, v20, &v33);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "Unable to modify existing group. Error %{public}s", v17, 0xCu);
      sub_100007BAC(v18);
    }

    else
    {
    }
  }

  else
  {
    sub_1001DA9D8(v12, v9, type metadata accessor for OwnedBeaconGroup);
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    v23 = sub_1000076D4(v22, qword_10177C448);
    sub_1001DA7B4(v9, v7, type metadata accessor for OwnedBeaconGroup);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v33 = v27;
      *v26 = 141558275;
      *(v26 + 4) = 1752392040;
      *(v26 + 12) = 2081;
      type metadata accessor for UUID();
      sub_1001DAC6C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      sub_1001DAA40(v7, type metadata accessor for OwnedBeaconGroup);
      v31 = sub_1000136BC(v28, v30, &v33);

      *(v26 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v24, v25, "Successfully modified existing group %{private,mask.hash}s", v26, 0x16u);
      sub_100007BAC(v27);
    }

    else
    {

      sub_1001DAA40(v7, type metadata accessor for OwnedBeaconGroup);
    }

    sub_1005160CC(v23);
    sub_1001DAA40(v9, type metadata accessor for OwnedBeaconGroup);
  }

  dispatch_group_leave(a2);
}

uint64_t sub_1001D5EEC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + 16);
  *v9 = v10;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    if (qword_1016950E0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_10177C448);
  sub_100017D5C(a1, a2);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v13, v14))
  {
    sub_100016590(a1, a2);
LABEL_16:

    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = a1;
    v23[4] = a2;
    sub_1000BC4D4(&qword_101699378, &unk_1013B60B0);
    swift_allocObject();
    sub_100017D5C(a1, a2);
    return Future.init(_:)();
  }

  result = swift_slowAlloc();
  *result = 134217984;
  v16 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v16 != 2)
    {
      v17 = 0;
      goto LABEL_15;
    }

    v19 = *(a1 + 16);
    v18 = *(a1 + 24);
    v20 = __OFSUB__(v18, v19);
    v17 = v18 - v19;
    if (!v20)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v16)
  {
    v17 = BYTE6(a2);
LABEL_15:
    *(result + 4) = v17;
    v21 = result;
    sub_100016590(a1, a2);
    _os_log_impl(&_mh_execute_header, v13, v14, "didNotify data length %ld", v21, 0xCu);

    goto LABEL_16;
  }

  LODWORD(v17) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v17 = v17;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001D61CC(void (*a1)(__int128 *), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v96 = a2;
  v97 = a5;
  v95 = a1;
  v6 = type metadata accessor for BinaryDecodingError();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v94 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BinaryDecoder();
  v89 = *(v9 - 8);
  v90 = v9;
  __chkstk_darwin(v9);
  v88 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Bit();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v91 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v83 - v15;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    *&v117 = 0;
    v115 = 0u;
    v116 = 0u;
    BYTE8(v117) = 11;
    LOBYTE(v118) = 1;
    v95(&v115);
    return sub_10000B3A8(&v115, &qword_101699380, &unk_1013918F0);
  }

  v18 = Strong;
  v87 = v16;
  v83 = v12;
  v84 = v11;
  v92 = v7;
  v19 = *(Strong + 160);
  v20 = *(v18 + 168);
  if (v20 >> 60 == 15)
  {
    v21 = 0;
  }

  else
  {
    v21 = v19;
  }

  v22 = 0xC000000000000000;
  if (v20 >> 60 != 15)
  {
    v22 = *(v18 + 168);
  }

  v129 = v21;
  v130 = v22;
  sub_10002E98C(v19, v20);
  v23 = v97;
  sub_100017D5C(a4, v97);
  v93 = a4;
  sub_100ED428C(1uLL, a4, v23, &v115);
  v24 = v115;
  Data.append(_:)();
  sub_100016590(v24, *(&v24 + 1));
  v25 = v129;
  v26 = v130;
  v27 = *(v18 + 160);
  v28 = *(v18 + 168);
  *(v18 + 160) = v129;
  *(v18 + 168) = v26;
  sub_100017D5C(v25, v26);
  sub_100006654(v27, v28);
  if (qword_1016950E0 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  v30 = sub_1000076D4(v29, qword_10177C448);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *&v115 = swift_slowAlloc();
    v85 = v30;
    v34 = v115;
    *v33 = 136315138;
    swift_beginAccess();
    v86 = v6;
    v35 = v129;
    v36 = v130;
    sub_100017D5C(v129, v130);
    v37 = v18;
    v38 = Data.description.getter();
    v40 = v39;
    sub_100016590(v35, v36);
    v41 = v38;
    v18 = v37;
    v42 = sub_1000136BC(v41, v40, &v115);

    *(v33 + 4) = v42;
    v6 = v86;
    _os_log_impl(&_mh_execute_header, v31, v32, "localReadBuffer %s", v33, 0xCu);
    sub_100007BAC(v34);
    v30 = v85;
  }

  v43 = v93;
  v44 = sub_100017C08(v93, v97);
  v45 = v92;
  if ((v44 & 0x100) != 0)
  {
    goto LABEL_17;
  }

  LOBYTE(v115) = v44;
  sub_1000198E8();
  v46 = FixedWidthInteger.bits()();
  if (!*(v46 + 16))
  {

LABEL_17:
    sub_1001D9F10();
    v55 = swift_allocError();
    *v56 = 2;
    swift_willThrow();
    sub_100016590(v129, v130);
    v57 = v94;
    goto LABEL_19;
  }

  v85 = v30;
  v86 = v6;
  v48 = v83;
  v47 = v84;
  (*(v83 + 16))(v87, v46 + ((*(v83 + 80) + 32) & ~*(v83 + 80)), v84);

  v49 = v91;
  (*(v48 + 104))(v91, enum case for Bit.one(_:), v47);
  sub_1001DAC6C(&qword_101698660, &type metadata accessor for Bit, &protocol conformance descriptor for Bit);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v50 = *(v48 + 8);
  v50(v49, v47);
  if (v115 == v101)
  {
    v91 = v50;
    v51 = v88;
    BinaryDecoder.init()();
    swift_beginAccess();
    v52 = v129;
    v53 = v130;
    sub_100017D5C(v129, v130);
    v54 = sub_1001D9F64();
    BinaryDecoder.decode<A>(_:from:)();
    sub_100016590(v52, v53);
    v111 = v125;
    v112 = v126;
    v113 = v127;
    v114 = v128;
    v107 = v121;
    v108 = v122;
    v109 = v123;
    v110 = v124;
    v103 = v117;
    v104 = v118;
    v105 = v119;
    v106 = v120;
    v101 = v115;
    v102 = v116;
    v73 = *(v18 + 160);
    v74 = *(v18 + 168);
    *(v18 + 160) = xmmword_10138BBF0;
    sub_100006654(v73, v74);
    v99[3] = &type metadata for AirPodsLEPairingCommand;
    v99[4] = v54;
    v99[5] = sub_1001D9E94();
    v75 = swift_allocObject();
    v99[0] = v75;
    v76 = v112;
    *(v75 + 176) = v111;
    *(v75 + 192) = v76;
    *(v75 + 208) = v113;
    *(v75 + 224) = v114;
    v77 = v108;
    *(v75 + 112) = v107;
    *(v75 + 128) = v77;
    v78 = v110;
    *(v75 + 144) = v109;
    *(v75 + 160) = v78;
    v79 = v104;
    *(v75 + 48) = v103;
    *(v75 + 64) = v79;
    v80 = v106;
    *(v75 + 80) = v105;
    *(v75 + 96) = v80;
    v81 = v102;
    *(v75 + 16) = v101;
    *(v75 + 32) = v81;
    v100 = 0;
    sub_1001D9B48(&v101, &v98);
    v95(v99);

    sub_1001D9FB8(&v101);
    (*(v89 + 8))(v51, v90);
    (v91)(v87, v84);
    sub_10000B3A8(v99, &qword_101699380, &unk_1013918F0);
    return sub_100016590(v129, v130);
  }

  sub_1001DAC6C(&qword_101696E30, &type metadata accessor for BinaryDecodingError, &protocol conformance descriptor for BinaryDecodingError);
  v58 = v86;
  v55 = swift_allocError();
  (*(v45 + 104))(v59, enum case for BinaryDecodingError.insufficientData(_:), v58);
  swift_willThrow();
  v50(v87, v47);
  v6 = v58;
  sub_100016590(v129, v130);
  v57 = v94;
LABEL_19:
  *&v115 = v55;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (!swift_dynamicCast())
  {
LABEL_25:

    v63 = v97;
    sub_100017D5C(v43, v97);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();
    sub_100016590(v43, v63);
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *&v115 = v67;
      *v66 = 136446210;
      v68 = Data.description.getter();
      v70 = sub_1000136BC(v68, v69, &v115);

      *(v66 + 4) = v70;
      _os_log_impl(&_mh_execute_header, v64, v65, "Failed to decode data %{public}s", v66, 0xCu);
      sub_100007BAC(v67);
    }

    v71 = *(v18 + 160);
    v72 = *(v18 + 168);
    *(v18 + 160) = xmmword_10138BBF0;
    sub_100006654(v71, v72);
    *&v115 = v55;
    BYTE8(v117) = 10;
    LOBYTE(v118) = 1;
    swift_errorRetain();
    v95(&v115);

    return sub_10000B3A8(&v115, &qword_101699380, &unk_1013918F0);
  }

  if ((*(v45 + 88))(v57, v6) != enum case for BinaryDecodingError.insufficientData(_:))
  {
    (*(v45 + 8))(v57, v6);
    goto LABEL_25;
  }

  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&_mh_execute_header, v60, v61, "insufficientData. Keep reading...", v62, 2u);
  }
}

uint64_t sub_1001D6CAC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = *(v2 + 16);
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    v14 = *(a1 + 176);
    *(v13 + 184) = *(a1 + 160);
    *(v13 + 200) = v14;
    *(v13 + 216) = *(a1 + 192);
    v15 = *(a1 + 112);
    *(v13 + 120) = *(a1 + 96);
    *(v13 + 136) = v15;
    v16 = *(a1 + 144);
    *(v13 + 152) = *(a1 + 128);
    *(v13 + 168) = v16;
    v17 = *(a1 + 48);
    *(v13 + 56) = *(a1 + 32);
    *(v13 + 72) = v17;
    v18 = *(a1 + 80);
    *(v13 + 88) = *(a1 + 64);
    *(v13 + 104) = v18;
    v19 = *(a1 + 16);
    *(v13 + 24) = *a1;
    *(v13 + 16) = v12;
    v20 = *(a1 + 208);
    *(v13 + 40) = v19;
    *(v13 + 232) = v20;
    *(v13 + 240) = a2;
    sub_1000BC4D4(&qword_101699358, &unk_1013918D0);
    swift_allocObject();
    sub_1001D9B48(a1, v22);

    return Future.init(_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001D6EB4(void (*a1)(__int128 *), void *a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v58 = a5;
  v8 = type metadata accessor for BinaryEncoder();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v50[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    *&v61 = 0;
    v59 = 0u;
    v60 = 0u;
    BYTE8(v61) = 11;
    v73 = 1;
    a1(&v59);
    return sub_10000B3A8(&v59, &qword_101699350, &qword_1013918C8);
  }

  v13 = Strong;
  v14 = Strong[7];
  if (!v14)
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000076D4(v25, qword_10177C448);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Missing peripheral to write!", v28, 2u);
    }

    *&v61 = 0;
    v59 = 0u;
    v60 = 0u;
    BYTE8(v61) = 11;
    v73 = 1;
    a1(&v59);

    return sub_10000B3A8(&v59, &qword_101699350, &qword_1013918C8);
  }

  v15 = Strong[18];
  v16 = Strong[19];
  v57 = a1;
  Strong[18] = a1;
  Strong[19] = a2;
  v17 = v14;
  v56 = a2;

  sub_1000BB27C(v15, v16);
  BinaryEncoder.init()();
  v18 = a4[11];
  v69 = a4[10];
  v70 = v18;
  v71 = a4[12];
  v72 = *(a4 + 26);
  v19 = a4[7];
  v65 = a4[6];
  v66 = v19;
  v20 = a4[9];
  v67 = a4[8];
  v68 = v20;
  v21 = a4[3];
  v61 = a4[2];
  v62 = v21;
  v22 = a4[5];
  v63 = a4[4];
  v64 = v22;
  v23 = a4[1];
  v59 = *a4;
  v60 = v23;
  sub_1001D9E94();
  v24 = 0;
  v30 = BinaryEncoder.encode<A>(_:)();
  v57 = v31;
  __chkstk_darwin(v30);
  v56 = v17;
  *&v50[-16] = v17;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v32 = v59;
  if (__OFSUB__(v59, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  v24 = Data.chunked(into:)();
  if (qword_1016950E0 != -1)
  {
LABEL_18:
    swift_once();
  }

  v54 = v11;
  v33 = type metadata accessor for Logger();
  sub_1000076D4(v33, qword_10177C448);
  swift_retain_n();

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v53 = v30;
    v37 = v36;
    v52 = swift_slowAlloc();
    *&v59 = v52;
    *v37 = 136315906;
    v38 = Array.description.getter();
    v51 = v35;
    v40 = sub_1000136BC(v38, v39, &v59);
    v55 = v8;
    v41 = v40;

    *(v37 + 4) = v41;
    *(v37 + 12) = 2048;
    *(v37 + 14) = v32;
    *(v37 + 22) = 2048;
    swift_beginAccess();
    v42 = *(v13[22] + 16);

    *(v37 + 24) = v42;

    *(v37 + 32) = 2080;

    v43 = Array.description.getter();
    v44 = v9;
    v46 = v45;

    v47 = v43;
    v8 = v55;
    v48 = sub_1000136BC(v47, v46, &v59);
    v9 = v44;

    *(v37 + 34) = v48;
    _os_log_impl(&_mh_execute_header, v34, v51, "Enqueuing %s. MTU %ld. Current queue [%ld] %s", v37, 0x2Au);
    swift_arrayDestroy();

    v30 = v53;
  }

  else
  {
  }

  v49 = sub_1001D97CC(v24);

  swift_beginAccess();
  sub_100398324(v49);
  swift_endAccess();
  sub_1001D767C(v58, a4);
  sub_100016590(v30, v57);

  return (*(v9 + 8))(v54, v8);
}

uint64_t sub_1001D767C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchTime();
  v86 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v85 = &v79 - v10;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = v3[2];
  *v14 = v15;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v16 = v15;
  v17 = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_26:
    swift_once();
LABEL_4:
    v20 = type metadata accessor for Logger();
    v21 = sub_1000076D4(v20, qword_10177C448);
    sub_100017D5C(v17, v6);

    v81 = v21;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    sub_100016590(v17, v6);

    v24 = os_log_type_enabled(v22, v23);
    v87 = v6;
    v88 = v17;
    if (v24)
    {
      v25 = swift_slowAlloc();
      *&v93[0] = swift_slowAlloc();
      *v25 = 136315394;
      sub_100017D5C(v88, v6);
      v26 = Data.description.getter();
      v28 = v27;
      sub_100016590(v88, v87);
      v29 = sub_1000136BC(v26, v28, v93);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2082;
      v30 = sub_100A5AADC();
      v32 = sub_1000136BC(v30, v31, v93);

      *(v25 + 14) = v32;
      v6 = v87;
      _os_log_impl(&_mh_execute_header, v22, v23, "processQueuedUpdates: writing %s. Characteristic %{public}s.", v25, 0x16u);
      swift_arrayDestroy();

      v17 = v88;
    }

    v33 = swift_allocObject();
    *(v33 + 16) = 0u;
    v34 = v33 + 16;
    *(v33 + 32) = 0u;
    *(v33 + 48) = 0;
    *(v33 + 56) = 267;
    v35 = dispatch_group_create();
    dispatch_group_enter(v35);
    *&v93[0] = sub_100A59B98(v17, v6);
    v36 = swift_allocObject();
    *(v36 + 16) = v33;
    *(v36 + 24) = v35;
    v83 = v33;

    v37 = v35;
    sub_1000BC4D4(&qword_1016C4520, &unk_1013B6090);
    sub_1000041A4(&qword_101699348, &qword_1016C4520, &unk_1013B6090, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher.oneshot(_:)();

    static DispatchTime.now()();
    v38 = v85;
    + infix(_:_:)();
    v39 = *(v86 + 8);
    v40 = v82;
    v39(v9, v82);
    OS_dispatch_group.wait(timeout:)();
    v39(v38, v40);
    if (static DispatchTimeoutResult.== infix(_:_:)())
    {
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v41, v42, "Timed out waiting for writeFuture", v43, 2u);
      }
    }

    swift_beginAccess();
    sub_1000D2A70(v34, &v89, &qword_1016B1CA0, &qword_1013918C0);
    if ((v91 & 1) == 0)
    {

      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.info.getter();
      v69 = os_log_type_enabled(v67, v68);
      v70 = v87;
      if (v69)
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        *&v93[0] = v72;
        *v71 = 134218242;
        *(v71 + 4) = *(v3[22] + 16);

        *(v71 + 12) = 2080;

        v73 = Array.description.getter();
        v74 = v37;
        v76 = v75;

        v77 = sub_1000136BC(v73, v76, v93);
        v37 = v74;

        *(v71 + 14) = v77;
        _os_log_impl(&_mh_execute_header, v67, v68, "writeFuture success. writeQueue [%ld] %s", v71, 0x16u);
        sub_100007BAC(v72);

        v70 = v87;
      }

      else
      {
      }

      v78 = v88;
      sub_1001D767C(v84, v80);

      sub_100016590(v78, v70);
    }

    v44 = v37;
    v107 = v89;
    v108[0] = *v90;
    *(v108 + 9) = *&v90[9];
    sub_100101AA8(&v107, v93);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    v47 = os_log_type_enabled(v45, v46);
    v48 = v87;
    if (v47)
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v92 = v50;
      *v49 = 136446210;
      v51 = sub_1013181BC();
      v53 = v52;
      sub_100101B04(v93);
      v54 = sub_1000136BC(v51, v53, &v92);

      *(v49 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v45, v46, "writeFuture error: %{public}s", v49, 0xCu);
      sub_100007BAC(v50);

      v55 = v3[18];
      if (v55)
      {
LABEL_13:
        v56 = v3[19];
        sub_100101B58();
        v57 = swift_allocError();
        sub_100101AA8(&v107, v58);
        *&v93[0] = v57;
        BYTE8(v94) = 0;
        v106 = 1;

        v55(v93);
        sub_1000BB27C(v55, v56);

        sub_100016590(v88, v48);
        sub_10000B3A8(v93, &qword_101699350, &qword_1013918C8);
LABEL_20:
        sub_100101B04(&v107);
      }
    }

    else
    {

      sub_100101B04(v93);
      v55 = v3[18];
      if (v55)
      {
        goto LABEL_13;
      }
    }

    sub_100016590(v88, v48);

    goto LABEL_20;
  }

  result = swift_beginAccess();
  v19 = v3[22];
  if (v19[2])
  {
    v82 = v6;
    v84 = a1;
    v80 = a2;
    swift_beginAccess();
    v17 = v19[4];
    v6 = v19[5];
    sub_100017D5C(v17, v6);
    sub_100A077EC(0, 1);
    swift_endAccess();
    if (qword_1016950E0 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_26;
  }

  v59 = v3[18];
  if (v59)
  {
    v60 = v3[19];
    v61 = *(a2 + 176);
    v102 = *(a2 + 160);
    v103 = v61;
    v104 = *(a2 + 192);
    v105 = *(a2 + 208);
    v62 = *(a2 + 112);
    v98 = *(a2 + 96);
    v99 = v62;
    v63 = *(a2 + 144);
    v100 = *(a2 + 128);
    v101 = v63;
    v64 = *(a2 + 48);
    v94 = *(a2 + 32);
    v95 = v64;
    v65 = *(a2 + 80);
    v96 = *(a2 + 64);
    v97 = v65;
    v66 = *(a2 + 16);
    v93[0] = *a2;
    v93[1] = v66;
    v106 = 0;
    sub_100012908(v59, v60);
    sub_1001D9B48(a2, &v89);
    v59(v93);
    sub_1000BB27C(v59, v60);
    return sub_10000B3A8(v93, &qword_101699350, &qword_1013918C8);
  }

  return result;
}

void sub_1001D8024(uint64_t a1, uint64_t a2, NSObject *a3)
{
  swift_beginAccess();
  sub_1001DA61C(a1, a2 + 16, &qword_1016B1CA0, &qword_1013918C0);
  dispatch_group_leave(a3);
}

void sub_1001D8094()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = v1[2];
  *v5 = v6;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_1016950E0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177C448);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "pairingCompleteAnalyticsEvent", v11, 2u);
  }

  v12 = v1[24];
  if (v12)
  {
    v13 = *(v1[8] + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
    type metadata accessor for Transaction();
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v14 + 24) = v13;
    swift_retain_n();
    swift_retain_n();
    static Transaction.asyncTask(name:block:)();

    v1[24] = 0;
  }

  else
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "No analytics event!", v17, 2u);
    }
  }
}

uint64_t sub_1001D8370(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1001D8390, 0, 0);
}

uint64_t sub_1001D8390()
{
  v1 = *(v0 + 16);

  return _swift_task_switch(sub_1001D83FC, v1, 0);
}

uint64_t sub_1001D83FC()
{
  sub_10116CE40(v0[2], v0[3]);

  type metadata accessor for AnalyticsPublisher();
  v0[4] = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1001D84D8;
  v2 = v0[2];

  return sub_101163F78(v2);
}

uint64_t sub_1001D84D8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1001D85E8()
{
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101391790;
  *(inited + 32) = 0x6563637553736177;
  *(inited + 40) = 0xEA00000000007373;
  *(inited + 48) = 1;
  *(inited + 56) = 1;
  *(inited + 64) = 0x626D754E74726170;
  *(inited + 72) = 0xEA00000000007265;
  *(inited + 80) = UInt8._bridgeToObjectiveC()();
  *(inited + 88) = 0;
  strcpy((inited + 96), "numberOfParts");
  *(inited + 110) = -4864;
  *(inited + 112) = Int._bridgeToObjectiveC()();
  *(inited + 120) = 0;
  *(inited + 128) = 0x6961506563726F66;
  *(inited + 136) = 0xE900000000000072;
  *(inited + 144) = Bool._bridgeToObjectiveC()();
  *(inited + 152) = 0;
  v1 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  return v1;
}

void sub_1001D8778(uint64_t a1, unsigned int (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  v4 = v3;
  v61 = a3;
  v65 = a2;
  v6 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v7 = __chkstk_darwin(v6 - 8);
  v68 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v57 - v9;
  v62 = type metadata accessor for MACAddress();
  v11 = *(v62 - 8);
  __chkstk_darwin(v62);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v14 - 8);
  v64 = &v57 - v15;
  v67 = type metadata accessor for OwnedBeaconGroup(0);
  v63 = *(v67 - 8);
  __chkstk_darwin(v67);
  v66 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (&v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = v4[2];
  *v20 = v21;
  (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
  v22 = v21;
  v23 = _dispatchPreconditionTest(_:)();
  (*(v18 + 8))(v20, v17);
  if (v23)
  {
    v60 = v13;
    if (qword_1016950E0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v24 = type metadata accessor for Logger();
  sub_1000076D4(v24, qword_10177C448);
  swift_errorRetain();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v59 = v4;
    v29 = v10;
    v30 = v28;
    v69 = a1;
    v70 = v28;
    *v27 = 136446210;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v31 = String.init<A>(describing:)();
    v33 = sub_1000136BC(v31, v32, &v70);

    *(v27 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v25, v26, "pairingFailureAnalyticsEvent %{public}s", v27, 0xCu);
    sub_100007BAC(v30);
    v10 = v29;
    v4 = v59;
  }

  v34 = v68;
  v35 = v4[24];
  if (v35)
  {
    v36 = *(v4[8] + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
    v37 = (v36 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId);
    if (*(v36 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId + 1))
    {

      v38 = v64;
      sub_100AC5D4C(v65, v64);
      if ((*(v63 + 48))(v38, 1, v67) == 1)
      {
        sub_10000B3A8(v38, &unk_1016AF8B0, &unk_1013A0700);
      }

      else
      {
        sub_1001DA9D8(v38, v66, type metadata accessor for OwnedBeaconGroup);
        sub_1000D2A70(v61, v34, &qword_1016A40D0, &unk_10138BE70);
        v43 = v62;
        v65 = *(v11 + 48);
        v44 = v65(v34, 1, v62);
        v58 = v11;
        if (v44 == 1)
        {
          v45 = v4[7];
          if (v45)
          {
            v46 = v45;
            sub_100A22DF0(v10);

            v43 = v62;
            v47 = 0;
          }

          else
          {
            v47 = 1;
          }

          v49 = v68;
          v50 = v65;
          (*(v58 + 56))(v10, v47, 1, v43);
          if (v50(v49, 1, v43) != 1)
          {
            sub_10000B3A8(v49, &qword_1016A40D0, &unk_10138BE70);
          }

          v48 = v50(v10, 1, v43);
        }

        else
        {
          (*(v11 + 32))(v10, v34, v43);
          (*(v11 + 56))(v10, 0, 1, v43);
          v48 = v65(v10, 1, v43);
        }

        if (v48 == 1)
        {
          sub_1001DAA40(v66, type metadata accessor for OwnedBeaconGroup);
          sub_10000B3A8(v10, &qword_1016A40D0, &unk_10138BE70);
        }

        else
        {
          v51 = v58;
          v52 = v60;
          (*(v58 + 32))(v60, v10, v43);
          v53 = v43;
          v54 = v66;
          sub_10051578C(v52);
          v56 = v55;
          (*(v51 + 8))(v52, v53);
          *v37 = v56;
          v37[1] = HIBYTE(v56) & 1;
          *(v36 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_numBeacons) = *(*(v54 + *(v67 + 40)) + 16);
          sub_1001DAA40(v54, type metadata accessor for OwnedBeaconGroup);
        }
      }
    }

    else
    {
    }

    type metadata accessor for Transaction();
    v42 = swift_allocObject();
    v42[2] = v35;
    v42[3] = v36;
    v42[4] = a1;
    swift_errorRetain();

    static Transaction.asyncTask(name:block:)();

    v4[24] = 0;
  }

  else
  {
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "No analytics event!", v41, 2u);
    }
  }
}

uint64_t sub_1001D8FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1001D8FC4, 0, 0);
}

uint64_t sub_1001D8FC4()
{
  v1 = *(v0 + 16);

  swift_errorRetain();

  return _swift_task_switch(sub_1001D9038, v1, 0);
}

uint64_t sub_1001D9038()
{
  sub_10116CE80(v0[2], v0[3], v0[4]);

  type metadata accessor for AnalyticsPublisher();
  v0[5] = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1001D9120;
  v2 = v0[2];

  return sub_101163F78(v2);
}

uint64_t sub_1001D9120()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1001D9230(uint64_t a1, uint64_t a2)
{
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1013917A0;
  *(inited + 32) = 0x6563637553736177;
  *(inited + 40) = 0xEA00000000007373;
  *(inited + 48) = 0;
  *(inited + 56) = 1;
  *(inited + 64) = 0x6D6F44726F727265;
  *(inited + 72) = 0xEB000000006E6961;
  swift_getErrorValue();
  Error.domain.getter();
  v3 = String._bridgeToObjectiveC()();

  *(inited + 80) = v3;
  *(inited + 88) = 0;
  *(inited + 96) = 0x646F43726F727265;
  *(inited + 104) = 0xE900000000000065;
  swift_getErrorValue();
  Error.code.getter();
  *(inited + 112) = Int._bridgeToObjectiveC()();
  *(inited + 120) = 0;
  strcpy((inited + 128), "numberOfParts");
  *(inited + 142) = -4864;
  *(inited + 144) = Int._bridgeToObjectiveC()();
  *(inited + 152) = 0;
  *(inited + 160) = 0x626D754E74726170;
  *(inited + 168) = 0xEA00000000007265;
  *(inited + 176) = UInt8._bridgeToObjectiveC()();
  *(inited + 184) = 0;
  *(inited + 192) = 0x6961506563726F66;
  *(inited + 200) = 0xE900000000000072;
  *(inited + 208) = Bool._bridgeToObjectiveC()();
  *(inited + 216) = 0;
  v4 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  return v4;
}

uint64_t sub_1001D946C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014650;

  return sub_1001D8FA0(v2, v3, v4);
}

uint64_t sub_1001D9514(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 5;
  }

  else
  {
    return (0x104030200uLL >> (8 * a1));
  }
}

void sub_1001D9538(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = v3[2];
  *v10 = v11;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  v13 = v3[7];
  if (v13)
  {
    v14 = type metadata accessor for Transaction();
    __chkstk_darwin(v14);
    *&v20[-48] = v3;
    *&v20[-40] = v13;
    *&v20[-32] = a1;
    *&v20[-24] = a2;
    *&v20[-16] = v6;
    v15 = v13;
    static Transaction.named<A>(_:with:)();

    return;
  }

  if (qword_1016950E0 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177C448);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Missing peripheral to start pairing!", v19, 2u);
  }
}

char *sub_1001D97CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = _swiftEmptyArrayStorage;
  v3 = (a1 + 40);
  do
  {
    v4 = *(v3 - 1);
    v5 = *v3;
    sub_1000BC4D4(&qword_101699368, &unk_1013B34B0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_101385D80;
    *(v6 + 32) = v1 == 1;
    v7 = sub_1000BC4D4(&unk_10169BA40, &unk_1013918E0);
    v26 = v7;
    v27 = sub_1000041A4(&qword_101699370, &unk_10169BA40, &unk_1013918E0, &protocol conformance descriptor for <A> [A]);
    v24 = v6;
    v8 = sub_1000035D0(&v24, v7);
    v9 = *v8;
    v10 = *(*v8 + 16);
    if (v10)
    {
      if (v10 <= 0xE)
      {
        memset(__dst, 0, sizeof(__dst));
        v23 = v10;
        memcpy(__dst, (v9 + 32), v10);
        v13 = *__dst;
        v14 = v21 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v23 << 16)) << 32);
        sub_100017D5C(v4, v5);
        v21 = v14;
      }

      else
      {
        type metadata accessor for __DataStorage();
        swift_allocObject();
        sub_100017D5C(v4, v5);
        v11 = __DataStorage.init(bytes:length:)();
        v12 = v11;
        if (v10 >= 0x7FFFFFFF)
        {
          type metadata accessor for Data.RangeReference();
          v13 = swift_allocObject();
          *(v13 + 16) = 0;
          *(v13 + 24) = v10;
          v14 = v12 | 0x8000000000000000;
        }

        else
        {
          v13 = v10 << 32;
          v14 = v11 | 0x4000000000000000;
        }
      }
    }

    else
    {
      sub_100017D5C(v4, v5);
      v13 = 0;
      v14 = 0xC000000000000000;
    }

    sub_100007BAC(&v24);
    v24 = v13;
    v25 = v14;
    Data.append(_:)();
    v15 = v24;
    v16 = v25;
    sub_100017D5C(v24, v25);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100A5B734(0, *(v2 + 2) + 1, 1, v2);
    }

    v18 = *(v2 + 2);
    v17 = *(v2 + 3);
    if (v18 >= v17 >> 1)
    {
      v2 = sub_100A5B734((v17 > 1), v18 + 1, 1, v2);
    }

    v3 += 2;
    sub_100016590(v4, v5);
    sub_100016590(v24, v25);
    *(v2 + 2) = v18 + 1;
    v19 = &v2[16 * v18];
    *(v19 + 4) = v15;
    *(v19 + 5) = v16;
    --v1;
  }

  while (v1);
  return v2;
}

uint64_t sub_1001D9AA8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_1001D8370(v2, v3);
}

uint64_t sub_1001D9BA4(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, unint64_t a20, uint64_t a21, unint64_t a22, uint64_t a23, unint64_t a24, unint64_t a25, uint64_t a26, unint64_t a27)
{
  v32 = (a27 >> 59) & 6 | (a25 >> 63);
  if (v32 <= 2)
  {
    if (v32)
    {
      if (v32 == 1)
      {
        sub_100016590(result, a2);
        sub_100016590(a3, a4);
        sub_100016590(a5, a6);
        sub_100016590(a7, a8);
        a26 = a9;
        v33 = a10;
      }

      else
      {
        if (v32 != 2)
        {
          return result;
        }

        sub_100016590(result, a2);
        sub_100016590(a3, a4);
        sub_100016590(a5, a6);
        sub_100016590(a7, a8);
        sub_100016590(a9, a10);
        sub_100016590(a11, a12);
        sub_100016590(a13, a14);
        sub_100016590(a15, a16);
        sub_100016590(a17, a18);
        sub_100016590(a19, a20);
        sub_100016590(a21, a22);
        sub_100016590(a23, a24);
        v33 = a27 & 0xCFFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      sub_100016590(result, a2);
      a26 = a3;
      v33 = a4;
    }

LABEL_14:

    return sub_100016590(a26, v33);
  }

  if (v32 == 3)
  {
    v44 = a24;
    v42 = a22;
    v43 = a23;
    v40 = a20;
    v41 = a21;
    v38 = a18;
    v39 = a19;
    v37 = a17;
    v35 = a8;
  }

  else
  {
    v35 = a8;
    if (v32 != 4)
    {
      if (v32 != 5)
      {
        return result;
      }

      sub_100016590(result, a2);
      sub_100016590(a3, a4);
      sub_100016590(a5, a6);
      a26 = a7;
      v33 = v35;
      goto LABEL_14;
    }

    v44 = a24;
    v42 = a22;
    v43 = a23;
    v40 = a20;
    v41 = a21;
    v38 = a18;
    v39 = a19;
    v37 = a17;
  }

  sub_100016590(result, a2);
  sub_100016590(a3, a4);
  sub_100016590(a5, a6);
  sub_100016590(a7, v35);
  sub_100016590(a9, a10);
  sub_100016590(a11, a12);
  sub_100016590(a13, a14);
  sub_100016590(a15, a16);
  sub_100016590(v37, v38);
  sub_100016590(v39, v40);
  sub_100016590(v41, v42);

  return sub_100006654(v43, v44);
}

unint64_t sub_1001D9E94()
{
  result = qword_101699360;
  if (!qword_101699360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699360);
  }

  return result;
}

unint64_t sub_1001D9F10()
{
  result = qword_101699388;
  if (!qword_101699388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699388);
  }

  return result;
}

unint64_t sub_1001D9F64()
{
  result = qword_101699390;
  if (!qword_101699390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699390);
  }

  return result;
}

uint64_t sub_1001DA038(id *a1)
{
  v3 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1009ECE7C(a1, v4, v5, v6);
}

uint64_t sub_1001DA0B4(void **a1)
{
  v3 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100B98024(a1, v1 + v4, v6, v7);
}

uint64_t type metadata accessor for AirPodsLEPairingManager.BeaconCreationResult(uint64_t a1)
{
  result = qword_101699630;
  if (!qword_101699630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001DA1AC(uint64_t a1)
{
  v4 = *(type metadata accessor for MACAddress() - 8);
  v5 = (*(v4 + 80) + 112) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 104);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014650;

  return sub_1001D47B4(a1, v6, v1 + 24, v7, v1 + v5, v9, v10);
}

double sub_1001DA2E4(uint64_t a1)
{
  result = 0.0;
  *a1 = xmmword_10138BC00;
  *(a1 + 16) = xmmword_10138BC00;
  *(a1 + 32) = xmmword_10138BC00;
  *(a1 + 48) = xmmword_10138BC00;
  *(a1 + 64) = xmmword_10138BC00;
  *(a1 + 80) = xmmword_10138BC00;
  *(a1 + 96) = xmmword_10138BC00;
  *(a1 + 112) = xmmword_10138BC00;
  *(a1 + 128) = xmmword_10138BC00;
  *(a1 + 144) = xmmword_10138BC00;
  *(a1 + 160) = xmmword_10138BC00;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 192) = 261888;
  return result;
}

uint64_t sub_1001DA318(uint64_t result)
{
  v1 = *(result + 24) & 0xCFFFFFFFFFFFFFFFLL;
  v2 = *(result + 40) & 0xCFFFFFFFFFFFFFFFLL;
  v3 = *(result + 56) & 0xCFFFFFFFFFFFFFFFLL;
  v4 = *(result + 72) & 0xCFFFFFFFFFFFFFFFLL;
  v5 = *(result + 88) & 0xCFFFFFFFFFFFFFFFLL;
  v6 = *(result + 104) & 0xCFFFFFFFFFFFFFFFLL;
  v7 = *(result + 120) & 0xCFFFFFFFFFFFFFFFLL;
  v8 = *(result + 136) & 0xCFFFFFFFFFFFFFFFLL;
  v9 = *(result + 152) & 0xCFFFFFFFFFFFFFFFLL;
  v10 = *(result + 168) & 0xCFFFFFFFFFFFFFFFLL;
  v11 = *(result + 192) | 0x8000000000000000;
  v12 = *(result + 208) & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
  *(result + 8) &= 0xCFFFFFFFFFFFFFFFLL;
  *(result + 24) = v1;
  *(result + 40) = v2;
  *(result + 56) = v3;
  *(result + 72) = v4;
  *(result + 88) = v5;
  *(result + 104) = v6;
  *(result + 120) = v7;
  *(result + 136) = v8;
  *(result + 152) = v9;
  *(result + 168) = v10;
  *(result + 192) = v11;
  *(result + 208) = v12;
  return result;
}

uint64_t sub_1001DA3BC(uint64_t result)
{
  v1 = *(result + 192);
  v2 = *(result + 24) & 0xCFFFFFFFFFFFFFFFLL;
  v3 = *(result + 40) & 0xCFFFFFFFFFFFFFFFLL;
  v4 = *(result + 56) & 0xCFFFFFFFFFFFFFFFLL;
  v5 = *(result + 72) & 0xCFFFFFFFFFFFFFFFLL;
  v6 = *(result + 88) & 0xCFFFFFFFFFFFFFFFLL;
  v7 = *(result + 104) & 0xCFFFFFFFFFFFFFFFLL;
  v8 = *(result + 120) & 0xCFFFFFFFFFFFFFFFLL;
  v9 = *(result + 136) & 0xCFFFFFFFFFFFFFFFLL;
  v10 = *(result + 152) & 0xCFFFFFFFFFFFFFFFLL;
  v11 = *(result + 168) & 0xCFFFFFFFFFFFFFFFLL;
  v12 = *(result + 208) & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  *(result + 8) &= 0xCFFFFFFFFFFFFFFFLL;
  *(result + 24) = v2;
  *(result + 40) = v3;
  *(result + 56) = v4;
  *(result + 72) = v5;
  *(result + 88) = v6;
  *(result + 104) = v7;
  *(result + 120) = v8;
  *(result + 136) = v9;
  *(result + 152) = v10;
  *(result + 168) = v11;
  *(result + 192) = v1;
  *(result + 208) = v12;
  return result;
}

uint64_t sub_1001DA45C(uint64_t a1)
{
  v1 = (*(a1 + 24) >> 58) & 0xC | (*(a1 + 8) >> 60) & 3 | *(a1 + 47) & 0x30 | (*(a1 + 56) >> 54) & 0xC0 | (*(a1 + 72) >> 52) & 0x300 | (*(a1 + 88) >> 50) & 0xC00 | *(a1 + 110) & 0x3000 | (*(a1 + 120) >> 46) & 0xC000 | (*(a1 + 136) >> 44) & 0x30000 | (*(a1 + 152) >> 42) & 0xC0000 | (*(a1 + 168) >> 40) & 0x300000 | (*(a1 + 192) >> 8 << 22);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001DA538(uint64_t a1)
{
  v3 = *(type metadata accessor for MACAddress() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1001CED84(a1, v4, v5, v6);
}

uint64_t sub_1001DA5AC()
{
  v1 = *(type metadata accessor for MACAddress() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = (v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80)));

  return sub_1001CF5CC(v2, v3, v4, v5);
}

uint64_t sub_1001DA61C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000BC4D4(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_1001DA684(uint64_t a1)
{
  v1 = (*(a1 + 208) >> 59) & 6;
  if (v1 == 6)
  {
    return (*a1 + 6);
  }

  else
  {
    return v1 | (*(a1 + 192) >> 63);
  }
}

uint64_t sub_1001DA7B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1001DA81C()
{
  result = qword_1016993C8;
  if (!qword_1016993C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016993C8);
  }

  return result;
}

double sub_1001DA870(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0x3000000000000000;
  return result;
}