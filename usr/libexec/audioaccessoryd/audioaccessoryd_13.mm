uint64_t sub_1001C00D0(id *a1, void **a2)
{
  v4 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v4 - 8);
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v35 - v14;
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = &v35 - v18;
  v20 = *a2;
  v21 = &off_1002EA000;
  v22 = [*a1 creationDate];
  v37 = v19;
  if (v22)
  {
    v23 = v22;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = *(v10 + 32);
    v24(v8, v15, v9);
    v36 = *(v10 + 56);
    v36(v8, 0, 1, v9);
    v24(v19, v8, v9);
    v21 = &off_1002EA000;
  }

  else
  {
    v36 = *(v10 + 56);
    v36(v8, 1, 1, v9);
    static Date.now.getter();
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      sub_1000EEE6C(v8, &qword_1002F7EF0, &unk_100226C90);
    }
  }

  v25 = [v20 v21[146]];
  if (v25)
  {
    v26 = v25;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = *(v10 + 32);
    v28 = v38;
    v27(v38, v15, v9);
    v36(v28, 0, 1, v9);
    v27(v12, v28, v9);
    v29 = v37;
  }

  else
  {
    v30 = v38;
    v36(v38, 1, 1, v9);
    static Date.now.getter();
    v31 = (*(v10 + 48))(v30, 1, v9);
    v29 = v37;
    if (v31 != 1)
    {
      sub_1000EEE6C(v30, &qword_1002F7EF0, &unk_100226C90);
    }
  }

  v32 = static Date.> infix(_:_:)();
  v33 = *(v10 + 8);
  v33(v12, v9);
  v33(v29, v9);
  return v32 & 1;
}

uint64_t sub_1001C04B0(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 zoneName];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = v9 == 0xD00000000000001ELL && 0x8000000100267220 == v11;
  if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v13 = static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      v45 = v13;
      swift_once();
      v13 = v45;
    }

    v14 = qword_100300E38;
    os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, qword_100300E38, "Cloud data purged, attempting to clear local accessory data", 59, 2, _swiftEmptyArrayStorage);
    Strong = swift_unknownObjectWeakLoadStrong();
    v49 = v14;
    if (Strong)
    {
      sub_100193560();
      v16 = type metadata accessor for CloudCoordinator(0);
      v17 = sub_10015A5B8(v16, &off_1002BE310);
      v14 = v49;
      v18 = v17;
      swift_unknownObjectRelease();
      sub_10011436C(v18 & 1, 1);
      swift_unknownObjectRelease();
    }

    v19 = objc_opt_self();
    if ([v19 isFirstUnlocked])
    {
      sub_100192340();
      if (qword_1002F79C0 != -1)
      {
        swift_once();
      }

      v20 = sub_1000EE91C(v3, qword_100300AF0);
      (*(v4 + 16))(v7, v20, v3);
      v21 = sub_10018B20C(v7);

      (*(v4 + 8))(v7, v3);
    }

    else
    {
      v22 = static os_log_type_t.error.getter();
      v21 = _swiftEmptyArrayStorage;
      os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v14, "deviceRecords call failed because in device is in beforeFirstUnlock state", 73, 2, _swiftEmptyArrayStorage);
    }

    if ([v19 isFirstUnlocked])
    {
      sub_100192340();
      if (qword_1002F7A68 != -1)
      {
        swift_once();
      }

      v23 = sub_1000EE91C(v3, qword_100300D48);
      (*(v4 + 16))(v7, v23, v3);
      v24 = sub_10018BDC8(v7);

      (*(v4 + 8))(v7, v3);
    }

    else
    {
      v25 = static os_log_type_t.error.getter();
      v24 = _swiftEmptyArrayStorage;
      os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, v14, "deviceSupportInformationRecords call failed because in device is in beforeFirstUnlock state", 91, 2, _swiftEmptyArrayStorage);
    }

    if ([v19 isFirstUnlocked])
    {
      sub_100192340();
      if (qword_1002F7A00 != -1)
      {
        swift_once();
      }

      v26 = sub_1000EE91C(v3, qword_100300BA8);
      (*(v4 + 16))(v7, v26, v3);
      v27 = sub_10018C984(v7);

      (*(v4 + 8))(v7, v3);
    }

    else
    {
      v28 = static os_log_type_t.error.getter();
      v29 = v14;
      v27 = _swiftEmptyArrayStorage;
      os_log(_:dso:log:_:_:)(v28, &_mh_execute_header, v29, "magicPairingSettingsRecords call failed because in device is in beforeFirstUnlock state", 87, 2, _swiftEmptyArrayStorage);
    }

    sub_1001C1064();
    sub_100192340();
    OS_dispatch_queue.sync<A>(execute:)();

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100181FF0(v21, "records Removed: %@", 19, &selRef_devicesRemovedWithRecords_);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10017F63C(v24);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    if (!swift_unknownObjectWeakLoadStrong())
    {
    }

    sub_10017EEAC(v27);

    return swift_unknownObjectRelease();
  }

  v30 = v9 == 0xD000000000000010 && 0x8000000100267960 == v11;
  if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v31 = static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      v46 = v31;
      swift_once();
      v31 = v46;
    }

    os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, qword_100300E38, "Cloud data purged, attempting to clear local sound profile data", 63, 2, _swiftEmptyArrayStorage);
    sub_100192340();
    OS_dispatch_queue.sync<A>(execute:)();

    return notify_post("BTCloudServicesSoundProfileChangedNotification");
  }

  if (v9 == 0xD000000000000012 && 0x8000000100267AF0 == v11)
  {

    goto LABEL_50;
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v33)
  {
LABEL_50:
    v51 = &type metadata for AudioAccessoryFeatures;
    v34 = sub_1000F1874();
    v52 = v34;
    v35 = isFeatureEnabled(_:)();
    result = sub_1000EF824(v50);
    if (v35)
    {
      v36 = static os_log_type_t.default.getter();
      if (qword_1002F7AE8 != -1)
      {
        v47 = v36;
        swift_once();
        v36 = v47;
      }

      os_log(_:dso:log:_:_:)(v36, &_mh_execute_header, qword_100300E38, "Cloud data purged, attempting to clear local accessory data", 59, 2, _swiftEmptyArrayStorage);
      sub_1001C1064();
      sub_100192340();
      v51 = &type metadata for AudioAccessoryFeatures;
      v52 = v34;
      v37 = isFeatureEnabled(_:)();
      sub_1000EF824(v50);
      if (v37)
      {
        OS_dispatch_queue.sync<A>(execute:)();
      }
    }

    return result;
  }

  v38 = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v39 = qword_100300E38;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_100226100;
  v41 = [a1 zoneName];
  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;

  *(v40 + 56) = &type metadata for String;
  *(v40 + 64) = sub_1000EE954();
  *(v40 + 32) = v42;
  *(v40 + 40) = v44;
  os_log(_:dso:log:_:_:)(v38, &_mh_execute_header, v39, "Cloud data purged, for unknown zone: %@", 39, 2, v40);
}

uint64_t sub_1001C1064()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    v18 = v4;
    swift_once();
    v4 = v18;
  }

  v5 = qword_100300E38;
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, qword_100300E38, "Tell delegate to remove local cache for AudioAccessoryZone data", 63, 2, _swiftEmptyArrayStorage);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v21 = &type metadata for AudioAccessoryFeatures;
    v22 = sub_1000F1874();
    v6 = isFeatureEnabled(_:)();
    sub_1000EF824(v20);
    if (v6)
    {
      if ([objc_opt_self() isFirstUnlocked])
      {
        sub_100192340();
        if (qword_1002F7AB8 != -1)
        {
          swift_once();
        }

        v7 = sub_1000EE91C(v0, qword_100300D88);
        (*(v1 + 16))(v3, v7, v0);
        v8 = sub_10018E14C(v3, &unk_1002F9C50, &qword_1002299C0, sub_1001CA538);

        (*(v1 + 8))(v3, v0);
      }

      else
      {
        v9 = static os_log_type_t.error.getter();
        v8 = _swiftEmptyArrayStorage;
        os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v5, "aaDeviceRecords call failed because device is in beforeFirstUnlock state", 72, 2, _swiftEmptyArrayStorage);
      }
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

    sub_10018150C(v8, "records Removed: %@", 19, &selRef_devicesRemovedWithRecords_, &selRef_deviceSupportInformationRecordsRemovedWithRecords_, &selRef_magicPairingRecordsRemovedWithRecords_, sub_1000F16D8);

    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v21 = &type metadata for AudioAccessoryFeatures;
    v22 = sub_1000F1874();
    v10 = isFeatureEnabled(_:)();
    sub_1000EF824(v20);
    if (v10)
    {
      if ([objc_opt_self() isFirstUnlocked])
      {
        sub_100192340();
        if (qword_1002F79D0 != -1)
        {
          swift_once();
        }

        v11 = sub_1000EE91C(v0, qword_100300B10);
        (*(v1 + 16))(v3, v11, v0);
        v12 = sub_10018E14C(v3, &unk_1002F9C68, &qword_1002299D0, sub_1001CAE20);

        (*(v1 + 8))(v3, v0);
      }

      else
      {
        v13 = static os_log_type_t.error.getter();
        v12 = _swiftEmptyArrayStorage;
        os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v5, "aaProxCardsRecords call failed because device is in beforeFirstUnlock state", 75, 2, _swiftEmptyArrayStorage);
      }
    }

    else
    {
      v12 = _swiftEmptyArrayStorage;
    }

    sub_100180998(v12, "records Removed: %@", 19, &selRef_devicesRemovedWithRecords_, &selRef_deviceSupportInformationRecordsRemovedWithRecords_, sub_1000F16D8, &selRef_magicPairingRecordsRemovedWithRecords_);

    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if ([objc_opt_self() isFirstUnlocked])
    {
      sub_100192340();
      if (qword_1002F7A60 != -1)
      {
        swift_once();
      }

      v15 = sub_1000EE91C(v0, qword_100300C40);
      (*(v1 + 16))(v3, v15, v0);
      v16 = sub_10018E14C(v3, &unk_1002F9C80, &qword_1002299E0, sub_1001CAE4C);

      (*(v1 + 8))(v3, v0);
    }

    else
    {
      v17 = static os_log_type_t.error.getter();
      v16 = _swiftEmptyArrayStorage;
      os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v5, "hmDeviceCloudRecords call failed because device is in beforeFirstUnlock state", 77, 2, _swiftEmptyArrayStorage);
    }

    sub_10017FDB0(v16, "records Removed: %@", 19, &selRef_devicesRemovedWithRecords_, &selRef_deviceSupportInformationRecordsRemovedWithRecords_, sub_1000F16D8, &selRef_magicPairingRecordsRemovedWithRecords_, sub_100172070);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1001C1668(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if (!*(result + 48))
    {
      v5 = static os_log_type_t.default.getter();
      if (qword_1002F7AE8 != -1)
      {
        swift_once();
      }

      v6 = qword_100300E38;
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_100226100;
      *(v7 + 56) = &type metadata for Bool;
      *(v7 + 64) = &protocol witness table for Bool;
      *(v7 + 32) = a2 & 1;
      os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "Account now available - manatee: %i", v9);

      v8 = *(v4 + 16);
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_10011436C(1, (v8 ^ 1) & a2);
        swift_unknownObjectRelease();
      }

      *(v4 + 16) = a2 & 1;
      sub_100195ABC();
    }
  }

  return result;
}

void sub_1001C17D0(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    v25 = v6;
    swift_once();
    v6 = v25;
  }

  v7 = qword_100300E38;
  os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, qword_100300E38, "Account removed, obliterate user cached files. Reset timers.", 60, 2, _swiftEmptyArrayStorage);
  v8 = objc_opt_self();
  if ([v8 isFirstUnlocked])
  {
    sub_100192340();
    if (qword_1002F79C0 != -1)
    {
      swift_once();
    }

    v9 = sub_1000EE91C(v2, qword_100300AF0);
    (*(v3 + 16))(v5, v9, v2);
    v27 = sub_10018B20C(v5);

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v10 = static os_log_type_t.error.getter();
    v27 = _swiftEmptyArrayStorage;
    os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v7, "deviceRecords call failed because in device is in beforeFirstUnlock state", 73, 2);
  }

  v29 = &type metadata for AudioAccessoryFeatures;
  v11 = sub_1000F1874();
  v30 = v11;
  v12 = isFeatureEnabled(_:)();
  sub_1000EF824(v28);
  if (v12)
  {
    if ([v8 isFirstUnlocked])
    {
      sub_100192340();
      if (qword_1002F7AB8 != -1)
      {
        swift_once();
      }

      v13 = sub_1000EE91C(v2, qword_100300D88);
      (*(v3 + 16))(v5, v13, v2);
      v26 = sub_10018E14C(v5, &unk_1002F9C50, &qword_1002299C0, sub_1001CA538);

      (*(v3 + 8))(v5, v2);
    }

    else
    {
      v14 = static os_log_type_t.error.getter();
      v26 = _swiftEmptyArrayStorage;
      os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v7, "aaDeviceRecords call failed because device is in beforeFirstUnlock state", 72, 2);
    }
  }

  else
  {
    v26 = _swiftEmptyArrayStorage;
  }

  v29 = &type metadata for AudioAccessoryFeatures;
  v30 = v11;
  v15 = isFeatureEnabled(_:)();
  sub_1000EF824(v28);
  if (v15)
  {
    if ([v8 isFirstUnlocked])
    {
      sub_100192340();
      if (qword_1002F79D0 != -1)
      {
        swift_once();
      }

      v16 = sub_1000EE91C(v2, qword_100300B10);
      (*(v3 + 16))(v5, v16, v2);
      v17 = sub_10018E14C(v5, &unk_1002F9C68, &qword_1002299D0, sub_1001CAE20);

      (*(v3 + 8))(v5, v2);
    }

    else
    {
      v18 = static os_log_type_t.error.getter();
      v17 = _swiftEmptyArrayStorage;
      os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v7, "aaProxCardsRecords call failed because device is in beforeFirstUnlock state", 75, 2, _swiftEmptyArrayStorage);
    }
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  if ([v8 isFirstUnlocked])
  {
    sub_100192340();
    if (qword_1002F7A60 != -1)
    {
      swift_once();
    }

    v19 = sub_1000EE91C(v2, qword_100300C40);
    (*(v3 + 16))(v5, v19, v2);
    v20 = sub_10018E14C(v5, &unk_1002F9C80, &qword_1002299E0, sub_1001CAE4C);

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v21 = static os_log_type_t.error.getter();
    v20 = _swiftEmptyArrayStorage;
    os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, v7, "hmDeviceCloudRecords call failed because device is in beforeFirstUnlock state", 77, 2, _swiftEmptyArrayStorage);
  }

  sub_100192340();
  OS_dispatch_queue.sync<A>(execute:)();

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100181FF0(v27, "records Purged: %@", 18, &selRef_allDevicesRemovedWithRecords_);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v29 = &type metadata for AudioAccessoryFeatures;
  v30 = v11;
  v22 = isFeatureEnabled(_:)();
  sub_1000EF824(v28);
  if (v22)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10018150C(v26, "records Purged: %@", 18, &selRef_allDevicesRemovedWithRecords_, &selRef_allDeviceSupportInformationRecordsRemovedWithRecords_, &selRef_allMagicPairingRecordsRemovedWithRecords_, sub_1000F18C8);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100180998(v17, "records Purged: %@", 18, &selRef_allDevicesRemovedWithRecords_, &selRef_allDeviceSupportInformationRecordsRemovedWithRecords_, sub_1000F18C8, &selRef_allMagicPairingRecordsRemovedWithRecords_);

      swift_unknownObjectRelease();
      goto LABEL_38;
    }
  }

  else
  {
  }

LABEL_38:
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10017FDB0(v20, "records Purged: %@", 18, &selRef_allDevicesRemovedWithRecords_, &selRef_allDeviceSupportInformationRecordsRemovedWithRecords_, sub_1000F18C8, &selRef_allMagicPairingRecordsRemovedWithRecords_, sub_1001701A4);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v23 = OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_retryTimer;
  [*(a1 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_retryTimer) invalidate];
  v24 = *(a1 + v23);
  *(a1 + v23) = 0;

  if (!*(a1 + 48))
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10011436C(0, 1);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1001C1FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v19[-v6];
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v19[-v13];
  v15 = sub_100192340();
  URL.init(string:)();
  result = (*(v9 + 48))(v7, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    CKRecord.recordType.getter();
    URL.appendingPathComponent(_:)();

    v17 = *(v9 + 8);
    v18 = v17(v11, v8);
    __chkstk_darwin(v18);
    *&v19[-32] = v15;
    *&v19[-24] = a2;
    *&v19[-16] = a3;
    *&v19[-8] = v14;
    OS_dispatch_queue.sync<A>(execute:)();

    return v17(v14, v8);
  }

  return result;
}

uint64_t sub_1001C2258@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000EF78C(a1, v3);
  v5 = (*(v4 + 56))(v3, v4);
  v6 = [v5 encryptedValues];

  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 objectForKeyedSubscript:v7];

  result = swift_unknownObjectRelease();
  *a2 = v8;
  return result;
}

