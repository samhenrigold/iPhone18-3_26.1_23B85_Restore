uint64_t sub_1001A6360(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for URLResourceKey(0);
  sub_1001A6868(&qword_100936D28, type metadata accessor for URLResourceKey, &unk_1007915F0);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_10037D23C(&v6, v5);

      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1001A653C(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  sub_1001A6868(&qword_1009438D0, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
  result = Set.init(minimumCapacity:)();
  v19 = result;
  if (v11)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v6, v16, v2);
      sub_10037D478(v10, v6);
      (*(v13 - 8))(v10, v2);
      v16 += v17;
      --v11;
    }

    while (v11);
    return v19;
  }

  return result;
}

uint64_t sub_1001A6768(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1001A6814();
  result = Set.init(minimumCapacity:)();
  v6 = result;
  if (v2)
  {
    v4 = (a1 + 48);
    do
    {
      sub_10037E5F0(v5, *(v4 - 2), *(v4 - 1), *v4);

      v4 += 3;
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

unint64_t sub_1001A6814()
{
  result = qword_10093A8F0;
  if (!qword_10093A8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093A8F0);
  }

  return result;
}

uint64_t sub_1001A6868(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t *sub_1001A68E0(unint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_1000F5104(a2, a3);
    sub_10000CB48(a4, a2, a3, &protocol conformance descriptor for NSObject);
    result = Set.init(minimumCapacity:)();
    v15 = result;
    if (v10)
    {
      break;
    }

    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      return result;
    }

LABEL_6:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v13 = *(a1 + 8 * a2 + 32);
      }

      v10 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v15;
      a5(&v14, v13);

      a2 = (a2 + 1);
      if (v10 == v12)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  a4 = result;
  v12 = _CocoaArrayWrapper.endIndex.getter();
  result = a4;
  if (v12)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1001A6A48(uint64_t a1)
{
  v2 = type metadata accessor for RDPermanentlyHiddenReminder(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v10 = &v15 - v9;
  v11 = *(a1 + 16);
  sub_1001A6868(&qword_10093A908, type metadata accessor for RDPermanentlyHiddenReminder, &unk_1007B0DC4);
  result = Set.init(minimumCapacity:)();
  v16 = result;
  if (v11)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_1001A3A2C(v13, v6);
      sub_10037E7F4(v10, v6);
      sub_1001A3AF4(v10);
      v13 += v14;
      --v11;
    }

    while (v11);
    return v16;
  }

  return result;
}

uint64_t sub_1001A6DC4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093AA50);
  v1 = sub_100006654(v0, qword_10093AA50);
  if (qword_100936488 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009750E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001A6E8C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v2 - 8);
  __chkstk_darwin(v2, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v6 = *(v18 - 8);
  __chkstk_darwin(v18, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 16);
  v11 = *(v1 + 24);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  aBlock[4] = sub_1001A727C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E8470;
  v13 = _Block_copy(aBlock);
  v14 = v10;
  v15 = v11;
  static DispatchQoS.unspecified.getter();
  v20 = &_swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v19 + 8))(v5, v2);
  (*(v6 + 8))(v9, v18);

  return v1;
}

id sub_1001A712C(void *a1)
{
  if (qword_100935B20 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_10093AA50);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Invalidating RDSpringBoardApplicationShortcutUpdater's application shortcut service", v5, 2u);
  }

  return [a1 invalidate];
}

uint64_t sub_1001A7224()
{
  sub_1001A6E8C();

  return swift_deallocClassInstance();
}

uint64_t sub_1001A7284(_TtC7remindd19RDXPCStorePerformer *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v48 = *(v9 - 8);
  __chkstk_darwin(v9, v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100935B20 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100006654(v13, qword_10093AA50);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  a1, v16, v17, v18, v19, v20, v21, v22;
  if (os_log_type_enabled(v14, v15))
  {
    v23 = swift_slowAlloc();
    v47 = v5;
    v24 = v23;
    v45 = swift_slowAlloc();
    v46 = v9;
    aBlock[0] = v45;
    *v24 = 136315138;
    type metadata accessor for REMAccountsListDataView.Model.GroupChild();
    v25 = Array.description.getter();
    v27 = v26;
    v28 = a1;
    v29 = v12;
    v30 = v8;
    v31 = v4;
    v32 = v2;
    v33 = sub_10000668C(v25, v26, aBlock);
    v27, v34, v35, v36, v37, v38, v39, v40;
    *(v24 + 4) = v33;
    v2 = v32;
    v4 = v31;
    v8 = v30;
    v12 = v29;
    a1 = v28;
    _os_log_impl(&_mh_execute_header, v14, v15, "Application shortcut update requested for lists {lists: %s}", v24, 0xCu);
    sub_10000607C(v45);
    v9 = v46;

    v5 = v47;
  }

  v41 = swift_allocObject();
  *(v41 + 16) = a1;
  *(v41 + 24) = v2;
  aBlock[4] = sub_1001A8248;
  aBlock[5] = v41;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E84C0;
  v42 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v49 = &_swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v42);
  (*(v5 + 8))(v8, v4);
  (*(v48 + 8))(v12, v9);
}

void sub_1001A7664(_TtC7remindd19RDXPCStorePerformer *a1)
{
  if (qword_100935B20 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_10093AA50);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  a1, v5, v6, v7, v8, v9, v10, v11;
  if (os_log_type_enabled(v3, v4))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136315138;
    type metadata accessor for REMAccountsListDataView.Model.GroupChild();
    v14 = Array.description.getter();
    v16 = v15;
    v17 = sub_10000668C(v14, v15, &v25);
    v16, v18, v19, v20, v21, v22, v23, v24;
    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v3, v4, "Updating application shortcuts for lists {lists: %s}", v12, 0xCu);
    sub_10000607C(v13);
  }

  sub_1001A77DC(a1);
}

void sub_1001A77DC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for REMAccountsListDataView.Model.GroupChild();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v12 = &v28 - v11;
  v13 = *(a1 + 16);
  v14 = &_swiftEmptyArrayStorage;
  if (v13)
  {
    v29 = v2;
    v33 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v15 = sub_1001A8250();
    v16 = v5 + 16;
    v17 = *(v5 + 16);
    v18 = a1 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v30 = *(v16 + 56);
    v31 = v15;
    v32 = v16;
    v19 = (v16 - 8);
    do
    {
      v17(v12, v18, v4);
      v17(v8, v12, v4);
      sub_1001A79F4(v8);
      (*v19)(v12, v4);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v18 += v30;
      --v13;
    }

    while (v13);
    v14 = v33;
    v2 = v29;
  }

  sub_1001A8250();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v14, v21, v22, v23, v24, v25, v26, v27;
  [v2 updateDynamicApplicationShortcutItems:isa forBundleIdentifier:REMAppBundleIdentifier];
}

id sub_1001A79F4(uint64_t a1)
{
  v2 = type metadata accessor for REMApplicationShortcutUserInfoKeys();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = String._bridgeToObjectiveC()();
  [v7 setType:v8];

  sub_1001A7CD4();
  v10 = v9;
  v11 = String._bridgeToObjectiveC()();
  v10, v12, v13, v14, v15, v16, v17, v18;
  [v7 setLocalizedTitle:v11];

  v19 = objc_allocWithZone(SBSApplicationShortcutSystemIcon);
  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 initWithSystemImageName:v20];

  [v7 setIcon:v21];
  sub_1000F5104(&qword_10093AB20, &qword_100798078);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  (*(v3 + 104))(v6, enum case for REMApplicationShortcutUserInfoKeys.actionURLAbsoluteString(_:), v2);
  v23 = REMApplicationShortcutUserInfoKeys.rawValue.getter();
  v25 = v24;
  (*(v3 + 8))(v6, v2);
  *(inited + 32) = v23;
  *(inited + 40) = v25;
  *(inited + 48) = sub_1001A7EF4();
  v26 = sub_10038F578(inited);
  swift_setDeallocating();
  sub_1001A829C(inited + 32);
  sub_1000F5104(&qword_10093AB30, &qword_100798088);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v26, v28, v29, v30, v31, v32, v33, v34;
  [v7 setUserInfo:isa];

  v35 = type metadata accessor for REMAccountsListDataView.Model.GroupChild();
  (*(*(v35 - 8) + 8))(a1, v35);
  return v7;
}

uint64_t sub_1001A7CD4()
{
  v1 = type metadata accessor for REMAccountsListDataView.Model.GroupChild();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = (&v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = _REMGetLocalizedString();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  (*(v2 + 16))(v5, v0, v1);
  v9 = (*(v2 + 88))(v5, v1);
  if (v9 == enum case for REMAccountsListDataView.Model.GroupChild.list(_:))
  {
    v10 = &selRef_displayName;
LABEL_5:
    (*(v2 + 96))(v5, v1);
    v11 = *v5;
    sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100791300;
    v13 = [v11 *v10];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = sub_100006600();
    *(v12 + 32) = v14;
    *(v12 + 40) = v16;
    v17 = static String.localizedStringWithFormat(_:_:)();

    v12, v18, v19, v20, v21, v22, v23, v24;
    v8, v25, v26, v27, v28, v29, v30, v31;
    return v17;
  }

  if (v9 == enum case for REMAccountsListDataView.Model.GroupChild.customSmartList(_:))
  {
    v10 = &selRef_name;
    goto LABEL_5;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

NSString sub_1001A7EF4()
{
  v1 = v0;
  v36 = type metadata accessor for URL();
  v2 = *(v36 - 8);
  __chkstk_darwin(v36, v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for REMAccountsListDataView.Model.GroupChild();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = (&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for REMNavigationSpecifier();
  v12 = *(v11 - 8);
  v14 = __chkstk_darwin(v11, v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v1, v6, v14);
  v17 = (*(v7 + 88))(v10, v6);
  if (v17 == enum case for REMAccountsListDataView.Model.GroupChild.list(_:))
  {
    v18 = &enum case for REMNavigationSpecifier.list(_:);
LABEL_5:
    (*(v7 + 96))(v10, v6);
    v19 = *v10;
    v20 = *(sub_1000F5104(&qword_10093AB38, qword_100798090) + 48);
    v21 = [v19 objectID];

    *v16 = v21;
    v22 = enum case for REMNavigationSpecifier.ListPathSpecifier.newReminder(_:);
    v23 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
    (*(*(v23 - 8) + 104))(&v16[v20], v22, v23);
    (*(v12 + 104))(v16, *v18, v11);
    REMNavigationSpecifier.url.getter();
    URL.absoluteString.getter();
    v25 = v24;
    v26 = String._bridgeToObjectiveC()();
    v25, v27, v28, v29, v30, v31, v32, v33;
    (*(v2 + 8))(v5, v36);
    (*(v12 + 8))(v16, v11);
    return v26;
  }

  if (v17 == enum case for REMAccountsListDataView.Model.GroupChild.customSmartList(_:))
  {
    v18 = &enum case for REMNavigationSpecifier.customSmartList(_:);
    goto LABEL_5;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

unint64_t sub_1001A8250()
{
  result = qword_10093AB18;
  if (!qword_10093AB18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10093AB18);
  }

  return result;
}

uint64_t sub_1001A829C(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_10093AB28, &qword_100798080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001A830C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093AB40);
  v1 = sub_100006654(v0, qword_10093AB40);
  if (qword_1009364E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Bool __swiftcall REMCDReminder.markExtraneousAlarmsForDeletion()()
{
  if ([v0 markedForDeletion] & 1) != 0 || (objc_msgSend(v0, "isDeleted"))
  {
    goto LABEL_22;
  }

  v1 = [v0 account];
  if (!v1)
  {
    return v1;
  }

  v2 = v1;
  v3 = [v1 accountTypeHost];
  v4 = [v3 isCloudKit];

  if (!v4)
  {
LABEL_21:

LABEL_22:
    LOBYTE(v1) = 0;
    return v1;
  }

  v5 = [v0 alarmStorage];
  if (!v5)
  {
LABEL_13:
    if (qword_100935B28 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100006654(v18, qword_10093AB40);
    v19 = v0;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v64 = v23;
      *v22 = 136446210;
      v24 = [v19 remObjectID];
      if (v24)
      {
        v25 = v24;
        v26 = [v24 description];

        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;
      }

      else
      {
        v27 = 7104878;
        v29 = 0xE300000000000000;
      }

      v30 = sub_10000668C(v27, v29, &v64);
      v29, v31, v32, v33, v34, v35, v36, v37;
      *(v22 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v20, v21, "REMCDReminder.markExtraneousAlarmsForDeletion(): Reminder has <= 1 alarm, stopping early {reminderID: %{public}s}", v22, 0xCu);
      sub_10000607C(v23);
    }

    goto LABEL_21;
  }

  v6 = v5;
  if ([v5 count] < 2)
  {

    goto LABEL_13;
  }

  if (qword_100935B28 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100006654(v7, qword_10093AB40);
  v8 = v0;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v11 = 136446466;
    v12 = [v8 remObjectID];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 description];

      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
    }

    else
    {
      v17 = 0xE300000000000000;
      v15 = 7104878;
    }

    v38 = sub_10000668C(v15, v17, &v64);
    v17, v39, v40, v41, v42, v43, v44, v45;
    *(v11 + 4) = v38;
    *(v11 + 12) = 2082;
    v46 = [v8 managedObjectContext];
    if (v46 && (v47 = v46, v48 = [v46 transactionAuthor], v47, v48))
    {
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      v52 = v49;
    }

    else
    {
      v51 = 0xE300000000000000;
      v52 = 7104878;
    }

    v53 = sub_10000668C(v52, v51, &v64);
    v51, v54, v55, v56, v57, v58, v59, v60;
    *(v11 + 14) = v53;
    _os_log_impl(&_mh_execute_header, v9, v10, "REMCDReminder.markExtraneousAlarmsForDeletion() {reminderID: %{public}s, author: %{public}s}", v11, 0x16u);
    swift_arrayDestroy();
  }

  LOBYTE(v64) = 0;
  __chkstk_darwin(v61, v62);
  static os_log_type_t.info.getter();
  measureTimeElapsed(_:level:block:)();

  LOBYTE(v1) = v64;
  return v1;
}

void sub_1001A88E4(uint64_t a1, void *a2, BOOL *a3)
{
  sub_1000060C8(0, &unk_100938870, off_1008D4128);
  sub_1000060C8(0, &unk_100939E90, NSOrderedSet_ptr);
  sub_1001AADC4();
  v5 = Sequence.elements<A>(ofType:)();
  v6 = [a2 remObjectID];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 description];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v11 = 0xE300000000000000;
    v9 = 7104878;
  }

  v12 = sub_1001ADC98(v5, v9, v11);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v11, v13, v15, v17, v19, v20, v21, v22;
  v5, v23, v24, v25, v26, v27, v28, v29;
  v30 = sub_1001A8A54(v12, v14, v16, v18);
  v18, v31, v32, v33, v34, v35, v36, v37;
  v16, v38, v39, v40, v41, v42, v43, v44;
  v14, v45, v46, v47, v48, v49, v50, v51;
  *a3 = v30;
}

BOOL sub_1001A8A54(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, _TtC7remindd19RDXPCStorePerformer *a3, unint64_t a4)
{
  v5 = a3;
  v8 = a3 >> 62;
  if (a3 >> 62)
  {
LABEL_59:
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v196 = a1;
  if (v9 >= 2)
  {
    v192 = v8;
    v194 = v5;
    sub_1001A99E0(v5);
    v5 = v10;
    v197 = 0;
    a1 = v11 >> 1;
    v12 = v10;
LABEL_5:
    v13 = v12;
    while (a1 != v13)
    {
      if (v12 < v5 || v13 >= a1)
      {
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v14 = v13 + 1;

      v8 = sub_1001AA380();

      v13 = v14;
      if (v8)
      {
        v12 = v14;
        v15 = __OFADD__(v197++, 1);
        if (!v15)
        {
          goto LABEL_5;
        }

        __break(1u);
        goto LABEL_13;
      }
    }

    swift_unknownObjectRelease();
    if (v197 >= 1)
    {
      type metadata accessor for Analytics();
      if (static Analytics.isEventUsed(_:)())
      {
        sub_1000F5104(&unk_100939240, &unk_100798990);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100791340;
        *(inited + 32) = 1701869940;
        *(inited + 40) = 0xE400000000000000;
        sub_1000060C8(0, &unk_10093F610, NSString_ptr);
        *(inited + 48) = NSString.init(stringLiteral:)();
        *(inited + 56) = 0x746E756F63;
        *(inited + 64) = 0xE500000000000000;
        *(inited + 72) = Int._bridgeToObjectiveC()();
        v42 = sub_10038D880(inited);
        swift_setDeallocating();
        sub_1000F5104(&unk_100939250, &unk_100795D30);
        swift_arrayDestroy();
        static Analytics.postEvent(_:payload:duration:)();
        v42, v43, v44, v45, v46, v47, v48, v49;
      }
    }

    v5 = v194;
    if (qword_100935B28 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_100006654(v50, qword_10093AB40);

    v8 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    a1 = v196;
    if (os_log_type_enabled(v8, v51))
    {
      v52 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v198[0] = v60;
      *v52 = 134218498;
      if (v192)
      {
        v61 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v61 = *((v194 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v52 + 4) = v61;
      a4, v53, v54, v55, v56, v57, v58, v59;
      v194, v83, v84, v85, v86, v87, v88, v89;
      a2, v90, v91, v92, v93, v94, v95, v96;
      *(v52 + 12) = 2048;
      *(v52 + 14) = v197;
      *(v52 + 22) = 2080;
      *(v52 + 24) = sub_10000668C(v196, a2, v198);
      _os_log_impl(&_mh_execute_header, v8, v51, "REMCDReminder.ExtraneousAlarmsMarker: markExtraneousAlarmsForDeletion: (dueDateVerifiableAlarms) {total: %ld, deleted: %ld, reminderID: %s}", v52, 0x20u);
      sub_10000607C(v60);
    }

    else
    {

      a4, v62, v63, v64, v65, v66, v67, v68;
      v194, v69, v70, v71, v72, v73, v74, v75;
      a2, v76, v77, v78, v79, v80, v81, v82;
    }

    if ((a4 & 0x8000000000000000) != 0 || (a4 & 0x4000000000000000) != 0)
    {
      goto LABEL_60;
    }

LABEL_33:
    if (*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v193 = a2;
      v195 = a4;
      a4 = v5;
      v191 = 0;
      sub_1001A9D6C(v195);
      goto LABEL_35;
    }

    goto LABEL_62;
  }

LABEL_13:
  if (qword_100935B28 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100006654(v16, qword_10093AB40);

  v8 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  a4, v18, v19, v20, v21, v22, v23, v24;
  v5, v25, v26, v27, v28, v29, v30, v31;
  a2, v32, v33, v34, v35, v36, v37, v38;
  if (os_log_type_enabled(v8, v17))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v198[0] = v40;
    *v39 = 136315138;
    *(v39 + 4) = sub_10000668C(a1, a2, v198);
    _os_log_impl(&_mh_execute_header, v8, v17, "REMCDReminder.ExtraneousAlarmsMarker: Reminder has <= 1 dueDateVerifiableAlarms so no need to scan for extraneous items {reminderID: %s}", v39, 0xCu);
    sub_10000607C(v40);
  }

  v197 = 0;
  if ((a4 & 0x8000000000000000) == 0 && (a4 & 0x4000000000000000) == 0)
  {
    goto LABEL_33;
  }

LABEL_60:
  if (_CocoaArrayWrapper.endIndex.getter() > 1)
  {
    v193 = a2;
    v195 = a4;
    a4 = v5;
    v191 = 1;
    sub_1001A9D6C(v195);
LABEL_35:
    v100 = v97;
    a2 = v98;
    v101 = 0;
    a1 = v99 >> 1;
    v102 = v98;
LABEL_36:
    v103 = v102;
    while (a1 != v103)
    {
      if (v102 < a2 || v103 >= a1)
      {
        goto LABEL_58;
      }

      v104 = (v103 + 1);
      v5 = *(v100 + 8 * v103);

      v8 = sub_1001AA380();

      v103 = v104;
      if (v8)
      {
        v102 = v104;
        v15 = __OFADD__(v101++, 1);
        if (!v15)
        {
          goto LABEL_36;
        }

        __break(1u);
        break;
      }
    }

    swift_unknownObjectRelease();
    if (v101 >= 1)
    {
      type metadata accessor for Analytics();
      if (static Analytics.isEventUsed(_:)())
      {
        sub_1000F5104(&unk_100939240, &unk_100798990);
        v105 = swift_initStackObject();
        *(v105 + 16) = xmmword_100791340;
        *(v105 + 32) = 1701869940;
        *(v105 + 40) = 0xE400000000000000;
        sub_1000060C8(0, &unk_10093F610, NSString_ptr);
        *(v105 + 48) = NSString.init(stringLiteral:)();
        *(v105 + 56) = 0x746E756F63;
        *(v105 + 64) = 0xE500000000000000;
        *(v105 + 72) = Int._bridgeToObjectiveC()();
        v106 = sub_10038D880(v105);
        swift_setDeallocating();
        sub_1000F5104(&unk_100939250, &unk_100795D30);
        swift_arrayDestroy();
        static Analytics.postEvent(_:payload:duration:)();
        v106, v107, v108, v109, v110, v111, v112, v113;
      }
    }

    if (qword_100935B28 != -1)
    {
      swift_once();
    }

    v114 = type metadata accessor for Logger();
    sub_100006654(v114, qword_10093AB40);

    v115 = Logger.logObject.getter();
    v116 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v198[0] = v125;
      *v117 = 134218498;
      if (v191)
      {
        v126 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v126 = *((v195 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v117 + 4) = v126;
      v195, v118, v119, v120, v121, v122, v123, v124;
      a4, v148, v149, v150, v151, v152, v153, v154;
      v193, v155, v156, v157, v158, v159, v160, v161;
      *(v117 + 12) = 2048;
      *(v117 + 14) = v101;
      *(v117 + 22) = 2080;
      *(v117 + 24) = sub_10000668C(v196, v193, v198);
      _os_log_impl(&_mh_execute_header, v115, v116, "REMCDReminder.ExtraneousAlarmsMarker: markExtraneousAlarmsForDeletion: (dueDateNonVerifiableAlarms) {total: %ld, deleted: %ld, reminderID: %s}", v117, 0x20u);
      sub_10000607C(v125);
    }

    else
    {

      v195, v127, v128, v129, v130, v131, v132, v133;
      a4, v134, v135, v136, v137, v138, v139, v140;
      v193, v141, v142, v143, v144, v145, v146, v147;
    }

    if (v197 <= 0)
    {
      return v101 > 0;
    }

    return 1;
  }

LABEL_62:
  if (qword_100935B28 != -1)
  {
    swift_once();
  }

  v162 = type metadata accessor for Logger();
  sub_100006654(v162, qword_10093AB40);

  v163 = Logger.logObject.getter();
  v164 = static os_log_type_t.info.getter();
  a4, v165, v166, v167, v168, v169, v170, v171;
  v5, v172, v173, v174, v175, v176, v177, v178;
  a2, v179, v180, v181, v182, v183, v184, v185;
  if (os_log_type_enabled(v163, v164))
  {
    v186 = swift_slowAlloc();
    v187 = swift_slowAlloc();
    v188 = a2;
    v189 = v187;
    v198[0] = v187;
    *v186 = 136315138;
    *(v186 + 4) = sub_10000668C(a1, v188, v198);
    _os_log_impl(&_mh_execute_header, v163, v164, "REMCDReminder.ExtraneousAlarmsMarker: Reminder has <= 1 dueDateNonVerifiableAlarms so no need to scan for extraneous items {reminderID: %s}", v186, 0xCu);
    sub_10000607C(v189);
  }

  if (v197 > 0)
  {
    return 1;
  }

  v101 = 0;
  return v101 > 0;
}

void sub_1001A9494(uint64_t a1, id *a2)
{
  v3 = *a2;
  if (([*a2 markedForDeletion] & 1) == 0 && (objc_msgSend(v3, "isDeleted") & 1) == 0 && (objc_msgSend(v3, "isExtraneous") & 1) == 0 && (objc_msgSend(v3, "isSnooze") & 1) == 0)
  {
    v4 = [v3 trigger];
    if (v4)
    {
      v5 = v4;
      if ([v4 isTemporal])
      {
        [v3 dueDateResolutionTokenAsNonce];
        if (rem_isNonceUnset())
        {
          type metadata accessor for DueDateNonVerifiableAlarm();
          v6 = swift_allocObject();
          *(v6 + 32) = 1;
          *(v6 + 16) = v3;
          *(v6 + 24) = 0;
          v7 = qword_100935B28;
          v8 = v3;
          if (v7 != -1)
          {
            swift_once();
          }

          v9 = type metadata accessor for Logger();
          sub_100006654(v9, qword_10093AB40);
          v10 = v8;

          v11 = Logger.logObject.getter();
          v12 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v11, v12))
          {
            v54 = v12;
            v13 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            v56 = v52;
            *v13 = 136315394;
            v14 = [v10 remObjectID];
            if (v14)
            {
              v15 = v14;
              v16 = [v14 description];

              v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v19 = v18;
            }

            else
            {
              v17 = 7104878;
              v19 = 0xE300000000000000;
            }

            v34 = sub_10000668C(v17, v19, &v56);
            v19, v35, v36, v37, v38, v39, v40, v41;
            *(v13 + 4) = v34;
            *(v13 + 12) = 2048;
            sub_1001AA8AC();
            *(v13 + 14) = v42;
            _os_log_impl(&_mh_execute_header, v11, v54, "REMCDReminder.ExtraneousAlarmsMarker: Populating legacy alarm {remObjectID: %s, fallbackNonce: %f}", v13, 0x16u);
            sub_10000607C(v52);
          }

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*(a1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }
        }

        else
        {
          type metadata accessor for DueDateVerifiableAlarm();
          v20 = swift_allocObject();
          *(v20 + 16) = v3;
          v21 = qword_100935B28;
          v22 = v3;
          if (v21 != -1)
          {
            swift_once();
          }

          v23 = type metadata accessor for Logger();
          sub_100006654(v23, qword_10093AB40);
          v24 = v22;

          v25 = Logger.logObject.getter();
          v26 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v25, v26))
          {
            v55 = v26;
            v27 = swift_slowAlloc();
            v53 = swift_slowAlloc();
            v56 = v53;
            *v27 = 136315394;
            v28 = [v24 remObjectID];
            if (v28)
            {
              v29 = v28;
              v30 = [v28 description];

              v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v33 = v32;
            }

            else
            {
              v31 = 7104878;
              v33 = 0xE300000000000000;
            }

            v43 = sub_10000668C(v31, v33, &v56);
            v33, v44, v45, v46, v47, v48, v49, v50;
            *(v27 + 4) = v43;
            *(v27 + 12) = 2048;
            [*(v20 + 16) dueDateResolutionTokenAsNonce];
            *(v27 + 14) = v51;
            _os_log_impl(&_mh_execute_header, v25, v55, "REMCDReminder.ExtraneousAlarmsMarker: Populating dueDate verifiable alarm {remObjectID: %s, nonce: %f}", v27, 0x16u);
            sub_10000607C(v53);
          }

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*(a1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }
    }
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_1001A99E0(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_51:
    if (_CocoaArrayWrapper.endIndex.getter() < 2)
    {
      return sub_1001AAB90(&_swiftEmptyArrayStorage, sub_100018D7C, sub_10027C66C);
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
    return sub_1001AAB90(&_swiftEmptyArrayStorage, sub_100018D7C, sub_10027C66C);
  }

  v18 = sub_1004363BC(v1);
  sub_1001AAC48(&v18, sub_10043653C, type metadata accessor for DueDateVerifiableAlarm, sub_1001AC67C, sub_1001AB51C);
  v2 = v18;
  v3 = v18 < 0 || (v18 & 0x4000000000000000) != 0;
  if (!v3)
  {
    v4 = *(v18 + 16);
    if (v4)
    {
      goto LABEL_8;
    }

    goto LABEL_54;
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
LABEL_54:

    return sub_1001AAB90(&_swiftEmptyArrayStorage, sub_100018D7C, sub_10027C66C);
  }

LABEL_8:
  v5 = v2 & 0xC000000000000001;
  if ((v2 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(v2 + 16))
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v6 = *(v2 + 32);
  }

  [*(v6 + 16) dueDateResolutionTokenAsNonce];

  v7 = 0;
  while (v4 != v7)
  {
    if (v5)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (__OFADD__(v7, 1))
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (v7 >= *(v2 + 16))
      {
        goto LABEL_50;
      }

      v8 = *(v2 + 8 * v7 + 32);

      if (__OFADD__(v7, 1))
      {
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }
    }

    [*(v8 + 16) dueDateResolutionTokenAsNonce];
    isEqualNonces = rem_isEqualNonces();

    ++v7;
    if ((isEqualNonces & 1) == 0)
    {
      v4 = v7 - 1;
      break;
    }
  }

  if (v3)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *(v2 + 16);
  }

  if (v10 >= v4)
  {
    v11 = v4;
  }

  else
  {
    v11 = v10;
  }

  if (v10 < 0)
  {
    v11 = v4;
  }

  if (v4)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v10 < v12)
  {
    goto LABEL_59;
  }

  if (v3)
  {
    if (_CocoaArrayWrapper.endIndex.getter() < v12)
    {
      goto LABEL_60;
    }

    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *(v2 + 16);
    if (v13 < v12)
    {
      goto LABEL_60;
    }
  }

  if (v13 >= v10)
  {
    if (v10 < 0)
    {
      goto LABEL_62;
    }

    if (!v5 || v12 == v10)
    {
    }

    else
    {
      if (v12 >= v10)
      {
        goto LABEL_63;
      }

      type metadata accessor for DueDateVerifiableAlarm();

      v14 = v12;
      do
      {
        v15 = v14 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v14);
        v14 = v15;
      }

      while (v10 != v15);
    }

    if (v3)
    {
      v16 = _CocoaArrayWrapper.subscript.getter();

      return v16;
    }

    return v2;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);

  __break(1u);
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1001A9D6C(unint64_t a1)
{
  v2 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v2 - 8, v3);
  isEqualNonces = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v7);
  v9 = v39 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_62:
    if (_CocoaArrayWrapper.endIndex.getter() < 2)
    {
      return sub_1001AAB90(&_swiftEmptyArrayStorage, sub_100018D7C, sub_10027C4DC);
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
    return sub_1001AAB90(&_swiftEmptyArrayStorage, sub_100018D7C, sub_10027C4DC);
  }

  v42 = isEqualNonces;

  v46 = sub_100436390(v15);
  sub_1001AAC48(&v46, sub_10043653C, type metadata accessor for DueDateNonVerifiableAlarm, sub_1001AB644, sub_1001AAF50);
  v16 = v46;
  v17 = v46 < 0 || (v46 & 0x4000000000000000) != 0;
  if (!v17)
  {
    v18 = *(v46 + 16);
    if (v18)
    {
      goto LABEL_8;
    }

    goto LABEL_65;
  }

  v18 = _CocoaArrayWrapper.endIndex.getter();
  if (!v18)
  {
LABEL_65:

    return sub_1001AAB90(&_swiftEmptyArrayStorage, sub_100018D7C, sub_10027C4DC);
  }

LABEL_8:
  v19 = v16 & 0xC000000000000001;
  v40 = v17;
  if ((v16 & 0xC000000000000001) != 0)
  {
    isEqualNonces = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(v16 + 16))
    {
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);

      __break(1u);
      return result;
    }

    isEqualNonces = *(v16 + 32);
  }

  sub_1001AA8AC();

  v20 = 0;
  v39[1] = v16 + 32;
  v44 = (v11 + 56);
  v45 = (v11 + 48);
  v41 = (v11 + 32);
  v43 = (v11 + 8);
  while (v18 != v20)
  {
    if (v19)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (__OFADD__(v20, 1))
      {
        goto LABEL_60;
      }
    }

    else
    {
      if (v20 >= *(v16 + 16))
      {
        goto LABEL_61;
      }

      v11 = *(v16 + 8 * v20 + 32);

      if (__OFADD__(v20, 1))
      {
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }
    }

    if ((*(v11 + 32) & 1) == 0)
    {
      goto LABEL_12;
    }

    v21 = [*(v11 + 16) ckServerRecord];
    if (!v21)
    {
      (*v44)(v9, 1, 1, v10);
LABEL_27:
      static Date.distantPast.getter();
      if ((*v45)(v9, 1, v10) != 1)
      {
        sub_1001AAD5C(v9);
      }

      goto LABEL_30;
    }

    v22 = v18;
    v23 = v19;
    v24 = v21;
    v25 = [v21 creationDate];

    if (v25)
    {
      v26 = v42;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v27 = 0;
    }

    else
    {
      v27 = 1;
      v26 = v42;
    }

    (*v44)(v26, v27, 1, v10);
    sub_10012F7FC(v26, v9);
    v19 = v23;
    v18 = v22;
    if ((*v45)(v9, 1, v10) == 1)
    {
      goto LABEL_27;
    }

    (*v41)(v14, v9, v10);
LABEL_30:
    Date.timeIntervalSinceReferenceDate.getter();
    v29 = v28;
    (*v43)(v14, v10);
    *(v11 + 24) = v29;
    *(v11 + 32) = 0;
LABEL_12:
    isEqualNonces = rem_isEqualNonces();

    ++v20;
    if ((isEqualNonces & 1) == 0)
    {
      v18 = v20 - 1;
      break;
    }
  }

  v30 = v40;
  if (v40)
  {
    v31 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v31 = *(v16 + 16);
  }

  if (v31 >= v18)
  {
    v32 = v18;
  }

  else
  {
    v32 = v31;
  }

  if (v31 < 0)
  {
    v32 = v18;
  }

  if (v18)
  {
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  if (v31 < v33)
  {
    goto LABEL_70;
  }

  if (v30)
  {
    if (_CocoaArrayWrapper.endIndex.getter() < v33)
    {
      goto LABEL_71;
    }

    v34 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v34 = *(v16 + 16);
    if (v34 < v33)
    {
      goto LABEL_71;
    }
  }

  if (v34 < v31)
  {
    goto LABEL_72;
  }

  if (v31 < 0)
  {
    goto LABEL_73;
  }

  if (!v19 || v33 == v31)
  {
  }

  else
  {
    if (v33 >= v31)
    {
      goto LABEL_74;
    }

    type metadata accessor for DueDateNonVerifiableAlarm();

    v35 = v33;
    do
    {
      v36 = v35 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v35);
      v35 = v36;
    }

    while (v31 != v36);
  }

  if (v30)
  {
    v37 = _CocoaArrayWrapper.subscript.getter();

    return v37;
  }

  return v16;
}

BOOL sub_1001AA380()
{
  v1 = [v0 ckDirtyFlags];
  if (!v1)
  {
    v3 = [v0 reminder];
    [v3 removeAlarmStorageObject:v0];
    [v0 setIsExtraneous:1];
    [v0 __lowLevelMarkForDeletion];
    v14 = [v0 trigger];
    [v14 setIsExtraneous:1];

    v15 = [v0 trigger];
    if (v15)
    {
      v16 = v15;
      [v15 __lowLevelMarkForDeletion];
    }

    v17 = [v0 storeControllerManagedObjectContext];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 transactionAuthor];
      if (v19)
      {
        v20 = v19;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        v23._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
        object = v23._object;
        v25 = String.hasPrefix(_:)(v23);
        object, v26, v27, v28, v29, v30, v31, v32;
        v22, v33, v34, v35, v36, v37, v38, v39;
        if (v25)
        {
          [v18 setPendingPostSaveActions:{objc_msgSend(v18, "pendingPostSaveActions") | 1}];
          goto LABEL_19;
        }
      }
    }

    if (v3)
    {
      [v3 forcePushToCloud];
    }

    [v0 setShouldSyncUpDeleteIfNeeded];
    v40 = [v0 trigger];
    if (!v40)
    {
      goto LABEL_20;
    }

    v18 = v40;
    [v40 setShouldSyncUpDeleteIfNeeded];
LABEL_19:

LABEL_20:
    if (qword_100935B28 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100006654(v41, qword_10093AB40);
    v42 = v0;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v71 = v46;
      *v45 = 136446210;
      v47 = [v42 remObjectID];
      if (v47)
      {
        v48 = v47;
        v49 = [v47 description];

        v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v52 = v51;
      }

      else
      {
        v50 = 7104878;
        v52 = 0xE300000000000000;
      }

      v62 = sub_10000668C(v50, v52, &v71);
      v52, v63, v64, v65, v66, v67, v68, v69;
      *(v45 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v43, v44, "REMCDAlarm.markAsExtraneousAndDelete(): Outdated alarm is marked extraneous and deleted {remObjectID: %{public}s}", v45, 0xCu);
      sub_10000607C(v46);
    }

    goto LABEL_30;
  }

  if (qword_100935B28 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_10093AB40);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v4, v5))
  {

LABEL_30:
    return v1 == 0;
  }

  v6 = swift_slowAlloc();
  v7 = swift_slowAlloc();
  v71 = v7;
  *v6 = 136446466;
  v8 = [v3 remObjectID];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 description];

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v11 = 7104878;
    v13 = 0xE300000000000000;
  }

  v53 = sub_10000668C(v11, v13, &v71);
  v13, v54, v55, v56, v57, v58, v59, v60;
  *(v6 + 4) = v53;
  *(v6 + 12) = 514;
  v61 = [v3 ckDirtyFlags];

  *(v6 + 14) = v61;
  _os_log_impl(&_mh_execute_header, v4, v5, "REMCDAlarm.markAsExtraneousAndDelete(): Alarm is outdated but dirty flags is not .none, skipping {remObjectID: %{public}s, dirtyFlags: %{public}hd}", v6, 0x10u);
  sub_10000607C(v7);

  return v1 == 0;
}

