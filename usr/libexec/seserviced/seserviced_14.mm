uint64_t sub_1001328DC(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_100501988 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000958E4(v6, qword_1005044D0);
  v7 = *(a2 + 16);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v22 = a3;
    v23 = v7;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock[0] = v11;
    *v10 = 136315138;
    v12 = "iced.viennaPresentmentReporting";
    v13 = 0xD00000000000002DLL;
    if (*a2 != 1)
    {
      v13 = 0xD000000000000020;
      v12 = "iced.viennaHeartbeatReporting";
    }

    if (*a2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0xD00000000000002FLL;
    }

    if (*a2)
    {
      v15 = v12;
    }

    else
    {
      v15 = "_MANAGED_BY_ALIRO_WALLET_";
    }

    v16 = sub_1002FFA0C(v14, v15 | 0x8000000000000000, aBlock);

    *(v10 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "Scheduled task %s is being launched", v10, 0xCu);
    sub_1000752F4(v11);

    a3 = v22;
    v7 = v23;
  }

  else
  {
  }

  v17 = swift_allocObject();
  v18 = *(a2 + 16);
  *(v17 + 24) = *a2;
  *(v17 + 16) = a3;
  *(v17 + 40) = v18;
  *(v17 + 56) = *(a2 + 32);
  *(v17 + 72) = a1;
  aBlock[4] = sub_100135310;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004C7FB8;
  v19 = _Block_copy(aBlock);

  v20 = a1;

  [v20 setExpirationHandler:v19];
  _Block_release(v19);
  return v7(v20);
}

uint64_t sub_100132B9C(uint64_t a1, _OWORD *a2, void *a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v8 = *(v19 - 8);
  __chkstk_darwin(v19);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501980 != -1)
  {
    swift_once();
  }

  v11 = *(off_1005044C8 + 2);
  v12 = swift_allocObject();
  v13 = a2[1];
  *(v12 + 16) = *a2;
  *(v12 + 32) = v13;
  *(v12 + 48) = a2[2];
  *(v12 + 64) = a3;
  aBlock[4] = sub_100135368;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004C8008;
  v14 = _Block_copy(aBlock);
  v15 = v11;

  v16 = a3;
  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_1001350EC(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_10006A224(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v20 + 8))(v7, v5);
  (*(v8 + 8))(v10, v19);
}

uint64_t sub_100132EC4(uint64_t a1, uint64_t a2)
{
  if (qword_100501988 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000958E4(v4, qword_1005044D0);
  v5 = *(a1 + 32);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v10 = "iced.viennaPresentmentReporting";
    v11 = 0xD00000000000002DLL;
    if (*a1 != 1)
    {
      v11 = 0xD000000000000020;
      v10 = "iced.viennaHeartbeatReporting";
    }

    if (*a1)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0xD00000000000002FLL;
    }

    if (*a1)
    {
      v13 = v10;
    }

    else
    {
      v13 = "_MANAGED_BY_ALIRO_WALLET_";
    }

    v14 = sub_1002FFA0C(v12, v13 | 0x8000000000000000, &v16);

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "Scheduled task %s has expired", v8, 0xCu);
    sub_1000752F4(v9);
  }

  return v5(a2);
}

uint64_t sub_10013309C()
{
  type metadata accessor for SESScheduledActivityManager();
  v0 = swift_allocObject();
  result = sub_1001331EC();
  off_1005044C8 = v0;
  return result;
}

uint64_t sub_1001330D8()
{

  return swift_deallocClassInstance();
}

__n128 sub_100133134(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100133148(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100133190(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001331EC()
{
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v9 - 8);
  __chkstk_darwin(v9);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v8 = sub_10006928C();
  static DispatchQoS.unspecified.getter();
  v11 = _swiftEmptyArrayStorage;
  sub_1001350EC(&qword_1005064A0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100068FC4(&unk_100501E60, &qword_100408C30);
  sub_10006A224(&qword_1005064B0, &unk_100501E60, &qword_100408C30);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v9);
  v5 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v6 = v10;
  *(v10 + 16) = v5;
  return v6;
}

uint64_t sub_100133444(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000020;
  v3 = *a1;
  v4 = "iced.viennaPresentmentReporting";
  if (v3 == 1)
  {
    v5 = 0xD00000000000002DLL;
  }

  else
  {
    v5 = 0xD000000000000020;
  }

  if (v3 == 1)
  {
    v6 = "iced.viennaPresentmentReporting";
  }

  else
  {
    v6 = "iced.viennaHeartbeatReporting";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD00000000000002FLL;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = "_MANAGED_BY_ALIRO_WALLET_";
  }

  if (*a2 == 1)
  {
    v2 = 0xD00000000000002DLL;
  }

  else
  {
    v4 = "iced.viennaHeartbeatReporting";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD00000000000002FLL;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = "_MANAGED_BY_ALIRO_WALLET_";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100133520()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001335BC(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100133644()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1001336DC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001353EC(*a1);
  *a2 = result;
  return result;
}

void sub_10013370C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000020;
  v3 = "iced.viennaPresentmentReporting";
  if (*v1 == 1)
  {
    v2 = 0xD00000000000002DLL;
  }

  else
  {
    v3 = "iced.viennaHeartbeatReporting";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD00000000000002FLL;
    v4 = "_MANAGED_BY_ALIRO_WALLET_";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

uint64_t sub_100133768(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return _swift_task_switch(sub_10013378C, 0, 0);
}

uint64_t sub_10013378C()
{
  v24 = v0;
  v1 = *(v0 + 40);
  v2 = [objc_opt_self() sharedScheduler];
  v3 = *v1;
  v4 = String._bridgeToObjectiveC()();

  v5 = [v2 taskRequestForIdentifier:v4];

  if (v5)
  {
    v7 = *(v0 + 32);
    v6 = *(v0 + 40);
    v8 = *(v0 + 24);

    v9 = swift_task_alloc();
    *(v0 + 48) = v9;
    v9[2] = v6;
    v9[3] = v8;
    v9[4] = v7;
    v10 = swift_task_alloc();
    *(v0 + 56) = v10;
    *v10 = v0;
    v10[1] = sub_100133B14;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, 0, 0, 0x5F286C65636E6163, 0xEA0000000000293ALL, sub_100134F08, v9, &type metadata for () + 1);
  }

  else
  {
    if (qword_100501988 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000958E4(v11, qword_1005044D0);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v14 = 136315138;
      v16 = 0xD00000000000002DLL;
      if (v3 == 1)
      {
        v17 = "iced.viennaPresentmentReporting";
      }

      else
      {
        v16 = 0xD000000000000020;
        v17 = "iced.viennaHeartbeatReporting";
      }

      if (v3)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0xD00000000000002FLL;
      }

      if (v3)
      {
        v19 = v17;
      }

      else
      {
        v19 = "_MANAGED_BY_ALIRO_WALLET_";
      }

      v20 = sub_1002FFA0C(v18, v19 | 0x8000000000000000, &v23);

      *(v14 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v12, v13, "Attempted to cancel task with identifier %s that does not exist", v14, 0xCu);
      sub_1000752F4(v15);
    }

    *(v0 + 72) = 0;
    sub_100134EB4();
    swift_willThrowTypedImpl();
    v21 = *(v0 + 8);

    return v21(0);
  }
}

uint64_t sub_100133B14()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_100133C48;
  }

  else
  {

    v2 = sub_100133C30;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100133C48()
{
  v1 = *(v0 + 64);

  *(v0 + 16) = v1;
  swift_errorRetain();
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  if (swift_dynamicCast())
  {

    v2 = *(v0 + 73);
    *(v0 + 75) = v2;
    sub_100134EB4();
    swift_willThrowTypedImpl();
  }

  else
  {

    if (qword_100501988 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000958E4(v3, qword_1005044D0);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      swift_errorRetain();
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v8;
      *v7 = v8;
      _os_log_impl(&_mh_execute_header, v4, v5, "Unknown error caught %@", v6, 0xCu);
      sub_1000C2998(v7);
    }

    v2 = 1;
    *(v0 + 74) = 1;
    sub_100134EB4();
    swift_willThrowTypedImpl();
  }

  v9 = *(v0 + 8);

  return v9(v2);
}

uint64_t sub_100133E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v22 = a3;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v23 = *(v12 - 8);
  v24 = v12;
  __chkstk_darwin(v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501980 != -1)
  {
    swift_once();
  }

  v15 = *(off_1005044C8 + 2);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = a5[1];
  *(v16 + 32) = *a5;
  *(v16 + 48) = v17;
  *(v16 + 64) = a5[2];
  *(v16 + 80) = v22;
  *(v16 + 88) = a4;
  aBlock[4] = sub_10013507C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004C7EA0;
  v18 = _Block_copy(aBlock);
  v19 = v15;
  sub_100113B54(a1, a2);

  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_1001350EC(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_10006A224(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v25 + 8))(v11, v9);
  (*(v23 + 8))(v14, v24);
}

uint64_t sub_1001341CC(void (*a1)(uint64_t), uint64_t a2, _BYTE *a3, uint64_t (*a4)(uint64_t))
{
  if (a1)
  {

    a1(v7);
    sub_1000B2A4C(a1, a2);
  }

  v8 = 0xD000000000000020;
  v9 = objc_opt_self();
  v10 = [v9 sharedScheduler];
  v11 = *a3;
  v12 = "_MANAGED_BY_ALIRO_WALLET_";
  v13 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_10013498C;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000A409C;
  aBlock[3] = &unk_1004C7EC8;
  v14 = _Block_copy(aBlock);
  [v10 registerForTaskWithIdentifier:v13 usingQueue:0 launchHandler:v14];
  _Block_release(v14);

  v52 = v9;
  v15 = [v9 sharedScheduler];
  v16 = String._bridgeToObjectiveC()();

  aBlock[0] = 0;
  LODWORD(v14) = [v15 cancelTaskRequestWithIdentifier:v16 error:aBlock];

  if (v14)
  {
    v17 = aBlock[0];
  }

  else
  {
    v18 = aBlock[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100501988 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000958E4(v19, qword_1005044D0);

    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = "iced.viennaPresentmentReporting";
      v26 = v24;
      aBlock[0] = v24;
      *v22 = 136315394;
      v27 = 0xD00000000000002DLL;
      if (v11 != 1)
      {
        v27 = 0xD000000000000020;
        v25 = "iced.viennaHeartbeatReporting";
      }

      if (v11)
      {
        v28 = v27;
      }

      else
      {
        v28 = 0xD00000000000002FLL;
      }

      if (v11)
      {
        v29 = v25;
      }

      else
      {
        v29 = "_MANAGED_BY_ALIRO_WALLET_";
      }

      v30 = sub_1002FFA0C(v28, v29 | 0x8000000000000000, aBlock);

      *(v22 + 4) = v30;
      *(v22 + 12) = 2112;
      swift_errorRetain();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v31;
      *v23 = v31;
      _os_log_impl(&_mh_execute_header, v20, v21, "Unable to cancel task with %s due to error %@", v22, 0x16u);
      sub_1000C2998(v23);

      sub_1000752F4(v26);
    }

    else
    {
    }

    a4(1);

    v12 = "_MANAGED_BY_ALIRO_WALLET_";
  }

  v32 = [v52 sharedScheduler];
  v33 = String._bridgeToObjectiveC()();

  v34 = [v32 deregisterTaskWithIdentifier:v33];

  if ((v34 & 1) == 0)
  {
    if (qword_100501988 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_1000958E4(v35, qword_1005044D0);

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      aBlock[0] = v39;
      *v38 = 136315138;
      v40 = 0xD00000000000002DLL;
      if (v11 == 1)
      {
        v41 = "iced.viennaPresentmentReporting";
      }

      else
      {
        v40 = 0xD000000000000020;
        v41 = "iced.viennaHeartbeatReporting";
      }

      if (v11)
      {
        v42 = v40;
      }

      else
      {
        v42 = 0xD00000000000002FLL;
      }

      if (v11)
      {
        v43 = v41;
      }

      else
      {
        v43 = "_MANAGED_BY_ALIRO_WALLET_";
      }

      v44 = sub_1002FFA0C(v42, v43 | 0x8000000000000000, aBlock);

      *(v38 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v36, v37, "Unable to deregister task with identifier %s", v38, 0xCu);
      sub_1000752F4(v39);

      v12 = "_MANAGED_BY_ALIRO_WALLET_";
    }

    else
    {
    }
  }

  if (qword_100501988 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  sub_1000958E4(v45, qword_1005044D0);

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    aBlock[0] = v49;
    *v48 = 136315138;
    if (v11)
    {
      if (v11 == 1)
      {
        v8 = 0xD00000000000002DLL;
        v12 = "iced.viennaPresentmentReporting";
      }

      else
      {
        v12 = "iced.viennaHeartbeatReporting";
      }
    }

    else
    {
      v8 = 0xD00000000000002FLL;
    }

    v51 = sub_1002FFA0C(v8, v12 | 0x8000000000000000, aBlock);

    *(v48 + 4) = v51;
    _os_log_impl(&_mh_execute_header, v46, v47, "Cancelled task with identifier %s", v48, 0xCu);
    sub_1000752F4(v49);

    return a4(2);
  }

  else
  {

    return a4(2);
  }
}

id sub_10013498C(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v10[4] = sub_1001350DC;
  v10[5] = v2;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100080830;
  v10[3] = &unk_1004C7F18;
  v3 = _Block_copy(v10);
  v4 = a1;

  [v4 setExpirationHandler:v3];
  _Block_release(v3);
  if (qword_100501988 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000958E4(v5, qword_1005044D0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "This task should be immediately removed", v8, 2u);
  }

  return [v4 setTaskCompleted];
}

uint64_t sub_100134B2C(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100068FC4(&qword_1005045B0, &qword_10040B978);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v16 - v11;
  (*(v9 + 16))(&v16 - v11, a1, v8, v10);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  sub_100133E84(a3, a4, sub_100134FA8, v14, a2);
}

uint64_t sub_100134C90(uint64_t a1)
{
  if (a1 != 2)
  {
    v1 = a1;
    sub_100134EB4();
    swift_allocError();
    *v2 = v1 & 1;
    sub_100068FC4(&qword_1005045B0, &qword_10040B978);
    CheckedContinuation.resume(throwing:)();
  }

  sub_100068FC4(&qword_1005045B0, &qword_10040B978);
  return CheckedContinuation.resume(returning:)();
}

unint64_t sub_100134D30()
{
  result = qword_100504590;
  if (!qword_100504590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100504590);
  }

  return result;
}

unint64_t sub_100134D88()
{
  result = qword_100504598;
  if (!qword_100504598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100504598);
  }

  return result;
}

unint64_t sub_100134DE0()
{
  result = qword_1005045A0;
  if (!qword_1005045A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005045A0);
  }

  return result;
}

uint64_t sub_100134E34(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  sub_1000B6A94(v2, qword_1005044D0);
  sub_1000958E4(v2, qword_1005044D0);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_100134EB4()
{
  result = qword_1005045A8;
  if (!qword_1005045A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005045A8);
  }

  return result;
}

uint64_t sub_100134F14()
{
  v1 = sub_100068FC4(&qword_1005045B0, &qword_10040B978);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100134FA8(uint64_t a1)
{
  sub_100068FC4(&qword_1005045B0, &qword_10040B978);

  return sub_100134C90(a1);
}

uint64_t sub_100135024()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10013508C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001350A4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001350EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100135134()
{

  return _swift_deallocObject(v0, 72, 7);
}

id sub_100135180(char a1, char a2, char a3, double a4)
{
  v7 = objc_allocWithZone(BGRepeatingSystemTaskRequest);
  v8 = String._bridgeToObjectiveC()();

  v9 = [v7 initWithIdentifier:v8];

  v10 = v9;
  [v10 setRequiresNetworkConnectivity:a2 & 1];
  [v10 setRequiresExternalPower:a3 & 1];
  [v10 setInterval:a4];
  [v10 setMinDurationBetweenInstances:a4 * 0.8];
  [v10 setPriority:1];

  return v10;
}

uint64_t sub_1001352C8()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100135320()
{

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_100135398()
{
  result = qword_1005045B8;
  if (!qword_1005045B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005045B8);
  }

  return result;
}

unint64_t sub_1001353EC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1004C3BA0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100135460(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21[0] = a3;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = a2;
  aBlock[4] = sub_10013582C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004C8178;
  v18 = _Block_copy(aBlock);
  v19 = a1;

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v21[1] = _swiftEmptyArrayStorage;
  sub_1000BA7E0();
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_1000BA838();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v10 + 8))(v12, v9);
  (*(v14 + 8))(v16, v13);
}

void sub_1001356EC(void *a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v9 = a1;
    v6 = a1;
    v7 = 0;
LABEL_3:
    a2(v6, v7);

    return;
  }

  if (!a4)
  {
    sub_1000B9C54();
    v6 = sub_10030990C(0, 1, 0x75736F6C63206F4ELL, 0xEA00000000006572, 0);
    v9 = v6;
    v7 = 1;
    goto LABEL_3;
  }

  swift_errorRetain();
  a2(a4, 1);
}

uint64_t sub_1001357E4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100135838(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100135850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_100135918, v4, 0);
}

uint64_t sub_100135918()
{
  v1 = sub_10035E904();
  v0[10] = v1;
  v2 = v1;
  v3 = v0[8];
  v13 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[2];
  v9 = v0[3];
  v10 = swift_allocObject();
  v0[11] = v10;
  v10[2] = v5;
  v10[3] = v8;
  v10[4] = v9;
  v10[5] = v2;
  v10[6] = v7;
  v10[7] = v6;
  (*(v3 + 104))(v13, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v4);

  v2;

  v11 = swift_task_alloc();
  v0[12] = v11;
  *v11 = v0;
  v11[1] = sub_100135ADC;

  return NSManagedObjectContext.perform<A>(schedule:_:)();
}

uint64_t sub_100135ADC()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  *(*v1 + 104) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 48);
  if (v0)
  {
    v7 = sub_100135CF4;
  }

  else
  {
    v7 = sub_100135C88;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100135C88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100135CF4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100135D60(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v8 = sub_1001362D4(a2, a3);
  if (!v4)
  {
    if (v8)
    {

      if (qword_1005019D8 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_1000958E4(v9, qword_10051B2C8);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v31 = v13;
        *v12 = 136315138;
        *(v12 + 4) = sub_1002FFA0C(a2, a3, &v31);
        _os_log_impl(&_mh_execute_header, v10, v11, "Attempted to add duplicate application %s", v12, 0xCu);
        sub_1000752F4(v13);

LABEL_13:

        return;
      }
    }

    else
    {
      type metadata accessor for SecureElementApplicationEntity();
      v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:a4];
      v14 = String._bridgeToObjectiveC()();
      [v10 setIdentifier:v14];

      v15 = String._bridgeToObjectiveC()();
      [v10 setBundleIdentifier:v15];

      [v10 setGdprVersionShown:0];
      v31 = 0;
      if ([a4 save:&v31])
      {
        v16 = v31;
        [a4 refreshAllObjects];
        if (qword_1005019D8 != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        sub_1000958E4(v17, qword_10051B2C8);

        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v31 = v21;
          *v20 = 136315138;
          *(v20 + 4) = sub_1002FFA0C(a2, a3, &v31);
          _os_log_impl(&_mh_execute_header, v18, v19, "Successfully added new allowed application %s", v20, 0xCu);
          sub_1000752F4(v21);
        }

        goto LABEL_13;
      }

      v22 = v31;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      [a4 reset];
      if (qword_1005019D8 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_1000958E4(v23, qword_10051B2C8);
      swift_errorRetain();
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v26 = 136315394;
        *(v26 + 4) = sub_1002FFA0C(0xD00000000000001ELL, 0x8000000100463D20, &v31);
        *(v26 + 12) = 2080;
        swift_getErrorValue();
        v27 = Error.localizedDescription.getter();
        v29 = sub_1002FFA0C(v27, v28, &v31);

        *(v26 + 14) = v29;
        _os_log_impl(&_mh_execute_header, v24, v25, "%s: CoreData error %s encountered while saving view context", v26, 0x16u);
        swift_arrayDestroy();
      }

      sub_10009591C();
      swift_allocError();
      *v30 = 0;
      swift_willThrow();
    }
  }
}

id sub_1001362D4(uint64_t a1, unint64_t a2)
{
  v6 = sub_100137BA4(0);
  if (v2)
  {
    return v3;
  }

  v7 = v6;
  v29 = a1;
  v30 = _swiftEmptyArrayStorage;
  if (v6 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v9 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v13 = [v10 identifier];
      if (v13)
      {
        v14 = a2;
        v15 = v13;
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        a2 = v14;
        if (v16 == v29 && v18 == v14)
        {

LABEL_19:
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          goto LABEL_6;
        }

        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v20)
        {
          goto LABEL_19;
        }
      }

LABEL_6:
      ++v9;
      if (v12 == i)
      {
        v21 = v30;
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  v21 = _swiftEmptyArrayStorage;
LABEL_26:

  if ((v21 & 0x8000000000000000) != 0 || (v21 & 0x4000000000000000) != 0)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_29;
    }
  }

  else if (*(v21 + 16))
  {
LABEL_29:
    if ((v21 & 0xC000000000000001) != 0)
    {
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_32;
    }

    if (*(v21 + 16))
    {
      v22 = *(v21 + 32);
LABEL_32:
      v3 = v22;

      return v3;
    }

    __break(1u);
    goto LABEL_41;
  }

  if (qword_1005019D8 != -1)
  {
LABEL_41:
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_1000958E4(v23, qword_10051B2C8);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v30 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_1002FFA0C(v29, a2, &v30);
    _os_log_impl(&_mh_execute_header, v24, v25, "No matching application with identifier %s", v26, 0xCu);
    sub_1000752F4(v27);
  }

  return 0;
}

