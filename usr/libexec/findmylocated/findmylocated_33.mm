uint64_t sub_1003A2DD4()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1003A3148;
  }

  else
  {

    v2 = sub_1003A2F90;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003A2EF0()
{
  v1 = v0[5];
  v2 = sub_100027AC8(v0[13]);
  v1(0, 0xF000000000000000, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1003A2F90()
{
  v1 = v0[12];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_100017B4C(&qword_1005B2548, &type metadata accessor for DecodedLocationNotification, &protocol conformance descriptor for DecodedLocationNotification);
  v2 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v4 = v1;
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  if (v4)
  {
    (*(v6 + 8))(v0[9], v0[7]);

    v8 = v0[5];
    v9 = sub_100027AC8(v4);
    v8(0, 0xF000000000000000, v9);
  }

  else
  {
    v10 = v0[5];
    v11 = v2;
    v12 = v3;

    sub_100005F6C(v11, v12);
    v10(v11, v12, 0);
    sub_1000049D0(v11, v12);
    sub_1000049D0(v11, v12);
    (*(v6 + 8))(v5, v7);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1003A3148()
{

  v1 = v0[5];
  v2 = sub_100027AC8(v0[12]);
  v1(0, 0xF000000000000000, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1003A3314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_1003A333C, a1, 0);
}

uint64_t sub_1003A333C()
{
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_1003A34BC;

    return sub_10001CC28();
  }

  else
  {
    v4 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError, &protocol conformance descriptor for CommunicationError);
    v0[9] = swift_allocError();
    (*(*(v4 - 8) + 104))(v5, enum case for CommunicationError.missingTrampoline(_:), v4);
    swift_willThrow();

    return _swift_task_switch(sub_1003A36E8, 0, 0);
  }
}

uint64_t sub_1003A34BC(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return _swift_task_switch(sub_1003A35BC, 0, 0);
}

uint64_t sub_1003A35BC()
{
  v1 = v0[4];
  v2 = *(*(v0[8] + 56) + OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_stewieManager);
  type metadata accessor for Transaction();
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = 1;
  v4 = v2;
  static Transaction.named<A>(_:with:)();

  v1(0);
  v5 = v0[1];

  return v5();
}

uint64_t sub_1003A36E8()
{
  v13 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0B28);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[9];
    v5 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000002FLL, 0x80000001004E8AD0, &v12);
    *(v5 + 12) = 2082;
    v0[2] = v4;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v12);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[4];
  sub_100027AC8(v0[9]);
  v9();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1003A3A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_1003A3A34, a1, 0);
}

uint64_t sub_1003A3A34()
{
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_1003A3BB4;

    return sub_10001CC28();
  }

  else
  {
    v4 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError, &protocol conformance descriptor for CommunicationError);
    v0[9] = swift_allocError();
    (*(*(v4 - 8) + 104))(v5, enum case for CommunicationError.missingTrampoline(_:), v4);
    swift_willThrow();

    return _swift_task_switch(sub_1003A3D40, 0, 0);
  }
}

uint64_t sub_1003A3BB4(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return _swift_task_switch(sub_1003A3CB4, 0, 0);
}

uint64_t sub_1003A3CB4()
{
  v1 = *(v0 + 32);
  sub_10011E810();

  v1(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003A3D40()
{
  v13 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0B28);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[9];
    v5 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD000000000000027, 0x80000001004E8AA0, &v12);
    *(v5 + 12) = 2082;
    v0[2] = v4;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v12);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[4];
  sub_100027AC8(v0[9]);
  v9();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1003A4064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v5 = type metadata accessor for SecureLocationsStewie.PublishResult();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_1003A412C, a1, 0);
}

uint64_t sub_1003A412C()
{
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_1003A42B4;
    v3 = v0[8];

    return sub_1003920E8(v3);
  }

  else
  {
    v5 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError, &protocol conformance descriptor for CommunicationError);
    v0[12] = swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for CommunicationError.missingTrampoline(_:), v5);
    swift_willThrow();

    return _swift_task_switch(sub_1003A43D0, 0, 0);
  }
}

uint64_t sub_1003A42B4()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1003A492C;
  }

  else
  {

    v2 = sub_1003A45FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003A43D0()
{
  v14 = v0;
  v1 = v0[12];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000002BLL, 0x80000001004E8A70, &v13);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v13);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[4];
  v10 = sub_100027AC8(v1);
  v9(0, 0xF000000000000000, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003A45FC()
{
  v22 = v0;
  v1 = v0[11];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_100017B4C(&qword_1005B2540, &type metadata accessor for SecureLocationsStewie.PublishResult, &protocol conformance descriptor for SecureLocationsStewie.PublishResult);
  v2 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];
  if (v1)
  {
    (*(v5 + 8))(v0[8], v0[6]);

    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000A6F0(v7, qword_1005E0B28);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v21[0] = swift_slowAlloc();
      *v10 = 136446466;
      *(v10 + 4) = sub_10000D01C(0xD00000000000002BLL, 0x80000001004E8A70, v21);
      *(v10 + 12) = 2082;
      v0[2] = v1;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v11 = String.init<A>(describing:)();
      v13 = sub_10000D01C(v11, v12, v21);

      *(v10 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s trampoline error: %{public}s", v10, 0x16u);
      swift_arrayDestroy();
    }

    v14 = v0[4];
    v15 = sub_100027AC8(v1);
    v14(0, 0xF000000000000000, v15);
  }

  else
  {
    v16 = v0[4];
    v17 = v2;
    v18 = v3;

    sub_100005F6C(v17, v18);
    v16(v17, v18, 0);
    sub_1000049D0(v17, v18);
    sub_1000049D0(v17, v18);
    (*(v5 + 8))(v4, v6);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_1003A492C()
{
  v14 = v0;

  v1 = v0[11];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000002BLL, 0x80000001004E8A70, &v13);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v13);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[4];
  v10 = sub_100027AC8(v1);
  v9(0, 0xF000000000000000, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003A4C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v5 = type metadata accessor for SecureLocationsStewie.PublishResult();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_1003A4D2C, a1, 0);
}

uint64_t sub_1003A4D2C()
{
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_1003A4EB4;
    v3 = v0[8];

    return sub_100392770(v3);
  }

  else
  {
    v5 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError, &protocol conformance descriptor for CommunicationError);
    v0[12] = swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for CommunicationError.missingTrampoline(_:), v5);
    swift_willThrow();

    return _swift_task_switch(sub_1003A4FD0, 0, 0);
  }
}

uint64_t sub_1003A4EB4()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1003A552C;
  }

  else
  {

    v2 = sub_1003A51FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003A4FD0()
{
  v14 = v0;
  v1 = v0[12];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD000000000000020, 0x80000001004E8A40, &v13);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v13);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[4];
  v10 = sub_100027AC8(v1);
  v9(0, 0xF000000000000000, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003A51FC()
{
  v22 = v0;
  v1 = v0[11];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_100017B4C(&qword_1005B2540, &type metadata accessor for SecureLocationsStewie.PublishResult, &protocol conformance descriptor for SecureLocationsStewie.PublishResult);
  v2 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];
  if (v1)
  {
    (*(v5 + 8))(v0[8], v0[6]);

    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000A6F0(v7, qword_1005E0B28);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v21[0] = swift_slowAlloc();
      *v10 = 136446466;
      *(v10 + 4) = sub_10000D01C(0xD000000000000020, 0x80000001004E8A40, v21);
      *(v10 + 12) = 2082;
      v0[2] = v1;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v11 = String.init<A>(describing:)();
      v13 = sub_10000D01C(v11, v12, v21);

      *(v10 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s trampoline error: %{public}s", v10, 0x16u);
      swift_arrayDestroy();
    }

    v14 = v0[4];
    v15 = sub_100027AC8(v1);
    v14(0, 0xF000000000000000, v15);
  }

  else
  {
    v16 = v0[4];
    v17 = v2;
    v18 = v3;

    sub_100005F6C(v17, v18);
    v16(v17, v18, 0);
    sub_1000049D0(v17, v18);
    sub_1000049D0(v17, v18);
    (*(v5 + 8))(v4, v6);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_1003A552C()
{
  v14 = v0;

  v1 = v0[11];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD000000000000020, 0x80000001004E8A40, &v13);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v13);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[4];
  v10 = sub_100027AC8(v1);
  v9(0, 0xF000000000000000, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003A5864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v5 = type metadata accessor for SecureLocationsStewie.ServiceState();
  v3[7] = v5;
  v3[8] = *(v5 - 8);
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_1003A592C, a1, 0);
}

uint64_t sub_1003A592C()
{
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_1003A5AB4;
    v3 = v0[9];

    return sub_100393064(v3);
  }

  else
  {
    v5 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError, &protocol conformance descriptor for CommunicationError);
    v0[13] = swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for CommunicationError.missingTrampoline(_:), v5);
    swift_willThrow();

    return _swift_task_switch(sub_1003A5BD0, 0, 0);
  }
}

uint64_t sub_1003A5AB4()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1003A5EE0;
  }

  else
  {

    v2 = sub_1003A5DFC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003A5BD0()
{
  v14 = v0;
  v1 = v0[13];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000001FLL, 0x80000001004E8A20, &v13);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v13);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[5];
  v10 = sub_100027AC8(v1);
  v9(0, 0xF000000000000000, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003A5DFC()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[5];
  v0[3] = SecureLocationsStewie.ServiceState.rawValue.getter();
  sub_10004E724();
  v5 = FixedWidthInteger.data.getter();
  v7 = v6;
  v4();
  sub_1000049D0(v5, v7);
  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1003A5EE0()
{
  v14 = v0;

  v1 = v0[12];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000001FLL, 0x80000001004E8A20, &v13);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v13);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[5];
  v10 = sub_100027AC8(v1);
  v9(0, 0xF000000000000000, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003A6218()
{
  v13 = v0;
  v1 = v0[9];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD000000000000027, 0x80000001004E89F0, &v12);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v12);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[4];
  sub_100027AC8(v1);
  v9();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1003A6430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_1003A6458, a1, 0);
}

uint64_t sub_1003A6458()
{
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_1003A65D8;

    return sub_1003938D8();
  }

  else
  {
    v4 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError, &protocol conformance descriptor for CommunicationError);
    v0[9] = swift_allocError();
    (*(*(v4 - 8) + 104))(v5, enum case for CommunicationError.missingTrampoline(_:), v4);
    swift_willThrow();

    return _swift_task_switch(sub_1003A66F4, 0, 0);
  }
}

uint64_t sub_1003A65D8()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1003A6974;
  }

  else
  {

    v2 = sub_1003A690C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003A66F4()
{
  v13 = v0;
  v1 = v0[9];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD000000000000026, 0x80000001004E89C0, &v12);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v12);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[4];
  sub_100027AC8(v1);
  v9();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1003A690C()
{
  (*(v0 + 32))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003A6974()
{
  v13 = v0;

  v1 = v0[8];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD000000000000026, 0x80000001004E89C0, &v12);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v12);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[4];
  sub_100027AC8(v1);
  v9();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1003A6CF0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_1003A6430(v2, v3, v4);
}

uint64_t sub_1003A6D9C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_1003A5864(v2, v3, v4);
}

uint64_t sub_1003A6E48()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_1003A4C64(v2, v3, v4);
}

uint64_t sub_1003A6EF4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100003690;

  return sub_1003A4064(v2, v3, v4);
}

uint64_t sub_1003A6FA0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_1003A3A0C(v2, v3, v4);
}

uint64_t sub_1003A704C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_1003A3314(v2, v3, v4);
}

uint64_t sub_1003A70F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10000368C;

  return sub_1003A2B7C(v2, v3, v4, v5, v6);
}

uint64_t sub_1003A71B8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_1003A23E0(v2, v3, v4);
}

uint64_t sub_1003A7264()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_1003A1B24(v2, v3, v4);
}

uint64_t sub_1003A7310()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10000368C;

  return sub_1003A0C64(v2, v3, v4, v5, v6);
}

uint64_t sub_1003A73D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_1003A0430(v2, v3, v4);
}

uint64_t sub_1003A747C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1003A74BC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_10039FBFC(v2, v3, v4);
}

uint64_t sub_1003A7568()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_10039F144(v2, v3, v4);
}

uint64_t sub_1003A7614()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10000368C;

  return sub_10039E680(v2, v3, v4, v5, v6);
}

uint64_t sub_1003A76D4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_10039DB7C(v2, v3, v4);
}

uint64_t sub_1003A7780()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10000368C;

  return sub_10039D2BC(v2, v3, v4, v5, v6);
}

uint64_t sub_1003A7840()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10000368C;

  return sub_10039C774(v2, v3, v4, v5, v6);
}

uint64_t sub_1003A7900()
{

  sub_1000049D0(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1003A7948()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10000368C;

  return sub_10039BCB0(v2, v3, v4, v5, v6);
}

uint64_t sub_1003A7A08()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_10000368C;

  return sub_10039AC08(v2, v3, v4, v5, v6, v7, v8);
}

unint64_t sub_1003A7ADC()
{
  result = qword_1005B2550;
  if (!qword_1005B2550)
  {
    sub_10004B610(&qword_1005B2400, &qword_1004D67B8);
    sub_100017B4C(&qword_1005AE888, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B2550);
  }

  return result;
}

uint64_t sub_1003A7B90()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10000368C;

  return sub_100399C68(v2, v3, v4, v5, v6);
}

uint64_t sub_1003A7C50()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10000368C;

  return sub_100398DD4(v2, v3, v4, v5, v6);
}

