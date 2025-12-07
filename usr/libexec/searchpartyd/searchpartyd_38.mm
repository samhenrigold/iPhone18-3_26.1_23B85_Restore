void sub_10044137C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v3 + 48);
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

  v23[3] = &type metadata for BACharacteristicIdentifier.FindMy;
  v23[4] = &off_10162CAD0;
  LOBYTE(v23[0]) = 3;
  v13 = swift_beginAccess();
  v14 = *(a1 + 40);
  __chkstk_darwin(v13);
  *&v22[-16] = v23;

  v15 = sub_1012BBE10(sub_10038C458, &v22[-32], v14);

  sub_100007BAC(v23);
  if (v15)
  {
    v16 = sub_100437674();
    v17 = type metadata accessor for Transaction();
    __chkstk_darwin(v17);
    *&v22[-48] = v16;
    *&v22[-40] = a2;
    *&v22[-32] = v15;
    *&v22[-24] = a3;
    *&v22[-16] = v3;
    *&v22[-8] = a1;
    static Transaction.named<A>(_:with:)();

    return;
  }

  if (qword_1016946F0 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v18 = type metadata accessor for Logger();
  sub_1000076D4(v18, qword_10177AD08);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Missing Paired Owner Characteristic!", v21, 2u);
  }
}

uint64_t sub_10044168C(void *a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    _StringGuts.grow(_:)(41);

    if (a2)
    {
      v6 = 1702195828;
    }

    else
    {
      v6 = 0x65736C6166;
    }

    if (a2)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    v8 = v7;
    String.append(_:)(*&v6);

    v9._object = 0x8000000101354F70;
    v9._countAndFlagsBits = 0xD000000000000020;
    String.append(_:)(v9);
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000076D4(v10, qword_10177AD08);
    sub_100A245E8(0x203F64656B6146, 0xE700000000000000);

    if (a2)
    {
      sub_100443154(a1, _swiftEmptyArrayStorage);
    }

    else
    {
      sub_1004382C4(a1);
    }
  }

  return result;
}

uint64_t sub_100441814(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(type metadata accessor for StandaloneBeacon(0) - 8);
  v2[4] = v3;
  v2[5] = *(v3 + 64);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for MACAddress();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A04D0, &qword_1013A34A8);
  v2[11] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[12] = v5;
  *v5 = v2;
  v5[1] = sub_1004419A8;

  return daemon.getter();
}

uint64_t sub_1004419A8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 104) = a1;

  v3 = swift_task_alloc();
  *(v2 + 112) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for StandaloneBeaconService();
  v6 = sub_100019D54(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100019D54(&qword_10169F450, type metadata accessor for StandaloneBeaconService, &unk_1013E3258);
  *v3 = v9;
  v3[1] = sub_100441B84;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100441B84(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = sub_100442420;
  }

  else
  {

    v4 = sub_100441CA0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100441CA0()
{
  v1 = v0[11];
  sub_100447E44(v0[3], v1);
  v2 = sub_1000BC4D4(&qword_1016A04D8, &qword_1013A34B0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v0[11], &qword_1016A04D0, &qword_1013A34A8);
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v3 = v0[3];
    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177AD08);
    v5 = v3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[3];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v8;
      *v10 = v8;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v6, v7, "Unable to get MAC address for %@", v9, 0xCu);
      sub_10000B3A8(v10, &qword_10169BB30, &unk_10138B3C0);
    }

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[15];
    v15 = v0[10];
    v16 = v0[11];
    v0[17] = *v16;
    v17 = *(v2 + 48);
    v18 = type metadata accessor for Device();
    (*(*(v18 - 8) + 8))(&v16[v17], v18);
    sub_100A22DF0(v15);

    return _swift_task_switch(sub_100441F5C, v14, 0);
  }
}

uint64_t sub_100441F5C()
{
  v1 = v0[16];
  sub_100F85A84(v0[10], *(v0[15] + 128));
  v0[18] = v1;
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  if (v1)
  {
    (*(v3 + 8))(v0[10], v0[8]);
    v5 = sub_100442254;
  }

  else
  {
    v0[19] = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

    (*(v3 + 8))(v2, v4);
    v5 = sub_100442040;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100442040()
{
  v11 = v0;
  v1 = v0[18];
  v10 = v0[19];

  sub_10046080C(&v10);
  if (v1)
  {
  }

  else
  {

    v3 = v0[17];
    if (*(v10 + 16))
    {
      v5 = v0[6];
      v4 = v0[7];
      v6 = v0[2];
      v7 = *(v0[4] + 80);
      sub_10046A814(v10 + ((v7 + 32) & ~v7), v4, type metadata accessor for StandaloneBeacon);

      sub_10046A814(v4, v5, type metadata accessor for StandaloneBeacon);
      v8 = swift_allocObject();
      *(v8 + 16) = v6;
      sub_10046B7F0(v5, v8 + ((v7 + 24) & ~v7), type metadata accessor for StandaloneBeacon);

      sub_100442F0C(v4, sub_10046A87C, v8);

      sub_10046B858(v4, type metadata accessor for StandaloneBeacon);
    }

    else
    {
    }

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_100442254()
{
  v1 = *(v0 + 136);

  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177AD08);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = _convertErrorToNSError(_:)();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error in shouldForcePair: %@", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100442420()
{

  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177AD08);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = _convertErrorToNSError(_:)();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error in shouldForcePair: %@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

void sub_1004425E4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  v27 = v11;
  v28 = v12;
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StandaloneBeacon(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15 - 8);
  if (a2)
  {
    aBlock[0] = a1;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    swift_willThrowTypedImpl();
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000076D4(v18, qword_10177AD08);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    sub_1000BB584(a1, 1);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = _convertErrorToNSError(_:)();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "forcePair error: %@", v21, 0xCu);
      sub_10000B3A8(v22, &qword_10169BB30, &unk_10138B3C0);

      sub_1000BB584(a1, 1);
    }

    else
    {

      sub_1000BB584(a1, 1);
    }
  }

  else if (a1)
  {
    sub_10046A814(a4, &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StandaloneBeacon);
    v24 = (*(v16 + 80) + 24) & ~*(v16 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = a3;
    sub_10046B7F0(&v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for StandaloneBeacon);
    aBlock[4] = sub_10046AC40;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_10161DBF8;
    v26 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v30 = _swiftEmptyArrayStorage;
    sub_100019D54(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v26);
    (*(v29 + 8))(v10, v8);
    (*(v28 + 8))(v14, v27);
  }
}

uint64_t sub_100442B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = a2;
  v27 = a3;
  v25 = *v3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v29 = *(v9 - 8);
  v30 = v9;
  __chkstk_darwin(v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StandaloneBeacon(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v3[6];
  sub_10046A814(a1, v15, type metadata accessor for StandaloneBeacon);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  sub_10046B7F0(v15, v20 + v16, type metadata accessor for StandaloneBeacon);
  *(v20 + v17) = v4;
  v21 = (v20 + v18);
  v22 = v27;
  *v21 = v26;
  v21[1] = v22;
  *(v20 + v19) = v25;
  aBlock[4] = sub_10046ACBC;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10161DC48;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_100019D54(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v31 + 8))(v8, v6);
  (*(v29 + 8))(v11, v30);
}

uint64_t sub_100442F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v6 = *v3;
  v7 = type metadata accessor for StandaloneBeacon(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_10046A814(a1, v10, type metadata accessor for StandaloneBeacon);
  v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v16 = (v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  sub_10046B7F0(v10, v18 + v15, type metadata accessor for StandaloneBeacon);
  *(v18 + v16) = v3;
  v19 = (v18 + v17);
  *v19 = v22;
  v19[1] = a3;
  *(v18 + ((v17 + 23) & 0xFFFFFFFFFFFFFFF8)) = v6;

  sub_10025EDD4(0, 0, v13, &unk_1013A3688, v18);
}

uint64_t sub_100443154(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v52 = a2;
  v5 = type metadata accessor for MACAddress();
  v50 = *(v5 - 8);
  v51 = v5;
  __chkstk_darwin(v5);
  v49 = &v43[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1000BC4D4(&qword_1016A04D0, &qword_1013A34A8);
  __chkstk_darwin(v7 - 8);
  v9 = &v43[-v8];
  v54 = type metadata accessor for Device();
  v10 = *(v54 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v54);
  v13 = &v43[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v53 = &v43[-v14];
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v43[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *(v3 + 48);
  *v18 = v19;
  (*(v16 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v15);
  v20 = v19;
  v21 = _dispatchPreconditionTest(_:)();
  v23 = *(v16 + 8);
  v22 = v16 + 8;
  v23(v18, v15);
  if ((v21 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_5;
  }

  sub_100447E44(a1, v9);
  v24 = sub_1000BC4D4(&qword_1016A04D8, &qword_1013A34B0);
  v22 = v3;
  if ((*(*(v24 - 8) + 48))(v9, 1, v24) == 1)
  {
    sub_10000B3A8(v9, &qword_1016A04D0, &qword_1013A34A8);
    static Device.emptyDevice.getter();
    sub_1004490E8(a1, v13, 0, 0, _swiftEmptyArrayStorage);
    v25 = &v43[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v3 = v54;
    return (*(v10 + 8))(v25, v3);
  }

  v21 = *v9;
  v26 = v9 + *(v24 + 48);
  v3 = v54;
  v47 = *(v10 + 32);
  v48 = v10 + 32;
  v47(v53, v26, v54);
  if (qword_1016946F0 != -1)
  {
    goto LABEL_10;
  }

LABEL_5:
  v27 = type metadata accessor for Logger();
  sub_1000076D4(v27, qword_10177AD08);
  v28 = v21;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v46 = v22;
    v32 = v31;
    v45 = swift_slowAlloc();
    v55 = v45;
    *v32 = 136446210;
    v33 = v49;
    sub_100A22DF0(v49);
    sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v34 = v51;
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v30;
    v37 = v36;
    (*(v50 + 8))(v33, v34);
    v38 = sub_1000136BC(v35, v37, &v55);

    *(v32 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v29, v44, "Unpairing LE with classic MAC address: %{public}s", v32, 0xCu);
    sub_100007BAC(v45);

    v22 = v46;
    v3 = v54;
  }

  type metadata accessor for Transaction();
  v25 = v53;
  (*(v10 + 16))(v13, v53, v3);
  v39 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = v28;
  *(v40 + 24) = v22;
  v47((v40 + v39), v13, v3);
  *(v40 + ((v11 + v39 + 7) & 0xFFFFFFFFFFFFFFF8)) = v52;
  v41 = v28;

  static Transaction.asyncTask(name:block:)();

  return (*(v10 + 8))(v25, v3);
}

uint64_t sub_100443754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for MACAddress();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = swift_task_alloc();
  v4[10] = v6;
  *v6 = v4;
  v6[1] = sub_100443848;

  return daemon.getter();
}

uint64_t sub_100443848(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 88) = a1;

  v3 = swift_task_alloc();
  *(v2 + 96) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for StandaloneBeaconService();
  v6 = sub_100019D54(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100019D54(&qword_10169F450, type metadata accessor for StandaloneBeaconService, &unk_1013E3258);
  *v3 = v9;
  v3[1] = sub_100443A24;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100443A24(uint64_t a1)
{
  *(*v2 + 104) = a1;

  if (v1)
  {

    v3 = sub_100443B74;
  }

  else
  {

    v3 = sub_100443C90;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100443B74()
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

uint64_t sub_100443C90(__n128 a1)
{
  sub_100A22DF0(*(v1 + 72));
  v2 = swift_task_alloc();
  *(v1 + 112) = v2;
  *v2 = v1;
  v2[1] = sub_100443D48;
  v3 = *(v1 + 72);

  return sub_10132CF38(v3);
}

uint64_t sub_100443D48()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  (*(v2[8] + 8))(v2[9], v2[7]);
  if (v0)
  {
    v3 = sub_100443F98;
  }

  else
  {
    v3 = sub_100443EB0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100443EB0()
{
  type metadata accessor for Transaction();
  v1 = swift_task_alloc();
  v2 = *(v0 + 40);
  *(v1 + 16) = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  *(v1 + 32) = v2;
  static Transaction.named<A>(_:with:)();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100443F98()
{
  v16 = v0;
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177AD08);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 120);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446210;
    *(v0 + 16) = v5;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000136BC(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unable to remove standalone beacons due to %{public}s.", v6, 0xCu);
    sub_100007BAC(v7);
  }

  else
  {
  }

  type metadata accessor for Transaction();
  v11 = swift_task_alloc();
  v12 = *(v0 + 40);
  *(v11 + 16) = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  *(v11 + 32) = v12;
  static Transaction.named<A>(_:with:)();

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1004441E8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v22 = a3;
  v28 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v28 - 8);
  __chkstk_darwin(v28);
  v26 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for DispatchQoS();
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v23 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Device();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v25 = *(a2 + 48);
  (*(v11 + 16))(&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v10);
  v13 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a1;
  *(v14 + 3) = a2;
  v15 = v22;
  *(v14 + 4) = v22;
  (*(v11 + 32))(&v14[v13], &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  *&v14[(v12 + v13 + 7) & 0xFFFFFFFFFFFFFFF8] = v24;
  aBlock[4] = sub_100468D34;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10161D680;
  v16 = _Block_copy(aBlock);

  v17 = v15;

  v18 = v23;
  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_100019D54(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v19 = v26;
  v20 = v28;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v30 + 8))(v19, v20);
  (*(v27 + 8))(v18, v29);
}

void sub_1004445E0(uint64_t (*a1)(uint64_t a1))
{
  v2 = v1;
  v363 = a1;
  v3 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v3 - 8);
  v334 = &v306 - v4;
  v337 = sub_1000BC4D4(&qword_1016A04E0, &qword_1013A34C0);
  v336 = *(v337 - 8);
  __chkstk_darwin(v337);
  v335 = &v306 - v5;
  v326 = type metadata accessor for StableIdentifier(0);
  v6 = __chkstk_darwin(v326);
  v324 = &v306 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v323 = &v306 - v8;
  v322 = type metadata accessor for OwnedBeaconRecord(0);
  v319 = *(v322 - 1);
  __chkstk_darwin(v322);
  v332 = &v306 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v351 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
  v10 = __chkstk_darwin(v351);
  v328 = (&v306 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __chkstk_darwin(v10);
  v329 = &v306 - v13;
  v14 = __chkstk_darwin(v12);
  v325 = (&v306 - v15);
  v16 = __chkstk_darwin(v14);
  v320 = (&v306 - v17);
  v18 = __chkstk_darwin(v16);
  v349 = (&v306 - v19);
  v20 = __chkstk_darwin(v18);
  v350 = &v306 - v21;
  v22 = __chkstk_darwin(v20);
  v341 = (&v306 - v23);
  __chkstk_darwin(v22);
  v327 = &v306 - v24;
  v342 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v340 = *(v342 - 8);
  v25 = __chkstk_darwin(v342);
  v331 = &v306 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v352 = &v306 - v28;
  __chkstk_darwin(v27);
  v330 = &v306 - v29;
  v30 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v30 - 8);
  v345 = &v306 - v31;
  v348 = type metadata accessor for OwnedBeaconGroup(0);
  v344 = *(v348 - 1);
  v32 = __chkstk_darwin(v348);
  v338 = &v306 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v343 = &v306 - v34;
  v35 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v36 = __chkstk_darwin(v35 - 8);
  v339 = &v306 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v346 = &v306 - v39;
  __chkstk_darwin(v38);
  v41 = &v306 - v40;
  v42 = type metadata accessor for MACAddress();
  v360 = *(v42 - 8);
  v361 = v42;
  v43 = *(v360 + 64);
  v44 = __chkstk_darwin(v42);
  v318 = &v306 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __chkstk_darwin(v44);
  v321 = &v306 - v46;
  v47 = __chkstk_darwin(v45);
  v347 = &v306 - v48;
  v49 = __chkstk_darwin(v47);
  v51 = &v306 - v50;
  v52 = __chkstk_darwin(v49);
  v353 = &v306 - v53;
  __chkstk_darwin(v52);
  v55 = &v306 - v54;
  v362 = type metadata accessor for Date();
  v356 = *(v362 - 8);
  v56 = __chkstk_darwin(v362);
  v354 = &v306 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v355 = &v306 - v58;
  v59 = sub_1000BC4D4(&qword_1016A04D0, &qword_1013A34A8);
  __chkstk_darwin(v59 - 8);
  v61 = (&v306 - v60);
  v62 = type metadata accessor for Device();
  v63 = *(v62 - 8);
  v358 = v62;
  v359 = v63;
  __chkstk_darwin(v62);
  v357 = &v306 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for DispatchPredicate();
  v66 = *(v65 - 8);
  __chkstk_darwin(v65);
  v68 = (&v306 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = *(v2 + 48);
  *v68 = v69;
  (*(v66 + 104))(v68, enum case for DispatchPredicate.onQueue(_:), v65);
  v333 = v69;
  v70 = _dispatchPreconditionTest(_:)();
  (*(v66 + 8))(v68, v65);
  if ((v70 & 1) == 0)
  {
    __break(1u);
    goto LABEL_103;
  }

  if ((sub_10042D9A8() & 1) == 0)
  {
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v85 = type metadata accessor for Logger();
    sub_1000076D4(v85, qword_10177AD08);
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v86, v87))
    {
      goto LABEL_18;
    }

    v88 = swift_slowAlloc();
    *v88 = 0;
    _os_log_impl(&_mh_execute_header, v86, v87, "Pairing retry is NOT allowed on this device!", v88, 2u);
    goto LABEL_17;
  }

  sub_1000BC4D4(&unk_1016A6140, &unk_1013D4EB0);
  v71 = unsafeFromAsyncTask<A>(_:)();
  v70 = v364[0];
  if (!v364[0])
  {
    sub_100101B58();
    swift_allocError();
    *v89 = 16;
    *(v89 + 8) = 0u;
    *(v89 + 24) = 0u;
    *(v89 + 40) = 11;
    swift_willThrow();

    if (qword_1016946F0 == -1)
    {
LABEL_15:
      v90 = type metadata accessor for Logger();
      sub_1000076D4(v90, qword_10177AD08);
      v86 = Logger.logObject.getter();
      v91 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v86, v91))
      {
LABEL_18:

        return;
      }

      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v364[0] = v93;
      *v92 = 136315138;
      *(v92 + 4) = sub_1000136BC(0xD00000000000001ALL, 0x8000000101354E70, v364);
      _os_log_impl(&_mh_execute_header, v86, v91, "%s Missing central manager service!", v92, 0xCu);
      sub_100007BAC(v93);

LABEL_17:

      goto LABEL_18;
    }

LABEL_108:
    swift_once();
    goto LABEL_15;
  }

  if (*(v364[0] + OBJC_IVAR____TtC12searchpartyd14CentralManager_isSharedPairingAgent) != 1)
  {
    __break(1u);
    goto LABEL_108;
  }

  v317 = v2;
  __chkstk_darwin(v71);
  *(&v306 - 2) = v70;
  type metadata accessor for SharedPairingAgent();
  v72 = 0;
  Lock.callAsFunction<A>(_:)();
  v74 = v363;
  v73 = v364[0];
  v75 = [*(v364[0] + OBJC_IVAR____TtC12searchpartyd18SharedPairingAgent_underlyingObject) isPeerPaired:*(v363 + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject)];

  if (v75)
  {
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    sub_1000076D4(v77, qword_10177AD08);
    v78 = v74;
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v79, v80))
    {
      goto LABEL_37;
    }

    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v364[0] = v83;
    *v81 = 136315394;
    *(v81 + 4) = sub_1000136BC(0xD00000000000001ALL, 0x8000000101354E70, v364);
    *(v81 + 12) = 2112;
    *(v81 + 14) = v78;
    *v82 = v78;
    v84 = v78;
    _os_log_impl(&_mh_execute_header, v79, v80, "%s Ignoring connected, already paired peripheral: %@", v81, 0x16u);
    sub_10000B3A8(v82, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v83);

    goto LABEL_24;
  }

  v94 = v317;
  __chkstk_darwin(v76);
  *(&v306 - 2) = v94;
  *(&v306 - 1) = v95;
  QueueSynchronizer.conditionalSync<A>(_:)();
  if (v364[0])
  {
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v96 = type metadata accessor for Logger();
    sub_1000076D4(v96, qword_10177AD08);
    v97 = v363;
    v79 = Logger.logObject.getter();
    v98 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v79, v98))
    {
      goto LABEL_37;
    }

    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    *v99 = 138412290;
    *(v99 + 4) = v97;
    *v100 = v97;
    v101 = v97;
    _os_log_impl(&_mh_execute_header, v79, v98, "Pairing in progress. Not retrying %@", v99, 0xCu);
    sub_10000B3A8(v100, &qword_10169BB30, &unk_10138B3C0);

LABEL_24:

LABEL_37:

    return;
  }

  v316 = sub_100437674();
  OS_dispatch_queue.sync<A>(execute:)();
  if (v364[0])
  {
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v102 = type metadata accessor for Logger();
    sub_1000076D4(v102, qword_10177AD08);
    v79 = Logger.logObject.getter();
    v103 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v79, v103))
    {
      goto LABEL_36;
    }

    v104 = swift_slowAlloc();
    *v104 = 0;
    v105 = "Handling Privacy Alert. Not retrying";
LABEL_35:
    _os_log_impl(&_mh_execute_header, v79, v103, v105, v104, 2u);

LABEL_36:

    goto LABEL_37;
  }

  v106 = v94;
  sub_100447E44(v363, v61);
  v107 = sub_1000BC4D4(&qword_1016A04D8, &qword_1013A34B0);
  if ((*(*(v107 - 8) + 48))(v61, 1, v107) == 1)
  {
    sub_10000B3A8(v61, &qword_1016A04D0, &qword_1013A34A8);
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v108 = type metadata accessor for Logger();
    sub_1000076D4(v108, qword_10177AD08);
    v79 = Logger.logObject.getter();
    v103 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v79, v103))
    {
      goto LABEL_36;
    }

    v104 = swift_slowAlloc();
    *v104 = 0;
    v105 = "Unable to sanitize MAC address for retry pairing";
    goto LABEL_35;
  }

  v109 = *v61;
  (*(v359 + 32))(v357, v61 + *(v107 + 48), v358);
  sub_100A22DF0(v55);
  v110 = sub_10042CB44();
  if (*(v110 + 16) && (v111 = sub_1007723C0(v55), (v112 & 1) != 0))
  {
    v113 = v356;
    v114 = *(v110 + 56) + *(v356 + 72) * v111;
    v115 = *(v356 + 16);
    v310 = 0;
    v116 = v109;
    v117 = v362;
    v115(v41, v114, v362);
    v118 = v55;
    v119 = v113;
    v315 = *(v360 + 8);
    v315(v118, v361);

    v311 = *(v113 + 56);
    v311(v41, 0, 1, v117);
    v120 = *(v113 + 32);
    v121 = v355;
    v122 = v117;
    v109 = v116;
    v72 = v310;
    v120(v355, v41, v122);
  }

  else
  {

    v315 = *(v360 + 8);
    v315(v55, v361);
    v119 = v356;
    v123 = v362;
    v311 = *(v356 + 56);
    v311(v41, 1, 1, v362);
    v121 = v355;
    static Date.distantPast.getter();
    if ((*(v119 + 48))(v41, 1, v123) != 1)
    {
      sub_10000B3A8(v41, &unk_101696900, &unk_10138B1E0);
    }
  }

  v124 = v354;
  static Date.trustedNow.getter(v354);
  Date.timeIntervalSince(_:)();
  v126 = v125;
  v127 = *(v119 + 8);
  v314 = v119 + 8;
  v313 = v127;
  v127(v124, v362);
  v128 = *(v106 + 176);
  if (v128 >= v126)
  {
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v141 = type metadata accessor for Logger();
    sub_1000076D4(v141, qword_10177AD08);

    v142 = Logger.logObject.getter();
    v143 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v142, v143))
    {
      v144 = swift_slowAlloc();
      *v144 = 134218240;
      *(v144 + 4) = v126;
      *(v144 + 12) = 2048;
      *(v144 + 14) = v128;
      _os_log_impl(&_mh_execute_header, v142, v143, "Time since last attempt %f. Threshold %f. Not retrying.", v144, 0x16u);
    }

    v313(v121, v362);
    goto LABEL_80;
  }

  if (v126 > 86400.0)
  {
    v129 = v72;
    v130 = v109;
    v131 = v353;
    sub_100A22DF0(v353);
    v132 = sub_10042D2E0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v364[0] = v132;
    sub_100FFD49C(0, v131, isUniquelyReferenced_nonNull_native);
    v134 = v131;
    v109 = v130;
    v72 = v129;
    v315(v134, v361);
    sub_10042D744(v364[0]);
  }

  sub_100A22DF0(v51);
  v135 = sub_10042D2E0();
  v136 = *(v135 + 16);
  v312 = v109;
  if (v136 && (v137 = sub_1007723C0(v51), (v138 & 1) != 0))
  {
    v139 = v121;
    v140 = *(*(v135 + 56) + 8 * v137);
    v315(v51, v361);
  }

  else
  {
    v139 = v121;

    v315(v51, v361);
    v140 = 0;
  }

  v145 = *(v106 + 184);
  if (!__OFSUB__(v145, v140))
  {
    if (v145 - v140 >= 1)
    {
      if (qword_1016946F0 == -1)
      {
        goto LABEL_58;
      }

      goto LABEL_130;
    }

    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v156 = type metadata accessor for Logger();
    sub_1000076D4(v156, qword_10177AD08);

    v157 = Logger.logObject.getter();
    v158 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v157, v158))
    {
      v159 = swift_slowAlloc();
      *v159 = 134218240;
      *(v159 + 4) = v145;

      *(v159 + 12) = 2048;
      *(v159 + 14) = v140;
      _os_log_impl(&_mh_execute_header, v157, v158, "Exceeded number of retries per day %ld. Attempted: %ld", v159, 0x16u);
    }

    else
    {
    }

    v313(v139, v362);
LABEL_80:
    (*(v359 + 8))(v357, v358);
    return;
  }

  __break(1u);
LABEL_130:
  swift_once();