void sub_1001AA8AC()
{
  v1 = v0;
  v2 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  *&v13 = __chkstk_darwin(v10, v12).n128_u64[0];
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 32))
  {
    v16 = [*(v1 + 16) ckServerRecord];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 creationDate];

      if (v18)
      {
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v11 + 56))(v5, 0, 1, v10);
      }

      else
      {
        (*(v11 + 56))(v5, 1, 1, v10);
      }

      sub_10012F7FC(v5, v9);
      if ((*(v11 + 48))(v9, 1, v10) != 1)
      {
        (*(v11 + 32))(v15, v9, v10);
LABEL_12:
        Date.timeIntervalSinceReferenceDate.getter();
        v20 = v19;
        (*(v11 + 8))(v15, v10);
        *(v1 + 24) = v20;
        *(v1 + 32) = 0;
        return;
      }
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    static Date.distantPast.getter();
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      sub_1001AAD5C(v9);
    }

    goto LABEL_12;
  }
}

uint64_t sub_1001AAB58()
{

  return swift_deallocClassInstance();
}

_TtC7remindd19RDXPCStorePerformer *sub_1001AAB90(unint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v6 = a1;
  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (!v7)
  {
LABEL_7:
    v6, v8, v9, v10, v11, v12, v13, v14;
    return &_swiftEmptyArrayStorage;
  }

  v15 = v7;
  v16 = a2(v7, 0);
  v17 = a3(&v16->clientIdentity[16], v15, v6);
  v6 = v18;
  v17, v19, v18, v20, v21, v22, v23, v24;
  result = v16;
  if (v6 != v15)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1001AAC48(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), void (*a4)(void *, _BYTE *, uint64_t, Swift::Int), void (*a5)(void, Swift::Int, uint64_t, uint64_t))
{
  v10 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = a2(v10);
    *a1 = v10;
  }

  v12 = *(v10 + 16);
  v14[0] = v10 + 32;
  v14[1] = v12;
  sub_1001AAE2C(v14, a3, a4, a5);
  return specialized ContiguousArray._endMutation()();
}

uint64_t sub_1001AAD5C(uint64_t a1)
{
  v2 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001AADC4()
{
  result = qword_100940C60;
  if (!qword_100940C60)
  {
    sub_1000060C8(255, &unk_100939E90, NSOrderedSet_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100940C60);
  }

  return result;
}

void sub_1001AAE2C(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, Swift::Int), void (*a4)(void, Swift::Int, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  v9 = _minimumMergeRunLength(_:)(v8);
  if (v9 < v8)
  {
    if (v8 >= -1)
    {
      v10 = v9;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = &_swiftEmptyArrayStorage;
      }

      else
      {
        a2(0);
        v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) = v11;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFF8;
      v22[0] = (v12 & 0xFFFFFFFFFFFFFF8) + 32;
      v22[1] = v11;
      v14 = v12;
      a3(v22, v23, a1, v10);
      *(v13 + 16) = 0;
      v14, v15, v16, v17, v18, v19, v20, v21;
      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    a4(0, v8, 1, a1);
  }
}

void sub_1001AAF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v15 = &v59 - v14;
  __chkstk_darwin(v16, v17);
  v66 = &v59 - v18;
  __chkstk_darwin(v19, v20);
  v68 = &v59 - v21;
  v22 = type metadata accessor for Date();
  __chkstk_darwin(v22, v23);
  v73 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25, v26);
  v29 = &v59 - v28;
  v60 = a2;
  if (a3 != a2)
  {
    v30 = *a4;
    v71 = (v27 + 56);
    v72 = (v27 + 48);
    v64 = (v27 + 32);
    v65 = v11;
    v69 = v15;
    v70 = (v27 + 8);
    v31 = (v30 + 8 * a3 - 8);
    v32 = a1 - a3;
    v67 = v30;
LABEL_6:
    v62 = v31;
    v63 = a3;
    v33 = *(v30 + 8 * a3);
    v61 = v32;
    v34 = v32;
    while (1)
    {
      v35 = *v31;
      if ((*(v33 + 32) & 1) == 0)
      {
        v42 = *(v33 + 24);

        if ((*(v35 + 32) & 1) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_21;
      }

      v36 = *(v33 + 16);

      v37 = [v36 ckServerRecord];
      if (v37)
      {
        v38 = v37;
        v39 = [v37 creationDate];

        if (v39)
        {
          v40 = v66;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v41 = 0;
        }

        else
        {
          v41 = 1;
          v40 = v66;
        }

        (*v71)(v40, v41, 1, v22);
        v43 = v68;
        sub_10012F7FC(v40, v68);
        v44 = (*v72)(v43, 1, v22);
        v15 = v69;
        if (v44 != 1)
        {
          v45 = v29;
          (*v64)(v29, v43, v22);
          goto LABEL_20;
        }
      }

      else
      {
        v43 = v68;
        (*v71)(v68, 1, 1, v22);
      }

      v45 = v29;
      static Date.distantPast.getter();
      if ((*v72)(v43, 1, v22) != 1)
      {
        sub_1001AAD5C(v43);
      }

LABEL_20:
      Date.timeIntervalSinceReferenceDate.getter();
      v42 = v46;
      (*v70)(v45, v22);
      *(v33 + 24) = v42;
      *(v33 + 32) = 0;
      v30 = v67;
      if ((*(v35 + 32) & 1) == 0)
      {
LABEL_12:
        if (*(v35 + 24) >= v42)
        {
          goto LABEL_4;
        }

        goto LABEL_31;
      }

LABEL_21:
      v47 = [*(v35 + 16) ckServerRecord];
      if (v47)
      {
        v48 = v47;
        v49 = [v47 creationDate];

        if (v49)
        {
          v50 = v65;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v51 = 0;
        }

        else
        {
          v51 = 1;
          v50 = v65;
        }

        v52 = v73;
        (*v71)(v50, v51, 1, v22);
        v53 = v50;
        v15 = v69;
        sub_10012F7FC(v53, v69);
        if ((*v72)(v15, 1, v22) != 1)
        {
          (*v64)(v52, v15, v22);
          goto LABEL_30;
        }
      }

      else
      {
        (*v71)(v15, 1, 1, v22);
      }

      static Date.distantPast.getter();
      if ((*v72)(v15, 1, v22) != 1)
      {
        sub_1001AAD5C(v15);
      }

LABEL_30:
      Date.timeIntervalSinceReferenceDate.getter();
      v55 = v54;
      (*v70)(v73, v22);
      *(v35 + 24) = v55;
      *(v35 + 32) = 0;
      if (v55 >= v42)
      {
LABEL_4:

LABEL_5:
        a3 = v63 + 1;
        v31 = v62 + 1;
        v32 = v61 - 1;
        if (v63 + 1 == v60)
        {
          return;
        }

        goto LABEL_6;
      }

LABEL_31:
      isEqualNonces = rem_isEqualNonces();

      if (isEqualNonces)
      {
        goto LABEL_5;
      }

      if (!v30)
      {
        __break(1u);
        return;
      }

      v57 = *v31;
      v33 = v31[1];
      *v31 = v33;
      v31[1] = v57;
      --v31;
      if (__CFADD__(v34++, 1))
      {
        goto LABEL_5;
      }
    }
  }
}

uint64_t sub_1001AB51C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 8 * a3 - 8);
    v7 = result - a3;