uint64_t sub_1001C232C(uint64_t a1, char a2)
{
  v5 = type metadata accessor for DeviceRecord(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100192340();
  v27 = a1;
  OS_dispatch_queue.sync<A>(execute:)();
  v24 = v6;

  LODWORD(v25) = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v9 = qword_100300E38;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100226C80;
  *(v10 + 56) = &type metadata for String;
  v11 = sub_1000EE954();
  *(v10 + 64) = v11;
  strcpy((v10 + 32), "DeviceRecord");
  *(v10 + 45) = 0;
  *(v10 + 46) = -5120;
  sub_1001CC14C(a1, v8, type metadata accessor for DeviceRecord);
  v12 = String.init<A>(describing:)();
  *(v10 + 96) = &type metadata for String;
  *(v10 + 104) = v11;
  *(v10 + 72) = v12;
  *(v10 + 80) = v13;
  os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, v9, "Successfully Cached (%@) Record: %@", 35, 2, v10);

  if (a2)
  {
    v15 = static os_log_type_t.default.getter();
    v16 = swift_allocObject();
    v25 = xmmword_100226100;
    *(v16 + 16) = xmmword_100226100;
    Strong = swift_unknownObjectWeakLoadStrong();
    v18 = *(v2 + 32);
    v28 = Strong;
    v29 = v18;
    sub_1000EE870(&qword_1002F9DB8, &qword_100229A80);
    v19 = String.init<A>(describing:)();
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = v11;
    *(v16 + 32) = v19;
    *(v16 + 40) = v20;
    os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v9, "Update delegate: %@", 19, 2, v16);

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_1000EE870(&unk_1002F9CE0, &qword_100229A08);
      v21 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v22 = swift_allocObject();
      *(v22 + 16) = v25;
      sub_1001CC14C(a1, v22 + v21, type metadata accessor for DeviceRecord);
      sub_1001746E8(v22);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1001C27B8(uint64_t a1, int a2)
{
  v5 = type metadata accessor for DeviceSupportInformationRecord(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100192340();
  v27 = a1;
  OS_dispatch_queue.sync<A>(execute:)();
  LODWORD(v25) = a2;
  v23 = v6;

  v24 = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v9 = qword_100300E38;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100226C80;
  *(v10 + 56) = &type metadata for String;
  v11 = sub_1000EE954();
  *(v10 + 64) = v11;
  *(v10 + 32) = 0xD00000000000001ELL;
  *(v10 + 40) = 0x80000001002671E0;
  sub_1001CC14C(a1, v8, type metadata accessor for DeviceSupportInformationRecord);
  v12 = String.init<A>(describing:)();
  *(v10 + 96) = &type metadata for String;
  *(v10 + 104) = v11;
  *(v10 + 72) = v12;
  *(v10 + 80) = v13;
  os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, v9, "Successfully Cached (%@) Record: %@", 35, 2, v10);

  if (v25)
  {
    v15 = static os_log_type_t.default.getter();
    v16 = swift_allocObject();
    v25 = xmmword_100226100;
    *(v16 + 16) = xmmword_100226100;
    Strong = swift_unknownObjectWeakLoadStrong();
    v18 = *(v2 + 32);
    v28 = Strong;
    v29 = v18;
    sub_1000EE870(&qword_1002F9DB8, &qword_100229A80);
    v19 = String.init<A>(describing:)();
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = v11;
    *(v16 + 32) = v19;
    *(v16 + 40) = v20;
    os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v9, "Update delegate: %@", 19, 2, v16);

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_1000EE870(&qword_1002F9CD8, &qword_100229A00);
      v21 = (*(v23 + 80) + 32) & ~*(v23 + 80);
      v22 = swift_allocObject();
      *(v22 + 16) = v25;
      sub_1001CC14C(a1, v22 + v21, type metadata accessor for DeviceSupportInformationRecord);
      sub_1001754E4(v22);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1001C2C44(uint64_t a1, char a2)
{
  v5 = type metadata accessor for MagicPairingSettingsRecord(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100192340();
  v27 = a1;
  OS_dispatch_queue.sync<A>(execute:)();
  v24 = v6;

  LODWORD(v25) = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v9 = qword_100300E38;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100226C80;
  *(v10 + 56) = &type metadata for String;
  v11 = sub_1000EE954();
  *(v10 + 64) = v11;
  strcpy((v10 + 32), "MagicSettings");
  *(v10 + 46) = -4864;
  sub_1001CC14C(a1, v8, type metadata accessor for MagicPairingSettingsRecord);
  v12 = String.init<A>(describing:)();
  *(v10 + 96) = &type metadata for String;
  *(v10 + 104) = v11;
  *(v10 + 72) = v12;
  *(v10 + 80) = v13;
  os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, v9, "Successfully Cached (%@) Record: %@", 35, 2, v10);

  if (a2)
  {
    v15 = static os_log_type_t.default.getter();
    v16 = swift_allocObject();
    v25 = xmmword_100226100;
    *(v16 + 16) = xmmword_100226100;
    Strong = swift_unknownObjectWeakLoadStrong();
    v18 = *(v2 + 32);
    v28 = Strong;
    v29 = v18;
    sub_1000EE870(&qword_1002F9DB8, &qword_100229A80);
    v19 = String.init<A>(describing:)();
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = v11;
    *(v16 + 32) = v19;
    *(v16 + 40) = v20;
    os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v9, "Update delegate: %@", 19, 2, v16);

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_1000EE870(&unk_1002F9CF0, &unk_100229A10);
      v21 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v22 = swift_allocObject();
      *(v22 + 16) = v25;
      sub_1001CC14C(a1, v22 + v21, type metadata accessor for MagicPairingSettingsRecord);
      sub_100176C18(v22);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1001C30D4(void *a1, char a2)
{
  sub_100192340();
  OS_dispatch_queue.sync<A>(execute:)();

  v4 = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v5 = qword_100300E38;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100226C80;
  *(v6 + 56) = &type metadata for String;
  v7 = sub_1000EE954();
  *(v6 + 64) = v7;
  strcpy((v6 + 32), "AADeviceRecord");
  *(v6 + 47) = -18;
  type metadata accessor for AADeviceRecord(0);
  v17 = a1;
  v8 = String.init<A>(describing:)();
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = v7;
  *(v6 + 72) = v8;
  *(v6 + 80) = v9;
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "Successfully Cached (%@) Record: %@", 35, 2, v6);

  if (a2)
  {
    v11 = static os_log_type_t.default.getter();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100226100;
    swift_unknownObjectWeakLoadStrong();
    sub_1000EE870(&qword_1002F9DB8, &qword_100229A80);
    v13 = String.init<A>(describing:)();
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = v7;
    *(v12 + 32) = v13;
    *(v12 + 40) = v14;
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v5, "Update delegate: %@", 19, 2, v12);

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_1000EE870(&qword_1002F9350, &qword_1002292D0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1002290F0;
      *(v15 + 32) = v17;
      v16 = v17;
      sub_10017B128(v15);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1001C34AC(void *a1, char a2)
{
  sub_100192340();
  OS_dispatch_queue.sync<A>(execute:)();

  v4 = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v5 = qword_100300E38;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100226C80;
  *(v6 + 56) = &type metadata for String;
  v7 = sub_1000EE954();
  *(v6 + 64) = v7;
  *(v6 + 32) = 0xD000000000000011;
  *(v6 + 40) = 0x800000010026EAC0;
  type metadata accessor for AAProxCardsRecord(0);
  v17 = a1;
  v8 = String.init<A>(describing:)();
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = v7;
  *(v6 + 72) = v8;
  *(v6 + 80) = v9;
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "Successfully Cached (%@) Record: %@", 35, 2, v6);

  if (a2)
  {
    v11 = static os_log_type_t.default.getter();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100226100;
    swift_unknownObjectWeakLoadStrong();
    sub_1000EE870(&qword_1002F9DB8, &qword_100229A80);
    v13 = String.init<A>(describing:)();
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = v7;
    *(v12 + 32) = v13;
    *(v12 + 40) = v14;
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v5, "Update delegate: %@", 19, 2, v12);

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_1000EE870(&qword_1002F9350, &qword_1002292D0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1002290F0;
      *(v15 + 32) = v17;
      v16 = v17;
      sub_100179344(v15);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1001C387C(void *a1, char a2)
{
  sub_100192340();
  OS_dispatch_queue.sync<A>(execute:)();

  v4 = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v5 = qword_100300E38;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100226C80;
  *(v6 + 56) = &type metadata for String;
  v7 = sub_1000EE954();
  *(v6 + 64) = v7;
  *(v6 + 32) = 0xD000000000000013;
  *(v6 + 40) = 0x8000000100267B10;
  type metadata accessor for HMDeviceCloudRecord(0);
  v17 = a1;
  v8 = String.init<A>(describing:)();
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = v7;
  *(v6 + 72) = v8;
  *(v6 + 80) = v9;
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "Successfully Cached (%@) Record: %@", 35, 2, v6);

  if (a2)
  {
    v11 = static os_log_type_t.default.getter();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100226100;
    swift_unknownObjectWeakLoadStrong();
    sub_1000EE870(&qword_1002F9DB8, &qword_100229A80);
    v13 = String.init<A>(describing:)();
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = v7;
    *(v12 + 32) = v13;
    *(v12 + 40) = v14;
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v5, "Update delegate: %@", 19, 2, v12);

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_1000EE870(&qword_1002F9350, &qword_1002292D0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1002290F0;
      *(v15 + 32) = v17;
      v16 = v17;
      sub_100177500(v15);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1001C3C4C(uint64_t a1, char a2)
{
  v5 = type metadata accessor for LegacyAccountMagicKeysRecord(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100192340();
  v27 = a1;
  OS_dispatch_queue.sync<A>(execute:)();
  v24 = v6;

  LODWORD(v25) = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v9 = qword_100300E38;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100226C80;
  *(v10 + 56) = &type metadata for String;
  v11 = sub_1000EE954();
  *(v10 + 64) = v11;
  *(v10 + 32) = 0x654B72657473614DLL;
  *(v10 + 40) = 0xE900000000000079;
  sub_1001CC14C(a1, v8, type metadata accessor for LegacyAccountMagicKeysRecord);
  v12 = String.init<A>(describing:)();
  *(v10 + 96) = &type metadata for String;
  *(v10 + 104) = v11;
  *(v10 + 72) = v12;
  *(v10 + 80) = v13;
  os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, v9, "Successfully Cached (%@) Record: %@", 35, 2, v10);

  if (a2)
  {
    v15 = static os_log_type_t.default.getter();
    v16 = swift_allocObject();
    v25 = xmmword_100226100;
    *(v16 + 16) = xmmword_100226100;
    Strong = swift_unknownObjectWeakLoadStrong();
    v18 = *(v2 + 32);
    v28 = Strong;
    v29 = v18;
    sub_1000EE870(&qword_1002F9DB8, &qword_100229A80);
    v19 = String.init<A>(describing:)();
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = v11;
    *(v16 + 32) = v19;
    *(v16 + 40) = v20;
    os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v9, "Update delegate: %@", 19, 2, v16);

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_1000EE870(&unk_1002F9DC0, &qword_100229A88);
      v21 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v22 = swift_allocObject();
      *(v22 + 16) = v25;
      sub_1001CC14C(a1, v22 + v21, type metadata accessor for LegacyAccountMagicKeysRecord);
      sub_100177018(v22);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1001C40D4(char *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  __chkstk_darwin(v8 - 8);
  v90 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v93 = &v86 - v11;
  __chkstk_darwin(v12);
  v94 = &v86 - v13;
  v14 = type metadata accessor for URL();
  v100 = *(v14 - 8);
  __chkstk_darwin(v14);
  v86 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v87 = &v86 - v17;
  __chkstk_darwin(v18);
  v88 = &v86 - v19;
  __chkstk_darwin(v20);
  v89 = &v86 - v21;
  __chkstk_darwin(v22);
  v91 = &v86 - v23;
  __chkstk_darwin(v24);
  v92 = &v86 - v25;
  __chkstk_darwin(v26);
  v28 = &v86 - v27;
  if (a3)
  {
    v29 = sub_1001B0F34(a1, a2);
    if (v29)
    {
      v30 = v29;
      v99 = v14;
      v31 = a1;
      v32 = static os_log_type_t.default.getter();
      if (qword_1002F7AE8 != -1)
      {
        swift_once();
      }

      v98 = qword_100300E38;
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_100226100;
      v34 = v30;
      v35 = [v34 description];
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      *(v33 + 56) = &type metadata for String;
      *(v33 + 64) = sub_1000EE954();
      *(v33 + 32) = v36;
      *(v33 + 40) = v38;
      os_log(_:dso:log:_:_:)(v32, &_mh_execute_header, v98, "Inform delegate to remove AADeviceRecord: %@", 44, 2, v33);

      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1000EE870(&qword_1002F9350, &qword_1002292D0);
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_1002290F0;
        *(v39 + 32) = v34;
        v40 = v34;
        sub_10018150C(v39, "records Removed: %@", 19, &selRef_devicesRemovedWithRecords_, &selRef_deviceSupportInformationRecordsRemovedWithRecords_, &selRef_magicPairingRecordsRemovedWithRecords_, sub_1000F16D8);

        swift_unknownObjectRelease();
      }

      a1 = v31;
      v14 = v99;
    }
  }

  v41 = a2;
  v42 = sub_100192340();
  v43 = v4;
  if (qword_1002F7AB8 != -1)
  {
    swift_once();
  }

  v44 = sub_1000EE91C(v14, qword_100300D88);
  v45 = v100;
  v96 = *(v100 + 16);
  v97 = (v100 + 16);
  v46 = v96(v28, v44, v14);
  __chkstk_darwin(v46);
  *(&v86 - 4) = v42;
  *(&v86 - 3) = a1;
  *(&v86 - 2) = v41;
  *(&v86 - 1) = v28;
  OS_dispatch_queue.sync<A>(execute:)();

  v99 = a1;
  v47 = *(v45 + 8);
  v47(v28, v14);
  v48 = OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager;
  v49 = *(v43 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager);
  v50 = qword_1002F79D0;

  v98 = v41;
  if (v50 != -1)
  {
    swift_once();
  }

  v51 = sub_1000EE91C(v14, qword_100300B10);
  v52 = v96(v28, v51, v14);
  __chkstk_darwin(v52);
  v53 = v98;
  v54 = v99;
  *(&v86 - 4) = v49;
  *(&v86 - 3) = v54;
  *(&v86 - 2) = v53;
  *(&v86 - 1) = v28;
  OS_dispatch_queue.sync<A>(execute:)();

  v47(v28, v14);
  v55 = *(v43 + v48);
  v56 = qword_1002F7A60;

  v57 = v47;
  if (v56 != -1)
  {
    swift_once();
  }

  v58 = sub_1000EE91C(v14, qword_100300C40);
  v59 = v96(v28, v58, v14);
  __chkstk_darwin(v59);
  v60 = v98;
  v61 = v99;
  *(&v86 - 4) = v55;
  *(&v86 - 3) = v61;
  *(&v86 - 2) = v60;
  *(&v86 - 1) = v28;
  OS_dispatch_queue.sync<A>(execute:)();

  v47(v28, v14);
  v62 = *(v43 + v48);

  v63 = v94;
  URL.init(string:)();
  v95 = v43;
  v96 = v48;
  v64 = v100;
  v97 = *(v100 + 48);
  result = v97(v63, 1, v14);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_19;
  }

  v66 = *(v64 + 32);
  v100 = v64 + 32;
  v67 = v91;
  v66(v91, v63, v14);
  v68 = v92;
  URL.appendingPathComponent(_:)();
  v69 = v57(v67, v14);
  __chkstk_darwin(v69);
  v70 = v98;
  v71 = v99;
  *(&v86 - 4) = v62;
  *(&v86 - 3) = v71;
  *(&v86 - 2) = v70;
  *(&v86 - 1) = v68;
  OS_dispatch_queue.sync<A>(execute:)();

  v57(v68, v14);
  v72 = *(v96 + v95);

  v73 = v93;
  URL.init(string:)();
  result = v97(v73, 1, v14);
  if (result == 1)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v74 = v88;
  v66(v88, v73, v14);
  v75 = v89;
  URL.appendingPathComponent(_:)();
  v76 = v57(v74, v14);
  __chkstk_darwin(v76);
  v77 = v98;
  v78 = v99;
  *(&v86 - 4) = v72;
  *(&v86 - 3) = v78;
  *(&v86 - 2) = v77;
  *(&v86 - 1) = v75;
  OS_dispatch_queue.sync<A>(execute:)();

  v57(v75, v14);
  v79 = *(v96 + v95);

  v80 = v90;
  URL.init(string:)();
  result = v97(v80, 1, v14);
  if (result != 1)
  {
    v81 = v86;
    v66(v86, v80, v14);
    v82 = v87;
    URL.appendingPathComponent(_:)();
    v83 = v57(v81, v14);
    __chkstk_darwin(v83);
    v84 = v98;
    v85 = v99;
    *(&v86 - 4) = v79;
    *(&v86 - 3) = v85;
    *(&v86 - 2) = v84;
    *(&v86 - 1) = v82;
    OS_dispatch_queue.sync<A>(execute:)();

    return v57(v82, v14);
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1001C4BB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1001C4D04(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000EE870(&qword_1002F9350, &qword_1002292D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_1001C4D8C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001C500C(a1, a2, a3, *v3, &unk_1002F9CF0, &unk_100229A10, type metadata accessor for MagicPairingSettingsRecord);
  *v3 = result;
  return result;
}

void *sub_1001C4DD0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001C500C(a1, a2, a3, *v3, &qword_1002F9CD8, &qword_100229A00, type metadata accessor for DeviceSupportInformationRecord);
  *v3 = result;
  return result;
}

void *sub_1001C4E14(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001C500C(a1, a2, a3, *v3, &unk_1002F9CE0, &qword_100229A08, type metadata accessor for DeviceRecord);
  *v3 = result;
  return result;
}

char *sub_1001C4E58(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001C4F00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1001C4E78(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001C500C(a1, a2, a3, *v3, &qword_1002F8528, &unk_100229A90, type metadata accessor for LegacyMagicPairingSettingsRecords);
  *v3 = result;
  return result;
}

void *sub_1001C4EBC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001C500C(a1, a2, a3, *v3, &qword_1002F9D88, &unk_100229A48, type metadata accessor for BTDeferredRecord);
  *v3 = result;
  return result;
}

char *sub_1001C4F00(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000EE870(&unk_1002F9E70, qword_100229840);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001C500C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_1000EE870(a5, a6);
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

uint64_t sub_1001C51E8(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1001C5598(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int sub_1001C5338(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000EE870(&qword_1002F9D50, &unk_100229360);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_1001C5598(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1001C5338(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1001C5718();
      goto LABEL_16;
    }

    sub_1001C5874(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1001C5718()
{
  v1 = v0;
  sub_1000EE870(&qword_1002F9D50, &unk_100229360);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

  return result;
}

Swift::Int sub_1001C5874(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000EE870(&qword_1002F9D50, &unk_100229360);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

void sub_1001C5AAC(uint64_t *a1)
{
  v2 = *(type metadata accessor for SoundProfileRecord(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1001CA564(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1001C5BE8(v5);
  *a1 = v3;
}

uint64_t sub_1001C5B54(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1001CA5B0(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  sub_1001C5D14(v10, a2, a3);
  return specialized ContiguousArray._endMutation()();
}

void sub_1001C5BE8(uint64_t *a1)
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
        type metadata accessor for SoundProfileRecord(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for SoundProfileRecord(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1001C6624(v8, v9, a1, v4);
      v6[2] = 0;

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
    sub_1001C5E38(0, v2, 1, a1);
  }
}

Swift::Int sub_1001C5D14(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v6);
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000FA784(0, &qword_1002F85A0, CKRecord_ptr);
        v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFF8;
      v12[0] = (v10 & 0xFFFFFFFFFFFFFF8) + 32;
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

void sub_1001C5E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for SoundProfileRecord(0);
  __chkstk_darwin(v8);
  v34 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  __chkstk_darwin(v13);
  v16 = &v26 - v15;
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v33 = v17;
    v27 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v31 = v19;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    while (1)
    {
      sub_1001CC14C(v22, v16, type metadata accessor for SoundProfileRecord);
      sub_1001CC14C(v19, v12, type metadata accessor for SoundProfileRecord);
      v23 = static Date.> infix(_:_:)();
      sub_1001CC1B4(v12, type metadata accessor for SoundProfileRecord);
      sub_1001CC1B4(v16, type metadata accessor for SoundProfileRecord);
      if ((v23 & 1) == 0)
      {
LABEL_4:
        a3 = v32 + 1;
        v19 = v31 + v27;
        v21 = v30 - 1;
        v22 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      v24 = v34;
      sub_1001CC214(v22, v34, type metadata accessor for SoundProfileRecord);
      swift_arrayInitWithTakeFrontToBack();
      sub_1001CC214(v24, v19, type metadata accessor for SoundProfileRecord);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1001C609C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v5 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = a1 - a3;
LABEL_4:
    v9 = *(v6 + 8 * v5);
    v10 = v8;
    v18 = v7;
    while (1)
    {
      v20 = v9;
      v19 = *v7;
      v11 = v19;
      v12 = v9;
      v13 = v11;
      v14 = sub_1001BC694(&v20, &v19);

      if (v4)
      {
        break;
      }

      if (v14)
      {
        if (!v6)
        {
          __break(1u);
          return;
        }

        v15 = *v7;
        v9 = *(v7 + 8);
        *v7 = v9;
        *(v7 + 8) = v15;
        v7 -= 8;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v5;
      v7 = v18 + 8;
      --v8;
      if (v5 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_1001C618C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v8 - 8);
  v55 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v46 - v11;
  v13 = type metadata accessor for Date();
  __chkstk_darwin(v13);
  v60 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v57 = &v46 - v16;
  __chkstk_darwin(v17);
  v51 = &v46 - v19;
  v47 = a2;
  if (a3 != a2)
  {
    v56 = (v18 + 32);
    v20 = *a4;
    v59 = (v18 + 56);
    v52 = (v18 + 48);
    v53 = (v18 + 8);
    v54 = v20;
    v21 = v20 + 8 * a3 - 8;
    v22 = a1 - a3;
LABEL_5:
    v49 = v21;
    v50 = a3;
    v23 = *(v54 + 8 * a3);
    v48 = v22;
    v24 = v51;
    while (1)
    {
      v25 = *v21;
      v26 = v23;
      v61 = v25;
      v58 = v26;
      v27 = [v26 creationDate];
      if (v27)
      {
        v28 = v27;
        v29 = v57;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v30 = *v56;
        (*v56)(v12, v29, v13);
        v31 = *v59;
        (*v59)(v12, 0, 1, v13);
        v30(v24, v12, v13);
      }

      else
      {
        v31 = *v59;
        (*v59)(v12, 1, 1, v13);
        static Date.now.getter();
        if ((*v52)(v12, 1, v13) != 1)
        {
          sub_1000EEE6C(v12, &qword_1002F7EF0, &unk_100226C90);
        }
      }

      v32 = [v61 creationDate];
      if (v32)
      {
        v33 = v57;
        v34 = v32;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v35 = *v56;
        v36 = v12;
        v37 = v55;
        v38 = v33;
        v24 = v51;
        (*v56)(v55, v38, v13);
        v31(v37, 0, 1, v13);
        v39 = v37;
        v12 = v36;
        v35(v60, v39, v13);
      }

      else
      {
        v40 = v55;
        v31(v55, 1, 1, v13);
        static Date.now.getter();
        if ((*v52)(v40, 1, v13) != 1)
        {
          sub_1000EEE6C(v55, &qword_1002F7EF0, &unk_100226C90);
        }
      }

      v41 = v60;
      v42 = static Date.> infix(_:_:)();
      v43 = *v53;
      (*v53)(v41, v13);
      v43(v24, v13);

      if ((v42 & 1) == 0)
      {
LABEL_4:
        a3 = v50 + 1;
        v21 = v49 + 8;
        v22 = v48 - 1;
        if (v50 + 1 == v47)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v54)
      {
        break;
      }

      v44 = *v21;
      v23 = *(v21 + 8);
      *v21 = v23;
      *(v21 + 8) = v44;
      v21 -= 8;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1001C6624(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v104 = a1;
  v9 = type metadata accessor for SoundProfileRecord(0);
  v112 = *(v9 - 8);
  __chkstk_darwin(v9);
  v107 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v115 = &v100 - v12;
  __chkstk_darwin(v13);
  v116 = &v100 - v14;
  __chkstk_darwin(v15);
  v17 = &v100 - v16;
  v114 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v104;
    if (!*v104)
    {
      goto LABEL_134;
    }

    a4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v95 = a4;
    }

    else
    {
LABEL_128:
      v95 = sub_1001C9D08(a4);
    }

    v118 = v95;
    a4 = *(v95 + 2);
    if (a4 >= 2)
    {
      while (*v114)
      {
        v96 = *&v95[16 * a4];
        v97 = v95;
        v98 = *&v95[16 * a4 + 24];
        sub_1001C8A3C(*v114 + *(v112 + 72) * v96, *v114 + *(v112 + 72) * *&v95[16 * a4 + 16], *v114 + *(v112 + 72) * v98, v5);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v98 < v96)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_1001C9D08(v97);
        }

        if (a4 - 2 >= *(v97 + 2))
        {
          goto LABEL_122;
        }

        v99 = &v97[16 * a4];
        *v99 = v96;
        *(v99 + 1) = v98;
        v118 = v97;
        sub_1001C9C7C(a4 - 1);
        v95 = v118;
        a4 = *(v118 + 2);
        if (a4 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v19 = 0;
  v20 = _swiftEmptyArrayStorage;
  v103 = a4;
  v117 = v9;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    v108 = v20;
    if (v19 + 1 >= v18)
    {
      v18 = v19 + 1;
    }

    else
    {
      v23 = *(v112 + 72);
      v5 = *v114 + v23 * v22;
      v110 = *v114;
      v24 = v110;
      sub_1001CC14C(v110 + v23 * v22, v17, type metadata accessor for SoundProfileRecord);
      v25 = v24 + v23 * v21;
      v26 = v21;
      v27 = v116;
      sub_1001CC14C(v25, v116, type metadata accessor for SoundProfileRecord);
      LODWORD(v111) = static Date.> infix(_:_:)();
      sub_1001CC1B4(v27, type metadata accessor for SoundProfileRecord);
      sub_1001CC1B4(v17, type metadata accessor for SoundProfileRecord);
      v102 = v26;
      v28 = v26 + 2;
      v113 = v23;
      v29 = v110 + v23 * (v26 + 2);
      while (v18 != v28)
      {
        sub_1001CC14C(v29, v17, type metadata accessor for SoundProfileRecord);
        v30 = v116;
        sub_1001CC14C(v5, v116, type metadata accessor for SoundProfileRecord);
        v31 = static Date.> infix(_:_:)() & 1;
        sub_1001CC1B4(v30, type metadata accessor for SoundProfileRecord);
        sub_1001CC1B4(v17, type metadata accessor for SoundProfileRecord);
        ++v28;
        v29 += v113;
        v5 += v113;
        if ((v111 & 1) != v31)
        {
          v18 = v28 - 1;
          break;
        }
      }

      v21 = v102;
      a4 = v103;
      if (v111)
      {
        if (v18 < v102)
        {
          goto LABEL_125;
        }

        if (v102 < v18)
        {
          v101 = v6;
          v32 = v113 * (v18 - 1);
          v33 = v18;
          v34 = v18 * v113;
          v111 = v18;
          v35 = v102;
          v36 = v102;
          v37 = v102 * v113;
          do
          {
            if (v35 != --v33)
            {
              v38 = *v114;
              if (!*v114)
              {
                goto LABEL_131;
              }

              v5 = v38 + v37;
              sub_1001CC214(v38 + v37, v107, type metadata accessor for SoundProfileRecord);
              if (v37 < v32 || v5 >= v38 + v34)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v37 != v32)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1001CC214(v107, v38 + v32, type metadata accessor for SoundProfileRecord);
            }

            ++v35;
            v32 -= v113;
            v34 -= v113;
            v37 += v113;
          }

          while (v35 < v33);
          v6 = v101;
          a4 = v103;
          v21 = v36;
          v18 = v111;
        }
      }
    }

    v39 = v114[1];
    if (v18 < v39)
    {
      if (__OFSUB__(v18, v21))
      {
        goto LABEL_124;
      }

      if (v18 - v21 < a4)
      {
        if (__OFADD__(v21, a4))
        {
          goto LABEL_126;
        }

        if ((v21 + a4) >= v39)
        {
          v40 = v114[1];
        }

        else
        {
          v40 = v21 + a4;
        }

        if (v40 < v21)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v18 != v40)
        {
          break;
        }
      }
    }

    v19 = v18;
    if (v18 < v21)
    {
      goto LABEL_123;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = v108;
    }

    else
    {
      v20 = sub_1001C9E00(0, *(v108 + 2) + 1, 1, v108);
    }

    a4 = *(v20 + 2);
    v41 = *(v20 + 3);
    v5 = a4 + 1;
    if (a4 >= v41 >> 1)
    {
      v20 = sub_1001C9E00((v41 > 1), a4 + 1, 1, v20);
    }

    *(v20 + 2) = v5;
    v42 = &v20[16 * a4];
    *(v42 + 4) = v21;
    *(v42 + 5) = v19;
    v43 = *v104;
    if (!*v104)
    {
      goto LABEL_133;
    }

    if (a4)
    {
      while (1)
      {
        v44 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v45 = *(v20 + 4);
          v46 = *(v20 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_52:
          if (v48)
          {
            goto LABEL_112;
          }

          v61 = &v20[16 * v5];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_115;
          }

          v67 = &v20[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_119;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v71 = &v20[16 * v5];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_66:
        if (v66)
        {
          goto LABEL_114;
        }

        v74 = &v20[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_117;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v44 - 1;
        if (v44 - 1 >= v5)
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

        v82 = v20;
        v83 = *&v20[16 * a4 + 32];
        v5 = *&v20[16 * v44 + 40];
        sub_1001C8A3C(*v114 + *(v112 + 72) * v83, *v114 + *(v112 + 72) * *&v20[16 * v44 + 32], *v114 + *(v112 + 72) * v5, v43);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v5 < v83)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = sub_1001C9D08(v82);
        }

        if (a4 >= *(v82 + 2))
        {
          goto LABEL_109;
        }

        v84 = &v82[16 * a4];
        *(v84 + 4) = v83;
        *(v84 + 5) = v5;
        v118 = v82;
        sub_1001C9C7C(v44);
        v20 = v118;
        v5 = *(v118 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v20[16 * v5 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_110;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_111;
      }

      v56 = &v20[16 * v5];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_113;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_116;
      }

      if (v60 >= v52)
      {
        v78 = &v20[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_120;
        }

        if (v47 < v81)
        {
          v44 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = v114[1];
    a4 = v103;
    if (v19 >= v18)
    {
      goto LABEL_95;
    }
  }

  v101 = v6;
  v85 = v18;
  v86 = v21;
  v87 = *v114;
  v88 = *(v112 + 72);
  v89 = *v114 + v88 * (v18 - 1);
  v90 = -v88;
  v102 = v86;
  v91 = v86 - v18;
  v111 = v85;
  v105 = v88;
  v106 = v40;
  v5 = v87 + v85 * v88;
LABEL_85:
  v109 = v5;
  v110 = v91;
  v113 = v89;
  while (1)
  {
    sub_1001CC14C(v5, v17, type metadata accessor for SoundProfileRecord);
    v92 = v116;
    sub_1001CC14C(v89, v116, type metadata accessor for SoundProfileRecord);
    a4 = static Date.> infix(_:_:)();
    sub_1001CC1B4(v92, type metadata accessor for SoundProfileRecord);
    sub_1001CC1B4(v17, type metadata accessor for SoundProfileRecord);
    if ((a4 & 1) == 0)
    {
LABEL_84:
      v19 = v106;
      v89 = v113 + v105;
      v91 = v110 - 1;
      v5 = v109 + v105;
      if (++v111 != v106)
      {
        goto LABEL_85;
      }

      v6 = v101;
      v21 = v102;
      if (v106 < v102)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v87)
    {
      break;
    }

    a4 = type metadata accessor for SoundProfileRecord;
    v93 = v115;
    sub_1001CC214(v5, v115, type metadata accessor for SoundProfileRecord);
    swift_arrayInitWithTakeFrontToBack();
    sub_1001CC214(v93, v89, type metadata accessor for SoundProfileRecord);
    v89 += v90;
    v5 += v90;
    if (__CFADD__(v91++, 1))
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
}

void sub_1001C6F88(void **a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v5 = v4;
  v161 = a1;
  v8 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v8 - 8);
  v10 = &v157 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v176 = &v157 - v12;
  __chkstk_darwin(v13);
  v15 = &v157 - v14;
  __chkstk_darwin(v16);
  v18 = &v157 - v17;
  v183 = type metadata accessor for Date();
  __chkstk_darwin(v183);
  __chkstk_darwin(v19);
  v178 = &v157 - v20;
  __chkstk_darwin(v21);
  v182 = &v157 - v24;
  v25 = a3[1];
  v164 = a3;
  if (v25 >= 1)
  {
    v168 = v10;
    v159 = a4;
    v26 = 0;
    v177 = (v22 + 32);
    v170 = (v22 + 48);
    v172 = (v22 + 8);
    v27 = _swiftEmptyArrayStorage;
    v169 = v15;
    v174 = v18;
    v175 = v23;
    v28 = (v22 + 56);
    v171 = v28;
    v29 = v15;
    while (1)
    {
      v30 = v26 + 1;
      v163 = v26;
      if (v26 + 1 >= v25)
      {
        v41 = v28;
      }

      else
      {
        v31 = v26;
        v160 = v27;
        a4 = *a3;
        v32 = *(*a3 + 8 * v30);
        v184 = *(*a3 + 8 * v26);
        v33 = v184;
        v185[0] = v32;
        v34 = v32;
        v10 = v33;
        LODWORD(v181) = sub_1001BC694(v185, &v184);
        if (v5)
        {

          return;
        }

        v35 = v31 + 2;
        v36 = 8 * v31;
        v37 = (a4 + 8 * v31 + 16);
        while (v25 != v35)
        {
          v38 = *v37;
          v184 = *(v37 - 1);
          v39 = v184;
          v185[0] = v38;
          a4 = v38;
          v40 = v39;
          v10 = sub_1001BC694(v185, &v184);

          ++v35;
          ++v37;
          if ((v181 ^ v10))
          {
            v25 = v35 - 1;
            break;
          }
        }

        v5 = 0;
        v27 = v160;
        v29 = v169;
        v41 = v171;
        if (v181)
        {
          v42 = v163;
          if (v25 < v163)
          {
            goto LABEL_145;
          }

          if (v163 < v25)
          {
            v43 = 8 * v25 - 8;
            v44 = v25;
            do
            {
              if (v42 != --v44)
              {
                v46 = *v164;
                if (!*v164)
                {
                  goto LABEL_149;
                }

                v45 = *(v46 + v36);
                *(v46 + v36) = *(v46 + v43);
                *(v46 + v43) = v45;
              }

              ++v42;
              v43 -= 8;
              v36 += 8;
            }

            while (v42 < v44);
          }
        }

        v30 = v25;
        a3 = v164;
      }

      v47 = a3[1];
      if (v30 < v47)
      {
        if (__OFSUB__(v30, v163))
        {
          goto LABEL_141;
        }

        if (v30 - v163 < v159)
        {
          v48 = v163 + v159;
          if (__OFADD__(v163, v159))
          {
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
            return;
          }

          if (v48 >= v47)
          {
            v48 = a3[1];
          }

          if (v48 < v163)
          {
            goto LABEL_144;
          }

          if (v30 != v48)
          {
            v160 = v27;
            v158 = v5;
            v173 = *a3;
            v49 = v173 + 8 * v30 - 8;
            v50 = v163 - v30;
            v162 = v48;
            do
            {
              v166 = v49;
              v167 = v30;
              v51 = v50;
              v52 = *(v173 + 8 * v30);
              v165 = v51;
              v53 = v51;
              while (1)
              {
                v179 = v53;
                v54 = *v49;
                v55 = v52;
                v56 = v54;
                v57 = [v55 modificationDate];
                v181 = v55;
                if (v57)
                {
                  v58 = v178;
                  v59 = v57;
                  static Date._unconditionallyBridgeFromObjectiveC(_:)();

                  v60 = *v177;
                  v61 = v174;
                  v62 = v183;
                  (*v177)(v174, v58, v183);
                  v63 = *v41;
                  (*v41)(v61, 0, 1, v62);
                  v60(v182, v61, v62);
                }

                else
                {
                  v63 = *v41;
                  v64 = v174;
                  (*v41)(v174, 1, 1, v183);
                  v65 = [v55 creationDate];
                  if (v65)
                  {
                    v66 = v178;
                    v67 = v65;
                    static Date._unconditionallyBridgeFromObjectiveC(_:)();

                    v68 = *v177;
                    v69 = v169;
                    v70 = v66;
                    v71 = v183;
                    (*v177)(v169, v70, v183);
                    v63(v69, 0, 1, v71);
                    v68(v182, v69, v71);
                    v72 = (*v170)(v64, 1, v183);
                  }

                  else
                  {
                    v73 = v169;
                    v74 = v183;
                    v63(v169, 1, 1, v183);
                    static Date.now.getter();
                    v75 = *v170;
                    if ((*v170)(v73, 1, v74) != 1)
                    {
                      sub_1000EEE6C(v73, &qword_1002F7EF0, &unk_100226C90);
                    }

                    v64 = v174;
                    v72 = v75(v174, 1, v183);
                  }

                  if (v72 != 1)
                  {
                    sub_1000EEE6C(v64, &qword_1002F7EF0, &unk_100226C90);
                  }

                  v41 = v171;
                }

                v76 = [v56 modificationDate];
                v180 = v56;
                if (v76)
                {
                  v77 = v41;
                  v78 = v178;
                  v79 = v76;
                  static Date._unconditionallyBridgeFromObjectiveC(_:)();

                  v80 = v176;
                  v81 = *v177;
                  v82 = v183;
                  (*v177)(v176, v78, v183);
                  v83 = v77;
                  v63(v80, 0, 1, v82);
                  v84 = v175;
                  v81(v175, v80, v82);
                }

                else
                {
                  v63(v176, 1, 1, v183);
                  v85 = [v56 creationDate];
                  v86 = v41;
                  v87 = v170;
                  if (v85)
                  {
                    v88 = v178;
                    v89 = v85;
                    static Date._unconditionallyBridgeFromObjectiveC(_:)();

                    v90 = *v177;
                    v91 = v168;
                    v92 = v88;
                    v93 = v183;
                    (*v177)(v168, v92, v183);
                    v63(v91, 0, 1, v93);
                    v90(v175, v91, v93);
                    v83 = v171;
                    v94 = (*v87)(v176, 1, v183);
                  }

                  else
                  {
                    v95 = v168;
                    v96 = v183;
                    v83 = v86;
                    v63(v168, 1, 1, v183);
                    static Date.now.getter();
                    v97 = *v87;
                    if ((*v87)(v95, 1, v96) != 1)
                    {
                      sub_1000EEE6C(v95, &qword_1002F7EF0, &unk_100226C90);
                    }

                    v94 = v97(v176, 1, v183);
                  }

                  v84 = v175;
                  if (v94 != 1)
                  {
                    sub_1000EEE6C(v176, &qword_1002F7EF0, &unk_100226C90);
                  }
                }

                v98 = v182;
                v10 = static Date.> infix(_:_:)();
                a4 = v172;
                v99 = *v172;
                v100 = v183;
                (*v172)(v84, v183);
                v99(v98, v100);

                if ((v10 & 1) == 0)
                {
                  break;
                }

                v101 = v179;
                if (!v173)
                {
                  goto LABEL_146;
                }

                v41 = v83;
                v102 = *v49;
                v52 = *(v49 + 8);
                *v49 = v52;
                *(v49 + 8) = v102;
                v49 -= 8;
                v103 = __CFADD__(v101, 1);
                v53 = v101 + 1;
                if (v103)
                {
                  goto LABEL_31;
                }
              }

              v41 = v83;
LABEL_31:
              v30 = v167 + 1;
              v49 = v166 + 8;
              v50 = v165 - 1;
            }

            while (v167 + 1 != v162);
            v30 = v162;
            v5 = v158;
            a3 = v164;
            v27 = v160;
            v29 = v169;
          }
        }
      }

      if (v30 < v163)
      {
        goto LABEL_140;
      }

      v104 = v29;
      v105 = v27;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v27 = v105;
      }

      else
      {
        v27 = sub_1001C9E00(0, *(v105 + 2) + 1, 1, v105);
      }

      v10 = *(v27 + 2);
      v106 = *(v27 + 3);
      a4 = v10 + 1;
      if (v10 >= v106 >> 1)
      {
        v27 = sub_1001C9E00((v106 > 1), v10 + 1, 1, v27);
      }

      *(v27 + 2) = a4;
      v107 = &v27[16 * v10];
      *(v107 + 4) = v163;
      *(v107 + 5) = v30;
      v108 = *v161;
      if (!*v161)
      {
        goto LABEL_150;
      }

      v109 = v30;
      if (v10)
      {
        while (1)
        {
          v110 = a4 - 1;
          if (a4 >= 4)
          {
            break;
          }

          if (a4 == 3)
          {
            v111 = *(v27 + 4);
            v112 = *(v27 + 5);
            v121 = __OFSUB__(v112, v111);
            v113 = v112 - v111;
            v114 = v121;
LABEL_78:
            if (v114)
            {
              goto LABEL_129;
            }

            v127 = &v27[16 * a4];
            v129 = *v127;
            v128 = *(v127 + 1);
            v130 = __OFSUB__(v128, v129);
            v131 = v128 - v129;
            v132 = v130;
            if (v130)
            {
              goto LABEL_132;
            }

            v133 = &v27[16 * v110 + 32];
            v135 = *v133;
            v134 = *(v133 + 1);
            v121 = __OFSUB__(v134, v135);
            v136 = v134 - v135;
            if (v121)
            {
              goto LABEL_135;
            }

            if (__OFADD__(v131, v136))
            {
              goto LABEL_136;
            }

            if (v131 + v136 >= v113)
            {
              if (v113 < v136)
              {
                v110 = a4 - 2;
              }

              goto LABEL_99;
            }

            goto LABEL_92;
          }

          v137 = &v27[16 * a4];
          v139 = *v137;
          v138 = *(v137 + 1);
          v121 = __OFSUB__(v138, v139);
          v131 = v138 - v139;
          v132 = v121;
LABEL_92:
          if (v132)
          {
            goto LABEL_131;
          }

          v140 = &v27[16 * v110];
          v142 = *(v140 + 4);
          v141 = *(v140 + 5);
          v121 = __OFSUB__(v141, v142);
          v143 = v141 - v142;
          if (v121)
          {
            goto LABEL_134;
          }

          if (v143 < v131)
          {
            goto LABEL_3;
          }

LABEL_99:
          v10 = v110 - 1;
          if (v110 - 1 >= a4)
          {
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
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
            v152 = sub_1001C9D08(v10);
            goto LABEL_114;
          }

          if (!*a3)
          {
            goto LABEL_147;
          }

          v148 = v27;
          a4 = *&v27[16 * v10 + 32];
          v149 = *&v27[16 * v110 + 40];
          sub_1001C8F6C((*a3 + 8 * a4), (*a3 + 8 * *&v27[16 * v110 + 32]), (*a3 + 8 * v149), v108);
          if (v5)
          {
            goto LABEL_122;
          }

          if (v149 < a4)
          {
            goto LABEL_125;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v150 = v148;
          }

          else
          {
            v150 = sub_1001C9D08(v148);
          }

          v104 = v169;
          if (v10 >= *(v150 + 2))
          {
            goto LABEL_126;
          }

          v151 = &v150[16 * v10];
          *(v151 + 4) = a4;
          *(v151 + 5) = v149;
          v186 = v150;
          v10 = &v186;
          sub_1001C9C7C(v110);
          v27 = v186;
          a4 = *(v186 + 2);
          if (a4 <= 1)
          {
            goto LABEL_3;
          }
        }

        v115 = &v27[16 * a4 + 32];
        v116 = *(v115 - 64);
        v117 = *(v115 - 56);
        v121 = __OFSUB__(v117, v116);
        v118 = v117 - v116;
        if (v121)
        {
          goto LABEL_127;
        }

        v120 = *(v115 - 48);
        v119 = *(v115 - 40);
        v121 = __OFSUB__(v119, v120);
        v113 = v119 - v120;
        v114 = v121;
        if (v121)
        {
          goto LABEL_128;
        }

        v122 = &v27[16 * a4];
        v124 = *v122;
        v123 = *(v122 + 1);
        v121 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v121)
        {
          goto LABEL_130;
        }

        v121 = __OFADD__(v113, v125);
        v126 = v113 + v125;
        if (v121)
        {
          goto LABEL_133;
        }

        if (v126 >= v118)
        {
          v144 = &v27[16 * v110 + 32];
          v146 = *v144;
          v145 = *(v144 + 1);
          v121 = __OFSUB__(v145, v146);
          v147 = v145 - v146;
          if (v121)
          {
            goto LABEL_139;
          }

          if (v113 < v147)
          {
            v110 = a4 - 2;
          }

          goto LABEL_99;
        }

        goto LABEL_78;
      }

LABEL_3:
      v25 = a3[1];
      v26 = v109;
      v28 = v171;
      v29 = v104;
      if (v109 >= v25)
      {
        goto LABEL_111;
      }
    }
  }

  v27 = _swiftEmptyArrayStorage;
LABEL_111:
  a4 = *v161;
  if (!*v161)
  {
    goto LABEL_151;
  }

  v10 = v27;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_142;
  }

  v152 = v10;
LABEL_114:
  v186 = v152;
  v10 = *(v152 + 2);
  if (v10 >= 2)
  {
    do
    {
      v153 = *a3;
      if (!*a3)
      {
        goto LABEL_148;
      }

      a3 = *&v152[16 * v10];
      v154 = v152;
      v155 = *&v152[16 * v10 + 24];
      sub_1001C8F6C((v153 + 8 * a3), (v153 + 8 * *&v152[16 * v10 + 16]), (v153 + 8 * v155), a4);
      if (v5)
      {
        break;
      }

      if (v155 < a3)
      {
        goto LABEL_137;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v154 = sub_1001C9D08(v154);
      }

      if (v10 - 2 >= *(v154 + 2))
      {
        goto LABEL_138;
      }

      v156 = &v154[16 * v10];
      *v156 = a3;
      *(v156 + 1) = v155;
      v186 = v154;
      sub_1001C9C7C(v10 - 1);
      v152 = v186;
      v10 = *(v186 + 2);
      a3 = v164;
    }

    while (v10 > 1);
  }

LABEL_122:
}

void sub_1001C7CB8(uint64_t **a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v144 = a1;
  v8 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v8 - 8);
  v161 = &v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v158 = &v140 - v11;
  __chkstk_darwin(v12);
  v151 = &v140 - v13;
  __chkstk_darwin(v14);
  v149 = &v140 - v15;
  v16 = type metadata accessor for Date();
  __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  v165 = &v140 - v18;
  __chkstk_darwin(v19);
  v148 = &v140 - v20;
  __chkstk_darwin(v21);
  v163 = &v140 - v22;
  __chkstk_darwin(v23);
  v152 = a3;
  v153 = &v140 - v26;
  if (*(a3 + 8) < 1)
  {
    v29 = _swiftEmptyArrayStorage;
LABEL_106:
    a3 = *v144;
    if (!*v144)
    {
      goto LABEL_147;
    }

    a4 = v29;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_141;
    }

    v135 = a4;
LABEL_109:
    v169 = v135;
    a4 = *(v135 + 2);
    if (a4 >= 2)
    {
      while (*v152)
      {
        v136 = *&v135[16 * a4];
        v137 = v135;
        v138 = *&v135[16 * a4 + 24];
        sub_1001C9308((*v152 + 8 * v136), (*v152 + 8 * *&v135[16 * a4 + 16]), (*v152 + 8 * v138), a3);
        if (v5)
        {
          goto LABEL_117;
        }

        if (v138 < v136)
        {
          goto LABEL_134;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v137 = sub_1001C9D08(v137);
        }

        if (a4 - 2 >= *(v137 + 2))
        {
          goto LABEL_135;
        }

        v139 = &v137[16 * a4];
        *v139 = v136;
        *(v139 + 1) = v138;
        v169 = v137;
        sub_1001C9C7C(a4 - 1);
        v135 = v169;
        a4 = *(v169 + 2);
        if (a4 <= 1)
        {
          goto LABEL_117;
        }
      }

      goto LABEL_145;
    }

LABEL_117:

    return;
  }

  v27 = *(a3 + 8);
  v141 = a4;
  v28 = 0;
  v162 = (v24 + 32);
  v166 = (v24 + 56);
  v155 = (v24 + 48);
  v29 = _swiftEmptyArrayStorage;
  v160 = (v24 + 8);
  v156 = v16;
  v157 = v25;
  while (1)
  {
    v30 = v28;
    if (v28 + 1 >= v27)
    {
      v43 = v28 + 1;
    }

    else
    {
      v154 = v27;
      v143 = v29;
      a4 = *v152;
      v31 = *(*v152 + 8 * (v28 + 1));
      v167 = *(*v152 + 8 * v28);
      v32 = v167;
      v168 = v31;
      v33 = v31;
      a3 = v32;
      LODWORD(v159) = sub_1001C00D0(&v168, &v167);
      if (v5)
      {

        return;
      }

      v34 = v28 + 2;
      v142 = v28;
      v147 = 8 * v28;
      v35 = (a4 + 8 * v28 + 16);
      v150 = 0;
      while (1)
      {
        v43 = v154;
        if (v154 == v34)
        {
          break;
        }

        v44 = *(v35 - 1);
        v45 = *v35;
        v46 = v44;
        v164 = v45;
        v47 = [v45 creationDate];
        if (v47)
        {
          v48 = v47;
          v49 = v163;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v50 = *v162;
          v51 = v149;
          (*v162)(v149, v49, v16);
          v52 = *v166;
          (*v166)(v51, 0, 1, v16);
          (v50)(v153, v51, v16);
        }

        else
        {
          v52 = *v166;
          v53 = v149;
          (*v166)(v149, 1, 1, v16);
          static Date.now.getter();
          if ((*v155)(v53, 1, v16) != 1)
          {
            sub_1000EEE6C(v53, &qword_1002F7EF0, &unk_100226C90);
          }
        }

        v54 = [v46 creationDate];
        if (v54)
        {
          v36 = v163;
          v37 = v54;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v38 = *v162;
          v39 = v151;
          (*v162)(v151, v36, v16);
          v52(v39, 0, 1, v16);
          v40 = v148;
          (v38)(v148, v39, v16);
        }

        else
        {
          v55 = v151;
          v52(v151, 1, 1, v16);
          v40 = v148;
          static Date.now.getter();
          if ((*v155)(v55, 1, v16) != 1)
          {
            sub_1000EEE6C(v151, &qword_1002F7EF0, &unk_100226C90);
          }
        }

        v41 = v153;
        a4 = static Date.> infix(_:_:)();
        a3 = v160;
        v42 = *v160;
        (*v160)(v40, v16);
        v42(v41, v16);

        ++v34;
        ++v35;
        v5 = v150;
        if ((v159 ^ a4))
        {
          v43 = v34 - 1;
          break;
        }
      }

      v29 = v143;
      v30 = v142;
      v56 = v147;
      if (v159)
      {
        if (v43 < v142)
        {
          goto LABEL_140;
        }

        if (v142 < v43)
        {
          v57 = 8 * v43 - 8;
          v58 = v43;
          v59 = v142;
          do
          {
            if (v59 != --v58)
            {
              v60 = *v152;
              if (!*v152)
              {
                goto LABEL_144;
              }

              v61 = *(v60 + v56);
              *(v60 + v56) = *(v60 + v57);
              *(v60 + v57) = v61;
            }

            ++v59;
            v57 -= 8;
            v56 += 8;
          }

          while (v59 < v58);
        }
      }
    }

    v62 = v152[1];
    if (v43 < v62)
    {
      if (__OFSUB__(v43, v30))
      {
        goto LABEL_137;
      }

      if (v43 - v30 < v141)
      {
        if (__OFADD__(v30, v141))
        {
          goto LABEL_138;
        }

        if (v30 + v141 < v62)
        {
          v62 = v30 + v141;
        }

        if (v62 < v30)
        {
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          v135 = sub_1001C9D08(a4);
          goto LABEL_109;
        }

        if (v43 != v62)
        {
          break;
        }
      }
    }

    v28 = v43;
    if (v43 < v30)
    {
      goto LABEL_136;
    }

LABEL_36:
    v63 = v29;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v29 = v63;
    }

    else
    {
      v29 = sub_1001C9E00(0, *(v63 + 2) + 1, 1, v63);
    }

    a3 = *(v29 + 2);
    v64 = *(v29 + 3);
    v65 = a3 + 1;
    if (a3 >= v64 >> 1)
    {
      v29 = sub_1001C9E00((v64 > 1), a3 + 1, 1, v29);
    }

    *(v29 + 2) = v65;
    v66 = &v29[16 * a3];
    *(v66 + 4) = v30;
    *(v66 + 5) = v28;
    v67 = *v144;
    if (!*v144)
    {
      goto LABEL_146;
    }

    if (a3)
    {
      while (1)
      {
        a3 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v68 = *(v29 + 4);
          v69 = *(v29 + 5);
          v78 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          v71 = v78;
LABEL_55:
          if (v71)
          {
            goto LABEL_125;
          }

          v84 = &v29[16 * v65];
          v86 = *v84;
          v85 = *(v84 + 1);
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_128;
          }

          v90 = &v29[16 * a3 + 32];
          v92 = *v90;
          v91 = *(v90 + 1);
          v78 = __OFSUB__(v91, v92);
          v93 = v91 - v92;
          if (v78)
          {
            goto LABEL_131;
          }

          if (__OFADD__(v88, v93))
          {
            goto LABEL_132;
          }

          if (v88 + v93 >= v70)
          {
            if (v70 < v93)
            {
              a3 = v65 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v94 = &v29[16 * v65];
        v96 = *v94;
        v95 = *(v94 + 1);
        v78 = __OFSUB__(v95, v96);
        v88 = v95 - v96;
        v89 = v78;
LABEL_69:
        if (v89)
        {
          goto LABEL_127;
        }

        v97 = &v29[16 * a3];
        v99 = *(v97 + 4);
        v98 = *(v97 + 5);
        v78 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v78)
        {
          goto LABEL_130;
        }

        if (v100 < v88)
        {
          goto LABEL_3;
        }

LABEL_76:
        a4 = a3 - 1;
        if (a3 - 1 >= v65)
        {
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
LABEL_127:
          __break(1u);
LABEL_128:
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
          goto LABEL_139;
        }

        if (!*v152)
        {
          goto LABEL_143;
        }

        v105 = v29;
        v106 = *&v29[16 * a4 + 32];
        v107 = *&v29[16 * a3 + 40];
        sub_1001C9308((*v152 + 8 * v106), (*v152 + 8 * *&v29[16 * a3 + 32]), (*v152 + 8 * v107), v67);
        if (v5)
        {
          goto LABEL_117;
        }

        if (v107 < v106)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_1001C9D08(v105);
        }

        if (a4 >= *(v105 + 2))
        {
          goto LABEL_122;
        }

        v108 = &v105[16 * a4];
        *(v108 + 4) = v106;
        *(v108 + 5) = v107;
        v169 = v105;
        a4 = &v169;
        sub_1001C9C7C(a3);
        v29 = v169;
        v65 = *(v169 + 2);
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v72 = &v29[16 * v65 + 32];
      v73 = *(v72 - 64);
      v74 = *(v72 - 56);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_123;
      }

      v77 = *(v72 - 48);
      v76 = *(v72 - 40);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_124;
      }

      v79 = &v29[16 * v65];
      v81 = *v79;
      v80 = *(v79 + 1);
      v78 = __OFSUB__(v80, v81);
      v82 = v80 - v81;
      if (v78)
      {
        goto LABEL_126;
      }

      v78 = __OFADD__(v70, v82);
      v83 = v70 + v82;
      if (v78)
      {
        goto LABEL_129;
      }

      if (v83 >= v75)
      {
        v101 = &v29[16 * a3 + 32];
        v103 = *v101;
        v102 = *(v101 + 1);
        v78 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v78)
        {
          goto LABEL_133;
        }

        if (v70 < v104)
        {
          a3 = v65 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v27 = v152[1];
    if (v28 >= v27)
    {
      goto LABEL_106;
    }
  }

  v145 = v62;
  v143 = v29;
  v150 = v5;
  v159 = *v152;
  v109 = v159 + 8 * v43 - 8;
  v142 = v30;
  v110 = v30 - v43;
LABEL_87:
  v154 = v43;
  v111 = *(v159 + 8 * v43);
  v146 = v110;
  v147 = v109;
  while (1)
  {
    v112 = *v109;
    v113 = v111;
    v114 = v112;
    v164 = v113;
    v115 = [v113 creationDate];
    if (v115)
    {
      v116 = v163;
      v117 = v115;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v118 = *v162;
      v119 = v158;
      (*v162)(v158, v116, v16);
      v120 = *v166;
      (*v166)(v119, 0, 1, v16);
      (v118)(v165, v119, v16);
    }

    else
    {
      v120 = *v166;
      v121 = v158;
      (*v166)(v158, 1, 1, v16);
      static Date.now.getter();
      if ((*v155)(v121, 1, v16) != 1)
      {
        sub_1000EEE6C(v121, &qword_1002F7EF0, &unk_100226C90);
      }
    }

    v122 = [v114 creationDate];
    if (v122)
    {
      v123 = v163;
      v124 = v122;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v125 = v161;
      v126 = *v162;
      v127 = v123;
      v128 = v156;
      (*v162)(v161, v127, v156);
      v120(v125, 0, 1, v128);
      v129 = v157;
      v126();
      v16 = v128;
    }

    else
    {
      v130 = v161;
      v16 = v156;
      v120(v161, 1, 1, v156);
      v129 = v157;
      static Date.now.getter();
      if ((*v155)(v130, 1, v16) != 1)
      {
        sub_1000EEE6C(v161, &qword_1002F7EF0, &unk_100226C90);
      }
    }

    v131 = v165;
    a4 = static Date.> infix(_:_:)();
    a3 = v160;
    v132 = *v160;
    (*v160)(v129, v16);
    v132(v131, v16);

    if ((a4 & 1) == 0)
    {
LABEL_86:
      v43 = v154 + 1;
      v109 = v147 + 8;
      v110 = v146 - 1;
      if (v154 + 1 != v145)
      {
        goto LABEL_87;
      }

      v5 = v150;
      v29 = v143;
      v30 = v142;
      v28 = v145;
      if (v145 < v142)
      {
        goto LABEL_136;
      }

      goto LABEL_36;
    }

    if (!v159)
    {
      break;
    }

    v133 = *v109;
    v111 = *(v109 + 8);
    *v109 = v111;
    *(v109 + 8) = v133;
    v109 -= 8;
    if (__CFADD__(v110++, 1))
    {
      goto LABEL_86;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}

void sub_1001C8A3C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v44 = type metadata accessor for SoundProfileRecord(0);
  __chkstk_darwin(v44);
  v43 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v42 = &v34 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_61;
  }

  v13 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_62;
  }

  v14 = (a2 - a1) / v12;
  v47 = a1;
  v46 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v22 = a4 + v16;
    if (v16 >= 1)
    {
      v23 = -v12;
      v24 = a4 + v16;
      v38 = a1;
      v39 = a4;
      v37 = -v12;
      do
      {
        v35 = v22;
        v25 = a2;
        v26 = a2 + v23;
        v40 = v25;
        v41 = v26;
        while (1)
        {
          if (v25 <= a1)
          {
            v47 = v25;
            v45 = v35;
            goto LABEL_59;
          }

          v36 = v22;
          v28 = a3 + v23;
          v29 = v24 + v23;
          v30 = v42;
          sub_1001CC14C(v29, v42, type metadata accessor for SoundProfileRecord);
          v31 = v43;
          sub_1001CC14C(v26, v43, type metadata accessor for SoundProfileRecord);
          v32 = static Date.> infix(_:_:)();
          sub_1001CC1B4(v31, type metadata accessor for SoundProfileRecord);
          sub_1001CC1B4(v30, type metadata accessor for SoundProfileRecord);
          if (v32)
          {
            break;
          }

          v22 = v29;
          if (a3 < v24 || v28 >= v24)
          {
            a3 = v28;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v38;
          }

          else
          {
            v33 = a3 == v24;
            a3 = v28;
            a1 = v38;
            if (!v33)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v24 = v29;
          v25 = v40;
          v27 = v29 > v39;
          v26 = v41;
          v23 = v37;
          if (!v27)
          {
            a2 = v40;
            goto LABEL_58;
          }
        }

        if (a3 < v40 || v28 >= v40)
        {
          a3 = v28;
          a2 = v41;
          swift_arrayInitWithTakeFrontToBack();
          v23 = v37;
          a1 = v38;
          v22 = v36;
        }

        else
        {
          v33 = a3 == v40;
          a3 = v28;
          a2 = v41;
          v23 = v37;
          a1 = v38;
          v22 = v36;
          if (!v33)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v24 > v39);
    }

LABEL_58:
    v47 = a2;
    v45 = v22;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = a4 + v15;
    v45 = a4 + v15;
    if (v15 >= 1 && a2 < a3)
    {
      do
      {
        v18 = a3;
        v19 = v42;
        sub_1001CC14C(a2, v42, type metadata accessor for SoundProfileRecord);
        v20 = v43;
        sub_1001CC14C(a4, v43, type metadata accessor for SoundProfileRecord);
        v21 = static Date.> infix(_:_:)();
        sub_1001CC1B4(v20, type metadata accessor for SoundProfileRecord);
        sub_1001CC1B4(v19, type metadata accessor for SoundProfileRecord);
        if (v21)
        {
          if (a1 < a2 || a1 >= a2 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v12;
            a3 = v18;
          }

          else
          {
            a3 = v18;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v12;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v18;
          }

          else
          {
            a3 = v18;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v46 = a4 + v12;
          a4 += v12;
        }

        a1 += v12;
        v47 = a1;
      }

      while (a4 < v41 && a2 < a3);
    }
  }

LABEL_59:
  sub_1001C9D1C(&v47, &v46, &v45);
}

uint64_t sub_1001C8F6C(void **__dst, void **__src, void **a3, unint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 3;
  v12 = a3 - __src;
  v13 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    if (a4 != __dst || &__dst[v11] <= a4)
    {
      v15 = a4;
      memmove(a4, __dst, 8 * v11);
      a4 = v15;
      v5 = v4;
    }

    v16 = (a4 + 8 * v11);
    if (v9 < 8)
    {
LABEL_10:
      v7 = v8;
      goto LABEL_50;
    }

    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_10;
      }

      v18 = v16;
      v19 = v7;
      v53 = *v7;
      v20 = v5;
      v21 = a4;
      v52 = *a4;
      v22 = v52;
      v23 = v53;
      v24 = v22;
      v25 = sub_1001BC694(&v53, &v52);
      if (v20)
      {

        v42 = v21;
        v44 = v18 - v21 + 7;
        if ((v18 - v21) >= 0)
        {
          v44 = v18 - v21;
        }

        v45 = v44 >> 3;
        if (v8 < v21 || v8 >= (v21 + (v44 & 0xFFFFFFFFFFFFFFF8)))
        {
          memmove(v8, v21, 8 * v45);
          return 1;
        }

        if (v8 == v21)
        {
          return 1;
        }

        v43 = 8 * v45;
        v41 = v8;
        goto LABEL_56;
      }

      v26 = v25;

      if (v26)
      {
        break;
      }

      v17 = v21;
      a4 = (v21 + 1);
      v7 = v19;
      if (v8 != v21)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v8;
      v16 = v18;
      v5 = 0;
      if (a4 >= v18)
      {
        goto LABEL_10;
      }
    }

    v17 = v19;
    v7 = v19 + 1;
    a4 = v21;
    if (v8 == v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v14] <= a4)
  {
    v27 = a4;
    memmove(a4, __src, 8 * v14);
    a4 = v27;
    v5 = v4;
  }

  v16 = (a4 + 8 * v14);
  if (v12 < 8 || v7 <= v8)
  {
LABEL_50:
    v46 = v16 - a4 + 7;
    if ((v16 - a4) >= 0)
    {
      v46 = v16 - a4;
    }

    if (v7 < a4 || v7 >= a4 + (v46 & 0xFFFFFFFFFFFFFFF8) || v7 != a4)
    {
      v43 = 8 * (v46 >> 3);
      v41 = v7;
      v42 = a4;
LABEL_56:
      memmove(v41, v42, v43);
    }

    return 1;
  }

  v28 = -a4;
  v51 = a4;
  v48 = -a4;
  v49 = v8;
LABEL_25:
  v50 = v7;
  v29 = v7 - 1;
  v30 = v16 + v28;
  --v6;
  v31 = v16;
  while (1)
  {
    v32 = *--v31;
    v53 = v32;
    v33 = v29;
    v52 = *v29;
    v34 = v52;
    v35 = v32;
    v36 = v34;
    v37 = sub_1001BC694(&v53, &v52);
    if (v5)
    {
      break;
    }

    v38 = v37;

    v39 = v6 + 1;
    if (v38)
    {
      if (v39 != v50)
      {
        *v6 = *v33;
      }

      a4 = v51;
      if (v16 <= v51 || (v7 = v33, v28 = v48, v33 <= v49))
      {
        v7 = v33;
        goto LABEL_50;
      }

      goto LABEL_25;
    }

    if (v39 != v16)
    {
      *v6 = *v31;
    }

    v30 -= 8;
    --v6;
    v16 = v31;
    v29 = v33;
    if (v31 <= v51)
    {
      v16 = v31;
      v7 = v50;
      a4 = v51;
      goto LABEL_50;
    }
  }

  if (v30 >= 0)
  {
    v40 = v30;
  }

  else
  {
    v40 = v30 + 7;
  }

  v41 = v50;
  v42 = v51;
  if (v50 < v51 || v50 >= v51 + (v40 & 0xFFFFFFFFFFFFFFF8) || v50 != v51)
  {
    v43 = 8 * (v40 >> 3);
    goto LABEL_56;
  }

  return 1;
}

uint64_t sub_1001C9308(void **a1, void **a2, void **a3, void **a4)
{
  v8 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v8 - 8);
  v97 = (&v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v95 = &v89 - v11;
  __chkstk_darwin(v12);
  v98 = &v89 - v13;
  __chkstk_darwin(v14);
  v96 = &v89 - v15;
  v16 = type metadata accessor for Date();
  __chkstk_darwin(v16);
  v94 = (&v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v102 = &v89 - v19;
  __chkstk_darwin(v20);
  v93 = (&v89 - v21);
  __chkstk_darwin(v22);
  v103 = &v89 - v23;
  __chkstk_darwin(v24);
  v101 = &v89 - v26;
  v27 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v27 = a2 - a1;
  }

  v28 = v27 >> 3;
  v29 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v29 = a3 - a2;
  }

  v30 = v29 >> 3;
  if (v28 < v29 >> 3)
  {
    if (a4 != a1 || &a1[v28] <= a4)
    {
      v31 = v25;
      memmove(a4, a1, 8 * v28);
      v25 = v31;
    }

    v92 = &a4[v28];
    if (a2 - a1 < 8)
    {
      a2 = a1;
    }

    else
    {
      v32 = a1;
      if (a2 < a3)
      {
        v97 = (v25 + 32);
        v102 = (v25 + 56);
        v94 = (v25 + 48);
        v95 = (v25 + 8);
        v33 = v92;
        while (1)
        {
          v100 = a2;
          v34 = *a2;
          v104 = a4;
          v35 = *a4;
          v36 = v34;
          v37 = v35;
          v99 = v36;
          v38 = [v36 creationDate];
          if (v38)
          {
            v39 = v38;
            v40 = v103;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v41 = v96;
            v42 = *v97;
            (*v97)(v96, v40, v16);
            v43 = *v102;
            (*v102)(v41, 0, 1, v16);
            v42(v101, v41, v16);
          }

          else
          {
            v43 = *v102;
            v44 = v96;
            (*v102)(v96, 1, 1, v16);
            static Date.now.getter();
            if ((*v94)(v44, 1, v16) != 1)
            {
              sub_1000EEE6C(v44, &qword_1002F7EF0, &unk_100226C90);
            }
          }

          v45 = [v37 creationDate];
          if (v45)
          {
            v46 = v32;
            v47 = v103;
            v48 = v45;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v49 = v98;
            v50 = *v97;
            v51 = v47;
            v32 = v46;
            v33 = v92;
            (*v97)(v98, v51, v16);
            v43(v49, 0, 1, v16);
            v52 = v93;
            v50(v93, v49, v16);
          }

          else
          {
            v53 = v98;
            v43(v98, 1, 1, v16);
            v52 = v93;
            static Date.now.getter();
            if ((*v94)(v53, 1, v16) != 1)
            {
              sub_1000EEE6C(v98, &qword_1002F7EF0, &unk_100226C90);
            }
          }

          v54 = v101;
          v55 = static Date.> infix(_:_:)();
          v56 = v52;
          v57 = *v95;
          (*v95)(v56, v16);
          v57(v54, v16);

          if ((v55 & 1) == 0)
          {
            break;
          }

          v58 = v100;
          a2 = v100 + 1;
          a4 = v104;
          if (v32 != v100)
          {
            goto LABEL_24;
          }

LABEL_25:
          ++v32;
          if (a4 >= v33 || a2 >= a3)
          {
            a2 = v32;
            goto LABEL_56;
          }
        }

        v58 = v104;
        a4 = v104 + 1;
        a2 = v100;
        if (v32 == v104)
        {
          goto LABEL_25;
        }

LABEL_24:
        *v32 = *v58;
        goto LABEL_25;
      }

      a2 = a1;
    }

    v33 = v92;
    goto LABEL_56;
  }

  v90 = a1;
  if (a4 != a2 || &a2[v30] <= a4)
  {
    v59 = v25;
    memmove(a4, a2, 8 * v30);
    v25 = v59;
  }

  v33 = &a4[v30];
  if (a3 - a2 >= 8 && a2 > v90)
  {
    v96 = (v25 + 32);
    v101 = (v25 + 56);
    v91 = (v25 + 48);
    v92 = (v25 + 8);
    v104 = a4;
    do
    {
      v100 = a2;
      v60 = a2 - 1;
      --a3;
      v61 = v33;
      v93 = v60;
      while (1)
      {
        v62 = *--v61;
        v63 = *v60;
        v64 = v62;
        v65 = v63;
        v66 = [v64 creationDate];
        v99 = v64;
        if (v66)
        {
          v67 = v66;
          v68 = v103;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v69 = v95;
          v70 = *v96;
          (*v96)(v95, v68, v16);
          v71 = *v101;
          (*v101)(v69, 0, 1, v16);
          v70(v102, v69, v16);
        }

        else
        {
          v71 = *v101;
          v72 = v95;
          (*v101)(v95, 1, 1, v16);
          static Date.now.getter();
          if ((*v91)(v72, 1, v16) != 1)
          {
            sub_1000EEE6C(v72, &qword_1002F7EF0, &unk_100226C90);
          }
        }

        v98 = v65;
        v73 = [v65 creationDate];
        if (v73)
        {
          v74 = a3;
          v75 = v33;
          v76 = v103;
          v77 = v73;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v78 = v97;
          v79 = *v96;
          v80 = v76;
          v33 = v75;
          a3 = v74;
          (*v96)(v97, v80, v16);
          v71(v78, 0, 1, v16);
          v81 = v94;
          v79(v94, v78, v16);
        }

        else
        {
          v82 = v97;
          v71(v97, 1, 1, v16);
          v81 = v94;
          static Date.now.getter();
          if ((*v91)(v82, 1, v16) != 1)
          {
            sub_1000EEE6C(v97, &qword_1002F7EF0, &unk_100226C90);
          }
        }

        v83 = v102;
        v84 = static Date.> infix(_:_:)();
        v85 = *v92;
        (*v92)(v81, v16);
        v85(v83, v16);

        v86 = (a3 + 1);
        if (v84)
        {
          break;
        }

        a4 = v104;
        v60 = v93;
        if (v86 != v33)
        {
          *a3 = *v61;
        }

        --a3;
        v33 = v61;
        if (v61 <= a4)
        {
          v33 = v61;
          a2 = v100;
          goto LABEL_56;
        }
      }

      a4 = v104;
      v87 = v93;
      if (v86 != v100)
      {
        *a3 = *v93;
      }

      if (v33 <= a4)
      {
        break;
      }

      a2 = v87;
    }

    while (v87 > v90);
    a2 = v87;
  }

LABEL_56:
  if (a2 != a4 || a2 >= (a4 + ((v33 - a4 + (v33 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, a4, 8 * (v33 - a4));
  }

  return 1;
}

uint64_t sub_1001C9C7C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1001C9D08(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1001C9D1C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for SoundProfileRecord(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1001C9E00(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000EE870(&unk_1002F9D10, &unk_100229A20);
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

uint64_t sub_1001C9F04(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1001C5718();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1001CA040(v8);
  *v2 = v16;
  return v12;
}

unint64_t sub_1001CA040(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1001CA204(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

void (*sub_1001CA268(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1001CA2E8;
  }

  __break(1u);
  return result;
}

void *sub_1001CA2F0(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_1001C4D04(v3, 0);
  sub_1001CA384((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1001CA384(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000FA0E0(&qword_1002F9D08, &qword_1002F9D00, &qword_1002292D8, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_1000EE870(&qword_1002F9D00, &qword_1002292D8);
            v9 = sub_1001CA268(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000FA784(0, &qword_1002F85A0, CKRecord_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001CA5C4(uint64_t *a1, void *a2)
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

uint64_t sub_1001CA61C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  *(v5 + 16) = 0;
  *(v5 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 56) = [objc_allocWithZone(ACAccountStore) init];
  *(v5 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_networkUp) = 1;
  *(v5 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager) = 0;
  *(v5 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_retryTimer) = 0;
  v9 = (v5 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___cloudCoordinator);
  *v9 = 0;
  v9[1] = 0;
  *(v5 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_incomingPairedDevices) = &_swiftEmptySetSingleton;
  v10 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  v11 = qword_100300E28;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100226100;
  v13 = URL.absoluteString.getter();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_1000EE954();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "DeviceStore init with directory: %@", 35, 2, v12);

  *(v5 + 32) = a2;
  swift_unknownObjectWeakAssign();
  v16 = OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_directoryURL;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v5 + v16, a3, v17);
  *(v5 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_clientQueue) = a4;
  v19 = objc_opt_self();
  v20 = a4;
  v21 = [v19 defaultCenter];
  v25[4] = sub_1001CDDB0;
  v25[5] = v5;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 1107296256;
  v25[2] = sub_1001956D0;
  v25[3] = &unk_1002C1160;
  v22 = _Block_copy(v25);

  v23 = [v21 addObserverForName:@"com.apple.bluetooth.services.BTNetworkMonitor.networkChanged" object:0 queue:0 usingBlock:v22];
  _Block_release(v22);
  swift_unknownObjectRelease();

  (*(v18 + 8))(a3, v17);
  return v5;
}

unint64_t sub_1001CA940(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
LABEL_22:
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    v20 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  while (1)
  {
    if (v20 == v3)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *(v18 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v4 = *(a1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = [v4 bluetoothAddress];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = [a2 bluetoothAddress];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (v7 == v11 && v9 == v13)
    {
      break;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {
      return v3;
    }

    if (__OFADD__(v3++, 1))
    {
      goto LABEL_21;
    }
  }

  return v3;
}

unint64_t sub_1001CAADC(unint64_t *a1, void *a2)
{
  v5 = a2;
  v7 = *a1;
  result = sub_1001CA940(*a1, a2);
  if (v2)
  {
    return result;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = a1;
  v33 = result;
  v10 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v10 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v33;
      }
    }

    else if (v10 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v33;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_17;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_48;
    }

    v12 = *(v7 + 8 * v10 + 32);
LABEL_17:
    v4 = v12;
    v13 = [v12 bluetoothAddress];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v3 = v5;
    v17 = [v5 bluetoothAddress];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (v14 == v18 && v16 == v20)
    {
LABEL_8:

LABEL_9:
      v5 = v3;
      goto LABEL_10;
    }

    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
      goto LABEL_9;
    }

    v5 = v3;
    if (v33 != v10)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v33 & 0x8000000000000000) != 0)
        {
          goto LABEL_52;
        }

        v24 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v33 >= v24)
        {
          goto LABEL_53;
        }

        if (v10 >= v24)
        {
          goto LABEL_54;
        }

        v25 = *(v7 + 32 + 8 * v10);
        v22 = *(v7 + 32 + 8 * v33);
        v23 = v25;
      }

      v26 = v23;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
      {
        v7 = sub_1001CA204(v7);
        v27 = (v7 >> 62) & 1;
      }

      else
      {
        LODWORD(v27) = 0;
      }

      v28 = v7 & 0xFFFFFFFFFFFFFF8;
      v29 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v33 + 0x20);
      *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v33 + 0x20) = v26;

      if ((v7 & 0x8000000000000000) != 0 || v27)
      {
        v7 = sub_1001CA204(v7);
        v28 = v7 & 0xFFFFFFFFFFFFFF8;
        if ((v10 & 0x8000000000000000) != 0)
        {
LABEL_44:
          __break(1u);
          return v33;
        }
      }

      else if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_44;
      }

      if (v10 >= *(v28 + 16))
      {
        goto LABEL_51;
      }

      v30 = v28 + 8 * v10;
      v31 = *(v30 + 32);
      *(v30 + 32) = v22;

      *v32 = v7;
    }

    v11 = __OFADD__(v33++, 1);
    if (v11)
    {
      goto LABEL_50;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_1001CADEC@<X0>(uint64_t (*a1)(uint64_t, unint64_t)@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1001CAE78(*(v2 + 16), a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1001CAE78(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t))
{
  if ([objc_opt_self() isFirstUnlocked])
  {
    v4 = Data.init(contentsOf:options:)();
    if (v2)
    {

      return 0;
    }

    else
    {
      v7 = v4;
      v8 = v5;
      v9 = objc_autoreleasePoolPush();
      v11 = a2(v7, v8);
      objc_autoreleasePoolPop(v9);
      sub_1000EF870(v7, v8);
      return v11;
    }
  }

  else
  {
    v6 = static os_log_type_t.default.getter();
    if (qword_1002F7AF0 != -1)
    {
      v12 = v6;
      swift_once();
      v6 = v12;
    }

    os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, qword_100300E40, "record call failed because in device is in beforeFirstUnlock state", 66, 2, _swiftEmptyArrayStorage);
    return 0;
  }
}

uint64_t sub_1001CB1AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001CB260(uint64_t a1)
{
  v3 = *(type metadata accessor for SoundProfileRecord(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1 + v6;
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v1 + v8);

  return sub_1001BB9D8(a1, v1 + v4, v7, v10, v11, v12);
}

uint64_t sub_1001CB38C(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_1000FA784(255, a2, a3);
    result = swift_getWitnessTable(&protocol conformance descriptor for NSObject, v5);
    atomic_store(result, a1);
  }

  return result;
}

id sub_1001CB634(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

uint64_t sub_1001CB640(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1001CB674(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1001CB820(uint64_t a1)
{
  v3 = *(type metadata accessor for MagicPairingSettingsRecord(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1001B69D0(a1, v4);
}

uint64_t sub_1001CB994()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001CBA8C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v3 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a3(a1, v3 + v6, v7);
}

uint64_t sub_1001CBC10()
{
  sub_1001633D8(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001CBFB8()
{
  sub_1001633D8(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001CC14C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001CC1B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001CC214(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001CC27C(uint64_t *a1)
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

uint64_t sub_1001CC32C(unint64_t a1, unint64_t a2)
{
  v133 = type metadata accessor for DispatchWorkItemFlags();
  v118 = *(v133 - 8);
  __chkstk_darwin(v133);
  v132 = &v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for DispatchQoS();
  v117 = *(v131 - 8);
  __chkstk_darwin(v131);
  v130 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000EE870(&qword_1002F8000, &unk_1002262C0);
  __chkstk_darwin(v6 - 8);
  v127 = &v116 - v7;
  v135 = type metadata accessor for UUID();
  v8 = *(v135 - 8);
  __chkstk_darwin(v135);
  v129 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    goto LABEL_133;
  }

  while (1)
  {
    v11 = qword_100300E38;
    v124 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v12 = swift_allocObject();
    v126 = xmmword_100226100;
    *(v12 + 16) = xmmword_100226100;
    v13 = *(a1 + 16);
    *(v12 + 56) = &type metadata for Int;
    *(v12 + 64) = &protocol witness table for Int;
    *(v12 + 32) = v13;
    v125 = v11;
    os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "databaseUpdated recordsDeleted: %d.", v116);

    v119 = a2 >> 62;
    if (!v13)
    {
      break;
    }

    v14 = v13;
    v142 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
      v10 = v13;
      v115 = _CocoaArrayWrapper.endIndex.getter();
      v14 = v13;
      v144 = v115;
    }

    else
    {
      v144 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = 0;
    v138 = (a1 + 32);
    v143 = a2 & 0xC000000000000001;
    v136 = 0x8000000100267AF0;
    v122 = 0x8000000100267220;
    v116 = 0x8000000100267960;
    v123 = (v8 + 48);
    v121 = (v8 + 32);
    v128 = "le error %@";
    v120 = (v8 + 8);
    v134 = _swiftEmptyArrayStorage;
    v137 = v14;
    while (1)
    {
      if (v15 == v14)
      {
        goto LABEL_128;
      }

      v140 = v15;
      v18 = &v138[3 * v15];
      v19 = v18[1];
      v8 = v18[2];
      v145 = *v18;
      v141 = v8;

      if (!v144)
      {
LABEL_28:
        v35 = [v145 zoneID];
        v36 = [v35 zoneName];

        a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;

        v39 = a1 == 0xD000000000000012 && v136 == v38;
        if (v39 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v151 = &type metadata for AudioAccessoryFeatures;
          v152 = sub_1000F1874();
          v40 = isFeatureEnabled(_:)();
          sub_1000EF824(aBlock);
          if (v40)
          {
LABEL_43:
            v42 = [v145 recordName];
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            v43 = v127;
            UUID.init(uuidString:)();

            v44 = v135;
            if ((*v123)(v43, 1, v135) == 1)
            {
              sub_1000EEE6C(v43, &qword_1002F8000, &unk_1002262C0);
LABEL_76:
              v8 = v145;
              a1 = v139;
              sub_1001A73C4(v145, v19, v141, 1);

              goto LABEL_7;
            }

            v45 = v129;
            (*v121)(v129, v43, v44);
            v46 = sub_1001BD42C(v45, v19, v141, &v147);
            if (!v148)
            {
              (*v120)(v45, v44, v46);
              sub_1000EEE6C(&v147, &qword_1002F9D98, &qword_100229A58);
              goto LABEL_76;
            }

            sub_1001CB640(&v147, aBlock);
            v47 = v151;
            v48 = v152;
            sub_1000EF78C(aBlock, v151);
            v49 = (*(v48 + 56))(v47, v48);
            v50 = [v49 encryptedValues];

            v51 = String._bridgeToObjectiveC()();
            v52 = [v50 objectForKeyedSubscript:v51];
            swift_unknownObjectRelease();

            if (v52)
            {
              v146 = v52;
              sub_1000EE870(&qword_1002F8610, &unk_1002262D0);
              v53 = swift_dynamicCast();
              a1 = v135;
              v54 = v129;
              if (v53)
              {
                v55 = *(&v147 + 1);
                if (v144)
                {
                  v56 = 0;
                  v8 = v147;
                  while (1)
                  {
                    if (v143)
                    {
                      v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    }

                    else
                    {
                      if (v56 >= *(v142 + 16))
                      {
                        goto LABEL_130;
                      }

                      v57 = *(a2 + 8 * v56 + 32);
                    }

                    v10 = v57;
                    v58 = v56 + 1;
                    if (__OFADD__(v56, 1))
                    {
                      goto LABEL_129;
                    }

                    v59 = [v57 encryptedValues];
                    swift_getObjectType();
                    CKRecordKeyValueSetting.subscript.getter();
                    swift_unknownObjectRelease();
                    if (*(&v147 + 1))
                    {
                      break;
                    }

LABEL_51:
                    ++v56;
                    a1 = v135;
                    if (v58 == v144)
                    {
                      goto LABEL_73;
                    }
                  }

                  if (v147 == __PAIR128__(v55, v8))
                  {

LABEL_60:
                    if (CKRecord.recordType.getter() == v19 && v61 == v141)
                    {

LABEL_91:

                      v68 = static os_log_type_t.debug.getter();
                      v69 = swift_allocObject();
                      *(v69 + 16) = v126;
                      sub_1001CB674(aBlock, &v147);
                      sub_1000EE870(&qword_1002F9DA0, &unk_100229A60);
                      v70 = String.init<A>(describing:)();
                      v72 = v71;
                      *(v69 + 56) = &type metadata for String;
                      *(v69 + 64) = sub_1000EE954();
                      *(v69 + 32) = v70;
                      *(v69 + 40) = v72;
                      v73 = v125;
                      os_log(_:dso:log:_:_:)(v68, &_mh_execute_header, v125, "Stale record about to be overwritten: %@", 40, 2, v69);

                      v74 = static os_log_type_t.default.getter();
                      v75 = swift_allocObject();
                      *(v75 + 16) = v126;
                      *(v75 + 56) = sub_1000FA784(0, &qword_1002F85A0, CKRecord_ptr);
                      *(v75 + 64) = sub_1001CB38C(&qword_1002F7BE0, &qword_1002F85A0, CKRecord_ptr);
                      *(v75 + 32) = v10;
                      v8 = v10;
                      os_log(_:dso:log:_:_:)(v74, &_mh_execute_header, v73, "Dont delete this record we have an update for it: %@", 52, 2, v75);

                      sub_1001CB674(aBlock, &v147);
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v134 = sub_1001CF63C(0, v134[2] + 1, 1, v134);
                      }

                      v77 = v134[2];
                      v76 = v134[3];
                      a1 = v77 + 1;
                      if (v77 >= v76 >> 1)
                      {
                        v134 = sub_1001CF63C((v76 > 1), v77 + 1, 1, v134);
                      }

                      (*v120)(v129, v135);
                      v78 = v134;
                      v134[2] = a1;
                      sub_1001CB640(&v147, &v78[5 * v77 + 4]);
                      sub_1000EF824(aBlock);
                      goto LABEL_7;
                    }

                    v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v62)
                    {
                      goto LABEL_91;
                    }
                  }

                  else
                  {
                    v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v60)
                    {
                      goto LABEL_60;
                    }
                  }

                  v54 = v129;
                  goto LABEL_51;
                }

LABEL_73:
              }

              (*v120)(v54, a1);
            }

            else
            {
              (*v120)(v129, v135);
            }

            sub_1000EF824(aBlock);
            goto LABEL_76;
          }

LABEL_6:

          v8 = static os_log_type_t.error.getter();
          a1 = swift_allocObject();
          *(a1 + 16) = v126;
          v10 = CKRecordID_ptr;
          *(a1 + 56) = sub_1000FA784(0, &unk_1002F8B50, CKRecordID_ptr);
          *(a1 + 64) = sub_1001CB38C(&qword_1002F9418, &unk_1002F8B50, CKRecordID_ptr);
          v16 = v145;
          *(a1 + 32) = v145;
          v17 = v16;
          os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v125, "Ignoring delete record from unknown zone: %@", 44, 2, a1);

          goto LABEL_7;
        }

        v41 = a1 == 0xD00000000000001ELL && v122 == v38;
        if (v41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          goto LABEL_43;
        }

        if (a1 == 0xD000000000000010 && v116 == v38)
        {
        }

        else
        {
          a1 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((a1 & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        v8 = 0;
        while (v144 != v8)
        {
          if (v143)
          {
            v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v8 >= *(v142 + 16))
            {
              goto LABEL_132;
            }

            v65 = *(a2 + 8 * v8 + 32);
          }

          a1 = v65;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_131;
          }

          v66 = CKRecord.recordType.getter();
          v10 = v67;
          if (v66 == v19 && v67 == v141)
          {

            goto LABEL_7;
          }

          v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

          ++v8;
          if (v64)
          {

            goto LABEL_7;
          }
        }

        goto LABEL_76;
      }

      v10 = 0;
LABEL_13:
      if (v143)
      {
        v21 = a2;
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v10 >= *(v142 + 16))
        {
          goto LABEL_127;
        }

        v21 = a2;
        v22 = *(a2 + 8 * v10 + 32);
      }

      a1 = v22;
      a2 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v23 = [v22 recordID];
      v24 = [v23 recordName];

      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v26;

      v27 = [v145 recordName];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v31 = v25 == v28 && v8 == v30;
      if (v31)
      {
      }

      else
      {
        v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v32 & 1) == 0)
        {

          goto LABEL_12;
        }
      }

      v33 = CKRecord.recordType.getter();
      v8 = v34;
      if (v33 == v19 && v34 == v141)
      {

        goto LABEL_36;
      }

      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v20 & 1) == 0)
      {
LABEL_12:
        ++v10;
        v31 = a2 == v144;
        a2 = v21;
        if (v31)
        {
          goto LABEL_28;
        }

        goto LABEL_13;
      }

LABEL_36:
      a2 = v21;
LABEL_7:
      v15 = v140 + 1;
      v14 = v137;
      if (v140 + 1 == v137)
      {
        goto LABEL_97;
      }
    }

    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
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
    swift_once();
  }

  v134 = _swiftEmptyArrayStorage;
LABEL_97:
  v79 = static os_log_type_t.default.getter();
  v80 = swift_allocObject();
  *(v80 + 16) = v126;
  if (v119)
  {
    v81 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v81 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v80 + 56) = &type metadata for Int;
  *(v80 + 64) = &protocol witness table for Int;
  *(v80 + 32) = v81;
  os_log(_:dso:log:_:_:)(v79, &_mh_execute_header, v125, "databaseUpdated recordsChanged: processed %d change records.", v116);

  aBlock[0] = sub_1001CA2F0(v82);
  sub_1001C5B54(aBlock, sub_1001C7CB8, sub_1001C618C);
  v83 = aBlock[0];
  if (aBlock[0] < 0 || (aBlock[0] & 0x4000000000000000) != 0)
  {
    v84 = _CocoaArrayWrapper.endIndex.getter();
    if (v84)
    {
      goto LABEL_102;
    }

LABEL_136:
  }

  v84 = *(aBlock[0] + 16);
  if (!v84)
  {
    goto LABEL_136;
  }

LABEL_102:
  if (v84 >= 1)
  {
    v85 = 0;
    v86 = 0x8000000100267AF0;
    v142 = OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_clientQueue;
    v145 = (v83 & 0xC000000000000001);
    v137 = 0x8000000100267220;
    v136 = 0x8000000100267960;
    v141 = &v150;
    v140 = (v118 + 8);
    v138 = (v117 + 8);
    v143 = 0x8000000100267AF0;
    v144 = v83;
    while (1)
    {
      if (v145)
      {
        v100 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v100 = *(v83 + 8 * v85 + 32);
      }

      v101 = v100;
      v102 = [v100 recordID];
      v103 = [v102 zoneID];

      v104 = [v103 zoneName];
      v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v107 = v106;

      v108 = v105 == 0xD000000000000012 && v86 == v107;
      if (v108 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v151 = &type metadata for AudioAccessoryFeatures;
        v152 = sub_1000F1874();
        v109 = isFeatureEnabled(_:)();
        sub_1000EF824(aBlock);
        if ((v109 & 1) == 0)
        {

          goto LABEL_106;
        }
      }

      else
      {
        v110 = v105 == 0xD00000000000001ELL && v137 == v107;
        if (v110 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v105 == 0xD000000000000010 && v136 == v107)
        {
        }

        else
        {
          v111 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v111 & 1) == 0)
          {
            LODWORD(v135) = static os_log_type_t.error.getter();
            v112 = swift_allocObject();
            *(v112 + 16) = v126;
            v113 = [v101 recordID];
            *(v112 + 56) = sub_1000FA784(0, &unk_1002F8B50, CKRecordID_ptr);
            *(v112 + 64) = sub_1001CB38C(&qword_1002F9418, &unk_1002F8B50, CKRecordID_ptr);
            *(v112 + 32) = v113;
            os_log(_:dso:log:_:_:)(v135, &_mh_execute_header, v125, "Ignoring changed record from unknown zone: %@", 45, 2, v112);

            goto LABEL_106;
          }
        }
      }

      v87 = v139;
      v88 = *(v139 + v142);
      v89 = swift_allocObject();
      v89[2] = v87;
      v89[3] = v101;
      v89[4] = v134;
      v152 = sub_1001CD924;
      v153 = v89;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v150 = sub_1001742E0;
      v151 = &unk_1002C1098;
      v90 = _Block_copy(aBlock);
      v91 = v88;

      v92 = v101;

      v93 = v130;
      static DispatchQoS.unspecified.getter();
      *&v147 = _swiftEmptyArrayStorage;
      sub_1001C4BB4(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
      sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
      v94 = v84;
      v95 = v132;
      v96 = v133;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v90);

      v97 = v95;
      v84 = v94;
      v98 = v96;
      v83 = v144;
      (*v140)(v97, v98);
      v99 = v93;
      v86 = v143;
      (*v138)(v99, v131);

LABEL_106:
      if (v84 == ++v85)
      {
        goto LABEL_136;
      }
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1001CD954()
{
  v1 = (type metadata accessor for DeviceSupportInformationRecord(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5, v6);
  sub_1000EF870(*(v5 + v1[7]), *(v5 + v1[7] + 8));

  v7 = v1[18];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_1001CDB34()
{
  v1 = *(type metadata accessor for DeviceSupportInformationRecord(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001B031C(v0 + v2, v3);
}

uint64_t sub_1001CDBC4()
{
  v1 = (type metadata accessor for DeviceSupportInformationRecord(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5, v6);
  sub_1000EF870(*(v5 + v1[7]), *(v5 + v1[7] + 8));

  v7 = v1[18];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

void sub_1001CDDB8()
{
  v1 = *(type metadata accessor for Notification() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10019549C(v0 + v2, v3);
}

unint64_t sub_1001CDE44(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1001CDE60(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1001CDEBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1001CDF1C(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

unint64_t sub_1001CDF5C()
{
  result = qword_1002F9EA0;
  if (!qword_1002F9EA0)
  {
    result = swift_getWitnessTable(&unk_100229B84, &type metadata for DeviceStore.DeviceStoreError, v0, v1);
    atomic_store(result, &qword_1002F9EA0);
  }

  return result;
}

unint64_t sub_1001CE350()
{
  result = qword_1002F9EC0;
  if (!qword_1002F9EC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002F9EC0);
  }

  return result;
}

uint64_t sub_1001CE40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1001CE350();
  result = OS_os_log.init(subsystem:category:)();
  *a4 = result;
  return result;
}

__int16 Data.hexString.getter(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = "othcloud.user.services";
  if (("othcloud.user.services" & 0x1000000000000000) != 0)
  {
    goto LABEL_5;
  }

  v9 = String.UTF16View._nativeGetOffset(for:)();
  if (v9)
  {
    while (1)
    {
      v10 = v9;
      v11 = sub_1001CFAEC(v9, 0);
      v8 = sub_1001CF818(v30, (v11 + 4), v10, 0xD000000000000010, v8 | 0x8000000000000000);

      if (v8 == v10)
      {
        break;
      }

      __break(1u);
LABEL_5:
      v9 = String.UTF16View._foreignCount()();
      if (!v9)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v11 = _swiftEmptyArrayStorage;
  }

  v12 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v12)
    {
      v13 = BYTE6(a2);
      goto LABEL_16;
    }

LABEL_14:
    LODWORD(v13) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_32:
      __break(1u);
      return v9;
    }

    v13 = v13;
    goto LABEL_16;
  }

  if (v12 != 2)
  {
    v17 = sub_1001CEFD0(0, 0, 0, _swiftEmptyArrayStorage);
    goto LABEL_19;
  }

  v15 = *(a1 + 16);
  v14 = *(a1 + 24);
  v16 = __OFSUB__(v14, v15);
  v13 = v14 - v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_14;
  }

LABEL_16:
  if (v13 + 0x4000000000000000 < 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v17 = sub_1001CEFD0(0, (2 * v13) & ~((2 * v13) >> 63), 0, _swiftEmptyArrayStorage);
LABEL_19:
  sub_1000EE9F4(a1, a2);
  Data.Iterator.init(_:at:)();
  LOWORD(v9) = Data.Iterator.next()();
  if ((v9 & 0x100) == 0)
  {
    v18 = v9;
    v19 = v11 + 4;
    while (1)
    {
      v20 = v18 >> 4;
      if (v20 >= v11[2])
      {
        break;
      }

      v21 = *(v19 + v20);
      v23 = *(v17 + 2);
      v22 = *(v17 + 3);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v9 = sub_1001CEFD0((v22 > 1), v23 + 1, 1, v17);
        v17 = v9;
      }

      *(v17 + 2) = v24;
      *&v17[2 * v23 + 32] = v21;
      if ((v18 & 0xF) >= v11[2])
      {
        goto LABEL_30;
      }

      v25 = *(v19 + (v18 & 0xF));
      v26 = *(v17 + 3);
      if ((v23 + 2) > (v26 >> 1))
      {
        v17 = sub_1001CEFD0((v26 > 1), v23 + 2, 1, v17);
      }

      *(v17 + 2) = v23 + 2;
      *&v17[2 * v24 + 32] = v25;
      LOWORD(v9) = Data.Iterator.next()();
      v18 = v9;
      if ((v9 & 0x100) != 0)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_28:
  (*(v5 + 8))(v7, v4);

  v27 = String.init(utf16CodeUnits:count:)();

  LOWORD(v9) = v27;
  return v9;
}

uint64_t Data.write(to:excludeFromBackup:options:)(uint64_t a1, int a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19[3] = a2;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v20 = v7;
  v21 = v8;
  __chkstk_darwin(v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URLResourceValues();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v22;
  result = Data.write(to:options:)();
  if (!v15)
  {
    URLResourceValues.init()();
    URLResourceValues.isExcludedFromBackup.setter();
    v17 = v21;
    v18 = v20;
    (*(v21 + 16))(v10, a1, v20);
    URL.setResourceValues(_:)();
    (*(v17 + 8))(v10, v18);
    return (*(v12 + 8))(v14, v11);
  }

  return result;
}

uint64_t Data.init(hexString:)(uint64_t a1, uint64_t a2)
{
  if (String.count.getter())
  {

    return 0;
  }

  else
  {
    v2 = String.uppercased()();
    v20 = sub_1001CFB68(v2._countAndFlagsBits, v2._object);

    result = String.count.getter();
    if (result >= -1)
    {
      if (result <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v4 = result / 2;
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v4;
        bzero(v5 + 4, v4);
      }

      v6 = String.count.getter();

      if (v6 < 1)
      {
LABEL_29:

        v19 = sub_1001CFE50(v5);

        return v19;
      }

      v7 = 0;
      v8 = v20 + 4;
      v9 = v20[2];
      while (1)
      {
        v10 = __OFADD__(v7, 2) ? 0x7FFFFFFFFFFFFFFFLL : v7 + 2;
        if (v7 >= v9)
        {
          break;
        }

        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_33;
        }

        if (v11 >= v9)
        {
          goto LABEL_34;
        }

        v12 = *(v8 + v7);
        v13 = *(v8 + v11);
        if (!isxdigit(v12) || (result = isxdigit(v13), !result))
        {

          return 0;
        }

        if (v12 >= 0x41)
        {
          v14 = 55;
        }

        else
        {
          v14 = 48;
        }

        v15 = v12 - v14;
        if ((v15 & 0xFFFFFF00) != 0)
        {
          goto LABEL_35;
        }

        if (v13 >= 0x41)
        {
          v16 = 55;
        }

        else
        {
          v16 = 48;
        }

        v17 = v13 - v16;
        if ((v17 & 0xFFFFFF00) != 0)
        {
          goto LABEL_36;
        }

        if (v15 > 0xFu)
        {
          goto LABEL_37;
        }

        v18 = 16 * (v15 & 0xF) + v17;
        if ((v18 & 0x100) != 0)
        {
          goto LABEL_38;
        }

        if (v7 >> 1 >= v5[2])
        {
          goto LABEL_39;
        }

        *(v5 + (v7 >> 1) + 32) = v18;
        v7 = v10;
        if (v10 >= v6)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

unint64_t Data.intValue.getter(uint64_t a1, unint64_t a2)
{
  result = Data.hexString.getter(a1, a2);
  v4 = HIBYTE(v3) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    return 0;
  }

  if ((v3 & 0x1000000000000000) != 0)
  {
    v8 = sub_100120A38(result, v3, 16);
    v29 = v28;

    if ((v29 & 1) == 0)
    {
      return v8;
    }

    return 0;
  }

  if ((v3 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v3 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v5 = v30;
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        if (--v5)
        {
          if (result)
          {
            v8 = 0;
            v16 = (result + 1);
            while (1)
            {
              v17 = *v16;
              v18 = v17 - 48;
              if ((v17 - 48) >= 0xA)
              {
                if ((v17 - 65) < 6)
                {
                  v18 = v17 - 55;
                }

                else
                {
                  if ((v17 - 97) > 5)
                  {
                    goto LABEL_87;
                  }

                  v18 = v17 - 87;
                }
              }

              if ((v8 - 0x800000000000000) >> 60 != 15)
              {
                goto LABEL_87;
              }

              v12 = __OFADD__(16 * v8, v18);
              v8 = 16 * v8 + v18;
              if (v12)
              {
                goto LABEL_87;
              }

              ++v16;
              if (!--v5)
              {
                goto LABEL_88;
              }
            }
          }

          goto LABEL_75;
        }

        goto LABEL_87;
      }

      goto LABEL_97;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        if (result)
        {
          v8 = 0;
          while (1)
          {
            v22 = *result;
            v23 = v22 - 48;
            if ((v22 - 48) >= 0xA)
            {
              if ((v22 - 65) < 6)
              {
                v23 = v22 - 55;
              }

              else
              {
                if ((v22 - 97) > 5)
                {
                  goto LABEL_87;
                }

                v23 = v22 - 87;
              }
            }

            if ((v8 - 0x800000000000000) >> 60 != 15)
            {
              goto LABEL_87;
            }

            v12 = __OFADD__(16 * v8, v23);
            v8 = 16 * v8 + v23;
            if (v12)
            {
              goto LABEL_87;
            }

            ++result;
            if (!--v5)
            {
              goto LABEL_88;
            }
          }
        }

        goto LABEL_75;
      }

LABEL_87:
      v8 = 0;
      LOBYTE(v5) = 1;
LABEL_88:
      v32 = v5;
      v27 = v5;

      if ((v27 & 1) == 0)
      {
        return v8;
      }

      return 0;
    }

    if (v5 >= 1)
    {
      if (--v5)
      {
        if (result)
        {
          v8 = 0;
          v9 = (result + 1);
          while (1)
          {
            v10 = *v9;
            v11 = v10 - 48;
            if ((v10 - 48) >= 0xA)
            {
              if ((v10 - 65) < 6)
              {
                v11 = v10 - 55;
              }

              else
              {
                if ((v10 - 97) > 5)
                {
                  goto LABEL_87;
                }

                v11 = v10 - 87;
              }
            }

            if ((v8 - 0x800000000000000) >> 60 != 15)
            {
              goto LABEL_87;
            }

            v12 = __OFSUB__(16 * v8, v11);
            v8 = 16 * v8 - v11;
            if (v12)
            {
              goto LABEL_87;
            }

            ++v9;
            if (!--v5)
            {
              goto LABEL_88;
            }
          }
        }

LABEL_75:
        v8 = 0;
        LOBYTE(v5) = 0;
        goto LABEL_88;
      }

      goto LABEL_87;
    }

    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v31[0] = result;
  v31[1] = v3 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v4)
      {
        v8 = 0;
        v24 = v31;
        while (1)
        {
          v25 = *v24;
          v26 = v25 - 48;
          if ((v25 - 48) >= 0xA)
          {
            if ((v25 - 65) < 6)
            {
              v26 = v25 - 55;
            }

            else
            {
              if ((v25 - 97) > 5)
              {
                goto LABEL_87;
              }

              v26 = v25 - 87;
            }
          }

          if ((v8 - 0x800000000000000) >> 60 != 15)
          {
            break;
          }

          v12 = __OFADD__(16 * v8, v26);
          v8 = 16 * v8 + v26;
          if (v12)
          {
            break;
          }

          ++v24;
          if (!--v4)
          {
            LOBYTE(v5) = 0;
            goto LABEL_88;
          }
        }
      }

      goto LABEL_87;
    }

    if (v4)
    {
      v5 = v4 - 1;
      if (v4 != 1)
      {
        v8 = 0;
        v13 = v31 + 1;
        while (1)
        {
          v14 = *v13;
          v15 = v14 - 48;
          if ((v14 - 48) >= 0xA)
          {
            if ((v14 - 65) < 6)
            {
              v15 = v14 - 55;
            }

            else
            {
              if ((v14 - 97) > 5)
              {
                goto LABEL_87;
              }

              v15 = v14 - 87;
            }
          }

          if ((v8 - 0x800000000000000) >> 60 != 15)
          {
            break;
          }

          v12 = __OFSUB__(16 * v8, v15);
          v8 = 16 * v8 - v15;
          if (v12)
          {
            break;
          }

          ++v13;
          if (!--v5)
          {
            goto LABEL_88;
          }
        }
      }

      goto LABEL_87;
    }

    goto LABEL_96;
  }

  if (v4)
  {
    v5 = v4 - 1;
    if (v4 != 1)
    {
      v8 = 0;
      v19 = v31 + 1;
      while (1)
      {
        v20 = *v19;
        v21 = v20 - 48;
        if ((v20 - 48) >= 0xA)
        {
          if ((v20 - 65) < 6)
          {
            v21 = v20 - 55;
          }

          else
          {
            if ((v20 - 97) > 5)
            {
              goto LABEL_87;
            }

            v21 = v20 - 87;
          }
        }

        if ((v8 - 0x800000000000000) >> 60 != 15)
        {
          break;
        }

        v12 = __OFADD__(16 * v8, v21);
        v8 = 16 * v8 + v21;
        if (v12)
        {
          break;
        }

        ++v19;
        if (!--v5)
        {
          goto LABEL_88;
        }
      }
    }

    goto LABEL_87;
  }

LABEL_98:
  __break(1u);
  return result;
}

char *sub_1001CEFD0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000EE870(&qword_1002F9EF8, &qword_100229C38);
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

char *sub_1001CF194(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000EE870(&unk_1002F9E70, qword_100229840);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001CF318(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_1000EE870(a5, a6);
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

void *sub_1001CF4F4(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000EE870(&qword_1002F9ED8, &qword_100229C20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000EE870(&qword_1002F9EE0, &qword_100229C28);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001CF63C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000EE870(&qword_1002F9ED0, &qword_100229C18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000EE870(&qword_1002F9DA0, &unk_100229A60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

_BYTE *sub_1001CF784@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1001CFC98(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1001CFD50(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1001CFDCC(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_1001CF818(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (!a2)
  {
    v10 = 0;
    v9 = 0;
    v7 = 0;
LABEL_41:
    v14 = 1;
    goto LABEL_42;
  }

  v7 = a3;
  if (!a3)
  {
    v10 = 0;
    v9 = 0;
    goto LABEL_41;
  }

  if (a3 < 0)
  {
    __break(1u);
    return result;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = a5 & 0xFFFFFFFFFFFFFFLL;
  v12 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v13 = a3 - 1;
  v14 = 1;
  do
  {
    if ((v14 & 1) == 0)
    {
      v14 = 1;
      LOWORD(v17) = v9;
      v9 = 0;
      goto LABEL_33;
    }

    if (v10 >= v6)
    {
      goto LABEL_43;
    }

    if ((a5 & 0x1000000000000000) != 0)
    {
      v29 = a5;
      v32 = a2;
      v23 = a4;
      v24 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      a4 = v23;
      v17 = v24;
      v19 = v25;
      a5 = v29;
      a2 = v32;
    }

    else
    {
      if ((a5 & 0x2000000000000000) == 0)
      {
        v15 = v12;
        if ((a4 & 0x1000000000000000) == 0)
        {
          v30 = a5;
          v33 = a2;
          v26 = a4;
          v15 = _StringObject.sharedUTF8.getter();
          a5 = v30;
          a2 = v33;
          a4 = v26;
        }

        v16 = (v15 + v10);
        v17 = *(v15 + v10);
        if ((*(v15 + v10) & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        v20 = (__clz(v17 ^ 0xFF) - 24);
        if (v20 <= 2)
        {
          if (v20 == 1)
          {
LABEL_15:
            v18 = 1;
          }

          else
          {
            LOWORD(v17) = v16[1] & 0x3F | ((v17 & 0x1F) << 6);
            v18 = 2;
          }

LABEL_16:
          v10 += v18;
LABEL_32:
          v14 = 1;
          goto LABEL_33;
        }

        if (v20 == 3)
        {
          LOWORD(v17) = (v17 << 12) | ((v16[1] & 0x3F) << 6) | v16[2] & 0x3F;
          v18 = 3;
          goto LABEL_16;
        }

LABEL_30:
        v17 = ((v17 & 0xF) << 18) | ((v16[1] & 0x3F) << 12) | ((v16[2] & 0x3F) << 6) | v16[3] & 0x3F;
        v19 = 4;
        goto LABEL_31;
      }

      v34[0] = a4;
      v34[1] = v11;
      v16 = v34 + v10;
      v17 = *(v34 + v10);
      if ((*(v34 + v10) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

      v21 = (__clz(v17 ^ 0xFF) - 24);
      if (v21 > 2)
      {
        if (v21 == 3)
        {
          v17 = ((v17 & 0xF) << 12) | ((v16[1] & 0x3F) << 6) | v16[2] & 0x3F;
          v19 = 3;
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      if (v21 == 1)
      {
LABEL_19:
        v19 = 1;
        goto LABEL_31;
      }

      v17 = v16[1] & 0x3F | ((v17 & 0x1F) << 6);
      v19 = 2;
    }

LABEL_31:
    v10 += v19;
    if (!HIWORD(v17))
    {
      goto LABEL_32;
    }

    v28 = a5;
    v31 = a2;
    v27 = a4;
    v9 = Unicode.Scalar.UTF16View.subscript.getter();
    v22 = Unicode.Scalar.UTF16View.subscript.getter();
    a5 = v28;
    a2 = v31;
    a4 = v27;
    LOWORD(v17) = v22;
    v14 = 0;
LABEL_33:
    *(a2 + 2 * v8) = v17;
    if (v13 == v8)
    {
      goto LABEL_42;
    }

    ++v8;
  }

  while (!__OFADD__(v8, 1));
  __break(1u);
LABEL_43:
  v14 = 1;
  v7 = v8;
LABEL_42:
  *v5 = a4;
  *(v5 + 8) = a5;
  *(v5 + 16) = v10;
  *(v5 + 24) = v6;
  *(v5 + 32) = v9;
  *(v5 + 34) = v14;
  return v7;
}

void *sub_1001CFAEC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000EE870(&qword_1002F9EF8, &qword_100229C38);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = (v5 - 32 + ((v5 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  return result;
}

void *sub_1001CFB68(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10012119C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10012119C(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1001CFC98(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1001CFD50(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1001CFDCC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1001CFE50(uint64_t a1)
{
  v9 = sub_1000EE870(&qword_1002F9EE8, &qword_100229C30);
  v10 = sub_1001CFF00();
  v8[0] = a1;
  v2 = sub_1000EF78C(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_1001CF784(v3, &v3[v4], &v7);
  v5 = v7;
  sub_1000EF824(v8);
  return v5;
}

unint64_t sub_1001CFF00()
{
  result = qword_1002F9EF0;
  if (!qword_1002F9EF0)
  {
    v3 = sub_1000F2B2C(&qword_1002F9EE8, &qword_100229C30);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v0, v1);
    atomic_store(result, &qword_1002F9EF0);
  }

  return result;
}

uint64_t LocalDispatchTimer.__allocating_init(deadline:repeating:leeway:queue:block:)(uint64_t (**a1)(char *, void), char *a2, uint64_t a3, double a4, double a5, double a6)
{
  v12 = swift_allocObject();
  LocalDispatchTimer.init(deadline:repeating:leeway:queue:block:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

uint64_t sub_1001CFFE4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EE8B8(v0, qword_100300E60);
  sub_1000EE91C(v0, qword_100300E60);
  return Logger.init(subsystem:category:)();
}

uint64_t LocalDispatchTimer.init(deadline:repeating:leeway:queue:block:)(uint64_t (**a1)(char *, void), char *a2, uint64_t a3, double a4, double a5, double a6)
{
  v7 = v6;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v77 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchTimeInterval();
  v83 = *(v17 - 8);
  __chkstk_darwin(v17);
  v76 = (v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v79 = (v62 - v20);
  v80 = type metadata accessor for DispatchTime();
  v82 = *(v80 - 8);
  __chkstk_darwin(v80);
  v75 = v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v81 = v62 - v23;
  v24 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v66 = *(v67 - 1);
  __chkstk_darwin(v67);
  v65 = v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v63);
  v64 = v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v30);
  v78 = v62 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + 16) = 0x408F400000000000;
  v34 = a4 * 1000.0;
  v35 = 2147483650.0;
  if (v34 < 2147483650.0)
  {
    v35 = v34;
    if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
      goto LABEL_28;
    }
  }

  if (v35 <= -2147483650.0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v35 >= 2147483650.0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  a5 = a5 * 1000.0;
  *(v7 + 24) = v35;
  v36 = 2147483650.0;
  if (a5 < 2147483650.0)
  {
    v36 = a5;
    if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_30;
    }
  }

  if (v36 <= -2147483650.0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v36 >= 2147483650.0)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  a6 = a6 * 1000.0;
  *(v7 + 28) = v36;
  v37 = 2147483650.0;
  if (a6 < 2147483650.0)
  {
    v37 = a6;
    if ((*&a6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_33;
    }
  }

  if (v37 <= -2147483650.0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v37 >= 2147483650.0)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
    goto LABEL_17;
  }

  v68 = v25;
  v69 = v24;
  v70 = v32;
  v71 = v31;
  *(v7 + 32) = v37;
  if (v34 <= 2147483650.0 && a5 <= 2147483650.0 && a6 <= 2147483650.0)
  {
    goto LABEL_20;
  }

  v74 = v17;
  v17 = v14;
  v14 = v16;
  v16 = a2;
  v25 = a1;
  if (qword_1002F7B10 != -1)
  {
    goto LABEL_36;
  }

LABEL_17:
  v38 = type metadata accessor for Logger();
  sub_1000EE91C(v38, qword_100300E60);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 134218752;
    *(v41 + 4) = 0x41DFFFFFFFC00000;
    *(v41 + 12) = 2048;
    *(v41 + 14) = v34;
    *(v41 + 22) = 2048;
    *(v41 + 24) = a5;
    *(v41 + 32) = 2048;
    *(v41 + 34) = a6;
    _os_log_impl(&_mh_execute_header, v39, v40, "LocalDispatchTimer: Exceeded maximum value of %f: deadline: %f, repeating: %f, leeway: %f", v41, 0x2Au);
  }

  a1 = v25;
  a2 = v16;
  v16 = v14;
  v14 = v17;
  v17 = v74;
LABEL_20:
  v74 = v14;
  *(v7 + 48) = a2;
  *(v7 + 56) = a3;
  v73 = a3;
  v72 = v16;
  if (a1)
  {

    v42 = a1;
  }

  else
  {
    v62[1] = sub_1000FA784(0, &qword_1002F9700, OS_dispatch_queue_ptr);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1001D0EF8(&unk_1002F93A0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1000EE870(&qword_1002F9710, &unk_100227B80);
    sub_100115260(&qword_1002F93B0, &qword_1002F9710, &unk_100227B80);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (v66[13])(v65, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v67);
    a1 = 0;
    v42 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  }

  *(v7 + 64) = v42;
  sub_1000FA784(0, &qword_1002F9F00, OS_dispatch_source_ptr);
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1001D0EF8(&qword_1002F9F08, &type metadata accessor for OS_dispatch_source.TimerFlags, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
  v67 = a1;
  v66 = v42;
  sub_1000EE870(&qword_1002F9F10, &qword_100229C48);
  sub_100115260(&qword_1002F9F18, &qword_1002F9F10, &qword_100229C48);
  v43 = v69;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v44 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  v68[1](v27, v43);
  *(v7 + 40) = v44;
  v45 = v75;
  static DispatchTime.now()();
  v46 = v79;
  *v79 = *(v7 + 24);
  v47 = enum case for DispatchTimeInterval.milliseconds(_:);
  v48 = v83;
  v49 = *(v83 + 104);
  v49(v46, enum case for DispatchTimeInterval.milliseconds(_:), v17);
  + infix(_:_:)();
  v50 = v17;
  v69 = *(v48 + 8);
  v69(v46, v17);
  v51 = v82 + 8;
  v75 = *(v82 + 8);
  (v75)(v45, v80);
  v52 = *(v7 + 28);
  v82 = v51;
  if (v52 < 1)
  {
    v54 = enum case for DispatchTimeInterval.never(_:);
    v53 = v76;
  }

  else
  {
    v53 = v76;
    *v76 = v52;
    v54 = v47;
  }

  v49(v53, v54, v17);
  swift_getObjectType();
  v55 = v79;
  *v79 = *(v7 + 32);
  v49(v55, v47, v17);
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  v83 = v48 + 8;
  v56 = v69;
  v69(v55, v17);
  swift_getObjectType();
  v57 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1001D0D0C;
  aBlock[5] = v57;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = &unk_1002C1290;
  v58 = _Block_copy(aBlock);

  v59 = v78;
  static DispatchQoS.unspecified.getter();
  v60 = v72;
  sub_1001D0D2C();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v58);

  (*(v77 + 8))(v60, v74);
  (*(v70 + 8))(v59, v71);
  v56(v53, v50);
  (v75)(v81, v80);

  return v7;
}

uint64_t sub_1001D0C94(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 48);

    v2(v3);
  }

  return result;
}

uint64_t sub_1001D0D14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001D0D2C()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_1001D0EF8(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_100115260(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t LocalDispatchTimer.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t LocalDispatchTimer.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1001D0EF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001D0FD0(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = @"Re-Activation";
  }

  else
  {
    v1 = @"Activation";
  }

  return LogPrintF(&dword_1002F5DA0, "[AudioDeviceManager activate:]_block_invoke", 50, "%@", v1);
}

void sub_1001D1048(uint64_t a1, uint64_t a2)
{
  v3 = CUPrintNSError();
  v2 = CUPrintXPC();
  LogPrintF(&dword_1002F5DA0, "[AudioDeviceManager getAllAudioAccessoriesPublishedUIDsWithCompletion:]_block_invoke", 90, "### XPC error: %@, %@", v3, v2);
}

void sub_1001D1108(uint64_t a1)
{
  v1 = [NSString stringWithUTF8String:a1];
  LogPrintF(&dword_1002F5DA0, "[AudioDeviceManager getAllAudioAccessoriesPublishedUIDsWithCompletion:]_block_invoke", 50, "Found published audio device %@", v1);
}

uint64_t sub_1001D11B0(uint64_t result)
{
  if (result <= 90)
  {
    if (result != -1)
    {
      return LogPrintF(&dword_1002F5DA0, "[AudioDeviceManager sendMsg:forUID:withArgs:]", 90, "###Unable to create xpcMessage", v1, v2);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&dword_1002F5DA0, "[AudioDeviceManager sendMsg:forUID:withArgs:]", 90, "###Unable to create xpcMessage", v1, v2);
    }
  }

  return result;
}

void sub_1001D1210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F5DA0 <= 90 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314(&dword_1002F5DA0, "[AudioDeviceManager sendMsg:forUID:withArgs:]", a3, "###No valid XPC connection");
  }
}

uint64_t sub_1001D12B0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result <= 90)
  {
    if (result != -1)
    {
      return sub_10000C314(&dword_1002F5DA0, "[AudioDeviceManager usbDeviceEnableAirPlaneMode:]", a3, "###No valid XPC connection");
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_10000C314(&dword_1002F5DA0, "[AudioDeviceManager usbDeviceEnableAirPlaneMode:]", a3, "###No valid XPC connection");
    }
  }

  return result;
}

void sub_1001D1308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F5DA0 <= 90 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314(&dword_1002F5DA0, "[AudioDeviceManager usbDeviceEnableAirPlaneMode:]", a3, "###Invalid BT Address");
  }
}

uint64_t sub_1001D13A8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result <= 90)
  {
    if (result != -1)
    {
      return sub_10000C314(&dword_1002F5DA0, "[AudioDeviceManager usbDeviceDisableAirPlaneMode:]", a3, "###No valid XPC connection");
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_10000C314(&dword_1002F5DA0, "[AudioDeviceManager usbDeviceDisableAirPlaneMode:]", a3, "###No valid XPC connection");
    }
  }

  return result;
}

void sub_1001D1400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F5DA0 <= 90 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314(&dword_1002F5DA0, "[AudioDeviceManager usbDeviceDisableAirPlaneMode:]", a3, "###Invalid BT Address");
  }
}

uint64_t sub_1001D14A0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result <= 90)
  {
    if (result != -1)
    {
      return sub_10000C314(&dword_1002F5DA0, "[AudioDeviceManager usbDeviceHideDevice:]", a3, "###No valid XPC connection");
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_10000C314(&dword_1002F5DA0, "[AudioDeviceManager usbDeviceHideDevice:]", a3, "###No valid XPC connection");
    }
  }

  return result;
}

void sub_1001D14F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F5DA0 <= 90 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314(&dword_1002F5DA0, "[AudioDeviceManager usbDeviceHideDevice:]", a3, "###Invalid BT Address");
  }
}

uint64_t sub_1001D1598(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result <= 90)
  {
    if (result != -1)
    {
      return sub_10000C314(&dword_1002F5DA0, "[AudioDeviceManager usbDeviceUnHideDevice:]", a3, "###No valid XPC connection");
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_10000C314(&dword_1002F5DA0, "[AudioDeviceManager usbDeviceUnHideDevice:]", a3, "###No valid XPC connection");
    }
  }

  return result;
}

void sub_1001D15F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F5DA0 <= 90 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314(&dword_1002F5DA0, "[AudioDeviceManager usbDeviceUnHideDevice:]", a3, "###Invalid BT Address");
  }
}

void sub_1001D17E0(void *a1)
{
  v12 = [a1 btAddress];
  if (v12)
  {
    v2 = [a1 btAddress];
  }

  else
  {
    v2 = &stru_1002C1358;
  }

  v3 = [a1 usbName];
  if (v3)
  {
    v4 = [a1 btAddress];
  }

  else
  {
    v4 = &stru_1002C1358;
  }

  v5 = [a1 usbModel];
  if (v5)
  {
    v6 = [a1 usbModel];
  }

  else
  {
    v6 = &stru_1002C1358;
  }

  v7 = [a1 color];
  v8 = [a1 fwVersion];
  v9 = [a1 featureBitmask];
  v10 = [a1 pid];
  v11 = [a1 pairingMode];
  LogPrintF(&dword_1002F5DA0, "[AudioDeviceManager _newUSBDeviceFound:]", 50, "Adding new USB device with address %@, name %@ and model %@ color %@ fwVersion %@ featureBitmask %@ pid %@ pairingMode %@", v2, v4, v6, v7, v8, v9, v10, v11);

  if (v5)
  {
  }

  if (v3)
  {
  }

  if (v12)
  {
  }
}

void sub_1001D19F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F5DA0 <= 90 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314(&dword_1002F5DA0, "[AudioDeviceManager _newUSBDeviceFound:]", a3, "###Invalid USB Address sent over xpc!");
  }
}

void sub_1001D1A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F5DA0 <= 90 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314(&dword_1002F5DA0, "[AudioDeviceManager _newUSBDeviceFound:]", a3, "###Invalid BT Address sent over xpc!");
  }
}

void sub_1001D1AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F5DA0 <= 90 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314(&dword_1002F5DA0, "[AudioDeviceManager _newUSBDeviceFound:]", a3, "###No valid XPC connection");
  }
}

void sub_1001D1B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F5DA0 <= 90 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314(&dword_1002F5DA0, "[AudioDeviceManager _usbDeviceLost:]", a3, "###Invalid USB Address sent over xpc!");
  }
}

void sub_1001D1B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F5DA0 <= 90 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314(&dword_1002F5DA0, "[AudioDeviceManager _usbDeviceLost:]", a3, "###Invalid BT Address sent over xpc!");
  }
}

void sub_1001D1C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F5DA0 <= 90 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314(&dword_1002F5DA0, "[AudioDeviceManager _usbDevicePropertyChanged:]", a3, "###Invalid USB Address sent over xpc!");
  }
}

void sub_1001D1C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F5DA0 <= 90 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314(&dword_1002F5DA0, "[AudioDeviceManager _usbDevicePropertyChanged:]", a3, "###Invalid BT Address sent over xpc!");
  }
}

uint64_t sub_1001D1CE4(char a1)
{
  v1 = "no";
  if (a1)
  {
    v1 = "yes";
  }

  return LogPrintF(&dword_1002F5DA0, "[AudioDeviceManager _isDevicePairedCheck:]", 30, "Evaluator: Found paired Device %s", v1);
}

uint64_t sub_1001D1ED4(unsigned int a1)
{
  if (a1 > 6)
  {
    v1 = "?";
  }

  else
  {
    v1 = (&off_1002B6AB8)[a1];
  }

  return LogPrintF(&dword_1002F5E10, "[AAAudioSessionControl setMuteAction:auditToken:bundleIdentifier:]", 30, "Mute Control: setMuteAction: %s", v1);
}

BOOL sub_1001D2278(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_retainBlock(*(*(a1 + 32) + 80));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, v4);
  }

  return v6 != 0;
}

void sub_1001D2324(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = CUPrintNSError();
  LogPrintF(&dword_1002F6000, "[AAController _activateXPCCompleted:]", 90, "### Activate failed: CID 0x%X, %@", v2, v3);
}

void sub_1001D2618(unsigned __int8 a1, uint64_t a2)
{
  if (a1 > 0xCu)
  {
    v2 = "?";
  }

  else
  {
    v2 = (&off_1002B6C20)[a1];
  }

  v3 = CUPrintNSError();
  LogPrintF(&dword_1002F6000, "[AAController _sendAccessoryEventMessage:eventType:destinationIdentifier:completionHandler:]", 90, "### sendAccessoryEvent type %s failed with error: %@", v2, v3);
}

void sub_1001D26AC(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 0xCu)
  {
    v4 = "?";
  }

  else
  {
    v4 = (&off_1002B6C20)[a1];
  }

  v5 = CUPrintNSError();
  LogPrintF(&dword_1002F6000, "[AAController _sendAccessoryEventMessage:eventType:destinationIdentifier:completionHandler:]", 90, "### sendAccessoryEvent type %s, destination %@, failed with error: %@", v4, a3, v5);
}

void sub_1001D2744(uint64_t a1)
{
  v1 = CUPrintNSError();
  LogPrintF(&dword_1002F6000, "[AAController _sendDeviceConfig:destinationIdentifier:completionHandler:]", 90, "### sendDeviceConfig failed with error: %@", v1);
}

void sub_1001D27A0(uint64_t a1, uint64_t a2)
{
  v3 = CUPrintNSError();
  LogPrintF(&dword_1002F6000, "[AAController _sendDeviceConfig:destinationIdentifier:completionHandler:]", 90, "### sendDeviceConfig destination %@, failed with error: %@", a2, v3);
}

void sub_1001D280C(uint64_t a1)
{
  v1 = CUPrintXPC();
  LogPrintF(&dword_1002F6000, "[AAController xpcReceivedMessage:]", 10, "XPC event: %@", v1);
}

void sub_1001D2868(uint64_t a1, uint64_t a2)
{
  v3 = CUPrintNSError();
  v2 = CUPrintXPC();
  LogPrintF(&dword_1002F6000, "[AAController xpcReceivedMessage:]", 90, "### XPC error: %@, %@", v3, v2);
}

void sub_1001D3050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6070 <= 30 && (dword_1002F6070 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4(&dword_1002F6070, "[AAPairedDeviceDaemon _updateCloudRecordIfNeeded:]", a3, "pairedInfoComplete pending...");
  }
}

uint64_t sub_1001D318C(uint64_t a1, uint64_t *a2)
{
  if (dword_1002F6070 > 90)
  {
    return 1;
  }

  if (dword_1002F6070 == -1 && !_LogCategory_Initialize())
  {
    return 1;
  }

  v3 = CUPrintNSError();
  *a2 = v3;
  LogPrintF(&dword_1002F6070, "[AAPairedDeviceDaemon _accessoryDeviceInfoChanged:]", 90, "## Failed to receive accessory device info: %@", v3);
  return 0;
}

uint64_t sub_1001D3230(uint64_t result, uint64_t *a2)
{
  v3 = result;
  if (dword_1002F6070 <= 90)
  {
    if (dword_1002F6070 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&dword_1002F6070, "[AAPairedDeviceDaemon _accessoryDeviceInfoChanged:]", 90, "## Identifier not found in deviceInfo");
    }
  }

  *a2 = v3;
  return result;
}

void sub_1001D3328()
{
  if (dword_1002F6070 <= 90)
  {
    sub_1000148E8();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&dword_1002F6070, "[AAPairedDeviceDaemon updatePairedDeviceWithIdentifier:withConfig:]_block_invoke", 90, "Failed to update with config, no device found with identifier: %@", *v0);
    }
  }
}

uint64_t sub_1001D3500(uint64_t result, uint64_t a2)
{
  if (result <= 90)
  {
    if (result != -1)
    {
      return LogPrintF(&dword_1002F6070, "[AAPairedDeviceDaemon _saveDeviceRecordForDevice:]", 90, "unable to save AADeviceRecord, record init failed with error: %@", a2);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&dword_1002F6070, "[AAPairedDeviceDaemon _saveDeviceRecordForDevice:]", 90, "unable to save AADeviceRecord, record init failed with error: %@", a2);
    }
  }

  return result;
}

void sub_1001D3578()
{
  if (dword_1002F6070 <= 90 && (dword_1002F6070 != -1 || _LogCategory_Initialize()))
  {

    LogPrintF(&dword_1002F6070, "[AAPairedDeviceDaemon _saveDeviceRecordForDevice:]", 90, "unable to save AADeviceRecord, missing bluetooth address");
  }
}

void sub_1001D372C()
{
  if (dword_1002F6070 <= 90)
  {
    sub_1000148E8();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&dword_1002F6070, "[AAPairedDeviceDaemon _coreBluetoothDeviceFound:]", 90, "## Device %@ is not paired", v0);
    }
  }
}

void sub_1001D37A4()
{
  if (dword_1002F6070 <= 90)
  {
    sub_1000148E8();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&dword_1002F6070, "[AAPairedDeviceDaemon _coreBluetoothDeviceFound:]", 90, "## Device %@ is not Apple Headphone", v0);
    }
  }
}

void sub_1001D381C()
{
  if (dword_1002F6070 <= 90)
  {
    sub_1000148E8();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&dword_1002F6070, "[AAPairedDeviceDaemon _coreBluetoothDeviceFound:]", 90, "CBDevice identifier not found, %@", v0);
    }
  }
}

void sub_1001D3914()
{
  if (dword_1002F6070 <= 90)
  {
    sub_1000148E8();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&dword_1002F6070, "[AAPairedDeviceDaemon _coreBluetoothDeviceLost:]", 90, "CBDevice identifier not found, %@", v0);
    }
  }
}

