uint64_t sub_1006E2ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v25 = a2;
  v6 = type metadata accessor for KeyAlignmentRecord(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6 - 8);
  v10 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v24 - v11;
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177BA08);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Saving record to cloud.", v16, 2u);
  }

  sub_100721C9C(a3, v12, type metadata accessor for KeyAlignmentRecord);
  sub_100721C9C(a4, v10, type metadata accessor for KeyAlignmentRecord);
  v17 = *(v7 + 80);
  v18 = (v17 + 24) & ~v17;
  v19 = a3;
  v20 = (v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v17 + v20 + 8) & ~v17;
  v22 = swift_allocObject();
  *(v22 + 16) = v24;
  sub_10002AB74(v12, v22 + v18, type metadata accessor for KeyAlignmentRecord);
  *(v22 + v20) = v25;
  sub_10002AB74(v10, v22 + v21, type metadata accessor for KeyAlignmentRecord);

  sub_1006E0D08(v19, 0, sub_100717A00, v22);
}

void sub_1006E2D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for OwnedBeaconRecord(0);
  __chkstk_darwin(v7 - 8);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  __chkstk_darwin(v10);
  v12 = (v32 - v11);
  Transaction.capture()();
  sub_1000D2A70(a1, v12, &unk_1016B15A0, &qword_1013A0900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_10177BA08);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v32[1] = v13;
      v33 = v18;
      *v17 = 136446210;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v19 = String.init<A>(describing:)();
      v21 = sub_1000136BC(v19, v20, &v33);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "Saving to cloud failed. Saving the status to disk record. %{public}s", v17, 0xCu);
      sub_100007BAC(v18);
    }

    QueueSynchronizer.conditionalSync<A>(_:)();
    sub_1009F15D4(a5);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Saved LocalStorageBacked record", v28, 2u);
    }
  }

  else
  {
    sub_10002AB74(v12, v9, type metadata accessor for OwnedBeaconRecord);
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000076D4(v22, qword_10177BA08);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Saved to cloud. Updating local record", v25, 2u);
    }

    QueueSynchronizer.conditionalSync<A>(_:)();
    sub_1009F15D4(v9);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Saved LocalStorageBacked record", v31, 2u);
    }

    sub_100721D04(v9, type metadata accessor for OwnedBeaconRecord);
  }
}

void sub_1006E3470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for BeaconNamingRecord(0);
  __chkstk_darwin(v7 - 8);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&qword_1016A7808, &qword_1013D6750);
  __chkstk_darwin(v10);
  v12 = (v32 - v11);
  Transaction.capture()();
  sub_1000D2A70(a1, v12, &qword_1016A7808, &qword_1013D6750);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_10177BA08);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v32[1] = v13;
      v33 = v18;
      *v17 = 136446210;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v19 = String.init<A>(describing:)();
      v21 = sub_1000136BC(v19, v20, &v33);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "Saving to cloud failed. Saving the status to disk record. %{public}s", v17, 0xCu);
      sub_100007BAC(v18);
    }

    QueueSynchronizer.conditionalSync<A>(_:)();
    sub_1009F0C24(a5);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Saved LocalStorageBacked record", v28, 2u);
    }
  }

  else
  {
    sub_10002AB74(v12, v9, type metadata accessor for BeaconNamingRecord);
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000076D4(v22, qword_10177BA08);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Saved to cloud. Updating local record", v25, 2u);
    }

    QueueSynchronizer.conditionalSync<A>(_:)();
    sub_1009F0C24(v9);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Saved LocalStorageBacked record", v31, 2u);
    }

    sub_100721D04(v9, type metadata accessor for BeaconNamingRecord);
  }
}

void sub_1006E3B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t *a7, uint64_t *a8, uint64_t (*a9)(void), uint64_t (*a10)(uint64_t), uint64_t (*a11)(void))
{
  v15 = a10;
  v16 = a6(0);
  __chkstk_darwin(v16 - 8);
  v18 = v40 - v17;
  v19 = sub_1000BC4D4(a7, a8);
  __chkstk_darwin(v19);
  v21 = (v40 - v20);
  Transaction.capture()();
  sub_1000D2A70(a1, v21, a7, a8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_1000076D4(v23, qword_10177BA08);
    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v40[0] = swift_slowAlloc();
      v40[1] = v22;
      v41 = v40[0];
      *v26 = 136446210;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v27 = String.init<A>(describing:)();
      v29 = sub_1000136BC(v27, v28, &v41);

      *(v26 + 4) = v29;
      v15 = a10;
      _os_log_impl(&_mh_execute_header, v24, v25, "Saving to cloud failed. Saving the status to disk record. %{public}s", v26, 0xCu);
      sub_100007BAC(v40[0]);
    }

    v15(a5);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Saved LocalStorageBacked record", v36, 2u);
    }
  }

  else
  {
    sub_10002AB74(v21, v18, a9);
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000076D4(v30, qword_10177BA08);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Saved to cloud. Updating local record", v33, 2u);
    }

    a10(v18);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Saved LocalStorageBacked record", v39, 2u);
    }

    sub_100721D04(v18, a11);
  }
}

void sub_1006E4214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for SharedBeaconRecord(0);
  __chkstk_darwin(v7 - 8);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&qword_101699BC8, &qword_1013926D8);
  __chkstk_darwin(v10);
  v12 = (v32 - v11);
  Transaction.capture()();
  sub_1000D2A70(a1, v12, &qword_101699BC8, &qword_1013926D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_10177BA08);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v32[1] = v13;
      v33 = v18;
      *v17 = 136446210;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v19 = String.init<A>(describing:)();
      v21 = sub_1000136BC(v19, v20, &v33);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "Saving to cloud failed. Saving the status to disk record. %{public}s", v17, 0xCu);
      sub_100007BAC(v18);
    }

    QueueSynchronizer.conditionalSync<A>(_:)();
    sub_1009F1368(a5);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Saved LocalStorageBacked record", v28, 2u);
    }
  }

  else
  {
    sub_10002AB74(v12, v9, type metadata accessor for SharedBeaconRecord);
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000076D4(v22, qword_10177BA08);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Saved to cloud. Updating local record", v25, 2u);
    }

    QueueSynchronizer.conditionalSync<A>(_:)();
    sub_1009F1368(v9);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Saved LocalStorageBacked record", v31, 2u);
    }

    sub_100721D04(v9, type metadata accessor for SharedBeaconRecord);
  }
}

void sub_1006E4914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for KeyAlignmentRecord(0);
  __chkstk_darwin(v7 - 8);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&unk_1016B1690, &qword_1013D6800);
  __chkstk_darwin(v10);
  v12 = (v32 - v11);
  Transaction.capture()();
  sub_1000D2A70(a1, v12, &unk_1016B1690, &qword_1013D6800);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_10177BA08);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v32[1] = v13;
      v33 = v18;
      *v17 = 136446210;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v19 = String.init<A>(describing:)();
      v21 = sub_1000136BC(v19, v20, &v33);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "Saving to cloud failed. Saving the status to disk record. %{public}s", v17, 0xCu);
      sub_100007BAC(v18);
    }

    sub_1009F0008(a5);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Saved LocalStorageBacked record", v28, 2u);
    }
  }

  else
  {
    sub_10002AB74(v12, v9, type metadata accessor for KeyAlignmentRecord);
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000076D4(v22, qword_10177BA08);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Saved to cloud. Updating local record", v25, 2u);
    }

    sub_1009F0008(v9);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Saved LocalStorageBacked record", v31, 2u);
    }

    sub_100721D04(v9, type metadata accessor for KeyAlignmentRecord);
  }
}

