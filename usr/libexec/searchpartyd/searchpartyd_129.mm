uint64_t sub_100E51DD4()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + 16);
  *v5 = v6;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
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
  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177C418);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Creating new AirPodsLEPairingManager.", v11, 2u);
  }

  v12 = *(v1 + 32);
  v13 = *(v1 + 40);
  v14 = *(v1 + 72);
  v15 = *(*(*(v1 + 80) + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);
  type metadata accessor for AirPodsLEPairingManager();
  swift_allocObject();

  v16 = sub_1001C0AA4(v12, v13, v14, v15);
  *(v1 + 216) = v16;

  return v16;
}

uint64_t sub_100E52024(uint64_t a1, uint64_t a2)
{
  v2[13] = a1;
  v2[14] = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  v4 = type metadata accessor for DispatchQoS();
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();
  v5 = type metadata accessor for MACAddress();
  v2[21] = v5;
  v6 = *(v5 - 8);
  v2[22] = v6;
  v2[23] = *(v6 + 64);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return _swift_task_switch(sub_100E521B0, 0, 0);
}

uint64_t sub_100E521B0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[26] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[27] = v2;
    *v2 = v0;
    v2[1] = sub_100E522CC;

    return daemon.getter();
  }

  else
  {

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_100E522CC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 224) = a1;

  v3 = swift_task_alloc();
  *(v2 + 232) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for StandaloneBeaconService();
  v6 = sub_100E62554(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100E62554(&qword_10169F450, 255, type metadata accessor for StandaloneBeaconService, &unk_1013E3258);
  *v3 = v9;
  v3[1] = sub_100E524B0;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100E524B0(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 240) = a1;
  *(v4 + 248) = v1;

  if (v1)
  {

    v5 = sub_100E52608;
    v6 = 0;
  }

  else
  {

    v5 = sub_100E52750;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100E52608()
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

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100E52750()
{
  v1 = v0[31];
  sub_100F85A4C(v0[14], *(v0[30] + 128));
  v0[32] = v1;
  if (v1)
  {
    v2 = sub_100E52C84;
  }

  else
  {
    v0[33] = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

    v2 = sub_100E527F4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100E527F4()
{
  v32 = v0;
  v1 = v0[33];
  if (*(v1 + 16))
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v2 = v0[24];
    v4 = v0[21];
    v3 = v0[22];
    v5 = v0[14];
    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177C418);
    (*(v3 + 16))(v2, v5, v4);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[24];
    v12 = v0[21];
    v11 = v0[22];
    if (v9)
    {
      v13 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = v30;
      *v13 = 134218242;
      *(v13 + 4) = *(v1 + 16);

      *(v13 + 12) = 2082;
      sub_100E62554(&qword_1016A4210, 255, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      (*(v11 + 8))(v10, v12);
      v17 = sub_1000136BC(v14, v16, &v31);

      *(v13 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v7, v8, "Found %ld beacons matching %{public}s", v13, 0x16u);
      sub_100007BAC(v30);
    }

    else
    {

      (*(v11 + 8))(v10, v12);
    }

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v31 = v23;
      *v22 = 136315138;
      type metadata accessor for StandaloneBeacon(0);
      v24 = Array.description.getter();
      v26 = v25;

      v27 = sub_1000136BC(v24, v26, &v31);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "Existing standalone beacons: %s", v22, 0xCu);
      sub_100007BAC(v23);
    }

    else
    {
    }

    v28 = v0[1];

    return v28();
  }

  else
  {

    v18 = swift_task_alloc();
    v0[34] = v18;
    *v18 = v0;
    v18[1] = sub_100E52E90;
    v19 = v0[26];

    return unsafeBlocking<A>(_:)(v0 + 35, sub_100E693CC, v19, &type metadata for Bool);
  }
}

uint64_t sub_100E52C84()
{
  v14 = v0;

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
  v5 = v0[32];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v0[11] = v5;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000136BC(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to startStandaloneLEPairing due to %{public}s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100E52E90()
{

  return _swift_task_switch(sub_100E52FA8, 0, 0);
}

uint64_t sub_100E52FA8()
{
  if (v0[35])
  {
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_10177AD08);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "AirPods Pairing in progress. Not pairing.", v4, 2u);
    }
  }

  else
  {
    v6 = v0[25];
    v5 = v0[26];
    v7 = v0[22];
    v8 = v0[21];
    v18 = v0[19];
    v19 = v0[18];
    v15 = v0[20];
    v16 = v0[17];
    v9 = v0[15];
    v17 = v0[16];
    (*(v7 + 16))(v6, v0[14], v8);
    v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = v5;
    (*(v7 + 32))(v11 + v10, v6, v8);
    v0[6] = sub_100E693D4;
    v0[7] = v11;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100006684;
    v0[5] = &unk_101652DC8;
    v12 = _Block_copy(v0 + 2);

    static DispatchQoS.unspecified.getter();
    v0[12] = _swiftEmptyArrayStorage;
    sub_100E62554(&qword_1016A30B0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v12);

    (*(v17 + 8))(v16, v9);
    (*(v18 + 8))(v15, v19);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_100E53348@<X0>(char *a1@<X8>)
{
  result = QueueSynchronizer.conditionalSync<A>(_:)();
  if (v5)
  {
    v3 = 1;
  }

  else
  {
    result = QueueSynchronizer.conditionalSync<A>(_:)();
    v3 = v4;
  }

  *a1 = v3;
  return result;
}

void sub_100E533EC(char *a1, int a2, int a3)
{
  v105 = a3;
  v114 = a1;
  v5 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v5 - 8);
  v107 = &v99 - v6;
  v7 = sub_1000BC4D4(&qword_1016B5608, &qword_1013D6BE8);
  v109 = *(v7 - 8);
  __chkstk_darwin(v7);
  v108 = &v99 - v8;
  v9 = type metadata accessor for Endianness();
  __chkstk_darwin(v9 - 8);
  v101 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MACAddress();
  v112 = *(v11 - 8);
  v113 = v11;
  v12 = *(v112 + 64);
  v13 = __chkstk_darwin(v11);
  v106 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v104 = &v99 - v15;
  v16 = __chkstk_darwin(v14);
  v110 = &v99 - v17;
  v18 = __chkstk_darwin(v16);
  v100 = &v99 - v19;
  __chkstk_darwin(v18);
  v21 = &v99 - v20;
  v22 = type metadata accessor for DispatchPredicate();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = (&v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *(v3 + 16);
  *v25 = v26;
  (*(v23 + 104))(v25, enum case for DispatchPredicate.onQueue(_:), v22);
  v27 = v26;
  v28 = _dispatchPreconditionTest(_:)();
  (*(v23 + 8))(v25, v22);
  if ((v28 & 1) == 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  v102 = v27;
  v111 = a2;
  v29 = *(v3 + 80);
  v30 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo;
  v31 = *(v29 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
  v32 = *(v31 + 112);
  v115 = v3;
  v103 = v7;
  if (v32 >> 60 == 15)
  {
    v33 = 0;
  }

  else
  {
    v34 = *(v31 + 104);
    sub_100017D5C(v34, v32);
    v33 = sub_100DE6630(v34, v32);
    sub_100006654(v34, v32);
  }

  My = type metadata accessor for Feature.FindMy();
  v118 = My;
  v36 = sub_100E62554(&qword_1016AF950, 255, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v119 = v36;
  v37 = sub_1000280DC(v117);
  v38 = *(*(My - 8) + 104);
  v38(v37, enum case for Feature.FindMy.smilingWheel(_:), My);
  v39 = isFeatureEnabled(_:)();
  sub_100007BAC(v117);
  if ((v39 & 1) != 0 && v33)
  {
    sub_100E674F8(v114);
    return;
  }

  v118 = My;
  v119 = v36;
  v40 = sub_1000280DC(v117);
  v38(v40, enum case for Feature.FindMy.magneticCow(_:), My);
  v41 = isFeatureEnabled(_:)();
  sub_100007BAC(v117);
  if (v41)
  {
    if (qword_1016950D0 == -1)
    {
LABEL_10:
      v42 = type metadata accessor for Logger();
      sub_1000076D4(v42, qword_10177C418);
      v44 = v112;
      v43 = v113;
      v45 = v114;
      (*(v112 + 16))(v21, v114, v113);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v117[0] = v49;
        *v48 = 141558275;
        *(v48 + 4) = 1752392040;
        *(v48 + 12) = 2081;
        sub_100E62554(&qword_1016A4210, 255, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
        v50 = dispatch thunk of CustomStringConvertible.description.getter();
        v52 = v51;
        (*(v44 + 8))(v21, v43);
        v53 = sub_1000136BC(v50, v52, v117);

        *(v48 + 14) = v53;
        _os_log_impl(&_mh_execute_header, v46, v47, "UPA pairing for %{private,mask.hash}s.", v48, 0x16u);
        sub_100007BAC(v49);
      }

      else
      {

        (*(v44 + 8))(v21, v43);
      }

      sub_100E66E68(v45, v111 & 1);
      return;
    }

LABEL_37:
    swift_once();
    goto LABEL_10;
  }

  v54 = *(v29 + v30);
  v55 = *(v54 + 112);
  v56 = v110;
  if (v55 >> 60 != 15)
  {
    v57 = *(v54 + 104);
    sub_100017D5C(v57, *(v54 + 112));
    if (sub_100313A28(v57, v55) == 76)
    {
      sub_100313B54(v57, v55);
      static Endianness.current.getter();
      sub_10012BF24();
      FixedWidthInteger.init(data:ofEndianness:)();
      sub_100006654(v57, v55);
      if ((v117[0] & 0x100000000) == 0 && LODWORD(v117[0]) == 8233)
      {
        if (qword_1016950D0 != -1)
        {
          swift_once();
        }

        v58 = type metadata accessor for Logger();
        sub_1000076D4(v58, qword_10177C418);
        v60 = v112;
        v59 = v113;
        v61 = v100;
        (*(v112 + 16))(v100, v114, v113);
        v62 = Logger.logObject.getter();
        v63 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v117[0] = v65;
          *v64 = 141558275;
          *(v64 + 4) = 1752392040;
          *(v64 + 12) = 2081;
          sub_100E62554(&qword_1016A4210, 255, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
          v66 = dispatch thunk of CustomStringConvertible.description.getter();
          v68 = v67;
          (*(v60 + 8))(v61, v59);
          v69 = sub_1000136BC(v66, v68, v117);

          *(v64 + 14) = v69;
          _os_log_impl(&_mh_execute_header, v62, v63, "Skipping BA pairing for %{private,mask.hash}s, FeatureFlag is not enabled.", v64, 0x16u);
          sub_100007BAC(v65);
        }

        else
        {

          (*(v60 + 8))(v61, v59);
        }

        sub_100E31E64(0, 1);
        return;
      }
    }

    else
    {
      sub_100006654(v57, v55);
    }
  }

  v70 = sub_100E51DD4();
  if (v70)
  {
    v71 = v70;
    sub_100A22DF0(v56);
    v72 = v104;
    sub_100A22DF0(v104);
    v73 = sub_100E22864();
    if (*(v73 + 16) && (v74 = sub_1007723C0(v72), (v75 & 1) != 0))
    {
      v76 = (*(v73 + 56) + 16 * v74);
      v77 = v72;
      v78 = *v76;
      v79 = v76[1];
      sub_100017D5C(*v76, v79);
      v80 = v112;
      v81 = *(v112 + 8);
      v81(v77, v113);
    }

    else
    {

      v80 = v112;
      v81 = *(v112 + 8);
      v81(v72, v113);
      v78 = 0;
      v79 = 0xF000000000000000;
    }

    v82 = sub_1001C1394();
    sub_100006654(v78, v79);
    v81(v56, v113);
    v83 = v102;
    v116 = v102;
    v117[0] = v82;
    v84 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v85 = *(*(v84 - 8) + 56);
    v112 = v71;
    v86 = v107;
    v85(v107, 1, 1, v84);
    v87 = v83;
    sub_1000BC4D4(&qword_1016B2A78, &qword_1013EACA0);
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    sub_1000041A4(&unk_1016B2A80, &qword_1016B2A78, &qword_1013EACA0, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_1004682F0();
    v88 = v108;
    Publisher.receive<A>(on:options:)();
    sub_10000B3A8(v86, &unk_1016B0FE0, &unk_101391980);

    v89 = swift_allocObject();
    swift_weakInit();
    v90 = v106;
    v91 = v113;
    (*(v80 + 16))(v106, v114, v113);
    v92 = (*(v80 + 80) + 24) & ~*(v80 + 80);
    v93 = swift_allocObject();
    *(v93 + 16) = v89;
    (*(v80 + 32))(v93 + v92, v90, v91);
    sub_1000041A4(&qword_1016B5640, &qword_1016B5608, &qword_1013D6BE8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v94 = v103;
    Publisher<>.sink(receiveValue:)();

    (*(v109 + 8))(v88, v94);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  else
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v95 = type metadata accessor for Logger();
    sub_1000076D4(v95, qword_10177C418);
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&_mh_execute_header, v96, v97, "Unable to create pairing manager to start LE pairing!", v98, 2u);
    }
  }
}

void *sub_100E54140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for MACAddress();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000076D4(v10, qword_10177C418);
    (*(v5 + 16))(v7, a3, v4);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 141558275;
      *(v13 + 4) = 1752392040;
      *(v13 + 12) = 2081;
      sub_100E62554(&qword_1016A4210, 255, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v5 + 8))(v7, v4);
      v18 = sub_1000136BC(v15, v17, &v23);

      *(v13 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v11, v12, "LE Pairing completed for %{private,mask.hash}s", v13, 0x16u);
      sub_100007BAC(v14);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    v20 = *(*(v9[10] + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_skippedClassic);
    v23 = v9[8];
    v19 = v23;
    v24 = v20;

    v21 = v19;
    PassthroughSubject.send(_:)();

    v9[27] = 0;
  }

  return result;
}

uint64_t sub_100E54460(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 200) = a8;
  *(v8 + 208) = v18;
  *(v8 + 184) = a5;
  *(v8 + 192) = a7;
  *(v8 + 90) = a6;
  *(v8 + 168) = a3;
  *(v8 + 176) = a4;
  *(v8 + 89) = a2;
  *(v8 + 160) = a1;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  v9 = type metadata accessor for MACAddress();
  *(v8 + 248) = v9;
  v10 = *(v9 - 8);
  *(v8 + 256) = v10;
  *(v8 + 264) = *(v10 + 64);
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  v11 = type metadata accessor for PairingCoordinatorState();
  *(v8 + 312) = v11;
  *(v8 + 320) = *(v11 - 8);
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  sub_1000BC4D4(&qword_1016B7D38, &qword_1013DD8C8);
  *(v8 + 352) = swift_task_alloc();
  v12 = sub_1000BC4D4(&qword_1016B7D40, &qword_1013DD8D0);
  *(v8 + 360) = v12;
  *(v8 + 368) = *(v12 - 8);
  *(v8 + 376) = swift_task_alloc();
  sub_1000BC4D4(&qword_1016B76F0, &unk_1013DD160);
  *(v8 + 384) = swift_task_alloc();
  v13 = type metadata accessor for ObservationStreams();
  *(v8 + 392) = v13;
  *(v8 + 400) = *(v13 - 8);
  *(v8 + 408) = swift_task_alloc();
  v14 = sub_1000BC4D4(&qword_1016B7D30, &unk_1013EACD0);
  *(v8 + 416) = v14;
  *(v8 + 424) = *(v14 - 8);
  *(v8 + 432) = swift_task_alloc();
  v15 = type metadata accessor for PairingContext();
  *(v8 + 440) = v15;
  *(v8 + 448) = *(v15 - 8);
  *(v8 + 456) = swift_task_alloc();

  return _swift_task_switch(sub_100E5483C, 0, 0);
}

uint64_t sub_100E5483C()
{

  v1 = swift_task_alloc();
  *(v0 + 464) = v1;
  *v1 = v0;
  v1[1] = sub_100E548FC;
  v2 = *(v0 + 160);

  return unsafeBlocking<A>(_:)(v1, sub_100E689A8, v2, &type metadata for () + 1);
}

uint64_t sub_100E548FC()
{

  return _swift_task_switch(sub_100E54A14, 0, 0);
}

uint64_t sub_100E54A14()
{
  v1 = swift_task_alloc();
  *(v0 + 472) = v1;
  *v1 = v0;
  v1[1] = sub_100E54AA4;

  return daemon.getter();
}

uint64_t sub_100E54AA4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 480) = a1;

  v3 = swift_task_alloc();
  *(v2 + 488) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for PairingService();
  v6 = sub_100E62554(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100E62554(&unk_1016B1120, 255, &type metadata accessor for PairingService, &protocol conformance descriptor for PairingService);
  *v3 = v9;
  v3[1] = sub_100E54C88;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100E54C88(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 496) = a1;
  *(v3 + 504) = v1;

  if (v1)
  {
    v4 = sub_100E570E0;
  }

  else
  {

    v4 = sub_100E54DA4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100E54DA4()
{
  v2 = *(v0 + 448);
  v1 = *(v0 + 456);
  v3 = *(v0 + 440);
  v4 = *(v0 + 248);
  v5 = *(v0 + 256);
  if (*(v0 + 89) == 1)
  {
    v6 = *(v0 + 168);
    v7 = *(sub_1000BC4D4(&qword_1016B7758, &unk_1013DD1A0) + 48);
    *(v1 + 24) = &type metadata for SPDAccessoryType;
    *(v1 + 32) = sub_100BB8DB8();
    *v1 = 2;
    (*(v5 + 16))(v1 + v7, v6, v4);
    (*(v2 + 104))(v1, enum case for PairingContext.bluetoothStandalone(_:), v3);
  }

  else
  {
    v27 = *(v0 + 90);
    v9 = *(v0 + 176);
    v8 = *(v0 + 184);
    v25 = *(v0 + 168);
    v10 = sub_1000BC4D4(&qword_1016B7728, &unk_1013DD190);
    v11 = v10[12];
    v26 = v3;
    v12 = (v1 + v10[16]);
    v13 = v10[20];
    *(v1 + 24) = &type metadata for SPDAccessoryType;
    *(v1 + 32) = sub_100BB8DB8();
    *v1 = 2;
    (*(v5 + 16))(v1 + v11, v25, v4);
    *v12 = v9;
    v12[1] = v8;
    *(v1 + v13) = v27;
    (*(v2 + 104))(v1, enum case for PairingContext.bluetoothMultiPart(_:), v26);
    sub_10002E98C(v9, v8);
  }

  v14 = *(v0 + 448);
  v15 = *(v0 + 456);
  v16 = *(v0 + 440);
  v17 = *(v0 + 384);
  v18 = *(v0 + 192);
  sub_1000BC4D4(&qword_1016B2BA8, &unk_1013EACE0);
  v19 = swift_allocObject();
  *(v0 + 512) = v19;
  *(v19 + 16) = xmmword_101385D80;
  *(v19 + 56) = type metadata accessor for AirPodsLEAccessory(0);
  *(v19 + 64) = sub_100E62554(&qword_1016BCD30, 255, type metadata accessor for AirPodsLEAccessory, &unk_1013D40D8);
  v20 = sub_1000280DC((v19 + 32));
  sub_100E6A94C(v18, v20, type metadata accessor for AirPodsLEAccessory);
  (*(v14 + 16))(v17, v15, v16);
  (*(v14 + 56))(v17, 0, 1, v16);
  v28 = (&async function pointer to dispatch thunk of PairingService.pairAccessories(_:context:) + async function pointer to dispatch thunk of PairingService.pairAccessories(_:context:));
  v21 = swift_task_alloc();
  *(v0 + 520) = v21;
  *v21 = v0;
  v21[1] = sub_100E550B0;
  v22 = *(v0 + 408);
  v23 = *(v0 + 384);

  return v28(v22, v19, v23);
}

uint64_t sub_100E550B0()
{
  v2 = *(*v1 + 384);
  *(*v1 + 528) = v0;

  sub_10000B3A8(v2, &qword_1016B76F0, &unk_1013DD160);

  if (v0)
  {
    v3 = sub_100E57404;
  }

  else
  {
    v3 = sub_100E55214;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100E55214()
{
  v2 = *(v0 + 400);
  v1 = *(v0 + 408);
  v3 = *(v0 + 392);
  ObservationStreams.pairingStream.getter();
  (*(v2 + 8))(v1, v3);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  *(v0 + 536) = sub_1000076D4(v4, qword_10177C418);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Started pairing session", v7, 2u);
  }

  AsyncStream.makeAsyncIterator()();
  *(v0 + 92) = enum case for PairingCoordinatorState.failed(_:);
  *(v0 + 108) = enum case for PairingCoordinatorState.interrupted(_:);
  *(v0 + 124) = enum case for PairingCoordinatorState.finished(_:);
  v8 = swift_task_alloc();
  *(v0 + 544) = v8;
  *v8 = v0;
  v8[1] = sub_100E553E8;
  v9 = *(v0 + 352);
  v10 = *(v0 + 360);

  return AsyncStream.Iterator.next(isolation:)(v9, 0, 0, v10);
}

uint64_t sub_100E553E8()
{

  return _swift_task_switch(sub_100E554E4, 0, 0);
}

uint64_t sub_100E554E4()
{
  v97 = v0;
  v1 = *(v0 + 352);
  v2 = sub_1000BC4D4(&qword_1016B7D48, &qword_1013DD8D8);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 448);
    v3 = *(v0 + 456);
    v6 = *(v0 + 432);
    v5 = *(v0 + 440);
    v7 = *(v0 + 416);
    v8 = *(v0 + 424);
    v10 = *(v0 + 368);
    v9 = *(v0 + 376);
    v11 = *(v0 + 360);

    (*(v10 + 8))(v9, v11);
    (*(v8 + 8))(v6, v7);
    (*(v4 + 8))(v3, v5);

    v12 = *(v0 + 8);

    return v12();
  }

  v15 = *(v0 + 336);
  v14 = *(v0 + 344);
  v17 = *(v0 + 312);
  v16 = *(v0 + 320);
  v93 = *(v0 + 304);
  v19 = *(v0 + 248);
  v18 = *(v0 + 256);
  v20 = *(v0 + 200);

  (*(v16 + 32))(v14, v1 + *(v2 + 48), v17);
  v94 = *(v16 + 16);
  v94(v15, v14, v17);
  v21 = *(v18 + 16);
  *(v0 + 552) = v21;
  *(v0 + 560) = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v92 = v21;
  v21(v93, v20, v19);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v24 = os_log_type_enabled(v22, v23);
  v25 = *(v0 + 336);
  v27 = *(v0 + 312);
  v26 = *(v0 + 320);
  v28 = *(v0 + 304);
  v30 = *(v0 + 248);
  v29 = *(v0 + 256);
  if (v24)
  {
    log = v22;
    v31 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    *v31 = 136315651;
    sub_100E62554(&unk_1016B7D50, 255, &type metadata accessor for PairingCoordinatorState, &protocol conformance descriptor for PairingCoordinatorState);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v90 = v23;
    v34 = v33;
    v89 = v30;
    v35 = v28;
    v36 = *(v26 + 8);
    v36(v25, v27);
    v37 = sub_1000136BC(v32, v34, &v96);

    *(v31 + 4) = v37;
    *(v31 + 12) = 2160;
    *(v31 + 14) = 1752392040;
    *(v31 + 22) = 2081;
    sub_100E62554(&qword_1016A4210, 255, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = v39;
    v41 = *(v29 + 8);
    v41(v35, v89);
    v42 = sub_1000136BC(v38, v40, &v96);
    v43 = v36;

    *(v31 + 24) = v42;
    _os_log_impl(&_mh_execute_header, log, v90, "PairingService: state = %s, accessory %{private,mask.hash}s.", v31, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v41 = *(v29 + 8);
    v41(v28, v30);
    v43 = *(v26 + 8);
    v43(v25, v27);
  }

  *(v0 + 568) = v43;
  v44 = *(v0 + 92);
  v46 = *(v0 + 320);
  v45 = *(v0 + 328);
  v47 = *(v0 + 312);
  v94(v45, *(v0 + 344), v47);
  v48 = (*(v46 + 88))(v45, v47);
  if (v48 == v44)
  {
    v49 = *(v0 + 328);
    v50 = *(v0 + 296);
    v51 = *(v0 + 248);
    v52 = *(v0 + 200);
    (*(*(v0 + 320) + 96))(v49, *(v0 + 312));
    *(v0 + 584) = *v49;
    v92(v50, v52, v51);
    swift_errorRetain();
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();

    v55 = os_log_type_enabled(v53, v54);
    v56 = *(v0 + 296);
    v57 = *(v0 + 248);
    if (v55)
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v96 = v95;
      *v58 = 141558531;
      *(v58 + 4) = 1752392040;
      *(v58 + 12) = 2081;
      sub_100E62554(&qword_1016A4210, 255, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v41;
      v62 = v60;
      v64 = v63;
      v61(v56, v57);
      v65 = sub_1000136BC(v62, v64, &v96);

      *(v58 + 14) = v65;
      *(v58 + 22) = 2114;
      swift_errorRetain();
      v66 = _swift_stdlib_bridgeErrorToNSError();
      *(v58 + 24) = v66;
      *v59 = v66;
      _os_log_impl(&_mh_execute_header, v53, v54, "Pairing failed for macAddress: %{private,mask.hash}s with error %{public}@", v58, 0x20u);
      sub_10000B3A8(v59, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v95);
    }

    else
    {

      v41(v56, v57);
    }

    v78 = swift_task_alloc();
    *(v0 + 592) = v78;
    *v78 = v0;
    v78[1] = sub_100E56520;
    v79 = *(v0 + 160);
LABEL_22:

    return unsafeBlocking<A>(_:)(v78, sub_100E689C4, v79, &type metadata for () + 1);
  }

  if (v48 == *(v0 + 108))
  {
    v92(*(v0 + 272), *(v0 + 200), *(v0 + 248));
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    v69 = os_log_type_enabled(v67, v68);
    v70 = *(v0 + 272);
    v71 = *(v0 + 248);
    if (v69)
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v96 = v73;
      *v72 = 141558275;
      *(v72 + 4) = 1752392040;
      *(v72 + 12) = 2081;
      sub_100E62554(&qword_1016A4210, 255, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v74 = dispatch thunk of CustomStringConvertible.description.getter();
      v76 = v75;
      v41(v70, v71);
      v77 = sub_1000136BC(v74, v76, &v96);

      *(v72 + 14) = v77;
      _os_log_impl(&_mh_execute_header, v67, v68, "Pairing has been interrupted for macAddress: %{private,mask.hash}s", v72, 0x16u);
      sub_100007BAC(v73);
    }

    else
    {

      v41(v70, v71);
    }

    v78 = swift_task_alloc();
    *(v0 + 600) = v78;
    *v78 = v0;
    v78[1] = sub_100E56A48;
    v79 = *(v0 + 160);
    goto LABEL_22;
  }

  if (v48 == *(v0 + 124))
  {
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v96 = v83;
      *v82 = 136315138;
      *(v82 + 4) = sub_1000136BC(0xD000000000000040, 0x8000000101371FC0, &v96);
      _os_log_impl(&_mh_execute_header, v80, v81, "%s Pairing has been completed for all serial numbers.", v82, 0xCu);
      sub_100007BAC(v83);
    }

    v78 = swift_task_alloc();
    *(v0 + 576) = v78;
    *v78 = v0;
    v78[1] = sub_100E560E0;
    v79 = *(v0 + 160);
    goto LABEL_22;
  }

  v84 = *(v0 + 328);
  v85 = *(v0 + 312);
  v43(*(v0 + 344), v85);
  v43(v84, v85);
  v86 = swift_task_alloc();
  *(v0 + 544) = v86;
  *v86 = v0;
  v86[1] = sub_100E553E8;
  v87 = *(v0 + 352);
  v88 = *(v0 + 360);

  return AsyncStream.Iterator.next(isolation:)(v87, 0, 0, v88);
}

uint64_t sub_100E560E0()
{

  return _swift_task_switch(sub_100E561F8, 0, 0);
}

uint64_t sub_100E561F8()
{
  v1 = *(v0 + 160);
  v2 = *(v1 + 64);
  LOBYTE(v1) = *(*(*(v1 + 80) + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_skippedClassic);
  *(v0 + 128) = v2;
  v3 = *(v0 + 232);
  v4 = *(v0 + 240);
  *(v0 + 136) = v1;

  v5 = v2;
  PassthroughSubject.send(_:)();

  v6 = type metadata accessor for TaskPriority();
  v7 = *(v6 - 8);
  (*(v7 + 56))(v4, 1, 1, v6);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  sub_1000D2A70(v4, v3, &qword_101698C00, &qword_10138B570);
  LODWORD(v3) = (*(v7 + 48))(v3, 1, v6);

  v9 = *(v0 + 232);
  if (v3 == 1)
  {
    sub_10000B3A8(*(v0 + 232), &qword_101698C00, &qword_10138B570);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v7 + 8))(v9, v6);
  }

  v10 = *(v8 + 16);
  swift_unknownObjectRetain();

  if (v10)
  {
    swift_getObjectType();
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v12;
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  sub_10000B3A8(*(v0 + 240), &qword_101698C00, &qword_10138B570);
  v14 = swift_allocObject();
  *(v14 + 16) = &unk_1013EAD10;
  *(v14 + 24) = v8;
  if (v13 | v11)
  {
    *(v0 + 48) = 0;
    *(v0 + 56) = 0;
    *(v0 + 64) = v11;
    *(v0 + 72) = v13;
  }

  v15 = *(v0 + 568);
  v16 = *(v0 + 344);
  v17 = *(v0 + 312);
  swift_task_create();

  v15(v16, v17);
  v18 = swift_task_alloc();
  *(v0 + 544) = v18;
  *v18 = v0;
  v18[1] = sub_100E553E8;
  v19 = *(v0 + 352);
  v20 = *(v0 + 360);

  return AsyncStream.Iterator.next(isolation:)(v19, 0, 0, v20);
}

uint64_t sub_100E56520()
{

  return _swift_task_switch(sub_100E56638, 0, 0);
}

uint64_t sub_100E56638()
{
  v1 = v0;
  v38 = v0[73];
  v2 = v0[69];
  v3 = v0[36];
  v36 = v0[33];
  v34 = v0[35];
  v35 = v0[32];
  v4 = v0[31];
  v5 = v0[28];
  v31 = v5;
  v39 = v0[27];
  v37 = v0[26];
  v6 = v0[20];
  v32 = v0[21];
  v33 = v0[25];
  v7 = *(v6 + 64);
  LOBYTE(v6) = *(*(*(v6 + 80) + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_skippedClassic);
  v0[14] = v7;
  v8 = v0 + 14;
  *(v8 + 8) = v6;

  v9 = v7;
  PassthroughSubject.send(_:)();

  v29 = type metadata accessor for TaskPriority();
  v30 = *(v29 - 8);
  (*(v30 + 56))(v5, 1, 1, v29);
  v2(v3, v32, v4);
  v2(v34, v33, v4);
  v10 = *(v35 + 80);
  v11 = (v10 + 48) & ~v10;
  v12 = (v36 + v10 + v11) & ~v10;
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = v38;
  *(v13 + 5) = v37;
  v14 = *(v35 + 32);
  v14(&v13[v11], v3, v4);
  v14(&v13[v12], v34, v4);
  sub_1000D2A70(v31, v39, &qword_101698C00, &qword_10138B570);
  LODWORD(v4) = (*(v30 + 48))(v39, 1, v29);
  swift_errorRetain();

  v15 = v1[27];
  if (v4 == 1)
  {
    sub_10000B3A8(v1[27], &qword_101698C00, &qword_10138B570);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v30 + 8))(v15, v29);
  }

  v16 = *(v13 + 2);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  sub_10000B3A8(v1[28], &qword_101698C00, &qword_10138B570);
  v20 = swift_allocObject();
  *(v20 + 16) = &unk_1013EACF8;
  *(v20 + 24) = v13;
  if (v19 | v17)
  {
    v21 = v8 - 12;
    *v21 = 0;
    v21[1] = 0;
    v1[4] = v17;
    v1[5] = v19;
  }

  v22 = v1[43];
  v23 = v1[39];
  v24 = v1[40];
  swift_task_create();

  (*(v24 + 8))(v22, v23);
  v25 = swift_task_alloc();
  v1[68] = v25;
  *v25 = v1;
  v25[1] = sub_100E553E8;
  v26 = v1[44];
  v27 = v1[45];

  return AsyncStream.Iterator.next(isolation:)(v26, 0, 0, v27);
}

uint64_t sub_100E56A48()
{

  return _swift_task_switch(sub_100E56B60, 0, 0);
}

uint64_t sub_100E56B60()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 344);
  v3 = *(v0 + 312);
  v4 = *(v0 + 160);
  v5 = *(v4 + 64);
  v6 = *(*(*(v4 + 80) + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_skippedClassic);
  *(v0 + 96) = v5;
  *(v0 + 104) = v6;

  v7 = v5;
  PassthroughSubject.send(_:)();

  v1(v2, v3);
  v8 = swift_task_alloc();
  *(v0 + 544) = v8;
  *v8 = v0;
  v8[1] = sub_100E553E8;
  v9 = *(v0 + 352);
  v10 = *(v0 + 360);

  return AsyncStream.Iterator.next(isolation:)(v9, 0, 0, v10);
}

uint64_t sub_100E56CA0()
{

  return _swift_task_switch(sub_100E56DB8, 0, 0);
}

uint64_t sub_100E56DB8()
{
  v14 = v0;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C418);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v4 = 136315394;
    *(v4 + 4) = sub_1000136BC(0xD000000000000040, 0x8000000101371FC0, &v13);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s error: %{public}@", v4, 0x16u);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v6);
  }

  v8 = *(v0 + 160);
  v9 = *(v8 + 64);
  LOBYTE(v8) = *(*(*(v8 + 80) + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_skippedClassic);
  *(v0 + 80) = v9;
  *(v0 + 88) = v8;

  v10 = v9;
  PassthroughSubject.send(_:)();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100E570E0()
{

  v1 = v0[63];
  v0[18] = v1;
  v0[76] = v1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (swift_dynamicCast())
  {
    v2 = v0[19];
    if (v2 == 0x800000000000000ELL)
    {

      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_1000076D4(v3, qword_10177C418);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, v5, "Existing pairing session in progress!", v6, 2u);
      }

      v7 = v0[1];

      return v7();
    }

    sub_100101814(v2);
  }

  v9 = swift_task_alloc();
  v0[77] = v9;
  *v9 = v0;
  v9[1] = sub_100E56CA0;
  v10 = v0[20];

  return unsafeBlocking<A>(_:)(v9, sub_100E689C4, v10, &type metadata for () + 1);
}

