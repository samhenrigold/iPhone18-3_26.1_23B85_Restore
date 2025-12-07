uint64_t sub_1003AC414(void *a1)
{
  v2 = v1;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v52 = v5;
  v53 = v4;
  __chkstk_darwin(v4);
  sub_100007FDC();
  v51 = v7 - v6;
  type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v49 = v9;
  v50 = v8;
  __chkstk_darwin(v8);
  sub_100007FDC();
  v48 = v11 - v10;
  v46 = type metadata accessor for UUID();
  sub_100007FEC();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_100007FDC();
  v17 = v16 - v15;
  v18 = type metadata accessor for URL();
  sub_100007FEC();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_100007FDC();
  v24 = v23 - v22;
  v25 = [objc_allocWithZone(UNMutableNotificationContent) init];
  sub_1003ABAF4(a1);
  v26 = String._bridgeToObjectiveC()();

  [v25 setTitle:v26];

  v27 = [objc_opt_self() openNoteURLForRecordingSession:a1];
  if (v27)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL._bridgeToObjectiveC()(v28);
    v27 = v29;
    (*(v20 + 8))(v24, v18);
  }

  [v25 setDefaultActionURL:{v27, v46}];

  [v25 setCategoryIdentifier:TUNotificationCategoryIdentifierCallRecording];
  sub_100006AF0(0, &qword_1006A8780, UNNotificationIcon_ptr);
  v30 = sub_1003ACA58();
  [v25 setIcon:v30];

  [v25 setShouldIgnoreDoNotDisturb:1];
  v31 = sub_1003ABBD8();
  sub_1004554A0(v31, v32, v25);
  v33 = [objc_opt_self() triggerWithTimeInterval:0 repeats:1.0];
  sub_100006AF0(0, &qword_1006A7AE0, UNNotificationRequest_ptr);
  v34 = [a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v35 = UUID.uuidString.getter();
  v37 = v36;
  (*(v13 + 8))(v17, v47);
  v38 = v25;
  v39 = v33;
  v40 = sub_10044F628(v35, v37, v38, v33);
  v41 = swift_allocObject();
  *(v41 + 16) = v2;
  *(v41 + 24) = v40;
  aBlock[4] = sub_1003ACE18;
  aBlock[5] = v41;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_10062BEB0;
  v42 = _Block_copy(aBlock);
  v43 = v2;
  v44 = v40;
  static DispatchQoS.unspecified.getter();
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v42);

  (*(v52 + 8))(v51, v53);
  (*(v49 + 8))(v48, v50);
}

id sub_1003ACA58()
{
  v0 = String._bridgeToObjectiveC()();

  v1 = [swift_getObjCClassFromMetadata() iconForApplicationIdentifier:v0];

  return v1;
}

uint64_t sub_1003ACABC(uint64_t result, uint64_t a2)
{
  v2 = *(result + OBJC_IVAR____TtC13callservicesd33CallRecordingNotificationProvider_add);
  if (v2)
  {
    v4 = *(result + OBJC_IVAR____TtC13callservicesd33CallRecordingNotificationProvider_add + 8);

    v2(a2);

    return sub_1000051F8(v2, v4);
  }

  return result;
}

uint64_t type metadata accessor for CallRecordingNotificationProvider(uint64_t a1)
{
  result = qword_1006A8768;
  if (!qword_1006A8768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003ACC98(uint64_t a1)
{
  sub_1002FAAA0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1003ACD8C()
{
  v1 = *(type metadata accessor for Notification() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1003AC1DC(v2);
}

id sub_1003ACE20(uint64_t a1)
{
  type metadata accessor for ReminderStore(0);
  swift_allocObject();
  v2 = sub_10045927C();
  v3 = sub_1003AE0D4(a1, v2);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t sub_1003ACEF4(void *a1)
{
  v3 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for TaskPriority();
  sub_10000AF74(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;
  v7[5] = v1;
  v8 = a1;
  v9 = v1;
  sub_1002762F0();
}

uint64_t sub_1003ACFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v5[4] = swift_task_alloc();
  v5[5] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();

  return _swift_task_switch(sub_1003AD0E0, 0, 0);
}

id sub_1003AD0E0()
{
  v1 = sub_10039BD00(*(v0 + 16));
  if (!v1 || (v2 = sub_1002E8D2C(v1), *(v0 + 72) = v2, , !v2))
  {
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      sub_10000F590(&_mh_execute_header, v7, v8, "Could not find call handle");
      sub_100005F40(v6);
    }

LABEL_10:

LABEL_11:

    sub_100009EF4();

    return v13();
  }

  [*(v0 + 16) duration];
  if (v3 <= 10.0)
  {
    v4 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      sub_10000F590(&_mh_execute_header, v11, v12, "Call duration was less than 10 seconds, not marking reminder as complete");
      sub_100005F40(v10);
    }

    goto LABEL_10;
  }

  v15 = sub_1003ADA38(v2);

  v16 = v2;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  v19 = os_log_type_enabled(v17, v18);
  v42 = v16;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 134218242;
    *(v20 + 4) = sub_10000B6F4(v15);

    *(v20 + 12) = 2112;
    *(v20 + 14) = v16;
    *v21 = v2;
    v22 = v16;
    _os_log_impl(&_mh_execute_header, v17, v18, "Found %ld calls having reminderUUID with handle: %@", v20, 0x16u);
    sub_100009A5C(v21, &unk_1006A2630, &qword_10057CB40);
    sub_100005F40(v21);
    sub_100005F40(v20);
  }

  else
  {
  }

  v23 = *(v0 + 56);
  result = sub_10000B6F4(v15);
  v24 = 0;
  v45 = v15 & 0xC000000000000001;
  v46 = result;
  v44 = v15 & 0xFFFFFFFFFFFFFF8;
  v25 = _swiftEmptyArrayStorage;
  v43 = (v23 + 32);
  while (1)
  {
    *(v0 + 80) = v25;
    if (v46 == v24)
    {
      break;
    }

    if (v45)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v24 >= *(v44 + 16))
      {
        goto LABEL_40;
      }

      result = *(v15 + 8 * v24 + 32);
    }

    v26 = result;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      return result;
    }

    v27 = v15;
    v28 = [result reminderUUID];
    if (v28)
    {
      v29 = v28;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v32 = *(v0 + 40);
    v31 = *(v0 + 48);
    v33 = *(v0 + 32);

    sub_10000AF74(v33, v30, 1, v31);
    sub_100286068(v33, v32);
    if (sub_100015468(v32, 1, v31) == 1)
    {
      result = sub_100009A5C(*(v0 + 40), &unk_1006A3DD0, &unk_10057C9D0);
      ++v24;
      v15 = v27;
    }

    else
    {
      v34 = *v43;
      (*v43)(*(v0 + 64), *(v0 + 40), *(v0 + 48));
      v15 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100470054(0, *(v25 + 2) + 1, 1, v25);
        v25 = v39;
      }

      v36 = *(v25 + 2);
      v35 = *(v25 + 3);
      if (v36 >= v35 >> 1)
      {
        sub_100470054(v35 > 1, v36 + 1, 1, v25);
        v25 = v40;
      }

      v37 = *(v0 + 64);
      v38 = *(v0 + 48);
      *(v25 + 2) = v36 + 1;
      result = v34(&v25[((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v36], v37, v38);
      ++v24;
    }
  }

  if (!*(v25 + 2))
  {

    goto LABEL_11;
  }

  sub_100009B14((*(v0 + 24) + OBJC_IVAR___CSDRecentCallReminderManager_reminderStore), *(*(v0 + 24) + OBJC_IVAR___CSDRecentCallReminderManager_reminderStore + 24));
  v41 = swift_task_alloc();
  *(v0 + 88) = v41;
  *v41 = v0;
  v41[1] = sub_1003AD714;

  return sub_1004583A4(v25);
}

uint64_t sub_1003AD714()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1003AD8BC;
  }

  else
  {
    v2 = sub_1003AD844;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003AD844()
{

  sub_100009EF4();

  return v1();
}

uint64_t sub_1003AD8BC()
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 72);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Could not mark reminders as completed due to error: %@", v5, 0xCu);
    sub_100009A5C(v6, &unk_1006A2630, &qword_10057CB40);
    sub_100005F40(v6);
    sub_100005F40(v5);
  }

  else
  {
  }

  sub_100009EF4();

  return v8();
}

uint64_t sub_1003ADA38(uint64_t a1)
{
  v2 = v1;
  sub_10026D814(&qword_1006A87D8, &unk_1005845D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057D6A0;
  v5 = objc_opt_self();
  *(inited + 32) = [v5 predicateForCallsHavingReminder];
  v6 = 0;
  *(inited + 40) = [v5 predicateForCallsWithRemoteParticipantHandle:a1];
  while (v6 != 2)
  {
    v7 = *(inited + 8 * v6++ + 32);
    if (v7)
    {
      v8 = v7;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  sub_100006AF0(0, &qword_1006A30E0, NSCompoundPredicate_ptr);
  swift_setDeallocating();
  sub_1002F5D08();
  v9 = sub_10000C350();
  v10 = [*(v2 + OBJC_IVAR___CSDRecentCallReminderManager_recentsManager) callsWithPredicate:v9 limit:0 offset:0 batchSize:0];
  sub_100006AF0(0, &unk_1006A30D0, CHRecentCall_ptr);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v11;
}

uint64_t type metadata accessor for RecentCallReminderManager(uint64_t a1)
{
  result = qword_1006A87C8;
  if (!qword_1006A87C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003ADD98(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t sub_1003ADE40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1003ADF00;

  return sub_1003ACFDC(a1, v4, v5, v7, v6);
}

uint64_t sub_1003ADF00()
{

  sub_100009EF4();

  return v0();
}

id sub_1003ADFF0(uint64_t a1, uint64_t a2, char *a3)
{
  ObjectType = swift_getObjectType();
  v10[3] = type metadata accessor for ReminderStore(0);
  v10[4] = &off_1006310B8;
  v10[0] = a2;
  Logger.init(subsystem:category:)();
  *&a3[OBJC_IVAR___CSDRecentCallReminderManager_recentsManager] = a1;
  sub_100009AB0(v10, &a3[OBJC_IVAR___CSDRecentCallReminderManager_reminderStore]);
  v9.receiver = a3;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, "init");
  sub_100009B7C(v10);
  return v7;
}

id sub_1003AE0D4(uint64_t a1, uint64_t a2)
{
  v13 = type metadata accessor for ReminderStore(0);
  v14 = &off_1006310B8;
  v12[0] = a2;
  v4 = objc_allocWithZone(type metadata accessor for RecentCallReminderManager(0));
  v5 = sub_10001BDB8(v12, v13);
  __chkstk_darwin(v5);
  v7 = (&v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = sub_1003ADFF0(a1, *v7, v4);
  sub_100009B7C(v12);
  return v9;
}

void sub_1003AE208()
{
  if (*(v0 + 16))
  {
    sub_1003AE9E4(*(v0 + 16), 1);
  }

  else
  {
    sub_1003AE81C(1);
  }
}

void sub_1003AE24C()
{
  v1 = *(v0 + 16);
  if (v1 > 1)
  {
    sub_1003AE9E4(v1, 2);
  }

  else
  {
    sub_1003AE81C(2);
  }
}

_UNKNOWN **sub_1003AE294()
{
  if (qword_1006A0B58 != -1)
  {
    sub_100008170();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000AF9C(v1, qword_1006BA688);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v2, v3))
  {
    *sub_100006DC4() = 0;
    sub_10001046C(&_mh_execute_header, v4, v5, "Stop translation for inactive call");
    sub_100009ED0();
  }

  result = &off_100620420;
  switch(*(v0 + 16))
  {
    case 1:
      sub_10000F7A8();
      result = &off_1006203D0;
      break;
    case 2:
      sub_1003AE81C(3);
      result = &off_1006203F8;
      break;
    case 3:
      return result;
    case 4:
      sub_10000F7A8();
      result = &off_100620448;
      break;
    case 5:
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v7, v8))
      {
        *sub_100006DC4() = 0;
        sub_100015268(&_mh_execute_header, v9, v10, "Unable to stop a completed call translation session");
        sub_100009ED0();
      }

      v11 = sub_1002B6680();
      sub_100008248(&unk_10062C0A0, v11);
      *v12 = 0;
      result = swift_willThrow();
      break;
    default:
      sub_10000F7A8();
      result = &off_1006203A8;
      break;
  }

  return result;
}

_UNKNOWN **sub_1003AE440()
{
  if (qword_1006A0B58 != -1)
  {
    sub_100008170();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000AF9C(v1, qword_1006BA688);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v2, v3))
  {
    *sub_100006DC4() = 0;
    sub_10001046C(&_mh_execute_header, v4, v5, "Stop translation for active call");
    sub_100009ED0();
  }

  result = &off_100620358;
  switch(*(v0 + 16))
  {
    case 1:
      sub_1003AE81C(4);
      result = &off_100620308;
      break;
    case 2:
      sub_1003AE81C(3);
      result = &off_100620330;
      break;
    case 3:
      return result;
    case 4:
      result = &off_100620380;
      break;
    case 5:
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v7, v8))
      {
        *sub_100006DC4() = 0;
        sub_100015268(&_mh_execute_header, v9, v10, "Unable to stop a completed call translation session");
        sub_100009ED0();
      }

      v11 = sub_1002B6680();
      sub_100008248(&unk_10062C0A0, v11);
      *v12 = 1;
      result = swift_willThrow();
      break;
    default:
      sub_10000F7A8();
      result = &off_1006202E0;
      break;
  }

  return result;
}

uint64_t sub_1003AE5F4(char a1)
{
  if ((*(v1 + 16) & 0xFE) == 2)
  {
    if (a1)
    {
      sub_1003AE81C(4);
      return 1;
    }

    else
    {
      sub_10000F7A8();
      return 2;
    }
  }

  else
  {
    if (qword_1006A0B58 != -1)
    {
      sub_100008170();
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000AF9C(v3, qword_1006BA688);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v13 = v7;
      *v6 = 136315138;
      v8 = String.init<A>(reflecting:)();
      v10 = sub_10002741C(v8, v9, &v13);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Finish is called via invalid state: %s", v6, 0xCu);
      sub_100009B7C(v7);
      sub_100009ED0();

      sub_100009ED0();
    }

    v11 = sub_1002B6680();
    sub_100008248(&unk_10062C0A0, v11);
    *v12 = 2;
    return swift_willThrow();
  }
}

void sub_1003AE7A8(char a1)
{
  switch(*(v1 + 16))
  {
    case 0:
    case 4:
      goto LABEL_4;
    case 1:
    case 3:
      if (a1)
      {
        goto LABEL_3;
      }

LABEL_4:
      sub_1003AE81C(5);
      break;
    default:
LABEL_3:
      sub_1003AE9E4(*(v1 + 16), 5);
      break;
  }
}

void sub_1003AE81C(char a1)
{
  *(v1 + 16) = a1;
  if (qword_1006A0B58 != -1)
  {
    sub_100008170();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000AF9C(v2, qword_1006BA688);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v4 = 136315394;
    v5 = String.init<A>(reflecting:)();
    v7 = sub_10002741C(v5, v6, &v12);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    v8 = String.init<A>(reflecting:)();
    v10 = sub_10002741C(v8, v9, &v12);

    *(v4 + 14) = v10;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Transitioning from %s to %s", v4, 0x16u);
    swift_arrayDestroy();
    sub_100009ED0();

    sub_100009ED0();
  }

  else
  {
  }
}

uint64_t sub_1003AE9E4(char a1, char a2)
{
  if (qword_1006A0B58 != -1)
  {
    sub_100008170();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000AF9C(v2, qword_1006BA688);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = String.init<A>(reflecting:)();
    v8 = sub_10002741C(v6, v7, &v15);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = String.init<A>(reflecting:)();
    v11 = sub_10002741C(v9, v10, &v15);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unpexected state %s expected %s", v5, 0x16u);
    swift_arrayDestroy();
    sub_100009ED0();

    sub_100009ED0();
  }

  v12 = sub_1002B6680();
  sub_100008248(&unk_10062C0A0, v12);
  *v13 = 3;
  return swift_willThrow();
}

_BYTE *sub_1003AEBD4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1003AECB0()
{
  result = qword_1006A88E8;
  if (!qword_1006A88E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A88E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConversationLinkCryptoErrorType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1003AED8C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1003AEE64(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1003AEF40()
{
  result = qword_1006A88F0;
  if (!qword_1006A88F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A88F0);
  }

  return result;
}

unint64_t sub_1003AEF98()
{
  result = qword_1006A88F8;
  if (!qword_1006A88F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A88F8);
  }

  return result;
}

uint64_t sub_1003AEFEC(void *a1)
{
  v3 = [a1 remoteMember];
  if (v3 && (v4 = v3, v5 = [v3 handle], v4, v5))
  {
    v6 = [v5 value];
    if (!v6)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = String._bridgeToObjectiveC()();
    }

    v7 = [objc_opt_self() suggestedNamesForDestinationID:v6 onlySignificant:1 supportsInfoLookup:0 error:0];

    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = *(v8 + 16);

    LODWORD(v7) = [objc_msgSend(v1 "featureFlags")];
    swift_unknownObjectRelease();
    v94 = v5;
    if (v7)
    {
      v10 = [a1 commTrustScore] == 8;
    }

    else
    {
      sub_10026D814(&qword_1006A4760, &unk_10057EA60);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_10057D690;
      v18 = [v5 value];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      *(v17 + 32) = v19;
      *(v17 + 40) = v21;
      v22 = sub_1003AF974(v17, _swiftEmptyArrayStorage);

      if (v22)
      {
        v23 = *(v22 + 16);

        v10 = v23 != 0;
      }

      else
      {
        v10 = 0;
      }
    }

    v91 = v10;
    v95 = sub_1003AFC60(a1);
    v97 = sub_1003AFDE8(a1);
    v24 = [a1 silencingUserInfo];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = [objc_allocWithZone(NSNumber) initWithBool:v10];
    [v24 __swift_setObject:v25 forKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    v26 = [a1 silencingUserInfo];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = [objc_allocWithZone(NSNumber) initWithBool:v9 != 0];
    [v26 __swift_setObject:v27 forKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    v28 = [a1 silencingUserInfo];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = [objc_allocWithZone(NSNumber) initWithBool:?];
    v30 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    sub_1000086C0(v30);

    swift_unknownObjectRelease();
    v93 = a1;
    v31 = [a1 silencingUserInfo];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v9;
    v33 = 1;
    v34 = [objc_allocWithZone(NSNumber) initWithBool:(v97 & 1) == 0];
    v35 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    sub_1000086C0(v35);

    v36 = swift_unknownObjectRelease();
    if (!v91)
    {
      v33 = (v32 != 0) | v95 | v97;
    }

    v96 = v33;
    v37 = sub_100004778(v36);
    v92 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_10057DDF0;
    v90 = type metadata accessor for ContactsCallFilter();
    *(v38 + 56) = v90;
    v39 = sub_1003B07A0();
    *(v38 + 64) = v39;
    *(v38 + 32) = v1;
    v40 = v1;
    v48 = sub_10000F7C0(v40, v41, v42, v43, v44, v45, v46, v47);
    v50 = v49;
    *(v38 + 96) = &type metadata for String;
    v51 = sub_100009D88();
    *(v38 + 104) = v51;
    *(v38 + 72) = v48;
    *(v38 + 80) = v50;
    v59 = sub_10000F7C0(v51, v52, v53, v54, v55, v56, v57, v58);
    *(v38 + 136) = &type metadata for String;
    *(v38 + 144) = v51;
    *(v38 + 112) = v59;
    *(v38 + 120) = v60;
    v67 = sub_10000F7C0(v59, v60, v61, v62, v63, v64, v65, v66);
    *(v38 + 176) = &type metadata for String;
    *(v38 + 184) = v51;
    *(v38 + 152) = v67;
    *(v38 + 160) = v68;
    v75 = sub_10000F7C0(v67, v68, v69, v70, v71, v72, v73, v74);
    *(v38 + 216) = &type metadata for String;
    *(v38 + 224) = v51;
    *(v38 + 192) = v75;
    *(v38 + 200) = v76;
    v77 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("%@ Found contact (%@) or suggested contact (%@) or isVerifiedAppleCare (%@) or isCarrierBundlePhoneNumber (%@)", 110, 2, &_mh_execute_header, v37, v77, v38);

    v79 = sub_100004778(v78);
    v80 = sub_100009F24(v92);
    *(v80 + 16) = xmmword_10057D6A0;
    *(v80 + 56) = v90;
    *(v80 + 64) = v39;
    *(v80 + 32) = v40;
    if (v96)
    {
      sub_100006AF0(0, &qword_1006AB5C0, CXCallUpdate_ptr);
      v81 = v40;
      v82 = v93;
      v83 = String.init<A>(reflecting:)();
      *(v80 + 96) = &type metadata for String;
      *(v80 + 104) = v51;
      *(v80 + 72) = v83;
      *(v80 + 80) = v84;
      v85 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("%@ call filter will allow call %@", 33, 2, &_mh_execute_header, v79, v85, v80);

      return 0;
    }

    *(v80 + 96) = sub_100006AF0(0, &qword_1006AB5C0, CXCallUpdate_ptr);
    *(v80 + 104) = sub_1003B0878();
    *(v80 + 72) = v93;
    v87 = v40;
    v88 = v93;
    v89 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("%@ Did not find contact or suggested contact; call filter will not allow call %{sensitive}@", 91, 2, &_mh_execute_header, v79, v89, v80);
  }

  else
  {
    v11 = sub_100004778(v3);
    static os_log_type_t.error.getter();
    v12 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v13 = sub_100009F24(v12);
    *(v13 + 16) = xmmword_10057D6A0;
    *(v13 + 56) = type metadata accessor for ContactsCallFilter();
    *(v13 + 64) = sub_1003B07A0();
    *(v13 + 32) = v1;
    *(v13 + 96) = sub_100006AF0(0, &qword_1006AB5C0, CXCallUpdate_ptr);
    *(v13 + 104) = sub_1003B0878();
    *(v13 + 72) = a1;
    v14 = v1;
    v15 = a1;
    sub_10000A990("%@ null update handle, should not reach here: update=%@", 55, v16, &_mh_execute_header);
  }

  return 1;
}

BOOL sub_1003AF7B4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a4)
  {
    goto LABEL_6;
  }

  v8 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v8 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    sub_10026D814(&qword_1006A4760, &unk_10057EA60);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_10057D6A0;
    *(v9 + 32) = a1;
    *(v9 + 40) = a2;
    *(v9 + 48) = a3;
    *(v9 + 56) = a4;
  }

  else
  {
LABEL_6:
    sub_10026D814(&qword_1006A4760, &unk_10057EA60);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_10057D690;
    *(v9 + 32) = a1;
    *(v9 + 40) = a2;
  }

  v10 = sub_1003AF974(v9, _swiftEmptyArrayStorage);

  if (!v10)
  {
    return 1;
  }

  v11 = *(v10 + 16);

  return v11 == 0;
}

uint64_t sub_1003AF974(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  sub_100006AF0(0, &qword_1006AB680, CNContactFetchRequest_ptr);

  v3 = sub_10042CF18();
  v4 = objc_opt_self();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v6 = [v4 predicateForContactsMatchingHandleStrings:isa];

  [v3 setPredicate:v6];
  v7 = *&v2[OBJC_IVAR___CSDContactsCallFilter_contactStore];
  v25 = 0;
  v8 = [v7 executeFetchRequest:v3 error:&v25];
  if (!v8)
  {
    v12 = v25;
    v13 = _convertNSErrorToError(_:)();

    v14 = swift_willThrow();
    v15 = sub_100004778(v14);
    v16 = static os_log_type_t.error.getter();
    v17 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v18 = sub_100009F24(v17);
    *(v18 + 16) = xmmword_10057D6A0;
    *(v18 + 56) = type metadata accessor for ContactsCallFilter();
    *(v18 + 64) = sub_1003B07A0();
    *(v18 + 32) = v2;
    v25 = v13;
    v19 = v2;
    swift_errorRetain();
    sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    v20 = String.init<A>(reflecting:)();
    v22 = v21;
    *(v18 + 96) = &type metadata for String;
    *(v18 + 104) = sub_100009D88();
    *(v18 + 72) = v20;
    *(v18 + 80) = v22;
    os_log(_:dso:log:type:_:)("%@ Contact fetch failed with the following error %@", 51, 2, &_mh_execute_header, v15, v16, v18);

    return 0;
  }

  v9 = v8;
  v10 = v25;
  v25 = [v9 value];
  sub_10026D814(&qword_1006A2DE8, &unk_100584830);
  if (swift_dynamicCast())
  {
    v11 = v24;
  }

  else
  {
    sub_10026D814(&unk_1006A79E0, &unk_10057DD90);
    v11 = Dictionary.init(dictionaryLiteral:)();
  }

  return v11;
}