void sub_10013662C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = objc_allocWithZone(NSFetchRequest);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 initWithEntityName:v9];

  type metadata accessor for SecureElementApplicationEntity();
  v11 = NSManagedObjectContext.fetch<A>(_:)();

  if (v4)
  {
    return;
  }

  v46 = a1;
  v47 = a3;
  if (v11 >> 62)
  {
LABEL_32:
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_33:

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_1000958E4(v41, qword_10051B2C8);

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v44 = 136315394;
      *(v44 + 4) = sub_1002FFA0C(0xD000000000000023, 0x8000000100463D40, &v48);
      *(v44 + 12) = 2080;
      *(v44 + 14) = sub_1002FFA0C(v47, a4, &v48);
      _os_log_impl(&_mh_execute_header, v42, v43, "%s: Application %s does not exist", v44, 0x16u);
      swift_arrayDestroy();
    }

    sub_10009591C();
    swift_allocError();
    *v45 = 20;
    swift_willThrow();
    return;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_33;
  }

LABEL_4:
  v13 = 0;
  while (1)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v14 = *(v11 + 8 * v13 + 32);
    }

    v15 = v14;
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v17 = [v14 identifier];
    if (!v17)
    {
      goto LABEL_5;
    }

    v18 = v17;
    v19 = v15;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    if (v20 == v47 && v22 == a4)
    {
      break;
    }

    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v15 = v19;
    if (v24)
    {
      goto LABEL_19;
    }

LABEL_5:

    ++v13;
    if (v16 == v12)
    {
      goto LABEL_33;
    }
  }

LABEL_19:

  v25 = v19;
  [v46 deleteObject:v19];
  v48 = 0;
  if ([v46 save:&v48])
  {
    v26 = v48;
    [v46 refreshAllObjects];
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000958E4(v27, qword_10051B2C8);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v48 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_1002FFA0C(v47, a4, &v48);
      _os_log_impl(&_mh_execute_header, v28, v29, "Successfully deleted application %s from persistent container", v30, 0xCu);
      sub_1000752F4(v31);
    }
  }

  else
  {
    v32 = v48;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    [v46 reset];
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_1000958E4(v33, qword_10051B2C8);
    swift_errorRetain();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v36 = 136315394;
      *(v36 + 4) = sub_1002FFA0C(0xD000000000000023, 0x8000000100463D40, &v48);
      *(v36 + 12) = 2080;
      swift_getErrorValue();
      v37 = Error.localizedDescription.getter();
      v39 = sub_1002FFA0C(v37, v38, &v48);

      *(v36 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v34, v35, "%s: CoreData error %s encountered while saving view context", v36, 0x16u);
      swift_arrayDestroy();
    }

    sub_10009591C();
    swift_allocError();
    *v40 = 0;
    swift_willThrow();
  }
}

void sub_100136D04(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v12 = objc_allocWithZone(NSFetchRequest);
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 initWithEntityName:v13];

  type metadata accessor for SecureElementApplicationEntity();
  v15 = NSManagedObjectContext.fetch<A>(_:)();

  if (v6)
  {
    return;
  }

  v50 = a1;
  v51 = a5;
  v52 = a6;
  v53 = a3;
  if (v15 >> 62)
  {
LABEL_32:
    v16 = _CocoaArrayWrapper.endIndex.getter();
    if (v16)
    {
      goto LABEL_4;
    }

LABEL_33:

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_1000958E4(v45, qword_10051B2C8);

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v48 = 136315394;
      *(v48 + 4) = sub_1002FFA0C(0xD000000000000015, 0x8000000100463D00, &v54);
      *(v48 + 12) = 2080;
      *(v48 + 14) = sub_1002FFA0C(v53, a4, &v54);
      _os_log_impl(&_mh_execute_header, v46, v47, "%s: Application %s does not exist", v48, 0x16u);
      swift_arrayDestroy();
    }

    sub_10009591C();
    swift_allocError();
    *v49 = 6;
    swift_willThrow();
    return;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_33;
  }

LABEL_4:
  v17 = 0;
  while (1)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v18 = *(v15 + 8 * v17 + 32);
    }

    v19 = v18;
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v21 = [v18 identifier];
    if (!v21)
    {
      goto LABEL_5;
    }

    v22 = v21;
    v23 = v19;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    if (v24 == v53 && v26 == a4)
    {
      break;
    }

    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v19 = v23;
    if (v28)
    {
      goto LABEL_19;
    }

LABEL_5:

    ++v17;
    if (v20 == v16)
    {
      goto LABEL_33;
    }
  }

LABEL_19:

  v29 = String._bridgeToObjectiveC()();
  v30 = v23;
  [v23 setBundleIdentifier:v29];

  v54 = 0;
  if ([v50 save:&v54])
  {
    v31 = v54;
    [v50 refreshAllObjects];
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_1000958E4(v32, qword_10051B2C8);

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v35 = 136315394;
      *(v35 + 4) = sub_1002FFA0C(v51, v52, &v54);
      *(v35 + 12) = 2080;
      *(v35 + 14) = sub_1002FFA0C(v53, a4, &v54);
      _os_log_impl(&_mh_execute_header, v33, v34, "Successfully updated bundleId %s to appId %s", v35, 0x16u);
      swift_arrayDestroy();
    }
  }

  else
  {
    v36 = v54;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    [v50 reset];
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_1000958E4(v37, qword_10051B2C8);
    swift_errorRetain();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v40 = 136315394;
      *(v40 + 4) = sub_1002FFA0C(0xD000000000000015, 0x8000000100463D00, &v54);
      *(v40 + 12) = 2080;
      swift_getErrorValue();
      v41 = Error.localizedDescription.getter();
      v43 = sub_1002FFA0C(v41, v42, &v54);

      *(v40 + 14) = v43;
      v30 = v23;
      _os_log_impl(&_mh_execute_header, v38, v39, "%s: CoreData error %s encountered while saving view context", v40, 0x16u);
      swift_arrayDestroy();
    }

    sub_10009591C();
    swift_allocError();
    *v44 = 0;
    swift_willThrow();
  }
}

void sub_100137444(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = objc_allocWithZone(NSFetchRequest);
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 initWithEntityName:v11];

  type metadata accessor for SecureElementApplicationEntity();
  v13 = NSManagedObjectContext.fetch<A>(_:)();

  if (v5)
  {
    return;
  }

  v44 = a1;
  v45 = a3;
  v43 = a5;
  if (v13 >> 62)
  {
LABEL_29:
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (v14)
    {
      goto LABEL_4;
    }

LABEL_30:

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_1000958E4(v38, qword_10051B2C8);

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v41 = 136315394;
      *(v41 + 4) = sub_1002FFA0C(0xD000000000000025, 0x8000000100463CA0, &v46);
      *(v41 + 12) = 2080;
      *(v41 + 14) = sub_1002FFA0C(v45, a4, &v46);
      _os_log_impl(&_mh_execute_header, v39, v40, "%s: Application %s does not exist", v41, 0x16u);
      swift_arrayDestroy();
    }

    sub_10009591C();
    swift_allocError();
    *v42 = 6;
    swift_willThrow();
    return;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_30;
  }

LABEL_4:
  v15 = 0;
  while (1)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v16 = *(v13 + 8 * v15 + 32);
    }

    v17 = v16;
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v19 = [v16 identifier];
    if (!v19)
    {
      goto LABEL_5;
    }

    v20 = v19;
    v21 = v17;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (v22 == v45 && v24 == a4)
    {
      break;
    }

    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v17 = v21;
    if (v26)
    {
      goto LABEL_19;
    }

LABEL_5:

    ++v15;
    if (v18 == v14)
    {
      goto LABEL_30;
    }
  }

LABEL_19:

  v27 = v21;
  [v21 setGdprVersionShown:v43];
  v46 = 0;
  if ([v44 save:&v46])
  {
    v28 = v46;
    [v44 refreshAllObjects];
  }

  else
  {
    v29 = v46;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    [v44 reset];
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000958E4(v30, qword_10051B2C8);
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v33 = 136315394;
      *(v33 + 4) = sub_1002FFA0C(0xD000000000000025, 0x8000000100463CA0, &v46);
      *(v33 + 12) = 2080;
      swift_getErrorValue();
      v34 = Error.localizedDescription.getter();
      v36 = sub_1002FFA0C(v34, v35, &v46);

      *(v33 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v31, v32, "%s: CoreData error %s encountered while saving view context", v33, 0x16u);
      swift_arrayDestroy();
      v27 = v21;
    }

    sub_10009591C();
    swift_allocError();
    *v37 = 0;
    swift_willThrow();
  }
}

id sub_100137A14(uint64_t a1, unint64_t a2)
{
  v5 = sub_1001362D4(a1, a2);
  if (v2)
  {
    return 0;
  }

  if (!v5)
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000958E4(v9, qword_10051B2C8);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1002FFA0C(a1, a2, &v14);
      _os_log_impl(&_mh_execute_header, v10, v11, "No matching application with identifier %s", v12, 0xCu);
      sub_1000752F4(v13);
    }

    return 0;
  }

  v7 = v5;
  type metadata accessor for ApplicationInfoInternal();
  v8 = sub_100137F6C(v7);

  return v8;
}

uint64_t sub_100137BA4(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(NSFetchRequest);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithEntityName:v5];

  if (a1)
  {
    sub_100068FC4(&qword_100504060, &qword_10040B370);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100409E40;
    *(v7 + 32) = a1;
    sub_100137EAC();
    v8 = a1;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v6 setSortDescriptors:isa];
  }

  v10 = sub_10035E904();
  if (v1)
  {

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000958E4(v12, qword_10051B2C8);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v15 = 136315394;
      *(v15 + 4) = sub_1002FFA0C(0xD000000000000021, 0x8000000100463CD0, &v21);
      *(v15 + 12) = 2080;
      swift_getErrorValue();
      v16 = Error.localizedDescription.getter();
      v18 = sub_1002FFA0C(v16, v17, &v21);

      *(v15 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v13, v14, "%s: CoreData error %s encountered while fetching entity", v15, 0x16u);
      swift_arrayDestroy();
    }

    sub_10009591C();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();
  }

  else
  {
    v11 = v10;
    type metadata accessor for SecureElementApplicationEntity();
    v2 = NSManagedObjectContext.fetch<A>(_:)();
  }

  return v2;
}

unint64_t sub_100137EAC()
{
  result = qword_1005045C0;
  if (!qword_1005045C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005045C0);
  }

  return result;
}

uint64_t sub_100137EF8()
{

  return _swift_deallocObject(v0, 64, 7);
}

id sub_100137F6C(void *a1)
{
  result = [a1 identifier];
  if (result)
  {
    v3 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = [a1 bundleIdentifier];
    if (v4)
    {
      v5 = v4;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    [a1 gdprVersionShown];
    return dispatch thunk of ApplicationInfoInternal.__allocating_init(applicationId:bundleId:gdprShownVersion:)();
  }

  return result;
}

uint64_t sub_100138040(uint64_t *a1)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v5)
    {
      sub_10006A178(v4, v3);
      *&bytes = v4;
      WORD4(bytes) = v3;
      BYTE10(bytes) = BYTE2(v3);
      BYTE11(bytes) = BYTE3(v3);
      BYTE12(bytes) = BYTE4(v3);
      BYTE13(bytes) = BYTE5(v3);
      BYTE14(bytes) = BYTE6(v3);
      result = SecRandomCopyBytes(kSecRandomDefault, BYTE6(v3), &bytes);
      v7 = DWORD2(bytes) | ((WORD6(bytes) | (BYTE14(bytes) << 16)) << 32);
      *a1 = bytes;
      a1[1] = v7;
      return result;
    }

    v9 = v3 & 0x3FFFFFFFFFFFFFFFLL;

    sub_10006A178(v4, v3);
    *a1 = xmmword_1004098D0;
    sub_10006A178(0, 0xC000000000000000);
    v10 = v4 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v10 < v4)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v4, __DataStorage._offset.getter()))
      {
LABEL_19:
        __break(1u);
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v11 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v9 = v11;
    }

    if (v10 >= v4)
    {

      v12 = sub_100138360(v4, v4 >> 32);

      *a1 = v4;
      a1[1] = v9 | 0x4000000000000000;
      if (!v1)
      {
        return v12;
      }

      return result;
    }

    __break(1u);
    goto LABEL_18;
  }

  if (v5 == 2)
  {

    sub_10006A178(v4, v3);
    *&bytes = v4;
    *(&bytes + 1) = v3 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_1004098D0;
    sub_10006A178(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v8 = *(&bytes + 1);
    result = sub_100138360(*(bytes + 16), *(bytes + 24));
    *a1 = bytes;
    a1[1] = v8 | 0x8000000000000000;
  }

  else
  {
    *(&bytes + 7) = 0;
    *&bytes = 0;
    return SecRandomCopyBytes(kSecRandomDefault, 0, &bytes);
  }

  return result;
}

uint64_t sub_100138360(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_10;
  }

  v5 = result;
  result = __DataStorage._offset.getter();
  v6 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = __OFSUB__(a2, a1);
  v8 = a2 - a1;
  if (v7)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v9 = __DataStorage._length.getter();
  if (v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  return SecRandomCopyBytes(kSecRandomDefault, v10, (v5 + v6));
}

uint64_t sub_1001383EC(uint64_t a1)
{
  v6 = sub_1000B07FC(a1);
  v7 = v1;
  v2 = sub_100138040(&v6);
  if (!v2)
  {
    return v6;
  }

  v3 = v2;
  sub_1000B9C54();
  _StringGuts.grow(_:)(37);

  v8 = v3;
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  sub_10030990C(0, 1, 0xD000000000000023, 0x8000000100463D70, 0);
  swift_willThrow();
  return sub_10006A178(v6, v7);
}