uint64_t sub_1003A7D10()
{
  sub_1000049D0(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1003A7D58()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10000368C;

  return sub_100398354(v2, v3, v4, v5, v6);
}

uint64_t sub_1003A7E18()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = v0[9];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_10000368C;

  return sub_100397324(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1003A7F00(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005B2560, &qword_1004D72B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003A7F68()
{
  sub_1000049D0(*(v0 + 16), *(v0 + 24));
  sub_1000049D0(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1003A7FB8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_10000368C;

  return sub_1003966D0(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1003A809C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[104] = a3;
  v3[103] = a2;
  v3[102] = a1;
  return _swift_task_switch(sub_1003A80C4, 0, 0);
}

uint64_t sub_1003A80C4()
{
  v0[105] = Data.init(base64Encoded:options:)();
  v0[106] = v1;
  if (v1 >> 60 == 15)
  {
    if (qword_1005A84D0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A6F0(v2, qword_1005B2570);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Payload is not base64 encoded string.", v5, 2u);
    }

    sub_1003A8FD8();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    v0[107] = v9;
    *v9 = v0;
    v9[1] = sub_1003A8290;

    return sub_1003AA34C();
  }
}

uint64_t sub_1003A8290(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[108] = a1;
  v4[109] = a2;
  v4[110] = v2;

  if (v2)
  {
    v5 = sub_1003A8594;
  }

  else
  {
    v5 = sub_1003A83AC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003A83AC()
{
  v1 = v0[110];
  v2 = sub_1003AACA0(v0[105], v0[106], v0[108], v0[109]);
  v0[111] = v2;
  if (v1)
  {
    v0[114] = v1;
    if (qword_1005A84D0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005B2570);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Decrypted payload did not contain handle or location.", v6, 2u);
    }

    v7 = swift_task_alloc();
    v0[115] = v7;
    *v7 = v0;
    v7[1] = sub_1003A87A4;

    return daemon.getter();
  }

  else
  {
    v8 = v2;
    v9 = swift_task_alloc();
    v0[112] = v9;
    *v9 = v0;
    v9[1] = sub_1003A85FC;
    v10 = v0[102];

    return sub_1003A90A8(v10, v8);
  }
}

uint64_t sub_1003A8594()
{
  sub_10001A794(v0[105], v0[106]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1003A85FC()
{
  *(*v1 + 904) = v0;

  if (v0)
  {
    v2 = sub_1003A8D0C;
  }

  else
  {
    v2 = sub_1003A8710;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003A8710()
{
  v1 = v0[109];
  v2 = v0[108];
  v3 = v0[106];
  v4 = v0[105];

  sub_1000049D0(v2, v1);
  sub_10001A794(v4, v3);
  v5 = v0[1];

  return v5();
}

uint64_t sub_1003A87A4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 928) = a1;

  v3 = swift_task_alloc();
  *(v2 + 936) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_1000095F0(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000095F0(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_1003A8980;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003A8980(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 944) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1003A8E68, 0, 0);
  }

  else
  {

    *(v4 + 952) = a1;
    v6 = swift_task_alloc();
    *(v4 + 960) = v6;
    *v6 = v5;
    v6[1] = sub_1003A8B10;

    return sub_1001E17C0(v4 + 16);
  }
}

uint64_t sub_1003A8B10()
{
  v1 = *v0;

  sub_100002CE0(v1 + 16, &qword_1005B02C0, &unk_1004D5E90);

  return _swift_task_switch(sub_1003A8C24, 0, 0);
}

uint64_t sub_1003A8C24()
{
  v1 = v0[109];
  v2 = v0[108];
  v3 = v0[106];
  v4 = v0[105];
  sub_1003A8FD8();
  swift_allocError();
  *v5 = 0;
  swift_willThrow();

  sub_1000049D0(v2, v1);
  sub_10001A794(v4, v3);
  v6 = v0[1];

  return v6();
}

uint64_t sub_1003A8D0C()
{

  v0[114] = v0[113];
  if (qword_1005A84D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005B2570);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Decrypted payload did not contain handle or location.", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[115] = v5;
  *v5 = v0;
  v5[1] = sub_1003A87A4;

  return daemon.getter();
}

uint64_t sub_1003A8E68()
{
  v1 = v0[109];
  v2 = v0[108];
  v3 = v0[106];
  v4 = v0[105];

  sub_1000049D0(v2, v1);
  sub_10001A794(v4, v3);
  v5 = v0[1];

  return v5();
}

uint64_t sub_1003A8F10()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005B2570);
  v1 = sub_10000A6F0(v0, qword_1005B2570);
  if (qword_1005A84C0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005E0B10);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_1003A8FD8()
{
  result = qword_1005B2588;
  if (!qword_1005B2588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B2588);
  }

  return result;
}

uint64_t sub_1003A902C(uint64_t a1)
{
  v2 = sub_1003AB748();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1003A9068(uint64_t a1)
{
  v2 = sub_1003AB748();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1003A90A8(uint64_t a1, uint64_t a2)
{
  v2[13] = a1;
  v2[14] = a2;
  sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1003A9150, 0, 0);
}

uint64_t sub_1003A9150()
{
  v1 = v0[14];
  if (*(v1 + 16))
  {
    v2 = sub_1000110D8(0x656C646E6168, 0xE600000000000000);
    if (v3)
    {
      sub_10000709C(*(v0[14] + 56) + 32 * v2, (v0 + 2));
      sub_10004B564(&qword_1005A9268, &unk_1004D38E0);
      v4 = swift_dynamicCast();
      if (v4)
      {
        v5 = v0[10];
      }

      else
      {
        v5 = 0;
      }

      if (v4)
      {
        v6 = v0[11];
      }

      else
      {
        v6 = 0;
      }

      if (!*(v1 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      v5 = 0;
      v6 = 0;
      if (!*(v1 + 16))
      {
        goto LABEL_16;
      }
    }

    v7 = sub_1000110D8(0x6E6F697461636F6CLL, 0xE800000000000000);
    if (v8)
    {
      sub_10000709C(*(v0[14] + 56) + 32 * v7, (v0 + 6));
      sub_10004B564(&qword_1005A9268, &unk_1004D38E0);
      sub_10004B564(&qword_1005B2590, &qword_1004D72F0);
      if (swift_dynamicCast())
      {
        v9 = v0[12];
        goto LABEL_17;
      }
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

LABEL_16:
  v9 = sub_100207B7C(_swiftEmptyArrayStorage);
LABEL_17:
  v0[17] = v6;
  v0[18] = v9;
  v10 = v0[16];
  if (v6)
  {

    sub_1002743D4(_swiftEmptyArrayStorage);
    Handle.init(withID:serverID:pushIdentifiers:expiresByGroupId:siblingIdentifiers:favoriteOrder:)();
    v11 = type metadata accessor for Handle();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
    v12 = swift_task_alloc();
    v0[19] = v12;
    *v12 = v0;
    v12[1] = sub_1003A963C;

    return sub_100340A1C(v5, v6);
  }

  else
  {
    v14 = type metadata accessor for Handle();
    v15 = *(v14 - 8);
    (*(v15 + 56))(v10, 1, 1, v14);
    v16 = v0[16];
    v17 = sub_1003AB244();

    if ((*(v15 + 48))(v16, 1, v14) == 1 && v17 == 0)
    {
      if (qword_1005A84D0 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_10000A6F0(v21, qword_1005B2570);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "Decrypted payload did not contain handle or location.", v24, 2u);
      }

      v25 = v0[16];

      sub_1003A8FD8();
      swift_allocError();
      *v26 = 0;
      swift_willThrow();
      sub_100002CE0(v25, &qword_1005B3360, &unk_1004C6AA0);

      v20 = v0[1];
    }

    else
    {
      v19 = v0[16];
      sub_100005F04(v19, v0[15], &qword_1005B3360, &unk_1004C6AA0);
      DecodedLocationNotification.init(handle:contact:location:)();
      sub_100002CE0(v19, &qword_1005B3360, &unk_1004C6AA0);

      v20 = v0[1];
    }

    return v20();
  }
}

uint64_t sub_1003A963C(uint64_t a1)
{
  *(*v1 + 160) = a1;

  return _swift_task_switch(sub_1003A973C, 0, 0);
}

uint64_t sub_1003A973C()
{

  v1 = v0[20];
  v2 = v0[16];
  v3 = sub_1003AB244();

  v4 = type metadata accessor for Handle();
  if ((*(*(v4 - 8) + 48))(v2, 1, v4) == 1 && v3 == 0)
  {
    if (qword_1005A84D0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000A6F0(v8, qword_1005B2570);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Decrypted payload did not contain handle or location.", v11, 2u);
    }

    v12 = v0[16];

    sub_1003A8FD8();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();

    sub_100002CE0(v12, &qword_1005B3360, &unk_1004C6AA0);

    v7 = v0[1];
  }

  else
  {
    v6 = v0[16];
    sub_100005F04(v6, v0[15], &qword_1005B3360, &unk_1004C6AA0);
    DecodedLocationNotification.init(handle:contact:location:)();
    sub_100002CE0(v6, &qword_1005B3360, &unk_1004C6AA0);

    v7 = v0[1];
  }

  return v7();
}

char *sub_1003A999C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v52 = a1;
  v53 = a2;
  v6 = type metadata accessor for SymmetricKey();
  v56 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AES.GCM.SealedBox();
  v54 = *(v9 - 8);
  v55 = v9;
  __chkstk_darwin(v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AES.GCM.Nonce();
  v13 = __chkstk_darwin(v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13);
  v19 = &v43 - v18;
  v20 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v20 != 2)
    {
      goto LABEL_14;
    }

    v22 = *(a3 + 16);
    v21 = *(a3 + 24);
    v23 = __OFSUB__(v21, v22);
    v24 = v21 - v22;
    if (v23)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v24 < 34)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (!v20)
    {
      if (BYTE6(a4) < 0x22uLL)
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }

    if (__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (HIDWORD(a3) - a3 < 34)
    {
LABEL_14:
      v15 = type metadata accessor for CryptoKitError();
      sub_1000095F0(&qword_1005B25A8, &type metadata accessor for CryptoKitError, &protocol conformance descriptor for CryptoKitError);
      swift_allocError();
      (*(*(v15 - 1) + 104))(v27, enum case for CryptoKitError.incorrectParameterSize(_:), v15);
      swift_willThrow();
      return v15;
    }
  }

LABEL_8:
  v47 = v17;
  result = Data._Representation.subscript.getter();
  if (v20 == 2)
  {
    v29 = *(a3 + 16);
    v28 = *(a3 + 24);
    v23 = __OFSUB__(v28, v29);
    v26 = v28 - v29;
    if (!v23)
    {
      goto LABEL_19;
    }

    __break(1u);
LABEL_18:
    v26 = BYTE6(a4);
    goto LABEL_19;
  }

  if (v20 != 1)
  {
    goto LABEL_18;
  }

  LODWORD(v26) = HIDWORD(a3) - a3;
  if (__OFSUB__(HIDWORD(a3), a3))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v26 = v26;
LABEL_19:
  if (__OFSUB__(v26, 16))
  {
    __break(1u);
    goto LABEL_35;
  }

  if (v26 - 16 < 17)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v50 = result;
  v51 = v25;
  result = Data._Representation.subscript.getter();
  v44 = v8;
  v45 = v6;
  v48 = v12;
  v49 = result;
  v46 = v11;
  if (!v20)
  {
LABEL_27:
    v31 = v30;
    goto LABEL_30;
  }

  if (v20 != 2)
  {
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      v31 = v30;
LABEL_30:
      v34 = Data._Representation.subscript.getter();
      v36 = v35;
      v38 = v50;
      v37 = v51;
      v59 = v50;
      v60 = v51;
      sub_100005F6C(v50, v51);
      sub_1000CA210();
      v39 = v61;
      AES.GCM.Nonce.init<A>(data:)();
      if (v39)
      {
        sub_1000049D0(v38, v37);
        sub_1000049D0(v49, v31);
        sub_1000049D0(v34, v36);
      }

      else
      {
        (*(v47 + 16))(v15, v19, v48);
        v59 = v49;
        v60 = v31;
        v57 = v34;
        v58 = v36;
        sub_100005F6C(v49, v31);
        sub_100005F6C(v34, v36);
        AES.GCM.SealedBox.init<A, B>(nonce:ciphertext:tag:)();
        v40 = v48;
        v61 = v19;
        v59 = v52;
        v60 = v53;
        sub_100005F6C(v52, v53);
        v41 = v44;
        SymmetricKey.init<A>(data:)();
        v42 = v46;
        v15 = static AES.GCM.open(_:using:)();
        sub_1000049D0(v34, v36);
        sub_1000049D0(v49, v31);
        sub_1000049D0(v50, v51);
        (*(v56 + 8))(v41, v45);
        (*(v54 + 8))(v42, v55);
        (*(v47 + 8))(v61, v40);
      }

      return v15;
    }

    goto LABEL_40;
  }

  v31 = v30;
  v33 = *(a3 + 16);
  v32 = *(a3 + 24);
  v30 = v32 - v33;
  if (__OFSUB__(v32, v33))
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  result = (v30 - 16);
  if (!__OFSUB__(v30, 16))
  {
    if (v30 >= result)
    {
      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_27;
  }

LABEL_41:
  __break(1u);
  return result;
}

Swift::Int sub_1003A9FD0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1003AA070(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_1003AA0FC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1003AA198@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003AB79C(*a1);
  *a2 = result;
  return result;
}

void sub_1003AA1C8(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7627116;
  v4 = 0xE400000000000000;
  v5 = 1667457384;
  if (*v1 != 2)
  {
    v5 = 29556;
    v4 = 0xE200000000000000;
  }

  if (*v1)
  {
    v3 = 7237484;
    v2 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1003AA224()
{
  v1 = 7627116;
  v2 = 1667457384;
  if (*v0 != 2)
  {
    v2 = 29556;
  }

  if (*v0)
  {
    v1 = 7237484;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1003AA27C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1003AB79C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1003AA2A4(uint64_t a1)
{
  v2 = sub_1003AB9E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003AA2E0(uint64_t a1)
{
  v2 = sub_1003AB9E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1003AA31C(double *a1@<X8>, void *a2@<X0>)
{
  v4 = sub_1003AB7E8(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 1) = v5;
    *(a1 + 2) = v6;
    *(a1 + 3) = v7;
  }
}

uint64_t sub_1003AA34C()
{
  v1 = swift_task_alloc();
  *(v0 + 1456) = v1;
  *v1 = v0;
  v1[1] = sub_1003AA3DC;

  return daemon.getter();
}

uint64_t sub_1003AA3DC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 1464) = a1;

  v3 = swift_task_alloc();
  *(v2 + 1472) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_1000095F0(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000095F0(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_1003AA5B8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003AA5B8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[185] = a1;
  v3[186] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1003AAC3C, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[187] = v5;
    *v5 = v4;
    v5[1] = sub_1003AA748;

    return sub_100245BB8((v3 + 62));
  }
}

uint64_t sub_1003AA748()
{

  return _swift_task_switch(sub_1003AA844, 0, 0);
}

uint64_t sub_1003AA844()
{
  v32 = v0;
  memcpy((v0 + 16), (v0 + 496), 0x1E0uLL);
  if (sub_100033B90(v0 + 16) == 1 || (v1 = *(v0 + 224), *(v0 + 1232) = *(v0 + 208), *(v0 + 1248) = v1, v2 = *(v0 + 256), *(v0 + 1264) = *(v0 + 240), *(v0 + 1280) = v2, v3 = *(v0 + 160), *(v0 + 1168) = *(v0 + 144), *(v0 + 1184) = v3, v4 = *(v0 + 192), *(v0 + 1200) = *(v0 + 176), *(v0 + 1216) = v4, v5 = *(v0 + 128), *(v0 + 1136) = *(v0 + 112), *(v0 + 1152) = v5, sub_100005F04(v0 + 1136, v0 + 1296, &qword_1005A9328, &unk_1004C7F20), sub_100002CE0(v0 + 496, &qword_1005A90D8, &unk_1004C6AB0), v6 = *(v0 + 1248), *(v0 + 1072) = *(v0 + 1232), *(v0 + 1088) = v6, v7 = *(v0 + 1280), *(v0 + 1104) = *(v0 + 1264), *(v0 + 1120) = v7, v8 = *(v0 + 1184), *(v0 + 1008) = *(v0 + 1168), *(v0 + 1024) = v8, v9 = *(v0 + 1216), *(v0 + 1040) = *(v0 + 1200), *(v0 + 1056) = v9, v10 = *(v0 + 1152), *(v0 + 976) = *(v0 + 1136), *(v0 + 992) = v10, sub_10002D650(v0 + 976) == 1))
  {
    if (qword_1005A84D0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000A6F0(v11, qword_1005B2570);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "No decryption key available in settings", v14, 2u);
    }

LABEL_8:
    sub_1003A8FD8();
    swift_allocError();
    *v15 = 1;
    swift_willThrow();

    v16 = *(v0 + 8);

    return v16();
  }

  v18 = *(v0 + 1104);
  v19 = *(v0 + 1112);

  sub_100002CE0(v0 + 1136, &qword_1005A9328, &unk_1004C7F20);
  v20 = Data.init(base64Encoded:options:)();
  if (v21 >> 60 == 15)
  {
    if (qword_1005A84D0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000A6F0(v22, qword_1005B2570);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v31 = v26;
      *v25 = 136380675;
      v27 = sub_10000D01C(v18, v19, &v31);

      *(v25 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v23, v24, "Token not valid base64 string, throwing an error. token: %{private}s", v25, 0xCu);
      sub_100004984(v26);
    }

    else
    {
    }

    goto LABEL_8;
  }

  v28 = v20;
  v29 = v21;

  v30 = *(v0 + 8);

  return v30(v28, v29);
}

uint64_t sub_1003AAC3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003AACA0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v9 - 8);
  v10 = sub_1003A999C(a3, a4, a1, a2);
  if (v4)
  {
    v12 = v4;
LABEL_26:
    if (qword_1005A84D0 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_10000A6F0(v35, qword_1005B2570);
    swift_errorRetain();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v46[0] = v39;
      *v38 = 136315138;
      swift_getErrorValue();
      v40 = Error.localizedDescription.getter();
      v42 = sub_10000D01C(v40, v41, v46);

      *(v38 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v36, v37, "Failed to decrypt payload: %s", v38, 0xCu);
      sub_100004984(v39);
    }

    sub_1003A8FD8();
    swift_allocError();
    *v43 = 0;
    swift_willThrow();

    return v12;
  }

  v13 = v10;
  v14 = v11;
  v15 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v46[0] = 0;
  v17 = [v15 JSONObjectWithData:isa options:0 error:v46];

  if (!v17)
  {
    v23 = v46[0];
    v12 = _convertNSErrorToError(_:)();

LABEL_25:
    swift_willThrow();
    sub_1000049D0(v13, v14);
    goto LABEL_26;
  }

  v18 = v46[0];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10004B564(&qword_1005B25A0, &qword_1004D72F8);
  if (!swift_dynamicCast())
  {
LABEL_13:
    static String.Encoding.utf8.getter();
    v24 = String.init(data:encoding:)();
    if (v25)
    {
      v26 = v24;
    }

    else
    {
      v26 = 0x3E7972616E69623CLL;
    }

    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = 0xE800000000000000;
    }

    if (qword_1005A84D0 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_10000A6F0(v28, qword_1005B2570);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v46[0] = v32;
      *v31 = 136380675;
      v33 = sub_10000D01C(v26, v27, v46);

      *(v31 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v29, v30, "Failed to serialize JSON from decoded payload: %{private}s", v31, 0xCu);
      sub_100004984(v32);
    }

    else
    {
    }

    sub_1003A8FD8();
    v12 = swift_allocError();
    *v34 = 0;
    goto LABEL_25;
  }

  if (!*(v45 + 16))
  {

    goto LABEL_13;
  }

  v12 = *(v45 + 32);

  if (qword_1005A84D0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000A6F0(v19, qword_1005B2570);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Successfully decrypted payload.", v22, 2u);
  }

  sub_1000049D0(v13, v14);

  return v12;
}

id sub_1003AB244()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  v4 = objc_opt_self();
  sub_10004B564(&qword_1005A9268, &unk_1004D38E0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v28[0] = 0;
  v6 = [v4 dataWithJSONObject:isa options:0 error:v28];

  v7 = v28[0];
  if (v6)
  {
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_1003AB62C();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v20 = v28[0];
    v21 = v28[1];
    v22 = v28[2];
    Date.init(timeIntervalSince1970:)();
    v23 = objc_allocWithZone(CLLocation);
    v24 = Date._bridgeToObjectiveC()().super.isa;
    v25 = [v23 initWithCoordinate:v24 altitude:*&v20 horizontalAccuracy:*&v21 verticalAccuracy:0.0 timestamp:{*&v22, 0.0}];

    sub_1000049D0(v8, v10);
    (*(v1 + 8))(v3, v0);
    return v25;
  }

  else
  {
    v11 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1005A84D0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000A6F0(v12, qword_1005B2570);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v28[0] = v16;
      *v15 = 136315138;
      swift_getErrorValue();
      v17 = Error.localizedDescription.getter();
      v19 = sub_10000D01C(v17, v18, v28);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "Could not serialize location from payload. Error: %s", v15, 0xCu);
      sub_100004984(v16);
    }

    else
    {
    }

    return 0;
  }
}

unint64_t sub_1003AB62C()
{
  result = qword_1005B2598;
  if (!qword_1005B2598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B2598);
  }

  return result;
}

uint64_t sub_1003AB680(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003AB6A0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

unint64_t sub_1003AB6F4()
{
  result = qword_1005B25B0;
  if (!qword_1005B25B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B25B0);
  }

  return result;
}

unint64_t sub_1003AB748()
{
  result = qword_1005B25B8;
  if (!qword_1005B25B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B25B8);
  }

  return result;
}

unint64_t sub_1003AB79C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10058BE30, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

double sub_1003AB7E8(void *a1)
{
  v2 = sub_10004B564(&qword_1005B25C0, &qword_1004D7480);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9[-v4];
  sub_100011AEC(a1, a1[3]);
  sub_1003AB9E4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v9[15] = 0;
  KeyedDecodingContainer.decode(_:forKey:)();
  v7 = v6;
  v9[14] = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v9[13] = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v9[12] = 3;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_100004984(a1);
  return v7;
}

unint64_t sub_1003AB9E4()
{
  result = qword_1005B25C8;
  if (!qword_1005B25C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B25C8);
  }

  return result;
}

unint64_t sub_1003ABA5C()
{
  result = qword_1005B25D0;
  if (!qword_1005B25D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B25D0);
  }

  return result;
}

unint64_t sub_1003ABAB4()
{
  result = qword_1005B25D8;
  if (!qword_1005B25D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B25D8);
  }

  return result;
}

unint64_t sub_1003ABB0C()
{
  result = qword_1005B25E0;
  if (!qword_1005B25E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B25E0);
  }

  return result;
}

uint64_t sub_1003ABB60()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0B60);
  v1 = sub_10000A6F0(v0, qword_1005E0B60);
  if (qword_1005A84F0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005E0B90);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003ABC28(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = *v1;
  MyInterface = type metadata accessor for MicroFindMyInterface();
  v2[8] = MyInterface;
  v4 = *(MyInterface - 8);
  v2[9] = v4;
  v2[10] = *(v4 + 64);
  v2[11] = swift_task_alloc();
  v2[12] = type metadata accessor for OS_dispatch_queue.Attributes();
  v2[13] = swift_task_alloc();
  type metadata accessor for DispatchQoS();
  v2[14] = swift_task_alloc();
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_1003ABDD0, 0, 0);
}

uint64_t sub_1003ABDD0()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[9];
  v5 = v0[6];
  v15 = v0[5];
  v16 = v0[8];
  swift_defaultActor_initialize();
  *(v5 + 112) = 0;
  *(v5 + OBJC_IVAR____TtC13findmylocated24BystanderLocationMonitor_locationManager) = 0;
  v6 = OBJC_IVAR____TtC13findmylocated24BystanderLocationMonitor_cachedLatestLocation;
  v7 = type metadata accessor for Location();
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  (*(v1 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v3);
  static DispatchQoS.unspecified.getter();
  v0[4] = _swiftEmptyArrayStorage;
  sub_1003AE4F8(&qword_1005A8670, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10004B564(&unk_1005AB400, &unk_1004C0BF0);
  sub_10004B5AC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v0[18] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v8 = OBJC_IVAR____TtC13findmylocated24BystanderLocationMonitor_interface;
  v9 = *(v4 + 16);
  v0[19] = v9;
  v0[20] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v5 + v8, v15, v16);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  type metadata accessor for PushTokenMonitor();
  swift_allocObject();
  v13 = swift_task_alloc();
  v0[21] = v13;
  *v13 = v0;
  v13[1] = sub_1003AC074;

  return sub_1003C3B48(0x69746375646F7270, 0xEA00000000006E6FLL, v10, v12);
}

uint64_t sub_1003AC074(uint64_t a1)
{
  *(*v1 + 176) = a1;

  return _swift_task_switch(sub_1003AC174, 0, 0);
}

uint64_t sub_1003AC174()
{
  v1 = *(v0 + 48);
  *(v1 + OBJC_IVAR____TtC13findmylocated24BystanderLocationMonitor_pushTokenMonitor) = *(v0 + 176);
  return _swift_task_switch(sub_1003AC1A0, v1, 0);
}

uint64_t sub_1003AC1A0()
{
  v13 = *(v0 + 144);
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  (*(v0 + 152))(v1, *(v0 + 40), v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = (v2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  *(v0 + 184) = v9;
  (*(v4 + 32))(v9 + v7, v1, v3);
  *(v9 + v8) = v5;
  *(v9 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)) = v6;
  v10 = type metadata accessor for BystanderLocationMonitor.LocationDelegate();
  *(v0 + 192) = v10;
  *(v0 + 200) = objc_allocWithZone(v10);
  v11 = v13;

  return _swift_task_switch(sub_1003AC2D0, 0, 0);
}

uint64_t sub_1003AC2D0()
{
  receiver = v0[12].receiver;
  super_class = v0[12].super_class;
  v3 = v0[11].super_class;
  *(super_class + OBJC_IVAR____TtCC13findmylocated24BystanderLocationMonitorP33_867EA14A4684E78C09586D03D177D5B816LocationDelegate_queue) = v0[9].receiver;
  v4 = (super_class + OBJC_IVAR____TtCC13findmylocated24BystanderLocationMonitorP33_867EA14A4684E78C09586D03D177D5B816LocationDelegate_callback);
  *v4 = &unk_1004D76D8;
  v4[1] = v3;
  v0[1].receiver = super_class;
  v0[1].super_class = receiver;
  v0[13].receiver = objc_msgSendSuper2(v0 + 1, "init");
  sub_1003AE4F8(&qword_1005B27B0, type metadata accessor for BystanderLocationMonitor, &unk_1004D7664);
  swift_getObjectType();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003AC3D8, v6, v5);
}

uint64_t sub_1003AC3D8()
{
  v1 = v0[26];
  v2 = v0[18];
  v3 = v0[6];
  v4 = *(v3 + 112);
  *(v3 + 112) = v1;
  v5 = v1;

  v6 = objc_allocWithZone(CLLocationManager);
  v7 = v2;
  v8 = String._bridgeToObjectiveC()();
  v9 = [v6 initWithEffectiveBundlePath:v8 delegate:v5 onQueue:v7];

  v10 = v0[18];
  v12 = v0[8];
  v11 = v0[9];
  v13 = v0[5];
  v14 = v0[6];
  if (v9)
  {
    v15 = *(v14 + OBJC_IVAR____TtC13findmylocated24BystanderLocationMonitor_locationManager);
    *(v14 + OBJC_IVAR____TtC13findmylocated24BystanderLocationMonitor_locationManager) = v9;
    v16 = v9;

    [v16 setDesiredAccuracy:kCLLocationAccuracyBystander];
    (*(v11 + 8))(v13, v12);

    v17 = v0[1];
    v18 = v0[6];

    return v17(v18);
  }

  else
  {
    v20 = type metadata accessor for GenericError();
    sub_1003AE4F8(&unk_1005B27C0, &type metadata accessor for GenericError, &protocol conformance descriptor for GenericError);
    swift_allocError();
    *v21 = 0xD000000000000023;
    v21[1] = 0x80000001004E9040;
    (*(*(v20 - 8) + 104))(v21, enum case for GenericError.error(_:), v20);
    swift_willThrow();

    (*(v11 + 8))(v13, v12);

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_1003AC6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  sub_10004B564(&qword_1005B27B8, &unk_1004D7B60);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = type metadata accessor for Location();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_1003AC820, 0, 0);
}

uint64_t sub_1003AC820(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[5];
  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    v4[16] = v6;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4[16] = v6;
    if (v6)
    {
LABEL_3:
      if (v6 < 1)
      {
        __break(1u);
      }

      else
      {
        v4[17] = OBJC_IVAR____TtC13findmylocated24BystanderLocationMonitor_cachedLatestLocation;
        a1.n128_u64[0] = 138543362;
        v26 = a1;
        v4[18] = 0;
        v7 = v4[5];
        if ((v7 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v8 = *(v7 + 32);
        }

        v9 = v8;
        v4[19] = v8;
        v10 = v4[14];
        v11 = v4[15];
        v12 = v4[12];
        v13 = v4[13];
        v14 = v4[10];
        v15 = v4[11];
        v16 = v4[9];
        [v8 coordinate];
        [v9 coordinate];
        [v9 horizontalAccuracy];
        v17 = [v9 timestamp];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        Date.timeIntervalSinceReferenceDate.getter();
        (*(v15 + 8))(v12, v14);
        Location.init(latitude:longitude:horizontalAccuracy:timestamp:)();
        v18 = *(v10 + 16);
        v18(v16, v11, v13);
        v19 = *(v10 + 56);
        v19(v16, 0, 1, v13);
        MicroFindMyInterface.setLocation(location:)();
        v4[20] = 0;
        v20 = v4[15];
        v21 = v4[13];
        v22 = v4[8];
        v23 = v4[7];
        sub_100002CE0(v4[9], &qword_1005B27B8, &unk_1004D7B60);
        v18(v22, v20, v21);
        v19(v22, 0, 1, v21);
        v6 = sub_1003ACC88;
        a3 = v23;
        a4 = 0;
      }

      return _swift_task_switch(v6, a3, a4);
    }
  }

  v24 = v4[1];

  return v24();
}

uint64_t sub_1003ACC88()
{
  v1 = v0[17];
  v3 = v0[7];
  v2 = v0[8];
  swift_beginAccess();
  sub_1003AE540(v2, v3 + v1);
  swift_endAccess();
  sub_100002CE0(v2, &qword_1005B27B8, &unk_1004D7B60);

  return _swift_task_switch(sub_1003ACD38, 0, 0);
}