uint64_t sub_1003AFC60(void *a1)
{
  v3 = [a1 remoteMember];
  if (v3 && (v4 = v3, v5 = [v3 handle], v4, v6 = objc_msgSend(v5, "tuHandle"), v5, v6))
  {
    if ([a1 verificationStatus] == 1)
    {
      v7 = [*&v1[OBJC_IVAR___CSDContactsCallFilter_appleCareHandles] contains:v6];
    }

    else
    {

      return 0;
    }
  }

  else
  {
    v8 = sub_100004778(v3);
    static os_log_type_t.error.getter();
    v9 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v10 = sub_100009F24(v9);
    *(v10 + 16) = xmmword_10057D6A0;
    *(v10 + 56) = type metadata accessor for ContactsCallFilter();
    *(v10 + 64) = sub_1003B07A0();
    *(v10 + 32) = v1;
    *(v10 + 96) = sub_100006AF0(0, &qword_1006AB5C0, CXCallUpdate_ptr);
    *(v10 + 104) = sub_1003B0878();
    *(v10 + 72) = a1;
    v11 = v1;
    v12 = a1;
    sub_10000A990("%@ null call handle, should not reach here: call=%@", 51, v13, &_mh_execute_header);

    return 1;
  }

  return v7;
}

uint64_t sub_1003AFDE8(void *a1)
{
  v81 = type metadata accessor for UUID();
  v3 = *(v81 - 8);
  v4 = __chkstk_darwin(v81);
  v6 = v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v68 - v8;
  v10 = __chkstk_darwin(v7);
  v79 = v68 - v11;
  __chkstk_darwin(v10);
  v13 = v68 - v12;
  v80 = v1;
  v14 = *&v1[OBJC_IVAR___CSDContactsCallFilter_carrierBundleController];
  v15 = &selRef_tu_predicateForConversationLinkDescriptorsWithActivated_;
  v16 = [v14 serviceProviders];
  v17 = sub_100006AF0(0, &qword_1006A8940, off_1006165F8);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = sub_10000B6F4(v18);
  if (!result)
  {

    goto LABEL_10;
  }

  if (result >= 1)
  {
    v68[1] = v17;
    v69 = v14;
    v70 = v6;
    v71 = a1;
    v72 = v9;
    v73 = v3;
    v20 = 0;
    v76 = (v3 + 16);
    v77 = v18 & 0xC000000000000001;
    v74 = (v3 + 8);
    v75 = xmmword_10057E830;
    v78 = v18;
    do
    {
      v21 = result;
      if (v77)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v22 = *(v18 + 8 * v20 + 32);
      }

      v23 = v22;
      ++v20;
      v24 = sub_100004778(v22);
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v25 = swift_allocObject();
      *(v25 + 16) = v75;
      *(v25 + 56) = type metadata accessor for ContactsCallFilter();
      *(v25 + 64) = sub_1003B07A0();
      v26 = v80;
      *(v25 + 32) = v80;
      v27 = v26;
      v28 = [v23 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v29 = v81;
      (*v76)(v79, v13, v81);
      v30 = String.init<A>(reflecting:)();
      v32 = v31;
      (*v74)(v13, v29);
      *(v25 + 96) = &type metadata for String;
      v33 = sub_100009D88();
      *(v25 + 104) = v33;
      *(v25 + 72) = v30;
      *(v25 + 80) = v32;
      v34 = [v23 carrierPhoneNumbers];
      v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v82 = v35;
      sub_10026D814(&unk_1006A3C60, &unk_10057D910);
      v36 = String.init<A>(reflecting:)();
      *(v25 + 136) = &type metadata for String;
      *(v25 + 144) = v33;
      *(v25 + 112) = v36;
      *(v25 + 120) = v37;
      v38 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("%@ serviceProviderUUID: %@ carrierPhoneNumbers: %@", 50, 2, &_mh_execute_header, v24, v38, v25);

      result = v21;
      v18 = v78;
    }

    while (v21 != v20);

    v9 = v72;
    v3 = v73;
    v6 = v70;
    a1 = v71;
    v14 = v69;
    v15 = &selRef_tu_predicateForConversationLinkDescriptorsWithActivated_;
LABEL_10:
    v39 = [a1 localSenderIdentityUUID];
    if (v39)
    {
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v3 + 32))(v9, v6, v81);
      v40 = [v14 v15[376]];
      v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      __chkstk_darwin(v42);
      v68[-2] = v9;
      sub_1002CB280(sub_1003B07F4, &v68[-4], v41);
      v39 = v43;

      if (v39)
      {
        v44 = [v39 carrierPhoneNumbers];

        v45 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v46 = [a1 remoteMember];
        if (v46)
        {
          v47 = v46;
          v48 = [v46 handle];

          v49 = [v48 tuHandle];
          if (v49)
          {
            v72 = v9;
            v73 = v3;
            v51 = sub_100004778(v50);
            v52 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
            v53 = sub_100009F24(v52);
            *(v53 + 16) = xmmword_10057D6A0;
            *(v53 + 56) = type metadata accessor for ContactsCallFilter();
            *(v53 + 64) = sub_1003B07A0();
            v54 = v80;
            *(v53 + 32) = v80;
            *(v53 + 96) = sub_10026D814(&unk_1006A3C60, &unk_10057D910);
            *(v53 + 104) = sub_1003B0814();
            *(v53 + 72) = v45;
            v55 = v54;

            v56 = static os_log_type_t.default.getter();
            os_log(_:dso:log:type:_:)("%@ carrierBundleNumbers=%@", 26, 2, &_mh_execute_header, v51, v56, v53);

            v57 = 0;
            v58 = *(v45 + 16);
            for (i = (v45 + 40); ; i += 2)
            {
              if (v58 == v57)
              {

                v39 = 0;
                goto LABEL_28;
              }

              if (v57 >= *(v45 + 16))
              {
                break;
              }

              v61 = *(i - 1);
              v60 = *i;

              v62 = [v49 value];
              v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v65 = v64;

              if (v61 == v63 && v60 == v65)
              {

                goto LABEL_27;
              }

              v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v67)
              {

LABEL_27:

                v39 = 1;
LABEL_28:
                v9 = v72;
                v3 = v73;
                goto LABEL_29;
              }

              ++v57;
            }

            __break(1u);
            goto LABEL_32;
          }
        }

        v39 = 0;
      }

LABEL_29:
      (*(v3 + 8))(v9, v81);
    }

    return v39;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1003B04E0(id *a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = static UUID.== infix(_:_:)();
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

id sub_1003B05EC(uint64_t a1)
{
  v3 = OBJC_IVAR___CSDContactsCallFilter_contactStore;
  *&v1[v3] = [objc_opt_self() tu_contactStore];
  v4 = OBJC_IVAR___CSDContactsCallFilter_appleCareHandles;
  *&v1[v4] = [objc_allocWithZone(TUContactsDataProviderAppleCareHandles) init];
  v5 = OBJC_IVAR___CSDContactsCallFilter_carrierBundleController;
  *&v1[v5] = [objc_allocWithZone(CSDCarrierBundleProviderController) init];
  v8.receiver = v1;
  v8.super_class = type metadata accessor for ContactsCallFilter();
  v6 = objc_msgSendSuper2(&v8, "initWithFeatureFlags:", a1);
  swift_unknownObjectRelease();
  return v6;
}

id sub_1003B06EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContactsCallFilter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1003B07A0()
{
  result = qword_1006A8948;
  if (!qword_1006A8948)
  {
    type metadata accessor for ContactsCallFilter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A8948);
  }

  return result;
}

unint64_t sub_1003B0814()
{
  result = qword_1006A8950;
  if (!qword_1006A8950)
  {
    sub_10026DCB4(&unk_1006A3C60, &unk_10057D910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A8950);
  }

  return result;
}

unint64_t sub_1003B0878()
{
  result = qword_1006AB490;
  if (!qword_1006AB490)
  {
    sub_100006AF0(255, &qword_1006AB5C0, CXCallUpdate_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AB490);
  }

  return result;
}

id sub_1003B08E0()
{
  result = [objc_opt_self() sharedAVSystemController];
  if (!result)
  {
    if (qword_1006A0B60 != -1)
    {
      sub_100008478(&qword_1006A0B60);
    }

    v1 = type metadata accessor for Logger();
    v2 = sub_100022D5C(v1, qword_1006BA6A0);
    v3 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Analytics: Failed to access shared AVSystemController", v4, 2u);
      sub_100005F40(v4);
    }

    return 0;
  }

  return result;
}

void (*sub_1003B09C0())(uint64_t)
{
  sub_100006AF0(0, &unk_1006A39B0, NSObject_ptr);
  Dictionary.init(dictionaryLiteral:)();
  sub_100017DAC(objc_allocWithZone(NSNumber));
  sub_10001634C();
  sub_100011470();
  v1 = sub_10000EAEC();
  sub_10004FDE0(v1, v2, v3, v4, v5, v6, v7, v8, v76, v85);
  v9 = sub_10002F6B8();
  sub_100017DAC(v9);
  sub_10001634C();
  sub_100011470();
  v10 = sub_10000EAEC();
  sub_10004FDE0(v10, v11, v12, v13, v14, v15, v16, v17, v77, v86);
  v18 = sub_10002F6B8();
  sub_100017DAC(v18);
  sub_10001634C();
  sub_100011470();
  v19 = sub_10000EAEC();
  sub_10004FDE0(v19, 0xD000000000000011, v20, v21, v22, v23, v24, v25, v78, v87);
  v26 = [objc_allocWithZone(NSNumber) initWithInteger:sub_1003B0D08()];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10004FDE0(v26, 0xD000000000000016, 0x8000000100571510, isUniquelyReferenced_nonNull_native, v28, v29, v30, v31, v79, v88);
  v32 = sub_10002F6B8();
  sub_100017DAC(v32);
  sub_10001634C();
  sub_100011470();
  v33 = sub_10000EAEC();
  sub_10004FDE0(v33, v34, v35, v36, v37, v38, v39, v40, v80, v89);
  v41 = sub_10002F6B8();
  sub_100017DAC(v41);
  sub_10001634C();
  sub_100011470();
  v42 = sub_10000EAEC();
  sub_10004FDE0(v42, v43, v44, v45, v46, v47, v48, v49, v81, v90);
  [objc_allocWithZone(NSNumber) initWithInt:*(v0 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_endReason)];
  sub_10001634C();
  sub_100011470();
  v50 = sub_10000EAEC();
  sub_10004FDE0(v50, v51, 0xE90000000000006ELL, v52, v53, v54, v55, v56, v82, v91);
  v57 = [objc_allocWithZone(NSNumber) initWithDouble:*(v0 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_confidenceScore)];
  swift_isUniquelyReferenced_nonNull_native();
  sub_100011470();
  sub_10004FDE0(v57, 0x6E656469666E6F43, 0xEF65726F63536563, v58, v59, v60, v61, v62, v83, v92);
  v63 = v93;
  v64 = sub_1003B08E0();
  if (v64)
  {
    v65 = v64;
    v66 = [v64 getSilentMode];

    [objc_allocWithZone(NSNumber) initWithBool:v66];
    swift_isUniquelyReferenced_nonNull_native();
    v67 = sub_10000EAEC();
    sub_10004FDE0(v67, v68, v69, v70, v71, v72, v73, v74, v84, v93);
    return v94;
  }

  return v63;
}

uint64_t sub_1003B0D08()
{
  v1 = *(v0 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_recommendation);
  switch(v1)
  {
    case 3:
      if ((*(v0 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_observation) - 3) < 2)
      {
        return 2;
      }

      break;
    case 1:
      v2 = *(v0 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_observation);
      if (v2 < 4)
      {
        v3 = &unk_100584A80;
        return v3[v2];
      }

      break;
    case 0:
      v2 = *(v0 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_observation);
      if (v2 < 4)
      {
        v3 = &unk_100584A60;
        return v3[v2];
      }

      break;
  }

  return 0;
}

id sub_1003B0D94()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_lock;
  sub_10026D814(&qword_1006A89F8, &qword_100584A48);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *&v1[v2] = v3;
  *&v1[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_durationForUserToActivateHold] = 0;
  *&v1[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_durationCallRingingToPickup] = 0;
  *&v1[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_durationOfSmartHoldActive] = 0;
  *&v1[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_observation] = 4;
  *&v1[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_recommendation] = 2;
  v4 = type metadata accessor for Date();
  sub_100007928();
  sub_10000AF74(v5, v6, v7, v4);
  sub_100007928();
  sub_10000AF74(v8, v9, v10, v4);
  v1[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_smartHoldingActivatedInCall] = 0;
  *&v1[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_smartHoldingStoppedTask] = 0;
  sub_100007928();
  sub_10000AF74(v11, v12, v13, v4);
  *&v1[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_confidenceScore] = 0;
  v14 = &v1[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_trackingCallUUID];
  *v14 = 0;
  v14[1] = 0;
  *&v1[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_delayCallPickedUpAndSentBack] = 10;
  *&v1[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_endReason] = 0;
  v15 = &v1[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_remotePhoneNumber];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v1[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_remotePhoneNumberCountryCode];
  *v16 = 0;
  v16[1] = 0;
  v17 = OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_biomeStream;
  v18 = type metadata accessor for HoldAssistBiomeStream();
  sub_10000C1AC(v18);
  *&v1[v17] = sub_100323AE4();
  v24.receiver = v1;
  v24.super_class = type metadata accessor for SmartHoldingAnalyticsHelper(0);
  v19 = objc_msgSendSuper2(&v24, "init");
  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 defaultCenter];
  [v22 addObserver:v21 selector:"handleCallStatusChangedWithNotification:" name:TUCallCenterCallStatusChangedNotification object:0];

  return v21;
}

void sub_1003B0FC8(void *a1)
{
  v3 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v4 = sub_100007BF0(v3);
  v5 = __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v34 - v8;
  if ([a1 object])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
  }

  v38[0] = v36;
  v38[1] = v37;
  if (!*(&v37 + 1))
  {
    sub_1000099A4(v38, &unk_1006A2D10, &unk_10057D940);
    return;
  }

  sub_100006AF0(0, &qword_1006A34B0, off_1006165E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v10 = v35;
  v11 = (v1 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_trackingCallUUID);
  v12 = *(v1 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_trackingCallUUID + 8);
  if (v12)
  {
    v13 = *v11;

    v14 = [v10 callUUID];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (v13 != v15 || v12 != v17)
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v20 = [v35 callUUID];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    *v11 = v21;
    v11[1] = v23;
  }

LABEL_17:
  v10 = v10;
  if ([v10 status] == 1)
  {
    v24 = OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_callDateConnected;
    swift_beginAccess();
    sub_100270E18(v1 + v24, v9);
    v25 = type metadata accessor for Date();
    v26 = sub_100015468(v9, 1, v25);
    sub_1000099A4(v9, &qword_1006A3C70, &unk_10057EA80);
    if (v26 == 1)
    {
      Date.init()();
      sub_10000AF74(v7, 0, 1, v25);
      sub_100008D34(v1 + v24, v38);
      sub_1003B3734(v7, v1 + v24);
      swift_endAccess();
    }
  }

  if ([v10 status] == 6)
  {
    v27 = [v10 disconnectedReason];
    *(v1 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_endReason) = v27;
    v28 = [v10 disconnectedReason];

    sub_1003B27E8(v28);
    type metadata accessor for Date();
    sub_100007928();
    sub_10000AF74(v29, v30, v31, v32);
    v33 = OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_callDateConnected;
    sub_100008D34(v1 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_callDateConnected, v38);
    sub_1003B3734(v7, v1 + v33);
    swift_endAccess();
    return;
  }

LABEL_23:
}

uint64_t sub_1003B13B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  sub_100007BF0(v10);
  sub_100006688();
  __chkstk_darwin(v11);
  if (qword_1006A0B60 != -1)
  {
    sub_100008478(&qword_1006A0B60);
  }

  v12 = type metadata accessor for Logger();
  v13 = sub_100022D5C(v12, qword_1006BA6A0);
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v37 = a3;
    v15 = swift_slowAlloc();
    v16 = a1;
    v17 = swift_slowAlloc();
    v38 = v17;
    *v15 = 136315138;
    sub_100007CF4();
    *(v15 + 4) = sub_10002741C(0xD00000000000001BLL, v18, &v38);
    _os_log_impl(&_mh_execute_header, v13, v14, "Analytics: %s", v15, 0xCu);
    sub_100009B7C(v17);
    v19 = v17;
    a1 = v16;
    sub_100005F40(v19);
    v20 = v15;
    a3 = v37;
    sub_100005F40(v20);
  }

  sub_100018FC4(OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_remotePhoneNumber);
  *v21 = a1;
  v21[1] = a2;

  v22 = &v4[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_remotePhoneNumberCountryCode];
  *v22 = a3;
  *(v22 + 1) = a4;

  v23 = *&v4[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_smartHoldingStoppedTask];
  if (v23)
  {

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (sub_10000BB44(v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Analytics: Canceling existing submission task", v26, 2u);
      sub_100005F40(v26);
    }

    v27 = *&v5[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_lock];
    __chkstk_darwin(v28);
    *(&v36 - 2) = sub_1003B400C;
    *(&v36 - 1) = v23;
    os_unfair_lock_lock(v27 + 4);
    sub_1003B408C();
    os_unfair_lock_unlock(v27 + 4);
    sub_1003B2DCC();
  }

  else
  {
  }

  type metadata accessor for TaskPriority();
  sub_100007928();
  sub_10000AF74(v29, v30, v31, v32);
  v33 = sub_10000C1AC(&unk_10062C1C8);
  sub_1000172D8(v33);
  v34 = v5;
  sub_10000B9D4();
  sub_1002762F0();
}

uint64_t sub_1003B1728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_1003B1748, 0, 0);
}

void sub_1003B1748()
{
  sub_1000066BC();
  v1 = *(v0 + 24);
  v2 = *(v1 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_lock);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  *(v4 + 16) = sub_1003B4028;
  *(v4 + 24) = v3;
  os_unfair_lock_lock(v2 + 4);
  sub_100008C08();
  sub_1003B408C();
  os_unfair_lock_unlock(v2 + 4);

  if (!v1)
  {

    sub_100009EF4();
    sub_100006984();

    __asm { BRAA            X1, X16 }
  }

  sub_100006984();
}