uint64_t sub_1006E4FAC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for OwnedBeaconGroup(0);
  v19 = *(v8 - 8);
  v9 = *(v19 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = objc_autoreleasePoolPush();
  sub_1011218E0(a1);
  v12 = v11;
  objc_autoreleasePoolPop(v10);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  sub_100FD7F1C(v12);

  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;

  Future.addFailure(block:)();

  sub_100721C9C(a1, &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OwnedBeaconGroup);
  v14 = (*(v19 + 80) + 24) & ~*(v19 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  sub_10002AB74(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for OwnedBeaconGroup);
  v16 = (v15 + ((v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = a2;
  v16[1] = a3;

  Future.addSuccess(block:)();
}

uint64_t sub_1006E5214(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for OwnedBeaconRecord(0);
  v19 = *(v8 - 8);
  v9 = *(v19 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = objc_autoreleasePoolPush();
  sub_101121B40(a1);
  v12 = v11;
  objc_autoreleasePoolPop(v10);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  sub_100FD7F1C(v12);

  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;

  Future.addFailure(block:)();

  sub_100721C9C(a1, &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OwnedBeaconRecord);
  v14 = (*(v19 + 80) + 24) & ~*(v19 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  sub_10002AB74(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for OwnedBeaconRecord);
  v16 = (v15 + ((v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = a2;
  v16[1] = a3;

  Future.addSuccess(block:)();
}

uint64_t sub_1006E547C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for BeaconNamingRecord(0);
  v19 = *(v8 - 8);
  v9 = *(v19 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = objc_autoreleasePoolPush();
  sub_101121DD0(a1);
  v12 = v11;
  objc_autoreleasePoolPop(v10);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  sub_100FD7F1C(v12);

  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;

  Future.addFailure(block:)();

  sub_100721C9C(a1, &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BeaconNamingRecord);
  v14 = (*(v19 + 80) + 24) & ~*(v19 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  sub_10002AB74(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for BeaconNamingRecord);
  v16 = (v15 + ((v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = a2;
  v16[1] = a3;

  Future.addSuccess(block:)();
}

uint64_t sub_1006E56E4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for OwnedDeviceKeyRecord(0);
  v19 = *(v8 - 8);
  v9 = *(v19 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = objc_autoreleasePoolPush();
  sub_101122740(a1);
  v12 = v11;
  objc_autoreleasePoolPop(v10);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  sub_100FD7F1C(v12);

  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;

  Future.addFailure(block:)();

  sub_100721C9C(a1, &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OwnedDeviceKeyRecord);
  v14 = (*(v19 + 80) + 24) & ~*(v19 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  sub_10002AB74(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for OwnedDeviceKeyRecord);
  v16 = (v15 + ((v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = a2;
  v16[1] = a3;

  Future.addSuccess(block:)();
}

uint64_t sub_1006E594C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for LostModeRecord(0);
  v19 = *(v8 - 8);
  v9 = *(v19 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = objc_autoreleasePoolPush();
  sub_1011217C0(a1);
  v12 = v11;
  objc_autoreleasePoolPop(v10);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  sub_100FD7F1C(v12);

  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;

  Future.addFailure(block:)();

  sub_100721C9C(a1, &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LostModeRecord);
  v14 = (*(v19 + 80) + 24) & ~*(v19 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  sub_10002AB74(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for LostModeRecord);
  v16 = (v15 + ((v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = a2;
  v16[1] = a3;

  Future.addSuccess(block:)();
}

uint64_t sub_1006E5BB4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for ShareRecord(0);
  v19 = *(v8 - 8);
  v9 = *(v19 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = objc_autoreleasePoolPush();
  sub_101121490(a1);
  v12 = v11;
  objc_autoreleasePoolPop(v10);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  sub_100FD7F1C(v12);

  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;

  Future.addFailure(block:)();

  sub_100721C9C(a1, &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShareRecord);
  v14 = (*(v19 + 80) + 24) & ~*(v19 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  sub_10002AB74(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for ShareRecord);
  v16 = (v15 + ((v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = a2;
  v16[1] = a3;

  Future.addSuccess(block:)();
}

uint64_t sub_1006E5E1C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for SharedBeaconRecord(0);
  v19 = *(v8 - 8);
  v9 = *(v19 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = objc_autoreleasePoolPush();
  sub_101122288(a1);
  v12 = v11;
  objc_autoreleasePoolPop(v10);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  sub_100FD7F1C(v12);

  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;

  Future.addFailure(block:)();

  sub_100721C9C(a1, &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedBeaconRecord);
  v14 = (*(v19 + 80) + 24) & ~*(v19 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  sub_10002AB74(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for SharedBeaconRecord);
  v16 = (v15 + ((v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = a2;
  v16[1] = a3;

  Future.addSuccess(block:)();
}

uint64_t sub_1006E6084(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for SafeLocation(0);
  v19 = *(v8 - 8);
  v9 = *(v19 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = objc_autoreleasePoolPush();
  sub_101121764(a1);
  v12 = v11;
  objc_autoreleasePoolPop(v10);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  sub_100FD7F1C(v12);

  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;

  Future.addFailure(block:)();

  sub_100721C9C(a1, &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SafeLocation);
  v14 = (*(v19 + 80) + 24) & ~*(v19 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  sub_10002AB74(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for SafeLocation);
  v16 = (v15 + ((v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = a2;
  v16[1] = a3;

  Future.addSuccess(block:)();
}

uint64_t sub_1006E62EC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for LeashRecord(0);
  v19 = *(v8 - 8);
  v9 = *(v19 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = objc_autoreleasePoolPush();
  sub_101121434(a1);
  v12 = v11;
  objc_autoreleasePoolPop(v10);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  sub_100FD7F1C(v12);

  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;

  Future.addFailure(block:)();

  sub_100721C9C(a1, &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LeashRecord);
  v14 = (*(v19 + 80) + 24) & ~*(v19 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  sub_10002AB74(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for LeashRecord);
  v16 = (v15 + ((v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = a2;
  v16[1] = a3;

  Future.addSuccess(block:)();
}

uint64_t sub_1006E6554(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for KeyAlignmentRecord(0);
  v19 = *(v8 - 8);
  v9 = *(v19 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = objc_autoreleasePoolPush();
  sub_10112202C(a1);
  v12 = v11;
  objc_autoreleasePoolPop(v10);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  sub_100FD7F1C(v12);

  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;

  Future.addFailure(block:)();

  sub_100721C9C(a1, &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for KeyAlignmentRecord);
  v14 = (*(v19 + 80) + 24) & ~*(v19 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  sub_10002AB74(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for KeyAlignmentRecord);
  v16 = (v15 + ((v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = a2;
  v16[1] = a3;

  Future.addSuccess(block:)();
}

uint64_t sub_1006E67BC(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v18[1] = a3;
  v19 = a2;
  v8 = sub_1000BC4D4(a4, a5);
  __chkstk_darwin(v8);
  v10 = (v18 - v9);
  v11 = static os_log_type_t.error.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v12 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_101385D80;
  v20 = a1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v14 = String.init<A>(describing:)();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_100008C00();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Save failed: %@", 15, 2, v13);

  *v10 = a1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v19(v10);
  return sub_10000B3A8(v10, a4, a5);
}

uint64_t sub_1006E6984(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v23 = a5;
  v24 = a4;
  v20 = a3;
  v21 = a2;
  v6 = sub_1000BC4D4(&qword_101699398, &qword_101391900);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for OwnedBeaconGroup(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v13 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v14 = swift_allocObject();
  v22 = xmmword_101385D80;
  *(v14 + 16) = xmmword_101385D80;
  *(v14 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  *(v14 + 64) = sub_100009D18(&qword_101697F90, &qword_101698150, CKRecord_ptr, &protocol conformance descriptor for NSObject);
  *(v14 + 32) = a1;
  v15 = a1;
  os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "Saved record %@", 15, 2, v14);

  sub_100518A90(v15, v11);
  v16 = v21;
  __chkstk_darwin(v17);
  *(&v20 - 4) = v20;
  *(&v20 - 3) = v16;
  *(&v20 - 2) = v11;
  OS_dispatch_queue.sync<A>(execute:)();
  sub_100721C9C(v11, v8, type metadata accessor for OwnedBeaconGroup);
  swift_storeEnumTagMultiPayload();
  v24(v8);
  v18 = sub_10000B3A8(v8, &qword_101699398, &qword_101391900);
  sub_100A8375C(v18);
  return sub_100721D04(v11, type metadata accessor for OwnedBeaconGroup);
}

uint64_t sub_1006E6D70(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v23 = a5;
  v24 = a4;
  v20 = a3;
  v21 = a2;
  v6 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for OwnedBeaconRecord(0);
  __chkstk_darwin(v9 - 8);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v13 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v14 = swift_allocObject();
  v22 = xmmword_101385D80;
  *(v14 + 16) = xmmword_101385D80;
  *(v14 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  *(v14 + 64) = sub_100009D18(&qword_101697F90, &qword_101698150, CKRecord_ptr, &protocol conformance descriptor for NSObject);
  *(v14 + 32) = a1;
  v15 = a1;
  os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "Saved record %@", 15, 2, v14);

  sub_100D5E184(v15, v11);
  v16 = v21;
  __chkstk_darwin(v17);
  *(&v20 - 4) = v20;
  *(&v20 - 3) = v16;
  *(&v20 - 2) = v11;
  OS_dispatch_queue.sync<A>(execute:)();
  sub_100721C9C(v11, v8, type metadata accessor for OwnedBeaconRecord);
  swift_storeEnumTagMultiPayload();
  v24(v8);
  v18 = sub_10000B3A8(v8, &unk_1016B15A0, &qword_1013A0900);
  sub_100A8375C(v18);
  return sub_100721D04(v11, type metadata accessor for OwnedBeaconRecord);
}

uint64_t sub_1006E715C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v23 = a5;
  v24 = a4;
  v20 = a3;
  v21 = a2;
  v6 = sub_1000BC4D4(&qword_1016A7808, &qword_1013D6750);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for BeaconNamingRecord(0);
  __chkstk_darwin(v9 - 8);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v13 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v14 = swift_allocObject();
  v22 = xmmword_101385D80;
  *(v14 + 16) = xmmword_101385D80;
  *(v14 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  *(v14 + 64) = sub_100009D18(&qword_101697F90, &qword_101698150, CKRecord_ptr, &protocol conformance descriptor for NSObject);
  *(v14 + 32) = a1;
  v15 = a1;
  os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "Saved record %@", 15, 2, v14);

  sub_100DE08D0(v15, v11);
  v16 = v21;
  __chkstk_darwin(v17);
  *(&v20 - 4) = v20;
  *(&v20 - 3) = v16;
  *(&v20 - 2) = v11;
  OS_dispatch_queue.sync<A>(execute:)();
  sub_100721C9C(v11, v8, type metadata accessor for BeaconNamingRecord);
  swift_storeEnumTagMultiPayload();
  v24(v8);
  v18 = sub_10000B3A8(v8, &qword_1016A7808, &qword_1013D6750);
  sub_100A8375C(v18);
  return sub_100721D04(v11, type metadata accessor for BeaconNamingRecord);
}

uint64_t sub_1006E7548(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v23 = a5;
  v24 = a4;
  v20 = a3;
  v21 = a2;
  v6 = sub_1000BC4D4(&qword_1016A7810, &qword_1013B66C0);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for OwnedDeviceKeyRecord(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v13 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v14 = swift_allocObject();
  v22 = xmmword_101385D80;
  *(v14 + 16) = xmmword_101385D80;
  *(v14 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  *(v14 + 64) = sub_100009D18(&qword_101697F90, &qword_101698150, CKRecord_ptr, &protocol conformance descriptor for NSObject);
  *(v14 + 32) = a1;
  v15 = a1;
  os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "Saved record %@", 15, 2, v14);

  sub_101103E74(v15, v11);
  v16 = v21;
  __chkstk_darwin(v17);
  *(&v20 - 4) = v20;
  *(&v20 - 3) = v16;
  *(&v20 - 2) = v11;
  OS_dispatch_queue.sync<A>(execute:)();
  sub_100721C9C(v11, v8, type metadata accessor for OwnedDeviceKeyRecord);
  swift_storeEnumTagMultiPayload();
  v24(v8);
  v18 = sub_10000B3A8(v8, &qword_1016A7810, &qword_1013B66C0);
  sub_100A8375C(v18);
  return sub_100721D04(v11, type metadata accessor for OwnedDeviceKeyRecord);
}

uint64_t sub_1006E7934(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v23 = a5;
  v24 = a4;
  v20 = a3;
  v21 = a2;
  v6 = sub_1000BC4D4(&qword_1016B1840, &qword_1013B68F0);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for LostModeRecord(0);
  __chkstk_darwin(v9 - 8);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v13 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v14 = swift_allocObject();
  v22 = xmmword_101385D80;
  *(v14 + 16) = xmmword_101385D80;
  *(v14 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  *(v14 + 64) = sub_100009D18(&qword_101697F90, &qword_101698150, CKRecord_ptr, &protocol conformance descriptor for NSObject);
  *(v14 + 32) = a1;
  v15 = a1;
  os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "Saved record %@", 15, 2, v14);

  sub_100E7815C(v15, v11);
  v16 = v21;
  __chkstk_darwin(v17);
  *(&v20 - 4) = v20;
  *(&v20 - 3) = v16;
  *(&v20 - 2) = v11;
  OS_dispatch_queue.sync<A>(execute:)();
  sub_100721C9C(v11, v8, type metadata accessor for LostModeRecord);
  swift_storeEnumTagMultiPayload();
  v24(v8);
  v18 = sub_10000B3A8(v8, &qword_1016B1840, &qword_1013B68F0);
  sub_100A8375C(v18);
  return sub_100721D04(v11, type metadata accessor for LostModeRecord);
}

uint64_t sub_1006E7D20(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v23 = a5;
  v24 = a4;
  v20 = a3;
  v21 = a2;
  v6 = sub_1000BC4D4(&unk_1016B1650, &unk_1013B1110);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for ShareRecord(0);
  __chkstk_darwin(v9 - 8);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v13 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v14 = swift_allocObject();
  v22 = xmmword_101385D80;
  *(v14 + 16) = xmmword_101385D80;
  *(v14 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  *(v14 + 64) = sub_100009D18(&qword_101697F90, &qword_101698150, CKRecord_ptr, &protocol conformance descriptor for NSObject);
  *(v14 + 32) = a1;
  v15 = a1;
  os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "Saved record %@", 15, 2, v14);

  sub_1001547CC(v15, v11);
  v16 = v21;
  __chkstk_darwin(v17);
  *(&v20 - 4) = v20;
  *(&v20 - 3) = v16;
  *(&v20 - 2) = v11;
  OS_dispatch_queue.sync<A>(execute:)();
  sub_100721C9C(v11, v8, type metadata accessor for ShareRecord);
  swift_storeEnumTagMultiPayload();
  v24(v8);
  v18 = sub_10000B3A8(v8, &unk_1016B1650, &unk_1013B1110);
  sub_100A8375C(v18);
  return sub_100721D04(v11, type metadata accessor for ShareRecord);
}

uint64_t sub_1006E810C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v23 = a5;
  v24 = a4;
  v20 = a3;
  v21 = a2;
  v6 = sub_1000BC4D4(&qword_101699BC8, &qword_1013926D8);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for SharedBeaconRecord(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v13 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v14 = swift_allocObject();
  v22 = xmmword_101385D80;
  *(v14 + 16) = xmmword_101385D80;
  *(v14 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  *(v14 + 64) = sub_100009D18(&qword_101697F90, &qword_101698150, CKRecord_ptr, &protocol conformance descriptor for NSObject);
  *(v14 + 32) = a1;
  v15 = a1;
  os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "Saved record %@", 15, 2, v14);

  v16 = sub_1011D5D0C(v15, v11);
  v17 = v21;
  __chkstk_darwin(v16);
  *(&v20 - 4) = v20;
  *(&v20 - 3) = v17;
  *(&v20 - 2) = v11;
  OS_dispatch_queue.sync<A>(execute:)();
  sub_100721C9C(v11, v8, type metadata accessor for SharedBeaconRecord);
  swift_storeEnumTagMultiPayload();
  v24(v8);
  v18 = sub_10000B3A8(v8, &qword_101699BC8, &qword_1013926D8);
  sub_100A8375C(v18);
  return sub_100721D04(v11, type metadata accessor for SharedBeaconRecord);
}

uint64_t sub_1006E84F8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v23 = a5;
  v24 = a4;
  v20 = a3;
  v21 = a2;
  v6 = sub_1000BC4D4(&unk_1016B1480, &qword_1013B6890);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for SafeLocation(0);
  __chkstk_darwin(v9 - 8);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v13 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v14 = swift_allocObject();
  v22 = xmmword_101385D80;
  *(v14 + 16) = xmmword_101385D80;
  *(v14 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  *(v14 + 64) = sub_100009D18(&qword_101697F90, &qword_101698150, CKRecord_ptr, &protocol conformance descriptor for NSObject);
  *(v14 + 32) = a1;
  v15 = a1;
  os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "Saved record %@", 15, 2, v14);

  sub_100EE51B8(v15, v11);
  v16 = v21;
  __chkstk_darwin(v17);
  *(&v20 - 4) = v20;
  *(&v20 - 3) = v16;
  *(&v20 - 2) = v11;
  OS_dispatch_queue.sync<A>(execute:)();
  sub_100721C9C(v11, v8, type metadata accessor for SafeLocation);
  swift_storeEnumTagMultiPayload();
  v24(v8);
  v18 = sub_10000B3A8(v8, &unk_1016B1480, &qword_1013B6890);
  sub_100A8375C(v18);
  return sub_100721D04(v11, type metadata accessor for SafeLocation);
}

uint64_t sub_1006E88E4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v23 = a5;
  v24 = a4;
  v20 = a3;
  v21 = a2;
  v6 = sub_1000BC4D4(&qword_1016A78E0, &qword_1013B6888);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for LeashRecord(0);
  __chkstk_darwin(v9 - 8);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v13 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v14 = swift_allocObject();
  v22 = xmmword_101385D80;
  *(v14 + 16) = xmmword_101385D80;
  *(v14 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  *(v14 + 64) = sub_100009D18(&qword_101697F90, &qword_101698150, CKRecord_ptr, &protocol conformance descriptor for NSObject);
  *(v14 + 32) = a1;
  v15 = a1;
  os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "Saved record %@", 15, 2, v14);

  sub_101251FDC(v15, v11);
  v16 = v21;
  __chkstk_darwin(v17);
  *(&v20 - 4) = v20;
  *(&v20 - 3) = v16;
  *(&v20 - 2) = v11;
  OS_dispatch_queue.sync<A>(execute:)();
  sub_100721C9C(v11, v8, type metadata accessor for LeashRecord);
  swift_storeEnumTagMultiPayload();
  v24(v8);
  v18 = sub_10000B3A8(v8, &qword_1016A78E0, &qword_1013B6888);
  sub_100A8375C(v18);
  return sub_100721D04(v11, type metadata accessor for LeashRecord);
}

uint64_t sub_1006E8CD0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v23 = a5;
  v24 = a4;
  v20 = a3;
  v21 = a2;
  v6 = sub_1000BC4D4(&unk_1016B1690, &qword_1013D6800);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for KeyAlignmentRecord(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v13 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v14 = swift_allocObject();
  v22 = xmmword_101385D80;
  *(v14 + 16) = xmmword_101385D80;
  *(v14 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  *(v14 + 64) = sub_100009D18(&qword_101697F90, &qword_101698150, CKRecord_ptr, &protocol conformance descriptor for NSObject);
  *(v14 + 32) = a1;
  v15 = a1;
  os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "Saved record %@", 15, 2, v14);

  sub_100150FC8(v15, v11);
  v16 = v21;
  __chkstk_darwin(v17);
  *(&v20 - 4) = v20;
  *(&v20 - 3) = v16;
  *(&v20 - 2) = v11;
  OS_dispatch_queue.sync<A>(execute:)();
  sub_100721C9C(v11, v8, type metadata accessor for KeyAlignmentRecord);
  swift_storeEnumTagMultiPayload();
  v24(v8);
  v18 = sub_10000B3A8(v8, &unk_1016B1690, &qword_1013D6800);
  sub_100A8375C(v18);
  return sub_100721D04(v11, type metadata accessor for KeyAlignmentRecord);
}

void sub_1006E90BC(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t a1), uint64_t a4, void (*a5)(uint64_t), void (*a6)(uint64_t))
{
  v48 = a5;
  v49 = a6;
  v50 = a1;
  v45 = a3;
  v46 = a4;
  v43 = sub_1000BC4D4(&qword_1016A7808, &qword_1013D6750);
  __chkstk_darwin(v43);
  v44 = &v40 - v7;
  v8 = type metadata accessor for BeaconNamingRecord(0);
  v41 = *(v8 - 8);
  v9 = *(v41 + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v11 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v42 = &v40 - v12;
  v13 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v14 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v15 = swift_allocObject();
  v16 = v15;
  v40 = xmmword_101385D80;
  *(v15 + 16) = xmmword_101385D80;
  if (a2)
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  if (a2)
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = sub_100008C00();
  *(v16 + 32) = v17;
  *(v16 + 40) = v18;
  os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "Modify record. Disk First? (%@)", 31, 2, v16, v40, v14);

  v19 = objc_autoreleasePoolPush();
  v20 = v50;
  sub_101121DD0(v50);
  if (a2)
  {
    v22 = v21;
    objc_autoreleasePoolPop(v19);
    v51[0] = v22;
    v23 = v42;
    sub_100721C9C(v20, v42, type metadata accessor for BeaconNamingRecord);
    v45(v23);
    sub_1006E9E68(v51, v23);
    v24 = v47;
    QueueSynchronizer.conditionalSync<A>(_:)();
    sub_1009F0C24(v23);
    QueueSynchronizer.conditionalSync<A>(_:)();
    sub_100A8306C(8u);
    v37 = v44;
    sub_100721C9C(v23, v44, type metadata accessor for BeaconNamingRecord);
    swift_storeEnumTagMultiPayload();
    v48(v37);
    sub_10000B3A8(v37, &qword_1016A7808, &qword_1013D6750);
    v38 = type metadata accessor for Transaction();
    __chkstk_darwin(v38);
    *(&v40 - 4) = v24;
    *(&v40 - 3) = v51;
    *(&v40 - 2) = v39;
    static Transaction.named<A>(_:with:)();
    sub_100721D04(v23, type metadata accessor for BeaconNamingRecord);
  }

  else
  {
    v25 = v21;
    v44 = v21;
    objc_autoreleasePoolPop(v19);
    v26 = v47;
    sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
    type metadata accessor for CloudKitCoordinator();
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    sub_100721C9C(v20, v11, type metadata accessor for BeaconNamingRecord);
    v27 = *(v41 + 80);
    v28 = swift_allocObject();
    v29 = v46;
    *(v28 + 16) = v45;
    *(v28 + 24) = v29;
    v45 = type metadata accessor for BeaconNamingRecord;
    sub_10002AB74(v11, v28 + ((v27 + 32) & ~v27), type metadata accessor for BeaconNamingRecord);

    sub_100FDCA40(v25, sub_10071F670, v28);

    v30 = swift_allocObject();
    v31 = v48;
    v32 = v49;
    *(v30 + 16) = v48;
    *(v30 + 24) = v32;

    Future.addFailure(block:)();

    sub_100721C9C(v50, v11, type metadata accessor for BeaconNamingRecord);
    v33 = (v27 + 16) & ~v27;
    v34 = (v9 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    sub_10002AB74(v11, v35 + v33, v45);
    *(v35 + v34) = v26;
    v36 = (v35 + ((v34 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v36 = v31;
    v36[1] = v32;

    Future.addSuccess(block:)();
  }
}

uint64_t sub_1006E9804(uint64_t a1, uint64_t a2, id *a3, uint64_t a4)
{
  v16 = a4;
  v7 = type metadata accessor for BeaconNamingRecord(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v10 = v17;
  v11 = *a3;
  sub_100FDC2D8(v11, v10);

  sub_100721C9C(v16, &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BeaconNamingRecord);
  v12 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  sub_10002AB74(&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for BeaconNamingRecord);
  *(v13 + ((v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

  Future.addCompletion(block:)();
}

void sub_1006E9A14(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconNamingRecord(0);
  __chkstk_darwin(v4 - 8);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  Transaction.capture()();
  if (a2)
  {
    swift_errorRetain();
    v7 = static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v8 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_101385D80;
    v17 = a2;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v10 = String.init<A>(describing:)();
    v12 = v11;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_100008C00();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "Modifying to cloud failed. Updating disk record with status. Error: %@", 70, 2, v9);
  }

  else if (a1)
  {
    v13 = a1;
    v14 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      v16 = v14;
      swift_once();
      v14 = v16;
    }

    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, qword_10177C380, "Modified to cloud. Updating local record with sync status.", 58, 2, _swiftEmptyArrayStorage);
    v15 = v13;
    sub_100DE08D0(v15, v6);
    QueueSynchronizer.conditionalSync<A>(_:)();
    sub_1009F0C24(v6);
    sub_100721D04(v6, type metadata accessor for BeaconNamingRecord);
  }
}

void sub_1006E9DB0()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v3);
  v7 = *(v0 + v4);
  v8 = *(v0 + v5);
  v9 = v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);

  sub_1006CFF0C((v0 + v2), v6, v7, v8, v10, v11, v12);
}

uint64_t sub_1006E9E68(id *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for BeaconNamingRecord(0);
  __chkstk_darwin(v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100721C9C(a2, v8, type metadata accessor for BeaconNamingRecord);
  [*a1 encryptedValues];
  swift_getObjectType();
  type metadata accessor for UUID();
  sub_100003E8C(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v9 = UUID.uuidString.getter();
    *(&v30 + 1) = &type metadata for String;
    v31 = &protocol witness table for String;
    *&v29 = v9;
    *(&v29 + 1) = v10;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v11 = v6[7];
  v12 = *(v3 + v11);
  v13 = *&v8[v11];
  if (v12 != v13)
  {
    *(&v30 + 1) = &type metadata for Int;
    v31 = &protocol witness table for Int;
    *&v29 = v13;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v14 = v6[8];
  v15 = *(v3 + v14);
  v16 = *(v3 + v14 + 8);
  v17 = &v8[v14];
  v19 = *v17;
  v18 = *(v17 + 1);
  v20 = v15 == *v17 && v16 == v18;
  if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    *(&v30 + 1) = &type metadata for String;
    v31 = &protocol witness table for String;
    *&v29 = v19;
    *(&v29 + 1) = v18;

    CKRecordKeyValueSetting.subscript.setter();
  }

  v21 = v6[9];
  v22 = (v3 + v21);
  v23 = *(v3 + v21 + 8);
  v24 = &v8[v21];
  v26 = *v24;
  v25 = *(v24 + 1);
  if (!v23)
  {
    if (!v25)
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  if (!v25)
  {
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    goto LABEL_22;
  }

  v27 = *v22 == v26 && v23 == v25;
  if (!v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
LABEL_20:
    *(&v30 + 1) = &type metadata for String;
    v31 = &protocol witness table for String;
    *&v29 = v26;
    *(&v29 + 1) = v25;
LABEL_22:

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_23:
  swift_unknownObjectRelease();
  return sub_100721D04(v8, type metadata accessor for BeaconNamingRecord);
}

void sub_1006EA170(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  sub_100008BB8(0, a3, a4);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

uint64_t sub_1006EA1E4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_100B31E68(v8);
      v8 = result;
    }

    v75 = v8 + 2;
    v76 = v8[2];
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v8[2 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1006EAADC((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100A5B430(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v29 = v8[3];
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_100A5B430((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v30;
    v31 = v8 + 4;
    v32 = &v8[2 * v5 + 4];
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = v8[4];
          v34 = v8[5];
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = &v8[2 * v30];
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = &v31[2 * v5];
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = &v8[2 * v30];
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = &v31[2 * v5];
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
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
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = &v31[2 * v5 - 2];
        v71 = *v70;
        v72 = &v31[2 * v5];
        v73 = v72[1];
        sub_1006EAADC((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = v8[2];
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove(&v31[2 * v5], v72 + 2, 16 * (v74 - 1 - v5));
        v8[2] = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = &v31[2 * v30];
      v38 = *(v37 - 8);
      v39 = *(v37 - 7);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 6);
      v41 = *(v37 - 5);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = &v8[2 * v30];
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = &v31[2 * v5];
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1006EA730(char *__dst, char *__src, unint64_t a3, char *a4, uint64_t a5)
{
  v41 = a5;
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = (__src - __dst) / 40;
  v12 = a3 - __src;
  v13 = (a3 - __src) / 40;
  if (v11 >= v13)
  {
    if (a4 != __src || &__src[40 * v13] <= a4)
    {
      memmove(a4, __src, 40 * v13);
    }

    v14 = v6 + 40 * v13;
    if (v12 < 40 || v8 <= v9)
    {
LABEL_43:
      v21 = v8;
      goto LABEL_44;
    }

    v22 = -v6;
    while (1)
    {
      v21 = v8 - 40;
      v23 = v14 - 40;
      v24 = v22 + v14;
      v7 -= 40;
      while (1)
      {
        sub_10001F280(v23, v40);
        sub_10001F280((v8 - 40), v39);
        v27 = sub_1006CD3D4(v40, v39, v41);
        if (v5)
        {
          sub_100007BAC(v39);
          sub_100007BAC(v40);
          v36 = v24 / 40;
          if (v8 >= v6 && v8 < v6 + 40 * v36 && v8 == v6)
          {
            goto LABEL_49;
          }

          v34 = 40 * v36;
          v35 = v8;
          goto LABEL_48;
        }

        v28 = v27;
        sub_100007BAC(v39);
        sub_100007BAC(v40);
        if (v28)
        {
          break;
        }

        if (v7 + 40 != v23 + 40)
        {
          v29 = *v23;
          v30 = *(v23 + 16);
          *(v7 + 32) = *(v23 + 32);
          *v7 = v29;
          *(v7 + 16) = v30;
        }

        v25 = v23 - 40;
        v24 -= 40;
        v7 -= 40;
        v26 = v23 > v6;
        v23 -= 40;
        if (!v26)
        {
          v14 = v25 + 40;
          goto LABEL_43;
        }
      }

      if ((v7 + 40) != v8)
      {
        v31 = *v21;
        v32 = *(v8 - 24);
        *(v7 + 32) = *(v8 - 1);
        *v7 = v31;
        *(v7 + 16) = v32;
      }

      v14 = v23 + 40;
      if (v23 + 40 > v6)
      {
        v8 -= 40;
        v22 = -v6;
        if (v21 > v9)
        {
          continue;
        }
      }

      v14 = v23 + 40;
      goto LABEL_44;
    }
  }

  if (a4 != __dst || &__dst[40 * v11] <= a4)
  {
    memmove(a4, __dst, 40 * v11);
  }

  v14 = v6 + 40 * v11;
  if (v10 < 40 || v8 >= v7)
  {
LABEL_16:
    v21 = v9;
LABEL_44:
    v37 = (v14 - v6) / 40;
    if (v21 >= v6 && v21 < v6 + 40 * v37 && v21 == v6)
    {
      goto LABEL_49;
    }

    v34 = 40 * v37;
    v35 = v21;
LABEL_48:
    memmove(v35, v6, v34);
    goto LABEL_49;
  }

  while (1)
  {
    sub_10001F280(v8, v40);
    sub_10001F280(v6, v39);
    v15 = sub_1006CD3D4(v40, v39, v41);
    if (v5)
    {
      break;
    }

    v16 = v15;
    sub_100007BAC(v39);
    sub_100007BAC(v40);
    if ((v16 & 1) == 0)
    {
      v17 = v6;
      v18 = v9 == v6;
      v6 += 40;
      if (v18)
      {
        goto LABEL_14;
      }

LABEL_13:
      v19 = *v17;
      v20 = *(v17 + 16);
      *(v9 + 4) = *(v17 + 32);
      *v9 = v19;
      *(v9 + 1) = v20;
      goto LABEL_14;
    }

    v17 = v8;
    v18 = v9 == v8;
    v8 += 40;
    if (!v18)
    {
      goto LABEL_13;
    }

LABEL_14:
    v9 += 40;
    if (v6 >= v14 || v8 >= v7)
    {
      goto LABEL_16;
    }
  }

  sub_100007BAC(v39);
  sub_100007BAC(v40);
  v33 = (v14 - v6) / 40;
  if (v9 < v6 || v9 >= v6 + 40 * v33 || v9 != v6)
  {
    v34 = 40 * v33;
    v35 = v9;
    goto LABEL_48;
  }

LABEL_49:

  return 1;
}

uint64_t sub_1006EAADC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

void *sub_1006EACD0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
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

    sub_10061BC30(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

id sub_1006EAD60(uint64_t a1, uint64_t a2)
{
  v163 = a2;
  v3 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  __chkstk_darwin(v3 - 8);
  v155 = &v136 - v4;
  v5 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v136 - v6;
  v158 = type metadata accessor for BeaconProductInfoRecord(0);
  v157 = *(v158 - 8);
  __chkstk_darwin(v158);
  v142 = &v136 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v9 - 8);
  v140 = &v136 - v10;
  v11 = type metadata accessor for SharedBeaconRecord(0);
  v139 = *(v11 - 1);
  __chkstk_darwin(v11);
  v141 = &v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v14 = __chkstk_darwin(v13 - 8);
  v137 = &v136 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v138 = &v136 - v16;
  v17 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v17 - 8);
  v152 = &v136 - v18;
  v153 = type metadata accessor for OwnedBeaconRecord(0);
  v151 = *(v153 - 8);
  __chkstk_darwin(v153);
  v154 = &v136 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  __chkstk_darwin(v160);
  v148 = &v136 - v20;
  v149 = type metadata accessor for BeaconNamingRecord(0);
  v147 = *(v149 - 8);
  __chkstk_darwin(v149);
  v143 = &v136 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Date();
  v150 = *(v22 - 8);
  __chkstk_darwin(v22);
  v24 = &v136 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for UUID();
  v162 = *(v165 - 8);
  v25 = __chkstk_darwin(v165);
  v164 = &v136 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v136 - v27;
  v177[3] = v11;
  v177[4] = sub_100003E8C(&qword_101698D80, type metadata accessor for SharedBeaconRecord, &unk_10140BB3C);
  v29 = sub_1000280DC(v177);
  sub_100721C9C(a1, v29, type metadata accessor for SharedBeaconRecord);
  v30 = [objc_allocWithZone(SPBeacon) init];
  v31 = *(v29 + v11[12]);
  v146 = *(v29 + v11[11]);
  v145 = v31;
  v32 = sub_100314604(v146, v31);
  v159 = v7;
  if (v33 >> 60 == 15)
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_1000076D4(v34, qword_10177BA08);
    sub_10001F280(v177, &v172);
    sub_10001F280(v177, &v167);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 134218240;
      v38 = *(sub_1000035D0(&v172, *(&v173 + 1)) + v11[11]);
      sub_100007BAC(&v172);
      *(v37 + 4) = v38;
      *(v37 + 12) = 2048;
      v39 = *(sub_1000035D0(&v167, *(&v168 + 1)) + v11[12]);
      sub_100007BAC(&v167);
      *(v37 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v35, v36, "Unable to create AccessoryProductData from %ld/%ld", v37, 0x16u);
    }

    else
    {
      sub_100007BAC(&v167);
      sub_100007BAC(&v172);
    }

    UUID.init(uuid:)();
  }

  else
  {
    v40 = v32;
    v41 = v33;
    v161 = v22;
    v42 = v11;
    v43 = v28;
    if (qword_101694570 != -1)
    {
      swift_once();
    }

    v172 = xmmword_10169DAA8;
    sub_100017D5C(xmmword_10169DAA8, *(&xmmword_10169DAA8 + 1));
    Data.append(_:)();
    v45 = *(&v172 + 1);
    v44 = v172;
    v167 = v172;
    sub_100017D5C(v172, *(&v172 + 1));
    sub_1000E0A3C();
    DataProtocol.stableUUID.getter();
    sub_100006654(v40, v41);
    sub_100016590(v44, v45);
    v46 = v45;
    v28 = v43;
    sub_100016590(v44, v46);
    v11 = v42;
    v22 = v161;
  }

  v144 = v11[5];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v30 setIdentifier:isa];

  v48 = String._bridgeToObjectiveC()();
  [v30 setModel:v48];

  sub_100008BB8(0, &unk_1016BBE80, SPBeaconShare_ptr);
  sub_100009D18(&qword_101698BF0, &unk_1016BBE80, SPBeaconShare_ptr, &protocol conformance descriptor for NSObject);
  v49 = Set._bridgeToObjectiveC()().super.isa;
  [v30 setShares:v49];

  v161 = v11;
  v50 = String._bridgeToObjectiveC()();
  [v30 setSystemVersion:v50];

  v156 = v28;
  v51 = UUID._bridgeToObjectiveC()().super.isa;
  [v30 setProductUUID:v51];

  v52 = v146;
  [v30 setVendorId:v146];
  v53 = v145;
  [v30 setProductId:v145];
  sub_100A8AD0C(v24);
  v54 = Date._bridgeToObjectiveC()().super.isa;
  v55 = *(v150 + 8);
  v55(v24, v22);
  [v30 setPairingDate:v54];

  [v30 setType:sub_1011DBF4C()];
  [v30 setLostModeInfo:0];
  [v30 setConnected:0];
  [v30 setConnectedStateExpiryDate:0];
  [v30 setIsAppleAudioAccessory:{sub_100E0EA64(v52, v53)}];
  [v30 setKeySyncLastObservedIndex:1];
  sub_100A8AD0C(v24);
  v56 = Date._bridgeToObjectiveC()().super.isa;
  v55(v24, v22);
  [v30 setKeySyncLastIndexObservationDate:v56];

  [v30 setKeySyncWildIndexFallback:1];
  [v30 setKeyAlignmentLastObservedIndex:0];
  static Date.distantPast.getter();
  v57 = Date._bridgeToObjectiveC()().super.isa;
  v55(v24, v22);
  [v30 setKeyAlignmentLastIndexObservationDate:v57];

  [v30 setAccessoryProductInfo:0];
  v58 = v162;
  v59 = v164;
  v60 = v165;
  v145 = *(v162 + 16);
  v61 = v145(v164, v29 + v144, v165);
  v146 = v29;
  v62 = v163;
  __chkstk_darwin(v61);
  v63 = v148;
  QueueSynchronizer.conditionalSync<A>(_:)();
  v64 = *(v58 + 8);
  v150 = v58 + 8;
  v160 = v64;
  v64(v59, v60);
  v65 = v149;
  if ((*(v147 + 48))(v63, 1, v149) == 1)
  {
    sub_10000B3A8(v63, &unk_1016B29E0, &unk_1013B70E0);
    sub_10001F280(v177, &v166);
    v66 = swift_allocObject();
    *(v66 + 16) = v62;
    sub_10000A748(&v166, v66 + 24);

    sub_1000BC4D4(&unk_1016AF910, &unk_10138C4C0);
    unsafeFromAsyncTask<A>(_:)();

    v172 = v167;
    v173 = v168;
    v174 = v169;
    v175 = v170;
    v67 = v171;
    v176 = v171;
    if (*(&v167 + 1))
    {
      v68 = v174;
      v69 = v173;
      v70 = String._bridgeToObjectiveC()();
      [v30 setName:v70];

      v71 = sub_1012BD7E8(v69);
      v72 = v71;
      v73 = v161;
      if (v69 == SPBeaconRoleIdOther && v68 && v71)
      {

        v74 = [v72 role];
        if (!v74)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v74 = String._bridgeToObjectiveC()();
        }

        v75 = objc_allocWithZone(SPBeaconRole);
        v76 = String._bridgeToObjectiveC()();

        v77 = [v75 initWithRoleId:v69 role:v74 roleEmoji:v76];

        [v30 setRole:v77];
      }

      else
      {
        [v30 setRole:v71];
      }

      v88 = v165;
      v84 = v156;
      v91 = v153;
      v92 = v152;
      if (v67)
      {

        v93 = String._bridgeToObjectiveC()();
        sub_10000B3A8(&v172, &unk_1016AF910, &unk_10138C4C0);
      }

      else
      {
        sub_10000B3A8(&v172, &unk_1016AF910, &unk_10138C4C0);
        v93 = 0;
      }

      [v30 setSerialNumber:v93];

      v89 = v155;
      v90 = v154;
    }

    else
    {
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v94 = type metadata accessor for Logger();
      sub_1000076D4(v94, qword_10177BA08);
      sub_10001F280(v177, &v167);
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        *&v166 = v98;
        *v97 = 141558275;
        *(v97 + 4) = 1752392040;
        *(v97 + 12) = 2081;
        v99 = sub_1000035D0(&v167, *(&v168 + 1));
        v100 = v164;
        v145(v164, &v99[v161[5]], v165);
        sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v101 = dispatch thunk of CustomStringConvertible.description.getter();
        v103 = v102;
        v104 = v100;
        v73 = v161;
        v160(v104, v165);
        sub_100007BAC(&v167);
        v105 = sub_1000136BC(v101, v103, &v166);

        *(v97 + 14) = v105;
        _os_log_impl(&_mh_execute_header, v95, v96, "No beacon name record %{private,mask.hash}s. Fallback to custom role.", v97, 0x16u);
        sub_100007BAC(v98);

        v88 = v165;

        v84 = v156;
        v89 = v155;
        v90 = v154;
        v91 = v153;
        v92 = v152;
      }

      else
      {

        sub_100007BAC(&v167);
        v84 = v156;
        v89 = v155;
        v90 = v154;
        v91 = v153;
        v92 = v152;
        v88 = v165;
        v73 = v161;
      }

      v106 = String._bridgeToObjectiveC()();
      [v30 setName:v106];
    }
  }

  else
  {
    v78 = v143;
    sub_10002AB74(v63, v143, type metadata accessor for BeaconNamingRecord);
    v79 = String._bridgeToObjectiveC()();
    [v30 setName:v79];

    v80 = *(v78 + *(v65 + 28));
    v81 = sub_1012BD7E8(v80);
    v82 = v81;
    if (v80 == SPBeaconRoleIdOther && *(v78 + *(v65 + 36) + 8) && v81)
    {
      v83 = [v81 role];
      v84 = v156;
      v73 = v161;
      if (!v83)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v83 = String._bridgeToObjectiveC()();
      }

      v85 = objc_allocWithZone(SPBeaconRole);
      v86 = String._bridgeToObjectiveC()();
      v87 = [v85 initWithRoleId:v80 role:v83 roleEmoji:v86];

      [v30 setRole:v87];
      v88 = v165;
      v78 = v143;
    }

    else
    {
      [v30 setRole:v81];
      v84 = v156;
      v73 = v161;
      v88 = v165;
    }

    sub_100721D04(v78, type metadata accessor for BeaconNamingRecord);
    v89 = v155;
    v90 = v154;
    v91 = v153;
    v92 = v152;
  }

  sub_10001F280(v177, &v172);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v107 = swift_dynamicCast();
  v108 = *(v151 + 56);
  if (v107)
  {
    v108(v92, 0, 1, v91);
    sub_10002AB74(v92, v90, type metadata accessor for OwnedBeaconRecord);
    sub_1010DA578();
    v109 = String._bridgeToObjectiveC()();

    [v30 setStableIdentifier:v109];

    v110 = v138;
    sub_1000D2A70(v90 + v91[7], v138, &qword_1016980D0, &unk_10138F3B0);
    if ((*(v162 + 48))(v110, 1, v88) == 1)
    {
      v111 = 0;
      v112 = v160;
    }

    else
    {
      v111 = UUID._bridgeToObjectiveC()().super.isa;
      v112 = v160;
      v160(v110, v88);
    }

    [v30 setGroupIdentifier:v111];

    sub_100B0E4A8(v90);
    if (v124)
    {
      v125 = String._bridgeToObjectiveC()();
    }

    else
    {
      v125 = 0;
    }

    [v30 setSerialNumber:v125];

    [v30 setPartIdentifier:sub_100B0E7A8(v90)];
    [v30 setBatteryLevel:*(v90 + v91[19])];
    [v30 setIsZeus:*(v90 + v91[20])];
    if (qword_101694E80 != -1)
    {
      swift_once();
    }

    [v30 setOwner:qword_10177C088];
    [v30 setAccepted:1];
    v126 = String._bridgeToObjectiveC()();
    [v30 setCorrelationIdentifier:v126];

    [v30 setInternalShareType:-1];
    [v30 setOwnerBeaconIdentifier:0];
    v127 = type metadata accessor for OwnedBeaconRecord;
    v128 = v90;
  }

  else
  {
    v108(v92, 1, 1, v91);
    sub_10000B3A8(v92, &unk_1016A9A20, &qword_10138B280);
    sub_10001F280(v177, &v172);
    v113 = v140;
    v114 = swift_dynamicCast();
    v115 = *(v139 + 56);
    if ((v114 & 1) == 0)
    {
      v115(v113, 1, 1, v73);
      sub_10000B3A8(v113, &unk_101698C30, &unk_101392630);
      v112 = v160;
      goto LABEL_57;
    }

    v115(v113, 0, 1, v73);
    v116 = v113;
    v117 = v141;
    sub_10002AB74(v116, v141, type metadata accessor for SharedBeaconRecord);
    v118 = String._bridgeToObjectiveC()();
    [v30 setStableIdentifier:v118];

    v119 = sub_100EB3708(*(v117 + v73[7]), *(v117 + v73[7] + 8), *(v117 + v73[7] + 16));
    [v30 setOwner:v119];

    [v30 setAccepted:*(v117 + v73[13])];
    v120 = String._bridgeToObjectiveC()();
    [v30 setCorrelationIdentifier:v120];

    [v30 setInternalShareType:*(v117 + v73[16])];
    sub_1000D2A70(v117 + v73[20], v89, &unk_1016AF890, &qword_1013926D0);
    v121 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
    v122 = (*(*(v121 - 8) + 48))(v89, 1, v121);
    v112 = v160;
    if (v122 == 1)
    {
      sub_10000B3A8(v89, &unk_1016AF890, &qword_1013926D0);
      (*(v162 + 56))(v137, 1, 1, v88);
      v123 = 0;
    }

    else
    {
      v129 = v137;
      sub_1000D2A70(v89 + *(v121 + 20), v137, &qword_1016980D0, &unk_10138F3B0);
      sub_100721D04(v89, type metadata accessor for SharedBeaconRecord.PropertyListContent);
      if ((*(v162 + 48))(v129, 1, v88) == 1)
      {
        v123 = 0;
      }

      else
      {
        v123 = UUID._bridgeToObjectiveC()().super.isa;
        v112(v129, v88);
      }
    }

    [v30 setOwnerBeaconIdentifier:v123];

    [v30 setLostModeInfo:0];
    v127 = type metadata accessor for SharedBeaconRecord;
    v128 = v141;
  }

  sub_100721D04(v128, v127);
LABEL_57:
  v130 = [v30 identifier];
  v131 = v164;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v132 = v159;
  sub_100AC1584(v131, v159);
  v112(v131, v88);
  if ((*(v157 + 48))(v132, 1, v158) == 1)
  {
    v112(v84, v88);
    sub_10000B3A8(v132, &unk_1016AF8C0, &unk_1013A07A0);
  }

  else
  {
    v133 = v142;
    sub_10002AB74(v132, v142, type metadata accessor for BeaconProductInfoRecord);
    v134 = sub_10083B890();
    [v30 setAccessoryProductInfo:v134];

    sub_100721D04(v133, type metadata accessor for BeaconProductInfoRecord);
    v112(v84, v88);
  }

  sub_100007BAC(v177);
  return v30;
}

id sub_1006EC8A4(uint64_t a1, uint64_t a2)
{
  v166 = a2;
  v3 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  __chkstk_darwin(v3 - 8);
  v143 = &v142 - v4;
  v5 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  __chkstk_darwin(v5 - 8);
  v162 = &v142 - v6;
  v161 = type metadata accessor for BeaconProductInfoRecord(0);
  v160 = *(v161 - 8);
  __chkstk_darwin(v161);
  v149 = &v142 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v8 - 8);
  v146 = &v142 - v9;
  v147 = type metadata accessor for SharedBeaconRecord(0);
  v145 = *(v147 - 8);
  __chkstk_darwin(v147);
  v148 = &v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v12 = __chkstk_darwin(v11 - 8);
  v142 = &v142 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v142 - v14;
  v16 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v16 - 8);
  v158 = &v142 - v17;
  v18 = type metadata accessor for OwnedBeaconRecord(0);
  v157 = *(v18 - 8);
  __chkstk_darwin(v18);
  v159 = &v142 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  __chkstk_darwin(v154);
  v155 = &v142 - v20;
  v21 = type metadata accessor for BeaconNamingRecord(0);
  v153 = *(v21 - 8);
  __chkstk_darwin(v21);
  v163 = &v142 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for Date();
  v151 = *(v152 - 8);
  __chkstk_darwin(v152);
  v150 = &v142 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = type metadata accessor for UUID();
  v164 = *(v169 - 8);
  v24 = __chkstk_darwin(v169);
  v168 = &v142 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v165 = &v142 - v26;
  v181[3] = v18;
  v181[4] = sub_100003E8C(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord, &unk_1013E7DBC);
  v27 = sub_1000280DC(v181);
  sub_100721C9C(a1, v27, type metadata accessor for OwnedBeaconRecord);
  v28 = [objc_allocWithZone(SPBeacon) init];
  v167 = v18;
  v29 = *(v27 + *(v18 + 64));
  v30 = *(v27 + *(v18 + 68));
  v31 = sub_100314604(v29, v30);
  v144 = v15;
  v156 = v21;
  if (v32 >> 60 == 15)
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_1000076D4(v33, qword_10177BA08);
    sub_10001F280(v181, &v176);
    sub_10001F280(v181, &v171);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v167;
    if (v36)
    {
      v38 = swift_slowAlloc();
      *v38 = 134218240;
      v39 = *(sub_1000035D0(&v176, *(&v177 + 1)) + v37[16]);
      sub_100007BAC(&v176);
      *(v38 + 4) = v39;
      *(v38 + 12) = 2048;
      v40 = *(sub_1000035D0(&v171, *(&v172 + 1)) + v37[17]);
      sub_100007BAC(&v171);
      *(v38 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v34, v35, "Unable to create AccessoryProductData from %ld/%ld", v38, 0x16u);
    }

    else
    {
      sub_100007BAC(&v171);
      sub_100007BAC(&v176);
    }

    UUID.init(uuid:)();
  }

  else
  {
    v41 = v31;
    v42 = v32;
    if (qword_101694570 != -1)
    {
      swift_once();
    }

    v176 = xmmword_10169DAA8;
    sub_100017D5C(xmmword_10169DAA8, *(&xmmword_10169DAA8 + 1));
    Data.append(_:)();
    v43 = v176;
    v171 = v176;
    sub_100017D5C(v176, *(&v176 + 1));
    sub_1000E0A3C();
    DataProtocol.stableUUID.getter();
    sub_100006654(v41, v42);
    sub_100016590(v43, *(&v43 + 1));
    sub_100016590(v43, *(&v43 + 1));
    v37 = v167;
  }

  v44 = v37[5];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v28 setIdentifier:isa];

  v46 = String._bridgeToObjectiveC()();
  [v28 setModel:v46];

  sub_100008BB8(0, &unk_1016BBE80, SPBeaconShare_ptr);
  sub_100009D18(&qword_101698BF0, &unk_1016BBE80, SPBeaconShare_ptr, &protocol conformance descriptor for NSObject);
  v47 = Set._bridgeToObjectiveC()().super.isa;
  [v28 setShares:v47];

  v48 = String._bridgeToObjectiveC()();
  [v28 setSystemVersion:v48];

  v49 = UUID._bridgeToObjectiveC()().super.isa;
  [v28 setProductUUID:v49];

  [v28 setVendorId:v29];
  [v28 setProductId:v30];
  v50 = Date._bridgeToObjectiveC()().super.isa;
  [v28 setPairingDate:v50];

  v51 = sub_100D60CD0();
  [v28 setType:v51];

  [v28 setLostModeInfo:0];
  [v28 setConnected:0];
  [v28 setConnectedStateExpiryDate:0];
  [v28 setIsAppleAudioAccessory:{sub_100E0EA64(v29, v30)}];
  [v28 setKeySyncLastObservedIndex:1];
  v52 = Date._bridgeToObjectiveC()().super.isa;
  [v28 setKeySyncLastIndexObservationDate:v52];

  [v28 setKeySyncWildIndexFallback:1];
  [v28 setKeyAlignmentLastObservedIndex:0];
  v53 = v150;
  static Date.distantPast.getter();
  v54 = Date._bridgeToObjectiveC()().super.isa;
  v151[1](v53, v152);
  [v28 setKeyAlignmentLastIndexObservationDate:v54];

  [v28 setAccessoryProductInfo:0];
  v55 = v164;
  v56 = *(v164 + 16);
  v57 = v27 + v44;
  v58 = v168;
  v59 = v169;
  v152 = v164 + 16;
  v151 = v56;
  v60 = (v56)(v168, v57, v169);
  v61 = v166;
  __chkstk_darwin(v60);
  v62 = v155;
  QueueSynchronizer.conditionalSync<A>(_:)();
  v64 = *(v55 + 8);
  v63 = (v55 + 8);
  v65 = v64;
  (v64)(v58, v59);
  v66 = v156;
  if ((*(v153 + 48))(v62, 1, v156) == 1)
  {
    sub_10000B3A8(v62, &unk_1016B29E0, &unk_1013B70E0);
    sub_10001F280(v181, v170);
    v67 = swift_allocObject();
    *(v67 + 16) = v61;
    sub_10000A748(v170, v67 + 24);

    sub_1000BC4D4(&unk_1016AF910, &unk_10138C4C0);
    unsafeFromAsyncTask<A>(_:)();

    v176 = v171;
    v177 = v172;
    v178 = v173;
    v179 = v174;
    v68 = v175;
    v180 = v175;
    if (*(&v171 + 1))
    {
      v156 = v65;
      v69 = v178;
      v70 = *(&v179 + 1);
      v71 = v177;
      v72 = String._bridgeToObjectiveC()();
      [v28 setName:v72];

      v73 = sub_1012BD7E8(v71);
      v74 = v73;
      v75 = v167;
      if (v71 == SPBeaconRoleIdOther && v69 && v73)
      {
        v163 = v70;

        v76 = [v74 role];
        if (!v76)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v76 = String._bridgeToObjectiveC()();
        }

        v77 = objc_allocWithZone(SPBeaconRole);
        v78 = String._bridgeToObjectiveC()();

        v79 = [v77 initWithRoleId:v71 role:v76 roleEmoji:v78];

        [v28 setRole:v79];
      }

      else
      {
        [v28 setRole:v73];
      }

      v91 = v169;
      v87 = v165;
      if (v68)
      {

        v94 = String._bridgeToObjectiveC()();
        sub_10000B3A8(&v176, &unk_1016AF910, &unk_10138C4C0);
      }

      else
      {
        sub_10000B3A8(&v176, &unk_1016AF910, &unk_10138C4C0);
        v94 = 0;
      }

      v93 = v158;
      [v28 setSerialNumber:v94];

      v92 = v159;
      v65 = v156;
    }

    else
    {
      v75 = v167;
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v95 = type metadata accessor for Logger();
      sub_1000076D4(v95, qword_10177BA08);
      sub_10001F280(v181, &v171);
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.error.getter();
      v98 = os_log_type_enabled(v96, v97);
      v91 = v169;
      if (v98)
      {
        v99 = swift_slowAlloc();
        v155 = v63;
        v156 = v65;
        v100 = v99;
        v101 = swift_slowAlloc();
        *&v170[0] = v101;
        *v100 = 141558275;
        *(v100 + 4) = 1752392040;
        *(v100 + 12) = 2081;
        v102 = sub_1000035D0(&v171, *(&v172 + 1)) + v75[5];
        v103 = v168;
        (v151)(v168, v102, v169);
        sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v104 = dispatch thunk of CustomStringConvertible.description.getter();
        v106 = v105;
        v107 = v103;
        v75 = v167;
        (v156)(v107, v169);
        sub_100007BAC(&v171);
        v108 = sub_1000136BC(v104, v106, v170);

        *(v100 + 14) = v108;
        _os_log_impl(&_mh_execute_header, v96, v97, "No beacon name record %{private,mask.hash}s. Fallback to custom role.", v100, 0x16u);
        sub_100007BAC(v101);
        v91 = v169;

        v65 = v156;
      }

      else
      {

        sub_100007BAC(&v171);
      }

      v87 = v165;
      v92 = v159;
      v109 = String._bridgeToObjectiveC()();
      [v28 setName:v109];

      v93 = v158;
    }
  }

  else
  {
    v80 = v62;
    v81 = v163;
    sub_10002AB74(v80, v163, type metadata accessor for BeaconNamingRecord);
    v82 = String._bridgeToObjectiveC()();
    [v28 setName:v82];

    v83 = *(v81 + v66[7]);
    v84 = sub_1012BD7E8(v83);
    v85 = v84;
    if (v83 == SPBeaconRoleIdOther && *(v163 + v66[9] + 8) && v84)
    {
      v156 = v65;
      v155 = v63;
      v86 = [v84 role];
      v87 = v165;
      v75 = v167;
      if (!v86)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v86 = String._bridgeToObjectiveC()();
      }

      v88 = objc_allocWithZone(SPBeaconRole);
      v89 = String._bridgeToObjectiveC()();
      v90 = [v88 initWithRoleId:v83 role:v86 roleEmoji:v89];

      [v28 setRole:v90];
      v91 = v169;
      v65 = v156;
    }

    else
    {
      [v28 setRole:v84];
      v87 = v165;
      v75 = v167;
      v91 = v169;
    }

    sub_100721D04(v163, type metadata accessor for BeaconNamingRecord);
    v92 = v159;
    v93 = v158;
  }

  sub_10001F280(v181, &v176);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v110 = swift_dynamicCast();
  v111 = *(v157 + 56);
  if (v110)
  {
    v111(v93, 0, 1, v75);
    sub_10002AB74(v93, v92, type metadata accessor for OwnedBeaconRecord);
    sub_1010DA578();
    v112 = String._bridgeToObjectiveC()();

    [v28 setStableIdentifier:v112];

    v113 = v144;
    sub_1000D2A70(v92 + v75[7], v144, &qword_1016980D0, &unk_10138F3B0);
    if ((*(v164 + 48))(v113, 1, v91) == 1)
    {
      v114 = 0;
    }

    else
    {
      v114 = UUID._bridgeToObjectiveC()().super.isa;
      (v65)(v113, v91);
    }

    [v28 setGroupIdentifier:v114];

    sub_100B0E4A8(v92);
    if (v127)
    {
      v128 = String._bridgeToObjectiveC()();
    }

    else
    {
      v128 = 0;
    }

    [v28 setSerialNumber:v128];

    [v28 setPartIdentifier:sub_100B0E7A8(v92)];
    [v28 setBatteryLevel:*(v92 + v75[19])];
    [v28 setIsZeus:*(v92 + v75[20])];
    if (qword_101694E80 != -1)
    {
      swift_once();
    }

    [v28 setOwner:qword_10177C088];
    [v28 setAccepted:1];
    v129 = String._bridgeToObjectiveC()();
    [v28 setCorrelationIdentifier:v129];

    [v28 setInternalShareType:-1];
    [v28 setOwnerBeaconIdentifier:0];
    v130 = type metadata accessor for OwnedBeaconRecord;
    v131 = v92;
  }

  else
  {
    v111(v93, 1, 1, v75);
    sub_10000B3A8(v93, &unk_1016A9A20, &qword_10138B280);
    sub_10001F280(v181, &v176);
    v115 = v146;
    v116 = v147;
    v117 = swift_dynamicCast();
    v118 = *(v145 + 56);
    if ((v117 & 1) == 0)
    {
      v118(v115, 1, 1, v116);
      sub_10000B3A8(v115, &unk_101698C30, &unk_101392630);
      goto LABEL_57;
    }

    v118(v115, 0, 1, v116);
    v119 = v148;
    sub_10002AB74(v115, v148, type metadata accessor for SharedBeaconRecord);
    v120 = String._bridgeToObjectiveC()();
    [v28 setStableIdentifier:v120];

    v121 = sub_100EB3708(*(v119 + v116[7]), *(v119 + v116[7] + 8), *(v119 + v116[7] + 16));
    [v28 setOwner:v121];

    [v28 setAccepted:*(v119 + v116[13])];
    v122 = String._bridgeToObjectiveC()();
    [v28 setCorrelationIdentifier:v122];

    [v28 setInternalShareType:*(v119 + v116[16])];
    v123 = v119 + v116[20];
    v124 = v143;
    sub_1000D2A70(v123, v143, &unk_1016AF890, &qword_1013926D0);
    v125 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
    if ((*(*(v125 - 8) + 48))(v124, 1, v125) == 1)
    {
      sub_10000B3A8(v124, &unk_1016AF890, &qword_1013926D0);
      (*(v164 + 56))(v142, 1, 1, v91);
      v126 = 0;
    }

    else
    {
      v132 = v124 + *(v125 + 20);
      v133 = v142;
      sub_1000D2A70(v132, v142, &qword_1016980D0, &unk_10138F3B0);
      sub_100721D04(v124, type metadata accessor for SharedBeaconRecord.PropertyListContent);
      if ((*(v164 + 48))(v133, 1, v91) == 1)
      {
        v126 = 0;
      }

      else
      {
        v134.super.isa = UUID._bridgeToObjectiveC()().super.isa;
        v135 = v133;
        v126 = v134.super.isa;
        (v65)(v135, v91);
      }
    }

    [v28 setOwnerBeaconIdentifier:v126];

    [v28 setLostModeInfo:0];
    v130 = type metadata accessor for SharedBeaconRecord;
    v131 = v148;
  }

  sub_100721D04(v131, v130);
LABEL_57:
  v136 = [v28 identifier];
  v137 = v168;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v138 = v162;
  sub_100AC1584(v137, v162);
  (v65)(v137, v91);
  if ((*(v160 + 48))(v138, 1, v161) == 1)
  {
    (v65)(v87, v91);
    sub_10000B3A8(v138, &unk_1016AF8C0, &unk_1013A07A0);
  }

  else
  {
    v139 = v149;
    sub_10002AB74(v138, v149, type metadata accessor for BeaconProductInfoRecord);
    v140 = sub_10083B890();
    [v28 setAccessoryProductInfo:v140];

    sub_100721D04(v139, type metadata accessor for BeaconProductInfoRecord);
    (v65)(v87, v91);
  }

  sub_100007BAC(v181);
  return v28;
}

id sub_1006EE39C(uint64_t a1, uint64_t a2)
{
  v165 = a2;
  v3 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v139 - v4;
  v6 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  __chkstk_darwin(v6 - 8);
  v8 = &v139 - v7;
  v163 = type metadata accessor for BeaconProductInfoRecord(0);
  v162 = *(v163 - 8);
  __chkstk_darwin(v163);
  v147 = &v139 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v10 - 8);
  v144 = &v139 - v11;
  v145 = type metadata accessor for SharedBeaconRecord(0);
  v143 = *(v145 - 8);
  __chkstk_darwin(v145);
  v146 = &v139 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v14 = __chkstk_darwin(v13 - 8);
  v140 = &v139 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v142 = &v139 - v16;
  v17 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v17 - 8);
  v158 = &v139 - v18;
  v159 = type metadata accessor for OwnedBeaconRecord(0);
  v157 = *(v159 - 8);
  __chkstk_darwin(v159);
  v160 = &v139 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  __chkstk_darwin(v156);
  v153 = &v139 - v20;
  v154 = type metadata accessor for BeaconNamingRecord(0);
  v152 = *(v154 - 8);
  __chkstk_darwin(v154);
  v148 = &v139 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = type metadata accessor for Date();
  v151 = *(v155 - 1);
  __chkstk_darwin(v155);
  v23 = &v139 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = type metadata accessor for UUID();
  v166 = *(v167 - 8);
  v24 = __chkstk_darwin(v167);
  v168 = &v139 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v139 - v26;
  v28 = type metadata accessor for LocalFindableAccessoryRecord(0);
  v180[3] = v28;
  v180[4] = sub_100003E8C(&qword_1016AA560, type metadata accessor for LocalFindableAccessoryRecord, &unk_10138F748);
  v29 = sub_1000280DC(v180);
  sub_100721C9C(a1, v29, type metadata accessor for LocalFindableAccessoryRecord);
  v30 = [objc_allocWithZone(SPBeacon) init];
  v31 = *(v29 + *(v28 + 44));
  v150 = *(v29 + *(v28 + 40));
  v149 = v31;
  v32 = sub_100314604(v150, v31);
  v164 = v8;
  v141 = v5;
  if (v33 >> 60 == 15)
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_1000076D4(v34, qword_10177BA08);
    sub_10001F280(v180, &v175);
    sub_10001F280(v180, &v170);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 134218240;
      v38 = v27;
      v39 = *(sub_1000035D0(&v175, *(&v176 + 1)) + *(v28 + 40));
      sub_100007BAC(&v175);
      *(v37 + 4) = v39;
      *(v37 + 12) = 2048;
      v40 = *(sub_1000035D0(&v170, *(&v171 + 1)) + *(v28 + 44));
      sub_100007BAC(&v170);
      *(v37 + 14) = v40;
      v27 = v38;
      _os_log_impl(&_mh_execute_header, v35, v36, "Unable to create AccessoryProductData from %ld/%ld", v37, 0x16u);
    }

    else
    {
      sub_100007BAC(&v170);
      sub_100007BAC(&v175);
    }

    UUID.init(uuid:)();
    v43 = v27;
  }

  else
  {
    v41 = v32;
    v42 = v33;
    v43 = v27;
    if (qword_101694570 != -1)
    {
      swift_once();
    }

    v175 = xmmword_10169DAA8;
    sub_100017D5C(xmmword_10169DAA8, *(&xmmword_10169DAA8 + 1));
    Data.append(_:)();
    v44 = v175;
    v170 = v175;
    sub_100017D5C(v175, *(&v175 + 1));
    sub_1000E0A3C();
    DataProtocol.stableUUID.getter();
    sub_100006654(v41, v42);
    sub_100016590(v44, *(&v44 + 1));
    sub_100016590(v44, *(&v44 + 1));
  }

  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v30 setIdentifier:isa];

  v46 = String._bridgeToObjectiveC()();
  [v30 setModel:v46];

  sub_100008BB8(0, &unk_1016BBE80, SPBeaconShare_ptr);
  sub_100009D18(&qword_101698BF0, &unk_1016BBE80, SPBeaconShare_ptr, &protocol conformance descriptor for NSObject);
  v47 = Set._bridgeToObjectiveC()().super.isa;
  [v30 setShares:v47];

  v48 = String._bridgeToObjectiveC()();
  [v30 setSystemVersion:v48];

  v161 = v43;
  v49 = UUID._bridgeToObjectiveC()().super.isa;
  [v30 setProductUUID:v49];

  v50 = v150;
  [v30 setVendorId:v150];
  v51 = v149;
  [v30 setProductId:v149];
  Date.init(timeIntervalSince1970:)();
  v52 = Date._bridgeToObjectiveC()().super.isa;
  v53 = *(v151 + 8);
  v54 = v155;
  v53(v23, v155);
  [v30 setPairingDate:v52];

  [v30 setType:SPBeaconTypeLocalFindable];
  [v30 setLostModeInfo:0];
  [v30 setConnected:0];
  [v30 setConnectedStateExpiryDate:0];
  [v30 setIsAppleAudioAccessory:{sub_100E0EA64(v50, v51)}];
  [v30 setKeySyncLastObservedIndex:1];
  Date.init(timeIntervalSince1970:)();
  v55 = Date._bridgeToObjectiveC()().super.isa;
  v53(v23, v54);
  [v30 setKeySyncLastIndexObservationDate:v55];

  [v30 setKeySyncWildIndexFallback:1];
  [v30 setKeyAlignmentLastObservedIndex:0];
  static Date.distantPast.getter();
  v56 = Date._bridgeToObjectiveC()().super.isa;
  v53(v23, v54);
  [v30 setKeyAlignmentLastIndexObservationDate:v56];

  [v30 setAccessoryProductInfo:0];
  v57 = v166;
  v58 = *(v166 + 16);
  v59 = v168;
  v60 = v167;
  v151 = v166 + 16;
  v150 = v58;
  v61 = (v58)(v168, v29, v167);
  v62 = v165;
  __chkstk_darwin(v61);
  v63 = v153;
  QueueSynchronizer.conditionalSync<A>(_:)();
  v64 = *(v57 + 8);
  v156 = v57 + 8;
  v155 = v64;
  (v64)(v59, v60);
  v65 = v154;
  if ((*(v152 + 48))(v63, 1, v154) != 1)
  {
    v78 = v148;
    sub_10002AB74(v63, v148, type metadata accessor for BeaconNamingRecord);
    v79 = String._bridgeToObjectiveC()();
    [v30 setName:v79];

    v80 = *(v78 + *(v65 + 28));
    v81 = sub_1012BD7D0(v80);
    v82 = v81;
    if (v80 == SPBeaconRoleIdOther && *(v78 + *(v65 + 36) + 8) && v81)
    {
      v83 = [v81 role];
      if (!v83)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v83 = String._bridgeToObjectiveC()();
      }

      v84 = objc_allocWithZone(SPBeaconRole);
      v85 = String._bridgeToObjectiveC()();
      v86 = [v84 initWithRoleId:v80 role:v83 roleEmoji:v85];

      [v30 setRole:v86];
      v87 = v167;
      v74 = v155;
      v78 = v148;
    }

    else
    {
      [v30 setRole:v81];
      v87 = v60;
      v74 = v155;
    }

    sub_100721D04(v78, type metadata accessor for BeaconNamingRecord);
    v88 = v161;
    v89 = v160;
    v90 = v159;
    goto LABEL_36;
  }

  sub_10000B3A8(v63, &unk_1016B29E0, &unk_1013B70E0);
  sub_10001F280(v180, &v169);
  v66 = swift_allocObject();
  *(v66 + 16) = v62;
  sub_10000A748(&v169, v66 + 24);

  sub_1000BC4D4(&unk_1016AF910, &unk_10138C4C0);
  unsafeFromAsyncTask<A>(_:)();

  v175 = v170;
  v176 = v171;
  v177 = v172;
  v178 = v173;
  v67 = v174;
  v179 = v174;
  if (*(&v170 + 1))
  {
    v68 = v177;
    v69 = v176;
    v70 = String._bridgeToObjectiveC()();
    [v30 setName:v70];

    v71 = sub_1012BD7D0(v69);
    v72 = v71;
    if (v69 == SPBeaconRoleIdOther && v68 && v71)
    {

      v73 = [v72 role];
      v74 = v155;
      if (!v73)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v73 = String._bridgeToObjectiveC()();
      }

      v75 = objc_allocWithZone(SPBeaconRole);
      v76 = String._bridgeToObjectiveC()();

      v77 = [v75 initWithRoleId:v69 role:v73 roleEmoji:v76];

      [v30 setRole:v77];
    }

    else
    {
      [v30 setRole:v71];
      v74 = v155;
    }

    v87 = v167;
    v89 = v160;
    v90 = v159;
    if (v67)
    {

      v91 = String._bridgeToObjectiveC()();
      sub_10000B3A8(&v175, &unk_1016AF910, &unk_10138C4C0);
    }

    else
    {
      sub_10000B3A8(&v175, &unk_1016AF910, &unk_10138C4C0);
      v91 = 0;
    }

    [v30 setSerialNumber:v91];

    v88 = v161;
LABEL_36:
    v103 = v158;
    goto LABEL_37;
  }

  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v92 = type metadata accessor for Logger();
  sub_1000076D4(v92, qword_10177BA08);
  sub_10001F280(v180, &v170);
  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    *&v169 = v96;
    *v95 = 141558275;
    *(v95 + 4) = 1752392040;
    *(v95 + 12) = 2081;
    v97 = sub_1000035D0(&v170, *(&v171 + 1));
    v98 = v168;
    v150(v168, v97, v167);
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v99 = dispatch thunk of CustomStringConvertible.description.getter();
    v101 = v100;
    v74 = v155;
    (v155)(v98, v167);
    sub_100007BAC(&v170);
    v102 = sub_1000136BC(v99, v101, &v169);

    *(v95 + 14) = v102;
    _os_log_impl(&_mh_execute_header, v93, v94, "No beacon name record %{private,mask.hash}s. Fallback to custom role.", v95, 0x16u);
    sub_100007BAC(v96);
    v87 = v167;

    v88 = v161;
    v89 = v160;
    v90 = v159;
    v103 = v158;
  }

  else
  {

    sub_100007BAC(&v170);
    v88 = v161;
    v89 = v160;
    v90 = v159;
    v103 = v158;
    v87 = v60;
    v74 = v155;
  }

  v130 = String._bridgeToObjectiveC()();
  [v30 setName:v130];

LABEL_37:
  sub_10001F280(v180, &v175);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v104 = swift_dynamicCast();
  v105 = *(v157 + 56);
  if (v104)
  {
    v105(v103, 0, 1, v90);
    sub_10002AB74(v103, v89, type metadata accessor for OwnedBeaconRecord);
    sub_1010DA578();
    v106 = String._bridgeToObjectiveC()();

    [v30 setStableIdentifier:v106];

    v107 = v142;
    sub_1000D2A70(v89 + v90[7], v142, &qword_1016980D0, &unk_10138F3B0);
    if ((*(v166 + 48))(v107, 1, v87) == 1)
    {
      v108 = 0;
    }

    else
    {
      v122 = v107;
      v108 = UUID._bridgeToObjectiveC()().super.isa;
      v74(v122, v87);
    }

    [v30 setGroupIdentifier:v108];

    sub_100B0E4A8(v89);
    if (v123)
    {
      v124 = String._bridgeToObjectiveC()();
    }

    else
    {
      v124 = 0;
    }

    [v30 setSerialNumber:v124];

    [v30 setPartIdentifier:sub_100B0E7A8(v89)];
    [v30 setBatteryLevel:*(v89 + v90[19])];
    [v30 setIsZeus:*(v89 + v90[20])];
    if (qword_101694E80 != -1)
    {
      swift_once();
    }

    [v30 setOwner:qword_10177C088];
    [v30 setAccepted:1];
    v125 = String._bridgeToObjectiveC()();
    [v30 setCorrelationIdentifier:v125];

    [v30 setInternalShareType:-1];
    [v30 setOwnerBeaconIdentifier:0];
    v126 = type metadata accessor for OwnedBeaconRecord;
    v127 = v89;
  }

  else
  {
    v105(v103, 1, 1, v90);
    sub_10000B3A8(v103, &unk_1016A9A20, &qword_10138B280);
    sub_10001F280(v180, &v175);
    v109 = v144;
    v110 = v145;
    v111 = swift_dynamicCast();
    v112 = *(v143 + 56);
    if ((v111 & 1) == 0)
    {
      v112(v109, 1, 1, v110);
      sub_10000B3A8(v109, &unk_101698C30, &unk_101392630);
      goto LABEL_58;
    }

    v112(v109, 0, 1, v110);
    v113 = v109;
    v114 = v146;
    sub_10002AB74(v113, v146, type metadata accessor for SharedBeaconRecord);
    v115 = String._bridgeToObjectiveC()();
    [v30 setStableIdentifier:v115];

    v116 = sub_100EB3708(*(v114 + v110[7]), *(v114 + v110[7] + 8), *(v114 + v110[7] + 16));
    [v30 setOwner:v116];

    [v30 setAccepted:*(v114 + v110[13])];
    v117 = String._bridgeToObjectiveC()();
    [v30 setCorrelationIdentifier:v117];

    [v30 setInternalShareType:*(v114 + v110[16])];
    v118 = v114 + v110[20];
    v119 = v141;
    sub_1000D2A70(v118, v141, &unk_1016AF890, &qword_1013926D0);
    v120 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
    if ((*(*(v120 - 8) + 48))(v119, 1, v120) == 1)
    {
      sub_10000B3A8(v119, &unk_1016AF890, &qword_1013926D0);
      (*(v166 + 56))(v140, 1, 1, v87);
      v121 = 0;
    }

    else
    {
      v128 = v119 + *(v120 + 20);
      v129 = v140;
      sub_1000D2A70(v128, v140, &qword_1016980D0, &unk_10138F3B0);
      sub_100721D04(v119, type metadata accessor for SharedBeaconRecord.PropertyListContent);
      if ((*(v166 + 48))(v129, 1, v87) == 1)
      {
        v121 = 0;
      }

      else
      {
        v131.super.isa = UUID._bridgeToObjectiveC()().super.isa;
        v132 = v129;
        v121 = v131.super.isa;
        v74(v132, v87);
      }
    }

    [v30 setOwnerBeaconIdentifier:v121];

    [v30 setLostModeInfo:0];
    v126 = type metadata accessor for SharedBeaconRecord;
    v127 = v146;
  }

  sub_100721D04(v127, v126);
LABEL_58:
  v133 = [v30 identifier];
  v134 = v168;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v135 = v164;
  sub_100AC1584(v134, v164);
  v74(v134, v87);
  if ((*(v162 + 48))(v135, 1, v163) == 1)
  {
    v74(v88, v87);
    sub_10000B3A8(v135, &unk_1016AF8C0, &unk_1013A07A0);
  }

  else
  {
    v136 = v147;
    sub_10002AB74(v135, v147, type metadata accessor for BeaconProductInfoRecord);
    v137 = sub_10083B890();
    [v30 setAccessoryProductInfo:v137];

    sub_100721D04(v136, type metadata accessor for BeaconProductInfoRecord);
    v74(v88, v87);
  }

  sub_100007BAC(v180);
  return v30;
}

void *sub_1006EFEC4(uint64_t a1, int a2, uint64_t a3)
{
  LODWORD(v391) = a2;
  v5 = sub_1000BC4D4(&qword_10169E328, &unk_10139D740);
  __chkstk_darwin(v5 - 8);
  v362 = &v327[-v6];
  found = type metadata accessor for NotifyWhenFoundRecord(0);
  v395 = *(found - 8);
  __chkstk_darwin(found);
  v360 = &v327[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v378 = sub_1000BC4D4(&qword_1016A7840, &qword_1013B66F8);
  v8 = __chkstk_darwin(v378);
  v373 = &v327[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v377 = &v327[-v10];
  v11 = sub_1000BC4D4(&unk_1016A99E0, &qword_1013A07B0);
  v12 = __chkstk_darwin(v11 - 8);
  v374 = &v327[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v376 = &v327[-v14];
  v369 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v15 = __chkstk_darwin(v369);
  v359 = &v327[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v15);
  v364 = &v327[-v18];
  v19 = __chkstk_darwin(v17);
  v363 = &v327[-v20];
  v21 = __chkstk_darwin(v19);
  v365 = &v327[-v22];
  v23 = __chkstk_darwin(v21);
  v367 = &v327[-v24];
  v25 = __chkstk_darwin(v23);
  v368 = &v327[-v26];
  v27 = __chkstk_darwin(v25);
  v370 = &v327[-v28];
  v29 = __chkstk_darwin(v27);
  v371 = &v327[-v30];
  v31 = __chkstk_darwin(v29);
  v394 = &v327[-v32];
  __chkstk_darwin(v31);
  v399 = &v327[-v33];
  v34 = type metadata accessor for Date();
  v35 = *(v34 - 8);
  v36 = __chkstk_darwin(v34);
  v372 = &v327[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = __chkstk_darwin(v36);
  v375 = &v327[-v39];
  v40 = __chkstk_darwin(v38);
  v396 = &v327[-v41];
  __chkstk_darwin(v40);
  v398 = &v327[-v42];
  v43 = type metadata accessor for UUID();
  v44 = *(v43 - 8);
  v45 = __chkstk_darwin(v43);
  v387 = &v327[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v47 = __chkstk_darwin(v45);
  v366 = &v327[-v48];
  __chkstk_darwin(v47);
  v50 = &v327[-v49];
  v51 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v51 - 8);
  v53 = &v327[-v52];
  v406 = type metadata accessor for SharedBeaconRecord(0);
  v407 = sub_100003E8C(&qword_101698D80, type metadata accessor for SharedBeaconRecord, &unk_10140BB3C);
  v54 = sub_1000280DC(&v405);
  sub_100721C9C(a1, v54, type metadata accessor for SharedBeaconRecord);
  v56 = v406;
  v55 = v407;
  sub_1000035D0(&v405, v406);
  v57 = v56;
  v58 = v391;
  (*(*(*(v55 + 8) + 8) + 32))(v57);
  sub_100A423AC(v50, v53);
  v59 = *(v44 + 8);
  v379 = v50;
  v397 = v43;
  v389 = v44 + 8;
  v388 = v59;
  v59(v50, v43);
  v60 = (*(v35 + 48))(v53, 1, v34);
  sub_10000B3A8(v53, &unk_101696900, &unk_10138B1E0);
  v61 = sub_1006C1A0C(&v405, v58);
  v62 = v61[2];
  v382 = v61;
  if (v62)
  {
    v358 = a3;
    v384 = 0;
    v383 = 0;
    v353 = 0;
    v393 = (v44 + 56);
    v338 = 2 * (v60 == 1);
    v337 = (v395 + 6);
    v336 = (v44 + 16);
    v356 = (v35 + 40);
    v392 = (v44 + 48);
    v347 = (v44 + 32);
    v395 = (v35 + 8);
    v355 = (v35 + 32);
    v390 = (v35 + 16);
    v350 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_playbackCoordinatorModQueue;
    v351 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_soundPlaybackManager;
    v391 = SPBeaconTaskNameUnknown;
    v386 = SPBeaconTaskNameStartSharing;
    v381 = SPBeaconTaskNameStopSharing;
    v357 = SPBeaconTaskNameEnableLostMode;
    v354 = SPBeaconTaskNameDisableLostMode;
    v352 = SPBeaconTaskNamePlaySound;
    v349 = SPBeaconTaskNameStopSound;
    v346 = SPBeaconTaskNameBeginLeashing;
    v345 = SPBeaconTaskNameEndLeashing;
    v344 = SPBeaconTaskNameBeginBTFinding;
    v343 = SPBeaconTaskNameEndBTFinding;
    v342 = SPBeaconTaskNameConnect;
    v341 = SPBeaconTaskNameDisconnect;
    v340 = SPBeaconTaskNameRename;
    v339 = SPBeaconTaskNameBeginRanging;
    v335 = SPBeaconTaskNameEndRanging;
    v334 = SPBeaconTaskNameAccessoryFirmwareUpdate;
    v333 = SPBeaconTaskNameEnableNotifyWhenFound;
    v332 = SPBeaconTaskNameDisableNotifyWhenFound;
    v331 = SPBeaconTaskNameLocating;
    v63 = (v61 + 4);
    v348 = v401;
    v64 = 2;
    if (v58)
    {
      v65 = 2;
    }

    else
    {
      v65 = 0;
    }

    v380 = v65;
    if (v58)
    {
      v64 = 0;
    }

    v385 = v64;
    v66 = _swiftEmptyDictionarySingleton;
    v67 = v399;
    while (1)
    {
      v70 = *v63;
      v404 = 2;
      v71 = v70;
      Date.init()();
      v403 = 0;
      v72 = *v393;
      (*v393)(v67, 1, 1, v397);
      v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v75 = v74;
      if (v73 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v75 == v76)
      {

LABEL_19:
        v84 = -1;
        goto LABEL_23;
      }

      v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v79 = v387;
      if (v78)
      {
        goto LABEL_19;
      }

      v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v82 = v81;
      if (v80 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v82 == v83)
      {

LABEL_21:
        v86 = &v406;
LABEL_22:
        v84 = *(v86 - 32);
LABEL_23:
        v404 = v84;
        goto LABEL_24;
      }

      v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v85)
      {
        goto LABEL_21;
      }

      v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v100 = v99;
      if (v98 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v100 == v101)
      {

        v86 = &v403;
        goto LABEL_22;
      }

      v102 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v102)
      {
        v86 = &v403;
        goto LABEL_22;
      }

      v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v105 = v104;
      if (v103 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v105 == v106)
      {
      }

      else
      {
        v107 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v107 & 1) == 0)
        {
          v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v122 = v121;
          if (v120 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v122 == v123)
          {

LABEL_46:
            v125 = v358;
            v127 = v406;
            v126 = v407;
            sub_1000035D0(&v405, v406);
            v128 = v379;
            (*(*(*(v126 + 8) + 8) + 32))(v127);
            v129 = v374;
            sub_100ABD87C(v374);
            v388(v128, v397);
            v130 = type metadata accessor for LostModeRecord(0);
            LODWORD(v126) = (*(*(v130 - 8) + 48))(v129, 1, v130);
            sub_10000B3A8(v129, &unk_1016A99E0, &qword_1013A07B0);
            if (v126 == 1)
            {
              sub_10001F280(&v405, &aBlock);
              v131 = swift_allocObject();
              *(v131 + 16) = v125;
              sub_10000A748(&aBlock, v131 + 24);

              v132 = v373;
              unsafeFromAsyncTask<A>(_:)();

              v133 = sub_1000BC4D4(&qword_1016A7850, &qword_1013B6728);
              if ((*(*(v133 - 8) + 48))(v132, 1, v133) == 1)
              {
                sub_10000B3A8(v132, &qword_1016A7840, &qword_1013B66F8);
                v404 = 0;
                goto LABEL_24;
              }

              (*v395)(v132, v34);
            }

LABEL_53:
            v84 = 2;
            goto LABEL_23;
          }

          v124 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v124)
          {
            goto LABEL_46;
          }

          v134 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v136 = v135;
          if (v134 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v136 == v137)
          {

LABEL_55:
            v139 = v406;
            v140 = v407;
            sub_1000035D0(&v405, v406);
            if ((*(v140 + 152))(v139, v140))
            {
              v141 = *(v358 + v351);
              v143 = v406;
              v142 = v407;
              sub_1000035D0(&v405, v406);
              v144 = v379;
              v145 = (*(*(*(v142 + 8) + 8) + 32))(v143);
              v330 = v327;
              __chkstk_darwin(v145);
              *&v327[-16] = v141;
              *&v327[-8] = v144;
              sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
              v146 = v353;
              OS_dispatch_queue.sync<A>(execute:)();
              v353 = v146;
              v147 = aBlock;
              v388(v144, v397);
              v404 = [v147 state];
              v148 = [v147 lastUpdated];
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v149 = v398;
              (*v356)();
              v403 = [v147 error];

              v150 = [v147 commandIdentifier];
              if (v150)
              {
                v151 = v371;
                v152 = v150;
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                v153 = 0;
                v147 = v152;
                v154 = v151;
                v149 = v398;
              }

              else
              {
                v153 = 1;
                v154 = v371;
              }

              v184 = v154;
              v185 = v153;
LABEL_71:
              v72(v184, v185, 1, v397);
              sub_10002311C(v154, v399, &qword_1016980D0, &unk_10138F3B0);
              v87 = v149;
              goto LABEL_25;
            }

            v155 = v406;
            v156 = v407;
            sub_1000035D0(&v405, v406);
            v157 = (*(v156 + 88))(v155, v156);
            if (v157)
            {
              v158 = *(v358 + 280);
              v160 = v406;
              v159 = v407;
              sub_1000035D0(&v405, v406);
              v161 = v379;
              v162 = (*(*(*(v159 + 8) + 8) + 32))(v160);
              v330 = v327;
              __chkstk_darwin(v162);
              *&v327[-16] = v158;
              *&v327[-8] = v161;
              v163 = v368;
              v164 = v353;
              QueueSynchronizer.conditionalSync<A>(_:)();
              v353 = v164;
              v165 = v370;
              sub_1000D2AD8(v163, v370, &qword_1016980D0, &unk_10138F3B0);
              v166 = v397;
              v388(v161, v397);
              v167 = *v392;
              if ((*v392)(v165, 1, v166) == 1)
              {
                v330 = v34;
                v168 = v166;
                v170 = v406;
                v169 = v407;
                sub_1000035D0(&v405, v406);
                v171 = *(*(*(v169 + 8) + 8) + 32);
                v329 = v167;
                v172 = v366;
                v171(v170);
                v173 = v370;
                v174 = v168;
                v34 = v330;
                v175 = v329(v370, 1, v174);
                if (v175 != 1)
                {
                  v175 = sub_10000B3A8(v173, &qword_1016980D0, &unk_10138F3B0);
                }
              }

              else
              {
                v172 = v366;
                v175 = (*v347)(v366, v165, v166);
              }

              v330 = v327;
              __chkstk_darwin(v175);
              *&v327[-16] = v194;
              *&v327[-8] = v172;
              sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
              v195 = v353;
              OS_dispatch_queue.sync<A>(execute:)();
              v353 = v195;
              v196 = aBlock;
              v404 = [aBlock state];
              v197 = [v196 lastUpdated];
              v198 = v372;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              (*v356)(v398, v198, v34);
              v403 = [v196 error];

              v199 = [v196 commandIdentifier];
              if (v199)
              {
                v200 = v367;
                v201 = v199;
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                v202 = 0;
              }

              else
              {
                v202 = 1;
                v200 = v367;
              }

              v219 = v397;
              v388(v172, v397);
              v72(v200, v202, 1, v219);
              v220 = v200;
            }

            else
            {
              v330 = v327;
              v180 = v358;
              __chkstk_darwin(v157);
              *&v327[-16] = v180;
              *&v327[-8] = &v405;
              sub_1000BC4D4(&qword_1016A7848, &qword_1013B6710);
              v181 = v353;
              OS_dispatch_queue.sync<A>(execute:)();
              v182 = v401[0];
              if (LOBYTE(v401[0]) != 255)
              {
                v183 = aBlock;
                if ((v401[0] & 1) == 0)
                {
                  v329 = *(&aBlock + 1);
                  LODWORD(v330) = LOBYTE(v401[0]);
                  sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
                  OS_dispatch_queue.sync<A>(execute:)();
                  v353 = v181;
                  v225 = aBlock;
                  v404 = [aBlock state];
                  v226 = [v225 lastUpdated];
                  static Date._unconditionallyBridgeFromObjectiveC(_:)();

                  v149 = v398;
                  (*v356)();
                  v403 = [v225 error];

                  v227 = [v225 commandIdentifier];
                  if (v227)
                  {
                    v228 = v363;
                    v229 = v227;
                    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                    v328 = 0;
                    v225 = v229;
                    v154 = v228;
                    v149 = v398;
                  }

                  else
                  {
                    v328 = 1;
                    v154 = v363;
                  }

                  sub_10071EB9C(v183, v329, v330);
                  v184 = v154;
                  v185 = v328;
                  goto LABEL_71;
                }

                v353 = v181;
                if (aBlock)
                {
                  swift_errorRetain();
                  sub_10071EB9C(v183, *(&v183 + 1), v182);
                  v403 = v183;
                  v404 = 3;
                }

                else
                {
                  sub_10071EB9C(0, *(&aBlock + 1), v401[0]);
                  v403 = 0;
                  v404 = 2;
                }

                v246 = v399;
                sub_10000B3A8(v399, &qword_1016980D0, &unk_10138F3B0);
                v72(v246, 1, 1, v397);
                goto LABEL_24;
              }

              v329 = *(v180 + 280);
              v353 = v181;
              v204 = v406;
              v203 = v407;
              sub_1000035D0(&v405, v406);
              v205 = v379;
              v206 = (*(*(*(v203 + 8) + 8) + 32))(v204);
              v330 = v327;
              __chkstk_darwin(v206);
              *&v327[-16] = v207;
              *&v327[-8] = v205;
              v208 = v368;
              v209 = v353;
              QueueSynchronizer.conditionalSync<A>(_:)();
              v353 = v209;
              v210 = v365;
              sub_1000D2AD8(v208, v365, &qword_1016980D0, &unk_10138F3B0);
              v211 = v397;
              v388(v379, v397);
              v330 = *v392;
              if ((v330)(v210, 1, v211) == 1)
              {
                v212 = v34;
                v213 = v211;
                v215 = v406;
                v214 = v407;
                sub_1000035D0(&v405, v406);
                (*(*(*(v214 + 8) + 8) + 32))(v215);
                v216 = v365;
                v217 = v213;
                v34 = v212;
                v79 = v387;
                v218 = (v330)(v365, 1, v217);
                if (v218 != 1)
                {
                  v218 = sub_10000B3A8(v216, &qword_1016980D0, &unk_10138F3B0);
                }
              }

              else
              {
                v218 = (*v347)(v79, v210, v211);
              }

              v330 = v327;
              __chkstk_darwin(v218);
              *&v327[-16] = v230;
              *&v327[-8] = v79;
              sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
              v231 = v353;
              OS_dispatch_queue.sync<A>(execute:)();
              v232 = aBlock;
              v233 = sub_1006C22E8(&v405);
              v353 = v231;
              if (v233)
              {
                type metadata accessor for SPBeaconSharingError(0);
                *&v402 = 19;
                sub_100032898(_swiftEmptyArrayStorage);
                sub_100003E8C(&qword_101696340, type metadata accessor for SPBeaconSharingError, &unk_10138A4B4);
                _BridgedStoredNSError.init(_:userInfo:)();
                v330 = aBlock;
                v234 = 3;
              }

              else
              {
                v234 = [v232 state];
                v330 = 0;
              }

              v404 = v234;
              v235 = v232;
              v236 = [v232 lastUpdated];
              v237 = v372;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              (*v356)(v398, v237, v34);
              v238 = v330;
              if (!v330)
              {
                v238 = [v235 error];
              }

              v403 = v238;
              swift_errorRetain();

              v329 = v235;
              v239 = [v235 commandIdentifier];
              if (v239)
              {
                v240 = v364;
                v241 = v239;
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                v242 = 0;
              }

              else
              {
                v242 = 1;
                v240 = v364;
              }

              v245 = v397;
              v388(v79, v397);
              v72(v240, v242, 1, v245);
              v220 = v240;
            }

            goto LABEL_100;
          }

          v138 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v138)
          {
            goto LABEL_55;
          }

          v176 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v178 = v177;
          if (v176 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v178 == v179)
          {

LABEL_73:
            v187 = v358;
            v188 = *(v358 + v350);
            sub_10001F280(&v405, &v402);
            v189 = swift_allocObject();
            v189[2] = v187;
            sub_10000A748(&v402, (v189 + 3));
            v189[8] = &v404;
            v189[9] = &v403;
            v190 = v398;
            v189[10] = v399;
            v189[11] = v190;

            sub_1000BB27C(v384, v383);
            v191 = swift_allocObject();
            v384 = sub_10071EB44;
            *(v191 + 16) = sub_10071EB44;
            *(v191 + 24) = v189;
            v401[2] = sub_1000D2FB0;
            v401[3] = v191;
            *&aBlock = _NSConcreteStackBlock;
            *(&aBlock + 1) = 1107296256;
            v401[0] = sub_10013FE14;
            v401[1] = &unk_10162E338;
            v192 = _Block_copy(&aBlock);

            dispatch_sync(v188, v192);
            _Block_release(v192);
            LOBYTE(v187) = swift_isEscapingClosureAtFileLocation();

            if (v187)
            {
              __break(1u);
              return result;
            }

            v383 = v189;
            goto LABEL_24;
          }

          v186 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v186)
          {
            goto LABEL_73;
          }

          v221 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v223 = v222;
          if (v221 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v223 == v224)
          {
LABEL_85:

            goto LABEL_97;
          }

          v243 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v243)
          {
            goto LABEL_97;
          }

          v247 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v249 = v248;
          if (v247 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v249 == v250)
          {
            goto LABEL_85;
          }

          v251 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v251)
          {
LABEL_97:
            sub_10001F280(&v405, &aBlock);
            v244 = swift_allocObject();
            *(v244 + 16) = v358;
            sub_10000A748(&aBlock, v244 + 24);
            type metadata accessor for BeaconTaskState(0);

            unsafeFromAsyncTask<A>(_:)();

            v84 = aBlock;
            goto LABEL_23;
          }

          v252 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v254 = v253;
          if (v252 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v254 != v255)
          {
            v256 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v256)
            {
              goto LABEL_53;
            }

            v257 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v259 = v258;
            if (v257 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v259 != v260)
            {
              v261 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v261)
              {
                goto LABEL_53;
              }

              v262 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v264 = v263;
              if (v262 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v264 != v265)
              {
                v266 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v266)
                {
                  goto LABEL_53;
                }

                v267 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v269 = v268;
                if (v267 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v269 != v270)
                {
                  v271 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v271)
                  {
                    goto LABEL_53;
                  }

                  v272 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v274 = v273;
                  if (v272 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v274 != v275)
                  {
                    v276 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v276)
                    {
                      goto LABEL_53;
                    }

                    v277 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v279 = v278;
                    if (v277 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v279 == v280)
                    {
LABEL_126:

                      goto LABEL_131;
                    }

                    v281 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v281)
                    {
                      goto LABEL_131;
                    }

                    v282 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v284 = v283;
                    if (v282 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v284 == v285)
                    {
                      goto LABEL_126;
                    }

                    v286 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v286)
                    {
LABEL_131:
                      v404 = 2;
                      if ((sub_1006C22E8(&v405) & 1) == 0)
                      {
                        goto LABEL_24;
                      }

                      type metadata accessor for SPBeaconSharingError(0);
                      *&v402 = 19;
                      sub_100032898(_swiftEmptyArrayStorage);
                      sub_100003E8C(&qword_101696340, type metadata accessor for SPBeaconSharingError, &unk_10138A4B4);
                      _BridgedStoredNSError.init(_:userInfo:)();
                      v403 = aBlock;

                      v84 = 3;
                      goto LABEL_23;
                    }

                    v287 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v289 = v288;
                    if (v287 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v289 == v290)
                    {

LABEL_137:
                      if (!*(v358 + 176))
                      {
                        goto LABEL_24;
                      }

                      v292 = *(v358 + 176);
                      v293 = v407;
                      v330 = v406;
                      sub_1000035D0(&v405, v406);
                      v294 = *(*(v293 + 8) + 8);
                      v329 = *(v294 + 32);

                      v295 = (v329)(v330, v294);
                      v330 = v327;
                      __chkstk_darwin(v295);
                      v296 = v379;
                      *&v327[-16] = v292;
                      *&v327[-8] = v296;
                      sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
                      v297 = v353;
                      OS_dispatch_queue.sync<A>(execute:)();
                      v353 = v297;

                      v298 = aBlock;
                      v388(v296, v397);
                      v404 = [v298 state];
                      v299 = [v298 lastUpdated];
                      v300 = v372;
                      static Date._unconditionallyBridgeFromObjectiveC(_:)();

                      (*v356)(v398, v300, v34);
                      v403 = [v298 error];

                      v301 = [v298 commandIdentifier];
                      if (v301)
                      {
                        v302 = v301;
                        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                        v303 = 0;
                        v298 = v302;
                      }

                      else
                      {
                        v303 = 1;
                      }

                      v308 = v359;
                      v72(v359, v303, 1, v397);
                      v220 = v308;
LABEL_100:
                      sub_10002311C(v220, v399, &qword_1016980D0, &unk_10138F3B0);
                      goto LABEL_24;
                    }

                    v291 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v291)
                    {
                      goto LABEL_137;
                    }

                    v304 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v306 = v305;
                    if (v304 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v306 == v307)
                    {

LABEL_146:
                      v311 = v406;
                      v310 = v407;
                      sub_1000035D0(&v405, v406);
                      v312 = v379;
                      (*(*(*(v310 + 8) + 8) + 32))(v311);
                      v313 = v362;
                      sub_10003A604(v362);
                      v388(v312, v397);
                      if ((*v337)(v313, 1, found) != 1)
                      {
                        v314 = v360;
                        sub_10002AB74(v362, v360, type metadata accessor for NotifyWhenFoundRecord);
                        v315 = v368;
                        v316 = v397;
                        (*v336)(v368, &v314[*(found + 20)], v397);
                        sub_100721D04(v314, type metadata accessor for NotifyWhenFoundRecord);
                        v72(v315, 0, 1, v316);
                        sub_10002311C(v315, v399, &qword_1016980D0, &unk_10138F3B0);
                        v404 = 0;
                        goto LABEL_24;
                      }

                      sub_10000B3A8(v362, &qword_10169E328, &unk_10139D740);
                      goto LABEL_53;
                    }

                    v309 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v309)
                    {
                      goto LABEL_146;
                    }

                    v317 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v319 = v318;
                    if (v317 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v319 != v320)
                    {
                      v321 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if ((v321 & 1) == 0)
                      {
                        v322 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v324 = v323;
                        if (v322 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v324 == v325)
                        {
                        }

                        else
                        {
                          v326 = _stringCompareWithSmolCheck(_:_:expecting:)();

                          if ((v326 & 1) == 0)
                          {
                            goto LABEL_24;
                          }
                        }

                        v86 = &v370;
                        goto LABEL_22;
                      }

                      goto LABEL_53;
                    }
                  }
                }
              }
            }
          }

          goto LABEL_53;
        }
      }

      v108 = v358;
      v110 = v406;
      v109 = v407;
      sub_1000035D0(&v405, v406);
      v111 = v379;
      (*(*(*(v109 + 8) + 8) + 32))(v110);
      v112 = v376;
      sub_100ABD87C(v376);
      v388(v111, v397);
      v113 = type metadata accessor for LostModeRecord(0);
      LODWORD(v109) = (*(*(v113 - 8) + 48))(v112, 1, v113) == 1;
      sub_10000B3A8(v112, &unk_1016A99E0, &qword_1013A07B0);
      v404 = 2 * v109;
      sub_10001F280(&v405, &aBlock);
      v114 = swift_allocObject();
      *(v114 + 16) = v108;
      sub_10000A748(&aBlock, v114 + 24);

      v115 = v377;
      unsafeFromAsyncTask<A>(_:)();

      v116 = sub_1000BC4D4(&qword_1016A7850, &qword_1013B6728);
      if ((*(*(v116 - 8) + 48))(v115, 1, v116) != 1)
      {
        v117 = *(v115 + *(v116 + 48));
        v118 = v375;
        (*v355)(v375, v115, v34);
        v119 = v398;
        (*v356)(v398, v118, v34);
        v87 = v119;
        v404 = v117;
        goto LABEL_25;
      }

      sub_10000B3A8(v115, &qword_1016A7840, &qword_1013B66F8);
LABEL_24:
      v87 = v398;
LABEL_25:
      (*v390)(v396, v87, v34);
      v89 = v403;
      v88 = v404;
      v90 = v71;
      swift_errorRetain();
      v91.super.isa = Date._bridgeToObjectiveC()().super.isa;
      if (v89)
      {
        v92 = _convertErrorToNSError(_:)();
      }

      else
      {
        v92 = 0;
      }

      v93 = [objc_allocWithZone(SPBeaconTaskInformation) initWithName:v90 lastUpdated:v91.super.isa error:v92 state:v88];

      v94 = *v395;
      v95 = v34;
      (*v395)(v396, v34);
      v96 = v394;
      sub_1000D2A70(v399, v394, &qword_1016980D0, &unk_10138F3B0);
      v97 = v397;
      if ((*v392)(v96, 1, v397) == 1)
      {
        v68.super.isa = 0;
      }

      else
      {
        v68.super.isa = UUID._bridgeToObjectiveC()().super.isa;
        v388(v96, v97);
      }

      [v93 setCommandIdentifier:v68.super.isa];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&aBlock = v66;
      sub_100FFF5A8(v93, v90, isUniquelyReferenced_nonNull_native);

      v66 = aBlock;
      v67 = v399;
      sub_10000B3A8(v399, &qword_1016980D0, &unk_10138F3B0);

      v34 = v95;
      v94(v398, v95);
      ++v63;
      if (!--v62)
      {
        goto LABEL_158;
      }
    }
  }

  v384 = 0;
  v383 = 0;
  v66 = _swiftEmptyDictionarySingleton;
LABEL_158:

  sub_1000BB27C(v384, v383);
  sub_100007BAC(&v405);
  return v66;
}

void *sub_1006F2DA0(uint64_t a1, int a2, uint64_t a3)
{
  LODWORD(v391) = a2;
  v5 = sub_1000BC4D4(&qword_10169E328, &unk_10139D740);
  __chkstk_darwin(v5 - 8);
  v362 = &v327[-v6];
  found = type metadata accessor for NotifyWhenFoundRecord(0);
  v395 = *(found - 8);
  __chkstk_darwin(found);
  v360 = &v327[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v378 = sub_1000BC4D4(&qword_1016A7840, &qword_1013B66F8);
  v8 = __chkstk_darwin(v378);
  v373 = &v327[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v377 = &v327[-v10];
  v11 = sub_1000BC4D4(&unk_1016A99E0, &qword_1013A07B0);
  v12 = __chkstk_darwin(v11 - 8);
  v374 = &v327[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v376 = &v327[-v14];
  v369 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v15 = __chkstk_darwin(v369);
  v359 = &v327[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v15);
  v364 = &v327[-v18];
  v19 = __chkstk_darwin(v17);
  v363 = &v327[-v20];
  v21 = __chkstk_darwin(v19);
  v365 = &v327[-v22];
  v23 = __chkstk_darwin(v21);
  v367 = &v327[-v24];
  v25 = __chkstk_darwin(v23);
  v368 = &v327[-v26];
  v27 = __chkstk_darwin(v25);
  v370 = &v327[-v28];
  v29 = __chkstk_darwin(v27);
  v371 = &v327[-v30];
  v31 = __chkstk_darwin(v29);
  v394 = &v327[-v32];
  __chkstk_darwin(v31);
  v399 = &v327[-v33];
  v34 = type metadata accessor for Date();
  v35 = *(v34 - 8);
  v36 = __chkstk_darwin(v34);
  v372 = &v327[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = __chkstk_darwin(v36);
  v375 = &v327[-v39];
  v40 = __chkstk_darwin(v38);
  v396 = &v327[-v41];
  __chkstk_darwin(v40);
  v398 = &v327[-v42];
  v43 = type metadata accessor for UUID();
  v44 = *(v43 - 8);
  v45 = __chkstk_darwin(v43);
  v387 = &v327[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v47 = __chkstk_darwin(v45);
  v366 = &v327[-v48];
  __chkstk_darwin(v47);
  v50 = &v327[-v49];
  v51 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v51 - 8);
  v53 = &v327[-v52];
  v406 = type metadata accessor for OwnedBeaconRecord(0);
  v407 = sub_100003E8C(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord, &unk_1013E7DBC);
  v54 = sub_1000280DC(&v405);
  sub_100721C9C(a1, v54, type metadata accessor for OwnedBeaconRecord);
  v56 = v406;
  v55 = v407;
  sub_1000035D0(&v405, v406);
  v57 = v56;
  v58 = v391;
  (*(*(*(v55 + 8) + 8) + 32))(v57);
  sub_100A423AC(v50, v53);
  v59 = *(v44 + 8);
  v379 = v50;
  v397 = v43;
  v389 = v44 + 8;
  v388 = v59;
  v59(v50, v43);
  v60 = (*(v35 + 48))(v53, 1, v34);
  sub_10000B3A8(v53, &unk_101696900, &unk_10138B1E0);
  v61 = sub_1006C1A0C(&v405, v58);
  v62 = v61[2];
  v382 = v61;
  if (v62)
  {
    v358 = a3;
    v384 = 0;
    v383 = 0;
    v353 = 0;
    v393 = (v44 + 56);
    v338 = 2 * (v60 == 1);
    v337 = (v395 + 6);
    v336 = (v44 + 16);
    v356 = (v35 + 40);
    v392 = (v44 + 48);
    v347 = (v44 + 32);
    v395 = (v35 + 8);
    v355 = (v35 + 32);
    v390 = (v35 + 16);
    v350 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_playbackCoordinatorModQueue;
    v351 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_soundPlaybackManager;
    v391 = SPBeaconTaskNameUnknown;
    v386 = SPBeaconTaskNameStartSharing;
    v381 = SPBeaconTaskNameStopSharing;
    v357 = SPBeaconTaskNameEnableLostMode;
    v354 = SPBeaconTaskNameDisableLostMode;
    v352 = SPBeaconTaskNamePlaySound;
    v349 = SPBeaconTaskNameStopSound;
    v346 = SPBeaconTaskNameBeginLeashing;
    v345 = SPBeaconTaskNameEndLeashing;
    v344 = SPBeaconTaskNameBeginBTFinding;
    v343 = SPBeaconTaskNameEndBTFinding;
    v342 = SPBeaconTaskNameConnect;
    v341 = SPBeaconTaskNameDisconnect;
    v340 = SPBeaconTaskNameRename;
    v339 = SPBeaconTaskNameBeginRanging;
    v335 = SPBeaconTaskNameEndRanging;
    v334 = SPBeaconTaskNameAccessoryFirmwareUpdate;
    v333 = SPBeaconTaskNameEnableNotifyWhenFound;
    v332 = SPBeaconTaskNameDisableNotifyWhenFound;
    v331 = SPBeaconTaskNameLocating;
    v63 = (v61 + 4);
    v348 = v401;
    v64 = 2;
    if (v58)
    {
      v65 = 2;
    }

    else
    {
      v65 = 0;
    }

    v380 = v65;
    if (v58)
    {
      v64 = 0;
    }

    v385 = v64;
    v66 = _swiftEmptyDictionarySingleton;
    v67 = v399;
    while (1)
    {
      v70 = *v63;
      v404 = 2;
      v71 = v70;
      Date.init()();
      v403 = 0;
      v72 = *v393;
      (*v393)(v67, 1, 1, v397);
      v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v75 = v74;
      if (v73 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v75 == v76)
      {

LABEL_19:
        v84 = -1;
        goto LABEL_23;
      }

      v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v79 = v387;
      if (v78)
      {
        goto LABEL_19;
      }

      v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v82 = v81;
      if (v80 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v82 == v83)
      {

LABEL_21:
        v86 = &v406;
LABEL_22:
        v84 = *(v86 - 32);
LABEL_23:
        v404 = v84;
        goto LABEL_24;
      }

      v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v85)
      {
        goto LABEL_21;
      }

      v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v100 = v99;
      if (v98 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v100 == v101)
      {

        v86 = &v403;
        goto LABEL_22;
      }

      v102 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v102)
      {
        v86 = &v403;
        goto LABEL_22;
      }

      v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v105 = v104;
      if (v103 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v105 == v106)
      {
      }

      else
      {
        v107 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v107 & 1) == 0)
        {
          v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v122 = v121;
          if (v120 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v122 == v123)
          {

LABEL_46:
            v125 = v358;
            v127 = v406;
            v126 = v407;
            sub_1000035D0(&v405, v406);
            v128 = v379;
            (*(*(*(v126 + 8) + 8) + 32))(v127);
            v129 = v374;
            sub_100ABD87C(v374);
            v388(v128, v397);
            v130 = type metadata accessor for LostModeRecord(0);
            LODWORD(v126) = (*(*(v130 - 8) + 48))(v129, 1, v130);
            sub_10000B3A8(v129, &unk_1016A99E0, &qword_1013A07B0);
            if (v126 == 1)
            {
              sub_10001F280(&v405, &aBlock);
              v131 = swift_allocObject();
              *(v131 + 16) = v125;
              sub_10000A748(&aBlock, v131 + 24);

              v132 = v373;
              unsafeFromAsyncTask<A>(_:)();

              v133 = sub_1000BC4D4(&qword_1016A7850, &qword_1013B6728);
              if ((*(*(v133 - 8) + 48))(v132, 1, v133) == 1)
              {
                sub_10000B3A8(v132, &qword_1016A7840, &qword_1013B66F8);
                v404 = 0;
                goto LABEL_24;
              }

              (*v395)(v132, v34);
            }

LABEL_53:
            v84 = 2;
            goto LABEL_23;
          }

          v124 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v124)
          {
            goto LABEL_46;
          }

          v134 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v136 = v135;
          if (v134 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v136 == v137)
          {

LABEL_55:
            v139 = v406;
            v140 = v407;
            sub_1000035D0(&v405, v406);
            if ((*(v140 + 152))(v139, v140))
            {
              v141 = *(v358 + v351);
              v143 = v406;
              v142 = v407;
              sub_1000035D0(&v405, v406);
              v144 = v379;
              v145 = (*(*(*(v142 + 8) + 8) + 32))(v143);
              v330 = v327;
              __chkstk_darwin(v145);
              *&v327[-16] = v141;
              *&v327[-8] = v144;
              sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
              v146 = v353;
              OS_dispatch_queue.sync<A>(execute:)();
              v353 = v146;
              v147 = aBlock;
              v388(v144, v397);
              v404 = [v147 state];
              v148 = [v147 lastUpdated];
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v149 = v398;
              (*v356)();
              v403 = [v147 error];

              v150 = [v147 commandIdentifier];
              if (v150)
              {
                v151 = v371;
                v152 = v150;
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                v153 = 0;
                v147 = v152;
                v154 = v151;
                v149 = v398;
              }

              else
              {
                v153 = 1;
                v154 = v371;
              }

              v184 = v154;
              v185 = v153;
LABEL_71:
              v72(v184, v185, 1, v397);
              sub_10002311C(v154, v399, &qword_1016980D0, &unk_10138F3B0);
              v87 = v149;
              goto LABEL_25;
            }

            v155 = v406;
            v156 = v407;
            sub_1000035D0(&v405, v406);
            v157 = (*(v156 + 88))(v155, v156);
            if (v157)
            {
              v158 = *(v358 + 280);
              v160 = v406;
              v159 = v407;
              sub_1000035D0(&v405, v406);
              v161 = v379;
              v162 = (*(*(*(v159 + 8) + 8) + 32))(v160);
              v330 = v327;
              __chkstk_darwin(v162);
              *&v327[-16] = v158;
              *&v327[-8] = v161;
              v163 = v368;
              v164 = v353;
              QueueSynchronizer.conditionalSync<A>(_:)();
              v353 = v164;
              v165 = v370;
              sub_1000D2AD8(v163, v370, &qword_1016980D0, &unk_10138F3B0);
              v166 = v397;
              v388(v161, v397);
              v167 = *v392;
              if ((*v392)(v165, 1, v166) == 1)
              {
                v330 = v34;
                v168 = v166;
                v170 = v406;
                v169 = v407;
                sub_1000035D0(&v405, v406);
                v171 = *(*(*(v169 + 8) + 8) + 32);
                v329 = v167;
                v172 = v366;
                v171(v170);
                v173 = v370;
                v174 = v168;
                v34 = v330;
                v175 = v329(v370, 1, v174);
                if (v175 != 1)
                {
                  v175 = sub_10000B3A8(v173, &qword_1016980D0, &unk_10138F3B0);
                }
              }

              else
              {
                v172 = v366;
                v175 = (*v347)(v366, v165, v166);
              }

              v330 = v327;
              __chkstk_darwin(v175);
              *&v327[-16] = v194;
              *&v327[-8] = v172;
              sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
              v195 = v353;
              OS_dispatch_queue.sync<A>(execute:)();
              v353 = v195;
              v196 = aBlock;
              v404 = [aBlock state];
              v197 = [v196 lastUpdated];
              v198 = v372;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              (*v356)(v398, v198, v34);
              v403 = [v196 error];

              v199 = [v196 commandIdentifier];
              if (v199)
              {
                v200 = v367;
                v201 = v199;
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                v202 = 0;
              }

              else
              {
                v202 = 1;
                v200 = v367;
              }

              v219 = v397;
              v388(v172, v397);
              v72(v200, v202, 1, v219);
              v220 = v200;
            }

            else
            {
              v330 = v327;
              v180 = v358;
              __chkstk_darwin(v157);
              *&v327[-16] = v180;
              *&v327[-8] = &v405;
              sub_1000BC4D4(&qword_1016A7848, &qword_1013B6710);
              v181 = v353;
              OS_dispatch_queue.sync<A>(execute:)();
              v182 = v401[0];
              if (LOBYTE(v401[0]) != 255)
              {
                v183 = aBlock;
                if ((v401[0] & 1) == 0)
                {
                  v329 = *(&aBlock + 1);
                  LODWORD(v330) = LOBYTE(v401[0]);
                  sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
                  OS_dispatch_queue.sync<A>(execute:)();
                  v353 = v181;
                  v225 = aBlock;
                  v404 = [aBlock state];
                  v226 = [v225 lastUpdated];
                  static Date._unconditionallyBridgeFromObjectiveC(_:)();

                  v149 = v398;
                  (*v356)();
                  v403 = [v225 error];

                  v227 = [v225 commandIdentifier];
                  if (v227)
                  {
                    v228 = v363;
                    v229 = v227;
                    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                    v328 = 0;
                    v225 = v229;
                    v154 = v228;
                    v149 = v398;
                  }

                  else
                  {
                    v328 = 1;
                    v154 = v363;
                  }

                  sub_10071EB9C(v183, v329, v330);
                  v184 = v154;
                  v185 = v328;
                  goto LABEL_71;
                }

                v353 = v181;
                if (aBlock)
                {
                  swift_errorRetain();
                  sub_10071EB9C(v183, *(&v183 + 1), v182);
                  v403 = v183;
                  v404 = 3;
                }

                else
                {
                  sub_10071EB9C(0, *(&aBlock + 1), v401[0]);
                  v403 = 0;
                  v404 = 2;
                }

                v246 = v399;
                sub_10000B3A8(v399, &qword_1016980D0, &unk_10138F3B0);
                v72(v246, 1, 1, v397);
                goto LABEL_24;
              }

              v329 = *(v180 + 280);
              v353 = v181;
              v204 = v406;
              v203 = v407;
              sub_1000035D0(&v405, v406);
              v205 = v379;
              v206 = (*(*(*(v203 + 8) + 8) + 32))(v204);
              v330 = v327;
              __chkstk_darwin(v206);
              *&v327[-16] = v207;
              *&v327[-8] = v205;
              v208 = v368;
              v209 = v353;
              QueueSynchronizer.conditionalSync<A>(_:)();
              v353 = v209;
              v210 = v365;
              sub_1000D2AD8(v208, v365, &qword_1016980D0, &unk_10138F3B0);
              v211 = v397;
              v388(v379, v397);
              v330 = *v392;
              if ((v330)(v210, 1, v211) == 1)
              {
                v212 = v34;
                v213 = v211;
                v215 = v406;
                v214 = v407;
                sub_1000035D0(&v405, v406);
                (*(*(*(v214 + 8) + 8) + 32))(v215);
                v216 = v365;
                v217 = v213;
                v34 = v212;
                v79 = v387;
                v218 = (v330)(v365, 1, v217);
                if (v218 != 1)
                {
                  v218 = sub_10000B3A8(v216, &qword_1016980D0, &unk_10138F3B0);
                }
              }

              else
              {
                v218 = (*v347)(v79, v210, v211);
              }

              v330 = v327;
              __chkstk_darwin(v218);
              *&v327[-16] = v230;
              *&v327[-8] = v79;
              sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
              v231 = v353;
              OS_dispatch_queue.sync<A>(execute:)();
              v232 = aBlock;
              v233 = sub_1006C22E8(&v405);
              v353 = v231;
              if (v233)
              {
                type metadata accessor for SPBeaconSharingError(0);
                *&v402 = 19;
                sub_100032898(_swiftEmptyArrayStorage);
                sub_100003E8C(&qword_101696340, type metadata accessor for SPBeaconSharingError, &unk_10138A4B4);
                _BridgedStoredNSError.init(_:userInfo:)();
                v330 = aBlock;
                v234 = 3;
              }

              else
              {
                v234 = [v232 state];
                v330 = 0;
              }

              v404 = v234;
              v235 = v232;
              v236 = [v232 lastUpdated];
              v237 = v372;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              (*v356)(v398, v237, v34);
              v238 = v330;
              if (!v330)
              {
                v238 = [v235 error];
              }

              v403 = v238;
              swift_errorRetain();

              v329 = v235;
              v239 = [v235 commandIdentifier];
              if (v239)
              {
                v240 = v364;
                v241 = v239;
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                v242 = 0;
              }

              else
              {
                v242 = 1;
                v240 = v364;
              }

              v245 = v397;
              v388(v79, v397);
              v72(v240, v242, 1, v245);
              v220 = v240;
            }

            goto LABEL_100;
          }

          v138 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v138)
          {
            goto LABEL_55;
          }

          v176 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v178 = v177;
          if (v176 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v178 == v179)
          {

LABEL_73:
            v187 = v358;
            v188 = *(v358 + v350);
            sub_10001F280(&v405, &v402);
            v189 = swift_allocObject();
            v189[2] = v187;
            sub_10000A748(&v402, (v189 + 3));
            v189[8] = &v404;
            v189[9] = &v403;
            v190 = v398;
            v189[10] = v399;
            v189[11] = v190;

            sub_1000BB27C(v384, v383);
            v191 = swift_allocObject();
            v384 = sub_100721E68;
            *(v191 + 16) = sub_100721E68;
            *(v191 + 24) = v189;
            v401[2] = sub_10040B9F8;
            v401[3] = v191;
            *&aBlock = _NSConcreteStackBlock;
            *(&aBlock + 1) = 1107296256;
            v401[0] = sub_10013FE14;
            v401[1] = &unk_10162E478;
            v192 = _Block_copy(&aBlock);

            dispatch_sync(v188, v192);
            _Block_release(v192);
            LOBYTE(v187) = swift_isEscapingClosureAtFileLocation();

            if (v187)
            {
              __break(1u);
              return result;
            }

            v383 = v189;
            goto LABEL_24;
          }

          v186 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v186)
          {
            goto LABEL_73;
          }

          v221 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v223 = v222;
          if (v221 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v223 == v224)
          {
LABEL_85:

            goto LABEL_97;
          }

          v243 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v243)
          {
            goto LABEL_97;
          }

          v247 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v249 = v248;
          if (v247 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v249 == v250)
          {
            goto LABEL_85;
          }

          v251 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v251)
          {
LABEL_97:
            sub_10001F280(&v405, &aBlock);
            v244 = swift_allocObject();
            *(v244 + 16) = v358;
            sub_10000A748(&aBlock, v244 + 24);
            type metadata accessor for BeaconTaskState(0);

            unsafeFromAsyncTask<A>(_:)();

            v84 = aBlock;
            goto LABEL_23;
          }

          v252 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v254 = v253;
          if (v252 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v254 != v255)
          {
            v256 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v256)
            {
              goto LABEL_53;
            }

            v257 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v259 = v258;
            if (v257 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v259 != v260)
            {
              v261 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v261)
              {
                goto LABEL_53;
              }

              v262 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v264 = v263;
              if (v262 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v264 != v265)
              {
                v266 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v266)
                {
                  goto LABEL_53;
                }

                v267 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v269 = v268;
                if (v267 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v269 != v270)
                {
                  v271 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v271)
                  {
                    goto LABEL_53;
                  }

                  v272 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v274 = v273;
                  if (v272 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v274 != v275)
                  {
                    v276 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v276)
                    {
                      goto LABEL_53;
                    }

                    v277 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v279 = v278;
                    if (v277 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v279 == v280)
                    {
LABEL_126:

                      goto LABEL_131;
                    }

                    v281 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v281)
                    {
                      goto LABEL_131;
                    }

                    v282 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v284 = v283;
                    if (v282 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v284 == v285)
                    {
                      goto LABEL_126;
                    }

                    v286 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v286)
                    {
LABEL_131:
                      v404 = 2;
                      if ((sub_1006C22E8(&v405) & 1) == 0)
                      {
                        goto LABEL_24;
                      }

                      type metadata accessor for SPBeaconSharingError(0);
                      *&v402 = 19;
                      sub_100032898(_swiftEmptyArrayStorage);
                      sub_100003E8C(&qword_101696340, type metadata accessor for SPBeaconSharingError, &unk_10138A4B4);
                      _BridgedStoredNSError.init(_:userInfo:)();
                      v403 = aBlock;

                      v84 = 3;
                      goto LABEL_23;
                    }

                    v287 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v289 = v288;
                    if (v287 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v289 == v290)
                    {

LABEL_137:
                      if (!*(v358 + 176))
                      {
                        goto LABEL_24;
                      }

                      v292 = *(v358 + 176);
                      v293 = v407;
                      v330 = v406;
                      sub_1000035D0(&v405, v406);
                      v294 = *(*(v293 + 8) + 8);
                      v329 = *(v294 + 32);

                      v295 = (v329)(v330, v294);
                      v330 = v327;
                      __chkstk_darwin(v295);
                      v296 = v379;
                      *&v327[-16] = v292;
                      *&v327[-8] = v296;
                      sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
                      v297 = v353;
                      OS_dispatch_queue.sync<A>(execute:)();
                      v353 = v297;

                      v298 = aBlock;
                      v388(v296, v397);
                      v404 = [v298 state];
                      v299 = [v298 lastUpdated];
                      v300 = v372;
                      static Date._unconditionallyBridgeFromObjectiveC(_:)();

                      (*v356)(v398, v300, v34);
                      v403 = [v298 error];

                      v301 = [v298 commandIdentifier];
                      if (v301)
                      {
                        v302 = v301;
                        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                        v303 = 0;
                        v298 = v302;
                      }

                      else
                      {
                        v303 = 1;
                      }

                      v308 = v359;
                      v72(v359, v303, 1, v397);
                      v220 = v308;
LABEL_100:
                      sub_10002311C(v220, v399, &qword_1016980D0, &unk_10138F3B0);
                      goto LABEL_24;
                    }

                    v291 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v291)
                    {
                      goto LABEL_137;
                    }

                    v304 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v306 = v305;
                    if (v304 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v306 == v307)
                    {

LABEL_146:
                      v311 = v406;
                      v310 = v407;
                      sub_1000035D0(&v405, v406);
                      v312 = v379;
                      (*(*(*(v310 + 8) + 8) + 32))(v311);
                      v313 = v362;
                      sub_10003A604(v362);
                      v388(v312, v397);
                      if ((*v337)(v313, 1, found) != 1)
                      {
                        v314 = v360;
                        sub_10002AB74(v362, v360, type metadata accessor for NotifyWhenFoundRecord);
                        v315 = v368;
                        v316 = v397;
                        (*v336)(v368, &v314[*(found + 20)], v397);
                        sub_100721D04(v314, type metadata accessor for NotifyWhenFoundRecord);
                        v72(v315, 0, 1, v316);
                        sub_10002311C(v315, v399, &qword_1016980D0, &unk_10138F3B0);
                        v404 = 0;
                        goto LABEL_24;
                      }

                      sub_10000B3A8(v362, &qword_10169E328, &unk_10139D740);
                      goto LABEL_53;
                    }

                    v309 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v309)
                    {
                      goto LABEL_146;
                    }

                    v317 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v319 = v318;
                    if (v317 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v319 != v320)
                    {
                      v321 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if ((v321 & 1) == 0)
                      {
                        v322 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v324 = v323;
                        if (v322 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v324 == v325)
                        {
                        }

                        else
                        {
                          v326 = _stringCompareWithSmolCheck(_:_:expecting:)();

                          if ((v326 & 1) == 0)
                          {
                            goto LABEL_24;
                          }
                        }

                        v86 = &v370;
                        goto LABEL_22;
                      }

                      goto LABEL_53;
                    }
                  }
                }
              }
            }
          }

          goto LABEL_53;
        }
      }

      v108 = v358;
      v110 = v406;
      v109 = v407;
      sub_1000035D0(&v405, v406);
      v111 = v379;
      (*(*(*(v109 + 8) + 8) + 32))(v110);
      v112 = v376;
      sub_100ABD87C(v376);
      v388(v111, v397);
      v113 = type metadata accessor for LostModeRecord(0);
      LODWORD(v109) = (*(*(v113 - 8) + 48))(v112, 1, v113) == 1;
      sub_10000B3A8(v112, &unk_1016A99E0, &qword_1013A07B0);
      v404 = 2 * v109;
      sub_10001F280(&v405, &aBlock);
      v114 = swift_allocObject();
      *(v114 + 16) = v108;
      sub_10000A748(&aBlock, v114 + 24);

      v115 = v377;
      unsafeFromAsyncTask<A>(_:)();

      v116 = sub_1000BC4D4(&qword_1016A7850, &qword_1013B6728);
      if ((*(*(v116 - 8) + 48))(v115, 1, v116) != 1)
      {
        v117 = *(v115 + *(v116 + 48));
        v118 = v375;
        (*v355)(v375, v115, v34);
        v119 = v398;
        (*v356)(v398, v118, v34);
        v87 = v119;
        v404 = v117;
        goto LABEL_25;
      }

      sub_10000B3A8(v115, &qword_1016A7840, &qword_1013B66F8);
LABEL_24:
      v87 = v398;
LABEL_25:
      (*v390)(v396, v87, v34);
      v89 = v403;
      v88 = v404;
      v90 = v71;
      swift_errorRetain();
      v91.super.isa = Date._bridgeToObjectiveC()().super.isa;
      if (v89)
      {
        v92 = _convertErrorToNSError(_:)();
      }

      else
      {
        v92 = 0;
      }

      v93 = [objc_allocWithZone(SPBeaconTaskInformation) initWithName:v90 lastUpdated:v91.super.isa error:v92 state:v88];

      v94 = *v395;
      v95 = v34;
      (*v395)(v396, v34);
      v96 = v394;
      sub_1000D2A70(v399, v394, &qword_1016980D0, &unk_10138F3B0);
      v97 = v397;
      if ((*v392)(v96, 1, v397) == 1)
      {
        v68.super.isa = 0;
      }

      else
      {
        v68.super.isa = UUID._bridgeToObjectiveC()().super.isa;
        v388(v96, v97);
      }

      [v93 setCommandIdentifier:v68.super.isa];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&aBlock = v66;
      sub_100FFF5A8(v93, v90, isUniquelyReferenced_nonNull_native);

      v66 = aBlock;
      v67 = v399;
      sub_10000B3A8(v399, &qword_1016980D0, &unk_10138F3B0);

      v34 = v95;
      v94(v398, v95);
      ++v63;
      if (!--v62)
      {
        goto LABEL_158;
      }
    }
  }

  v384 = 0;
  v383 = 0;
  v66 = _swiftEmptyDictionarySingleton;
LABEL_158:

  sub_1000BB27C(v384, v383);
  sub_100007BAC(&v405);
  return v66;
}

void *sub_1006F5C7C(uint64_t a1, int a2, uint64_t a3)
{
  LODWORD(v391) = a2;
  v5 = sub_1000BC4D4(&qword_10169E328, &unk_10139D740);
  __chkstk_darwin(v5 - 8);
  v362 = &v327[-v6];
  found = type metadata accessor for NotifyWhenFoundRecord(0);
  v395 = *(found - 8);
  __chkstk_darwin(found);
  v360 = &v327[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v378 = sub_1000BC4D4(&qword_1016A7840, &qword_1013B66F8);
  v8 = __chkstk_darwin(v378);
  v373 = &v327[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v377 = &v327[-v10];
  v11 = sub_1000BC4D4(&unk_1016A99E0, &qword_1013A07B0);
  v12 = __chkstk_darwin(v11 - 8);
  v374 = &v327[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v376 = &v327[-v14];
  v369 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v15 = __chkstk_darwin(v369);
  v359 = &v327[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v15);
  v364 = &v327[-v18];
  v19 = __chkstk_darwin(v17);
  v363 = &v327[-v20];
  v21 = __chkstk_darwin(v19);
  v365 = &v327[-v22];
  v23 = __chkstk_darwin(v21);
  v367 = &v327[-v24];
  v25 = __chkstk_darwin(v23);
  v368 = &v327[-v26];
  v27 = __chkstk_darwin(v25);
  v370 = &v327[-v28];
  v29 = __chkstk_darwin(v27);
  v371 = &v327[-v30];
  v31 = __chkstk_darwin(v29);
  v394 = &v327[-v32];
  __chkstk_darwin(v31);
  v399 = &v327[-v33];
  v34 = type metadata accessor for Date();
  v35 = *(v34 - 8);
  v36 = __chkstk_darwin(v34);
  v372 = &v327[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = __chkstk_darwin(v36);
  v375 = &v327[-v39];
  v40 = __chkstk_darwin(v38);
  v396 = &v327[-v41];
  __chkstk_darwin(v40);
  v398 = &v327[-v42];
  v43 = type metadata accessor for UUID();
  v44 = *(v43 - 8);
  v45 = __chkstk_darwin(v43);
  v387 = &v327[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v47 = __chkstk_darwin(v45);
  v366 = &v327[-v48];
  __chkstk_darwin(v47);
  v50 = &v327[-v49];
  v51 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v51 - 8);
  v53 = &v327[-v52];
  v406 = type metadata accessor for LocalFindableAccessoryRecord(0);
  v407 = sub_100003E8C(&qword_1016AA560, type metadata accessor for LocalFindableAccessoryRecord, &unk_10138F748);
  v54 = sub_1000280DC(&v405);
  sub_100721C9C(a1, v54, type metadata accessor for LocalFindableAccessoryRecord);
  v56 = v406;
  v55 = v407;
  sub_1000035D0(&v405, v406);
  v57 = v56;
  v58 = v391;
  (*(*(*(v55 + 8) + 8) + 32))(v57);
  sub_100A423AC(v50, v53);
  v59 = *(v44 + 8);
  v379 = v50;
  v397 = v43;
  v389 = v44 + 8;
  v388 = v59;
  v59(v50, v43);
  v60 = (*(v35 + 48))(v53, 1, v34);
  sub_10000B3A8(v53, &unk_101696900, &unk_10138B1E0);
  v61 = sub_1006C1A0C(&v405, v58);
  v62 = v61[2];
  v382 = v61;
  if (v62)
  {
    v358 = a3;
    v384 = 0;
    v383 = 0;
    v353 = 0;
    v393 = (v44 + 56);
    v338 = 2 * (v60 == 1);
    v337 = (v395 + 6);
    v336 = (v44 + 16);
    v356 = (v35 + 40);
    v392 = (v44 + 48);
    v347 = (v44 + 32);
    v395 = (v35 + 8);
    v355 = (v35 + 32);
    v390 = (v35 + 16);
    v350 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_playbackCoordinatorModQueue;
    v351 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_soundPlaybackManager;
    v391 = SPBeaconTaskNameUnknown;
    v386 = SPBeaconTaskNameStartSharing;
    v381 = SPBeaconTaskNameStopSharing;
    v357 = SPBeaconTaskNameEnableLostMode;
    v354 = SPBeaconTaskNameDisableLostMode;
    v352 = SPBeaconTaskNamePlaySound;
    v349 = SPBeaconTaskNameStopSound;
    v346 = SPBeaconTaskNameBeginLeashing;
    v345 = SPBeaconTaskNameEndLeashing;
    v344 = SPBeaconTaskNameBeginBTFinding;
    v343 = SPBeaconTaskNameEndBTFinding;
    v342 = SPBeaconTaskNameConnect;
    v341 = SPBeaconTaskNameDisconnect;
    v340 = SPBeaconTaskNameRename;
    v339 = SPBeaconTaskNameBeginRanging;
    v335 = SPBeaconTaskNameEndRanging;
    v334 = SPBeaconTaskNameAccessoryFirmwareUpdate;
    v333 = SPBeaconTaskNameEnableNotifyWhenFound;
    v332 = SPBeaconTaskNameDisableNotifyWhenFound;
    v331 = SPBeaconTaskNameLocating;
    v63 = (v61 + 4);
    v348 = v401;
    v64 = 2;
    if (v58)
    {
      v65 = 2;
    }

    else
    {
      v65 = 0;
    }

    v380 = v65;
    if (v58)
    {
      v64 = 0;
    }

    v385 = v64;
    v66 = _swiftEmptyDictionarySingleton;
    v67 = v399;
    while (1)
    {
      v70 = *v63;
      v404 = 2;
      v71 = v70;
      Date.init()();
      v403 = 0;
      v72 = *v393;
      (*v393)(v67, 1, 1, v397);
      v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v75 = v74;
      if (v73 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v75 == v76)
      {

LABEL_19:
        v84 = -1;
        goto LABEL_23;
      }

      v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v79 = v387;
      if (v78)
      {
        goto LABEL_19;
      }

      v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v82 = v81;
      if (v80 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v82 == v83)
      {

LABEL_21:
        v86 = &v406;
LABEL_22:
        v84 = *(v86 - 32);
LABEL_23:
        v404 = v84;
        goto LABEL_24;
      }

      v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v85)
      {
        goto LABEL_21;
      }

      v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v100 = v99;
      if (v98 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v100 == v101)
      {

        v86 = &v403;
        goto LABEL_22;
      }

      v102 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v102)
      {
        v86 = &v403;
        goto LABEL_22;
      }

      v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v105 = v104;
      if (v103 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v105 == v106)
      {
      }

      else
      {
        v107 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v107 & 1) == 0)
        {
          v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v122 = v121;
          if (v120 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v122 == v123)
          {

LABEL_46:
            v125 = v358;
            v127 = v406;
            v126 = v407;
            sub_1000035D0(&v405, v406);
            v128 = v379;
            (*(*(*(v126 + 8) + 8) + 32))(v127);
            v129 = v374;
            sub_100ABD87C(v374);
            v388(v128, v397);
            v130 = type metadata accessor for LostModeRecord(0);
            LODWORD(v126) = (*(*(v130 - 8) + 48))(v129, 1, v130);
            sub_10000B3A8(v129, &unk_1016A99E0, &qword_1013A07B0);
            if (v126 == 1)
            {
              sub_10001F280(&v405, &aBlock);
              v131 = swift_allocObject();
              *(v131 + 16) = v125;
              sub_10000A748(&aBlock, v131 + 24);

              v132 = v373;
              unsafeFromAsyncTask<A>(_:)();

              v133 = sub_1000BC4D4(&qword_1016A7850, &qword_1013B6728);
              if ((*(*(v133 - 8) + 48))(v132, 1, v133) == 1)
              {
                sub_10000B3A8(v132, &qword_1016A7840, &qword_1013B66F8);
                v404 = 0;
                goto LABEL_24;
              }

              (*v395)(v132, v34);
            }

LABEL_53:
            v84 = 2;
            goto LABEL_23;
          }

          v124 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v124)
          {
            goto LABEL_46;
          }

          v134 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v136 = v135;
          if (v134 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v136 == v137)
          {

LABEL_55:
            v139 = v406;
            v140 = v407;
            sub_1000035D0(&v405, v406);
            if ((*(v140 + 152))(v139, v140))
            {
              v141 = *(v358 + v351);
              v143 = v406;
              v142 = v407;
              sub_1000035D0(&v405, v406);
              v144 = v379;
              v145 = (*(*(*(v142 + 8) + 8) + 32))(v143);
              v330 = v327;
              __chkstk_darwin(v145);
              *&v327[-16] = v141;
              *&v327[-8] = v144;
              sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
              v146 = v353;
              OS_dispatch_queue.sync<A>(execute:)();
              v353 = v146;
              v147 = aBlock;
              v388(v144, v397);
              v404 = [v147 state];
              v148 = [v147 lastUpdated];
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v149 = v398;
              (*v356)();
              v403 = [v147 error];

              v150 = [v147 commandIdentifier];
              if (v150)
              {
                v151 = v371;
                v152 = v150;
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                v153 = 0;
                v147 = v152;
                v154 = v151;
                v149 = v398;
              }

              else
              {
                v153 = 1;
                v154 = v371;
              }

              v184 = v154;
              v185 = v153;
LABEL_71:
              v72(v184, v185, 1, v397);
              sub_10002311C(v154, v399, &qword_1016980D0, &unk_10138F3B0);
              v87 = v149;
              goto LABEL_25;
            }

            v155 = v406;
            v156 = v407;
            sub_1000035D0(&v405, v406);
            v157 = (*(v156 + 88))(v155, v156);
            if (v157)
            {
              v158 = *(v358 + 280);
              v160 = v406;
              v159 = v407;
              sub_1000035D0(&v405, v406);
              v161 = v379;
              v162 = (*(*(*(v159 + 8) + 8) + 32))(v160);
              v330 = v327;
              __chkstk_darwin(v162);
              *&v327[-16] = v158;
              *&v327[-8] = v161;
              v163 = v368;
              v164 = v353;
              QueueSynchronizer.conditionalSync<A>(_:)();
              v353 = v164;
              v165 = v370;
              sub_1000D2AD8(v163, v370, &qword_1016980D0, &unk_10138F3B0);
              v166 = v397;
              v388(v161, v397);
              v167 = *v392;
              if ((*v392)(v165, 1, v166) == 1)
              {
                v330 = v34;
                v168 = v166;
                v170 = v406;
                v169 = v407;
                sub_1000035D0(&v405, v406);
                v171 = *(*(*(v169 + 8) + 8) + 32);
                v329 = v167;
                v172 = v366;
                v171(v170);
                v173 = v370;
                v174 = v168;
                v34 = v330;
                v175 = v329(v370, 1, v174);
                if (v175 != 1)
                {
                  v175 = sub_10000B3A8(v173, &qword_1016980D0, &unk_10138F3B0);
                }
              }

              else
              {
                v172 = v366;
                v175 = (*v347)(v366, v165, v166);
              }

              v330 = v327;
              __chkstk_darwin(v175);
              *&v327[-16] = v194;
              *&v327[-8] = v172;
              sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
              v195 = v353;
              OS_dispatch_queue.sync<A>(execute:)();
              v353 = v195;
              v196 = aBlock;
              v404 = [aBlock state];
              v197 = [v196 lastUpdated];
              v198 = v372;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              (*v356)(v398, v198, v34);
              v403 = [v196 error];

              v199 = [v196 commandIdentifier];
              if (v199)
              {
                v200 = v367;
                v201 = v199;
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                v202 = 0;
              }

              else
              {
                v202 = 1;
                v200 = v367;
              }

              v219 = v397;
              v388(v172, v397);
              v72(v200, v202, 1, v219);
              v220 = v200;
            }

            else
            {
              v330 = v327;
              v180 = v358;
              __chkstk_darwin(v157);
              *&v327[-16] = v180;
              *&v327[-8] = &v405;
              sub_1000BC4D4(&qword_1016A7848, &qword_1013B6710);
              v181 = v353;
              OS_dispatch_queue.sync<A>(execute:)();
              v182 = v401[0];
              if (LOBYTE(v401[0]) != 255)
              {
                v183 = aBlock;
                if ((v401[0] & 1) == 0)
                {
                  v329 = *(&aBlock + 1);
                  LODWORD(v330) = LOBYTE(v401[0]);
                  sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
                  OS_dispatch_queue.sync<A>(execute:)();
                  v353 = v181;
                  v225 = aBlock;
                  v404 = [aBlock state];
                  v226 = [v225 lastUpdated];
                  static Date._unconditionallyBridgeFromObjectiveC(_:)();

                  v149 = v398;
                  (*v356)();
                  v403 = [v225 error];

                  v227 = [v225 commandIdentifier];
                  if (v227)
                  {
                    v228 = v363;
                    v229 = v227;
                    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                    v328 = 0;
                    v225 = v229;
                    v154 = v228;
                    v149 = v398;
                  }

                  else
                  {
                    v328 = 1;
                    v154 = v363;
                  }

                  sub_10071EB9C(v183, v329, v330);
                  v184 = v154;
                  v185 = v328;
                  goto LABEL_71;
                }

                v353 = v181;
                if (aBlock)
                {
                  swift_errorRetain();
                  sub_10071EB9C(v183, *(&v183 + 1), v182);
                  v403 = v183;
                  v404 = 3;
                }

                else
                {
                  sub_10071EB9C(0, *(&aBlock + 1), v401[0]);
                  v403 = 0;
                  v404 = 2;
                }

                v246 = v399;
                sub_10000B3A8(v399, &qword_1016980D0, &unk_10138F3B0);
                v72(v246, 1, 1, v397);
                goto LABEL_24;
              }

              v329 = *(v180 + 280);
              v353 = v181;
              v204 = v406;
              v203 = v407;
              sub_1000035D0(&v405, v406);
              v205 = v379;
              v206 = (*(*(*(v203 + 8) + 8) + 32))(v204);
              v330 = v327;
              __chkstk_darwin(v206);
              *&v327[-16] = v207;
              *&v327[-8] = v205;
              v208 = v368;
              v209 = v353;
              QueueSynchronizer.conditionalSync<A>(_:)();
              v353 = v209;
              v210 = v365;
              sub_1000D2AD8(v208, v365, &qword_1016980D0, &unk_10138F3B0);
              v211 = v397;
              v388(v379, v397);
              v330 = *v392;
              if ((v330)(v210, 1, v211) == 1)
              {
                v212 = v34;
                v213 = v211;
                v215 = v406;
                v214 = v407;
                sub_1000035D0(&v405, v406);
                (*(*(*(v214 + 8) + 8) + 32))(v215);
                v216 = v365;
                v217 = v213;
                v34 = v212;
                v79 = v387;
                v218 = (v330)(v365, 1, v217);
                if (v218 != 1)
                {
                  v218 = sub_10000B3A8(v216, &qword_1016980D0, &unk_10138F3B0);
                }
              }

              else
              {
                v218 = (*v347)(v79, v210, v211);
              }

              v330 = v327;
              __chkstk_darwin(v218);
              *&v327[-16] = v230;
              *&v327[-8] = v79;
              sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
              v231 = v353;
              OS_dispatch_queue.sync<A>(execute:)();
              v232 = aBlock;
              v233 = sub_1006C22E8(&v405);
              v353 = v231;
              if (v233)
              {
                type metadata accessor for SPBeaconSharingError(0);
                *&v402 = 19;
                sub_100032898(_swiftEmptyArrayStorage);
                sub_100003E8C(&qword_101696340, type metadata accessor for SPBeaconSharingError, &unk_10138A4B4);
                _BridgedStoredNSError.init(_:userInfo:)();
                v330 = aBlock;
                v234 = 3;
              }

              else
              {
                v234 = [v232 state];
                v330 = 0;
              }

              v404 = v234;
              v235 = v232;
              v236 = [v232 lastUpdated];
              v237 = v372;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              (*v356)(v398, v237, v34);
              v238 = v330;
              if (!v330)
              {
                v238 = [v235 error];
              }

              v403 = v238;
              swift_errorRetain();

              v329 = v235;
              v239 = [v235 commandIdentifier];
              if (v239)
              {
                v240 = v364;
                v241 = v239;
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                v242 = 0;
              }

              else
              {
                v242 = 1;
                v240 = v364;
              }

              v245 = v397;
              v388(v79, v397);
              v72(v240, v242, 1, v245);
              v220 = v240;
            }

            goto LABEL_100;
          }

          v138 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v138)
          {
            goto LABEL_55;
          }

          v176 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v178 = v177;
          if (v176 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v178 == v179)
          {

LABEL_73:
            v187 = v358;
            v188 = *(v358 + v350);
            sub_10001F280(&v405, &v402);
            v189 = swift_allocObject();
            v189[2] = v187;
            sub_10000A748(&v402, (v189 + 3));
            v189[8] = &v404;
            v189[9] = &v403;
            v190 = v398;
            v189[10] = v399;
            v189[11] = v190;

            sub_1000BB27C(v384, v383);
            v191 = swift_allocObject();
            v384 = sub_100721E68;
            *(v191 + 16) = sub_100721E68;
            *(v191 + 24) = v189;
            v401[2] = sub_10040B9F8;
            v401[3] = v191;
            *&aBlock = _NSConcreteStackBlock;
            *(&aBlock + 1) = 1107296256;
            v401[0] = sub_10013FE14;
            v401[1] = &unk_10162E568;
            v192 = _Block_copy(&aBlock);

            dispatch_sync(v188, v192);
            _Block_release(v192);
            LOBYTE(v187) = swift_isEscapingClosureAtFileLocation();

            if (v187)
            {
              __break(1u);
              return result;
            }

            v383 = v189;
            goto LABEL_24;
          }

          v186 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v186)
          {
            goto LABEL_73;
          }

          v221 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v223 = v222;
          if (v221 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v223 == v224)
          {
LABEL_85:

            goto LABEL_97;
          }

          v243 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v243)
          {
            goto LABEL_97;
          }

          v247 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v249 = v248;
          if (v247 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v249 == v250)
          {
            goto LABEL_85;
          }

          v251 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v251)
          {
LABEL_97:
            sub_10001F280(&v405, &aBlock);
            v244 = swift_allocObject();
            *(v244 + 16) = v358;
            sub_10000A748(&aBlock, v244 + 24);
            type metadata accessor for BeaconTaskState(0);

            unsafeFromAsyncTask<A>(_:)();

            v84 = aBlock;
            goto LABEL_23;
          }

          v252 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v254 = v253;
          if (v252 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v254 != v255)
          {
            v256 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v256)
            {
              goto LABEL_53;
            }

            v257 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v259 = v258;
            if (v257 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v259 != v260)
            {
              v261 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v261)
              {
                goto LABEL_53;
              }

              v262 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v264 = v263;
              if (v262 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v264 != v265)
              {
                v266 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v266)
                {
                  goto LABEL_53;
                }

                v267 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v269 = v268;
                if (v267 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v269 != v270)
                {
                  v271 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v271)
                  {
                    goto LABEL_53;
                  }

                  v272 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v274 = v273;
                  if (v272 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v274 != v275)
                  {
                    v276 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v276)
                    {
                      goto LABEL_53;
                    }

                    v277 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v279 = v278;
                    if (v277 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v279 == v280)
                    {
LABEL_126:

                      goto LABEL_131;
                    }

                    v281 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v281)
                    {
                      goto LABEL_131;
                    }

                    v282 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v284 = v283;
                    if (v282 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v284 == v285)
                    {
                      goto LABEL_126;
                    }

                    v286 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v286)
                    {
LABEL_131:
                      v404 = 2;
                      if ((sub_1006C22E8(&v405) & 1) == 0)
                      {
                        goto LABEL_24;
                      }

                      type metadata accessor for SPBeaconSharingError(0);
                      *&v402 = 19;
                      sub_100032898(_swiftEmptyArrayStorage);
                      sub_100003E8C(&qword_101696340, type metadata accessor for SPBeaconSharingError, &unk_10138A4B4);
                      _BridgedStoredNSError.init(_:userInfo:)();
                      v403 = aBlock;

                      v84 = 3;
                      goto LABEL_23;
                    }

                    v287 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v289 = v288;
                    if (v287 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v289 == v290)
                    {

LABEL_137:
                      if (!*(v358 + 176))
                      {
                        goto LABEL_24;
                      }

                      v292 = *(v358 + 176);
                      v293 = v407;
                      v330 = v406;
                      sub_1000035D0(&v405, v406);
                      v294 = *(*(v293 + 8) + 8);
                      v329 = *(v294 + 32);

                      v295 = (v329)(v330, v294);
                      v330 = v327;
                      __chkstk_darwin(v295);
                      v296 = v379;
                      *&v327[-16] = v292;
                      *&v327[-8] = v296;
                      sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
                      v297 = v353;
                      OS_dispatch_queue.sync<A>(execute:)();
                      v353 = v297;

                      v298 = aBlock;
                      v388(v296, v397);
                      v404 = [v298 state];
                      v299 = [v298 lastUpdated];
                      v300 = v372;
                      static Date._unconditionallyBridgeFromObjectiveC(_:)();

                      (*v356)(v398, v300, v34);
                      v403 = [v298 error];

                      v301 = [v298 commandIdentifier];
                      if (v301)
                      {
                        v302 = v301;
                        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                        v303 = 0;
                        v298 = v302;
                      }

                      else
                      {
                        v303 = 1;
                      }

                      v308 = v359;
                      v72(v359, v303, 1, v397);
                      v220 = v308;
LABEL_100:
                      sub_10002311C(v220, v399, &qword_1016980D0, &unk_10138F3B0);
                      goto LABEL_24;
                    }

                    v291 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v291)
                    {
                      goto LABEL_137;
                    }

                    v304 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v306 = v305;
                    if (v304 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v306 == v307)
                    {

LABEL_146:
                      v311 = v406;
                      v310 = v407;
                      sub_1000035D0(&v405, v406);
                      v312 = v379;
                      (*(*(*(v310 + 8) + 8) + 32))(v311);
                      v313 = v362;
                      sub_10003A604(v362);
                      v388(v312, v397);
                      if ((*v337)(v313, 1, found) != 1)
                      {
                        v314 = v360;
                        sub_10002AB74(v362, v360, type metadata accessor for NotifyWhenFoundRecord);
                        v315 = v368;
                        v316 = v397;
                        (*v336)(v368, &v314[*(found + 20)], v397);
                        sub_100721D04(v314, type metadata accessor for NotifyWhenFoundRecord);
                        v72(v315, 0, 1, v316);
                        sub_10002311C(v315, v399, &qword_1016980D0, &unk_10138F3B0);
                        v404 = 0;
                        goto LABEL_24;
                      }

                      sub_10000B3A8(v362, &qword_10169E328, &unk_10139D740);
                      goto LABEL_53;
                    }

                    v309 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v309)
                    {
                      goto LABEL_146;
                    }

                    v317 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v319 = v318;
                    if (v317 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v319 != v320)
                    {
                      v321 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if ((v321 & 1) == 0)
                      {
                        v322 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v324 = v323;
                        if (v322 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v324 == v325)
                        {
                        }

                        else
                        {
                          v326 = _stringCompareWithSmolCheck(_:_:expecting:)();

                          if ((v326 & 1) == 0)
                          {
                            goto LABEL_24;
                          }
                        }

                        v86 = &v370;
                        goto LABEL_22;
                      }

                      goto LABEL_53;
                    }
                  }
                }
              }
            }
          }

          goto LABEL_53;
        }
      }

      v108 = v358;
      v110 = v406;
      v109 = v407;
      sub_1000035D0(&v405, v406);
      v111 = v379;
      (*(*(*(v109 + 8) + 8) + 32))(v110);
      v112 = v376;
      sub_100ABD87C(v376);
      v388(v111, v397);
      v113 = type metadata accessor for LostModeRecord(0);
      LODWORD(v109) = (*(*(v113 - 8) + 48))(v112, 1, v113) == 1;
      sub_10000B3A8(v112, &unk_1016A99E0, &qword_1013A07B0);
      v404 = 2 * v109;
      sub_10001F280(&v405, &aBlock);
      v114 = swift_allocObject();
      *(v114 + 16) = v108;
      sub_10000A748(&aBlock, v114 + 24);

      v115 = v377;
      unsafeFromAsyncTask<A>(_:)();

      v116 = sub_1000BC4D4(&qword_1016A7850, &qword_1013B6728);
      if ((*(*(v116 - 8) + 48))(v115, 1, v116) != 1)
      {
        v117 = *(v115 + *(v116 + 48));
        v118 = v375;
        (*v355)(v375, v115, v34);
        v119 = v398;
        (*v356)(v398, v118, v34);
        v87 = v119;
        v404 = v117;
        goto LABEL_25;
      }

      sub_10000B3A8(v115, &qword_1016A7840, &qword_1013B66F8);