uint64_t sub_1003ACD38()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);
  v3 = *(v0 + 144) + 1;
  (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
  if (v3 == v2)
  {
LABEL_2:

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    *&v4 = 138543362;
    v33 = v4;
    while (1)
    {
      v12 = *(v0 + 144) + 1;
      *(v0 + 144) = v12;
      v13 = *(v0 + 40);
      v34 = v1;
      v14 = (v13 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v13 + 8 * v12 + 32);
      v15 = v14;
      *(v0 + 152) = v14;
      v17 = *(v0 + 112);
      v16 = *(v0 + 120);
      v18 = *(v0 + 96);
      v19 = *(v0 + 104);
      v20 = *(v0 + 80);
      v21 = *(v0 + 88);
      v22 = *(v0 + 72);
      [v14 coordinate];
      [v15 coordinate];
      [v15 horizontalAccuracy];
      v23 = [v15 timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      Date.timeIntervalSinceReferenceDate.getter();
      (*(v21 + 8))(v18, v20);
      Location.init(latitude:longitude:horizontalAccuracy:timestamp:)();
      v24 = *(v17 + 16);
      v24(v22, v16, v19);
      v25 = *(v17 + 56);
      v25(v22, 0, 1, v19);
      MicroFindMyInterface.setLocation(location:)();
      *(v0 + 160) = v34;
      if (!v34)
      {
        break;
      }

      sub_100002CE0(*(v0 + 72), &qword_1005B27B8, &unk_1004D7B60);
      if (qword_1005A84D8 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_10000A6F0(v26, qword_1005E0B60);
      swift_errorRetain();
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        *v7 = v33;
        swift_errorRetain();
        v9 = _swift_stdlib_bridgeErrorToNSError();
        *(v7 + 4) = v9;
        *v8 = v9;
        _os_log_impl(&_mh_execute_header, v27, v28, "Error from setLocation: %{public}@", v7, 0xCu);
        sub_100002CE0(v8, &qword_1005A9670, &unk_1004C2480);
      }

      else
      {
      }

      v10 = *(v0 + 128);
      v11 = *(v0 + 144) + 1;
      (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
      v1 = 0;
      if (v11 == v10)
      {
        goto LABEL_2;
      }
    }

    v29 = *(v0 + 120);
    v30 = *(v0 + 104);
    v31 = *(v0 + 64);
    v32 = *(v0 + 56);
    sub_100002CE0(*(v0 + 72), &qword_1005B27B8, &unk_1004D7B60);
    v24(v31, v29, v30);
    v25(v31, 0, 1, v30);

    return _swift_task_switch(sub_1003ACC88, v32, 0);
  }
}

uint64_t sub_1003AD188()
{
  v1[5] = v0;
  v2 = type metadata accessor for ContinuousClock();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_10004B564(&qword_1005B27A0, &qword_1004D76A8);
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v4 = sub_10004B564(&qword_1005B27A8, &unk_1004D76B0);
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_1003AD318, v0, 0);
}

uint64_t sub_1003AD318()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC13findmylocated24BystanderLocationMonitor_pushTokenMonitor);
  *(v0 + 120) = v1;
  return _swift_task_switch(sub_1003AD344, v1, 0);
}

uint64_t sub_1003AD344()
{
  v1 = *(v0 + 40);
  sub_1003C3E0C();

  return _swift_task_switch(sub_1003AD3B4, v1, 0);
}

uint64_t sub_1003AD3B4()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = sub_1003AE4F8(&qword_1005B27B0, type metadata accessor for BystanderLocationMonitor, &unk_1004D7664);
  v5 = OBJC_IVAR____TtC13findmylocated24BystanderLocationMonitor_interface;
  v0[16] = v4;
  v0[17] = v5;
  v0[18] = 0;
  v6 = v0[5];
  v7 = swift_task_alloc();
  v0[19] = v7;
  *v7 = v0;
  v7[1] = sub_1003AD4DC;
  v8 = v0[12];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, v6, v4, v8);
}

uint64_t sub_1003AD4DC()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_1003AD5EC, v1, 0);
}

uint64_t sub_1003AD5EC()
{
  v25 = v0;
  v1 = v0 + 2;
  if (v0[2])
  {
    v3 = v0[3];
    v2 = v0[4];

    if (qword_1005A84D8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A6F0(v4, qword_1005E0B60);
    sub_100005F6C(v3, v2);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    sub_1000049D0(v3, v2);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v24 = v8;
      *v7 = 136315138;
      v9 = Data.hexString.getter();
      v11 = sub_10000D01C(v9, v10, &v24);

      *(v7 + 4) = v11;
      v1 = v0 + 2;
      _os_log_impl(&_mh_execute_header, v5, v6, "publicToken: %s", v7, 0xCu);
      sub_100004984(v8);
    }

    v12 = v0[18];
    MicroFindMyInterface.set(pushToken:)();
    if (v12)
    {
      swift_errorRetain();
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v15 = 138543362;
        swift_errorRetain();
        v17 = _swift_stdlib_bridgeErrorToNSError();
        *(v15 + 4) = v17;
        *v16 = v17;
        _os_log_impl(&_mh_execute_header, v13, v14, "Error from set(pushToken:) %{public}@", v15, 0xCu);
        sub_100002CE0(v16, &qword_1005A9670, &unk_1004C2480);

        sub_1000049D0(v3, v2);
      }

      else
      {
        sub_1000049D0(v3, v2);
      }
    }

    else
    {
      sub_1000049D0(v3, v2);
    }

    v0[18] = 0;
    v20 = v0[16];
    v21 = v0[5];
    v22 = swift_task_alloc();
    v0[19] = v22;
    *v22 = v0;
    v22[1] = sub_1003AD4DC;
    v23 = v0[12];

    return AsyncStream.Iterator.next(isolation:)(v1, v21, v20, v23);
  }

  else
  {
    (*(v0[13] + 8))(v0[14], v0[12]);
    static Clock<>.continuous.getter();
    v18 = swift_task_alloc();
    v0[20] = v18;
    *v18 = v0;
    v18[1] = sub_1003ADA30;

    return sub_100291918(0xC5D1494C589C0000, 116415321, 0, 0, 1);
  }
}

uint64_t sub_1003ADA30()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *v1;

  v5 = v2[8];
  v6 = v2[7];
  v7 = v2[6];
  if (v0)
  {
    v8 = v3[5];

    (*(v6 + 8))(v5, v7);

    return _swift_task_switch(sub_1003ADC14, v8, 0);
  }

  else
  {
    (*(v6 + 8))(v5, v7);

    v9 = v4[1];

    return v9();
  }
}

uint64_t sub_1003ADC14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003ADC8C()
{
  v1 = OBJC_IVAR____TtC13findmylocated24BystanderLocationMonitor_interface;
  MyInterface = type metadata accessor for MicroFindMyInterface();
  (*(*(MyInterface - 8) + 8))(v0 + v1, MyInterface);

  sub_100002CE0(v0 + OBJC_IVAR____TtC13findmylocated24BystanderLocationMonitor_cachedLatestLocation, &qword_1005B27B8, &unk_1004D7B60);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for BystanderLocationMonitor(uint64_t a1)
{
  result = qword_1005B2638;
  if (!qword_1005B2638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003ADDA0(uint64_t a1)
{
  type metadata accessor for MicroFindMyInterface();
  if (v1 <= 0x3F)
  {
    sub_1003ADE8C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1003ADE8C(uint64_t a1)
{
  if (!qword_1005B2648)
  {
    type metadata accessor for Location();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1005B2648);
    }
  }
}

uint64_t sub_1003ADEE4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1003ADF04, 0, 0);
}

uint64_t sub_1003ADF04()
{
  v4 = (*(v0[2] + OBJC_IVAR____TtCC13findmylocated24BystanderLocationMonitorP33_867EA14A4684E78C09586D03D177D5B816LocationDelegate_callback) + **(v0[2] + OBJC_IVAR____TtCC13findmylocated24BystanderLocationMonitorP33_867EA14A4684E78C09586D03D177D5B816LocationDelegate_callback));
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1002F607C;
  v2 = v0[3];

  return v4(v2);
}

void sub_1003AE1F4(void *a1)
{
  if (qword_1005A84F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B90);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, oslog, v4, "didVisit: %@", v5, 0xCu);
    sub_100002CE0(v6, &qword_1005A9670, &unk_1004C2480);
  }
}

uint64_t sub_1003AE340()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100003690;

  return sub_1003ADEE4(v2, v3);
}

uint64_t sub_1003AE3D8(uint64_t a1)
{
  v4 = *(type metadata accessor for MicroFindMyInterface() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_1003AC6BC(a1, v1 + v5, v6);
}

uint64_t sub_1003AE4F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003AE540(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005B27B8, &unk_1004D7B60);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003AE5B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _HashTable.startBucket.getter();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_1003B0818(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = type metadata accessor for Device();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_1003AE66C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _HashTable.startBucket.getter();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_1003B0920(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = type metadata accessor for Handle();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_1003AE728(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = type metadata accessor for UUID();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  sub_10004B564(&qword_1005B29F0, &qword_1004D8830);
  v2[14] = swift_task_alloc();
  v4 = type metadata accessor for Device();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[18] = v5;
  *v5 = v2;
  v5[1] = sub_1003AE8AC;

  return daemon.getter();
}

uint64_t sub_1003AE8AC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 152) = a1;

  v3 = swift_task_alloc();
  *(v2 + 160) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for LocalMessagingService();
  v6 = sub_1003B08D8(&unk_1005AFA50, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1003B08D8(&qword_1005AD520, 255, type metadata accessor for LocalMessagingService, &unk_1004D5468);
  *v3 = v9;
  v3[1] = sub_1003AEA90;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003AEA90(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v5 = sub_1003AF448;
  }

  else
  {

    v5 = sub_1003AEBD0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1003AEBD0()
{
  v1 = v0[10];
  v2 = v0[21];
  if (*(v1 + 128))
  {
    sub_10004B564(&qword_1005B2A00, &unk_1004D77D0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1004C1900;
    *(v3 + 32) = *(v1 + 112);

    AsyncStreamProvider.stream(initialEvents:)();

    v4 = v0[1];

    return v4();
  }

  else
  {
    v0[23] = type metadata accessor for CellularWatchConnectionMonitor.IDSHelper();
    v6 = swift_allocObject();
    v0[24] = v6;
    *(v6 + 16) = v1;
    *(v1 + 128) = 1;
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    *(v1 + 136) = v7;
    swift_retain_n();

    return _swift_task_switch(sub_1003AED74, v2, 0);
  }
}

uint64_t sub_1003AED74()
{
  *(v0 + 200) = *(*(v0 + 168) + 128);
  sub_10004B564(&qword_1005AD518, &qword_1004D54F0);
  sub_1002F46D8();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003AEE10, v2, v1);
}

uint64_t sub_1003AEE10()
{
  v1 = *(v0 + 80);
  dispatch thunk of LocalMessaging.connectedDevice.getter();

  return _swift_task_switch(sub_1003AEE80, v1, 0);
}

uint64_t sub_1003AEE80()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100002CE0(v3, &qword_1005B29F0, &qword_1004D8830);
    goto LABEL_3;
  }

  v11 = v0[22];
  (*(v2 + 32))(v0[17], v3, v1);
  v12 = sub_1003AF56C();
  if (!v11)
  {
    if (v12)
    {
      sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1004C1900;
      v15 = sub_1003AF878();
      v17 = v0[10];
      *(v14 + 32) = v15;
      *(v14 + 40) = v16;
      v18 = *(v17 + 112);
      *(v17 + 112) = v14;
      v19 = sub_10022BB24(v18, v14);

      v21 = v0[16];
      v20 = v0[17];
      v22 = v0[15];
      if (v19)
      {

        (*(v21 + 8))(v20, v22);
      }

      else
      {
        v0[8] = v14;
        AsyncStreamProvider.yield(value:transaction:)();
        (*(v21 + 8))(v20, v22);
      }

LABEL_5:
      v7 = v0[24];
      v0[5] = v0[23];
      v0[6] = sub_1003B08D8(&qword_1005B29F8, 255, type metadata accessor for CellularWatchConnectionMonitor.IDSHelper, &unk_1004D7768);
      v0[2] = v7;

      v8 = swift_task_alloc();
      v0[26] = v8;
      *v8 = v0;
      v8[1] = sub_1003AF20C;
      v9 = v0[13];

      return sub_1002F3E48(v9, (v0 + 2));
    }

    (*(v0[16] + 8))(v0[17], v0[15]);
LABEL_3:
    v4 = v0[10];
    v5 = *(v4 + 112);
    *(v4 + 112) = _swiftEmptyArrayStorage;
    v6 = sub_10022BB24(v5, _swiftEmptyArrayStorage);

    if ((v6 & 1) == 0)
    {
      v0[7] = _swiftEmptyArrayStorage;
      AsyncStreamProvider.yield(value:transaction:)();
    }

    goto LABEL_5;
  }

  (*(v0[16] + 8))(v0[17], v0[15]);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1003AF20C()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = v2[10];
    v4 = sub_1003AF4D0;
  }

  else
  {
    v5 = v2[10];
    (*(v2[12] + 8))(v2[13], v2[11]);
    sub_100004984(v2 + 2);
    v4 = sub_1003AF348;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003AF348()
{

  v1 = *(v0 + 80);
  sub_10004B564(&qword_1005B2A00, &unk_1004D77D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004C1900;
  *(v2 + 32) = *(v1 + 112);

  AsyncStreamProvider.stream(initialEvents:)();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1003AF448()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003AF4D0()
{

  sub_100004984((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003AF56C()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 getActiveDevice];

  if (v1)
  {
    v2 = String._bridgeToObjectiveC()();
    v3 = [v1 valueForProperty:v2];

    if (v3)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
    }

    v14 = v12;
    v15 = v13;
    if (*(&v13 + 1))
    {
      if (swift_dynamicCast())
      {
        if (v10 == Device.uniqueIDOverride.getter() && v11 == v4)
        {

          goto LABEL_12;
        }

        v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v5)
        {
LABEL_12:
          if ([v1 valueForProperty:PDRDevicePropertyKeyCellularEnabled])
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {

            v12 = 0u;
            v13 = 0u;
          }

          v14 = v12;
          v15 = v13;
          if (*(&v13 + 1))
          {
            if (swift_dynamicCast())
            {
              v8 = v10;
              return v8 & 1;
            }
          }

          else
          {
            sub_100002CE0(&v14, &qword_1005A9680, &qword_1004C32A0);
          }

          v8 = 0;
          return v8 & 1;
        }
      }
    }

    else
    {

      sub_100002CE0(&v14, &qword_1005A9680, &qword_1004C32A0);
    }
  }

  v6 = type metadata accessor for GenericError();
  sub_1003B08D8(&unk_1005B27C0, 255, &type metadata accessor for GenericError, &protocol conformance descriptor for GenericError);
  swift_allocError();
  *v7 = 0xD000000000000011;
  v7[1] = 0x80000001004E9160;
  (*(*(v6 - 8) + 104))(v7, enum case for GenericError.error(_:), v6);
  swift_willThrow();
  return v8 & 1;
}

uint64_t sub_1003AF878()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 getActiveDevice];

  if (!v1)
  {
    goto LABEL_16;
  }

  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 valueForProperty:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;
  if (!*(&v12 + 1))
  {

LABEL_11:
    sub_100002CE0(&v13, &qword_1005A9680, &qword_1004C32A0);
LABEL_16:
    v6 = type metadata accessor for GenericError();
    sub_1003B08D8(&unk_1005B27C0, 255, &type metadata accessor for GenericError, &protocol conformance descriptor for GenericError);
    swift_allocError();
    *v7 = 0xD000000000000011;
    v7[1] = 0x80000001004E9160;
    (*(*(v6 - 8) + 104))(v7, enum case for GenericError.error(_:), v6);
    return swift_willThrow();
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  if (v9 == Device.uniqueIDOverride.getter() && v10 == v4)
  {

    goto LABEL_13;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v5 & 1) == 0)
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_13:
  if ([v1 valueForProperty:PDRDevicePropertyKeyUDID])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {

    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;
  if (!*(&v12 + 1))
  {
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  return v9;
}

uint64_t sub_1003AFB60()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1003AFBCC()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005B27D0);
  v1 = sub_10000A6F0(v0, qword_1005B27D0);
  if (qword_1005A84F0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005E0B90);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003AFC94(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return _swift_task_switch(sub_1003AFCDC, 0, 0);
}

uint64_t sub_1003AFCDC()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = *(v0[3] + 16);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[6] = v5;
  v6 = type metadata accessor for CellularWatchConnectionMonitor();
  v8 = sub_1003B08D8(&qword_1005B29E8, v7, type metadata accessor for CellularWatchConnectionMonitor, &unk_1004D7784);
  *v5 = v0;
  v5[1] = sub_1003AFE04;

  return withinActor<A, B>(_:block:)(v8, v3, &unk_1004D77C0, v4, v6, &type metadata for () + 1, v8);
}

uint64_t sub_1003AFE04()
{

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_1000161BC, 0, 0);
  }
}

uint64_t sub_1003AFF40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  sub_10004B564(&qword_1005B29F0, &qword_1004D8830);
  v3[6] = swift_task_alloc();
  v5 = type metadata accessor for Device();
  v3[7] = v5;
  v3[8] = *(v5 - 8);
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_1003B003C, a2, 0);
}

uint64_t sub_1003B003C()
{
  v40 = v0;
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  sub_1003AE5B0(v0[5], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100002CE0(v0[6], &qword_1005B29F0, &qword_1004D8830);
LABEL_3:
    v4 = v0[4];
    v5 = *(v4 + 112);
    *(v4 + 112) = _swiftEmptyArrayStorage;
    v6 = sub_10022BB24(v5, _swiftEmptyArrayStorage);

    if ((v6 & 1) == 0)
    {
      v0[2] = _swiftEmptyArrayStorage;
      AsyncStreamProvider.yield(value:transaction:)();
    }

    if (qword_1005A84E0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000A6F0(v7, qword_1005B27D0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v39[0] = v11;
      *v10 = 136315138;
      v12 = Array.description.getter();
      v14 = sub_10000D01C(v12, v13, v39);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "connectedDevicesChanged: %s", v10, 0xCu);
      sub_100004984(v11);
    }

    goto LABEL_11;
  }

  (*(v0[8] + 32))(v0[9], v0[6], v0[7]);
  v15 = sub_1003AF56C();
  if ((v15 & 1) == 0)
  {
    (*(v0[8] + 8))(v0[9], v0[7]);
    goto LABEL_3;
  }

  v18 = sub_1003AF878();
  v20 = v19;
  v21 = v0[4];
  sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1004C1900;
  *(v22 + 32) = v18;
  *(v22 + 40) = v20;
  v23 = *(v21 + 112);
  *(v21 + 112) = v22;
  LOBYTE(v21) = sub_10022BB24(v23, v22);

  if ((v21 & 1) == 0)
  {
    v0[3] = v22;
    AsyncStreamProvider.yield(value:transaction:)();
  }

  if (qword_1005A84E0 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_10000A6F0(v24, qword_1005B27D0);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  v27 = os_log_type_enabled(v25, v26);
  v28 = v0[8];
  v29 = v0[9];
  v30 = v0[7];
  if (v27)
  {
    v38 = v0[9];
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v39[0] = v32;
    *v31 = 136315138;
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1004C1900;
    *(v33 + 32) = v18;
    *(v33 + 40) = v20;
    v34 = Array.description.getter();
    v36 = v35;

    v37 = sub_10000D01C(v34, v36, v39);

    *(v31 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v25, v26, "connectedDevicesChanged: %s", v31, 0xCu);
    sub_100004984(v32);

    (*(v28 + 8))(v38, v30);
  }

  else
  {

    (*(v28 + 8))(v29, v30);
  }

LABEL_11:

  v16 = v0[1];

  return v16();
}

unint64_t sub_1003B0678()
{
  result = qword_1005B29A0;
  if (!qword_1005B29A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B29A0);
  }

  return result;
}

uint64_t sub_1003B06CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100003690;

  return sub_1003AFC94(a1);
}

uint64_t sub_1003B0764(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100003690;

  return sub_1003AFF40(a1, a2, v6);
}

uint64_t sub_1003B0818@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = type metadata accessor for Device();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

uint64_t sub_1003B08D8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1003B0920@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = type metadata accessor for Handle();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

uint64_t sub_1003B09E0()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0B78);
  v1 = sub_10000A6F0(v0, qword_1005E0B78);
  if (qword_1005A84F0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005E0B90);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003B0AA8()
{
  v1[2] = v0;
  MyInterface = type metadata accessor for MicroFindMyInterface();
  v1[3] = MyInterface;
  v1[4] = *(MyInterface - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_1003B0B74, 0, 0);
}

uint64_t sub_1003B0B74()
{
  v1 = v0[2];
  swift_defaultActor_initialize();
  *(v1 + 112) = 0xD000000000000012;
  *(v1 + 120) = 0x80000001004D7860;
  *(v1 + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_sequence) = 0;
  v2 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_findMyId;
  v0[7] = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_findMyId;
  v3 = (v1 + v2);
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_encryptedLocations;
  v0[8] = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_encryptedLocations;
  *(v1 + v4) = _swiftEmptyDictionarySingleton;
  v5 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_streamProvider;
  v0[9] = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_streamProvider;
  sub_10004B564(&qword_1005B2E20, &qword_1004D7CF8);
  swift_allocObject();
  *(v1 + v5) = AsyncStreamProvider.init()();
  v6 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_sharingKeyStreamProvider;
  v0[10] = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_sharingKeyStreamProvider;
  *(v1 + v6) = 0;
  v7 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_accountStream;
  v0[11] = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_accountStream;
  v8 = sub_10004B564(&unk_1005AFB18, &qword_1004D12E8);
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_configStream;
  v0[12] = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_configStream;
  v10 = sub_10004B564(&unk_1005B2AB8, &unk_1004D7950);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_cellularWatchConnectionNonitor;
  v0[13] = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_cellularWatchConnectionNonitor;
  type metadata accessor for CellularWatchConnectionMonitor();
  v12 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v12 + 112) = _swiftEmptyArrayStorage;
  sub_10004B564(&qword_1005B2E28, &unk_1004D7D00);
  swift_allocObject();
  *(v12 + 120) = AsyncStreamProvider.init()();
  *(v12 + 128) = 0;
  *(v12 + 136) = 0;
  *(v1 + v11) = v12;
  *(v1 + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_connectedWatches) = _swiftEmptyArrayStorage;
  MicroFindMyInterface.init()();
  v13 = v0[5];
  v14 = v0[3];
  v15 = v0[4];
  v16 = v0[2];
  v17 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_interface;
  (*(v15 + 32))(v16 + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_interface, v0[6], v14);
  (*(v15 + 16))(v13, v16 + v17, v14);
  type metadata accessor for BystanderLocationMonitor(0);
  swift_allocObject();
  v18 = swift_task_alloc();
  v0[14] = v18;
  *v18 = v0;
  v18[1] = sub_1003B0F9C;
  v19 = v0[5];

  return sub_1003ABC28(v19);
}

uint64_t sub_1003B0F9C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = sub_1003B1148;
  }

  else
  {
    *(v4 + 128) = a1;
    v5 = sub_1003B10C4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003B10C4()
{
  *(v0[2] + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_locationMonitor) = v0[16];

  v1 = v0[1];
  v2 = v0[2];

  return v1(v2);
}

uint64_t sub_1003B1148()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  (*(v1 + 8))(v3 + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_interface, v2);
  v4 = v0[12];
  v5 = v0[11];
  v6 = v0[2];

  sub_100002CE0(v6 + v5, &qword_1005B02F8, &qword_1004D1870);
  sub_100002CE0(v6 + v4, &qword_1005B2E00, &qword_1004D7CC8);

  type metadata accessor for MicroFindMyService(0);
  swift_defaultActor_destroy();
  swift_deallocPartialClassInstance();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1003B12DC()
{
  v1[8] = v0;
  sub_10004B564(&qword_1005B2E00, &qword_1004D7CC8);
  v1[9] = swift_task_alloc();
  v2 = sub_10004B564(&qword_1005B0328, &unk_1004D6A60);
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  sub_10004B564(&qword_1005B02F8, &qword_1004D1870);
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_1003B1418, v0, 0);
}