uint64_t sub_100E57404()
{
  v2 = v0[56];
  v1 = v0[57];
  v3 = v0[55];

  (*(v2 + 8))(v1, v3);
  v4 = v0[66];
  v0[18] = v4;
  v0[76] = v4;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (swift_dynamicCast())
  {
    v5 = v0[19];
    if (v5 == 0x800000000000000ELL)
    {

      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_1000076D4(v6, qword_10177C418);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "Existing pairing session in progress!", v9, 2u);
      }

      v10 = v0[1];

      return v10();
    }

    sub_100101814(v5);
  }

  v12 = swift_task_alloc();
  v0[77] = v12;
  *v12 = v0;
  v12[1] = sub_100E56CA0;
  v13 = v0[20];

  return unsafeBlocking<A>(_:)(v12, sub_100E689C4, v13, &type metadata for () + 1);
}

uint64_t sub_100E57748()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100E577D8;

  return daemon.getter();
}

uint64_t sub_100E577D8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 24) = a1;

  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for LocalStorageService();
  v6 = sub_100E62554(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100E62554(&unk_1016B1030, 255, type metadata accessor for LocalStorageService, &unk_1013DB940);
  *v3 = v9;
  v3[1] = sub_100E579BC;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100E579BC(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 40) = a1;
  *(v4 + 48) = v1;

  if (v1)
  {
    v5 = sub_100E580F0;
    v6 = 0;
  }

  else
  {

    v5 = sub_100E57AF4;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100E57AF4()
{
  v4 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_100E57BC0;
  v2 = *(v0 + 40);

  return v4(&unk_1013EAD28, v2);
}

uint64_t sub_100E57BC0()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_100E57E80;
  }

  else
  {

    v4 = sub_100E57D00;
    v3 = 0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100E57D00()
{
  v9 = v0;
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
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000136BC(0xD000000000000040, 0x8000000101371FC0, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s Removed all analytics after pairing completed.", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100E57E80()
{

  return _swift_task_switch(sub_100E57EE8, 0, 0);
}

uint64_t sub_100E57EE8()
{
  v11 = v0;

  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C418);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136315394;
    *(v4 + 4) = sub_1000136BC(0xD000000000000040, 0x8000000101371FC0, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s Error removing analytics: %{public}@", v4, 0x16u);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100E580F0()
{
  v11 = v0;

  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C418);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136315394;
    *(v4 + 4) = sub_1000136BC(0xD000000000000040, 0x8000000101371FC0, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s Error removing analytics: %{public}@", v4, 0x16u);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100E582F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v8 = type metadata accessor for AccessoryPairingAnalytics(0);
  v7[11] = v8;
  v9 = *(v8 - 8);
  v7[12] = v9;
  v7[13] = *(v9 + 64);
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  v10 = type metadata accessor for MultipartAccessoryPairingInfo(0);
  v7[17] = v10;
  v7[18] = *(v10 - 8);
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v11 = type metadata accessor for MACAddress();
  v7[21] = v11;
  v12 = *(v11 - 8);
  v7[22] = v12;
  v7[23] = *(v12 + 64);
  v7[24] = swift_task_alloc();
  v7[25] = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v7[26] = swift_task_alloc();
  v13 = type metadata accessor for OwnedBeaconGroup(0);
  v7[27] = v13;
  v7[28] = *(v13 - 8);
  v7[29] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016B7D88, &qword_1013EAD30);
  v7[30] = swift_task_alloc();
  v14 = type metadata accessor for PairingCoordinatorError();
  v7[31] = v14;
  v7[32] = *(v14 - 8);
  v7[33] = swift_task_alloc();
  v7[34] = swift_task_alloc();

  return _swift_task_switch(sub_100E585E0, 0, 0);
}

uint64_t sub_100E585E0()
{
  v25 = v0;
  v0[5] = v0[7];
  v1 = v0[32];
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v2 = swift_dynamicCast();
  v3 = *(v1 + 56);
  if (v2)
  {
    v4 = v0[33];
    v5 = v0[34];
    v6 = v0[31];
    v7 = v0[32];
    v8 = v0[30];
    v3(v8, 0, 1, v6);
    (*(v7 + 32))(v5, v8, v6);
    sub_100E62554(&qword_1016B31E0, 255, &type metadata accessor for PairingCoordinatorError, &protocol conformance descriptor for PairingCoordinatorError);
    v9 = Error.code.getter();
    (*(v7 + 104))(v4, enum case for PairingCoordinatorError.pairedToAnotherAccount(_:), v6);
    v10 = Error.code.getter();
    v11 = *(v7 + 8);
    v11(v4, v6);
    if (v9 == v10)
    {
      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_1000076D4(v12, qword_10177C418);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      v15 = os_log_type_enabled(v13, v14);
      v16 = v0[34];
      v17 = v0[31];
      if (v15)
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v24 = v19;
        *v18 = 136315138;
        *(v18 + 4) = sub_1000136BC(0xD000000000000040, 0x8000000101371FC0, &v24);
        _os_log_impl(&_mh_execute_header, v13, v14, "%s Locked to another account. Analytic is handled by executor.", v18, 0xCu);
        sub_100007BAC(v19);
      }

      v11(v16, v17);

      v20 = v0[1];

      return v20();
    }

    v11(v0[34], v0[31]);
  }

  else
  {
    v22 = v0[30];
    v3(v22, 1, 1, v0[31]);
    sub_10000B3A8(v22, &qword_1016B7D88, &qword_1013EAD30);
  }

  v23 = swift_task_alloc();
  v0[35] = v23;
  *v23 = v0;
  v23[1] = sub_100E589F4;

  return daemon.getter();
}

uint64_t sub_100E589F4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[36] = a1;

  v3 = swift_task_alloc();
  v2[37] = v3;
  v4 = type metadata accessor for Daemon();
  v2[38] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100E62554(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[39] = v6;
  v7 = sub_100E62554(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_100E58BE8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100E58BE8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 320) = a1;
  *(v3 + 328) = v1;

  if (v1)
  {
    v4 = sub_100E5A9C0;
  }

  else
  {

    v4 = sub_100E58D04;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100E58D04()
{
  v21 = v0;
  v1 = v0[8];
  v0[42] = v1[11];
  v2 = v1[12];
  v0[43] = v2;
  if (v2 && (v3 = v1[13], v0[44] = v3, v4 = v1[14], v0[45] = v4, v4 >> 60 != 15))
  {
    v19 = v0[40];

    sub_10002E98C(v3, v4);

    return _swift_task_switch(sub_100E59148, v19, 0);
  }

  else
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177C418);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v20[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_1000136BC(0xD000000000000040, 0x8000000101371FC0, v20);
      _os_log_impl(&_mh_execute_header, v6, v7, "%s Missing systemVersion/productData", v8, 0xCu);
      sub_100007BAC(v9);
    }

    sub_100E6259C();
    swift_allocError();
    *v10 = 3;
    swift_willThrow();

    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v5, qword_10177C418);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20[0] = v15;
      *v13 = 136315394;
      *(v13 + 4) = sub_1000136BC(0xD000000000000040, 0x8000000101371FC0, v20);
      *(v13 + 12) = 2114;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v16;
      *v14 = v16;
      _os_log_impl(&_mh_execute_header, v11, v12, "%s Failure writing to pairing event local storage: %{public}@", v13, 0x16u);
      sub_10000B3A8(v14, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v15);
    }

    else
    {
    }

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_100E59148()
{
  v1 = v0[40];
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[9];
  v6 = *(v4 + 16);
  v0[46] = v6;
  v0[47] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  v0[48] = v8;
  *(v8 + 16) = v1;
  (*(v4 + 32))(v8 + v7, v2, v3);

  v9 = swift_task_alloc();
  v0[49] = v9;
  *v9 = v0;
  v9[1] = sub_100E592B4;
  v11 = v0[25];
  v10 = v0[26];

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_100102120, v8, v11);
}

uint64_t sub_100E592B4()
{

  return _swift_task_switch(sub_100E593CC, 0, 0);
}

uint64_t sub_100E593CC()
{
  v46 = v0;
  v1 = *(v0 + 208);
  if ((*(*(v0 + 224) + 48))(v1, 1, *(v0 + 216)) == 1)
  {

    sub_10000B3A8(v1, &unk_1016AF8B0, &unk_1013A0700);
LABEL_7:
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000076D4(v11, qword_10177C418);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v45[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1000136BC(0xD000000000000040, 0x8000000101371FC0, v45);
      _os_log_impl(&_mh_execute_header, v12, v13, "%s Missing group/partId", v14, 0xCu);
      sub_100007BAC(v15);
    }

    v17 = *(v0 + 352);
    v16 = *(v0 + 360);
    sub_100E6259C();
    swift_allocError();
    *v18 = 3;
    swift_willThrow();
    sub_100006654(v17, v16);

    goto LABEL_24;
  }

  v2 = *(v0 + 80);
  sub_100E6ADA4(v1, *(v0 + 232), type metadata accessor for OwnedBeaconGroup);
  sub_10051578C(v2);
  *(v0 + 480) = v3;
  if ((v3 & 0x100) != 0)
  {
    sub_100E6A9B4(*(v0 + 232), type metadata accessor for OwnedBeaconGroup);

    goto LABEL_7;
  }

  sub_100522DB8(v3);
  *(v0 + 400) = v4;
  *(v0 + 408) = v5;
  if (v5 >> 60 == 15)
  {
    v7 = *(v0 + 352);
    v6 = *(v0 + 360);
    v8 = *(v0 + 232);

    sub_100E6259C();
    swift_allocError();
    *v9 = 7;
    swift_willThrow();
    sub_100006654(v7, v6);

    v10 = v8;
LABEL_23:
    sub_100E6A9B4(v10, type metadata accessor for OwnedBeaconGroup);
LABEL_24:
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1000076D4(v36, qword_10177C418);
    swift_errorRetain();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v45[0] = v41;
      *v39 = 136315394;
      *(v39 + 4) = sub_1000136BC(0xD000000000000040, 0x8000000101371FC0, v45);
      *(v39 + 12) = 2114;
      swift_errorRetain();
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 14) = v42;
      *v40 = v42;
      _os_log_impl(&_mh_execute_header, v37, v38, "%s Failure writing to pairing event local storage: %{public}@", v39, 0x16u);
      sub_10000B3A8(v40, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v41);
    }

    else
    {
    }

    v43 = *(v0 + 8);

    return v43();
  }

  v19 = v4;
  v20 = v5;
  v21 = *(*(v0 + 64) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);
  if (!*(v21 + 16))
  {
LABEL_18:

    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000076D4(v27, qword_10177C418);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v45[0] = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_1000136BC(0xD000000000000040, 0x8000000101371FC0, v45);
      _os_log_impl(&_mh_execute_header, v28, v29, "%s Missing multipartInfo", v30, 0xCu);
      sub_100007BAC(v31);
    }

    v33 = *(v0 + 352);
    v32 = *(v0 + 360);
    v34 = *(v0 + 232);
    sub_100E6259C();
    swift_allocError();
    *v35 = 3;
    swift_willThrow();
    sub_100006654(v33, v32);
    sub_100006654(v19, v20);

    v10 = v34;
    goto LABEL_23;
  }

  v22 = sub_100771E30(v19, v20);
  if ((v23 & 1) == 0)
  {

    goto LABEL_18;
  }

  v25 = *(v0 + 152);
  v24 = *(v0 + 160);
  sub_100E6A94C(*(v21 + 56) + *(*(v0 + 144) + 72) * v22, v25, type metadata accessor for MultipartAccessoryPairingInfo);

  sub_100E6ADA4(v25, v24, type metadata accessor for MultipartAccessoryPairingInfo);
  v26 = swift_task_alloc();
  *(v0 + 416) = v26;
  *v26 = v0;
  v26[1] = sub_100E59B74;

  return daemon.getter();
}

uint64_t sub_100E59B74(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 424) = a1;

  v5 = swift_task_alloc();
  *(v3 + 432) = v5;
  v6 = type metadata accessor for LocalStorageService();
  v7 = sub_100E62554(&unk_1016B1030, 255, type metadata accessor for LocalStorageService, &unk_1013DB940);
  *v5 = v4;
  v5[1] = sub_100E59D2C;
  v8 = *(v2 + 312);
  v9 = *(v2 + 304);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_100E59D2C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 440) = a1;
  *(v3 + 448) = v1;

  if (v1)
  {

    v4 = sub_100E5AC44;
  }

  else
  {
    v4 = sub_100E59E78;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100E59E78(uint64_t a1)
{
  v31 = *(v1 + 440);
  v27 = *(v1 + 400);
  v28 = *(v1 + 408);
  v24 = *(v1 + 480);
  v23 = *(v1 + 368);
  v30 = *(v1 + 360);
  v29 = *(v1 + 352);
  v25 = *(v1 + 336);
  v26 = *(v1 + 344);
  v2 = *(v1 + 232);
  v3 = *(v1 + 216);
  v4 = *(v1 + 168);
  v5 = *(v1 + 176);
  v6 = *(v1 + 128);
  v20 = *(v1 + 136);
  v7 = *(v1 + 88);
  v21 = *(v1 + 72);
  v22 = *(v1 + 160);
  UUID.init()();
  v8 = v7[5];
  v9 = *(v3 + 24);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v6 + v8, v2 + v9, v10);
  (*(v11 + 56))(v6 + v8, 0, 1, v10);
  LOBYTE(v2) = *(v22 + *(v20 + 28));
  v12 = v7[12];
  v23(v6 + v12, v21, v4);
  (*(v5 + 56))(v6 + v12, 0, 1, v4);
  swift_getErrorValue();
  v13 = Error.localizedDescription.getter();
  *(v6 + v7[6]) = v24;
  v14 = (v6 + v7[7]);
  *v14 = v27;
  v14[1] = v28;
  v15 = (v6 + v7[8]);
  *v15 = v25;
  v15[1] = v26;
  v16 = (v6 + v7[9]);
  *v16 = v29;
  v16[1] = v30;
  *(v6 + v7[10]) = 2;
  *(v6 + v7[11]) = v2;
  v17 = (v6 + v7[13]);
  *v17 = v13;
  v17[1] = v18;
  static Date.trustedNow.getter(v6 + v7[14]);

  return _swift_task_switch(sub_100E5A0AC, v31, 0);
}

uint64_t sub_100E5A0AC()
{
  v1 = v0[55];
  v2 = v0[15];
  v3 = v0[12];
  sub_100E6A94C(v0[16], v2, type metadata accessor for AccessoryPairingAnalytics);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[57] = v5;
  *(v5 + 16) = v1;
  sub_100E6ADA4(v2, v5 + v4, type metadata accessor for AccessoryPairingAnalytics);
  v8 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v6 = swift_task_alloc();
  v0[58] = v6;
  *v6 = v0;
  v6[1] = sub_100E5A1F8;

  return v8(&unk_1013EAD38, v5);
}

uint64_t sub_100E5A1F8()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    v3 = *(v2 + 440);

    v4 = sub_100E5A6B4;
    v5 = v3;
  }

  else
  {

    v4 = sub_100E5A340;
    v5 = 0;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100E5A340()
{
  v21 = v0;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[14];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177C418);
  sub_100E6A94C(v1, v2, type metadata accessor for AccessoryPairingAnalytics);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[29];
  v8 = v0[20];
  v9 = v0[16];
  v10 = v0[14];
  if (v6)
  {
    v11 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_1000136BC(0xD000000000000040, 0x8000000101371FC0, &v20);
    *(v11 + 12) = 2080;
    v18 = v9;
    v19 = v8;
    v12 = sub_10111CE44();
    v14 = v13;
    sub_100E6A9B4(v10, type metadata accessor for AccessoryPairingAnalytics);
    v15 = sub_1000136BC(v12, v14, &v20);

    *(v11 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s Inserted %s", v11, 0x16u);
    swift_arrayDestroy();

    sub_100E6A9B4(v18, type metadata accessor for AccessoryPairingAnalytics);
    sub_100E6A9B4(v19, type metadata accessor for MultipartAccessoryPairingInfo);
  }

  else
  {

    sub_100E6A9B4(v10, type metadata accessor for AccessoryPairingAnalytics);
    sub_100E6A9B4(v9, type metadata accessor for AccessoryPairingAnalytics);
    sub_100E6A9B4(v8, type metadata accessor for MultipartAccessoryPairingInfo);
  }

  sub_100E6A9B4(v7, type metadata accessor for OwnedBeaconGroup);

  v16 = v0[1];

  return v16();
}

uint64_t sub_100E5A6D0()
{
  v14 = v0;
  v1 = v0[29];
  v2 = v0[20];
  v3 = v0[16];

  sub_100E6A9B4(v3, type metadata accessor for AccessoryPairingAnalytics);
  sub_100E6A9B4(v2, type metadata accessor for MultipartAccessoryPairingInfo);
  sub_100E6A9B4(v1, type metadata accessor for OwnedBeaconGroup);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177C418);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_1000136BC(0xD000000000000040, 0x8000000101371FC0, &v13);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s Failure writing to pairing event local storage: %{public}@", v7, 0x16u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100E5A9C0()
{
  v11 = v0;

  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C418);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136315394;
    *(v4 + 4) = sub_1000136BC(0xD000000000000040, 0x8000000101371FC0, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s Failure writing to pairing event local storage: %{public}@", v4, 0x16u);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100E5AC44()
{
  v15 = v0;
  v1 = v0[50];
  v2 = v0[51];
  v3 = v0[29];
  v4 = v0[20];
  sub_100006654(v0[44], v0[45]);
  sub_100006654(v1, v2);

  sub_100E6A9B4(v4, type metadata accessor for MultipartAccessoryPairingInfo);
  sub_100E6A9B4(v3, type metadata accessor for OwnedBeaconGroup);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177C418);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_1000136BC(0xD000000000000040, 0x8000000101371FC0, &v14);
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s Failure writing to pairing event local storage: %{public}@", v8, 0x16u);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v10);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_100E5AF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v6 = type metadata accessor for MACAddress();
  v5[13] = v6;
  v7 = *(v6 - 8);
  v5[14] = v7;
  v5[15] = *(v7 + 64);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();

  return _swift_task_switch(sub_100E5B000, 0, 0);
}

uint64_t sub_100E5B000()
{

  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_100E5B0C0;
  v2 = *(v0 + 64);

  return unsafeBlocking<A>(_:)(v1, sub_100E689A8, v2, &type metadata for () + 1);
}

uint64_t sub_100E5B0C0()
{

  return _swift_task_switch(sub_100E5B1D8, 0, 0);
}

uint64_t sub_100E5B1D8()
{
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_100E5B268;

  return daemon.getter();
}

uint64_t sub_100E5B268(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 160) = a1;

  v3 = swift_task_alloc();
  *(v2 + 168) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for AirPodsLEPairingService();
  v6 = sub_100E62554(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100E62554(&unk_1016B1150, 255, type metadata accessor for AirPodsLEPairingService, &unk_10138BD00);
  *v3 = v9;
  v3[1] = sub_100E5B44C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100E5B44C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v4 = sub_100E5C834;
  }

  else
  {

    v4 = sub_100E5B568;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100E5B568()
{
  v1 = *(v0 + 176);
  *(v0 + 26) = *(*(v0 + 64) + 72);
  return _swift_task_switch(sub_100E5B590, v1, 0);
}

uint64_t sub_100E5B590()
{
  v1 = v0[22];
  if (*(v1 + 273) == 1)
  {
    sub_100100904();
    v2 = swift_allocError();
    *v3 = 0x800000000000000ELL;
    v0[27] = v2;
    swift_willThrow();

    return _swift_task_switch(sub_100E5B7F0, 0, 0);
  }

  else
  {
    *(v1 + 273) = 1;
    type metadata accessor for CentralManager();
    v4 = swift_task_alloc();
    v0[24] = v4;
    *v4 = v0;
    v4[1] = sub_100E5B6BC;

    return static CentralManager.pairingCentralManager.getter();
  }
}

uint64_t sub_100E5B6BC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 200) = a1;
  *(v4 + 208) = v1;

  v5 = *(v3 + 176);
  if (v1)
  {
    v6 = sub_100E5BD88;
  }

  else
  {
    v6 = sub_100E5BA38;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100E5B7F0()
{

  v1 = v0[27];
  v0[6] = v1;
  v0[32] = v1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (swift_dynamicCast())
  {
    v2 = v0[7];
    if (v2 == 0x800000000000000ELL)
    {

      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_1000076D4(v3, qword_10177C418);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, v5, "Existing pairing session in progress!", v6, 2u);
      }

      v7 = v0[1];

      return v7();
    }

    sub_100101814(v2);
  }

  v9 = swift_task_alloc();
  v0[33] = v9;
  *v9 = v0;
  v9[1] = sub_100E5C4B4;
  v10 = v0[8];

  return unsafeBlocking<A>(_:)(v9, sub_100E689C4, v10, &type metadata for () + 1);
}

