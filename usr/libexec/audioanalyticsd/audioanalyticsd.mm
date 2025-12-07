uint64_t sub_1000016B8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1000016FC(uint64_t a1, double a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24[2] = *(Strong + OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue);
    v25 = Strong;
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    v24[1] = v16;
    *(v17 + 24) = a2;
    aBlock[4] = sub_1000024B8;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000016B8;
    aBlock[3] = &unk_1000420B0;
    v18 = _Block_copy(aBlock);
    v24[0] = v7;
    v19 = v18;

    static DispatchQoS.unspecified.getter();
    v26 = &_swiftEmptyArrayStorage;
    sub_100001CA8(&qword_100045460, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10001712C(&unk_100045920, &qword_100035FC0);
    sub_100001C18(&qword_100045468, &unk_100045920, &qword_100035FC0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v24[0]);

    v20 = v25;
    sub_100001D38(a2);
  }

  else
  {
    static Logger.service.getter();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Server is gone. { action=osTransactionTimeout }", v23, 2u);
    }

    (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_100001B70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100001B80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100001B90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100001BA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100001BB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100001BC4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000171D8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100001C18(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000171D8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100001C60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100001CA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100001CF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100001D38(double a1)
{
  v23 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v23 - 8);
  __chkstk_darwin(v23);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTime();
  v21 = v7;
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v19 - v12;
  v19 = *(v1 + OBJC_IVAR____TtC15audioanalyticsd6Server_clientConnectionMonitorQueue);
  static DispatchTime.now()();
  + infix(_:_:)();
  v20 = *(v8 + 8);
  v20(v11, v7);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a1;
  aBlock[4] = sub_100001B64;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000016B8;
  aBlock[3] = &unk_100042060;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v26 = &_swiftEmptyArrayStorage;
  sub_100001CA8(&qword_100045460, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10001712C(&unk_100045920, &qword_100035FC0);
  sub_100001C18(&qword_100045468, &unk_100045920, &qword_100035FC0, &protocol conformance descriptor for [A]);
  v17 = v23;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v16);
  (*(v25 + 8))(v4, v17);
  (*(v22 + 8))(v6, v24);
  v20(v13, v21);
}

uint64_t sub_100002144()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000217C()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000021E4(uint64_t a1, double a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    type metadata accessor for OsTransactionHandler();
    static OsTransactionHandler.shared.getter();
    v9 = OsTransactionHandler.inactive()();

    if (!v9)
    {
      swift_beginAccess();

      v11 = sub_10001F2DC(v10);

      v12 = v11[2];
      if (v12)
      {
        v13 = *(v11 + 4);
        v14 = v12 - 1;
        if (v14)
        {
          v15 = (v11 + 5);
          do
          {
            v16 = *v15++;
            v17 = v16;
            if (v13 < v16)
            {
              v13 = v17;
            }

            --v14;
          }

          while (v14);
        }

        v18 = v13 + a2;
        static Double.now()();
        if (v19 < v18)
        {
          v20 = Logger.logObject.getter();
          v21 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            *v22 = 134283521;
            static Double.now()();
            *(v22 + 4) = v18 - v23;
            _os_log_impl(&_mh_execute_header, v20, v21, "osTransaction timeout. { seconds=%{private}f }", v22, 0xCu);
          }

          return;
        }
      }

      else
      {
      }

      static OsTransactionHandler.shared.getter();
      OsTransactionHandler.expire()();
    }

    return;
  }

  static Logger.service.getter();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Server is gone. { action=osTransactionTimeout }", v26, 2u);
  }

  (*(v4 + 8))(v6, v3);
}

uint64_t sub_10000252C(void *a1)
{
  v33 = [a1 processIdentifier];
  [a1 processIdentifier];
  v3 = static Utilities.processName(for:)();
  if (!v4)
  {
    v3 = static Constants.unknown.getter();
  }

  v5 = v3;
  v6 = v4;
  v7 = [a1 processIdentifier];
  v8 = *&v1[OBJC_IVAR____TtC15audioanalyticsd6Server_config];
  type metadata accessor for ClientServerInstance(0);
  v9 = swift_allocObject();

  v10 = v1;
  v11 = sub_100002BD0(v7, v5, v6, v8, v10, v9);
  v12 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP15audioanalyticsd14ServerProtocol_];
  [a1 setExportedInterface:v12];

  [a1 setExportedObject:v11];
  v13 = *&v10[OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue];
  v14 = swift_allocObject();
  v14[2] = v10;
  v14[3] = v11;
  v14[4] = a1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1000045F8;
  *(v15 + 24) = v14;
  v38 = sub_100002EE0;
  v39 = v15;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_100002EB0;
  v37 = &unk_100041D40;
  v16 = v5;
  v17 = _Block_copy(&aBlock);
  v10;

  v18 = a1;

  dispatch_sync(v13, v17);
  _Block_release(v17);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  else
  {
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = v33;
    *(v21 + 32) = v16;
    *(v21 + 40) = v6;
    *(v21 + 48) = v11;
    v38 = sub_100027930;
    v39 = v21;
    aBlock = _NSConcreteStackBlock;
    v35 = 1107296256;
    v36 = sub_1000016B8;
    v37 = &unk_100041DB8;
    v22 = _Block_copy(&aBlock);

    [v18 setInterruptionHandler:v22];
    _Block_release(v22);
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *(v24 + 24) = v11;
    *(v24 + 32) = v18;
    *(v24 + 40) = v16;
    *(v24 + 48) = v6;
    *(v24 + 56) = v33;
    v38 = sub_100027944;
    v39 = v24;
    aBlock = _NSConcreteStackBlock;
    v35 = 1107296256;
    v36 = sub_1000016B8;
    v37 = &unk_100041E08;
    v25 = _Block_copy(&aBlock);

    v26 = v18;

    [v26 setInvalidationHandler:v25];
    _Block_release(v25);

    v27 = v26;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      aBlock = v31;
      *v30 = 67174915;
      *(v30 + 4) = [v27 processIdentifier];

      *(v30 + 8) = 2081;
      v32 = sub_100013120(v16, v6, &aBlock);

      *(v30 + 10) = v32;
      _os_log_impl(&_mh_execute_header, v28, v29, "New connection. { pid=%{private}d, clientProcessName=%{private}s }", v30, 0x12u);
      sub_10000AE7C(v31);
    }

    else
    {
    }

    [v27 activate];

    return 1;
  }

  return result;
}

uint64_t sub_100002AA0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100002AE8()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100002B30()
{

  return _swift_deallocObject(v0, 60, 7);
}

uint64_t type metadata accessor for ClientServerInstance(uint64_t a1)
{
  result = qword_1000454C0;
  if (!qword_1000454C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_100002BD0(int a1, char *a2, char *a3, uint64_t a4, void *a5, char *a6)
{
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.service.getter();
  *&a6[OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_sessionsByReporterID] = &_swiftEmptyDictionarySingleton;
  v16 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation;
  static Double.now()();
  *&a6[v16] = v17;
  *&a6[OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid] = a1;
  *(a6 + 3) = a2;
  *(a6 + 4) = a3;
  v18 = &a6[OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_server];
  *v18 = a5;
  *(v18 + 1) = &off_100041CC8;
  *(a6 + 2) = a4;

  v19 = a5;

  Date.init()();
  (*(v13 + 32))(&a6[OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_clientStartDate], v15, v12);
  swift_retain_n();

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v28 = v23;
    *v22 = 136380931;
    v24 = sub_100013120(a2, a3, &v28);

    *(v22 + 4) = v24;
    *(v22 + 12) = 1024;
    v25 = *&a6[OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid];

    *(v22 + 14) = v25;

    _os_log_impl(&_mh_execute_header, v20, v21, "ClientServerInstance created. { processName=%{private}s, pid=%d", v22, 0x12u);
    sub_10000AE7C(v23);
  }

  else
  {
  }

  return a6;
}

void sub_100002F08(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();

  sub_100004604(&v5, a2);
  swift_endAccess();

  swift_beginAccess();
  sub_100004A1C(&v5, a3);
  swift_endAccess();
}

uint64_t sub_100002FC4(uint64_t a1)
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v39 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10001712C(&qword_100045DF0, &qword_100036660);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v34 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    v38 = v2;
    v19 = OBJC_IVAR____TtC15audioanalyticsd7Session_stopSignalTime;
    swift_beginAccess();
    sub_10000C454(v18 + v19, v12, &qword_100045DF0, &qword_100036660);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {

      return sub_100006CC8(v12, &qword_100045DF0, &qword_100036660);
    }

    else
    {
      (*(v14 + 32))(v16, v12, v13);
      Date.timeIntervalSinceNow.getter();
      v21 = fabs(v20);
      v22 = *(v18 + OBJC_IVAR____TtC15audioanalyticsd7Session_stopWaitTime);

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();
      v25 = os_log_type_enabled(v23, v24);
      v37 = v1;
      if (v21 <= v22)
      {
        if (v25)
        {
          v27 = swift_slowAlloc();
          *v27 = 134218240;
          *(v27 + 4) = v22 - v21;
          *(v27 + 12) = 2048;
          *(v27 + 14) = *(v18 + 16);

          _os_log_impl(&_mh_execute_header, v23, v24, "Not stopping session from timer. { remainingTime=%f, reporterID=%lld }", v27, 0x16u);
        }

        else
        {
        }

        v36 = *(v18 + OBJC_IVAR____TtC15audioanalyticsd7Session_workQueue);
        v47 = sub_10002E7B8;
        v48 = v18;
        aBlock = _NSConcreteStackBlock;
        v44 = 1107296256;
        v45 = sub_1000016B8;
        v46 = &unk_100042448;
        v35 = _Block_copy(&aBlock);

        static DispatchQoS.unspecified.getter();
        v42 = &_swiftEmptyArrayStorage;
        sub_100001CF0(&qword_100045460, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10001712C(&unk_100045920, &qword_100035FC0);
        sub_100001BC4(&qword_100045468, &unk_100045920, &qword_100035FC0);
        v31 = v39;
        v32 = v37;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v33 = v35;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v33);
        (*(v38 + 8))(v31, v32);
      }

      else
      {
        if (v25)
        {
          v26 = swift_slowAlloc();
          *v26 = 134217984;
          *(v26 + 4) = *(v18 + 16);

          _os_log_impl(&_mh_execute_header, v23, v24, "Calling stop on session from timer. { reporterID=%lld }", v26, 0xCu);
        }

        else
        {
        }

        (*(v14 + 56))(v10, 1, 1, v13);
        swift_beginAccess();
        sub_10000C27C(v10, v18 + v19, &qword_100045DF0, &qword_100036660);
        swift_endAccess();
        v36 = *(v18 + OBJC_IVAR____TtC15audioanalyticsd7Session_workQueue);
        v47 = sub_100014A30;
        v48 = v18;
        aBlock = _NSConcreteStackBlock;
        v44 = 1107296256;
        v45 = sub_1000016B8;
        v46 = &unk_100042470;
        v28 = _Block_copy(&aBlock);

        static DispatchQoS.unspecified.getter();
        v42 = &_swiftEmptyArrayStorage;
        sub_100001CF0(&qword_100045460, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10001712C(&unk_100045920, &qword_100035FC0);
        sub_100001BC4(&qword_100045468, &unk_100045920, &qword_100035FC0);
        v29 = v39;
        v30 = v37;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v28);
        (*(v38 + 8))(v29, v30);
      }

      (*(v40 + 8))(v6, v41);
      (*(v14 + 8))(v16, v13);
    }
  }

  return result;
}

uint64_t sub_1000037B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  sub_100003820(a3, a4, a5, a6);
}

uint64_t sub_100003820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v21 = *(v12 - 8);
  v22 = v12;
  __chkstk_darwin(v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*(v7 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_server) + OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000016B8;
  aBlock[3] = a4;
  v18 = _Block_copy(aBlock);
  v19 = v15;

  static DispatchQoS.unspecified.getter();
  v24 = &_swiftEmptyArrayStorage;
  sub_100001C60(&qword_100045460, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10001712C(&unk_100045920, &qword_100035FC0);
  sub_100001BC4(&qword_100045468, &unk_100045920, &qword_100035FC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v23 + 8))(v11, v9);
  (*(v21 + 8))(v14, v22);
}

uint64_t sub_100003B24(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = a2;
      _os_log_impl(&_mh_execute_header, v9, v10, "startSession() called. { reporterID=%lld }", v11, 0xCu);
    }

    static Double.now()();
    if (*(v8 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation) > v12)
    {
      v12 = *(v8 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation);
    }

    *(v8 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation) = v12 + 5.0;
    if (sub_100003D80(a2, 0, 0x7472617473, 0xE500000000000000))
    {
      sub_100004484();
    }
  }

  else
  {
    static Logger.service.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "ClientServerInstance is gone. { action=startSession }", v16, 2u);
    }

    return (*(v4 + 8))(v6, v3);
  }
}