LABEL_24:
      v87 = v398;
LABEL_25:
      (*v390)(v396, v87, v34);
      v89 = v403;
      v88 = v404;
      v90 = v71;
      swift_errorRetain();
      v91.super.isa = Date._bridgeToObjectiveC()().super.isa;
      if (v89)
      {
        v92 = _convertErrorToNSError(_:)();
      }

      else
      {
        v92 = 0;
      }

      v93 = [objc_allocWithZone(SPBeaconTaskInformation) initWithName:v90 lastUpdated:v91.super.isa error:v92 state:v88];

      v94 = *v395;
      v95 = v34;
      (*v395)(v396, v34);
      v96 = v394;
      sub_1000D2A70(v399, v394, &qword_1016980D0, &unk_10138F3B0);
      v97 = v397;
      if ((*v392)(v96, 1, v397) == 1)
      {
        v68.super.isa = 0;
      }

      else
      {
        v68.super.isa = UUID._bridgeToObjectiveC()().super.isa;
        v388(v96, v97);
      }

      [v93 setCommandIdentifier:v68.super.isa];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&aBlock = v66;
      sub_100FFF5A8(v93, v90, isUniquelyReferenced_nonNull_native);

      v66 = aBlock;
      v67 = v399;
      sub_10000B3A8(v399, &qword_1016980D0, &unk_10138F3B0);

      v34 = v95;
      v94(v398, v95);
      ++v63;
      if (!--v62)
      {
        goto LABEL_158;
      }
    }
  }

  v384 = 0;
  v383 = 0;
  v66 = _swiftEmptyDictionarySingleton;