uint64_t sub_100E5BA38()
{
  v23 = *(v0 + 26);
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v19 = v2;
  v20 = *(v0 + 200);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v5 = *(v0 + 104);
  v21 = *(v0 + 88);
  v22 = *(v0 + 96);
  v18 = *(v0 + 80);
  v6 = *(v0 + 72);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = *(v3 + 16);
  v8(v2, v6, v5);
  v8(v1, v18, v5);
  v9 = *(v3 + 80);
  v10 = (v9 + 32) & ~v9;
  v11 = (v4 + v9 + v10) & ~v9;
  v12 = swift_allocObject();
  *(v0 + 224) = v12;
  *(v12 + 16) = v7;
  *(v12 + 24) = v20;
  v13 = *(v3 + 32);
  v13(v12 + v10, v19, v5);
  v13(v12 + v11, v1, v5);
  v14 = v12 + ((v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v14 = v21;
  *(v14 + 8) = v22;
  *(v14 + 16) = v23;
  *(v14 + 17) = 0;

  sub_10002E98C(v21, v22);
  v15 = swift_task_alloc();
  *(v0 + 232) = v15;
  v16 = sub_1000BC4D4(&unk_1016969C0, &qword_101395690);
  *v15 = v0;
  v15[1] = sub_100E5BC60;

  return withTimeout<A>(_:block:)(v0 + 25, 0x40AAD21B3B700000, 3, &unk_1013A3580, v12, v16);
}

uint64_t sub_100E5BC60()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = *(v2 + 176);
    v4 = sub_100E5C300;
  }

  else
  {
    v5 = *(v2 + 176);

    v4 = sub_100E5BF28;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100E5BD88()
{
  v1 = v0[26];
  *(v0[22] + 273) = 0;
  if (qword_101694440 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_101696FF8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "AirPodsLEPairingService pairAirPods failed with error: %{public}@", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  v0[27] = v1;
  swift_willThrow();

  return _swift_task_switch(sub_100E5B7F0, 0, 0);
}

uint64_t sub_100E5BF28()
{
  v1 = *(v0 + 176);

  *(v1 + 273) = 0;

  return _swift_task_switch(sub_100E5BF98, 0, 0);
}

uint64_t sub_100E5BF98()
{

  v1 = swift_task_alloc();
  *(v0 + 248) = v1;
  *v1 = v0;
  v1[1] = sub_100E5C058;
  v2 = *(v0 + 64);

  return unsafeBlocking<A>(_:)(v1, sub_100E689E0, v2, &type metadata for () + 1);
}

uint64_t sub_100E5C058()
{

  return _swift_task_switch(sub_100E5C170, 0, 0);
}

uint64_t sub_100E5C170()
{
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
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Pairing has been completed for all serial numbers.", v4, 2u);
  }

  v5 = *(v0 + 64);

  v6 = *(v5 + 64);
  v7 = *(*(*(v5 + 80) + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_skippedClassic);
  *(v0 + 32) = v6;
  *(v0 + 40) = v7;

  v8 = v6;
  PassthroughSubject.send(_:)();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100E5C300()
{

  v1 = v0[30];
  *(v0[22] + 273) = 0;
  if (qword_101694440 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_101696FF8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "AirPodsLEPairingService pairAirPods failed with error: %{public}@", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  v0[27] = v1;
  swift_willThrow();

  return _swift_task_switch(sub_100E5B7F0, 0, 0);
}

uint64_t sub_100E5C4B4()
{

  return _swift_task_switch(sub_100E5C5CC, 0, 0);
}

uint64_t sub_100E5C5CC()
{
  v14 = v0;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C418);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v4 = 136315394;
    *(v4 + 4) = sub_1000136BC(0xD000000000000040, 0x8000000101371F70, &v13);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s error: %{public}@", v4, 0x16u);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v6);
  }

  v8 = *(v0 + 64);
  v9 = *(v8 + 64);
  LOBYTE(v8) = *(*(*(v8 + 80) + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_skippedClassic);
  *(v0 + 16) = v9;
  *(v0 + 24) = v8;

  v10 = v9;
  PassthroughSubject.send(_:)();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100E5C834()
{

  v1 = v0[23];
  v0[6] = v1;
  v0[32] = v1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (swift_dynamicCast())
  {
    v2 = v0[7];
    if (v2 == 0x800000000000000ELL)
    {

      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_1000076D4(v3, qword_10177C418);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, v5, "Existing pairing session in progress!", v6, 2u);
      }

      v7 = v0[1];

      return v7();
    }

    sub_100101814(v2);
  }

  v9 = swift_task_alloc();
  v0[33] = v9;
  *v9 = v0;
  v9[1] = sub_100E5C4B4;
  v10 = v0[8];

  return unsafeBlocking<A>(_:)(v9, sub_100E689C4, v10, &type metadata for () + 1);
}

void sub_100E5CA7C(uint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v61 = a4;
  v57 = a3;
  v60 = a2;
  v65 = a1;
  v6 = type metadata accessor for MACAddress();
  v64 = *(v6 - 8);
  __chkstk_darwin(v6);
  v59 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016BCD20, &qword_1013EAC90);
  __chkstk_darwin(v8 - 8);
  v56 = &v55 - v9;
  v10 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v11 = __chkstk_darwin(v10 - 8);
  v62 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v58 = &v55 - v14;
  __chkstk_darwin(v13);
  v16 = &v55 - v15;
  v17 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v17 - 8);
  v19 = &v55 - v18;
  v20 = type metadata accessor for OwnedBeaconGroup(0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v63 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchPredicate();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = (&v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *(v5 + 16);
  *v26 = v27;
  (*(v24 + 104))(v26, enum case for DispatchPredicate.onQueue(_:), v23);
  v28 = v27;
  LOBYTE(v27) = _dispatchPreconditionTest(_:)();
  (*(v24 + 8))(v26, v23);
  if (v27)
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
  v29 = type metadata accessor for Logger();
  sub_1000076D4(v29, qword_10177C418);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v55 = v29;
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "Starting LE pairing", v32, 2u);
    v29 = v55;
  }

  QueueSynchronizer.conditionalSync<A>(_:)();
  if (v67 & 1) != 0 || (QueueSynchronizer.conditionalSync<A>(_:)(), (v66))
  {
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v29, qword_10177AD08);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_12;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "LE Pairing in progress. Not pairing.";
    goto LABEL_11;
  }

  sub_100AC5D4C(v65, v19);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_10000B3A8(v19, &unk_1016AF8B0, &unk_1013A0700);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_12;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "Missing beacon group to start LE pairing!";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v33, v34, v36, v35, 2u);

LABEL_12:

    return;
  }

  v37 = v63;
  sub_100E6ADA4(v19, v63, type metadata accessor for OwnedBeaconGroup);
  v38 = v61;
  v39 = v61 >> 60;
  if (v61 >> 60 == 15)
  {
    v43 = sub_100520038();
    v44 = v56;
    sub_10112CB48(v43, v56);

    v45 = sub_1000BC4D4(&qword_1016BCD28, &qword_1013EAC98);
    v46 = (*(*(v45 - 8) + 48))(v44, 1, v45);
    v41 = v64;
    if (v46 == 1)
    {
      sub_10000B3A8(v44, &qword_1016BCD20, &qword_1013EAC90);
      v47 = 1;
      v42 = v62;
      v48 = v58;
    }

    else
    {
      sub_100016590(*v44, *(v44 + 1));
      v49 = &v44[*(v45 + 48)];
      v48 = v58;
      (*(v41 + 32))(v58, v49, v6);
      v47 = 0;
      v42 = v62;
    }

    (*(v41 + 56))(v48, v47, 1, v6);
    sub_1000D2AD8(v48, v16, &qword_1016A40D0, &unk_10138BE70);
  }

  else
  {
    v40 = v57;
    sub_100017D5C(v57, v61);
    sub_10051A590(v40, v38, v16);
    sub_100006654(v40, v38);
    v41 = v64;
    v42 = v62;
  }

  sub_1000D2A70(v16, v42, &qword_1016A40D0, &unk_10138BE70);
  if ((*(v41 + 48))(v42, 1, v6) == 1)
  {
    sub_10000B3A8(v42, &qword_1016A40D0, &unk_10138BE70);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "Invalid state. No MAC address to start LE pairing", v52, 2u);
    }
  }

  else
  {
    v53 = v39 < 0xF;
    v54 = v59;
    (*(v41 + 32))(v59, v42, v6);
    sub_100E533EC(v54, v53, v60 & 1);
    (*(v41 + 8))(v54, v6);
  }

  sub_10000B3A8(v16, &qword_1016A40D0, &unk_10138BE70);
  sub_100E6A9B4(v37, type metadata accessor for OwnedBeaconGroup);
}

uint64_t sub_100E5D36C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v43 = a4;
  v42 = a3;
  v38 = a1;
  v39 = a2;
  v5 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v41 = *(v5 - 8);
  v40 = *(v41 + 64);
  __chkstk_darwin(v5 - 8);
  v44 = &v33 - v6;
  v7 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v37 = *(v7 - 8);
  v8 = *(v37 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v33 - v9;
  v34 = &v33 - v9;
  v11 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v11 - 8);
  v13 = &v33 - v12;
  v36 = &v33 - v12;
  v14 = type metadata accessor for MACAddress();
  v33 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v18 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v33 - v19;
  v21 = *(*(v4 + 80) + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);

  v35 = v20;
  sub_100A22DF0(v20);
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  sub_1000D2A70(v38, v10, &unk_1016A9A20, &qword_10138B280);
  (*(v15 + 16))(v18, v20, v14);
  sub_1000D2A70(v39, v44, &unk_1016AF8B0, &unk_1013A0700);
  v23 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v24 = (v8 + *(v15 + 80) + v23) & ~*(v15 + 80);
  v25 = (v16 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (*(v41 + 80) + v25 + 8) & ~*(v41 + 80);
  v27 = v26 + v40;
  v28 = (v26 + v40) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  sub_1000D2AD8(v34, v29 + v23, &unk_1016A9A20, &qword_10138B280);
  v30 = v29 + v24;
  v31 = v33;
  (*(v15 + 32))(v30, v18, v33);
  *(v29 + v25) = v21;
  sub_1000D2AD8(v44, v29 + v26, &unk_1016AF8B0, &unk_1013A0700);
  *(v29 + v27) = v42;
  *(v29 + v28 + 8) = v43;

  swift_errorRetain();
  sub_10025EDD4(0, 0, v36, &unk_1013EAC88, v29);

  return (*(v15 + 8))(v35, v31);
}

uint64_t sub_100E5D7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 88) = a7;
  *(v8 + 96) = v16;
  *(v8 + 408) = a8;
  *(v8 + 72) = a5;
  *(v8 + 80) = a6;
  *(v8 + 64) = a4;
  sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  *(v8 + 104) = swift_task_alloc();
  sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  *(v8 + 112) = swift_task_alloc();
  v9 = type metadata accessor for AccessoryPairingAnalytics(0);
  *(v8 + 120) = v9;
  v10 = *(v9 - 8);
  *(v8 + 128) = v10;
  *(v8 + 136) = *(v10 + 64);
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();
  v11 = type metadata accessor for MultipartAccessoryPairingInfo(0);
  *(v8 + 184) = v11;
  *(v8 + 192) = *(v11 - 8);
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  *(v8 + 216) = v12;
  *(v8 + 224) = *(v12 - 8);
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  v13 = type metadata accessor for MACAddress();
  *(v8 + 256) = v13;
  *(v8 + 264) = *(v13 - 8);
  *(v8 + 272) = swift_task_alloc();
  sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();

  return _swift_task_switch(sub_100E5DAE4, 0, 0);
}

uint64_t sub_100E5DAE4()
{
  v40 = v0;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v1 = v0[37];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[32];
  v6 = v0[8];
  v5 = v0[9];
  v7 = type metadata accessor for Logger();
  v0[38] = sub_1000076D4(v7, qword_10177C418);
  sub_1000D2A70(v6, v1, &unk_1016A9A20, &qword_10138B280);
  v8 = *(v3 + 16);
  v0[39] = v8;
  v0[40] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v2, v5, v4);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[37];
  if (v11)
  {
    v13 = v0[36];
    v14 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v14 = 136315394;
    sub_1000D2A70(v12, v13, &unk_1016A9A20, &qword_10138B280);
    v15 = type metadata accessor for OwnedBeaconRecord(0);
    v16 = (*(*(v15 - 8) + 48))(v13, 1, v15);
    v17 = v0[36];
    if (v16 == 1)
    {
      sub_10000B3A8(v17, &unk_1016A9A20, &qword_10138B280);
      v18 = 0xE700000000000000;
      v19 = 0x6E776F6E6B6E55;
    }

    else
    {
      v23 = v0[31];
      v24 = v0[27];
      v25 = v0[28];
      v26 = v17 + *(v15 + 20);
      v27 = v0[36];
      (*(v25 + 16))(v23, v26, v24);
      sub_100E6A9B4(v27, type metadata accessor for OwnedBeaconRecord);
      v19 = UUID.uuidString.getter();
      v18 = v28;
      (*(v25 + 8))(v23, v24);
    }

    v30 = v0[33];
    v29 = v0[34];
    v31 = v0[32];
    sub_10000B3A8(v0[37], &unk_1016A9A20, &qword_10138B280);
    v32 = sub_1000136BC(v19, v18, &v39);

    *(v14 + 4) = v32;
    *(v14 + 12) = 2082;
    sub_100E62554(&qword_1016A4210, 255, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;
    (*(v30 + 8))(v29, v31);
    v36 = sub_1000136BC(v33, v35, &v39);

    *(v14 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v9, v10, "Writing pairing event for %s %{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v21 = v0[33];
    v20 = v0[34];
    v22 = v0[32];

    (*(v21 + 8))(v20, v22);
    sub_10000B3A8(v12, &unk_1016A9A20, &qword_10138B280);
  }

  v37 = swift_task_alloc();
  v0[41] = v37;
  *v37 = v0;
  v37[1] = sub_100E5DF0C;

  return daemon.getter();
}

uint64_t sub_100E5DF0C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 336) = a1;

  v3 = swift_task_alloc();
  *(v2 + 344) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for LocalStorageService();
  v6 = sub_100E62554(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100E62554(&unk_1016B1030, 255, type metadata accessor for LocalStorageService, &unk_1013DB940);
  *v3 = v9;
  v3[1] = sub_100E5E0F0;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100E5E0F0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 352) = a1;
  *(v3 + 360) = v1;

  if (v1)
  {
    v4 = sub_100E5F52C;
  }

  else
  {

    v4 = sub_100E5E20C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100E5E20C(uint64_t a1)
{
  v96 = v1;
  v2 = v1[10];
  v3 = v2[12];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v2[14];
  if (v4 >> 60 == 15)
  {
    goto LABEL_6;
  }

  v5 = v2[11];
  v6 = v2[13];
  v7 = (v2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
  v8 = *v7;
  v1[46] = *v7;
  v9 = v7[1];
  v1[47] = v9;
  if (v9 >> 60 == 15)
  {
    goto LABEL_6;
  }

  v1[5] = v8;
  v1[6] = v9;

  sub_10002E98C(v6, v4);
  sub_10002E98C(v8, v9);
  sub_1000E0A3C();
  if (DataProtocol.isNull.getter())
  {
    sub_100006654(v8, v9);
    sub_100006654(v6, v4);

LABEL_6:
    sub_100E6259C();
    swift_allocError();
    *v10 = 3;
    swift_willThrow();
LABEL_7:

    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failure writing to pairing event local storage: %{public}@", v13, 0xCu);
      sub_10000B3A8(v14, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
    }

    v16 = v1[1];

    return v16();
  }

  v91 = v5;
  v18 = v1[10];
  v94 = Data.trimmed.getter();
  v20 = v19;
  v21 = *(v18 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v85 = v1;
  if (os_log_type_enabled(v22, v23))
  {
    v92 = v20;
    v24 = swift_slowAlloc();
    v95[0] = swift_slowAlloc();
    *v24 = 136315394;
    *(v24 + 4) = sub_1000136BC(0xD000000000000041, 0x8000000101371ED0, v95);
    *(v24 + 12) = 2080;
    sub_100101BAC();
    v25 = Dictionary.description.getter();
    v27 = v6;
    v28 = sub_1000136BC(v25, v26, v95);

    *(v24 + 14) = v28;
    v6 = v27;
    _os_log_impl(&_mh_execute_header, v22, v23, "%sserialNumbersAndAccessoryInfo %s", v24, 0x16u);
    swift_arrayDestroy();

    v20 = v92;
  }

  if (!*(v21 + 16) || (v29 = sub_100771E30(v94, v20), (v30 & 1) == 0))
  {
    v1 = v85;

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = v20;
      v47 = swift_slowAlloc();
      v95[0] = v47;
      *v45 = 136315138;
      *(v45 + 4) = sub_1000136BC(0xD000000000000041, 0x8000000101371ED0, v95);
      _os_log_impl(&_mh_execute_header, v43, v44, "%s Missing multipartInfo!", v45, 0xCu);
      sub_100007BAC(v47);
      v20 = v46;
    }

    sub_100E6259C();
    swift_allocError();
    *v48 = 7;
    swift_willThrow();
    sub_100016590(v94, v20);
    sub_100006654(v8, v9);
    sub_100006654(v6, v4);
    goto LABEL_7;
  }

  v93 = v20;
  v90 = v6;
  v31 = v85[35];
  v33 = v85[25];
  v32 = v85[26];
  v34 = v85[8];
  sub_100E6A94C(*(v21 + 56) + *(v85[24] + 72) * v29, v33, type metadata accessor for MultipartAccessoryPairingInfo);

  sub_100E6ADA4(v33, v32, type metadata accessor for MultipartAccessoryPairingInfo);
  sub_1000D2A70(v34, v31, &unk_1016A9A20, &qword_10138B280);
  v35 = type metadata accessor for OwnedBeaconRecord(0);
  v36 = (*(*(v35 - 8) + 48))(v31, 1, v35);
  v37 = v85[35];
  v38 = v85[30];
  v39 = v85[27];
  v40 = v85[28];
  v41 = v85[22];
  if (v36 != 1)
  {
    v49 = v37 + *(v35 + 20);
    v50 = v85[35];
    (*(v40 + 16))(v85[22], v49, v85[27]);
    sub_100E6A9B4(v50, type metadata accessor for OwnedBeaconRecord);
    v88 = *(v40 + 56);
    v88(v41, 0, 1, v39);
    (*(v40 + 32))(v38, v41, v39);
    goto LABEL_24;
  }

  sub_10000B3A8(v37, &unk_1016A9A20, &qword_10138B280);
  v88 = *(v40 + 56);
  v88(v41, 1, 1, v39);
  UUID.init()();
  if ((*(v40 + 48))(v41, 1, v39) == 1)
  {
LABEL_24:
    v42 = v85;
    goto LABEL_25;
  }

  v42 = v85;
  sub_10000B3A8(v85[22], &qword_1016980D0, &unk_10138F3B0);
LABEL_25:
  v51 = v42[14];
  v52 = v42[11];
  v53 = *(v42[28] + 16);
  v53(v42[29], v42[30], v42[27]);
  sub_1000D2A70(v52, v51, &unk_1016AF8B0, &unk_1013A0700);
  v54 = type metadata accessor for OwnedBeaconGroup(0);
  if ((*(*(v54 - 8) + 48))(v51, 1, v54) == 1)
  {
    sub_10000B3A8(v42[14], &unk_1016AF8B0, &unk_1013A0700);
    v55 = 1;
  }

  else
  {
    v56 = v42[14];
    v53(v42[21], v56 + *(v54 + 24), v42[27]);
    sub_100E6A9B4(v56, type metadata accessor for OwnedBeaconGroup);
    v55 = 0;
  }

  v82 = v42[39];
  v57 = v42[32];
  v58 = v42[33];
  v59 = v42[26];
  v60 = v42[23];
  v61 = v42[13];
  v86 = v42[12];
  v62 = v42[9];
  v63 = v42[10];
  v88(v42[21], v55, 1, v42[27]);
  v64 = v63 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId;
  v65 = *(v63 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId);
  v83 = *(v64 + 1);
  v89 = *(v59 + *(v60 + 28));
  v82(v61, v62, v57);
  (*(v58 + 56))(v61, 0, 1, v57);
  if (v86)
  {
    swift_getErrorValue();
    v87 = Error.localizedDescription.getter();
    v67 = v66;
  }

  else
  {
    v87 = 0;
    v67 = 0;
  }

  if (v83)
  {
    v68 = 0;
  }

  else
  {
    v68 = v65;
  }

  v84 = v42[44];
  v70 = v42[28];
  v69 = v42[29];
  v71 = v42[27];
  v72 = v42;
  v73 = v42[21];
  v74 = v72[20];
  v75 = v72[15];
  v76 = v72[13];
  v77 = *(v72 + 408);
  (*(v70 + 32))(v74, v69, v71);
  sub_1000D2AD8(v73, v74 + v75[5], &qword_1016980D0, &unk_10138F3B0);
  *(v74 + v75[6]) = v68;
  v78 = (v74 + v75[7]);
  *v78 = v94;
  v78[1] = v93;
  v79 = (v74 + v75[8]);
  *v79 = v91;
  v79[1] = v3;
  v80 = (v74 + v75[9]);
  *v80 = v90;
  v80[1] = v4;
  *(v74 + v75[10]) = v77;
  *(v74 + v75[11]) = v89;
  sub_1000D2AD8(v76, v74 + v75[12], &qword_1016A40D0, &unk_10138BE70);
  v81 = (v74 + v75[13]);
  *v81 = v87;
  v81[1] = v67;
  static Date.trustedNow.getter(v74 + v75[14]);

  return _swift_task_switch(sub_100E5ECC0, v84, 0);
}

uint64_t sub_100E5ECC0()
{
  v1 = v0[44];
  v2 = v0[19];
  v3 = v0[16];
  sub_100E6A94C(v0[20], v2, type metadata accessor for AccessoryPairingAnalytics);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[48] = v5;
  *(v5 + 16) = v1;
  sub_100E6ADA4(v2, v5 + v4, type metadata accessor for AccessoryPairingAnalytics);
  v8 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v6 = swift_task_alloc();
  v0[49] = v6;
  *v6 = v0;
  v6[1] = sub_100E5EE0C;

  return v8(&unk_1013A5208, v5);
}

uint64_t sub_100E5EE0C()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {
    v3 = *(v2 + 352);

    v4 = sub_100E5F280;
    v5 = v3;
  }

  else
  {

    v4 = sub_100E5EF54;
    v5 = 0;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100E5EF54()
{
  v26 = v0;
  sub_100E6A94C(v0[20], v0[18], type metadata accessor for AccessoryPairingAnalytics);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[47];
  v24 = v0[46];
  v5 = v0[30];
  v6 = v0[27];
  v7 = v0[28];
  v8 = v0[26];
  v9 = v0[20];
  v10 = v0[18];
  if (v3)
  {
    v23 = v0[26];
    v11 = swift_slowAlloc();
    v22 = v6;
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136315138;
    v20 = v4;
    v21 = v9;
    v13 = sub_10111CE44();
    v15 = v14;
    sub_100E6A9B4(v10, type metadata accessor for AccessoryPairingAnalytics);
    v16 = sub_1000136BC(v13, v15, &v25);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v1, v2, "Inserted %s", v11, 0xCu);
    sub_100007BAC(v12);

    sub_100006654(v24, v20);
    sub_100E6A9B4(v21, type metadata accessor for AccessoryPairingAnalytics);
    (*(v7 + 8))(v5, v22);
    v17 = v23;
  }

  else
  {

    sub_100006654(v24, v4);
    sub_100E6A9B4(v10, type metadata accessor for AccessoryPairingAnalytics);
    sub_100E6A9B4(v9, type metadata accessor for AccessoryPairingAnalytics);
    (*(v7 + 8))(v5, v6);
    v17 = v8;
  }

  sub_100E6A9B4(v17, type metadata accessor for MultipartAccessoryPairingInfo);

  v18 = v0[1];

  return v18();
}

uint64_t sub_100E5F29C()
{
  v1 = v0[46];
  v2 = v0[47];
  v3 = v0[30];
  v4 = v0[27];
  v5 = v0[28];
  v6 = v0[26];
  v7 = v0[20];

  sub_100006654(v1, v2);
  sub_100E6A9B4(v7, type metadata accessor for AccessoryPairingAnalytics);
  (*(v5 + 8))(v3, v4);
  sub_100E6A9B4(v6, type metadata accessor for MultipartAccessoryPairingInfo);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failure writing to pairing event local storage: %{public}@", v10, 0xCu);
    sub_10000B3A8(v11, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_100E5F52C()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failure writing to pairing event local storage: %{public}@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

void sub_100E5F74C(char a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = v2[2];
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if (v9)
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
  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_10177C418);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "pairingCompleteAnalyticsEvent", v14, 2u);
  }

  v15 = v2[29];
  if (v15)
  {
    v27 = *(v2[10] + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
    v16 = v27;
    type metadata accessor for Transaction();
    v17 = swift_allocObject();
    v17[2] = v15;
    v17[3] = v16;
    v17[4] = v4;
    swift_retain_n();
    swift_retain_n();
    static Transaction.asyncTask(name:block:)();

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
    *(v18 + 15) = 0xD00000000000002CLL;
    *(v18 + 16) = 0x800000010134D0D0;
    v2[29] = v18;

    v22 = swift_allocObject();
    *(v22 + 16) = v18;
    *(v22 + 24) = a1 & 1;

    static Transaction.asyncTask(name:block:)();
  }

  else
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "No analytics event!", v25, 2u);
    }
  }
}