void sub_1001D398C(void *a1)
{
  v1 = [a1 description];
  LogPrintF(&dword_1002F6070, "[AAPairedDeviceDaemon _notifySubscribersInvalidated]", 30, "Notify daemon invalidated to subscriber: %@", v1);
}

void sub_1001D39E4(id *a1)
{
  v1 = [*a1 description];
  LogPrintF(&dword_1002F6070, "[AAPairedDeviceDaemon subscribeToPairedDiscovery:]_block_invoke", 30, "New subscriber: %@", v1);
}

void sub_1001D3A44(id *a1)
{
  v1 = [*a1 description];
  LogPrintF(&dword_1002F6070, "[AAPairedDeviceDaemon unsubscribeFromPairedDiscovery:]_block_invoke", 30, "Subscriber unsubscribed: %@", v1);
}

uint64_t sub_1001D3C3C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v1 = "?";
  }

  else
  {
    v1 = (&off_1002B6FB8)[a1];
  }

  return LogPrintF(&dword_1002F61A0, "[AAConversationDetectSessionManager _conversationDetectMessageReceived:fromDeviceIdentifier:]", 30, "Conversation Detect: messageType %s", v1);
}

uint64_t sub_1001D3CD8(unsigned __int8 a1, int a2)
{
  if (a1 > 5u)
  {
    v2 = "?";
  }

  else
  {
    v2 = (&off_1002B6FE8)[a1];
  }

  return LogPrintF(&dword_1002F61A0, "[AAConversationDetectSessionManager _conversationDetectMessageReceived:fromDeviceIdentifier:]", 90, "Received undesired CD msg of type %u %s", a2, v2);
}