void *sub_1001384E4(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = _swiftEmptyArrayStorage;
  if (!v3)
  {
    return v4;
  }

  v5 = a1;
  sub_10019F594(0, v3, 0);
  v4 = _swiftEmptyArrayStorage;
  v6 = v5 + 64;
  result = _HashTable.startBucket.getter();
  v8 = result;
  v9 = 0;
  v37 = *(v5 + 36);
  v30 = v5 + 72;
  v31 = v3;
  v32 = v5 + 64;
  v33 = v5;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v5 + 32))
  {
    v11 = v8 >> 6;
    if ((*(v6 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_22;
    }

    if (v37 != *(v5 + 36))
    {
      goto LABEL_23;
    }

    v36 = v4;
    v34 = v9;
    v12 = (*(v5 + 48) + 16 * v8);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(*(v5 + 56) + 8 * v8);
    sub_100069E2C(*v12, v13);

    v35 = v2;
    sub_100288788(v14, v13);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
    v16 = BidirectionalCollection<>.joined(separator:)();
    v18 = v17;

    v19 = v14;
    v4 = v36;
    sub_10006A178(v19, v13);

    v21 = v36[2];
    v20 = v36[3];
    if (v21 >= v20 >> 1)
    {
      result = sub_10019F594((v20 > 1), v21 + 1, 1);
      v4 = v36;
    }

    v4[2] = v21 + 1;
    v22 = &v4[3 * v21];
    v22[4] = v16;
    v22[5] = v18;
    v22[6] = v15;
    v5 = v33;
    v10 = 1 << *(v33 + 32);
    if (v8 >= v10)
    {
      goto LABEL_24;
    }

    v6 = v32;
    v23 = *(v32 + 8 * v11);
    if ((v23 & (1 << v8)) == 0)
    {
      goto LABEL_25;
    }

    if (v37 != *(v33 + 36))
    {
      goto LABEL_26;
    }

    v24 = v23 & (-2 << (v8 & 0x3F));
    if (v24)
    {
      v10 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
      v2 = v35;
    }

    else
    {
      v25 = v11 << 6;
      v26 = v11 + 1;
      v27 = (v30 + 8 * v11);
      v2 = v35;
      while (v26 < (v10 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          result = sub_1000937D4(v8, v37, 0);
          v10 = __clz(__rbit64(v28)) + v25;
          goto LABEL_4;
        }
      }

      result = sub_1000937D4(v8, v37, 0);
    }

LABEL_4:
    v9 = v34 + 1;
    v8 = v10;
    if (v34 + 1 == v31)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id sub_100138800()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v1);
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS.QoSClass();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v15 = OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_queue;
  v11 = sub_10009393C(0, &qword_100501E50, OS_dispatch_queue_ptr);
  v14[1] = "_registeredAppIdentifiers";
  v14[2] = v11;
  (*(v7 + 104))(v9, enum case for DispatchQoS.QoSClass.default(_:), v6);
  DispatchQoS.init(qosClass:relativePriority:)();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v2);
  v18 = _swiftEmptyArrayStorage;
  sub_1001350EC(&qword_1005064A0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100068FC4(&unk_100501E60, &qword_100408C30);
  sub_100075C60(&qword_1005064B0, &unk_100501E60, &qword_100408C30, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v0[v15] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v0[OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_appLaunchRuntimeSeconds] = 0x4000000000000000;
  *&v0[OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_appUserQuitMonitor] = 0;
  *&v0[OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_assertionTimers] = _swiftEmptyDictionarySingleton;
  v0[OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_isRunning] = 0;
  v12 = &v0[OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_lastCheckBootUUIDKey];
  *v12 = 0xD00000000000001BLL;
  v12[1] = 0x8000000100463ED0;
  *&v0[OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_registeredAppIdentifiersPerKey] = _swiftEmptyDictionarySingleton;
  v18 = &_swiftEmptySetSingleton;
  sub_100068FC4(&qword_100504670, &unk_10040BAF0);
  sub_10013E018(&qword_100504678, &protocol witness table for String, &protocol conformance descriptor for <> Set<A>);
  sub_10013E018(&qword_100504680, &protocol witness table for String, &protocol conformance descriptor for <> Set<A>);
  UserDefaultBackedCodable.init(suiteName:key:initial:)();
  v18 = &_swiftEmptySetSingleton;
  UserDefaultBackedCodable.init(suiteName:key:initial:)();
  v17.receiver = v0;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, "init");
}

id sub_100138CEC()
{
  result = [objc_allocWithZone(type metadata accessor for CarKeyAppLauncher(0)) init];
  qword_10051B2B8 = result;
  return result;
}

void sub_100138D20()
{
  v1 = v0;
  v2 = sub_100068FC4(&qword_100504700, &qword_10040BB00);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v24 - v4;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = (v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *&v1[OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_queue];
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6, v8);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
    v13 = OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_isRunning;
    if ((v1[OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_isRunning] & 1) == 0)
    {
      v24[1] = v12;
      v14 = objc_opt_self();
      v15 = String._bridgeToObjectiveC()();
      v16 = [v14 isFirstLaunchAfterBootForKey:v15];

      if (v16)
      {
        v17 = OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher__registeredAppIdentifiers;
        swift_beginAccess();
        (*(v3 + 16))(v5, &v1[v17], v2);
        UserDefaultBackedCodable.wrappedValue.getter();
        (*(v3 + 8))(v5, v2);
        v25 = aBlock[0];
        swift_beginAccess();
        UserDefaultBackedCodable.wrappedValue.setter();
        swift_endAccess();
        v18 = String._bridgeToObjectiveC()();
        [v14 setFirstLaunchAfterBootDoneForKey:v18];
      }

      v1[v13] = 1;
      sub_10013912C();
      v19 = swift_allocObject();
      *(v19 + 16) = v1;
      aBlock[4] = sub_10013F1B4;
      aBlock[5] = v19;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100193978;
      aBlock[3] = &unk_1004C84C0;
      v20 = _Block_copy(aBlock);
      v21 = v1;

      os_state_add_handler();
      _Block_release(v20);
      v22 = OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher__allowedAppIdentifiers;
      swift_beginAccess();
      (*(v3 + 16))(v5, &v21[v22], v2);
      UserDefaultBackedCodable.wrappedValue.getter();
      (*(v3 + 8))(v5, v2);
      v23 = *(v25 + 16);

      if (v23)
      {
        sub_10013A69C();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10013912C()
{
  v1 = v0;
  v2 = sub_100068FC4(&qword_100504700, &qword_10040BB00);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v134 - v4;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = (v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *&v1[OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_queue];
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6, v8);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    goto LABEL_116;
  }

  if (![objc_opt_self() isPassLibraryAvailable])
  {
    if (qword_100501998 != -1)
    {
      goto LABEL_117;
    }

    goto LABEL_10;
  }

  v13 = OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_registeredAppIdentifiersPerKey;
  swift_beginAccess();
  v162 = v13;
  *&v1[v13] = _swiftEmptyDictionarySingleton;

  v137 = [objc_allocWithZone(PKPassLibrary) init];
  v14 = [v137 passes];
  sub_10009393C(0, &qword_100504708, PKPass_ptr);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher__registeredAppIdentifiers;
  swift_beginAccess();
  (*(v3 + 16))(v5, &v1[v16], v2);
  UserDefaultBackedCodable.wrappedValue.getter();
  (*(v3 + 8))(v5, v2);
  v17 = *(v165[0] + 56);
  v139 = v165[0] + 56;
  v18 = 1 << *(v165[0] + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v17;
  v138 = (v18 + 63) >> 6;
  v21 = v15 & 0xFFFFFFFFFFFFFF8;
  v149 = v15 & 0xFFFFFFFFFFFFFF8;
  if (v15 < 0)
  {
    v21 = v15;
  }

  v134[1] = v21;
  v148 = v15 & 0xC000000000000001;
  v135 = v15;
  v147 = v15 + 32;
  v136 = v165[0];

  v22 = 0;
  v151 = xmmword_1004098F0;
  v152 = v1;
  while (1)
  {
    if (!v20)
    {
      do
      {
        v27 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_115;
        }

        if (v27 >= v138)
        {

          if (qword_100501998 != -1)
          {
            swift_once();
          }

          v124 = type metadata accessor for Logger();
          sub_1000958E4(v124, qword_1005045D0);
          v125 = v1;
          v126 = Logger.logObject.getter();
          v127 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v126, v127))
          {
            v128 = swift_slowAlloc();
            v129 = swift_slowAlloc();
            v165[0] = v129;
            *v128 = 136315138;

            sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
            sub_1000E1E80();
            v130 = Dictionary.description.getter();
            v132 = v131;

            v133 = sub_1002FFA0C(v130, v132, v165);

            *(v128 + 4) = v133;
            _os_log_impl(&_mh_execute_header, v126, v127, "Updated apps per keys %s", v128, 0xCu);
            sub_1000752F4(v129);
          }

          return;
        }

        v20 = *(v139 + 8 * v27);
        ++v22;
      }

      while (!v20);
      v22 = v27;
    }

    v141 = v20;
    v28 = *(v136 + 48);
    v140 = v22;
    v29 = (v28 + ((v22 << 10) | (16 * __clz(__rbit64(v20)))));
    v31 = *v29;
    v30 = v29[1];

    v157 = v31;
    v158 = v30;
    v32 = String._bridgeToObjectiveC()();
    v33 = [v137 passUniqueIDsForAssociatedApplicationIdentifier:v32];

    if (v33)
    {
      break;
    }

LABEL_14:
    v20 = (v141 - 1) & v141;

    v22 = v140;
  }

  v34 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v166 = _swiftEmptyArrayStorage;
  if (!(v135 >> 62))
  {
    v35 = *(v149 + 16);
    if (v35)
    {
      goto LABEL_23;
    }

LABEL_50:
    v146 = _swiftEmptyArrayStorage;
LABEL_51:

    v1 = v152;
    if (!(v146 >> 62))
    {
      v55 = *((v146 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v55)
      {
        goto LABEL_53;
      }

      goto LABEL_13;
    }

    v55 = _CocoaArrayWrapper.endIndex.getter();
    if (!v55)
    {
LABEL_13:

      goto LABEL_14;
    }

LABEL_53:
    v56 = 0;
    v145 = v146 & 0xC000000000000001;
    v144 = v146 & 0xFFFFFFFFFFFFFF8;
    v143 = v146 + 32;
    v142 = v55;
LABEL_55:
    if (v145)
    {
      v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v56 >= *(v144 + 16))
      {
        goto LABEL_114;
      }

      v57 = *(v143 + 8 * v56);
    }

    v58 = v57;
    v40 = __OFADD__(v56, 1);
    v59 = v56 + 1;
    if (v40)
    {
      goto LABEL_113;
    }

    v60 = [v57 devicePrimaryPaymentApplication];
    if (!v60)
    {
      goto LABEL_121;
    }

    v61 = v60;
    v62 = [v60 subcredentials];

    if (!v62)
    {
      goto LABEL_120;
    }

    v155 = v58;
    v156 = v59;
    v63 = sub_10009393C(0, &qword_100504710, PKAppletSubcredential_ptr);
    sub_10013E864();
    v64 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v154 = v64;
    if ((v64 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v64 = v167;
      v65 = v168;
      v66 = v169;
      v67 = v170;
      v68 = v171;
    }

    else
    {
      v69 = -1 << *(v64 + 32);
      v65 = v64 + 56;
      v70 = ~v69;
      v71 = -v69;
      if (v71 < 64)
      {
        v72 = ~(-1 << v71);
      }

      else
      {
        v72 = -1;
      }

      v68 = v72 & *(v64 + 56);

      v66 = v70;
      v67 = 0;
    }

    v153 = v66;
    v73 = (v66 + 64) >> 6;
    v159 = v63;
    v161 = v73;
    v160 = v64;
    while (1)
    {
      if (v64 < 0)
      {
        v79 = __CocoaSet.Iterator.next()();
        if (!v79 || (v166 = v79, swift_dynamicCast(), v78 = v165[0], v76 = v67, v77 = v68, !v165[0]))
        {
LABEL_54:
          sub_100093854(v64);

          v56 = v156;
          if (v156 == v142)
          {
            goto LABEL_13;
          }

          goto LABEL_55;
        }
      }

      else
      {
        v74 = v67;
        v75 = v68;
        v76 = v67;
        if (!v68)
        {
          while (1)
          {
            v76 = v74 + 1;
            if (__OFADD__(v74, 1))
            {
              break;
            }

            if (v76 >= v73)
            {
              goto LABEL_54;
            }

            v75 = *(v65 + 8 * v76);
            ++v74;
            if (v75)
            {
              goto LABEL_73;
            }
          }

          __break(1u);
LABEL_110:
          __break(1u);
          goto LABEL_111;
        }

LABEL_73:
        v77 = (v75 - 1) & v75;
        v78 = *(*(v64 + 48) + ((v76 << 9) | (8 * __clz(__rbit64(v75)))));
        if (!v78)
        {
          goto LABEL_54;
        }
      }

      v164 = v77;
      v80 = v65;
      v163 = v78;
      v81 = [v78 identifier];
      if (!v81)
      {
        __break(1u);
        goto LABEL_119;
      }

      v82 = v81;
      v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v85 = v84;

      v86 = sub_10013044C(v83, v85);
      if (v87 >> 60 == 15)
      {
        break;
      }

      v88 = v86;
      v89 = v87;
      v90 = v162;
      swift_beginAccess();
      v91 = *&v1[v90];
      if (*(v91 + 16) && (v92 = sub_10008C8DC(v88, v89), (v93 & 1) != 0))
      {
        v150 = v88;
        v94 = *(*(v91 + 56) + 8 * v92);
        v95 = swift_endAccess();
        v165[0] = v157;
        v165[1] = v158;
        __chkstk_darwin(v95);
        v134[-2] = v165;
        swift_bridgeObjectRetain_n();
        v96 = sub_1002F784C(sub_10013E8CC, &v134[-4], v94);

        if (v96)
        {
          sub_10006A2D0(v150, v89);

          v67 = v76;
          v68 = v164;
          goto LABEL_80;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_10012EA44(0, *(v94 + 2) + 1, 1, v94);
        }

        v118 = *(v94 + 2);
        v117 = *(v94 + 3);
        v119 = v158;
        v65 = v80;
        if (v118 >= v117 >> 1)
        {
          v94 = sub_10012EA44((v117 > 1), v118 + 1, 1, v94);
          v119 = v158;
        }

        v64 = v160;
        *(v94 + 2) = v118 + 1;
        v120 = &v94[16 * v118];
        *(v120 + 4) = v157;
        *(v120 + 5) = v119;
        v121 = v162;
        swift_beginAccess();
        v122 = v150;
        sub_100069E2C(v150, v89);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v166 = *&v1[v121];
        *&v1[v121] = 0x8000000000000000;
        sub_100315470(v94, v122, v89, isUniquelyReferenced_nonNull_native);
        sub_10006A2D0(v122, v89);
        *&v1[v121] = v166;
        swift_endAccess();

        sub_10006A2D0(v122, v89);
        v67 = v76;
        v68 = v164;
LABEL_81:
        v73 = v161;
      }

      else
      {
        swift_endAccess();
        sub_100068FC4(&unk_100504720, &qword_100414C40);
        v97 = swift_allocObject();
        *(v97 + 16) = v151;
        v98 = v158;
        *(v97 + 32) = v157;
        *(v97 + 40) = v98;
        v99 = v162;
        swift_beginAccess();

        sub_10006A2BC(v88, v89);
        v100 = swift_isUniquelyReferenced_nonNull_native();
        v101 = v88;
        v102 = v100;
        v166 = *&v1[v99];
        v103 = v166;
        *&v1[v99] = 0x8000000000000000;
        v104 = v89;
        v105 = v101;
        v106 = v104;
        v108 = sub_10008C8DC(v101, v104);
        v109 = *(v103 + 16);
        v110 = (v107 & 1) == 0;
        v111 = v109 + v110;
        if (__OFADD__(v109, v110))
        {
          goto LABEL_110;
        }

        v112 = v107;
        if (*(v103 + 24) >= v111)
        {
          if ((v102 & 1) == 0)
          {
            sub_100311664();
          }
        }

        else
        {
          sub_10030AE8C(v111, v102);
          v113 = sub_10008C8DC(v105, v106);
          if ((v112 & 1) != (v114 & 1))
          {
            goto LABEL_122;
          }

          v108 = v113;
        }

        v65 = v80;
        v115 = v166;
        v64 = v160;
        if (v112)
        {
          *(*(v166 + 56) + 8 * v108) = v97;

          v116 = v106;
          sub_10006A2D0(v105, v106);
        }

        else
        {
          v116 = v106;
          sub_100317CF8(v108, v105, v106, v97, v166);
        }

        v73 = v161;
        v1 = v152;
        *&v152[v162] = v115;
        swift_endAccess();

        sub_10006A2D0(v105, v116);
        v67 = v76;
        v68 = v164;
      }
    }

    v67 = v76;
    v68 = v164;
LABEL_80:
    v65 = v80;
    v64 = v160;
    goto LABEL_81;
  }

  v35 = _CocoaArrayWrapper.endIndex.getter();
  if (!v35)
  {
    goto LABEL_50;
  }

LABEL_23:
  v36 = 0;
  v37 = v34 + 56;
  v146 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v148)
    {
      v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v36 >= *(v149 + 16))
      {
        goto LABEL_112;
      }

      v38 = *(v147 + 8 * v36);
    }

    v39 = v38;
    v40 = __OFADD__(v36++, 1);
    if (v40)
    {
      break;
    }

    v41 = [v38 uniqueID];
    if (!v41)
    {
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

    v42 = v41;
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    if (*(v34 + 16) && (Hasher.init(_seed:)(), String.hash(into:)(), v46 = Hasher._finalize()(), v47 = -1 << *(v34 + 32), v48 = v46 & ~v47, ((*(v37 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) != 0))
    {
      v49 = ~v47;
      while (1)
      {
        v50 = (*(v34 + 48) + 16 * v48);
        v51 = *v50 == v43 && v50[1] == v45;
        if (v51 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v48 = (v48 + 1) & v49;
        if (((*(v37 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      v52 = [v39 secureElementPass];
      if (!v52)
      {
        goto LABEL_39;
      }

      v53 = v52;
      v54 = [v52 isCarKeyPass];

      if ((v54 & 1) == 0)
      {
        v39 = v53;
        goto LABEL_39;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v146 = v166;
      if (v36 == v35)
      {
        goto LABEL_51;
      }
    }

    else
    {
LABEL_38:

LABEL_39:

      if (v36 == v35)
      {
        goto LABEL_51;
      }
    }
  }

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
  swift_once();
LABEL_10:
  v23 = type metadata accessor for Logger();
  sub_1000958E4(v23, qword_1005045D0);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "PKPassLibrary is not available", v26, 2u);
  }
}

_DWORD *sub_10013A210()
{
  v1 = v0;
  v2 = sub_100068FC4(&qword_100504700, &qword_10040BB00);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - v4;
  v6 = OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher__allowedAppIdentifiers;
  swift_beginAccess();
  v30 = *(v3 + 16);
  v30(v5, v1 + v6, v2);
  UserDefaultBackedCodable.wrappedValue.getter();
  v29 = *(v3 + 8);
  v29(v5, v2);
  v7 = v35;
  v8 = sub_100068FC4(&qword_100504670, &unk_10040BAF0);
  v36 = v8;
  *&v35 = v7;
  sub_100075D50(&v35, v34);
  v9 = _swiftEmptyDictionarySingleton;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = _swiftEmptyDictionarySingleton;
  sub_100315178(v34, 0xD000000000000015, 0x8000000100463FD0, isUniquelyReferenced_nonNull_native);
  v11 = v33;
  v12 = *(v1 + OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_appUserQuitMonitor) != 0;
  v36 = &type metadata for Bool;
  LOBYTE(v35) = v12;
  sub_100075D50(&v35, v34);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  v33 = v11;
  sub_100315178(v34, 0xD000000000000012, 0x8000000100463DF0, v13);
  v14 = v33;
  v15 = *(v1 + OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_isRunning);
  v36 = &type metadata for Bool;
  LOBYTE(v35) = v15;
  sub_100075D50(&v35, v34);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v33 = v14;
  sub_100315178(v34, 0x6E696E6E75527369, 0xE900000000000067, v16);
  v17 = v33;
  v18 = OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher__registeredAppIdentifiers;
  swift_beginAccess();
  v30(v5, v1 + v18, v2);
  UserDefaultBackedCodable.wrappedValue.getter();
  v29(v5, v2);
  v36 = v8;
  sub_100075D50(&v35, v34);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v32[0] = v17;
  sub_100315178(v34, 0xD000000000000018, 0x8000000100463FF0, v19);
  v20 = v32[0];
  swift_beginAccess();

  v22 = sub_1001384E4(v21);

  if (v22[2])
  {
    sub_100068FC4(&qword_100504770, &unk_10040BB10);
    v9 = static _DictionaryStorage.allocate(capacity:)();
  }

  *&v35 = v9;

  sub_1001C40EC(v23, 1, &v35);

  v24 = v35;
  v36 = sub_100068FC4(&qword_100504778, &qword_10040DDD0);
  *&v35 = v24;
  sub_100075D50(&v35, v34);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  v31 = v20;
  sub_100315178(v34, 0xD00000000000001ELL, 0x8000000100463E40, v25);
  sub_1001950D4(v31);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v27 = sub_100015DA0("carkeyapplauncher.state", isa);

  return v27;
}

void sub_10013A69C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = (&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1, v3);
  v7 = v6;
  v8 = _dispatchPreconditionTest(_:)();
  v10 = *(v2 + 8);
  v9 = v2 + 8;
  v10(v5, v1);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  v8 = OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_appUserQuitMonitor;
  if (*(v0 + OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_appUserQuitMonitor))
  {
    return;
  }

  v9 = v0;
  if (qword_100501998 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v11 = type metadata accessor for Logger();
  sub_1000958E4(v11, qword_1005045D0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Starting app user quit monitor", v14, 2u);
  }

  v15 = [objc_allocWithZone(SBSApplicationUserQuitMonitor) initWithDelegate:v9];
  v16 = *(v9 + v8);
  *(v9 + v8) = v15;
}

void sub_10013A89C(Swift::Int a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = (&v22[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_queue);
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6, v8);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_5;
  }

  if (*(v3 + OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_isRunning) != 1)
  {
    return;
  }

  swift_beginAccess();

  sub_100068FC4(&qword_100504700, &qword_10040BB00);
  v13 = UserDefaultBackedCodable.wrappedValue.modify();
  v14 = sub_1000D78B8(&v23, a1, a2);
  v13(v22, 0);
  swift_endAccess();

  if ((v14 & 1) == 0)
  {
    return;
  }

  swift_beginAccess();

  v15 = UserDefaultBackedCodable.wrappedValue.modify();
  sub_1000D78B8(&v23, a1, a2);
  v15(v22, 0);
  swift_endAccess();

  if (qword_100501998 != -1)
  {
    goto LABEL_10;
  }

LABEL_5:
  v16 = type metadata accessor for Logger();
  sub_1000958E4(v16, qword_1005045D0);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_1002FFA0C(a1, a2, v22);
    _os_log_impl(&_mh_execute_header, v17, v18, "Registered app %s", v19, 0xCu);
    sub_1000752F4(v20);
  }

  sub_10013912C();
  sub_10013A69C();
}

void sub_10013ABFC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_100068FC4(&qword_100504700, &qword_10040BB00);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31[-1] - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = (&v31[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v3 + OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_queue);
  *v14 = v15;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10, v12);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  v18 = *(v11 + 8);
  v17 = v11 + 8;
  v18(v14, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_5;
  }

  if (*(v3 + OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_isRunning) != 1)
  {
    return;
  }

  swift_beginAccess();
  v19 = UserDefaultBackedCodable.wrappedValue.modify();
  sub_10010E7A0(a1, a2);
  v21 = v20;
  v19(v31, 0);
  swift_endAccess();
  if (!v21)
  {
    return;
  }

  v17 = OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher__allowedAppIdentifiers;
  swift_beginAccess();
  v22 = UserDefaultBackedCodable.wrappedValue.modify();
  sub_10010E7A0(a1, a2);
  v22(v31, 0);
  swift_endAccess();

  if (qword_100501998 != -1)
  {
    goto LABEL_11;
  }

LABEL_5:
  v23 = type metadata accessor for Logger();
  sub_1000958E4(v23, qword_1005045D0);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v30 = v17;
    v31[0] = v27;
    v28 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_1002FFA0C(a1, a2, v31);
    _os_log_impl(&_mh_execute_header, v24, v25, "Unregistered app %s", v26, 0xCu);
    sub_1000752F4(v28);
    v17 = v30;
  }

  sub_10013912C();
  (*(v7 + 16))(v9, v3 + v17, v6);
  UserDefaultBackedCodable.wrappedValue.getter();
  (*(v7 + 8))(v9, v6);
  v29 = *(v31[0] + 16);

  if (!v29)
  {
    sub_10013B010();
  }
}

void sub_10013B010()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_queue);
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2, v4);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v10 = *(v3 + 8);
  v9 = v3 + 8;
  v10(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_4;
  }

  v9 = OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_appUserQuitMonitor;
  if (!*(v1 + OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_appUserQuitMonitor))
  {
    return;
  }

  if (qword_100501998 != -1)
  {
    goto LABEL_12;
  }

LABEL_4:
  v11 = type metadata accessor for Logger();
  sub_1000958E4(v11, qword_1005045D0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Stopping app user quit monitor", v14, 2u);
  }

  v15 = *(v1 + v9);
  if (v15)
  {
    [v15 invalidate];
    v16 = *(v1 + v9);
  }

  else
  {
    v16 = 0;
  }

  *(v1 + v9) = 0;
}

void sub_10013B210(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_100068FC4(&qword_100504700, &qword_10040BB00);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = (&v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v3 + OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_queue);
  *v14 = v15;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10, v12);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_6;
  }

  if (*(v3 + OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_isRunning) != 1)
  {
    return;
  }

  v17 = OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher__registeredAppIdentifiers;
  swift_beginAccess();
  v32 = *(v7 + 16);
  v32(v9, v3 + v17, v6);
  UserDefaultBackedCodable.wrappedValue.getter();
  v31 = *(v7 + 8);
  v31(v9, v6);
  v18 = sub_1000C6B9C(a1, a2, v33[0]);

  if ((v18 & 1) == 0)
  {
    return;
  }

  v19 = OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher__allowedAppIdentifiers;
  swift_beginAccess();

  v30 = v19;
  v20 = UserDefaultBackedCodable.wrappedValue.modify();
  LOBYTE(v19) = sub_1000D78B8(&v34, a1, a2);
  v20(v33, 0);
  swift_endAccess();

  if ((v19 & 1) == 0)
  {
    return;
  }

  if (qword_100501998 != -1)
  {
    goto LABEL_13;
  }

LABEL_6:
  v21 = type metadata accessor for Logger();
  sub_1000958E4(v21, qword_1005045D0);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v29 = v22;
    v26 = v25;
    v33[0] = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_1002FFA0C(a1, a2, v33);
    v27 = v29;
    _os_log_impl(&_mh_execute_header, v29, v23, "Allowed app %s", v24, 0xCu);
    sub_1000752F4(v26);
  }

  else
  {
  }

  v32(v9, v3 + v30, v6);
  UserDefaultBackedCodable.wrappedValue.getter();
  v31(v9, v6);
  v28 = *(v33[0] + 16);

  if (v28 == 1)
  {
    sub_10013A69C();
  }
}