LABEL_58:
  v309 = v140;
  v146 = type metadata accessor for Logger();
  v147 = sub_1000076D4(v146, qword_10177AD08);
  swift_retain_n();
  v148 = v363;
  v308 = v147;
  v149 = v148;
  v150 = Logger.logObject.getter();
  v151 = static os_log_type_t.default.getter();

  v152 = os_log_type_enabled(v150, v151);
  v307 = v149;
  if (v152)
  {
    v153 = swift_slowAlloc();
    v154 = swift_slowAlloc();
    *v153 = 138412802;
    *(v153 + 4) = v149;
    *v154 = v149;
    *(v153 + 12) = 2048;
    *(v153 + 14) = v309;
    *(v153 + 22) = 2048;
    v155 = v149;

    *(v153 + 24) = v145;

    _os_log_impl(&_mh_execute_header, v150, v151, "Retry pairing for peripheral %@. Attempted %ld. Daily limit %ld", v153, 0x20u);
    sub_10000B3A8(v154, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v160 = v353;
  v161 = v347;
  v162 = v346;
  v310 = v72;
  sub_100A22DF0(v347);
  static Date.trustedNow.getter(v162);
  v163 = v356;
  v164 = v362;
  v311(v162, 0, 1, v362);
  v364[0] = sub_10042CB44();
  if ((*(v163 + 48))(v162, 1, v164) == 1)
  {
    sub_10000B3A8(v162, &unk_101696900, &unk_10138B1E0);
    v165 = v339;
    sub_1001E5198(v339);
    sub_10000B3A8(v165, &unk_101696900, &unk_10138B1E0);
    v315(v161, v361);
    v166 = v364[0];
  }

  else
  {
    v167 = v354;
    (*(v163 + 32))(v354, v162, v362);
    v168 = v364[0];
    v169 = swift_isUniquelyReferenced_nonNull_native();
    v365 = v168;
    sub_100FFD238(v167, v161, v169);
    v315(v161, v361);
    v166 = v365;
  }

  sub_10042D008(v166);
  sub_100A22DF0(v160);
  v170 = v309 + 1;
  if (__OFADD__(v309, 1))
  {
    __break(1u);
LABEL_132:

LABEL_134:
    v261 = v320;
    sub_1000D2AD8(v329, v320, &qword_1016A4190, &unk_1013A3550);
    v263 = *v261;
    v262 = v261[1];
    sub_10046B858(v261 + *(v351 + 48), type metadata accessor for OwnedBeaconGroup.PairingState);
    v350 = v263;
    v351 = v262;
    v352 = sub_100AA372C(v263, v262);
    v264 = *(v352 + 16);
    if (v264)
    {
      v265 = v352 + ((*(v319 + 80) + 32) & ~*(v319 + 80));
      v266 = v322[6];
      v356 = v324 + 8;
      v267 = _swiftEmptyArrayStorage;
      v363 = *(v319 + 72);
      while (1)
      {
        v268 = v332;
        sub_10046A814(v265, v332, type metadata accessor for OwnedBeaconRecord);
        v269 = v268 + v266;
        v270 = v323;
        sub_10046A814(v269, v323, type metadata accessor for StableIdentifier);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        sub_10046B858(v270, type metadata accessor for StableIdentifier);
        if (EnumCaseMultiPayload == 1)
        {
          goto LABEL_144;
        }

        sub_10046A814(v332 + v266, v324, type metadata accessor for StableIdentifier);
        v272 = swift_getEnumCaseMultiPayload();
        if (v272 == 2)
        {
          break;
        }

        if (v272 == 3)
        {
          sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

LABEL_143:

          v273 = type metadata accessor for UUID();
          (*(*(v273 - 8) + 8))(v324, v273);
LABEL_144:
          v274 = v332;
          v275 = sub_100314604(*(v332 + v322[16]), *(v332 + v322[17]));
          v277 = v276;
          sub_10046B858(v274, type metadata accessor for OwnedBeaconRecord);
          if (v277 >> 60 != 15)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v267 = sub_100A5CCC0(0, *(v267 + 2) + 1, 1, v267);
            }

            v279 = *(v267 + 2);
            v278 = *(v267 + 3);
            if (v279 >= v278 >> 1)
            {
              v267 = sub_100A5CCC0((v278 > 1), v279 + 1, 1, v267);
            }

            *(v267 + 2) = v279 + 1;
            v280 = &v267[16 * v279];
            *(v280 + 4) = v275;
            *(v280 + 5) = v277;
          }

          goto LABEL_137;
        }

        sub_10046B858(v324, type metadata accessor for StableIdentifier);
        sub_10046B858(v332, type metadata accessor for OwnedBeaconRecord);
LABEL_137:
        v265 += v363;
        if (!--v264)
        {

          goto LABEL_152;
        }
      }

      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

      goto LABEL_143;
    }

    v267 = _swiftEmptyArrayStorage;
LABEL_152:
    if (*(v267 + 2))
    {
      v281 = *(v267 + 5);
      v363 = *(v267 + 4);
      v356 = v281;
      sub_100017D5C(v363, v281);

      v282 = swift_allocObject();
      v283 = v307;
      v282[2] = v317;
      v282[3] = v283;
      v282[4] = v354;

      v284 = v283;

      unsafeFromAsyncTask<A>(_:)();

      LODWORD(v354) = LOBYTE(v364[0]);
      My = type metadata accessor for Feature.FindMy();
      v364[3] = My;
      v364[4] = sub_100019D54(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
      v286 = sub_1000280DC(v364);
      (*(*(My - 8) + 104))(v286, enum case for Feature.FindMy.smilingWheel(_:), My);
      LOBYTE(My) = isFeatureEnabled(_:)();
      sub_100007BAC(v364);
      if ((My & 1) != 0 && sub_100DE6630(v363, v356))
      {
        v287 = Logger.logObject.getter();
        v288 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v287, v288))
        {
          v289 = swift_slowAlloc();
          *v289 = 0;
          _os_log_impl(&_mh_execute_header, v287, v288, "Starting AirPods LE pairing retry using FindMyBluetooth", v289, 2u);
        }

        v290 = v343 + v348[7];
        v291 = Logger.logObject.getter();
        v292 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v291, v292))
        {
          v293 = swift_slowAlloc();
          *v293 = 0;
          _os_log_impl(&_mh_execute_header, v291, v292, "Starting AirPods LE force pair using FindMyBluetooth", v293, 2u);
        }

        v352 = type metadata accessor for Transaction();
        v294 = v361;
        v296 = v360 + 16;
        v295 = *(v360 + 16);
        v297 = v353;
        v295(v353, v290, v361);
        v298 = v318;
        v295(v318, v321, v294);
        v299 = *(v296 + 64);
        v300 = (v299 + 24) & ~v299;
        v301 = (v43 + v299 + v300) & ~v299;
        v302 = swift_allocObject();
        *(v302 + 16) = v317;
        v303 = v302 + v300;
        v304 = v347;
        (v347)(v303, v297, v294);
        (v304)(v302 + v301, v298, v294);
        *(v302 + v301 + v43) = v354;
        v305 = v302 + ((v301 + v43) & 0xFFFFFFFFFFFFFFF8);
        *(v305 + 8) = 0;
        *(v305 + 16) = 0;

        static Transaction.asyncTask(name:block:)();

        sub_100016590(v350, v351);
        sub_100016590(v363, v356);

        v315(v321, v294);
        goto LABEL_106;
      }

      sub_100016590(v350, v351);
      sub_100016590(v363, v356);
LABEL_127:
      v315(v321, v361);
    }

    else
    {
      v315(v321, v361);
      sub_100016590(v350, v351);
    }

LABEL_128:
    v61 = v312;
    v160 = v353;
LABEL_100:
    v221 = sub_100436F60(v307);
    if (v221)
    {
      v222 = v221;
      v223 = sub_100A22DF0(v160);
      __chkstk_darwin(v223);
      *(&v306 - 4) = v222;
      *(&v306 - 3) = v160;
      *(&v306 - 1) = xmmword_10138BBF0;
      v363 = v222;
      sub_1000BC4D4(&qword_1016A04E8, &qword_1013A34C8);
      OS_dispatch_queue.sync<A>(execute:)();
      v224 = v364[0];
      v315(v160, v361);
      v364[0] = v224;
      v225 = v333;
      v365 = v333;
      v226 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      v227 = v334;
      (*(*(v226 - 8) + 56))(v334, 1, 1, v226);
      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      sub_1000041A4(&qword_1016A04F0, &qword_1016A04E8, &qword_1013A34C8, &protocol conformance descriptor for AnyPublisher<A, B>);
      sub_1004682F0();
      v228 = v225;
      v229 = v335;
      Publisher.receive<A>(on:options:)();
      sub_10000B3A8(v227, &unk_1016B0FE0, &unk_101391980);

      v230 = swift_allocObject();
      swift_weakInit();
      v231 = swift_allocObject();
      *(v231 + 16) = sub_1004688A0;
      *(v231 + 24) = v230;
      sub_1000041A4(&qword_1016A04F8, &qword_1016A04E0, &qword_1013A34C0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
      v232 = v337;
      Publisher<>.sink(receiveValue:)();

      (*(v336 + 8))(v229, v232);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

LABEL_106:
      v313(v355, v362);
      (*(v359 + 8))(v357, v358);
      sub_10046B858(v343, type metadata accessor for OwnedBeaconGroup);
      return;
    }

LABEL_103:
    v233 = Logger.logObject.getter();
    v234 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v233, v234))
    {
      v235 = swift_slowAlloc();
      *v235 = 0;
      _os_log_impl(&_mh_execute_header, v233, v234, "Unable to create a new pairing manager to handle retry!", v235, 2u);
    }

    goto LABEL_106;
  }

  v171 = sub_10042D2E0();
  v172 = swift_isUniquelyReferenced_nonNull_native();
  v364[0] = v171;
  sub_100FFD49C(v170, v160, v172);
  v173 = v361;
  v174 = v360 + 8;
  v175 = v315;
  v315(v160, v361);
  sub_10042D744(v364[0]);
  v176 = *(v106 + 16);
  sub_100A22DF0(v160);
  v177 = v345;
  v354 = v176;
  sub_100AC5D4C(v160, v345);
  v175(v160, v173);
  if ((*(v344 + 48))(v177, 1, v348) == 1)
  {
    sub_10000B3A8(v177, &unk_1016AF8B0, &unk_1013A0700);
    v61 = v312;
LABEL_77:
    v189 = v357;
    sub_1004490E8(v61, v357, 0, 1, _swiftEmptyArrayStorage);

    v313(v355, v362);
    (*(v359 + 8))(v189, v358);
    return;
  }

  v178 = v343;
  sub_10046B7F0(v177, v343, type metadata accessor for OwnedBeaconGroup);
  v179 = sub_10051FCAC();
  v61 = v312;
  if ((v179 & 1) == 0 && (*(v178 + v348[8]) & 1) != 0 || (sub_10051FA1C() & 1) == 0)
  {
    sub_10046B858(v178, type metadata accessor for OwnedBeaconGroup);
    goto LABEL_77;
  }

  v339 = v174;
  v180 = v338;
  sub_10046A814(v178, v338, type metadata accessor for OwnedBeaconGroup);
  v181 = Logger.logObject.getter();
  v182 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v181, v182))
  {
    v183 = swift_slowAlloc();
    v184 = swift_slowAlloc();
    v364[0] = v184;
    *v183 = 136315138;
    v185 = sub_10051F7B0();
    v187 = v186;
    sub_10046B858(v180, type metadata accessor for OwnedBeaconGroup);
    v188 = sub_1000136BC(v185, v187, v364);
    v61 = v312;

    *(v183 + 4) = v188;
    _os_log_impl(&_mh_execute_header, v181, v182, "Retry LE pairing for %s.", v183, 0xCu);
    sub_100007BAC(v184);
    v160 = v353;
  }

  else
  {

    sub_10046B858(v180, type metadata accessor for OwnedBeaconGroup);
  }

  v190 = *(v343 + v348[10]);
  v191 = (v190 + 64);
  v192 = 1 << *(v190 + 32);
  v193 = -1;
  if (v192 < 64)
  {
    v193 = ~(-1 << v192);
  }

  v194 = v193 & *(v190 + 64);
  v344 = v352 + 2;
  v195 = ((v192 + 63) >> 6);
  v356 = v190;

  v196 = 0;
  v346 = v191;
  v347 = v195;
  while (1)
  {
    if (!v194)
    {
      while (1)
      {
        v197 = v196 + 1;
        if (__OFADD__(v196, 1))
        {
          break;
        }

        if (v197 >= v195)
        {

          goto LABEL_100;
        }

        v194 = *&v191[8 * v197];
        ++v196;
        if (v194)
        {
          v196 = v197;
          goto LABEL_92;
        }
      }

      __break(1u);
LABEL_126:

      goto LABEL_127;
    }

LABEL_92:
    v198 = __clz(__rbit64(v194)) | (v196 << 6);
    v199 = *(v356 + 56);
    v200 = (*(v356 + 48) + 16 * v198);
    v201 = *v200;
    v202 = v200[1];
    v345 = *(v340 + 72);
    v203 = v199 + v345 * v198;
    v204 = *(v351 + 48);
    v363 = type metadata accessor for OwnedBeaconGroup.PairingState;
    v205 = v341;
    sub_10046A814(v203, v341 + v204, type metadata accessor for OwnedBeaconGroup.PairingState);
    *v205 = v201;
    v205[1] = v202;
    v206 = v205;
    v207 = v350;
    sub_1000D2AD8(v206, v350, &qword_1016A4190, &unk_1013A3550);
    v208 = v349;
    sub_1000D2A70(v207, v349, &qword_1016A4190, &unk_1013A3550);
    v209 = *v208;
    v210 = v208[1];
    sub_100017D5C(v201, v202);
    sub_100016590(v209, v210);
    v211 = *(v351 + 48);
    sub_10046A814(v208 + v211, v352, v363);
    v212 = swift_getEnumCaseMultiPayload();
    if (v212)
    {
      if (v212 != 1)
      {
        sub_10046B858(v352, type metadata accessor for OwnedBeaconGroup.PairingState);
        sub_10046B858(v349 + v211, type metadata accessor for OwnedBeaconGroup.PairingState);
        v61 = v312;
        v195 = v347;
        goto LABEL_86;
      }

      v213 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
      v214 = v352;
      sub_100006654(*(v352 + v213[16]), *(v352 + v213[16] + 8));
      v215 = *(v344 + v213[24]);
      sub_10000B3A8(v214 + v213[12], &qword_1016A40D0, &unk_10138BE70);
      v216 = type metadata accessor for UUID();
      (*(*(v216 - 8) + 8))(v214, v216);
    }

    else
    {
      v217 = sub_1000BC4D4(&qword_1016A4230, &unk_101391950);
      v215 = *(v344 + *(v217 + 48));
      sub_10000B3A8(v352, &qword_1016A40D0, &unk_10138BE70);
    }

    v61 = v312;
    v195 = v347;
    sub_10046B858(v349 + v211, type metadata accessor for OwnedBeaconGroup.PairingState);
    if (v215 == 2)
    {
      break;
    }

LABEL_86:
    v194 &= v194 - 1;
    sub_10000B3A8(v350, &qword_1016A4190, &unk_1013A3550);
    v160 = v353;
    v191 = v346;
  }

  v218 = v327;
  sub_1000D2AD8(v350, v327, &qword_1016A4190, &unk_1013A3550);
  sub_100016590(*v218, *(v218 + 8));
  v219 = v218 + *(v351 + 48);
  v220 = v330;
  sub_10046B7F0(v219, v330, type metadata accessor for OwnedBeaconGroup.PairingState);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_10046B858(v220, type metadata accessor for OwnedBeaconGroup.PairingState);
    v160 = v353;
    goto LABEL_100;
  }

  if ((*(v360 + 48))(v220, 1, v361) == 1)
  {
    sub_10000B3A8(v330, &qword_1016A40D0, &unk_10138BE70);
    goto LABEL_128;
  }

  v236 = *(v360 + 32);
  v349 = (v360 + 32);
  v347 = v236;
  (v236)(v321, v330, v361);
  v237 = 1 << *(v356 + 32);
  v238 = -1;
  if (v237 < 64)
  {
    v238 = ~(-1 << v237);
  }

  v239 = v238 & *(v356 + 64);
  v352 = v331 + 2;
  v350 = (v237 + 63) >> 6;

  for (i = 0; v239; i = v241)
  {
    v241 = i;
LABEL_118:
    v242 = __clz(__rbit64(v239)) | (v241 << 6);
    v243 = (*(v356 + 48) + 16 * v242);
    v244 = *v243;
    v245 = v243[1];
    v246 = *(v356 + 56) + v242 * v345;
    v247 = *(v351 + 48);
    v363 = type metadata accessor for OwnedBeaconGroup.PairingState;
    v248 = v325;
    sub_10046A814(v246, v325 + v247, type metadata accessor for OwnedBeaconGroup.PairingState);
    *v248 = v244;
    v248[1] = v245;
    v249 = v248;
    v250 = v329;
    sub_1000D2AD8(v249, v329, &qword_1016A4190, &unk_1013A3550);
    v251 = v328;
    sub_1000D2A70(v250, v328, &qword_1016A4190, &unk_1013A3550);
    v252 = *v251;
    v253 = v251[1];
    sub_100017D5C(v244, v245);
    sub_100016590(v252, v253);
    v254 = *(v351 + 48);
    sub_10046A814(v251 + v254, v331, v363);
    v255 = swift_getEnumCaseMultiPayload();
    if (v255)
    {
      if (v255 != 1)
      {

        sub_10046B858(v331, type metadata accessor for OwnedBeaconGroup.PairingState);
        sub_10046B858(v328 + v254, type metadata accessor for OwnedBeaconGroup.PairingState);
        goto LABEL_134;
      }

      v256 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
      v257 = v331;
      sub_100006654(*(v331 + v256[16]), *(v331 + v256[16] + 8));
      v258 = *(v352 + v256[24]);
      sub_10000B3A8(v257 + v256[12], &qword_1016A40D0, &unk_10138BE70);
      v259 = type metadata accessor for UUID();
      (*(*(v259 - 8) + 8))(v257, v259);
    }

    else
    {
      v260 = sub_1000BC4D4(&qword_1016A4230, &unk_101391950);
      v258 = *(v352 + *(v260 + 48));
      sub_10000B3A8(v331, &qword_1016A40D0, &unk_10138BE70);
    }

    sub_10046B858(v328 + v254, type metadata accessor for OwnedBeaconGroup.PairingState);
    if (v258 != 2)
    {
      goto LABEL_132;
    }

    v239 &= v239 - 1;
    sub_10000B3A8(v329, &qword_1016A4190, &unk_1013A3550);
  }

  while (1)
  {
    v241 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v241 >= v350)
    {
      goto LABEL_126;
    }

    v239 = *&v346[8 * v241];
    ++i;
    if (v239)
    {
      goto LABEL_118;
    }
  }

  __break(1u);
}

uint64_t sub_1004476CC(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for MACAddress();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v48 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v45 - v8;
  v10 = sub_1000BC4D4(&qword_101699860, &qword_1013A34D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v45 - v11;
  v13 = type metadata accessor for Device();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v49 = &v45 - v18;
  v19 = type metadata accessor for UUID();
  __chkstk_darwin(v19 - 8);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v46 = v14;
    v47 = v13;
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_1000076D4(v23, qword_10177AD08);
    sub_100A245E8(0xD000000000000018, 0x8000000101354F00);
    v24 = [*&a1[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject] identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    sub_1001DE870(0, v21);
    swift_endAccess();
    sub_100A22DF0(v9);
    sub_10044DA44(v12);
    v25 = *(v5 + 8);
    v25(v9, v4);
    v27 = v46;
    v26 = v47;
    if ((*(v46 + 48))(v12, 1, v47) == 1)
    {
      v28 = v25;
      sub_10000B3A8(v12, &qword_101699860, &qword_1013A34D0);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "No BT device from BluetoothManager after pairing. Need to unpair", v31, 2u);
      }

      v32 = v48;
      sub_100A22DF0(v48);
      sub_10043B150(a1, v32);

      return v28(v32, v4);
    }

    else
    {
      v33 = v49;
      (*(v27 + 32))(v49, v12, v26);
      (*(v27 + 16))(v17, v33, v26);
      v34 = v26;
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v50[0] = v38;
        *v37 = 136315138;
        sub_100019D54(&unk_1016B7C90, &type metadata accessor for Device, &protocol conformance descriptor for Device);
        v39 = dispatch thunk of CustomStringConvertible.description.getter();
        v41 = v40;
        v42 = *(v27 + 8);
        v42(v17, v34);
        v43 = sub_1000136BC(v39, v41, v50);

        *(v37 + 4) = v43;
        _os_log_impl(&_mh_execute_header, v35, v36, "Found BT device from BluetoothManager after pairing as expected. %s", v37, 0xCu);
        sub_100007BAC(v38);

        return (v42)(v49, v47);
      }

      else
      {

        v44 = *(v27 + 8);
        v44(v17, v26);
        return (v44)(v33, v26);
      }
    }
  }

  return result;
}

uint64_t sub_100447E44@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v72 = a1;
  v64 = a2;
  v2 = type metadata accessor for UUID();
  v73 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v5 = v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v63 - v6;
  v8 = type metadata accessor for MACAddress();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Device();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_1016A04C8, &unk_1013DD710);
  unsafeFromAsyncTask<A>(_:)();
  v75 = v9;
  v80 = v11;
  v70 = v8;
  v71 = v15;
  v67 = v7;
  v22 = v81;
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  v24 = sub_1000076D4(v23, qword_10177AD08);

  v63[1] = v24;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  v27 = os_log_type_enabled(v25, v26);
  v28 = v80;
  v68 = v5;
  v69 = v2;
  if (v27)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v81 = v30;
    *v29 = 134218242;
    *(v29 + 4) = *(v22 + 16);

    *(v29 + 12) = 2080;
    v31 = Array.description.getter();
    v79 = sub_1000136BC(v31, v32, &v81);

    *(v29 + 14) = v79;
    _os_log_impl(&_mh_execute_header, v25, v26, "[sanitizedMAC] All paired devices [%ld]: %s", v29, 0x16u);
    sub_100007BAC(v30);
  }

  else
  {
  }

  v37 = v70;
  v38 = v71;
  v79 = *(v22 + 16);
  if (v79)
  {
    v39 = 0;
    v66 = OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject;
    v77 = v22 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v78 = v13;
    ++v75;
    v76 = v13 + 16;
    v40 = *(v74 + 32);
    v65 = v73 + 1;
    v73 = (v13 + 8);
    v74 = v40;
    do
    {
      if (v39 >= *(v22 + 16))
      {
        __break(1u);
        swift_once();
        v16 = type metadata accessor for Logger();
        sub_1000076D4(v16, qword_10177C418);
        swift_errorRetain();
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          *v19 = 138543362;
          swift_errorRetain();
          v21 = _swift_stdlib_bridgeErrorToNSError();
          *(v19 + 4) = v21;
          *v20 = v21;
          _os_log_impl(&_mh_execute_header, v17, v18, "Unable to retrieve paired devices: %{public}@", v19, 0xCu);
          sub_10000B3A8(v20, &qword_10169BB30, &unk_10138B3C0);
        }

        else
        {
        }

        v33 = v64;
        v34 = sub_1000BC4D4(&qword_1016A04D8, &qword_1013A34B0);
        v35 = *(*(v34 - 8) + 56);
        v36 = v33;
        return v35(v36, 1, 1, v34);
      }

      v41 = v22;
      (*(v13 + 16))(v38, v77 + *(v13 + 72) * v39, v12);
      v42 = Device.btAddress.getter();
      v43 = v12;
      __chkstk_darwin(v42);
      v63[-2] = v28;
      v63[-1] = v44;
      sub_1000BC4D4(&unk_1016A6370, &unk_101391AA0);
      Lock.callAsFunction<A>(_:)();
      v45 = v81;
      (*v75)(v28, v37);
      if (v45)
      {
        v46 = [*&v45[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject] identifier];
        v47 = v67;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v48 = [*(v72 + v66) identifier];
        v49 = v68;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v48) = static UUID.== infix(_:_:)();
        v50 = *v65;
        v51 = v49;
        v52 = v69;
        (*v65)(v51, v69);
        v50(v47, v52);
        if (v48)
        {

          v54 = v45;
          v55 = Logger.logObject.getter();
          v56 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v55, v56))
          {
            v57 = swift_slowAlloc();
            v58 = swift_slowAlloc();
            *v57 = 138412290;
            *(v57 + 4) = v54;
            *v58 = v45;
            v59 = v54;
            _os_log_impl(&_mh_execute_header, v55, v56, "[sanitizedMAC] Found BT peripheral: %@", v57, 0xCu);
            sub_10000B3A8(v58, &qword_10169BB30, &unk_10138B3C0);
          }

          v60 = sub_1000BC4D4(&qword_1016A04D8, &qword_1013A34B0);
          v61 = *(v60 + 48);
          v62 = v64;
          *v64 = v54;
          (*(v78 + 32))(v62 + v61, v71, v43);
          return (*(*(v60 - 8) + 56))(v62, 0, 1, v60);
        }

        v38 = v71;
        v12 = v43;
        (*v73)(v71, v43);

        v37 = v70;
      }

      else
      {
        (*v73)(v38, v12);
      }

      ++v39;
      v13 = v78;
      v28 = v80;
      v22 = v41;
    }

    while (v79 != v39);
  }

  v34 = sub_1000BC4D4(&qword_1016A04D8, &qword_1013A34B0);
  v35 = *(*(v34 - 8) + 56);
  v36 = v64;
  return v35(v36, 1, 1, v34);
}

uint64_t sub_100448730(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016995B0, &unk_101391A80);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v50 - v5;
  v7 = sub_1000BC4D4(&unk_1016A6310, &unk_10139DC90);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v50 - v9;
  v11 = *(a1 + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject);
  if ([v11 state] == 2)
  {
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000076D4(v12, qword_10177AD08);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Peripheral is already connected. No need to connect again.", v15, 2u);
    }

    v54 = a1;
    type metadata accessor for Peripheral(0);
    v16 = a1;
    Just.init(_:)();
    sub_100101B58();
    Just.setFailureType<A>(to:)();
    (*(v4 + 8))(v6, v3);
    sub_1000041A4(&qword_1016995B8, &unk_1016A6310, &unk_10139DC90, &protocol conformance descriptor for Result<A, B>.Publisher);
    v17 = Publisher.eraseToAnyPublisher()();
    (*(v8 + 8))(v10, v7);
    return v17;
  }

  v53 = v8;
  sub_1000BC4D4(&unk_1016A6140, &unk_1013D4EB0);
  v18 = unsafeFromAsyncTask<A>(_:)();
  v19 = v54;
  if (v54)
  {
    if (*(v54 + OBJC_IVAR____TtC12searchpartyd14CentralManager_isSharedPairingAgent) == 1)
    {
      v51 = v7;
      v52 = v1;
      __chkstk_darwin(v18);
      *(&v50 - 2) = v19;
      type metadata accessor for SharedPairingAgent();
      Lock.callAsFunction<A>(_:)();
      v20 = v54;
      v21 = [*(v54 + OBJC_IVAR____TtC12searchpartyd18SharedPairingAgent_underlyingObject) isPeerPaired:v11];

      if (v21)
      {
        if (qword_1016946F0 != -1)
        {
          swift_once();
        }

        v22 = type metadata accessor for Logger();
        sub_1000076D4(v22, qword_10177AD08);
        v23 = a1;
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v54 = v52;
          *v26 = 136315394;
          *(v26 + 4) = sub_1000136BC(0xD00000000000001CLL, 0x8000000101354E50, &v54);
          *(v26 + 12) = 2112;
          *(v26 + 14) = v23;
          *v27 = v23;
          v28 = v23;
          _os_log_impl(&_mh_execute_header, v24, v25, "%s Not connecting to already paired peripheral: %@", v26, 0x16u);
          sub_10000B3A8(v27, &qword_10169BB30, &unk_10138B3C0);

          sub_100007BAC(v52);
        }

        v29 = v51;
        v54 = v23;
        type metadata accessor for Peripheral(0);
        v30 = v23;
        Just.init(_:)();
        sub_100101B58();
        Just.setFailureType<A>(to:)();
        (*(v4 + 8))(v6, v3);
        sub_1000041A4(&qword_1016995B8, &unk_1016A6310, &unk_10139DC90, &protocol conformance descriptor for Result<A, B>.Publisher);
        v17 = Publisher.eraseToAnyPublisher()();

        (*(v53 + 8))(v10, v29);
      }

      else
      {
        if (qword_1016946F0 != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for Logger();
        sub_1000076D4(v41, qword_10177AD08);
        v42 = a1;
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v54 = v47;
          *v45 = 136315394;
          *(v45 + 4) = sub_1000136BC(0xD00000000000001CLL, 0x8000000101354E50, &v54);
          *(v45 + 12) = 2112;
          *(v45 + 14) = v42;
          *v46 = v42;
          v48 = v42;
          _os_log_impl(&_mh_execute_header, v43, v44, "%s Connecting to %@", v45, 0x16u);
          sub_10000B3A8(v46, &qword_10169BB30, &unk_10138B3C0);

          sub_100007BAC(v47);
        }

        v17 = sub_10131F050(v42, 0);
      }

      return v17;
    }

    __break(1u);
    goto LABEL_26;
  }

  v11 = sub_100101B58();
  swift_allocError();
  *v31 = 16;
  *(v31 + 8) = 0u;
  *(v31 + 24) = 0u;
  *(v31 + 40) = 11;
  swift_willThrow();

  if (qword_1016946F0 != -1)
  {
LABEL_26:
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_1000076D4(v32, qword_10177AD08);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v52 = v11;
    v37 = v7;
    v38 = v36;
    v54 = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_1000136BC(0xD00000000000001CLL, 0x8000000101354E50, &v54);
    _os_log_impl(&_mh_execute_header, v33, v34, "%s Missing central manager service!", v35, 0xCu);
    sub_100007BAC(v38);
    v7 = v37;
  }

  v39 = v53;
  v54 = a1;
  type metadata accessor for Peripheral(0);
  v40 = a1;
  Just.init(_:)();
  Just.setFailureType<A>(to:)();
  (*(v4 + 8))(v6, v3);
  sub_1000041A4(&qword_1016995B8, &unk_1016A6310, &unk_10139DC90, &protocol conformance descriptor for Result<A, B>.Publisher);
  v17 = Publisher.eraseToAnyPublisher()();
  (*(v39 + 8))(v10, v7);
  return v17;
}

