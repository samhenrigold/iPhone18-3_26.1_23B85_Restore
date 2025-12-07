id sub_100106284()
{
  type metadata accessor for DeviceRecord(0);
  v0 = objc_allocWithZone(BTCloudDevice);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithBluetoothAddress:v1];

  v3 = String._bridgeToObjectiveC()();
  [v2 setNickname:v3];

  v4 = String._bridgeToObjectiveC()();
  [v2 setModelNumber:v4];

  v5 = String._bridgeToObjectiveC()();
  [v2 setManufacturer:v5];

  v6 = String._bridgeToObjectiveC()();
  [v2 setProductID:v6];

  v7 = String._bridgeToObjectiveC()();
  [v2 setVendorID:v7];

  return v2;
}

void sub_100106440(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = type metadata accessor for URL();
  v9 = *(v55 - 8);
  __chkstk_darwin(v55);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DeviceRecord(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v53 = v46 - v17;
  __chkstk_darwin(v18);
  v54 = v46 - v19;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    a2();
    return;
  }

  v51 = a3;
  v52 = a2;
  v20 = static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v21 = qword_100300E30;
    v48 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v22 = swift_allocObject();
    v47 = xmmword_100226100;
    *(v22 + 16) = xmmword_100226100;
    *(v22 + 56) = &type metadata for String;
    v49 = sub_1000EE954();
    *(v22 + 64) = v49;
    *(v22 + 32) = a4;
    *(v22 + 40) = a5;

    v50 = v21;
    os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v21, "fetchDevice: %@", 15, 2, v22);

    v23 = sub_100103934();
    if (![objc_opt_self() isFirstUnlocked])
    {
      break;
    }

    sub_100192340();
    v46[1] = v23;
    if (qword_1002F79C0 != -1)
    {
      swift_once();
    }

    v24 = v55;
    v25 = sub_1000EE91C(v55, qword_100300AF0);
    (*(v9 + 16))(v11, v25, v24);
    v20 = sub_10018B20C(v11);

    v26 = *(v9 + 8);
    v9 += 8;
    v26(v11, v24);
    v27 = v52;
    v11 = v20[2];
    if (!v11)
    {
      goto LABEL_20;
    }

LABEL_12:
    v29 = 0;
    while (v29 < v20[2])
    {
      sub_100115124(v20 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v29, v15, type metadata accessor for DeviceRecord);
      v30 = &v15[*(v12 + 24)];
      v31 = *v30 == a4 && *(v30 + 1) == a5;
      if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v35 = v15;
        v36 = v53;
        sub_100114F1C(v35, v53, type metadata accessor for DeviceRecord);
        v37 = v54;
        sub_100114F1C(v36, v54, type metadata accessor for DeviceRecord);
        v38 = static os_log_type_t.default.getter();
        v39 = swift_allocObject();
        *(v39 + 16) = v47;
        v40 = sub_1000EA6CC();
        v42 = v49;
        v41 = v50;
        *(v39 + 56) = &type metadata for String;
        *(v39 + 64) = v42;
        *(v39 + 32) = v40;
        *(v39 + 40) = v43;
        os_log(_:dso:log:_:_:)(v38, &_mh_execute_header, v41, "Found device: %@", 16, 2, v39);

        v44 = sub_100106284();
        v27();

        sub_1001150A8(v37, type metadata accessor for DeviceRecord);
        return;
      }

      ++v29;
      sub_1001150A8(v15, type metadata accessor for DeviceRecord);
      if (v11 == v29)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_23:
    swift_once();
  }

  v28 = static os_log_type_t.error.getter();
  v27 = v52;
  if (qword_1002F7AE8 != -1)
  {
    v45 = v28;
    swift_once();
    v28 = v45;
  }

  v20 = _swiftEmptyArrayStorage;
  os_log(_:dso:log:_:_:)(v28, &_mh_execute_header, qword_100300E38, "deviceRecords call failed because in device is in beforeFirstUnlock state", 73, 2, _swiftEmptyArrayStorage);

  v11 = _swiftEmptyArrayStorage[2];
  if (v11)
  {
    goto LABEL_12;
  }

LABEL_20:

  v32 = static os_log_type_t.debug.getter();
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  v34 = v49;
  *(v33 + 56) = &type metadata for String;
  *(v33 + 64) = v34;
  *(v33 + 32) = a4;
  *(v33 + 40) = a5;

  os_log(_:dso:log:_:_:)(v32, &_mh_execute_header, v50, "Device not found - %@", 21, 2, v33);

  (v27)(0);
}

uint64_t sub_100106A90(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  v5 = *&v2[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue];
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v2;
  v6[5] = &v15;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_10011500C;
  *(v7 + 24) = v6;
  aBlock[4] = sub_1001156A8;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100174328;
  aBlock[3] = &unk_1002BD348;
  v8 = _Block_copy(aBlock);
  v9 = v5;

  v10 = v2;

  dispatch_sync(v9, v8);

  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v13 = v15;

    return v13;
  }

  return result;
}

void sub_100106C1C(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v47 = a4;
  v48 = type metadata accessor for URL();
  v6 = *(v48 - 8);
  __chkstk_darwin(v48);
  v49 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DeviceRecord(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v45 = &v44 - v13;
  __chkstk_darwin(v14);
  v46 = &v44 - v15;
  v16 = static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v17 = qword_100300E30;
    v51 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v18 = swift_allocObject();
    v50 = xmmword_100226100;
    *(v18 + 16) = xmmword_100226100;
    *(v18 + 56) = &type metadata for String;
    v52 = sub_1000EE954();
    *(v18 + 64) = v52;
    *(v18 + 32) = a1;
    *(v18 + 40) = a2;

    v53 = v17;
    os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v17, "fetchDeviceSync: %@", 19, 2, v18);

    v19 = sub_100103934();
    if (![objc_opt_self() isFirstUnlocked])
    {
      break;
    }

    sub_100192340();
    v44 = v19;
    if (qword_1002F79C0 != -1)
    {
      swift_once();
    }

    v20 = v48;
    v21 = sub_1000EE91C(v48, qword_100300AF0);
    v16 = v49;
    (*(v6 + 16))(v49, v21, v20);
    v22 = sub_10018B20C(v16);

    v23 = *(v6 + 8);
    v6 += 8;
    v23(v16, v20);
    v24 = v22[2];
    if (!v24)
    {
      goto LABEL_18;
    }

LABEL_10:
    v26 = 0;
    while (v26 < v22[2])
    {
      sub_100115124(v22 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v26, v11, type metadata accessor for DeviceRecord);
      v27 = &v11[*(v8 + 24)];
      v28 = *v27 == a1 && *(v27 + 1) == a2;
      if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v32 = v45;
        sub_100114F1C(v11, v45, type metadata accessor for DeviceRecord);
        v33 = v32;
        v34 = v46;
        sub_100114F1C(v33, v46, type metadata accessor for DeviceRecord);
        v35 = static os_log_type_t.default.getter();
        v36 = swift_allocObject();
        *(v36 + 16) = v50;
        v37 = sub_1000EA6CC();
        v39 = v52;
        v38 = v53;
        *(v36 + 56) = &type metadata for String;
        *(v36 + 64) = v39;
        *(v36 + 32) = v37;
        *(v36 + 40) = v40;
        os_log(_:dso:log:_:_:)(v35, &_mh_execute_header, v38, "Found device: %@", 16, 2, v36);

        v41 = sub_100106284();
        sub_1001150A8(v34, type metadata accessor for DeviceRecord);
        v42 = *v47;
        *v47 = v41;

        return;
      }

      ++v26;
      sub_1001150A8(v11, type metadata accessor for DeviceRecord);
      if (v24 == v26)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
  }

  v25 = static os_log_type_t.error.getter();
  if (qword_1002F7AE8 != -1)
  {
    v43 = v25;
    swift_once();
    v25 = v43;
  }

  v22 = _swiftEmptyArrayStorage;
  os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, qword_100300E38, "deviceRecords call failed because in device is in beforeFirstUnlock state", 73, 2, _swiftEmptyArrayStorage, v44);

  v24 = _swiftEmptyArrayStorage[2];
  if (v24)
  {
    goto LABEL_10;
  }

LABEL_18:

  v29 = static os_log_type_t.debug.getter();
  v30 = swift_allocObject();
  *(v30 + 16) = v50;
  v31 = v52;
  *(v30 + 56) = &type metadata for String;
  *(v30 + 64) = v31;
  *(v30 + 32) = a1;
  *(v30 + 40) = a2;

  os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, v53, "Device not found - %@", 21, 2, v30);
}

uint64_t sub_10010724C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v17 = *(v7 - 8);
  v18 = v7;
  __chkstk_darwin(v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  aBlock[4] = sub_100115004;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = &unk_1002BD2D0;
  v13 = _Block_copy(aBlock);
  v14 = v10;

  v15 = a1;
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_100114C58(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_100115260(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v19 + 8))(v6, v4);
  (*(v17 + 8))(v9, v18);
}

void *sub_100107550(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_100103934();
    sub_1001A3FE0(a2);
  }

  return result;
}

uint64_t sub_100107650(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v16 = *(v8 - 8);
  v17 = v8;
  __chkstk_darwin(v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = a1;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = a2;
  v13 = _Block_copy(aBlock);
  v14 = v11;

  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_100114C58(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_100115260(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v18 + 8))(v7, v5);
  (*(v16 + 8))(v10, v17);
}

void *sub_100107920(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    sub_100103934();
    sub_1001A43D0();
  }

  return result;
}

void sub_1001079F8(uint64_t a1, void (*a2)(void, unint64_t))
{
  v3 = sub_1000EE870(&qword_1002F8500, &qword_100227B38);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for LegacyAccountMagicKeysRecord(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_100103934();
    sub_100192464(v5);

    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_1000EEE6C(v5, &qword_1002F8500, &qword_100227B38);
      a2(0, 0xF000000000000000);
    }

    else
    {
      sub_100114F1C(v5, v9, type metadata accessor for LegacyAccountMagicKeysRecord);
      a2(*&v9[*(v6 + 20)], *&v9[*(v6 + 20) + 8]);

      sub_1001150A8(v9, type metadata accessor for LegacyAccountMagicKeysRecord);
    }
  }

  else
  {
    a2(0, 0xF000000000000000);
  }
}

uint64_t sub_100107C3C(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

void sub_100107CD0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v5 = isa;
  (*(a3 + 16))(a3);
}

void sub_100107D64(uint64_t a1, void (*a2)(void), uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_1000F29F8();
    swift_allocError();
    *v30 = 0;
    a2();
LABEL_13:

    return;
  }

  v44 = Strong;
  v45 = a3;
  v46 = a2;
  v8 = static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  v9 = qword_100300E30;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100226C80;
  v11 = [a4 bluetoothAddress];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  *(v10 + 56) = &type metadata for String;
  v15 = sub_1000EE954();
  *(v10 + 64) = v15;
  *(v10 + 32) = v12;
  *(v10 + 40) = v14;
  v16 = a4;
  v17 = [v16 description];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  *(v10 + 96) = &type metadata for String;
  *(v10 + 104) = v15;
  *(v10 + 72) = v18;
  *(v10 + 80) = v20;
  os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "addDevice(%@): %@", 17, 2, v10);

  v21 = [v16 bluetoothAddress];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {
LABEL_12:
    v32 = static os_log_type_t.error.getter();
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_100226C80;
    v34 = [v16 bluetoothAddress];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = v15;
    *(v33 + 32) = v35;
    *(v33 + 40) = v37;
    v38 = v16;
    v39 = [v38 description];
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    *(v33 + 96) = &type metadata for String;
    *(v33 + 104) = v15;
    *(v33 + 72) = v40;
    *(v33 + 80) = v42;
    os_log(_:dso:log:_:_:)(v32, &_mh_execute_header, v9, "Invalid BT Address for addDevice(%@): %@", 40, 2, v33);

    sub_1000F29F8();
    swift_allocError();
    *v43 = 1;
    v46();

    goto LABEL_13;
  }

  v26 = [v16 bluetoothAddress];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  if (v27 == 0xD000000000000011 && 0x8000000100267AA0 == v29)
  {

    goto LABEL_12;
  }

  v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v31)
  {
    goto LABEL_12;
  }

  sub_100103934();
  sub_1001A4748(v16, v46, v45);
}

void sub_1001081A4(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_1000F29F8();
    swift_allocError();
    *v18 = 0;
    (a2)();
LABEL_13:

    return;
  }

  v8 = Strong;
  v9 = [a4 bluetoothAddress];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {
LABEL_10:
    v20 = static os_log_type_t.error.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    v21 = qword_100300E30;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_100226C80;
    v23 = [a4 bluetoothAddress];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    *(v22 + 56) = &type metadata for String;
    v27 = sub_1000EE954();
    *(v22 + 64) = v27;
    *(v22 + 32) = v24;
    *(v22 + 40) = v26;
    v28 = a4;
    v29 = [v28 description];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    *(v22 + 96) = &type metadata for String;
    *(v22 + 104) = v27;
    *(v22 + 72) = v30;
    *(v22 + 80) = v32;
    os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v21, "Invalid BT Address for addDevice(%@): %@", 40, 2, v22);

    sub_1000F29F8();
    swift_allocError();
    *v33 = 1;
    (a2)();

    goto LABEL_13;
  }

  v14 = [a4 bluetoothAddress];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (v15 == 0xD000000000000011 && 0x8000000100267AA0 == v17)
  {

    goto LABEL_10;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
    goto LABEL_10;
  }

  v34 = static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  v35 = qword_100300E30;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_100226100;
  v37 = a4;
  v38 = [v37 description];
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  *(v36 + 56) = &type metadata for String;
  *(v36 + 64) = sub_1000EE954();
  *(v36 + 32) = v39;
  *(v36 + 40) = v41;
  os_log(_:dso:log:_:_:)(v34, &_mh_execute_header, v35, "CloudSync: updateDevice: %@", 27, 2, v36);

  sub_100103934();
  sub_1001A4748(v37, a2, a3);
}

uint64_t sub_1001085D0(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

uint64_t sub_1001086A0(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v59 = a4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for DeviceRecord(0);
  v10 = *(v60 - 8);
  __chkstk_darwin(v60);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v50 - v14;
  __chkstk_darwin(v16);
  v18 = &v50 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v55 = v6;
    v56 = a3;
    v53 = v9;
    v54 = v7;
    v51 = v15;
    v52 = v18;
    v19 = static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      goto LABEL_25;
    }

    while (1)
    {
      v20 = qword_100300E30;
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_100226100;
      v22 = v59;
      v23 = [v22 description];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;
      v59 = v22;

      *(v21 + 56) = &type metadata for String;
      *(v21 + 64) = sub_1000EE954();
      *(v21 + 32) = v24;
      *(v21 + 40) = v26;
      os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, v20, "CloudSync: removeDevice: %@", 27, 2, v21);

      v19 = sub_100103934();
      v27 = [objc_opt_self() isFirstUnlocked];
      v57 = a2;
      if (v27)
      {
        sub_100192340();
        if (qword_1002F79C0 != -1)
        {
          swift_once();
        }

        v28 = v55;
        v29 = sub_1000EE91C(v55, qword_100300AF0);
        v31 = v53;
        v30 = v54;
        (*(v54 + 16))(v53, v29, v28);
        v32 = sub_10018B20C(v31);

        (*(v30 + 8))(v31, v28);
        v33 = v32[2];
        if (!v33)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v35 = static os_log_type_t.error.getter();
        if (qword_1002F7AE8 != -1)
        {
          v49 = v35;
          swift_once();
          v35 = v49;
        }

        v32 = _swiftEmptyArrayStorage;
        os_log(_:dso:log:_:_:)(v35, &_mh_execute_header, qword_100300E38, "deviceRecords call failed because in device is in beforeFirstUnlock state", 73, 2, _swiftEmptyArrayStorage);

        v33 = _swiftEmptyArrayStorage[2];
        if (!v33)
        {
LABEL_20:

          sub_1000F29F8();
          swift_allocError();
          *v44 = 3;
          v57();
        }
      }

      a2 = 0;
      while (a2 < v32[2])
      {
        sub_100115124(v32 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * a2, v12, type metadata accessor for DeviceRecord);
        v36 = &v12[*(v60 + 24)];
        v37 = *v36;
        v38 = *(v36 + 1);
        v19 = [v59 bluetoothAddress];
        v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = v40;

        if (v37 == v39 && v38 == v41)
        {

LABEL_23:

          v46 = v51;
          v47 = v52;
          sub_100114F1C(v12, v51, type metadata accessor for DeviceRecord);
          sub_100114F1C(v46, v47, type metadata accessor for DeviceRecord);
          v48 = Strong;

          sub_1001A68A8(v47, v57, v56);

          return sub_1001150A8(v47, type metadata accessor for DeviceRecord);
        }

        v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v43)
        {
          goto LABEL_23;
        }

        ++a2;
        sub_1001150A8(v12, type metadata accessor for DeviceRecord);
        if (v33 == a2)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_25:
      swift_once();
    }
  }

  sub_1000F29F8();
  swift_allocError();
  *v34 = 0;
  (a2)();
}

uint64_t sub_100108D34(void *a1, int a2, uint64_t a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = _Block_copy(aBlock);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  v15 = a1;
  a7(v11, v13, a6, v14);
}

void sub_100108E1C(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v5 = sub_1000EE870(&qword_1002F8510, &unk_100227B50);
  __chkstk_darwin(v5 - 8);
  v7 = v68 - v6;
  v83 = type metadata accessor for BTDeferredRecord(0);
  v8 = *(v83 - 8);
  __chkstk_darwin(v83);
  v71 = v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v74 = v68 - v11;
  __chkstk_darwin(v12);
  v14 = v68 - v13;
  v82 = type metadata accessor for DeviceSupportInformationRecord(0);
  *&v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v70 = v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v68 - v17;
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v68[2] = a3;
    v69 = a2;
    v23 = static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      goto LABEL_64;
    }

    while (1)
    {
      v73 = qword_100300E30;
      os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, qword_100300E30, "fetchDeviceSupportInformationRecords", 36, 2, _swiftEmptyArrayStorage);
      v84 = _swiftEmptyArrayStorage;
      sub_100103934();
      if ([objc_opt_self() isFirstUnlocked])
      {
        sub_100192340();
        if (qword_1002F7A68 != -1)
        {
          swift_once();
        }

        v24 = sub_1000EE91C(v19, qword_100300D48);
        (*(v20 + 16))(v22, v24, v19);
        v25 = sub_10018BDC8(v22);

        v23 = (*(v20 + 8))(v22, v19);
      }

      else
      {
        v26 = static os_log_type_t.error.getter();
        if (qword_1002F7AE8 != -1)
        {
          v67 = v26;
          swift_once();
          v26 = v67;
        }

        v25 = _swiftEmptyArrayStorage;
        os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, qword_100300E38, "deviceSupportInformationRecords call failed because in device is in beforeFirstUnlock state", 91, 2, _swiftEmptyArrayStorage);
      }

      v19 = &qword_1002F8000;
      v79 = v25[2];
      v75 = v7;
      if (!v79)
      {
        break;
      }

      v20 = 0;
      v77 = (v25 + ((*(v80 + 80) + 32) & ~*(v80 + 80)));
      v78 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager____lazy_storage___deviceStore;
      v76 = _swiftEmptyArrayStorage;
      v72 = v25;
      while (v20 < v25[2])
      {
        sub_100115124(v77 + *(v80 + 72) * v20, v18, type metadata accessor for DeviceSupportInformationRecord);
        v19 = *&Strong[v78];

        v27 = sub_10019391C();

        v22 = v27[2];
        if (v22)
        {
          v28 = 0;
          v7 = v27 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
          while (v28 < v27[2])
          {
            sub_100115124(&v7[*(v8 + 72) * v28], v14, type metadata accessor for BTDeferredRecord);
            v29 = *(v14 + 1) == 0xD00000000000001ELL && 0x80000001002671E0 == *(v14 + 2);
            if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((v30 = &v14[*(v83 + 28)], v31 = *v30, v32 = *(v30 + 1), v33 = &v18[*(v82 + 24)], v31 == *v33) ? (v34 = v32 == *(v33 + 1)) : (v34 = 0), v34 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
            {
              if (*v14 == 1)
              {

                sub_1001150A8(v14, type metadata accessor for BTDeferredRecord);
LABEL_14:

                v7 = v75;
                v25 = v72;
                goto LABEL_15;
              }

              v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v23 = sub_1001150A8(v14, type metadata accessor for BTDeferredRecord);
              if (v19)
              {
                goto LABEL_14;
              }
            }

            else
            {
              v23 = sub_1001150A8(v14, type metadata accessor for BTDeferredRecord);
            }

            if (v22 == ++v28)
            {

              v7 = v75;
              v25 = v72;
              goto LABEL_37;
            }
          }

          __break(1u);
          break;
        }

LABEL_37:
        v19 = sub_100109B20();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v22 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v22 >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v76 = v84;
LABEL_15:
        ++v20;
        v23 = sub_1001150A8(v18, type metadata accessor for DeviceSupportInformationRecord);
        if (v20 == v79)
        {

          goto LABEL_42;
        }
      }

      __break(1u);
LABEL_64:
      v66 = v23;
      swift_once();
      v23 = v66;
    }

    v76 = _swiftEmptyArrayStorage;
LABEL_42:

    v35 = sub_10019391C();

    v36 = v35[2];
    v37 = v74;
    if (v36)
    {
      v78 = 0;
      v38 = 0x80000001002671E0;
      v39 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v68[1] = v35;
      v40 = v35 + v39;
      v79 = *(v8 + 72);
      v77 = (v80 + 56);
      v80 = xmmword_100226100;
      v41 = v82;
      v72 = 0x80000001002671E0;
      do
      {
        sub_100115124(v40, v37, type metadata accessor for BTDeferredRecord);
        v47 = *(v37 + 8) == 0xD00000000000001ELL && v38 == *(v37 + 16);
        if (!v47 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_46;
        }

        if (*v37)
        {
          v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v48 & 1) == 0)
          {
            goto LABEL_46;
          }
        }

        else
        {
        }

        v49 = v37 + *(v83 + 36);
        v50 = *(v49 + 8);
        if (v50 >> 60 != 15)
        {
          v51 = *v49;
          sub_1000EE9F4(*v49, *(v49 + 8));
          v52 = objc_autoreleasePoolPush();
          type metadata accessor for PropertyListDecoder();
          swift_allocObject();
          PropertyListDecoder.init()();
          sub_100114C58(&unk_1002F8C30, type metadata accessor for DeviceSupportInformationRecord, &unk_100228BD8);
          v53 = v78;
          dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
          if (!v53)
          {
            v76 = v51;
            v78 = 0;

            objc_autoreleasePoolPop(v52);
            (*v77)(v7, 0, 1, v41);
            v54 = v70;
            sub_100114F1C(v7, v70, type metadata accessor for DeviceSupportInformationRecord);
            v55 = static os_log_type_t.default.getter();
            sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
            v56 = swift_allocObject();
            *(v56 + 16) = v80;
            v57 = sub_100133818();
            v59 = v58;
            *(v56 + 56) = &type metadata for String;
            *(v56 + 64) = sub_1000EE954();
            *(v56 + 32) = v57;
            *(v56 + 40) = v59;
            os_log(_:dso:log:_:_:)(v55, &_mh_execute_header, v73, "Construct deferred BTCloudDeviceSupportInformation - %@", 55, 2, v56);

            sub_100109B20();
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              v54 = v70;
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            sub_1000FF5CC(v76, v50);
            sub_1001150A8(v54, type metadata accessor for DeviceSupportInformationRecord);
            v76 = v84;
            v37 = v74;
            v7 = v75;
            v41 = v82;
            v38 = v72;
            goto LABEL_46;
          }

          objc_autoreleasePoolPop(v52);
          sub_1000FF5CC(v51, v50);
          (*v77)(v7, 1, 1, v41);
          sub_1000EEE6C(v7, &qword_1002F8510, &unk_100227B50);
          v78 = 0;
        }

        v42 = static os_log_type_t.default.getter();
        sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
        v43 = swift_allocObject();
        *(v43 + 16) = v80;
        v37 = v74;
        sub_100115124(v74, v71, type metadata accessor for BTDeferredRecord);
        v44 = String.init<A>(describing:)();
        v46 = v45;
        *(v43 + 56) = &type metadata for String;
        *(v43 + 64) = sub_1000EE954();
        *(v43 + 32) = v44;
        *(v43 + 40) = v46;
        os_log(_:dso:log:_:_:)(v42, &_mh_execute_header, v73, "Unable to contruct deferred BTCloudDeviceSupportInformation - %@", 64, 2, v43);

        v41 = v82;
LABEL_46:
        sub_1001150A8(v37, type metadata accessor for BTDeferredRecord);
        v40 += v79;
        --v36;
      }

      while (v36);
    }

    v60 = static os_log_type_t.debug.getter();
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_100226100;
    sub_1000FA784(0, &qword_1002F8518, BTCloudDeviceSupportInformation_ptr);
    v62 = v76;
    v63 = Array.description.getter();
    v65 = v64;
    *(v61 + 56) = &type metadata for String;
    *(v61 + 64) = sub_1000EE954();
    *(v61 + 32) = v63;
    *(v61 + 40) = v65;
    os_log(_:dso:log:_:_:)(v60, &_mh_execute_header, v73, "fetched DeviceSupportInfo List - %@", 35, 2, v61);

    (v69)(v62);
  }

  else
  {
    a2();
  }
}