uint64_t sub_1001D3F10(char a1)
{
  v1 = "yes";
  if (a1)
  {
    v2 = "no";
  }

  else
  {
    v2 = "yes";
  }

  if ((a1 & 1) == 0)
  {
    v1 = "no";
  }

  return LogPrintF(&dword_1002F61A0, "[AAConversationDetectSessionManager _prefsChanged]", 30, "Should enable custom ducking curve: %s -> %s", v2, v1);
}

uint64_t sub_1001D3F6C(char a1)
{
  v1 = "yes";
  if (a1)
  {
    v2 = "no";
  }

  else
  {
    v2 = "yes";
  }

  if ((a1 & 1) == 0)
  {
    v1 = "no";
  }

  return LogPrintF(&dword_1002F61A0, "[AAConversationDetectSessionManager _prefsChanged]", 30, "Did announce conversation awareness: %s -> %s", v2, v1);
}

uint64_t sub_1001D4188(unsigned int *a1, void *a2, void *a3, void *a4)
{
  v6 = *a1;
  if (v6 > 0xB)
  {
    v7 = "?";
  }

  else
  {
    v7 = (&off_1002B7018)[v6];
  }

  return LogPrintF(&dword_1002F61A0, "[AAConversationDetectSessionManager _cdSessionSignalUpdate]", 30, "Conversation detect signal: %s, duckLevel: %@, unduckLevel: %@, ramp duration %@", v7, *a2, *a3, *a4, v4, v5);
}