void sub_1004490E8(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v6 = v5;
  v37 = a2;
  v38 = a5;
  v39 = a4;
  v36 = a3;
  v42 = a1;
  v35 = *v5;
  v7 = type metadata accessor for MACAddress();
  v40 = *(v7 - 8);
  v41 = v7;
  __chkstk_darwin(v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SystemInfo.DeviceLockState();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v35 - v15;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (&v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v43 = 0x7365547265646E75;
  v44 = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if ((v45 & 1) == 0)
  {
    v21 = v5[6];
    *v20 = v21;
    (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
    v22 = v21;
    LOBYTE(v21) = _dispatchPreconditionTest(_:)();
    (*(v18 + 8))(v20, v17);
    if ((v21 & 1) == 0)
    {
      __break(1u);
      goto LABEL_19;
    }

    static SystemInfo.lockState.getter();
    (*(v11 + 104))(v14, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v10);
    sub_100019D54(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
    v23 = dispatch thunk of static Equatable.== infix(_:_:)();
    v24 = *(v11 + 8);
    v24(v14, v10);
    v24(v16, v10);
    if (v23)
    {
      if (qword_1016950D0 == -1)
      {
LABEL_7:
        v25 = type metadata accessor for Logger();
        sub_1000076D4(v25, qword_10177C418);
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v26, v27))
        {
LABEL_15:

          return;
        }

        v28 = swift_slowAlloc();
        *v28 = 0;
        v29 = "Not handling pairing/connection event before first unlock!";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v26, v27, v29, v28, 2u);

        goto LABEL_15;
      }

LABEL_19:
      swift_once();
      goto LABEL_7;
    }

    v30 = v42;
    sub_100A22DF0(v9);
    v31 = MACAddress.isNull.getter();
    (*(v40 + 8))(v9, v41);
    if (v31)
    {
      if (qword_1016946F0 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_1000076D4(v32, qword_10177AD08);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v26, v27))
      {
        goto LABEL_15;
      }

      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = "Void MAC address detected. Abort pairing!";
      goto LABEL_14;
    }

    v33 = type metadata accessor for Transaction();
    __chkstk_darwin(v33);
    *(&v35 - 8) = v30;
    *(&v35 - 7) = v6;
    *(&v35 - 48) = v36 & 1;
    v34 = v38;
    *(&v35 - 5) = v37;
    *(&v35 - 4) = v34;
    *(&v35 - 24) = v39 & 1;
    *(&v35 - 2) = v35;
    static Transaction.named<A>(_:with:)();
  }
}

uint64_t sub_10044969C(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v106 = a6;
  v103 = a4;
  v104 = a7;
  v99 = a5;
  v105 = a1;
  v9 = type metadata accessor for Device();
  v101 = *(v9 - 8);
  v102 = v9;
  __chkstk_darwin(v9);
  v98 = v10;
  v100 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v11 - 8);
  v13 = &v67 - v12;
  v74 = sub_1000BC4D4(&qword_10169E848, &unk_10139DC30);
  v73 = *(v74 - 1);
  __chkstk_darwin(v74);
  v15 = &v67 - v14;
  v77 = sub_1000BC4D4(&qword_10169E850, &unk_1013A3500);
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v72 = &v67 - v16;
  v78 = sub_1000BC4D4(&qword_10169E858, &unk_10139DC40);
  v80 = *(v78 - 8);
  __chkstk_darwin(v78);
  v75 = &v67 - v17;
  v83 = sub_1000BC4D4(&qword_10169E860, &unk_1013A3510);
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v81 = &v67 - v18;
  v87 = sub_1000BC4D4(&qword_10169E868, &qword_10139DC50);
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v79 = &v67 - v19;
  v90 = sub_1000BC4D4(&qword_1016A0520, &qword_1013A3520);
  v88 = *(v90 - 8);
  __chkstk_darwin(v90);
  v84 = &v67 - v20;
  v92 = sub_1000BC4D4(&qword_1016A0528, &qword_1013A3528);
  v89 = *(v92 - 8);
  __chkstk_darwin(v92);
  v85 = &v67 - v21;
  v95 = sub_1000BC4D4(&qword_1016A0530, &qword_1013A3530);
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v93 = &v67 - v22;
  v23 = sub_1000BC4D4(&qword_1016A0538, &qword_1013A3538);
  v96 = *(v23 - 8);
  v97 = v23;
  __chkstk_darwin(v23);
  v110 = &v67 - v24;
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_1000076D4(v25, qword_10177AD08);
  sub_100A245E8(0xD000000000000022, 0x8000000101354DC0);
  v113 = sub_100448730(a2);
  v114 = *(a3 + 48);
  v26 = v114;
  v107 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v27 = *(v107 - 8);
  v108 = *(v27 + 56);
  v71 = v27 + 56;
  v108(v13, 1, 1, v107);
  v28 = v26;
  v91 = a3;
  v29 = v28;
  v30 = sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
  v112 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v31 = sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970, &protocol conformance descriptor for AnyPublisher<A, B>);
  v111 = sub_1004682F0();
  v70 = v30;
  v69 = v31;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v13, &unk_1016B0FE0, &unk_101391980);

  static Subscribers.Demand.unlimited.getter();
  v109 = type metadata accessor for Peripheral(0);
  v32 = v15;
  v68 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_1000041A4(&qword_10169E898, &qword_10169E848, &unk_10139DC30, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v33 = v72;
  v34 = v74;
  Publisher.flatMap<A, B>(maxPublishers:_:)();
  (*(v73 + 8))(v32, v34);
  v113 = v29;
  v108(v13, 1, 1, v107);
  v74 = &protocol conformance descriptor for Publishers.FlatMap<A, B>;
  sub_1000041A4(&qword_10169E8A0, &qword_10169E850, &unk_1013A3500, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v35 = v29;
  v36 = v75;
  v37 = v77;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v13, &unk_1016B0FE0, &unk_101391980);

  (*(v76 + 8))(v33, v37);
  *(swift_allocObject() + 16) = &off_101608EA8;
  static Subscribers.Demand.unlimited.getter();
  sub_1000041A4(&qword_10169E8A8, &qword_10169E858, &unk_10139DC40, v68);
  v38 = v81;
  v39 = v78;
  v40 = v35;
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  v41 = v36;
  v42 = v39;
  v43 = v107;
  v44 = v108;
  (*(v80 + 8))(v41, v42);
  v113 = v35;
  v44(v13, 1, 1, v43);
  sub_1000041A4(&qword_10169E8B0, &qword_10169E860, &unk_1013A3510, v74);
  v45 = v79;
  v46 = v83;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v13, &unk_1016B0FE0, &unk_101391980);

  (*(v82 + 8))(v38, v46);
  v47 = v45;
  if (qword_101694700 != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_1000076D4(v48, qword_1016A00D0);
  v113 = v40;
  v44(v13, 1, 1, v43);
  sub_1000041A4(&qword_10169E8B8, &qword_10169E868, &qword_10139DC50, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v49 = v84;
  v50 = v87;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_10000B3A8(v13, &unk_1016B0FE0, &unk_101391980);

  (*(v86 + 8))(v47, v50);
  sub_1000041A4(&qword_1016A0540, &qword_1016A0520, &qword_1013A3520, &protocol conformance descriptor for Publishers.Timeout<A, B>);
  v51 = v85;
  v52 = v90;
  Publisher.compactMap<A>(_:)();
  (*(v88 + 8))(v49, v52);
  sub_1000BC4D4(&unk_1016A6150, &unk_10139DB30);
  v53 = v93;
  v54 = v92;
  Publishers.CompactMap.map<A>(_:)();
  (*(v89 + 8))(v51, v54);
  sub_1000BC4D4(&qword_1016A6160, &unk_10139DC80);
  sub_1000041A4(&qword_1016A0548, &qword_1016A0530, &qword_1013A3530, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  sub_1000041A4(&qword_1016A6170, &qword_1016A6160, &unk_10139DC80, &protocol conformance descriptor for Just<A>);
  v55 = v95;
  Publisher.catch<A>(_:)();
  (*(v94 + 8))(v53, v55);
  v56 = swift_allocObject();
  swift_weakInit();
  v58 = v100;
  v57 = v101;
  v59 = v102;
  (*(v101 + 16))(v100, v99, v102);
  v60 = (*(v57 + 80) + 33) & ~*(v57 + 80);
  v61 = (v98 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v62 = swift_allocObject();
  *(v62 + 16) = v105;
  *(v62 + 24) = v56;
  *(v62 + 32) = v103 & 1;
  (*(v57 + 32))(v62 + v60, v58, v59);
  v63 = v62 + v61;
  *v63 = v106;
  *(v63 + 8) = v104 & 1;
  sub_1000041A4(&qword_1016A0550, &qword_1016A0538, &qword_1013A3538, &protocol conformance descriptor for Publishers.Catch<A, B>);

  v64 = v97;
  v65 = v110;
  Publisher<>.sink(receiveValue:)();

  (*(v96 + 8))(v65, v64);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10044A624@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v44 = a2;
  v5 = sub_1000BC4D4(&qword_1016995B0, &unk_101391A80);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v42 = v41 - v7;
  v8 = sub_1000BC4D4(&unk_1016A6310, &unk_10139DC90);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v43 = v41 - v10;
  v11 = *a1;
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = sub_1000076D4(v12, qword_10177AD08);
  v14 = v11;
  v41[1] = v13;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v41[0] = v6;
    v18 = v17;
    v19 = swift_slowAlloc();
    v20 = v9;
    v21 = v5;
    v22 = v8;
    v23 = a3;
    v24 = swift_slowAlloc();
    v45[0] = v24;
    *v18 = 136315394;
    *(v18 + 4) = sub_1000136BC(0xD000000000000050, 0x8000000101354DF0, v45);
    *(v18 + 12) = 2112;
    *(v18 + 14) = v14;
    *v19 = v14;
    v25 = v14;
    _os_log_impl(&_mh_execute_header, v15, v16, "%s Connected to %@", v18, 0x16u);
    sub_10000B3A8(v19, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v24);
    a3 = v23;
    v8 = v22;
    v5 = v21;
    v9 = v20;

    v6 = v41[0];
  }

  v45[3] = &type metadata for BAServiceIdentifier;
  v45[4] = &off_10162CAF0;
  LOBYTE(v45[0]) = 1;
  v26 = OBJC_IVAR____TtC12searchpartyd10Peripheral_services;
  v27 = swift_beginAccess();
  v28 = *&v14[v26];
  __chkstk_darwin(v27);
  v41[-2] = v45;

  v29 = sub_1012BBDB4(sub_1001DB3F8, &v41[-4], v28);

  sub_100007BAC(v45);
  if (v29)
  {
    v30 = sub_10039C428(v44);
    v31 = swift_allocObject();
    *(v31 + 16) = v29;
    *(v31 + 24) = v30;
    sub_1000BC4D4(&unk_1016CDD30, &unk_101391A90);
    swift_allocObject();

    v45[0] = Future.init(_:)();
    sub_1000041A4(&qword_1016A6330, &unk_1016CDD30, &unk_101391A90, &protocol conformance descriptor for Future<A, B>);
    v32 = Publisher.eraseToAnyPublisher()();
  }

  else
  {
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v45[0] = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_1000136BC(0xD000000000000050, 0x8000000101354DF0, v45);
      _os_log_impl(&_mh_execute_header, v34, v35, "%s No FindMy service", v36, 0xCu);
      sub_100007BAC(v37);
    }

    v45[0] = v14;
    type metadata accessor for Peripheral(0);
    v38 = v14;
    v39 = v42;
    Just.init(_:)();
    sub_100101B58();
    v40 = v43;
    Just.setFailureType<A>(to:)();
    (*(v6 + 8))(v39, v5);
    sub_1000041A4(&qword_1016995B8, &unk_1016A6310, &unk_10139DC90, &protocol conformance descriptor for Result<A, B>.Publisher);
    v32 = Publisher.eraseToAnyPublisher()();
    result = (*(v9 + 8))(v40, v8);
  }

  *a3 = v32;
  return result;
}

uint64_t sub_10044AC28(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7)
{
  Transaction.capture()();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000D2A70(a1, &v43, &unk_1016A6150, &unk_10139DB30);
    if (v45)
    {
      v41 = v43;
      *v42 = *v44;
      *&v42[9] = *&v44[9];
      if (qword_1016946F0 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_1000076D4(v13, qword_10177AD08);
      sub_100101AA8(&v41, v40);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v39 = v18;
        *v16 = 136315394;
        *(v16 + 4) = sub_1000136BC(0xD000000000000050, 0x8000000101354DF0, &v39);
        *(v16 + 12) = 2114;
        sub_100101B58();
        swift_allocError();
        sub_100101AA8(v40, v19);
        v20 = _swift_stdlib_bridgeErrorToNSError();
        sub_100101B04(v40);
        *(v16 + 14) = v20;
        *v17 = v20;
        _os_log_impl(&_mh_execute_header, v14, v15, "%s error: %{public}@", v16, 0x16u);
        sub_10000B3A8(v17, &qword_10169BB30, &unk_10138B3C0);

        sub_100007BAC(v18);
      }

      else
      {

        sub_100101B04(v40);
      }

      return sub_100101B04(&v41);
    }

    else
    {
      v21 = v43;
      *&v42[8] = &type metadata for BAServiceIdentifier;
      *&v42[16] = &off_10162CAF0;
      LOBYTE(v41) = 1;
      v22 = OBJC_IVAR____TtC12searchpartyd10Peripheral_services;
      v23 = swift_beginAccess();
      v24 = *&v21[v22];
      __chkstk_darwin(v23);
      v38[2] = &v41;

      v25 = sub_1012BBDB4(sub_1001DB280, v38, v24);

      sub_100007BAC(&v41);
      if (v25)
      {
        if (a4)
        {
          if (qword_1016946F0 != -1)
          {
            swift_once();
          }

          v26 = type metadata accessor for Logger();
          sub_1000076D4(v26, qword_10177AD08);
          v27 = Logger.logObject.getter();
          v28 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            *v29 = 0;
            _os_log_impl(&_mh_execute_header, v27, v28, "Bypassing Privacy Alert and force pairing", v29, 2u);
          }

          sub_10044C750(v25, v21, a5, 1, a6);
        }

        else
        {
          if (qword_1016946F0 != -1)
          {
            swift_once();
          }

          v34 = type metadata accessor for Logger();
          sub_1000076D4(v34, qword_10177AD08);
          v35 = Logger.logObject.getter();
          v36 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            *v37 = 0;
            _os_log_impl(&_mh_execute_header, v35, v36, "Owner characteristic available. Proceed with privacy alert.", v37, 2u);
          }

          sub_10044B1D4(v25, v21, a5, a7 & 1);
        }
      }

      else
      {
        if (qword_1016946F0 != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        sub_1000076D4(v30, qword_10177AD08);
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&_mh_execute_header, v31, v32, "No FindMy service", v33, 2u);
        }
      }
    }
  }

  return result;
}

void sub_10044B1D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(v4 + 48);
  *v12 = v13;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  v25[3] = &type metadata for BACharacteristicIdentifier.FindMy;
  v25[4] = &off_10162CAD0;
  LOBYTE(v25[0]) = 3;
  v15 = swift_beginAccess();
  v16 = *(a1 + 40);
  __chkstk_darwin(v15);
  *&v24[-16] = v25;

  v17 = sub_1012BBE10(sub_10038C458, &v24[-32], v16);

  sub_100007BAC(v25);
  if (v17)
  {
    v18 = sub_100437674();
    v19 = type metadata accessor for Transaction();
    __chkstk_darwin(v19);
    *&v24[-64] = v18;
    *&v24[-56] = a2;
    *&v24[-48] = v17;
    *&v24[-40] = a3;
    v24[-32] = a4 & 1;
    *&v24[-24] = v4;
    *&v24[-16] = a1;
    static Transaction.named<A>(_:with:)();

    return;
  }

  if (qword_1016946F0 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v20 = type metadata accessor for Logger();
  sub_1000076D4(v20, qword_10177AD08);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Missing Paired Owner Characteristic!", v23, 2u);
  }
}

uint64_t sub_10044B4F8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v39 = a7;
  v9 = a6;
  v43 = a6;
  v41 = a5;
  v42 = a3;
  v51 = a1;
  v48 = type metadata accessor for Device();
  v45 = *(v48 - 8);
  v46 = *(v45 + 64);
  __chkstk_darwin(v48);
  v44 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v15 - 8);
  v17 = &v39 - v16;
  v18 = sub_1000BC4D4(&qword_1016A0500, &qword_1013A34D8);
  v19 = *(v18 - 8);
  v49 = v18;
  v50 = v19;
  __chkstk_darwin(v18);
  v40 = &v39 - v20;
  v53 = a2;
  v54 = a3;
  v55 = a4;
  v56 = a5;
  v57 = v9;
  sub_1000BC4D4(&qword_1016A0508, &qword_1013A34E0);
  v21 = v47;
  OS_dispatch_queue.sync<A>(execute:)();
  v47 = v21;
  v58 = *(a7 + 48);
  v22 = v58;
  v23 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  sub_1000041A4(&qword_1016A0510, &qword_1016A0508, &qword_1013A34E0, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_1004682F0();
  v24 = v22;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v17, &unk_1016B0FE0, &unk_101391980);

  v25 = swift_allocObject();
  swift_weakInit();
  v27 = v44;
  v26 = v45;
  v28 = v48;
  (*(v45 + 16))(v44, v41, v48);
  v29 = v26;
  v30 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v31 = (v46 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  v33 = v42;
  *(v32 + 16) = v25;
  *(v32 + 24) = v33;
  (*(v29 + 32))(v32 + v30, v27, v28);
  *(v32 + v31) = v51;
  v34 = v32 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v34 = v52;
  *(v34 + 8) = v43;
  sub_1000041A4(&qword_1016A0518, &qword_1016A0500, &qword_1013A34D8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v35 = v33;

  v36 = v49;
  v37 = v40;
  Publisher<>.sink(receiveValue:)();

  (*(v50 + 8))(v37, v36);
  AnyCancellable.store(in:)();
}

uint64_t sub_10044B998(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v27 = a7;
  v11 = type metadata accessor for Device();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v26 = type metadata accessor for Transaction();
    v17 = swift_allocObject();
    swift_weakInit();
    (*(v12 + 16))(&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v11);
    v18 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v24 = a6;
    v25 = v16;
    v19 = (v13 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = swift_allocObject();
    *(v20 + 16) = v17;
    *(v20 + 24) = a3;
    (*(v12 + 32))(v20 + v18, v14, v11);
    *(v20 + v19) = a5;
    v21 = v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v21 = v24;
    *(v21 + 8) = v27 & 1;

    v22 = a3;

    static Transaction.asyncTask(name:block:)();
  }

  return result;
}

uint64_t sub_10044BBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 240) = a6;
  *(v6 + 120) = a4;
  *(v6 + 128) = a5;
  *(v6 + 104) = a2;
  *(v6 + 112) = a3;
  *(v6 + 96) = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  *(v6 + 136) = v7;
  *(v6 + 144) = *(v7 - 8);
  *(v6 + 152) = swift_task_alloc();
  v8 = type metadata accessor for DispatchQoS();
  *(v6 + 160) = v8;
  *(v6 + 168) = *(v8 - 8);
  *(v6 + 176) = swift_task_alloc();
  v9 = type metadata accessor for Device();
  *(v6 + 184) = v9;
  v10 = *(v9 - 8);
  *(v6 + 192) = v10;
  *(v6 + 200) = *(v10 + 64);
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = swift_task_alloc();

  return _swift_task_switch(sub_10044BD58, 0, 0);
}

uint64_t sub_10044BD58()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[28] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[29] = v2;
    *v2 = v0;
    v2[1] = sub_10044BE7C;
    v3 = v0[13];

    return sub_10044DEFC(v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10044BE7C(char a1)
{
  *(*v1 + 241) = a1;

  return _swift_task_switch(sub_10044BF7C, 0, 0);
}

uint64_t sub_10044BF7C()
{
  v43 = v0;
  if (*(v0 + 241) == 1)
  {
    v1 = *(v0 + 216);
    v32 = *(v0 + 224);
    v3 = *(v0 + 192);
    v2 = *(v0 + 200);
    v4 = *(v0 + 184);
    v36 = *(v0 + 176);
    v40 = *(v0 + 168);
    v41 = *(v0 + 160);
    v37 = *(v0 + 152);
    v38 = *(v0 + 136);
    v35 = *(v0 + 240);
    v5 = *(v0 + 120);
    v33 = *(v0 + 104);
    v34 = *(v0 + 128);
    v39 = *(v0 + 144);
    (*(v3 + 16))(v1, *(v0 + 112), v4);
    v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v7 = (v2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
    v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    (*(v3 + 32))(v9 + v6, v1, v4);
    *(v9 + v7) = v32;
    *(v9 + v8) = v34;
    v10 = v9 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v10 = v33;
    *(v10 + 8) = v35;
    *(v0 + 48) = sub_1004686D4;
    *(v0 + 56) = v9;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_100006684;
    *(v0 + 40) = &unk_10161D4C8;
    v11 = _Block_copy((v0 + 16));

    v12 = v33;
    static DispatchQoS.unspecified.getter();
    *(v0 + 88) = _swiftEmptyArrayStorage;
    sub_100019D54(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v11);
    (*(v39 + 8))(v37, v38);
    (*(v40 + 8))(v36, v41);
  }

  else
  {
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 208);
    v14 = *(v0 + 184);
    v15 = *(v0 + 192);
    v16 = *(v0 + 112);
    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_10177AD08);
    (*(v15 + 16))(v13, v16, v14);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 208);
    v23 = *(v0 + 184);
    v22 = *(v0 + 192);
    if (v20)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v42 = v25;
      *v24 = 136446210;
      sub_100019D54(&unk_1016B7C90, &type metadata accessor for Device, &protocol conformance descriptor for Device);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      (*(v22 + 8))(v21, v23);
      v29 = sub_1000136BC(v26, v28, &v42);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v18, v19, "FindMy pairing has been completed for %{public}s.", v24, 0xCu);
      sub_100007BAC(v25);
    }

    else
    {

      (*(v22 + 8))(v21, v23);
    }
  }

  v30 = *(v0 + 8);

  return v30();
}

void sub_10044C488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, char a6)
{
  v30 = a4;
  v10 = type metadata accessor for Device();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Transaction.capture()();
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177AD08);
  (*(v11 + 16))(v13, a2, v10);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v28 = a2;
    v18 = v17;
    v19 = swift_slowAlloc();
    v29 = a3;
    v27 = v19;
    v31 = v19;
    *v18 = 136446210;
    sub_100019D54(&unk_1016B7C90, &type metadata accessor for Device, &protocol conformance descriptor for Device);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = a6;
    v22 = a5;
    v24 = v23;
    (*(v11 + 8))(v13, v10);
    v25 = sub_1000136BC(v20, v24, &v31);
    a5 = v22;
    a6 = v21;

    *(v18 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v15, v16, "FindMy pairing is not completed for %{public}s. Attempt to pair...", v18, 0xCu);
    sub_100007BAC(v27);

    a2 = v28;
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  sub_10044C750(v30, a5, a2, a6 & 1, _swiftEmptyArrayStorage);
}

void sub_10044C750(uint64_t a1, char *a2, uint64_t a3, int a4, uint64_t a5)
{
  v59 = a3;
  v60 = a5;
  v58 = a4;
  v61 = a2;
  v7 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v7 - 8);
  v9 = v54 - v8;
  v10 = sub_1000BC4D4(&qword_1016A04E0, &qword_1013A34C0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v54 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v5 + 48);
  *v17 = v18;
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v57 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v17, v14);
  if ((v18 & 1) == 0)
  {
    __break(1u);
LABEL_28:
    swift_once();
    goto LABEL_10;
  }

  v64 = &type metadata for BACharacteristicIdentifier.FindMy;
  v65 = &off_10162CAD0;
  LOBYTE(v63[0]) = 0;
  v19 = swift_beginAccess();
  v20 = *(a1 + 40);
  __chkstk_darwin(v19);
  v54[-2] = v63;

  v21 = sub_1012BBE10(sub_1001DB2A0, &v54[-4], v20);

  sub_100007BAC(v63);
  if (v21)
  {
    My = type metadata accessor for Feature.FindMy();
    v64 = My;
    v65 = sub_100019D54(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
    v23 = sub_1000280DC(v63);
    (*(*(My - 8) + 104))(v23, enum case for Feature.FindMy.baAirpods(_:), My);
    LOBYTE(My) = isFeatureEnabled(_:)();
    v24 = sub_100007BAC(v63);
    if (My)
    {
      __chkstk_darwin(v24);
      v56 = v5;
      v25 = v61;
      v54[-2] = v5;
      v54[-1] = v25;
      QueueSynchronizer.conditionalSync<A>(_:)();
      if (v63[0])
      {
        if (qword_1016946F0 != -1)
        {
          swift_once();
        }

        v26 = type metadata accessor for Logger();
        sub_1000076D4(v26, qword_10177AD08);
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v27, v28))
        {
          goto LABEL_18;
        }

        v29 = swift_slowAlloc();
        *v29 = 0;
        v30 = "Pairing in progress. Not pairing.";
        goto LABEL_17;
      }

      if (qword_1016946F0 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_1000076D4(v36, qword_10177AD08);

      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();

      v39 = os_log_type_enabled(v37, v38);
      v54[1] = 0;
      v55 = v11;
      if (v39)
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v63[0] = v41;
        *v40 = 136446210;

        v42 = sub_100A5AADC();
        v54[0] = v10;
        v44 = v43;

        v45 = sub_1000136BC(v42, v44, v63);
        v10 = v54[0];

        *(v40 + 4) = v45;
        _os_log_impl(&_mh_execute_header, v37, v38, "Pairing characteristic %{public}s available. Proceed with FindMy pairing.", v40, 0xCu);
        sub_100007BAC(v41);
      }

      v46 = sub_100436F60(v61);
      if (v46)
      {
        v47 = __chkstk_darwin(v46);
        v54[-6] = v47;
        LOBYTE(v54[-5]) = v58 & 1;
        v48 = v60;
        v54[-4] = v59;
        v54[-3] = v48;
        v54[-2] = v21;
        v61 = v47;
        v60 = sub_1000BC4D4(&qword_1016A04E8, &qword_1013A34C8);
        OS_dispatch_queue.sync<A>(execute:)();
        v49 = v57;
        v62[0] = v57;
        v50 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
        (*(*(v50 - 8) + 56))(v9, 1, 1, v50);
        sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
        sub_1000041A4(&qword_1016A04F0, &qword_1016A04E8, &qword_1013A34C8, &protocol conformance descriptor for AnyPublisher<A, B>);
        sub_1004682F0();
        v51 = v49;
        Publisher.receive<A>(on:options:)();
        sub_10000B3A8(v9, &unk_1016B0FE0, &unk_101391980);

        v52 = swift_allocObject();
        swift_weakInit();
        v53 = swift_allocObject();
        *(v53 + 16) = sub_100468358;
        *(v53 + 24) = v52;
        sub_1000041A4(&qword_1016A04F8, &qword_1016A04E0, &qword_1013A34C0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
        Publisher<>.sink(receiveValue:)();

        (*(v55 + 8))(v13, v10);
        swift_beginAccess();
        AnyCancellable.store(in:)();
        swift_endAccess();

        return;
      }

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v27, v28))
      {
        goto LABEL_18;
      }

      v29 = swift_slowAlloc();
      *v29 = 0;
      v30 = "Unable to create a new pairing manager to pair AirPods!";
    }

    else
    {
      if (qword_1016946F0 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_1000076D4(v35, qword_10177AD08);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v27, v28))
      {
        goto LABEL_18;
      }

      v29 = swift_slowAlloc();
      *v29 = 0;
      v30 = "Internal Settings -> Feature Flags -> FindMy -> baAirpods is disabled.";
    }

