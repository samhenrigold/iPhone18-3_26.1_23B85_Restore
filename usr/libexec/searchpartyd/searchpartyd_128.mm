uint64_t sub_100E22F58()
{
  v1 = v0;
  _StringGuts.grow(_:)(43);
  v17 = v0;
  type metadata accessor for AirPodsPairingManager();
  sub_100E62554(&qword_1016BCE48, v2, type metadata accessor for AirPodsPairingManager, &unk_1013EAC08);
  v3 = CustomStringConvertible.typeDescription.getter();

  v4._countAndFlagsBits = 8250;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
  String.append(_:)(v5);

  v6._object = 0x80000001013722D0;
  v6._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v6);
  if (*(v17 + 72))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v1 + 72))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  v9 = v8;
  String.append(_:)(*&v7);

  v10._countAndFlagsBits = 0x6568706972657020;
  v10._object = 0xED0000203A6C6172;
  String.append(_:)(v10);
  v11 = [*(v1 + 64) description];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);

  return v3;
}

uint64_t sub_100E23114(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v6 = v5;
  v35 = a5;
  v39 = a2;
  v40 = a4;
  v36 = a3;
  v38 = a1;
  v7 = type metadata accessor for UUID();
  __chkstk_darwin(v7 - 8);
  v37 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v12 + 104))(v14, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v11);
  static DispatchQoS.unspecified.getter();
  v41 = _swiftEmptyArrayStorage;
  sub_100E62554(&qword_10169BB60, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v5 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v5 + 88) = &_swiftEmptySetSingleton;
  *(v5 + 96) = 0;
  *(v5 + 104) = 0;
  *(v5 + 112) = 0;
  sub_1000BC4D4(&qword_1016BCE50, &qword_1013EAEB0);
  swift_allocObject();
  *(v5 + 120) = PassthroughSubject.init()();
  *(v5 + 128) = 0;
  *(v5 + 136) = 0;
  *(v5 + 144) = 0;
  *(v5 + 152) = 0xF000000000000000;
  *(v5 + 160) = _swiftEmptyArrayStorage;
  *(v5 + 168) = 0;
  *(v5 + 200) = &type metadata for AirpodsPairingSpec1_0;
  *(v5 + 208) = sub_100E6A25C();
  *(v5 + 216) = 0;
  *(v5 + 224) = 0;
  *(v5 + 232) = 0;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000076D4(v15, qword_10177C418);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "AirPodsPairingManager.init", v18, 2u);
  }

  v19 = v39;
  *(v6 + 32) = v38;
  *(v6 + 40) = v19;
  *(v6 + 48) = v40;
  type metadata accessor for AccessoryPairingValidator();
  v20 = swift_allocObject();
  type metadata accessor for DeviceIdentityUtility(0);
  v21 = swift_allocObject();

  swift_defaultActor_initialize();
  v22 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v23 = type metadata accessor for Date();
  (*(*(v23 - 8) + 56))(v21 + v22, 1, 1, v23);
  *(v21 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v21 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v21 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 9;
  *(v20 + 16) = v21;
  *(v20 + 24) = 0;
  v24 = v36;
  *(v6 + 56) = v20;
  *(v6 + 64) = v24;
  *(v6 + 72) = v35 & 1;
  v25 = *(v6 + 16);
  type metadata accessor for QueueSynchronizer();
  swift_allocObject();
  v26 = v24;
  v27 = v25;
  *(v6 + 24) = QueueSynchronizer.init(queue:)();
  v28 = [*&v26[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject] identifier];
  v29 = v37;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = *(v6 + 56);
  v31 = *(v6 + 16);
  type metadata accessor for AccessoryPairingCoordinator(0);
  swift_allocObject();

  v32 = sub_10110ABC0(v29, v30, v31);

  if (v32)
  {
    *(v6 + 80) = v32;
  }

  else
  {

    sub_1000BB27C(*(v6 + 128), *(v6 + 136));
    sub_100006654(*(v6 + 144), *(v6 + 152));

    sub_100007BAC((v6 + 176));

    type metadata accessor for AirPodsPairingManager();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v6;
}

uint64_t sub_100E23774()
{
  v1 = v0;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C418);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "AirPodsPairingManager.deinit", v5, 2u);
  }

  sub_1000BB27C(*(v1 + 128), *(v1 + 136));
  sub_100006654(*(v1 + 144), *(v1 + 152));

  sub_100007BAC((v1 + 176));

  return v1;
}

uint64_t sub_100E238EC()
{
  sub_100E23774();

  return swift_deallocClassInstance();
}

uint64_t sub_100E23944@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v80 = a5;
  v81 = a4;
  v84 = a3;
  v85 = a6;
  v9 = type metadata accessor for Device();
  v82 = *(v9 - 8);
  v83 = v9;
  v10 = __chkstk_darwin(v9);
  v12 = v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v70 - v13;
  v15 = sub_1000BC4D4(&qword_1016BCE50, &qword_1013EAEB0);
  swift_allocObject();
  v16 = PassthroughSubject.init()();
  a1[15] = v16;

  v79 = a1[3];
  QueueSynchronizer.conditionalSync<A>(_:)();
  if (v86[0])
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_10177C418);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Existing pairing session in progress!", v20, 2u);
    }

    v86[0] = v16;
    sub_1000041A4(&qword_1016BCE58, &qword_1016BCE50, &qword_1013EAEB0, &protocol conformance descriptor for PassthroughSubject<A, B>);
    v21 = Publisher.eraseToAnyPublisher()();
  }

  else
  {
    v74 = v12;
    v76 = v15;
    v77 = v16;
    v78 = v6;
    type metadata accessor for AnalyticsEvent(0);
    v22 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v22 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
    UUID.init()();
    v23 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
    v24 = type metadata accessor for DispatchTime();
    v25 = *(*(v24 - 8) + 56);
    v25(&v22[v23], 1, 1, v24);
    v25(&v22[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v24);
    *(v22 + 15) = 0xD00000000000002CLL;
    *(v22 + 16) = 0x800000010134D0D0;
    a1[29] = v22;

    type metadata accessor for Transaction();
    v26 = swift_allocObject();
    *(v26 + 16) = v22;
    *(v26 + 24) = a2 & 1;
    v75 = v22;

    static Transaction.asyncTask(name:block:)();

    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    v28 = sub_1000076D4(v27, qword_10177C418);
    v29 = v82;
    v30 = v83;
    v31 = *(v82 + 16);
    v70[1] = v82 + 16;
    v70[0] = v31;
    v31(v14, v84, v83);
    v73 = v28;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    v34 = os_log_type_enabled(v32, v33);
    v72 = a2;
    if (v34)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v86[0] = v36;
      *v35 = 136446210;
      sub_100E62554(&unk_1016B7C90, 255, &type metadata accessor for Device, &protocol conformance descriptor for Device);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v30;
      v40 = v39;
      v71 = *(v29 + 8);
      v71(v14, v38);
      v41 = sub_1000136BC(v37, v40, v86);

      *(v35 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v32, v33, "Start pairing AirPods. BluetoothDevice: %{public}s.", v35, 0xCu);
      sub_100007BAC(v36);
    }

    else
    {

      v71 = *(v29 + 8);
      v71(v14, v30);
    }

    v42 = v84;
    v43 = Device.name.getter();
    v45 = v74;
    if (v44)
    {
      v46 = v43;
      v47 = v44;
      v48 = a1[8];
      sub_100A23580();
      __chkstk_darwin(v49);
      v70[-4] = v48;
      v70[-3] = v46;
      v70[-2] = v47;
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    }

    sub_100E342B8(v86);
    v50 = v87;
    sub_10000B3A8(v86, &qword_1016993E0, &qword_101391978);
    if (v50 == 1)
    {
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();
      v53 = os_log_type_enabled(v51, v52);
      v54 = v77;
      if (v53)
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&_mh_execute_header, v51, v52, "Failed to create pairing coordinator!", v55, 2u);
      }

      v86[0] = v54;
      sub_1000041A4(&qword_1016BCE58, &qword_1016BCE50, &qword_1013EAEB0, &protocol conformance descriptor for PassthroughSubject<A, B>);
      v21 = Publisher.eraseToAnyPublisher()();
    }

    else
    {
      v56 = *(a1[10] + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
      v57 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_forcePairSNs;
      swift_beginAccess();
      *(v56 + v57) = v81;

      v58 = sub_100E2CAB4();
      if (v58)
      {
        __chkstk_darwin(v58);
        v70[-2] = a1;
        LOBYTE(v70[-1]) = 1;
        QueueSynchronizer.conditionalSync<A>(_:)();
        v59 = v80;
        sub_100E2DF88(v80, v72 & 1);
        sub_100E2D1D8(v59);
        v88 = v77;
        sub_1000041A4(&qword_1016BCE58, &qword_1016BCE50, &qword_1013EAEB0, &protocol conformance descriptor for PassthroughSubject<A, B>);
      }

      else
      {
        v60 = v83;
        (v70[0])(v45, v42, v83);
        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v88 = v64;
          *v63 = 136446210;
          sub_100E62554(&unk_1016B7C90, 255, &type metadata accessor for Device, &protocol conformance descriptor for Device);
          v65 = dispatch thunk of CustomStringConvertible.description.getter();
          v67 = v66;
          v71(v45, v60);
          v68 = sub_1000136BC(v65, v67, &v88);

          *(v63 + 4) = v68;
          _os_log_impl(&_mh_execute_header, v61, v62, "Failed to determine protocol version for BluetoothDevice: %{public}s.", v63, 0xCu);
          sub_100007BAC(v64);
        }

        else
        {

          v71(v45, v60);
        }

        v88 = v77;
        sub_1000041A4(&qword_1016BCE58, &qword_1016BCE50, &qword_1013EAEB0, &protocol conformance descriptor for PassthroughSubject<A, B>);
      }

      v21 = Publisher.eraseToAnyPublisher()();
    }
  }

  *v85 = v21;
  return result;
}

uint64_t sub_100E243C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_1000BC4D4(&qword_1016BCE50, &qword_1013EAEB0);
  swift_allocObject();
  *(a1 + 120) = PassthroughSubject.init()();

  sub_100E5CA7C(a2, 1, a3, a4);
  sub_1000041A4(&qword_1016BCE58, &qword_1016BCE50, &qword_1013EAEB0, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v10 = Publisher.eraseToAnyPublisher()();

  *a5 = v10;
  return result;
}

uint64_t sub_100E244C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v41 = a1;
  v7 = type metadata accessor for MACAddress();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v39 = v10;
  v40 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v35 - v11;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v4 + 16);
  *v16 = v17;
  (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v16, v13);
  if (v17)
  {
    v37 = a2;
    v38 = a3;
    if (qword_1016950D0 == -1)
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
  v19 = type metadata accessor for Logger();
  sub_1000076D4(v19, qword_10177C418);
  v20 = *(v8 + 16);
  v20(v12, v41, v7);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = v4;
    v42 = v35;
    *v23 = 136446210;
    sub_100E62554(&qword_1016A4210, 255, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v20;
    v27 = v26;
    (*(v8 + 8))(v12, v7);
    v28 = sub_1000136BC(v24, v27, &v42);
    v20 = v25;

    *(v23 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "unpairAirPodsLE with classic MAC address: %{public}s", v23, 0xCu);
    sub_100007BAC(v35);
    v4 = v36;
  }

  else
  {

    (*(v8 + 8))(v12, v7);
  }

  type metadata accessor for Transaction();
  v29 = v40;
  v20(v40, v41, v7);
  v30 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v31 = (v39 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  v33 = v38;
  *(v32 + 16) = v37;
  *(v32 + 24) = v33;
  (*(v8 + 32))(v32 + v30, v29, v7);
  *(v32 + v31) = v4;

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100E24920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = swift_task_alloc();
  v3[6] = v4;
  *v4 = v3;
  v4[1] = sub_100E249B8;

  return daemon.getter();
}

uint64_t sub_100E249B8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 56) = a1;

  v3 = swift_task_alloc();
  *(v2 + 64) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for StandaloneBeaconService();
  v6 = sub_100E62554(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100E62554(&qword_10169F450, 255, type metadata accessor for StandaloneBeaconService, &unk_1013E3258);
  *v3 = v9;
  v3[1] = sub_100E24B9C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100E24B9C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 72) = a1;

  if (v1)
  {

    return _swift_task_switch(sub_100E24D6C, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    *(v3 + 80) = v5;
    *v5 = v4;
    v5[1] = sub_100E24E8C;
    v6 = *(v3 + 40);

    return sub_10132CF38(v6);
  }
}

uint64_t sub_100E24D6C()
{
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C418);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing StandaloneBeaconService!", v4, 2u);
  }

  (*(v0 + 24))();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100E24E8C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_100E2500C;
  }

  else
  {
    v2 = sub_100E24FA0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100E24FA0()
{

  (*(v0 + 24))(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100E2500C()
{
  v15 = v0;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C418);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 88);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    *(v0 + 16) = v5;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000136BC(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unable to remove standalone beacons due to %{public}s.", v6, 0xCu);
    sub_100007BAC(v7);
  }

  else
  {
  }

  (*(v0 + 24))(v11);
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100E25204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for MACAddress();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_10177C418);
  v13 = *(v9 + 16);
  v30 = a1;
  v13(v11, a1, v8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29 = v3;
    v17 = v16;
    v28 = swift_slowAlloc();
    v31 = v28;
    *v17 = 136446210;
    sub_100E62554(&qword_1016A4210, 255, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = a2;
    v20 = a3;
    v22 = v21;
    (*(v9 + 8))(v11, v8);
    v23 = sub_1000136BC(v18, v22, &v31);
    a3 = v20;
    a2 = v19;

    *(v17 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v14, v15, "Unpairing AirPods with %{public}s.", v17, 0xCu);
    sub_100007BAC(v28);

    v4 = v29;
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v24 = type metadata accessor for Transaction();
  __chkstk_darwin(v24);
  v25 = v30;
  *(&v27 - 4) = v4;
  *(&v27 - 3) = v25;
  *(&v27 - 2) = a2;
  *(&v27 - 1) = a3;
  return static Transaction.named<A>(_:with:)();
}

uint64_t sub_100E25518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a4;
  v26 = a5;
  v30 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v30 - 8);
  __chkstk_darwin(v30);
  v28 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DispatchQoS();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MACAddress();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a2 + 16);
  (*(v12 + 16))(v14, a3, v11);
  v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = (v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  (*(v12 + 32))(v17 + v15, v14, v11);
  v18 = (v17 + v16);
  v19 = v26;
  *v18 = v25;
  v18[1] = v19;
  aBlock[4] = sub_100E6A560;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101656DB0;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_100E62554(&qword_1016A30B0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v21 = v28;
  v22 = v30;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v32 + 8))(v21, v22);
  (*(v29 + 8))(v10, v31);
}

uint64_t sub_100E25900(char *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v301 = a5;
  v300 = a4;
  v311 = a3;
  v7 = type metadata accessor for Endianness();
  __chkstk_darwin(v7 - 8);
  v284 = &v252 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v292 = type metadata accessor for StableIdentifier(0);
  v9 = __chkstk_darwin(v292);
  v313 = &v252 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v312 = &v252 - v11;
  v291 = type metadata accessor for SystemInfo.DeviceLockState();
  v273 = *(v291 - 8);
  v12 = __chkstk_darwin(v291);
  v290 = &v252 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v289 = &v252 - v14;
  v15 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v15 - 8);
  v288 = &v252 - v16;
  v316 = type metadata accessor for OwnedBeaconRecord(0);
  v314 = *(v316 - 8);
  v17 = __chkstk_darwin(v316);
  v317 = (&v252 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __chkstk_darwin(v17);
  v267 = &v252 - v20;
  v21 = __chkstk_darwin(v19);
  v265 = &v252 - v22;
  v23 = __chkstk_darwin(v21);
  v263 = &v252 - v24;
  __chkstk_darwin(v23);
  v266 = &v252 - v25;
  v26 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v26 - 8);
  v277 = &v252 - v27;
  v305 = type metadata accessor for MACAddress();
  v304 = *(v305 - 8);
  v28 = __chkstk_darwin(v305);
  v274 = (&v252 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = __chkstk_darwin(v28);
  v294 = (&v252 - v31);
  v32 = __chkstk_darwin(v30);
  v303 = &v252 - v33;
  v279 = v34;
  __chkstk_darwin(v32);
  v276 = (&v252 - v35);
  v315 = type metadata accessor for UUID();
  v310 = *(v315 - 8);
  v36 = __chkstk_darwin(v315);
  v275 = &v252 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v262 = &v252 - v39;
  v40 = __chkstk_darwin(v38);
  v264 = &v252 - v41;
  v42 = __chkstk_darwin(v40);
  v296 = &v252 - v43;
  v44 = __chkstk_darwin(v42);
  v299 = &v252 - v45;
  v46 = __chkstk_darwin(v44);
  v287 = &v252 - v47;
  v48 = __chkstk_darwin(v46);
  v278 = &v252 - v49;
  v50 = __chkstk_darwin(v48);
  v309 = &v252 - v51;
  v285 = v52;
  __chkstk_darwin(v50);
  v306 = &v252 - v53;
  v54 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v54 - 8);
  v56 = &v252 - v55;
  v57 = type metadata accessor for OwnedBeaconGroup(0);
  v58 = *(v57 - 8);
  v59 = __chkstk_darwin(v57);
  v298 = &v252 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __chkstk_darwin(v59);
  v286 = &v252 - v62;
  v63 = __chkstk_darwin(v61);
  v281 = &v252 - v64;
  v295 = v65;
  __chkstk_darwin(v63);
  v67 = &v252 - v66;
  v68 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  __chkstk_darwin(v68 - 8);
  v70 = &v252 - v69;
  v282 = a1;
  Transaction.capture()();
  *&v320 = sub_100E221E0();
  v71 = v311;
  sub_1010F701C(v311, v70);
  sub_10000B3A8(v70, &qword_1016A40D0, &unk_10138BE70);
  sub_100E226B8(v320);
  v302 = *(a2 + 32);
  sub_100AC5D4C(v71, v56);
  v283 = v58;
  if ((*(v58 + 48))(v56, 1, v57) == 1)
  {
    sub_10000B3A8(v56, &unk_1016AF8B0, &unk_1013A0700);
    return sub_100E244C8(v71, v300, v301);
  }

  v293 = a2;
  sub_100E6ADA4(v56, v67, type metadata accessor for OwnedBeaconGroup);
  v73 = v310 + 16;
  v74 = *(v310 + 2);
  *&v272 = *(v57 + 24);
  v75 = v306;
  v76 = v315;
  (v74)(v306, v67 + v272, v315);
  if (qword_1016950D0 != -1)
  {
    goto LABEL_71;
  }

LABEL_4:
  v77 = type metadata accessor for Logger();
  v78 = sub_1000076D4(v77, qword_10177C418);
  v79 = v304;
  v80 = *(v304 + 16);
  v81 = v276;
  v82 = v305;
  v271 = v304 + 16;
  v270 = v80;
  v80(v276, v71, v305);
  v83 = v309;
  (v74)(v309, v75, v76);
  v280 = v78;
  v84 = Logger.logObject.getter();
  v85 = static os_log_type_t.default.getter();
  v86 = os_log_type_enabled(v84, v85);
  v307 = v73;
  v308 = v74;
  v297 = v67;
  if (v86)
  {
    v87 = v79;
    v88 = v82;
    v89 = swift_slowAlloc();
    *&v320 = swift_slowAlloc();
    *v89 = 141558787;
    *(v89 + 4) = 1752392040;
    *(v89 + 12) = 2081;
    sub_100E62554(&qword_1016A4210, 255, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    LODWORD(v268) = v85;
    v90 = dispatch thunk of CustomStringConvertible.description.getter();
    v92 = v91;
    v269 = *(v87 + 8);
    v269(v81, v88);
    v93 = sub_1000136BC(v90, v92, &v320);
    v94 = v310;

    *(v89 + 14) = v93;
    *(v89 + 22) = 2160;
    *(v89 + 24) = 1752392040;
    *(v89 + 32) = 2081;
    sub_100E62554(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v95 = dispatch thunk of CustomStringConvertible.description.getter();
    v97 = v96;
    v309 = *(v94 + 1);
    (v309)(v83, v76);
    v98 = sub_1000136BC(v95, v97, &v320);

    *(v89 + 34) = v98;
    _os_log_impl(&_mh_execute_header, v84, v268, "Unpairing AirPods with MAC %{private,mask.hash}s. GroupId: %{private,mask.hash}s", v89, 0x2Au);
    swift_arrayDestroy();
    v67 = v297;

    v99 = v76;
  }

  else
  {

    v100 = v310;
    v309 = *(v310 + 1);
    (v309)(v83, v76);
    v269 = *(v79 + 8);
    v269(v81, v82);
    v99 = v76;
    v94 = v100;
  }

  sub_100E281D0(v302, &v320);
  v101 = swift_allocObject();
  *(v101 + 16) = 0;
  v102 = (v101 + 16);
  v103 = dispatch_group_create();
  dispatch_group_enter(v103);
  v104 = *(v293 + 56);
  v105 = v67 + v272;
  v106 = v277;
  v308(v277, v105, v99);
  (*(v94 + 7))(v106, 0, 1, v99);
  v107 = v103;
  v108 = v282;

  sub_10093BEA0(v106, &v320, v104, v107, v108, v101);

  v261 = v101;

  sub_100405A18(&v320);
  sub_10000B3A8(v106, &qword_1016980D0, &unk_10138F3B0);
  v260 = v107;
  OS_dispatch_group.wait()();
  type metadata accessor for AnalyticsEvent(0);
  v109 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v109 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v110 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v111 = type metadata accessor for DispatchTime();
  v112 = *(*(v111 - 8) + 56);
  v112(&v109[v110], 1, 1, v111);
  v112(&v109[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v111);
  *(v109 + 15) = 0xD00000000000002ELL;
  *(v109 + 16) = 0x80000001013721A0;
  v113 = type metadata accessor for Transaction();

  static Transaction.asyncTask(name:block:)();
  v282 = v109;

  swift_beginAccess();
  v114 = *v102;
  v115 = v306;
  if (*v102)
  {
    swift_errorRetain();
    swift_errorRetain();
    v116 = Logger.logObject.getter();
    v117 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v319[0] = v119;
      *v118 = 136446210;
      v318 = v114;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v120 = String.init<A>(describing:)();
      v122 = sub_1000136BC(v120, v121, v319);

      *(v118 + 4) = v122;
      _os_log_impl(&_mh_execute_header, v116, v117, "Failed to remove pairing lock due to %{public}s", v118, 0xCu);
      sub_100007BAC(v119);

      v115 = v306;
    }

    v123 = v281;
    sub_100E6A94C(v297, v281, type metadata accessor for OwnedBeaconGroup);
    v124 = (*(v283 + 80) + 32) & ~*(v283 + 80);
    v125 = swift_allocObject();
    *(v125 + 16) = v282;
    *(v125 + 24) = v114;
    sub_100E6ADA4(v123, v125 + v124, type metadata accessor for OwnedBeaconGroup);

    swift_errorRetain();
    static Transaction.asyncTask(name:block:)();
  }

  v259 = v113;
  v126 = v278;
  v127 = v315;
  v308(v278, v115, v315);
  v128 = Logger.logObject.getter();
  v129 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v128, v129))
  {
    v130 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    v319[0] = v131;
    *v130 = 141558275;
    *(v130 + 4) = 1752392040;
    *(v130 + 12) = 2081;
    sub_100E62554(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v132 = dispatch thunk of CustomStringConvertible.description.getter();
    v133 = v127;
    v135 = v134;
    (v309)(v126, v127);
    v136 = sub_1000136BC(v132, v135, v319);

    *(v130 + 14) = v136;
    _os_log_impl(&_mh_execute_header, v128, v129, "Successfully removed pairing lock for %{private,mask.hash}s", v130, 0x16u);
    sub_100007BAC(v131);

    v115 = v306;
  }

  else
  {

    (v309)(v126, v127);
    v133 = v127;
  }

  v137 = v303;
  v138 = v305;
  v139 = v270;
  v270(v303, v311, v305);
  v140 = v286;
  sub_100E6A94C(v297, v286, type metadata accessor for OwnedBeaconGroup);
  v141 = v287;
  v142 = v308;
  v308(v287, v115, v133);
  v139(v294, v137, v138);
  sub_100E6A94C(v140, v298, type metadata accessor for OwnedBeaconGroup);
  v142(v299, v141, v133);
  v143 = v304;
  v144 = (*(v304 + 80) + 16) & ~*(v304 + 80);
  v145 = (v279 + v144 + 7) & 0xFFFFFFFFFFFFFFF8;
  v146 = *(v283 + 80);
  v147 = (v146 + v145 + 8) & ~v146;
  v148 = (v295 + v147 + 7) & 0xFFFFFFFFFFFFFFF8;
  v74 = v310;
  v149 = v310[80];
  v254 = ~v149;
  v150 = (v149 + v148 + 8) & ~v149;
  v257 = v149;
  v268 = v146;
  v151 = (v285 + v150 + 7) & 0xFFFFFFFFFFFFFFF8;
  v73 = swift_allocObject();
  (*(v143 + 32))(&v73[v144], v303, v138);
  *&v73[v145] = v293;
  sub_100E6ADA4(v286, &v73[v147], type metadata accessor for OwnedBeaconGroup);
  *&v73[v148] = v282;
  v152 = *(v74 + 4);
  v256 = v74 + 32;
  v255 = v152;
  v152(&v73[v150], v287, v315);
  v258 = v73;
  v153 = &v73[v151];
  v154 = v301;
  *v153 = v300;
  *(v153 + 1) = v154;
  My = type metadata accessor for Feature.FindMy();
  v319[3] = My;
  v319[4] = sub_100E62554(&qword_1016AF950, 255, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v156 = sub_1000280DC(v319);
  (*(*(My - 8) + 104))(v156, enum case for Feature.FindMy.managedCBPeripheral(_:), My);

  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v319);
  if ((My & 1) == 0)
  {
    goto LABEL_56;
  }

  sub_100519FB0();
  v158 = v157;
  v159 = v157 + 56;
  v160 = 1 << v157[32];
  v161 = -1;
  if (v160 < 64)
  {
    v161 = ~(-1 << v160);
  }

  v67 = v161 & *(v157 + 7);
  v162 = (v160 + 63) >> 6;
  LODWORD(v283) = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
  v279 = (v273 + 104);
  v278 = (v273 + 8);
  v253 = (v314 + 56);
  v303 = v74 + 8;
  v276 = (v314 + 48);

  v287 = v158;

  v75 = 0;
  v273 = 0;
  v76 = &_mh_execute_header;
  v272 = xmmword_101385D80;
  v311 = _swiftEmptyArrayStorage;
  v71 = v317;
  v163 = v296;
  v286 = v162;
  v277 = v159;
LABEL_18:
  v164 = v75;
  if (!v67)
  {
    goto LABEL_20;
  }

  do
  {
    v75 = v164;
LABEL_23:
    v308(v163, *(v287 + 6) + *(v74 + 9) * (__clz(__rbit64(v67)) | (v75 << 6)), v315);
    v165 = static os_log_type_t.info.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v166 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v167 = swift_allocObject();
    *(v167 + 16) = v272;
    v168 = UUID.uuidString.getter();
    v170 = v169;
    *(v167 + 56) = &type metadata for String;
    *(v167 + 64) = sub_100008C00();
    *(v167 + 32) = v168;
    *(v167 + 40) = v170;
    os_log(_:dso:log:_:_:)(v165, &_mh_execute_header, v166, "ownedBeaconRecord(for uuid: %@)", 31, 2, v167);

    v171 = v289;
    static SystemInfo.lockState.getter();
    v172 = v290;
    v173 = v291;
    (*v279)(v290, v283, v291);
    sub_100E62554(&qword_10169F338, 255, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
    LOBYTE(v168) = dispatch thunk of static Equatable.== infix(_:_:)();
    v174 = *v278;
    (*v278)(v172, v173);
    v174(v171, v173);
    if (v168)
    {
      v175 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v175, &_mh_execute_header, v166, "ownedBeaconRecord call failed because in device is in beforeFirstUnlock state", 77, 2, _swiftEmptyArrayStorage);
      v73 = v288;
      v176 = v316;
      (*v253)(v288, 1, 1, v316);
      v177 = v315;
      v178 = v309;
      v71 = v317;
      v163 = v296;
    }

    else
    {
      v179 = sub_100025044();
      __chkstk_darwin(v179);
      v163 = v296;
      *(&v252 - 2) = v296;
      v73 = v288;
      v180 = v273;
      sub_1012BBBD0(sub_100406F84, v179, v288);
      v273 = v180;

      v177 = v315;
      v178 = v309;
      v176 = v316;
      v71 = v317;
    }

    v67 &= v67 - 1;
    v178(v163, v177);
    v181 = (*v276)(v73, 1, v176);
    v74 = v310;
    if (v181 != 1)
    {
      v182 = v265;
      sub_100E6ADA4(v73, v265, type metadata accessor for OwnedBeaconRecord);
      sub_100E6ADA4(v182, v267, type metadata accessor for OwnedBeaconRecord);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v311 = sub_100A5C050(0, v311[2] + 1, 1, v311);
      }

      v159 = v277;
      v76 = &_mh_execute_header;
      v184 = v311[2];
      v183 = v311[3];
      if (v184 >= v183 >> 1)
      {
        v311 = sub_100A5C050((v183 > 1), v184 + 1, 1, v311);
      }

      v185 = v311;
      v311[2] = v184 + 1;
      sub_100E6ADA4(v267, v185 + ((*(v314 + 80) + 32) & ~*(v314 + 80)) + *(v314 + 72) * v184, type metadata accessor for OwnedBeaconRecord);
      v162 = v286;
      goto LABEL_18;
    }

    sub_10000B3A8(v73, &unk_1016A9A20, &qword_10138B280);
    v164 = v75;
    v162 = v286;
    v159 = v277;
    v76 = &_mh_execute_header;
  }

  while (v67);
  while (1)
  {
LABEL_20:
    v75 = v164 + 1;
    if (__OFADD__(v164, 1))
    {
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      swift_once();
      goto LABEL_4;
    }

    if (v75 >= v162)
    {
      break;
    }

    v67 = *&v159[8 * v75];
    ++v164;
    if (v67)
    {
      goto LABEL_23;
    }
  }

  v75 = v311[2];
  v74 = v309;
  if (v75)
  {
    v67 = 0;
    v73 = v311 + ((*(v314 + 80) + 32) & ~*(v314 + 80));
    v76 = (v313 + 8);
    do
    {
      if (v67 >= v311[2])
      {
        goto LABEL_70;
      }

      sub_100E6A94C(&v73[*(v314 + 72) * v67], v71, type metadata accessor for OwnedBeaconRecord);
      v186 = v316;
      v187 = *(v316 + 24);
      v188 = &v71[v187];
      v189 = v312;
      sub_100E6A94C(v188, v312, type metadata accessor for StableIdentifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v191 = v189;
      v192 = v317;
      sub_100E6A9B4(v191, type metadata accessor for StableIdentifier);
      if (EnumCaseMultiPayload != 1)
      {
        sub_100E6A94C(v192 + v187, v313, type metadata accessor for StableIdentifier);
        v193 = swift_getEnumCaseMultiPayload();
        if (v193 == 2)
        {
          sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
        }

        else
        {
          if (v193 != 3)
          {
            sub_100E6A9B4(v313, type metadata accessor for StableIdentifier);
            goto LABEL_39;
          }

          sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
        }

        (v74)(v313, v315);
        v186 = v316;
      }

      v194 = sub_100314604(*(v192 + *(v186 + 64)), *(v192 + *(v186 + 68)));
      if (v195 >> 60 != 15)
      {
        v196 = v194;
        v197 = v195;
        v319[0] = sub_101129A64(&off_10160D1A0);
        sub_100DE9B10(&v318, 8216);
        sub_100DE9B10(&v318, 8220);
        sub_100DE9B10(&v318, 8233);
        if (sub_100313A28(v196, v197) == 76)
        {
          v198 = v319[0];
          sub_100313B54(v196, v197);
          static Endianness.current.getter();
          sub_10012BF24();
          FixedWidthInteger.init(data:ofEndianness:)();
          if (BYTE4(v318))
          {
            v199 = 0;
          }

          else
          {
            v199 = v318;
          }

          v200 = sub_10111F5D4(v199, v198);
          sub_100006654(v196, v197);
          v74 = v309;

          if (v200)
          {

            v229 = v315;
            (v74)(v299, v315);
            sub_100E6A9B4(v298, type metadata accessor for OwnedBeaconGroup);
            v269(v294, v305);
            v230 = v263;
            sub_100E6ADA4(v317, v263, type metadata accessor for OwnedBeaconRecord);
            v231 = v230;
            v309 = v74;
            v232 = v266;
            sub_100E6ADA4(v231, v266, type metadata accessor for OwnedBeaconRecord);
            v233 = v264;
            v234 = v308;
            v308(v264, v232 + *(v316 + 20), v229);
            v235 = v262;
            v234(v262, v233, v229);
            v236 = Logger.logObject.getter();
            v237 = static os_log_type_t.default.getter();
            v238 = os_log_type_enabled(v236, v237);
            v239 = v293;
            if (v238)
            {
              v240 = swift_slowAlloc();
              v241 = swift_slowAlloc();
              v319[0] = v241;
              *v240 = 141558275;
              *(v240 + 4) = 1752392040;
              *(v240 + 12) = 2081;
              sub_100E62554(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v242 = dispatch thunk of CustomStringConvertible.description.getter();
              v243 = v235;
              v245 = v244;
              (v309)(v243, v229);
              v246 = sub_1000136BC(v242, v245, v319);

              *(v240 + 14) = v246;
              _os_log_impl(&_mh_execute_header, v236, v237, "Sending unpair to managed peripheral %{private,mask.hash}s", v240, 0x16u);
              sub_100007BAC(v241);
            }

            else
            {

              (v309)(v235, v229);
            }

            v247 = v297;
            v248 = v275;
            v308(v275, v233, v229);
            v249 = (v257 + 40) & v254;
            v250 = swift_allocObject();
            *(v250 + 2) = v239;
            *(v250 + 3) = sub_100E6A684;
            *(v250 + 4) = v258;
            v255(&v250[v249], v248, v229);

            static Transaction.asyncTask(name:block:)();

            v251 = v309;
            (v309)(v233, v229);
            sub_100E6A9B4(v266, type metadata accessor for OwnedBeaconRecord);
            v251(v306, v229);
            v228 = v247;
            goto LABEL_64;
          }
        }

        else
        {
          sub_100006654(v196, v197);
        }
      }

LABEL_39:
      ++v67;
      v71 = v317;
      sub_100E6A9B4(v317, type metadata accessor for OwnedBeaconRecord);
    }

    while (v75 != v67);
  }

LABEL_56:
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v201 = v268;
  v202 = ~v268;
  sub_100EB3A04(0xD000000000000021, 0x8000000101372220, qword_10177C218);
  v204 = v274;
  if ((v205 & 1) == 0)
  {
    v206 = v203;
    v207 = v305;
    v270(v274, v294, v305);
    v208 = Logger.logObject.getter();
    v209 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v208, v209))
    {
      v210 = swift_slowAlloc();
      v319[0] = swift_slowAlloc();
      *v210 = 136315650;
      *(v210 + 4) = sub_1000136BC(0xD000000000000025, 0x8000000101372250, v319);
      *(v210 + 12) = 2048;
      *(v210 + 14) = v206;
      *(v210 + 22) = 2082;
      sub_100E62554(&qword_1016A4210, 255, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v211 = dispatch thunk of CustomStringConvertible.description.getter();
      v212 = v204;
      v214 = v213;
      v269(v212, v207);
      v215 = sub_1000136BC(v211, v214, v319);

      *(v210 + 24) = v215;
      _os_log_impl(&_mh_execute_header, v208, v209, "%s Artificial delay %ld seconds for address %{public}s.", v210, 0x20u);
      swift_arrayDestroy();

      v201 = v268;
    }

    else
    {

      v269(v204, v207);
    }

    [objc_opt_self() sleepForTimeInterval:v206];
  }

  v216 = v298;
  v217 = sub_100E2B558(v298);
  v219 = v218;
  v220 = v275;
  v221 = v315;
  v308(v275, v299, v315);
  v222 = v281;
  sub_100E6A94C(v216, v281, type metadata accessor for OwnedBeaconGroup);
  v223 = (v257 + 33) & v254;
  v224 = (v285 + v201 + v223) & v202;
  v225 = swift_allocObject();
  *(v225 + 16) = v282;
  *(v225 + 24) = v217;
  *(v225 + 32) = v219 & 1;
  v255((v225 + v223), v220, v221);
  sub_100E6ADA4(v222, v225 + v224, type metadata accessor for OwnedBeaconGroup);

  sub_100B21C10(v217, v219 & 1);
  static Transaction.asyncTask(name:block:)();

  v226 = v294;
  sub_100E244C8(v294, v300, v301);
  sub_1000BB584(v217, v219 & 1);

  v227 = v309;
  (v309)(v299, v221);
  sub_100E6A9B4(v298, type metadata accessor for OwnedBeaconGroup);
  v269(v226, v305);
  v227(v306, v221);
  v228 = v297;
LABEL_64:
  sub_100E6A9B4(v228, type metadata accessor for OwnedBeaconGroup);
}