uint64_t sub_1003B1824(uint64_t a1)
{
  v2 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v22[-v6];
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = __chkstk_darwin(v10);
  v15 = &v22[-v14];
  if ((*(a1 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_smartHoldingActivatedInCall) & 1) == 0)
  {
    *(a1 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_smartHoldingActivatedInCall) = 1;
    *(a1 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_recommendation) = 3;
    v16 = OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_callDateConnected;
    swift_beginAccess();
    sub_100270E18(a1 + v16, v7);
    if (sub_100015468(v7, 1, v8) == 1)
    {
      sub_1000099A4(v7, &qword_1006A3C70, &unk_10057EA80);
LABEL_8:
      Date.init()();
      sub_10000AF74(v5, 0, 1, v8);
      v21 = OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_smartHoldingActivated;
      swift_beginAccess();
      sub_1003B3734(v5, a1 + v21);
      return swift_endAccess();
    }

    (*(v9 + 32))(v15, v7, v8);
    Date.init()();
    Date.timeIntervalSince(_:)();
    v18 = v17;
    v19 = v17;
    v20 = *(v9 + 8);
    v20(v12, v8);
    result = (v20)(v15, v8);
    if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v18 > -9.22337204e18)
    {
      if (v18 < 9.22337204e18)
      {
        *(a1 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_durationForUserToActivateHold) = v18;
        goto LABEL_8;
      }

LABEL_12:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

void sub_1003B1B08()
{
  v1 = *(v0 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_1003B408C();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1003B1B7C()
{
  v1 = v0;
  v2 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  sub_100007BF0(v2);
  sub_100006688();
  __chkstk_darwin(v3);
  if (qword_1006A0B60 != -1)
  {
    sub_100008478(&qword_1006A0B60);
  }

  v4 = type metadata accessor for Logger();
  v5 = sub_100022D5C(v4, qword_1006BA6A0);
  v6 = static os_log_type_t.default.getter();
  if (sub_10000BB44(v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    sub_100007CF4();
    *(v7 + 4) = sub_10002741C(0xD000000000000012, v9, &v20);
    sub_100005FCC(&_mh_execute_header, v10, v11, "Analytics: %s");
    sub_100009B7C(v8);
    sub_100005F40(v8);
    sub_100005F40(v7);
  }

  type metadata accessor for TaskPriority();
  sub_100007928();
  sub_10000AF74(v12, v13, v14, v15);
  v16 = sub_10000C1AC(&unk_10062C1A0);
  sub_1000172D8(v16);
  v17 = v1;
  sub_10000B9D4();
  sub_100463218();
  *&v17[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_smartHoldingStoppedTask] = v18;
}

uint64_t sub_1003B1D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_1003B1DE8, 0, 0);
}

uint64_t sub_1003B1DE8()
{
  sub_1000066BC();
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_lock);
  v0[6] = v2;
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  *(v4 + 16) = sub_1003B3EA0;
  *(v4 + 24) = v3;
  os_unfair_lock_lock(v2 + 4);
  sub_1003B408C();
  os_unfair_lock_unlock(v2 + 4);

  static Clock<>.continuous.getter();
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1003B1F68;
  sub_100007BBC();

  return sub_1003B3858();
}

uint64_t sub_1003B1F68()
{
  sub_10000C698();
  sub_100005F18();
  v3 = v2[5];
  v4 = v2[4];
  v5 = v2[3];
  v6 = *v1;
  sub_100008060();
  *v7 = v6;
  *(v8 + 64) = v0;

  (*(v4 + 8))(v3, v5);
  sub_100007BBC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1003B20C4()
{
  sub_1000066BC();
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[2];
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  v5 = swift_task_alloc();
  *(v5 + 16) = sub_1003B3EBC;
  *(v5 + 24) = v4;
  os_unfair_lock_lock(v2 + 4);
  sub_1003B408C();
  v6 = v0[6];
  if (v1)
  {
    os_unfair_lock_unlock(v6 + 4);
  }

  else
  {
    os_unfair_lock_unlock(v6 + 4);

    sub_100009EF4();

    return v8();
  }
}

uint64_t sub_1003B21D0()
{
  sub_100006810();

  sub_100009EF4();

  return v0();
}

uint64_t sub_1003B222C(uint64_t a1)
{
  v3 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v30 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v31 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v30 - v14;
  __chkstk_darwin(v13);
  v17 = &v30 - v16;
  v18 = OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_userRequiresAttentionStarted;
  swift_beginAccess();
  sub_100270E18(a1 + v18, v8);
  if (sub_100015468(v8, 1, v9) == 1)
  {
    sub_1000099A4(v8, &qword_1006A3C70, &unk_10057EA80);
    goto LABEL_7;
  }

  v30 = v1;
  (*(v10 + 32))(v17, v8, v9);
  Date.init()();
  Date.timeIntervalSince(_:)();
  v20 = v19;
  v21 = v19;
  v22 = *(v10 + 8);
  v22(v15, v9);
  result = (v22)(v17, v9);
  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(a1 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_durationCallRingingToPickup) = v20;
LABEL_7:
  v24 = OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_smartHoldingActivated;
  swift_beginAccess();
  sub_100270E18(a1 + v24, v6);
  if (sub_100015468(v6, 1, v9) == 1)
  {
    result = sub_1000099A4(v6, &qword_1006A3C70, &unk_10057EA80);
LABEL_13:
    *(a1 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_observation) = 0;
    return result;
  }

  v25 = v31;
  (*(v10 + 32))(v31, v6, v9);
  Date.init()();
  Date.timeIntervalSince(_:)();
  v27 = v26;
  v28 = v26;
  v29 = *(v10 + 8);
  v29(v15, v9);
  result = (v29)(v25, v9);
  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_16;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v27 < 9.22337204e18)
  {
    *(a1 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_durationOfSmartHoldActive) = v27;
    goto LABEL_13;
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_1003B25E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_1003B408C();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1003B2658(uint64_t a1, double a2)
{
  v4 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_userRequiresAttentionStarted;
  swift_beginAccess();
  sub_100270E18(a1 + v10, v9);
  v11 = type metadata accessor for Date();
  v12 = sub_100015468(v9, 1, v11);
  result = sub_1000099A4(v9, &qword_1006A3C70, &unk_10057EA80);
  if (v12 == 1)
  {
    Date.init()();
    sub_10000AF74(v7, 0, 1, v11);
    swift_beginAccess();
    sub_1003B3734(v7, a1 + v10);
    result = swift_endAccess();
    *(a1 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_recommendation) = 0;
    *(a1 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_confidenceScore) = a2;
  }

  return result;
}

uint64_t sub_1003B27E8(int a1)
{
  v2 = v1;
  v4 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  sub_100007BF0(v4);
  sub_100006688();
  __chkstk_darwin(v5);
  if (qword_1006A0B60 != -1)
  {
    sub_100008478(&qword_1006A0B60);
  }

  v6 = type metadata accessor for Logger();
  v7 = sub_100022D5C(v6, qword_1006BA6A0);
  v8 = static os_log_type_t.default.getter();
  if (sub_10000BB44(v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315394;
    sub_100007CF4();
    *(v9 + 4) = sub_10002741C(0xD00000000000001DLL, v11, &v22);
    *(v9 + 12) = 2080;
    type metadata accessor for TUCallDisconnectedReason(0);
    v12 = String.init<A>(reflecting:)();
    v14 = sub_10002741C(v12, v13, &v22);

    *(v9 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "Analytics: %s call disconnected with reason: %s", v9, 0x16u);
    swift_arrayDestroy();
    sub_100005F40(v10);
    sub_100005F40(v9);
  }

  type metadata accessor for TaskPriority();
  sub_100007928();
  sub_10000AF74(v15, v16, v17, v18);
  v19 = swift_allocObject();
  *(sub_1000172D8(v19) + 10) = a1;
  v20 = v2;
  sub_10000B9D4();
  sub_1002762F0();
}

uint64_t sub_1003B29F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(v5 + 32) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a4;
  return _swift_task_switch(sub_1003B2A1C, 0, 0);
}

void sub_1003B2A1C()
{
  sub_1000066BC();
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);
  v3 = *(v2 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_lock);
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  *(v5 + 16) = sub_1003B3DF0;
  *(v5 + 24) = v4;
  os_unfair_lock_lock(v3 + 4);
  sub_100008C08();
  sub_1003B408C();
  os_unfair_lock_unlock(v3 + 4);

  if (!v1)
  {

    sub_100009EF4();
    sub_100006984();

    __asm { BRAA            X1, X16 }
  }

  sub_100006984();
}

uint64_t sub_1003B2B00(uint64_t a1, unsigned int a2)
{
  v4 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v14 = &v23 - v13;
  if (*(a1 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_smartHoldingActivatedInCall) == 1)
  {
    if (a2 < 5)
    {
LABEL_3:
      v15 = 2;
      goto LABEL_4;
    }

    if (a2 == 6)
    {
      v15 = 1;
    }

    else
    {
      if (a2 == 41)
      {
        goto LABEL_3;
      }

      v15 = 5;
    }

LABEL_4:
    *(a1 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_observation) = v15;
    v16 = OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_smartHoldingActivated;
    swift_beginAccess();
    sub_100270E18(a1 + v16, v6);
    if (sub_100015468(v6, 1, v7) == 1)
    {
      sub_1000099A4(v6, &qword_1006A3C70, &unk_10057EA80);
LABEL_10:
      sub_1003B305C();
      v21 = (a1 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_remotePhoneNumber);
      *v21 = 0;
      v21[1] = 0;

      v22 = (a1 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_remotePhoneNumberCountryCode);
      *v22 = 0;
      v22[1] = 0;
    }

    (*(v8 + 32))(v14, v6, v7);
    Date.init()();
    Date.timeIntervalSince(_:)();
    v18 = v17;
    v19 = v17;
    v20 = *(v8 + 8);
    v20(v11, v7);
    result = (v20)(v14, v7);
    if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v18 > -9.22337204e18)
    {
      if (v18 < 9.22337204e18)
      {
        *(a1 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_durationOfSmartHoldActive) = v18;
        goto LABEL_10;
      }

LABEL_18:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_1003B2DCC()
{
  v1 = v0;
  v2 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  sub_100007BF0(v2);
  sub_100006688();
  __chkstk_darwin(v3);
  if (qword_1006A0B60 != -1)
  {
    sub_100008478(&qword_1006A0B60);
  }

  v4 = type metadata accessor for Logger();
  v5 = sub_100022D5C(v4, qword_1006BA6A0);
  v6 = static os_log_type_t.default.getter();
  if (sub_10000BB44(v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    sub_100007CF4();
    *(v7 + 4) = sub_10002741C(0xD000000000000014, v9, &v19);
    sub_100005FCC(&_mh_execute_header, v10, v11, "Analytics: %s");
    sub_100009B7C(v8);
    sub_100005F40(v8);
    sub_100005F40(v7);
  }

  type metadata accessor for TaskPriority();
  sub_100007928();
  sub_10000AF74(v12, v13, v14, v15);
  v16 = sub_10000C1AC(&unk_10062C150);
  sub_1000172D8(v16);
  v17 = v1;
  sub_10000B9D4();
  sub_1002762F0();
}

uint64_t sub_1003B2F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_1003B2F80, 0, 0);
}

void sub_1003B2F80()
{
  sub_1000066BC();
  v1 = *(v0 + 24);
  v2 = *(v1 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_lock);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  *(v4 + 16) = sub_1003B3CE8;
  *(v4 + 24) = v3;
  os_unfair_lock_lock(v2 + 4);
  sub_100008C08();
  sub_1003B3D24();
  os_unfair_lock_unlock(v2 + 4);

  if (!v1)
  {

    sub_100009EF4();
    sub_100006984();

    __asm { BRAA            X1, X16 }
  }

  sub_100006984();
}

void sub_1003B305C()
{
  if (*(v0 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_smartHoldingActivatedInCall) == 1)
  {
    sub_100007CF4();
    v1 = String._bridgeToObjectiveC()();
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    v17[4] = sub_1003B37A4;
    v17[5] = v2;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 1107296256;
    v17[2] = sub_1000518F8;
    v17[3] = &unk_10062C118;
    v3 = _Block_copy(v17);
    v4 = v0;

    AnalyticsSendEventLazy();
    _Block_release(v3);

    v5 = *&v4[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_remotePhoneNumber + 8];
    if (v5)
    {
      if (*&v4[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_biomeStream])
      {
        v6 = *&v4[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_remotePhoneNumber];
        v7 = *&v4[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_remotePhoneNumberCountryCode];
        v8 = *&v4[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_remotePhoneNumberCountryCode + 8];
        v9 = *&v4[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_durationOfSmartHoldActive];
        v10 = *&v4[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_observation];
        v11 = *&v4[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_recommendation];
        v12 = sub_1003B0D08();

        sub_10032463C(v6, v5, v7, v8, v9, v10, v11, v12);
      }
    }

    else
    {
      if (qword_1006A0B60 != -1)
      {
        sub_100008478(&qword_1006A0B60);
      }

      v13 = type metadata accessor for Logger();
      v14 = sub_100022D5C(v13, qword_1006BA6A0);
      v15 = static os_log_type_t.fault.getter();
      if (sub_10000BB44(v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Analytics: Remote phone number is nil", v16, 2u);
        sub_100005F40(v16);
      }
    }

    sub_1003B32C0();
  }
}

uint64_t sub_1003B32C0()
{
  v1 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  sub_100007BF0(v1);
  sub_100006688();
  __chkstk_darwin(v2);
  v4 = &v17[-v3 - 8];
  *(v0 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_durationForUserToActivateHold) = 0;
  *(v0 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_durationCallRingingToPickup) = 0;
  *(v0 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_durationOfSmartHoldActive) = 0;
  *(v0 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_observation) = 4;
  *(v0 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_recommendation) = 2;
  *(v0 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_smartHoldingActivatedInCall) = 0;
  v5 = type metadata accessor for Date();
  sub_100007928();
  sub_10000AF74(v6, v7, v8, v5);
  v9 = OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_userRequiresAttentionStarted;
  sub_100008D34(v0 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_userRequiresAttentionStarted, v17);
  sub_1003B3734(v4, v0 + v9);
  swift_endAccess();
  sub_100007928();
  sub_10000AF74(v10, v11, v12, v5);
  v13 = OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_smartHoldingActivated;
  sub_100008D34(v0 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_smartHoldingActivated, v17);
  sub_1003B3734(v4, v0 + v13);
  swift_endAccess();
  *(v0 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_smartHoldingStoppedTask) = 0;

  v14 = (v0 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_trackingCallUUID);
  *v14 = 0;
  v14[1] = 0;
}

id sub_1003B3428()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmartHoldingAnalyticsHelper(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SmartHoldingAnalyticsHelper(uint64_t a1)
{
  result = qword_1006A89C8;
  if (!qword_1006A89C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003B357C(uint64_t a1)
{
  sub_100316450(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1003B3688()
{
  result = qword_1006A89D8;
  if (!qword_1006A89D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A89D8);
  }

  return result;
}

unint64_t sub_1003B36E0()
{
  result = qword_1006A89E0;
  if (!qword_1006A89E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A89E0);
  }

  return result;
}

uint64_t sub_1003B3734(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003B37C8()
{
  sub_10000C698();
  sub_100035BB0();
  v1 = swift_task_alloc();
  v2 = sub_10000A58C(v1);
  *v2 = v3;
  v4 = sub_10000A2DC(v2);

  return sub_1003B2F60(v4, v5, v6, v0);
}

uint64_t sub_1003B3858()
{
  sub_1000066BC();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  *(v1 + 56) = v0;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v1 + 64) = v12;
  *(v1 + 72) = *(v12 - 8);
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 40) = v11;
  *(v1 + 48) = v9;
  *(v1 + 16) = v7;
  *(v1 + 24) = v5;
  *(v1 + 32) = v3 & 1;
  sub_100007BBC();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_1003B3950()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_1003B3EE8(&qword_1006A89E8, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1003B3EE8(&qword_1006A89F0, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1003B3AE0;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_1003B3AE0()
{
  sub_1000066BC();
  sub_100005F18();
  v3 = v2;
  v4 = v2[12];
  v5 = v2[11];
  v6 = v2[8];
  v7 = *v1;
  sub_100008060();
  *v8 = v7;
  v3[15] = v0;

  v4(v5, v6);
  if (v0)
  {
    sub_100007BBC();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {

    sub_100009EF4();

    return v12();
  }
}

uint64_t sub_1003B3C84()
{
  sub_100006810();

  sub_100009EF4();

  return v0();
}

uint64_t sub_1003B3D4C()
{
  sub_1000066BC();
  v0 = swift_task_alloc();
  v1 = sub_10000A58C(v0);
  *v1 = v2;
  sub_10000A2DC(v1);
  sub_100006984();

  return sub_1003B29F8(v3, v4, v5, v6, v7);
}

uint64_t sub_1003B3E10()
{
  sub_10000C698();
  sub_100035BB0();
  v1 = swift_task_alloc();
  v2 = sub_10000A58C(v1);
  *v2 = v3;
  v4 = sub_10000A2DC(v2);

  return sub_1003B1D28(v4, v5, v6, v0);
}

uint64_t sub_1003B3EE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003B3F30()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t sub_1003B3F7C()
{
  sub_10000C698();
  sub_100035BB0();
  v1 = swift_task_alloc();
  v2 = sub_10000A58C(v1);
  *v2 = v3;
  v4 = sub_10000A2DC(v2);

  return sub_1003B1728(v4, v5, v6, v0);
}

double sub_1003B4044()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  *(v1 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_recommendation) = 1;
  *(v1 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_confidenceScore) = result;
  return result;
}

uint64_t sub_1003B40A4()
{
  v0 = type metadata accessor for Logger();
  sub_1002861B8(v0, qword_1006BA568);
  sub_10000AF9C(v0, qword_1006BA568);
  if (qword_1006A0AA0 != -1)
  {
    swift_once();
  }

  v1 = qword_1006BA380;
  return Logger.init(_:)();
}

uint64_t sub_1003B4158()
{
  v0 = type metadata accessor for Logger();
  sub_1002861B8(v0, qword_1006BA598);
  sub_10000A2F4();
  return sub_1000172E8();
}

uint64_t sub_1003B41CC()
{
  v0 = type metadata accessor for Logger();
  sub_1002861B8(v0, qword_1006BA5C8);
  sub_10000A2F4();
  return sub_1000172E8();
}

uint64_t sub_1003B4238()
{
  v0 = type metadata accessor for Logger();
  sub_1002861B8(v0, qword_1006BA5F8);
  sub_10000A2F4();
  return sub_10001048C();
}

uint64_t sub_1003B4388()
{
  v0 = type metadata accessor for Logger();
  sub_1002861B8(v0, qword_1006BA6B8);
  sub_10000AF9C(v0, qword_1006BA6B8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1003B4430()
{
  v0 = type metadata accessor for Logger();
  sub_1002861B8(v0, qword_1006BA6E8);
  sub_10000A2F4();
  return sub_10001048C();
}

uint64_t sub_1003B4484()
{
  v0 = type metadata accessor for Logger();
  sub_1002861B8(v0, qword_1006BA700);
  sub_10000A2F4();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1003B4514(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  sub_1002861B8(v5, a2);
  sub_10000AF9C(v5, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1003B458C(uint64_t a1)
{
  result = static os_log_type_t.error.getter();
  static os_log_type_t.errorWithState = result | 0x80;
  return result;
}

char *os_log_type_t.errorWithState.unsafeMutableAddressor()
{
  if (qword_1006A0B90 != -1)
  {
    sub_1000086E4(&qword_1006A0B90);
  }

  return &static os_log_type_t.errorWithState;
}

uint64_t static os_log_type_t.errorWithState.getter()
{
  if (qword_1006A0B90 != -1)
  {
    sub_1000086E4(&qword_1006A0B90);
  }

  swift_beginAccess();
  return static os_log_type_t.errorWithState;
}

uint64_t static os_log_type_t.errorWithState.setter(char a1)
{
  if (qword_1006A0B90 != -1)
  {
    sub_1000086E4(&qword_1006A0B90);
  }

  result = swift_beginAccess();
  static os_log_type_t.errorWithState = a1;
  return result;
}

uint64_t (*static os_log_type_t.errorWithState.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1006A0B90 != -1)
  {
    sub_1000086E4(&qword_1006A0B90);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

char *sub_1003B4734(char *__src, char *__dst, uint64_t a3)
{
  if (__dst)
  {
    return strncpy(__dst, __src, a3 - __dst);
  }

  __break(1u);
  return __src;
}

uint64_t sub_1003B4764@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1003B4E10(a2, a3);
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1003B4794(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  v38[0] = a1;
  v38[1] = a2;
  *&v41 = a1;
  *(&v41 + 1) = a2;

  sub_10026D814(&qword_1006A8A20, &qword_100584AA0);
  if (swift_dynamicCast())
  {
    sub_10002F0C8(v39, &v42);
    sub_100009B14(&v42, v43);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v39[0] = v41;
    sub_100009B7C(&v42);
    goto LABEL_56;
  }

  v40 = 0;
  memset(v39, 0, sizeof(v39));
  sub_1003B5690(v39);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_60;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v39[0] = a1;
    *(&v39[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v5 = v39;
    v6 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = _StringObject.sharedUTF8.getter();
  }

  sub_1003B4F44(v5, v6, &v42);
  v7 = *(&v42 + 1);
  v8 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    v39[0] = v42;
    goto LABEL_56;
  }

LABEL_9:
  *&v39[0] = Data._Representation.init(count:)();
  *(&v39[0] + 1) = v9;
  __chkstk_darwin(*&v39[0]);
  v33[2] = v38;
  v10 = sub_1003B5060(sub_1003B5730, v33);
  v12 = *(&v39[0] + 1) >> 62;
  v13 = v10;
  v15 = v14;
  v17 = v16;
  v18 = BYTE14(v39[0]);
  switch(*(&v39[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v19) = DWORD1(v39[0]) - LODWORD(v39[0]);
      if (__OFSUB__(DWORD1(v39[0]), v39[0]))
      {
        goto LABEL_63;
      }

      v19 = v19;
LABEL_19:
      if (v11 == v19)
      {
        goto LABEL_20;
      }

      if (v12 == 2)
      {
        v18 = *(*&v39[0] + 24);
      }

      else if (v12 == 1)
      {
        v18 = *&v39[0] >> 32;
      }

      goto LABEL_53;
    case 2:
      v21 = *(*&v39[0] + 16);
      v20 = *(*&v39[0] + 24);
      v22 = __OFSUB__(v20, v21);
      v19 = v20 - v21;
      if (!v22)
      {
        goto LABEL_19;
      }

      __break(1u);
LABEL_15:
      if (v11)
      {
        v18 = 0;
LABEL_53:
        if (v18 < v11)
        {
          __break(1u);
LABEL_63:
          __break(1u);
        }

        Data._Representation.replaceSubrange(_:with:count:)();
        goto LABEL_55;
      }

LABEL_20:
      v33[4] = v4;
      v34 = v8;
      v35 = v7;
      LOBYTE(v23) = 0;
      if ((v15 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(v15) & 0xF;
      }

      else
      {
        v24 = v10 & 0xFFFFFFFFFFFFLL;
      }

      v25 = (v10 >> 59) & 1;
      if ((v15 & 0x1000000000000000) == 0)
      {
        LOBYTE(v25) = 1;
      }

      v26 = 4 << v25;
      v36 = (v15 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v37 = v15 & 0xFFFFFFFFFFFFFFLL;
      *(&v41 + 7) = 0;
      *&v41 = 0;
      break;
    case 3:
      goto LABEL_15;
    default:
      v19 = BYTE14(v39[0]);
      goto LABEL_19;
  }

  while (4 * v24 != v17 >> 14)
  {
    v4 = v17 & 0xC;
    v27 = v17;
    if (v4 == v26)
    {
      v27 = sub_100420EEC(v17, v13, v15);
    }

    v28 = v27 >> 16;
    if (v27 >> 16 >= v24)
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      String.UTF8View._foreignCount()();
      v8 = 0;
      v7 = 0xF000000000000000;
      goto LABEL_9;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v30 = String.UTF8View._foreignSubscript(position:)();
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v13;
      *(&v42 + 1) = v37;
      v30 = *(&v42 + v28);
    }

    else
    {
      v29 = v36;
      if ((v13 & 0x1000000000000000) == 0)
      {
        v29 = _StringObject.sharedUTF8.getter();
      }

      v30 = *(v29 + v28);
    }

    if (v4 == v26)
    {
      v17 = sub_100420EEC(v17, v13, v15);
      if ((v15 & 0x1000000000000000) == 0)
      {
LABEL_38:
        v17 = (v17 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_43;
      }
    }

    else if ((v15 & 0x1000000000000000) == 0)
    {
      goto LABEL_38;
    }

    if (v24 <= v17 >> 16)
    {
      goto LABEL_59;
    }

    v17 = String.UTF8View._foreignIndex(after:)();
LABEL_43:
    *(&v41 + v23) = v30;
    v23 = v23 + 1;
    if ((v23 >> 8))
    {
      goto LABEL_58;
    }

    if (v23 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v23) = 0;
    }
  }

  if (!v23)
  {

    sub_100290B6C(v34, v35);
    goto LABEL_56;
  }

  *&v42 = v41;
  *(&v42 + 6) = *(&v41 + 6);
  Data._Representation.append(contentsOf:)();
  sub_100290B6C(v34, v35);
LABEL_55:

LABEL_56:
  v31 = v39[0];
  sub_100290AC4(*&v39[0], *(&v39[0] + 1));

  sub_100049B14(v31, *(&v31 + 1));
  return v31;
}

uint64_t sub_1003B4C8C(uint64_t a1, uint64_t a2)
{
  v12[3] = &type metadata for Data;
  v12[4] = &protocol witness table for Data;
  v12[0] = a1;
  v12[1] = a2;
  v2 = sub_100009B14(v12, &type metadata for Data);
  v3 = *v2;
  v4 = v2[1];
  switch(v4 >> 62)
  {
    case 1uLL:
      v7 = v3 >> 32;
      if (v3 >> 32 < v3)
      {
        __break(1u);
      }

      v6 = v3;
      goto LABEL_8;
    case 2uLL:
      v6 = *(v3 + 16);
      v7 = *(v3 + 24);
LABEL_8:
      sub_1003B55FC(v6, v7, &v11);
      goto LABEL_9;
    case 3uLL:
      memset(v10, 0, 14);
      v5 = v10;
      goto LABEL_5;
    default:
      v10[0] = *v2;
      LOWORD(v10[1]) = v4;
      BYTE2(v10[1]) = BYTE2(v4);
      BYTE3(v10[1]) = BYTE3(v4);
      BYTE4(v10[1]) = BYTE4(v4);
      BYTE5(v10[1]) = BYTE5(v4);
      v5 = v10 + BYTE6(v4);
LABEL_5:
      sub_1003B5424(v10, v5, &v11);
LABEL_9:
      v8 = v11;
      sub_100009B7C(v12);
      return v8;
  }
}

uint64_t sub_1003B4E10(uint64_t a1, uint64_t a2)
{
  v8[3] = &type metadata for UnsafeRawBufferPointer;
  v8[4] = &protocol witness table for UnsafeRawBufferPointer;
  v8[0] = a1;
  v8[1] = a2;
  v2 = sub_100009B14(v8, &type metadata for UnsafeRawBufferPointer);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = Data.InlineData.init(_:)();
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = Data.LargeSlice.init(_:)();
    }

    else
    {
      v6 = Data.InlineSlice.init(_:)();
    }
  }

  else
  {
    v6 = 0;
  }

  sub_100009B7C(v8);
  return v6;
}

uint64_t sub_1003B4ECC()
{
  result = sub_1003B4794(0xD000000000000011, 0x8000000100571680);
  qword_1006A8A00 = result;
  *algn_1006A8A08 = v1;
  return result;
}

uint64_t sub_1003B4F08()
{
  result = sub_1003B4794(0xD000000000000012, 0x8000000100571660);
  qword_1006A8A10 = result;
  *algn_1006A8A18 = v1;
  return result;
}

uint64_t sub_1003B4F44@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = Data.InlineData.init(_:)();
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v8 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_1003B500C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_1003B54E4(sub_1003B578C, v5, a1, a2);
}

uint64_t sub_1003B5060(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v5 = v2;
  v7 = *v2;
  v6 = v2[1];
  switch(v6 >> 62)
  {
    case 1uLL:
      v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_100049B14(v7, v6);
      *v5 = xmmword_10057E760;
      sub_100049B14(0, 0xC000000000000000);
      v13 = v7 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v13 < v7)
      {
        goto LABEL_23;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v7, __DataStorage._offset.getter()))
      {
        goto LABEL_24;
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v14 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v12 = v14;
LABEL_16:
      if (v13 < v7)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v4 = sub_1003B5548(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (v3)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v4 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_100049B14(v7, v6);
      v17 = v7;
      v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *v5 = xmmword_10057E760;
      sub_100049B14(0, 0xC000000000000000);
      Data.LargeSlice.ensureUniqueReference()();
      v7 = v17;
      v10 = sub_1003B5548(*(v17 + 16), *(v17 + 24), a1);
      if (v3)
      {
        v11 = v18 | 0x8000000000000000;
LABEL_18:
        *v5 = v7;
        v5[1] = v11;
      }

      else
      {
        v4 = v10;
        v11 = v18 | 0x8000000000000000;
LABEL_20:
        *v5 = v7;
        v5[1] = v11;
      }

      return v4;
    case 3uLL:
      memset(v19, 0, 15);
      a1(&v17, v19, v19);
      if (!v3)
      {
        return v17;
      }

      return v4;
    default:
      v4 = v7 >> 8;
      sub_100049B14(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        v4 = v17;
      }

      v9 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v5 = v19[0];
      v5[1] = v9;
      return v4;
  }
}

uint64_t sub_1003B5424@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = Data.InlineData.init(_:)();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = Data.LargeSlice.init(_:)();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = Data.InlineSlice.init(_:)();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1003B549C(uint64_t result)
{
  if (result)
  {
    result = _StringGuts.copyUTF8(into:)();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1003B54E4(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_1003B5548(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1003B55FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = __DataStorage._bytes.getter();
  v7 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_1003B5424(v7, v13, a3);
}

uint64_t sub_1003B5690(uint64_t a1)
{
  v2 = sub_10026D814(&qword_1006A8A28, &qword_100584AA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1003B56F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1003B500C(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_1003B574C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1003B549C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ConversationLinkCryptoErrorType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1003B588C()
{
  result = qword_1006A8A30;
  if (!qword_1006A8A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A8A30);
  }

  return result;
}

id sub_1003B58E0()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  sub_100007FDC();
  v4 = v3 - v2;
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  sub_100007FDC();
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  sub_100007FDC();
  sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v31[0] = _swiftEmptyArrayStorage;
  sub_1002C8A5C();
  sub_10026D814(&qword_1006A31B0, &unk_10057E920);
  sub_10026DC50();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  v7 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  swift_getObjectType();
  v28 = [objc_allocWithZone(TUFeatureFlags) init];
  v8 = type metadata accessor for ProtectedAppsObserver();
  v9 = [objc_allocWithZone(v8) init];
  v10 = objc_allocWithZone(type metadata accessor for ProcessObserver());
  v11 = v9;
  v12 = v7;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v14 = [v10 initWithBundleIdentifiers:isa queue:v12];

  v15 = [objc_opt_self() sharedInstance];
  type metadata accessor for CallProviderBundleIDObserver();
  v16 = swift_allocObject();
  v17 = sub_1003B6020(v15, v16);
  v31[3] = v8;
  v31[4] = &off_10062ECA8;
  v31[0] = v11;
  v18 = type metadata accessor for ProtectedAppsUtilities();
  v19 = objc_allocWithZone(v18);
  v20 = sub_10001BDB8(v31, v8);
  __chkstk_darwin(v20);
  sub_100007FDC();
  v23 = (v22 - v21);
  (*(v24 + 16))(v22 - v21);
  v25 = *v23;
  v30[3] = v8;
  v30[4] = &off_10062ECA8;
  v30[0] = v25;
  *&v19[OBJC_IVAR___CSDProtectedAppsUtilities_tuFeatureFlags] = v28;
  sub_100009AB0(v30, &v19[OBJC_IVAR___CSDProtectedAppsUtilities_protectedAppsObserver]);
  *&v19[OBJC_IVAR___CSDProtectedAppsUtilities_protectedAppsUtilitiesQueue] = v12;
  *&v19[OBJC_IVAR___CSDProtectedAppsUtilities_processObserver] = v14;
  *&v19[OBJC_IVAR___CSDProtectedAppsUtilities_providerObserver] = v17;
  v29.receiver = v19;
  v29.super_class = v18;
  v26 = objc_msgSendSuper2(&v29, "init");
  sub_100009B7C(v30);
  sub_100009B7C(v31);

  swift_deallocPartialClassInstance();
  return v26;
}

uint64_t sub_1003B5DA4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR___CSDProtectedAppsUtilities_processObserver);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 fetchCurrentProcessStatesForBundleIdentifier:v4];

  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  LOBYTE(v5) = sub_100308274(4, v6);

  *a2 = v5 & 1;
  return result;
}

id sub_1003B5E5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProtectedAppsUtilities();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003B5F30()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));

  return v2;
}

uint64_t sub_1003B5F80()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1003B5FA8()
{
  sub_1003B5F80();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_1003B6020(uint64_t a1, uint64_t a2)
{
  sub_10026D814(&qword_1006A8B68, &qword_100584BD8);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = &_swiftEmptySetSingleton;
  *(a2 + 16) = v4;
  *(a2 + 24) = a1;
  v5 = [objc_opt_self() defaultCenter];
  [v5 addObserver:a2 selector:"handleCallStatusChanged:" name:TUCallCenterCallStatusChangedNotification object:0];

  return a2;
}

__n128 sub_1003B60CC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1003B60E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1003B613C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  sub_1003B6A6C(v3);
  if (v4)
  {
    v5 = objc_opt_self();
    v6 = String._bridgeToObjectiveC()();

    v7 = [v5 normalizedGenericHandleForValue:v6];
LABEL_5:
    v9 = v7;

    goto LABEL_6;
  }

  v8 = [v3 handle];
  if (v8)
  {
    v6 = v8;
    v7 = [v3 handle];
    goto LABEL_5;
  }

  v21 = [v3 remoteParticipantHandles];
  sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
  sub_1002E932C();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = sub_1002E8C08();

LABEL_6:
  v10 = v9;
  v11 = [v3 uniqueProxyIdentifier];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = v3;
  v16 = sub_1003B6A08(v15);
  v17 = [v15 provider];
  v18 = [v15 isBlocked];
  if ([v15 isVideo])
  {
    v19 = 1;
    v20 = v10;
    v10 = v15;
  }

  else
  {
    v19 = [v15 isThirdPartyVideo];
    v20 = v15;
  }

  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = v16;
  *(a2 + 24) = v9;
  *(a2 + 32) = v17;
  *(a2 + 40) = v18;
  *(a2 + 41) = v19;
}

uint64_t sub_1003B6354(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_18;
  }

  v5 = a1[2];
  v6 = *(a2 + 16);
  if (v5)
  {
    if (!v6 || (sub_1003B6784(v5, v6) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v6)
  {
    goto LABEL_18;
  }

  v7 = a1[3];
  v8 = *(a2 + 24);
  if (v7)
  {
    if (!v8)
    {
      goto LABEL_18;
    }

    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    v9 = v8;
    v10 = v7;
    v11 = static NSObject.== infix(_:_:)();

    if ((v11 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v8)
  {
    goto LABEL_18;
  }

  sub_100006AF0(0, &unk_1006A39B0, NSObject_ptr);
  if ((static NSObject.== infix(_:_:)() & 1) != 0 && ((*(a1 + 40) ^ *(a2 + 40)) & 1) == 0)
  {
    v12 = *(a1 + 41) ^ *(a2 + 41) ^ 1;
    return v12 & 1;
  }

LABEL_18:
  v12 = 0;
  return v12 & 1;
}

uint64_t sub_1003B6484()
{
  v1 = v0;
  String.append(_:)(*v0);
  sub_100008704();
  v2._countAndFlagsBits = 0x444955556C6C6163;
  v2._object = 0xE90000000000003DLL;
  String.append(_:)(v2);

  _StringGuts.grow(_:)(22);

  v3._countAndFlagsBits = sub_1002915C4(*(v0 + 16));
  String.append(_:)(v3);

  sub_100008704();
  sub_10000A9B8();
  sub_10000A314();

  v4._countAndFlagsBits = sub_1002915B0(*(v0 + 24));
  String.append(_:)(v4);

  sub_100008704();
  sub_10000A9B8();
  sub_10000A314();

  v5 = [*(v0 + 32) description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10000A314();

  sub_100008704();
  sub_10000A9B8();
  sub_10000A314();

  if (*(v1 + 41))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v1 + 41))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8._countAndFlagsBits = v6;
  v8._object = v7;
  String.append(_:)(v8);

  sub_100008704();

  v9._countAndFlagsBits = 0x656B636F6C427369;
  v9._object = 0xEA00000000003D64;
  String.append(_:)(v9);

  v10._countAndFlagsBits = v6;
  v10._object = v7;
  String.append(_:)(v10);

  sub_100008704();

  v11._countAndFlagsBits = 0x3D6F656469567369;
  v11._object = 0xE800000000000000;
  String.append(_:)(v11);

  v12._countAndFlagsBits = 41;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);

  return 0x72656469766F7270;
}

uint64_t sub_1003B6784(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1003B6838(unint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v7 = a1;
  v8 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    if (a2 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v22 = 0;
      return v22 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v11 = v7 & 0xFFFFFFFFFFFFFF8;
    v12 = (v7 & 0xFFFFFFFFFFFFFF8) + 32;
    v24 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v7 < 0)
    {
      v11 = v7;
    }

    if (v8)
    {
      v12 = v11;
    }

    v13 = a2 & 0xFFFFFFFFFFFFFF8;
    v14 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v23 = a2 & 0xFFFFFFFFFFFFFF8;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v13 = a2;
    }

    if (a2 >> 62)
    {
      v14 = v13;
    }

    if (v12 == v14)
    {
LABEL_31:
      v22 = 1;
      return v22 & 1;
    }

    if (i < 0)
    {
      break;
    }

    a4 = sub_100006AF0(0, a3, a4);
    v25 = v7;
    v15 = v7 & 0xC000000000000001;
    v7 = a2;
    v16 = a2 & 0xC000000000000001;
    v17 = 4;
    a2 = i;
    while (1)
    {
      v18 = v17 - 4;
      v8 = v17 - 3;
      if (__OFADD__(v17 - 4, 1))
      {
        break;
      }

      if (v15)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v18 >= *(v24 + 16))
        {
          goto LABEL_34;
        }

        v19 = *(v25 + 8 * v17);
      }

      a3 = v19;
      if (v16)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v18 >= *(v23 + 16))
        {
          goto LABEL_35;
        }

        v20 = *(v7 + 8 * v17);
      }

      v21 = v20;
      v22 = static NSObject.== infix(_:_:)();

      if (v22)
      {
        ++v17;
        if (v8 != a2)
        {
          continue;
        }
      }

      return v22 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003B6A08(void *a1)
{
  v2 = [a1 contactIdentifiers];

  if (!v2)
  {
    return 0;
  }

  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1003B6A6C(void *a1)
{
  v2 = [a1 callerNameFromNetwork];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id sub_1003B6ADC()
{
  v1 = &v0[OBJC_IVAR____TtC13callservicesd24PodcastRecordingProvider_delegate];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 4) = 0;
  *&v0[OBJC_IVAR____TtC13callservicesd24PodcastRecordingProvider_delegateQueue] = 0;
  v2 = [objc_opt_self() sharedRecorder];
  *&v0[OBJC_IVAR____TtC13callservicesd24PodcastRecordingProvider_recorder] = v2;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for PodcastRecordingProvider();
  return objc_msgSendSuper2(&v4, "init");
}

id sub_1003B6B84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PodcastRecordingProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003B6C38(uint64_t a1)
{
  v2 = sub_10026D814(&qword_1006AAF50, &unk_100584CC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1003B6CA0()
{
  if (qword_1006A0B30 != -1)
  {
    sub_100008720(&qword_1006A0B30);
  }

  v0 = type metadata accessor for Logger();
  sub_10000AF9C(v0, qword_1006BA610);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Configuring AVAudioClient observer", v3, 2u);
    sub_100005F40(v3);
  }

  type metadata accessor for AVAudioClientAudioStateObserver();
  swift_allocObject();
  return sub_1003C5878();
}

uint64_t sub_1003B6D7C()
{
  sub_100009B7C((v0 + 16));

  return _swift_deallocClassInstance(v0, 56, 7);
}

BOOL sub_1003B6DD8()
{
  sub_10001B8C8(v0, &selRef_model);
  if (!v1)
  {
    return 0;
  }

  v2._countAndFlagsBits = 0x5654656C707041;
  v2._object = 0xE700000000000000;
  v3 = String.hasPrefix(_:)(v2);

  return v3;
}

char *sub_1003B6E44(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(type metadata accessor for CallCenterObserver()) init];
  sub_100006AF0(0, &unk_1006A4E40, off_1006166A0);
  v6 = [swift_getObjCClassFromMetadata() sharedInstance];
  v7 = objc_allocWithZone(v2);

  return sub_1003BAC18(a1, v6, v5, a2, v7);
}

id sub_1003B72F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (a3())
  {
    sub_100016034();
    v7[1] = 1107296256;
    v7[2] = sub_1003BB698;
    v7[3] = a4;
    v5 = _Block_copy(v7);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1003B7458()
{
  sub_100005EF4();
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_100007FEC();
  v1 = v0;
  __chkstk_darwin(v2);
  sub_100007FDC();
  v5 = v4 - v3;
  type metadata accessor for OS_dispatch_queue.Attributes();
  sub_100007B98();
  __chkstk_darwin(v6);
  sub_10000A330();
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  sub_10000E4F4();
  sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  sub_10000EAF8();
  sub_10000EE88(v8, v9, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10026D814(&qword_1006A31B0, &unk_10057E920);
  sub_100008434();
  sub_10001000C(v10, &qword_1006A31B0, &unk_10057E920, v11);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v12);
  OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_100005EDC();
}

id sub_1003B7650(uint64_t a1, void *a2)
{
  v3 = v2;
  swift_getObjectType();
  *&v3[OBJC_IVAR___CSDRouteController__routesByUniqueIdentifier] = _swiftEmptyDictionarySingleton;
  *&v3[OBJC_IVAR___CSDRouteController__topOfListRoutesUniqueIdentifiers] = _swiftEmptyArrayStorage;
  sub_10000FAFC(OBJC_IVAR___CSDRouteController_routesDidChangeHandler);
  sub_10000FAFC(OBJC_IVAR___CSDRouteController_pickedRouteDidChangeHandler);
  sub_10000FAFC(OBJC_IVAR___CSDRouteController_routeWasPickedHandler);
  sub_10000FAFC(OBJC_IVAR___CSDRouteController_timedOutPickingRouteHandler);
  v6 = &v3[OBJC_IVAR___CSDRouteController_pendingRouteContext];
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *v6 = 0;
  sub_10000FAFC(OBJC_IVAR___CSDRouteController_pickWhenAvailableRouteIdentifier);
  *&v3[OBJC_IVAR___CSDRouteController_pendingPickedRouteTimeout] = 30;
  *&v3[OBJC_IVAR___CSDRouteController__intelligentRoutingManager] = 0;
  *&v3[OBJC_IVAR___CSDRouteController_currentPickedRoute] = 0;
  *&v3[OBJC_IVAR___CSDRouteController_queue] = a2;
  *&v3[OBJC_IVAR___CSDRouteController_routeProviders] = a1;
  v27.receiver = v3;
  v27.super_class = v7;
  v26 = a2;

  v8 = objc_msgSendSuper2(&v27, "init");
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      ObjectType = swift_getObjectType();
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      *(v14 + 24) = v11;
      v15 = *(*(&v11 + 1) + 24);
      swift_unknownObjectRetain_n();

      v15(sub_100011850, v14, ObjectType, *(&v11 + 1));
      swift_unknownObjectRelease();

      --v9;
    }

    while (v9);
  }

  v16 = objc_opt_self();
  v17 = [v16 defaultCenter];
  sub_1000060B4(v17, v18, v19, v20, TUCallCenterCallStatusChangedNotification);

  v21 = [v16 defaultCenter];
  sub_1000060B4(v21, v22, v23, v24, TUCallCenterVideoCallStatusChangedNotification);

  return v8;
}

void sub_1003B78EC()
{
  sub_100005EF4();
  v18 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_100007FEC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_10000A330();
  type metadata accessor for OS_dispatch_queue.Attributes();
  sub_100007B98();
  __chkstk_darwin(v5);
  sub_10000E4F4();
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  sub_100007FDC();
  v17 = sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  sub_10000EAF8();
  sub_10000EE88(v7, v8, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10026D814(&qword_1006A31B0, &unk_10057E920);
  sub_100008434();
  v11 = sub_10001000C(v9, &qword_1006A31B0, &unk_10057E920, v10);
  sub_10000C808(v11);
  (*(v3 + 104))(v1, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v18);
  v12 = sub_100017DC4(63, 0x8000000100571E40);
  sub_10026D814(&qword_1006A8D30, &qword_100584DB8);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10057D6A0;
  sub_10026D814(&qword_1006A8D18, &qword_100584DA8);
  v14 = objc_allocWithZone(RPCompanionLinkClient);
  v15 = v12;
  *(v13 + 32) = sub_1003B6E44([v14 init], v15);
  *(v13 + 40) = &off_100626248;
  type metadata accessor for LocalAudioRouteProvider();
  v16 = v15;
  *(v13 + 48) = sub_1003EBA6C(v16);
  *(v13 + 56) = &off_10062E3E8;
  objc_allocWithZone(v0);
  sub_1003B7650(v13, v16);
  sub_100005EDC();
}

void sub_1003B7BB4()
{
  sub_100005EF4();
  v16 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_100007FEC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_10000A330();
  type metadata accessor for OS_dispatch_queue.Attributes();
  sub_100007B98();
  __chkstk_darwin(v5);
  sub_10000E4F4();
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  sub_100007FDC();
  sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  sub_10000EAF8();
  sub_10000EE88(v7, v8, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10026D814(&qword_1006A31B0, &unk_10057E920);
  sub_100008434();
  v11 = sub_10001000C(v9, &qword_1006A31B0, &unk_10057E920, v10);
  sub_10000C808(v11);
  (*(v3 + 104))(v1, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v16);
  v12 = sub_100017DC4(74, 0x8000000100571DF0);
  sub_10026D814(&qword_1006A8D30, &qword_100584DB8);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10057D690;
  v14 = objc_allocWithZone(type metadata accessor for PairedHostDeviceRouteProvider());
  v15 = v12;
  *(v13 + 32) = sub_1003D0298(v15);
  *(v13 + 40) = &off_10062D438;
  objc_allocWithZone(v0);
  sub_1003B7650(v13, v15);
  sub_100005EDC();
}

void sub_1003B7E2C()
{
  sub_100005EF4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  __chkstk_darwin(v7);
  sub_10000A330();
  type metadata accessor for DispatchQoS();
  sub_100007FEC();
  __chkstk_darwin(v8);
  sub_10000E4F4();
  v9 = swift_allocObject();
  *(v9 + 16) = v0;
  *(v9 + 24) = v6;
  *(v9 + 32) = v4;
  *(v9 + 40) = v2;
  v21[4] = sub_1003BB57C;
  v21[5] = v9;
  sub_100009FE4();
  v21[1] = 1107296256;
  sub_10000A600();
  v21[2] = v10;
  v21[3] = &unk_10062C658;
  v11 = _Block_copy(v21);
  v12 = v0;

  static DispatchQoS.unspecified.getter();
  sub_10000A814();
  sub_10000EE88(v13, v14, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100008434();
  sub_10001000C(v15, &unk_1006A2960, &unk_10057D6E0, v16);
  sub_10000E9E4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  v17 = sub_100015A08();
  v18(v17);
  v19 = sub_100007C7C();
  v20(v19);

  sub_100005EDC();
}

void sub_1003B805C(char *a1, uint64_t a2, void **a3, int a4)
{
  LODWORD(v79) = a4;
  v81 = a3;
  v74 = type metadata accessor for DispatchWorkItemFlags();
  v78 = *(v74 - 8);
  __chkstk_darwin(v74);
  v76 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for DispatchQoS();
  v75 = *(v77 - 8);
  __chkstk_darwin(v77);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTimeInterval();
  v73 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchWallTime();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v64 - v17;
  v19 = a2;
  v20 = a2;
  v21 = v81;
  v80 = a1;
  sub_10001756C(v20, v81);
  if (v22)
  {
    v25 = v23;
    v26 = v22;
    v27 = &v80[OBJC_IVAR___CSDRouteController_pickWhenAvailableRouteIdentifier];
    if (*&v80[OBJC_IVAR___CSDRouteController_pickWhenAvailableRouteIdentifier + 8])
    {
      v28 = v19;
      v79 = v24;
      if (qword_1006A0AA0 != -1)
      {
        swift_once();
      }

      v78 = qword_1006BA380;
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_10057D6A0;
      v30 = *v27;
      v31 = v27[1];

      v32 = sub_10001E478(v30, v31);
      v34 = v33;

      *(v29 + 56) = &type metadata for String;
      v35 = sub_100009D88();
      *(v29 + 64) = v35;
      *(v29 + 32) = v32;
      *(v29 + 40) = v34;
      aBlock = v28;
      v84 = v81;

      v36 = String.init<A>(reflecting:)();
      *(v29 + 96) = &type metadata for String;
      *(v29 + 104) = v35;
      *(v29 + 72) = v36;
      *(v29 + 80) = v37;
      v38 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Clearing out pickWhenAvailable route identifier %@ because user is picking available route %@", 93, 2, &_mh_execute_header, v78, v38, v29);

      *v27 = 0;
      v27[1] = 0;

      v24 = v79;
    }

    sub_1003B8898(v26, v25, v24);
    swift_unknownObjectRelease();
  }

  else
  {
    v66 = v16;
    v67 = v11;
    v68 = v9;
    v69 = v18;
    v70 = v13;
    v71 = v12;
    v72 = v8;
    v39 = sub_100004778(0);
    v64 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_10057D6A0;
    *(v40 + 56) = &type metadata for String;
    v65 = sub_100009D88();
    *(v40 + 64) = v65;
    *(v40 + 32) = v19;
    *(v40 + 40) = v21;

    v41 = v80;
    sub_100012748();
    v43 = v42;
    *(v40 + 96) = sub_10026D814(&unk_1006A7B70, &qword_100584DB0);
    *(v40 + 104) = sub_10001000C(&qword_1006A8D28, &unk_1006A7B70, &qword_100584DB0, &protocol conformance descriptor for [A]);
    *(v40 + 72) = v43;
    v44 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Could not find route to pick with unique identifier %@. All routes: %@", 70, 2, &_mh_execute_header, v39, v44, v40);

    if (v79)
    {
      if (qword_1006A0AA0 != -1)
      {
        swift_once();
      }

      v45 = qword_1006BA380;
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_10057D690;
      aBlock = v19;
      v84 = v21;

      v47 = String.init<A>(reflecting:)();
      v48 = v65;
      *(v46 + 56) = &type metadata for String;
      *(v46 + 64) = v48;
      *(v46 + 32) = v47;
      *(v46 + 40) = v49;
      v50 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Will pick route identifier %@ when it becomes available to pick", 63, 2, &_mh_execute_header, v45, v50, v46);

      v51 = &v41[OBJC_IVAR___CSDRouteController_pickWhenAvailableRouteIdentifier];
      *v51 = v19;
      v51[1] = v21;

      v79 = *&v41[OBJC_IVAR___CSDRouteController_queue];

      v52 = v66;
      static DispatchWallTime.now()();
      v53 = v67;
      *v67 = 30;
      v54 = v73;
      v55 = v68;
      (*(v73 + 104))(v53, enum case for DispatchTimeInterval.seconds(_:), v68);
      v56 = v69;
      + infix(_:_:)();
      (*(v54 + 8))(v53, v55);
      v57 = v71;
      v81 = *(v70 + 8);
      (v81)(v52, v71);
      v58 = swift_allocObject();
      *(v58 + 16) = v41;
      v87 = sub_1003BB58C;
      v88 = v58;
      aBlock = _NSConcreteStackBlock;
      v84 = 1107296256;
      v85 = sub_100004CEC;
      v86 = &unk_10062C6A8;
      v59 = _Block_copy(&aBlock);
      v60 = v41;
      v61 = v72;
      static DispatchQoS.unspecified.getter();
      v82 = _swiftEmptyArrayStorage;
      sub_10000EE88(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
      sub_10001000C(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0, &protocol conformance descriptor for [A]);
      v62 = v76;
      v63 = v74;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(wallDeadline:qos:flags:execute:)();
      _Block_release(v59);
      (*(v78 + 8))(v62, v63);
      (*(v75 + 8))(v61, v77);
      (v81)(v56, v57);
    }
  }
}

void sub_1003B8898(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *&v4[OBJC_IVAR___CSDRouteController_queue];
  *v11 = v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  ObjectType = swift_getObjectType();
  v15 = *(a3 + 40);
  swift_unknownObjectRetain();
  v16 = a1;
  v49 = ObjectType;
  v15();
  v17 = &v4[OBJC_IVAR___CSDRouteController_pendingRouteContext];
  v18 = *&v4[OBJC_IVAR___CSDRouteController_pendingRouteContext];
  v19 = *&v4[OBJC_IVAR___CSDRouteController_pendingRouteContext + 8];
  *v17 = v16;
  *(v17 + 1) = a2;
  *(v17 + 2) = a3;
  sub_1003BA734(v18, v19);
  v20 = OBJC_IVAR___CSDRouteController_currentPickedRoute;
  v21 = *&v4[OBJC_IVAR___CSDRouteController_currentPickedRoute];
  *&v4[OBJC_IVAR___CSDRouteController_currentPickedRoute] = v16;
  swift_unknownObjectRetain();
  v22 = v16;

  if (!*&v4[v20])
  {
    goto LABEL_5;
  }

  sub_1000192A8();
  v24 = *&v4[v20];
  if (!v24)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v25 = v23;
  v26 = v24;
  sub_1003D5A04(v26);

LABEL_5:
  v50 = v22;
  v51 = a3;
  sub_1000119D4();
  v52 = v4;
  v27 = *&v4[OBJC_IVAR___CSDRouteController_routeProviders];
  v28 = *(v27 + 16);
  if (v28)
  {
    v29 = (v27 + 32);
    do
    {
      v30 = *v29;
      v31 = swift_getObjectType();
      v32 = sub_100342970(v30, v31, &protocol descriptor for DeselectableRouteProvider);
      if (v32)
      {
        v34 = v32 == a2;
      }

      else
      {
        v34 = 1;
      }

      if (!v34)
      {
        v35 = v33;
        v36 = swift_getObjectType();
        v37 = *(v35 + 16);
        swift_unknownObjectRetain();
        v37(v36, v35);
        swift_unknownObjectRelease();
      }

      v29 += 2;
      --v28;
    }

    while (v28);
  }

  type metadata accessor for LocalAudioRouteProvider();
  v38 = swift_dynamicCastClass();
  if (!v38)
  {
    swift_unknownObjectRelease();
    v41 = v51;
    v40 = v52;
    v42 = v50;
    goto LABEL_17;
  }

  v39 = *(v38 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callAudioInterruptionState);
  swift_unknownObjectRelease();
  v41 = v51;
  v40 = v52;
  v42 = v50;
  if (v39 <= 1)
  {
LABEL_17:
    v43 = swift_allocObject();
    v43[2] = v40;
    v43[3] = v42;
    v43[4] = a2;
    v43[5] = v41;
    v44 = *(v41 + 48);
    swift_unknownObjectRetain();
    v45 = v42;
    v46 = v40;
    v44(sub_1003BA774, v43, v49, v41);
  }

  v47 = *&v40[OBJC_IVAR___CSDRouteController_routeWasPickedHandler];
  if (v47)
  {
    v48 = *&v40[OBJC_IVAR___CSDRouteController_routeWasPickedHandler + 8];

    v47(v42);
    sub_1000051F8(v47, v48);
  }
}

uint64_t sub_1003B8C1C(uint64_t result)
{
  v1 = (result + OBJC_IVAR___CSDRouteController_pickWhenAvailableRouteIdentifier);
  if (*(result + OBJC_IVAR___CSDRouteController_pickWhenAvailableRouteIdentifier + 8))
  {
    if (qword_1006A0AA0 != -1)
    {
      swift_once();
    }

    v2 = qword_1006BA380;
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_10057D6A0;
    v4 = *v1;
    v5 = v1[1];

    v6 = sub_10001E478(v4, v5);
    v8 = v7;

    *(v3 + 56) = &type metadata for String;
    v9 = sub_100009D88();
    *(v3 + 64) = v9;
    *(v3 + 32) = v6;
    *(v3 + 40) = v8;
    v10 = String.init<A>(reflecting:)();
    *(v3 + 96) = &type metadata for String;
    *(v3 + 104) = v9;
    *(v3 + 72) = v10;
    *(v3 + 80) = v11;
    v12 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Route identifier %@ did not become available in %@ seconds", 58, 2, &_mh_execute_header, v2, v12, v3);

    *v1 = 0;
    v1[1] = 0;
  }

  return result;
}

uint64_t sub_1003B8DE4(uint64_t result, uint64_t a2)
{
  v2 = *(result + OBJC_IVAR___CSDRouteController_routeProviders);
  v3 = *(v2 + 16);
  if (v3)
  {
    v5 = (v2 + 32);
    do
    {
      v6 = *v5;
      ObjectType = swift_getObjectType();
      result = sub_100342970(v6, ObjectType, &protocol descriptor for PairedHostDeviceRouteTrackingRouteProvider);
      if (result)
      {
        swift_unknownObjectRetain();
        sub_1003D0CE4(a2);
        result = swift_unknownObjectRelease();
      }

      v5 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_1003B8F14(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + OBJC_IVAR___CSDRouteController_queue);
  *v10 = v11;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    goto LABEL_24;
  }

  v13 = v3 + OBJC_IVAR___CSDRouteController_pendingRouteContext;
  v14 = *(v3 + OBJC_IVAR___CSDRouteController_pendingRouteContext);
  if (v14)
  {
    v15 = a1;
    v16 = v14;
    if (![v15 isEqualToRouteIgnoringIsRecommended:v16])
    {

LABEL_20:
      return;
    }

    v35 = v16;
    ObjectType = swift_getObjectType();
    v18 = (*(a3 + 8))(ObjectType, a3);
    v19 = sub_10000B6F4(v18);
    for (i = 0; v19 != i; ++i)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v21 = *(v18 + 8 * i + 32);
      }

      v22 = v21;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        return;
      }

      if ([v21 isCurrentlyPicked])
      {

        sub_100006AF0(0, &qword_1006A2C28, TURoute_ptr);
        v24 = v22;
        v25 = static NSObject.== infix(_:_:)();

        if (v25)
        {

LABEL_19:
          v31 = v35;
          v32 = *v13;
          v33 = *(v13 + 8);
          *(v13 + 8) = 0;
          *(v13 + 16) = 0;
          *v13 = 0;
          sub_1003BA734(v32, v33);
          sub_1000119D4();

          v15 = v22;
          goto LABEL_20;
        }

LABEL_17:
        v26 = sub_100004778(v23);
        v27 = static os_log_type_t.error.getter();
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_10057D690;
        *(v28 + 56) = sub_100006AF0(0, &qword_1006A2C28, TURoute_ptr);
        *(v28 + 64) = sub_100308148();
        *(v28 + 32) = v15;
        os_log(_:dso:log:type:_:)("Timed out waiting for route to become picked: %@", 48, 2, &_mh_execute_header, v26, v27, v28);

        v29 = *(v4 + OBJC_IVAR___CSDRouteController_timedOutPickingRouteHandler);
        if (v29)
        {
          v30 = *(v4 + OBJC_IVAR___CSDRouteController_timedOutPickingRouteHandler + 8);

          v29(v15);
          sub_1000051F8(v29, v30);
        }

        goto LABEL_19;
      }
    }

    v22 = 0;
    goto LABEL_17;
  }
}

id sub_1003B940C()
{
  v1 = [v0 localDevice];

  return v1;
}

void sub_1003B9444(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  if (a1)
  {
    sub_100016034();
    v8[1] = 1107296256;
    v8[2] = sub_1003BB698;
    v8[3] = v6;
    v7 = _Block_copy(v8);
  }

  else
  {
    v7 = 0;
  }

  [v4 *a4];
  _Block_release(v7);
}

void sub_1003B94D0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 1107296256;
    v4[2] = sub_100019B34;
    v4[3] = &unk_10062C9F0;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 setDeviceChangedHandler:v3];
  _Block_release(v3);
}

void sub_1003B9578(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 1107296256;
    v4[2] = sub_1004582CC;
    v4[3] = &unk_10062C900;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 activateWithCompletion:v3];
  _Block_release(v3);
}

uint64_t sub_1003B9638()
{
  v1 = [v0 effectiveIdentifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void *sub_1003B9754(uint64_t a1, void *a2)
{
  v3 = (v2 + *((swift_isaMask & *v2) + 0x70));
  *v3 = 0;
  v3[1] = 0;
  *(v2 + *((swift_isaMask & *v2) + 0x78)) = _swiftEmptyDictionarySingleton;
  *(v2 + *((swift_isaMask & *v2) + 0x60)) = a2;
  *(v2 + *((swift_isaMask & *v2) + 0x68)) = a1;
  v4 = a2;
  v17.receiver = v2;
  v17.super_class = sub_10026D814(&unk_1006A8D40, &unk_100584DC0);
  v5 = objc_msgSendSuper2(&v17, "init");
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = *((swift_isaMask & *v5) + 0x68);
  swift_beginAccess();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1003BB594;
  *(v8 + 24) = v6;
  v9 = v5;

  sub_1003B9444(sub_1003BB59C, v8, &unk_10062CB58, &selRef_setLocalDeviceUpdatedHandler_);
  swift_endAccess();

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1003BB5D4;
  *(v11 + 24) = v10;

  sub_1003B9444(sub_1003BB604, v11, &unk_10062CAE0, &selRef_setDeviceFoundHandler_);
  swift_endAccess();

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1003BB5DC;
  *(v13 + 24) = v12;

  sub_1003B9444(sub_1003BB604, v13, &unk_10062CA68, &selRef_setDeviceLostHandler_);
  swift_endAccess();

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  v15 = swift_allocObject();
  *(v15 + 16) = sub_100019BA8;
  *(v15 + 24) = v14;

  sub_1003B94D0(sub_100019BB0, v15);
  swift_endAccess();

  swift_beginAccess();
  [*(v5 + v7) setFlags:{objc_msgSend(*(v5 + v7), "flags") | 1}];
  swift_endAccess();

  return v9;
}

void *sub_1003B9B64(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v17 = *(result + *((swift_isaMask & *result) + 0x60));
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    aBlock[4] = sub_1003BB5FC;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004CEC;
    aBlock[3] = &unk_10062CBA8;
    v13 = _Block_copy(aBlock);
    v16 = v11;
    static DispatchQoS.unspecified.getter();
    v18 = _swiftEmptyArrayStorage;
    sub_10000EE88(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    v15 = v6;
    sub_10001000C(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v13);
    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v15);
  }

  return result;
}

uint64_t sub_1003B9E88(void *a1)
{
  if (qword_1006A0AA0 != -1)
  {
    swift_once();
  }

  v2 = qword_1006BA380;
  v3 = static os_log_type_t.default.getter();
  result = os_log(_:dso:log:type:_:)("Local device updated", 20, 2, &_mh_execute_header, v2, v3, _swiftEmptyArrayStorage);
  v5 = a1 + *((swift_isaMask & *a1) + 0x70);
  v6 = *v5;
  if (*v5)
  {
    v7 = *(v5 + 1);

    v6(v8);

    return sub_1000051F8(v6, v7);
  }

  return result;
}

void sub_1003B9F78(void *a1, void *a2)
{
  if (qword_1006A0AA0 != -1)
  {
    swift_once();
  }

  v4 = qword_1006BA380;
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10057D690;
  sub_100006AF0(0, &qword_1006A75B0, RPCompanionLinkDevice_ptr);
  v6 = a1;
  v7 = String.init<A>(reflecting:)();
  v9 = v8;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_100009D88();
  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  v10 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Found nearby device: %@", 23, 2, &_mh_execute_header, v4, v10, v5);

  v11 = [v6 effectiveIdentifier];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    v16 = *((swift_isaMask & *a2) + 0x78);
    swift_beginAccess();
    v17 = *(a2 + v16);

    v18 = sub_100023E48(v12, v14, v17);

    if (v18)
    {
    }

    else
    {
      swift_beginAccess();
      v19 = v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_100379364(v19, v12, v14, isUniquelyReferenced_nonNull_native, v21, v22, v23, v24, v25, *(a2 + v16));
      *(a2 + v16) = v26;

      swift_endAccess();
      sub_10001B630();
    }
  }

  else
  {
  }
}

void sub_1003BA1D0()
{
  sub_100005EF4();
  v24 = v2;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v26 = v8;
  __chkstk_darwin(v9);
  sub_10000A330();
  v10 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_10000E4F4();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    if (sub_10001A9F0())
    {
      v16 = swift_allocObject();
      *(v16 + 16) = v6;
      *(v16 + 24) = v15;
      v27[4] = v4;
      v27[5] = v16;
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 1107296256;
      sub_10000A600();
      v27[2] = v17;
      v27[3] = v24;
      v18 = _Block_copy(v27);
      v19 = v6;
      v25 = v15;
      static DispatchQoS.unspecified.getter();
      sub_10000A814();
      sub_10000EE88(v20, v21, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
      sub_100008434();
      sub_10001000C(v22, &unk_1006A2960, &unk_10057D6E0, v23);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      sub_100008AB0();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v18);
      (*(v26 + 8))(v0, v7);
      (*(v12 + 8))(v1, v10);
    }

    else
    {
    }
  }

  sub_100005EDC();
}

void sub_1003BA480(void *a1, void *a2)
{
  if (qword_1006A0AA0 != -1)
  {
    swift_once();
  }

  v4 = qword_1006BA380;
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10057D690;
  sub_100006AF0(0, &qword_1006A75B0, RPCompanionLinkDevice_ptr);
  v6 = a1;
  v7 = String.init<A>(reflecting:)();
  v9 = v8;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_100009D88();
  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  v10 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Lost nearby device: %@", 22, 2, &_mh_execute_header, v4, v10, v5);

  v11 = [v6 effectiveIdentifier];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v15 && (v16 = *((swift_isaMask & *a2) + 0x78), swift_beginAccess(), v17 = *(a2 + v16), , v18 = sub_100023E48(v12, v14, v17), , v18))
  {

    swift_beginAccess();
    v19 = sub_10001B760(v12, v14);
    swift_endAccess();

    sub_10001B630();
  }

  else
  {
  }
}

void sub_1003BA6A4(uint64_t a1, uint64_t a2)
{
  v5 = *((swift_isaMask & *v2) + 0x68);
  swift_beginAccess();
  if (!a1)
  {
    a2 = 0;
  }

  v6 = *(v2 + v5);
  sub_1003B9578(a1, a2);
}

void *sub_1003BA734(void *result, uint64_t a2)
{
  if (result)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1003BA7A0(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001D2B4(v8);
  if (sub_100015468(v8, 1, v9) == 1)
  {

    sub_10001D334(v8);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
LABEL_9:
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    goto LABEL_14;
  }

  v30 = a2;
  (*(v10 + 32))(v12, v8, v9);
  v17 = sub_10001B8C8(a1, &selRef_mediaSystemName);
  v16 = v18;
  if (!v18)
  {
    (*(v10 + 8))(v12, v9);

    v13 = 0;
    v14 = 0;
    v15 = 0;
    goto LABEL_9;
  }

  v15 = v17;
  v19 = UUID.uuidString.getter();
  v28 = v20;
  v29 = v19;
  v21 = sub_10001BEF4();
  switch(v21)
  {
    case 6:
      v22 = 14;
      break;
    case 22:
      v22 = 23;
      break;
    case 27:
      v22 = 28;
      break;
    default:
      v22 = 0;
      break;
  }

  v24 = sub_10001B8C8(a1, &selRef_model);
  v25 = v26;

  (*(v10 + 8))(v12, v9);
  v13 = v29;
  v23 = v30;
  v14 = v28;
LABEL_14:
  *a3 = v13;
  a3[1] = v14;
  a3[2] = v15;
  a3[3] = v16;
  a3[4] = v22;
  a3[5] = 0;
  a3[6] = v23;
  a3[7] = v24;
  a3[8] = v25;
}

uint64_t sub_1003BAAB0(void *a1, char *a2)
{
  v4 = *&a2[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_queue];
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1003BB554;
  *(v6 + 24) = v5;
  v11[4] = sub_1000200A4;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10002007C;
  v11[3] = &unk_10062C478;
  v7 = _Block_copy(v11);
  v8 = a2;
  v9 = a1;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

char *sub_1003BAC18(uint64_t a1, uint64_t a2, void *a3, void *a4, _BYTE *a5)
{
  ObjectType = swift_getObjectType();
  v11 = sub_100006AF0(0, &qword_1006A8D38, off_100616630);
  v12 = &a5[qword_1006A4D10];
  *v12 = 0;
  v12[1] = 0;
  *&a5[qword_1006A4D68] = &_swiftEmptySetSingleton;
  v41[3] = v11;
  v41[4] = &off_100626180;
  v41[0] = a2;
  *&a5[qword_1006A4D70] = 0;
  a5[qword_1006A4D78] = 0;
  a5[qword_1006A4D80] = 1;
  *&a5[qword_1006A4D40] = a4;
  v13 = objc_allocWithZone(sub_10026D814(&unk_1006A8D40, &unk_100584DC0));
  v14 = a4;
  *&a5[qword_1006A4D50] = sub_1003B9754(a1, v14);
  sub_100009AB0(v41, &a5[qword_1006A4D58]);
  *&a5[qword_1006A4D48] = a3;
  v15 = objc_allocWithZone(TUConversationManager);
  swift_unknownObjectRetain();
  v16 = [v15 init];
  *&a5[qword_1006A4D60] = v16;
  v17 = &a5[qword_1006A4D18];
  *v17 = sub_100305898;
  v17[1] = 0;
  v18 = &a5[qword_1006A4D20];
  *v18 = sub_100305B60;
  v18[1] = 0;
  v19 = &a5[qword_1006A4D28];
  *v19 = sub_10001D1E8;
  v19[1] = 0;
  v20 = &a5[qword_1006A4D30];
  *v20 = sub_10001D214;
  v20[1] = 0;
  v21 = &a5[qword_1006A4D38];
  *v21 = sub_10001CD68;
  v21[1] = 0;
  v40.receiver = a5;
  v40.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v40, "init");
  v23 = *&v22[qword_1006A4D60];
  v24 = *&v22[qword_1006A4D40];
  v25 = v22;
  [v23 addDelegate:v25 queue:v24];
  v26 = qword_1006A4D50;
  v27 = *&v25[qword_1006A4D50];
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = (v27 + *((swift_isaMask & *v27) + 0x70));
  v30 = *v29;
  v31 = v29[1];
  *v29 = sub_10001B628;
  v29[1] = v28;
  v32 = v27;

  sub_1000051F8(v30, v31);

  v33 = *&v25[v26];
  sub_1003BA6A4(sub_100306B40, 0);

  v34 = qword_1006A4D48;
  [*&v25[qword_1006A4D48] setTriggers:33];
  v35 = *&v25[v34];
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  aBlock[4] = sub_10002DB04;
  aBlock[5] = v36;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100028100;
  aBlock[3] = &unk_10062C888;
  v37 = _Block_copy(aBlock);

  [v35 setCallChanged:v37];
  _Block_release(v37);

  swift_unknownObjectRelease();
  sub_100009B7C(v41);
  return v25;
}

char *sub_1003BB044(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, char *a7)
{
  v49 = a4;
  v50 = a5;
  v51 = a2;
  ObjectType = swift_getObjectType();
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v47 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v45 = *(v15 - 8);
  v46 = v15;
  __chkstk_darwin(v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_recommendationsObservers;
  *&a7[v18] = [objc_opt_self() weakObjectsHashTable];
  v19 = OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_featureFlags;
  *&a7[v19] = [objc_allocWithZone(TUFeatureFlags) init];
  *&a7[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_lockStateObserver] = 0;
  *&a7[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_irServiceToken] = 0;
  *&a7[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_irSession] = 0;
  *&a7[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_sessionFailureCount] = 0;
  v20 = &a7[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_intelligentRoutingInitializationBlock];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &a7[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_resetTokenBlock];
  *v21 = 0;
  *(v21 + 1) = 0;
  *&a7[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager__topOfListRoutesUniqueIdentifiers] = _swiftEmptyArrayStorage;
  *&a7[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_queue] = a1;
  *&a7[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_serverBag] = a6;
  v54.receiver = a7;
  v54.super_class = ObjectType;
  v44 = a1;
  v43 = a6;
  v22 = objc_msgSendSuper2(&v54, "init");
  v23 = v22;
  if (v51)
  {
    v24 = &v22[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_intelligentRoutingInitializationBlock];
    v25 = *&v22[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_intelligentRoutingInitializationBlock];
    v26 = *&v22[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_intelligentRoutingInitializationBlock + 8];
    *v24 = v51;
    *(v24 + 1) = a3;
  }

  else
  {
    v27 = swift_allocObject();
    *(v27 + 16) = v23;
    v28 = &v23[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_intelligentRoutingInitializationBlock];
    v25 = *&v23[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_intelligentRoutingInitializationBlock];
    v26 = *&v23[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_intelligentRoutingInitializationBlock + 8];
    *v28 = sub_1003BB55C;
    v28[1] = v27;
    v29 = v23;
  }

  sub_1000051F8(v25, v26);
  v30 = v50;
  v48 = a3;
  if (v49)
  {
    v31 = &v23[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_resetTokenBlock];
    v32 = *&v23[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_resetTokenBlock];
    v33 = *&v23[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_resetTokenBlock + 8];
    *v31 = v49;
    *(v31 + 1) = v30;
  }

  else
  {
    v34 = swift_allocObject();
    *(v34 + 16) = v23;
    v35 = &v23[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_resetTokenBlock];
    v32 = *&v23[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_resetTokenBlock];
    v33 = *&v23[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_resetTokenBlock + 8];
    *v35 = sub_1003BB564;
    v35[1] = v34;
    v36 = v23;
  }

  sub_1000051F8(v32, v33);
  v37 = *&v23[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_queue];
  v38 = swift_allocObject();
  *(v38 + 16) = v23;
  aBlock[4] = sub_1003BB56C;
  aBlock[5] = v38;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_10062C518;
  v39 = _Block_copy(aBlock);
  v40 = v23;
  v41 = v37;
  static DispatchQoS.unspecified.getter();
  v52 = _swiftEmptyArrayStorage;
  sub_10000EE88(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_10001000C(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v39);

  sub_1000051F8(v49, v50);
  sub_1000051F8(v51, v48);

  (*(v47 + 8))(v14, v12);
  (*(v45 + 8))(v17, v46);

  return v40;
}

uint64_t sub_1003BB59C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1003BB6B4()
{
  v1 = *(v0 + OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_clientUUIDString);

  return v1;
}

uint64_t sub_1003BB708(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_clientUUIDString);
  *v3 = a1;
  v3[1] = a2;
  return sub_10000A34C();
}

void sub_1003BB720()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v25 = v6;
  v8 = v7;
  v9 = type metadata accessor for UUID();
  sub_100007FEC();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_100007FDC();
  v15 = v14 - v13;
  *&v1[OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_groupSessionSubscription] = 0;
  *&v1[OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_endedReason] = 0;
  v16 = &v1[OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_destination];
  *v16 = 0;
  *(v16 + 1) = 0xE000000000000000;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_requiredCapabilities] = 0;
  *&v1[OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_requiredLackOfCapabilities] = 0;
  (*(v11 + 16))(&v1[OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_groupUUID], v8, v9);
  UUID.init()();
  v17 = UUID.uuidString.getter();
  v19 = v18;
  v20 = *(v11 + 8);
  v20(v15, v9);
  v21 = &v1[OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_clientUUIDString];
  *v21 = v17;
  v21[1] = v19;
  *&v1[OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_queue] = v5;
  *&v1[OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_simulatedConversationManager] = v3;
  v26.receiver = v1;
  v26.super_class = type metadata accessor for SimulatedIDSGroupSessionProvider(0);
  v22 = v5;
  v23 = v3;
  v24 = objc_msgSendSuper2(&v26, "init");
  sub_1003297EC();

  v20(v8, v9);
  sub_100005EDC();
}

void sub_1003BBA0C()
{
  sub_100005EF4();
  v2 = v0;
  v4 = v3;
  v107 = type metadata accessor for UUID();
  sub_100007FEC();
  v101 = v5;
  v7 = __chkstk_darwin(v6);
  v104 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v99 = &v97 - v9;
  v10 = sub_10026D814(&unk_1006A7600, &unk_100584E50);
  sub_100007BF0(v10);
  sub_100006688();
  __chkstk_darwin(v11);
  v13 = &v97 - v12;
  v14 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
  sub_100008070();
  __chkstk_darwin(v15);
  sub_100007FDC();
  v18 = v17 - v16;
  v19 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v21 = v20;
  __chkstk_darwin(v22);
  sub_100007FDC();
  sub_100007654();
  v23 = *(v2 + OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_queue);
  *v1 = v23;
  (*(v21 + 104))(v1, enum case for DispatchPredicate.onQueue(_:), v19);
  v24 = v23;
  v25 = _dispatchPreconditionTest(_:)();
  (*(v21 + 8))(v1, v19);
  if (v25)
  {
    v26 = OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_groupUUID;
    sub_1003285B4();
    v106 = v26;
    sub_1002CB8B4();

    if (sub_100015468(v13, 1, v14) == 1)
    {
      sub_100009A04(v13, &unk_1006A7600, &unk_100584E50);
      goto LABEL_42;
    }

    v100 = v4;
    v27 = sub_10032DE84(v13, v18);
    v28 = sub_10022AE64(v27);
    v29 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v30 = sub_100009F00(v29);
    *(v30 + 16) = xmmword_10057D690;
    v108 = v2;
    v31 = sub_1003BCD20();
    *(v30 + 56) = sub_10026D814(&qword_1006A8DB0, &qword_100584E48);
    *(v30 + 64) = sub_1000182CC(&unk_1006A8DB8);
    *(v30 + 32) = v31;
    v32 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Updating delegate with active participants %@", 45, 2, &_mh_execute_header, v28, v32, v30);

    v97 = v14;
    v98 = v18;
    v105 = *(v18 + *(v14 + 24));
    v18 = *(v105 + 16);
    if (!v18)
    {
      v41 = *(v101 + 16);
      v2 = (v101 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v50 = _swiftEmptyArrayStorage;
LABEL_13:
      v109 = v41;
      v110 = v50;
      v51 = v99;
      v41(v99, v108 + v106, v107);
      v52 = *(v98 + *(v97 + 32));
      v53 = [*(v98 + *(v97 + 28)) idsDestination];
      v18 = v100;
      if (v53)
      {
        v54 = v53;
        v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v57 = v56;
      }

      else
      {
        v55 = 0;
        v57 = 0;
      }

      v58 = objc_allocWithZone(IDSGroupSessionActiveParticipant);
      sub_100008C18(v51, v52, 1, v55, v57);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_17;
      }

      goto LABEL_48;
    }

    v110 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v33 = v105;
    v35 = sub_1000057CC();
    v37 = v36;
    v102 = (v101 + 16);
    v103 = v33 + 64;
    v101 = (v101 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while ((v35 & 0x8000000000000000) == 0 && v35 < 1 << *(v33 + 32))
    {
      if (((*(v103 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
      {
        goto LABEL_45;
      }

      if (*(v33 + 36) != v37)
      {
        goto LABEL_46;
      }

      v38 = *(v33 + 56) + 24 * v35;
      v39 = *v38;
      v40 = *(v38 + 8);
      v41 = *v102;
      v42 = v104;
      LODWORD(v109) = v34;
      v41(v104, v108 + v106, v107);
      v43 = v39;
      v44 = [v43 value];
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v2 = v46;

      v47 = objc_allocWithZone(IDSGroupSessionActiveParticipant);
      sub_100008C18(v42, v40, 1, v45, v2);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v33 = v105;
      v48 = sub_10045956C(v35, v37, v109 & 1, v105);
      v35 = v48;
      v37 = v49;
      if (!--v18)
      {
        sub_100010000(v48, v49, v34 & 1);
        v50 = v110;
        v2 = v101;
        goto LABEL_13;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }

  __break(1u);
LABEL_48:
  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_17:
  sub_10000FED4();
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v59 = v110;
  v103 = OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100006AF0(0, &qword_1006A8E10, IDSGroupSessionActiveParticipant_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    sub_100016364(isa, "sessionProvider:didReceiveActiveParticipants:success:");

    swift_unknownObjectRelease();
  }

  v97 = v59;
  v101 = v2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100006AF0(0, &qword_1006A8E10, IDSGroupSessionActiveParticipant_ptr);
    v61 = Array._bridgeToObjectiveC()().super.isa;
    sub_100016364(v61, "sessionProvider:didReceiveActiveLightweightParticipants:success:");

    swift_unknownObjectRelease();
  }

  v62 = v105;
  v2 = v105 + 64;
  v63 = 1 << *(v105 + 32);
  if (v63 < 64)
  {
    v64 = ~(-1 << v63);
  }

  else
  {
    v64 = -1;
  }

  v65 = v64 & *(v105 + 64);
  v102 = ((v63 + 63) >> 6);
  v99 = (v18 + 56);
  swift_bridgeObjectRetain_n();
  v66 = 0;
  while (v65)
  {
LABEL_30:
    v68 = __clz(__rbit64(v65));
    v65 &= v65 - 1;
    v69 = *(v62 + 56) + 24 * (v68 | (v66 << 6));
    v70 = *v69;
    v71 = *(v69 + 8);
    v72 = *(v69 + 16);
    v73 = *(v69 + 17);
    if (v18 < 2)
    {
LABEL_35:
      v77 = objc_allocWithZone(CSDConversationParticipant);
      v78 = v70;
      v79 = sub_1003BECD4(v71, v78, 0, 0xC000000000000000);
      [v79 setSpatialPersonaEnabled:v73];
      sub_100006AF0(0, &qword_1006A8E18, TUConversationParticipantCapabilities_ptr);
      v80 = sub_10032B208(v72);
      [v79 setCapabilities:v80];

      [v79 setAudioVideoMode:2];
      v81 = v104;
      v109(v104, v108 + v106, v107);
      v82 = [v78 value];
      v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v85 = v84;

      v86 = objc_allocWithZone(IDSGroupSessionActiveParticipant);
      v87 = sub_100008C18(v81, v71, 1, v83, v85);
      v88 = [objc_opt_self() participantWithCSDConversationParticipant:v79];
      sub_1003F7B24(v88);
      if (v89 >> 60 == 15)
      {
      }

      else
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v91 = Strong;
          sub_10000FED4();
          v92 = Data._bridgeToObjectiveC()().super.isa;
          [v91 sessionProvider:v108 didReceiveDataBlob:v92 forParticipant:v87];

          v93 = sub_10000FED4();
          sub_100290B6C(v93, v94);

          swift_unknownObjectRelease();
        }

        else
        {

          v95 = sub_10000FED4();
          sub_100290B6C(v95, v96);
        }
      }

      v18 = v100;
      v62 = v105;
    }

    else if (*(v18 + 16))
    {
      v74 = static Hasher._hash(seed:_:)();
      v75 = ~(-1 << *(v18 + 32));
      while (1)
      {
        v76 = v74 & v75;
        if (((*&v99[((v74 & v75) >> 3) & 0xFFFFFFFFFFFFFF8] >> (v74 & v75)) & 1) == 0)
        {
          break;
        }

        v74 = v76 + 1;
        if (*(*(v18 + 48) + 8 * v76) == v71)
        {
          goto LABEL_35;
        }
      }
    }
  }

  while (1)
  {
    v67 = v66 + 1;
    if (__OFADD__(v66, 1))
    {
      __break(1u);
      goto LABEL_44;
    }

    if (v67 >= v102)
    {
      break;
    }

    v65 = *(v2 + 8 * v67);
    ++v66;
    if (v65)
    {
      v66 = v67;
      goto LABEL_30;
    }
  }

  sub_10032DD40(v98);
LABEL_42:
  sub_100005EDC();
}

void sub_1003BC3B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
  v5 = *(a1 + *(v4 + 24));

  v7 = sub_1002F2270(v6);
  v8 = *(a2 + *(v4 + 24));

  v10 = sub_1002F2270(v9);

  v46 = sub_1003BEEB4(v7, v10);
  v45 = sub_1003BEEB4(v10, v7);

  v11 = v8 + 64;
  v12 = 1 << *(v8 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v8 + 64);
  v15 = (v12 + 63) >> 6;

  v16 = v14;
  v17 = 0;
  v47 = _swiftEmptyArrayStorage;
  v48 = v8;
  v49 = v5;
  while (v16)
  {
    v18 = v16;
LABEL_10:
    v16 = (v18 - 1) & v18;
    if (*(v5 + 16))
    {
      v53 = (v18 - 1) & v18;
      v20 = *(v8 + 56) + 24 * (__clz(__rbit64(v18)) | (v17 << 6));
      v21 = *v20;
      v50 = *(v20 + 17);
      v51 = *(v20 + 16);
      v52 = *(v20 + 8);
      v22 = sub_1002DA664(v52);
      v16 = v53;
      if (v23)
      {
        v24 = *(v5 + 56) + 24 * v22;
        v26 = *v24;
        v25 = *(v24 + 8);
        v27 = *(v24 + 16);
        v28 = *(v24 + 17);
        sub_100006AF0(0, &unk_1006A39B0, NSObject_ptr);
        v29 = v21;
        v30 = v26;
        v31 = static NSObject.== infix(_:_:)();

        v16 = v53;
        v8 = v48;
        v5 = v49;
        if (v31 & 1) == 0 || v52 != v25 || ((v51 ^ v27) & 1) != 0 || ((v50 ^ v28))
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1004704F8();
            v47 = v34;
          }

          v32 = v47[2];
          v33 = v32 + 1;
          v16 = v53;
          if (v32 >= v47[3] >> 1)
          {
            sub_1004704F8();
            v16 = v53;
            v33 = v32 + 1;
            v47 = v35;
          }

          v47[2] = v33;
          v47[v32 + 4] = v52;
        }
      }
    }
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      return;
    }

    if (v19 >= v15)
    {
      break;
    }

    v18 = *(v11 + 8 * v19);
    ++v17;
    if (v18)
    {
      v17 = v19;
      goto LABEL_10;
    }
  }

  if (*(v46 + 16))
  {

    v42 = v47;
LABEL_25:
    if (*(v46 + 16) || *(v42 + 16))
    {
      v44 = sub_1002F3BB0(v42, v46, v36, v37, v38, v39, v40, v41);
    }

    else
    {

      v44 = 1;
    }

    sub_1003BBA0C();

    sub_1003BED58(v44);
    return;
  }

  v43 = *(v45 + 16);

  v42 = v47;
  if (v43 || v47[2])
  {
    goto LABEL_25;
  }
}

void sub_1003BC71C()
{
  sub_100005EF4();
  v2 = v0;
  v3 = sub_10026D814(&qword_1006A6DA0, &qword_100584E60);
  sub_100007BF0(v3);
  sub_100006688();
  __chkstk_darwin(v4);
  v6 = &v22 - v5;
  v7 = sub_10026D814(&qword_1006A8DC8, &qword_100584E68);
  sub_100007FEC();
  v9 = v8;
  sub_100006688();
  __chkstk_darwin(v10);
  sub_100007654();
  sub_10026D814(&qword_1006A8DD0, &qword_100584E70);
  sub_100007FEC();
  v23 = v11;
  v24 = v12;
  sub_100006688();
  __chkstk_darwin(v13);
  v15 = &v22 - v14;
  sub_10032884C();
  v25 = v16;
  sub_10026D814(&qword_1006A8DD8, qword_100584E78);
  sub_10001000C(&unk_1006A8DE0, &qword_1006A8DD8, qword_100584E78, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.dropFirst(_:)();

  v25 = *(v0 + OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_queue);
  v17 = v25;
  v18 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  sub_10000AF74(v6, 1, 1, v18);
  sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
  sub_10001000C(&unk_1006A8DF0, &qword_1006A8DC8, &qword_100584E68, &protocol conformance descriptor for Publishers.Drop<A>);
  sub_100378020();
  v19 = v17;
  Publisher.receive<A>(on:options:)();
  sub_100009A04(v6, &qword_1006A6DA0, &qword_100584E60);

  (*(v9 + 8))(v1, v7);
  sub_100006890();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10001000C(&unk_1006A8E00, &qword_1006A8DD0, &qword_100584E70, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v20 = v23;
  v21 = Publisher<>.sink(receiveValue:)();

  (*(v24 + 8))(v15, v20);
  *(v2 + OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_groupSessionSubscription) = v21;

  sub_100005EDC();
}

void *sub_1003BCA8C(uint64_t a1, uint64_t a2)
{
  v2 = sub_10026D814(&unk_1006A7600, &unk_100584E50);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v17 - v6;
  v8 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    sub_1002CB8B4();
    if (sub_100015468(v7, 1, v8) == 1)
    {

      v16 = v7;
      return sub_100009A04(v16, &unk_1006A7600, &unk_100584E50);
    }

    sub_10032DE84(v7, v13);
    sub_1002CB8B4();
    if (sub_100015468(v5, 1, v8) == 1)
    {
      sub_10032DD40(v13);

      v16 = v5;
      return sub_100009A04(v16, &unk_1006A7600, &unk_100584E50);
    }

    sub_10032DE84(v5, v11);
    sub_1003BC3B0(v13, v11);

    sub_10032DD40(v11);
    return sub_10032DD40(v13);
  }

  return result;
}

id sub_1003BCE7C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = String._bridgeToObjectiveC()();

  return v3;
}

uint64_t sub_1003BCECC()
{
  v1 = *(v0 + OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_destination);

  return v1;
}

void sub_1003BCF20(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_1003BCF98(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_destination);
  *v3 = a1;
  v3[1] = a2;
  return sub_10000A34C();
}

uint64_t sub_1003BD0E8(uint64_t a1)
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1003BD178()
{
  sub_100005EF4();
  v1 = v0;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v45 = v3;
  v46 = v2;
  __chkstk_darwin(v2);
  sub_100007FDC();
  v43 = v5 - v4;
  v44 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v42 = v6;
  __chkstk_darwin(v7);
  sub_100007FDC();
  v41 = v9 - v8;
  v10 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
  sub_100008070();
  __chkstk_darwin(v11);
  sub_100007FDC();
  v14 = v13 - v12;
  v15 = sub_10026D814(&unk_1006A7600, &unk_100584E50);
  sub_100007BF0(v15);
  sub_100006688();
  v17 = __chkstk_darwin(v16);
  v19 = &v40 - v18;
  v20 = sub_10022AE64(v17);
  v21 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v22 = sub_100009F00(v21);
  *(v22 + 16) = xmmword_10057D690;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v24 = TULoggableStringForObject();

  if (v24)
  {
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    *(v22 + 56) = &type metadata for String;
    *(v22 + 64) = sub_100009D88();
    *(v22 + 32) = v25;
    *(v22 + 40) = v27;
    v28 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Join with options %@", 20, 2, &_mh_execute_header, v20, v28, v22);

    sub_1003285B4();
    sub_1002CB8B4();

    if (sub_100015468(v19, 1, v10))
    {
      sub_100009A04(v19, &unk_1006A7600, &unk_100584E50);
    }

    else
    {
      sub_10032DCDC(v19, v14);
      sub_100009A04(v19, &unk_1006A7600, &unk_100584E50);
      v29 = *(v14 + *(v10 + 32));
      sub_10032DD40(v14);
      sub_1003BC71C();
      v30 = swift_allocObject();
      *(v30 + 16) = v1;
      *(v30 + 24) = v29;
      sub_10000A0F0(v30);
      sub_1000081D4(COERCE_DOUBLE(1107296256));
      v48[2] = v31;
      v48[3] = &unk_10062CC48;
      v32 = _Block_copy(v48);
      v33 = v1;
      v34 = v41;
      static DispatchQoS.unspecified.getter();
      v47 = _swiftEmptyArrayStorage;
      sub_10000AC00();
      sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
      sub_10000826C();
      sub_10001000C(v35, v36, &unk_10057D6E0, v37);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v32);
      v38 = sub_10000FED4();
      v39(v38);
      (*(v42 + 8))(v34, v44);
    }

    sub_100005EDC();
  }

  else
  {
    __break(1u);
  }
}

void sub_1003BD5B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
  __chkstk_darwin(v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10026D814(&unk_1006A7600, &unk_100584E50);
  __chkstk_darwin(v7 - 8);
  v9 = &v14 - v8;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_10026D814(&qword_1006A5358, &qword_1005800B8);
    Dictionary.init(dictionaryLiteral:)();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v11 sessionProvider:a1 didJoinGroupWithParticipantIdentifiers:isa localParticipantIdentifier:a2 error:0];

    swift_unknownObjectRelease();
  }

  sub_1003285B4();
  sub_1002CB8B4();

  if (sub_100015468(v9, 1, v4))
  {
    sub_100009A04(v9, &unk_1006A7600, &unk_100584E50);
  }

  else
  {
    sub_10032DCDC(v9, v6);
    sub_100009A04(v9, &unk_1006A7600, &unk_100584E50);
    v13 = v6[*(v4 + 36)];
    sub_10032DD40(v6);
    if (v13)
    {
      sub_10032A2D0();
      return;
    }
  }

  sub_1003BBA0C();
}

void sub_1003BD8C4()
{
  sub_100005EF4();
  v3 = v2;
  v4 = type metadata accessor for UUID();
  sub_100007FEC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100007FDC();
  sub_100007654();
  v9 = sub_10022AE64(v8);
  v10 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v11 = sub_100009F00(v10);
  *(v11 + 16) = xmmword_10057D690;
  *(v11 + 56) = sub_10026D814(&qword_1006A8DB0, &qword_100584E48);
  *(v11 + 64) = sub_1000182CC(&unk_1006A8DB8);
  *(v11 + 32) = v3;

  v12 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Update participant destination IDs %@", 37, 2, &_mh_execute_header, v9, v12, v11);

  (*(v6 + 16))(v1, v0 + OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_groupUUID, v4);
  v13 = sub_1003287AC(v20);
  v14 = sub_10040BF00(v19);
  v16 = v15;
  v17 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
  if (!sub_100015468(v16, 1, v17))
  {

    *(v16 + *(v17 + 20)) = sub_100329CF0(v18);
  }

  (v14)(v19, 0);
  (*(v6 + 8))(v1, v4);
  v13(v20, 0);
  sub_10032A2D0();
  sub_100005EDC();
}

void sub_1003BDD30()
{
  sub_100005EF4();
  v2 = v0;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v30 = v4;
  __chkstk_darwin(v5);
  sub_100007FDC();
  sub_100007654();
  type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v28 = v7;
  v29 = v6;
  __chkstk_darwin(v6);
  sub_100007FDC();
  v10 = v9 - v8;
  v12 = sub_10022AE64(v11);
  v13 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v14 = sub_100009F00(v13);
  *(v14 + 16) = xmmword_10057D690;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v16 = TULoggableStringForObject();

  if (v16)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100009D88();
    *(v14 + 32) = v17;
    *(v14 + 40) = v19;
    v20 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Leave with options %@", 21, 2, &_mh_execute_header, v12, v20, v14);

    *&v2[OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_groupSessionSubscription] = 0;

    sub_100329EA8(&v2[OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_groupUUID]);
    sub_100006890();
    v21 = swift_allocObject();
    *(v21 + 16) = v2;
    sub_10000A0F0(v21);
    sub_1000081D4(COERCE_DOUBLE(1107296256));
    v31[2] = v22;
    v31[3] = &unk_10062CBF8;
    v23 = _Block_copy(v31);
    v24 = v2;
    static DispatchQoS.unspecified.getter();
    sub_10000AC00();
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_10000826C();
    sub_10001000C(v25, v26, &unk_10057D6E0, v27);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v23);
    (*(v30 + 8))(v1, v3);
    (*(v28 + 8))(v10, v29);

    sub_100005EDC();
  }

  else
  {
    __break(1u);
  }
}

void *sub_1003BE060(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result sessionProvider:a1 didLeaveGroupWithError:0];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1003BE0E4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a1;
  a4(v6);
}

void sub_1003BE1BC(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v7 = sub_10022AE64(a1);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10057D690;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100009D88();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  v9 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Request data cryptor for topic %@", 33, 2, &_mh_execute_header, v7, v9, v8);

  v10 = [objc_allocWithZone(type metadata accessor for SimulatedDataCryptor()) init];
  (a4)[2](a4, v10);

  _Block_release(a4);
}

void sub_1003BE4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void))
{
  (a5[2])(a5, a1, a3, a4);

  _Block_release(a5);
}

Class sub_1003BE634(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a3())
  {
    v3.super.isa = Set._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  return v3.super.isa;
}

void sub_1003BE6C4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (a3)
  {
    v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = a1;
  a4(v6);
}

uint64_t sub_1003BE768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    static Set._unconditionallyBridgeFromObjectiveC(_:)();
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (a4)
  {
LABEL_3:
    static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:
}

id sub_1003BE948()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SimulatedIDSGroupSessionProvider(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SimulatedIDSGroupSessionProvider(uint64_t a1)
{
  result = qword_1006A8D98;
  if (!qword_1006A8D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003BEAC0(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

id sub_1003BEBAC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v8 = v7;
  v15.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  if (a5)
  {
    v16 = String._bridgeToObjectiveC()();
  }

  else
  {
    v16 = 0;
  }

  if (a7 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100290B6C(a6, a7);
  }

  v18 = [v8 initWithGroupUUID:v15.super.isa participantIdentifier:a2 isKnown:a3 & 1 participantURI:v16 pushToken:isa];

  v19 = type metadata accessor for UUID();
  (*(*(v19 - 8) + 8))(a1, v19);
  return v18;
}

id sub_1003BECD4(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v10 = [v4 initWithIdentifier:a1 handle:a2 avcData:isa];

  sub_100049B14(a3, a4);
  return v10;
}

unint64_t sub_1003BED58(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

void sub_1003BED80(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = *(*(a3 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v9)))));
      a1(&v13);
      if (v3)
      {
        break;
      }

      v9 &= v9 - 1;
      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

LABEL_11:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {
        goto LABEL_11;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1003BEEE0(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(void))
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    a3();
    return a2;
  }

  else
  {

    return a4();
  }
}

void sub_1003BEF3C(char a1, uint64_t a2, uint64_t a3)
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
  (*(a3 + 16))(a3, a1 & 1);
}

id sub_1003BEFAC()
{
  result = [objc_allocWithZone(type metadata accessor for SimulatedIDSService()) init];
  qword_1006BA768 = result;
  return result;
}

id sub_1003BEFDC()
{
  if (qword_1006A0BA8 != -1)
  {
    swift_once();
  }

  v1 = qword_1006BA768;

  return v1;
}

uint64_t sub_1003BF0AC()
{
  v1 = *(v0 + OBJC_IVAR___CSDSimulatedIDSService_name);

  return v1;
}

char *sub_1003BF0E8()
{
  v1 = v0;
  v2 = OBJC_IVAR___CSDSimulatedIDSService_simulatedConversationManager;
  *&v1[v2] = [objc_allocWithZone(type metadata accessor for SimulatedConversationManager(0)) init];
  v3 = OBJC_IVAR___CSDSimulatedIDSService_delegatesToQueues;
  *&v1[v3] = [objc_opt_self() weakToStrongObjectsMapTable];
  *&v1[OBJC_IVAR___CSDSimulatedIDSService_groupSessionSubscription] = 0;
  v4 = OBJC_IVAR___CSDSimulatedIDSService_idsService;
  v5 = objc_allocWithZone(IDSService);
  *&v1[v4] = sub_1003C1FE0(0x6574616C756D6973, 0xE900000000000064);
  v6 = &v1[OBJC_IVAR___CSDSimulatedIDSService_name];
  *v6 = 0x6574616C756D6973;
  *(v6 + 1) = 0xE900000000000064;
  *&v1[OBJC_IVAR___CSDSimulatedIDSService____lazy_storage___account] = 1;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for SimulatedIDSService();
  v7 = objc_msgSendSuper2(&v13, "init");
  v8 = *&v7[OBJC_IVAR___CSDSimulatedIDSService_simulatedConversationManager];
  v9 = v7;
  v10 = v8;
  sub_10032884C();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10026D814(&qword_1006A8DD8, qword_100584E78);
  sub_10001000C(&unk_1006A8DE0, &qword_1006A8DD8, qword_100584E78, &protocol conformance descriptor for AnyPublisher<A, B>);
  v11 = Publisher<>.sink(receiveValue:)();

  *&v9[OBJC_IVAR___CSDSimulatedIDSService_groupSessionSubscription] = v11;

  return v9;
}

void sub_1003BF2E8(uint64_t *a1, uint64_t a2)
{
  v3 = sub_10026D814(&unk_1006A7600, &unk_100584E50);
  v4 = __chkstk_darwin(v3 - 8);
  v61 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v62 = &v59 - v6;
  v7 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
  v66 = *(v7 - 8);
  v67 = v7;
  v8 = __chkstk_darwin(v7);
  v63 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v59 = &v59 - v10;
  v65 = sub_10026D814(&qword_1006A8EE8, &qword_100584ED0);
  v11 = __chkstk_darwin(v65);
  v60 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v59 - v13;
  v16 = *a1;
  v15 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = 1 << *(v15 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v15 + 64);
    v20 = (v17 + 63) >> 6;

    v21 = 0;
    if (v19)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v22 >= v20)
      {
        break;
      }

      v19 = *(v15 + 64 + 8 * v22);
      ++v21;
      if (v19)
      {
        v21 = v22;
        do
        {
LABEL_9:
          v23 = __clz(__rbit64(v19)) | (v21 << 6);
          v24 = *(v15 + 48);
          v25 = type metadata accessor for UUID();
          (*(*(v25 - 8) + 16))(v14, v24 + *(*(v25 - 8) + 72) * v23, v25);
          v26 = *(v66 + 72);
          v27 = *(v15 + 56) + v26 * v23;
          v28 = &v14[*(v65 + 48)];
          sub_10032DCDC(v27, v28);
          if (*(v16 + 16) && (sub_100021E24(), (v30 & 1) != 0))
          {
            v31 = v63;
            sub_10032DCDC(*(v16 + 56) + v29 * v26, v63);
            v32 = v59;
            sub_10032DE84(v31, v59);
            v33 = v28;
            v34 = v62;
            sub_10032DCDC(v33, v62);
            sub_10000AF74(v34, 0, 1, v67);
            sub_1003BF8A4(v32, v34);
            sub_1000099A4(v34, &unk_1006A7600, &unk_100584E50);
            sub_10032DD40(v32);
          }

          else if ((*(v28 + *(v67 + 36)) & 1) == 0)
          {
            sub_1003BFE7C(v28);
          }

          v19 &= v19 - 1;
          sub_1000099A4(v14, &qword_1006A8EE8, &qword_100584ED0);
        }

        while (v19);
      }
    }

    v59 = v15;

    v35 = 1 << *(v16 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(v16 + 64);
    v38 = (v35 + 63) >> 6;
    v63 = v16;

    v39 = 0;
    v40 = v60;
    if (v37)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v41 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v41 >= v38)
      {

        return;
      }

      v37 = *(v16 + 64 + 8 * v41);
      ++v39;
      if (v37)
      {
        v39 = v41;
        do
        {
LABEL_23:
          v42 = __clz(__rbit64(v37)) | (v39 << 6);
          v43 = v63;
          v44 = *(v63 + 48);
          v45 = type metadata accessor for UUID();
          (*(*(v45 - 8) + 16))(v40, v44 + *(*(v45 - 8) + 72) * v42, v45);
          v46 = *(v43 + 56);
          v47 = *(v66 + 72);
          v48 = *(v65 + 48);
          sub_10032DCDC(v46 + v47 * v42, v40 + v48);
          v49 = v59;
          if (*(v59 + 16) && (sub_100021E24(), (v51 & 1) != 0))
          {
            v52 = *(v49 + 56) + v50 * v47;
            v53 = v61;
            sub_10032DCDC(v52, v61);
            sub_10000AF74(v53, 0, 1, v67);
            v54 = v53;
          }

          else
          {
            v55 = v61;
            v56 = v67;
            sub_10000AF74(v61, 1, 1, v67);
            sub_1000099A4(v55, &unk_1006A7600, &unk_100584E50);
            v57 = v62;
            v58 = v56;
            v40 = v60;
            sub_10000AF74(v62, 1, 1, v58);
            sub_1003BF8A4(v40 + v48, v57);
            v54 = v57;
          }

          v37 &= v37 - 1;
          sub_1000099A4(v54, &unk_1006A7600, &unk_100584E50);
          sub_1000099A4(v40, &qword_1006A8EE8, &qword_100584ED0);
        }

        while (v37);
      }
    }