uint64_t sub_1001D42C4(char a1)
{
  v1 = "?";
  if (a1 == 1)
  {
    v1 = "MediaStyleChange";
  }

  if (a1 == 2)
  {
    v2 = "VolumeUp";
  }

  else
  {
    v2 = v1;
  }

  return LogPrintF(&dword_1002F61A0, "[AAConversationDetectSessionManager _cdSessionEnsureDeactivated:]", 30, "Sending reset to accessories, reset reason: %s ", v2);
}

uint64_t sub_1001D4330(char a1)
{
  v1 = "no";
  if (a1)
  {
    v1 = "yes";
  }

  return LogPrintF(&dword_1002F61A0, "[AAConversationDetectSessionManager _requestSiriAnnounce]_block_invoke_2", 30, "Siri did announce notification: %s", v1);
}

uint64_t sub_1001D4510(void *a1)
{
  if (*a1 > 6uLL)
  {
    v1 = "?";
  }

  else
  {
    v1 = (&off_1002B70A0)[*a1];
  }

  return LogPrintF(&dword_1002F61A0, "[AAConversationDetectSessionManager _registerForAVAudioSessionSpeechDetectionStyleChanges]", 30, "AVAudioSessionSpeechDetectionStyle current value : %s", v1);
}

uint64_t sub_1001D45C8(unint64_t a1)
{
  if (a1 > 6)
  {
    v1 = "?";
  }

  else
  {
    v1 = (&off_1002B70A0)[a1];
  }

  return LogPrintF(&dword_1002F61A0, "[AAConversationDetectSessionManager _speechDetectionUserVolumeChanged:]", 30, "User %s change notification received", v1);
}

uint64_t sub_1001D4628(uint64_t result)
{
  if (dword_1002F61A0 <= 10)
  {
    v1 = result;
    if (dword_1002F61A0 != -1)
    {
      return LogPrintF(&dword_1002F61A0, "[AAConversationDetectSessionManager _deviceFound:]", 10, "Connected device not conversation detect capable %@", v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&dword_1002F61A0, "[AAConversationDetectSessionManager _deviceFound:]", 10, "Connected device not conversation detect capable %@", v1);
    }
  }

  return result;
}

uint64_t sub_1001D4724(uint64_t result)
{
  if (dword_1002F61A0 <= 90)
  {
    v1 = result;
    if (dword_1002F61A0 != -1)
    {
      return LogPrintF(&dword_1002F61A0, "[AAConversationDetectSessionManager _deviceFound:]", 90, "CBDevice identifier not found, %@", v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&dword_1002F61A0, "[AAConversationDetectSessionManager _deviceFound:]", 90, "CBDevice identifier not found, %@", v1);
    }
  }

  return result;
}