uint64_t sub_100E281D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v56 = a2;
  v4 = sub_1000BC4D4(&qword_10169F318, &qword_1013A0730);
  __chkstk_darwin(v4 - 8);
  v6 = (&v54 - v5);
  v7 = type metadata accessor for AirPodsUnpairData.DeviceUnpairData(0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v60 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v59 = &v54 - v11;
  v54 = type metadata accessor for OwnedBeaconGroup(0);
  v55 = v2;
  v12 = sub_1003CDA20(*(v2 + *(v54 + 40)));
  v13 = v12;
  v14 = v12[2];
  if (v14)
  {
    v15 = 0;
    v16 = v12 + 4;
    v57 = v8;
    v17 = (v8 + 48);
    v61 = _swiftEmptyArrayStorage;
    v58 = v7;
    while (v15 < v13[2])
    {
      *v62 = *&v16[2 * v15];
      sub_100017D5C(v62[0], v62[1]);
      sub_100E61058(v62, v6);
      sub_100016590(v62[0], v62[1]);
      if ((*v17)(v6, 1, v7) == 1)
      {
        sub_10000B3A8(v6, &qword_10169F318, &qword_1013A0730);
      }

      else
      {
        v18 = v13;
        v19 = v14;
        v20 = v16;
        v21 = a1;
        v22 = v59;
        sub_100E6ADA4(v6, v59, type metadata accessor for AirPodsUnpairData.DeviceUnpairData);
        sub_100E6ADA4(v22, v60, type metadata accessor for AirPodsUnpairData.DeviceUnpairData);
        v23 = v61;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_100A5CB78(0, v23[2] + 1, 1, v23);
        }

        v25 = v23[2];
        v24 = v23[3];
        v61 = v23;
        if (v25 >= v24 >> 1)
        {
          v61 = sub_100A5CB78((v24 > 1), v25 + 1, 1, v61);
        }

        v26 = v60;
        v27 = v61;
        v61[2] = v25 + 1;
        sub_100E6ADA4(v26, v27 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v25, type metadata accessor for AirPodsUnpairData.DeviceUnpairData);
        v7 = v58;
        a1 = v21;
        v16 = v20;
        v14 = v19;
        v13 = v18;
      }

      if (v14 == ++v15)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_14;
  }

  v61 = _swiftEmptyArrayStorage;
LABEL_13:

  if (qword_1016950D0 != -1)
  {
    goto LABEL_20;
  }

LABEL_14:
  v28 = type metadata accessor for Logger();
  sub_1000076D4(v28, qword_10177C418);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v62[0] = v32;
    *v31 = 136315138;
    v33 = Array.description.getter();
    v35 = sub_1000136BC(v33, v34, v62);

    *(v31 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v29, v30, "unpairDevices: %s", v31, 0xCu);
    sub_100007BAC(v32);
  }

  v36 = MobileGestalt_get_current_device();
  if (v36)
  {
    v37 = v36;
    uniqueChipID = MobileGestalt_get_uniqueChipID();

    v39 = MobileGestalt_get_current_device();
    if (v39)
    {
      v40 = v39;
      chipID = MobileGestalt_get_chipID();

      v62[0] = uniqueChipID;
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      v62[0] = chipID;
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      v48 = sub_100EF9784();
      v50 = v49;
      result = MACAddress.udid.getter();
      v52 = v56;
      *v56 = v42;
      v52[1] = v44;
      v52[2] = v45;
      v52[3] = v47;
      v52[4] = v48;
      v52[5] = v50;
      v52[6] = result;
      v52[7] = v53;
      *(v52 + 64) = 0;
      v52[9] = v61;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);

  sub_100016590(v62[0], v62[1]);

  __break(1u);
  return result;
}

void sub_100E286F8(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  Transaction.capture()();
  swift_beginAccess();
  *(a4 + 16) = a1;
  swift_errorRetain();

  dispatch_group_leave(a2);
}

uint64_t sub_100E2876C(uint64_t a1)
{
  *(v1 + 40) = a1;
  sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0);
  *(v1 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_100E2880C, a1, 0);
}

uint64_t sub_100E2880C(uint64_t a1)
{
  v2 = v1[5];
  v3 = v1[6];
  static DispatchTime.now()();
  v4 = type metadata accessor for DispatchTime();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  swift_beginAccess();
  sub_10002311C(v3, v2 + v5, &qword_101696CA8, &qword_10138B5E0);
  swift_endAccess();

  v6 = v1[1];

  return v6();
}

uint64_t sub_100E28904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100E28928, 0, 0);
}

uint64_t sub_100E28928()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = *(v0 + 24);

  return _swift_task_switch(sub_100E289A0, v1, 0);
}

uint64_t sub_100E289A0()
{
  sub_10115BE7C(sub_100E6ABDC);

  type metadata accessor for AnalyticsPublisher();
  v0[6] = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_100E28A94;
  v2 = v0[2];

  return sub_101163F78(v2);
}

uint64_t sub_100E28A94()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_100E28BA4(uint64_t a1, uint64_t a2)
{
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101391790;
  *(inited + 32) = 0x6563637553736177;
  *(inited + 40) = 0xEA00000000007373;
  *(inited + 48) = 0;
  *(inited + 56) = 1;
  *(inited + 64) = 0x6D6F44726F727265;
  *(inited + 72) = 0xEB000000006E6961;
  swift_getErrorValue();
  Error.domain.getter();
  v4 = String._bridgeToObjectiveC()();

  *(inited + 80) = v4;
  *(inited + 88) = 0;
  *(inited + 96) = 0x646F43726F727265;
  *(inited + 104) = 0xE900000000000065;
  swift_getErrorValue();
  Error.code.getter();
  *(inited + 112) = Int._bridgeToObjectiveC()();
  *(inited + 120) = 0;
  strcpy((inited + 128), "numberOfParts");
  *(inited + 142) = -4864;
  result = *(*(a2 + *(type metadata accessor for OwnedBeaconGroup(0) + 40)) + 16);
  if (result > 0xFF)
  {
    __break(1u);
  }

  else
  {
    *(inited + 144) = UInt8._bridgeToObjectiveC()();
    *(inited + 152) = 0;
    v6 = sub_100908768(inited);
    swift_setDeallocating();
    sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
    swift_arrayDestroy();
    return v6;
  }

  return result;
}

uint64_t sub_100E28D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v52 = a6;
  v53 = a7;
  v46 = a5;
  v50 = a4;
  v51 = a2;
  v48 = a3;
  v54 = a1;
  v7 = type metadata accessor for OwnedBeaconGroup(0);
  v47 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v49 = v8;
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v45 = *(v10 - 8);
  v11 = *(v45 + 64);
  __chkstk_darwin(v10);
  v44 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MACAddress();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  sub_100EB3A04(0xD000000000000021, 0x8000000101372220, qword_10177C218);
  if ((v17 & 1) == 0)
  {
    v18 = v16;
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000076D4(v19, qword_10177C418);
    (*(v13 + 16))(v15, v54, v12);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v42 = v9;
      v43 = v10;
      v23 = v22;
      v41 = swift_slowAlloc();
      v55 = v41;
      *v23 = 136315650;
      *(v23 + 4) = sub_1000136BC(0xD000000000000025, 0x8000000101372250, &v55);
      *(v23 + 12) = 2048;
      v24 = v18;
      *(v23 + 14) = v18;
      *(v23 + 22) = 2082;
      sub_100E62554(&qword_1016A4210, 255, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v25 = v21;
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      (*(v13 + 8))(v15, v12);
      v29 = sub_1000136BC(v26, v28, &v55);

      *(v23 + 24) = v29;
      _os_log_impl(&_mh_execute_header, v20, v25, "%s Artificial delay %ld seconds for address %{public}s.", v23, 0x20u);
      swift_arrayDestroy();

      v9 = v42;
      v10 = v43;
    }

    else
    {

      (*(v13 + 8))(v15, v12);
      v24 = v18;
    }

    [objc_opt_self() sleepForTimeInterval:v24];
  }

  v30 = v48;
  v31 = sub_100E2B558(v48);
  v33 = v32;
  v43 = type metadata accessor for Transaction();
  v35 = v44;
  v34 = v45;
  (*(v45 + 16))(v44, v46, v10);
  sub_100E6A94C(v30, v9, type metadata accessor for OwnedBeaconGroup);
  v36 = (*(v34 + 80) + 33) & ~*(v34 + 80);
  v37 = (v11 + *(v47 + 80) + v36) & ~*(v47 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = v50;
  *(v38 + 24) = v31;
  v33 &= 1u;
  *(v38 + 32) = v33;
  (*(v34 + 32))(v38 + v36, v35, v10);
  sub_100E6ADA4(v9, v38 + v37, type metadata accessor for OwnedBeaconGroup);

  sub_100B21C10(v31, v33);
  static Transaction.asyncTask(name:block:)();

  sub_100E244C8(v54, v52, v53);
  return sub_1000BB584(v31, v33);
}

uint64_t sub_100E29318(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 72) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return _swift_task_switch(sub_100E29340, 0, 0);
}

uint64_t sub_100E29340()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  v5 = *(v0 + 32);
  *(v4 + 16) = v3;
  *(v4 + 24) = v1 & 1;
  *(v4 + 32) = v5;

  return _swift_task_switch(sub_100E293D0, v2, 0);
}

uint64_t sub_100E293D0()
{
  sub_10115BE7C(sub_100E6AD94);

  type metadata accessor for AnalyticsPublisher();
  v0[7] = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_100E294C4;
  v2 = v0[2];

  return sub_101163F78(v2);
}

uint64_t sub_100E294C4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_100E295D4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v41 - v13;
  if (a2)
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v43 = a4;
    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_10177C418);
    (*(v9 + 16))(v12, a3, v8);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    sub_1000BB584(a1, 1);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v45[0] = v42;
      *v18 = 141558531;
      *(v18 + 4) = 1752392040;
      *(v18 + 12) = 2081;
      sub_100E62554(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      (*(v9 + 8))(v12, v8);
      v22 = sub_1000136BC(v19, v21, v45);

      *(v18 + 14) = v22;
      *(v18 + 22) = 2082;
      v44 = a1;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v23 = String.init<A>(describing:)();
      v25 = sub_1000136BC(v23, v24, v45);

      *(v18 + 24) = v25;
      _os_log_impl(&_mh_execute_header, v16, v17, "Remove related records failed for %{private,mask.hash}s. Error %{public}s", v18, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }

    sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101391790;
    *(inited + 32) = 0x6563637553736177;
    *(inited + 40) = 0xEA00000000007373;
    *(inited + 48) = 0;
    *(inited + 56) = 1;
    *(inited + 64) = 0x6D6F44726F727265;
    *(inited + 72) = 0xEB000000006E6961;
    swift_getErrorValue();
    Error.domain.getter();
    v37 = String._bridgeToObjectiveC()();

    *(inited + 80) = v37;
    *(inited + 88) = 0;
    *(inited + 96) = 0x646F43726F727265;
    *(inited + 104) = 0xE900000000000065;
    swift_getErrorValue();
    Error.code.getter();
    *(inited + 112) = Int._bridgeToObjectiveC()();
    *(inited + 120) = 0;
    strcpy((inited + 128), "numberOfParts");
    *(inited + 142) = -4864;
    result = *(*(v43 + *(type metadata accessor for OwnedBeaconGroup(0) + 40)) + 16);
    if (result <= 0xFF)
    {
      *(inited + 144) = UInt8._bridgeToObjectiveC()();
      *(inited + 152) = 0;
      v39 = sub_100908768(inited);
      swift_setDeallocating();
      sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
LABEL_16:
      swift_arrayDestroy();
      return v39;
    }

    __break(1u);
  }

  else
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000076D4(v26, qword_10177C418);
    (*(v9 + 16))(v14, a3, v8);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v43 = a4;
      v31 = v30;
      v45[0] = v30;
      *v29 = 141558275;
      *(v29 + 4) = 1752392040;
      *(v29 + 12) = 2081;
      sub_100E62554(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      (*(v9 + 8))(v14, v8);
      v35 = sub_1000136BC(v32, v34, v45);

      *(v29 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v27, v28, "Successfully removed related records for %{private,mask.hash}s", v29, 0x16u);
      sub_100007BAC(v31);
      a4 = v43;
    }

    else
    {

      (*(v9 + 8))(v14, v8);
    }

    sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
    v40 = swift_initStackObject();
    *(v40 + 16) = xmmword_10138BBE0;
    *(v40 + 32) = 0x6563637553736177;
    *(v40 + 40) = 0xEA00000000007373;
    *(v40 + 48) = 1;
    *(v40 + 56) = 1;
    strcpy((v40 + 64), "numberOfParts");
    *(v40 + 78) = -4864;
    result = *(*(a4 + *(type metadata accessor for OwnedBeaconGroup(0) + 40)) + 16);
    if (result <= 0xFF)
    {
      *(v40 + 80) = UInt8._bridgeToObjectiveC()();
      *(v40 + 88) = 0;
      v39 = sub_100908768(v40);
      swift_setDeallocating();
      sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100E29D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a3;
  v4[19] = a4;
  v4[16] = a1;
  v4[17] = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();
  v6 = type metadata accessor for DispatchQoS();
  v4[23] = v6;
  v4[24] = *(v6 - 8);
  v4[25] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v4[26] = v7;
  v8 = *(v7 - 8);
  v4[27] = v8;
  v4[28] = *(v8 + 64);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v9 = swift_task_alloc();
  v4[31] = v9;
  *v9 = v4;
  v9[1] = sub_100E29F10;

  return daemon.getter();
}

uint64_t sub_100E29F10(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 256) = a1;

  v3 = swift_task_alloc();
  *(v2 + 264) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for OwnerCommandService(0);
  v6 = sub_100E62554(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100E62554(&unk_1016B10E0, 255, type metadata accessor for OwnerCommandService, &unk_10140DB10);
  *v3 = v9;
  v3[1] = sub_100E2A0F4;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100E2A0F4(uint64_t a1)
{
  *(*v2 + 272) = a1;

  if (v1)
  {

    v3 = sub_100E2A244;
  }

  else
  {

    v3 = sub_100E2A554;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100E2A244()
{
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C418);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing OwnerCommandService to send unpair!", v4, 2u);
  }

  v14 = v0[25];
  v5 = v0[22];
  v15 = v0[24];
  v16 = v0[23];
  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[17];
  v9 = v0[18];

  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v9;
  v0[6] = sub_100150F2C;
  v0[7] = v10;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100006684;
  v0[5] = &unk_101656EC8;
  v11 = _Block_copy(v0 + 2);

  static DispatchQoS.unspecified.getter();
  v0[14] = _swiftEmptyArrayStorage;
  sub_100E62554(&qword_1016A30B0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v6 + 8))(v5, v7);
  (*(v15 + 8))(v14, v16);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100E2A554()
{
  v1 = v0[34];
  v2 = v0[30];
  v3 = v0[27];
  v4 = v0[26];
  v5 = v0[19];
  v6 = *(v3 + 16);
  v0[35] = v6;
  v0[36] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[37] = v8;
  *(v8 + 16) = v1;
  (*(v3 + 32))(v8 + v7, v2, v4);

  v9 = swift_task_alloc();
  v0[38] = v9;
  *v9 = v0;
  v9[1] = sub_100E2A6D4;

  return retry<A>(times:retryDelay:shouldRetry:block:)(v9, 3, 0, 0, 1, sub_100E2AF18, 0, &unk_1013EAE90);
}

uint64_t sub_100E2A6D4()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_100E2AA58;
  }

  else
  {

    v2 = sub_100E2A7F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100E2A7F0()
{
  v11 = v0[24];
  v1 = v0[22];
  v12 = v0[23];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[17];
  v5 = v0[18];
  v10 = v0[25];
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  v0[12] = sub_10013A884;
  v0[13] = v6;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_100006684;
  v0[11] = &unk_101656F40;
  v7 = _Block_copy(v0 + 8);

  static DispatchQoS.unspecified.getter();
  v0[15] = _swiftEmptyArrayStorage;
  sub_100E62554(&qword_1016A30B0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v7);

  (*(v2 + 8))(v1, v3);
  (*(v11 + 8))(v10, v12);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100E2AA58()
{
  v33 = v0;

  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v1 = v0[35];
  v2 = v0[29];
  v3 = v0[26];
  v4 = v0[19];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177C418);
  v1(v2, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[29];
  v11 = v0[26];
  v10 = v0[27];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v32 = v30;
    *v12 = 141558531;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_100E62554(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_1000136BC(v13, v15, &v32);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v17;
    *v28 = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "RX Unpaired %{private,mask.hash}s failed with error %{public}@", v12, 0x20u);
    sub_10000B3A8(v28, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v30);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v29 = v0[24];
  v18 = v0[22];
  v31 = v0[23];
  v20 = v0[20];
  v19 = v0[21];
  v21 = v0[17];
  v22 = v0[18];
  v27 = v0[25];
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v23 + 24) = v22;
  v0[12] = sub_10013A884;
  v0[13] = v23;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_100006684;
  v0[11] = &unk_101656F40;
  v24 = _Block_copy(v0 + 8);

  static DispatchQoS.unspecified.getter();
  v0[15] = _swiftEmptyArrayStorage;
  sub_100E62554(&qword_1016A30B0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v19 + 8))(v18, v20);
  (*(v29 + 8))(v27, v31);

  v25 = v0[1];

  return v25();
}

uint64_t sub_100E2AF18()
{
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_10177C418);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "RX Unpair failed. Retrying...", v3, 2u);
  }

  return 1;
}

uint64_t sub_100E2AFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = type metadata accessor for UUID();
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();

  return _swift_task_switch(sub_100E2B0B4, 0, 0);
}

uint64_t sub_100E2B0B4()
{
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[7] = sub_1000076D4(v1, qword_10177C418);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Trying RX Unpair", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_100E2B20C;
  v6 = v0[3];

  return sub_10121C86C(v6, 0);
}

uint64_t sub_100E2B20C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_100E2B358, 0, 0);
  }
}