LABEL_17:
    _os_log_impl(&_mh_execute_header, v27, v28, v30, v29, 2u);

LABEL_18:

    return;
  }

  if (qword_1016946F0 != -1)
  {
    goto LABEL_28;
  }

LABEL_10:
  v31 = type metadata accessor for Logger();
  sub_1000076D4(v31, qword_10177AD08);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "Missing FindMy Pairing Characteristic!", v34, 2u);
  }
}

uint64_t sub_10044D134(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for MACAddress();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v64 = &v55 - v9;
  v10 = sub_1000BC4D4(&qword_101699860, &qword_1013A34D0);
  __chkstk_darwin(v10 - 8);
  v65 = (&v55 - v11);
  v12 = type metadata accessor for Device();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v55 - v17;
  v63 = type metadata accessor for UUID();
  __chkstk_darwin(v63);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v60 = v8;
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v59 = v16;
    v22 = type metadata accessor for Logger();
    v23 = sub_1000076D4(v22, qword_10177AD08);
    sub_100A245E8(0xD000000000000015, 0x8000000101354C80);
    v24 = [*&a1[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject] identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    sub_1001DE870(0, v20);
    swift_endAccess();

    v62 = v23;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v61 = v18;
      v28 = v27;
      v29 = swift_slowAlloc();
      v56 = a1;
      v30 = v29;
      v66[0] = v29;
      *v28 = 136315138;
      v57 = v5;
      type metadata accessor for AirPodsPairingManager();
      v58 = v13;
      sub_100019D54(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

      v31 = Dictionary.description.getter();
      v33 = v32;
      v5 = v57;

      v34 = sub_1000136BC(v31, v33, v66);
      v13 = v58;

      *(v28 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v25, v26, "pairingManagers: %s", v28, 0xCu);
      sub_100007BAC(v30);
      a1 = v56;

      v18 = v61;
    }

    v35 = v64;
    sub_100A22DF0(v64);
    v36 = v65;
    sub_10044DA44(v65);
    v37 = v35;
    v38 = a1;
    v39 = *(v5 + 8);
    v39(v37, v4);
    if ((*(v13 + 48))(v36, 1, v12) == 1)
    {
      sub_10000B3A8(v36, &qword_101699860, &qword_1013A34D0);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "No BT device from BluetoothManager after pairing. Need to unpair", v42, 2u);
      }

      v43 = v60;
      sub_100A22DF0(v60);
      sub_10043B150(v38, v43);

      return (v39)(v43, v4);
    }

    else
    {
      (*(v13 + 32))(v18, v36, v12);
      v44 = v59;
      (*(v13 + 16))(v59, v18, v12);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v61 = v18;
        v48 = v47;
        v65 = swift_slowAlloc();
        v66[0] = v65;
        *v48 = 136315138;
        sub_100019D54(&unk_1016B7C90, &type metadata accessor for Device, &protocol conformance descriptor for Device);
        v49 = dispatch thunk of CustomStringConvertible.description.getter();
        v51 = v50;
        v52 = *(v13 + 8);
        v52(v44, v12);
        v53 = sub_1000136BC(v49, v51, v66);

        *(v48 + 4) = v53;
        _os_log_impl(&_mh_execute_header, v45, v46, "Found BT device from BluetoothManager after pairing as expected. %s", v48, 0xCu);
        sub_100007BAC(v65);

        return (v52)(v61, v12);
      }

      else
      {

        v54 = *(v13 + 8);
        v54(v44, v12);
        return (v54)(v18, v12);
      }
    }
  }

  return result;
}

uint64_t sub_10044DA44@<X0>(uint64_t a1@<X8>)
{
  sub_1000BC4D4(&qword_1016A04C8, &unk_1013DD710);
  unsafeFromAsyncTask<A>(_:)();
  if (v1)
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177C418);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v22 = v8;
      *v6 = 136315394;
      *(v6 + 4) = sub_1000136BC(0xD000000000000015, 0x8000000101354C00, &v22);
      *(v6 + 12) = 2114;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 14) = v9;
      *v7 = v9;
      _os_log_impl(&_mh_execute_header, v4, v5, "%s Unable to retrieve paired devices: %{public}@", v6, 0x16u);
      sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v8);
    }

    return swift_willThrow();
  }

  else
  {
    v11 = v22;
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000076D4(v12, qword_10177AD08);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = v21;
      *v15 = 134218242;
      *(v15 + 4) = *(v11 + 16);

      *(v15 + 12) = 2080;
      type metadata accessor for Device();
      v16 = Array.description.getter();
      v18 = a1;
      v19 = sub_1000136BC(v16, v17, &v22);

      *(v15 + 14) = v19;
      a1 = v18;
      _os_log_impl(&_mh_execute_header, v13, v14, "All paired devices [%ld]: %s", v15, 0x16u);
      sub_100007BAC(v21);
    }

    else
    {
    }

    __chkstk_darwin(v20);
    sub_1012BC1FC(sub_10046828C, v11, a1);
  }
}

uint64_t sub_10044DE10(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MACAddress();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Device.btAddress.getter();
  v6 = static MACAddress.== infix(_:_:)();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

uint64_t sub_10044DEFC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v2[5] = swift_task_alloc();
  v3 = type metadata accessor for OwnedBeaconGroup(0);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_10044DFF8, 0, 0);
}

uint64_t sub_10044DFF8()
{
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_10044E0B0;
  v3 = v0[2];

  return sub_10044EA7C(v3, v1);
}

uint64_t sub_10044E0B0(char a1)
{
  *(*v1 + 113) = a1;

  return _swift_task_switch(sub_10044E1B0, 0, 0);
}

uint64_t sub_10044E1B0()
{
  if (*(v0 + 113) == 1)
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
      _os_log_impl(&_mh_execute_header, v2, v3, "isPairingPending: standalone pairing is required.", v4, 2u);
    }

    v5 = swift_task_alloc();
    *(v0 + 80) = v5;
    *v5 = v0;
    v5[1] = sub_10044E3AC;
    v6 = *(v0 + 16);

    return sub_10044F97C(v6);
  }

  else
  {

    v8 = swift_task_alloc();
    *(v0 + 88) = v8;
    *v8 = v0;
    v8[1] = sub_10044E4E8;
    v9 = *(v0 + 24);

    return unsafeBlocking<A>(_:)(v0 + 112, sub_100468204, v9, &type metadata for Bool);
  }
}

uint64_t sub_10044E3AC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_10044E4E8()
{

  return _swift_task_switch(sub_10044E600, 0, 0);
}

uint64_t sub_10044E600()
{
  v16 = v0;
  if (*(v0 + 112) == 1)
  {
    v2 = *(v0 + 16);
    v1 = *(v0 + 24);
    v3 = swift_allocObject();
    *(v0 + 96) = v3;
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;

    v4 = v2;
    v5 = swift_task_alloc();
    *(v0 + 104) = v5;
    *v5 = v0;
    v5[1] = sub_10044E85C;
    v7 = *(v0 + 32);
    v6 = *(v0 + 40);

    return unsafeBlocking<A>(_:)(v6, sub_10046820C, v3, v7);
  }

  else
  {
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177AD08);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1000136BC(0xD000000000000016, 0x8000000101354C20, &v15);
      _os_log_impl(&_mh_execute_header, v9, v10, "%s BeaconStore is not available. Not allowing pairing", v11, 0xCu);
      sub_100007BAC(v12);
    }

    v13 = *(v0 + 8);

    return v13(0);
  }
}

uint64_t sub_10044E85C()
{

  return _swift_task_switch(sub_10044E974, 0, 0);
}

uint64_t sub_10044E974()
{
  v1 = v0[5];
  if ((*(v0[7] + 48))(v1, 1, v0[6]) == 1)
  {
    sub_10000B3A8(v1, &unk_1016AF8B0, &unk_1013A0700);
    v2 = 1;
  }

  else
  {
    v3 = v0[8];
    sub_10046B7F0(v1, v3, type metadata accessor for OwnedBeaconGroup);
    v4 = sub_100518118();
    sub_10046B858(v3, type metadata accessor for OwnedBeaconGroup);
    v2 = v4 ^ 1;
  }

  v5 = v0[1];

  return v5(v2 & 1);
}

uint64_t sub_10044EA7C(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v3[11] = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v3[12] = swift_task_alloc();
  v4 = type metadata accessor for OwnedBeaconGroup(0);
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return _swift_task_switch(sub_10044EB88, 0, 0);
}

uint64_t sub_10044EB88()
{
  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_100019D54(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v2 = sub_1000280DC(v0 + 2);
  (*(*(My - 8) + 104))(v2, enum case for Feature.FindMy.managedCBPeripheral(_:), My);
  v3 = isFeatureEnabled(_:)();
  sub_100007BAC(v0 + 2);
  if ((v3 & 1) == 0)
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000076D4(v25, qword_10177C418);
    v19 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v19, v26))
    {
      goto LABEL_28;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "Requires standalone pairing [false], feature disabled.";
    v29 = v26;
    v30 = v19;
    v31 = v27;
    v32 = 2;
    goto LABEL_27;
  }

  v4 = objc_opt_self();
  v5 = [v4 defaultStore];
  if (!v5)
  {
    __break(1u);
    goto LABEL_32;
  }

  v13 = v5;
  v14 = [v5 aa_primaryAppleAccount];

  if (!v14)
  {
    goto LABEL_7;
  }

  v5 = [v4 defaultStore];
  if (!v5)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    return withCheckedContinuation<A>(isolation:function:_:)(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  v15 = v5;
  v16 = [v5 aa_primaryAppleAccount];

  if (!v16 || (v17 = sub_10051441C(), v16, v17 != 2))
  {
    sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
    type metadata accessor for CloudKitCoordinator();
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v33 = v0[7];
    v0[17] = v33;
    v34 = swift_task_alloc();
    v0[18] = v34;
    *v34 = v0;
    v34[1] = sub_10044F0A0;
    v12 = &type metadata for Bool;
    v10 = sub_10046825C;
    v5 = v0 + 21;
    v9 = 0x8000000101354C60;
    v6 = 0;
    v7 = 0;
    v8 = 0xD000000000000014;
    v11 = v33;

    return withCheckedContinuation<A>(isolation:function:_:)(v5, v6, v7, v8, v9, v10, v11, v12);
  }

LABEL_7:
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000076D4(v18, qword_10177C418);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v19, v20))
  {
    goto LABEL_28;
  }

  v21 = swift_slowAlloc();
  *v21 = 67109376;
  v5 = [v4 defaultStore];
  if (!v5)
  {
    goto LABEL_33;
  }

  v22 = v5;
  v23 = [v5 aa_primaryAppleAccount];

  if (v23)
  {

    v24 = 1;
  }

  else
  {
    v24 = 0;
  }

  *(v21 + 4) = v24;
  *(v21 + 8) = 1024;
  v5 = [v4 defaultStore];
  if (!v5)
  {
    goto LABEL_34;
  }

  v35 = v5;
  v36 = [v5 aa_primaryAppleAccount];

  v38 = 0;
  if (v36)
  {
    v37 = sub_10051441C();

    if (v37 == 2)
    {
      v38 = 1;
    }
  }

  *(v21 + 10) = v38;
  v28 = "Requires standalone pairing [true] isiCloudSignedIn: %{BOOL}d isiCloudAccountStandard %{BOOL}d.";
  v29 = v20;
  v30 = v19;
  v31 = v21;
  v32 = 14;
LABEL_27:
  _os_log_impl(&_mh_execute_header, v30, v29, v28, v31, v32);

LABEL_28:

  v39 = v0[1];

  return v39(v3 & 1);
}

uint64_t sub_10044F0A0()
{

  return _swift_task_switch(sub_10044F19C, 0, 0);
}

uint64_t sub_10044F19C()
{

  if (*(v0 + 168) == 1)
  {
    v1 = *(v0 + 72);
    v2 = *(v0 + 80);
    v3 = *(v0 + 64);
    v4 = swift_allocObject();
    *(v0 + 152) = v4;
    v4[2] = v2;
    v4[3] = v3;
    v4[4] = v1;

    v5 = v3;

    v6 = swift_task_alloc();
    *(v0 + 160) = v6;
    *v6 = v0;
    v6[1] = sub_10044F3C0;
    v8 = *(v0 + 88);
    v7 = *(v0 + 96);

    return unsafeBlocking<A>(_:)(v7, sub_100468264, v4, v8);
  }

  else
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177C418);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Requires standalone pairing [true], manatee is not available.", v12, 2u);
    }

    v13 = *(v0 + 8);

    return v13(1);
  }
}

uint64_t sub_10044F3C0()
{

  return _swift_task_switch(sub_10044F4D8, 0, 0);
}

uint64_t sub_10044F4D8()
{
  v26 = v0;
  v1 = v0[13];
  v2 = v0[12];
  if ((*(v0[14] + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &unk_1016AF8B0, &unk_1013A0700);
LABEL_5:
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177C418);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Requires standalone pairing [false] group not found, isFindMyNetworkEnabled: true (default).", v7, 2u);
    }

    v8 = 0;
    goto LABEL_16;
  }

  v3 = v0[16];
  sub_10046B7F0(v2, v3, type metadata accessor for OwnedBeaconGroup);
  if (*(v3 + *(v1 + 32)))
  {
    sub_10046B858(v0[16], type metadata accessor for OwnedBeaconGroup);
    goto LABEL_5;
  }

  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v9 = v0[15];
  v10 = v0[16];
  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_10177C418);
  sub_10046A814(v10, v9, type metadata accessor for OwnedBeaconGroup);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  v16 = v0[15];
  v15 = v0[16];
  if (v14)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25 = v18;
    *v17 = 136446210;
    type metadata accessor for UUID();
    sub_100019D54(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    sub_10046B858(v16, type metadata accessor for OwnedBeaconGroup);
    v22 = sub_1000136BC(v19, v21, &v25);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v12, v13, "Requires standalone pairing [true] group: %{public}s, isFindMyNetworkEnabled: false.", v17, 0xCu);
    sub_100007BAC(v18);
  }

  else
  {

    sub_10046B858(v16, type metadata accessor for OwnedBeaconGroup);
  }

  sub_10046B858(v15, type metadata accessor for OwnedBeaconGroup);
  v8 = 1;
LABEL_16:

  v23 = v0[1];

  return v23(v8);
}

uint64_t sub_10044F8B4@<X0>(_BYTE *a2@<X8>)
{
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  QueueSynchronizer.conditionalSync<A>(_:)();

  *a2 = v4;
  return result;
}

uint64_t sub_10044F97C(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for MACAddress();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A04D0, &qword_1013A34A8);
  v2[14] = swift_task_alloc();
  v4 = type metadata accessor for Device();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_10044FAF4, 0, 0);
}

uint64_t sub_10044FAF4()
{
  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_100019D54(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v2 = sub_1000280DC(v0 + 2);
  (*(*(My - 8) + 104))(v2, enum case for Feature.FindMy.managedCBPeripheral(_:), My);
  v3 = isFeatureEnabled(_:)();
  sub_100007BAC(v0 + 2);
  if ((v3 & 1) == 0)
  {
LABEL_10:

    v14 = v0[1];

    return v14((v3 & 1) == 0);
  }

  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v0[20] = sub_1000076D4(v4, qword_10177AD08);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Checking standalone beacons...", v7, 2u);
  }

  v8 = v0[14];
  v9 = v0[8];

  sub_100447E44(v9, v8);
  v10 = sub_1000BC4D4(&qword_1016A04D8, &qword_1013A34B0);
  if ((*(*(v10 - 8) + 48))(v8, 1, v10) == 1)
  {
    sub_10000B3A8(v0[14], &qword_1016A04D0, &qword_1013A34A8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Unable to sanitize MAC address for pairing pending check", v13, 2u);
    }

    goto LABEL_10;
  }

  v16 = v0[19];
  v17 = v0[15];
  v18 = v0[16];
  v19 = v0[14];

  (*(v18 + 32))(v16, v19 + *(v10 + 48), v17);
  v20 = swift_task_alloc();
  v0[21] = v20;
  *v20 = v0;
  v20[1] = sub_10044FE90;

  return daemon.getter();
}

uint64_t sub_10044FE90(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 176) = a1;

  v3 = swift_task_alloc();
  *(v2 + 184) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for StandaloneBeaconService();
  v6 = sub_100019D54(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100019D54(&qword_10169F450, type metadata accessor for StandaloneBeaconService, &unk_1013E3258);
  *v3 = v9;
  v3[1] = sub_10045006C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10045006C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 192) = a1;
  *(v3 + 200) = v1;

  if (v1)
  {

    v4 = sub_100450954;
  }

  else
  {

    v4 = sub_1004501BC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1004501BC(uint64_t a1)
{
  v2 = *(v1 + 192);
  Device.btAddress.getter();

  return _swift_task_switch(sub_10045022C, v2, 0);
}

uint64_t sub_10045022C()
{
  v1 = v0[25];
  sub_100F85A84(v0[13], *(v0[24] + 128));
  v0[26] = v1;
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  if (v1)
  {
    v5 = *(v4 + 8);
    v0[30] = v5;
    v0[31] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v5(v2, v3);
    v6 = sub_100450610;
  }

  else
  {
    v0[27] = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

    v7 = *(v4 + 8);
    v0[28] = v7;
    v0[29] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v2, v3);
    v6 = sub_100450328;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100450328()
{
  v27 = v0;
  (*(v0[16] + 16))(v0[18], v0[19], v0[15]);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[28];
    v4 = v0[27];
    v25 = v0[19];
    v22 = v0[18];
    v23 = v0[16];
    v24 = v0[15];
    v5 = v0[12];
    v6 = v0[10];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 134218242;
    *(v7 + 4) = *(v4 + 16);

    *(v7 + 12) = 2082;
    Device.btAddress.getter();
    sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    v3(v5, v6);
    v12 = *(v23 + 8);
    v12(v22, v24);
    v13 = sub_1000136BC(v9, v11, &v26);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Found %ld existing standlone beacons matching %{public}s", v7, 0x16u);
    sub_100007BAC(v8);

    v12(v25, v24);
  }

  else
  {
    v15 = v0[18];
    v14 = v0[19];
    v16 = v0[15];
    v17 = v0[16];

    v18 = *(v17 + 8);
    v18(v15, v16);
    v18(v14, v16);
  }

  v19 = *(v0[27] + 16);

  v20 = v0[1];

  return v20(v19 == 0);
}

uint64_t sub_100450610()
{
  v28 = v0;
  (*(v0[16] + 16))(v0[17], v0[19], v0[15]);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v24 = v0[30];
    v25 = v0[26];
    v26 = v0[19];
    v3 = v0[17];
    v23 = v0[16];
    v4 = v0[15];
    v5 = v0[12];
    v6 = v0[10];
    v7 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v7 = 136446466;
    Device.btAddress.getter();
    sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    v24(v5, v6);
    v11 = *(v23 + 8);
    v11(v3, v4);
    v12 = sub_1000136BC(v8, v10, &v27);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2082;
    v0[7] = v25;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v13 = String.init<A>(describing:)();
    v15 = sub_1000136BC(v13, v14, &v27);

    *(v7 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to retrieve standalone beacons for %{public}s. %{public}s", v7, 0x16u);
    swift_arrayDestroy();

    v11(v26, v4);
  }

  else
  {
    v16 = v0[19];
    v18 = v0[16];
    v17 = v0[17];
    v19 = v0[15];

    v20 = *(v18 + 8);
    v20(v17, v19);
    v20(v16, v19);
  }

  v21 = v0[1];

  return v21(0);
}

uint64_t sub_100450954(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[19];
  v6 = v1[15];
  v7 = v1[16];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing StandaloneBeaconService!", v8, 2u);
  }

  (*(v7 + 8))(v5, v6);

  v9 = v1[1];

  return v9(0);
}

void sub_100450A8C(uint64_t a1)
{
  v3 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v223 = &v207 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v233 = &v207 - v8;
  v9 = __chkstk_darwin(v7);
  *&v244 = &v207 - v10;
  v11 = __chkstk_darwin(v9);
  v219 = &v207 - v12;
  v13 = __chkstk_darwin(v11);
  v245 = &v207 - v14;
  v15 = __chkstk_darwin(v13);
  *&v243 = &v207 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v207 - v18;
  v20 = __chkstk_darwin(v17);
  v242 = &v207 - v21;
  __chkstk_darwin(v20);
  v23 = &v207 - v22;
  v237 = type metadata accessor for OwnedBeaconGroup(0);
  v229 = *(v237 - 8);
  v24 = __chkstk_darwin(v237);
  v210 = &v207 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v217 = &v207 - v27;
  v28 = __chkstk_darwin(v26);
  v208 = &v207 - v29;
  v30 = __chkstk_darwin(v28);
  v211 = &v207 - v31;
  v32 = __chkstk_darwin(v30);
  v228 = &v207 - v33;
  v34 = __chkstk_darwin(v32);
  v231 = &v207 - v35;
  v36 = __chkstk_darwin(v34);
  v225 = &v207 - v37;
  v38 = __chkstk_darwin(v36);
  v227 = &v207 - v39;
  v40 = __chkstk_darwin(v38);
  v224 = &v207 - v41;
  __chkstk_darwin(v40);
  v239 = &v207 - v42;
  v216 = type metadata accessor for MACAddress();
  v218 = *(v216 - 8);
  __chkstk_darwin(v216);
  v215 = &v207 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1000BC4D4(&qword_1016A04D0, &qword_1013A34A8);
  __chkstk_darwin(v44 - 8);
  v46 = (&v207 - v45);
  v47 = type metadata accessor for Device();
  v48 = *(v47 - 8);
  v49 = __chkstk_darwin(v47);
  v241 = &v207 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __chkstk_darwin(v49);
  v209 = &v207 - v52;
  __chkstk_darwin(v51);
  v54 = &v207 - v53;
  sub_100447E44(a1, v46);
  v55 = sub_1000BC4D4(&qword_1016A04D8, &qword_1013A34B0);
  if ((*(*(v55 - 8) + 48))(v46, 1, v55) == 1)
  {
    sub_10000B3A8(v46, &qword_1016A04D0, &qword_1013A34A8);
    if (qword_1016946F0 == -1)
    {
LABEL_3:
      v56 = type metadata accessor for Logger();
      sub_1000076D4(v56, qword_10177AD08);
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&_mh_execute_header, v57, v58, "Unable to sanitize MAC address for beacon group cleanup", v59, 2u);
      }

      return;
    }