uint64_t sub_10013B668(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100068FC4(&qword_100504700, &qword_10040BB00);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v45 - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = (&v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *&v3[OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_queue];
  *v14 = v15;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10, v12);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v14, v10);
  if ((v15 & 1) == 0)
  {
    goto LABEL_35;
  }

  if (v3[OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_isRunning] == 1)
  {
    v18 = OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_registeredAppIdentifiersPerKey;
    swift_beginAccess();
    v19 = *&v3[v18];
    if (!*(v19 + 16))
    {
      return swift_endAccess();
    }

    v20 = sub_10008C8DC(a1, a2);
    if ((v21 & 1) == 0)
    {
      return swift_endAccess();
    }

    v22 = *(*(v19 + 56) + 8 * v20);
    swift_endAccess();
    v23 = *(v22 + 16);
    v24 = OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher__allowedAppIdentifiers;

    v51 = v3;
    v49 = v24;
    result = swift_beginAccess();
    v50 = v23;
    if (v23)
    {
      v25 = 0;
      v46 = (v7 + 16);
      v47 = v22 + 32;
      v45 = (v7 + 8);
      v26 = _swiftEmptyArrayStorage;
      v48 = v22;
      while (v25 < *(v22 + 16))
      {
        v27 = (v47 + 16 * v25);
        v29 = *v27;
        v28 = v27[1];
        ++v25;
        (*v46)(v9, &v51[v49], v6);

        UserDefaultBackedCodable.wrappedValue.getter();
        (*v45)(v9, v6);
        v30 = v52[0];
        if (*(v52[0] + 16) && (Hasher.init(_seed:)(), String.hash(into:)(), v31 = Hasher._finalize()(), v32 = -1 << *(v30 + 32), v33 = v31 & ~v32, ((*(v30 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0))
        {
          v34 = ~v32;
          while (1)
          {
            v35 = (*(v30 + 48) + 16 * v33);
            v36 = *v35 == v29 && v35[1] == v28;
            if (v36 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v33 = (v33 + 1) & v34;
            if (((*(v30 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
            {
              goto LABEL_7;
            }
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          v53 = v26;
          if ((result & 1) == 0)
          {
            result = sub_10019F3C0(0, v26[2] + 1, 1);
            v26 = v53;
          }

          v38 = v26[2];
          v37 = v26[3];
          if (v38 >= v37 >> 1)
          {
            result = sub_10019F3C0((v37 > 1), v38 + 1, 1);
            v26 = v53;
          }

          v26[2] = v38 + 1;
          v39 = &v26[2 * v38];
          v39[4] = v29;
          v39[5] = v28;
        }

        else
        {
LABEL_7:
        }

        v22 = v48;
        if (v25 == v50)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
      goto LABEL_34;
    }

    v26 = _swiftEmptyArrayStorage;
LABEL_27:

    v40 = v26[2];
    v41 = v51;
    if (v40)
    {
      v42 = 0;
      v43 = v26 + 5;
      while (v42 < v26[2])
      {
        ++v42;
        v44 = *v43;
        v52[0] = *(v43 - 1);
        v52[1] = v44;

        sub_10013BB08(v52, v41);

        v43 += 2;
        if (v40 == v42)
        {
        }
      }

LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      return result;
    }
  }

  return result;
}

void sub_10013BB08(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  sub_10009393C(0, &qword_100504738, LSBundleRecord_ptr);

  v6 = sub_10013C50C(v5, v4);
  if (!v2)
  {
    v15 = v6;
    v16 = [v6 bundleIdentifier];
    if (v16)
    {
      v17 = v16;

      sub_10009393C(0, &qword_100506F80, RBSProcessHandle_ptr);
      v18 = [objc_opt_self() predicateMatchingBundleIdentifier:v17];

      v50 = sub_1001F0324(v18);
      if (v50)
      {

        if (qword_100501998 != -1)
        {
          swift_once();
        }

        v51 = type metadata accessor for Logger();
        sub_1000958E4(v51, qword_1005045D0);

        v52 = v50;
        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          aBlock = v56;
          *v55 = 136315394;
          *(v55 + 4) = sub_1002FFA0C(v5, v4, &aBlock);
          *(v55 + 12) = 1024;
          *(v55 + 14) = [v52 pid];

          _os_log_impl(&_mh_execute_header, v53, v54, "App is already running %s pid %d", v55, 0x12u);
          sub_1000752F4(v56);
        }

        else
        {
        }

        return;
      }

      if (qword_100501998 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_1000958E4(v19, qword_1005045D0);

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        aBlock = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_1002FFA0C(v5, v4, &aBlock);
        _os_log_impl(&_mh_execute_header, v20, v21, "Starting app %s", v22, 0xCu);
        sub_1000752F4(v23);
      }

      v24 = [objc_opt_self() serviceWithDefaultShellEndpoint];
      if (!v24)
      {

        return;
      }

      v25 = v24;
      sub_100068FC4(&unk_100503F50, &unk_10040D950);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1004098F0;
      aBlock = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v27;
      AnyHashable.init<A>(_:)();
      *(inited + 96) = &type metadata for Bool;
      *(inited + 72) = 1;
      sub_100090BC4(inited);
      swift_setDeallocating();
      sub_100075768(inited + 32, &qword_100502C48, &qword_10040B2D0);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v15 = [objc_opt_self() optionsWithDictionary:isa];

      v29 = swift_allocObject();
      v29[2] = a2;
      v29[3] = v5;
      v29[4] = v4;
      v61 = sub_10013EFE8;
      v62 = v29;
      aBlock = _NSConcreteStackBlock;
      v58 = 1107296256;
      v59 = sub_1000BBFA0;
      v60 = &unk_1004C82B8;
      v30 = _Block_copy(&aBlock);

      v31 = a2;

      [v25 openApplication:v17 withOptions:v15 completion:v30];
      _Block_release(v30);
    }

    else
    {
      if (qword_100501998 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      sub_1000958E4(v45, qword_1005045D0);

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        aBlock = v49;
        *v48 = 136315138;
        *(v48 + 4) = sub_1002FFA0C(v5, v4, &aBlock);
        _os_log_impl(&_mh_execute_header, v46, v47, "Failed to retrieve bundle identifier for %s", v48, 0xCu);
        sub_1000752F4(v49);
      }
    }

    return;
  }

  v7 = _convertErrorToNSError(_:)();
  v8 = [v7 domain];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  if ([v7 code] != -10814)
  {
LABEL_23:
    if (qword_100501998 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_1000958E4(v37, qword_1005045D0);

    v38 = v7;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      aBlock = v43;
      *v41 = 136315394;
      *(v41 + 4) = sub_1002FFA0C(v5, v4, &aBlock);
      *(v41 + 12) = 2112;
      *(v41 + 14) = v38;
      *v42 = v38;
      v44 = v38;
      _os_log_impl(&_mh_execute_header, v39, v40, "Failed to retrieve bundle record for %s %@", v41, 0x16u);
      sub_100075768(v42, &unk_100503F70, &unk_10040B2E0);

      sub_1000752F4(v43);
    }

    else
    {
    }

    return;
  }

  if (qword_100501998 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_1000958E4(v32, qword_1005045D0);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    aBlock = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_1002FFA0C(v5, v4, &aBlock);
    _os_log_impl(&_mh_execute_header, v33, v34, "App not found %s", v35, 0xCu);
    sub_1000752F4(v36);
  }

  sub_10013ABFC(v5, v4);
}

id sub_10013C50C(uint64_t a1, uint64_t a2)
{
  v2 = String._bridgeToObjectiveC()();

  v7 = 0;
  v3 = [swift_getObjCClassFromMetadata() bundleRecordWithApplicationIdentifier:v2 error:&v7];

  if (v3)
  {
    v4 = v7;
  }

  else
  {
    v5 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_10013C5E4(void *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v14 = *(v23 - 8);
  __chkstk_darwin(v23);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *&a3[OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_queue];
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = a2;
  v17[6] = a3;
  aBlock[4] = sub_10013F044;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004C8308;
  v18 = _Block_copy(aBlock);
  v19 = a1;

  swift_errorRetain();
  v20 = a3;
  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_1001350EC(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v23);
}

void sub_10013C8E4(void *a1, uint64_t a2, void *a3, uint64_t a4, char *a5)
{
  if (a1)
  {
    v7 = qword_100501998;
    v8 = a1;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000958E4(v9, qword_1005045D0);
    v10 = v8;

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      aBlock = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_1002FFA0C(a2, a3, &aBlock);
      *(v13 + 12) = 1024;
      *(v13 + 14) = [v10 pid];

      _os_log_impl(&_mh_execute_header, v11, v12, "Started app %s pid %d", v13, 0x12u);
      sub_1000752F4(v14);
    }

    else
    {
    }

    aBlock = 0;
    v65 = 0xE000000000000000;
    _StringGuts.grow(_:)(20);

    aBlock = 0xD000000000000012;
    v65 = 0x8000000100463F90;
    v22._countAndFlagsBits = a2;
    v22._object = a3;
    String.append(_:)(v22);
    osloga = v10;
    v23 = [objc_opt_self() targetWithPid:{-[NSObject pid](v10, "pid")}];
    sub_100068FC4(&qword_100504060, &qword_10040B370);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_100409E40;
    v25 = String._bridgeToObjectiveC()();
    v26 = String._bridgeToObjectiveC()();
    v27 = [objc_opt_self() attributeWithDomain:v25 name:v26];

    *(v24 + 32) = v27;
    v28 = objc_allocWithZone(RBSAssertion);
    v29 = String._bridgeToObjectiveC()();

    sub_10009393C(0, &qword_100504750, RBSAttribute_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v31 = [v28 initWithExplanation:v29 target:v23 attributes:isa];

    aBlock = 0;
    v32 = [v31 acquireWithError:&aBlock];
    v33 = aBlock;
    if (v32)
    {

      v34 = v33;
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        aBlock = v38;
        *v37 = 136315138;
        *(v37 + 4) = sub_1002FFA0C(a2, a3, &aBlock);
        _os_log_impl(&_mh_execute_header, v35, v36, "Acquired assertion for %s", v37, 0xCu);
        sub_1000752F4(v38);
      }

      v39 = *&a5[OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_queue];
      v40 = swift_allocObject();
      v40[2] = a5;
      v40[3] = v31;
      v40[4] = a2;
      v40[5] = a3;
      v41 = objc_allocWithZone(SESTimer);
      v68 = sub_10013F09C;
      v69 = v40;
      aBlock = _NSConcreteStackBlock;
      v65 = 1107296256;
      v66 = sub_100080830;
      v67 = &unk_1004C8358;
      v42 = _Block_copy(&aBlock);

      v43 = a5;
      v44 = v31;
      v45 = sub_1003AE50C(v41, v39, v42);
      _Block_release(v42);

      v46 = OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_assertionTimers;
      swift_beginAccess();
      v47 = *&v43[v46];
      if ((v47 & 0xC000000000000001) != 0)
      {
        if (v47 < 0)
        {
          v48 = *&v43[v46];
        }

        else
        {
          v48 = v47 & 0xFFFFFFFFFFFFFF8;
        }

        v49 = v44;
        v50 = v45;
        v51 = __CocoaDictionary.count.getter();
        if (__OFADD__(v51, 1))
        {
          __break(1u);
        }

        *&v43[v46] = sub_10013E4F0(v48, v51 + 1);
      }

      else
      {
        v58 = v44;
        v59 = v45;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v70 = *&v43[v46];
      sub_1003160B8(v45, v44, isUniquelyReferenced_nonNull_native);
      *&v43[v46] = v70;

      swift_endAccess();
      sub_1003AE618(v45, 2.0);
    }

    else
    {
      v52 = aBlock;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_errorRetain();
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *v55 = 138412290;
        swift_errorRetain();
        v57 = _swift_stdlib_bridgeErrorToNSError();
        *(v55 + 4) = v57;
        *v56 = v57;
        _os_log_impl(&_mh_execute_header, v53, v54, "Failed to acquire RBSAssertion %@", v55, 0xCu);
        sub_100075768(v56, &unk_100503F70, &unk_10040B2E0);
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_100501998 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000958E4(v16, qword_1005045D0);

    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v18 = 136315394;
      *(v18 + 4) = sub_1002FFA0C(a2, a3, &aBlock);
      *(v18 + 12) = 2080;
      v70 = a4;
      swift_errorRetain();
      sub_100068FC4(&unk_100504740, &qword_100409110);
      v19 = String.init<A>(describing:)();
      v21 = sub_1002FFA0C(v19, v20, &aBlock);

      *(v18 + 14) = v21;
      _os_log_impl(&_mh_execute_header, oslog, v17, "Failed to get process for %s error %s", v18, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_10013D1F4(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = (&v22[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a1 + OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_queue);
  *v12 = v13;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8, v10);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if (v13)
  {
    [a2 invalidate];
    swift_beginAccess();
    v15 = sub_1001455E4(a2);
    swift_endAccess();

    if (qword_100501998 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v16 = type metadata accessor for Logger();
  sub_1000958E4(v16, qword_1005045D0);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_1002FFA0C(a3, a4, v22);
    _os_log_impl(&_mh_execute_header, v17, v18, "Invalidated assertion for %s", v19, 0xCu);
    sub_1000752F4(v20);
  }
}

uint64_t sub_10013D4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  swift_getObjCClassMetadata();
  sub_10013D57C(v9, v11, a4, a5, a6);
}

uint64_t sub_10013D57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v12 = *(v21 - 8);
  __chkstk_darwin(v21);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501990 != -1)
  {
    swift_once();
  }

  v15 = *(qword_10051B2B8 + OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_queue);
  v16 = swift_allocObject();
  v16[2] = v5;
  v16[3] = a1;
  v16[4] = a2;
  aBlock[4] = a4;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = v20;
  v17 = _Block_copy(aBlock);
  v18 = v15;

  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_1001350EC(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v22 + 8))(v11, v9);
  (*(v12 + 8))(v14, v21);
}

uint64_t sub_10013D8BC(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v8 = *(v17 - 8);
  __chkstk_darwin(v17);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501990 != -1)
  {
    swift_once();
  }

  v11 = *(qword_10051B2B8 + OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_queue);
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_10013EF74;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004C8268;
  v13 = _Block_copy(aBlock);
  v14 = v11;
  sub_100069E2C(a1, a2);
  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_1001350EC(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v18 + 8))(v7, v5);
  (*(v8 + 8))(v10, v17);
}

uint64_t sub_10013DBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (qword_100501990 != -1)
  {
    v5 = a4;
    swift_once();
    a4 = v5;
  }

  return a4();
}

uint64_t type metadata accessor for CarKeyAppLauncher(uint64_t a1)
{
  result = qword_100504658;
  if (!qword_100504658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10013DE70(uint64_t a1)
{
  sub_10013DF4C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10013DF4C(uint64_t a1)
{
  if (!qword_100504668)
  {
    sub_1000692D8(&qword_100504670, &unk_10040BAF0);
    sub_10013E018(&qword_100504678, &protocol witness table for String, &protocol conformance descriptor for <> Set<A>);
    sub_10013E018(&qword_100504680, &protocol witness table for String, &protocol conformance descriptor for <> Set<A>);
    v1 = type metadata accessor for UserDefaultBackedCodable();
    if (!v2)
    {
      atomic_store(v1, &qword_100504668);
    }
  }
}

uint64_t sub_10013E018(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000692D8(&qword_100504670, &unk_10040BAF0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10013E084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100068FC4(&qword_100504700, &qword_10040BB00);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - v8;
  sub_10009393C(0, &qword_100504738, LSBundleRecord_ptr);

  v10 = sub_10032AC4C(a1, a2, 0);
  v11 = [v10 applicationIdentifier];

  if (v11)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher__allowedAppIdentifiers;
    swift_beginAccess();
    v16 = UserDefaultBackedCodable.wrappedValue.modify();
    sub_10010E7A0(v12, v14);
    v18 = v17;
    v16(v29, 0);
    swift_endAccess();
    if (v18)
    {

      if (qword_100501998 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_1000958E4(v19, qword_1005045D0);

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v28 = v15;
        v29[0] = v23;
        v24 = v23;
        *v22 = 136315138;
        v25 = sub_1002FFA0C(v12, v14, v29);

        *(v22 + 4) = v25;
        _os_log_impl(&_mh_execute_header, v20, v21, "App closed by the user %s", v22, 0xCu);
        sub_1000752F4(v24);
        v15 = v28;
      }

      else
      {
      }

      (*(v7 + 16))(v9, a3 + v15, v6);
      UserDefaultBackedCodable.wrappedValue.getter();
      (*(v7 + 8))(v9, v6);
      v26 = *(v29[0] + 16);

      if (!v26)
      {
        sub_10013B010();
      }
    }

    else
    {
    }
  }
}

uint64_t sub_10013E478(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  sub_1000B6A94(v2, qword_1005045D0);
  sub_1000958E4(v2, qword_1005045D0);
  String.init(cString:)();
  return Logger.init(subsystem:category:)();
}

Swift::Int sub_10013E4F0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100068FC4(&qword_100504758, &qword_10040BB08);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_10009393C(0, &qword_100504760, RBSAssertion_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_10009393C(0, &qword_100504768, off_1004BE530);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10030C7FC(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

uint64_t sub_10013E73C(uint64_t *a1, void *a2)
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

uint64_t sub_10013E7C4(uint64_t (*a1)(void))
{
  if (qword_100501990 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  return a1();
}

uint64_t sub_10013E84C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10013E864()
{
  result = qword_100504718;
  if (!qword_100504718)
  {
    sub_10009393C(255, &qword_100504710, PKAppletSubcredential_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100504718);
  }

  return result;
}

uint64_t sub_10013E8CC(uint64_t *a1)
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

uint64_t sub_10013E924(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v7 = *(v15 - 8);
  __chkstk_darwin(v15);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501990 != -1)
  {
    swift_once();
  }

  v10 = *(qword_10051B2B8 + OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_queue);
  aBlock[4] = a1;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = a2;
  v11 = _Block_copy(aBlock);
  v12 = v10;
  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_1001350EC(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v16 + 8))(v6, v4);
  (*(v7 + 8))(v9, v15);
}

uint64_t sub_10013EC0C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *&v2[OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_queue];
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = v2;
  aBlock[4] = sub_10013EF30;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004C8218;
  v13 = _Block_copy(aBlock);

  v14 = v2;
  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_1001350EC(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v17);
}

uint64_t sub_10013EEF0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10013EF3C()
{
  sub_10006A178(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10013EFA8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10013EFF4()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10013F054()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10013F0A8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10013F17C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10013F230(uint64_t a1)
{
  if ((*(a1 + 112) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 112) & 3;
  }
}

__n128 sub_10013F24C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_10013F280(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10013F2C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10013F33C()
{
  if (*(v0 + 128))
  {
    if (*(v0 + 128) == 1)
    {
      _StringGuts.grow(_:)(34);

      String.append(_:)(*v0);
      v1._object = 0x8000000100464050;
      v1._countAndFlagsBits = 0xD000000000000012;
      String.append(_:)(v1);
      v2._countAndFlagsBits = sub_10013FA30();
      String.append(_:)(v2);

      v3 = 32;
      v4 = 0xE100000000000000;
    }

    else
    {
      _StringGuts.grow(_:)(31);

      String.append(_:)(*v0);
      v4 = 0x8000000100464030;
      v3 = 0xD000000000000012;
    }
  }

  else
  {
    _StringGuts.grow(_:)(42);

    String.append(_:)(*v0);
    v5._countAndFlagsBits = 0xD000000000000014;
    v5._object = 0x8000000100464070;
    String.append(_:)(v5);
    v6._countAndFlagsBits = sub_10013FA30();
    String.append(_:)(v6);

    v3 = 0x20202020202020;
    v4 = 0xE700000000000000;
  }

  String.append(_:)(*&v3);
  return 0x696669746E656449;
}

void *sub_10013F510()
{
  v1 = type metadata accessor for URL();
  __chkstk_darwin(v1 - 8);
  v3 = v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100140EBC();
  [v0 auditToken];
  v4 = sub_10013F928(v31[0], v31[1], v31[2], v31[3]);
  v5 = [v4 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = objc_allocWithZone(LSApplicationExtensionRecord);
  v8 = sub_10013FD90(v3, 1);

  v9 = [v8 containingBundleRecord];
  if (!v9)
  {
    if (qword_1005019A0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000958E4(v18, qword_100504790);
    v19 = v8;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v31[0] = v23;
      *v22 = 136315138;
      v24 = [v19 extensionPointRecord];
      v25 = [v24 identifier];

      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v29 = sub_1002FFA0C(v26, v28, v31);

      *(v22 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v20, v21, "Extension %s does not contain a bundle", v22, 0xCu);
      sub_1000752F4(v23);
    }

    else
    {
    }

    return 0;
  }

  v10 = v9;
  v11 = [v8 extensionPointRecord];
  v12 = [v11 identifier];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if (v13 == 0xD00000000000002ALL && 0x8000000100464120 == v15)
  {

    return v10;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = v10;
  if ((v17 & 1) == 0)
  {

    return 0;
  }

  return result;
}

id sub_10013F928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = 0;
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v4 = [swift_getObjCClassFromMetadata() bundleRecordForAuditToken:v8 error:&v9];
  if (v4)
  {
    v5 = v9;
  }

  else
  {
    v6 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_10013FA30()
{
  _StringGuts.grow(_:)(106);
  v1._countAndFlagsBits = 0xD000000000000014;
  v1._object = 0x8000000100464090;
  String.append(_:)(v1);
  String.append(_:)(*v0);
  v2._object = 0x80000001004640B0;
  v2._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v2);
  String.append(_:)(v0[1]);
  v3._countAndFlagsBits = 0x616554202020200ALL;
  v3._object = 0xEE00203A4449206DLL;
  String.append(_:)(v3);
  String.append(_:)(v0[2]);
  v4._countAndFlagsBits = 0x6D614E202020200ALL;
  v4._object = 0xEB00000000203A65;
  String.append(_:)(v4);
  String.append(_:)(v0[3]);
  v5._countAndFlagsBits = 0xD000000000000013;
  v5._object = 0x80000001004640D0;
  String.append(_:)(v5);
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x616441202020200ALL;
  v7._object = 0xEE00203A4449206DLL;
  String.append(_:)(v7);
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  return 0;
}

uint64_t sub_10013FBEC(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  sub_1000B6A94(v2, qword_100504790);
  v3 = sub_1000958E4(v2, qword_100504790);
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v4 = sub_1000958E4(v2, qword_10051B2C8);
  v5 = *(*(v2 - 8) + 16);

  return v5(v3, v4, v2);
}

id sub_10013FCB4(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

id sub_10013FD90(uint64_t a1, char a2)
{
  v3 = v2;
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v7 = v6;
  v16 = 0;
  v8 = [v3 initWithURL:v6 requireValid:a2 & 1 error:&v16];

  v9 = v16;
  if (v8)
  {
    v10 = type metadata accessor for URL();
    v11 = *(*(v10 - 8) + 8);
    v12 = v9;
    v11(a1, v10);
  }

  else
  {
    v13 = v16;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v14 = type metadata accessor for URL();
    (*(*(v14 - 8) + 8))(a1, v14);
  }

  return v8;
}

void sub_10013FEE4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v117 = a4;
  v118 = a5;
  v115 = a6;
  v116 = a3;
  v114 = a2;
  v7 = sub_100068FC4(&unk_100504890, &qword_10040B568);
  v8 = *(v7 - 8);
  v120 = v7;
  v121 = v8;
  __chkstk_darwin(v7);
  v119 = &v108 - v9;
  if (qword_1005019A0 != -1)
  {
    swift_once();
  }

  v10 = 7040629;
  v11 = type metadata accessor for Logger();
  v12 = sub_1000958E4(v11, qword_100504790);
  v13 = a1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  v16 = &selRef_retrievePeripheralsWithIdentifiers_;
  if (os_log_type_enabled(v14, v15))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v122 = v18;
    *v17 = 136315138;
    v19 = [v13 bundleIdentifier];
    if (v19)
    {
      v20 = v19;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;
    }

    else
    {
      v23 = 0xE300000000000000;
      v21 = 7040629;
    }

    v24 = sub_1002FFA0C(v21, v23, &v122);

    *(v17 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "bundleId %s", v17, 0xCu);
    sub_1000752F4(v18);

    v16 = &selRef_retrievePeripheralsWithIdentifiers_;
    v10 = 7040629;
  }

  else
  {
  }

  v25 = v13;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v113 = v12;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v122 = v29;
    *v28 = 136315138;
    v30 = [v25 applicationIdentifier];
    if (v30)
    {
      v31 = v30;
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;
    }

    else
    {
      v34 = 0xE300000000000000;
      v32 = 7040629;
    }

    v35 = sub_1002FFA0C(v32, v34, &v122);

    *(v28 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v26, v27, "appId %s", v28, 0xCu);
    sub_1000752F4(v29);

    v16 = &selRef_retrievePeripheralsWithIdentifiers_;
    v10 = 7040629;
  }

  else
  {
  }

  v36 = v25;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v122 = v113;
    *v39 = 136315138;
    v40 = [v36 teamIdentifier];
    if (v40)
    {
      v41 = v40;
      v42 = v36;
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      v10 = v43;
      v36 = v42;
      v16 = &selRef_retrievePeripheralsWithIdentifiers_;
    }

    else
    {
      v45 = 0xE300000000000000;
    }

    v46 = sub_1002FFA0C(v10, v45, &v122);

    *(v39 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v37, v38, "teamId %s", v39, 0xCu);
    sub_1000752F4(v113);
  }

  v47 = [v36 v16[508]];
  if (v47)
  {
    v48 = v47;
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    v52 = [v36 applicationIdentifier];
    if (v52)
    {
      v53 = v52;
      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v55;

      v57 = [v36 teamIdentifier];
      if (v57)
      {
        v113 = v56;
        v58 = v57;
        v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v61 = v60;

        v62 = objc_allocWithZone(LSApplicationRecord);

        v63 = v124;
        v64 = sub_10013FCB4(v49, v51, 0);
        if (v63)
        {

          swift_errorRetain();
          v65 = Logger.logObject.getter();
          v66 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            v68 = swift_slowAlloc();
            v69 = swift_slowAlloc();
            v122 = v69;
            *v67 = 138412546;
            swift_errorRetain();
            v70 = _swift_stdlib_bridgeErrorToNSError();
            *(v67 + 4) = v70;
            *v68 = v70;
            *(v67 + 12) = 2080;
            v71 = sub_1002FFA0C(v49, v51, &v122);

            *(v67 + 14) = v71;
            _os_log_impl(&_mh_execute_header, v65, v66, "LS Error %@ when getting application record for bundle %s", v67, 0x16u);
            sub_100075768(v68, &unk_100503F70, &unk_10040B2E0);

            sub_1000752F4(v69);
          }

          else
          {
          }

          sub_10009591C();
          swift_allocError();
          *v95 = 23;
          swift_willThrow();
        }

        else
        {
          v110 = v64;
          v111 = v51;
          v108 = v59;
          v109 = v61;
          v112 = v54;
          v124 = v49;
          if (qword_1005019B8 != -1)
          {
            swift_once();
          }

          v79 = v120;
          v80 = sub_1000958E4(v120, qword_1005047C8);
          v81 = v121;
          v82 = *(v121 + 16);
          v83 = v119;
          v82(v119, v80, v79);
          UserDefaultBacked.wrappedValue.getter();
          v84 = *(v81 + 8);
          v121 = v81 + 8;
          v84(v83, v79);
          if (v123)
          {
            goto LABEL_38;
          }

          v85 = v84;
          v86 = v122;
          if (qword_1005019C0 != -1)
          {
            swift_once();
          }

          v87 = v120;
          v88 = sub_1000958E4(v120, qword_1005047E0);
          v89 = v119;
          v82(v119, v88, v87);
          UserDefaultBacked.wrappedValue.getter();
          v85(v89, v87);
          if (v123)
          {
LABEL_38:
            v90 = v110;
            v91 = [v110 iTunesMetadata];
            v86 = [v91 storeItemIdentifier];

            v92 = [v90 iTunesMetadata];
            v93 = [v92 storeFront];
            v94 = v124;
          }

          else
          {
            v93 = v122;
            v92 = Logger.logObject.getter();
            v96 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v92, v96))
            {
              v97 = swift_slowAlloc();
              *v97 = 134218240;
              *(v97 + 4) = v86;
              *(v97 + 12) = 2048;
              *(v97 + 14) = v93;
              _os_log_impl(&_mh_execute_header, v92, v96, "Using debug values for adamId %llu and debug CC %llu", v97, 0x16u);
            }

            v94 = v124;
            v90 = v110;
          }

          v98 = [v36 localizedName];
          v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v101 = v100;

          v102 = v115;
          v103 = v113;
          *v115 = v112;
          v102[1] = v103;
          v104 = v111;
          v102[2] = v94;
          v102[3] = v104;
          v105 = v109;
          v102[4] = v108;
          v102[5] = v105;
          v102[6] = v99;
          v102[7] = v101;
          v102[8] = v93;
          v102[9] = v86;
          v107 = v116;
          v106 = v117;
          v102[10] = v114;
          v102[11] = v107;
          v102[12] = v106;
          v102[13] = v118;
        }

        return;
      }
    }
  }

  v72 = v36;
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *v75 = 138412290;
    *(v75 + 4) = v72;
    *v76 = v72;
    v77 = v72;
    _os_log_impl(&_mh_execute_header, v73, v74, "Bundle record %@ is not a valid bundle", v75, 0xCu);
    sub_100075768(v76, &unk_100503F70, &unk_10040B2E0);
  }

  sub_10009591C();
  swift_allocError();
  *v78 = 23;
  swift_willThrow();
}

void sub_1001409BC(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    v7 = 0uLL;
    v8 = 2;
    v9 = 0xEA00000000006465;
    v10 = 0x6369767265736573;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
LABEL_5:
    *a2 = v10;
    *(a2 + 8) = v9;
    *(a2 + 16) = v7;
    *(a2 + 32) = v11;
    *(a2 + 48) = v12;
    *(a2 + 64) = v13;
    *(a2 + 80) = v14;
    *(a2 + 96) = v15;
    *(a2 + 112) = v16;
    *(a2 + 128) = v8;
    return;
  }

  v3 = a2;
  v4 = a1;
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 valueForEntitlement:v5];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
  }

  v43 = v41;
  v44 = v42;
  if (!*(&v42 + 1))
  {
    sub_100075768(&v43, &qword_100502420, &qword_10040F310);
LABEL_15:
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000958E4(v20, qword_10051B2C8);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Client is not allowed to use SE Provisioning service: wrong entitlement format", v23, 2u);
    }

    sub_10009591C();
    swift_allocError();
    *v24 = 15;
    swift_willThrow();
LABEL_20:

    return;
  }

  if ((swift_dynamicCast() & 1) == 0 || v40 != 1)
  {
    goto LABEL_15;
  }

  v17 = sub_10013F510();
  if (v17)
  {
    v18 = v17;
    [v4 auditToken];
    sub_10013FEE4(v18, v43, *(&v43 + 1), v44, *(&v44 + 1), v45);
    if (!v2)
    {
      v38 = v45[1];
      v39 = v45[0];
      v36 = v45[3];
      v37 = v45[2];
      v34 = v45[5];
      v35 = v45[4];
      v8 = 1;
      v19 = v4;
      v33 = v45[6];
LABEL_13:

      v11 = v38;
      v7 = v39;
      v10 = v39;
      a2 = v3;
      v13 = v36;
      v12 = v37;
      v15 = v34;
      v14 = v35;
      v16 = v33;
      goto LABEL_5;
    }

    goto LABEL_20;
  }

  sub_100140EBC();
  [v4 auditToken];
  v25 = sub_10013F928(v43, *(&v43 + 1), v44, *(&v44 + 1));
  if (!v2)
  {
    v19 = v25;
    [v4 auditToken];
    sub_10013FEE4(v19, v43, *(&v43 + 1), v44, *(&v44 + 1), v46);
    v38 = v46[1];
    v39 = v46[0];
    v36 = v46[3];
    v37 = v46[2];
    v34 = v46[5];
    v35 = v46[4];
    v33 = v46[6];

    v8 = 0;
    goto LABEL_13;
  }

  if (qword_1005019A0 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_1000958E4(v26, qword_100504790);
  swift_errorRetain();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    swift_errorRetain();
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 4) = v31;
    *v30 = v31;
    _os_log_impl(&_mh_execute_header, v27, v28, "LS error %@ when getting bundle record", v29, 0xCu);
    sub_100075768(v30, &unk_100503F70, &unk_10040B2E0);
  }

  sub_10009591C();
  swift_allocError();
  *v32 = 23;
  swift_willThrow();
}

unint64_t sub_100140EBC()
{
  result = qword_100504738;
  if (!qword_100504738)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100504738);
  }

  return result;
}

__n128 sub_100140F08(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_100140F2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100140F74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100140FE0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_10014100C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 113))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 112);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100141054(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *(result + 112) = -a2;
    }
  }

  return result;
}