uint64_t sub_100E2B358()
{
  v16 = v0;
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 141558275;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    sub_100E62554(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    (*(v5 + 8))(v4, v6);
    v12 = sub_1000136BC(v9, v11, &v15);

    *(v7 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Successfully sent RX Unpair to %{private,mask.hash}s", v7, 0x16u);
    sub_100007BAC(v8);
  }

  else
  {

    (*(v5 + 8))(v4, v6);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_100E2B558(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for OwnedBeaconGroup(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v31 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v8 - 8);
  v10 = (&v31 - v9);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v2 + 16);
  *v14 = v15;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_5;
  }

  v33 = 0;
  sub_100519FB0();
  v18 = v17;
  __chkstk_darwin(v17);
  *(&v31 - 4) = v2;
  *(&v31 - 3) = &v33;
  *(&v31 - 2) = a1;
  *(&v31 - 1) = v4;
  sub_1005C6534(sub_100E6A304, (&v31 - 6), v18);

  sub_100AC53EC(a1 + *(v5 + 24), v10);
  LODWORD(v18) = (*(v6 + 48))(v10, 1, v5);
  sub_10000B3A8(v10, &unk_1016AF8B0, &unk_1013A0700);
  if (v18 == 1)
  {
    return v33;
  }

  if (qword_1016950D0 != -1)
  {
    goto LABEL_10;
  }

LABEL_5:
  v20 = type metadata accessor for Logger();
  sub_1000076D4(v20, qword_10177C418);
  v21 = v31;
  sub_100E6A94C(a1, v31, type metadata accessor for OwnedBeaconGroup);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v32 = v25;
    *v24 = 141558275;
    *(v24 + 4) = 1752392040;
    *(v24 + 12) = 2081;
    type metadata accessor for UUID();
    sub_100E62554(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    sub_100E6A9B4(v21, type metadata accessor for OwnedBeaconGroup);
    v29 = sub_1000136BC(v26, v28, &v32);

    *(v24 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v22, v23, "Group %{private,mask.hash}s still exists. Need to clean up", v24, 0x16u);
    sub_100007BAC(v25);
  }

  else
  {

    sub_100E6A9B4(v21, type metadata accessor for OwnedBeaconGroup);
  }

  v30 = sub_100B93B5C(a1);

  return v30;
}

uint64_t sub_100E2BA3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v75 = a5;
  v73 = a4;
  v71 = a3;
  v79 = a1;
  v80 = a2;
  v5 = type metadata accessor for UUID();
  v76 = *(v5 - 8);
  v77 = v5;
  __chkstk_darwin(v5);
  v74 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OwnedBeaconGroup(0);
  v69 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v70 = v8;
  v72 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v9 - 8);
  v11 = &v67 - v10;
  v12 = type metadata accessor for OwnedBeaconRecord(0);
  v78 = *(v12 - 8);
  v13 = *(v78 + 64);
  v14 = __chkstk_darwin(v12);
  v67 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v68 = &v67 - v16;
  __chkstk_darwin(v15);
  v82 = &v67 - v17;
  type metadata accessor for AnalyticsEvent(0);
  v18 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v18 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v19 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v20 = type metadata accessor for DispatchTime();
  v21 = *(*(v20 - 8) + 56);
  v21(&v18[v19], 1, 1, v20);
  v21(&v18[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v20);
  v23 = v78;
  v22 = v79;
  *(v18 + 15) = 0xD00000000000002ELL;
  *(v18 + 16) = 0x80000001013721A0;
  v24 = type metadata accessor for Transaction();

  static Transaction.asyncTask(name:block:)();
  v81 = v18;

  sub_100AA33AC(v22, v11);
  v25 = *(v23 + 48);
  v80 = v12;
  if (v25(v11, 1, v12) == 1)
  {
    sub_10000B3A8(v11, &unk_1016A9A20, &qword_10138B280);
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000076D4(v26, qword_10177C418);
    v28 = v76;
    v27 = v77;
    v29 = v74;
    (*(v76 + 16))(v74, v22, v77);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v30, v31))
    {

      return (*(v28 + 8))(v29, v27);
    }

    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v84 = v33;
    *v32 = 141558275;
    *(v32 + 4) = 1752392040;
    *(v32 + 12) = 2081;
    sub_100E62554(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v29;
    v37 = v36;
    (*(v28 + 8))(v35, v27);
    v38 = sub_1000136BC(v34, v37, &v84);

    *(v32 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v30, v31, "Missing beacon record for %{private,mask.hash}s", v32, 0x16u);
    sub_100007BAC(v33);
  }

  v79 = v24;
  v39 = v82;
  sub_100E6ADA4(v11, v82, type metadata accessor for OwnedBeaconRecord);
  v40 = sub_100DDE55C(v39, 1, 0);
  v41 = v40;
  v42 = v71;
  if (!v40)
  {
    v41 = *v71;
    swift_errorRetain();
  }

  *v42 = v41;
  swift_errorRetain();

  v43 = v68;
  sub_100E6A94C(v39, v68, type metadata accessor for OwnedBeaconRecord);
  v44 = v72;
  sub_100E6A94C(v73, v72, type metadata accessor for OwnedBeaconGroup);
  v45 = (*(v23 + 80) + 24) & ~*(v23 + 80);
  v46 = (v13 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = (*(v69 + 80) + v46 + 8) & ~*(v69 + 80);
  v48 = (v70 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  *(v49 + 16) = v81;
  sub_100E6ADA4(v43, v49 + v45, type metadata accessor for OwnedBeaconRecord);
  *(v49 + v46) = v40;
  sub_100E6ADA4(v44, v49 + v47, type metadata accessor for OwnedBeaconGroup);
  *(v49 + v48) = v75;

  swift_errorRetain();
  static Transaction.asyncTask(name:block:)();

  if (!v40)
  {
    sub_100E6A9B4(v82, type metadata accessor for OwnedBeaconRecord);
  }

  v50 = v82;
  swift_errorRetain();
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  sub_1000076D4(v51, qword_10177C418);
  v52 = v67;
  sub_100E6A94C(v50, v67, type metadata accessor for OwnedBeaconRecord);
  swift_errorRetain();
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    *v55 = 141558531;
    *(v55 + 4) = 1752392040;
    *(v55 + 12) = 2081;
    sub_100E62554(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v56 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = v52;
    v58 = v56;
    v60 = v59;
    sub_100E6A9B4(v57, type metadata accessor for OwnedBeaconRecord);
    v61 = sub_1000136BC(v58, v60, &v84);

    *(v55 + 14) = v61;
    *(v55 + 22) = 2082;
    v83 = v40;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v62 = String.init<A>(describing:)();
    v64 = sub_1000136BC(v62, v63, &v84);

    *(v55 + 24) = v64;
    _os_log_impl(&_mh_execute_header, v53, v54, "Failed to remove %{private,mask.hash}s due to %{public}s", v55, 0x20u);
    swift_arrayDestroy();

    v65 = v82;
  }

  else
  {

    sub_100E6A9B4(v52, type metadata accessor for OwnedBeaconRecord);
    v65 = v50;
  }

  return sub_100E6A9B4(v65, type metadata accessor for OwnedBeaconRecord);
}

uint64_t sub_100E2C468(uint64_t a1)
{
  *(v1 + 40) = a1;
  sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0);
  *(v1 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_100E6B334, a1, 0);
}

uint64_t sub_100E2C508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_100E2C530, 0, 0);
}

uint64_t sub_100E2C530()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = *(v0 + 40);
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = v5;

  return _swift_task_switch(sub_100E2C5B8, v3, 0);
}

uint64_t sub_100E2C5B8()
{
  sub_10115BE7C(sub_100E6A534);

  type metadata accessor for AnalyticsPublisher();
  v0[8] = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_100E2C6AC;
  v2 = v0[2];

  return sub_101163F78(v2);
}

uint64_t sub_100E2C6AC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_100E2C7BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100D608FC();
  if (a2)
  {
    sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10138C0D0;
    *(inited + 32) = 0x6563637553736177;
    *(inited + 40) = 0xEA00000000007373;
    *(inited + 48) = 0;
    *(inited + 56) = 1;
    *(inited + 64) = 0x6D6F44726F727265;
    *(inited + 72) = 0xEB000000006E6961;
    swift_getErrorValue();
    swift_errorRetain();
    Error.domain.getter();
    v6 = String._bridgeToObjectiveC()();

    *(inited + 80) = v6;
    *(inited + 88) = 0;
    *(inited + 96) = 0x646F43726F727265;
    *(inited + 104) = 0xE900000000000065;
    swift_getErrorValue();
    Error.code.getter();
    *(inited + 112) = Int._bridgeToObjectiveC()();
    *(inited + 120) = 0;
    *(inited + 128) = 0x626D754E74726170;
    *(inited + 136) = 0xEA00000000007265;
    *(inited + 144) = UInt8._bridgeToObjectiveC()();
    *(inited + 152) = 0;
    strcpy((inited + 160), "numberOfParts");
    *(inited + 174) = -4864;
    result = *(*(a3 + *(type metadata accessor for OwnedBeaconGroup(0) + 40)) + 16);
    if (result <= 0xFF)
    {
      *(inited + 176) = UInt8._bridgeToObjectiveC()();
      *(inited + 184) = 0;
      v8 = sub_100908768(inited);
      swift_setDeallocating();
      sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
      swift_arrayDestroy();

      return v8;
    }

    __break(1u);
  }

  else
  {
    sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_10138B360;
    *(v9 + 32) = 0x6563637553736177;
    *(v9 + 40) = 0xEA00000000007373;
    *(v9 + 48) = 1;
    *(v9 + 56) = 1;
    *(v9 + 64) = 0x626D754E74726170;
    *(v9 + 72) = 0xEA00000000007265;
    *(v9 + 80) = UInt8._bridgeToObjectiveC()();
    *(v9 + 88) = 0;
    strcpy((v9 + 96), "numberOfParts");
    *(v9 + 110) = -4864;
    result = *(*(a3 + *(type metadata accessor for OwnedBeaconGroup(0) + 40)) + 16);
    if (result <= 0xFF)
    {
      *(v9 + 112) = UInt8._bridgeToObjectiveC()();
      *(v9 + 120) = 0;
      v8 = sub_100908768(v9);
      swift_setDeallocating();
      sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
      swift_arrayDestroy();
      return v8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100E2CAB4()
{
  v1 = v0;
  v2 = type metadata accessor for MACAddress();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Endianness();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v1 + 16);
  *v10 = v11;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v13 = Device.vendorID.getter();
  v14 = Device.productID.getter();
  v42 = v13;
  sub_100101824();
  *&v43 = FixedWidthInteger.data.getter();
  *(&v43 + 1) = v15;
  v42 = v14;
  v16 = FixedWidthInteger.data.getter();
  v18 = v17;
  Data.append(_:)();
  sub_100016590(v16, v18);
  v19 = v43;
  if (sub_100DE6630(v43, *(&v43 + 1)))
  {
    v44 = &type metadata for AirpodsPairingSpec1_1;
    v45 = sub_100E6A2B0();
LABEL_4:
    sub_100016590(v19, *(&v19 + 1));
    goto LABEL_11;
  }

  sub_100017D5C(v19, *(&v19 + 1));
  if (sub_100313A28(v19, *(&v19 + 1)) != 76 || (sub_100313B54(v19, *(&v19 + 1)), static Endianness.current.getter(), sub_10012BF24(), FixedWidthInteger.init(data:ofEndianness:)(), (BYTE4(v43) & 1) != 0) || v43 != 8231)
  {
    sub_100016590(v19, *(&v19 + 1));
    sub_100016590(v19, *(&v19 + 1));
    v44 = &type metadata for AirpodsPairingSpec1_0;
    v45 = sub_100E6A25C();
LABEL_11:
    swift_beginAccess();
    sub_100007BAC((v1 + 176));
    sub_10000A748(&v43, v1 + 176);
    swift_endAccess();
    if (qword_1016950D0 == -1)
    {
LABEL_12:
      v22 = type metadata accessor for Logger();
      sub_1000076D4(v22, qword_10177C418);

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v41 = v26;
        *v25 = 136446210;
        swift_beginAccess();
        sub_10001F280(v1 + 176, &v43);
        sub_1000BC4D4(&qword_1016BCE38, &qword_1013EAE20);
        v27 = String.init<A>(describing:)();
        v29 = sub_1000136BC(v27, v28, &v41);

        *(v25 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v23, v24, "Using PairingSpec: %{public}s", v25, 0xCu);
        sub_100007BAC(v26);
      }

      return 1;
    }

LABEL_22:
    swift_once();
    goto LABEL_12;
  }

  My = type metadata accessor for Feature.FindMy();
  v44 = My;
  v45 = sub_100E62554(&qword_1016AF950, 255, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v21 = sub_1000280DC(&v43);
  (*(*(My - 8) + 104))(v21, enum case for Feature.FindMy.magneticCow(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(&v43);
  if (My)
  {
    v44 = &type metadata for AirpodsPairingSpec1_1;
    v45 = sub_100E6A2B0();
    sub_100016590(v19, *(&v19 + 1));
    goto LABEL_4;
  }

  Device.btAddress.getter();
  v31 = MACAddress.description.getter();
  v33 = v32;
  (*(v3 + 8))(v5, v2);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_1000076D4(v34, qword_10177C418);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *&v43 = v38;
    *v37 = 141558275;
    *(v37 + 4) = 1752392040;
    *(v37 + 12) = 2081;
    v39 = sub_1000136BC(v31, v33, &v43);

    *(v37 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v35, v36, "Skipping BA pairing for %{private,mask.hash}s, FeatureFlag is not enabled.", v37, 0x16u);
    sub_100007BAC(v38);

    sub_100016590(v19, *(&v19 + 1));

    sub_100016590(v19, *(&v19 + 1));
  }

  else
  {
    sub_100016590(v19, *(&v19 + 1));

    sub_100016590(v19, *(&v19 + 1));
  }

  return 0;
}

uint64_t sub_100E2D1D8(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v1[2];
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v11 = type metadata accessor for Transaction();
    __chkstk_darwin(v11);
    *&v12[-32] = v1;
    *&v12[-24] = a1;
    *&v12[-16] = v3;
    return static Transaction.named<A>(_:with:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100E2D390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = a3;
  v53 = a1;
  v4 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v4 - 8);
  v41 = &v39 - v5;
  v44 = sub_1000BC4D4(&qword_1016BCD88, &qword_1013EADC8);
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v55 = &v39 - v6;
  v46 = sub_1000BC4D4(&qword_1016BCD90, &qword_1013EADD0);
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v43 = &v39 - v7;
  v49 = sub_1000BC4D4(&qword_1016BCD98, &qword_1013EADD8);
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v47 = &v39 - v8;
  v9 = sub_1000BC4D4(&qword_1016BCDA0, &qword_1013EADE0);
  v51 = *(v9 - 8);
  v52 = v9;
  __chkstk_darwin(v9);
  v50 = &v39 - v10;
  swift_beginAccess();
  sub_10001F280(a2 + 176, v57);
  v11 = v58;
  v12 = v59;
  sub_1000035D0(v57, v58);
  sub_1010A2224();
  v14 = v13;
  v16 = v15;
  v17 = *(v12 + 64);
  v61[3] = swift_getAssociatedTypeWitness();
  v61[4] = swift_getAssociatedConformanceWitness();
  sub_1000280DC(v61);
  v17(v14, v16, v11, v12);
  sub_100016590(v14, v16);
  sub_100007BAC(v57);
  sub_10001F280(v61, v57);
  v60 = 0;
  v18 = sub_100E3465C(v57, v56);
  sub_10000B3A8(v57, &qword_1016BCD38, &qword_1013EAD40);
  v57[0] = v18;
  v54 = a2;
  v62 = *(a2 + 16);
  v19 = v62;
  v20 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v21 = v41;
  v39 = *(*(v20 - 8) + 56);
  v39(v41, 1, 1, v20);
  v40 = v19;
  sub_1000BC4D4(&qword_1016BCD40, &unk_1013EAD48);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  sub_1000041A4(&qword_1016BCDA8, &qword_1016BCD40, &unk_1013EAD48, &protocol conformance descriptor for Future<A, B>);
  sub_1004682F0();
  v22 = v21;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v21, &unk_1016B0FE0, &unk_101391980);

  if (qword_101694EF0 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_1000076D4(v23, qword_1016BC8D0);
  v24 = v40;
  v57[0] = v40;
  v39(v21, 1, 1, v20);
  sub_1000041A4(&qword_1016BCDB0, &qword_1016BCD88, &qword_1013EADC8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v25 = v43;
  v26 = v44;
  v27 = v55;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_10000B3A8(v22, &unk_1016B0FE0, &unk_101391980);

  (*(v42 + 8))(v27, v26);
  sub_1000BC4D4(&qword_1016BCD38, &qword_1013EAD40);
  sub_1000041A4(&qword_1016BCDB8, &qword_1016BCD90, &qword_1013EADD0, &protocol conformance descriptor for Publishers.Timeout<A, B>);
  v28 = v47;
  v29 = v46;
  Publisher.map<A>(_:)();
  (*(v45 + 8))(v25, v29);
  sub_1000BC4D4(&qword_1016BCDC0, &qword_1013EADE8);
  sub_1000041A4(&qword_1016BCDC8, &qword_1016BCD98, &qword_1013EADD8, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_1000041A4(&qword_1016BCDD0, &qword_1016BCDC0, &qword_1013EADE8, &protocol conformance descriptor for Just<A>);
  v30 = v50;
  v31 = v49;
  Publisher.catch<A>(_:)();
  (*(v48 + 8))(v28, v31);
  v32 = swift_allocObject();
  v33 = v54;
  swift_weakInit();
  v34 = swift_allocObject();
  v35 = v53;
  v34[2] = v32;
  v34[3] = v35;
  v34[4] = v56;
  sub_1000041A4(&qword_1016BCDD8, &qword_1016BCDA0, &qword_1013EADE0, &protocol conformance descriptor for Publishers.Catch<A, B>);

  v36 = v52;
  v37 = Publisher<>.sink(receiveValue:)();

  (*(v51 + 8))(v30, v36);
  *(v33 + 104) = v37;

  return sub_100007BAC(v61);
}

uint64_t sub_100E2DC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    Transaction.capture()();
    sub_1000D2A70(a1, &v27, &qword_1016BCD38, &qword_1013EAD40);
    if (v29)
    {
      v25 = v27;
      v26[0] = *v28;
      *(v26 + 9) = *&v28[9];
      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_1000076D4(v8, qword_10177C418);
      sub_100101AA8(&v25, v24);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v23 = v12;
        *v11 = 136315138;
        v13 = sub_1013181BC();
        v15 = v14;
        sub_100101B04(v24);
        v16 = sub_1000136BC(v13, v15, &v23);

        *(v11 + 4) = v16;
        _os_log_impl(&_mh_execute_header, v9, v10, "Failed to request pairing eligibility data. Error %s", v11, 0xCu);
        sub_100007BAC(v12);
      }

      else
      {

        sub_100101B04(v24);
      }

      sub_100E31E64(a4, 1);
      sub_100101B58();
      v21 = swift_allocError();
      sub_100101AA8(&v25, v22);
      sub_100E5FD24(v21);

      sub_100101B04(&v25);
    }

    else
    {
      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_1000076D4(v17, qword_10177C418);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "Requested pairing eligibility data. Waiting for AirPods to respond.", v20, 2u);
      }

      *(v7 + 104) = 0;

      return sub_10000B3A8(&v27, &qword_1016BCD38, &qword_1013EAD40);
    }
  }

  return result;
}

uint64_t sub_100E2DF88(uint64_t a1, char a2)
{
  v5 = *v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = v2[2];
  *v9 = v10;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    v13 = type metadata accessor for Transaction();
    __chkstk_darwin(v13);
    *&v14[-32] = v2;
    *&v14[-24] = a1;
    v14[-16] = a2 & 1;
    *&v14[-8] = v5;
    return static Transaction.named<A>(_:with:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100E2E14C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v91 = a2;
  v78 = a4;
  v87 = a1;
  v5 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v5 - 8);
  v89 = v60 - v6;
  v7 = sub_1000BC4D4(&qword_101699450, &unk_10139DBC0);
  v73 = *(v7 - 8);
  v74 = v7;
  __chkstk_darwin(v7);
  v72 = v60 - v8;
  v9 = sub_1000BC4D4(&qword_101699458, &qword_1013919C0);
  v76 = *(v9 - 8);
  v77 = v9;
  __chkstk_darwin(v9);
  v75 = v60 - v10;
  v11 = sub_1000BC4D4(&qword_1016BCDE0, &qword_1013EADF0);
  v81 = *(v11 - 8);
  v82 = v11;
  __chkstk_darwin(v11);
  v80 = v60 - v12;
  v13 = sub_1000BC4D4(&qword_1016BCDE8, &qword_1013EADF8);
  v83 = *(v13 - 8);
  v84 = v13;
  __chkstk_darwin(v13);
  v79 = v60 - v14;
  v15 = sub_1000BC4D4(&qword_1016BCDF0, &qword_1013EAE00);
  v85 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = v60 - v16;
  v18 = sub_1000BC4D4(&qword_1016BCDF8, &qword_1013EAE08);
  v86 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = v60 - v19;
  v21 = sub_1000BC4D4(&qword_1016BCE00, &unk_1013EAE10);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = v60 - v23;
  sub_1000BC4D4(&qword_101699490, &unk_1013B3BC0);
  v88 = a3;
  v25 = v90;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  if (v25)
  {

    v26 = 0;
    v27 = v91;
  }

  else
  {
    v66 = v17;
    v67 = v15;
    v68 = v20;
    v65 = v18;
    v69 = 0;
    v70 = v24;
    v71 = v22;
    v90 = v21;
    v28 = v91;
    v92 = *(v91 + 16);
    v29 = v92;
    v30 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v31 = *(v30 - 8);
    v32 = *(v31 + 56);
    v33 = v89;
    v63 = v30;
    v61 = v32;
    v60[2] = v31 + 56;
    (v32)(v89, 1, 1);
    v34 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    sub_1000041A4(&qword_101699498, &qword_101699490, &unk_1013B3BC0, &protocol conformance descriptor for AnyPublisher<A, B>);
    v35 = sub_1004682F0();
    v62 = v29;
    v36 = v72;
    v64 = v34;
    v60[1] = v35;
    Publisher.receive<A>(on:options:)();
    sub_10000B3A8(v33, &unk_1016B0FE0, &unk_101391980);

    static Subscribers.Demand.unlimited.getter();
    sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
    sub_1000BC4D4(&qword_101699378, &unk_1013B60B0);
    sub_1000041A4(&qword_1016994A0, &qword_101699450, &unk_10139DBC0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v60[0] = &protocol conformance descriptor for Future<A, B>;
    sub_1000041A4(&qword_1016994A8, &qword_101699378, &unk_1013B60B0, &protocol conformance descriptor for Future<A, B>);
    v37 = v74;
    v38 = v75;
    Publisher.flatMap<A, B>(maxPublishers:_:)();

    (*(v73 + 8))(v36, v37);
    v39 = swift_allocObject();
    *(v39 + 16) = v28;
    v78 &= 1u;
    *(v39 + 24) = v78;

    sub_1000BC4D4(&qword_1016BCD38, &qword_1013EAD40);
    sub_1000041A4(&qword_1016994B0, &qword_101699458, &qword_1013919C0, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
    v40 = v80;
    v41 = v77;
    Publisher.map<A>(_:)();

    (*(v76 + 8))(v38, v41);
    v42 = swift_allocObject();
    v43 = v88;
    *(v42 + 16) = v28;
    *(v42 + 24) = v43;

    static Subscribers.Demand.unlimited.getter();
    sub_1000BC4D4(&qword_1016BCD68, &qword_1013EAD98);
    sub_1000BC4D4(&qword_1016BCD40, &unk_1013EAD48);
    sub_1000041A4(&qword_1016BCE08, &qword_1016BCDE0, &qword_1013EADF0, &protocol conformance descriptor for Publishers.Map<A, B>);
    sub_1000041A4(&qword_1016BCDA8, &qword_1016BCD40, &unk_1013EAD48, v60[0]);
    v44 = v79;
    v45 = v82;
    Publisher.flatMap<A, B>(maxPublishers:_:)();

    (*(v81 + 8))(v40, v45);
    if (qword_101694EE8 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
    sub_1000076D4(v46, qword_1016BC8B8);
    v47 = v62;
    v93 = v62;
    v48 = v89;
    v61(v89, 1, 1, v63);
    sub_1000041A4(&qword_1016BCE10, &qword_1016BCDE8, &qword_1013EADF8, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
    v49 = v66;
    v50 = v84;
    Publisher.timeout<A>(_:scheduler:options:customError:)();
    sub_10000B3A8(v48, &unk_1016B0FE0, &unk_101391980);

    (*(v83 + 8))(v44, v50);
    sub_1000041A4(&qword_1016BCE18, &qword_1016BCDF0, &qword_1013EAE00, &protocol conformance descriptor for Publishers.Timeout<A, B>);
    v51 = v68;
    v52 = v67;
    Publisher.map<A>(_:)();
    (*(v85 + 8))(v49, v52);
    sub_1000BC4D4(&qword_1016BCDC0, &qword_1013EADE8);
    sub_1000041A4(&qword_1016BCE20, &qword_1016BCDF8, &qword_1013EAE08, &protocol conformance descriptor for Publishers.Map<A, B>);
    sub_1000041A4(&qword_1016BCDD0, &qword_1016BCDC0, &qword_1013EADE8, &protocol conformance descriptor for Just<A>);
    v53 = v70;
    v54 = v65;
    Publisher.catch<A>(_:)();
    (*(v86 + 8))(v51, v54);
    v55 = swift_allocObject();
    v27 = v91;
    swift_weakInit();
    v56 = swift_allocObject();
    *(v56 + 16) = v55;
    v57 = v88;
    *(v56 + 24) = v87;
    *(v56 + 32) = v57;
    *(v56 + 40) = v78;
    sub_1000041A4(&qword_1016BCE28, &qword_1016BCE00, &unk_1013EAE10, &protocol conformance descriptor for Publishers.Catch<A, B>);

    v58 = v90;
    v26 = Publisher<>.sink(receiveValue:)();

    (*(v71 + 8))(v53, v58);
  }

  *(v27 + 96) = v26;
}

uint64_t sub_100E2EE18(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, char *a4, char a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Transaction.capture()();
    sub_100E2EEA4(a1, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_100E2EEA4(void (*a1)(char *, uint64_t), char *a2, int a3)
{
  v216 = a3;
  v222 = a2;
  v229 = a1;
  v204 = *v3;
  v4 = type metadata accessor for MultipartAccessoryPairingInfo(0);
  v214 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v219 = &v195 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v218 = &v195 - v7;
  v8 = sub_1000BC4D4(&qword_101696E28, &qword_1013EAD80);
  __chkstk_darwin(v8 - 8);
  v211 = &v195 - v9;
  v10 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  __chkstk_darwin(v10 - 8);
  v12 = &v195 - v11;
  v13 = sub_1000BC4D4(&qword_1016BCD20, &qword_1013EAC90);
  __chkstk_darwin(v13 - 8);
  v208 = &v195 - v14;
  v15 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v16 = __chkstk_darwin(v15 - 8);
  v215 = &v195 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v213 = &v195 - v19;
  __chkstk_darwin(v18);
  v217 = &v195 - v20;
  v225 = type metadata accessor for OwnedBeaconGroup(0);
  v221 = *(v225 - 8);
  v21 = __chkstk_darwin(v225);
  v209 = (&v195 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __chkstk_darwin(v21);
  v205 = &v195 - v24;
  v25 = __chkstk_darwin(v23);
  v207 = &v195 - v26;
  __chkstk_darwin(v25);
  v220 = &v195 - v27;
  v228 = type metadata accessor for MACAddress();
  v28 = *(v228 - 8);
  v29 = __chkstk_darwin(v228);
  v31 = &v195 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v29);
  v198 = &v195 - v33;
  v34 = __chkstk_darwin(v32);
  v36 = &v195 - v35;
  __chkstk_darwin(v34);
  v224 = &v195 - v37;
  v38 = type metadata accessor for DispatchPredicate();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v41 = (&v195 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v230 = v3;
  v42 = v3[2];
  *v41 = v42;
  v43 = *(v39 + 104);
  LODWORD(v227) = enum case for DispatchPredicate.onQueue(_:);
  v226 = v39 + 104;
  v201 = v43;
  v43(v41);
  v200 = v42;
  v44 = _dispatchPreconditionTest(_:)();
  v45 = *(v39 + 8);
  v203 = v38;
  v202 = v39 + 8;
  v45(v41, v38);
  if ((v44 & 1) == 0)
  {
    goto LABEL_107;
  }

  v197 = v36;
  if (qword_1016950D0 != -1)
  {
    goto LABEL_108;
  }

  while (1)
  {
    v46 = type metadata accessor for Logger();
    v47 = sub_1000076D4(v46, qword_10177C418);
    sub_1000D2A70(v229, &v237, &qword_1016BCD38, &qword_1013EAD40);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    v50 = os_log_type_enabled(v48, v49);
    v51 = v28;
    v212 = v4;
    v210 = v12;
    v196 = v31;
    v199 = v45;
    if (v50)
    {
      v52 = swift_slowAlloc();
      v206 = v47;
      v53 = v52;
      v54 = swift_slowAlloc();
      v223 = v28;
      v55 = v54;
      v235[0] = v54;
      *v53 = 136315138;
      sub_1000D2A70(&v237, &v231, &qword_1016BCD38, &qword_1013EAD40);
      sub_1000BC4D4(&qword_1016BCD38, &qword_1013EAD40);
      v56 = String.init<A>(describing:)();
      v58 = v57;
      sub_10000B3A8(&v237, &qword_1016BCD38, &qword_1013EAD40);
      v59 = sub_1000136BC(v56, v58, v235);

      *(v53 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v48, v49, "handlePublisherUpdate %s", v53, 0xCu);
      sub_100007BAC(v55);
      v51 = v223;

      v47 = v206;
    }

    else
    {

      sub_10000B3A8(&v237, &qword_1016BCD38, &qword_1013EAD40);
    }

    v28 = v226;
    sub_1000D2A70(v229, &v237, &qword_1016BCD38, &qword_1013EAD40);
    v60 = v227;
    if ((v239 & 1) == 0)
    {
      sub_10000A748(&v237, &v231);
      v71 = *&v232[8];
      v72 = *&v232[16];
      sub_1000035D0(&v231, *&v232[8]);
      v73 = (*(v72 + 320))(v71, v72);
      if (v73 > 5)
      {
        if (v73 == 8)
        {
          v97 = v51;
          v98 = Logger.logObject.getter();
          v99 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v98, v99))
          {
            v100 = swift_slowAlloc();
            *v100 = 0;
            _os_log_impl(&_mh_execute_header, v98, v99, "Sent pairing complete.", v100, 2u);
          }

          v101 = v230;
          sub_100E5F74C(v216 & 1);
          sub_100E4A560();
          v102 = v101[10];
          v103 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState;
          v104 = *(v102 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState);
          v105 = *(v102 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
          v106 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_forcePairSNs;
          swift_beginAccess();
          if (*(*(v105 + v106) + 16))
          {
            v107 = Logger.logObject.getter();
            v108 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v107, v108))
            {
              v109 = swift_slowAlloc();
              *v109 = 0;
              _os_log_impl(&_mh_execute_header, v107, v108, "Force Re-Pairing next serial number.", v109, 2u);
            }

            v110 = v200;
            *v41 = v200;
            v111 = v60;
            v112 = v203;
            v113 = v201;
            v201(v41, v111, v203);
            v229 = v110;
            LOBYTE(v110) = _dispatchPreconditionTest(_:)();
            v114 = v199;
            result = v199(v41, v112);
            v116 = v204;
            if (v110)
            {
              v117 = type metadata accessor for Transaction();
              __chkstk_darwin(v117);
              v118 = v222;
              *(&v195 - 4) = v230;
              *(&v195 - 3) = v118;
              *(&v195 - 16) = v216 & 1;
              *(&v195 - 1) = v116;
              static Transaction.named<A>(_:with:)();
              *v41 = v229;
              v113(v41, v227, v112);
              v119 = _dispatchPreconditionTest(_:)();
              result = v114(v41, v112);
              if (v119)
              {
                __chkstk_darwin(result);
                v120 = v222;
                *(&v195 - 4) = v230;
                *(&v195 - 3) = v120;
                *(&v195 - 2) = v116;
                static Transaction.named<A>(_:with:)();
                return sub_100007BAC(&v231);
              }
            }

            else
            {
              __break(1u);
            }

            __break(1u);
            return result;
          }

          if (v104 == 10)
          {
            v191 = Logger.logObject.getter();
            v192 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v191, v192))
            {
              v193 = swift_slowAlloc();
              *v193 = 0;
              _os_log_impl(&_mh_execute_header, v191, v192, "Pairing has been completed for all serial numbers over classic. Need LE pairing", v193, 2u);
            }

            sub_100E31E64(v222, 0);
            v194 = v224;
            sub_100A22DF0(v224);
            sub_100E5CA7C(v194, 0, 0, 0xF000000000000000);
            (*(v97 + 8))(v194, v228);
            return sub_100007BAC(&v231);
          }

          if (v104 != 9)
          {
            *(v102 + v103) = 6;
            sub_100E30D34(v222);
            return sub_100007BAC(&v231);
          }

          v87 = Logger.logObject.getter();
          v175 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v87, v175))
          {
            v176 = swift_slowAlloc();
            *v176 = 0;
            _os_log_impl(&_mh_execute_header, v87, v175, "Pairing has been completed for all serial numbers.", v176, 2u);
            goto LABEL_29;
          }

LABEL_30:

          sub_100E31E64(v222, 1);
          return sub_100007BAC(&v231);
        }

        if (v73 == 6)
        {
          v79 = Logger.logObject.getter();
          v80 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v79, v80))
          {
            v81 = swift_slowAlloc();
            *v81 = 0;
            _os_log_impl(&_mh_execute_header, v79, v80, "Sent finalize pairing.", v81, 2u);
          }

          *(v230[10] + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState) = 4;
          return sub_100007BAC(&v231);
        }
      }

      else
      {
        if (!v73)
        {
          v94 = Logger.logObject.getter();
          v95 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v94, v95))
          {
            v96 = swift_slowAlloc();
            *v96 = 0;
            _os_log_impl(&_mh_execute_header, v94, v95, "Requested beacon group data.", v96, 2u);
          }

          *(v230[10] + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState) = 1;
          return sub_100007BAC(&v231);
        }

        if (v73 == 2)
        {
          v74 = Logger.logObject.getter();
          v75 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v74, v75))
          {
            v76 = swift_slowAlloc();
            *v76 = 0;
            _os_log_impl(&_mh_execute_header, v74, v75, "Sent initiate pairing.", v76, 2u);
          }

          *(v230[10] + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState) = 0;
          return sub_100007BAC(&v231);
        }
      }

      v87 = Logger.logObject.getter();
      v88 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v235[0] = v90;
        *v89 = 136315138;
        v91 = sub_10110A934(*(v230[10] + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState));
        v93 = sub_1000136BC(v91, v92, v235);

        *(v89 + 4) = v93;
        _os_log_impl(&_mh_execute_header, v87, v88, "Invalid pairing state %s!", v89, 0xCu);
        sub_100007BAC(v90);