LABEL_144:
    swift_once();
    goto LABEL_3;
  }

  v60 = *(v55 + 48);
  v213 = v48;
  v61 = *(v48 + 32);
  v212 = v47;
  v61(v54, v46 + v60, v47);
  v62 = *(v1 + 16);
  v63 = v215;
  v214 = v54;
  Device.btAddress.getter();
  v226 = v62;
  v64 = sub_100AC607C(v63);
  v65 = *(v218 + 8);
  v218 += 8;
  v65(v63, v216);
  v235 = v64[2];
  v207 = v65;
  if (v235 >= 2)
  {
    v234 = v64;
    v66 = 0;
    v240 = v19 + 2;
    v230 = _swiftEmptyArrayStorage;
    v67 = v242;
    do
    {
      if (v66 >= v234[2])
      {
        goto LABEL_132;
      }

      v236 = (*(v229 + 80) + 32) & ~*(v229 + 80);
      v241 = *(v229 + 72);
      v232 = v234 + v236;
      v238 = v66;
      v70 = v239;
      sub_10046A814(v234 + v236 + v241 * v66, v239, type metadata accessor for OwnedBeaconGroup);
      v71 = *(v70 + *(v237 + 40));
      v72 = *(v71 + 16);
      if (*(v70 + *(v237 + 32)) == 1)
      {
        if (v72)
        {
          v73 = sub_1003A8624(*(v71 + 16), 0);
          v74 = sub_1003A9374(&v246, v73 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v72, v71);
          v75 = v246;
          v222 = v247;
          v221 = v248;
          v220 = v249;

          sub_1000128F8(v75);
          if (v74 != v72)
          {
            goto LABEL_135;
          }
        }

        else
        {
          v73 = _swiftEmptyArrayStorage;
        }

        v84 = 0;
        v85 = v73[2];
        while (1)
        {
          if (v85 == v84)
          {
            v68 = v233;
            v67 = v242;
            goto LABEL_10;
          }

          if (v84 >= v73[2])
          {
            goto LABEL_130;
          }

          sub_10046A814(v73 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v84, v23, type metadata accessor for OwnedBeaconGroup.PairingState);
          v86 = v243;
          sub_10046A814(v23, v243, type metadata accessor for OwnedBeaconGroup.PairingState);
          if (!swift_getEnumCaseMultiPayload())
          {
            break;
          }

          ++v84;
          sub_10046B858(v86, type metadata accessor for OwnedBeaconGroup.PairingState);
          v87 = v245;
          swift_storeEnumTagMultiPayload();
          v88 = sub_100524658(v23, v87);
          sub_10046B858(v87, type metadata accessor for OwnedBeaconGroup.PairingState);
          sub_10046B858(v23, type metadata accessor for OwnedBeaconGroup.PairingState);
          if (v88)
          {

            goto LABEL_45;
          }
        }

        sub_10046B858(v23, type metadata accessor for OwnedBeaconGroup.PairingState);

        sub_10046B858(v86, type metadata accessor for OwnedBeaconGroup.PairingState);
LABEL_45:
        v67 = v242;
LABEL_46:
        sub_10046B7F0(v239, v227, type metadata accessor for OwnedBeaconGroup);
        v93 = v230;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v250 = v93;
        v68 = v233;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_101124940(0, *(v93 + 2) + 1, 1);
          v93 = v250;
        }

        v95 = v236;
        v97 = *(v93 + 2);
        v96 = *(v93 + 3);
        if (v97 >= v96 >> 1)
        {
          sub_101124940((v96 > 1), v97 + 1, 1);
          v95 = v236;
          v93 = v250;
        }

        *(v93 + 2) = v97 + 1;
        v230 = v93;
        sub_10046B7F0(v227, &v93[v95 + v97 * v241], type metadata accessor for OwnedBeaconGroup);
      }

      else
      {
        if (v72)
        {
          sub_1000BC4D4(&qword_10169EF68, &unk_10139FC78);
          v76 = *(v4 + 72);
          v77 = (*(v4 + 80) + 32) & ~*(v4 + 80);
          v78 = swift_allocObject();
          v79 = j__malloc_size(v78);
          if (!v76)
          {
            goto LABEL_136;
          }

          if (v79 - v77 == 0x8000000000000000 && v76 == -1)
          {
            goto LABEL_141;
          }

          v78[2] = v72;
          v78[3] = 2 * ((v79 - v77) / v76);
          v81 = sub_1003A9374(&v246, v78 + v77, v72, v71);
          v82 = v246;
          v222 = v247;
          v221 = v248;
          v220 = v249;

          sub_1000128F8(v82);
          if (v81 != v72)
          {
            goto LABEL_137;
          }

          v67 = v242;
          v83 = v78[2];
          if (v83)
          {
LABEL_34:
            v89 = 0;
            v90 = v78 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
            while (v89 < v78[2])
            {
              sub_10046A814(&v90[*(v4 + 72) * v89], v67, type metadata accessor for OwnedBeaconGroup.PairingState);
              sub_10046B7F0(v67, v19, type metadata accessor for OwnedBeaconGroup.PairingState);
              if (swift_getEnumCaseMultiPayload())
              {
                sub_10046B858(v19, type metadata accessor for OwnedBeaconGroup.PairingState);
              }

              else
              {
                v91 = sub_1000BC4D4(&qword_1016A4230, &unk_101391950);
                v92 = v240[*(v91 + 48)];
                if (v92 == 3)
                {
                  sub_10000B3A8(v19, &qword_1016A40D0, &unk_10138BE70);
                  v67 = v242;
                }

                else
                {
                  sub_10000B3A8(v19, &qword_1016A40D0, &unk_10138BE70);
                  v67 = v242;
                  if (v92 == 2)
                  {

                    goto LABEL_46;
                  }
                }
              }

              if (v83 == ++v89)
              {
                goto LABEL_9;
              }
            }

            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
            goto LABEL_134;
          }
        }

        else
        {
          v78 = _swiftEmptyArrayStorage;
          v83 = _swiftEmptyArrayStorage[2];
          if (v83)
          {
            goto LABEL_34;
          }
        }

LABEL_9:
        v68 = v233;
LABEL_10:

        sub_10046B858(v239, type metadata accessor for OwnedBeaconGroup);
      }

      v66 = v238 + 1;
    }

    while (v238 + 1 != v235);
    v117 = v230;
    v118 = *(v230 + 2);
    v119 = v225;
    v120 = v224;
    if (!v118)
    {
LABEL_64:

      v132 = 0;
      *&v243 = v68 + 2;
      v133 = _swiftEmptyArrayStorage;
      v134 = v223;
      v135 = v234;
      while (v132 < v135[2])
      {
        v242 = v133;
        v240 = v132;
        v136 = v231;
        sub_10046A814(&v232[v241 * v132], v231, type metadata accessor for OwnedBeaconGroup);
        v137 = *(v136 + *(v237 + 40));
        v138 = *(v137 + 16);
        if (*(v136 + *(v237 + 32)) == 1)
        {
          if (v138)
          {
            v139 = sub_1003A8624(*(v137 + 16), 0);
            v140 = sub_1003A9374(&v246, v139 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v138, v137);
            v141 = v246;
            v239 = v249;

            sub_1000128F8(v141);
            if (v140 != v138)
            {
              goto LABEL_138;
            }

            v134 = v223;
          }

          else
          {
            v139 = _swiftEmptyArrayStorage;
          }

          v149 = 0;
          v150 = v139[2];
          v151 = v219;
          while (v150 != v149)
          {
            if (v149 >= v139[2])
            {
              goto LABEL_131;
            }

            sub_10046A814(v139 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v149, v151, type metadata accessor for OwnedBeaconGroup.PairingState);
            sub_10046A814(v151, v134, type metadata accessor for OwnedBeaconGroup.PairingState);
            if (!swift_getEnumCaseMultiPayload())
            {
              sub_10046B858(v151, type metadata accessor for OwnedBeaconGroup.PairingState);

              sub_10046B858(v134, type metadata accessor for OwnedBeaconGroup.PairingState);
              goto LABEL_66;
            }

            ++v149;
            sub_10046B858(v134, type metadata accessor for OwnedBeaconGroup.PairingState);
            v152 = v245;
            swift_storeEnumTagMultiPayload();
            v153 = sub_100524658(v151, v152);
            sub_10046B858(v152, type metadata accessor for OwnedBeaconGroup.PairingState);
            sub_10046B858(v151, type metadata accessor for OwnedBeaconGroup.PairingState);
            if (v153)
            {
              goto LABEL_98;
            }
          }
        }

        else
        {
          if (v138)
          {
            sub_1000BC4D4(&qword_10169EF68, &unk_10139FC78);
            v142 = *(v4 + 72);
            v143 = (*(v4 + 80) + 32) & ~*(v4 + 80);
            v144 = swift_allocObject();
            v145 = j__malloc_size(v144);
            if (!v142)
            {
              goto LABEL_139;
            }

            if (v145 - v143 == 0x8000000000000000 && v142 == -1)
            {
              goto LABEL_143;
            }

            v144[2] = v138;
            v144[3] = 2 * ((v145 - v143) / v142);
            v147 = sub_1003A9374(&v246, v144 + v143, v138, v137);
            v148 = v246;
            v239 = v249;

            sub_1000128F8(v148);
            if (v147 != v138)
            {
              goto LABEL_140;
            }

            v134 = v223;
          }

          else
          {
            v144 = _swiftEmptyArrayStorage;
          }

          v154 = v144[2];
          v155 = v233;
          if (v154)
          {
            v156 = 0;
            v157 = v144 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
            while (v156 < v144[2])
            {
              v158 = v244;
              sub_10046A814(&v157[*(v4 + 72) * v156], v244, type metadata accessor for OwnedBeaconGroup.PairingState);
              sub_10046B7F0(v158, v155, type metadata accessor for OwnedBeaconGroup.PairingState);
              if (swift_getEnumCaseMultiPayload())
              {
                sub_10046B858(v155, type metadata accessor for OwnedBeaconGroup.PairingState);
              }

              else
              {
                v159 = sub_1000BC4D4(&qword_1016A4230, &unk_101391950);
                v160 = *(v243 + *(v159 + 48));
                if (v160 == 3)
                {
                  sub_10000B3A8(v155, &qword_1016A40D0, &unk_10138BE70);
                }

                else
                {
                  sub_10000B3A8(v155, &qword_1016A40D0, &unk_10138BE70);
                  if (v160 == 2)
                  {
LABEL_98:

LABEL_66:
                    sub_10046B858(v231, type metadata accessor for OwnedBeaconGroup);
                    v135 = v234;
                    v133 = v242;
                    goto LABEL_67;
                  }
                }
              }

              if (v154 == ++v156)
              {
                goto LABEL_99;
              }
            }

            goto LABEL_129;
          }
        }

LABEL_99:

        sub_10046B7F0(v231, v228, type metadata accessor for OwnedBeaconGroup);
        v133 = v242;
        v161 = swift_isUniquelyReferenced_nonNull_native();
        v250 = v133;
        v135 = v234;
        if ((v161 & 1) == 0)
        {
          sub_101124940(0, *(v133 + 2) + 1, 1);
          v133 = v250;
        }

        v162 = v236;
        v164 = *(v133 + 2);
        v163 = *(v133 + 3);
        if (v164 >= v163 >> 1)
        {
          sub_101124940((v163 > 1), v164 + 1, 1);
          v162 = v236;
          v133 = v250;
        }

        *(v133 + 2) = v164 + 1;
        sub_10046B7F0(v228, &v133[v162 + v164 * v241], type metadata accessor for OwnedBeaconGroup);
LABEL_67:
        v132 = v240 + 1;
        if (v240 + 1 == v235)
        {

          if (*(v133 + 2) <= 1uLL)
          {

            v191 = v213;
            v102 = v212;
            if (qword_1016950D0 != -1)
            {
              swift_once();
            }

            v192 = type metadata accessor for Logger();
            sub_1000076D4(v192, qword_10177C418);
            v193 = v209;
            v194 = v214;
            (*(v191 + 16))(v209, v214, v102);
            v103 = Logger.logObject.getter();
            v104 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v103, v104))
            {
              v107 = swift_slowAlloc();
              v108 = swift_slowAlloc();
              v246 = v108;
              *v107 = 141558275;
              *(v107 + 4) = 1752392040;
              *(v107 + 12) = 2081;
              v195 = v215;
              Device.btAddress.getter();
              sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
              v196 = v216;
              v197 = dispatch thunk of CustomStringConvertible.description.getter();
              v198 = v196;
              v200 = v199;
              v207(v195, v198);
              v114 = *(v191 + 8);
              v114(v193, v102);
              v201 = sub_1000136BC(v197, v200, &v246);

              *(v107 + 14) = v201;
              v116 = "No more than one complete beacon group matching %{private,mask.hash}s.";
              goto LABEL_120;
            }

            v202 = *(v191 + 8);
            v202(v193, v102);
            v202(v194, v102);
            return;
          }

          v246 = v133;

          sub_100460728(&v246);
          v165 = v213;
          v166 = v212;
          v167 = v214;
          v168 = v210;
          if (!v246[2])
          {

            if (qword_1016950D0 != -1)
            {
              swift_once();
            }

            v203 = type metadata accessor for Logger();
            sub_1000076D4(v203, qword_10177C418);
            v204 = Logger.logObject.getter();
            v205 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v204, v205))
            {
              v206 = swift_slowAlloc();
              *v206 = 0;
              _os_log_impl(&_mh_execute_header, v204, v205, "Unable to extract the most recent beacon group!", v206, 2u);
            }

            (*(v165 + 8))(v167, v166);
            return;
          }

          v169 = v236;
          v170 = v208;
          sub_10046A814(v246 + v236, v208, type metadata accessor for OwnedBeaconGroup);

          v171 = v211;
          v172 = sub_10046B7F0(v170, v211, type metadata accessor for OwnedBeaconGroup);
          __chkstk_darwin(v172);
          *(&v207 - 2) = v171;
          v173 = sub_10013D56C(sub_1004681E4, (&v207 - 4), v133);
          v175 = v173;
          v176 = v217;
          v245 = v173[2];
          if (!v245)
          {
LABEL_121:
            (*(v165 + 8))(v167, v166);

            sub_10046B858(v211, type metadata accessor for OwnedBeaconGroup);
            return;
          }

          v177 = 0;
          v178 = v173 + v169;
          *&v174 = 136315138;
          v244 = v174;
          while (v177 < v175[2])
          {
            sub_10046A814(v178, v176, type metadata accessor for OwnedBeaconGroup);
            if (qword_1016950D0 != -1)
            {
              swift_once();
            }

            v180 = type metadata accessor for Logger();
            sub_1000076D4(v180, qword_10177C418);
            sub_10046A814(v176, v168, type metadata accessor for OwnedBeaconGroup);
            v181 = Logger.logObject.getter();
            v182 = v168;
            v183 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v181, v183))
            {
              v184 = swift_slowAlloc();
              v185 = swift_slowAlloc();
              v246 = v185;
              *v184 = v244;
              v186 = sub_10051F7B0();
              v188 = v187;
              sub_10046B858(v182, type metadata accessor for OwnedBeaconGroup);
              v189 = sub_1000136BC(v186, v188, &v246);

              *(v184 + 4) = v189;
              _os_log_impl(&_mh_execute_header, v181, v183, "Clean up older complete beacon group %s", v184, 0xCu);
              sub_100007BAC(v185);

              v167 = v214;
              v166 = v212;
              v165 = v213;
            }

            else
            {

              sub_10046B858(v182, type metadata accessor for OwnedBeaconGroup);
            }

            v168 = v182;
            ++v177;
            v179 = v217;
            sub_100B92BA4(v217);
            v176 = v179;
            sub_10046B858(v179, type metadata accessor for OwnedBeaconGroup);
            v178 += v241;
            if (v245 == v177)
            {
              goto LABEL_121;
            }
          }

          goto LABEL_142;
        }
      }

      goto LABEL_133;
    }

    v121 = 0;
    v122 = &v230[v236];
    *&v69 = 136315138;
    v243 = v69;
    v242 = v118;
    while (v121 < *(v117 + 2))
    {
      sub_10046A814(v122, v120, type metadata accessor for OwnedBeaconGroup);
      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v123 = type metadata accessor for Logger();
      sub_1000076D4(v123, qword_10177C418);
      sub_10046A814(v120, v119, type metadata accessor for OwnedBeaconGroup);
      v124 = Logger.logObject.getter();
      v125 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        v246 = swift_slowAlloc();
        v127 = v246;
        *v126 = v243;
        v128 = sub_10051F7B0();
        v130 = v129;
        sub_10046B858(v225, type metadata accessor for OwnedBeaconGroup);
        v131 = sub_1000136BC(v128, v130, &v246);
        v119 = v225;

        *(v126 + 4) = v131;
        _os_log_impl(&_mh_execute_header, v124, v125, "Clean up incomplete beacon group %s", v126, 0xCu);
        sub_100007BAC(v127);
        v118 = v242;

        v68 = v233;
      }

      else
      {

        sub_10046B858(v119, type metadata accessor for OwnedBeaconGroup);
      }

      ++v121;
      v120 = v224;
      sub_100B92BA4(v224);
      sub_10046B858(v120, type metadata accessor for OwnedBeaconGroup);
      v122 += v241;
      v117 = v230;
      if (v118 == v121)
      {
        goto LABEL_64;
      }
    }

LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v98 = type metadata accessor for Logger();
  sub_1000076D4(v98, qword_10177C418);
  v99 = v213;
  v100 = v241;
  v101 = v214;
  v102 = v212;
  (*(v213 + 16))(v241, v214, v212);
  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.default.getter();
  v105 = os_log_type_enabled(v103, v104);
  v106 = v216;
  if (v105)
  {
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v246 = v108;
    *v107 = 141558275;
    *(v107 + 4) = 1752392040;
    *(v107 + 12) = 2081;
    v109 = v215;
    Device.btAddress.getter();
    sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v110 = dispatch thunk of CustomStringConvertible.description.getter();
    v111 = v106;
    v113 = v112;
    v207(v109, v111);
    v114 = *(v99 + 8);
    v114(v100, v102);
    v115 = sub_1000136BC(v110, v113, &v246);

    *(v107 + 14) = v115;
    v116 = "No more than one beacon group matching %{private,mask.hash}s.";
LABEL_120:
    _os_log_impl(&_mh_execute_header, v103, v104, v116, v107, 0x16u);
    sub_100007BAC(v108);

    v114(v214, v102);
  }

  else
  {

    v190 = *(v99 + 8);
    v190(v100, v102);
    v190(v101, v102);
  }
}

BOOL sub_1004527C8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for OwnedBeaconGroup(0);
  type metadata accessor for UUID();
  sub_100019D54(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

uint64_t sub_100452870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a1;
  v56 = a2;
  v3 = type metadata accessor for UUID();
  v57 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v55 - v7;
  v9 = type metadata accessor for MACAddress();
  v65 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Device();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_1016A04C8, &unk_1013DD710);
  unsafeFromAsyncTask<A>(_:)();
  if (v2)
  {
    if (qword_1016950D0 == -1)
    {
LABEL_3:
      v16 = type metadata accessor for Logger();
      sub_1000076D4(v16, qword_10177C418);
      swift_errorRetain();
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v73 = v21;
        *v19 = 136315394;
        *(v19 + 4) = sub_1000136BC(0xD000000000000015, 0x8000000101354C00, &v73);
        *(v19 + 12) = 2114;
        swift_errorRetain();
        v22 = _swift_stdlib_bridgeErrorToNSError();
        *(v19 + 14) = v22;
        *v20 = v22;
        _os_log_impl(&_mh_execute_header, v17, v18, "%s Unable to retrieve paired devices %{public}@", v19, 0x16u);
        sub_10000B3A8(v20, &qword_10169BB30, &unk_10138B3C0);

        sub_100007BAC(v21);
      }

      return swift_willThrow();
    }

LABEL_21:
    swift_once();
    goto LABEL_3;
  }

  v70 = v15;
  v71 = v13;
  v59 = v8;
  v60 = v6;
  v61 = v3;
  v62 = v9;
  v69 = v11;
  v24 = v73;
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_1000076D4(v25, qword_10177AD08);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  v28 = os_log_type_enabled(v26, v27);
  v29 = v70;
  if (v28)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v73 = v31;
    *v30 = 134218242;
    *(v30 + 4) = *(v24 + 16);

    *(v30 + 12) = 2080;
    v32 = Array.description.getter();
    v72 = sub_1000136BC(v32, v33, &v73);

    *(v30 + 14) = v72;
    _os_log_impl(&_mh_execute_header, v26, v27, "All paired devices [%ld]: %s", v30, 0x16u);
    sub_100007BAC(v31);
  }

  else
  {
  }

  v34 = v69;
  v72 = 0;
  v68 = *(v24 + 16);
  if (v68)
  {
    v35 = 0;
    v58 = OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject;
    v67 = v24 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
    ++v65;
    v66 = v71 + 16;
    v64 = *(v64 + 32);
    ++v57;
    v36 = (v71 + 8);
    v37 = v62;
    while (v35 < *(v24 + 16))
    {
      v38 = v12;
      (*(v71 + 16))(v29, v67 + *(v71 + 72) * v35, v12);
      v39 = Device.btAddress.getter();
      __chkstk_darwin(v39);
      *(&v55 - 2) = v34;
      *(&v55 - 1) = v40;
      sub_1000BC4D4(&unk_1016A6370, &unk_101391AA0);
      v41 = v72;
      Lock.callAsFunction<A>(_:)();
      v72 = v41;
      v42 = v73;
      (*v65)(v34, v37);
      if (v42)
      {
        v43 = [*&v42[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject] identifier];
        v44 = v59;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v45 = [*(v63 + v58) identifier];
        v46 = v60;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v45) = static UUID.== infix(_:_:)();
        v47 = *v57;
        v48 = v46;
        v49 = v61;
        (*v57)(v48, v61);
        v50 = v44;
        v37 = v62;
        v47(v50, v49);
        if (v45)
        {

          v51 = v71;
          v52 = v56;
          v12 = v38;
          (*(v71 + 32))(v56, v70, v38);
          v53 = v52;
          v54 = 0;
          return (*(v51 + 56))(v53, v54, 1, v12);
        }
      }

      ++v35;
      v29 = v70;
      v12 = v38;
      (*v36)(v70, v38);
      v34 = v69;
      if (v68 == v35)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_18:

  v54 = 1;
  v53 = v56;
  v51 = v71;
  return (*(v51 + 56))(v53, v54, 1, v12);
}

id *sub_100453028()
{

  return v0;
}

uint64_t sub_1004530E0()
{
  sub_100453028();

  return swift_deallocClassInstance();
}

unint64_t sub_10045314C()
{
  result = qword_1016A04B8;
  if (!qword_1016A04B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A04B8);
  }

  return result;
}

uint64_t sub_1004531A0@<X0>(uint64_t a1@<X8>)
{
  _StringGuts.grow(_:)(18);

  *&v12[0] = 0xD000000000000010;
  *(&v12[0] + 1) = 0x8000000101354BE0;
  v2._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v2);

  v3 = [objc_opt_self() standardUserDefaults];
  v4 = String._bridgeToObjectiveC()();

  v5 = [v3 valueForKey:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    v6 = type metadata accessor for Date();
    v7 = swift_dynamicCast();
    return (*(*(v6 - 8) + 56))(a1, v7 ^ 1u, 1, v6);
  }

  else
  {
    sub_10000B3A8(v12, &unk_1016A0B10, &qword_10139BF40);
    v9 = type metadata accessor for Date();
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }
}

uint64_t sub_100453380(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v164 = a3;
  v165 = a2;
  v146 = *v5;
  v145 = type metadata accessor for BeaconIdentifier(0);
  __chkstk_darwin(v145);
  v148 = &v139 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v9 - 8);
  v147 = &v139 - v10;
  v160 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v159 = *(v160 - 8);
  __chkstk_darwin(v160);
  v144 = &v139 - v11;
  v157 = sub_1000BC4D4(&unk_1016AF8A0, &unk_10139D7C0);
  v12 = __chkstk_darwin(v157);
  v158 = &v139 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v161 = &v139 - v14;
  v15 = type metadata accessor for OwnedBeaconGroup(0);
  v153 = *(v15 - 8);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v139 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = v17;
  __chkstk_darwin(v16);
  v155 = &v139 - v19;
  v20 = type metadata accessor for Endianness();
  __chkstk_darwin(v20 - 8);
  v177 = &v139 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = type metadata accessor for StableIdentifier(0);
  v22 = __chkstk_darwin(v185);
  v191 = &v139 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v190 = &v139 - v24;
  v184 = type metadata accessor for SystemInfo.DeviceLockState();
  v189 = *(v184 - 8);
  v25 = __chkstk_darwin(v184);
  v183 = &v139 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v182 = &v139 - v27;
  v28 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v28 - 8);
  v181 = &v139 - v29;
  v30 = type metadata accessor for UUID();
  v187 = *(v30 - 8);
  v188 = v30;
  __chkstk_darwin(v30);
  v32 = &v139 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for OwnedBeaconRecord(0);
  v192 = *(v33 - 8);
  v193 = v33;
  v34 = __chkstk_darwin(v33);
  v152 = &v139 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v178 = &v139 - v37;
  v38 = __chkstk_darwin(v36);
  v151 = &v139 - v39;
  v40 = __chkstk_darwin(v38);
  v42 = &v139 - v41;
  v43 = __chkstk_darwin(v40);
  v163 = &v139 - v44;
  v45 = __chkstk_darwin(v43);
  v162 = &v139 - v46;
  v47 = __chkstk_darwin(v45);
  v149 = &v139 - v48;
  v150 = v49;
  __chkstk_darwin(v47);
  v156 = &v139 - v50;
  v53 = *(v5 + 16);
  v51 = swift_allocObject();
  v51[2] = v5;
  v51[3] = a1;
  v51[4] = v53;

  v52 = a1;
  v179 = v53;

  unsafeFromAsyncTask<A>(_:)();

  LODWORD(v53) = v195;
  if (qword_101694940 != -1)
  {
    goto LABEL_63;
  }

LABEL_2:
  OS_dispatch_queue.sync<A>(execute:)();
  v180 = 0;
  v54 = sub_1010748C0(v195);

  if ((v54 & 1) == 0)
  {
    return result;
  }

  if (v53)
  {
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    sub_1000076D4(v56, qword_10177AD08);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v57, v58, "Checking if legacy LE force pair is needed when FMN is off", v59, 2u);
    }

    type metadata accessor for Transaction();
    v60 = swift_allocObject();
    *(v60 + 16) = v5;
    *(v60 + 24) = v52;

    v61 = v52;
    static Transaction.asyncTask(name:block:)();
  }

  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v142 = a4;
  v139 = v5;
  v62 = type metadata accessor for Logger();
  v141 = sub_1000076D4(v62, qword_10177AD08);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&_mh_execute_header, v63, v64, "Checking if legacy LE force pair is needed when we have a group and FMN is on", v65, 2u);
  }

  sub_100519FB0();
  v67 = v66;
  a4 = v66 + 56;
  v68 = 1 << *(v66 + 32);
  v69 = -1;
  if (v68 < 64)
  {
    v69 = ~(-1 << v68);
  }

  v5 = v69 & *(v66 + 56);
  v70 = (v68 + 63) >> 6;
  v174 = (v187 + 16);
  v172 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
  v171 = v189 + 13;
  v170 = (v189 + 1);
  v143 = (v192 + 56);
  v186 = (v187 + 8);
  v169 = (v192 + 48);

  v176 = v67;

  v53 = 0;
  v167 = xmmword_101385D80;
  v189 = _swiftEmptyArrayStorage;
  v140 = v18;
  v52 = v193;
  v173 = a4;
  v175 = v70;
  v168 = v42;
  v166 = v32;
LABEL_16:
  v71 = v53;
  if (!v5)
  {
    goto LABEL_18;
  }

  do
  {
    v53 = v71;
LABEL_21:
    (*(v187 + 2))(v32, *(v176 + 48) + *(v187 + 9) * (__clz(__rbit64(v5)) | (v53 << 6)), v188);
    v72 = static os_log_type_t.info.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v73 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v74 = swift_allocObject();
    *(v74 + 16) = v167;
    v75 = UUID.uuidString.getter();
    v77 = v76;
    *(v74 + 56) = &type metadata for String;
    *(v74 + 64) = sub_100008C00();
    *(v74 + 32) = v75;
    *(v74 + 40) = v77;
    os_log(_:dso:log:_:_:)(v72, &_mh_execute_header, v73, "ownedBeaconRecord(for uuid: %@)", 31, 2, v74);

    v78 = v182;
    static SystemInfo.lockState.getter();
    v18 = v183;
    v79 = v184;
    (*v171)(v183, v172, v184);
    sub_100019D54(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
    LOBYTE(v75) = dispatch thunk of static Equatable.== infix(_:_:)();
    v80 = *v170;
    (*v170)(v18, v79);
    v80(v78, v79);
    if (v75)
    {
      v81 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v81, &_mh_execute_header, v73, "ownedBeaconRecord call failed because in device is in beforeFirstUnlock state", 77, 2, _swiftEmptyArrayStorage);
      v82 = v181;
      v52 = v193;
      (*v143)(v181, 1, 1, v193);
      v32 = v166;
    }

    else
    {
      v83 = sub_100025044();
      __chkstk_darwin(v83);
      v32 = v166;
      *(&v139 - 2) = v166;
      v84 = v180;
      v82 = v181;
      sub_1012BBBD0(sub_100406F84, v83, v181);
      v180 = v84;

      v52 = v193;
    }

    v5 &= v5 - 1;
    (*v186)(v32, v188);
    v85 = (*v169)(v82, 1, v52);
    v70 = v175;
    v42 = v168;
    if (v85 != 1)
    {
      v86 = v82;
      v87 = v162;
      sub_10046B7F0(v86, v162, type metadata accessor for OwnedBeaconRecord);
      sub_10046B7F0(v87, v163, type metadata accessor for OwnedBeaconRecord);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v189 = sub_100A5C050(0, v189[2] + 1, 1, v189);
      }

      a4 = v173;
      v89 = v189[2];
      v88 = v189[3];
      if (v89 >= v88 >> 1)
      {
        v189 = sub_100A5C050((v88 > 1), v89 + 1, 1, v189);
      }

      v90 = v189;
      v189[2] = v89 + 1;
      sub_10046B7F0(v163, v90 + ((*(v192 + 80) + 32) & ~*(v192 + 80)) + *(v192 + 72) * v89, type metadata accessor for OwnedBeaconRecord);
      v70 = v175;
      goto LABEL_16;
    }

    sub_10000B3A8(v82, &unk_1016A9A20, &qword_10138B280);
    v71 = v53;
    a4 = v173;
  }

  while (v5);
  while (1)
  {
LABEL_18:
    v53 = v71 + 1;
    if (__OFADD__(v71, 1))
    {
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      swift_once();
      goto LABEL_2;
    }

    if (v53 >= v70)
    {
      break;
    }

    v5 = *(a4 + 8 * v53);
    ++v71;
    if (v5)
    {
      goto LABEL_21;
    }
  }

  a4 = v189[2];
  LODWORD(v53) = v185;
  if (a4)
  {
    v5 = 0;
    v91 = *(v192 + 80);
    v183 = ~v91;
    v184 = v91;
    v187 = v189 + ((v91 + 32) & ~v91);
    v32 = v191 + 8;
    do
    {
      if (v5 >= v189[2])
      {
        goto LABEL_62;
      }

      sub_10046A814(&v187[*(v192 + 72) * v5], v42, type metadata accessor for OwnedBeaconRecord);
      v92 = v52[6];
      v93 = v190;
      sub_10046A814(&v42[v92], v190, type metadata accessor for StableIdentifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_10046B858(v93, type metadata accessor for StableIdentifier);
      if (EnumCaseMultiPayload != 1)
      {
        sub_10046A814(&v42[v92], v191, type metadata accessor for StableIdentifier);
        v95 = swift_getEnumCaseMultiPayload();
        if (v95 == 2)
        {
          sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
        }

        else
        {
          if (v95 != 3)
          {
            sub_10046B858(v191, type metadata accessor for StableIdentifier);
            goto LABEL_37;
          }

          sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
        }

        (*v186)(v191, v188);
      }

      v96 = sub_100314604(*&v42[v52[16]], *&v42[v52[17]]);
      if (v97 >> 60 != 15)
      {
        v18 = v96;
        v98 = v97;
        v195 = sub_101129A64(&off_101608ED0);
        sub_100DE9B10(&v194, 8216);
        sub_100DE9B10(&v194, 8220);
        sub_100DE9B10(&v194, 8233);
        if (sub_100313A28(v18, v98) == 76)
        {
          v99 = v195;
          sub_100313B54(v18, v98);
          static Endianness.current.getter();
          sub_10012BF24();
          LODWORD(v53) = v185;
          FixedWidthInteger.init(data:ofEndianness:)();
          if (BYTE4(v194))
          {
            v100 = 0;
          }

          else
          {
            v100 = v194;
          }

          v101 = sub_10111F5D4(v100, v99);
          sub_100006654(v18, v98);
          v102 = v178;

          if (v101)
          {

            v106 = v42;
            v107 = v149;
            sub_10046B7F0(v106, v149, type metadata accessor for OwnedBeaconRecord);
            v108 = v156;
            sub_10046B7F0(v107, v156, type metadata accessor for OwnedBeaconRecord);
            v109 = v151;
            sub_10046A814(v108, v151, type metadata accessor for OwnedBeaconRecord);
            v110 = v155;
            sub_10046A814(v165, v155, type metadata accessor for OwnedBeaconGroup);
            sub_10046A814(v109, v102, type metadata accessor for OwnedBeaconRecord);
            sub_10046A814(v110, v140, type metadata accessor for OwnedBeaconGroup);
            v111 = (v184 + 16) & v183;
            v190 = v184 | 7;
            v191 = (v111 + v150);
            v112 = (v111 + v150 + 7) & 0xFFFFFFFFFFFFFFF8;
            v113 = (v112 + *(v153 + 80) + 8) & ~*(v153 + 80);
            v114 = (v154 + v113 + 7) & 0xFFFFFFFFFFFFFFF8;
            v115 = swift_allocObject();
            sub_10046B7F0(v109, v115 + v111, type metadata accessor for OwnedBeaconRecord);
            v116 = v139;
            *(v115 + v112) = v139;
            sub_10046B7F0(v110, v115 + v113, type metadata accessor for OwnedBeaconGroup);
            v192 = v115;
            v117 = (v115 + v114);
            v118 = v108;
            v119 = v164;
            v120 = v142;
            *v117 = v164;
            v117[1] = v120;
            v121 = v108;
            v122 = v152;
            sub_10046A814(v121, v152, type metadata accessor for OwnedBeaconRecord);
            v123 = v116;
            v124 = swift_allocObject();
            sub_10046B7F0(v122, v124 + v111, type metadata accessor for OwnedBeaconRecord);

            v125 = v161;
            unsafeFromAsyncTask<A>(_:)();

            v126 = v158;
            sub_1000D2A70(v125, v158, &unk_1016AF8A0, &unk_10139D7C0);
            v127 = v160;
            if ((*(v159 + 48))(v126, 1, v160) == 1)
            {
              sub_10000B3A8(v126, &unk_1016AF8A0, &unk_10139D7C0);
              sub_100468184();
              v128 = swift_allocError();
              *v129 = 0;
              v130 = v178;
              v131 = v140;
              sub_100454AF8(v128, 1, v178, v123, v140, v119);

              sub_10000B3A8(v125, &unk_1016AF8A0, &unk_10139D7C0);
              sub_10046B858(v131, type metadata accessor for OwnedBeaconGroup);
              sub_10046B858(v130, type metadata accessor for OwnedBeaconRecord);
            }

            else
            {
              sub_10046B858(v140, type metadata accessor for OwnedBeaconGroup);
              sub_10046B858(v178, type metadata accessor for OwnedBeaconRecord);
              v132 = v144;
              sub_1000D2AD8(v126, v144, &unk_1016C8FC0, &unk_10139D7D0);
              v133 = v193;
              v134 = v193[5];
              v135 = v147;
              v136 = v127;
              sub_1004531A0(v147);
              v137 = v148;
              (*v174)(&v148[*(v145 + 20)], v118 + v134, v188);
              v138 = getuid();
              sub_1000294F0(v138);
              sub_100469990(v137, v132 + *(v136 + 36), v118 + v133[8], v135, sub_100469790, v192);

              sub_10046B858(v137, type metadata accessor for BeaconIdentifier);
              sub_10000B3A8(v135, &unk_101696900, &unk_10138B1E0);
              sub_10000B3A8(v132, &unk_1016C8FC0, &unk_10139D7D0);
              sub_10000B3A8(v125, &unk_1016AF8A0, &unk_10139D7C0);
            }

            return sub_10046B858(v118, type metadata accessor for OwnedBeaconRecord);
          }
        }

        else
        {
          sub_100006654(v18, v98);
        }
      }

LABEL_37:
      ++v5;
      sub_10046B858(v42, type metadata accessor for OwnedBeaconRecord);
      v52 = v193;
    }

    while (a4 != v5);
  }

  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    *v105 = 0;
    _os_log_impl(&_mh_execute_header, v103, v104, "Not legacy LE force pairing, it's not alphawasp", v105, 2u);
  }

  return v164();
}