void *sub_100003D80(uint64_t a1, int a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v55 = a4;
  v53 = a3;
  v56 = a2;
  v58 = a1;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue;
  v54 = *(v4 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_server);
  v11 = *(v54 + OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue);
  *v9 = v11;
  v12 = enum case for DispatchPredicate.onQueue(_:);
  v13 = *(v7 + 104);
  v13(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v14 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  v15 = *(v7 + 8);
  result = v15(v9, v6);
  if ((v11 & 1) == 0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v17 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_sessionsByReporterID;
  swift_beginAccess();
  v57 = v5;
  v18 = *(v5 + v17);
  if (*(v18 + 16))
  {
    v19 = sub_1000043D4(v58);
    if (v20)
    {
      v21 = *(*(v18 + 56) + 8 * v19);
      swift_endAccess();

      return v21;
    }
  }

  swift_endAccess();
  if (v56)
  {
LABEL_20:
    v43 = v55;

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v59 = v47;
      *v46 = 134218243;
      *(v46 + 4) = v58;
      *(v46 + 12) = 2081;
      *(v46 + 14) = sub_100013120(v53, v43, &v59);
      _os_log_impl(&_mh_execute_header, v44, v45, "Session not found. { reporterID=%lld, action=%{private}s }", v46, 0x16u);
      sub_10000AE7C(v47);
    }

    return 0;
  }

  v22 = v54;
  v23 = *(v54 + v10);
  *v9 = v23;
  v13(v9, v12, v6);
  v24 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  result = v15(v9, v6);
  if ((v23 & 1) == 0)
  {
    goto LABEL_34;
  }

  v25 = OBJC_IVAR____TtC15audioanalyticsd6Server_clientServerInstances;
  swift_beginAccess();
  v26 = *(v22 + v25);

  result = sub_10001B390(v26, sub_10001B388);
  v59 = result;
  v60 = v27;
  v61 = v28 & 1;
  v29 = v26 & 0xC000000000000001;
  if ((v26 & 0xC000000000000001) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  result = __CocoaSet.endIndex.getter();
  if ((v61 & 1) == 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v31 = result;
  v32 = v30;
  v34 = v59;
  v33 = v60;
  v35 = static __CocoaSet.Index.== infix(_:_:)();
  sub_100007BDC(v31, v32, 1);
  if (v35)
  {
LABEL_18:
    v38 = __CocoaSet.endIndex.getter();
    v40 = v39;
    v41 = static __CocoaSet.Index.== infix(_:_:)();
    v42 = 1;
    sub_100007BDC(v38, v40, 1);
    if (v41)
    {
LABEL_19:
      sub_100007BDC(v34, v33, v42);

      goto LABEL_20;
    }
  }

  else
  {
    while (1)
    {
      sub_1000079BC(v34, v33, (v26 & 0xC000000000000001) != 0, v26);
      v37 = sub_100003D80(v58, 1, 0xD000000000000011, 0x8000000100037330);

      if (v37)
      {
        break;
      }

      result = sub_10001B670(&v59, v26, sub_10001B388);
      if (v29)
      {
        goto LABEL_8;
      }

LABEL_11:
      if (v61)
      {
        goto LABEL_36;
      }

      v33 = v60;
      v36 = *(v26 + 36);
      if (v36 != v60)
      {
        __break(1u);
        goto LABEL_33;
      }

      v34 = v59;
      if (v59 == (1 << *(v26 + 32)))
      {
        v34 = 1 << *(v26 + 32);
        goto LABEL_25;
      }
    }

    if (v29)
    {
      goto LABEL_18;
    }

    v36 = *(v26 + 36);
LABEL_25:
    if (v36 != v33)
    {
      goto LABEL_35;
    }

    v42 = 0;
    if (v34 == 1 << *(v26 + 32))
    {
      goto LABEL_19;
    }
  }

  sub_1000079BC(v34, v33, v42, v26);
  v21 = sub_100003D80(v58, 1, 0xD000000000000011, 0x8000000100037330);

  if (v21)
  {
    sub_100007BDC(v34, v33, v42);

    v48 = v55;

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v59 = v52;
      *v51 = 134218243;
      *(v51 + 4) = v58;
      *(v51 + 12) = 2081;
      *(v51 + 14) = sub_100013120(v53, v48, &v59);
      _os_log_impl(&_mh_execute_header, v49, v50, "Found session on another instance. { reporterID=%lld, action=%{private}s }", v51, 0x16u);
      sub_10000AE7C(v52);
    }

    return v21;
  }

LABEL_37:
  __break(1u);
  return result;
}

unint64_t sub_1000043D4(uint64_t a1)
{
  v2 = static Hasher._hash(seed:_:)();

  return sub_100004418(a1, v2);
}

unint64_t sub_100004418(uint64_t a1, uint64_t a2)
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

uint64_t sub_100004484()
{
  type metadata accessor for OsTransactionHandler();
  static OsTransactionHandler.shared.getter();
  OsTransactionHandler.sessionStarted(for:)(*(v0 + 16));

  v1 = *(v0 + OBJC_IVAR____TtC15audioanalyticsd7Session_workQueue);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_10000C278;
  *(v2 + 24) = v0;
  v5[4] = sub_100002ED8;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100002EB0;
  v5[3] = &unk_1000424C0;
  v3 = _Block_copy(v5);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100004604(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for ClientServerInstance(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v22 = sub_100024A60(v7, result + 1);
    v23 = *(v22 + 16);
    if (*(v22 + 24) <= v23)
    {
      sub_100024E68(v23 + 1);
    }

    sub_1000252F8(v24, v22);

    *v3 = v22;
  }

  else
  {
    Hasher.init(_seed:)();
    v10 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid;
    Hasher._combine(_:)(*(a2 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid));
    String.hash(into:)();
    v11 = Hasher._finalize()();
    v12 = -1 << *(v6 + 32);
    v13 = v11 & ~v12;
    if ((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
    {
      v14 = ~v12;
      v15 = *(v6 + 48);
      v16 = *(a2 + v10);
      v17 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid;
      do
      {
        v18 = *(v15 + 8 * v13);
        if (*(v18 + v17) == v16)
        {
          v19 = *(v18 + 24) == *(a2 + 24) && *(v18 + 32) == *(a2 + 32);
          if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            *a1 = *(*(v6 + 48) + 8 * v13);

            return 0;
          }

          v17 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid;
        }

        v13 = (v13 + 1) & v14;
      }

      while (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v2;

    sub_100004864(v21, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v26;
  }

  *a1 = a2;
  return 1;
}

Swift::Int sub_100004864(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100024E68(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_100025438();
        goto LABEL_18;
      }

      sub_1000256D8(v6 + 1);
    }

    v8 = *v3;
    Hasher.init(_seed:)();
    v9 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid;
    Hasher._combine(_:)(*(v5 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid));
    String.hash(into:)();
    result = Hasher._finalize()();
    v10 = v8 + 56;
    v11 = -1 << *(v8 + 32);
    a2 = result & ~v11;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      result = type metadata accessor for ClientServerInstance(0);
      v13 = *(v8 + 48);
      v14 = *(v5 + v9);
      v15 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid;
      do
      {
        v16 = *(v13 + 8 * a2);
        if (*(v16 + v15) == v14)
        {
          if (*(v16 + 24) == *(v5 + 24) && *(v16 + 32) == *(v5 + 32))
          {
            goto LABEL_21;
          }

          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if (result)
          {
            goto LABEL_21;
          }

          v15 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid;
        }

        a2 = (a2 + 1) & v12;
      }

      while (((*(v10 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_18:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = v5;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_21:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v21;
  }

  return result;
}

uint64_t sub_100004A1C(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_100004C54(0, &qword_100045930, NSXPCConnection_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_100024C78(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_1000250D0(v20 + 1);
    }

    v18 = v8;
    sub_1000253B4(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_100004C54(0, &qword_100045930, NSXPCConnection_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_100004C9C(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_100004C54(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_100004C9C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000250D0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100025588();
      goto LABEL_12;
    }

    sub_100025924(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_100004C54(0, &qword_100045930, NSXPCConnection_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100004E34()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100004E84(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TraceArgs();
  v79 = *(v3 - 8);
  __chkstk_darwin(v3);
  v77 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for TraceCode();
  v76 = *(v78 - 8);
  __chkstk_darwin(v78);
  v75 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v74);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v73 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v72 = v3;
    v18 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_logger;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = a2;
      _os_log_impl(&_mh_execute_header, v19, v20, "createSession() called. { reporterID=%lld }", v21, 0xCu);
    }

    v22 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_sessionsByReporterID;
    swift_beginAccess();
    if (*(*(v17 + v22) + 16) > 0x63uLL)
    {
      v25 = Logger.logObject.getter();
      v35 = static os_log_type_t.fault.getter();
      if (!os_log_type_enabled(v25, v35))
      {
LABEL_17:

        return;
      }

      v36 = swift_slowAlloc();
      *v36 = 134217984;
      *(v36 + 4) = 100;
      _os_log_impl(&_mh_execute_header, v25, v35, "Not creating session. Client has exceeded max number of sessions. { maxNumberOfSessions=%ld }", v36, 0xCu);
LABEL_16:

      goto LABEL_17;
    }

    static Double.now()();
    if (*(v17 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation) > v23)
    {
      v23 = *(v17 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation);
    }

    *(v17 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation) = v23 + 30.0;
    swift_beginAccess();
    if (*(*(v17 + v22) + 16) && (sub_1000043D4(a2), (v24 & 1) != 0))
    {
      swift_endAccess();

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v81 = v28;
        *v27 = 134218499;
        *(v27 + 4) = a2;
        *(v27 + 12) = 1024;
        *(v27 + 14) = *(v17 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid);

        *(v27 + 18) = 2081;
        v29 = v17[3];
        v30 = v17[4];

        v31 = sub_100013120(v29, v30, &v81);

        *(v27 + 20) = v31;
        _os_log_impl(&_mh_execute_header, v25, v26, "createSession skipped, session already exists. { reporterID=%lld, pid=%d, processName=%{private}s }", v27, 0x1Cu);
        sub_10000AE7C(v28);

        goto LABEL_16;
      }
    }

    else
    {
      v70 = v18;
      swift_endAccess();
      v64 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid;
      LODWORD(v69) = *(v17 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid);
      v37 = v17[4];
      v67 = v17[3];
      v38 = v17[2];
      type metadata accessor for Session(0);
      v39 = swift_allocObject();
      v71 = a2;
      v40 = v39;
      *(v39 + 64) = -1;
      *(v39 + 66) = 0;

      *(v40 + 72) = sub_100005ADC(&_swiftEmptyArrayStorage);
      *(v40 + 80) = 0;
      *(v40 + 88) = &_swiftEmptyArrayStorage;
      *(v40 + 96) = 0u;
      *(v40 + 112) = 0u;
      *(v40 + 128) = 0u;
      static Logger.session.getter();
      *(v40 + OBJC_IVAR____TtC15audioanalyticsd7Session_summaryDecoratorWorkers) = &_swiftEmptyArrayStorage;
      v68 = v7;
      v41 = OBJC_IVAR____TtC15audioanalyticsd7Session_stopSignalTime;
      v42 = type metadata accessor for Date();
      (*(*(v42 - 8) + 56))(v40 + v41, 1, 1, v42);
      v43 = OBJC_IVAR____TtC15audioanalyticsd7Session_messageHistory;
      *(v40 + v43) = sub_100005CC8(&_swiftEmptyArrayStorage);
      *(v40 + OBJC_IVAR____TtC15audioanalyticsd7Session_numProcessedMessages) = 0;
      *(v40 + OBJC_IVAR____TtC15audioanalyticsd7Session_numProcessedMessagesUnique) = 0;
      *(v40 + OBJC_IVAR____TtC15audioanalyticsd7Session_startOnFirstMessageCalled) = 0;
      v44 = v71;
      *(v40 + 16) = v71;
      *(v40 + 48) = v69;
      *(v40 + 32) = v67;
      *(v40 + 40) = v37;
      *(v40 + 56) = v38;
      *(v40 + 24) = 0;
      *(v40 + OBJC_IVAR____TtC15audioanalyticsd7Session_stopWaitTime) = 1;
      v67 = sub_100008570();
      v81 = 0;
      v82 = 0xE000000000000000;
      v69 = v38;

      _StringGuts.grow(_:)(39);

      v81 = 0xD000000000000025;
      v82 = 0x8000000100037100;
      v80 = v44;
      v45._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v45);

      v66 = v81;
      v65 = v82;
      static DispatchQoS.userInteractive.getter();
      (*(v73 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v8);
      v81 = &_swiftEmptyArrayStorage;
      sub_100001C60(&unk_100045970, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
      sub_10001712C(&qword_1000453D0, &qword_100035C88);
      sub_100001BC4(&qword_100045980, &qword_1000453D0, &qword_100035C88);
      v46 = v71;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      *(v40 + OBJC_IVAR____TtC15audioanalyticsd7Session_workQueue) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 134217984;
        *(v49 + 4) = v46;
        _os_log_impl(&_mh_execute_header, v47, v48, "Created reporting session. { reporterID=%lld }", v49, 0xCu);
      }

      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v80 = *(v17 + v22);
      *(v17 + v22) = 0x8000000000000000;
      sub_1000085BC(v40, v46, isUniquelyReferenced_nonNull_native);
      *(v17 + v22) = v80;
      swift_endAccess();

      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v81 = v54;
        *v53 = 134218499;
        *(v53 + 4) = v46;
        *(v53 + 12) = 1024;
        *(v53 + 14) = *(v17 + v64);

        *(v53 + 18) = 2081;
        v55 = v17[3];
        v56 = v17[4];

        v57 = sub_100013120(v55, v56, &v81);

        *(v53 + 20) = v57;
        _os_log_impl(&_mh_execute_header, v51, v52, "Created session. { reporterID=%lld, pid=%d, processName=%{private}s }", v53, 0x1Cu);
        sub_10000AE7C(v54);
      }

      else
      {
      }

      v58 = v72;
      v60 = v75;
      v59 = v76;
      v61 = v78;
      (*(v76 + 104))(v75, enum case for TraceCode.serverCreate(_:), v78);
      static Utilities.positiveReporterID(_:)();
      default argument 1 of TraceArgs.init(arg1:arg2:arg3:arg4:)();
      default argument 2 of TraceArgs.init(arg1:arg2:arg3:arg4:)();
      default argument 3 of TraceArgs.init(arg1:arg2:arg3:arg4:)();
      v62 = v77;
      TraceArgs.init(arg1:arg2:arg3:arg4:)();
      static Trace.post(_:args:)();
      (*(v79 + 8))(v62, v58);
      (*(v59 + 8))(v60, v61);
      sub_100008A00();
    }
  }

  else
  {
    static Logger.service.getter();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "ClientServerInstance is gone. { action=createSession }", v34, 2u);
    }

    (*(v13 + 8))(v15, v12);
  }
}

uint64_t type metadata accessor for Session(uint64_t a1)
{
  result = qword_100045C40;
  if (!qword_100045C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100005ADC(uint64_t a1)
{
  v2 = sub_10001712C(&qword_100045400, &unk_100035E10);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10001712C(&qword_100045408, &unk_1000364E0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000C454(v9, v5, &qword_100045400, &unk_100035E10);
      v11 = *v5;
      v12 = v5[1];
      result = sub_10000710C(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for SimpleType();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_100005CC8(uint64_t a1)
{
  v2 = sub_10001712C(&qword_100045428, &qword_100035E38);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10001712C(&qword_100045430, &qword_100035E40);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_10000C454(v9, v5, &qword_100045428, &qword_100035E38);
      v11 = *v5;
      result = sub_10000B964(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 4 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for Message();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
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

uint64_t sub_100005EA4(uint64_t a1)
{
  v2 = v1;
  v73 = type metadata accessor for Config.WorkerConfigs();
  __chkstk_darwin(v73);
  v72 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = (a1 + 32);
    v71 = (v4 + 8);
    v74 = OBJC_IVAR____TtC15audioanalyticsd7Session_summaryDecoratorWorkers;
    v77 = *(v2 + 24);
    *&v5 = 136380931;
    v76 = v5;
    *&v5 = 136315394;
    v70 = v5;
    v75 = OBJC_IVAR____TtC15audioanalyticsd7Session_logger;
    do
    {
      v78 = *v8;
      if (v77 && ((v9 = v78, swift_conformsToProtocol2()) ? (v10 = v9 == 0) : (v10 = 1), v10))
      {
        swift_retain_n();
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          *&v83 = v14;
          *v13 = v76;
          v85 = v78;
          sub_10001712C(&qword_100045DD8, &qword_100036648);
          v15 = String.init<A>(describing:)();
          v17 = sub_100013120(v15, v16, &v83);

          *(v13 + 4) = v17;
          *(v13 + 12) = 2048;
          v18 = *(v2 + 16);

          *(v13 + 14) = v18;

          v19 = v12;
          v20 = v11;
          v21 = "Skipping worker on singleMessageSession. { worker=%{private}s, reporterID=%lld }";
LABEL_16:
          _os_log_impl(&_mh_execute_header, v20, v19, v21, v13, 0x16u);
          sub_10000AE7C(v14);

          goto LABEL_4;
        }
      }

      else
      {
        sub_10000C2F0(&v81);
        v22 = v78;
        v23 = type metadata accessor for Optional();
        v24 = *(v23 - 8);
        __chkstk_darwin(v23);
        v26 = &v70 - v25;
        dispatch thunk of WorkerProtocol.init(with:)();
        v27 = *(v22 - 8);
        if ((*(v27 + 48))(v26, 1, v22) != 1)
        {
          v84 = v78;
          v33 = sub_10000C4FC(&v83);
          (*(v27 + 32))(v33, v26, v22);
          sub_10000C43C(&v83, &v85);
          sub_10000AEC8(&v85, v86);
          if (dispatch thunk of WorkerProtocol.start()())
          {
            sub_10000AE18(&v85, &v83);
            swift_beginAccess();
            v34 = *(v2 + 88);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v2 + 88) = v34;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v34 = sub_10000F08C(0, v34[2] + 1, 1, v34, &qword_100045D88, &qword_100036608, &qword_100045BB0, &qword_100036500);
              *(v2 + 88) = v34;
            }

            v37 = v34[2];
            v36 = v34[3];
            if (v37 >= v36 >> 1)
            {
              v34 = sub_10000F08C((v36 > 1), v37 + 1, 1, v34, &qword_100045D88, &qword_100036608, &qword_100045BB0, &qword_100036500);
            }

            v34[2] = v37 + 1;
            sub_10000C43C(&v83, &v34[5 * v37 + 4]);
            *(v2 + 88) = v34;
            swift_endAccess();
            sub_10000AE18(&v85, &v81);
            sub_10001712C(&qword_100045BB0, &qword_100036500);
            sub_10001712C(&qword_100045BB8, &qword_100036508);
            if (swift_dynamicCast())
            {
              sub_10000C43C(v79, &v83);
              sub_10000AE18(&v85, &v81);
              swift_retain_n();
              v38 = Logger.logObject.getter();
              v39 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v38, v39))
              {
                v40 = swift_slowAlloc();
                *&v78 = swift_slowAlloc();
                *&v79[0] = v78;
                *v40 = v76;
                sub_10000AEC8(&v81, v82);
                v41 = v72;
                dispatch thunk of WorkerProtocol.workerConfig.getter();
                v42 = Config.WorkerConfigs.rawValue.getter();
                v44 = v43;
                (*v71)(v41, v73);
                sub_10000AE7C(&v81);
                v45 = sub_100013120(v42, v44, v79);

                *(v40 + 4) = v45;
                *(v40 + 12) = 2048;
                v46 = *(v2 + 16);

                *(v40 + 14) = v46;

                _os_log_impl(&_mh_execute_header, v38, v39, "Adding decorator worker. { worker=%{private}s, reporterID=%lld }", v40, 0x16u);
                sub_10000AE7C(v78);
              }

              else
              {

                sub_10000AE7C(&v81);
              }

              sub_10000AE18(&v83, &v81);
              v55 = v74;
              swift_beginAccess();
              v56 = *(v2 + v55);
              v57 = swift_isUniquelyReferenced_nonNull_native();
              *(v2 + v55) = v56;
              if ((v57 & 1) == 0)
              {
                v56 = sub_10000F08C(0, v56[2] + 1, 1, v56, &qword_100045D80, &qword_100036600, &qword_100045BB8, &qword_100036508);
                *(v2 + v74) = v56;
              }

              v59 = v56[2];
              v58 = v56[3];
              if (v59 >= v58 >> 1)
              {
                v56 = sub_10000F08C((v58 > 1), v59 + 1, 1, v56, &qword_100045D80, &qword_100036600, &qword_100045BB8, &qword_100036508);
              }

              v56[2] = v59 + 1;
              sub_10000C43C(&v81, &v56[5 * v59 + 4]);
              *(v2 + v74) = v56;
              swift_endAccess();
              sub_10000AE7C(&v83);
            }

            else
            {
              v80 = 0;
              memset(v79, 0, sizeof(v79));
              sub_100006CC8(v79, &qword_100045D78, &qword_1000365F8);
            }

            sub_10000AE18(&v85, &v83);
            swift_retain_n();
            v60 = Logger.logObject.getter();
            v61 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v60, v61))
            {
              v62 = swift_slowAlloc();
              *&v78 = swift_slowAlloc();
              *&v81 = v78;
              *v62 = v70;
              sub_10000AEC8(&v83, v84);
              v63 = v72;
              dispatch thunk of WorkerProtocol.workerConfig.getter();
              v64 = Config.WorkerConfigs.rawValue.getter();
              v66 = v65;
              (*v71)(v63, v73);
              sub_10000AE7C(&v83);
              v67 = sub_100013120(v64, v66, &v81);

              *(v62 + 4) = v67;
              *(v62 + 12) = 2048;
              v68 = *(v2 + 16);

              *(v62 + 14) = v68;

              _os_log_impl(&_mh_execute_header, v60, v61, "Started worker. { worker=%s, reporterID=%lld }", v62, 0x16u);
              sub_10000AE7C(v78);
            }

            else
            {

              sub_10000AE7C(&v83);
            }
          }

          else
          {
            swift_retain_n();
            v47 = Logger.logObject.getter();
            v48 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v47, v48))
            {
              v49 = swift_slowAlloc();
              v50 = swift_slowAlloc();
              *&v81 = v50;
              *v49 = v76;
              v83 = v78;
              sub_10001712C(&qword_100045DD8, &qword_100036648);
              v51 = String.init<A>(describing:)();
              v53 = sub_100013120(v51, v52, &v81);

              *(v49 + 4) = v53;
              *(v49 + 12) = 2048;
              v54 = *(v2 + 16);

              *(v49 + 14) = v54;

              _os_log_impl(&_mh_execute_header, v47, v48, "Unable to start worker. Disabled for session lifetime. { worker=%{private}s, reporterID=%lld }", v49, 0x16u);
              sub_10000AE7C(v50);
            }

            else
            {
            }
          }

          sub_10000AE7C(&v85);
          goto LABEL_4;
        }

        (*(v24 + 8))(v26, v23);
        swift_retain_n();
        v11 = Logger.logObject.getter();
        v28 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v11, v28))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          *&v83 = v14;
          *v13 = v76;
          v85 = v78;
          sub_10001712C(&qword_100045DD8, &qword_100036648);
          v29 = String.init<A>(describing:)();
          v31 = sub_100013120(v29, v30, &v83);

          *(v13 + 4) = v31;
          *(v13 + 12) = 2048;
          v32 = *(v2 + 16);

          *(v13 + 14) = v32;

          v19 = v28;
          v20 = v11;
          v21 = "Unable to initialize worker. Disabled for session lifetime. { worker=%{private}s, reporterID=%lld }";
          goto LABEL_16;
        }
      }

LABEL_4:
      ++v8;
      --v7;
    }

    while (v7);
  }

  swift_beginAccess();
  sub_10000F1D4((v2 + 88), &Config.WorkerConfigs.messageProcessOrder.getter);
  return swift_endAccess();
}

unint64_t sub_100006AEC(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_100006BA4@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v4 = *(sub_10001712C(&qword_100045DB0, &qword_100036630) + 48);
  v5 = *(sub_10001712C(&qword_100045400, &unk_100035E10) + 48);
  v7 = *a1;
  v6 = *(a1 + 1);
  v8 = type metadata accessor for SimpleType();
  (*(*(v8 - 8) + 16))(&a2[v5], &a1[v4], v8);
  *a2 = v7;
  *(a2 + 1) = v6;
}

uint64_t sub_100006C60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10001712C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100006CC8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10001712C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100006D28@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10001712C(&qword_100045DB0, &qword_100036630);
  v46 = *(v3 - 8);
  v47 = v3;
  __chkstk_darwin(v3);
  v5 = &v42 - v4;
  v45 = type metadata accessor for SimpleType();
  v6 = *(v45 - 8);
  __chkstk_darwin(v45);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001712C(&qword_100045DB8, &qword_100036638);
  v10 = __chkstk_darwin(v9 - 8);
  v49 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v14 = &v42 - v13;
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v42 = v5;
  v48 = v18;
  if (v19)
  {
    v44 = a1;
    v20 = v17;
LABEL_11:
    v43 = (v19 - 1) & v19;
    v24 = __clz(__rbit64(v19)) | (v20 << 6);
    v25 = (*(v15 + 48) + 16 * v24);
    v26 = *v25;
    v27 = v25[1];
    v28 = v45;
    (*(v6 + 16))(v8, *(v15 + 56) + *(v6 + 72) * v24, v45);
    v29 = v47;
    v30 = *(v47 + 48);
    *v14 = v26;
    *(v14 + 1) = v27;
    v31 = v8;
    v32 = v29;
    (*(v6 + 32))(&v14[v30], v31, v28);
    v33 = v46;
    (*(v46 + 56))(v14, 0, 1, v32);

    v34 = v43;
    a1 = v44;
    v23 = v20;
    v35 = v33;
LABEL_12:
    *v1 = v15;
    v1[1] = v16;
    v36 = v49;
    v1[2] = v48;
    v1[3] = v23;
    v1[4] = v34;
    v37 = v1[5];
    sub_100006C60(v14, v36, &qword_100045DB8, &qword_100036638);
    v38 = 1;
    if ((*(v35 + 48))(v36, 1, v32) != 1)
    {
      v39 = v36;
      v40 = v42;
      sub_100006C60(v39, v42, &qword_100045DB0, &qword_100036630);
      v37(v40);
      sub_100006CC8(v40, &qword_100045DB0, &qword_100036630);
      v38 = 0;
    }

    v41 = sub_10001712C(&qword_100045400, &unk_100035E10);
    return (*(*(v41 - 8) + 56))(a1, v38, 1, v41);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v35 = v46;
        v32 = v47;
        (*(v46 + 56))(&v42 - v13, 1, 1, v47);
        v34 = 0;
        goto LABEL_12;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        v44 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_10000710C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100006AEC(a1, a2, v4);
}

uint64_t sub_100007184(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v57 = a5;
  v9 = type metadata accessor for SimpleType();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10001712C(&qword_100045DA8, &qword_100036628);
  __chkstk_darwin(v13 - 8);
  v15 = (v46 - v14);
  v16 = -1 << *(a1 + 32);
  v17 = ~v16;
  v18 = *(a1 + 64);
  v19 = -v16;
  v50 = a1;
  v51 = a1 + 64;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v52 = v17;
  v53 = 0;
  v54 = v20 & v18;
  v55 = a2;
  v56 = a3;
  v48 = v10;
  v49 = (v10 + 32);
  v46[3] = v10 + 40;

  v46[1] = a3;

  for (i = v15; ; v15 = i)
  {
    sub_100006D28(v15);
    v22 = sub_10001712C(&qword_100045400, &unk_100035E10);
    if ((*(*(v22 - 8) + 48))(v15, 1, v22) == 1)
    {
      sub_10000750C(v50);
    }

    v23 = *(v22 + 48);
    v25 = *v15;
    v24 = v15[1];
    v26 = *v49;
    v27 = v15 + v23;
    v28 = v12;
    v29 = v9;
    (*v49)(v12, v27, v9);
    v30 = *v57;
    v32 = sub_10000710C(v25, v24);
    v33 = v30[2];
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      break;
    }

    v36 = v31;
    if (v30[3] >= v35)
    {
      if ((a4 & 1) == 0)
      {
        sub_10000C940();
      }
    }

    else
    {
      sub_100007518(v35, a4 & 1);
      v37 = sub_10000710C(v25, v24);
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_20;
      }

      v32 = v37;
    }

    v39 = *v57;
    if (v36)
    {

      v21 = v39[7] + *(v48 + 72) * v32;
      v12 = v28;
      v9 = v29;
      (*(v48 + 40))(v21, v28, v29);
    }

    else
    {
      v39[(v32 >> 6) + 8] |= 1 << v32;
      v40 = (v39[6] + 16 * v32);
      *v40 = v25;
      v40[1] = v24;
      v41 = v39[7] + *(v48 + 72) * v32;
      v12 = v28;
      v9 = v29;
      v26(v41, v28, v29);
      v42 = v39[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_19;
      }

      v39[2] = v44;
    }

    a4 = 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100007518(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = type metadata accessor for SimpleType();
  v5 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_10001712C(&qword_100045408, &unk_1000364E0);
  v42 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
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
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

char *sub_100007898(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001712C(&qword_100045E18, &qword_100036688);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_10000799C(char *a1, int64_t a2, char a3)
{
  result = sub_100007898(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1000079BC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      type metadata accessor for ClientServerInstance(0);
      swift_dynamicCast();
      return v13;
    }

    goto LABEL_28;
  }

  if (a3)
  {
    if (__CocoaSet.Index.age.getter() == *(a4 + 36))
    {
      __CocoaSet.Index.element.getter();
      type metadata accessor for ClientServerInstance(0);
      swift_dynamicCast();
      Hasher.init(_seed:)();
      v5 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid;
      Hasher._combine(_:)(*(v13 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid));
      String.hash(into:)();
      v6 = Hasher._finalize()();
      v7 = -1 << *(a4 + 32);
      v8 = v6 & ~v7;
      if ((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
      {
        v9 = ~v7;
        v10 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid;
        while (1)
        {
          v11 = *(*(a4 + 48) + 8 * v8);
          if (*(v11 + v10) == *(v13 + v5))
          {
            v12 = *(v11 + 24) == *(v13 + 24) && *(v11 + 32) == *(v13 + 32);
            if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              goto LABEL_21;
            }

            v10 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid;
          }

          v8 = (v8 + 1) & v9;
          if (((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
          {
            goto LABEL_27;
          }
        }
      }

      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_26:
    __break(1u);
LABEL_27:

    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_21:
  }
}

uint64_t sub_100007BDC(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void sub_100007BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = a2;
      _os_log_impl(&_mh_execute_header, v11, v12, "setServiceType() called. { reporterID=%lld }", v13, 0xCu);
    }

    static Double.now()();
    if (*(v10 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation) > v14)
    {
      v14 = *(v10 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation);
    }

    *(v10 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation) = v14 + 1.0;
    v15 = sub_100003D80(a2, 0, 0x6976726553746573, 0xEE00657079546563);
    if (v15)
    {
      v16 = v15;
      v17 = *(v15 + 32);
      if (v17 == a3)
      {
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          aBlock[0] = v21;
          *v20 = 136446466;
          v22 = static Utilities.serviceTypeDescription(from:)();
          v24 = sub_100013120(v22, v23, aBlock);

          *(v20 + 4) = v24;
          *(v20 + 12) = 2048;
          *(v20 + 14) = a2;
          v25 = "ServiceType did not change. { serviceType=%{public}s, reporterID=%lld }";
LABEL_20:
          _os_log_impl(&_mh_execute_header, v18, v19, v25, v20, 0x16u);
          sub_10000AE7C(v21);

          goto LABEL_21;
        }

        goto LABEL_21;
      }

      if (v17 == 0xFFFF)
      {
        sub_100008388(a3);
        *(v16 + 32) = a3;
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          aBlock[0] = v21;
          *v20 = 136446466;
          v49 = static Utilities.serviceTypeDescription(from:)();
          v51 = sub_100013120(v49, v50, aBlock);

          *(v20 + 4) = v51;
          *(v20 + 12) = 2048;
          *(v20 + 14) = a2;
          v25 = "Received serviceType for reporterID. { serviceType=%{public}s, reporterID=%lld }";
          goto LABEL_20;
        }

LABEL_21:

        return;
      }

      v29 = *(v15 + OBJC_IVAR____TtC15audioanalyticsd7Session_workQueue);
      v30 = swift_allocObject();
      *(v30 + 16) = v16;
      *(v30 + 24) = 0;
      v31 = swift_allocObject();
      *(v31 + 16) = sub_100019DF8;
      *(v31 + 24) = v30;
      aBlock[4] = sub_10000853C;
      aBlock[5] = v31;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100002EB0;
      aBlock[3] = &unk_100041A60;
      v32 = _Block_copy(aBlock);

      dispatch_sync(v29, v32);
      _Block_release(v32);
      LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

      if (v29)
      {
        __break(1u);
        return;
      }

      v34 = sub_10002E50C(v33);
      sub_100008388(a3);
      *(v34 + 64) = a3;
      v35 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_sessionsByReporterID;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = *(v10 + v35);
      *(v10 + v35) = 0x8000000000000000;
      sub_1000085BC(v34, a2, isUniquelyReferenced_nonNull_native);
      *(v10 + v35) = v54;
      swift_endAccess();
      v52 = static Utilities.serviceTypeDescription(from:)();
      v38 = v37;
      v39 = static Utilities.serviceTypeDescription(from:)();
      v41 = v40;

      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.debug.getter();

      v53 = v42;
      if (os_log_type_enabled(v42, v43))
      {
        v44 = v39;
        v45 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        *v45 = 136446722;
        v46 = sub_100013120(v44, v41, aBlock);

        *(v45 + 4) = v46;
        *(v45 + 12) = 2082;
        v47 = sub_100013120(v52, v38, aBlock);

        *(v45 + 14) = v47;
        *(v45 + 22) = 2048;
        *(v45 + 24) = a2;
        v48 = v53;
        _os_log_impl(&_mh_execute_header, v53, v43, "setServiceType() { serviceType=%{public}s, prevServiceType=%{public}s, reporterID=%lld }", v45, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
      }
    }
  }

  else
  {
    static Logger.service.getter();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "ClientServerInstance is gone. { action=set:serviceType }", v28, 2u);
    }

    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_100008330()
{

  return _swift_deallocObject(v0, 25, 7);
}

void sub_100008388(uint64_t a1)
{
  v2 = v1;
  swift_retain_n();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136380931;
    v7 = static Utilities.serviceTypeDescription(from:)();
    v9 = sub_100013120(v7, v8, &v11);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    v10 = *(v2 + 16);

    *(v5 + 14) = v10;

    _os_log_impl(&_mh_execute_header, v3, v4, "serviceType set. { serviceType=%{private}s, reporterID=%lld }", v5, 0x16u);
    sub_10000AE7C(v6);
  }

  else
  {
  }
}

unint64_t sub_100008570()
{
  result = qword_1000453C8;
  if (!qword_1000453C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000453C8);
  }

  return result;
}

unint64_t sub_1000085BC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1000043D4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_100008708(v14, a3 & 1);
      result = sub_1000043D4(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_100029D1C();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_100008708(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10001712C(&qword_100045BA8, &qword_1000364F8);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = static Hasher._hash(seed:_:)();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_100008A00()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue;
  v49 = *(v1 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_server);
  v7 = *(v49 + OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue);
  *v5 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v9 = *(v3 + 104);
  v9(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v10 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v11 = *(v3 + 8);
  v11(v5, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  v12 = *(v49 + v6);
  *v5 = v12;
  v9(v5, v8, v2);
  v13 = v12;
  v14 = _dispatchPreconditionTest(_:)();
  v11(v5, v2);
  if ((v14 & 1) == 0)
  {
LABEL_28:
    __break(1u);
    return;
  }

  v15 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_sessionsByReporterID;
  swift_beginAccess();
  v49 = v15;
  v16 = *(v1 + v15);
  v17 = *(v16 + 16);
  if (!v17)
  {
LABEL_6:
    v18 = &_swiftEmptyArrayStorage;
    goto LABEL_7;
  }

  v18 = sub_1000092F0(*(v16 + 16), 0);
  v19 = sub_100009378(&v51, v18 + 4, v17, v16);
  v20 = v51;

  sub_10000750C(v20);
  if (v19 != v17)
  {
    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  v21 = v18[2];
  v22 = &_swiftEmptyArrayStorage;
  if (v21)
  {
    v23 = v18 + 4;
    do
    {
      v27 = *v23++;
      v26 = v27;
      v28 = sub_100003D80(v27, 0, 0x7669746341746567, 0xE900000000000065);
      if (v28)
      {
        v29 = *(v28 + 66);

        if (v29 == 1)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v51 = v22;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10002CEC0(0, v22[2] + 1, 1);
            v22 = v51;
          }

          v25 = v22[2];
          v24 = v22[3];
          if (v25 >= v24 >> 1)
          {
            sub_10002CEC0((v24 > 1), v25 + 1, 1);
            v22 = v51;
          }

          v22[2] = v25 + 1;
          v22[v25 + 4] = v26;
        }
      }

      --v21;
    }

    while (v21);
  }

  v31 = v22[2];
  if (v31)
  {
    v51 = &_swiftEmptyArrayStorage;
    sub_10002CEA0(0, v31, 0);
    v32 = 4;
    v33 = v51;
    do
    {
      v50 = v22[v32];
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v33;
      v37 = v33[2];
      v36 = v33[3];
      if (v37 >= v36 >> 1)
      {
        v48 = v34;
        v39 = v35;
        sub_10002CEA0((v36 > 1), v37 + 1, 1);
        v35 = v39;
        v34 = v48;
        v33 = v51;
      }

      v33[2] = v37 + 1;
      v38 = &v33[2 * v37];
      v38[4] = v34;
      v38[5] = v35;
      ++v32;
      --v31;
    }

    while (v31);
  }

  else
  {

    v33 = &_swiftEmptyArrayStorage;
  }

  v51 = v33;
  sub_10001712C(&qword_100045588, &qword_1000360D0);
  sub_100001C18(&qword_100045590, &qword_100045588, &qword_1000360D0, &protocol conformance descriptor for [A]);
  v40 = BidirectionalCollection<>.joined(separator:)();
  v42 = v41;

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v45 = 136381187;
    *(v45 + 4) = sub_100013120(*(v1 + 24), *(v1 + 32), &v51);
    *(v45 + 12) = 2048;
    *(v45 + 14) = *(*(v1 + v49) + 16);

    *(v45 + 22) = 2081;
    v46 = sub_100013120(v40, v42, &v51);

    *(v45 + 24) = v46;
    _os_log_impl(&_mh_execute_header, v43, v44, "Active reporting sessions. { clientProcessName=%{private}s, sessionCount=%ld, activeSessions=%{private}s }", v45, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_100008F8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v18 = *(v9 - 8);
  v19 = v9;
  __chkstk_darwin(v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(v3 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_server) + OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a2;
  v14[4] = a1;
  aBlock[4] = sub_100009E1C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000016B8;
  aBlock[3] = &unk_1000418A8;
  v15 = _Block_copy(aBlock);
  v16 = v12;

  static DispatchQoS.unspecified.getter();
  v21 = &_swiftEmptyArrayStorage;
  sub_100001C60(&qword_100045460, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10001712C(&unk_100045920, &qword_100035FC0);
  sub_100001BC4(&qword_100045468, &unk_100045920, &qword_100035FC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v20 + 8))(v8, v6);
  (*(v18 + 8))(v11, v19);
}

uint64_t sub_1000092B0()
{

  return _swift_deallocObject(v0, 40, 7);
}

void *sub_1000092F0(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_10001712C(&qword_100045DF8, &qword_100036668);
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
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_100009378(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_100009478(__int16 a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v18 = *(v9 - 8);
  v19 = v9;
  __chkstk_darwin(v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(v3 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_server) + OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a2;
  *(v14 + 32) = a1;
  aBlock[4] = sub_10000837C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000016B8;
  aBlock[3] = &unk_1000419E8;
  v15 = _Block_copy(aBlock);
  v16 = v12;

  static DispatchQoS.unspecified.getter();
  v21 = &_swiftEmptyArrayStorage;
  sub_100001C60(&qword_100045460, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10001712C(&unk_100045920, &qword_100035FC0);
  sub_100001BC4(&qword_100045468, &unk_100045920, &qword_100035FC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v20 + 8))(v8, v6);
  (*(v18 + 8))(v11, v19);
}

uint64_t sub_100009794()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000097CC()
{

  return _swift_deallocObject(v0, 34, 7);
}

void sub_100009808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Logger();
  isEscapingClosureAtFileLocation = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_12:
    static Logger.service.getter();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "ClientServerInstance is gone. { action=set:configuration }", v29, 2u);
    }

    (*(isEscapingClosureAtFileLocation + 8))(v7, v4);
    return;
  }

  v9 = Strong;
  static Double.now()();
  if (*(v9 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation) > v10)
  {
    v10 = *(v9 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation);
  }

  *(v9 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation) = v10 + 1.0;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = a2;
    _os_log_impl(&_mh_execute_header, v11, v12, "setConfiguration() called. { reporterID=%lld }", v13, 0xCu);
  }

  v14 = Dictionary<>.asSimpleType()();
  if (v14)
  {
    v4 = v14;

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock[0] = v18;
      *v17 = 136380931;
      v19 = Dictionary.description.getter();
      v21 = sub_100013120(v19, v20, aBlock);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2048;
      *(v17 + 14) = a2;
      _os_log_impl(&_mh_execute_header, v15, v16, "Setting configuration { configuration=%{private}s, reporterID=%lld }", v17, 0x16u);
      sub_10000AE7C(v18);
    }

    v22 = sub_100003D80(a2, 0, 0x69666E6F43746573, 0xE900000000000067);
    if (!v22)
    {

      return;
    }

    v23 = *(v22 + OBJC_IVAR____TtC15audioanalyticsd7Session_workQueue);
    v24 = v22;
    v7 = swift_allocObject();
    *(v7 + 2) = v24;
    *(v7 + 3) = v4;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_100009FD0;
    *(v25 + 24) = v7;
    aBlock[4] = sub_10000853C;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100002EB0;
    aBlock[3] = &unk_100041920;
    v26 = _Block_copy(aBlock);

    dispatch_sync(v23, v26);
    _Block_release(v26);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_12;
  }

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    aBlock[0] = v33;
    *v32 = 136380931;
    v34 = Dictionary.description.getter();
    v36 = sub_100013120(v34, v35, aBlock);

    *(v32 + 4) = v36;
    *(v32 + 12) = 2048;
    *(v32 + 14) = a2;
    _os_log_impl(&_mh_execute_header, v30, v31, "Error converting session configuration. { configuration=%{private}s, reporterID=%lld }", v32, 0x16u);
    sub_10000AE7C(v33);
  }
}

uint64_t sub_100009DD8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100009E2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + OBJC_IVAR____TtC15audioanalyticsd7Session_workQueue);
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    swift_beginAccess();
    v10 = *(a1 + 72);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = v10;
    sub_100007184(a2, sub_100006BA4, 0, isUniquelyReferenced_nonNull_native, &v14);

    *(a1 + 72) = v14;
  }

  else
  {
    __break(1u);

    __break(1u);
  }

  return result;
}

uint64_t sub_100009FD8(uint64_t a1)
{
  v85 = a1;
  v91 = type metadata accessor for Config.WorkerConfigs();
  v94 = *(v91 - 8);
  __chkstk_darwin(v91);
  v90 = &v78 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10001712C(&qword_100045D70, &qword_1000365F0);
  __chkstk_darwin(v3 - 8);
  v82 = &v78 - v4;
  v5 = type metadata accessor for OperatingSystem();
  v93 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for Message.Metadata();
  v86 = *(v84 - 8);
  __chkstk_darwin(v84);
  v83 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for Message();
  v87 = *(v92 - 8);
  v9 = __chkstk_darwin(v92);
  v96 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v78 - v12;
  v14 = __chkstk_darwin(v11);
  v97 = &v78 - v15;
  __chkstk_darwin(v14);
  v17 = &v78 - v16;
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = (&v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v1 + OBJC_IVAR____TtC15audioanalyticsd7Session_workQueue);
  *v21 = v22;
  (*(v19 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v18);
  v23 = v22;
  v24 = _dispatchPreconditionTest(_:)();
  v26 = *(v19 + 8);
  v25 = v19 + 8;
  v26(v21, v18);
  if ((v24 & 1) == 0)
  {
    __break(1u);
LABEL_37:
    swift_once();
    goto LABEL_4;
  }

  v25 = OBJC_IVAR____TtC15audioanalyticsd7Session_startOnFirstMessageCalled;
  v22 = v1;
  if (*(v1 + OBJC_IVAR____TtC15audioanalyticsd7Session_startOnFirstMessageCalled))
  {
    goto LABEL_5;
  }

  if (qword_1000453B8 != -1)
  {
    goto LABEL_37;
  }

LABEL_4:
  sub_100005EA4(qword_100046148);
  *(v22 + v25) = 1;
LABEL_5:
  v27 = OBJC_IVAR____TtC15audioanalyticsd7Session_logger;

  v95 = v27;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 134218240;
    *(v30 + 4) = v22[2];
    *(v30 + 12) = 1024;
    *(v30 + 14) = *(v22 + 24);

    _os_log_impl(&_mh_execute_header, v28, v29, "Processing message. { reporterID=%lld, singleServerSession=%{BOOL}d }", v30, 0x12u);
  }

  else
  {
  }

  v31 = v22[7];
  sub_10000C2F0(&v101);
  v32 = v31;
  v33 = v85;
  v34 = sub_10000D868(v32, v85, &v101, 0);
  v36 = v35;
  sub_100006CC8(&v101, &qword_100045598, &qword_1000360E0);
  if ((v36 & 0x100) != 0)
  {

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 134217984;
      *(v56 + 4) = v22[2];

      _os_log_impl(&_mh_execute_header, v54, v55, "Discarding message. { reporterID=%lld }", v56, 0xCu);
    }

    else
    {
    }

    goto LABEL_35;
  }

  v89 = v34;
  v98 = *(v87 + 16);
  v99 = v87 + 16;
  v98(v17, v33, v92);
  sub_10000EB14(v33);
  v37 = Message.metadata.modify();
  v100 = v17;
  v38 = v37;
  Message.Metadata.isRedundant.setter();
  v38(&v101, 0);
  v39 = Message.metadata.modify();
  Message.Metadata.isSessionStarted.setter();
  v39(&v101, 0);
  v40 = v100;
  Message.appName.getter();
  if (!v41)
  {
    sub_10000E894();
  }

  Message.appName.setter();
  v42 = v83;
  Message.metadata.getter();
  v43 = Message.Metadata.requiresSummaryDecoration.getter();
  v44 = *(v86 + 8);
  v86 += 8;
  v80 = v44;
  v44(v42, v84);
  v81 = v36;
  if (v43)
  {
    v45 = Message.metadata.modify();
    Message.Metadata.requiresSummaryDecoration.setter();
    v45(&v101, 0);
    v46 = v36 & 1;
    v47 = v89;

    v49 = sub_100012BAC(v48);

    v98(v13, v40, v92);
    v50 = v49;
    v51 = v49[2];
    if (v51)
    {
      LODWORD(v88) = v46;
      v79 = v22;
      v52 = (v50 + 4);
      v53 = (v93 + 8);
      do
      {
        sub_10000AE18(v52, &v101);
        sub_10000AEC8(&v101, v102);
        static DeviceUtilities.currentOperatingSystem.getter();
        dispatch thunk of SummaryDecorator.addDecoratorData(_:operatingSystem:)();
        (*v53)(v7, v5);
        sub_10000AE7C(&v101);
        v52 += 40;
        --v51;
      }

      while (v51);

      v22 = v79;
      v33 = v85;
      v40 = v100;
      v47 = v89;
    }

    else
    {
    }

    v58 = v87;
    v59 = v97;
    v57 = v92;
    (*(v87 + 32))(v97, v13, v92);
    (*(v58 + 40))(v40, v59, v57);
  }

  else
  {
    v57 = v92;
    v47 = v89;
  }

  swift_beginAccess();

  v61 = sub_10000E4F0(v60, v47);

  v62 = v61[2];
  v63 = v96;
  if (v62)
  {
    v79 = v61;
    v64 = (v61 + 4);
    swift_beginAccess();
    v97 = (v87 + 8);
    v89 = v94 + 8;
    *&v65 = 136381187;
    v88 = v65;
    do
    {
      sub_10000AE18(v64, &v101);
      sub_10000AEC8(&v101, v102);
      v98(v63, v40, v57);
      dispatch thunk of WorkerProtocol.process(message:)();
      (*v97)(v63, v57);
      sub_10000AE7C(&v101);
      v64 += 40;
      --v62;
    }

    while (v62);

    v33 = v85;
  }

  else
  {
  }

  v66 = sub_10002A60C();
  LOWORD(v36) = v81;
  if (v66)
  {
    sub_100015070();
    sub_1000150F0(v33);
  }

  swift_beginAccess();
  v67 = v83;
  Message.metadata.getter();
  v68 = Message.Metadata.isRedundant.getter();
  v80(v67, v84);
  result = swift_endAccess();
  if ((v68 & 1) == 0)
  {
    v70 = Message.category.getter();
    v71 = v82;
    v98(v82, v33, v57);
    (*(v87 + 56))(v71, 0, 1, v57);
    swift_beginAccess();
    sub_10000D5AC(v71, v70);
    result = swift_endAccess();
    v72 = *(v22 + OBJC_IVAR____TtC15audioanalyticsd7Session_numProcessedMessagesUnique);
    v73 = __CFADD__(v72, 1);
    v74 = v72 + 1;
    if (v73)
    {
      goto LABEL_39;
    }

    *(v22 + OBJC_IVAR____TtC15audioanalyticsd7Session_numProcessedMessagesUnique) = v74;
    v57 = v92;
  }

  v75 = *(v22 + OBJC_IVAR____TtC15audioanalyticsd7Session_numProcessedMessages);
  v73 = __CFADD__(v75, 1);
  v76 = v75 + 1;
  if (!v73)
  {
    *(v22 + OBJC_IVAR____TtC15audioanalyticsd7Session_numProcessedMessages) = v76;
    (*(v87 + 8))(v40, v57);
LABEL_35:
    v77 = Message.content.getter();
    sub_10000B6EC(v77);

    return (v36 & 0x100) == 0;
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_10000AE18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000AE7C(void *a1)
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

void *sub_10000AEC8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_10000AF0C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v7 = a3;
  v68 = a2;
  v8 = sub_10001712C(&qword_100045480, &qword_100035FD8);
  __chkstk_darwin(v8 - 8);
  v66 = &v56 - v9;
  v60 = type metadata accessor for Message();
  v62 = *(v60 - 8);
  __chkstk_darwin(v60);
  v67 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TraceArgs();
  v64 = *(v11 - 8);
  v65 = v11;
  __chkstk_darwin(v11);
  v61 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for TraceCode();
  v13 = *(v63 - 8);
  __chkstk_darwin(v63);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v59 = a4;
    v22 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_logger;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    v25 = os_log_type_enabled(v23, v24);
    v58 = v7;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v26 = 134284035;
      *(v26 + 4) = v68;
      *(v26 + 12) = 2082;
      v27 = static Utilities.eventCategoryDescription(from:)();
      v29 = sub_100013120(v27, v28, &v69);
      v57 = a5;
      v30 = v13;
      v31 = v15;
      v32 = v29;

      *(v26 + 14) = v32;
      *(v26 + 22) = 2082;
      v33 = static Utilities.eventTypeDescription(from:)();
      v35 = sub_100013120(v33, v34, &v69);

      *(v26 + 24) = v35;
      v15 = v31;
      v13 = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "sendMessage() called. { reporterID=%{private}lld, category=%{public}s, type=%{public}s }", v26, 0x20u);
      swift_arrayDestroy();
    }

    static Double.now()();
    if (*(v21 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation) > v36)
    {
      v36 = *(v21 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation);
    }

    *(v21 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation) = v36 + 1.0;
    if (Dictionary<>.asSimpleType()())
    {
      v57 = v22;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 134217984;
        *(v39 + 4) = v68;
        _os_log_impl(&_mh_execute_header, v37, v38, "sendMessage { reporterID=%lld }", v39, 0xCu);
      }

      v40 = v63;
      (*(v13 + 104))(v15, enum case for TraceCode.serverSendMessage(_:), v63);
      v41 = v68;
      static Utilities.positiveReporterID(_:)();
      default argument 1 of TraceArgs.init(arg1:arg2:arg3:arg4:)();
      default argument 2 of TraceArgs.init(arg1:arg2:arg3:arg4:)();
      default argument 3 of TraceArgs.init(arg1:arg2:arg3:arg4:)();
      v42 = v15;
      v43 = v13;
      v44 = v61;
      TraceArgs.init(arg1:arg2:arg3:arg4:)();
      static Trace.post(_:args:)();
      (*(v64 + 8))(v44, v65);
      (*(v43 + 8))(v42, v40);
      v45 = type metadata accessor for Message.Metadata();
      (*(*(v45 - 8) + 56))(v66, 1, 1, v45);
      v46 = v67;
      Message.init(category:type:content:metadata:)();
      if (sub_10000B9D0(v46, v41))
      {
        (*(v62 + 8))(v67, v60);
      }

      else
      {
        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          *v55 = 134217984;
          *(v55 + 4) = v68;
          _os_log_impl(&_mh_execute_header, v53, v54, "Message not sent. { reporterID=%lld }", v55, 0xCu);
        }

        (*(v62 + 8))(v67, v60);
      }
    }

    else
    {
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&_mh_execute_header, v50, v51, "Message cannot be converted to simple type. Aborting send.", v52, 2u);
      }
    }
  }

  else
  {
    static Logger.service.getter();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "ClientServerInstance is gone. { action=send }", v49, 2u);
    }

    (*(v17 + 8))(v19, v16);
  }
}