LABEL_6:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v19 = v6;
    while (1)
    {
      v10 = *v6;
      v11 = *(v8 + 16);

      [v11 dueDateResolutionTokenAsNonce];
      v13 = v12;
      [*(v10 + 16) dueDateResolutionTokenAsNonce];
      if (v14 >= v13)
      {

LABEL_5:
        ++v4;
        v6 = v19 + 1;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      isEqualNonces = rem_isEqualNonces();

      if (isEqualNonces)
      {
        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v16 = *v6;
      v8 = v6[1];
      *v6 = v8;
      v6[1] = v16;
      --v6;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1001AB644(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v183 = a1;
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v179 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v15 = &v179 - v14;
  __chkstk_darwin(v16, v17);
  v195 = &v179 - v18;
  __chkstk_darwin(v19, v20);
  v22 = &v179 - v21;
  __chkstk_darwin(v23, v24);
  v185 = &v179 - v25;
  __chkstk_darwin(v26, v27);
  v29 = &v179 - v28;
  __chkstk_darwin(v30, v31);
  v184 = &v179 - v32;
  __chkstk_darwin(v33, v34);
  v36 = &v179 - v35;
  v37 = type metadata accessor for Date();
  __chkstk_darwin(v37, v38);
  v205 = &v179 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40, v41);
  __chkstk_darwin(v42, v43);
  __chkstk_darwin(v44, v45);
  v196 = a3;
  v57 = a3[1];
  if (v57 < 1)
  {
    v59 = &_swiftEmptyArrayStorage;
LABEL_146:
    v61 = *v183;
    if (!*v183)
    {
      goto LABEL_184;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_148:
      v206 = v59;
      v175 = *v59->clientIdentity;
      if (v175 >= 2)
      {
        while (*v196)
        {
          v176 = *(&v59->super.isa + 2 * v175);
          v177 = *&v59->clientIdentity[16 * v175 + 8];
          sub_1001ACD84((*v196 + 8 * v176), (*v196 + 8 * *&v59->clientIdentity[16 * v175]), (*v196 + 8 * v177), v61);
          if (v5)
          {
            goto LABEL_156;
          }

          if (v177 < v176)
          {
            goto LABEL_171;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v59 = sub_1004361F4(v59, v46, v47, v48, v49, v50, v51, v52);
          }

          if (v175 - 2 >= *v59->clientIdentity)
          {
            goto LABEL_172;
          }

          v178 = &v59->super.isa + 2 * v175;
          *v178 = v176;
          v178[1] = v177;
          v206 = v59;
          sub_100436168(v175 - 1);
          v59 = v206;
          v175 = *v206->clientIdentity;
          if (v175 <= 1)
          {
            goto LABEL_156;
          }
        }

        goto LABEL_182;
      }

LABEL_156:
      v59, v46, v47, v48, v49, v50, v51, v52;
      return;
    }

LABEL_178:
    v59 = sub_1004361F4(v59, v46, v47, v48, v49, v50, v51, v52);
    goto LABEL_148;
  }

  v189 = v29;
  v201 = v22;
  v194 = v11;
  v181 = a4;
  v203 = (v53 + 56);
  v204 = (v53 + 48);
  v197 = (v53 + 32);
  v187 = v56;
  v58 = (v53 + 8);
  v59 = &_swiftEmptyArrayStorage;
  v202 = v15;
  v188 = v36;
  v60 = 0;
  v199 = v55;
  v186 = &v179 - v54;
  v200 = v58;
  while (1)
  {
    v61 = v60;
    v62 = (v60 + 1);
    if ((v60 + 1) < v57)
    {
      v192 = v57;
      v63 = *v196;
      v182 = v60;

      sub_1001AA8AC();
      v65 = v64;
      sub_1001AA8AC();
      if (v66 >= v65)
      {

        LODWORD(v193) = 0;
      }

      else
      {
        isEqualNonces = rem_isEqualNonces();

        LODWORD(v193) = isEqualNonces ^ 1;
      }

      v61 = v182;
      v62 = (v182 + 2);
      if ((v182 + 2) < v192)
      {
        v68 = v63 + 8 * v182 + 16;
        while (1)
        {
          v198 = v62;
          v70 = *(v68 - 8);
          v69 = *v68;
          if ((*(*v68 + 32) & 1) == 0)
          {
            v77 = *(v69 + 24);

            if ((*(v70 + 32) & 1) == 0)
            {
              goto LABEL_18;
            }

            goto LABEL_27;
          }

          v71 = *(v69 + 16);

          v72 = [v71 ckServerRecord];
          if (v72)
          {
            v73 = v72;
            v74 = [v72 creationDate];

            if (v74)
            {
              v75 = v184;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v76 = 0;
            }

            else
            {
              v76 = 1;
              v75 = v184;
            }

            (*v203)(v75, v76, 1, v37);
            v78 = v188;
            sub_10012F7FC(v75, v188);
            v79 = (*v204)(v78, 1, v37);
            v15 = v202;
            if (v79 != 1)
            {
              v80 = v186;
              (*v197)(v186, v78, v37);
              goto LABEL_26;
            }
          }

          else
          {
            v78 = v188;
            (*v203)(v188, 1, 1, v37);
          }

          v80 = v186;
          static Date.distantPast.getter();
          if ((*v204)(v78, 1, v37) != 1)
          {
            sub_1001AAD5C(v188);
          }

LABEL_26:
          Date.timeIntervalSinceReferenceDate.getter();
          v77 = v81;
          v58 = v200;
          (*v200)(v80, v37);
          *(v69 + 24) = v77;
          *(v69 + 32) = 0;
          if ((*(v70 + 32) & 1) == 0)
          {
LABEL_18:
            if (*(v70 + 24) < v77)
            {
              goto LABEL_37;
            }

            goto LABEL_11;
          }

LABEL_27:
          v82 = [*(v70 + 16) ckServerRecord];
          v191 = v5;
          if (v82)
          {
            v83 = v82;
            v84 = [v82 creationDate];

            if (v84)
            {
              v85 = v185;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v86 = 0;
            }

            else
            {
              v86 = 1;
              v85 = v185;
            }

            (*v203)(v85, v86, 1, v37);
            v87 = v189;
            sub_10012F7FC(v85, v189);
            v88 = (*v204)(v87, 1, v37);
            v15 = v202;
            if (v88 != 1)
            {
              v89 = v187;
              (*v197)(v187, v87, v37);
              goto LABEL_36;
            }
          }

          else
          {
            v87 = v189;
            (*v203)(v189, 1, 1, v37);
          }

          v89 = v187;
          static Date.distantPast.getter();
          if ((*v204)(v87, 1, v37) != 1)
          {
            sub_1001AAD5C(v189);
          }

LABEL_36:
          Date.timeIntervalSinceReferenceDate.getter();
          v91 = v90;
          (*v58)(v89, v37);
          *(v70 + 24) = v91;
          *(v70 + 32) = 0;
          v5 = v191;
          if (v91 < v77)
          {
LABEL_37:
            v92 = rem_isEqualNonces();

            if (v193 == v92)
            {
              v62 = v198;
LABEL_40:
              v61 = v182;
              break;
            }

            goto LABEL_12;
          }

LABEL_11:

          if (v193)
          {
            v62 = v198;
            v61 = v182;
            if (v198 < v182)
            {
              goto LABEL_175;
            }

            goto LABEL_43;
          }

LABEL_12:
          v62 = v198 + 1;
          v68 += 8;
          if (v192 == v198 + 1)
          {
            v62 = v192;
            goto LABEL_40;
          }
        }
      }

      if (v193)
      {
        if (v62 < v61)
        {
          goto LABEL_175;
        }

LABEL_43:
        if (v61 < v62)
        {
          v93 = 8 * v62 - 8;
          v94 = 8 * v61;
          v95 = v62;
          v96 = v61;
          do
          {
            if (v96 != --v95)
            {
              v97 = *v196;
              if (!*v196)
              {
                goto LABEL_181;
              }

              v98 = *(v97 + v94);
              *(v97 + v94) = *(v97 + v93);
              *(v97 + v93) = v98;
            }

            ++v96;
            v93 -= 8;
            v94 += 8;
          }

          while (v96 < v95);
        }
      }
    }

    v99 = v196[1];
    if (v62 < v99)
    {
      if (__OFSUB__(v62, v61))
      {
        goto LABEL_174;
      }

      if (v62 - v61 < v181)
      {
        break;
      }
    }

LABEL_92:
    if (v62 < v61)
    {
      goto LABEL_173;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = sub_1003658B8(0, *v59->clientIdentity + 1, 1, v59, v49, v50, v51, v52);
    }

    v129 = *v59->clientIdentity;
    v128 = *&v59->clientIdentity[8];
    v130 = v129 + 1;
    if (v129 >= v128 >> 1)
    {
      v59 = sub_1003658B8((v128 > 1), v129 + 1, 1, v59, v49, v50, v51, v52);
    }

    *v59->clientIdentity = v130;
    v131 = v59 + 16 * v129;
    *(v131 + 4) = v61;
    *(v131 + 5) = v62;
    v61 = *v183;
    if (!*v183)
    {
      goto LABEL_183;
    }

    v198 = v62;
    if (v129)
    {
      while (1)
      {
        v132 = v130 - 1;
        if (v130 >= 4)
        {
          break;
        }

        if (v130 == 3)
        {
          v133 = *&v59->clientIdentity[16];
          v134 = *&v59->clientIdentity[24];
          v143 = __OFSUB__(v134, v133);
          v135 = v134 - v133;
          v136 = v143;
LABEL_112:
          if (v136)
          {
            goto LABEL_162;
          }

          v149 = &v59->super.isa + 2 * v130;
          v151 = *v149;
          v150 = v149[1];
          v152 = __OFSUB__(v150, v151);
          v153 = v150 - v151;
          v154 = v152;
          if (v152)
          {
            goto LABEL_165;
          }

          v155 = &v59->clientIdentity[16 * v132 + 16];
          v157 = *v155;
          v156 = *(v155 + 1);
          v143 = __OFSUB__(v156, v157);
          v158 = v156 - v157;
          if (v143)
          {
            goto LABEL_168;
          }

          if (__OFADD__(v153, v158))
          {
            goto LABEL_169;
          }

          if (v153 + v158 >= v135)
          {
            if (v135 < v158)
            {
              v132 = v130 - 2;
            }

            goto LABEL_133;
          }

          goto LABEL_126;
        }

        v159 = &v59->super.isa + 2 * v130;
        v161 = *v159;
        v160 = v159[1];
        v143 = __OFSUB__(v160, v161);
        v153 = v160 - v161;
        v154 = v143;
LABEL_126:
        if (v154)
        {
          goto LABEL_164;
        }

        v162 = v59 + 16 * v132;
        v164 = *(v162 + 4);
        v163 = *(v162 + 5);
        v143 = __OFSUB__(v163, v164);
        v165 = v163 - v164;
        if (v143)
        {
          goto LABEL_167;
        }

        if (v165 < v153)
        {
          goto LABEL_3;
        }

LABEL_133:
        v170 = v132 - 1;
        if (v132 - 1 >= v130)
        {
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
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
          goto LABEL_177;
        }

        if (!*v196)
        {
          goto LABEL_180;
        }

        v171 = v59;
        v172 = *&v59->clientIdentity[16 * v170 + 16];
        v173 = *&v59->clientIdentity[16 * v132 + 16];
        v59 = *&v59->clientIdentity[16 * v132 + 24];
        sub_1001ACD84((*v196 + 8 * v172), (*v196 + 8 * v173), (*v196 + 8 * v59), v61);
        if (v5)
        {
          v59 = v171;
          goto LABEL_156;
        }

        if (v59 < v172)
        {
          goto LABEL_158;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v171 = sub_1004361F4(v171, v46, v47, v48, v49, v50, v51, v52);
        }

        if (v170 >= *v171->clientIdentity)
        {
          goto LABEL_159;
        }

        v174 = v171 + 16 * v170;
        *(v174 + 4) = v172;
        *(v174 + 5) = v59;
        v206 = v171;
        sub_100436168(v132);
        v59 = v206;
        v130 = *v206->clientIdentity;
        v15 = v202;
        if (v130 <= 1)
        {
          goto LABEL_3;
        }
      }

      v137 = &v59->clientIdentity[16 * v130 + 16];
      v138 = *(v137 - 64);
      v139 = *(v137 - 56);
      v143 = __OFSUB__(v139, v138);
      v140 = v139 - v138;
      if (v143)
      {
        goto LABEL_160;
      }

      v142 = *(v137 - 48);
      v141 = *(v137 - 40);
      v143 = __OFSUB__(v141, v142);
      v135 = v141 - v142;
      v136 = v143;
      if (v143)
      {
        goto LABEL_161;
      }

      v144 = &v59->super.isa + 2 * v130;
      v146 = *v144;
      v145 = v144[1];
      v143 = __OFSUB__(v145, v146);
      v147 = v145 - v146;
      if (v143)
      {
        goto LABEL_163;
      }

      v143 = __OFADD__(v135, v147);
      v148 = v135 + v147;
      if (v143)
      {
        goto LABEL_166;
      }

      if (v148 >= v140)
      {
        v166 = &v59->clientIdentity[16 * v132 + 16];
        v168 = *v166;
        v167 = *(v166 + 1);
        v143 = __OFSUB__(v167, v168);
        v169 = v167 - v168;
        if (v143)
        {
          goto LABEL_170;
        }

        if (v135 < v169)
        {
          v132 = v130 - 2;
        }

        goto LABEL_133;
      }

      goto LABEL_112;
    }

LABEL_3:
    v57 = v196[1];
    v60 = v198;
    if (v198 >= v57)
    {
      goto LABEL_146;
    }
  }

  if (__OFADD__(v61, v181))
  {
    goto LABEL_176;
  }

  if (&v61[v181] < v99)
  {
    v99 = &v61[v181];
  }

  if (v99 < v61)
  {
LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

  if (v62 == v99)
  {
    goto LABEL_92;
  }

  v190 = v99;
  v180 = v59;
  v191 = v5;
  v100 = *v196;
  v101 = (*v196 + 8 * v62 - 8);
  v182 = v61;
  v102 = &v61[-v62];
LABEL_60:
  v198 = v62;
  v103 = *(v100 + 8 * v62);
  v192 = v102;
  v193 = v101;
  while (1)
  {
    v104 = *v101;
    if ((*(v103 + 32) & 1) == 0)
    {
      v111 = *(v103 + 24);

      if ((*(v104 + 32) & 1) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_75;
    }

    v105 = *(v103 + 16);

    v106 = [v105 ckServerRecord];
    if (v106)
    {
      v107 = v106;
      v108 = [v106 creationDate];

      if (v108)
      {
        v109 = v195;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v110 = 0;
      }

      else
      {
        v110 = 1;
        v109 = v195;
      }

      (*v203)(v109, v110, 1, v37);
      v112 = v201;
      sub_10012F7FC(v109, v201);
      v113 = (*v204)(v112, 1, v37);
      v15 = v202;
      if (v113 != 1)
      {
        v114 = v199;
        (*v197)(v199, v112, v37);
        goto LABEL_74;
      }
    }

    else
    {
      v112 = v201;
      (*v203)(v201, 1, 1, v37);
    }

    v114 = v199;
    static Date.distantPast.getter();
    if ((*v204)(v112, 1, v37) != 1)
    {
      sub_1001AAD5C(v201);
    }

LABEL_74:
    Date.timeIntervalSinceReferenceDate.getter();
    v111 = v115;
    v58 = v200;
    (*v200)(v114, v37);
    *(v103 + 24) = v111;
    *(v103 + 32) = 0;
    if ((*(v104 + 32) & 1) == 0)
    {
LABEL_66:
      if (*(v104 + 24) >= v111)
      {
        goto LABEL_58;
      }

      goto LABEL_85;
    }

LABEL_75:
    v116 = [*(v104 + 16) ckServerRecord];
    if (v116)
    {
      v117 = v116;
      v118 = [v116 creationDate];

      if (v118)
      {
        v119 = v194;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v120 = 0;
      }

      else
      {
        v120 = 1;
        v119 = v194;
      }

      v121 = v205;
      (*v203)(v119, v120, 1, v37);
      v122 = v119;
      v15 = v202;
      sub_10012F7FC(v122, v202);
      if ((*v204)(v15, 1, v37) != 1)
      {
        (*v197)(v121, v15, v37);
        goto LABEL_84;
      }
    }

    else
    {
      (*v203)(v15, 1, 1, v37);
    }

    static Date.distantPast.getter();
    if ((*v204)(v15, 1, v37) != 1)
    {
      sub_1001AAD5C(v15);
    }

LABEL_84:
    Date.timeIntervalSinceReferenceDate.getter();
    v124 = v123;
    (*v58)(v205, v37);
    *(v104 + 24) = v124;
    *(v104 + 32) = 0;
    if (v124 >= v111)
    {
LABEL_58:

LABEL_59:
      v62 = v198 + 1;
      v101 = v193 + 1;
      v102 = (v192 - 1);
      if ((v198 + 1) == v190)
      {
        v62 = v190;
        v5 = v191;
        v59 = v180;
        v61 = v182;
        goto LABEL_92;
      }

      goto LABEL_60;
    }

LABEL_85:
    v125 = rem_isEqualNonces();

    if (v125)
    {
      goto LABEL_59;
    }

    if (!v100)
    {
      break;
    }

    v126 = *v101;
    v103 = v101[1];
    *v101 = v103;
    v101[1] = v126;
    --v101;
    if (__CFADD__(v102++, 1))
    {
      goto LABEL_59;
    }
  }

  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
}

void sub_1001AC67C(uint64_t *a1, const char *a2, uint64_t *a3, char *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = v8;
  v10 = a3;
  v11 = a3[1];
  if (v11 < 1)
  {
    v13 = &_swiftEmptyArrayStorage;
LABEL_97:
    v11 = *a1;
    if (!*a1)
    {
      goto LABEL_135;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_99:
      v100 = *v13->clientIdentity;
      if (v100 >= 2)
      {
        do
        {
          v101 = *v10;
          if (!*v10)
          {
            goto LABEL_133;
          }

          v10 = (v100 - 1);
          v102 = *(&v13->super.isa + 2 * v100);
          v103 = *&v13->clientIdentity[16 * v100 + 8];
          sub_1001AD974((v101 + 8 * v102), (v101 + 8 * *&v13->clientIdentity[16 * v100]), (v101 + 8 * v103), v11);
          if (v9)
          {
            break;
          }

          if (v103 < v102)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_1004361F4(v13, a2, a3, a4, a5, a6, a7, a8);
          }

          if (v100 - 2 >= *v13->clientIdentity)
          {
            goto LABEL_123;
          }

          v104 = &v13->super.isa + 2 * v100;
          *v104 = v102;
          v104[1] = v103;
          sub_100436168(v100 - 1);
          v100 = *v13->clientIdentity;
          v10 = a3;
        }

        while (v100 > 1);
      }

LABEL_107:
      v13, a2, a3, a4, a5, a6, a7, a8;
      return;
    }

LABEL_129:
    v13 = sub_1004361F4(v13, a2, a3, a4, a5, a6, a7, a8);
    goto LABEL_99;
  }

  v12 = 0;
  v13 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v14 = v12;
    v15 = v12 + 1;
    if (v12 + 1 < v11)
    {
      v16 = *v10;
      v17 = *(*v10 + 8 * v15);
      v107 = v12;
      v18 = *(*v10 + 8 * v12);
      v19 = *(v17 + 16);

      [v19 dueDateResolutionTokenAsNonce];
      v21 = v20;
      [*(v18 + 16) dueDateResolutionTokenAsNonce];
      if (v22 >= v21)
      {

        v24 = 0;
      }

      else
      {
        isEqualNonces = rem_isEqualNonces();

        v24 = isEqualNonces ^ 1;
      }

      v14 = v107;
      v15 = v107 + 2;
      if (v107 + 2 < v11)
      {
        v25 = v16 + 8 * v107 + 16;
        while (1)
        {
          v26 = v15;
          v27 = *(v25 - 8);
          v28 = *(*v25 + 16);

          [v28 dueDateResolutionTokenAsNonce];
          v30 = v29;
          [*(v27 + 16) dueDateResolutionTokenAsNonce];
          if (v31 >= v30)
          {

            if (v24)
            {
              v15 = v26;
              v10 = a3;
              v14 = v107;
              if (v15 < v107)
              {
                goto LABEL_126;
              }

              goto LABEL_19;
            }
          }

          else
          {
            v32 = rem_isEqualNonces();

            if (v24 == v32)
            {
              v15 = v26;
LABEL_16:
              v10 = a3;
              v14 = v107;
              break;
            }
          }

          v15 = v26 + 1;
          v25 += 8;
          if (v11 == v26 + 1)
          {
            v15 = v11;
            goto LABEL_16;
          }
        }
      }

      if (v24)
      {
        if (v15 < v14)
        {
          goto LABEL_126;
        }

LABEL_19:
        if (v14 < v15)
        {
          v33 = 8 * v15 - 8;
          v34 = 8 * v14;
          v35 = v15;
          v36 = v14;
          do
          {
            if (v36 != --v35)
            {
              v37 = *v10;
              if (!*v10)
              {
                goto LABEL_132;
              }

              v38 = *(v37 + v34);
              *(v37 + v34) = *(v37 + v33);
              *(v37 + v33) = v38;
            }

            ++v36;
            v33 -= 8;
            v34 += 8;
          }

          while (v36 < v35);
        }
      }
    }

    v39 = v10[1];
    if (v15 < v39)
    {
      if (__OFSUB__(v15, v14))
      {
        goto LABEL_125;
      }

      if (v15 - v14 < a4)
      {
        break;
      }
    }

LABEL_44:
    if (v15 < v14)
    {
      goto LABEL_124;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1003658B8(0, *v13->clientIdentity + 1, 1, v13, a5, a6, a7, a8);
    }

    v55 = *v13->clientIdentity;
    v54 = *&v13->clientIdentity[8];
    v56 = v55 + 1;
    if (v55 >= v54 >> 1)
    {
      v13 = sub_1003658B8((v54 > 1), v55 + 1, 1, v13, a5, a6, a7, a8);
    }

    *v13->clientIdentity = v56;
    v57 = v13 + 16 * v55;
    *(v57 + 4) = v14;
    *(v57 + 5) = v15;
    v113 = v15;
    v58 = *a1;
    if (!*a1)
    {
      goto LABEL_134;
    }

    if (v55)
    {
      while (1)
      {
        v59 = v56 - 1;
        if (v56 >= 4)
        {
          break;
        }

        if (v56 == 3)
        {
          v60 = *&v13->clientIdentity[16];
          v61 = *&v13->clientIdentity[24];
          v70 = __OFSUB__(v61, v60);
          v62 = v61 - v60;
          v63 = v70;
LABEL_64:
          if (v63)
          {
            goto LABEL_113;
          }

          v76 = &v13->super.isa + 2 * v56;
          v78 = *v76;
          v77 = v76[1];
          v79 = __OFSUB__(v77, v78);
          v80 = v77 - v78;
          v81 = v79;
          if (v79)
          {
            goto LABEL_116;
          }

          v82 = &v13->clientIdentity[16 * v59 + 16];
          v84 = *v82;
          v83 = *(v82 + 1);
          v70 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v70)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v80, v85))
          {
            goto LABEL_120;
          }

          if (v80 + v85 >= v62)
          {
            if (v62 < v85)
            {
              v59 = v56 - 2;
            }

            goto LABEL_85;
          }

          goto LABEL_78;
        }

        v86 = &v13->super.isa + 2 * v56;
        v88 = *v86;
        v87 = v86[1];
        v70 = __OFSUB__(v87, v88);
        v80 = v87 - v88;
        v81 = v70;
LABEL_78:
        if (v81)
        {
          goto LABEL_115;
        }

        v89 = v13 + 16 * v59;
        v91 = *(v89 + 4);
        v90 = *(v89 + 5);
        v70 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v70)
        {
          goto LABEL_118;
        }

        if (v92 < v80)
        {
          goto LABEL_3;
        }

LABEL_85:
        v97 = v59 - 1;
        if (v59 - 1 >= v56)
        {
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
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v10)
        {
          goto LABEL_131;
        }

        v98 = *&v13->clientIdentity[16 * v97 + 16];
        v11 = *&v13->clientIdentity[16 * v59 + 24];
        sub_1001AD974((*v10 + 8 * v98), (*v10 + 8 * *&v13->clientIdentity[16 * v59 + 16]), (*v10 + 8 * v11), v58);
        if (v9)
        {
          goto LABEL_107;
        }

        if (v11 < v98)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1004361F4(v13, a2, a3, a4, a5, a6, a7, a8);
        }

        if (v97 >= *v13->clientIdentity)
        {
          goto LABEL_110;
        }

        v99 = v13 + 16 * v97;
        *(v99 + 4) = v98;
        *(v99 + 5) = v11;
        sub_100436168(v59);
        v56 = *v13->clientIdentity;
        if (v56 <= 1)
        {
          goto LABEL_3;
        }
      }

      v64 = &v13->clientIdentity[16 * v56 + 16];
      v65 = *(v64 - 64);
      v66 = *(v64 - 56);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_111;
      }

      v69 = *(v64 - 48);
      v68 = *(v64 - 40);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_112;
      }

      v71 = &v13->super.isa + 2 * v56;
      v73 = *v71;
      v72 = v71[1];
      v70 = __OFSUB__(v72, v73);
      v74 = v72 - v73;
      if (v70)
      {
        goto LABEL_114;
      }

      v70 = __OFADD__(v62, v74);
      v75 = v62 + v74;
      if (v70)
      {
        goto LABEL_117;
      }

      if (v75 >= v67)
      {
        v93 = &v13->clientIdentity[16 * v59 + 16];
        v95 = *v93;
        v94 = *(v93 + 1);
        v70 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v70)
        {
          goto LABEL_121;
        }

        if (v62 < v96)
        {
          v59 = v56 - 2;
        }

        goto LABEL_85;
      }

      goto LABEL_64;
    }

LABEL_3:
    v11 = v10[1];
    v12 = v113;
    if (v113 >= v11)
    {
      goto LABEL_97;
    }
  }

  v40 = &a4[v14];
  if (__OFADD__(v14, a4))
  {
    goto LABEL_127;
  }

  if (v40 >= v39)
  {
    v40 = v10[1];
  }

  if (v40 < v14)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  if (v15 == v40)
  {
    goto LABEL_44;
  }

  v105 = v9;
  v41 = *v10;
  v42 = *v10 + 8 * v15 - 8;
  v108 = v14;
  v43 = v14 - v15;
  v111 = v40;
LABEL_36:
  v112 = v15;
  v44 = *(v41 + 8 * v15);
  v45 = v43;
  v11 = v42;
  while (1)
  {
    v46 = *v11;
    v47 = *(v44 + 16);

    [v47 dueDateResolutionTokenAsNonce];
    v49 = v48;
    [*(v46 + 16) dueDateResolutionTokenAsNonce];
    if (v50 >= v49)
    {

LABEL_35:
      v15 = v112 + 1;
      v42 += 8;
      --v43;
      if ((v112 + 1) == v111)
      {
        v15 = v111;
        v9 = v105;
        v10 = a3;
        v14 = v108;
        goto LABEL_44;
      }

      goto LABEL_36;
    }

    v51 = rem_isEqualNonces();

    if (v51)
    {
      goto LABEL_35;
    }

    if (!v41)
    {
      break;
    }

    v52 = *v11;
    v44 = *(v11 + 8);
    *v11 = v44;
    *(v11 + 8) = v52;
    v11 -= 8;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_35;
    }
  }

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
}

uint64_t sub_1001ACD84(char *a1, char *a2, char *a3, char *a4)
{
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v8 - 8, v9);
  v112 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v118 = (&v108 - v13);
  __chkstk_darwin(v14, v15);
  v111 = &v108 - v16;
  __chkstk_darwin(v17, v18);
  v114 = &v108 - v19;
  __chkstk_darwin(v20, v21);
  v110 = &v108 - v22;
  __chkstk_darwin(v23, v24);
  v115 = &v108 - v25;
  __chkstk_darwin(v26, v27);
  v109 = &v108 - v28;
  __chkstk_darwin(v29, v30);
  v119 = &v108 - v31;
  v32 = type metadata accessor for Date();
  v117 = *(v32 - 8);
  __chkstk_darwin(v32, v33);
  v121 = (&v108 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v35, v36);
  v113 = (&v108 - v37);
  __chkstk_darwin(v38, v39);
  v120 = &v108 - v40;
  __chkstk_darwin(v41, v42);
  v44 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v44 = a2 - a1;
  }

  v45 = v44 >> 3;
  v46 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v46 = a3 - a2;
  }

  v47 = v46 >> 3;
  if (v45 >= v46 >> 3)
  {
    if (a4 != a2 || &a2[8 * v47] <= a4)
    {
      memmove(a4, a2, 8 * v47);
    }

    v122 = &a4[8 * v47];
    if (a3 - a2 < 8 || a2 <= a1)
    {
      goto LABEL_89;
    }

    v120 = v117 + 48;
    v110 = v117 + 32;
    v115 = v117 + 8;
    v116 = v117 + 56;
LABEL_52:
    v79 = a2 - 8;
    a3 -= 8;
    v80 = v122;
    v117 = a2 - 8;
    v119 = a2;
    while (1)
    {
      v82 = *(v80 - 1);
      v80 -= 8;
      v81 = v82;
      v83 = *v79;
      if ((*(v82 + 32) & 1) == 0)
      {
        v90 = *(v81 + 24);

        goto LABEL_66;
      }

      v84 = *(v81 + 16);

      v85 = [v84 ckServerRecord];
      if (!v85)
      {
        break;
      }

      v86 = v85;
      v87 = [v85 creationDate];

      if (v87)
      {
        v88 = v111;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v89 = 0;
      }

      else
      {
        v89 = 1;
        v88 = v111;
      }

      v92 = v113;
      (*v116)(v88, v89, 1, v32);
      v93 = v88;
      v91 = v114;
      sub_10012F7FC(v93, v114);
      if ((*v120)(v91, 1, v32) == 1)
      {
        goto LABEL_62;
      }

      (*v110)(v92, v91, v32);
LABEL_65:
      Date.timeIntervalSinceReferenceDate.getter();
      v90 = v94;
      (*v115)(v92, v32);
      *(v81 + 24) = v90;
      *(v81 + 32) = 0;
LABEL_66:
      v95 = v118;
      if ((*(v83 + 32) & 1) == 0)
      {
        if (*(v83 + 24) < v90)
        {
          goto LABEL_79;
        }

        goto LABEL_71;
      }

      v96 = [*(v83 + 16) ckServerRecord];
      if (v96)
      {
        v97 = v96;
        v98 = [v96 creationDate];

        if (v98)
        {
          v99 = v112;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v100 = 0;
        }

        else
        {
          v100 = 1;
          v99 = v112;
        }

        v101 = v121;
        (*v116)(v99, v100, 1, v32);
        v102 = v99;
        v95 = v118;
        sub_10012F7FC(v102, v118);
        if ((*v120)(v95, 1, v32) != 1)
        {
          (*v110)(v101, v95, v32);
          goto LABEL_78;
        }
      }

      else
      {
        (*v116)(v95, 1, 1, v32);
      }

      static Date.distantPast.getter();
      if ((*v120)(v95, 1, v32) != 1)
      {
        sub_1001AAD5C(v95);
      }

LABEL_78:
      Date.timeIntervalSinceReferenceDate.getter();
      v104 = v103;
      (*v115)(v121, v32);
      *(v83 + 24) = v104;
      *(v83 + 32) = 0;
      if (v104 < v90)
      {
LABEL_79:
        isEqualNonces = rem_isEqualNonces();

        if ((isEqualNonces & 1) == 0)
        {
          v106 = v117;
          if (a3 + 8 != v119)
          {
            *a3 = *v117;
          }

          if (v122 <= a4 || (a2 = v106, v106 <= a1))
          {
            a2 = v106;
            goto LABEL_89;
          }

          goto LABEL_52;
        }

        goto LABEL_80;
      }

LABEL_71:

LABEL_80:
      a2 = v119;
      if (a3 + 8 != v122)
      {
        *a3 = *v80;
      }

      a3 -= 8;
      v122 = v80;
      v79 = v117;
      if (v80 <= a4)
      {
        v122 = v80;
        goto LABEL_89;
      }
    }

    v91 = v114;
    (*v116)(v114, 1, 1, v32);
    v92 = v113;
LABEL_62:
    static Date.distantPast.getter();
    if ((*v120)(v91, 1, v32) != 1)
    {
      sub_1001AAD5C(v91);
    }

    goto LABEL_65;
  }

  v114 = &v108 - v43;
  if (a4 != a1 || &a1[8 * v45] <= a4)
  {
    memmove(a4, a1, 8 * v45);
  }

  v122 = &a4[8 * v45];
  v48 = v115;
  if (a2 - a1 >= 8 && a2 < a3)
  {
    v49 = a2;
    v50 = (v117 + 56);
    v121 = (v117 + 48);
    v113 = (v117 + 32);
    v117 += 8;
    v118 = v50;
    v51 = v119;
    while (1)
    {
      v52 = *v49;
      v53 = *a4;
      if ((*(*v49 + 32) & 1) == 0)
      {
        v62 = *(v52 + 24);

        goto LABEL_24;
      }

      v54 = *(v52 + 16);

      v55 = [v54 ckServerRecord];
      v116 = a1;
      if (!v55)
      {
        break;
      }

      v56 = v49;
      v57 = v55;
      v58 = [v55 creationDate];

      v59 = a4;
      if (v58)
      {
        v60 = v109;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v61 = 0;
      }

      else
      {
        v61 = 1;
        v60 = v109;
      }

      (*v118)(v60, v61, 1, v32);
      v51 = v119;
      sub_10012F7FC(v60, v119);
      v64 = (*v121)(v51, 1, v32);
      v49 = v56;
      v63 = v115;
      if (v64 == 1)
      {
        goto LABEL_20;
      }

      v65 = v114;
      (*v113)(v114, v51, v32);
LABEL_23:
      Date.timeIntervalSinceReferenceDate.getter();
      v62 = v66;
      (*v117)(v65, v32);
      *(v52 + 24) = v62;
      *(v52 + 32) = 0;
      v48 = v63;
      a4 = v59;
      a1 = v116;
LABEL_24:
      if ((*(v53 + 32) & 1) == 0)
      {
        if (*(v53 + 24) >= v62)
        {
          goto LABEL_29;
        }

        goto LABEL_37;
      }

      v67 = [*(v53 + 16) ckServerRecord];
      if (v67)
      {
        v68 = v49;
        v69 = v67;
        v70 = [v67 creationDate];

        if (v70)
        {
          v71 = v110;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v72 = 0;
        }

        else
        {
          v72 = 1;
          v71 = v110;
        }

        (*v118)(v71, v72, 1, v32);
        v73 = v115;
        sub_10012F7FC(v71, v115);
        v49 = v68;
        v48 = v73;
        if ((*v121)(v73, 1, v32) != 1)
        {
          (*v113)(v120, v73, v32);
          goto LABEL_36;
        }
      }

      else
      {
        (*v118)(v48, 1, 1, v32);
      }

      static Date.distantPast.getter();
      if ((*v121)(v48, 1, v32) != 1)
      {
        sub_1001AAD5C(v48);
      }

LABEL_36:
      Date.timeIntervalSinceReferenceDate.getter();
      v75 = v74;
      (*v117)(v120, v32);
      *(v53 + 24) = v75;
      *(v53 + 32) = 0;
      if (v75 >= v62)
      {
LABEL_29:

LABEL_38:
        v77 = a4;
        v78 = a1 == a4;
        a4 += 8;
        if (v78)
        {
          goto LABEL_40;
        }

LABEL_39:
        *a1 = *v77;
        goto LABEL_40;
      }

LABEL_37:
      v76 = rem_isEqualNonces();

      if (v76)
      {
        goto LABEL_38;
      }

      v77 = v49;
      v78 = a1 == v49;
      v49 += 8;
      if (!v78)
      {
        goto LABEL_39;
      }

LABEL_40:
      a1 += 8;
      v51 = v119;
      if (a4 >= v122 || v49 >= a3)
      {
        goto LABEL_87;
      }
    }

    v59 = a4;
    v63 = v48;
    (*v118)(v51, 1, 1, v32);
LABEL_20:
    v65 = v114;
    static Date.distantPast.getter();
    if ((*v121)(v51, 1, v32) != 1)
    {
      sub_1001AAD5C(v51);
    }

    goto LABEL_23;
  }

