uint64_t sub_100A3D354()
{
  v1 = v0;
  v35 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for UUID();
  v5 = *(v32 - 8);
  __chkstk_darwin(v32);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = dispatch_group_create();
  v29 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_localPairingMonitor);
  v30 = sub_100AA5C88();
  sub_1003D7440(v30);
  v8 = sub_100AA5C88();
  v9 = v8[2];
  if (v9)
  {
    v28 = v0;
    v36 = _swiftEmptyArrayStorage;
    sub_101123D4C(0, v9, 0);
    v10 = v36;
    v11 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v27[1] = v8;
    v12 = v8 + v11;
    v13 = *(v2 + 72);
    v33 = v5 + 32;
    v34 = v13;
    v14 = v32;
    do
    {
      sub_100A4E410(v12, v4, type metadata accessor for OwnedBeaconRecord);
      (*(v5 + 16))(v7, &v4[*(v35 + 20)], v14);
      sub_100A4DCAC(v4, type metadata accessor for OwnedBeaconRecord);
      v36 = v10;
      v16 = v10[2];
      v15 = v10[3];
      if (v16 >= v15 >> 1)
      {
        sub_101123D4C((v15 > 1), v16 + 1, 1);
        v14 = v32;
        v10 = v36;
      }

      v10[2] = v16 + 1;
      (*(v5 + 32))(v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v16, v7, v14);
      v12 += v34;
      --v9;
    }

    while (v9);

    v1 = v28;
  }

  else
  {

    v10 = _swiftEmptyArrayStorage;
  }

  v17 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v18 = qword_10177C370;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_101385D80;
  v20 = Array.description.getter();
  v22 = v21;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_100008C00();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v18, "removeLocalBeaconRecord: %@", 27, 2, v19);

  v23 = type metadata accessor for Transaction();
  __chkstk_darwin(v23);
  v25 = v30;
  v24 = v31;
  v27[-6] = v10;
  v27[-5] = v24;
  v27[-4] = v1;
  v27[-3] = v25;
  v27[-2] = v29;
  static Transaction.named<A>(_:with:)();
}

void sub_100A3D784()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v59 - v3;
  v5 = type metadata accessor for UUID();
  v62 = *(v5 - 8);
  v63 = v5;
  __chkstk_darwin(v5);
  v61 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v7 = __chkstk_darwin(v66);
  v67 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v68 = &v59 - v10;
  __chkstk_darwin(v9);
  v12 = &v59 - v11;
  v13 = type metadata accessor for OwnedBeaconRecord(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v60 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = (&v59 - v17);
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = (&v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v1 + 56);
  *v22 = v23;
  (*(v20 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v19);
  v24 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  v25 = (*(v20 + 8))(v22, v19);
  if (v23)
  {
    v25 = static os_log_type_t.default.getter();
    if (qword_101695028 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  v58 = v25;
  swift_once();
  v25 = v58;
LABEL_3:
  v64 = qword_10177C370;
  os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, qword_10177C370, "turnLocalBeaconingOn()", 22, 2, _swiftEmptyArrayStorage);
  sub_1003DB678(v12);
  v26 = v13;
  v65 = *(v14 + 48);
  if (v65(v12, 1, v13) == 1)
  {
    sub_10000B3A8(v12, &unk_1016A9A20, &qword_10138B280);
    goto LABEL_5;
  }

  sub_10002AC44(v12, v18, type metadata accessor for OwnedBeaconRecord);
  v36 = *(v1 + 280);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  v59 = v36;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  QueueSynchronizer.conditionalSync<A>(_:)();

  if (v69 != 1)
  {
    *(v1 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_nvramAlreadyChecked) = 0;
    goto LABEL_19;
  }

  sub_100A3D09C(v4);
  v38 = v62;
  v37 = v63;
  if ((*(v62 + 48))(v4, 1, v63) == 1)
  {
    sub_10000B3A8(v4, &qword_1016980D0, &unk_10138F3B0);
    goto LABEL_15;
  }

  v39 = v61;
  (*(v38 + 32))(v61, v4, v37);
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    (*(v38 + 8))(v39, v37);
LABEL_15:
    v40 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v40, &_mh_execute_header, v64, "Local beacon record already exists", 34, 2, _swiftEmptyArrayStorage);
    if (*(v18 + *(v13 + 44) + 8) >> 60 == 15)
    {
      v41 = v18;
      v42 = static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v43 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_101385D80;
      v45 = v41;
      v46 = v41;
      v47 = v60;
      sub_100A4E410(v45, v60, type metadata accessor for OwnedBeaconRecord);
      v48 = String.init<A>(describing:)();
      v67 = v26;
      v49 = v48;
      v51 = v50;
      *(v44 + 56) = &type metadata for String;
      *(v44 + 64) = sub_100008C00();
      *(v44 + 32) = v49;
      *(v44 + 40) = v51;
      os_log(_:dso:log:_:_:)(v42, &_mh_execute_header, v43, "Upgrade local beacon: %@", 24, 2, v44);

      sub_1005CAD68(&v69);
      v52 = v69;
      v53 = v70;
      v54 = v46;
      sub_100A9146C(v46, v69, v70, v47);
      sub_100016590(v52, v53);
      v55 = v68;
      sub_100A4E410(v47, v68, type metadata accessor for OwnedBeaconRecord);
      (*(v14 + 56))(v55, 0, 1, v67);
      sub_100A3BB6C(v55);
      sub_10000B3A8(v55, &unk_1016A9A20, &qword_10138B280);
      sub_100A4DCAC(v47, type metadata accessor for OwnedBeaconRecord);
      v56 = v54;
      goto LABEL_20;
    }

LABEL_19:
    v57 = v68;
    sub_100A4E410(v18, v68, type metadata accessor for OwnedBeaconRecord);
    (*(v14 + 56))(v57, 0, 1, v13);
    sub_100A3BB6C(v57);
    sub_10000B3A8(v57, &unk_1016A9A20, &qword_10138B280);
    v56 = v18;
LABEL_20:
    sub_100A4DCAC(v56, type metadata accessor for OwnedBeaconRecord);
    return;
  }

  sub_100A3D1C8(v18);
  (*(v38 + 8))(v39, v37);
  sub_100A4DCAC(v18, type metadata accessor for OwnedBeaconRecord);
LABEL_5:
  v27 = dispatch_group_create();
  dispatch_group_enter(v27);
  v28 = swift_allocBox();
  v30 = v29;
  (*(v14 + 56))(v29, 1, 1, v13);
  v31 = swift_allocObject();
  v31[2] = v27;
  v31[3] = v1;
  v31[4] = v28;
  v32 = v27;

  sub_1003D9EB4(sub_100A4C7A4, v31);

  OS_dispatch_group.wait()();
  *(v1 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_nvramAlreadyChecked) = 0;
  swift_beginAccess();
  v33 = v68;
  sub_1000D2A70(v30, v68, &unk_1016A9A20, &qword_10138B280);
  sub_100A3BB6C(v33);
  sub_10000B3A8(v33, &unk_1016A9A20, &qword_10138B280);
  v34 = v67;
  sub_1000D2A70(v30, v67, &unk_1016A9A20, &qword_10138B280);
  if (v65(v34, 1, v13) == 1)
  {
    sub_10000B3A8(v34, &unk_1016A9A20, &qword_10138B280);
    v35 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v35, &_mh_execute_header, v64, "Error creating local beacon.", 28, 2, _swiftEmptyArrayStorage);
  }

  else
  {

    sub_10000B3A8(v34, &unk_1016A9A20, &qword_10138B280);
  }
}

void sub_100A3E160(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_projectBox();
  v16 = type metadata accessor for OwnedBeaconRecord(0);
  if ((*(*(v16 - 8) + 48))(a1, 1, v16) != 1)
  {
    v22 = *(a3 + 56);
    aBlock[4] = sub_100A4C820;
    aBlock[5] = a3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_101644290;
    v21 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v24 = _swiftEmptyArrayStorage;
    v17 = sub_100A4BFC4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v23 = a2;
    v19 = v17;
    v20 = v11;
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    a2 = v23;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v18 = v21;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);
    (*(v8 + 8))(v10, v7);
    (*(v12 + 8))(v14, v20);
  }

  swift_beginAccess();
  sub_100A4C7B0(a1, v15);
  dispatch_group_leave(a2);
}

void sub_100A3E4B4()
{
  v1 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + 56);
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v10 = (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v10 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
LABEL_5:
    v16 = v10;
    swift_once();
    v10 = v16;
  }

  os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, qword_10177C370, "turnLocalBeaconingOff()", 23, 2, _swiftEmptyArrayStorage);
  *(v0 + 32) = 0;

  sub_1003D7440(v11);
  v12 = dispatch_group_create();
  dispatch_group_enter(v12);
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v12;
  v14[5] = v0;
  v15 = v12;

  sub_100A838D4(0, 0, v3, &unk_1013D35D8, v14);

  OS_dispatch_group.wait()();
}

uint64_t sub_100A3E738(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnedBeaconRecord(0);
  v5 = *(*(v4 - 8) + 64);
  result = __chkstk_darwin(v4 - 8);
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = *(v7 + 80);
    v10 = (a2 + ((v9 + 32) & ~v9));
    v13 = *(v7 + 72);
    do
    {
      sub_100A4E410(v10, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OwnedBeaconRecord);
      v11 = swift_allocObject();
      *(v11 + 16) = a1;
      sub_10002AC44(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + ((v9 + 24) & ~v9), type metadata accessor for OwnedBeaconRecord);

      sub_1003DF44C(v10, 0, sub_100A4C6E8, v11);

      v10 = (v10 + v13);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_100A3E8C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for OwnedBeaconRecord(0);
  __chkstk_darwin(v5);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Transaction.capture()();
  if (a1)
  {
    swift_errorRetain();
    v8 = static os_log_type_t.default.getter();
    if (qword_101695028 != -1)
    {
      swift_once();
    }

    v9 = qword_10177C370;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_101385D80;
    v21[1] = a1;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v11 = String.init<A>(describing:)();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_100008C00();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "Processed and delete failed with error - %@", 43, 2, v10);
  }

  else
  {
    v15 = static os_log_type_t.default.getter();
    if (qword_101695028 != -1)
    {
      swift_once();
    }

    v16 = qword_10177C370;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_101385D80;
    sub_100A4E410(a3, v7, type metadata accessor for OwnedBeaconRecord);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = sub_100008C00();
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v16, "Processed and deleted %@", 24, 2, v17);
  }
}

uint64_t sub_100A3EB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v12 = *(v19 - 8);
  __chkstk_darwin(v19);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + 56);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  aBlock[4] = a4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = a5;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_100A4BFC4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v20 + 8))(v11, v9);
  (*(v12 + 8))(v14, v19);
}

uint64_t sub_100A3EE5C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v1 + 56);
  *v5 = v6;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v9 = sub_100A90DAC();
    v10 = type metadata accessor for Transaction();
    __chkstk_darwin(v10);
    *&v11[-16] = v9;
    *&v11[-8] = v1;
    static Transaction.named<A>(_:with:)();

    return static Transaction.named<A>(_:with:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100A3F020(int a1, int a2)
{
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v4 = SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (v24)
  {
    v5 = 0;
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v5 = [objc_opt_self() locationServicesEnabled];
    objc_autoreleasePoolPop(v6);
  }

  v23 = v5;
  __chkstk_darwin(v4);
  type metadata accessor for CLAuthorizationStatus(0);
  OS_dispatch_queue.sync<A>(execute:)();
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v7 = sub_101073BE8(0x7365547265646E75);

  OS_dispatch_queue.sync<A>(execute:)();
  v8 = sub_100A490E0();

  v9 = sub_1004F21B4();
  v10 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v11 = qword_10177C370;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10138C0D0;
  *(v12 + 56) = &type metadata for Bool;
  *(v12 + 64) = &protocol witness table for Bool;
  *(v12 + 32) = v9 & 1;
  *(v12 + 96) = &type metadata for Bool;
  *(v12 + 104) = &protocol witness table for Bool;
  *(v12 + 72) = v7 & 1;
  *(v12 + 136) = &type metadata for Bool;
  *(v12 + 144) = &protocol witness table for Bool;
  *(v12 + 112) = v8;
  *(v12 + 176) = &type metadata for Bool;
  *(v12 + 184) = &protocol witness table for Bool;
  *(v12 + 152) = v23;
  *(v12 + 216) = &type metadata for Bool;
  *(v12 + 224) = &protocol witness table for Bool;
  *(v12 + 192) = 0;
  os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "EnableLocalBeaconing preference changed -- \n fmipEnabled: %d \n localBeaconingAllowed: %ld \n serviceEnabled: %d \n locationServicesEnabled: %d \n fmipLocationServicesEnabled: %d", v20, v2, a2, a1, 1701080693);

  sub_100A3E4B4();
  if ((v9 & 1) == 0)
  {
    *(v21 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_nvramAlreadyChecked) = 0;
  }

  v13 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v13)
  {
    v14 = v13;
    v15 = SPBeaconingStateChangedNotification;
    v16 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      v18 = v16;
      swift_once();
      v16 = v18;
    }

    os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, qword_10177C380, "Posting SPBeaconingStateChangedNotification Darwin notification", 63, 2, _swiftEmptyArrayStorage);
    CFNotificationCenterPostNotification(v14, v15, 0, 0, 1u);
  }

  else
  {
    v17 = static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      v19 = v17;
      swift_once();
      v17 = v19;
    }

    os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, qword_10177C380, "CFNotificationCenterGetDarwinNotifyCenter return nil!", 53, 2, _swiftEmptyArrayStorage);
  }

  Transaction.capture()();
}

uint64_t sub_100A3F4E8(uint64_t a1)
{
  v2 = v1;
  v3 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    v15 = v3;
    swift_once();
    v3 = v15;
  }

  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, qword_10177C370, "Clearing any registered XPC activities", 38, 2, _swiftEmptyArrayStorage);
  v4 = *(v2 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_pruneActivity);
  if (!v4 || (*(v2 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_pruneActivity) = 0, v5 = *(v4 + 16), v6 = swift_allocObject(), *(v6 + 16) = sub_10058A7BC, *(v6 + 24) = v4, v22 = sub_10040B9F8, v23 = v6, v18 = _NSConcreteStackBlock, v19 = 1107296256, v20 = sub_10013FE14, v21 = &unk_1016441F0, v7 = _Block_copy(&v18), , , , dispatch_sync(v5, v7), _Block_release(v7), LOBYTE(v5) = swift_isEscapingClosureAtFileLocation(), , result = , (v5 & 1) == 0))
  {
    v9 = static os_log_type_t.default.getter();
    if (qword_1016950B0 != -1)
    {
      v16 = v9;
      swift_once();
      v9 = v16;
    }

    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, qword_10177C3F8, "Clearing any registered XPC activities", 38, 2, _swiftEmptyArrayStorage);
    sub_100887D6C();
    sub_10073B7C8();

    v10 = static os_log_type_t.default.getter();
    if (qword_1016950B8 != -1)
    {
      v17 = v10;
      swift_once();
      v10 = v17;
    }

    os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, qword_10177C400, "Clearing any registered XPC activities", 38, 2, _swiftEmptyArrayStorage);
    sub_100235D80();
    sub_10073B7C8();

    v11 = *(v2 + 40);
    if (!v11)
    {
      goto LABEL_13;
    }

    v12 = *(v11 + 56);
    v13 = swift_allocObject();
    *(v13 + 16) = sub_100A4C6A8;
    *(v13 + 24) = v11;
    v22 = sub_10040B9F8;
    v23 = v13;
    v18 = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_10013FE14;
    v21 = &unk_1016441A0;
    v14 = _Block_copy(&v18);
    swift_retain_n();

    dispatch_sync(v12, v14);
    _Block_release(v14);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if ((v12 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void **sub_100A3F8D4()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.begin.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v10 = qword_10177C3B0;
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v54 = *(v7 + 8);
  v54(v9, v6);
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v11 = sub_10107355C(aBlock);

  v12 = sub_100AB035C();
  if (v12 >= v11)
  {
    v34 = v12;
    v35 = static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_10138BBE0;
    *(v36 + 56) = &type metadata for Int;
    *(v36 + 64) = &protocol witness table for Int;
    *(v36 + 32) = v11;
    *(v36 + 96) = &type metadata for Int;
    *(v36 + 104) = &protocol witness table for Int;
    *(v36 + 72) = v34;
    os_log(_:dso:log:_:_:)(v35, &_mh_execute_header, v10, "Limit reached %i. Current count: %i", v47, v49);

    sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v38;
    aBlock = 0;
    v56 = 0xE000000000000000;
    _StringGuts.grow(_:)(43);

    aBlock = 0xD000000000000015;
    v56 = 0x80000001013687A0;
    v61 = v11;
    v39._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v39);

    v40._object = 0x80000001013687C0;
    v40._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v40);
    v41 = v56;
    *(inited + 48) = aBlock;
    *(inited + 56) = v41;
    v42 = sub_100907E70(inited);
    swift_setDeallocating();
    sub_10000B3A8(inited + 32, &qword_101696D88, &unk_10138B760);
    type metadata accessor for SPPairingSessionError(0);
    v61 = 17;
    sub_1006953B0(v42);

    sub_100A4BFC4(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    return aBlock;
  }

  v51 = v5;
  v52 = v3;
  v53 = v2;
  v13 = objc_allocWithZone(type metadata accessor for CurrentLocationMonitor());
  v14 = CurrentLocationMonitor.init(mode:desiredAccuracy:)(0, *&kCLLocationAccuracyHundredMeters, 0);
  v15 = *(v1 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_pairingValidator);
  v16 = *(v1 + 144);
  type metadata accessor for ItemPairingCoordinator(0);
  swift_allocObject();
  v17 = v14;

  v18 = v16;
  v19 = sub_100FC5EEC(v17, v15, v18);
  if (!v19)
  {
    v43 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v43, &_mh_execute_header, v10, "There are Follow Ups that are pending.", 38, 2, _swiftEmptyArrayStorage);
    sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
    v44 = swift_initStackObject();
    *(v44 + 16) = xmmword_101385D80;
    *(v44 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v44 + 40) = v45;
    *(v44 + 48) = 0xD00000000000003FLL;
    *(v44 + 56) = 0x8000000101368810;
    v46 = sub_100907E70(v44);
    swift_setDeallocating();
    sub_10000B3A8(v44 + 32, &qword_101696D88, &unk_10138B760);
    type metadata accessor for SPPairingSessionError(0);
    v61 = 3;
    sub_1006953B0(v46);

    sub_100A4BFC4(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();

    return aBlock;
  }

  v20 = v19;
  v50 = v17;
  v21 = swift_allocObject();
  *(v21 + 16) = v1;
  *(v21 + 24) = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_100A4C6A0;
  *(v22 + 24) = v21;
  v49 = v21;
  v59 = sub_10040B9F8;
  v60 = v22;
  aBlock = _NSConcreteStackBlock;
  v56 = 1107296256;
  v57 = sub_10013FE14;
  v58 = &unk_101644150;
  v23 = _Block_copy(&aBlock);

  dispatch_sync(v18, v23);
  _Block_release(v23);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v48 = static os_log_type_t.default.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_101385D80;
    v27 = [*(v20 + 16) identifier];
    v28 = v51;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100A4BFC4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v29 = v53;
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    (*(v52 + 8))(v28, v29);
    *(v26 + 56) = &type metadata for String;
    *(v26 + 64) = sub_100008C00();
    *(v26 + 32) = v30;
    *(v26 + 40) = v32;
    os_log(_:dso:log:_:_:)(v48, &_mh_execute_header, v10, "#Durian: Initiated session with id - %@", 39, 2, v26);

    static os_signpost_type_t.end.getter();
    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    v54(v9, v6);
    static os_signpost_type_t.begin.getter();
    os_signpost(_:dso:log:name:signpostID:)();

    v33 = *(v20 + 16);

    return v33;
  }

  return result;
}

uint64_t sub_100A4026C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*(a2 + 16) identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_pairingSessionCoordinators;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a1 + v9);
  *(a1 + v9) = 0x8000000000000000;
  sub_1010009B8(a2, v7, isUniquelyReferenced_nonNull_native);
  (*(v5 + 8))(v7, v4);
  *(a1 + v9) = v12;
  return swift_endAccess();
}

uint64_t sub_100A403C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v10 = *(v17 - 8);
  __chkstk_darwin(v17);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v3 + 48);
  v13 = swift_allocObject();
  v13[2] = v3;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_100A4C674;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016440D8;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_100A4BFC4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v17);
}

uint64_t sub_100A406AC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  type metadata accessor for Transaction();
  v3 = static Transaction.named<A>(_:with:)();
  return a2(v3);
}