LABEL_32:
    __break(1u);
  }
}

uint64_t sub_1003BF8A4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
  __chkstk_darwin(v5);
  sub_100007FDC();
  v8 = v7 - v6;
  v9 = sub_10026D814(&unk_1006A7600, &unk_100584E50);
  __chkstk_darwin(v9 - 8);
  v11 = &v26[-v10];
  v12 = type metadata accessor for UUID();
  sub_100007FEC();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_100007FDC();
  v18 = v17 - v16;
  (*(v14 + 16))(v17 - v16, a1, v12);

  v20 = sub_1002F2270(v19);
  sub_1003C3C30(a2, v11);
  if (sub_100015468(v11, 1, v5) == 1)
  {
    v21 = &_swiftEmptySetSingleton;
  }

  else
  {
    sub_10032DE84(v11, v8);

    v21 = sub_1002F2270(v22);
    sub_10032DD40(v8);
  }

  v23 = sub_1003BEEE0(v21, v20, sub_1003C275C, sub_1003C3168);

  __chkstk_darwin(v24);
  *&v26[-32] = a1;
  *&v26[-24] = v18;
  *&v26[-16] = v2;
  sub_1003BED80(sub_1003C3CA0, &v26[-48], v23);

  return (*(v14 + 8))(v18, v12);
}