id sub_100109B20()
{
  type metadata accessor for DeviceSupportInformationRecord(0);
  v0 = objc_allocWithZone(BTCloudDeviceSupportInformation);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithBluetoothAddress:v1];

  v3 = String._bridgeToObjectiveC()();
  [v2 setBudsFirmwareVersion:v3];

  v4 = String._bridgeToObjectiveC()();
  [v2 setCaseName:v4];

  v5 = String._bridgeToObjectiveC()();
  [v2 setCaseFirmwareVersion:v5];

  v6 = String._bridgeToObjectiveC()();
  [v2 setCaseSerialNumber:v6];

  v7 = String._bridgeToObjectiveC()();
  [v2 setHardwareVersion:v7];

  v8 = String._bridgeToObjectiveC()();
  [v2 setLeftBudSerialNumber:v8];

  v9 = String._bridgeToObjectiveC()();
  [v2 setRightBudSerialNumber:v9];

  v10 = String._bridgeToObjectiveC()();
  [v2 setAncAssetVersion:v10];

  return v2;
}

void sub_100109D38(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  if (a1)
  {
    sub_1000FA784(0, a3, a4);
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  isa = v5.super.isa;
  (*(a2 + 16))(a2);
}

void sub_100109DE0(uint64_t a1, void (*a2)(void), unint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000EE870(&qword_1002F8510, &unk_100227B50);
  __chkstk_darwin(v9 - 8);
  v122 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v118 - v12;
  v14 = type metadata accessor for URL();
  v130 = *(v14 - 8);
  v131 = v14;
  __chkstk_darwin(v14);
  v129 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DeviceSupportInformationRecord(0);
  v140 = *(v16 - 8);
  __chkstk_darwin(v16);
  v121 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v123 = &v118 - v19;
  __chkstk_darwin(v20);
  v139 = &v118 - v21;
  __chkstk_darwin(v22);
  v124 = &v118 - v23;
  __chkstk_darwin(v24);
  v125 = &v118 - v25;
  v141 = type metadata accessor for BTDeferredRecord(0);
  v26 = *(v141 - 8);
  __chkstk_darwin(v141);
  v134 = &v118 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v118 - v29;
  __chkstk_darwin(v31);
  v127 = &v118 - v32;
  __chkstk_darwin(v33);
  v128 = &v118 - v34;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v36 = Strong;
    v119 = v13;
    v126 = v16;
    v37 = static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      goto LABEL_57;
    }

    while (1)
    {
      v38 = qword_100300E30;
      v135 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v39 = swift_allocObject();
      v136 = xmmword_100226100;
      *(v39 + 16) = xmmword_100226100;
      *(v39 + 56) = &type metadata for String;
      v137 = sub_1000EE954();
      *(v39 + 64) = v137;
      *(v39 + 32) = a4;
      *(v39 + 40) = a5;

      v133 = v38;
      os_log(_:dso:log:_:_:)(v37, &_mh_execute_header, v38, "fetchDeviceSupportInformationRecord: %@", 39, 2, v39);

      sub_100103934();
      v37 = sub_10019391C();

      v40 = v37[2];
      v132 = a3;
      v138 = v36;
      if (v40)
      {
        break;
      }

LABEL_25:
      v64 = objc_opt_self();

      v65 = [v64 isFirstUnlocked];
      v30 = v139;
      v26 = v140;
      if (v65)
      {
        v66 = a2;
        sub_100192340();
        if (qword_1002F7A68 != -1)
        {
          swift_once();
        }

        v67 = v131;
        v68 = sub_1000EE91C(v131, qword_100300D48);
        v69 = v129;
        v70 = v130;
        (*(v130 + 16))(v129, v68, v67);
        v37 = sub_10018BDC8(v69);

        (*(v70 + 8))(v69, v67);
        v71 = v126;
        a2 = v66;
        a3 = v132;
        v30 = v139;
        v36 = v37[2];
        if (!v36)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v72 = static os_log_type_t.error.getter();
        v71 = v126;
        if (qword_1002F7AE8 != -1)
        {
          v116 = v72;
          swift_once();
          v72 = v116;
        }

        v37 = _swiftEmptyArrayStorage;
        os_log(_:dso:log:_:_:)(v72, &_mh_execute_header, qword_100300E38, "deviceSupportInformationRecords call failed because in device is in beforeFirstUnlock state", 91, 2, _swiftEmptyArrayStorage);

        v36 = _swiftEmptyArrayStorage[2];
        if (!v36)
        {
LABEL_41:

          v76 = static os_log_type_t.debug.getter();
          v77 = swift_allocObject();
          *(v77 + 16) = v136;
          v78 = v137;
          *(v77 + 56) = &type metadata for String;
          *(v77 + 64) = v78;
          *(v77 + 32) = a4;
          *(v77 + 40) = a5;

          os_log(_:dso:log:_:_:)(v76, &_mh_execute_header, v133, "Device info not found - %@", 26, 2, v77);

          (a2)(0);

          return;
        }
      }

      v73 = 0;
      while (v73 < v37[2])
      {
        sub_100115124(v37 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v73, v30, type metadata accessor for DeviceSupportInformationRecord);
        v74 = &v30[*(v71 + 24)];
        v75 = *v74 == a4 && *(v74 + 1) == a5;
        if (v75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v79 = v124;
          sub_100114F1C(v30, v124, type metadata accessor for DeviceSupportInformationRecord);
          v80 = v125;
          sub_100114F1C(v79, v125, type metadata accessor for DeviceSupportInformationRecord);
          v81 = static os_log_type_t.default.getter();
          v82 = swift_allocObject();
          *(v82 + 16) = v136;
          v83 = (v80 + *(v71 + 24));
          v85 = *v83;
          v84 = v83[1];
          v86 = v137;
          *(v82 + 56) = &type metadata for String;
          *(v82 + 64) = v86;
          *(v82 + 32) = v85;
          *(v82 + 40) = v84;

          os_log(_:dso:log:_:_:)(v81, &_mh_execute_header, v133, "Found device info: %@", 21, 2, v82);

          v87 = sub_100109B20();
          a2();

          v88 = type metadata accessor for DeviceSupportInformationRecord;
          v89 = v80;
          goto LABEL_54;
        }

        ++v73;
        sub_1001150A8(v30, type metadata accessor for DeviceSupportInformationRecord);
        if (v36 == v73)
        {
          goto LABEL_41;
        }
      }

LABEL_56:
      __break(1u);
LABEL_57:
      swift_once();
    }

    v120 = a2;
    a3 = 0;
    a2 = 0xD00000000000001ELL;
    v36 = v37 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    while (1)
    {
      if (a3 >= v37[2])
      {
        __break(1u);
        goto LABEL_56;
      }

      sub_100115124(&v36[*(v26 + 72) * a3], v30, type metadata accessor for BTDeferredRecord);
      v41 = *(v30 + 1) == 0xD00000000000001ELL && 0x80000001002671E0 == *(v30 + 2);
      if (v41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v42 = &v30[*(v141 + 28)];
        v43 = *v42 == a4 && *(v42 + 1) == a5;
        if (v43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      ++a3;
      sub_1001150A8(v30, type metadata accessor for BTDeferredRecord);
      if (v40 == a3)
      {

        a2 = v120;
        a3 = v132;
        goto LABEL_25;
      }
    }

    v44 = v127;
    sub_100114F1C(v30, v127, type metadata accessor for BTDeferredRecord);
    v45 = v128;
    sub_100114F1C(v44, v128, type metadata accessor for BTDeferredRecord);
    v46 = *v45;
    v47 = static os_log_type_t.default.getter();
    v48 = swift_allocObject();
    *(v48 + 16) = v136;
    sub_100115124(v45, v134, type metadata accessor for BTDeferredRecord);
    v49 = v141;
    v50 = String.init<A>(describing:)();
    v51 = v137;
    *(v48 + 56) = &type metadata for String;
    *(v48 + 64) = v51;
    *(v48 + 32) = v50;
    *(v48 + 40) = v52;
    if (v46)
    {
      os_log(_:dso:log:_:_:)(v47, &_mh_execute_header, v133, "DeviceSupportInfo Already deleted found - %@", 44, 2, v48);

      v53 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager____lazy_storage___deviceStore;
      v54 = objc_opt_self();

      v55 = [v54 isFirstUnlocked];
      v56 = v120;
      v57 = v140;
      if (v55)
      {
        sub_100192340();
        if (qword_1002F7A68 != -1)
        {
          swift_once();
        }

        v58 = v131;
        v59 = sub_1000EE91C(v131, qword_100300D48);
        v60 = v129;
        v61 = v130;
        (*(v130 + 16))(v129, v59, v58);
        v62 = sub_10018BDC8(v60);

        v63 = (*(v61 + 8))(v60, v58);
        v56 = v120;
      }

      else
      {
        v104 = static os_log_type_t.error.getter();
        if (qword_1002F7AE8 != -1)
        {
          v117 = v104;
          swift_once();
          v104 = v117;
        }

        v62 = _swiftEmptyArrayStorage;
        os_log(_:dso:log:_:_:)(v104, &_mh_execute_header, qword_100300E38, "deviceSupportInformationRecords call failed because in device is in beforeFirstUnlock state", 91, 2, _swiftEmptyArrayStorage);
      }

      __chkstk_darwin(v63);
      *(&v118 - 2) = v45;
      v105 = v119;
      sub_10017D0B0(sub_100114E78, v62, v119);

      if ((*(v57 + 48))(v105, 1, v126) == 1)
      {
        sub_1000EEE6C(v105, &qword_1002F8510, &unk_100227B50);
        v106 = v138;
      }

      else
      {
        v107 = v123;
        sub_100114F1C(v105, v123, type metadata accessor for DeviceSupportInformationRecord);
        v106 = v138;
        v108 = *&v138[v53];

        sub_1001AE714(v107, v108);

        sub_1001150A8(v107, type metadata accessor for DeviceSupportInformationRecord);
      }

      (v56)(0);
    }

    else
    {
      v90 = v133;
      os_log(_:dso:log:_:_:)(v47, &_mh_execute_header, v133, "Deferred Update DeviceSupportInfo found - %@", 44, 2, v48);

      v91 = &v45[*(v49 + 36)];
      v92 = *(v91 + 1);
      v93 = v120;
      v94 = v140;
      if (v92 >> 60 == 15)
      {
        v99 = static os_log_type_t.default.getter();
        v100 = swift_allocObject();
        *(v100 + 16) = v136;
        sub_100115124(v45, v134, type metadata accessor for BTDeferredRecord);
        v101 = String.init<A>(describing:)();
        v102 = v137;
        *(v100 + 56) = &type metadata for String;
        *(v100 + 64) = v102;
        *(v100 + 32) = v101;
        *(v100 + 40) = v103;
        os_log(_:dso:log:_:_:)(v99, &_mh_execute_header, v90, "Unable to contruct BTCloudDeviceSupportInformation - %@", 55, 2, v100);

        (v93)(0);
      }

      else
      {
        v95 = *v91;
        sub_1000EE9F4(*v91, *(v91 + 1));
        v96 = objc_autoreleasePoolPush();
        type metadata accessor for PropertyListDecoder();
        swift_allocObject();
        PropertyListDecoder.init()();
        sub_100114C58(&unk_1002F8C30, type metadata accessor for DeviceSupportInformationRecord, &unk_100228BD8);
        v97 = v122;
        v98 = v126;
        dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

        objc_autoreleasePoolPop(v96);
        (*(v94 + 56))(v97, 0, 1, v98);
        v109 = v121;
        sub_100114F1C(v97, v121, type metadata accessor for DeviceSupportInformationRecord);
        v110 = static os_log_type_t.default.getter();
        v111 = swift_allocObject();
        *(v111 + 16) = v136;
        v112 = sub_100133818();
        v113 = v137;
        *(v111 + 56) = &type metadata for String;
        *(v111 + 64) = v113;
        *(v111 + 32) = v112;
        *(v111 + 40) = v114;
        os_log(_:dso:log:_:_:)(v110, &_mh_execute_header, v133, "Constructed BTCloudDeviceSupportInformation - %@", 48, 2, v111);

        v115 = sub_100109B20();
        v120();

        sub_1000FF5CC(v95, v92);
        sub_1001150A8(v109, type metadata accessor for DeviceSupportInformationRecord);
      }
    }

    v88 = type metadata accessor for BTDeferredRecord;
    v89 = v45;
LABEL_54:
    sub_1001150A8(v89, v88);
  }

  else
  {
    a2();
  }
}

uint64_t sub_10010AE00(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + *(type metadata accessor for DeviceSupportInformationRecord(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = (a2 + *(type metadata accessor for BTDeferredRecord(0) + 28));
  if (v4 == *v6 && v5 == v6[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10010AE84(uint64_t a1)
{
  v1 = static os_log_type_t.debug.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  v2 = qword_100300E30;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100226100;
  swift_errorRetain();
  sub_1000EE870(&qword_1002F9E10, &qword_100229AB0);
  v4 = String.init<A>(describing:)();
  v6 = v5;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_1000EE954();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, v2, "[Fetch] Removed deleted DeviceSupportInfo from cloud? - %@", 58, 2, v3);
}

void sub_10010B004(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void *a4)
{
  v7 = type metadata accessor for DeviceSupportInformationRecord(0);
  v73 = *(v7 - 8);
  v74 = v7;
  __chkstk_darwin(v7);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000EE870(&qword_1002F8510, &unk_100227B50);
  __chkstk_darwin(v14 - 8);
  v16 = &v66 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v68 = v16;
    v69 = v11;
    v67 = v10;
    v71 = a3;
    v72 = Strong;
    v70 = a2;
    v18 = static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      goto LABEL_34;
    }

    while (1)
    {
      v19 = qword_100300E30;
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_100226100;
      v21 = a4;
      v22 = [v21 description];
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      *(v20 + 56) = &type metadata for String;
      v26 = sub_1000EE954();
      *(v20 + 64) = v26;
      *(v20 + 32) = v23;
      *(v20 + 40) = v25;
      os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v19, "CloudSync: addDeviceSupportInformation: %@", 42, 2, v20);

      v27 = &selRef__sendConfigOverCBController_device_completion_;
      v28 = [v21 bluetoothAddress];
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v32 = HIBYTE(v31) & 0xF;
      if ((v31 & 0x2000000000000000) == 0)
      {
        v32 = v29 & 0xFFFFFFFFFFFFLL;
      }

      if (!v32)
      {
        goto LABEL_11;
      }

      v33 = [v21 bluetoothAddress];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v35;

      if (v34 == 0xD000000000000011 && 0x8000000100267AA0 == v18)
      {

        v27 = &selRef__sendConfigOverCBController_device_completion_;
LABEL_11:
        v38 = static os_log_type_t.error.getter();
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_100226C80;
        v40 = [v21 v27[475]];
        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v42;

        *(v39 + 56) = &type metadata for String;
        *(v39 + 64) = v26;
        *(v39 + 32) = v41;
        *(v39 + 40) = v43;
        v44 = v21;
        v45 = [v44 description];
        v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = v47;

        *(v39 + 96) = &type metadata for String;
        *(v39 + 104) = v26;
        *(v39 + 72) = v46;
        *(v39 + 80) = v48;
        os_log(_:dso:log:_:_:)(v38, &_mh_execute_header, v19, "Invalid BT Address for addDeviceSupportInformation(%@): %@", 58, 2, v39);

        sub_1000F29F8();
        swift_allocError();
        *v49 = 1;
        v70();

        goto LABEL_12;
      }

      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v27 = &selRef__sendConfigOverCBController_device_completion_;
      if (v37)
      {
        goto LABEL_11;
      }

      sub_100103934();
      v50 = [objc_opt_self() isFirstUnlocked];
      v51 = v69;
      if (v50)
      {
        sub_100192340();
        if (qword_1002F7A68 != -1)
        {
          swift_once();
        }

        v18 = v67;
        v52 = sub_1000EE91C(v67, qword_100300D48);
        (*(v51 + 16))(v13, v52, v18);
        a4 = sub_10018BDC8(v13);

        (*(v51 + 8))(v13, v18);
        v13 = a4[2];
        if (!v13)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v53 = static os_log_type_t.error.getter();
        if (qword_1002F7AE8 != -1)
        {
          v65 = v53;
          swift_once();
          v53 = v65;
        }

        a4 = _swiftEmptyArrayStorage;
        os_log(_:dso:log:_:_:)(v53, &_mh_execute_header, qword_100300E38, "deviceSupportInformationRecords call failed because in device is in beforeFirstUnlock state", 91, 2, _swiftEmptyArrayStorage);

        v13 = _swiftEmptyArrayStorage[2];
        if (!v13)
        {
LABEL_29:

          v63 = v68;
          (*(v73 + 56))(v68, 1, 1, v74);
LABEL_32:
          sub_1000EEE6C(v63, &qword_1002F8510, &unk_100227B50);
          v64 = v72;

          sub_1001ADC50(v21, v70, v71);

          return;
        }
      }

      v54 = 0;
      while (v54 < a4[2])
      {
        sub_100115124(a4 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v54, v9, type metadata accessor for DeviceSupportInformationRecord);
        v55 = &v9[*(v74 + 24)];
        v56 = *v55;
        v57 = *(v55 + 1);
        v58 = [v21 bluetoothAddress];
        v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v60;

        if (v56 == v59 && v57 == v18)
        {

LABEL_31:

          v63 = v68;
          sub_100114F1C(v9, v68, type metadata accessor for DeviceSupportInformationRecord);
          (*(v73 + 56))(v63, 0, 1, v74);
          goto LABEL_32;
        }

        v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v62)
        {
          goto LABEL_31;
        }

        ++v54;
        sub_1001150A8(v9, type metadata accessor for DeviceSupportInformationRecord);
        if (v13 == v54)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_34:
      swift_once();
    }
  }

  sub_1000F29F8();
  swift_allocError();
  *v36 = 0;
  (a2)();
LABEL_12:
}

void sub_10010B838(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_1000F29F8();
    swift_allocError();
    *v18 = 0;
    (a2)();
LABEL_13:

    return;
  }

  v8 = Strong;
  v9 = [a4 bluetoothAddress];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {
LABEL_10:
    v20 = static os_log_type_t.error.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    v21 = qword_100300E30;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_100226C80;
    v23 = [a4 bluetoothAddress];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    *(v22 + 56) = &type metadata for String;
    v27 = sub_1000EE954();
    *(v22 + 64) = v27;
    *(v22 + 32) = v24;
    *(v22 + 40) = v26;
    v28 = a4;
    v29 = [v28 description];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    *(v22 + 96) = &type metadata for String;
    *(v22 + 104) = v27;
    *(v22 + 72) = v30;
    *(v22 + 80) = v32;
    os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v21, "Invalid BT Address for addDeviceSupportInfo(%@): %@", 51, 2, v22);

    sub_1000F29F8();
    swift_allocError();
    *v33 = 1;
    (a2)();

    goto LABEL_13;
  }

  v14 = [a4 bluetoothAddress];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (v15 == 0xD000000000000011 && 0x8000000100267AA0 == v17)
  {

    goto LABEL_10;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
    goto LABEL_10;
  }

  v34 = static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  v35 = qword_100300E30;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_100226100;
  v37 = a4;
  v38 = [v37 description];
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  *(v36 + 56) = &type metadata for String;
  *(v36 + 64) = sub_1000EE954();
  *(v36 + 32) = v39;
  *(v36 + 40) = v41;
  os_log(_:dso:log:_:_:)(v34, &_mh_execute_header, v35, "CloudSync: updateDeviceSupportInformation: %@", 45, 2, v36);

  sub_100103934();
  sub_1001ADC50(v37, a2, a3);
}

uint64_t sub_10010BC8C(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    v12 = qword_100300E30;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100226100;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_1000EE954();
    *(v13 + 32) = a4;
    *(v13 + 40) = a5;

    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "CloudSync: removeDeviceSupportInformation: %@", 45, 2, v13);

    sub_100103934();
    sub_1001A55A4(a4, a5, 0xD00000000000001ELL, 0x80000001002671E0, a2, a3);
  }

  else
  {
    sub_1000F29F8();
    swift_allocError();
    *v15 = 0;
    a2();
  }
}

uint64_t sub_10010BE74(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v23 = *(v13 - 8);
  v24 = v13;
  __chkstk_darwin(v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v5 + OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = a3;
  *(v18 + 32) = a4;
  *(v18 + 40) = a1;
  *(v18 + 48) = a2;
  aBlock[4] = sub_100114E20;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = &unk_1002BCF38;
  v19 = _Block_copy(aBlock);
  v20 = v16;

  v21 = a1;
  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_100114C58(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_100115260(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v25 + 8))(v12, v10);
  (*(v23 + 8))(v15, v24);
}

uint64_t sub_10010C194(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void *a4, char a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return (a2)();
  }

  v10 = Strong;
  sub_100103934();
  sub_1001B538C(a4, a5 & 1, a2, a3);
}

uint64_t sub_10010C2EC(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v20 = *(v11 - 8);
  v21 = v11;
  __chkstk_darwin(v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v4 + OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = a1;
  aBlock[4] = sub_100114E10;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = &unk_1002BCEE8;
  v17 = _Block_copy(aBlock);
  v18 = v14;

  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_100114C58(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_100115260(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v22 + 8))(v10, v8);
  (*(v20 + 8))(v13, v21);
}

uint64_t sub_10010C604(uint64_t a1, uint64_t (*a2)(void), void *a3, char a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a2();
  }

  v8 = Strong;
  sub_100103934();
  sub_1001B6BA8(a4 & 1, a2, a3);
}

void sub_10010C760(uint64_t a1, void (*a2)(uint64_t, unint64_t))
{
  v3 = sub_1000EE870(&qword_1002F9D90, &qword_100227B30);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_100103934();
    sub_100194630(v5);

    v8 = type metadata accessor for LegacyMagicPairingSettingsRecords(0);
    if ((*(*(v8 - 8) + 48))(v5, 1, v8) == 1)
    {
      sub_1000EEE6C(v5, &qword_1002F9D90, &qword_100227B30);
      v9 = static os_log_type_t.default.getter();
      if (qword_1002F7AE0 != -1)
      {
        v19 = v9;
        swift_once();
        v9 = v19;
      }

      os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, qword_100300E30, "No Legacy Magic Pairing Records cached", 38, 2, _swiftEmptyArrayStorage);
      a2(0, 0xF000000000000000);
    }

    else
    {
      v10 = &v5[*(v8 + 20)];
      v11 = *v10;
      v12 = v10[1];
      sub_1000EE9F4(*v10, v12);
      sub_1001150A8(v5, type metadata accessor for LegacyMagicPairingSettingsRecords);
      v13 = static os_log_type_t.default.getter();
      if (qword_1002F7AE0 != -1)
      {
        swift_once();
      }

      v14 = qword_100300E30;
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_100226100;
      sub_1000EE9F4(v11, v12);
      v16 = Data.description.getter();
      v18 = v17;
      sub_1000EF870(v11, v12);
      *(v15 + 56) = &type metadata for String;
      *(v15 + 64) = sub_1000EE954();
      *(v15 + 32) = v16;
      *(v15 + 40) = v18;
      os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "Fetched Legacy Magic Pairing Records: %@", 40, 2, v15);

      sub_1000EE9F4(v11, v12);
      a2(v11, v12);
      sub_1000EF870(v11, v12);
      sub_1000EF870(v11, v12);
    }
  }

  else
  {
    a2(0, 0xF000000000000000);
  }
}

void sub_10010CAE4(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v5 = type metadata accessor for MagicPairingSettingsRecord(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    a2();
    return;
  }

  v14 = Strong;
  v32 = a3;
  v15 = static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    v30 = v15;
    swift_once();
    v15 = v30;
  }

  v16 = qword_100300E30;
  os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, qword_100300E30, "fetchMagicPairingSettingsRecords", 32, 2, _swiftEmptyArrayStorage);
  v34 = _swiftEmptyArrayStorage;
  sub_100103934();
  v17 = [objc_opt_self() isFirstUnlocked];
  v33 = a2;
  if (v17)
  {
    sub_100192340();
    if (qword_1002F7A00 != -1)
    {
      swift_once();
    }

    v18 = sub_1000EE91C(v9, qword_100300BA8);
    (*(v10 + 16))(v12, v18, v9);
    v19 = sub_10018C984(v12);

    (*(v10 + 8))(v12, v9);
    v20 = v19[2];
    if (v20)
    {
LABEL_8:
      v21 = v19 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v22 = *(v6 + 72);
      do
      {
        sub_100115124(v21, v8, type metadata accessor for MagicPairingSettingsRecord);
        sub_10010CFB8();
        sub_1001150A8(v8, type metadata accessor for MagicPairingSettingsRecord);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v21 += v22;
        --v20;
      }

      while (v20);
      v23 = v34;

      goto LABEL_18;
    }
  }

  else
  {
    v24 = static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      v31 = v24;
      swift_once();
      v24 = v31;
    }

    v19 = _swiftEmptyArrayStorage;
    os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, qword_100300E38, "magicPairingSettingsRecords call failed because in device is in beforeFirstUnlock state", 87, 2, _swiftEmptyArrayStorage);

    v20 = _swiftEmptyArrayStorage[2];
    if (v20)
    {
      goto LABEL_8;
    }
  }

  v23 = _swiftEmptyArrayStorage;