uint64_t sub_100E5FBBC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100E5FBDC, 0, 0);
}

uint64_t sub_100E5FBDC()
{
  v1 = *(v0 + 16);

  return _swift_task_switch(sub_100E5FC48, v1, 0);
}

uint64_t sub_100E5FC48()
{
  sub_10117DE84(v0[2], v0[3]);

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

void sub_100E5FD24(uint64_t a1)
{
  v2 = v1;
  v74 = *v1;
  v4 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v4 - 8);
  v6 = &v70 - v5;
  v7 = type metadata accessor for MACAddress();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v84 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v10;
  __chkstk_darwin(v9);
  v86 = &v70 - v11;
  v12 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v77 = *(v12 - 8);
  v13 = __chkstk_darwin(v12 - 8);
  v80 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v14;
  __chkstk_darwin(v13);
  v85 = &v70 - v15;
  v16 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v75 = *(v16 - 8);
  v17 = *(v75 + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v76 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v83 = &v70 - v19;
  v20 = type metadata accessor for DispatchPredicate();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = (&v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = v2[2];
  *v23 = v24;
  (*(v21 + 104))(v23, enum case for DispatchPredicate.onQueue(_:), v20);
  v25 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  (*(v21 + 8))(v23, v20);
  if (v24)
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
  v73 = v8;
  v26 = type metadata accessor for Logger();
  sub_1000076D4(v26, qword_10177C418);
  swift_errorRetain();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  v29 = os_log_type_enabled(v27, v28);
  v81 = v7;
  v82 = a1;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = v6;
    v32 = swift_slowAlloc();
    v87 = a1;
    v88 = v32;
    *v30 = 136446210;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v33 = String.init<A>(describing:)();
    v35 = sub_1000136BC(v33, v34, &v88);

    *(v30 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v27, v28, "pairingFailureAnalyticsEvent %{public}s", v30, 0xCu);
    sub_100007BAC(v32);
    v6 = v31;
  }

  v36 = v2[29];
  if (v36)
  {
    v37 = v2[10];
    v38 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo;
    v39 = *(v37 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
    type metadata accessor for Transaction();
    v40 = swift_allocObject();
    v40[2] = v36;
    v40[3] = v39;
    v41 = v82;
    v42 = v74;
    v40[4] = v82;
    v40[5] = v42;

    swift_errorRetain();

    v74 = v39;

    static Transaction.asyncTask(name:block:)();

    v2[29] = 0;

    v88 = v41;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    type metadata accessor for SPPairingSessionError(0);
    v43 = swift_dynamicCast();
    v72 = v36;
    if (v43)
    {
      v44 = v87;
      v88 = v87;
      sub_100E62554(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
      _BridgedStoredNSError.code.getter();

      if (v87 == 18)
      {
        v45 = 3;
      }

      else
      {
        v45 = 2;
      }
    }

    else
    {
      v45 = 2;
    }

    v71 = v45;
    v49 = type metadata accessor for OwnedBeaconRecord(0);
    v50 = v83;
    (*(*(v49 - 8) + 56))(v83, 1, 1, v49);
    v51 = type metadata accessor for OwnedBeaconGroup(0);
    v52 = v85;
    (*(*(v51 - 8) + 56))(v85, 1, 1, v51);
    v70 = *(v37 + v38);

    v53 = v86;
    sub_100A22DF0(v86);
    v54 = type metadata accessor for TaskPriority();
    (*(*(v54 - 8) + 56))(v6, 1, 1, v54);
    v55 = v50;
    v56 = v76;
    sub_1000D2A70(v55, v76, &unk_1016A9A20, &qword_10138B280);
    v57 = v73;
    (*(v73 + 16))(v84, v53, v81);
    v58 = v52;
    v59 = v80;
    sub_1000D2A70(v58, v80, &unk_1016AF8B0, &unk_1013A0700);
    v60 = (*(v75 + 80) + 32) & ~*(v75 + 80);
    v61 = (v17 + *(v57 + 80) + v60) & ~*(v57 + 80);
    v62 = &v79[v61 + 7] & 0xFFFFFFFFFFFFFFF8;
    v63 = *(v77 + 80);
    v79 = v6;
    v64 = (v63 + v62 + 8) & ~v63;
    v65 = v64 + v78;
    v66 = (v64 + v78) & 0xFFFFFFFFFFFFFFF8;
    v67 = swift_allocObject();
    *(v67 + 16) = 0;
    *(v67 + 24) = 0;
    sub_1000D2AD8(v56, v67 + v60, &unk_1016A9A20, &qword_10138B280);
    v68 = v67 + v61;
    v69 = v81;
    (*(v57 + 32))(v68, v84, v81);
    *(v67 + v62) = v70;
    sub_1000D2AD8(v59, v67 + v64, &unk_1016AF8B0, &unk_1013A0700);
    *(v67 + v65) = v71;
    *(v67 + v66 + 8) = v82;
    swift_errorRetain();

    sub_10025EDD4(0, 0, v79, &unk_1013EAC58, v67);

    (*(v57 + 8))(v86, v69);
    sub_10000B3A8(v85, &unk_1016AF8B0, &unk_1013A0700);
    sub_10000B3A8(v83, &unk_1016A9A20, &qword_10138B280);
  }

  else
  {
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "No analytics event!", v48, 2u);
    }
  }
}

uint64_t sub_100E606C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100E606E4, 0, 0);
}

uint64_t sub_100E606E4()
{
  v1 = *(v0 + 16);

  swift_errorRetain();

  return _swift_task_switch(sub_100E60758, v1, 0);
}

uint64_t sub_100E60758()
{
  sub_10117DEC4(v0[2], v0[3], v0[4]);

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

void sub_100E60864(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = Data.subdata(in:)();
  v8 = v7;
  v30 = v6;
  v31 = v7;
  sub_1000E0A3C();
  if ((DataProtocol.isNull.getter() & 1) == 0)
  {
    v32 = v2;
    v17 = Data.trimmed.getter();
    v19 = v18;
    v20 = v4 >> 62;
    if ((v4 >> 62) > 1)
    {
      if (v20 != 2)
      {
        goto LABEL_23;
      }

      v23 = *(v5 + 16);
      v22 = *(v5 + 24);
      v21 = v22 - v23;
      if (!__OFSUB__(v22, v23))
      {
LABEL_16:
        if (v21 >= 20)
        {
          v24 = Data.subdata(in:)();
          v26 = v25;
          v30 = v24;
          v31 = v25;
          v27 = DataProtocol.intValue.getter();
          if ((v27 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else
          {
            v28 = v27;
            if (v27 <= 0xFF)
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v30 = *a2;
              *a2 = 0x8000000000000000;
              sub_101001740(v28, v17, v19, isUniquelyReferenced_nonNull_native);
              sub_100016590(v24, v26);
              sub_100016590(v6, v8);
              sub_100016590(v17, v19);
              *a2 = v30;

              return;
            }
          }

          __break(1u);
          goto LABEL_22;
        }

LABEL_23:
        __break(1u);
        return;
      }

      __break(1u);
    }

    else if (!v20)
    {
      v21 = BYTE6(v4);
      goto LABEL_16;
    }

    if (__OFSUB__(HIDWORD(v5), v5))
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v21 = HIDWORD(v5) - v5;
    goto LABEL_16;
  }

  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177C418);
  sub_100017D5C(v6, v8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  sub_100016590(v6, v8);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v30 = v13;
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    v14 = Data.hexString.getter();
    v16 = sub_1000136BC(v14, v15, &v30);

    *(v12 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "Invalid serial number %{private,mask.hash}s", v12, 0x16u);
    sub_100007BAC(v13);

    sub_100016590(v6, v8);
  }

  else
  {

    sub_100016590(v6, v8);
  }
}

void sub_100E60B78(uint64_t *a1, uint64_t a2)
{
  v45[3] = a2;
  v4 = sub_1000BC4D4(&qword_1016998A8, &qword_1013EADC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v39 - v5;
  v7 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v43 = *(v7 - 8);
  v44 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v39 - v11;
  v14 = *a1;
  v13 = a1[1];
  v15 = Data.subdata(in:)();
  v17 = v16;
  v45[0] = v15;
  v45[1] = v16;
  sub_1000E0A3C();
  if ((DataProtocol.isNull.getter() & 1) == 0)
  {
    v26 = Data.trimmed.getter();
    v28 = v27;
    v29 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v29 != 2)
      {
        goto LABEL_24;
      }

      v32 = *(v14 + 16);
      v31 = *(v14 + 24);
      v30 = v31 - v32;
      if (!__OFSUB__(v31, v32))
      {
LABEL_16:
        if (v30 >= 20)
        {
          v39 = v28;
          v40 = v26;
          v41 = v17;
          v42 = v2;
          v33 = Data.subdata(in:)();
          v35 = v34;
          sub_100017D5C(v33, v34);
          MACAddress.init(data:type:)();
          sub_1000D2A70(v12, v10, &qword_1016A40D0, &unk_10138BE70);
          v36 = type metadata accessor for MACAddress();
          v37 = *(v36 - 8);
          if ((*(v37 + 48))(v10, 1, v36) == 1)
          {
            sub_10000B3A8(v10, &qword_1016A40D0, &unk_10138BE70);
          }

          else
          {
            v38 = MACAddress.isNull.getter();
            (*(v37 + 8))(v10, v36);
            if ((v38 & 1) == 0)
            {
              sub_1000D2A70(v12, v6, &qword_1016A40D0, &unk_10138BE70);
              goto LABEL_22;
            }
          }

          (*(v37 + 56))(v6, 1, 1, v36);
LABEL_22:
          (*(v43 + 56))(v6, 0, 1, v44);
          sub_1001DD3D8(v6, v40, v39);
          sub_100016590(v33, v35);
          sub_100016590(v15, v41);
          sub_10000B3A8(v12, &qword_1016A40D0, &unk_10138BE70);
          return;
        }

LABEL_24:
        __break(1u);
        return;
      }

      __break(1u);
    }

    else if (!v29)
    {
      v30 = BYTE6(v13);
      goto LABEL_16;
    }

    if (__OFSUB__(HIDWORD(v14), v14))
    {
      __break(1u);
      goto LABEL_24;
    }

    v30 = HIDWORD(v14) - v14;
    goto LABEL_16;
  }

  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000076D4(v18, qword_10177C418);
  sub_100017D5C(v15, v17);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  sub_100016590(v15, v17);
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v45[0] = v22;
    *v21 = 141558275;
    *(v21 + 4) = 1752392040;
    *(v21 + 12) = 2081;
    v23 = Data.hexString.getter();
    v25 = sub_1000136BC(v23, v24, v45);

    *(v21 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v19, v20, "Invalid serial number %{private,mask.hash}s", v21, 0x16u);
    sub_100007BAC(v22);

    sub_100016590(v15, v17);
  }

  else
  {

    sub_100016590(v15, v17);
  }
}

uint64_t sub_100E61058@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v198 = a2;
  v5 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v5 - 8);
  v193 = &v189 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v8 = __chkstk_darwin(v7 - 8);
  v191 = &v189 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v194 = &v189 - v10;
  v199 = type metadata accessor for UUID();
  v203 = *(v199 - 8);
  v11 = __chkstk_darwin(v199);
  v195 = &v189 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v196 = &v189 - v13;
  v14 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v14);
  v16 = &v189 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = type metadata accessor for OwnedBeaconRecord(0);
  v17 = *(v197 - 8);
  v18 = __chkstk_darwin(v197);
  v20 = &v189 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v192 = &v189 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v189 - v24;
  __chkstk_darwin(v23);
  v200 = &v189 - v26;
  v27 = *a1;
  v28 = a1[1];
  v201 = sub_100AA372C(v27, v28);

  sub_100E21E68(&v201);
  if (v2)
  {
    goto LABEL_78;
  }

  if (!v201[2])
  {

    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    sub_1000076D4(v57, qword_10177C418);
    sub_100017D5C(v27, v28);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();
    sub_100016590(v27, v28);
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v201 = v61;
      *v60 = 141558275;
      *(v60 + 4) = 1752392040;
      *(v60 + 12) = 2081;
      sub_100017D5C(v27, v28);
      static String.Encoding.utf8.getter();
      v62 = String.init(data:encoding:)();
      if (!v63)
      {
        v62 = Data.hexString.getter();
      }

      v64 = v62;
      v65 = v63;
      sub_100016590(v27, v28);
      v66 = sub_1000136BC(v64, v65, &v201);

      *(v60 + 14) = v66;
      _os_log_impl(&_mh_execute_header, v58, v59, "Missing beacon record for %{private,mask.hash}s.", v60, 0x16u);
      sub_100007BAC(v61);
    }

    v67 = v199;
    v68 = type metadata accessor for AirPodsUnpairData.DeviceUnpairData(0);
    v69 = v198;
    (*(v203 + 56))(v198 + v68[7], 1, 1, v67);
    *v69 = xmmword_10138BBF0;
    *(v69 + 1) = xmmword_10138BBF0;
    v69[4] = v27;
    v69[5] = v28;
    v70 = (v69 + v68[8]);
    *v70 = 0;
    v70[1] = 0;
    v71 = (v69 + v68[9]);
    *v71 = 0;
    v71[1] = 0;
    (*(*(v68 - 1) + 56))(v69, 0, 1, v68);
    return sub_100017D5C(v27, v28);
  }

  sub_100E6A94C(v201 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v25, type metadata accessor for OwnedBeaconRecord);

  v29 = v200;
  sub_100E6ADA4(v25, v200, type metadata accessor for OwnedBeaconRecord);
  sub_100E6A94C(v29 + *(v197 + 24), v16, type metadata accessor for StableIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v73 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
    v74 = &v16[v73[12]];
    v76 = *v74;
    v75 = *(v74 + 1);
    v77 = &v16[v73[16]];
    v78 = *v77;
    v79 = *(v77 + 1);
    v80 = &v16[v73[20]];
    v82 = *v80;
    v81 = *(v80 + 1);
    v83 = v199;
    (*(v203 + 32))(v195, v16, v199);
    v201 = v78;
    v202 = v79;
    sub_1000DF96C();
    v84 = Data.init<A>(hexString:)();
    if (v85 >> 60 == 15)
    {

LABEL_28:

LABEL_29:
      v107 = v200;
      (*(v203 + 8))(v195, v83);
      sub_100E6A9B4(v107, type metadata accessor for OwnedBeaconRecord);
      v108 = type metadata accessor for AirPodsUnpairData.DeviceUnpairData(0);
      return (*(*(v108 - 8) + 56))(v198, 1, 1, v108);
    }

    v103 = v84;
    v104 = v85;
    v201 = v76;
    v202 = v75;
    v105 = Data.init<A>(hexString:)();
    if (v106 >> 60 == 15)
    {
      sub_100006654(v103, v104);
      goto LABEL_28;
    }

    v113 = v105;
    v114 = v106;
    v201 = v82;
    v202 = v81;
    v115 = Data.init<A>(hexString:)();
    if (v116 >> 60 == 15)
    {
      sub_100006654(v103, v104);
      sub_100006654(v113, v114);
      goto LABEL_29;
    }

    v145 = v115;
    v196 = v116;
    v146 = v203;
    v147 = v191;
    (*(v203 + 16))(v191, v195, v83);
    (*(v146 + 56))(v147, 0, 1, v83);
    v148 = v200;
    v149 = sub_100D5F668();
    v197 = v145;
    if (v150 >> 60 == 15)
    {
      v151 = 0;
      v193 = 0;
    }

    else
    {
      v163 = v149;
      v164 = v150;
      v165 = sub_100313B54(v149, v150);
      v167 = v166;
      sub_100006654(v163, v164);
      v151 = Data.hexString.getter();
      v193 = v168;
      v169 = v165;
      v3 = 0;
      v145 = v197;
      v148 = v200;
      sub_100016590(v169, v167);
    }

    v170 = sub_100D5F668();
    v194 = v151;
    if (v171 >> 60 == 15)
    {
      v192 = 0;
      v172 = 0;
LABEL_74:
      (*(v203 + 8))(v195, v199);
      sub_100E6A9B4(v148, type metadata accessor for OwnedBeaconRecord);
      v183 = v198;
      *v198 = v103;
      v183[1] = v104;
      v183[2] = v113;
      v183[3] = v114;
      v184 = v196;
      v183[4] = v145;
      v183[5] = v184;
      v185 = type metadata accessor for AirPodsUnpairData.DeviceUnpairData(0);
      sub_1000D2AD8(v191, v183 + v185[7], &qword_1016980D0, &unk_10138F3B0);
      v186 = (v183 + v185[8]);
      v187 = v193;
      *v186 = v194;
      v186[1] = v187;
      v188 = (v183 + v185[9]);
      *v188 = v192;
      v188[1] = v172;
      return (*(*(v185 - 1) + 56))(v183, 0, 1, v185);
    }

    v173 = v171 >> 62;
    v190 = v3;
    if ((v171 >> 62) > 1)
    {
      if (v173 != 2)
      {
        goto LABEL_72;
      }

      v177 = *(v170 + 16);
      v176 = *(v170 + 24);
      v143 = __OFSUB__(v176, v177);
      v178 = v176 - v177;
      if (!v143)
      {
LABEL_70:
        v175 = v171;
        v174 = v170;
        if (v178 >= -1)
        {
          goto LABEL_73;
        }

        __break(1u);
LABEL_72:
        v175 = v171;
        v174 = v170;
        goto LABEL_73;
      }

      __break(1u);
    }

    else if (!v173)
    {
      v174 = v170;
      v175 = v171;
LABEL_73:
      v179 = Data.subdata(in:)();
      v181 = v180;
      sub_100006654(v174, v175);
      v192 = Data.hexString.getter();
      v172 = v182;
      sub_100016590(v179, v181);
      v148 = v200;
      v145 = v197;
      goto LABEL_74;
    }

    LODWORD(v178) = HIDWORD(v170) - v170;
    if (__OFSUB__(HIDWORD(v170), v170))
    {
LABEL_77:
      __break(1u);
LABEL_78:

      __break(1u);
      return result;
    }

    v178 = v178;
    goto LABEL_70;
  }

  v31 = v199;
  if (EnumCaseMultiPayload == 2)
  {
    v32 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
    v33 = &v16[v32[12]];
    v35 = *v33;
    v34 = *(v33 + 1);
    v36 = &v16[v32[16]];
    v38 = *v36;
    v37 = *(v36 + 1);
    v39 = &v16[v32[20]];
    v40 = *v39;
    v41 = *(v39 + 1);

    (*(v203 + 32))(v196, v16, v31);
    v201 = v40;
    v202 = v41;
    sub_1000DF96C();
    v42 = Data.init<A>(hexString:)();
    if (v43 >> 60 == 15)
    {

      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_1000076D4(v44, qword_10177C418);
      v45 = v200;
      v46 = v192;
      sub_100E6A94C(v200, v192, type metadata accessor for OwnedBeaconRecord);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v201 = v50;
        *v49 = 141558275;
        *(v49 + 4) = 1752392040;
        *(v49 + 12) = 2081;
        v51 = sub_1010DA578();
        v52 = v46;
        v54 = v53;
        sub_100E6A9B4(v52, type metadata accessor for OwnedBeaconRecord);
        v55 = sub_1000136BC(v51, v54, &v201);

        *(v49 + 14) = v55;
        _os_log_impl(&_mh_execute_header, v47, v48, "Invalid serialNumber for %{private,mask.hash}s", v49, 0x16u);
        sub_100007BAC(v50);

        (*(v203 + 8))(v196, v31);
        v56 = v200;
      }

      else
      {

        sub_100E6A9B4(v46, type metadata accessor for OwnedBeaconRecord);
        (*(v203 + 8))(v196, v31);
        v56 = v45;
      }

      sub_100E6A9B4(v56, type metadata accessor for OwnedBeaconRecord);
      v111 = v198;
      v112 = type metadata accessor for AirPodsUnpairData.DeviceUnpairData(0);
      return (*(*(v112 - 8) + 56))(v111, 1, 1, v112);
    }

    v96 = v42;
    v97 = v43;
    if (v37)
    {
      v201 = v38;
      v202 = v37;
      v98 = Data.init<A>(hexString:)();
      v100 = v99;
      if (v34)
      {
LABEL_25:
        v201 = v35;
        v202 = v34;
        v101 = Data.init<A>(hexString:)();
        v195 = v102;
LABEL_38:
        v190 = 0;
        v117 = v203;
        v118 = v194;
        (*(v203 + 16))(v194, v196, v31);
        (*(v117 + 56))(v118, 0, 1, v31);
        v119 = v200;
        v120 = sub_100D5F668();
        v197 = v100;
        if (v121 >> 60 == 15)
        {
          v122 = 0;
          v123 = 0;
        }

        else
        {
          v124 = v120;
          v125 = v121;
          v126 = sub_100313B54(v120, v121);
          v127 = v101;
          v129 = v128;
          sub_100006654(v124, v125);
          v122 = Data.hexString.getter();
          v123 = v130;
          v131 = v129;
          v101 = v127;
          v119 = v200;
          sub_100016590(v126, v131);
        }

        v132 = sub_100D5F668();
        v193 = v123;
        if (v133 >> 60 == 15)
        {
          v134 = v96;
          v96 = v98;
          v135 = 0;
          v136 = 0;
LABEL_57:
          (*(v203 + 8))(v196, v199);
          sub_100E6A9B4(v119, type metadata accessor for OwnedBeaconRecord);
          v156 = v197;
          v157 = v198;
          *v198 = v96;
          v157[1] = v156;
          v158 = v195;
          v157[2] = v101;
          v157[3] = v158;
          v157[4] = v134;
          v157[5] = v97;
          v159 = type metadata accessor for AirPodsUnpairData.DeviceUnpairData(0);
          sub_1000D2AD8(v194, v157 + v159[7], &qword_1016980D0, &unk_10138F3B0);
          v160 = (v157 + v159[8]);
          v161 = v193;
          *v160 = v122;
          v160[1] = v161;
          v162 = (v157 + v159[9]);
          *v162 = v135;
          v162[1] = v136;
          return (*(*(v159 - 1) + 56))(v157, 0, 1, v159);
        }

        v137 = v133 >> 62;
        v192 = v122;
        if ((v133 >> 62) > 1)
        {
          if (v137 != 2)
          {
            goto LABEL_55;
          }

          v142 = *(v132 + 16);
          v141 = *(v132 + 24);
          v143 = __OFSUB__(v141, v142);
          v144 = v141 - v142;
          if (!v143)
          {
            v134 = v96;
LABEL_53:
            v138 = v101;
            v96 = v98;
            v140 = v133;
            v139 = v132;
            if (v144 >= -1)
            {
              goto LABEL_56;
            }

            __break(1u);
LABEL_55:
            v138 = v101;
            v134 = v96;
            v96 = v98;
            v140 = v133;
            v139 = v132;
            goto LABEL_56;
          }

          __break(1u);
        }

        else
        {
          if (!v137)
          {
            v138 = v101;
            v134 = v96;
            v96 = v98;
            v139 = v132;
            v140 = v133;
LABEL_56:
            v152 = Data.subdata(in:)();
            v154 = v153;
            sub_100006654(v139, v140);
            v135 = Data.hexString.getter();
            v136 = v155;
            sub_100016590(v152, v154);
            v119 = v200;
            v101 = v138;
            v122 = v192;
            goto LABEL_57;
          }

          LODWORD(v144) = HIDWORD(v132) - v132;
          if (!__OFSUB__(HIDWORD(v132), v132))
          {
            v134 = v96;
            v144 = v144;
            goto LABEL_53;
          }
        }

        __break(1u);
        goto LABEL_77;
      }
    }

    else
    {
      v98 = 0;
      v100 = 0xF000000000000000;
      if (v34)
      {
        goto LABEL_25;
      }
    }

    v101 = 0;
    v195 = 0xF000000000000000;
    goto LABEL_38;
  }

  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v86 = type metadata accessor for Logger();
  sub_1000076D4(v86, qword_10177C418);
  sub_100E6A94C(v29, v20, type metadata accessor for OwnedBeaconRecord);
  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v201 = v90;
    *v89 = 141558275;
    *(v89 + 4) = 1752392040;
    *(v89 + 12) = 2081;
    v91 = sub_1010DA578();
    v93 = v92;
    v190 = 0;
    sub_100E6A9B4(v20, type metadata accessor for OwnedBeaconRecord);
    v94 = sub_1000136BC(v91, v93, &v201);

    *(v89 + 14) = v94;
    _os_log_impl(&_mh_execute_header, v87, v88, "Invalid beacon %{private,mask.hash}s", v89, 0x16u);
    sub_100007BAC(v90);

    v95 = v200;
  }

  else
  {

    sub_100E6A9B4(v20, type metadata accessor for OwnedBeaconRecord);
    v95 = v29;
  }

  sub_100E6A9B4(v95, type metadata accessor for OwnedBeaconRecord);
  v109 = v198;
  v110 = type metadata accessor for AirPodsUnpairData.DeviceUnpairData(0);
  (*(*(v110 - 8) + 56))(v109, 1, 1, v110);
  return sub_100E6A9B4(v16, type metadata accessor for StableIdentifier);
}