LABEL_87:
  a2 = a1;
LABEL_89:
  if (a2 != a4 || a2 >= &a4[(v122 - a4 + (v122 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(a2, a4, 8 * ((v122 - a4) / 8));
  }

  return 1;
}

uint64_t sub_1001AD974(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (__dst != __src || &__src[8 * v10] <= __dst)
    {
      memmove(__dst, __src, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_42;
    }

    while (1)
    {
      v15 = *v4;
      v16 = *(*v6 + 16);

      [v16 dueDateResolutionTokenAsNonce];
      v18 = v17;
      [*(v15 + 16) dueDateResolutionTokenAsNonce];
      if (v19 >= v18)
      {
        break;
      }

      isEqualNonces = rem_isEqualNonces();

      if (isEqualNonces)
      {
        goto LABEL_17;
      }

      v21 = v6;
      v22 = v7 == v6;
      v6 += 8;
      if (!v22)
      {
        goto LABEL_18;
      }

LABEL_19:
      v7 += 8;
      if (v4 >= v14 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_42;
      }
    }

LABEL_17:
    v21 = v4;
    v22 = v7 == v4;
    v4 += 8;
    if (v22)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v7 = *v21;
    goto LABEL_19;
  }

  if (__dst != a2 || &a2[8 * v13] <= __dst)
  {
    memmove(__dst, a2, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_27:
    v33 = v6;
    v23 = v6 - 8;
    v5 -= 8;
    v24 = v14;
    while (1)
    {
      v25 = *(v24 - 1);
      v24 -= 8;
      v6 = v23;
      v26 = *v23;
      v27 = *(v25 + 16);

      [v27 dueDateResolutionTokenAsNonce];
      v29 = v28;
      [*(v26 + 16) dueDateResolutionTokenAsNonce];
      if (v30 >= v29)
      {
      }

      else
      {
        v31 = rem_isEqualNonces();

        if ((v31 & 1) == 0)
        {
          if (v5 + 8 != v33)
          {
            *v5 = *v6;
          }

          if (v14 <= v4 || v6 <= v7)
          {
            break;
          }

          goto LABEL_27;
        }
      }

      v23 = v6;
      if (v5 + 8 != v14)
      {
        *v5 = *v24;
      }

      v5 -= 8;
      v14 = v24;
      if (v24 <= v4)
      {
        v14 = v24;
        v6 = v33;
        break;
      }
    }
  }

LABEL_42:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

unint64_t sub_1001ADC98(unint64_t a1, unint64_t a2, uint64_t a3)
{
  j = a2;
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = &_swiftEmptyArrayStorage;
  v11[3] = &_swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

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
          goto LABEL_14;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v10 = v6;
      sub_1001A9494(v11, &v10);

      if (v8 == i)
      {
        return v11[0];
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  return j;
}

_TtC7remindd19RDXPCStorePerformer *sub_1001ADDE4(uint64_t a1)
{
  result = &_swiftEmptyArrayStorage;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = v1;
    v6 = kREMSupportedVersionUnset;
    v7 = (a1 + 48);
    do
    {
      v8 = *v7;
      v9 = *(v7 - 2);
      v10 = [v5 addDueDateDeltaAlertWithDueDateDelta:v9];
      if (v6 < v8)
      {
        v11 = [v5 updateDueDateDeltaAlert:v10];
        v12 = [v11 _setMinimumSupportedAppVersion:v8];

        v10 = v12;
      }

      v13 = v10;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v7 += 3;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      --v4;
    }

    while (v4);
    return &_swiftEmptyArrayStorage;
  }

  return result;
}

Swift::Int sub_1001ADF48()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(10 * v1 + 10);
  return Hasher._finalize()();
}

Swift::Int sub_1001ADFD0(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(10 * v2 + 10);
  return Hasher._finalize()();
}

unsigned __int16 *sub_1001AE01C@<X0>(unsigned __int16 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 == 10)
  {
    v3 = 0;
  }

  else
  {
    v3 = 3;
  }

  if (v2 == 20)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (v2 == 30)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1001AE064()
{
  v1 = 1751607656;
  if (*v0 != 1)
  {
    v1 = 0x72656B636F6C62;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7827308;
  }
}

Swift::Int sub_1001AE0EC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x65000300020001uLL >> (16 * v1));
  return Hasher._finalize()();
}

Swift::Int sub_1001AE18C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x65000300020001uLL >> (16 * v2));
  return Hasher._finalize()();
}

uint64_t sub_1001AE1E4@<X0>(unsigned __int16 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001AEAE8(*a1);
  *a2 = result;
  return result;
}

void sub_1001AE234(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v32 - v6;
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  *&v10 = __chkstk_darwin(v8 - 8, v9).n128_u64[0];
  v12 = &v32 - v11;
  *a2 = [a1 objectID];
  v13 = [a1 operationTypeRawValue];
  if (v13 > 2)
  {
    if (v13 != 3)
    {
      if (v13 == 101)
      {
        v14 = 3;
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v14 = 2;
  }

  else
  {
    if (v13 != 1)
    {
      if (v13 == 2)
      {
        v14 = 1;
        goto LABEL_11;
      }

LABEL_8:
      v14 = 4;
      goto LABEL_11;
    }

    v14 = 0;
  }

LABEL_11:
  *(a2 + 8) = v14;
  v15 = [a1 priorityRawValue];
  v16 = v15 == 20;
  if (v15 == 30)
  {
    v16 = 2;
  }

  *(a2 + 9) = v16;
  v17 = [a1 creationDate];
  if (v17)
  {
    v18 = v17;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = type metadata accessor for Date();
    (*(*(v19 - 8) + 56))(v12, 0, 1, v19);
  }

  else
  {
    v20 = type metadata accessor for Date();
    (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  }

  v21 = type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation(0);
  sub_100031B58(v12, a2 + v21[7], &unk_100938850, qword_100795AE0);
  *(a2 + v21[8]) = [a1 isCompleted];
  v22 = [a1 entityIdentifier];
  if (v22)
  {
    v23 = v22;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = type metadata accessor for UUID();
  (*(*(v25 - 8) + 56))(v7, v24, 1, v25);
  sub_100031B58(v7, a2 + v21[9], &unk_100939D90, "8\n\r");
  v26 = [a1 configurationData];
  if (v26)
  {
    v27 = v26;
    v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
  }

  else
  {

    v28 = 0;
    v30 = 0xF000000000000000;
  }

  v31 = (a2 + v21[10]);
  *v31 = v28;
  v31[1] = v30;
}

uint64_t sub_1001AE574()
{
  v1 = v0;
  v184._countAndFlagsBits = 0;
  v184._object = 0xE000000000000000;
  _StringGuts.grow(_:)(55);
  v2._countAndFlagsBits = 0xD000000000000032;
  v2._object = 0x80000001007EF1A0;
  String.append(_:)(v2);
  v3 = [*v0 description];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);
  v6, v8, v9, v10, v11, v12, v13, v14;
  v15._countAndFlagsBits = 8069182;
  v15._object = 0xE300000000000000;
  String.append(_:)(v15);
  _StringGuts.grow(_:)(19);
  0xE000000000000000, v16, v17, v18, v19, v20, v21, v22;
  v184._countAndFlagsBits = 0x6F6974617265706FLL;
  v184._object = 0xEF203A657079546ELL;
  v23 = *(v1 + 8);
  v24 = 0xE700000000000000;
  v25 = 0x6E776F6E6B6E75;
  if (v23 == 3)
  {
    v25 = 0xD00000000000001DLL;
    v24 = 0x80000001007EF100;
  }

  if (v23 == 2)
  {
    v25 = 0xD00000000000001DLL;
    v24 = 0x80000001007EF120;
  }

  v26 = 0x80000001007EF170;
  v27 = 0xD000000000000020;
  if (*(v1 + 8))
  {
    v27 = 0xD000000000000023;
    v26 = 0x80000001007EF140;
  }

  if (*(v1 + 8) <= 1u)
  {
    v28 = v27;
  }

  else
  {
    v28 = v25;
  }

  if (*(v1 + 8) <= 1u)
  {
    v29 = v26;
  }

  else
  {
    v29 = v24;
  }

  v30 = v29;
  String.append(_:)(*&v28);
  v29, v31, v32, v33, v34, v35, v36, v37;
  v38._countAndFlagsBits = 8236;
  v38._object = 0xE200000000000000;
  String.append(_:)(v38);

  String.append(_:)(v184);
  0xE000000000000000, v39, v40, v41, v42, v43, v44, v45;
  v184._object, v46, v47, v48, v49, v50, v51, v52;
  strcpy(&v184, "priority: ");
  BYTE3(v184._object) = 0;
  HIDWORD(v184._object) = -369098752;
  v53 = 1751607656;
  v54 = 0xE700000000000000;
  if (*(v1 + 9) == 1)
  {
    v54 = 0xE400000000000000;
  }

  else
  {
    v53 = 0x72656B636F6C62;
  }

  if (*(v1 + 9))
  {
    v55 = v53;
  }

  else
  {
    v55 = 7827308;
  }

  if (*(v1 + 9))
  {
    v56 = v54;
  }

  else
  {
    v56 = 0xE300000000000000;
  }

  v57 = v56;
  String.append(_:)(*&v55);
  v56, v58, v59, v60, v61, v62, v63, v64;
  v65._countAndFlagsBits = 8236;
  v65._object = 0xE200000000000000;
  String.append(_:)(v65);

  String.append(_:)(v184);
  0xE000000000000000, v66, v67, v68, v69, v70, v71, v72;
  v184._object, v73, v74, v75, v76, v77, v78, v79;
  _StringGuts.grow(_:)(18);
  0xE000000000000000, v80, v81, v82, v83, v84, v85, v86;
  strcpy(&v184, "creationDate: ");
  HIBYTE(v184._object) = -18;
  v87 = type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation(0);
  sub_1000F5104(&unk_100938850, qword_100795AE0);
  v88._countAndFlagsBits = Optional.descriptionOrNil.getter();
  object = v88._object;
  String.append(_:)(v88);
  object, v90, v91, v92, v93, v94, v95, v96;
  v97._countAndFlagsBits = 8236;
  v97._object = 0xE200000000000000;
  String.append(_:)(v97);

  String.append(_:)(v184);
  0xE000000000000000, v98, v99, v100, v101, v102, v103, v104;
  v184._object, v105, v106, v107, v108, v109, v110, v111;
  _StringGuts.grow(_:)(17);
  0xE000000000000000, v112, v113, v114, v115, v116, v117, v118;
  strcpy(&v184, "isCompleted: ");
  HIWORD(v184._object) = -4864;
  if (*(v1 + *(v87 + 32)))
  {
    v119 = 1702195828;
  }

  else
  {
    v119 = 0x65736C6166;
  }

  if (*(v1 + *(v87 + 32)))
  {
    v120 = 0xE400000000000000;
  }

  else
  {
    v120 = 0xE500000000000000;
  }

  v121 = v120;
  String.append(_:)(*&v119);
  v120, v122, v123, v124, v125, v126, v127, v128;
  v129._countAndFlagsBits = 8236;
  v129._object = 0xE200000000000000;
  String.append(_:)(v129);

  String.append(_:)(v184);
  0xE000000000000000, v130, v131, v132, v133, v134, v135, v136;
  v184._object, v137, v138, v139, v140, v141, v142, v143;
  _StringGuts.grow(_:)(20);
  0xE000000000000000, v144, v145, v146, v147, v148, v149, v150;
  sub_1000F5104(&unk_100939D90, "8\n\r");
  v151._countAndFlagsBits = Optional.descriptionOrNil.getter();
  v152 = v151._object;
  String.append(_:)(v151);
  v152, v153, v154, v155, v156, v157, v158, v159;

  v160._countAndFlagsBits = 0xD000000000000012;
  v160._object = 0x80000001007EF1E0;
  String.append(_:)(v160);
  0xE000000000000000, v161, v162, v163, v164, v165, v166, v167;
  0x80000001007EF1E0, v168, v169, v170, v171, v172, v173, v174;

  v175._countAndFlagsBits = 125;
  v175._object = 0xE100000000000000;
  String.append(_:)(v175);
  0xE000000000000000, v176, v177, v178, v179, v180, v181, v182;
  return 0;
}

unint64_t sub_1001AEA94()
{
  result = qword_10093AD50;
  if (!qword_10093AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093AD50);
  }

  return result;
}

uint64_t sub_1001AEAE8(unsigned __int16 a1)
{
  if (a1 > 2u)
  {
    if (a1 != 101)
    {
      if (a1 == 3)
      {
        return 2;
      }

      return 4;
    }

    return 3;
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 1;
      }

      return 4;
    }

    return 0;
  }
}

uint64_t type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation(uint64_t a1)
{
  result = qword_10093ADB0;
  if (!qword_10093ADB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_1001AEB88(char *a1, char **a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v7 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v7 = a1;
    *(a1 + 4) = *(a2 + 4);
    v8 = a3[7];
    v9 = type metadata accessor for Date();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);
    v12 = v4;
    if (v11(a2 + v8, 1, v9))
    {
      v13 = sub_1000F5104(&unk_100938850, qword_100795AE0);
      memcpy(&v7[v8], a2 + v8, *(*(v13 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(&v7[v8], a2 + v8, v9);
      (*(v10 + 56))(&v7[v8], 0, 1, v9);
    }

    v14 = a3[9];
    v7[a3[8]] = *(a2 + a3[8]);
    v15 = type metadata accessor for UUID();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(a2 + v14, 1, v15))
    {
      v17 = sub_1000F5104(&unk_100939D90, "8\n\r");
      memcpy(&v7[v14], a2 + v14, *(*(v17 - 8) + 64));
    }

    else
    {
      (*(v16 + 16))(&v7[v14], a2 + v14, v15);
      (*(v16 + 56))(&v7[v14], 0, 1, v15);
    }

    v18 = a3[10];
    v19 = &v7[v18];
    v20 = a2 + v18;
    v21 = *(v20 + 1);
    if (v21 >> 60 == 15)
    {
      *v19 = *v20;
    }

    else
    {
      v22 = *v20;
      sub_100029344(*v20, *(v20 + 1));
      *v19 = v22;
      *(v19 + 1) = v21;
    }
  }

  return v7;
}

uint64_t sub_1001AEE1C(id *a1, int *a2)
{
  v4 = a2[7];
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(a1 + v4, 1, v5))
  {
    (*(v6 + 8))(a1 + v4, v5);
  }

  v7 = a2[9];
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(a1 + v7, 1, v8);
  if (!result)
  {
    result = (*(v9 + 8))(a1 + v7, v8);
  }

  v11 = (a1 + a2[10]);
  v12 = v11[1];
  if (v12 >> 60 != 15)
  {
    v13 = *v11;

    return sub_10001BBA0(v13, v12);
  }

  return result;
}

uint64_t sub_1001AEF98(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v7 = a3[7];
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v6;
  if (v10(a2 + v7, 1, v8))
  {
    v12 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy((a1 + v7), (a2 + v7), *(*(v12 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a1 + v7, a2 + v7, v8);
    (*(v9 + 56))(a1 + v7, 0, 1, v8);
  }

  v13 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(a2 + v13, 1, v14))
  {
    v16 = sub_1000F5104(&unk_100939D90, "8\n\r");
    memcpy((a1 + v13), (a2 + v13), *(*(v16 - 8) + 64));
  }

  else
  {
    (*(v15 + 16))(a1 + v13, a2 + v13, v14);
    (*(v15 + 56))(a1 + v13, 0, 1, v14);
  }

  v17 = a3[10];
  v18 = a1 + v17;
  v19 = (a2 + v17);
  v20 = v19[1];
  if (v20 >> 60 == 15)
  {
    *v18 = *v19;
  }

  else
  {
    v21 = *v19;
    sub_100029344(*v19, v19[1]);
    *v18 = v21;
    *(v18 + 8) = v20;
  }

  return a1;
}

uint64_t sub_1001AF1E4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  v9 = a3[7];
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v12(a1 + v9, 1, v10);
  v14 = v12(a2 + v9, 1, v10);
  if (v13)
  {
    if (!v14)
    {
      (*(v11 + 16))(a1 + v9, a2 + v9, v10);
      (*(v11 + 56))(a1 + v9, 0, 1, v10);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v14)
  {
    (*(v11 + 8))(a1 + v9, v10);
LABEL_6:
    v15 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy((a1 + v9), (a2 + v9), *(*(v15 - 8) + 64));
    goto LABEL_7;
  }

  (*(v11 + 24))(a1 + v9, a2 + v9, v10);
LABEL_7:
  *(a1 + a3[8]) = *(a2 + a3[8]);
  v16 = a3[9];
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  v20 = v19(a1 + v16, 1, v17);
  v21 = v19(a2 + v16, 1, v17);
  if (v20)
  {
    if (!v21)
    {
      (*(v18 + 16))(a1 + v16, a2 + v16, v17);
      (*(v18 + 56))(a1 + v16, 0, 1, v17);
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v21)
  {
    (*(v18 + 8))(a1 + v16, v17);
LABEL_12:
    v22 = sub_1000F5104(&unk_100939D90, "8\n\r");
    memcpy((a1 + v16), (a2 + v16), *(*(v22 - 8) + 64));
    goto LABEL_13;
  }

  (*(v18 + 24))(a1 + v16, a2 + v16, v17);
LABEL_13:
  v23 = a3[10];
  v24 = (a1 + v23);
  v25 = (a2 + v23);
  v26 = *(a2 + v23 + 8);
  if (*(a1 + v23 + 8) >> 60 != 15)
  {
    if (v26 >> 60 != 15)
    {
      v28 = *v25;
      sub_100029344(v28, v26);
      v29 = *v24;
      v30 = v24[1];
      *v24 = v28;
      v24[1] = v26;
      sub_10001BBA0(v29, v30);
      return a1;
    }

    sub_1001531B8(v24);
    goto LABEL_18;
  }

  if (v26 >> 60 == 15)
  {
LABEL_18:
    *v24 = *v25;
    return a1;
  }

  v27 = *v25;
  sub_100029344(v27, v26);
  *v24 = v27;
  v24[1] = v26;
  return a1;
}

uint64_t sub_1001AF540(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v6 = a3[7];
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a2 + v6, 1, v7))
  {
    v9 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy((a1 + v6), (a2 + v6), *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(a1 + v6, a2 + v6, v7);
    (*(v8 + 56))(a1 + v6, 0, 1, v7);
  }

  v10 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(a2 + v10, 1, v11))
  {
    v13 = sub_1000F5104(&unk_100939D90, "8\n\r");
    memcpy((a1 + v10), (a2 + v10), *(*(v13 - 8) + 64));
  }

  else
  {
    (*(v12 + 32))(a1 + v10, a2 + v10, v11);
    (*(v12 + 56))(a1 + v10, 0, 1, v11);
  }

  *(a1 + a3[10]) = *(a2 + a3[10]);
  return a1;
}

uint64_t sub_1001AF748(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v7 = a3[7];
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1 + v7, 1, v8);
  v12 = v10(a2 + v7, 1, v8);
  if (v11)
  {
    if (!v12)
    {
      (*(v9 + 32))(a1 + v7, a2 + v7, v8);
      (*(v9 + 56))(a1 + v7, 0, 1, v8);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v12)
  {
    (*(v9 + 8))(a1 + v7, v8);
LABEL_6:
    v13 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy((a1 + v7), (a2 + v7), *(*(v13 - 8) + 64));
    goto LABEL_7;
  }

  (*(v9 + 40))(a1 + v7, a2 + v7, v8);
LABEL_7:
  v14 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  v18 = v17(a1 + v14, 1, v15);
  v19 = v17(a2 + v14, 1, v15);
  if (v18)
  {
    if (!v19)
    {
      (*(v16 + 32))(a1 + v14, a2 + v14, v15);
      (*(v16 + 56))(a1 + v14, 0, 1, v15);
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v19)
  {
    (*(v16 + 8))(a1 + v14, v15);
LABEL_12:
    v20 = sub_1000F5104(&unk_100939D90, "8\n\r");
    memcpy((a1 + v14), (a2 + v14), *(*(v20 - 8) + 64));
    goto LABEL_13;
  }

  (*(v16 + 40))(a1 + v14, a2 + v14, v15);
LABEL_13:
  v21 = a3[10];
  v22 = (a1 + v21);
  v23 = (a2 + v21);
  v24 = *(a1 + v21 + 8);
  if (v24 >> 60 != 15)
  {
    v25 = v23[1];
    if (v25 >> 60 != 15)
    {
      v26 = *v22;
      *v22 = *v23;
      v22[1] = v25;
      sub_10001BBA0(v26, v24);
      return a1;
    }

    sub_1001531B8(v22);
  }

  *v22 = *v23;
  return a1;
}

void sub_1001AFA8C(uint64_t a1)
{
  sub_1001AFBC0(319, &qword_100938D60, &type metadata accessor for Date);
  if (v1 <= 0x3F)
  {
    sub_1001AFBC0(319, &qword_10093ADC0, &type metadata accessor for UUID);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

void sub_1001AFBC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

unint64_t sub_1001AFC28()
{
  result = qword_10093AE08;
  if (!qword_10093AE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093AE08);
  }

  return result;
}

void sub_1001AFC7C(_TtC7remindd19RDXPCStorePerformer *a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, void (*a4)(uint64_t, char *, uint64_t)@<X4>, uint64_t a5@<X8>)
{
  v271 = a2;
  v275 = a3;
  v244 = a5;
  v246 = type metadata accessor for REMRemindersListDataView.FlaggedModel();
  v245 = *(v246 - 8);
  __chkstk_darwin(v246, v7);
  v241 = &v228 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v243 = &v228 - v11;
  v259 = type metadata accessor for REMRemindersListDataView.FlatModel();
  v242 = *(v259 - 8);
  __chkstk_darwin(v259, v12);
  v252 = &v228 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v262 = &v228 - v16;
  v17 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
  v268 = *(v17 - 8);
  v269 = v17;
  __chkstk_darwin(v17, v18);
  v238 = &v228 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = sub_1000F5104(&qword_10093AE38, &unk_100798450);
  __chkstk_darwin(v249, v20);
  v250 = &v228 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v23);
  v265 = &v228 - v24;
  v266 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v258 = *(v266 - 8);
  __chkstk_darwin(v266, v25);
  v237 = &v228 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27, v28);
  v257 = &v228 - v29;
  __chkstk_darwin(v30, v31);
  v264 = &v228 - v32;
  v33 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  __chkstk_darwin(v33 - 8, v34);
  v236 = &v228 - v35;
  v36 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v254 = *(v36 - 8);
  v255 = v36;
  __chkstk_darwin(v36, v37);
  v253 = &v228 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39, v40);
  v263 = &v228 - v41;
  v260 = type metadata accessor for REMRemindersListDataView.Diff();
  v251 = *(v260 - 8);
  __chkstk_darwin(v260, v42);
  v240 = &v228 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44, v45);
  v272 = &v228 - v46;
  v267 = _s10PredicatesOMa(0);
  __chkstk_darwin(v267, v47);
  v247 = &v228 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49, v50);
  v261 = (&v228 - v51);
  v52 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  __chkstk_darwin(v52 - 8, v53);
  v239 = &v228 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55, v56);
  v248 = &v228 - v57;
  __chkstk_darwin(v58, v59);
  v256 = &v228 - v60;
  __chkstk_darwin(v61, v62);
  v64 = &v228 - v63;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v66 = *(Configuration - 8);
  __chkstk_darwin(Configuration, v67);
  v69 = &v228 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v70, v71);
  v73 = &v228 - v72;
  __chkstk_darwin(v74, v75);
  v77 = &v228 - v76;
  __chkstk_darwin(v78, v79);
  v81 = &v228 - v80;
  v273 = a4;
  REMRemindersListDataView.FlaggedInvocation.Parameters.configuration.getter();
  v82 = v274;
  v83 = sub_1001B14D0(a1, v275);
  if (v82)
  {
    (*(v66 + 8))(v81, Configuration);
    return;
  }

  v229 = v73;
  v230 = v69;
  v234 = v83;
  v231 = v84;
  v233 = a1;
  v274 = 0;
  v235 = v64;
  v87 = *(v66 + 8);
  v86 = v66 + 8;
  v85 = v87;
  v87(v81, Configuration);
  REMRemindersListDataView.FlaggedInvocation.Parameters.configuration.getter();
  v88 = REMRemindersListDataView.FetchConfiguration.countCompleted.getter();
  v89 = Configuration;
  v232 = v87;
  if (v88)
  {
    v90 = v261;
    swift_storeEnumTagMultiPayload();
    v91 = sub_100043AA8();
    sub_1001A4F3C(v90, _s10PredicatesOMa);
    v92 = v235;
    v93 = v233;
    v94 = v274;
    sub_10053464C(v233, v91);
    v274 = v94;
    v95 = v270;
    if (v94)
    {
      v232(v77, v89);
LABEL_10:
      v234, v96, v97, v98, v99, v100, v101, v102;

      return;
    }

    v232(v77, v89);

    v103 = 0;
  }

  else
  {
    v85(v77, Configuration);
    v103 = 1;
    v92 = v235;
    v93 = v233;
    v95 = v270;
  }

  (*(v268 + 56))(v92, v103, 1, v269);
  v91 = [(RDXPCStorePerformer *)v95 fetchResultTokenToDiffAgainst];
  v104 = v272;
  v105 = v274;
  sub_100534D44(v91, v272);
  v274 = v105;
  if (v105)
  {
    sub_1000050A4(v92, &qword_100938A70, &qword_1007ACC60);
    goto LABEL_10;
  }

  v106 = v229;
  REMRemindersListDataView.FlaggedInvocation.Parameters.configuration.getter();
  REMRemindersListDataView.FetchConfiguration.remindersPrefetch.getter();
  v107 = v106;
  v108 = v89;
  v271 = v86;
  v232(v107, v89);
  v110 = v254;
  v109 = v255;
  v111 = v253;
  (*(v254 + 16))();
  v112 = (*(v110 + 88))(v111, v109);
  if (v112 == enum case for REMRemindersListDataView.RemindersPrefetch.initial(_:))
  {
    (*(v110 + 96))(v111, v109);
    v113 = sub_10053DB98(*v111, v234, v93, v275, 0);
LABEL_15:
    v270 = v113;
    v261 = &_swiftEmptyArrayStorage;
LABEL_16:
    v118 = v266;
    v119 = v263;
    v120 = v247;
    goto LABEL_17;
  }

  v114 = v275;
  if (v112 == enum case for REMRemindersListDataView.RemindersPrefetch.updatedInserted(_:))
  {
    v110 = v254;
    v115 = v255;
    v116 = v253;
    (*(v254 + 96))(v253, v255);
    v117 = v114;
    v109 = v115;
    v113 = sub_10053E698(*v116, v104, v93, v117, 0);
    goto LABEL_15;
  }

  if (v112 == enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:))
  {
    v110 = v254;
    v176 = v255;
    v177 = v253;
    (*(v254 + 96))(v253, v255);
    v178 = v114;
    v179 = *v177;
    v180 = v177 + *(sub_1000F5104(&qword_100938A78, &qword_1007AABE0) + 48);
    v181 = v236;
    sub_100031B58(v180, v236, &qword_10094B8E0, &unk_1007AABD0);
    v182 = v179;
    v109 = v176;
    v183 = v234;
    v270 = sub_10053DB98(v182, v234, v93, v178, 0);
    v261 = sub_10053EBE4(v181, v183, v93, v178, 0);
    sub_1000050A4(v181, &qword_10094B8E0, &unk_1007AABD0);
    goto LABEL_16;
  }

  v118 = v266;
  if (v112 != enum case for REMRemindersListDataView.RemindersPrefetch.none(_:))
  {
    goto LABEL_43;
  }

  v261 = &_swiftEmptyArrayStorage;
  v270 = &_swiftEmptyArrayStorage;
  v110 = v254;
  v109 = v255;
  v119 = v263;
  v120 = v247;
