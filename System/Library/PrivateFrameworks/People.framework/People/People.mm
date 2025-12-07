void sub_10000235C(id a1)
{
  qword_100064040 = os_log_create("com.apple.people", "IMCoreInterface");

  _objc_release_x1();
}

void sub_1000024C0(id a1, NSArray *a2)
{
  if (a2 || [0 count])
  {
    IMSPIMarkSPIMessagesAsRead();
  }

  _objc_release_x1();
}

void sub_1000026BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create("com.apple.people.checkWithWait", v4);

  v13 = *(a1 + 32);
  v6 = [NSArray arrayWithObjects:&v13 count:1];
  v12 = *(a1 + 40);
  v7 = [NSArray arrayWithObjects:&v12 count:1];
  v9 = *(a1 + 40);
  v10 = *(a1 + 32);
  v11 = v3;
  v8 = v3;
  IMSPIQueryMessagesWithIDsWithOnlyUnreadAndQOS();
}

void sub_10000284C(void *a1, void *a2)
{
  v3 = a2;
  v4 = +[IMCoreInterface logHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 count];
    v6 = a1[4];
    v7 = a1[5];
    v9[0] = 67109634;
    v9[1] = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "checkWithWait returned %d items for %@ on %@", v9, 0x1Cu);
  }

  if (v3)
  {
    v8 = v3;
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  (*(a1[6] + 16))(a1[6], v8, 0);
}

id sub_100002DB8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [IMCoreInterface checkWithWait:*(a1 + 32) service:IMSPIiMessageService];
  v5 = [v4 then];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100002EBC;
  v10[3] = &unk_10005D910;
  v11 = v3;
  v6 = v5[2];
  v7 = v3;
  v8 = v6(v5, v10);

  return v8;
}

id sub_100002EC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [IMCoreInterface checkWithWait:*(a1 + 32) service:IMSPISMSService];
  v5 = [v4 then];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100002FCC;
  v10[3] = &unk_10005D910;
  v11 = v3;
  v6 = v5[2];
  v7 = v3;
  v8 = v6(v5, v10);

  return v8;
}

id sub_100002FD8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [IMCoreInterface checkWithWait:*(a1 + 32) service:@"RCS"];
  v5 = [v4 then];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000030D8;
  v10[3] = &unk_10005D910;
  v11 = v3;
  v6 = v5[2];
  v7 = v3;
  v8 = v6(v5, v10);

  return v8;
}

id sub_1000030E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [IMCoreInterface checkWithWait:*(a1 + 32) service:@"SatelliteSMS"];
  v5 = [v4 then];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000031E4;
  v10[3] = &unk_10005D910;
  v11 = v3;
  v6 = v5[2];
  v7 = v3;
  v8 = v6(v5, v10);

  return v8;
}

id sub_1000031F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [IMCoreInterface checkWithWait:*(a1 + 32) service:@"iMessageLite"];
  v5 = [v4 then];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000032F0;
  v10[3] = &unk_10005D910;
  v11 = v3;
  v6 = v5[2];
  v7 = v3;
  v8 = v6(v5, v10);

  return v8;
}

id sub_1000032FC(id a1, NSArray *a2)
{
  v2 = a2;
  if ([(NSArray *)v2 count])
  {
    v3 = [[NSSortDescriptor alloc] initWithKey:@"date" ascending:1];
    v4 = [NSMutableArray arrayWithArray:v2];
    v10 = v3;
    v5 = [NSArray arrayWithObjects:&v10 count:1];
    [v4 sortUsingDescriptors:v5];

    +[NSMutableArray array];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100003470;
    v6 = v8[3] = &unk_10005D978;
    v9 = v6;
    [v4 enumerateObjectsUsingBlock:v8];
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  return v6;
}

void sub_100003470(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [MinMessageItem alloc];
  v7 = [v3 date];
  v5 = [v3 body];

  v6 = [(MinMessageItem *)v4 initWith:v7 andText:v5];
  [v2 addObject:v6];
}

uint64_t sub_10000351C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (!a2)
  {
    a2 = &__NSArray0__struct;
  }

  return (*(v2 + 16))(v2, a2);
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for Logger();
  sub_1000035E8(v3, qword_100062350);
  sub_10000364C(v3, qword_100062350);
  static PeopleLogger.daemon.getter();
  v4 = objc_autoreleasePoolPush();
  sub_100003684(v4, v5, v6);
  objc_autoreleasePoolPop(v4);
  v7 = [objc_opt_self() currentRunLoop];
  [v7 run];

  return 0;
}

uint64_t *sub_1000035E8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10000364C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_100003684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for Logger();
  sub_10000364C(v3, &unk_100062350);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    static CommandLine.arguments.getter();
    v8 = Array.description.getter();
    v10 = v9;

    v11 = sub_10002580C(v8, v10, &v18);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "Launching peopled with args %s", v6, 0xCu);
    sub_100003938(v7);
  }

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Daemon entering sandbox", v14, 2u);
  }

  if (_set_user_dir_suffix())
  {
    if (qword_1000623E0 != -1)
    {
      swift_once();
    }

    v15 = qword_100065528;
    sub_1000211C8();
    v16 = OBJC_IVAR____TtC7peopled11XPCListener__listener;
    [*(v15 + OBJC_IVAR____TtC7peopled11XPCListener__listener) setDelegate:v15];
    result = [*(v15 + v16) resume];
    if (qword_1000623F0 != -1)
    {
      return swift_once();
    }
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100003938(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void sub_100003984(void *a2@<X8>)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = String._bridgeToObjectiveC()();

  v5 = [v3 initWithStatusTypeIdentifier:v4];

  *a2 = v5;
}

id sub_1000039FC(uint64_t a1)
{
  v2 = [*v1 statusSubscriptionForHandle:a1];

  return v2;
}

uint64_t sub_100003A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = String._bridgeToObjectiveC()();
  v11[4] = a3;
  v11[5] = a4;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100003B00;
  v11[3] = &unk_10005DBA8;
  v9 = _Block_copy(v11);

  [v7 allStatusSubscriptionsWithPersistentSubscriptionAssertionForApplicationIdentifier:v8 completion:v9];
  _Block_release(v9);
}

uint64_t sub_100003B00(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_100007E38();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_100003B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PeopleLogger.daemon.getter();
  Logger.ifError(_:message:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100003CD0(void *a1)
{
  v2 = type metadata accessor for StatusType();
  v63 = *(v2 - 8);
  __chkstk_darwin(v2);
  v62 = &i - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100005E30(&qword_100062A80, &qword_10004ED60);
  __chkstk_darwin(v4 - 8);
  v60 = &i - v5;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v65 = &i - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &i - v11;
  __chkstk_darwin(v10);
  v14 = &i - v13;
  static PeopleLogger.daemon.getter();
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v15;
    *v19 = v15;
    v20 = v15;
    _os_log_impl(&_mh_execute_header, v16, v17, "Got UserStatusChangeEvent: %@", v18, 0xCu);
    sub_100007DB0(v19, &qword_100062758, &unk_10004E8A0);
  }

  v21 = *(v7 + 8);
  v21(v14, v6);
  v22 = [v15 statusChangeType];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  if (v23 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v25 == v26)
  {
  }

  else
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v27 & 1) == 0)
    {
      static PeopleLogger.daemon.getter();
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&_mh_execute_header, v45, v46, "Got a biome event with a non-kettle status type", v47, 2u);
      }

      v21(v12, v6);
      sub_100005E30(&qword_100062750, &qword_10004D990);
      v66 = 0;
      v67 = 0;
      return Promise.__allocating_init(with:)();
    }
  }

  isa = [v15 idsHandles];
  if (!isa)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v29 = [objc_opt_self() predicateForContactsMatchingHandleStrings:isa];

  sub_100005E78((v64 + 64), *(v64 + 88));
  v61 = v29;
  v30 = dispatch thunk of ContactFetcherProtocol.contacts(withPredicate:includeImages:)();
  v31 = v30;
  if (v30 >> 62)
  {
    goto LABEL_28;
  }

  v32 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v2; v32; i = v2)
  {
    v33 = 0;
    v65 = (v31 & 0xC000000000000001);
    v2 = v31 & 0xFFFFFFFFFFFFFF8;
    v34 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v65)
      {
        v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v33 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v35 = *(v31 + 8 * v33 + 32);
      }

      v36 = v35;
      v37 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      v38 = [v35 identifier];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_100022130(0, *(v34 + 2) + 1, 1, v34);
      }

      v43 = *(v34 + 2);
      v42 = *(v34 + 3);
      if (v43 >= v42 >> 1)
      {
        v34 = sub_100022130((v42 > 1), v43 + 1, 1, v34);
      }

      *(v34 + 2) = v43 + 1;
      v44 = &v34[16 * v43];
      *(v44 + 4) = v39;
      *(v44 + 5) = v41;
      ++v33;
      if (v37 == v32)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    v32 = _CocoaArrayWrapper.endIndex.getter();
  }

  v34 = _swiftEmptyArrayStorage;
LABEL_30:

  if (*(v34 + 2))
  {
    v49 = v64;
    Strong = swift_unknownObjectWeakLoadStrong();
    v51 = i;
    v53 = v62;
    v52 = v63;
    v54 = v61;
    if (Strong)
    {
      sub_10001CFB0(v49, v34, Strong);
      swift_unknownObjectRelease();
    }

    v55 = type metadata accessor for TaskPriority();
    v56 = v60;
    (*(*(v55 - 8) + 56))(v60, 1, 1, v55);
    v57 = swift_allocObject();
    *(v57 + 16) = 0;
    *(v57 + 24) = 0;
    sub_100014EE4(0, 0, v56, &unk_10004D9A0, v57);
  }

  else
  {

    v51 = i;
    v53 = v62;
    v52 = v63;
    v54 = v61;
  }

  type metadata accessor for PeopleAnalytics();
  (*(v52 + 104))(v53, enum case for StatusType.dndAvailability(_:), v51);
  static PeopleAnalytics.eventReceived(foundContacts:statusType:)();
  (*(v52 + 8))(v53, v51);
  sub_100005E30(&qword_100062750, &qword_10004D990);
  v66 = 0;
  v67 = 0;
  v58 = Promise.__allocating_init(with:)();

  return v58;
}

uint64_t sub_10000469C()
{
  v1 = type metadata accessor for StatusType();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_100004758, 0, 0);
}

uint64_t sub_100004758()
{
  (*(v0[3] + 104))(v0[4], enum case for StatusType.dndAvailability(_:), v0[2]);
  type metadata accessor for MainActor();
  v0[5] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100004810, v2, v1);
}

uint64_t sub_100004810()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v0[3];

  static MetricTemplate.updateStatusCount(for:signaled:)();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

id sub_1000048A8(uint64_t a1)
{
  v2 = sub_100005E30(&qword_100062738, &qword_10004D970);
  __chkstk_darwin(v2 - 8);
  v72 = &v58 - v3;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v58 - v9;
  v11 = type metadata accessor for Logger();
  v12 = __chkstk_darwin(v11);
  v74 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v17 = *(a1 + 16);
  if (!v17)
  {
    return 0;
  }

  v78 = (v14 + 8);
  v62 = (v5 + 32);
  v66 = (v5 + 56);
  v67 = &v58 - v15;
  v59 = (v5 + 48);
  v65 = (v5 + 8);
  v18 = 0;
  v19 = (a1 + 40);
  *&v16 = 136315394;
  v61 = v16;
  *&v16 = 136315138;
  v60 = v16;
  v70 = v8;
  v71 = v4;
  v68 = v11;
  v69 = v10;
  do
  {
    v22 = *(v19 - 1);
    v21 = *v19;

    v23 = sub_100007210(v22, v21, (v75 + 104));
    if (v23)
    {
      v24 = v23;
      v79 = v18;
      v77 = v17;
      v25 = v67;
      static PeopleLogger.daemon.getter();

      v73 = v24;
      v26 = v24;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v80[0] = swift_slowAlloc();
        *v29 = v61;
        v30 = sub_10002580C(v22, v21, v80);

        *(v29 + 4) = v30;
        *(v29 + 12) = 2080;
        v31 = [v26 debugDescription];
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        v35 = sub_10002580C(v32, v34, v80);
        v4 = v71;

        *(v29 + 14) = v35;
        _os_log_impl(&_mh_execute_header, v27, v28, "status for %s - %s", v29, 0x16u);
        swift_arrayDestroy();
        v8 = v70;

        v11 = v68;
      }

      else
      {
      }

      v36 = *v78;
      (*v78)(v25, v11);
      v37 = v74;
      static PeopleLogger.daemon.getter();
      v38 = v26;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();

      v41 = os_log_type_enabled(v39, v40);
      v17 = v77;
      v76 = v38;
      if (v41)
      {
        v64 = v36;
        v42 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v80[0] = v63;
        *v42 = v60;
        v43 = [v38 statusPayload];
        if (v43 && (v44 = v43, v45 = [v43 payloadDictionary], v44, v45))
        {
          static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          sub_10000760C(_swiftEmptyArrayStorage);
        }

        v46 = Dictionary.description.getter();
        v48 = v47;

        v49 = sub_10002580C(v46, v48, v80);

        *(v42 + 4) = v49;
        _os_log_impl(&_mh_execute_header, v39, v40, " => %s", v42, 0xCu);
        sub_100003938(v63);

        v11 = v68;
        v64(v74, v68);
        v8 = v70;
        v4 = v71;
      }

      else
      {

        v36(v37, v11);
      }

      v50 = v69;
      if (v79)
      {
        v51 = [v79 datePublished];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v52 = *v62;
        v53 = v72;
        (*v62)(v72, v8, v4);
        (*v66)(v53, 0, 1, v4);
        v52(v50, v53, v4);
      }

      else
      {
        v54 = v72;
        (*v66)(v72, 1, 1, v4);
        static Date.distantPast.getter();
        if ((*v59)(v54, 1, v4) != 1)
        {
          sub_100007DB0(v72, &qword_100062738, &qword_10004D970);
        }
      }

      v55 = v76;
      v56 = [v76 datePublished];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v56) = static Date.< infix(_:_:)();
      v57 = *v65;
      (*v65)(v8, v4);
      v57(v50, v4);
      if (v56)
      {

        result = v73;
      }

      else
      {

        result = v79;
      }
    }

    else
    {

      result = v18;
    }

    v19 += 2;
    v18 = result;
    --v17;
  }

  while (v17);
  return result;
}

void sub_100005038(void (*a1)(char **), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a2;
  v48 = a1;
  v5 = type metadata accessor for StatusType();
  v59 = *(v5 - 8);
  v60 = v5;
  __chkstk_darwin(v5);
  v58 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for Logger();
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v64 = &v45 - v12;
  v13 = type metadata accessor for AvailabilityType();
  v61 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v45 - v17;
  v19 = objc_opt_self();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v21 = [v19 predicateForContactsWithIdentifiers:isa];

  v22 = a4;
  sub_100005E78((a4 + 64), *(a4 + 88));
  v46 = v21;
  v23 = dispatch thunk of ContactFetcherProtocol.contacts(withPredicate:includeImages:)();
  v24 = v61;
  v57 = v18;
  v58 = v16;
  v63 = v13;
  v62 = sub_100007A44(_swiftEmptyArrayStorage, &qword_100062718, &qword_10004D950);
  if (!(v23 >> 62))
  {
    v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v26 = v63;
    if (v25)
    {
      goto LABEL_3;
    }

LABEL_19:

    v66 = v62;
    v67 = 0;
    v48(&v66);

    return;
  }

  v25 = _CocoaArrayWrapper.endIndex.getter();
  v26 = v63;
  if (!v25)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (v25 >= 1)
  {
    v27 = 0;
    v65 = v23 & 0xC000000000000001;
    v54 = enum case for AvailabilityType.busy(_:);
    v53 = (v24 + 104);
    v52 = enum case for AvailabilityType.free(_:);
    v51 = (v24 + 16);
    v50 = (v24 + 8);
    v49 = xmmword_10004D790;
    v55 = v23;
    v56 = v22;
    v59 = v25;
    do
    {
      v28 = v11;
      if (v65)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v29 = *(v23 + 8 * v27 + 32);
      }

      v30 = v29;
      v31 = CNContact.people_normalizedHandles.getter();
      v32 = sub_1000048A8(v31);

      if (v32)
      {
        v33 = [objc_allocWithZone(AKAvailability) initWithPublishedStatus:v32];
        if (v33)
        {
          v34 = v33;
          if ([v33 isAvailableToMe])
          {
            v35 = v52;
          }

          else
          {
            v35 = v54;
          }

          v36 = v57;
          (*v53)(v57, v35, v26);
          v37 = [v30 identifier];
          v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v60 = v39;
          v61 = v38;

          sub_100005E30(&qword_100063260, &qword_10004E2B0);
          v40 = swift_allocObject();
          *(v40 + 16) = v49;
          (*v51)(v58, v36, v63);
          Date.init()();
          v41 = [v32 datePublished];
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          *(v40 + 56) = type metadata accessor for AvailabilityPersonStatus();
          *(v40 + 64) = sub_10000773C(&qword_100062710, 255, &type metadata accessor for AvailabilityPersonStatus, &protocol conformance descriptor for AvailabilityPersonStatus);
          sub_100007784((v40 + 32));
          AvailabilityPersonStatus.init(availability:date:availabilityDate:)();
          v42 = v62;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v66 = v42;
          v26 = v63;
          sub_100006B74(v40, v61, v60, isUniquelyReferenced_nonNull_native);

          v62 = v66;
          v44 = v36;
          v23 = v55;
          (*v50)(v44, v26);
        }

        else
        {
        }

        v25 = v59;
      }

      else
      {
      }

      ++v27;
      v11 = v28;
    }

    while (v25 != v27);
    goto LABEL_19;
  }

  __break(1u);
}

uint64_t sub_1000058C8()
{

  sub_100003938(v0 + 3);
  sub_100003938(v0 + 8);
  sub_100003938(v0 + 13);
  sub_100007E10((v0 + 18));

  return swift_deallocClassInstance();
}