LABEL_158:

  sub_1000BB27C(v384, v383);
  sub_100007BAC(&v405);
  return v66;
}

void *sub_1006F8B58(uint64_t a1, int a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  v387 = a3;
  LODWORD(v394) = a2;
  v8 = sub_1000BC4D4(&qword_10169E328, &unk_10139D740);
  __chkstk_darwin(v8 - 8);
  v364 = &v330[-v9];
  found = type metadata accessor for NotifyWhenFoundRecord(0);
  v398 = *(found - 8);
  __chkstk_darwin(found);
  v362 = &v330[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v380 = sub_1000BC4D4(&qword_1016A7840, &qword_1013B66F8);
  v11 = __chkstk_darwin(v380);
  v375 = &v330[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v379 = &v330[-v13];
  v14 = sub_1000BC4D4(&unk_1016A99E0, &qword_1013A07B0);
  v15 = __chkstk_darwin(v14 - 8);
  v376 = &v330[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v378 = &v330[-v17];
  v371 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v18 = __chkstk_darwin(v371);
  v361 = &v330[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __chkstk_darwin(v18);
  v366 = &v330[-v21];
  v22 = __chkstk_darwin(v20);
  v365 = &v330[-v23];
  v24 = __chkstk_darwin(v22);
  v367 = &v330[-v25];
  v26 = __chkstk_darwin(v24);
  v369 = &v330[-v27];
  v28 = __chkstk_darwin(v26);
  v370 = &v330[-v29];
  v30 = __chkstk_darwin(v28);
  v372 = &v330[-v31];
  v32 = __chkstk_darwin(v30);
  v373 = &v330[-v33];
  v34 = __chkstk_darwin(v32);
  v397 = &v330[-v35];
  __chkstk_darwin(v34);
  v402 = &v330[-v36];
  v37 = type metadata accessor for Date();
  v38 = *(v37 - 8);
  v39 = __chkstk_darwin(v37);
  v374 = &v330[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = __chkstk_darwin(v39);
  v377 = &v330[-v42];
  v43 = __chkstk_darwin(v41);
  v399 = &v330[-v44];
  __chkstk_darwin(v43);
  v401 = &v330[-v45];
  v46 = type metadata accessor for UUID();
  v47 = *(v46 - 8);
  v48 = __chkstk_darwin(v46);
  v390 = &v330[-((v49 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v50 = __chkstk_darwin(v48);
  v368 = &v330[-v51];
  __chkstk_darwin(v50);
  v53 = &v330[-v52];
  v54 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v54 - 8);
  v56 = &v330[-v55];
  v410 = a4;
  v411 = a5;
  v57 = sub_1000280DC(&v409);
  (*(*(a4 - 1) + 16))(v57, a1, a4);
  v59 = v410;
  v58 = v411;
  sub_1000035D0(&v409, v410);
  v60 = v59;
  v61 = v394;
  (*(*(*(v58 + 8) + 8) + 32))(v60);
  sub_100A423AC(v53, v56);
  v62 = *(v47 + 8);
  v381 = v53;
  v400 = v46;
  v392 = v47 + 8;
  v391 = v62;
  v62(v53, v46);
  v63 = (*(v38 + 48))(v56, 1, v37);
  sub_10000B3A8(v56, &unk_101696900, &unk_10138B1E0);
  v64 = sub_1006C1A0C(&v409, v61);
  v65 = v64[2];
  v384 = v64;
  if (v65)
  {
    v386 = 0;
    v385 = 0;
    v356 = 0;
    v396 = (v47 + 56);
    v341 = 2 * (v63 == 1);
    v340 = (v398 + 6);
    v339 = (v47 + 16);
    v359 = (v38 + 40);
    v395 = (v47 + 48);
    v350 = (v47 + 32);
    v398 = (v38 + 8);
    v358 = (v38 + 32);
    v393 = (v38 + 16);
    v353 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_playbackCoordinatorModQueue;
    v354 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_soundPlaybackManager;
    v394 = SPBeaconTaskNameUnknown;
    v389 = SPBeaconTaskNameStartSharing;
    v383 = SPBeaconTaskNameStopSharing;
    v360 = SPBeaconTaskNameEnableLostMode;
    v357 = SPBeaconTaskNameDisableLostMode;
    v355 = SPBeaconTaskNamePlaySound;
    v352 = SPBeaconTaskNameStopSound;
    v349 = SPBeaconTaskNameBeginLeashing;
    v348 = SPBeaconTaskNameEndLeashing;
    v347 = SPBeaconTaskNameBeginBTFinding;
    v346 = SPBeaconTaskNameEndBTFinding;
    v345 = SPBeaconTaskNameConnect;
    v344 = SPBeaconTaskNameDisconnect;
    v343 = SPBeaconTaskNameRename;
    v342 = SPBeaconTaskNameBeginRanging;
    v338 = SPBeaconTaskNameEndRanging;
    v337 = SPBeaconTaskNameAccessoryFirmwareUpdate;
    v336 = SPBeaconTaskNameEnableNotifyWhenFound;
    v335 = SPBeaconTaskNameDisableNotifyWhenFound;
    v334 = SPBeaconTaskNameLocating;
    v66 = (v64 + 4);
    v351 = v404;
    v67 = 2;
    if (v61)
    {
      v68 = 2;
    }

    else
    {
      v68 = 0;
    }

    v382 = v68;
    if (v61)
    {
      v67 = 0;
    }

    v388 = v67;
    v69 = _swiftEmptyDictionarySingleton;
    v70 = v402;
    while (1)
    {
      v73 = *v66;
      v408 = 2;
      v74 = v73;
      Date.init()();
      v407 = 0;
      v75 = *v396;
      (*v396)(v70, 1, 1, v400);
      v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = v77;
      if (v76 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v78 == v79)
      {

LABEL_19:
        v87 = -1;
        goto LABEL_23;
      }

      v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v82 = v390;
      if (v81)
      {
        goto LABEL_19;
      }

      v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v85 = v84;
      if (v83 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v85 == v86)
      {

LABEL_21:
        v89 = &v410;
LABEL_22:
        v87 = *(v89 - 32);
LABEL_23:
        v408 = v87;
        goto LABEL_24;
      }

      v88 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v88)
      {
        goto LABEL_21;
      }

      v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v103 = v102;
      if (v101 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v103 == v104)
      {

        v89 = &v406;
        goto LABEL_22;
      }

      v105 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v105)
      {
        v89 = &v406;
        goto LABEL_22;
      }

      v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v108 = v107;
      if (v106 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v108 == v109)
      {
      }

      else
      {
        v110 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v110 & 1) == 0)
        {
          v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v125 = v124;
          if (v123 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v125 == v126)
          {

LABEL_46:
            v128 = v387;
            v130 = v410;
            v129 = v411;
            sub_1000035D0(&v409, v410);
            v131 = v381;
            (*(*(*(v129 + 8) + 8) + 32))(v130);
            v132 = v376;
            sub_100ABD87C(v376);
            v391(v131, v400);
            v133 = type metadata accessor for LostModeRecord(0);
            LODWORD(v129) = (*(*(v133 - 8) + 48))(v132, 1, v133);
            sub_10000B3A8(v132, &unk_1016A99E0, &qword_1013A07B0);
            if (v129 == 1)
            {
              sub_10001F280(&v409, &aBlock);
              v134 = swift_allocObject();
              *(v134 + 16) = v128;
              sub_10000A748(&aBlock, v134 + 24);

              v135 = v375;
              unsafeFromAsyncTask<A>(_:)();

              v136 = sub_1000BC4D4(&qword_1016A7850, &qword_1013B6728);
              if ((*(*(v136 - 8) + 48))(v135, 1, v136) == 1)
              {
                sub_10000B3A8(v135, &qword_1016A7840, &qword_1013B66F8);
                v408 = 0;
                goto LABEL_24;
              }

              (*v398)(v135, v37);
            }

LABEL_53:
            v87 = 2;
            goto LABEL_23;
          }

          v127 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v127)
          {
            goto LABEL_46;
          }

          v137 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v139 = v138;
          if (v137 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v139 == v140)
          {

LABEL_55:
            v142 = v410;
            v143 = v411;
            sub_1000035D0(&v409, v410);
            if ((*(v143 + 152))(v142, v143))
            {
              v144 = *(v387 + v354);
              v146 = v410;
              v145 = v411;
              sub_1000035D0(&v409, v410);
              v147 = v381;
              v148 = (*(*(*(v145 + 8) + 8) + 32))(v146);
              v333 = v330;
              __chkstk_darwin(v148);
              *&v330[-16] = v144;
              *&v330[-8] = v147;
              sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
              v149 = v356;
              OS_dispatch_queue.sync<A>(execute:)();
              v356 = v149;
              v150 = aBlock;
              v391(v147, v400);
              v408 = [v150 state];
              v151 = [v150 lastUpdated];
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v152 = v401;
              (*v359)();
              v407 = [v150 error];

              v153 = [v150 commandIdentifier];
              if (v153)
              {
                v154 = v373;
                v155 = v153;
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                v156 = 0;
                v150 = v155;
                v157 = v154;
                v152 = v401;
              }

              else
              {
                v156 = 1;
                v157 = v373;
              }

              v187 = v157;
              v188 = v156;
LABEL_71:
              v75(v187, v188, 1, v400);
              sub_10002311C(v157, v402, &qword_1016980D0, &unk_10138F3B0);
              v90 = v152;
              goto LABEL_25;
            }

            v158 = v410;
            v159 = v411;
            sub_1000035D0(&v409, v410);
            v160 = (*(v159 + 88))(v158, v159);
            if (v160)
            {
              v161 = *(v387 + 280);
              v163 = v410;
              v162 = v411;
              sub_1000035D0(&v409, v410);
              v164 = v381;
              v165 = (*(*(*(v162 + 8) + 8) + 32))(v163);
              v333 = v330;
              __chkstk_darwin(v165);
              *&v330[-16] = v161;
              *&v330[-8] = v164;
              v166 = v370;
              v167 = v356;
              QueueSynchronizer.conditionalSync<A>(_:)();
              v356 = v167;
              v168 = v372;
              sub_1000D2AD8(v166, v372, &qword_1016980D0, &unk_10138F3B0);
              v169 = v400;
              v391(v164, v400);
              v170 = *v395;
              if ((*v395)(v168, 1, v169) == 1)
              {
                v333 = v37;
                v171 = v169;
                v173 = v410;
                v172 = v411;
                sub_1000035D0(&v409, v410);
                v174 = *(*(*(v172 + 8) + 8) + 32);
                v332 = v170;
                v175 = v368;
                v174(v173);
                v176 = v372;
                v177 = v171;
                v37 = v333;
                v178 = v332(v372, 1, v177);
                if (v178 != 1)
                {
                  v178 = sub_10000B3A8(v176, &qword_1016980D0, &unk_10138F3B0);
                }
              }

              else
              {
                v175 = v368;
                v178 = (*v350)(v368, v168, v169);
              }

              v333 = v330;
              __chkstk_darwin(v178);
              *&v330[-16] = v197;
              *&v330[-8] = v175;
              sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
              v198 = v356;
              OS_dispatch_queue.sync<A>(execute:)();
              v356 = v198;
              v199 = aBlock;
              v408 = [aBlock state];
              v200 = [v199 lastUpdated];
              v201 = v374;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              (*v359)(v401, v201, v37);
              v407 = [v199 error];

              v202 = [v199 commandIdentifier];
              if (v202)
              {
                v203 = v369;
                v204 = v202;
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                v205 = 0;
              }

              else
              {
                v205 = 1;
                v203 = v369;
              }

              v222 = v400;
              v391(v175, v400);
              v75(v203, v205, 1, v222);
              v223 = v203;
            }

            else
            {
              v333 = v330;
              v183 = v387;
              __chkstk_darwin(v160);
              *&v330[-16] = v183;
              *&v330[-8] = &v409;
              sub_1000BC4D4(&qword_1016A7848, &qword_1013B6710);
              v184 = v356;
              OS_dispatch_queue.sync<A>(execute:)();
              v185 = v404[0];
              if (LOBYTE(v404[0]) != 255)
              {
                v186 = aBlock;
                if ((v404[0] & 1) == 0)
                {
                  v332 = *(&aBlock + 1);
                  LODWORD(v333) = LOBYTE(v404[0]);
                  sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
                  OS_dispatch_queue.sync<A>(execute:)();
                  v356 = v184;
                  v228 = aBlock;
                  v408 = [aBlock state];
                  v229 = [v228 lastUpdated];
                  static Date._unconditionallyBridgeFromObjectiveC(_:)();

                  v152 = v401;
                  (*v359)();
                  v407 = [v228 error];

                  v230 = [v228 commandIdentifier];
                  if (v230)
                  {
                    v231 = v365;
                    v232 = v230;
                    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                    v331 = 0;
                    v228 = v232;
                    v157 = v231;
                    v152 = v401;
                  }

                  else
                  {
                    v331 = 1;
                    v157 = v365;
                  }

                  sub_10071EB9C(v186, v332, v333);
                  v187 = v157;
                  v188 = v331;
                  goto LABEL_71;
                }

                v356 = v184;
                if (aBlock)
                {
                  swift_errorRetain();
                  sub_10071EB9C(v186, *(&v186 + 1), v185);
                  v407 = v186;
                  v408 = 3;
                }

                else
                {
                  sub_10071EB9C(0, *(&aBlock + 1), v404[0]);
                  v407 = 0;
                  v408 = 2;
                }

                v249 = v402;
                sub_10000B3A8(v402, &qword_1016980D0, &unk_10138F3B0);
                v75(v249, 1, 1, v400);
                goto LABEL_24;
              }

              v332 = *(v183 + 280);
              v356 = v184;
              v207 = v410;
              v206 = v411;
              sub_1000035D0(&v409, v410);
              v208 = v381;
              v209 = (*(*(*(v206 + 8) + 8) + 32))(v207);
              v333 = v330;
              __chkstk_darwin(v209);
              *&v330[-16] = v210;
              *&v330[-8] = v208;
              v211 = v370;
              v212 = v356;
              QueueSynchronizer.conditionalSync<A>(_:)();
              v356 = v212;
              v213 = v367;
              sub_1000D2AD8(v211, v367, &qword_1016980D0, &unk_10138F3B0);
              v214 = v400;
              v391(v381, v400);
              v333 = *v395;
              if ((v333)(v213, 1, v214) == 1)
              {
                v215 = v37;
                v216 = v214;
                v218 = v410;
                v217 = v411;
                sub_1000035D0(&v409, v410);
                (*(*(*(v217 + 8) + 8) + 32))(v218);
                v219 = v367;
                v220 = v216;
                v37 = v215;
                v82 = v390;
                v221 = (v333)(v367, 1, v220);
                if (v221 != 1)
                {
                  v221 = sub_10000B3A8(v219, &qword_1016980D0, &unk_10138F3B0);
                }
              }

              else
              {
                v221 = (*v350)(v82, v213, v214);
              }

              v333 = v330;
              __chkstk_darwin(v221);
              *&v330[-16] = v233;
              *&v330[-8] = v82;
              sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
              v234 = v356;
              OS_dispatch_queue.sync<A>(execute:)();
              v235 = aBlock;
              v236 = sub_1006C22E8(&v409);
              v356 = v234;
              if (v236)
              {
                type metadata accessor for SPBeaconSharingError(0);
                *&v405 = 19;
                sub_100032898(_swiftEmptyArrayStorage);
                sub_100003E8C(&qword_101696340, type metadata accessor for SPBeaconSharingError, &unk_10138A4B4);
                _BridgedStoredNSError.init(_:userInfo:)();
                v333 = aBlock;
                v237 = 3;
              }

              else
              {
                v237 = [v235 state];
                v333 = 0;
              }

              v408 = v237;
              v238 = v235;
              v239 = [v235 lastUpdated];
              v240 = v374;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              (*v359)(v401, v240, v37);
              v241 = v333;
              if (!v333)
              {
                v241 = [v238 error];
              }

              v407 = v241;
              swift_errorRetain();

              v332 = v238;
              v242 = [v238 commandIdentifier];
              if (v242)
              {
                v243 = v366;
                v244 = v242;
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                v245 = 0;
              }

              else
              {
                v245 = 1;
                v243 = v366;
              }

              v248 = v400;
              v391(v82, v400);
              v75(v243, v245, 1, v248);
              v223 = v243;
            }

            goto LABEL_100;
          }

          v141 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v141)
          {
            goto LABEL_55;
          }

          v179 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v181 = v180;
          if (v179 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v181 == v182)
          {

LABEL_73:
            v190 = v387;
            v191 = *(v387 + v353);
            sub_10001F280(&v409, &v405);
            v192 = swift_allocObject();
            v192[2] = v190;
            sub_10000A748(&v405, (v192 + 3));
            v192[8] = &v408;
            v192[9] = &v407;
            v193 = v401;
            v192[10] = v402;
            v192[11] = v193;

            sub_1000BB27C(v386, v385);
            v194 = swift_allocObject();
            v386 = sub_100721E68;
            *(v194 + 16) = sub_100721E68;
            *(v194 + 24) = v192;
            v404[2] = sub_10040B9F8;
            v404[3] = v194;
            *&aBlock = _NSConcreteStackBlock;
            *(&aBlock + 1) = 1107296256;
            v404[0] = sub_10013FE14;
            v404[1] = &unk_10162F0F8;
            v195 = _Block_copy(&aBlock);

            dispatch_sync(v191, v195);
            _Block_release(v195);
            LOBYTE(v190) = swift_isEscapingClosureAtFileLocation();

            if (v190)
            {
              __break(1u);
              return result;
            }

            v385 = v192;
            goto LABEL_24;
          }

          v189 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v189)
          {
            goto LABEL_73;
          }

          v224 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v226 = v225;
          if (v224 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v226 == v227)
          {
LABEL_85:

            goto LABEL_97;
          }

          v246 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v246)
          {
            goto LABEL_97;
          }

          v250 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v252 = v251;
          if (v250 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v252 == v253)
          {
            goto LABEL_85;
          }

          v254 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v254)
          {
LABEL_97:
            sub_10001F280(&v409, &aBlock);
            v247 = swift_allocObject();
            *(v247 + 16) = v387;
            sub_10000A748(&aBlock, v247 + 24);
            type metadata accessor for BeaconTaskState(0);

            unsafeFromAsyncTask<A>(_:)();

            v87 = aBlock;
            goto LABEL_23;
          }

          v255 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v257 = v256;
          if (v255 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v257 != v258)
          {
            v259 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v259)
            {
              goto LABEL_53;
            }

            v260 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v262 = v261;
            if (v260 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v262 != v263)
            {
              v264 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v264)
              {
                goto LABEL_53;
              }

              v265 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v267 = v266;
              if (v265 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v267 != v268)
              {
                v269 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v269)
                {
                  goto LABEL_53;
                }

                v270 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v272 = v271;
                if (v270 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v272 != v273)
                {
                  v274 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v274)
                  {
                    goto LABEL_53;
                  }

                  v275 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v277 = v276;
                  if (v275 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v277 != v278)
                  {
                    v279 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v279)
                    {
                      goto LABEL_53;
                    }

                    v280 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v282 = v281;
                    if (v280 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v282 == v283)
                    {
LABEL_126:

                      goto LABEL_131;
                    }

                    v284 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v284)
                    {
                      goto LABEL_131;
                    }

                    v285 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v287 = v286;
                    if (v285 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v287 == v288)
                    {
                      goto LABEL_126;
                    }

                    v289 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v289)
                    {
LABEL_131:
                      v408 = 2;
                      if ((sub_1006C22E8(&v409) & 1) == 0)
                      {
                        goto LABEL_24;
                      }

                      type metadata accessor for SPBeaconSharingError(0);
                      *&v405 = 19;
                      sub_100032898(_swiftEmptyArrayStorage);
                      sub_100003E8C(&qword_101696340, type metadata accessor for SPBeaconSharingError, &unk_10138A4B4);
                      _BridgedStoredNSError.init(_:userInfo:)();
                      v407 = aBlock;

                      v87 = 3;
                      goto LABEL_23;
                    }

                    v290 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v292 = v291;
                    if (v290 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v292 == v293)
                    {

LABEL_137:
                      if (!*(v387 + 176))
                      {
                        goto LABEL_24;
                      }

                      v295 = *(v387 + 176);
                      v296 = v411;
                      v333 = v410;
                      sub_1000035D0(&v409, v410);
                      v297 = *(*(v296 + 8) + 8);
                      v332 = *(v297 + 32);

                      v298 = (v332)(v333, v297);
                      v333 = v330;
                      __chkstk_darwin(v298);
                      v299 = v381;
                      *&v330[-16] = v295;
                      *&v330[-8] = v299;
                      sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
                      v300 = v356;
                      OS_dispatch_queue.sync<A>(execute:)();
                      v356 = v300;

                      v301 = aBlock;
                      v391(v299, v400);
                      v408 = [v301 state];
                      v302 = [v301 lastUpdated];
                      v303 = v374;
                      static Date._unconditionallyBridgeFromObjectiveC(_:)();

                      (*v359)(v401, v303, v37);
                      v407 = [v301 error];

                      v304 = [v301 commandIdentifier];
                      if (v304)
                      {
                        v305 = v304;
                        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                        v306 = 0;
                        v301 = v305;
                      }

                      else
                      {
                        v306 = 1;
                      }

                      v311 = v361;
                      v75(v361, v306, 1, v400);
                      v223 = v311;
LABEL_100:
                      sub_10002311C(v223, v402, &qword_1016980D0, &unk_10138F3B0);
                      goto LABEL_24;
                    }

                    v294 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v294)
                    {
                      goto LABEL_137;
                    }

                    v307 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v309 = v308;
                    if (v307 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v309 == v310)
                    {

LABEL_146:
                      v314 = v410;
                      v313 = v411;
                      sub_1000035D0(&v409, v410);
                      v315 = v381;
                      (*(*(*(v313 + 8) + 8) + 32))(v314);
                      v316 = v364;
                      sub_10003A604(v364);
                      v391(v315, v400);
                      if ((*v340)(v316, 1, found) != 1)
                      {
                        v317 = v362;
                        sub_10002AB74(v364, v362, type metadata accessor for NotifyWhenFoundRecord);
                        v318 = v370;
                        v319 = v400;
                        (*v339)(v370, &v317[*(found + 20)], v400);
                        sub_100721D04(v317, type metadata accessor for NotifyWhenFoundRecord);
                        v75(v318, 0, 1, v319);
                        sub_10002311C(v318, v402, &qword_1016980D0, &unk_10138F3B0);
                        v408 = 0;
                        goto LABEL_24;
                      }

                      sub_10000B3A8(v364, &qword_10169E328, &unk_10139D740);
                      goto LABEL_53;
                    }

                    v312 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v312)
                    {
                      goto LABEL_146;
                    }

                    v320 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v322 = v321;
                    if (v320 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v322 != v323)
                    {
                      v324 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if ((v324 & 1) == 0)
                      {
                        v325 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v327 = v326;
                        if (v325 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v327 == v328)
                        {
                        }

                        else
                        {
                          v329 = _stringCompareWithSmolCheck(_:_:expecting:)();

                          if ((v329 & 1) == 0)
                          {
                            goto LABEL_24;
                          }
                        }

                        v89 = &v373;
                        goto LABEL_22;
                      }

                      goto LABEL_53;
                    }
                  }
                }
              }
            }
          }

          goto LABEL_53;
        }
      }

      v111 = v387;
      v113 = v410;
      v112 = v411;
      sub_1000035D0(&v409, v410);
      v114 = v381;
      (*(*(*(v112 + 8) + 8) + 32))(v113);
      v115 = v378;
      sub_100ABD87C(v378);
      v391(v114, v400);
      v116 = type metadata accessor for LostModeRecord(0);
      LODWORD(v112) = (*(*(v116 - 8) + 48))(v115, 1, v116) == 1;
      sub_10000B3A8(v115, &unk_1016A99E0, &qword_1013A07B0);
      v408 = 2 * v112;
      sub_10001F280(&v409, &aBlock);
      v117 = swift_allocObject();
      *(v117 + 16) = v111;
      sub_10000A748(&aBlock, v117 + 24);

      v118 = v379;
      unsafeFromAsyncTask<A>(_:)();

      v119 = sub_1000BC4D4(&qword_1016A7850, &qword_1013B6728);
      if ((*(*(v119 - 8) + 48))(v118, 1, v119) != 1)
      {
        v120 = *(v118 + *(v119 + 48));
        v121 = v377;
        (*v358)(v377, v118, v37);
        v122 = v401;
        (*v359)(v401, v121, v37);
        v90 = v122;
        v408 = v120;
        goto LABEL_25;
      }

      sub_10000B3A8(v118, &qword_1016A7840, &qword_1013B66F8);