uint64_t sub_1003BFB20(uint64_t *a1, uint64_t a2, void *a3, void *a4)
{
  v42 = a4;
  v43 = a3;
  v7 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v39 - v8;
  v10 = type metadata accessor for Date();
  __chkstk_darwin(v10 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  result = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
  v19 = *(a2 + *(result + 24));
  if (*(v19 + 16))
  {
    result = sub_1002DA664(v17);
    if (v20)
    {
      v41 = v4;
      v21 = *(*(v19 + 56) + 24 * result);
      v22 = objc_allocWithZone(CSDMessagingConversationParticipantDidLeaveContext);
      v23 = v21;
      v24 = [v22 init];
      v25 = v24;
      if (v24)
      {
        [v24 setLeaveReason:0];
      }

      (*(v14 + 16))(v16, v43, v13);
      result = TUCopyIDSCanonicalAddressForHandle();
      if (result)
      {
        v26 = result;
        v43 = v23;
        v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        Date.init()();
        if (v25)
        {
          v29 = sub_1003F7B24(v25);
          v31 = v30;
        }

        else
        {
          v29 = 0;
          v31 = 0xF000000000000000;
        }

        sub_10000AF74(v9, 1, 1, v13);
        v32 = objc_allocWithZone(IDSGroupSessionParticipantUpdate);
        v33 = sub_1003C2044(v16, 0, v17, v40, v28, 2, 0, 0, v12, 0, 0xF000000000000000, v29, v31, 0, 0, v9);
        v34 = [objc_allocWithZone(IDSMessageContext) init];
        v35 = swift_allocObject();
        v36 = v42;
        v35[2] = v42;
        v35[3] = v33;
        v35[4] = v34;
        v36;
        v37 = v33;
        v38 = v34;
        sub_1003C06E0(sub_1003C3D08, v35);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

void sub_1003BFE7C(uint64_t a1)
{
  v19 = 1;
  v1 = *(a1 + *(type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0) + 24));
  sub_10000C830();
  v4 = v3 & v2;
  v6 = (v5 + 63) >> 6;

  v7 = 0;
  if (!v4)
  {
    goto LABEL_3;
  }

  do
  {
    v8 = v7;
LABEL_7:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v10 = v9 | (v8 << 6);
    v11 = *(*(v1 + 48) + 8 * v10);
    v12 = *(v1 + 56) + 24 * v10;
    v13 = *(v12 + 8);
    v14 = *(v12 + 16);
    if (*(v12 + 17))
    {
      v15 = 256;
    }

    else
    {
      v15 = 0;
    }

    v16 = *v12;
    sub_1003BFFC0(v11, v16, v13, v15 | v14, a1, &v19, v18);
  }

  while (v4);
  while (1)
  {
LABEL_3:
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v6)
    {
      break;
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      goto LABEL_7;
    }
  }
}

void sub_1003BFFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, void *a7)
{
  v65 = a3;
  v66 = a7;
  v70 = a6;
  v9 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v9 - 8);
  v64 = &v57 - v10;
  v11 = type metadata accessor for Date();
  __chkstk_darwin(v11 - 8);
  v67 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for UUID();
  v13 = *(v68 - 8);
  __chkstk_darwin(v68);
  v69 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(CSDMessagingConversationParticipantDidJoinContext) init];
  if (v15)
  {
    v59 = v13;
    v61 = a2;
    v16 = *(type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0) + 20);
    v60 = a5;
    v17 = *(a5 + v16);
    v63 = _swiftEmptyArrayStorage;
    v72 = _swiftEmptyArrayStorage;
    v18 = sub_10000B6F4(v17);
    v19 = v17 & 0xC000000000000001;
    v20 = v17 & 0xFFFFFFFFFFFFFF8;
    v57 = v17;
    v21 = v17 + 32;
    v62 = v15;
    v58 = v15;
    v22 = 0;
    v71 = v18;
    while (1)
    {
      if (v22 == v18)
      {
        sub_1002F1D1C(v63);
        sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
        sub_10000CE3C(&qword_1006A2660, &qword_1006A3DE0, TUConversationMember_ptr);
        isa = Set._bridgeToObjectiveC()().super.isa;

        v37 = v58;
        [v58 setTuConversationMembers:isa];

        [v37 setVideo:1];
        [v37 setVideoEnabled:1];
        v15 = v62;
        v13 = v59;
        a5 = v60;
        goto LABEL_25;
      }

      if (v19)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v22 >= *(v20 + 16))
        {
          goto LABEL_33;
        }

        v23 = *(v21 + 8 * v22);
        swift_unknownObjectRetain();
      }

      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        return;
      }

      v25 = [v23 destinationURIs];
      v26 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v27 = 0;
      v28 = 1 << *(v26 + 32);
      v29 = (v28 + 63) >> 6;
      v30 = 56;
      if (!v29)
      {
        break;
      }

      while (1)
      {
        v31 = *(v26 + v30);
        if (v31)
        {
          break;
        }

        v30 += 8;
        v27 -= 64;
        if (!--v29)
        {
          goto LABEL_13;
        }
      }

      v32 = __clz(__rbit64(v31));
      if (v32 - v28 == v27)
      {
        break;
      }

      if (-v27 < 0 || (v32 - v27) >= v28)
      {
        goto LABEL_34;
      }

      if (((*(v26 + v30) >> v32) & 1) == 0)
      {
        goto LABEL_35;
      }

      v33 = String._bridgeToObjectiveC()();
      v18 = v71;

      v34 = TUHandleForIDSCanonicalAddress();

      if (v34)
      {
        v35 = [objc_allocWithZone(TUConversationMember) initWithHandle:v34];
        swift_unknownObjectRelease();

        if (v35)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v63 = v72;
        }
      }

      else
      {
LABEL_14:
        swift_unknownObjectRelease();
      }
    }