LABEL_29:

        goto LABEL_30;
      }

      goto LABEL_30;
    }

    v231 = v237;
    *v232 = *v238;
    *&v232[9] = *&v238[9];
    sub_100101AA8(&v231, v235);

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v234 = swift_slowAlloc();
      *v63 = 136446466;
      v64 = sub_1013181BC();
      v66 = v65;
      sub_100101B04(v235);
      v67 = sub_1000136BC(v64, v66, &v234);

      *(v63 + 4) = v67;
      *(v63 + 12) = 2082;
      v68 = sub_10110A934(*(v230[10] + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState));
      v70 = sub_1000136BC(v68, v69, &v234);

      *(v63 + 14) = v70;
      _os_log_impl(&_mh_execute_header, v61, v62, "Pairing error %{public}s. Pairing state: %{public}s", v63, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100101B04(v235);
    }

    v77 = v220;
    v78 = sub_100B251CC(&off_10160D1C8);
    sub_100101AA8(&v231, v235);
    if (v236)
    {

      sub_100101B04(v235);
    }

    else
    {
      v234 = v235[0];
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      if (swift_dynamicCast())
      {
        v82 = sub_101120940(v233, v78);

        if (v82)
        {
          v83 = Logger.logObject.getter();
          v84 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v83, v84))
          {
            v85 = swift_slowAlloc();
            *v85 = 0;
            v86 = "Need LE pairing. Not sending pairing completion.";
            goto LABEL_74;
          }

LABEL_75:

          goto LABEL_91;
        }
      }

      else
      {
      }
    }

    v121 = v224;
    sub_100A22DF0(v224);
    v122 = v217;
    sub_100AC5D4C(v121, v217);
    v123 = v122;
    v124 = v51 + 8;
    v229 = *(v51 + 8);
    v229(v121, v228);
    v125 = *(v221 + 48);
    if (v125(v123, 1, v225) == 1)
    {
      v223 = v51;
      sub_10000B3A8(v123, &unk_1016AF8B0, &unk_1013A0700);
    }

    else
    {
      sub_100E6ADA4(v123, v77, type metadata accessor for OwnedBeaconGroup);
      if (sub_10051FA1C())
      {
        v126 = v207;
        sub_100E6A94C(v77, v207, type metadata accessor for OwnedBeaconGroup);
        v127 = Logger.logObject.getter();
        v128 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v127, v128))
        {
          v129 = swift_slowAlloc();
          v206 = v47;
          v223 = v51;
          v130 = v129;
          v131 = swift_slowAlloc();
          v235[0] = v131;
          *v130 = 136446210;
          type metadata accessor for UUID();
          v132 = v126;
          sub_100E62554(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v133 = dispatch thunk of CustomStringConvertible.description.getter();
          v135 = v134;
          sub_100E6A9B4(v132, type metadata accessor for OwnedBeaconGroup);
          v136 = sub_1000136BC(v133, v135, v235);

          *(v130 + 4) = v136;
          _os_log_impl(&_mh_execute_header, v127, v128, "Buds pairing failed but we have beacon group %{public}s to start LE pairing. Not sending pairing completion.", v130, 0xCu);
          sub_100007BAC(v131);

          v51 = v223;
          v47 = v206;
        }

        else
        {

          sub_100E6A9B4(v126, type metadata accessor for OwnedBeaconGroup);
        }

        v160 = v208;
        sub_1005160CC(v47);
        v161 = sub_100520038();
        sub_10112CB48(v161, v160);

        v162 = sub_1000BC4D4(&qword_1016BCD28, &qword_1013EAC98);
        if ((*(*(v162 - 8) + 48))(v160, 1, v162) == 1)
        {
          sub_10000B3A8(v160, &qword_1016BCD20, &qword_1013EAC90);
          v163 = Logger.logObject.getter();
          v164 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v163, v164))
          {
            v165 = swift_slowAlloc();
            *v165 = 0;
            _os_log_impl(&_mh_execute_header, v163, v164, "Missing MAC address to start LE pairing", v165, 2u);
          }
        }

        else
        {
          sub_100016590(*v160, *(v160 + 8));
          v166 = *(v162 + 48);
          v167 = *(v51 + 32);
          v168 = v160 + v166;
          v169 = v198;
          v170 = v228;
          v167(v198, v168, v228);
          v171 = v197;
          v167(v197, v169, v170);
          sub_100E533EC(v171, 0, v216 & 1);
          v229(v171, v170);
        }

        sub_100E6A9B4(v77, type metadata accessor for OwnedBeaconGroup);
        goto LABEL_91;
      }

      v223 = v51;
      sub_100E6A9B4(v77, type metadata accessor for OwnedBeaconGroup);
    }

    v137 = v230[10];
    if (*(v137 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState) < 2u)
    {
      goto LABEL_51;
    }

    v141 = v224;
    sub_100A22DF0(v224);
    v142 = v213;
    sub_100AC5D4C(v141, v213);
    v227 = v124;
    v229(v141, v228);
    if (v125(v142, 1, v225) == 1)
    {
      sub_10000B3A8(v142, &unk_1016AF8B0, &unk_1013A0700);
      v143 = v214;
    }

    else
    {
      v144 = v205;
      sub_100E6ADA4(v142, v205, type metadata accessor for OwnedBeaconGroup);
      v145 = sub_10051FA1C();
      v143 = v214;
      if ((v145 & 1) == 0)
      {
        v172 = Logger.logObject.getter();
        v173 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v172, v173))
        {
          v174 = swift_slowAlloc();
          *v174 = 0;
          _os_log_impl(&_mh_execute_header, v172, v173, "Buds pairing failed. LE pairing not needed. Sending pairing completion.", v174, 2u);
        }

        sub_100E6A9B4(v144, type metadata accessor for OwnedBeaconGroup);
LABEL_51:
        sub_100101B58();
        v138 = swift_allocError();
        sub_100101AA8(&v231, v139);
        sub_100E5FD24(v138);

        v140 = 1;
        v51 = v223;
        goto LABEL_92;
      }

      sub_100E6A9B4(v144, type metadata accessor for OwnedBeaconGroup);
    }

    v146 = Logger.logObject.getter();
    v147 = static os_log_type_t.default.getter();
    v148 = os_log_type_enabled(v146, v147);
    v31 = v212;
    if (v148)
    {
      v149 = swift_slowAlloc();
      *v149 = 0;
      _os_log_impl(&_mh_execute_header, v146, v147, "Buds pairing failed but we have beacon group data to start LE pairing. Not sending pairing completion.", v149, 2u);
    }

    v12 = *(*(v137 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);
    v45 = (v12 + 64);
    v150 = 1 << v12[32];
    v151 = -1;
    if (v150 < 64)
    {
      v151 = ~(-1 << v150);
    }

    v152 = v151 & *(v12 + 8);
    v4 = (v150 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v153 = 0;
    if (v152)
    {
      break;
    }

LABEL_62:
    while (1)
    {
      v41 = (v153 + 1);
      if (__OFADD__(v153, 1))
      {
        break;
      }

      if (v41 >= v4)
      {

        v157 = v211;
        (*(v143 + 56))(v211, 1, 1, v31);
        goto LABEL_69;
      }

      v152 = *(v45 + v41);
      v153 = (v153 + 1);
      if (v152)
      {
        goto LABEL_65;
      }
    }

    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    swift_once();
  }

  while (1)
  {
    v41 = v153;
LABEL_65:
    v154 = v218;
    sub_100E6A94C(*(v12 + 7) + *(v143 + 72) * (__clz(__rbit64(v152)) | (v41 << 6)), v218, type metadata accessor for MultipartAccessoryPairingInfo);
    v155 = v154;
    v156 = v219;
    sub_100E6ADA4(v155, v219, type metadata accessor for MultipartAccessoryPairingInfo);
    if (*(v156 + *(v31 + 7)) == 2)
    {
      break;
    }

    v152 &= v152 - 1;
    sub_100E6A9B4(v156, type metadata accessor for MultipartAccessoryPairingInfo);
    v153 = v41;
    if (!v152)
    {
      goto LABEL_62;
    }
  }

  v157 = v211;
  sub_100E6ADA4(v156, v211, type metadata accessor for MultipartAccessoryPairingInfo);
  (*(v143 + 56))(v157, 0, 1, v31);
LABEL_69:

  v158 = (*(v143 + 48))(v157, 1, v31);
  v51 = v223;
  if (v158 == 1)
  {
    sub_10000B3A8(v157, &qword_101696E28, &qword_1013EAD80);
    v159 = v210;
    (*(v51 + 56))(v210, 1, 1, v228);
    goto LABEL_72;
  }

  v159 = v210;
  sub_1000D2A70(v157 + *(v31 + 6), v210, &qword_1016A40D0, &unk_10138BE70);
  sub_100E6A9B4(v157, type metadata accessor for MultipartAccessoryPairingInfo);
  if ((*(v51 + 48))(v159, 1, v228) == 1)
  {
LABEL_72:
    sub_10000B3A8(v159, &qword_1016A40D0, &unk_10138BE70);
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      v86 = "Missing MAC address to start LE pairing";
LABEL_74:
      _os_log_impl(&_mh_execute_header, v83, v84, v86, v85, 2u);
    }

    goto LABEL_75;
  }

  v177 = v196;
  v178 = v159;
  v179 = v228;
  (*(v51 + 32))(v196, v178, v228);
  sub_100E533EC(v177, 0, v216 & 1);
  v229(v177, v179);
LABEL_91:
  v140 = 0;
LABEL_92:
  v180 = v230;
  sub_100E31E64(v222, v140);
  v181 = v180[10];
  if (*(v181 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState) >= 4u)
  {
    v182 = v224;
    sub_100A22DF0(v224);
    v183 = v215;
    sub_100AC5D4C(v182, v215);
    (*(v51 + 8))(v182, v228);
    if ((*(v221 + 48))(v183, 1, v225) == 1)
    {
      sub_100101B04(&v231);
      return sub_10000B3A8(v183, &unk_1016AF8B0, &unk_1013A0700);
    }

    v184 = v209;
    sub_100E6ADA4(v183, v209, type metadata accessor for OwnedBeaconGroup);
    v185 = (*(v181 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
    v186 = v185[1];
    if (v186 >> 60 != 15)
    {
      v235[0] = *v185;
      v187 = v235[0];
      v235[1] = v186;
      sub_100017D5C(v235[0], v186);
      sub_1000E0A3C();
      if ((DataProtocol.isNull.getter() & 1) == 0)
      {
        v188 = Data.trimmed.getter();
        v190 = v189;
        sub_100E4EA98(v188, v189, v184);
        sub_100016590(v188, v190);
      }

      sub_100006654(v187, v186);
    }

    sub_100E6A9B4(v184, type metadata accessor for OwnedBeaconGroup);
  }

  return sub_100101B04(&v231);
}

uint64_t sub_100E30D34(char *a1)
{
  v2 = v1;
  v40 = a1;
  v38 = *v1;
  v39 = type metadata accessor for MACAddress();
  v3 = *(v39 - 8);
  __chkstk_darwin(v39);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v6 - 8);
  v8 = &v37 - v7;
  v9 = type metadata accessor for OwnedBeaconGroup(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v37 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v2 + 16);
  *v15 = v16;
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v15, v12);
  if (v16)
  {
    if (qword_1016950D0 == -1)
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
  v18 = type metadata accessor for Logger();
  sub_1000076D4(v18, qword_10177C418);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "continuePairing...", v21, 2u);
  }

  *(*(v2 + 80) + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState) = 7;
  sub_100A22DF0(v5);
  sub_100AC5D4C(v5, v8);
  (*(v3 + 8))(v5, v39);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000B3A8(v8, &unk_1016AF8B0, &unk_1013A0700);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Missing beacon group to continue pairing!", v24, 2u);
    }

    return sub_100E31E64(v40, 1);
  }

  else
  {
    v26 = v37;
    sub_100E6ADA4(v8, v37, type metadata accessor for OwnedBeaconGroup);
    swift_beginAccess();
    sub_10001F280(v2 + 176, v41);
    v27 = v42;
    v28 = v43;
    sub_1000035D0(v41, v42);
    v29 = sub_1005208F4();
    v31 = sub_1010A2138(v29, v30);
    v33 = v32;
    v34 = *(v28 + 64);
    v44[3] = swift_getAssociatedTypeWitness();
    v44[4] = swift_getAssociatedConformanceWitness();
    sub_1000280DC(v44);
    v34(v31, v33, v27, v28);
    sub_100016590(v31, v33);
    sub_100007BAC(v41);
    v35 = type metadata accessor for Transaction();
    __chkstk_darwin(v35);
    *(&v37 - 4) = v2;
    *(&v37 - 3) = v44;
    v36 = v38;
    *(&v37 - 2) = v40;
    *(&v37 - 1) = v36;
    static Transaction.named<A>(_:with:)();
    sub_100E6A9B4(v26, type metadata accessor for OwnedBeaconGroup);
    return sub_100007BAC(v44);
  }
}

uint64_t sub_100E31328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v8 - 8);
  v10 = &v35 - v9;
  v39 = sub_1000BC4D4(&qword_1016BCD88, &qword_1013EADC8);
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v52 = &v35 - v11;
  v12 = sub_1000BC4D4(&qword_1016BCD90, &qword_1013EADD0);
  v40 = *(v12 - 8);
  v41 = v12;
  __chkstk_darwin(v12);
  v38 = &v35 - v13;
  v14 = sub_1000BC4D4(&qword_1016BCD98, &qword_1013EADD8);
  v43 = *(v14 - 8);
  v44 = v14;
  __chkstk_darwin(v14);
  v42 = &v35 - v15;
  v16 = sub_1000BC4D4(&qword_1016BCDA0, &qword_1013EADE0);
  v47 = *(v16 - 8);
  v48 = v16;
  __chkstk_darwin(v16);
  v45 = &v35 - v17;
  v51 = a1;
  v46 = Transaction.subscriptionCleaner.getter();
  sub_10001F280(a3, v53);
  v54 = 0;
  v50 = a4;
  v18 = sub_100E3465C(v53, a4);
  sub_10000B3A8(v53, &qword_1016BCD38, &qword_1013EAD40);
  v53[0] = v18;
  v49 = a2;
  v55 = *(a2 + 16);
  v19 = v55;
  v20 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v35 = *(*(v20 - 8) + 56);
  v35(v10, 1, 1, v20);
  v36 = v19;
  sub_1000BC4D4(&qword_1016BCD40, &unk_1013EAD48);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  sub_1000041A4(&qword_1016BCDA8, &qword_1016BCD40, &unk_1013EAD48, &protocol conformance descriptor for Future<A, B>);
  sub_1004682F0();
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v10, &unk_1016B0FE0, &unk_101391980);

  if (qword_101694EF0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_1000076D4(v21, qword_1016BC8D0);
  v22 = v36;
  v53[0] = v36;
  v35(v10, 1, 1, v20);
  sub_1000041A4(&qword_1016BCDB0, &qword_1016BCD88, &qword_1013EADC8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v23 = v38;
  v24 = v39;
  v25 = v52;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_10000B3A8(v10, &unk_1016B0FE0, &unk_101391980);

  (*(v37 + 8))(v25, v24);
  sub_1000BC4D4(&qword_1016BCD38, &qword_1013EAD40);
  sub_1000041A4(&qword_1016BCDB8, &qword_1016BCD90, &qword_1013EADD0, &protocol conformance descriptor for Publishers.Timeout<A, B>);
  v26 = v41;
  v27 = v42;
  Publisher.map<A>(_:)();
  (*(v40 + 8))(v23, v26);
  sub_1000BC4D4(&qword_1016BCDC0, &qword_1013EADE8);
  sub_1000041A4(&qword_1016BCDC8, &qword_1016BCD98, &qword_1013EADD8, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_1000041A4(&qword_1016BCDD0, &qword_1016BCDC0, &qword_1013EADE8, &protocol conformance descriptor for Just<A>);
  v28 = v44;
  v29 = v45;
  Publisher.catch<A>(_:)();
  (*(v43 + 8))(v27, v28);
  v30 = swift_allocObject();
  swift_weakInit();
  v31 = swift_allocObject();
  v31[2] = v30;
  v32 = v50;
  v31[3] = v51;
  v31[4] = v32;
  v31[5] = v46;
  sub_1000041A4(&qword_1016BCDD8, &qword_1016BCDA0, &qword_1013EADE0, &protocol conformance descriptor for Publishers.Catch<A, B>);

  swift_unknownObjectRetain();
  v33 = v48;
  Publisher<>.sink(receiveValue:)();

  (*(v47 + 8))(v29, v33);
  AnyCancellable.store(in:)();
  swift_unknownObjectRelease();
}

uint64_t sub_100E31AE8(uint64_t a1)
{
  sub_100101AA8(a1, v2);
  v2[41] = 1;
  sub_1000BC4D4(&qword_1016BCD38, &qword_1013EAD40);
  return Just.init(_:)();
}

uint64_t sub_100E31B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Transaction.capture()();
    sub_1000D2A70(a1, &v26, &qword_1016BCD38, &qword_1013EAD40);
    if (v28)
    {
      v24 = v26;
      v25[0] = *v27;
      *(v25 + 9) = *&v27[9];
      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_1000076D4(v7, qword_10177C418);
      sub_100101AA8(&v24, v23);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v22 = v11;
        *v10 = 136315138;
        v12 = sub_1013181BC();
        v14 = v13;
        sub_100101B04(v23);
        v15 = sub_1000136BC(v12, v14, &v22);

        *(v10 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v8, v9, "Failed to request pairing eligibility data on pairing continue. Error %s", v10, 0xCu);
        sub_100007BAC(v11);
      }

      else
      {

        sub_100101B04(v23);
      }

      sub_100E31E64(a4, 1);
      sub_100101B58();
      v20 = swift_allocError();
      sub_100101AA8(&v24, v21);
      sub_100E5FD24(v20);

      sub_100101B04(&v24);
    }

    else
    {
      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_1000076D4(v16, qword_10177C418);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Requested pairing eligibility data on pairing continue. Waiting for AirPods to respond.", v19, 2u);
      }

      return sub_10000B3A8(&v26, &qword_1016BCD38, &qword_1013EAD40);
    }
  }

  return result;
}

uint64_t sub_100E31E64(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = v3[2];
  *v9 = v10;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    if (qword_1016950D0 == -1)
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
  sub_1000076D4(v12, qword_10177C418);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Clean up.", v15, 2u);
  }

  v3[12] = 0;

  v3[13] = 0;

  if (a1)
  {
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v23 = 13;
    v24 = 0u;
    v25 = 0u;
    v26 = 11;
    sub_100A5A2B8(&v23);
    v16 = sub_100101B04(&v23);
  }

  __chkstk_darwin(v16);
  *(&v22 - 2) = v3;
  *(&v22 - 8) = 0;
  QueueSynchronizer.conditionalSync<A>(_:)();
  v17 = v3[18];
  v18 = v3[19];
  *(v3 + 9) = xmmword_10138BBF0;
  result = sub_100006654(v17, v18);
  if (a2)
  {
    v23 = v3[8];
    v20 = v23;
    LOBYTE(v24) = 0;

    v21 = v20;
    PassthroughSubject.send(_:)();

    LOBYTE(v23) = 1;

    PassthroughSubject.send(completion:)();
  }

  return result;
}

uint64_t sub_100E3217C()
{
  v3 = *(*(v1 + 80) + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
  v4 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_forcePairSNs;
  swift_beginAccess();
  if (!*(*(v3 + v4) + 16))
  {
    return 0;
  }

  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_forcePair) = 1;
  swift_beginAccess();
  v5 = *(v3 + v4);
  if (!v5[2])
  {
    __break(1u);
    goto LABEL_10;
  }

  v0 = v5[4];
  v2 = v5[5];

  sub_100017D5C(v0, v2);
  sub_100A077EC(0, 1);
  swift_endAccess();

  if (qword_1016950D0 != -1)
  {
LABEL_10:
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177C418);
  sub_100017D5C(v0, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  sub_100016590(v0, v2);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v14[0] = swift_slowAlloc();
    *v9 = 136446723;
    *(v9 + 4) = sub_1000136BC(0xD000000000000011, 0x80000001013720D0, v14);
    *(v9 + 12) = 2160;
    *(v9 + 14) = 1752392040;
    *(v9 + 22) = 2081;
    v10 = Data.hexString.getter();
    v12 = sub_1000136BC(v10, v11, v14);

    *(v9 + 24) = v12;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s %{private,mask.hash}s", v9, 0x20u);
    swift_arrayDestroy();
  }

  return v0;
}