void sub_100A40740(int a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = type metadata accessor for DispatchQoS();
  v10 = *(v30 - 8);
  __chkstk_darwin(v30);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v13 - 8);
  v15 = &v27[-v14];
  v16 = [objc_opt_self() currentConnection];
  if (v16)
  {
    v17 = v16;
    v28 = a1;
    v29 = a3;
    v18 = v3;
    sub_1000BC4D4(&unk_1016B26F0, &qword_1013D35C0);
    swift_allocObject();
    v19 = v17;
    v20 = XPCSession.init(connection:)();
    if (v20)
    {
      v21 = v20;
      v22 = type metadata accessor for TaskPriority();
      (*(*(v22 - 8) + 56))(v15, 1, 1, v22);
      v23 = swift_allocObject();
      *(v23 + 16) = 0;
      *(v23 + 24) = 0;
      *(v23 + 32) = v18;
      *(v23 + 40) = v21;
      *(v23 + 48) = v28 & 1;
      v24 = v29;
      *(v23 + 56) = a2;
      *(v23 + 64) = v24;

      sub_10025EDD4(0, 0, v15, &unk_1013D35D0, v23);

      return;
    }

    a3 = v29;
  }

  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  *(v25 + 24) = a3;
  aBlock[4] = sub_100A4C588;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101644060;
  v26 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_100A4BFC4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);
  (*(v31 + 8))(v9, v7);
  (*(v10 + 8))(v12, v30);
}

uint64_t sub_100A40BB0(void (*a1)(uint64_t))
{
  type metadata accessor for BluetoothCommunicationCoordinator.Error(0);
  sub_100A4BFC4(&qword_1016A95D0, type metadata accessor for BluetoothCommunicationCoordinator.Error, &unk_101409F40);
  v2 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  a1(v2);
}

uint64_t sub_100A40C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 112) = a6;
  *(v8 + 24) = a4;
  *(v8 + 32) = a5;
  return _swift_task_switch(sub_100A40C8C, 0, 0);
}

uint64_t sub_100A40C8C()
{

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  *v1 = v0;
  v1[1] = sub_100A40D54;
  v3 = *(v0 + 24);

  return unsafeBlocking<A>(_:)(v0 + 16, sub_100A4C66C, v3, v2);
}

uint64_t sub_100A40D54()
{

  return _swift_task_switch(sub_100A40E6C, 0, 0);
}

uint64_t sub_100A40E6C()
{
  v1 = v0[2];
  v0[8] = v1;
  type metadata accessor for BeaconScanner();
  swift_allocObject();

  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_100A40F48;
  v3 = v0[4];

  return sub_100F3AA64(v3, v1);
}

uint64_t sub_100A40F48(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100A411E4, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v3 + 96) = v5;
    *v5 = v4;
    v5[1] = sub_100A410D0;
    v6 = *(v3 + 112);

    return sub_100F3B388(v6);
  }
}

uint64_t sub_100A410D0()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_100A4141C;
  }

  else
  {
    v2 = sub_100A41394;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100A411E4()
{
  v1 = v0[11];

  if (qword_101694B78 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177B7E0);
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
    _os_log_impl(&_mh_execute_header, v3, v4, "Beacon scan error: %{public}@", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  v8 = v0[5];

  swift_errorRetain();
  v8(v1);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100A41394()
{
  (*(v0 + 40))(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A4141C()
{

  v1 = v0[13];

  if (qword_101694B78 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177B7E0);
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
    _os_log_impl(&_mh_execute_header, v3, v4, "Beacon scan error: %{public}@", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  v8 = v0[5];

  swift_errorRetain();
  v8(v1);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100A415D4@<X0>(void *a2@<X8>)
{
  type metadata accessor for BeaconKeyManager(0);
  result = OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  *a2 = v4;
  return result;
}

uint64_t sub_100A4165C(uint64_t a1)
{
  v3 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = v1 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_beaconUUIDsLocating;
  os_unfair_lock_lock(v6);
  sub_100A41798((v6 + 8), a1);
  os_unfair_lock_unlock(v6);
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;

  sub_10025EDD4(0, 0, v5, &unk_1013D35B0, v8);
}

void sub_100A41798(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v4 - 8);
  v58 = &v50 - v5;
  v6 = type metadata accessor for UUID();
  v7 = __chkstk_darwin(v6);
  v65 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v50 - v10;
  __chkstk_darwin(v9);
  v56 = &v50 - v13;
  v57 = v12;
  v14 = a2 + 56;
  v15 = 1 << *(a2 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a2 + 56);
  v18 = (v15 + 63) >> 6;
  v63 = v12 + 16;
  v54 = v12 + 32;
  v60 = a2;
  v61 = (v12 + 8);

  v19 = 0;
  *&v20 = 141558275;
  v51 = v20;
  v59 = a1;
  v66 = v6;
  v55 = v18;
  v64 = v11;
  v52 = a2 + 56;
  while (v17)
  {
    v22 = v19;
LABEL_11:
    v23 = v56;
    v24 = v57;
    v25 = *(v57 + 72);
    v26 = *(v60 + 48) + v25 * (__clz(__rbit64(v17)) | (v22 << 6));
    v62 = *(v57 + 16);
    v62(v56, v26, v6);
    (*(v24 + 32))(v11, v23, v6);
    v27 = sub_1000210EC(v11);
    if (v28)
    {
      v29 = v27;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = *a1;
      v67 = *a1;
      v32 = a1;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_101008408();
        v31 = v67;
      }

      (*v61)(*(v31 + 48) + v29 * v25, v6);
      v33 = *(v31 + 56);
      v34 = type metadata accessor for Date();
      v35 = *(v34 - 8);
      v36 = v33 + *(v35 + 72) * v29;
      v37 = v58;
      (*(v35 + 32))(v58, v36, v34);
      sub_100AF85EC(v29, v31);
      *v32 = v31;
      (*(v35 + 56))(v37, 0, 1, v34);
    }

    else
    {
      v38 = type metadata accessor for Date();
      v37 = v58;
      (*(*(v38 - 8) + 56))(v58, 1, 1, v38);
    }

    v39 = v62;
    sub_10000B3A8(v37, &unk_101696900, &unk_10138B1E0);
    v40 = v64;
    v41 = v65;
    if (qword_101694770 != -1)
    {
      swift_once();
    }

    v17 &= v17 - 1;
    v42 = type metadata accessor for Logger();
    sub_1000076D4(v42, qword_10177AE10);
    v6 = v66;
    v39(v41, v40, v66);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v67 = v62;
      *v45 = v51;
      *(v45 + 4) = 1752392040;
      *(v45 + 12) = 2081;
      sub_100A4BFC4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      v53 = *v61;
      v53(v65, v66);
      v49 = sub_1000136BC(v46, v48, &v67);

      *(v45 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v43, v44, "Removed ACSN locating state for beacon: %{private,mask.hash}s.", v45, 0x16u);
      sub_100007BAC(v62);
      v6 = v66;

      v11 = v64;
      v53(v64, v6);
      v14 = v52;
    }

    else
    {

      v21 = *v61;
      (*v61)(v41, v6);
      v11 = v64;
      v21(v64, v6);
    }

    v19 = v22;
    a1 = v59;
    v18 = v55;
  }

  while (1)
  {
    v22 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v22 >= v18)
    {

      return;
    }

    v17 = *(v14 + 8 * v22);
    ++v19;
    if (v17)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_100A41D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_100A41E1C;

  return daemon.getter();
}

uint64_t sub_100A41E1C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 32) = a1;

  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  v4 = type metadata accessor for Daemon();
  updated = type metadata accessor for SimpleBeaconUpdateService(0);
  v6 = sub_100A4BFC4(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100A4BFC4(&unk_1016B10F0, type metadata accessor for SimpleBeaconUpdateService, &unk_1013CAC90);
  *v3 = v9;
  v3[1] = sub_100A41FF8;

  return ActorServiceDaemon.getService<A>()(v4, updated, v6, v7);
}

uint64_t sub_100A41FF8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    return _swift_task_switch(sub_100A4219C, 0, 0);
  }

  else
  {

    v4[6] = a1;
    v6 = swift_task_alloc();
    v4[7] = v6;
    *v6 = v5;
    v6[1] = sub_100A422B0;
    v7 = v4[2];

    return sub_10094DB94(v7);
  }
}

uint64_t sub_100A4219C()
{
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B7F8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Cannot update beacon locating state without SimpleBeaconUpdateService.", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100A422B0()
{

  return _swift_task_switch(sub_1004D4490, 0, 0);
}

void sub_100A423AC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_beaconUUIDsLocating;
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_beaconUUIDsLocating));
  v6 = *(v5 + 8);
  if (*(v6 + 16) && (v7 = sub_1000210EC(a1), (v8 & 1) != 0))
  {
    v9 = v7;
    v10 = *(v6 + 56);
    v11 = type metadata accessor for Date();
    v12 = *(v11 - 8);
    (*(v12 + 16))(a2, v10 + *(v12 + 72) * v9, v11);
    (*(v12 + 56))(a2, 0, 1, v11);
  }

  else
  {
    v13 = type metadata accessor for Date();
    (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
  }

  os_unfair_lock_unlock(v5);
}

uint64_t sub_100A4250C(uint64_t a1, double a2)
{
  v4 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v4 - 8);
  v119 = &v116 - v5;
  v6 = type metadata accessor for BeaconObservation(0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v152 = &v116 - v12;
  v13 = __chkstk_darwin(v11);
  v151 = &v116 - v14;
  __chkstk_darwin(v13);
  v155 = &v116 - v15;
  v16 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  __chkstk_darwin(v16 - 8);
  v132 = &v116 - v17;
  v18 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v18 - 8);
  v137 = &v116 - v19;
  v20 = type metadata accessor for Date();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v117 = &v116 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v144 = &v116 - v25;
  v26 = __chkstk_darwin(v24);
  v143 = &v116 - v27;
  __chkstk_darwin(v26);
  v142 = &v116 - v28;
  v149 = type metadata accessor for UUID();
  v29 = __chkstk_darwin(v149);
  v147 = &v116 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v150 = &v116 - v32;
  __chkstk_darwin(v31);
  v134 = &v116 - v34;
  v36 = a1 + 56;
  v35 = *(a1 + 56);
  v37 = 1 << *(a1 + 32);
  v38 = -1;
  v157 = _swiftEmptyDictionarySingleton;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & v35;
  v40 = (v37 + 63) >> 6;
  v148 = v33 + 16;
  v133 = v33 + 32;
  v131 = (v7 + 56);
  v130 = (v7 + 48);
  v139 = (v21 + 16);
  v129 = (v21 + 56);
  v128 = (v21 + 32);
  v122 = (v21 + 48);
  v135 = v33;
  v126 = (v33 + 8);
  v136 = (v21 + 8);
  v127 = v21;
  v121 = v21 + 40;

  v41 = v39;
  v42 = v40;
  v43 = 0;
  v145 = 0;
  v141 = v20;
  v125 = a1 + 56;
  v124 = v42;
  v123 = a1;
  v153 = v6;
  v154 = v10;
  while (1)
  {
    if (!v41)
    {
      while (1)
      {
        v48 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          goto LABEL_60;
        }

        if (v48 >= v42)
        {

          v107 = swift_allocObject();
          *(v107 + 16) = &_swiftEmptySetSingleton;
          v108 = v117;
          static Date.trustedNow.getter(v117);
          v109 = v20;
          v110 = v118 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_beaconUUIDsLocating;
          os_unfair_lock_lock((v118 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_beaconUUIDsLocating));
          sub_100A43518((v110 + 8), a1, &v157, v108, v107 + 16, a2);
          os_unfair_lock_unlock(v110);
          v111 = type metadata accessor for TaskPriority();
          v112 = v119;
          (*(*(v111 - 8) + 56))(v119, 1, 1, v111);
          v113 = swift_allocObject();
          v113[2] = 0;
          v113[3] = 0;
          v113[4] = v107;

          sub_10025EDD4(0, 0, v112, &unk_1013D35A0, v113);

          (*v136)(v108, v109);
          swift_beginAccess();
          v114 = *(v107 + 16);

          return v114;
        }

        v41 = *(v36 + 8 * v48);
        ++v43;
        if (v41)
        {
          v43 = v48;
          break;
        }
      }
    }

    v140 = v41;
    v49 = *(a1 + 48);
    v50 = v135;
    v138 = *(v135 + 72);
    v51 = v134;
    v52 = v149;
    v146 = *(v135 + 16);
    v146(v134, v49 + v138 * (__clz(__rbit64(v41)) | (v43 << 6)), v149);
    (*(v50 + 32))(v150, v51, v52);
    if (qword_101694920 != -1)
    {
      swift_once();
    }

    v53 = objc_autoreleasePoolPush();
    sub_1000BC4D4(&unk_1016B26E0, &unk_10138C4A0);
    v54 = v145;
    OS_dispatch_queue.sync<A>(execute:)();
    v145 = v54;
    v55 = v156;
    v56 = v151;
    if (!v156[2])
    {

      v64 = _swiftEmptyArrayStorage;
      v58 = v153;
      goto LABEL_34;
    }

    v57 = sub_1000210EC(v150);
    v58 = v153;
    if ((v59 & 1) == 0)
    {

      v64 = _swiftEmptyArrayStorage;
      goto LABEL_34;
    }

    v60 = *(*(v55 + 56) + 8 * v57);

    v61 = *(v60 + 16);
    if (v61)
    {
      v62 = sub_100034824(*(v60 + 16), 0);
      v63 = sub_1000364B4(&v156, v62 + 4, v61, v60);
      sub_1000128F8(v156);
      if (v63 != v61)
      {
        goto LABEL_64;
      }
    }

    else
    {

      v62 = _swiftEmptyArrayStorage;
    }

    v120 = v53;
    v65 = sub_100034838(v62);

    v66 = v65[2];
    if (v66)
    {
      break;
    }

    v64 = _swiftEmptyArrayStorage;
LABEL_33:

    a1 = v123;
    v20 = v141;
    v58 = v153;
    v53 = v120;