LABEL_13:

    goto LABEL_14;
  }

LABEL_25:
  v38 = [objc_allocWithZone(CSDMessagingConversationMessage) init];
  v39 = v38;
  if (v38)
  {
    [v38 setAvMode:2];
  }

  [v15 setMessage:v39];
  (*(v13 + 16))(v69, a5, v68);
  v40 = *v70;
  v41 = TUCopyIDSCanonicalAddressForHandle();
  if (!v41)
  {
    goto LABEL_36;
  }

  v42 = v41;
  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v44;

  Date.init()();
  if (v15)
  {
    v46 = sub_1003F7B24(v15);
    v48 = v47;
  }

  else
  {
    v46 = 0;
    v48 = 0xF000000000000000;
  }

  v49 = v64;
  sub_10000AF74(v64, 1, 1, v68);
  v50 = objc_allocWithZone(IDSGroupSessionParticipantUpdate);
  v51 = sub_1003C2044(v69, v40, v65, v43, v45, 1, 0, 0, v67, 0, 0xF000000000000000, v46, v48, 0, 0, v49);
  v52 = [objc_allocWithZone(IDSMessageContext) init];
  *v70 = 0;
  v53 = swift_allocObject();
  v54 = v66;
  v53[2] = v66;
  v53[3] = v51;
  v53[4] = v52;
  v54;
  v55 = v51;
  v56 = v52;
  sub_1003C06E0(sub_1003C3D40, v53);
}