void sub_100E323F4(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v288) = a2;
  v301 = a3;
  v5 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v5 - 8);
  v283 = (&v275 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for MACAddress();
  v292 = *(v7 - 8);
  v293 = v7;
  __chkstk_darwin(v7);
  v290 = &v275 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v10 = __chkstk_darwin(v9 - 8);
  v284 = &v275 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v291 = &v275 - v12;
  v13 = type metadata accessor for OwnedBeaconGroup(0);
  v294 = *(v13 - 8);
  v295 = v13;
  v14 = __chkstk_darwin(v13);
  v298 = &v275 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  *(&v286 + 1) = &v275 - v17;
  __chkstk_darwin(v16);
  v296 = &v275 - v18;
  v19 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v20 = __chkstk_darwin(v19 - 8);
  v287 = &v275 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v285 = &v275 - v23;
  __chkstk_darwin(v22);
  v25 = &v275 - v24;
  v26 = type metadata accessor for AccessoryProductInfo(0);
  v27 = *(v26 - 8);
  v28 = __chkstk_darwin(v26);
  *&v286 = &v275 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v275 - v30;
  v299 = a1;
  v300 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo;
  v32 = *(a1 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
  v33 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
  swift_beginAccess();
  sub_1000D2A70(v32 + v33, v25, &qword_101697268, &qword_101394FE0);
  v34 = *(v27 + 48);
  v289 = v27 + 48;
  if (v34(v25, 1, v26) == 1)
  {
    sub_10000B3A8(v25, &qword_101697268, &qword_101394FE0);
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_1000076D4(v35, qword_10177C418);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    v38 = os_log_type_enabled(v36, v37);
    v39 = v301;
    if (v38)
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v314[0] = v41;
      *v40 = 136446210;
      *(v40 + 4) = sub_1000136BC(0xD000000000000030, 0x8000000101372090, v314);
      _os_log_impl(&_mh_execute_header, v36, v37, "%{public}s Missing productInfo!", v40, 0xCu);
      sub_100007BAC(v41);
    }

    *v39 = 8;
    *(v39 + 8) = 0u;
    *(v39 + 24) = 0u;
LABEL_13:
    *(v39 + 40) = 267;
    return;
  }

  v282 = v3;
  sub_100E6ADA4(v25, v31, type metadata accessor for AccessoryProductInfo);
  v280 = v26;
  v42 = &v31[*(v26 + 96)];
  v43 = *v42;
  v44 = v42[1];

  v45 = sub_100F4F600(v43, v44);
  v47 = v46;

  v297 = v47;
  if (v47 >> 60 == 15)
  {
    v39 = v301;
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_1000076D4(v48, qword_10177C418);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "Unable to generate E1 blob.", v51, 2u);
    }

    sub_100E6A9B4(v31, type metadata accessor for AccessoryProductInfo);
    *v39 = 0u;
    *(v39 + 16) = 0u;
    *(v39 + 32) = 0;
    goto LABEL_13;
  }

  v278 = v34;
  v279 = v31;
  v52 = v301;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  v54 = sub_1000076D4(v53, qword_10177C418);
  v55 = v297;
  sub_100017D5C(v45, v297);
  v281 = v54;
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.debug.getter();
  sub_100006654(v45, v55);
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *&v314[0] = v59;
    *v58 = 136315138;
    v60 = v297;
    sub_100017D5C(v45, v297);
    v61 = Data.hexString.getter();
    v62 = v52;
    v64 = v63;
    sub_100006654(v45, v60);
    v65 = sub_1000136BC(v61, v64, v314);
    v52 = v62;

    *(v58 + 4) = v65;
    _os_log_impl(&_mh_execute_header, v56, v57, "E1: %s", v58, 0xCu);
    sub_100007BAC(v59);
  }

  v67 = v298;
  v66 = v299;
  v68 = v300;
  v69 = (*(v299 + v300) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_findMyNetworkId);
  v70 = v69[1];
  if (v70 >> 60 == 15)
  {
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&_mh_execute_header, v71, v72, "Missing FindMyNetworkId to generate init pairing.", v73, 2u);
    }

    sub_100006654(v45, v297);

    goto LABEL_67;
  }

  v74 = v45;
  v298 = *v69;
  sub_100017D5C(v298, v70);
  v75 = v290;
  sub_100A22DF0(v290);
  v76 = v291;
  sub_100AC5D4C(v75, v291);
  (*(v292 + 8))(v75, v293);
  if ((*(v294 + 48))(v76, 1, v295) == 1)
  {
    v276 = v74;
    sub_10000B3A8(v76, &unk_1016AF8B0, &unk_1013A0700);
    v77 = *(v66 + v68);
    v78 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
    swift_beginAccess();
    v79 = v287;
    sub_1000D2A70(v77 + v78, v287, &qword_101697268, &qword_101394FE0);
    v80 = v280;
    if (v278(v79, 1, v280))
    {
      sub_10000B3A8(v79, &qword_101697268, &qword_101394FE0);
    }

    else
    {
      v101 = v286;
      sub_100E6A94C(v79, v286, type metadata accessor for AccessoryProductInfo);
      sub_10000B3A8(v79, &qword_101697268, &qword_101394FE0);
      v102 = *(v101 + v80[12]);
      sub_100E6A9B4(v101, type metadata accessor for AccessoryProductInfo);
      if (v102 != 2 && (v102 & 1) != 0)
      {
        goto LABEL_36;
      }
    }

    v103 = v300;
    v104 = *(v66 + v300);
    v105 = *(v104 + 112);
    if (v105 >> 60 == 15)
    {
      v106 = 0;
      v107 = 0xF000000000000000;
LABEL_51:
      v130 = *(v66 + v103);
      v131 = v66;
      v132 = *(v130 + 16);
      v133 = *(v130 + 24);
      v134 = v276;
      v135 = v297;
      sub_10002E98C(v276, v297);
      v136 = v298;
      sub_10002E98C(v298, v70);
      sub_100017D5C(v132, v133);
      sub_10002E98C(v106, v107);
      v296 = v106;
      sub_10076B0E4(v132, v133, v134, v135, v136, v70, v106, v107, &v308);

      v137 = Logger.logObject.getter();
      v138 = static os_log_type_t.default.getter();

      v139 = os_log_type_enabled(v137, v138);
      v277 = v70;
      if (v139)
      {
        v140 = swift_slowAlloc();
        v295 = v107;
        v141 = v140;
        v142 = swift_slowAlloc();
        *&v314[0] = v142;
        *v141 = 136315138;
        v143 = *(v131 + v300);
        v144 = *(v143 + 16);
        v145 = *(v143 + 24);
        sub_100017D5C(v144, v145);
        v146 = Data.hexString.getter();
        v148 = v147;
        v149 = v145;
        v52 = v301;
        sub_100016590(v144, v149);
        v150 = sub_1000136BC(v146, v148, v314);

        *(v141 + 4) = v150;
        v70 = v277;
        _os_log_impl(&_mh_execute_header, v137, v138, "sessionNonce: %s", v141, 0xCu);
        sub_100007BAC(v142);

        v107 = v295;
      }

      else
      {

        v52 = v301;
      }

      v151 = v296;
      sub_10002E98C(v296, v107);
      v152 = Logger.logObject.getter();
      v153 = static os_log_type_t.default.getter();
      sub_100006654(v151, v107);
      if (os_log_type_enabled(v152, v153))
      {
        v154 = v276;
        v155 = v107;
        v156 = swift_slowAlloc();
        v157 = swift_slowAlloc();
        *&v314[0] = v157;
        *v156 = 136315138;
        if (v155 >> 60 == 15)
        {
          v158 = 0;
          v159 = 0xE000000000000000;
        }

        else
        {
          v158 = Data.hexString.getter();
          v159 = v167;
        }

        v168 = v151;
        v169 = sub_1000136BC(v158, v159, v314);

        *(v156 + 4) = v169;
        _os_log_impl(&_mh_execute_header, v152, v153, "companionSessionNonce: %s", v156, 0xCu);
        sub_100007BAC(v157);

        sub_100006654(v168, v155);
        sub_100006654(v154, v297);
        sub_100006654(v298, v277);

        v160 = v312;
        v161 = v313;
        v163 = v310;
        v162 = v311;
        v165 = v308;
        v164 = v309;
        v166 = v282;
        v52 = v301;
        goto LABEL_61;
      }

      sub_100006654(v276, v297);
      sub_100006654(v298, v70);

      sub_100006654(v151, v107);
      v160 = v312;
      v161 = v313;
      v163 = v310;
      v162 = v311;
      v165 = v308;
      v164 = v309;
LABEL_58:
      v166 = v282;
LABEL_61:
      v306[0] = v165;
      v306[1] = v164;
      v306[2] = v163;
      v306[3] = v162;
      *&v307 = v160;
      *(&v307 + 1) = v161;
      v314[0] = v165;
      v314[1] = v164;
      v314[2] = v163;
      v314[3] = v162;
      v314[4] = v307;
      swift_beginAccess();
      sub_10001F280(v166 + 176, v302);
      v170 = v303;
      v171 = v304;
      sub_1000035D0(v302, v303);
      v172 = *(v171 + 40);
      v305[3] = swift_getAssociatedTypeWitness();
      v305[4] = swift_getAssociatedConformanceWitness();
      sub_1000280DC(v305);
      v172(v314, v170, v171);
      sub_100A22318(v306);
      sub_100E6A9B4(v279, type metadata accessor for AccessoryProductInfo);
      sub_100007BAC(v302);
      sub_10001F280(v305, v52);
      *(v52 + 41) = 0;
      sub_100007BAC(v305);
      return;
    }

    v108 = *(v104 + 104);
    sub_100017D5C(v108, *(v104 + 112));
    v109 = sub_100DE68D0(v108, v105);
    sub_100006654(v108, v105);
    if (!v109)
    {
      v106 = 0;
      v107 = 0xF000000000000000;
      goto LABEL_50;
    }

LABEL_36:
    type metadata accessor for __DataStorage();
    swift_allocObject();
    v107 = __DataStorage.init(length:)() | 0x4000000000000000;
    v106 = 0x6000000000;
LABEL_50:
    v103 = v300;
    goto LABEL_51;
  }

  v81 = v296;
  sub_100E6ADA4(v76, v296, type metadata accessor for OwnedBeaconGroup);
  if (v288)
  {
    v82 = *(&v286 + 1);
    sub_100E6A94C(v81, *(&v286 + 1), type metadata accessor for OwnedBeaconGroup);
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.default.getter();
    v85 = v70;
    v86 = v74;
    if (os_log_type_enabled(v83, v84))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *&v314[0] = v88;
      *v87 = 136315138;
      v89 = sub_10051F7B0();
      v277 = v85;
      v91 = v90;
      sub_100E6A9B4(v82, type metadata accessor for OwnedBeaconGroup);
      v92 = sub_1000136BC(v89, v91, v314);
      v86 = v74;
      v85 = v277;

      *(v87 + 4) = v92;
      _os_log_impl(&_mh_execute_header, v83, v84, "Retry pairing for %s", v87, 0xCu);
      sub_100007BAC(v88);

      v66 = v299;
    }

    else
    {

      sub_100E6A9B4(v82, type metadata accessor for OwnedBeaconGroup);
    }

    v68 = v300;
  }

  else
  {
    sub_100E6A94C(v81, v67, type metadata accessor for OwnedBeaconGroup);
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.default.getter();
    v85 = v70;
    v86 = v74;
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      *&v314[0] = v96;
      *v95 = 136315138;
      v97 = sub_10051F7B0();
      v277 = v85;
      v99 = v98;
      sub_100E6A9B4(v67, type metadata accessor for OwnedBeaconGroup);
      v100 = sub_1000136BC(v97, v99, v314);
      v86 = v74;
      v85 = v277;

      *(v95 + 4) = v100;
      _os_log_impl(&_mh_execute_header, v93, v94, "Pairing already completed for %s. Will proceed with pairing as usual and let server decide if clean up is needed.", v95, 0xCu);
      sub_100007BAC(v96);

      v68 = v300;
    }

    else
    {

      sub_100E6A9B4(v67, type metadata accessor for OwnedBeaconGroup);
    }

    v66 = v299;
  }

  v52 = v301;
  v110 = (*(v66 + v68) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
  v111 = v110[1];
  if (v111 >> 60 == 15)
  {
LABEL_43:
    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      *v116 = 0;
      _os_log_impl(&_mh_execute_header, v114, v115, "Missing accessorySerialNumber to generate init pairing.", v116, 2u);

      v117 = v298;
      v118 = v85;
LABEL_45:
      sub_100006654(v117, v118);
      sub_100006654(v86, v297);
LABEL_66:
      sub_100E6A9B4(v296, type metadata accessor for OwnedBeaconGroup);
LABEL_67:
      sub_100E6A9B4(v279, type metadata accessor for AccessoryProductInfo);
      *v52 = 0u;
      *(v52 + 16) = 0u;
      *(v52 + 32) = 0;
      *(v52 + 40) = 267;
      return;
    }

    goto LABEL_65;
  }

  *&v314[0] = *v110;
  v112 = *&v314[0];
  *(&v314[0] + 1) = v111;
  sub_100017D5C(*&v314[0], v111);
  v113 = sub_1000E0A3C();
  if (DataProtocol.isNull.getter())
  {
    sub_100006654(v112, v111);
    goto LABEL_43;
  }

  v292 = v111;
  v293 = v112;
  v119 = Data.trimmed.getter();
  v121 = v120;
  v291 = v119;
  v122 = sub_1005183F0(v119, v120);
  if ((v122 & 0x100) != 0)
  {
    v114 = Logger.logObject.getter();
    v173 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v114, v173))
    {
      v174 = swift_slowAlloc();
      *v174 = 0;
      _os_log_impl(&_mh_execute_header, v114, v173, "Missing accessoryPartId!", v174, 2u);

      sub_100016590(v291, v121);

      sub_100006654(v298, v85);
      v118 = v292;
      v117 = v293;
      goto LABEL_45;
    }

    sub_100006654(v293, v292);
    sub_100016590(v291, v121);
LABEL_65:
    sub_100006654(v298, v85);
    sub_100006654(v86, v297);

    goto LABEL_66;
  }

  v290 = v113;
  v123 = v122;
  v124 = *(v66 + v68);
  v125 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
  swift_beginAccess();
  v126 = v124 + v125;
  v127 = v285;
  sub_1000D2A70(v126, v285, &qword_101697268, &qword_101394FE0);
  v128 = v280;
  v129 = v278(v127, 1, v280);
  v288 = v121;
  if (v129)
  {
    sub_10000B3A8(v127, &qword_101697268, &qword_101394FE0);
  }

  else
  {
    v175 = v286;
    sub_100E6A94C(v127, v286, type metadata accessor for AccessoryProductInfo);
    sub_10000B3A8(v127, &qword_101697268, &qword_101394FE0);
    v176 = *(v175 + v128[12]);
    sub_100E6A9B4(v175, type metadata accessor for AccessoryProductInfo);
    if (v176 != 2 && (v176 & 1) != 0)
    {
      goto LABEL_72;
    }
  }

  v177 = *(v299 + v300);
  v178 = *(v177 + 112);
  if (v178 >> 60 != 15)
  {
    v179 = *(v177 + 104);
    sub_100017D5C(v179, *(v177 + 112));
    v180 = sub_100DE68D0(v179, v178);
    sub_100006654(v179, v178);
    if (v180)
    {
LABEL_72:
      v181 = v284;
      sub_100E6A94C(v296, v284, type metadata accessor for OwnedBeaconGroup);
      (*(v294 + 56))(v181, 0, 1, v295);
      v160 = sub_10110D3E0(v181, v123);
      v183 = v182;
      sub_10000B3A8(v181, &unk_1016AF8B0, &unk_1013A0700);
      goto LABEL_74;
    }
  }

  v160 = 0;
  v183 = 0xF000000000000000;
LABEL_74:
  v184 = sub_100E3217C();
  v186 = v300;
  v277 = v85;
  v289 = v183;
  if (v185 >> 60 == 15)
  {
LABEL_80:
    v195 = sub_1005208F4();
    v197 = v196;
    goto LABEL_81;
  }

  v187 = v184;
  v188 = v185;
  *&v314[0] = v184;
  *(&v314[0] + 1) = v185;
  sub_100017D5C(v184, v185);
  if (DataProtocol.isNull.getter())
  {
    sub_100006654(v187, v188);
LABEL_79:
    sub_100006654(v187, v188);
    goto LABEL_80;
  }

  v285 = v160;
  v189 = Data.trimmed.getter();
  v190 = v188;
  v192 = v191;
  v295 = v187;
  v290 = v190;
  sub_100006654(v187, v190);
  sub_100017D5C(v189, v192);
  v193 = sub_10052197C(v189, v192);
  if (v194 >> 60 == 15)
  {
    sub_100016590(v189, v192);
    sub_100016590(v189, v192);
    v186 = v300;
    v160 = v285;
    v188 = v290;
    v187 = v295;
    goto LABEL_79;
  }

  v257 = v193;
  v258 = v194;
  v276 = v86;
  sub_100017D5C(v189, v192);
  sub_10002E98C(v257, v258);
  v259 = Logger.logObject.getter();
  v260 = static os_log_type_t.default.getter();
  sub_100016590(v189, v192);
  sub_100006654(v257, v258);
  if (os_log_type_enabled(v259, v260))
  {
    v261 = swift_slowAlloc();
    v294 = swift_slowAlloc();
    *&v314[0] = v294;
    *v261 = 141558531;
    *(v261 + 4) = 1752392040;
    *(v261 + 12) = 2081;
    sub_100017D5C(v189, v192);
    static String.Encoding.utf8.getter();
    v262 = String.init(data:encoding:)();
    if (!v263)
    {
      v262 = Data.hexString.getter();
    }

    v264 = v262;
    v265 = v263;
    sub_100016590(v189, v192);
    sub_100016590(v189, v192);
    v266 = sub_1000136BC(v264, v265, v314);

    *(v261 + 14) = v266;
    *(v261 + 22) = 2082;
    v267 = Data.hexString.getter();
    v269 = sub_1000136BC(v267, v268, v314);

    *(v261 + 24) = v269;
    _os_log_impl(&_mh_execute_header, v259, v260, "Force pairing %{private,mask.hash}s with\nexisting sessionNonce: %{public}s", v261, 0x20u);
    swift_arrayDestroy();

    sub_100016590(v189, v192);

    v52 = v301;
    v85 = v277;
    v183 = v289;
  }

  else
  {
    sub_100016590(v189, v192);

    sub_100016590(v189, v192);
  }

  v270 = v300;
  v271 = *(v299 + v300);
  v272 = *(v271 + 16);
  v273 = *(v271 + 24);
  *(v271 + 16) = v257;
  *(v271 + 24) = v258;

  v274 = v273;
  v186 = v270;
  sub_100016590(v272, v274);

  v86 = v276;
  v160 = v285;
  v197 = v290;
  v195 = v295;
LABEL_81:
  v198 = *(v299 + v186);
  v199 = *(v198 + 16);
  v200 = *(v198 + 24);
  v201 = v200 >> 62;
  v294 = v199;
  if ((v200 >> 62) > 1)
  {
    if (v201 != 2)
    {
LABEL_158:
      __break(1u);
      goto LABEL_159;
    }

    v204 = v199 + 16;
    v199 = *(v199 + 16);
    v203 = *(v204 + 8);
    v202 = v203 - v199;
    if (!__OFSUB__(v203, v199))
    {
      goto LABEL_90;
    }

    __break(1u);
  }

  else if (!v201)
  {
    v202 = BYTE6(v200);
    goto LABEL_91;
  }

  if (__OFSUB__(HIDWORD(v199), v199))
  {
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

  v202 = HIDWORD(v199) - v199;
LABEL_90:
  sub_100017D5C(v294, v200);
LABEL_91:
  if (v202 != 32)
  {
    goto LABEL_158;
  }

  v205 = v297 >> 62;
  if ((v297 >> 62) <= 1)
  {
    if (!v205)
    {
      v206 = BYTE6(v297);
      goto LABEL_101;
    }

    goto LABEL_99;
  }

  if (v205 != 2)
  {
LABEL_159:
    __break(1u);
    goto LABEL_160;
  }

  v208 = *(v86 + 16);
  v207 = *(v86 + 24);
  v209 = __OFSUB__(v207, v208);
  v206 = v207 - v208;
  if (v209)
  {
    __break(1u);
LABEL_99:
    LODWORD(v206) = HIDWORD(v86) - v86;
    if (__OFSUB__(HIDWORD(v86), v86))
    {
LABEL_154:
      __break(1u);
      goto LABEL_155;
    }

    v206 = v206;
  }

LABEL_101:
  if (v206 != 113)
  {
    goto LABEL_159;
  }

  v210 = v85 >> 62;
  if ((v85 >> 62) <= 1)
  {
    if (!v210)
    {
      v211 = BYTE6(v85);
      goto LABEL_111;
    }

    goto LABEL_109;
  }

  if (v210 != 2)
  {
LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

  v213 = *(v298 + 16);
  v212 = *(v298 + 24);
  v209 = __OFSUB__(v212, v213);
  v211 = v212 - v213;
  if (v209)
  {
    __break(1u);
LABEL_109:
    LODWORD(v211) = HIDWORD(v298) - v298;
    if (__OFSUB__(HIDWORD(v298), v298))
    {
LABEL_155:
      __break(1u);
      goto LABEL_156;
    }

    v211 = v211;
  }

LABEL_111:
  if (v211 != 32)
  {
    goto LABEL_160;
  }

  v284 = v183 >> 60;
  if (v183 >> 60 == 15)
  {
    goto LABEL_124;
  }

  v214 = v183 >> 62;
  if ((v183 >> 62) > 1)
  {
    if (v214 != 2)
    {
      goto LABEL_161;
    }

    v217 = *(v160 + 16);
    v216 = *(v160 + 24);
    v215 = v216 - v217;
    if (!__OFSUB__(v216, v217))
    {
      goto LABEL_122;
    }

    __break(1u);
  }

  else if (!v214)
  {
    v215 = BYTE6(v183);
    goto LABEL_123;
  }

  if (__OFSUB__(HIDWORD(v160), v160))
  {
LABEL_157:
    __break(1u);
    goto LABEL_158;
  }

  v215 = HIDWORD(v160) - v160;
LABEL_122:
  sub_100017D5C(v160, v183);
LABEL_123:
  if (v215 == 96)
  {
LABEL_124:
    *&v314[0] = v195;
    *(&v314[0] + 1) = v197;
    v218 = v197 >> 62;
    if ((v197 >> 62) > 1)
    {
      if (v218 != 2)
      {
        v219 = 0;
        goto LABEL_135;
      }

      v221 = *(v195 + 16);
      v220 = *(v195 + 24);
      v219 = v220 - v221;
      if (!__OFSUB__(v220, v221))
      {
        goto LABEL_133;
      }

      __break(1u);
    }

    else if (!v218)
    {
      v219 = BYTE6(v197);
LABEL_135:
      v287 = v200;
      v209 = __OFSUB__(60, v219);
      v222 = 60 - v219;
      if (!v209)
      {
        sub_10002E98C(v86, v297);
        sub_10002E98C(v298, v85);
        sub_100017D5C(v195, v197);
        *&v306[0] = sub_100845C88(v222);
        *(&v306[0] + 1) = v223;
        sub_100776394(v306, 0);
        v224 = v306[0];
        Data.append(_:)();
        v295 = v195;
        v290 = v197;
        sub_100016590(v195, v197);
        sub_100016590(v224, *(&v224 + 1));
        v286 = v314[0];
        v225 = v299;

        v226 = Logger.logObject.getter();
        v227 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v226, v227))
        {
          v228 = swift_slowAlloc();
          v280 = v228;
          v283 = swift_slowAlloc();
          *&v314[0] = v283;
          *v228 = 136446210;
          v229 = *(v225 + v300);
          v230 = *(v229 + 16);
          v231 = *(v229 + 24);
          sub_100017D5C(v230, v231);
          v232 = Data.hexString.getter();
          v285 = v160;
          v233 = v232;
          v234 = v227;
          v236 = v235;
          v237 = v231;
          v52 = v301;
          sub_100016590(v230, v237);
          v161 = v289;
          v160 = v285;
          v238 = sub_1000136BC(v233, v236, v314);

          v239 = v280;
          *(v280 + 1) = v238;
          v85 = v277;
          _os_log_impl(&_mh_execute_header, v226, v234, "sessionNonce: %{public}s", v239, 0xCu);
          sub_100007BAC(v283);

          v240 = v293;
        }

        else
        {

          v240 = v293;
          v161 = v289;
        }

        sub_10002E98C(v160, v161);
        v241 = Logger.logObject.getter();
        v242 = static os_log_type_t.default.getter();
        sub_100006654(v160, v161);
        v243 = os_log_type_enabled(v241, v242);
        v244 = v295;
        if (v243)
        {
          v276 = v86;
          v245 = swift_slowAlloc();
          v246 = swift_slowAlloc();
          *&v314[0] = v246;
          *v245 = 136446210;
          if (v284 <= 0xE)
          {
            v247 = Data.hexString.getter();
            v248 = v251;
          }

          else
          {
            v247 = 0;
            v248 = 0xE000000000000000;
          }

          v252 = sub_1000136BC(v247, v248, v314);

          *(v245 + 4) = v252;
          _os_log_impl(&_mh_execute_header, v241, v242, "companionSessionNonce: %{public}s", v245, 0xCu);
          sub_100007BAC(v246);

          sub_100016590(v291, v288);

          v253 = v298;
          v254 = v277;
          sub_100006654(v298, v277);
          sub_100006654(v160, v161);
          sub_100016590(v295, v290);
          sub_100006654(v293, v292);
          v255 = v276;
          v256 = v297;
          sub_100006654(v276, v297);
          sub_100E6A9B4(v296, type metadata accessor for OwnedBeaconGroup);
          v162 = v286;
          *&v163 = v253;
          *(&v163 + 1) = v254;
          *&v164 = v255;
          *(&v164 + 1) = v256;
        }

        else
        {
          sub_100006654(v240, v292);
          sub_100016590(v244, v290);
          sub_100016590(v291, v288);
          v249 = v298;
          sub_100006654(v298, v85);
          v250 = v297;
          sub_100006654(v86, v297);
          sub_100006654(v160, v161);

          sub_100E6A9B4(v296, type metadata accessor for OwnedBeaconGroup);
          v162 = v286;
          *&v163 = v249;
          *(&v163 + 1) = v85;
          *&v164 = v86;
          *(&v164 + 1) = v250;
        }

        *&v165 = v294;
        *(&v165 + 1) = v287;
        goto LABEL_58;
      }

      __break(1u);
      goto LABEL_153;
    }

    if (__OFSUB__(HIDWORD(v195), v195))
    {
LABEL_156:
      __break(1u);
      goto LABEL_157;
    }

    v219 = HIDWORD(v195) - v195;
LABEL_133:
    sub_100017D5C(v195, v197);
    goto LABEL_135;
  }

LABEL_161:
  __break(1u);
}

void sub_100E342B8(uint64_t a1@<X8>)
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
    if (qword_1016950D0 == -1)
    {
LABEL_4:
      v12 = type metadata accessor for Logger();
      sub_1000076D4(v12, qword_10177C418);
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
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000076D4(v18, qword_10177C418);
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

  v27 = *(v2 + 80);
  v28 = (*(v27 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_findMyNetworkId);
  v29 = *v28;
  v30 = v28[1];
  *v28 = v16;
  v28[1] = v17;

  sub_100006654(v29, v30);

  *a1 = v27;
  *(a1 + 41) = 0;
}

uint64_t sub_100E3465C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v2 + 16);
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_5;
  }

  sub_1000D2A70(a1, &v30, &qword_1016BCD38, &qword_1013EAD40);
  if (v32)
  {
    v28 = v30;
    v29[0] = *v31;
    *(v29 + 9) = *&v31[9];
    sub_100101AA8(&v28, &v26);
    v11 = swift_allocObject();
    v12 = v27[0];
    v11[1] = v26;
    v11[2] = v12;
    *(v11 + 41) = *(v27 + 9);
    sub_1000BC4D4(&qword_1016BCD40, &unk_1013EAD48);
    swift_allocObject();
    v13 = Future.init(_:)();
    sub_100101B04(&v28);
    return v13;
  }

  sub_10000A748(&v30, &v28);
  if (qword_1016950D0 != -1)
  {
    goto LABEL_11;
  }

LABEL_5:
  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177C418);
  sub_10001F280(&v28, &v26);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25 = v18;
    *v17 = 136446210;
    sub_10001F280(&v26, v24);
    sub_1000BC4D4(&qword_1016BCD68, &qword_1013EAD98);
    v19 = String.init<A>(describing:)();
    v21 = v20;
    sub_100007BAC(&v26);
    v22 = sub_1000136BC(v19, v21, &v25);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "Sending %{public}s", v17, 0xCu);
    sub_100007BAC(v18);
  }

  else
  {

    sub_100007BAC(&v26);
  }

  v13 = sub_100E50C0C(&v28, a2);
  sub_100007BAC(&v28);
  return v13;
}

uint64_t sub_100E472A0(uint64_t a1)
{
  sub_1001011C0(a1, &v2);
  sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
  return String.init<A>(describing:)();
}