uint64_t sub_1001410B8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    LOBYTE(a2) = 2;
    *(result + 104) = 0;
  }

  *(result + 112) = a2;
  return result;
}

void sub_100141100(uint64_t a1, uint64_t a2, void (*a3)(void *, void))
{
  v4 = 0;
  v5 = *(a2 + 96);
  v20 = *(a2 + 80);
  v21 = v5;
  v22 = *(a2 + 112);
  v23 = *(a2 + 128);
  v6 = v23;
  v7 = *(a2 + 32);
  v16 = *(a2 + 16);
  v17 = v7;
  v8 = *(a2 + 64);
  v18 = *(a2 + 48);
  v19 = v8;
  if (v23 <= 1u)
  {
    v9 = *(a2 + 112);
    *v24.val = *(a2 + 96);
    *&v24.val[4] = v9;
    v15[0] = v16;
    v15[1] = v17;
    v15[2] = v18;
    v15[3] = v19;
    v15[4] = v20;
    v15[5] = *v24.val;
    v15[6] = v9;
    sub_10012E3F4(&v16, v14);
    v14[0] = v24;
    v10 = audit_token_to_pid(v14);
    sub_10012E450(v15);
    v4 = v10;
  }

  LOBYTE(v14[0].val[0]) = v6 > 1;
  sub_100306B98(v4 | ((v6 > 1) << 32));
  v12 = v11;
  v13 = v11;
  a3(v12, 0);
}

void sub_100141278(void *a1, int a2, void *aBlock, void (*a4)(void *))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4(v6);
  _Block_release(v6);
  _Block_release(v6);
}

void sub_1001412FC(uint64_t a1, void *a2)
{
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B2C8);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "XPC Invalidated", v6, 2u);
  }

  sub_1001413F4(a2, 1);
}

void sub_1001413F4(void *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return;
  }

  v4 = *(v2 + OBJC_IVAR____TtC10seserviced9SECServer_backgroundAssertionMonitor);
  if (v4)
  {
    v5 = v4;
    sub_1001C9628(a1, v6);
  }

  v7 = OBJC_IVAR____TtC10seserviced9SECServer_presentmentIntentAssertionCallbacks;
  v8 = swift_beginAccess();
  v9 = *(v2 + v7);
  __chkstk_darwin(v8);
  __chkstk_darwin(v10);

  os_unfair_lock_lock(v9 + 6);
  sub_100148130(&v50);
  os_unfair_lock_unlock(v9 + 6);
  swift_unknownObjectRelease();

  if (qword_100501A48 != -1)
  {
    swift_once();
  }

  v11 = qword_10051B398;
  os_unfair_lock_lock((qword_10051B398 + 16));
  v12 = *(v11 + 24);
  v13 = *(v11 + 32);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v11 + 16));
  if (v12)
  {
    ObjectType = swift_getObjectType();
    v15 = *(v13 + 8);
    v15(v42, ObjectType, v13);
    v70 = v49;
    v68 = v47;
    v69 = v48;
    v64 = v43;
    v65 = v44;
    v66 = v45;
    v67 = v46;
    if (v49 > 1u)
    {
      sub_10012E3A0(v42);
      sub_100126A58(a1);
    }

    else
    {
      v41 = v48;
      v57 = v64;
      v58 = v65;
      v59 = v66;
      v60 = v67;
      v61 = v68;
      v62 = v48;
      sub_10012E3F4(&v64, &v50);
      v50 = v41;
      v16 = audit_token_to_pid(&v50);
      sub_10012E3A0(v42);
      sub_10012E450(&v57);
      if (v16 == sub_100126A58(a1))
      {
        if (qword_1005019D8 != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        sub_1000958E4(v17, qword_10051B2C8);
        v18 = a1;
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v19, v20))
        {
          v36 = ObjectType;
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          *v21 = 138412290;
          *(v21 + 4) = v18;
          *v22 = v18;
          v23 = v18;
          _os_log_impl(&_mh_execute_header, v19, v20, "XPC closed %@", v21, 0xCu);
          sub_1000C2998(v22);

          ObjectType = v36;
        }

        v15(&v50, ObjectType, v13);
        v63 = v56;
        v61 = v54;
        v62 = v55;
        v57 = *&v50.val[4];
        v58 = v51;
        v59 = v52;
        v60 = v53;
        if (v56 >= 2u)
        {
          sub_10012E3A0(&v50);
        }

        else
        {
          v40 = v55;
          v38[0] = v57;
          v38[1] = v58;
          v38[2] = v59;
          v38[3] = v60;
          v38[4] = v61;
          v39 = v55;
          sub_10012E3F4(&v57, v37);
          v37[0] = v40;
          v24 = audit_token_to_pid(v37);
          sub_10012E450(v38);
          sub_10012E3A0(&v50);
          if (qword_100501D50 != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v25 = off_10050A868;

          os_unfair_lock_lock(v25 + 6);
          v26 = *&v25[4]._os_unfair_lock_opaque;

          os_unfair_lock_unlock(v25 + 6);

          if (v26)
          {
            sub_1003080E8(v24, 0, 0);
          }
        }

        v34 = swift_allocObject();
        *(v34 + 16) = v12;
        *(v34 + 24) = v13;
        v35 = *(v13 + 32);
        swift_unknownObjectRetain();
        v35(sub_100148118, v34, ObjectType, v13);
        swift_unknownObjectRelease();

        return;
      }
    }

    swift_unknownObjectRelease();
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_1000958E4(v27, qword_10051B2C8);
  v28 = a1;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    *(v31 + 4) = v28;
    *v32 = v28;
    v33 = v28;
    _os_log_impl(&_mh_execute_header, v29, v30, "XPC closed, no active session associated with %@", v31, 0xCu);
    sub_1000C2998(v32);
  }
}

void sub_100141A30(uint64_t a1, uint64_t a2)
{
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000958E4(v2, qword_10051B2C8);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, "XPC Interrupted", v4, 2u);
  }
}

void sub_100141B78(uint64_t a1, uint64_t a2)
{
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B2C8);
  swift_unknownObjectRetain();
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    ObjectType = swift_getObjectType();
    (*(a2 + 8))(v14, ObjectType, a2);
    v8 = sub_10013F33C();
    v10 = v9;
    sub_10012E3A0(v14);
    v11 = sub_1002FFA0C(v8, v10, &v13);

    *(v5 + 4) = v11;
    _os_log_impl(&_mh_execute_header, oslog, v4, "Ended active session with client info %s due to XPC connection closed", v5, 0xCu);
    sub_1000752F4(v6);
  }

  else
  {
  }
}

uint64_t sub_100141D3C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC10seserviced9SECServer_backgroundAssertionMonitor;
  if (!*&v0[OBJC_IVAR____TtC10seserviced9SECServer_backgroundAssertionMonitor])
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000958E4(v4, qword_10051B2C8);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Starting background assertion monitor", v7, 2u);
    }

    v8 = [objc_allocWithZone(type metadata accessor for SECBackgroundAssertion()) init];
    v9 = *&v1[v3];
    *&v1[v3] = v8;
  }

  if (qword_100501D50 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = off_10050A868;

  os_unfair_lock_lock(v10 + 6);
  v11 = *&v10[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v10 + 6);

  if (v11)
  {
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000958E4(v13, qword_10051B2C8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Starting presentment intent manager", v16, 2u);
  }

  type metadata accessor for SECPresentmentIntentManager();
  swift_allocObject();
  v17 = sub_1003089F4();
  v18 = swift_beginAccess();
  v23[0] = v17;
  v19 = off_10050A868;
  __chkstk_darwin(v18);

  os_unfair_lock_lock(v19 + 6);
  sub_100147E88(&v19[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v19 + 6);

  swift_endAccess();

  v20 = off_10050A868;

  os_unfair_lock_lock(v20 + 6);
  v21 = *&v20[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v20 + 6);

  if (v21)
  {
    v24[3] = ObjectType;
    v24[4] = &off_1004C86B0;
    v24[0] = v1;
    sub_1000BC094(v24, v23);
    swift_beginAccess();
    v22 = v1;
    sub_100147EA4(v23, v21 + 24, &qword_1005048A8, &qword_1004151C0);
    swift_endAccess();

    return sub_1000752F4(v24);
  }

  return result;
}

unint64_t sub_1001420F4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *a1;
  result = sub_100316230(a3, a2, isUniquelyReferenced_nonNull_native);
  *a1 = v8;
  return result;
}

uint64_t sub_1001421F8(uint64_t a1, uint64_t a2)
{
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B2C8);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "didDequeueActiveSession: Current assertion (if any) invalidated", v6, 2u);
  }

  return sub_1001422F4(a1);
}

uint64_t sub_1001422F4(uint64_t a1)
{
  v2 = a1;
  v3 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - v4;
  if (qword_100501D50 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = off_10050A868;

  os_unfair_lock_lock(v6 + 6);
  v7 = *&v6[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v6 + 6);

  if (v7 && (v8 = *(v7 + 16), , v8))
  {
    v9 = off_10050A868;

    os_unfair_lock_lock(v9 + 6);
    v10 = *&v9[4]._os_unfair_lock_opaque;

    os_unfair_lock_unlock(v9 + 6);

    if (v10)
    {
      sub_1003080E8(v2, 0, 0);
    }

    v11 = OBJC_IVAR____TtC10seserviced9SECServer_presentmentIntentAssertionCallbacks;
    v12 = swift_beginAccess();
    v13 = *(v1 + v11);
    __chkstk_darwin(v12);
    *(&v25 - 4) = v2;
    __chkstk_darwin(v14);
    *(&v25 - 2) = sub_100146C4C;
    *(&v25 - 1) = v15;

    os_unfair_lock_lock(v13 + 6);
    sub_100148130(&v26);
    v16 = swift_allocObject();
    os_unfair_lock_unlock(v13 + 6);

    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v16;

    sub_1001F9EA8(0, 0, v5, &unk_10040BD68, v18);
  }

  else
  {
    v20 = OBJC_IVAR____TtC10seserviced9SECServer_presentmentIntentAssertionCallbacks;
    v21 = swift_beginAccess();
    v22 = *(v1 + v20);
    __chkstk_darwin(v21);
    *(&v25 - 4) = v2;
    __chkstk_darwin(v23);
    *(&v25 - 2) = sub_10014814C;
    *(&v25 - 1) = v24;

    os_unfair_lock_lock(v22 + 6);
    sub_100146C34(&v26);
    os_unfair_lock_unlock(v22 + 6);

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_1001426C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_10008CBA8(a2);
  if (v6)
  {
    v7 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *a1;
    v12 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1003127B4();
      v9 = v12;
    }

    v10 = v7;
    v11 = *(*(v9 + 56) + 8 * v7);
    result = sub_1000DE770(v10, v9);
    *a1 = v9;
  }

  else
  {
    v11 = 0;
  }

  *a3 = v11;
  return result;
}

uint64_t sub_100142758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 168) = a1;
  *(v4 + 176) = a4;
  return _swift_task_switch(sub_100142778, 0, 0);
}

uint64_t sub_100142778()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 184) = Strong;
  if (Strong)
  {
    v2 = Strong;
    sub_10009591C();
    swift_allocError();
    *v3 = 26;
    v4 = _convertErrorToNSError(_:)();
    *(v0 + 192) = v4;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_10014293C;
    v5 = swift_continuation_init();
    *(v0 + 136) = sub_100068FC4(&qword_1005073C0, &qword_10040F870);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_100142A94;
    *(v0 + 104) = &unk_1004C8710;
    *(v0 + 112) = v5;
    [v2 presentmentAssertionTimeoutWithError:v4 completionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    **(v0 + 168) = 1;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_10014293C()
{

  return _swift_task_switch(sub_100142A1C, 0, 0);
}

uint64_t sub_100142A1C()
{
  v1 = *(v0 + 192);
  swift_unknownObjectRelease();

  **(v0 + 168) = *(v0 + 184) == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100142A94(uint64_t a1)
{
  sub_1000752B0((a1 + 32), *(a1 + 56));

  return swift_continuation_resume();
}

id SECServer.init(machServiceName:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = &v2[OBJC_IVAR____TtC10seserviced9SECServer_machName];
  *v4 = 0xD000000000000027;
  *(v4 + 1) = 0x80000001004611B0;
  *&v2[OBJC_IVAR____TtC10seserviced9SECServer_backgroundAssertionMonitor] = 0;
  v5 = OBJC_IVAR____TtC10seserviced9SECServer_presentmentIntentAssertionCallbacks;
  sub_100068FC4(&qword_100504840, &qword_100408C28);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = _swiftEmptyDictionarySingleton;
  *&v2[v5] = v6;
  v7 = String._bridgeToObjectiveC()();

  v14.receiver = v2;
  v14.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v14, "initWithMachServiceName:", v7);

  v9 = v8;
  [v9 setDelegate:v9];
  if (qword_100501A48 != -1)
  {
    swift_once();
  }

  v10 = qword_10051B398;
  v13[3] = ObjectType;
  v13[4] = &off_1004C8690;

  v13[0] = v9;
  sub_1000BC094(v13, v12);
  swift_beginAccess();
  sub_100147EA4(v12, v10 + 56, &qword_100504848, &qword_10040BD10);
  swift_endAccess();
  sub_1000752F4(v13);
  return v9;
}

id SECServer.init()()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithMachServiceName:v1];

  return v2;
}

id static SECServer.kickOff()()
{
  if (qword_1005019A8 != -1)
  {
    swift_once();
  }

  v1 = qword_10051B2C0;

  return [v1 resume];
}