uint64_t sub_1003C0628(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = [a1 respondsToSelector:"service:account:receivedGroupSessionParticipantUpdate:context:"];
  if (result)
  {
    v9 = *(a2 + OBJC_IVAR___CSDSimulatedIDSService_idsService);
    swift_unknownObjectRetain();
    v10 = sub_1003C0C80();
    [a1 service:v9 account:v10 receivedGroupSessionParticipantUpdate:a3 context:a4];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1003C06E0(uint64_t a1, uint64_t a2)
{
  v34 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100007FDC();
  v33 = v7 - v6;
  v36 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100007FDC();
  v32 = v12 - v11;
  v29 = type metadata accessor for NSFastEnumerationIterator();
  sub_100007FEC();
  v28 = v13;
  __chkstk_darwin(v14);
  sub_100007FDC();
  v17 = v16 - v15;
  v39 = OBJC_IVAR___CSDSimulatedIDSService_delegatesToQueues;
  v40 = v2;
  v18 = [*(v2 + OBJC_IVAR___CSDSimulatedIDSService_delegatesToQueues) keyEnumerator];
  NSEnumerator.makeIterator()();

  v35 = (v4 + 8);
  v19 = &unk_1006A8ED8;
  v30 = (v9 + 8);
  v31 = v17;
  while (1)
  {
    NSFastEnumerationIterator.next()();
    if (!v48)
    {
      break;
    }

    sub_10003EBF0(&v47, &aBlock);
    sub_10026D814(v19, &unk_100584EC0);
    if (swift_dynamicCast())
    {
      v20 = v46;
      v21 = [*(v40 + v39) objectForKey:v46];
      if (v21)
      {
        v22 = v21;
        v23 = swift_allocObject();
        v23[2] = a1;
        v23[3] = a2;
        v23[4] = v20;
        v44 = sub_1003C23F0;
        v45 = v23;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v42 = sub_100004CEC;
        v43 = &unk_10062CCC0;
        v24 = v19;
        v25 = _Block_copy(&aBlock);

        swift_unknownObjectRetain();
        static DispatchQoS.unspecified.getter();
        v46 = _swiftEmptyArrayStorage;
        sub_10000EFE8(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
        sub_10001000C(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0, &protocol conformance descriptor for [A]);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        v26 = v25;
        v19 = v24;
        v17 = v31;
        _Block_release(v26);
        swift_unknownObjectRelease();

        (*v35)(v33, v34);
        (*v30)(v32, v36);
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  return (*(v28 + 8))(v17, v29);
}

id sub_1003C0C80()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  sub_100007FEC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100007FDC();
  v8 = v7 - v6;
  v9 = OBJC_IVAR___CSDSimulatedIDSService____lazy_storage___account;
  v10 = *(v1 + OBJC_IVAR___CSDSimulatedIDSService____lazy_storage___account);
  v11 = v10;
  if (v10 == 1)
  {
    v12 = (*(v1 + OBJC_IVAR___CSDSimulatedIDSService_simulatedConversationManager) + OBJC_IVAR___CSDSimulatedConversationManager_localCallerID);
    v13 = *v12;
    v14 = v12[1];

    UUID.init()();
    v15 = UUID.uuidString.getter();
    v17 = v16;
    (*(v4 + 8))(v8, v2);
    v18 = objc_allocWithZone(IDSAccount);
    v11 = sub_1003C22F4(v13, v14, v15, v17, 0x6574616C756D6973, 0xE900000000000064);
    v19 = *(v1 + v9);
    *(v1 + v9) = v11;
    v20 = v11;
    sub_1003C23D0(v19);
  }

  sub_1003C23E0(v10);
  return v11;
}

void sub_1003C0E50(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___CSDSimulatedIDSService____lazy_storage___account);
  *(v1 + OBJC_IVAR___CSDSimulatedIDSService____lazy_storage___account) = a1;
  sub_1003C23D0(v2);
}

uint64_t sub_1003C0FCC()
{
  v1 = *(*(v0 + OBJC_IVAR___CSDSimulatedIDSService_simulatedConversationManager) + OBJC_IVAR___CSDSimulatedConversationManager_localCallerID);

  return v1;
}

void sub_1003C1080()
{
  sub_10026D814(&qword_1006A4760, &unk_10057EA60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057D690;
  v2 = (*(v0 + OBJC_IVAR___CSDSimulatedIDSService_simulatedConversationManager) + OBJC_IVAR___CSDSimulatedConversationManager_localCallerID);
  v3 = v2[1];
  *(inited + 32) = *v2;
  *(inited + 40) = v3;

  sub_10039B534();
}

void sub_1003C1758(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
}

void sub_1003C17E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9)
{
  v11 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v11 - 8);
  v13 = &v20 - v12;
  UUID.init(uuidString:)();
  v14 = type metadata accessor for UUID();
  if (sub_100015468(v13, 1, v14) == 1)
  {
    __break(1u);
  }

  else
  {
    v15 = *(v9 + OBJC_IVAR___CSDSimulatedIDSService_simulatedConversationManager);
    v16 = objc_allocWithZone(type metadata accessor for SimulatedIDSGroupSessionProvider(0));

    v17 = v15;
    v18 = a9;
    v19 = a7;
    sub_1003BB720();
  }
}

id sub_1003C1A1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SimulatedIDSService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1003C1D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void, void))
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  (a5)[2](a5, isa, 0);

  _Block_release(a5);
}

void sub_1003C1E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (**a8)(void, void, void))
{
  (a8[2])(a8, 1, 0, a4, a5, a6, a7);

  _Block_release(a8);
}

id sub_1003C1FE0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithService:v3];

  return v4;
}

id sub_1003C2044(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v16.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v17 = String._bridgeToObjectiveC()();

  v18.super.isa = Date._bridgeToObjectiveC()().super.isa;
  if (a11 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100290B6C(a10, a11);
  }

  if (a13 >> 60 == 15)
  {
    v20 = 0;
  }

  else
  {
    v20 = Data._bridgeToObjectiveC()().super.isa;
    sub_100290B6C(a12, a13);
  }

  if (a14)
  {
    sub_100006AF0(0, &qword_1006A2BA0, IDSURI_ptr);
    v21.super.isa = Array._bridgeToObjectiveC()().super.isa;

    if (a15)
    {
LABEL_9:
      v22.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      goto LABEL_12;
    }
  }

  else
  {
    v21.super.isa = 0;
    if (a15)
    {
      goto LABEL_9;
    }
  }

  v22.super.isa = 0;
LABEL_12:
  v23 = type metadata accessor for UUID();
  v24 = 0;
  if (sub_100015468(a16, 1, v23) != 1)
  {
    v24 = UUID._bridgeToObjectiveC()().super.isa;
    (*(*(v23 - 8) + 8))(a16, v23);
  }

  LOBYTE(v28) = a8 & 1;
  v25 = [v32 initWithGroupUUID:v16.super.isa isInitiator:a2 & 1 participantIdentifier:a3 participantDestinationID:v17 participantUpdateType:a6 participantUpdateSubtype:a7 fromServer:v28 serverDate:v18.super.isa participantData:isa clientContextData:v20 members:v21.super.isa participantIDs:v22.super.isa relaySessionID:v24];

  v26 = type metadata accessor for Date();
  (*(*(v26 - 8) + 8))(a9, v26);
  (*(*(v23 - 8) + 8))(a1, v23);
  return v25;
}

id sub_1003C22F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v9 = String._bridgeToObjectiveC()();

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v10 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v9 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v10 = String._bridgeToObjectiveC()();

  if (!a6)
  {
    goto LABEL_7;
  }

LABEL_4:
  v11 = String._bridgeToObjectiveC()();

LABEL_8:
  v12 = [v6 initWithLoginID:v9 uniqueID:v10 serviceName:v11];

  return v12;
}