uint64_t sub_100E62284()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100E606C0(v2, v3, v4);
}

uint64_t sub_100E62330(uint64_t a1)
{
  v3 = *(sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for MACAddress() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700) - 8);
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + v8);
  v14 = *(v1 + v10 + *(v9 + 64));
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_100014744;

  return sub_100E5D7B4(a1, v11, v12, v1 + v4, v1 + v7, v13, v1 + v10, v14);
}

uint64_t sub_100E62554(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_100E6259C()
{
  result = qword_1016BCD18;
  if (!qword_1016BCD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BCD18);
  }

  return result;
}

Swift::Int sub_100E625F0(uint64_t *a1)
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
        type metadata accessor for OwnedBeaconRecord(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100E633EC(v8, v9, a1, v4);
      v6[2] = 0;
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
    return sub_100E6271C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100E6271C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v109 = &v100 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v100 - v15;
  __chkstk_darwin(v14);
  v114 = &v100 - v17;
  v126 = type metadata accessor for Date();
  v18 = *(v126 - 8);
  v19 = __chkstk_darwin(v126);
  v21 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v125 = &v100 - v22;
  v118 = type metadata accessor for OwnedBeaconRecord(0);
  v23 = __chkstk_darwin(v118);
  v117 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v128 = (&v100 - v26);
  result = __chkstk_darwin(v25);
  v30 = (&v100 - v29);
  v102 = a2;
  if (a3 != a2)
  {
    v108 = v11;
    v124 = (v18 + 56);
    v127 = (v18 + 48);
    v31 = *a4;
    v107 = (v18 + 32);
    v120 = (v18 + 8);
    v32 = *(v28 + 72);
    v33 = v31 + v32 * (a3 - 1);
    v115 = -v32;
    v116 = v31;
    v34 = a1 - a3;
    v101 = v32;
    v35 = v31 + v32 * a3;
    v110 = xmmword_101385D80;
    v113 = v16;
    v36 = v114;
    v119 = v21;
    v121 = (&v100 - v29);
    do
    {
      v106 = a3;
      v103 = v35;
      v37 = v35;
      v104 = v34;
      v38 = v34;
      v105 = v33;
      while (1)
      {
        v123 = v38;
        sub_100E6A94C(v37, v30, type metadata accessor for OwnedBeaconRecord);
        sub_100E6A94C(v33, v128, type metadata accessor for OwnedBeaconRecord);
        v39 = objc_autoreleasePoolPush();
        v40 = *v30;
        v41 = v30[1];
        v42 = v41 >> 62;
        v122 = v37;
        if ((v41 >> 62) > 1)
        {
          if (v42 != 2 || *(v40 + 16) == *(v40 + 24))
          {
LABEL_18:
            v51 = v126;
LABEL_22:
            v63 = *v124;
            (*v124)(v36, 1, 1, v51);
            goto LABEL_23;
          }
        }

        else if (v42)
        {
          if (v40 == v40 >> 32)
          {
            goto LABEL_18;
          }
        }

        else if ((v41 & 0xFF000000000000) == 0)
        {
          goto LABEL_18;
        }

        v43 = objc_autoreleasePoolPush();
        v44 = objc_allocWithZone(NSKeyedUnarchiver);
        sub_100017D5C(v40, v41);
        isa = Data._bridgeToObjectiveC()().super.isa;
        v129 = 0;
        v46 = [v44 initForReadingFromData:isa error:&v129];

        if (!v46)
        {
          v54 = v129;
          v55 = _convertNSErrorToError(_:)();

          swift_willThrow();
          sub_100016590(v40, v41);
          v56 = static os_log_type_t.error.getter();
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v57 = swift_allocObject();
          *(v57 + 16) = v110;
          v129 = v55;
          swift_errorRetain();
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          v58 = String.init<A>(describing:)();
          v60 = v59;
          *(v57 + 56) = &type metadata for String;
          *(v57 + 64) = sub_100008C00();
          *(v57 + 32) = v58;
          *(v57 + 40) = v60;
          sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
          v46 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)(v56, &_mh_execute_header, v46, "Unable to create unarchiver: %@", 31, 2, v57);

          v111 = 0;
LABEL_21:
          v36 = v114;
          v51 = v126;

          objc_autoreleasePoolPop(v43);
          v16 = v113;
          goto LABEL_22;
        }

        v47 = v129;
        sub_100016590(v40, v41);
        [v46 _enableStrictSecureDecodingMode];
        v48 = [objc_allocWithZone(CKRecord) initWithCoder:v46];
        if (!v48)
        {
          v61 = static os_log_type_t.error.getter();
          sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
          v62 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)(v61, &_mh_execute_header, v62, "Unable to extract CKRecord from cloudKitMetadata", 48, 2, _swiftEmptyArrayStorage);

          goto LABEL_21;
        }

        v49 = v48;

        objc_autoreleasePoolPop(v43);
        v50 = [v49 creationDate];

        v36 = v114;
        v51 = v126;
        if (v50)
        {
          v52 = v109;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v53 = 0;
        }

        else
        {
          v53 = 1;
          v52 = v109;
        }

        v16 = v113;
        v63 = *v124;
        (*v124)(v52, v53, 1, v51);
        sub_1000D2AD8(v52, v36, &unk_101696900, &unk_10138B1E0);
        v64 = *v127;
        if ((*v127)(v36, 1, v51) != 1)
        {
          (*v107)(v125, v36, v51);
          goto LABEL_25;
        }

LABEL_23:
        Date.init()();
        v64 = *v127;
        if ((*v127)(v36, 1, v51) != 1)
        {
          sub_10000B3A8(v36, &unk_101696900, &unk_10138B1E0);
        }

LABEL_25:
        objc_autoreleasePoolPop(v39);
        v65 = objc_autoreleasePoolPush();
        v66 = v65;
        v67 = *v128;
        v68 = v128[1];
        v69 = v68 >> 62;
        if ((v68 >> 62) > 1)
        {
          if (v69 != 2 || *(v67 + 16) == *(v67 + 24))
          {
LABEL_36:
            v78 = v126;
LABEL_40:
            v63(v16, 1, 1, v78);
            v90 = v119;
            goto LABEL_41;
          }
        }

        else if (v69)
        {
          if (v67 == v67 >> 32)
          {
            goto LABEL_36;
          }
        }

        else if ((v68 & 0xFF000000000000) == 0)
        {
          goto LABEL_36;
        }

        v112 = v65;
        v70 = objc_autoreleasePoolPush();
        v71 = objc_allocWithZone(NSKeyedUnarchiver);
        sub_100017D5C(v67, v68);
        v72 = Data._bridgeToObjectiveC()().super.isa;
        v129 = 0;
        v73 = [v71 initForReadingFromData:v72 error:&v129];

        if (!v73)
        {
          v81 = v129;
          v82 = _convertNSErrorToError(_:)();

          swift_willThrow();
          sub_100016590(v67, v68);
          v83 = static os_log_type_t.error.getter();
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v84 = swift_allocObject();
          *(v84 + 16) = v110;
          v129 = v82;
          swift_errorRetain();
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          v85 = String.init<A>(describing:)();
          v87 = v86;
          *(v84 + 56) = &type metadata for String;
          *(v84 + 64) = sub_100008C00();
          *(v84 + 32) = v85;
          *(v84 + 40) = v87;
          sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
          v73 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)(v83, &_mh_execute_header, v73, "Unable to create unarchiver: %@", 31, 2, v84);

          v111 = 0;
LABEL_39:
          v36 = v114;
          v78 = v126;

          objc_autoreleasePoolPop(v70);
          v66 = v112;
          v16 = v113;
          goto LABEL_40;
        }

        v74 = v129;
        sub_100016590(v67, v68);
        [v73 _enableStrictSecureDecodingMode];
        v75 = [objc_allocWithZone(CKRecord) initWithCoder:v73];
        if (!v75)
        {
          v88 = static os_log_type_t.error.getter();
          sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
          v89 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)(v88, &_mh_execute_header, v89, "Unable to extract CKRecord from cloudKitMetadata", 48, 2, _swiftEmptyArrayStorage);

          goto LABEL_39;
        }

        v76 = v75;

        objc_autoreleasePoolPop(v70);
        v77 = [v76 creationDate];

        v36 = v114;
        v78 = v126;
        if (v77)
        {
          v79 = v108;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v80 = 0;
        }

        else
        {
          v80 = 1;
          v79 = v108;
        }

        v16 = v113;
        v63(v79, v80, 1, v78);
        sub_1000D2AD8(v79, v16, &unk_101696900, &unk_10138B1E0);
        if (v64(v16, 1, v78) != 1)
        {
          v91 = v36;
          v90 = v119;
          v92 = v16;
          (*v107)(v119, v16, v78);
          v66 = v112;
          goto LABEL_43;
        }

        v90 = v119;
        v66 = v112;
LABEL_41:
        v91 = v36;
        Date.init()();
        v92 = v16;
        if (v64(v16, 1, v78) != 1)
        {
          sub_10000B3A8(v16, &unk_101696900, &unk_10138B1E0);
        }

LABEL_43:
        objc_autoreleasePoolPop(v66);
        v93 = v125;
        v94 = Date.compare(_:)();
        v95 = *v120;
        (*v120)(v90, v78);
        v95(v93, v78);
        sub_100E6A9B4(v128, type metadata accessor for OwnedBeaconRecord);
        v30 = v121;
        result = sub_100E6A9B4(v121, type metadata accessor for OwnedBeaconRecord);
        if (v94 != 1)
        {
          break;
        }

        v96 = v123;
        if (!v116)
        {
          __break(1u);
        }

        v97 = v122;
        v98 = v117;
        sub_100E6ADA4(v122, v117, type metadata accessor for OwnedBeaconRecord);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_100E6ADA4(v98, v33, type metadata accessor for OwnedBeaconRecord);
        v33 += v115;
        v37 = v97 + v115;
        v99 = __CFADD__(v96, 1);
        v38 = v96 + 1;
        v16 = v92;
        v36 = v91;
        if (v99)
        {
          goto LABEL_5;
        }
      }

      v16 = v92;
      v36 = v91;
LABEL_5:
      a3 = v106 + 1;
      v33 = v105 + v101;
      v34 = v104 - 1;
      v35 = v103 + v101;
    }

    while (v106 + 1 != v102);
  }

  return result;
}

void sub_100E633EC(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v263 = a1;
  v8 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v256 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v256 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v256 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v256 - v19;
  v21 = __chkstk_darwin(v18);
  v265 = &v256 - v22;
  v23 = __chkstk_darwin(v21);
  v264 = &v256 - v24;
  v25 = __chkstk_darwin(v23);
  v275 = &v256 - v26;
  __chkstk_darwin(v25);
  v274 = &v256 - v27;
  v295 = type metadata accessor for Date();
  v28 = *(v295 - 8);
  v29 = __chkstk_darwin(v295);
  v293 = &v256 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v300 = &v256 - v32;
  v33 = __chkstk_darwin(v31);
  v280 = &v256 - v34;
  v35 = __chkstk_darwin(v33);
  v282 = &v256 - v36;
  v37 = __chkstk_darwin(v35);
  v259 = &v256 - v38;
  __chkstk_darwin(v37);
  v261 = &v256 - v39;
  v292 = type metadata accessor for OwnedBeaconRecord(0);
  v276 = *(v292 - 8);
  v40 = __chkstk_darwin(v292);
  v268 = &v256 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v291 = &v256 - v43;
  v44 = __chkstk_darwin(v42);
  v303 = (&v256 - v45);
  v46 = __chkstk_darwin(v44);
  v299 = (&v256 - v47);
  v48 = __chkstk_darwin(v46);
  v286 = (&v256 - v49);
  v50 = __chkstk_darwin(v48);
  v281 = (&v256 - v51);
  v52 = __chkstk_darwin(v50);
  v258 = (&v256 - v53);
  __chkstk_darwin(v52);
  v260 = (&v256 - v54);
  v55 = a3[1];
  if (v55 >= 1)
  {
    v296 = v17;
    v56 = 0;
    v294 = (v28 + 8);
    v301 = (v28 + 56);
    v302 = (v28 + 48);
    v57 = _swiftEmptyArrayStorage;
    v279 = (v28 + 32);
    v284 = xmmword_101385D80;
    v257 = a3;
    v262 = a4;
    v278 = v11;
    v277 = v14;
    v288 = v20;
    v58 = v295;
LABEL_4:
    v269 = v57;
    v270 = v56;
    if (v56 + 1 >= v55)
    {
      v79 = v56 + 1;
      goto LABEL_69;
    }

    v283 = v55;
    v59 = *a3;
    v60 = *(v276 + 72);
    v61 = v5;
    v62 = *a3 + v60 * (v56 + 1);
    v63 = v260;
    sub_100E6A94C(v62, v260, type metadata accessor for OwnedBeaconRecord);
    v297 = v60;
    v64 = v59 + v60 * v56;
    v65 = v258;
    sub_100E6A94C(v64, v258, type metadata accessor for OwnedBeaconRecord);
    a4 = objc_autoreleasePoolPush();
    sub_100E7AB5C(v63, v261);
    if (v61)
    {
      goto LABEL_225;
    }

    objc_autoreleasePoolPop(a4);
    v66 = objc_autoreleasePoolPush();
    v67 = v259;
    sub_100E7AB5C(v65, v259);
    v285 = 0;
    objc_autoreleasePoolPop(v66);
    v68 = v261;
    v290 = Date.compare(_:)();
    v69 = v295;
    v70 = *v294;
    (*v294)(v67, v295);
    v289 = v70;
    v70(v68, v69);
    v28 = type metadata accessor for OwnedBeaconRecord;
    sub_100E6A9B4(v65, type metadata accessor for OwnedBeaconRecord);
    sub_100E6A9B4(v260, type metadata accessor for OwnedBeaconRecord);
    v71 = v270 + 2;
    v72 = (v59 + v297 * (v270 + 2));
    v20 = v288;
    while (1)
    {
      v79 = v283;
      if (v283 == v71)
      {
LABEL_54:
        a3 = v257;
        a4 = v262;
        v5 = v285;
        if (v290 != 1)
        {
          goto LABEL_67;
        }

        if (v79 < v270)
        {
          goto LABEL_215;
        }

        if (v270 < v79)
        {
          v136 = v297 * (v79 - 1);
          v137 = v79 * v297;
          v138 = v79;
          v139 = v270;
          v140 = v270 * v297;
          do
          {
            if (v139 != --v138)
            {
              v141 = *a3;
              if (!*a3)
              {
                goto LABEL_221;
              }

              v142 = v79;
              v28 = v141 + v140;
              sub_100E6ADA4(v141 + v140, v268, type metadata accessor for OwnedBeaconRecord);
              if (v140 < v136 || v28 >= v141 + v137)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v140 != v136)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_100E6ADA4(v268, v141 + v136, type metadata accessor for OwnedBeaconRecord);
              v20 = v288;
              v79 = v142;
            }

            ++v139;
            v136 -= v297;
            v137 -= v297;
            v140 += v297;
          }

          while (v139 < v138);
          a4 = v262;
          v58 = v295;
          v5 = v285;
        }

        else
        {
LABEL_67:
          v58 = v295;
        }

LABEL_69:
        v143 = a3[1];
        if (v79 >= v143)
        {
          goto LABEL_78;
        }

        if (__OFSUB__(v79, v270))
        {
          goto LABEL_214;
        }

        if (v79 - v270 >= a4)
        {
LABEL_78:
          v56 = v79;
          goto LABEL_79;
        }

        if (__OFADD__(v270, a4))
        {
          goto LABEL_216;
        }

        if ((v270 + a4) >= v143)
        {
          v144 = a3[1];
        }

        else
        {
          v144 = v270 + a4;
        }

        if (v144 >= v270)
        {
          if (v79 == v144)
          {
            goto LABEL_78;
          }

          v285 = v5;
          v189 = *a3;
          v190 = *(v276 + 72);
          v191 = (*a3 + v190 * (v79 - 1));
          v289 = -v190;
          v192 = v270 - v79;
          v290 = v189;
          v266 = v190;
          v193 = v189 + v79 * v190;
          v267 = v144;
LABEL_132:
          v283 = v79;
          v271 = v193;
          v272 = v192;
          v194 = v192;
          v273 = v191;
          while (2)
          {
            v297 = v194;
            v195 = v299;
            sub_100E6A94C(v193, v299, type metadata accessor for OwnedBeaconRecord);
            sub_100E6A94C(v191, v303, type metadata accessor for OwnedBeaconRecord);
            v298 = objc_autoreleasePoolPush();
            v196 = *v195;
            v197 = v195[1];
            v198 = v197 >> 62;
            if ((v197 >> 62) > 1)
            {
              v199 = v296;
              if (v198 == 2 && *(v196 + 16) != *(v196 + 24))
              {
                goto LABEL_141;
              }

LABEL_148:
              v219 = *v301;
              (*v301)(v20, 1, 1, v58);
              goto LABEL_149;
            }

            v199 = v296;
            if (v198)
            {
              if (v196 == v196 >> 32)
              {
                goto LABEL_148;
              }
            }

            else if ((v197 & 0xFF000000000000) == 0)
            {
              goto LABEL_148;
            }

LABEL_141:
            v200 = objc_autoreleasePoolPush();
            v201 = objc_allocWithZone(NSKeyedUnarchiver);
            sub_100017D5C(v196, v197);
            isa = Data._bridgeToObjectiveC()().super.isa;
            v304 = 0;
            v203 = [v201 initForReadingFromData:isa error:&v304];

            if (v203)
            {
              v204 = v304;
              sub_100016590(v196, v197);
              [v203 _enableStrictSecureDecodingMode];
              v205 = [objc_allocWithZone(CKRecord) initWithCoder:v203];
              if (v205)
              {
                v206 = v205;

                objc_autoreleasePoolPop(v200);
                v207 = [v206 creationDate];

                v20 = v288;
                if (v207)
                {
                  v208 = v277;
                  static Date._unconditionallyBridgeFromObjectiveC(_:)();

                  v209 = 0;
                }

                else
                {
                  v209 = 1;
                  v208 = v277;
                }

                v58 = v295;
                v219 = *v301;
                (*v301)(v208, v209, 1, v295);
                sub_1000D2AD8(v208, v20, &unk_101696900, &unk_10138B1E0);
                v220 = *v302;
                if ((*v302)(v20, 1, v58) != 1)
                {
                  (*v279)(v300, v20, v58);
                  goto LABEL_151;
                }

LABEL_149:
                Date.init()();
                v220 = *v302;
                if ((*v302)(v20, 1, v58) != 1)
                {
                  sub_10000B3A8(v20, &unk_101696900, &unk_10138B1E0);
                }

LABEL_151:
                objc_autoreleasePoolPop(v298);
                v298 = objc_autoreleasePoolPush();
                v221 = *v303;
                v222 = v303[1];
                v223 = v222 >> 62;
                if ((v222 >> 62) > 1)
                {
                  if (v223 == 2 && *(v221 + 16) != *(v221 + 24))
                  {
                    goto LABEL_157;
                  }

LABEL_162:
                  v234 = v293;
                }

                else
                {
                  if (v223)
                  {
                    if (v221 == v221 >> 32)
                    {
                      goto LABEL_162;
                    }
                  }

                  else if ((v222 & 0xFF000000000000) == 0)
                  {
                    goto LABEL_162;
                  }

LABEL_157:
                  v287 = v219;
                  v224 = objc_autoreleasePoolPush();
                  v225 = objc_allocWithZone(NSKeyedUnarchiver);
                  sub_100017D5C(v221, v222);
                  v226 = Data._bridgeToObjectiveC()().super.isa;
                  v304 = 0;
                  v227 = [v225 initForReadingFromData:v226 error:&v304];

                  if (v227)
                  {
                    v228 = v304;
                    sub_100016590(v221, v222);
                    [v227 _enableStrictSecureDecodingMode];
                    v229 = [objc_allocWithZone(CKRecord) initWithCoder:v227];
                    if (v229)
                    {
                      v230 = v229;

                      objc_autoreleasePoolPop(v224);
                      v231 = [v230 creationDate];

                      v199 = v296;
                      v20 = v288;
                      if (v231)
                      {
                        v232 = v278;
                        static Date._unconditionallyBridgeFromObjectiveC(_:)();

                        v233 = 0;
                      }

                      else
                      {
                        v233 = 1;
                        v232 = v278;
                      }

                      v58 = v295;
                      v234 = v293;
                      v287(v232, v233, 1, v295);
                      sub_1000D2AD8(v232, v199, &unk_101696900, &unk_10138B1E0);
                      if (v220(v199, 1, v58) != 1)
                      {
                        v250 = v199;
                        v244 = v20;
                        (*v279)(v234, v250, v58);
                        goto LABEL_170;
                      }

LABEL_167:
                      Date.init()();
                      if (v220(v199, 1, v58) == 1)
                      {
                        v244 = v20;
                      }

                      else
                      {
                        v245 = v199;
                        v244 = v20;
                        sub_10000B3A8(v245, &unk_101696900, &unk_10138B1E0);
                      }

LABEL_170:
                      objc_autoreleasePoolPop(v298);
                      v246 = v300;
                      v28 = Date.compare(_:)();
                      v247 = *v294;
                      (*v294)(v234, v58);
                      v247(v246, v58);
                      a4 = type metadata accessor for OwnedBeaconRecord;
                      sub_100E6A9B4(v303, type metadata accessor for OwnedBeaconRecord);
                      sub_100E6A9B4(v299, type metadata accessor for OwnedBeaconRecord);
                      if (v28 == 1)
                      {
                        v248 = v297;
                        if (!v290)
                        {
                          __break(1u);
LABEL_220:
                          __break(1u);
LABEL_221:
                          __break(1u);
LABEL_222:
                          __break(1u);
LABEL_223:
                          __break(1u);
                        }

                        v28 = type metadata accessor for OwnedBeaconRecord;
                        a4 = v291;
                        sub_100E6ADA4(v193, v291, type metadata accessor for OwnedBeaconRecord);
                        swift_arrayInitWithTakeFrontToBack();
                        sub_100E6ADA4(a4, v191, type metadata accessor for OwnedBeaconRecord);
                        v191 = v289 + v191;
                        v193 += v289;
                        v249 = __CFADD__(v248, 1);
                        v194 = v248 + 1;
                        v20 = v244;
                        if (v249)
                        {
                          goto LABEL_131;
                        }

                        continue;
                      }

                      v20 = v244;
LABEL_131:
                      v79 = v283 + 1;
                      v191 = &v273[v266];
                      v192 = v272 - 1;
                      v193 = v271 + v266;
                      v56 = v267;
                      if (v283 + 1 != v267)
                      {
                        goto LABEL_132;
                      }

                      a3 = v257;
                      v5 = v285;
LABEL_79:
                      if (v56 < v270)
                      {
                        goto LABEL_213;
                      }

                      if (swift_isUniquelyReferenced_nonNull_native())
                      {
                        v57 = v269;
                      }

                      else
                      {
                        v57 = sub_100A5B430(0, *(v269 + 2) + 1, 1, v269);
                      }

                      v28 = *(v57 + 2);
                      v145 = *(v57 + 3);
                      a4 = v28 + 1;
                      v146 = v5;
                      if (v28 >= v145 >> 1)
                      {
                        v57 = sub_100A5B430((v145 > 1), v28 + 1, 1, v57);
                      }

                      *(v57 + 2) = a4;
                      v147 = &v57[16 * v28];
                      *(v147 + 4) = v270;
                      *(v147 + 5) = v56;
                      v5 = *v263;
                      if (!*v263)
                      {
                        goto LABEL_223;
                      }

                      if (v28)
                      {
                        while (2)
                        {
                          v28 = a4 - 1;
                          if (a4 >= 4)
                          {
                            v152 = &v57[16 * a4 + 32];
                            v153 = *(v152 - 64);
                            v154 = *(v152 - 56);
                            v158 = __OFSUB__(v154, v153);
                            v155 = v154 - v153;
                            if (v158)
                            {
                              goto LABEL_200;
                            }

                            v157 = *(v152 - 48);
                            v156 = *(v152 - 40);
                            v158 = __OFSUB__(v156, v157);
                            v150 = v156 - v157;
                            v151 = v158;
                            if (v158)
                            {
                              goto LABEL_201;
                            }

                            v159 = &v57[16 * a4];
                            v161 = *v159;
                            v160 = *(v159 + 1);
                            v158 = __OFSUB__(v160, v161);
                            v162 = v160 - v161;
                            if (v158)
                            {
                              goto LABEL_203;
                            }

                            v158 = __OFADD__(v150, v162);
                            v163 = v150 + v162;
                            if (v158)
                            {
                              goto LABEL_206;
                            }

                            if (v163 >= v155)
                            {
                              v181 = &v57[16 * v28 + 32];
                              v183 = *v181;
                              v182 = *(v181 + 1);
                              v158 = __OFSUB__(v182, v183);
                              v184 = v182 - v183;
                              if (v158)
                              {
                                goto LABEL_210;
                              }

                              if (v150 < v184)
                              {
                                v28 = a4 - 2;
                              }
                            }

                            else
                            {
LABEL_99:
                              if (v151)
                              {
                                goto LABEL_202;
                              }

                              v164 = &v57[16 * a4];
                              v166 = *v164;
                              v165 = *(v164 + 1);
                              v167 = __OFSUB__(v165, v166);
                              v168 = v165 - v166;
                              v169 = v167;
                              if (v167)
                              {
                                goto LABEL_205;
                              }

                              v170 = &v57[16 * v28 + 32];
                              v172 = *v170;
                              v171 = *(v170 + 1);
                              v158 = __OFSUB__(v171, v172);
                              v173 = v171 - v172;
                              if (v158)
                              {
                                goto LABEL_208;
                              }

                              if (__OFADD__(v168, v173))
                              {
                                goto LABEL_209;
                              }

                              if (v168 + v173 < v150)
                              {
                                goto LABEL_113;
                              }

                              if (v150 < v173)
                              {
                                v28 = a4 - 2;
                              }
                            }
                          }

                          else
                          {
                            if (a4 == 3)
                            {
                              v148 = *(v57 + 4);
                              v149 = *(v57 + 5);
                              v158 = __OFSUB__(v149, v148);
                              v150 = v149 - v148;
                              v151 = v158;
                              goto LABEL_99;
                            }

                            v174 = &v57[16 * a4];
                            v176 = *v174;
                            v175 = *(v174 + 1);
                            v158 = __OFSUB__(v175, v176);
                            v168 = v175 - v176;
                            v169 = v158;
LABEL_113:
                            if (v169)
                            {
                              goto LABEL_204;
                            }

                            v177 = &v57[16 * v28];
                            v179 = *(v177 + 4);
                            v178 = *(v177 + 5);
                            v158 = __OFSUB__(v178, v179);
                            v180 = v178 - v179;
                            if (v158)
                            {
                              goto LABEL_207;
                            }

                            if (v180 < v168)
                            {
                              break;
                            }
                          }

                          v185 = v28 - 1;
                          if (v28 - 1 >= a4)
                          {
                            __break(1u);
LABEL_198:
                            __break(1u);
LABEL_199:
                            __break(1u);
LABEL_200:
                            __break(1u);
LABEL_201:
                            __break(1u);
LABEL_202:
                            __break(1u);
LABEL_203:
                            __break(1u);
LABEL_204:
                            __break(1u);
LABEL_205:
                            __break(1u);
LABEL_206:
                            __break(1u);
LABEL_207:
                            __break(1u);
LABEL_208:
                            __break(1u);
LABEL_209:
                            __break(1u);
LABEL_210:
                            __break(1u);
LABEL_211:
                            __break(1u);
LABEL_212:
                            __break(1u);
LABEL_213:
                            __break(1u);
LABEL_214:
                            __break(1u);
LABEL_215:
                            __break(1u);
LABEL_216:
                            __break(1u);
                            goto LABEL_217;
                          }

                          if (!*a3)
                          {
                            goto LABEL_220;
                          }

                          v186 = v57;
                          a4 = *&v57[16 * v185 + 32];
                          v187 = *&v57[16 * v28 + 40];
                          sub_100E65360(*a3 + *(v276 + 72) * a4, *a3 + *(v276 + 72) * *&v57[16 * v28 + 32], (*a3 + *(v276 + 72) * v187), v5);
                          if (v146)
                          {
                            goto LABEL_196;
                          }

                          if (v187 < a4)
                          {
                            goto LABEL_198;
                          }

                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            v186 = sub_100B31E68(v186);
                          }

                          if (v185 >= *(v186 + 2))
                          {
                            goto LABEL_199;
                          }

                          v188 = &v186[16 * v185];
                          *(v188 + 4) = a4;
                          *(v188 + 5) = v187;
                          v305 = v186;
                          sub_100B31DDC(v28);
                          v57 = v305;
                          a4 = *(v305 + 2);
                          v58 = v295;
                          if (a4 <= 1)
                          {
                            break;
                          }

                          continue;
                        }
                      }

                      v55 = a3[1];
                      a4 = v262;
                      v5 = v146;
                      v20 = v288;
                      if (v56 >= v55)
                      {
                        goto LABEL_185;
                      }

                      goto LABEL_4;
                    }

                    v242 = static os_log_type_t.error.getter();
                    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
                    v243 = static OS_os_log.default.getter();
                    os_log(_:dso:log:_:_:)(v242, &_mh_execute_header, v243, "Unable to extract CKRecord from cloudKitMetadata", 48, 2, _swiftEmptyArrayStorage);
                  }

                  else
                  {
                    v235 = v304;
                    v236 = _convertNSErrorToError(_:)();

                    swift_willThrow();
                    sub_100016590(v221, v222);
                    v237 = static os_log_type_t.error.getter();
                    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
                    v238 = swift_allocObject();
                    *(v238 + 16) = v284;
                    v304 = v236;
                    swift_errorRetain();
                    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                    v239 = String.init<A>(describing:)();
                    v241 = v240;
                    *(v238 + 56) = &type metadata for String;
                    *(v238 + 64) = sub_100008C00();
                    *(v238 + 32) = v239;
                    *(v238 + 40) = v241;
                    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
                    v227 = static OS_os_log.default.getter();
                    os_log(_:dso:log:_:_:)(v237, &_mh_execute_header, v227, "Unable to create unarchiver: %@", 31, 2, v238);

                    v285 = 0;
                  }

                  v199 = v296;
                  v20 = v288;

                  objc_autoreleasePoolPop(v224);
                  v58 = v295;
                  v234 = v293;
                  v219 = v287;
                }

                v219(v199, 1, 1, v58);
                goto LABEL_167;
              }

              v217 = static os_log_type_t.error.getter();
              sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
              v218 = static OS_os_log.default.getter();
              os_log(_:dso:log:_:_:)(v217, &_mh_execute_header, v218, "Unable to extract CKRecord from cloudKitMetadata", 48, 2, _swiftEmptyArrayStorage);
            }

            else
            {
              v210 = v304;
              v211 = _convertNSErrorToError(_:)();

              swift_willThrow();
              sub_100016590(v196, v197);
              v212 = static os_log_type_t.error.getter();
              sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
              v213 = swift_allocObject();
              *(v213 + 16) = v284;
              v304 = v211;
              swift_errorRetain();
              sub_1000BC4D4(&qword_101696960, &unk_10138B220);
              v214 = String.init<A>(describing:)();
              v216 = v215;
              *(v213 + 56) = &type metadata for String;
              *(v213 + 64) = sub_100008C00();
              *(v213 + 32) = v214;
              *(v213 + 40) = v216;
              sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
              v203 = static OS_os_log.default.getter();
              os_log(_:dso:log:_:_:)(v212, &_mh_execute_header, v203, "Unable to create unarchiver: %@", 31, 2, v213);

              v199 = v296;

              v285 = 0;
            }

            break;
          }

          v20 = v288;

          objc_autoreleasePoolPop(v200);
          v58 = v295;
          goto LABEL_148;
        }

LABEL_217:
        __break(1u);
LABEL_218:
        v251 = sub_100B31E68(a4);
        goto LABEL_188;
      }

      v298 = v72;
      v80 = v281;
      sub_100E6A94C(v72, v281, type metadata accessor for OwnedBeaconRecord);
      sub_100E6A94C(v62, v286, type metadata accessor for OwnedBeaconRecord);
      v81 = objc_autoreleasePoolPush();
      v82 = v81;
      v83 = *v80;
      v84 = v80[1];
      v85 = v84 >> 62;
      v86 = v295;
      if ((v84 >> 62) > 1)
      {
        if (v85 != 2 || *(v83 + 16) == *(v83 + 24))
        {
LABEL_21:
          v98 = v274;
LABEL_25:
          v108 = *v301;
          (*v301)(v98, 1, 1, v86);
          goto LABEL_26;
        }
      }

      else if (v85)
      {
        if (v83 == v83 >> 32)
        {
          goto LABEL_21;
        }
      }

      else if ((v84 & 0xFF000000000000) == 0)
      {
        goto LABEL_21;
      }

      v87 = v81;
      v88 = objc_autoreleasePoolPush();
      v89 = objc_allocWithZone(NSKeyedUnarchiver);
      sub_100017D5C(v83, v84);
      v90 = Data._bridgeToObjectiveC()().super.isa;
      v304 = 0;
      v91 = [v89 initForReadingFromData:v90 error:&v304];

      if (!v91)
      {
        break;
      }

      v92 = v304;
      sub_100016590(v83, v84);
      [v91 _enableStrictSecureDecodingMode];
      v93 = [objc_allocWithZone(CKRecord) initWithCoder:v91];
      if (!v93)
      {
        v106 = static os_log_type_t.error.getter();
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v107 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v106, &_mh_execute_header, v107, "Unable to extract CKRecord from cloudKitMetadata", 48, 2, _swiftEmptyArrayStorage);

        goto LABEL_24;
      }

      v94 = v93;

      objc_autoreleasePoolPop(v88);
      v95 = [v94 creationDate];

      v20 = v288;
      v86 = v295;
      if (v95)
      {
        v96 = v264;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v97 = 0;
      }

      else
      {
        v97 = 1;
        v96 = v264;
      }

      v82 = v87;
      v108 = *v301;
      (*v301)(v96, v97, 1, v86);
      v134 = v96;
      v98 = v274;
      sub_1000D2AD8(v134, v274, &unk_101696900, &unk_10138B1E0);
      v109 = *v302;
      if ((*v302)(v98, 1, v86) != 1)
      {
        (*v279)(v282, v98, v86);
        goto LABEL_28;
      }