LABEL_34:
    objc_autoreleasePoolPop(v53);
    v75 = v64[2];
    if (v75)
    {
      v76 = v64 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      sub_100A4E410(v76, v155, type metadata accessor for BeaconObservation);
      if (v75 != 1)
      {
        v102 = 1;
        while (1)
        {
          v103 = v102 + 1;
          if (__OFADD__(v102, 1))
          {
            break;
          }

          v104 = v154;
          sub_100A4E410(v76 + *(v7 + 72) * v102, v154, type metadata accessor for BeaconObservation);
          v105 = v155;
          if (static Date.< infix(_:_:)())
          {
            sub_100A4DCAC(v105, type metadata accessor for BeaconObservation);
            sub_10002AC44(v104, v105, type metadata accessor for BeaconObservation);
          }

          else
          {
            sub_100A4DCAC(v104, type metadata accessor for BeaconObservation);
          }

          ++v102;
          if (v103 == v75)
          {
            goto LABEL_36;
          }
        }

        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

LABEL_36:
      v77 = v132;
      sub_10002AC44(v155, v132, type metadata accessor for BeaconObservation);
      (*v131)(v77, 0, 1, v58);

      v20 = v141;
      a1 = v123;
    }

    else
    {
      v77 = v132;
      (*v131)(v132, 1, 1, v58);
    }

    if ((*v130)(v77, 1, v58) == 1)
    {
      sub_10000B3A8(v77, &qword_1016A42E0, &qword_1013B0010);
      v78 = v137;
      (*v129)(v137, 1, 1, v20);
      static Date.distantPast.getter();
      if ((*v122)(v78, 1, v20) != 1)
      {
        sub_10000B3A8(v137, &unk_101696900, &unk_10138B1E0);
      }
    }

    else
    {
      v79 = v77 + *(v58 + 20);
      v80 = v137;
      (*v139)(v137, v79, v20);
      sub_100A4DCAC(v77, type metadata accessor for BeaconObservation);
      (*v129)(v80, 0, 1, v20);
      (*v128)(v142, v80, v20);
    }

    v81 = v143;
    Date.addingTimeInterval(_:)();
    v82 = v147;
    v146(v147, v150, v149);
    (*v139)(v144, v81, v20);
    v83 = v157;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v156 = v83;
    v85 = sub_1000210EC(v82);
    v87 = v83[2];
    v88 = (v86 & 1) == 0;
    v89 = __OFADD__(v87, v88);
    v90 = v87 + v88;
    if (v89)
    {
      goto LABEL_62;
    }

    v91 = v86;
    if (v83[3] < v90)
    {
      sub_100FECDA8(v90, isUniquelyReferenced_nonNull_native);
      v85 = sub_1000210EC(v147);
      if ((v91 & 1) != (v92 & 1))
      {
        goto LABEL_65;
      }

LABEL_47:
      v93 = v156;
      if (v91)
      {
        goto LABEL_4;
      }

      goto LABEL_48;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_47;
    }

    v106 = v85;
    sub_101008408();
    v85 = v106;
    v93 = v156;
    if (v91)
    {
LABEL_4:
      v44 = v127;
      v20 = v141;
      (*(v127 + 40))(v93[7] + *(v127 + 72) * v85, v144, v141);
      v45 = *v126;
      v46 = v149;
      (*v126)(v147, v149);
      v47 = *(v44 + 8);
      v47(v143, v20);
      v47(v142, v20);
      v45(v150, v46);
      goto LABEL_5;
    }

LABEL_48:
    v93[(v85 >> 6) + 8] |= 1 << v85;
    v94 = v85;
    v95 = v147;
    v96 = v149;
    v146((v93[6] + v85 * v138), v147, v149);
    v97 = v127;
    v20 = v141;
    (*(v127 + 32))(v93[7] + *(v127 + 72) * v94, v144, v141);
    v98 = *v126;
    (*v126)(v95, v96);
    v99 = *(v97 + 8);
    v99(v143, v20);
    v99(v142, v20);
    v98(v150, v96);
    v100 = v93[2];
    v89 = __OFADD__(v100, 1);
    v101 = v100 + 1;
    if (v89)
    {
      goto LABEL_63;
    }

    v93[2] = v101;
LABEL_5:
    v41 = (v140 - 1) & v140;
    v157 = v93;
    v36 = v125;
    v42 = v124;
  }

  v67 = 0;
  v64 = _swiftEmptyArrayStorage;
  v68 = v65[2];
  while (v67 < v65[2])
  {
    v69 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v70 = v7;
    v71 = *(v7 + 72);
    sub_100A4E410(v65 + v69 + v71 * v67, v56, type metadata accessor for BeaconObservation);
    if (*(v56 + *(v153 + 24)) == 5)
    {
      sub_10002AC44(v56, v152, type metadata accessor for BeaconObservation);
      v72 = swift_isUniquelyReferenced_nonNull_native();
      v156 = v64;
      if ((v72 & 1) == 0)
      {
        sub_101124308(0, v64[2] + 1, 1);
        v64 = v156;
      }

      v74 = v64[2];
      v73 = v64[3];
      if (v74 >= v73 >> 1)
      {
        sub_101124308((v73 > 1), v74 + 1, 1);
        v64 = v156;
      }

      v64[2] = v74 + 1;
      sub_10002AC44(v152, v64 + v69 + v74 * v71, type metadata accessor for BeaconObservation);
      v56 = v151;
      v66 = v68;
    }

    else
    {
      sub_100A4DCAC(v56, type metadata accessor for BeaconObservation);
    }

    ++v67;
    v7 = v70;
    if (v66 == v67)
    {
      goto LABEL_33;
    }
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100A43518(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, double a6)
{
  v137 = a5;
  v163 = a4;
  v152 = a3;
  v160 = a1;
  v7 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v8 = __chkstk_darwin(v7 - 8);
  v158 = &v129[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v8);
  v151 = &v129[-v11];
  __chkstk_darwin(v10);
  v157 = &v129[-v12];
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v150 = &v129[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v15);
  v156 = &v129[-v18];
  v19 = __chkstk_darwin(v17);
  v149 = &v129[-v20];
  v21 = __chkstk_darwin(v19);
  v23 = &v129[-v22];
  v24 = __chkstk_darwin(v21);
  v162 = &v129[-v25];
  v26 = __chkstk_darwin(v24);
  v140 = &v129[-v27];
  __chkstk_darwin(v26);
  v29 = &v129[-v28];
  v164 = type metadata accessor for UUID();
  v30 = __chkstk_darwin(v164);
  v146 = &v129[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = __chkstk_darwin(v30);
  v136 = &v129[-v33];
  v34 = __chkstk_darwin(v32);
  v135 = &v129[-v35];
  v36 = __chkstk_darwin(v34);
  v134 = &v129[-v37];
  v38 = __chkstk_darwin(v36);
  v169 = &v129[-v39];
  __chkstk_darwin(v38);
  v145 = &v129[-v41];
  v42 = a2 + 56;
  v43 = 1 << *(a2 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & *(a2 + 56);
  v46 = (v43 + 63) >> 6;
  v167 = v40 + 16;
  v142 = v40 + 32;
  v141 = (v14 + 56);
  v166 = (v14 + 16);
  v47 = (v14 + 48);
  v161 = (v14 + 8);
  v138 = v14;
  v153 = (v14 + 32);
  v147 = v40;
  v155 = v40 + 8;

  v48 = 0;
  *&v49 = 141558275;
  v131 = v49;
  *&v49 = 141558787;
  v130 = v49;
  v154 = a2;
  v148 = v23;
  v168 = v29;
  v50 = v164;
  v144 = a2 + 56;
  v143 = v46;
  v159 = (v14 + 48);
  while (v45)
  {
    v54 = v169;
LABEL_13:
    v56 = v147;
    v57 = *(v154 + 48) + *(v147 + 72) * (__clz(__rbit64(v45)) | (v48 << 6));
    v58 = v145;
    v165 = *(v147 + 16);
    (v165)(v145, v57, v50);
    (*(v56 + 32))(v54, v58, v50);
    v59 = *v160;
    v60 = v141;
    if (*(*v160 + 16) && (v61 = sub_1000210EC(v54), (v62 & 1) != 0))
    {
      v63 = *(v59 + 56) + *(v138 + 72) * v61;
      v64 = v151;
      (*(v138 + 16))(v151, v63, v13);
      v65 = 0;
    }

    else
    {
      v65 = 1;
      v64 = v151;
    }

    v66 = *v60;
    (*v60)(v64, v65, 1, v13);
    v67 = *v47;
    if ((*v47)(v64, 1, v13))
    {
      sub_10000B3A8(v64, &unk_101696900, &unk_10138B1E0);
      v68 = v157;
      v66(v157, 1, 1, v13);
      static Date.distantPast.getter();
      if (v67(v68, 1, v13) != 1)
      {
        sub_10000B3A8(v157, &unk_101696900, &unk_10138B1E0);
      }
    }

    else
    {
      v69 = v140;
      (*v166)(v140, v64, v13);
      sub_10000B3A8(v64, &unk_101696900, &unk_10138B1E0);
      v70 = v157;
      Date.addingTimeInterval(_:)();
      (*v161)(v69, v13);
      v66(v70, 0, 1, v13);
      (*v153)(v168, v70, v13);
    }

    v71 = *v152;
    if (*(*v152 + 16) && (v72 = sub_1000210EC(v169), (v73 & 1) != 0))
    {
      v74 = v138;
      v75 = *(v71 + 56) + *(v138 + 72) * v72;
      v76 = v158;
      (*(v138 + 16))(v158, v75, v13);
      v66(v76, 0, 1, v13);
      v77 = v148;
      (*(v74 + 32))(v148, v76, v13);
    }

    else
    {
      v78 = v158;
      v66(v158, 1, 1, v13);
      v77 = v148;
      static Date.distantPast.getter();
      if (v67(v78, 1, v13) != 1)
      {
        sub_10000B3A8(v158, &unk_101696900, &unk_10138B1E0);
      }
    }

    sub_100A4BFC4(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v79 = v168;
    v80 = dispatch thunk of static Comparable.>= infix(_:_:)();
    v81 = v156;
    v82 = v162;
    if (v80)
    {
      (*v161)(v77, v13);
      (*v166)(v82, v79, v13);
    }

    else
    {
      (*v153)(v162, v77, v13);
    }

    v83 = v164;
    v45 &= v45 - 1;
    if (static Date.< infix(_:_:)())
    {
      if (qword_101694770 != -1)
      {
        swift_once();
      }

      v84 = type metadata accessor for Logger();
      sub_1000076D4(v84, qword_10177AE10);
      v85 = v134;
      (v165)(v134, v169, v83);
      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.default.getter();
      v88 = os_log_type_enabled(v86, v87);
      v89 = v83;
      v90 = v155;
      v139 = v155 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      if (v88)
      {
        v91 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        v170 = v133;
        *v91 = v131;
        *(v91 + 4) = 1752392040;
        *(v91 + 12) = 2081;
        sub_100A4BFC4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        LODWORD(v132) = v87;
        v92 = dispatch thunk of CustomStringConvertible.description.getter();
        v93 = v85;
        v95 = v94;
        v96 = *v90;
        v96(v93, v89);
        v97 = sub_1000136BC(v92, v95, &v170);

        *(v91 + 14) = v97;
        _os_log_impl(&_mh_execute_header, v86, v132, "Added ACSN locating state for beacon: %{private,mask.hash}s.", v91, 0x16u);
        sub_100007BAC(v133);
      }

      else
      {

        v96 = *v90;
        v96(v85, v89);
      }

      v122 = v140;
      (*v166)(v140, v163, v13);
      v123 = v160;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v170 = *v123;
      v125 = v169;
      sub_100FFD694(v122, v169, isUniquelyReferenced_nonNull_native);
      *v123 = v170;
      v126 = v136;
      (v165)(v136, v125, v89);
      v127 = v135;
      sub_100DE8BCC(v135, v126);
      v96(v127, v89);
      v128 = *v161;
      (*v161)(v162, v13);
      v128(v168, v13);
      v96(v125, v89);
      v50 = v89;
    }

    else
    {
      v98 = v146;
      if (qword_101694770 != -1)
      {
        swift_once();
      }

      v99 = type metadata accessor for Logger();
      sub_1000076D4(v99, qword_10177AE10);
      (v165)(v98, v169, v83);
      v100 = *v166;
      v101 = v168;
      v102 = v13;
      (*v166)(v149, v168, v13);
      v100(v81, v101, v13);
      v100(v150, v163, v13);
      v103 = Logger.logObject.getter();
      LODWORD(v139) = static os_log_type_t.default.getter();
      v165 = v103;
      if (os_log_type_enabled(v103, v139))
      {
        v104 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        v170 = v132;
        *v104 = v130;
        *(v104 + 4) = 1752392040;
        *(v104 + 12) = 2081;
        sub_100A4BFC4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v105 = v146;
        v106 = dispatch thunk of CustomStringConvertible.description.getter();
        v108 = v107;
        v109 = v149;
        v133 = *v155;
        (v133)(v105, v164);
        v110 = sub_1000136BC(v106, v108, &v170);

        *(v104 + 14) = v110;
        *(v104 + 22) = 2082;
        v111 = Date.debugDescription.getter();
        v113 = v112;
        v114 = *v161;
        (*v161)(v109, v102);
        v115 = v114;
        v116 = sub_1000136BC(v111, v113, &v170);
        v13 = v102;
        v117 = v150;

        *(v104 + 24) = v116;
        *(v104 + 32) = 2050;
        v118 = v156;
        Date.timeIntervalSince(_:)();
        v120 = v119;
        v115(v117, v13);
        v115(v118, v13);
        *(v104 + 34) = v120;
        v121 = v165;
        _os_log_impl(&_mh_execute_header, v165, v139, "Not fetching locations for beacon %{private,mask.hash}s.\nWaiting until %{public}s, %{public}f seconds due to locating in progress.", v104, 0x2Au);
        swift_arrayDestroy();

        v50 = v164;

        v115(v162, v13);
        v115(v168, v13);
        (v133)(v169, v50);
      }

      else
      {

        v51 = *v161;
        (*v161)(v150, v13);
        v51(v81, v13);
        v51(v149, v13);
        v52 = *v155;
        v53 = v101;
        v50 = v164;
        (*v155)(v146, v164);
        v51(v162, v13);
        v51(v53, v13);
        (v52)(v169, v50);
      }
    }

    v42 = v144;
    v46 = v143;
    v47 = v159;
  }

  v54 = v169;
  while (1)
  {
    v55 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      break;
    }

    if (v55 >= v46)
    {

      return;
    }

    v45 = *(v42 + 8 * v55);
    ++v48;
    if (v45)
    {
      v48 = v55;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_100A44504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  v5 = swift_task_alloc();
  *(v4 + 48) = v5;
  *v5 = v4;
  v5[1] = sub_100A44598;

  return daemon.getter();
}

uint64_t sub_100A44598(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 56) = a1;

  v3 = swift_task_alloc();
  *(v2 + 64) = v3;
  v4 = type metadata accessor for Daemon();
  updated = type metadata accessor for SimpleBeaconUpdateService(0);
  v6 = sub_100A4BFC4(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100A4BFC4(&unk_1016B10F0, type metadata accessor for SimpleBeaconUpdateService, &unk_1013CAC90);
  *v3 = v9;
  v3[1] = sub_100A44774;

  return ActorServiceDaemon.getService<A>()(v4, updated, v6, v7);
}

uint64_t sub_100A44774(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_100A448C8;
  }

  else
  {

    *(v4 + 72) = a1;
    v5 = sub_100A449DC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100A448C8()
{
  if (qword_101694770 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177AE10);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Cannot update beacon locating state without SimpleBeaconUpdateService.", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100A449DC()
{
  v1 = v0[5];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v0[10] = v2;

  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_100A44AA4;

  return sub_10094DB94(v2);
}

uint64_t sub_100A44AA4()
{

  return _swift_task_switch(sub_100A4E938, 0, 0);
}

uint64_t sub_100A44BBC(uint64_t a1)
{
  v3 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = v1 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_beaconUUIDsLocalLocating;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_beaconUUIDsLocalLocating));
  v7 = *(v6 + 8);
  if (*(a1 + 16) <= v7[2] >> 3)
  {
    v13 = *(v6 + 8);
    sub_10087D5B4(a1);
    v8 = v13;
  }

  else
  {
    v8 = sub_100610BC8(a1, v7);
  }

  *(v6 + 8) = v8;
  os_unfair_lock_unlock(v6);
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;

  sub_10025EDD4(0, 0, v5, &unk_1013D3588, v10);
}

uint64_t sub_100A44D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_100A44DB4;

  return daemon.getter();
}

uint64_t sub_100A44DB4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 32) = a1;

  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  v4 = type metadata accessor for Daemon();
  updated = type metadata accessor for SimpleBeaconUpdateService(0);
  v6 = sub_100A4BFC4(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100A4BFC4(&unk_1016B10F0, type metadata accessor for SimpleBeaconUpdateService, &unk_1013CAC90);
  *v3 = v9;
  v3[1] = sub_100A44F90;

  return ActorServiceDaemon.getService<A>()(v4, updated, v6, v7);
}

uint64_t sub_100A44F90(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    return _swift_task_switch(sub_100A4E8E4, 0, 0);
  }

  else
  {

    v4[6] = a1;
    v6 = swift_task_alloc();
    v4[7] = v6;
    *v6 = v5;
    v6[1] = sub_100A45134;
    v7 = v4[2];

    return sub_10094DB94(v7);
  }
}

uint64_t sub_100A45134()
{

  return _swift_task_switch(sub_1008347FC, 0, 0);
}

uint64_t sub_100A45230(void *a1)
{
  v3 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = swift_allocObject();
  *(v6 + 16) = &_swiftEmptySetSingleton;
  v7 = v1 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_beaconUUIDsLocalLocating;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_beaconUUIDsLocalLocating));
  v8 = *(v7 + 8);
  if (*(v8 + 16) <= a1[2] >> 3)
  {
    v17 = a1;

    sub_10087D5B4(v8);
    v9 = v17;
  }

  else
  {

    v9 = sub_100610BC8(v8, a1);
  }

  *(v6 + 16) = v9;

  v10 = *(v7 + 8);

  *(v7 + 8) = sub_10039DA70(v11, v10);
  os_unfair_lock_unlock(v7);
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v6;

  sub_10025EDD4(0, 0, v5, &unk_1013D3578, v13);

  swift_beginAccess();
  v14 = *(v6 + 16);

  return v14;
}

uint64_t sub_100A45430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  v5 = swift_task_alloc();
  *(v4 + 48) = v5;
  *v5 = v4;
  v5[1] = sub_100A454C4;

  return daemon.getter();
}

uint64_t sub_100A454C4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 56) = a1;

  v3 = swift_task_alloc();
  *(v2 + 64) = v3;
  v4 = type metadata accessor for Daemon();
  updated = type metadata accessor for SimpleBeaconUpdateService(0);
  v6 = sub_100A4BFC4(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100A4BFC4(&unk_1016B10F0, type metadata accessor for SimpleBeaconUpdateService, &unk_1013CAC90);
  *v3 = v9;
  v3[1] = sub_100A456A0;

  return ActorServiceDaemon.getService<A>()(v4, updated, v6, v7);
}

uint64_t sub_100A456A0(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_100A4E8E4;
  }

  else
  {

    *(v4 + 72) = a1;
    v5 = sub_100A457F4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100A457F4()
{
  v1 = v0[5];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v0[10] = v2;

  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_100A458BC;

  return sub_10094DB94(v2);
}

uint64_t sub_100A458BC()
{

  return _swift_task_switch(sub_1001884B4, 0, 0);
}

id *sub_100A459D4()
{

  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_configSubscription, &qword_1016B28A0, &unk_101393D00);
  v1 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_transactionManager;
  v2 = type metadata accessor for PressuredExitTransactionManager();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_observationSubscription, &unk_1016B2820, &qword_1013D3710);
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_beaconUUIDsLocalLocating + 8, &qword_1016AF8E0, &qword_101393130);
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_beaconUUIDsLocating + 8, &qword_1016A5700, &qword_1013B2B10);
  sub_100A4E478(*(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_beaconKeyManagerURLChangedSubscription));

  sub_1000BB27C(*(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService____lazy_storage___payloadDecodingBlock), *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService____lazy_storage___payloadDecodingBlock + 8));

  sub_100A4E488(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_cbPeripheralManager);
  return v0;
}

uint64_t sub_100A45E10()
{
  sub_100A459D4();

  return swift_deallocClassInstance();
}

void sub_100A45E70(uint64_t a1)
{
  sub_1002ECE54(319, &qword_10169A430, &qword_1016B1E70, &qword_10138CDB0);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PressuredExitTransactionManager();
    if (v2 <= 0x3F)
    {
      sub_1002ECE54(319, &qword_1016B1E78, &unk_1016B1E80, &qword_10138CDE0);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_100A4614C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000D2118;

  return sub_1009A2510(a1);
}

uint64_t sub_100A461F8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100A4A3C4(a1, a2);
}

uint64_t sub_100A462AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_100A4A8F4(a1);
}

uint64_t sub_100A46354(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_100A4B230(a1);
}

uint64_t sub_100A463FC(uint64_t a1)
{
  result = type metadata accessor for BeaconObservation(0);
  v3 = *(a1 + *(result + 24));
  if (v3 == 42 || v3 == 33)
  {
    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v4 = type metadata accessor for UUID();
    v5 = *(v4 - 8);
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_101385D80;
    (*(v5 + 16))(v7 + v6, a1, v4);
    v8 = sub_100B05044(v7);
    swift_setDeallocating();
    (*(v5 + 8))(v7 + v6, v4);
    swift_deallocClassInstance();
    sub_1009D5310(v8);
  }

  return result;
}

uint64_t sub_100A46598(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v5 = qword_10177C370;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101385D80;
  *(v6 + 56) = &type metadata for Bool;
  *(v6 + 64) = &protocol witness table for Bool;
  *(v6 + 32) = v3 & 1;
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "FMIP State changed to %i", v11);

  if ((v3 & 1) == 0)
  {
    sub_100A3D354();
  }

  type metadata accessor for Transaction();
  static Transaction.named<A>(_:with:)();
  v7 = *(v2 + 48);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100A4C078;
  *(v8 + 24) = v2;
  aBlock[4] = sub_1000D2FB0;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_101643EA8;
  v9 = _Block_copy(aBlock);

  dispatch_sync(v7, v9);
  _Block_release(v9);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100A467E4(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v48 = a6;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchTime();
  v37 = *(v15 - 8);
  v38 = v15;
  v16 = __chkstk_darwin(v15);
  v35 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v36 = &v34 - v18;
  v19 = *(a2 + 16);
  if (v19)
  {
    v47 = *(v12 + 80);
    v20 = (v47 + 32) & ~v47;
    v21 = a2 + v20;
    v22 = *(v12 + 72);
    v44 = (v12 + 16);
    v45 = v22;
    v46 = v20;
    v43 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = (v43 + 15) & 0xFFFFFFFFFFFFFFF8;
    v40 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v41 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
    v39 = (v12 + 32);
    do
    {
      v49 = v19;
      dispatch_group_enter(a3);
      (*v44)(v14, v21, v11);
      v23 = v41;
      v24 = swift_allocObject();
      *(v24 + 16) = a1;
      *(v24 + 24) = a3;
      (*v39)(v24 + v46, v14, v11);
      v25 = v42;
      *(v24 + v43) = a4;
      *(v24 + v25) = a5;
      *(v24 + v23) = v48;

      v26 = a3;

      v14 = v40;

      sub_1003DDE30(v21, 0, sub_100A4C0AC, v24);

      v21 += v45;
      v19 = v49 - 1;
    }

    while (v49 != 1);
  }

  v27 = v35;
  static DispatchTime.now()();
  v28 = v36;
  + infix(_:_:)();
  v29 = v38;
  v30 = *(v37 + 8);
  v30(v27, v38);
  OS_dispatch_group.wait(timeout:)();
  v30(v28, v29);
  result = static DispatchTimeoutResult.== infix(_:_:)();
  if (result)
  {
    v32 = static os_log_type_t.error.getter();
    if (qword_101695028 != -1)
    {
      v33 = v32;
      swift_once();
      v32 = v33;
    }

    return os_log(_:dso:log:_:_:)(v32, &_mh_execute_header, qword_10177C370, "Timed out waiting for removeBeacon to finish", 44, 2, _swiftEmptyArrayStorage);
  }

  return result;
}

void sub_100A46BA4(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v10 - 8);
  v12 = &v30 - v11;
  Transaction.capture()();
  if (a1)
  {
    v13 = static os_log_type_t.error.getter();
    if (qword_101695028 != -1)
    {
      v29 = v13;
      swift_once();
      v13 = v29;
    }
  }

  else
  {
    v31 = a6;
    v14 = static os_log_type_t.default.getter();
    if (qword_101695028 != -1)
    {
      swift_once();
    }

    v15 = qword_10177C370;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_101385D80;
    type metadata accessor for UUID();
    sub_100A4BFC4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_100008C00();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "Local beaconing record %@ destroyed", 35, 2, v16);

    v20 = dispatch_group_create();
    dispatch_group_enter(v20);
    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v20;
    v22[5] = a5;
    v23 = v20;

    sub_100A838D4(0, 0, v12, &unk_1013D3540, v22);

    OS_dispatch_group.wait()();

    v24 = v31;
    v25 = *(v31 + 16);
    if (v25)
    {
      v26 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
      v27 = v24 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
      v28 = *(v26 + 72);
      do
      {
        sub_100A5188C(v27);
        v27 += v28;
        --v25;
      }

      while (v25);
    }
  }

  dispatch_group_leave(a3);
}

uint64_t sub_100A46F64(uint64_t a1)
{
  v1 = a1;
  v2 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v3 = qword_10177C370;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_101385D80;
  *(v4 + 56) = &type metadata for Bool;
  *(v4 + 64) = &protocol witness table for Bool;
  *(v4 + 32) = v1 & 1;
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v3, "FMIP location services changed to %i", v6);

  type metadata accessor for Transaction();
  return static Transaction.named<A>(_:with:)();
}

uint64_t sub_100A470A4()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B810);
  sub_1000076D4(v0, qword_10177B810);
  return Logger.init(subsystem:category:)();
}

void sub_100A47124(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2 || *(v2 + 16) == *(v2 + 24))
    {
      return;
    }
  }

  else if (v4)
  {
    if (v2 == v2 >> 32)
    {
      return;
    }
  }

  else if ((v3 & 0xFF000000000000) == 0)
  {
    return;
  }

  v5 = objc_autoreleasePoolPush();
  sub_101122FBC(v2, v3, &v8);
  if (v1)
  {
    objc_autoreleasePoolPop(v5);
    __break(1u);
  }

  else
  {
    objc_autoreleasePoolPop(v5);
    v6 = v8;
    if (v8)
    {
      v7 = [v8 recordChangeTag];

      if (v7)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }
    }
  }
}

uint64_t sub_100A47234()
{
  v0 = sub_1000BC4D4(&qword_1016B27D8, &qword_1013D3618);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_1016B27E0;
    v3 = &unk_1013D3620;
  }

  else
  {
    v2 = &unk_10169BAE0;
    v3 = &unk_10138C430;
  }

  return sub_1000BC4D4(v2, v3);
}