uint64_t sub_10000594C@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for StatusType.dndAvailability(_:);
  v3 = type metadata accessor for StatusType();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1000059C0(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_100005A04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return StatusSource.debugID.getter(a1, WitnessTable);
}

uint64_t sub_100005A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005B08;

  return StatusFetcher.fetchStatus@Sendable (for:)(a1, a2, a3);
}

uint64_t sub_100005B08(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_100005C08(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  sub_100005E30(&qword_100062700, &unk_10004D940);
  swift_allocObject();

  return Promise.init(startBlock:)();
}

uint64_t sub_100005CA4()
{
  _StringGuts.grow(_:)(35);
  v0._object = 0x80000001000504F0;
  v0._countAndFlagsBits = 0xD00000000000001ELL;
  String.append(_:)(v0);
  _print_unlocked<A, B>(_:_:)();
  v1._countAndFlagsBits = 2689580;
  v1._object = 0xE300000000000000;
  String.append(_:)(v1);
  return 0;
}

uint64_t sub_100005D48(uint64_t a1, uint64_t a2)
{
  result = sub_10000773C(&qword_1000626F0, a2, type metadata accessor for DNDStatusSource, &unk_10004D878);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100005DE8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100005E30(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *sub_100005E78(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100005EBC(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100005FBC(a1, a2, v4);
}

unint64_t sub_100005F34(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100006074(a1, v4);
}

unint64_t sub_100005F78(uint64_t a1)
{
  v2 = static Hasher._hash(seed:_:)();

  return sub_10000613C(a1, v2);
}

unint64_t sub_100005FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100006074(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100007864(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_1000078C0(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10000613C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

Swift::Int sub_1000061A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100005E30(&qword_100062730, &qword_10004D968);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_100006474(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100005E30(&qword_100062720, &qword_10004D958);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_10000784C(v24, v34);
      }

      else
      {
        sub_1000077E8(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_10000784C(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

Swift::Int sub_10000674C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_100005E30(a3, a4);
  v36 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_1000069EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100005EBC(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1000061A8(v18, a5 & 1);
      v13 = sub_100005EBC(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_100006D60();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

uint64_t sub_100006B74(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100005EBC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10000674C(v16, a4 & 1, &qword_100062718, &qword_10004D950);
      v11 = sub_100005EBC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1000070B0(&qword_100062718, &qword_10004D950);
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

unint64_t sub_100006D18(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void *sub_100006D60()
{
  v1 = v0;
  sub_100005E30(&qword_100062730, &qword_10004D968);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_100006EF4()
{
  v1 = v0;
  sub_100005E30(&qword_100062720, &qword_10004D958);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_1000077E8(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10000784C(v25, *(v4 + 56) + v22);
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1000070B0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100005E30(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

id sub_100007210(uint64_t a1, unint64_t a2, void *a3)
{
  v32 = type metadata accessor for Logger();
  v6 = *(v32 - 8);
  v7 = __chkstk_darwin(v32);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v31 - v10;
  v12 = a3[3];
  v13 = a3[4];
  sub_100005E78(a3, v12);
  v14 = objc_allocWithZone(SKHandle);
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 initWithString:v15];

  v17 = (*(v13 + 16))(v16, v12, v13);
  if (v17)
  {
    static PeopleConstants.appBundleID.getter();
    v18 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_100003B94;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001F854;
    aBlock[3] = &unk_10005DB58;
    v19 = _Block_copy(aBlock);
    [v17 retainPersistentSubscriptionAssertionForApplicationIdentifier:v18 completion:v19];
    _Block_release(v19);

    v20 = [v17 currentStatus];
    if (v20)
    {
      v21 = v20;

      return v21;
    }

    static PeopleLogger.daemon.getter();

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_10002580C(a1, a2, aBlock);
      _os_log_impl(&_mh_execute_header, v27, v28, "no status for %s", v29, 0xCu);
      sub_100003938(v30);
    }

    (*(v6 + 8))(v11, v32);
  }

  else
  {
    static PeopleLogger.daemon.getter();

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_10002580C(a1, a2, aBlock);
      _os_log_impl(&_mh_execute_header, v23, v24, "no status subscription for %s", v25, 0xCu);
      sub_100003938(v26);
    }

    (*(v6 + 8))(v9, v32);
  }

  return 0;
}

unint64_t sub_10000760C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005E30(&qword_100062740, &qword_10004D978);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100007B40(v4, v13);
      result = sub_100005F34(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100007BB0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10000773C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t *sub_100007784(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1000077E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000784C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_100007914(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005E30(&qword_100062730, &qword_10004D968);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_100005EBC(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100007A44(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100005E30(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_100005EBC(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100007B40(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005E30(&qword_100062748, &unk_10004D980);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_100007BB0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100007BC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007BD8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007C10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100007CBC;

  return sub_10000469C();
}

uint64_t sub_100007CBC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100007DB0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100005E30(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100007E38()
{
  result = qword_100062760;
  if (!qword_100062760)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100062760);
  }

  return result;
}

uint64_t sub_100007E90()
{
  type metadata accessor for SpotlightIndexer();
  swift_allocObject();
  result = SpotlightIndexer.init()();
  qword_100065450 = result;
  return result;
}

uint64_t sub_100007ED0()
{
  type metadata accessor for ContactFetcher();
  result = static ContactFetcher.shared.getter();
  qword_100065458 = result;
  return result;
}

uint64_t sub_100007F04()
{
  v0 = type metadata accessor for MessageConduit();
  swift_allocObject();
  result = MessageConduit.init()();
  qword_100065478 = v0;
  unk_100065480 = &protocol witness table for MessageConduit;
  qword_100065460 = result;
  return result;
}

uint64_t sub_100007F58()
{
  type metadata accessor for PeopleLocateFriendProvider();
  result = static PeopleLocateFriendProvider.shared.getter();
  qword_100065488 = result;
  return result;
}

uint64_t sub_100007F8C()
{
  v0 = [objc_allocWithZone(CHSWidgetConfigurationReader) init];
  v4 = sub_100010734(0, &unk_100062A20, CHSWidgetConfigurationReader_ptr);
  v5 = &protocol witness table for CHSWidgetConfigurationReader;
  *&v3 = v0;
  type metadata accessor for WidgetConfigurationReader();
  v1 = swift_allocObject();
  result = sub_10000784C(&v3, v1 + 16);
  qword_100065490 = v1;
  return result;
}

uint64_t sub_100008084(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, _BYTE *, uint64_t), uint64_t *a4)
{
  if (qword_100062368 != -1)
  {
    swift_once();
  }

  v7 = qword_100065450;
  v8 = qword_100062370;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_100065458;
  v10 = qword_100062378;

  if (v10 != -1)
  {
    swift_once();
  }

  sub_1000077E8(&qword_100065460, v15);
  type metadata accessor for PeopleFeatureFlags();
  v11 = static PeopleFeatureFlags.shared.getter();
  a2(0);
  v12 = swift_allocObject();

  v13 = a3(v11, v7, v9, v15, v12);

  *a4 = v13;
  return result;
}

uint64_t sub_1000081F8()
{
  if (qword_100062370 != -1)
  {
    swift_once();
  }

  v0 = qword_100065458;
  v1 = qword_100062380;
  swift_retain_n();
  if (v1 != -1)
  {
    swift_once();
  }

  v2 = qword_100065488;
  v3 = qword_100062388;
  swift_retain_n();
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_100065490;
  v5 = qword_100062368;
  swift_retain_n();
  if (v5 != -1)
  {
    swift_once();
  }

  v6 = qword_100065450;
  type metadata accessor for PeopleFeatureFlags();
  swift_retain_n();
  v7 = static PeopleFeatureFlags.shared.getter();
  v8 = sub_10000FE6C(v7, v0, 1, v2, v4, v6);

  qword_1000654A8 = v8;
  return result;
}

uint64_t sub_100008388()
{
  if (qword_100062370 != -1)
  {
    swift_once();
  }

  v0 = qword_100065458;
  type metadata accessor for PeopleFeatureFlags();

  v1 = static PeopleFeatureFlags.shared.getter();
  v2 = type metadata accessor for KettleStatusFetcher();
  v3 = swift_allocObject();
  v4 = sub_100010734(0, &qword_100062A70, SKStatusSubscriptionService_ptr);
  v14[3] = v2;
  v14[4] = &off_10005DB20;
  v14[0] = v3;
  type metadata accessor for DNDStatusSource();
  v5 = swift_allocObject();
  v6 = sub_1000106B4(v14, v2);
  __chkstk_darwin(v6);
  v8 = (&v14[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  v10 = *v8;

  v11 = sub_10000DE20(v1, v0, v10, v4, &off_10005DAD0, v5);

  result = sub_100003938(v14);
  qword_1000654B0 = v11;
  return result;
}

uint64_t sub_10000855C()
{
  if (qword_100062370 != -1)
  {
    swift_once();
  }

  v0 = qword_100065458;
  v1 = type metadata accessor for CallHistoryFetcher();
  v2 = swift_allocObject();
  type metadata accessor for PeopleFeatureFlags();

  v3 = static PeopleFeatureFlags.shared.getter();
  type metadata accessor for UserDefaultsLaunchDiaryWriter();
  swift_allocObject();
  UserDefaultsLaunchDiaryWriter.init()();
  type metadata accessor for LaunchRecordReader();
  swift_allocObject();
  v4 = LaunchRecordReader.init(withDataWriter:)();
  v14[3] = v1;
  v14[4] = &off_10005EE58;
  v14[0] = v2;
  type metadata accessor for MissedCallStatusSource();
  v5 = swift_allocObject();
  v6 = sub_1000106B4(v14, v1);
  __chkstk_darwin(v6);
  v8 = (&v14[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  v10 = *v8;

  v11 = sub_10000EE2C(v0, v10, v3, v4, v5);

  result = sub_100003938(v14);
  qword_1000654B8 = v11;
  return result;
}

uint64_t sub_100008770()
{
  if (qword_100062370 != -1)
  {
    swift_once();
  }

  v0 = qword_100065458;
  v1 = objc_allocWithZone(IMCoreInterface);

  v2 = [v1 init];
  v19 = sub_100010734(0, &qword_100062A48, &off_10005CEF8);
  v20 = &off_10005E8A8;
  *&v18 = v2;
  v3 = type metadata accessor for MessageFetcher();
  v4 = swift_allocObject();
  sub_10000784C(&v18, v4 + 16);
  type metadata accessor for PeopleFeatureFlags();
  v5 = static PeopleFeatureFlags.shared.getter();
  v6 = type metadata accessor for UserDefaultsLaunchDiaryWriter();
  swift_allocObject();
  v7 = UserDefaultsLaunchDiaryWriter.init()();
  v19 = v6;
  v20 = &protocol witness table for UserDefaultsLaunchDiaryWriter;
  *&v18 = v7;
  type metadata accessor for LaunchRecordReader();
  swift_allocObject();
  v8 = LaunchRecordReader.init(withDataWriter:)();
  v19 = v3;
  v20 = &off_10005E8E8;
  *&v18 = v4;
  type metadata accessor for IMessageStatusSource();
  v9 = swift_allocObject();
  v10 = sub_1000106B4(&v18, v3);
  __chkstk_darwin(v10);
  v12 = (&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = *v12;

  v15 = sub_10000F3C8(v5, v0, v14, v8, v9);

  result = sub_100003938(&v18);
  qword_1000654C0 = v15;
  return result;
}

uint64_t sub_1000089DC()
{
  v0 = [objc_allocWithZone(EKEventStore) init];
  v5 = type metadata accessor for ContactFetcher();
  v6 = &protocol witness table for ContactFetcher;
  *&v4 = static ContactFetcher.shared.getter();
  type metadata accessor for PeopleFeatureFlags();
  v1 = static PeopleFeatureFlags.shared.getter();
  type metadata accessor for CalendarStatusSource();
  v2 = swift_allocObject();
  v2[10] = 0;
  swift_unknownObjectWeakInit();
  v2[3] = v0;
  result = sub_10000784C(&v4, (v2 + 4));
  v2[2] = v1;
  qword_1000654C8 = v2;
  return result;
}

uint64_t sub_100008A9C()
{
  if (qword_100062370 != -1)
  {
    swift_once();
  }

  v0 = qword_100065458;
  type metadata accessor for PeopleFeatureFlags();

  v1 = static PeopleFeatureFlags.shared.getter();
  v2 = [objc_allocWithZone(STDowntimeClient) init];
  type metadata accessor for ChildStateStatusSource(0);
  v3 = swift_allocObject();

  v4 = v2;
  v5 = sub_10000F8F8(v1, v0, v4, v3);

  qword_1000654D0 = v5;
  return result;
}

uint64_t sub_100008B84()
{
  if (qword_100062370 != -1)
  {
    swift_once();
  }

  v0 = qword_100065458;
  v1 = qword_100062380;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = qword_100065488;
  type metadata accessor for PeopleFeatureFlags();

  v3 = static PeopleFeatureFlags.shared.getter();
  v10 = type metadata accessor for ContactFetcher();
  v11 = &protocol witness table for ContactFetcher;
  *&v9 = v0;
  FriendProvider = type metadata accessor for PeopleLocateFriendProvider();
  v8 = &protocol witness table for PeopleLocateFriendProvider;
  *&v6 = v2;
  type metadata accessor for LocationStatusSource();
  v4 = swift_allocObject();
  sub_10000784C(&v9, v4 + 16);
  result = sub_10000784C(&v6, v4 + 64);
  *(v4 + 56) = v3;
  qword_1000654D8 = v4;
  return result;
}

uint64_t sub_100008CB0()
{
  v0 = type metadata accessor for ContactFormatter.Style();
  v84 = *(v0 - 8);
  v85 = v0;
  __chkstk_darwin(v0);
  v86 = &v82 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005E30(&qword_100062968, &qword_10004DB78);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10004D9C0;
  if (qword_1000623A8 != -1)
  {
    swift_once();
  }

  v3 = qword_1000654B0;
  *(v2 + 56) = type metadata accessor for DNDStatusSource();
  *(v2 + 64) = sub_100010884(&qword_100062970, type metadata accessor for DNDStatusSource, &unk_10004D8FC);
  *(v2 + 32) = v3;
  v4 = qword_100062390;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_100065498;
  v89 = type metadata accessor for AskToBuyStatusSource(0);
  *(v2 + 96) = v89;
  *(v2 + 104) = sub_100010884(&qword_100062978, type metadata accessor for AskToBuyStatusSource, &unk_10004DF44);
  *(v2 + 72) = v5;
  v6 = qword_100062398;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_1000654A0;
  v88 = type metadata accessor for ScreenTimeStatusSource(0);
  *(v2 + 136) = v88;
  *(v2 + 144) = sub_100010884(&qword_100062980, type metadata accessor for ScreenTimeStatusSource, &unk_10004E524);
  *(v2 + 112) = v7;
  v8 = qword_1000623B0;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_1000654B8;
  *(v2 + 176) = type metadata accessor for MissedCallStatusSource();
  *(v2 + 184) = sub_100010884(&qword_100062988, type metadata accessor for MissedCallStatusSource, &unk_10004EEBC);
  *(v2 + 152) = v9;
  v10 = qword_1000623B8;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_1000654C0;
  *(v2 + 216) = type metadata accessor for IMessageStatusSource();
  *(v2 + 224) = sub_100010884(&qword_100062990, type metadata accessor for IMessageStatusSource, &unk_10004E82C);
  *(v2 + 192) = v11;
  v12 = qword_1000623C0;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_1000654C8;
  *(v2 + 256) = type metadata accessor for CalendarStatusSource();
  *(v2 + 264) = sub_100010884(&qword_100062998, type metadata accessor for CalendarStatusSource, &unk_10004EA1C);
  *(v2 + 232) = v13;
  v14 = qword_1000623C8;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_1000654D0;
  *(v2 + 296) = type metadata accessor for ChildStateStatusSource(0);
  *(v2 + 304) = sub_100010884(&qword_1000629A0, type metadata accessor for ChildStateStatusSource, &unk_10004DDA4);
  *(v2 + 272) = v15;
  v16 = v2;
  v17 = qword_1000623D0;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = qword_1000654D8;
  v16[42] = type metadata accessor for LocationStatusSource();
  v16[43] = sub_100010884(&qword_1000629A8, type metadata accessor for LocationStatusSource, &unk_10004E0B8);
  v16[39] = v18;
  sub_100005E30(&qword_1000629B0, &qword_10004DB80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10004D9D0;
  v20 = qword_1000623A0;

  v87 = v16;
  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_1000654A8;
  v22 = sub_100010884(&qword_1000629B8, type metadata accessor for LocationStatusEventListener, &unk_10004ED08);
  *(v19 + 32) = v21;
  *(v19 + 40) = v22;
  v23 = qword_1000654B0;
  v24 = sub_100010884(&qword_1000629C0, type metadata accessor for DNDStatusSource, &unk_10004D8E0);
  *(v19 + 48) = v23;
  *(v19 + 56) = v24;
  v25 = qword_100065498;
  v26 = sub_100010884(&qword_1000629C8, type metadata accessor for AskToBuyStatusSource, &unk_10004DF28);
  *(v19 + 64) = v25;
  *(v19 + 72) = v26;
  v27 = qword_1000654A0;
  v28 = sub_100010884(&qword_1000629D0, type metadata accessor for ScreenTimeStatusSource, &unk_10004E508);
  *(v19 + 80) = v27;
  *(v19 + 88) = v28;
  v29 = qword_1000654B8;
  v30 = sub_100010884(&qword_1000629D8, type metadata accessor for MissedCallStatusSource, &unk_10004EEA0);
  *(v19 + 96) = v29;
  *(v19 + 104) = v30;
  v31 = qword_1000654C0;
  v32 = sub_100010884(&qword_1000629E0, type metadata accessor for IMessageStatusSource, &unk_10004E810);
  *(v19 + 112) = v31;
  *(v19 + 120) = v32;
  v33 = qword_1000654D0;
  v34 = sub_100010884(&qword_1000629E8, type metadata accessor for ChildStateStatusSource, &unk_10004DD88);
  *(v19 + 128) = v33;
  *(v19 + 136) = v34;
  v90 = v19;
  v35 = type metadata accessor for ContactFetcher();

  v36 = static ContactFetcher.shared.getter();
  v37 = [objc_opt_self() defaultStore];
  if (qword_100062388 != -1)
  {
    swift_once();
  }

  v38 = qword_100065490;
  (*(v84 + 104))(v86, enum case for ContactFormatter.Style.fullName(_:), v85);

  String.localized.getter();
  v113 = type metadata accessor for ContactFormatter();
  v114 = &protocol witness table for ContactFormatter;
  sub_100007784(&v112);
  ContactFormatter.init(style:fallback:)();
  type metadata accessor for PeopleUserDefaults();
  v39 = static PeopleUserDefaults.shared.getter();
  v110 = sub_100010734(0, &qword_1000629F0, NSUserDefaults_ptr);
  v111 = &protocol witness table for NSUserDefaults;
  *&v109 = v39;
  v40 = type metadata accessor for RelevantIntentManager();
  v41 = static RelevantIntentManager.shared.getter();
  v107 = v35;
  v108 = &protocol witness table for ContactFetcher;
  *&v106 = v36;
  v104 = sub_100010734(0, &qword_1000629F8, INRelevantShortcutStore_ptr);
  v105 = &off_10005EEB8;
  *&v103 = v37;
  v42 = type metadata accessor for WidgetConfigurationReader();
  v101 = v42;
  v102 = &off_10005DBD0;
  v100[0] = v38;
  v98 = v40;
  v99 = &off_10005EEC8;
  v97[0] = v41;
  v86 = type metadata accessor for WidgetSuggester();
  v43 = swift_allocObject();
  v44 = sub_1000106B4(v100, v42);
  v84 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v44);
  v85 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  v46 = (&v82 - v85);
  v48 = *(v47 + 16);
  v82 = v47 + 16;
  v83 = v48;
  v48(&v82 - v85);
  v49 = sub_1000106B4(v97, v98);
  __chkstk_darwin(v49);
  v51 = (&v82 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v52 + 16))(v51);
  v53 = *v46;
  v54 = *v51;
  v95 = v42;
  v96 = &off_10005DBD0;
  *&v94 = v53;
  v92 = v40;
  v93 = &off_10005EEC8;
  *&v91 = v54;
  sub_10000784C(&v106, v43 + 16);
  sub_10000784C(&v103, v43 + 56);
  sub_10000784C(&v94, v43 + 96);
  sub_10000784C(&v112, v43 + 136);
  sub_10000784C(&v109, v43 + 176);
  sub_10000784C(&v91, v43 + 216);
  sub_100003938(v97);
  sub_100003938(v100);
  sub_100005E30(&qword_100062A00, &qword_10004DB88);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_10004D9E0;
  v56 = qword_1000654A8;
  *(v55 + 56) = type metadata accessor for LocationStatusEventListener();
  *(v55 + 64) = sub_100010884(&qword_100062A08, type metadata accessor for LocationStatusEventListener, &unk_10004ECA8);
  *(v55 + 32) = v56;
  v57 = qword_100065498;
  *(v55 + 96) = v89;
  *(v55 + 104) = sub_100010884(&qword_100062A10, type metadata accessor for AskToBuyStatusSource, &unk_10004DE88);
  *(v55 + 72) = v57;
  v58 = qword_1000654A0;
  *(v55 + 136) = v88;
  *(v55 + 144) = sub_100010884(&qword_100062A18, type metadata accessor for ScreenTimeStatusSource, &unk_10004E468);
  *(v55 + 112) = v58;
  v59 = objc_allocWithZone(CHSWidgetConfigurationReader);

  v60 = [v59 init];
  v113 = sub_100010734(0, &unk_100062A20, CHSWidgetConfigurationReader_ptr);
  v114 = &protocol witness table for CHSWidgetConfigurationReader;
  *&v112 = v60;
  v61 = swift_allocObject();
  sub_10000784C(&v112, v61 + 16);
  v62 = type metadata accessor for PeopleTimelineControllerFactory();
  swift_allocObject();
  v63 = PeopleTimelineControllerFactory.init()();
  v113 = v62;
  v114 = &protocol witness table for PeopleTimelineControllerFactory;
  v111 = &off_10005DBD0;
  *&v112 = v63;
  v110 = v42;
  *&v109 = v61;
  v64 = v86;
  v107 = v86;
  v108 = &off_10005EED8;
  *&v106 = v43;
  type metadata accessor for StatusManager();
  v65 = swift_allocObject();
  v66 = sub_1000106B4(&v109, v42);
  __chkstk_darwin(v66);
  v67 = (&v82 - v85);
  v83(&v82 - v85);
  v68 = sub_1000106B4(&v106, v107);
  v89 = &v82;
  __chkstk_darwin(v68);
  v70 = (&v82 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v71 + 16))(v70);
  v72 = *v67;
  v73 = *v70;
  v104 = v42;
  v105 = &off_10005DBD0;
  v102 = &off_10005EED8;
  *&v103 = v72;
  v101 = v64;
  v100[0] = v73;
  v74 = v90;
  v65[2] = v87;
  v65[3] = v74;
  sub_1000077E8(&v103, (v65 + 4));
  sub_1000077E8(&v112, (v65 + 9));
  sub_1000077E8(v100, (v65 + 14));
  v65[19] = v55;
  v75 = *(v74 + 16);
  if (v75)
  {
    v88 = &v82;

    v76 = (v74 + 40);
    do
    {
      v77 = *v76;
      ObjectType = swift_getObjectType();
      v79 = *(v77 + 24);
      swift_unknownObjectRetain();

      v79(v80, &off_10005DBE8, ObjectType, v77);
      swift_unknownObjectRelease();
      v76 += 2;
      --v75;
    }

    while (v75);
  }

  sub_100003938(&v112);
  sub_100003938(v100);
  sub_100003938(&v103);
  sub_100003938(&v106);
  result = sub_100003938(&v109);
  qword_1000654E0 = v65;
  return result;
}

uint64_t sub_100009BB8(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = type metadata accessor for StatusType();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v5 = sub_100005E30(&qword_100062A88, &qword_10004DBE0);
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();

  return _swift_task_switch(sub_100009CE4, 0, 0);
}

uint64_t sub_100009CE4(uint64_t a1, void *a2, __n128 a3)
{
  v4 = *(*(v3 + 112) + 16);
  v29 = *(v4 + 16);
  if (v29)
  {
    v5 = 0;
    v6 = *(v3 + 128);
    v27 = v4 + 32;
    v28 = *(v3 + 104);
    v26 = (v6 + 8);
    while (v5 < *(v4 + 16))
    {
      sub_1000077E8(v27 + 40 * v5, v3 + 16);
      v7 = *(v28 + 16);
      if (v7)
      {
        v8 = v4;
        v9 = *(v3 + 104);
        sub_100005E78((v3 + 16), *(v3 + 40));
        dispatch thunk of StatusSource.statusType.getter();
        v10 = v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
        v11 = *(v6 + 72);
        sub_100010884(&qword_100062A90, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
        v12 = v10;
        v13 = v7 + 1;
        do
        {
          if (!--v13)
          {
            (*v26)(*(v3 + 136), *(v3 + 120));
            a1 = sub_100003938((v3 + 16));
            v4 = v8;
            goto LABEL_4;
          }

          v14 = v12 + v11;
          v15 = dispatch thunk of static Equatable.== infix(_:_:)();
          v12 = v14;
        }

        while ((v15 & 1) == 0);
        (*v26)(*(v3 + 136), *(v3 + 120));
        v4 = v8;
      }

      sub_10000784C((v3 + 16), v3 + 56);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10000D694(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v17 = _swiftEmptyArrayStorage[2];
      v16 = _swiftEmptyArrayStorage[3];
      if (v17 >= v16 >> 1)
      {
        sub_10000D694((v16 > 1), v17 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v17 + 1;
      a1 = sub_10000784C((v3 + 56), &_swiftEmptyArrayStorage[5 * v17 + 4]);
LABEL_4:
      if (++v5 == v29)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:
    v19 = *(v3 + 152);
    v18 = *(v3 + 160);
    v20 = *(v3 + 144);
    v21 = sub_100035AD0(_swiftEmptyArrayStorage);
    *(v3 + 168) = v21;

    static PeopleConstants.statusSourceTimeout.getter();
    Measurement<>.timeInterval.getter();
    v23 = v22;
    (*(v19 + 8))(v18, v20);
    v24 = swift_task_alloc();
    *(v3 + 176) = v24;
    *v24 = v3;
    v24[1] = sub_100009FF8;
    a1 = *(v3 + 96);
    a2 = v21;
    a3.n128_u64[0] = v23;
  }

  return static StatusCoalescer.fetchStatus(for:statusFetchers:timeout:)(a1, a2, a3);
}

uint64_t sub_100009FF8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10000A188, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_10000A188()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_10000A1F8(uint64_t (*a1)(id *), void *a2, unint64_t a3)
{
  v4 = a3;
  v19 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v4 = v15;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_20:

  return v12;
}

uint64_t sub_10000A3A4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for Logger();
  v51 = *(v10 - 8);
  v52 = v10;
  __chkstk_darwin(v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v53[2] = a2;
  v53[3] = a3;

  v14 = sub_10000A1F8(sub_1000105DC, v53, v13);
  v15 = v14;
  v50 = v5;
  if (v14 >> 62)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_13:

    v19 = _swiftEmptyArrayStorage;
    goto LABEL_14;
  }

  v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_13;
  }

LABEL_3:
  v54 = _swiftEmptyArrayStorage;
  result = sub_10000D6D4(0, v16 & ~(v16 >> 63), 0);
  if (v16 < 0)
  {
    goto LABEL_28;
  }

  v48 = v12;
  v49 = a4;
  v18 = 0;
  v19 = v54;
  do
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v20 = *(v15 + 8 * v18 + 32);
    }

    v21 = v20;
    v22 = [v21 kind];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v54 = v19;
    v27 = v19[2];
    v26 = v19[3];
    if (v27 >= v26 >> 1)
    {
      sub_10000D6D4((v26 > 1), v27 + 1, 1);
      v19 = v54;
    }

    ++v18;
    v19[2] = v27 + 1;
    v28 = &v19[2 * v27];
    v28[4] = v23;
    v28[5] = v25;
  }

  while (v16 != v18);

  v12 = v48;
LABEL_14:
  v29 = sub_10001E3F0(v19);

  static PeopleLogger.daemon.getter();

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v54 = v33;
    *v32 = 136315138;
    v34 = Set.description.getter();
    v36 = sub_10002580C(v34, v35, &v54);

    *(v32 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v30, v31, "refreshing widgets of kinds %s", v32, 0xCu);
    sub_100003938(v33);
  }

  (*(v51 + 8))(v12, v52);
  v37 = 1 << *(v29 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & *(v29 + 56);
  v40 = (v37 + 63) >> 6;

  for (i = 0; v39; result = )
  {
    v42 = i;
LABEL_24:
    v43 = __clz(__rbit64(v39));
    v39 &= v39 - 1;
    v44 = (*(v29 + 48) + ((v42 << 10) | (16 * v43)));
    v46 = *v44;
    v45 = v44[1];

    sub_10000AC2C(v46, v45);
  }

  while (1)
  {
    v42 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v42 >= v40)
    {
    }

    v39 = *(v29 + 56 + 8 * v42);
    ++i;
    if (v39)
    {
      i = v42;
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

BOOL sub_10000A7C8(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C3F4(*a1);
  v10 = sub_10001E3F0(v9);

  static PeopleLogger.daemon.getter();

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v24 = v6;
    v14 = v13;
    v15 = swift_slowAlloc();
    v26 = v15;
    *v14 = 136315138;
    v16 = Set.description.getter();
    v25 = a3;
    v18 = sub_10002580C(v16, v17, &v26);
    v23 = v5;
    v19 = v18;
    a3 = v25;

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "contactId in widget %s", v14, 0xCu);
    sub_100003938(v15);

    (*(v24 + 8))(v8, v23);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  v20 = sub_10000DCD4(a3, v10);

  return (v20 & 1) == 0;
}

uint64_t sub_10000AA4C(uint64_t a1, const char *a2, uint64_t a3, ...)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PeopleLogger.daemon.getter();
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v19[0] = a2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v19[1] = v3;
    v14 = v13;
    v20 = v13;
    *v12 = 136315138;
    swift_getErrorValue();
    v15 = Error.localizedDescription.getter();
    v17 = sub_10002580C(v15, v16, &v20);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, v19[0], v12, 0xCu);
    sub_100003938(v14);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10000AC2C(uint64_t a1, unint64_t a2)
{
  v5 = sub_100005E30(&qword_100062A80, &qword_10004ED60);
  __chkstk_darwin(v5 - 8);
  v7 = &v29 - v6;
  v8 = type metadata accessor for Logger();
  v30 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v29 - v12;
  sub_100005E78((v2 + 72), *(v2 + 96));
  static PeopleConstants.widgetBundleID.getter();
  dispatch thunk of TimelineControllerFactoryProtocol.timelineController(for:in:)();

  type metadata accessor for PeopleAnalytics();
  static PeopleAnalytics.timelineStopwatch(timeline:)();
  sub_100005E78(v32, v32[3]);
  v14 = dispatch thunk of TimelineControllerProtocol.reloadTimeline()();
  dispatch thunk of PeopleAnalytics.StopWatch.stop()();
  if (v14)
  {
    swift_errorRetain();
    static PeopleLogger.daemon.getter();
    swift_errorRetain();

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v29 = v8;
      v18 = v17;
      v31 = swift_slowAlloc();
      *v18 = 136315394;
      *(v18 + 4) = sub_10002580C(a1, a2, &v31);
      *(v18 + 12) = 2080;
      swift_getErrorValue();
      v19 = Error.localizedDescription.getter();
      v21 = sub_10002580C(v19, v20, &v31);

      *(v18 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "Widget (%s) timeline refresh error: %s ", v18, 0x16u);
      swift_arrayDestroy();

      (*(v30 + 8))(v13, v29);
    }

    else
    {

      (*(v30 + 8))(v13, v8);
    }
  }

  else
  {
    static PeopleLogger.daemon.getter();

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_10002580C(a1, a2, &v31);
      _os_log_impl(&_mh_execute_header, v22, v23, "Successfully requested widget timeline refresh for widgetKind %s", v24, 0xCu);
      sub_100003938(v25);
    }

    (*(v30 + 8))(v11, v8);
    v26 = type metadata accessor for TaskPriority();
    (*(*(v26 - 8) + 56))(v7, 1, 1, v26);
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = a1;
    v27[5] = a2;

    sub_100014EE4(0, 0, v7, &unk_10004DBD8, v27);
  }

  return sub_100003938(v32);
}

uint64_t sub_10000B124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_10000B144, 0, 0);
}

uint64_t sub_10000B144()
{
  type metadata accessor for MainActor();
  *(v0 + 32) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000B1D8, v2, v1);
}

uint64_t sub_10000B1D8()
{

  static MetricTemplate.updateRefreshRequestedCount(for:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000B248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[21] = a5;
  v6[22] = v5;
  v6[19] = a3;
  v6[20] = a4;
  v6[17] = a1;
  v6[18] = a2;
  v7 = type metadata accessor for Logger();
  v6[23] = v7;
  v6[24] = *(v7 - 8);
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();

  return _swift_task_switch(sub_10000B34C, 0, 0);
}

void sub_10000B34C(uint64_t result)
{
  v43 = v1;
  v2 = *(*(v1 + 176) + 152);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v2 + 32;
    while (1)
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
        return;
      }

      v7 = *(v1 + 136);
      v6 = *(v1 + 144);
      sub_1000077E8(v5, v1 + 96);
      sub_100005E78((v1 + 96), *(v1 + 120));
      if (dispatch thunk of SpotlightReindexHandler.bundleId.getter() == v7 && v8 == v6)
      {
        break;
      }

      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v10)
      {
        goto LABEL_16;
      }

      ++v4;
      sub_100003938((v1 + 96));
      v5 += 40;
      if (v3 == v4)
      {
        goto LABEL_10;
      }
    }

LABEL_16:
    sub_10000784C((v1 + 96), v1 + 56);
    sub_10000784C((v1 + 56), v1 + 16);
    type metadata accessor for ReindexCoordinator();
    swift_allocObject();
    *(v1 + 248) = ReindexCoordinator.init()();
    type metadata accessor for PeopleAnalytics();
    *(v1 + 256) = static PeopleAnalytics.reIndexingStopwatch(_:)();
    static PeopleConstants.reindexTransactionName.getter();
    type metadata accessor for OSTransaction();
    swift_allocObject();
    *(v1 + 264) = OSTransaction.init(name:)();
    static PeopleLogger.daemon.getter();

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v1 + 240);
    v27 = *(v1 + 184);
    v26 = *(v1 + 192);
    if (v24)
    {
      v28 = *(v1 + 136);
      v29 = *(v1 + 144);
      v40 = *(v1 + 240);
      v30 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v30 = 136315394;
      *(v30 + 4) = sub_10002580C(v28, v29, &v42);
      *(v30 + 12) = 2080;
      v31 = OSTransaction.description.getter();
      v33 = sub_10002580C(v31, v32, &v42);

      *(v30 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v22, v23, "Start batch reindex: %s with %s", v30, 0x16u);
      swift_arrayDestroy();

      v34 = *(v26 + 8);
      v34(v40, v27);
    }

    else
    {

      v34 = *(v26 + 8);
      v34(v25, v27);
    }

    *(v1 + 272) = v34;
    *(v1 + 280) = ReindexCoordinator.indexer.getter();
    v41 = (&async function pointer to dispatch thunk of SpotlightIndexer.startBatchMode(forBundle:protectionClass:) + async function pointer to dispatch thunk of SpotlightIndexer.startBatchMode(forBundle:protectionClass:));
    v35 = swift_task_alloc();
    *(v1 + 288) = v35;
    *v35 = v1;
    v35[1] = sub_10000B844;
    v36 = *(v1 + 160);
    v37 = *(v1 + 168);
    v39 = *(v1 + 136);
    v38 = *(v1 + 144);

    v41(v39, v38, v36, v37);
  }

  else
  {
LABEL_10:
    static PeopleLogger.daemon.getter();

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v1 + 208);
    v15 = *(v1 + 184);
    v16 = *(v1 + 192);
    if (v13)
    {
      v18 = *(v1 + 136);
      v17 = *(v1 + 144);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v42 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_10002580C(v18, v17, &v42);
      _os_log_impl(&_mh_execute_header, v11, v12, "No reindex support for %s", v19, 0xCu);
      sub_100003938(v20);
    }

    (*(v16 + 8))(v14, v15);

    v21 = *(v1 + 8);

    v21();
  }
}

uint64_t sub_10000B844()
{

  return _swift_task_switch(sub_10000B95C, 0, 0);
}

uint64_t sub_10000B95C(uint64_t a1)
{
  v20 = v1;
  static PeopleLogger.daemon.getter();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[34];
  v6 = v1[29];
  v7 = v1[23];
  if (v4)
  {
    v18 = v1[34];
    v9 = v1[17];
    v8 = v1[18];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10002580C(v9, v8, &v19);
    _os_log_impl(&_mh_execute_header, v2, v3, "Calling reindexEvents: %s ", v10, 0xCu);
    sub_100003938(v11);

    v18(v6, v7);
  }

  else
  {

    v5(v6, v7);
  }

  v12 = v1[5];
  v13 = v1[6];
  sub_100005E78(v1 + 2, v12);
  v14 = swift_task_alloc();
  v1[37] = v14;
  *v14 = v1;
  v14[1] = sub_10000BB58;
  v15 = v1[31];
  v16 = v1[19];

  return dispatch thunk of SpotlightReindexHandler.reindexEvents(includeIds:withCoordinator:)(v16, v15, v12, v13);
}

uint64_t sub_10000BB58()
{

  return _swift_task_switch(sub_10000BC54, 0, 0);
}

uint64_t sub_10000BC54(uint64_t a1)
{
  v19 = v1;
  static PeopleLogger.daemon.getter();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[34];
  v6 = v1[28];
  v7 = v1[23];
  if (v4)
  {
    v16 = v1[34];
    v9 = v1[17];
    v8 = v1[18];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10002580C(v9, v8, &v18);
    _os_log_impl(&_mh_execute_header, v2, v3, "Cleaning up batch: %s ", v10, 0xCu);
    sub_100003938(v11);

    v16(v6, v7);
  }

  else
  {

    v5(v6, v7);
  }

  v1[38] = ReindexCoordinator.indexer.getter();
  v17 = (&async function pointer to dispatch thunk of SpotlightIndexer.endBatchMode(forBundle:) + async function pointer to dispatch thunk of SpotlightIndexer.endBatchMode(forBundle:));
  v12 = swift_task_alloc();
  v1[39] = v12;
  *v12 = v1;
  v12[1] = sub_10000BE50;
  v14 = v1[17];
  v13 = v1[18];

  return v17(v14, v13);
}

uint64_t sub_10000BE50()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_10000C1BC;
  }

  else
  {

    v2 = sub_10000BF6C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000BF6C(uint64_t a1)
{
  v21 = v1;
  static PeopleLogger.daemon.getter();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[34];
  if (v4)
  {
    v18 = v1[23];
    v19 = v1[27];
    v7 = v1[17];
    v6 = v1[18];
    v8 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = sub_10002580C(v7, v6, &v20);
    *(v8 + 12) = 2080;
    v9 = OSTransaction.description.getter();
    v11 = sub_10002580C(v9, v10, &v20);

    *(v8 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Completed reindex for: %s with %s", v8, 0x16u);
    swift_arrayDestroy();

    v13 = v18;
    v12 = v19;
  }

  else
  {
    v14 = v1[27];
    v15 = v1[23];

    v12 = v14;
    v13 = v15;
  }

  v5(v12, v13);
  dispatch thunk of PeopleAnalytics.StopWatch.stop()();
  OSTransaction.complete()();

  sub_100003938(v1 + 2);

  v16 = v1[1];

  return v16();
}

uint64_t sub_10000C1BC()
{
  v1 = v0[34];
  v2 = v0[25];
  v3 = v0[23];
  v5 = v0[17];
  v4 = v0[18];

  static PeopleLogger.daemon.getter();
  swift_errorRetain();
  _StringGuts.grow(_:)(25);

  v6._countAndFlagsBits = v5;
  v6._object = v4;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 4203786;
  v7._object = 0xE300000000000000;
  String.append(_:)(v7);
  Logger.ifError(_:message:)();

  v1(v2, v3);
  dispatch thunk of PeopleAnalytics.StopWatch.stop()();
  OSTransaction.complete()();

  sub_100003938(v0 + 2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10000C370()
{

  sub_100003938(v0 + 4);
  sub_100003938(v0 + 9);
  sub_100003938(v0 + 14);

  return swift_deallocClassInstance();
}

char *sub_10000C3F4(void *a1)
{
  v2 = [a1 intent];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();

    if (v4)
    {
      v5 = [a1 intent];
      if (v5)
      {
        v6 = v5;
        objc_opt_self();
        v7 = swift_dynamicCastObjCClass();
        if (v7)
        {
          v8 = [v7 serializedParameters];
          v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          v50 = 0x6E6F73726570;
          v51 = 0xE600000000000000;
          AnyHashable.init<A>(_:)();
          if (!*(v9 + 16) || (v10 = sub_100005F34(v52), (v11 & 1) == 0))
          {
LABEL_12:

            sub_1000078C0(v52);
            goto LABEL_39;
          }

          sub_100010658(*(v9 + 56) + 32 * v10, v53);
          sub_1000078C0(v52);

          sub_100005E30(&qword_100062938, &qword_10004DB48);
          if (swift_dynamicCast())
          {
            v12 = v50;
            v50 = 0x696669746E656469;
            v51 = 0xEA00000000007265;
            AnyHashable.init<A>(_:)();
            if (*(v12 + 16))
            {
              v13 = sub_100005F34(v52);
              if (v14)
              {
                sub_100010658(*(v12 + 56) + 32 * v13, v53);
                sub_1000078C0(v52);

                if (swift_dynamicCast())
                {
                  v15 = v50;
                  v16 = v51;
                  sub_100005E30(&qword_100062930, &qword_10004DB40);
                  v17 = swift_allocObject();
                  *(v17 + 16) = xmmword_10004D790;
                  *(v17 + 32) = v15;
                  *(v17 + 40) = v16;

                  return v17;
                }

                goto LABEL_39;
              }
            }

            goto LABEL_12;
          }

LABEL_39:

          return _swiftEmptyArrayStorage;
        }
      }
    }
  }

  v19 = [a1 intent];
  v6 = INTypedIntentWithIntent();

  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  type metadata accessor for SelectPeopleIntent();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_39;
  }

  [a1 family];
  v20 = SelectPeopleIntent.people(for:)();
  v21 = v20;
  if (v20 >> 62)
  {
LABEL_44:
    v49 = v21 & 0xFFFFFFFFFFFFFF8;
    v22 = _CocoaArrayWrapper.endIndex.getter();
    v46 = v6;
    if (v22)
    {
      goto LABEL_18;
    }

LABEL_45:
    v23 = _swiftEmptyArrayStorage;
    goto LABEL_46;
  }

  v49 = v20 & 0xFFFFFFFFFFFFFF8;
  v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v46 = v6;
  if (!v22)
  {
    goto LABEL_45;
  }

LABEL_18:
  v6 = 0;
  v23 = _swiftEmptyArrayStorage;
  v48 = v21 & 0xC000000000000001;
  do
  {
    v47 = v23;
    v24 = v6;
    while (1)
    {
      if (v48)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v24 >= *(v49 + 16))
        {
          goto LABEL_43;
        }

        v25 = *(v21 + 8 * v24 + 32);
      }

      v26 = v25;
      v6 = (v24 + 1);
      if (__OFADD__(v24, 1))
      {
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v27 = [v25 id];
      if (v27)
      {
        v34 = v27;
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;

        goto LABEL_33;
      }

      v28 = [v26 identifier];
      if (v28)
      {
        break;
      }

LABEL_21:
      ++v24;
      if (v6 == v22)
      {
        v23 = v47;
        goto LABEL_46;
      }
    }

    v29 = v28;
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v52[0] = 124;
    v52[1] = 0xE100000000000000;
    __chkstk_darwin(v33);
    v45[2] = v52;
    if (!sub_10000D294(0x7FFFFFFFFFFFFFFFLL, 1, sub_100010600, v45, v30, v32, &v46)[2])
    {

      goto LABEL_21;
    }

    swift_bridgeObjectRetain_n();

    v35 = static String._fromSubstring(_:)();
    v37 = v38;

    swift_bridgeObjectRelease_n();
LABEL_33:
    v39 = v47;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_100022130(0, *(v39 + 2) + 1, 1, v39);
    }

    v41 = *(v39 + 2);
    v40 = *(v39 + 3);
    v42 = v39;
    if (v41 >= v40 >> 1)
    {
      v42 = sub_100022130((v40 > 1), v41 + 1, 1, v39);
    }

    *(v42 + 2) = v41 + 1;
    v43 = &v42[16 * v41];
    v23 = v42;
    *(v43 + 4) = v35;
    *(v43 + 5) = v37;
  }

  while (v6 != v22);
LABEL_46:
  v44 = v23;

  return v44;
}

uint64_t sub_10000C988(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_100005E78(a3, a3[3]);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_10000D1F8;
  *(v7 + 24) = v6;

  dispatch thunk of ChronoConfigurationReaderProtocol.allConfiguredWidgets(completion:)();
}

uint64_t sub_10000CA60(unint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  if (a1)
  {
    v4 = sub_10000CD08(a1);
    a3(v4, 0);
  }

  else
  {
    if (a2)
    {
      v6 = a2;
    }

    else
    {
      sub_10000D240();
      v6 = swift_allocError();
    }

    swift_errorRetain();
    a3(v6, 1);
  }
}

uint64_t sub_10000CB38@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  static PeopleConstants.appBundleID.getter();
  v4 = String._bridgeToObjectiveC()();

  v5 = [v3 widgetConfigurationsForApplicationContainerBundleIdentifier:v4];

  sub_100005E30(&qword_100062928, &qword_10004DB38);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_11:

    *a2 = _swiftEmptyArrayStorage;
    return result;
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_3:
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(v6 + 8 * v9 + 32);
        swift_unknownObjectRetain();
      }

      ++v9;
      v11 = [v10 widget];
      swift_unknownObjectRelease();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v7 != v9);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void *sub_10000CD08(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  v2 = v1;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_48;
  }

  v3 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v3)
  {
    v4 = 0;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v5 = _swiftEmptyArrayStorage;
    v31 = v3;
    v32 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (v34)
    {
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        goto LABEL_42;
      }

LABEL_9:
      v39 = v6;
      v8 = v2;
      sub_10000CB38(&v39, &v38);
      if (v2)
      {
        goto LABEL_41;
      }

      swift_unknownObjectRelease();
      v9 = v38;
      v10 = v38 >> 62;
      if (v38 >> 62)
      {
        v11 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v11 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v5 >> 62;
      if (v5 >> 62)
      {
        v27 = _CocoaArrayWrapper.endIndex.getter();
        v14 = v27 + v11;
        if (__OFADD__(v27, v11))
        {
LABEL_40:
          __break(1u);
LABEL_41:

          swift_unknownObjectRelease();
          return v5;
        }
      }

      else
      {
        v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v14 = v13 + v11;
        if (__OFADD__(v13, v11))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v36 = v11;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v12)
        {
          v15 = v5 & 0xFFFFFFFFFFFFFF8;
          if (v14 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_20;
      }

      if (v12)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v15 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v10)
      {
        v19 = v15;
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v15 = v19;
        v18 = isUniquelyReferenced_nonNull_bridgeObject;
        if (!isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_4:

          if (v36 > 0)
          {
            goto LABEL_44;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v18)
        {
          goto LABEL_4;
        }
      }

      if (((v17 >> 1) - v16) < v36)
      {
        goto LABEL_45;
      }

      v35 = v5;
      v20 = v15 + 8 * v16 + 32;
      v30 = v15;
      if (v10)
      {
        if (v18 < 1)
        {
          goto LABEL_47;
        }

        sub_100010530();
        for (i = 0; i != v18; ++i)
        {
          sub_100005E30(&qword_100062918, &qword_10004F050);
          v22 = sub_1000104A8(v37, i, v9);
          v24 = *v23;
          (v22)(v37, 0);
          *(v20 + 8 * i) = v24;
        }
      }

      else
      {
        sub_100010734(0, &qword_100062910, CHSWidget_ptr);
        swift_arrayInitWithCopy();
      }

      v2 = v8;
      v5 = v35;
      if (v36 >= 1)
      {
        v25 = *(v30 + 16);
        v7 = __OFADD__(v25, v36);
        v26 = v25 + v36;
        if (v7)
        {
          goto LABEL_46;
        }

        *(v30 + 16) = v26;
      }

LABEL_5:
      if (v4 == v31)
      {
        return v5;
      }
    }

    if (v4 >= *(v33 + 16))
    {
      goto LABEL_43;
    }

    v6 = *(v32 + 8 * v4);
    isUniquelyReferenced_nonNull_bridgeObject = swift_unknownObjectRetain();
    v7 = __OFADD__(v4++, 1);
    if (!v7)
    {
      goto LABEL_9;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    v28 = isUniquelyReferenced_nonNull_bridgeObject;
    v3 = _CocoaArrayWrapper.endIndex.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v28;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10000D08C()
{
  sub_100003938((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_10000D0E8()
{
  sub_1000077E8(*v0 + 16, v3);
  v1 = swift_allocObject();
  sub_10000784C(v3, v1 + 16);
  sub_100005E30(&qword_100062900, qword_10004DB20);
  swift_allocObject();
  return Promise.init(startBlock:)();
}

uint64_t sub_10000D180()
{
  sub_100003938((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000D1C0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000D1F8(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

unint64_t sub_10000D240()
{
  result = qword_100062908;
  if (!qword_100062908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062908);
  }

  return result;
}

void *sub_10000D294@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_10002223C(0, 1, 1, _swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_10002223C((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = _swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_10002223C(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_10002223C(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_10002223C((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

void *sub_10000D654(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000D880(a1, a2, a3, *v3, &qword_100062A98, &qword_10004DBE8, &qword_100062AA0, &unk_10004DBF0);
  *v3 = result;
  return result;
}

void *sub_10000D694(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000D880(a1, a2, a3, *v3, &qword_100062968, &qword_10004DB78, &qword_100062AA8, &unk_10004EB10);
  *v3 = result;
  return result;
}

char *sub_10000D6D4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000D774(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10000D6F4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000D880(a1, a2, a3, *v3, &qword_100063260, &qword_10004E2B0, &qword_100062950, &qword_10004DB60);
  *v3 = result;
  return result;
}

void *sub_10000D734(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000D9C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10000D754(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000DAFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000D774(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005E30(&qword_100062930, &qword_10004DB40);
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

void *sub_10000D880(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100005E30(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100005E30(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_10000D9C8(void *result, int64_t a2, char a3, void *a4)
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
    sub_100005E30(&qword_100062958, &qword_10004DB68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100005E30(&qword_100062960, &qword_10004DB70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10000DAFC(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100005E30(&unk_100062940, &unk_10004DB50);
  v10 = *(type metadata accessor for ContactPerson() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for ContactPerson() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_10000DCD4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  while (1)
  {
    if (!*(a2 + 16))
    {
      goto LABEL_5;
    }

    v7 = (v5 + 16 * v4);
    v9 = *v7;
    v8 = v7[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v10 = Hasher._finalize()();
    v11 = -1 << *(a2 + 32);
    v12 = v10 & ~v11;
    if ((*(v6 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
    {
      break;
    }

LABEL_4:

LABEL_5:
    if (++v4 == v2)
    {
      return 1;
    }
  }

  v13 = ~v11;
  while (1)
  {
    v14 = (*(a2 + 48) + 16 * v12);
    v15 = *v14 == v9 && v14[1] == v8;
    if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v6 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  return 0;
}

void *sub_10000DE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = type metadata accessor for Logger();
  v51 = *(v12 - 8);
  v52 = v12;
  __chkstk_darwin(v12);
  v54 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for StatusType();
  v55 = *(v14 - 8);
  __chkstk_darwin(v14);
  v53 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60[3] = type metadata accessor for ContactFetcher();
  v60[4] = &protocol witness table for ContactFetcher;
  v60[0] = a2;
  v59[3] = type metadata accessor for KettleStatusFetcher();
  v59[4] = &off_10005DB20;
  v59[0] = a3;
  a6[19] = 0;
  swift_unknownObjectWeakInit();
  a6[20] = 0;
  a6[2] = a1;
  sub_1000077E8(v60, (a6 + 8));
  sub_1000077E8(v59, (a6 + 3));
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  v19 = *(a5 + 8);
  v57 = a4;
  v58 = a5;
  sub_100007784(&v56);
  v50 = a1;
  v20 = v14;
  v21 = v55;

  v19(v16, v18, a4, a5);
  sub_10000784C(&v56, (a6 + 13));
  type metadata accessor for BiomeUtilities();
  static BiomeUtilities.shared.getter();
  v22 = enum case for StatusType.dndAvailability(_:);
  v23 = *(v21 + 104);
  v24 = v53;
  v23(v53, enum case for StatusType.dndAvailability(_:), v20);
  v25 = dispatch thunk of BiomeUtilities.scheduler(for:isDaemon:)();

  v26 = *(v21 + 8);
  v55 = v21 + 8;
  v26(v24, v20);
  v27 = [objc_opt_self() userStatusChangeStream];
  v28 = [v27 publisher];

  v29 = [v28 subscribeOn:v25];
  v47 = v20;
  v48 = v23;
  v23(v24, v22, v20);
  sub_100005E30(&qword_100062A78, &unk_10004DBC0);
  swift_allocObject();
  v30 = v29;

  v49 = v30;
  a6[20] = BiomeStreamListener.init(statusType:biomePublisher:eventHandler:)();

  static PeopleLogger.daemon.getter();

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v45 = v26;
    v34 = v33;
    v35 = swift_slowAlloc();
    v46 = v25;
    v36 = v35;
    *&v56 = v35;
    *v34 = 136315138;
    v37 = v53;
    v38 = v47;
    v48(v53, v22, v47);
    sub_100010884(&qword_100062708, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v40;
    v45(v37, v38);
    v42 = sub_10002580C(v39, v41, &v56);

    *(v34 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v31, v32, "%s init complete", v34, 0xCu);
    sub_100003938(v36);
  }

  else
  {
  }

  (*(v51 + 8))(v54, v52);
  sub_100003938(v60);
  sub_100003938(v59);
  return a6;
}

uint64_t sub_10000E3A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v41 = type metadata accessor for Logger();
  v44 = *(v41 - 8);
  __chkstk_darwin(v41);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StatusType();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48[3] = type metadata accessor for SpotlightIndexer();
  v48[4] = &protocol witness table for SpotlightIndexer;
  v48[0] = a2;
  v47[3] = type metadata accessor for ContactFetcher();
  v47[4] = &protocol witness table for ContactFetcher;
  v47[0] = a3;
  *(a5 + 24) = 0;
  swift_unknownObjectWeakInit();
  static PeopleConstants.askToBuyEventTTL.getter();
  *(a5 + OBJC_IVAR____TtC7peopled20AskToBuyStatusSource_listener) = 0;
  *(a5 + OBJC_IVAR____TtC7peopled20AskToBuyStatusSource_featureFlags) = a1;
  sub_1000077E8(v48, a5 + OBJC_IVAR____TtC7peopled20AskToBuyStatusSource_indexer);
  sub_1000077E8(v47, a5 + OBJC_IVAR____TtC7peopled20AskToBuyStatusSource_contactFetcher);
  v45 = a4;
  sub_1000077E8(a4, a5 + OBJC_IVAR____TtC7peopled20AskToBuyStatusSource_messageConduit);
  type metadata accessor for BiomeUtilities();
  v42 = a1;

  static BiomeUtilities.shared.getter();
  v16 = enum case for StatusType.askToBuyRequest(_:);
  v17 = *(v13 + 104);
  v17(v15, enum case for StatusType.askToBuyRequest(_:), v12);
  v18 = dispatch thunk of BiomeUtilities.scheduler(for:isDaemon:)();

  v39 = *(v13 + 8);
  v40 = v13 + 8;
  v39(v15, v12);
  v19 = v16;
  v20 = [objc_opt_self() askToBuyStream];
  v21 = [v20 publisher];

  v22 = [v21 subscribeOn:v18];
  v23 = v12;
  v38 = v17;
  v17(v15, v19, v12);
  sub_100005E30(&qword_100062A68, &qword_10004DBB8);
  swift_allocObject();
  v24 = v22;

  *(a5 + OBJC_IVAR____TtC7peopled20AskToBuyStatusSource_listener) = BiomeStreamListener.init(statusType:biomePublisher:eventHandler:)();

  static PeopleLogger.daemon.getter();

  v43 = v11;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v37 = v24;
    v28 = v27;
    v29 = swift_slowAlloc();
    v36 = v18;
    v30 = v29;
    v46 = v29;
    *v28 = 136315138;
    v38(v15, v19, v23);
    sub_100010884(&qword_100062708, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    v39(v15, v23);
    v34 = sub_10002580C(v31, v33, &v46);

    *(v28 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v25, v26, "%s init complete", v28, 0xCu);
    sub_100003938(v30);
  }

  else
  {
  }

  sub_100003938(v45);
  (*(v44 + 8))(v43, v41);
  sub_100003938(v47);
  sub_100003938(v48);
  return a5;
}

uint64_t sub_10000E8F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v41 = type metadata accessor for Logger();
  v44 = *(v41 - 8);
  __chkstk_darwin(v41);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StatusType();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48[3] = type metadata accessor for SpotlightIndexer();
  v48[4] = &protocol witness table for SpotlightIndexer;
  v48[0] = a2;
  v47[3] = type metadata accessor for ContactFetcher();
  v47[4] = &protocol witness table for ContactFetcher;
  v47[0] = a3;
  *(a5 + 24) = 0;
  swift_unknownObjectWeakInit();
  static PeopleConstants.screenTimeRequestEventTTL.getter();
  *(a5 + OBJC_IVAR____TtC7peopled22ScreenTimeStatusSource_listener) = 0;
  *(a5 + 32) = a1;
  sub_1000077E8(v48, a5 + OBJC_IVAR____TtC7peopled22ScreenTimeStatusSource_indexer);
  sub_1000077E8(v47, a5 + OBJC_IVAR____TtC7peopled22ScreenTimeStatusSource_contactFetcher);
  v45 = a4;
  sub_1000077E8(a4, a5 + OBJC_IVAR____TtC7peopled22ScreenTimeStatusSource_messageConduit);
  type metadata accessor for BiomeUtilities();
  v42 = a1;

  static BiomeUtilities.shared.getter();
  v16 = enum case for StatusType.screenTimeRequest(_:);
  v17 = *(v13 + 104);
  v17(v15, enum case for StatusType.screenTimeRequest(_:), v12);
  v18 = dispatch thunk of BiomeUtilities.scheduler(for:isDaemon:)();

  v39 = *(v13 + 8);
  v40 = v13 + 8;
  v39(v15, v12);
  v19 = v16;
  v20 = [objc_opt_self() screenTimeRequestStream];
  v21 = [v20 publisher];

  v22 = [v21 subscribeOn:v18];
  v23 = v12;
  v38 = v17;
  v17(v15, v19, v12);
  sub_100005E30(&qword_100062A60, &qword_10004DBB0);
  swift_allocObject();
  v24 = v22;

  *(a5 + OBJC_IVAR____TtC7peopled22ScreenTimeStatusSource_listener) = BiomeStreamListener.init(statusType:biomePublisher:eventHandler:)();

  static PeopleLogger.daemon.getter();

  v43 = v11;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v37 = v24;
    v28 = v27;
    v29 = swift_slowAlloc();
    v36 = v18;
    v30 = v29;
    v46 = v29;
    *v28 = 136315138;
    v38(v15, v19, v23);
    sub_100010884(&qword_100062708, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    v39(v15, v23);
    v34 = sub_10002580C(v31, v33, &v46);

    *(v28 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v25, v26, "%s init complete", v28, 0xCu);
    sub_100003938(v30);
  }

  else
  {
  }

  sub_100003938(v45);
  (*(v44 + 8))(v43, v41);
  sub_100003938(v47);
  sub_100003938(v48);
  return a5;
}

void *sub_10000EE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v44 = v10;
  v45 = v11;
  __chkstk_darwin(v10);
  v48 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for StatusType();
  v13 = *(v46 - 8);
  __chkstk_darwin(v46);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52[3] = type metadata accessor for LaunchRecordReader();
  v52[4] = &protocol witness table for LaunchRecordReader;
  v52[0] = a4;
  v51[3] = type metadata accessor for ContactFetcher();
  v51[4] = &protocol witness table for ContactFetcher;
  v51[0] = a1;
  v50[3] = type metadata accessor for CallHistoryFetcher();
  v50[4] = &off_10005EE58;
  v50[0] = a2;
  a5[3] = 0;
  swift_unknownObjectWeakInit();
  a5[4] = 0;
  sub_1000077E8(v52, (a5 + 16));
  a5[15] = a3;
  sub_1000077E8(v51, (a5 + 5));
  sub_1000077E8(v50, (a5 + 10));
  type metadata accessor for BiomeUtilities();
  v43 = a3;

  static BiomeUtilities.shared.getter();
  v16 = enum case for StatusType.missedCall(_:);
  v17 = *(v13 + 104);
  v18 = v46;
  v17(v15, enum case for StatusType.missedCall(_:), v46);
  v47 = dispatch thunk of BiomeUtilities.scheduler(for:isDaemon:)();

  v19 = *(v13 + 8);
  v42 = v13 + 8;
  v41 = v19;
  v19(v15, v18);
  v20 = [objc_opt_self() intent];
  v21 = [v20 publisher];

  static PeopleConstants.intentClassKeyPath.getter();
  v22 = String._bridgeToObjectiveC()();

  static PeopleConstants.startCallIntent.getter();
  v23 = String._bridgeToObjectiveC()();

  v24 = [v21 filterWithKeyPath:v22 value:v23];

  v25 = [v24 subscribeOn:v47];
  v40 = v16;
  v26 = v16;
  v27 = v46;
  v39 = v17;
  v17(v15, v26, v46);
  sub_100005E30(&qword_100062A58, &qword_10004DBA8);
  swift_allocObject();
  v28 = v25;

  a5[4] = BiomeStreamListener.init(statusType:biomePublisher:eventHandler:)();

  static PeopleLogger.daemon.getter();

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v49 = v32;
    *v31 = 136315138;
    v39(v15, v40, v27);
    sub_100010884(&qword_100062708, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;
    v41(v15, v27);
    v36 = sub_10002580C(v33, v35, &v49);

    *(v31 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v29, v30, "%s init complete", v31, 0xCu);
    sub_100003938(v32);
  }

  else
  {
  }

  (*(v45 + 8))(v48, v44);
  sub_100003938(v52);
  sub_100003938(v51);
  sub_100003938(v50);
  return a5;
}

void *sub_10000F3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v40 = type metadata accessor for Logger();
  v42 = *(v40 - 8);
  __chkstk_darwin(v40);
  v43 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StatusType();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47[3] = type metadata accessor for LaunchRecordReader();
  v47[4] = &protocol witness table for LaunchRecordReader;
  v47[0] = a4;
  v46[3] = type metadata accessor for ContactFetcher();
  v46[4] = &protocol witness table for ContactFetcher;
  v46[0] = a2;
  v45[3] = type metadata accessor for MessageFetcher();
  v45[4] = &off_10005E8E8;
  v45[0] = a3;
  a5[18] = 0;
  a5[20] = 0;
  swift_unknownObjectWeakInit();
  sub_1000077E8(v47, (a5 + 3));
  a5[2] = a1;
  sub_1000077E8(v46, (a5 + 8));
  sub_1000077E8(v45, (a5 + 13));
  type metadata accessor for BiomeUtilities();
  v41 = a1;

  static BiomeUtilities.shared.getter();
  v15 = enum case for StatusType.readMessage(_:);
  v16 = *(v12 + 104);
  v16(v14, enum case for StatusType.readMessage(_:), v11);
  v17 = dispatch thunk of BiomeUtilities.scheduler(for:isDaemon:)();

  v18 = *(v12 + 8);
  v39 = v12 + 8;
  v38 = v18;
  v18(v14, v11);
  v19 = [objc_opt_self() readMessageStream];
  v20 = [v19 publisher];

  v21 = v17;
  v22 = [v20 subscribeOn:v17];

  v36 = v15;
  v37 = v16;
  v16(v14, v15, v11);
  sub_100005E30(&qword_100062A50, &qword_10004DBA0);
  swift_allocObject();
  v23 = v22;

  a5[18] = BiomeStreamListener.init(statusType:biomePublisher:eventHandler:)();

  static PeopleLogger.daemon.getter();

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v35 = v21;
    v28 = v23;
    v29 = v27;
    v44 = v27;
    *v26 = 136315138;
    v37(v14, v36, v11);
    sub_100010884(&qword_100062708, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    v38(v14, v11);
    v33 = sub_10002580C(v30, v32, &v44);

    *(v26 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v24, v25, "%s init complete", v26, 0xCu);
    sub_100003938(v29);
  }

  else
  {
  }

  (*(v42 + 8))(v43, v40);
  sub_100003938(v47);
  sub_100003938(v46);
  sub_100003938(v45);
  return a5;
}

uint64_t sub_10000F8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = type metadata accessor for Logger();
  v39 = *(v36 - 8);
  __chkstk_darwin(v36);
  v40 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StatusType();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43[3] = sub_100010734(0, &qword_100062A38, STDowntimeClient_ptr);
  v43[4] = &off_10005DCD0;
  v43[0] = a3;
  v42[3] = type metadata accessor for ContactFetcher();
  v42[4] = &protocol witness table for ContactFetcher;
  v42[0] = a2;
  *(a4 + 24) = 0;
  swift_unknownObjectWeakInit();
  static PeopleConstants.childStateEventTTL.getter();
  *(a4 + OBJC_IVAR____TtC7peopled22ChildStateStatusSource_listener) = 0;
  *(a4 + 32) = a1;
  sub_1000077E8(v42, a4 + OBJC_IVAR____TtC7peopled22ChildStateStatusSource_contactFetcher);
  sub_1000077E8(v43, a4 + OBJC_IVAR____TtC7peopled22ChildStateStatusSource_downtimeClient);
  type metadata accessor for BiomeUtilities();
  v38 = a1;

  static BiomeUtilities.shared.getter();
  v13 = enum case for StatusType.childState(_:);
  v14 = *(v10 + 104);
  v14(v12, enum case for StatusType.childState(_:), v9);
  v15 = dispatch thunk of BiomeUtilities.scheduler(for:isDaemon:)();

  v34 = *(v10 + 8);
  v35 = v10 + 8;
  v34(v12, v9);
  v16 = [BiomeLibrary() Family];
  swift_unknownObjectRelease();
  v17 = [v16 ScreenTime];
  swift_unknownObjectRelease();
  v18 = [v17 ChildState];
  swift_unknownObjectRelease();
  v19 = [v18 DSLPublisher];

  v37 = v15;
  v20 = [v19 subscribeOn:v15];

  v33 = v13;
  v32 = v14;
  v14(v12, v13, v9);
  sub_100005E30(&qword_100062A40, &qword_10004DB98);
  swift_allocObject();
  v21 = v20;

  *(a4 + OBJC_IVAR____TtC7peopled22ChildStateStatusSource_listener) = BiomeStreamListener.init(statusType:biomePublisher:eventHandler:)();

  static PeopleLogger.daemon.getter();

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v41 = v25;
    *v24 = 136315138;
    v32(v12, v33, v9);
    sub_100010884(&qword_100062708, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v34(v12, v9);
    v29 = sub_10002580C(v26, v28, &v41);

    *(v24 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v22, v23, "%s init complete", v24, 0xCu);
    sub_100003938(v25);
  }

  else
  {
  }

  (*(v39 + 8))(v40, v36);
  sub_100003938(v43);
  sub_100003938(v42);
  return a4;
}

void *sub_10000FE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a3;
  v44 = type metadata accessor for Logger();
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v45 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StatusType();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51[3] = type metadata accessor for ContactFetcher();
  v51[4] = &protocol witness table for ContactFetcher;
  v51[0] = a2;
  v50[3] = type metadata accessor for PeopleLocateFriendProvider();
  v50[4] = &protocol witness table for PeopleLocateFriendProvider;
  v50[0] = a4;
  v17 = type metadata accessor for WidgetConfigurationReader();
  v49[3] = v17;
  v49[4] = &off_10005DBD0;
  v49[0] = a5;
  v48[3] = type metadata accessor for SpotlightIndexer();
  v48[4] = &protocol witness table for SpotlightIndexer;
  v48[0] = a6;
  type metadata accessor for LocationStatusEventListener();
  v18 = swift_allocObject();
  v19 = sub_1000106B4(v49, v17);
  __chkstk_darwin(v19);
  v21 = (v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = *v21;
  v47[4] = &off_10005DBD0;
  v47[3] = v17;
  v47[0] = v23;
  v18[3] = 0;
  swift_unknownObjectWeakInit();
  v18[4] = 0;
  v18[5] = a1;
  sub_1000077E8(v51, (v18 + 6));
  sub_1000077E8(v48, (v18 + 11));
  sub_1000077E8(v50, (v18 + 16));
  sub_1000077E8(v47, (v18 + 21));
  v42[1] = a1;
  v42[0] = v14;
  if (v9)
  {
    type metadata accessor for BiomeUtilities();

    static BiomeUtilities.shared.getter();
    v24 = enum case for StatusType.location(_:);
    v25 = *(v14 + 104);
    v25(v16, enum case for StatusType.location(_:), v13);
    v26 = dispatch thunk of BiomeUtilities.scheduler(for:isDaemon:)();

    (*(v14 + 8))(v16, v13);
    v27 = [objc_opt_self() findMyLocationChangeStream];
    v28 = [v27 publisher];

    v29 = [v28 subscribeOn:v26];
    v25(v16, v24, v13);
    sub_100005E30(&qword_100062A30, &qword_10004DB90);
    swift_allocObject();

    v30 = BiomeStreamListener.init(statusType:biomePublisher:eventHandler:)();

    v18[4] = v30;
  }

  else
  {
  }

  v31 = v45;
  static PeopleLogger.daemon.getter();

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v46 = v35;
    *v34 = 136315138;
    v36 = v42[0];
    (*(v42[0] + 104))(v16, enum case for StatusType.location(_:), v13);
    sub_100010884(&qword_100062708, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;
    (*(v36 + 8))(v16, v13);
    v40 = sub_10002580C(v37, v39, &v46);

    *(v34 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v32, v33, "%s init complete", v34, 0xCu);
    sub_100003938(v35);

    (*(v43 + 8))(v45, v44);
  }

  else
  {

    (*(v43 + 8))(v31, v44);
  }

  sub_100003938(v48);
  sub_100003938(v50);
  sub_100003938(v51);
  sub_100003938(v47);
  sub_100003938(v49);
  return v18;
}

void (*sub_1000104A8(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
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
    return sub_100010528;
  }

  __break(1u);
  return result;
}

unint64_t sub_100010530()
{
  result = qword_100062920;
  if (!qword_100062920)
  {
    sub_100010594(&qword_100062918, &qword_10004F050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062920);
  }

  return result;
}

uint64_t sub_100010594(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100010600(uint64_t *a1)
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

uint64_t sub_100010658(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000106B4(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_100010734(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100010784()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000107C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100007CBC;

  return sub_10000B124(a1, v4, v5, v7, v6);
}

uint64_t sub_100010884(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000108E0(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

uint64_t sub_100010948()
{
  if (*(v0 + OBJC_IVAR____TtC7peopled22ChildStateStatusSource_listener))
  {
    _print_unlocked<A, B>(_:_:)();
    v2 = 0;
    v1 = 0xE000000000000000;
  }

  else
  {
    v1 = 0xE300000000000000;
    v2 = 4271950;
  }

  _StringGuts.grow(_:)(51);
  v3._object = 0x8000000100050720;
  v3._countAndFlagsBits = 0xD000000000000021;
  String.append(_:)(v3);
  _print_unlocked<A, B>(_:_:)();
  v4._countAndFlagsBits = 0x6E657473696C0A2CLL;
  v4._object = 0xEC000000203A7265;
  String.append(_:)(v4);
  v5._countAndFlagsBits = v2;
  v5._object = v1;
  String.append(_:)(v5);

  v6._countAndFlagsBits = 10506;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  return 0;
}

uint64_t sub_100010AA4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PeopleLogger.daemon.getter();
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "Got BMScreenTimeChildState: %@", v13, 0xCu);
    sub_100014C2C(v14);
  }

  (*(v7 + 8))(v9, v6);
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  *(v16 + 24) = v10;
  sub_100005E30(&qword_100062750, &qword_10004D990);
  swift_allocObject();
  v17 = v10;

  return Promise.init(startBlock:)();
}

uint64_t sub_100010CA4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_100005E78((a3 + OBJC_IVAR____TtC7peopled22ChildStateStatusSource_contactFetcher), *(a3 + OBJC_IVAR____TtC7peopled22ChildStateStatusSource_contactFetcher + 24));
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = sub_100014D78;
  v9[4] = v8;
  v9[5] = a4;

  v10 = a4;
  dispatch thunk of FamilyMemberContactFetching.familyWithDSIDs(completion:)();
}

uint64_t sub_100010DA0(uint64_t a1, char a2, void *a3, uint64_t (*a4)(void, void), uint64_t a5, void *a6)
{
  v12 = sub_100005E30(&qword_100062A80, &qword_10004ED60);
  __chkstk_darwin(v12 - 8);
  v97 = &v93 - v13;
  v14 = type metadata accessor for StatusType();
  v103 = *(v14 - 8);
  v104 = v14;
  __chkstk_darwin(v14);
  v102 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 1);
  v18 = __chkstk_darwin(v16);
  v19 = __chkstk_darwin(v18);
  __chkstk_darwin(v19);
  v23 = &v93 - v22;
  if (a2)
  {
    static PeopleLogger.daemon.getter();

    sub_100014AA4(a1, 1);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    sub_100014AB8(a1, 1);
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v98 = v17;
      v99 = v16;
      v27 = v26;
      v28 = swift_slowAlloc();
      v100 = a5;
      v101 = a4;
      v105 = v28;
      v106 = v28;
      *v27 = 136315394;
      v29 = v102;
      v30 = v103;
      v31 = v104;
      (*(v103 + 104))(v102, enum case for StatusType.childState(_:), v104);
      sub_100014CE8(&qword_100062708, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      (*(v30 + 8))(v29, v31);
      v35 = sub_10002580C(v32, v34, &v106);

      *(v27 + 4) = v35;
      *(v27 + 12) = 2080;
      swift_getErrorValue();
      v36 = Error.localizedDescription.getter();
      v38 = sub_10002580C(v36, v37, &v106);

      *(v27 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v24, v25, "%s family lookup error: %s", v27, 0x16u);
      swift_arrayDestroy();
      a4 = v101;

      (*(v98 + 8))(v23, v99);
    }

    else
    {

      (*(v17 + 8))(v23, v16);
    }

    return a4(a1, 1);
  }

  else
  {
    v94 = v21;
    v95 = v20;
    v96 = a3;
    sub_100012FFC(a6, a1);
    v40 = v39;
    if (v39 >> 62)
    {
      goto LABEL_35;
    }

    for (i = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v98 = v17;
      v99 = v16;
      v100 = a5;
      v101 = a4;
      if (!i)
      {
        break;
      }

      v42 = 0;
      v105 = v40 & 0xC000000000000001;
      v17 = v40 & 0xFFFFFFFFFFFFFF8;
      v43 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v105)
        {
          v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v42 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v44 = *(v40 + 8 * v42 + 32);
        }

        v16 = v44;
        v45 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          break;
        }

        a5 = i;
        v46 = [v44 identifier];
        v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        a4 = v48;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_100022130(0, *(v43 + 2) + 1, 1, v43);
        }

        v50 = *(v43 + 2);
        v49 = *(v43 + 3);
        v16 = (v50 + 1);
        if (v50 >= v49 >> 1)
        {
          v43 = sub_100022130((v49 > 1), v50 + 1, 1, v43);
        }

        *(v43 + 2) = v16;
        v51 = &v43[16 * v50];
        *(v51 + 4) = v47;
        *(v51 + 5) = a4;
        ++v42;
        i = a5;
        if (v45 == a5)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      ;
    }

    v43 = _swiftEmptyArrayStorage;
LABEL_22:

    v53 = *(v43 + 2);
    if (v53)
    {
      v54 = v96;
      Strong = swift_unknownObjectWeakLoadStrong();
      v56 = v101;
      if (Strong)
      {
        sub_10001D564(v54, v43, Strong);
        swift_unknownObjectRelease();
      }

      v57 = v95;
      static PeopleLogger.daemon.getter();

      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v105 = v53;
        v61 = v60;
        v96 = swift_slowAlloc();
        v106 = v96;
        *v61 = 136315138;
        v62 = v102;
        v63 = v103;
        v64 = v56;
        v65 = v104;
        (*(v103 + 104))(v102, enum case for StatusType.childState(_:), v104);
        sub_100014CE8(&qword_100062708, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
        v66 = dispatch thunk of CustomStringConvertible.description.getter();
        v68 = v67;
        v69 = v63;
        v70 = v62;
        v71 = v65;
        v56 = v64;
        (*(v69 + 8))(v62, v71);
        v72 = sub_10002580C(v66, v68, &v106);

        *(v61 + 4) = v72;
        _os_log_impl(&_mh_execute_header, v58, v59, "%s event consume complete", v61, 0xCu);
        sub_100003938(v96);

        (*(v98 + 8))(v57, v99);
      }

      else
      {

        (*(v98 + 8))(v57, v99);
        v70 = v102;
      }

      v88 = v97;
      v89 = type metadata accessor for TaskPriority();
      (*(*(v89 - 8) + 56))(v88, 1, 1, v89);
      v90 = swift_allocObject();
      *(v90 + 16) = 0;
      *(v90 + 24) = 0;
      sub_100014EE4(0, 0, v88, &unk_10004DE08, v90);
    }

    else
    {

      v73 = v94;
      static PeopleLogger.daemon.getter();

      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.debug.getter();

      v76 = os_log_type_enabled(v74, v75);
      v56 = v101;
      if (v76)
      {
        v77 = swift_slowAlloc();
        v105 = 0;
        v78 = v77;
        v79 = swift_slowAlloc();
        v106 = v79;
        *v78 = 136315138;
        v81 = v102;
        v80 = v103;
        v82 = v104;
        (*(v103 + 104))(v102, enum case for StatusType.childState(_:), v104);
        sub_100014CE8(&qword_100062708, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
        LODWORD(v97) = v75;
        v83 = dispatch thunk of CustomStringConvertible.description.getter();
        v85 = v84;
        v86 = v80;
        v70 = v81;
        (*(v86 + 8))(v81, v82);
        v87 = sub_10002580C(v83, v85, &v106);

        *(v78 + 4) = v87;
        _os_log_impl(&_mh_execute_header, v74, v97, "%s event consume complete w/o local contact", v78, 0xCu);
        sub_100003938(v79);
        v56 = v101;

        (*(v98 + 8))(v73, v99);
      }

      else
      {

        (*(v98 + 8))(v73, v99);
        v70 = v102;
      }
    }

    type metadata accessor for PeopleAnalytics();
    v92 = v103;
    v91 = v104;
    (*(v103 + 104))(v70, enum case for StatusType.childState(_:), v104);
    static PeopleAnalytics.eventReceived(foundContacts:statusType:)();
    (*(v92 + 8))(v70, v91);
    return v56(0, 0);
  }
}

uint64_t sub_100011800()
{
  v1 = type metadata accessor for StatusType();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000118BC, 0, 0);
}

uint64_t sub_1000118BC()
{
  (*(v0[3] + 104))(v0[4], enum case for StatusType.childState(_:), v0[2]);
  type metadata accessor for MainActor();
  v0[5] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100004810, v2, v1);
}

uint64_t sub_100011974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_100005E78((a3 + OBJC_IVAR____TtC7peopled22ChildStateStatusSource_contactFetcher), *(a3 + OBJC_IVAR____TtC7peopled22ChildStateStatusSource_contactFetcher + 24));
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = sub_10000D1F8;
  v9[4] = v8;
  v9[5] = a4;

  dispatch thunk of FamilyMemberContactFetching.familyWithDSIDs(completion:)();
}

uint64_t sub_100011A74(uint64_t a1, char a2, uint64_t a3, void (*a4)(void *, uint64_t), uint64_t a5, NSObject *a6)
{
  v35 = a6;
  v37 = a4;
  v9 = type metadata accessor for StatusType();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v32[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v32[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    v36 = a5;
    static PeopleLogger.daemon.getter();

    sub_100014AA4(a1, 1);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    sub_100014AB8(a1, 1);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v38 = v35;
      *v19 = 136315394;
      (*(v10 + 104))(v12, enum case for StatusType.childState(_:), v9);
      sub_100014CE8(&qword_100062708, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
      v34 = v17;
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v18;
      v22 = v21;
      (*(v10 + 8))(v12, v9);
      v23 = sub_10002580C(v20, v22, &v38);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      swift_getErrorValue();
      v24 = Error.localizedDescription.getter();
      v26 = sub_10002580C(v24, v25, &v38);

      *(v19 + 14) = v26;
      v17 = v34;
      _os_log_impl(&_mh_execute_header, v34, v33, "%s family lookup error: %s", v19, 0x16u);
      swift_arrayDestroy();
    }

    (*(v14 + 8))(v16, v13);
    return (v37)(a1, 1);
  }

  else
  {
    v28 = *(a1 + 16);
    if (v28)
    {
      v36 = a5;
      v29 = sub_100013E54(v28, 0);
      v30 = sub_100014950(&v38, v29 + 4, v28, a1);
      v31 = v38;
      sub_100014AA4(a1, 0);
      result = sub_100014AB0(v31);
      if (v30 != v28)
      {
        __break(1u);
        return result;
      }

      a5 = v36;
    }

    else
    {
      v29 = _swiftEmptyArrayStorage;
    }

    sub_100011EA4(v35, v29, v37, a5);
  }
}

void sub_100011EA4(NSObject *a1, unint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4)
{
  v137 = a4;
  v138 = a3;
  v7 = type metadata accessor for StatusType();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for ChildStateType();
  v11 = *(v134 - 8);
  __chkstk_darwin(v134);
  v133 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for ChildStatePersonStatus();
  v13 = *(v145 - 8);
  v14 = __chkstk_darwin(v145);
  v144 = &v124 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v150 = &v124 - v16;
  v154 = type metadata accessor for Logger();
  v17 = *(v154 - 8);
  v18 = __chkstk_darwin(v154);
  v152 = &v124 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v147 = &v124 - v21;
  v22 = __chkstk_darwin(v20);
  v146 = &v124 - v23;
  __chkstk_darwin(v22);
  v151 = &v124 - v24;
  v143 = type metadata accessor for Date();
  v142 = *(v143 - 8);
  v25 = __chkstk_darwin(v143);
  v132 = &v124 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v124 - v27;
  v159 = a2;
  if (a2 >> 62)
  {
LABEL_72:
    v117 = v28;
    v118 = _CocoaArrayWrapper.endIndex.getter();
    v28 = v117;
    v158 = v118;
    if (v118)
    {
      goto LABEL_3;
    }

LABEL_73:
    *&v160 = 0;
    *(&v160 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(20);
    (*(v8 + 104))(v10, enum case for StatusType.childState(_:), v7);
    sub_100014CE8(&qword_100062708, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
    v119 = dispatch thunk of CustomStringConvertible.description.getter();
    v121 = v120;

    *&v160 = v119;
    *(&v160 + 1) = v121;
    (*(v8 + 8))(v10, v7);
    v122._object = 0x8000000100050700;
    v122._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v122);
    v123 = static PeopleErrors.createError(_:code:)();

    v138(v123, 1);

    return;
  }

  v158 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v158)
  {
    goto LABEL_73;
  }

LABEL_3:
  v136 = v28;
  Date.init()();
  isa = a1[2].isa;
  if (!isa)
  {
    v148 = 0;
    v149 = &_swiftEmptyDictionarySingleton;
LABEL_69:
    v138(v149, 0);

    (*(v142 + 8))(v136, v143);
    sub_100014C1C(v148, 0);
    return;
  }

  v148 = 0;
  v30 = 0;
  v141 = (v4 + OBJC_IVAR____TtC7peopled22ChildStateStatusSource_downtimeClient);
  v155 = a1 + 4;
  v10 = v159;
  v31 = v159 & 0xC000000000000001;
  v8 = v159 & 0xFFFFFFFFFFFFFF8;
  v153 = (v17 + 8);
  v129 = enum case for ChildStateType.onDemandDowntime(_:);
  v128 = (v11 + 104);
  v127 = (v142 + 16);
  v139 = (v13 + 16);
  v126 = (v13 + 8);
  v149 = &_swiftEmptyDictionarySingleton;
  *&v29 = 138412290;
  v130 = v29;
  *&v29 = 138412546;
  v140 = v29;
  v4 = v158;
  while (2)
  {
    v32 = &v155[2 * v30];
    v11 = *v32;
    v13 = v32[1];
    v157 = (v30 + 1);

    v7 = 0;
    while (1)
    {
      if (v31)
      {
        v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v28 = *(v8 + 16);
        if (v7 >= v28)
        {
          goto LABEL_71;
        }

        v33 = *&v10[8 * v7 + 32];
      }

      a1 = v33;
      v34 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v35 = [v33 contact];
      if (v35)
      {
        break;
      }

LABEL_8:

      ++v7;
      if (v34 == v4)
      {

        goto LABEL_6;
      }
    }

    v36 = v35;
    v37 = [v35 identifier];

    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    if (v11 != v38 || v13 != v40)
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v4 = v158;
      v10 = v159;
      if (v17)
      {
        goto LABEL_22;
      }

      goto LABEL_8;
    }

LABEL_22:
    v42 = [a1 dsid];
    if (!v42)
    {

      static PeopleLogger.daemon.getter();
      v17 = a1;
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        a1 = swift_slowAlloc();
        *v63 = v130;
        v64 = [v17 firstName];
        if (v64)
        {
          v65 = v64;
          v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v68 = v67;

          sub_100014C94();
          swift_allocError();
          *v69 = v66;
          v69[1] = v68;
          v64 = _swift_stdlib_bridgeErrorToNSError();
          v70 = v64;
        }

        else
        {
          v70 = 0;
        }

        *(v63 + 4) = v64;
        a1->isa = v70;
        _os_log_impl(&_mh_execute_header, v61, v62, "ODD %@ impossible no dsid", v63, 0xCu);
        sub_100014C2C(a1);

        v81 = v17;
      }

      else
      {
        v81 = v61;
        v61 = v17;
      }

      (*v153)(v152, v154);
      goto LABEL_66;
    }

    v43 = v42;
    v44 = [objc_allocWithZone(STUserID) initWithDSID:v42];
    v45 = [v44 dsid];
    v46 = [v45 integerValue];

    if (v46 != [v43 integerValue])
    {

      static PeopleLogger.daemon.getter();
      a1 = a1;
      v17 = v44;
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        *v73 = v140;
        v75 = [a1 firstName];
        if (v75)
        {
          v76 = v75;
          v135 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v131 = v77;

          sub_100014C94();
          swift_allocError();
          v78 = v131;
          *v79 = v135;
          v79[1] = v78;
          v75 = _swift_stdlib_bridgeErrorToNSError();
          v80 = v75;
        }

        else
        {
          v80 = 0;
        }

        *(v73 + 4) = v75;
        *(v73 + 12) = 2112;
        *(v73 + 14) = v17;
        *v74 = v80;
        v74[1] = v17;
        v94 = v17;
        _os_log_impl(&_mh_execute_header, v71, v72, "ODD %@ bad st user id %@", v73, 0x16u);
        sub_100005E30(&qword_100062758, &unk_10004E8A0);
        swift_arrayDestroy();

        v92 = a1;
        v17 = v43;
        v43 = v94;
      }

      else
      {
        v92 = v71;
        v71 = a1;
      }

      v10 = v159;

      (*v153)(v151, v154);
      goto LABEL_67;
    }

    v47 = v141[3];
    v48 = v141[4];
    sub_100005E78(v141, v47);
    if (((*(v48 + 8))(v44, v47, v48) & 1) == 0)
    {

      static PeopleLogger.daemon.getter();
      a1 = a1;
      v17 = v44;
      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        *v84 = v140;
        v86 = [a1 firstName];
        if (v86)
        {
          v87 = v86;
          v135 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v131 = v88;

          sub_100014C94();
          swift_allocError();
          v89 = v131;
          *v90 = v135;
          v90[1] = v89;
          v86 = _swift_stdlib_bridgeErrorToNSError();
          v91 = v86;
        }

        else
        {
          v91 = 0;
        }

        *(v84 + 4) = v86;
        *(v84 + 12) = 2112;
        *(v84 + 14) = v17;
        *v85 = v91;
        v85[1] = v17;
        v106 = v17;
        _os_log_impl(&_mh_execute_header, v82, v83, "ODD %@ has downtime off %@", v84, 0x16u);
        sub_100005E30(&qword_100062758, &unk_10004E8A0);
        swift_arrayDestroy();

        v93 = a1;
        v17 = v43;
        v43 = v106;
      }

      else
      {
        v93 = v82;
        v82 = a1;
      }

      (*v153)(v147, v154);
      goto LABEL_66;
    }

    (*v128)(v133, v129, v134);
    (*v127)(v132, v136, v143);
    type metadata accessor for PeopleFeatureFlags();
    static PeopleFeatureFlags.shared.getter();
    ChildStatePersonStatus.init(childStateType:date:featureFlags:)();
    static PeopleLogger.daemon.getter();
    v49 = a1;
    v50 = v44;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();

    v135 = v49;
    if (os_log_type_enabled(v51, v52))
    {
      v131 = v50;
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v53 = v140;
      v55 = [v135 firstName];
      if (v55)
      {
        v56 = v55;
        v125 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v124 = v57;

        sub_100014C94();
        swift_allocError();
        v58 = v124;
        *v59 = v125;
        v59[1] = v58;
        v55 = _swift_stdlib_bridgeErrorToNSError();
        v60 = v55;
      }

      else
      {
        v60 = 0;
      }

      *(v53 + 4) = v55;
      *(v53 + 12) = 2112;
      v50 = v131;
      *(v53 + 14) = v131;
      *v54 = v60;
      v54[1] = v50;
      v95 = v50;
      _os_log_impl(&_mh_execute_header, v51, v52, "ODD %@ has downtime on %@", v53, 0x16u);
      sub_100005E30(&qword_100062758, &unk_10004E8A0);
      swift_arrayDestroy();
    }

    (*v153)(v146, v154);
    v131 = *v139;
    v131(v144, v150, v145);
    sub_100014C1C(v148, 0);
    v96 = v149;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v160 = v96;
    v17 = sub_100005EBC(v11, v13);
    v99 = v96[2];
    v100 = (v98 & 1) == 0;
    v101 = v99 + v100;
    if (__OFADD__(v99, v100))
    {
      __break(1u);
    }

    else
    {
      v102 = v98;
      if (v96[3] >= v101)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v105 = v160;
          if ((v98 & 1) == 0)
          {
            goto LABEL_60;
          }
        }

        else
        {
          sub_100006EE0();
          v105 = v160;
          if ((v102 & 1) == 0)
          {
            goto LABEL_60;
          }
        }

        goto LABEL_55;
      }

      sub_100006460(v101, isUniquelyReferenced_nonNull_native);
      v103 = sub_100005EBC(v11, v13);
      if ((v102 & 1) == (v104 & 1))
      {
        v17 = v103;
        v105 = v160;
        if ((v102 & 1) == 0)
        {
LABEL_60:
          sub_100007E88();
LABEL_61:
          v107 = v105[7];
          v108 = *(v107 + 8 * v17);
          v109 = swift_isUniquelyReferenced_nonNull_native();
          *(v107 + 8 * v17) = v108;
          v149 = v105;
          if ((v109 & 1) == 0)
          {
            v108 = sub_100022348(0, v108[2] + 1, 1, v108);
            *(v107 + 8 * v17) = v108;
          }

          v111 = v108[2];
          v110 = v108[3];
          if (v111 >= v110 >> 1)
          {
            *(v107 + 8 * v17) = sub_100022348((v110 > 1), v111 + 1, 1, v108);
          }

          a1 = v126;
          v112 = v126->isa;
          v113 = v145;
          (v126->isa)(v150, v145);
          v161 = v113;
          v162 = sub_100014CE8(&qword_100062C28, &type metadata accessor for ChildStatePersonStatus, &protocol conformance descriptor for ChildStatePersonStatus);
          v114 = sub_100007784(&v160);
          v115 = v144;
          v131(v114, v144, v113);
          v116 = *(v107 + 8 * v17);
          *(v116 + 16) = v111 + 1;
          sub_10000784C(&v160, v116 + 40 * v111 + 32);
          v112(v115, v113);
          v148 = sub_100012FEC;
LABEL_66:
          v10 = v159;
LABEL_67:
          v4 = v158;
LABEL_6:
          v30 = v157;
          if (v157 == isa)
          {
            goto LABEL_69;
          }

          continue;
        }

LABEL_55:

        goto LABEL_61;
      }
    }

    break;
  }

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100012FFC(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for StatusType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v74 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v72 - v12;
  v14 = [a1 userDSID];
  if (v14)
  {
    v15 = v14;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = HIBYTE(v18) & 0xF;
    v20 = v16 & 0xFFFFFFFFFFFFLL;
    if ((v18 & 0x2000000000000000) != 0)
    {
      v21 = HIBYTE(v18) & 0xF;
    }

    else
    {
      v21 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (!v21)
    {

LABEL_72:
      static PeopleLogger.daemon.getter();

      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v75[0] = v61;
        *v60 = 136315138;
        v62 = v7;
        (*(v5 + 104))(v7, enum case for StatusType.childState(_:), v4);
        sub_100014CE8(&qword_100062708, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
        v63 = dispatch thunk of CustomStringConvertible.description.getter();
        v73 = v13;
        v64 = v63;
        v65 = v74;
        v66 = v4;
        v67 = v8;
        v69 = v68;
        (*(v5 + 8))(v62, v66);
        v70 = sub_10002580C(v64, v69, v75);

        *(v60 + 4) = v70;
        _os_log_impl(&_mh_execute_header, v58, v59, "%s no family member found", v60, 0xCu);
        sub_100003938(v61);

        (*(v65 + 8))(v73, v67);
      }

      else
      {

        (*(v74 + 8))(v13, v8);
      }

      return;
    }

    if ((v18 & 0x1000000000000000) != 0)
    {
      v76 = 0;
      v24 = sub_100013F50(v16, v18, 10);
      v53 = v71;
      goto LABEL_67;
    }

    if ((v18 & 0x2000000000000000) != 0)
    {
      v75[0] = v16;
      v75[1] = v18 & 0xFFFFFFFFFFFFFFLL;
      if (v16 == 43)
      {
        if (v19)
        {
          if (--v19)
          {
            v24 = 0;
            v45 = v75 + 1;
            while (1)
            {
              v46 = *v45 - 48;
              if (v46 > 9)
              {
                break;
              }

              v47 = 10 * v24;
              if ((v24 * 10) >> 64 != (10 * v24) >> 63)
              {
                break;
              }

              v24 = v47 + v46;
              if (__OFADD__(v47, v46))
              {
                break;
              }

              ++v45;
              if (!--v19)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_80:
        __break(1u);
        return;
      }

      if (v16 != 45)
      {
        if (v19)
        {
          v24 = 0;
          v50 = v75;
          while (1)
          {
            v51 = *v50 - 48;
            if (v51 > 9)
            {
              break;
            }

            v52 = 10 * v24;
            if ((v24 * 10) >> 64 != (10 * v24) >> 63)
            {
              break;
            }

            v24 = v52 + v51;
            if (__OFADD__(v52, v51))
            {
              break;
            }

            v50 = (v50 + 1);
            if (!--v19)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v19)
      {
        if (--v19)
        {
          v24 = 0;
          v39 = v75 + 1;
          while (1)
          {
            v40 = *v39 - 48;
            if (v40 > 9)
            {
              break;
            }

            v41 = 10 * v24;
            if ((v24 * 10) >> 64 != (10 * v24) >> 63)
            {
              break;
            }

            v24 = v41 - v40;
            if (__OFSUB__(v41, v40))
            {
              break;
            }

            ++v39;
            if (!--v19)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v16 & 0x1000000000000000) != 0)
      {
        v22 = ((v18 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v22 = _StringObject.sharedUTF8.getter();
      }

      v23 = *v22;
      if (v23 == 43)
      {
        if (v20 >= 1)
        {
          v19 = v20 - 1;
          if (v20 != 1)
          {
            v24 = 0;
            if (v22)
            {
              v42 = v22 + 1;
              while (1)
              {
                v43 = *v42 - 48;
                if (v43 > 9)
                {
                  goto LABEL_65;
                }

                v44 = 10 * v24;
                if ((v24 * 10) >> 64 != (10 * v24) >> 63)
                {
                  goto LABEL_65;
                }

                v24 = v44 + v43;
                if (__OFADD__(v44, v43))
                {
                  goto LABEL_65;
                }

                ++v42;
                if (!--v19)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_79;
      }

      if (v23 != 45)
      {
        if (v20)
        {
          v24 = 0;
          if (v22)
          {
            while (1)
            {
              v48 = *v22 - 48;
              if (v48 > 9)
              {
                goto LABEL_65;
              }

              v49 = 10 * v24;
              if ((v24 * 10) >> 64 != (10 * v24) >> 63)
              {
                goto LABEL_65;
              }

              v24 = v49 + v48;
              if (__OFADD__(v49, v48))
              {
                goto LABEL_65;
              }

              ++v22;
              if (!--v20)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v24 = 0;
        LOBYTE(v19) = 1;
        goto LABEL_66;
      }

      if (v20 >= 1)
      {
        v19 = v20 - 1;
        if (v20 != 1)
        {
          v24 = 0;
          if (v22)
          {
            v25 = v22 + 1;
            while (1)
            {
              v26 = *v25 - 48;
              if (v26 > 9)
              {
                goto LABEL_65;
              }

              v27 = 10 * v24;
              if ((v24 * 10) >> 64 != (10 * v24) >> 63)
              {
                goto LABEL_65;
              }

              v24 = v27 - v26;
              if (__OFSUB__(v27, v26))
              {
                goto LABEL_65;
              }

              ++v25;
              if (!--v19)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v19) = 0;
LABEL_66:
          v76 = v19;
          v53 = v19;
LABEL_67:

          if ((v53 & 1) == 0)
          {
            if (*(a2 + 16))
            {
              v54 = sub_100005F78(v24);
              if (v55)
              {
                v56 = *(*(a2 + 56) + 8 * v54);
                v57 = [v56 contactsIncludingImage:0];
                sub_100010734(0, &qword_100062C10, CNContact_ptr);
                static Array._unconditionallyBridgeFromObjectiveC(_:)();

                return;
              }
            }
          }

          goto LABEL_72;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  static PeopleLogger.daemon.getter();

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = v7;
    v32 = swift_slowAlloc();
    v75[0] = v32;
    *v30 = 136315138;
    (*(v5 + 104))(v31, enum case for StatusType.childState(_:), v4);
    sub_100014CE8(&qword_100062708, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v4;
    v35 = v74;
    v73 = v8;
    v37 = v36;
    (*(v5 + 8))(v31, v34);
    v38 = sub_10002580C(v33, v37, v75);

    *(v30 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v28, v29, "%s invalid dsid", v30, 0xCu);
    sub_100003938(v32);

    (*(v35 + 8))(v11, v73);
  }

  else
  {

    (*(v74 + 8))(v11, v8);
  }
}

uint64_t sub_100013824()
{
  sub_100007E10(v0 + 16);

  v1 = OBJC_IVAR____TtC7peopled22ChildStateStatusSource_ttl;
  v2 = sub_100005E30(&qword_100062A88, &qword_10004DBE0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100003938((v0 + OBJC_IVAR____TtC7peopled22ChildStateStatusSource_contactFetcher));
  sub_100003938((v0 + OBJC_IVAR____TtC7peopled22ChildStateStatusSource_downtimeClient));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ChildStateStatusSource(uint64_t a1)
{
  result = qword_100062AE0;
  if (!qword_100062AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100013960(uint64_t a1)
{
  sub_100013A1C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100013A1C(uint64_t a1)
{
  if (!qword_100063250)
  {
    sub_100010734(255, &qword_100062AF0, NSUnitDuration_ptr);
    v1 = type metadata accessor for Measurement();
    if (!v2)
    {
      atomic_store(v1, &qword_100063250);
    }
  }
}

uint64_t sub_100013A84@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for StatusType.childState(_:);
  v3 = type metadata accessor for StatusType();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_100013AF8(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_100013B3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return StatusSource.debugID.getter(a1, WitnessTable);
}

uint64_t sub_100013B90(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  sub_100005E30(&qword_100062700, &unk_10004D940);
  swift_allocObject();

  return Promise.init(startBlock:)();
}

uint64_t sub_100013C50(uint64_t a1)
{
  result = sub_100014CE8(&qword_100062BF8, type metadata accessor for ChildStateStatusSource, &unk_10004DD20);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100013CF0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100013D38()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100013D70()
{

  return _swift_deallocObject(v0, 48, 7);
}

void *sub_100013DD0(uint64_t a1, uint64_t a2)
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

  sub_100005E30(&qword_100062930, &qword_10004DB40);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_100013E54(uint64_t a1, uint64_t a2)
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

  sub_100005E30(&qword_100062C08, &unk_10004DDE0);
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

void *sub_100013EDC(uint64_t a1, uint64_t a2)
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

  sub_100005E30(&qword_100062C18, &unk_10004DDF0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_100013F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1000144DC(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1000144DC(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = sub_10001455C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_10001455C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_100013EDC(v9, 0), v12 = sub_1000146B4(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_1000146B4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1000148D4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1000148D4(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1000148D4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void *sub_100014950(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100014AA4(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t sub_100014AB8(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void *sub_100014AC4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100014C1C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100014C2C(uint64_t a1)
{
  v2 = sub_100005E30(&qword_100062758, &unk_10004E8A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100014C94()
{
  result = qword_100062C20;
  if (!qword_100062C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062C20);
  }

  return result;
}

uint64_t sub_100014CE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100014D30()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100014D84()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100014DFC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100014E34()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100007CBC;

  return sub_100011800();
}

uint64_t sub_100014EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100005E30(&qword_100062A80, &qword_10004ED60);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10001E738(a3, v25 - v10, &qword_100062A80, &qword_10004ED60);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100007DB0(v11, &qword_100062A80, &qword_10004ED60);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100007DB0(a3, &qword_100062A80, &qword_10004ED60);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100007DB0(a3, &qword_100062A80, &qword_10004ED60);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1000151E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100005E30(&qword_100062A80, &qword_10004ED60);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10001E738(a3, v25 - v10, &qword_100062A80, &qword_10004ED60);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100007DB0(v11, &qword_100062A80, &qword_10004ED60);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_100005E30(&unk_100062DB0, &qword_10004E010);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_100007DB0(a3, &qword_100062A80, &qword_10004ED60);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100007DB0(a3, &qword_100062A80, &qword_10004ED60);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_100005E30(&unk_100062DB0, &qword_10004E010);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void (*sub_1000154F8(void (*result)(void *), uint64_t a2, uint64_t a3))(void *)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 40); ; i += 2)
    {
      v7 = *i;
      v8[0] = *(i - 1);
      v8[1] = v7;

      v5(v8);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

void sub_1000155A4(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_1000156A4()
{
  if (*(v0 + OBJC_IVAR____TtC7peopled20AskToBuyStatusSource_listener))
  {
    _print_unlocked<A, B>(_:_:)();
    v2 = 0;
    v1 = 0xE000000000000000;
  }

  else
  {
    v1 = 0xE300000000000000;
    v2 = 4271950;
  }

  _StringGuts.grow(_:)(49);
  v3._object = 0x8000000100050780;
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  String.append(_:)(v3);
  _print_unlocked<A, B>(_:_:)();
  v4._countAndFlagsBits = 0x6E657473696C0A2CLL;
  v4._object = 0xEC000000203A7265;
  String.append(_:)(v4);
  v5._countAndFlagsBits = v2;
  v5._object = v1;
  String.append(_:)(v5);

  v6._countAndFlagsBits = 10506;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  return 0;
}

uint64_t sub_1000157DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  type metadata accessor for PeopleBiomeEventIndexer();
  v11 = swift_allocObject();
  *(v11 + 16) = a6;
  *(v11 + 24) = a4;
  *(v11 + 32) = sub_10000D1F8;
  *(v11 + 40) = v10;

  static PeopleBiomeEventIndexer.indexEvent(askToBuyEvent:withContactFetcher:withIndexer:completion:)();
}

uint64_t sub_1000158E4(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v64 = a6;
  v65 = a5;
  v61 = type metadata accessor for StatusType();
  v10 = *(v61 - 8);
  __chkstk_darwin(v61);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v62 = *(v13 - 8);
  v63 = v13;
  v14 = __chkstk_darwin(v13);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v59 - v18;
  __chkstk_darwin(v17);
  v21 = &v59 - v20;
  v22 = sub_100005E30(&qword_100062A80, &qword_10004ED60);
  __chkstk_darwin(v22 - 8);
  v24 = &v59 - v23;
  if ((a2 & 1) == 0)
  {
    v60 = *(a1 + 16);
    if (v60)
    {
      if (a3)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          sub_10001D5A0(a4, a1, Strong, sub_1000156A4, &unk_10005E048, sub_10001E85C, &enum case for StatusType.askToBuyRequest(_:));
          swift_unknownObjectRelease();
        }

        v39 = type metadata accessor for TaskPriority();
        (*(*(v39 - 8) + 56))(v24, 1, 1, v39);
        v40 = swift_allocObject();
        *(v40 + 16) = 0;
        *(v40 + 24) = 0;
        sub_100014EE4(0, 0, v24, &unk_10004DFC8, v40);
      }

      static PeopleLogger.daemon.getter();

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v66 = v44;
        *v43 = 136315138;
        v45 = v61;
        (*(v10 + 104))(v12, enum case for StatusType.askToBuyRequest(_:), v61);
        sub_10001764C(&qword_100062708, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
        v46 = dispatch thunk of CustomStringConvertible.description.getter();
        v48 = v47;
        (*(v10 + 8))(v12, v45);
        v49 = sub_10002580C(v46, v48, &v66);

        *(v43 + 4) = v49;
        _os_log_impl(&_mh_execute_header, v41, v42, "%s event consume complete", v43, 0xCu);
        sub_100003938(v44);

        (*(v62 + 8))(v21, v63);
LABEL_18:
        type metadata accessor for PeopleAnalytics();
        (*(v10 + 104))(v12, enum case for StatusType.askToBuyRequest(_:), v45);
        static PeopleAnalytics.eventReceived(foundContacts:statusType:)();
        (*(v10 + 8))(v12, v45);
        v36 = 0;
        v37 = 0;
        return v65(v36, v37);
      }

      (*(v62 + 8))(v21, v63);
    }

    else
    {
      static PeopleLogger.daemon.getter();

      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v66 = v53;
        *v52 = 136315138;
        v45 = v61;
        (*(v10 + 104))(v12, enum case for StatusType.askToBuyRequest(_:), v61);
        sub_10001764C(&qword_100062708, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
        v54 = dispatch thunk of CustomStringConvertible.description.getter();
        v56 = v55;
        (*(v10 + 8))(v12, v45);
        v57 = sub_10002580C(v54, v56, &v66);

        *(v52 + 4) = v57;
        _os_log_impl(&_mh_execute_header, v50, v51, "%s event consume complete w/o local contact", v52, 0xCu);
        sub_100003938(v53);

        (*(v62 + 8))(v19, v63);
        goto LABEL_18;
      }

      (*(v62 + 8))(v19, v63);
    }

    v45 = v61;
    goto LABEL_18;
  }

  static PeopleLogger.daemon.getter();

  sub_100014AA4(a1, 1);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  sub_100014AB8(a1, 1);
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v66 = v60;
    *v27 = 136315394;
    v28 = v61;
    (*(v10 + 104))(v12, enum case for StatusType.askToBuyRequest(_:), v61);
    sub_10001764C(&qword_100062708, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    (*(v10 + 8))(v12, v28);
    v32 = sub_10002580C(v29, v31, &v66);

    *(v27 + 4) = v32;
    *(v27 + 12) = 2080;
    swift_getErrorValue();
    v33 = Error.localizedDescription.getter();
    v35 = sub_10002580C(v33, v34, &v66);

    *(v27 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v25, v26, "%s consume error: %s", v27, 0x16u);
    swift_arrayDestroy();
  }

  (*(v62 + 8))(v16, v63);
  v36 = a1;
  v37 = 1;
  return v65(v36, v37);
}

uint64_t sub_10001616C()
{
  v1 = type metadata accessor for StatusType();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_100016228, 0, 0);
}

uint64_t sub_100016228()
{
  (*(v0[3] + 104))(v0[4], enum case for StatusType.askToBuyRequest(_:), v0[2]);
  type metadata accessor for MainActor();
  v0[5] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100004810, v2, v1);
}

uint64_t sub_1000162E0(void *a1, uint64_t a2)
{
  sub_1000077E8(a2 + OBJC_IVAR____TtC7peopled20AskToBuyStatusSource_indexer, v7);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_10000784C(v7, v4 + 32);
  *(v4 + 72) = 1;
  sub_100005E30(&qword_100062750, &qword_10004D990);
  swift_allocObject();
  v5 = a1;

  return Promise.init(startBlock:)();
}

uint64_t sub_1000163A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v51 = a1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v49 = v5;
  v50 = v6;
  __chkstk_darwin(v5);
  v53 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005E30(&qword_100062A88, &qword_10004DBE0);
  v52 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v44 - v9;
  v11 = type metadata accessor for StatusType();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v45 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v44 - v16;
  __chkstk_darwin(v15);
  v19 = &v44 - v18;
  v20 = enum case for StatusType.askToBuyRequest(_:);
  v21 = *(v12 + 104);
  v21(&v44 - v18, enum case for StatusType.askToBuyRequest(_:), v11);
  sub_1000077E8(v4 + OBJC_IVAR____TtC7peopled20AskToBuyStatusSource_contactFetcher, v56);
  v21(v17, v20, v11);
  v22 = [objc_opt_self() askToBuyStream];
  v23 = sub_100005E30(&qword_100062D28, &qword_10004DF80);
  swift_allocObject();
  v24 = BiomeStreamReader.init(statusType:readerStream:)();
  v25 = *(v52 + 16);
  v25(v10, v4 + OBJC_IVAR____TtC7peopled20AskToBuyStatusSource_ttl, v8);
  sub_100005E30(&qword_100062D30, &unk_10004DF88);
  v26 = swift_allocObject();
  v55[3] = v23;
  v55[4] = sub_100017694();
  v55[0] = v24;
  v46 = v12;
  v27 = v12;
  v28 = v45;
  v29 = *(v27 + 16);
  v29(v26 + qword_100065530, v19, v11);
  sub_1000077E8(v56, v26 + qword_100065538);
  v47 = v10;
  v48 = v8;
  v25((v26 + qword_100065540), v10, v8);
  sub_1000077E8(v55, v26 + qword_100065548);
  static PeopleLogger.daemon.getter();
  v44 = v19;
  v29(v28, v19, v11);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v54 = v33;
    *v32 = 136315138;
    sub_10001764C(&qword_100062708, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v28;
    v37 = v36;
    v38 = *(v46 + 8);
    v38(v35, v11);
    v39 = sub_10002580C(v34, v37, &v54);

    *(v32 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v30, v31, "FamilyStatusEventProcessor for %s init", v32, 0xCu);
    sub_100003938(v33);

    (*(v52 + 8))(v47, v48);
    sub_100003938(v56);
    v38(v44, v11);
  }

  else
  {

    (*(v52 + 8))(v47, v48);
    sub_100003938(v56);
    v40 = *(v46 + 8);
    v40(v44, v11);
    v40(v28, v11);
  }

  (*(v50 + 8))(v53, v49);
  sub_100003938(v55);
  v41 = swift_allocObject();
  v42 = v51;
  *(v41 + 16) = v26;
  *(v41 + 24) = v42;
  sub_100005E30(&qword_100062700, &unk_10004D940);
  swift_allocObject();

  return Promise.init(startBlock:)();
}

uint64_t sub_1000169AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  sub_10001E3F0(v8);

  sub_100005E78((a3 + qword_100065538), *(a3 + qword_100065538 + 24));
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = sub_100014D78;
  v9[4] = v7;

  dispatch thunk of FamilyMemberContactFetching.familyWithDSIDs(completion:)();
}

uint64_t sub_100016AC8()
{
  sub_100007E10(v0 + 16);
  v1 = OBJC_IVAR____TtC7peopled20AskToBuyStatusSource_ttl;
  v2 = sub_100005E30(&qword_100062A88, &qword_10004DBE0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_100003938((v0 + OBJC_IVAR____TtC7peopled20AskToBuyStatusSource_indexer));
  sub_100003938((v0 + OBJC_IVAR____TtC7peopled20AskToBuyStatusSource_contactFetcher));
  sub_100003938((v0 + OBJC_IVAR____TtC7peopled20AskToBuyStatusSource_messageConduit));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AskToBuyStatusSource(uint64_t a1)
{
  result = qword_100062C60;
  if (!qword_100062C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100016C1C(uint64_t a1)
{
  sub_100013A1C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100016CDC@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for StatusType.askToBuyRequest(_:);
  v3 = type metadata accessor for StatusType();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_100016D50(uint64_t a1)
{
  v2 = sub_10001764C(&qword_100062978, type metadata accessor for AskToBuyStatusSource, &unk_10004DF44);

  return StatusSource.debugID.getter(a1, v2);
}

uint64_t sub_100016DE0(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = type metadata accessor for StatusType();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return _swift_task_switch(sub_100016EB0, 0, 0);
}

void sub_100016EB0()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = enum case for StatusType.askToBuyRequest(_:);
  v7 = *(v0[11] + 104);
  v7(v0[13], enum case for StatusType.askToBuyRequest(_:), v2);
  v17 = swift_allocObject();
  v0[14] = v17;
  *(v17 + 16) = v5;
  v8 = swift_allocObject();
  v0[15] = v8;
  *(v8 + 16) = v4;
  *(v8 + 24) = v3;
  v7(v1, v6, v2);
  v9 = objc_opt_self();

  v10 = [v9 askToBuyStream];
  v11 = sub_100005E30(&qword_100062D28, &qword_10004DF80);
  swift_allocObject();
  v12 = BiomeStreamReader.init(statusType:readerStream:)();
  v0[5] = v11;
  v13 = sub_100017694();
  v0[2] = v12;
  v0[6] = v13;
  v15 = &async function pointer to dispatch thunk of ReindexCoordinator.reindex<A>(statusType:squashEvents:includeEvent:handleEvent:withReader:) + async function pointer to dispatch thunk of ReindexCoordinator.reindex<A>(statusType:squashEvents:includeEvent:handleEvent:withReader:);
  v14 = swift_task_alloc();
  v0[16] = v14;
  sub_100010734(0, &qword_100062D40, BMAskToBuyEvent_ptr);
  *v14 = v0;
  v14[1] = sub_10001710C;

  __asm { BR              X8 }
}

uint64_t sub_10001710C()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);
  sub_100003938((v1 + 16));

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1000172D0(uint64_t a1)
{
  v2 = sub_100010734(0, &qword_100062D40, BMAskToBuyEvent_ptr);

  return static BMStoreDataPeople.squashRequestEvents<A>(_:)(a1, v2);
}

uint64_t sub_100017320(void *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v3 = [a1 requestID];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v11[0] = v4;
    v11[1] = v6;
    __chkstk_darwin(v7);
    v10[2] = v11;
    v8 = sub_10001B0D0(sub_100010600, v10, a2);
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

uint64_t sub_1000173EC(void *a1, uint64_t a2)
{
  v4 = ReindexCoordinator.indexer.getter();
  v10[3] = type metadata accessor for SpotlightIndexer();
  v10[4] = &protocol witness table for SpotlightIndexer;
  v10[0] = v4;
  sub_1000077E8(v10, v9);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_10000784C(v9, v5 + 32);
  *(v5 + 72) = 0;
  sub_100005E30(&qword_100062750, &qword_10004D990);
  swift_allocObject();
  v6 = a1;

  v7 = Promise.init(startBlock:)();
  sub_100003938(v10);
  return v7;
}

uint64_t sub_100017504(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100007CBC;

  return sub_100016DE0(a1, a2);
}

uint64_t sub_1000175AC(uint64_t a1)
{
  result = sub_10001764C(&qword_100062D18, type metadata accessor for AskToBuyStatusSource, &unk_10004DEC0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10001764C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100017694()
{
  result = qword_100062D38;
  if (!qword_100062D38)
  {
    sub_100010594(&qword_100062D28, &qword_10004DF80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062D38);
  }

  return result;
}

void sub_100017718(uint64_t a1, void (*a2)(id, uint64_t), uint64_t a3)
{
  v4 = v3;
  if (*(a1 + 16))
  {
    sub_100005E78((v4 + qword_100065548), *(v4 + qword_100065548 + 24));
    v8 = swift_allocObject();
    v8[2] = v4;
    v8[3] = a1;
    v8[4] = a2;
    v8[5] = a3;

    dispatch thunk of EventCollectorProtocol.collectEvents(statusType:maxAge:completion:)();
  }

  else
  {
    _StringGuts.grow(_:)(20);
    type metadata accessor for StatusType();
    sub_10001764C(&qword_100062708, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
    dispatch thunk of CustomStringConvertible.description.getter();

    v9._object = 0x8000000100050700;
    v9._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v9);
    v10 = static PeopleErrors.createError(_:code:)();

    a2(v10, 1);
  }
}

void sub_100017934(uint64_t a1, void (*a2)(id, uint64_t), uint64_t a3)
{
  v4 = v3;
  if (*(a1 + 16))
  {
    sub_100005E78((v4 + qword_100065548), *(v4 + qword_100065548 + 24));
    v8 = swift_allocObject();
    v8[2] = v4;
    v8[3] = a1;
    v8[4] = a2;
    v8[5] = a3;

    dispatch thunk of EventCollectorProtocol.collectEvents(statusType:maxAge:completion:)();
  }

  else
  {
    _StringGuts.grow(_:)(20);

    type metadata accessor for StatusType();
    sub_10001764C(&qword_100062708, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
    dispatch thunk of CustomStringConvertible.description.getter();
    v9._object = 0x8000000100050700;
    v9._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v9);
    v10 = static PeopleErrors.createError(_:code:)();

    a2(v10, 1);
  }
}

uint64_t sub_100017B44(unint64_t a1, unint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v59 = a3;
  v58 = 0;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100018924(a1, BMAskToBuyEvent_ptr);
  if (!v13)
  {
    static PeopleLogger.daemon.getter();

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v72[0] = v50;
      *v49 = 136315138;
      type metadata accessor for StatusType();
      sub_10001764C(&qword_100062708, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;

      v54 = sub_10002580C(v51, v53, v72);

      *(v49 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v47, v48, "%s event type array not [EventType]!", v49, 0xCu);
      sub_100003938(v50);
    }

    else
    {
    }

    return (*(v10 + 8))(v12, v9);
  }

  v14 = v13;
  v15 = v13 & 0xFFFFFFFFFFFFFF8;
  if (v13 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v55 = a5;
    v56 = a4;
    v57 = a2;
    v17 = &_swiftEmptyDictionarySingleton;
    if (i)
    {
      a2 = 0;
      v62 = v14;
      v63 = v14 & 0xC000000000000001;
      v61 = v15;
      v60 = i;
      do
      {
        if (v63)
        {
          v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a2 >= *(v15 + 16))
          {
            goto LABEL_41;
          }

          v18 = *(v14 + 8 * a2 + 32);
        }

        v19 = v18;
        if (__OFADD__(a2, 1))
        {
          goto LABEL_40;
        }

        v64 = a2 + 1;
        v15 = sub_100010734(0, &qword_100062D40, BMAskToBuyEvent_ptr);
        v72[3] = v15;
        v72[4] = &protocol witness table for BMAskToBuyEvent;
        v72[0] = v19;
        sub_100005E78(v72, v15);
        a5 = v19;
        v20 = BMAskToBuyEvent.requestId.getter();
        v22 = v21;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v70 = &protocol witness table for BMAskToBuyEvent;
        v71 = v17;
        v69 = v15;
        *&v68 = a5;
        v14 = a5;
        a4 = v17;
        v25 = sub_100005EBC(v20, v22);
        v26 = v17[2];
        v27 = (v24 & 1) == 0;
        v28 = v26 + v27;
        if (__OFADD__(v26, v27))
        {
          goto LABEL_42;
        }

        a5 = v24;
        if (v17[3] >= v28)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v17 = v71;
            if (v24)
            {
              goto LABEL_6;
            }
          }

          else
          {
            sub_100006EF4();
            v17 = v71;
            if (a5)
            {
              goto LABEL_6;
            }
          }
        }

        else
        {
          sub_100006474(v28, isUniquelyReferenced_nonNull_native);
          v29 = sub_100005EBC(v20, v22);
          if ((a5 & 1) != (v30 & 1))
          {
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            goto LABEL_46;
          }

          v25 = v29;
          v17 = v71;
          if (a5)
          {
LABEL_6:
            a4 = (v17[7] + 40 * v25);
            sub_100003938(a4);
            sub_10000784C(&v68, a4);

            goto LABEL_7;
          }
        }

        a4 = v69;
        v31 = sub_1000106B4(&v68, v69);
        __chkstk_darwin(v31);
        a5 = (&v55 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v33 + 16))(a5);
        v34 = *a5;
        v66 = v15;
        v67 = &protocol witness table for BMAskToBuyEvent;
        *&v65 = v34;
        v17[(v25 >> 6) + 8] |= 1 << v25;
        v35 = (v17[6] + 16 * v25);
        *v35 = v20;
        v35[1] = v22;
        sub_10000784C(&v65, v17[7] + 40 * v25);
        v36 = v17[2];
        v37 = __OFADD__(v36, 1);
        v38 = v36 + 1;
        if (v37)
        {
          goto LABEL_43;
        }

        v17[2] = v38;
        sub_100003938(&v68);
LABEL_7:
        sub_100003938(v72);

        ++a2;
        v15 = v61;
        v14 = v62;
      }

      while (v64 != v60);
    }

    *&v68 = &_swiftEmptyDictionarySingleton;
    v39 = 1 << *(v17 + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v41 = v40 & v17[8];
    a4 = ((v39 + 63) >> 6);

    v42 = 0;
    v15 = 40;
    v43 = v57;
    v44 = v59;
    a5 = v58;
    if (v41)
    {
      break;
    }

LABEL_28:
    while (1)
    {
      v14 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v14 >= a4)
      {

        v45 = v68;
        type metadata accessor for PeopleAnalytics();
        static PeopleAnalytics.eventsCollected(statusType:eventCount:)();
        (v56)(v45, 0);
      }

      v41 = v17[v14 + 8];
      ++v42;
      if (v41)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

  while (1)
  {
    v14 = v42;
LABEL_31:
    sub_1000077E8(v17[7] + 40 * (__clz(__rbit64(v41)) | (v14 << 6)), v72);
    sub_100018A98(&v68, v72, v43, v44);
    if (a5)
    {
      break;
    }

    v41 &= v41 - 1;
    sub_100003938(v72);
    v42 = v14;
    if (!v41)
    {
      goto LABEL_28;
    }
  }

LABEL_46:

  sub_100003938(v72);

  __break(1u);
  return result;
}