uint64_t sub_1003B1418()
{
  if (static MicroFindMyInterface.isSupported.getter())
  {
    v1 = swift_task_alloc();
    *(v0 + 112) = v1;
    *v1 = v0;
    v1[1] = sub_1003B15A8;

    return daemon.getter();
  }

  else
  {
    v2 = type metadata accessor for GenericError();
    sub_1003C24A4(&unk_1005B27C0, &type metadata accessor for GenericError, &protocol conformance descriptor for GenericError);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, enum case for GenericError.notImplemented(_:), v2);
    swift_willThrow();

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1003B15A8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 120) = a1;

  v3 = swift_task_alloc();
  *(v2 + 128) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for AccountService(0);
  v6 = sub_1003C24A4(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1003C24A4(&qword_1005A9118, type metadata accessor for AccountService, &unk_1004DCC10);
  *v3 = v9;
  v3[1] = sub_1003B1784;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003B1784(uint64_t a1)
{
  v3 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  if (v1)
  {
    v4 = v3[8];

    return _swift_task_switch(sub_1003B2094, v4, 0);
  }

  else
  {

    type metadata accessor for SharingKeyStreamProvider();
    swift_allocObject();
    v5 = swift_task_alloc();
    v3[19] = v5;
    *v5 = v3;
    v5[1] = sub_1003B190C;

    return sub_1003C594C();
  }
}

uint64_t sub_1003B190C(uint64_t a1)
{
  v4 = *v2;
  v4[20] = v1;

  v5 = v4[8];
  if (v1)
  {
    v6 = sub_1003B1F80;
  }

  else
  {
    v4[21] = a1;
    v6 = sub_1003B1A48;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1003B1A48()
{
  v1 = v0[17];
  *(v0[8] + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_sharingKeyStreamProvider) = v0[21];

  return _swift_task_switch(sub_1003B1AC8, v1, 0);
}

uint64_t sub_1003B1AC8()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[8];
  swift_allocObject();
  swift_weakInit();
  type metadata accessor for AccountService.State(0);
  (*(v3 + 104))(v1, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v2);
  AsyncStream.init(_:bufferingPolicy:_:)();

  return _swift_task_switch(sub_1003B1BD8, v4, 0);
}

uint64_t sub_1003B1BD8()
{
  v1 = v0[13];
  v2 = v0[8];
  v3 = sub_10004B564(&unk_1005AFB18, &qword_1004D12E8);
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_accountStream;
  swift_beginAccess();
  sub_100022364(v1, v2 + v4, &qword_1005B02F8, &qword_1004D1870);
  swift_endAccess();
  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v6 = v0[8];
  v5 = v0[9];
  v7 = qword_1005DFBC8;
  sub_10004B564(&qword_1005B2E18, &qword_1004D7CE8);
  v8 = *(type metadata accessor for SecureLocationsConfig(0) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1004C1900;
  v11 = (v7 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

  os_unfair_lock_lock(v11);
  v12 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
  sub_1003C326C(v11 + *(v12 + 28), v10 + v9, type metadata accessor for SecureLocationsConfig);
  os_unfair_lock_unlock(v11);
  AsyncStreamProvider.stream(initialEvents:)();

  v13 = sub_10004B564(&unk_1005B2AB8, &unk_1004D7950);
  (*(*(v13 - 8) + 56))(v5, 0, 1, v13);
  v14 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_configStream;
  swift_beginAccess();
  sub_100022364(v5, v6 + v14, &qword_1005B2E00, &qword_1004D7CC8);
  swift_endAccess();
  v15 = *(v6 + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_locationMonitor);
  v0[22] = v15;

  return _swift_task_switch(sub_1003B1EC8, v15, 0);
}

uint64_t sub_1003B1EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 176);
  v5 = OBJC_IVAR____TtC13findmylocated24BystanderLocationMonitor_locationManager;
  v6 = *(v4 + OBJC_IVAR____TtC13findmylocated24BystanderLocationMonitor_locationManager);
  if (!v6)
  {
    __break(1u);
    goto LABEL_8;
  }

  [v6 startUpdatingLocation];
  v6 = *(v4 + v5);
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  [v6 startMonitoringVisits];
  v6 = *(v4 + v5);
  if (!v6)
  {
LABEL_9:
    __break(1u);
    return _swift_task_switch(v6, a2, a3);
  }

  v7 = *(v3 + 64);
  [v6 startMonitoringSignificantLocationChanges];
  v6 = sub_1003B2008;
  a2 = v7;
  a3 = 0;

  return _swift_task_switch(v6, a2, a3);
}

uint64_t sub_1003B1F80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003B2008()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003B2094()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003B211C()
{
  v1[727] = v0;
  v2 = type metadata accessor for UUID();
  v1[733] = v2;
  v1[739] = *(v2 - 8);
  v1[745] = swift_task_alloc();

  return _swift_task_switch(sub_1003B21DC, v0, 0);
}

uint64_t sub_1003B21DC()
{
  swift_asyncLet_begin();
  swift_asyncLet_begin();
  swift_asyncLet_begin();
  swift_asyncLet_begin();
  swift_asyncLet_begin();
  swift_asyncLet_begin();
  swift_asyncLet_begin();
  swift_asyncLet_begin();
  swift_asyncLet_begin();
  UUID.init()();
  MicroFindMyInterface.set(uuid:)();
  (*(v0[739] + 8))(v0[745], v0[733]);

  return _swift_asyncLet_get(v0 + 2);
}

uint64_t sub_1003B2870()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003B28D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003784;

  return sub_1003BC8B4();
}

uint64_t sub_1003B2980()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1003B2A1C;

  return sub_1003AD188();
}

uint64_t sub_1003B2A1C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1003B2B30()
{
  *(v0 + 24) = *(*(v0 + 16) + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_sharingKeyStreamProvider);

  return _swift_task_switch(sub_1003B2BAC, 0, 0);
}

void sub_1003B2BAC()
{
  if (*(v0 + 24))
  {
    v1 = swift_task_alloc();
    *(v0 + 32) = v1;
    *v1 = v0;
    v1[1] = sub_1003B2C44;

    sub_1003C4870();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1003B2C44()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1003B2D58()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003784;

  return sub_1003B8958();
}

uint64_t sub_1003B2DE8(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  sub_10004B564(&qword_1005B2DF8, &qword_1004D7CC0);
  v2[6] = swift_task_alloc();
  sub_10004B564(&qword_1005B2E00, &qword_1004D7CC8);
  v2[7] = swift_task_alloc();
  v4 = sub_10004B564(&qword_1005B2E08, &qword_1004D7CD0);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_1003B2F28, a2, 0);
}

uint64_t sub_1003B2F28()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_configStream;
  swift_beginAccess();
  sub_100005F04(v2 + v3, v1, &qword_1005B2E00, &qword_1004D7CC8);
  v4 = sub_10004B564(&unk_1005B2AB8, &unk_1004D7950);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v1, 1, v4);
  if (v6 == 1)
  {
    __break(1u);
  }

  else
  {
    v10 = v0[7];
    AsyncStream.makeAsyncIterator()();
    (*(v5 + 8))(v10, v4);
    v11 = sub_1003C24A4(&qword_1005B2D58, type metadata accessor for MicroFindMyService, &unk_1004D7AE8);
    v0[11] = v11;
    v12 = v0[5];
    v13 = swift_task_alloc();
    v0[12] = v13;
    *v13 = v0;
    v13[1] = sub_1003B30EC;
    v9 = v0[8];
    v6 = v0[6];
    v7 = v12;
    v8 = v11;
  }

  return AsyncStream.Iterator.next(isolation:)(v6, v7, v8, v9);
}

uint64_t sub_1003B30EC()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_1003B31FC, v1, 0);
}

uint64_t sub_1003B31FC()
{
  v1 = *(v0 + 48);
  v2 = sub_10004B564(&qword_1005B2E10, &unk_1004D7CD8);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {

    *(v0 + 112) = *(v2 + 48);
    v5 = swift_task_alloc();
    *(v0 + 104) = v5;
    *v5 = v0;
    v5[1] = sub_1003B3368;

    return sub_1003BF2B0();
  }
}

uint64_t sub_1003B3368()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_1003B3478, v1, 0);
}

uint64_t sub_1003B3478()
{
  sub_1003C32D4(*(v0 + 48) + *(v0 + 112), type metadata accessor for SecureLocationsConfig);
  v1 = *(v0 + 88);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_1003B30EC;
  v4 = *(v0 + 64);
  v5 = *(v0 + 48);

  return AsyncStream.Iterator.next(isolation:)(v5, v2, v1, v4);
}

uint64_t sub_1003B3554()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003784;

  return sub_1003B3EA8();
}

uint64_t sub_1003B35E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003784;

  return sub_1003BA48C();
}

uint64_t sub_1003B3674()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003784;

  return sub_1003B7AE0();
}

uint64_t sub_1003B3704()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003784;

  return sub_1003BE7D4();
}

void sub_1003B3794(uint64_t a1@<X8>)
{
  v56 = a1;
  v2 = type metadata accessor for EncryptedLocation(0);
  v66 = *(v2 - 8);
  v67 = v2;
  v3 = __chkstk_darwin(v2);
  v75 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v72 = &v54 - v5;
  v74 = type metadata accessor for Date();
  v6 = *(v74 - 8);
  __chkstk_darwin(v74);
  v73 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for EncryptedLocation();
  v8 = *(v77 - 8);
  v9 = __chkstk_darwin(v77);
  v71 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v59 = &v54 - v11;
  v12 = sub_10004B564(&qword_1005B2DE8, &qword_1004D7C20);
  v13 = __chkstk_darwin(v12 - 8);
  v69 = (&v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v68 = &v54 - v15;
  v16 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_encryptedLocations;
  swift_beginAccess();
  v55 = v1;
  v17 = *(v1 + v16);
  v18 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 64);
  v57 = (v19 + 63) >> 6;
  v58 = v8 + 16;
  v70 = (v8 + 32);
  v63 = (v6 + 8);
  v64 = (v6 + 16);
  v60 = v8;
  v61 = v17;
  v62 = (v8 + 8);

  v22 = 0;
  v65 = v18;
  v23 = v77;
  v76 = _swiftEmptyArrayStorage;
  if (v21)
  {
    while (1)
    {
      v24 = v22;
LABEL_13:
      v28 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v29 = v28 | (v24 << 6);
      v30 = v60;
      v31 = (*(v61 + 48) + 16 * v29);
      v33 = *v31;
      v32 = v31[1];
      v34 = v59;
      (*(v60 + 16))(v59, *(v61 + 56) + *(v60 + 72) * v29, v23);
      v35 = sub_10004B564(&qword_1005B2DF0, &qword_1004D7C28);
      v36 = *(v35 + 48);
      v37 = v69;
      *v69 = v33;
      v37[1] = v32;
      v38 = *(v30 + 32);
      v27 = v37;
      v38(v37 + v36, v34, v23);
      (*(*(v35 - 8) + 56))(v27, 0, 1, v35);
      sub_100005F6C(v33, v32);
LABEL_14:
      v39 = v68;
      sub_1000176A8(v27, v68, &qword_1005B2DE8, &qword_1004D7C20);
      v40 = sub_10004B564(&qword_1005B2DF0, &qword_1004D7C28);
      if ((*(*(v40 - 8) + 48))(v39, 1, v40) == 1)
      {
        break;
      }

      v41 = *v39;
      v42 = *(v39 + 1);
      (*v70)(v71, &v39[*(v40 + 48)], v77);
      EncryptedLocation.locationTs.getter();
      v43 = v73;
      Date.init(timeIntervalSince1970:)();
      v44 = EncryptedLocation.fmt.getter();
      v45 = v67;
      v46 = v72;
      (*v64)(v72 + *(v67 + 24), v43, v74);
      v47 = EncryptedLocation.encryptedLocation.getter();
      *v46 = v41;
      *(v46 + 8) = v42;
      *(v46 + 16) = v44;
      v48 = (v46 + *(v45 + 28));
      *v48 = v47;
      v48[1] = v49;
      sub_1003C326C(v46, v75, type metadata accessor for EncryptedLocation);
      v50 = v76;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = sub_1001FCE1C(0, v50[2] + 1, 1, v50);
      }

      v52 = v50[2];
      v51 = v50[3];
      if (v52 >= v51 >> 1)
      {
        v50 = sub_1001FCE1C((v51 > 1), v52 + 1, 1, v50);
      }

      sub_1003C32D4(v72, type metadata accessor for EncryptedLocation);
      (*v63)(v73, v74);
      (*v62)(v71, v77);
      v50[2] = v52 + 1;
      sub_1003C3498(v75, v50 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v52, type metadata accessor for EncryptedLocation);
      v18 = v65;
      v76 = v50;
      if (!v21)
      {
        goto LABEL_5;
      }
    }

    AsyncStreamProvider.stream(initialEvents:)();
  }

  else
  {
LABEL_5:
    if (v57 <= v22 + 1)
    {
      v25 = v22 + 1;
    }

    else
    {
      v25 = v57;
    }

    v26 = v25 - 1;
    v27 = v69;
    while (1)
    {
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v24 >= v57)
      {
        v53 = sub_10004B564(&qword_1005B2DF0, &qword_1004D7C28);
        (*(*(v53 - 8) + 56))(v27, 1, 1, v53);
        v21 = 0;
        v22 = v26;
        goto LABEL_14;
      }

      v21 = *(v18 + 8 * v24);
      ++v22;
      if (v21)
      {
        v22 = v24;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1003B3EA8()
{
  v1[7] = v0;
  v1[8] = *v0;
  v2 = type metadata accessor for ContinuousClock.Instant();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v3 = type metadata accessor for ContinuousClock();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  v4 = type metadata accessor for Analytics();
  v1[16] = v4;
  v1[17] = *(v4 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return _swift_task_switch(sub_1003B406C, v0, 0);
}

uint64_t sub_1003B406C(uint64_t a1, __n128 a2)
{
  v40 = v2;
  if (static Task<>.isCancelled.getter())
  {

    v3 = v2[1];

    return v3();
  }

  else
  {
    v5 = type metadata accessor for Transaction();
    v6 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_interface;
    v2[21] = v5;
    v2[22] = v6;
    v8 = v2[7];
    v7 = v2[8];
    v9 = swift_task_alloc();
    *(v9 + 16) = v8;
    *(v9 + 24) = v7;
    static Transaction.named<A>(_:with:)();

    MicroFindMyInterface.getAnalytics()();
    if (qword_1005A84E8 != -1)
    {
      swift_once();
    }

    v10 = v2[19];
    v11 = v2[20];
    v12 = v2[16];
    v13 = v2[17];
    v14 = type metadata accessor for Logger();
    sub_10000A6F0(v14, qword_1005E0B78);
    v15 = *(v13 + 16);
    v15(v10, v11, v12);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v2[19];
    if (v18)
    {
      v20 = v2[17];
      v21 = v2[18];
      v22 = v2[16];
      v23 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = v38;
      *v23 = 136446210;
      v15(v21, v19, v22);
      v24 = String.init<A>(describing:)();
      v26 = v25;
      v27 = *(v20 + 8);
      v27(v19, v22);
      v28 = sub_10000D01C(v24, v26, &v39);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v16, v17, "MicroFindMy analytics: %{public}s.", v23, 0xCu);
      sub_100004984(v38);
    }

    else
    {
      v29 = v2[16];
      v30 = v2[17];

      v27 = *(v30 + 8);
      v27(v19, v29);
    }

    v2[23] = v27;
    v31 = v2[20];
    type metadata accessor for AnalyticsEvent(0);
    v32 = swift_allocObject();
    v2[24] = v32;
    swift_defaultActor_initialize();
    *(v32 + 14) = sub_100207808(_swiftEmptyArrayStorage);
    UUID.init()();
    v33 = OBJC_IVAR____TtC13findmylocated14AnalyticsEvent_startTime;
    v34 = type metadata accessor for DispatchTime();
    v35 = *(*(v34 - 8) + 56);
    v35(&v32[v33], 1, 1, v34);
    v35(&v32[OBJC_IVAR____TtC13findmylocated14AnalyticsEvent_endTime], 1, 1, v34);
    *(v32 + 15) = 0xD00000000000001CLL;
    *(v32 + 16) = 0x80000001004E9430;
    v36 = swift_task_alloc();
    v2[25] = v36;
    *(v36 + 16) = v31;
    v37 = swift_task_alloc();
    v2[26] = v37;
    *v37 = v2;
    v37[1] = sub_1003B4640;

    return sub_10004F258(&unk_1004D7BF8, v36);
  }
}

uint64_t sub_1003B4640()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = v2[7];

    return _swift_task_switch(sub_1003B58D8, v4, 0);
  }

  else
  {

    type metadata accessor for AnalyticsPublisher();
    v2[28] = swift_allocObject();
    swift_defaultActor_initialize();
    v5 = swift_task_alloc();
    v2[29] = v5;
    *v5 = v3;
    v5[1] = sub_1003B47FC;
    v6 = v2[24];

    return sub_100050D70(v6);
  }
}

uint64_t sub_1003B47FC()
{
  v1 = *(*v0 + 56);

  return _swift_task_switch(sub_1003B4928, v1, 0);
}

uint64_t sub_1003B4928(uint64_t a1)
{
  static Clock<>.continuous.getter();
  *(v1 + 40) = xmmword_1004D77E0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;

  return _swift_task_switch(sub_1003B49A8, 0, 0);
}

uint64_t sub_1003B49A8()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = sub_1003C24A4(&qword_1005B0BC8, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1003C24A4(&qword_1005AFFD0, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v5 = *(v2 + 8);
  v0[30] = v5;
  v0[31] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[32] = v6;
  *v6 = v0;
  v6[1] = sub_1003B4B2C;
  v8 = v0[12];
  v7 = v0[13];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v7, v4);
}

uint64_t sub_1003B4B2C()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    (*(v2 + 240))(*(v2 + 96), *(v2 + 72));
    v3 = sub_1003B5274;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 240);
    v7 = *(v2 + 112);
    v6 = *(v2 + 120);
    v8 = *(v2 + 96);
    v9 = *(v2 + 104);
    v10 = *(v2 + 72);
    v11 = *(v2 + 56);
    v5(v8, v10);
    (*(v7 + 8))(v6, v9);
    v3 = sub_1003B4C90;
    v4 = v11;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_1003B4C90()
{
  v46 = v0;
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[16];

  v1(v2, v3);
  v4 = v0[33];
  if (static Task<>.isCancelled.getter())
  {
LABEL_2:

    v5 = v0[1];

    return v5();
  }

  else
  {
    while (1)
    {
      v11 = v0[7];
      v10 = v0[8];
      v12 = swift_task_alloc();
      *(v12 + 16) = v11;
      *(v12 + 24) = v10;
      static Transaction.named<A>(_:with:)();
      if (!v4)
      {
        break;
      }

      if (qword_1005A84E8 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_10000A6F0(v13, qword_1005E0B78);
      swift_errorRetain();
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        *v7 = 138543362;
        swift_errorRetain();
        v9 = _swift_stdlib_bridgeErrorToNSError();
        *(v7 + 4) = v9;
        *v8 = v9;
        _os_log_impl(&_mh_execute_header, v14, v15, "Error from encryptedLocationCatalog: %{public}@", v7, 0xCu);
        sub_100002CE0(v8, &qword_1005A9670, &unk_1004C2480);
      }

      else
      {
      }

      v4 = 0;
      if (static Task<>.isCancelled.getter())
      {
        goto LABEL_2;
      }
    }

    MicroFindMyInterface.getAnalytics()();
    if (qword_1005A84E8 != -1)
    {
      swift_once();
    }

    v16 = v0[19];
    v17 = v0[20];
    v18 = v0[16];
    v19 = v0[17];
    v20 = type metadata accessor for Logger();
    sub_10000A6F0(v20, qword_1005E0B78);
    v21 = *(v19 + 16);
    v21(v16, v17, v18);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v0[19];
    if (v24)
    {
      v26 = v0[17];
      v27 = v0[18];
      v28 = v0[16];
      v29 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = v44;
      *v29 = 136446210;
      v21(v27, v25, v28);
      v30 = String.init<A>(describing:)();
      v32 = v31;
      v33 = *(v26 + 8);
      v33(v25, v28);
      v34 = sub_10000D01C(v30, v32, &v45);

      *(v29 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v22, v23, "MicroFindMy analytics: %{public}s.", v29, 0xCu);
      sub_100004984(v44);
    }

    else
    {
      v35 = v0[16];
      v36 = v0[17];

      v33 = *(v36 + 8);
      v33(v25, v35);
    }

    v0[23] = v33;
    v37 = v0[20];
    type metadata accessor for AnalyticsEvent(0);
    v38 = swift_allocObject();
    v0[24] = v38;
    swift_defaultActor_initialize();
    *(v38 + 14) = sub_100207808(_swiftEmptyArrayStorage);
    UUID.init()();
    v39 = OBJC_IVAR____TtC13findmylocated14AnalyticsEvent_startTime;
    v40 = type metadata accessor for DispatchTime();
    v41 = *(*(v40 - 8) + 56);
    v41(&v38[v39], 1, 1, v40);
    v41(&v38[OBJC_IVAR____TtC13findmylocated14AnalyticsEvent_endTime], 1, 1, v40);
    *(v38 + 15) = 0xD00000000000001CLL;
    *(v38 + 16) = 0x80000001004E9430;
    v42 = swift_task_alloc();
    v0[25] = v42;
    *(v42 + 16) = v37;
    v43 = swift_task_alloc();
    v0[26] = v43;
    *v43 = v0;
    v43[1] = sub_1003B4640;

    return sub_10004F258(&unk_1004D7BF8, v42);
  }
}

uint64_t sub_1003B5274()
{
  v1 = v0[7];
  (*(v0[14] + 8))(v0[15], v0[13]);

  return _swift_task_switch(sub_1003B52F0, v1, 0);
}