LABEL_26:
      Date.init()();
      v109 = *v302;
      if ((*v302)(v98, 1, v86) != 1)
      {
        sub_10000B3A8(v98, &unk_101696900, &unk_10138B1E0);
      }

LABEL_28:
      objc_autoreleasePoolPop(v82);
      v110 = objc_autoreleasePoolPush();
      v111 = v110;
      v113 = *v286;
      v112 = v286[1];
      v114 = v112 >> 62;
      if ((v112 >> 62) > 1)
      {
        if (v114 != 2 || *(v113 + 16) == *(v113 + 24))
        {
LABEL_39:
          v124 = v275;
LABEL_43:
          v108(v124, 1, 1, v86);
LABEL_44:
          v73 = v62;
          Date.init()();
          if (v109(v124, 1, v86) != 1)
          {
            sub_10000B3A8(v124, &unk_101696900, &unk_10138B1E0);
          }

          goto LABEL_8;
        }
      }

      else if (v114)
      {
        if (v113 == v113 >> 32)
        {
          goto LABEL_39;
        }
      }

      else if ((v112 & 0xFF000000000000) == 0)
      {
        goto LABEL_39;
      }

      v287 = v110;
      v273 = objc_autoreleasePoolPush();
      v115 = objc_allocWithZone(NSKeyedUnarchiver);
      sub_100017D5C(v113, v112);
      v116 = Data._bridgeToObjectiveC()().super.isa;
      v304 = 0;
      v117 = [v115 initForReadingFromData:v116 error:&v304];

      if (!v117)
      {
        v125 = v304;
        v126 = _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v113, v112);
        v127 = static os_log_type_t.error.getter();
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v128 = swift_allocObject();
        *(v128 + 16) = v284;
        v304 = v126;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v129 = String.init<A>(describing:)();
        v131 = v130;
        *(v128 + 56) = &type metadata for String;
        *(v128 + 64) = sub_100008C00();
        *(v128 + 32) = v129;
        *(v128 + 40) = v131;
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v117 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v127, &_mh_execute_header, v117, "Unable to create unarchiver: %@", 31, 2, v128);

        v20 = v288;

        v285 = 0;
LABEL_42:
        v111 = v287;

        objc_autoreleasePoolPop(v273);
        v124 = v275;
        v86 = v295;
        goto LABEL_43;
      }

      v118 = v304;
      sub_100016590(v113, v112);
      [v117 _enableStrictSecureDecodingMode];
      v119 = [objc_allocWithZone(CKRecord) initWithCoder:v117];
      if (!v119)
      {
        v132 = static os_log_type_t.error.getter();
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v133 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v132, &_mh_execute_header, v133, "Unable to extract CKRecord from cloudKitMetadata", 48, 2, _swiftEmptyArrayStorage);

        goto LABEL_42;
      }

      v120 = v119;

      objc_autoreleasePoolPop(v273);
      v121 = [v120 creationDate];

      v111 = v287;
      if (v121)
      {
        v122 = v265;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v123 = 0;
      }

      else
      {
        v123 = 1;
        v122 = v265;
      }

      v86 = v295;
      v108(v122, v123, 1, v295);
      v135 = v122;
      v124 = v275;
      sub_1000D2AD8(v135, v275, &unk_101696900, &unk_10138B1E0);
      if (v109(v124, 1, v86) == 1)
      {
        goto LABEL_44;
      }

      v73 = v62;
      (*v279)(v280, v124, v86);
LABEL_8:
      v74 = v290 == 1;
      objc_autoreleasePoolPop(v111);
      v75 = v280;
      v76 = v282;
      v28 = Date.compare(_:)();
      v77 = v295;
      v78 = v289;
      v289(v75, v295);
      v78(v76, v77);
      sub_100E6A9B4(v286, type metadata accessor for OwnedBeaconRecord);
      sub_100E6A9B4(v281, type metadata accessor for OwnedBeaconRecord);
      ++v71;
      v72 = &v298[v297];
      v62 = v73 + v297;
      if (((v74 ^ (v28 != 1)) & 1) == 0)
      {
        v79 = v71 - 1;
        goto LABEL_54;
      }
    }

    v99 = v304;
    v100 = _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100016590(v83, v84);
    v101 = static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v102 = swift_allocObject();
    *(v102 + 16) = v284;
    v304 = v100;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v103 = String.init<A>(describing:)();
    v105 = v104;
    *(v102 + 56) = &type metadata for String;
    *(v102 + 64) = sub_100008C00();
    *(v102 + 32) = v103;
    *(v102 + 40) = v105;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v91 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v101, &_mh_execute_header, v91, "Unable to create unarchiver: %@", 31, 2, v102);

    v285 = 0;
LABEL_24:
    v20 = v288;
    v86 = v295;

    objc_autoreleasePoolPop(v88);
    v98 = v274;
    v82 = v87;
    goto LABEL_25;
  }

  v57 = _swiftEmptyArrayStorage;
LABEL_185:
  v28 = *v263;
  if (*v263)
  {
    a4 = v57;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_218;
    }

    v251 = a4;
LABEL_188:
    v305 = v251;
    a4 = *(v251 + 2);
    if (a4 >= 2)
    {
      while (*a3)
      {
        v252 = *&v251[16 * a4];
        v253 = v251;
        v254 = *&v251[16 * a4 + 24];
        sub_100E65360(*a3 + *(v276 + 72) * v252, *a3 + *(v276 + 72) * *&v251[16 * a4 + 16], (*a3 + *(v276 + 72) * v254), v28);
        if (v5)
        {
          goto LABEL_196;
        }

        if (v254 < v252)
        {
          goto LABEL_211;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v253 = sub_100B31E68(v253);
        }

        if (a4 - 2 >= *(v253 + 2))
        {
          goto LABEL_212;
        }

        v255 = &v253[16 * a4];
        *v255 = v252;
        *(v255 + 1) = v254;
        v305 = v253;
        sub_100B31DDC(a4 - 1);
        v251 = v305;
        a4 = *(v305 + 2);
        if (a4 <= 1)
        {
          goto LABEL_196;
        }
      }

      goto LABEL_222;
    }

LABEL_196:
  }

  else
  {
    __break(1u);
LABEL_225:
    objc_autoreleasePoolPop(a4);
    __break(1u);
  }
}

uint64_t sub_100E65360(unint64_t a1, unint64_t a2, uint64_t *a3, unint64_t a4)
{
  v8 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v188 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v191 = &v188 - v13;
  v14 = __chkstk_darwin(v12);
  v201 = &v188 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v188 - v17;
  v19 = __chkstk_darwin(v16);
  v195 = &v188 - v20;
  v21 = __chkstk_darwin(v19);
  v194 = &v188 - v22;
  v23 = __chkstk_darwin(v21);
  v200 = &v188 - v24;
  __chkstk_darwin(v23);
  v199 = &v188 - v25;
  v26 = type metadata accessor for Date();
  v27 = *(v26 - 8);
  v28 = __chkstk_darwin(v26);
  v206 = &v188 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v203 = &v188 - v31;
  v32 = __chkstk_darwin(v30);
  v209 = &v188 - v33;
  __chkstk_darwin(v32);
  v208 = &v188 - v34;
  v205 = type metadata accessor for OwnedBeaconRecord(0);
  v35 = __chkstk_darwin(v205);
  v210 = (&v188 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = __chkstk_darwin(v35);
  v202 = (&v188 - v38);
  v39 = __chkstk_darwin(v37);
  v214 = (&v188 - v40);
  __chkstk_darwin(v39);
  v207 = (&v188 - v41);
  v43 = *(v42 + 72);
  if (!v43)
  {
    __break(1u);
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  v213 = a1;
  v44 = a2 - a1;
  if (a2 - a1 == 0x8000000000000000 && v43 == -1)
  {
    goto LABEL_144;
  }

  v45 = a3;
  v46 = a3 - a2;
  if ((a3 - a2) == 0x8000000000000000 && v43 == -1)
  {
LABEL_145:
    __break(1u);
  }

  v217 = a4;
  v218 = v213;
  v211 = v26;
  if (v44 / v43 >= v46 / v43)
  {
    v190 = v11;
    v48 = v46 / v43 * v43;
    if (a4 < a2 || a2 + v48 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v116 = (a4 + v48);
    if (v48 < 1)
    {
LABEL_141:
      v218 = a2;
      v216 = v116;
      goto LABEL_142;
    }

    v117 = -v43;
    v209 = (v27 + 56);
    v214 = (v27 + 48);
    v189 = (v27 + 32);
    v195 = (v27 + 8);
    v192 = xmmword_101385D80;
    v118 = (a4 + v48);
    v212 = a4;
    v199 = v117;
    v119 = v213;
    *&v196 = v18;
LABEL_81:
    v188 = v116;
    v120 = a2;
    v121 = a2 + v117;
    v204 = a2 + v117;
    v198 = a2;
    while (1)
    {
      if (v120 <= v119)
      {
        v218 = v120;
        v216 = v188;
        goto LABEL_142;
      }

      v194 = v116;
      v208 = v118;
      v200 = &v118[v117];
      v122 = v202;
      sub_100E6A94C(&v118[v117], v202, type metadata accessor for OwnedBeaconRecord);
      sub_100E6A94C(v121, v210, type metadata accessor for OwnedBeaconRecord);
      v123 = objc_autoreleasePoolPush();
      v124 = *v122;
      v125 = v122[1];
      v126 = v125 >> 62;
      v207 = v45;
      if ((v125 >> 62) > 1)
      {
        v127 = v201;
        if (v126 != 2 || *(v124 + 16) == *(v124 + 24))
        {
          goto LABEL_100;
        }
      }

      else
      {
        v127 = v201;
        if (v126)
        {
          if (v124 == v124 >> 32)
          {
            goto LABEL_100;
          }
        }

        else if ((v125 & 0xFF000000000000) == 0)
        {
          goto LABEL_100;
        }
      }

      v128 = objc_autoreleasePoolPush();
      v129 = objc_allocWithZone(NSKeyedUnarchiver);
      sub_100017D5C(v124, v125);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v216 = 0;
      v131 = [v129 initForReadingFromData:isa error:&v216];

      if (!v131)
      {
        break;
      }

      v132 = v216;
      sub_100016590(v124, v125);
      [v131 _enableStrictSecureDecodingMode];
      v133 = [objc_allocWithZone(CKRecord) initWithCoder:v131];
      if (!v133)
      {
        v145 = static os_log_type_t.error.getter();
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v146 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v145, &_mh_execute_header, v146, "Unable to extract CKRecord from cloudKitMetadata", 48, 2, _swiftEmptyArrayStorage);

        goto LABEL_99;
      }

      v134 = v133;

      objc_autoreleasePoolPop(v128);
      v135 = [v134 creationDate];

      v127 = v201;
      v117 = v199;
      if (v135)
      {
        v136 = v191;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v137 = 0;
      }

      else
      {
        v137 = 1;
        v136 = v191;
      }

      v148 = *v209;
      v184 = v136;
      v185 = v136;
      v149 = v211;
      (*v209)(v184, v137, 1, v211);
      v186 = v185;
      v147 = v196;
      sub_1000D2AD8(v186, v196, &unk_101696900, &unk_10138B1E0);
      v150 = *v214;
      if ((*v214)(v147, 1, v149) != 1)
      {
        (*v189)(v203, v147, v149);
        goto LABEL_103;
      }

LABEL_101:
      Date.init()();
      v150 = *v214;
      if ((*v214)(v147, 1, v149) != 1)
      {
        sub_10000B3A8(v147, &unk_101696900, &unk_10138B1E0);
      }

LABEL_103:
      objc_autoreleasePoolPop(v123);
      v151 = objc_autoreleasePoolPush();
      v152 = *v210;
      v153 = v210[1];
      v154 = v153 >> 62;
      if ((v153 >> 62) > 1)
      {
        v155 = v211;
        if (v154 != 2 || *(v152 + 16) == *(v152 + 24))
        {
          goto LABEL_118;
        }
      }

      else
      {
        v155 = v211;
        if (v154)
        {
          if (v152 == v152 >> 32)
          {
            goto LABEL_118;
          }
        }

        else if ((v153 & 0xFF000000000000) == 0)
        {
          goto LABEL_118;
        }
      }

      v156 = objc_autoreleasePoolPush();
      v157 = objc_allocWithZone(NSKeyedUnarchiver);
      sub_100017D5C(v152, v153);
      v158 = Data._bridgeToObjectiveC()().super.isa;
      v216 = 0;
      v159 = [v157 initForReadingFromData:v158 error:&v216];

      if (!v159)
      {
        v193 = v156;
        v166 = v216;
        v167 = _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v152, v153);
        v168 = static os_log_type_t.error.getter();
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v169 = swift_allocObject();
        *(v169 + 16) = v192;
        v216 = v167;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v170 = String.init<A>(describing:)();
        v172 = v171;
        *(v169 + 56) = &type metadata for String;
        *(v169 + 64) = sub_100008C00();
        *(v169 + 32) = v170;
        *(v169 + 40) = v172;
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v159 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v168, &_mh_execute_header, v159, "Unable to create unarchiver: %@", 31, 2, v169);

        v155 = v211;

        v197 = 0;
LABEL_117:
        v127 = v201;
        v117 = v199;

        objc_autoreleasePoolPop(v193);
LABEL_118:
        v148(v127, 1, 1, v155);
        goto LABEL_119;
      }

      v160 = v216;
      sub_100016590(v152, v153);
      [v159 _enableStrictSecureDecodingMode];
      v161 = [objc_allocWithZone(CKRecord) initWithCoder:v159];
      if (!v161)
      {
        v193 = v156;
        v173 = static os_log_type_t.error.getter();
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v174 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v173, &_mh_execute_header, v174, "Unable to extract CKRecord from cloudKitMetadata", 48, 2, _swiftEmptyArrayStorage);

        goto LABEL_117;
      }

      v162 = v161;

      objc_autoreleasePoolPop(v156);
      v163 = [v162 creationDate];

      v127 = v201;
      v117 = v199;
      if (v163)
      {
        v164 = v190;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v165 = 0;
      }

      else
      {
        v165 = 1;
        v164 = v190;
      }

      v148(v164, v165, 1, v155);
      sub_1000D2AD8(v164, v127, &unk_101696900, &unk_10138B1E0);
      if (v150(v127, 1, v155) != 1)
      {
        (*v189)(v206, v127, v155);
        v121 = v204;
        goto LABEL_121;
      }

LABEL_119:
      v175 = v204;
      Date.init()();
      v176 = v150(v127, 1, v155);
      v121 = v175;
      if (v176 != 1)
      {
        sub_10000B3A8(v127, &unk_101696900, &unk_10138B1E0);
      }

LABEL_121:
      v177 = v207;
      v178 = (v207 + v117);
      objc_autoreleasePoolPop(v151);
      v179 = v206;
      v180 = v203;
      v181 = Date.compare(_:)();
      v182 = *v195;
      (*v195)(v179, v155);
      v182(v180, v155);
      sub_100E6A9B4(v210, type metadata accessor for OwnedBeaconRecord);
      sub_100E6A9B4(v202, type metadata accessor for OwnedBeaconRecord);
      if (v181 == 1)
      {
        v119 = v213;
        v45 = v178;
        if (v177 < v198 || v178 >= v198)
        {
          a2 = v121;
          swift_arrayInitWithTakeFrontToBack();
          v116 = v194;
          v117 = v199;
        }

        else
        {
          v116 = v194;
          v117 = v199;
          a2 = v121;
          if (v177 != v198)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v118 = v208;
        if (v208 <= v212)
        {
          goto LABEL_141;
        }

        goto LABEL_81;
      }

      v183 = v200;
      v116 = v200;
      v119 = v213;
      v45 = v178;
      if (v177 < v208 || v178 >= v208)
      {
        swift_arrayInitWithTakeFrontToBack();
        v117 = v199;
      }

      else
      {
        v117 = v199;
        if (v177 != v208)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v118 = v116;
      v120 = v198;
      if (v183 <= v212)
      {
        a2 = v198;
        goto LABEL_141;
      }
    }

    v138 = v216;
    v139 = _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100016590(v124, v125);
    v140 = static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v141 = swift_allocObject();
    *(v141 + 16) = v192;
    v216 = v139;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v142 = String.init<A>(describing:)();
    v144 = v143;
    *(v141 + 56) = &type metadata for String;
    *(v141 + 64) = sub_100008C00();
    *(v141 + 32) = v142;
    *(v141 + 40) = v144;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v131 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v140, &_mh_execute_header, v131, "Unable to create unarchiver: %@", 31, 2, v141);

    v197 = 0;
LABEL_99:
    v127 = v201;
    v117 = v199;

    objc_autoreleasePoolPop(v128);
LABEL_100:
    v147 = v196;
    v148 = *v209;
    v149 = v211;
    (*v209)(v196, 1, 1, v211);
    goto LABEL_101;
  }

  v47 = v44 / v43 * v43;
  if (a4 < v213 || v213 + v47 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a4 != v213)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v203 = (a4 + v47);
  v216 = (a4 + v47);
  if (v47 >= 1 && a2 < a3)
  {
    v206 = (v27 + 56);
    v210 = (v27 + 48);
    v193 = (v27 + 32);
    v201 = (v27 + 8);
    v196 = xmmword_101385D80;
    v202 = a3;
    v198 = v43;
    while (1)
    {
      v50 = v207;
      sub_100E6A94C(a2, v207, type metadata accessor for OwnedBeaconRecord);
      v212 = a4;
      sub_100E6A94C(a4, v214, type metadata accessor for OwnedBeaconRecord);
      v51 = objc_autoreleasePoolPush();
      v52 = *v50;
      v53 = v50[1];
      v54 = v53 >> 62;
      if ((v53 >> 62) > 1)
      {
        if (v54 != 2 || *(v52 + 16) == *(v52 + 24))
        {
          goto LABEL_36;
        }
      }

      else if (v54)
      {
        if (v52 == v52 >> 32)
        {
          goto LABEL_36;
        }
      }

      else if ((v53 & 0xFF000000000000) == 0)
      {
        goto LABEL_36;
      }

      v55 = a2;
      v56 = objc_autoreleasePoolPush();
      v57 = objc_allocWithZone(NSKeyedUnarchiver);
      sub_100017D5C(v52, v53);
      v58 = Data._bridgeToObjectiveC()().super.isa;
      v215 = 0;
      v59 = [v57 initForReadingFromData:v58 error:&v215];

      if (!v59)
      {
        break;
      }

      v60 = v215;
      sub_100016590(v52, v53);
      [v59 _enableStrictSecureDecodingMode];
      v61 = [objc_allocWithZone(CKRecord) initWithCoder:v59];
      if (!v61)
      {
        v73 = static os_log_type_t.error.getter();
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v74 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v73, &_mh_execute_header, v74, "Unable to extract CKRecord from cloudKitMetadata", 48, 2, _swiftEmptyArrayStorage);

        goto LABEL_35;
      }

      v62 = v61;

      objc_autoreleasePoolPop(v56);
      v63 = [v62 creationDate];

      a2 = v55;
      if (v63)
      {
        v64 = v194;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v65 = 0;
        v26 = v211;
      }

      else
      {
        v65 = 1;
        v26 = v211;
        v64 = v194;
      }

      v76 = *v206;
      (*v206)(v64, v65, 1, v26);
      v114 = v64;
      v75 = v199;
      sub_1000D2AD8(v114, v199, &unk_101696900, &unk_10138B1E0);
      v77 = *v210;
      if ((*v210)(v75, 1, v26) != 1)
      {
        (*v193)(v208, v75, v26);
        goto LABEL_39;
      }

LABEL_37:
      Date.init()();
      v77 = *v210;
      if ((*v210)(v75, 1, v26) != 1)
      {
        sub_10000B3A8(v75, &unk_101696900, &unk_10138B1E0);
      }

LABEL_39:
      objc_autoreleasePoolPop(v51);
      v78 = objc_autoreleasePoolPush();
      v79 = *v214;
      v80 = v214[1];
      v81 = v80 >> 62;
      if ((v80 >> 62) > 1)
      {
        if (v81 != 2 || *(v79 + 16) == *(v79 + 24))
        {
LABEL_50:
          v92 = v212;
LABEL_54:
          v102 = v200;
          v76(v200, 1, 1, v26);
LABEL_55:
          Date.init()();
          v103 = a2;
          if (v77(v102, 1, v26) != 1)
          {
            sub_10000B3A8(v102, &unk_101696900, &unk_10138B1E0);
          }

          goto LABEL_57;
        }
      }

      else if (v81)
      {
        if (v79 == v79 >> 32)
        {
          goto LABEL_50;
        }
      }

      else if ((v80 & 0xFF000000000000) == 0)
      {
        goto LABEL_50;
      }

      v204 = a2;
      v82 = objc_autoreleasePoolPush();
      v83 = objc_allocWithZone(NSKeyedUnarchiver);
      sub_100017D5C(v79, v80);
      v84 = Data._bridgeToObjectiveC()().super.isa;
      v215 = 0;
      v85 = [v83 initForReadingFromData:v84 error:&v215];

      if (!v85)
      {
        v93 = v215;
        v94 = _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v79, v80);
        v95 = static os_log_type_t.error.getter();
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v96 = swift_allocObject();
        *(v96 + 16) = v196;
        v215 = v94;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v97 = String.init<A>(describing:)();
        v99 = v98;
        *(v96 + 56) = &type metadata for String;
        *(v96 + 64) = sub_100008C00();
        *(v96 + 32) = v97;
        *(v96 + 40) = v99;
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v85 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v95, &_mh_execute_header, v85, "Unable to create unarchiver: %@", 31, 2, v96);

        v197 = 0;
LABEL_53:
        a2 = v204;

        objc_autoreleasePoolPop(v82);
        v26 = v211;
        v92 = v212;
        goto LABEL_54;
      }

      v86 = v215;
      sub_100016590(v79, v80);
      [v85 _enableStrictSecureDecodingMode];
      v87 = [objc_allocWithZone(CKRecord) initWithCoder:v85];
      if (!v87)
      {
        v100 = static os_log_type_t.error.getter();
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v101 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v100, &_mh_execute_header, v101, "Unable to extract CKRecord from cloudKitMetadata", 48, 2, _swiftEmptyArrayStorage);

        goto LABEL_53;
      }

      v88 = v87;

      objc_autoreleasePoolPop(v82);
      v89 = [v88 creationDate];

      a2 = v204;
      if (v89)
      {
        v90 = v195;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v91 = 0;
        v26 = v211;
        v92 = v212;
      }

      else
      {
        v91 = 1;
        v26 = v211;
        v92 = v212;
        v90 = v195;
      }

      v76(v90, v91, 1, v26);
      v115 = v90;
      v102 = v200;
      sub_1000D2AD8(v115, v200, &unk_101696900, &unk_10138B1E0);
      if (v77(v102, 1, v26) == 1)
      {
        goto LABEL_55;
      }

      v103 = a2;
      (*v193)(v209, v102, v26);