LABEL_18:
  v25 = static os_log_type_t.debug.getter();
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100226100;
  sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
  v27 = Array.description.getter();
  v29 = v28;
  *(v26 + 56) = &type metadata for String;
  *(v26 + 64) = sub_1000EE954();
  *(v26 + 32) = v27;
  *(v26 + 40) = v29;
  os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, v16, "fetched Magic Settings List - %@", 32, 2, v26);

  (v33)(v23);
}

id sub_10010CFB8()
{
  type metadata accessor for MagicPairingSettingsRecord(0);
  v0 = objc_allocWithZone(BTMagicPairingSettings);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithBluetoothAddress:v1];

  v3 = String._bridgeToObjectiveC()();
  [v2 setProductID:v3];

  v4 = String._bridgeToObjectiveC()();
  [v2 setVendorID:v4];

  isa = Data._bridgeToObjectiveC()().super.isa;
  [v2 setMasterKey:isa];

  v6 = Data._bridgeToObjectiveC()().super.isa;
  [v2 setMasterHint:v6];

  v7 = Data._bridgeToObjectiveC()().super.isa;
  [v2 setAccessoryKey:v7];

  v8 = Data._bridgeToObjectiveC()().super.isa;
  [v2 setAccessoryHint:v8];

  v9 = String._bridgeToObjectiveC()();
  [v2 setButtonModes:v9];

  v10 = String._bridgeToObjectiveC()();
  [v2 setColor:v10];

  v11 = String._bridgeToObjectiveC()();
  [v2 setDeviceIDFeatureBitsV1:v11];

  v12 = String._bridgeToObjectiveC()();
  [v2 setDeviceIDFeatureBitsV2:v12];

  v13 = Data._bridgeToObjectiveC()().super.isa;
  [v2 setEncryptionKey:v13];

  v14 = Data._bridgeToObjectiveC()().super.isa;
  [v2 setIrk:v14];

  v15 = String._bridgeToObjectiveC()();
  [v2 setListeningServices:v15];

  v16 = String._bridgeToObjectiveC()();
  [v2 setListeningServicesV2:v16];

  v17 = String._bridgeToObjectiveC()();
  [v2 setOptimizedBatteryCharging:v17];

  v18 = String._bridgeToObjectiveC()();
  [v2 setOptimizedBatteryFullChargeDeadline:v18];

  v19 = String._bridgeToObjectiveC()();
  [v2 setRatchet:v19];

  v20 = String._bridgeToObjectiveC()();
  [v2 setReserved:v20];

  v21 = String._bridgeToObjectiveC()();
  [v2 setSettingsMask:v21];

  v22 = String._bridgeToObjectiveC()();
  [v2 setSupportedServices:v22];

  v23 = String._bridgeToObjectiveC()();
  [v2 setVersion:v23];

  return v2;
}

uint64_t sub_10010D434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a6;
  v28 = a7;
  v26 = a1;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v29 = *(v14 - 8);
  v30 = v14;
  __chkstk_darwin(v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v7 + OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = a3;
  v21 = v26;
  v20 = v27;
  v19[4] = a4;
  v19[5] = v21;
  v19[6] = a2;
  aBlock[4] = v20;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = v28;
  v22 = _Block_copy(aBlock);
  v23 = v17;

  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_100114C58(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_100115260(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v31 + 8))(v13, v11);
  (*(v29 + 8))(v16, v30);
}

void sub_10010D748(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000EE870(&qword_1002F9D90, &qword_100227B30);
  __chkstk_darwin(v9 - 8);
  v49 = v45 - v10;
  v48 = type metadata accessor for URL();
  v11 = *(v48 - 8);
  __chkstk_darwin(v48);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MagicPairingSettingsRecord(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v46 = v45 - v19;
  __chkstk_darwin(v20);
  v47 = v45 - v21;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    a2();
    return;
  }

  v50 = a3;
  v51 = a2;
  v22 = static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    goto LABEL_43;
  }

  while (1)
  {
    v23 = qword_100300E30;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_100226100;
    *(v24 + 56) = &type metadata for String;
    *(v24 + 64) = sub_1000EE954();
    *(v24 + 32) = a4;
    *(v24 + 40) = a5;

    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v23, "fetchMagicSettingsRecord: %@", 28, 2, v24);

    v25 = sub_100103934();
    if ([objc_opt_self() isFirstUnlocked])
    {
      sub_100192340();
      v45[1] = v25;
      if (qword_1002F7A00 != -1)
      {
        swift_once();
      }

      v26 = v48;
      v27 = sub_1000EE91C(v48, qword_100300BA8);
      (*(v11 + 16))(v13, v27, v26);
      v22 = sub_10018C984(v13);

      (*(v11 + 8))(v13, v26);
      v13 = v22[2];
      if (v13)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v28 = static os_log_type_t.error.getter();
      if (qword_1002F7AE8 != -1)
      {
        v44 = v28;
        swift_once();
        v28 = v44;
      }

      v22 = _swiftEmptyArrayStorage;
      os_log(_:dso:log:_:_:)(v28, &_mh_execute_header, qword_100300E38, "magicPairingSettingsRecords call failed because in device is in beforeFirstUnlock state", 87, 2, _swiftEmptyArrayStorage);

      v13 = _swiftEmptyArrayStorage[2];
      if (v13)
      {
LABEL_12:
        v11 = 0;
        while (v11 < v22[2])
        {
          sub_100115124(v22 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v11, v17, type metadata accessor for MagicPairingSettingsRecord);
          v29 = (v17 + *(v14 + 24));
          v30 = *v29 == a4 && v29[1] == a5;
          if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v34 = v17;
            v35 = v46;
            sub_100114F1C(v34, v46, type metadata accessor for MagicPairingSettingsRecord);
            v36 = v35;
            v37 = v47;
            sub_100114F1C(v36, v47, type metadata accessor for MagicPairingSettingsRecord);
            v13 = sub_10010CFB8();
            sub_1001150A8(v37, type metadata accessor for MagicPairingSettingsRecord);
            goto LABEL_46;
          }

          ++v11;
          sub_1001150A8(v17, type metadata accessor for MagicPairingSettingsRecord);
          if (v13 == v11)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
        goto LABEL_41;
      }
    }

LABEL_20:

    v13 = v49;
    sub_100194630(v49);

    v31 = type metadata accessor for LegacyMagicPairingSettingsRecords(0);
    v32 = (*(*(v31 - 8) + 48))(v13, 1, v31);
    v33 = v51;
    if (v32 == 1)
    {
      sub_1000EEE6C(v13, &qword_1002F9D90, &qword_100227B30);
      v13 = 0;
      goto LABEL_47;
    }

    v17 = sub_10013B008();
    sub_1001150A8(v13, type metadata accessor for LegacyMagicPairingSettingsRecords);
    if (!(v17 >> 62))
    {
      v22 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v22)
      {
        break;
      }

      goto LABEL_25;
    }

    v22 = _CocoaArrayWrapper.endIndex.getter();
    if (!v22)
    {
      break;
    }

LABEL_25:
    v11 = 0;
    v48 = v17 & 0xFFFFFFFFFFFFFF8;
    v49 = v17 & 0xC000000000000001;
    while (1)
    {
      if (v49)
      {
        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *(v48 + 16))
        {
          goto LABEL_42;
        }

        v38 = *(v17 + 8 * v11 + 32);
      }

      v13 = v38;
      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v39 = [v38 bluetoothAddress];
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      if (v40 == a4 && v42 == a5)
      {

LABEL_39:

        goto LABEL_46;
      }

      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v14)
      {
        goto LABEL_39;
      }

      ++v11;
      if (v15 == v22)
      {
        goto LABEL_45;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
  }

LABEL_45:

  v13 = 0;
LABEL_46:
  v33 = v51;
LABEL_47:
  (v33)(v13);
}

uint64_t sub_10010DEC0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v50 = a4;
  v7 = sub_1000EE870(&qword_1002F9D90, &qword_100227B30);
  __chkstk_darwin(v7 - 8);
  v52 = &v44 - v8;
  v47 = type metadata accessor for URL();
  v49 = *(v47 - 8);
  __chkstk_darwin(v47);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MagicPairingSettingsRecord(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v45 = &v44 - v15;
  __chkstk_darwin(v16);
  v46 = &v44 - v17;
  v18 = static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v19 = qword_100300E30;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100226100;
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = sub_1000EE954();
    v53 = a1;
    *(v20 + 32) = a1;
    *(v20 + 40) = a2;

    os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v19, "fetchMagicSettingsRecordSync: %@", 32, 2, v20);

    v21 = sub_100103934();
    v22 = [objc_opt_self() isFirstUnlocked];
    v51 = a3;
    if (v22)
    {
      sub_100192340();
      v44 = v21;
      if (qword_1002F7A00 != -1)
      {
        swift_once();
      }

      v23 = v47;
      v24 = sub_1000EE91C(v47, qword_100300BA8);
      v25 = v48;
      v26 = v49;
      (*(v49 + 16))(v48, v24, v23);
      v18 = sub_10018C984(v25);

      (*(v26 + 8))(v25, v23);
    }

    else
    {
      v27 = static os_log_type_t.error.getter();
      if (qword_1002F7AE8 != -1)
      {
        v43 = v27;
        swift_once();
        v27 = v43;
      }

      v18 = _swiftEmptyArrayStorage;
      os_log(_:dso:log:_:_:)(v27, &_mh_execute_header, qword_100300E38, "magicPairingSettingsRecords call failed because in device is in beforeFirstUnlock state", 87, 2, _swiftEmptyArrayStorage, v44);
    }

    a1 = v53;
    a3 = v18[2];
    if (a3)
    {
      v28 = 0;
      while (v28 < v18[2])
      {
        sub_100115124(v18 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v28, v13, type metadata accessor for MagicPairingSettingsRecord);
        v29 = (v13 + *(v10 + 24));
        v30 = *v29 == a1 && v29[1] == a2;
        if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v34 = v45;
          sub_100114F1C(v13, v45, type metadata accessor for MagicPairingSettingsRecord);
          v35 = v34;
          v36 = v46;
          sub_100114F1C(v35, v46, type metadata accessor for MagicPairingSettingsRecord);
          a3 = sub_10010CFB8();
          result = sub_1001150A8(v36, type metadata accessor for MagicPairingSettingsRecord);
          goto LABEL_45;
        }

        ++v28;
        sub_1001150A8(v13, type metadata accessor for MagicPairingSettingsRecord);
        if (a3 == v28)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
      goto LABEL_39;
    }

LABEL_18:

    v31 = v52;
    sub_100194630(v52);

    v32 = type metadata accessor for LegacyMagicPairingSettingsRecords(0);
    if ((*(*(v32 - 8) + 48))(v31, 1, v32) == 1)
    {
      result = sub_1000EEE6C(v31, &qword_1002F9D90, &qword_100227B30);
      goto LABEL_44;
    }

    v18 = v31;
    a1 = sub_10013B008();
    sub_1001150A8(v31, type metadata accessor for LegacyMagicPairingSettingsRecords);
    if (!(a1 >> 62))
    {
      v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v11)
      {
        break;
      }

      goto LABEL_23;
    }

    v11 = _CocoaArrayWrapper.endIndex.getter();
    if (!v11)
    {
      break;
    }

LABEL_23:
    v13 = 0;
    v51 = (a1 & 0xFFFFFFFFFFFFFF8);
    v52 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v52)
      {
        v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= v51[2])
        {
          goto LABEL_40;
        }

        v37 = *(a1 + 8 * v13 + 32);
      }

      a3 = v37;
      v18 = (v13 + 1);
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v38 = [v37 bluetoothAddress];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      if (v39 == v53 && v41 == a2)
      {

LABEL_37:

        goto LABEL_45;
      }

      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v10)
      {
        goto LABEL_37;
      }

      ++v13;
      if (v18 == v11)
      {
        goto LABEL_43;
      }
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    swift_once();
  }

LABEL_43:

LABEL_44:
  a3 = 0;
LABEL_45:
  *v50 = a3;
  return result;
}

uint64_t sub_10010E674@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v6 = sub_100103934();
  v7 = OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_incomingPairedDevices;
  swift_beginAccess();
  v8 = *(v6 + v7);

  LOBYTE(v6) = sub_10017D5B4(a1, a2, v8);

  *a3 = v6 & 1;
  return result;
}

void sub_10010E7E8(uint64_t a1, void (*a2)(void), uint64_t a3, void *a4)
{
  v7 = type metadata accessor for MagicPairingSettingsRecord(0);
  v73 = *(v7 - 8);
  v74 = v7;
  __chkstk_darwin(v7);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000EE870(&unk_1002F9C30, &qword_1002299A0);
  __chkstk_darwin(v14 - 8);
  v16 = &v66 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v68 = v16;
    v69 = v11;
    v67 = v10;
    v71 = a3;
    v72 = Strong;
    v70 = a2;
    v18 = static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      goto LABEL_34;
    }

    while (1)
    {
      v19 = qword_100300E30;
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_100226100;
      v21 = a4;
      v22 = [v21 description];
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      *(v20 + 56) = &type metadata for String;
      v26 = sub_1000EE954();
      *(v20 + 64) = v26;
      *(v20 + 32) = v23;
      *(v20 + 40) = v25;
      os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v19, "CloudSync: addDeviceMagicSettings: %@", 37, 2, v20);

      v27 = &selRef__sendConfigOverCBController_device_completion_;
      v28 = [v21 bluetoothAddress];
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v32 = HIBYTE(v31) & 0xF;
      if ((v31 & 0x2000000000000000) == 0)
      {
        v32 = v29 & 0xFFFFFFFFFFFFLL;
      }

      if (!v32)
      {
        goto LABEL_11;
      }

      v33 = [v21 bluetoothAddress];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v35;

      if (v34 == 0xD000000000000011 && 0x8000000100267AA0 == v18)
      {

        v27 = &selRef__sendConfigOverCBController_device_completion_;
LABEL_11:
        v38 = static os_log_type_t.error.getter();
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_100226C80;
        v40 = [v21 v27[475]];
        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v42;

        *(v39 + 56) = &type metadata for String;
        *(v39 + 64) = v26;
        *(v39 + 32) = v41;
        *(v39 + 40) = v43;
        v44 = v21;
        v45 = [v44 description];
        v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = v47;

        *(v39 + 96) = &type metadata for String;
        *(v39 + 104) = v26;
        *(v39 + 72) = v46;
        *(v39 + 80) = v48;
        os_log(_:dso:log:_:_:)(v38, &_mh_execute_header, v19, "Invalid BT Address for addDeviceMagicSettings(%@): %@", 53, 2, v39);

        sub_1000F29F8();
        swift_allocError();
        *v49 = 1;
        v70();

        goto LABEL_12;
      }

      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v27 = &selRef__sendConfigOverCBController_device_completion_;
      if (v37)
      {
        goto LABEL_11;
      }

      sub_100103934();
      v50 = [objc_opt_self() isFirstUnlocked];
      v51 = v69;
      if (v50)
      {
        sub_100192340();
        if (qword_1002F7A00 != -1)
        {
          swift_once();
        }

        v18 = v67;
        v52 = sub_1000EE91C(v67, qword_100300BA8);
        (*(v51 + 16))(v13, v52, v18);
        a4 = sub_10018C984(v13);

        (*(v51 + 8))(v13, v18);
        v13 = a4[2];
        if (!v13)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v53 = static os_log_type_t.error.getter();
        if (qword_1002F7AE8 != -1)
        {
          v65 = v53;
          swift_once();
          v53 = v65;
        }

        a4 = _swiftEmptyArrayStorage;
        os_log(_:dso:log:_:_:)(v53, &_mh_execute_header, qword_100300E38, "magicPairingSettingsRecords call failed because in device is in beforeFirstUnlock state", 87, 2, _swiftEmptyArrayStorage);

        v13 = _swiftEmptyArrayStorage[2];
        if (!v13)
        {
LABEL_29:

          v63 = v68;
          (*(v73 + 56))(v68, 1, 1, v74);
LABEL_32:
          sub_1000EEE6C(v63, &unk_1002F9C30, &qword_1002299A0);
          v64 = v72;

          sub_1001B78D8(v21, v70, v71);

          return;
        }
      }

      v54 = 0;
      while (v54 < a4[2])
      {
        sub_100115124(a4 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v54, v9, type metadata accessor for MagicPairingSettingsRecord);
        v55 = &v9[*(v74 + 24)];
        v56 = *v55;
        v57 = *(v55 + 1);
        v58 = [v21 bluetoothAddress];
        v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v60;

        if (v56 == v59 && v57 == v18)
        {

LABEL_31:

          v63 = v68;
          sub_100114F1C(v9, v68, type metadata accessor for MagicPairingSettingsRecord);
          (*(v73 + 56))(v63, 0, 1, v74);
          goto LABEL_32;
        }

        v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v62)
        {
          goto LABEL_31;
        }

        ++v54;
        sub_1001150A8(v9, type metadata accessor for MagicPairingSettingsRecord);
        if (v13 == v54)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_34:
      swift_once();
    }
  }

  sub_1000F29F8();
  swift_allocError();
  *v36 = 0;
  a2();
LABEL_12:
}

uint64_t sub_10010F01C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a5;
  v24 = a6;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v25 = *(v13 - 8);
  v26 = v13;
  __chkstk_darwin(v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v6 + OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a1;
  aBlock[4] = v23;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = v24;
  v19 = _Block_copy(aBlock);
  v20 = v16;

  v21 = a1;
  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_100114C58(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_100115260(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v27 + 8))(v12, v10);
  (*(v25 + 8))(v15, v26);
}

void sub_10010F324(uint64_t a1, void (*a2)(void), uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_1000F29F8();
    swift_allocError();
    *v18 = 0;
    a2();
LABEL_13:

    return;
  }

  v8 = Strong;
  v9 = [a4 bluetoothAddress];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {
LABEL_10:
    v20 = static os_log_type_t.error.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    v21 = qword_100300E30;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_100226C80;
    v23 = [a4 bluetoothAddress];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    *(v22 + 56) = &type metadata for String;
    v27 = sub_1000EE954();
    *(v22 + 64) = v27;
    *(v22 + 32) = v24;
    *(v22 + 40) = v26;
    v28 = a4;
    v29 = [v28 description];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    *(v22 + 96) = &type metadata for String;
    *(v22 + 104) = v27;
    *(v22 + 72) = v30;
    *(v22 + 80) = v32;
    os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v21, "Invalid BT Address for addMagicSettings(%@): %@", 47, 2, v22);

    sub_1000F29F8();
    swift_allocError();
    *v33 = 1;
    a2();

    goto LABEL_13;
  }

  v14 = [a4 bluetoothAddress];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (v15 == 0xD000000000000011 && 0x8000000100267AA0 == v17)
  {

    goto LABEL_10;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
    goto LABEL_10;
  }

  v34 = static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  v35 = qword_100300E30;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_100226100;
  v37 = a4;
  v38 = [v37 description];
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  *(v36 + 56) = &type metadata for String;
  *(v36 + 64) = sub_1000EE954();
  *(v36 + 32) = v39;
  *(v36 + 40) = v41;
  os_log(_:dso:log:_:_:)(v34, &_mh_execute_header, v35, "CloudSync: updateDeviceMagicSettings: %@", 40, 2, v36);

  sub_100103934();
  sub_1001B78D8(v37, a2, a3);
}

uint64_t sub_10010F750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v33 - 8);
  __chkstk_darwin(v33);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v34 = *(v9 - 8);
  v35 = v9;
  __chkstk_darwin(v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = String._bridgeToObjectiveC()();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v42 = sub_100114CA0;
  v43 = v13;
  aBlock = _NSConcreteStackBlock;
  v39 = 1107296256;
  v40 = sub_10010FC9C;
  v41 = &unk_1002BCC18;
  v14 = _Block_copy(&aBlock);

  [v4 removeAADeviceRecordWithBluetoothAddress:v12 completion:v14];
  _Block_release(v14);

  v15 = String._bridgeToObjectiveC()();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v42 = sub_100114CC8;
  v43 = v16;
  aBlock = _NSConcreteStackBlock;
  v39 = 1107296256;
  v40 = sub_10010FC9C;
  v41 = &unk_1002BCC68;
  v17 = _Block_copy(&aBlock);

  [v4 removeAAProxCardsInfoWithBluetoothAddress:v15 completion:v17];
  _Block_release(v17);

  v18 = String._bridgeToObjectiveC()();
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v42 = sub_100114CF0;
  v43 = v19;
  aBlock = _NSConcreteStackBlock;
  v39 = 1107296256;
  v40 = sub_10010FC9C;
  v41 = &unk_1002BCCB8;
  v20 = _Block_copy(&aBlock);

  [v4 removeHMDeviceCloudRecordWithBluetoothAddress:v18 completion:v20];
  _Block_release(v20);

  v21 = *&v4[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue];
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  v24 = v31;
  v25 = v32;
  v23[2] = v22;
  v23[3] = v24;
  v23[4] = v25;
  v23[5] = a1;
  v23[6] = a2;
  v42 = sub_100114D18;
  v43 = v23;
  aBlock = _NSConcreteStackBlock;
  v39 = 1107296256;
  v40 = sub_1001742E0;
  v41 = &unk_1002BCD08;
  v26 = _Block_copy(&aBlock);

  v27 = v21;

  static DispatchQoS.unspecified.getter();
  v37 = _swiftEmptyArrayStorage;
  sub_100114C58(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_100115260(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
  v28 = v33;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);

  (*(v36 + 8))(v8, v28);
  (*(v34 + 8))(v11, v35);
}

void sub_10010FC9C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_10010FD08(uint64_t result, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5)
{
  if (result)
  {
    swift_errorRetain();
    v9 = static os_log_type_t.error.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    v10 = qword_100300E30;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100226C80;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_1000EE954();
    *(v11 + 32) = a2;
    *(v11 + 40) = a3;

    v12 = _convertErrorToNSError(_:)();
    *(v11 + 96) = sub_1000FA784(0, &qword_1002F7ED8, NSError_ptr);
    *(v11 + 104) = sub_100114D48();
    *(v11 + 72) = v12;
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, a4, a5, 2, v11);
  }

  return result;
}

uint64_t sub_10010FE60(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v23 = a8;
    v18 = static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    v19 = qword_100300E30;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100226100;
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = sub_1000EE954();
    *(v20 + 32) = a4;
    *(v20 + 40) = a5;

    os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v19, a6, a7, 2, v20);

    sub_100103934();
    sub_1001A55A4(a4, a5, v23, a9, a2, a3);
  }

  else
  {
    sub_1000F29F8();
    swift_allocError();
    *v22 = 0;
    a2();
  }
}

uint64_t sub_100110050@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v17[0] = type metadata accessor for UUID();
  v1 = *(v17[0] - 8);
  __chkstk_darwin(v17[0]);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v17 - v9;
  __chkstk_darwin(v11);
  v13 = v17 - v12;
  type metadata accessor for DeviceStore(0);
  sub_100174350();
  if (qword_1002F79E0 != -1)
  {
    swift_once();
  }

  v14 = sub_1000EE91C(v4, qword_100300B68);
  (*(v5 + 16))(v7, v14, v4);
  URL.path.getter();
  v15 = *(v5 + 8);
  v15(v7, v4);
  URL.appendingPathComponent(_:isDirectory:)();

  v15(v10, v4);
  if (qword_1002F79C8 != -1)
  {
    swift_once();
  }

  sub_1000F0254();

  UUID.init()();
  UUID.uuidString.getter();
  (*(v1 + 8))(v3, v17[0]);
  URL.appendingPathComponent(_:)();

  URL.appendingPathExtension(_:)();
  v15(v10, v4);
  return (v15)(v13, v4);
}

uint64_t sub_10011046C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v25 = a1;
  v26 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v27 = *(v9 - 8);
  v28 = v9;
  __chkstk_darwin(v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v4 + OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v13 + 16))(v15, v25, v12);
  v17 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v18 = swift_allocObject();
  v19 = v26;
  *(v18 + 2) = v16;
  *(v18 + 3) = v19;
  *(v18 + 4) = a3;
  (*(v13 + 32))(&v18[v17], v15, v12);
  aBlock[4] = sub_100114BF0;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = &unk_1002BCBC8;
  v20 = _Block_copy(aBlock);
  v21 = v24;

  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_100114C58(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_100115260(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v29 + 8))(v8, v6);
  (*(v27 + 8))(v11, v28);
}