void sub_100E472E4(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v6 = type metadata accessor for BluetoothCommunicationCoordinator.Error(0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v34[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v34[-1] - v10;
  v12 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  __chkstk_darwin(v12 - 8);
  v14 = &v34[-1] - v13;
  v15 = sub_1000BC4D4(&qword_10169E748, &unk_10139DAB0);
  __chkstk_darwin(v15);
  v17 = &v34[-1] - v16;
  sub_1000D2A70(a1, &v34[-1] - v16, &qword_10169E748, &unk_10139DAB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100E6ADA4(v17, v11, type metadata accessor for BluetoothCommunicationCoordinator.Error);
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000076D4(v18, qword_10177C418);
    sub_100E6A94C(v11, v9, type metadata accessor for BluetoothCommunicationCoordinator.Error);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v34[0] = v22;
      *v21 = 136446210;
      v23 = sub_10118F894();
      v25 = v24;
      sub_100E6A9B4(v9, type metadata accessor for BluetoothCommunicationCoordinator.Error);
      v26 = sub_1000136BC(v23, v25, v34);

      *(v21 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to validate accessory due to %{public}s", v21, 0xCu);
      sub_100007BAC(v22);
    }

    else
    {

      sub_100E6A9B4(v9, type metadata accessor for BluetoothCommunicationCoordinator.Error);
    }

    sub_100E6A9B4(v11, type metadata accessor for BluetoothCommunicationCoordinator.Error);
  }

  else
  {
    v27 = *v17;
    v28 = *(*(a3 + 80) + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
    if (*(*v17 + 16))
    {
      v29 = type metadata accessor for AccessoryProductInfo(0);
      v30 = *(v29 - 8);
      sub_100E6A94C(v27 + ((*(v30 + 80) + 32) & ~*(v30 + 80)), v14, type metadata accessor for AccessoryProductInfo);

      (*(v30 + 56))(v14, 0, 1, v29);
    }

    else
    {

      v31 = type metadata accessor for AccessoryProductInfo(0);
      (*(*(v31 - 8) + 56))(v14, 1, 1, v31);
    }

    v32 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
    swift_beginAccess();
    sub_10002311C(v14, v28 + v32, &qword_101697268, &qword_101394FE0);
    swift_endAccess();
  }

  dispatch_group_leave(a2);
}

uint64_t sub_100E47778(uint64_t a1)
{
  if (*(a1 + *(type metadata accessor for AccessoryProductInfo(0) + 96) + 8) >> 60 == 15)
  {
    return 0;
  }

  else
  {
    return Data.hexString.getter();
  }
}

uint64_t sub_100E477CC(uint64_t a1)
{
  if (*(a1 + *(type metadata accessor for AccessoryProductInfo(0) + 100) + 8) >> 60 == 15)
  {
    return 0;
  }

  else
  {
    return Data.hexString.getter();
  }
}

uint64_t sub_100E47820(uint64_t a1)
{
  v1 = *(*(a1 + 80) + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_100017D5C(v2, v3);
  v4 = Data.hexString.getter();
  sub_100016590(v2, v3);
  return v4;
}

uint64_t sub_100E47890(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_100017D5C(a1, a2);
  sub_100017D5C(a3, a4);
  return String.init<A>(describing:)();
}

void *sub_100E478E4()
{
  v23 = _swiftEmptyDictionarySingleton;
  *v22 = *(v0 + 16);
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
  sub_100E211D4(v6, &v23);

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
      v22[0] = v12;
      *v11 = 136315138;

      sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
      sub_100101BAC();
      v13 = Dictionary.description.getter();
      v15 = v14;

      v16 = sub_1000136BC(v13, v15, v22);

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
    sub_100E62554(&qword_101696E20, 255, &type metadata accessor for BinaryEncodingError, &protocol conformance descriptor for BinaryEncodingError);
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, enum case for BinaryEncodingError.encodingError(_:), v19);
    swift_willThrow();
  }

  return v7;
}

void *sub_100E47C9C()
{
  v2 = v0;
  v3 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v88 = *(v3 - 8);
  v4 = __chkstk_darwin(v3 - 8);
  v99 = v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v87 = v81 - v6;
  v7 = sub_1000BC4D4(&qword_1016BCD78, &qword_1013EADB0);
  v8 = __chkstk_darwin(v7 - 8);
  v94 = (v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v93 = (v81 - v10);
  v11 = type metadata accessor for MultipartAccessoryPairingInfo(0);
  v91 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v97 = v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v92 = v81 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = v81 - v17;
  __chkstk_darwin(v16);
  v20 = v81 - v19;
  v21 = *(v0 + 40);
  v98[0] = *(v0 + 32);
  v98[1] = v21;
  sub_1000E0A3C();
  if ((DataProtocol.isNull.getter() & 1) == 0)
  {
    v33 = Data.trimmed.getter();
    v35 = v34;
    v36 = *(v2 + 160);
    v96 = v1;
    v37 = *(v11 + 24);
    v38 = type metadata accessor for MACAddress();
    (*(*(v38 - 8) + 56))(&v20[v37], 1, 1, v38);
    LODWORD(v95) = v36;
    *v20 = v36;
    v20[1] = 0;
    v20[*(v11 + 28)] = 1;
    sub_100E6ADA4(v20, v18, type metadata accessor for MultipartAccessoryPairingInfo);
    sub_100017D5C(v33, v35);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v98[0] = _swiftEmptyDictionarySingleton;
    sub_100FFA7D4(v18, v33, v35, isUniquelyReferenced_nonNull_native);
    sub_100016590(v33, v35);
    v40 = v98[0];
    v41 = v96;
    v42 = sub_100E478E4();
    if (v41)
    {

      return sub_100016590(v33, v35);
    }

    v81[1] = 0;
    v82 = v33;
    v83 = v35;
    v90 = v11;
    v43 = 0;
    v86 = v42;
    v44 = v42[8];
    v84 = v42 + 8;
    v45 = 1 << *(v42 + 32);
    v46 = -1;
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    v47 = v46 & v44;
    v48 = (v45 + 63) >> 6;
    v89 = v95 == 0;
    v85 = v48;
    while (1)
    {
      v49 = v94;
      v96 = v40;
      if (!v47)
      {
        if (v48 <= v43 + 1)
        {
          v51 = v43 + 1;
        }

        else
        {
          v51 = v48;
        }

        v2 = v51 - 1;
        while (1)
        {
          v50 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
            break;
          }

          if (v50 >= v48)
          {
            v80 = sub_1000BC4D4(&qword_1016BCD80, &qword_1013EADB8);
            (*(*(v80 - 8) + 56))(v49, 1, 1, v80);
            v47 = 0;
            goto LABEL_23;
          }

          v47 = v84[v50];
          ++v43;
          if (v47)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v50 = v43;
LABEL_22:
      v52 = __clz(__rbit64(v47));
      v47 &= v47 - 1;
      v53 = v52 | (v50 << 6);
      v54 = (v86[6] + 16 * v53);
      v55 = *v54;
      v56 = v54[1];
      v57 = v87;
      sub_1000D2A70(v86[7] + *(v88 + 72) * v53, v87, &qword_1016A40D0, &unk_10138BE70);
      v58 = sub_1000BC4D4(&qword_1016BCD80, &qword_1013EADB8);
      v59 = *(v58 + 48);
      *v49 = v55;
      v49[1] = v56;
      sub_1000D2AD8(v57, v49 + v59, &qword_1016A40D0, &unk_10138BE70);
      (*(*(v58 - 8) + 56))(v49, 0, 1, v58);
      sub_100017D5C(v55, v56);
      v2 = v50;
      v48 = v85;
LABEL_23:
      v60 = v93;
      sub_1000D2AD8(v49, v93, &qword_1016BCD78, &qword_1013EADB0);
      v61 = sub_1000BC4D4(&qword_1016BCD80, &qword_1013EADB8);
      if ((*(*(v61 - 8) + 48))(v60, 1, v61) == 1)
      {

        sub_100016590(v82, v83);
        return v96;
      }

      v95 = v2;
      v62 = *v60;
      v63 = v60[1];
      v64 = v60 + *(v61 + 48);
      v65 = v99;
      sub_1000D2AD8(v64, v99, &qword_1016A40D0, &unk_10138BE70);
      v66 = v90;
      v2 = v92;
      sub_1000D2A70(v65, &v92[*(v90 + 24)], &qword_1016A40D0, &unk_10138BE70);
      *v2 = v89;
      *(v2 + 1) = 0;
      *(v2 + *(v66 + 28)) = 1;
      sub_100E6ADA4(v2, v97, type metadata accessor for MultipartAccessoryPairingInfo);
      v67 = v96;
      v68 = swift_isUniquelyReferenced_nonNull_native();
      v98[0] = v67;
      v70 = sub_100771E30(v62, v63);
      v71 = *(v67 + 16);
      v72 = (v69 & 1) == 0;
      v73 = v71 + v72;
      if (__OFADD__(v71, v72))
      {
        goto LABEL_36;
      }

      v2 = v69;
      if (*(v67 + 24) >= v73)
      {
        if ((v68 & 1) == 0)
        {
          sub_1010052AC();
        }
      }

      else
      {
        sub_100FE68A8(v73, v68);
        v74 = sub_100771E30(v62, v63);
        if ((v2 & 1) != (v75 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v70 = v74;
      }

      v40 = v98[0];
      if (v2)
      {
        sub_100E6A05C(v97, *(v98[0] + 56) + *(v91 + 72) * v70, type metadata accessor for MultipartAccessoryPairingInfo);
        sub_100016590(v62, v63);
        sub_10000B3A8(v99, &qword_1016A40D0, &unk_10138BE70);
      }

      else
      {
        *(v98[0] + 8 * (v70 >> 6) + 64) |= 1 << v70;
        v76 = (v40[6] + 16 * v70);
        *v76 = v62;
        v76[1] = v63;
        sub_100E6ADA4(v97, v40[7] + *(v91 + 72) * v70, type metadata accessor for MultipartAccessoryPairingInfo);
        sub_10000B3A8(v99, &qword_1016A40D0, &unk_10138BE70);
        v77 = v40[2];
        v78 = __OFADD__(v77, 1);
        v79 = v77 + 1;
        if (v78)
        {
          goto LABEL_37;
        }

        v40[2] = v79;
      }

      v43 = v95;
    }
  }

  if (qword_1016950D0 != -1)
  {
LABEL_38:
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177C418);
  sub_100E69704(v2, v98);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  sub_100A222C4(v2);
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v98[0] = v26;
    *v25 = 136315138;
    v27 = Data.description.getter();
    v29 = sub_1000136BC(v27, v28, v98);

    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v23, v24, "Invalid serial number %s!", v25, 0xCu);
    sub_100007BAC(v26);
  }

  v30 = type metadata accessor for BinaryEncodingError();
  sub_100E62554(&qword_101696E20, 255, &type metadata accessor for BinaryEncodingError, &protocol conformance descriptor for BinaryEncodingError);
  swift_allocError();
  (*(*(v30 - 8) + 104))(v31, enum case for BinaryEncodingError.encodingError(_:), v30);
  return swift_willThrow();
}

void *sub_100E48730()
{
  v25 = _swiftEmptyDictionarySingleton;
  *v24 = *(v0 + 16);
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

  v6 = static MACAddress.length.getter();
  v7 = __OFADD__(v6, 20);
  result = (v6 + 20);
  if (!v7)
  {
    v9 = Data.chunked(into:)();
    sub_100E216A8(v9, &v25);

    v10 = v25;
    v11 = v25[2];
    v12 = Logger.logObject.getter();
    if (v11 == v1 - 1)
    {
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v24[0] = v15;
        *v14 = 136315138;

        sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
        sub_100101BAC();
        v16 = Dictionary.description.getter();
        v18 = v17;

        v19 = sub_1000136BC(v16, v18, v24);

        *(v14 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v12, v13, "serialNumbersAndMacAddressesMap: %s", v14, 0xCu);
        sub_100007BAC(v15);
      }
    }

    else
    {
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 134349056;
        *(v21 + 4) = v10[2];
        _os_log_impl(&_mh_execute_header, v12, v20, "Unexpected number of other serial numbers: %{public}ld", v21, 0xCu);
      }

      v22 = type metadata accessor for BinaryEncodingError();
      sub_100E62554(&qword_101696E20, 255, &type metadata accessor for BinaryEncodingError, &protocol conformance descriptor for BinaryEncodingError);
      swift_allocError();
      (*(*(v22 - 8) + 104))(v23, enum case for BinaryEncodingError.encodingError(_:), v22);
      swift_willThrow();
    }

    return v10;
  }

  __break(1u);
  return result;
}

void *sub_100E48AFC()
{
  v13 = _swiftEmptyDictionarySingleton;
  sub_1000E0A3C();
  v0 = DataProtocol.intValue.getter();
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C418);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134349056;
    *(v4 + 4) = v0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Number of beacons: %{public}ld", v4, 0xCu);
  }

  if (v0 < 2)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v5 = Data.chunked(into:)();
  sub_100E21730(v5, &v13);

  v6 = v13;
  if (v13[2] != v0 - 1)
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134349056;
      *(v9 + 4) = v6[2];
      _os_log_impl(&_mh_execute_header, v7, v8, "Unexpected number of other serial numbers: %{public}ld", v9, 0xCu);
    }

    v10 = type metadata accessor for BinaryEncodingError();
    sub_100E62554(&qword_101696E20, 255, &type metadata accessor for BinaryEncodingError, &protocol conformance descriptor for BinaryEncodingError);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, enum case for BinaryEncodingError.encodingError(_:), v10);
    swift_willThrow();
  }

  return v6;
}

uint64_t sub_100E48DAC(uint64_t a1)
{
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  return String.init<A>(describing:)();
}

uint64_t sub_100E48DF0(uint64_t a1)
{
  sub_10001F280(a1, v2);
  sub_1000BC4D4(&qword_1016BCD68, &qword_1013EAD98);
  return String.init<A>(describing:)();
}

void sub_100E48E34(uint64_t *a1@<X8>)
{
  v66 = a1;
  v2 = type metadata accessor for MultipartAccessoryPairingInfo(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v62 - v7;
  v9 = sub_1000BC4D4(&qword_101696E28, &qword_1013EAD80);
  __chkstk_darwin(v9 - 8);
  v11 = &v62 - v10;
  v12 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  __chkstk_darwin(v12 - 8);
  v67 = &v62 - v13;
  v14 = type metadata accessor for MACAddress();
  v68 = *(v14 - 8);
  v69 = v14;
  __chkstk_darwin(v14);
  v64 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = (&v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v1 + 16);
  *v19 = v20;
  (*(v17 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v16);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v19, v16);
  if ((v20 & 1) == 0)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    swift_once();
    goto LABEL_17;
  }

  v65 = v1;
  v22 = *(v1 + 80);
  v62 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo;
  v63 = v22;
  v23 = *(*(v22 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);
  v24 = 1 << *(v23 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v23 + 64);
  v27 = (v24 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v28 = 0;
  if (!v26)
  {
LABEL_6:
    while (1)
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v29 >= v27)
      {

        (*(v3 + 56))(v11, 1, 1, v2);
        goto LABEL_13;
      }

      v26 = *(v23 + 64 + 8 * v29);
      ++v28;
      if (v26)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_41;
  }

  while (1)
  {
    v29 = v28;
LABEL_9:
    sub_100E6A94C(*(v23 + 56) + *(v3 + 72) * (__clz(__rbit64(v26)) | (v29 << 6)), v8, type metadata accessor for MultipartAccessoryPairingInfo);
    sub_100E6ADA4(v8, v6, type metadata accessor for MultipartAccessoryPairingInfo);
    if (v6[*(v2 + 28)] == 2)
    {
      break;
    }

    v26 &= v26 - 1;
    sub_100E6A9B4(v6, type metadata accessor for MultipartAccessoryPairingInfo);
    v28 = v29;
    if (!v26)
    {
      goto LABEL_6;
    }
  }

  sub_100E6ADA4(v6, v11, type metadata accessor for MultipartAccessoryPairingInfo);
  (*(v3 + 56))(v11, 0, 1, v2);
LABEL_13:

  v30 = (*(v3 + 48))(v11, 1, v2);
  v32 = v68;
  v31 = v69;
  v33 = v65;
  v34 = v67;
  if (v30 == 1)
  {
    sub_10000B3A8(v11, &qword_101696E28, &qword_1013EAD80);
    (*(v32 + 56))(v34, 1, 1, v31);
  }

  else
  {
    sub_1000D2A70(&v11[*(v2 + 24)], v67, &qword_1016A40D0, &unk_10138BE70);
    sub_100E6A9B4(v11, type metadata accessor for MultipartAccessoryPairingInfo);
    if ((*(v32 + 48))(v34, 1, v31) != 1)
    {
      v41 = v64;
      (*(v32 + 32))(v64, v34, v31);
      v43 = v62;
      v42 = v63;
      *(*(v63 + v62) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_skippedClassic) = 1;
      if (*(v33 + 72) == 1)
      {
        if (qword_1016950D0 != -1)
        {
          swift_once();
        }

        v44 = type metadata accessor for Logger();
        sub_1000076D4(v44, qword_10177C418);
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&_mh_execute_header, v45, v46, "Standalone: Skipping BA pairing over classic and proceed with LE Pairing", v47, 2u);
        }

        sub_100E6259C();
        v48 = swift_allocError();
        *v49 = 4;
        v50 = *(v42 + v43);
        v51 = *(v50 + 16);
        v52 = *(v50 + 24);
        sub_100017D5C(v51, v52);
        sub_100E6792C(v41);
        sub_100016590(v51, v52);
      }

      else
      {
        if (qword_1016950D0 != -1)
        {
          swift_once();
        }

        v54 = type metadata accessor for Logger();
        sub_1000076D4(v54, qword_10177C418);
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          *v57 = 0;
          _os_log_impl(&_mh_execute_header, v55, v56, "Skipping classic pairing and start LE pairing", v57, 2u);
        }

        QueueSynchronizer.conditionalSync<A>(_:)();
        if (v70 & 1) != 0 || (QueueSynchronizer.conditionalSync<A>(_:)(), (v70))
        {
          v58 = Logger.logObject.getter();
          v59 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v58, v59))
          {
            v60 = swift_slowAlloc();
            *v60 = 0;
            _os_log_impl(&_mh_execute_header, v58, v59, "LE Pairing is in progress!", v60, 2u);
          }

          (*(v32 + 8))(v64, v31);
          goto LABEL_20;
        }

        sub_100E6259C();
        v48 = swift_allocError();
        *v61 = 5;
        v41 = v64;
        sub_100E533EC(v64, 0, 0);
      }

      (*(v32 + 8))(v41, v31);
      v39 = v66;
      *v66 = v48;
      v53 = v72;
      *(v39 + 1) = v71;
      *(v39 + 3) = v53;
      v40 = 256;
      goto LABEL_21;
    }
  }

  sub_10000B3A8(v34, &qword_1016A40D0, &unk_10138BE70);
  if (qword_1016950D0 != -1)
  {
    goto LABEL_42;
  }

LABEL_17:
  v35 = type metadata accessor for Logger();
  sub_1000076D4(v35, qword_10177C418);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "Missing MAC address to start LE pairing", v38, 2u);
  }

LABEL_20:
  v39 = v66;
  *v66 = 8;
  *(v39 + 1) = 0u;
  *(v39 + 3) = 0u;
  v40 = 267;
LABEL_21:
  *(v39 + 20) = v40;
}

void sub_100E497C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v88 = a2;
  v89 = a3;
  v86 = a1;
  v90 = type metadata accessor for LocalizationUtility.Table();
  v92 = *(v90 - 8);
  __chkstk_darwin(v90);
  v91 = v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for MACAddress();
  v6 = *(v93 - 8);
  v7 = __chkstk_darwin(v93);
  v87 = v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = v77 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = v77 - v13;
  __chkstk_darwin(v12);
  v16 = v77 - v15;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v4 + 16);
  *v20 = v21;
  (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  v24 = *(v18 + 8);
  v23 = (v18 + 8);
  v24(v20, v17);
  if ((v21 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_7;
  }

  v25 = [objc_opt_self() sharedInstance];
  v26 = [v25 isInternalBuild];

  if (!v26)
  {
    return;
  }

  v81 = *(v4 + 64);
  sub_100A22DF0(v16);
  v23 = *(v6 + 16);
  v85 = v16;
  v27 = v16;
  v16 = v93;
  v23(v11, v27, v93);
  *&v101[0] = sub_100E221E0();
  v28 = sub_100DED164(v14, v11);
  v83 = *(v6 + 8);
  v84 = v6 + 8;
  v83(v14, v16);
  sub_100E226B8(*&v101[0]);
  if (v28)
  {
    LODWORD(v87) = enum case for LocalizationUtility.Table.default(_:);
    v29 = v91;
    v30 = v92;
    v31 = v92 + 104;
    v82 = *(v92 + 104);
    v32 = v90;
    v82(v91);
    v80 = static LocalizationUtility.localizedString(key:table:)();
    v78 = v33;
    v34 = *(v30 + 8);
    v34(v29, v32);
    v77[1] = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_101385D80;
    *&v101[0] = v86;
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v37;
    *(v35 + 56) = &type metadata for String;
    v39 = sub_100008C00();
    *(v35 + 64) = v39;
    *(v35 + 32) = v36;
    *(v35 + 40) = v38;
    v40 = String.init(format:_:)();
    v79 = v41;
    v80 = v40;

    v86 = v31;
    (v82)(v29, v87, v32);
    v77[2] = static LocalizationUtility.localizedString(key:table:)();
    v77[3] = v42;
    v92 = v30 + 8;
    v78 = v34;
    v34(v29, v32);
    v43 = swift_allocObject();
    v44 = v43;
    *(v43 + 16) = xmmword_10138B360;
    if (*(v81 + OBJC_IVAR____TtC12searchpartyd10Peripheral_injectedName + 8))
    {
      v45 = *(v81 + OBJC_IVAR____TtC12searchpartyd10Peripheral_injectedName);
      v46 = *(v81 + OBJC_IVAR____TtC12searchpartyd10Peripheral_injectedName + 8);
      *(v43 + 56) = &type metadata for String;
      *(v43 + 64) = v39;
      v47 = v93;
LABEL_16:
      v44[4] = v45;
      v44[5] = v46;
      *&v101[0] = v88;

      v66 = dispatch thunk of CustomStringConvertible.description.getter();
      v44[12] = &type metadata for String;
      v44[13] = v39;
      v44[9] = v66;
      v44[10] = v67;
      *&v101[0] = v89;
      v68 = dispatch thunk of CustomStringConvertible.description.getter();
      v44[17] = &type metadata for String;
      v44[18] = v39;
      v44[14] = v68;
      v44[15] = v69;
      v70 = String.init(format:_:)();
      v72 = v71;

      v73 = v91;
      (v82)(v91, v87, v32);
      v74 = static LocalizationUtility.localizedString(key:table:)();
      v76 = v75;
      v78(v73, v32);
      *&v95 = v80;
      *(&v95 + 1) = v79;
      *&v96 = v70;
      *(&v96 + 1) = v72;
      *&v97 = v74;
      *(&v97 + 1) = v76;
      v98 = 0u;
      v99 = 0u;
      v100 = 0u;
      v101[2] = v97;
      memset(&v101[3], 0, 48);
      v101[0] = v95;
      v101[1] = v96;
      type metadata accessor for SBAlertHelper();
      swift_allocObject();
      sub_1010A0C88(v101);
      sub_100E69244(&v95, &v94);
      sub_1010A1920();

      sub_100E692A0(&v95);
      v83(v85, v47);
      return;
    }

    v62 = v39;
    v63 = [*(v81 + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject) name];
    if (v63)
    {
      v64 = v63;
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v65;

      v44[7] = &type metadata for String;
      v44[8] = v62;
      v47 = v93;
      if (v46)
      {
LABEL_15:
        v39 = v62;
        goto LABEL_16;
      }
    }

    else
    {
      v44[7] = &type metadata for String;
      v44[8] = v39;
      v47 = v93;
    }

    v45 = 0;
    v46 = 0xE000000000000000;
    goto LABEL_15;
  }

  if (qword_1016950D0 != -1)
  {
    goto LABEL_19;
  }

LABEL_7:
  v48 = type metadata accessor for Logger();
  sub_1000076D4(v48, qword_10177C418);
  v49 = v87;
  v50 = v85;
  v23(v87, v85, v16);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *&v101[0] = v54;
    *v53 = 136446210;
    sub_100E62554(&qword_1016A4210, 255, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v55 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = v56;
    v58 = v49;
    v59 = v83;
    v83(v58, v16);
    v60 = sub_1000136BC(v55, v57, v101);

    *(v53 + 4) = v60;
    _os_log_impl(&_mh_execute_header, v51, v52, "Limit reached alert has already been shown for %{public}s.", v53, 0xCu);
    sub_100007BAC(v54);

    v59(v85, v16);
  }

  else
  {

    v61 = v83;
    v83(v49, v16);
    v61(v50, v16);
  }
}

uint64_t sub_100E4A090@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v35 = a1;
  v5 = sub_1000BC4D4(&qword_1016AED28, &qword_1013C8298);
  __chkstk_darwin(v5);
  v7 = (&v30 - v6);
  v8 = type metadata accessor for AirPodsPairingLockCheckResponse(0);
  v9 = __chkstk_darwin(v8);
  v33 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v30 - v11;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v3 + 16);
  *v16 = v17;
  (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  result = (*(v14 + 8))(v16, v13);
  if (v17)
  {
    v31 = v8;
    v34 = a2;
    v20 = swift_allocBox();
    v22 = v21;
    type metadata accessor for SPPairingSessionError(0);
    v37 = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100E62554(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    *v22 = v36[0];
    swift_storeEnumTagMultiPayload();
    v23 = dispatch_group_create();
    dispatch_group_enter(v23);
    v32 = v3;
    v24 = swift_allocObject();
    *(v24 + 16) = v20;
    *(v24 + 24) = v23;

    v25 = v23;
    sub_10092FB14(v35, sub_100E6923C, v24);

    OS_dispatch_group.wait()();
    swift_beginAccess();
    sub_1000D2A70(v22, v7, &qword_1016AED28, &qword_1013C8298);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v37 = *v7;
      v26 = v37;
      sub_100E62554(&qword_101695F60, 255, type metadata accessor for SPPairingSessionError, &unk_101389E60);
      swift_willThrowTypedImpl();
    }

    else
    {

      v27 = v33;
      sub_100E6ADA4(v7, v33, type metadata accessor for AirPodsPairingLockCheckResponse);
      sub_100E6ADA4(v27, v12, type metadata accessor for AirPodsPairingLockCheckResponse);
      v28 = *(*(v32 + 80) + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
      v29 = *&v12[*(v31 + 48)];

      sub_100E6A9B4(v12, type metadata accessor for AirPodsPairingLockCheckResponse);
      *(v28 + 32) = v29;
    }

    sub_1000D2A70(v22, v34, &qword_1016AED28, &qword_1013C8298);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100E4A4EC(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = swift_projectBox();
  swift_beginAccess();
  sub_1001DA61C(a1, v5, &qword_1016AED28, &qword_1013C8298);
  dispatch_group_leave(a3);
}

void sub_100E4A560()
{
  v1 = v0;
  v2 = type metadata accessor for MACAddress();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];

  sub_100A22DF0(v5);
  v6 = sub_100E22864();
  if (*(v6 + 16) && (v7 = sub_1007723C0(v5), (v8 & 1) != 0))
  {
    v9 = (*(v6 + 56) + 16 * v7);
    v10 = *v9;
    v11 = v9[1];
    sub_100017D5C(*v9, v11);
    (*(v3 + 8))(v5, v2);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
    v10 = 0;
    v11 = 0xF000000000000000;
  }

  sub_100F5395C(v10, v11, v18);

  sub_100006654(v10, v11);
  v29 = v18[10];
  v30 = v18[11];
  v31 = v18[12];
  v25 = v18[6];
  v26 = v18[7];
  v27 = v18[8];
  v28 = v18[9];
  v21 = v18[2];
  v22 = v18[3];
  v23 = v18[4];
  v24 = v18[5];
  v19 = v18[0];
  v20 = v18[1];
  if (sub_1001010A8(&v19) == 1)
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000076D4(v12, qword_10177C418);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Unable to generate ack data!", v15, 2u);
    }
  }

  else
  {
    v32[10] = v29;
    v32[11] = v30;
    v32[12] = v31;
    v32[6] = v25;
    v32[7] = v26;
    v32[8] = v27;
    v32[9] = v28;
    v32[2] = v21;
    v32[3] = v22;
    v32[4] = v23;
    v32[5] = v24;
    v32[0] = v19;
    v32[1] = v20;
    v16 = type metadata accessor for Transaction();
    __chkstk_darwin(v16);
    *&v17[-16] = v1;
    *&v17[-8] = v32;
    static Transaction.named<A>(_:with:)();
    sub_10000B3A8(v18, &qword_1016BCD60, &qword_1013EAD78);
  }
}

uint64_t sub_100E4A8C0(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a1;

  sub_1009349F8(a3, sub_100E691F4, v6);
}

uint64_t sub_100E4A984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v56 = *(v5 - 8);
  __chkstk_darwin(v5);
  v54 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for DispatchQoS();
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v52 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AirPodsPairingLockAckResponse(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v49 - v13;
  __chkstk_darwin(v12);
  v16 = &v49 - v15;
  v17 = sub_1000BC4D4(&qword_1016AED20, &qword_1013C8290);
  __chkstk_darwin(v17);
  v19 = (&v49 - v18);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    v50 = a3;
    v51 = v5;
    Transaction.capture()();
    sub_1000D2A70(a1, v19, &qword_1016AED20, &qword_1013C8290);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v22 = *v19;
      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_1000076D4(v23, qword_10177C418);
      v24 = v22;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v57 = v24;
        aBlock[0] = v28;
        *v27 = 136446210;
        type metadata accessor for SPPairingSessionError(0);
        v29 = v24;
        v30 = String.init<A>(describing:)();
        v32 = sub_1000136BC(v30, v31, aBlock);

        *(v27 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v25, v26, "Ack register failed with error - %{public}s", v27, 0xCu);
        sub_100007BAC(v28);
      }

      v33 = v50;
      v34 = swift_allocObject();
      v34[2] = v33;
      v34[3] = v21;
      v34[4] = v24;
      aBlock[4] = sub_100E691FC;
      aBlock[5] = v34;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100006684;
      aBlock[3] = &unk_101652D28;
      v35 = _Block_copy(aBlock);
      v36 = v24;

      v37 = v52;
      static DispatchQoS.unspecified.getter();
      v57 = _swiftEmptyArrayStorage;
      sub_100E62554(&qword_1016A30B0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v38 = v54;
      v39 = v51;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v35);

      (*(v56 + 8))(v38, v39);
      (*(v53 + 8))(v37, v55);
    }

    else
    {
      sub_100E6ADA4(v19, v16, type metadata accessor for AirPodsPairingLockAckResponse);
      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_1000076D4(v40, qword_10177C418);
      sub_100E6A94C(v16, v14, type metadata accessor for AirPodsPairingLockAckResponse);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        aBlock[0] = v44;
        *v43 = 136446210;
        sub_100E6A94C(v14, v11, type metadata accessor for AirPodsPairingLockAckResponse);
        v45 = String.init<A>(describing:)();
        v47 = v46;
        sub_100E6A9B4(v14, type metadata accessor for AirPodsPairingLockAckResponse);
        v48 = sub_1000136BC(v45, v47, aBlock);

        *(v43 + 4) = v48;
        _os_log_impl(&_mh_execute_header, v41, v42, "Ack register was success. %{public}s", v43, 0xCu);
        sub_100007BAC(v44);
      }

      else
      {

        sub_100E6A9B4(v14, type metadata accessor for AirPodsPairingLockAckResponse);
      }

      return sub_100E6A9B4(v16, type metadata accessor for AirPodsPairingLockAckResponse);
    }
  }

  return result;
}