LABEL_24:
      v90 = v401;
LABEL_25:
      (*v393)(v399, v90, v37);
      v92 = v407;
      v91 = v408;
      v93 = v74;
      swift_errorRetain();
      v94.super.isa = Date._bridgeToObjectiveC()().super.isa;
      if (v92)
      {
        v95 = _convertErrorToNSError(_:)();
      }

      else
      {
        v95 = 0;
      }

      v96 = [objc_allocWithZone(SPBeaconTaskInformation) initWithName:v93 lastUpdated:v94.super.isa error:v95 state:v91];

      v97 = *v398;
      v98 = v37;
      (*v398)(v399, v37);
      v99 = v397;
      sub_1000D2A70(v402, v397, &qword_1016980D0, &unk_10138F3B0);
      v100 = v400;
      if ((*v395)(v99, 1, v400) == 1)
      {
        v71.super.isa = 0;
      }

      else
      {
        v71.super.isa = UUID._bridgeToObjectiveC()().super.isa;
        v391(v99, v100);
      }

      [v96 setCommandIdentifier:v71.super.isa];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&aBlock = v69;
      sub_100FFF5A8(v96, v93, isUniquelyReferenced_nonNull_native);

      v69 = aBlock;
      v70 = v402;
      sub_10000B3A8(v402, &qword_1016980D0, &unk_10138F3B0);

      v37 = v98;
      v97(v401, v98);
      ++v66;
      if (!--v65)
      {
        goto LABEL_158;
      }
    }
  }

  v386 = 0;
  v385 = 0;
  v69 = _swiftEmptyDictionarySingleton;