uint64_t sub_10011084C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = sub_1000EE870(&qword_1002F84F8, &unk_1002299F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    HIDWORD(v24) = static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    v12 = qword_100300E30;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100226C80;
    sub_100103934();
    sub_10019493C(v9);

    v14 = type metadata accessor for SoundProfileRecord(0);
    v15 = (*(*(v14 - 8) + 48))(v9, 1, v14);
    sub_1000EEE6C(v9, &qword_1002F84F8, &unk_1002299F0);
    v16 = sub_1000EE954();
    v17 = v16;
    v18 = 0x676E697461647055;
    if (v15 == 1)
    {
      v18 = 0x676E69646441;
    }

    v19 = 0xE800000000000000;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = v16;
    if (v15 == 1)
    {
      v19 = 0xE600000000000000;
    }

    *(v13 + 32) = v18;
    *(v13 + 40) = v19;
    type metadata accessor for URL();
    sub_100114C58(&unk_1002F9C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    *(v13 + 96) = &type metadata for String;
    *(v13 + 104) = v17;
    *(v13 + 72) = v20;
    *(v13 + 80) = v21;
    os_log(_:dso:log:_:_:)(HIDWORD(v24), &_mh_execute_header, v12, "%s Sound Profile Record with URL: %@", 36, 2, v13);

    sub_1001B9F44(a4, a2, a3);
  }

  else
  {
    sub_1000F29F8();
    swift_allocError();
    *v23 = 0;
    (a2)();
  }
}

void sub_100110C8C(uint64_t a1, void (*a2)(id, uint64_t), uint64_t a3)
{
  v5 = sub_1000EE870(&qword_1002F84F8, &unk_1002299F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v34 - v6;
  v8 = type metadata accessor for SoundProfileRecord(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    sub_100103934();

    if (IsAppleInternalBuild())
    {
      v14 = [objc_opt_self() standardUserDefaults];
      v15 = String._bridgeToObjectiveC()();
      v16 = [v14 BOOLForKey:v15];

      if (v16)
      {
        sub_1001111B0(a2, a3);
LABEL_9:

        return;
      }
    }

    sub_10019493C(v7);

    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_1000EEE6C(v7, &qword_1002F84F8, &unk_1002299F0);
      v17 = static os_log_type_t.default.getter();
      if (qword_1002F7AE0 != -1)
      {
        v33 = v17;
        swift_once();
        v17 = v33;
      }

      os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, qword_100300E30, "No SoundProfileRecord found", 27, 2, _swiftEmptyArrayStorage);
      sub_1000F29F8();
      v18 = swift_allocError();
      *v19 = 3;
      a2(0, v18);

      goto LABEL_9;
    }

    sub_100114F1C(v7, v11, type metadata accessor for SoundProfileRecord);
    v22 = static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    v23 = qword_100300E30;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_100226100;
    v25 = sub_1000FAF14();
    v27 = v26;
    *(v24 + 56) = &type metadata for String;
    *(v24 + 64) = sub_1000EE954();
    *(v24 + 32) = v25;
    *(v24 + 40) = v27;
    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v23, "fetched SoundProfileRecord: %@", 30, 2, v24);

    v28 = objc_allocWithZone(BTCloudSoundProfileRecord);
    URL._bridgeToObjectiveC()(v29);
    v31 = v30;
    v32 = [v28 initWithFileURL:v30];

    a2(v32, 0);
    sub_1001150A8(v11, type metadata accessor for SoundProfileRecord);
  }

  else
  {
    sub_1000F29F8();
    v20 = swift_allocError();
    *v21 = 0;
    a2(0, v20);
  }
}

void sub_100111140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_1001111D8(uint64_t a1, void (*a2)(void, uint64_t), uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      v12 = v7;
      swift_once();
      v7 = v12;
    }

    os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, qword_100300E30, "CloudSync: Direct sound profile record cloud fetch", 50, 2, _swiftEmptyArrayStorage);
    sub_100103934();
    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    *(v8 + 24) = a3;

    sub_1001BBE68(sub_100114BDC, v8);
  }

  else
  {
    sub_1000F29F8();
    v10 = swift_allocError();
    *v11 = 0;
    a2(0, v10);
  }
}

void sub_10011134C(void *a1, void (*a2)(void *, uint64_t))
{
  if (a1)
  {
    v4 = a1;
    v5 = static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    v6 = qword_100300E30;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100226100;
    v8 = v4;
    v9 = [v8 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_1000EE954();
    *(v7 + 32) = v10;
    *(v7 + 40) = v12;
    os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "fetched SoundProfileRecord from cloud: %@", 41, 2, v7);

    v17 = v8;
    a2(a1, 0);
  }

  else
  {
    v13 = static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      v16 = v13;
      swift_once();
      v13 = v16;
    }

    os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, qword_100300E30, "No SoundProfileRecord found", 27, 2, _swiftEmptyArrayStorage);
    sub_1000F29F8();
    v14 = swift_allocError();
    *v15 = 3;
    a2(0, v14);
  }
}

void sub_1001115FC(uint64_t a1, void (*a2)(void), void (*a3)(void))
{
  v5 = sub_1000EE870(&qword_1002F84F8, &unk_1002299F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for SoundProfileRecord(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    sub_100103934();
    sub_10019493C(v7);

    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_1000EEE6C(v7, &qword_1002F84F8, &unk_1002299F0);
      v14 = static os_log_type_t.default.getter();
      if (qword_1002F7AE0 != -1)
      {
        v22 = v14;
        swift_once();
        v14 = v22;
      }

      os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, qword_100300E30, "No SoundProfileRecord found", 27, 2, _swiftEmptyArrayStorage);
      (a2)(0);
    }

    else
    {
      sub_100114F1C(v7, v11, type metadata accessor for SoundProfileRecord);
      v16 = static os_log_type_t.default.getter();
      if (qword_1002F7AE0 != -1)
      {
        swift_once();
      }

      v17 = qword_100300E30;
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_100226100;
      v19 = sub_1000FAF14();
      v21 = v20;
      *(v18 + 56) = &type metadata for String;
      *(v18 + 64) = sub_1000EE954();
      *(v18 + 32) = v19;
      *(v18 + 40) = v21;
      os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v17, "Removing SoundProfileRecord: %@", 31, 2, v18);

      sub_1001BB488(a2, a3);

      sub_1001150A8(v11, type metadata accessor for SoundProfileRecord);
    }
  }

  else
  {
    sub_1000F29F8();
    swift_allocError();
    *v15 = 0;
    a2();
  }
}

uint64_t sub_100111A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v23 = *(v12 - 8);
  v24 = v12;
  __chkstk_darwin(v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v5 + OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a1;
  v17[4] = a2;
  aBlock[4] = a4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = v22;
  v18 = _Block_copy(aBlock);
  v19 = v15;

  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_100114C58(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_100115260(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v25 + 8))(v11, v9);
  (*(v23 + 8))(v14, v24);
}

uint64_t sub_100111D34(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(void (*)(void), uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      v12 = v9;
      swift_once();
      v9 = v12;
    }

    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, qword_100300E30, "resetCachedData", 15, 2, _swiftEmptyArrayStorage);
    sub_100103934();
    a4(a2, a3);
  }

  else
  {
    sub_1000F29F8();
    swift_allocError();
    *v11 = 0;
    a2();
  }
}

char *sub_100111EA0()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_100103934();
  v5 = OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_clientQueue;
  v6 = *&v4[OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_clientQueue];
  *v3 = v6;
  (*(v1 + 104))(v3, enum case for DispatchPredicate.notOnQueue(_:), v0);
  v7 = v6;
  v8 = _dispatchPreconditionTest(_:)();
  (*(v1 + 8))(v3, v0);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v9 = *&v4[v5];
  sub_1000EE870(&qword_1002F84F0, &unk_100227B20);
  OS_dispatch_queue.sync<A>(execute:)();

  v4 = v18;
  v8 = static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
LABEL_5:
    swift_once();
  }

  v10 = qword_100300E30;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100226100;
  v18 = v4;
  v12 = v4;
  v13 = String.init<A>(describing:)();
  v15 = v14;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_1000EE954();
  *(v11 + 32) = v13;
  *(v11 + 40) = v15;
  os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v10, "fetched accountInfo: %@", 23, 2, v11);

  return v4;
}

uint64_t sub_1001121F4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_clientQueue;
  v10 = *(a1 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_clientQueue);
  *v8 = v10;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.notOnQueue(_:), v4, v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v13 = 0x65736C6166;
  v14 = *(a1 + v9);
  sub_1000EE870(&qword_1002F84F0, &unk_100227B20);
  OS_dispatch_queue.sync<A>(execute:)();

  countAndFlagsBits = aBlock._countAndFlagsBits;
  v47[0] = 0xD00000000000002BLL;
  v47[1] = 0x8000000100268010;
  v16._object = 0x8000000100268040;
  v16._countAndFlagsBits = 0xD00000000000002BLL;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0xD00000000000002CLL;
  v17._object = 0x8000000100268070;
  String.append(_:)(v17);
  if (!countAndFlagsBits)
  {
    aBlock._countAndFlagsBits = 0x6C62616C69617641;
    aBlock._object = 0xEB00000000203A65;
LABEL_8:
    v25 = 0xE500000000000000;
    v26 = 0x65736C6166;
    goto LABEL_9;
  }

  v18 = [countAndFlagsBits loginID];
  if (v18)
  {
    v19 = v18;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    aBlock._countAndFlagsBits = 540689481;
    aBlock._object = 0xE400000000000000;
    v23._countAndFlagsBits = v20;
    v23._object = v22;
    String.append(_:)(v23);

    v24._countAndFlagsBits = 10;
    v24._object = 0xE100000000000000;
    String.append(_:)(v24);
    String.append(_:)(aBlock);
  }

  aBlock._countAndFlagsBits = 0x6C62616C69617641;
  aBlock._object = 0xEB00000000203A65;
  if (([countAndFlagsBits isSignedIn] & 1) == 0)
  {
    goto LABEL_8;
  }

  v25 = 0xE400000000000000;
  v26 = 1702195828;
LABEL_9:
  v27 = v25;
  String.append(_:)(*&v26);

  v28._countAndFlagsBits = 10;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);
  String.append(_:)(aBlock);

  aBlock._countAndFlagsBits = 0x3A656574616E614DLL;
  aBlock._object = 0xE900000000000020;
  if (countAndFlagsBits && ([countAndFlagsBits manateeAvailable] & 1) != 0)
  {
    v29 = 0xE400000000000000;
    v13 = 1702195828;
  }

  else
  {
    v29 = 0xE500000000000000;
  }

  v30._countAndFlagsBits = v13;
  v30._object = v29;
  String.append(_:)(v30);

  v31._countAndFlagsBits = 10;
  v31._object = 0xE100000000000000;
  String.append(_:)(v31);
  String.append(_:)(aBlock);

  v32._countAndFlagsBits = 0xD00000000000002DLL;
  v32._object = 0x80000001002680A0;
  String.append(_:)(v32);
  v33 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue);
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = swift_allocObject();
  v35[2] = v34;
  v35[3] = v47;
  v35[4] = a1;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_100114B38;
  *(v36 + 24) = v35;
  v45 = sub_1000F2B98;
  v46 = v36;
  aBlock._countAndFlagsBits = _NSConcreteStackBlock;
  aBlock._object = 1107296256;
  v43 = sub_100174328;
  v44 = &unk_1002BC9C0;
  v37 = _Block_copy(&aBlock);
  v38 = v33;

  dispatch_sync(v38, v37);

  _Block_release(v37);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v40 = v47[0];

    return v40;
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_1001126E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v228 = a3;
  v213 = type metadata accessor for BTDeferredRecord(0);
  v212 = *(v213 - 8);
  __chkstk_darwin(v213);
  v5 = &v203 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v233 = &v203 - v7;
  v8 = sub_1000EE870(&qword_1002F84F8, &unk_1002299F0);
  __chkstk_darwin(v8 - 8);
  v219 = &v203 - v9;
  v218 = type metadata accessor for SoundProfileRecord(0);
  v217 = *(v218 - 8);
  __chkstk_darwin(v218);
  v11 = &v203 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MagicPairingSettingsRecord(0);
  v209 = *(v12 - 8);
  __chkstk_darwin(v12 - 8);
  v211 = &v203 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v210 = &v203 - v15;
  v16 = sub_1000EE870(&qword_1002F9D90, &qword_100227B30);
  __chkstk_darwin(v16 - 8);
  v216 = &v203 - v17;
  v215 = type metadata accessor for LegacyMagicPairingSettingsRecords(0);
  v214 = *(v215 - 8);
  __chkstk_darwin(v215);
  v207 = &v203 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v208 = &v203 - v20;
  v21 = type metadata accessor for DeviceSupportInformationRecord(0);
  v224 = *(v21 - 8);
  __chkstk_darwin(v21 - 8);
  *&v231 = &v203 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DeviceRecord(0);
  *&v229 = *(v23 - 8);
  __chkstk_darwin(v23 - 8);
  v25 = &v203 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = type metadata accessor for URL();
  v222 = *(v223 - 1);
  __chkstk_darwin(v223);
  v221 = &v203 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000EE870(&qword_1002F8500, &qword_100227B38);
  __chkstk_darwin(v27 - 8);
  v29 = &v203 - v28;
  v30 = type metadata accessor for LegacyAccountMagicKeysRecord(0);
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v203 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v203 - v35;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v230 = v5;
  v204 = v11;
  v227 = "===========================\n";
  v37._object = 0x80000001002675A0;
  v37._countAndFlagsBits = 0xD00000000000002BLL;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 0xD000000000000029;
  v38._object = 0x80000001002680D0;
  v206 = 0xD000000000000029;
  String.append(_:)(v38);
  v39._countAndFlagsBits = 0xD00000000000002CLL;
  v226 = "Device Record]------------\n";
  v39._object = 0x8000000100267600;
  String.append(_:)(v39);
  v40 = static os_log_type_t.default.getter();
  if (qword_1002F7B00 != -1)
  {
    v199 = v40;
    swift_once();
    v40 = v199;
  }

  v41 = qword_100300E50;
  os_log(_:dso:log:_:_:)(v40, &_mh_execute_header, qword_100300E50, "-------------Account Keys-------------", 38, 2, _swiftEmptyArrayStorage);
  sub_100192464(v29);
  v42 = (*(v31 + 48))(v29, 1, v30);
  v232 = a2;
  if (v42 == 1)
  {
    sub_1000EEE6C(v29, &qword_1002F8500, &qword_100227B38);
  }

  else
  {
    sub_100114F1C(v29, v36, type metadata accessor for LegacyAccountMagicKeysRecord);
    LODWORD(v220) = static os_log_type_t.default.getter();
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_100226100;
    sub_100115124(v36, v33, type metadata accessor for LegacyAccountMagicKeysRecord);
    v44 = sub_1000FFC8C();
    v46 = v45;
    sub_1001150A8(v33, type metadata accessor for LegacyAccountMagicKeysRecord);
    *(v43 + 56) = &type metadata for String;
    *(v43 + 64) = sub_1000EE954();
    *(v43 + 32) = v44;
    *(v43 + 40) = v46;
    os_log(_:dso:log:_:_:)(v220, &_mh_execute_header, v41, "%@", 2, 2, v43);

    sub_100115124(v36, v33, type metadata accessor for LegacyAccountMagicKeysRecord);
    v47 = sub_1000FFC8C();
    v49 = v48;
    sub_1001150A8(v33, type metadata accessor for LegacyAccountMagicKeysRecord);
    v235._countAndFlagsBits = 0xA2D2D2D2D2D0ALL;
    v235._object = 0xE700000000000000;
    v50._countAndFlagsBits = v47;
    v50._object = v49;
    String.append(_:)(v50);

    v51._countAndFlagsBits = 10;
    v51._object = 0xE100000000000000;
    String.append(_:)(v51);

    String.append(_:)(v235);

    sub_1001150A8(v36, type metadata accessor for LegacyAccountMagicKeysRecord);
  }

  v52._object = (v227 | 0x8000000000000000);
  v52._countAndFlagsBits = 0xD00000000000002BLL;
  String.append(_:)(v52);
  v53._object = 0x8000000100268130;
  v53._countAndFlagsBits = 0xD00000000000002BLL;
  String.append(_:)(v53);
  v54._countAndFlagsBits = 0xD00000000000002CLL;
  v54._object = (v226 | 0x8000000000000000);
  String.append(_:)(v54);
  v55 = static os_log_type_t.default.getter();
  v234 = v41;
  os_log(_:dso:log:_:_:)(v55, &_mh_execute_header, v41, "-------------Device Records-------------", 40, 2, _swiftEmptyArrayStorage);
  v220 = objc_opt_self();
  if ([v220 isFirstUnlocked])
  {
    sub_100192340();
    if (qword_1002F79C0 != -1)
    {
      swift_once();
    }

    v56 = v223;
    v57 = sub_1000EE91C(v223, qword_100300AF0);
    v58 = v222;
    v59 = v221;
    (*(v222 + 16))(v221, v57, v56);
    v60 = sub_10018B20C(v59);

    (*(v58 + 8))(v59, v56);
    v61 = *(v60 + 2);
    if (v61)
    {
LABEL_11:
      v62 = (*(v229 + 80) + 32) & ~*(v229 + 80);
      v205 = v60;
      v63 = &v60[v62];
      v64 = *(v229 + 72);
      v229 = xmmword_100226100;
      v65 = v234;
      do
      {
        sub_100115124(v63, v25, type metadata accessor for DeviceRecord);
        v66 = static os_log_type_t.default.getter();
        sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
        v67 = swift_allocObject();
        *(v67 + 16) = v229;
        v68 = sub_1000EA6CC();
        v70 = v69;
        *(v67 + 56) = &type metadata for String;
        *(v67 + 64) = sub_1000EE954();
        *(v67 + 32) = v68;
        *(v67 + 40) = v70;
        os_log(_:dso:log:_:_:)(v66, &_mh_execute_header, v65, "%@", 2, 2, v67);

        v71 = sub_1000EA6CC();
        v73 = v72;
        sub_1001150A8(v25, type metadata accessor for DeviceRecord);
        v235._countAndFlagsBits = 0xA2D2D2D2D2D0ALL;
        v235._object = 0xE700000000000000;
        v74._countAndFlagsBits = v71;
        v74._object = v73;
        String.append(_:)(v74);

        v75._countAndFlagsBits = 10;
        v75._object = 0xE100000000000000;
        String.append(_:)(v75);

        String.append(_:)(v235);

        v63 += v64;
        --v61;
      }

      while (v61);
    }
  }

  else
  {
    v76 = static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      v200 = v76;
      swift_once();
      v76 = v200;
    }

    v60 = _swiftEmptyArrayStorage;
    os_log(_:dso:log:_:_:)(v76, &_mh_execute_header, qword_100300E38, "deviceRecords call failed because in device is in beforeFirstUnlock state", 73, 2, _swiftEmptyArrayStorage);
    v61 = _swiftEmptyArrayStorage[2];
    if (v61)
    {
      goto LABEL_11;
    }
  }

  v77._countAndFlagsBits = 0xD00000000000002DLL;
  v77._object = 0x80000001002680A0;
  String.append(_:)(v77);
  v78._object = (v227 | 0x8000000000000000);
  v78._countAndFlagsBits = 0xD00000000000002BLL;
  String.append(_:)(v78);
  v79._object = 0x80000001002681E0;
  v79._countAndFlagsBits = 0xD00000000000002BLL;
  String.append(_:)(v79);
  v80._countAndFlagsBits = 0xD00000000000002CLL;
  v80._object = (v226 | 0x8000000000000000);
  String.append(_:)(v80);
  v81 = static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)(v81, &_mh_execute_header, v234, "---Device Support Information Records---", 40, 2, _swiftEmptyArrayStorage);
  v82 = [v220 isFirstUnlocked];
  v205 = "==========================\n\n";
  if (v82)
  {
    sub_100192340();
    if (qword_1002F7A68 != -1)
    {
      swift_once();
    }

    v83 = v223;
    v84 = sub_1000EE91C(v223, qword_100300D48);
    v85 = v222;
    v86 = v221;
    (*(v222 + 16))(v221, v84, v83);
    v87 = sub_10018BDC8(v86);

    (*(v85 + 8))(v86, v83);
  }

  else
  {
    v88 = static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      v201 = v88;
      swift_once();
      v88 = v201;
    }

    v87 = _swiftEmptyArrayStorage;
    os_log(_:dso:log:_:_:)(v88, &_mh_execute_header, qword_100300E38, "deviceSupportInformationRecords call failed because in device is in beforeFirstUnlock state", 91, 2, _swiftEmptyArrayStorage);
  }

  v89 = &qword_100226000;
  v90 = v87[2];
  if (v90)
  {
    v91 = (*(v224 + 80) + 32) & ~*(v224 + 80);
    v203 = v87;
    v92 = v87 + v91;
    v93 = *(v224 + 72);
    v229 = xmmword_100226100;
    v94 = v234;
    v95 = v231;
    do
    {
      sub_100115124(v92, v95, type metadata accessor for DeviceSupportInformationRecord);
      v96 = static os_log_type_t.default.getter();
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v97 = swift_allocObject();
      *(v97 + 16) = v229;
      v98 = sub_100133818();
      v100 = v99;
      *(v97 + 56) = &type metadata for String;
      *(v97 + 64) = sub_1000EE954();
      *(v97 + 32) = v98;
      *(v97 + 40) = v100;
      v95 = v231;
      os_log(_:dso:log:_:_:)(v96, &_mh_execute_header, v94, "%@", 2, 2, v97, v203);

      v101 = sub_100133818();
      v103 = v102;
      sub_1001150A8(v95, type metadata accessor for DeviceSupportInformationRecord);
      v235._countAndFlagsBits = 0xA2D2D2D2D2D0ALL;
      v235._object = 0xE700000000000000;
      v104._countAndFlagsBits = v101;
      v104._object = v103;
      String.append(_:)(v104);

      v105._countAndFlagsBits = 10;
      v105._object = 0xE100000000000000;
      String.append(_:)(v105);

      String.append(_:)(v235);

      v92 += v93;
      --v90;
    }

    while (v90);

    v89 = &qword_100226000;
  }

  else
  {
  }

  v106._countAndFlagsBits = 0xD00000000000002CLL;
  v224 = "audioaccessoryd";
  v106._object = 0x8000000100267570;
  v107 = v232;
  String.append(_:)(v106);
  v108._object = (v227 | 0x8000000000000000);
  v108._countAndFlagsBits = 0xD00000000000002BLL;
  String.append(_:)(v108);
  v109._object = 0x80000001002682A0;
  v109._countAndFlagsBits = 0xD00000000000002BLL;
  String.append(_:)(v109);
  v110._countAndFlagsBits = 0xD00000000000002CLL;
  v110._object = (v226 | 0x8000000000000000);
  String.append(_:)(v110);
  v111 = static os_log_type_t.default.getter();
  v112 = v234;
  os_log(_:dso:log:_:_:)(v111, &_mh_execute_header, v234, "---------Legacy Magic Settings Records---------", 47, 2, _swiftEmptyArrayStorage);
  v113 = v216;
  sub_100194630(v216);
  if ((*(v214 + 48))(v113, 1, v215) == 1)
  {
    sub_1000EEE6C(v113, &qword_1002F9D90, &qword_100227B30);
  }

  else
  {
    v114 = v208;
    sub_100114F1C(v113, v208, type metadata accessor for LegacyMagicPairingSettingsRecords);
    v115 = static os_log_type_t.default.getter();
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v116 = swift_allocObject();
    *(v116 + 16) = *(v89 + 16);
    v117 = v207;
    sub_100115124(v114, v207, type metadata accessor for LegacyMagicPairingSettingsRecords);
    v118 = sub_10013C5B4();
    v120 = v119;
    sub_1001150A8(v117, type metadata accessor for LegacyMagicPairingSettingsRecords);
    *(v116 + 56) = &type metadata for String;
    *(v116 + 64) = sub_1000EE954();
    *(v116 + 32) = v118;
    *(v116 + 40) = v120;
    os_log(_:dso:log:_:_:)(v115, &_mh_execute_header, v112, "%@", 2, 2, v116);

    v89 = &qword_100226000;
    sub_100115124(v114, v117, type metadata accessor for LegacyMagicPairingSettingsRecords);
    v121 = sub_10013C5B4();
    v123 = v122;
    sub_1001150A8(v117, type metadata accessor for LegacyMagicPairingSettingsRecords);
    v235._countAndFlagsBits = 0xA2D2D2D2D2D0ALL;
    v235._object = 0xE700000000000000;
    v124._countAndFlagsBits = v121;
    v124._object = v123;
    String.append(_:)(v124);

    v125._countAndFlagsBits = 10;
    v125._object = 0xE100000000000000;
    String.append(_:)(v125);

    String.append(_:)(v235);

    sub_1001150A8(v114, type metadata accessor for LegacyMagicPairingSettingsRecords);
  }

  v126 = v230;
  v127._countAndFlagsBits = 0xD00000000000002CLL;
  v127._object = (v224 | 0x8000000000000000);
  String.append(_:)(v127);
  v128._object = (v227 | 0x8000000000000000);
  v128._countAndFlagsBits = 0xD00000000000002BLL;
  String.append(_:)(v128);
  v129._object = 0x8000000100268300;
  v129._countAndFlagsBits = 0xD00000000000002BLL;
  String.append(_:)(v129);
  v130._countAndFlagsBits = 0xD00000000000002CLL;
  v130._object = (v226 | 0x8000000000000000);
  String.append(_:)(v130);
  v131 = static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)(v131, &_mh_execute_header, v112, "---------Magic Settings Records---------", 40, 2, _swiftEmptyArrayStorage);
  if ([v220 isFirstUnlocked])
  {
    sub_100192340();
    if (qword_1002F7A00 != -1)
    {
      swift_once();
    }

    v132 = v223;
    v133 = sub_1000EE91C(v223, qword_100300BA8);
    v134 = v222;
    v135 = v221;
    (*(v222 + 16))(v221, v133, v132);
    v136 = sub_10018C984(v135);

    (*(v134 + 8))(v135, v132);
    v137 = v136[2];
    if (!v137)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v152 = static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      v202 = v152;
      swift_once();
      v152 = v202;
    }

    v136 = _swiftEmptyArrayStorage;
    os_log(_:dso:log:_:_:)(v152, &_mh_execute_header, qword_100300E38, "magicPairingSettingsRecords call failed because in device is in beforeFirstUnlock state", 87, 2, _swiftEmptyArrayStorage);
    v137 = _swiftEmptyArrayStorage[2];
    if (!v137)
    {
      goto LABEL_42;
    }
  }

  v138 = *(v209 + 80);
  v223 = v136;
  v139 = v136 + ((v138 + 32) & ~v138);
  *&v231 = *(v209 + 72);
  v229 = *(v89 + 16);
  v140 = v211;
  v141 = v210;
  do
  {
    sub_100115124(v139, v141, type metadata accessor for MagicPairingSettingsRecord);
    v142 = static os_log_type_t.default.getter();
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v143 = swift_allocObject();
    *(v143 + 16) = v229;
    sub_100115124(v141, v140, type metadata accessor for MagicPairingSettingsRecord);
    v144 = sub_100116308();
    v146 = v145;
    sub_1001150A8(v140, type metadata accessor for MagicPairingSettingsRecord);
    *(v143 + 56) = &type metadata for String;
    *(v143 + 64) = sub_1000EE954();
    *(v143 + 32) = v144;
    *(v143 + 40) = v146;
    os_log(_:dso:log:_:_:)(v142, &_mh_execute_header, v234, "%@", 2, 2, v143);
    v107 = v232;

    sub_100114F1C(v141, v140, type metadata accessor for MagicPairingSettingsRecord);
    v147 = sub_100116308();
    v149 = v148;
    sub_1001150A8(v140, type metadata accessor for MagicPairingSettingsRecord);
    v235._countAndFlagsBits = 0xA2D2D2D2D2D0ALL;
    v235._object = 0xE700000000000000;
    v150._countAndFlagsBits = v147;
    v150._object = v149;
    String.append(_:)(v150);

    v151._countAndFlagsBits = 10;
    v151._object = 0xE100000000000000;
    String.append(_:)(v151);

    String.append(_:)(v235);

    v139 += v231;
    --v137;
  }

  while (v137);