uint64_t sub_10000B6B8()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_10000B6EC(uint64_t a1)
{

  v3 = sub_10000CBC0(a1, v1);

  if (*(v3 + 16))
  {
    v5 = *(v1 + 80);
    if (v5)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v7 = v5;
      sub_100007184(v3, sub_100006BA4, 0, isUniquelyReferenced_nonNull_native, &v7);

      *(v1 + 80) = v7;
    }

    else
    {
      *(v1 + 80) = v3;
    }
  }

  else
  {
  }

  return result;
}

uint64_t sub_10000B7FC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_10000B964(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_100029FE8();
      goto LABEL_7;
    }

    sub_1000113FC(v13, a3 & 1);
    v24 = sub_10000B964(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    type metadata accessor for AudioEventCategory(0);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = type metadata accessor for Message();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_10000D500(v10, a2, a1, v16);
}

unint64_t sub_10000B964(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  v2 = Hasher._finalize()();

  return sub_10000D7FC(v1, v2);
}

uint64_t sub_10000B9D0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Message.Metadata();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(*(v2 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_server) + OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue);
  *v12 = v13;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v12, v9);
  if (v13)
  {
    if (static Constants.unknownReporterID.getter() == a2)
    {
      v16 = sub_100013DB8(a1);
      return v16 & 1;
    }

    v17 = sub_100003D80(a2, 0, 0x737365636F7270, 0xE700000000000000);
    if (v17)
    {
      v18 = v17;
      Message.metadata.getter();
      v19 = Message.Metadata.isBroadcast.getter();
      (*(v6 + 8))(v8, v5);
      if ((v19 & 1) == 0 || *(v18 + 66) == 1)
      {
        v20 = sub_10000DF9C(a1, v18);

        v16 = v20;
        return v16 & 1;
      }

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 134217984;
        *(v26 + 4) = a2;
        _os_log_impl(&_mh_execute_header, v24, v25, "Session is not started. Abandoning broadcast message. { reporterID=%lld }", v26, 0xCu);
      }
    }

    else
    {
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 134217984;
        *(v23 + 4) = a2;
        _os_log_impl(&_mh_execute_header, v21, v22, "Session not found! Abandoning message. { reporterID=%lld }", v23, 0xCu);
      }
    }

    v16 = 0;
    return v16 & 1;
  }

  __break(1u);
  return result;
}

