void sub_10017388C(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  sub_100174068(a2, a3);
}

uint64_t DarwinNotificationHelper.deinit()
{
  v1 = v0;
  if (qword_1002F79F8 != -1)
  {
    goto LABEL_17;
  }

LABEL_2:
  DarwinNotificationManager.unregisterHelper(helper:)(v1);
  center = CFNotificationCenterGetDarwinNotifyCenter();
  if (!center)
  {
    goto LABEL_15;
  }

  v2 = *(v1 + 16);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = 1 << *(*(v1 + 16) + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;
  v20 = *(v1 + 16);

  v10 = 0;
  observer = v1;
  while (v8)
  {
LABEL_10:
    v12 = *(*(v20 + 48) + 8 * (__clz(__rbit64(v8)) | (v10 << 6)));

    v22 = static os_log_type_t.default.getter();
    if (qword_1002F7AC8 != -1)
    {
      swift_once();
    }

    v8 &= v8 - 1;
    v13 = qword_100300E18;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100226100;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_1000EE954();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v13, "Remove darwin callback handler for %@", 37, 2, v14);

    v1 = observer;
    CFNotificationCenterRemoveObserver(center, observer, v12, 0);
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_17:
      swift_once();
      goto LABEL_2;
    }

    if (v11 >= v9)
    {
      break;
    }

    v8 = *(v4 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

LABEL_15:

  return v1;
}

uint64_t DarwinNotificationHelper.__deallocating_deinit()
{
  DarwinNotificationHelper.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall DarwinNotificationHelper.onNotification(notificationName:)(CFStringRef notificationName)
{
  v2 = *(v1 + 16);
  if (*(v2 + 16))
  {

    v4 = sub_1000F8CD4(notificationName);
    if (v5)
    {
      v6 = *(*(v2 + 56) + 16 * v4);

      v7 = static os_log_type_t.default.getter();
      if (qword_1002F7AC8 != -1)
      {
        swift_once();
      }

      v8 = qword_100300E18;
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_100226100;
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
      *(v9 + 56) = &type metadata for String;
      *(v9 + 64) = sub_1000EE954();
      *(v9 + 32) = v10;
      *(v9 + 40) = v12;
      os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "Invoking callback, notification, %@", 35, 2, v9);

      v6(v13);
    }

    else
    {
    }
  }
}

uint64_t _s15audioaccessoryd24DarwinNotificationHelperC20notificationHandlersACSgSDySSyycG_tcfC_0(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v28 = v6;
  while (v5)
  {
    v8 = v1;
LABEL_11:
    v9 = *(a1 + 56);
    v10 = swift_allocObject();
    *(v10 + 16) = *(v9 + ((v8 << 10) | (16 * __clz(__rbit64(v5)))));
    swift_bridgeObjectRetain_n();

    v11 = String._bridgeToObjectiveC()();

    v12 = swift_allocObject();
    *(v12 + 16) = sub_1001742B8;
    *(v12 + 24) = v10;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = sub_1000F8CD4(v11);
    v16 = _swiftEmptyDictionarySingleton[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      goto LABEL_22;
    }

    v20 = v15;
    if (_swiftEmptyDictionarySingleton[3] >= v19)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = v14;
        sub_10015DAB4();
        v14 = v25;
      }
    }

    else
    {
      sub_10015CB2C(v19, isUniquelyReferenced_nonNull_native);
      v14 = sub_1000F8CD4(v11);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_24;
      }
    }

    v5 &= v5 - 1;
    if (v20)
    {
      v7 = (_swiftEmptyDictionarySingleton[7] + 16 * v14);
      *v7 = sub_1000F2B98;
      v7[1] = v12;
    }

    else
    {
      _swiftEmptyDictionarySingleton[(v14 >> 6) + 8] |= 1 << v14;
      *(_swiftEmptyDictionarySingleton[6] + 8 * v14) = v11;
      v22 = (_swiftEmptyDictionarySingleton[7] + 16 * v14);
      *v22 = sub_1000F2B98;
      v22[1] = v12;

      v23 = _swiftEmptyDictionarySingleton[2];
      v18 = __OFADD__(v23, 1);
      v24 = v23 + 1;
      if (v18)
      {
        goto LABEL_23;
      }

      _swiftEmptyDictionarySingleton[2] = v24;
    }

    v1 = v8;
    v6 = v28;
  }

  while (1)
  {
    v8 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      type metadata accessor for DarwinNotificationHelper();
      v26 = swift_allocObject();
      DarwinNotificationHelper.init(notificationHandlers:)(_swiftEmptyDictionarySingleton);
      return v26;
    }

    v5 = *(v2 + 8 * v8);
    ++v1;
    if (v5)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  type metadata accessor for CFString(0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100174068(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      v2 = a2;
      v3 = static os_log_type_t.default.getter();
      if (qword_1002F7AC8 != -1)
      {
        swift_once();
      }

      v4 = qword_100300E18;
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_100226100;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      *(v5 + 56) = &type metadata for String;
      *(v5 + 64) = sub_1000EE954();
      *(v5 + 32) = v6;
      *(v5 + 40) = v8;
      os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "On darwin notification, %@", 26, 2, v5);

      v15 = v2;
      DarwinNotificationHelper.onNotification(notificationName:)(v15);

      return;
    }

    v9 = static os_log_type_t.error.getter();
    if (qword_1002F7AC8 != -1)
    {
      v14 = v9;
      swift_once();
      v9 = v14;
    }

    v10 = qword_100300E18;
    v11 = "cfNotificationName for darwin callback handler not found";
    v12 = 56;
  }

  else
  {
    v9 = static os_log_type_t.error.getter();
    if (qword_1002F7AC8 != -1)
    {
      v13 = v9;
      swift_once();
      v9 = v13;
    }

    v10 = qword_100300E18;
    v11 = "Observer for darwin callback handler not found";
    v12 = 46;
  }

  os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, v11, v12, 2, _swiftEmptyArrayStorage);
}

uint64_t sub_1001742E0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100174350()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v19 - v5;
  v7 = [objc_opt_self() processInfo];
  v8 = [v7 environment];

  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v9 + 16))
  {

LABEL_9:
    v15 = [objc_opt_self() defaultManager];
    v16 = [v15 URLsForDirectory:5 inDomains:1];

    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v17 + 16))
    {
      (*(v1 + 16))(v3, v17 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

      (*(v1 + 32))(v6, v3, v0);
      URL.appendingPathComponent(_:isDirectory:)();
      return (*(v1 + 8))(v6, v0);
    }

    else
    {

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    return result;
  }

  sub_1000F8C5C(0xD00000000000001BLL, 0x800000010026AB90);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    goto LABEL_9;
  }

  v12 = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    v18 = v12;
    swift_once();
    v12 = v18;
  }

  os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, qword_100300E38, "Under test appContainerURL to tmp", 33, 2, _swiftEmptyArrayStorage);
  v13 = NSTemporaryDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:isDirectory:)();
}