Swift::Int sub_100A472AC(uint64_t *a1)
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
        type metadata accessor for KeySyncMetadataDisplay(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for KeySyncMetadataDisplay(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100A4763C(v8, v9, a1, v4);
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
    return sub_100A473D8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100A473D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for KeySyncMetadataDisplay(0);
  v9 = __chkstk_darwin(v8);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v27 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v27 - v16;
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v34 = v18;
    v28 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v32 = v20;
    v33 = a3;
    v30 = v23;
    v31 = v22;
    while (1)
    {
      sub_100A4E410(v23, v17, type metadata accessor for KeySyncMetadataDisplay);
      sub_100A4E410(v20, v13, type metadata accessor for KeySyncMetadataDisplay);
      v24 = static Date.> infix(_:_:)();
      sub_100A4DCAC(v13, type metadata accessor for KeySyncMetadataDisplay);
      result = sub_100A4DCAC(v17, type metadata accessor for KeySyncMetadataDisplay);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v20 = v32 + v28;
        v22 = v31 - 1;
        v23 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = v35;
      sub_10002AC44(v23, v35, type metadata accessor for KeySyncMetadataDisplay);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10002AC44(v25, v20, type metadata accessor for KeySyncMetadataDisplay);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100A4763C(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v104 = a1;
  v9 = type metadata accessor for KeySyncMetadataDisplay(0);
  v112 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v107 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v115 = &v100 - v13;
  v14 = __chkstk_darwin(v12);
  v116 = &v100 - v15;
  result = __chkstk_darwin(v14);
  v18 = &v100 - v17;
  v114 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v104;
    if (!*v104)
    {
      goto LABEL_134;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_128:
      result = sub_100B31E68(a4);
    }

    v118 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v114)
      {
        v96 = *(result + 16 * a4);
        v97 = result;
        v98 = *(result + 16 * (a4 - 1) + 40);
        sub_100A47FA0(*v114 + *(v112 + 72) * v96, *v114 + *(v112 + 72) * *(result + 16 * (a4 - 1) + 32), *v114 + *(v112 + 72) * v98, v5);
        if (v6)
        {
        }

        if (v98 < v96)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_100B31E68(v97);
        }

        if (a4 - 2 >= *(v97 + 2))
        {
          goto LABEL_122;
        }

        v99 = &v97[16 * a4];
        *v99 = v96;
        *(v99 + 1) = v98;
        v118 = v97;
        sub_100B31DDC(a4 - 1);
        result = v118;
        a4 = *(v118 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v20 = 0;
  v21 = _swiftEmptyArrayStorage;
  v103 = a4;
  v117 = v9;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v108 = v21;
    if (v20 + 1 >= v19)
    {
      v19 = v20 + 1;
    }

    else
    {
      v24 = *(v112 + 72);
      v5 = *v114 + v24 * v23;
      v110 = *v114;
      v25 = v110;
      sub_100A4E410(v110 + v24 * v23, v18, type metadata accessor for KeySyncMetadataDisplay);
      v26 = v25 + v24 * v22;
      v27 = v22;
      v28 = v116;
      sub_100A4E410(v26, v116, type metadata accessor for KeySyncMetadataDisplay);
      LODWORD(v111) = static Date.> infix(_:_:)();
      sub_100A4DCAC(v28, type metadata accessor for KeySyncMetadataDisplay);
      result = sub_100A4DCAC(v18, type metadata accessor for KeySyncMetadataDisplay);
      v102 = v27;
      v29 = v27 + 2;
      v113 = v24;
      v30 = v110 + v24 * (v27 + 2);
      while (v19 != v29)
      {
        sub_100A4E410(v30, v18, type metadata accessor for KeySyncMetadataDisplay);
        v31 = v116;
        sub_100A4E410(v5, v116, type metadata accessor for KeySyncMetadataDisplay);
        v32 = static Date.> infix(_:_:)() & 1;
        sub_100A4DCAC(v31, type metadata accessor for KeySyncMetadataDisplay);
        result = sub_100A4DCAC(v18, type metadata accessor for KeySyncMetadataDisplay);
        ++v29;
        v30 += v113;
        v5 += v113;
        if ((v111 & 1) != v32)
        {
          v19 = v29 - 1;
          break;
        }
      }

      v22 = v102;
      a4 = v103;
      if (v111)
      {
        if (v19 < v102)
        {
          goto LABEL_125;
        }

        if (v102 < v19)
        {
          v101 = v6;
          v33 = v113 * (v19 - 1);
          v34 = v19;
          v35 = v19 * v113;
          v111 = v19;
          v36 = v102;
          v37 = v102;
          v38 = v102 * v113;
          do
          {
            if (v36 != --v34)
            {
              v39 = *v114;
              if (!*v114)
              {
                goto LABEL_131;
              }

              v5 = v39 + v38;
              sub_10002AC44(v39 + v38, v107, type metadata accessor for KeySyncMetadataDisplay);
              if (v38 < v33 || v5 >= v39 + v35)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v38 != v33)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_10002AC44(v107, v39 + v33, type metadata accessor for KeySyncMetadataDisplay);
            }

            ++v36;
            v33 -= v113;
            v35 -= v113;
            v38 += v113;
          }

          while (v36 < v34);
          v6 = v101;
          a4 = v103;
          v22 = v37;
          v19 = v111;
        }
      }
    }

    v40 = v114[1];
    if (v19 < v40)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_124;
      }

      if (v19 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_126;
        }

        if ((v22 + a4) >= v40)
        {
          v41 = v114[1];
        }

        else
        {
          v41 = v22 + a4;
        }

        if (v41 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v19 != v41)
        {
          break;
        }
      }
    }

    v20 = v19;
    if (v19 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v108;
    }

    else
    {
      result = sub_100A5B430(0, *(v108 + 2) + 1, 1, v108);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v42 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v42 >> 1)
    {
      result = sub_100A5B430((v42 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v43 = &v21[16 * a4];
    *(v43 + 4) = v22;
    *(v43 + 5) = v20;
    v44 = *v104;
    if (!*v104)
    {
      goto LABEL_133;
    }

    if (a4)
    {
      while (1)
      {
        v45 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v46 = *(v21 + 4);
          v47 = *(v21 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_52:
          if (v49)
          {
            goto LABEL_112;
          }

          v62 = &v21[16 * v5];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_115;
          }

          v68 = &v21[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_119;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v72 = &v21[16 * v5];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_66:
        if (v67)
        {
          goto LABEL_114;
        }

        v75 = &v21[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_117;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v45 - 1;
        if (v45 - 1 >= v5)
        {
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
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v114)
        {
          goto LABEL_130;
        }

        v83 = v21;
        v84 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v45 + 40];
        sub_100A47FA0(*v114 + *(v112 + 72) * v84, *v114 + *(v112 + 72) * *&v21[16 * v45 + 32], *v114 + *(v112 + 72) * v5, v44);
        if (v6)
        {
        }

        if (v5 < v84)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_100B31E68(v83);
        }

        if (a4 >= *(v83 + 2))
        {
          goto LABEL_109;
        }

        v85 = &v83[16 * a4];
        *(v85 + 4) = v84;
        *(v85 + 5) = v5;
        v118 = v83;
        result = sub_100B31DDC(v45);
        v21 = v118;
        v5 = *(v118 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v21[16 * v5 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_110;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_111;
      }

      v57 = &v21[16 * v5];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_113;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_116;
      }

      if (v61 >= v53)
      {
        v79 = &v21[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_120;
        }

        if (v48 < v82)
        {
          v45 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v114[1];
    a4 = v103;
    if (v20 >= v19)
    {
      goto LABEL_95;
    }
  }

  v101 = v6;
  v86 = v19;
  v87 = v22;
  v88 = *v114;
  v89 = *(v112 + 72);
  v90 = *v114 + v89 * (v19 - 1);
  v91 = -v89;
  v102 = v87;
  v92 = v87 - v19;
  v111 = v86;
  v105 = v89;
  v106 = v41;
  v5 = v88 + v86 * v89;
LABEL_85:
  v109 = v5;
  v110 = v92;
  v113 = v90;
  while (1)
  {
    sub_100A4E410(v5, v18, type metadata accessor for KeySyncMetadataDisplay);
    v93 = v116;
    sub_100A4E410(v90, v116, type metadata accessor for KeySyncMetadataDisplay);
    a4 = static Date.> infix(_:_:)();
    sub_100A4DCAC(v93, type metadata accessor for KeySyncMetadataDisplay);
    result = sub_100A4DCAC(v18, type metadata accessor for KeySyncMetadataDisplay);
    if ((a4 & 1) == 0)
    {
LABEL_84:
      v20 = v106;
      v90 = v113 + v105;
      v92 = v110 - 1;
      v5 = v109 + v105;
      if (++v111 != v106)
      {
        goto LABEL_85;
      }

      v6 = v101;
      v22 = v102;
      if (v106 < v102)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v88)
    {
      break;
    }

    a4 = type metadata accessor for KeySyncMetadataDisplay;
    v94 = v115;
    sub_10002AC44(v5, v115, type metadata accessor for KeySyncMetadataDisplay);
    swift_arrayInitWithTakeFrontToBack();
    sub_10002AC44(v94, v90, type metadata accessor for KeySyncMetadataDisplay);
    v90 += v91;
    v5 += v91;
    if (__CFADD__(v92++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_100A47FA0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = type metadata accessor for KeySyncMetadataDisplay(0);
  v8 = __chkstk_darwin(v45);
  v44 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v43 = &v35 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v17;
    if (v17 >= 1)
    {
      v24 = -v13;
      v25 = a4 + v17;
      v39 = a1;
      v40 = a4;
      v38 = -v13;
      do
      {
        v36 = v23;
        v26 = a2;
        v27 = a2 + v24;
        v41 = v26;
        v42 = v27;
        while (1)
        {
          if (v26 <= a1)
          {
            v48 = v26;
            v46 = v36;
            goto LABEL_59;
          }

          v37 = v23;
          v29 = a3 + v24;
          v30 = v25 + v24;
          v31 = v43;
          sub_100A4E410(v30, v43, type metadata accessor for KeySyncMetadataDisplay);
          v32 = v44;
          sub_100A4E410(v27, v44, type metadata accessor for KeySyncMetadataDisplay);
          v33 = static Date.> infix(_:_:)();
          sub_100A4DCAC(v32, type metadata accessor for KeySyncMetadataDisplay);
          sub_100A4DCAC(v31, type metadata accessor for KeySyncMetadataDisplay);
          if (v33)
          {
            break;
          }

          v23 = v30;
          if (a3 < v25 || v29 >= v25)
          {
            a3 = v29;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v39;
          }

          else
          {
            v34 = a3 == v25;
            a3 = v29;
            a1 = v39;
            if (!v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v30;
          v26 = v41;
          v28 = v30 > v40;
          v27 = v42;
          v24 = v38;
          if (!v28)
          {
            a2 = v41;
            goto LABEL_58;
          }
        }

        if (a3 < v41 || v29 >= v41)
        {
          a3 = v29;
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v38;
          a1 = v39;
          v23 = v37;
        }

        else
        {
          v34 = a3 == v41;
          a3 = v29;
          a2 = v42;
          v24 = v38;
          a1 = v39;
          v23 = v37;
          if (!v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v40);
    }

LABEL_58:
    v48 = a2;
    v46 = v23;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = a3;
        v20 = v43;
        sub_100A4E410(a2, v43, type metadata accessor for KeySyncMetadataDisplay);
        v21 = v44;
        sub_100A4E410(a4, v44, type metadata accessor for KeySyncMetadataDisplay);
        v22 = static Date.> infix(_:_:)();
        sub_100A4DCAC(v21, type metadata accessor for KeySyncMetadataDisplay);
        sub_100A4DCAC(v20, type metadata accessor for KeySyncMetadataDisplay);
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v13;
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v13;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v48 = a1;
      }

      while (a4 < v42 && a2 < a3);
    }
  }

LABEL_59:
  sub_10060AC00(&v48, &v47, &v46);
  return 1;
}

void sub_100A484D0()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v12)
  {
    v13 = v12;
    v26 = v4;
    v14 = SPSelfBeaconingChangedNotification;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v25 = v1;
    v15 = static OS_os_log.default.getter();
    v16 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Posting SPSelfBeaconingChangedNotification Darwin notification", 62, 2, &_mh_execute_header, v15, v16, _swiftEmptyArrayStorage);

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v9 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v8);
    v24 = static OS_dispatch_queue.global(qos:)();
    (*(v9 + 8))(v11, v8);
    v17 = swift_allocObject();
    *(v17 + 16) = v13;
    *(v17 + 24) = v14;
    aBlock[4] = sub_100A4E8F0;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_101643E08;
    v18 = _Block_copy(aBlock);
    v19 = v13;
    v20 = v14;
    static DispatchQoS.unspecified.getter();
    v27 = _swiftEmptyArrayStorage;
    sub_100A4BFC4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v21 = v24;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);

    (*(v25 + 8))(v3, v0);
    (*(v5 + 8))(v7, v26);
  }

  else
  {
    v22 = static os_log_type_t.error.getter();
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v26 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v26, "CFNotificationCenterGetDarwinNotifyCenter return nil!", 53, 2, _swiftEmptyArrayStorage);
    v23 = v26;
  }
}

void sub_100A48990()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v12)
  {
    v13 = v12;
    v26 = v4;
    v14 = SPServiceSettingsChangedNotification;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v25 = v1;
    v15 = static OS_os_log.default.getter();
    v16 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Posting SPServiceSettingsChangedNotification Darwin notification", 64, 2, &_mh_execute_header, v15, v16, _swiftEmptyArrayStorage);

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v9 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v8);
    v24 = static OS_dispatch_queue.global(qos:)();
    (*(v9 + 8))(v11, v8);
    v17 = swift_allocObject();
    *(v17 + 16) = v13;
    *(v17 + 24) = v14;
    aBlock[4] = sub_100A4C064;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_101643E58;
    v18 = _Block_copy(aBlock);
    v19 = v13;
    v20 = v14;
    static DispatchQoS.unspecified.getter();
    v27 = _swiftEmptyArrayStorage;
    sub_100A4BFC4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v21 = v24;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);

    (*(v25 + 8))(v3, v0);
    (*(v5 + 8))(v7, v26);
  }

  else
  {
    v22 = static os_log_type_t.error.getter();
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v26 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v26, "CFNotificationCenterGetDarwinNotifyCenter return nil!", 53, 2, _swiftEmptyArrayStorage);
    v23 = v26;
  }
}

void sub_100A48E50(void *a1)
{
  type metadata accessor for AnyKeyPath();
  swift_getKeyPath();
  v1 = static AnyKeyPath.== infix(_:_:)();

  if (v1 & 1) != 0 || (swift_getKeyPath(), v2 = static AnyKeyPath.== infix(_:_:)(), , (v2) || (swift_getKeyPath(), v3 = static AnyKeyPath.== infix(_:_:)(), , (v3))
  {
    type metadata accessor for Transaction();
    static Transaction.named<A>(_:with:)();
    sub_100A907FC();
    sub_100A83364(0);
  }

  swift_getKeyPath();
  v4 = static AnyKeyPath.== infix(_:_:)();

  if (v4)
  {
    sub_100A484D0();
  }

  v5 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v6 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101385D80;
  type metadata accessor for KeyPath();

  v8 = String.init<A>(describing:)();
  v10 = v9;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_100008C00();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "Posting ServiceSettingsChanged Notification for change in %@", 60, 2, v7);

  sub_100A48990();
}

BOOL sub_100A490E0()
{
  if (qword_101694940 != -1)
  {
LABEL_25:
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v0 = sub_10107406C(v18);
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  if (v1 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v7 = sub_10107416C(v18);

  v8 = *(v7 + 16);
  if (v8)
  {
    for (i = 0; v8 != i; ++i)
    {
      if (i >= *(v7 + 16))
      {
        __break(1u);
        goto LABEL_25;
      }

      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
      if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
      {
      }

      else
      {
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v15 & 1) == 0)
        {

          v16 = 0;
          result = 0;
          if (v6)
          {
            return v16;
          }

          return result;
        }
      }
    }
  }

  return (v6 & 1) != 0;
}

void sub_100A492E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconObservation(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v21 - v9;
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v11 = sub_100035730(a1, 0, 0);
  v12 = v11[2];
  if (v12)
  {
    v22 = a2;
    v23 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v13 = *(v5 + 80);
    v21[1] = v11;
    v14 = v11 + ((v13 + 32) & ~v13);
    v15 = *(v5 + 72);
    do
    {
      sub_100A4E410(v14, v10, type metadata accessor for BeaconObservation);
      sub_100A4E410(v10, v8, type metadata accessor for BeaconObservation);
      v16 = objc_allocWithZone(SPBeaconObservation);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v18 = qword_1013D39A0[v8[*(v4 + 24)]];
      v19 = Date._bridgeToObjectiveC()().super.isa;
      [v16 initWithBeaconIdentifier:isa type:v18 date:v19 location:0];

      sub_100A4DCAC(v8, type metadata accessor for BeaconObservation);
      sub_100A4DCAC(v10, type metadata accessor for BeaconObservation);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v14 += v15;
      --v12;
    }

    while (v12);

    a2 = v22;
  }

  else
  {
  }

  sub_100008BB8(0, &qword_1016B27C0, SPBeaconObservation_ptr);
  v20 = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, v20);
}

unint64_t sub_100A495B4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10160C4C8, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

void sub_100A49600(uint64_t a1)
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v1 = static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    v3 = v1;
    swift_once();
    v1 = v3;
  }

  os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, qword_10177C3D0, "ConfigurationCoordinator resetting by overriding saved config on disk.", 70, 2, _swiftEmptyArrayStorage);
  QueueSynchronizer.conditionalSync<A>(_:)();
  v2 = [objc_opt_self() standardUserDefaults];
  v4 = String._bridgeToObjectiveC()();
  [v2 removeObjectForKey:v4];
}