uint64_t sub_1003B52F0()
{
  v44 = v0;
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[16];

  v1(v2, v3);
  if (qword_1005A84E8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A6F0(v4, qword_1005E0B78);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error from encryptedLocationCatalog: %{public}@", v7, 0xCu);
    sub_100002CE0(v8, &qword_1005A9670, &unk_1004C2480);

    if (static Task<>.isCancelled.getter())
    {
      goto LABEL_8;
    }
  }

  else
  {

    if (static Task<>.isCancelled.getter())
    {
LABEL_8:

      v13 = v0[1];

      return v13();
    }
  }

  v11 = v0[7];
  v10 = v0[8];
  v12 = swift_task_alloc();
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;
  static Transaction.named<A>(_:with:)();

  MicroFindMyInterface.getAnalytics()();
  if (qword_1005A84E8 != -1)
  {
    swift_once();
  }

  v15 = v0[19];
  v16 = v0[20];
  v17 = v0[16];
  v18 = v0[17];
  sub_10000A6F0(v4, qword_1005E0B78);
  v19 = *(v18 + 16);
  v19(v15, v16, v17);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v22 = os_log_type_enabled(v20, v21);
  v23 = v0[19];
  if (v22)
  {
    v24 = v0[17];
    v25 = v0[18];
    v26 = v0[16];
    v27 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43 = v42;
    *v27 = 136446210;
    v19(v25, v23, v26);
    v28 = String.init<A>(describing:)();
    v30 = v29;
    v31 = *(v24 + 8);
    v31(v23, v26);
    v32 = sub_10000D01C(v28, v30, &v43);

    *(v27 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v20, v21, "MicroFindMy analytics: %{public}s.", v27, 0xCu);
    sub_100004984(v42);
  }

  else
  {
    v33 = v0[16];
    v34 = v0[17];

    v31 = *(v34 + 8);
    v31(v23, v33);
  }

  v0[23] = v31;
  v35 = v0[20];
  type metadata accessor for AnalyticsEvent(0);
  v36 = swift_allocObject();
  v0[24] = v36;
  swift_defaultActor_initialize();
  *(v36 + 14) = sub_100207808(_swiftEmptyArrayStorage);
  UUID.init()();
  v37 = OBJC_IVAR____TtC13findmylocated14AnalyticsEvent_startTime;
  v38 = type metadata accessor for DispatchTime();
  v39 = *(*(v38 - 8) + 56);
  v39(&v36[v37], 1, 1, v38);
  v39(&v36[OBJC_IVAR____TtC13findmylocated14AnalyticsEvent_endTime], 1, 1, v38);
  *(v36 + 15) = 0xD00000000000001CLL;
  *(v36 + 16) = 0x80000001004E9430;
  v40 = swift_task_alloc();
  v0[25] = v40;
  *(v40 + 16) = v35;
  v41 = swift_task_alloc();
  v0[26] = v41;
  *v41 = v0;
  v41[1] = sub_1003B4640;

  return sub_10004F258(&unk_1004D7BF8, v40);
}

uint64_t sub_1003B58D8()
{
  v44 = v0;
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[16];

  v1(v2, v3);
  if (qword_1005A84E8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A6F0(v4, qword_1005E0B78);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error from encryptedLocationCatalog: %{public}@", v7, 0xCu);
    sub_100002CE0(v8, &qword_1005A9670, &unk_1004C2480);

    if (static Task<>.isCancelled.getter())
    {
      goto LABEL_8;
    }
  }

  else
  {

    if (static Task<>.isCancelled.getter())
    {
LABEL_8:

      v13 = v0[1];

      return v13();
    }
  }

  v11 = v0[7];
  v10 = v0[8];
  v12 = swift_task_alloc();
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;
  static Transaction.named<A>(_:with:)();

  MicroFindMyInterface.getAnalytics()();
  if (qword_1005A84E8 != -1)
  {
    swift_once();
  }

  v15 = v0[19];
  v16 = v0[20];
  v17 = v0[16];
  v18 = v0[17];
  sub_10000A6F0(v4, qword_1005E0B78);
  v19 = *(v18 + 16);
  v19(v15, v16, v17);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v22 = os_log_type_enabled(v20, v21);
  v23 = v0[19];
  if (v22)
  {
    v24 = v0[17];
    v25 = v0[18];
    v26 = v0[16];
    v27 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43 = v42;
    *v27 = 136446210;
    v19(v25, v23, v26);
    v28 = String.init<A>(describing:)();
    v30 = v29;
    v31 = *(v24 + 8);
    v31(v23, v26);
    v32 = sub_10000D01C(v28, v30, &v43);

    *(v27 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v20, v21, "MicroFindMy analytics: %{public}s.", v27, 0xCu);
    sub_100004984(v42);
  }

  else
  {
    v33 = v0[16];
    v34 = v0[17];

    v31 = *(v34 + 8);
    v31(v23, v33);
  }

  v0[23] = v31;
  v35 = v0[20];
  type metadata accessor for AnalyticsEvent(0);
  v36 = swift_allocObject();
  v0[24] = v36;
  swift_defaultActor_initialize();
  *(v36 + 14) = sub_100207808(_swiftEmptyArrayStorage);
  UUID.init()();
  v37 = OBJC_IVAR____TtC13findmylocated14AnalyticsEvent_startTime;
  v38 = type metadata accessor for DispatchTime();
  v39 = *(*(v38 - 8) + 56);
  v39(&v36[v37], 1, 1, v38);
  v39(&v36[OBJC_IVAR____TtC13findmylocated14AnalyticsEvent_endTime], 1, 1, v38);
  *(v36 + 15) = 0xD00000000000001CLL;
  *(v36 + 16) = 0x80000001004E9430;
  v40 = swift_task_alloc();
  v0[25] = v40;
  *(v40 + 16) = v35;
  v41 = swift_task_alloc();
  v0[26] = v41;
  *v41 = v0;
  v41[1] = sub_1003B4640;

  return sub_10004F258(&unk_1004D7BF8, v40);
}

void sub_1003B5EC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v255 = a2;
  v4 = type metadata accessor for EncryptedLocation(0);
  __chkstk_darwin(v4);
  v236 = &v202 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v254 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v240 = &v202 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v229 = &v202 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v202 - v12;
  v14 = __chkstk_darwin(v11);
  v233 = &v202 - v15;
  __chkstk_darwin(v14);
  v243 = &v202 - v16;
  v17 = sub_10004B564(&qword_1005B2DD8, &qword_1004D7C10);
  __chkstk_darwin(v17 - 8);
  v250 = &v202 - v18;
  v251 = type metadata accessor for EncryptedLocation();
  v248 = *(v251 - 8);
  v19 = __chkstk_darwin(v251);
  v237 = &v202 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v235 = &v202 - v22;
  v23 = __chkstk_darwin(v21);
  v232 = &v202 - v24;
  v25 = __chkstk_darwin(v23);
  v231 = &v202 - v26;
  v27 = __chkstk_darwin(v25);
  v230 = &v202 - v28;
  v29 = __chkstk_darwin(v27);
  v244 = &v202 - v30;
  __chkstk_darwin(v29);
  v241 = &v202 - v31;
  v32 = sub_10004B564(&qword_1005B2DE0, &qword_1004D7C18);
  __chkstk_darwin(v32 - 8);
  v34 = &v202 - v33;
  v35 = type metadata accessor for EncryptedLocationCatalog();
  v246 = *(v35 - 8);
  v247 = v35;
  v36 = __chkstk_darwin(v35);
  v239 = &v202 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v245 = &v202 - v38;
  if (qword_1005A84E8 != -1)
  {
LABEL_62:
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  v40 = sub_10000A6F0(v39, qword_1005E0B78);

  v252 = v40;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  v43 = os_log_type_enabled(v41, v42);
  v234 = v13;
  if (v43)
  {
    v44 = v6;
    v45 = swift_slowAlloc();
    *v45 = 67109120;
    *(v45 + 4) = *(v255 + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_sequence);

    _os_log_impl(&_mh_execute_header, v41, v42, "Calling interface.encryptedLocationCatalog(sequence: %u)", v45, 8u);
    v6 = v44;
  }

  else
  {
  }

  v46 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_interface;
  v47 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_sequence;
  MicroFindMyInterface.encryptedLocationCatalog(sequence:)();
  if (!v3)
  {
    v228 = v46;
    v13 = 0;
    v49 = v246;
    v48 = v247;
    if ((*(v246 + 48))(v34, 1, v247) == 1)
    {
      sub_100002CE0(v34, &qword_1005B2DE0, &qword_1004D7C18);
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&_mh_execute_header, v50, v51, "No catalog changes.", v52, 2u);
      }

      return;
    }

    v217 = v47;
    (*(v49 + 32))(v245, v34, v48);
    v53 = EncryptedLocationCatalog.catalog.getter();
    v34 = (v53 + 64);
    v54 = *(v53 + 64);
    v238 = v53;
    v55 = 1 << *(v53 + 32);
    v56 = -1;
    if (v55 < 64)
    {
      v56 = ~(-1 << v55);
    }

    v57 = v56 & v54;
    v215 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_streamProvider;
    v242 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_encryptedLocations;
    swift_beginAccess();
    v3 = 0;
    v58 = (v55 + 63) >> 6;
    v223 = (v248 + 16);
    v225 = (v248 + 8);
    v221 = (v248 + 48);
    v218 = (v248 + 32);
    v220 = (v254 + 16);
    v222 = (v254 + 8);
    v211 = v248 + 40;
    *&v59 = 136315138;
    v212 = v59;
    *&v59 = 136315650;
    v207 = v59;
    *&v59 = 136316162;
    v206 = v59;
    *&v59 = 138543362;
    v219 = v59;
    v216 = v4;
    v4 = 0;
    v226 = v34;
    v227 = v58;
    v224 = v6;
    while (1)
    {
      if (!v57)
      {
        while (1)
        {
          v60 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            __break(1u);
            goto LABEL_62;
          }

          if (v60 >= v58)
          {
            break;
          }

          v57 = *&v34[8 * v60];
          ++v3;
          if (v57)
          {
            v254 = v4;
            v3 = v60;
            goto LABEL_22;
          }
        }

        v189 = v4;

        v190 = v246;
        v191 = v239;
        v192 = v247;
        (*(v246 + 16))(v239, v245, v247);

        v193 = Logger.logObject.getter();
        v194 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v193, v194))
        {
          v195 = swift_slowAlloc();
          v254 = v189;
          v196 = v195;
          *v195 = 67109376;
          v197 = v217;
          v195[1] = *(v255 + v217);

          *(v196 + 4) = 1024;
          v198 = EncryptedLocationCatalog.sequence.getter();
          v199 = *(v190 + 8);
          v199(v191, v192);
          *(v196 + 10) = v198;
          _os_log_impl(&_mh_execute_header, v193, v194, "Sequence %u -> %u", v196, 0xEu);
        }

        else
        {
          v199 = *(v190 + 8);
          v199(v191, v192);

          v197 = v217;
        }

        v200 = v245;
        v201 = EncryptedLocationCatalog.sequence.getter();
        v199(v200, v192);
        *(v255 + v197) = v201;
        return;
      }

      v254 = v4;
LABEL_22:
      v61 = __clz(__rbit64(v57));
      v57 &= v57 - 1;
      v62 = v61 | (v3 << 6);
      v63 = (*(v238 + 48) + 16 * v62);
      v6 = *v63;
      v64 = v63[1];
      v65 = *(*(v238 + 56) + 8 * v62);
      v66 = *(v255 + v242);
      v67 = *(v66 + 16);
      sub_100005F6C(*v63, v64);
      v253 = v64;
      if (v67)
      {

        v68 = v6;
        v69 = sub_1001FDA54(v6, v64);
        if (v70)
        {
          v71 = v248;
          v72 = v241;
          v13 = v251;
          (*(v248 + 16))(v241, *(v66 + 56) + *(v248 + 72) * v69, v251);

          v73 = EncryptedLocation.locationTs.getter();
          v74 = *(v71 + 8);
          v34 = v226;
          v74(v72, v13);
          v6 = v68;
          if (v73 >= v65)
          {
            sub_1000049D0(v68, v253);
            v4 = v254;
            goto LABEL_15;
          }
        }

        else
        {
        }
      }

      v75 = v254;
      v76 = v250;
      v249 = v6;
      MicroFindMyInterface.encryptedLocation(for:)();
      v13 = v75;
      if (!v75)
      {
        break;
      }

      swift_errorRetain();
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v77, v78))
      {
        v13 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        *v13 = v219;
        swift_errorRetain();
        v80 = _swift_stdlib_bridgeErrorToNSError();
        *(v13 + 4) = v80;
        *v79 = v80;
        _os_log_impl(&_mh_execute_header, v77, v78, "ERROR fetching encrypted location: %{public}@", v13, 0xCu);
        sub_100002CE0(v79, &qword_1005A9670, &unk_1004C2480);

        sub_1000049D0(v249, v253);
        v34 = v226;
      }

      else
      {
        sub_1000049D0(v249, v253);
      }

      v4 = 0;
LABEL_15:
      v58 = v227;
    }

    v254 = 0;
    v81 = v251;
    v82 = (*v221)(v76, 1, v251);
    v83 = v224;
    if (v82 == 1)
    {
      sub_100002CE0(v76, &qword_1005B2DD8, &qword_1004D7C10);
      v84 = v249;
      v85 = v253;
      sub_100005F6C(v249, v253);
      v86 = Logger.logObject.getter();
      v6 = static os_log_type_t.error.getter();
      sub_1000049D0(v84, v85);
      if (os_log_type_enabled(v86, v6))
      {
        v87 = swift_slowAlloc();
        v214 = swift_slowAlloc();
        v256 = v214;
        *v87 = v212;
        sub_100005F6C(v84, v85);
        v88 = Data.description.getter();
        v89 = v85;
        v91 = v90;
        sub_1000049D0(v84, v89);
        v92 = sub_10000D01C(v88, v91, &v256);

        *(v87 + 4) = v92;
        _os_log_impl(&_mh_execute_header, v86, v6, "Expected location for %s", v87, 0xCu);
        v13 = v214;
        sub_100004984(v214);

        sub_1000049D0(v84, v89);
      }

      else
      {

        sub_1000049D0(v84, v85);
      }

      goto LABEL_55;
    }

    v205 = *v218;
    v205(v244, v76, v81);
    EncryptedLocation.locationTs.getter();
    Date.init(timeIntervalSince1970:)();
    v93 = *(v255 + v242);
    v94 = v240;
    v95 = v249;
    if (*(v93 + 16))
    {

      v96 = sub_1001FDA54(v95, v253);
      if (v97)
      {
        v98 = *(v93 + 56) + *(v248 + 72) * v96;
        v213 = *(v248 + 16);
        v210 = v223 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v99 = v230;
        v100 = v251;
        v213(v230, v98, v251);

        EncryptedLocation.locationTs.getter();
        v101 = v233;
        Date.init(timeIntervalSince1970:)();
        v102 = *v220;
        v103 = v224;
        (*v220)(v234, v101, v224);
        v104 = v213;
        v213(v231, v99, v100);
        v105 = v229;
        v209 = v102;
        v102(v229, v243, v103);
        v106 = v249;
        v107 = v253;
        v104(v232, v244, v100);
        sub_100005F6C(v106, v107);
        v108 = Logger.logObject.getter();
        v109 = static os_log_type_t.default.getter();
        sub_1000049D0(v106, v107);
        if (os_log_type_enabled(v108, v109))
        {
          v110 = swift_slowAlloc();
          v208 = swift_slowAlloc();
          v256 = v208;
          *v110 = v206;
          v111 = Data.hexString.getter();
          v204 = v109;
          v113 = sub_10000D01C(v111, v112, &v256);

          *(v110 + 4) = v113;
          *(v110 + 12) = 2080;
          v202 = sub_1003C24A4(&qword_1005A9800, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          v114 = v234;
          v115 = v224;
          v116 = dispatch thunk of CustomStringConvertible.description.getter();
          v203 = v108;
          v118 = v117;
          v214 = *v222;
          v214(v114, v115);
          v119 = sub_10000D01C(v116, v118, &v256);

          *(v110 + 14) = v119;
          *(v110 + 22) = 2048;
          v120 = v231;
          v121 = EncryptedLocation.locationTs.getter();
          v122 = *v225;
          (*v225)(v120, v251);
          *(v110 + 24) = v121;
          *(v110 + 32) = 2080;
          v123 = v229;
          v124 = dispatch thunk of CustomStringConvertible.description.getter();
          v126 = v125;
          v214(v123, v115);
          v127 = sub_10000D01C(v124, v126, &v256);
          v104 = v213;

          *(v110 + 34) = v127;
          *(v110 + 42) = 2048;
          v128 = v232;
          v129 = EncryptedLocation.locationTs.getter();
          v130 = v251;
          v122(v128, v251);
          *(v110 + 44) = v129;
          v131 = v203;
          _os_log_impl(&_mh_execute_header, v203, v204, "Updating encrypted location for %s: %s [%llu] -> %s [%llu]", v110, 0x34u);
          swift_arrayDestroy();

          v214(v233, v224);
          v132 = v130;
          v208 = v122;
          v122(v230, v130);
          v133 = v237;
          v134 = v253;
          v135 = v249;
          v136 = v132;
        }

        else
        {
          v171 = *v225;
          v172 = v251;
          (*v225)(v232, v251);
          v171(v231, v172);

          v173 = *v222;
          v174 = v105;
          v175 = v224;
          (*v222)(v174, v224);
          v173(v234, v175);
          v214 = v173;
          v173(v233, v175);
          v176 = v251;
          v208 = v171;
          v171(v230, v251);
          v133 = v237;
          v134 = v107;
          v135 = v249;
          v136 = v176;
        }

        goto LABEL_43;
      }
    }

    v209 = *v220;
    v209(v94, v243, v83);
    v137 = *v223;
    v210 = v223 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v138 = v235;
    v139 = v95;
    v140 = v251;
    v213 = v137;
    v137(v235, v244, v251);
    v134 = v253;
    sub_100005F6C(v95, v253);
    v141 = Logger.logObject.getter();
    v142 = static os_log_type_t.default.getter();
    sub_1000049D0(v139, v134);
    v204 = v142;
    if (os_log_type_enabled(v141, v142))
    {
      v143 = v83;
      v144 = swift_slowAlloc();
      v256 = swift_slowAlloc();
      *v144 = v207;
      v145 = Data.hexString.getter();
      v203 = v141;
      v147 = sub_10000D01C(v145, v146, &v256);
      v148 = v240;
      v149 = v147;

      *(v144 + 4) = v149;
      *(v144 + 12) = 2080;
      sub_1003C24A4(&qword_1005A9800, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v150 = dispatch thunk of CustomStringConvertible.description.getter();
      v152 = v151;
      v153 = v148;
      v134 = v253;
      v214 = *v222;
      v214(v153, v143);
      v154 = sub_10000D01C(v150, v152, &v256);

      *(v144 + 14) = v154;
      *(v144 + 22) = 2048;
      v155 = EncryptedLocation.locationTs.getter();
      v156 = v251;
      v208 = *v225;
      (v208)(v138, v251);
      *(v144 + 24) = v155;
      v157 = v203;
      _os_log_impl(&_mh_execute_header, v203, v204, "Storing encrypted location for %s: %s [%llu]", v144, 0x20u);
      swift_arrayDestroy();

      v133 = v237;
      v135 = v249;
      v136 = v156;
    }

    else
    {
      v208 = *v225;
      (v208)(v138, v140);

      v214 = *v222;
      v214(v240, v83);
      v136 = v140;
      v133 = v237;
      v135 = v249;
    }

    v104 = v213;
LABEL_43:
    v104(v133, v244, v136);
    v158 = v242;
    v159 = v255;
    swift_beginAccess();
    sub_100005F6C(v135, v134);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v257 = *(v159 + v158);
    v161 = v257;
    *(v159 + v158) = 0x8000000000000000;
    v162 = sub_1001FDA54(v135, v134);
    v164 = v161[2];
    v165 = (v163 & 1) == 0;
    v166 = __OFADD__(v164, v165);
    v167 = v164 + v165;
    if (v166)
    {
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

    v168 = v163;
    if (v161[3] >= v167)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v177 = v162;
        sub_100205E88();
        v162 = v177;
        v170 = v257;
        if (v168)
        {
          goto LABEL_49;
        }

        goto LABEL_52;
      }
    }

    else
    {
      sub_1002328D4(v167, isUniquelyReferenced_nonNull_native);
      v162 = sub_1001FDA54(v135, v134);
      if ((v168 & 1) != (v169 & 1))
      {
        goto LABEL_65;
      }
    }

    v170 = v257;
    if (v168)
    {
LABEL_49:
      (*(v248 + 40))(v170[7] + *(v248 + 72) * v162, v133, v251);
      sub_1000049D0(v135, v134);
LABEL_54:
      *(v255 + v242) = v170;

      swift_endAccess();
      v181 = v244;
      v182 = EncryptedLocation.fmt.getter();
      v183 = v216;
      v13 = v236;
      v184 = v243;
      v6 = v224;
      v209(&v236[*(v216 + 24)], v243, v224);
      v185 = EncryptedLocation.encryptedLocation.getter();
      v186 = v253;
      *v13 = v249;
      *(v13 + 1) = v186;
      v13[16] = v182;
      v187 = &v13[*(v183 + 28)];
      *v187 = v185;
      v187[1] = v188;
      AsyncStreamProvider.yield(value:transaction:)();
      sub_1003C32D4(v13, type metadata accessor for EncryptedLocation);
      v214(v184, v6);
      (v208)(v181, v251);
LABEL_55:
      v4 = v254;
      v34 = v226;
      goto LABEL_15;
    }

LABEL_52:
    v170[(v162 >> 6) + 8] |= 1 << v162;
    v178 = (v170[6] + 16 * v162);
    *v178 = v135;
    v178[1] = v134;
    v205((v170[7] + *(v248 + 72) * v162), v133, v251);
    v179 = v170[2];
    v166 = __OFADD__(v179, 1);
    v180 = v179 + 1;
    if (v166)
    {
      goto LABEL_64;
    }

    v170[2] = v180;
    goto LABEL_54;
  }
}

uint64_t sub_1003B77A0(uint64_t a1)
{
  v1[62] = a1;
  v2 = type metadata accessor for Date();
  v1[63] = v2;
  v1[64] = *(v2 - 8);
  v1[65] = swift_task_alloc();

  return _swift_task_switch(sub_1003B7860, 0, 0);
}