LABEL_42:

  v153._countAndFlagsBits = 0xD00000000000002CLL;
  v153._object = (v224 | 0x8000000000000000);
  String.append(_:)(v153);
  v154._object = (v227 | 0x8000000000000000);
  v154._countAndFlagsBits = 0xD00000000000002BLL;
  String.append(_:)(v154);
  v155._object = 0x80000001002683C0;
  v155._countAndFlagsBits = v206;
  String.append(_:)(v155);
  v156._countAndFlagsBits = 0xD00000000000002CLL;
  v156._object = (v226 | 0x8000000000000000);
  String.append(_:)(v156);
  v235._countAndFlagsBits = 0x203A70696B53;
  v235._object = 0xE600000000000000;
  sub_100103934();

  if (IsAppleInternalBuild() && (v157 = [objc_opt_self() standardUserDefaults], v158 = String._bridgeToObjectiveC()(), v159 = objc_msgSend(v157, "BOOLForKey:", v158), v157, v158, (v159 & 1) != 0))
  {
    v160 = 0xE400000000000000;
    v161 = 1702195828;
  }

  else
  {
    v160 = 0xE500000000000000;
    v161 = 0x65736C6166;
  }

  v162 = v160;
  String.append(_:)(*&v161);

  v163._countAndFlagsBits = 10;
  v163._object = 0xE100000000000000;
  String.append(_:)(v163);
  String.append(_:)(v235);

  v164 = static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)(v164, &_mh_execute_header, v234, "---------Sound Profile Record---------", 38, 2, _swiftEmptyArrayStorage);
  v165 = static os_log_type_t.default.getter();
  v223 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v166 = swift_allocObject();
  v231 = xmmword_100226100;
  *(v166 + 16) = xmmword_100226100;
  if (IsAppleInternalBuild())
  {
    v167 = [objc_opt_self() standardUserDefaults];
    v168 = String._bridgeToObjectiveC()();
    v169 = [v167 BOOLForKey:v168];
  }

  else
  {
    v169 = 0;
  }

  v171 = v233;
  v170 = v234;
  *(v166 + 56) = &type metadata for Bool;
  *(v166 + 64) = &protocol witness table for Bool;
  *(v166 + 32) = v169;
  os_log(_:dso:log:_:_:)(v165, &_mh_execute_header, v170, "Skip: %d", v203);

  v172 = v219;
  sub_10019493C(v219);
  if ((*(v217 + 48))(v172, 1, v218) == 1)
  {
    sub_1000EEE6C(v172, &qword_1002F84F8, &unk_1002299F0);
  }

  else
  {
    v173 = v204;
    sub_100114F1C(v172, v204, type metadata accessor for SoundProfileRecord);
    v174._countAndFlagsBits = sub_1000FAF14();
    v235._countAndFlagsBits = 0xA2D2D2D2D2D0ALL;
    v235._object = 0xE700000000000000;
    String.append(_:)(v174);

    v175._countAndFlagsBits = 10;
    v175._object = 0xE100000000000000;
    String.append(_:)(v175);

    String.append(_:)(v235);

    v176 = static os_log_type_t.default.getter();
    v177 = swift_allocObject();
    *(v177 + 16) = v231;
    v178 = sub_1000FAF14();
    v180 = v179;
    *(v177 + 56) = &type metadata for String;
    *(v177 + 64) = sub_1000EE954();
    *(v177 + 32) = v178;
    *(v177 + 40) = v180;
    os_log(_:dso:log:_:_:)(v176, &_mh_execute_header, v170, "%@", 2, 2, v177);

    sub_1001150A8(v173, type metadata accessor for SoundProfileRecord);
  }

  v181 = v205;
  sub_1000F1A2C(v107);
  sub_10016D8BC(v107);
  sub_10016FCC0(v107);
  v182._countAndFlagsBits = 0xD00000000000002DLL;
  v182._object = (v181 | 0x8000000000000000);
  String.append(_:)(v182);
  v183._object = (v227 | 0x8000000000000000);
  v183._countAndFlagsBits = 0xD00000000000002BLL;
  String.append(_:)(v183);
  v184._object = 0x8000000100268440;
  v184._countAndFlagsBits = 0xD00000000000002BLL;
  String.append(_:)(v184);
  v185._countAndFlagsBits = 0xD00000000000002CLL;
  v185._object = (v226 | 0x8000000000000000);
  String.append(_:)(v185);
  v186 = static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)(v186, &_mh_execute_header, v170, "--------Cloud Deferred State Dump-------", 40, 2, _swiftEmptyArrayStorage);
  v187 = sub_10019391C();
  v188 = v187[2];
  if (v188)
  {
    v189 = v187 + ((*(v212 + 80) + 32) & ~*(v212 + 80));
    v190 = *(v212 + 72);
    v228 = v187;
    *&v229 = v190;
    do
    {
      sub_100115124(v189, v171, type metadata accessor for BTDeferredRecord);
      v191 = static os_log_type_t.default.getter();
      v192 = swift_allocObject();
      *(v192 + 16) = v231;
      sub_100115124(v233, v126, type metadata accessor for BTDeferredRecord);
      v193 = String.init<A>(describing:)();
      v195 = v194;
      *(v192 + 56) = &type metadata for String;
      *(v192 + 64) = sub_1000EE954();
      *(v192 + 32) = v193;
      *(v192 + 40) = v195;
      v126 = v230;
      os_log(_:dso:log:_:_:)(v191, &_mh_execute_header, v234, "%@", 2, 2, v192);
      v171 = v233;

      sub_100114F1C(v171, v126, type metadata accessor for BTDeferredRecord);
      v196._countAndFlagsBits = String.init<A>(describing:)();
      v235._countAndFlagsBits = 0xA2D2D2D2D2D0ALL;
      v235._object = 0xE700000000000000;
      String.append(_:)(v196);

      v197._countAndFlagsBits = 10;
      v197._object = 0xE100000000000000;
      String.append(_:)(v197);

      String.append(_:)(v235);

      v189 += v229;
      --v188;
    }

    while (v188);
  }

  v198._countAndFlagsBits = 0xD00000000000002CLL;
  v198._object = (v224 | 0x8000000000000000);
  String.append(_:)(v198);
}