uint64_t sub_100A4978C(uint64_t a1)
{
  v1[7] = a1;
  v2 = type metadata accessor for XPCServiceDescription();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v3 = type metadata accessor for MachServiceName();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v1[16] = v4;
  v1[17] = *(v4 - 8);
  v1[18] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v1[19] = v5;
  v1[20] = *(v5 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v6 = type metadata accessor for LocalBeaconKeyInfo();
  v1[23] = v6;
  v1[24] = *(v6 - 8);
  v1[25] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v1[26] = swift_task_alloc();
  v7 = type metadata accessor for OwnedBeaconRecord(0);
  v1[27] = v7;
  v1[28] = *(v7 - 8);
  v1[29] = swift_task_alloc();

  return _swift_task_switch(sub_100A49A74, 0, 0);
}

uint64_t sub_100A49A74()
{
  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_100A4BFC4(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v2 = sub_1000280DC(v0 + 2);
  (*(*(My - 8) + 104))(v2, enum case for Feature.FindMy.tribeca(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v0 + 2);
  if (My)
  {
    v3 = v0[27];
    v4 = v0[28];
    v5 = v0[26];
    sub_1000D2A70(v0[7], v5, &unk_1016A9A20, &qword_10138B280);
    if ((*(v4 + 48))(v5, 1, v3) == 1)
    {
      sub_10000B3A8(v0[26], &unk_1016A9A20, &qword_10138B280);
      v6 = 0;
      v7 = 0xF000000000000000;
    }

    else
    {
      v9 = v0[29];
      v10 = v0[27];
      v11 = v0[20];
      v12 = v0[21];
      v13 = v0[18];
      v14 = v0[19];
      v16 = v0[16];
      v15 = v0[17];
      sub_10002AC44(v0[26], v9, type metadata accessor for OwnedBeaconRecord);
      v17 = getuid();
      sub_1000294F0(v17);
      (*(v11 + 16))(v12, v9 + v10[5], v14);
      (*(v15 + 16))(v13, v9 + v10[8], v16);
      v18 = (v9 + v10[13]);
      v19 = *v18;
      v20 = v18[1];
      v21 = (v9 + v10[9]);
      v22 = *v21;
      v23 = v21[1];
      sub_100017D5C(v19, v20);
      sub_100017D5C(v22, v23);
      LocalBeaconKeyInfo.init(userIdentifier:beaconIdentifier:pairDate:publicKey:sharedSecretKey:)();
      type metadata accessor for PropertyListEncoder();
      swift_allocObject();
      PropertyListEncoder.init()();
      sub_100A4BFC4(&qword_1016B26D8, &type metadata accessor for LocalBeaconKeyInfo, &protocol conformance descriptor for LocalBeaconKeyInfo);
      v6 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
      v7 = v24;
      v25 = v0[29];
      (*(v0[24] + 8))(v0[25], v0[23]);

      sub_100A4DCAC(v25, type metadata accessor for OwnedBeaconRecord);
    }

    v40 = v7;
    v41 = v6;
    v0[30] = v6;
    v0[31] = v7;
    v28 = v0[14];
    v27 = v0[15];
    v30 = v0[12];
    v29 = v0[13];
    v31 = v0[10];
    v32 = v0[11];
    v34 = v0[8];
    v33 = v0[9];
    MachServiceName.init(_:)();
    v35 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP7SPOwner33FindMyBeaconDaemonPushXPCProtocol_];
    (*(v29 + 16))(v28, v27, v30);
    v36 = v35;
    XPCServiceDescription.init(name:options:remoteObjectInterface:interruptionHandler:invalidationHandler:)();
    (*(v33 + 16))(v31, v32, v34);
    sub_1000BC4D4(&qword_1016B26D0, &unk_1013D3560);
    swift_allocObject();
    v37 = XPCSession.init(service:)();
    v0[32] = v37;
    XPCSession.resume()();

    (*(v33 + 8))(v32, v34);
    (*(v29 + 8))(v27, v30);
    v38 = swift_task_alloc();
    v0[33] = v38;
    v38[2] = v37;
    v38[3] = v41;
    v38[4] = v40;
    v39 = swift_task_alloc();
    v0[34] = v39;
    *v39 = v0;
    v39[1] = sub_100A4A09C;

    return withCancellableCheckedThrowingContinuation<A>(_:)();
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100A4A09C()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_100A4A2C4;
  }

  else
  {
    v2 = sub_100A4A1D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100A4A1D0()
{
  sub_100006654(v0[30], v0[31]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100A4A2C4()
{
  v1 = v0[31];
  v2 = v0[30];

  sub_100006654(v2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100A4A3C4(uint64_t a1, int a2)
{
  *(v2 + 64) = a2;
  *(v2 + 16) = a1;
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_100A4A45C;

  return daemon.getter();
}

uint64_t sub_100A4A45C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 32) = a1;

  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for LeechScanningService();
  v6 = sub_100A4BFC4(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100A4BFC4(&unk_1016B1170, type metadata accessor for LeechScanningService, &unk_101392F68);
  *v3 = v9;
  v3[1] = sub_100A4A638;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100A4A638(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    return _swift_task_switch(sub_100A4A7E0, 0, 0);
  }

  else
  {

    *(v4 + 48) = a1;
    v6 = swift_task_alloc();
    *(v4 + 56) = v6;
    *v6 = v5;
    v6[1] = sub_100A45134;
    v7 = *(v4 + 64);
    v8 = *(v4 + 16);

    return sub_10020632C(v8, v7);
  }
}

uint64_t sub_100A4A7E0()
{
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B7F8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unable to get LeechScanningService!", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100A4A8F4(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100A4A9C0, 0, 0);
}

uint64_t sub_100A4A9C0()
{
  v20 = v0;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177C418);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[4];
  v9 = v0[5];
  v11 = v0[3];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v12 = 136446466;
    *(v12 + 4) = sub_1000136BC(0xD000000000000023, 0x8000000101368490, &v19);
    *(v12 + 12) = 2082;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_1000136BC(v13, v15, &v19);

    *(v12 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s identifier %{public}s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v17 = swift_task_alloc();
  v0[6] = v17;
  *v17 = v0;
  v17[1] = sub_100A4AC60;

  return daemon.getter();
}

uint64_t sub_100A4AC60(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 56) = a1;

  v3 = swift_task_alloc();
  *(v2 + 64) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for PencilPairingService(0);
  v6 = sub_100A4BFC4(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100A4BFC4(&qword_10169A090, type metadata accessor for PencilPairingService, &unk_1013E8708);
  *v3 = v9;
  v3[1] = sub_100A4AE3C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100A4AE3C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[9] = a1;
  v3[10] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100A4B150, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[11] = v5;
    *v5 = v4;
    v5[1] = sub_100A4AFCC;
    v6 = v3[2];

    return sub_100D75AC8(v6);
  }
}

uint64_t sub_100A4AFCC()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_100A4B1C0;
  }

  else
  {
    v2 = sub_100A4B0E0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100A4B0E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A4B150()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A4B1C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A4B230(uint64_t a1)
{
  v1[7] = a1;
  v2 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_100A4B2FC, 0, 0);
}

uint64_t sub_100A4B2FC()
{
  v27 = v0;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = type metadata accessor for Logger();
  v0[11] = v5;
  sub_1000076D4(v5, qword_10177C418);
  (*(v1 + 16))(v2, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[9];
  v10 = v0[10];
  v11 = v0[8];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v26[0] = swift_slowAlloc();
    *v12 = 136446466;
    *(v12 + 4) = sub_1000136BC(0xD000000000000025, 0x8000000101368460, v26);
    *(v12 + 12) = 2082;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v9 + 8))(v10, v11);
    v16 = sub_1000136BC(v13, v15, v26);

    *(v12 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s identifier %{public}s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_100A4BFC4(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v18 = sub_1000280DC(v0 + 2);
  (*(*(My - 8) + 104))(v18, enum case for Feature.FindMy.lineUp(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v0 + 2);
  if (My)
  {
    v19 = swift_task_alloc();
    v0[12] = v19;
    *v19 = v0;
    v19[1] = sub_100A4B770;

    return daemon.getter();
  }

  else
  {
    if (qword_101694E98 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v5, qword_10177C0A8);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Feature.FindMy.lineUp is disabled!", v22, 2u);
    }

    sub_1003FD838();
    swift_allocError();
    *v23 = 13;
    swift_willThrow();

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_100A4B770(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 104) = a1;

  v3 = swift_task_alloc();
  *(v2 + 112) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for PencilPairingService(0);
  v6 = sub_100A4BFC4(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100A4BFC4(&qword_10169A090, type metadata accessor for PencilPairingService, &unk_1013E8708);
  *v3 = v9;
  v3[1] = sub_100A4B94C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100A4B94C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = sub_100A4BEEC;
  }

  else
  {

    v4 = sub_100A4BA68;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100A4BA68()
{
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v1 = qword_10177C218;
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 isInternalBuild];

  if (v3 && (v4 = String._bridgeToObjectiveC()(), v5 = [v1 BOOLForKey:v4], v4, (v5 & 1) != 0))
  {
    if (qword_101694E98 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v0[11], qword_10177C0A8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Ignoring unpairing notification user defaults is set.", v8, 2u);
    }

    v9 = v0[1];

    return v9();
  }

  else
  {
    if (qword_101694E98 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v0[11], qword_10177C0A8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Unpairing pencil...", v13, 2u);
    }

    v14 = swift_task_alloc();
    v0[17] = v14;
    *v14 = v0;
    v14[1] = sub_100A4BD6C;
    v15 = v0[7];

    return sub_100D75188(v15, 0);
  }
}

uint64_t sub_100A4BD6C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_100A4BF58;
  }

  else
  {
    v2 = sub_100A4BE80;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100A4BE80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A4BEEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A4BF58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A4BFC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100A4C0AC(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_100A46BA4(a1, v7, v8, v1 + v4, v6, v9);
}

uint64_t sub_100A4C164(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100A3997C(a1, v4, v5, v6);
}

uint64_t sub_100A4C230(uint64_t a1)
{
  sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);

  return sub_100A3CEF8(a1);
}

uint64_t sub_100A4C2B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100A45430(a1, v4, v5, v6);
}

uint64_t sub_100A4C36C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100A44D20(a1, v4, v5, v6);
}

uint64_t sub_100A4C420(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100A44504(a1, v4, v5, v6);
}

uint64_t sub_100A4C4D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014650;

  return sub_100A41D88(a1, v4, v5, v6);
}

uint64_t sub_100A4C590(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014744;

  return sub_100A40C64(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_100A4C6E8(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100A3E8C8(a1, v4, v5);
}

uint64_t sub_100A4C75C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100A4C7B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100A4C824(uint64_t a1)
{
  v4 = *(sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100014650;

  return sub_100A3C100(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_100A4C934()
{
  v2 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_100A3B47C(v4, v5, v0 + v3);
}

uint64_t sub_100A4CA68@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (*result == 2)
  {
    v4 = (v2 + 16);
    v5 = vld1q_dup_f64(v4);
    v6 = 576;
    v3 = 257;
  }

  else
  {
    v6 = *(result + 32);
    v5 = *(result + 8);
    v2 = result;
  }

  v7 = *(v2 + 24);
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 24) = v7;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_100A4CAC4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100A344AC(a1, v1);
}

uint64_t sub_100A4CB5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_1002ECF7C();
}

uint64_t sub_100A4CC10(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100A344AC(a1, v1);
}

uint64_t sub_100A4CCA8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100264040();
}

uint64_t sub_100A4CD5C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100A344AC(a1, v1);
}

uint64_t sub_100A4CDF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100264040();
}

uint64_t sub_100A4CEA8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100A345E8(a1, v1);
}

uint64_t sub_100A4CF40()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100264040();
}

uint64_t sub_100A4CFF4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100A344AC(a1, v1);
}

uint64_t sub_100A4D08C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100264040();
}