uint64_t sub_1003B7860()
{
  v1 = v0[65];
  v2 = v0[63];
  v3 = v0[64];
  sub_10004B564(&qword_1005B2DD0, &unk_1004D7C00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C0BE0;
  *(inited + 32) = 0x656D6954746F6F62;
  *(inited + 40) = 0xE800000000000000;
  static SystemInfo.bootTime.getter();
  v5 = Date.epoch.getter();
  (*(v3 + 8))(v1, v2);
  *(inited + 72) = &type metadata for Int64;
  *(inited + 80) = sub_100053494();
  *(inited + 48) = v5;
  *(inited + 88) = 2;
  *(inited + 96) = 0xD000000000000011;
  *(inited + 104) = 0x80000001004E9450;
  v6 = Analytics.locationsReceived.getter();
  *(inited + 136) = &type metadata for Int;
  v7 = sub_100054734();
  *(inited + 144) = v7;
  *(inited + 112) = v6;
  *(inited + 152) = 2;
  strcpy((inited + 160), "pushesReceived");
  *(inited + 175) = -18;
  v8 = Analytics.pushesReceived.getter();
  *(inited + 200) = &type metadata for Int;
  *(inited + 208) = v7;
  *(inited + 176) = v8;
  *(inited + 216) = 2;
  *(inited + 224) = 0xD000000000000020;
  *(inited + 232) = 0x80000001004E9470;
  v9 = Analytics.backgroundProactivePushesHandled.getter();
  *(inited + 264) = &type metadata for Int;
  *(inited + 272) = v7;
  *(inited + 240) = v9;
  *(inited + 280) = 2;
  *(inited + 288) = 0xD000000000000015;
  *(inited + 296) = 0x80000001004E94A0;
  v10 = Analytics.locationPushesHandled.getter();
  *(inited + 328) = &type metadata for Int;
  *(inited + 336) = v7;
  *(inited + 304) = v10;
  *(inited + 344) = 2;
  *(inited + 352) = 0xD000000000000017;
  *(inited + 360) = 0x80000001004E94C0;
  v11 = Analytics.successfulReversePushes.getter();
  *(inited + 392) = &type metadata for Int;
  *(inited + 400) = v7;
  *(inited + 368) = v11;
  *(inited + 408) = 2;
  *(inited + 416) = 0xD000000000000013;
  *(inited + 424) = 0x80000001004E94E0;
  v12 = Analytics.failedReversePushes.getter();
  *(inited + 456) = &type metadata for Int;
  *(inited + 464) = v7;
  *(inited + 432) = v12;
  *(inited + 472) = 2;
  v13 = sub_100209E2C(inited);
  swift_setDeallocating();
  sub_10004B564(&qword_1005B0160, &qword_1004D16F0);
  swift_arrayDestroy();

  v14 = v0[1];

  return v14(v13);
}

uint64_t sub_1003B7AE0()
{
  v1[7] = v0;
  v1[8] = *v0;
  v2 = type metadata accessor for ContinuousClock.Instant();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v3 = type metadata accessor for ContinuousClock();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_1003B7C30, v0, 0);
}

uint64_t sub_1003B7C30(uint64_t a1, __n128 a2)
{
  if (static Task<>.isCancelled.getter())
  {

    v3 = v2[1];

    return v3();
  }

  else
  {
    v2[16] = type metadata accessor for Transaction();
    v6 = v2[7];
    v5 = v2[8];
    v7 = swift_task_alloc();
    v2[17] = v7;
    *(v7 + 16) = v6;
    *(v7 + 24) = v5;
    v8 = swift_task_alloc();
    v2[18] = v8;
    *v8 = v2;
    v8[1] = sub_1003B7D7C;

    return static Transaction.named<A>(_:with:)();
  }
}

uint64_t sub_1003B7D7C()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = sub_1003B83DC;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_1003B7EA4;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003B7EA4(uint64_t a1)
{
  static Clock<>.continuous.getter();
  *(v1 + 40) = xmmword_1004D77F0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;

  return _swift_task_switch(sub_1003B7F24, 0, 0);
}

uint64_t sub_1003B7F24()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = sub_1003C24A4(&qword_1005B0BC8, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1003C24A4(&qword_1005AFFD0, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v5 = *(v2 + 8);
  v0[20] = v5;
  v0[21] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_1003B80A8;
  v8 = v0[12];
  v7 = v0[13];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v7, v4);
}

uint64_t sub_1003B80A8()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[20];
    v4 = v2[12];
    v5 = v2[9];

    v3(v4, v5);
    v6 = sub_1003B8360;
    v7 = 0;
  }

  else
  {
    v8 = v2[20];
    v10 = v2[14];
    v9 = v2[15];
    v11 = v2[12];
    v12 = v2[13];
    v13 = v2[9];
    v14 = v2[7];
    v8(v11, v13);
    (*(v10 + 8))(v9, v12);
    v6 = sub_1003B8220;
    v7 = v14;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_1003B8220(uint64_t a1, __n128 a2)
{
  if (static Task<>.isCancelled.getter())
  {

    v3 = v2[1];

    return v3();
  }

  else
  {
    v6 = v2[7];
    v5 = v2[8];
    v7 = swift_task_alloc();
    v2[17] = v7;
    *(v7 + 16) = v6;
    *(v7 + 24) = v5;
    v8 = swift_task_alloc();
    v2[18] = v8;
    *v8 = v2;
    v8[1] = sub_1003B7D7C;

    return static Transaction.named<A>(_:with:)();
  }
}

uint64_t sub_1003B8360()
{
  v1 = v0[7];
  (*(v0[14] + 8))(v0[15], v0[13]);

  return _swift_task_switch(sub_1003C3A7C, v1, 0);
}

uint64_t sub_1003B83DC()
{

  if (qword_1005A84E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0B78);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error from shouldPublishFromAP: %{public}@", v4, 0xCu);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  static Clock<>.continuous.getter();
  *(v0 + 40) = xmmword_1004D77F0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;

  return _swift_task_switch(sub_1003B7F24, 0, 0);
}

uint64_t sub_1003B85D0()
{
  if (qword_1005A84E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[3] = sub_10000A6F0(v1, qword_1005E0B78);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Calling interface.pollForFallbackPublishing()", v4, 2u);
  }

  My = MicroFindMyInterface.shouldPublishFromAP()();
  if (v6)
  {
    v7 = v0[1];
LABEL_12:

    return v7();
  }

  if (!My)
  {
    v7 = v0[1];
    goto LABEL_12;
  }

  v8 = *(v0[2] + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_locationMonitor);
  v0[4] = v8;

  return _swift_task_switch(sub_1003B8768, v8, 0);
}

uint64_t sub_1003B8768()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC13findmylocated24BystanderLocationMonitor_pushTokenMonitor);
  *(v0 + 40) = v1;
  return _swift_task_switch(sub_1003B8794, v1, 0);
}

uint64_t sub_1003B8794()
{
  *(v0 + 56) = [*(*(v0 + 40) + 112) isConnected];

  return _swift_task_switch(sub_1003B880C, 0, 0);
}

uint64_t sub_1003B880C(uint64_t a1)
{
  if (*(v1 + 56) == 1)
  {
    v2 = swift_task_alloc();
    *(v1 + 48) = v2;
    *v2 = v1;
    v2[1] = sub_1002F4F88;

    return sub_1003C0238();
  }

  else
  {
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Skipping fallbackPublish() because we're not connected", v6, 2u);
    }

    v7 = *(v1 + 8);

    return v7();
  }
}

uint64_t sub_1003B8958()
{
  v1[10] = v0;
  sub_10004B564(&qword_1005B2D90, &unk_1004D7B90);
  v1[11] = swift_task_alloc();
  v2 = type metadata accessor for HashAlgorithm();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v3 = type metadata accessor for Advertisement();
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  sub_10004B564(&qword_1005B2D70, &qword_1004D7B70);
  v1[18] = swift_task_alloc();
  v4 = type metadata accessor for SearchpartyAccount();
  v1[19] = v4;
  v1[20] = *(v4 - 8);
  v1[21] = swift_task_alloc();
  v5 = type metadata accessor for PublicKey();
  v1[22] = v5;
  v1[23] = *(v5 - 8);
  v1[24] = swift_task_alloc();
  sub_10004B564(&qword_1005B0608, &qword_1004D1F38);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  sub_10004B564(&qword_1005B2DB0, &qword_1004D7BC0);
  v1[27] = swift_task_alloc();
  v6 = sub_10004B564(&qword_1005B2DB8, &qword_1004D7BC8);
  v1[28] = v6;
  v1[29] = *(v6 - 8);
  v1[30] = swift_task_alloc();
  v7 = sub_10004B564(&qword_1005B2DC0, &qword_1004D7BD0);
  v1[31] = v7;
  v1[32] = *(v7 - 8);
  v1[33] = swift_task_alloc();

  return _swift_task_switch(sub_1003B8CE8, v0, 0);
}

void sub_1003B8CE8()
{
  v1 = *(v0[10] + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_sharingKeyStreamProvider);
  v0[34] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[35] = v2;
    *v2 = v0;
    v2[1] = sub_1003B8DA4;
    v3 = v0[30];

    sub_1003C4994(v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1003B8DA4()
{
  v1 = *(*v0 + 80);

  return _swift_task_switch(sub_1003B8ED0, v1, 0);
}

uint64_t sub_1003B8ED0()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 224);
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = sub_1003C24A4(&qword_1005B2D58, type metadata accessor for MicroFindMyService, &unk_1004D7AE8);
  v5 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_interface;
  *(v0 + 288) = v4;
  *(v0 + 296) = v5;
  v6 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_findMyId;
  *(v0 + 360) = enum case for HashAlgorithm.sha256(_:);
  *(v0 + 304) = v6;
  *(v0 + 312) = 0;
  v7 = *(v0 + 80);
  v8 = swift_task_alloc();
  *(v0 + 320) = v8;
  *v8 = v0;
  v8[1] = sub_1003B9010;
  v9 = *(v0 + 248);
  v10 = *(v0 + 216);

  return AsyncStream.Iterator.next(isolation:)(v10, v7, v4, v9);
}

uint64_t sub_1003B9010()
{
  v1 = *(*v0 + 80);

  return _swift_task_switch(sub_1003B9120, v1, 0);
}

uint64_t sub_1003B9120()
{
  v1 = v0[27];
  v2 = sub_10004B564(&qword_1005B2DC8, &qword_1004D7BD8);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[32] + 8))(v0[33], v0[31]);

    v3 = v0[1];

    return v3();
  }

  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[22];
  v8 = v0[23];

  sub_1000176A8(v1 + *(v2 + 48), v5, &qword_1005B0608, &qword_1004D1F38);
  sub_100005F04(v5, v6, &qword_1005B0608, &qword_1004D1F38);
  v9 = *(v8 + 48);
  v0[41] = v9;
  v0[42] = (v8 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v9(v6, 1, v7) == 1)
  {
    sub_100002CE0(v0[25], &qword_1005B0608, &qword_1004D1F38);
    if (qword_1005A84E8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000A6F0(v10, qword_1005E0B78);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Flushing public key because sharingKeyStreamProvider emitted a nil.", v13, 2u);
    }

    MicroFindMyInterface.flushPublicKey()();
    if (!v14)
    {
      goto LABEL_25;
    }

    if ((v0[41])(v0[26], 1, v0[22]) == 1)
    {
      if (qword_1005A84E8 != -1)
      {
        swift_once();
      }

      sub_10000A6F0(v10, qword_1005E0B78);
      swift_errorRetain();
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138543362;
        swift_errorRetain();
        v19 = _swift_stdlib_bridgeErrorToNSError();
        *(v17 + 4) = v19;
        *v18 = v19;
        v20 = "Error flushing public key: %{public}@";
LABEL_23:
        _os_log_impl(&_mh_execute_header, v15, v16, v20, v17, 0xCu);
        sub_100002CE0(v18, &qword_1005A9670, &unk_1004C2480);

LABEL_25:
        sub_100002CE0(v0[26], &qword_1005B0608, &qword_1004D1F38);
        v0[39] = 0;
        v24 = v0[36];
        v25 = v0[10];
        v26 = swift_task_alloc();
        v0[40] = v26;
        *v26 = v0;
        v26[1] = sub_1003B9010;
        v27 = v0[31];
        v28 = v0[27];

        return AsyncStream.Iterator.next(isolation:)(v28, v25, v24, v27);
      }
    }

    else
    {
      if (qword_1005A84E8 != -1)
      {
        swift_once();
      }

      sub_10000A6F0(v10, qword_1005E0B78);
      swift_errorRetain();
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138543362;
        swift_errorRetain();
        v23 = _swift_stdlib_bridgeErrorToNSError();
        *(v17 + 4) = v23;
        *v18 = v23;
        v20 = "Error setting public key: %{public}@";
        goto LABEL_23;
      }
    }

    goto LABEL_25;
  }

  (*(v0[23] + 32))(v0[24], v0[25], v0[22]);
  v21 = swift_task_alloc();
  v0[43] = v21;
  *v21 = v0;
  v21[1] = sub_1003B9744;
  v22 = v0[18];

  return static AppleAccount.searchpartyAccount.getter(v22);
}

uint64_t sub_1003B9744()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = sub_1003BA17C;
  }

  else
  {
    v4 = sub_1003B9870;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003B9870()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  if ((*(v1 + 48))(v2, 1, *(v0 + 152)) == 1)
  {
    sub_100002CE0(v2, &qword_1005B2D70, &qword_1004D7B70);
    if (qword_1005A84E8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005E0B78);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "No account", v6, 2u);
    }

    v8 = *(v0 + 256);
    v7 = *(v0 + 264);
    v9 = *(v0 + 248);
    v10 = *(v0 + 208);
    v12 = *(v0 + 184);
    v11 = *(v0 + 192);
    v13 = *(v0 + 176);

    (*(v12 + 8))(v11, v13);
    (*(v8 + 8))(v7, v9);
    sub_100002CE0(v10, &qword_1005B0608, &qword_1004D1F38);

    v14 = *(v0 + 8);

    return v14();
  }

  v71 = *(v0 + 360);
  v17 = *(v0 + 128);
  v16 = *(v0 + 136);
  v18 = *(v0 + 112);
  v19 = *(v0 + 120);
  v20 = *(v0 + 104);
  v67 = *(v0 + 96);
  v69 = (*(v0 + 80) + *(v0 + 304));
  (*(v1 + 32))();
  PublicKey.advertisement.getter();
  v21 = Advertisement.data.getter();
  v23 = v22;
  (*(v17 + 8))(v16, v19);
  *(v0 + 16) = v21;
  *(v0 + 24) = v23;
  (*(v20 + 104))(v18, v71, v67);
  sub_1000CA210();
  v24 = DataProtocol.hash(algorithm:)();
  v26 = v25;
  (*(v20 + 8))(v18, v67);
  sub_1000049D0(*(v0 + 16), *(v0 + 24));
  Data.base64EncodedString(options:)(0);
  sub_1000049D0(v24, v26);
  SearchpartyAccount.dsid.getter();
  v27 = String.utf8Data.getter();
  v29 = v28;

  v30 = Data.base64EncodedString(options:)(0);
  sub_1000049D0(v27, v29);
  *(v0 + 32) = v30;
  *(v0 + 48) = 61;
  *(v0 + 56) = 0xE100000000000000;
  *(v0 + 64) = 126;
  *(v0 + 72) = 0xE100000000000000;
  sub_1000246F4();
  v31 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v33 = v32;

  *v69 = v31;
  v69[1] = v33;

  if (qword_1005A84E8 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_10000A6F0(v34, qword_1005E0B78);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "Setting new public key after a key roll event.", v37, 2u);
  }

  v38 = *(v0 + 352);

  v39 = PublicKey.data.getter();
  v41 = v40;
  MicroFindMyInterface.set(publicKey:)();
  if (v38)
  {
    v68 = *(v0 + 192);
    v70 = v34;
    v43 = *(v0 + 176);
    v42 = *(v0 + 184);
    v44 = *(v0 + 160);
    v45 = *(v0 + 168);
    v46 = *(v0 + 152);
    sub_1000049D0(v39, v41);

    (*(v44 + 8))(v45, v46);
    (*(v42 + 8))(v68, v43);
    if ((*(v0 + 328))(*(v0 + 208), 1, *(v0 + 176)) == 1)
    {
      if (qword_1005A84E8 != -1)
      {
        swift_once();
      }

      sub_10000A6F0(v70, qword_1005E0B78);
      swift_errorRetain();
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *v57 = 138543362;
        swift_errorRetain();
        v59 = _swift_stdlib_bridgeErrorToNSError();
        *(v57 + 4) = v59;
        *v58 = v59;
        v60 = "Error flushing public key: %{public}@";
LABEL_25:
        _os_log_impl(&_mh_execute_header, v55, v56, v60, v57, 0xCu);
        sub_100002CE0(v58, &qword_1005A9670, &unk_1004C2480);

        goto LABEL_27;
      }
    }

    else
    {
      if (qword_1005A84E8 != -1)
      {
        swift_once();
      }

      sub_10000A6F0(v70, qword_1005E0B78);
      swift_errorRetain();
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *v57 = 138543362;
        swift_errorRetain();
        v61 = _swift_stdlib_bridgeErrorToNSError();
        *(v57 + 4) = v61;
        *v58 = v61;
        v60 = "Error setting public key: %{public}@";
        goto LABEL_25;
      }
    }

    goto LABEL_27;
  }

  v47 = *(v0 + 88);
  sub_1000049D0(v39, v41);
  Identifier.init(keyId:findMyId:)();
  v48 = type metadata accessor for Identifier();
  (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
  MicroFindMyInterface.set(identifier:)();
  v50 = *(v0 + 184);
  v49 = *(v0 + 192);
  v52 = *(v0 + 168);
  v51 = *(v0 + 176);
  v53 = *(v0 + 152);
  v54 = *(v0 + 160);
  sub_100002CE0(*(v0 + 88), &qword_1005B2D90, &unk_1004D7B90);
  (*(v54 + 8))(v52, v53);
  (*(v50 + 8))(v49, v51);
LABEL_27:
  sub_100002CE0(*(v0 + 208), &qword_1005B0608, &qword_1004D1F38);
  *(v0 + 312) = 0;
  v62 = *(v0 + 288);
  v63 = *(v0 + 80);
  v64 = swift_task_alloc();
  *(v0 + 320) = v64;
  *v64 = v0;
  v64[1] = sub_1003B9010;
  v65 = *(v0 + 248);
  v66 = *(v0 + 216);

  return AsyncStream.Iterator.next(isolation:)(v66, v63, v62, v65);
}

uint64_t sub_1003BA17C()
{
  (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
  if ((*(v0 + 328))(*(v0 + 208), 1, *(v0 + 176)) == 1)
  {
    if (qword_1005A84E8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000A6F0(v1, qword_1005E0B78);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138543362;
      swift_errorRetain();
      v6 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 4) = v6;
      *v5 = v6;
      v7 = "Error flushing public key: %{public}@";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v2, v3, v7, v4, 0xCu);
      sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);

      goto LABEL_12;
    }
  }

  else
  {
    if (qword_1005A84E8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000A6F0(v8, qword_1005E0B78);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138543362;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 4) = v9;
      *v5 = v9;
      v7 = "Error setting public key: %{public}@";
      goto LABEL_10;
    }
  }

LABEL_12:
  sub_100002CE0(*(v0 + 208), &qword_1005B0608, &qword_1004D1F38);
  *(v0 + 312) = 0;
  v10 = *(v0 + 288);
  v11 = *(v0 + 80);
  v12 = swift_task_alloc();
  *(v0 + 320) = v12;
  *v12 = v0;
  v12[1] = sub_1003B9010;
  v13 = *(v0 + 248);
  v14 = *(v0 + 216);

  return AsyncStream.Iterator.next(isolation:)(v14, v11, v10, v13);
}

uint64_t sub_1003BA48C()
{
  v1[12] = v0;
  sub_10004B564(&qword_1005B2D90, &unk_1004D7B90);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  My = type metadata accessor for MicroFindMyInterface.Configuration();
  v1[15] = My;
  v1[16] = *(My - 8);
  v1[17] = swift_task_alloc();
  v3 = type metadata accessor for PublicKey();
  v1[18] = v3;
  v1[19] = *(v3 - 8);
  v1[20] = swift_task_alloc();
  v4 = type metadata accessor for HashAlgorithm();
  v1[21] = v4;
  v1[22] = *(v4 - 8);
  v1[23] = swift_task_alloc();
  v5 = type metadata accessor for Advertisement();
  v1[24] = v5;
  v1[25] = *(v5 - 8);
  v1[26] = swift_task_alloc();
  sub_10004B564(&qword_1005B2D70, &qword_1004D7B70);
  v1[27] = swift_task_alloc();
  v6 = type metadata accessor for SearchpartyAccount();
  v1[28] = v6;
  v1[29] = *(v6 - 8);
  v1[30] = swift_task_alloc();
  sub_10004B564(&qword_1005B0608, &qword_1004D1F38);
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v7 = sub_10004B564(&qword_1005B2D98, &qword_1004D7BB0);
  v1[34] = v7;
  v1[35] = *(v7 - 8);
  v1[36] = swift_task_alloc();
  v8 = sub_10004B564(&qword_1005B2DA0, &qword_1004D7BB8);
  v1[37] = v8;
  v1[38] = *(v8 - 8);
  v1[39] = swift_task_alloc();

  return _swift_task_switch(sub_1003BA858, v0, 0);
}