id sub_100142DBC()
{
  result = [objc_allocWithZone(type metadata accessor for SECServer()) init];
  qword_10051B2C0 = result;
  return result;
}

uint64_t SECServer.machName.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC10seserviced9SECServer_machName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_100142EA4(int a1, char a2)
{
  v3 = v2;
  v6 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000958E4(v9, qword_10051B2C8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v10, v11, "Ending session(s) for %d due to client app background outside of WM transceive / suspension", v12, 8u);
  }

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = a1;
  *(v14 + 36) = a2;
  *(v14 + 40) = v3;
  v15 = v3;
  sub_1001F9BE8(0, 0, v8, &unk_10040BD80, v14);
}

uint64_t sub_10014308C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5, uint64_t a6)
{
  *(v6 + 1056) = a6;
  *(v6 + 145) = a5;
  *(v6 + 212) = a4;
  return _swift_task_switch(sub_1001430B4, 0, 0);
}

uint64_t sub_1001430B4()
{
  if (qword_100501A48 != -1)
  {
LABEL_32:
    swift_once();
  }

  v1 = qword_10051B398;
  os_unfair_lock_lock((qword_10051B398 + 16));
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = *(v1 + 32);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 8);
    swift_unknownObjectRetain();
    v5(ObjectType, v3);
    v6 = *(v0 + 344);
    *(v0 + 464) = v6;
    v7 = *(v0 + 312);
    *(v0 + 416) = *(v0 + 296);
    *(v0 + 432) = v7;
    *(v0 + 448) = *(v0 + 328);
    v8 = *(v0 + 248);
    *(v0 + 352) = *(v0 + 232);
    *(v0 + 368) = v8;
    v9 = *(v0 + 280);
    *(v0 + 384) = *(v0 + 264);
    *(v0 + 400) = v9;
    if (v6 >= 2u)
    {
      sub_10012E3A0(v0 + 216);
    }

    else
    {
      v11 = *(v0 + 400);
      v10 = *(v0 + 408);
      v13 = *(v0 + 368);
      v12 = *(v0 + 384);
      v53 = *(v0 + 312);
      v55 = *(v0 + 328);
      v14 = *(v0 + 212);
      *(v0 + 944) = *(v0 + 352);
      *(v0 + 960) = v13;
      *(v0 + 976) = v12;
      *(v0 + 992) = v11;
      *(v0 + 1000) = v10;
      v15 = *(v0 + 416);
      *(v0 + 1040) = v55;
      *(v0 + 1008) = v15;
      *(v0 + 1024) = v53;
      sub_10012E3F4(v0 + 352, v0 + 712);
      *(v0 + 180) = v53;
      *(v0 + 196) = v55;
      v16 = audit_token_to_pid((v0 + 180));
      sub_10012E450(v0 + 944);
      sub_10012E3A0(v0 + 216);
      if (v16 == v14)
      {
        swift_unknownObjectRetain();
        v17 = sub_10012F404(0, 1, 1, _swiftEmptyArrayStorage);
        v19 = v17[2];
        v18 = v17[3];
        v50 = v17;
        if (v19 >= v18 >> 1)
        {
          v50 = sub_10012F404((v18 > 1), v19 + 1, 1, v17);
        }

        swift_unknownObjectRelease();
        v50[2] = v19 + 1;
        v20 = &v50[2 * v19];
        v20[4] = v2;
        v20[5] = v3;
        goto LABEL_11;
      }
    }

    swift_unknownObjectRelease();
  }

  v50 = _swiftEmptyArrayStorage;
LABEL_11:
  v21 = *(v1 + 40);
  v22 = *(v21 + 16);
  if (!v22)
  {
    goto LABEL_24;
  }

  v23 = 0;
  do
  {
    v24 = v23;
    while (1)
    {
      if (v24 >= *(v21 + 16))
      {
        __break(1u);
        goto LABEL_32;
      }

      v52 = *(v21 + 32 + 16 * v24);
      v25 = swift_getObjectType();
      v26 = *(*(&v52 + 1) + 8);
      swift_unknownObjectRetain();
      v26(v25, *(&v52 + 1));
      *(v0 + 584) = *(v0 + 144);
      v27 = *(v0 + 112);
      *(v0 + 536) = *(v0 + 96);
      *(v0 + 552) = v27;
      *(v0 + 568) = *(v0 + 128);
      v28 = *(v0 + 48);
      *(v0 + 472) = *(v0 + 32);
      *(v0 + 488) = v28;
      v29 = *(v0 + 80);
      *(v0 + 504) = *(v0 + 64);
      *(v0 + 520) = v29;
      if (*(v0 + 584) < 2u)
      {
        break;
      }

      sub_10012E3A0(v0 + 16);
LABEL_15:
      swift_unknownObjectRelease();
      if (v22 == ++v24)
      {
        goto LABEL_24;
      }
    }

    v30 = *(v0 + 212);
    v31 = *(v0 + 528);
    v32 = *(v0 + 520);
    v33 = *(v0 + 504);
    v34 = *(v0 + 488);
    v54 = *(v0 + 112);
    v56 = *(v0 + 128);
    *(v0 + 832) = *(v0 + 472);
    *(v0 + 848) = v34;
    *(v0 + 864) = v33;
    *(v0 + 880) = v32;
    *(v0 + 888) = v31;
    v35 = *(v0 + 536);
    v36 = *(v0 + 128);
    *(v0 + 912) = *(v0 + 112);
    *(v0 + 928) = v36;
    *(v0 + 896) = v35;
    sub_10012E3F4(v0 + 472, v0 + 592);
    *(v0 + 148) = v54;
    *(v0 + 164) = v56;
    v37 = audit_token_to_pid((v0 + 148));
    sub_10012E450(v0 + 832);
    sub_10012E3A0(v0 + 16);
    if (v37 != v30)
    {
      goto LABEL_15;
    }

    swift_unknownObjectRetain();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v50 = sub_10012F404(0, v50[2] + 1, 1, v50);
    }

    v39 = v50[2];
    v38 = v50[3];
    if (v39 >= v38 >> 1)
    {
      v50 = sub_10012F404((v38 > 1), v39 + 1, 1, v50);
    }

    v23 = v24 + 1;
    swift_unknownObjectRelease();
    v50[2] = v39 + 1;
    *&v50[2 * v39 + 4] = v52;
  }

  while (v22 - 1 != v24);
LABEL_24:
  *(v0 + 1064) = v50;
  os_unfair_lock_unlock((v1 + 16));
  v40 = v50[2];
  *(v0 + 1072) = v40;
  if (v40)
  {
    *(v0 + 1080) = 0;
    v41 = *(v0 + 1064);
    *(v0 + 1088) = *(v41 + 32);
    v42 = *(v41 + 40);
    v43 = swift_getObjectType();
    v44 = *(v42 + 40);
    swift_unknownObjectRetain();
    v51 = (v44 + *v44);
    v45 = swift_task_alloc();
    *(v0 + 1096) = v45;
    *v45 = v0;
    v45[1] = sub_100143644;
    v46 = *(v0 + 145);

    return (v51)(0, v46, v43, v42);
  }

  else
  {
    v48 = *(v0 + 212);

    sub_1001422F4(v48);
    v49 = *(v0 + 8);

    return v49();
  }
}

uint64_t sub_100143644()
{

  return _swift_task_switch(sub_100143740, 0, 0);
}

uint64_t sub_100143740()
{
  v1 = *(v0 + 1080);
  v2 = *(v0 + 1072);
  swift_unknownObjectRelease();
  if (v1 + 1 == v2)
  {
    v3 = *(v0 + 212);

    sub_1001422F4(v3);
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 1080) + 1;
    *(v0 + 1080) = v6;
    v7 = *(v0 + 1064) + 16 * v6;
    *(v0 + 1088) = *(v7 + 32);
    v8 = *(v7 + 40);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 40);
    swift_unknownObjectRetain();
    v13 = (v10 + *v10);
    v11 = swift_task_alloc();
    *(v0 + 1096) = v11;
    *v11 = v0;
    v11[1] = sub_100143644;
    v12 = *(v0 + 145);

    return (v13)(0, v12, ObjectType, v8);
  }
}

uint64_t sub_100143904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(v5 + 168) = a5;
  *(v5 + 144) = a4;
  return _swift_task_switch(sub_100143928, 0, 0);
}

uint64_t sub_100143928()
{
  v1 = *(v0 + 144);
  v2 = OBJC_IVAR____TtC10seserviced9SECServer_presentmentIntentAssertionCallbacks;
  swift_beginAccess();
  v3 = *(v1 + v2);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 24));
  if (*(v4 + 16) && (v5 = sub_10008CBA8(*(v0 + 168)), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    *(v0 + 152) = v7;
    swift_endAccess();
    swift_unknownObjectRetain();

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000958E4(v8, qword_10051B2C8);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 168);
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v9, v10, "Notifying presentment assertion timeout to %d", v12, 8u);
    }

    sub_10009591C();
    swift_allocError();
    *v13 = 26;
    v14 = _convertErrorToNSError(_:)();
    *(v0 + 160) = v14;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_100143CC4;
    v15 = swift_continuation_init();
    *(v0 + 136) = sub_100068FC4(&qword_1005073C0, &qword_10040F870);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_100142A94;
    *(v0 + 104) = &unk_1004C8738;
    *(v0 + 112) = v15;
    [v7 presentmentAssertionTimeoutWithError:v14 completionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {

    swift_endAccess();
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000958E4(v16, qword_10051B2C8);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 168);
      v20 = swift_slowAlloc();
      *v20 = 67109120;
      *(v20 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v17, v18, "No callback for pid %d", v20, 8u);
    }

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_100143CC4()
{

  return _swift_task_switch(sub_100143DA4, 0, 0);
}

uint64_t sub_100143DA4()
{
  v1 = *(v0 + 160);
  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

void sub_100143E08(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v9 - 8);
  v11 = &v25 - v10;
  if (a2)
  {
    if (a3)
    {
      v12 = type metadata accessor for TaskPriority();
      (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
      v13 = swift_allocObject();
      v13[2] = 0;
      v13[3] = 0;
      v13[4] = a2;
      v13[5] = a1;
      v13[6] = a3;
      v13[7] = a4;
      v13[8] = v4;
      v14 = a2;
      sub_100113B54(a3, a4);

      sub_1001F9BE8(0, 0, v11, &unk_10040BD90, v13);
    }

    else
    {
      v17 = qword_1005019D8;
      v26 = a2;
      if (v17 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_1000958E4(v18, qword_10051B2C8);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "In Session deletion bust provide deletionCompletion", v21, 2u);
      }

      v22 = v26;
    }
  }

  else
  {
    v15 = swift_allocObject();
    v15[2] = a3;
    v15[3] = a4;
    v15[4] = a1;
    v15[5] = v4;
    v27[0] = 0x6369767265736573;
    v27[1] = 0xEA00000000006465;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 2;
    v16 = objc_allocWithZone(type metadata accessor for SECAdminSession(0));
    sub_100113B54(a3, a4);

    v23 = sub_1002753A8(v27, sub_100146F14, v15);
    if (qword_100501A48 != -1)
    {
      swift_once();
    }

    v24 = qword_10051B398;
    os_unfair_lock_lock((qword_10051B398 + 16));
    sub_1001B0864(&v24[6], v23);
    os_unfair_lock_unlock(v24 + 4);
    sub_1001B0970();
  }
}

void sub_1001442A8(_BYTE *a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v12 - 8);
  v14 = &v51 - v13;
  if (!a1)
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_1000958E4(v41, qword_10051B2C8);
    swift_errorRetain();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = a3;
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v57 = v46;
      *v45 = 136315138;
      if (a2)
      {
        swift_getErrorValue();
        v47 = Error.localizedDescription.getter();
        v49 = v48;
      }

      else
      {
        v49 = 0xE700000000000000;
        v47 = 0x6E776F6E6B6E55;
      }

      v50 = sub_1002FFA0C(v47, v49, &v57);

      *(v45 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v42, v43, "Error %s encountered when starting admin session", v45, 0xCu);
      sub_1000752F4(v46);

      a3 = v44;
      if (!v44)
      {
        return;
      }
    }

    else
    {

      if (!a3)
      {
        return;
      }
    }

    a3(0, a2);
    return;
  }

  v54 = a6;
  v57 = *&a1[OBJC_IVAR____TtC10seserviced15SECAdminSession_clientInfo];
  v15 = *&a1[OBJC_IVAR____TtC10seserviced15SECAdminSession_clientInfo + 64];
  v17 = *&a1[OBJC_IVAR____TtC10seserviced15SECAdminSession_clientInfo + 16];
  v16 = *&a1[OBJC_IVAR____TtC10seserviced15SECAdminSession_clientInfo + 32];
  v60 = *&a1[OBJC_IVAR____TtC10seserviced15SECAdminSession_clientInfo + 48];
  v61 = v15;
  v58 = v17;
  v59 = v16;
  v19 = *&a1[OBJC_IVAR____TtC10seserviced15SECAdminSession_clientInfo + 96];
  v18 = *&a1[OBJC_IVAR____TtC10seserviced15SECAdminSession_clientInfo + 112];
  v20 = *&a1[OBJC_IVAR____TtC10seserviced15SECAdminSession_clientInfo + 80];
  v65 = a1[OBJC_IVAR____TtC10seserviced15SECAdminSession_clientInfo + 128];
  v63 = v19;
  v64 = v18;
  v62 = v20;
  v21 = a1;
  sub_10012E344(&v57, v56);
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v55 = a5;
  v22 = type metadata accessor for Logger();
  sub_1000958E4(v22, qword_10051B2C8);
  sub_10012E344(&v57, v56);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  sub_10012E3A0(&v57);
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v53 = a4;
    v56[0] = v52;
    *v25 = 136315138;
    v26 = sub_10013F33C();
    v28 = v14;
    v29 = v21;
    v30 = a3;
    v31 = sub_1002FFA0C(v26, v27, v56);

    *(v25 + 4) = v31;
    a3 = v30;
    v21 = v29;
    v14 = v28;
    _os_log_impl(&_mh_execute_header, v23, v24, "Start admin session %s", v25, 0xCu);
    sub_1000752F4(v52);
    a4 = v53;
  }

  v32 = swift_allocObject();
  v33 = v61;
  *(v32 + 120) = v62;
  v34 = v64;
  *(v32 + 136) = v63;
  *(v32 + 152) = v34;
  v35 = v57;
  *(v32 + 56) = v58;
  v36 = v60;
  *(v32 + 72) = v59;
  *(v32 + 88) = v36;
  *(v32 + 104) = v33;
  *(v32 + 16) = a3;
  *(v32 + 24) = a4;
  *(v32 + 32) = v21;
  *(v32 + 168) = v65;
  *(v32 + 40) = v35;
  *(v32 + 176) = v54;
  v37 = type metadata accessor for TaskPriority();
  (*(*(v37 - 8) + 56))(v14, 1, 1, v37);
  v38 = swift_allocObject();
  v38[2] = 0;
  v38[3] = 0;
  v39 = v55;
  v38[4] = v21;
  v38[5] = v39;
  v38[6] = sub_100147104;
  v38[7] = v32;
  v40 = v21;
  sub_100113B54(a3, a4);

  sub_1001F9BE8(0, 0, v14, &unk_10040BD98, v38);
}

uint64_t sub_100144794(void (*a1)(uint64_t, void), uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v9 - 8);
  v11 = &v26[-v10 - 8];
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000958E4(v12, qword_10051B2C8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Finished deleting all orphaned credentials", v15, 2u);
  }

  if (a1)
  {
    a1(1, 0);
  }

  v16 = swift_allocObject();
  v17 = *(a4 + 112);
  *(v16 + 112) = *(a4 + 96);
  *(v16 + 128) = v17;
  *(v16 + 144) = *(a4 + 128);
  v18 = *(a4 + 48);
  *(v16 + 48) = *(a4 + 32);
  *(v16 + 64) = v18;
  v19 = *(a4 + 80);
  *(v16 + 80) = *(a4 + 64);
  *(v16 + 96) = v19;
  v20 = *(a4 + 16);
  *(v16 + 16) = *a4;
  *(v16 + 32) = v20;
  *(v16 + 152) = a5;
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = a3;
  v22[5] = sub_1001472BC;
  v22[6] = v16;
  sub_10012E344(a4, v26);
  v23 = a3;
  sub_1001F9BE8(0, 0, v11, &unk_10040BDA0, v22);
}

void sub_1001449F8(uint64_t a1, uint64_t a2)
{
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B2C8);
  sub_10012E344(a1, v11);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  sub_10012E3A0(a1);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11[0] = v7;
    *v6 = 136315138;
    v8 = sub_10013F33C();
    v10 = sub_1002FFA0C(v8, v9, v11);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Ended admin session %s", v6, 0xCu);
    sub_1000752F4(v7);
  }
}

uint64_t sub_100144B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[6] = a5;
  v9 = swift_task_alloc();
  v7[9] = v9;
  *v9 = v7;
  v9[1] = sub_100144BF4;

  return sub_1002002FC(a5);
}