void sub_10000BD5C()
{
  v1 = v0;
  v2 = type metadata accessor for TraceArgs();
  v27 = *(v2 - 8);
  v28 = v2;
  __chkstk_darwin(v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TraceCode();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001712C(&qword_100045DF0, &qword_100036660);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - v10;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v1 + OBJC_IVAR____TtC15audioanalyticsd7Session_workQueue);
  *v15 = v16;
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v15, v12);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    *(v20 + 4) = *(v1 + 16);

    _os_log_impl(&_mh_execute_header, v18, v19, "startOnQueue() called. { reporterID=%lld }", v20, 0xCu);
  }

  else
  {
  }

  v21 = type metadata accessor for Date();
  (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
  v22 = OBJC_IVAR____TtC15audioanalyticsd7Session_stopSignalTime;
  swift_beginAccess();
  sub_10000C27C(v11, v1 + v22, &qword_100045DF0, &qword_100036660);
  swift_endAccess();
  if (*(v1 + 66) != 1)
  {
    *(v1 + 66) = 1;
    if (qword_1000453C0 == -1)
    {
LABEL_9:
      sub_100005EA4(qword_100046150);
      sub_10000F604();
      (*(v6 + 104))(v8, enum case for TraceCode.sessionCreate(_:), v5);
      static Utilities.positiveReporterID(_:)();
      default argument 2 of TraceArgs.init(arg1:arg2:arg3:arg4:)();
      default argument 3 of TraceArgs.init(arg1:arg2:arg3:arg4:)();
      TraceArgs.init(arg1:arg2:arg3:arg4:)();
      static Trace.post(_:args:)();
      (*(v27 + 8))(v4, v28);
      (*(v6 + 8))(v8, v5);
      return;
    }

LABEL_12:
    swift_once();
    goto LABEL_9;
  }

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134217984;
    *(v25 + 4) = *(v1 + 16);

    _os_log_impl(&_mh_execute_header, v23, v24, "Session already started. { reporterID=%lld }", v25, 0xCu);
  }

  else
  {
  }
}

uint64_t sub_10000C27C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10001712C(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000C2F0@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  sub_10000C454(v1 + 96, &v7, &qword_100045598, &qword_1000360E0);
  if (v8)
  {
    return sub_10000C43C(&v7, a1);
  }

  sub_100006CC8(&v7, &qword_100045598, &qword_1000360E0);
  v4 = type metadata accessor for NonOwningSession();
  swift_allocObject();
  v5 = v1;
  v6 = sub_10000F010(v1);
  a1[3] = v4;
  a1[4] = sub_100001CF0(&qword_100045DD0, type metadata accessor for NonOwningSession, &unk_1000361B4);
  *a1 = v6;
  sub_10000AE18(a1, &v7);
  swift_beginAccess();
  sub_10000C27C(&v7, v5 + 96, &qword_100045598, &qword_1000360E0);
  return swift_endAccess();
}

uint64_t sub_10000C43C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000C454(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10001712C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000C4BC()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0xFFFFLL;
  }

  v1 = *(Strong + 64);

  return v1;
}

uint64_t *sub_10000C4FC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10000C560()
{
  v1 = sub_10001712C(&qword_1000457E8, &qword_1000364F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  v4 = type metadata accessor for Keys();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
  }

  else
  {
    sub_100005ADC(&_swiftEmptyArrayStorage);
  }

  (*(v5 + 104))(v7, enum case for Keys.applicationName(_:), v4);
  Dictionary<>.subscript.getter();

  (*(v5 + 8))(v7, v4);
  v8 = type metadata accessor for SimpleType();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v3, 1, v8) == 1)
  {
    sub_10000C80C(v3);
LABEL_9:
    v10 = *(v0 + 16);

    return v10;
  }

  if ((*(v9 + 88))(v3, v8) != enum case for SimpleType.string(_:))
  {
    (*(v9 + 8))(v3, v8);
    goto LABEL_9;
  }

  (*(v9 + 96))(v3, v8);
  return *v3;
}