void sub_100454AF8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v38 = a5;
  v39 = a3;
  v41 = a2;
  v9 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v37 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v40 = sub_1000076D4(v16, qword_10177AD08);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v37 = a4;
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Starting legacy LE force pairing", v19, 2u);
  }

  if (v41)
  {
    v42 = a1;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    swift_willThrowTypedImpl();
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    sub_1000BB584(a1, 1);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = _convertErrorToNSError(_:)();
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&_mh_execute_header, v20, v21, "legacy LE forcePair error: %@", v22, 0xCu);
      sub_10000B3A8(v23, &qword_10169BB30, &unk_10138B3C0);

      sub_1000BB584(a1, 1);
    }

    else
    {

      sub_1000BB584(a1, 1);
    }
  }

  else if (a1)
  {
    v25 = type metadata accessor for OwnedBeaconRecord(0);
    (*(v13 + 16))(v15, v39 + *(v25 + 20), v12);
    v26 = sub_100D605C4();
    if (v27 >> 60 == 15)
    {
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "Invalid serial number. Cannot force pair!", v30, 2u);
      }
    }

    else
    {
      v34 = v26;
      v35 = v27;
      sub_100456B10(v26, v27, v38, sub_100455038, 0);
      static Date.trustedNow.getter(v11);
      v36 = type metadata accessor for Date();
      (*(*(v36 - 8) + 56))(v11, 0, 1, v36);
      sub_100466E88(v15, v11);
      sub_10000B3A8(v11, &unk_101696900, &unk_10138B1E0);
      sub_100006654(v34, v35);
    }

    (*(v13 + 8))(v15, v12);
  }

  else
  {
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Should not legacy LE force pair", v33, 2u);
    }

    a6();
  }
}

void sub_100455058(uint64_t a1, char a2, uint64_t (*a3)(void), const char *a4)
{
  if (a2)
  {
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    swift_willThrowTypedImpl();
  }

  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177AD08);
  v7 = Logger.logObject.getter();
  v8 = a3();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a4, v9, 2u);
  }
}

uint64_t sub_100455170(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_100455204;

  return daemon.getter();
}

uint64_t sub_100455204(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 40) = a1;

  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_100019D54(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100019D54(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_1004553E0;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1004553E0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    return _swift_task_switch(sub_1004555A8, 0, 0);
  }

  else
  {
    v6 = v4[3];

    v4[7] = a1;
    v7 = type metadata accessor for OwnedBeaconRecord(0);
    v8 = *(v7 + 20);
    v9 = *(v7 + 32);
    v10 = swift_task_alloc();
    v4[8] = v10;
    *v10 = v5;
    v10[1] = sub_10045570C;
    v11 = v4[2];

    return sub_1010CD424(v11, v6 + v8, v6 + v9);
  }
}

uint64_t sub_1004555A8()
{
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177AD08);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing ObservationStoreService!", v4, 2u);
  }

  v5 = *(v0 + 16);
  v6 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10045570C()
{

  return _swift_task_switch(sub_100455808, 0, 0);
}

uint64_t sub_100455808()
{

  v1 = *(v0 + 16);
  v2 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1004558B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[9] = a4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  v8[17] = v10;
  v8[18] = *(v10 - 8);
  v8[19] = swift_task_alloc();
  sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v8[20] = swift_task_alloc();
  v11 = type metadata accessor for Date();
  v8[21] = v11;
  v8[22] = *(v11 - 8);
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v8[25] = type metadata accessor for BeaconIdentifier(0);
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  sub_1000BC4D4(&unk_10169BB50, &unk_101395760);
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v12 = swift_task_alloc();
  v8[30] = v12;
  *v12 = v8;
  v12[1] = sub_100455B2C;

  return daemon.getter();
}

uint64_t sub_100455B2C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 248) = a1;

  v3 = swift_task_alloc();
  *(v2 + 256) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_100019D54(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100019D54(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_100455D08;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100455D08(uint64_t a1)
{
  *(*v2 + 264) = a1;

  if (v1)
  {

    v3 = sub_100455E58;
  }

  else
  {

    v3 = sub_1004561D8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100455E58()
{
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177AD08);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing ObservationStoreService!", v4, 2u);
  }

  sub_100468184();
  v5 = swift_allocError();
  *v6 = 0;
  swift_willThrow();
  v7 = v0[16];
  v17 = v0[18];
  v18 = v0[17];
  v8 = v0[14];
  v16 = v0[15];
  v9 = v0[11];
  v10 = v0[12];
  v15 = v0[19];
  v11 = swift_allocObject();
  v11[2] = v5;
  v11[3] = v9;
  v11[4] = v10;
  v0[6] = sub_10046AA5C;
  v0[7] = v11;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100006684;
  v0[5] = &unk_10161DBA8;
  v12 = _Block_copy(v0 + 2);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  v0[8] = _swiftEmptyArrayStorage;
  sub_100019D54(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v16 + 8))(v7, v8);
  (*(v17 + 8))(v15, v18);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1004561D8()
{
  v1 = v0[27];
  v2 = v0[9];
  v3 = *(v0[25] + 20);
  v4 = type metadata accessor for UUID();
  v0[34] = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 16);
  v0[35] = v6;
  v0[36] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1 + v3, v2, v4);
  v7 = getuid();
  sub_1000294F0(v7);
  v8 = swift_task_alloc();
  v0[37] = v8;
  *v8 = v0;
  v8[1] = sub_1004562E4;
  v9 = v0[29];
  v10 = v0[27];

  return sub_1010CD810(v9, v10);
}

uint64_t sub_1004562E4()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  sub_10046B858(*(v2 + 216), type metadata accessor for BeaconIdentifier);
  if (v0)
  {
    v3 = sub_1004566FC;
  }

  else
  {
    v3 = sub_10045642C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10045642C()
{
  v1 = v0[28];
  sub_1000D2A70(v0[29], v1, &unk_10169BB50, &unk_101395760);
  v2 = type metadata accessor for ObservedAdvertisement(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = v0[28];
  if (v3 == 1)
  {
    v5 = v0[22];
    v6 = v0[9];
    sub_10000B3A8(v4, &unk_10169BB50, &unk_101395760);
    v7 = v6 + *(type metadata accessor for StandaloneBeacon(0) + 32);
    v8 = (v5 + 16);
  }

  else
  {
    v9 = v0[22];
    v10 = v4 + *(v2 + 44);
    v11 = v0[28];
    (*(v9 + 16))(v0[23], v10, v0[21]);
    sub_10046B858(v11, type metadata accessor for ObservedAdvertisement);
    v8 = (v9 + 32);
    v7 = v0[23];
  }

  v12 = v0[35];
  v13 = v0[34];
  v14 = v0[25];
  v15 = v0[26];
  v16 = v0[24];
  v17 = v0[22];
  v26 = v0[21];
  v27 = v0[29];
  v18 = v0[20];
  v25 = v0[12];
  v24 = v0[11];
  v19 = v0[9];
  (*v8)(v16, v7);
  sub_1004531A0(v18);
  v12(&v15[*(v14 + 20)], v19, v13);
  v20 = getuid();
  sub_1000294F0(v20);
  v21 = type metadata accessor for StandaloneBeacon(0);
  sub_100469990(v15, v16, v19 + *(v21 + 32), v18, v24, v25);

  sub_10046B858(v15, type metadata accessor for BeaconIdentifier);
  sub_10000B3A8(v18, &unk_101696900, &unk_10138B1E0);
  (*(v17 + 8))(v16, v26);
  sub_10000B3A8(v27, &unk_10169BB50, &unk_101395760);

  v22 = v0[1];

  return v22();
}

uint64_t sub_1004566FC()
{

  v1 = v0[38];
  v2 = v0[16];
  v12 = v0[18];
  v13 = v0[17];
  v3 = v0[14];
  v11 = v0[15];
  v4 = v0[11];
  v5 = v0[12];
  v10 = v0[19];
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v4;
  v6[4] = v5;
  v0[6] = sub_10046AA5C;
  v0[7] = v6;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100006684;
  v0[5] = &unk_10161DBA8;
  v7 = _Block_copy(v0 + 2);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  v0[8] = _swiftEmptyArrayStorage;
  sub_100019D54(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v7);

  (*(v11 + 8))(v2, v3);
  (*(v12 + 8))(v10, v13);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1004569A8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177AD08);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = _convertErrorToNSError(_:)();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error in shouldForcePair: %@", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
  }

  return a2(a1, 1);
}

uint64_t sub_100456B10(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a4;
  v26 = a5;
  v24 = a2;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v28 = *(v11 - 8);
  v29 = v11;
  __chkstk_darwin(v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OwnedBeaconGroup(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14 - 8);
  v27 = *(v5 + 48);
  sub_10046A814(a3, &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OwnedBeaconGroup);
  v17 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v18 = swift_allocObject();
  v18[2] = v5;
  v18[3] = a1;
  v19 = v24;
  v18[4] = v24;
  sub_10046B7F0(&v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for OwnedBeaconGroup);
  v20 = (v18 + ((v16 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  v21 = v26;
  *v20 = v25;
  v20[1] = v21;
  aBlock[4] = sub_10046A508;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10161D9C8;
  v22 = _Block_copy(aBlock);

  sub_100017D5C(a1, v19);

  static DispatchQoS.unspecified.getter();
  v31 = _swiftEmptyArrayStorage;
  sub_100019D54(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v30 + 8))(v10, v8);
  (*(v28 + 8))(v13, v29);
}

uint64_t sub_100456EE4(uint64_t a1, char *a2, char *a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v143 = a5;
  v144 = a6;
  v142 = a4;
  v9 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  __chkstk_darwin(v9 - 8);
  v135 = &v125 - v10;
  v11 = type metadata accessor for MACAddress();
  v139 = *(v11 - 8);
  v140 = v11;
  v12 = __chkstk_darwin(v11);
  v133 = &v125 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v131 = &v125 - v15;
  v132 = v16;
  __chkstk_darwin(v14);
  v138 = &v125 - v17;
  v18 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v18 - 8);
  v126 = &v125 - v19;
  v129 = sub_1000BC4D4(&qword_1016A04E0, &qword_1013A34C0);
  v128 = *(v129 - 8);
  __chkstk_darwin(v129);
  v127 = &v125 - v20;
  v141 = type metadata accessor for OwnedBeaconGroup(0);
  __chkstk_darwin(v141);
  v125 = &v125 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Endianness();
  __chkstk_darwin(v22 - 8);
  v134 = &v125 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for StableIdentifier(0);
  v25 = __chkstk_darwin(v24);
  v27 = (&v125 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v25);
  v29 = &v125 - v28;
  v30 = type metadata accessor for OwnedBeaconRecord(0);
  v31 = *(v30 - 1);
  __chkstk_darwin(v30);
  v33 = &v125 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = a1;
  v136 = a2;
  v137 = a3;
  v34 = sub_100AA372C(a2, a3);
  v35 = v34[2];
  if (v35)
  {
    v150 = v30[6];
    v36 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v130 = v34;
    v37 = v34 + v36;
    v146 = v27 + 8;
    v38 = _swiftEmptyArrayStorage;
    v39 = *(v31 + 72);
    v148 = v24;
    v149 = v39;
    v40 = v27;
    v147 = v27;
    while (1)
    {
      sub_10046A814(v37, v33, type metadata accessor for OwnedBeaconRecord);
      sub_10046A814(&v33[v150], v29, type metadata accessor for StableIdentifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_10046B858(v29, type metadata accessor for StableIdentifier);
      if (EnumCaseMultiPayload == 1)
      {
        goto LABEL_11;
      }

      sub_10046A814(&v33[v150], v40, type metadata accessor for StableIdentifier);
      v42 = swift_getEnumCaseMultiPayload();
      if (v42 == 2)
      {
        break;
      }

      if (v42 == 3)
      {
        sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

LABEL_10:

        v43 = type metadata accessor for UUID();
        (*(*(v43 - 8) + 8))(v40, v43);
LABEL_11:
        v44 = sub_100314604(*&v33[v30[16]], *&v33[v30[17]]);
        v46 = v45;
        sub_10046B858(v33, type metadata accessor for OwnedBeaconRecord);
        if (v46 >> 60 != 15)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v38 = sub_100A5CCC0(0, *(v38 + 2) + 1, 1, v38);
          }

          v48 = *(v38 + 2);
          v47 = *(v38 + 3);
          if (v48 >= v47 >> 1)
          {
            v38 = sub_100A5CCC0((v47 > 1), v48 + 1, 1, v38);
          }

          *(v38 + 2) = v48 + 1;
          v49 = &v38[16 * v48];
          *(v49 + 4) = v44;
          *(v49 + 5) = v46;
          v40 = v147;
        }

        goto LABEL_4;
      }

      sub_10046B858(v33, type metadata accessor for OwnedBeaconRecord);
      sub_10046B858(v40, type metadata accessor for StableIdentifier);
LABEL_4:
      v37 += v149;
      if (!--v35)
      {

        goto LABEL_19;
      }
    }

    sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

    goto LABEL_10;
  }

  v38 = _swiftEmptyArrayStorage;
LABEL_19:
  v51 = v141;
  v50 = v142;
  if (!*(v38 + 2))
  {

    v53 = 0;
    v52 = 0xF000000000000000;
LABEL_24:
    v54 = 1;
    goto LABEL_25;
  }

  v53 = *(v38 + 4);
  v52 = *(v38 + 5);
  sub_100017D5C(v53, v52);

  sub_100017D5C(v53, v52);
  if (sub_100313A28(v53, v52) != 76)
  {
    sub_100016590(v53, v52);
    goto LABEL_24;
  }

  sub_100313B54(v53, v52);
  static Endianness.current.getter();
  sub_10012BF24();
  FixedWidthInteger.init(data:ofEndianness:)();
  sub_100016590(v53, v52);
  v54 = BYTE4(v152[0]) | (LODWORD(v152[0]) != 8220);
LABEL_25:
  v55 = v145;
  My = type metadata accessor for Feature.FindMy();
  v152[3] = My;
  v152[4] = sub_100019D54(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v57 = sub_1000280DC(v152);
  (*(*(My - 8) + 104))(v57, enum case for Feature.FindMy.smilingWheel(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  v58 = sub_100007BAC(v152);
  if (My & 1) == 0 || (v54)
  {
    v68 = v50 + *(v51 + 28);
    __chkstk_darwin(v58);
    *(&v125 - 2) = v68;
    *(&v125 - 1) = v69;
    sub_1000BC4D4(&unk_1016A6370, &unk_101391AA0);
    Lock.callAsFunction<A>(_:)();
    v70 = v152[0];
    if (v152[0])
    {
      v71 = sub_100436F60(v152[0]);
      if (v71)
      {
        v72 = __chkstk_darwin(v71);
        *(&v125 - 4) = v72;
        *(&v125 - 3) = v68;
        v73 = v137;
        *(&v125 - 2) = v136;
        *(&v125 - 1) = v73;
        v149 = v72;
        sub_1000BC4D4(&qword_1016A04E8, &qword_1013A34C8);
        OS_dispatch_queue.sync<A>(execute:)();
        v151 = *(v55 + 48);
        v74 = v151;
        v75 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
        v76 = *(*(v75 - 8) + 56);
        v150 = v52;
        v77 = v126;
        v76(v126, 1, 1, v75);
        sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
        sub_1000041A4(&qword_1016A04F0, &qword_1016A04E8, &qword_1013A34C8, &protocol conformance descriptor for AnyPublisher<A, B>);
        sub_1004682F0();
        v78 = v74;
        v148 = v70;
        v79 = v127;
        Publisher.receive<A>(on:options:)();
        sub_10000B3A8(v77, &unk_1016B0FE0, &unk_101391980);

        v80 = swift_allocObject();
        swift_weakInit();
        v81 = swift_allocObject();
        v82 = v143;
        v83 = v144;
        v81[2] = v80;
        v81[3] = v82;
        v81[4] = v83;
        v84 = swift_allocObject();
        *(v84 + 16) = sub_10046A5A0;
        *(v84 + 24) = v81;
        sub_1000041A4(&qword_1016A04F8, &qword_1016A04E0, &qword_1013A34C0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

        v85 = v129;
        Publisher<>.sink(receiveValue:)();

        (*(v128 + 8))(v79, v85);
        swift_beginAccess();
        AnyCancellable.store(in:)();
        swift_endAccess();

        v86 = v53;
        v87 = v150;
        return sub_100006654(v86, v87);
      }

      if (qword_1016946F0 != -1)
      {
        swift_once();
      }

      v119 = type metadata accessor for Logger();
      sub_1000076D4(v119, qword_10177AD08);
      v120 = Logger.logObject.getter();
      v121 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v120, v121))
      {
        v122 = swift_slowAlloc();
        *v122 = 0;
        _os_log_impl(&_mh_execute_header, v120, v121, "Missing pairing manager to force pair!", v122, 2u);
      }

      sub_100468184();
      swift_allocError();
      *v123 = 0;
      v143();
    }

    else
    {
      if (qword_1016946F0 != -1)
      {
        swift_once();
      }

      v108 = type metadata accessor for Logger();
      sub_1000076D4(v108, qword_10177AD08);
      v109 = v125;
      sub_10046A814(v50, v125, type metadata accessor for OwnedBeaconGroup);
      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        v152[0] = v113;
        *v112 = 136446210;
        sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
        v114 = dispatch thunk of CustomStringConvertible.description.getter();
        v115 = v109;
        v117 = v116;
        sub_10046B858(v115, type metadata accessor for OwnedBeaconGroup);
        v118 = sub_1000136BC(v114, v117, v152);

        *(v112 + 4) = v118;
        _os_log_impl(&_mh_execute_header, v110, v111, "Missing peripheral for %{public}s to force pair!", v112, 0xCu);
        sub_100007BAC(v113);
      }

      else
      {

        sub_10046B858(v109, type metadata accessor for OwnedBeaconGroup);
      }

      sub_100468184();
      swift_allocError();
      *v124 = 0;
      v143();
    }

    v86 = v53;
    v87 = v52;
    return sub_100006654(v86, v87);
  }

  v59 = v135;
  sub_10051A590(v136, v137, v135);
  v61 = v139;
  v60 = v140;
  if ((*(v139 + 48))(v59, 1, v140) == 1)
  {
    sub_10000B3A8(v59, &qword_1016A40D0, &unk_10138BE70);
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    sub_1000076D4(v62, qword_10177AD08);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v63, v64, "Invalid state. No MAC address to start LE pairing", v65, 2u);
    }

    sub_100468184();
    swift_allocError();
    *v66 = 0;
    v143();
    sub_100006654(v53, v52);
  }

  else
  {
    v147 = *(v61 + 32);
    v148 = (v61 + 32);
    v147(v138, v59, v60);
    v88 = *(v51 + 28);
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v149 = v53;
    v150 = v52;
    v89 = type metadata accessor for Logger();
    sub_1000076D4(v89, qword_10177AD08);
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&_mh_execute_header, v90, v91, "Starting AirPods LE force pair using FindMyBluetooth", v92, 2u);
    }

    v146 = type metadata accessor for Transaction();
    v93 = v139;
    v94 = v140;
    v95 = *(v139 + 16);
    v96 = v131;
    v95(v131, v50 + v88, v140);
    v97 = v133;
    v95(v133, v138, v94);
    v98 = *(v93 + 80);
    v99 = (v98 + 24) & ~v98;
    v100 = (v132 + v98 + v99) & ~v98;
    v101 = v100 + v132;
    v102 = (v100 + v132) & 0xFFFFFFFFFFFFFFF8;
    v103 = swift_allocObject();
    *(v103 + 16) = v145;
    v104 = v96;
    v105 = v147;
    v147((v103 + v99), v104, v94);
    v105(v103 + v100, v97, v94);
    *(v103 + v101) = 0;
    v106 = v103 + v102;
    v107 = v144;
    *(v106 + 8) = v143;
    *(v106 + 16) = v107;

    static Transaction.asyncTask(name:block:)();

    sub_100006654(v149, v150);
    return (*(v93 + 8))(v138, v94);
  }
}

uint64_t sub_100458158(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void, void), uint64_t a5)
{
  v63 = a4;
  v7 = type metadata accessor for MACAddress();
  v62 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v58 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v55 - v10;
  v12 = sub_1000BC4D4(&qword_101699860, &qword_1013A34D0);
  __chkstk_darwin(v12 - 8);
  v14 = &v55 - v13;
  v15 = type metadata accessor for Device();
  v60 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v57 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v59 = &v55 - v18;
  v19 = type metadata accessor for UUID();
  __chkstk_darwin(v19 - 8);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v23 = result;
    v61 = v7;
    v56 = v15;
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000076D4(v24, qword_10177AD08);
    v25 = a1;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v55 = v23;
      v29 = v28;
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v25;
      *v30 = v25;
      v31 = v25;
      _os_log_impl(&_mh_execute_header, v26, v27, "LE Pairing completed for %@.", v29, 0xCu);
      sub_10000B3A8(v30, &qword_10169BB30, &unk_10138B3C0);

      v23 = v55;
    }

    v32 = [*&v25[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject] identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    sub_1001DE870(0, v21);
    swift_endAccess();
    sub_100A22DF0(v11);
    sub_10044DA44(v14);
    v33 = *(v62 + 8);
    v33(v11, v61);
    v34 = v60;
    v35 = v56;
    if ((*(v60 + 48))(v14, 1, v56) == 1)
    {
      sub_10000B3A8(v14, &qword_101699860, &qword_1013A34D0);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&_mh_execute_header, v36, v37, "No BT device from BluetoothManager after pairing. Need to unpair", v38, 2u);
      }

      v39 = v58;
      sub_100A22DF0(v58);
      sub_10043B150(v25, v39);
      v33(v39, v61);
    }

    else
    {
      v40 = v59;
      (*(v34 + 32))(v59, v14, v35);
      v41 = v57;
      (*(v34 + 16))(v57, v40, v35);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = v34;
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v55 = v23;
        v62 = a5;
        v47 = v46;
        v64[0] = v46;
        *v45 = 136315138;
        sub_100019D54(&unk_1016B7C90, &type metadata accessor for Device, &protocol conformance descriptor for Device);
        v48 = v43;
        v49 = dispatch thunk of CustomStringConvertible.description.getter();
        v51 = v50;
        v52 = *(v44 + 8);
        v52(v41, v35);
        v53 = sub_1000136BC(v49, v51, v64);

        *(v45 + 4) = v53;
        _os_log_impl(&_mh_execute_header, v42, v48, "Found BT device from BluetoothManager after pairing as expected. %s", v45, 0xCu);
        sub_100007BAC(v47);

        v52(v59, v35);
      }

      else
      {

        v54 = *(v34 + 8);
        v54(v41, v35);
        v54(v40, v35);
      }
    }

    v63(0, 0);
  }

  return result;
}