uint64_t sub_100144BF4()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100144D74;
  }

  else
  {
    v2 = sub_100144D08;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100144D08()
{
  (*(v0 + 56))(1, 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100144D74(uint64_t a1, uint64_t a2)
{
  v18 = v2;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B2C8);
  swift_errorRetain();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v6 = 136315394;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_1002FFA0C(v7, v8, &v17);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    type metadata accessor for UUID();
    sub_100147FB4(&unk_100507480, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = Set.description.getter();
    v12 = sub_1002FFA0C(v10, v11, &v17);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error %s while deleting credentials %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v13 = v2[10];
  v14 = v2[7];
  swift_errorRetain();
  v14(0, v13);

  v15 = v2[1];

  return v15();
}

uint64_t sub_100144FE8()
{
  v0 = sub_100068FC4(&qword_100504228, &unk_10040F470);
  sub_1000B6A94(v0, qword_1005047B0);
  sub_1000958E4(v0, qword_1005047B0);
  sub_100068FC4(&qword_1005048A0, &qword_100409C80);
  return UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
}

uint64_t sub_1001450BC()
{
  v0 = sub_100068FC4(&unk_100504890, &qword_10040B568);
  sub_1000B6A94(v0, qword_1005047C8);
  sub_1000958E4(v0, qword_1005047C8);
  sub_100068FC4(&qword_100502FA0, &qword_10040A390);
  return UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
}

uint64_t sub_100145198()
{
  v0 = sub_100068FC4(&unk_100504890, &qword_10040B568);
  sub_1000B6A94(v0, qword_1005047E0);
  sub_1000958E4(v0, qword_1005047E0);
  sub_100068FC4(&qword_100502FA0, &qword_10040A390);
  return UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
}

uint64_t sub_100145274()
{
  v0 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  sub_1000B6A94(v0, qword_1005047F8);
  sub_1000958E4(v0, qword_1005047F8);
  return UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
}

uint64_t sub_100145328()
{
  v0 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  sub_1000B6A94(v0, qword_100504810);
  sub_1000958E4(v0, qword_100504810);
  return UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
}

uint64_t sub_1001453DC(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  sub_1000B6A94(v2, qword_10051B2C8);
  sub_1000958E4(v2, qword_10051B2C8);
  return Logger.init(subsystem:category:)();
}

double sub_10014545C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_10008C8DC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1003117D8();
      v10 = v12;
    }

    sub_10006A178(*(*(v10 + 48) + 16 * v8), *(*(v10 + 48) + 16 * v8 + 8));
    sub_1000BC104((*(v10 + 56) + 40 * v8), a3);
    sub_1000DDDB8(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

double sub_100145508@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_10008C808(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100311E08();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    *a2 = *(*(v9 + 56) + 16 * v7);
    sub_1000DE114(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = xmmword_1004098E0;
  }

  return result;
}

uint64_t sub_1001455E4(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_10008CB58(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_1000DE5E4(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_100312654();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = __CocoaDictionary.lookup(_:)();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = __CocoaDictionary.count.getter();
  v8 = sub_10013E4F0(v4, v7);

  v9 = sub_10008CB58(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_1000DE5E4(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_100145730(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10008CBA8(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1003127B4();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  sub_1000DE770(v8, v7);
  *v2 = v7;
  return v9;
}

uint64_t sub_1001457B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_10008C908(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100312C4C();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for Date();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_1000DE8E4(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for Date();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

double sub_100145928@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_10008CA34(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100313CD8();
      v9 = v11;
    }

    *a2 = *(*(v9 + 56) + 16 * v7);
    sub_1000DEAD4(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = xmmword_1004098E0;
  }

  return result;
}

uint64_t sub_1001459BC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10008CBA8(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100314394();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  sub_1000E39DC(v8, v7);
  *v2 = v7;
  return v9;
}

void sub_100145A44(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + OBJC_IVAR____TtC10seserviced22SECBackgroundAssertion_state);
  if (v3)
  {
    v6 = qword_1005019D8;
    v7 = v3;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000958E4(v8, qword_10051B2C8);
    v9 = a1;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v9;
      *v13 = v9;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v10, v11, "Adding %@ to backgroundassertion", v12, 0xCu);
      sub_1000C2998(v13);
    }

    if ([v9 processIdentifier] >= 1)
    {
      v15 = OBJC_IVAR____TtC10seserviced22SECBackgroundAssertion_appStateObserver;
      v16 = [*(a3 + OBJC_IVAR____TtC10seserviced22SECBackgroundAssertion_appStateObserver) isAppBackgroundedOrSuspended:v9];
      v17 = *&v7[OBJC_IVAR____TtCC10seserviced22SECBackgroundAssertion24AppStateObserverDelegate_assertions];
      __chkstk_darwin(v16);
      __chkstk_darwin(v18);

      os_unfair_lock_lock(v17 + 6);
      sub_100147E48(&v17[4]);
      os_unfair_lock_unlock(v17 + 6);

      [*(a3 + v15) registerForAppStateChanges:v9];

      return;
    }

    v25 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v25, v23, "Invalid PID", v24, 2u);
    }
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000958E4(v19, qword_10051B2C8);
    v25 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1002FFA0C(0xD000000000000012, 0x8000000100464290, &v26);
      _os_log_impl(&_mh_execute_header, v25, v20, "%s called while not active", v21, 0xCu);
      sub_1000752F4(v22);

      return;
    }
  }
}

void sub_100145E54(void (**a1)(void, void, void))
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = objc_opt_self();
  _Block_copy(a1);
  v12 = [v11 currentConnection];
  if (v12)
  {
    v34 = v12;
    sub_1001263BC(v12, v37);
    if (qword_100501D50 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v19 = off_10050A868;

    os_unfair_lock_lock(v19 + 6);
    v20 = *&v19[4]._os_unfair_lock_opaque;

    os_unfair_lock_unlock(v19 + 6);

    if (v20)
    {
      v33[1] = *(v20 + 72);
      v21 = swift_allocObject();
      v22 = v37[6];
      *(v21 + 104) = v37[5];
      *(v21 + 120) = v22;
      *(v21 + 136) = v37[7];
      v23 = v37[0];
      *(v21 + 40) = v37[1];
      *(v21 + 56) = v37[2];
      v24 = v37[4];
      *(v21 + 72) = v37[3];
      *(v21 + 88) = v24;
      *(v21 + 16) = v20;
      *(v21 + 152) = v38;
      *(v21 + 24) = v23;
      *(v21 + 160) = sub_100148164;
      *(v21 + 168) = v10;
      aBlock[4] = sub_100147F8C;
      aBlock[5] = v21;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100080830;
      aBlock[3] = &unk_1004C88F0;
      v33[0] = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      v35 = _swiftEmptyArrayStorage;
      sub_100147FB4(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
      sub_1000BA838();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v25 = v33[0];
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v25);

      (*(v3 + 8))(v5, v2);
      (*(v7 + 8))(v9, v6);
    }

    else
    {
      sub_10012E3A0(v37);
      if (qword_1005019D8 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_1000958E4(v26, qword_10051B2C8);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        aBlock[0] = v30;
        *v29 = 136315138;
        *(v29 + 4) = sub_1002FFA0C(0xD000000000000029, 0x80000001004642D0, aBlock);
        _os_log_impl(&_mh_execute_header, v27, v28, "%s SECPresentmentIntentManager is nil", v29, 0xCu);
        sub_1000752F4(v30);
      }

      sub_10009591C();
      swift_allocError();
      *v31 = 6;
      v32 = _convertErrorToNSError(_:)();
      (a1)[2](a1, 0, v32);
    }
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000958E4(v13, qword_10051B2C8);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Unable to resolve current XPC connection", v16, 2u);
    }

    sub_10009591C();
    swift_allocError();
    *v17 = 15;
    v18 = _convertErrorToNSError(_:)();
    (a1)[2](a1, 0, v18);
  }
}

void sub_1001465D8(void (**a1)(void, void))
{
  v2 = [objc_opt_self() currentConnection];
  if (v2)
  {
    v3 = v2;
    [v2 auditToken];
    v4 = kTCCServiceSecureElementAccess;
    if (kTCCServiceSecureElementAccess)
    {
      v16[0] = v14;
      v16[1] = v15;
      v5 = TCCAccessPreflightWithAuditToken();

      [v3 auditToken];
      v17 = 0;
      if (sub_100306124(v5 != 2, v16, 0, 0))
      {
        a1[2](a1, 0);
      }

      else
      {
        sub_10009591C();
        swift_allocError();
        *v12 = 27;
        v13 = _convertErrorToNSError(_:)();
        (a1)[2](a1, v13);
      }
    }

    else
    {
      _Block_release(a1);
      __break(1u);
    }
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000958E4(v6, qword_10051B2C8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Unable to resolve current XPC connection", v9, 2u);
    }

    sub_10009591C();
    swift_allocError();
    *v10 = 15;
    v11 = _convertErrorToNSError(_:)();
    (a1)[2](a1, v11);
  }
}

uint64_t sub_100146854(void *a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000958E4(v5, qword_10051B2C8);
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "Accepting %@", v9, 0xCu);
    sub_1000C2998(v10);
  }

  v12 = objc_opt_self();
  v13 = [v12 interfaceWithProtocol:&OBJC_PROTOCOL____TtP10seserviced18SECredentialServer_];
  v14 = sub_100286650();
  v15 = sub_100286A48();
  [v13 setInterface:v15 forSelector:"queueSessionWithCallbackProxy:reply:" argumentIndex:0 ofReply:0];

  [v13 setInterface:v14 forSelector:"queueSessionWithCallbackProxy:reply:" argumentIndex:0 ofReply:1];
  v16 = [v12 interfaceWithProtocol:&OBJC_PROTOCOL____TtP10seserviced38SECredentialPresentmentIntentAssertion_];
  [v13 setInterface:v16 forSelector:"acquirePresentmentIntentAssertionWithReply:" argumentIndex:0 ofReply:1];

  [v6 setExportedInterface:v13];
  [v6 setExportedObject:v3];
  v17 = swift_allocObject();
  *(v17 + 16) = v3;
  *(v17 + 24) = v6;
  v30 = sub_10014803C;
  v31 = v17;
  v26 = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_100080830;
  v29 = &unk_1004C8940;
  v18 = _Block_copy(&v26);
  v19 = v6;
  v20 = v3;

  [v19 setInvalidationHandler:v18];
  _Block_release(v18);
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v19;
  v30 = sub_100148044;
  v31 = v21;
  v26 = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_100080830;
  v29 = &unk_1004C8990;
  v22 = _Block_copy(&v26);
  v23 = v19;
  v24 = v20;

  [v23 setInterruptionHandler:v22];
  _Block_release(v22);
  [v23 resume];
  return 1;
}

uint64_t sub_100146C68()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100146CA0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100146CE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10012E598;

  return sub_100142758(a1, v4, v5, v6);
}

uint64_t sub_100146DC0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100146E00(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 36);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10012E598;

  return sub_10014308C(a1, v4, v5, v6, v8, v7);
}

uint64_t sub_100146ECC()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100146F28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10012E598;

  return sub_100144B50(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100147004()
{
  if (*(v0 + 16))
  {
  }

  sub_10014708C(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168));

  return _swift_deallocObject(v0, 184, 7);
}

void sub_10014708C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 a15)
{
  if (a15 <= 1u)
  {
  }
}

uint64_t sub_100147120(uint64_t a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10014717C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000C288C;

  return sub_100275E20(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100147250()
{

  sub_10014708C(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144));

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_1001472C8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100147310(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10012E598;

  return sub_100275B90(a1, v4, v5, v6, v7, v8);
}

void sub_1001473D8(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  sub_100141D3C();
  v7 = *(a2 + OBJC_IVAR____TtC10seserviced9SECServer_backgroundAssertionMonitor);
  if (v7)
  {
    v8 = objc_opt_self();

    v9 = v7;
    v10 = [v8 currentConnection];
    if (!v10)
    {
      if (qword_1005019D8 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_1000958E4(v19, qword_10051B2C8);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Unable to resolve current XPC connection", v22, 2u);
      }

      sub_10009591C();
      swift_allocError();
      *v23 = 15;
      v24 = _convertErrorToNSError(_:)();
      (a3)[2](a3, 0, v24);

      goto LABEL_34;
    }

    v11 = v10;
    sub_1001263BC(v10, v91);
    v88 = v96;
    v89[0] = v97[0];
    v89[1] = v97[1];
    v90 = v98;
    v84 = v92;
    v85 = v93;
    v86 = v94;
    v87 = v95;
    v76 = v9;
    v77 = v6;
    if (v98)
    {
      if (v98 == 2)
      {
        v25 = v11;
        v26 = a1;
LABEL_26:
        sub_10012E344(v91, &v82);
        [v25 auditToken];
        v51 = *v82.val;
        v52 = *&v82.val[2];
        v54 = *&v82.val[4];
        v53 = *&v82.val[6];
        v55 = objc_allocWithZone(type metadata accessor for SECUserSession(0));

        swift_unknownObjectRetain();
        v56 = v26;
        v57 = v25;
        v58 = sub_100201DF0(v91, v51, v52, v54, v53, sub_1000C2784, v77, v56);
        v59 = v76;
        if ([*&v76[OBJC_IVAR____TtC10seserviced22SECBackgroundAssertion_appStateObserver] isAppBackgroundedOrSuspended:v25])
        {
          if (qword_1005019D8 != -1)
          {
            swift_once();
          }

          v60 = type metadata accessor for Logger();
          sub_1000958E4(v60, qword_10051B2C8);
          sub_10012E344(v91, &v82);
          v61 = Logger.logObject.getter();
          v62 = static os_log_type_t.error.getter();
          sub_10012E3A0(v91);
          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            v64 = swift_slowAlloc();
            *v82.val = v64;
            *v63 = 136315138;
            v65 = sub_10013F33C();
            v66 = v58;
            v68 = v67;
            sub_10012E3A0(v91);
            v69 = sub_1002FFA0C(v65, v68, &v82);
            v58 = v66;

            *(v63 + 4) = v69;
            _os_log_impl(&_mh_execute_header, v61, v62, "Cannot queue session %s while backgrounded or suspended", v63, 0xCu);
            sub_1000752F4(v64);

            v59 = v76;
          }

          else
          {

            sub_10012E3A0(v91);
          }

          sub_10009591C();
          swift_allocError();
          *v72 = 18;
          v73 = _convertErrorToNSError(_:)();
          (a3)[2](a3, 0, v73);

          return;
        }

        sub_10012E3A0(v91);
        if (qword_100501A48 != -1)
        {
          swift_once();
        }

        v70 = qword_10051B398;
        v71 = v58;
        os_unfair_lock_lock(v70 + 4);
        sub_1001B0644(&v70[6], v71, &off_1004CBB58);
        os_unfair_lock_unlock(v70 + 4);
        sub_1001B0970();

LABEL_34:

        return;
      }

      v25 = v11;
      v37 = v97;
      v38 = v88;
      v39 = *(&v87 + 1);
      v40 = v87;
      v41 = *(&v86 + 1);
      v42 = v86;
      v43 = *(&v85 + 1);
      v44 = v85;
      v45 = *(&v84 + 1);
    }

    else
    {
      if (qword_1005019D8 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_1000958E4(v27, qword_10051B2C8);
      sub_10012E344(v91, &v82);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.info.getter();
      sub_10012E3A0(v91);
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        *v82.val = v75;
        *v30 = 136315138;
        v31 = sub_10013F33C();
        v74 = v29;
        v33 = v11;
        v34 = a1;
        v35 = sub_1002FFA0C(v31, v32, &v82);

        v36 = v30;
        *(v30 + 4) = v35;
        a1 = v34;
        v11 = v33;
        v9 = v76;
        _os_log_impl(&_mh_execute_header, v28, v74, "Registering client %s for background monitoring", v36, 0xCu);
        sub_1000752F4(v75);
      }

      v25 = v11;
      sub_100145A44(v11, a2, v9);
      v45 = *(&v84 + 1);
      v43 = *(&v85 + 1);
      v44 = v85;
      v41 = *(&v86 + 1);
      v42 = v86;
      v39 = *(&v87 + 1);
      v40 = v87;
      v37 = v89;
      v38 = v88;
    }

    v46 = v37[1];
    *v83.val = *v37;
    *&v83.val[4] = v46;
    v78[0] = v84;
    v78[1] = v45;
    v78[2] = v44;
    v78[3] = v43;
    v78[4] = v42;
    v78[5] = v41;
    v78[6] = v40;
    v78[7] = v39;
    v79 = v38;
    v80 = *v83.val;
    v81 = v46;
    sub_10012E3F4(&v84, &v82);
    v82 = v83;
    audit_token_to_pid(&v82);
    sub_10012E450(v78);
    v47 = OBJC_IVAR____TtC10seserviced9SECServer_presentmentIntentAssertionCallbacks;
    v48 = swift_beginAccess();
    v49 = *(a2 + v47);
    __chkstk_darwin(v48);
    v26 = a1;
    __chkstk_darwin(v50);

    os_unfair_lock_lock(v49 + 6);
    sub_100147E48(&v49[4]);
    os_unfair_lock_unlock(v49 + 6);

    goto LABEL_26;
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000958E4(v12, qword_10051B2C8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v91[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1002FFA0C(0xD000000000000022, 0x8000000100464260, v91);
    _os_log_impl(&_mh_execute_header, v13, v14, "%s called before backgroundAssertionMonitor set up", v15, 0xCu);
    sub_1000752F4(v16);
  }

  sub_10009591C();
  swift_allocError();
  *v17 = 6;
  v18 = _convertErrorToNSError(_:)();
  (a3)[2](a3, 0, v18);
}

uint64_t sub_100147DF0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100147EA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100068FC4(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_100147F0C()
{

  sub_10014708C(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152));

  return _swift_deallocObject(v0, 176, 7);
}

uint64_t sub_100147F9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100147FB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100147FFC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10014804C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100145730([*(v1 + 16) processIdentifier]);
  *a1 = result;
  return result;
}

void *sub_10014809C@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_1001480E0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100148174(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10014822C(void *a1)
{
  v3 = a1[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v5 = *(v3 - 8);
  __chkstk_darwin(v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v1, a1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return 0x6576697463616E69;
    }

    (*(v5 + 32))(v8, v12, v3);
    v15 = 0x6572676F72506E69;
    v16 = 29555;
  }

  else
  {
    (*(v5 + 32))(v8, v12, v3);
    v15 = 0x656C756465686373;
    v16 = 8292;
  }

  v20[0] = v15;
  v20[1] = v16 | 0xED0000203A200000;
  dispatch thunk of RawRepresentable.rawValue.getter();
  v17._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
  String.append(_:)(v17);

  v18 = v20[0];
  (*(v5 + 8))(v8, v3);
  return v18;
}

uint64_t sub_1001484E4()
{

  v1 = qword_1005048B0;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_100148570()
{
  sub_1001484E4();

  return swift_deallocClassInstance();
}

uint64_t sub_1001485E8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10014864C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_23;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 253) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_23:
      v10 = *(a1 + v3);
      if (v10 >= 3)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_23;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 254;
}

void sub_100148758(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_37:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v5] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_22;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

uint64_t sub_10014891C()
{
  v1 = v0;
  v2 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - v4;
  if (qword_1005019C8 != -1)
  {
    swift_once();
  }

  v6 = sub_1000958E4(v2, qword_1005047F8);
  (*(v3 + 16))(v5, v6, v2);
  UserDefaultBacked.wrappedValue.getter();
  (*(v3 + 8))(v5, v2);
  if (v13)
  {
    return 1;
  }

  sub_100068FC4(&qword_1005049C8, &qword_10040BE48);
  result = swift_initStackObject();
  *(result + 16) = xmmword_100409900;
  if (!kTCCAccessCheckOptionPrompt)
  {
    __break(1u);
    goto LABEL_10;
  }

  *(result + 32) = kTCCAccessCheckOptionPrompt;
  *(result + 40) = 1;
  if (!kTCCAccessCheckOptionPurposeRequired)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(result + 48) = kTCCAccessCheckOptionPurposeRequired;
  *(result + 56) = 0;
  sub_1000916C0(result);
  swift_setDeallocating();
  sub_100068FC4(&qword_1005049D0, &unk_10040BE50);
  result = swift_arrayDestroy();
  v8 = kTCCServiceSecureElementAccess;
  if (kTCCServiceSecureElementAccess)
  {
    v9 = *(v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_auditToken + 16);
    v13 = *(v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_auditToken);
    v14 = v9;
    type metadata accessor for CFString(0);
    sub_100148B8C();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v12[0] = v13;
    v12[1] = v14;
    v11 = TCCAccessCheckAuditToken();

    return v11 != 0;
  }

LABEL_11:
  __break(1u);
  return result;
}

unint64_t sub_100148B8C()
{
  result = qword_1005021B0;
  if (!qword_1005021B0)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005021B0);
  }

  return result;
}

id sub_100148BE4()
{
  result = [objc_allocWithZone(type metadata accessor for SEStorageManagementXPCServer()) init];
  qword_10051B2E0 = result;
  return result;
}

uint64_t sub_100148CB0(uint64_t a1, void *a2)
{
  *(swift_allocObject() + 16) = a2;
  v3 = a2;
  dispatch thunk of XPCListener.IncomingSessionRequest.accept(incomingMessageHandler:cancellationHandler:)();
}

double sub_100148D4C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v54 = type metadata accessor for XPCReceivedMessage();
  v51 = *(v54 - 8);
  v3 = *(v51 + 64);
  __chkstk_darwin(v54);
  v4 = type metadata accessor for SEStorageManagementInternal.XPCRequest();
  v52 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v53 = (&v45 - v8);
  __chkstk_darwin(v9);
  v11 = &v45 - v10;
  v12 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = a1;
  v16 = XPCReceivedMessage.auditToken.getter();
  sub_1001495B8(v16, v17, v18, v19, v15);
  v46 = v6;
  v47 = v3;
  v20 = v52;
  v49 = v11;
  v50 = v13;
  v48 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v54;
  sub_10014D478(&qword_100504A20, &type metadata accessor for SEStorageManagementInternal.XPCRequest, &protocol conformance descriptor for SEStorageManagementInternal.XPCRequest);
  v22 = v53;
  v23 = v55;
  XPCReceivedMessage.decode<A>(as:)();
  v24 = v20;
  v25 = *(v20 + 32);
  v26 = v49;
  v25(v49, v22, v4);
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_1000958E4(v27, qword_10051B240);
  v28 = v46;
  (*(v24 + 16))(v46, v26, v4);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = v28;
    v32 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v57 = v53;
    *v32 = 136315138;
    sub_10014D478(&qword_100504A28, &type metadata accessor for SEStorageManagementInternal.XPCRequest, &protocol conformance descriptor for SEStorageManagementInternal.XPCRequest);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;
    v36 = v31;
    v37 = *(v24 + 8);
    v37(v36, v4);
    v38 = sub_1002FFA0C(v33, v35, &v57);
    v26 = v49;

    *(v32 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v29, v30, "Decoded request %s", v32, 0xCu);
    sub_1000752F4(v53);
  }

  else
  {

    v37 = *(v24 + 8);
    v37(v28, v4);
  }

  v39 = v51;
  v40 = v48;
  XPCReceivedMessage.detachHandoff()();
  (*(v39 + 16))(v40, v23, v21);
  v41 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v42 = swift_allocObject();
  (*(v39 + 32))(v42 + v41, v40, v21);
  sub_10014AE70(v26, sub_10014AE00, v42);

  v37(v26, v4);
  v43 = v56;
  *(v56 + 32) = 0;
  result = 0.0;
  *v43 = 0u;
  v43[1] = 0u;
  return result;
}

void sub_1001495B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *v29.val = a1;
  *&v29.val[2] = a2;
  *&v29.val[4] = a3;
  *&v29.val[6] = a4;
  v7 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &v29);
  if (v7)
  {
    v8 = v7;
    v9 = sub_100149CD0(v7, 0xD000000000000016, 0x80000001004645D0);
    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0x6E776F6E6B6E75;
    }

    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0xE700000000000000;
    }

    v13 = sub_10014A134(v8, *(v5 + OBJC_IVAR____TtC10seserviced28SEStorageManagementXPCServer_entitlementKey), *(v5 + OBJC_IVAR____TtC10seserviced28SEStorageManagementXPCServer_entitlementKey + 8));
    if ((v13 == 2 || (v13 & 1) == 0) && ((v14 = sub_10014A134(v8, *(v5 + OBJC_IVAR____TtC10seserviced28SEStorageManagementXPCServer_serviceName), *(v5 + OBJC_IVAR____TtC10seserviced28SEStorageManagementXPCServer_serviceName + 8)), v14 == 2) || (v14 & 1) == 0))
    {
      if (qword_100501938 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_1000958E4(v21, qword_10051B240);

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v29.val = v25;
        *v24 = 136315138;
        v26 = sub_1002FFA0C(v11, v12, &v29);

        *(v24 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v22, v23, "Client %s is not entitled", v24, 0xCu);
        sub_1000752F4(v25);
      }

      else
      {
      }

      v27 = enum case for SEStorageManagementInternal.Types.ErrorCode.notEntitled(_:);
      v28 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
      (*(*(v28 - 8) + 104))(a5, v27, v28);
      sub_10014D478(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode, &protocol conformance descriptor for SEStorageManagementInternal.Types.ErrorCode);
      swift_willThrowTypedImpl();
    }

    else
    {
    }
  }

  else
  {
    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000958E4(v15, qword_10051B240);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to create SecTaskCreateWithAuditToken", v18, 2u);
    }

    *a5 = 0xD00000000000002CLL;
    a5[1] = 0x80000001004645A0;
    v19 = enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:);
    v20 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
    (*(*(v20 - 8) + 104))(a5, v19, v20);
    sub_10014D478(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode, &protocol conformance descriptor for SEStorageManagementInternal.Types.ErrorCode);
    swift_willThrowTypedImpl();
  }
}

uint64_t sub_100149A00(uint64_t a1)
{
  type metadata accessor for SEStorageManagementInternal.XPCResponse();
  sub_10014D478(&qword_100504A18, &type metadata accessor for SEStorageManagementInternal.XPCResponse, &protocol conformance descriptor for SEStorageManagementInternal.XPCResponse);
  return XPCReceivedMessage.reply<A>(_:)();
}

void sub_100149A7C(uint64_t a1)
{
  v2 = type metadata accessor for XPCRichError();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000958E4(v6, qword_10051B240);
  (*(v3 + 16))(v5, a1, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    v11 = XPCRichError.debugDescription.getter();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    v14 = sub_1002FFA0C(v11, v13, &v16);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "Client disconnected with error %s", v9, 0xCu);
    sub_1000752F4(v10);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  if (qword_10051B4D8)
  {

    sub_1001E0CD4();
  }
}