LABEL_57:
      v104 = v202;
      objc_autoreleasePoolPop(v78);
      v106 = v208;
      v105 = v209;
      v107 = Date.compare(_:)();
      v108 = *v201;
      (*v201)(v105, v26);
      v108(v106, v26);
      sub_100E6A9B4(v214, type metadata accessor for OwnedBeaconRecord);
      sub_100E6A9B4(v207, type metadata accessor for OwnedBeaconRecord);
      if (v107 == 1)
      {
        v109 = v198;
        v110 = v103;
        a2 = v103 + v198;
        v111 = v213;
        if (v213 < v103 || v213 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a4 = v92;
        }

        else
        {
          a4 = v92;
          if (v213 != v110)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        v109 = v198;
        v112 = v92 + v198;
        v111 = v213;
        a2 = v103;
        if (v213 < v92 || v213 >= v112)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v213 != v92)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v217 = v112;
        a4 = v92 + v109;
      }

      v113 = v111 + v109;
      v218 = v113;
      if (a4 < v203)
      {
        v213 = v113;
        if (a2 < v104)
        {
          continue;
        }
      }

      goto LABEL_142;
    }

    v66 = v215;
    v67 = _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100016590(v52, v53);
    v68 = static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v69 = swift_allocObject();
    *(v69 + 16) = v196;
    v215 = v67;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v70 = String.init<A>(describing:)();
    v72 = v71;
    *(v69 + 56) = &type metadata for String;
    *(v69 + 64) = sub_100008C00();
    *(v69 + 32) = v70;
    *(v69 + 40) = v72;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v59 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v68, &_mh_execute_header, v59, "Unable to create unarchiver: %@", 31, 2, v69);

    v197 = 0;
LABEL_35:
    a2 = v55;

    objc_autoreleasePoolPop(v56);
    v26 = v211;
LABEL_36:
    v75 = v199;
    v76 = *v206;
    (*v206)(v199, 1, 1, v26);
    goto LABEL_37;
  }

LABEL_142:
  sub_10060AB44(&v218, &v217, &v216);
  return 1;
}

uint64_t sub_100E66C50(unint64_t a1)
{
  if (a1 >= 8)
  {
    return 8;
  }

  else
  {
    return (0x703010504060200uLL >> (8 * a1));
  }
}

unint64_t sub_100E66C78()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v11 - v5;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v7 = sub_101073524(v11[1]);

  if ((v7 * 60) >> 64 != (60 * v7) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  static Date.trustedNow.getter(v6);
  Date.timeIntervalSinceReferenceDate.getter();
  Date.init(timeIntervalSinceReferenceDate:)();
  Date.timeIntervalSince(_:)();
  static Duration.seconds(_:)();
  v9 = Duration.milliseconds.getter();
  v10 = *(v1 + 8);
  v10(v4, v0);
  result = (v10)(v6, v0);
  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!HIDWORD(v9))
  {
    return v9;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_100E66E68(char *a1, int a2)
{
  v70 = a2;
  v67 = a1;
  v3 = type metadata accessor for AirPodsLEAccessory(0);
  v66 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v73 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v5;
  __chkstk_darwin(v4);
  v75 = v57 - v6;
  v76 = type metadata accessor for UUID();
  v7 = *(v76 - 8);
  __chkstk_darwin(v76);
  v9 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for MACAddress();
  v74 = *(v69 - 8);
  v10 = __chkstk_darwin(v69);
  v72 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v71 = v57 - v13;
  v65 = v14;
  __chkstk_darwin(v12);
  v16 = v57 - v15;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = v2;
  v22 = *(v2 + 16);
  *v20 = v22;
  (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
  v23 = v22;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  result = (*(v18 + 8))(v20, v17);
  if (v22)
  {
    v25 = *(v2 + 64);
    sub_100A22DF0(v16);
    v26 = sub_100E22864();
    v27 = v16;
    if (*(v26 + 16) && (v28 = sub_1007723C0(v16), (v29 & 1) != 0))
    {
      v30 = (*(v26 + 56) + 16 * v28);
      v31 = *v30;
      v63 = v30[1];
      v64 = v31;
      sub_100017D5C(v31, v63);
    }

    else
    {
      v63 = 0xF000000000000000;
      v64 = 0;
    }

    v61 = *(v21 + 72);
    v32 = [*(v25 + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject) identifier];
    v62 = v9;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v59 = v7;
    v33 = *(v7 + 16);
    v34 = v75;
    v33(v75, v9, v76);
    v35 = (v34 + *(v3 + 20));
    v36 = v69;
    v35[3] = v69;
    v37 = v3;
    v38 = v36;
    v35[4] = sub_100E62554(&qword_10169EED0, 255, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v39 = sub_1000280DC(v35);
    v40 = v74;
    v41 = *(v74 + 16);
    v42 = v67;
    v41(v39, v67, v38);
    *(v34 + *(v37 + 24)) = 0;
    *(v34 + *(v37 + 28)) = xmmword_10138BBF0;
    v58 = *(*(v21 + 80) + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
    v60 = type metadata accessor for Transaction();
    v41(v71, v27, v38);
    sub_100E6A94C(v34, v73, type metadata accessor for AirPodsLEAccessory);
    v41(v72, v42, v38);
    v43 = v40;
    v44 = *(v40 + 80);
    v45 = (v44 + 25) & ~v44;
    v46 = (v65 + 7 + v45) & 0xFFFFFFFFFFFFFFF8;
    v47 = *(v66 + 80);
    v67 = v27;
    v48 = (v47 + v46 + 17) & ~v47;
    v49 = (v68 + v44 + v48) & ~v44;
    v50 = v21;
    v57[1] = v21;
    v51 = (v65 + 7 + v49) & 0xFFFFFFFFFFFFFFF8;
    v52 = swift_allocObject();
    *(v52 + 16) = v50;
    *(v52 + 24) = v61;
    v53 = *(v43 + 32);
    v53(v52 + v45, v71, v38);
    v54 = v52 + v46;
    v56 = v63;
    v55 = v64;
    *v54 = v64;
    *(v54 + 8) = v56;
    *(v54 + 16) = v70 & 1;
    sub_100E6ADA4(v73, v52 + v48, type metadata accessor for AirPodsLEAccessory);
    v53(v52 + v49, v72, v38);
    *(v52 + v51) = v58;
    swift_retain_n();

    sub_10002E98C(v55, v56);
    static Transaction.asyncTask(name:block:)();

    sub_100006654(v55, v56);
    sub_100E6A9B4(v75, type metadata accessor for AirPodsLEAccessory);
    (*(v59 + 8))(v62, v76);
    return (*(v74 + 8))(v67, v38);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100E674F8(char *a1)
{
  v2 = v1;
  v43 = a1;
  v3 = type metadata accessor for MACAddress();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v7 = __chkstk_darwin(v6);
  v44 = v40 - v8;
  __chkstk_darwin(v7);
  v10 = v40 - v9;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v2 + 16);
  *v14 = v15;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if (v15)
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
  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177C418);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Starting AirPods LE pairing using FindMyBluetooth", v20, 2u);
  }

  sub_100A22DF0(v10);
  v21 = sub_100E22864();
  if (*(v21 + 16) && (v22 = sub_1007723C0(v10), (v23 & 1) != 0))
  {
    v24 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v25 = (*(v21 + 56) + 16 * v22);
    v26 = *v25;
    v41 = v25[1];
    v42 = v26;
    sub_100017D5C(v26, v41);
  }

  else
  {
    v24 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v41 = 0xF000000000000000;
    v42 = 0;
  }

  v40[1] = type metadata accessor for Transaction();
  v27 = *(v4 + 16);
  v28 = v44;
  v27(v44, v43, v3);
  v27(v24, v10, v3);
  v29 = *(v4 + 80);
  v30 = (v29 + 24) & ~v29;
  v31 = (v5 + v29 + v30) & ~v29;
  v43 = v10;
  v32 = (v5 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  *(v33 + 16) = v2;
  v40[0] = v2;
  v34 = v3;
  v35 = *(v4 + 32);
  v35(v33 + v30, v28, v34);
  v35(v33 + v31, v24, v34);
  v36 = (v33 + v32);
  v38 = v41;
  v37 = v42;
  *v36 = v42;
  v36[1] = v38;

  sub_10002E98C(v37, v38);
  static Transaction.asyncTask(name:block:)();

  sub_100006654(v37, v38);
  return (*(v4 + 8))(v43, v34);
}

uint64_t sub_100E6792C(uint64_t a1)
{
  v35 = a1;
  v2 = type metadata accessor for MACAddress();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v5;
  __chkstk_darwin(v4);
  v8 = &v31 - v7;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = v1;
  v13 = *(v1 + 16);
  *v12 = v13;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = v13;
  v15 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if (v15)
  {
    v32 = v6;
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
  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177C418);
  v17 = *(v3 + 16);
  v17(v8, v35, v2);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v36 = v31;
    *v20 = 136446210;
    sub_100E62554(&qword_1016A4210, 255, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v17;
    v24 = v23;
    (*(v3 + 8))(v8, v2);
    v25 = sub_1000136BC(v21, v24, &v36);
    v17 = v22;

    *(v20 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v18, v19, "startStandaloneLEPairing for %{public}s", v20, 0xCu);
    sub_100007BAC(v31);
  }

  else
  {

    (*(v3 + 8))(v8, v2);
  }

  type metadata accessor for Transaction();
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = v32;
  v17(v32, v35, v2);
  v28 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  (*(v3 + 32))(v29 + v28, v27, v2);

  static Transaction.asyncTask(name:block:)();
}

unint64_t sub_100E67D8C()
{
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138B360;
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
  v1 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  return v1;
}

unint64_t sub_100E67ED8(uint64_t a1, uint64_t a2)
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
  v4 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  return v4;
}

uint64_t sub_100E680DC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_100E5FBBC(v2, v3);
}

uint64_t sub_100E68184()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_1001C3380(v2, v3);
}

uint64_t sub_100E68220()
{
  v1 = *(sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for MACAddress();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700) - 8);
  v34 = *(v8 + 80);
  v9 = (v7 + v34 + 8) & ~v34;
  v35 = *(v8 + 64);
  swift_unknownObjectRelease();
  v10 = v0 + v2;
  v11 = type metadata accessor for OwnedBeaconRecord(0);
  if ((*(*(v11 - 1) + 48))(v0 + v2, 1, v11))
  {
    goto LABEL_21;
  }

  v33 = (v7 + v34 + 8) & ~v34;
  sub_100016590(*v10, *(v10 + 8));
  v12 = v11[5];
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v15(v10 + v12, v13);
  v16 = v10 + v11[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    switch(EnumCaseMultiPayload)
    {
      case 2:
        v15(v16, v13);
        sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

        break;
      case 3:
        v15(v16, v13);
        sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

        break;
      case 4:
        break;
      default:
        goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (!EnumCaseMultiPayload)
  {
LABEL_13:

    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 1)
  {

    goto LABEL_13;
  }

LABEL_14:
  v18 = v11[7];
  if (!(*(v14 + 48))(v10 + v18, 1, v13))
  {
    v15(v10 + v18, v13);
  }

  v19 = v11[8];
  v20 = type metadata accessor for Date();
  (*(*(v20 - 8) + 8))(v10 + v19, v20);
  sub_100016590(*(v10 + v11[9]), *(v10 + v11[9] + 8));
  v21 = (v10 + v11[10]);
  v22 = v21[1];
  if (v22 >> 60 != 15)
  {
    sub_100016590(*v21, v22);
  }

  v23 = (v10 + v11[11]);
  v24 = v23[1];
  v9 = v33;
  if (v24 >> 60 != 15)
  {
    sub_100016590(*v23, v24);
  }

  sub_100016590(*(v10 + v11[12]), *(v10 + v11[12] + 8));
  sub_100016590(*(v10 + v11[13]), *(v10 + v11[13] + 8));

LABEL_21:
  v25 = *(v5 + 8);
  v25(v0 + v6, v4);

  v26 = v0 + v9;
  v27 = type metadata accessor for OwnedBeaconGroup(0);
  if (!(*(*(v27 - 8) + 48))(v0 + v9, 1, v27))
  {
    sub_100016590(*v26, *(v26 + 8));
    v28 = v9;
    v29 = *(v27 + 24);
    v30 = type metadata accessor for UUID();
    v31 = v26 + v29;
    v9 = v28;
    (*(*(v30 - 8) + 8))(v31, v30);
    v25(v26 + *(v27 + 28), v4);
  }

  return _swift_deallocObject(v0, ((v9 + v35) & 0xFFFFFFFFFFFFFFF8) + 16);
}

void *sub_100E6880C(uint64_t a1)
{
  v3 = *(type metadata accessor for MACAddress() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100E54140(a1, v4, v5);
}

uint64_t sub_100E68880()
{
  v2 = *(type metadata accessor for MACAddress() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = *(v0 + 16);
  v8 = (v0 + ((v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_100014744;

  return sub_100E5AF24(v7, v0 + v4, v0 + v6, v9, v10);
}

uint64_t sub_100E68A0C()
{
  v2 = *(type metadata accessor for MACAddress() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = (v4 + *(v2 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for AirPodsLEAccessory(0) - 8);
  v7 = (v5 + *(v6 + 80) + 17) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v3 + v7) & ~v3;
  v17 = *(v0 + 16);
  v9 = *(v0 + 24);
  v10 = v0 + v5;
  v11 = *(v0 + v5);
  v12 = *(v10 + 8);
  v13 = *(v10 + 16);
  v14 = swift_task_alloc();
  *(v1 + 16) = v14;
  *v14 = v1;
  v14[1] = sub_100014650;

  return sub_100E54460(v17, v9, v0 + v4, v11, v12, v13, v0 + v7, v0 + v8);
}

uint64_t sub_100E68BC8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for MACAddress() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 48) & ~v6;
  v8 = (*(v5 + 64) + v6 + v7) & ~v6;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = v1[5];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100014744;

  return sub_100E582F8(a1, v9, v10, v11, v12, v1 + v7, v1 + v8);
}

uint64_t sub_100E68D58()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100E57748();
}

uint64_t sub_100E68E04()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014650;

  return sub_100B9ED14(v0);
}

uint64_t sub_100E68E94()
{
  v1 = type metadata accessor for AccessoryPairingAnalytics(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v14 = *(*(v1 - 1) + 64);

  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);
  v7 = v1[5];
  if (!(*(v5 + 48))(v0 + v2 + v7, 1, v4))
  {
    v6(v3 + v7, v4);
  }

  sub_100016590(*(v3 + v1[7]), *(v3 + v1[7] + 8));

  sub_100016590(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v8 = v1[12];
  v9 = type metadata accessor for MACAddress();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  v11 = v1[14];
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 8))(v3 + v11, v12);

  return _swift_deallocObject(v0, v2 + v14);
}

uint64_t sub_100E690DC()
{
  v2 = *(type metadata accessor for AccessoryPairingAnalytics(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100B9EC58(v4, v0 + v3);
}

void sub_100E691FC()
{
  v1 = *(v0 + 32);
  Transaction.capture()();
  sub_100E5FD24(v1);
}

uint64_t sub_100E692F4()
{
  v2 = *(type metadata accessor for MACAddress() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100E52024(v4, v0 + v3);
}

uint64_t sub_100E69470()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_100E695F8()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));
  sub_100016590(*(v0 + 80), *(v0 + 88));
  sub_100016590(*(v0 + 96), *(v0 + 104));
  sub_100016590(*(v0 + 112), *(v0 + 120));
  sub_100016590(*(v0 + 128), *(v0 + 136));
  sub_100016590(*(v0 + 144), *(v0 + 152));
  sub_100016590(*(v0 + 160), *(v0 + 168));
  sub_100016590(*(v0 + 176), *(v0 + 184));
  sub_100016590(*(v0 + 200), *(v0 + 208));

  return _swift_deallocObject(v0, 216);
}

uint64_t sub_100E69790()
{
  v1 = *(v0 + 16);

  return v1;
}

double sub_100E69814@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 16);

  return result;
}

uint64_t sub_100E69820()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 80);
  v9 = *(v0 + 64);
  v10 = v2;
  v11 = *(v0 + 96);
  v3 = *(v0 + 32);
  v6 = *(v0 + 16);
  v7 = v3;
  v8 = v1;
  sub_100E6987C(v0 + 16, v5);
  return String.init<A>(describing:)();
}

uint64_t sub_100E698D8@<X0>(_OWORD *a1@<X8>)
{
  v4 = *(v1 + 32);
  *a1 = v4;
  return sub_1005C61E8(&v4, &v3);
}

uint64_t sub_100E699E0()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryProductInfo(0);
  v22 = *(*(v2 - 1) + 64);
  v23 = (*(*(v2 - 1) + 80) + 16) & ~*(*(v2 - 1) + 80);
  v3 = v0 + v23;
  v4 = v2[5];
  v5 = type metadata accessor for ServerStatusCode();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);

  v6 = v2[17];
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  v10 = v2[18];
  if (!v9(v3 + v10, 1, v7))
  {
    (*(v8 + 8))(v3 + v10, v7);
  }

  v11 = v3 + v2[21];
  v12 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    v21 = v1;

    v13 = *(v12 + 44);
    if (!v9(v11 + v13, 1, v7))
    {
      (*(v8 + 8))(v11 + v13, v7);
    }

    v14 = *(v12 + 48);
    if (!v9(v11 + v14, 1, v7))
    {
      (*(v8 + 8))(v11 + v14, v7);
    }

    v1 = v21;
  }

  v15 = (v3 + v2[24]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_100016590(*v15, v16);
  }

  v17 = (v3 + v2[25]);
  v18 = v17[1];
  if (v18 >> 60 != 15)
  {
    sub_100016590(*v17, v18);
  }

  v19 = *(v8 + 8);
  v19(v3 + v2[26], v7);
  v19(v3 + v2[27], v7);
  v19(v3 + v2[28], v7);
  v19(v3 + v2[29], v7);
  v19(v3 + v2[30], v7);
  v19(v3 + v2[31], v7);

  v19(v3 + v2[38], v7);
  v19(v3 + v2[39], v7);
  v19(v3 + v2[40], v7);
  v19(v3 + v2[41], v7);
  v19(v3 + v2[42], v7);
  v19(v3 + v2[43], v7);

  return _swift_deallocObject(v1, v23 + v22);
}

uint64_t sub_100E69EF0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AccessoryProductInfo(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_100E69F64@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_100017D5C(v2, v3);
}

uint64_t sub_100E69F8C()
{
  if (*(v0 + 24) >> 60 == 15)
  {
    return 0;
  }

  else
  {
    return Data.hexString.getter();
  }
}

uint64_t sub_100E69FC8()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 56), *(v0 + 64));
  sub_100016590(*(v0 + 72), *(v0 + 80));
  sub_100016590(*(v0 + 88), *(v0 + 96));

  return _swift_deallocObject(v0, 104);
}

uint64_t sub_100E6A020@<X0>(_OWORD *a1@<X8>)
{
  v4 = *(v1 + 16);
  *a1 = v4;
  return sub_1001022C4(&v4, &v3);
}

uint64_t sub_100E6A05C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_100E6A0C4(void (*a1)(_BYTE *))
{
  sub_100101AA8(v1 + 16, v4);
  v4[41] = 1;
  a1(v4);
  return sub_10000B3A8(v4, &qword_1016BCD38, &qword_1013EAD40);
}

uint64_t sub_100E6A1C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100E4FD64(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_100E6A21C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100E3465C(a1, *(v2 + 24));
  *a2 = result;
  return result;
}

unint64_t sub_100E6A25C()
{
  result = qword_1016BCE30;
  if (!qword_1016BCE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BCE30);
  }

  return result;
}

unint64_t sub_100E6A2B0()
{
  result = qword_1016BCE40;
  if (!qword_1016BCE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BCE40);
  }

  return result;
}

uint64_t sub_100E6A324()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_100E2C468(v0);
}

uint64_t sub_100E6A3B4()
{
  v2 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + v4);
  v9 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_100014744;

  return sub_100E2C508(v7, v0 + v3, v8, v0 + v6, v9);
}

uint64_t sub_100E6A560()
{
  v1 = *(type metadata accessor for MACAddress() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_100E25900(v3, v4, (v0 + v2), v6, v7);
}

uint64_t sub_100E6A5F4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_100E2876C(v0);
}

uint64_t sub_100E6A684()
{
  v1 = *(type metadata accessor for MACAddress() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(type metadata accessor for UUID() - 8);
  v8 = (v6 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v9 = *(v0 + v3);
  v10 = *(v0 + v6);
  v11 = (v0 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  return sub_100E28D68(v0 + v2, v9, v0 + v5, v10, v0 + v8, v12, v13);
}

uint64_t sub_100E6A804()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_100014744;

  return sub_100E29318(v7, v8, v9, v0 + v3, v0 + v6);
}

uint64_t sub_100E6A94C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100E6A9B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100E6AA14()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014744;

  return sub_100E29D50(v4, v5, v6, v0 + v3);
}

uint64_t sub_100E6AB00()
{
  v2 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_100E28904(v4, v5, v0 + v3);
}

uint64_t sub_100E6ABE4(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);

  (*(v3 + 8))(v1 + v4, v2);

  return _swift_deallocObject(v1, v4 + v5);
}

uint64_t sub_100E6ACB0(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100E2AFF4(a1, v6, v1 + v5);
}

uint64_t sub_100E6ADA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100E6AE0C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v6 = (v3 + v4 + *(*v5 + 80)) & ~*(*v5 + 80);
  v7 = *(*v5 + 64);

  sub_1000BB584(*(v0 + 24), *(v0 + 32));
  v8 = *(v2 + 8);
  v8(v0 + v3, v1);
  sub_100016590(*(v0 + v6), *(v0 + v6 + 8));
  v8(v0 + v6 + v5[8], v1);
  v9 = v5[9];
  v10 = type metadata accessor for MACAddress();
  (*(*(v10 - 8) + 8))(v0 + v6 + v9, v10);

  return _swift_deallocObject(v0, v6 + v7);
}

uint64_t sub_100E6AFC8()
{
  v2 = *(type metadata accessor for MACAddress() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_100E24920(v4, v5, v0 + v3);
}

uint64_t sub_100E6B0DC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_1001C3380(v2, v3);
}

unint64_t sub_100E6B1AC()
{
  result = qword_1016BCE60;
  if (!qword_1016BCE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BCE60);
  }

  return result;
}