uint64_t sub_1004589B8(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v113 = a3;
  v114 = a4;
  v118 = a2;
  v5 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v5 - 8);
  v111 = &v104 - v6;
  v7 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v7 - 8);
  v107 = &v104 - v8;
  v9 = sub_1000BC4D4(&qword_1016A04E0, &qword_1013A34C0);
  v109 = *(v9 - 8);
  v110 = v9;
  __chkstk_darwin(v9);
  v108 = &v104 - v10;
  v11 = type metadata accessor for Endianness();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for MACAddress();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v115 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v104 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v104 - v20;
  __chkstk_darwin(v19);
  v23 = &v104 - v22;
  v24 = type metadata accessor for StandaloneBeacon(0);
  v25 = v24[6];
  v116 = v13;
  v117 = v12;
  v26 = *(v13 + 16);
  v119 = v23;
  v26(v23, a1 + v25, v12);
  v27 = v24[9];
  v112 = a1;
  v28 = (a1 + v27);
  v29 = *v28;
  v30 = v28[1];
  if (sub_100313A28(*v28, v30) == 76)
  {
    sub_100313B54(v29, v30);
    static Endianness.current.getter();
    sub_10012BF24();
    FixedWidthInteger.init(data:ofEndianness:)();
    v31 = BYTE4(v121[0]) | (LODWORD(v121[0]) != 8220);
  }

  else
  {
    v31 = 1;
  }

  My = type metadata accessor for Feature.FindMy();
  v121[3] = My;
  v121[4] = sub_100019D54(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v33 = sub_1000280DC(v121);
  (*(*(My - 8) + 104))(v33, enum case for Feature.FindMy.smilingWheel(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  v34 = sub_100007BAC(v121);
  if (My & 1) == 0 || (v31)
  {
    v51 = v118;
    __chkstk_darwin(v34);
    *(&v104 - 2) = v119;
    *(&v104 - 1) = v52;
    sub_1000BC4D4(&unk_1016A6370, &unk_101391AA0);
    Lock.callAsFunction<A>(_:)();
    v53 = v121[0];
    if (v121[0])
    {
      v115 = sub_100436F60(v121[0]);
      if (v115)
      {
        v54 = String.utf8Data.getter();
        v56 = v55;
        v121[0] = v54;
        v121[1] = v55;
        sub_1000E0A3C();
        if ((DataProtocol.isNull.getter() & 1) == 0)
        {
          v79 = Data.trimmed.getter();
          v81 = v80;
          v82 = sub_100016590(v54, v56);
          __chkstk_darwin(v82);
          v83 = v119;
          *(&v104 - 4) = v84;
          *(&v104 - 3) = v83;
          *(&v104 - 2) = v79;
          *(&v104 - 1) = v81;
          v85 = v81;
          v86 = v79;
          v87 = v79;
          v106 = v79;
          v88 = v85;
          v105 = v85;
          sub_100017D5C(v86, v85);
          sub_1000BC4D4(&qword_1016A04E8, &qword_1013A34C8);
          OS_dispatch_queue.sync<A>(execute:)();
          sub_100016590(v87, v88);
          v120 = *(v51 + 48);
          v89 = v120;
          v90 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
          v91 = v107;
          (*(*(v90 - 8) + 56))(v107, 1, 1, v90);
          sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
          sub_1000041A4(&qword_1016A04F0, &qword_1016A04E8, &qword_1013A34C8, &protocol conformance descriptor for AnyPublisher<A, B>);
          sub_1004682F0();
          v92 = v89;
          v104 = v53;
          v93 = v92;
          v94 = v108;
          Publisher.receive<A>(on:options:)();
          sub_10000B3A8(v91, &unk_1016B0FE0, &unk_101391980);

          v95 = swift_allocObject();
          swift_weakInit();
          v96 = swift_allocObject();
          v97 = v113;
          v98 = v114;
          v96[2] = v95;
          v96[3] = v97;
          v96[4] = v98;
          v99 = swift_allocObject();
          *(v99 + 16) = sub_10046AD64;
          *(v99 + 24) = v96;
          sub_1000041A4(&qword_1016A04F8, &qword_1016A04E0, &qword_1013A34C0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

          v100 = v110;
          Publisher<>.sink(receiveValue:)();

          (*(v109 + 8))(v94, v100);
          swift_beginAccess();
          AnyCancellable.store(in:)();
          swift_endAccess();

          v101 = v111;
          static Date.trustedNow.getter(v111);
          v102 = type metadata accessor for Date();
          (*(*(v102 - 8) + 56))(v101, 0, 1, v102);
          sub_100466E88(v112, v101);

          sub_100016590(v106, v105);
          sub_10000B3A8(v101, &unk_101696900, &unk_10138B1E0);
          return (*(v116 + 8))(v119, v117);
        }

        sub_100016590(v54, v56);
        v57 = v117;
        if (qword_1016946F0 != -1)
        {
          swift_once();
        }

        v58 = type metadata accessor for Logger();
        sub_1000076D4(v58, qword_10177AD08);
        v59 = Logger.logObject.getter();
        v60 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          *v61 = 0;
          _os_log_impl(&_mh_execute_header, v59, v60, "Invalid serial number. Cannot force pair!", v61, 2u);
        }
      }

      else
      {
        v57 = v117;
        if (qword_1016946F0 != -1)
        {
          swift_once();
        }

        v74 = type metadata accessor for Logger();
        sub_1000076D4(v74, qword_10177AD08);
        v75 = Logger.logObject.getter();
        v76 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          *v77 = 0;
          _os_log_impl(&_mh_execute_header, v75, v76, "Missing pairing manager to force pair!", v77, 2u);
        }

        sub_100468184();
        swift_allocError();
        *v78 = 0;
        v113();
      }

      return (*(v116 + 8))(v119, v57);
    }

    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    sub_1000076D4(v62, qword_10177AD08);
    v63 = v119;
    v64 = v117;
    v26(v21, v119, v117);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v121[0] = v68;
      *v67 = 136446210;
      sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v69 = dispatch thunk of CustomStringConvertible.description.getter();
      v71 = v70;
      v72 = *(v116 + 8);
      v72(v21, v64);
      v73 = sub_1000136BC(v69, v71, v121);

      *(v67 + 4) = v73;
      _os_log_impl(&_mh_execute_header, v65, v66, "Missing peripheral for %{public}s to force pair!", v67, 0xCu);
      sub_100007BAC(v68);
      v63 = v119;
    }

    else
    {

      v72 = *(v116 + 8);
      v72(v21, v64);
    }

    sub_100468184();
    swift_allocError();
    *v103 = 0;
    v113();

    return (v72)(v63, v64);
  }

  else
  {
    v35 = v24[5];
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1000076D4(v36, qword_10177AD08);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Starting AirPods LE force pair using FindMyBluetooth", v39, 2u);
    }

    v111 = type metadata accessor for Transaction();
    v106 = v18;
    v40 = v117;
    v26(v18, v119, v117);
    v26(v115, v112 + v35, v40);
    v41 = v116;
    v42 = *(v116 + 80);
    v43 = (v42 + 24) & ~v42;
    v44 = (v14 + v42 + v43) & ~v42;
    v45 = v44 + v14;
    v46 = swift_allocObject();
    *(v46 + 16) = v118;
    v47 = *(v41 + 32);
    v47(v46 + v43, v106, v40);
    v47(v46 + v44, v115, v40);
    *(v46 + v45) = 1;
    v48 = v46 + (v45 & 0xFFFFFFFFFFFFFFF8);
    v49 = v114;
    *(v48 + 8) = v113;
    *(v48 + 16) = v49;

    static Transaction.asyncTask(name:block:)();

    return (*(v41 + 8))(v119, v40);
  }
}

uint64_t sub_100459828(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void, void), uint64_t a5)
{
  v63 = a4;
  v7 = type metadata accessor for MACAddress();
  v62 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v58 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v55 - v10;
  v12 = sub_1000BC4D4(&qword_101699860, &qword_1013A34D0);
  __chkstk_darwin(v12 - 8);
  v14 = &v55 - v13;
  v15 = type metadata accessor for Device();
  v60 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v57 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v59 = &v55 - v18;
  v19 = type metadata accessor for UUID();
  __chkstk_darwin(v19 - 8);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v23 = result;
    v61 = v7;
    v56 = v15;
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000076D4(v24, qword_10177AD08);
    v25 = a1;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v55 = v23;
      v29 = v28;
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v25;
      *v30 = v25;
      v31 = v25;
      _os_log_impl(&_mh_execute_header, v26, v27, "LE Pairing completed for %@.", v29, 0xCu);
      sub_10000B3A8(v30, &qword_10169BB30, &unk_10138B3C0);

      v23 = v55;
    }

    v32 = [*&v25[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject] identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    sub_1001DE870(0, v21);
    swift_endAccess();
    sub_100A22DF0(v11);
    sub_10044DA44(v14);
    v33 = *(v62 + 8);
    v33(v11, v61);
    v34 = v60;
    v35 = v56;
    if ((*(v60 + 48))(v14, 1, v56) == 1)
    {
      sub_10000B3A8(v14, &qword_101699860, &qword_1013A34D0);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&_mh_execute_header, v36, v37, "No BT device from BluetoothManager after pairing. Need to unpair", v38, 2u);
      }

      v39 = v58;
      sub_100A22DF0(v58);
      sub_10043B150(v25, v39);
      v33(v39, v61);
    }

    else
    {
      v40 = v59;
      (*(v34 + 32))(v59, v14, v35);
      v41 = v57;
      (*(v34 + 16))(v57, v40, v35);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = v34;
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v55 = v23;
        v62 = a5;
        v47 = v46;
        v64[0] = v46;
        *v45 = 136315138;
        sub_100019D54(&unk_1016B7C90, &type metadata accessor for Device, &protocol conformance descriptor for Device);
        v48 = v43;
        v49 = dispatch thunk of CustomStringConvertible.description.getter();
        v51 = v50;
        v52 = *(v44 + 8);
        v52(v41, v35);
        v53 = sub_1000136BC(v49, v51, v64);

        *(v45 + 4) = v53;
        _os_log_impl(&_mh_execute_header, v42, v48, "Found BT device from BluetoothManager after pairing as expected. %s", v45, 0xCu);
        sub_100007BAC(v47);

        v52(v59, v35);
      }

      else
      {

        v54 = *(v34 + 8);
        v54(v41, v35);
        v54(v40, v35);
      }
    }

    v63(0, 0);
  }

  return result;
}

uint64_t sub_10045A088(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 225) = a4;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  v7 = type metadata accessor for MACAddress();
  *(v6 + 56) = v7;
  v8 = *(v7 - 8);
  *(v6 + 64) = v8;
  *(v6 + 72) = *(v8 + 64);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 96) = swift_task_alloc();
  *(v6 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_10045A180, 0, 0);
}

uint64_t sub_10045A180()
{
  v1 = v0[13];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[3];
  v5 = *(v3 + 16);
  v0[14] = v5;
  v0[15] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_10045A238;

  return daemon.getter();
}

uint64_t sub_10045A238(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 136) = a1;

  v3 = swift_task_alloc();
  *(v2 + 144) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for AirPodsLEPairingService();
  v6 = sub_100019D54(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100019D54(&unk_1016B1150, type metadata accessor for AirPodsLEPairingService, &unk_10138BD00);
  *v3 = v9;
  v3[1] = sub_10045A414;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10045A414(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 152) = a1;
  *(v4 + 160) = v1;

  if (v1)
  {
    v5 = sub_10045B390;
    v6 = 0;
  }

  else
  {

    v5 = sub_10045A54C;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_10045A54C()
{
  v1 = v0[19];
  if (*(v1 + 273) == 1)
  {
    sub_100100904();
    v2 = swift_allocError();
    *v3 = 0x800000000000000ELL;
    v0[24] = v2;
    swift_willThrow();

    return _swift_task_switch(sub_10045A7AC, 0, 0);
  }

  else
  {
    *(v1 + 273) = 1;
    type metadata accessor for CentralManager();
    v4 = swift_task_alloc();
    v0[21] = v4;
    *v4 = v0;
    v4[1] = sub_10045A678;

    return static CentralManager.pairingCentralManager.getter();
  }
}

uint64_t sub_10045A678(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 176) = a1;
  *(v4 + 184) = v1;

  v5 = *(v3 + 152);
  if (v1)
  {
    v6 = sub_10045AD08;
  }

  else
  {
    v6 = sub_10045A9CC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10045A7AC()
{

  v1 = v0[24];
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177AD08);
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
    _os_log_impl(&_mh_execute_header, v3, v4, "startDiscoveryAndPairingSession error: %{public}@", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  v8 = v0[13];
  v9 = v0[7];
  v10 = v0[8];
  v11 = v0[5];
  v12 = v0[2];

  sub_10045B5B0(v12, v8);
  (*(v10 + 8))(v8, v9);
  if (v11)
  {
    v13 = v0[5];
    swift_errorRetain();
    v13(v1, 1);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_10045A9CC()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v19 = v2;
  v20 = *(v0 + 176);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);
  v21 = *(v0 + 225);
  v7 = *(v0 + 32);
  v18 = *(v0 + 24);
  v8 = swift_allocObject();
  swift_weakInit();
  v1(v2, v7, v6);
  v1(v3, v18, v6);
  v9 = *(v5 + 80);
  v10 = (v9 + 32) & ~v9;
  v11 = (v4 + v9 + v10) & ~v9;
  v12 = swift_allocObject();
  *(v0 + 200) = v12;
  *(v12 + 16) = v8;
  *(v12 + 24) = v20;
  v13 = *(v5 + 32);
  v13(v12 + v10, v19, v6);
  v13(v12 + v11, v3, v6);
  v14 = v12 + ((v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v14 = xmmword_10138BBF0;
  *(v14 + 16) = v21;
  *(v14 + 17) = 1;

  v15 = swift_task_alloc();
  *(v0 + 208) = v15;
  v16 = sub_1000BC4D4(&unk_1016969C0, &qword_101395690);
  *v15 = v0;
  v15[1] = sub_10045ABE0;

  return withTimeout<A>(_:block:)(v0 + 224, 0x40AAD21B3B700000, 3, &unk_1013A3580, v12, v16);
}

uint64_t sub_10045ABE0()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = sub_10045B1DC;
  }

  else
  {
    v5 = *(v2 + 152);

    v4 = sub_10045AEA8;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10045AD08()
{
  v1 = v0[23];
  *(v0[19] + 273) = 0;
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

  v0[24] = v1;
  swift_willThrow();

  return _swift_task_switch(sub_10045A7AC, 0, 0);
}

uint64_t sub_10045AEA8()
{
  v1 = *(v0 + 152);

  *(v1 + 273) = 0;

  return _swift_task_switch(sub_10045AF18, 0, 0);
}

uint64_t sub_10045AF18()
{
  v25 = v0;
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[4];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177AD08);
  v1(v2, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[10];
  v11 = v0[7];
  v10 = v0[8];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v16 = *(v10 + 8);
    v16(v9, v11);
    v17 = sub_1000136BC(v13, v15, &v24);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "LE Pairing completed for %{private,mask.hash}s", v12, 0x16u);
    sub_100007BAC(v23);
  }

  else
  {

    v16 = *(v10 + 8);
    v16(v9, v11);
  }

  v18 = v0[13];
  v19 = v0[7];
  v20 = v0[5];
  sub_10045B5B0(v0[2], v18);
  v16(v18, v19);
  if (v20)
  {
    (v0[5])(0, 0);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_10045B1DC()
{

  v1 = v0[27];
  *(v0[19] + 273) = 0;
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

  v0[24] = v1;
  swift_willThrow();

  return _swift_task_switch(sub_10045A7AC, 0, 0);
}

uint64_t sub_10045B390()
{

  v1 = v0[20];
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177AD08);
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
    _os_log_impl(&_mh_execute_header, v3, v4, "startDiscoveryAndPairingSession error: %{public}@", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  v8 = v0[13];
  v9 = v0[7];
  v10 = v0[8];
  v11 = v0[5];
  v12 = v0[2];

  sub_10045B5B0(v12, v8);
  (*(v10 + 8))(v8, v9);
  if (v11)
  {
    v13 = v0[5];
    swift_errorRetain();
    v13(v1, 1);
  }

  v14 = v0[1];

  return v14();
}

void sub_10045B5B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MACAddress();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v33[-v9];
  v11 = type metadata accessor for UUID();
  __chkstk_darwin(v11 - 8);
  v13 = &v33[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(*(a1 + 32) + 24);
  v34 = a2;
  v35 = v14;
  sub_1000BC4D4(&unk_1016A6370, &unk_101391AA0);
  Lock.callAsFunction<A>(_:)();
  v15 = v36[0];
  if (v36[0])
  {
    v16 = [*(v36[0] + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject) identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    sub_1001DE870(0, v13);
    swift_endAccess();
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_10177AD08);
    (*(v5 + 16))(v10, a2, v4);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v36[0] = swift_slowAlloc();
      *v20 = 136446466;
      *(v20 + 4) = sub_1000136BC(0xD000000000000047, 0x8000000101354EB0, v36);
      *(v20 + 12) = 2082;
      sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      (*(v5 + 8))(v10, v4);
      v24 = sub_1000136BC(v21, v23, v36);

      *(v20 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s Cleaned pairing manager for %{public}s", v20, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v5 + 8))(v10, v4);
    }
  }

  else
  {
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000076D4(v25, qword_10177AD08);
    (*(v5 + 16))(v8, a2, v4);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v36[0] = swift_slowAlloc();
      *v28 = 136446466;
      *(v28 + 4) = sub_1000136BC(0xD000000000000047, 0x8000000101354EB0, v36);
      *(v28 + 12) = 2082;
      sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      (*(v5 + 8))(v8, v4);
      v32 = sub_1000136BC(v29, v31, v36);

      *(v28 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, "%{public}s Missing peripheral for %{public}s to clean the pairing manager", v28, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }
  }
}

uint64_t sub_10045BB60(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v45 = a1;
  v46 = a7;
  v36 = a6;
  v37 = a5;
  v38 = a3;
  v42 = type metadata accessor for Device();
  v13 = *(v42 - 8);
  v41 = *(v13 + 64);
  __chkstk_darwin(v42);
  v39 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v15 - 8);
  v17 = &v36 - v16;
  v18 = sub_1000BC4D4(&qword_1016A0500, &qword_1013A34D8);
  v19 = *(v18 - 8);
  v43 = v18;
  v44 = v19;
  __chkstk_darwin(v18);
  v47 = &v36 - v20;
  v48 = a2;
  v49 = a3;
  v50 = a4;
  v51 = a5;
  v52 = 0;
  sub_1000BC4D4(&qword_1016A0508, &qword_1013A34E0);
  OS_dispatch_queue.sync<A>(execute:)();
  v40 = v7;
  v53 = *(a6 + 48);
  v21 = v53;
  v22 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v22 - 8) + 56))(v17, 1, 1, v22);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  sub_1000041A4(&qword_1016A0510, &qword_1016A0508, &qword_1013A34E0, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_1004682F0();
  v23 = v21;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v17, &unk_1016B0FE0, &unk_101391980);

  v24 = swift_allocObject();
  swift_weakInit();
  v25 = v39;
  v26 = v42;
  (*(v13 + 16))(v39, v37, v42);
  v27 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v28 = (v41 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  v30 = v45;
  *(v29 + 2) = v24;
  *(v29 + 3) = v30;
  v31 = v38;
  *(v29 + 4) = v38;
  (*(v13 + 32))(&v29[v27], v25, v26);
  *&v29[v28] = v46;
  sub_1000041A4(&qword_1016A0518, &qword_1016A0500, &qword_1013A34D8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v32 = v31;

  v33 = v43;
  v34 = v47;
  Publisher<>.sink(receiveValue:)();

  (*(v44 + 8))(v34, v33);
  AnyCancellable.store(in:)();
}

uint64_t sub_10045BFC8(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for Device();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v25[1] = type metadata accessor for Transaction();
    v17 = a3;
    v18 = swift_allocObject();
    swift_weakInit();
    (*(v12 + 16))(v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v11);
    v19 = (*(v12 + 80) + 48) & ~*(v12 + 80);
    v25[0] = v16;
    v20 = a6;
    v21 = (v13 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    *(v22 + 2) = v18;
    *(v22 + 3) = v17;
    v23 = v26;
    *(v22 + 4) = a4;
    *(v22 + 5) = v23;
    (*(v12 + 32))(&v22[v19], v14, v11);
    *&v22[v21] = v20;

    v24 = a4;
    sub_1004692DC(v23);

    static Transaction.asyncTask(name:block:)();
  }

  return result;
}

uint64_t sub_10045C1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[16] = a5;
  v6[17] = a6;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v6[18] = v7;
  v6[19] = *(v7 - 8);
  v6[20] = swift_task_alloc();
  v8 = type metadata accessor for DispatchQoS();
  v6[21] = v8;
  v6[22] = *(v8 - 8);
  v6[23] = swift_task_alloc();
  v9 = type metadata accessor for Device();
  v6[24] = v9;
  v10 = *(v9 - 8);
  v6[25] = v10;
  v6[26] = *(v10 + 64);
  v6[27] = swift_task_alloc();

  return _swift_task_switch(sub_10045C378, 0, 0);
}

uint64_t sub_10045C378()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = v0[26];
    v17 = v0[27];
    v3 = v0[24];
    v4 = v0[25];
    v19 = v0[23];
    v23 = v0[22];
    v24 = v0[21];
    v20 = v0[20];
    v21 = v0[18];
    v5 = v0[14];
    v6 = v0[15];
    v7 = v0[13];
    v18 = v0[17];
    v22 = v0[19];
    v8 = Strong;
    (*(v4 + 16))(v17, v0[16], v3);
    v9 = (*(v4 + 80) + 48) & ~*(v4 + 80);
    v10 = (v2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = swift_allocObject();
    *(v11 + 2) = v7;
    *(v11 + 3) = v8;
    *(v11 + 4) = v5;
    *(v11 + 5) = v6;
    v12 = v6;
    (*(v4 + 32))(&v11[v9], v17, v3);
    *&v11[v10] = v18;
    v0[6] = sub_1004693E4;
    v0[7] = v11;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100006684;
    v0[5] = &unk_10161D7E8;
    v13 = _Block_copy(v0 + 2);

    v14 = v5;
    sub_1004692DC(v12);

    static DispatchQoS.unspecified.getter();
    v0[11] = _swiftEmptyArrayStorage;
    sub_100019D54(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v13);
    (*(v22 + 8))(v20, v21);
    (*(v23 + 8))(v19, v24);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_10045C6A0(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v258 = a5;
  v259 = a6;
  v265 = a4;
  v267 = a3;
  v268 = a2;
  v7 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v7 - 8);
  v226 = &v223 - v8;
  v9 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v9 - 8);
  v229 = &v223 - v10;
  v242 = type metadata accessor for UUID();
  v253 = *(v242 - 8);
  __chkstk_darwin(v242);
  v228 = &v223 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = sub_1000BC4D4(&qword_1016A05B0, &unk_1013A3608);
  v244 = *(v243 - 8);
  v12 = __chkstk_darwin(v243);
  v227 = (&v223 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v241 = (&v223 - v14);
  v15 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v256 = *(v15 - 8);
  v257 = v15;
  v16 = __chkstk_darwin(v15);
  v235 = &v223 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v264 = &v223 - v18;
  v260 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
  v238 = *(v260 - 8);
  v19 = __chkstk_darwin(v260);
  v231 = &v223 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v232 = (&v223 - v22);
  v23 = __chkstk_darwin(v21);
  v230 = &v223 - v24;
  v25 = __chkstk_darwin(v23);
  v262 = &v223 - v26;
  v27 = __chkstk_darwin(v25);
  v263 = &v223 - v28;
  __chkstk_darwin(v27);
  v255 = (&v223 - v29);
  v30 = sub_1000BC4D4(&unk_1016BBEA0, &unk_101395A80);
  v31 = __chkstk_darwin(v30 - 8);
  v237 = &v223 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v236 = &v223 - v33;
  v34 = sub_1000BC4D4(&qword_1016A05B8, &qword_1013A3618);
  v35 = __chkstk_darwin(v34 - 8);
  v261 = &v223 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v234 = &v223 - v38;
  __chkstk_darwin(v37);
  v254 = &v223 - v39;
  v251 = type metadata accessor for Device();
  v250 = *(v251 - 8);
  __chkstk_darwin(v251);
  v248 = v40;
  v249 = &v223 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = 0;
  v41 = type metadata accessor for OwnedBeaconGroup(0);
  v42 = *(v41 - 1);
  v43 = __chkstk_darwin(v41);
  v233 = &v223 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __chkstk_darwin(v43);
  v246 = &v223 - v46;
  v47 = __chkstk_darwin(v45);
  v240 = &v223 - v48;
  __chkstk_darwin(v47);
  v239 = (&v223 - v49);
  v50 = &unk_1016AF8B0;
  v51 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v52 = __chkstk_darwin(v51 - 8);
  v54 = &v223 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __chkstk_darwin(v52);
  v247 = &v223 - v56;
  v57 = __chkstk_darwin(v55);
  v59 = &v223 - v58;
  v60 = __chkstk_darwin(v57);
  v62 = &v223 - v61;
  v63 = __chkstk_darwin(v60);
  v65 = &v223 - v64;
  __chkstk_darwin(v63);
  v67 = &v223 - v66;
  v252 = a1;
  Transaction.capture()();
  sub_100440548(v267, v67);
  v266 = v67;
  sub_1000D2A70(v67, v65, &unk_1016AF8B0, &unk_1013A0700);
  v68 = *(v42 + 48);
  if ((v68)(v65, 1, v41) != 1)
  {
    if (qword_1016946F0 != -1)
    {
      goto LABEL_98;
    }

    goto LABEL_12;
  }

  sub_10000B3A8(v65, &unk_1016AF8B0, &unk_1013A0700);
  v69 = v265;
  while (v265)
  {
    if (v69 == 1)
    {
      v50 = v266;
      sub_1000D2A70(v266, v59, &unk_1016AF8B0, &unk_1013A0700);
      if ((v68)(v59, 1, v41) == 1)
      {
        v78 = v59;
        goto LABEL_19;
      }

      v88 = v59;
      v89 = v240;
      v90 = sub_10046B7F0(v88, v240, type metadata accessor for OwnedBeaconGroup);
      v269[0] = _swiftEmptyArrayStorage;
      v91 = *(v89 + *(v41 + 10));
      __chkstk_darwin(v90);
      *(&v223 - 2) = v89;
      *(&v223 - 1) = v269;

      sub_1005C6730(sub_1004696D8, (&v223 - 4), v91);

      sub_10044C750(v259, v267, v258, 1, v269[0]);
      sub_10000B3A8(v50, &unk_1016AF8B0, &unk_1013A0700);

      return sub_10046B858(v89, type metadata accessor for OwnedBeaconGroup);
    }

    if (v69 == 2)
    {
      sub_1000D2A70(v266, v54, v50, &unk_1013A0700);
      v70 = (v68)(v54, 1, v41);
      sub_10000B3A8(v54, v50, &unk_1013A0700);
      if (v70 == 1)
      {
        if (qword_1016946F0 != -1)
        {
          swift_once();
        }

        v71 = type metadata accessor for Logger();
        sub_1000076D4(v71, qword_10177AD08);
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.default.getter();
        v74 = os_log_type_enabled(v72, v73);
        v50 = v266;
        if (v74)
        {
          v75 = swift_slowAlloc();
          *v75 = 0;
          _os_log_impl(&_mh_execute_header, v72, v73, "All parts paired on verifyFindMyNetworkId but there is no beaconGroup. Attempt to re-pair...", v75, 2u);
        }

        sub_10044C750(v259, v267, v258, 0, _swiftEmptyArrayStorage);
        goto LABEL_24;
      }

      if (qword_1016946F0 != -1)
      {
        swift_once();
      }

      v101 = type metadata accessor for Logger();
      sub_1000076D4(v101, qword_10177AD08);
      v102 = Logger.logObject.getter();
      v103 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        *v104 = 0;
        _os_log_impl(&_mh_execute_header, v102, v103, "All parts paired on verifyFindMyNetworkId and we have beaconGroup. Check if pairing is pending...", v104, 2u);
      }

      type metadata accessor for Transaction();
      v105 = swift_allocObject();
      swift_weakInit();
      v106 = v250;
      v107 = v249;
      v108 = v251;
      (*(v250 + 16))(v249, v258, v251);
      v109 = (*(v106 + 80) + 32) & ~*(v106 + 80);
      v110 = (v248 + v109 + 7) & 0xFFFFFFFFFFFFFFF8;
      v111 = swift_allocObject();
      v112 = v267;
      *(v111 + 16) = v105;
      *(v111 + 24) = v112;
      (*(v106 + 32))(v111 + v109, v107, v108);
      *(v111 + v110) = v252;
      *(v111 + ((v110 + 15) & 0xFFFFFFFFFFFFFFF8)) = v259;
      v113 = v112;

      static Transaction.asyncTask(name:block:)();

      sub_10000B3A8(v266, &unk_1016AF8B0, &unk_1013A0700);
    }

    v50 = v266;
    v79 = v247;
    sub_1000D2A70(v266, v247, &unk_1016AF8B0, &unk_1013A0700);
    if ((v68)(v79, 1, v41) == 1)
    {
      v78 = v79;
      goto LABEL_19;
    }

    v114 = v246;
    sub_10046B7F0(v79, v246, type metadata accessor for OwnedBeaconGroup);
    v115 = *(v114 + *(v41 + 10));
    v116 = v115 + 64;
    v117 = 1 << *(v115 + 32);
    v118 = -1;
    if (v117 < 64)
    {
      v118 = ~(-1 << v117);
    }

    v68 = v118 & *(v115 + 64);
    v225 = v264 + 2;
    v41 = ((v117 + 63) >> 6);
    v224 = (v253 + 8);
    v247 = v115;

    v119 = 0;
    v62 = v261;
    v240 = v116;
    v239 = v41;
    v54 = v262;
    while (v68)
    {
LABEL_43:
      v121 = __clz(__rbit64(v68)) | (v119 << 6);
      v122 = (*(v247 + 48) + 16 * v121);
      v123 = *v122;
      v124 = v122[1];
      v125 = v255;
      v126 = v260;
      v59 = type metadata accessor for OwnedBeaconGroup.PairingState;
      sub_10046A814(*(v247 + 56) + *(v256 + 72) * v121, v255 + *(v260 + 48), type metadata accessor for OwnedBeaconGroup.PairingState);
      *v125 = v123;
      v125[1] = v124;
      v127 = v263;
      sub_1000D2AD8(v125, v263, &qword_1016A4190, &unk_1013A3550);
      sub_1000D2A70(v127, v54, &qword_1016A4190, &unk_1013A3550);
      v128 = *v54;
      v65 = *(v54 + 1);
      sub_100017D5C(v123, v124);
      sub_100016590(v128, v65);
      v50 = *(v126 + 48);
      sub_10046A814(&v54[v50], v264, type metadata accessor for OwnedBeaconGroup.PairingState);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        v62 = v261;
        if (EnumCaseMultiPayload != 1)
        {
          sub_10046B858(v264, type metadata accessor for OwnedBeaconGroup.PairingState);
          sub_10046B858(&v262[v50], type metadata accessor for OwnedBeaconGroup.PairingState);
          goto LABEL_37;
        }

        v130 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
        v131 = v264;
        sub_100006654(*(v264 + v130[16]), *(v264 + v130[16] + 8));
        v59 = *(v225 + v130[24]);
        sub_10000B3A8(v131 + v130[12], &qword_1016A40D0, &unk_10138BE70);
        (*v224)(v131, v242);
      }

      else
      {
        v132 = sub_1000BC4D4(&qword_1016A4230, &unk_101391950);
        v59 = *(v225 + *(v132 + 48));
        sub_10000B3A8(v264, &qword_1016A40D0, &unk_10138BE70);
        v62 = v261;
      }

      sub_10046B858(&v262[v50], type metadata accessor for OwnedBeaconGroup.PairingState);
      if (v59 == 2)
      {

        v133 = v236;
        sub_1000D2AD8(v263, v236, &qword_1016A4190, &unk_1013A3550);
        v134 = v238;
        v135 = *(v238 + 56);
        v136 = v133;
        v137 = 0;
        goto LABEL_50;
      }

LABEL_37:
      v68 &= v68 - 1;
      sub_10000B3A8(v263, &qword_1016A4190, &unk_1013A3550);
      v116 = v240;
      v41 = v239;
    }

    while (1)
    {
      v120 = v119 + 1;
      if (__OFADD__(v119, 1))
      {
        goto LABEL_97;
      }

      if (v120 >= v41)
      {
        break;
      }

      v68 = *(v116 + 8 * v120);
      ++v119;
      if (v68)
      {
        v119 = v120;
        goto LABEL_43;
      }
    }

    v134 = v238;
    v135 = *(v238 + 56);
    v133 = v236;
    v136 = v236;
    v137 = 1;
LABEL_50:
    v138 = v260;
    v135(v136, v137, 1, v260);
    v139 = v237;
    sub_1000D2AD8(v133, v237, &unk_1016BBEA0, &unk_101395A80);
    v140 = 1;
    v141 = (*(v134 + 48))(v139, 1, v138);
    v59 = v254;
    v54 = v243;
    if (v141 != 1)
    {
      v142 = v230;
      sub_1000D2AD8(v139, v230, &qword_1016A4190, &unk_1013A3550);
      v143 = *(v54 + 12);
      v144 = v232;
      sub_1000D2A70(v142, v232, &qword_1016A4190, &unk_1013A3550);
      v50 = *(v138 + 48);
      *v59 = *v144;
      v145 = v142;
      v65 = v231;
      sub_1000D2AD8(v145, v231, &qword_1016A4190, &unk_1013A3550);
      sub_100016590(*v65, *(v65 + 1));
      sub_10046B7F0(&v65[*(v138 + 48)], v59 + v143, type metadata accessor for OwnedBeaconGroup.PairingState);
      sub_10046B858(v144 + v50, type metadata accessor for OwnedBeaconGroup.PairingState);
      v140 = 0;
    }

    (*(v244 + 56))(v59, v140, 1, v54);
    v146 = 0;
    v147 = v265;
    v148 = *(v265 + 16);
    v68 = _swiftEmptyArrayStorage;
    v41 = _swiftEmptyArrayStorage;
    while (2)
    {
      v149 = v147 + 32 * v146;
LABEL_54:
      if (v148 == v146)
      {
        v157 = v41[2];
        if (v157)
        {
          v269[0] = _swiftEmptyArrayStorage;
          sub_1011244D8(0, v157, 0);
          v158 = v269[0];
          v159 = v41 + 6;
          do
          {
            v160 = *(v159 - 1);
            v161 = *v159;
            sub_100017D5C(v160, *v159);
            v269[0] = v158;
            v163 = v158[2];
            v162 = v158[3];
            if (v163 >= v162 >> 1)
            {
              sub_1011244D8((v162 > 1), v163 + 1, 1);
              v158 = v269[0];
            }

            v159 += 4;
            v158[2] = v163 + 1;
            v164 = &v158[2 * v163];
            v164[4] = v160;
            v164[5] = v161;
            --v157;
          }

          while (v157);

          v62 = v261;
        }

        else
        {

          v158 = _swiftEmptyArrayStorage;
        }

        __chkstk_darwin(v165);
        v166 = v254;
        *(&v223 - 2) = v254;

        v167 = sub_10013D5D4(sub_10046959C, (&v223 - 4), v158);
        v168 = v247;
        v169 = sub_100466360(v247, sub_1004668BC, sub_1004668BC);
        v170 = sub_10042BA48(v169);

        v264 = *(sub_100466360(v168, sub_1004664D0, sub_1004664D0) + 2);

        v269[0] = v167;
        sub_100398324(v170);
        sub_1004695BC();
        v265 = Array<A>.uniqued()();

        v171 = v234;
        sub_1000D2A70(v166, v234, &qword_1016A05B8, &qword_1013A3618);
        v172 = *(v244 + 48);
        v173 = v172(v171, 1, v54);
        v174 = v253;
        v175 = v235;
        if (v173 == 1)
        {

          sub_10000B3A8(v171, &qword_1016A05B8, &qword_1013A3618);
          goto LABEL_72;
        }

        sub_1000D2AD8(v171, v241, &qword_1016A05B0, &unk_1013A3608);
        sub_1000D2A70(v166, v62, &qword_1016A05B8, &qword_1013A3618);
        if (v172(v62, 1, v54) == 1)
        {

          sub_10000B3A8(v62, &qword_1016A05B8, &qword_1013A3618);
          v178 = v229;
          (*(v174 + 56))(v229, 1, 1, v242);
          goto LABEL_80;
        }

        sub_100016590(*v62, *(v62 + 1));
        v179 = *(v54 + 12);
        sub_10046A814(&v62[v179], v175, type metadata accessor for OwnedBeaconGroup.PairingState);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v180 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
          v181 = *(v180 + 48);
          sub_100006654(*(v175 + *(v180 + 64)), *(v175 + *(v180 + 64) + 8));
          v182 = *(v174 + 32);
          v183 = v175;
          v178 = v229;
          v184 = v242;
          v182(v229, v183, v242);
          (*(v253 + 56))(v178, 0, 1, v184);
          v185 = v183 + v181;
          v186 = v184;
          v174 = v253;
          sub_10000B3A8(v185, &qword_1016A40D0, &unk_10138BE70);
        }

        else
        {
          v187 = v175;
          v178 = v229;
          v186 = v242;
          (*(v174 + 56))(v229, 1, 1, v242);
          sub_10046B858(v187, type metadata accessor for OwnedBeaconGroup.PairingState);
        }

        sub_10046B858(&v261[v179], type metadata accessor for OwnedBeaconGroup.PairingState);
        if ((*(v174 + 48))(v178, 1, v186) == 1)
        {

LABEL_80:
          v177 = v233;
          sub_10000B3A8(v178, &qword_1016980D0, &unk_10138F3B0);
          sub_10000B3A8(v241, &qword_1016A05B0, &unk_1013A3608);
          v176 = v246;
LABEL_81:
          if (*(v265 + 16))
          {
            sub_10044C750(v259, v267, v258, 1, v265);

            sub_10000B3A8(v266, &unk_1016AF8B0, &unk_1013A0700);
            v188 = v176;
          }

          else
          {

            if (qword_1016946F0 != -1)
            {
              swift_once();
            }

            v189 = type metadata accessor for Logger();
            sub_1000076D4(v189, qword_10177AD08);
            sub_10046A814(v176, v177, type metadata accessor for OwnedBeaconGroup);
            v190 = Logger.logObject.getter();
            v191 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v190, v191))
            {
              v192 = swift_slowAlloc();
              v193 = swift_slowAlloc();
              v269[0] = v193;
              *v192 = 141558275;
              *(v192 + 4) = 1752392040;
              *(v192 + 12) = 2081;
              v194 = sub_10051F7B0();
              v195 = v177;
              v197 = v196;
              sub_10046B858(v195, type metadata accessor for OwnedBeaconGroup);
              v198 = sub_1000136BC(v194, v197, v269);

              *(v192 + 14) = v198;
              v166 = v254;
              _os_log_impl(&_mh_execute_header, v190, v191, "Cannot force pair for beaconGroup: %{private,mask.hash}s", v192, 0x16u);
              sub_100007BAC(v193);
            }

            else
            {

              sub_10046B858(v177, type metadata accessor for OwnedBeaconGroup);
            }

            sub_10000B3A8(v266, &unk_1016AF8B0, &unk_1013A0700);
            v188 = v176;
          }

          sub_10046B858(v188, type metadata accessor for OwnedBeaconGroup);
        }

        else
        {
          (*(v174 + 32))(v228, v178, v186);
          v199 = v54;
          v200 = v227;
          sub_1000D2A70(v241, v227, &qword_1016A05B0, &unk_1013A3608);
          v201 = *v200;
          v202 = v200[1];
          v203 = *(v199 + 12);
          v204 = sub_100519EE8(*v200, v202);
          v206 = v205;
          v207 = sub_100016590(v201, v202);
          v269[0] = v204;
          v269[1] = v206;
          __chkstk_darwin(v207);
          *(&v223 - 2) = v269;
          LOBYTE(v201) = sub_1002EB6B8(sub_100469610, (&v223 - 4), v158);

          sub_100016590(v204, v206);
          sub_10046B858(v200 + v203, type metadata accessor for OwnedBeaconGroup.PairingState);
          if ((v201 & 1) == 0 && !v264)
          {
            (*v224)(v228, v242);
            sub_10000B3A8(v241, &qword_1016A05B0, &unk_1013A3608);
            v166 = v254;
LABEL_72:
            v176 = v246;
            v177 = v233;
            goto LABEL_81;
          }

          v208 = v241;
          v209 = *v241;
          v263 = v241[1];
          v264 = v209;
          v210 = v250;
          v211 = v249;
          v212 = v251;
          (*(v250 + 16))(v249, v258, v251);
          v213 = (*(v210 + 80) + 56) & ~*(v210 + 80);
          v214 = swift_allocObject();
          v216 = v267;
          v215 = v268;
          *(v214 + 2) = v265;
          *(v214 + 3) = v215;
          v217 = v259;
          *(v214 + 4) = v252;
          *(v214 + 5) = v217;
          *(v214 + 6) = v216;
          (*(v210 + 32))(&v214[v213], v211, v212);

          v218 = v216;

          v219 = v246;
          sub_100456B10(v264, v263, v246, sub_10046964C, v214);
          v220 = v226;
          static Date.trustedNow.getter(v226);
          v221 = type metadata accessor for Date();
          (*(*(v221 - 8) + 56))(v220, 0, 1, v221);
          v222 = v228;
          sub_100466E88(v228, v220);
          sub_10000B3A8(v220, &unk_101696900, &unk_10138B1E0);

          (*v224)(v222, v242);
          sub_10000B3A8(v266, &unk_1016AF8B0, &unk_1013A0700);
          sub_10046B858(v219, type metadata accessor for OwnedBeaconGroup);
          sub_10000B3A8(v208, &qword_1016A05B0, &unk_1013A3608);
          v166 = v254;
        }

        v84 = &qword_1016A05B8;
        v85 = &qword_1013A3618;
        v86 = v166;
        return sub_10000B3A8(v86, v84, v85);
      }

      if (v146 < v148)
      {
        v65 = (v146 + 1);
        if (__OFADD__(v146, 1))
        {
          goto LABEL_96;
        }

        v150 = *(v149 + 56);
        ++v146;
        v149 += 32;
        if (v150 == 2)
        {
          v151 = *v149;
          v152 = *(v149 + 8);
          v50 = *(v149 + 16);
          sub_100017D5C(v152, v50);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v269[0] = v41;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_101124984(0, v41[2] + 1, 1);
            v147 = v265;
            v41 = v269[0];
          }

          v155 = v41[2];
          v154 = v41[3];
          v59 = v155 + 1;
          if (v155 >= v154 >> 1)
          {
            sub_101124984((v154 > 1), v155 + 1, 1);
            v147 = v265;
            v41 = v269[0];
          }

          v41[2] = v59;
          v156 = &v41[4 * v155];
          *(v156 + 32) = v151;
          v156[5] = v152;
          v156[6] = v50;
          *(v156 + 56) = 2;
          v146 = v65;
          v54 = v243;
          v62 = v261;
          continue;
        }

        goto LABEL_54;
      }

      break;
    }

    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    swift_once();