uint64_t sub_100149CD0(__SecTask *a1, uint64_t a2, unint64_t a3)
{
  error = 0;
  v6 = String._bridgeToObjectiveC()();
  v7 = SecTaskCopyValueForEntitlement(a1, v6, &error);

  if (v7)
  {
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();
      return v26;
    }

    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000958E4(v18, qword_10051B240);
    swift_unknownObjectRetain();

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v21 = 136315650;
      *(v21 + 4) = sub_1002FFA0C(a2, a3, &v26);
      *(v21 + 12) = 2080;
      swift_getObjectType();
      v22 = _typeName(_:qualified:)();
      v24 = sub_1002FFA0C(v22, v23, &v26);

      *(v21 + 14) = v24;
      *(v21 + 22) = 2080;
      *(v21 + 24) = sub_1002FFA0C(0x676E69727453, 0xE600000000000000, &v26);
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to cast result of entitlement %s from %s to %s", v21, 0x20u);
      swift_arrayDestroy();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v9 = error;
    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000958E4(v10, qword_10051B240);
    v11 = v9;

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v14 = 136315394;
      *(v14 + 4) = sub_1002FFA0C(a2, a3, &v26);
      *(v14 + 12) = 2080;
      if (v9)
      {
        type metadata accessor for CFError(0);
        sub_10014D478(&qword_100504A60, type metadata accessor for CFError, &protocol conformance descriptor for CFErrorRef);
        v15 = Error.localizedDescription.getter();
        v17 = v16;
      }

      else
      {
        v17 = 0xE500000000000000;
        v15 = 0x3E6C696E3CLL;
      }

      v25 = sub_1002FFA0C(v15, v17, &v26);

      *(v14 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to SecTaskCopyValueForEntitlement %s : %s", v14, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_10014A134(__SecTask *a1, uint64_t a2, unint64_t a3)
{
  error = 0;
  v6 = String._bridgeToObjectiveC()();
  v7 = SecTaskCopyValueForEntitlement(a1, v6, &error);

  if (v7)
  {
    v28 = v7;
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();
      return v27;
    }

    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000958E4(v18, qword_10051B240);
    swift_unknownObjectRetain();

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v21 = 136315650;
      *(v21 + 4) = sub_1002FFA0C(a2, a3, &v28);
      *(v21 + 12) = 2080;
      swift_getObjectType();
      v22 = _typeName(_:qualified:)();
      v24 = sub_1002FFA0C(v22, v23, &v28);

      *(v21 + 14) = v24;
      *(v21 + 22) = 2080;
      *(v21 + 24) = sub_1002FFA0C(1819242306, 0xE400000000000000, &v28);
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to cast result of entitlement %s from %s to %s", v21, 0x20u);
      swift_arrayDestroy();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 2;
  }

  v9 = error;
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000958E4(v10, qword_10051B240);
  v11 = v9;

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v12, v13))
  {

    return 2;
  }

  v14 = swift_slowAlloc();
  v28 = swift_slowAlloc();
  *v14 = 136315394;
  *(v14 + 4) = sub_1002FFA0C(a2, a3, &v28);
  *(v14 + 12) = 2080;
  if (v9)
  {
    type metadata accessor for CFError(0);
    sub_10014D478(&qword_100504A60, type metadata accessor for CFError, &protocol conformance descriptor for CFErrorRef);
    v15 = Error.localizedDescription.getter();
    v17 = v16;
  }

  else
  {
    v17 = 0xE500000000000000;
    v15 = 0x3E6C696E3CLL;
  }

  v25 = sub_1002FFA0C(v15, v17, &v28);

  *(v14 + 14) = v25;
  _os_log_impl(&_mh_execute_header, v12, v13, "Failed to SecTaskCopyValueForEntitlement %s : %s", v14, 0x16u);
  v8 = 2;
  swift_arrayDestroy();

  return v8;
}

uint64_t sub_10014A598(char a1, uint64_t a2, void (*a3)(_BYTE *))
{
  v18 = a3;
  v5 = type metadata accessor for SEStorageManagementInternal.XPCResponse();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100068FC4(&unk_100506F00, &qword_10040BE90);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10014D408(a2, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100075768(v11, &unk_100506F00, &qword_10040BE90);
    *v8 = a1 & 1;
    (*(v6 + 104))(v8, enum case for SEStorageManagementInternal.XPCResponse.storageSufficient(_:), v5);
    v18(v8);
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    (*(v13 + 16))(v8, v15, v12);
    (*(v6 + 104))(v8, enum case for SEStorageManagementInternal.XPCResponse.error(_:), v5);
    v18(v8);
    (*(v6 + 8))(v8, v5);
    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_10014A878(uint64_t a1, void (*a2)(char *))
{
  v4 = type metadata accessor for SEStorageManagementInternal.XPCResponse();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100068FC4(&unk_100506F00, &qword_10040BE90);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10014D408(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100075768(v10, &unk_100506F00, &qword_10040BE90);
    (*(v5 + 104))(v7, enum case for SEStorageManagementInternal.XPCResponse.dismissed(_:), v4);
    a2(v7);
    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    (*(v12 + 16))(v7, v14, v11);
    (*(v5 + 104))(v7, enum case for SEStorageManagementInternal.XPCResponse.error(_:), v4);
    a2(v7);
    (*(v5 + 8))(v7, v4);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_10014AD30()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10014AD78()
{
  v1 = type metadata accessor for XPCReceivedMessage();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10014AE00(uint64_t a1)
{
  type metadata accessor for XPCReceivedMessage();

  return sub_100149A00(a1);
}

uint64_t sub_10014AE70(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v247 = a2;
  v248 = a3;
  v236 = type metadata accessor for SEStorageManagementInternal.XPCResponse();
  v235 = *(v236 - 8);
  __chkstk_darwin(v236);
  v234 = (&v206 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v4 - 8);
  v230 = &v206 - v5;
  v6 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  v241 = *(v6 - 8);
  v242 = v6;
  __chkstk_darwin(v6);
  v231 = (&v206 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v10 = &v206 - v9;
  __chkstk_darwin(v11);
  v222 = &v206 - v12;
  __chkstk_darwin(v13);
  v224 = (&v206 - v14);
  __chkstk_darwin(v15);
  v220 = &v206 - v16;
  v17 = sub_100068FC4(&unk_100506F00, &qword_10040BE90);
  __chkstk_darwin(v17 - 8);
  v232 = &v206 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v221 = &v206 - v20;
  __chkstk_darwin(v21);
  v237 = (&v206 - v22);
  v240 = type metadata accessor for UUID();
  v239 = *(v240 - 8);
  __chkstk_darwin(v240);
  v233 = &v206 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v238 = &v206 - v25;
  v243 = type metadata accessor for SEStorageManagementSheet.DisplayConfiguration();
  v246 = *(v243 - 8);
  __chkstk_darwin(v243);
  v229 = &v206 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = v26;
  __chkstk_darwin(v27);
  v245 = &v206 - v28;
  v29 = type metadata accessor for SEStorageManagementInternal.Types.CredentialsToProvision();
  v244 = *(v29 - 8);
  __chkstk_darwin(v29);
  v31 = &v206 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for SEStorageManagementSheet.ProvisioningDeviceConfiguration();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v228 = &v206 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v223 = &v206 - v36;
  __chkstk_darwin(v37);
  v227 = &v206 - v38;
  v225 = v39;
  __chkstk_darwin(v40);
  v42 = &v206 - v41;
  v43 = type metadata accessor for SEStorageManagementInternal.XPCRequest.Operation();
  v44 = *(v43 - 8);
  __chkstk_darwin(v43);
  v46 = (&v206 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  SEStorageManagementInternal.XPCRequest.operation.getter();
  v47 = (*(v44 + 88))(v46, v43);
  if (v47 == enum case for SEStorageManagementInternal.XPCRequest.Operation.presentStorageManagementSheet(_:))
  {
    (*(v44 + 96))(v46, v43);
    v48 = sub_100068FC4(&qword_100504A48, &qword_10040BEA8);
    v49 = v48[12];
    v50 = (v46 + v48[16]);
    v52 = *v50;
    v51 = v50[1];
    v215 = v52;
    v216 = v51;
    v53 = (v46 + v48[20]);
    v55 = *v53;
    v54 = v53[1];
    v214 = v55;
    v217 = v54;
    v56 = v48[24];
    v231 = v33;
    v59 = v33[4];
    v57 = v33 + 4;
    v58 = v59;
    v234 = v42;
    v235 = v32;
    v59(v42, v46, v32);
    v60 = *(v244 + 32);
    v219 = v29;
    v60(v31, v46 + v49, v29);
    v62 = v246 + 32;
    v61 = *(v246 + 32);
    v63 = v46 + v56;
    v64 = v243;
    v61(v245, v63, v243);
    v65 = v238;
    SEStorageManagementInternal.XPCRequest.clientIdentifier.getter();
    v66 = SEStorageManagementInternal.Types.CredentialsToProvision.credentials.getter();
    v67 = swift_allocObject();
    v68 = v247;
    v236 = v67;
    v69 = v248;
    *(v67 + 16) = v247;
    *(v67 + 24) = v69;
    v218 = v31;
    if (qword_10051B4D8)
    {
      v70 = v68;
      swift_retain_n();

      if (qword_100501938 != -1)
      {
        swift_once();
      }

      v71 = type metadata accessor for Logger();
      sub_1000958E4(v71, qword_10051B240);

      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.error.getter();

      v74 = v65;
      if (os_log_type_enabled(v72, v73))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v250 = v76;
        *v75 = 136315138;
        v77 = UUID.uuidString.getter();
        v79 = sub_1002FFA0C(v77, v78, &v250);

        *(v75 + 4) = v79;
        _os_log_impl(&_mh_execute_header, v72, v73, "Presentation is already in progress for %s", v75, 0xCu);
        sub_1000752F4(v76);
        v64 = v243;
        v70 = v247;
      }

      v80 = v246;
      v81 = v244;
      v83 = v241;
      v82 = v242;
      v84 = v237;
      (*(v241 + 13))(v237, enum case for SEStorageManagementInternal.Types.ErrorCode.presentationInProgress(_:), v242);
      (*(v83 + 7))(v84, 0, 1, v82);
      sub_10014A598(0, v84, v70);

      sub_100075768(v84, &unk_100506F00, &qword_10040BE90);
      (*(v239 + 8))(v74, v240);
      (*(v80 + 8))(v245, v64);
      (*(v81 + 8))(v218, v219);
      v96 = v231[1];
      v97 = v234;
      return v96(v97, v235);
    }

    v210 = v61;
    v211 = v62;
    v212 = v58;
    v209 = v57;
    v213 = v66;
    v90 = *(v239 + 16);
    v91 = v233;
    v92 = v240;
    v90(v233, v65, v240);
    type metadata accessor for SEStorageManagementUIClient(0);
    swift_allocObject();
    swift_retain_n();
    v93 = sub_1001E0E8C(v91);
    qword_10051B4D8 = v93;

    v90(v91, v65, v92);
    v94 = objc_allocWithZone(type metadata accessor for SEStorageManagementPresenter(0));

    v95 = sub_1001E2868(v91, 0);
    sub_1001E1140(v95);
    v233 = 0;
    v102 = *&v95[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_activeCredentialSession];
    *&v95[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_activeCredentialSession] = 0;

    v103 = v236;
    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v104 = type metadata accessor for Logger();
    sub_1000958E4(v104, qword_10051B240);
    v105 = v95;
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v237 = swift_slowAlloc();
      v250 = v237;
      *v108 = 136315138;
      v109 = v107;
      v110 = v105;
      v111 = [v110 description];
      v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v114 = v113;

      v115 = sub_1002FFA0C(v112, v114, &v250);

      *(v108 + 4) = v115;
      v103 = v236;
      _os_log_impl(&_mh_execute_header, v106, v109, "SharedUIClient: Starting presenter %s", v108, 0xCu);
      sub_1000752F4(v237);
    }

    v116 = v247;
    v117 = *(v93 + 4);
    *(v93 + 4) = v105;
    v118 = v105;

    v119 = swift_allocObject();
    v119[2] = v93;
    v119[3] = sub_10014CF98;
    v119[4] = v103;
    v120 = *&v118[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_state];
    swift_retain_n();
    swift_retain_n();

    os_unfair_lock_lock((v120 + 20));
    v121 = *(v120 + 16);
    os_unfair_lock_unlock((v120 + 20));

    v237 = v118;
    if (v121)
    {
      v122 = v118;
      v123 = Logger.logObject.getter();
      v124 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v123, v124))
      {
        v125 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        v208 = v119;
        v127 = v126;
        v250 = v126;
        *v125 = 136315138;
        v128 = v122;
        v129 = v93;
        v130 = [v128 description];
        v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v133 = v132;

        v93 = v129;
        v134 = v131;
        v135 = v247;
        v136 = sub_1002FFA0C(v134, v133, &v250);

        *(v125 + 4) = v136;
        _os_log_impl(&_mh_execute_header, v123, v124, "%s Unable to start presentation out of pending state", v125, 0xCu);
        sub_1000752F4(v127);
      }

      else
      {
        v135 = v116;
      }

      v148 = v246;
      v149 = v244;
      v150 = v218;
      v152 = v241;
      v151 = v242;
      v153 = v232;
      *v232 = 0xD00000000000001ALL;
      *(v153 + 1) = 0x8000000100464520;
      (*(v152 + 13))(v153, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v151);
      (*(v152 + 7))(v153, 0, 1, v151);
      v154 = *(v93 + 4);
      v155 = v219;
      if (v154)
      {
        v156 = *(v154 + OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_activeCredentialSession);
        *(v154 + OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_activeCredentialSession) = 0;
      }

      v157 = v232;
      sub_10014A598(0, v232, v135);
      sub_100075768(v157, &unk_100506F00, &qword_10040BE90);

      v158 = v243;
      v159 = v245;
LABEL_30:
      v160 = v234;
LABEL_37:

      (*(v239 + 8))(v238, v240);
      (*(v148 + 8))(v159, v158);
      (*(v149 + 8))(v150, v155);
      v96 = v231[1];
      v97 = v160;
      return v96(v97, v235);
    }

    v208 = v119;
    v140 = v231;
    v141 = v231 + 2;
    v142 = v227;
    v143 = v235;
    v207 = v231[2];
    v207(v227, v234, v235);
    v144 = (v140[11])(v142, v143);
    v145 = v144;
    v146 = enum case for SEStorageManagementSheet.ProvisioningDeviceConfiguration.currentDevice(_:);
    if (v144 == enum case for SEStorageManagementSheet.ProvisioningDeviceConfiguration.currentDevice(_:) || v144 == enum case for SEStorageManagementSheet.ProvisioningDeviceConfiguration.pairedWatch(_:))
    {
      v247 = v141;
      (v140[12])(v142, v143);
      v227 = *v142;
      swift_beginAccess();
      sub_100068FC4(&unk_100504880, &unk_10040A5B0);
      UserDefaultBacked.wrappedValue.getter();
      v147 = v249;
      swift_endAccess();
      if (v147 == 1)
      {
        v232 = v93;
        v251 = &type metadata for SEStorageManagementMockPassProvider;
        v252 = sub_10014D3B4();
      }

      else
      {
        v164 = v223;
        v207(v223, v234, v143);
        v165 = type metadata accessor for SEStorageManagementPassProvider(0);
        swift_allocObject();
        v166 = v164;
        v167 = v233;
        v168 = v224;
        v169 = sub_1001BAACC(v166, v224);
        if (v167)
        {
          v171 = v241;
          v170 = v242;
          v172 = *(v241 + 4);
          v173 = v220;
          v172(v220, v168, v242);
          v174 = v222;
          v172(v222, v173, v170);
          v175 = v221;
          (*(v171 + 2))(v221, v174, v170);
          (*(v171 + 7))(v175, 0, 1, v170);
          v176 = *(v93 + 4);
          if (v176)
          {
            v177 = *(v176 + OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_activeCredentialSession);
            *(v176 + OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_activeCredentialSession) = 0;
          }

          sub_10014A598(0, v175, v116);

          sub_100075768(v175, &unk_100506F00, &qword_10040BE90);
          (*(v171 + 1))(v174, v170);

          v158 = v243;
          v149 = v244;
          v159 = v245;
          v148 = v246;
          v155 = v219;
          v150 = v218;
          goto LABEL_30;
        }

        v178 = v169;
        v232 = v93;
        v251 = v165;
        v252 = sub_10014D478(&unk_100507430, type metadata accessor for SEStorageManagementPassProvider, &unk_10040D8F8);
        v250 = v178;
      }

      v179 = OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_passProvider;
      swift_beginAccess();
      sub_10014CFEC(&v250, &v118[v179]);
      swift_endAccess();
      LODWORD(v242) = v145 == v146;
      v180 = swift_allocObject();
      v181 = v208;
      *(v180 + 16) = sub_10014CFE0;
      *(v180 + 24) = v181;
      sub_100068FC4(&unk_100507440, &unk_10040BEB0);
      v182 = swift_allocObject();
      sub_100068FC4(&qword_100504A58, &unk_10040FA00);
      v183 = swift_allocObject();
      *(v183 + 16) = 0;
      v182[3] = v180;
      v182[4] = v183;
      v182[2] = sub_10014D094;
      v184 = swift_allocObject();
      *(v184 + 16) = sub_10014D09C;
      *(v184 + 24) = v182;
      v185 = type metadata accessor for TaskPriority();
      v186 = *(*(v185 - 8) + 56);
      v187 = v230;
      v186(v230, 1, 1, v185);
      v188 = swift_allocObject();
      *(v188 + 16) = 0;
      *(v188 + 24) = 0;
      *(v188 + 32) = xmmword_10040BE60;
      v241 = sub_10014D0A4;
      *(v188 + 48) = v118;
      *(v188 + 56) = sub_10014D0A4;
      v233 = v184;
      *(v188 + 64) = v184;
      v189 = v118;
      v223 = v189;

      v224 = sub_100201B44(0, 0, v187, &unk_10040BEC0, v188);
      v186(v187, 1, 1, v185);
      v207(v228, v234, v235);
      v190 = v246 + 16;
      v158 = v243;
      (*(v246 + 16))(v229, v245, v243);
      v191 = (*(v231 + 80) + 40) & ~*(v231 + 80);
      v192 = (v225 + *(v190 + 64) + v191) & ~*(v190 + 64);
      v247 = (v192 + v226 + 7) & 0xFFFFFFFFFFFFFFF8;
      v193 = (v192 + v226 + 23) & 0xFFFFFFFFFFFFFFF8;
      v194 = (v193 + 15) & 0xFFFFFFFFFFFFFFF8;
      v195 = (v194 + 23) & 0xFFFFFFFFFFFFFFF8;
      v196 = (v195 + 23) & 0xFFFFFFFFFFFFFFF8;
      v197 = swift_allocObject();
      *(v197 + 2) = 0;
      *(v197 + 3) = 0;
      *(v197 + 4) = v189;
      v212(&v197[v191], v228, v235);
      v210(&v197[v192], v229, v158);
      v148 = v246;
      v198 = &v197[v247];
      *v198 = v213;
      v198[8] = v242;
      *&v197[v193] = v227;
      v199 = &v197[v194];
      v200 = v216;
      *v199 = v215;
      *(v199 + 1) = v200;
      v201 = &v197[v195];
      v202 = v217;
      *v201 = v214;
      *(v201 + 1) = v202;
      *&v197[v196] = v224;
      v159 = v245;
      v203 = &v197[(v196 + 15) & 0xFFFFFFFFFFFFFFF8];
      v204 = v233;
      *v203 = v241;
      v203[1] = v204;

      v205 = v223;

      sub_1001F9BE8(0, 0, v230, &unk_10040FA10, v197);

      v160 = v234;

      v155 = v219;
      v149 = v244;
      v150 = v218;
      goto LABEL_37;
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v85 = v247;
    v86 = v248;
    if (v47 == enum case for SEStorageManagementInternal.XPCRequest.Operation.addMockPasses(_:))
    {
      (*(v44 + 96))(v46, v43);
      v87 = *v46;
      v88 = v46[1];
      type metadata accessor for PropertyListDecoder();
      swift_allocObject();
      PropertyListDecoder.init()();
      sub_100068FC4(&qword_100504A30, &unk_10040BE98);
      sub_10014CEE4();
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

      v101 = v250;
      type metadata accessor for SEStorageMockEntryStore();
      sub_100259A0C(v10);
      v246 = v88;
      type metadata accessor for SEStorageMockEntryStore.Context();
      inited = swift_initStackObject();
      type metadata accessor for ModelContext();
      swift_allocObject();

      v138 = ModelContext.init(_:)();

      *(inited + 16) = v138;
      sub_10025AE64(v101, v231);

      swift_setDeallocating();

      v161 = v235;
      v162 = v234;
      v163 = v236;
      (*(v235 + 104))(v234, enum case for SEStorageManagementInternal.XPCResponse.added(_:), v236);
      v85(v162);
      sub_10006A178(v87, v246);
      return (*(v161 + 8))(v162, v163);
    }

    else if (v47 == enum case for SEStorageManagementInternal.XPCRequest.Operation.dismissStorageManagementSheet(_:))
    {
      v89 = v233;
      SEStorageManagementInternal.XPCRequest.clientIdentifier.getter();

      sub_1001F0B78(v89, v85, v86);

      return (*(v239 + 8))(v89, v240);
    }

    else
    {
      v98 = v234;
      *v234 = 0xD000000000000011;
      *(v98 + 1) = 0x80000001004644E0;
      (*(v241 + 13))(v98, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v242);
      v99 = v235;
      v100 = v236;
      (*(v235 + 104))(v98, enum case for SEStorageManagementInternal.XPCResponse.error(_:), v236);
      v85(v98);
      (*(v99 + 8))(v98, v100);
      return (*(v44 + 8))(v46, v43);
    }
  }

  return result;
}