LABEL_158:

  sub_1000BB27C(v386, v385);
  sub_100007BAC(&v409);
  return v69;
}

id sub_1006FBA08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v4 - 8);
  v153 = &v144 - v5;
  v6 = type metadata accessor for OwnedBeaconRecord(0);
  v152 = *(v6 - 8);
  __chkstk_darwin(v6);
  v151 = &v144 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v8 - 8);
  v149 = (&v144 - v9);
  v148 = type metadata accessor for OwnedBeaconGroup(0);
  v147 = *(v148 - 8);
  __chkstk_darwin(v148);
  v146 = &v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v144 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v155 = v14;
  v156 = v15;
  v16 = __chkstk_darwin(v14);
  v150 = &v144 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v154 = &v144 - v18;
  v19 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  __chkstk_darwin(v19 - 8);
  v21 = &v144 - v20;
  v22 = type metadata accessor for BeaconProductInfoRecord(0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v144 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161[3] = v6;
  v161[4] = sub_100003E8C(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord, &unk_1013E7DBC);
  v26 = sub_1000280DC(v161);
  sub_100721C9C(a1, v26, type metadata accessor for OwnedBeaconRecord);
  v157 = v6;
  sub_100AC1584(v26 + *(v6 + 20), v21);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_10000B3A8(v21, &unk_1016AF8C0, &unk_1013A07A0);
    if (sub_1000322C8())
    {
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_1000076D4(v27, qword_10177B780);
      sub_10001F280(v161, v159);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v158 = v31;
        *v30 = 141558275;
        *(v30 + 4) = 1752392040;
        *(v30 + 12) = 2081;
        v32 = sub_1000035D0(v159, v160);
        v33 = v156;
        v35 = v154;
        v34 = v155;
        (*(v156 + 16))(v154, &v32[v157[5]], v155);
        sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v36 = dispatch thunk of CustomStringConvertible.description.getter();
        v38 = v37;
        (*(v33 + 8))(v35, v34);
        sub_100007BAC(v159);
        v39 = sub_1000136BC(v36, v38, &v158);

        *(v30 + 14) = v39;
        v40 = "Can't monitor beacon: %{private,mask.hash}s due to: accessory beacon but missing product info!";
LABEL_25:
        _os_log_impl(&_mh_execute_header, v28, v29, v40, v30, 0x16u);
        sub_100007BAC(v31);

        goto LABEL_61;
      }

      goto LABEL_59;
    }
  }

  else
  {
    sub_10002AB74(v21, v25, type metadata accessor for BeaconProductInfoRecord);
    if ((sub_1000322C8() & 1) != 0 && v25[*(v22 + 36)] == 1)
    {
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      sub_1000076D4(v41, qword_10177B780);
      sub_10001F280(v161, v159);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v158 = v45;
        *v44 = 141558275;
        *(v44 + 4) = 1752392040;
        *(v44 + 12) = 2081;
        v46 = sub_1000035D0(v159, v160);
        v47 = v156;
        v49 = v154;
        v48 = v155;
        (*(v156 + 16))(v154, &v46[v157[5]], v155);
        sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v50 = dispatch thunk of CustomStringConvertible.description.getter();
        v52 = v51;
        (*(v47 + 8))(v49, v48);
        sub_100007BAC(v159);
        v53 = sub_1000136BC(v50, v52, &v158);

        *(v44 + 14) = v53;
        _os_log_impl(&_mh_execute_header, v42, v43, "Can't monitor beacon: %{private,mask.hash}s due to: hidden accessory.", v44, 0x16u);
        sub_100007BAC(v45);

        v54 = type metadata accessor for BeaconProductInfoRecord;
        v55 = v25;
LABEL_13:
        sub_100721D04(v55, v54);
LABEL_61:
        v107 = 0;
        goto LABEL_62;
      }

      v86 = type metadata accessor for BeaconProductInfoRecord;
      v87 = v25;
LABEL_37:
      sub_100721D04(v87, v86);
LABEL_60:
      sub_100007BAC(v159);
      goto LABEL_61;
    }

    sub_100721D04(v25, type metadata accessor for BeaconProductInfoRecord);
  }

  if ((sub_1006FD510(v26, a2) & 1) == 0)
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    sub_1000076D4(v65, qword_10177B780);
    sub_10001F280(v161, v159);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v158 = v31;
      *v30 = 141558275;
      *(v30 + 4) = 1752392040;
      *(v30 + 12) = 2081;
      v66 = sub_1000035D0(v159, v160);
      v67 = v156;
      v69 = v154;
      v68 = v155;
      (*(v156 + 16))(v154, &v66[v157[5]], v155);
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v71;
      (*(v67 + 8))(v69, v68);
      sub_100007BAC(v159);
      v73 = sub_1000136BC(v70, v72, &v158);

      *(v30 + 14) = v73;
      v40 = "Can't monitor beacon: %{private,mask.hash}s due to: unsupported beacon.";
      goto LABEL_25;
    }

    goto LABEL_59;
  }

  if (sub_100DDE094())
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    sub_1000076D4(v56, qword_10177B780);
    sub_10001F280(v161, v159);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v158 = v31;
      *v30 = 141558275;
      *(v30 + 4) = 1752392040;
      *(v30 + 12) = 2081;
      v57 = sub_1000035D0(v159, v160);
      v58 = v156;
      v60 = v154;
      v59 = v155;
      (*(v156 + 16))(v154, &v57[v157[5]], v155);
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v62;
      (*(v58 + 8))(v60, v59);
      sub_100007BAC(v159);
      v64 = sub_1000136BC(v61, v63, &v158);

      *(v30 + 14) = v64;
      v40 = "Can't monitor beacon: %{private,mask.hash}s due to: this device.";
      goto LABEL_25;
    }

    goto LABEL_59;
  }

  CurrentValueSubject.value.getter();

  v145 = v159[0];
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v74 = qword_10177C218;
  v75 = objc_opt_self();
  v76 = [v75 sharedInstance];
  v77 = [v76 isInternalBuild];

  if ((v77 & 1) != 0 && (v78 = String._bridgeToObjectiveC()(), v79 = [v74 BOOLForKey:v78], v78, v79))
  {
    v80 = [v75 sharedInstance];
    v81 = [v80 isInternalBuild];
  }

  else
  {
    v81 = 0;
  }

  v82 = v157;
  v83 = sub_100E0EA64(*(v26 + v157[16]), *(v26 + v157[17]));
  v84 = v156;
  if (v83)
  {
    if (!((v145 > 1) | v81 & 1))
    {
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v88 = type metadata accessor for Logger();
      sub_1000076D4(v88, qword_10177B780);
      sub_10001F280(v161, v159);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v158 = v31;
        *v30 = 141558275;
        *(v30 + 4) = 1752392040;
        *(v30 + 12) = 2081;
        v89 = sub_1000035D0(v159, v160);
        v90 = v156;
        v92 = v154;
        v91 = v155;
        (*(v156 + 16))(v154, &v89[v157[5]], v155);
        sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v93 = dispatch thunk of CustomStringConvertible.description.getter();
        v95 = v94;
        (*(v90 + 8))(v92, v91);
        sub_100007BAC(v159);
        v96 = sub_1000136BC(v93, v95, &v158);

        *(v30 + 14) = v96;
        v40 = "Can't monitor beacon: %{private,mask.hash}s due to: airpods beacon but less than 2 adv buffers.";
        goto LABEL_25;
      }

      goto LABEL_59;
    }

    sub_1000D2A70(v26 + v157[7], v13, &qword_1016980D0, &unk_10138F3B0);
    v85 = v155;
    if ((*(v84 + 48))(v13, 1, v155) == 1)
    {
      sub_10000B3A8(v13, &qword_1016980D0, &unk_10138F3B0);
    }

    else
    {
      v97 = v150;
      (*(v84 + 32))();
      v98 = v149;
      sub_100AC53EC(v97, v149);
      if ((*(v147 + 48))(v98, 1, v148) == 1)
      {
        (*(v84 + 8))(v97, v85);
        sub_10000B3A8(v98, &unk_1016AF8B0, &unk_1013A0700);
      }

      else
      {
        v99 = v146;
        sub_10002AB74(v98, v146, type metadata accessor for OwnedBeaconGroup);
        if ((sub_100518118() & 1) == 0)
        {
          if (qword_101694B70 != -1)
          {
            swift_once();
          }

          v130 = type metadata accessor for Logger();
          sub_1000076D4(v130, qword_10177B780);
          sub_10001F280(v161, v159);
          v131 = Logger.logObject.getter();
          v132 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v131, v132))
          {
            v133 = swift_slowAlloc();
            v134 = swift_slowAlloc();
            v158 = v134;
            *v133 = 141558275;
            *(v133 + 4) = 1752392040;
            *(v133 + 12) = 2081;
            v135 = sub_1000035D0(v159, v160);
            v136 = v156;
            v138 = v154;
            v137 = v155;
            (*(v156 + 16))(v154, &v135[v157[5]], v155);
            sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v139 = dispatch thunk of CustomStringConvertible.description.getter();
            v141 = v140;
            v142 = *(v136 + 8);
            v142(v138, v137);
            sub_100007BAC(v159);
            v143 = sub_1000136BC(v139, v141, &v158);

            *(v133 + 14) = v143;
            _os_log_impl(&_mh_execute_header, v131, v132, "Can't monitor beacon: %{private,mask.hash}s due to: group pairing incomplete.", v133, 0x16u);
            sub_100007BAC(v134);

            sub_100721D04(v146, type metadata accessor for OwnedBeaconGroup);
            v142(v150, v137);
            goto LABEL_61;
          }

          sub_100721D04(v99, type metadata accessor for OwnedBeaconGroup);
          (*(v156 + 8))(v150, v155);
          goto LABEL_60;
        }

        sub_100721D04(v99, type metadata accessor for OwnedBeaconGroup);
        (*(v84 + 8))(v97, v155);
      }
    }

    v82 = v157;
  }

  v100 = v153;
  sub_1009D762C(v153);
  if ((*(v152 + 48))(v100, 1, v82) == 1)
  {
    sub_10000B3A8(v100, &unk_1016A9A20, &qword_10138B280);
    goto LABEL_52;
  }

  v101 = v151;
  sub_10002AB74(v100, v151, type metadata accessor for OwnedBeaconRecord);
  if (sub_1006DCF58(0x6863746157, 0xE500000000000000, *(v26 + v82[14]), *(v26 + v82[14] + 8)))
  {
    sub_100003E8C(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v102 = v155;
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v117 = type metadata accessor for Logger();
      sub_1000076D4(v117, qword_10177B780);
      sub_10001F280(v161, v159);
      v118 = Logger.logObject.getter();
      v119 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        v121 = v101;
        v122 = swift_slowAlloc();
        v158 = v122;
        *v120 = 141558275;
        *(v120 + 4) = 1752392040;
        *(v120 + 12) = 2081;
        v123 = sub_1000035D0(v159, v160);
        v124 = v156;
        v125 = v154;
        (*(v156 + 16))(v154, &v123[v82[5]], v102);
        sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v126 = dispatch thunk of CustomStringConvertible.description.getter();
        v128 = v127;
        (*(v124 + 8))(v125, v102);
        sub_100007BAC(v159);
        v129 = sub_1000136BC(v126, v128, &v158);

        *(v120 + 14) = v129;
        _os_log_impl(&_mh_execute_header, v118, v119, "Can't monitor beacon: %{private,mask.hash}s due to: watch beacon, but not actively paired.", v120, 0x16u);
        sub_100007BAC(v122);

        v54 = type metadata accessor for OwnedBeaconRecord;
        v55 = v121;
        goto LABEL_13;
      }

      v86 = type metadata accessor for OwnedBeaconRecord;
      v87 = v101;
      goto LABEL_37;
    }
  }

  sub_100721D04(v101, type metadata accessor for OwnedBeaconRecord);