LABEL_17:
  (*(v110 + 8))(v119, v109);
  v121 = v258;
  v122 = *(v258 + 104);
  LODWORD(v271) = enum case for REMRemindersListDataView.ShowCompleted.on(_:);
  v122(v120);
  swift_storeEnumTagMultiPayload();
  v275 = sub_100043AA8();
  sub_1001A4F3C(v120, _s10PredicatesOMa);
  v123 = v230;
  REMRemindersListDataView.FlaggedInvocation.Parameters.configuration.getter();
  v124 = v264;
  REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
  v232(v123, v108);
  v125 = v265;
  sub_100010364(v92, v265, &qword_100938A70, &qword_1007ACC60);
  v126 = v249;
  v127 = v125 + *(v249 + 48);
  v273 = *(v121 + 16);
  v273(v127, v124, v118);
  *(v125 + *(v126 + 64)) = v234;
  v128 = v125;
  v129 = v250;
  sub_100010364(v128, v250, &qword_10093AE38, &unk_100798450);
  v130 = *(v126 + 48);
  v131 = *(v126 + 64);
  v132 = v118;
  v133 = *(v129 + v131);
  v134 = v256;
  sub_100031B58(v129, v256, &qword_100938A70, &qword_1007ACC60);
  v135 = v129 + v130;
  v136 = v257;
  (*(v121 + 32))(v257, v135, v132);
  v137 = v248;
  sub_100010364(v134, v248, &qword_100938A70, &qword_1007ACC60);
  v138 = v268;
  v139 = v269;
  v140 = (*(v268 + 48))(v137, 1, v269);

  if (v140 != 1)
  {
    v133, v141, v142, v143, v144, v145, v146, v147;
    v166 = v238;
    (*(v138 + 32))(v238, v137, v139);
    v167 = REMRemindersListDataView.CountByCompleted.incomplete.getter();
    v168 = REMRemindersListDataView.CountByCompleted.completed.getter();

    (*(v138 + 8))(v166, v139);
    v169 = *(v121 + 8);
    v170 = v266;
    v169(v136, v266);
    sub_1000050A4(v134, &qword_100938A70, &qword_1007ACC60);
    sub_1000050A4(v265, &qword_10093AE38, &unk_100798450);
    v169(v264, v170);
    v171 = __OFADD__(v167, v168);
    v160 = v246;
    v161 = v245;
    v162 = v259;
    v164 = v252;
    v165 = v251;
    if (!v171)
    {
      v163 = v241;
      v156 = v262;
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_43;
  }

  v148 = v275;
  sub_1000050A4(v137, &qword_100938A70, &qword_1007ACC60);
  v156 = v262;
  v157 = v133;
  if (*(v133 + 16))
  {
    v133, v149, v150, v151, v152, v153, v154, v155;

    v158 = *(v258 + 8);
    v159 = v266;
    v158(v257, v266);
    sub_1000050A4(v256, &qword_100938A70, &qword_1007ACC60);
    sub_1000050A4(v265, &qword_10093AE38, &unk_100798450);
    v158(v264, v159);
    v160 = v246;
    v161 = v245;
    v162 = v259;
    v163 = v241;
    v164 = v252;
    v165 = v251;
LABEL_22:
    v172 = v239;
    goto LABEL_23;
  }

  v184 = v237;
  v185 = v266;
  v273(v237, v257, v266);
  v186 = v258;
  v187 = (*(v258 + 88))(v184, v185);
  v195 = v256;
  if (v187 != enum case for REMRemindersListDataView.ShowCompleted.after(_:))
  {
    if (v187 == enum case for REMRemindersListDataView.ShowCompleted.allowlist(_:))
    {
      v157, v188, v189, v190, v191, v192, v193, v194;
      (*(v186 + 8))(v184, v266);
      goto LABEL_34;
    }

    v225 = v157;
    v196 = v252;
    v165 = v251;
    if (v187 == enum case for REMRemindersListDataView.ShowCompleted.off(_:))
    {
      v225, v188, v189, v190, v191, v192, v193, v194;
      goto LABEL_35;
    }

    if (v187 == v271)
    {
      v225, v188, v189, v190, v191, v192, v193, v194;

      v226 = *(v258 + 8);
      v227 = v266;
      v226(v257, v266);
      sub_1000050A4(v195, &qword_100938A70, &qword_1007ACC60);
      sub_1000050A4(v265, &qword_10093AE38, &unk_100798450);
      v226(v264, v227);
      v162 = v259;
      v163 = v241;
      v172 = v239;
      v160 = v246;
      v161 = v245;
      v156 = v262;
      v164 = v252;
      goto LABEL_23;
    }

    while (1)
    {
LABEL_43:
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }
  }

  v157, v188, v189, v190, v191, v192, v193, v194;
  (*(v186 + 8))(v184, v185);
LABEL_34:
  v196 = v252;
  v165 = v251;
LABEL_35:
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v197 = [objc_allocWithZone(NSFetchRequest) init];
  v198 = [swift_getObjCClassFromMetadata() entity];
  [v197 setEntity:v198];

  [v197 setAffectedStores:0];
  [v197 setPredicate:v148];
  [v197 setFetchLimit:1];
  [v197 setAffectedStores:0];
  v199 = v274;
  NSManagedObjectContext.count<A>(for:)();
  v274 = v199;
  if (v199)
  {
    v234, v200, v201, v202, v203, v204, v205, v206;

    v261, v207, v208, v209, v210, v211, v212, v213;
    v270, v214, v215, v216, v217, v218, v219, v220;

    v221 = *(v258 + 8);
    v222 = v266;
    v221(v257, v266);
    sub_1000050A4(v256, &qword_100938A70, &qword_1007ACC60);
    sub_1000050A4(v265, &qword_10093AE38, &unk_100798450);
    v221(v264, v222);
    (*(v165 + 8))(v272, v260);
    v175 = v235;
    goto LABEL_24;
  }

  v223 = *(v258 + 8);
  v224 = v266;
  v223(v257, v266);
  sub_1000050A4(v256, &qword_100938A70, &qword_1007ACC60);
  sub_1000050A4(v265, &qword_10093AE38, &unk_100798450);
  v223(v264, v224);
  v162 = v259;
  v163 = v241;
  v156 = v262;
  v172 = v239;
  v164 = v196;
  v160 = v246;
  v161 = v245;
LABEL_23:
  sub_100010364(v235, v172, &qword_100938A70, &qword_1007ACC60);
  REMRemindersListDataView.FlatModel.init(reminders:remindersCount:hasIncompleteOrCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
  v173 = v242;
  (*(v242 + 16))(v164, v156, v162);
  v275 = v231;
  v174 = v243;
  REMRemindersListDataView.FlaggedModel.init(flatModel:flaggedSmartList:)();
  (*(v161 + 16))(v163, v174, v160);
  (*(v165 + 16))(v240, v272, v260);
  sub_1001B1D58(&qword_10093AE40, &type metadata accessor for REMRemindersListDataView.FlaggedModel, &protocol conformance descriptor for REMRemindersListDataView.FlaggedModel);
  sub_1001B1D58(&qword_10093AE48, &type metadata accessor for REMRemindersListDataView.FlaggedModel, &protocol conformance descriptor for REMRemindersListDataView.FlaggedModel);
  REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();

  (*(v161 + 8))(v174, v160);
  (*(v173 + 8))(v262, v259);
  (*(v165 + 8))(v272, v260);
  v175 = v235;
LABEL_24:
  sub_1000050A4(v175, &qword_100938A70, &qword_1007ACC60);
}

uint64_t sub_1001B1210(uint64_t a1)
{
  result = sub_1001B1D58(&qword_10093AE30, &type metadata accessor for REMRemindersListDataView.FlaggedInvocation, &protocol conformance descriptor for REMRemindersListDataView.FlaggedInvocation);
  *(a1 + 8) = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1001B1268(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v3)
  {
    v4 = 0;
    v5 = a1 & 0xC000000000000001;
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
    v45 = a2;
    v46 = a1 + 32;
    v43 = a1 & 0xC000000000000001;
    v44 = v3;
    v42 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v5)
      {
        a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v6 + 16))
        {
          goto LABEL_24;
        }

        a1 = *(v46 + 8 * v4);
      }

      v7 = a1;
      if (__OFADD__(v4++, 1))
      {
        break;
      }

      v9 = *a2;
      if ((*a2 & 0xC000000000000001) != 0)
      {

        v10 = v7;
        v11 = __CocoaSet.contains(_:)();
        v9, v12, v13, v14, v15, v16, v17, v18;

        if (v11)
        {

          goto LABEL_6;
        }
      }

      else if (*(v9 + 16))
      {
        sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
        v19 = *(v9 + 40);

        v20 = NSObject._rawHashValue(seed:)(v19);
        v28 = -1 << *(v9 + 32);
        v29 = v20 & ~v28;
        if ((*(v9 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
        {
          v30 = ~v28;
          while (1)
          {
            v31 = *(*(v9 + 48) + 8 * v29);
            v32 = static NSObject.== infix(_:_:)();

            if (v32)
            {
              break;
            }

            v29 = (v29 + 1) & v30;
            if (((*(v9 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          v9, v33, v34, v35, v36, v37, v38, v39;
          v3 = v44;
          a2 = v45;
          v6 = v42;
          v5 = v43;
          goto LABEL_6;
        }

LABEL_4:
        v9, v21, v22, v23, v24, v25, v26, v27;
        v3 = v44;
        a2 = v45;
        v6 = v42;
        v5 = v43;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      a1 = specialized ContiguousArray._endMutation()();
LABEL_6:
      if (v4 == v3)
      {
        return &_swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v41 = a1;
    v3 = _CocoaArrayWrapper.endIndex.getter();
    a1 = v41;
  }

  return &_swiftEmptyArrayStorage;
}

_TtC7remindd19RDXPCStorePerformer *sub_1001B14D0(void *a1, uint64_t a2)
{
  v139 = a1;
  v136 = a2;
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v144 = *(Subtasks - 8);
  v145 = Subtasks;
  __chkstk_darwin(Subtasks, v3);
  v146 = &v134 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v142 = *(v5 - 8);
  v143 = v5;
  __chkstk_darwin(v5, v6);
  v138 = &v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s9UtilitiesO12SortingStyleOMa(0);
  __chkstk_darwin(v12, v13);
  v15 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v137 = &v134 - v18;
  __chkstk_darwin(v19, v20);
  v22 = &v134 - v21;
  __chkstk_darwin(v23, v24);
  v26 = &v134 - v25;
  v27 = _s10PredicatesOMa(0);
  __chkstk_darwin(v27, v28);
  v30 = &v134 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
  swift_storeEnumTagMultiPayload();
  v31 = sub_100043AA8();
  sub_1001A4F3C(v30, _s10PredicatesOMa);
  REMRemindersListDataView.FetchConfiguration.sortingStyle.getter();
  v32 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
  v33 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  (*(*(v33 - 8) + 104))(v22, v32, v33);
  v34 = v146;
  swift_storeEnumTagMultiPayload();
  v35 = v11;
  v36 = v138;
  sub_1005368D8(v35, v22, v26);
  REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
  REMRemindersListDataView.FetchConfiguration.fetchSubtasks.getter();
  v38 = v139;
  v37 = v140;
  v39 = REMSmartListTypeFlagged;
  v141 = v26;
  v41 = sub_100538914(v15, v139, REMSmartListTypeFlagged, v26, v40);
  if (v37)
  {

    (*(v144 + 8))(v34, v145);
    (*(v142 + 8))(v36, v143);
    return sub_1001A4F3C(v141, _s9UtilitiesO12SortingStyleOMa);
  }

  v134 = v41;
  v140 = v31;
  v43 = v36;
  v44 = v137;
  sub_1001B1DA0(v15, v137, v42);
  v45 = [v38 persistentStoreCoordinator];
  v135 = v39;
  if (v45)
  {
    v46 = v45;
    v47 = [v45 persistentStores];

    sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v49 = v135;
    v148 = _swiftEmptySetSingleton;
    if ((sub_1006B08B0(v135, 1) & 1) == 0)
    {
      v50 = [objc_opt_self() localAccountID];
      v51 = [v38 persistentStoreOfAccountWithAccountID:v50];

      v49 = v135;
      if (v51)
      {
        sub_10037A9C0(&v147, v51);
        v49 = v135;
      }
    }

    if ((sub_1006B08B0(v49, 5) & 1) == 0)
    {
      v52 = [objc_opt_self() localInternalAccountID];
      v53 = [v38 persistentStoreOfAccountWithAccountID:v52];

      if (v53)
      {
        sub_10037A9C0(&v147, v53);
      }
    }

    v54 = sub_1001B1268(v48, &v148);
    v48, v55, v56, v57, v58, v59, v60, v61;
    v148, v62, v63, v64, v65, v66, v67, v68;
  }

  else
  {
    v54 = 0;
  }

  v69 = v146;
  v70 = sub_100536D54(v38, v140, v44, v43, v146, &_swiftEmptyArrayStorage, v54);
  v79 = v144;
  v78 = v145;
  v81 = v70;
  v54, v71, v72, v73, v74, v75, v76, v77;
  sub_1001A4F3C(v44, _s9UtilitiesO12SortingStyleOMa);
  (*(v79 + 8))(v69, v78);
  (*(v142 + 8))(v43, v143);
  v82 = v134;
  if (!v134)
  {
    v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v87 = v86;
    v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v95 = v88;
    v84 = v140;
    if (v85 == v89 && v87 == v88)
    {
      v81, v88, v89, v90, v91, v92, v93, v94;
      v87, v96, v97, v98, v99, v100, v101, v102;
    }

    else
    {
      v113 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v87, v114, v115, v116, v117, v118, v119, v120;
      v95, v121, v122, v123, v124, v125, v126, v127;
      if ((v113 & 1) == 0)
      {
        v130 = sub_10003A1B8();
        if (v130)
        {
          v131 = v130;
          v132 = sub_10022F65C(v135, v130);
          v133 = objc_allocWithZone(type metadata accessor for REMSmartList_Codable());
          [v133 initWithStore:v136 storage:v132];
        }

        goto LABEL_19;
      }

      v95 = v81;
    }

    v95, v103, v104, v105, v106, v107, v108, v109;
    v128 = objc_opt_self();
    v129 = String._bridgeToObjectiveC()();
    [v128 invalidParameterErrorWithDescription:v129];

    swift_willThrow();
    return sub_1001A4F3C(v141, _s9UtilitiesO12SortingStyleOMa);
  }

  v83 = sub_10022EB6C(v134);
  v84 = v140;
  v110 = v83;
  v111 = objc_allocWithZone(REMSmartList);
  [v111 initWithStore:v136 storage:v110];
  v112 = objc_allocWithZone(type metadata accessor for REMSmartList_Codable());
  REMSmartList_Codable.init(_:)();

LABEL_19:
  sub_1001A4F3C(v141, _s9UtilitiesO12SortingStyleOMa);
  return v81;
}

uint64_t sub_1001B1D58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001B1DA0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = _s9UtilitiesO12SortingStyleOMa(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001B1E04()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093AE50);
  v1 = sub_100006654(v0, qword_10093AE50);
  if (qword_1009364C8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Void __swiftcall RDStoreControllerMigrator_ResetReminderCountsCache.migrateStoreIfNeeded(_:metadata:)(NSPersistentStore _, NSMutableDictionary metadata)
{
  v3 = v2;
  if (qword_100935B30 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_10093AE50);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "RDStoreControllerMigrator_ResetReminderCountsCache: migrating if needed", v9, 2u);
  }

  *&v15 = 0xD000000000000032;
  *(&v15 + 1) = 0x8000000100798440;
  v10 = [(objc_class *)metadata.super.super.isa __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v10)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (!*(&v16 + 1))
  {
    sub_1001B2134(v17);
LABEL_13:
    v12 = [objc_opt_self() daemonUserDefaults];
    sub_1001B2490(v12, _.super.isa, v3);

    isa = Int._bridgeToObjectiveC()().super.super.isa;
    *&v17[0] = 0xD000000000000032;
    *(&v17[0] + 1) = 0x8000000100798440;
    [(objc_class *)metadata.super.super.isa __swift_setObject:isa forKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    return;
  }

  sub_10014F63C();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v11 = [v14 integerValue];

  if (v11 < 1)
  {
    goto LABEL_13;
  }
}

uint64_t sub_1001B2134(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_100939ED0, &qword_100791B10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1001B2218(void *a1, uint64_t a2)
{
  if (qword_100935B30 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_10093AE50);
  v5 = a1;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    v31[1] = a2;
    *v7 = 136315394;
    swift_getMetatypeMetadata();
    v8 = String.init<A>(describing:)();
    v10 = v9;
    v11 = sub_10000668C(v8, v9, v31);
    v10, v12, v13, v14, v15, v16, v17, v18;
    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    v19 = sub_1003533B0();
    v21 = v20;
    v22 = sub_10000668C(v19, v20, v31);
    v21, v23, v24, v25, v26, v27, v28, v29;
    *(v7 + 14) = v22;
    _os_log_impl(&_mh_execute_header, oslog, v6, "%s: END {store: %{public}s}", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

id RDStoreControllerMigrator_ResetReminderCountsCache.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDStoreControllerMigrator_ResetReminderCountsCache();
  return objc_msgSendSuper2(&v2, "init");
}

id RDStoreControllerMigrator_ResetReminderCountsCache.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for RDStoreControllerMigrator_ResetReminderCountsCache();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_1001B2490(void *a1, void *a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  if (qword_100935B30 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_10093AE50);
  v7 = a2;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v65 = ObjectType;
    *v10 = 136315394;
    swift_getMetatypeMetadata();
    v11 = String.init<A>(describing:)();
    v13 = v12;
    v14 = sub_10000668C(v11, v12, &v64);
    v13, v15, v16, v17, v18, v19, v20, v21;
    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    v22 = sub_1003533B0();
    v24 = v23;
    v25 = sub_10000668C(v22, v23, &v64);
    v24, v26, v27, v28, v29, v30, v31, v32;
    *(v10 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s: BEGIN {store: %{public}s}", v10, 0x16u);
    swift_arrayDestroy();
  }

  v33 = [a1 accountsListCategorizedCountsCache];
  if (v33)
  {
    v34 = v33;
    v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    sub_10001BBA0(v35, v37);
    sub_1001B27E0(a1);
  }

  else
  {
    v38 = v7;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v65 = ObjectType;
      *v41 = 136315394;
      swift_getMetatypeMetadata();
      v42 = String.init<A>(describing:)();
      v44 = v43;
      v45 = sub_10000668C(v42, v43, &v64);
      v44, v46, v47, v48, v49, v50, v51, v52;
      *(v41 + 4) = v45;
      *(v41 + 12) = 2082;
      v53 = sub_1003533B0();
      v55 = v54;
      v56 = sub_10000668C(v53, v54, &v64);
      v55, v57, v58, v59, v60, v61, v62, v63;
      *(v41 + 14) = v56;
      _os_log_impl(&_mh_execute_header, v39, v40, "%s: NO NEED TO RESET CACHE {store: %{public}s}", v41, 0x16u);
      swift_arrayDestroy();
    }
  }

  sub_1001B2218(v7, ObjectType);
}

void sub_1001B27E0(void *a1)
{
  [a1 setAccountsListCategorizedCountsCache:0];
  if (qword_100935B30 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10093AE50);
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v2, "RDStoreControllerMigrator_ResetReminderCountsCache did reset accountsListCategorizedCountsCache", v3, 2u);
  }
}

uint64_t sub_1001B28D8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093AE90);
  v1 = sub_100006654(v0, qword_10093AE90);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1001B29A0()
{
  v0 = [objc_opt_self() sharedConfiguration];
  [v0 iCloudIsOffTimeIntervalSinceLastPrompt];
  v2 = [objc_allocWithZone(REMICloudIsOffDataViewConfigurationsInvocationResult) initWithTimeIntervalSinceLastPrompt:v1];

  return v2;
}

id sub_1001B2A30(uint64_t a1)
{
  v2 = v1;
  v205 = a1;
  v3 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v195 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v197 = &v195 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v196 = &v195 - v13;
  __chkstk_darwin(v14, v15);
  v206 = &v195 - v16;
  *&v19 = __chkstk_darwin(v17, v18).n128_u64[0];
  v21 = &v195 - v20;
  v22 = [v2 accountObjectID];
  v23 = [v22 uuid];

  v24 = v21;
  v207 = v21;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1000F5104(&unk_10093AEB0, qword_100798560);
  inited = swift_initStackObject();
  v208 = xmmword_100791340;
  *(inited + 16) = xmmword_100791340;
  v26 = inited;
  v209 = inited;
  KeyPath = swift_getKeyPath();
  v28 = sub_1003EF7D8(KeyPath, 0);

  *(v26 + 32) = v28;
  v29 = swift_initStackObject();
  *(v29 + 16) = v208;
  v30 = swift_getKeyPath();
  v32 = v8 + 16;
  v31 = *(v8 + 16);
  v33 = v6;
  v31(v6, v24, v7);
  v201 = v8;
  v34 = *(v8 + 56);
  v34(v6, 0, 1, v7);
  v35 = sub_10039239C(v30, v6);

  *(v29 + 32) = v35;
  v36 = swift_getKeyPath();
  v200 = v32;
  v199 = v31;
  v31(v33, v207, v7);
  v204 = v7;
  v34(v33, 0, 1, v7);
  v37 = sub_10039239C(v36, v33);

  *(v29 + 40) = v37;
  v38 = sub_100025060(v29);
  *(v209 + 40) = v38;
  v39 = sub_10000C2B0();
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v40 = swift_initStackObject();
  *(v40 + 16) = xmmword_1007953F0;
  *(v40 + 32) = swift_getKeyPath();
  v212 = &_swiftEmptyArrayStorage;
  v41 = v39;
  sub_100026EF4(0, 1, 0);
  v42 = v212;
  if ((v40 & 0xC000000000000001) != 0)
  {
    v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v33 = *(v40 + 32);
  }

  v43 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v44)
  {
LABEL_42:
    v211[0] = 0;
    v211[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v194._object = 0x80000001007EC120;
    v194._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v194);
    v210 = v33;
    sub_1000F5104(&unk_10093AEC0, &unk_100798638);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v45 = v43;
  v46 = v44;

  v48 = *v42->clientIdentity;
  v47 = *&v42->clientIdentity[8];
  if (v48 >= v47 >> 1)
  {
    sub_100026EF4((v47 > 1), v48 + 1, 1);
    v42 = v212;
  }

  *v42->clientIdentity = v48 + 1;
  v49 = v42 + 16 * v48;
  *(v49 + 4) = v45;
  *(v49 + 5) = v46;
  sub_1001B3930();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  swift_setDeallocating();
  swift_arrayDestroy();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v52 = [ObjCClassFromMetadata ic_resultsMatchingPredicate:v41 sortDescriptors:0 resultType:0 fetchBatchSize:0 propertiesToFetch:isa relationshipKeyPathsForPrefetching:0 context:v205];

  v205 = sub_1000F5104(&unk_10093AF30, &qword_100798648);
  v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (qword_100935B38 != -1)
  {
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  v54 = sub_100006654(v53, qword_10093AE90);
  v55 = v206;
  v56 = v204;
  v199(v206, v207, v204);

  *&v208 = v54;
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.info.getter();
  v33, v59, v60, v61, v62, v63, v64, v65;
  v66 = os_log_type_enabled(v57, v58);
  v195 = v41;
  if (v66)
  {
    v67 = swift_slowAlloc();
    v211[0] = swift_slowAlloc();
    *v67 = 136315394;
    sub_1001B397C();
    v68 = dispatch thunk of CustomStringConvertible.description.getter();
    v69 = v55;
    v71 = v70;
    v198 = *(v201 + 8);
    v198(v69, v56);
    v72 = sub_10000668C(v68, v71, v211);
    v71, v73, v74, v75, v76, v77, v78, v79;
    *(v67 + 4) = v72;
    *(v67 + 12) = 2080;
    v80 = Array.description.getter();
    v82 = v81;
    v83 = sub_10000668C(v80, v81, v211);
    v82, v84, v85, v86, v87, v88, v89, v90;
    *(v67 + 14) = v83;
    _os_log_impl(&_mh_execute_header, v57, v58, "REMICloudIsOffDataViewInvocation_fetchHasAnyDirtyCloudObjectInAccount: {accountUUID: %s, results: %s}", v67, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v198 = *(v201 + 8);
    v198(v55, v56);
  }

  if (v33 >> 62)
  {
    v99 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v99 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v206 = v99;
  if (v99)
  {
    if (v99 >= 1)
    {
      v100 = 0;
      v209 = v33 & 0xC000000000000001;
      v101 = &_swiftEmptyArrayStorage;
      *&v98 = 136315138;
      v202 = v98;
      v203 = v33;
      do
      {
        if (v209)
        {
          v115 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v115 = *(v33 + 8 * v100 + 32);
          swift_unknownObjectRetain();
        }

        objc_opt_self();
        v116 = swift_dynamicCastObjCClass();
        if (v116)
        {
          v117 = [v116 remObjectID];
          v211[0] = v117;
          sub_1000F5104(&unk_10093AF40, &unk_100795790);
          v118 = Optional.descriptionOrNil.getter();
          v120 = v119;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v101 = sub_100365788(0, *v101->clientIdentity + 1, 1, v101, v121, v122, v123, v124);
          }

          v126 = *v101->clientIdentity;
          v125 = *&v101->clientIdentity[8];
          if (v126 >= v125 >> 1)
          {
            v101 = sub_100365788((v125 > 1), v126 + 1, 1, v101, v121, v122, v123, v124);
          }

          swift_unknownObjectRelease();
          *v101->clientIdentity = v126 + 1;
          v127 = v101 + 16 * v126;
          *(v127 + 4) = v118;
          *(v127 + 5) = v120;
        }

        else
        {
          swift_unknownObjectRetain();
          v128 = Logger.logObject.getter();
          v129 = static os_log_type_t.error.getter();
          swift_unknownObjectRelease();
          if (os_log_type_enabled(v128, v129))
          {
            v102 = swift_slowAlloc();
            v103 = swift_slowAlloc();
            v211[0] = v103;
            *v102 = v202;
            v212 = v115;
            swift_unknownObjectRetain();
            v104 = String.init<A>(describing:)();
            v106 = v105;
            v107 = sub_10000668C(v104, v105, v211);
            v106, v108, v109, v110, v111, v112, v113, v114;
            *(v102 + 4) = v107;
            v99 = v206;
            _os_log_impl(&_mh_execute_header, v128, v129, "REMICloudIsOffDataViewInvocation_fetchHasAnyDirtyCloudObjectInAccount found non-REMCDObject: %s", v102, 0xCu);
            sub_10000607C(v103);

            v33 = v203;

            swift_unknownObjectRelease();
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        ++v100;
      }

      while (v99 != v100);
      goto LABEL_32;
    }

    __break(1u);
    goto LABEL_41;
  }

  v101 = &_swiftEmptyArrayStorage;
LABEL_32:
  v33, v91, v92, v93, v94, v95, v96, v97;
  v130 = v196;
  v131 = v204;
  v199(v196, v207, v204);
  v132 = Logger.logObject.getter();
  v133 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v132, v133))
  {
    v134 = v130;
    v135 = swift_slowAlloc();
    v211[0] = swift_slowAlloc();
    *v135 = 136315394;
    sub_1001B397C();
    v136 = dispatch thunk of CustomStringConvertible.description.getter();
    v138 = v137;
    v198(v134, v131);
    v139 = sub_10000668C(v136, v138, v211);
    v138, v140, v141, v142, v143, v144, v145, v146;
    *(v135 + 4) = v139;
    *(v135 + 12) = 2080;

    v147 = Array.description.getter();
    v149 = v148;
    v101, v148, v150, v151, v152, v153, v154, v155;
    v156 = sub_10000668C(v147, v149, v211);
    v149, v157, v158, v159, v160, v161, v162, v163;
    *(v135 + 14) = v156;
    _os_log_impl(&_mh_execute_header, v132, v133, "REMICloudIsOffDataViewInvocation_fetchHasAnyDirtyCloudObjectInAccount {accountUUID: %s, dirtyCloudObjectIDs: %s", v135, 0x16u);
    swift_arrayDestroy();
    v99 = v206;
  }

  else
  {

    v198(v130, v131);
  }

  v164 = v131;
  v165 = v197;
  v199(v197, v207, v131);
  v166 = Logger.logObject.getter();
  v167 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v166, v167))
  {
    LODWORD(v209) = v99 != 0;
    v168 = swift_slowAlloc();
    v169 = swift_slowAlloc();
    v211[0] = v169;
    *v168 = 136315394;
    sub_1001B397C();
    v170 = dispatch thunk of CustomStringConvertible.description.getter();
    v172 = v171;
    v173 = v165;
    v174 = v198;
    v198(v173, v204);
    v175 = sub_10000668C(v170, v172, v211);
    v172, v176, v177, v178, v179, v180, v181, v182;
    *(v168 + 4) = v175;
    *(v168 + 12) = 1024;
    *(v168 + 14) = v209;
    _os_log_impl(&_mh_execute_header, v166, v167, "REMICloudIsOffDataViewInvocation_fetchHasAnyDirtyCloudObjectInAccount {accountUUID: %s, hasDirtyCloudObjects: %{BOOL}d", v168, 0x12u);
    sub_10000607C(v169);
    v99 = v206;

    v164 = v204;
  }

  else
  {

    v183 = v165;
    v174 = v198;
    v198(v183, v131);
  }

  v184 = [objc_allocWithZone(NSNumber) initWithBool:v99 != 0];
  v185 = [objc_allocWithZone(REMICloudIsOffDataViewFetchHasAnyCKDirtyObjectInAccountInvocationResult) initWithHasAnyDirtyCloudObject:v184];

  v174(v207, v164);
  v101, v186, v187, v188, v189, v190, v191, v192;
  return v185;
}

unint64_t sub_1001B3930()
{
  result = qword_100939D80;
  if (!qword_100939D80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100939D80);
  }

  return result;
}

unint64_t sub_1001B397C()
{
  result = qword_10093F2A0;
  if (!qword_10093F2A0)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093F2A0);
  }

  return result;
}

void sub_1001B39D4(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a4@<X8>)
{
  v38 = a2;
  v35 = a4;
  v5 = type metadata accessor for REMRemindersListDataView.Diff();
  v36 = *(v5 - 8);
  __chkstk_darwin(v5, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v40 = &v31 - v11;
  v12 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  __chkstk_darwin(v12 - 8, v13);
  v15 = &v31 - v14;
  v16 = type metadata accessor for REMRemindersListDataView.FlatModel();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16, v18);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v22);
  v24 = &v31 - v23;
  v39 = a1;
  v25 = v41;
  sub_1001B3E0C(a1);
  if (!v25)
  {
    v33 = v5;
    v34 = v16;
    v41 = v17;
    v32 = v8;
    v26 = v36;
    v27 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
    (*(*(v27 - 8) + 56))(v15, 1, 1, v27);
    REMRemindersListDataView.FlatModel.init(reminders:remindersCount:hasIncompleteOrCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
    v28 = [v37 fetchResultTokenToDiffAgainst];
    sub_100534D44(v28, v40);

    v29 = v41;
    v30 = v34;
    (*(v41 + 16))(v20, v24, v34);
    (*(v26 + 16))(v32, v40, v33);
    sub_1001B4148(&qword_10093AF78, &type metadata accessor for REMRemindersListDataView.FlatModel, &protocol conformance descriptor for REMRemindersListDataView.FlatModel);
    sub_1001B4148(&unk_10093AF80, &type metadata accessor for REMRemindersListDataView.FlatModel, &protocol conformance descriptor for REMRemindersListDataView.FlatModel);
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
    (*(v26 + 8))(v40, v33);
    (*(v29 + 8))(v24, v30);
  }
}

uint64_t sub_1001B3DB4(uint64_t a1)
{
  result = sub_1001B4148(&qword_10093AF70, &type metadata accessor for REMRemindersListDataView.TodayNotificationInvocation, &protocol conformance descriptor for REMRemindersListDataView.TodayNotificationInvocation);
  *(a1 + 8) = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1001B3E0C(uint64_t a1)
{
  v23 = a1;
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v1 = *(Subtasks - 8);
  __chkstk_darwin(Subtasks, v2);
  v4 = &Subtasks - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &Subtasks - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s9UtilitiesO12SortingStyleOMa(0);
  __chkstk_darwin(v10, v11);
  v13 = &Subtasks - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s10PredicatesOMa(0);
  __chkstk_darwin(v14, v14);
  v16 = &Subtasks - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v17 = sub_100043AA8();
  sub_1001A4F3C(v16, _s10PredicatesOMa);
  v18 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
  v19 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  (*(*(v19 - 8) + 104))(v13, v18, v19);
  v20 = Subtasks;
  swift_storeEnumTagMultiPayload();
  (*(v6 + 104))(v9, enum case for REMRemindersListDataView.ShowCompleted.off(_:), v5);
  (*(v1 + 104))(v4, enum case for REMRemindersListDataView.FetchSubtasks.off(_:), v20);
  v24 = sub_100536D54(v23, v17, v13, v9, v4, &_swiftEmptyArrayStorage, 0);

  (*(v1 + 8))(v4, v20);
  (*(v6 + 8))(v9, v5);
  sub_1001A4F3C(v13, _s9UtilitiesO12SortingStyleOMa);
  return v24;
}

uint64_t sub_1001B4148(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1001B4190(uint64_t a1)
{
  v1 = a1;
  v41 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v48 = &_swiftEmptyArrayStorage;
    sub_100026EF4(0, v2 & ~(v2 >> 63), 0);
    v43 = &_swiftEmptyArrayStorage;
    if (v41)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v45 = v3;
    v46 = v4;
    v47 = v41 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v39 = v1 + 56;
      v38 = v1 + 64;
      v40 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_38;
        }

        v13 = v45;
        v14 = v47;
        v42 = v46;
        v15 = v1;
        sub_100411D80(v45, v46, v47, v1);
        v17 = v16;
        v18 = [v16 remObjectID];
        if (v18)
        {
          v19 = v18;
          v20 = [v18 description];

          v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v23 = v22;
        }

        else
        {

          v23 = 0xE300000000000000;
          v21 = 7104878;
        }

        v24 = v43;
        v48 = v43;
        v26 = *v43->clientIdentity;
        v25 = *&v43->clientIdentity[8];
        if (v26 >= v25 >> 1)
        {
          sub_100026EF4((v25 > 1), v26 + 1, 1);
          v24 = v48;
        }

        *v24->clientIdentity = v26 + 1;
        v27 = v24 + 16 * v26;
        *(v27 + 4) = v21;
        *(v27 + 5) = v23;
        v43 = v24;
        if (v41)
        {
          if (!v14)
          {
            goto LABEL_43;
          }

          v1 = v15;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v40;
          sub_1000F5104(&qword_10093B310, &qword_100798930);
          v6 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v6(v44, 0);
          if (v5 == v40)
          {
LABEL_35:
            sub_100010E34(v45, v46, v47, v7, v8, v9, v10, v11);
            return;
          }
        }

        else
        {
          if (v14)
          {
            goto LABEL_44;
          }

          if ((v13 & 0x8000000000000000) != 0)
          {
            goto LABEL_39;
          }

          v1 = v15;
          v28 = (1 << *(v15 + 32));
          if (v13 >= v28)
          {
            goto LABEL_39;
          }

          v29 = v13 >> 6;
          v30 = *(v39 + 8 * (v13 >> 6));
          if (((v30 >> v13) & 1) == 0)
          {
            goto LABEL_40;
          }

          if (*(v15 + 36) != v42)
          {
            goto LABEL_41;
          }

          v31 = v30 & (-2 << (v13 & 0x3F));
          if (v31)
          {
            v28 = (__clz(__rbit64(v31)) | v13 & 0x7FFFFFFFFFFFFFC0);
            v2 = v40;
          }

          else
          {
            v32 = v29 << 6;
            v33 = v29 + 1;
            v34 = (v38 + 8 * v29);
            v2 = v40;
            while (v33 < &v28->storeProvider[1] >> 6)
            {
              v36 = *v34++;
              v35 = v36;
              v32 += 64;
              ++v33;
              if (v36)
              {
                sub_100010E34(v13, v42, 0, v7, v8, v9, v10, v11);
                v28 = (__clz(__rbit64(v35)) + v32);
                goto LABEL_34;
              }
            }

            sub_100010E34(v13, v42, 0, v7, v8, v9, v10, v11);
          }

LABEL_34:
          v37 = *(v15 + 36);
          v45 = v28;
          v46 = v37;
          v47 = 0;
          if (v5 == v2)
          {
            goto LABEL_35;
          }
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }
}

uint64_t sub_1001B4530()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093AF90);
  v1 = sub_100006654(v0, qword_10093AF90);
  if (qword_100936498 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975110);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001B45F8()
{
  v1 = v0;
  if (qword_100935B40 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_10093AF90);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "#️⃣ RDSharedInlineTagAutoConvertStoreHandler.Batcher: START ALL", v5, 2u);
  }

  v6 = *(v1 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1001BBB58;
  *(v7 + 24) = v1;
  v10[4] = sub_1000529DC;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10000F160;
  v10[3] = &unk_1008E8838;
  v8 = _Block_copy(v10);

  [v6 performBlockAndWait:v8];
  _Block_release(v8);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    sub_1001B90E4(0x1000000000000044, 0x80000001007EF470);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1001B4830(uint64_t a1)
{
  if (qword_100935B40 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_10093AF90);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "#️⃣ RDSharedInlineTagAutoConvertStoreHandler.Batcher: START .userInitiated", v5, 2u);
  }

  sub_1001B4F90(1);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "#️⃣ RDSharedInlineTagAutoConvertStoreHandler.Batcher: FINISH .userInitiated", v8, 2u);
  }

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "#️⃣ RDSharedInlineTagAutoConvertStoreHandler.Batcher: START .sharedToMe", v11, 2u);
  }

  sub_1001B4F90(0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "#️⃣ RDSharedInlineTagAutoConvertStoreHandler.Batcher: FINISH .sharedToMe", v14, 2u);
  }

  v15 = *(a1 + 16);
  if (![v15 hasChanges])
  {
    goto LABEL_14;
  }

  v16 = (a1 + OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler7Batcher_metrics);
  swift_beginAccess();
  sub_1001B4C84(v15);
  swift_endAccess();
  v37[0] = 0;
  if ([v15 save:v37])
  {
    v17 = v37[0];
LABEL_14:
    v18 = OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler7Batcher_metrics;
    swift_beginAccess();
    *(a1 + v18) = 0;
  }

  v19 = v37[0];
  v20 = _convertNSErrorToError(_:)();

  swift_willThrow();
  swift_errorRetain();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v37[0] = v24;
    *v23 = 136446210;
    swift_getErrorValue();
    v25 = Error.rem_errorDescription.getter();
    v27 = v26;
    v28 = sub_10000668C(v25, v26, v37);
    v27, v29, v30, v31, v32, v33, v34, v35;
    *(v23 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "#️⃣ RDSharedInlineTagAutoConvertStoreHandler.Batcher: Error saving at end of consumeJournalUpdates {error: %{public}s}", v23, 0xCu);
    sub_10000607C(v24);
  }

  v16[6] = 0;
  v16[7] = 0;
  v16[8] = 0;
  *v16 = v20;
  swift_errorRetain();
}