uint64_t sub_10011436C(uint64_t a1, char a2)
{
  v4 = a1;
  v5 = static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  v6 = qword_100300E30;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100226100;
  *(v7 + 56) = &type metadata for Bool;
  *(v7 + 64) = &protocol witness table for Bool;
  *(v7 + 32) = v4 & 1;
  os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "accountStatus: %d", v14);

  v8 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
  result = swift_beginAccess();
  v10 = *(v2 + v8);
  if (v10 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v11 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      return result;
    }
  }

  if (v11 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v11; ++i)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v13 = *(v10 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      if ([v13 respondsToSelector:"accountStatusUpdateWithAvailable:forced:"])
      {
        [v13 accountStatusUpdateWithAvailable:v4 & 1 forced:a2 & 1];
      }

      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_10011455C(uint64_t a1)
{
  v2 = static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  v3 = qword_100300E30;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100226100;
  sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
  v5 = Array.description.getter();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_1000EE954();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v3, "Legacy magic records removed: %@", 32, 2, v4);

  v8 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
  result = swift_beginAccess();
  v10 = *(v1 + v8);
  if (v10 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v11 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      return result;
    }
  }

  if (v11 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v11; ++i)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v13 = *(v10 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      if ([v13 respondsToSelector:"magicPairingRecordsRemovedWithRecords:"])
      {
        swift_unknownObjectRetain();
        isa = Array._bridgeToObjectiveC()().super.isa;
        [v13 magicPairingRecordsRemovedWithRecords:isa];
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_100114798(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + *(type metadata accessor for MagicPairingSettingsRecord(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = (a2 + *(type metadata accessor for DeviceRecord(0) + 24));
  if (v4 == *v6 && v5 == v6[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10011481C(uint64_t a1)
{
  v2 = type metadata accessor for CloudCoordinatorConfiguration(0);
  __chkstk_darwin(v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_100192340();
  v14 = a1;
  OS_dispatch_queue.sync<A>(execute:)();

  v5 = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v6 = qword_100300E38;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100226100;
  sub_100115124(a1, v4, type metadata accessor for CloudCoordinatorConfiguration);
  v8 = String.init<A>(describing:)();
  v10 = v9;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_1000EE954();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "Successfully cached record: %@", 30, 2, v7);
}

uint64_t sub_100114B44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100114BF0()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_10011084C(v2, v3, v4, v5);
}

uint64_t sub_100114C58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100114D48()
{
  result = qword_1002F8508;
  if (!qword_1002F8508)
  {
    v3 = sub_1000FA784(255, &qword_1002F7ED8, NSError_ptr);
    result = swift_getWitnessTable(&protocol conformance descriptor for NSObject, v3, v0, v1);
    atomic_store(result, &qword_1002F8508);
  }

  return result;
}

uint64_t sub_100114F1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100114F90(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100115030(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1001150A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100115124(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100115260(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_1000F2B2C(a2, a3);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceManager.DeviceManagerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceManager.DeviceManagerError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudioAccessoryFeatures(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AudioAccessoryFeatures(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_100115500()
{
  result = qword_1002F8538;
  if (!qword_1002F8538)
  {
    result = swift_getWitnessTable(&unk_100227C08, &type metadata for AudioAccessoryFeatures, v0, v1);
    atomic_store(result, &qword_1002F8538);
  }

  return result;
}

unint64_t sub_10011555C()
{
  result = qword_1002F8540;
  if (!qword_1002F8540)
  {
    result = swift_getWitnessTable(&unk_100227CB0, &type metadata for DeviceManager.DeviceManagerError, v0, v1);
    atomic_store(result, &qword_1002F8540);
  }

  return result;
}

unint64_t sub_1001155B0()
{
  result = qword_1002F8548;
  if (!qword_1002F8548)
  {
    result = swift_getWitnessTable(&unk_100227C30, &type metadata for DeviceManager.DeviceManagerError, v0, v1);
    atomic_store(result, &qword_1002F8548);
  }

  return result;
}

uint64_t *DarwinNotificationManager.shared.unsafeMutableAddressor()
{
  if (qword_1002F79F8 != -1)
  {
    swift_once();
  }

  return &static DarwinNotificationManager.shared;
}

id sub_1001157AC()
{
  result = [objc_allocWithZone(type metadata accessor for DarwinNotificationManager()) init];
  static DarwinNotificationManager.shared = result;
  return result;
}

id static DarwinNotificationManager.shared.getter()
{
  if (qword_1002F79F8 != -1)
  {
    swift_once();
  }

  v1 = static DarwinNotificationManager.shared;

  return v1;
}

uint64_t DarwinNotificationManager.registerHelper(helper:)(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15audioaccessoryd25DarwinNotificationManager_helpers;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

uint64_t DarwinNotificationManager.unregisterHelper(helper:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15audioaccessoryd25DarwinNotificationManager_helpers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v12 = _swiftEmptyArrayStorage;
  if (v4 >> 62)
  {
LABEL_19:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    v10 = v3;
    v11 = v1;
    v3 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v1 = v11;
          v8 = v12;
          v3 = v10;
          goto LABEL_17;
        }
      }

      else
      {
        if (v3 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v6 = *(v4 + 8 * v3 + 32);

        v7 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_14;
        }
      }

      if (v6 == a1)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v1 = &v12;
        specialized ContiguousArray._endMutation()();
      }

      ++v3;
      if (v7 == v5)
      {
        goto LABEL_15;
      }
    }
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_17:

  *(v1 + v3) = v8;
}

Swift::Void __swiftcall DarwinNotificationManager.setUp()()
{
  v1 = v0;
  sub_100115C10();
  v2 = static OS_dispatch_queue.main.getter();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v6[4] = sub_1001152B4;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100115F4C;
  v6[3] = &unk_1002BDA80;
  v4 = _Block_copy(v6);
  v5 = v1;

  xpc_set_event_stream_handler("com.apple.notifyd.matching", v2, v4);
  _Block_release(v4);
}

unint64_t sub_100115C10()
{
  result = qword_1002F9700;
  if (!qword_1002F9700)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002F9700);
  }

  return result;
}

const char *sub_100115C5C(void *a1, uint64_t a2)
{
  result = xpc_dictionary_get_string(a1, _xpc_event_key_name);
  if (result)
  {
    v4 = String.init(cString:)();
    v6 = v5;
    v7 = static os_log_type_t.default.getter();
    if (qword_1002F7AC8 != -1)
    {
      swift_once();
    }

    v8 = qword_100300E18;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100226100;
    *(v9 + 56) = &type metadata for String;
    v29 = sub_1000EE954();
    *(v9 + 64) = v29;
    *(v9 + 32) = v4;
    *(v9 + 40) = v6;

    v30 = v8;
    os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "On xpc event stream, com.apple.notifyd.matching, notification %@", 64, 2, v9);

    v10 = OBJC_IVAR____TtC15audioaccessoryd25DarwinNotificationManager_helpers;
    result = swift_beginAccess();
    v11 = *(a2 + v10);
    if (v11 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v12 = result;
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
LABEL_6:
        if (v12 < 1)
        {
          __break(1u);
          return result;
        }

        v13 = v11 & 0xC000000000000001;

        v14 = 0;
        v28 = v11 & 0xC000000000000001;
        do
        {
          if (v13)
          {
            v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v15 = *(v11 + 8 * v14 + 32);
          }

          v16 = String._bridgeToObjectiveC()();
          v17 = *(v15 + 16);
          if (*(v17 + 16))
          {

            v18 = sub_1000F8CD4(v16);
            if (v19)
            {
              v20 = v6;
              v21 = *(*(v17 + 56) + 16 * v18);

              v22 = static os_log_type_t.default.getter();
              v23 = v11;
              v24 = swift_allocObject();
              *(v24 + 16) = xmmword_100226100;
              v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              *(v24 + 56) = &type metadata for String;
              *(v24 + 64) = v29;
              *(v24 + 32) = v25;
              *(v24 + 40) = v26;
              os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v30, "Invoking callback, notification, %@", 35, 2, v24);
              v11 = v23;

              v21(v27);
              v6 = v20;
              v13 = v28;
            }

            else
            {
            }
          }

          ++v14;
        }

        while (v12 != v14);
      }
    }
  }

  return result;
}

uint64_t sub_100115F4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_100115FAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id DarwinNotificationManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DarwinNotificationManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100116138()
{
  v0 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000EE8B8(v7, qword_100300BA8);
  sub_1000EE91C(v3, qword_100300BA8);
  URL.init(string:)();
  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    URL.appendingPathComponent(_:isDirectory:)();
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

id sub_100116308()
{
  v1 = v0;
  v118 = type metadata accessor for Date();
  v2 = *(v118 - 8);
  __chkstk_darwin(v118 - 8);
  v111 = &v111 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v4 - 8);
  v6 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v111 - v8;
  __chkstk_darwin(v10);
  v12 = &v111 - v11;
  __chkstk_darwin(v13);
  v15 = &v111 - v14;
  v16 = objc_autoreleasePoolPush();
  v17 = type metadata accessor for MagicPairingSettingsRecord(0);
  isa = sub_100169D38(*(v1 + v17[5]), *(v1 + v17[5] + 8));
  v114 = v6;
  v115 = v9;
  if (!isa)
  {
    isa = sub_1000F8100().super.isa;
  }

  v117 = isa;
  v119 = isa;
  sub_10011A7B0(&v119);
  objc_autoreleasePoolPop(v16);
  v119 = 0;
  v120 = 0xE000000000000000;
  _StringGuts.grow(_:)(436);
  v19._countAndFlagsBits = 0xD00000000000001DLL;
  v19._object = 0x8000000100269440;
  String.append(_:)(v19);
  type metadata accessor for UUID();
  sub_100121ABC(&unk_1002F7BC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v20);

  v21._countAndFlagsBits = 8236;
  v21._object = 0xE200000000000000;
  String.append(_:)(v21);
  String.append(_:)(*(v1 + v17[6]));
  v22._countAndFlagsBits = 0x203A646970202CLL;
  v22._object = 0xE700000000000000;
  String.append(_:)(v22);
  String.append(_:)(*(v1 + v17[13]));
  v23._countAndFlagsBits = 0x203A646976202CLL;
  v23._object = 0xE700000000000000;
  String.append(_:)(v23);
  String.append(_:)(*(v1 + v17[14]));
  v24._object = 0xEE00203A746E6948;
  v24._countAndFlagsBits = 0x72657473616D202CLL;
  String.append(_:)(v24);
  v25._countAndFlagsBits = Data.hexString.getter(*(v1 + v17[8]), *(v1 + v17[8] + 8));
  String.append(_:)(v25);

  v26._object = 0xED0000203A79654BLL;
  v26._countAndFlagsBits = 0x72657473616D202CLL;
  String.append(_:)(v26);
  v27._countAndFlagsBits = Data.hexString.getter(*(v1 + v17[7]), *(v1 + v17[7] + 8));
  String.append(_:)(v27);

  v28._countAndFlagsBits = 0xD000000000000011;
  v28._object = 0x8000000100269460;
  String.append(_:)(v28);
  v29._countAndFlagsBits = Data.hexString.getter(*(v1 + v17[10]), *(v1 + v17[10] + 8));
  String.append(_:)(v29);

  v30._object = 0x8000000100269480;
  v30._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v30);
  v31._countAndFlagsBits = Data.hexString.getter(*(v1 + v17[9]), *(v1 + v17[9] + 8));
  String.append(_:)(v31);

  v32._countAndFlagsBits = 0xD000000000000011;
  v32._object = 0x80000001002694A0;
  String.append(_:)(v32);
  v33._countAndFlagsBits = Data.hexString.getter(*(v1 + v17[12]), *(v1 + v17[12] + 8));
  String.append(_:)(v33);

  v34._countAndFlagsBits = 0x203A6B7269202CLL;
  v34._object = 0xE700000000000000;
  String.append(_:)(v34);
  v35._countAndFlagsBits = Data.hexString.getter(*(v1 + v17[11]), *(v1 + v17[11] + 8));
  String.append(_:)(v35);

  v36._countAndFlagsBits = 0x6E6F74747562202CLL;
  v36._object = 0xEF203A7365646F4DLL;
  String.append(_:)(v36);
  String.append(_:)(*(v1 + v17[15]));
  v37._countAndFlagsBits = 0x3A726F6C6F63202CLL;
  v37._object = 0xE900000000000020;
  String.append(_:)(v37);
  String.append(_:)(*(v1 + v17[16]));
  v38._countAndFlagsBits = 0xD000000000000019;
  v38._object = 0x80000001002694C0;
  String.append(_:)(v38);
  String.append(_:)(*(v1 + v17[17]));
  v39._countAndFlagsBits = 0xD000000000000019;
  v39._object = 0x80000001002694E0;
  String.append(_:)(v39);
  String.append(_:)(*(v1 + v17[18]));
  v40._object = 0x8000000100269500;
  v40._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v40);
  String.append(_:)(*(v1 + v17[21]));
  v41._countAndFlagsBits = 0xD000000000000015;
  v41._object = 0x8000000100269520;
  String.append(_:)(v41);
  String.append(_:)(*(v1 + v17[19]));
  v42._countAndFlagsBits = 0xD000000000000017;
  v42._object = 0x8000000100269540;
  String.append(_:)(v42);
  String.append(_:)(*(v1 + v17[20]));
  v43._countAndFlagsBits = 0x656863746172202CLL;
  v43._object = 0xEB00000000203A74;
  String.append(_:)(v43);
  String.append(_:)(*(v1 + v17[24]));
  v44._object = 0x8000000100269560;
  v44._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v44);
  String.append(_:)(*(v1 + v17[26]));
  v45._countAndFlagsBits = 0xD000000000000015;
  v45._object = 0x8000000100269580;
  String.append(_:)(v45);
  String.append(_:)(*(v1 + v17[27]));
  v46._countAndFlagsBits = 0x6F6973726576202CLL;
  v46._object = 0xEB00000000203A6ELL;
  String.append(_:)(v46);
  String.append(_:)(*(v1 + v17[28]));
  v47._countAndFlagsBits = 0xD00000000000001CLL;
  v47._object = 0x80000001002695A0;
  String.append(_:)(v47);
  String.append(_:)(*(v1 + v17[22]));
  v48._countAndFlagsBits = 0xD000000000000026;
  v48._object = 0x80000001002695C0;
  String.append(_:)(v48);
  String.append(_:)(*(v1 + v17[23]));
  v49._countAndFlagsBits = 2604;
  v49._object = 0xE200000000000000;
  String.append(_:)(v49);
  v112 = v119;
  v113 = v120;
  v119 = 0;
  v120 = 0xE000000000000000;
  _StringGuts.grow(_:)(59);
  v50._countAndFlagsBits = 0x7461657263202020;
  v50._object = 0xEE00203A6E4F6465;
  String.append(_:)(v50);
  v51 = [v117 creationDate];
  if (v51)
  {
    v52 = v51;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v53 = v2[7];
    v54 = v12;
    v55 = 0;
  }

  else
  {
    v53 = v2[7];
    v54 = v12;
    v55 = 1;
  }

  v56 = v118;
  v53(v54, v55, 1, v118);
  sub_1000EED5C(v12, v15);
  v57 = v2[6];
  v58 = v57(v15, 1, v56);
  v116 = v2;
  if (v58)
  {
    sub_1000EEE6C(v15, &qword_1002F7EF0, &unk_100226C90);
    v59 = objc_opt_self();
    v60 = Date._bridgeToObjectiveC()().super.isa;
    v61 = [v59 localizedStringFromDate:v60 dateStyle:2 timeStyle:2];

    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v63;
  }

  else
  {
    v65 = v2[2];
    v66 = v111;
    v65(v111, v15, v56);
    sub_1000EEE6C(v15, &qword_1002F7EF0, &unk_100226C90);
    v67 = objc_opt_self();
    v68 = Date._bridgeToObjectiveC()().super.isa;
    v69 = [v67 localizedStringFromDate:v68 dateStyle:2 timeStyle:2];

    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v70;

    (v116[1])(v66, v118);
  }

  v71._countAndFlagsBits = v62;
  v71._object = v64;
  String.append(_:)(v71);

  v72._countAndFlagsBits = 0x696669646F6D202CLL;
  v72._object = 0xEE00203A6E4F6465;
  String.append(_:)(v72);
  v73 = v117;
  v74 = [v117 modificationDate];
  if (v74)
  {
    v75 = v114;
    v76 = v74;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v77 = 0;
    v78 = v118;
  }

  else
  {
    v77 = 1;
    v78 = v118;
    v75 = v114;
  }

  v79 = v116;
  v53(v75, v77, 1, v78);
  v80 = v115;
  sub_1000EED5C(v75, v115);
  if (v57(v80, 1, v78))
  {
    sub_1000EEE6C(v80, &qword_1002F7EF0, &unk_100226C90);
    v81 = objc_opt_self();
    v82 = Date._bridgeToObjectiveC()().super.isa;
    v83 = [v81 localizedStringFromDate:v82 dateStyle:2 timeStyle:2];

    v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v86 = v85;
  }

  else
  {
    v87 = v111;
    (v79[2])(v111, v80, v78);
    sub_1000EEE6C(v80, &qword_1002F7EF0, &unk_100226C90);
    v88 = objc_opt_self();
    v89 = Date._bridgeToObjectiveC()().super.isa;
    v90 = [v88 localizedStringFromDate:v89 dateStyle:2 timeStyle:2];

    v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v86 = v91;

    (v79[1])(v87, v78);
  }

  v92._countAndFlagsBits = v84;
  v92._object = v86;
  String.append(_:)(v92);

  v93._object = 0xEF203A7962206465;
  v93._countAndFlagsBits = 0x696669646F6D202CLL;
  String.append(_:)(v93);
  v94 = [v73 modifiedByDevice];
  if (v94)
  {
    v95 = v94;
    v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v98 = v97;
  }

  else
  {
    v98 = 0xE200000000000000;
    v96 = 15932;
  }

  v99._countAndFlagsBits = v96;
  v99._object = v98;
  String.append(_:)(v99);

  v100._countAndFlagsBits = 0x203A67617465202CLL;
  v100._object = 0xE800000000000000;
  String.append(_:)(v100);
  v101 = [v73 recordChangeTag];
  if (v101)
  {
    v102 = v101;
    v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v105 = v104;
  }

  else
  {
    v105 = 0xE200000000000000;
    v103 = 15932;
  }

  v106._countAndFlagsBits = v103;
  v106._object = v105;
  String.append(_:)(v106);

  v107 = v119;
  v108 = v120;
  v119 = v112;
  v120 = v113;

  v109._countAndFlagsBits = v107;
  v109._object = v108;
  String.append(_:)(v109);

  return v119;
}

uint64_t sub_100116EB8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MagicPairingSettingsRecord(0);
  *(a3 + v6[5]) = xmmword_100227DA0;
  v7 = type metadata accessor for UUID();
  v148 = *(v7 - 8);
  (*(v148 + 16))(a3, a1, v7);
  v8 = [a2 bluetoothAddress];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = (a3 + v6[6]);
  *v12 = v9;
  v12[1] = v11;
  v13 = [a2 productID];
  if (v13)
  {
    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0xE000000000000000;
  }

  v18 = (a3 + v6[13]);
  *v18 = v15;
  v18[1] = v17;
  v19 = [a2 vendorID];
  if (v19)
  {
    v20 = v19;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xE000000000000000;
  }

  v24 = (a3 + v6[14]);
  *v24 = v21;
  v24[1] = v23;
  v25 = [a2 masterHint];
  if (v25)
  {
    v26 = v25;
    v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0xC000000000000000;
  }

  v30 = (a3 + v6[8]);
  *v30 = v27;
  v30[1] = v29;
  v31 = [a2 masterKey];
  if (v31)
  {
    v32 = v31;
    v33 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0xC000000000000000;
  }

  v36 = (a3 + v6[7]);
  *v36 = v33;
  v36[1] = v35;
  v37 = [a2 accessoryHint];
  if (v37)
  {
    v38 = v37;
    v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0xC000000000000000;
  }

  v42 = (a3 + v6[10]);
  *v42 = v39;
  v42[1] = v41;
  v43 = [a2 accessoryKey];
  if (v43)
  {
    v44 = v43;
    v45 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;
  }

  else
  {
    v45 = 0;
    v47 = 0xC000000000000000;
  }

  v48 = (a3 + v6[9]);
  *v48 = v45;
  v48[1] = v47;
  v49 = [a2 buttonModes];
  if (v49)
  {
    v50 = v49;
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;
  }

  else
  {
    v51 = 0;
    v53 = 0xE000000000000000;
  }

  v54 = (a3 + v6[15]);
  *v54 = v51;
  v54[1] = v53;
  v55 = [a2 color];
  if (v55)
  {
    v56 = v55;
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;
  }

  else
  {
    v57 = 0;
    v59 = 0xE000000000000000;
  }

  v60 = (a3 + v6[16]);
  *v60 = v57;
  v60[1] = v59;
  v61 = [a2 deviceIDFeatureBitsV1];
  if (v61)
  {
    v62 = v61;
    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;
  }

  else
  {
    v63 = 0;
    v65 = 0xE000000000000000;
  }

  v66 = (a3 + v6[17]);
  *v66 = v63;
  v66[1] = v65;
  v67 = [a2 deviceIDFeatureBitsV2];
  if (v67)
  {
    v68 = v67;
    v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = v70;
  }

  else
  {
    v69 = 0;
    v71 = 0xE000000000000000;
  }

  v72 = (a3 + v6[18]);
  *v72 = v69;
  v72[1] = v71;
  v73 = [a2 encryptionKey];
  if (v73)
  {
    v74 = v73;
    v75 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v77 = v76;
  }

  else
  {
    v75 = 0;
    v77 = 0xC000000000000000;
  }

  v78 = (a3 + v6[12]);
  *v78 = v75;
  v78[1] = v77;
  v79 = [a2 irk];
  if (v79)
  {
    v80 = v79;
    v81 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v83 = v82;
  }

  else
  {
    v81 = 0;
    v83 = 0xC000000000000000;
  }

  v84 = (a3 + v6[11]);
  *v84 = v81;
  v84[1] = v83;
  v85 = [a2 listeningServices];
  if (v85)
  {
    v86 = v85;
    v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v89 = v88;
  }

  else
  {
    v87 = 0;
    v89 = 0xE000000000000000;
  }

  v90 = (a3 + v6[19]);
  *v90 = v87;
  v90[1] = v89;
  v91 = [a2 listeningServicesV2];
  if (v91)
  {
    v92 = v91;
    v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v95 = v94;
  }

  else
  {
    v93 = 0;
    v95 = 0xE000000000000000;
  }

  v96 = (a3 + v6[20]);
  *v96 = v93;
  v96[1] = v95;
  v97 = [a2 spatialAudio];
  if (v97)
  {
    v98 = v97;
    v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v101 = v100;
  }

  else
  {
    v99 = 0;
    v101 = 0xE000000000000000;
  }

  v102 = (a3 + v6[21]);
  *v102 = v99;
  v102[1] = v101;
  v103 = [a2 optimizedBatteryCharging];
  if (v103)
  {
    v104 = v103;
    v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v107 = v106;
  }

  else
  {
    v105 = 0;
    v107 = 0xE000000000000000;
  }

  v108 = (a3 + v6[22]);
  *v108 = v105;
  v108[1] = v107;
  v109 = [a2 optimizedBatteryFullChargeDeadline];
  if (v109)
  {
    v110 = v109;
    v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v113 = v112;
  }

  else
  {
    v111 = 0;
    v113 = 0xE000000000000000;
  }

  v114 = (a3 + v6[23]);
  *v114 = v111;
  v114[1] = v113;
  v115 = [a2 ratchet];
  if (v115)
  {
    v116 = v115;
    v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v119 = v118;
  }

  else
  {
    v117 = 0;
    v119 = 0xE000000000000000;
  }

  v120 = (a3 + v6[24]);
  *v120 = v117;
  v120[1] = v119;
  v121 = [a2 reserved];
  if (v121)
  {
    v122 = v121;
    v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v125 = v124;
  }

  else
  {
    v123 = 0;
    v125 = 0xE000000000000000;
  }

  v126 = (a3 + v6[25]);
  *v126 = v123;
  v126[1] = v125;
  v127 = [a2 settingsMask];
  if (v127)
  {
    v128 = v127;
    v129 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v131 = v130;
  }

  else
  {
    v129 = 0;
    v131 = 0xE000000000000000;
  }

  v132 = (a3 + v6[26]);
  *v132 = v129;
  v132[1] = v131;
  v133 = [a2 supportedServices];
  if (v133)
  {
    v134 = v133;
    v135 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v137 = v136;
  }

  else
  {
    v135 = 0;
    v137 = 0xE000000000000000;
  }

  v138 = (a3 + v6[27]);
  *v138 = v135;
  v138[1] = v137;
  v139 = [a2 version];
  if (v139)
  {
    v140 = v139;
    v141 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v143 = v142;
  }

  else
  {
    v141 = 0;
    v143 = 0xE000000000000000;
  }

  v144 = (a3 + v6[28]);
  *v144 = v141;
  v144[1] = v143;
  v145 = (a3 + v6[29]);
  *v145 = 0;
  v145[1] = 0xE000000000000000;
  static Date.now.getter();

  v146 = *(v148 + 8);

  return v146(a1, v7);
}

uint64_t sub_100117628@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v206 = a2;
  v3 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v3 - 8);
  v202 = &v188 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v203 = &v188 - v6;
  __chkstk_darwin(v7);
  v205 = &v188 - v8;
  v9 = type metadata accessor for Date();
  v208 = *(v9 - 8);
  v209 = v9;
  __chkstk_darwin(v9);
  v201 = &v188 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v204 = &v188 - v12;
  v210 = type metadata accessor for UUID();
  v207 = *(v210 - 1);
  __chkstk_darwin(v210);
  v14 = &v188 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000EE870(&qword_1002F8738, &qword_100227FF8);
  v211 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v188 - v16;
  v18 = type metadata accessor for MagicPairingSettingsRecord(0);
  __chkstk_darwin(v18);
  v20 = &v188 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000EF78C(a1, a1[3]);
  sub_100121A68();
  v21 = v212;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    return sub_1000EF824(a1);
  }

  v212 = v18;
  v199 = v20;
  v200 = a1;
  v215 = 1;
  v22 = sub_1000EF8C4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = v15;
  v197 = v22;
  v25 = v212;
  v26 = v199;
  v27 = &v199[v212[5]];
  *v27 = *v213;
  LOBYTE(v213[0]) = 0;
  sub_100121ABC(&unk_1002F8750, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v28 = v210;
  v29 = v17;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v30 = v211;
  v196 = v27;
  (*(v207 + 32))(v26, v14, v28);
  LOBYTE(v213[0]) = 2;
  v31 = KeyedDecodingContainer.decode(_:forKey:)();
  v189 = 1;
  v32 = &v26[v25[6]];
  *v32 = v31;
  v32[1] = v33;
  LOBYTE(v213[0]) = 9;
  v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v35)
  {
    v40 = v34;
  }

  else
  {
    v40 = 0;
  }

  if (v35)
  {
    v41 = v35;
  }

  else
  {
    v41 = 0xE000000000000000;
  }

  v42 = &v26[v25[13]];
  *v42 = v40;
  v42[1] = v41;
  LOBYTE(v213[0]) = 10;
  v43 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v44)
  {
    v45 = v43;
  }

  else
  {
    v45 = 0;
  }

  if (v44)
  {
    v46 = v44;
  }

  else
  {
    v46 = 0xE000000000000000;
  }

  v47 = &v26[v25[14]];
  *v47 = v45;
  v47[1] = v46;
  v215 = 4;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v49 = v213[1];
  v48 = v213[0];
  if (v213[1] >> 60 == 15)
  {
    v48 = 0;
    v49 = 0xC000000000000000;
  }

  v50 = &v26[v25[8]];
  *v50 = v48;
  *(v50 + 1) = v49;
  v215 = 3;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v52 = v213[1];
  v51 = v213[0];
  if (v213[1] >> 60 == 15)
  {
    v51 = 0;
    v52 = 0xC000000000000000;
  }

  v53 = &v26[v25[7]];
  *v53 = v51;
  *(v53 + 1) = v52;
  v215 = 6;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v198 = 0;
  v55 = v213[1];
  v54 = v213[0];
  if (v213[1] >> 60 == 15)
  {
    v54 = 0;
    v55 = 0xC000000000000000;
  }

  v56 = &v26[v212[10]];
  *v56 = v54;
  *(v56 + 1) = v55;
  v215 = 5;
  v57 = v198;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v198 = v57;
  if (v57)
  {
    (*(v30 + 8))(v29, v23);
    v190 = 0;
    v214 = 0;
    v194 = 0;
    v58 = 0;
    v59 = 0;
    v191 = 0;
    v193 = 0;
    v195 = 0;
    LODWORD(v196) = 0;
    LODWORD(v197) = 0;
    LODWORD(v201) = 0;
    LODWORD(v202) = 0;
    LODWORD(v203) = 0;
    LODWORD(v204) = 0;
    LODWORD(v205) = 0;
    LODWORD(v206) = 0;
    LODWORD(v211) = 0;
    v192 = 1;
  }

  else
  {
    v61 = v213[1];
    v60 = v213[0];
    if (v213[1] >> 60 == 15)
    {
      v60 = 0;
      v61 = 0xC000000000000000;
    }

    v62 = &v26[v212[9]];
    *v62 = v60;
    *(v62 + 1) = v61;
    LOBYTE(v213[0]) = 11;
    v63 = v23;
    v64 = v29;
    v65 = v198;
    v66 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v198 = v65;
    if (v65)
    {
      (*(v211 + 8))(v29, v23);
      v214 = 0;
      v194 = 0;
      v58 = 0;
      v59 = 0;
      v191 = 0;
      v193 = 0;
      v195 = 0;
      LODWORD(v196) = 0;
      LODWORD(v197) = 0;
      LODWORD(v201) = 0;
      LODWORD(v202) = 0;
      LODWORD(v203) = 0;
      LODWORD(v204) = 0;
      LODWORD(v205) = 0;
      LODWORD(v206) = 0;
      LODWORD(v211) = 0;
      v192 = 1;
      v190 = 1;
    }

    else
    {
      if (v67)
      {
        v68 = v66;
      }

      else
      {
        v68 = 0;
      }

      if (v67)
      {
        v69 = v67;
      }

      else
      {
        v69 = 0xE000000000000000;
      }

      v70 = v198;
      v71 = &v199[v212[15]];
      *v71 = v68;
      v71[1] = v69;
      LOBYTE(v213[0]) = 12;
      v72 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v198 = v70;
      if (v73)
      {
        v74 = v72;
      }

      else
      {
        v74 = 0;
      }

      if (v73)
      {
        v75 = v73;
      }

      else
      {
        v75 = 0xE000000000000000;
      }

      v76 = v198;
      v77 = &v199[v212[16]];
      *v77 = v74;
      v77[1] = v75;
      LOBYTE(v213[0]) = 13;
      v78 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v198 = v76;
      if (v79)
      {
        v80 = v78;
      }

      else
      {
        v80 = 0;
      }

      if (v79)
      {
        v81 = v79;
      }

      else
      {
        v81 = 0xE000000000000000;
      }

      v82 = v198;
      v83 = &v199[v212[17]];
      *v83 = v80;
      v83[1] = v81;
      LOBYTE(v213[0]) = 14;
      v84 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v198 = v82;
      if (v85)
      {
        v86 = v84;
      }

      else
      {
        v86 = 0;
      }

      if (v85)
      {
        v87 = v85;
      }

      else
      {
        v87 = 0xE000000000000000;
      }

      v88 = v198;
      v89 = &v199[v212[18]];
      *v89 = v86;
      v89[1] = v87;
      v215 = 8;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v198 = v88;
      v91 = v213[1];
      v90 = v213[0];
      if (v213[1] >> 60 == 15)
      {
        v90 = 0;
        v91 = 0xC000000000000000;
      }

      v92 = v198;
      v93 = &v199[v212[12]];
      *v93 = v90;
      *(v93 + 1) = v91;
      v215 = 7;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v198 = v92;
      v95 = v213[1];
      v94 = v213[0];
      if (v213[1] >> 60 == 15)
      {
        v94 = 0;
        v95 = 0xC000000000000000;
      }

      v96 = v198;
      v97 = &v199[v212[11]];
      *v97 = v94;
      *(v97 + 1) = v95;
      LOBYTE(v213[0]) = 15;
      v98 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v198 = v96;
      if (v99)
      {
        v100 = v98;
      }

      else
      {
        v100 = 0;
      }

      if (v99)
      {
        v101 = v99;
      }

      else
      {
        v101 = 0xE000000000000000;
      }

      v102 = v198;
      v103 = &v199[v212[19]];
      *v103 = v100;
      v103[1] = v101;
      LOBYTE(v213[0]) = 16;
      v104 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v198 = v102;
      if (v105)
      {
        v106 = v104;
      }

      else
      {
        v106 = 0;
      }

      if (v105)
      {
        v107 = v105;
      }

      else
      {
        v107 = 0xE000000000000000;
      }

      v108 = v198;
      v109 = &v199[v212[20]];
      *v109 = v106;
      v109[1] = v107;
      LOBYTE(v213[0]) = 17;
      v110 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v198 = v108;
      if (v111)
      {
        v112 = v110;
      }

      else
      {
        v112 = 0;
      }

      if (v111)
      {
        v113 = v111;
      }

      else
      {
        v113 = 0xE000000000000000;
      }

      v114 = v198;
      v115 = &v199[v212[21]];
      *v115 = v112;
      v115[1] = v113;
      LOBYTE(v213[0]) = 18;
      v116 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v198 = v114;
      if (v117)
      {
        v118 = v116;
      }

      else
      {
        v118 = 0;
      }

      if (v117)
      {
        v119 = v117;
      }

      else
      {
        v119 = 0xE000000000000000;
      }

      v120 = v198;
      v121 = &v199[v212[22]];
      *v121 = v118;
      v121[1] = v119;
      LOBYTE(v213[0]) = 19;
      v122 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v198 = v120;
      if (v123)
      {
        v124 = v122;
      }

      else
      {
        v124 = 0;
      }

      if (v123)
      {
        v125 = v123;
      }

      else
      {
        v125 = 0xE000000000000000;
      }

      v126 = v198;
      v127 = &v199[v212[23]];
      *v127 = v124;
      v127[1] = v125;
      LOBYTE(v213[0]) = 20;
      v128 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v198 = v126;
      if (v129)
      {
        v130 = v128;
      }

      else
      {
        v130 = 0;
      }

      if (v129)
      {
        v131 = v129;
      }

      else
      {
        v131 = 0xE000000000000000;
      }

      v132 = v198;
      v133 = &v199[v212[24]];
      *v133 = v130;
      v133[1] = v131;
      LOBYTE(v213[0]) = 21;
      v134 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v198 = v132;
      if (v135)
      {
        v136 = v134;
      }

      else
      {
        v136 = 0;
      }

      if (v135)
      {
        v137 = v135;
      }

      else
      {
        v137 = 0xE000000000000000;
      }

      v138 = v198;
      v139 = &v199[v212[25]];
      *v139 = v136;
      v139[1] = v137;
      LOBYTE(v213[0]) = 22;
      v140 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v198 = v138;
      if (v141)
      {
        v142 = v140;
      }

      else
      {
        v142 = 0;
      }

      if (v141)
      {
        v143 = v141;
      }

      else
      {
        v143 = 0xE000000000000000;
      }

      v144 = v198;
      v145 = &v199[v212[26]];
      *v145 = v142;
      v145[1] = v143;
      LOBYTE(v213[0]) = 23;
      v146 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v198 = v144;
      if (v147)
      {
        v148 = v146;
      }

      else
      {
        v148 = 0;
      }

      if (v147)
      {
        v149 = v147;
      }

      else
      {
        v149 = 0xE000000000000000;
      }

      v150 = v198;
      v151 = &v199[v212[27]];
      *v151 = v148;
      v151[1] = v149;
      LOBYTE(v213[0]) = 24;
      v152 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v198 = v150;
      if (v153)
      {
        v154 = v152;
      }

      else
      {
        v154 = 0;
      }

      if (v153)
      {
        v155 = v153;
      }

      else
      {
        v155 = 0xE000000000000000;
      }

      v156 = v198;
      v157 = &v199[v212[28]];
      *v157 = v154;
      v157[1] = v155;
      LOBYTE(v213[0]) = 25;
      v158 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v198 = v156;
      if (v159)
      {
        v160 = v158;
      }

      else
      {
        v160 = 0;
      }

      v161 = 0xE000000000000000;
      if (v159)
      {
        v161 = v159;
      }

      v162 = v212;
      v163 = &v199[v212[29]];
      *v163 = v160;
      v163[1] = v161;
      v164 = v162[30];
      static Date.now.getter();
      LOBYTE(v213[0]) = 26;
      sub_100121ABC(&qword_1002F7D90, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v165 = v198;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v198 = v165;
      if (!v165)
      {
        v212 = *(v208 + 48);
        if ((v212)(v205, 1, v209) == 1)
        {
          v166 = objc_autoreleasePoolPush();
          isa = sub_100169D38(*v196, *(v196 + 1));
          if (!isa)
          {
            isa = sub_1000F8100().super.isa;
          }

          v168 = isa;
          v213[0] = isa;
          sub_10011A7B0(v213);
          objc_autoreleasePoolPop(v166);
          v169 = [v168 modificationDate];

          if (v169)
          {
            v170 = v201;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            (*(v211 + 8))(v64, v63);
            v171 = v208;
            v172 = *(v208 + 32);
            v173 = v203;
            v174 = v170;
            v175 = v209;
            v172(v203, v174, v209);
            (*(v171 + 56))(v173, 0, 1, v175);
            v172(v204, v173, v175);
          }

          else
          {
            v210 = *(v208 + 56);
            (v210)(v203, 1, 1, v209);
            v176 = objc_autoreleasePoolPush();
            v177 = sub_100169D38(*v196, *(v196 + 1));
            if (!v177)
            {
              v177 = sub_1000F8100().super.isa;
            }

            v178 = v177;
            v213[0] = v177;
            sub_10011A7B0(v213);
            objc_autoreleasePoolPop(v176);
            v179 = [v178 creationDate];

            if (v179)
            {
              v180 = v201;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              (*(v211 + 8))(v64, v63);
              v181 = *(v208 + 32);
              v182 = v202;
              v183 = v180;
              v184 = v209;
              v181(v202, v183, v209);
              (v210)(v182, 0, 1, v184);
              v181(v204, v182, v184);
            }

            else
            {
              v185 = v202;
              v186 = v209;
              (v210)(v202, 1, 1, v209);
              static Date.now.getter();
              (*(v211 + 8))(v64, v63);
              if ((v212)(v185, 1, v186) != 1)
              {
                sub_1000EEE6C(v202, &qword_1002F7EF0, &unk_100226C90);
              }
            }

            if ((v212)(v203, 1, v209) != 1)
            {
              sub_1000EEE6C(v203, &qword_1002F7EF0, &unk_100226C90);
            }
          }

          if ((v212)(v205, 1, v209) != 1)
          {
            sub_1000EEE6C(v205, &qword_1002F7EF0, &unk_100226C90);
          }
        }

        else
        {
          (*(v211 + 8))(v29, v63);
          (*(v208 + 32))(v204, v205, v209);
        }

        v187 = v199;
        (*(v208 + 40))(&v199[v164], v204, v209);
        sub_1001216CC(v187, v206);
        sub_1000EF824(v200);
        return sub_100121730(v187);
      }

      (*(v211 + 8))(v29, v63);
      v192 = 1;
      v190 = 1;
      v214 = 1;
      v194 = 1;
      v58 = 1;
      v59 = 1;
      v191 = 1;
      v193 = 1;
      v195 = 0x100000001;
      LODWORD(v196) = 1;
      LODWORD(v197) = 1;
      LODWORD(v201) = 1;
      LODWORD(v202) = 1;
      LODWORD(v203) = 1;
      LODWORD(v204) = 1;
      LODWORD(v205) = 1;
      LODWORD(v206) = 1;
      LODWORD(v211) = 1;
    }

    v26 = v199;
    v28 = v210;
  }

  sub_1000EF824(v200);
  (*(v207 + 8))(v26, v28);
  v36 = v189;
  sub_1000EF870(*&v26[v212[5]], *&v26[v212[5] + 8]);
  if (v36)
  {

    if ((v192 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (!v192)
  {
    goto LABEL_7;
  }

  sub_1000EF870(*&v26[v212[7]], *&v26[v212[7] + 8]);
LABEL_7:
  v37 = v212;
  sub_1000EF870(*&v26[v212[8]], *&v26[v212[8] + 8]);
  if (v190)
  {
    sub_1000EF870(*&v26[v37[9]], *&v26[v37[9] + 8]);
  }

  sub_1000EF870(*&v26[v37[10]], *&v26[v37[10] + 8]);
  if (v214)
  {
    sub_1000EF870(*&v26[v37[11]], *&v26[v37[11] + 8]);
    if ((v194 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_11;
  }

  if (v194)
  {
LABEL_11:
    sub_1000EF870(*&v26[v37[12]], *&v26[v37[12] + 8]);
  }

LABEL_31:

  v38 = v209;
  if (v58)
  {

    v39 = v208;
    if (v59)
    {
LABEL_14:

      if ((v191 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_34;
    }
  }

  else
  {
    v39 = v208;
    if (v59)
    {
      goto LABEL_14;
    }
  }

  if (!v191)
  {
LABEL_15:
    if (v193)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:

  if (v193)
  {
LABEL_16:

    if ((v195 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  if (!v195)
  {
LABEL_17:
    if (HIDWORD(v195))
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:

  if ((v195 & 0x100000000) != 0)
  {
LABEL_18:

    if ((v196 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_38;
  }

LABEL_37:
  if (!v196)
  {
LABEL_19:
    if (v197)
    {
      goto LABEL_20;
    }

    goto LABEL_39;
  }

LABEL_38:

  if (v197)
  {
LABEL_20:

    if ((v201 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_40;
  }

LABEL_39:
  if (!v201)
  {
LABEL_21:
    if (v202)
    {
      goto LABEL_22;
    }

    goto LABEL_41;
  }

LABEL_40:

  if (v202)
  {
LABEL_22:

    if ((v203 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_42;
  }

LABEL_41:
  if (!v203)
  {
LABEL_23:
    if (v204)
    {
      goto LABEL_24;
    }

    goto LABEL_43;
  }

LABEL_42:

  if (v204)
  {
LABEL_24:

    if ((v205 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_44;
  }

LABEL_43:
  if (!v205)
  {
LABEL_25:
    if (v206)
    {
      goto LABEL_26;
    }

    goto LABEL_45;
  }

LABEL_44:

  if (v206)
  {
LABEL_26:

    if (v211)
    {
      goto LABEL_46;
    }

    return result;
  }

LABEL_45:
  if (v211)
  {
LABEL_46:

    return (*(v39 + 8))(&v26[v37[30]], v38);
  }

  return result;
}

void sub_100119610(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v5 - 8);
  v146 = &v139 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v149 = &v139 - v8;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v147 = &v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v148 = &v139 - v13;
  v14 = sub_1000EE870(&qword_1002F8000, &unk_1002262C0);
  __chkstk_darwin(v14 - 8);
  v16 = &v139 - v15;
  v17 = type metadata accessor for UUID();
  v151 = *(v17 - 8);
  v152 = v17;
  __chkstk_darwin(v17);
  v150 = &v139 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (CKRecord.recordType.getter() == 0x746553636967614DLL && v19 == 0xED000073676E6974)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      sub_100121790();
      swift_allocError();
      *v34 = 0;
      swift_willThrow();

      return;
    }
  }

  v144 = v10;
  v21 = [a1 encryptedValues];
  swift_getObjectType();
  v22 = String._bridgeToObjectiveC()();
  v23 = [v21 objectForKeyedSubscript:v22];

  if (!v23)
  {
    goto LABEL_9;
  }

  v154 = v23;
  v145 = sub_1000EE870(&qword_1002F8610, &unk_1002262D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v140 = v9;
  v141 = v2;
  v142 = a2;
  v24 = v153;
  v25 = [a1 recordID];
  v26 = [v25 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  v28 = v151;
  v27 = v152;
  if ((*(v151 + 48))(v16, 1, v152) == 1)
  {

    sub_1000EEE6C(v16, &qword_1002F8000, &unk_1002262C0);
LABEL_9:
    v29 = static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v30 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_100226100;
    *(v31 + 56) = sub_1000EEE20();
    *(v31 + 64) = sub_100121ABC(&qword_1002F7BE0, sub_1000EEE20, &protocol conformance descriptor for NSObject);
    *(v31 + 32) = a1;
    v32 = a1;
    os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, v30, "Invalid MagicPairingSettingsRecord Record - %@", 46, 2, v31);

    sub_100121790();
    swift_allocError();
    *v33 = 2;
    swift_willThrow();
    swift_unknownObjectRelease();

    return;
  }

  v139 = a1;
  v35 = v150;
  (*(v28 + 32))(v150, v16, v27);
  v36 = v142;
  (*(v28 + 16))(v142, v35, v27);
  v37 = type metadata accessor for MagicPairingSettingsRecord(0);
  *(v36 + v37[6]) = v24;
  CKRecordKeyValueSetting.subscript.getter();
  v38 = *(&v153 + 1);
  v39 = v153;
  if (!*(&v153 + 1))
  {
    v39 = 0;
    v38 = 0xE000000000000000;
  }

  v40 = (v36 + v37[13]);
  *v40 = v39;
  v40[1] = v38;
  CKRecordKeyValueSetting.subscript.getter();
  v41 = *(&v153 + 1);
  v42 = v153;
  if (!*(&v153 + 1))
  {
    v42 = 0;
    v41 = 0xE000000000000000;
  }

  v43 = v36;
  v44 = (v36 + v37[14]);
  *v44 = v42;
  v44[1] = v41;
  v45 = String._bridgeToObjectiveC()();
  v46 = [v21 objectForKeyedSubscript:v45];

  v47 = xmmword_100227DA0;
  v143 = xmmword_100227DA0;
  if (v46)
  {
    v154 = v46;
    if (swift_dynamicCast())
    {
      v47 = v153;
    }

    else
    {
      v47 = v143;
    }
  }

  *(v36 + v37[8]) = v47;
  v48 = String._bridgeToObjectiveC()();
  v49 = [v21 objectForKeyedSubscript:v48];

  v50 = v143;
  v51 = v139;
  if (v49)
  {
    v154 = v49;
    if (swift_dynamicCast())
    {
      v50 = v153;
    }

    else
    {
      v50 = v143;
    }
  }

  *(v36 + v37[7]) = v50;
  v52 = String._bridgeToObjectiveC()();
  v53 = [v21 objectForKeyedSubscript:v52];

  v54 = v143;
  if (v53)
  {
    v154 = v53;
    if (swift_dynamicCast())
    {
      v54 = v153;
    }

    else
    {
      v54 = v143;
    }
  }

  *(v43 + v37[10]) = v54;
  v55 = String._bridgeToObjectiveC()();
  v56 = [v21 objectForKeyedSubscript:v55];

  v57 = v143;
  if (v56)
  {
    v154 = v56;
    if (swift_dynamicCast())
    {
      v57 = v153;
    }

    else
    {
      v57 = v143;
    }
  }

  *(v43 + v37[9]) = v57;
  v58 = String._bridgeToObjectiveC()();
  v59 = [v21 objectForKeyedSubscript:v58];

  v60 = v143;
  if (v59)
  {
    v154 = v59;
    if (swift_dynamicCast())
    {
      v60 = v153;
    }

    else
    {
      v60 = v143;
    }
  }

  *(v43 + v37[12]) = v60;
  v61 = String._bridgeToObjectiveC()();
  v62 = [v21 objectForKeyedSubscript:v61];

  if (v62 && (v154 = v62, (swift_dynamicCast() & 1) != 0))
  {
    v63 = v153;
  }

  else
  {
    v63 = v143;
  }

  *(v43 + v37[11]) = v63;
  CKRecordKeyValueSetting.subscript.getter();
  v64 = *(&v153 + 1);
  v65 = v153;
  if (!*(&v153 + 1))
  {
    v65 = 0;
  }

  v66 = 0xE000000000000000;
  if (!*(&v153 + 1))
  {
    v64 = 0xE000000000000000;
  }

  v67 = (v43 + v37[15]);
  *v67 = v65;
  v67[1] = v64;
  CKRecordKeyValueSetting.subscript.getter();
  v68 = *(&v153 + 1);
  v69 = v153;
  if (!*(&v153 + 1))
  {
    v69 = 0;
    v68 = 0xE000000000000000;
  }

  v70 = (v43 + v37[16]);
  *v70 = v69;
  v70[1] = v68;
  CKRecordKeyValueSetting.subscript.getter();
  v71 = *(&v153 + 1);
  v72 = v153;
  if (!*(&v153 + 1))
  {
    v72 = 0;
    v71 = 0xE000000000000000;
  }

  v73 = (v43 + v37[17]);
  *v73 = v72;
  v73[1] = v71;
  CKRecordKeyValueSetting.subscript.getter();
  v74 = *(&v153 + 1);
  v75 = v153;
  if (!*(&v153 + 1))
  {
    v75 = 0;
    v74 = 0xE000000000000000;
  }

  v76 = (v43 + v37[18]);
  *v76 = v75;
  v76[1] = v74;
  CKRecordKeyValueSetting.subscript.getter();
  v77 = *(&v153 + 1);
  v78 = v153;
  if (!*(&v153 + 1))
  {
    v78 = 0;
    v77 = 0xE000000000000000;
  }

  v79 = (v43 + v37[19]);
  *v79 = v78;
  v79[1] = v77;
  CKRecordKeyValueSetting.subscript.getter();
  v80 = *(&v153 + 1);
  v81 = v153;
  if (!*(&v153 + 1))
  {
    v81 = 0;
    v80 = 0xE000000000000000;
  }

  v82 = (v43 + v37[20]);
  *v82 = v81;
  v82[1] = v80;
  CKRecordKeyValueSetting.subscript.getter();
  v83 = *(&v153 + 1);
  v84 = v153;
  if (!*(&v153 + 1))
  {
    v84 = 0;
    v83 = 0xE000000000000000;
  }

  v85 = (v43 + v37[21]);
  *v85 = v84;
  v85[1] = v83;
  CKRecordKeyValueSetting.subscript.getter();
  v86 = *(&v153 + 1);
  v87 = v153;
  if (!*(&v153 + 1))
  {
    v87 = 0;
    v86 = 0xE000000000000000;
  }

  v88 = (v43 + v37[22]);
  *v88 = v87;
  v88[1] = v86;
  CKRecordKeyValueSetting.subscript.getter();
  v89 = *(&v153 + 1);
  v90 = v153;
  if (!*(&v153 + 1))
  {
    v90 = 0;
    v89 = 0xE000000000000000;
  }

  v91 = (v43 + v37[23]);
  *v91 = v90;
  v91[1] = v89;
  CKRecordKeyValueSetting.subscript.getter();
  v92 = *(&v153 + 1);
  v93 = v153;
  if (!*(&v153 + 1))
  {
    v93 = 0;
    v92 = 0xE000000000000000;
  }

  v94 = (v43 + v37[24]);
  *v94 = v93;
  v94[1] = v92;
  CKRecordKeyValueSetting.subscript.getter();
  v95 = *(&v153 + 1);
  v96 = v153;
  if (!*(&v153 + 1))
  {
    v96 = 0;
    v95 = 0xE000000000000000;
  }

  v97 = (v43 + v37[25]);
  *v97 = v96;
  v97[1] = v95;
  CKRecordKeyValueSetting.subscript.getter();
  v98 = *(&v153 + 1);
  v99 = v153;
  if (!*(&v153 + 1))
  {
    v99 = 0;
    v98 = 0xE000000000000000;
  }

  v100 = (v43 + v37[26]);
  *v100 = v99;
  v100[1] = v98;
  CKRecordKeyValueSetting.subscript.getter();
  v101 = *(&v153 + 1);
  v102 = v153;
  if (!*(&v153 + 1))
  {
    v102 = 0;
    v101 = 0xE000000000000000;
  }

  v103 = (v43 + v37[27]);
  *v103 = v102;
  v103[1] = v101;
  CKRecordKeyValueSetting.subscript.getter();
  v104 = *(&v153 + 1);
  v105 = v153;
  if (!*(&v153 + 1))
  {
    v105 = 0;
    v104 = 0xE000000000000000;
  }

  v106 = (v43 + v37[28]);
  *v106 = v105;
  v106[1] = v104;
  v107 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  [v51 encodeSystemFieldsWithCoder:v107];
  [v107 finishEncoding];
  v108 = [v107 encodedData];
  v109 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v111 = v110;

  v112 = (v43 + v37[5]);
  *v112 = v109;
  v112[1] = v111;
  v113 = [v51 valuesByKey];
  v114 = String._bridgeToObjectiveC()();
  v115 = [v113 objectForKeyedSubscript:v114];
  swift_unknownObjectRelease();

  if (!v115)
  {
    goto LABEL_75;
  }

  objc_opt_self();
  v116 = swift_dynamicCastObjCClass();
  if (!v116)
  {
    swift_unknownObjectRelease();
LABEL_75:
    v119 = 0;
    goto LABEL_76;
  }

  v117 = [v116 recordID];
  v118 = [v117 recordName];

  v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v66 = v120;
  swift_unknownObjectRelease();

LABEL_76:
  v121 = (v43 + v37[29]);
  *v121 = v119;
  v121[1] = v66;
  v122 = [v51 modificationDate];
  v123 = v144;
  v124 = v149;
  if (v122)
  {
    v125 = v147;
    v126 = v122;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    swift_unknownObjectRelease();
    (*(v151 + 8))(v150, v152);
    v127 = *(v123 + 32);
    v128 = v140;
    v127(v124, v125, v140);
    (*(v123 + 56))(v124, 0, 1, v128);
    v129 = v148;
    v127(v148, v124, v128);
  }

  else
  {
    v130 = *(v144 + 56);
    v128 = v140;
    v130(v149, 1, 1, v140);
    v131 = [v51 creationDate];
    if (v131)
    {
      v145 = v130;
      v132 = v147;
      v133 = v131;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      swift_unknownObjectRelease();
      (*(v151 + 8))(v150, v152);
      v134 = *(v123 + 32);
      v135 = v146;
      v134(v146, v132, v128);
      v145(v135, 0, 1, v128);
      v129 = v148;
      v134(v148, v135, v128);
      v136 = *(v123 + 48);
    }

    else
    {
      v137 = v146;
      v130(v146, 1, 1, v128);
      v138 = v137;
      v129 = v148;
      static Date.now.getter();

      swift_unknownObjectRelease();
      (*(v151 + 8))(v150, v152);
      v136 = *(v123 + 48);
      if (v136(v138, 1, v128) != 1)
      {
        sub_1000EEE6C(v138, &qword_1002F7EF0, &unk_100226C90);
      }
    }

    v43 = v142;
    if (v136(v124, 1, v128) != 1)
    {
      sub_1000EEE6C(v124, &qword_1002F7EF0, &unk_100226C90);
    }
  }

  (*(v123 + 32))(v43 + v37[30], v129, v128);
}

uint64_t sub_10011A7B0(id *a1)
{
  v2 = v1;
  v4 = static os_log_type_t.debug.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v5 = qword_100300E38;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100226100;
  v7 = *a1;
  v8 = [v7 description];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_1000EE954();
  *(v6 + 32) = v9;
  *(v6 + 40) = v11;
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "Updating magic settings record: %@", 34, 2, v6);

  v12 = [v7 encryptedValues];
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  v100 = v2;
  v101 = type metadata accessor for MagicPairingSettingsRecord(0);
  v13 = (v2 + v101[6]);
  v15 = *v13;
  v14 = v13[1];
  if (!v103)
  {
    goto LABEL_8;
  }

  if (v102 == v15 && v103 == v14)
  {

    goto LABEL_9;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v16 & 1) == 0)
  {
LABEL_8:
    v102 = v15;
    v103 = v14;

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_9:
  CKRecordKeyValueSetting.subscript.getter();
  v17 = (v100 + v101[13]);
  v19 = *v17;
  v18 = v17[1];
  if (!v103)
  {
    goto LABEL_14;
  }

  if (v102 != v19 || v103 != v18)
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v20)
    {
      goto LABEL_15;
    }

LABEL_14:
    v102 = v19;
    v103 = v18;

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_15;
  }

LABEL_15:
  CKRecordKeyValueSetting.subscript.getter();
  v21 = (v100 + v101[14]);
  v23 = *v21;
  v22 = v21[1];
  if (!v103)
  {
    goto LABEL_20;
  }

  if (v102 == v23 && v103 == v22)
  {

    goto LABEL_21;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v24 & 1) == 0)
  {
LABEL_20:
    v102 = v23;
    v103 = v22;

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_21:
  CKRecordKeyValueSetting.subscript.getter();
  v25 = (v100 + v101[7]);
  v27 = *v25;
  v26 = v25[1];
  if (v103 >> 60 == 15)
  {
    if (v26 >> 60 == 15)
    {
      sub_1000EE9F4(v27, v26);
      sub_1000FF5CC(v102, v103);
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if (v26 >> 60 == 15)
  {
LABEL_25:
    sub_1000EE9F4(v27, v26);
    sub_1000FF5CC(v102, v103);
    sub_1000FF5CC(v27, v26);
LABEL_26:
    v102 = v27;
    v103 = v26;
    sub_1000EE9F4(v27, v26);
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_27;
  }

  sub_1000EE9F4(v27, v26);
  sub_1000EE9F4(v27, v26);
  sub_1000FF5B8(v102, v103);
  v94 = sub_100121564(v102, v103, v27, v26);
  sub_1000EF870(v27, v26);
  sub_1000FF5CC(v102, v103);
  sub_1000FF5CC(v27, v26);
  sub_1000FF5CC(v102, v103);
  if (!v94)
  {
    goto LABEL_26;
  }

LABEL_27:
  CKRecordKeyValueSetting.subscript.getter();
  v28 = (v100 + v101[8]);
  v30 = *v28;
  v29 = v28[1];
  if (v103 >> 60 == 15)
  {
    if (v29 >> 60 == 15)
    {
      sub_1000EE9F4(v30, v29);
      sub_1000FF5CC(v102, v103);
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (v29 >> 60 == 15)
  {
LABEL_31:
    sub_1000EE9F4(v30, v29);
    sub_1000FF5CC(v102, v103);
    sub_1000FF5CC(v30, v29);
LABEL_32:
    v102 = v30;
    v103 = v29;
    sub_1000EE9F4(v30, v29);
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_33;
  }

  sub_1000EE9F4(v30, v29);
  sub_1000EE9F4(v30, v29);
  sub_1000FF5B8(v102, v103);
  v95 = sub_100121564(v102, v103, v30, v29);
  sub_1000EF870(v30, v29);
  sub_1000FF5CC(v102, v103);
  sub_1000FF5CC(v30, v29);
  sub_1000FF5CC(v102, v103);
  if (!v95)
  {
    goto LABEL_32;
  }

LABEL_33:
  CKRecordKeyValueSetting.subscript.getter();
  v31 = (v100 + v101[9]);
  v33 = *v31;
  v32 = v31[1];
  if (v103 >> 60 == 15)
  {
    if (v32 >> 60 == 15)
    {
      sub_1000EE9F4(v33, v32);
      sub_1000FF5CC(v102, v103);
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  if (v32 >> 60 == 15)
  {
LABEL_37:
    sub_1000EE9F4(v33, v32);
    sub_1000FF5CC(v102, v103);
    sub_1000FF5CC(v33, v32);
LABEL_38:
    v102 = v33;
    v103 = v32;
    sub_1000EE9F4(v33, v32);
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_39;
  }

  sub_1000EE9F4(v33, v32);
  sub_1000EE9F4(v33, v32);
  sub_1000FF5B8(v102, v103);
  v97 = sub_100121564(v102, v103, v33, v32);
  sub_1000EF870(v33, v32);
  sub_1000FF5CC(v102, v103);
  sub_1000FF5CC(v33, v32);
  sub_1000FF5CC(v102, v103);
  if (!v97)
  {
    goto LABEL_38;
  }

LABEL_39:
  CKRecordKeyValueSetting.subscript.getter();
  v34 = (v100 + v101[10]);
  v36 = *v34;
  v35 = v34[1];
  if (v103 >> 60 == 15)
  {
    if (v35 >> 60 == 15)
    {
      sub_1000EE9F4(v36, v35);
      sub_1000FF5CC(v102, v103);
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (v35 >> 60 == 15)
  {
LABEL_43:
    sub_1000EE9F4(v36, v35);
    sub_1000FF5CC(v102, v103);
    sub_1000FF5CC(v36, v35);
LABEL_44:
    v102 = v36;
    v103 = v35;
    sub_1000EE9F4(v36, v35);
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_45;
  }

  sub_1000EE9F4(v36, v35);
  sub_1000EE9F4(v36, v35);
  sub_1000FF5B8(v102, v103);
  v98 = sub_100121564(v102, v103, v36, v35);
  sub_1000EF870(v36, v35);
  sub_1000FF5CC(v102, v103);
  sub_1000FF5CC(v36, v35);
  sub_1000FF5CC(v102, v103);
  if (!v98)
  {
    goto LABEL_44;
  }

LABEL_45:
  CKRecordKeyValueSetting.subscript.getter();
  v37 = (v100 + v101[15]);
  v39 = *v37;
  v38 = v37[1];
  if (!v103)
  {
    goto LABEL_50;
  }

  if (v102 != v39 || v103 != v38)
  {
    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v40)
    {
      goto LABEL_51;
    }

LABEL_50:
    v102 = v39;
    v103 = v38;

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_51;
  }

LABEL_51:
  CKRecordKeyValueSetting.subscript.getter();
  v41 = (v100 + v101[16]);
  v43 = *v41;
  v42 = v41[1];
  if (!v103)
  {
    goto LABEL_56;
  }

  if (v102 == v43 && v103 == v42)
  {

    goto LABEL_57;
  }

  v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v44 & 1) == 0)
  {
LABEL_56:
    v102 = v43;
    v103 = v42;

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_57:
  CKRecordKeyValueSetting.subscript.getter();
  v45 = (v100 + v101[17]);
  v47 = *v45;
  v46 = v45[1];
  if (!v103)
  {
    goto LABEL_63;
  }

  if (v102 != v47 || v103 != v46)
  {
    v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v48)
    {
      goto LABEL_64;
    }

LABEL_63:
    v102 = v47;
    v103 = v46;

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_64;
  }

LABEL_64:
  CKRecordKeyValueSetting.subscript.getter();
  v49 = (v100 + v101[18]);
  v51 = *v49;
  v50 = v49[1];
  if (!v103)
  {
    goto LABEL_70;
  }

  if (v102 == v51 && v103 == v50)
  {

    goto LABEL_71;
  }

  v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v52 & 1) == 0)
  {
LABEL_70:
    v102 = v51;
    v103 = v50;

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_71:
  CKRecordKeyValueSetting.subscript.getter();
  v53 = (v100 + v101[12]);
  v55 = *v53;
  v54 = v53[1];
  if (v103 >> 60 == 15)
  {
    if (v54 >> 60 == 15)
    {
      sub_1000EE9F4(v55, v54);
      sub_1000FF5CC(v102, v103);
      goto LABEL_77;
    }

    goto LABEL_75;
  }

  if (v54 >> 60 == 15)
  {
LABEL_75:
    sub_1000EE9F4(v55, v54);
    sub_1000FF5CC(v102, v103);
    sub_1000FF5CC(v55, v54);
LABEL_76:
    v102 = v55;
    v103 = v54;
    sub_1000EE9F4(v55, v54);
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_77;
  }

  sub_1000EE9F4(v55, v54);
  sub_1000EE9F4(v55, v54);
  sub_1000FF5B8(v102, v103);
  v99 = sub_100121564(v102, v103, v55, v54);
  sub_1000EF870(v55, v54);
  sub_1000FF5CC(v102, v103);
  sub_1000FF5CC(v55, v54);
  sub_1000FF5CC(v102, v103);
  if (!v99)
  {
    goto LABEL_76;
  }

LABEL_77:
  CKRecordKeyValueSetting.subscript.getter();
  v56 = (v100 + v101[11]);
  v58 = *v56;
  v57 = v56[1];
  if (v103 >> 60 != 15)
  {
    if (v57 >> 60 != 15)
    {
      sub_1000EE9F4(v58, v57);
      sub_1000EE9F4(v58, v57);
      sub_1000FF5B8(v102, v103);
      v96 = sub_100121564(v102, v103, v58, v57);
      sub_1000EF870(v58, v57);
      sub_1000FF5CC(v102, v103);
      sub_1000FF5CC(v58, v57);
      sub_1000FF5CC(v102, v103);
      if (v96)
      {
        goto LABEL_83;
      }

      goto LABEL_82;
    }

LABEL_81:
    sub_1000EE9F4(v58, v57);
    sub_1000FF5CC(v102, v103);
    sub_1000FF5CC(v58, v57);
LABEL_82:
    v102 = v58;
    v103 = v57;
    sub_1000EE9F4(v58, v57);
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_83;
  }

  if (v57 >> 60 != 15)
  {
    goto LABEL_81;
  }

  sub_1000EE9F4(v58, v57);
  sub_1000FF5CC(v102, v103);
LABEL_83:
  CKRecordKeyValueSetting.subscript.getter();
  v59 = (v100 + v101[19]);
  v61 = *v59;
  v60 = v59[1];
  if (!v103)
  {
    goto LABEL_88;
  }

  if (v102 == v61 && v103 == v60)
  {

    goto LABEL_89;
  }

  v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v62 & 1) == 0)
  {
LABEL_88:
    v102 = v61;
    v103 = v60;

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_89:
  CKRecordKeyValueSetting.subscript.getter();
  v63 = (v100 + v101[20]);
  v65 = *v63;
  v64 = v63[1];
  if (!v103)
  {
    goto LABEL_94;
  }

  if (v102 != v65 || v103 != v64)
  {
    v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v66)
    {
      goto LABEL_95;
    }

LABEL_94:
    v102 = v65;
    v103 = v64;

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_95;
  }

LABEL_95:
  CKRecordKeyValueSetting.subscript.getter();
  v67 = (v100 + v101[21]);
  v69 = *v67;
  v68 = v67[1];
  if (!v103)
  {
    goto LABEL_100;
  }

  if (v102 == v69 && v103 == v68)
  {

    goto LABEL_101;
  }

  v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v70 & 1) == 0)
  {
LABEL_100:
    v102 = v69;
    v103 = v68;

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_101:
  CKRecordKeyValueSetting.subscript.getter();
  v71 = (v100 + v101[22]);
  v73 = *v71;
  v72 = v71[1];
  if (!v103)
  {
    goto LABEL_107;
  }

  if (v102 != v73 || v103 != v72)
  {
    v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v74)
    {
      goto LABEL_108;
    }

LABEL_107:
    v102 = v73;
    v103 = v72;

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_108;
  }

LABEL_108:
  CKRecordKeyValueSetting.subscript.getter();
  v75 = (v100 + v101[23]);
  v77 = *v75;
  v76 = v75[1];
  if (!v103)
  {
    goto LABEL_113;
  }

  if (v102 == v77 && v103 == v76)
  {

    goto LABEL_114;
  }

  v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v78 & 1) == 0)
  {
LABEL_113:
    v102 = v77;
    v103 = v76;

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_114:
  CKRecordKeyValueSetting.subscript.getter();
  v79 = (v100 + v101[24]);
  v81 = *v79;
  v80 = v79[1];
  if (!v103)
  {
    goto LABEL_119;
  }

  if (v102 != v81 || v103 != v80)
  {
    v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v82)
    {
      goto LABEL_120;
    }

LABEL_119:
    v102 = v81;
    v103 = v80;

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_120;
  }

LABEL_120:
  CKRecordKeyValueSetting.subscript.getter();
  v83 = (v100 + v101[26]);
  v85 = *v83;
  v84 = v83[1];
  if (!v103)
  {
    goto LABEL_125;
  }

  if (v102 == v85 && v103 == v84)
  {

    goto LABEL_126;
  }

  v86 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v86 & 1) == 0)
  {
LABEL_125:
    v102 = v85;
    v103 = v84;

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_126:
  CKRecordKeyValueSetting.subscript.getter();
  v87 = (v100 + v101[27]);
  v89 = *v87;
  v88 = v87[1];
  if (!v103)
  {
    goto LABEL_131;
  }

  if (v102 != v89 || v103 != v88)
  {
    v90 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v90)
    {
      goto LABEL_132;
    }

LABEL_131:
    v102 = v89;
    v103 = v88;

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_132;
  }

LABEL_132:
  CKRecordKeyValueSetting.subscript.getter();
  v91 = (v100 + v101[28]);
  if (!v103)
  {
    goto LABEL_137;
  }

  if (v102 == *v91 && v103 == v91[1])
  {
    swift_unknownObjectRelease();
  }

  v93 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v93 & 1) == 0)
  {
LABEL_137:

    CKRecordKeyValueSetting.subscript.setter();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_10011BD3C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v320 = *(v4 - 8);
  v321 = v4;
  __chkstk_darwin(v4);
  v319 = &v318 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v323 = type metadata accessor for MagicPairingSettingsRecord(0);
  __chkstk_darwin(v323);
  v7 = &v318 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10011D740(a1))
  {
    v8 = static os_log_type_t.debug.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v9 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100226100;
    sub_1001216CC(v1, v7);
    v11 = sub_100116308();
    v13 = v12;
    sub_100121730(v7);
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_1000EE954();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "Updating magic settings record: %@", 34, 2, v10);

    v14 = [a1 accessoryHint];
    v322 = v2;
    if (!v14)
    {
LABEL_22:
      v37 = [a1 accessoryKey];
      if (!v37)
      {
        goto LABEL_35;
      }

      v38 = v37;
      v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42 = v2 + v323[9];
      v44 = *v42;
      v43 = *(v42 + 8);
      sub_1000EE9F4(*v42, v43);
      v45 = [a1 accessoryKey];
      if (v45)
      {
        v46 = v45;
        v47 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v49 = v48;

        if (v43 >> 60 == 15)
        {
          v2 = v322;
          if (v49 >> 60 != 15)
          {
            goto LABEL_33;
          }

LABEL_29:
          sub_1000EF870(v39, v41);
          sub_1000FF5CC(v44, v43);
          goto LABEL_35;
        }

        v2 = v322;
        if (v49 >> 60 != 15)
        {
          sub_1000EE9F4(v44, v43);
          sub_1000FF5B8(v47, v49);
          v50 = sub_100121564(v44, v43, v47, v49);
          sub_1000FF5CC(v47, v49);
          sub_1000EF870(v44, v43);
          sub_1000FF5CC(v47, v49);
          sub_1000FF5CC(v44, v43);
          if (v50)
          {
            sub_1000EF870(v39, v41);
            goto LABEL_35;
          }

LABEL_34:
          sub_1000EF870(*v42, *(v42 + 8));
          *v42 = v39;
          *(v42 + 8) = v41;
LABEL_35:
          v51 = [a1 buttonModes];
          if (!v51)
          {
            goto LABEL_44;
          }

          v52 = v51;
          v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v55 = v54;

          v56 = (v2 + v323[15]);
          v57 = *v56;
          v58 = v56[1];

          v59 = [a1 buttonModes];
          if (v59)
          {
            v60 = v59;
            v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v63 = v62;

            if (v57 == v61 && v58 == v63)
            {

              goto LABEL_44;
            }

            v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v64)
            {

              goto LABEL_44;
            }
          }

          else
          {
          }

          *v56 = v53;
          v56[1] = v55;
LABEL_44:
          v65 = [a1 color];
          if (!v65)
          {
            goto LABEL_53;
          }

          v66 = v65;
          v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v69 = v68;

          v70 = (v2 + v323[16]);
          v71 = *v70;
          v72 = v70[1];

          v73 = [a1 color];
          if (v73)
          {
            v74 = v73;
            v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v77 = v76;

            if (v71 == v75 && v72 == v77)
            {

              goto LABEL_53;
            }

            v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v78)
            {

              goto LABEL_53;
            }
          }

          else
          {
          }

          *v70 = v67;
          v70[1] = v69;
LABEL_53:
          v79 = [a1 deviceIDFeatureBitsV1];
          if (!v79)
          {
            goto LABEL_62;
          }

          v80 = v79;
          v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v83 = v82;

          v84 = (v2 + v323[17]);
          v85 = *v84;
          v86 = v84[1];

          v87 = [a1 deviceIDFeatureBitsV1];
          if (v87)
          {
            v88 = v87;
            v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v91 = v90;

            if (v85 == v89 && v86 == v91)
            {

              goto LABEL_62;
            }

            v92 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v92)
            {

              goto LABEL_62;
            }
          }

          else
          {
          }

          *v84 = v81;
          v84[1] = v83;
LABEL_62:
          v93 = [a1 deviceIDFeatureBitsV2];
          if (!v93)
          {
            goto LABEL_71;
          }

          v94 = v93;
          v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v97 = v96;

          v98 = (v2 + v323[18]);
          v99 = *v98;
          v100 = v98[1];

          v101 = [a1 deviceIDFeatureBitsV2];
          if (v101)
          {
            v102 = v101;
            v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v105 = v104;

            if (v99 == v103 && v100 == v105)
            {

              goto LABEL_71;
            }

            v106 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v106)
            {

              goto LABEL_71;
            }
          }

          else
          {
          }

          *v98 = v95;
          v98[1] = v97;
LABEL_71:
          v107 = [a1 encryptionKey];
          if (!v107)
          {
            goto LABEL_84;
          }

          v108 = v107;
          v109 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v111 = v110;

          v112 = v2 + v323[12];
          v114 = *v112;
          v113 = *(v112 + 8);
          sub_1000EE9F4(*v112, v113);
          v115 = [a1 encryptionKey];
          if (v115)
          {
            v116 = v115;
            v117 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v119 = v118;

            if (v113 >> 60 == 15)
            {
              v2 = v322;
              if (v119 >> 60 != 15)
              {
                goto LABEL_82;
              }

LABEL_78:
              sub_1000EF870(v109, v111);
              sub_1000FF5CC(v114, v113);
              goto LABEL_84;
            }

            v2 = v322;
            if (v119 >> 60 != 15)
            {
              sub_1000EE9F4(v114, v113);
              sub_1000FF5B8(v117, v119);
              v120 = sub_100121564(v114, v113, v117, v119);
              sub_1000FF5CC(v117, v119);
              sub_1000EF870(v114, v113);
              sub_1000FF5CC(v117, v119);
              sub_1000FF5CC(v114, v113);
              if (v120)
              {
                sub_1000EF870(v109, v111);
                goto LABEL_84;
              }

LABEL_83:
              sub_1000EF870(*v112, *(v112 + 8));
              *v112 = v109;
              *(v112 + 8) = v111;
LABEL_84:
              v121 = [a1 irk];
              if (!v121)
              {
                goto LABEL_97;
              }

              v122 = v121;
              v123 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v125 = v124;

              v126 = v2 + v323[11];
              v128 = *v126;
              v127 = *(v126 + 8);
              sub_1000EE9F4(*v126, v127);
              v129 = [a1 irk];
              if (v129)
              {
                v130 = v129;
                v131 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v133 = v132;

                if (v127 >> 60 == 15)
                {
                  v2 = v322;
                  if (v133 >> 60 != 15)
                  {
                    goto LABEL_95;
                  }

LABEL_91:
                  sub_1000EF870(v123, v125);
                  sub_1000FF5CC(v128, v127);
                  goto LABEL_97;
                }

                v2 = v322;
                if (v133 >> 60 != 15)
                {
                  sub_1000EE9F4(v128, v127);
                  sub_1000FF5B8(v131, v133);
                  v134 = sub_100121564(v128, v127, v131, v133);
                  sub_1000FF5CC(v131, v133);
                  sub_1000EF870(v128, v127);
                  sub_1000FF5CC(v131, v133);
                  sub_1000FF5CC(v128, v127);
                  if (v134)
                  {
                    sub_1000EF870(v123, v125);
                    goto LABEL_97;
                  }

LABEL_96:
                  sub_1000EF870(*v126, *(v126 + 8));
                  *v126 = v123;
                  *(v126 + 8) = v125;
LABEL_97:
                  v135 = [a1 listeningServices];
                  if (!v135)
                  {
                    goto LABEL_106;
                  }

                  v136 = v135;
                  v137 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v139 = v138;

                  v140 = (v2 + v323[19]);
                  v141 = *v140;
                  v142 = v140[1];

                  v143 = [a1 listeningServices];
                  if (v143)
                  {
                    v144 = v143;
                    v145 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v147 = v146;

                    if (v141 == v145 && v142 == v147)
                    {

                      goto LABEL_106;
                    }

                    v148 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v148)
                    {

                      goto LABEL_106;
                    }
                  }

                  else
                  {
                  }

                  *v140 = v137;
                  v140[1] = v139;
LABEL_106:
                  v149 = [a1 listeningServicesV2];
                  if (!v149)
                  {
                    goto LABEL_115;
                  }

                  v150 = v149;
                  v151 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v153 = v152;

                  v154 = (v2 + v323[20]);
                  v155 = *v154;
                  v156 = v154[1];

                  v157 = [a1 listeningServicesV2];
                  if (v157)
                  {
                    v158 = v157;
                    v159 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v161 = v160;

                    if (v155 == v159 && v156 == v161)
                    {

                      goto LABEL_115;
                    }

                    v162 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v162)
                    {

                      goto LABEL_115;
                    }
                  }

                  else
                  {
                  }

                  *v154 = v151;
                  v154[1] = v153;
LABEL_115:
                  v163 = [a1 masterKey];
                  if (!v163)
                  {
                    goto LABEL_128;
                  }

                  v164 = v163;
                  v165 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                  v167 = v166;

                  v168 = v2 + v323[7];
                  v170 = *v168;
                  v169 = *(v168 + 8);
                  sub_1000EE9F4(*v168, v169);
                  v171 = [a1 masterKey];
                  if (v171)
                  {
                    v172 = v171;
                    v173 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                    v175 = v174;

                    if (v169 >> 60 == 15)
                    {
                      v2 = v322;
                      if (v175 >> 60 != 15)
                      {
                        goto LABEL_126;
                      }

LABEL_122:
                      sub_1000EF870(v165, v167);
                      sub_1000FF5CC(v170, v169);
                      goto LABEL_128;
                    }

                    v2 = v322;
                    if (v175 >> 60 != 15)
                    {
                      sub_1000EE9F4(v170, v169);
                      sub_1000FF5B8(v173, v175);
                      v176 = sub_100121564(v170, v169, v173, v175);
                      sub_1000FF5CC(v173, v175);
                      sub_1000EF870(v170, v169);
                      sub_1000FF5CC(v173, v175);
                      sub_1000FF5CC(v170, v169);
                      if (v176)
                      {
                        sub_1000EF870(v165, v167);
                        goto LABEL_128;
                      }

LABEL_127:
                      sub_1000EF870(*v168, *(v168 + 8));
                      *v168 = v165;
                      *(v168 + 8) = v167;
LABEL_128:
                      v177 = [a1 masterHint];
                      if (!v177)
                      {
                        goto LABEL_141;
                      }

                      v178 = v177;
                      v179 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                      v181 = v180;

                      v182 = v2 + v323[8];
                      v184 = *v182;
                      v183 = *(v182 + 8);
                      sub_1000EE9F4(*v182, v183);
                      v185 = [a1 masterHint];
                      if (v185)
                      {
                        v186 = v185;
                        v187 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                        v189 = v188;

                        if (v183 >> 60 == 15)
                        {
                          v2 = v322;
                          if (v189 >> 60 != 15)
                          {
                            goto LABEL_139;
                          }

LABEL_135:
                          sub_1000EF870(v179, v181);
                          sub_1000FF5CC(v184, v183);
                          goto LABEL_141;
                        }

                        v2 = v322;
                        if (v189 >> 60 != 15)
                        {
                          sub_1000EE9F4(v184, v183);
                          sub_1000FF5B8(v187, v189);
                          v190 = sub_100121564(v184, v183, v187, v189);
                          sub_1000FF5CC(v187, v189);
                          sub_1000EF870(v184, v183);
                          sub_1000FF5CC(v187, v189);
                          sub_1000FF5CC(v184, v183);
                          if (v190)
                          {
                            sub_1000EF870(v179, v181);
                            goto LABEL_141;
                          }

LABEL_140:
                          sub_1000EF870(*v182, *(v182 + 8));
                          *v182 = v179;
                          *(v182 + 8) = v181;
LABEL_141:
                          v191 = [a1 optimizedBatteryCharging];
                          if (!v191)
                          {
                            goto LABEL_150;
                          }

                          v192 = v191;
                          v193 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v195 = v194;

                          v196 = (v2 + v323[22]);
                          v197 = *v196;
                          v198 = v196[1];

                          v199 = [a1 optimizedBatteryCharging];
                          if (v199)
                          {
                            v200 = v199;
                            v201 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                            v203 = v202;

                            if (v197 == v201 && v198 == v203)
                            {

                              goto LABEL_150;
                            }

                            v204 = _stringCompareWithSmolCheck(_:_:expecting:)();

                            if (v204)
                            {

                              goto LABEL_150;
                            }
                          }

                          else
                          {
                          }

                          *v196 = v193;
                          v196[1] = v195;
LABEL_150:
                          v205 = [a1 optimizedBatteryFullChargeDeadline];
                          if (!v205)
                          {
                            goto LABEL_159;
                          }

                          v206 = v205;
                          v207 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v209 = v208;

                          v210 = (v2 + v323[23]);
                          v211 = *v210;
                          v212 = v210[1];

                          v213 = [a1 optimizedBatteryFullChargeDeadline];
                          if (v213)
                          {
                            v214 = v213;
                            v215 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                            v217 = v216;

                            if (v211 == v215 && v212 == v217)
                            {

                              goto LABEL_159;
                            }

                            v218 = _stringCompareWithSmolCheck(_:_:expecting:)();

                            if (v218)
                            {

                              goto LABEL_159;
                            }
                          }

                          else
                          {
                          }

                          *v210 = v207;
                          v210[1] = v209;
LABEL_159:
                          v219 = [a1 productID];
                          if (!v219)
                          {
                            goto LABEL_168;
                          }

                          v220 = v219;
                          v221 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v223 = v222;

                          v224 = (v2 + v323[13]);
                          v225 = *v224;
                          v226 = v224[1];

                          v227 = [a1 productID];
                          if (v227)
                          {
                            v228 = v227;
                            v229 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                            v231 = v230;

                            if (v225 == v229 && v226 == v231)
                            {

                              goto LABEL_168;
                            }

                            v232 = _stringCompareWithSmolCheck(_:_:expecting:)();

                            if (v232)
                            {

                              goto LABEL_168;
                            }
                          }

                          else
                          {
                          }

                          *v224 = v221;
                          v224[1] = v223;
LABEL_168:
                          v233 = [a1 ratchet];
                          if (!v233)
                          {
                            goto LABEL_177;
                          }

                          v234 = v233;
                          v235 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v237 = v236;

                          v238 = (v2 + v323[24]);
                          v239 = *v238;
                          v240 = v238[1];

                          v241 = [a1 ratchet];
                          if (v241)
                          {
                            v242 = v241;
                            v243 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                            v245 = v244;

                            if (v239 == v243 && v240 == v245)
                            {

                              goto LABEL_177;
                            }

                            v246 = _stringCompareWithSmolCheck(_:_:expecting:)();

                            if (v246)
                            {

                              goto LABEL_177;
                            }
                          }

                          else
                          {
                          }

                          *v238 = v235;
                          v238[1] = v237;
LABEL_177:
                          v247 = [a1 settingsMask];
                          if (!v247)
                          {
                            goto LABEL_186;
                          }

                          v248 = v247;
                          v249 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v251 = v250;

                          v252 = (v2 + v323[26]);
                          v253 = *v252;
                          v254 = v252[1];

                          v255 = [a1 settingsMask];
                          if (v255)
                          {
                            v256 = v255;
                            v257 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                            v259 = v258;

                            if (v253 == v257 && v254 == v259)
                            {

                              goto LABEL_186;
                            }

                            v260 = _stringCompareWithSmolCheck(_:_:expecting:)();

                            if (v260)
                            {

                              goto LABEL_186;
                            }
                          }

                          else
                          {
                          }

                          *v252 = v249;
                          v252[1] = v251;
LABEL_186:
                          v261 = [a1 spatialAudio];
                          if (!v261)
                          {
                            goto LABEL_195;
                          }

                          v262 = v261;
                          v263 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v265 = v264;

                          v266 = (v2 + v323[21]);
                          v267 = *v266;
                          v268 = v266[1];

                          v269 = [a1 spatialAudio];
                          if (v269)
                          {
                            v270 = v269;
                            v271 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                            v273 = v272;

                            if (v267 == v271 && v268 == v273)
                            {

                              goto LABEL_195;
                            }

                            v274 = _stringCompareWithSmolCheck(_:_:expecting:)();

                            if (v274)
                            {

                              goto LABEL_195;
                            }
                          }

                          else
                          {
                          }

                          *v266 = v263;
                          v266[1] = v265;
LABEL_195:
                          v275 = [a1 supportedServices];
                          if (!v275)
                          {
                            goto LABEL_204;
                          }

                          v276 = v275;
                          v277 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v279 = v278;

                          v280 = (v2 + v323[27]);
                          v281 = *v280;
                          v282 = v280[1];

                          v283 = [a1 supportedServices];
                          if (v283)
                          {
                            v284 = v283;
                            v285 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                            v287 = v286;

                            if (v281 == v285 && v282 == v287)
                            {

                              goto LABEL_204;
                            }

                            v288 = _stringCompareWithSmolCheck(_:_:expecting:)();

                            if (v288)
                            {

                              goto LABEL_204;
                            }
                          }

                          else
                          {
                          }

                          *v280 = v277;
                          v280[1] = v279;
LABEL_204:
                          v289 = [a1 vendorID];
                          if (!v289)
                          {
                            goto LABEL_213;
                          }

                          v290 = v289;
                          v291 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v293 = v292;

                          v294 = (v2 + v323[14]);
                          v295 = *v294;
                          v296 = v294[1];

                          v297 = [a1 vendorID];
                          if (v297)
                          {
                            v298 = v297;
                            v299 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                            v301 = v300;

                            if (v295 == v299 && v296 == v301)
                            {

                              goto LABEL_213;
                            }

                            v302 = _stringCompareWithSmolCheck(_:_:expecting:)();

                            if (v302)
                            {

                              goto LABEL_213;
                            }
                          }

                          else
                          {
                          }

                          *v294 = v291;
                          v294[1] = v293;
LABEL_213:
                          v303 = [a1 version];
                          if (v303)
                          {
                            v304 = v303;
                            v305 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                            v307 = v306;

                            v308 = (v2 + v323[28]);
                            v309 = *v308;
                            v310 = v308[1];

                            v311 = [a1 version];
                            if (v311)
                            {
                              v312 = v311;
                              v313 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                              v315 = v314;

                              if (v309 == v313 && v310 == v315)
                              {

                                goto LABEL_222;
                              }

                              v316 = _stringCompareWithSmolCheck(_:_:expecting:)();

                              if (v316)
                              {

                                goto LABEL_222;
                              }
                            }

                            else
                            {
                            }

                            *v308 = v305;
                            v308[1] = v307;
                          }

LABEL_222:
                          v317 = v319;
                          static Date.now.getter();
                          return (*(v320 + 40))(v2 + v323[30], v317, v321);
                        }
                      }

                      else
                      {
                        v2 = v322;
                        if (v183 >> 60 == 15)
                        {
                          goto LABEL_135;
                        }

                        v187 = 0;
                        v189 = 0xF000000000000000;
                      }

LABEL_139:
                      sub_1000FF5CC(v184, v183);
                      sub_1000FF5CC(v187, v189);
                      goto LABEL_140;
                    }
                  }

                  else
                  {
                    v2 = v322;
                    if (v169 >> 60 == 15)
                    {
                      goto LABEL_122;
                    }

                    v173 = 0;
                    v175 = 0xF000000000000000;
                  }

LABEL_126:
                  sub_1000FF5CC(v170, v169);
                  sub_1000FF5CC(v173, v175);
                  goto LABEL_127;
                }
              }

              else
              {
                v2 = v322;
                if (v127 >> 60 == 15)
                {
                  goto LABEL_91;
                }

                v131 = 0;
                v133 = 0xF000000000000000;
              }

LABEL_95:
              sub_1000FF5CC(v128, v127);
              sub_1000FF5CC(v131, v133);
              goto LABEL_96;
            }
          }

          else
          {
            v2 = v322;
            if (v113 >> 60 == 15)
            {
              goto LABEL_78;
            }

            v117 = 0;
            v119 = 0xF000000000000000;
          }

LABEL_82:
          sub_1000FF5CC(v114, v113);
          sub_1000FF5CC(v117, v119);
          goto LABEL_83;
        }
      }

      else
      {
        v2 = v322;
        if (v43 >> 60 == 15)
        {
          goto LABEL_29;
        }

        v47 = 0;
        v49 = 0xF000000000000000;
      }

LABEL_33:
      sub_1000FF5CC(v44, v43);
      sub_1000FF5CC(v47, v49);
      goto LABEL_34;
    }

    v15 = v14;
    v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = v2 + v323[10];
    v21 = *v19;
    v20 = *(v19 + 8);
    sub_1000EE9F4(*v19, v20);
    v22 = [a1 accessoryHint];
    if (v22)
    {
      v23 = v22;
      v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      if (v20 >> 60 == 15)
      {
        v2 = v322;
        if (v26 >> 60 != 15)
        {
          goto LABEL_20;
        }

LABEL_16:
        sub_1000EF870(v16, v18);
        sub_1000FF5CC(v21, v20);
        goto LABEL_22;
      }

      v2 = v322;
      if (v26 >> 60 != 15)
      {
        sub_1000EE9F4(v21, v20);
        sub_1000FF5B8(v24, v26);
        v36 = sub_100121564(v21, v20, v24, v26);
        sub_1000FF5CC(v24, v26);
        sub_1000EF870(v21, v20);
        sub_1000FF5CC(v24, v26);
        sub_1000FF5CC(v21, v20);
        if (v36)
        {
          sub_1000EF870(v16, v18);
          goto LABEL_22;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v2 = v322;
      if (v20 >> 60 == 15)
      {
        goto LABEL_16;
      }

      v24 = 0;
      v26 = 0xF000000000000000;
    }

LABEL_20:
    sub_1000FF5CC(v21, v20);
    sub_1000FF5CC(v24, v26);
LABEL_21:
    sub_1000EF870(*v19, *(v19 + 8));
    *v19 = v16;
    *(v19 + 8) = v18;
    goto LABEL_22;
  }

  v27 = static os_log_type_t.info.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v28 = qword_100300E38;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100226100;
  v30 = a1;
  v31 = [v30 description];
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  *(v29 + 56) = &type metadata for String;
  *(v29 + 64) = sub_1000EE954();
  *(v29 + 32) = v32;
  *(v29 + 40) = v34;
  os_log(_:dso:log:_:_:)(v27, &_mh_execute_header, v28, "No change in updated magic settings record: %@", 46, 2, v29);
}