uint64_t sub_1003BA858()
{
  if (qword_1005A7F60 != -1)
  {
    swift_once();
  }

  *(v0 + 80) = *(*(qword_1005DFBF8 + 24) + 24);
  sub_10004B564(&unk_1005AB520, &unk_1004C54A0);
  sub_10001DF0C(&qword_1005AA6F0, &unk_1005AB520, &unk_1004C54A0, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher<>.values.getter();
  AsyncPublisher.makeAsyncIterator()();
  v1 = sub_1003C24A4(&qword_1005B2D58, type metadata accessor for MicroFindMyService, &unk_1004D7AE8);
  v2 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_sharingKeyStreamProvider;
  *(v0 + 320) = v1;
  *(v0 + 328) = v2;
  *(v0 + 336) = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_interface;
  *(v0 + 456) = enum case for HashAlgorithm.sha256(_:);
  v3 = sub_10001DF0C(&qword_1005B2DA8, &qword_1005B2D98, &qword_1004D7BB0, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
  v4 = swift_task_alloc();
  *(v0 + 344) = v4;
  *v4 = v0;
  v4[1] = sub_1003BAA5C;
  v5 = *(v0 + 272);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 460, v5, v3);
}

uint64_t sub_1003BAA5C()
{
  v2 = *v1;
  *(v2 + 352) = v0;

  v3 = *(v2 + 96);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1003BAE04;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1003BABF4;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_1003BABF4()
{
  v1 = *(v0 + 96);
  *(v0 + 462) = *(v0 + 460);
  return _swift_task_switch(sub_1003BAC18, v1, 0);
}

void sub_1003BAC18()
{
  if (*(v0 + 462) == 5)
  {
    v1 = *(v0 + 304);
    v2 = *(v0 + 312);
    v3 = *(v0 + 296);
    (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));
    (*(v1 + 8))(v2, v3);

    v4 = *(v0 + 8);

    v4();
  }

  else
  {
    v5 = *(*(v0 + 96) + *(v0 + 328));
    *(v0 + 360) = v5;
    if (v5)
    {

      v6 = swift_task_alloc();
      *(v0 + 368) = v6;
      *v6 = v0;
      v6[1] = sub_1003BAE90;
      v7 = *(v0 + 264);

      sub_1003C4E84(v7);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1003BAE04()
{
  *(v0 + 88) = *(v0 + 352);
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1003BAE90()
{
  v1 = *(*v0 + 96);

  return _swift_task_switch(sub_1003BAFBC, v1, 0);
}

uint64_t sub_1003BAFBC()
{
  v18 = v0;
  if (qword_1005A84E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 376) = v1;
  *(v0 + 384) = sub_10000A6F0(v1, qword_1005E0B78);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 462);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136446210;
    *(v0 + 461) = v4;
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "meDevice: %{public}s", v5, 0xCu);
    sub_100004984(v6);
  }

  if (*(v0 + 462) - 2 >= 3)
  {
    if (*(v0 + 462))
    {
      v15 = swift_task_alloc();
      *(v0 + 392) = v15;
      *v15 = v0;
      v15[1] = sub_1003BB2EC;
      v16 = *(v0 + 216);

      return static AppleAccount.searchpartyAccount.getter(v16);
    }

    else
    {
      sub_100002CE0(*(v0 + 264), &qword_1005B0608, &qword_1004D1F38);
      v12 = sub_10001DF0C(&qword_1005B2DA8, &qword_1005B2D98, &qword_1004D7BB0, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
      v13 = swift_task_alloc();
      *(v0 + 344) = v13;
      *v13 = v0;
      v13[1] = sub_1003BAA5C;
      v14 = *(v0 + 272);

      return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 460, v14, v12);
    }
  }

  else
  {
    v10 = swift_task_alloc();
    *(v0 + 448) = v10;
    *v10 = v0;
    v10[1] = sub_1003BBF60;

    return sub_1003BF2B0();
  }
}

uint64_t sub_1003BB2EC()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  v3 = *(v2 + 96);
  if (v0)
  {
    v4 = sub_1003BC3D8;
  }

  else
  {
    v4 = sub_1003BB418;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003BB418()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100002CE0(v3, &qword_1005B2D70, &qword_1004D7B70);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "No account even though this device is the Me device!", v6, 2u);
    }

    sub_100002CE0(*(v0 + 264), &qword_1005B0608, &qword_1004D1F38);
    v7 = *(v0 + 304);
    v8 = *(v0 + 312);
    v9 = *(v0 + 296);
    (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));
    (*(v7 + 8))(v8, v9);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v13 = *(v0 + 256);
    v12 = *(v0 + 264);
    v14 = *(v0 + 144);
    v15 = *(v0 + 152);
    (*(v2 + 32))(*(v0 + 240), v3, v1);
    sub_100005F04(v12, v13, &qword_1005B0608, &qword_1004D1F38);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_100002CE0(*(v0 + 256), &qword_1005B0608, &qword_1004D1F38);
      countAndFlagsBits = 0;
      object = 0;
    }

    else
    {
      v42 = *(v0 + 456);
      v18 = *(v0 + 256);
      v20 = *(v0 + 200);
      v19 = *(v0 + 208);
      v21 = *(v0 + 184);
      v22 = *(v0 + 192);
      v23 = *(v0 + 168);
      v24 = *(v0 + 176);
      v26 = *(v0 + 144);
      v25 = *(v0 + 152);
      PublicKey.advertisement.getter();
      (*(v25 + 8))(v18, v26);
      v27 = Advertisement.data.getter();
      v29 = v28;
      (*(v20 + 8))(v19, v22);
      *(v0 + 64) = v27;
      *(v0 + 72) = v29;
      (*(v24 + 104))(v21, v42, v23);
      sub_1000CA210();
      v30 = DataProtocol.hash(algorithm:)();
      v32 = v31;
      (*(v24 + 8))(v21, v23);
      sub_1000049D0(*(v0 + 64), *(v0 + 72));
      v33 = Data.base64EncodedString(options:)(0);
      countAndFlagsBits = v33._countAndFlagsBits;
      object = v33._object;
      sub_1000049D0(v30, v32);
    }

    *(v0 + 408) = countAndFlagsBits;
    *(v0 + 416) = object;
    SearchpartyAccount.dsid.getter();
    v34 = String.utf8Data.getter();
    v36 = v35;

    v37 = Data.base64EncodedString(options:)(0);
    sub_1000049D0(v34, v36);
    *(v0 + 16) = v37;
    *(v0 + 32) = 61;
    *(v0 + 40) = 0xE100000000000000;
    *(v0 + 48) = 126;
    *(v0 + 56) = 0xE100000000000000;
    sub_1000246F4();
    v38 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v40 = v39;

    *(v0 + 424) = v38;
    *(v0 + 432) = v40;
    v41 = swift_task_alloc();
    *(v0 + 440) = v41;
    *v41 = v0;
    v41[1] = sub_1003BB8D8;

    return sub_1003BF2B0();
  }
}

uint64_t sub_1003BB8D8()
{
  v1 = *(*v0 + 96);

  return _swift_task_switch(sub_1003BB9E8, v1, 0);
}

uint64_t sub_1003BB9E8()
{
  (*(v0[29] + 8))(v0[30], v0[28]);
  v1 = v0[54];
  v2 = v0[52];
  v3 = v0[50];
  v4 = v0[31];
  v5 = v0[18];
  v6 = v0[19];
  sub_100005F04(v0[33], v4, &qword_1005B0608, &qword_1004D1F38);
  v7 = (*(v6 + 48))(v4, 1, v5);
  v8 = v0[31];
  if (v7 == 1)
  {

    sub_100002CE0(v8, &qword_1005B0608, &qword_1004D1F38);
    goto LABEL_8;
  }

  (*(v0[19] + 32))(v0[20], v0[31], v0[18]);
  if (!v2 || !v1)
  {
    (*(v0[19] + 8))(v0[20], v0[18]);

LABEL_8:
    MicroFindMyInterface.flushPublicKey()();
    if (!v15)
    {
      v16 = v0[13];
      v17 = type metadata accessor for Identifier();
      (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
      MicroFindMyInterface.set(identifier:)();
      sub_100002CE0(v0[13], &qword_1005B2D90, &unk_1004D7B90);
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  sub_1003BC61C();
  MicroFindMyInterface.set(configuration:)();
  if (!v3)
  {
    (*(v0[16] + 8))(v0[17], v0[15]);
    v26 = PublicKey.data.getter();
    v28 = v27;
    MicroFindMyInterface.set(publicKey:)();
    v29 = v0[14];
    sub_1000049D0(v26, v28);
    Identifier.init(keyId:findMyId:)();
    v30 = type metadata accessor for Identifier();
    (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
    MicroFindMyInterface.set(identifier:)();
    v32 = v0[19];
    v31 = v0[20];
    v33 = v0[18];
    sub_100002CE0(v0[14], &qword_1005B2D90, &unk_1004D7B90);
    (*(v32 + 8))(v31, v33);
    goto LABEL_15;
  }

  v10 = v0[19];
  v9 = v0[20];
  v12 = v0[17];
  v11 = v0[18];
  v13 = v0[15];
  v14 = v0[16];

  (*(v14 + 8))(v12, v13);
  (*(v10 + 8))(v9, v11);
LABEL_10:
  if (qword_1005A84F0 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v0[47], qword_1005E0B90);
  swift_errorRetain();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138543362;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 4) = v22;
    *v21 = v22;
    _os_log_impl(&_mh_execute_header, v18, v19, "Error configuring MicroFindMy: %{public}@", v20, 0xCu);
    sub_100002CE0(v21, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

LABEL_15:
  sub_100002CE0(v0[33], &qword_1005B0608, &qword_1004D1F38);
  v23 = sub_10001DF0C(&qword_1005B2DA8, &qword_1005B2D98, &qword_1004D7BB0, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
  v24 = swift_task_alloc();
  v0[43] = v24;
  *v24 = v0;
  v24[1] = sub_1003BAA5C;
  v25 = v0[34];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 460, v25, v23);
}

uint64_t sub_1003BBF60()
{
  v1 = *(*v0 + 96);

  return _swift_task_switch(sub_1003BC070, v1, 0);
}

uint64_t sub_1003BC070()
{
  v1 = v0[31];
  v2 = v0[18];
  v3 = v0[19];
  sub_100005F04(v0[33], v1, &qword_1005B0608, &qword_1004D1F38);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[31];
  if (v4 == 1)
  {
    swift_bridgeObjectRelease_n();
    sub_100002CE0(v5, &qword_1005B0608, &qword_1004D1F38);
  }

  else
  {
    (*(v0[19] + 32))(v0[20], v0[31], v0[18]);
    (*(v0[19] + 8))(v0[20], v0[18]);
  }

  MicroFindMyInterface.flushPublicKey()();
  if (v6)
  {
    if (qword_1005A84F0 != -1)
    {
      swift_once();
    }

    sub_10000A6F0(v0[47], qword_1005E0B90);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138543362;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v9, v10, "Error configuring MicroFindMy: %{public}@", v11, 0xCu);
      sub_100002CE0(v12, &qword_1005A9670, &unk_1004C2480);
    }

    else
    {
    }
  }

  else
  {
    v7 = v0[13];
    v8 = type metadata accessor for Identifier();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    MicroFindMyInterface.set(identifier:)();
    sub_100002CE0(v0[13], &qword_1005B2D90, &unk_1004D7B90);
  }

  sub_100002CE0(v0[33], &qword_1005B0608, &qword_1004D1F38);
  v14 = sub_10001DF0C(&qword_1005B2DA8, &qword_1005B2D98, &qword_1004D7BB0, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
  v15 = swift_task_alloc();
  v0[43] = v15;
  *v15 = v0;
  v15[1] = sub_1003BAA5C;
  v16 = v0[34];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 460, v16, v14);
}

uint64_t sub_1003BC3D8()
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to get account: %{public}@", v3, 0xCu);
    sub_100002CE0(v4, &qword_1005A9670, &unk_1004C2480);
  }

  sub_100002CE0(v0[33], &qword_1005B0608, &qword_1004D1F38);
  v6 = v0[38];
  v7 = v0[39];
  v8 = v0[37];
  (*(v0[35] + 8))(v0[36], v0[34]);
  (*(v6 + 8))(v7, v8);

  v9 = v0[1];

  return v9();
}

void sub_1003BC61C()
{
  v0 = type metadata accessor for SecureLocationsConfig(0);
  __chkstk_darwin(v0);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v3 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

  os_unfair_lock_lock(v3);
  v4 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
  sub_1003C326C(v3 + *(v4 + 28), v2, type metadata accessor for SecureLocationsConfig);
  os_unfair_lock_unlock(v3);

  v5 = *&v2[*(v0 + 80)];

  sub_1003C32D4(v2, type metadata accessor for SecureLocationsConfig);
  if (!*(v5 + 16) || (v6 = sub_1000110D8(0xD000000000000013, 0x80000001004DDB80), (v7 & 1) == 0))
  {

LABEL_16:
    MicroFindMyInterface.Configuration.init(activeDurationInSeconds:timeThresholdInSeconds:distanceThresholdInMeters:minimumTimeBetweenPublishInSeconds:)();
    return;
  }

  v8 = (*(v5 + 56) + 88 * v6);
  v9 = v8[1];
  v10 = v8[7];
  v11 = v8[9];

  if (v9 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_21;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v11 < 9.22337204e18)
  {
    goto LABEL_16;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_1003BC8B4()
{
  v1[13] = v0;
  sub_10004B564(&qword_1005B2D90, &unk_1004D7B90);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  My = type metadata accessor for MicroFindMyInterface.Configuration();
  v1[16] = My;
  v1[17] = *(My - 8);
  v1[18] = swift_task_alloc();
  v3 = type metadata accessor for PublicKey();
  v1[19] = v3;
  v1[20] = *(v3 - 8);
  v1[21] = swift_task_alloc();
  v4 = type metadata accessor for HashAlgorithm();
  v1[22] = v4;
  v1[23] = *(v4 - 8);
  v1[24] = swift_task_alloc();
  v5 = type metadata accessor for Advertisement();
  v1[25] = v5;
  v1[26] = *(v5 - 8);
  v1[27] = swift_task_alloc();
  sub_10004B564(&qword_1005B2D70, &qword_1004D7B70);
  v1[28] = swift_task_alloc();
  v6 = type metadata accessor for SearchpartyAccount();
  v1[29] = v6;
  v1[30] = *(v6 - 8);
  v1[31] = swift_task_alloc();
  sub_10004B564(&qword_1005B0608, &qword_1004D1F38);
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v7 = type metadata accessor for AccountService.State(0);
  v1[35] = v7;
  v1[36] = *(v7 - 8);
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  sub_10004B564(&qword_1005B02E8, &unk_1004D7BA0);
  v1[39] = swift_task_alloc();
  sub_10004B564(&qword_1005B02F8, &qword_1004D1870);
  v1[40] = swift_task_alloc();
  v8 = sub_10004B564(&qword_1005B02F0, &unk_1004D6A70);
  v1[41] = v8;
  v1[42] = *(v8 - 8);
  v1[43] = swift_task_alloc();

  return _swift_task_switch(sub_1003BCCF0, v0, 0);
}

uint64_t sub_1003BCCF0()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 104);
  v3 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_accountStream;
  swift_beginAccess();
  sub_100005F04(v2 + v3, v1, &qword_1005B02F8, &qword_1004D1870);
  v4 = sub_10004B564(&unk_1005AFB18, &qword_1004D12E8);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v1, 1, v4);
  if (v6 == 1)
  {
    __break(1u);
  }

  else
  {
    v10 = *(v0 + 320);
    AsyncStream.makeAsyncIterator()();
    (*(v5 + 8))(v10, v4);
    v11 = sub_1003C24A4(&qword_1005B2D58, type metadata accessor for MicroFindMyService, &unk_1004D7AE8);
    v12 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_sharingKeyStreamProvider;
    *(v0 + 352) = v11;
    *(v0 + 360) = v12;
    v13 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_interface;
    *(v0 + 464) = enum case for HashAlgorithm.sha256(_:);
    *(v0 + 368) = v13;
    *(v0 + 376) = 0;
    v14 = *(v0 + 104);
    v15 = swift_task_alloc();
    *(v0 + 384) = v15;
    *v15 = v0;
    v15[1] = sub_1003BCED8;
    v9 = *(v0 + 328);
    v6 = *(v0 + 312);
    v7 = v14;
    v8 = v11;
  }

  return AsyncStream.Iterator.next(isolation:)(v6, v7, v8, v9);
}

uint64_t sub_1003BCED8()
{
  v1 = *(*v0 + 104);

  return _swift_task_switch(sub_1003BCFE8, v1, 0);
}

uint64_t sub_1003BCFE8()
{
  v1 = v0[39];
  if ((*(v0[36] + 48))(v1, 1, v0[35]) == 1)
  {
    (*(v0[42] + 8))(v0[43], v0[41]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[45];
    v5 = v0[13];
    result = sub_1003C3498(v1, v0[38], type metadata accessor for AccountService.State);
    v6 = *(v5 + v4);
    v0[49] = v6;
    if (v6)
    {

      v7 = swift_task_alloc();
      v0[50] = v7;
      *v7 = v0;
      v7[1] = sub_1003BD214;
      v8 = v0[34];

      return sub_1003C4E84(v8);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1003BD214()
{
  v1 = *(*v0 + 104);

  return _swift_task_switch(sub_1003BD340, v1, 0);
}

uint64_t sub_1003BD340()
{
  v1 = v0[37];
  sub_1003C326C(v0[38], v1, type metadata accessor for AccountService.State);
  v2 = sub_10004B564(&qword_1005AFFD8, &qword_1004D14D8);
  v3 = (*(*(v2 - 8) + 48))(v1, 3, v2);
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      v7 = v0[32];
      v8 = v0[19];
      v9 = v0[20];
      sub_100005F04(v0[34], v7, &qword_1005B0608, &qword_1004D1F38);
      v10 = (*(v9 + 48))(v7, 1, v8);
      v11 = v0[32];
      if (v10 == 1)
      {
        swift_bridgeObjectRelease_n();
        sub_100002CE0(v11, &qword_1005B0608, &qword_1004D1F38);
      }

      else
      {
        (*(v0[20] + 32))(v0[21], v0[32], v0[19]);
        (*(v0[20] + 8))(v0[21], v0[19]);
      }

      MicroFindMyInterface.flushPublicKey()();
      if (v12)
      {
        if (qword_1005A84E8 != -1)
        {
          swift_once();
        }

        v15 = type metadata accessor for Logger();
        sub_10000A6F0(v15, qword_1005E0B78);
        swift_errorRetain();
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          *v18 = 138543362;
          swift_errorRetain();
          v20 = _swift_stdlib_bridgeErrorToNSError();
          *(v18 + 4) = v20;
          *v19 = v20;
          _os_log_impl(&_mh_execute_header, v16, v17, "Error configuring MicroFindMy: %{public}@", v18, 0xCu);
          sub_100002CE0(v19, &qword_1005A9670, &unk_1004C2480);
        }
      }

      else
      {
        v13 = v0[14];
        v14 = type metadata accessor for Identifier();
        (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
        MicroFindMyInterface.set(identifier:)();
        sub_100002CE0(v0[14], &qword_1005B2D90, &unk_1004D7B90);
      }

      v6 = 0;
      goto LABEL_19;
    }
  }

  else if (!v3)
  {
    v4 = swift_task_alloc();
    v0[51] = v4;
    *v4 = v0;
    v4[1] = sub_1003BD798;
    v5 = v0[28];

    return static AppleAccount.searchpartyAccount.getter(v5);
  }

  v6 = v0[47];
LABEL_19:
  v21 = v0[38];
  sub_100002CE0(v0[34], &qword_1005B0608, &qword_1004D1F38);
  sub_1003C32D4(v21, type metadata accessor for AccountService.State);
  v0[47] = v6;
  v22 = v0[44];
  v23 = v0[13];
  v24 = swift_task_alloc();
  v0[48] = v24;
  *v24 = v0;
  v24[1] = sub_1003BCED8;
  v25 = v0[41];
  v26 = v0[39];

  return AsyncStream.Iterator.next(isolation:)(v26, v23, v22, v25);
}

uint64_t sub_1003BD798()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  v3 = *(v2 + 104);
  if (v0)
  {
    v4 = sub_1003BE4E4;
  }

  else
  {
    v4 = sub_1003BD8C4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003BD8C4()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100002CE0(v3, &qword_1005B2D70, &qword_1004D7B70);
    if (qword_1005A84E8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A6F0(v4, qword_1005E0B78);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "No account even though accountStream in .available state!", v7, 2u);
    }

    v9 = *(v0 + 336);
    v8 = *(v0 + 344);
    v10 = *(v0 + 328);
    v11 = *(v0 + 304);
    sub_100002CE0(*(v0 + 272), &qword_1005B0608, &qword_1004D1F38);
    sub_1003C32D4(v11, type metadata accessor for AccountService.State);
    (*(v9 + 8))(v8, v10);
    v12 = type metadata accessor for Account();
    (*(*(v12 - 8) + 8))(*(v0 + 296), v12);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v16 = *(v0 + 264);
    v15 = *(v0 + 272);
    v17 = *(v0 + 152);
    v18 = *(v0 + 160);
    (*(v2 + 32))(*(v0 + 248), v3, v1);
    sub_100005F04(v15, v16, &qword_1005B0608, &qword_1004D1F38);
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      sub_100002CE0(*(v0 + 264), &qword_1005B0608, &qword_1004D1F38);
      countAndFlagsBits = 0;
      object = 0;
    }

    else
    {
      v45 = *(v0 + 464);
      v21 = *(v0 + 264);
      v23 = *(v0 + 208);
      v22 = *(v0 + 216);
      v24 = *(v0 + 192);
      v25 = *(v0 + 200);
      v26 = *(v0 + 176);
      v27 = *(v0 + 184);
      v29 = *(v0 + 152);
      v28 = *(v0 + 160);
      PublicKey.advertisement.getter();
      (*(v28 + 8))(v21, v29);
      v30 = Advertisement.data.getter();
      v32 = v31;
      (*(v23 + 8))(v22, v25);
      *(v0 + 88) = v30;
      *(v0 + 96) = v32;
      (*(v27 + 104))(v24, v45, v26);
      sub_1000CA210();
      v33 = DataProtocol.hash(algorithm:)();
      v35 = v34;
      (*(v27 + 8))(v24, v26);
      sub_1000049D0(*(v0 + 88), *(v0 + 96));
      v36 = Data.base64EncodedString(options:)(0);
      countAndFlagsBits = v36._countAndFlagsBits;
      object = v36._object;
      sub_1000049D0(v33, v35);
    }

    *(v0 + 424) = countAndFlagsBits;
    *(v0 + 432) = object;
    SearchpartyAccount.dsid.getter();
    v37 = String.utf8Data.getter();
    v39 = v38;

    v40 = Data.base64EncodedString(options:)(0);
    sub_1000049D0(v37, v39);
    *(v0 + 40) = v40;
    *(v0 + 56) = 61;
    *(v0 + 64) = 0xE100000000000000;
    *(v0 + 72) = 126;
    *(v0 + 80) = 0xE100000000000000;
    sub_1000246F4();
    v41 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v43 = v42;

    *(v0 + 440) = v41;
    *(v0 + 448) = v43;
    v44 = swift_task_alloc();
    *(v0 + 456) = v44;
    *v44 = v0;
    v44[1] = sub_1003BDE30;

    return sub_1003BF2B0();
  }
}

uint64_t sub_1003BDE30()
{
  v1 = *(*v0 + 104);

  return _swift_task_switch(sub_1003BDF40, v1, 0);
}