uint64_t sub_1001746E8(uint64_t a1)
{
  v74 = type metadata accessor for URL();
  v71 = *(v74 - 8);
  __chkstk_darwin(v74);
  v73 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000EE870(&unk_1002F9C30, &qword_1002299A0);
  __chkstk_darwin(v3 - 8);
  v81 = &v70 - v4;
  v5 = type metadata accessor for DeviceRecord(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v80 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v85 = &v70 - v9;
  v82 = 0;
  v77 = type metadata accessor for MagicPairingSettingsRecord(0);
  *&v70 = *(v77 - 8);
  __chkstk_darwin(v77);
  v76 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v70 - v12;
  v14 = static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    goto LABEL_78;
  }

  while (1)
  {
    v15 = qword_100300E30;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100226100;
    v17 = Array.description.getter();
    v19 = v18;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_1000EE954();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "records Updated: %@", 19, 2, v16);

    v20 = v5;
    v21 = *(a1 + 16);
    v87 = _swiftEmptyArrayStorage;
    sub_1001C4D8C(0, v21, 0);
    v22 = v87;
    if (!v21)
    {
      break;
    }

    v87 = _swiftEmptyArrayStorage;
    v23 = *(v20 + 28);
    v84 = (v85 + *(v20 + 24));
    v83 = v85 + v23;
    v72 = v20;
    v24 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v86 = *(v6 + 72);
    v78 = v24;
    v79 = v21;
    v25 = v21;
    do
    {
      v26 = v85;
      sub_1001CC14C(v24, v85, type metadata accessor for DeviceRecord);
      v27 = objc_allocWithZone(BTCloudDevice);
      v28 = String._bridgeToObjectiveC()();
      v29 = [v27 initWithBluetoothAddress:v28];

      v30 = String._bridgeToObjectiveC()();
      [v29 setNickname:v30];

      v31 = String._bridgeToObjectiveC()();
      [v29 setModelNumber:v31];

      v32 = String._bridgeToObjectiveC()();
      [v29 setManufacturer:v32];

      v33 = String._bridgeToObjectiveC()();
      [v29 setProductID:v33];

      v34 = String._bridgeToObjectiveC()();
      [v29 setVendorID:v34];

      sub_1001CC1B4(v26, type metadata accessor for DeviceRecord);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v24 += v86;
      --v25;
    }

    while (v25);
    v35 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
    v36 = v75;
    swift_beginAccess();
    v83 = v35;
    v37 = *(v36 + v35);
    if (v37 >> 62)
    {
      v38 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v39 = v81;
    v5 = v82;
    v40 = v80;
    if (v38)
    {
      if (v38 < 1)
      {
        __break(1u);
        goto LABEL_81;
      }

      for (i = 0; i != v38; ++i)
      {
        if ((v37 & 0xC000000000000001) != 0)
        {
          v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v42 = *(v37 + 8 * i + 32);
          swift_unknownObjectRetain();
        }

        if ([v42 respondsToSelector:{"devicesUpdatedWithRecords:", v70}])
        {
          sub_1000FA784(0, &qword_1002F9CD0, BTCloudDevice_ptr);
          swift_unknownObjectRetain();
          isa = Array._bridgeToObjectiveC()().super.isa;
          [v42 devicesUpdatedWithRecords:isa];
          swift_unknownObjectRelease_n();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      v36 = v75;
      v39 = v81;
      v5 = v82;
      v40 = v80;
    }

    v13 = 0xD000000000000011;

    a1 = 0;
    v6 = v40 + *(v72 + 6);
    v85 = 0x8000000100267AA0;
    v56 = v71++;
    v72 = (v56 + 2);
    v84 = (v70 + 48);
    v70 = xmmword_1002290F0;
    v14 = v78;
    v57 = v79;
    while (a1 != v57)
    {
      sub_1001CC14C(v14 + a1 * v86, v40, type metadata accessor for DeviceRecord);
      v58 = *v6 == 0xD000000000000011 && v85 == *(v6 + 8);
      if (v58 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_46;
      }

      sub_100103934();
      if ([objc_opt_self() isFirstUnlocked])
      {
        sub_100192340();
        if (qword_1002F7A00 != -1)
        {
          swift_once();
        }

        v59 = v74;
        v60 = sub_1000EE91C(v74, qword_100300BA8);
        v61 = v73;
        (*v72)(v73, v60, v59);
        v62 = sub_10018C984(v61);

        v63 = (*v71)(v61, v59);
        v40 = v80;
        v39 = v81;
      }

      else
      {
        v64 = static os_log_type_t.error.getter();
        if (qword_1002F7AE8 != -1)
        {
          v69 = v64;
          swift_once();
          v64 = v69;
        }

        v62 = _swiftEmptyArrayStorage;
        os_log(_:dso:log:_:_:)(v64, &_mh_execute_header, qword_100300E38, "magicPairingSettingsRecords call failed because in device is in beforeFirstUnlock state", 87, 2, _swiftEmptyArrayStorage, v70);
      }

      __chkstk_darwin(v63);
      *(&v70 - 2) = v40;
      sub_10017D118(sub_1001CB710, v62, type metadata accessor for MagicPairingSettingsRecord, type metadata accessor for MagicPairingSettingsRecord, type metadata accessor for MagicPairingSettingsRecord, type metadata accessor for MagicPairingSettingsRecord, v39);

      if ((*v84)(v39, 1, v77) != 1)
      {
        sub_1001CC214(v39, v76, type metadata accessor for MagicPairingSettingsRecord);
        sub_1000EE870(&qword_1002F9350, &qword_1002292D0);
        v13 = swift_allocObject();
        *(v13 + 1) = v70;
        *(v13 + 4) = sub_10010CFB8();
        v14 = *(v36 + v83);
        v82 = v5;
        if (v14 >> 62)
        {
          v65 = _CocoaArrayWrapper.endIndex.getter();
          if (!v65)
          {
            goto LABEL_73;
          }

LABEL_63:
          if (v65 < 1)
          {
            goto LABEL_77;
          }

          for (j = 0; j != v65; ++j)
          {
            if ((v14 & 0xC000000000000001) != 0)
            {
              v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v67 = *(v14 + 8 * j + 32);
              swift_unknownObjectRetain();
            }

            if ([v67 respondsToSelector:{"magicPairingRecordsUpdatedWithRecords:", v70}])
            {
              sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
              swift_unknownObjectRetain();
              v68 = Array._bridgeToObjectiveC()().super.isa;
              [v67 magicPairingRecordsUpdatedWithRecords:v68];
              swift_unknownObjectRelease_n();
            }

            else
            {
              swift_unknownObjectRelease();
            }
          }
        }

        else
        {
          v65 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v65)
          {
            goto LABEL_63;
          }

LABEL_73:
        }

        sub_1001CC1B4(v76, type metadata accessor for MagicPairingSettingsRecord);

        v36 = v75;
        v39 = v81;
        v5 = v82;
        v40 = v80;
        goto LABEL_45;
      }

      sub_1000EEE6C(v39, &unk_1002F9C30, &qword_1002299A0);
LABEL_45:
      v14 = v78;
      v57 = v79;
      v13 = 0xD000000000000011;
LABEL_46:
      ++a1;
      result = sub_1001CC1B4(v40, type metadata accessor for DeviceRecord);
      if (a1 == v57)
      {
        return result;
      }
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    swift_once();
  }

  v87 = _swiftEmptyArrayStorage;
  v44 = *(v22 + 16);
  if (v44)
  {
    v45 = &v13[*(v77 + 24)];
    v46 = v22 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
    v47 = *(v70 + 72);
    do
    {
      sub_1001CC14C(v46, v13, type metadata accessor for MagicPairingSettingsRecord);
      v48 = *v45 == 0xD000000000000011 && 0x8000000100267AA0 == *(v45 + 1);
      if (v48 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_1001CC1B4(v13, type metadata accessor for MagicPairingSettingsRecord);
      }

      else
      {
        sub_10010CFB8();
        sub_1001CC1B4(v13, type metadata accessor for MagicPairingSettingsRecord);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v86 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v46 += v47;
      --v44;
    }

    while (v44);
  }

  v49 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
  v50 = v75;
  result = swift_beginAccess();
  v37 = *(v50 + v49);
  if (!(v37 >> 62))
  {
    v52 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v52)
    {
      goto LABEL_34;
    }
  }

LABEL_81:
  result = _CocoaArrayWrapper.endIndex.getter();
  v52 = result;
  if (!result)
  {
  }

LABEL_34:
  if (v52 >= 1)
  {

    for (k = 0; k != v52; ++k)
    {
      if ((v37 & 0xC000000000000001) != 0)
      {
        v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v54 = *(v37 + 8 * k + 32);
        swift_unknownObjectRetain();
      }

      if ([v54 respondsToSelector:{"magicPairingRecordsUpdatedWithRecords:", v70}])
      {
        sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
        swift_unknownObjectRetain();
        v55 = Array._bridgeToObjectiveC()().super.isa;
        [v54 magicPairingRecordsUpdatedWithRecords:v55];
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001754E4(uint64_t a1)
{
  v2 = type metadata accessor for DeviceSupportInformationRecord(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MagicPairingSettingsRecord(0);
  v39 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  v10 = qword_100300E30;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100226100;
  v12 = Array.description.getter();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_1000EE954();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "records Updated: %@", 19, 2, v11);

  v15 = *(a1 + 16);
  v41 = _swiftEmptyArrayStorage;
  sub_1001C4D8C(0, v15, 0);
  v16 = v41;
  if (v15)
  {

    v41 = _swiftEmptyArrayStorage;
    sub_1001C4E14(0, v15, 0);

    v41 = _swiftEmptyArrayStorage;
    v17 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v18 = *(v3 + 72);
    do
    {
      sub_1001CC14C(v17, v5, type metadata accessor for DeviceSupportInformationRecord);
      sub_100109B20();
      sub_1001CC1B4(v5, type metadata accessor for DeviceSupportInformationRecord);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v17 += v18;
      --v15;
    }

    while (v15);
    v19 = v40;
    v20 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
    swift_beginAccess();
    v21 = *(v19 + v20);
    if (v21 >> 62)
    {
      v22 = _CocoaArrayWrapper.endIndex.getter();
      if (!v22)
      {
      }

      goto LABEL_10;
    }

    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
LABEL_10:
      if (v22 >= 1)
      {

        for (i = 0; i != v22; ++i)
        {
          if ((v21 & 0xC000000000000001) != 0)
          {
            v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v24 = *(v21 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          if ([v24 respondsToSelector:"deviceSupportInformationRecordsUpdatedWithRecords:"])
          {
            sub_1000FA784(0, &qword_1002F8518, BTCloudDeviceSupportInformation_ptr);
            swift_unknownObjectRetain();
            isa = Array._bridgeToObjectiveC()().super.isa;
            [v24 deviceSupportInformationRecordsUpdatedWithRecords:isa];
            swift_unknownObjectRelease_n();
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

LABEL_42:
      }

      __break(1u);
      goto LABEL_47;
    }
  }

  v41 = _swiftEmptyArrayStorage;
  v26 = *(v16 + 16);
  if (v26)
  {
    v27 = &v8[*(v6 + 24)];
    v28 = v16 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
    v29 = *(v39 + 72);
    do
    {
      sub_1001CC14C(v28, v8, type metadata accessor for MagicPairingSettingsRecord);
      v30 = *v27 == 0xD000000000000011 && 0x8000000100267AA0 == *(v27 + 1);
      if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_1001CC1B4(v8, type metadata accessor for MagicPairingSettingsRecord);
      }

      else
      {
        sub_10010CFB8();
        sub_1001CC1B4(v8, type metadata accessor for MagicPairingSettingsRecord);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v39 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v28 += v29;
      --v26;
    }

    while (v26);
  }

  v31 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
  v32 = v40;
  result = swift_beginAccess();
  v21 = *(v32 + v31);
  if (!(v21 >> 62))
  {
    v34 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v34)
    {
      goto LABEL_33;
    }
  }

LABEL_47:
  result = _CocoaArrayWrapper.endIndex.getter();
  v34 = result;
  if (!result)
  {
  }

LABEL_33:
  if (v34 >= 1)
  {

    for (j = 0; j != v34; ++j)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v36 = *(v21 + 8 * j + 32);
        swift_unknownObjectRetain();
      }

      if ([v36 respondsToSelector:"magicPairingRecordsUpdatedWithRecords:"])
      {
        sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
        swift_unknownObjectRetain();
        v37 = Array._bridgeToObjectiveC()().super.isa;
        [v36 magicPairingRecordsUpdatedWithRecords:v37];
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    goto LABEL_42;
  }

  __break(1u);
  return result;
}

uint64_t sub_100175BB0(Class a1)
{
  v2 = type metadata accessor for URL();
  v91 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LegacyAccountMagicKeysRecord(0);
  v89 = *(v5 - 8);
  v90 = v5;
  __chkstk_darwin(v5);
  v88 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v87 = &v83 - v8;
  v9 = type metadata accessor for LegacyMagicPairingSettingsRecords(0);
  v96 = *(v9 - 8);
  __chkstk_darwin(v9);
  v85 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MagicPairingSettingsRecord(0);
  v95 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    goto LABEL_75;
  }

  while (1)
  {
    v15 = qword_100300E30;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100226100;
    v17 = Array.description.getter();
    v19 = v18;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_1000EE954();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "records Updated: %@", 19, 2, v16);

    v14 = *(a1 + 2);
    v97 = _swiftEmptyArrayStorage;
    sub_1001C4D8C(0, v14, 0);
    v20 = v97;
    if (!v14)
    {
      break;
    }

    v97 = _swiftEmptyArrayStorage;
    sub_1001C4E14(0, v14, 0);

    v97 = _swiftEmptyArrayStorage;
    sub_1001C4DD0(0, v14, 0);

    sub_1001CC14C(a1 + ((v96[80] + 32) & ~v96[80]), v85, type metadata accessor for LegacyMagicPairingSettingsRecords);
    v21 = sub_10013B008();
    swift_unknownObjectWeakInit();
    v98 = _swiftEmptyArrayStorage;
    if (v21 >> 62)
    {
      v22 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    swift_beginAccess();
    a1 = _swiftEmptyArrayStorage;
    if (!v22)
    {
LABEL_38:

      swift_unknownObjectWeakDestroy();
      v48 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
      v49 = v86;
      swift_beginAccess();
      v96 = v48;
      v50 = *&v48[v49];
      if (v50 >> 62)
      {
        v51 = _CocoaArrayWrapper.endIndex.getter();
        if (!v51)
        {
          goto LABEL_78;
        }

LABEL_40:
        if (v51 >= 1)
        {

          for (i = 0; i != v51; ++i)
          {
            if ((v50 & 0xC000000000000001) != 0)
            {
              v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v54 = *(v50 + 8 * i + 32);
              swift_unknownObjectRetain();
            }

            if ([v54 respondsToSelector:"magicPairingRecordsUpdatedWithRecords:"])
            {
              sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
              swift_unknownObjectRetain();
              isa = Array._bridgeToObjectiveC()().super.isa;
              [v54 magicPairingRecordsUpdatedWithRecords:isa];
              swift_unknownObjectRelease_n();
            }

            else
            {
              swift_unknownObjectRelease();
            }
          }

          goto LABEL_78;
        }

        __break(1u);
      }

      else
      {
        v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v51)
        {
          goto LABEL_40;
        }

LABEL_78:

        v67 = sub_10013B008();
        v68 = v67;
        v98 = _swiftEmptyArrayStorage;
        if (v67 >> 62)
        {
          goto LABEL_94;
        }

        for (j = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = _CocoaArrayWrapper.endIndex.getter())
        {
          v70 = 0;
          while (1)
          {
            if ((v68 & 0xC000000000000001) != 0)
            {
              v71 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v70 >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_93;
              }

              v71 = *(v68 + 8 * v70 + 32);
            }

            v72 = v71;
            v73 = v70 + 1;
            if (__OFADD__(v70, 1))
            {
              break;
            }

            v74 = [v71 bluetoothAddress];
            if (!v74)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v74 = String._bridgeToObjectiveC()();
            }

            v75 = [objc_allocWithZone(BTCloudDevice) initWithBluetoothAddress:v74];

            v76 = [v72 name];
            [v75 setNickname:v76];

            v77 = [v72 productID];
            [v75 setProductID:v77];

            v78 = [v72 vendorID];
            [v75 setVendorID:v78];

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            ++v70;
            if (v73 == j)
            {
              goto LABEL_95;
            }
          }

          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          ;
        }

LABEL_95:

        v50 = *&v96[v86];
        if (!(v50 >> 62))
        {
          v79 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v79)
          {
            goto LABEL_97;
          }

LABEL_107:

LABEL_108:
          sub_1001CC1B4(v85, type metadata accessor for LegacyMagicPairingSettingsRecords);
LABEL_109:
        }

        v79 = _CocoaArrayWrapper.endIndex.getter();
        if (!v79)
        {
          goto LABEL_107;
        }

LABEL_97:
        if (v79 >= 1)
        {

          for (k = 0; k != v79; ++k)
          {
            if ((v50 & 0xC000000000000001) != 0)
            {
              v81 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v81 = *(v50 + 8 * k + 32);
              swift_unknownObjectRetain();
            }

            if ([v81 respondsToSelector:"devicesUpdatedWithRecords:"])
            {
              sub_1000FA784(0, &qword_1002F9CD0, BTCloudDevice_ptr);
              swift_unknownObjectRetain();
              v82 = Array._bridgeToObjectiveC()().super.isa;
              [v81 devicesUpdatedWithRecords:v82];
              swift_unknownObjectRelease_n();
            }

            else
            {
              swift_unknownObjectRelease();
            }
          }

          goto LABEL_108;
        }
      }

      __break(1u);
      goto LABEL_113;
    }

    v13 = 0;
    v94 = v21 & 0xFFFFFFFFFFFFFF8;
    v95 = v21 & 0xC000000000000001;
    v23 = v91++;
    v92 = (v23 + 2);
    v84 = v21;
    v93 = v22;
    while (1)
    {
      if (v95)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *(v94 + 16))
        {
          goto LABEL_74;
        }

        v24 = *(v21 + 8 * v13 + 32);
      }

      v14 = v24;
      v11 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v26 = Strong;
        v96 = v14;
        sub_100103934();
        v27 = objc_opt_self();
        if ([v27 isFirstUnlocked])
        {
          sub_100192340();
          if (qword_1002F79E8 != -1)
          {
            swift_once();
          }

          v28 = sub_1000EE91C(v2, qword_100300B80);
          (*v92)(v4, v28, v2);
          v29 = sub_10018F6C8(v4);

          (*v91)(v4, v2);
          if (v29[2])
          {
            v30 = v87;
            sub_1001CC14C(v29 + ((*(v89 + 80) + 32) & ~*(v89 + 80)), v87, type metadata accessor for LegacyAccountMagicKeysRecord);

            v31 = Data.subdata(in:)();
            v33 = v32;
            sub_1001CC1B4(v30, type metadata accessor for LegacyAccountMagicKeysRecord);
            v34.super.isa = Data._bridgeToObjectiveC()().super.isa;
            sub_1000EF870(v31, v33);
LABEL_22:
            [v96 setMasterKey:v34.super.isa];

            if ([v27 isFirstUnlocked])
            {
              sub_100192340();
              if (qword_1002F79E8 != -1)
              {
                swift_once();
              }

              v36 = sub_1000EE91C(v2, qword_100300B80);
              (*v92)(v4, v36, v2);
              v37 = sub_10018F6C8(v4);

              (*v91)(v4, v2);
              if (v37[2])
              {
                v38 = v4;
                v39 = v2;
                v40 = v88;
                sub_1001CC14C(v37 + ((*(v89 + 80) + 32) & ~*(v89 + 80)), v88, type metadata accessor for LegacyAccountMagicKeysRecord);

                v41 = Data.subdata(in:)();
                v43 = v42;
                v44 = v40;
                v2 = v39;
                v4 = v38;
                v21 = v84;
                sub_1001CC1B4(v44, type metadata accessor for LegacyAccountMagicKeysRecord);
                a1 = Data._bridgeToObjectiveC()().super.isa;
                sub_1000EF870(v41, v43);
              }

              else
              {

                a1 = 0;
              }

              v22 = v93;
            }

            else
            {
              v45 = static os_log_type_t.error.getter();
              v22 = v93;
              if (qword_1002F7AE8 != -1)
              {
                v47 = v45;
                swift_once();
                v45 = v47;
              }

              os_log(_:dso:log:_:_:)(v45, &_mh_execute_header, qword_100300E38, "AccountMagicKeysRecord call failed because in device is in beforeFirstUnlock state", 82, 2, _swiftEmptyArrayStorage);

              a1 = 0;
            }

            v14 = v96;
            [v96 setMasterHint:a1];

            goto LABEL_33;
          }
        }

        else
        {
          v35 = static os_log_type_t.error.getter();
          if (qword_1002F7AE8 != -1)
          {
            v46 = v35;
            swift_once();
            v35 = v46;
          }

          os_log(_:dso:log:_:_:)(v35, &_mh_execute_header, qword_100300E38, "AccountMagicKeysRecord call failed because in device is in beforeFirstUnlock state", 82, 2, _swiftEmptyArrayStorage);
        }

        v34.super.isa = 0;
        goto LABEL_22;
      }

LABEL_33:
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        a1 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v13;
      if (v11 == v22)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    swift_once();
  }

  v97 = _swiftEmptyArrayStorage;
  v55 = *(v20 + 16);
  if (v55)
  {
    v56 = (v13 + *(v11 + 24));
    v57 = v20 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
    v58 = *(v95 + 72);
    do
    {
      sub_1001CC14C(v57, v13, type metadata accessor for MagicPairingSettingsRecord);
      v59 = *v56 == 0xD000000000000011 && 0x8000000100267AA0 == v56[1];
      if (v59 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_1001CC1B4(v13, type metadata accessor for MagicPairingSettingsRecord);
      }

      else
      {
        sub_10010CFB8();
        sub_1001CC1B4(v13, type metadata accessor for MagicPairingSettingsRecord);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v96 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v57 += v58;
      --v55;
    }

    while (v55);
  }

  v60 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
  v61 = v86;
  result = swift_beginAccess();
  v50 = *(v61 + v60);
  if (v50 >> 62)
  {
LABEL_113:
    result = _CocoaArrayWrapper.endIndex.getter();
    v63 = result;
    if (!result)
    {
    }

    goto LABEL_64;
  }

  v63 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v63)
  {
  }

LABEL_64:
  if (v63 >= 1)
  {

    for (m = 0; m != v63; ++m)
    {
      if ((v50 & 0xC000000000000001) != 0)
      {
        v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v65 = *(v50 + 8 * m + 32);
        swift_unknownObjectRetain();
      }

      if ([v65 respondsToSelector:"magicPairingRecordsUpdatedWithRecords:"])
      {
        sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
        swift_unknownObjectRetain();
        v66 = Array._bridgeToObjectiveC()().super.isa;
        [v65 magicPairingRecordsUpdatedWithRecords:v66];
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    goto LABEL_109;
  }

  __break(1u);
  return result;
}

uint64_t sub_100176C18(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MagicPairingSettingsRecord(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  v9 = qword_100300E30;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100226100;
  v11 = Array.description.getter();
  v13 = v12;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_1000EE954();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "records Updated: %@", 19, 2, v10);

  v27[0] = _swiftEmptyArrayStorage;
  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = &v7[*(v4 + 24)];
    v16 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v17 = *(v5 + 72);
    do
    {
      sub_1001CC14C(v16, v7, type metadata accessor for MagicPairingSettingsRecord);
      v18 = *v15 == 0xD000000000000011 && 0x8000000100267AA0 == *(v15 + 1);
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_1001CC1B4(v7, type metadata accessor for MagicPairingSettingsRecord);
      }

      else
      {
        sub_10010CFB8();
        sub_1001CC1B4(v7, type metadata accessor for MagicPairingSettingsRecord);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v27[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v26 = *((v27[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v16 += v17;
      --v14;
    }

    while (v14);
  }

  v19 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
  result = swift_beginAccess();
  v21 = *(v2 + v19);
  if (!(v21 >> 62))
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_17;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v22 = result;
  if (!result)
  {
  }

LABEL_17:
  if (v22 >= 1)
  {

    for (i = 0; i != v22; ++i)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v25 = *(v21 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      if ([v25 respondsToSelector:"magicPairingRecordsUpdatedWithRecords:"])
      {
        sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
        swift_unknownObjectRetain();
        isa = Array._bridgeToObjectiveC()().super.isa;
        [v25 magicPairingRecordsUpdatedWithRecords:isa];
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100177018(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MagicPairingSettingsRecord(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  v9 = qword_100300E30;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100226100;
  type metadata accessor for LegacyAccountMagicKeysRecord(0);
  v11 = Array.description.getter();
  v13 = v12;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_1000EE954();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "records Updated: %@", 19, 2, v10);

  v14 = *(a1 + 16);
  v30[0] = _swiftEmptyArrayStorage;
  sub_1001C4D8C(0, v14, 0);
  v15 = v30[0];
  if (v14)
  {

    v30[0] = _swiftEmptyArrayStorage;
    sub_1001C4E14(0, v14, 0);

    v30[0] = _swiftEmptyArrayStorage;
    sub_1001C4DD0(0, v14, 0);

    v30[0] = _swiftEmptyArrayStorage;
    sub_1001C4E78(0, v14, 0);

    v30[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();

    v30[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();

    v30[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
  }

  v30[0] = _swiftEmptyArrayStorage;
  v17 = *(v15 + 16);
  if (v17)
  {
    v18 = &v7[*(v4 + 24)];
    v19 = *(v5 + 80);
    v29[2] = v15;
    v20 = v15 + ((v19 + 32) & ~v19);
    v21 = *(v5 + 72);
    do
    {
      sub_1001CC14C(v20, v7, type metadata accessor for MagicPairingSettingsRecord);
      v22 = *v18 == 0xD000000000000011 && 0x8000000100267AA0 == *(v18 + 1);
      if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_1001CC1B4(v7, type metadata accessor for MagicPairingSettingsRecord);
      }

      else
      {
        sub_10010CFB8();
        sub_1001CC1B4(v7, type metadata accessor for MagicPairingSettingsRecord);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v30[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v29[1] = *((v30[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v20 += v21;
      --v17;
    }

    while (v17);
  }

  v23 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
  result = swift_beginAccess();
  v24 = *(v2 + v23);
  if (!(v24 >> 62))
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      goto LABEL_19;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v25 = result;
  if (!result)
  {
  }

LABEL_19:
  if (v25 >= 1)
  {

    for (i = 0; i != v25; ++i)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v28 = *(v24 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      if ([v28 respondsToSelector:"magicPairingRecordsUpdatedWithRecords:"])
      {
        sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
        swift_unknownObjectRetain();
        isa = Array._bridgeToObjectiveC()().super.isa;
        [v28 magicPairingRecordsUpdatedWithRecords:isa];
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100177500(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LegacyAccountMagicKeysRecord(0);
  v148 = *(v4 - 8);
  __chkstk_darwin(v4);
  v147 = &v131 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v146 = &v131 - v7;
  v8 = type metadata accessor for LegacyMagicPairingSettingsRecords(0);
  v132 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v145 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DeviceSupportInformationRecord(0);
  v144 = *(v10 - 8);
  __chkstk_darwin(v10 - 8);
  v12 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for URL();
  v133 = *(v137 - 8);
  __chkstk_darwin(v137);
  v136 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000EE870(&unk_1002F9C30, &qword_1002299A0);
  __chkstk_darwin(v14 - 8);
  v138 = &v131 - v15;
  v134 = type metadata accessor for DeviceRecord(0);
  v141 = *(v134 - 8);
  __chkstk_darwin(v134);
  v143 = &v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v149 = (&v131 - v18);
  v142 = type metadata accessor for MagicPairingSettingsRecord(0);
  *&v135 = *(v142 - 8);
  __chkstk_darwin(v142);
  v139 = &v131 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v131 - v21;
  v23 = static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  v24 = qword_100300E30;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100226100;
  type metadata accessor for HMDeviceCloudRecord(0);
  v26 = Array.description.getter();
  v28 = v27;
  *(v25 + 56) = &type metadata for String;
  *(v25 + 64) = sub_1000EE954();
  *(v25 + 32) = v26;
  *(v25 + 40) = v28;
  os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v24, "records Updated: %@", 19, 2, v25);

  v29 = sub_10017E820(a1, sub_1001C4D8C);
  v140 = v2;
  if (v29)
  {
    v150 = _swiftEmptyArrayStorage;
    v30 = v29[2];
    if (v30)
    {
      v31 = &v22[*(v142 + 24)];
      v32 = v29 + ((*(v135 + 80) + 32) & ~*(v135 + 80));
      v25 = *(v135 + 72);
      v33 = _swiftEmptyArrayStorage;
      do
      {
        sub_1001CC14C(v32, v22, type metadata accessor for MagicPairingSettingsRecord);
        v34 = *v31 == 0xD000000000000011 && 0x8000000100267AA0 == *(v31 + 1);
        if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          sub_1001CC1B4(v22, type metadata accessor for MagicPairingSettingsRecord);
        }

        else
        {
          v23 = sub_10010CFB8();
          sub_1001CC1B4(v22, type metadata accessor for MagicPairingSettingsRecord);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v150 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v149 = *((v150 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v33 = v150;
        }

        v32 += v25;
        --v30;
      }

      while (v30);

      v2 = v140;
    }

    else
    {

      v33 = _swiftEmptyArrayStorage;
    }

    v48 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
    swift_beginAccess();
    v49 = *(v2 + v48);
    if (v49 >> 62)
    {
      v50 = _CocoaArrayWrapper.endIndex.getter();
      if (!v50)
      {
      }
    }

    else
    {
      v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v50)
      {
      }
    }

    if (v50 >= 1)
    {

      for (i = 0; i != v50; ++i)
      {
        if ((v49 & 0xC000000000000001) != 0)
        {
          v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v52 = *(v49 + 8 * i + 32);
          swift_unknownObjectRetain();
        }

        if ([v52 respondsToSelector:"magicPairingRecordsUpdatedWithRecords:"])
        {
          sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
          swift_unknownObjectRetain();
          isa = Array._bridgeToObjectiveC()().super.isa;
          [v52 magicPairingRecordsUpdatedWithRecords:isa];
          swift_unknownObjectRelease_n();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      goto LABEL_211;
    }

    goto LABEL_131;
  }

  v35 = sub_10017E820(a1, sub_1001C4E14);
  if (!v35)
  {
    v58 = sub_10017E820(a1, sub_1001C4DD0);
    if (v58)
    {
      v150 = _swiftEmptyArrayStorage;
      v59 = v58[2];
      if (v59)
      {
        v60 = v58 + ((*(v144 + 80) + 32) & ~*(v144 + 80));
        v61 = *(v144 + 72);
        do
        {
          sub_1001CC14C(v60, v12, type metadata accessor for DeviceSupportInformationRecord);
          sub_100109B20();
          sub_1001CC1B4(v12, type metadata accessor for DeviceSupportInformationRecord);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v150 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v2 = v140;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v60 += v61;
          --v59;
        }

        while (v59);
      }

      v89 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
      swift_beginAccess();
      v33 = *(v2 + v89);
      if (v33 >> 62)
      {
        goto LABEL_169;
      }

      a1 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a1)
      {
        goto LABEL_94;
      }
    }

    v62 = sub_10017E820(a1, sub_1001C4E78);
    if (v62)
    {
      if (v62[2])
      {
        sub_1001CC14C(v62 + ((*(v132 + 80) + 32) & ~*(v132 + 80)), v145, type metadata accessor for LegacyMagicPairingSettingsRecords);

        v25 = sub_10013B008();
        swift_unknownObjectWeakInit();
        v151 = _swiftEmptyArrayStorage;
        if (v25 >> 62)
        {
          v50 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v50 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        swift_beginAccess();
        v33 = _swiftEmptyArrayStorage;
        if (v50)
        {
          v63 = 0;
          v149 = (v25 & 0xC000000000000001);
          v144 = v25 & 0xFFFFFFFFFFFFFF8;
          v141 = (v133 + 1);
          v142 = (v133 + 2);
          v138 = v25;
          v139 = v4;
          v143 = v50;
          while (1)
          {
            if (v149)
            {
              v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v63 >= *(v144 + 16))
              {
                goto LABEL_130;
              }

              v64 = *(v25 + 8 * v63 + 32);
            }

            v65 = v64;
            v66 = v63 + 1;
            if (__OFADD__(v63, 1))
            {
              break;
            }

            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v68 = Strong;
              sub_100103934();
              v23 = objc_opt_self();
              if ([v23 isFirstUnlocked])
              {
                sub_100192340();
                if (qword_1002F79E8 != -1)
                {
                  swift_once();
                }

                v69 = v137;
                v70 = sub_1000EE91C(v137, qword_100300B80);
                v71 = v136;
                (*v142)(v136, v70, v69);
                v72 = sub_10018F6C8(v71);

                (*v141)(v71, v69);
                if (v72[2])
                {
                  v73 = v146;
                  sub_1001CC14C(v72 + ((*(v148 + 80) + 32) & ~*(v148 + 80)), v146, type metadata accessor for LegacyAccountMagicKeysRecord);

                  v74 = Data.subdata(in:)();
                  v76 = v75;
                  sub_1001CC1B4(v73, type metadata accessor for LegacyAccountMagicKeysRecord);
                  v77.super.isa = Data._bridgeToObjectiveC()().super.isa;
                  sub_1000EF870(v74, v76);
                }

                else
                {

                  v77.super.isa = 0;
                }

                v25 = v138;
                v50 = v143;
              }

              else
              {
                v78 = static os_log_type_t.error.getter();
                if (qword_1002F7AE8 != -1)
                {
                  v87 = v78;
                  swift_once();
                  v78 = v87;
                }

                os_log(_:dso:log:_:_:)(v78, &_mh_execute_header, qword_100300E38, "AccountMagicKeysRecord call failed because in device is in beforeFirstUnlock state", 82, 2, _swiftEmptyArrayStorage);

                v77.super.isa = 0;
              }

              [v65 setMasterKey:v77.super.isa];

              if ([v23 isFirstUnlocked])
              {
                sub_100192340();
                if (qword_1002F79E8 != -1)
                {
                  swift_once();
                }

                v79 = v137;
                v80 = sub_1000EE91C(v137, qword_100300B80);
                v81 = v136;
                (*v142)(v136, v80, v79);
                v23 = sub_10018F6C8(v81);

                (*v141)(v81, v79);
                if (v23[2])
                {
                  v82 = v147;
                  sub_1001CC14C(v23 + ((*(v148 + 80) + 32) & ~*(v148 + 80)), v147, type metadata accessor for LegacyAccountMagicKeysRecord);

                  v23 = Data.subdata(in:)();
                  v84 = v83;
                  sub_1001CC1B4(v82, type metadata accessor for LegacyAccountMagicKeysRecord);
                  v85.super.isa = Data._bridgeToObjectiveC()().super.isa;
                  sub_1000EF870(v23, v84);
                }

                else
                {

                  v85.super.isa = 0;
                }

                v50 = v143;
              }

              else
              {
                v86 = static os_log_type_t.error.getter();
                if (qword_1002F7AE8 != -1)
                {
                  v88 = v86;
                  swift_once();
                  v86 = v88;
                }

                os_log(_:dso:log:_:_:)(v86, &_mh_execute_header, qword_100300E38, "AccountMagicKeysRecord call failed because in device is in beforeFirstUnlock state", 82, 2, _swiftEmptyArrayStorage);

                v85.super.isa = 0;
              }

              [v65 setMasterHint:v85.super.isa];

              v2 = v140;
            }

            v33 = &v151;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v151 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v151 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v23 = *((v151 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            ++v63;
            if (v66 == v50)
            {
              goto LABEL_105;
            }
          }

          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

LABEL_105:

        swift_unknownObjectWeakDestroy();
        v93 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
        result = swift_beginAccess();
        v149 = v93;
        v95 = *(v93 + v2);
        if (v95 >> 62)
        {
          result = _CocoaArrayWrapper.endIndex.getter();
          v96 = result;
          if (result)
          {
            goto LABEL_107;
          }
        }

        else
        {
          v96 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v96)
          {
LABEL_107:
            if (v96 < 1)
            {
              __break(1u);
              goto LABEL_214;
            }

            for (j = 0; j != v96; ++j)
            {
              if ((v95 & 0xC000000000000001) != 0)
              {
                v98 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v98 = *(v95 + 8 * j + 32);
                swift_unknownObjectRetain();
              }

              if ([v98 respondsToSelector:"magicPairingRecordsUpdatedWithRecords:"])
              {
                sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
                swift_unknownObjectRetain();
                v99 = Array._bridgeToObjectiveC()().super.isa;
                [v98 magicPairingRecordsUpdatedWithRecords:v99];
                swift_unknownObjectRelease_n();
              }

              else
              {
                swift_unknownObjectRelease();
              }
            }
          }
        }

        v115 = sub_10013B008();
        v116 = v115;
        v151 = _swiftEmptyArrayStorage;
        if (v115 >> 62)
        {
          goto LABEL_194;
        }

        for (k = *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10); k; k = _CocoaArrayWrapper.endIndex.getter())
        {
          v118 = 0;
          while (1)
          {
            if ((v116 & 0xC000000000000001) != 0)
            {
              v119 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v118 >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_193;
              }

              v119 = *(v116 + 8 * v118 + 32);
            }

            v120 = v119;
            v121 = v118 + 1;
            if (__OFADD__(v118, 1))
            {
              break;
            }

            v122 = [v119 bluetoothAddress];
            if (!v122)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v122 = String._bridgeToObjectiveC()();
            }

            v123 = [objc_allocWithZone(BTCloudDevice) initWithBluetoothAddress:v122];

            v124 = [v120 name];
            [v123 setNickname:v124];

            v125 = [v120 productID];
            [v123 setProductID:v125];

            v126 = [v120 vendorID];
            [v123 setVendorID:v126];

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v151 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v151 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            ++v118;
            if (v121 == k)
            {
              goto LABEL_195;
            }
          }

          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          ;
        }

LABEL_195:

        v100 = *(v149 + v140);
        if (v100 >> 62)
        {
          goto LABEL_208;
        }

        v127 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v127)
        {
          goto LABEL_197;
        }

LABEL_209:

LABEL_210:
        sub_1001CC1B4(v145, type metadata accessor for LegacyMagicPairingSettingsRecords);
LABEL_211:
      }
    }

    v12 = _swiftEmptyArrayStorage;
    v150 = _swiftEmptyArrayStorage;
    if (a1 >> 62)
    {
      goto LABEL_172;
    }

    v100 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized ContiguousArray.reserveCapacity(_:)();
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_120;
    }

LABEL_173:
    sub_1000F16CC(v150);
  }

  v33 = _swiftEmptyArrayStorage;
  v150 = _swiftEmptyArrayStorage;
  v36 = v35[2];
  v147 = v36;
  v148 = v35;
  if (v36)
  {
    v37 = *(v134 + 28);
    v146 = v149 + *(v134 + 24);
    v145 = v149 + v37;
    v38 = v35 + ((*(v141 + 80) + 32) & ~*(v141 + 80));
    v144 = v141[9];
    do
    {
      v39 = v149;
      sub_1001CC14C(v38, v149, type metadata accessor for DeviceRecord);
      v40 = objc_allocWithZone(BTCloudDevice);
      v41 = String._bridgeToObjectiveC()();
      v42 = [v40 initWithBluetoothAddress:v41];

      v43 = String._bridgeToObjectiveC()();
      [v42 setNickname:v43];

      v44 = String._bridgeToObjectiveC()();
      [v42 setModelNumber:v44];

      v45 = String._bridgeToObjectiveC()();
      [v42 setManufacturer:v45];

      v46 = String._bridgeToObjectiveC()();
      [v42 setProductID:v46];

      v47 = String._bridgeToObjectiveC()();
      [v42 setVendorID:v47];

      sub_1001CC1B4(v39, type metadata accessor for DeviceRecord);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v150 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v38 += v144;
      --v36;
    }

    while (v36);
    v33 = v150;
    v2 = v140;
  }

  v54 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
  swift_beginAccess();
  v132 = v54;
  v50 = *(v2 + v54);
  v25 = v138;
  v23 = v143;
  if (v50 >> 62)
  {
LABEL_132:
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (!v12)
    {
      goto LABEL_133;
    }

LABEL_38:
    if (v12 < 1)
    {
      goto LABEL_168;
    }

    for (m = 0; m != v12; ++m)
    {
      if ((v50 & 0xC000000000000001) != 0)
      {
        v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v56 = *(v50 + 8 * m + 32);
        swift_unknownObjectRetain();
      }

      if ([v56 respondsToSelector:"devicesUpdatedWithRecords:"])
      {
        sub_1000FA784(0, &qword_1002F9CD0, BTCloudDevice_ptr);
        swift_unknownObjectRetain();
        v57 = Array._bridgeToObjectiveC()().super.isa;
        [v56 devicesUpdatedWithRecords:v57];
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v2 = v140;
    v25 = v138;
    v23 = v143;
    goto LABEL_133;
  }

  v12 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v12)
  {
    goto LABEL_38;
  }

LABEL_133:

  v33 = v141;
  if (!v147)
  {
  }

  v101 = 0;
  v149 = (v23 + *(v134 + 24));
  v102 = v148;
  v145 = v148 + ((*(v141 + 80) + 32) & ~*(v141 + 80));
  v146 = 0x8000000100267AA0;
  v134 = (v133 + 2);
  ++v133;
  v144 = v135 + 48;
  v135 = xmmword_1002290F0;
  while (v101 < v102[2])
  {
    sub_1001CC14C(v145 + *(v33 + 72) * v101, v23, type metadata accessor for DeviceRecord);
    v103 = *v149 == 0xD000000000000011 && v146 == v149[1];
    if (v103 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_136;
    }

    sub_100103934();
    if ([objc_opt_self() isFirstUnlocked])
    {
      sub_100192340();
      if (qword_1002F7A00 != -1)
      {
        swift_once();
      }

      v104 = v137;
      v105 = sub_1000EE91C(v137, qword_100300BA8);
      v106 = v136;
      (*v134)(v136, v105, v104);
      v107 = sub_10018C984(v106);

      v108 = (*v133)(v106, v104);
    }

    else
    {
      v109 = static os_log_type_t.error.getter();
      if (qword_1002F7AE8 != -1)
      {
        v114 = v109;
        swift_once();
        v109 = v114;
      }

      v107 = _swiftEmptyArrayStorage;
      os_log(_:dso:log:_:_:)(v109, &_mh_execute_header, qword_100300E38, "magicPairingSettingsRecords call failed because in device is in beforeFirstUnlock state", 87, 2, _swiftEmptyArrayStorage);
    }

    v12 = &v131;
    __chkstk_darwin(v108);
    v23 = v143;
    *(&v131 - 2) = v143;
    sub_10017D118(sub_1001CE134, v107, type metadata accessor for MagicPairingSettingsRecord, type metadata accessor for MagicPairingSettingsRecord, type metadata accessor for MagicPairingSettingsRecord, type metadata accessor for MagicPairingSettingsRecord, v25);

    if ((*v144)(v25, 1, v142) != 1)
    {
      sub_1001CC214(v25, v139, type metadata accessor for MagicPairingSettingsRecord);
      sub_1000EE870(&qword_1002F9350, &qword_1002292D0);
      v110 = swift_allocObject();
      *(v110 + 16) = v135;
      *(v110 + 32) = sub_10010CFB8();
      v33 = *(v2 + v132);
      if (v33 >> 62)
      {
        v111 = _CocoaArrayWrapper.endIndex.getter();
        if (!v111)
        {
          goto LABEL_163;
        }

LABEL_153:
        if (v111 < 1)
        {
          goto LABEL_167;
        }

        for (n = 0; n != v111; ++n)
        {
          if ((v33 & 0xC000000000000001) != 0)
          {
            v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v12 = *(v33 + 8 * n + 32);
            swift_unknownObjectRetain();
          }

          if ([v12 respondsToSelector:"magicPairingRecordsUpdatedWithRecords:"])
          {
            sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
            swift_unknownObjectRetain();
            v113 = Array._bridgeToObjectiveC()().super.isa;
            [v12 magicPairingRecordsUpdatedWithRecords:v113];
            swift_unknownObjectRelease_n();
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }
      }

      else
      {
        v111 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v111)
        {
          goto LABEL_153;
        }

LABEL_163:
      }

      sub_1001CC1B4(v139, type metadata accessor for MagicPairingSettingsRecord);

      v2 = v140;
      v33 = v141;
      v25 = v138;
      v23 = v143;
      goto LABEL_136;
    }

    sub_1000EEE6C(v25, &unk_1002F9C30, &qword_1002299A0);
    v33 = v141;
LABEL_136:
    ++v101;
    sub_1001CC1B4(v23, type metadata accessor for DeviceRecord);
    v102 = v148;
    if (v101 == v147)
    {
    }
  }

  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  a1 = _CocoaArrayWrapper.endIndex.getter();
  if (!a1)
  {
  }

LABEL_94:
  if (a1 >= 1)
  {

    v90 = 0;
    do
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        v91 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v91 = *(v33 + 8 * v90 + 32);
        swift_unknownObjectRetain();
      }

      if ([v91 respondsToSelector:"deviceSupportInformationRecordsUpdatedWithRecords:"])
      {
        sub_1000FA784(0, &qword_1002F8518, BTCloudDeviceSupportInformation_ptr);
        swift_unknownObjectRetain();
        v92 = Array._bridgeToObjectiveC()().super.isa;
        [v91 deviceSupportInformationRecordsUpdatedWithRecords:v92];
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v90;
    }

    while (a1 != v90);
  }

  __break(1u);
LABEL_172:
  v100 = _CocoaArrayWrapper.endIndex.getter();
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_173;
  }

LABEL_120:
  if ((a1 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    swift_unknownObjectRelease();
LABEL_122:

    v150 = v12;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((a1 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      swift_unknownObjectRelease();
    }

    return sub_100170198(a1);
  }

  else
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_122;
    }

    __break(1u);
LABEL_208:
    result = _CocoaArrayWrapper.endIndex.getter();
    v127 = result;
    if (!result)
    {
      goto LABEL_209;
    }

LABEL_197:
    if (v127 >= 1)
    {

      for (ii = 0; ii != v127; ++ii)
      {
        if ((v100 & 0xC000000000000001) != 0)
        {
          v129 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v129 = *(v100 + 8 * ii + 32);
          swift_unknownObjectRetain();
        }

        if ([v129 respondsToSelector:"devicesUpdatedWithRecords:"])
        {
          sub_1000FA784(0, &qword_1002F9CD0, BTCloudDevice_ptr);
          swift_unknownObjectRetain();
          v130 = Array._bridgeToObjectiveC()().super.isa;
          [v129 devicesUpdatedWithRecords:v130];
          swift_unknownObjectRelease_n();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      goto LABEL_210;
    }

LABEL_214:
    __break(1u);
  }

  return result;
}

uint64_t sub_100179344(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LegacyAccountMagicKeysRecord(0);
  v150 = *(v4 - 8);
  __chkstk_darwin(v4);
  v149 = &v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v148 = &v133 - v7;
  v8 = type metadata accessor for LegacyMagicPairingSettingsRecords(0);
  v134 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v147 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DeviceSupportInformationRecord(0);
  v146 = *(v10 - 8);
  __chkstk_darwin(v10 - 8);
  v12 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for URL();
  v135 = *(v139 - 8);
  __chkstk_darwin(v139);
  v138 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000EE870(&unk_1002F9C30, &qword_1002299A0);
  __chkstk_darwin(v14 - 8);
  v140 = &v133 - v15;
  v136 = type metadata accessor for DeviceRecord(0);
  v143 = *(v136 - 8);
  __chkstk_darwin(v136);
  v145 = &v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v151 = (&v133 - v18);
  v144 = type metadata accessor for MagicPairingSettingsRecord(0);
  *&v137 = *(v144 - 8);
  __chkstk_darwin(v144);
  v141 = &v133 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v133 - v21;
  v23 = static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  v24 = qword_100300E30;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100226100;
  type metadata accessor for AAProxCardsRecord(0);
  v26 = Array.description.getter();
  v28 = v27;
  *(v25 + 56) = &type metadata for String;
  *(v25 + 64) = sub_1000EE954();
  *(v25 + 32) = v26;
  *(v25 + 40) = v28;
  os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v24, "records Updated: %@", 19, 2, v25);

  v29 = sub_10017E820(a1, sub_1001C4D8C);
  v142 = v2;
  if (v29)
  {
    v152 = _swiftEmptyArrayStorage;
    v30 = v29[2];
    if (v30)
    {
      v31 = &v22[*(v144 + 24)];
      v32 = v29 + ((*(v137 + 80) + 32) & ~*(v137 + 80));
      v25 = *(v137 + 72);
      v33 = _swiftEmptyArrayStorage;
      do
      {
        sub_1001CC14C(v32, v22, type metadata accessor for MagicPairingSettingsRecord);
        v34 = *v31 == 0xD000000000000011 && 0x8000000100267AA0 == *(v31 + 1);
        if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          sub_1001CC1B4(v22, type metadata accessor for MagicPairingSettingsRecord);
        }

        else
        {
          v23 = sub_10010CFB8();
          sub_1001CC1B4(v22, type metadata accessor for MagicPairingSettingsRecord);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v152 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v152 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v151 = *((v152 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v33 = v152;
        }

        v32 += v25;
        --v30;
      }

      while (v30);

      v2 = v142;
    }

    else
    {

      v33 = _swiftEmptyArrayStorage;
    }

    v48 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
    swift_beginAccess();
    v49 = *(v2 + v48);
    if (v49 >> 62)
    {
      v50 = _CocoaArrayWrapper.endIndex.getter();
      if (!v50)
      {
      }
    }

    else
    {
      v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v50)
      {
      }
    }

    if (v50 >= 1)
    {

      for (i = 0; i != v50; ++i)
      {
        if ((v49 & 0xC000000000000001) != 0)
        {
          v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v52 = *(v49 + 8 * i + 32);
          swift_unknownObjectRetain();
        }

        if ([v52 respondsToSelector:"magicPairingRecordsUpdatedWithRecords:"])
        {
          sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
          swift_unknownObjectRetain();
          isa = Array._bridgeToObjectiveC()().super.isa;
          [v52 magicPairingRecordsUpdatedWithRecords:isa];
          swift_unknownObjectRelease_n();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      goto LABEL_210;
    }

    goto LABEL_127;
  }

  v35 = sub_10017E820(a1, sub_1001C4E14);
  if (!v35)
  {
    v59 = sub_10017E820(a1, sub_1001C4DD0);
    if (v59)
    {
      v152 = _swiftEmptyArrayStorage;
      v60 = v59[2];
      if (v60)
      {
        v61 = v59 + ((*(v146 + 80) + 32) & ~*(v146 + 80));
        v62 = *(v146 + 72);
        do
        {
          sub_1001CC14C(v61, v12, type metadata accessor for DeviceSupportInformationRecord);
          sub_100109B20();
          sub_1001CC1B4(v12, type metadata accessor for DeviceSupportInformationRecord);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v152 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v152 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v2 = v142;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v61 += v62;
          --v60;
        }

        while (v60);
      }

      v90 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
      swift_beginAccess();
      v33 = *(v2 + v90);
      if (v33 >> 62)
      {
        goto LABEL_165;
      }

      a1 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a1)
      {
        goto LABEL_94;
      }
    }

    v63 = sub_10017E820(a1, sub_1001C4E78);
    if (v63)
    {
      if (v63[2])
      {
        sub_1001CC14C(v63 + ((*(v134 + 80) + 32) & ~*(v134 + 80)), v147, type metadata accessor for LegacyMagicPairingSettingsRecords);

        v25 = sub_10013B008();
        swift_unknownObjectWeakInit();
        v153 = _swiftEmptyArrayStorage;
        if (v25 >> 62)
        {
          v50 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v50 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        swift_beginAccess();
        v33 = _swiftEmptyArrayStorage;
        if (v50)
        {
          v64 = 0;
          v151 = (v25 & 0xC000000000000001);
          v146 = v25 & 0xFFFFFFFFFFFFFF8;
          v143 = (v135 + 1);
          v144 = (v135 + 2);
          v140 = v25;
          v141 = v4;
          v145 = v50;
          while (1)
          {
            if (v151)
            {
              v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v64 >= *(v146 + 16))
              {
                goto LABEL_126;
              }

              v65 = *(v25 + 8 * v64 + 32);
            }

            v66 = v65;
            v67 = v64 + 1;
            if (__OFADD__(v64, 1))
            {
              break;
            }

            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v69 = Strong;
              sub_100103934();
              v23 = objc_opt_self();
              if ([v23 isFirstUnlocked])
              {
                sub_100192340();
                if (qword_1002F79E8 != -1)
                {
                  swift_once();
                }

                v70 = v139;
                v71 = sub_1000EE91C(v139, qword_100300B80);
                v72 = v138;
                (*v144)(v138, v71, v70);
                v73 = sub_10018F6C8(v72);

                (*v143)(v72, v70);
                if (v73[2])
                {
                  v74 = v148;
                  sub_1001CC14C(v73 + ((*(v150 + 80) + 32) & ~*(v150 + 80)), v148, type metadata accessor for LegacyAccountMagicKeysRecord);

                  v75 = Data.subdata(in:)();
                  v77 = v76;
                  sub_1001CC1B4(v74, type metadata accessor for LegacyAccountMagicKeysRecord);
                  v78.super.isa = Data._bridgeToObjectiveC()().super.isa;
                  sub_1000EF870(v75, v77);
                }

                else
                {

                  v78.super.isa = 0;
                }

                v25 = v140;
                v50 = v145;
              }

              else
              {
                v79 = static os_log_type_t.error.getter();
                if (qword_1002F7AE8 != -1)
                {
                  v88 = v79;
                  swift_once();
                  v79 = v88;
                }

                os_log(_:dso:log:_:_:)(v79, &_mh_execute_header, qword_100300E38, "AccountMagicKeysRecord call failed because in device is in beforeFirstUnlock state", 82, 2, _swiftEmptyArrayStorage);

                v78.super.isa = 0;
              }

              [v66 setMasterKey:v78.super.isa];

              if ([v23 isFirstUnlocked])
              {
                sub_100192340();
                if (qword_1002F79E8 != -1)
                {
                  swift_once();
                }

                v80 = v139;
                v81 = sub_1000EE91C(v139, qword_100300B80);
                v82 = v138;
                (*v144)(v138, v81, v80);
                v23 = sub_10018F6C8(v82);

                (*v143)(v82, v80);
                if (v23[2])
                {
                  v83 = v149;
                  sub_1001CC14C(v23 + ((*(v150 + 80) + 32) & ~*(v150 + 80)), v149, type metadata accessor for LegacyAccountMagicKeysRecord);

                  v23 = Data.subdata(in:)();
                  v85 = v84;
                  sub_1001CC1B4(v83, type metadata accessor for LegacyAccountMagicKeysRecord);
                  v86.super.isa = Data._bridgeToObjectiveC()().super.isa;
                  sub_1000EF870(v23, v85);
                }

                else
                {

                  v86.super.isa = 0;
                }

                v50 = v145;
              }

              else
              {
                v87 = static os_log_type_t.error.getter();
                if (qword_1002F7AE8 != -1)
                {
                  v89 = v87;
                  swift_once();
                  v87 = v89;
                }

                os_log(_:dso:log:_:_:)(v87, &_mh_execute_header, qword_100300E38, "AccountMagicKeysRecord call failed because in device is in beforeFirstUnlock state", 82, 2, _swiftEmptyArrayStorage);

                v86.super.isa = 0;
              }

              [v66 setMasterHint:v86.super.isa];

              v2 = v142;
            }

            v33 = &v153;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v153 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v153 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v23 = *((v153 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            ++v64;
            if (v67 == v50)
            {
              goto LABEL_105;
            }
          }

          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

LABEL_105:

        swift_unknownObjectWeakDestroy();
        v94 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
        result = swift_beginAccess();
        v151 = v94;
        v96 = *(v94 + v2);
        if (v96 >> 62)
        {
          result = _CocoaArrayWrapper.endIndex.getter();
          v97 = result;
          if (result)
          {
            goto LABEL_107;
          }
        }

        else
        {
          v97 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v97)
          {
LABEL_107:
            if (v97 < 1)
            {
              __break(1u);
              goto LABEL_213;
            }

            for (j = 0; j != v97; ++j)
            {
              if ((v96 & 0xC000000000000001) != 0)
              {
                v99 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v99 = *(v96 + 8 * j + 32);
                swift_unknownObjectRetain();
              }

              if ([v99 respondsToSelector:"magicPairingRecordsUpdatedWithRecords:"])
              {
                sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
                swift_unknownObjectRetain();
                v100 = Array._bridgeToObjectiveC()().super.isa;
                [v99 magicPairingRecordsUpdatedWithRecords:v100];
                swift_unknownObjectRelease_n();
              }

              else
              {
                swift_unknownObjectRelease();
              }
            }
          }
        }

        v117 = sub_10013B008();
        v118 = v117;
        v153 = _swiftEmptyArrayStorage;
        if (v117 >> 62)
        {
          goto LABEL_193;
        }

        for (k = *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10); k; k = _CocoaArrayWrapper.endIndex.getter())
        {
          v120 = 0;
          while (1)
          {
            if ((v118 & 0xC000000000000001) != 0)
            {
              v121 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v120 >= *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_192;
              }

              v121 = *(v118 + 8 * v120 + 32);
            }

            v122 = v121;
            v123 = v120 + 1;
            if (__OFADD__(v120, 1))
            {
              break;
            }

            v124 = [v121 bluetoothAddress];
            if (!v124)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v124 = String._bridgeToObjectiveC()();
            }

            v125 = [objc_allocWithZone(BTCloudDevice) initWithBluetoothAddress:v124];

            v126 = [v122 name];
            [v125 setNickname:v126];

            v127 = [v122 productID];
            [v125 setProductID:v127];

            v128 = [v122 vendorID];
            [v125 setVendorID:v128];

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v153 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v153 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            ++v120;
            if (v123 == k)
            {
              goto LABEL_194;
            }
          }

          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          ;
        }

LABEL_194:

        v101 = *(v151 + v142);
        if (v101 >> 62)
        {
          goto LABEL_207;
        }

        v129 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v129)
        {
          goto LABEL_196;
        }

LABEL_208:

LABEL_209:
        sub_1001CC1B4(v147, type metadata accessor for LegacyMagicPairingSettingsRecords);
LABEL_210:
      }
    }

    v152 = _swiftEmptyArrayStorage;
    if (a1 >> 62)
    {
      goto LABEL_168;
    }

    v101 = a1 & 0xFFFFFFFFFFFFFF8;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_120;
    }

LABEL_172:
    sub_1000F16CC(v152);
  }

  v33 = _swiftEmptyArrayStorage;
  v152 = _swiftEmptyArrayStorage;
  v36 = v35[2];
  v149 = v36;
  v150 = v35;
  if (v36)
  {
    v37 = *(v136 + 28);
    v148 = v151 + *(v136 + 24);
    v147 = v151 + v37;
    v38 = v35 + ((*(v143 + 80) + 32) & ~*(v143 + 80));
    v146 = v143[9];
    do
    {
      v39 = v151;
      sub_1001CC14C(v38, v151, type metadata accessor for DeviceRecord);
      v40 = objc_allocWithZone(BTCloudDevice);
      v41 = String._bridgeToObjectiveC()();
      v42 = [v40 initWithBluetoothAddress:v41];

      v43 = String._bridgeToObjectiveC()();
      [v42 setNickname:v43];

      v44 = String._bridgeToObjectiveC()();
      [v42 setModelNumber:v44];

      v45 = String._bridgeToObjectiveC()();
      [v42 setManufacturer:v45];

      v46 = String._bridgeToObjectiveC()();
      [v42 setProductID:v46];

      v47 = String._bridgeToObjectiveC()();
      [v42 setVendorID:v47];

      sub_1001CC1B4(v39, type metadata accessor for DeviceRecord);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v152 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v152 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v38 += v146;
      --v36;
    }

    while (v36);
    v33 = v152;
    v2 = v142;
  }

  v54 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
  swift_beginAccess();
  v134 = v54;
  v50 = *(v2 + v54);
  v25 = v140;
  v23 = v145;
  if (v50 >> 62)
  {
LABEL_128:
    v55 = _CocoaArrayWrapper.endIndex.getter();
    if (!v55)
    {
      goto LABEL_129;
    }

LABEL_38:
    if (v55 < 1)
    {
      goto LABEL_164;
    }

    for (m = 0; m != v55; ++m)
    {
      if ((v50 & 0xC000000000000001) != 0)
      {
        v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v57 = *(v50 + 8 * m + 32);
        swift_unknownObjectRetain();
      }

      if ([v57 respondsToSelector:"devicesUpdatedWithRecords:"])
      {
        sub_1000FA784(0, &qword_1002F9CD0, BTCloudDevice_ptr);
        swift_unknownObjectRetain();
        v58 = Array._bridgeToObjectiveC()().super.isa;
        [v57 devicesUpdatedWithRecords:v58];
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v2 = v142;
    v25 = v140;
    v23 = v145;
    goto LABEL_129;
  }

  v55 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v55)
  {
    goto LABEL_38;
  }

LABEL_129:

  v33 = v143;
  if (!v149)
  {
  }

  v102 = 0;
  v151 = (v23 + *(v136 + 24));
  v103 = v150;
  v147 = v150 + ((*(v143 + 80) + 32) & ~*(v143 + 80));
  v148 = 0x8000000100267AA0;
  v136 = (v135 + 2);
  ++v135;
  v146 = v137 + 48;
  v137 = xmmword_1002290F0;
  while (v102 < v103[2])
  {
    sub_1001CC14C(v147 + *(v33 + 72) * v102, v23, type metadata accessor for DeviceRecord);
    v104 = *v151 == 0xD000000000000011 && v148 == v151[1];
    if (v104 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_132;
    }

    sub_100103934();
    if ([objc_opt_self() isFirstUnlocked])
    {
      sub_100192340();
      if (qword_1002F7A00 != -1)
      {
        swift_once();
      }

      v105 = v139;
      v106 = sub_1000EE91C(v139, qword_100300BA8);
      v107 = v138;
      (*v136)(v138, v106, v105);
      v108 = sub_10018C984(v107);

      v109 = (*v135)(v107, v105);
    }

    else
    {
      v110 = static os_log_type_t.error.getter();
      if (qword_1002F7AE8 != -1)
      {
        v116 = v110;
        swift_once();
        v110 = v116;
      }

      v108 = _swiftEmptyArrayStorage;
      os_log(_:dso:log:_:_:)(v110, &_mh_execute_header, qword_100300E38, "magicPairingSettingsRecords call failed because in device is in beforeFirstUnlock state", 87, 2, _swiftEmptyArrayStorage);
    }

    __chkstk_darwin(v109);
    v23 = v145;
    *(&v133 - 2) = v145;
    sub_10017D118(sub_1001CE134, v108, type metadata accessor for MagicPairingSettingsRecord, type metadata accessor for MagicPairingSettingsRecord, type metadata accessor for MagicPairingSettingsRecord, type metadata accessor for MagicPairingSettingsRecord, v25);

    if ((*v146)(v25, 1, v144) != 1)
    {
      sub_1001CC214(v25, v141, type metadata accessor for MagicPairingSettingsRecord);
      sub_1000EE870(&qword_1002F9350, &qword_1002292D0);
      v111 = swift_allocObject();
      *(v111 + 16) = v137;
      *(v111 + 32) = sub_10010CFB8();
      v33 = *(v2 + v134);
      if (v33 >> 62)
      {
        v112 = _CocoaArrayWrapper.endIndex.getter();
        if (!v112)
        {
          goto LABEL_159;
        }

LABEL_149:
        if (v112 < 1)
        {
          goto LABEL_163;
        }

        for (n = 0; n != v112; ++n)
        {
          if ((v33 & 0xC000000000000001) != 0)
          {
            v114 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v114 = *(v33 + 8 * n + 32);
            swift_unknownObjectRetain();
          }

          if ([v114 respondsToSelector:"magicPairingRecordsUpdatedWithRecords:"])
          {
            sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
            swift_unknownObjectRetain();
            v115 = Array._bridgeToObjectiveC()().super.isa;
            [v114 magicPairingRecordsUpdatedWithRecords:v115];
            swift_unknownObjectRelease_n();
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }
      }

      else
      {
        v112 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v112)
        {
          goto LABEL_149;
        }

LABEL_159:
      }

      sub_1001CC1B4(v141, type metadata accessor for MagicPairingSettingsRecord);

      v2 = v142;
      v33 = v143;
      v25 = v140;
      v23 = v145;
      goto LABEL_132;
    }

    sub_1000EEE6C(v25, &unk_1002F9C30, &qword_1002299A0);
    v33 = v143;
LABEL_132:
    ++v102;
    sub_1001CC1B4(v23, type metadata accessor for DeviceRecord);
    v103 = v150;
    if (v102 == v149)
    {
    }
  }

  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  a1 = _CocoaArrayWrapper.endIndex.getter();
  if (!a1)
  {
  }

LABEL_94:
  if (a1 >= 1)
  {

    v91 = 0;
    do
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        v92 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v92 = *(v33 + 8 * v91 + 32);
        swift_unknownObjectRetain();
      }

      if ([v92 respondsToSelector:"deviceSupportInformationRecordsUpdatedWithRecords:"])
      {
        sub_1000FA784(0, &qword_1002F8518, BTCloudDeviceSupportInformation_ptr);
        swift_unknownObjectRetain();
        v93 = Array._bridgeToObjectiveC()().super.isa;
        [v92 deviceSupportInformationRecordsUpdatedWithRecords:v93];
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v91;
    }

    while (a1 != v91);
  }

  __break(1u);
LABEL_168:
  if (a1 < 0)
  {
    v101 = a1;
  }

  else
  {
    v101 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  _CocoaArrayWrapper.endIndex.getter();
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_172;
  }

LABEL_120:
  if ((a1 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    swift_unknownObjectRelease();
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
  }

  __break(1u);
LABEL_207:
  result = _CocoaArrayWrapper.endIndex.getter();
  v129 = result;
  if (!result)
  {
    goto LABEL_208;
  }

LABEL_196:
  if (v129 >= 1)
  {

    for (ii = 0; ii != v129; ++ii)
    {
      if ((v101 & 0xC000000000000001) != 0)
      {
        v131 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v131 = *(v101 + 8 * ii + 32);
        swift_unknownObjectRetain();
      }

      if ([v131 respondsToSelector:"devicesUpdatedWithRecords:"])
      {
        sub_1000FA784(0, &qword_1002F9CD0, BTCloudDevice_ptr);
        swift_unknownObjectRetain();
        v132 = Array._bridgeToObjectiveC()().super.isa;
        [v131 devicesUpdatedWithRecords:v132];
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    goto LABEL_209;
  }

LABEL_213:
  __break(1u);
  return result;
}

uint64_t sub_10017B128(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LegacyAccountMagicKeysRecord(0);
  v147 = *(v4 - 8);
  v148 = v4;
  __chkstk_darwin(v4);
  v146 = &v132 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v145 = &v132 - v7;
  v8 = type metadata accessor for LegacyMagicPairingSettingsRecords(0);
  v143 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v10 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DeviceSupportInformationRecord(0);
  v144 = *(v11 - 8);
  __chkstk_darwin(v11 - 8);
  v13 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for URL();
  v132 = *(v136 - 8);
  __chkstk_darwin(v136);
  v135 = &v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000EE870(&unk_1002F9C30, &qword_1002299A0);
  __chkstk_darwin(v15 - 8);
  v137 = &v132 - v16;
  v133 = type metadata accessor for DeviceRecord(0);
  v140 = *(v133 - 8);
  __chkstk_darwin(v133);
  v142 = (&v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v149 = (&v132 - v19);
  v141 = type metadata accessor for MagicPairingSettingsRecord(0);
  *&v134 = *(v141 - 8);
  __chkstk_darwin(v141);
  v138 = &v132 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v132 - v22;
  v24 = static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  v25 = qword_100300E30;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100226100;
  type metadata accessor for AADeviceRecord(0);
  v27 = Array.description.getter();
  v29 = v28;
  *(v26 + 56) = &type metadata for String;
  *(v26 + 64) = sub_1000EE954();
  *(v26 + 32) = v27;
  *(v26 + 40) = v29;
  os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, v25, "records Updated: %@", 19, 2, v26);

  v30 = sub_10017E820(a1, sub_1001C4D8C);
  v139 = v2;
  if (v30)
  {
    v150 = _swiftEmptyArrayStorage;
    v31 = v30[2];
    if (v31)
    {
      v32 = &v23[*(v141 + 24)];
      v33 = v30 + ((*(v134 + 80) + 32) & ~*(v134 + 80));
      v26 = *(v134 + 72);
      v34 = _swiftEmptyArrayStorage;
      do
      {
        sub_1001CC14C(v33, v23, type metadata accessor for MagicPairingSettingsRecord);
        v35 = *v32 == 0xD000000000000011 && 0x8000000100267AA0 == *(v32 + 1);
        if (v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          sub_1001CC1B4(v23, type metadata accessor for MagicPairingSettingsRecord);
        }

        else
        {
          v24 = sub_10010CFB8();
          sub_1001CC1B4(v23, type metadata accessor for MagicPairingSettingsRecord);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v150 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v149 = *((v150 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v34 = v150;
        }

        v33 += v26;
        --v31;
      }

      while (v31);

      v2 = v139;
    }

    else
    {

      v34 = _swiftEmptyArrayStorage;
    }

    v49 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
    swift_beginAccess();
    v50 = *(v2 + v49);
    if (v50 >> 62)
    {
      v51 = _CocoaArrayWrapper.endIndex.getter();
      if (!v51)
      {
      }
    }

    else
    {
      v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v51)
      {
      }
    }

    if (v51 >= 1)
    {

      for (i = 0; i != v51; ++i)
      {
        if ((v50 & 0xC000000000000001) != 0)
        {
          v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v53 = *(v50 + 8 * i + 32);
          swift_unknownObjectRetain();
        }

        if ([v53 respondsToSelector:"magicPairingRecordsUpdatedWithRecords:"])
        {
          sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
          swift_unknownObjectRetain();
          isa = Array._bridgeToObjectiveC()().super.isa;
          [v53 magicPairingRecordsUpdatedWithRecords:isa];
          swift_unknownObjectRelease_n();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      goto LABEL_199;
    }

    goto LABEL_125;
  }

  v36 = sub_10017E820(a1, sub_1001C4E14);
  if (v36)
  {
    v34 = _swiftEmptyArrayStorage;
    v150 = _swiftEmptyArrayStorage;
    v37 = v36[2];
    v147 = v37;
    v148 = v36;
    if (v37)
    {
      v38 = *(v133 + 28);
      v146 = v149 + *(v133 + 24);
      v145 = v149 + v38;
      v144 = v149 + *(v133 + 32);
      v39 = v36 + ((*(v140 + 80) + 32) & ~*(v140 + 80));
      v143 = *(v140 + 72);
      v40 = v149;
      do
      {
        sub_1001CC14C(v39, v40, type metadata accessor for DeviceRecord);
        v41 = objc_allocWithZone(BTCloudDevice);
        v42 = String._bridgeToObjectiveC()();
        v43 = [v41 initWithBluetoothAddress:v42];

        v44 = String._bridgeToObjectiveC()();
        [v43 setNickname:v44];

        v45 = String._bridgeToObjectiveC()();
        [v43 setModelNumber:v45];

        v46 = String._bridgeToObjectiveC()();
        [v43 setManufacturer:v46];

        v47 = String._bridgeToObjectiveC()();
        [v43 setProductID:v47];

        v48 = String._bridgeToObjectiveC()();
        [v43 setVendorID:v48];

        sub_1001CC1B4(v40, type metadata accessor for DeviceRecord);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v150 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v39 += v143;
        --v37;
      }

      while (v37);
      v34 = v150;
      v2 = v139;
    }

    v55 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
    swift_beginAccess();
    v143 = v55;
    v51 = *(v2 + v55);
    v26 = v137;
    v24 = v142;
    if (!(v51 >> 62))
    {
      v56 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v56)
      {
LABEL_127:

        v34 = v140;
        if (!v147)
        {
        }

        v102 = 0;
        v149 = (v24 + *(v133 + 24));
        v103 = v148;
        v145 = v148 + ((*(v140 + 80) + 32) & ~*(v140 + 80));
        v146 = 0x8000000100267AA0;
        v133 = (v132 + 2);
        ++v132;
        v144 = v134 + 48;
        v134 = xmmword_1002290F0;
        while (1)
        {
          if (v102 >= v103[2])
          {
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            v10 = _CocoaArrayWrapper.endIndex.getter();
            if (!v10)
            {
            }

LABEL_94:
            if (v10 >= 1)
            {

              for (j = 0; j != v10; ++j)
              {
                if ((v34 & 0xC000000000000001) != 0)
                {
                  v93 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v93 = *(v34 + 8 * j + 32);
                  swift_unknownObjectRetain();
                }

                if ([v93 respondsToSelector:{"deviceSupportInformationRecordsUpdatedWithRecords:", v132}])
                {
                  sub_1000FA784(0, &qword_1002F8518, BTCloudDeviceSupportInformation_ptr);
                  swift_unknownObjectRetain();
                  v94 = Array._bridgeToObjectiveC()().super.isa;
                  [v93 deviceSupportInformationRecordsUpdatedWithRecords:v94];
                  swift_unknownObjectRelease_n();
                }

                else
                {
                  swift_unknownObjectRelease();
                }
              }
            }

            __break(1u);
LABEL_166:
            v64 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_59;
          }

          sub_1001CC14C(v145 + *(v34 + 72) * v102, v24, type metadata accessor for DeviceRecord);
          v104 = *v149 == 0xD000000000000011 && v146 == v149[1];
          if (!v104 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            sub_100103934();
            if ([objc_opt_self() isFirstUnlocked])
            {
              sub_100192340();
              if (qword_1002F7A00 != -1)
              {
                swift_once();
              }

              v105 = v136;
              v106 = sub_1000EE91C(v136, qword_100300BA8);
              v107 = v135;
              (*v133)(v135, v106, v105);
              v108 = sub_10018C984(v107);

              v109 = (*v132)(v107, v105);
            }

            else
            {
              v110 = static os_log_type_t.error.getter();
              if (qword_1002F7AE8 != -1)
              {
                v114 = v110;
                swift_once();
                v110 = v114;
              }

              v108 = _swiftEmptyArrayStorage;
              os_log(_:dso:log:_:_:)(v110, &_mh_execute_header, qword_100300E38, "magicPairingSettingsRecords call failed because in device is in beforeFirstUnlock state", 87, 2, _swiftEmptyArrayStorage, v132);
            }

            __chkstk_darwin(v109);
            v24 = v142;
            *(&v132 - 2) = v142;
            sub_10017D118(sub_1001CE134, v108, type metadata accessor for MagicPairingSettingsRecord, type metadata accessor for MagicPairingSettingsRecord, type metadata accessor for MagicPairingSettingsRecord, type metadata accessor for MagicPairingSettingsRecord, v26);

            if ((*v144)(v26, 1, v141) != 1)
            {
              sub_1001CC214(v26, v138, type metadata accessor for MagicPairingSettingsRecord);
              sub_1000EE870(&qword_1002F9350, &qword_1002292D0);
              v26 = swift_allocObject();
              *(v26 + 16) = v134;
              *(v26 + 32) = sub_10010CFB8();
              v34 = *(v2 + v143);
              if (v34 >> 62)
              {
                v24 = _CocoaArrayWrapper.endIndex.getter();
                if (!v24)
                {
                  goto LABEL_157;
                }

LABEL_147:
                if (v24 < 1)
                {
                  goto LABEL_161;
                }

                for (k = 0; k != v24; ++k)
                {
                  if ((v34 & 0xC000000000000001) != 0)
                  {
                    v112 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    v112 = *(v34 + 8 * k + 32);
                    swift_unknownObjectRetain();
                  }

                  if ([v112 respondsToSelector:{"magicPairingRecordsUpdatedWithRecords:", v132}])
                  {
                    sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
                    swift_unknownObjectRetain();
                    v113 = Array._bridgeToObjectiveC()().super.isa;
                    [v112 magicPairingRecordsUpdatedWithRecords:v113];
                    swift_unknownObjectRelease_n();
                  }

                  else
                  {
                    swift_unknownObjectRelease();
                  }
                }
              }

              else
              {
                v24 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v24)
                {
                  goto LABEL_147;
                }

LABEL_157:
              }

              sub_1001CC1B4(v138, type metadata accessor for MagicPairingSettingsRecord);

              v2 = v139;
              v34 = v140;
              v26 = v137;
              v24 = v142;
              goto LABEL_130;
            }

            sub_1000EEE6C(v26, &unk_1002F9C30, &qword_1002299A0);
            v34 = v140;
          }

LABEL_130:
          ++v102;
          sub_1001CC1B4(v24, type metadata accessor for DeviceRecord);
          v103 = v148;
          if (v102 == v147)
          {
          }
        }
      }

LABEL_38:
      if (v56 < 1)
      {
        goto LABEL_162;
      }

      for (m = 0; m != v56; ++m)
      {
        if ((v51 & 0xC000000000000001) != 0)
        {
          v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v58 = *(v51 + 8 * m + 32);
          swift_unknownObjectRetain();
        }

        if ([v58 respondsToSelector:{"devicesUpdatedWithRecords:", v132}])
        {
          sub_1000FA784(0, &qword_1002F9CD0, BTCloudDevice_ptr);
          swift_unknownObjectRetain();
          v59 = Array._bridgeToObjectiveC()().super.isa;
          [v58 devicesUpdatedWithRecords:v59];
          swift_unknownObjectRelease_n();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      v2 = v139;
      v26 = v137;
      v24 = v142;
      goto LABEL_127;
    }

LABEL_126:
    v56 = _CocoaArrayWrapper.endIndex.getter();
    if (!v56)
    {
      goto LABEL_127;
    }

    goto LABEL_38;
  }

  v60 = sub_10017E820(a1, sub_1001C4DD0);
  if (!v60)
  {
    v63 = sub_10017E820(a1, sub_1001C4E78);
    if (v63)
    {
      if (v63[2])
      {
        sub_1001CC14C(v63 + ((*(v143 + 80) + 32) & ~*(v143 + 80)), v10, type metadata accessor for LegacyMagicPairingSettingsRecords);

        v26 = sub_10013B008();
        swift_unknownObjectWeakInit();
        v151 = _swiftEmptyArrayStorage;
        if (v26 >> 62)
        {
          goto LABEL_166;
        }

        v64 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_59:
        swift_beginAccess();
        v34 = _swiftEmptyArrayStorage;
        v138 = v10;
        if (v64)
        {
          v65 = 0;
          v149 = (v26 & 0xC000000000000001);
          v144 = v26 & 0xFFFFFFFFFFFFFF8;
          v141 = (v132 + 1);
          v142 = v132 + 2;
          v51 = &selRef_initializedCKAfterFirstUnlockedSinceBoot;
          v143 = v64;
          v140 = v26;
          while (1)
          {
            if (v149)
            {
              v66 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v65 >= *(v144 + 16))
              {
                goto LABEL_124;
              }

              v66 = *(v26 + 8 * v65 + 32);
            }

            v67 = v66;
            v68 = v65 + 1;
            if (__OFADD__(v65, 1))
            {
              break;
            }

            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v70 = Strong;
              sub_100103934();
              v24 = objc_opt_self();
              if ([v24 *(v51 + 272)])
              {
                sub_100192340();
                if (qword_1002F79E8 != -1)
                {
                  swift_once();
                }

                v71 = v136;
                v72 = sub_1000EE91C(v136, qword_100300B80);
                v73 = v135;
                (*v142)(v135, v72, v71);
                v74 = sub_10018F6C8(v73);

                (*v141)(v73, v71);
                if (v74[2])
                {
                  v75 = v145;
                  sub_1001CC14C(v74 + ((*(v147 + 80) + 32) & ~*(v147 + 80)), v145, type metadata accessor for LegacyAccountMagicKeysRecord);

                  v76 = Data.subdata(in:)();
                  v78 = v77;
                  sub_1001CC1B4(v75, type metadata accessor for LegacyAccountMagicKeysRecord);
                  v79.super.isa = Data._bridgeToObjectiveC()().super.isa;
                  sub_1000EF870(v76, v78);
                }

                else
                {

                  v79.super.isa = 0;
                }

                v26 = v140;
                v64 = v143;
                v51 = &selRef_initializedCKAfterFirstUnlockedSinceBoot;
              }

              else
              {
                v80 = static os_log_type_t.error.getter();
                if (qword_1002F7AE8 != -1)
                {
                  v89 = v80;
                  swift_once();
                  v80 = v89;
                }

                os_log(_:dso:log:_:_:)(v80, &_mh_execute_header, qword_100300E38, "AccountMagicKeysRecord call failed because in device is in beforeFirstUnlock state", 82, 2, _swiftEmptyArrayStorage, v132);

                v79.super.isa = 0;
              }

              [v67 setMasterKey:{v79.super.isa, v132}];

              if ([v24 *(v51 + 272)])
              {
                sub_100192340();
                if (qword_1002F79E8 != -1)
                {
                  swift_once();
                }

                v81 = v136;
                v82 = sub_1000EE91C(v136, qword_100300B80);
                v83 = v135;
                (*v142)(v135, v82, v81);
                v24 = sub_10018F6C8(v83);

                (*v141)(v83, v81);
                if (*(v24 + 16))
                {
                  v84 = v146;
                  sub_1001CC14C(v24 + ((*(v147 + 80) + 32) & ~*(v147 + 80)), v146, type metadata accessor for LegacyAccountMagicKeysRecord);

                  v24 = Data.subdata(in:)();
                  v86 = v85;
                  sub_1001CC1B4(v84, type metadata accessor for LegacyAccountMagicKeysRecord);
                  v87.super.isa = Data._bridgeToObjectiveC()().super.isa;
                  sub_1000EF870(v24, v86);
                }

                else
                {

                  v87.super.isa = 0;
                }

                v64 = v143;
                v51 = 0x1002EE000;
              }

              else
              {
                v88 = static os_log_type_t.error.getter();
                if (qword_1002F7AE8 != -1)
                {
                  v90 = v88;
                  swift_once();
                  v88 = v90;
                }

                os_log(_:dso:log:_:_:)(v88, &_mh_execute_header, qword_100300E38, "AccountMagicKeysRecord call failed because in device is in beforeFirstUnlock state", 82, 2, _swiftEmptyArrayStorage);

                v87.super.isa = 0;
              }

              [v67 setMasterHint:v87.super.isa];

              v2 = v139;
            }

            v34 = &v151;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v151 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v151 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v24 = *((v151 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            ++v65;
            if (v68 == v64)
            {
              goto LABEL_105;
            }
          }

          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

LABEL_105:

        swift_unknownObjectWeakDestroy();
        v95 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
        result = swift_beginAccess();
        v149 = v95;
        v97 = *(v2 + v95);
        if (v97 >> 62)
        {
          result = _CocoaArrayWrapper.endIndex.getter();
          v98 = result;
          if (!result)
          {
            goto LABEL_168;
          }
        }

        else
        {
          v98 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v98)
          {
            goto LABEL_168;
          }
        }

        if (v98 < 1)
        {
          __break(1u);
          goto LABEL_202;
        }

        for (n = 0; n != v98; ++n)
        {
          if ((v97 & 0xC000000000000001) != 0)
          {
            v100 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v100 = *(v97 + 8 * n + 32);
            swift_unknownObjectRetain();
          }

          if ([v100 respondsToSelector:{"magicPairingRecordsUpdatedWithRecords:", v132}])
          {
            sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
            swift_unknownObjectRetain();
            v101 = Array._bridgeToObjectiveC()().super.isa;
            [v100 magicPairingRecordsUpdatedWithRecords:v101];
            swift_unknownObjectRelease_n();
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

LABEL_168:

        v115 = sub_10013B008();
        v116 = v115;
        v151 = _swiftEmptyArrayStorage;
        if (v115 >> 62)
        {
          goto LABEL_184;
        }

        for (ii = *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10); ii; ii = _CocoaArrayWrapper.endIndex.getter())
        {
          v118 = 0;
          while (1)
          {
            if ((v116 & 0xC000000000000001) != 0)
            {
              v119 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v118 >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_183;
              }

              v119 = *(v116 + 8 * v118 + 32);
            }

            v120 = v119;
            v121 = v118 + 1;
            if (__OFADD__(v118, 1))
            {
              break;
            }

            v122 = [v119 bluetoothAddress];
            if (!v122)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v122 = String._bridgeToObjectiveC()();
            }

            v123 = [objc_allocWithZone(BTCloudDevice) initWithBluetoothAddress:v122];

            v124 = [v120 name];
            [v123 setNickname:v124];

            v125 = [v120 productID];
            [v123 setProductID:v125];

            v126 = [v120 vendorID];
            [v123 setVendorID:v126];

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v151 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v151 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            ++v118;
            if (v121 == ii)
            {
              goto LABEL_185;
            }
          }

          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          ;
        }

LABEL_185:

        v127 = *(v149 + v139);
        if (v127 >> 62)
        {
          result = _CocoaArrayWrapper.endIndex.getter();
          v128 = result;
          if (result)
          {
LABEL_187:
            if (v128 >= 1)
            {

              for (jj = 0; jj != v128; ++jj)
              {
                if ((v127 & 0xC000000000000001) != 0)
                {
                  v130 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v130 = *(v127 + 8 * jj + 32);
                  swift_unknownObjectRetain();
                }

                if ([v130 respondsToSelector:{"devicesUpdatedWithRecords:", v132}])
                {
                  sub_1000FA784(0, &qword_1002F9CD0, BTCloudDevice_ptr);
                  swift_unknownObjectRetain();
                  v131 = Array._bridgeToObjectiveC()().super.isa;
                  [v130 devicesUpdatedWithRecords:v131];
                  swift_unknownObjectRelease_n();
                }

                else
                {
                  swift_unknownObjectRelease();
                }
              }

              goto LABEL_198;
            }

LABEL_202:
            __break(1u);
            return result;
          }
        }

        else
        {
          v128 = *((v127 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v128)
          {
            goto LABEL_187;
          }
        }

LABEL_198:
        sub_1001CC1B4(v138, type metadata accessor for LegacyMagicPairingSettingsRecords);
LABEL_199:
      }
    }

    return sub_1000F16CC(a1);
  }

  v150 = _swiftEmptyArrayStorage;
  v61 = v60[2];
  if (v61)
  {
    v62 = v60 + ((*(v144 + 80) + 32) & ~*(v144 + 80));
    v24 = *(v144 + 72);
    do
    {
      sub_1001CC14C(v62, v13, type metadata accessor for DeviceSupportInformationRecord);
      sub_100109B20();
      sub_1001CC1B4(v13, type metadata accessor for DeviceSupportInformationRecord);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v150 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v62 += v24;
      --v61;
    }

    while (v61);
  }

  v91 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
  swift_beginAccess();
  v34 = *(v2 + v91);
  if (v34 >> 62)
  {
    goto LABEL_163;
  }

  v10 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10)
  {
    goto LABEL_94;
  }
}

uint64_t sub_10017CE74(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10017CF20(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_10017D118@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t (*a6)(void)@<X6>, uint64_t a7@<X8>)
{
  v29 = a6;
  v13 = a3(0);
  v16 = __chkstk_darwin(v13);
  v18 = &v25 - v17;
  v19 = *(a2 + 16);
  if (v19)
  {
    v27 = v14;
    v28 = a7;
    v20 = a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v26 = v15;
    v21 = *(v15 + 72);
    while (1)
    {
      sub_1001CC14C(v20, v18, a4);
      v22 = a1(v18);
      if (v7)
      {
        return sub_1001CC1B4(v18, a5);
      }

      if (v22)
      {
        break;
      }

      sub_1001CC1B4(v18, a5);
      v20 += v21;
      if (!--v19)
      {
        v23 = 1;
        a7 = v28;
        goto LABEL_10;
      }
    }

    a7 = v28;
    sub_1001CC214(v18, v28, v29);
    v23 = 0;
LABEL_10:
    v15 = v26;
    v14 = v27;
  }

  else
  {
    v23 = 1;
  }

  return (*(v15 + 56))(a7, v23, 1, v14, v16);
}

void *sub_10017D320(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

void *sub_10017D434(unint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v9 = [v6 bluetoothAddress];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = (a2 + *(a3(0) + 24));
      if (v10 == *v13 && v12 == v13[1])
      {

        return v7;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v15)
      {
        return v7;
      }

      if (v8 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return 0;
}

uint64_t sub_10017D5B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10017D6AC(Class a1)
{
  v2 = type metadata accessor for URL();
  v92 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LegacyAccountMagicKeysRecord(0);
  v90 = *(v5 - 8);
  v91 = v5;
  __chkstk_darwin(v5);
  v88 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v87 = &v84 - v8;
  v9 = type metadata accessor for LegacyMagicPairingSettingsRecords(0);
  v97 = *(v9 - 8);
  __chkstk_darwin(v9);
  v85 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MagicPairingSettingsRecord(0);
  v96 = *(v11 - 1);
  __chkstk_darwin(v11);
  v13 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    goto LABEL_75;
  }

  while (1)
  {
    v15 = qword_100300E30;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100226100;
    v17 = Array.description.getter();
    v19 = v18;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_1000EE954();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "records Added: %@", 17, 2, v16);

    v14 = *(a1 + 2);
    v98 = _swiftEmptyArrayStorage;
    sub_1001C4D8C(0, v14, 0);
    v20 = v98;
    if (!v14)
    {
      break;
    }

    v98 = _swiftEmptyArrayStorage;
    sub_1001C4E14(0, v14, 0);

    v98 = _swiftEmptyArrayStorage;
    sub_1001C4DD0(0, v14, 0);

    sub_1001CC14C(a1 + ((*(v97 + 80) + 32) & ~*(v97 + 80)), v85, type metadata accessor for LegacyMagicPairingSettingsRecords);
    v21 = sub_10013B008();
    swift_unknownObjectWeakInit();
    v99 = _swiftEmptyArrayStorage;
    if (v21 >> 62)
    {
      v22 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    swift_beginAccess();
    a1 = _swiftEmptyArrayStorage;
    if (!v22)
    {
LABEL_38:

      swift_unknownObjectWeakDestroy();
      v49 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
      v50 = v86;
      swift_beginAccess();
      v97 = v49;
      v51 = *(v49 + v50);
      if (v51 >> 62)
      {
        v52 = _CocoaArrayWrapper.endIndex.getter();
        if (!v52)
        {
          goto LABEL_78;
        }

LABEL_40:
        if (v52 >= 1)
        {

          for (i = 0; i != v52; ++i)
          {
            if ((v51 & 0xC000000000000001) != 0)
            {
              v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v55 = *(v51 + 8 * i + 32);
              swift_unknownObjectRetain();
            }

            if ([v55 respondsToSelector:"magicPairingRecordsUpdatedWithRecords:"])
            {
              sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
              swift_unknownObjectRetain();
              isa = Array._bridgeToObjectiveC()().super.isa;
              [v55 magicPairingRecordsUpdatedWithRecords:isa];
              swift_unknownObjectRelease_n();
            }

            else
            {
              swift_unknownObjectRelease();
            }
          }

          goto LABEL_78;
        }

        __break(1u);
      }

      else
      {
        v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v52)
        {
          goto LABEL_40;
        }

LABEL_78:

        v68 = sub_10013B008();
        v69 = v68;
        v99 = _swiftEmptyArrayStorage;
        if (v68 >> 62)
        {
          goto LABEL_94;
        }

        for (j = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = _CocoaArrayWrapper.endIndex.getter())
        {
          v71 = 0;
          while (1)
          {
            if ((v69 & 0xC000000000000001) != 0)
            {
              v72 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v71 >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_93;
              }

              v72 = *(v69 + 8 * v71 + 32);
            }

            v73 = v72;
            v74 = v71 + 1;
            if (__OFADD__(v71, 1))
            {
              break;
            }

            v75 = [v72 bluetoothAddress];
            if (!v75)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v75 = String._bridgeToObjectiveC()();
            }

            v76 = [objc_allocWithZone(BTCloudDevice) initWithBluetoothAddress:v75];

            v77 = [v73 name];
            [v76 setNickname:v77];

            v78 = [v73 productID];
            [v76 setProductID:v78];

            v79 = [v73 vendorID];
            [v76 setVendorID:v79];

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            ++v71;
            if (v74 == j)
            {
              goto LABEL_95;
            }
          }

          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          ;
        }

LABEL_95:

        v51 = *(v97 + v86);
        if (!(v51 >> 62))
        {
          v80 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v80)
          {
            goto LABEL_97;
          }

LABEL_107:

LABEL_108:
          sub_1001CC1B4(v85, type metadata accessor for LegacyMagicPairingSettingsRecords);
LABEL_109:
        }

        v80 = _CocoaArrayWrapper.endIndex.getter();
        if (!v80)
        {
          goto LABEL_107;
        }

LABEL_97:
        if (v80 >= 1)
        {

          for (k = 0; k != v80; ++k)
          {
            if ((v51 & 0xC000000000000001) != 0)
            {
              v82 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v82 = *(v51 + 8 * k + 32);
              swift_unknownObjectRetain();
            }

            if ([v82 respondsToSelector:"devicesUpdatedWithRecords:"])
            {
              sub_1000FA784(0, &qword_1002F9CD0, BTCloudDevice_ptr);
              swift_unknownObjectRetain();
              v83 = Array._bridgeToObjectiveC()().super.isa;
              [v82 devicesUpdatedWithRecords:v83];
              swift_unknownObjectRelease_n();
            }

            else
            {
              swift_unknownObjectRelease();
            }
          }

          goto LABEL_108;
        }
      }

      __break(1u);
      goto LABEL_113;
    }

    v13 = 0;
    v95 = v21 & 0xFFFFFFFFFFFFFF8;
    v96 = v21 & 0xC000000000000001;
    v23 = v92++;
    v93 = (v23 + 2);
    v89 = v21;
    v94 = v22;
    while (1)
    {
      if (v96)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *(v95 + 16))
        {
          goto LABEL_74;
        }

        v24 = *(v21 + 8 * v13 + 32);
      }

      v11 = v24;
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v26 = Strong;
        v97 = v11;
        sub_100103934();
        v27 = objc_opt_self();
        if ([v27 isFirstUnlocked])
        {
          sub_100192340();
          if (qword_1002F79E8 != -1)
          {
            swift_once();
          }

          v28 = sub_1000EE91C(v2, qword_100300B80);
          (*v93)(v4, v28, v2);
          v29 = sub_10018F6C8(v4);

          (*v92)(v4, v2);
          if (v29[2])
          {
            v30 = v87;
            sub_1001CC14C(v29 + ((*(v90 + 80) + 32) & ~*(v90 + 80)), v87, type metadata accessor for LegacyAccountMagicKeysRecord);

            v31 = Data.subdata(in:)();
            v33 = v32;
            v34 = v30;
            v21 = v89;
            sub_1001CC1B4(v34, type metadata accessor for LegacyAccountMagicKeysRecord);
            v35.super.isa = Data._bridgeToObjectiveC()().super.isa;
            sub_1000EF870(v31, v33);
LABEL_22:
            [v97 setMasterKey:v35.super.isa];

            if ([v27 isFirstUnlocked])
            {
              sub_100192340();
              if (qword_1002F79E8 != -1)
              {
                swift_once();
              }

              v37 = sub_1000EE91C(v2, qword_100300B80);
              (*v93)(v4, v37, v2);
              v38 = sub_10018F6C8(v4);

              (*v92)(v4, v2);
              if (v38[2])
              {
                v39 = v4;
                v40 = v2;
                v41 = v88;
                sub_1001CC14C(v38 + ((*(v90 + 80) + 32) & ~*(v90 + 80)), v88, type metadata accessor for LegacyAccountMagicKeysRecord);

                v42 = Data.subdata(in:)();
                v44 = v43;
                v45 = v41;
                v2 = v40;
                v4 = v39;
                v21 = v89;
                sub_1001CC1B4(v45, type metadata accessor for LegacyAccountMagicKeysRecord);
                a1 = Data._bridgeToObjectiveC()().super.isa;
                sub_1000EF870(v42, v44);
              }

              else
              {

                a1 = 0;
              }

              v22 = v94;
            }

            else
            {
              v46 = static os_log_type_t.error.getter();
              v22 = v94;
              if (qword_1002F7AE8 != -1)
              {
                v48 = v46;
                swift_once();
                v46 = v48;
              }

              os_log(_:dso:log:_:_:)(v46, &_mh_execute_header, qword_100300E38, "AccountMagicKeysRecord call failed because in device is in beforeFirstUnlock state", 82, 2, _swiftEmptyArrayStorage);

              a1 = 0;
            }

            v11 = v97;
            [v97 setMasterHint:a1];

            goto LABEL_33;
          }
        }

        else
        {
          v36 = static os_log_type_t.error.getter();
          if (qword_1002F7AE8 != -1)
          {
            v47 = v36;
            swift_once();
            v36 = v47;
          }

          os_log(_:dso:log:_:_:)(v36, &_mh_execute_header, qword_100300E38, "AccountMagicKeysRecord call failed because in device is in beforeFirstUnlock state", 82, 2, _swiftEmptyArrayStorage);
        }

        v35.super.isa = 0;
        goto LABEL_22;
      }

LABEL_33:
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        a1 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v13;
      if (v14 == v22)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    swift_once();
  }

  v98 = _swiftEmptyArrayStorage;
  v56 = *(v20 + 16);
  if (v56)
  {
    v57 = (v13 + v11[6]);
    v58 = v20 + ((*(v96 + 80) + 32) & ~*(v96 + 80));
    v59 = *(v96 + 72);
    do
    {
      sub_1001CC14C(v58, v13, type metadata accessor for MagicPairingSettingsRecord);
      v60 = *v57 == 0xD000000000000011 && 0x8000000100267AA0 == v57[1];
      if (v60 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_1001CC1B4(v13, type metadata accessor for MagicPairingSettingsRecord);
      }

      else
      {
        sub_10010CFB8();
        sub_1001CC1B4(v13, type metadata accessor for MagicPairingSettingsRecord);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v97 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v58 += v59;
      --v56;
    }

    while (v56);
  }

  v61 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
  v62 = v86;
  result = swift_beginAccess();
  v51 = *(v62 + v61);
  if (v51 >> 62)
  {
LABEL_113:
    result = _CocoaArrayWrapper.endIndex.getter();
    v64 = result;
    if (!result)
    {
    }

    goto LABEL_64;
  }

  v64 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v64)
  {
  }

LABEL_64:
  if (v64 >= 1)
  {

    for (m = 0; m != v64; ++m)
    {
      if ((v51 & 0xC000000000000001) != 0)
      {
        v66 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v66 = *(v51 + 8 * m + 32);
        swift_unknownObjectRetain();
      }

      if ([v66 respondsToSelector:"magicPairingRecordsUpdatedWithRecords:"])
      {
        sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
        swift_unknownObjectRetain();
        v67 = Array._bridgeToObjectiveC()().super.isa;
        [v66 magicPairingRecordsUpdatedWithRecords:v67];
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    goto LABEL_109;
  }

  __break(1u);
  return result;
}

void *sub_10017E70C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  sub_1001C4E58(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_100162534(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_1001C4E58((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      v7 = &v3[2 * v6];
      v7[4] = v9;
      v7[5] = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void *sub_10017E820(unint64_t a1, void (*a2)(void, uint64_t, void))
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  a2(0, v5 & ~(v5 >> 63), 0);
  result = _swiftEmptyArrayStorage;
  if (v4)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
    result = _swiftEmptyArrayStorage;
    if (!v7)
    {
      return result;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return result;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v8)
    {
      __break(1u);
      return result;
    }
  }

  return 0;
}

uint64_t sub_10017E918(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DeviceRecord(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  v8 = qword_100300E30;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100226100;
  type metadata accessor for SoundProfileRecord(0);
  v10 = Array.description.getter();
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_1000EE954();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "records Removed: %@", 19, 2, v9);

  v13 = *(a1 + 16);
  v41[0] = _swiftEmptyArrayStorage;
  sub_1001C4E14(0, v13, 0);
  v14 = v41[0];
  if (v13)
  {

    v41[0] = _swiftEmptyArrayStorage;
    sub_1001C4DD0(0, v13, 0);

    v41[0] = _swiftEmptyArrayStorage;
    sub_1001C4D8C(0, v13, 0);

    v41[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();

    v41[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();

    v41[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
  }

  v41[0] = _swiftEmptyArrayStorage;
  v16 = *(v14 + 16);
  if (v16)
  {
    v35 = v2;
    v36 = v14;
    v17 = *(v4 + 28);
    v39 = &v40[*(v4 + 24)];
    v38 = &v40[v17];
    v18 = v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v37 = *(v5 + 72);
    v19 = v40;
    do
    {
      sub_1001CC14C(v18, v19, type metadata accessor for DeviceRecord);
      v20 = objc_allocWithZone(BTCloudDevice);
      v21 = String._bridgeToObjectiveC()();
      v22 = [v20 initWithBluetoothAddress:v21];

      v23 = String._bridgeToObjectiveC()();
      [v22 setNickname:v23];

      v24 = String._bridgeToObjectiveC()();
      [v22 setModelNumber:v24];

      v25 = String._bridgeToObjectiveC()();
      [v22 setManufacturer:v25];

      v26 = String._bridgeToObjectiveC()();
      [v22 setProductID:v26];

      v27 = String._bridgeToObjectiveC()();
      [v22 setVendorID:v27];

      sub_1001CC1B4(v19, type metadata accessor for DeviceRecord);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v41[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v18 += v37;
      --v16;
    }

    while (v16);

    v2 = v35;
  }

  else
  {
  }

  v28 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
  result = swift_beginAccess();
  v29 = *(v2 + v28);
  if (!(v29 >> 62))
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
      goto LABEL_14;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v30 = result;
  if (!result)
  {
  }

LABEL_14:
  if (v30 >= 1)
  {

    for (i = 0; i != v30; ++i)
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v33 = *(v29 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      if ([v33 respondsToSelector:"devicesRemovedWithRecords:"])
      {
        sub_1000FA784(0, &qword_1002F9CD0, BTCloudDevice_ptr);
        swift_unknownObjectRetain();
        isa = Array._bridgeToObjectiveC()().super.isa;
        [v33 devicesRemovedWithRecords:isa];
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10017EEAC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MagicPairingSettingsRecord(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DeviceRecord(0);
  v48 = *(v8 - 8);
  __chkstk_darwin(v8);
  v51 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  v11 = qword_100300E30;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100226100;
  v13 = Array.description.getter();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_1000EE954();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "records Removed: %@", 19, 2, v12);

  v16 = *(a1 + 16);
  v52 = _swiftEmptyArrayStorage;
  sub_1001C4E14(0, v16, 0);
  v17 = v52;
  if (v16)
  {
    v18 = v2;

    v52 = _swiftEmptyArrayStorage;
    sub_1001C4DD0(0, v16, 0);

    v52 = _swiftEmptyArrayStorage;
    v19 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v20 = *(v5 + 72);
    do
    {
      sub_1001CC14C(v19, v7, type metadata accessor for MagicPairingSettingsRecord);
      sub_10010CFB8();
      sub_1001CC1B4(v7, type metadata accessor for MagicPairingSettingsRecord);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v19 += v20;
      --v16;
    }

    while (v16);
    v21 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
    swift_beginAccess();
    v22 = *(v18 + v21);
    if (v22 >> 62)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
      if (!v23)
      {
      }

      goto LABEL_10;
    }

    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
LABEL_10:
      if (v23 >= 1)
      {

        for (i = 0; i != v23; ++i)
        {
          if ((v22 & 0xC000000000000001) != 0)
          {
            v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v25 = *(v22 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          if ([v25 respondsToSelector:"magicPairingRecordsRemovedWithRecords:"])
          {
            sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
            swift_unknownObjectRetain();
            isa = Array._bridgeToObjectiveC()().super.isa;
            [v25 magicPairingRecordsRemovedWithRecords:isa];
            swift_unknownObjectRelease_n();
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

LABEL_37:
      }

      __break(1u);
      goto LABEL_42;
    }
  }

  v52 = _swiftEmptyArrayStorage;
  v27 = *(v17 + 16);
  if (v27)
  {
    v46 = v2;
    v47 = v17;
    v28 = *(v8 + 28);
    v50 = &v51[*(v8 + 24)];
    v49 = &v51[v28];
    v29 = v17 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
    v48 = *(v48 + 72);
    v30 = v51;
    do
    {
      sub_1001CC14C(v29, v30, type metadata accessor for DeviceRecord);
      v31 = objc_allocWithZone(BTCloudDevice);
      v32 = String._bridgeToObjectiveC()();
      v33 = [v31 initWithBluetoothAddress:v32];

      v34 = String._bridgeToObjectiveC()();
      [v33 setNickname:v34];

      v35 = String._bridgeToObjectiveC()();
      [v33 setModelNumber:v35];

      v36 = String._bridgeToObjectiveC()();
      [v33 setManufacturer:v36];

      v37 = String._bridgeToObjectiveC()();
      [v33 setProductID:v37];

      v38 = String._bridgeToObjectiveC()();
      [v33 setVendorID:v38];

      sub_1001CC1B4(v30, type metadata accessor for DeviceRecord);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v29 += v48;
      --v27;
    }

    while (v27);

    v2 = v46;
  }

  else
  {
  }

  v39 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
  result = swift_beginAccess();
  v22 = *(v2 + v39);
  if (!(v22 >> 62))
  {
    v41 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v41)
    {
      goto LABEL_28;
    }
  }

LABEL_42:
  result = _CocoaArrayWrapper.endIndex.getter();
  v41 = result;
  if (!result)
  {
  }

LABEL_28:
  if (v41 >= 1)
  {

    for (j = 0; j != v41; ++j)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v43 = *(v22 + 8 * j + 32);
        swift_unknownObjectRetain();
      }

      if ([v43 respondsToSelector:"devicesRemovedWithRecords:"])
      {
        sub_1000FA784(0, &qword_1002F9CD0, BTCloudDevice_ptr);
        swift_unknownObjectRetain();
        v44 = Array._bridgeToObjectiveC()().super.isa;
        [v43 devicesRemovedWithRecords:v44];
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    goto LABEL_37;
  }

  __break(1u);
  return result;
}

uint64_t sub_10017F63C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DeviceSupportInformationRecord(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DeviceRecord(0);
  v48 = *(v8 - 8);
  __chkstk_darwin(v8);
  v51 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  v11 = qword_100300E30;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100226100;
  v13 = Array.description.getter();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_1000EE954();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "records Removed: %@", 19, 2, v12);

  v16 = *(a1 + 16);
  v52 = _swiftEmptyArrayStorage;
  sub_1001C4E14(0, v16, 0);
  v17 = v52;
  if (v16)
  {
    v18 = v2;

    v52 = _swiftEmptyArrayStorage;
    v19 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v20 = *(v5 + 72);
    do
    {
      sub_1001CC14C(v19, v7, type metadata accessor for DeviceSupportInformationRecord);
      sub_100109B20();
      sub_1001CC1B4(v7, type metadata accessor for DeviceSupportInformationRecord);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v19 += v20;
      --v16;
    }

    while (v16);
    v21 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
    swift_beginAccess();
    v22 = *(v18 + v21);
    if (v22 >> 62)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
      if (!v23)
      {
      }

      goto LABEL_10;
    }

    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
LABEL_10:
      if (v23 >= 1)
      {

        for (i = 0; i != v23; ++i)
        {
          if ((v22 & 0xC000000000000001) != 0)
          {
            v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v25 = *(v22 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          if ([v25 respondsToSelector:"deviceSupportInformationRecordsRemovedWithRecords:"])
          {
            sub_1000FA784(0, &qword_1002F8518, BTCloudDeviceSupportInformation_ptr);
            swift_unknownObjectRetain();
            isa = Array._bridgeToObjectiveC()().super.isa;
            [v25 deviceSupportInformationRecordsRemovedWithRecords:isa];
            swift_unknownObjectRelease_n();
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

LABEL_37:
      }

      __break(1u);
      goto LABEL_42;
    }
  }

  v52 = _swiftEmptyArrayStorage;
  v27 = *(v17 + 16);
  if (v27)
  {
    v46 = v2;
    v47 = v17;
    v28 = *(v8 + 28);
    v50 = &v51[*(v8 + 24)];
    v49 = &v51[v28];
    v29 = v17 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
    v48 = *(v48 + 72);
    v30 = v51;
    do
    {
      sub_1001CC14C(v29, v30, type metadata accessor for DeviceRecord);
      v31 = objc_allocWithZone(BTCloudDevice);
      v32 = String._bridgeToObjectiveC()();
      v33 = [v31 initWithBluetoothAddress:v32];

      v34 = String._bridgeToObjectiveC()();
      [v33 setNickname:v34];

      v35 = String._bridgeToObjectiveC()();
      [v33 setModelNumber:v35];

      v36 = String._bridgeToObjectiveC()();
      [v33 setManufacturer:v36];

      v37 = String._bridgeToObjectiveC()();
      [v33 setProductID:v37];

      v38 = String._bridgeToObjectiveC()();
      [v33 setVendorID:v38];

      sub_1001CC1B4(v30, type metadata accessor for DeviceRecord);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v29 += v48;
      --v27;
    }

    while (v27);

    v2 = v46;
  }

  else
  {
  }

  v39 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
  result = swift_beginAccess();
  v22 = *(v2 + v39);
  if (!(v22 >> 62))
  {
    v41 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v41)
    {
      goto LABEL_28;
    }
  }

LABEL_42:
  result = _CocoaArrayWrapper.endIndex.getter();
  v41 = result;
  if (!result)
  {
  }

LABEL_28:
  if (v41 >= 1)
  {

    for (j = 0; j != v41; ++j)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v43 = *(v22 + 8 * j + 32);
        swift_unknownObjectRetain();
      }

      if ([v43 respondsToSelector:"devicesRemovedWithRecords:"])
      {
        sub_1000FA784(0, &qword_1002F9CD0, BTCloudDevice_ptr);
        swift_unknownObjectRetain();
        v44 = Array._bridgeToObjectiveC()().super.isa;
        [v43 devicesRemovedWithRecords:v44];
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    goto LABEL_37;
  }

  __break(1u);
  return result;
}

uint64_t sub_10017FDB0(unint64_t a1, const char *a2, uint64_t a3, SEL *a4, SEL *a5, void (*a6)(uint64_t), SEL *a7, uint64_t (*a8)(unint64_t))
{
  v64 = a6;
  v65 = a8;
  v71 = a7;
  v72 = a5;
  v74 = a4;
  v70 = a3;
  v10 = type metadata accessor for MagicPairingSettingsRecord(0);
  v66 = *(v10 - 8);
  __chkstk_darwin(v10 - 8);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DeviceSupportInformationRecord(0);
  v67 = *(v13 - 8);
  __chkstk_darwin(v13 - 8);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DeviceRecord(0);
  v68 = *(v16 - 8);
  __chkstk_darwin(v16);
  v73 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  v19 = qword_100300E30;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100226100;
  type metadata accessor for HMDeviceCloudRecord(0);
  v21 = Array.description.getter();
  v23 = v22;
  *(v20 + 56) = &type metadata for String;
  *(v20 + 64) = sub_1000EE954();
  *(v20 + 32) = v21;
  *(v20 + 40) = v23;
  os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v19, a2, v70, 2, v20);

  v24 = sub_10017E820(a1, sub_1001C4E14);
  if (v24)
  {
    v75 = _swiftEmptyArrayStorage;
    v25 = v24[2];
    if (v25)
    {
      v26 = *(v16 + 28);
      v72 = &v73[*(v16 + 24)];
      v71 = &v73[v26];
      v27 = *(v68 + 80);
      v67 = v24;
      v23 = v24 + ((v27 + 32) & ~v27);
      v70 = *(v68 + 72);
      v28 = v73;
      do
      {
        sub_1001CC14C(v23, v28, type metadata accessor for DeviceRecord);
        v29 = objc_allocWithZone(BTCloudDevice);
        v30 = String._bridgeToObjectiveC()();
        v31 = [v29 initWithBluetoothAddress:v30];

        v32 = String._bridgeToObjectiveC()();
        [v31 setNickname:v32];

        v33 = String._bridgeToObjectiveC()();
        [v31 setModelNumber:v33];

        v34 = String._bridgeToObjectiveC()();
        [v31 setManufacturer:v34];

        v35 = String._bridgeToObjectiveC()();
        [v31 setProductID:v35];

        v36 = String._bridgeToObjectiveC()();
        [v31 setVendorID:v36];

        sub_1001CC1B4(v28, type metadata accessor for DeviceRecord);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v23 += v70;
        v25 = (v25 - 1);
      }

      while (v25);
    }

    v41 = v69;
    v42 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
    swift_beginAccess();
    v43 = *(v41 + v42);
    v44 = v74;
    if (v43 >> 62)
    {
      v18 = _CocoaArrayWrapper.endIndex.getter();
      if (!v18)
      {
      }

      goto LABEL_19;
    }

    v18 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
LABEL_19:
      if (v18 >= 1)
      {

        for (i = 0; i != v18; ++i)
        {
          if ((v43 & 0xC000000000000001) != 0)
          {
            v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v46 = *(v43 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          if ([v46 respondsToSelector:{*v44, v64}])
          {
            sub_1000FA784(0, &qword_1002F9CD0, BTCloudDevice_ptr);
            swift_unknownObjectRetain();
            isa = Array._bridgeToObjectiveC()().super.isa;
            [v46 *v74];
            swift_unknownObjectRelease_n();

            v44 = v74;
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

LABEL_68:
      }

      __break(1u);
      goto LABEL_72;
    }
  }

  v37 = sub_10017E820(a1, sub_1001C4DD0);
  if (v37)
  {
    v75 = _swiftEmptyArrayStorage;
    v38 = v37[2];
    if (v38)
    {
      v25 = v69;
      v39 = v37 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
      v40 = v67[9];
      do
      {
        sub_1001CC14C(v39, v15, type metadata accessor for DeviceSupportInformationRecord);
        v18 = sub_100109B20();
        sub_1001CC1B4(v15, type metadata accessor for DeviceSupportInformationRecord);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v39 += v40;
        --v38;
      }

      while (v38);
    }

    else
    {

      v25 = v69;
    }

    v52 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
    swift_beginAccess();
    v43 = *(v25 + v52);
    v23 = v72;
    if (v43 >> 62)
    {
LABEL_72:
      v53 = _CocoaArrayWrapper.endIndex.getter();
      if (!v53)
      {
      }

      goto LABEL_38;
    }

    v53 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v53)
    {
LABEL_38:
      if (v53 >= 1)
      {

        for (j = 0; j != v53; ++j)
        {
          if ((v43 & 0xC000000000000001) != 0)
          {
            v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v55 = *(v43 + 8 * j + 32);
            swift_unknownObjectRetain();
          }

          if ([v55 respondsToSelector:{*v23, v64}])
          {
            sub_1000FA784(0, &qword_1002F8518, BTCloudDeviceSupportInformation_ptr);
            swift_unknownObjectRetain();
            v56 = Array._bridgeToObjectiveC()().super.isa;
            [v55 *v72];
            swift_unknownObjectRelease_n();

            v23 = v72;
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        goto LABEL_68;
      }

      __break(1u);
      goto LABEL_75;
    }
  }

  v48 = sub_10017E820(a1, sub_1001C4D8C);
  if (v48)
  {
    v75 = _swiftEmptyArrayStorage;
    v23 = v48[2];
    if (v23)
    {
      v49 = v69;
      v50 = v48 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
      v51 = *(v66 + 72);
      do
      {
        sub_1001CC14C(v50, v12, type metadata accessor for MagicPairingSettingsRecord);
        v18 = sub_10010CFB8();
        sub_1001CC1B4(v12, type metadata accessor for MagicPairingSettingsRecord);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v50 += v51;
        --v23;
      }

      while (v23);
    }

    else
    {

      v49 = v69;
    }

    v59 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
    swift_beginAccess();
    v43 = *(v49 + v59);
    v25 = v71;
    if (v43 >> 62)
    {
LABEL_75:
      v60 = _CocoaArrayWrapper.endIndex.getter();
      if (!v60)
      {
      }

      goto LABEL_59;
    }

    v60 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v60)
    {
LABEL_59:
      if (v60 >= 1)
      {

        for (k = 0; k != v60; ++k)
        {
          if ((v43 & 0xC000000000000001) != 0)
          {
            v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v62 = *(v43 + 8 * k + 32);
            swift_unknownObjectRetain();
          }

          if ([v62 respondsToSelector:{*v25, v64}])
          {
            sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
            swift_unknownObjectRetain();
            v63 = Array._bridgeToObjectiveC()().super.isa;
            [v62 *v71];
            swift_unknownObjectRelease_n();

            v25 = v71;
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        goto LABEL_68;
      }

      __break(1u);
LABEL_78:
      _CocoaArrayWrapper.endIndex.getter();
      specialized ContiguousArray.reserveCapacity(_:)();
      result = _CocoaArrayWrapper.endIndex.getter();
      if (!result)
      {
        goto LABEL_79;
      }

      goto LABEL_49;
    }
  }

  v18 = _swiftEmptyArrayStorage;
  v75 = _swiftEmptyArrayStorage;
  v23 = a1;
  if (a1 >> 62)
  {
    goto LABEL_78;
  }

  specialized ContiguousArray.reserveCapacity(_:)();
  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_79:
    v64(v75);
  }

LABEL_49:
  if ((v23 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    swift_unknownObjectRelease();
  }

  else if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return result;
  }

  v75 = v18;
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v23 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    swift_unknownObjectRelease();
  }

  v58 = v65;

  return v58(v23);
}

uint64_t sub_100180998(unint64_t a1, const char *a2, uint64_t a3, SEL *a4, SEL *a5, void (*a6)(unint64_t), SEL *a7)
{
  v69 = a7;
  v70 = a5;
  v63 = a6;
  v72 = a4;
  v68 = a3;
  v9 = type metadata accessor for MagicPairingSettingsRecord(0);
  v64 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DeviceSupportInformationRecord(0);
  v65 = *(v12 - 8);
  __chkstk_darwin(v12 - 8);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DeviceRecord(0);
  v66 = *(v15 - 1);
  __chkstk_darwin(v15);
  v71 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  v18 = qword_100300E30;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100226100;
  type metadata accessor for AAProxCardsRecord(0);
  v20 = Array.description.getter();
  v22 = v21;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_1000EE954();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v18, a2, v68, 2, v19);

  v23 = sub_10017E820(a1, sub_1001C4E14);
  if (v23)
  {
    v73 = _swiftEmptyArrayStorage;
    v24 = v23[2];
    if (v24)
    {
      v25 = v15[7];
      v70 = &v71[v15[6]];
      v69 = &v71[v25];
      a1 = &v71[v15[10]];
      v26 = *(v66 + 80);
      v65 = v23;
      v22 = (v23 + ((v26 + 32) & ~v26));
      v68 = *(v66 + 72);
      v27 = v71;
      do
      {
        sub_1001CC14C(v22, v27, type metadata accessor for DeviceRecord);
        v28 = objc_allocWithZone(BTCloudDevice);
        v29 = String._bridgeToObjectiveC()();
        v30 = [v28 initWithBluetoothAddress:v29];

        v31 = String._bridgeToObjectiveC()();
        [v30 setNickname:v31];

        v32 = String._bridgeToObjectiveC()();
        [v30 setModelNumber:v32];

        v33 = String._bridgeToObjectiveC()();
        [v30 setManufacturer:v33];

        v34 = String._bridgeToObjectiveC()();
        [v30 setProductID:v34];

        v35 = String._bridgeToObjectiveC()();
        [v30 setVendorID:v35];

        sub_1001CC1B4(v27, type metadata accessor for DeviceRecord);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v22 = (v22 + v68);
        v24 = (v24 - 1);
      }

      while (v24);
    }

    v39 = v67;
    v40 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
    swift_beginAccess();
    v41 = *(v39 + v40);
    v42 = v72;
    if (v41 >> 62)
    {
      v43 = _CocoaArrayWrapper.endIndex.getter();
      if (!v43)
      {
      }

      goto LABEL_19;
    }

    v43 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v43)
    {
LABEL_19:
      if (v43 >= 1)
      {

        for (i = 0; i != v43; ++i)
        {
          if ((v41 & 0xC000000000000001) != 0)
          {
            v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v45 = *(v41 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          if ([v45 respondsToSelector:*v42])
          {
            sub_1000FA784(0, &qword_1002F9CD0, BTCloudDevice_ptr);
            swift_unknownObjectRetain();
            isa = Array._bridgeToObjectiveC()().super.isa;
            [v45 *v72];
            swift_unknownObjectRelease_n();

            v42 = v72;
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

LABEL_64:
      }

      __break(1u);
      goto LABEL_68;
    }
  }

  v36 = sub_10017E820(a1, sub_1001C4DD0);
  if (v36)
  {
    v73 = _swiftEmptyArrayStorage;
    v37 = v36[2];
    if (v37)
    {
      v24 = v67;
      v38 = v36 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
      a1 = v65[9];
      do
      {
        sub_1001CC14C(v38, v14, type metadata accessor for DeviceSupportInformationRecord);
        sub_100109B20();
        sub_1001CC1B4(v14, type metadata accessor for DeviceSupportInformationRecord);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v38 += a1;
        --v37;
      }

      while (v37);
    }

    else
    {

      v24 = v67;
    }

    v51 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
    swift_beginAccess();
    v41 = *(v24 + v51);
    v22 = v70;
    if (v41 >> 62)
    {
LABEL_68:
      v52 = _CocoaArrayWrapper.endIndex.getter();
      if (!v52)
      {
      }

      goto LABEL_38;
    }

    v52 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v52)
    {
LABEL_38:
      if (v52 >= 1)
      {

        for (j = 0; j != v52; ++j)
        {
          if ((v41 & 0xC000000000000001) != 0)
          {
            v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v54 = *(v41 + 8 * j + 32);
            swift_unknownObjectRetain();
          }

          if ([v54 respondsToSelector:*v22])
          {
            sub_1000FA784(0, &qword_1002F8518, BTCloudDeviceSupportInformation_ptr);
            swift_unknownObjectRetain();
            v55 = Array._bridgeToObjectiveC()().super.isa;
            [v54 *v70];
            swift_unknownObjectRelease_n();

            v22 = v70;
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        goto LABEL_64;
      }

      __break(1u);
      goto LABEL_71;
    }
  }

  v47 = sub_10017E820(a1, sub_1001C4D8C);
  if (v47)
  {
    v73 = _swiftEmptyArrayStorage;
    v48 = v47[2];
    if (v48)
    {
      v49 = v67;
      v50 = v47 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
      a1 = *(v64 + 72);
      v24 = v69;
      do
      {
        sub_1001CC14C(v50, v11, type metadata accessor for MagicPairingSettingsRecord);
        sub_10010CFB8();
        sub_1001CC1B4(v11, type metadata accessor for MagicPairingSettingsRecord);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v24 = v69;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v50 += a1;
        --v48;
      }

      while (v48);
    }

    else
    {

      v24 = v69;
      v49 = v67;
    }

    v57 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
    swift_beginAccess();
    v41 = *(v49 + v57);
    if (v41 >> 62)
    {
LABEL_71:
      v58 = _CocoaArrayWrapper.endIndex.getter();
      if (!v58)
      {
      }

      goto LABEL_55;
    }

    v58 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v58)
    {
LABEL_55:
      if (v58 >= 1)
      {

        for (k = 0; k != v58; ++k)
        {
          if ((v41 & 0xC000000000000001) != 0)
          {
            v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v60 = *(v41 + 8 * k + 32);
            swift_unknownObjectRetain();
          }

          if ([v60 respondsToSelector:*v24])
          {
            sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
            swift_unknownObjectRetain();
            v61 = Array._bridgeToObjectiveC()().super.isa;
            [v60 *v69];
            swift_unknownObjectRelease_n();

            v24 = v69;
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        goto LABEL_64;
      }

      __break(1u);
      goto LABEL_74;
    }
  }

  v73 = _swiftEmptyArrayStorage;
  if (!(a1 >> 62))
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_75;
    }

    goto LABEL_49;
  }

LABEL_74:
  _CocoaArrayWrapper.endIndex.getter();
  specialized ContiguousArray.reserveCapacity(_:)();
  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
LABEL_75:
    v63(v73);
  }

LABEL_49:
  if ((a1 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    swift_unknownObjectRelease();
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
  }

  __break(1u);
  return result;
}

uint64_t sub_10018150C(unint64_t a1, const char *a2, uint64_t a3, SEL *a4, SEL *a5, SEL *a6, uint64_t (*a7)(uint64_t))
{
  v63 = a7;
  v69 = a6;
  v70 = a5;
  v72 = a4;
  v67 = a2;
  v68 = a3;
  v9 = type metadata accessor for MagicPairingSettingsRecord(0);
  v64 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DeviceSupportInformationRecord(0);
  v65 = *(v12 - 8);
  __chkstk_darwin(v12 - 8);
  v14 = (&v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for DeviceRecord(0);
  v66 = *(v15 - 8);
  __chkstk_darwin(v15);
  v71 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  v18 = qword_100300E30;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100226100;
  type metadata accessor for AADeviceRecord(0);
  v20 = Array.description.getter();
  v22 = v21;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_1000EE954();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v18, v67, v68, 2, v19);

  v23 = sub_10017E820(a1, sub_1001C4E14);
  if (v23)
  {
    v73 = _swiftEmptyArrayStorage;
    v14 = *(v23 + 2);
    if (v14)
    {
      v65 = v7;
      v24 = *(v15 + 28);
      v70 = &v71[*(v15 + 24)];
      v69 = &v71[v24];
      v22 = &v23[(*(v66 + 80) + 32) & ~*(v66 + 80)];
      v25 = *(v66 + 72);
      v67 = v23;
      v68 = v25;
      v26 = v71;
      do
      {
        sub_1001CC14C(v22, v26, type metadata accessor for DeviceRecord);
        v27 = objc_allocWithZone(BTCloudDevice);
        v28 = String._bridgeToObjectiveC()();
        v29 = [v27 initWithBluetoothAddress:v28];

        v30 = String._bridgeToObjectiveC()();
        [v29 setNickname:v30];

        v31 = String._bridgeToObjectiveC()();
        [v29 setModelNumber:v31];

        v32 = String._bridgeToObjectiveC()();
        [v29 setManufacturer:v32];

        v33 = String._bridgeToObjectiveC()();
        [v29 setProductID:v33];

        v34 = String._bridgeToObjectiveC()();
        [v29 setVendorID:v34];

        sub_1001CC1B4(v26, type metadata accessor for DeviceRecord);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v22 = (v22 + v68);
        v14 = (v14 - 1);
      }

      while (v14);

      v7 = v65;
    }

    else
    {
    }

    v39 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
    swift_beginAccess();
    v40 = *(v7 + v39);
    v41 = v72;
    if (v40 >> 62)
    {
      v42 = _CocoaArrayWrapper.endIndex.getter();
      if (!v42)
      {
      }

      goto LABEL_20;
    }

    v42 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v42)
    {
LABEL_20:
      if (v42 >= 1)
      {

        for (i = 0; i != v42; ++i)
        {
          if ((v40 & 0xC000000000000001) != 0)
          {
            v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v44 = *(v40 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          if ([v44 respondsToSelector:*v41])
          {
            sub_1000FA784(0, &qword_1002F9CD0, BTCloudDevice_ptr);
            swift_unknownObjectRetain();
            isa = Array._bridgeToObjectiveC()().super.isa;
            [v44 *v72];
            swift_unknownObjectRelease_n();

            v41 = v72;
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

LABEL_47:
      }

      __break(1u);
      goto LABEL_67;
    }
  }

  v35 = sub_10017E820(a1, sub_1001C4DD0);
  if (v35)
  {
    v73 = _swiftEmptyArrayStorage;
    v36 = v35[2];
    if (v36)
    {
      v37 = v35 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
      v38 = *(v65 + 72);
      do
      {
        sub_1001CC14C(v37, v14, type metadata accessor for DeviceSupportInformationRecord);
        sub_100109B20();
        sub_1001CC1B4(v14, type metadata accessor for DeviceSupportInformationRecord);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v37 += v38;
        --v36;
      }

      while (v36);
    }

    v50 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
    swift_beginAccess();
    v40 = *(v7 + v50);
    v22 = v70;
    if (v40 >> 62)
    {
LABEL_67:
      v51 = _CocoaArrayWrapper.endIndex.getter();
      if (!v51)
      {
      }

      goto LABEL_38;
    }

    v51 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v51)
    {
LABEL_38:
      if (v51 >= 1)
      {

        for (j = 0; j != v51; ++j)
        {
          if ((v40 & 0xC000000000000001) != 0)
          {
            v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v53 = *(v40 + 8 * j + 32);
            swift_unknownObjectRetain();
          }

          if ([v53 respondsToSelector:*v22])
          {
            sub_1000FA784(0, &qword_1002F8518, BTCloudDeviceSupportInformation_ptr);
            swift_unknownObjectRetain();
            v54 = Array._bridgeToObjectiveC()().super.isa;
            [v53 *v70];
            swift_unknownObjectRelease_n();

            v22 = v70;
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        goto LABEL_47;
      }

      __break(1u);
      goto LABEL_70;
    }
  }

  v46 = sub_10017E820(a1, sub_1001C4D8C);
  if (!v46)
  {
    v55 = v63;

    return v55(a1);
  }

  v73 = _swiftEmptyArrayStorage;
  v47 = v46[2];
  if (v47)
  {
    v48 = v46 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
    v49 = *(v64 + 72);
    v14 = v69;
    do
    {
      sub_1001CC14C(v48, v11, type metadata accessor for MagicPairingSettingsRecord);
      sub_10010CFB8();
      sub_1001CC1B4(v11, type metadata accessor for MagicPairingSettingsRecord);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v14 = v69;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v48 += v49;
      --v47;
    }

    while (v47);
  }

  else
  {

    v14 = v69;
  }

  v57 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
  result = swift_beginAccess();
  v40 = *(v7 + v57);
  if (!(v40 >> 62))
  {
    v58 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v58)
    {
    }

    goto LABEL_54;
  }

LABEL_70:
  result = _CocoaArrayWrapper.endIndex.getter();
  v58 = result;
  if (!result)
  {
  }

LABEL_54:
  if (v58 >= 1)
  {

    for (k = 0; k != v58; ++k)
    {
      if ((v40 & 0xC000000000000001) != 0)
      {
        v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v60 = *(v40 + 8 * k + 32);
        swift_unknownObjectRetain();
      }

      if ([v60 respondsToSelector:*v14])
      {
        sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
        swift_unknownObjectRetain();
        v61 = Array._bridgeToObjectiveC()().super.isa;
        [v60 *v69];
        swift_unknownObjectRelease_n();

        v14 = v69;
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    goto LABEL_47;
  }

  __break(1u);
  return result;
}

uint64_t sub_100181FF0(uint64_t a1, const char *a2, uint64_t a3, SEL *a4)
{
  v42 = a4;
  v8 = type metadata accessor for DeviceRecord(0);
  v38 = *(v8 - 8);
  __chkstk_darwin(v8);
  v41 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  v11 = qword_100300E30;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100226100;
  v13 = Array.description.getter();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_1000EE954();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, a2, a3, 2, v12);

  v43[0] = _swiftEmptyArrayStorage;
  v16 = *(a1 + 16);
  if (v16)
  {
    v37 = v4;
    v17 = *(v8 + 28);
    v40 = &v41[*(v8 + 24)];
    v39 = &v41[v17];
    v18 = a1 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
    v38 = *(v38 + 72);
    v19 = v41;
    do
    {
      sub_1001CC14C(v18, v19, type metadata accessor for DeviceRecord);
      v20 = objc_allocWithZone(BTCloudDevice);
      v21 = String._bridgeToObjectiveC()();
      v22 = [v20 initWithBluetoothAddress:v21];

      v23 = String._bridgeToObjectiveC()();
      [v22 setNickname:v23];

      v24 = String._bridgeToObjectiveC()();
      [v22 setModelNumber:v24];

      v25 = String._bridgeToObjectiveC()();
      [v22 setManufacturer:v25];

      v26 = String._bridgeToObjectiveC()();
      [v22 setProductID:v26];

      v27 = String._bridgeToObjectiveC()();
      [v22 setVendorID:v27];

      sub_1001CC1B4(v19, type metadata accessor for DeviceRecord);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v43[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v18 += v38;
      --v16;
    }

    while (v16);
    v4 = v37;
  }

  v28 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
  result = swift_beginAccess();
  v30 = *(v4 + v28);
  v31 = v42;
  if (!(v30 >> 62))
  {
    v32 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v32)
    {
      goto LABEL_11;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v32 = result;
  if (!result)
  {
  }

LABEL_11:
  if (v32 >= 1)
  {

    for (i = 0; i != v32; ++i)
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v35 = *(v30 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      if ([v35 respondsToSelector:*v31])
      {
        sub_1000FA784(0, &qword_1002F9CD0, BTCloudDevice_ptr);
        swift_unknownObjectRetain();
        isa = Array._bridgeToObjectiveC()().super.isa;
        [v35 *v42];
        swift_unknownObjectRelease_n();

        v31 = v42;
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001824D8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  type metadata accessor for AADeviceRecord(0);
  sub_1001C4BB4(&qword_1002F9598, type metadata accessor for AADeviceRecord, &protocol conformance descriptor for AADeviceRecord);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v2)
  {

    v3 = static os_log_type_t.error.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    v4 = qword_100300E40;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100226C80;
    sub_1000EE870(&qword_1002F9C60, &qword_1002299C8);
    v6 = String.init<A>(describing:)();
    v8 = v7;
    *(v5 + 56) = &type metadata for String;
    v9 = sub_1000EE954();
    *(v5 + 64) = v9;
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v10 = String.init<A>(describing:)();
    *(v5 + 96) = &type metadata for String;
    *(v5 + 104) = v9;
    *(v5 + 72) = v10;
    *(v5 + 80) = v11;
    os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "Error decoding %@: %@", 21, 2, v5, v2);

    return swift_willThrow();
  }

  else
  {

    return v13;
  }
}

uint64_t sub_1001826E4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  type metadata accessor for DeviceRecord(0);
  sub_1001C4BB4(&qword_1002F9C20, type metadata accessor for DeviceRecord, &unk_100226AD4);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v2)
  {
  }

  v3 = static os_log_type_t.error.getter();
  if (qword_1002F7AF0 != -1)
  {
    swift_once();
  }

  v4 = qword_100300E40;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100226C80;
  sub_1000EE870(&qword_1002F9C28, &qword_100229998);
  v6 = String.init<A>(describing:)();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  v9 = sub_1000EE954();
  *(v5 + 64) = v9;
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  swift_errorRetain();
  sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
  v10 = String.init<A>(describing:)();
  *(v5 + 96) = &type metadata for String;
  *(v5 + 104) = v9;
  *(v5 + 72) = v10;
  *(v5 + 80) = v11;
  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "Error decoding %@: %@", 21, 2, v5);

  return swift_willThrow();
}

uint64_t sub_1001828F0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  type metadata accessor for DeviceSupportInformationRecord(0);
  sub_1001C4BB4(&unk_1002F8C30, type metadata accessor for DeviceSupportInformationRecord, &unk_100228BD8);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v2)
  {
  }

  v3 = static os_log_type_t.error.getter();
  if (qword_1002F7AF0 != -1)
  {
    swift_once();
  }

  v4 = qword_100300E40;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100226C80;
  sub_1000EE870(&qword_1002F9C48, &qword_1002299B8);
  v6 = String.init<A>(describing:)();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  v9 = sub_1000EE954();
  *(v5 + 64) = v9;
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  swift_errorRetain();
  sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
  v10 = String.init<A>(describing:)();
  *(v5 + 96) = &type metadata for String;
  *(v5 + 104) = v9;
  *(v5 + 72) = v10;
  *(v5 + 80) = v11;
  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "Error decoding %@: %@", 21, 2, v5);

  return swift_willThrow();
}

uint64_t sub_100182AFC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  type metadata accessor for MagicPairingSettingsRecord(0);
  sub_1001C4BB4(&qword_1002F8710, type metadata accessor for MagicPairingSettingsRecord, &unk_100227FB0);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v2)
  {
  }

  v3 = static os_log_type_t.error.getter();
  if (qword_1002F7AF0 != -1)
  {
    swift_once();
  }

  v4 = qword_100300E40;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100226C80;
  sub_1000EE870(&qword_1002F9C40, &unk_1002299A8);
  v6 = String.init<A>(describing:)();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  v9 = sub_1000EE954();
  *(v5 + 64) = v9;
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  swift_errorRetain();
  sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
  v10 = String.init<A>(describing:)();
  *(v5 + 96) = &type metadata for String;
  *(v5 + 104) = v9;
  *(v5 + 72) = v10;
  *(v5 + 80) = v11;
  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "Error decoding %@: %@", 21, 2, v5);

  return swift_willThrow();
}

uint64_t sub_100182D08(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  type metadata accessor for SoundProfileRecord(0);
  sub_1001C4BB4(&qword_1002F80F8, type metadata accessor for SoundProfileRecord, &unk_100227284);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v2)
  {
  }

  v3 = static os_log_type_t.error.getter();
  if (qword_1002F7AF0 != -1)
  {
    swift_once();
  }

  v4 = qword_100300E40;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100226C80;
  sub_1000EE870(&unk_1002F9E30, &qword_100229AB8);
  v6 = String.init<A>(describing:)();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  v9 = sub_1000EE954();
  *(v5 + 64) = v9;
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  swift_errorRetain();
  sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
  v10 = String.init<A>(describing:)();
  *(v5 + 96) = &type metadata for String;
  *(v5 + 104) = v9;
  *(v5 + 72) = v10;
  *(v5 + 80) = v11;
  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "Error decoding %@: %@", 21, 2, v5);

  return swift_willThrow();
}

uint64_t sub_100182F14(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  type metadata accessor for AAProxCardsRecord(0);
  sub_1001C4BB4(&qword_1002F7F70, type metadata accessor for AAProxCardsRecord, &protocol conformance descriptor for AAProxCardsRecord);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v2)
  {

    v3 = static os_log_type_t.error.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    v4 = qword_100300E40;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100226C80;
    sub_1000EE870(&qword_1002F9C78, &qword_1002299D8);
    v6 = String.init<A>(describing:)();
    v8 = v7;
    *(v5 + 56) = &type metadata for String;
    v9 = sub_1000EE954();
    *(v5 + 64) = v9;
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v10 = String.init<A>(describing:)();
    *(v5 + 96) = &type metadata for String;
    *(v5 + 104) = v9;
    *(v5 + 72) = v10;
    *(v5 + 80) = v11;
    os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "Error decoding %@: %@", 21, 2, v5, v2);

    return swift_willThrow();
  }

  else
  {

    return v13;
  }
}

uint64_t sub_100183120(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  type metadata accessor for HMDeviceCloudRecord(0);
  sub_1001C4BB4(&unk_1002F8AC0, type metadata accessor for HMDeviceCloudRecord, &protocol conformance descriptor for HMDeviceCloudRecord);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v2)
  {

    v3 = static os_log_type_t.error.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    v4 = qword_100300E40;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100226C80;
    sub_1000EE870(&unk_1002F9C90, &qword_1002299E8);
    v6 = String.init<A>(describing:)();
    v8 = v7;
    *(v5 + 56) = &type metadata for String;
    v9 = sub_1000EE954();
    *(v5 + 64) = v9;
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v10 = String.init<A>(describing:)();
    *(v5 + 96) = &type metadata for String;
    *(v5 + 104) = v9;
    *(v5 + 72) = v10;
    *(v5 + 80) = v11;
    os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "Error decoding %@: %@", 21, 2, v5, v2);

    return swift_willThrow();
  }

  else
  {

    return v13;
  }
}

uint64_t sub_10018332C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  type metadata accessor for CloudCoordinatorConfiguration(0);
  sub_1001C4BB4(&qword_1002F89B8, type metadata accessor for CloudCoordinatorConfiguration, &unk_100228448);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v2)
  {
  }

  v3 = static os_log_type_t.error.getter();
  if (qword_1002F7AF0 != -1)
  {
    swift_once();
  }

  v4 = qword_100300E40;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100226C80;
  sub_1000EE870(&unk_1002F9E80, &qword_100229AF0);
  v6 = String.init<A>(describing:)();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  v9 = sub_1000EE954();
  *(v5 + 64) = v9;
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  swift_errorRetain();
  sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
  v10 = String.init<A>(describing:)();
  *(v5 + 96) = &type metadata for String;
  *(v5 + 104) = v9;
  *(v5 + 72) = v10;
  *(v5 + 80) = v11;
  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "Error decoding %@: %@", 21, 2, v5);

  return swift_willThrow();
}

uint64_t sub_100183538(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  type metadata accessor for LegacyAccountMagicKeysRecord(0);
  sub_1001C4BB4(&qword_1002F9DE0, type metadata accessor for LegacyAccountMagicKeysRecord, &unk_1002278D8);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v2)
  {
  }

  v3 = static os_log_type_t.error.getter();
  if (qword_1002F7AF0 != -1)
  {
    swift_once();
  }

  v4 = qword_100300E40;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100226C80;
  sub_1000EE870(&qword_1002F9DE8, &qword_100229AA0);
  v6 = String.init<A>(describing:)();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  v9 = sub_1000EE954();
  *(v5 + 64) = v9;
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  swift_errorRetain();
  sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
  v10 = String.init<A>(describing:)();
  *(v5 + 96) = &type metadata for String;
  *(v5 + 104) = v9;
  *(v5 + 72) = v10;
  *(v5 + 80) = v11;
  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "Error decoding %@: %@", 21, 2, v5);

  return swift_willThrow();
}

uint64_t sub_100183744(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  type metadata accessor for LegacyMagicPairingSettingsRecords(0);
  sub_1001C4BB4(&qword_1002F8D70, type metadata accessor for LegacyMagicPairingSettingsRecords, &unk_100228F0C);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v2)
  {
  }

  v3 = static os_log_type_t.error.getter();
  if (qword_1002F7AF0 != -1)
  {
    swift_once();
  }

  v4 = qword_100300E40;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100226C80;
  sub_1000EE870(&qword_1002F9E40, &qword_100229AC0);
  v6 = String.init<A>(describing:)();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  v9 = sub_1000EE954();
  *(v5 + 64) = v9;
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  swift_errorRetain();
  sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
  v10 = String.init<A>(describing:)();
  *(v5 + 96) = &type metadata for String;
  *(v5 + 104) = v9;
  *(v5 + 72) = v10;
  *(v5 + 80) = v11;
  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "Error decoding %@: %@", 21, 2, v5);

  return swift_willThrow();
}

uint64_t sub_100183950(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  type metadata accessor for BTDeferredRecord(0);
  sub_1001C4BB4(&qword_1002F9E50, type metadata accessor for BTDeferredRecord, &unk_10022759C);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v2)
  {
  }

  v3 = static os_log_type_t.error.getter();
  if (qword_1002F7AF0 != -1)
  {
    swift_once();
  }

  v4 = qword_100300E40;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100226C80;
  sub_1000EE870(&unk_1002F9E58, &unk_100229AD0);
  v6 = String.init<A>(describing:)();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  v9 = sub_1000EE954();
  *(v5 + 64) = v9;
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  swift_errorRetain();
  sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
  v10 = String.init<A>(describing:)();
  *(v5 + 96) = &type metadata for String;
  *(v5 + 104) = v9;
  *(v5 + 72) = v10;
  *(v5 + 80) = v11;
  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "Error decoding %@: %@", 21, 2, v5);

  return swift_willThrow();
}

void sub_100183B5C(uint64_t a1, char *a2)
{
  v5 = type metadata accessor for URLResourceValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v78 = *(v9 - 8);
  __chkstk_darwin(v9);
  v76 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  *&v79 = &v63 - v12;
  __chkstk_darwin(v13);
  v15 = &v63 - v14;
  __chkstk_darwin(v16);
  v18 = &v63 - v17;
  if ([objc_opt_self() isFirstUnlocked])
  {
    v74 = v6;
    v75 = a1;
    v73 = v8;
    v77 = v9;
    v19 = objc_autoreleasePoolPush();
    v80[0] = a2;
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    type metadata accessor for AADeviceRecord(0);
    sub_1001C4BB4(&qword_1002F95A0, type metadata accessor for AADeviceRecord, &protocol conformance descriptor for AADeviceRecord);
    v20 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v2)
    {

      objc_autoreleasePoolPop(v19);
    }

    else
    {
      v24 = v20;
      v25 = v21;
      v71 = a2;
      v63 = 0;
      v66 = v5;

      objc_autoreleasePoolPop(v19);
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_1000EF870(v24, v25);
      v26 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_directoryURL;
      if (qword_1002F7AB8 != -1)
      {
        swift_once();
      }

      v27 = v77;
      v28 = sub_1000EE91C(v77, qword_100300D88);
      v29 = v78;
      v30 = *(v78 + 16);
      v70 = v28;
      v69 = v78 + 16;
      v68 = v30;
      (v30)(v15);
      URL.path.getter();
      v33 = *(v29 + 8);
      v32 = v29 + 8;
      v31 = v33;
      v33(v15, v27);
      URL.appendingPathComponent(_:)();

      v67 = v26;
      if (qword_1002F79C8 != -1)
      {
        swift_once();
      }

      sub_1000F0254();

      v31(v18, v27);
      UUID.uuidString.getter();
      v68(v18, v70, v27);
      v34 = objc_autoreleasePoolPush();
      URL.path.getter();
      URL.appendingPathComponent(_:)();

      URL.appendingPathComponent(_:)();

      v31(v15, v77);
      v35 = v34;
      v36 = v77;
      objc_autoreleasePoolPop(v35);
      v31(v18, v36);
      v81 = &type metadata for AudioAccessoryFeatures;
      v37 = sub_1000F1874();
      v82 = v37;
      v38 = isFeatureEnabled(_:)();
      sub_1000EF824(v80);
      v65 = v32;
      v64 = v31;
      if (v38)
      {
        v71 = *&v71[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_bluetoothAddress];
        v68(v15, v70, v36);
        v39 = objc_autoreleasePoolPush();
        URL.path.getter();
        v40 = v76;
        URL.appendingPathComponent(_:)();
        v36 = v77;

        URL.appendingPathComponent(_:)();
        v31(v40, v36);
        objc_autoreleasePoolPop(v39);
        v31(v15, v36);
        v41 = v79;
        v31(v79, v36);
        (*(v78 + 32))(v41, v18, v36);
        v42 = v73;
      }

      else
      {
        v81 = &type metadata for AudioAccessoryFeatures;
        v82 = v37;
        isFeatureEnabled(_:)();
        sub_1000EF824(v80);
        v42 = v73;
        v41 = v79;
      }

      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      URL._bridgeToObjectiveC()(v43);
      v45 = v44;
      [(objc_class *)isa writeToURL:v44 atomically:1];

      v46 = static os_log_type_t.default.getter();
      if (qword_1002F7AF0 != -1)
      {
        swift_once();
      }

      v47 = qword_100300E40;
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v48 = swift_allocObject();
      v79 = xmmword_100226100;
      *(v48 + 16) = xmmword_100226100;
      sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      *(v48 + 56) = &type metadata for String;
      *(v48 + 64) = sub_1000EE954();
      *(v48 + 32) = v49;
      *(v48 + 40) = v51;
      os_log(_:dso:log:_:_:)(v46, &_mh_execute_header, v47, "Writing record to file: %@", 26, 2, v48);

      sub_1000EE870(&qword_1002F8900, &qword_100228398);
      inited = swift_initStackObject();
      *(inited + 16) = v79;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v53 = NSFileProtectionKey;
      v54 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v55 = sub_1000F97FC(inited);
      swift_setDeallocating();
      sub_1000EEE6C(inited + 32, &unk_1002F9D30, qword_1002283A0);
      v56 = [objc_opt_self() defaultManager];
      sub_10018AA14(v55);

      type metadata accessor for FileAttributeKey(0);
      sub_1001C4BB4(&qword_1002F7DC8, type metadata accessor for FileAttributeKey, &unk_100226A90);
      v57 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v58 = String._bridgeToObjectiveC()();

      v80[0] = 0;
      LODWORD(v49) = [v56 setAttributes:v57 ofItemAtPath:v58 error:v80];

      if (v49)
      {
        v59 = v80[0];
        URL.setResourceValues(_:)();
        v60 = v66;

        (*(v74 + 8))(v42, v60);
      }

      else
      {
        v61 = v80[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        (*(v74 + 8))(v42, v66);
      }

      v64(v41, v36);
    }
  }

  else
  {
    v22 = static os_log_type_t.default.getter();
    if (qword_1002F7AF0 != -1)
    {
      v62 = v22;
      swift_once();
      v22 = v62;
    }

    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, qword_100300E40, "store call failed because in device is in beforeFirstUnlock state", 65, 2, _swiftEmptyArrayStorage);
    sub_1001266E0();
    swift_allocError();
    *v23 = 0x8000000000000010;
    swift_willThrow();
  }
}

void sub_1001845E0(void (*a1)(char *, uint64_t), uint64_t a2)
{
  v5 = type metadata accessor for URLResourceValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v66 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v65 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v55 - v12;
  __chkstk_darwin(v14);
  v16 = &v55 - v15;
  if ([objc_opt_self() isFirstUnlocked])
  {
    v63 = a1;
    v64 = v8;
    v61 = v6;
    v62 = v5;
    v17 = objc_autoreleasePoolPush();
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    type metadata accessor for CloudCoordinatorConfiguration(0);
    sub_1001C4BB4(&qword_1002F89C0, type metadata accessor for CloudCoordinatorConfiguration, &unk_100228420);
    v18 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v2)
    {

      objc_autoreleasePoolPop(v17);
    }

    else
    {
      v22 = v18;
      v23 = v19;
      v58 = a2;
      v55 = 0;

      objc_autoreleasePoolPop(v17);
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_1000EF870(v22, v23);
      *&v59 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_directoryURL;
      if (qword_1002F7A10 != -1)
      {
        swift_once();
      }

      v24 = v64;
      v25 = sub_1000EE91C(v64, qword_100300C28);
      v26 = *(v9 + 16);
      v57 = v25;
      v56 = v26;
      (v26)(v13);
      URL.path.getter();
      v27 = *(v9 + 8);
      v27(v13, v24);
      URL.appendingPathComponent(_:)();

      if (qword_1002F79C8 != -1)
      {
        swift_once();
      }

      sub_1000F0254();

      v28 = v64;
      v27(v16, v64);
      v58 = UUID.uuidString.getter();
      v56(v16, v57, v28);
      v29 = objc_autoreleasePoolPush();
      URL.path.getter();
      URL.appendingPathComponent(_:)();

      v30 = v65;
      URL.appendingPathComponent(_:)();

      v27(v13, v28);
      objc_autoreleasePoolPop(v29);
      v63 = v27;
      v27(v16, v28);
      v68 = &type metadata for AudioAccessoryFeatures;
      v31 = sub_1000F1874();
      v69 = v31;
      isFeatureEnabled(_:)();
      sub_1000EF824(v67);
      v68 = &type metadata for AudioAccessoryFeatures;
      v69 = v31;
      isFeatureEnabled(_:)();
      sub_1000EF824(v67);
      v32 = v66;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      URL._bridgeToObjectiveC()(v33);
      v35 = v34;
      [(objc_class *)isa writeToURL:v34 atomically:1];

      v36 = static os_log_type_t.default.getter();
      v37 = v28;
      if (qword_1002F7AF0 != -1)
      {
        swift_once();
      }

      v38 = qword_100300E40;
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v39 = swift_allocObject();
      v59 = xmmword_100226100;
      *(v39 + 16) = xmmword_100226100;
      sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      *(v39 + 56) = &type metadata for String;
      *(v39 + 64) = sub_1000EE954();
      *(v39 + 32) = v40;
      *(v39 + 40) = v42;
      os_log(_:dso:log:_:_:)(v36, &_mh_execute_header, v38, "Writing record to file: %@", 26, 2, v39);

      sub_1000EE870(&qword_1002F8900, &qword_100228398);
      inited = swift_initStackObject();
      *(inited + 16) = v59;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v44 = NSFileProtectionKey;
      v45 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v46 = sub_1000F97FC(inited);
      swift_setDeallocating();
      sub_1000EEE6C(inited + 32, &unk_1002F9D30, qword_1002283A0);
      v47 = [objc_opt_self() defaultManager];
      sub_10018AA14(v46);

      type metadata accessor for FileAttributeKey(0);
      sub_1001C4BB4(&qword_1002F7DC8, type metadata accessor for FileAttributeKey, &unk_100226A90);
      v48 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v49 = String._bridgeToObjectiveC()();

      v67[0] = 0;
      LOBYTE(v40) = [v47 setAttributes:v48 ofItemAtPath:v49 error:v67];

      if (v40)
      {
        v50 = v67[0];
        URL.setResourceValues(_:)();
        v51 = v61;
        v52 = v63;

        (*(v51 + 8))(v32, v62);
        v52(v30, v37);
      }

      else
      {
        v53 = v67[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        (*(v61 + 8))(v32, v62);
        v63(v30, v37);
      }
    }
  }

  else
  {
    v20 = static os_log_type_t.default.getter();
    if (qword_1002F7AF0 != -1)
    {
      v54 = v20;
      swift_once();
      v20 = v54;
    }

    os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, qword_100300E40, "store call failed because in device is in beforeFirstUnlock state", 65, 2, _swiftEmptyArrayStorage);
    sub_1001266E0();
    swift_allocError();
    *v21 = 0x8000000000000010;
    swift_willThrow();
  }
}

void sub_100184EF0(void (*a1)(char *, uint64_t), uint64_t a2)
{
  v5 = type metadata accessor for URLResourceValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v66 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v65 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v55 - v12;
  __chkstk_darwin(v14);
  v16 = &v55 - v15;
  if ([objc_opt_self() isFirstUnlocked])
  {
    v63 = a1;
    v64 = v8;
    v61 = v6;
    v62 = v5;
    v17 = objc_autoreleasePoolPush();
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    type metadata accessor for LegacyAccountMagicKeysRecord(0);
    sub_1001C4BB4(&qword_1002F8310, type metadata accessor for LegacyAccountMagicKeysRecord, &unk_100227940);
    v18 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v2)
    {

      objc_autoreleasePoolPop(v17);
    }

    else
    {
      v22 = v18;
      v23 = v19;
      v58 = a2;
      v55 = 0;

      objc_autoreleasePoolPop(v17);
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_1000EF870(v22, v23);
      *&v59 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_directoryURL;
      if (qword_1002F79E8 != -1)
      {
        swift_once();
      }

      v24 = v64;
      v25 = sub_1000EE91C(v64, qword_100300B80);
      v26 = *(v9 + 16);
      v57 = v25;
      v56 = v26;
      (v26)(v13);
      URL.path.getter();
      v27 = *(v9 + 8);
      v27(v13, v24);
      URL.appendingPathComponent(_:)();

      if (qword_1002F79C8 != -1)
      {
        swift_once();
      }

      sub_1000F0254();

      v28 = v64;
      v27(v16, v64);
      v58 = UUID.uuidString.getter();
      v56(v16, v57, v28);
      v29 = objc_autoreleasePoolPush();
      URL.path.getter();
      URL.appendingPathComponent(_:)();

      v30 = v65;
      URL.appendingPathComponent(_:)();

      v27(v13, v28);
      objc_autoreleasePoolPop(v29);
      v63 = v27;
      v27(v16, v28);
      v68 = &type metadata for AudioAccessoryFeatures;
      v31 = sub_1000F1874();
      v69 = v31;
      isFeatureEnabled(_:)();
      sub_1000EF824(v67);
      v68 = &type metadata for AudioAccessoryFeatures;
      v69 = v31;
      isFeatureEnabled(_:)();
      sub_1000EF824(v67);
      v32 = v66;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      URL._bridgeToObjectiveC()(v33);
      v35 = v34;
      [(objc_class *)isa writeToURL:v34 atomically:1];

      v36 = static os_log_type_t.default.getter();
      v37 = v28;
      if (qword_1002F7AF0 != -1)
      {
        swift_once();
      }

      v38 = qword_100300E40;
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v39 = swift_allocObject();
      v59 = xmmword_100226100;
      *(v39 + 16) = xmmword_100226100;
      sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      *(v39 + 56) = &type metadata for String;
      *(v39 + 64) = sub_1000EE954();
      *(v39 + 32) = v40;
      *(v39 + 40) = v42;
      os_log(_:dso:log:_:_:)(v36, &_mh_execute_header, v38, "Writing record to file: %@", 26, 2, v39);

      sub_1000EE870(&qword_1002F8900, &qword_100228398);
      inited = swift_initStackObject();
      *(inited + 16) = v59;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v44 = NSFileProtectionKey;
      v45 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v46 = sub_1000F97FC(inited);
      swift_setDeallocating();
      sub_1000EEE6C(inited + 32, &unk_1002F9D30, qword_1002283A0);
      v47 = [objc_opt_self() defaultManager];
      sub_10018AA14(v46);

      type metadata accessor for FileAttributeKey(0);
      sub_1001C4BB4(&qword_1002F7DC8, type metadata accessor for FileAttributeKey, &unk_100226A90);
      v48 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v49 = String._bridgeToObjectiveC()();

      v67[0] = 0;
      LOBYTE(v40) = [v47 setAttributes:v48 ofItemAtPath:v49 error:v67];

      if (v40)
      {
        v50 = v67[0];
        URL.setResourceValues(_:)();
        v51 = v61;
        v52 = v63;

        (*(v51 + 8))(v32, v62);
        v52(v30, v37);
      }

      else
      {
        v53 = v67[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        (*(v61 + 8))(v32, v62);
        v63(v30, v37);
      }
    }
  }

  else
  {
    v20 = static os_log_type_t.default.getter();
    if (qword_1002F7AF0 != -1)
    {
      v54 = v20;
      swift_once();
      v20 = v54;
    }

    os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, qword_100300E40, "store call failed because in device is in beforeFirstUnlock state", 65, 2, _swiftEmptyArrayStorage);
    sub_1001266E0();
    swift_allocError();
    *v21 = 0x8000000000000010;
    swift_willThrow();
  }
}

void sub_100185800(void (*a1)(char *, uint64_t), uint64_t a2)
{
  v5 = type metadata accessor for URLResourceValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for URL();
  *&v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v83 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v68 - v11;
  __chkstk_darwin(v13);
  v15 = &v68 - v14;
  __chkstk_darwin(v16);
  v18 = &v68 - v17;
  if ([objc_opt_self() isFirstUnlocked])
  {
    v82 = a1;
    v77 = v12;
    v78 = v8;
    v79 = v6;
    v19 = objc_autoreleasePoolPush();
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    v20 = type metadata accessor for DeviceRecord(0);
    sub_1001C4BB4(&qword_1002F7CD0, type metadata accessor for DeviceRecord, &unk_100226958);
    v21 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v81 = v2;
    if (v2)
    {

      objc_autoreleasePoolPop(v19);
    }

    else
    {
      v25 = v21;
      v26 = v22;
      v75 = v20;
      v76 = a2;

      objc_autoreleasePoolPop(v19);
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_1000EF870(v25, v26);
      v80 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_directoryURL;
      if (qword_1002F79C0 != -1)
      {
        swift_once();
      }

      v73 = v5;
      v27 = v85;
      v28 = sub_1000EE91C(v85, qword_100300AF0);
      v29 = v84;
      v30 = *(v84 + 16);
      v31 = v28;
      v74 = v84 + 16;
      v71 = v30;
      (v30)(v15);
      URL.path.getter();
      v34 = *(v29 + 8);
      v32 = (v29 + 8);
      v33 = v34;
      v34(v15, v27);
      URL.appendingPathComponent(_:)();

      if (qword_1002F79C8 != -1)
      {
        swift_once();
      }

      sub_1000F0254();

      v33(v18, v27);
      v68 = UUID.uuidString.getter();
      v35 = v31;
      v70 = v31;
      v36 = v71;
      v71(v18, v35, v27);
      v69 = objc_autoreleasePoolPush();
      URL.path.getter();
      URL.appendingPathComponent(_:)();

      v37 = v77;
      URL.appendingPathComponent(_:)();

      v33(v15, v85);
      objc_autoreleasePoolPop(v69);
      v33(v18, v85);
      v38 = (v76 + *(v75 + 24));
      v39 = *v38;
      v75 = v38[1];
      v76 = v39;
      v36(v15, v70, v85);
      v40 = objc_autoreleasePoolPush();
      URL.path.getter();
      v41 = v83;
      URL.appendingPathComponent(_:)();
      v42 = v37;

      URL.appendingPathComponent(_:)();
      v33(v41, v85);
      v43 = v40;
      v44 = v85;
      objc_autoreleasePoolPop(v43);
      v33(v15, v44);
      v82 = v33;
      v83 = v32;
      v33(v37, v44);
      (*(v84 + 32))(v37, v18, v44);
      v45 = v78;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      URL._bridgeToObjectiveC()(v46);
      v48 = v47;
      v49 = isa;
      [(objc_class *)isa writeToURL:v47 atomically:1];

      v50 = static os_log_type_t.default.getter();
      if (qword_1002F7AF0 != -1)
      {
        swift_once();
      }

      v51 = qword_100300E40;
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v52 = swift_allocObject();
      v84 = xmmword_100226100;
      *(v52 + 16) = xmmword_100226100;
      sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v54;
      *(v52 + 56) = &type metadata for String;
      *(v52 + 64) = sub_1000EE954();
      *(v52 + 32) = v53;
      *(v52 + 40) = v55;
      os_log(_:dso:log:_:_:)(v50, &_mh_execute_header, v51, "Writing record to file: %@", 26, 2, v52);

      sub_1000EE870(&qword_1002F8900, &qword_100228398);
      inited = swift_initStackObject();
      *(inited + 16) = v84;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v57 = NSFileProtectionKey;
      v58 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v59 = sub_1000F97FC(inited);
      swift_setDeallocating();
      sub_1000EEE6C(inited + 32, &unk_1002F9D30, qword_1002283A0);
      v60 = [objc_opt_self() defaultManager];
      sub_10018AA14(v59);

      type metadata accessor for FileAttributeKey(0);
      sub_1001C4BB4(&qword_1002F7DC8, type metadata accessor for FileAttributeKey, &unk_100226A90);
      v61 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v62 = String._bridgeToObjectiveC()();

      v86 = 0;
      LOBYTE(v53) = [v60 setAttributes:v61 ofItemAtPath:v62 error:&v86];

      v63 = v73;
      if (v53)
      {
        v64 = v86;
        URL.setResourceValues(_:)();
        v65 = v82;

        (*(v79 + 8))(v45, v63);
        v65(v42, v44);
      }

      else
      {
        v66 = v86;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        (*(v79 + 8))(v45, v63);
        v82(v42, v44);
      }
    }
  }

  else
  {
    v23 = static os_log_type_t.default.getter();
    if (qword_1002F7AF0 != -1)
    {
      v67 = v23;
      swift_once();
      v23 = v67;
    }

    os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, qword_100300E40, "store call failed because in device is in beforeFirstUnlock state", 65, 2, _swiftEmptyArrayStorage);
    sub_1001266E0();
    swift_allocError();
    *v24 = 0x8000000000000010;
    swift_willThrow();
  }
}

void sub_1001861E8(void (*a1)(char *, uint64_t), uint64_t a2)
{
  v75 = a1;
  v76 = a2;
  v3 = type metadata accessor for URLResourceValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  *&v74 = *(v7 - 8);
  __chkstk_darwin(v7);
  v73 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v60 - v10;
  __chkstk_darwin(v12);
  v14 = &v60 - v13;
  __chkstk_darwin(v15);
  v17 = &v60 - v16;
  if ([objc_opt_self() isFirstUnlocked])
  {
    v71 = v11;
    v68 = v6;
    v69 = v4;
    v18 = objc_autoreleasePoolPush();
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    v19 = type metadata accessor for DeviceSupportInformationRecord(0);
    sub_1001C4BB4(&unk_1002F9DD0, type metadata accessor for DeviceSupportInformationRecord, &unk_100228BB0);
    v20 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v72 = v2;
    if (v2)
    {

      objc_autoreleasePoolPop(v18);
    }

    else
    {
      v24 = v20;
      v25 = v21;
      v64 = v19;

      objc_autoreleasePoolPop(v18);
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_1000EF870(v24, v25);
      v70 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_directoryURL;
      if (qword_1002F7A68 != -1)
      {
        swift_once();
      }

      v66 = v3;
      v26 = sub_1000EE91C(v7, qword_100300D48);
      v27 = v74;
      v28 = *(v74 + 16);
      v29 = v26;
      v67 = (v74 + 16);
      v63 = v28;
      (v28)(v14);
      URL.path.getter();
      v30 = v7;
      v31 = v27 + 8;
      v32 = *(v27 + 8);
      v32(v14, v30);
      URL.appendingPathComponent(_:)();

      if (qword_1002F79C8 != -1)
      {
        swift_once();
      }

      sub_1000F0254();

      v32(v17, v30);
      v60 = UUID.uuidString.getter();
      v62 = v29;
      v33 = v29;
      v34 = v63;
      v63(v17, v33, v30);
      v61 = objc_autoreleasePoolPush();
      URL.path.getter();
      v35 = v32;
      URL.appendingPathComponent(_:)();

      URL.appendingPathComponent(_:)();

      v32(v14, v30);
      objc_autoreleasePoolPop(v61);
      v32(v17, v30);
      v76 = *(v76 + *(v64 + 24));
      v34(v14, v62, v30);
      v67 = objc_autoreleasePoolPush();
      URL.path.getter();
      v36 = v73;
      URL.appendingPathComponent(_:)();

      URL.appendingPathComponent(_:)();
      v32(v36, v30);
      v37 = v71;
      objc_autoreleasePoolPop(v67);
      v35(v14, v30);
      v75 = v35;
      v76 = v31;
      v35(v37, v30);
      (*(v74 + 32))(v37, v17, v30);
      v38 = v68;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      URL._bridgeToObjectiveC()(v39);
      v41 = v40;
      v42 = isa;
      [(objc_class *)isa writeToURL:v40 atomically:1];

      v43 = static os_log_type_t.default.getter();
      if (qword_1002F7AF0 != -1)
      {
        swift_once();
      }

      v44 = qword_100300E40;
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v45 = swift_allocObject();
      v74 = xmmword_100226100;
      *(v45 + 16) = xmmword_100226100;
      sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      *(v45 + 56) = &type metadata for String;
      *(v45 + 64) = sub_1000EE954();
      *(v45 + 32) = v46;
      *(v45 + 40) = v48;
      os_log(_:dso:log:_:_:)(v43, &_mh_execute_header, v44, "Writing record to file: %@", 26, 2, v45);

      sub_1000EE870(&qword_1002F8900, &qword_100228398);
      inited = swift_initStackObject();
      *(inited + 16) = v74;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v50 = NSFileProtectionKey;
      v51 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v52 = sub_1000F97FC(inited);
      swift_setDeallocating();
      sub_1000EEE6C(inited + 32, &unk_1002F9D30, qword_1002283A0);
      v53 = [objc_opt_self() defaultManager];
      sub_10018AA14(v52);

      type metadata accessor for FileAttributeKey(0);
      sub_1001C4BB4(&qword_1002F7DC8, type metadata accessor for FileAttributeKey, &unk_100226A90);
      v54 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v55 = String._bridgeToObjectiveC()();

      v77 = 0;
      LOBYTE(v46) = [v53 setAttributes:v54 ofItemAtPath:v55 error:&v77];

      v56 = v66;
      if (v46)
      {
        v57 = v77;
        URL.setResourceValues(_:)();
      }

      else
      {
        v58 = v77;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      (*(v69 + 8))(v38, v56);
      v75(v37, v30);
    }
  }

  else
  {
    v22 = static os_log_type_t.default.getter();
    if (qword_1002F7AF0 != -1)
    {
      v59 = v22;
      swift_once();
      v22 = v59;
    }

    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, qword_100300E40, "store call failed because in device is in beforeFirstUnlock state", 65, 2, _swiftEmptyArrayStorage);
    sub_1001266E0();
    swift_allocError();
    *v23 = 0x8000000000000010;
    swift_willThrow();
  }
}

void sub_100186B94(void (*a1)(char *, uint64_t), uint64_t a2)
{
  v5 = type metadata accessor for URLResourceValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v66 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v65 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v55 - v12;
  __chkstk_darwin(v14);
  v16 = &v55 - v15;
  if ([objc_opt_self() isFirstUnlocked])
  {
    v63 = a1;
    v64 = v8;
    v61 = v6;
    v62 = v5;
    v17 = objc_autoreleasePoolPush();
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    type metadata accessor for LegacyMagicPairingSettingsRecords(0);
    sub_1001C4BB4(&qword_1002F8D78, type metadata accessor for LegacyMagicPairingSettingsRecords, &unk_100228F74);
    v18 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v2)
    {

      objc_autoreleasePoolPop(v17);
    }

    else
    {
      v22 = v18;
      v23 = v19;
      v58 = a2;
      v55 = 0;

      objc_autoreleasePoolPop(v17);
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_1000EF870(v22, v23);
      *&v59 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_directoryURL;
      if (qword_1002F7A70 != -1)
      {
        swift_once();
      }

      v24 = v64;
      v25 = sub_1000EE91C(v64, qword_100300D60);
      v26 = *(v9 + 16);
      v57 = v25;
      v56 = v26;
      (v26)(v13);
      URL.path.getter();
      v27 = *(v9 + 8);
      v27(v13, v24);
      URL.appendingPathComponent(_:)();

      if (qword_1002F79C8 != -1)
      {
        swift_once();
      }

      sub_1000F0254();

      v28 = v64;
      v27(v16, v64);
      v58 = UUID.uuidString.getter();
      v56(v16, v57, v28);
      v29 = objc_autoreleasePoolPush();
      URL.path.getter();
      URL.appendingPathComponent(_:)();

      v30 = v65;
      URL.appendingPathComponent(_:)();

      v27(v13, v28);
      objc_autoreleasePoolPop(v29);
      v63 = v27;
      v27(v16, v28);
      v68 = &type metadata for AudioAccessoryFeatures;
      v31 = sub_1000F1874();
      v69 = v31;
      isFeatureEnabled(_:)();
      sub_1000EF824(v67);
      v68 = &type metadata for AudioAccessoryFeatures;
      v69 = v31;
      isFeatureEnabled(_:)();
      sub_1000EF824(v67);
      v32 = v66;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      URL._bridgeToObjectiveC()(v33);
      v35 = v34;
      [(objc_class *)isa writeToURL:v34 atomically:1];

      v36 = static os_log_type_t.default.getter();
      v37 = v28;
      if (qword_1002F7AF0 != -1)
      {
        swift_once();
      }

      v38 = qword_100300E40;
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v39 = swift_allocObject();
      v59 = xmmword_100226100;
      *(v39 + 16) = xmmword_100226100;
      sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      *(v39 + 56) = &type metadata for String;
      *(v39 + 64) = sub_1000EE954();
      *(v39 + 32) = v40;
      *(v39 + 40) = v42;
      os_log(_:dso:log:_:_:)(v36, &_mh_execute_header, v38, "Writing record to file: %@", 26, 2, v39);

      sub_1000EE870(&qword_1002F8900, &qword_100228398);
      inited = swift_initStackObject();
      *(inited + 16) = v59;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v44 = NSFileProtectionKey;
      v45 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v46 = sub_1000F97FC(inited);
      swift_setDeallocating();
      sub_1000EEE6C(inited + 32, &unk_1002F9D30, qword_1002283A0);
      v47 = [objc_opt_self() defaultManager];
      sub_10018AA14(v46);

      type metadata accessor for FileAttributeKey(0);
      sub_1001C4BB4(&qword_1002F7DC8, type metadata accessor for FileAttributeKey, &unk_100226A90);
      v48 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v49 = String._bridgeToObjectiveC()();

      v67[0] = 0;
      LOBYTE(v40) = [v47 setAttributes:v48 ofItemAtPath:v49 error:v67];

      if (v40)
      {
        v50 = v67[0];
        URL.setResourceValues(_:)();
        v51 = v61;
        v52 = v63;

        (*(v51 + 8))(v32, v62);
        v52(v30, v37);
      }

      else
      {
        v53 = v67[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        (*(v61 + 8))(v32, v62);
        v63(v30, v37);
      }
    }
  }

  else
  {
    v20 = static os_log_type_t.default.getter();
    if (qword_1002F7AF0 != -1)
    {
      v54 = v20;
      swift_once();
      v20 = v54;
    }

    os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, qword_100300E40, "store call failed because in device is in beforeFirstUnlock state", 65, 2, _swiftEmptyArrayStorage);
    sub_1001266E0();
    swift_allocError();
    *v21 = 0x8000000000000010;
    swift_willThrow();
  }
}

void sub_1001874A4(void (*a1)(char *, uint64_t), uint64_t a2)
{
  v75 = a1;
  v76 = a2;
  v3 = type metadata accessor for URLResourceValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  *&v74 = *(v7 - 8);
  __chkstk_darwin(v7);
  v73 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v60 - v10;
  __chkstk_darwin(v12);
  v14 = &v60 - v13;
  __chkstk_darwin(v15);
  v17 = &v60 - v16;
  if ([objc_opt_self() isFirstUnlocked])
  {
    v71 = v11;
    v68 = v6;
    v69 = v4;
    v18 = objc_autoreleasePoolPush();
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    v19 = type metadata accessor for MagicPairingSettingsRecord(0);
    sub_1001C4BB4(&qword_1002F8718, type metadata accessor for MagicPairingSettingsRecord, &unk_100227F48);
    v20 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v72 = v2;
    if (v2)
    {

      objc_autoreleasePoolPop(v18);
    }

    else
    {
      v24 = v20;
      v25 = v21;
      v64 = v19;

      objc_autoreleasePoolPop(v18);
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_1000EF870(v24, v25);
      v70 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_directoryURL;
      if (qword_1002F7A00 != -1)
      {
        swift_once();
      }

      v66 = v3;
      v26 = sub_1000EE91C(v7, qword_100300BA8);
      v27 = v74;
      v28 = *(v74 + 16);
      v29 = v26;
      v67 = (v74 + 16);
      v63 = v28;
      (v28)(v14);
      URL.path.getter();
      v30 = v7;
      v31 = v27 + 8;
      v32 = *(v27 + 8);
      v32(v14, v30);
      URL.appendingPathComponent(_:)();

      if (qword_1002F79C8 != -1)
      {
        swift_once();
      }

      sub_1000F0254();

      v32(v17, v30);
      v60 = UUID.uuidString.getter();
      v62 = v29;
      v33 = v29;
      v34 = v63;
      v63(v17, v33, v30);
      v61 = objc_autoreleasePoolPush();
      URL.path.getter();
      v35 = v32;
      URL.appendingPathComponent(_:)();

      URL.appendingPathComponent(_:)();

      v32(v14, v30);
      objc_autoreleasePoolPop(v61);
      v32(v17, v30);
      v76 = *(v76 + *(v64 + 24));
      v34(v14, v62, v30);
      v67 = objc_autoreleasePoolPush();
      URL.path.getter();
      v36 = v73;
      URL.appendingPathComponent(_:)();

      URL.appendingPathComponent(_:)();
      v32(v36, v30);
      v37 = v71;
      objc_autoreleasePoolPop(v67);
      v35(v14, v30);
      v75 = v35;
      v76 = v31;
      v35(v37, v30);
      (*(v74 + 32))(v37, v17, v30);
      v38 = v68;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      URL._bridgeToObjectiveC()(v39);
      v41 = v40;
      v42 = isa;
      [(objc_class *)isa writeToURL:v40 atomically:1];

      v43 = static os_log_type_t.default.getter();
      if (qword_1002F7AF0 != -1)
      {
        swift_once();
      }

      v44 = qword_100300E40;
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v45 = swift_allocObject();
      v74 = xmmword_100226100;
      *(v45 + 16) = xmmword_100226100;
      sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      *(v45 + 56) = &type metadata for String;
      *(v45 + 64) = sub_1000EE954();
      *(v45 + 32) = v46;
      *(v45 + 40) = v48;
      os_log(_:dso:log:_:_:)(v43, &_mh_execute_header, v44, "Writing record to file: %@", 26, 2, v45);

      sub_1000EE870(&qword_1002F8900, &qword_100228398);
      inited = swift_initStackObject();
      *(inited + 16) = v74;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v50 = NSFileProtectionKey;
      v51 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v52 = sub_1000F97FC(inited);
      swift_setDeallocating();
      sub_1000EEE6C(inited + 32, &unk_1002F9D30, qword_1002283A0);
      v53 = [objc_opt_self() defaultManager];
      sub_10018AA14(v52);

      type metadata accessor for FileAttributeKey(0);
      sub_1001C4BB4(&qword_1002F7DC8, type metadata accessor for FileAttributeKey, &unk_100226A90);
      v54 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v55 = String._bridgeToObjectiveC()();

      v77 = 0;
      LOBYTE(v46) = [v53 setAttributes:v54 ofItemAtPath:v55 error:&v77];

      v56 = v66;
      if (v46)
      {
        v57 = v77;
        URL.setResourceValues(_:)();
      }

      else
      {
        v58 = v77;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      (*(v69 + 8))(v38, v56);
      v75(v37, v30);
    }
  }

  else
  {
    v22 = static os_log_type_t.default.getter();
    if (qword_1002F7AF0 != -1)
    {
      v59 = v22;
      swift_once();
      v22 = v59;
    }

    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, qword_100300E40, "store call failed because in device is in beforeFirstUnlock state", 65, 2, _swiftEmptyArrayStorage);
    sub_1001266E0();
    swift_allocError();
    *v23 = 0x8000000000000010;
    swift_willThrow();
  }
}

void sub_100187E50(uint64_t a1, void (*a2)(char *, uint64_t))
{
  v67 = a2;
  v4 = type metadata accessor for URLResourceValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v66 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v55 - v12;
  __chkstk_darwin(v14);
  v16 = v55 - v15;
  if ([objc_opt_self() isFirstUnlocked])
  {
    v63 = v4;
    *&v64 = a1;
    v61 = v7;
    v62 = v5;
    v65 = v8;
    v17 = objc_autoreleasePoolPush();
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    v18 = type metadata accessor for SoundProfileRecord(0);
    sub_1001C4BB4(&qword_1002F9D80, type metadata accessor for SoundProfileRecord, &unk_1002272AC);
    v19 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v2)
    {

      objc_autoreleasePoolPop(v17);
    }

    else
    {
      v23 = v19;
      v24 = v20;
      v58 = v18;
      v55[1] = 0;

      objc_autoreleasePoolPop(v17);
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_1000EF870(v23, v24);
      v59 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_directoryURL;
      if (qword_1002F79D8 != -1)
      {
        swift_once();
      }

      v25 = v65;
      v26 = sub_1000EE91C(v65, qword_100300B50);
      v27 = *(v9 + 16);
      v57 = v26;
      v56 = v27;
      (v27)(v13);
      URL.path.getter();
      v28 = *(v9 + 8);
      v28(v13, v25);
      URL.appendingPathComponent(_:)();

      if (qword_1002F79C8 != -1)
      {
        swift_once();
      }

      sub_1000F0254();

      v29 = v65;
      v28(v16, v65);
      UUID.uuidString.getter();
      v56(v16, v57, v29);
      v67 = objc_autoreleasePoolPush();
      URL.path.getter();
      URL.appendingPathComponent(_:)();

      v30 = v66;
      URL.appendingPathComponent(_:)();

      v28(v13, v29);
      objc_autoreleasePoolPop(v67);
      v67 = v28;
      v28(v16, v29);
      v69 = &type metadata for AudioAccessoryFeatures;
      v31 = sub_1000F1874();
      v70 = v31;
      isFeatureEnabled(_:)();
      sub_1000EF824(v68);
      v69 = &type metadata for AudioAccessoryFeatures;
      v70 = v31;
      isFeatureEnabled(_:)();
      sub_1000EF824(v68);
      v32 = v61;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      URL._bridgeToObjectiveC()(v33);
      v35 = v34;
      [(objc_class *)isa writeToURL:v34 atomically:1];

      v36 = static os_log_type_t.default.getter();
      v37 = v29;
      if (qword_1002F7AF0 != -1)
      {
        swift_once();
      }

      v38 = qword_100300E40;
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v39 = swift_allocObject();
      v64 = xmmword_100226100;
      *(v39 + 16) = xmmword_100226100;
      sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      *(v39 + 56) = &type metadata for String;
      *(v39 + 64) = sub_1000EE954();
      *(v39 + 32) = v40;
      *(v39 + 40) = v42;
      os_log(_:dso:log:_:_:)(v36, &_mh_execute_header, v38, "Writing record to file: %@", 26, 2, v39);

      sub_1000EE870(&qword_1002F8900, &qword_100228398);
      inited = swift_initStackObject();
      *(inited + 16) = v64;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v44 = NSFileProtectionKey;
      v45 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v46 = sub_1000F97FC(inited);
      swift_setDeallocating();
      sub_1000EEE6C(inited + 32, &unk_1002F9D30, qword_1002283A0);
      v47 = [objc_opt_self() defaultManager];
      sub_10018AA14(v46);

      type metadata accessor for FileAttributeKey(0);
      sub_1001C4BB4(&qword_1002F7DC8, type metadata accessor for FileAttributeKey, &unk_100226A90);
      v48 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v49 = String._bridgeToObjectiveC()();

      v68[0] = 0;
      LOBYTE(v40) = [v47 setAttributes:v48 ofItemAtPath:v49 error:v68];

      if (v40)
      {
        v50 = v68[0];
        URL.setResourceValues(_:)();
        v51 = v62;
        v52 = v67;

        (*(v51 + 8))(v32, v63);
        v52(v30, v37);
      }

      else
      {
        v53 = v68[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        (*(v62 + 8))(v32, v63);
        v67(v30, v37);
      }
    }
  }

  else
  {
    v21 = static os_log_type_t.default.getter();
    if (qword_1002F7AF0 != -1)
    {
      v54 = v21;
      swift_once();
      v21 = v54;
    }

    os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, qword_100300E40, "store call failed because in device is in beforeFirstUnlock state", 65, 2, _swiftEmptyArrayStorage);
    sub_1001266E0();
    swift_allocError();
    *v22 = 0x8000000000000010;
    swift_willThrow();
  }
}

void sub_100188774(uint64_t a1, char *a2)
{
  *&v79 = a1;
  v4 = type metadata accessor for URLResourceValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v78 = *(v8 - 8);
  __chkstk_darwin(v8);
  v77 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v64 - v11;
  __chkstk_darwin(v13);
  v15 = v64 - v14;
  __chkstk_darwin(v16);
  v18 = v64 - v17;
  if ([objc_opt_self() isFirstUnlocked])
  {
    v73 = v12;
    v74 = v7;
    v75 = v5;
    v76 = v4;
    v19 = objc_autoreleasePoolPush();
    v80[0] = a2;
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    type metadata accessor for AAProxCardsRecord(0);
    sub_1001C4BB4(&qword_1002F7F78, type metadata accessor for AAProxCardsRecord, &protocol conformance descriptor for AAProxCardsRecord);
    v20 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v2)
    {

      objc_autoreleasePoolPop(v19);
    }

    else
    {
      v24 = v20;
      v25 = v21;
      v70 = a2;

      objc_autoreleasePoolPop(v19);
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_1000EF870(v24, v25);
      v26 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_directoryURL;
      if (qword_1002F79D0 != -1)
      {
        swift_once();
      }

      v64[1] = 0;
      v27 = sub_1000EE91C(v8, qword_100300B10);
      v28 = v78;
      v29 = *(v78 + 16);
      v69 = v27;
      v68 = v78 + 16;
      v67 = v29;
      (v29)(v15);
      URL.path.getter();
      v32 = *(v28 + 8);
      v31 = (v28 + 8);
      v30 = v32;
      v32(v15, v8);
      URL.appendingPathComponent(_:)();

      v66 = v26;
      if (qword_1002F79C8 != -1)
      {
        swift_once();
      }

      sub_1000F0254();

      v30(v18, v8);
      UUID.uuidString.getter();
      v67(v18, v69, v8);
      v72 = objc_autoreleasePoolPush();
      URL.path.getter();
      v33 = v8;
      v34 = v31;
      URL.appendingPathComponent(_:)();

      v35 = v73;
      URL.appendingPathComponent(_:)();

      v30(v15, v33);
      objc_autoreleasePoolPop(v72);
      v72 = v34;
      v71 = v30;
      v30(v18, v33);
      v36 = v33;
      v81 = &type metadata for AudioAccessoryFeatures;
      v37 = sub_1000F1874();
      v82 = v37;
      isFeatureEnabled(_:)();
      sub_1000EF824(v80);
      v81 = &type metadata for AudioAccessoryFeatures;
      v82 = v37;
      LOBYTE(v37) = isFeatureEnabled(_:)();
      sub_1000EF824(v80);
      if (v37)
      {
        v70 = *&v70[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_bluetoothAddress + 8];
        v67(v15, v69, v33);
        v38 = objc_autoreleasePoolPush();
        URL.path.getter();
        v39 = v77;
        URL.appendingPathComponent(_:)();

        URL.appendingPathComponent(_:)();
        v40 = v71;
        v71(v39, v33);
        objc_autoreleasePoolPop(v38);
        v40(v15, v33);
        v40(v35, v33);
        (*(v78 + 32))(v35, v18, v33);
      }

      v41 = v74;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v42 = v35;
      URL._bridgeToObjectiveC()(v43);
      v45 = v44;
      v46 = isa;
      [(objc_class *)isa writeToURL:v44 atomically:1];

      v47 = static os_log_type_t.default.getter();
      if (qword_1002F7AF0 != -1)
      {
        swift_once();
      }

      v48 = qword_100300E40;
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v49 = swift_allocObject();
      v79 = xmmword_100226100;
      *(v49 + 16) = xmmword_100226100;
      sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v51;
      *(v49 + 56) = &type metadata for String;
      *(v49 + 64) = sub_1000EE954();
      *(v49 + 32) = v50;
      *(v49 + 40) = v52;
      os_log(_:dso:log:_:_:)(v47, &_mh_execute_header, v48, "Writing record to file: %@", 26, 2, v49);

      sub_1000EE870(&qword_1002F8900, &qword_100228398);
      inited = swift_initStackObject();
      *(inited + 16) = v79;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v54 = NSFileProtectionKey;
      v55 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v56 = sub_1000F97FC(inited);
      swift_setDeallocating();
      sub_1000EEE6C(inited + 32, &unk_1002F9D30, qword_1002283A0);
      v57 = [objc_opt_self() defaultManager];
      sub_10018AA14(v56);

      type metadata accessor for FileAttributeKey(0);
      sub_1001C4BB4(&qword_1002F7DC8, type metadata accessor for FileAttributeKey, &unk_100226A90);
      v58 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v59 = String._bridgeToObjectiveC()();

      v80[0] = 0;
      LODWORD(v52) = [v57 setAttributes:v58 ofItemAtPath:v59 error:v80];

      if (v52)
      {
        v60 = v80[0];
        URL.setResourceValues(_:)();
        v61 = v75;

        (*(v61 + 8))(v41, v76);
      }

      else
      {
        v62 = v80[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        (*(v75 + 8))(v41, v76);
      }

      v71(v42, v36);
    }
  }

  else
  {
    v22 = static os_log_type_t.default.getter();
    if (qword_1002F7AF0 != -1)
    {
      v63 = v22;
      swift_once();
      v22 = v63;
    }

    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, qword_100300E40, "store call failed because in device is in beforeFirstUnlock state", 65, 2, _swiftEmptyArrayStorage);
    sub_1001266E0();
    swift_allocError();
    *v23 = 0x8000000000000010;
    swift_willThrow();
  }
}