void sub_100E4B0F8(uint64_t a1@<X8>)
{
  v3 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v3 - 8);
  v213 = &v196 - v4;
  v5 = type metadata accessor for AirPodsPairingLockCheckResponse(0);
  v6 = __chkstk_darwin(v5);
  v214 = &v196 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v196 - v8;
  v215 = sub_1000BC4D4(&qword_1016AED28, &qword_1013C8298);
  __chkstk_darwin(v215);
  v216 = (&v196 - v10);
  v230 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v225 = *(v230 - 8);
  v11 = __chkstk_darwin(v230);
  v234 = &v196 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v229 = &v196 - v13;
  v235 = sub_1000BC4D4(&qword_101696E38, &qword_1013D8510);
  v14 = __chkstk_darwin(v235);
  v228 = &v196 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v227 = &v196 - v17;
  v18 = __chkstk_darwin(v16);
  v226 = (&v196 - v19);
  v20 = __chkstk_darwin(v18);
  v232 = (&v196 - v21);
  __chkstk_darwin(v20);
  v233 = (&v196 - v22);
  v231 = type metadata accessor for MACAddress();
  v223 = *(v231 - 8);
  v23 = __chkstk_darwin(v231);
  v212 = &v196 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v217 = &v196 - v26;
  __chkstk_darwin(v25);
  v222 = &v196 - v27;
  v28 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v28 - 8);
  v218 = &v196 - v29;
  v30 = type metadata accessor for HashAlgorithm();
  v220 = *(v30 - 8);
  v221 = v30;
  __chkstk_darwin(v30);
  v219 = &v196 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchPredicate();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = (&v196 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = *(v1 + 16);
  *v35 = v36;
  (*(v33 + 104))(v35, enum case for DispatchPredicate.onQueue(_:), v32);
  v37 = v36;
  v38 = _dispatchPreconditionTest(_:)();
  (*(v33 + 8))(v35, v32);
  if ((v38 & 1) == 0)
  {
    goto LABEL_73;
  }

  v39 = (*(*(v1 + 80) + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1);
  v40 = v39[1];
  if (v40 >> 60 == 15)
  {
    if (qword_1016950D0 != -1)
    {
      goto LABEL_74;
    }

    goto LABEL_4;
  }

  v210 = *(v1 + 80);
  v211 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo;
  v207 = v5;
  v209 = v9;
  v224 = a1;
  v45 = *v39;
  swift_beginAccess();
  sub_10001F280(v1 + 176, v244);
  v46 = v244[3];
  v47 = v244[4];
  sub_1000035D0(v244, v244[3]);
  v48 = *(v47 + 72);
  sub_10002E98C(v45, v40);
  sub_100017D5C(v45, v40);
  v48(v245, &v245[2] + 8, v45, v40, v46, v47);
  v208 = v1;
  sub_100006654(v45, v40);
  sub_100007BAC(v244);
  if (!*(&v245[1] + 1))
  {
    v49 = v40;
    sub_10000B3A8(v245, &qword_101697370, &unk_10138BEE0);
    v50 = v224;
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_1000076D4(v51, qword_10177C418);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "collaborativeKeyC2 generation error.", v54, 2u);
    }

    sub_100006654(v45, v49);
    *v50 = 0xD000000000000026;
    *(v50 + 8) = 0x800000010134B390;
    *(v50 + 40) = 265;
    return;
  }

  v197 = v45;
  v198 = v40;
  sub_10000A748(v245, v240);
  sub_10000A748((&v245[2] + 8), v239);
  v55 = v210;
  v56 = *(v210 + v211);
  sub_10001F280(v240, v245);
  v57 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC2;
  swift_beginAccess();

  sub_10002311C(v245, v56 + v57, &qword_101697378, &unk_101391940);
  swift_endAccess();

  sub_10001F280(v239, v245);
  v58 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingOwnerContext;
  swift_beginAccess();
  sub_10002311C(v245, v55 + v58, &qword_101697380, &unk_10138BEF0);
  swift_endAccess();
  if (qword_1016950D0 != -1)
  {
LABEL_77:
    swift_once();
  }

  v59 = type metadata accessor for Logger();
  v60 = sub_1000076D4(v59, qword_10177C418);
  sub_10001F280(v240, v245);
  v199 = v60;
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.debug.getter();
  v63 = os_log_type_enabled(v61, v62);
  v64 = v223;
  if (v63)
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v244[0] = v66;
    *v65 = 136315138;
    v67 = *(&v245[1] + 1);
    LODWORD(v206) = v62;
    v68 = *&v245[2];
    sub_1000035D0(v245, *(&v245[1] + 1));
    v69 = (*(*(*(v68 + 8) + 8) + 40))(v67);
    v71 = v70;
    v72 = Data.hexString.getter();
    v74 = v73;
    sub_100016590(v69, v71);
    sub_100007BAC(v245);
    v75 = sub_1000136BC(v72, v74, v244);

    *(v65 + 4) = v75;
    _os_log_impl(&_mh_execute_header, v61, v206, "C2: %s", v65, 0xCu);
    sub_100007BAC(v66);
  }

  else
  {

    sub_100007BAC(v245);
  }

  a1 = v218;
  v77 = v241;
  v76 = v242;
  sub_1000035D0(v240, v241);
  v78 = (*(*(*(v76 + 8) + 8) + 40))(v77);
  v80 = v79;
  v81 = v219;
  v82 = v220;
  v83 = v221;
  (*(v220 + 13))(v219, enum case for HashAlgorithm.sha256(_:), v221);
  v204 = Data.hash(algorithm:)();
  v205 = v84;
  sub_100016590(v78, v80);
  (*(v82 + 1))(v81, v83);
  v85 = v222;
  v201 = *(v208 + 64);
  sub_100A22DF0(v222);
  sub_100AC5D4C(v85, a1);
  v87 = *(v64 + 8);
  v86 = v64 + 8;
  v200 = v87;
  v87(v85, v231);
  v88 = type metadata accessor for OwnedBeaconGroup(0);
  if ((*(*(v88 - 8) + 48))(a1, 1, v88) != 1)
  {
    v98 = *(a1 + *(v88 + 40));

    sub_100E6A9B4(a1, type metadata accessor for OwnedBeaconGroup);
    v99 = v224;
LABEL_43:

    v138 = v217;
    sub_100A22DF0(v217);
    v139 = sub_100E22864();
    if (*(v139 + 16) && (v140 = sub_1007723C0(v138), (v141 & 1) != 0))
    {
      v142 = (*(v139 + 56) + 16 * v140);
      v143 = *v142;
      v144 = v142[1];
      sub_100017D5C(*v142, v144);
      v200(v138, v231);
    }

    else
    {

      v200(v138, v231);
      v143 = 0;
      v144 = 0xF000000000000000;
    }

    sub_100F53C90(v204, v205, v143, v144, v98, v243);

    sub_100006654(v143, v144);
    memcpy(v244, v243, sizeof(v244));
    if (sub_100101D88(v244) == 1)
    {
      v145 = Logger.logObject.getter();
      v146 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v145, v146))
      {
        v147 = swift_slowAlloc();
        *v147 = 0;
        _os_log_impl(&_mh_execute_header, v145, v146, "Unable to create pairing check data.", v147, 2u);
      }

      v148 = 0x800000010134B3C0;
      sub_100016590(v204, v205);
      sub_100006654(v197, v198);
      sub_100007BAC(v239);
      v149 = 0xD00000000000001ALL;
    }

    else
    {
      memcpy(v245, v244, 0x140uLL);
      v151 = v216;
      sub_100E4A090(v245, v216);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v152 = *v151;
        v153 = Logger.logObject.getter();
        v154 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v153, v154))
        {
          v155 = swift_slowAlloc();
          v156 = swift_slowAlloc();
          *&v238[0] = v156;
          *v155 = 136446210;
          *&v236 = v152;
          type metadata accessor for SPPairingSessionError(0);
          v157 = v152;
          v158 = String.init<A>(describing:)();
          v160 = sub_1000136BC(v158, v159, v238);

          *(v155 + 4) = v160;
          _os_log_impl(&_mh_execute_header, v153, v154, "Pairing lock check failed. Error %{public}s", v155, 0xCu);
          sub_100007BAC(v156);
        }

        v161 = v210;
        v162 = v152;
        sub_100E5FD24(v162);

        *&v238[0] = v162;
        type metadata accessor for SPPairingSessionError(0);
        sub_100E62554(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
        _BridgedStoredNSError.code.getter();
        if (v236 == 18)
        {
          sub_100E4CA50(v161, v99);
          sub_100016590(v204, v205);
          sub_10000B3A8(v243, &qword_1016BCD58, &qword_1013EAD70);
          sub_100006654(v197, v198);

          sub_100007BAC(v239);
          goto LABEL_53;
        }

        sub_100007BAC(v239);
        sub_100006654(v197, v198);
        sub_100016590(v204, v205);
        sub_10000B3A8(v243, &qword_1016BCD58, &qword_1013EAD70);
        *v99 = v162;
        v150 = 256;
LABEL_52:
        *(v99 + 40) = v150;
LABEL_53:
        sub_100007BAC(v240);
        return;
      }

      v163 = v209;
      sub_100E6ADA4(v151, v209, type metadata accessor for AirPodsPairingLockCheckResponse);
      v164 = v214;
      sub_100E6A94C(v163, v214, type metadata accessor for AirPodsPairingLockCheckResponse);
      v165 = Logger.logObject.getter();
      v166 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v165, v166))
      {
        v167 = swift_slowAlloc();
        v168 = swift_slowAlloc();
        *&v238[0] = v168;
        *v167 = 136446210;
        if (*(v164 + *(v207 + 44) + 8) >> 60 == 15)
        {
          v169 = 0;
          v170 = 0xE000000000000000;
        }

        else
        {
          v169 = Data.hexString.getter();
          v170 = v171;
        }

        sub_100E6A9B4(v214, type metadata accessor for AirPodsPairingLockCheckResponse);
        v172 = sub_1000136BC(v169, v170, v238);

        *(v167 + 4) = v172;
        _os_log_impl(&_mh_execute_header, v165, v166, "Received SeedS and S3 from server. Pairing token: %{public}s", v167, 0xCu);
        sub_100007BAC(v168);
      }

      else
      {

        sub_100E6A9B4(v164, type metadata accessor for AirPodsPairingLockCheckResponse);
      }

      v173 = *(v210 + v211);
      v174 = v207;
      v175 = *(v207 + 36);
      v176 = type metadata accessor for UUID();
      v177 = *(v176 - 8);
      v178 = v209;
      v179 = v209 + v175;
      v180 = v213;
      (*(v177 + 16))(v213, v179, v176);
      (*(v177 + 56))(v180, 0, 1, v176);
      v181 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_fmnaId;
      swift_beginAccess();

      sub_10002311C(v180, v173 + v181, &qword_1016980D0, &unk_10138F3B0);
      swift_endAccess();

      v182 = v212;
      sub_100A22DF0(v212);
      v183 = (v178 + *(v174 + 44));
      v184 = *v183;
      v185 = v183[1];
      sub_10002E98C(*v183, v185);
      v186 = sub_100E22864();
      *&v236 = v186;
      if (v185 >> 60 == 15)
      {
        sub_1001E5B28(v182, v238);
        sub_100006654(*&v238[0], *(&v238[0] + 1));
        v200(v182, v231);
        v187 = v236;
      }

      else
      {
        v188 = v186;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v238[0] = v188;
        sub_1010013E0(v184, v185, v182, isUniquelyReferenced_nonNull_native);
        v200(v182, v231);
        v187 = *&v238[0];
      }

      sub_100E22CD8(v187);
      v191 = v241;
      v190 = v242;
      sub_1000035D0(v240, v241);
      v192 = (*(*(*(v190 + 8) + 8) + 40))(v191);
      v194 = v193;
      v195 = v209;
      sub_100E4D1FC(v209, v192, v193, &v236);
      sub_100016590(v192, v194);
      if (v237)
      {
        sub_100016590(v204, v205);
        sub_10000B3A8(v243, &qword_1016BCD58, &qword_1013EAD70);
        sub_100006654(v197, v198);
        sub_100E6A9B4(v195, type metadata accessor for AirPodsPairingLockCheckResponse);
        sub_100007BAC(v239);
        sub_10000A748(&v236, v238);
        sub_10000A748(v238, v99);
        *(v99 + 41) = 0;
        goto LABEL_53;
      }

      sub_10000B3A8(&v236, &qword_1016BCD50, &qword_1013EAD68);
      v148 = 0x800000010134B3E0;
      sub_100016590(v204, v205);
      sub_10000B3A8(v243, &qword_1016BCD58, &qword_1013EAD70);
      sub_100006654(v197, v198);
      sub_100E6A9B4(v195, type metadata accessor for AirPodsPairingLockCheckResponse);
      sub_100007BAC(v239);
      v149 = 0xD000000000000019;
    }

    *v99 = v149;
    *(v99 + 8) = v148;
    v150 = 265;
    goto LABEL_52;
  }

  v223 = v86;
  sub_10000B3A8(a1, &unk_1016AF8B0, &unk_1013A0700);
  v89 = *(*(v55 + v211) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);
  v92 = *(v89 + 64);
  v91 = v89 + 64;
  v90 = v92;
  v93 = 1 << *(*(*(v55 + v211) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds) + 32);
  v94 = -1;
  if (v93 < 64)
  {
    v94 = ~(-1 << v93);
  }

  v95 = v94 & v90;
  v96 = (v93 + 63) >> 6;
  v206 = *(*(v55 + v211) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);
  swift_bridgeObjectRetain_n();
  v97 = 0;
  v98 = _swiftEmptyDictionarySingleton;
  v99 = v224;
  v202 = v96;
  v203 = v91;
  while (v95)
  {
    v222 = v98;
LABEL_30:
    v101 = __clz(__rbit64(v95)) | (v97 << 6);
    v102 = *(v206 + 56);
    v103 = (*(v206 + 48) + 16 * v101);
    v105 = v103[1];
    v218 = *v103;
    v104 = v218;
    v106 = (type metadata accessor for MultipartAccessoryPairingInfo(0) - 8);
    v107 = v102 + *(*v106 + 72) * v101;
    v108 = v233;
    sub_100E6A94C(v107, v233 + *(v235 + 48), type metadata accessor for MultipartAccessoryPairingInfo);
    *v108 = v104;
    v108[1] = v105;
    v109 = v232;
    sub_1000D2A70(v108, v232, &qword_101696E38, &qword_1013D8510);
    v110 = v109[1];
    v221 = *v109;
    v219 = v110;
    v111 = sub_1000BC4D4(&qword_1016A4230, &unk_101391950);
    v112 = v229;
    v220 = &v229[*(v111 + 48)];
    v113 = v226;
    sub_1000D2A70(v108, v226, &qword_101696E38, &qword_1013D8510);
    v114 = *v113;
    v115 = v113[1];
    sub_100017D5C(v218, v105);
    sub_100016590(v114, v115);
    v116 = v235;
    v117 = v113 + *(v235 + 48);
    sub_1000D2A70(v117 + v106[8], v112, &qword_1016A40D0, &unk_10138BE70);
    sub_100E6A9B4(v117, type metadata accessor for MultipartAccessoryPairingInfo);
    v118 = v227;
    sub_1000D2A70(v108, v227, &qword_101696E38, &qword_1013D8510);
    sub_100016590(*v118, *(v118 + 8));
    v119 = *(v116 + 48);
    v55 = *(v118 + v119);
    sub_100E6A9B4(v118 + v119, type metadata accessor for MultipartAccessoryPairingInfo);
    v120 = v108;
    v121 = v219;
    v122 = v228;
    sub_1000D2A70(v120, v228, &qword_101696E38, &qword_1013D8510);
    sub_100016590(*v122, *(v122 + 8));
    v123 = v122 + *(v116 + 48);
    LOBYTE(v106) = *(v123 + v106[9]);
    a1 = v221;
    sub_100E6A9B4(v123, type metadata accessor for MultipartAccessoryPairingInfo);
    v124 = v220;
    *v220 = v55;
    v124[2] = v106;
    swift_storeEnumTagMultiPayload();
    sub_100E6ADA4(v112, v234, type metadata accessor for OwnedBeaconGroup.PairingState);
    v125 = v222;
    v126 = swift_isUniquelyReferenced_nonNull_native();
    *&v245[0] = v125;
    v128 = sub_100771E30(a1, v121);
    v129 = *(v125 + 2);
    v130 = (v127 & 1) == 0;
    v131 = v129 + v130;
    if (__OFADD__(v129, v130))
    {
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v55 = v127;
    if (*(v125 + 3) >= v131)
    {
      if (v126)
      {
        v98 = *&v245[0];
        if (v127)
        {
          goto LABEL_22;
        }
      }

      else
      {
        sub_10100586C();
        v98 = *&v245[0];
        if (v55)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      sub_100FE71DC(v131, v126);
      v132 = sub_100771E30(a1, v121);
      if ((v55 & 1) != (v133 & 1))
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }

      v128 = v132;
      v98 = *&v245[0];
      if (v55)
      {
LABEL_22:
        sub_100E6A05C(v234, *(v98 + 7) + *(v225 + 72) * v128, type metadata accessor for OwnedBeaconGroup.PairingState);
        sub_100016590(a1, v121);
        sub_10000B3A8(v233, &qword_101696E38, &qword_1013D8510);
        goto LABEL_23;
      }
    }

    *&v98[8 * (v128 >> 6) + 64] |= 1 << v128;
    v134 = (*(v98 + 6) + 16 * v128);
    *v134 = a1;
    v134[1] = v121;
    sub_100E6ADA4(v234, *(v98 + 7) + *(v225 + 72) * v128, type metadata accessor for OwnedBeaconGroup.PairingState);
    sub_10000B3A8(v233, &qword_101696E38, &qword_1013D8510);
    v135 = *(v98 + 2);
    v136 = __OFADD__(v135, 1);
    v137 = v135 + 1;
    if (v136)
    {
      goto LABEL_76;
    }

    *(v98 + 2) = v137;
LABEL_23:
    v99 = v224;
    v96 = v202;
    v91 = v203;
    v95 &= v95 - 1;
    sub_100E6A9B4(v232 + *(v235 + 48), type metadata accessor for MultipartAccessoryPairingInfo);
  }

  while (1)
  {
    v100 = v97 + 1;
    if (__OFADD__(v97, 1))
    {
      break;
    }

    if (v100 >= v96)
    {

      goto LABEL_43;
    }

    v95 = *(v91 + 8 * v100);
    ++v97;
    if (v95)
    {
      v222 = v98;
      v97 = v100;
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  swift_once();
LABEL_4:
  v41 = type metadata accessor for Logger();
  sub_1000076D4(v41, qword_10177C418);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&_mh_execute_header, v42, v43, "Missing C1 from accessory!", v44, 2u);
  }

  *a1 = 0xD00000000000001ALL;
  *(a1 + 8) = 0x800000010134B370;
  *(a1 + 40) = 265;
}

double sub_100E4CA50@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for MACAddress();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v65 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v2 + 16);
  *v12 = v13;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v64 = v6;
  v15 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo;
  v16 = (*(a1 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    v63 = v2;
    v66[0] = *v16;
    v18 = v66[0];
    v66[1] = v17;
    sub_100017D5C(v66[0], v17);
    sub_1000E0A3C();
    if (DataProtocol.isNull.getter())
    {
      sub_100006654(v18, v17);
      goto LABEL_5;
    }

    v24 = Data.trimmed.getter();
    v26 = v25;
    sub_100017D5C(v24, v25);
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v60 = v18;
    v27 = type metadata accessor for Logger();
    v28 = sub_1000076D4(v27, qword_10177C418);
    sub_100017D5C(v24, v26);
    v58 = v28;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    sub_100016590(v24, v26);
    v31 = os_log_type_enabled(v29, v30);
    v61 = v24;
    v62 = v26;
    if (v31)
    {
      v56 = v30;
      v57 = v29;
      v32 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v66[0] = v54;
      v55 = v32;
      *v32 = 136315138;
      sub_100017D5C(v24, v26);
      static String.Encoding.utf8.getter();
      v33 = String.init(data:encoding:)();
      v35 = v63;
      if (!v34)
      {
        v33 = Data.hexString.getter();
      }

      v36 = v33;
      v37 = v34;
      sub_100016590(v24, v26);
      sub_100016590(v24, v26);
      v38 = sub_1000136BC(v36, v37, v66);

      v39 = v55;
      *(v55 + 1) = v38;
      v40 = v57;
      _os_log_impl(&_mh_execute_header, v57, v56, "Accessory serial number: %s.", v39, 0xCu);
      sub_100007BAC(v54);
    }

    else
    {
      sub_100016590(v24, v26);

      v35 = v63;
    }

    v41 = *(*(a1 + v15) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);
    v63 = *(v35 + 32);
    v42 = *(v35 + 64);
    v43 = *(v42 + OBJC_IVAR____TtC12searchpartyd10Peripheral_injectedName + 8);
    v59 = v5;
    if (v43)
    {
      v44 = *(v42 + OBJC_IVAR____TtC12searchpartyd10Peripheral_injectedName);

      v45 = v43;
    }

    else
    {
      v46 = *(v42 + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject);

      v47 = [v46 name];
      if (!v47)
      {
        v44 = 0;
        v45 = 0xE000000000000000;
        goto LABEL_22;
      }

      v48 = v47;
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v49;
    }

LABEL_22:
    v50 = v65;
    sub_100A22DF0(v65);
    v51 = *(a1 + v15);

    v53 = v61;
    v52 = v62;
    sub_100B8AFF4(v61, v62, v44, v45, v50, v41, v51);
    (*(v64 + 8))(v50, v59);
    sub_100006654(v60, v17);
    sub_100016590(v53, v52);

    goto LABEL_9;
  }

LABEL_5:
  if (qword_1016950D0 != -1)
  {
LABEL_25:
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_1000076D4(v19, qword_10177C418);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Invalid serial number.", v22, 2u);
  }

LABEL_9:
  *a2 = 9;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 267;
  return result;
}

void sub_100E4D1FC(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v139 = a3;
  v138 = a2;
  v135 = type metadata accessor for MACAddress();
  v134 = *(v135 - 8);
  __chkstk_darwin(v135);
  v132 = &v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v7 - 8);
  v133 = (&v128 - v8);
  v9 = type metadata accessor for MultipartAccessoryPairingInfo(0);
  v129 = *(v9 - 8);
  v10 = __chkstk_darwin(v9 - 8);
  v130 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v131 = &v128 - v12;
  v13 = type metadata accessor for AccessoryProductInfo(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v136 = &v128 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  __chkstk_darwin(v16 - 8);
  v18 = &v128 - v17;
  v19 = type metadata accessor for String.Encoding();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v128 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for AirPodsPairingLockCheckResponse(0);
  static String.Encoding.utf8.getter();
  v23 = String.data(using:allowLossyConversion:)();
  v25 = v24;
  v27 = *(v20 + 8);
  v26 = v20 + 8;
  v27(v22, v19);
  if (v25 >> 60 != 15)
  {
    v137 = a4;
    v148 = v23;
    v149 = v25;
    v33 = *(a1 + 64);
    v32 = *(a1 + 72);
    v146 = v33;
    v147 = v32;
    v34 = v25 >> 62;
    if ((v25 >> 62) > 1)
    {
      if (v34 != 2)
      {
        v35 = 0;
        goto LABEL_17;
      }

      v37 = *(v23 + 16);
      v36 = *(v23 + 24);
      v38 = __OFSUB__(v36, v37);
      v35 = v36 - v37;
      if (!v38)
      {
LABEL_17:
        v39 = 60 - v35;
        if (__OFSUB__(60, v35))
        {
          __break(1u);
          goto LABEL_69;
        }

        sub_100017D5C(v33, v32);
        v142 = sub_100845C88(v39);
        v143 = v40;
        sub_100776394(&v142, 0);
        v22 = v142;
        v26 = v143;
        Data.append(_:)();
        sub_100016590(v22, v26);
        v41 = v32 >> 62;
        if ((v32 >> 62) <= 1)
        {
          if (!v41)
          {
            v42 = BYTE6(v32);
            goto LABEL_28;
          }

LABEL_25:
          LODWORD(v42) = HIDWORD(v33) - v33;
          if (!__OFSUB__(HIDWORD(v33), v33))
          {
            v42 = v42;
            goto LABEL_28;
          }

LABEL_72:
          __break(1u);
          goto LABEL_73;
        }

        if (v41 == 2)
        {
          v44 = *(v33 + 16);
          v43 = *(v33 + 24);
          v38 = __OFSUB__(v43, v44);
          v42 = v43 - v44;
          if (v38)
          {
            __break(1u);
            goto LABEL_25;
          }
        }

        else
        {
          v42 = 0;
        }

LABEL_28:
        v33 = v137;
        if (!__OFSUB__(100, v42))
        {
          v142 = sub_100845C88(100 - v42);
          v143 = v45;
          sub_100776394(&v142, 0);
          v46 = v142;
          v47 = v143;
          Data.append(_:)();
          sub_100016590(v46, v47);
          v26 = v140[10];
          v22 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo;
          v48 = *(v26 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
          v49 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
          swift_beginAccess();
          sub_1000D2A70(v48 + v49, v18, &qword_101697268, &qword_101394FE0);
          if ((v14[6])(v18, 1, v13))
          {
            sub_10000B3A8(v18, &qword_101697268, &qword_101394FE0);
          }

          else
          {
            v50 = v136;
            sub_100E6A94C(v18, v136, type metadata accessor for AccessoryProductInfo);
            sub_10000B3A8(v18, &qword_101697268, &qword_101394FE0);
            v51 = *(v50 + *(v13 + 48));
            sub_100E6A9B4(v50, type metadata accessor for AccessoryProductInfo);
            if (v51 != 2 && (v51 & 1) != 0)
            {
              goto LABEL_35;
            }
          }

          v52 = *&v22[v26];
          v53 = *(v52 + 112);
          if (v53 >> 60 == 15 || (v54 = *(v52 + 104), sub_100017D5C(v54, *(v52 + 112)), v55 = sub_100DE68D0(v54, v53), sub_100006654(v54, v53), !v55))
          {
            v22 = 0;
            v136 = 0;
            v18 = 0xF000000000000000;
            v33 = 0xF000000000000000;
            v26 = a1;
            goto LABEL_44;
          }

LABEL_35:
          v14 = &OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber;
          v56 = (*&v22[v26] + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
          v57 = v56[1];
          if (v57 >> 60 == 15)
          {
            goto LABEL_38;
          }

          v142 = *v56;
          v58 = v142;
          v143 = v57;
          sub_100017D5C(v142, v57);
          sub_1000E0A3C();
          if (DataProtocol.isNull.getter())
          {
            sub_100006654(v58, v57);
LABEL_38:
            if (qword_1016950D0 == -1)
            {
LABEL_39:
              v59 = type metadata accessor for Logger();
              sub_1000076D4(v59, qword_10177C418);

              v60 = Logger.logObject.getter();
              v61 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v60, v61))
              {
                v62 = swift_slowAlloc();
                v63 = swift_slowAlloc();
                v141[0] = v63;
                *v62 = 141558275;
                *(v62 + 4) = 1752392040;
                *(v62 + 12) = 2081;
                v64 = (*&v22[v26] + *v14);
                v65 = v64[1];
                v142 = *v64;
                v143 = v65;
                sub_10002E98C(v142, v65);
                sub_1000BC4D4(&qword_1016A40E0, &unk_101396F30);
                v66 = String.init<A>(describing:)();
                v68 = sub_1000136BC(v66, v67, v141);

                *(v62 + 14) = v68;
                _os_log_impl(&_mh_execute_header, v60, v61, "Invalid serial number %{private,mask.hash}s!", v62, 0x16u);
                sub_100007BAC(v63);
              }

LABEL_42:
              *(v33 + 32) = 0;
              *v33 = 0u;
              *(v33 + 16) = 0u;
              sub_100016590(v146, v147);
              v69 = v148;
              v70 = v149;
LABEL_58:
              sub_100016590(v69, v70);
              return;
            }

LABEL_73:
            swift_once();
            goto LABEL_39;
          }

          v106 = Data.trimmed.getter();
          v108 = v107;
          v109 = *(*&v22[v26] + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);
          if (*(v109 + 16))
          {

            v110 = sub_100771E30(v106, v108);
            if (v111)
            {
              v112 = v130;
              sub_100E6A94C(*(v109 + 56) + *(v129 + 72) * v110, v130, type metadata accessor for MultipartAccessoryPairingInfo);

              v113 = v131;
              sub_100E6ADA4(v112, v131, type metadata accessor for MultipartAccessoryPairingInfo);
              v26 = a1;
              v142 = *(a1 + *(v128 + 48));
              sub_100102194();
              v136 = FixedWidthInteger.data.getter();
              v33 = v114;
              v130 = v106;
              v115 = v108;
              v116 = v132;
              sub_100A22DF0(v132);
              v117 = v133;
              sub_100AC5D4C(v116, v133);
              (*(v134 + 8))(v116, v135);
              v118 = sub_10110DFBC(v117, *v113);
              v120 = v119;
              sub_100016590(v130, v115);
              v121 = v58;
              v18 = v120;
              sub_100006654(v121, v57);
              sub_10000B3A8(v117, &unk_1016AF8B0, &unk_1013A0700);
              v122 = v113;
              v22 = v118;
              sub_100E6A9B4(v122, type metadata accessor for MultipartAccessoryPairingInfo);
LABEL_44:
              if (qword_1016950D0 == -1)
              {
LABEL_45:
                v71 = type metadata accessor for Logger();
                sub_1000076D4(v71, qword_10177C418);
                v72 = v136;
                sub_10002E98C(v136, v33);
                v73 = Logger.logObject.getter();
                v74 = static os_log_type_t.default.getter();
                sub_100006654(v72, v33);
                v75 = os_log_type_enabled(v73, v74);
                v135 = v22;
                if (v75)
                {
                  v76 = v18;
                  v77 = swift_slowAlloc();
                  v78 = swift_slowAlloc();
                  v142 = v78;
                  *v77 = 136446210;
                  if (v33 >> 60 == 15)
                  {
                    v79 = 0;
                    v80 = 0xE000000000000000;
                  }

                  else
                  {
                    v79 = Data.hexString.getter();
                    v80 = v81;
                  }

                  v82 = sub_1000136BC(v79, v80, &v142);

                  *(v77 + 4) = v82;
                  _os_log_impl(&_mh_execute_header, v73, v74, "pairingEpoch: %{public}s", v77, 0xCu);
                  sub_100007BAC(v78);

                  v22 = v135;
                  v18 = v76;
                }

                else
                {
                }

                sub_10002E98C(v22, v18);
                v83 = Logger.logObject.getter();
                v84 = static os_log_type_t.default.getter();
                sub_100006654(v22, v18);
                v85 = os_log_type_enabled(v83, v84);
                v134 = v33;
                if (v85)
                {
                  v86 = swift_slowAlloc();
                  v87 = swift_slowAlloc();
                  v142 = v87;
                  *v86 = 136446210;
                  if (v18 >> 60 == 15)
                  {
                    v88 = 0;
                    v89 = 0xE000000000000000;
                  }

                  else
                  {
                    v88 = Data.hexString.getter();
                    v89 = v91;
                  }

                  v90 = v18;
                  v92 = sub_1000136BC(v88, v89, &v142);

                  *(v86 + 4) = v92;
                  _os_log_impl(&_mh_execute_header, v83, v84, "companionPairingEpochs: %{public}s", v86, 0xCu);
                  sub_100007BAC(v87);
                }

                else
                {
                  v90 = v18;
                }

                v93 = v140;
                swift_beginAccess();
                sub_10001F280((v93 + 22), &v142);
                v94 = v144;
                v95 = v145;
                v140 = sub_1000035D0(&v142, v144);
                v96 = *(v26 + 56);
                v133 = *(v26 + 48);
                v132 = v96;
                v97 = v148;
                v98 = v149;
                v99 = v146;
                v100 = v147;
                v131 = *(v95 + 48);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v102 = v137;
                *(v137 + 24) = AssociatedTypeWitness;
                v102[4] = swift_getAssociatedConformanceWitness();
                sub_1000280DC(v102);
                v127 = v95;
                v103 = v135;
                v104 = v134;
                v105 = v136;
                (v131)(v138, v139, v133, v132, v97, v98, v99, v100, v136, v134, v135, v90, v94, v127);
                sub_100006654(v103, v90);
                sub_100006654(v105, v104);
                sub_100007BAC(&v142);
                sub_100016590(v99, v100);
                v69 = v97;
                v70 = v98;
                goto LABEL_58;
              }

LABEL_70:
              swift_once();
              goto LABEL_45;
            }
          }

          if (qword_1016950D0 != -1)
          {
            swift_once();
          }

          v123 = type metadata accessor for Logger();
          sub_1000076D4(v123, qword_10177C418);
          v124 = Logger.logObject.getter();
          v125 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v124, v125))
          {
            v126 = swift_slowAlloc();
            *v126 = 0;
            _os_log_impl(&_mh_execute_header, v124, v125, "Missing partId info in finalizePairingPayload!", v126, 2u);
          }

          sub_100006654(v58, v57);
          sub_100016590(v106, v108);

          goto LABEL_42;
        }

LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      __break(1u);
    }

    else if (!v34)
    {
      v35 = BYTE6(v25);
      goto LABEL_17;
    }

    LODWORD(v35) = HIDWORD(v23) - v23;
    if (__OFSUB__(HIDWORD(v23), v23))
    {
      __break(1u);
      goto LABEL_72;
    }

    v35 = v35;
    goto LABEL_17;
  }

  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_1000076D4(v28, qword_10177C418);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "Unable to decode masked apple ID", v31, 2u);
  }

  *(a4 + 32) = 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
}