void sub_1003C23D0(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_1003C23E0(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_1003C2420(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v2 = a1 + 56;
    sub_10000C830();
    v5 = v4 & v3;
    v7 = (v6 + 63) >> 6;

    v8 = 0;
    if (!v5)
    {
      goto LABEL_4;
    }

    do
    {
LABEL_8:
      v5 &= v5 - 1;

      sub_100428F00();
    }

    while (v5);
    while (1)
    {
LABEL_4:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v5 = *(v2 + 8 * v9);
      ++v8;
      if (v5)
      {
        v8 = v9;
        goto LABEL_8;
      }
    }
  }
}

void sub_1003C2540(uint64_t a1)
{
  v3 = sub_10026D814(&unk_1006A8EF0, &qword_100584ED8);
  __chkstk_darwin(v3 - 8);
  v5 = v17 - v4;
  v6 = type metadata accessor for Participant();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    v17[0] = v7 + 8;
    v17[1] = v7 + 16;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v7 + 16))(v9, *(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v6);
      sub_10042919C();
      (*(v7 + 8))(v9, v6);
      sub_1000099A4(v5, &unk_1006A8EF0, &qword_100584ED8);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_1003C275C(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        sub_100429184(*(*(a1 + 48) + ((v9 << 9) | (8 * v10))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

void (*sub_1003C2854(unint64_t a1, void (*a2)(char *, unint64_t, uint64_t, __n128)))(char *, unint64_t, uint64_t, __n128)
{
  v4 = sub_10026D814(&unk_1006A8EF0, &qword_100584ED8);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v66 - v8;
  v10 = type metadata accessor for Participant();
  v11 = __chkstk_darwin(v10);
  v85 = (&v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __chkstk_darwin(v11);
  v15 = &v66 - v14;
  __chkstk_darwin(v13);
  v82 = (&v66 - v17);
  if (!*(a2 + 2))
  {

    return &_swiftEmptySetSingleton;
  }

  v72 = v7;
  v67 = 0;
  v19 = a1 + 56;
  v18 = *(a1 + 56);
  v20 = -1 << *(a1 + 32);
  v76 = ~v20;
  if (-v20 < 64)
  {
    v21 = ~(-1 << -v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v18;
  v73 = (63 - v20) >> 6;
  v75 = (v16 + 32);
  v83 = (a2 + 56);
  v80 = v16;
  v86 = v16 + 16;
  v87 = (v16 + 8);
  v77 = a1;

  v23 = 0;
  v74 = a1 + 56;
  v69 = v9;
LABEL_6:
  v24 = v22;
  v25 = v23;
  v84 = v23;
  if (v22)
  {
LABEL_12:
    a1 = (v24 - 1) & v24;
    v28 = v77;
    (*(v80 + 16))(v9, *(v77 + 48) + *(v80 + 72) * (__clz(__rbit64(v24)) | (v25 << 6)), v10);
    v29 = 0;
    v26 = v9;
    v27 = v25;
LABEL_13:
    sub_10000AF74(v26, v29, 1, v10);
    v88 = v28;
    v89 = v19;
    v90 = v76;
    v91 = v27;
    v92 = a1;
    if (sub_100015468(v26, 1, v10) == 1)
    {
      goto LABEL_47;
    }

    v71 = *v75;
    v71(v82, v26, v10);
    v70 = sub_10000EFE8(&unk_1006A4860, &type metadata accessor for Participant, &protocol conformance descriptor for Participant);
    v30 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v81 = ~(-1 << *(a2 + 32));
    while (1)
    {
      v19 = v30 & v81;
      if (((1 << (v30 & v81)) & v83[(v30 & v81) >> 6]) == 0)
      {
        (*v87)(v82, v10);
        v23 = v27;
        v22 = a1;
        v19 = v74;
        v9 = v69;
        goto LABEL_6;
      }

      v78 = 1 << v19;
      v79 = v19 >> 6;
      v25 = a2;
      v31 = *(a2 + 6);
      v32 = v80;
      v84 = *(v80 + 72);
      v33 = *(v80 + 16);
      v33(v15, v31 + v84 * v19, v10);
      v34 = sub_10000EFE8(&unk_1006A8F00, &type metadata accessor for Participant, &protocol conformance descriptor for Participant);
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();
      a2 = *(v32 + 8);
      (a2)(v15, v10);
      if (v35)
      {
        break;
      }

      v30 = v19 + 1;
      a2 = v25;
    }

    v80 = v33;
    v81 = v34;
    v36 = (a2)(v82, v10);
    v37 = *(v25 + 32);
    v68 = ((1 << v37) + 63) >> 6;
    v22 = 8 * v68;
    if ((v37 & 0x3Fu) <= 0xD)
    {
LABEL_21:
      v82 = a2;
      v69 = &v66;
      __chkstk_darwin(v36);
      v38 = &v66 - ((v22 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v38, v83, v22);
      v39 = *&v38[8 * v79] & ~v78;
      v40 = *(v25 + 16);
      v78 = v38;
      *&v38[8 * v79] = v39;
      v41 = v40 - 1;
      v26 = v72;
      v42 = v74;
      v43 = v73;
      v44 = v77;
      a2 = v25;
      v45 = v80;
      while (1)
      {
        v79 = v41;
LABEL_23:
        if (!a1)
        {
          break;
        }

        v46 = v27;
LABEL_29:
        v47 = __clz(__rbit64(a1));
        v48 = (a1 - 1) & a1;
        v45(v26, *(v44 + 48) + (v47 | (v46 << 6)) * v84, v10);
        v49 = 0;
LABEL_30:
        sub_10000AF74(v26, v49, 1, v10);
        v88 = v44;
        v89 = v42;
        v90 = v76;
        v91 = v27;
        v92 = v48;
        if (sub_100015468(v26, 1, v10) == 1)
        {
          sub_1000099A4(v26, &unk_1006A8EF0, &qword_100584ED8);
          sub_1003EB370(v78, v68, v79, a2);
          a2 = v60;
          goto LABEL_42;
        }

        v80 = v48;
        v50 = v45;
        v71(v85, v26, v10);
        v51 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v52 = a2;
        v53 = ~(-1 << *(a2 + 32));
        do
        {
          v54 = v51 & v53;
          v55 = (v51 & v53) >> 6;
          v56 = 1 << (v51 & v53);
          if ((v56 & v83[v55]) == 0)
          {
            (v82)(v85, v10);
            a2 = v52;
            v44 = v77;
            v26 = v72;
            v42 = v74;
            v43 = v73;
            v45 = v50;
            a1 = v80;
            goto LABEL_23;
          }

          v50(v15, *(v52 + 6) + v54 * v84, v10);
          v57 = dispatch thunk of static Equatable.== infix(_:_:)();
          (v82)(v15, v10);
          v51 = v54 + 1;
        }

        while ((v57 & 1) == 0);
        (v82)(v85, v10);
        v58 = *(v78 + 8 * v55);
        *(v78 + 8 * v55) = v58 & ~v56;
        v59 = (v58 & v56) == 0;
        a2 = v52;
        v44 = v77;
        v26 = v72;
        v42 = v74;
        v43 = v73;
        v45 = v50;
        a1 = v80;
        if (v59)
        {
          goto LABEL_23;
        }

        v41 = v79 - 1;
        if (__OFSUB__(v79, 1))
        {
          __break(1u);
        }

        if (v79 == 1)
        {

          a2 = &_swiftEmptySetSingleton;
          goto LABEL_42;
        }
      }

      while (1)
      {
        v46 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v46 >= v43)
        {
          v48 = 0;
          v49 = 1;
          goto LABEL_30;
        }

        a1 = *(v42 + 8 * v46);
        ++v27;
        if (a1)
        {
          v27 = v46;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_47:
      sub_1000099A4(v26, &unk_1006A8EF0, &qword_100584ED8);
      v61 = v77;
LABEL_43:
      sub_100022DDC(v61);
      return a2;
    }
  }

  else
  {
    v26 = v9;
    v27 = v23;
    while (1)
    {
      v25 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v25 >= v73)
      {
        a1 = 0;
        v29 = 1;
        v28 = v77;
        goto LABEL_13;
      }

      v24 = *(v19 + 8 * v25);
      ++v27;
      if (v24)
      {
        v9 = v26;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_21;
  }

  v63 = swift_slowAlloc();
  v64 = v67;
  v65 = sub_1003C3B20(v63, v68, v83, v68, v25, v19, &v88);
  if (!v64)
  {
    a2 = v65;

LABEL_42:
    v61 = v88;
    goto LABEL_43;
  }

  __break(1u);
  return result;
}

void *sub_1003C3168(unint64_t a1, void *a2)
{
  v3 = a2;
  if (a2[2])
  {
    v39 = 0;
    v4 = 0;
    v6 = a1 + 56;
    v5 = *(a1 + 56);
    v7 = -1;
    v8 = -1 << *(a1 + 32);
    v43 = ~v8;
    v44 = a1 + 56;
    if (-v8 < 64)
    {
      v9 = ~(-1 << -v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & v5;
    v11 = (63 - v8) >> 6;
    v12 = a2 + 7;
    v13 = 1;
    v45 = a1;
    if ((v9 & v5) != 0)
    {
LABEL_6:
      v14 = v4;
LABEL_11:
      v16 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v2 = *(*(a1 + 48) + ((v14 << 9) | (8 * v16)));
      v17 = static Hasher._hash(seed:_:)();
      v18 = -1 << *(v3 + 32);
      v19 = ~v18;
      while (1)
      {
        v4 = v17 & v19;
        v6 = (v17 & v19) >> 6;
        v7 = 1 << (v17 & v19);
        if ((v7 & v12[v6]) == 0)
        {
          v4 = v14;
          v6 = v44;
          a1 = v45;
          v7 = -1;
          if (v10)
          {
            goto LABEL_6;
          }

          goto LABEL_7;
        }

        if (*(v3[6] + 8 * v4) == v2)
        {
          break;
        }

        v17 = v4 + 1;
      }

      v47 = v43;
      v48 = v14;
      v49 = v10;
      v46[0] = v45;
      v46[1] = v44;
      v13 = (63 - v18) >> 6;
      v2 = 8 * v13;

      if (v13 > 0x80)
      {
        goto LABEL_40;
      }

      while (1)
      {
        v40 = v13;
        v41 = &v39;
        __chkstk_darwin(v20);
        v13 = &v39 - v21;
        memcpy(&v39 - v21, v3 + 7, v2);
        v22 = v3[2];
        *(v13 + 8 * v6) &= ~v7;
        v23 = v22 - 1;
        v4 = 1;
        v7 = v44;
        v6 = v45;
LABEL_19:
        v42 = v23;
LABEL_20:
        while (v10)
        {
LABEL_25:
          v25 = __clz(__rbit64(v10));
          v10 &= v10 - 1;
          v2 = *(*(v6 + 48) + ((v14 << 9) | (8 * v25)));
          v26 = static Hasher._hash(seed:_:)();
          v27 = ~(-1 << *(v3 + 32));
          while (1)
          {
            v28 = v26 & v27;
            v29 = (v26 & v27) >> 6;
            v30 = 1 << (v26 & v27);
            if ((v30 & v12[v29]) == 0)
            {
              break;
            }

            v26 = v28 + 1;
            if (*(v3[6] + 8 * v28) == v2)
            {
              v31 = *(v13 + 8 * v29);
              *(v13 + 8 * v29) = v31 & ~v30;
              if ((v31 & v30) == 0)
              {
                goto LABEL_20;
              }

              v23 = v42 - 1;
              if (__OFSUB__(v42, 1))
              {
                __break(1u);
              }

              if (v42 == 1)
              {

                v3 = &_swiftEmptySetSingleton;
                goto LABEL_33;
              }

              goto LABEL_19;
            }
          }
        }

        while (1)
        {
          v24 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v24 >= v11)
          {
            sub_1003EB660(v13, v40, v42, v3);
            v3 = v32;
            goto LABEL_33;
          }

          v10 = *(v7 + 8 * v24);
          ++v14;
          if (v10)
          {
            v14 = v24;
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:

        if (!swift_stdlib_isStackAllocationSafe())
        {
          break;
        }
      }

      v35 = swift_slowAlloc();
      v36 = v39;
      v37 = sub_1003C3BA8(v35, v13, v3 + 7, v13, v3, v4, v46);
      if (v36)
      {

        __break(1u);
        return result;
      }

      v38 = v37;

      v6 = v46[0];
      v43 = v47;
      v3 = v38;
LABEL_33:
      v33 = v6;
    }

    else
    {
LABEL_7:
      v15 = v4;
      while (1)
      {
        v14 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_39;
        }

        if (v14 >= v11)
        {
          break;
        }

        v10 = *(v6 + 8 * v14);
        ++v15;
        if (v10)
        {
          goto LABEL_11;
        }
      }
    }

    sub_100022DDC(v33);
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v3;
}

void sub_1003C3554(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v38 = a2;
  v9 = sub_10026D814(&unk_1006A8EF0, &qword_100584ED8);
  __chkstk_darwin(v9 - 8);
  v11 = &v38 - v10;
  v12 = type metadata accessor for Participant();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v49 = &v38 - v17;
  v18 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v19 = v18 - 1;
  v40 = a1;
  v41 = (v13 + 32);
  v45 = a3 + 56;
  v46 = v13 + 16;
  v47 = (v13 + 8);
  v48 = a3;
  v42 = v11;
  v43 = a5;
  while (1)
  {
    v39 = v19;
LABEL_3:
    v21 = *a5;
    v20 = a5[1];
    v22 = a5[2];
    v23 = a5[3];
    v24 = a5[4];
    v44 = v22;
    if (!v24)
    {
      break;
    }

    v25 = v23;
LABEL_9:
    v26 = (v24 - 1) & v24;
    (*(v13 + 16))(v11, *(v21 + 48) + *(v13 + 72) * (__clz(__rbit64(v24)) | (v25 << 6)), v12);
    v27 = 0;
LABEL_10:
    sub_10000AF74(v11, v27, 1, v12);
    *a5 = v21;
    a5[1] = v20;
    a5[2] = v44;
    a5[3] = v23;
    a5[4] = v26;
    if (sub_100015468(v11, 1, v12) == 1)
    {
      sub_1000099A4(v11, &unk_1006A8EF0, &qword_100584ED8);
      v37 = v48;

      sub_1003EB370(v40, v38, v39, v37);
      return;
    }

    (*v41)(v49, v11, v12);
    v28 = v48;
    sub_10000EFE8(&unk_1006A4860, &type metadata accessor for Participant, &protocol conformance descriptor for Participant);
    v29 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v30 = ~(-1 << *(v28 + 32));
    do
    {
      v31 = v29 & v30;
      v32 = (v29 & v30) >> 6;
      v33 = 1 << (v29 & v30);
      if ((v33 & *(v45 + 8 * v32)) == 0)
      {
        (*v47)(v49, v12);
        v11 = v42;
        a5 = v43;
        goto LABEL_3;
      }

      (*(v13 + 16))(v16, *(v48 + 48) + *(v13 + 72) * v31, v12);
      sub_10000EFE8(&unk_1006A8F00, &type metadata accessor for Participant, &protocol conformance descriptor for Participant);
      v34 = dispatch thunk of static Equatable.== infix(_:_:)();
      v35 = *(v13 + 8);
      v35(v16, v12);
      v29 = v31 + 1;
    }

    while ((v34 & 1) == 0);
    v35(v49, v12);
    v36 = v40[v32];
    v40[v32] = v36 & ~v33;
    v11 = v42;
    a5 = v43;
    if ((v36 & v33) == 0)
    {
      goto LABEL_3;
    }

    v19 = v39 - 1;
    if (__OFSUB__(v39, 1))
    {
      goto LABEL_23;
    }

    if (v39 == 1)
    {
      return;
    }
  }

  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= ((v22 + 64) >> 6))
    {
      v26 = 0;
      v27 = 1;
      goto LABEL_10;
    }

    v24 = *(v20 + 8 * v25);
    ++v23;
    if (v24)
    {
      v23 = v25;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_1003C39A4(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v9 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v10 = v9 - 1;
  v11 = a3 + 56;
LABEL_2:
  while (1)
  {
    v12 = a5[3];
    v13 = a5[4];
    if (!v13)
    {
      break;
    }

    v14 = a5[3];
LABEL_7:
    v15 = *(*(*a5 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    a5[3] = v14;
    a5[4] = (v13 - 1) & v13;
    v16 = static Hasher._hash(seed:_:)();
    v17 = ~(-1 << *(a3 + 32));
    while (1)
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v11 + 8 * v19)) == 0)
      {
        break;
      }

      v16 = v18 + 1;
      if (*(*(a3 + 48) + 8 * v18) == v15)
      {
        v21 = result[v19];
        result[v19] = v21 & ~v20;
        if ((v21 & v20) == 0)
        {
          goto LABEL_2;
        }

        if (__OFSUB__(v10--, 1))
        {
          goto LABEL_16;
        }

        if (v10)
        {
          goto LABEL_2;
        }

        return;
      }
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v12;
      a5[4] = 0;

      sub_1003EB660(result, a2, v10, a3);
      return;
    }

    v13 = *(a5[1] + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void *sub_1003C3B20(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_1003C3554(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_1003C3BA8(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_1003C39A4(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_1003C3C30(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&unk_1006A7600, &unk_100584E50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003C3CC0()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_1003C3D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 8))(a1, a2);
  v4 = result;
  v5 = 0;
  v6 = *(result + 16);
  for (i = result + 32; ; i += 40)
  {
    if (v6 == v5)
    {

      return v6 != v5;
    }

    if (v5 >= *(v4 + 16))
    {
      break;
    }

    sub_100009AB0(i, v26);
    sub_100009B14(v26, v27);
    v8 = sub_10000811C();
    v10 = v9(v8);
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v10 == v13 && v12 == v14)
    {
      goto LABEL_15;
    }

    v16 = sub_10000A354(v13);

    if (v16)
    {
      goto LABEL_16;
    }

    sub_100009B14(v26, v27);
    v17 = sub_10000811C();
    v19 = v18(v17);
    v21 = v20;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v19 == v22 && v21 == v23)
    {
LABEL_15:

LABEL_16:

      sub_100009B7C(v26);
      return v6 != v5;
    }

    v25 = sub_10000A354(v22);

    if (v25)
    {
      goto LABEL_16;
    }

    result = sub_100009B7C(v26);
    ++v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003C3F24()
{
  v1 = [v0 bundleIdentifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_1003C3F7C(uint64_t a1)
{
  v2 = [v1 entriesForContact:a1];
  if (v2)
  {
    v3 = v2;
    sub_1003C4020();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_1002F3E70();
  v5 = v4;

  return v5;
}

unint64_t sub_1003C4020()
{
  result = qword_1006A4850;
  if (!qword_1006A4850)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A4850);
  }

  return result;
}

id sub_1003C4064(void *a1)
{
  swift_getObjectType();
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 init];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = v7;
  [v9 setDeviceFamily:{objc_msgSend(ObjCClassFromMetadata, "currentDeviceFamily")}];
  UUID.init()();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v6, v3);
  [v9 setWindowUUID:isa];

  sub_1000496D4();
  v11 = NSNumber.init(integerLiteral:)(1).super.super.isa;
  [a1 contentRect];
  v16 = [objc_opt_self() valueWithRect:{v12, v13, v14, v15}];
  [a1 pointPixelScale];
  v17 = Float._bridgeToObjectiveC()().super.super.isa;
  [v9 setResolutionAttributesWithContentScale:v11 contentRect:v16 displayScale:v17];

  v18 = [a1 contentType];
  if (v18)
  {
    if (v18 == 1)
    {
      [v9 setStyle:2];
    }

    else
    {
      if (qword_1006A0AF8 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_10000AF9C(v19, qword_1006BA568);
      v20 = a1;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v31 = v24;
        *v23 = 136315138;
        v30 = [v20 contentType];
        v25 = String.init<A>(reflecting:)();
        v27 = sub_10002741C(v25, v26, &v31);

        *(v23 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v21, v22, "Unknown AVCScreenCaptureAttributesContentType: %s", v23, 0xCu);
        sub_100009B7C(v24);
      }
    }
  }

  else
  {
    [v9 setStyle:3];
  }

  [v9 setWindowed:{objc_msgSend(v9, "style") == 3}];
  [a1 displayID];
  v28 = UInt32._bridgeToObjectiveC()().super.super.isa;
  [v9 setDisplayID:v28];

  return v9;
}

uint64_t sub_1003C4478(void *a1)
{
  v2 = v1;
  v32 = a1;
  v33 = type metadata accessor for DispatchWorkItemFlags();
  sub_1000083C0();
  v36 = v3;
  __chkstk_darwin(v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DispatchQoS();
  sub_1000083C0();
  v34 = v8;
  v35 = v7;
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTime();
  v31 = v11;
  sub_1000083C0();
  v13 = v12;
  v15 = __chkstk_darwin(v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v30 - v18;
  v20 = OBJC_IVAR____TtC13callservicesd28MicrophoneInjectionUtilities_mMessageSequenceNumber;
  swift_beginAccess();
  v21 = *&v2[v20];
  sub_1002A8914();
  v22 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v30 = *(v13 + 8);
  v30(v17, v11);
  v23 = swift_allocObject();
  v24 = v32;
  v23[2] = v2;
  v23[3] = v24;
  v23[4] = v21;
  aBlock[4] = sub_1003C51C4;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_10062CE38;
  v25 = _Block_copy(aBlock);
  v26 = v24;
  v27 = v2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  v28 = v33;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v25);

  (*(v36 + 8))(v6, v28);
  (*(v34 + 8))(v10, v35);
  return (v30)(v19, v31);
}

void sub_1003C4830(void *a1, unsigned __int8 a2, uint64_t a3, char a4)
{
  if (a1)
  {
    if ((a4 & 1) != 0 || (v8 = OBJC_IVAR____TtC13callservicesd28MicrophoneInjectionUtilities_mMessageSequenceNumber, v9 = swift_beginAccess(), *(v4 + v8) == a3))
    {
      v10 = (v4 + OBJC_IVAR____TtC13callservicesd28MicrophoneInjectionUtilities_mMessageSequenceNumber);
      swift_beginAccess();
      atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
      v11 = swift_endAccess();
      v12 = a2 << 13;
      v13 = sub_100010B20(v11);
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_10057D6A0;
      v15 = String.init<A>(reflecting:)();
      v17 = v16;
      *(v14 + 56) = &type metadata for String;
      v18 = sub_100009D88();
      *(v14 + 64) = v18;
      *(v14 + 32) = v15;
      *(v14 + 40) = v17;
      v19 = String.init<A>(reflecting:)();
      *(v14 + 96) = &type metadata for String;
      *(v14 + 104) = v18;
      *(v14 + 72) = v19;
      *(v14 + 80) = v20;
      v21 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("setMicrophoneInjectionMode: %@, %@", 34, 2, &_mh_execute_header, v13, v21, v14);

      v22 = [a1 audioSession];
      v35[0] = 0;
      LODWORD(v12) = [v22 setPreferredMicrophoneInjectionMode:v12 error:v35];

      v23 = v35[0];
      if (v12)
      {

        v24 = v23;
      }

      else
      {
        v25 = v35[0];
        v26 = _convertNSErrorToError(_:)();

        v27 = swift_willThrow();
        v28 = sub_100010B20(v27);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_10057D690;
        v35[0] = v26;
        swift_errorRetain();
        sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
        v30 = String.init<A>(reflecting:)();
        *(v29 + 56) = &type metadata for String;
        *(v29 + 64) = v18;
        *(v29 + 32) = v30;
        *(v29 + 40) = v31;
        v32 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("An exception occurred setting setPreferredMicrophoneInjectionMode %@", 68, 2, &_mh_execute_header, v28, v32, v29);
      }
    }

    else
    {
      v33 = sub_100010B20(v9);
      v34 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Ignoring out of order call to setMicrophoneInjectionMode", 56, 2, &_mh_execute_header, v33, v34, _swiftEmptyArrayStorage);
    }
  }
}

id sub_1003C4B7C()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC13callservicesd28MicrophoneInjectionUtilities_DelayTimeInSecondsToAllowAudioRingBufferToClear] = 0x3FE0624DD2F1A9FCLL;
  *&v0[OBJC_IVAR____TtC13callservicesd28MicrophoneInjectionUtilities_mMessageSequenceNumber] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "init");
}

id uplinkAndDownlinkAudioPlayer(for:delegate:volume:)(uint64_t a1, uint64_t a2, float a3)
{
  swift_getObjectType();

  return sub_1003C4C58(a1, a2, a3);
}

id sub_1003C4C58(uint64_t a1, uint64_t a2, float a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v39[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v39[-1] - v11;
  v13 = *(v7 + 16);
  v13(&v39[-1] - v11, a1, v6);
  v14 = objc_allocWithZone(AVAudioPlayer);
  v15 = sub_10039F99C(v12);
  [v15 setNumberOfLoops:0];
  *&v16 = a3;
  [v15 setVolume:v16];
  [v15 setDelegate:a2];
  v17 = [objc_opt_self() auxiliarySession];
  v39[0] = 0;
  if ([v17 setCategory:AVAudioSessionCategoryVoiceOver withOptions:1 error:v39])
  {
    v18 = v39[0];
    v19 = sub_100010B20([v15 setAudioSession:v17]);
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_10057D6A0;
    v13(v10, a1, v6);
    v21 = String.init<A>(reflecting:)();
    v23 = v22;
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = sub_100009D88();
    *(v20 + 32) = v21;
    *(v20 + 40) = v23;
    *(v20 + 96) = &type metadata for Float;
    *(v20 + 104) = &protocol witness table for Float;
    *(v20 + 72) = a3;
    v24 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Created uplink/downlink audio player with URL %@, volume: %f", 60, 2, &_mh_execute_header, v19, v24, v20);
  }

  else
  {
    v25 = v39[0];
    v26 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v28 = sub_100010B20(v27);
    v29 = static os_log_type_t.error.getter();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_10057D6A0;
    v13(v10, a1, v6);
    v31 = String.init<A>(reflecting:)();
    v33 = v32;
    *(v30 + 56) = &type metadata for String;
    v34 = sub_100009D88();
    *(v30 + 64) = v34;
    *(v30 + 32) = v31;
    *(v30 + 40) = v33;
    v39[0] = v26;
    swift_errorRetain();
    sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    v35 = String.init<A>(reflecting:)();
    *(v30 + 96) = &type metadata for String;
    *(v30 + 104) = v34;
    *(v30 + 72) = v35;
    *(v30 + 80) = v36;
    os_log(_:dso:log:type:_:)("Error creating AVAudioPlayer with fileURL %@: %@", 48, 2, &_mh_execute_header, v28, v29, v30);

    return 0;
  }

  return v15;
}