LABEL_52:
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v104 = result;
    v105 = String._bridgeToObjectiveC()();
    v106 = [v104 applicationIsInstalled:v105];

    if (v106)
    {
      v107 = 1;
LABEL_62:
      sub_100007BAC(v161);
      return v107;
    }

    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v108 = type metadata accessor for Logger();
    sub_1000076D4(v108, qword_10177B780);
    sub_10001F280(v161, v159);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v158 = v31;
      *v30 = 141558275;
      *(v30 + 4) = 1752392040;
      *(v30 + 12) = 2081;
      v109 = sub_1000035D0(v159, v160);
      v111 = v155;
      v110 = v156;
      v112 = v154;
      (*(v156 + 16))(v154, &v109[v82[5]], v155);
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v113 = dispatch thunk of CustomStringConvertible.description.getter();
      v115 = v114;
      (*(v110 + 8))(v112, v111);
      sub_100007BAC(v159);
      v116 = sub_1000136BC(v113, v115, &v158);

      *(v30 + 14) = v116;
      v40 = "Can't monitor beacon: %{private,mask.hash}s due to: no Find My app installed.";
      goto LABEL_25;
    }

LABEL_59:

    goto LABEL_60;
  }

  __break(1u);
  return result;
}

uint64_t sub_1006FD1C4(uint64_t a1, uint64_t a2, int a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = a5;
  v34 = a4;
  v31 = a3;
  v32 = a2;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  __chkstk_darwin(v16 - 8);
  v18 = &v30 - v17;
  v35[3] = a7;
  v35[4] = a8;
  v19 = sub_1000280DC(v35);
  (*(*(a7 - 8) + 16))(v19, a1, a7);
  v30 = a6;
  (*(*(*(a8 + 8) + 8) + 32))(a7);
  sub_100AC1584(v15, v18);
  (*(v13 + 8))(v15, v12);
  v20 = type metadata accessor for BeaconProductInfoRecord(0);
  LODWORD(a1) = (*(*(v20 - 8) + 48))(v18, 1, v20);
  v21 = sub_10000B3A8(v18, &unk_1016AF8C0, &unk_1013A07A0);
  if (a1 == 1)
  {
    v22 = v34;
    if ((*(a8 + 144))(a7, a8))
    {
      v23 = (*(a8 + 48))(a7, a8);
      v24 = (*(a8 + 56))(a7, a8);
      v25 = sub_100314604(v23, v24);
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0xF000000000000000;
    }

    sub_1000BC4D4(&qword_1016975D8, &unk_1013AAF10);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_101385D80;
    sub_10001F280(v35, v28 + 32);
    sub_101095D74(v28, 1, v25, v27, v32, v31 & 1, v22, v33);

    sub_100006654(v25, v27);
  }

  else if (v34)
  {
    v34(v21);
  }

  return sub_100007BAC(v35);
}