uint64_t sub_100E4E128@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v92 = a2;
  v4 = type metadata accessor for MACAddress();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OwnedBeaconGroup(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OwnedBeaconRecord(0);
  __chkstk_darwin(v11);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v14 - 8);
  v15 = *(v2 + 80);
  v16 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo;
  v90 = v2;
  v91 = v15;
  v17 = (*(v15 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
  v18 = v17[1];
  if (v18 >> 60 == 15)
  {
    goto LABEL_4;
  }

  v88 = v7;
  v89 = a1;
  v93[0] = *v17;
  v19 = v93[0];
  v93[1] = v18;
  v20 = v18;
  sub_100017D5C(v93[0], v18);
  sub_1000E0A3C();
  if (DataProtocol.isNull.getter())
  {
    sub_100006654(v19, v20);
LABEL_4:
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000076D4(v21, qword_10177C418);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Invalid serial number.", v24, 2u);
    }

    sub_100E6259C();
    v25 = swift_allocError();
    *v26 = 1;
    *v92 = v25;
    sub_1000BC4D4(&qword_1016BCD48, &qword_1013EAD58);
    return swift_storeEnumTagMultiPayload();
  }

  v80 = v5;
  v81 = v4;
  v84 = v19;
  v79 = v20;
  v28 = Data.trimmed.getter();
  v30 = v29;
  sub_100017D5C(v28, v29);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  v32 = sub_1000076D4(v31, qword_10177C418);
  sub_100017D5C(v28, v30);
  v86 = v32;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  sub_100016590(v28, v30);
  v35 = os_log_type_enabled(v33, v34);
  v87 = v13;
  v82 = v28;
  v83 = v30;
  v85 = v10;
  if (v35)
  {
    v78 = v11;
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v93[0] = v37;
    *v36 = 141558275;
    *(v36 + 4) = 1752392040;
    *(v36 + 12) = 2081;
    static String.Encoding.utf8.getter();
    v38 = String.init(data:encoding:)();
    if (!v39)
    {
      v38 = Data.hexString.getter();
    }

    v40 = v38;
    v41 = v39;
    sub_100016590(v28, v30);
    v42 = sub_1000136BC(v40, v41, v93);

    *(v36 + 14) = v42;
    _os_log_impl(&_mh_execute_header, v33, v34, "Creating beacon for %{private,mask.hash}s", v36, 0x16u);
    sub_100007BAC(v37);

    v43 = v85;
    v44 = v78;
  }

  else
  {
    v43 = v10;
    sub_100016590(v28, v30);

    v44 = v11;
  }

  v45 = *(*(v91 + v16) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);
  swift_bridgeObjectRetain_n();
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v93[0] = v49;
    *v48 = 136315394;
    type metadata accessor for MultipartAccessoryPairingInfo(0);
    sub_100101BAC();
    v50 = Dictionary.description.getter();
    v52 = v44;
    v53 = sub_1000136BC(v50, v51, v93);

    *(v48 + 4) = v53;
    v44 = v52;
    *(v48 + 12) = 2048;
    v54 = *(v45 + 16);

    *(v48 + 14) = v54;
    v43 = v85;

    _os_log_impl(&_mh_execute_header, v46, v47, "All serials: %s. Count %ld", v48, 0x16u);
    sub_100007BAC(v49);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v55 = *(v91 + v16);
  v56 = *(v90 + 32);
  v57 = *(v90 + 64);
  v58 = *(v57 + OBJC_IVAR____TtC12searchpartyd10Peripheral_injectedName + 8);
  if (v58)
  {
    v59 = *(v57 + OBJC_IVAR____TtC12searchpartyd10Peripheral_injectedName);

    v60 = v58;
  }

  else
  {
    v61 = *(v57 + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject);

    v62 = [v61 name];
    if (!v62)
    {
      v59 = 0;
      v60 = 0xE000000000000000;
      goto LABEL_25;
    }

    v63 = v62;
    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v64;
  }

LABEL_25:
  v65 = v88;
  sub_100A22DF0(v88);
  v66 = v87;
  sub_100B8BFA0(v87, v43, v89, v55, v59, v60, v65, v45);
  (*(v80 + 8))(v65, v81);

  v67 = *(v91 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_locationMonitor);
  v68 = OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_currentLocation;
  swift_beginAccess();
  v69 = *(v67 + v68);
  if (v69)
  {
    v70 = v66 + *(v44 + 20);
    v71 = type metadata accessor for Transaction();
    __chkstk_darwin(v71);
    *(&v78 - 32) = 0;
    *(&v78 - 3) = v69;
    *(&v78 - 2) = v70;
    *(&v78 - 1) = v56;
    v72 = v69;
    static Transaction.named<A>(_:with:)();
    sub_100016590(v82, v83);
    sub_100006654(v84, v79);

    v66 = v87;
  }

  else
  {
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&_mh_execute_header, v73, v74, "Unable to retrieve current location from CL for pairing", v75, 2u);
    }

    sub_100006654(v84, v79);
    sub_100016590(v82, v83);
  }

  v76 = *(sub_1000BC4D4(&qword_1016973B8, &qword_1013EAD60) + 48);
  v77 = v92;
  sub_100E6ADA4(v66, v92, type metadata accessor for OwnedBeaconRecord);
  sub_100E6ADA4(v43, v77 + v76, type metadata accessor for OwnedBeaconGroup);
  sub_1000BC4D4(&qword_1016BCD48, &qword_1013EAD58);
  return swift_storeEnumTagMultiPayload();
}

void sub_100E4EA98(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v6 - 8);
  v101 = (&v94 - v7);
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v8 - 8);
  v105 = (&v94 - v9);
  v10 = type metadata accessor for UUID();
  v106 = *(v10 - 8);
  __chkstk_darwin(v10);
  v102 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OwnedBeaconGroup(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v111 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v99 = &v94 - v17;
  v18 = __chkstk_darwin(v16);
  v100 = &v94 - v19;
  __chkstk_darwin(v18);
  v104 = &v94 - v20;
  v21 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v21 - 8);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v109 = v13;
  v22 = type metadata accessor for Logger();
  v23 = sub_1000076D4(v22, qword_10177C418);
  sub_100017D5C(a1, a2);
  v108 = v23;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  sub_100016590(a1, a2);
  v26 = os_log_type_enabled(v24, v25);
  v112 = a3;
  v113 = v10;
  v110 = v12;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v115[0] = v28;
    *v27 = 141558275;
    *(v27 + 4) = 1752392040;
    *(v27 + 12) = 2081;
    static String.Encoding.utf8.getter();
    v29 = String.init(data:encoding:)();
    if (v30)
    {
      v31 = v30;
      v32 = a1;
      v33 = a2;
    }

    else
    {
      v32 = a1;
      v33 = a2;
      v29 = Data.hexString.getter();
      v31 = v34;
    }

    v35 = sub_1000136BC(v29, v31, v115);

    *(v27 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v24, v25, "Clean up pending pairing for %{private,mask.hash}s", v27, 0x16u);
    sub_100007BAC(v28);

    a2 = v33;
    a1 = v32;
    a3 = v112;
  }

  else
  {
  }

  v36 = swift_allocBox();
  sub_100E6A94C(a3, v37, type metadata accessor for OwnedBeaconGroup);
  if (sub_100519780(a1, a2))
  {
    v97 = a1;
    v98 = a2;
    v38 = dispatch_group_create();
    dispatch_group_enter(v38);
    isa = v103[4].isa;
    v96 = swift_allocObject();
    *(v96 + 16) = v38;

    v103 = v38;
    v40 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v41 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_101385D80;
    *(v42 + 56) = &type metadata for String;
    *(v42 + 64) = sub_100008C00();
    *(v42 + 32) = 0x65736C6166;
    *(v42 + 40) = 0xE500000000000000;
    os_log(_:dso:log:_:_:)(v40, &_mh_execute_header, v41, "Modify record. Disk First? (%@)", 31, 2, v42);

    v43 = objc_autoreleasePoolPush();
    sub_1011218E0(a3);
    v45 = v44;
    v95 = v44;
    objc_autoreleasePoolPop(v43);
    sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
    v111 = isa;
    type metadata accessor for CloudKitCoordinator();
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v94 = type metadata accessor for OwnedBeaconGroup;
    v46 = v104;
    sub_100E6A94C(a3, v104, type metadata accessor for OwnedBeaconGroup);
    v47 = *(v109 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = sub_1001DA00C;
    *(v48 + 24) = v36;
    v49 = a3;
    v107 = v36;
    sub_100E6ADA4(v46, v48 + ((v47 + 32) & ~v47), type metadata accessor for OwnedBeaconGroup);

    sub_100FDCA40(v45, sub_1001DA038, v48);

    v50 = swift_allocObject();
    v51 = v96;
    *(v50 + 16) = sub_100E691D0;
    *(v50 + 24) = v51;

    Future.addFailure(block:)();

    sub_100E6A94C(v49, v46, v94);
    v52 = (v47 + 16) & ~v47;
    v53 = (v14 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = swift_allocObject();
    sub_100E6ADA4(v46, v54 + v52, type metadata accessor for OwnedBeaconGroup);
    *(v54 + v53) = v111;
    v55 = (v54 + ((v53 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v55 = sub_100E691D0;
    v55[1] = v51;

    Future.addSuccess(block:)();

    v56 = v103;
    OS_dispatch_group.wait()();
    v57 = v105;
    sub_100519BCC(v97, v98, v105);
    v58 = v106;
    v59 = v113;
    if ((*(v106 + 48))(v57, 1, v113) == 1)
    {

      v60 = &qword_1016980D0;
      v61 = &unk_10138F3B0;
    }

    else
    {
      v75 = v102;
      (*(v58 + 32))(v102, v57, v59);
      v57 = v101;
      sub_100AC53EC(v75, v101);
      if ((*(v109 + 48))(v57, 1, v110) != 1)
      {
        v76 = v100;
        sub_100E6ADA4(v57, v100, type metadata accessor for OwnedBeaconGroup);
        v77 = sub_100B93B5C(v76);
        if (v77)
        {
          v78 = v77;
          v79 = v99;
          sub_100E6A94C(v76, v99, type metadata accessor for OwnedBeaconGroup);
          swift_errorRetain();
          v80 = Logger.logObject.getter();
          v81 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v80, v81))
          {
            v82 = v58;
            v83 = swift_slowAlloc();
            v115[0] = swift_slowAlloc();
            *v83 = 141558531;
            *(v83 + 4) = 1752392040;
            *(v83 + 12) = 2081;
            sub_100E62554(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v84 = dispatch thunk of CustomStringConvertible.description.getter();
            v85 = v79;
            v86 = v84;
            v88 = v87;
            sub_100E6A9B4(v85, type metadata accessor for OwnedBeaconGroup);
            v89 = sub_1000136BC(v86, v88, v115);

            *(v83 + 14) = v89;
            *(v83 + 22) = 2082;
            v114 = v78;
            swift_errorRetain();
            sub_1000BC4D4(&qword_101696960, &unk_10138B220);
            v90 = String.init<A>(describing:)();
            v92 = sub_1000136BC(v90, v91, v115);

            *(v83 + 24) = v92;
            _os_log_impl(&_mh_execute_header, v80, v81, "Failed to delete pending record %{private,mask.hash}s due to %{public}s", v83, 0x20u);
            swift_arrayDestroy();

            sub_100E6A9B4(v100, type metadata accessor for OwnedBeaconGroup);
            (*(v82 + 8))(v75, v113);
            goto LABEL_28;
          }

          sub_100E6A9B4(v79, type metadata accessor for OwnedBeaconGroup);
          v93 = v76;
        }

        else
        {

          v93 = v76;
        }

        sub_100E6A9B4(v93, type metadata accessor for OwnedBeaconGroup);
        (*(v58 + 8))(v75, v59);
        goto LABEL_28;
      }

      (*(v58 + 8))(v75, v59);

      v60 = &unk_1016AF8B0;
      v61 = &unk_1013A0700;
    }

    sub_10000B3A8(v57, v60, v61);
LABEL_28:

    return;
  }

  v62 = a3;
  v63 = v111;
  sub_100E6A94C(v62, v111, type metadata accessor for OwnedBeaconGroup);
  sub_100017D5C(a1, a2);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.error.getter();
  sub_100016590(a1, a2);
  if (!os_log_type_enabled(v64, v65))
  {

    sub_100E6A9B4(v63, type metadata accessor for OwnedBeaconGroup);
    goto LABEL_28;
  }

  v66 = swift_slowAlloc();
  v115[0] = swift_slowAlloc();
  *v66 = 141558531;
  *(v66 + 4) = 1752392040;
  *(v66 + 12) = 2081;
  static String.Encoding.utf8.getter();
  v67 = String.init(data:encoding:)();
  if (!v68)
  {
    v67 = Data.hexString.getter();
  }

  v69 = sub_1000136BC(v67, v68, v115);

  *(v66 + 14) = v69;
  *(v66 + 22) = 2080;
  sub_100E62554(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v70 = v111;
  v71 = dispatch thunk of CustomStringConvertible.description.getter();
  v73 = v72;
  sub_100E6A9B4(v70, type metadata accessor for OwnedBeaconGroup);
  v74 = sub_1000136BC(v71, v73, v115);

  *(v66 + 24) = v74;
  _os_log_impl(&_mh_execute_header, v64, v65, "Unable to unpair %{private,mask.hash}s from %s!", v66, 0x20u);
  swift_arrayDestroy();
}

void sub_100E4F89C(uint64_t a1, NSObject *a2)
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
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_10177C418);
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
    sub_100E6ADA4(v12, v9, type metadata accessor for OwnedBeaconGroup);
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    v23 = sub_1000076D4(v22, qword_10177C418);
    sub_100E6A94C(v9, v7, type metadata accessor for OwnedBeaconGroup);
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
      sub_100E62554(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      sub_100E6A9B4(v7, type metadata accessor for OwnedBeaconGroup);
      v31 = sub_1000136BC(v28, v30, &v33);

      *(v26 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v24, v25, "Successfully modified existing group %{private,mask.hash}s", v26, 0x16u);
      sub_100007BAC(v27);
    }

    else
    {

      sub_100E6A9B4(v7, type metadata accessor for OwnedBeaconGroup);
    }

    sub_1005160CC(v23);
    sub_100E6A9B4(v9, type metadata accessor for OwnedBeaconGroup);
  }

  dispatch_group_leave(a2);
}

uint64_t sub_100E4FD64(uint64_t a1, unint64_t a2)
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
    if (qword_1016950D0 == -1)
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
  sub_1000076D4(v12, qword_10177C418);
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

uint64_t sub_100E50044(void (*a1)(__int128 *), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v96 = a2;
  v97 = a1;
  v7 = type metadata accessor for BinaryDecodingError();
  v95 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BinaryDecoder();
  v90 = *(v10 - 8);
  __chkstk_darwin(v10);
  v89 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Bit();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v91 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v83 - v16;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v105 = 0;
    v103 = 0u;
    v104 = 0u;
    LOBYTE(v106) = 11;
    v107 = 1;
    v97(&v103);
    return sub_10000B3A8(&v103, &qword_101699380, &unk_1013918F0);
  }

  v19 = Strong;
  v86 = v13;
  v87 = v12;
  v20 = *(Strong + 144);
  v21 = v19[19];
  if (v21 >> 60 == 15)
  {
    v22 = 0;
  }

  else
  {
    v22 = v20;
  }

  v23 = 0xC000000000000000;
  if (v21 >> 60 != 15)
  {
    v23 = v19[19];
  }

  v101 = v22;
  v102 = v23;
  sub_10002E98C(v20, v21);
  sub_100017D5C(a4, a5);
  v94 = a4;
  sub_100ED428C(1uLL, a4, a5, &v103);
  v24 = v103;
  Data.append(_:)();
  sub_100016590(v24, *(&v24 + 1));
  v25 = v101;
  v26 = v102;
  v27 = v19[18];
  v28 = v19[19];
  v19[18] = v101;
  v19[19] = v26;
  sub_100017D5C(v25, v26);
  sub_100006654(v27, v28);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  v92 = sub_1000076D4(v29, qword_10177C418);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();
  v32 = os_log_type_enabled(v30, v31);
  v93 = v9;
  v85 = v17;
  v84 = v10;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    *&v103 = v83;
    *v33 = 136315138;
    swift_beginAccess();
    v34 = a5;
    v88 = v7;
    v36 = v101;
    v35 = v102;
    sub_100017D5C(v101, v102);
    v37 = Data.description.getter();
    v39 = v38;
    v40 = v36;
    a5 = v34;
    sub_100016590(v40, v35);
    v41 = sub_1000136BC(v37, v39, &v103);

    *(v33 + 4) = v41;
    v7 = v88;
    _os_log_impl(&_mh_execute_header, v30, v31, "localReadBuffer %s", v33, 0xCu);
    sub_100007BAC(v83);
  }

  v42 = v94;
  v43 = sub_100017C08(v94, a5);
  if ((v43 & 0x100) != 0)
  {
    goto LABEL_17;
  }

  LOBYTE(v103) = v43;
  sub_1000198E8();
  v44 = FixedWidthInteger.bits()();
  if (!*(v44 + 16))
  {

LABEL_17:
    sub_100E6259C();
    v58 = swift_allocError();
    *v59 = 2;
    swift_willThrow();
    goto LABEL_18;
  }

  v88 = v7;
  v45 = v86;
  v46 = v85;
  v47 = v87;
  (*(v86 + 16))(v85, v44 + ((*(v45 + 80) + 32) & ~*(v45 + 80)), v87);

  v48 = v91;
  (*(v45 + 104))(v91, enum case for Bit.one(_:), v47);
  sub_100E62554(&qword_101698660, 255, &type metadata accessor for Bit, &protocol conformance descriptor for Bit);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v49 = *(v45 + 8);
  v49(v48, v47);
  if (v103 == LOBYTE(v98[0]))
  {
    v91 = v49;
    v50 = v46;
    v51 = v89;
    BinaryDecoder.init()();
    swift_beginAccess();
    v52 = v19[25];
    v53 = v19[26];
    sub_1000035D0(v19 + 22, v52);
    v54 = sub_1010A4E28(v52, v53);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    swift_beginAccess();
    v56 = v101;
    v57 = v102;
    v99 = v54;
    v100 = AssociatedConformanceWitness;
    sub_1000280DC(v98);
    sub_100017D5C(v56, v57);
    BinaryDecoder.decode<A>(_:from:)();
    sub_100016590(v56, v57);
    v76 = v19[18];
    v77 = v19[19];
    *(v19 + 9) = xmmword_10138BBF0;
    sub_100006654(v76, v77);
    v78 = v99;
    v79 = v100;
    v80 = sub_1000035D0(v98, v99);
    *(&v104 + 1) = v78;
    v105 = *(v79 + 8);
    v106 = *(v79 + 16);
    v81 = sub_1000280DC(&v103);
    (*(*(v78 - 8) + 16))(v81, v80, v78);
    v107 = 0;
    v97(&v103);

    (*(v90 + 8))(v51, v84);
    (v91)(v50, v87);
    sub_10000B3A8(&v103, &qword_101699380, &unk_1013918F0);
    sub_100007BAC(v98);
    return sub_100016590(v101, v102);
  }

  sub_100E62554(&qword_101696E30, 255, &type metadata accessor for BinaryDecodingError, &protocol conformance descriptor for BinaryDecodingError);
  v74 = v88;
  v58 = swift_allocError();
  (*(v95 + 104))(v75, enum case for BinaryDecodingError.insufficientData(_:), v74);
  swift_willThrow();
  v49(v46, v47);
  v7 = v74;
LABEL_18:
  sub_100016590(v101, v102);
  *&v103 = v58;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v60 = v93;
  if (!swift_dynamicCast())
  {
LABEL_24:

    sub_100017D5C(v42, a5);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    sub_100016590(v42, a5);
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *&v103 = v68;
      *v67 = 136446210;
      v69 = Data.description.getter();
      v71 = sub_1000136BC(v69, v70, &v103);

      *(v67 + 4) = v71;
      _os_log_impl(&_mh_execute_header, v65, v66, "Failed to decode data %{public}s", v67, 0xCu);
      sub_100007BAC(v68);
    }

    v72 = v19[18];
    v73 = v19[19];
    *(v19 + 9) = xmmword_10138BBF0;
    sub_100006654(v72, v73);
    *&v103 = v58;
    LOBYTE(v106) = 10;
    v107 = 1;
    swift_errorRetain();
    v97(&v103);

    return sub_10000B3A8(&v103, &qword_101699380, &unk_1013918F0);
  }

  v61 = v95;
  if ((*(v95 + 88))(v60, v7) != enum case for BinaryDecodingError.insufficientData(_:))
  {
    (*(v61 + 8))(v60, v7);
    goto LABEL_24;
  }

  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&_mh_execute_header, v62, v63, "insufficientData. Keep reading...", v64, 2u);
  }
}

uint64_t sub_100E50C0C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
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
    sub_10001F280(a1, v15);
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    sub_10000A748(v15, v13 + 24);
    *(v13 + 64) = a2;
    sub_1000BC4D4(&qword_1016BCD40, &unk_1013EAD48);
    swift_allocObject();

    return Future.init(_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100E50DD0(void (*a1)(_OWORD *), uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = type metadata accessor for BinaryEncoder();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v41[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v49 = 0;
    memset(v48, 0, sizeof(v48));
    v50 = 267;
    a1(v48);
    return sub_10000B3A8(v48, &qword_1016BCD38, &qword_1013EAD40);
  }

  v14 = Strong;
  v15 = *(Strong + 128);
  v16 = *(Strong + 136);
  v47 = a1;
  *(Strong + 128) = a1;
  *(Strong + 136) = a2;

  sub_1000BB27C(v15, v16);
  BinaryEncoder.init()();
  sub_1000035D0(a4, a4[3]);
  v17 = 0;
  v18 = BinaryEncoder.encode<A>(_:)();
  v46 = v20;
  v47 = v18;
  v44 = a5;
  __chkstk_darwin(v18);
  *&v41[-16] = v21;
  v22 = v21;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();

  v23 = *&v48[0];
  if (__OFSUB__(*&v48[0], 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  v17 = Data.chunked(into:)();
  if (qword_1016950D0 != -1)
  {
LABEL_11:
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_1000076D4(v24, qword_10177C418);
  swift_retain_n();

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v42 = v26;
    v28 = v27;
    v43 = swift_slowAlloc();
    *&v48[0] = v43;
    *v28 = 136315906;
    v29 = Array.description.getter();
    v45 = v10;
    v31 = sub_1000136BC(v29, v30, v48);

    *(v28 + 4) = v31;
    *(v28 + 12) = 2048;
    *(v28 + 14) = v23;
    *(v28 + 22) = 2048;
    swift_beginAccess();
    v32 = *(*(v14 + 160) + 16);

    *(v28 + 24) = v32;

    *(v28 + 32) = 2080;

    v33 = Array.description.getter();
    v34 = v12;
    v36 = v35;

    v37 = v33;
    v10 = v45;
    v38 = sub_1000136BC(v37, v36, v48);
    v12 = v34;

    *(v28 + 34) = v38;
    _os_log_impl(&_mh_execute_header, v25, v42, "Enqueuing %s. MTU %ld. Current queue [%ld] %s", v28, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
  }

  v39 = v44;
  v40 = sub_1001D97CC(v17);

  swift_beginAccess();
  sub_100398324(v40);
  swift_endAccess();
  sub_100E51428(v39, a4);
  sub_100016590(v47, v46);

  return (*(v10 + 8))(v12, v9);
}

void sub_100E51428(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchTime();
  v73 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v66 - v10;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = v3[2];
  *v15 = v16;
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v15, v12);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_26:
    swift_once();
LABEL_4:
    v19 = type metadata accessor for Logger();
    v20 = sub_1000076D4(v19, qword_10177C418);
    sub_100017D5C(v15, v6);

    v68 = v20;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    sub_100016590(v15, v6);

    v23 = os_log_type_enabled(v21, v22);
    v74 = v15;
    v72 = a1;
    if (v23)
    {
      v24 = swift_slowAlloc();
      *&v80 = swift_slowAlloc();
      *v24 = 136315394;
      v25 = Data.hexString.getter();
      v27 = sub_1000136BC(v25, v26, &v80);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2082;
      v28 = sub_100A5AADC();
      v30 = sub_1000136BC(v28, v29, &v80);

      *(v24 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v21, v22, "processQueuedUpdates: writing %s. Characteristic %{public}s.", v24, 0x16u);
      swift_arrayDestroy();
      v15 = v74;
    }

    v31 = swift_allocObject();
    *(v31 + 16) = 0u;
    v32 = v31 + 16;
    *(v31 + 32) = 0u;
    *(v31 + 48) = 0;
    *(v31 + 56) = 267;
    v33 = dispatch_group_create();
    dispatch_group_enter(v33);
    v71 = v6;
    *&v80 = sub_100A59B98(v15, v6);
    v34 = swift_allocObject();
    *(v34 + 16) = v31;
    *(v34 + 24) = v33;
    v70 = v31;

    v35 = v33;
    sub_1000BC4D4(&qword_1016C4520, &unk_1013B6090);
    sub_1000041A4(&qword_101699348, &qword_1016C4520, &unk_1013B6090, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher.oneshot(_:)();

    static DispatchTime.now()();
    + infix(_:_:)();
    isa = v73[1].isa;
    v37 = v69;
    isa(v9, v69);
    v73 = v35;
    OS_dispatch_group.wait(timeout:)();
    isa(v11, v37);
    if (static DispatchTimeoutResult.== infix(_:_:)())
    {
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v38, v39, "Timed out waiting for writeFuture", v40, 2u);
      }
    }

    swift_beginAccess();
    sub_1000D2A70(v32, &v80, &qword_1016B1CA0, &qword_1013918C0);
    if ((v82 & 1) == 0)
    {

      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v76[0] = v60;
        *v59 = 134218242;
        *(v59 + 4) = *(v3[20] + 16);

        *(v59 + 12) = 2080;

        v61 = Array.description.getter();
        v63 = v62;

        v64 = sub_1000136BC(v61, v63, v76);

        *(v59 + 14) = v64;
        _os_log_impl(&_mh_execute_header, v57, v58, "writeFuture success. writeQueue [%ld] %s", v59, 0x16u);
        sub_100007BAC(v60);
      }

      else
      {
      }

      v65 = v71;
      sub_100E51428(v72, v67);

      sub_100016590(v74, v65);
      goto LABEL_23;
    }

    v78 = v80;
    v79[0] = *v81;
    *(v79 + 9) = *&v81[9];
    sub_100101AA8(&v78, v76);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    v43 = os_log_type_enabled(v41, v42);
    v44 = v71;
    if (v43)
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v75 = v46;
      *v45 = 136446210;
      v47 = sub_1013181BC();
      v49 = v48;
      sub_100101B04(v76);
      v50 = sub_1000136BC(v47, v49, &v75);

      *(v45 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v41, v42, "writeFuture error: %{public}s", v45, 0xCu);
      sub_100007BAC(v46);

      v51 = v3[16];
      if (v51)
      {
LABEL_13:
        v52 = v3[17];
        sub_100101B58();
        v53 = swift_allocError();
        sub_100101AA8(&v78, v54);
        v76[0] = v53;
        v77 = 256;

        v51(v76);
        sub_1000BB27C(v51, v52);

        sub_100016590(v74, v44);
        sub_10000B3A8(v76, &qword_1016BCD38, &qword_1013EAD40);
LABEL_20:
        sub_100101B04(&v78);
LABEL_23:

        return;
      }
    }

    else
    {

      sub_100101B04(v76);
      v51 = v3[16];
      if (v51)
      {
        goto LABEL_13;
      }
    }

    sub_100016590(v74, v44);

    goto LABEL_20;
  }

  swift_beginAccess();
  v18 = v3[20];
  if (v18[2])
  {
    v69 = v6;
    v67 = a2;
    swift_beginAccess();
    v15 = v18[4];
    v6 = v18[5];
    sub_100017D5C(v15, v6);
    sub_100A077EC(0, 1);
    swift_endAccess();
    if (qword_1016950D0 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_26;
  }

  v55 = v3[16];
  if (v55)
  {
    v56 = v3[17];
    sub_10001F280(a2, &v80);
    v82 = 0;

    v55(&v80);
    sub_1000BB27C(v55, v56);
    sub_10000B3A8(&v80, &qword_1016BCD38, &qword_1013EAD40);
  }
}