uint64_t sub_100A4D140(uint64_t a1)
{
  v4 = *(sub_1000BC4D4(&unk_1016B27F0, &qword_1013D3630) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_100A34668(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100A4D26C()
{
  v1 = sub_1000BC4D4(&unk_1016B27F0, &qword_1013D3630);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_100A4D350(uint64_t a1)
{
  v4 = *(sub_1000BC4D4(&unk_1016B27F0, &qword_1013D3630) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_100A34E18(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100A4D4B0(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_100E9BC20();
}

uint64_t sub_100A4D564(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_100A35558(a1, a2, v2);
}

unint64_t sub_100A4D610()
{
  result = qword_1016B2850;
  if (!qword_1016B2850)
  {
    sub_1000BC580(&qword_1016B2848, &qword_1013D3740);
    sub_100A4BFC4(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_1001E8254();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B2850);
  }

  return result;
}

uint64_t sub_100A4D6EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100A30EF4();
}

uint64_t sub_100A4D790(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = sub_1000BC4D4(&qword_1016B2A70, &unk_1013D37D0);
  return v3(a1, a1 + *(v4 + 48));
}

uint64_t sub_100A4D7E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_1007E2BE8(a1, v4, v5, v6);
}

uint64_t sub_100A4D898(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100A30F84(a1, v1);
}

uint64_t sub_100A4D99C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_1002502A8();
}

unint64_t sub_100A4DA50()
{
  result = qword_1016B29A0;
  if (!qword_1016B29A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B29A0);
  }

  return result;
}

uint64_t sub_100A4DAB4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_1008AA1C8(v2, v3);
}

uint64_t sub_100A4DB64(uint64_t a1)
{

  sub_101094E54(j___s10FindMyBase11TransactionC7captureyyF, a1);
}

uint64_t sub_100A4DBD4(uint64_t a1)
{
  v3 = *(sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_100A3A470(a1, (v1 + v4), *(v1 + v5), *(v1 + v6), *(v1 + v6 + 8), *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_100A4DCAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100A4DD14()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v20 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v0 + v3 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v19 = (v2 + 32) & ~v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v3 = v19;
LABEL_13:

      break;
    case 3:
      v8(v9, v6);
      v19 = (v2 + 32) & ~v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v11 = v1[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v1[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v14 = (v4 + v1[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v1[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  return _swift_deallocObject(v0, v3 + v20);
}

uint64_t sub_100A4E114(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return a3(a1, v6, v7, v8);
}

uint64_t sub_100A4E1CC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v3 + v7);
  v9 = (v3 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return a3(a1, v3 + v6, v8, v10, v11);
}

uint64_t sub_100A4E304(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return _swift_deallocObject(v2, 40);
}

uint64_t sub_100A4E410(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100A4E478(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BeaconManagerEntitlement(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BeaconManagerEntitlement(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for BeaconManagerService.BeaconManagerServiceError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BeaconManagerService.BeaconManagerServiceError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100A4E788()
{
  result = qword_1016B2AA0;
  if (!qword_1016B2AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B2AA0);
  }

  return result;
}

unint64_t sub_100A4E7E0()
{
  result = qword_1016B2AA8;
  if (!qword_1016B2AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B2AA8);
  }

  return result;
}

unint64_t sub_100A4E838()
{
  result = qword_1016B2AB0;
  if (!qword_1016B2AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B2AB0);
  }

  return result;
}

uint64_t sub_100A4E94C(unint64_t *a1)
{
  v2 = v1;
  v4 = *(v1 + 248);
  if (*(v4 + 16) > a1[2] >> 3)
  {

    v5 = sub_10060E4E0(v4, a1);

    if (v5[2])
    {
      goto LABEL_3;
    }

LABEL_41:
  }

  v51 = a1;

  sub_10087D23C(v4);

  v5 = v51;
  if (!v51[2])
  {
    goto LABEL_41;
  }

LABEL_3:
  v6 = *(v5 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 <= 0xD)
  {
    goto LABEL_4;
  }

  while (1)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_4:
    __chkstk_darwin(v10);
    bzero(&v50[-((v9 + 15) & 0x3FFFFFFFFFFFFFF0)], v9);
    v11 = 0;
    v12 = 0;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & v5[7];
    while (v15)
    {
      v16 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v17 = v16 | (v12 << 6);
LABEL_14:
      if ((*(v5[6] + 24 * v17 + 16) & 1) == 0)
      {
        *&v50[((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0)] |= 1 << v17;
        v20 = __OFADD__(v11++, 1);
        if (v20)
        {
          __break(1u);
LABEL_18:
          v21 = sub_10060B4EC(&v50[-((v9 + 15) & 0x3FFFFFFFFFFFFFF0)], v8, v11, v5);
          v8 = 0;
          goto LABEL_19;
        }
      }
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= ((v13 + 63) >> 6))
      {
        goto LABEL_18;
      }

      v19 = v5[v12 + 7];
      ++v18;
      if (v19)
      {
        v15 = (v19 - 1) & v19;
        v17 = __clz(__rbit64(v19)) | (v12 << 6);
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
  }

  v45 = swift_slowAlloc();
  v46 = v8;
  v8 = 0;
  v47 = sub_100A4F1DC(v45, v46, v5, sub_100A4F110);

  v21 = v47;
LABEL_19:
  v22 = *(v21 + 16);

  v24 = *(v5 + 32);
  v25 = ((1 << v24) + 63) >> 6;
  if ((v24 & 0x3Fu) <= 0xD)
  {
LABEL_20:
    __chkstk_darwin(v23);
    v9 = &v50[-((v26 + 15) & 0x3FFFFFFFFFFFFFF0)];
    bzero(v9, v26);
    v27 = 0;
    v28 = 0;
    v29 = 1 << *(v5 + 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v31 = v30 & v5[7];
    while (v31)
    {
      v32 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
      v33 = v32 | (v28 << 6);
LABEL_30:
      if (*(v5[6] + 24 * v33 + 16) == 1)
      {
        *(v9 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
        v20 = __OFADD__(v27++, 1);
        if (v20)
        {
          __break(1u);
LABEL_34:
          v36 = sub_10060B4EC(v9, v25, v27, v5);
          goto LABEL_35;
        }
      }
    }

    v34 = v28;
    while (1)
    {
      v28 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_45;
      }

      if (v28 >= ((v29 + 63) >> 6))
      {
        goto LABEL_34;
      }

      v35 = v5[v28 + 7];
      ++v34;
      if (v35)
      {
        v31 = (v35 - 1) & v35;
        v33 = __clz(__rbit64(v35)) | (v28 << 6);
        goto LABEL_30;
      }
    }
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_20;
  }

  v48 = swift_slowAlloc();
  v49 = sub_100A4F1DC(v48, v25, v5, sub_100A4F120);

  v36 = v49;
LABEL_35:
  v37 = *(v36 + 16);

  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  sub_1000076D4(v38, qword_10177A560);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 134218240;
    *(v41 + 4) = v22;
    *(v41 + 12) = 2048;
    *(v41 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v39, v40, "Display identifiers contain unexpected prefix. Owner: %ld, member: %ld.", v41, 0x16u);
  }

  type metadata accessor for Transaction();
  v42 = swift_allocObject();
  *(v42 + 16) = v22;
  *(v42 + 24) = v37;
  static Transaction.asyncTask(name:block:)();

  *(v2 + 248) = sub_10039D87C(v43, a1);
}

Swift::Int sub_100A4EF5C()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_100A4EFC0(uint64_t a1)
{
  v2 = *(v1 + 16);
  String.hash(into:)();
  Hasher._combine(_:)(v2);
}

Swift::Int sub_100A4EFF8(uint64_t a1)
{
  v2 = *(v1 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100A4F058(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

unint64_t sub_100A4F0BC()
{
  result = qword_1016B2B80;
  if (!qword_1016B2B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B2B80);
  }

  return result;
}

uint64_t sub_100A4F128(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014650;

  return sub_100ECCA58(a1, a2);
}

unint64_t *sub_100A4F1DC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, __n128))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_10061B638(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_100A4F26C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014650;

  return sub_100A4F128(v2, v3);
}

uint64_t sub_100A4F304(uint64_t a1, unint64_t a2)
{

  v4 = String.count.getter();
  if (v4 < String.count.getter())
  {

LABEL_3:

    v5 = String.count.getter();
    if (v5 < String.count.getter())
    {

LABEL_5:

      return a1;
    }

    String.count.getter();
    v6 = String.index(_:offsetBy:)();
    String.subscript.getter();
    v12 = Substring.lowercased()();

    v13 = String.lowercased()();

    if (v12._countAndFlagsBits == v13._countAndFlagsBits && v12._object == v13._object)
    {
      goto LABEL_14;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  String.count.getter();
  v6 = String.index(_:offsetBy:)();
  String.subscript.getter();
  v7 = Substring.lowercased()();

  v8 = String.lowercased()();

  if (v7._countAndFlagsBits == v8._countAndFlagsBits && v7._object == v8._object)
  {
LABEL_14:

    goto LABEL_15;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v10 & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_15:
  v14 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v14 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v14 >= v6 >> 14)
  {
    String.subscript.getter();
    a1 = static String._fromSubstring(_:)();

    return a1;
  }

  __break(1u);
  return result;
}

unint64_t sub_100A4F5BC()
{
  result = qword_1016B2B88;
  if (!qword_1016B2B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B2B88);
  }

  return result;
}

uint64_t sub_100A4F780(uint64_t a1)
{

  *(v1 + 144) = a1;
  return result;
}

__n128 sub_100A4F7CC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  result = a11;
  *a9 = a1;
  *(a9 + 8) = a19;
  *(a9 + 16) = a2;
  *(a9 + 24) = a22;
  *(a9 + 32) = a3;
  *(a9 + 40) = a21;
  *(a9 + 48) = a4;
  *(a9 + 56) = a5;
  *(a9 + 64) = a6;
  *(a9 + 72) = a7;
  *(a9 + 80) = a8;
  *(a9 + 88) = a10;
  *(a9 + 104) = a11;
  *(a9 + 120) = a20;
  *(a9 + 128) = a12;
  *(a9 + 136) = a23;
  *(a9 + 144) = a13;
  return result;
}

uint64_t sub_100A4F80C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_100A4F8A0;

  return daemon.getter();
}

uint64_t sub_100A4F8A0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 40) = a1;

  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DiscoveryService();
  v6 = sub_100019618(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100019618(&unk_1016B7D70, type metadata accessor for DiscoveryService, &unk_1013DD630);
  *v3 = v9;
  v3[1] = sub_100A4FA7C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100A4FA7C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_10037EF20;
  }

  else
  {

    *(v4 + 64) = a1;
    v5 = sub_100A4FBAC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100A4FBAC()
{
  type metadata accessor for EmptyPairingPolicyVerifier();
  v0[9] = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for EmptyPairingPeripheralProvider();
  v0[10] = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for EmptyAccessoryMetadataProvider();
  v0[11] = swift_allocObject();
  swift_defaultActor_initialize();
  v0[12] = sub_100019618(&qword_1016B2C00, type metadata accessor for DiscoveryService, &unk_1013DD518);
  type metadata accessor for PairingUIManager(0);
  swift_allocObject();

  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_100A4FCF8;

  return sub_100C05AD4();
}

uint64_t sub_100A4FCF8(uint64_t a1)
{
  *(*v1 + 112) = a1;

  return _swift_task_switch(sub_100A4FDF8, 0, 0);
}

uint64_t sub_100A4FDF8()
{
  v19 = v0[12];
  v20 = v0[14];
  v17 = v0[10];
  v18 = v0[11];
  v16 = v0[9];
  v1 = v0[8];
  v2 = v0[2];
  v15 = sub_100019618(&qword_1016B2B90, type metadata accessor for PairingUIManager, &unk_1013DF5C8);
  v14 = sub_100019618(&qword_1016B2B98, type metadata accessor for DiscoveryService, &unk_1013DD598);
  v3 = sub_100019618(&qword_1016B2BA0, type metadata accessor for DiscoveryService, &unk_1013DD558);
  type metadata accessor for MultiDetectionPairingInfoStore(0);
  swift_allocObject();

  v5 = sub_100655204(v4);
  type metadata accessor for EmptyPairingExecutorFactory();
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  v7 = sub_100019618(&qword_1016B2C08, type metadata accessor for EmptyPairingPolicyVerifier, &unk_1013E9168);
  v8 = sub_100019618(&qword_1016B2C10, type metadata accessor for EmptyPairingPeripheralProvider, &unk_10139FAD0);
  v9 = sub_100019618(&qword_1016B2C18, type metadata accessor for EmptyAccessoryMetadataProvider, &unk_10140DF20);
  v10 = sub_100019618(&qword_1016A6DB8, type metadata accessor for MultiDetectionPairingInfoStore, &unk_1013B5C98);
  v11 = sub_100019618(&qword_1016B2C20, type metadata accessor for EmptyPairingExecutorFactory, &unk_1013F3968);
  *v2 = v16;
  v2[1] = v7;
  v2[2] = v17;
  v2[3] = v8;
  v2[4] = v18;
  v2[5] = v9;
  v2[6] = v1;
  v2[7] = v19;
  v2[8] = v20;
  v2[9] = v15;
  v2[10] = v1;
  v2[11] = v14;
  v2[12] = v1;
  v2[13] = v3;
  v2[14] = v5;
  v2[15] = v10;
  v2[16] = v6;
  v2[17] = v11;
  v2[18] = _swiftEmptyArrayStorage;
  v12 = v0[1];

  return v12();
}

uint64_t sub_100A500D4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_100A50168;

  return daemon.getter();
}

uint64_t sub_100A50168(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 40) = a1;

  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DiscoveryService();
  v6 = sub_100019618(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100019618(&unk_1016B7D70, type metadata accessor for DiscoveryService, &unk_1013DD630);
  *v3 = v9;
  v3[1] = sub_100A50344;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100A50344(uint64_t a1)
{
  v3 = *v2;
  v3[7] = a1;
  v3[8] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1003BF928, 0, 0);
  }

  else
  {

    type metadata accessor for AirTagPairingValidator();
    v3[9] = swift_allocObject();
    swift_defaultActor_initialize();
    v3[10] = type metadata accessor for AirTagPeripheralProvider();
    v3[11] = swift_allocObject();
    swift_defaultActor_initialize();
    type metadata accessor for CentralManager();
    v4 = swift_task_alloc();
    v3[12] = v4;
    *v4 = v3;
    v4[1] = sub_100A50500;

    return static CentralManager.pairingCentralManager.getter();
  }
}

uint64_t sub_100A50500(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_100A50628;
  }

  else
  {
    *(v4 + 112) = a1;
    v5 = sub_100A50714;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100A50628()
{
  swift_defaultActor_destroy();
  swift_deallocPartialClassInstance();

  return _swift_task_switch(sub_100A506A8, 0, 0);
}

uint64_t sub_100A506A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A50714()
{
  *(v0[11] + 112) = v0[14];
  type metadata accessor for AirTagMetadataProvider();
  v0[15] = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for PairingUIManager(0);
  swift_allocObject();
  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_100A507E0;

  return sub_100C05AD4();
}

uint64_t sub_100A507E0(uint64_t a1)
{
  *(*v1 + 136) = a1;

  return _swift_task_switch(sub_100A508E0, 0, 0);
}

uint64_t sub_100A508E0()
{
  v19 = v0[15];
  v20 = v0[17];
  v17 = v0[9];
  v18 = v0[11];
  v1 = v0[7];
  v3 = v0[2];
  v2 = v0[3];
  v16 = sub_100019618(&qword_1016B2B90, type metadata accessor for PairingUIManager, &unk_1013DF5C8);
  v15 = sub_100019618(&qword_1016B2B98, type metadata accessor for DiscoveryService, &unk_1013DD598);
  v4 = sub_100019618(&qword_1016B2BA0, type metadata accessor for DiscoveryService, &unk_1013DD558);
  sub_1000BC4D4(&qword_1016B2BA8, &unk_1013EACE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_101385D80;
  sub_10001F280(v2, v5 + 32);
  type metadata accessor for AirTagPairingInfoStore();
  swift_allocObject();

  v6 = sub_100BAAB58(v5, 3, 0);
  type metadata accessor for AirTagExecutorsFactory();
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  v8 = sub_100019618(&qword_1016B2BB0, type metadata accessor for AirTagPairingValidator, &unk_1013E0EE0);
  v9 = sub_100019618(&qword_1016B2BB8, type metadata accessor for AirTagPeripheralProvider, &unk_1013DC408);
  v10 = sub_100019618(&qword_1016B2BC0, type metadata accessor for AirTagMetadataProvider, &unk_1013DF490);
  v11 = sub_100019618(&qword_1016B2BC8, type metadata accessor for AirTagPairingInfoStore, &unk_1013DC0C8);
  v12 = sub_100019618(&qword_1016B2BD0, type metadata accessor for AirTagExecutorsFactory, &unk_1013DD308);
  *v3 = v17;
  v3[1] = v8;
  v3[2] = v18;
  v3[3] = v9;
  v3[4] = v19;
  v3[5] = v10;
  v3[6] = 0;
  v3[7] = 0;
  v3[8] = v20;
  v3[9] = v16;
  v3[10] = v1;
  v3[11] = v15;
  v3[12] = v1;
  v3[13] = v4;
  v3[14] = v6;
  v3[15] = v11;
  v3[16] = v7;
  v3[17] = v12;
  v3[18] = _swiftEmptyArrayStorage;
  v13 = v0[1];

  return v13();
}

uint64_t sub_100A50BF4(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 144) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  type metadata accessor for HawkeyeV2MetadataProvider();
  *(v3 + 32) = swift_allocObject();
  swift_defaultActor_initialize();
  v4 = swift_task_alloc();
  *(v3 + 40) = v4;
  *v4 = v3;
  v4[1] = sub_100A50CA8;

  return daemon.getter();
}

uint64_t sub_100A50CA8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 48) = a1;

  v3 = swift_task_alloc();
  *(v2 + 56) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DiscoveryService();
  v6 = sub_100019618(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100019618(&unk_1016B7D70, type metadata accessor for DiscoveryService, &unk_1013DD630);
  *v3 = v9;
  v3[1] = sub_100A50E84;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100A50E84(uint64_t a1)
{
  v3 = *v2;
  v3[8] = a1;
  v3[9] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100A5175C, 0, 0);
  }

  else
  {
    type metadata accessor for ProximityPairingValidator();
    v3[10] = swift_allocObject();
    swift_defaultActor_initialize();
    v3[11] = type metadata accessor for ProximityPeripheralProvider();
    v3[12] = swift_allocObject();
    swift_defaultActor_initialize();
    type metadata accessor for CentralManager();
    v4 = swift_task_alloc();
    v3[13] = v4;
    *v4 = v3;
    v4[1] = sub_100A51064;

    return static CentralManager.pairingCentralManager.getter();
  }
}

uint64_t sub_100A51064(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = sub_100A5118C;
  }

  else
  {
    *(v4 + 120) = a1;
    v5 = sub_100A5128C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100A5118C()
{
  swift_defaultActor_destroy();

  swift_deallocPartialClassInstance();

  return _swift_task_switch(sub_100A51220, 0, 0);
}

uint64_t sub_100A51220()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A5128C()
{
  *(v0[12] + 112) = v0[15];
  type metadata accessor for PairingUIManager(0);
  swift_allocObject();
  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_100A5133C;

  return sub_100C05AD4();
}

uint64_t sub_100A5133C(uint64_t a1)
{
  *(*v1 + 136) = a1;

  return _swift_task_switch(sub_100A5143C, 0, 0);
}

uint64_t sub_100A5143C()
{
  v20 = *(v0 + 96);
  v21 = *(v0 + 136);
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  v18 = *(v0 + 80);
  v19 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = *(v0 + 144);
  v17 = sub_100019618(&qword_1016B2B90, type metadata accessor for PairingUIManager, &unk_1013DF5C8);
  v16 = sub_100019618(&qword_1016B2B98, type metadata accessor for DiscoveryService, &unk_1013DD598);
  v5 = sub_100019618(&qword_1016B2BA0, type metadata accessor for DiscoveryService, &unk_1013DD558);
  sub_1000BC4D4(&qword_1016B2BA8, &unk_1013EACE0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101385D80;
  sub_10001F280(v2, v6 + 32);
  type metadata accessor for ProximityPairingInfoStore(0);
  swift_allocObject();

  v7 = sub_100C12EA0(v6, v4, v4);
  type metadata accessor for ProximityExecutorFactory();
  v8 = swift_allocObject();
  swift_defaultActor_initialize();
  v9 = sub_100019618(&qword_1016B2BD8, type metadata accessor for ProximityPairingValidator, &unk_1013DDD70);
  v10 = sub_100019618(&qword_1016B2BE0, type metadata accessor for ProximityPeripheralProvider, &unk_1013E25E8);
  v11 = sub_100019618(&qword_1016B2BE8, type metadata accessor for HawkeyeV2MetadataProvider, &unk_1013DF7E0);
  v12 = sub_100019618(&qword_1016B2BF0, type metadata accessor for ProximityPairingInfoStore, &unk_1013DFA30);
  v13 = sub_100019618(&qword_1016B2BF8, type metadata accessor for ProximityExecutorFactory, &unk_1013DC5C0);
  *v3 = v18;
  v3[1] = v9;
  v3[2] = v20;
  v3[3] = v10;
  v3[4] = v19;
  v3[5] = v11;
  v3[6] = 0;
  v3[7] = 0;
  v3[8] = v21;
  v3[9] = v17;
  v3[10] = v1;
  v3[11] = v16;
  v3[12] = v1;
  v3[13] = v5;
  v3[14] = v7;
  v3[15] = v12;
  v3[16] = v8;
  v3[17] = v13;
  v3[18] = _swiftEmptyArrayStorage;
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100A5175C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A517C0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_100A51808(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100A5189C(uint64_t a1, const char *a2, uint64_t a3)
{
  v30 = a2;
  v4 = type metadata accessor for PairingEvent(0);
  __chkstk_darwin(v4);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OwnedBeaconRecord(0);
  v8 = __chkstk_darwin(v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v28 - v11;
  if (qword_101694BA0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177B930);
  sub_100A51D68(a1, v12);
  sub_100A51D68(a1, v10);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28[1] = v4;
    v17 = v16;
    v28[0] = swift_slowAlloc();
    v31 = v28[0];
    *v17 = 141558531;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2081;
    type metadata accessor for UUID();
    sub_1002FFBAC();
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v29 = a1;
    sub_100A51DCC(v12, type metadata accessor for OwnedBeaconRecord);
    v21 = sub_1000136BC(v18, v20, &v31);

    *(v17 + 14) = v21;
    *(v17 + 22) = 2080;
    v22 = sub_100D60CD0();
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    a1 = v29;
    sub_100A51DCC(v10, type metadata accessor for OwnedBeaconRecord);
    v26 = sub_1000136BC(v23, v25, &v31);

    *(v17 + 24) = v26;
    _os_log_impl(&_mh_execute_header, v14, v15, v30, v17, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100A51DCC(v10, type metadata accessor for OwnedBeaconRecord);
    sub_100A51DCC(v12, type metadata accessor for OwnedBeaconRecord);
  }

  sub_100A51D68(a1, v6);
  swift_storeEnumTagMultiPayload();
  PassthroughSubject.send(_:)();
  return sub_100A51DCC(v6, type metadata accessor for PairingEvent);
}

uint64_t type metadata accessor for PairingEvent(uint64_t a1)
{
  result = qword_1016B2D50;
  if (!qword_1016B2D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100A51C88(uint64_t a1)
{
  result = type metadata accessor for OwnedBeaconRecord(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100A51CE8()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B930);
  sub_1000076D4(v0, qword_10177B930);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100A51D68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnedBeaconRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100A51DCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for AirPodsLEPairingLockCheckEndPoint(uint64_t a1)
{
  result = qword_1016B2DE0;
  if (!qword_1016B2DE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100A51EA0(uint64_t a1)
{
  result = type metadata accessor for FMNAccountType();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100A51F14()
{
  v1 = type metadata accessor for FMNAccountType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + *(type metadata accessor for AirPodsLEPairingLockCheckEndPoint(0) + 20)) == 1)
  {
    (*(v2 + 104))(v4, enum case for FMNAccountType.none(_:), v1);
    type metadata accessor for AccountURLComponents();
    swift_allocObject();
    sub_1010B32C8(v4);
    sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
    OS_dispatch_queue.sync<A>(execute:)();
    URLComponents.init()();
    URLComponents.scheme.setter();
    URLComponents.host.setter();
    URLComponents.path.setter();

    v5 = URLComponents.path.modify();
    v6._countAndFlagsBits = 0xD00000000000002ALL;
    v6._object = 0x80000001013697E0;
    String.append(_:)(v6);
    v5(&v15, 0);
  }

  else
  {
    (*(v2 + 16))(v4, v0, v1);
    type metadata accessor for AccountURLComponents();
    swift_allocObject();
    sub_1010B32C8(v4);
    sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
    OS_dispatch_queue.sync<A>(execute:)();
    URLComponents.init()();
    URLComponents.scheme.setter();
    URLComponents.host.setter();
    URLComponents.path.setter();

    v7 = URLComponents.path.modify();
    v8._countAndFlagsBits = 0xD00000000000001BLL;
    v8._object = 0x80000001013697C0;
    String.append(_:)(v8);
    v7(&v15, 0);
    if (qword_101694F58 != -1)
    {
      swift_once();
    }

    v9 = qword_10177C218;
    v10 = [objc_opt_self() sharedInstance];
    v11 = [v10 isInternalBuild];

    if (v11)
    {
      v12 = String._bridgeToObjectiveC()();
      v13 = [v9 stringForKey:v12];

      if (v13)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        URLComponents.host.setter();
      }
    }
  }
}

uint64_t sub_100A52308()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B948);
  v1 = sub_1000076D4(v0, qword_10177B948);
  if (qword_101694FB8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177C2C0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100A523D0()
{
  v1 = *v0;
  type metadata accessor for Transaction();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100A52490(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_100A5252C, 0, 0);
}

uint64_t sub_100A5252C()
{
  v1 = *(v0 + 32);
  v2 = type metadata accessor for TaskPriority();
  v7 = *(v0 + 16);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = v7;

  v4 = sub_100BB9ADC(0, 0, v1, &unk_1013D3EC0, v3);
  sub_10000B3A8(v1, &qword_101698C00, &qword_10138B570);
  *(v7 + 40) = v4;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100A52660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[31] = a4;
  v5 = type metadata accessor for UUID();
  v4[32] = v5;
  v4[33] = *(v5 - 8);
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120);
  v4[36] = swift_task_alloc();
  v6 = type metadata accessor for LocalFindableAccessoryRecord(0);
  v4[37] = v6;
  v4[38] = *(v6 - 8);
  v4[39] = swift_task_alloc();
  v7 = type metadata accessor for CloudStorageStore.State(0);
  v4[40] = v7;
  v4[41] = *(v7 - 8);
  v4[42] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016AA530, &unk_1013CAF90);
  v4[43] = swift_task_alloc();
  v8 = sub_1000BC4D4(&qword_1016B2F50, &unk_1013BD140);
  v4[44] = v8;
  v4[45] = *(v8 - 8);
  v4[46] = swift_task_alloc();
  v9 = sub_1000BC4D4(&qword_1016AA538, &unk_1013BD130);
  v4[47] = v9;
  v4[48] = *(v9 - 8);
  v4[49] = swift_task_alloc();
  v10 = sub_1000BC4D4(&unk_1016AA540, &unk_1013CAFA0);
  v4[50] = v10;
  v4[51] = *(v10 - 8);
  v4[52] = swift_task_alloc();

  return _swift_task_switch(sub_100A5298C, 0, 0);
}

uint64_t sub_100A5298C(uint64_t a1)
{
  static Task<>.checkCancellation()();
  v2 = swift_task_alloc();
  *(v1 + 424) = v2;
  *v2 = v1;
  v2[1] = sub_100A52AEC;

  return daemon.getter();
}

uint64_t sub_100A52AEC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 432) = a1;

  v3 = swift_task_alloc();
  *(v2 + 440) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for CloudStorageService();
  v6 = sub_100019660(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100019660(&unk_1016AA520, type metadata accessor for CloudStorageService, &unk_1013BF308);
  *v3 = v9;
  v3[1] = sub_100A52CC8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100A52CC8(uint64_t a1)
{
  *(*v2 + 448) = a1;

  if (v1)
  {

    v4 = sub_100A52E20;
    v5 = 0;
  }

  else
  {

    v4 = sub_100A52FA8;
    v5 = a1;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100A52E20()
{
  if (qword_101694BA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B948);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing CloudStorageService!", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100A52FA8()
{
  v1 = *(*(v0 + 448) + 128);
  *(v0 + 456) = v1;
  return _swift_task_switch(sub_100A52FCC, v1, 0);
}

uint64_t sub_100A52FCC()
{
  v2 = v0[48];
  v1 = v0[49];
  v3 = v0[47];
  swift_allocObject();
  swift_weakInit();
  (*(v2 + 104))(v1, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v3);
  AsyncStream.init(_:bufferingPolicy:_:)();

  return _swift_task_switch(sub_100A530D4, 0, 0);
}

uint64_t sub_100A530D4()
{
  AsyncStream.makeAsyncIterator()();
  v1 = swift_task_alloc();
  v0[58] = v1;
  *v1 = v0;
  v1[1] = sub_100A53188;
  v2 = v0[43];
  v3 = v0[44];

  return AsyncStream.Iterator.next(isolation:)(v2, 0, 0, v3);
}

uint64_t sub_100A53188()
{

  return _swift_task_switch(sub_100A53284, 0, 0);
}

uint64_t sub_100A53284()
{
  v58 = v0;
  v1 = v0[43];
  if ((*(v0[41] + 48))(v1, 1, v0[40]) == 1)
  {
    v3 = v0[51];
    v2 = v0[52];
    v4 = v0[50];
    v6 = v0[45];
    v5 = v0[46];
    v7 = v0[44];

    (*(v6 + 8))(v5, v7);
    (*(v3 + 8))(v2, v4);

    v8 = v0[1];

    return v8();
  }

  sub_100A545C4(v1, v0[42], type metadata accessor for CloudStorageStore.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v0[33] + 32))(v0[35], v0[42], v0[32]);
      if (qword_101694BA8 != -1)
      {
        swift_once();
      }

      v11 = v0[34];
      v12 = v0[35];
      v13 = v0[32];
      v14 = v0[33];
      v15 = type metadata accessor for Logger();
      sub_1000076D4(v15, qword_10177B948);
      (*(v14 + 16))(v11, v12, v13);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      v18 = os_log_type_enabled(v16, v17);
      v19 = v0[34];
      v20 = v0[35];
      v22 = v0[32];
      v21 = v0[33];
      if (v18)
      {
        v56 = v0[35];
        v23 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *v23 = 136315394;
        *(v23 + 4) = sub_1000136BC(0xD000000000000019, 0x8000000101369890, &v57);
        *(v23 + 12) = 2080;
        sub_100019660(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v24 = dispatch thunk of CustomStringConvertible.description.getter();
        v26 = v25;
        v27 = *(v21 + 8);
        v27(v19, v22);
        v28 = sub_1000136BC(v24, v26, &v57);

        *(v23 + 14) = v28;
        _os_log_impl(&_mh_execute_header, v16, v17, "Deleted CK record type: %s id:%s", v23, 0x16u);
        swift_arrayDestroy();

        v27(v56, v22);
      }

      else
      {

        v38 = *(v21 + 8);
        v38(v19, v22);
        v38(v20, v22);
      }
    }

    goto LABEL_22;
  }

  sub_100031694(v0[42], (v0 + 7));
  if (qword_101694BA8 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_1000076D4(v29, qword_10177B948);
  sub_10001F280((v0 + 7), (v0 + 12));
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v57 = v33;
    *v32 = 136315138;
    sub_10001F280((v0 + 12), (v0 + 22));
    sub_1000BC4D4(&unk_1016AA550, &qword_1013CAFC0);
    v34 = String.init<A>(describing:)();
    v36 = v35;
    sub_100007BAC(v0 + 12);
    v37 = sub_1000136BC(v34, v36, &v57);

    *(v32 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v30, v31, "Received modified CK record: [%s]", v32, 0xCu);
    sub_100007BAC(v33);
  }

  else
  {

    sub_100007BAC(v0 + 12);
  }

  sub_10001F280((v0 + 7), (v0 + 17));
  sub_1000BC4D4(&unk_1016AA550, &qword_1013CAFC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v50 = v0[37];
    v51 = v0[38];
    v52 = v0[36];
    sub_100007BAC(v0 + 7);
    (*(v51 + 56))(v52, 1, 1, v50);
    sub_10000B3A8(v52, &qword_1016A9A30, &unk_1013BD120);
LABEL_22:
    v53 = swift_task_alloc();
    v0[58] = v53;
    *v53 = v0;
    v53[1] = sub_100A53188;
    v54 = v0[43];
    v55 = v0[44];

    return AsyncStream.Iterator.next(isolation:)(v54, 0, 0, v55);
  }

  v39 = v0[39];
  v40 = v0[36];
  (*(v0[38] + 56))(v40, 0, 1, v0[37]);
  sub_100A545C4(v40, v39, type metadata accessor for LocalFindableAccessoryRecord);
  v41 = [objc_allocWithZone(SPPeripheralConnectionMaterial) init];
  v0[59] = v41;
  type metadata accessor for PeripheralConnectionMaterial(0);
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v41 setIrkData:isa];

  v43 = MACAddress.bluetoothAddressWithType.getter();
  v45 = v44;
  v46 = Data._bridgeToObjectiveC()().super.isa;
  sub_100016590(v43, v45);
  [v41 setBtAddressWithTypeData:v46];

  v47 = swift_task_alloc();
  v0[60] = v47;
  v48 = sub_1000BC4D4(&qword_1016B2F58, &qword_1013D3EC8);
  *v47 = v0;
  v47[1] = sub_100A53A88;
  v49 = v0[31];

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 27, 0, 0, 0x736553636E797361, 0xED0000736E6F6973, sub_100A5462C, v49, v48);
}

uint64_t sub_100A53A88()
{

  return _swift_task_switch(sub_100A53B84, 0, 0);
}

uint64_t sub_100A53B84(void *a1, void (*a2)(), uint64_t a3)
{
  v4 = v3[27];
  if ((v4 & 0xC000000000000001) == 0)
  {
    v7 = 0;
    v10 = -1;
    v11 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    if (-v11 < 64)
    {
      v10 = ~(-1 << -v11);
    }

    v8 = v10 & *(v4 + 56);
    v3[62] = v5;
    v3[63] = ~v11;
    v3[61] = v4;
    v9 = 63 - v11;
    goto LABEL_7;
  }

  __CocoaSet.makeIterator()();
  sub_1000BC4D4(&qword_1016B2F60, &qword_1013D3ED0);
  sub_100A54634();
  a1 = Set.Iterator.init(_cocoa:)();
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  v8 = v3[6];
  v3[62] = v5;
  v3[63] = v6;
  v3[61] = v4;
  if ((v4 & 0x8000000000000000) == 0)
  {
    v9 = v6 + 64;
LABEL_7:
    v12 = v8;
    v13 = v7;
    if (!v8)
    {
      v14 = v9 >> 6;
      v15 = v7;
      while (1)
      {
        v13 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          goto LABEL_19;
        }

        v12 = *(v5 + 8 * v13);
        ++v15;
        if (v12)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      return XPCSession.proxy(errorHandler:)(a1, a2, a3);
    }

LABEL_12:
    v16 = (v12 - 1) & v12;
    v17 = *(*(v4 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    goto LABEL_13;
  }

  v19 = __CocoaSet.Iterator.next()();
  if (!v19)
  {
    goto LABEL_19;
  }

  v3[30] = v19;
  sub_1000BC4D4(&qword_1016B2F60, &qword_1013D3ED0);
  swift_dynamicCast();
  v17 = v3[29];
  v13 = v7;
  v16 = v8;
LABEL_13:
  v3[66] = v16;
  v3[65] = v13;
  v3[64] = v17;
  if (v17)
  {
    v18 = swift_task_alloc();
    v3[67] = v18;
    *v18 = v3;
    v18[1] = sub_100A53E84;
    a2 = SharingCircleWildAdvertisementKey.init(key:);
    a1 = v3 + 28;
    a3 = 0;

    return XPCSession.proxy(errorHandler:)(a1, a2, a3);
  }

LABEL_19:
  v20 = v3[61];
  v21 = v3[59];
  v22 = v3[39];
  sub_100007BAC(v3 + 7);

  sub_1000128F8(v20);
  sub_100A54698(v22);
  v23 = swift_task_alloc();
  v3[58] = v23;
  *v23 = v3;
  v23[1] = sub_100A53188;
  v24 = v3[43];
  v25 = v3[44];

  return AsyncStream.Iterator.next(isolation:)(v24, 0, 0, v25);
}

uint64_t sub_100A53E84()
{

  return _swift_task_switch(sub_100A53F80, 0, 0);
}

uint64_t sub_100A53F80()
{
  v1 = v0[28];
  if (v1)
  {
    v2 = v0[59];
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v1 updatedConnectionMaterialForAccessory:isa connectionMaterial:v2];

    v4 = swift_unknownObjectRelease();
  }

  else
  {
  }

  v7 = v0[66];
  v8 = v0[65];
  v9 = v0[61];
  if (v9 < 0)
  {
    v15 = __CocoaSet.Iterator.next()();
    if (!v15)
    {
      goto LABEL_17;
    }

    v0[30] = v15;
    sub_1000BC4D4(&qword_1016B2F60, &qword_1013D3ED0);
    swift_dynamicCast();
    v14 = v0[29];
    v11 = v8;
    v13 = v7;
  }

  else
  {
    v10 = v0[66];
    v11 = v0[65];
    if (!v7)
    {
      v12 = v0[65];
      while (1)
      {
        v11 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v11 >= ((v0[63] + 64) >> 6))
        {
          goto LABEL_17;
        }

        v10 = *(v0[62] + 8 * v11);
        ++v12;
        if (v10)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
      return XPCSession.proxy(errorHandler:)(v4, v5, v6);
    }

LABEL_10:
    v13 = (v10 - 1) & v10;
    v14 = *(*(v9 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
  }

  v0[66] = v13;
  v0[65] = v11;
  v0[64] = v14;
  if (v14)
  {
    v16 = swift_task_alloc();
    v0[67] = v16;
    *v16 = v0;
    v16[1] = sub_100A53E84;
    v5 = SharingCircleWildAdvertisementKey.init(key:);
    v4 = (v0 + 28);
    v6 = 0;

    return XPCSession.proxy(errorHandler:)(v4, v5, v6);
  }

LABEL_17:
  v17 = v0[61];
  v18 = v0[59];
  v19 = v0[39];
  sub_100007BAC(v0 + 7);

  sub_1000128F8(v17);
  sub_100A54698(v19);
  v20 = swift_task_alloc();
  v0[58] = v20;
  *v20 = v0;
  v20[1] = sub_100A53188;
  v21 = v0[43];
  v22 = v0[44];

  return AsyncStream.Iterator.next(isolation:)(v21, 0, 0, v22);
}

void sub_100A54240()
{
  v1 = v0;
  if (qword_101694BA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177B948);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "TRACE: stopMonitoring()", v5, 2u);
  }

  if (*(v1 + 40))
  {

    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    Task.cancel()();
  }
}

uint64_t sub_100A5438C()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LocalFindableConnectionMaterialMonitoringSession(uint64_t a1)
{
  result = qword_1016B2E48;
  if (!qword_1016B2E48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100A5446C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014650;

  return sub_100A52490(v2, v3);
}

uint64_t sub_100A54504(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014650;

  return sub_100A52660(a1, v4, v5, v6);
}

uint64_t sub_100A545C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100A54634()
{
  result = qword_1016BC4E0;
  if (!qword_1016BC4E0)
  {
    sub_1000BC580(&qword_1016B2F60, &qword_1013D3ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC4E0);
  }

  return result;
}

uint64_t sub_100A54698(uint64_t a1)
{
  v2 = type metadata accessor for LocalFindableAccessoryRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100A54704(uint64_t a1)
{
  v2 = sub_100A54890();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100A54740(uint64_t a1)
{
  v2 = sub_100A54890();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100A5477C(void *a1)
{
  v2 = sub_1000BC4D4(&qword_1016B2F68, &qword_1013D3F40);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_1000035D0(a1, a1[3]);
  sub_100A54890();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_100A54890()
{
  result = qword_1016B2F70;
  if (!qword_1016B2F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B2F70);
  }

  return result;
}

unint64_t sub_100A548F8()
{
  result = qword_1016B2F78;
  if (!qword_1016B2F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B2F78);
  }

  return result;
}

unint64_t sub_100A54950()
{
  result = qword_1016B2F80;
  if (!qword_1016B2F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B2F80);
  }

  return result;
}

uint64_t sub_100A549B4@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for BatteryLevel.unknown(_:);
  v3 = type metadata accessor for BatteryLevel();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_100A54A34(uint64_t a1)
{
  v2 = v1 + *(a1 + 28);
  v3 = *v2;
  sub_10002E98C(*v2, *(v2 + 8));
  return v3;
}

uint64_t sub_100A54A70@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  __chkstk_darwin(v2 - 8);
  v4 = v17 - v3;
  v5 = type metadata accessor for DetectedAccessory();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for AirPodsLEPairingInfoStore(0);
  sub_100A567A8(&qword_1016B31B0, type metadata accessor for AirPodsLEPairingInfoStore, &unk_1013D4128);
  PairingInfoStore.accessory.getter();
  if ((*(v6 + 88))(v8, v5) == enum case for DetectedAccessory.single(_:))
  {
    (*(v6 + 96))(v8, v5);
    sub_10000A748(v8, v18);
    sub_1000035D0(v18, v18[3]);
    dispatch thunk of Accessory.transport.getter();
    sub_1000BC4D4(&qword_1016B31E8, &qword_1013D4328);
    v9 = type metadata accessor for MACAddress();
    v10 = swift_dynamicCast();
    v11 = *(*(v9 - 8) + 56);
    if (v10)
    {
      v12 = *(v9 - 8);
      v11(v4, 0, 1, v9);
      (*(v12 + 32))(a1, v4, v9);
    }

    else
    {
      v11(v4, 1, 1, v9);
      sub_10000B3A8(v4, &qword_1016A40D0, &unk_10138BE70);
      sub_100A56910();
      swift_allocError();
      *v16 = 0;
      swift_willThrow();
    }

    return sub_100007BAC(v18);
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    v13 = type metadata accessor for PairingCoordinatorError();
    sub_100A567A8(&qword_1016B31E0, &type metadata accessor for PairingCoordinatorError, &protocol conformance descriptor for PairingCoordinatorError);
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, enum case for PairingCoordinatorError.notAllowedForMultiDetection(_:), v13);
    return swift_willThrow();
  }
}

uint64_t sub_100A54E10@<X0>(void *a1@<X8>)
{
  v87 = a1;
  v1 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v2 = __chkstk_darwin(v1 - 8);
  v86 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v91 = &v81 - v4;
  v5 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v6 = __chkstk_darwin(v5 - 8);
  v89 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v81 - v8;
  v10 = type metadata accessor for AccessoryProductInfo(0);
  v96 = *(v10 - 8);
  v97 = v10;
  __chkstk_darwin(v10);
  v12 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for AccessoryMetadata(0);
  v13 = *(v98 - 8);
  v14 = __chkstk_darwin(v98);
  v92 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v81 - v16;
  v18 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v19 = __chkstk_darwin(v18 - 8);
  v88 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v81 - v22;
  __chkstk_darwin(v21);
  v25 = &v81 - v24;
  v26 = static Data.random(bytes:)();
  v28 = v27;
  v85 = type metadata accessor for AccessoryPairingInfo(0);
  swift_allocObject();
  sub_100017D5C(v26, v28);
  v29 = sub_10024C9E8(v26, v28);
  if (!v29)
  {
    sub_100A56910();
    swift_allocError();
    *v34 = 1;
    swift_willThrow();
    v35 = v26;
    v36 = v28;
    return sub_100016590(v35, v36);
  }

  v93 = v29;
  v94 = v26;
  v95 = v28;
  v84 = v12;
  v30 = OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessoryMetadata;
  v31 = v99;
  swift_beginAccess();
  sub_1000D2A70(v31 + v30, v25, &qword_1016A62A0, &unk_101396E10);
  v32 = *(v13 + 48);
  if (v32(v25, 1, v98))
  {
    sub_10000B3A8(v25, &qword_1016A62A0, &unk_101396E10);
    sub_100A56910();
    swift_allocError();
    *v33 = 2;
    swift_willThrow();
LABEL_7:

    v35 = v94;
    v36 = v95;
    return sub_100016590(v35, v36);
  }

  v82 = v13;
  sub_100A569CC(v25, v17, type metadata accessor for AccessoryMetadata);
  sub_10000B3A8(v25, &qword_1016A62A0, &unk_101396E10);
  v37 = &v17[*(v98 + 20)];
  v38 = v37[1];
  v39 = *v37;
  sub_100017D5C(*v37, v38);
  sub_10028602C(v17, type metadata accessor for AccessoryMetadata);
  v40 = OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessoryProductInfo;
  v41 = v99;
  swift_beginAccess();
  sub_1000D2A70(v41 + v40, v9, &qword_101697268, &qword_101394FE0);
  if ((*(v96 + 48))(v9, 1, v97) == 1)
  {
    sub_10000B3A8(v9, &qword_101697268, &qword_101394FE0);
    sub_100A56910();
    swift_allocError();
    *v42 = 3;
    swift_willThrow();
    sub_100016590(v39, v38);
    goto LABEL_7;
  }

  v83 = v39;
  v81 = v38;
  v44 = v84;
  sub_100A56964(v9, v84, type metadata accessor for AccessoryProductInfo);
  sub_1000D2A70(v99 + v30, v23, &qword_1016A62A0, &unk_101396E10);
  if (v32(v23, 1, v98) == 1)
  {
    sub_10000B3A8(v23, &qword_1016A62A0, &unk_101396E10);
    sub_100A56910();
    swift_allocError();
    *v45 = 4;
    swift_willThrow();

    sub_100016590(v83, v81);
    sub_100016590(v94, v95);
    v46 = v44;
  }

  else
  {
    v47 = v92;
    sub_100A56964(v23, v92, type metadata accessor for AccessoryMetadata);
    v48 = v88;
    sub_100A569CC(v47, v88, type metadata accessor for AccessoryMetadata);
    (*(v82 + 56))(v48, 0, 1, v98);
    v49 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryMetadata;
    v50 = v93;
    swift_beginAccess();
    sub_10002311C(v48, v50 + v49, &qword_1016A62A0, &unk_101396E10);
    swift_endAccess();
    v51 = v89;
    sub_100A569CC(v44, v89, type metadata accessor for AccessoryProductInfo);
    v52 = v97;
    (*(v96 + 56))(v51, 0, 1, v97);
    v53 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
    swift_beginAccess();
    sub_10002311C(v51, v50 + v53, &qword_101697268, &qword_101394FE0);
    swift_endAccess();
    v54 = v50[13];
    v55 = v50[14];
    v56 = v83;
    v57 = v81;
    v50[13] = v83;
    v50[14] = v57;
    sub_100017D5C(v56, v57);
    sub_100006654(v54, v55);
    v50[11] = sub_10098E010();
    v50[12] = v58;

    v59 = (v44 + *(v52 + 52));
    v61 = *v59;
    v60 = v59[1];
    v62 = (v50 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryDisplayName);
    *v62 = v61;
    v62[1] = v60;

    *(v50 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productID) = *(v99 + 152);
    v63 = v90;
    v64 = v91;
    sub_100A54A70(v91);
    v65 = v44;
    v67 = v94;
    v66 = v95;
    if (v63)
    {

      sub_100016590(v83, v57);
      sub_100016590(v67, v66);
      sub_10028602C(v47, type metadata accessor for AccessoryMetadata);
      v46 = v65;
    }

    else
    {
      v68 = type metadata accessor for MACAddress();
      v69 = *(v68 - 8);
      v98 = *(v69 + 56);
      (v98)(v64, 0, 1, v68);
      v70 = v64;
      v71 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_macAddress;
      swift_beginAccess();
      sub_10002311C(v70, v50 + v71, &qword_1016A40D0, &unk_10138BE70);
      swift_endAccess();
      v72 = v99;
      v73 = v86;
      (*(v69 + 16))(v86, v99 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_classicMacAddress, v68);
      (v98)(v73, 0, 1, v68);
      v74 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_classicMacAddress;
      swift_beginAccess();
      sub_10002311C(v73, v50 + v74, &qword_1016A40D0, &unk_10138BE70);
      swift_endAccess();
      v75 = *(v72 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_pairingToken);
      v76 = *(v72 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_pairingToken + 8);
      v77 = (v50 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_pairingSessionToken);
      v78 = *(v50 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_pairingSessionToken);
      v79 = *(v50 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_pairingSessionToken + 8);
      *v77 = v75;
      v77[1] = v76;
      sub_10002E98C(v75, v76);
      sub_100006654(v78, v79);
      *(v50 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_standalonePairing) = *(v72 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_standalonePairing);
      *(v50 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_forcePair) = *(v72 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_forceRepair);
      v80 = v87;
      v87[3] = v85;
      v80[4] = sub_100A567A8(&qword_1016ACE88, type metadata accessor for AccessoryPairingInfo, &unk_1013DC628);
      sub_100016590(v83, v57);
      sub_100016590(v94, v95);
      *v80 = v50;
      sub_10028602C(v92, type metadata accessor for AccessoryMetadata);
      v46 = v84;
    }
  }

  return sub_10028602C(v46, type metadata accessor for AccessoryProductInfo);
}

uint64_t sub_100A55920()
{
  sub_100007BAC((v0 + 112));
  v1 = OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_classicMacAddress;
  v2 = type metadata accessor for MACAddress();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_pairingToken), *(v0 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_pairingToken + 8));

  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessoryMetadata, &qword_1016A62A0, &unk_101396E10);
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessoryProductInfo, &qword_101697268, &qword_101394FE0);

  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessoryPairingConfiguration, &qword_1016A12E0, &qword_1013A51D0);

  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_pairingUIInfo, &qword_1016B31D0, &unk_1013D4318);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100A55A74()
{
  sub_100A55920();

  return _swift_defaultActor_deallocate(v0);
}

void sub_100A55AC8(uint64_t a1)
{
  type metadata accessor for MACAddress();
  if (v1 <= 0x3F)
  {
    sub_100A55C6C(319, &unk_1016C10F0, type metadata accessor for AccessoryMetadata);
    if (v2 <= 0x3F)
    {
      sub_100A55C6C(319, &qword_10169AC10, type metadata accessor for AccessoryProductInfo);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100A55C6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100A55D08@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessoryPeripheral;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

uint64_t sub_100A55D60(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessoryPeripheral;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

uint64_t sub_100A55EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v10 = *a4;
  swift_beginAccess();
  sub_10002311C(a1, v6 + v10, a5, a6);
  return swift_endAccess();
}

id sub_100A55FBC@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessoryUserConfiguration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *a1 = v4;

  return v4;
}

void sub_100A56020(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessoryUserConfiguration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
}

uint64_t sub_100A560E4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AirPodsLEPairingInfoStore(0);

  return PairingInfoStore.accessory.getter();
}

double sub_100A56130()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_100A56178(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessories;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_100A56230()
{
  v0 = type metadata accessor for AirPodsLEPairingInfoStore(0);
  v1 = sub_100A567A8(&qword_1016B31C8, type metadata accessor for AirPodsLEPairingInfoStore, &unk_1013D41F0);

  return TypedPairingInfoStore.productIDValue.getter(v0, v1);
}

uint64_t sub_100A562EC()
{
  v0 = type metadata accessor for AirPodsLEPairingInfoStore(0);
  v1 = sub_100A567A8(&qword_1016B31C8, type metadata accessor for AirPodsLEPairingInfoStore, &unk_1013D41F0);

  return TypedPairingInfoStore.pairingPolicyInformationValue.getter(v0, v1);
}

uint64_t sub_100A56370(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100A56390, v1, 0);
}

uint64_t sub_100A56390()
{
  sub_1000D2A70(v0[3] + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_pairingUIInfo, v0[2], &qword_1016B31D0, &unk_1013D4318);
  v1 = v0[1];

  return v1();
}

uint64_t sub_100A56428(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = type metadata accessor for AirPodsLEPairingInfoStore(0);
  v4 = sub_100A567A8(&qword_1016B31C8, type metadata accessor for AirPodsLEPairingInfoStore, &unk_1013D41F0);

  return a3(v3, v4);
}

double sub_100A564C0()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_100A56508(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessoryDetails;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_100A566C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = type metadata accessor for AirPodsLEPairingInfoStore(0);
  v11 = sub_100A567A8(&qword_1016B31C8, type metadata accessor for AirPodsLEPairingInfoStore, &unk_1013D41F0);
  return a6(a1, v10, a2, v11, a3);
}

uint64_t sub_100A567A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100A56910()
{
  result = qword_1016B31D8;
  if (!qword_1016B31D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B31D8);
  }

  return result;
}

uint64_t sub_100A56964(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100A569CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_100A56A8C(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_100A56B30();
    if (v2 <= 0x3F)
    {
      sub_1003955F8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_100A56B30()
{
  result = qword_1016B3258;
  if (!qword_1016B3258)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1016B3258);
  }

  return result;
}

unint64_t sub_100A56B98()
{
  result = qword_1016B3290;
  if (!qword_1016B3290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B3290);
  }

  return result;
}

uint64_t sub_100A56BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = 0;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = v72 + 1;
  v12 = _swiftEmptyDictionarySingleton;
  while (v9)
  {
LABEL_9:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v5 << 6);
    v16 = (*(a3 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = HIBYTE(v18) & 0xF;
    v20 = v17 & 0xFFFFFFFFFFFFLL;
    if ((v18 & 0x2000000000000000) != 0)
    {
      v21 = HIBYTE(v18) & 0xF;
    }

    else
    {
      v21 = v17 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      v22 = *(a3 + 56);
      v23 = *(v22 + 8 * v15);
      if ((v18 & 0x1000000000000000) != 0)
      {
        v68 = a3;
        v70 = v12;
        v59 = v4;
        v60 = *(v22 + 8 * v15);

        v26 = sub_1010DDF3C(v17, v18, 10);
        v62 = v61;

        v23 = v60;
        v4 = v59;
        a3 = v68;
        v12 = v70;
        if ((v62 & 1) == 0)
        {
LABEL_71:
          v69 = v11;
          v71 = v23;
          v44 = v4;
          v45 = a3;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v72[0] = v12;
          v47 = sub_100771C58(v26);
          v49 = v12[2];
          v50 = (v48 & 1) == 0;
          v51 = __OFADD__(v49, v50);
          v52 = v49 + v50;
          if (v51)
          {
            goto LABEL_92;
          }

          v53 = v48;
          if (v12[3] >= v52)
          {
            v56 = v71;
            if (isUniquelyReferenced_nonNull_native)
            {
              v55 = v44;
              a3 = v45;
            }

            else
            {
              v66 = v47;
              sub_1010071C0();
              v56 = v71;
              v47 = v66;
              a3 = v45;
              v55 = v44;
            }

            v11 = v69;
          }

          else
          {
            sub_100FEAA14(v52, isUniquelyReferenced_nonNull_native);
            v47 = sub_100771C58(v26);
            if ((v53 & 1) != (v54 & 1))
            {
              goto LABEL_94;
            }

            v55 = v44;
            a3 = v45;
            v11 = v69;
            v56 = v71;
          }

          v12 = v72[0];
          v4 = v55;
          if (v53)
          {
            *(*(v72[0] + 56) + 8 * v47) = v56;
          }

          else
          {
            *(v72[0] + 8 * (v47 >> 6) + 64) |= 1 << v47;
            *(v12[6] + 8 * v47) = v26;
            *(v12[7] + 8 * v47) = v56;
            v57 = v12[2];
            v51 = __OFADD__(v57, 1);
            v58 = v57 + 1;
            if (v51)
            {
              goto LABEL_93;
            }

            v12[2] = v58;
          }
        }
      }

      else
      {
        if ((v18 & 0x2000000000000000) != 0)
        {
          v72[0] = v17;
          v72[1] = v18 & 0xFFFFFFFFFFFFFFLL;
          if (v17 == 43)
          {
            if (!v19)
            {
              goto LABEL_88;
            }

            if (--v19)
            {
              v26 = 0;
              v36 = v11;
              while (1)
              {
                v37 = *v36 - 48;
                if (v37 > 9)
                {
                  break;
                }

                v38 = 10 * v26;
                if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                {
                  break;
                }

                v26 = v38 + v37;
                if (__OFADD__(v38, v37))
                {
                  break;
                }

                ++v36;
                if (!--v19)
                {
                  goto LABEL_70;
                }
              }
            }
          }

          else if (v17 == 45)
          {
            if (!v19)
            {
              goto LABEL_89;
            }

            if (--v19)
            {
              v26 = 0;
              v30 = v11;
              while (1)
              {
                v31 = *v30 - 48;
                if (v31 > 9)
                {
                  break;
                }

                v32 = 10 * v26;
                if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                {
                  break;
                }

                v26 = v32 - v31;
                if (__OFSUB__(v32, v31))
                {
                  break;
                }

                ++v30;
                if (!--v19)
                {
                  goto LABEL_70;
                }
              }
            }
          }

          else if (v19)
          {
            v26 = 0;
            v41 = v72;
            while (1)
            {
              v42 = *v41 - 48;
              if (v42 > 9)
              {
                break;
              }

              v43 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                break;
              }

              v26 = v43 + v42;
              if (__OFADD__(v43, v42))
              {
                break;
              }

              ++v41;
              if (!--v19)
              {
                goto LABEL_70;
              }
            }
          }

          goto LABEL_69;
        }

        if ((v17 & 0x1000000000000000) != 0)
        {
          v24 = ((v18 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v63 = v4;
          v64 = a3;
          v65 = *(v22 + 8 * v15);
          v24 = _StringObject.sharedUTF8.getter();
          v23 = v65;
          a3 = v64;
          v4 = v63;
        }

        v25 = *v24;
        if (v25 == 43)
        {
          if (v20 < 1)
          {
            goto LABEL_90;
          }

          v19 = v20 - 1;
          if (v20 == 1)
          {
            goto LABEL_69;
          }

          v26 = 0;
          if (v24)
          {
            v33 = v24 + 1;
            while (1)
            {
              v34 = *v33 - 48;
              if (v34 > 9)
              {
                goto LABEL_69;
              }

              v35 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_69;
              }

              v26 = v35 + v34;
              if (__OFADD__(v35, v34))
              {
                goto LABEL_69;
              }

              ++v33;
              if (!--v19)
              {
                goto LABEL_70;
              }
            }
          }
        }

        else if (v25 == 45)
        {
          if (v20 < 1)
          {
            goto LABEL_91;
          }

          v19 = v20 - 1;
          if (v20 == 1)
          {
            goto LABEL_69;
          }

          v26 = 0;
          if (v24)
          {
            v27 = v24 + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                break;
              }

              v29 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                break;
              }

              v26 = v29 - v28;
              if (__OFSUB__(v29, v28))
              {
                break;
              }

              ++v27;
              if (!--v19)
              {
                goto LABEL_70;
              }
            }

LABEL_69:
            v26 = 0;
            LOBYTE(v19) = 1;
            goto LABEL_70;
          }
        }

        else
        {
          if (!v20)
          {
            goto LABEL_69;
          }

          v26 = 0;
          if (v24)
          {
            do
            {
              v39 = *v24 - 48;
              if (v39 > 9)
              {
                goto LABEL_69;
              }

              v40 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_69;
              }

              v26 = v40 + v39;
              if (__OFADD__(v40, v39))
              {
                goto LABEL_69;
              }

              ++v24;
            }

            while (--v20);
          }
        }

        LOBYTE(v19) = 0;
LABEL_70:
        v73 = v19;
        if ((v19 & 1) == 0)
        {
          goto LABEL_71;
        }
      }
    }
  }

  while (1)
  {
    v13 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      *(v4 + 16) = v12;
      return v4;
    }

    v9 = *(v6 + 8 * v13);
    ++v5;
    if (v9)
    {
      v5 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_100A570E4()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = 1 << *(*(v0 + 16) + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v2;
  v8 = (v5 + 63) >> 6;
  v33 = v0;
  v34 = *(v0 + 16);

  v9 = 0;
  v10 = _swiftEmptyDictionarySingleton;
  if (v7)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v12 >= v8)
    {

      sub_1000BC4D4(&qword_1016B34B0, &qword_1013D4498);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_101385D80;
      v30 = *(v33 + 32);
      *(inited + 32) = *(v33 + 24);
      *(inited + 40) = v30;
      *(inited + 48) = v10;

      v31 = sub_100908A14(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &qword_1016B34B8, &unk_1013D44A0);
      return v31;
    }

    v7 = *(v3 + 8 * v12);
    ++v9;
  }

  while (!v7);
  while (1)
  {
    v35 = *(*(v34 + 56) + ((v12 << 9) | (8 * __clz(__rbit64(v7)))));
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = v10;
    v17 = sub_100771D58(v13, v15);
    v19 = v10[2];
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      break;
    }

    v23 = v18;
    if (v10[3] >= v22)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = v17;
        sub_101006344();
        v17 = v28;
      }
    }

    else
    {
      sub_100FE8BB4(v22, isUniquelyReferenced_nonNull_native);
      v17 = sub_100771D58(v13, v15);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_24;
      }
    }

    v7 &= v7 - 1;
    if (v23)
    {
      v11 = v17;

      v10 = v36;
      *(v36[7] + 8 * v11) = v35;
      v9 = v12;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v10 = v36;
      v36[(v17 >> 6) + 8] |= 1 << v17;
      v25 = (v36[6] + 16 * v17);
      *v25 = v13;
      v25[1] = v15;
      *(v36[7] + 8 * v17) = v35;
      v26 = v36[2];
      v21 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v21)
      {
        goto LABEL_23;
      }

      v36[2] = v27;
      v9 = v12;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v12 = v9;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100A573A4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100A57408()
{
  type metadata accessor for FirmwareUpdateAlertCoordinator();
  v0 = swift_allocObject();
  result = sub_100A57444();
  qword_10177B9C8 = v0;
  return result;
}

uint64_t sub_100A57444()
{
  v1 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v1 - 8);
  v3 = &v58 - v2;
  v70 = type metadata accessor for UUID();
  *&v68 = *(v70 - 8);
  v4 = __chkstk_darwin(v70);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v71 = &v58 - v7;
  v0[2] = 0xD00000000000001BLL;
  v0[3] = 0x80000001013699E0;
  sub_1000BC4D4(&qword_10169D100, &unk_1013D44B0);
  inited = swift_initStackObject();
  v69 = xmmword_10138BBE0;
  *(inited + 16) = xmmword_10138BBE0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v9;
  sub_1000BC4D4(&qword_10169D108, &qword_10139AAA8);
  v10 = swift_allocObject();
  *(v10 + 16) = v69;
  *(v10 + 32) = xmmword_1013D4400;
  *(inited + 48) = v10;
  strcpy((inited + 56), "FirmwareUpdate");
  *(inited + 71) = -18;
  *(inited + 72) = &off_1016086A8;
  v11 = sub_1009089DC(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_10169D110, &unk_1013D44C0);
  swift_arrayDestroy();
  v0[5] = v11;
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_101385D80;
  *(v12 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v12 + 40) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10138B360;
  *(v14 + 32) = xmmword_10139AA20;
  *(v14 + 48) = 3;
  *(v12 + 48) = v14;
  v15 = sub_1009089DC(v12);
  swift_setDeallocating();
  sub_10000B3A8(v12 + 32, &qword_10169D110, &unk_1013D44C0);
  v0[6] = v15;
  v16 = sub_1009089F0(_swiftEmptyArrayStorage);
  v76 = v16;
  v17 = [objc_opt_self() standardUserDefaults];

  v18 = String._bridgeToObjectiveC()();

  v19 = [v17 objectForKey:v18];

  if (v19)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v74 = 0u;
    v73 = 0u;
  }

  v75[1] = v74;
  v75[0] = v73;
  if (!*(&v74 + 1))
  {
    sub_10000B3A8(v75, &unk_1016A0B10, &qword_10139BF40);
    goto LABEL_44;
  }

  sub_1000BC4D4(&qword_1016B34C0, &qword_1013D44D0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_44:
    v0[4] = v16;
    return v0;
  }

  v21 = v72;
  if (!*(v72 + 16))
  {

    goto LABEL_44;
  }

  v65 = v6;
  v58 = v0;
  v22 = 0;
  v23 = v72 + 64;
  v24 = 1 << *(v72 + 32);
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v26 = v25 & *(v72 + 64);
  v27 = (v24 + 63) >> 6;
  v67 = (v68 + 48);
  v64 = (v68 + 32);
  v59 = (v68 + 16);
  v66 = (v68 + 8);
  v68 = xmmword_10138C320;
  v28 = v70;
  v63 = v3;
  v62 = v72;
  v61 = v72 + 64;
  v60 = v27;
  if (v26)
  {
    goto LABEL_13;
  }