void sub_1001B4C84(void *a1)
{
  v2 = v1;
  v4 = [a1 insertedObjects];
  sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
  sub_10000CE28(&qword_10093B350, &qword_1009388B0, NSManagedObject_ptr);
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = [a1 updatedObjects];
  v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1007252C4(v7, v5);
  v9 = v8;
  v10 = [a1 deletedObjects];
  v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1007252C4(v11, v9);
  v13 = v12;
  type metadata accessor for REMCKSharedEntitySyncActivity();
  sub_1000F5104(&qword_10093B358, &qword_1007989A8);
  sub_10000CB48(&unk_10093B360, &qword_10093B358, &qword_1007989A8, &protocol conformance descriptor for Set<A>);
  v14 = Sequence.elements<A>(ofExactType:)();
  if (v14 >> 62)
  {
    v59 = v14;
    v22 = _CocoaArrayWrapper.endIndex.getter();
    v14 = v59;
  }

  else
  {
    v22 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14, v15, v16, v17, v18, v19, v20, v21;
  v2[6] = v22;
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v23 = Sequence.elements<A>(ofExactType:)();
  v13, v24, v25, v26, v27, v28, v29, v30;
  v38 = v23;
  if (v23 >> 62)
  {
    v60 = v23;
    v39 = _CocoaArrayWrapper.endIndex.getter();
    v38 = v60;
  }

  else
  {
    v39 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v38, v31, v32, v33, v34, v35, v36, v37;
  v2[7] = v39;
  v40 = [a1 insertedObjects];
  v41 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
  v42 = Sequence.elements<A>(ofExactType:)();
  v41, v43, v44, v45, v46, v47, v48, v49;
  v57 = v42;
  if (v42 >> 62)
  {
    v61 = v42;
    v58 = _CocoaArrayWrapper.endIndex.getter();
    v57 = v61;
  }

  else
  {
    v58 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v57, v50, v51, v52, v53, v54, v55, v56;
  v2[8] = v58;
}

double sub_1001B4F90(char a1)
{
  v2 = v1;
  v3 = a1;
  if (a1)
  {
    v4 = &off_1008DEF80;
  }

  else
  {
    v4 = &off_1008DEF58;
  }

  v5 = sub_1001B535C(v4, 100);
  v4, v6, v7, v8, v9, v10, v11, v12;
  v48[0] = v5;
  sub_1000F5104(&qword_10093B330, &qword_100798980);
  sub_10000CB48(&qword_10093B338, &qword_10093B330, &qword_100798980, &protocol conformance descriptor for [A]);
  v13 = BidirectionalCollection<>.slices(by:)();
  v5, v14, v15, v16, v17, v18, v19, v20;
  v28 = *(v13 + 16);
  if (v28)
  {
    v41 = *(v2 + 16);
    v29 = (v13 + 56);
    v42 = v3;
    do
    {
      v37 = *(v29 - 1);
      v38 = *v29;
      v43 = *(v29 - 3);
      swift_unknownObjectRetain();
      v44 = objc_autoreleasePoolPush();
      if (v3)
      {
        v30 = type metadata accessor for RDUserInitiatedHashtagLabelApprovalTagAutoConvertRunner();
        v31 = swift_allocObject();
        *(v31 + 24) = 1;
        v32 = &off_1008FB508;
      }

      else
      {
        v30 = type metadata accessor for RDNewlySharedToMeTagAutoConvertRunner();
        v31 = swift_allocObject();
        v32 = &off_1008F6D10;
      }

      *(v31 + 16) = v41;
      v48[3] = v30;
      v48[4] = v32;
      v48[0] = v31;
      sub_10000F61C(v48, v30);
      v45 = v43;
      v46 = v37;
      v47 = v38;
      v33 = v32[1];
      v34 = v41;
      v35 = sub_1000F5104(&qword_10093B340, &qword_100798988);
      v36 = sub_10000CB48(&qword_10093B348, &qword_10093B340, &qword_100798988, &protocol conformance descriptor for ArraySlice<A>);
      v33(&v45, v35, v36);
      sub_10000607C(v48);
      objc_autoreleasePoolPop(v44);
      swift_unknownObjectRelease();
      v29 += 4;
      --v28;
      v3 = v42;
    }

    while (v28);
    v39 = v13;
  }

  else
  {
    v39 = v13;
  }

  v39, v21, v22, v23, v24, v25, v26, v27;
  return result;
}

uint64_t sub_1001B535C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100016ED8(0, v3, 0);
    v5 = (a1 + 32);
    v6 = *_swiftEmptyArrayStorage.clientIdentity;
    do
    {
      v8 = *v5++;
      v7 = v8;
      v9 = *&_swiftEmptyArrayStorage.clientIdentity[8];
      if (v6 >= v9 >> 1)
      {
        sub_100016ED8((v9 > 1), v6 + 1, 1);
      }

      v10 = word_100798AFE[v7];
      *_swiftEmptyArrayStorage.clientIdentity = v6 + 1;
      *&_swiftEmptyArrayStorage.clientIdentity[2 * v6++ + 16] = v10;
      --v3;
    }

    while (v3);
  }

  KeyPath = swift_getKeyPath();
  v12 = sub_1003EF734(KeyPath, &_swiftEmptyArrayStorage);

  type metadata accessor for REMCKSharedEntitySyncActivity();
  v13 = [objc_allocWithZone(NSFetchRequest) init];
  v14 = [swift_getObjCClassFromMetadata() entity];
  [v13 setEntity:v14];

  [v13 setAffectedStores:0];
  [v13 setPredicate:v12];
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1007953F0;
  v16 = objc_allocWithZone(NSSortDescriptor);
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 initWithKey:v17 ascending:1];

  *(v15 + 32) = v18;
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v15, v20, v21, v22, v23, v24, v25, v26;
  [v13 setSortDescriptors:isa];

  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100791340;
  strcpy((v27 + 32), "ckIdentifier");
  *(v27 + 45) = 0;
  *(v27 + 46) = -5120;
  *(v27 + 88) = &type metadata for String;
  *(v27 + 56) = &type metadata for String;
  *(v27 + 64) = 0xD000000000000014;
  *(v27 + 72) = 0x8000000100798920;
  v28 = Array._bridgeToObjectiveC()().super.isa;
  v27, v29, v30, v31, v32, v33, v34, v35;
  [v13 setPropertiesToFetch:v28];

  [v13 setFetchBatchSize:a2];
  v36 = NSManagedObjectContext.fetch<A>(_:)();

  return v36;
}