uint64_t sub_1006FD510(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnedBeaconRecord(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100721C9C(a1, v6, type metadata accessor for OwnedBeaconRecord);
  v7 = sub_100D60CD0();
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
  {

    goto LABEL_9;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
LABEL_9:
    sub_100721D04(v6, type metadata accessor for OwnedBeaconRecord);
LABEL_10:
    v15 = 0;
    return v15 & 1;
  }

  v14 = sub_1006FD6D0(v6, *(a2 + 280));
  if ((sub_10111F67C(8, v14) & 1) == 0)
  {
    sub_100721D04(v6, type metadata accessor for OwnedBeaconRecord);

    goto LABEL_10;
  }

  v15 = sub_10111F67C(9, v14);

  sub_100721D04(v6, type metadata accessor for OwnedBeaconRecord);
  return v15 & 1;
}

void *sub_1006FD6D0(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  v3 = type metadata accessor for LocalFindableAccessoryRecord(0);
  __chkstk_darwin(v3);
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  __chkstk_darwin(v6 - 8);
  v8 = &v57 - v7;
  v60 = type metadata accessor for StableIdentifier(0);
  v9 = __chkstk_darwin(v60);
  v59 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v57 - v11;
  v13 = type metadata accessor for SharedBeaconRecord(0);
  v14 = __chkstk_darwin(v13);
  v58 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v57 - v16;
  v18 = type metadata accessor for OwnedBeaconRecord(0);
  v19 = __chkstk_darwin(v18);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v57 - v23;
  v68[3] = v22;
  v68[4] = sub_100003E8C(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord, &unk_1013E7DBC);
  v25 = sub_1000280DC(v68);
  sub_100721C9C(a1, v25, type metadata accessor for OwnedBeaconRecord);
  sub_10001F280(v68, v67);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  if (swift_dynamicCast())
  {
    sub_10002AB74(v24, v21, type metadata accessor for OwnedBeaconRecord);
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    OS_dispatch_queue.sync<A>(execute:)();
    v26 = v63[0];
    if (qword_1016954E8 != -1)
    {
      swift_once();
    }

    v27 = qword_10177CE20;
    v64 = &type metadata for KoreaFeatureFlag;
    v28 = sub_10013CCC4();
    v65 = v28;

    v29 = isFeatureEnabled(_:)();
    sub_100007BAC(v63);
    if ((v29 & 1) != 0 || (sub_100EF9844() & 1) == 0)
    {
      v62 = v27;
    }

    else
    {
      v62 = v27;
      sub_1010F6870(2);
      sub_1010F6870(1);
    }

    if (sub_1009C4EC0(v21) & 1) != 0 && ((v64 = &type metadata for KoreaFeatureFlag, v65 = v28, v34 = isFeatureEnabled(_:)(), sub_100007BAC(v63), (v34) || (sub_100EF9844() & 1) == 0))
    {
      sub_100DEB610(v63, 8);
      sub_100DEB610(v63, 9);
    }

    else
    {
      sub_1010F6870(8);
      sub_1010F6870(9);
    }

    v36 = *(v18 + 24);
    sub_100721C9C(&v21[v36], v12, type metadata accessor for StableIdentifier);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_100721D04(v12, type metadata accessor for StableIdentifier);
    if (EnumCaseMultiPayload != 1)
    {
      sub_1010F6870(12);
      sub_1010F6870(13);
    }

    if ((sub_100D60B1C() & 1) == 0 || (My = type metadata accessor for Feature.FindMy(), v64 = My, v65 = sub_100003E8C(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy), v39 = sub_1000280DC(v63), (*(*(My - 8) + 104))(v39, enum case for Feature.FindMy.btRSSIFinding(_:), My), LOBYTE(My) = isFeatureEnabled(_:)(), sub_100007BAC(v63), (My & 1) == 0))
    {
      sub_1010F6870(10);
      sub_1010F6870(11);
    }

    v40 = &v21[v36];
    v41 = v59;
    sub_100721C9C(v40, v59, type metadata accessor for StableIdentifier);
    v42 = swift_getEnumCaseMultiPayload();
    sub_100721D04(v41, type metadata accessor for StableIdentifier);
    if (!v42)
    {
      sub_1010F6870(7);
    }

    if (sub_1000322C8() & 1) != 0 && (v43 = type metadata accessor for Feature.FindMy(), v64 = v43, v44 = sub_100003E8C(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy), v65 = v44, v45 = sub_1000280DC(v63), v46 = *(*(v43 - 8) + 104), v46(v45, enum case for Feature.FindMy.itemSharing(_:), v43), v47 = isFeatureEnabled(_:)(), sub_100007BAC(v63), (v47))
    {
      sub_100DEB610(v63, 4);
      v64 = v43;
      v65 = v44;
      v48 = sub_1000280DC(v63);
      v46(v48, enum case for Feature.FindMy.cowardlyCarrot(_:), v43);
      v49 = isFeatureEnabled(_:)();
      sub_100007BAC(v63);
      if (v49)
      {
        v50 = sub_101073410(v26);

        if ((v50 & 1) == 0)
        {
          sub_100DEB610(v63, 21);
LABEL_60:
          sub_100721D04(v21, type metadata accessor for OwnedBeaconRecord);
          v35 = v62;
          goto LABEL_61;
        }
      }

      else
      {
      }
    }

    else
    {

      v51 = v62;
      if (sub_10111F67C(4, v62))
      {
        sub_1010F6870(4);
        v51 = v62;
      }

      if (sub_10111F67C(5, v51))
      {
        sub_1010F6870(5);
      }
    }

    sub_1010F6870(21);
    goto LABEL_60;
  }

  if (swift_dynamicCast())
  {
    v30 = v58;
    sub_10002AB74(v17, v58, type metadata accessor for SharedBeaconRecord);
    v63[0] = &_swiftEmptySetSingleton;
    sub_100AC1584(v30 + v13[5], v8);
    v31 = type metadata accessor for BeaconProductInfoRecord(0);
    if ((*(*(v31 - 8) + 48))(v8, 1, v31) == 1)
    {
      sub_10000B3A8(v8, &unk_1016AF8C0, &unk_1013A07A0);
      v32 = *(v30 + v13[11]);
      if (v32 == -1)
      {
        if (*(v30 + v13[12]) == -1)
        {
          sub_100DEB610(&v66, 6);
          sub_100DEB610(&v66, 3);
          sub_100DEB610(&v66, 14);
          v53 = 15;
          goto LABEL_47;
        }
      }

      else if (v32 == 76)
      {
        v33 = *(v30 + v13[12]);
        if (!HIDWORD(v33) && (v33 == 22034 || v33 == 21760))
        {
          sub_100DEB610(&v66, 6);
          sub_100DEB610(&v66, 7);
          sub_100DEB610(&v66, 12);
          sub_100DEB610(&v66, 13);
LABEL_46:
          sub_100DEB610(&v66, 17);
          sub_100DEB610(&v66, 3);
          sub_100DEB610(&v66, 16);
          v53 = 5;
LABEL_47:
          sub_100DEB610(&v66, v53);
        }
      }

      if (*(v30 + v13[16]) == 5)
      {
        sub_100DEB610(&v66, 6);
        sub_1010F6870(7);
        sub_100DEB610(&v66, 3);
        if (*(v30 + v13[11]) != 76)
        {
          goto LABEL_57;
        }

        v54 = *(v30 + v13[12]);
        if (HIDWORD(v54) || v54 != 22034 && v54 != 21760)
        {
          goto LABEL_57;
        }

        sub_100DEB610(&v66, 12);
        v55 = 13;
      }

      else
      {
        v55 = 5;
      }

      sub_100DEB610(&v66, v55);
LABEL_57:
      sub_100721D04(v30, type metadata accessor for SharedBeaconRecord);
      v35 = v63[0];
      goto LABEL_61;
    }

    v52 = *&v8[*(v31 + 80)];
    sub_100721D04(v8, type metadata accessor for BeaconProductInfoRecord);
    if (v52)
    {
      sub_100DEB610(&v66, 6);
      sub_100DEB610(&v66, 7);
      if ((v52 & 0x400) == 0)
      {
LABEL_43:
        if ((v52 & 0x100) == 0)
        {
          goto LABEL_44;
        }

        goto LABEL_64;
      }
    }

    else if ((v52 & 0x400) == 0)
    {
      goto LABEL_43;
    }

    sub_100DEB610(&v66, 10);
    sub_100DEB610(&v66, 11);
    if ((v52 & 0x100) == 0)
    {
LABEL_44:
      if ((v52 & 0x4000) == 0)
      {
        goto LABEL_46;
      }

LABEL_45:
      sub_100DEB610(&v66, 22);
      sub_100DEB610(&v66, 23);
      goto LABEL_46;
    }

LABEL_64:
    sub_100DEB610(&v66, 12);
    sub_100DEB610(&v66, 13);
    if ((v52 & 0x4000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if (swift_dynamicCast())
  {
    v35 = sub_100B041C8(&off_1016076D8);
    sub_100721D04(v5, type metadata accessor for LocalFindableAccessoryRecord);
  }

  else
  {
    v35 = &_swiftEmptySetSingleton;
  }

LABEL_61:
  sub_100007BAC(v67);
  sub_100007BAC(v68);
  return v35;
}

uint64_t sub_1006FE27C()
{
  v1 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  v10 = *(v0 + v6);
  v11 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1006D4BC8(v7, v8, v9, v0 + v2, v0 + v5, v10, v11);
}

void sub_1006FE3BC(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1006D4F68(a1, v5, v1 + v4, v6);
}

void sub_1006FE4FC(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1006E3B70(a1, *(v1 + 16), v1 + v5, *(v1 + v6), v1 + ((v4 + v6 + 8) & ~v4), type metadata accessor for OwnedBeaconGroup, &qword_101699398, &qword_101391900, type metadata accessor for OwnedBeaconGroup, sub_1009F10FC, type metadata accessor for OwnedBeaconGroup);
}

uint64_t sub_1006FE608(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for UUID();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[6] = v3;
  *v3 = v1;
  v3[1] = sub_1006FE6F8;

  return daemon.getter();
}

uint64_t sub_1006FE6F8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 56) = a1;

  v3 = swift_task_alloc();
  *(v2 + 64) = v3;
  v4 = type metadata accessor for Daemon();
  found = type metadata accessor for NotifyWhenFoundManager();
  v6 = sub_100003E8C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100003E8C(&unk_1016B10A0, type metadata accessor for NotifyWhenFoundManager, &unk_10139D670);
  *v3 = v9;
  v3[1] = sub_1006FE8D4;

  return ActorServiceDaemon.getService<A>()(v4, found, v6, v7);
}

uint64_t sub_1006FE8D4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[9] = a1;
  v3[10] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1006FEEB4, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[11] = v5;
    *v5 = v4;
    v5[1] = sub_1006FEA64;
    v6 = v3[2];

    return sub_100039E1C(v6);
  }
}

uint64_t sub_1006FEA64()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1006FEBE0;
  }

  else
  {
    v2 = sub_1006FEB78;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1006FEB78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006FEBE0()
{
  v23 = v0;

  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177B7F8);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[4];
  v9 = v0[5];
  v11 = v0[3];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v12 = 141558531;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_1000136BC(v13, v15, &v22);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v17;
    *v20 = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to force publish for beacon %{private,mask.hash}s, error: %{public}@.", v12, 0x20u);
    sub_10000B3A8(v20, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v21);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_1006FEEB4()
{
  v23 = v0;

  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177B7F8);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[4];
  v9 = v0[5];
  v11 = v0[3];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v12 = 141558531;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_1000136BC(v13, v15, &v22);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v17;
    *v20 = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to force publish for beacon %{private,mask.hash}s, error: %{public}@.", v12, 0x20u);
    sub_10000B3A8(v20, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v21);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[1];

  return v18();
}

void sub_1006FF188(uint64_t a1, char *a2, uint64_t a3)
{
  v166 = a3;
  v5 = type metadata accessor for ShareRecord(0);
  v159 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v160 = &v144 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v145);
  v146 = &v144 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_1000BC4D4(&qword_1016A5978, &qword_101410D20);
  v152 = *(v158 - 8);
  __chkstk_darwin(v158);
  v151 = &v144 - v8;
  v9 = sub_1000BC4D4(&qword_1016A5980, &unk_1013B3480);
  __chkstk_darwin(v9 - 8);
  v150 = (&v144 - v10);
  v11 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  __chkstk_darwin(v11 - 8);
  v157 = &v144 - v12;
  v156 = sub_1000BC4D4(&qword_1016A7828, &unk_1013D7340);
  v149 = *(v156 - 8);
  __chkstk_darwin(v156);
  v147 = &v144 - v13;
  v14 = sub_1000BC4D4(&qword_1016A7830, &unk_1013D69E0);
  __chkstk_darwin(v14 - 8);
  v148 = (&v144 - v15);
  v16 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v16 - 8);
  v154 = &v144 - v17;
  v164 = type metadata accessor for OwnedBeaconRecord(0);
  v153 = *(v164 - 8);
  __chkstk_darwin(v164);
  v163 = &v144 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v19 - 8);
  v167 = &v144 - v20;
  v21 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v21 - 8);
  v170 = &v144 - v22;
  v23 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v23 - 8);
  v25 = &v144 - v24;
  v174 = type metadata accessor for DirectorySequence();
  v178 = *(v174 - 8);
  __chkstk_darwin(v174);
  v180 = &v144 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = type metadata accessor for URL();
  v177 = *(v172 - 8);
  v27 = __chkstk_darwin(v172);
  v155 = &v144 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v171 = &v144 - v30;
  v31 = __chkstk_darwin(v29);
  v173 = &v144 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = &v144 - v34;
  __chkstk_darwin(v33);
  v176 = &v144 - v36;
  v37 = static os_log_type_t.info.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v38 = qword_10177C370;
  v175 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v39 = swift_allocObject();
  v168 = xmmword_10138BBE0;
  *(v39 + 16) = xmmword_10138BBE0;
  v184 = *a2;
  sub_1000BC4D4(&qword_1016C1A50, &unk_1013A08C8);
  v40 = String.init<A>(describing:)();
  v42 = v41;
  *(v39 + 56) = &type metadata for String;
  v43 = sub_100008C00();
  *(v39 + 32) = v40;
  *(v39 + 40) = v42;
  *(v39 + 96) = &type metadata for String;
  *(v39 + 104) = v43;
  v169 = v43;
  *(v39 + 64) = v43;
  *(v39 + 72) = 0xD000000000000017;
  *(v39 + 80) = 0x800000010135D780;
  os_log(_:dso:log:_:_:)(v37, &_mh_execute_header, v38, "%@: %@", 6, 2, v39);

  v44 = *(a2 + 35);
  sub_100025020(a1, &v182);
  if (!v183)
  {
    sub_10000B3A8(&v182, &qword_101696920, &unk_10138B200);
    return;
  }

  sub_10000A748(&v182, &v184);
  v165 = v44;
  v179 = *(v44 + 168);
  v45 = objc_autoreleasePoolPush();
  if (qword_101694468 != -1)
  {
    swift_once();
  }

  v161 = a2;
  v46 = v172;
  sub_1000076D4(v172, qword_10177A518);
  v162 = a1;
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();

  objc_autoreleasePoolPop(v45);
  v181 = _swiftEmptyArrayStorage;
  *&v182 = _swiftEmptyArrayStorage;
  v47 = [objc_opt_self() defaultManager];
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  DirectorySequence.next()();
  v48 = v177;
  v49 = *(v177 + 48);
  if (v49(v25, 1, v46) != 1)
  {
    v50 = *(v48 + 32);
    do
    {
      v50(v35, v25, v46);
      v51 = objc_autoreleasePoolPush();
      sub_1005FF9CC(v35, v179, &v182, &v181);
      objc_autoreleasePoolPop(v51);
      (*(v48 + 8))(v35, v46);
      DirectorySequence.next()();
    }

    while (v49(v25, 1, v46) != 1);
  }

  (*(v178 + 8))(v180, v174);
  v52 = static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v53 = v46;
  v54 = static OS_os_log.default.getter();
  v55 = swift_allocObject();
  *(v55 + 16) = v168;
  v56 = v182;
  v57 = *(v182 + 16);
  *(v55 + 56) = &type metadata for Int;
  *(v55 + 64) = &protocol witness table for Int;
  *(v55 + 32) = v57;
  sub_100003E8C(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

  v58 = v176;
  v59 = dispatch thunk of CustomStringConvertible.description.getter();
  v60 = v169;
  *(v55 + 96) = &type metadata for String;
  *(v55 + 104) = v60;
  *(v55 + 72) = v59;
  *(v55 + 80) = v61;
  os_log(_:dso:log:_:_:)(v52, &_mh_execute_header, v54, "Found %i records at %@", 22, 2, v55);

  v62 = (v177 + 8);
  v179 = *(v177 + 8);
  v179(v58, v53);

  v63 = *(v56 + 16);
  v180 = v62;
  if (v63)
  {
    *&v182 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v64 = v56 + ((*(v159 + 80) + 32) & ~*(v159 + 80));
    v65 = *(v159 + 72);
    v66 = v160;
    do
    {
      sub_100721C9C(v64, v66, type metadata accessor for ShareRecord);
      sub_100156F5C();
      sub_100721D04(v66, type metadata accessor for ShareRecord);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v64 += v65;
      --v63;
    }

    while (v63);

    v67 = v182;
  }

  else
  {

    v67 = _swiftEmptyArrayStorage;
  }

  sub_10112A654(v67);

  v68 = v185;
  v69 = v186;
  v70 = sub_1000035D0(&v184, v185);
  v71 = sub_100B005BC(v70, v165, v68, v69);
  sub_100008BB8(0, &unk_1016BBE80, SPBeaconShare_ptr);
  sub_100009D18(&qword_101698BF0, &unk_1016BBE80, SPBeaconShare_ptr, &protocol conformance descriptor for NSObject);
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v71 setShares:isa];

  v73 = v161;
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v74 = v162;
  v75 = sub_1011A30E0(v162);
  [v71 setSeparationState:v75];

  v76 = type metadata accessor for UUID();
  v77 = *(v76 - 8);
  v78 = v170;
  (*(v77 + 16))(v170, v74, v76);
  v169 = v77;
  v79 = *(v77 + 56);
  v176 = v76;
  v79(v78, 0, 1, v76);
  v80 = sub_1009C75D0(4, v78);
  sub_10000B3A8(v78, &qword_1016980D0, &unk_10138F3B0);
  sub_10112A684(v80);

  sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
  sub_100009D18(qword_1016B1820, &unk_1016B1680, SPSafeLocation_ptr, &protocol conformance descriptor for NSObject);
  v81 = Set._bridgeToObjectiveC()().super.isa;

  [v71 setSafeLocations:v81];

  v82 = v185;
  v83 = v186;
  v84 = sub_1000035D0(&v184, v185);
  [v71 setCanBeLeashedByHost:{sub_100A05A00(v84, v73, v82, v83) & 1}];
  v85 = v73;
  [v71 setBeaconSeparationState:sub_1009C7E64(v74)];
  v86 = *(v73 + 40);
  v87 = v171;
  v88 = v173;
  if (v86)
  {
    v89 = *(v86 + 280);

    v90 = static os_log_type_t.info.getter();
    v91 = v178;
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v92 = qword_10177C378;
    v93 = swift_allocObject();
    *(v93 + 16) = xmmword_101385D80;
    *(v93 + 56) = &type metadata for Bool;
    *(v93 + 64) = &protocol witness table for Bool;
    *(v93 + 32) = v89;
    os_log(_:dso:log:_:_:)(v90, &_mh_execute_header, v92, "thisDeviceConnectionAllowed: %i", v144);

    [v71 setConnectionAllowed:v89];
    sub_10001F280(&v184, &v182);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    v94 = type metadata accessor for SharedBeaconRecord(0);
    v95 = v167;
    v96 = swift_dynamicCast();
    v97 = *(*(v94 - 8) + 56);
    if (v96)
    {
      v97(v95, 0, 1, v94);
      sub_10000B3A8(v95, &unk_101698C30, &unk_101392630);
      [v71 setConnectableDeviceCount:0];
LABEL_37:
      v143 = *(v166 + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_targetBeacon);
      *(v166 + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_targetBeacon) = v71;

      sub_100007BAC(&v184);
      return;
    }

    v97(v95, 1, 1, v94);
    sub_10000B3A8(v95, &unk_101698C30, &unk_101392630);
    sub_10001F280(&v184, &v182);
    v98 = v154;
    v99 = v164;
    v100 = swift_dynamicCast();
    v101 = *(v153 + 56);
    if ((v100 & 1) == 0)
    {
      v101(v98, 1, 1, v99);
      sub_10000B3A8(v98, &unk_1016A9A20, &qword_10138B280);
      goto LABEL_37;
    }

    v102 = v87;
    v167 = v71;
    v101(v98, 0, 1, v99);
    sub_10002AB74(v98, v163, type metadata accessor for OwnedBeaconRecord);
    v103 = *(v165 + 168);
    if (qword_101694EB8 != -1)
    {
      swift_once();
    }

    v104 = v172;
    v105 = sub_1000076D4(v172, qword_10177C0D8);
    v106 = *(v177 + 16);
    v106(v88, v105, v104);
    v107 = v102;
    v106(v102, v88, v104);
    v175 = *(v156 + 40);
    v108 = v156;
    v177 = *(v91 + 56);
    v109 = v147;
    (v177)(&v147[v175], 1, 1, v174);
    v106(v109, v107, v104);
    *(v109 + *(v108 + 36)) = v103;
    v170 = v106;
    v106(v155, v107, v104);

    v110 = v157;
    DirectorySequence.init(at:includingPropertiesForKeys:options:)();
    v111 = v107;
    v112 = v179;
    v179(v111, v104);
    v112(v173, v104);
    v178 = v91 + 56;
    (v177)(v110, 0, 1, v174);
    sub_10002311C(v110, v109 + v175, &qword_1016A5970, &unk_1013B3470);
    v113 = *(v149 + 56);
    v114 = v148;
    v115 = v156;
    v113(v148, 1, 1, v156);
    sub_10000B3A8(v114, &qword_1016A7838, &unk_1013EB250);
    sub_1000D2AD8(v109, v114, &qword_1016A7828, &unk_1013D7340);
    v113(v114, 0, 1, v115);
    v175 = sub_100B34BBC(v114);
    sub_10000B3A8(v114, &qword_1016A7830, &unk_1013D69E0);
    v116 = *(v165 + 168);
    if (qword_101694680 != -1)
    {
      swift_once();
    }

    v117 = sub_1000076D4(v104, qword_10177AC60);
    v118 = v173;
    v119 = v170;
    (v170)(v173, v117, v104);
    v120 = v171;
    (v119)(v171, v118, v104);
    *&v168 = *(v158 + 40);
    v121 = v158;
    v122 = v151;
    v123 = v177;
    (v177)(&v151[v168], 1, 1, v174);
    (v119)(v122, v120, v104);
    *(v122 + *(v121 + 36)) = v116;
    (v119)(v155, v120, v104);

    v124 = v157;
    DirectorySequence.init(at:includingPropertiesForKeys:options:)();
    v125 = v179;
    v179(v120, v104);
    v125(v173, v104);
    v123(v124, 0, 1, v174);
    sub_10002311C(v124, v122 + v168, &qword_1016A5970, &unk_1013B3470);
    v126 = *(v152 + 56);
    v127 = v150;
    v128 = v158;
    v126(v150, 1, 1, v158);
    sub_10000B3A8(v127, &qword_1016A5988, &qword_1013B3490);
    sub_1000D2AD8(v122, v127, &qword_1016A5978, &qword_101410D20);
    v126(v127, 0, 1, v128);
    v129 = sub_100B33E08(v127);
    v130 = sub_10000B3A8(v127, &qword_1016A5980, &unk_1013B3480);
    __chkstk_darwin(v130);
    v131 = v162;
    *(&v144 - 2) = v162;
    v85 = sub_10013CF58(sub_100721E70, (&v144 - 8), v175)[2];

    __chkstk_darwin(v132);
    *(&v144 - 2) = v131;
    v133 = sub_10013CEF0(sub_10062CF74, (&v144 - 8), v129)[2];

    v134 = &v85[v133];
    if (__OFADD__(v85, v133))
    {
      __break(1u);
    }

    else
    {
      v135 = v161;
      CurrentValueSubject.value.getter();
      v136 = v182;
      v85 = v135;
      sub_10069CA80(v131, v182);
      v137 = v146;
      v71 = v167;
      if (!__OFADD__(v136, v134))
      {
        [v167 setConnectableDeviceCount:&v134[v136]];
        sub_100721C9C(v163 + *(v164 + 24), v137, type metadata accessor for StableIdentifier);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload == 1)
        {

          v140 = String._bridgeToObjectiveC()();

          [v71 setSerialNumber:v140];

          v141 = type metadata accessor for OwnedBeaconRecord;
          v142 = v163;
        }

        else
        {
          if (EnumCaseMultiPayload == 2)
          {
            sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

            v139 = String._bridgeToObjectiveC()();

            [v71 setSerialNumber:v139];

            sub_100721D04(v163, type metadata accessor for OwnedBeaconRecord);
            (*(v169 + 8))(v137, v176);
            goto LABEL_37;
          }

          [v71 setSerialNumber:0];
          sub_100721D04(v163, type metadata accessor for OwnedBeaconRecord);
          v141 = type metadata accessor for StableIdentifier;
          v142 = v137;
        }

        sub_100721D04(v142, v141);
        goto LABEL_37;
      }
    }

    __break(1u);
  }

  __break(1u);

  objc_autoreleasePoolPop(v85);
  __break(1u);
}