LABEL_14:
  while (2)
  {
    v29 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      goto LABEL_46;
    }

    if (v29 >= v27)
    {

      v16 = v76;
      v0 = v58;
      goto LABEL_44;
    }

    v26 = *(v23 + 8 * v29);
    ++v22;
    if (!v26)
    {
      continue;
    }

    break;
  }

  while (1)
  {
    v30 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v31 = *(*(v21 + 56) + 8 * (v30 | (v29 << 6)));

    UUID.init(uuidString:)();

    if ((*v67)(v3, 1, v28) == 1)
    {

      result = sub_10000B3A8(v3, &qword_1016980D0, &unk_10138F3B0);
      v22 = v29;
      if (!v26)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    result = (*v64)(v71, v3, v28);
    v32 = 0;
    v33 = v31 + 64;
    v34 = 1 << *(v31 + 32);
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    else
    {
      v35 = -1;
    }

    v36 = v35 & *(v31 + 64);
    v37 = (v34 + 63) >> 6;
    for (*&v69 = v31; v36; v31 = v69)
    {
LABEL_26:
      v39 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
      v40 = v39 | (v32 << 6);
      v41 = (*(v31 + 48) + 16 * v40);
      v42 = *v41;
      v43 = v41[1];
      v44 = *(*(v31 + 56) + 8 * v40);
      type metadata accessor for Failure();
      v45 = swift_allocObject();

      sub_100A56BEC(v42, v43, v44);
      v46 = v76;
      if (*(v76 + 16))
      {
        v47 = sub_1000210EC(v71);
        if (v48)
        {
          v49 = *(*(v46 + 56) + 8 * v47);
          if (v49 >> 62)
          {
            if (_CocoaArrayWrapper.endIndex.getter())
            {
LABEL_30:
              v50 = v65;
              v51 = v70;
              (*v59)(v65, v71, v70);
              v52 = sub_101090394(v75);
              if (*v53)
              {
                v54 = v53;
                v55 = v52;

                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((*v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                (v55)(v75, 0);

                result = (*v66)(v65, v70);
              }

              else
              {
                (v52)(v75, 0);

                result = (*v66)(v50, v51);
              }

              continue;
            }
          }

          else if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }
        }
      }

      sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
      v56 = swift_allocObject();
      *(v56 + 16) = v68;
      *(v56 + 32) = v45;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v75[0] = v46;
      sub_100FFC214(v56, v71, isUniquelyReferenced_nonNull_native);

      v76 = *&v75[0];
    }

LABEL_22:
    v38 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v38 < v37)
    {
      v36 = *(v33 + 8 * v38);
      ++v32;
      if (v36)
      {
        v32 = v38;
        goto LABEL_26;
      }

      goto LABEL_22;
    }

    v28 = v70;
    result = (*v66)(v71, v70);
    v22 = v29;
    v3 = v63;
    v21 = v62;
    v23 = v61;
    v27 = v60;
    if (!v26)
    {
      goto LABEL_14;
    }

LABEL_13:
    v29 = v22;
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

void sub_100A57D50()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v58 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v47 = &v44 - v5;
  v6 = sub_1000BC4D4(&qword_1016B3498, "hR\t");
  v7 = __chkstk_darwin(v6 - 8);
  v54 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v44 - v9;
  v11 = sub_100908A28(_swiftEmptyArrayStorage);
  v44 = v0;
  v12 = *(v0 + 32);
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v45 = (v14 + 63) >> 6;
  v46 = v2 + 16;
  v55 = (v2 + 32);
  v48 = v2;
  v49 = v12;
  v50 = (v2 + 8);

  v17 = 0;
  v52 = v10;
  v53 = v1;
  v51 = v13;
  while (v16)
  {
    v18 = v1;
    v57 = v17;
    v19 = v17;
LABEL_15:
    v56 = (v16 - 1) & v16;
    v22 = __clz(__rbit64(v16)) | (v19 << 6);
    v24 = v48;
    v23 = v49;
    v25 = v47;
    (*(v48 + 16))(v47, *(v49 + 48) + *(v48 + 72) * v22, v18);
    v26 = *(*(v23 + 56) + 8 * v22);
    v27 = sub_1000BC4D4(&qword_1016B34A0, &qword_1013D4488);
    v28 = *(v27 + 48);
    v29 = *(v24 + 32);
    v1 = v18;
    v30 = v54;
    v29(v54, v25, v1);
    *(v30 + v28) = v26;
    (*(*(v27 - 8) + 56))(v30, 0, 1, v27);

LABEL_16:
    sub_100A58668(v30, v10);
    v31 = sub_1000BC4D4(&qword_1016B34A0, &qword_1013D4488);
    if ((*(*(v31 - 8) + 48))(v10, 1, v31) == 1)
    {

      v41 = [objc_opt_self() standardUserDefaults];
      sub_1000BC4D4(&qword_1016B34A8, &qword_1013D4490);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v43 = String._bridgeToObjectiveC()();
      [v41 setObject:isa forKey:v43];

      return;
    }

    v32 = *&v10[*(v31 + 48)];
    (*v55)(v58, v10, v1);
    if (v32 >> 62)
    {
      v33 = _CocoaArrayWrapper.endIndex.getter();
      if (!v33)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v33)
      {
        goto LABEL_4;
      }
    }

    if (v33 < 1)
    {
      goto LABEL_30;
    }

    v34 = 0;
    do
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      ++v34;
      v35 = UUID.uuidString.getter();
      v37 = v36;
      v38 = sub_100A570E4();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59 = v11;
      sub_100FFC404(v38, v35, v37, isUniquelyReferenced_nonNull_native);

      v11 = v59;
    }

    while (v33 != v34);
LABEL_4:

    v1 = v53;
    (*v50)(v58, v53);
    v13 = v51;
    v10 = v52;
    v16 = v56;
    v17 = v57;
  }

  if (v45 <= v17 + 1)
  {
    v20 = v17 + 1;
  }

  else
  {
    v20 = v45;
  }

  v21 = v20 - 1;
  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v45)
    {
      v40 = sub_1000BC4D4(&qword_1016B34A0, &qword_1013D4488);
      v30 = v54;
      (*(*(v40 - 8) + 56))(v54, 1, 1, v40);
      v56 = 0;
      v57 = v21;
      goto LABEL_16;
    }

    v16 = *(v13 + 8 * v19);
    ++v17;
    if (v16)
    {
      v18 = v1;
      v57 = v19;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
}