LABEL_12:
    v76 = type metadata accessor for Logger();
    v77 = sub_1000076D4(v76, qword_10177AD08);
    sub_1005160CC(v77);
    sub_10046B858(v65, type metadata accessor for OwnedBeaconGroup);
    v69 = v265;
  }

  v50 = v266;
  sub_1000D2A70(v266, v62, &unk_1016AF8B0, &unk_1013A0700);
  if ((v68)(v62, 1, v41) == 1)
  {
    v78 = v62;
LABEL_19:
    sub_10000B3A8(v78, &unk_1016AF8B0, &unk_1013A0700);
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v80 = type metadata accessor for Logger();
    sub_1000076D4(v80, qword_10177AD08);
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&_mh_execute_header, v81, v82, "Cannot force from verifyFindMyNetworkId without a beaconGroup", v83, 2u);
    }

LABEL_24:
    v84 = &unk_1016AF8B0;
    v85 = &unk_1013A0700;
    v86 = v50;
  }

  else
  {
    v92 = v239;
    sub_10046B7F0(v62, v239, type metadata accessor for OwnedBeaconGroup);
    v93 = v250;
    v94 = v249;
    v95 = v251;
    (*(v250 + 16))(v249, v258, v251);
    v96 = (*(v93 + 80) + 32) & ~*(v93 + 80);
    v97 = (v248 + v96 + 7) & 0xFFFFFFFFFFFFFFF8;
    v98 = swift_allocObject();
    v99 = v267;
    *(v98 + 16) = v268;
    *(v98 + 24) = v99;
    (*(v93 + 32))(v98 + v96, v94, v95);
    *(v98 + v97) = v252;
    *(v98 + ((v97 + 15) & 0xFFFFFFFFFFFFFFF8)) = v259;

    v100 = v99;

    sub_100453380(v100, v92, sub_1004696F4, v98);

    sub_10046B858(v92, type metadata accessor for OwnedBeaconGroup);
    v84 = &unk_1016AF8B0;
    v85 = &unk_1013A0700;
    v86 = v266;
  }

  return sub_10000B3A8(v86, v84, v85);
}

uint64_t sub_10045E6E0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a5;
  v8 = type metadata accessor for Device();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Transaction();
  v12 = swift_allocObject();
  swift_weakInit();
  (*(v9 + 16))(v11, a3, v8);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = (v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = a2;
  (*(v9 + 32))(v15 + v13, v11, v8);
  *(v15 + v14) = a4;
  *(v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)) = v19;

  v16 = a2;

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_10045E8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();
  v7 = type metadata accessor for DispatchQoS();
  v5[20] = v7;
  v5[21] = *(v7 - 8);
  v5[22] = swift_task_alloc();
  v8 = type metadata accessor for Device();
  v5[23] = v8;
  v9 = *(v8 - 8);
  v5[24] = v9;
  v5[25] = *(v9 + 64);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();

  return _swift_task_switch(sub_10045EA54, 0, 0);
}

uint64_t sub_10045EA54()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[28] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[29] = v2;
    *v2 = v0;
    v2[1] = sub_10045EB78;
    v3 = v0[13];

    return sub_10044DEFC(v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10045EB78(char a1)
{
  *(*v1 + 240) = a1;

  return _swift_task_switch(sub_10045EC78, 0, 0);
}

uint64_t sub_10045EC78()
{
  v41 = v0;
  if (*(v0 + 240) == 1)
  {
    v1 = v0[27];
    v31 = v0[28];
    v3 = v0[24];
    v2 = v0[25];
    v4 = v0[23];
    v34 = v0[22];
    v38 = v0[21];
    v39 = v0[20];
    v35 = v0[19];
    v36 = v0[17];
    v5 = v0[15];
    v32 = v0[13];
    v33 = v0[16];
    v37 = v0[18];
    (*(v3 + 16))(v1, v0[14], v4);
    v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v7 = (v2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
    v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    (*(v3 + 32))(v9 + v6, v1, v4);
    *(v9 + v7) = v31;
    *(v9 + v8) = v33;
    *(v9 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)) = v32;
    v0[6] = sub_10046BC20;
    v0[7] = v9;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100006684;
    v0[5] = &unk_10161D978;
    v10 = _Block_copy(v0 + 2);

    v11 = v32;
    static DispatchQoS.unspecified.getter();
    v0[11] = _swiftEmptyArrayStorage;
    sub_100019D54(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v10);
    (*(v37 + 8))(v35, v36);
    (*(v38 + 8))(v34, v39);
  }

  else
  {
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v12 = v0[26];
    v13 = v0[23];
    v14 = v0[24];
    v15 = v0[14];
    v16 = type metadata accessor for Logger();
    sub_1000076D4(v16, qword_10177AD08);
    (*(v14 + 16))(v12, v15, v13);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[26];
    v22 = v0[23];
    v21 = v0[24];
    if (v19)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v40 = v24;
      *v23 = 136446210;
      sub_100019D54(&unk_1016B7C90, &type metadata accessor for Device, &protocol conformance descriptor for Device);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v21 + 8))(v20, v22);
      v28 = sub_1000136BC(v25, v27, &v40);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v17, v18, "FindMy pairing has been completed for %{public}s.", v23, 0xCu);
      sub_100007BAC(v24);
    }

    else
    {

      (*(v21 + 8))(v20, v22);
    }
  }

  v29 = v0[1];

  return v29();
}

uint64_t sub_10045F170(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v37 = a3;
  v5 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v36 - v11;
  __chkstk_darwin(v10);
  v14 = &v36 - v13;
  v15 = *a1;
  v16 = a1[1];
  result = type metadata accessor for OwnedBeaconGroup(0);
  v18 = *(a2 + *(result + 40));
  if (*(v18 + 16))
  {
    result = sub_100771E30(v15, v16);
    if (v19)
    {
      sub_10046A814(*(v18 + 56) + *(v6 + 72) * result, v12, type metadata accessor for OwnedBeaconGroup.PairingState);
      sub_10046B7F0(v12, v14, type metadata accessor for OwnedBeaconGroup.PairingState);
      sub_10046B7F0(v14, v9, type metadata accessor for OwnedBeaconGroup.PairingState);
      result = swift_getEnumCaseMultiPayload();
      if (result)
      {
        if (result != 1)
        {
          return result;
        }

        v20 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
        v21 = v20[12];
        sub_100006654(*&v9[v20[16]], *&v9[v20[16] + 8]);
        v22 = &v9[v20[24]];
        v23 = *v22;
        v24 = v22[1];
        sub_10000B3A8(&v9[v21], &qword_1016A40D0, &unk_10138BE70);
        v25 = type metadata accessor for UUID();
        result = (*(*(v25 - 8) + 8))(v9, v25);
        if (v24)
        {
          return result;
        }
      }

      else
      {
        v26 = &v9[*(sub_1000BC4D4(&qword_1016A4230, &unk_101391950) + 48)];
        v23 = *v26;
        v27 = v26[1];
        result = sub_10000B3A8(v9, &qword_1016A40D0, &unk_10138BE70);
        if (v27)
        {
          return result;
        }
      }

      if (v23 <= 1)
      {
        v28 = sub_100519EE8(v15, v16);
        v30 = v29;
        v31 = v37;
        v32 = *v37;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v31 = v32;
        if ((result & 1) == 0)
        {
          result = sub_100A5B734(0, *(v32 + 16) + 1, 1, v32);
          v32 = result;
          *v31 = result;
        }

        v34 = *(v32 + 16);
        v33 = *(v32 + 24);
        if (v34 >= v33 >> 1)
        {
          result = sub_100A5B734((v33 > 1), v34 + 1, 1, v32);
          v32 = result;
          *v31 = result;
        }

        *(v32 + 16) = v34 + 1;
        v35 = v32 + 16 * v34;
        *(v35 + 32) = v28;
        *(v35 + 40) = v30;
      }
    }
  }

  return result;
}

uint64_t sub_10045F488(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A05B8, &qword_1013A3618);
  __chkstk_darwin(v4 - 8);
  v6 = (v19 - v5);
  v8 = *a1;
  v7 = a1[1];
  sub_1000D2A70(a2, v19 - v5, &qword_1016A05B8, &qword_1013A3618);
  v9 = sub_1000BC4D4(&qword_1016A05B0, &unk_1013A3608);
  if ((*(*(v9 - 8) + 48))(v6, 1, v9) == 1)
  {
    sub_100017D5C(v8, v7);
    sub_10000B3A8(v6, &qword_1016A05B8, &qword_1013A3618);
    if (v7 >> 60 != 15)
    {
      v10 = 0;
      v11 = 0xF000000000000000;
      goto LABEL_8;
    }
  }

  else
  {
    v12 = *v6;
    v13 = v6[1];
    v14 = *(v9 + 48);
    sub_100017D5C(v8, v7);
    v10 = sub_100519EE8(v12, v13);
    v11 = v15;
    sub_100016590(v12, v13);
    sub_10046B858(v6 + v14, type metadata accessor for OwnedBeaconGroup.PairingState);
    if (v7 >> 60 != 15)
    {
      if (v11 >> 60 != 15)
      {
        sub_100017D5C(v8, v7);
        sub_10002E98C(v10, v11);
        v18 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v8, v7, v10, v11);
        sub_100006654(v10, v11);
        sub_100016590(v8, v7);
        sub_100006654(v10, v11);
        sub_100006654(v8, v7);
        v16 = !v18;
        return v16 & 1;
      }

      goto LABEL_8;
    }

    if (v11 >> 60 != 15)
    {
LABEL_8:
      sub_100006654(v8, v7);
      sub_100006654(v10, v11);
      v16 = 1;
      return v16 & 1;
    }
  }

  sub_100006654(v8, v7);
  v16 = 0;
  return v16 & 1;
}

void sub_10045F6E4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v37 = a6;
  v38 = a7;
  v36 = a5;
  v42 = a3;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v39 = *(v14 - 8);
  v40 = v14;
  __chkstk_darwin(v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Device();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  if ((a2 & 1) == 0)
  {
    v35 = v11;
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_10177AD08);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v34 = v17;
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Done force pairing case from verifyFindMyNetworkId", v23, 2u);
      v17 = v34;
    }

    v11 = v35;
  }

  if (*(v42 + 16))
  {
    v35 = *(a4 + 48);
    (*(v18 + 16))(&v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), a8, v17);
    v24 = (*(v18 + 80) + 48) & ~*(v18 + 80);
    v25 = swift_allocObject();
    *(v25 + 2) = v36;
    *(v25 + 3) = a4;
    v32 = a4;
    v33 = v16;
    v34 = v13;
    v26 = v42;
    v27 = v38;
    *(v25 + 4) = v37;
    *(v25 + 5) = v27;
    (*(v18 + 32))(&v25[v24], &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
    *&v25[(v19 + v24 + 7) & 0xFFFFFFFFFFFFFFF8] = v26;
    aBlock[4] = sub_10046A5AC;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_10161DA90;
    v28 = _Block_copy(aBlock);

    v29 = v27;

    v30 = v33;
    static DispatchQoS.unspecified.getter();
    v43 = _swiftEmptyArrayStorage;
    sub_100019D54(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v31 = v34;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v28);
    (*(v41 + 8))(v31, v11);
    (*(v39 + 8))(v30, v40);
  }
}

uint64_t sub_10045FBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();
  v7 = type metadata accessor for DispatchQoS();
  v5[20] = v7;
  v5[21] = *(v7 - 8);
  v5[22] = swift_task_alloc();
  v8 = type metadata accessor for Device();
  v5[23] = v8;
  v9 = *(v8 - 8);
  v5[24] = v9;
  v5[25] = *(v9 + 64);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();

  return _swift_task_switch(sub_10045FD4C, 0, 0);
}

uint64_t sub_10045FD4C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[28] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[29] = v2;
    *v2 = v0;
    v2[1] = sub_10045FE70;
    v3 = v0[13];

    return sub_10044DEFC(v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10045FE70(char a1)
{
  *(*v1 + 240) = a1;

  return _swift_task_switch(sub_10045FF70, 0, 0);
}

uint64_t sub_10045FF70()
{
  v41 = v0;
  if (*(v0 + 240) == 1)
  {
    v1 = v0[27];
    v31 = v0[28];
    v3 = v0[24];
    v2 = v0[25];
    v4 = v0[23];
    v34 = v0[22];
    v38 = v0[21];
    v39 = v0[20];
    v35 = v0[19];
    v36 = v0[17];
    v5 = v0[15];
    v32 = v0[13];
    v33 = v0[16];
    v37 = v0[18];
    (*(v3 + 16))(v1, v0[14], v4);
    v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v7 = (v2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
    v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    (*(v3 + 32))(v9 + v6, v1, v4);
    *(v9 + v7) = v31;
    *(v9 + v8) = v33;
    *(v9 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)) = v32;
    v0[6] = sub_10046A774;
    v0[7] = v9;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100006684;
    v0[5] = &unk_10161DAE0;
    v10 = _Block_copy(v0 + 2);

    v11 = v32;
    static DispatchQoS.unspecified.getter();
    v0[11] = _swiftEmptyArrayStorage;
    sub_100019D54(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v10);
    (*(v37 + 8))(v35, v36);
    (*(v38 + 8))(v34, v39);
  }

  else
  {
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v12 = v0[26];
    v13 = v0[23];
    v14 = v0[24];
    v15 = v0[14];
    v16 = type metadata accessor for Logger();
    sub_1000076D4(v16, qword_10177AD08);
    (*(v14 + 16))(v12, v15, v13);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[26];
    v22 = v0[23];
    v21 = v0[24];
    if (v19)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v40 = v24;
      *v23 = 136446210;
      sub_100019D54(&unk_1016B7C90, &type metadata accessor for Device, &protocol conformance descriptor for Device);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v21 + 8))(v20, v22);
      v28 = sub_1000136BC(v25, v27, &v40);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v17, v18, "FindMy pairing has been completed for %{public}s.", v23, 0xCu);
      sub_100007BAC(v24);
    }

    else
    {

      (*(v21 + 8))(v20, v22);
    }
  }

  v29 = v0[1];

  return v29();
}