unint64_t sub_100E6B200()
{
  result = qword_1016BCE68;
  if (!qword_1016BCE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BCE68);
  }

  return result;
}

unint64_t sub_100E6B388(uint64_t a1)
{
  *(a1 + 8) = sub_100E6B3B8();
  result = sub_10030FE24();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100E6B3B8()
{
  result = qword_1016BCE70;
  if (!qword_1016BCE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BCE70);
  }

  return result;
}

void sub_100E6B40C(uint64_t (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v83 = a2;
  v82 = a1;
  v6 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v6 - 8);
  v110 = &v73 - v7;
  v102 = type metadata accessor for URL();
  v105 = *(v102 - 8);
  __chkstk_darwin(v102);
  v93 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  __chkstk_darwin(v9 - 8);
  v96 = &v73 - v10;
  v112 = type metadata accessor for DirectorySequence();
  v109 = *(v112 - 8);
  __chkstk_darwin(v112);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&qword_1016B5CA0, &qword_1013D7328);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v94 = &v73 - v17;
  v106 = sub_1000BC4D4(&qword_1016B5CA8, &unk_1013D7330);
  v108 = *(v106 - 8);
  v18 = __chkstk_darwin(v106);
  v98 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v97 = &v73 - v20;
  v21 = sub_1000BC4D4(&qword_1016A7838, &unk_1013EB250);
  __chkstk_darwin(v21 - 8);
  v23 = &v73 - v22;
  v24 = sub_1000BC4D4(&qword_1016A7828, &unk_1013D7340);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v111 = &v73 - v26;
  v27 = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  __chkstk_darwin(v27 - 8);
  v86 = &v73 - v28;
  v85 = type metadata accessor for OwnerSharingCircle(0);
  v29 = *(v85 - 8);
  v30 = __chkstk_darwin(v85);
  v80 = &v73 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v81 = &v73 - v32;
  sub_1000D2A70(v5, v23, &qword_1016A7838, &unk_1013EB250);
  v33 = *(v25 + 48);
  v87 = v23;
  v79 = v25 + 48;
  v78 = v33;
  v34 = v33(v23, 1, v24);
  v73 = v29;
  if (v34 == 1)
  {
    v84 = _swiftEmptyArrayStorage;
    v35 = v87;
LABEL_3:
    sub_10000B3A8(v35, &qword_1016A7838, &unk_1013EB250);
    v36 = v86;
    (*(v73 + 56))(v86, 1, 1, v85);
LABEL_4:
    sub_10000B3A8(v5, &qword_1016A7830, &unk_1013D69E0);
    sub_10000B3A8(v36, &unk_1016AFA00, &qword_10138C4D0);
    return;
  }

  v107 = (v109 + 48);
  v104 = (v109 + 32);
  v101 = (v105 + 48);
  v91 = (v105 + 32);
  v100 = (v109 + 8);
  v90 = (v105 + 8);
  v89 = (v109 + 56);
  v95 = (v108 + 56);
  v99 = (v108 + 48);
  v76 = (v29 + 56);
  v74 = (v25 + 56);
  v75 = (v29 + 48);
  v84 = _swiftEmptyArrayStorage;
  v37 = &unk_1013D7330;
  v38 = v94;
  v35 = v87;
  v77 = v5;
  v92 = v16;
  v88 = v24;
  while (1)
  {
    v108 = v4;
    v39 = v111;
    sub_1000D2AD8(v35, v111, &qword_1016A7828, &unk_1013D7340);
    v109 = *(v24 + 40);
    v40 = v96;
    sub_1000D2A70(v39 + v109, v96, &qword_1016A5970, &unk_1013B3470);
    v105 = *v107;
    if ((v105)(v40, 1, v112) != 1)
    {
      break;
    }

    v41 = v106;
    v42 = v38;
LABEL_18:
    sub_10000B3A8(v40, &qword_1016A5970, &unk_1013B3470);
    (*v95)(v42, 1, 1, v41);
    v4 = v108;
    v59 = v42;
LABEL_20:
    sub_10000B3A8(v111, &qword_1016A7828, &unk_1013D7340);
    v38 = v59;
    sub_10000B3A8(v59, &qword_1016B5CA0, &qword_1013D7328);
    v5 = v77;
    sub_10000B3A8(v77, &qword_1016A7838, &unk_1013EB250);
    v60 = 1;
    (*v74)(v5, 1, 1, v88);
    v36 = v86;
LABEL_21:
    v61 = v60;
    v62 = v85;
    (*v76)(v36, v61, 1, v85);
    if ((*v75)(v36, 1, v62) == 1)
    {
      goto LABEL_4;
    }

    v63 = v36;
    v64 = v81;
    sub_100E768B0(v63, v81, type metadata accessor for OwnerSharingCircle);
    v65 = v82(v64);
    if (v4)
    {
      sub_100E76918(v64, type metadata accessor for OwnerSharingCircle);
      sub_10000B3A8(v5, &qword_1016A7830, &unk_1013D69E0);

      return;
    }

    if (v65)
    {
      sub_100E768B0(v64, v80, type metadata accessor for OwnerSharingCircle);
      v66 = v84;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v113 = v66;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_101123FE4(0, v66[2] + 1, 1);
        v66 = v113;
      }

      v68 = v73;
      v70 = v66[2];
      v69 = v66[3];
      v71 = v70 + 1;
      if (v70 >= v69 >> 1)
      {
        sub_101123FE4((v69 > 1), v70 + 1, 1);
        v71 = v70 + 1;
        v66 = v113;
      }

      v66[2] = v71;
      v72 = (*(v68 + 80) + 32) & ~*(v68 + 80);
      v84 = v66;
      sub_100E768B0(v80, v66 + v72 + *(v68 + 72) * v70, type metadata accessor for OwnerSharingCircle);
      v38 = v94;
    }

    else
    {
      sub_100E76918(v64, type metadata accessor for OwnerSharingCircle);
    }

    v35 = v87;
    sub_1000D2A70(v5, v87, &qword_1016A7838, &unk_1013EB250);
    v24 = v88;
    if (v78(v35, 1, v88) == 1)
    {
      goto LABEL_3;
    }
  }

  v103 = *v104;
  v42 = v38;
  while (1)
  {
    v43 = v37;
    v103(v12, v40, v112);
    DirectorySequence.next()();
    v44 = v110;
    v45 = v102;
    v46 = v12;
    if ((*v101)(v110, 1, v102) == 1)
    {
      v47 = v112;
      (*v100)(v12, v112);
      sub_10000B3A8(v44, &unk_101696AC0, &qword_101390A60);
      v48 = v111;
      v49 = v109;
      sub_10000B3A8(v111 + v109, &qword_1016A5970, &unk_1013B3470);
      (*v89)(v48 + v49, 1, 1, v47);
      v41 = v106;
      (*v95)(v42, 1, 1, v106);
      v12 = v46;
      goto LABEL_15;
    }

    v50 = v112;
    v51 = v93;
    (*v91)(v93, v44, v45);
    v52 = objc_autoreleasePoolPush();
    v53 = v92;
    v54 = v108;
    sub_1012C44E4(v51, v111, v92);
    v108 = v54;
    if (v54)
    {
      break;
    }

    objc_autoreleasePoolPop(v52);
    (*v100)(v46, v50);
    v42 = v94;
    sub_1000D2AD8(v53, v94, &qword_1016B5CA0, &qword_1013D7328);
    v12 = v46;
    (*v90)(v51, v45);
    v40 = v96;
    v41 = v106;
LABEL_15:
    if ((*v99)(v42, 1, v41) == 1)
    {
      v4 = v108;
      v59 = v42;
      v37 = v43;
      goto LABEL_20;
    }

    v38 = v42;
    v55 = v42;
    v56 = v97;
    v37 = v43;
    sub_1000D2AD8(v55, v97, &qword_1016B5CA8, v43);
    v57 = v56;
    v58 = v98;
    sub_1000D2AD8(v57, v98, &qword_1016B5CA8, v43);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_10000B3A8(v111, &qword_1016A7828, &unk_1013D7340);
      v36 = v86;
      sub_100E768B0(v58, v86, type metadata accessor for OwnerSharingCircle);
      v60 = 0;
      v4 = v108;
      v5 = v77;
      goto LABEL_21;
    }

    sub_10000B3A8(v58, &qword_1016B5CA8, v43);
    sub_1000D2A70(v111 + v109, v40, &qword_1016A5970, &unk_1013B3470);
    v42 = v38;
    if ((v105)(v40, 1, v112) == 1)
    {
      goto LABEL_18;
    }
  }

  objc_autoreleasePoolPop(v52);
  __break(1u);
}

void sub_100E6C1A4(uint64_t (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v83 = a2;
  v82 = a1;
  v6 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v6 - 8);
  v110 = &v73 - v7;
  v102 = type metadata accessor for URL();
  v105 = *(v102 - 8);
  __chkstk_darwin(v102);
  v93 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  __chkstk_darwin(v9 - 8);
  v96 = &v73 - v10;
  v112 = type metadata accessor for DirectorySequence();
  v109 = *(v112 - 8);
  __chkstk_darwin(v112);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&qword_1016B5CB0, &unk_1013D7350);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v94 = &v73 - v17;
  v106 = sub_1000BC4D4(&qword_1016B5CB8, &unk_1013EB240);
  v108 = *(v106 - 8);
  v18 = __chkstk_darwin(v106);
  v98 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v97 = &v73 - v20;
  v21 = sub_1000BC4D4(&qword_1016A5988, &qword_1013B3490);
  __chkstk_darwin(v21 - 8);
  v23 = &v73 - v22;
  v24 = sub_1000BC4D4(&qword_1016A5978, &qword_101410D20);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v111 = &v73 - v26;
  v27 = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  __chkstk_darwin(v27 - 8);
  v86 = &v73 - v28;
  v85 = type metadata accessor for MemberSharingCircle(0);
  v29 = *(v85 - 8);
  v30 = __chkstk_darwin(v85);
  v80 = &v73 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v81 = &v73 - v32;
  sub_1000D2A70(v5, v23, &qword_1016A5988, &qword_1013B3490);
  v33 = *(v25 + 48);
  v87 = v23;
  v79 = v25 + 48;
  v78 = v33;
  v34 = v33(v23, 1, v24);
  v73 = v29;
  if (v34 == 1)
  {
    v84 = _swiftEmptyArrayStorage;
    v35 = v87;
LABEL_3:
    sub_10000B3A8(v35, &qword_1016A5988, &qword_1013B3490);
    v36 = v86;
    (*(v73 + 56))(v86, 1, 1, v85);
LABEL_4:
    sub_10000B3A8(v5, &qword_1016A5980, &unk_1013B3480);
    sub_10000B3A8(v36, &unk_101698BC0, &qword_10138C440);
    return;
  }

  v107 = (v109 + 48);
  v104 = (v109 + 32);
  v101 = (v105 + 48);
  v91 = (v105 + 32);
  v100 = (v109 + 8);
  v90 = (v105 + 8);
  v89 = (v109 + 56);
  v95 = (v108 + 56);
  v99 = (v108 + 48);
  v76 = (v29 + 56);
  v74 = (v25 + 56);
  v75 = (v29 + 48);
  v84 = _swiftEmptyArrayStorage;
  v37 = &unk_1013EB240;
  v38 = v94;
  v35 = v87;
  v77 = v5;
  v92 = v16;
  v88 = v24;
  while (1)
  {
    v108 = v4;
    v39 = v111;
    sub_1000D2AD8(v35, v111, &qword_1016A5978, &qword_101410D20);
    v109 = *(v24 + 40);
    v40 = v96;
    sub_1000D2A70(v39 + v109, v96, &qword_1016A5970, &unk_1013B3470);
    v105 = *v107;
    if ((v105)(v40, 1, v112) != 1)
    {
      break;
    }

    v41 = v106;
    v42 = v38;
LABEL_18:
    sub_10000B3A8(v40, &qword_1016A5970, &unk_1013B3470);
    (*v95)(v42, 1, 1, v41);
    v4 = v108;
    v59 = v42;
LABEL_20:
    sub_10000B3A8(v111, &qword_1016A5978, &qword_101410D20);
    v38 = v59;
    sub_10000B3A8(v59, &qword_1016B5CB0, &unk_1013D7350);
    v5 = v77;
    sub_10000B3A8(v77, &qword_1016A5988, &qword_1013B3490);
    v60 = 1;
    (*v74)(v5, 1, 1, v88);
    v36 = v86;
LABEL_21:
    v61 = v60;
    v62 = v85;
    (*v76)(v36, v61, 1, v85);
    if ((*v75)(v36, 1, v62) == 1)
    {
      goto LABEL_4;
    }

    v63 = v36;
    v64 = v81;
    sub_100E768B0(v63, v81, type metadata accessor for MemberSharingCircle);
    v65 = v82(v64);
    if (v4)
    {
      sub_100E76918(v64, type metadata accessor for MemberSharingCircle);
      sub_10000B3A8(v5, &qword_1016A5980, &unk_1013B3480);

      return;
    }

    if (v65)
    {
      sub_100E768B0(v64, v80, type metadata accessor for MemberSharingCircle);
      v66 = v84;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v113 = v66;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_101123FA0(0, v66[2] + 1, 1);
        v66 = v113;
      }

      v68 = v73;
      v70 = v66[2];
      v69 = v66[3];
      v71 = v70 + 1;
      if (v70 >= v69 >> 1)
      {
        sub_101123FA0((v69 > 1), v70 + 1, 1);
        v71 = v70 + 1;
        v66 = v113;
      }

      v66[2] = v71;
      v72 = (*(v68 + 80) + 32) & ~*(v68 + 80);
      v84 = v66;
      sub_100E768B0(v80, v66 + v72 + *(v68 + 72) * v70, type metadata accessor for MemberSharingCircle);
      v38 = v94;
    }

    else
    {
      sub_100E76918(v64, type metadata accessor for MemberSharingCircle);
    }

    v35 = v87;
    sub_1000D2A70(v5, v87, &qword_1016A5988, &qword_1013B3490);
    v24 = v88;
    if (v78(v35, 1, v88) == 1)
    {
      goto LABEL_3;
    }
  }

  v103 = *v104;
  v42 = v38;
  while (1)
  {
    v43 = v37;
    v103(v12, v40, v112);
    DirectorySequence.next()();
    v44 = v110;
    v45 = v102;
    v46 = v12;
    if ((*v101)(v110, 1, v102) == 1)
    {
      v47 = v112;
      (*v100)(v12, v112);
      sub_10000B3A8(v44, &unk_101696AC0, &qword_101390A60);
      v48 = v111;
      v49 = v109;
      sub_10000B3A8(v111 + v109, &qword_1016A5970, &unk_1013B3470);
      (*v89)(v48 + v49, 1, 1, v47);
      v41 = v106;
      (*v95)(v42, 1, 1, v106);
      v12 = v46;
      goto LABEL_15;
    }

    v50 = v112;
    v51 = v93;
    (*v91)(v93, v44, v45);
    v52 = objc_autoreleasePoolPush();
    v53 = v92;
    v54 = v108;
    sub_1012C4440(v51, v111, v92);
    v108 = v54;
    if (v54)
    {
      break;
    }

    objc_autoreleasePoolPop(v52);
    (*v100)(v46, v50);
    v42 = v94;
    sub_1000D2AD8(v53, v94, &qword_1016B5CB0, &unk_1013D7350);
    v12 = v46;
    (*v90)(v51, v45);
    v40 = v96;
    v41 = v106;
LABEL_15:
    if ((*v99)(v42, 1, v41) == 1)
    {
      v4 = v108;
      v59 = v42;
      v37 = v43;
      goto LABEL_20;
    }

    v38 = v42;
    v55 = v42;
    v56 = v97;
    v37 = v43;
    sub_1000D2AD8(v55, v97, &qword_1016B5CB8, v43);
    v57 = v56;
    v58 = v98;
    sub_1000D2AD8(v57, v98, &qword_1016B5CB8, v43);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_10000B3A8(v111, &qword_1016A5978, &qword_101410D20);
      v36 = v86;
      sub_100E768B0(v58, v86, type metadata accessor for MemberSharingCircle);
      v60 = 0;
      v4 = v108;
      v5 = v77;
      goto LABEL_21;
    }

    sub_10000B3A8(v58, &qword_1016B5CB8, v43);
    sub_1000D2A70(v111 + v109, v40, &qword_1016A5970, &unk_1013B3470);
    v42 = v38;
    if ((v105)(v40, 1, v112) == 1)
    {
      goto LABEL_18;
    }
  }

  objc_autoreleasePoolPop(v52);
  __break(1u);
}

uint64_t sub_100E6CF3C@<X0>(void *a2@<X8>)
{
  type metadata accessor for BeaconKeyManager(0);
  result = OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  *a2 = v4;
  return result;
}

uint64_t sub_100E6CFC4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100E6CFE4, v1, 0);
}

uint64_t sub_100E6D00C()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_100E6D104;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_10011191C, v3, &type metadata for () + 1);
}

uint64_t sub_100E6D104()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_100274F20;
  }

  else
  {

    v2 = Database.await(state:);
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100E6D220@<X0>(_BYTE *a2@<X8>)
{
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  QueueSynchronizer.conditionalSync<A>(_:)();

  *a2 = v4;
  return result;
}

uint64_t sub_100E6D310@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100AAF7D8();
  *a1 = result;
  return result;
}

uint64_t sub_100E6D33C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100AB035C();
  *a1 = result;
  return result;
}

uint64_t sub_100E6D39C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v10);
  v12 = (&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v13 - 8);
  v14 = (a3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId);
  v15 = *(a3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId + 8);
  if (v15 >> 60 == 15)
  {
    goto LABEL_22;
  }

  v48 = *(a1 + 128);
  v16 = *v14;
  sub_100017D5C(*v14, v15);
  v17 = Data.hexString.getter();
  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    v47 = a2;
    v20 = (a3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid);
    v21 = *(a3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid + 8);
    if (v21 >> 60 != 15)
    {
      v22 = v17;
      v44 = a4;
      v46 = v18;
      v23 = *v20;
      sub_100017D5C(*v20, v21);
      v24 = Data.hexString.getter();
      v26 = HIBYTE(v25) & 0xF;
      if ((v25 & 0x2000000000000000) == 0)
      {
        v26 = v24 & 0xFFFFFFFFFFFFLL;
      }

      if (v26)
      {
        v45 = v23;
        v27 = (a3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
        v28 = *(a3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber + 8);
        if (v28 >> 60 != 15)
        {
          v40 = v24;
          v42 = v25;
          v43 = v28;
          v30 = *v27;
          sub_100017D5C(*v27, v28);
          static String.Encoding.utf8.getter();
          v41 = v30;
          v31 = String.init(data:encoding:)();
          if (v32)
          {
            v33 = HIBYTE(v32) & 0xF;
            if ((v32 & 0x2000000000000000) == 0)
            {
              v33 = v31 & 0xFFFFFFFFFFFFLL;
            }

            v34 = v45;
            if (v33)
            {
              v35 = v46;
              *v12 = v22;
              v12[1] = v35;
              v36 = v42;
              v12[2] = v40;
              v12[3] = v36;
              v12[4] = v31;
              v12[5] = v32;
              swift_storeEnumTagMultiPayload();
              sub_10012B4BC(v47, a3, v44, v12, a5);
              sub_100006654(v16, v15);
              sub_100006654(v34, v21);
              sub_100006654(v41, v43);
              return sub_100E76918(v12, type metadata accessor for StableIdentifier);
            }

            sub_100006654(v41, v43);

            v29 = v34;
            goto LABEL_20;
          }

          sub_100006654(v41, v43);
        }

        v29 = v45;
      }

      else
      {

        v29 = v23;
      }

LABEL_20:
      sub_100006654(v29, v21);
    }
  }

  sub_100006654(v16, v15);
LABEL_22:
  v38 = type metadata accessor for OwnedBeaconRecord(0);
  return (*(*(v38 - 8) + 56))(a5, 1, 1, v38);
}

uint64_t sub_100E6D6EC@<X0>(__int128 *a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = sub_1000BC4D4(&qword_1016973B8, &qword_1013EAD60);
  sub_100B8BFA0(a5, a5 + *(v10 + 48), a1, a2, 0, 0xE000000000000000, a3, a4);
  v11 = *(*(v10 - 8) + 56);

  return v11(a5, 0, 1, v10);
}

uint64_t sub_100E6D7E0()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177BA08);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000136BC(0xD000000000000014, 0x800000010136C7D0, &v14);
    _os_log_impl(&_mh_execute_header, v6, v7, "%s called", v8, 0xCu);
    sub_100007BAC(v9);
  }

  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;

  sub_1008CE048(0, 0, v4, &unk_1013EB280, v11);

  return sub_10000B3A8(v4, &qword_101698C00, &qword_10138B570);
}

uint64_t sub_100E6DA3C()
{
  v1 = *(*(v0 + 16) + 128);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_100E6DB20;

  return withCheckedContinuation<A>(isolation:function:_:)(v2, 0, 0, 0x696176416E656877, 0xEF2928656C62616CLL, sub_100111E60, v1, &type metadata for () + 1);
}

uint64_t sub_100E6DB20()
{

  return _swift_task_switch(sub_100E6DC1C, 0, 0);
}

uint64_t sub_100E6DC1C()
{
  v13 = v0;
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BA08);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000136BC(0xD000000000000014, 0x800000010136C7D0, &v12);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s starting since beacon store is available.", v4, 0xCu);
    sub_100007BAC(v5);
  }

  type metadata accessor for Transaction();

  static Transaction.asyncTask(name:block:)();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000136BC(0xD000000000000014, 0x800000010136C7D0, &v12);
    _os_log_impl(&_mh_execute_header, v6, v7, "%s completed.", v8, 0xCu);
    sub_100007BAC(v9);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100E6DEC4()
{

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100E6DF9C;
  v2 = *(v0 + 16);

  return unsafeBlocking<A>(context:_:)(v1, 0xD000000000000010, 0x80000001013EB120, sub_100E767F4, v2, &type metadata for () + 1);
}

uint64_t sub_100E6DF9C()
{

  return _swift_task_switch(sub_100014748, 0, 0);
}

uint64_t sub_100E6E0B4@<X0>(uint64_t a1@<X0>, size_t *a2@<X8>)
{
  v41 = a2;
  v3 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  __chkstk_darwin(v3 - 8);
  v39 = &v32 - v4;
  v5 = sub_1000BC4D4(&qword_1016B5540, &qword_1013EB270);
  v40 = *(v5 - 8);
  __chkstk_darwin(v5);
  v38 = &v32 - v6;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v36 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v32 - v12;
  __chkstk_darwin(v11);
  v15 = &v32 - v14;
  v16 = sub_1000BC4D4(&qword_1016B5548, &unk_1013D6A20);
  __chkstk_darwin(v16 - 8);
  v37 = (&v32 - v17);
  v18 = *(*(a1 + 128) + 168);
  if (qword_101694568 != -1)
  {
    swift_once();
  }

  v19 = sub_1000076D4(v7, qword_10177A918);
  v20 = *(v8 + 16);
  v35 = v15;
  v20(v15, v19, v7);
  v20(v13, v15, v7);
  v21 = *(v5 + 40);
  v34 = v21;
  v32 = type metadata accessor for DirectorySequence();
  v22 = *(*(v32 - 8) + 56);
  v33 = v5;
  v23 = &v38[v21];
  v24 = v38;
  v22(v23, 1, 1, v32);
  v20(v24, v13, v7);
  *(v24 + *(v5 + 36)) = v18;
  v20(v36, v13, v7);

  v25 = v39;
  DirectorySequence.init(at:includingPropertiesForKeys:options:)();
  v26 = *(v8 + 8);
  v26(v13, v7);
  v26(v35, v7);
  v22(v25, 0, 1, v32);
  sub_10062BF70(v25, v24 + v34);
  v27 = *(v40 + 56);
  v28 = v37;
  v29 = v33;
  v27(v37, 1, 1, v33);
  sub_10000B3A8(v28, &qword_1016B5550, &qword_1013D73D0);
  sub_1000D2AD8(v24, v28, &qword_1016B5540, &qword_1013EB270);
  v27(v28, 0, 1, v29);
  v30 = sub_100B35CB8(v28);
  result = sub_10000B3A8(v28, &qword_1016B5548, &unk_1013D6A20);
  *v41 = v30;
  return result;
}

uint64_t sub_100E6E528@<X0>(uint64_t a1@<X0>, size_t *a2@<X8>)
{
  v41 = a2;
  v3 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  __chkstk_darwin(v3 - 8);
  v39 = &v32 - v4;
  v5 = sub_1000BC4D4(&qword_1016B5558, &unk_1013D6A30);
  v40 = *(v5 - 8);
  __chkstk_darwin(v5);
  v38 = &v32 - v6;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v36 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v32 - v12;
  __chkstk_darwin(v11);
  v15 = &v32 - v14;
  v16 = sub_1000BC4D4(&qword_1016B5560, &unk_1013D73F0);
  __chkstk_darwin(v16 - 8);
  v37 = (&v32 - v17);
  v18 = *(*(a1 + 128) + 168);
  if (qword_101694F30 != -1)
  {
    swift_once();
  }

  v19 = sub_1000076D4(v7, qword_10177C1D0);
  v20 = *(v8 + 16);
  v35 = v15;
  v20(v15, v19, v7);
  v20(v13, v15, v7);
  v21 = *(v5 + 40);
  v34 = v21;
  v32 = type metadata accessor for DirectorySequence();
  v22 = *(*(v32 - 8) + 56);
  v33 = v5;
  v23 = &v38[v21];
  v24 = v38;
  v22(v23, 1, 1, v32);
  v20(v24, v13, v7);
  *(v24 + *(v5 + 36)) = v18;
  v20(v36, v13, v7);

  v25 = v39;
  DirectorySequence.init(at:includingPropertiesForKeys:options:)();
  v26 = *(v8 + 8);
  v26(v13, v7);
  v26(v35, v7);
  v22(v25, 0, 1, v32);
  sub_10062BF70(v25, v24 + v34);
  v27 = *(v40 + 56);
  v28 = v37;
  v29 = v33;
  v27(v37, 1, 1, v33);
  sub_10000B3A8(v28, &qword_1016B5568, &unk_1013D6A40);
  sub_1000D2AD8(v24, v28, &qword_1016B5558, &unk_1013D6A30);
  v27(v28, 0, 1, v29);
  v30 = sub_100B36A6C(v28);
  result = sub_10000B3A8(v28, &qword_1016B5560, &unk_1013D73F0);
  *v41 = v30;
  return result;
}