void sub_100A582C8(uint64_t a1)
{
  v2 = *(v1 + 32);
  if (*(v2 + 16))
  {

    v4 = sub_1000210EC(a1);
    if (v5)
    {
      v6 = *(*(v2 + 56) + 8 * v4);

      if (v6 >> 62)
      {
        goto LABEL_39;
      }

      for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v8 = 0;
        v35 = v6 & 0xFFFFFFFFFFFFFF8;
        v36 = v6 & 0xC000000000000001;
        v33 = v6;
        v34 = (v6 + 32);
        v32 = i;
        while (1)
        {
          if (v36)
          {
            v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v10 = __OFADD__(v8, 1);
            v11 = v8 + 1;
            if (v10)
            {
LABEL_33:
              __break(1u);
              goto LABEL_40;
            }

            goto LABEL_10;
          }

          if (v8 >= *(v35 + 16))
          {
            break;
          }

          v9 = v34[v8];

          v10 = __OFADD__(v8, 1);
          v11 = v8 + 1;
          if (v10)
          {
            goto LABEL_33;
          }

LABEL_10:
          v37 = v11;
          swift_beginAccess();
          v12 = *(v9 + 16);
          v13 = 1 << *(v12 + 32);
          if (v13 < 64)
          {
            v14 = ~(-1 << v13);
          }

          else
          {
            v14 = -1;
          }

          v15 = v14 & *(v12 + 64);
          v16 = (v13 + 63) >> 6;
          swift_bridgeObjectRetain_n();
          v17 = 0;
          while (v15)
          {
LABEL_21:
            v19 = *(*(v12 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v15)))));
            swift_beginAccess();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v38 = *(v9 + 16);
            v6 = v38;
            *(v9 + 16) = 0x8000000000000000;
            v21 = sub_100771C58(v19);
            v23 = *(v6 + 16);
            v24 = (v22 & 1) == 0;
            v10 = __OFADD__(v23, v24);
            v25 = v23 + v24;
            if (v10)
            {
LABEL_36:
              __break(1u);
LABEL_37:
              __break(1u);
              goto LABEL_38;
            }

            v26 = v22;
            if (*(v6 + 24) < v25)
            {
              sub_100FEAA14(v25, isUniquelyReferenced_nonNull_native);
              v6 = v38;
              v21 = sub_100771C58(v19);
              if ((v26 & 1) != (v27 & 1))
              {
                KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                __break(1u);
                return;
              }

LABEL_26:
              v28 = v38;
              if (v26)
              {
                goto LABEL_14;
              }

              goto LABEL_27;
            }

            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_26;
            }

            v6 = &v38;
            v31 = v21;
            sub_1010071C0();
            v21 = v31;
            v28 = v38;
            if (v26)
            {
LABEL_14:
              *(v28[7] + 8 * v21) = 0;
              goto LABEL_15;
            }

LABEL_27:
            v28[(v21 >> 6) + 8] |= 1 << v21;
            *(v28[6] + 8 * v21) = v19;
            *(v28[7] + 8 * v21) = 0;
            v29 = v28[2];
            v10 = __OFADD__(v29, 1);
            v30 = v29 + 1;
            if (v10)
            {
              goto LABEL_37;
            }

            v28[2] = v30;
LABEL_15:
            v15 &= v15 - 1;
            *(v9 + 16) = v28;
            swift_endAccess();
          }

          while (1)
          {
            v18 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              __break(1u);
              goto LABEL_36;
            }

            if (v18 >= v16)
            {
              break;
            }

            v15 = *(v12 + 64 + 8 * v18);
            ++v17;
            if (v15)
            {
              v17 = v18;
              goto LABEL_21;
            }
          }

          v6 = v33;
          v8 = v37;
          if (v37 == v32)
          {
            goto LABEL_40;
          }
        }

LABEL_38:
        __break(1u);
LABEL_39:
        ;
      }
    }

LABEL_40:
  }

  sub_100A57D50();
}

uint64_t sub_100A585F4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100A58668(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016B3498, "hR\t");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100A586D8()
{
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v1);
  v2 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 16) = 0x403E000000000000;
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v0 + 24) = v7;
  v10[1] = sub_1000BC488();
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v3);
  static DispatchQoS.unspecified.getter();
  v12 = _swiftEmptyArrayStorage;
  sub_100003D24(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v0 + 32) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v11 = 0;
  sub_1000BC4D4(&qword_1016B35D8, &qword_1013F1B70);
  swift_allocObject();
  *(v0 + 40) = CurrentValueSubject.init(_:)();
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;

  v8 = CurrentValueSubject.eraseToAnyCurrentValuePublisher()();

  *(v0 + 64) = v8;
  return v0;
}

uint64_t sub_100A589B4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100A58A30()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B9D0);
  sub_1000076D4(v0, qword_10177B9D0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100A58AB8(uint64_t a1)
{
  v3 = type metadata accessor for LocalizationUtility.Table();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, enum case for LocalizationUtility.Table.delegatedSharing(_:), v3);
  static LocalizationUtility.localizedString(key:table:)();
  (*(v4 + 8))(v6, v3);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101385D80;
  v8 = (v1 + *(a1 + 24));
  v10 = *v8;
  v9 = v8[1];
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_100008C00();
  *(v7 + 32) = v10;
  *(v7 + 40) = v9;

  v11 = String.init(format:arguments:)();

  return v11;
}

uint64_t sub_100A58C60()
{
  v0 = type metadata accessor for LocalizationUtility.Table();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, enum case for LocalizationUtility.Table.delegatedSharing(_:), v0);
  v4 = static LocalizationUtility.localizedString(key:table:)();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_100A58D80(uint64_t a1)
{
  v3 = type metadata accessor for LocalizationUtility.Table();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, enum case for LocalizationUtility.Table.delegatedSharing(_:), v3);
  static LocalizationUtility.localizedString(key:table:)();
  (*(v4 + 8))(v6, v3);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101385D80;
  v8 = (v1 + *(a1 + 24));
  v10 = *v8;
  v9 = v8[1];
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_100008C00();
  *(v7 + 32) = v10;
  *(v7 + 40) = v9;

  v11 = String.init(format:arguments:)();

  return v11;
}