id sub_1001B56AC@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 activityTypeRawValue];
  *a2 = result;
  return result;
}

uint64_t sub_1001B56F4()
{
  sub_1001BBBD0(v0 + OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler7Batcher_metrics, type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.Metrics);

  return swift_deallocClassInstance();
}

uint64_t sub_1001B5774()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1001B5940();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = &_swiftEmptyArrayStorage;
  v5 = [v3 length];
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v0;
  v6[4] = v4;
  v6[5] = ObjectType;
  v20[4] = sub_1001BBAEC;
  v20[5] = v6;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_1001B64AC;
  v20[3] = &unk_1008E87E8;
  v7 = _Block_copy(v20);
  v8 = v3;
  v9 = v0;

  [v8 rem_enumerateHashtagInRange:0 options:v5 usingBlock:{0, v7}];
  _Block_release(v7);
  swift_beginAccess();
  v10 = *(v4 + 16);

  v11 = sub_1001B653C(v10, *&v9[OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_reminder]);

  v10, v12, v13, v14, v15, v16, v17, v18;
  return v11;
}

id sub_1001B5940()
{
  v1 = *(v0 + OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_reminder);
  result = [v1 account];
  if (result)
  {
    v3 = result;
    v4 = [result remObjectID];

    if (!v4)
    {
      return 0;
    }

    v5 = [v1 remObjectID];
    if (!v5)
    {
LABEL_12:

      return 0;
    }

    v6 = v5;
    v7 = *(v0 + OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_field);
    v8 = objc_allocWithZone(REMReplicaIDSource);
    v9 = v6;
    v4 = v4;
    v10 = String._bridgeToObjectiveC()();
    0xED0000746E656D75, v11, v12, v13, v14, v15, v16, v17;
    v18 = [v8 initWithAccountID:v4 objectID:v9 property:v10];

    if (v7)
    {
      v19 = [v1 notesDocument];
      if (v19)
      {
LABEL_6:
        v20 = v19;
        v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        v24 = v9;
        v25 = v18;
        v26.super.isa = Data._bridgeToObjectiveC()().super.isa;
        sub_100031A14(v21, v23);
LABEL_9:
        v29 = String._bridgeToObjectiveC()();
        0xED0000746E656D75, v30, v31, v32, v33, v34, v35, v36;
        v37 = [objc_opt_self() documentFromSerializedData:v26.super.isa replicaIDSource:v18 forKey:v29 ofObjectID:v9];

        if (v37)
        {
          v38 = v37;
          v39 = [v38 attributedString];

          return v39;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v19 = [v1 titleDocument];
      if (v19)
      {
        goto LABEL_6;
      }
    }

    v27 = v9;
    v28 = v18;
    v26.super.isa = 0;
    goto LABEL_9;
  }

  return result;
}

double sub_1001B5BC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_1000F5104(&qword_10093B318, &qword_100798938);
  __chkstk_darwin(v13 - 8, v14);
  v16 = &v99 - v15;
  v17 = type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.CandidateHashtag(0);
  v104 = *(v17 - 8);
  __chkstk_darwin(v17, v18);
  v102 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v21);
  v23 = &v99 - v22;
  v24 = sub_1000F5104(&unk_10093F420, &unk_100797AE0);
  *&result = __chkstk_darwin(v24 - 8, v25).n128_u64[0];
  v28 = &v99 - v27;
  if (a1)
  {
    v100 = a7;
    v101 = v23;
    v103 = a1;
    v29 = [a5 string];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33 = sub_1001BB6DC(v30, v32, a2, a3);
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v32, v34, v36, v38, v40, v41, v42, v43;
    if (v39)
    {
      v44 = *(a6 + OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_onlySpecificCanonicalName + 8);
      v45 = v33;
      if (v44)
      {
        v99 = *(a6 + OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_onlySpecificCanonicalName);
        v105[0] = v33;
        v105[1] = v35;
        v105[2] = v37;
        v105[3] = v39;
        static Locale.current.getter();
        v46 = type metadata accessor for Locale();
        (*(*(v46 - 8) + 56))(v28, 0, 1, v46);
        sub_1001BBAF8();
        v47 = StringProtocol.foldedStringForWriting(locale:)();
        v49 = v48;
        sub_1000050A4(v28, &unk_10093F420, &unk_100797AE0);
        if (v47 == v99 && v44 == v49)
        {
          v49, v50, v99, v51, v52, v53, v54, v55;
        }

        else
        {
          v57 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v49, v58, v59, v60, v61, v62, v63, v64;
          if ((v57 & 1) == 0)
          {

            v39, v92, v93, v94, v95, v96, v97, v98;
            return result;
          }
        }
      }

      v65 = v103;
      sub_1001B61CC(v65, v45, v35, v37, v39, v16);
      v66 = v104;
      if ((*(v104 + 48))(v16, 1, v17) == 1)
      {
        sub_1000050A4(v16, &qword_10093B318, &qword_100798938);
        if (qword_100935B40 != -1)
        {
          swift_once();
        }

        v67 = type metadata accessor for Logger();
        sub_100006654(v67, qword_10093AF90);
        v68 = v65;
        v69 = Logger.logObject.getter();
        v70 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v105[0] = v72;
          *v71 = 136446210;
          v73 = [v68 objectIdentifier];
          v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v76 = v75;

          v77 = sub_10000668C(v74, v76, v105);
          v76, v78, v79, v80, v81, v82, v83, v84;
          *(v71 + 4) = v77;
          _os_log_impl(&_mh_execute_header, v69, v70, "#️⃣ RDSharedInlineTagAutoConvertHandler.Runner: REMTTHashtag objectIdentifier[%{public}s] does not represent a valid UUID", v71, 0xCu);
          sub_10000607C(v72);
        }

        else
        {
        }
      }

      else
      {
        v85 = v101;
        sub_1001BBA14(v16, v101, type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.CandidateHashtag);
        v86 = v102;
        sub_1001BB9B0(v85, v102);
        v87 = v100;
        swift_beginAccess();
        v88 = *(v87 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v87 + 16) = v88;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v88 = sub_100366784(0, *v88->clientIdentity + 1, 1, v88);
          *(v87 + 16) = v88;
        }

        v91 = *v88->clientIdentity;
        v90 = *&v88->clientIdentity[8];
        if (v91 >= v90 >> 1)
        {
          v88 = sub_100366784((v90 > 1), v91 + 1, 1, v88);
        }

        *v88->clientIdentity = v91 + 1;
        sub_1001BBA14(v86, v88 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v91, type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.CandidateHashtag);
        *(v87 + 16) = v88;
        swift_endAccess();

        sub_1001BBBD0(v101, type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.CandidateHashtag);
      }
    }

    else
    {
      v56 = v103;
    }
  }

  return result;
}

uint64_t sub_1001B61CC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _TtC7remindd19RDXPCStorePerformer *a5@<X4>, uint64_t a6@<X8>)
{
  v60 = a5;
  v61 = a6;
  v57 = a3;
  v58 = a4;
  v56 = a2;
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v56 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.CandidateHashtag(0);
  v16 = *(v59 - 8);
  *&v18 = __chkstk_darwin(v59, v17).n128_u64[0];
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1;
  v22 = [a1 objectIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  UUID.init(uuidString:)();
  v24, v25, v26, v27, v28, v29, v30, v31;
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {

    v60, v32, v33, v34, v35, v36, v37, v38;
    sub_1000050A4(v10, &unk_100939D90, "8\n\r");
    v39 = 1;
    v40 = v61;
    v41 = v59;
  }

  else
  {
    v42 = *(v12 + 32);
    v42(v15, v10, v11);
    v43 = v59;
    v42(&v20[*(v59 + 24)], v15, v11);
    *v20 = v21;
    v44 = v60;
    v45 = static String._fromSubstring(_:)();
    v47 = v46;
    v44, v46, v48, v49, v50, v51, v52, v53;
    *(v20 + 1) = v45;
    *(v20 + 2) = v47;
    v54 = v61;
    sub_1001BBA14(v20, v61, type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.CandidateHashtag);
    v39 = 0;
    v40 = v54;
    v41 = v43;
  }

  return (*(v16 + 56))(v40, v39, 1, v41);
}

void sub_1001B64AC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);

  v10 = a2;
  v9(a2, a3, a4, a5);
}

uint64_t sub_1001B653C(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for UUID();
  v238 = *(v5 - 8);
  __chkstk_darwin(v5, v6);
  v8 = &v226 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.CandidateHashtag(0);
  v240 = *(v9 - 8);
  __chkstk_darwin(v9, v10);
  v12 = &v226 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = __chkstk_darwin(v13, v14).n128_u64[0];
  v239 = &v226 - v16;
  v17 = [a2 account];
  if (!v17)
  {
    return 0xD000000000000010;
  }

  v18 = v17;
  v19 = [v17 remObjectID];

  v241 = v19;
  if (!v19)
  {
    return 0xD000000000000010;
  }

  v20 = [a2 remObjectID];
  if (!v20)
  {

    return 0x7265646E696D6572;
  }

  v21 = v20;
  v22 = sub_1001B8BA0();
  sub_1001B7A4C(a1, v22);
  v24 = v23;
  v22, v25, v26, v27, v28, v29, v30, v31;
  v236 = v9;
  v237 = v21;
  v228 = v2;
  v226 = a2;
  v227 = 0;
  v34 = (v24 + 64);
  v35 = 1 << *(v24 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v24 + 64);
  v38 = (v35 + 63) >> 6;
  v234 = (v238 + 8);
  v235 = (v238 + 16);

  v40 = 0;
  v41 = _swiftEmptyDictionarySingleton;
  v42 = v24;
  v232 = v8;
  v233 = v5;
  v230 = (v24 + 64);
  v231 = v24;
  v229 = v38;
LABEL_13:
  if (v37)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v45 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    if (v45 >= v38)
    {
      break;
    }

    v37 = *(&v34->super.isa + v45);
    ++v40;
    if (v37)
    {
      v40 = v45;
LABEL_18:
      v238 = v41;
      v46 = v239;
      sub_1001BB9B0(*&v42->clientIdentity[40] + v240[9] * (__clz(__rbit64(v37)) | (v40 << 6)), v239);
      sub_1001BBA14(v46, v12, type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.CandidateHashtag);
      (*v235)(v8, &v12[*(v236 + 6)], v5);
      sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
      v47 = [swift_getObjCClassFromMetadata() cdEntityName];
      if (!v47)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v49 = v48;
        v47 = String._bridgeToObjectiveC()();
        v49, v50, v51, v52, v53, v54, v55, v56;
      }

      v57 = objc_allocWithZone(REMObjectID);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v59 = [v57 initWithUUID:isa entityName:v47];

      (*v234)(v8, v5);
      v60 = objc_allocWithZone(REMHashtag);
      v61 = v59;
      v62 = v241;
      v63 = v237;
      v64 = String._bridgeToObjectiveC()();
      v65 = [v60 initWithObjectID:v61 accountID:v62 reminderID:v63 type:1 name:v64];

      v34 = v238;
      if ((v238 & 0xC000000000000001) != 0)
      {
        if (v238 < 0)
        {
          v66 = v238;
        }

        else
        {
          v66 = (v238 & 0xFFFFFFFFFFFFFF8);
        }

        v67 = v65;
        v68 = __CocoaDictionary.count.getter();
        v39 = v68 + 1;
        if (__OFADD__(v68, 1))
        {
          goto LABEL_86;
        }

        v34 = sub_10021D254(v66, v39);
      }

      else
      {
        v69 = v65;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v244 = v34;
      v71 = sub_10002B924(v61);
      v72 = *v34->clientIdentity;
      v73 = (v39 & 1) == 0;
      v74 = v72 + v73;
      if (__OFADD__(v72, v73))
      {
        goto LABEL_84;
      }

      v75 = v39;
      if (*&v34->clientIdentity[8] >= v74)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v41 = v244;
          if ((v39 & 1) == 0)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v34 = &v244;
          sub_100374A30();
          v41 = v244;
          if ((v75 & 1) == 0)
          {
            goto LABEL_34;
          }
        }

LABEL_11:
        v43 = *&v41->clientIdentity[40];
        v44 = *(v43 + 8 * v71);
        *(v43 + 8 * v71) = v65;

        goto LABEL_12;
      }

      sub_10036CE90(v74, isUniquelyReferenced_nonNull_native);
      v34 = v244;
      v76 = sub_10002B924(v61);
      if ((v75 & 1) != (v77 & 1))
      {
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v71 = v76;
      v41 = v244;
      if (v75)
      {
        goto LABEL_11;
      }

LABEL_34:
      *&v41->storeProvider[8 * (v71 >> 6) + 2] |= 1 << v71;
      *(*&v41->clientIdentity[32] + 8 * v71) = v61;
      *(*&v41->clientIdentity[40] + 8 * v71) = v65;

      v78 = *v41->clientIdentity;
      v79 = __OFADD__(v78, 1);
      v80 = v78 + 1;
      if (v79)
      {
        goto LABEL_87;
      }

      *v41->clientIdentity = v80;
LABEL_12:
      v8 = v232;
      v5 = v233;
      v34 = v230;
      v42 = v231;
      v38 = v229;
      v37 &= v37 - 1;
      sub_1001BBBD0(v12, type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.CandidateHashtag);
      goto LABEL_13;
    }
  }

  type metadata accessor for REMHashtagCDIngestor();
  v81 = swift_allocObject();
  v82 = v241;
  v83 = v237;
  *(v81 + 16) = v241;
  *(v81 + 24) = v83;
  v84 = v82;
  v37 = v83;
  v32 = v227;
  sub_1001B7414(v41, v81);
  if (v32)
  {
    v41, v85, v86, v87, v88, v89, v90, v91;

    v42, v92, v93, v94, v95, v96, v97, v98;

    return v32;
  }

  v238 = v41;
  v99 = *v42->clientIdentity;
  if (v99)
  {
    v100 = sub_100018D7C(*v42->clientIdentity, 0);
    v101 = v42;
    v42 = v100;
    v102 = sub_100279888(&v244, &v100->clientIdentity[16], v99, v101);
    sub_10001B860(v244);
    if (v102 == v99)
    {
      goto LABEL_44;
    }

    __break(1u);
  }

  v42, v85, v86, v87, v88, v89, v90, v91;
  v42 = &_swiftEmptyArrayStorage;