uint64_t sub_10000C80C(uint64_t a1)
{
  v2 = sub_10001712C(&qword_1000457E8, &qword_1000364F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000C880(uint64_t a1)
{
  v2 = sub_10001712C(&qword_100045598, &qword_1000360E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000C8E8(void (*a1)(void))
{

  a1(*(v1 + 40));

  return _swift_deallocObject(v1, 48, 7);
}

char *sub_10000C940()
{
  v1 = v0;
  v35 = type metadata accessor for SimpleType();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001712C(&qword_100045408, &unk_1000364E0);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_10000CBC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = swift_retain_n();
  if (v7 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v11 = sub_10002E414(v13, v8, a1, a2);

      return v11;
    }
  }

  __chkstk_darwin(v10);
  bzero(&v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v9);

  v11 = sub_10000D100((&v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0)), v8, a1, a2);

  if (v3)
  {
    swift_willThrow();
  }

  return v11;
}

Swift::Int sub_10000CD80(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v48 = a1;
  v7 = type metadata accessor for SimpleType();
  v54 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v55 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v50 = &v44 - v11;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v49 = v10;
  sub_10001712C(&qword_100045408, &unk_1000364E0);
  result = static _DictionaryStorage.allocate(capacity:)();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *v48;
  }

  v15 = 0;
  v46 = result;
  v47 = v54 + 16;
  v16 = v54 + 32;
  v17 = result + 64;
  v18 = v49;
  v45 = a4;
  while (v14)
  {
    v19 = v18;
    v20 = v16;
    v21 = __clz(__rbit64(v14));
    v51 = (v14 - 1) & v14;
LABEL_16:
    v24 = v21 | (v15 << 6);
    v25 = a4[7];
    v26 = (a4[6] + 16 * v24);
    v27 = *v26;
    v28 = v26[1];
    v29 = v54;
    v53 = *(v54 + 72);
    v30 = v50;
    (*(v54 + 16))(v50, v25 + v53 * v24, v19);
    v31 = *(v29 + 32);
    v32 = v30;
    v16 = v20;
    v31(v55, v32, v19);
    v13 = v46;
    Hasher.init(_seed:)();

    v52 = v27;
    String.hash(into:)();
    result = Hasher._finalize()();
    v33 = -1 << *(v13 + 32);
    v34 = result & ~v33;
    v35 = v34 >> 6;
    if (((-1 << v34) & ~*(v17 + 8 * (v34 >> 6))) == 0)
    {
      v37 = 0;
      v38 = (63 - v33) >> 6;
      v18 = v49;
      while (++v35 != v38 || (v37 & 1) == 0)
      {
        v39 = v35 == v38;
        if (v35 == v38)
        {
          v35 = 0;
        }

        v37 |= v39;
        v40 = *(v17 + 8 * v35);
        if (v40 != -1)
        {
          v36 = __clz(__rbit64(~v40)) + (v35 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v36 = __clz(__rbit64((-1 << v34) & ~*(v17 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
    v18 = v49;
LABEL_26:
    *(v17 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
    v41 = (*(v13 + 48) + 16 * v36);
    v42 = v53;
    *v41 = v52;
    v41[1] = v28;
    result = (v31)(*(v13 + 56) + v36 * v42, v55, v18);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v45;
    v14 = v51;
    if (!a3)
    {
      return v13;
    }
  }

  v22 = v15;
  while (1)
  {
    v15 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v23 = v48[v15];
    ++v22;
    if (v23)
    {
      v19 = v18;
      v20 = v16;
      v21 = __clz(__rbit64(v23));
      v51 = (v23 - 1) & v23;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10000D100(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v45 = a4;
  v39 = a2;
  v40 = a1;
  v44 = sub_10001712C(&qword_100045DB0, &qword_100036630);
  __chkstk_darwin(v44);
  v6 = (&v38 - v5);
  v7 = type metadata accessor for SimpleType();
  result = __chkstk_darwin(v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v52 = a3;
  v15 = a3[8];
  v14 = a3 + 8;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v41 = 0;
  v42 = v9 + 16;
  v43 = v9;
  v46 = (v9 + 8);
  v47 = v19;
  v49 = result;
  v50 = v6;
  v48 = v11;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v53 = (v18 - 1) & v18;
LABEL_13:
    v23 = v20 | (v12 << 6);
    v24 = v52[7];
    v25 = (v52[6] + 16 * v23);
    v27 = *v25;
    v26 = v25[1];
    v28 = *(v43 + 72);
    v51 = v23;
    v29 = *(v43 + 16);
    v29(v11, v24 + v28 * v23, v7);
    *v6 = v27;
    v6[1] = v26;
    v29(v6 + *(v44 + 48), v11, v7);
    swift_bridgeObjectRetain_n();
    v30 = Config.neededPreviousFields.getter();
    if (*(v30 + 16) && (Hasher.init(_seed:)(), String.hash(into:)(), v31 = Hasher._finalize()(), v32 = -1 << *(v30 + 32), v33 = v31 & ~v32, ((*(v30 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0))
    {
      v34 = ~v32;
      while (1)
      {
        v35 = (*(v30 + 48) + 16 * v33);
        v36 = *v35 == v27 && v35[1] == v26;
        if (v36 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v33 = (v33 + 1) & v34;
        if (((*(v30 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v6 = v50;
      sub_100006CC8(v50, &qword_100045DB0, &qword_100036630);
      v11 = v48;
      v7 = v49;
      (*v46)(v48, v49);

      *(v40 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
      v37 = __OFADD__(v41++, 1);
      v19 = v47;
      v18 = v53;
      if (v37)
      {
        __break(1u);
        return sub_10000CD80(v40, v39, v41, v52);
      }
    }

    else
    {
LABEL_5:

      v6 = v50;
      sub_100006CC8(v50, &qword_100045DB0, &qword_100036630);
      v11 = v48;
      v7 = v49;
      (*v46)(v48, v49);

      v19 = v47;
      v18 = v53;
    }
  }

  v21 = v12;
  while (1)
  {
    v12 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      return sub_10000CD80(v40, v39, v41, v52);
    }

    v22 = v14[v12];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v53 = (v22 - 1) & v22;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10000D500(unint64_t a1, int a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 4 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for Message();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_10000D5AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10001712C(&qword_100045D70, &qword_1000365F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for Message();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_100006CC8(a1, &qword_100045D70, &qword_1000365F0);
    v13 = sub_10000B964(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100029FE8();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_10002C8CC(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_100006CC8(v8, &qword_100045D70, &qword_1000365F0);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_10000B7FC(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

unint64_t sub_10000D7FC(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_10000D868(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v44 = a4;
  v37 = type metadata accessor for Message.Metadata();
  v6 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RouterConfig();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = Config.routerConfigs.getter();
  v43 = *(v12 + 16);
  if (!v43)
  {
LABEL_40:

    if (qword_1000453A8 != -1)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  v13 = 0;
  v40 = v12 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v35 = (v6 + 8);
  v42 = (v9 + 8);
  v51 = xmmword_100035FB0;
  v47 = a3;
  v45 = a2;
  v38 = v9 + 16;
  v39 = v9;
  v41 = v12;
  while (v13 < *(v12 + 16))
  {
    v14 = *(v9 + 16);
    v14(v11, v40 + *(v9 + 72) * v13, v8);
    sub_10000E130(a3, v52);
    if (v53)
    {
      sub_10000AEC8(v52, v53);
      dispatch thunk of SessionProtocol.serviceType.getter();
      sub_10000AE7C(v52);
    }

    else
    {
      sub_10000C880(v52);
    }

    sub_10001712C(&qword_1000457F0, &qword_1000362C0);
    v15 = swift_allocObject();
    *(v15 + 16) = v51;
    *(v15 + 56) = v8;
    *(v15 + 64) = &protocol witness table for RouterConfig;
    v16 = sub_10000C4FC((v15 + 32));
    v14(v16, v11, v8);
    v50 = static ConfigCommon.matches(audioServiceType:config:)();

    sub_10000E130(a3, v52);
    if (v53)
    {
      sub_10000AEC8(v52, v53);
      dispatch thunk of SessionProtocol.clientProcessName.getter();
      sub_10000AE7C(v52);
    }

    else
    {
      sub_10000C880(v52);
    }

    v17 = swift_allocObject();
    *(v17 + 16) = v51;
    *(v17 + 56) = v8;
    *(v17 + 64) = &protocol witness table for RouterConfig;
    v18 = sub_10000C4FC((v17 + 32));
    v14(v18, v11, v8);
    v48 = static ConfigCommon.matches(sessionProcessName:config:)();

    sub_10000E130(a3, v52);
    if (v53)
    {
      sub_10000AEC8(v52, v53);
      dispatch thunk of SessionProtocol.appName.getter();
      sub_10000AE7C(v52);
    }

    else
    {
      sub_10000C880(v52);
    }

    v19 = swift_allocObject();
    *(v19 + 16) = v51;
    *(v19 + 56) = v8;
    *(v19 + 64) = &protocol witness table for RouterConfig;
    v20 = sub_10000C4FC((v19 + 32));
    v14(v20, v11, v8);
    v46 = static ConfigCommon.matches(sessionAppName:config:)();

    v21 = RouterConfig.audioEventType.getter();
    v22 = v21;
    if ((v21 & 0x10000) != 0)
    {
      v22 = Message.type.getter();
    }

    v49 = Message.type.getter();
    v23 = RouterConfig.audioEventCategory.getter();
    v24 = v23;
    if ((v23 & 0x100000000) != 0)
    {
      v24 = Message.category.getter();
    }

    v25 = Message.category.getter();
    v26 = RouterConfig.predicate.getter();
    if (v26)
    {
      v27 = v26;
      v28 = Message.flattenToAnyDictionary()();
      sub_10000E1A0(v28);

      v29 = static Predicate.evaluate(_:with:)();

      if (v44)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v29 = 1;
      if (v44)
      {
        goto LABEL_24;
      }
    }

    sub_10000E130(v47, v52);
    if (!v53)
    {
      sub_10000C880(v52);
      goto LABEL_33;
    }

    sub_10000AEC8(v52, v53);
    v30 = dispatch thunk of SessionProtocol.isSingleMessageSession.getter();
    sub_10000AE7C(v52);
    if (v30)
    {
LABEL_24:
      if (RouterConfig.broadcast.getter())
      {
        v31 = v36;
        Message.metadata.getter();
        Message.Metadata.isBroadcast.getter();
        (*v35)(v31, v37);
        if ((v50 & 1) != 0 && v22 == v49 && v24 == v25 && ((v29 ^ 1) & 1) == 0 && ((v48 ^ 1) & 1) == 0 && ((v46 ^ 1) & 1) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_3;
      }
    }

LABEL_33:
    if ((v50 & 1) != 0 && v22 == v49 && v24 == v25 && (v29 & 1) != 0 && ((v48 ^ 1) & 1) == 0 && ((v46 ^ 1) & 1) == 0)
    {
LABEL_39:

      v32 = RouterConfig.workers.getter();
      RouterConfig.discard.getter();
      (*v42)(v11, v8);
      return v32;
    }

LABEL_3:
    ++v13;
    (*v42)(v11, v8);
    a3 = v47;
    v9 = v39;
    v12 = v41;
    if (v43 == v13)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_44:
  swift_once();
LABEL_41:
  v32 = qword_100046128;

  return v32;
}

uint64_t sub_10000DF58@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  result = sub_100009FD8(a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_10000DF9C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  sub_10000C2F0(v12);
  sub_10000D868(v5, a1, v12, 0);
  LOWORD(v5) = v6;
  sub_10000C880(v12);

  if ((v5 & 0x100) != 0)
  {

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = *(a2 + 16);

      _os_log_impl(&_mh_execute_header, v9, v10, "Discarding message { reporterID=%lld }", v11, 0xCu);
    }

    else
    {
    }

    return 0;
  }

  else
  {
    __chkstk_darwin(v7);
    OS_dispatch_queue.sync<A>(execute:)();
    return LOBYTE(v12[0]);
  }
}

uint64_t sub_10000E130(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001712C(&qword_100045598, &qword_1000360E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Int sub_10000E1A0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10001712C(&qword_1000457F8, &qword_1000362C8);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10000E468(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_10000E4E0(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10000E4E0(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10000E4E0(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_10000E4E0(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10000E468(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_10000E4E0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *sub_10000E4F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Config.WorkerConfigs();
  v27 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v33 = &v26 - v8;
  if (!a2 || !*(a2 + 16))
  {
  }

  v29 = *(a1 + 16);
  if (!v29)
  {
    return &_swiftEmptyArrayStorage;
  }

  v9 = 0;
  v28 = a1 + 32;
  v31 = v27 + 16;
  v32 = a2 + 56;
  v10 = (v27 + 8);
  v26 = &_swiftEmptyArrayStorage;
  do
  {
    v30 = v9;
    sub_10000AE18(v28 + 40 * v9, &v35);
    sub_10000AEC8(&v35, v36);
    dispatch thunk of WorkerProtocol.workerConfig.getter();
    if (*(a2 + 16) && (sub_100001CF0(&qword_100045810, &type metadata accessor for Config.WorkerConfigs, &protocol conformance descriptor for Config.WorkerConfigs), v11 = dispatch thunk of Hashable._rawHashValue(seed:)(), v12 = -1 << *(a2 + 32), v13 = v11 & ~v12, ((*(v32 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0))
    {
      v14 = ~v12;
      v15 = *(v27 + 72);
      v16 = *(v27 + 16);
      while (1)
      {
        v17 = a2;
        v16(v7, *(a2 + 48) + v15 * v13, v4);
        sub_100001CF0(&qword_100045818, &type metadata accessor for Config.WorkerConfigs, &protocol conformance descriptor for Config.WorkerConfigs);
        v18 = dispatch thunk of static Equatable.== infix(_:_:)();
        v19 = *v10;
        (*v10)(v7, v4);
        if (v18)
        {
          break;
        }

        v13 = (v13 + 1) & v14;
        a2 = v17;
        if (((*(v32 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v19(v33, v4);
      sub_10000C43C(&v35, v34);
      v20 = v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v20;
      v37 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10001308C(0, v20[2] + 1, 1);
        v22 = v37;
      }

      a2 = v17;
      v24 = v22[2];
      v23 = v22[3];
      if (v24 >= v23 >> 1)
      {
        sub_10001308C((v23 > 1), v24 + 1, 1);
        v22 = v37;
      }

      v22[2] = v24 + 1;
      v26 = v22;
      sub_10000C43C(v34, &v22[5 * v24 + 4]);
    }

    else
    {
LABEL_5:
      (*v10)(v33, v4);
      sub_10000AE7C(&v35);
    }

    v9 = v30 + 1;
  }

  while (v30 + 1 != v29);
  return v26;
}

uint64_t sub_10000E894()
{
  v1 = sub_10001712C(&qword_1000457E8, &qword_1000364F0);
  __chkstk_darwin(v1 - 8);
  v3 = (&v12 - v2);
  v4 = type metadata accessor for Keys();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, enum case for Keys.applicationName(_:), v4);
  swift_beginAccess();
  Dictionary<>.subscript.getter();
  v8 = type metadata accessor for SimpleType();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v3, 1, v8) == 1)
  {
    sub_100006CC8(v3, &qword_1000457E8, &qword_1000364F0);
LABEL_6:
    swift_endAccess();
    (*(v5 + 8))(v7, v4);
    v10 = *(v0 + 32);

    return v10;
  }

  if ((*(v9 + 88))(v3, v8) != enum case for SimpleType.string(_:))
  {
    (*(v9 + 8))(v3, v8);
    goto LABEL_6;
  }

  (*(v9 + 96))(v3, v8);
  v10 = *v3;
  swift_endAccess();
  (*(v5 + 8))(v7, v4);
  return v10;
}

uint64_t sub_10000EB14(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Message();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10001712C(&qword_100045DC0, &qword_100036640);
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  v10 = sub_10001712C(&qword_100045D70, &qword_1000365F0);
  v11 = __chkstk_darwin(v10 - 8);
  v35 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v33 - v14;
  __chkstk_darwin(v13);
  v17 = &v33 - v16;
  v18 = Message.category.getter();
  v19 = OBJC_IVAR____TtC15audioanalyticsd7Session_messageHistory;
  swift_beginAccess();
  v20 = *(v2 + v19);
  if (*(v20 + 16) && (v21 = sub_10000B964(v18), (v22 & 1) != 0))
  {
    (*(v5 + 16))(v17, *(v20 + 56) + *(v5 + 72) * v21, v4);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = *(v5 + 56);
  v24(v17, v23, 1, v4);
  swift_endAccess();
  (*(v5 + 16))(v15, a1, v4);
  v24(v15, 0, 1, v4);
  v25 = *(v7 + 48);
  sub_10000C454(v17, v9, &qword_100045D70, &qword_1000365F0);
  sub_10000C454(v15, &v9[v25], &qword_100045D70, &qword_1000365F0);
  v26 = *(v5 + 48);
  if (v26(v9, 1, v4) != 1)
  {
    v28 = v35;
    sub_10000C454(v9, v35, &qword_100045D70, &qword_1000365F0);
    if (v26(&v9[v25], 1, v4) != 1)
    {
      v29 = v34;
      (*(v5 + 32))(v34, &v9[v25], v4);
      sub_100001CF0(&qword_100045DC8, &type metadata accessor for Message, &protocol conformance descriptor for Message);
      v30 = v28;
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      v31 = *(v5 + 8);
      v31(v29, v4);
      sub_100006CC8(v15, &qword_100045D70, &qword_1000365F0);
      sub_100006CC8(v17, &qword_100045D70, &qword_1000365F0);
      v31(v30, v4);
      sub_100006CC8(v9, &qword_100045D70, &qword_1000365F0);
      return v27 & 1;
    }

    sub_100006CC8(v15, &qword_100045D70, &qword_1000365F0);
    sub_100006CC8(v17, &qword_100045D70, &qword_1000365F0);
    (*(v5 + 8))(v28, v4);
    goto LABEL_10;
  }

  sub_100006CC8(v15, &qword_100045D70, &qword_1000365F0);
  sub_100006CC8(v17, &qword_100045D70, &qword_1000365F0);
  if (v26(&v9[v25], 1, v4) != 1)
  {
LABEL_10:
    sub_100006CC8(v9, &qword_100045DC0, &qword_100036640);
    v27 = 0;
    return v27 & 1;
  }

  sub_100006CC8(v9, &qword_100045D70, &qword_1000365F0);
  v27 = 1;
  return v27 & 1;
}

uint64_t sub_10000F010(uint64_t a1)
{
  swift_weakInit();
  v3 = *(a1 + 40);
  *(v1 + 16) = *(a1 + 32);
  *(v1 + 24) = v3;
  *(v1 + 32) = *(a1 + 16);
  *(v1 + 40) = *(a1 + 24);
  *(v1 + 44) = *(a1 + 48);
  *(v1 + 48) = *(a1 + 56);
  swift_weakAssign();

  return v1;
}

void *sub_10000F08C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_10001712C(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = &_swiftEmptyArrayStorage;
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
    sub_10001712C(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

Swift::Int sub_10000F1D4(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_10002E4C4(v4);
  }

  v5 = v4[2];
  v7[0] = (v4 + 4);
  v7[1] = v5;
  result = sub_10000F24C(v7, a2);
  *a1 = v4;
  return result;
}

Swift::Int sub_10000F24C(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = a1[1];
  result = _minimumMergeRunLength(_:)(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      if (v4 <= 1)
      {
        v7 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_10001712C(&qword_100045BB0, &qword_100036500);
        v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v7[2] = v4 / 2;
      }

      v9[0] = (v7 + 4);
      v9[1] = v4 / 2;
      v8 = v7;
      sub_10002D3EC(v9, v10, a1, v6, a2, a2);
      v8[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return sub_10000F364(0, v4, 1, a1, a2);
  }

  return result;
}

uint64_t sub_10000F364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v36 = a5;
  v35 = type metadata accessor for Config.WorkerConfigs();
  v9 = __chkstk_darwin(v35);
  v34 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v33 = &v26 - v13;
  v27 = a2;
  if (a3 != a2)
  {
    v31 = *a4;
    v32 = (v12 + 8);
    v14 = v31 + 40 * a3;
    v15 = a1 - a3;
LABEL_5:
    v29 = v14;
    v30 = a3;
    v28 = v15;
    v37 = v15;
    v16 = v14;
    while (1)
    {
      sub_10000AE18(v16, &v40);
      sub_10000AE18(v16 - 40, v39);
      sub_10000AEC8(&v40, v41);
      v17 = v33;
      v18 = dispatch thunk of WorkerProtocol.workerConfig.getter();
      v19 = v36;
      LOBYTE(v42) = v36(v18);
      v42 = v42;
      v38 = *v32;
      v20 = v35;
      v38(v17, v35);
      sub_10000AEC8(v39, v39[3]);
      v21 = v34;
      v22 = dispatch thunk of WorkerProtocol.workerConfig.getter();
      v23 = v19(v22);
      v38(v21, v20);
      sub_10000AE7C(v39);
      result = sub_10000AE7C(&v40);
      if (v42 >= v23)
      {
LABEL_4:
        a3 = v30 + 1;
        v14 = v29 + 40;
        v15 = v28 - 1;
        if (v30 + 1 == v27)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v31)
      {
        break;
      }

      sub_10000C43C(v16, &v40);
      v24 = *(v16 - 24);
      *v16 = *(v16 - 40);
      *(v16 + 16) = v24;
      *(v16 + 32) = *(v16 - 8);
      result = sub_10000C43C(&v40, v16 - 40);
      v16 -= 40;
      if (__CFADD__(v37++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10000F604()
{
  v1 = sub_10001712C(&qword_100045480, &qword_100035FD8);
  __chkstk_darwin(v1 - 8);
  v3 = &v22[-v2];
  v4 = type metadata accessor for Message();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((*(v0 + 24) & 1) == 0)
  {
    v9 = *(v0 + OBJC_IVAR____TtC15audioanalyticsd7Session_numProcessedMessages);
    v10 = *(v0 + OBJC_IVAR____TtC15audioanalyticsd7Session_numProcessedMessagesUnique);
    v11 = *(v0 + 16);
    v12 = *(v0 + 66);
    v14 = *(v0 + 32);
    v13 = *(v0 + 40);
    v24[0] = 0;
    v25 = v9;
    v26 = v10;
    v27 = v11;
    v28 = v12;
    v29 = v14;
    v30 = v13;
    v31 = 0;

    sub_10000F954();
    v15 = type metadata accessor for Message.Metadata();
    (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
    Message.init(category:type:content:metadata:)();
    v16 = *(v0 + 80);
    if (v16 && *(v16 + 16))
    {

      Config.neededPreviousFields.getter();
      Message.copyPrevious(fields:from:)();
    }

    swift_beginAccess();
    if (static SystemMonitor.shared)
    {
      v17 = *(static SystemMonitor.shared + 16);

      os_unfair_lock_lock((v17 + 24));
      sub_100010128((v17 + 16), &v23);
      os_unfair_lock_unlock((v17 + 24));
      sub_100011370(v24);

      v18 = v23;

      Message.addToContent(from:)(v18);
    }

    else
    {
      sub_100011370(v24);
    }

    if ((sub_100009FD8(v8) & 1) == 0)
    {

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 134217984;
        *(v21 + 4) = v11;

        _os_log_impl(&_mh_execute_header, v19, v20, "Start message dropped. { reporterID=%lld }", v21, 0xCu);
      }

      else
      {
      }
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

unint64_t sub_10000F954()
{
  v93 = type metadata accessor for SimpleType();
  v1 = *(v93 - 8);
  v2 = __chkstk_darwin(v93);
  v4 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v78 - v5;
  v7 = type metadata accessor for Keys();
  v88 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v85 = &v78 - v11;
  sub_10001712C(&qword_100045E10, &qword_100036680);
  v96 = sub_10001712C(&qword_100045400, &unk_100035E10);
  v12 = (*(*(v96 - 8) + 80) + 32) & ~*(*(v96 - 8) + 80);
  v91 = *(*(v96 - 8) + 72);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1000366A0;
  v14 = (v13 + v12);
  *v14 = 0x646F6874656DLL;
  v14[1] = 0xE600000000000000;
  v94 = v0;
  v15 = *v0;
  v81 = v4;
  v79 = v6;
  v89 = v13;
  v86 = v10;
  v87 = v7;
  if (v15)
  {
    if (v15 == 1)
    {
      v16 = 0x735F6C616E676973;
      v17 = 0xEB00000000706F74;
    }

    else
    {
      v17 = 0xE400000000000000;
      v16 = 1886352499;
    }
  }

  else
  {
    v17 = 0xE500000000000000;
    v16 = 0x7472617473;
  }

  v18 = v96;
  v19 = (v14 + *(v96 + 48));
  *v19 = v16;
  v19[1] = v17;
  v20 = *(v1 + 104);
  v84 = enum case for SimpleType.string(_:);
  v21 = v93;
  v95 = v1 + 104;
  v92 = v20;
  v20();
  strcpy(v97, "num_messages_");
  HIWORD(v97[1]) = -4864;
  v22 = 0xE400000000000000;
  if (v15 == 1)
  {
    v23 = 0x735F6C616E676973;
  }

  else
  {
    v23 = 1886352499;
  }

  if (v15 == 1)
  {
    v22 = 0xEB00000000706F74;
  }

  v90 = v15;
  if (v15)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0x7472617473;
  }

  if (v15)
  {
    v25 = v22;
  }

  else
  {
    v25 = 0xE500000000000000;
  }

  v80 = v1;
  v26 = v91;
  v27 = (v14 + v91);
  v28 = *(v18 + 48);
  v29 = v25;
  String.append(_:)(*&v24);

  v30 = v97[1];
  *v27 = v97[0];
  v27[1] = v30;
  v31 = v94;
  *(v27 + v28) = *(v94 + 1);
  LODWORD(v83) = enum case for SimpleType.uint(_:);
  (v92)(v27 + v28);
  v97[0] = 0;
  v97[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  v97[0] = 0xD000000000000014;
  v97[1] = 0x80000001000379C0;
  v32 = 0xE400000000000000;
  v33 = 0x735F6C616E676973;
  if (v90 == 1)
  {
    v32 = 0xEB00000000706F74;
  }

  else
  {
    v33 = 1886352499;
  }

  if (v90)
  {
    v34 = v33;
  }

  else
  {
    v34 = 0x7472617473;
  }

  if (v90)
  {
    v35 = v32;
  }

  else
  {
    v35 = 0xE500000000000000;
  }

  v36 = v21;
  v37 = 2 * v26;
  v38 = v26;
  v39 = (v14 + 2 * v26);
  v40 = *(v96 + 48);
  v41 = v96;
  v42 = v35;
  String.append(_:)(*&v34);

  v43 = v97[1];
  *v39 = v97[0];
  v39[1] = v43;
  *(v39 + v40) = *(v31 + 2);
  (v92)(v39 + v40, v83, v36);
  v44 = (v14 + v37 + v38);
  v45 = *(v41 + 48);
  v46 = v88;
  v83 = v88[13];
  v47 = v85;
  v48 = v87;
  v83(v85, enum case for Keys.reporterID(_:), v87);
  v49 = Keys.rawValue.getter();
  v51 = v50;
  v82 = v46[1];
  v82(v47, v48);
  *v44 = v49;
  v44[1] = v51;
  v52 = v93;
  *(v44 + v45) = *(v94 + 3);
  v53 = v92;
  (v92)(v44 + v45, enum case for SimpleType.int(_:), v52);
  v88 = v14;
  v54 = (v14 + 4 * v91);
  v55 = *(v96 + 48);
  v56 = v86;
  v83(v86, enum case for Keys.applicationName(_:), v48);
  v57 = v94;
  v58 = Keys.rawValue.getter();
  v60 = v59;
  v82(v56, v48);
  v61 = v93;
  *v54 = v58;
  v54[1] = v60;
  *(v54 + v55) = *(v57 + 40);
  v62 = v54 + v55;
  v63 = v61;
  (v53)(v62, v84);
  v98 = 0x5F676E696E6E7572;
  v99 = 0xEB000000005F7461;
  if (v90)
  {
    v64 = v53;
    if (v90 == 1)
    {
      v65 = 0x735F6C616E676973;
      v66 = 0xEB00000000706F74;
    }

    else
    {
      v66 = 0xE400000000000000;
      v65 = 1886352499;
    }
  }

  else
  {
    v64 = v53;
    v66 = 0xE500000000000000;
    v65 = 0x7472617473;
  }

  v67 = v63;
  v68 = (v88 + 5 * v91);
  v69 = *(v96 + 48);
  sub_1000113C4(v57, v97);
  v70._countAndFlagsBits = v65;
  v70._object = v66;
  String.append(_:)(v70);

  v71 = v99;
  *v68 = v98;
  v68[1] = v71;
  *(v68 + v69) = *(v57 + 32);
  v72 = enum case for SimpleType.BOOL(_:);
  (v64)(v68 + v69, enum case for SimpleType.BOOL(_:), v67);
  v73 = sub_100005ADC(v89);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (*(v57 + 56))
  {
    v74 = v79;
    *v79 = *(v57 + 56);
    (v64)(v74, v72, v67);
    v75 = v81;
    (*(v80 + 32))(v81, v74, v67);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v97[0] = v73;
    sub_10002943C(v75, 0xD000000000000014, 0x80000001000379E0, isUniquelyReferenced_nonNull_native);
    return v97[0];
  }

  return v73;
}

uint64_t sub_100010128@<X0>(uint64_t *a1@<X0>, unint64_t **a2@<X8>)
{
  v3 = v2;
  v49 = a2;
  v60 = sub_10001712C(&qword_100046050, &qword_100036868);
  v5 = __chkstk_darwin(v60);
  v59 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v58 = &v47 - v7;
  v8 = sub_10001712C(&qword_100045400, &unk_100035E10);
  v56 = *(v8 - 8);
  v57 = v8;
  __chkstk_darwin(v8);
  v10 = &v47 - v9;
  v11 = *a1;
  v12 = *(*a1 + 16);
  v13 = &_swiftEmptyArrayStorage;
  if (v12)
  {
    v48 = v2;
    v65 = &_swiftEmptyArrayStorage;
    sub_100011760(0, v12, 0);
    v13 = v65;
    v14 = v11 + 64;
    v15 = _HashTable.startBucket.getter();
    v16 = 0;
    v17 = *(v11 + 36);
    v50 = v11 + 72;
    v51 = v12;
    v54 = v11;
    v55 = v10;
    v52 = v17;
    v53 = v11 + 64;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(v11 + 32))
    {
      if ((*(v14 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_27;
      }

      if (v17 != *(v11 + 36))
      {
        goto LABEL_28;
      }

      v62 = 1 << v15;
      v63 = v15 >> 6;
      v61 = v16;
      v19 = v60;
      v64 = v13;
      v20 = *(v60 + 48);
      v21 = *(v11 + 48);
      v22 = (type metadata accessor for FeatureInfo(0) - 8);
      v23 = v58;
      sub_1000108FC(v21 + *(*v22 + 72) * v15, v58, type metadata accessor for FeatureInfo);
      v24 = *(v11 + 56);
      v25 = (type metadata accessor for FeatureState(0) - 8);
      sub_1000108FC(v24 + *(*v25 + 72) * v15, v23 + v20, type metadata accessor for FeatureState);
      v26 = v59;
      sub_100010D10(v23, v59, type metadata accessor for FeatureInfo);
      v27 = *(v19 + 48);
      v28 = v55;
      v29 = v26 + v27;
      sub_100010D10(v23 + v20, v26 + v27, type metadata accessor for FeatureState);
      v30 = *(v57 + 48);
      v31 = (v26 + v22[7]);
      v33 = *v31;
      v32 = v31[1];
      v34 = v25[7];
      v35 = type metadata accessor for SimpleType();
      (*(*(v35 - 8) + 16))(&v28[v30], v29 + v34, v35);
      *v28 = v33;
      *(v28 + 1) = v32;
      v13 = v64;

      sub_100006CC8(v26, &qword_100046050, &qword_100036868);
      v65 = v13;
      v37 = v13[2];
      v36 = v13[3];
      if (v37 >= v36 >> 1)
      {
        sub_100011760((v36 > 1), v37 + 1, 1);
        v13 = v65;
      }

      v13[2] = v37 + 1;
      sub_100010D78(v28, v13 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v37);
      v11 = v54;
      v18 = 1 << *(v54 + 32);
      if (v15 >= v18)
      {
        goto LABEL_29;
      }

      v14 = v53;
      v38 = *(v53 + 8 * v63);
      if ((v38 & v62) == 0)
      {
        goto LABEL_30;
      }

      LODWORD(v17) = v52;
      if (v52 != *(v54 + 36))
      {
        goto LABEL_31;
      }

      v39 = v38 & (-2 << (v15 & 0x3F));
      if (v39)
      {
        v18 = __clz(__rbit64(v39)) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v40 = v63 << 6;
        v41 = v63 + 1;
        v42 = (v50 + 8 * v63);
        while (v41 < (v18 + 63) >> 6)
        {
          v44 = *v42++;
          v43 = v44;
          v40 += 64;
          ++v41;
          if (v44)
          {
            sub_100007BDC(v15, v52, 0);
            v18 = __clz(__rbit64(v43)) + v40;
            goto LABEL_4;
          }
        }

        sub_100007BDC(v15, v52, 0);
      }

LABEL_4:
      v16 = v61 + 1;
      v15 = v18;
      if (v61 + 1 == v51)
      {
        v3 = v48;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
LABEL_21:
    if (v13[2])
    {
      sub_10001712C(&qword_100045408, &unk_1000364E0);
      v45 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v45 = &_swiftEmptyDictionarySingleton;
    }

    v65 = v45;
    result = sub_100010DE8(v13, 1, &v65);
    if (!v3)
    {
      *v49 = v65;
      return result;
    }
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void *sub_100010648(void *result, int64_t a2, char a3, void *a4)
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
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10001712C(&qword_100045E10, &qword_100036680);
  v10 = *(sub_10001712C(&qword_100045400, &unk_100035E10) - 8);
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
  v15 = *(sub_10001712C(&qword_100045400, &unk_100035E10) - 8);
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

uint64_t sub_1000108FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100010964(uint64_t a1, int a2, __int16 a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v22 = *(v13 - 8);
  v23 = v13;
  __chkstk_darwin(v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(*(v5 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_server) + OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = a4;
  *(v18 + 32) = a2;
  *(v18 + 36) = a3;
  *(v18 + 40) = a1;
  aBlock[4] = sub_10000BD44;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000016B8;
  aBlock[3] = &unk_100041790;
  v19 = _Block_copy(aBlock);
  v20 = v16;

  static DispatchQoS.unspecified.getter();
  v25 = &_swiftEmptyArrayStorage;
  sub_100001C60(&qword_100045460, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10001712C(&unk_100045920, &qword_100035FC0);
  sub_100001BC4(&qword_100045468, &unk_100045920, &qword_100035FC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v24 + 8))(v12, v10);
  (*(v22 + 8))(v15, v23);
}

uint64_t sub_100010CB8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100010D10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100010D78(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001712C(&qword_100045400, &unk_100035E10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100010DE8(uint64_t a1, int a2, void *a3)
{
  v7 = type metadata accessor for SimpleType();
  v64 = *(v7 - 8);
  __chkstk_darwin(v7);
  v65 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001712C(&qword_100045400, &unk_100035E10);
  v63 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = (&v56 - v11);
  v60 = *(a1 + 16);
  if (!v60)
  {
  }

  v56 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v57 = a2;
  v13 = *(v10 + 48);
  v14 = *(v63 + 80);
  v61 = a1;
  v15 = (v64 + 32);
  v58 = a1 + ((v14 + 32) & ~v14);
  sub_10000C454(v58, v12, &qword_100045400, &unk_100035E10);
  v16 = v12[1];
  v68 = *v12;
  v17 = v68;
  v69 = v16;
  v18 = *v15;
  v59 = v13;
  v19 = v12 + v13;
  v20 = v18;
  v62 = v7;
  v18(v65, v19, v7);
  v21 = *a3;
  v23 = sub_10000710C(v17, v16);
  v24 = v21[2];
  v25 = (v22 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v27 = v22;
  if (v21[3] >= v26)
  {
    if (v57)
    {
      if ((v22 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_10000C940();
      if ((v27 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_100007518(v26, v57 & 1);
  v28 = sub_10000710C(v17, v16);
  if ((v27 & 1) == (v29 & 1))
  {
    v23 = v28;
    if ((v27 & 1) == 0)
    {
LABEL_14:
      v32 = *a3;
      *(*a3 + 8 * (v23 >> 6) + 64) |= 1 << v23;
      v33 = (v32[6] + 16 * v23);
      *v33 = v17;
      v33[1] = v16;
      v34 = v62;
      v20((v32[7] + *(v64 + 72) * v23), v65, v62);
      v35 = v32[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v32[2] = v37;
      if (v60 != 1)
      {
        v38 = 1;
        while (v38 < *(v61 + 16))
        {
          sub_10000C454(v58 + *(v63 + 72) * v38, v12, &qword_100045400, &unk_100035E10);
          v39 = v12[1];
          v68 = *v12;
          v40 = v68;
          v69 = v39;
          v41 = *v15;
          (*v15)(v65, v12 + v59, v34);
          v42 = *a3;
          v43 = sub_10000710C(v40, v39);
          v45 = v42[2];
          v46 = (v44 & 1) == 0;
          v36 = __OFADD__(v45, v46);
          v47 = v45 + v46;
          if (v36)
          {
            goto LABEL_26;
          }

          v48 = v44;
          if (v42[3] < v47)
          {
            sub_100007518(v47, 1);
            v43 = sub_10000710C(v40, v39);
            if ((v48 & 1) != (v49 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v48)
          {
            goto LABEL_11;
          }

          v50 = *a3;
          *(*a3 + 8 * (v43 >> 6) + 64) |= 1 << v43;
          v51 = (v50[6] + 16 * v43);
          *v51 = v40;
          v51[1] = v39;
          v34 = v62;
          v41((v50[7] + *(v64 + 72) * v43), v65, v62);
          v52 = v50[2];
          v36 = __OFADD__(v52, 1);
          v53 = v52 + 1;
          if (v36)
          {
            goto LABEL_27;
          }

          ++v38;
          v50[2] = v53;
          if (v60 == v38)
          {
          }
        }

        goto LABEL_25;
      }
    }

LABEL_11:
    v30 = swift_allocError();
    swift_willThrow();

    v70 = v30;
    swift_errorRetain();
    sub_10001712C(&qword_100046058, &qword_100036870);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v64 + 8))(v65, v62);
    }

    goto LABEL_29;
  }

LABEL_28:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_29:
  v66 = 0;
  v67 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v54._object = 0x8000000100037AC0;
  v54._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v54);
  _print_unlocked<A, B>(_:_:)();
  v55._countAndFlagsBits = 39;
  v55._object = 0xE100000000000000;
  String.append(_:)(v55);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Int sub_1000113FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v41 = type metadata accessor for Message();
  v5 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_10001712C(&qword_100045430, &qword_100035E40);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
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
    v36 = (v5 + 16);
    v37 = v7;
    v38 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = *(*(v7 + 48) + 4 * v22);
      v25 = *(v38 + 72);
      v26 = v23 + v25 * v22;
      if (v39)
      {
        (*v16)(v40, v26, v41);
      }

      else
      {
        (*v36)(v40, v26, v41);
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v24);
      result = Hasher._finalize()();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 4 * v18) = v24;
      result = (*v16)(*(v9 + 56) + v25 * v18, v40, v41);
      ++*(v9 + 16);
      v7 = v37;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v7 + 32);
    v3 = v35;
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

LABEL_34:
  *v3 = v9;
  return result;
}

void *sub_100011760(void *a1, int64_t a2, char a3)
{
  result = sub_100010648(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_10001178C()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = *(v1 + 72);

    return v2;
  }

  else
  {

    return sub_100005ADC(&_swiftEmptyArrayStorage);
  }
}

void sub_100011818()
{
  v1 = v0;
  v2 = sub_10001712C(&qword_100045DF0, &qword_100036660);
  v3 = __chkstk_darwin(v2 - 8);
  v41 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v40 - v5;
  v7 = sub_10001712C(&qword_100045480, &qword_100035FD8);
  __chkstk_darwin(v7 - 8);
  v9 = &v40 - v8;
  v10 = type metadata accessor for Message();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v1 + OBJC_IVAR____TtC15audioanalyticsd7Session_workQueue);
  *v17 = v18;
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v17, v14);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v20, v21))
  {

    if (*(v1 + 24))
    {
      goto LABEL_15;
    }

LABEL_6:
    if (*(v1 + 66) == 1)
    {
      v23 = *(v1 + OBJC_IVAR____TtC15audioanalyticsd7Session_numProcessedMessages);
      v24 = *(v1 + OBJC_IVAR____TtC15audioanalyticsd7Session_numProcessedMessagesUnique);
      v25 = *(v1 + 16);
      v27 = *(v1 + 32);
      v26 = *(v1 + 40);
      v42[0] = 1;
      v43 = v23;
      v44 = v24;
      v45 = v25;
      v46 = 1;
      v47 = v27;
      v48 = v26;
      v49 = 0;

      sub_10000F954();
      sub_100011370(v42);
      v28 = type metadata accessor for Message.Metadata();
      (*(*(v28 - 8) + 56))(v9, 1, 1, v28);
      Message.init(category:type:content:metadata:)();
      if ((sub_100009FD8(v13) & 1) == 0)
      {

        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 134217984;
          *(v31 + 4) = v25;

          _os_log_impl(&_mh_execute_header, v29, v30, "signalStop message dropped. { reporterID=%lld }", v31, 0xCu);
        }

        else
        {
        }
      }

      (*(v11 + 8))(v13, v10);
    }

    else
    {

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 134217984;
        *(v34 + 4) = *(v1 + 16);

        _os_log_impl(&_mh_execute_header, v32, v33, "Not sending stop message, because !isStarted. { reporterID=%lld }", v34, 0xCu);
      }

      else
      {
      }
    }

    goto LABEL_15;
  }

  v22 = swift_slowAlloc();
  *v22 = 67174913;
  *(v22 + 4) = *(v1 + 66);
  *(v22 + 8) = 2048;
  *(v22 + 10) = *(v1 + 16);

  _os_log_impl(&_mh_execute_header, v20, v21, "signalStop() called. { isStarted=%{BOOL,private}d, reporterID=%lld }", v22, 0x12u);

  if ((*(v1 + 24) & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_15:
  if (*(v1 + 66) == 1)
  {
    v35 = OBJC_IVAR____TtC15audioanalyticsd7Session_stopSignalTime;
    swift_beginAccess();
    sub_10000C454(v1 + v35, v6, &qword_100045DF0, &qword_100036660);
    v36 = type metadata accessor for Date();
    v37 = *(v36 - 8);
    v38 = (*(v37 + 48))(v6, 1, v36);
    sub_100006CC8(v6, &qword_100045DF0, &qword_100036660);
    if (v38 == 1)
    {
      v39 = v41;
      Date.init()();
      (*(v37 + 56))(v39, 0, 1, v36);
      swift_beginAccess();
      sub_10000C27C(v39, v1 + v35, &qword_100045DF0, &qword_100036660);
      swift_endAccess();
      sub_100011E88();
    }
  }
}

void sub_100011E88()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v2 - 8);
  v42 = v2;
  __chkstk_darwin(v2);
  v39 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for DispatchQoS();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v37 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchTimeInterval();
  v34 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = type metadata accessor for DispatchTime();
  v36 = *(v43 - 8);
  v8 = __chkstk_darwin(v43);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v33 - v11;
  v13 = sub_10001712C(&qword_100045DF0, &qword_100036660);
  __chkstk_darwin(v13 - 8);
  v15 = &v33 - v14;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = (&v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v1 + OBJC_IVAR____TtC15audioanalyticsd7Session_workQueue);
  *v19 = v20;
  (*(v17 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v16);
  v35 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v19, v16);
  if (v20)
  {

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      *(v23 + 4) = *(v1 + 16);

      _os_log_impl(&_mh_execute_header, v21, v22, "enqueueStop() called. { reporterID=%lld }", v23, 0xCu);
    }

    else
    {
    }

    if (*(v1 + 66) == 1)
    {
      v24 = OBJC_IVAR____TtC15audioanalyticsd7Session_stopSignalTime;
      swift_beginAccess();
      sub_10000C454(v1 + v24, v15, &qword_100045DF0, &qword_100036660);
      v25 = type metadata accessor for Date();
      v26 = (*(*(v25 - 8) + 48))(v15, 1, v25);
      sub_100006CC8(v15, &qword_100045DF0, &qword_100036660);
      if (v26 != 1)
      {
        static DispatchTime.now()();
        *v7 = *(v1 + OBJC_IVAR____TtC15audioanalyticsd7Session_stopWaitTime);
        v27 = v34;
        (*(v34 + 104))(v7, enum case for DispatchTimeInterval.seconds(_:), v5);
        + infix(_:_:)();
        (*(v27 + 8))(v7, v5);
        v36 = *(v36 + 8);
        (v36)(v10, v43);
        v28 = swift_allocObject();
        swift_weakInit();
        aBlock[4] = sub_100003770;
        aBlock[5] = v28;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000016B8;
        aBlock[3] = &unk_100042420;
        v29 = _Block_copy(aBlock);

        v30 = v37;
        static DispatchQoS.unspecified.getter();
        v44 = &_swiftEmptyArrayStorage;
        sub_100001CF0(&qword_100045460, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10001712C(&unk_100045920, &qword_100035FC0);
        sub_100001BC4(&qword_100045468, &unk_100045920, &qword_100035FC0);
        v31 = v39;
        v32 = v42;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v29);
        (*(v41 + 8))(v31, v32);
        (*(v38 + 8))(v30, v40);
        (v36)(v12, v43);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10001259C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000125D8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TraceArgs();
  v37 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TraceCode();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v36 = v3;
    v35 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_logger;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      *(v18 + 4) = a2;
      _os_log_impl(&_mh_execute_header, v16, v17, "stopSession() called. { reporterID=%lld }", v18, 0xCu);
    }

    static Double.now()();
    if (*(v15 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation) > v19)
    {
      v19 = *(v15 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation);
    }

    *(v15 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation) = v19 + 5.0;
    v20 = sub_100003D80(a2, 0, 0x706F7473, 0xE400000000000000);
    if (v20 && (v34 = *(v20 + OBJC_IVAR____TtC15audioanalyticsd7Session_workQueue), v21 = v20, v22 = swift_allocObject(), *(v22 + 16) = sub_100013110, *(v22 + 24) = v21, aBlock[4] = sub_10000853C, aBlock[5] = v22, aBlock[0] = _NSConcreteStackBlock, aBlock[1] = 1107296256, aBlock[2] = sub_100002EB0, aBlock[3] = &unk_100041740, v23 = a2, v24 = _Block_copy(aBlock), , , , dispatch_sync(v34, v24), v25 = v24, a2 = v23, _Block_release(v25), isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation(), , , (isEscapingClosureAtFileLocation & 1) != 0))
    {
      __break(1u);
    }

    else
    {
      (*(v7 + 104))(v9, enum case for TraceCode.serverStop(_:), v6);
      static Utilities.positiveReporterID(_:)();
      default argument 1 of TraceArgs.init(arg1:arg2:arg3:arg4:)();
      default argument 2 of TraceArgs.init(arg1:arg2:arg3:arg4:)();
      default argument 3 of TraceArgs.init(arg1:arg2:arg3:arg4:)();
      TraceArgs.init(arg1:arg2:arg3:arg4:)();
      static Trace.post(_:args:)();
      (*(v37 + 8))(v5, v36);
      (*(v7 + 8))(v9, v6);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 134217984;
        *(v29 + 4) = a2;
        _os_log_impl(&_mh_execute_header, v27, v28, "Session stop signaled. { reporterID=%lld }", v29, 0xCu);
      }
    }
  }

  else
  {
    static Logger.service.getter();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "ClientServerInstance is gone. { action=stopSession }", v32, 2u);
    }

    (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_100012B60(uint64_t a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = sub_100009FD8(a1);

    return v3 & 1;
  }

  return result;
}

void *sub_100012BAC(uint64_t a1)
{
  swift_beginAccess();

  v3 = sub_100012E04(v2);

  v4 = sub_10000E4F0(v3, a1);

  v5 = v4;
  v6 = v4[2];
  if (!v6)
  {

    return &_swiftEmptyArrayStorage;
  }

  v7 = (v5 + 4);
  v8 = &_swiftEmptyArrayStorage;
  do
  {
    sub_10000AE18(v7, v16);
    sub_10000C43C(v16, v15);
    sub_10001712C(&qword_100045BB0, &qword_100036500);
    sub_10001712C(&qword_100045BB8, &qword_100036508);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v14 = 0;
      v12 = 0u;
      v13 = 0u;
LABEL_4:
      sub_100006CC8(&v12, &qword_100045D78, &qword_1000365F8);
      goto LABEL_5;
    }

    if (!*(&v13 + 1))
    {
      goto LABEL_4;
    }

    sub_10000C43C(&v12, v15);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_10000F08C(0, v8[2] + 1, 1, v8, &qword_100045D80, &qword_100036600, &qword_100045BB8, &qword_100036508);
    }

    v10 = v8[2];
    v9 = v8[3];
    if (v10 >= v9 >> 1)
    {
      v8 = sub_10000F08C((v9 > 1), v10 + 1, 1, v8, &qword_100045D80, &qword_100036600, &qword_100045BB8, &qword_100036508);
    }

    v8[2] = v10 + 1;
    sub_10000C43C(v15, &v8[5 * v10 + 4]);
LABEL_5:
    v7 += 40;
    --v6;
  }

  while (v6);

  return v8;
}

unint64_t *sub_100012E04(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v10 = &_swiftEmptyArrayStorage;
    sub_10001308C(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_10000AE18(v4, v8);
      sub_10001712C(&qword_100045BB8, &qword_100036508);
      sub_10001712C(&qword_100045BB0, &qword_100036500);
      swift_dynamicCast();
      v10 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_10001308C((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      v2[2] = v6 + 1;
      sub_10000C43C(&v9, &v2[5 * v6 + 4]);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_100012F3C(void *result, int64_t a2, char a3, void *a4)
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
    sub_10001712C(&qword_100045D88, &qword_100036608);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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
    sub_10001712C(&qword_100045BB0, &qword_100036500);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10001308C(void *a1, int64_t a2, char a3)
{
  result = sub_100012F3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100013120(char *a1, char *a2, uint64_t *a3)
{

  v6 = sub_1000134C8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000E468(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000AE7C(v11);
  return v7;
}

void *sub_1000131EC(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_10001712C(&qword_100045D90, &qword_100036610);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_100013260(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10002C668(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_10001334C(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1000131EC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
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
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000131EC(v10, 0);
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

char *sub_10001347C(uint64_t a1, unint64_t a2)
{
  v3 = sub_10001334C(a1, a2);
  sub_100013260(&off_100041398);
  return v3;
}

char *sub_1000134C8(char **a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10001347C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = ((a6 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_1000135D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001712C(&qword_100045E08, &qword_100036678);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1000136C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000B9D0(*(v2 + 24), *a1);
  *a2 = result & 1;
  return result;
}

unint64_t *sub_100013714(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = &_swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v16 = &_swiftEmptyArrayStorage;
  sub_1000141F4(0, v4, 0);
  v5 = &_swiftEmptyArrayStorage;
  v8 = (a3 + 32);
  while (1)
  {
    v9 = *v8++;
    v14 = v9;
    a1(&v15, &v14);
    if (v3)
    {
      break;
    }

    v10 = v15;
    v16 = v5;
    v12 = v5[2];
    v11 = v5[3];
    if (v12 >= v11 >> 1)
    {
      sub_1000141F4((v11 > 1), v12 + 1, 1);
      v5 = v16;
    }

    v5[2] = v12 + 1;
    *(v5 + v12 + 32) = v10;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

void *sub_100013824(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Message();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v2 + OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue);
  *v11 = v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  v14 = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v11, v8);
  if (v14)
  {
    v16 = *(v5 + 16);
    v46 = v4;
    v16(v7, a1, v4);
    v17 = Message.metadata.modify();
    Message.Metadata.isBroadcast.setter();
    v17(aBlock, 0);
    v18 = OBJC_IVAR____TtC15audioanalyticsd6Server_clientServerInstances;
    swift_beginAccess();
    v19 = *(v2 + v18);
    v44 = v2;
    if ((v19 & 0xC000000000000001) != 0)
    {

      __CocoaSet.makeIterator()();
      type metadata accessor for ClientServerInstance(0);
      sub_100001CA8(&unk_100045960, type metadata accessor for ClientServerInstance, &unk_100036088);
      result = Set.Iterator.init(_cocoa:)();
      v19 = v50;
      v20 = v51;
      v21 = v52;
      v22 = v53;
      v23 = v54;
    }

    else
    {
      v24 = -1 << *(v19 + 32);
      v20 = v19 + 56;
      v21 = ~v24;
      v25 = -v24;
      if (v25 < 64)
      {
        v26 = ~(-1 << v25);
      }

      else
      {
        v26 = -1;
      }

      v23 = v26 & *(v19 + 56);

      v22 = 0;
    }

    v45 = v5;
    v27 = 0;
    v47 = v21;
    v28 = (v21 + 64) >> 6;
    if (v19 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v29 = v22;
      v30 = v23;
      v31 = v22;
      if (!v23)
      {
        while (1)
        {
          v31 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            break;
          }

          if (v31 >= v28)
          {
            goto LABEL_19;
          }

          v30 = *(v20 + 8 * v31);
          ++v29;
          if (v30)
          {
            goto LABEL_13;
          }
        }

        __break(1u);
        goto LABEL_23;
      }

LABEL_13:
      v32 = (v30 - 1) & v30;
      v33 = *(*(v19 + 48) + ((v31 << 9) | (8 * __clz(__rbit64(v30)))));

      if (!v33)
      {
        break;
      }

      while (1)
      {
        v35 = static Constants.unknownReporterID.getter();
        v36 = sub_10000B9D0(v7, v35);

        v27 |= v36;
        v22 = v31;
        v23 = v32;
        if ((v19 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        v34 = __CocoaSet.Iterator.next()();
        if (v34)
        {
          v48 = v34;
          type metadata accessor for ClientServerInstance(0);
          swift_dynamicCast();
          v31 = v22;
          v32 = v23;
          if (aBlock[0])
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

LABEL_19:
    sub_10000750C(v19);
    if (v27)
    {
      return (*(v45 + 8))(v7, v46);
    }

    v37 = *(v44 + OBJC_IVAR____TtC15audioanalyticsd6Server_singleMessageSession);
    v38 = sub_100004484();
    v39 = OBJC_IVAR____TtC15audioanalyticsd7Session_workQueue;
    __chkstk_darwin(v38);
    *(&v43 - 2) = v37;
    *(&v43 - 1) = v7;
    OS_dispatch_queue.sync<A>(execute:)();
    v40 = *(v37 + v39);
    v41 = swift_allocObject();
    *(v41 + 16) = sub_100013110;
    *(v41 + 24) = v37;
    aBlock[4] = sub_100027CA8;
    aBlock[5] = v41;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100002EB0;
    aBlock[3] = &unk_100041F98;
    v42 = _Block_copy(aBlock);

    dispatch_sync(v40, v42);
    _Block_release(v42);
    LOBYTE(v40) = swift_isEscapingClosureAtFileLocation();

    if ((v40 & 1) == 0)
    {
      return (*(v45 + 8))(v7, v46);
    }
  }

  else
  {
LABEL_23:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100013DB8(uint64_t a1)
{
  v44 = a1;
  v43 = type metadata accessor for Message.Metadata();
  v2 = *(v43 - 8);
  __chkstk_darwin(v43);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = v1;
  v9 = *(v1 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_server);
  v40 = OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue;
  v41 = v9;
  v10 = *(v9 + OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue);
  *v8 = v10;
  v11 = enum case for DispatchPredicate.onQueue(_:);
  v12 = *(v6 + 104);
  v12(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v13 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  v14 = *(v6 + 8);
  result = v14(v8, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  Message.metadata.getter();
  v16 = Message.Metadata.isBroadcast.getter();
  (*(v2 + 8))(v4, v43);
  if ((v16 & 1) == 0)
  {
    goto LABEL_7;
  }

  v17 = *(v41 + v40);
  *v8 = v17;
  v12(v8, v11, v5);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  result = v14(v8, v5);
  if ((v17 & 1) == 0)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v19 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_sessionsByReporterID;
  v20 = v42;
  v21 = swift_beginAccess();
  v22 = *(v20 + v19);
  v23 = *(v22 + 16);
  if (!v23)
  {
    v24 = &_swiftEmptyArrayStorage;
LABEL_14:
    __chkstk_darwin(v21);
    v34 = v44;
    *(&v39 - 2) = v20;
    *(&v39 - 1) = v34;
    v35 = sub_100013714(sub_1000136C8, (&v39 - 4), v24);

    v36 = v35[2];
    v37 = (v35 + 4);
    while (v36)
    {
      v38 = *v37++;
      --v36;
      if (v38 == 1)
      {

        return 1;
      }
    }

    return 0;
  }

  v24 = sub_1000092F0(*(v22 + 16), 0);
  v25 = sub_100009378(v45, v24 + 4, v23, v22);
  v26 = *&v45[0];

  v21 = sub_10000750C(v26);
  if (v25 == v23)
  {
    goto LABEL_14;
  }

  __break(1u);
LABEL_7:
  v27 = *(v42 + 16);
  v46 = 0;
  memset(v45, 0, sizeof(v45));
  v28 = v44;
  sub_10000D868(v27, v44, v45, 1);
  v30 = v29;
  sub_10000C880(v45);

  if ((v30 & 0x100) != 0)
  {
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Discarding single message", v33, 2u);
    }

    return 0;
  }

  if ((v30 & 1) == 0)
  {
    return 0;
  }

  sub_100013824(v28);
  return 1;
}

char *sub_1000141F4(char *a1, int64_t a2, char a3)
{
  result = sub_1000135D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_100014214(int a1)
{
  v2 = v1;
  v50 = a1;
  v3 = type metadata accessor for TraceArgs();
  v53 = *(v3 - 8);
  v54 = v3;
  __chkstk_darwin(v3);
  v51 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for TraceCode();
  v5 = *(v52 - 8);
  __chkstk_darwin(v52);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001712C(&qword_100045480, &qword_100035FD8);
  __chkstk_darwin(v8 - 8);
  v10 = &v47 - v9;
  v11 = type metadata accessor for Message();
  v47 = *(v11 - 8);
  v48 = v11;
  __chkstk_darwin(v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10001712C(&qword_100045DF0, &qword_100036660);
  __chkstk_darwin(v14 - 8);
  v16 = &v47 - v15;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (&v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v2 + OBJC_IVAR____TtC15audioanalyticsd7Session_workQueue);
  *v20 = v21;
  (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  result = (*(v18 + 8))(v20, v17);
  if (v21)
  {

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 67174913;
      *(v26 + 4) = *(v2 + 66);
      *(v26 + 8) = 2048;
      *(v26 + 10) = *(v2 + 16);

      _os_log_impl(&_mh_execute_header, v24, v25, "stop() called. { isStarted=%{BOOL,private}d, reporterID=%lld }", v26, 0x12u);
    }

    else
    {
    }

    v27 = type metadata accessor for Date();
    (*(*(v27 - 8) + 56))(v16, 1, 1, v27);
    v28 = OBJC_IVAR____TtC15audioanalyticsd7Session_stopSignalTime;
    swift_beginAccess();
    sub_10000C27C(v16, v2 + v28, &qword_100045DF0, &qword_100036660);
    swift_endAccess();
    v49 = OBJC_IVAR____TtC15audioanalyticsd7Session_numProcessedMessages;
    v29 = *(v2 + OBJC_IVAR____TtC15audioanalyticsd7Session_numProcessedMessages);
    v30 = OBJC_IVAR____TtC15audioanalyticsd7Session_numProcessedMessagesUnique;
    v31 = *(v2 + OBJC_IVAR____TtC15audioanalyticsd7Session_numProcessedMessagesUnique);
    v32 = *(v2 + 16);
    LODWORD(v28) = *(v2 + 66);
    v34 = *(v2 + 32);
    v33 = *(v2 + 40);
    v55[0] = 2;
    v56 = v29;
    v57 = v31;
    v58 = v32;
    v59 = v28;
    v60 = v34;
    v61 = v33;
    v62 = v50 & 1;

    if (v28 == 1)
    {
      sub_10000F954();
      sub_100011370(v55);
      v35 = type metadata accessor for Message.Metadata();
      (*(*(v35 - 8) + 56))(v10, 1, 1, v35);
      Message.init(category:type:content:metadata:)();
      if ((sub_100009FD8(v13) & 1) == 0)
      {

        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 134217984;
          *(v38 + 4) = v32;

          _os_log_impl(&_mh_execute_header, v36, v37, "Stop message dropped. { reporterID=%lld }", v38, 0xCu);
        }

        else
        {
        }
      }

      (*(v47 + 8))(v13, v48);
    }

    else
    {
      sub_100011370(v55);

      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 134217984;
        *(v41 + 4) = v32;

        _os_log_impl(&_mh_execute_header, v39, v40, "Not sending stop message, because !isStarted. { reporterID=%lld }", v41, 0xCu);
      }

      else
      {
      }
    }

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 134217984;
      *(v44 + 4) = v32;

      _os_log_impl(&_mh_execute_header, v42, v43, "Ending session. { reporterID=%lld }", v44, 0xCu);
    }

    else
    {
    }

    v45 = v52;
    (*(v5 + 104))(v7, enum case for TraceCode.sessionStop(_:), v52);
    static Utilities.positiveReporterID(_:)();
    default argument 2 of TraceArgs.init(arg1:arg2:arg3:arg4:)();
    default argument 3 of TraceArgs.init(arg1:arg2:arg3:arg4:)();
    v46 = v51;
    TraceArgs.init(arg1:arg2:arg3:arg4:)();
    static Trace.post(_:args:)();
    (*(v53 + 8))(v46, v54);
    (*(v5 + 8))(v7, v45);
    sub_100014A38();
    *(v2 + OBJC_IVAR____TtC15audioanalyticsd7Session_startOnFirstMessageCalled) = 0;
    *(v2 + v49) = 0;
    *(v2 + v30) = 0;
    *(v2 + 66) = 0;
    type metadata accessor for OsTransactionHandler();
    static OsTransactionHandler.shared.getter();
    OsTransactionHandler.sessionStopped(for:)(v32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100014A38()
{
  v1 = v0;
  v30 = type metadata accessor for Config.WorkerConfigs();
  v2 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(*(v1 + 88) + 16))
  {
    swift_beginAccess();
    sub_10000F1D4((v1 + 88), &Config.WorkerConfigs.stopOrder.getter);
    swift_endAccess();
    v4 = *(v1 + 88);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = OBJC_IVAR____TtC15audioanalyticsd7Session_logger;
      v7 = v4 + 32;
      v28 = (v2 + 8);
      v26[1] = v4;

      *&v8 = 136315394;
      v27 = v8;
      do
      {
        sub_10000AE18(v7, v35);
        sub_10000AE18(v35, v34);
        swift_retain_n();
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v33 = v32;
          *v11 = v27;
          sub_10000AEC8(v34, v34[3]);
          v12 = v6;
          v13 = v1;
          v14 = v29;
          v31 = v10;
          dispatch thunk of WorkerProtocol.workerConfig.getter();
          v15 = Config.WorkerConfigs.rawValue.getter();
          v17 = v16;
          v18 = v14;
          v1 = v13;
          v6 = v12;
          (*v28)(v18, v30);
          sub_10000AE7C(v34);
          v19 = sub_100013120(v15, v17, &v33);

          *(v11 + 4) = v19;
          *(v11 + 12) = 2048;
          v20 = *(v1 + 16);

          *(v11 + 14) = v20;

          _os_log_impl(&_mh_execute_header, v9, v31, "Stopping worker { worker=%s, reporterID=%lld  }", v11, 0x16u);
          sub_10000AE7C(v32);
        }

        else
        {

          sub_10000AE7C(v34);
        }

        sub_10000AEC8(v35, v35[3]);
        dispatch thunk of WorkerProtocol.stop()();
        sub_10000AE7C(v35);
        v7 += 40;
        --v5;
      }

      while (v5);
    }

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v1 + 88);
    if (isUniquelyReferenced_nonNull_native)
    {
      sub_100014F38(0, *(v22 + 16));
    }

    else
    {
      *(v1 + 88) = sub_10002C5E0(0, *(v22 + 24) >> 1, &qword_100045D88, &qword_100036608);
    }

    swift_endAccess();
    v23 = OBJC_IVAR____TtC15audioanalyticsd7Session_summaryDecoratorWorkers;
    swift_beginAccess();
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v25 = *(v1 + v23);
    if (v24)
    {
      sub_100015040(0, *(v25 + 16));
    }

    else
    {
      *(v1 + v23) = sub_10002C5E0(0, *(v25 + 24) >> 1, &qword_100045D80, &qword_100036600);
    }

    swift_endAccess();
  }
}

unint64_t sub_100014E50(unint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = *v5;
  v8 = *(*v5 + 16);
  if (v8 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = v8 + v10;
  if (__OFADD__(v8, v10))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v7 + 24) >> 1)
  {
    v7 = a3();
    *v5 = v7;
  }

  result = sub_100014F60(v9, a2, 0, a4, a5);
  *v5 = v7;
  return result;
}

unint64_t sub_100014F60(unint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = *v5;
  v10 = v9 + 32 + 40 * result;
  sub_10001712C(a4, a5);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v6);
  v12 = a3 - v6;
  if (v11)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, a2);
  v14 = v13 - a2;
  if (v11)
  {
    goto LABEL_17;
  }

  result = v10 + 40 * a3;
  v15 = (v9 + 32 + 40 * a2);
  if (result != v15 || result >= v15 + 40 * v14)
  {
    result = memmove(result, v15, 40 * v14);
  }

  v17 = *(v9 + 16);
  v11 = __OFADD__(v17, v12);
  v18 = v17 + v12;
  if (v11)
  {
    goto LABEL_18;
  }

  *(v9 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_100015070()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    v2 = *(v0 + 16);
    _s16RetainedMessagesCMa();
    v1 = swift_allocObject();
    *(v1 + 16) = sub_10001746C(&_swiftEmptyArrayStorage);
    *(v1 + 24) = v2;
    *(v0 + 136) = v1;
  }

  return v1;
}

uint64_t sub_1000150F0(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v26 = *(v2 - 8);
  v27 = v2;
  __chkstk_darwin(v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Message();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  v12 = *(v6 + 16);
  v12(&v26 - v10, a1, v5);
  v13 = Message.category.getter();
  v14 = Message.type.getter();
  (*(v6 + 8))(v11, v5);
  v15 = v14;
  v16 = v28;
  v17 = sub_100015580(v13 | (v15 << 32));
  swift_beginAccess();
  if (*(v17[2] + 16))
  {
    static Logger.session.getter();

    v18 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v5))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      *(v19 + 4) = *(v16 + 24);

      _os_log_impl(&_mh_execute_header, v18, v5, "sendMesssage(): Stored message found callback. Calling callback. { reporterID=%lld }", v19, 0xCu);
    }

    else
    {
    }

    (*(v26 + 8))(v4, v27);
    swift_beginAccess();
    v23 = v17[2];
    if (*(v23 + 16))
    {
      v24 = *(v23 + 32);

      sub_10002AA28(0, 1, sub_10002C424, sub_10002A810);
      swift_endAccess();
      sub_100028648();
      v29 = Message.flattenToAnyDictionary()();
      v30[0] = 0;
      v24(v30, &v29);
    }

    __break(1u);
    goto LABEL_15;
  }

  v12(v9, a1, v5);
  swift_beginAccess();
  v18 = v17[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17[3] = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_15:
    v18 = sub_100015784(0, v18[2].isa + 1, 1, v18);
    v17[3] = v18;
  }

  isa = v18[2].isa;
  v21 = v18[3].isa;
  if (isa >= v21 >> 1)
  {
    v18 = sub_100015784((v21 > 1), isa + 1, 1, v18);
  }

  v18[2].isa = (isa + 1);
  (*(v6 + 32))(v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * isa, v9, v5);
  v17[3] = v18;
  swift_endAccess();
  if (isa >= 0xA)
  {
    swift_beginAccess();
    sub_10002AA28(0, 1, sub_100015784, sub_10002A8E0);
    swift_endAccess();
  }
}

void *sub_100015580(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 16);
  if (*(v4 + 16) && (v5 = sub_100015688(a1 & 0xFFFFFFFFFFFFLL), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v8 = *(v2 + 24);
    _s16RetainedMessagesC12MessageQueueCMa();
    v7 = swift_allocObject();
    v7[4] = v8;
    v7[2] = &_swiftEmptyArrayStorage;
    v7[3] = &_swiftEmptyArrayStorage;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v2 + 16);
    *(v2 + 16) = 0x8000000000000000;
    sub_100029318(v7, a1 & 0xFFFFFFFFFFFFLL, isUniquelyReferenced_nonNull_native);
    *(v2 + 16) = v11;
    swift_endAccess();
  }

  return v7;
}

unint64_t sub_100015688(unint64_t a1)
{
  v2 = HIDWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(v2);
  v3 = Hasher._finalize()();

  return sub_100015704(a1 & 0xFFFFFFFFFFFFLL, v3);
}

unint64_t sub_100015704(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(v2 + 48) + 8 * result;
      v8 = *v7;
      v9 = *(v7 + 4);
      if (v8 == a1 && WORD2(a1) == v9)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_100015784(void *result, int64_t a2, char a3, void *a4)
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
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10001712C(&qword_100045D98, &qword_100036618);
  v10 = *(type metadata accessor for Message() - 8);
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
  v15 = *(type metadata accessor for Message() - 8);
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

_WORD *sub_100015968@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

uint64_t sub_100015998()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000159E8()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100015A44()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100015A7C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100015AB4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100015AF4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100015B34()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100015B84()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100015BC4()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100015C0C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100015C54()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100015C8C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100015CC4()
{
  v1 = (type metadata accessor for FeatureInfo(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = v0 + v3;
  v6 = type metadata accessor for SystemMonitorConfig.MonitorType();
  (*(*(v6 - 8) + 8))(v5, v6);

  v7 = v1[11];
  v8 = type metadata accessor for SystemMonitorConfig.DataType();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_100015F0C(uint64_t a1)
{
  v2 = type metadata accessor for SystemMonitorConfig.MonitorType();
  (*(*(v2 - 8) + 8))(a1, v2);
  v3 = type metadata accessor for FeatureInfo(0);

  v4 = *(v3 + 36);
  v5 = type metadata accessor for SystemMonitorConfig.DataType();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

uint64_t sub_100015FF8(uint64_t a1, uint64_t a2)
{
  sub_1000108FC(a1, a2, type metadata accessor for FeatureInfo);

  return type metadata accessor for FeatureInfo(0);
}

uint64_t sub_10001604C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FeatureInfo(0);

  return sub_100027A40(a1, a2);
}

uint64_t sub_100016090()
{
  v1 = type metadata accessor for Message();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100016154()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100016190()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000161C8()
{
  v1 = type metadata accessor for Message();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001628C()
{

  return _swift_deallocObject(v0, 46, 7);
}

uint64_t sub_1000162DC@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = static SystemMonitor.shared;
}

uint64_t sub_100016330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FeatureInfo(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for SimpleType();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100016420(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for FeatureInfo(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for SimpleType();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10001651C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SystemMonitorConfig.MonitorType();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for SystemMonitorConfig.DataType();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100016644(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SystemMonitorConfig.MonitorType();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for SystemMonitorConfig.DataType();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_10001682C(uint64_t a1)
{
  v2 = type metadata accessor for SystemMonitorConfig.MonitorType();
  (*(*(v2 - 8) + 8))(a1, v2);
  v3 = type metadata accessor for FeatureInfo(0);

  v4 = *(v3 + 36);
  v5 = type metadata accessor for SystemMonitorConfig.DataType();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

uint64_t sub_100016918(uint64_t a1, uint64_t a2)
{
  sub_1000108FC(a1, a2, type metadata accessor for FeatureInfo);

  return type metadata accessor for FeatureInfo(0);
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_allocWithZone(type metadata accessor for Server(0));
  qword_1000460F0 = sub_10001F624(0);
  dispatch_main();
}

id variable initialization expression of MobileAssetsHandler.downloadOptions()
{
  v0 = [objc_allocWithZone(MADownloadOptions) init];
  [v0 setAllowsCellularAccess:1];
  [v0 setRequiresPowerPluggedIn:1];
  [v0 setCanUseLocalCacheServer:1];
  if (qword_1000453A0 != -1)
  {
    swift_once();
  }

  [v0 setTimeoutIntervalForResource:qword_1000455A0];
  return v0;
}

uint64_t variable initialization expression of SystemMonitor.currentFeatureStates()
{
  v0 = sub_100016F14(&_swiftEmptyArrayStorage);
  sub_10001712C(&qword_1000459A0, &qword_100035C80);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  return result;
}

uint64_t variable initialization expression of SystemMonitor.notificationQueue()
{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v0);
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_100008570();
  static DispatchQoS.default.getter();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v1);
  v7[1] = &_swiftEmptyArrayStorage;
  sub_1000172FC(&unk_100045970, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10001712C(&qword_1000453D0, &qword_100035C88);
  sub_100017174();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

void *sub_100016D64@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

_DWORD *sub_100016D74@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

Swift::Int sub_100016DA4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100016E18(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int sub_100016E5C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100016ED0(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t sub_100016F14(uint64_t a1)
{
  v2 = sub_10001712C(&qword_100045438, &qword_100035E48);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10001712C(&qword_100045440, &unk_100035E50);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000C454(v9, v5, &qword_100045438, &qword_100035E48);
      result = sub_1000289A4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for FeatureInfo(0);
      sub_100010D10(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for FeatureInfo);
      v16 = v7[7];
      v17 = type metadata accessor for FeatureState(0);
      result = sub_100010D10(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for FeatureState);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_10001712C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100017174()
{
  result = qword_100045980;
  if (!qword_100045980)
  {
    sub_1000171D8(&qword_1000453D0, &qword_100035C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045980);
  }

  return result;
}

uint64_t sub_1000171D8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100017258(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100017278(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1000172FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100017358(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10001712C(&qword_100045418, &qword_100035E28);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10000710C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

void *sub_10001746C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_10001712C(&qword_1000453F8, &qword_100035E08);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 36);
  v6 = *(a1 + 40);
  v7 = sub_100015688(v4 | (v5 << 32));
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = 8 * v9;
    v13 = v3[6] + v12;
    *v13 = v4;
    *(v13 + 4) = v5;
    *(v3[7] + v12) = result;
    v14 = v3[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      break;
    }

    v3[2] = v16;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v17 = v11 + 2;
    v4 = *(v11 - 2);
    v5 = *(v11 - 2);
    v18 = *v11;

    v9 = sub_100015688(v4 | (v5 << 32));
    v11 = v17;
    result = v18;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000175B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_10001712C(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_10000710C(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
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

void sub_1000176D4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100017778(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    static Double.now()();
    if (*(v10 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation) > v11)
    {
      v11 = *(v10 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation);
    }

    *(v10 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation) = v11 + 1.0;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = a2;
      _os_log_impl(&_mh_execute_header, v12, v13, "getServiceName() called. { reporterID=%lld }", v14, 0xCu);
    }

    v15 = sub_100003D80(a2, 0, 0x4E65636976726573, 0xEB00000000656D61);
    if (!v15 || (v16 = *(v15 + 32), , v16 == 0xFFFF))
    {
      default argument 1 of static Utilities.generateError(with:code:)();
      v18 = static Utilities.generateError(with:code:)();
      v17 = 0xFFFFLL;
    }

    else
    {
      v17 = v16;
      v18 = 0;
    }

    a3(v18, v17);
  }

  else
  {
    static Logger.service.getter();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "ClientServerInstance is gone. { action=getServiceName }", v22, 2u);
    }

    return (*(v6 + 8))(v8, v5);
  }
}