uint64_t sub_1003BDF40()
{
  v1 = v0[37];
  (*(v0[30] + 8))(v0[31], v0[29]);
  v2 = type metadata accessor for Account();
  (*(*(v2 - 8) + 8))(v1, v2);
  v3 = v0[56];
  v4 = v0[54];
  v5 = v0[52];
  v6 = v0[32];
  v7 = v0[19];
  v8 = v0[20];
  sub_100005F04(v0[34], v6, &qword_1005B0608, &qword_1004D1F38);
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = v0[32];
  if (v9 == 1)
  {

    sub_100002CE0(v10, &qword_1005B0608, &qword_1004D1F38);
    goto LABEL_8;
  }

  (*(v0[20] + 32))(v0[21], v0[32], v0[19]);
  if (!v4 || !v3)
  {
    (*(v0[20] + 8))(v0[21], v0[19]);

LABEL_8:
    MicroFindMyInterface.flushPublicKey()();
    if (!v17)
    {
      v18 = v0[14];
      v19 = type metadata accessor for Identifier();
      (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
      MicroFindMyInterface.set(identifier:)();
      sub_100002CE0(v0[14], &qword_1005B2D90, &unk_1004D7B90);
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  sub_1003BC61C();
  MicroFindMyInterface.set(configuration:)();
  if (!v5)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);
    v32 = PublicKey.data.getter();
    v34 = v33;
    MicroFindMyInterface.set(publicKey:)();
    v35 = v0[15];
    sub_1000049D0(v32, v34);
    Identifier.init(keyId:findMyId:)();
    v36 = type metadata accessor for Identifier();
    (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
    MicroFindMyInterface.set(identifier:)();
    v38 = v0[20];
    v37 = v0[21];
    v39 = v0[19];
    sub_100002CE0(v0[15], &qword_1005B2D90, &unk_1004D7B90);
    (*(v38 + 8))(v37, v39);
    goto LABEL_15;
  }

  v12 = v0[20];
  v11 = v0[21];
  v14 = v0[18];
  v13 = v0[19];
  v15 = v0[16];
  v16 = v0[17];

  (*(v16 + 8))(v14, v15);
  (*(v12 + 8))(v11, v13);
LABEL_10:
  if (qword_1005A84E8 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000A6F0(v20, qword_1005E0B78);
  swift_errorRetain();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138543362;
    swift_errorRetain();
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 4) = v25;
    *v24 = v25;
    _os_log_impl(&_mh_execute_header, v21, v22, "Error configuring MicroFindMy: %{public}@", v23, 0xCu);
    sub_100002CE0(v24, &qword_1005A9670, &unk_1004C2480);
  }

LABEL_15:
  v26 = v0[38];
  sub_100002CE0(v0[34], &qword_1005B0608, &qword_1004D1F38);
  sub_1003C32D4(v26, type metadata accessor for AccountService.State);
  v0[47] = 0;
  v27 = v0[44];
  v28 = v0[13];
  v29 = swift_task_alloc();
  v0[48] = v29;
  *v29 = v0;
  v29[1] = sub_1003BCED8;
  v30 = v0[41];
  v31 = v0[39];

  return AsyncStream.Iterator.next(isolation:)(v31, v28, v27, v30);
}

uint64_t sub_1003BE4E4()
{
  if (qword_1005A84E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0B78);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get account: %{public}@", v4, 0xCu);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);
  }

  v8 = v0[42];
  v7 = v0[43];
  v9 = v0[41];
  v10 = v0[38];
  sub_100002CE0(v0[34], &qword_1005B0608, &qword_1004D1F38);
  sub_1003C32D4(v10, type metadata accessor for AccountService.State);
  (*(v8 + 8))(v7, v9);
  v11 = type metadata accessor for Account();
  (*(*(v11 - 8) + 8))(v0[37], v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1003BE7D4()
{
  v1[4] = v0;
  v2 = sub_10004B564(&qword_1005B2D80, &qword_1004D7B80);
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = sub_10004B564(&qword_1005B2D88, &qword_1004D7B88);
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_1003BE908, v0, 0);
}

uint64_t sub_1003BE908()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1003BE9AC;
  v2 = *(v0 + 80);

  return sub_1003AE728(v2);
}

uint64_t sub_1003BE9AC()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_1003BF0F8;
  }

  else
  {
    v4 = sub_1003BEAD8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003BEAD8()
{
  AsyncStream.makeAsyncIterator()();
  v1 = sub_1003C24A4(&qword_1005B2D58, type metadata accessor for MicroFindMyService, &unk_1004D7AE8);
  v2 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_connectedWatches;
  v0[13] = v1;
  v0[14] = v2;
  v3 = v0[4];
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_1003BEBDC;
  v5 = v0[5];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, v3, v1, v5);
}

uint64_t sub_1003BEBDC()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_1003BECEC, v1, 0);
}

uint64_t sub_1003BECEC()
{
  v17 = v0;
  if (v0[2])
  {
    v1 = v0[3];

    if (qword_1005A84E8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A6F0(v2, qword_1005E0B78);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v16 = v6;
      *v5 = 136315138;
      v7 = Array.description.getter();
      v9 = sub_10000D01C(v7, v8, &v16);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "Connected watches: %s", v5, 0xCu);
      sub_100004984(v6);
    }

    *(v0[4] + v0[14]) = v1;

    v10 = swift_task_alloc();
    v0[16] = v10;
    *v10 = v0;
    v10[1] = sub_1003BEF60;

    return sub_1003BF2B0();
  }

  else
  {
    v13 = v0[9];
    v12 = v0[10];
    v14 = v0[8];
    (*(v0[6] + 8))(v0[7], v0[5]);
    (*(v13 + 8))(v12, v14);

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1003BEF60()
{
  v1 = *v0;
  v2 = *v0;

  v3 = v1[13];
  v4 = v1[4];
  v5 = swift_task_alloc();
  v1[15] = v5;
  *v5 = v2;
  v5[1] = sub_1003BEBDC;
  v6 = v1[5];

  return AsyncStream.Iterator.next(isolation:)(v1 + 2, v4, v3, v6);
}

uint64_t sub_1003BF0F8()
{
  if (qword_1005A84E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0B78);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error configuring MicroFindMy: %{public}@", v4, 0xCu);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1003BF2B0()
{
  v1[2] = v0;
  v2 = type metadata accessor for Date();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for TimeZone();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = type metadata accessor for SecureLocationsConfig(0);
  v1[10] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();
  sub_10004B564(&qword_1005B2D70, &qword_1004D7B70);
  v5 = swift_task_alloc();
  v1[14] = v5;
  v6 = type metadata accessor for SearchpartyAccount();
  v1[15] = v6;
  v1[16] = *(v6 - 8);
  v1[17] = swift_task_alloc();
  sub_10004B564(&qword_1005B2D78, &qword_1004D7B78);
  v1[18] = swift_task_alloc();
  v7 = swift_task_alloc();
  v1[19] = v7;
  *v7 = v1;
  v7[1] = sub_1003BF560;

  return static AppleAccount.searchpartyAccount.getter(v5);
}

uint64_t sub_1003BF560()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_1003BFC58;
  }

  else
  {
    v4 = sub_1003BF68C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003BF68C()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100002CE0(v3, &qword_1005B2D70, &qword_1004D7B70);
    v4 = 1;
  }

  else
  {
    (*(v2 + 32))(v0[17], v3, v1);
    if (*(RequestCredential.authHeaders.getter() + 16) && (sub_1000110D8(0x7A69726F68747541, 0xED00006E6F697461), (v5 & 1) != 0))
    {
    }

    else
    {
    }

    if (qword_1005A7EF8 != -1)
    {
      swift_once();
    }

    v33 = v0[17];
    v31 = v0[16];
    v32 = v0[15];
    v6 = v0[12];
    v7 = v0[13];
    v8 = v0[10];
    v9 = v0[9];
    v26 = v0[8];
    v27 = v0[11];
    v29 = v0[7];
    v30 = v0[6];
    v11 = v0[4];
    v10 = v0[5];
    v12 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);
    v28 = v0[3];

    os_unfair_lock_lock(v12);
    v13 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
    sub_1003C326C(v12 + *(v13 + 28), v8, type metadata accessor for SecureLocationsConfig);
    os_unfair_lock_unlock(v12);

    (*(v6 + 16))(v7, v8 + *(v9 + 76), v27);
    sub_1003C32D4(v8, type metadata accessor for SecureLocationsConfig);
    sub_1003C2D00();
    _StringGuts.grow(_:)(25);

    v14._countAndFlagsBits = sub_1003C2DF0();
    String.append(_:)(v14);

    static TimeZone.current.getter();
    Date.init()();
    TimeZone.abbreviation(for:)();
    (*(v11 + 8))(v10, v28);
    (*(v29 + 8))(v26, v30);
    static SystemInfo.uniqueDeviceID.getter();

    MicroFindMyInterface.EndpointConfiguration.init(url:contextApp:authorization:mmeClientInfo:userAgent:timezone:udid:connectedWatches:useTestInstances:)();
    (*(v31 + 8))(v33, v32);
    v4 = 0;
  }

  v15 = v0[20];
  v16 = v0[18];
  My = type metadata accessor for MicroFindMyInterface.EndpointConfiguration();
  (*(*(My - 8) + 56))(v16, v4, 1, My);
  MicroFindMyInterface.set(endpointConfiguration:)();
  if (v15)
  {
    if (qword_1005A84E8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000A6F0(v18, qword_1005E0B78);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138543362;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "set(endpointConfiguration:) failed: %{public}@", v21, 0xCu);
      sub_100002CE0(v22, &qword_1005A9670, &unk_1004C2480);
    }

    else
    {
    }
  }

  sub_100002CE0(v0[18], &qword_1005B2D78, &qword_1004D7B78);

  v24 = v0[1];

  return v24();
}

uint64_t sub_1003BFC58()
{
  if (qword_1005A84E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0B78);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get account: %{public}@", v4, 0xCu);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v7 = *(v0 + 144);
  My = type metadata accessor for MicroFindMyInterface.EndpointConfiguration();
  (*(*(My - 8) + 56))(v7, 1, 1, My);
  MicroFindMyInterface.set(endpointConfiguration:)();
  sub_100002CE0(*(v0 + 144), &qword_1005B2D78, &qword_1004D7B78);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1003BFFFC(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  MyInterface = type metadata accessor for MicroFindMyInterface();
  v7 = *(MyInterface - 8);
  __chkstk_darwin(MyInterface);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005A84E8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000A6F0(v10, qword_1005E0B78);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v20 = MyInterface;
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Forwarding location command payload to MicroFindMy", v13, 2u);
    v4 = v3;
    MyInterface = v20;
  }

  (*(v7 + 16))(v9, v5 + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_interface, MyInterface);
  v14 = sub_1003C2A38();
  if (v4)
  {
    return (*(v7 + 8))(v9, MyInterface);
  }

  v17 = v14;
  v18 = v15;
  MicroFindMyInterface.simulateRecievePush(payload:)();
  (*(v7 + 8))(v9, MyInterface);
  return sub_1000049D0(v17, v18);
}

uint64_t sub_1003C0238()
{
  v1[5] = v0;
  sub_10004B564(&qword_1005B27B8, &unk_1004D7B60);
  v1[6] = swift_task_alloc();
  v2 = type metadata accessor for Location();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[11] = v3;
  *v3 = v1;
  v3[1] = sub_1003C036C;

  return daemon.getter();
}

uint64_t sub_1003C036C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 96) = a1;

  v3 = swift_task_alloc();
  *(v2 + 104) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for LocationService(0);
  v6 = sub_1003C24A4(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1003C24A4(&qword_1005A9308, type metadata accessor for LocationService, &unk_1004D65B0);
  *v3 = v9;
  v3[1] = sub_1003C0548;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003C0548(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v5 = sub_1003C10E4;
  }

  else
  {

    v5 = sub_1003C0688;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1003C0688()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_locationMonitor);
  *(v0 + 128) = v1;
  return _swift_task_switch(sub_1003C06B4, v1, 0);
}

uint64_t sub_1003C06B4()
{
  v1 = v0[16];
  v2 = v0[5];
  v3 = v0[6];
  v4 = OBJC_IVAR____TtC13findmylocated24BystanderLocationMonitor_cachedLatestLocation;
  swift_beginAccess();
  sub_100005F04(v1 + v4, v3, &qword_1005B27B8, &unk_1004D7B60);

  return _swift_task_switch(sub_1003C075C, v2, 0);
}

uint64_t sub_1003C075C()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_100002CE0(v3, &qword_1005B27B8, &unk_1004D7B60);
LABEL_3:

    v4 = v0[1];

    return v4();
  }

  v6 = v0[5];
  (*(v2 + 32))(v0[10], v3, v1);
  v7 = *(v6 + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_findMyId + 8);
  if (!v7)
  {
    if (qword_1005A84E8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000A6F0(v19, qword_1005E0B78);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "No findMyID -- not signed in?", v22, 2u);
    }

    MicroFindMyInterface.markAsPublishedFromAP()();
    (*(v0[8] + 8))(v0[10], v0[7]);

    goto LABEL_3;
  }

  v8 = *(v6 + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_findMyId);
  v9 = qword_1005A84E8;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000A6F0(v10, qword_1005E0B78);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Fallback publish because MicroFindMy does not have network acccess", v13, 2u);
  }

  v15 = v0[9];
  v14 = v0[10];
  v16 = v0[7];
  v17 = v0[8];

  sub_10039610C();
  (*(v17 + 16))(v15, v14, v16);
  v0[17] = sub_1003C116C(v8, v7, v15);
  v18 = swift_task_alloc();
  v0[18] = v18;
  *v18 = v0;
  v18[1] = sub_1003C0B08;

  return sub_10001CC28();
}

uint64_t sub_1003C0B08(uint64_t a1)
{
  *(*v1 + 152) = a1;

  return _swift_task_switch(sub_1003C0C08, 0, 0);
}

uint64_t sub_1003C0C08()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = swift_task_alloc();
  v0[20] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = sub_1003C0D00;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000013, 0x80000001004E8830, sub_100396104, v3, &type metadata for () + 1);
}

uint64_t sub_1003C0D00()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1003C0F5C;
  }

  else
  {

    v2 = sub_1003C0E1C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003C0E1C()
{
  v1 = *(v0 + 40);

  return _swift_task_switch(sub_1003C0E94, v1, 0);
}

uint64_t sub_1003C0E94()
{
  MicroFindMyInterface.markAsPublishedFromAP()();
  (*(v0[8] + 8))(v0[10], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1003C0F5C()
{
  v1 = *(v0 + 112);

  return _swift_task_switch(sub_1003C0FD0, v1, 0);
}

uint64_t sub_1003C0FD0()
{
  v1 = *(v0 + 40);

  return _swift_task_switch(sub_1003C103C, v1, 0);
}

uint64_t sub_1003C103C()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003C10E4()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1003C116C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = String._bridgeToObjectiveC()();

  [v8 setFindMyId:v9];

  Location.latitude.getter();
  [v8 setLatitude:?];
  Location.longitude.getter();
  [v8 setLongitude:?];
  Location.horizontalAccuracy.getter();
  [v8 setHorizontalAccuracy:?];
  [v8 setVerticalAccuracy:0.0];
  [v8 setSpeed:-1.0];
  [v8 setCourse:-1.0];
  [v8 setAltitude:0.0];
  Location.timestamp.getter();
  Date.init(timeIntervalSinceReferenceDate:)();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v5 + 8))(v7, v4);
  [v8 setTimestamp:isa];

  [v8 setMotionActivityState:0];
  [v8 setPublishReason:0];

  v11 = type metadata accessor for Location();
  (*(*(v11 - 8) + 8))(a3, v11);
  return v8;
}

uint64_t sub_1003C13BC()
{

  v1 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_interface;
  MyInterface = type metadata accessor for MicroFindMyInterface();
  (*(*(MyInterface - 8) + 8))(v0 + v1, MyInterface);

  sub_100002CE0(v0 + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_accountStream, &qword_1005B02F8, &qword_1004D1870);
  sub_100002CE0(v0 + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_configStream, &qword_1005B2E00, &qword_1004D7CC8);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1003C14E0()
{
  sub_1003C13BC();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1003C150C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  MyService = type metadata accessor for MicroFindMyService(0);
  *v4 = v2;
  v4[1] = sub_10000368C;

  return ActorServiceProtocol.initialLaunchProcessing()(MyService, a2);
}

uint64_t sub_1003C15B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  MyService = type metadata accessor for MicroFindMyService(0);
  *v8 = v4;
  v8[1] = sub_10000368C;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, MyService, a4);
}

uint64_t sub_1003C1680(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  MyService = type metadata accessor for MicroFindMyService(0);
  *v4 = v2;
  v4[1] = sub_100003690;

  return ActorServiceProtocol.firstLaunchSinceReboot()(MyService, a2);
}

uint64_t sub_1003C172C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003690;

  return sub_1003B12DC();
}

uint64_t sub_1003C17B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003788;

  return sub_1003B211C();
}

uint64_t sub_1003C1844()
{
  type metadata accessor for MicroFindMyService(0);
  sub_1003C24A4(&qword_1005A9DF8, type metadata accessor for MicroFindMyService, &unk_1004D7A88);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_1003C18B0(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v8 = static String.Encoding.== infix(_:_:)();
  v9 = *(v5 + 8);
  v9(v7, v4);
  if ((v8 & 1) == 0)
  {
    static String.Encoding.ascii.getter();
    v10 = static String.Encoding.== infix(_:_:)();
    v9(v7, v4);
    if ((v10 & 1) == 0)
    {
      static String.Encoding.nonLossyASCII.getter();
      v11 = static String.Encoding.== infix(_:_:)();
      v9(v7, v4);
      if ((v11 & 1) == 0)
      {
        goto LABEL_10;
      }
    }
  }

  v13 = sub_1003C29B4(v12);
  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = v13;
  static String.Encoding.utf8.getter();
  v16 = static String.Encoding.== infix(_:_:)();
  v9(v7, v4);
  if (v16)
  {

LABEL_17:
    v9(a2, v4);
    return v15;
  }

  if ((_StringGuts._isContiguousASCII.getter() & 1) == 0)
  {

LABEL_10:
    v17 = *(a1 + 16);
    if (v17)
    {
      v7 = 0;
      while (v7[a1 + 32])
      {
        if (v17 == ++v7)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v18 = [objc_allocWithZone(NSString) initWithBytes:a1 + 32 length:v7 encoding:String.Encoding.rawValue.getter()];

    if (!v18)
    {
      v9(a2, v4);
      return 0;
    }

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    goto LABEL_17;
  }

  v9(a2, v4);

  return v15;
}

uint64_t EncryptedLocation.keyIdentifier.getter()
{
  v1 = *v0;
  sub_100005F6C(*v0, *(v0 + 8));
  return v1;
}

uint64_t EncryptedLocation.fmt.getter()
{
  return *(v0 + 16);
}

{
  return EncryptedLocation.fmt.getter();
}

uint64_t EncryptedLocation.locationTs.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EncryptedLocation(0) + 24);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EncryptedLocation.encryptedLocation.getter()
{
  v1 = v0 + *(type metadata accessor for EncryptedLocation(0) + 28);
  v2 = *v1;
  sub_100005F6C(*v1, *(v1 + 8));
  return v2;
}

{
  return EncryptedLocation.encryptedLocation.getter();
}

unint64_t sub_1003C1CB0()
{
  v1 = 0x746E65644979656BLL;
  v2 = 0x6E6F697461636F6CLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 7630182;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1003C1D38@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1003C30F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1003C1D60(uint64_t a1)
{
  v2 = sub_1003C203C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003C1D9C(uint64_t a1)
{
  v2 = sub_1003C203C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t EncryptedLocation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005B2A08, &qword_1004D7810);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  sub_100011AEC(a1, a1[3]);
  sub_1003C203C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v14 = *v3;
  v15 = v9;
  v16 = 0;
  sub_100005F6C(v14, v9);
  sub_10010670C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_1000049D0(v14, v15);
  if (!v2)
  {
    LOBYTE(v14) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = type metadata accessor for EncryptedLocation(0);
    LOBYTE(v14) = 2;
    type metadata accessor for Date();
    sub_1003C24A4(&qword_1005A9848, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = (v3 + *(v10 + 28));
    v12 = v11[1];
    v14 = *v11;
    v15 = v12;
    v16 = 3;
    sub_100005F6C(v14, v12);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000049D0(v14, v15);
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1003C203C()
{
  result = qword_1005B2A10;
  if (!qword_1005B2A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B2A10);
  }

  return result;
}

uint64_t EncryptedLocation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for Date();
  v24 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10004B564(&qword_1005B2A18, &qword_1004D7818);
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v8 = v20 - v7;
  v9 = type metadata accessor for EncryptedLocation(0);
  __chkstk_darwin(v9);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v26 = a1;
  sub_100011AEC(a1, v12);
  sub_1003C203C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(v26);
  }

  v21 = v6;
  v13 = v11;
  v14 = v23;
  v15 = v24;
  v28 = 0;
  v16 = sub_1000F4D64();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *v13 = v27;
  LOBYTE(v27) = 1;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  v20[1] = v16;
  *(v13 + 16) = v17;
  LOBYTE(v27) = 2;
  sub_1003C24A4(&qword_1005A9820, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v18 = v21;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v15 + 32))(v13 + *(v9 + 24), v18, v4);
  v28 = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v14 + 8))(v8, v25);
  *(v13 + *(v9 + 28)) = v27;
  sub_1003C326C(v13, v22, type metadata accessor for EncryptedLocation);
  sub_100004984(v26);
  return sub_1003C32D4(v13, type metadata accessor for EncryptedLocation);
}

uint64_t sub_1003C24A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1003C2544(uint64_t a1)
{
  type metadata accessor for MicroFindMyInterface();
  if (v1 <= 0x3F)
  {
    sub_1001AE28C(319, &qword_1005AFB10, &unk_1005AFB18, &qword_1004D12E8);
    if (v2 <= 0x3F)
    {
      sub_1001AE28C(319, &qword_1005B2AB0, &unk_1005B2AB8, &unk_1004D7950);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1003C2708(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1003C27A0()
{
  result = qword_1005B2D48;
  if (!qword_1005B2D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B2D48);
  }

  return result;
}

unint64_t sub_1003C2888()
{
  result = qword_1005B2D60;
  if (!qword_1005B2D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B2D60);
  }

  return result;
}

unint64_t sub_1003C28E0()
{
  result = qword_1005B2D68;
  if (!qword_1005B2D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B2D68);
  }

  return result;
}

uint64_t sub_1003C2934()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0B90);
  sub_10000A6F0(v0, qword_1005E0B90);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1003C29B4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    v3 = *(result + 32);
    result += 32;
    if (!v3)
    {
LABEL_6:
      v7 = static String._tryFromUTF8(_:)();
      swift_unknownObjectRelease();
      return v7;
    }

    v4 = 0;
    v5 = v1 - 1;
    while (v5 != v4)
    {
      if (!*(v2 + 33 + v4++))
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1003C2A38()
{
  v0 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v13 = 0;
  v2 = [v0 JSONObjectWithData:isa options:0 error:&v13];

  if (!v2)
  {
    v9 = v13;
LABEL_8:
    _convertNSErrorToError(_:)();

    goto LABEL_9;
  }

  v3 = v13;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v4 = sub_10004B564(&qword_1005A9DC8, &unk_1004D0DC0);
  if (!swift_dynamicCast())
  {
    v9 = type metadata accessor for GenericError();
    sub_1003C24A4(&unk_1005B27C0, &type metadata accessor for GenericError, &protocol conformance descriptor for GenericError);
    swift_allocError();
    *v10 = 0xD000000000000015;
    v10[1] = 0x80000001004E9290;
    (*(*(v9 - 1) + 104))(v10, enum case for GenericError.error(_:), v9);
LABEL_9:
    swift_willThrow();
    return v9;
  }

  v14 = v4;
  *&v13 = *&v12[0];
  sub_10004B064(&v13, v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1004528F8(v12, 0x7377796D646E6966, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  v6 = Dictionary._bridgeToObjectiveC()().super.isa;

  *&v13 = 0;
  v7 = [v0 dataWithJSONObject:v6 options:0 error:{&v13, _swiftEmptyDictionarySingleton}];

  v8 = v13;
  if (!v7)
  {
    v9 = v8;
    goto LABEL_8;
  }

  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v9;
}

uint64_t sub_1003C2D00()
{
  _StringGuts.grow(_:)(40);

  v0._countAndFlagsBits = static SystemInfo.productType.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x6E6F6850693C203ELL;
  v1._object = 0xED00003B534F2065;
  String.append(_:)(v1);
  v2._countAndFlagsBits = static SystemInfo.osVersion.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 59;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = static SystemInfo.buildVersion.getter();
  String.append(_:)(v4);

  v5._object = 0x80000001004E93D0;
  v5._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v5);
  return 60;
}