LABEL_44:
  v103 = v238;

  v105 = sub_100277FAC(v104);
  v103, v106, v107, v108, v109, v110, v111, v112;
  sub_1001B76C4(v42, v105);

  v113 = sub_1001B8BA0();
  v34 = v113;
  v241 = v84;
  if ((v113 & 0xC000000000000001) == 0)
  {
    v139 = *(v113 + 32);
    v237 = ((1 << v139) + 63) >> 6;
    v39 = 8 * v237;
    if ((v139 & 0x3Fu) > 0xD)
    {
      goto LABEL_89;
    }

LABEL_66:
    v236 = &v226;
    __chkstk_darwin(v113, v39);
    v239 = &v226 - ((v140 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v239, v140);
    v240 = 0;
    v141 = 0;
    v142 = 1 << v34->clientIdentity[16];
    v143 = -1;
    if (v142 < 64)
    {
      v143 = ~(-1 << v142);
    }

    v144 = v143 & *&v34->clientIdentity[40];
    v145 = (v142 + 63) >> 6;
    do
    {
      while (1)
      {
        if (!v144)
        {
          v147 = v141;
          while (1)
          {
            v141 = v147 + 1;
            if (__OFADD__(v147, 1))
            {
              goto LABEL_88;
            }

            if (v141 >= v145)
            {
              goto LABEL_81;
            }

            v148 = *&v34->clientIdentity[8 * v141 + 40];
            ++v147;
            if (v148)
            {
              v146 = __clz(__rbit64(v148));
              v144 = (v148 - 1) & v148;
              goto LABEL_76;
            }
          }
        }

        v146 = __clz(__rbit64(v144));
        v144 &= v144 - 1;
LABEL_76:
        v149 = v146 | (v141 << 6);
        v150 = *(*&v34->clientIdentity[32] + 8 * v149);
        v151 = [v150 hashtagLabel];

        if (!v151)
        {
          break;
        }
      }

      *&v239[(v149 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v149;
      v79 = __OFADD__(v240, 1);
      v240 = (v240 + 1);
    }

    while (!v79);
    __break(1u);
LABEL_81:
    v114 = sub_1001A112C(v239, v237, v240, v34);
    v138 = v114 & 0xC000000000000001;
    if ((v114 & 0xC000000000000001) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_82;
  }

  v114 = _swiftEmptySetSingleton;
  v244 = _swiftEmptySetSingleton;
  __CocoaSet.makeIterator()();
  v115 = __CocoaSet.Iterator.next()();
  if (!v115)
  {
LABEL_63:

    v138 = v114 & 0xC000000000000001;
    if ((v114 & 0xC000000000000001) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_82;
  }

  v116 = v115;
  sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
  v117 = v116;
  while (1)
  {
    v242 = v117;
    swift_dynamicCast();
    v118 = [v243[0] hashtagLabel];
    if (!v118)
    {
      break;
    }

LABEL_48:
    v117 = __CocoaSet.Iterator.next()();
    if (!v117)
    {
      goto LABEL_63;
    }
  }

  v119 = v243[0];
  v120 = *(v114 + 16);
  if (*(v114 + 24) <= v120)
  {
    sub_100380E64(v120 + 1);
  }

  v114 = v244;
  v34 = v119;
  v121 = NSObject._rawHashValue(seed:)(*&v244->clientIdentity[24]);
  v122 = v114 + 56;
  v123 = -1 << *(v114 + 32);
  v124 = v121 & ~v123;
  v125 = v124 >> 6;
  if (((-1 << v124) & ~*(v114 + 56 + 8 * (v124 >> 6))) != 0)
  {
    v126 = __clz(__rbit64((-1 << v124) & ~*(v114 + 56 + 8 * (v124 >> 6)))) | v124 & 0x7FFFFFFFFFFFFFC0;
LABEL_62:
    *(v122 + ((v126 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v126;
    *(*(v114 + 48) + 8 * v126) = v119;
    ++*(v114 + 16);
    goto LABEL_48;
  }

  v127 = 0;
  v128 = (63 - v123) >> 6;
  while (++v125 != v128 || (v127 & 1) == 0)
  {
    v129 = v125 == v128;
    if (v125 == v128)
    {
      v125 = 0;
    }

    v127 |= v129;
    v130 = *(v122 + 8 * v125);
    if (v130 != -1)
    {
      v126 = __clz(__rbit64(~v130)) + (v125 << 6);
      goto LABEL_62;
    }
  }

LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  v153 = v237;
  v154 = v34;
  v155 = v39;

  v156 = v155;
  if (swift_stdlib_isStackAllocationSafe())
  {
    v34 = v154;
    v154, v157, v158, v159, v160, v161, v162, v163;
    v39 = v156;
    goto LABEL_66;
  }

  v164 = swift_slowAlloc();
  v165 = v154;
  v114 = sub_1001BAAE8(v164, v153, v154, sub_1001B73C4, 0);
  v165, v166, v167, v168, v169, v170, v171, v172;

  v138 = v114 & 0xC000000000000001;
  if ((v114 & 0xC000000000000001) != 0)
  {
LABEL_82:
    v152 = __CocoaSet.count.getter();
    goto LABEL_93;
  }

LABEL_92:
  v152 = *(v114 + 16);
LABEL_93:
  if (!v152)
  {
    v238, v131, v132, v133, v134, v135, v136, v137;

    goto LABEL_106;
  }

  if (qword_100935B40 != -1)
  {
    swift_once();
  }

  v173 = type metadata accessor for Logger();
  sub_100006654(v173, qword_10093AF90);
  swift_retain_n();
  v174 = v226;
  v175 = Logger.logObject.getter();
  v176 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v175, v176))
  {
    v184 = swift_slowAlloc();
    v240 = swift_slowAlloc();
    v244 = v240;
    *v184 = 136446722;
    v185 = [v174 remObjectID];
    if (v185)
    {
      v186 = v185;
      v187 = [v185 description];

      v188 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v190 = v189;
    }

    else
    {
      v190 = 0xE300000000000000;
      v188 = 7104878;
    }

    v191 = sub_10000668C(v188, v190, &v244);
    v190, v192, v193, v194, v195, v196, v197, v198;
    *(v184 + 4) = v191;
    *(v184 + 12) = 2048;
    if (v138)
    {
      v199 = __CocoaSet.count.getter();
    }

    else
    {
      v199 = *(v114 + 16);
    }

    *(v184 + 14) = v199;

    *(v184 + 22) = 2082;
    sub_1001B4190(v114);
    v201 = v200;

    v243[0] = v201;
    sub_1000F5104(&unk_10093B300, &unk_100797780);
    sub_10000CB48(&qword_10093D0F0, &unk_10093B300, &unk_100797780, &protocol conformance descriptor for [A]);
    v202 = BidirectionalCollection<>.joined(separator:)();
    v204 = v203;
    v201, v203, v205, v206, v207, v208, v209, v210;
    v211 = sub_10000668C(v202, v204, &v244);
    v204, v212, v213, v214, v215, v216, v217, v218;
    *(v184 + 24) = v211;
    _os_log_impl(&_mh_execute_header, v175, v176, "#️⃣ RDSharedInlineTagAutoConvertHandler.Runner: Reminder[%{public}s] is missing %ld HashtagLabels[%{public}s]", v184, 0x20u);
    swift_arrayDestroy();

    v238, v219, v220, v221, v222, v223, v224, v225;

LABEL_106:
  }

  else
  {
    v238, v177, v178, v179, v180, v181, v182, v183;
  }

  return 0;
}

BOOL sub_1001B73C4(id *a1)
{
  v1 = [*a1 hashtagLabel];
  v2 = v1;
  if (v1)
  {
  }

  return v2 == 0;
}

uint64_t sub_1001B7414(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1000F5104(&qword_10093B2E8, "ʽ\v");
  sub_10000CB48(&unk_10093B2F0, &qword_10093B2E8, "ʽ\v", &protocol conformance descriptor for [A]);
  v6 = Sequence.mapToSet<A>(_:)();
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_1001BB0F0(v7, v6);
    if (!v3)
    {
      v16 = v8;
      v6, v9, v10, v11, v12, v13, v14, v15;
LABEL_9:
      v6, v17, v18, v19, v20, v21, v22, v23;
      v25 = *(v4 + OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_persistentStoreLookup);
      v26 = *(v4 + OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_storeObjectContext);
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;
      type metadata accessor for CDIngestionCoordinator();
      v30 = swift_allocObject();
      *(v30 + 16) = 0;
      *(v30 + 112) = &_swiftEmptyArrayStorage;
      *(v30 + 120) = &_swiftEmptyArrayStorage;
      *(v30 + 128) = &_swiftEmptyArrayStorage;
      *(v30 + 136) = &_swiftEmptyArrayStorage;
      *(v30 + 72) = v16;
      *(v30 + 80) = v25;
      *(v30 + 88) = v26;
      *(v30 + 24) = v27;
      *(v30 + 32) = v29;
      *(v30 + 48) = 0;
      *(v30 + 56) = 0;
      *(v30 + 40) = 0;
      *(v30 + 62) = 0;
      swift_unknownObjectRetain();
      v31 = v26;
      *(v30 + 144) = sub_10038F67C(&_swiftEmptyArrayStorage);
      *(v30 + 96) = 0;
      *(v30 + 104) = 1;

      v33 = sub_100277FAC(v32);
      a1, v34, v35, v36, v37, v38, v39, v40;
      sub_1005F9680(v33, a2);

      sub_1003DA48C();
    }

    v6, v9, v10, v11, v12, v13, v14, v15;
  }

  else
  {
    sub_1001BAF9C(a1, v6);
    if (!v3)
    {
      v16 = v24;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

_BYTE *sub_1001B764C@<X0>(_BYTE *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x44497463656A626FLL;
  v4 = 1701667182;
  if (*result != 2)
  {
    v4 = 1701869940;
  }

  if (*result)
  {
    v3 = 0x6E6F697461657263;
    v2 = 0xEC00000065746144;
  }

  if (*result <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*result > 1u)
  {
    v2 = 0xE400000000000000;
  }

  *a2 = v5;
  a2[1] = v2;
  return result;
}

void sub_1001B76C4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  KeyPath = a2;
  if (a2 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); !i; i = _CocoaArrayWrapper.endIndex.getter())
  {
LABEL_13:
    sub_1005ED9D0(&_swiftEmptyArrayStorage, 0, 1, 0, 0);
    v11 = v10;
    &_swiftEmptyArrayStorage, v12, v13, v14, v15, v16, v17, v18;
    if (v3)
    {
      return;
    }

    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    sub_1000F5104(&qword_10093B2C8, &qword_100798908);
    sub_10000CB48(&qword_10093B2D0, &qword_10093B2C8, &qword_100798908, &protocol conformance descriptor for [A]);
    v19 = Sequence.compactIndexBy<A, B>(key:value:)();

    v20 = sub_1001BB358(v11);
    v11, v21, v22, v23, v24, v25, v26, v27;
    v28 = 0;
    v29 = v19 + 64;
    v64 = v19;
    v30 = 1 << *(v19 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & *(v19 + 64);
    v33 = (v30 + 63) >> 6;
    while (v32)
    {
      v34 = v32;
LABEL_24:
      v32 = (v34 - 1) & v34;
      if (*v20->clientIdentity)
      {
        v65 = (v34 - 1) & v34;
        v36 = __clz(__rbit64(v34)) | (v28 << 6);
        v37 = *(*(v64 + 56) + 8 * v36);
        v38 = (*(v64 + 48) + 16 * v36);
        v39 = *v38;
        v40 = v38[1];

        v41 = v37;
        KeyPath = sub_100005F4C(v39, v40);
        v43 = v42;
        v40, v42, v44, v45, v46, v47, v48, v49;
        if (v43)
        {
          KeyPath = *(*&v20->clientIdentity[40] + 8 * KeyPath);

          sub_10020C4A4(v41, KeyPath, 0);
          KeyPath, v50, v51, v52, v53, v54, v55, v56;
        }

        v32 = v65;
      }
    }

    while (1)
    {
      v35 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v35 >= v33)
      {

        v20, v57, v58, v59, v60, v61, v62, v63;
        return;
      }

      v34 = *(v29 + 8 * v35);
      ++v28;
      if (v34)
      {
        v28 = v35;
        goto LABEL_24;
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  specialized ContiguousArray.reserveCapacity(_:)();
  if ((i & 0x8000000000000000) == 0)
  {
    v6 = 0;
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if ((KeyPath & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v8 = *(KeyPath + 8 * v6 + 32);
      }

      v9 = v8;
      sub_1005E5328([v8 remObjectID]);

      if (v3)
      {

        return;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v6;
      if (v7 == i)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  __break(1u);
}

void sub_1001B7A4C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000F5104(&unk_10093F420, &unk_100797AE0);
  __chkstk_darwin(v5 - 8, v6);
  v168 = &v162 - v7;
  v8 = sub_1000F5104(&qword_10093B290, &qword_100798890);
  v165 = *(v8 - 8);
  v166 = v8;
  __chkstk_darwin(v8, v9);
  v164 = (&v162 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11, v12);
  v167 = &v162 - v13;
  v14 = type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.CandidateHashtag(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14 - 8, v16);
  v170 = &v162 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v19);
  v173 = &v162 - v20;
  __chkstk_darwin(v21, v22);
  v24 = (&v162 - v23);
  v175[0] = a2;
  sub_1000F5104(&qword_10093B298, &qword_100798898);
  sub_10000CB48(&qword_10093B2A0, &qword_10093B298, &qword_100798898, &protocol conformance descriptor for Set<A>);
  v25 = Sequence.compactMapToSet<A>(_:)();
  v33 = v25;
  v163 = v2;
  v172 = *(a1 + 16);
  v162 = v15;
  if (v172)
  {
    v34 = 0;
    v169 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v171 = a1 + v169;
    v174 = *(v15 + 72);
    v35 = v25 + 56;
    v36 = &_swiftEmptyArrayStorage;
    do
    {
      sub_1001BB9B0(v171 + v174 * v34, v24);
      v37 = [*v24 objectIdentifier];
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      if (*(v33 + 16) && (Hasher.init(_seed:)(), String.hash(into:)(), v48 = Hasher._finalize()(), v49 = -1 << *(v33 + 32), v50 = v48 & ~v49, ((*(v35 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) != 0))
      {
        v51 = ~v49;
        while (1)
        {
          v52 = (*(v33 + 48) + 16 * v50);
          v41 = v52[1];
          v53 = *v52 == v38 && v41 == v40;
          if (v53 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v50 = (v50 + 1) & v51;
          if (((*(v35 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        v40, v41, v42, v43, v44, v45, v46, v47;
        sub_1001BBBD0(v24, type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.CandidateHashtag);
      }

      else
      {
LABEL_14:
        v40, v41, v42, v43, v44, v45, v46, v47;
        sub_1001BBA14(v24, v173, type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.CandidateHashtag);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v176 = v36;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10025379C(0, *v36->clientIdentity + 1, 1);
          v36 = v176;
        }

        v56 = *v36->clientIdentity;
        v55 = *&v36->clientIdentity[8];
        if (v56 >= v55 >> 1)
        {
          sub_10025379C((v55 > 1), v56 + 1, 1);
          v36 = v176;
        }

        *v36->clientIdentity = v56 + 1;
        sub_1001BBA14(v173, v36 + v169 + v56 * v174, type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.CandidateHashtag);
      }

      ++v34;
    }

    while (v34 != v172);
  }

  else
  {
    v36 = &_swiftEmptyArrayStorage;
  }

  v33, v26, v27, v28, v29, v30, v31, v32;
  v174 = v36;
  v175[0] = v36;
  sub_1000F5104(&qword_10093B2A8, qword_1007988A0);
  sub_10000CB48(&unk_10093B2B0, &qword_10093B2A8, qword_1007988A0, &protocol conformance descriptor for [A]);
  v57 = v163;
  v58 = Sequence.mapToSet<A>(_:)();
  v59 = v57;
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_100791300;
  *(v60 + 56) = &type metadata for String;
  strcpy((v60 + 32), "canonicalName");
  *(v60 + 46) = -4864;
  v175[0] = &_swiftEmptyArrayStorage;
  KeyPath = swift_getKeyPath();
  sub_100394808(v58);
  v63 = v62;
  v58, v64, v65, v66, v67, v68, v69, v70;
  sub_10042D838(KeyPath, v63);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(v175[0] + 16) >= *(v175[0] + 24) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v71 = sub_10000C2B0();
  sub_1000060C8(0, &qword_10093B2C0, off_1008D4198);
  v72 = [objc_allocWithZone(NSFetchRequest) init];
  v73 = [swift_getObjCClassFromMetadata() entity];
  [v72 setEntity:v73];

  [v72 setAffectedStores:0];
  [v72 setPredicate:v71];

  isa = Array._bridgeToObjectiveC()().super.isa;
  [v72 setPropertiesToFetch:isa];

  [v72 setRelationshipKeyPathsForPrefetching:0];
  v75 = NSManagedObjectContext.fetch<A>(_:)();
  if (v57)
  {

    v60, v83, v84, v85, v86, v87, v88, v89;

    return;
  }

  v90 = v75;
  v60, v76, v77, v78, v79, v80, v81, v82;

  v175[0] = v90;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000F5104(&qword_10093B2C8, &qword_100798908);
  sub_10000CB48(&qword_10093B2D0, &qword_10093B2C8, &qword_100798908, &protocol conformance descriptor for [A]);
  v91 = Sequence.compactIndexBy<A, B>(key:value:)();
  v90, v92, v93, v94, v95, v96, v97, v98;

  v106 = *v174->clientIdentity;
  if (v106)
  {
    v173 = 0;
    v107 = &_swiftEmptyArrayStorage;
    v108 = v174 + ((*(v162 + 80) + 32) & ~*(v162 + 80));
    v109 = *(v162 + 72);
    while (1)
    {
      v117 = v170;
      sub_1001BB9B0(v108, v170);
      v118 = *(v117 + 16);
      v175[0] = *(v117 + 8);
      v175[1] = v118;

      v119 = v168;
      static Locale.current.getter();
      v120 = type metadata accessor for Locale();
      (*(*(v120 - 8) + 56))(v119, 0, 1, v120);
      sub_10013BCF4();
      v121 = StringProtocol.foldedStringForWriting(locale:)();
      v123 = v122;
      sub_1000050A4(v119, &unk_10093F420, &unk_100797AE0);
      v118, v124, v125, v126, v127, v128, v129, v130;
      if (*(v91 + 16))
      {
        v138 = sub_100005F4C(v121, v123);
        v140 = v139;
        v123, v139, v141, v142, v143, v144, v145, v146;
        if (v140)
        {
          v147 = *(*(v91 + 56) + 8 * v138);
          v148 = *(v166 + 48);
          v149 = v164;
          *v164 = v147;
          sub_1001BBA14(v170, v149 + v148, type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.CandidateHashtag);
          sub_100031B58(v149, v167, &qword_10093B290, &qword_100798890);
          v150 = v147;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v107 = sub_100366718(0, *v107->clientIdentity + 1, 1, v107);
          }

          v152 = *v107->clientIdentity;
          v151 = *&v107->clientIdentity[8];
          if (v152 >= v151 >> 1)
          {
            v107 = sub_100366718((v151 > 1), v152 + 1, 1, v107);
          }

          *v107->clientIdentity = v152 + 1;
          sub_100031B58(v167, v107 + ((*(v165 + 80) + 32) & ~*(v165 + 80)) + *(v165 + 72) * v152, &qword_10093B290, &qword_100798890);
          goto LABEL_28;
        }
      }

      else
      {
        v123, v131, v132, v133, v134, v135, v136, v137;
      }

      sub_1001BBBD0(v170, type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.CandidateHashtag);
LABEL_28:
      v108 += v109;
      if (!--v106)
      {
        v91, v110, v111, v112, v113, v114, v115, v116;

        v59 = v173;
        if (*v107->clientIdentity)
        {
          goto LABEL_37;
        }

LABEL_39:
        v154 = _swiftEmptyDictionarySingleton;
        goto LABEL_40;
      }
    }
  }

  v91, v99, v100, v101, v102, v103, v104, v105;

  v107 = &_swiftEmptyArrayStorage;
  if (!*_swiftEmptyArrayStorage.clientIdentity)
  {
    goto LABEL_39;
  }

LABEL_37:
  sub_1000F5104(&qword_10093B2E0, &unk_100798910);
  v154 = static _DictionaryStorage.allocate(capacity:)();
LABEL_40:
  v175[0] = v154;
  sub_1001BAB78(v107, 1, v175, v153);
  v107, v155, v156, v157, v158, v159, v160, v161;
  if (v59)
  {

    __break(1u);
  }
}

uint64_t sub_1001B854C@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = __chkstk_darwin(v13, v14).n128_u64[0];
  v17 = &v24 - v16;
  v18 = [*a1 identifier];
  if (v18)
  {
    v19 = v18;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 56))(v12, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v12, 1, 1, v4);
  }

  sub_100031B58(v12, v17, &unk_100939D90, "8\n\r");
  if ((*(v5 + 48))(v17, 1, v4))
  {
    result = sub_1000050A4(v17, &unk_100939D90, "8\n\r");
    v21 = 0;
    v22 = 0;
  }

  else
  {
    (*(v5 + 16))(v8, v17, v4);
    sub_1000050A4(v17, &unk_100939D90, "8\n\r");
    v21 = UUID.uuidString.getter();
    v22 = v23;
    result = (*(v5 + 8))(v8, v4);
  }

  *a2 = v21;
  a2[1] = v22;
  return result;
}

void sub_1001B87A4(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000F5104(&unk_10093F420, &unk_100797AE0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = v20 - v6;
  v8 = *(a1 + 16);
  v20[0] = *(a1 + 8);
  v20[1] = v8;

  static Locale.current.getter();
  v9 = type metadata accessor for Locale();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  sub_10013BCF4();
  v10 = StringProtocol.foldedStringForWriting(locale:)();
  v12 = v11;
  sub_1000050A4(v7, &unk_10093F420, &unk_100797AE0);
  v8, v13, v14, v15, v16, v17, v18, v19;
  *a2 = v10;
  a2[1] = v12;
}

Swift::Int sub_1001B88EC()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  String.hash(into:)();
  type metadata accessor for UUID();
  sub_1001BC334(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001B89A4(uint64_t a1)
{
  NSObject.hash(into:)();
  String.hash(into:)();
  type metadata accessor for UUID();
  sub_1001BC334(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1001B8A40(uint64_t a1)
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  String.hash(into:)();
  type metadata accessor for UUID();
  sub_1001BC334(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001B8AF4(void *a1, void *a2, uint64_t a3)
{
  sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return static UUID.== infix(_:_:)();
}

Swift::Int sub_1001B8BA0()
{
  v1 = [*(v0 + OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_reminder) hashtags];
  v2 = _swiftEmptySetSingleton;
  if (!v1)
  {
    return v2;
  }

  v3 = v1;
  sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
  sub_10000CE28(&qword_10093B280, &qword_10093CFE0, off_1008D4190);
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v4 & 0xC000000000000001) == 0)
  {
    v20 = *(v4 + 32);
    v2 = ((1 << v20) + 63) >> 6;
    v10 = 8 * v2;
    if ((v20 & 0x3Fu) <= 0xD)
    {
      goto LABEL_23;
    }

    goto LABEL_40;
  }

  v53 = _swiftEmptySetSingleton;
  __CocoaSet.makeIterator()();
  v6 = __CocoaSet.Iterator.next()();
  if (!v6)
  {
LABEL_21:

    return v2;
  }

  while (1)
  {
    v51[2] = v6;
    swift_dynamicCast();
    v7 = v52;
    if (([v52 isConcealed] & 1) == 0)
    {
      break;
    }

LABEL_6:
    v6 = __CocoaSet.Iterator.next()();
    if (!v6)
    {
      goto LABEL_21;
    }
  }

  v8 = *(v2 + 16);
  if (*(v2 + 24) <= v8)
  {
    sub_100380E64(v8 + 1);
  }

  v2 = v53;
  v4 = v52;
  v9 = NSObject._rawHashValue(seed:)(v53[5]);
  v11 = v53 + 7;
  v12 = -1 << *(v53 + 32);
  v13 = v9 & ~v12;
  v14 = v13 >> 6;
  if (((-1 << v13) & ~v53[(v13 >> 6) + 7]) != 0)
  {
    v15 = __clz(__rbit64((-1 << v13) & ~v53[(v13 >> 6) + 7])) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_20:
    *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
    *(*(v2 + 48) + 8 * v15) = v7;
    ++*(v2 + 16);
    goto LABEL_6;
  }

  v16 = 0;
  v17 = (63 - v12) >> 6;
  while (++v14 != v17 || (v16 & 1) == 0)
  {
    v18 = v14 == v17;
    if (v14 == v17)
    {
      v14 = 0;
    }

    v16 |= v18;
    v19 = v11[v14];
    if (v19 != -1)
    {
      v15 = __clz(__rbit64(~v19)) + (v14 << 6);
      goto LABEL_20;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_40:
    v35 = v10;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v4, v36, v37, v38, v39, v40, v41, v42;
    v10 = v35;
LABEL_23:
    v51[0] = v51;
    __chkstk_darwin(v5, v10);
    v22 = v51 - ((v21 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v22, v21);
    v23 = 0;
    v24 = 0;
    v25 = 1 << *(v4 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & *(v4 + 56);
    v28 = (v25 + 63) >> 6;
    while (v27)
    {
      v29 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
LABEL_33:
      v32 = v29 | (v24 << 6);
      if (([*(*(v4 + 48) + 8 * v32) isConcealed] & 1) == 0)
      {
        *&v22[(v32 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v32;
        if (__OFADD__(v23++, 1))
        {
          __break(1u);
          return sub_1001A112C(v22, v2, v23, v4);
        }
      }
    }

    v30 = v24;
    while (1)
    {
      v24 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v24 >= v28)
      {
        return sub_1001A112C(v22, v2, v23, v4);
      }

      v31 = *(v4 + 56 + 8 * v24);
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v27 = (v31 - 1) & v31;
        goto LABEL_33;
      }
    }
  }

  v43 = swift_slowAlloc();
  v2 = sub_1001BAAE8(v43, v2, v4, sub_1001B8FD8, 0);
  v4, v44, v45, v46, v47, v48, v49, v50;

  return v2;
}

id sub_1001B9040()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001B90E4(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2)
{
  v3 = v2;
  v6 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v48 - v8;
  Date.init()();
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  v11 = type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.Metrics(0);
  sub_1001BBB60(v9, v3 + *(v11 + 40));
  v12 = sub_1001B9358();
  v14 = v13;
  if (qword_100935B40 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100006654(v15, qword_10093AF90);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  v14, v18, v19, v20, v21, v22, v23, v24;
  a2, v25, v26, v27, v28, v29, v30, v31;
  if (os_log_type_enabled(v16, v17))
  {
    v39 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v39 = 136315394;
    *(v39 + 4) = sub_10000668C(a1, a2, &v49);
    *(v39 + 12) = 2080;
    v40 = sub_10000668C(v12, v14, &v49);
    v14, v41, v42, v43, v44, v45, v46, v47;
    *(v39 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s %s", v39, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v14, v32, v33, v34, v35, v36, v37, v38;
  }

  sub_1001B95AC();
}

unint64_t sub_1001B9358()
{
  _StringGuts.grow(_:)(69);
  v1._countAndFlagsBits = 0xD000000000000020;
  v1._object = 0x80000001007EF530;
  String.append(_:)(v1);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  object = v2._object;
  String.append(_:)(v2);
  object, v4, v5, v6, v7, v8, v9, v10;
  v11._countAndFlagsBits = 0xD00000000000001FLL;
  v11._object = 0x80000001007EF560;
  String.append(_:)(v11);
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  v13 = v12._object;
  String.append(_:)(v12);
  v13, v14, v15, v16, v17, v18, v19, v20;
  v21._countAndFlagsBits = 8236;
  v21._object = 0xE200000000000000;
  String.append(_:)(v21);
  _StringGuts.grow(_:)(48);
  0xE000000000000000, v22, v23, v24, v25, v26, v27, v28;
  v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  v30 = v29._object;
  String.append(_:)(v29);
  v30, v31, v32, v33, v34, v35, v36, v37;
  v38._countAndFlagsBits = 0x20726F727265202CLL;
  v38._object = 0xEA0000000000203DLL;
  String.append(_:)(v38);
  if (*v0)
  {
    swift_getErrorValue();
    v39 = Error.localizedDescription.getter();
    v41 = v40;
  }

  else
  {
    v41 = 0xE600000000000000;
    v39 = 0x3E656E6F6E3CLL;
  }

  v42 = v41;
  String.append(_:)(*&v39);
  v41, v43, v44, v45, v46, v47, v48, v49;
  v50._countAndFlagsBits = 0x697461727564202CLL;
  v50._object = 0xED0000203D206E6FLL;
  String.append(_:)(v50);
  v51._countAndFlagsBits = sub_1001B97EC();
  v52 = v51._object;
  String.append(_:)(v51);
  v52, v53, v54, v55, v56, v57, v58, v59;

  v60._countAndFlagsBits = 0xD000000000000013;
  v60._object = 0x80000001007EF580;
  String.append(_:)(v60);
  0xE000000000000000, v61, v62, v63, v64, v65, v66, v67;
  0x80000001007EF580, v68, v69, v70, v71, v72, v73, v74;
  return 0;
}

void sub_1001B95AC()
{
  v1 = v0;
  v2 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v2 - 8, v3);
  v5 = v20 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = sub_10000F61C((v0 + 8), *(v0 + 32));
  v11 = sub_1001B9A3C();
  v12 = type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.Metrics(0);
  sub_100010364(v1 + *(v12 + 40), v5, &unk_100938850, qword_100795AE0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000050A4(v5, &unk_100938850, qword_100795AE0);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    Date.distance(to:)();
    (*(v7 + 8))(v10, v6);
  }

  dispatch thunk of AnalyticsType.postEvent(_:payload:duration:error:performAutoBugCaptureOnError:)();
  v11, v13, v14, v15, v16, v17, v18, v19;
}

uint64_t sub_1001B97EC()
{
  v1 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v23 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.Metrics(0);
  sub_100010364(v0 + *(v10 + 40), v4, &unk_100938850, qword_100795AE0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000050A4(v4, &unk_100938850, qword_100795AE0);
    return 0x6E776F6E6B6E753CLL;
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    Date.distance(to:)();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100791300;
    *(v14 + 56) = &type metadata for Double;
    *(v14 + 64) = &protocol witness table for Double;
    *(v14 + 32) = v13;
    v15 = String.init(format:arguments:)();
    v14, v16, v17, v18, v19, v20, v21, v22;
    return v15;
  }
}

unint64_t sub_1001B9A3C()
{
  sub_1000F5104(&unk_100939240, &unk_100798990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791320;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x80000001007EF4F0;
  *(inited + 48) = Int._bridgeToObjectiveC()();
  *(inited + 56) = 0xD000000000000018;
  *(inited + 64) = 0x80000001007EF510;
  *(inited + 72) = Int._bridgeToObjectiveC()();
  *(inited + 80) = 0x7367617468736168;
  *(inited + 88) = 0xEF64657461657243;
  *(inited + 96) = Int._bridgeToObjectiveC()();
  v1 = sub_10038D880(inited);
  swift_setDeallocating();
  sub_1000F5104(&unk_100939250, &unk_100795D30);
  swift_arrayDestroy();
  return v1;
}

uint64_t sub_1001B9BA0(uint64_t a1)
{
  result = type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.Metrics(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_1001B9CA0(void *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  v5 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    *a1 = v5;
    v3 = (v5 + ((v4 + 16) & ~v4));
  }

  else
  {
    swift_errorRetain();
    *v3 = v5;
    v8 = *(a2 + 2);
    *(v3 + 2) = v8;
    (**(v8 - 8))((v3 + 1), a2 + 1);
    *(v3 + 3) = *(a2 + 3);
    v3[8] = a2[8];
    v9 = *(a3 + 36);
    v10 = type metadata accessor for Date();
    v11 = *(v10 - 8);
    v12 = *(v11 + 16);
    v12(v3 + v9, a2 + v9, v10);
    v13 = *(a3 + 40);
    if ((*(v11 + 48))(a2 + v13, 1, v10))
    {
      v14 = sub_1000F5104(&unk_100938850, qword_100795AE0);
      memcpy(v3 + v13, a2 + v13, *(*(v14 - 8) + 64));
    }

    else
    {
      v12(v3 + v13, a2 + v13, v10);
      (*(v11 + 56))(v3 + v13, 0, 1, v10);
    }
  }

  return v3;
}

uint64_t sub_1001B9E7C(char *a1, uint64_t a2)
{
  v4 = a1 + 8;

  sub_10000607C(v4);
  v5 = *(a2 + 36);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v10 = *(v7 + 8);
  v10(&a1[v5], v6);
  v8 = *(a2 + 40);
  result = (*(v7 + 48))(&a1[v8], 1, v6);
  if (!result)
  {

    return (v10)(&a1[v8], v6);
  }

  return result;
}

uint64_t sub_1001B9F84(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  swift_errorRetain();
  *a1 = v6;
  v7 = *(a2 + 2);
  *(a1 + 32) = v7;
  (**(v7 - 8))(a1 + 8, a2 + 1);
  *(a1 + 48) = *(a2 + 3);
  *(a1 + 64) = a2[8];
  v8 = *(a3 + 36);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 16);
  v11(a1 + v8, a2 + v8, v9);
  v12 = *(a3 + 40);
  if ((*(v10 + 48))(a2 + v12, 1, v9))
  {
    v13 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy((a1 + v12), a2 + v12, *(*(v13 - 8) + 64));
  }

  else
  {
    v11(a1 + v12, a2 + v12, v9);
    (*(v10 + 56))(a1 + v12, 0, 1, v9);
  }

  return a1;
}

char *sub_1001BA114(char *a1, char *a2, uint64_t a3)
{
  v6 = *a2;
  swift_errorRetain();
  *a1 = v6;

  sub_1001BA2F0(a1 + 1, a2 + 1);
  *(a1 + 6) = *(a2 + 6);
  *(a1 + 7) = *(a2 + 7);
  *(a1 + 8) = *(a2 + 8);
  v7 = *(a3 + 36);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 24);
  v10(&a1[v7], &a2[v7], v8);
  v11 = *(a3 + 40);
  v12 = *(v9 + 48);
  LODWORD(a3) = v12(&a1[v11], 1, v8);
  v13 = v12(&a2[v11], 1, v8);
  if (!a3)
  {
    if (!v13)
    {
      v10(&a1[v11], &a2[v11], v8);
      return a1;
    }

    (*(v9 + 8))(&a1[v11], v8);
    goto LABEL_6;
  }

  if (v13)
  {
LABEL_6:
    v14 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy(&a1[v11], &a2[v11], *(*(v14 - 8) + 64));
    return a1;
  }

  (*(v9 + 16))(&a1[v11], &a2[v11], v8);
  (*(v9 + 56))(&a1[v11], 0, 1, v8);
  return a1;
}

uint64_t *sub_1001BA2F0(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t sub_1001BA50C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  v6 = *(a3 + 36);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 32);
  v9(a1 + v6, a2 + v6, v7);
  v10 = *(a3 + 40);
  if ((*(v8 + 48))(a2 + v10, 1, v7))
  {
    v11 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy((a1 + v10), (a2 + v10), *(*(v11 - 8) + 64));
  }

  else
  {
    v9(a1 + v10, a2 + v10, v7);
    (*(v8 + 56))(a1 + v10, 0, 1, v7);
  }

  return a1;
}

uint64_t *sub_1001BA670(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  sub_10000607C(a1 + 1);
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 3) = *(a2 + 3);
  a1[5] = a2[5];
  *(a1 + 3) = *(a2 + 3);
  a1[8] = a2[8];
  v6 = *(a3 + 36);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 40);
  v9(a1 + v6, a2 + v6, v7);
  v10 = *(a3 + 40);
  v11 = *(v8 + 48);
  LODWORD(a3) = v11(a1 + v10, 1, v7);
  v12 = v11(a2 + v10, 1, v7);
  if (!a3)
  {
    if (!v12)
    {
      v9(a1 + v10, a2 + v10, v7);
      return a1;
    }

    (*(v8 + 8))(a1 + v10, v7);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    v13 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy(a1 + v10, a2 + v10, *(*(v13 - 8) + 64));
    return a1;
  }

  (*(v8 + 32))(a1 + v10, a2 + v10, v7);
  (*(v8 + 56))(a1 + v10, 0, 1, v7);
  return a1;
}