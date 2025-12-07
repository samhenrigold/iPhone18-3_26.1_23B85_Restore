uint64_t sub_100F924F8()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  *(*v1 + 128) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_100F928C0;
  }

  else
  {
    v5 = sub_100F92668;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100F92668()
{
  v21 = v0;
  if (qword_101694E98 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177C0A8);
  v1(v2, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 56);
  v9 = *(v0 + 64);
  v11 = *(v0 + 48);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136446210;
    sub_100F989D0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v20);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Successfully unpaired pencil: %{public}s", v12, 0xCu);
    sub_100007BAC(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  (*(v0 + 32))(0);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100F928C0()
{
  if (qword_101694E98 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C0A8);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Error unpairing pencil: %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  v7 = v0[16];
  v8 = v0[4];

  swift_errorRetain();
  v8(v7);

  v9 = v0[1];

  return v9();
}

void sub_100F92CB4(char a1, uint64_t a2, uint64_t a3)
{
  if (qword_101694B78 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177B7E0);
  v8 = v3;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v11 = 136446466;
    swift_getObjectType();
    v12 = _typeName(_:qualified:)();
    v14 = sub_1000136BC(v12, v13, &v15);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_1000136BC(0xD000000000000038, 0x8000000101374FA0, &v15);
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: %{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  sub_1000035D0(&v8[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation], *&v8[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24]);
  sub_100A40740(a1 & 1, a2, a3);
}

uint64_t sub_100F92EC0(void *a1, int a2, uint64_t a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a1;
  a7(a3, a6, v12);
}

uint64_t sub_100F92F5C(uint64_t (*a1)(void))
{
  if (qword_101694B78 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177B7E0);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v7 = 136446466;
    swift_getObjectType();
    v8 = _typeName(_:qualified:)();
    v10 = sub_1000136BC(v8, v9, &v12);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_1000136BC(0xD000000000000019, 0x8000000101374F80, &v12);
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  return a1(0);
}

uint64_t sub_100F93144(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

uint64_t sub_100F931D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a4;
  v8 = type metadata accessor for UUID();
  v7[5] = v8;
  v7[6] = *(v8 - 8);
  v7[7] = swift_task_alloc();
  v7[8] = swift_task_alloc();

  return _swift_task_switch(sub_100F932A8, 0, 0);
}

uint64_t sub_100F932A8()
{
  v23 = v0;
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  v0[9] = sub_1000076D4(v5, qword_10177B7F8);
  v6 = *(v3 + 16);
  v0[10] = v6;
  v0[11] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[8];
  v11 = v0[5];
  v12 = v0[6];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_1000136BC(0xD000000000000025, 0x8000000101374F50, &v22);
    *(v13 + 12) = 2082;
    sub_100F989D0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_1000136BC(v14, v16, &v22);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s beacon:%{public}s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[12] = v17;
  v19 = swift_task_alloc();
  v0[13] = v19;
  *v19 = v0;
  v19[1] = sub_100F9357C;
  v20 = v0[2];

  return sub_100718F74(v20);
}

uint64_t sub_100F9357C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 112) = v2;

  if (v2)
  {
    v7 = sub_100F936B0;
  }

  else
  {
    *(v6 + 120) = a2;
    *(v6 + 128) = a1;
    v7 = sub_100F993C0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100F936B0()
{
  v21 = v0;
  (*(v0 + 80))(*(v0 + 56), *(v0 + 16), *(v0 + 40));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v19 = *(v0 + 96);
    v3 = *(v0 + 56);
    v4 = *(v0 + 40);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v5 = 136315650;
    *(v5 + 4) = sub_1000136BC(0xD000000000000025, 0x8000000101374F50, &v20);
    *(v5 + 12) = 2082;
    sub_100F989D0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = v8;
    v19(v3, v4);
    v10 = sub_1000136BC(v7, v9, &v20);

    *(v5 + 14) = v10;
    *(v5 + 22) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 24) = v11;
    *v6 = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s beacon:%{public}s %{public}@", v5, 0x20u);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v12 = *(v0 + 96);
    v13 = *(v0 + 56);
    v14 = *(v0 + 40);

    v12(v13, v14);
  }

  v15 = *(v0 + 112);
  v16 = *(v0 + 24);
  swift_errorRetain();
  v16(0, 0xF000000000000000, v15);

  v17 = *(v0 + 8);

  return v17();
}

void sub_100F939D4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, isa);
}

uint64_t sub_100F93A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a4;
  v8 = type metadata accessor for UUID();
  v7[5] = v8;
  v7[6] = *(v8 - 8);
  v7[7] = swift_task_alloc();
  v7[8] = swift_task_alloc();

  return _swift_task_switch(sub_100F93B3C, 0, 0);
}

uint64_t sub_100F93B3C()
{
  v23 = v0;
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  v0[9] = sub_1000076D4(v5, qword_10177B7F8);
  v6 = *(v3 + 16);
  v0[10] = v6;
  v0[11] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[8];
  v11 = v0[5];
  v12 = v0[6];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_1000136BC(0xD000000000000024, 0x8000000101374F20, &v22);
    *(v13 + 12) = 2082;
    sub_100F989D0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_1000136BC(v14, v16, &v22);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s beacon:%{public}s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[12] = v17;
  v19 = swift_task_alloc();
  v0[13] = v19;
  *v19 = v0;
  v19[1] = sub_100F93E10;
  v20 = v0[2];

  return sub_10071B5A8(v20);
}

uint64_t sub_100F93E10(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 112) = v2;

  if (v2)
  {
    v7 = sub_100F93FF4;
  }

  else
  {
    *(v6 + 120) = a2;
    *(v6 + 128) = a1;
    v7 = sub_100F93F44;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100F93F44()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[3];
  sub_100017D5C(v1, v2);
  v3(v1, v2, 0);
  sub_100016590(v1, v2);
  sub_100016590(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100F93FF4()
{
  v21 = v0;
  (*(v0 + 80))(*(v0 + 56), *(v0 + 16), *(v0 + 40));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v19 = *(v0 + 96);
    v3 = *(v0 + 56);
    v4 = *(v0 + 40);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v5 = 136315650;
    *(v5 + 4) = sub_1000136BC(0xD000000000000024, 0x8000000101374F20, &v20);
    *(v5 + 12) = 2082;
    sub_100F989D0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = v8;
    v19(v3, v4);
    v10 = sub_1000136BC(v7, v9, &v20);

    *(v5 + 14) = v10;
    *(v5 + 22) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 24) = v11;
    *v6 = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s beacon:%{public}s %{public}@", v5, 0x20u);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v12 = *(v0 + 96);
    v13 = *(v0 + 56);
    v14 = *(v0 + 40);

    v12(v13, v14);
  }

  v15 = *(v0 + 112);
  v16 = *(v0 + 24);
  swift_errorRetain();
  v16(0, 0xF000000000000000, v15);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100F94318(void *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a7;
  v33 = a8;
  v30 = a6;
  v31 = a1;
  v9 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v9 - 8);
  v11 = &v30 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v16 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v30 - v17;
  v19 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
  (*(v13 + 16))(v16, v18, v12);
  v22 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v23 = (v14 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  (*(v13 + 32))(v24 + v22, v16, v12);
  v26 = v31;
  v25 = v32;
  *(v24 + v23) = v31;
  v27 = (v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v27 = v25;
  v27[1] = v20;
  v28 = v26;

  sub_10025EDD4(0, 0, v11, v33, v24);

  return (*(v13 + 8))(v18, v12);
}

uint64_t sub_100F945A8(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(uint64_t, unint64_t, uint64_t))
{
  if (a3)
  {
    if (qword_101694690 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177AC90);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    sub_1007BF380(a1, a2, 1);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138543362;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "Error reading raw posh metadata: %{public}@", v10, 0xCu);
      sub_10000B3A8(v11, &qword_10169BB30, &unk_10138B3C0);
    }

    v13 = 0;
    v14 = 0xF000000000000000;
    v15 = a1;
  }

  else
  {
    if (qword_101694690 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000076D4(v16, qword_10177AC90);
    sub_100017D5C(a1, a2);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    sub_1007BF380(a1, a2, 0);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 136315138;
      v21 = Data.description.getter();
      v23 = sub_1000136BC(v21, v22, &v25);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Read raw posh metadata: %s", v19, 0xCu);
      sub_100007BAC(v20);
    }

    v13 = a1;
    v14 = a2;
    v15 = 0;
  }

  return a4(v13, v14, v15);
}

id sub_100F949B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 - 8);
  __chkstk_darwin(v9);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 32))(v14, a1, a3);
  v15 = (*(a4 + 16))(a3, a4);
  v16 = (*(a4 + 24))(a3, a4);
  v17 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v18 = (*(a4 + 32))(a3, a4);
  (*(a4 + 8))(a3, a4);
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v8 + 8))(v11, v7);
  v20 = [v17 initWithCoordinate:isa altitude:v15 horizontalAccuracy:v16 verticalAccuracy:-1.0 timestamp:{v18, -1.0}];

  (*(v12 + 8))(v14, a3);
  return v20;
}

void sub_100F94C20(uint64_t a1, uint64_t a2, void *aBlock)
{
  _Block_copy(aBlock);
  v6 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v7 = qword_10177C370;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v9 = String.init<A>(describing:)();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  v12 = sub_100008C00();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  *(v8 + 96) = &type metadata for String;
  *(v8 + 104) = v12;
  *(v8 + 64) = v12;
  *(v8 + 72) = 0xD000000000000017;
  *(v8 + 80) = 0x800000010135D780;
  os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v7, "%{public}@: %{public}s", 22, 2, v8);

  v13 = sub_1000035D0((a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_100700AF8(a1, *v13, aBlock);
  _Block_release(aBlock);
}

void sub_100F94DB0(uint64_t *a1, uint64_t a2, void *aBlock)
{
  _Block_copy(aBlock);
  v6 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v7 = qword_10177C370;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v9 = String.init<A>(describing:)();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  v12 = sub_100008C00();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  *(v8 + 96) = &type metadata for String;
  *(v8 + 104) = v12;
  *(v8 + 64) = v12;
  *(v8 + 72) = 0xD000000000000026;
  *(v8 + 80) = 0x8000000101375630;
  os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v7, "%{public}@: %{public}s", 22, 2, v8);

  v13 = sub_1000035D0((a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_1007067F8(a1, *v13, aBlock);
  _Block_release(aBlock);
}

void sub_100F94F40(uint64_t a1, uint64_t a2, void *aBlock)
{
  _Block_copy(aBlock);
  v6 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v7 = qword_10177C370;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v9 = String.init<A>(describing:)();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  v12 = sub_100008C00();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  *(v8 + 96) = &type metadata for String;
  *(v8 + 104) = v12;
  *(v8 + 64) = v12;
  *(v8 + 72) = 0xD00000000000002BLL;
  *(v8 + 80) = 0x8000000101375600;
  os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v7, "%{public}@: %{public}s", 22, 2, v8);

  v13 = sub_1000035D0((a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_100707E44(a1, *v13, aBlock);
  _Block_release(aBlock);
}

void sub_100F950D0(void *a1, uint64_t a2, void *aBlock)
{
  _Block_copy(aBlock);
  v6 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v7 = qword_10177C370;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v9 = String.init<A>(describing:)();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  v12 = sub_100008C00();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  *(v8 + 96) = &type metadata for String;
  *(v8 + 104) = v12;
  *(v8 + 64) = v12;
  *(v8 + 72) = 0xD00000000000002BLL;
  *(v8 + 80) = 0x80000001013755D0;
  os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v7, "%{public}@: %{public}s", 22, 2, v8);

  v13 = sub_1000035D0((a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_100708A5C(a1, *v13, aBlock);
  _Block_release(aBlock);
}

void sub_100F95260(uint64_t a1, uint64_t a2, void *aBlock)
{
  _Block_copy(aBlock);
  v6 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v7 = qword_10177C370;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v9 = String.init<A>(describing:)();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  v12 = sub_100008C00();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  *(v8 + 96) = &type metadata for String;
  *(v8 + 104) = v12;
  *(v8 + 64) = v12;
  *(v8 + 72) = 0xD000000000000031;
  *(v8 + 80) = 0x8000000101375590;
  os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v7, "%{public}@: %{public}s", 22, 2, v8);

  v13 = sub_1000035D0((a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_100709DE0(a1, *v13, aBlock);
  _Block_release(aBlock);
}

void sub_100F953F0(unint64_t a1, uint64_t a2, uint64_t a3, void *aBlock)
{
  _Block_copy(aBlock);
  v8 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v9 = qword_10177C370;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v11 = String.init<A>(describing:)();
  v13 = v12;
  *(v10 + 56) = &type metadata for String;
  v14 = sub_100008C00();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  *(v10 + 96) = &type metadata for String;
  *(v10 + 104) = v14;
  *(v10 + 64) = v14;
  *(v10 + 72) = 0xD00000000000002BLL;
  *(v10 + 80) = 0x8000000101375560;
  os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "%{public}@: %{public}s", 22, 2, v10);

  v15 = sub_1000035D0((a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_10070ABB8(a1, a2, 0, *v15, aBlock);
  _Block_release(aBlock);
}

void sub_100F9558C(uint64_t a1, uint64_t a2)
{
  v3 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v4 = qword_10177C370;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10138BBE0;
  *&v12[0] = swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v6 = String.init<A>(describing:)();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  v9 = sub_100008C00();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  *(v5 + 96) = &type metadata for String;
  *(v5 + 104) = v9;
  *(v5 + 64) = v9;
  *(v5 + 72) = 0xD00000000000001FLL;
  *(v5 + 80) = 0x8000000101375540;
  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "%{public}@: %{public}s", 22, 2, v5);

  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  sub_1010743B8(*&v12[0], v12);

  v14[0] = v12[0];
  v14[1] = v12[1];
  v14[2] = v12[2];
  v15 = v13;
  sub_10038E124(v14, &v11);
  sub_10015056C(v12);
  v10 = MacBeaconConfig.xpcObject()();
  sub_100F992FC(v14);
  (*(a2 + 16))(a2, v10, 0);
}

void sub_100F957B4(char a1, uint64_t a2, void (**a3)(void))
{
  *(swift_allocObject() + 16) = a3;
  sub_1000035D0((a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  _Block_copy(a3);
  if (sub_100EFAE94())
  {
    v6 = type metadata accessor for Transaction();
    __chkstk_darwin(v6);
    static Transaction.named<A>(_:with:)();
    v7 = [objc_opt_self() standardUserDefaults];
    [v7 setUserHasAcknowledgedFindMy:a1 & 1];
  }

  else
  {
    a3[2](a3);
  }
}

void sub_100F95948(unint64_t a1, uint64_t a2, char a3, uint64_t a4, void *aBlock)
{
  _Block_copy(aBlock);
  v9 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v10 = qword_10177C370;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v12 = String.init<A>(describing:)();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  v15 = sub_100008C00();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  *(v11 + 96) = &type metadata for String;
  *(v11 + 104) = v15;
  *(v11 + 64) = v15;
  *(v11 + 72) = 0xD00000000000003CLL;
  *(v11 + 80) = 0x800000010135D610;
  os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "%{public}@: %{public}s", 22, 2, v11);

  v16 = sub_1000035D0((a4 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a4 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_10070ABB8(a1, a2, a3 & 1, *v16, aBlock);
  _Block_release(aBlock);
}

void sub_100F95AE8(uint64_t a1, void *a2, uint64_t a3, void (**a4)(const void *, Class))
{
  v34 = a2;
  v31 = a1;
  v6 = sub_1000BC4D4(&qword_1016C1A80, &qword_1013F54C8);
  __chkstk_darwin(v6 - 8);
  v8 = &v29 - v7;
  v33 = type metadata accessor for TimeBasedKeysCriteria(0);
  v9 = *(v33 - 8);
  __chkstk_darwin(v33);
  v30 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = swift_allocObject();
  *(v35 + 16) = a4;
  v32 = a4;
  _Block_copy(a4);
  v11 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v12 = qword_10177C370;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10138BBE0;
  ObjectType = swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v14 = String.init<A>(describing:)();
  v29 = a3;
  v15 = v14;
  v17 = v16;
  *(v13 + 56) = &type metadata for String;
  v18 = sub_100008C00();
  *(v13 + 32) = v15;
  *(v13 + 40) = v17;
  *(v13 + 96) = &type metadata for String;
  *(v13 + 104) = v18;
  *(v13 + 64) = v18;
  *(v13 + 72) = 0xD000000000000021;
  *(v13 + 80) = 0x80000001013754D0;
  os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "%{public}@: %{public}s", 22, 2, v13);

  v19 = v34;
  sub_1008864D4(v19, v8);
  if ((*(v9 + 48))(v8, 1, v33) == 1)
  {
    sub_10000B3A8(v8, &qword_1016C1A80, &qword_1013F54C8);
    v20 = static os_log_type_t.error.getter();
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_101385D80;
    v22 = v19;
    v23 = [v22 description];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    *(v21 + 56) = &type metadata for String;
    *(v21 + 64) = v18;
    *(v21 + 32) = v24;
    *(v21 + 40) = v26;
    os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v12, "Failed to init criteria %@", 26, 2, v21);

    sub_100008BB8(0, &qword_1016C1A88, SPCommandKey_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v32[2](v32, isa);
  }

  else
  {
    v28 = v30;
    sub_100887D08(v8, v30);
    sub_1000035D0((v29 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v29 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
    sub_1006BE1F8(v31, v28, sub_100F99248, v35);
    sub_100F99274(v28, type metadata accessor for TimeBasedKeysCriteria);
  }
}

void sub_100F95EF8(uint64_t a1, void *aBlock)
{
  _Block_copy(aBlock);
  v4 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v5 = qword_10177C370;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v7 = String.init<A>(describing:)();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  v10 = sub_100008C00();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = v10;
  *(v6 + 64) = v10;
  *(v6 + 72) = 0xD00000000000002ALL;
  *(v6 + 80) = 0x800000010135D460;
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "%{public}@: %{public}s", 22, 2, v6);

  v11 = sub_1000035D0((a1 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a1 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_10070B938(*v11, aBlock);
  _Block_release(aBlock);
}

void sub_100F96078(uint64_t a1, void *aBlock)
{
  _Block_copy(aBlock);
  v4 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v5 = qword_10177C370;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v7 = String.init<A>(describing:)();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  v10 = sub_100008C00();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = v10;
  *(v6 + 64) = v10;
  *(v6 + 72) = 0xD00000000000001BLL;
  *(v6 + 80) = 0x800000010135D420;
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "%{public}@: %{public}s", 22, 2, v6);

  v11 = sub_1000035D0((a1 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a1 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_10070C7F8(*v11, aBlock);
  _Block_release(aBlock);
}

void sub_100F961F8(void *a1, uint64_t a2, uint64_t a3, void *aBlock)
{
  _Block_copy(aBlock);
  v8 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v9 = qword_10177C370;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v11 = String.init<A>(describing:)();
  v13 = v12;
  *(v10 + 56) = &type metadata for String;
  v14 = sub_100008C00();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  *(v10 + 96) = &type metadata for String;
  *(v10 + 104) = v14;
  *(v10 + 64) = v14;
  *(v10 + 72) = 0xD00000000000001FLL;
  *(v10 + 80) = 0x800000010135D350;
  os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "%{public}@: %{public}s", 22, 2, v10);

  v15 = sub_1000035D0((a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_10070CD88(a1, a2, *v15, aBlock);
  _Block_release(aBlock);
}

void sub_100F96390(void (*a1)(char *, uint64_t), void *a2, uint64_t a3, void *aBlock)
{
  _Block_copy(aBlock);
  v8 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v9 = qword_10177C370;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v11 = String.init<A>(describing:)();
  v13 = v12;
  *(v10 + 56) = &type metadata for String;
  v14 = sub_100008C00();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  *(v10 + 96) = &type metadata for String;
  *(v10 + 104) = v14;
  *(v10 + 64) = v14;
  *(v10 + 72) = 0xD000000000000023;
  *(v10 + 80) = 0x800000010135D0A0;
  os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "%{public}@: %{public}s", 22, 2, v10);

  v15 = sub_1000035D0((a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_10070DDC0(a1, a2, *v15, aBlock);
  _Block_release(aBlock);
}

void sub_100F96528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *aBlock)
{
  _Block_copy(aBlock);
  v19 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v11 = qword_10177C370;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v13 = String.init<A>(describing:)();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  v16 = sub_100008C00();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  *(v12 + 96) = &type metadata for String;
  *(v12 + 104) = v16;
  *(v12 + 64) = v16;
  *(v12 + 72) = 0xD000000000000039;
  *(v12 + 80) = 0x8000000101375490;
  os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, v11, "%{public}@: %{public}s", 22, 2, v12);

  v17 = sub_1000035D0((a5 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a5 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  if ((a2 | a1 | a3) < 0)
  {
    __break(1u);
  }

  else
  {
    sub_10070F644(a1, a2, a3, a4, *v17, aBlock);
    _Block_release(aBlock);
  }
}

void sub_100F966E0(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock)
{
  _Block_copy(aBlock);
  v8 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v9 = qword_10177C370;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v11 = String.init<A>(describing:)();
  v13 = v12;
  *(v10 + 56) = &type metadata for String;
  v14 = sub_100008C00();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  *(v10 + 96) = &type metadata for String;
  *(v10 + 104) = v14;
  *(v10 + 64) = v14;
  *(v10 + 72) = 0xD00000000000002BLL;
  *(v10 + 80) = 0x800000010135CFD0;
  os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "%{public}@: %{public}s", 22, 2, v10);

  v15 = sub_1000035D0((a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_10070F468(a2, *v15, aBlock);
    _Block_release(aBlock);
  }
}

void sub_100F9687C(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock)
{
  _Block_copy(aBlock);
  v8 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v9 = qword_10177C370;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v11 = String.init<A>(describing:)();
  v13 = v12;
  *(v10 + 56) = &type metadata for String;
  v14 = sub_100008C00();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  *(v10 + 96) = &type metadata for String;
  *(v10 + 104) = v14;
  *(v10 + 64) = v14;
  *(v10 + 72) = 0xD00000000000002FLL;
  *(v10 + 80) = 0x800000010135CFA0;
  os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "%{public}@: %{public}s", 22, 2, v10);

  v15 = sub_1000035D0((a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_10070FF28(a1, a2, *v15, aBlock);
  _Block_release(aBlock);
}

void sub_100F96A14(uint64_t a1, char *a2, uint64_t a3, void *aBlock)
{
  _Block_copy(aBlock);
  v8 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v9 = qword_10177C370;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v11 = String.init<A>(describing:)();
  v13 = v12;
  *(v10 + 56) = &type metadata for String;
  v14 = sub_100008C00();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  *(v10 + 96) = &type metadata for String;
  *(v10 + 104) = v14;
  *(v10 + 64) = v14;
  *(v10 + 72) = 0xD000000000000024;
  *(v10 + 80) = 0x8000000101375460;
  os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "%{public}@: %{public}s", 22, 2, v10);

  v15 = sub_1000035D0((a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    sub_1007106F0(a1, a2, *v15, aBlock);
    _Block_release(aBlock);
  }
}

void sub_100F96BB4(unint64_t a1, uint64_t a2, void *aBlock)
{
  _Block_copy(aBlock);
  v6 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v7 = qword_10177C370;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v9 = String.init<A>(describing:)();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  v12 = sub_100008C00();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  *(v8 + 96) = &type metadata for String;
  *(v8 + 104) = v12;
  *(v8 + 64) = v12;
  *(v8 + 72) = 0xD000000000000038;
  *(v8 + 80) = 0x8000000101375420;
  os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v7, "%{public}@: %{public}s", 22, 2, v8);

  v13 = sub_1000035D0((a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_100713C58(a1, *v13, aBlock);
  _Block_release(aBlock);
}

uint64_t sub_100F96D44(char *a1, uint64_t a2, const void *a3, void (**a4)(void, void))
{
  v31 = a1;
  v32 = a3;
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v29 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v14 - 8);
  v16 = &v29 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  v18 = sub_100513050(a2);
  if (v18 == 8)
  {
    sub_1007BEBB0();
    swift_allocError();
    *v19 = 0;
    _Block_copy(a4);
    v20 = _convertErrorToNSError(_:)();
    (a4)[2](a4, v20);
  }

  else
  {
    v22 = v18;
    v23 = type metadata accessor for TaskPriority();
    (*(*(v23 - 8) + 56))(v16, 1, 1, v23);
    (*(v11 + 16))(&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v31, v10);
    sub_100015794(v32, v9);
    v24 = *(v11 + 80);
    v31 = v9;
    v32 = a4;
    v25 = (v24 + 33) & ~v24;
    v26 = (v12 + *(v30 + 80) + v25) & ~*(v30 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    *(v27 + 32) = v22;
    (*(v11 + 32))(v27 + v25, v13, v10);
    sub_10012C154(v31, v27 + v26);
    v28 = (v27 + ((v7 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v28 = sub_10026AE30;
    v28[1] = v17;
    _Block_copy(v32);

    sub_10025EDD4(0, 0, v16, &unk_1013F54C0, v27);
  }
}

void sub_100F970E0(uint64_t a1, char a2, uint64_t a3, void *aBlock)
{
  _Block_copy(aBlock);
  v8 = static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v9 = qword_10177C3B0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v11 = String.init<A>(describing:)();
  v13 = v12;
  *(v10 + 56) = &type metadata for String;
  v14 = sub_100008C00();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  *(v10 + 96) = &type metadata for String;
  *(v10 + 104) = v14;
  *(v10 + 64) = v14;
  *(v10 + 72) = 0xD00000000000001ELL;
  *(v10 + 80) = 0x8000000101375400;
  os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "%{public}@: %{public}s", 22, 2, v10);

  v15 = sub_1000035D0((a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_100408A2C(a1, a2 & 1, *v15, aBlock);
  _Block_release(aBlock);
}

void sub_100F97278(uint64_t a1, void *aBlock)
{
  _Block_copy(aBlock);
  v4 = static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v5 = qword_10177C3B0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v7 = String.init<A>(describing:)();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  v10 = sub_100008C00();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = v10;
  *(v6 + 64) = v10;
  *(v6 + 72) = 0xD000000000000020;
  *(v6 + 80) = 0x80000001013753D0;
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "%@: %s", 6, 2, v6);

  v11 = sub_1000035D0((a1 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a1 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_100403718(*v11, aBlock);
  _Block_release(aBlock);
}

void sub_100F973F8(char a1, uint64_t a2, void *aBlock)
{
  _Block_copy(aBlock);
  v5 = static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v6 = qword_10177C3B0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v8 = String.init<A>(describing:)();
  v10 = v9;
  *(v7 + 56) = &type metadata for String;
  v11 = sub_100008C00();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  *(v7 + 96) = &type metadata for String;
  *(v7 + 104) = v11;
  *(v7 + 64) = v11;
  *(v7 + 72) = 0xD000000000000027;
  *(v7 + 80) = 0x80000001013753A0;
  os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "%{public}@: %{public}s", 22, 2, v7);

  sub_100409474(a1 & 1, aBlock);
  _Block_release(aBlock);
}

uint64_t sub_100F97568(uint64_t a1, uint64_t a2)
{
  v3 = static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v4 = qword_10177C3B0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v6 = String.init<A>(describing:)();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  v9 = sub_100008C00();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  *(v5 + 96) = &type metadata for String;
  *(v5 + 104) = v9;
  *(v5 + 64) = v9;
  *(v5 + 72) = 0xD000000000000022;
  *(v5 + 80) = 0x8000000101375370;
  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "%{public}@: %{public}s", 22, 2, v5);

  v10 = [objc_opt_self() standardUserDefaults];
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 BOOLForKey:v11];

  return (*(a2 + 16))(a2, v12);
}

uint64_t sub_100F97734(uint64_t a1)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {

    goto LABEL_8;
  }

  v4 = sub_100771D58(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0 || (sub_100013894(*(a1 + 56) + 32 * v4, &v51), sub_1000BC4D4(&qword_1016C1A38, &unk_1013F5438), (swift_dynamicCast() & 1) == 0))
  {
LABEL_8:

    return a1;
  }

  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v7;
  v52 = sub_1000BC4D4(&qword_1016C1A40, &qword_101399650);
  v8 = *&v50[0] + 64;
  v9 = 1 << *(*&v50[0] + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(*&v50[0] + 64);
  v12 = (v9 + 63) >> 6;
  v45 = a1;

  v48 = *&v50[0];

  v13 = 0;
  v14 = _swiftEmptyDictionarySingleton;
  v46 = v12;
  v47 = *&v50[0] + 64;
  while (v11)
  {
    v19 = v13;
LABEL_17:
    v20 = (v19 << 10) | (16 * __clz(__rbit64(v11)));
    v21 = (*(v48 + 48) + v20);
    v23 = *v21;
    v22 = v21[1];
    v24 = (*(v48 + 56) + v20);
    v26 = *v24;
    v25 = v24[1];
    sub_100017D5C(*v21, v22);
    sub_100017D5C(v23, v22);
    sub_100017D5C(v26, v25);
    sub_100017D5C(v23, v22);
    sub_100017D5C(v26, v25);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v28 = [objc_opt_self() UUIDWithData:isa];

    sub_100016590(v23, v22);
    v49 = v25;
    sub_100017D5C(v26, v25);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v50[0] = v14;
    v31 = sub_100772D3C(v28);
    v32 = v14[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      goto LABEL_28;
    }

    v35 = v30;
    if (v14[3] >= v34)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10100E290();
      }
    }

    else
    {
      sub_100FF74B8(v34, isUniquelyReferenced_nonNull_native);
      v36 = sub_100772D3C(v28);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_30;
      }

      v31 = v36;
    }

    v11 &= v11 - 1;
    v14 = *&v50[0];
    if (v35)
    {
      v16 = (*(*&v50[0] + 56) + 16 * v31);
      v17 = *v16;
      v18 = v16[1];
      *v16 = v26;
      v16[1] = v49;
      sub_100016590(v17, v18);

      sub_100016590(v26, v49);
      sub_100016590(v23, v22);
      sub_100016590(v23, v22);
      sub_100016590(v26, v49);
    }

    else
    {
      *(*&v50[0] + 8 * (v31 >> 6) + 64) |= 1 << v31;
      *(v14[6] + 8 * v31) = v28;
      v38 = (v14[7] + 16 * v31);
      *v38 = v26;
      v38[1] = v49;
      sub_100016590(v26, v49);
      sub_100016590(v23, v22);
      sub_100016590(v23, v22);
      sub_100016590(v26, v49);
      v39 = v14[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_29;
      }

      v14[2] = v41;
    }

    v13 = v19;
    v12 = v46;
    v8 = v47;
  }

  while (1)
  {
    v19 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v19 >= v12)
    {

      *&v51 = v14;
      sub_1001E6224(&v51, v50);
      v42 = swift_isUniquelyReferenced_nonNull_native();
      sub_100FFB368(v50, v43, v44, v42);

      return v45;
    }

    v11 = *(v8 + 8 * v19);
    ++v13;
    if (v11)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  sub_100008BB8(0, &qword_1016A9120, CBUUID_ptr);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100F97B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a3;
  v41 = a2;
  v6 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v6 - 8);
  v40 = &v33 - v7;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v39 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v11;
  __chkstk_darwin(v10);
  v13 = &v33 - v12;
  if (qword_101694690 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177AC90);
  v36 = *(v9 + 16);
  v36(v13, a1, v8);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v35 = a4;
    v18 = v17;
    v34 = swift_slowAlloc();
    v42 = v34;
    *v18 = 136315138;
    sub_100F989D0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = a1;
    v22 = v21;
    (*(v9 + 8))(v13, v8);
    v23 = sub_1000136BC(v19, v22, &v42);
    a1 = v20;

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "Read raw posh for beaconId: %s", v18, 0xCu);
    sub_100007BAC(v34);

    a4 = v35;
  }

  else
  {

    (*(v9 + 8))(v13, v8);
  }

  v24 = swift_allocObject();
  *(v24 + 16) = v38;
  *(v24 + 24) = a4;
  v25 = type metadata accessor for TaskPriority();
  v26 = v40;
  (*(*(v25 - 8) + 56))(v40, 1, 1, v25);
  v27 = v39;
  v36(v39, a1, v8);
  v28 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v29 = (v37 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  (*(v9 + 32))(v30 + v28, v27, v8);
  *(v30 + v29) = v41;
  v31 = (v30 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v31 = sub_100F97FAC;
  v31[1] = v24;

  sub_10025EDD4(0, 0, v26, &unk_1013F53D0, v30);
}

uint64_t sub_100F97FB8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100014650;

  return sub_1006DAB08(a1, v10, v11, v1 + v6, v9, v12, v13);
}

uint64_t sub_100F980FC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100014744;

  return sub_100F93A6C(a1, v10, v11, v1 + v6, v9, v12, v13);
}

uint64_t sub_100F98240()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_100F98334(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100014744;

  return sub_100F931D8(a1, v10, v11, v1 + v6, v9, v12, v13);
}

uint64_t sub_100F98478()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100014744;

  return sub_100F92220(v4, v0 + v3, v6, v7);
}

uint64_t sub_100F98590()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_100F9866C()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100014744;

  return sub_100F9178C(v4, v0 + v3, v6, v7);
}

uint64_t sub_100F98784()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014744;

  return sub_100F913BC(v2, v3, v4, v6, v5);
}

uint64_t sub_100F98840()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v0 + 16);
  v14 = *(v0 + v7);
  v9 = *(v0 + v8 + 8);
  v13 = *(v0 + v8);
  v10 = *(v0 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_100014744;

  return sub_100F8FE54(v16, v0 + v4, v0 + v6, v14, v13, v9, v10);
}

uint64_t sub_100F989D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100F98A18()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_100F8F840(v2, v3, v5, v4);
}

uint64_t sub_100F98AC8(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = a1;
    a1 = 0;
  }

  else
  {
    v3 = 0;
  }

  return (*(v2 + 16))(a1, v3);
}

uint64_t sub_100F98B0C(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for Date() - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1[5];
  v12 = *(v1 + v5);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_100014744;

  return sub_1006C6C94(a1, v8, v9, v10, v11, v1 + v4, v12, v1 + v7);
}

uint64_t sub_100F98CC0(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100014744;

  return sub_10069B4D4(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_100F98E10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_1003DB8E0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100F98EE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_100F8E3A0(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_100F98FA8()
{
  result = qword_1016C1A60;
  if (!qword_1016C1A60)
  {
    sub_1000BC580(&qword_1016C1A58, &unk_1013F54B0);
    sub_100F989D0(&unk_1016C1A68, type metadata accessor for KeySyncMetadataDisplay, &unk_1013E4420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1A60);
  }

  return result;
}

uint64_t sub_100F9905C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v1 + 32);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_100014744;

  return sub_1006D1B60(a1, v10, v11, v15, v1 + v6, v1 + v9, v13, v14);
}

uint64_t sub_100F99274(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100F9936C()
{
  result = qword_1016C1AA8;
  if (!qword_1016C1AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1AA8);
  }

  return result;
}

unint64_t TimeBasedKey.debugDescription.getter()
{
  _StringGuts.grow(_:)(41);

  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._object = 0x800000010135B6D0;
  v1._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v1);
  type metadata accessor for TimeBasedKey(0);
  type metadata accessor for DateInterval();
  sub_10047B0A4();
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  return 0xD000000000000015;
}

uint64_t type metadata accessor for TimeBasedKey(uint64_t a1)
{
  result = qword_1016C1B08;
  if (!qword_1016C1B08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100F99560(uint64_t a1)
{
  result = type metadata accessor for DateInterval();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100F99608@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

double sub_100F99678@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_100F998DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100F9993C()
{
  result = qword_1016C1B48;
  if (!qword_1016C1B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1B48);
  }

  return result;
}

uint64_t sub_100F99990@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = type metadata accessor for Endianness();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v31 = a1;
  sub_1000035D0(a1, v9);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v35, v35[3]);
  sub_1002053B0();
  dispatch thunk of BinaryDecodingContaining.decode<A>(_:)();
  if (v2)
  {
LABEL_6:
    v22 = v31;
    goto LABEL_7;
  }

  v36 = v33[0];
  static Endianness.current.getter();
  FixedWidthInteger.convert(to:)();
  (*(v6 + 8))(v8, v5);
  v10 = v34[0];
  v11 = sub_10027FDB0(v34[0]);
  if (v11 == 6)
  {
    v12 = static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v13 = qword_10177C410;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101385D80;
    LOWORD(v34[0]) = v10;
    v15 = FixedWidthInteger.data.getter();
    v17 = v16;
    v18 = Data.hexString.getter();
    v20 = v19;
    sub_100016590(v15, v17);
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100008C00();
    *(v14 + 32) = v18;
    *(v14 + 40) = v20;
    os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "Invalid opcode: %@", 18, 2, v14);

    sub_1009A022C();
    swift_allocError();
    *v21 = 1;
    swift_willThrow();
    goto LABEL_6;
  }

  if (v11 > 2u)
  {
    v22 = v31;
    v24 = v11;
    if (v11 == 3)
    {
      v25 = &type metadata for SendPairingStatusCommandPayloadv2;
      v26 = sub_100F9BBE4();
    }

    else if (v11 == 4)
    {
      v25 = &type metadata for PairingCompleteCommandPayloadv2;
      v26 = sub_100F9BB88();
    }

    else
    {
      v25 = &type metadata for UnpairCommandPayload;
      v26 = sub_10027EE90();
    }
  }

  else
  {
    v22 = v31;
    v24 = v11;
    if (v11)
    {
      if (v11 == 1)
      {
        v25 = &type metadata for SendPairingDataCommandPayload;
        v26 = sub_1009BEA74();
      }

      else
      {
        v25 = &type metadata for FinalizePairingCommandPayloadv2;
        v26 = sub_100F9BB2C();
      }
    }

    else
    {
      v25 = &type metadata for InitiatePairingCommandPayload;
      v26 = sub_1009BE9C4();
    }
  }

  v27 = v26;
  sub_10001F280(v22, v33);
  v34[3] = v25;
  v34[4] = v27;
  sub_1000280DC(v34);
  dispatch thunk of BinaryDecodable.init(from:)();
  sub_10001F280(v34, v33);
  sub_100F9A1A0(v24, v33, v32);
  v28 = v32[3];
  a2[2] = v32[2];
  a2[3] = v28;
  a2[4] = v32[4];
  v29 = v32[1];
  *a2 = v32[0];
  a2[1] = v29;
  sub_100007BAC(v34);
LABEL_7:
  sub_100007BAC(v35);
  return sub_100007BAC(v22);
}

uint64_t sub_100F99D98@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = type metadata accessor for Endianness();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v31 = a1;
  sub_1000035D0(a1, v9);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v35, v35[3]);
  sub_1002053B0();
  dispatch thunk of BinaryDecodingContaining.decode<A>(_:)();
  if (v2)
  {
LABEL_6:
    v22 = v31;
    goto LABEL_7;
  }

  v36 = v33[0];
  static Endianness.current.getter();
  FixedWidthInteger.convert(to:)();
  (*(v6 + 8))(v8, v5);
  v10 = v34[0];
  v11 = sub_10027FDB0(v34[0]);
  if (v11 == 6)
  {
    v12 = static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v13 = qword_10177C410;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101385D80;
    LOWORD(v34[0]) = v10;
    v15 = FixedWidthInteger.data.getter();
    v17 = v16;
    v18 = Data.hexString.getter();
    v20 = v19;
    sub_100016590(v15, v17);
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100008C00();
    *(v14 + 32) = v18;
    *(v14 + 40) = v20;
    os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "Invalid opcode: %@", 18, 2, v14);

    sub_1009A022C();
    swift_allocError();
    *v21 = 1;
    swift_willThrow();
    goto LABEL_6;
  }

  if (v11 > 2u)
  {
    v22 = v31;
    v24 = v11;
    if (v11 == 3)
    {
      v25 = &type metadata for SendPairingStatusCommandPayload;
      v26 = sub_1009BEACC();
    }

    else if (v11 == 4)
    {
      v25 = &type metadata for PairingCompleteCommandPayload;
      v26 = sub_1009BEA1C();
    }

    else
    {
      v25 = &type metadata for UnpairCommandPayload;
      v26 = sub_10027EE90();
    }
  }

  else
  {
    v22 = v31;
    v24 = v11;
    if (v11)
    {
      if (v11 == 1)
      {
        v25 = &type metadata for SendPairingDataCommandPayload;
        v26 = sub_1009BEA74();
      }

      else
      {
        v25 = &type metadata for FinalizePairingCommandPayload;
        v26 = sub_1009BE96C();
      }
    }

    else
    {
      v25 = &type metadata for InitiatePairingCommandPayload;
      v26 = sub_1009BE9C4();
    }
  }

  v27 = v26;
  sub_10001F280(v22, v33);
  v34[3] = v25;
  v34[4] = v27;
  sub_1000280DC(v34);
  dispatch thunk of BinaryDecodable.init(from:)();
  sub_10001F280(v34, v33);
  sub_100F9A650(v24, v33, v32);
  v28 = v32[3];
  a2[2] = v32[2];
  a2[3] = v28;
  a2[4] = v32[4];
  v29 = v32[1];
  *a2 = v32[0];
  a2[1] = v29;
  sub_100007BAC(v34);
LABEL_7:
  sub_100007BAC(v35);
  return sub_100007BAC(v22);
}

ValueMetadata *sub_100F9A1A0@<X0>(unsigned __int8 a1@<W0>, void *a2@<X1>, void *a3@<X8>)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      sub_100F9BBE4();
      v6 = &type metadata for SendPairingStatusCommandPayloadv2;
    }

    else if (a1 == 4)
    {
      sub_100F9BB88();
      v6 = &type metadata for PairingCompleteCommandPayloadv2;
    }

    else
    {
      sub_10027EE90();
      v6 = &type metadata for UnpairCommandPayload;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      sub_1009BEA74();
      v6 = &type metadata for SendPairingDataCommandPayload;
    }

    else
    {
      sub_100F9BB2C();
      v6 = &type metadata for FinalizePairingCommandPayloadv2;
    }
  }

  else
  {
    sub_1009BE9C4();
    v6 = &type metadata for InitiatePairingCommandPayload;
  }

  sub_1000035D0(a2, a2[3]);
  result = swift_getDynamicType();
  if (v6 == result)
  {
    if (a1 > 2u)
    {
      if (a1 == 3)
      {
        sub_10001F280(a2, &v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          result = sub_100007BAC(a2);
          v13 = v24;
          v14 = v25;
          v15 = *(&v24 + 1) & 0xCFFFFFFFFFFFFFFFLL;
          v8 = v26;
          v16 = *(&v25 + 1) & 0xCFFFFFFFFFFFFFFFLL;
          v11 = *(&v26 + 1) & 0xCFFFFFFFFFFFFFFFLL;
          v12 = 0x1000000000000000;
          v17 = 0x2000000000000000;
          goto LABEL_26;
        }

        v24 = xmmword_10138BBF0;
        v25 = 0u;
        v26 = 0u;
        sub_100A21CD8(0, 0xF000000000000000, 0, 0, 0, 0);
      }

      else if (a1 == 4)
      {
        sub_10001F280(a2, &v24);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          result = sub_100007BAC(a2);
          v16 = 0;
          v11 = 0;
          v17 = 0;
          v14 = *(&v19 + 1);
          v13 = v19;
          v15 = *(&v19 + 1) & 0xCFFFFFFFFFFFFFFFLL;
          v12 = 0x2000000000000000;
          goto LABEL_26;
        }

        v19 = xmmword_10138BBF0;
        sub_100006654(0, 0xF000000000000000);
      }

      else
      {
        sub_10001F280(a2, &v24);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          result = sub_100007BAC(a2);
          v13 = 0;
          v15 = 0;
          v14 = 0;
          v16 = 0;
          v8 = 0;
          v11 = 0;
          v9 = 0;
          v10 = 0;
          v17 = 0x2000000000000000;
          v12 = 0x2000000000000000;
          goto LABEL_26;
        }
      }

      goto LABEL_35;
    }

    if (a1)
    {
      if (a1 != 1)
      {
        sub_10001F280(a2, v29);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          result = sub_100007BAC(a2);
          v13 = v24;
          v14 = v25;
          v8 = v26;
          v9 = v27;
          v10 = v28;
          v15 = *(&v24 + 1) & 0xCFFFFFFFFFFFFFFFLL;
          v16 = *(&v25 + 1) & 0xCFFFFFFFFFFFFFFFLL;
          v11 = *(&v26 + 1) & 0xCFFFFFFFFFFFFFFFLL;
          v17 = *(&v27 + 1) & 0xCFFFFFFFFFFFFFFFLL;
          v12 = *(&v28 + 1) & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
          goto LABEL_26;
        }

        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = xmmword_10138BBF0;
        v19 = xmmword_10138BBF0;
        v20 = 0u;
        sub_10000B3A8(&v19, &qword_1016C1C90, &qword_1013F57A0);
        goto LABEL_35;
      }

      sub_10001F280(a2, &v24);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (swift_dynamicCast())
      {
        result = sub_100007BAC(a2);
        v11 = 0;
        v12 = 0;
        v13 = v19;
        v14 = v20;
        v15 = *(&v19 + 1) & 0xCFFFFFFFFFFFFFFFLL;
        v16 = *(&v20 + 1) & 0xCFFFFFFFFFFFFFFFLL;
        v17 = 0x2000000000000000;
LABEL_26:
        *a3 = v13;
        a3[1] = v15;
        a3[2] = v14;
        a3[3] = v16;
        a3[4] = v8;
        a3[5] = v11;
        a3[6] = v9;
        a3[7] = v17;
        a3[8] = v10;
        a3[9] = v12;
        return result;
      }
    }

    else
    {
      sub_10001F280(a2, &v24);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (swift_dynamicCast())
      {
        result = sub_100007BAC(a2);
        v11 = 0;
        v17 = 0;
        v12 = 0;
        v13 = v19;
        v14 = v20;
        v15 = *(&v19 + 1) & 0xCFFFFFFFFFFFFFFFLL;
        v16 = *(&v20 + 1) & 0xCFFFFFFFFFFFFFFFLL;
        goto LABEL_26;
      }
    }

    v19 = xmmword_10138BBF0;
    v20 = 0uLL;
    sub_1000BB4DC(0, 0xF000000000000000, 0, 0);
LABEL_35:
    sub_1009A022C();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();
    return sub_100007BAC(a2);
  }

  __break(1u);
  return result;
}

ValueMetadata *sub_100F9A650@<X0>(unsigned __int8 a1@<W0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      sub_1009BEACC();
      v6 = &type metadata for SendPairingStatusCommandPayload;
    }

    else if (a1 == 4)
    {
      sub_1009BEA1C();
      v6 = &type metadata for PairingCompleteCommandPayload;
    }

    else
    {
      sub_10027EE90();
      v6 = &type metadata for UnpairCommandPayload;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      sub_1009BEA74();
      v6 = &type metadata for SendPairingDataCommandPayload;
    }

    else
    {
      sub_1009BE96C();
      v6 = &type metadata for FinalizePairingCommandPayload;
    }
  }

  else
  {
    sub_1009BE9C4();
    v6 = &type metadata for InitiatePairingCommandPayload;
  }

  sub_1000035D0(a2, a2[3]);
  result = swift_getDynamicType();
  if (v6 == result)
  {
    if (a1 > 2u)
    {
      if (a1 == 3)
      {
        sub_10001F280(a2, &v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          result = sub_100007BAC(a2);
          v13 = v24;
          v14 = v25;
          v15 = *(&v24 + 1) & 0xCFFFFFFFFFFFFFFFLL;
          v8 = v26;
          v16 = *(&v25 + 1) & 0xCFFFFFFFFFFFFFFFLL;
          v11 = *(&v26 + 1) & 0xCFFFFFFFFFFFFFFFLL;
          v12 = 0x1000000000000000;
          v17 = 0x2000000000000000;
          goto LABEL_31;
        }

        v24 = xmmword_10138BBF0;
        v25 = 0u;
        v26 = 0u;
        sub_100A21CD8(0, 0xF000000000000000, 0, 0, 0, 0);
      }

      else if (a1 == 4)
      {
        sub_10001F280(a2, &v24);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          result = sub_100007BAC(a2);
          v13 = 0;
          v15 = 0;
          v14 = 0;
          v16 = 0;
          v8 = 0;
          v11 = 0;
          v9 = 0;
          v17 = 0;
          v10 = 0;
          v12 = 0x2000000000000000;
          goto LABEL_31;
        }
      }

      else
      {
        sub_10001F280(a2, &v24);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          result = sub_100007BAC(a2);
          v15 = 0;
          v14 = 0;
          v16 = 0;
          v8 = 0;
          v11 = 0;
          v9 = 0;
          v17 = 0;
          v10 = 0;
          v12 = 0x2000000000000000;
          v13 = 1;
          goto LABEL_31;
        }
      }

      goto LABEL_34;
    }

    if (a1)
    {
      if (a1 != 1)
      {
        sub_10001F280(a2, v29);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          v13 = v24;
          v14 = v25;
          v8 = v26;
          v9 = v27;
          result = *(&v28 + 1);
          v10 = v28;
          v15 = *(&v24 + 1) & 0xCFFFFFFFFFFFFFFFLL;
          v16 = *(&v25 + 1) & 0xCFFFFFFFFFFFFFFFLL;
          v11 = *(&v26 + 1) & 0xCFFFFFFFFFFFFFFFLL;
          v17 = *(&v27 + 1) & 0xCFFFFFFFFFFFFFFFLL;
          v12 = *(&v28 + 1) & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
          goto LABEL_31;
        }

        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = xmmword_10138BBF0;
        v19 = xmmword_10138BBF0;
        v20 = 0u;
        sub_10000B3A8(&v19, &qword_1016C1CA8, &qword_1013F57B8);
        goto LABEL_34;
      }

      sub_10001F280(a2, &v24);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (swift_dynamicCast())
      {
        result = sub_100007BAC(a2);
        v11 = 0;
        v12 = 0;
        v13 = v19;
        v14 = v20;
        v15 = *(&v19 + 1) & 0xCFFFFFFFFFFFFFFFLL;
        v16 = *(&v20 + 1) & 0xCFFFFFFFFFFFFFFFLL;
        v17 = 0x2000000000000000;
LABEL_31:
        *a3 = v13;
        a3[1] = v15;
        a3[2] = v14;
        a3[3] = v16;
        a3[4] = v8;
        a3[5] = v11;
        a3[6] = v9;
        a3[7] = v17;
        a3[8] = v10;
        a3[9] = v12;
        return result;
      }
    }

    else
    {
      sub_10001F280(a2, &v24);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (swift_dynamicCast())
      {
        result = sub_100007BAC(a2);
        v11 = 0;
        v17 = 0;
        v12 = 0;
        v13 = v19;
        v14 = v20;
        v15 = *(&v19 + 1) & 0xCFFFFFFFFFFFFFFFLL;
        v16 = *(&v20 + 1) & 0xCFFFFFFFFFFFFFFFLL;
        goto LABEL_31;
      }
    }

    v19 = xmmword_10138BBF0;
    v20 = 0uLL;
    sub_1000BB4DC(0, 0xF000000000000000, 0, 0);
LABEL_34:
    sub_1009A022C();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();
    return sub_100007BAC(a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_100F9AAF4(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for Endianness();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v9 = *(v3 + 56);
  v10 = *(v3 + 72);
  v11 = (v10 >> 59) & 6 | ((v9 & 0x2000000000000000) != 0);
  if (v11 <= 1)
  {
    v12 = 257;
    v13 = 256;
    v14 = v11 == 0;
  }

  else
  {
    if (v11 == 2)
    {
      v12 = 258;
      goto LABEL_13;
    }

    if (v11 == 3)
    {
      v12 = 259;
      goto LABEL_13;
    }

    v15 = vorrq_s8(*(v3 + 24), *(v3 + 40));
    if (*&vorr_s8(*v15.i8, *&vextq_s8(v15, v15, 8uLL)) | *v3 | *(v3 + 64) | *(v3 + 16) | *(v3 + 8) | v9)
    {
      v14 = 0;
    }

    else
    {
      v14 = v10 == 0x2000000000000000;
    }

    v12 = 516;
    v13 = 260;
  }

  if (v14)
  {
    v12 = v13;
  }

LABEL_13:
  LOWORD(v30) = v12;
  static Endianness.current.getter();
  sub_1002053B0();
  FixedWidthInteger.convert(to:)();
  (*(v6 + 8))(v8, v5);
  LOWORD(v30) = v36;
  sub_10015049C(v41, v42);
  dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  if (!v2)
  {
    v16 = *(v3 + 56);
    v17 = *(v3 + 72);
    v18 = (v17 >> 59) & 6 | ((v16 & 0x2000000000000000) != 0);
    if (v18 > 1)
    {
      if (v18 == 2)
      {
        sub_1009BEB20(v35);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          v38 = v32;
          v39 = v33;
          v40 = v34;
          v36 = v30;
          v37 = v31;
          sub_10015049C(v41, v42);
          sub_10073F26C();
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          v27 = v38;
          v28 = v39;
          v29 = v40;
          v25 = v36;
          v26 = v37;
          sub_100F9C4F8(&v25);
          return sub_100007BAC(v41);
        }

        v30 = xmmword_10138BBF0;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v25 = xmmword_10138BBF0;
        v26 = 0u;
        sub_10000B3A8(&v25, &qword_1016C1CA8, &qword_1013F57B8);
      }

      else
      {
        if (v18 != 3)
        {
          if (v17 != 0x2000000000000000 || (v21 = vorrq_s8(*(v3 + 24), *(v3 + 40)), *v3 | *&vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL)) | v16 | *(v3 + 8) | *(v3 + 16) | *(v3 + 64)))
          {
            sub_1009BEB20(&v36);
            sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_37;
            }

            sub_10015049C(v41, v42);
            sub_10027FBB8();
          }

          else
          {
            sub_1009BEB20(&v36);
            sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_37;
            }

            sub_10015049C(v41, v42);
            sub_100507A8C();
          }

          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          return sub_100007BAC(v41);
        }

        sub_1009BEB20(&v25);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          v36 = v30;
          v37 = v31;
          v38 = v32;
          sub_10015049C(v41, v42);
          sub_10088E074();
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          v19 = v37;
          v20 = v38;
          sub_100016590(v36, *(&v36 + 1));
          sub_100016590(v19, *(&v19 + 1));
          sub_100016590(v20, *(&v20 + 1));
          return sub_100007BAC(v41);
        }

        v30 = xmmword_10138BBF0;
        v31 = 0u;
        v32 = 0u;
        sub_100A21CD8(0, 0xF000000000000000, 0, 0, 0, 0);
      }

LABEL_37:
      sub_1009A022C();
      swift_allocError();
      *v23 = 0;
      swift_willThrow();
      return sub_100007BAC(v41);
    }

    if (v18)
    {
      sub_1009BEB20(&v36);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (swift_dynamicCast())
      {
        v30 = v25;
        v31 = v26;
        sub_10015049C(v41, v42);
        sub_1008ADEA4();
        goto LABEL_30;
      }
    }

    else
    {
      sub_1009BEB20(&v36);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (swift_dynamicCast())
      {
        v30 = v25;
        v31 = v26;
        sub_10015049C(v41, v42);
        sub_100D597F4();
LABEL_30:
        dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
        v22 = v31;
        sub_100016590(v30, *(&v30 + 1));
        sub_100016590(v22, *(&v22 + 1));
        return sub_100007BAC(v41);
      }
    }

    v25 = xmmword_10138BBF0;
    v26 = 0uLL;
    sub_1000BB4DC(0, 0xF000000000000000, 0, 0);
    goto LABEL_37;
  }

  return sub_100007BAC(v41);
}

uint64_t sub_100F9B1CC(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for Endianness();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  LOWORD(v20) = word_1013F5E1E[(*(v3 + 72) >> 59) & 6 | (*(v3 + 56) >> 61) & 1];
  static Endianness.current.getter();
  sub_1002053B0();
  FixedWidthInteger.convert(to:)();
  (*(v6 + 8))(v8, v5);
  LOWORD(v20) = v26;
  sub_10015049C(v31, v32);
  dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  if (!v2)
  {
    v9 = (*(v3 + 72) >> 59) & 6 | ((*(v3 + 56) & 0x2000000000000000) != 0);
    if (v9 <= 2)
    {
      if (!v9)
      {
        sub_100F9BC38(&v26);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          v20 = v15;
          v21 = v16;
          sub_10015049C(v31, v32);
          sub_100D597F4();
          goto LABEL_13;
        }

        goto LABEL_16;
      }

      if (v9 == 1)
      {
        sub_100F9BC38(&v26);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          v20 = v15;
          v21 = v16;
          sub_10015049C(v31, v32);
          sub_1008ADEA4();
LABEL_13:
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          v10 = v21;
          sub_100016590(v20, *(&v20 + 1));
          sub_100016590(v10, *(&v10 + 1));
          return sub_100007BAC(v31);
        }

LABEL_16:
        v15 = xmmword_10138BBF0;
        v16 = 0uLL;
        sub_1000BB4DC(0, 0xF000000000000000, 0, 0);
        goto LABEL_24;
      }

      sub_100F9BC38(v25);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (swift_dynamicCast())
      {
        v28 = v22;
        v29 = v23;
        v30 = v24;
        v26 = v20;
        v27 = v21;
        sub_10015049C(v31, v32);
        sub_10098DBB0();
        dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
        v17 = v28;
        v18 = v29;
        v19 = v30;
        v15 = v26;
        v16 = v27;
        sub_100F9BFFC(&v15);
        return sub_100007BAC(v31);
      }

      v20 = xmmword_10138BBF0;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v15 = xmmword_10138BBF0;
      v16 = 0u;
      sub_10000B3A8(&v15, &qword_1016C1C90, &qword_1013F57A0);
LABEL_24:
      sub_1009A022C();
      swift_allocError();
      *v13 = 0;
      swift_willThrow();
      return sub_100007BAC(v31);
    }

    if (v9 == 3)
    {
      sub_100F9BC38(&v15);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (swift_dynamicCast())
      {
        v26 = v20;
        v27 = v21;
        v28 = v22;
        sub_10015049C(v31, v32);
        sub_100F9BFA8();
        dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
        v11 = v27;
        v12 = v28;
        sub_100016590(v26, *(&v26 + 1));
        sub_100016590(v11, *(&v11 + 1));
        sub_100016590(v12, *(&v12 + 1));
        return sub_100007BAC(v31);
      }

      v20 = xmmword_10138BBF0;
      v21 = 0u;
      v22 = 0u;
      sub_100A21CD8(0, 0xF000000000000000, 0, 0, 0, 0);
      goto LABEL_24;
    }

    if (v9 != 4)
    {
      sub_100F9BC38(&v26);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (swift_dynamicCast())
      {
        sub_10015049C(v31, v32);
        sub_10027FBB8();
        dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
        return sub_100007BAC(v31);
      }

      goto LABEL_24;
    }

    sub_100F9BC38(&v26);
    sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v15 = xmmword_10138BBF0;
      sub_100006654(0, 0xF000000000000000);
      goto LABEL_24;
    }

    v20 = v15;
    sub_10015049C(v31, v32);
    sub_100289670();
    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
    sub_100016590(v20, *(&v20 + 1));
  }

  return sub_100007BAC(v31);
}

uint64_t sub_100F9B834()
{
  result = sub_10098E9DC(3157554, 0xE300000000000000);
  if ((result & 0x100000000) != 0)
  {
    __break(1u);
  }

  else
  {
    LOWORD(dword_10177C460) = result;
    BYTE2(dword_10177C460) = BYTE2(result);
    HIBYTE(dword_10177C460) = BYTE3(result);
  }

  return result;
}

void *sub_100F9B87C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = &type metadata for CollaborativeKeyGen.v2.C3;
  result = sub_10010194C();
  a3[4] = result;
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      v12 = 0;
      goto LABEL_20;
    }

    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    v10 = __OFSUB__(v8, v9);
    v11 = v8 - v9;
    if (!v10)
    {
      if (v11 != 85)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v7)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 != 85)
      {
        goto LABEL_11;
      }

LABEL_8:
      *a3 = a1;
      a3[1] = a2;
      return sub_100017D5C(a1, a2);
    }

    goto LABEL_22;
  }

  if (BYTE6(a2) == 85)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v7 == 2)
  {
    v14 = *(a1 + 16);
    v13 = *(a1 + 24);
    v12 = v13 - v14;
    if (!__OFSUB__(v13, v14))
    {
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v7 != 1)
  {
LABEL_19:
    v12 = BYTE6(a2);
    goto LABEL_20;
  }

  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v12 = HIDWORD(a1) - a1;
LABEL_20:
    sub_100018350();
    swift_allocError();
    *v15 = 85;
    *(v15 + 8) = v12;
    *(v15 + 16) = 0;
    swift_willThrow();
    return sub_100101758(a3);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_100F9B9BC()
{
  if (qword_101695100 != -1)
  {
    swift_once();
  }

  return dword_10177C460;
}

__n128 sub_100F9BA10@<Q0>(uint64_t a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>, uint64_t a4@<X2>, unint64_t a5@<X3>, uint64_t a6@<X4>, unint64_t a7@<X5>, uint64_t a8@<X6>, unint64_t a9@<X7>, uint64_t a10, unint64_t a11)
{
  sub_100F9C28C(a2, a3, a4, a5, a6, a7, a8, a9, v14, a10, a11);
  v12 = v14[3];
  *(a1 + 32) = v14[2];
  *(a1 + 48) = v12;
  *(a1 + 64) = v14[4];
  result = v14[1];
  *a1 = v14[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100F9BA60@<X0>(uint64_t *a1@<X8>)
{
  sub_101063248();
  sub_100101824();
  result = FixedWidthInteger.data.getter();
  *a1 = result;
  a1[1] = v3 & 0xCFFFFFFFFFFFFFFFLL;
  a1[3] = 0;
  a1[5] = 0;
  a1[7] = 0;
  a1[9] = 0x2000000000000000;
  return result;
}

__n128 sub_100F9BADC@<Q0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, unint64_t a4@<X2>)
{
  sub_100F9C0C0(a2, a3, a4, v8);
  if (!v4)
  {
    v7 = v8[3];
    *(a1 + 32) = v8[2];
    *(a1 + 48) = v7;
    *(a1 + 64) = v8[4];
    result = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = result;
  }

  return result;
}

unint64_t sub_100F9BB2C()
{
  result = qword_1016C1BB0;
  if (!qword_1016C1BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1BB0);
  }

  return result;
}

unint64_t sub_100F9BB88()
{
  result = qword_1016C1BB8;
  if (!qword_1016C1BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1BB8);
  }

  return result;
}

unint64_t sub_100F9BBE4()
{
  result = qword_1016C1BC0;
  if (!qword_1016C1BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1BC0);
  }

  return result;
}

unint64_t sub_100F9BC38@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  v9 = v1[7];
  v10 = v1[9];
  v11 = (v10 >> 59) & 6 | ((v9 & 0x2000000000000000) != 0);
  if (v11 > 2)
  {
    if (v11 == 3)
    {
      a1[3] = &type metadata for SendPairingStatusCommandPayloadv2;
      a1[4] = sub_100F9BBE4();
      v15 = swift_allocObject();
      *a1 = v15;
      v15[2] = v4;
      v15[3] = v3;
      v15[4] = v5;
      v15[5] = v6;
      v15[6] = v8;
      v15[7] = v7;
      sub_100017D5C(v4, v3);
      sub_100017D5C(v5, v6);
      v12 = v8;
      v13 = v7;
    }

    else
    {
      if (v11 != 4)
      {
        a1[3] = &type metadata for UnpairCommandPayload;
        result = sub_10027EE90();
        a1[4] = result;
        return result;
      }

      a1[3] = &type metadata for PairingCompleteCommandPayloadv2;
      a1[4] = sub_100F9BB88();
      *a1 = v4;
      a1[1] = v3;
      v12 = v4;
      v13 = v3;
    }
  }

  else
  {
    if (v11)
    {
      if (v11 != 1)
      {
        v21 = v1[8];
        v17 = v1[6];
        v18 = v9 & 0xDFFFFFFFFFFFFFFFLL;
        v19 = v10 & 0xCFFFFFFFFFFFFFFFLL;
        a1[3] = &type metadata for FinalizePairingCommandPayloadv2;
        a1[4] = sub_100F9BB2C();
        v20 = swift_allocObject();
        *a1 = v20;
        v20[2] = v4;
        v20[3] = v3;
        v20[4] = v5;
        v20[5] = v6;
        v20[6] = v8;
        v20[7] = v7;
        v20[8] = v17;
        v20[9] = v18;
        v20[10] = v21;
        v20[11] = v19;
        v23[0] = v4;
        v23[1] = v3;
        v23[2] = v5;
        v23[3] = v6;
        v23[4] = v8;
        v23[5] = v7;
        v23[6] = v17;
        v23[7] = v18;
        v23[8] = v21;
        v23[9] = v19;
        return sub_100F9C050(v23, v22);
      }

      a1[3] = &type metadata for SendPairingDataCommandPayload;
      a1[4] = sub_1009BEA74();
    }

    else
    {
      a1[3] = &type metadata for InitiatePairingCommandPayload;
      a1[4] = sub_1009BE9C4();
    }

    v14 = swift_allocObject();
    *a1 = v14;
    v14[2] = v4;
    v14[3] = v3;
    v14[4] = v5;
    v14[5] = v6;
    sub_100017D5C(v4, v3);
    v12 = v5;
    v13 = v6;
  }

  return sub_100017D5C(v12, v13);
}

unint64_t sub_100F9BE74(uint64_t a1)
{
  *(a1 + 8) = sub_100F9BEA4();
  result = sub_100F9BEF8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100F9BEA4()
{
  result = qword_1016C1C80;
  if (!qword_1016C1C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1C80);
  }

  return result;
}

unint64_t sub_100F9BEF8()
{
  result = qword_1016C1C88;
  if (!qword_1016C1C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1C88);
  }

  return result;
}

unint64_t sub_100F9BFA8()
{
  result = qword_1016C1C98;
  if (!qword_1016C1C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1C98);
  }

  return result;
}

uint64_t sub_100F9C050(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016C1CA0, &unk_1013F57A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100F9C0C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (a3 >> 60 == 15)
  {
    sub_1009BF3DC();
    swift_allocError();
    *v5 = 9;
    return swift_willThrow();
  }

  v9 = v4;
  sub_10001F280(a1, v18);
  sub_100017D5C(a2, a3);
  sub_1000BC4D4(&qword_1016973C0, &unk_10138BF40);
  type metadata accessor for CollaborativeKeyGen.v2.OwnerContext();
  if (!swift_dynamicCast())
  {
    sub_1009BF3DC();
    swift_allocError();
    *v14 = 5;
    swift_willThrow();
    return sub_100006654(a2, a3);
  }

  v11 = v19;
  CCCKG2ParamsP224Sha256Version2();
  OpeningSize = CCCKG2GetOpeningSize();

  sub_1001003F4(a2, a3, v11, OpeningSize, v17);
  if (v9)
  {

    sub_1009BF3DC();
    swift_allocError();
    *v13 = 10;
    swift_willThrow();

    return sub_100006654(a2, a3);
  }

  sub_100006654(a2, a3);

  v15 = v17[3];
  a4[2] = v17[2];
  a4[3] = v15;
  a4[4] = v17[4];
  v16 = v17[1];
  *a4 = v17[0];
  a4[1] = v16;
  return result;
}

uint64_t sub_100F9C28C@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, unint64_t a11)
{
  v12 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v12)
    {
      v13 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v12 != 2)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v15 = *(result + 16);
  v14 = *(result + 24);
  v16 = __OFSUB__(v14, v15);
  v13 = v14 - v15;
  if (v16)
  {
    __break(1u);
LABEL_8:
    LODWORD(v13) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v13 = v13;
  }

LABEL_10:
  if (v13 != 114)
  {
    goto LABEL_56;
  }

  if ((a4 >> 62) <= 1)
  {
    if (a4 >> 62 == 1)
    {
      LODWORD(v17) = HIDWORD(a3) - a3;
      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        v17 = v17;
        goto LABEL_17;
      }

      __break(1u);
      goto LABEL_50;
    }

LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (a4 >> 62 != 2)
  {
    goto LABEL_55;
  }

  v19 = *(a3 + 16);
  v18 = *(a3 + 24);
  v16 = __OFSUB__(v18, v19);
  v17 = v18 - v19;
  if (v16)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

LABEL_17:
  if (v17 != 1040)
  {
    goto LABEL_55;
  }

  v20 = a6 >> 62;
  if ((a6 >> 62) <= 1)
  {
    if (!v20)
    {
      v21 = BYTE6(a6);
      goto LABEL_27;
    }

LABEL_25:
    LODWORD(v21) = HIDWORD(a5) - a5;
    if (!__OFSUB__(HIDWORD(a5), a5))
    {
      v21 = v21;
      goto LABEL_27;
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v20 != 2)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v23 = *(a5 + 16);
  v22 = *(a5 + 24);
  v16 = __OFSUB__(v22, v23);
  v21 = v22 - v23;
  if (v16)
  {
    __break(1u);
    goto LABEL_25;
  }

LABEL_27:
  if (v21 != 32)
  {
    goto LABEL_57;
  }

  v24 = a11 >> 62;
  if ((a11 >> 62) <= 1)
  {
    if (!v24)
    {
      v25 = BYTE6(a11);
      goto LABEL_37;
    }

LABEL_35:
    LODWORD(v25) = HIDWORD(a10) - a10;
    if (!__OFSUB__(HIDWORD(a10), a10))
    {
      v25 = v25;
      goto LABEL_37;
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v24 != 2)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v27 = *(a10 + 16);
  v26 = *(a10 + 24);
  v16 = __OFSUB__(v26, v27);
  v25 = v26 - v27;
  if (v16)
  {
    __break(1u);
    goto LABEL_35;
  }

LABEL_37:
  if (v25 != 100)
  {
    goto LABEL_58;
  }

  v28 = a8 >> 62;
  if ((a8 >> 62) <= 1)
  {
    if (!v28)
    {
      v29 = BYTE6(a8);
      goto LABEL_47;
    }

LABEL_45:
    LODWORD(v29) = HIDWORD(a7) - a7;
    if (!__OFSUB__(HIDWORD(a7), a7))
    {
      v29 = v29;
      goto LABEL_47;
    }

    goto LABEL_54;
  }

  if (v28 != 2)
  {
    goto LABEL_59;
  }

  v31 = *(a7 + 16);
  v30 = *(a7 + 24);
  v16 = __OFSUB__(v30, v31);
  v29 = v30 - v31;
  if (v16)
  {
    __break(1u);
    goto LABEL_45;
  }

LABEL_47:
  if (v29 == 60)
  {
    v39 = a2 & 0xCFFFFFFFFFFFFFFFLL;
    v40 = a4 & 0xCFFFFFFFFFFFFFFFLL;
    v42 = a8 & 0xCFFFFFFFFFFFFFFFLL;
    v41 = a6 & 0xCFFFFFFFFFFFFFFFLL;
    v32 = result;
    sub_100017D5C(result, a2);
    sub_100017D5C(a3, a4);
    sub_100017D5C(a5, a6);
    sub_100017D5C(a7, a8);
    result = sub_100017D5C(a10, a11);
    *a9 = v32;
    a9[1] = v39;
    a9[2] = a3;
    a9[3] = v40;
    a9[4] = a5;
    a9[5] = v41;
    a9[6] = a7;
    a9[7] = v42;
    a9[8] = a10;
    a9[9] = a11 & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
    return result;
  }

LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_100F9C54C(uint64_t a1)
{
  v1 = (*(a1 + 72) >> 59) & 6 | ((*(a1 + 56) & 0x2000000000000000) != 0);
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_100F9C578(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FB && *(a1 + 80))
  {
    return (*a1 + 1019);
  }

  v3 = ((((*(a1 + 72) >> 52) & 0x300 | (*(a1 + 56) >> 54) & 0xC0) >> 7) & 0xFFFFFC07 | (8 * ((*(a1 + 24) >> 58) & 0xC | (*(a1 + 8) >> 60) & 3 | *(a1 + 47) & 0x30 | (*(a1 + 56) >> 54) & 0x40))) ^ 0x3FF;
  if (v3 >= 0x3FA)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100F9C608(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FA)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 1019;
    if (a3 >= 0x3FB)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FB)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0x7F | ((-a2 & 0x3FF) << 7);
      *result = 0;
      *(result + 8) = ((-a2 >> 3) & 3) << 60;
      *(result + 16) = 0;
      *(result + 24) = (v3 << 58) & 0x3000000000000000;
      *(result + 32) = 0;
      *(result + 40) = (v3 << 56) & 0x3000000000000000;
      *(result + 48) = 0;
      *(result + 56) = (v3 << 54) & 0x3000000000000000;
      *(result + 64) = 0;
      *(result + 72) = (v3 << 52) & 0x3000000000000000;
    }
  }

  return result;
}

void *sub_100F9C69C(void *result, unsigned int a2)
{
  if (a2 < 5)
  {
    v2 = result[3] & 0xCFFFFFFFFFFFFFFFLL;
    v3 = result[5] & 0xCFFFFFFFFFFFFFFFLL;
    v4 = result[7] & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 1) << 61);
    v5 = result[9] & 0xCFFFFFFFFFFFFFFFLL | (((a2 >> 1) & 3) << 60);
    result[1] &= 0xCFFFFFFFFFFFFFFFLL;
    result[3] = v2;
    result[5] = v3;
    result[7] = v4;
    result[9] = v5;
  }

  else
  {
    *result = a2 - 5;
    *(result + 1) = 0u;
    *(result + 3) = 0u;
    *(result + 5) = 0u;
    *(result + 7) = xmmword_10139BF70;
    result[9] = 0x2000000000000000;
  }

  return result;
}

uint64_t sub_100F9C72C(void *a1)
{
  v2 = [a1 invalidationHandler];
  if (v2)
  {
    _Block_release(v2);
    __chkstk_darwin(v3);
    sub_1000BC4D4(&qword_1016C2218, &unk_1013F6328);
    OS_dispatch_queue.sync<A>(execute:)();
    return v18;
  }

  else
  {
    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177C668);

    v6 = a1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v9 = 136446466;
      v19 = v17;
      sub_1000BC4D4(&qword_1016BC548, &qword_1013F6320);
      sub_1000041A4(&unk_1016BC550, &qword_1016BC548, &qword_1013F6320, &unk_101404F78);
      v11._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v11);

      v12._countAndFlagsBits = 8250;
      v12._object = 0xE200000000000000;
      String.append(_:)(v12);
      v13._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v13);

      v14._countAndFlagsBits = 62;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);

      v15 = sub_1000136BC(60, 0xE100000000000000, &v19);

      *(v9 + 4) = v15;
      *(v9 + 12) = 2112;
      *(v9 + 14) = v6;
      *v10 = v6;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: Not adding invalidated connection: %@", v9, 0x16u);
      sub_10000B3A8(v10, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v17);
    }

    else
    {
    }

    return 0;
  }
}

uint64_t sub_100F9CA44(void *a1)
{
  v2 = [a1 invalidationHandler];
  if (v2)
  {
    _Block_release(v2);
    __chkstk_darwin(v3);
    sub_1000BC4D4(&qword_1016C2238, &qword_1013F6348);
    OS_dispatch_queue.sync<A>(execute:)();
    return v18;
  }

  else
  {
    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177C668);

    v6 = a1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v9 = 136446466;
      v19 = v17;
      sub_1000BC4D4(&qword_1016BC578, &unk_1013EA760);
      sub_1000041A4(&qword_1016BC580, &qword_1016BC578, &unk_1013EA760, &unk_101404F78);
      v11._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v11);

      v12._countAndFlagsBits = 8250;
      v12._object = 0xE200000000000000;
      String.append(_:)(v12);
      v13._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v13);

      v14._countAndFlagsBits = 62;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);

      v15 = sub_1000136BC(60, 0xE100000000000000, &v19);

      *(v9 + 4) = v15;
      *(v9 + 12) = 2112;
      *(v9 + 14) = v6;
      *v10 = v6;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: Not adding invalidated connection: %@", v9, 0x16u);
      sub_10000B3A8(v10, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v17);
    }

    else
    {
    }

    return 0;
  }
}

uint64_t sub_100F9CD5C(void *a1)
{
  v2 = [a1 invalidationHandler];
  if (v2)
  {
    _Block_release(v2);
    __chkstk_darwin(v3);
    sub_1000BC4D4(&qword_1016C2210, &qword_1013F6308);
    OS_dispatch_queue.sync<A>(execute:)();
    return v18;
  }

  else
  {
    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177C668);

    v6 = a1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v9 = 136446466;
      v19 = v17;
      sub_1000BC4D4(&unk_1016C2200, &unk_1013EA6C0);
      sub_1000041A4(&unk_1016BC530, &unk_1016C2200, &unk_1013EA6C0, &unk_101404F78);
      v11._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v11);

      v12._countAndFlagsBits = 8250;
      v12._object = 0xE200000000000000;
      String.append(_:)(v12);
      v13._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v13);

      v14._countAndFlagsBits = 62;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);

      v15 = sub_1000136BC(60, 0xE100000000000000, &v19);

      *(v9 + 4) = v15;
      *(v9 + 12) = 2112;
      *(v9 + 14) = v6;
      *v10 = v6;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: Not adding invalidated connection: %@", v9, 0x16u);
      sub_10000B3A8(v10, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v17);
    }

    else
    {
    }

    return 0;
  }
}

uint64_t sub_100F9D074(void *a1)
{
  v2 = [a1 invalidationHandler];
  if (v2)
  {
    _Block_release(v2);
    __chkstk_darwin(v3);
    sub_1000BC4D4(&qword_1016C21F0, &qword_1013F62E8);
    OS_dispatch_queue.sync<A>(execute:)();
    return v18;
  }

  else
  {
    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177C668);

    v6 = a1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v9 = 136446466;
      v19 = v17;
      sub_1000BC4D4(&qword_1016C05A0, &unk_1013EA690);
      sub_1000041A4(&unk_1016BC4F0, &qword_1016C05A0, &unk_1013EA690, &unk_101404F78);
      v11._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v11);

      v12._countAndFlagsBits = 8250;
      v12._object = 0xE200000000000000;
      String.append(_:)(v12);
      v13._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v13);

      v14._countAndFlagsBits = 62;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);

      v15 = sub_1000136BC(60, 0xE100000000000000, &v19);

      *(v9 + 4) = v15;
      *(v9 + 12) = 2112;
      *(v9 + 14) = v6;
      *v10 = v6;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: Not adding invalidated connection: %@", v9, 0x16u);
      sub_10000B3A8(v10, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v17);
    }

    else
    {
    }

    return 0;
  }
}

uint64_t sub_100F9D38C(void *a1)
{
  v2 = [a1 invalidationHandler];
  if (v2)
  {
    _Block_release(v2);
    __chkstk_darwin(v3);
    sub_1000BC4D4(&qword_1016C2230, &unk_1013F6338);
    OS_dispatch_queue.sync<A>(execute:)();
    return v18;
  }

  else
  {
    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177C668);

    v6 = a1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v9 = 136446466;
      v19 = v17;
      sub_1000BC4D4(&unk_1016C2220, &unk_1013EA670);
      sub_1000041A4(&unk_1016BC4B0, &unk_1016C2220, &unk_1013EA670, &unk_101404F78);
      v11._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v11);

      v12._countAndFlagsBits = 8250;
      v12._object = 0xE200000000000000;
      String.append(_:)(v12);
      v13._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v13);

      v14._countAndFlagsBits = 62;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);

      v15 = sub_1000136BC(60, 0xE100000000000000, &v19);

      *(v9 + 4) = v15;
      *(v9 + 12) = 2112;
      *(v9 + 14) = v6;
      *v10 = v6;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: Not adding invalidated connection: %@", v9, 0x16u);
      sub_10000B3A8(v10, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v17);
    }

    else
    {
    }

    return 0;
  }
}

uint64_t sub_100F9D6A4(void *a1)
{
  v2 = [a1 invalidationHandler];
  if (v2)
  {
    _Block_release(v2);
    __chkstk_darwin(v3);
    sub_1000BC4D4(&qword_1016C2198, &qword_1013F6168);
    OS_dispatch_queue.sync<A>(execute:)();
    return v18;
  }

  else
  {
    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177C668);

    v6 = a1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v9 = 136446466;
      v19 = v17;
      sub_1000BC4D4(&qword_1016BC4C8, &qword_1013F6160);
      sub_1000041A4(&unk_1016BC4D0, &qword_1016BC4C8, &qword_1013F6160, &unk_101404F78);
      v11._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v11);

      v12._countAndFlagsBits = 8250;
      v12._object = 0xE200000000000000;
      String.append(_:)(v12);
      v13._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v13);

      v14._countAndFlagsBits = 62;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);

      v15 = sub_1000136BC(60, 0xE100000000000000, &v19);

      *(v9 + 4) = v15;
      *(v9 + 12) = 2112;
      *(v9 + 14) = v6;
      *v10 = v6;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: Not adding invalidated connection: %@", v9, 0x16u);
      sub_10000B3A8(v10, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v17);
    }

    else
    {
    }

    return 0;
  }
}

uint64_t sub_100F9D9C8()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C468);
  sub_1000076D4(v0, qword_10177C468);
  return Logger.init(subsystem:category:)();
}

void sub_100F9DAB0(char *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t, uint64_t))
{
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  sub_1000035D0(&a1[OBJC_IVAR____TtC12searchpartyd19BTFindingTrampoline_implementation], *&a1[OBJC_IVAR____TtC12searchpartyd19BTFindingTrampoline_implementation + 24]);
  v17 = a1;
  a7(v14, a6, v16);

  (*(v12 + 8))(v14, v11);
}

Swift::Int sub_100F9DD90()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100F9DE04(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100F9DE58@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10160B160, *a1);

  *a2 = v3 != 0;
  return result;
}

void sub_100F9DECC()
{
  v1 = v0;
  if (qword_101695108 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C468);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "All sessions went away.", v5, 2u);
  }

  v6 = *(v1 + 40);
  if (v6)
  {
    v7 = *(v1 + 48);

    v6(v8);

    sub_1000BB27C(v6, v7);
  }
}

uint64_t sub_100F9DFF4()
{

  sub_1000BB27C(*(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BTFindingServiceConnections(uint64_t a1)
{
  result = qword_1016C1DA0;
  if (!qword_1016C1DA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100F9E0D4()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016C1CB0);
  v1 = sub_1000076D4(v0, qword_1016C1CB0);
  if (qword_101695108 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177C468);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

BOOL sub_100F9E19C()
{
  swift_beginAccess();

  v1 = sub_10112CD04(v0);

  if (v1)
  {
    v2 = XPCSession.connection.getter();
    v3 = NSXPCConnection.codeSigningIdentity.getter();
    v5 = v4;

    if (qword_101695110 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_1016C1CB0);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_1000136BC(v3, v5, &v13);
      _os_log_impl(&_mh_execute_header, v7, v8, "Client: %{public}s", v9, 0xCu);
      sub_100007BAC(v10);
    }

    if (v3 == 0xD000000000000017 && 0x8000000101360B10 == v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v11 = sub_1000140F4();
    }
  }

  else
  {
    return 0;
  }

  return v11;
}

unint64_t sub_100F9E400(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0xE000000000000000;
  v15 = 0;
  v16 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);

  v15 = 0xD000000000000013;
  v16 = 0x80000001013757D0;
  v14[1] = a2;
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x7469206B726F5720;
  v10._object = 0xEC000000203A6D65;
  String.append(_:)(v10);
  if (a1)
  {
    WorkItemQueue.WorkItem.id.getter();
    a1 = UUID.uuidString.getter();
    v8 = v11;
    (*(v5 + 8))(v7, v4);
  }

  v12._countAndFlagsBits = a1;
  v12._object = v8;
  String.append(_:)(v12);

  return v15;
}

unint64_t sub_100F9E5A0(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    strcpy(v13, ".underlying(");
    BYTE5(v13[1]) = 0;
    HIWORD(v13[1]) = -5120;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v7 = String.init<A>(describing:)();
LABEL_19:
    String.append(_:)(*&v7);

    v10._countAndFlagsBits = 41;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    return v13[0];
  }

  if (a1 >> 62 == 1)
  {
    v1 = a1;
    v2 = 0xE800000000000000;
    strcpy(v13, ".response(");
    BYTE3(v13[1]) = 0;
    HIDWORD(v13[1]) = -369098752;
    v3 = 0x737365636375732ELL;
    v4 = 0xEE006874676E654CLL;
    v5 = 0xED00006D61726150;
    if (a1 != 4)
    {
      v5 = 0xEF646E616D6D6F43;
    }

    if (a1 != 3)
    {
      v4 = v5;
    }

    v6 = 0xED00006574617453;
    if (a1 != 1)
    {
      v6 = 0xEE006769666E6F43;
    }

    if (a1)
    {
      v3 = 0x64696C61766E692ELL;
      v2 = v6;
    }

    if (a1 <= 2u)
    {
      v7 = v3;
    }

    else
    {
      v7 = 0x64696C61766E692ELL;
    }

    if (v1 <= 2)
    {
      v8 = v2;
    }

    else
    {
      v8 = v4;
    }

    v9 = v8;
    goto LABEL_19;
  }

  result = 0x6E776F6E6B6E752ELL;
  switch(a1)
  {
    case 0x8000000000000001:
      result = 0x74756F656D69742ELL;
      break;
    case 0x8000000000000002:
      result = 0x4E64726F6365722ELL;
      break;
    case 0x8000000000000003:
      result = 0xD000000000000012;
      break;
    case 0x8000000000000004:
      result = 0xD000000000000010;
      break;
    case 0x8000000000000005:
      result = 0x6F707075736E752ELL;
      break;
    case 0x8000000000000006:
      result = 0x64696C61766E692ELL;
      break;
    case 0x8000000000000007:
      result = 0xD000000000000012;
      break;
    case 0x8000000000000008:
      result = 0x64696C61766E692ELL;
      break;
    case 0x8000000000000009:
      result = 0xD000000000000014;
      break;
    case 0x800000000000000ALL:
    case 0x800000000000000CLL:
    case 0x800000000000000DLL:
      result = 0xD000000000000016;
      break;
    case 0x800000000000000BLL:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100F9E904(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  sub_1000BC4D4(&unk_1016C1200, &qword_1013B6240);
  v2[5] = swift_task_alloc();
  type metadata accessor for UUID();
  v2[6] = swift_task_alloc();
  sub_1000BC4D4(&qword_101698E38, &unk_101395BA0);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_100F9EA04, 0, 0);
}

uint64_t sub_100F9EA04()
{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  swift_defaultActor_initialize();
  *(v3 + 112) = 0xD000000000000010;
  *(v3 + 120) = 0x80000001013F5F10;
  type metadata accessor for XPCSessionManager();
  swift_allocObject();
  *(v3 + 144) = XPCSessionManager.init(name:)();
  *(v3 + 152) = 0;
  type metadata accessor for BTFindingServiceConnections(0);
  v5 = swift_allocObject();
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v3 + 160) = sub_100F04FA4();
  type metadata accessor for WorkItemQueue();
  v6 = type metadata accessor for WorkItemQueue.WarningOptions();
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  UUID.init()();
  *(v3 + 168) = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  *(v3 + 176) = 0;
  *(v3 + 183) = 0;
  *(v3 + 192) = &_swiftEmptySetSingleton;
  *(v3 + 200) = _swiftEmptyDictionarySingleton;
  *(v3 + 208) = _swiftEmptyDictionarySingleton;
  *(v3 + 216) = _swiftEmptyDictionarySingleton;
  *(v3 + 128) = v4;
  type metadata accessor for CentralManager();
  sub_1000BC4D4(&unk_1016C2250, &unk_1013F6360);
  v7 = type metadata accessor for CentralManager.Options();
  v8 = *(v7 - 8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10138B360;

  static CentralManager.Options.allowDuplicates.getter();
  static CentralManager.Options.enableFindMy.getter();
  static CentralManager.Options.needsRestrictedStateOperation.getter();
  v0[2] = v9;
  sub_100FC4DB8(&unk_1016C1210, 255, &type metadata accessor for CentralManager.Options, &protocol conformance descriptor for CentralManager.Options);
  sub_1000BC4D4(&unk_1016C2260, &unk_101395BB0);
  sub_1000041A4(&qword_1016C1220, &unk_1016C2260, &unk_101395BB0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v8 + 56))(v2, 0, 1, v7);
  v10 = swift_task_alloc();
  v0[8] = v10;
  *v10 = v0;
  v10[1] = sub_100F9ED64;
  v11 = v0[5];

  return CentralManager.__allocating_init(options:)(v11);
}

uint64_t sub_100F9ED64(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_100F9EE64, 0, 0);
}

uint64_t sub_100F9EE64()
{
  v1 = *(v0 + 32);
  *(v1 + 136) = *(v0 + 72);
  return _swift_task_switch(sub_100F9EE88, v1, 0);
}

uint64_t sub_100F9EE88()
{
  v1 = *(v0 + 32);

  v2 = *(v1 + 160);
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  *(v2 + 40) = sub_100FC4E00;
  *(v2 + 48) = v3;

  sub_1000BB27C(v4, v5);

  v6 = *(v0 + 8);
  v7 = *(v0 + 32);

  return v6(v7);
}

uint64_t sub_100F9EF90(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for Transaction();

    static Transaction.asyncTask(name:block:)();
  }

  return result;
}

uint64_t sub_100F9F028()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_100FA4648();
}

uint64_t sub_100F9F0D8()
{
  if (qword_101695108 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C468);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "BTFindingService: Starting up.", v4, 2u);
  }

  sub_100F9F1F8();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100F9F1F8()
{
  v1 = type metadata accessor for XPCServiceDescription();
  v36 = *(v1 - 8);
  v37 = v1;
  __chkstk_darwin(v1);
  v33 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for MachServiceName();
  v38 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v33 - v7;
  MachServiceName.init(_:)();
  v9 = type metadata accessor for BTFindingService();
  v42 = v9;
  v43 = &off_10165D9E0;
  v41[0] = v0;
  v10 = type metadata accessor for BTFindingTrampoline();
  v11 = objc_allocWithZone(v10);
  v12 = sub_10015049C(v41, v42);
  __chkstk_darwin(v12);
  v14 = (&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v40[3] = v9;
  v40[4] = &off_10165D9E0;
  v40[0] = v16;
  sub_10001F280(v40, v11 + OBJC_IVAR____TtC12searchpartyd19BTFindingTrampoline_implementation);
  v39.receiver = v11;
  v39.super_class = v10;

  v17 = objc_msgSendSuper2(&v39, "init");
  sub_100007BAC(v40);
  sub_100007BAC(v41);
  v18 = *(v0 + 152);
  *(v0 + 152) = v17;
  v19 = v17;

  v20 = *(v38 + 16);
  v34 = v3;
  v35 = v8;
  v20(v6, v8, v3);
  v21 = qword_101695118;
  v22 = v19;
  if (v21 != -1)
  {
    swift_once();
  }

  v23 = qword_1016C1CC8;
  v24 = objc_opt_self();
  v25 = v23;
  v26 = [v24 interfaceWithProtocol:&OBJC_PROTOCOL___SPBTFindingXPCClientProtocol];

  v27 = v33;
  XPCServiceDescription.init(name:options:exportedObject:exportedInterface:remoteObjectInterface:shouldAccept:interruptionHandler:invalidationHandler:)();
  XPCSessionManager.register(service:)();
  if (qword_101695108 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_1000076D4(v28, qword_10177C468);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "BTFindingService: Successfully registered XPC services.", v31, 2u);
  }

  (*(v36 + 8))(v27, v37);
  return (*(v38 + 8))(v35, v34);
}

void sub_100F9F680()
{
  v0 = objc_opt_self();
  v1 = &OBJC_PROTOCOL___SPBTFindingXPCProtocol;
  v2 = [v0 interfaceWithProtocol:v1];

  qword_1016C1CC8 = v2;
}

void sub_100F9F6E8(void *a1)
{
  if (!a1)
  {
    return;
  }

  v3 = *(v1 + 160);
  swift_beginAccess();
  v4 = *(v3 + 32);
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = a1;

    __CocoaSet.makeIterator()();
    sub_1000BC4D4(&unk_1016C2180, &unk_1013EA680);
    sub_1000041A4(&unk_1016BBFD0, &unk_1016C2180, &unk_1013EA680, &protocol conformance descriptor for XPCSession<A>);
    Set.Iterator.init(_cocoa:)();
    v4 = v20;
    v6 = v21;
    v7 = v22;
    v8 = v23;
    v9 = v24;
  }

  else
  {
    v10 = -1 << *(v4 + 32);
    v6 = v4 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v4 + 56);
    v13 = a1;

    v8 = 0;
  }

  while (v4 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_1000BC4D4(&unk_1016C2180, &unk_1013EA680), swift_dynamicCast(), v16 = v8, v17 = v9, !v19))
    {
LABEL_21:
      sub_1000128F8(v4);

      return;
    }

LABEL_19:
    XPCSession.proxy.getter();
    if (v19)
    {
      [v19 updatedBTRSSIResult:a1];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v8 = v16;
    v9 = v17;
  }

  v14 = v8;
  v15 = v9;
  v16 = v8;
  if (v9)
  {
LABEL_15:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v4 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (!v18)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= ((v7 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v15 = *(v6 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void sub_100F9F950(uint64_t a1)
{
  v30[0] = a1;
  v32 = type metadata accessor for UUID();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v1;
  v4 = *(v1 + 160);
  swift_beginAccess();
  v5 = *(v4 + 32);
  if ((v5 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    sub_1000BC4D4(&unk_1016C2180, &unk_1013EA680);
    sub_1000041A4(&unk_1016BBFD0, &unk_1016C2180, &unk_1013EA680, &protocol conformance descriptor for XPCSession<A>);
    Set.Iterator.init(_cocoa:)();
    v5 = v36;
    v6 = v37;
    v8 = v38;
    v7 = v39;
    v9 = v40;
  }

  else
  {
    v10 = -1 << *(v5 + 32);
    v6 = v5 + 56;
    v8 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v5 + 56);

    v7 = 0;
  }

  v30[1] = v8;
  v13 = (v8 + 64) >> 6;
  v14 = (v2 + 8);
  while (v5 < 0)
  {
    v20 = __CocoaSet.Iterator.next()();
    if (!v20 || (v34 = v20, sub_1000BC4D4(&unk_1016C2180, &unk_1013EA680), swift_dynamicCast(), v17 = v7, v18 = v9, !v35))
    {
LABEL_27:
      sub_1000128F8(v5);
      return;
    }

LABEL_20:
    v21 = v31;
    XPCSession.identifier.getter();
    v22 = v33;
    swift_beginAccess();
    v23 = *(v22 + 208);
    if (!*(v23 + 16))
    {
      goto LABEL_9;
    }

    v24 = sub_1000210EC(v21);
    if ((v25 & 1) == 0)
    {

LABEL_9:

      (*v14)(v21, v32);
      goto LABEL_10;
    }

    v26 = *v14;
    v27 = *(*(v23 + 56) + 8 * v24);
    v28 = v21;
    v29 = v27;
    v26(v28, v32);

    if ([v29 optInRawRSSIMeasurement])
    {
      XPCSession.proxy.getter();
      if (v35)
      {
        [v35 updatedBTRSSIMeasurement:v30[0]];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
    }

LABEL_10:
    v7 = v17;
    v9 = v18;
  }

  v15 = v7;
  v16 = v9;
  v17 = v7;
  if (v9)
  {
LABEL_16:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v5 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

    if (!v19)
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v13)
    {
      goto LABEL_27;
    }

    v16 = *(v6 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_100F9FD08(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = type metadata accessor for UUID();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_100F9FDD4, v1, 0);
}

uint64_t sub_100F9FDD4()
{
  v22 = v0;
  if (qword_101695108 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[11];
  v5 = type metadata accessor for Logger();
  v0[17] = sub_1000076D4(v5, qword_10177C468);
  v6 = *(v3 + 16);
  v0[18] = v6;
  v0[19] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[16];
  v11 = v0[13];
  v12 = v0[14];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v10, v11);
    v18 = sub_1000136BC(v15, v17, &v21);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Read TX Power for %{private,mask.hash}s", v13, 0x16u);
    sub_100007BAC(v14);
  }

  else
  {

    (*(v12 + 8))(v10, v11);
  }

  v19 = swift_task_alloc();
  v0[20] = v19;
  *v19 = v0;
  v19[1] = sub_100FA0068;

  return daemon.getter();
}

uint64_t sub_100FA0068(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[21] = a1;

  v3 = swift_task_alloc();
  v2[22] = v3;
  v4 = type metadata accessor for Daemon();
  v2[23] = v4;
  v5 = type metadata accessor for LegacyServiceContainer();
  v6 = sub_100FC4DB8(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100FC4DB8(&unk_101698D70, 255, type metadata accessor for LegacyServiceContainer, &unk_1014015E0);
  *v3 = v9;
  v3[1] = sub_100FA0250;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100FA0250(uint64_t a1)
{
  v4 = *v2;
  v4[24] = a1;
  v4[25] = v1;

  if (v1)
  {

    v5 = v4[12];
    v6 = sub_100FA0720;
  }

  else
  {
    v6 = sub_100FA0394;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100FA0394()
{
  v1 = *(v0 + 200);
  sub_1003A8474();
  *(v0 + 208) = v2;
  if (v1)
  {

    sub_100FC4DB8(&qword_1016969E0, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v4;
    v6 = sub_100FA06AC;
  }

  else
  {
    sub_100FC4DB8(&qword_1016969E0, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v7;
    v6 = sub_100FA04C4;
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t sub_100FA04C4()
{

  v1 = swift_task_alloc();
  *(v0 + 216) = v1;
  *v1 = v0;
  v1[1] = sub_100FA0570;
  v2 = *(v0 + 88);

  return sub_10065AD5C(v2);
}

uint64_t sub_100FA0570(uint64_t a1)
{
  v4 = *v2;
  v4[28] = v1;

  v5 = v4[12];
  if (v1)
  {
    v6 = sub_100FA0BF8;
  }

  else
  {
    v4[29] = a1;
    v6 = sub_100FA0A8C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100FA06AC()
{

  v1 = *(v0 + 96);

  return _swift_task_switch(sub_100FA0720, v1, 0);
}

uint64_t sub_100FA0720(uint64_t a1)
{
  v23 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing OwnerCommandManager to read TX Power!", v4, 2u);
  }

  type metadata accessor for SPBTFindingSessionError(0);
  *(v1 + 72) = 4;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100FC4DB8(&unk_1016C2170, 255, type metadata accessor for SPBTFindingSessionError, &unk_101389EE0);
  _BridgedStoredNSError.init(_:userInfo:)();
  v5 = *(v1 + 64);
  swift_willThrow();
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136446210;
    *(v1 + 80) = v5;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v10 = String.init<A>(describing:)();
    v12 = sub_1000136BC(v10, v11, &v22);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to fetch TX Power due to %{public}s", v8, 0xCu);
    sub_100007BAC(v9);
  }

  else
  {
  }

  v13 = *(v1 + 96);
  swift_beginAccess();
  if (!*(*(v13 + 200) + 16) || (v14 = *(v1 + 88), , sub_1000210EC(v14), LOBYTE(v14) = v15, , (v14 & 1) == 0))
  {
    v16 = *(v1 + 120);
    v17 = *(v1 + 88);
    (*(v1 + 144))(v16, v17, *(v1 + 104));
    type metadata accessor for BTRSSIFilter(0);
    swift_allocObject();
    v18 = sub_10058D7E8(v16, 0, 0);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v13 + 200);
    *(v13 + 200) = 0x8000000000000000;
    sub_101001ED8(v18, v17, isUniquelyReferenced_nonNull_native);
    *(v13 + 200) = v22;
    swift_endAccess();
  }

  v20 = *(v1 + 8);

  return v20();
}

uint64_t sub_100FA0A8C()
{

  v1 = *(v0 + 232);
  v2 = *(v0 + 96);
  swift_beginAccess();
  if (!*(*(v2 + 200) + 16) || (v3 = *(v0 + 88), , sub_1000210EC(v3), LOBYTE(v3) = v4, , (v3 & 1) == 0))
  {
    v5 = *(v0 + 120);
    v6 = *(v0 + 88);
    (*(v0 + 144))(v5, v6, *(v0 + 104));
    type metadata accessor for BTRSSIFilter(0);
    swift_allocObject();
    v7 = sub_10058D7E8(v5, v1, 0);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v2 + 200);
    *(v2 + 200) = 0x8000000000000000;
    sub_101001ED8(v7, v6, isUniquelyReferenced_nonNull_native);
    *(v2 + 200) = v11;
    swift_endAccess();
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100FA0BF8()
{
  v19 = v0;

  v1 = *(v0 + 224);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136446210;
    *(v0 + 80) = v1;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v6 = String.init<A>(describing:)();
    v8 = sub_1000136BC(v6, v7, &v18);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch TX Power due to %{public}s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  else
  {
  }

  v9 = *(v0 + 96);
  swift_beginAccess();
  if (!*(*(v9 + 200) + 16) || (v10 = *(v0 + 88), , sub_1000210EC(v10), LOBYTE(v10) = v11, , (v10 & 1) == 0))
  {
    v12 = *(v0 + 120);
    v13 = *(v0 + 88);
    (*(v0 + 144))(v12, v13, *(v0 + 104));
    type metadata accessor for BTRSSIFilter(0);
    swift_allocObject();
    v14 = sub_10058D7E8(v12, 0, 0);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v9 + 200);
    *(v9 + 200) = 0x8000000000000000;
    sub_101001ED8(v14, v13, isUniquelyReferenced_nonNull_native);
    *(v9 + 200) = v18;
    swift_endAccess();
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_100FA0E84(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v2[7] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100FA0F7C, v1, 0);
}

uint64_t sub_100FA0F7C()
{
  v40 = v0;
  if (qword_101695108 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[5];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177C468);
  v38 = *(v2 + 16);
  v38(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[9];
  v9 = v0[10];
  v11 = v0[8];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v39 = v37;
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v16 = v11;
    v17 = *(v10 + 8);
    v17(v9, v16);
    v18 = sub_1000136BC(v13, v15, &v39);

    *(v12 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "startScanning for beacon %{private,mask.hash}s", v12, 0x16u);
    sub_100007BAC(v37);
  }

  else
  {

    v19 = v11;
    v17 = *(v10 + 8);
    v17(v9, v19);
  }

  v20 = v0[8];
  v21 = v0[9];
  v22 = v0[5];
  v23 = v0[6];
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v24 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_101385D80;
  v38(v25 + v24, v22, v20);
  swift_beginAccess();
  sub_10062536C(v25);
  swift_setDeallocating();
  v17(v25 + v24, v20);
  swift_deallocClassInstance();
  swift_endAccess();
  if (*(v23 + 176))
  {
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Existing scan in progress. Not starting a new one.", v28, 2u);
    }
  }

  else
  {
    v29 = v0[6];
    v30 = v0[7];
    v31 = type metadata accessor for TaskPriority();
    (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
    v33 = sub_100FC4DB8(&qword_1016C2128, v32, type metadata accessor for BTFindingService, &unk_1013F60B8);
    v34 = swift_allocObject();
    v34[2] = v29;
    v34[3] = v33;
    v34[4] = v29;
    swift_retain_n();
    *(v23 + 176) = sub_100A838D4(0, 0, v30, &unk_1013F6138, v34);
  }

  v35 = v0[1];

  return v35();
}

uint64_t sub_100FA1424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v6 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v4[15] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v4[16] = v7;
  v4[17] = *(v7 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  sub_1000BC4D4(&qword_10169CBD8, &unk_1013996D0);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016C1190, &qword_101392FF8);
  v4[24] = swift_task_alloc();
  v8 = type metadata accessor for DiscoveredObject(0);
  v4[25] = v8;
  v4[26] = *(v8 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016973D0, &qword_10138BF60);
  v4[30] = swift_task_alloc();
  v9 = sub_1000BC4D4(&unk_1016C11A0, &qword_10138BF68);
  v4[31] = v9;
  v4[32] = *(v9 - 8);
  v4[33] = swift_task_alloc();
  v10 = sub_1000BC4D4(&unk_1016C1140, &qword_10138BF70);
  v4[34] = v10;
  v4[35] = *(v10 - 8);
  v4[36] = swift_task_alloc();
  v11 = type metadata accessor for ScanMode();
  v4[37] = v11;
  v4[38] = *(v11 - 8);
  v4[39] = swift_task_alloc();
  v12 = sub_1000BC4D4(&unk_1016C2160, &qword_10138BF78);
  v4[40] = v12;
  v4[41] = *(v12 - 8);
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();

  return _swift_task_switch(sub_100FA1868, a4, 0);
}

uint64_t sub_100FA1868()
{
  v0[44] = *(v0[11] + 136);
  sub_1000BC4D4(&qword_10169BCF0, &unk_1013E2690);
  v1 = type metadata accessor for CentralManager.State();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[45] = v5;
  *(v5 + 16) = xmmword_10138BBE0;
  v6 = v5 + v4;
  v7 = *(v2 + 104);
  v7(v6, enum case for CentralManager.State.poweredOn(_:), v1);
  v7(v6 + v3, enum case for CentralManager.State.restricted(_:), v1);
  v8 = swift_task_alloc();
  v0[46] = v8;
  v9 = type metadata accessor for CentralManager();
  v10 = sub_100FC4DB8(&unk_1016C1160, 255, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  *v8 = v0;
  v8[1] = sub_100FA1A50;

  return CentralManagerProtocol.await(states:)(v5, v9, v10);
}

uint64_t sub_100FA1A50()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = sub_100FA3A44;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_100FA1B78;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100FA1B78()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];
  v4 = enum case for ScanUseCase.btFinding(_:);
  v5 = type metadata accessor for ScanUseCase();
  (*(*(v5 - 8) + 104))(v1, v4, v5);
  (*(v2 + 104))(v1, enum case for ScanMode.useCase(_:), v3);
  v10 = &async function pointer to dispatch thunk of CentralManager.scanForPeripherals(scanMode:garbageCollectInterval:) + async function pointer to dispatch thunk of CentralManager.scanForPeripherals(scanMode:garbageCollectInterval:);
  v6 = swift_task_alloc();
  v0[48] = v6;
  *v6 = v0;
  v6[1] = sub_100FA1CB4;
  v7 = v0[43];
  v8 = v0[39];

  return (v10)(v7, v8, 0xD02AB486CEDC0000, 0);
}

uint64_t sub_100FA1CB4()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *(*v1 + 304);
  v5 = *(*v1 + 296);
  *(*v1 + 392) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = sub_100FA3B98;
  }

  else
  {
    v7 = sub_100FA1E3C;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100FA1E3C()
{
  (*(v0[41] + 16))(v0[42], v0[43], v0[40]);
  v0[50] = type metadata accessor for Peripheral();
  sub_1000041A4(&qword_1016973E0, &unk_1016C2160, &qword_10138BF78, &protocol conformance descriptor for AsyncThrowingStream<A, B>);
  AsyncCompactMapSequence.init(_:transform:)();
  AsyncCompactMapSequence.base.getter();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncCompactMapSequence.transform.getter();
  AsyncCompactMapSequence.Iterator.init(_:transform:)();
  v0[51] = sub_100FC4DB8(&qword_1016C2128, v1, type metadata accessor for BTFindingService, &unk_1013F60B8);
  swift_beginAccess();
  swift_beginAccess();
  v2 = v0[51];
  v3 = v0[11];
  v4 = swift_task_alloc();
  v0[52] = v4;
  *v4 = v0;
  v4[1] = sub_100FA2070;

  return sub_1011EBA70(v3, v2);
}

uint64_t sub_100FA2070(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 424) = a1;
  *(v4 + 432) = v1;

  v5 = *(v3 + 88);
  if (v1)
  {
    v6 = sub_100FA3CE4;
  }

  else
  {
    v6 = sub_100FA21A4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100FA21A4()
{
  if (v0[53])
  {
    sub_100FC4DB8(&unk_1016C11B0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[55] = v2;
    v0[56] = v1;

    return _swift_task_switch(sub_100FA2490, v2, v1);
  }

  else
  {
    (*(v0[32] + 8))(v0[33], v0[31]);
    if (qword_101695108 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177C468);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Done scanning", v6, 2u);
    }

    v7 = v0[43];
    v8 = v0[40];
    v9 = v0[41];
    (*(v0[35] + 8))(v0[36], v0[34]);
    (*(v9 + 8))(v7, v8);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_100FA2490()
{
  v1 = *(v0 + 88);
  *(v0 + 456) = dispatch thunk of Peripheral.advertisementData.getter();

  return _swift_task_switch(sub_100FA2500, v1, 0);
}

uint64_t sub_100FA2500()
{
  v22 = v0;
  v1 = v0[57];
  if (v1)
  {
    sub_100695B6C(v1);
    v0[58] = v2;
    v3 = v0[55];
    v4 = v0[56];

    return _swift_task_switch(sub_100FA27D0, v3, v4);
  }

  else
  {
    if (qword_101695108 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177C468);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[13];
      v9 = v0[14];
      v10 = v0[12];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 136446210;
      v21 = v12;
      Peripheral.id.getter();
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      (*(v8 + 8))(v9, v10);
      v16 = sub_1000136BC(v13, v15, &v21);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v6, v7, "Missing advertisementData for %{public}s!", v11, 0xCu);
      sub_100007BAC(v12);
    }

    else
    {
    }

    v17 = v0[51];
    v18 = v0[11];
    v19 = swift_task_alloc();
    v0[52] = v19;
    *v19 = v0;
    v19[1] = sub_100FA2070;

    return sub_1011EBA70(v18, v17);
  }
}

uint64_t sub_100FA27D0()
{
  v1 = *(v0 + 88);
  *(v0 + 472) = dispatch thunk of Peripheral.rssi.getter();
  *(v0 + 560) = v2;

  return _swift_task_switch(sub_100FA2844, v1, 0);
}

uint64_t sub_100FA2844()
{
  v34 = v0;
  if (*(v0 + 560))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(v0 + 472);
  }

  if (v1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v1 > 0x7FFFFFFF)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  v4 = *(v0 + 192);
  sub_1002DEDAC(*(v0 + 464), v1, v4);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_10000B3A8(*(v0 + 192), &unk_1016C1190, &qword_101392FF8);
    if (qword_101695108 == -1)
    {
LABEL_8:
      v5 = type metadata accessor for Logger();
      sub_1000076D4(v5, qword_10177C468);

      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = *(v0 + 104);
        v9 = *(v0 + 112);
        v10 = *(v0 + 96);
        v11 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *v11 = 136446466;
        v33 = v32;
        Peripheral.id.getter();
        sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
        v12 = dispatch thunk of CustomStringConvertible.description.getter();
        v14 = v13;
        (*(v8 + 8))(v9, v10);
        v15 = sub_1000136BC(v12, v14, &v33);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2080;
        sub_1000BC4D4(&qword_1016A0B00, &unk_1013A48B0);
        v16 = Dictionary.description.getter();
        v18 = v17;

        v19 = sub_1000136BC(v16, v18, &v33);

        *(v11 + 14) = v19;
        _os_log_impl(&_mh_execute_header, v6, v7, "Could not parse advertisementData for %{public}s: %s", v11, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v29 = *(v0 + 408);
      v30 = *(v0 + 88);
      v31 = swift_task_alloc();
      *(v0 + 416) = v31;
      *v31 = v0;
      v31[1] = sub_100FA2070;

      return sub_1011EBA70(v30, v29);
    }

LABEL_19:
    swift_once();
    goto LABEL_8;
  }

  v20 = *(v0 + 232);
  v21 = *(v0 + 192);
  v22 = *(v0 + 200);

  sub_100FC4778(v21, v20, type metadata accessor for DiscoveredObject);
  v23 = (v20 + *(v22 + 36));
  v25 = *v23;
  v24 = v23[1];
  v26 = swift_task_alloc();
  *(v0 + 480) = v26;
  *v26 = v0;
  v26[1] = sub_100FA2CA0;
  v27 = *(v0 + 184);

  return sub_100FA8594(v27, v25, v24);
}

uint64_t sub_100FA2CA0()
{
  v2 = *v1;
  *(*v1 + 488) = v0;

  v3 = *(v2 + 88);
  if (v0)
  {
    v4 = sub_100FA3F9C;
  }

  else
  {
    v4 = sub_100FA2DCC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100FA2DCC()
{
  v68 = v0;
  v1 = v0[22];
  sub_1000D2A70(v0[23], v1, &qword_10169CBD8, &unk_1013996D0);
  v2 = type metadata accessor for BeaconDetails(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[29];
    v4 = v0[22];
    sub_10000B3A8(v0[23], &qword_10169CBD8, &unk_1013996D0);

LABEL_9:
    sub_10000B3A8(v4, &qword_10169CBD8, &unk_1013996D0);
    sub_100FC47E0(v3, type metadata accessor for DiscoveredObject);
    v37 = v0[51];
    v38 = v0[11];
    v39 = swift_task_alloc();
    v0[52] = v39;
    *v39 = v0;
    v39[1] = sub_100FA2070;

    return sub_1011EBA70(v38, v37);
  }

  v5 = v0[21];
  v6 = v0[22];
  v7 = v0[20];
  v8 = v0[16];
  v9 = v0[17];
  v10 = v0[15];
  v11 = v0[11];
  sub_100FC4840(v6, v10, type metadata accessor for BeaconKeyManager.IndexInformation);
  sub_100FC47E0(v6, type metadata accessor for BeaconDetails);
  v12 = *(v9 + 16);
  v12(v7, v10, v8);
  sub_100FC47E0(v10, type metadata accessor for BeaconKeyManager.IndexInformation);
  (*(v9 + 32))(v5, v7, v8);
  v13 = *(v11 + 192);

  LOBYTE(v5) = sub_100037E20(v5, v13);

  if ((v5 & 1) == 0)
  {
    v35 = v0[17];

    v36 = *(v35 + 8);
    v3 = v0[29];
    v4 = v0[23];
    v36(v0[21], v0[16]);
    goto LABEL_9;
  }

  if (qword_101695108 != -1)
  {
    swift_once();
  }

  v14 = v0[28];
  v15 = v0[29];
  v16 = v0[27];
  v17 = v0[21];
  v18 = v0[19];
  v19 = v0[16];
  v20 = type metadata accessor for Logger();
  sub_1000076D4(v20, qword_10177C468);
  v66 = v12;
  v12(v18, v17, v19);
  sub_100FC4840(v15, v14, type metadata accessor for DiscoveredObject);
  sub_100FC4840(v15, v16, type metadata accessor for DiscoveredObject);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  v23 = os_log_type_enabled(v21, v22);
  v24 = v0[28];
  if (v23)
  {
    v62 = v0[25];
    v63 = v0[27];
    v65 = v22;
    v25 = v0[19];
    v26 = v0[16];
    v27 = v0[17];
    v28 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v67 = v64;
    *v28 = 136315650;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    log = v21;
    v32 = *(v27 + 8);
    v32(v25, v26);
    v33 = sub_1000136BC(v29, v31, &v67);

    *(v28 + 4) = v33;
    *(v28 + 12) = 1024;
    LODWORD(v26) = *(v24 + *(v62 + 60));
    sub_100FC47E0(v24, type metadata accessor for DiscoveredObject);
    *(v28 + 14) = v26;
    *(v28 + 18) = 2048;
    v34 = *(v63 + *(v62 + 40));
    sub_100FC47E0(v63, type metadata accessor for DiscoveredObject);
    *(v28 + 20) = v34;
    _os_log_impl(&_mh_execute_header, log, v65, "Found matching beacon %s. RSSI: %d. Channel: %ld", v28, 0x1Cu);
    sub_100007BAC(v64);
  }

  else
  {
    v41 = v0[19];
    v42 = v0[16];
    v43 = v0[17];
    sub_100FC47E0(v0[27], type metadata accessor for DiscoveredObject);
    sub_100FC47E0(v24, type metadata accessor for DiscoveredObject);

    v32 = *(v43 + 8);
    v32(v41, v42);
  }

  v0[62] = v32;
  v44 = v0[29];
  v45 = v0[25];
  v46 = v0[11];
  v47 = *(v44 + *(v45 + 40));
  v48 = *(v44 + *(v45 + 60));
  v49 = objc_allocWithZone(SPBTRSSIMeasurement);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v51 = Date._bridgeToObjectiveC()().super.isa;
  v52 = [v49 initWithBeaconIdentifier:isa timestamp:v51 channel:v47 rssi:v48];
  v0[63] = v52;

  v53 = *(v46 + 200);
  if (!*(v53 + 16))
  {
    goto LABEL_17;
  }

  v54 = v0[21];

  v55 = sub_1000210EC(v54);
  if ((v56 & 1) == 0)
  {

LABEL_17:
    v59 = v0[18];
    v66(v59, v0[21], v0[16]);
    type metadata accessor for BTRSSIFilter(0);
    swift_allocObject();
    v0[67] = sub_10058D7E8(v59, 0, 0);
    v60 = swift_task_alloc();
    v0[68] = v60;
    *v60 = v0;
    v60[1] = sub_100FA3764;
    v58 = v52;
    goto LABEL_18;
  }

  v0[64] = *(*(v53 + 56) + 8 * v55);

  v57 = swift_task_alloc();
  v0[65] = v57;
  *v57 = v0;
  v57[1] = sub_100FA34E8;
  v58 = v52;
LABEL_18:

  return sub_10058DB6C(v58);
}

uint64_t sub_100FA34E8(uint64_t a1)
{
  v2 = *(*v1 + 88);
  *(*v1 + 528) = a1;

  return _swift_task_switch(sub_100FA3600, v2, 0);
}

uint64_t sub_100FA3600()
{
  v1 = *(v0 + 528);

  v2 = *(v0 + 528);
  v3 = *(v0 + 504);
  v4 = v1;
  sub_100F9F950(v3);
  sub_100F9F6E8(v2);

  v5 = *(v0 + 232);
  v6 = *(v0 + 184);
  (*(v0 + 496))(*(v0 + 168), *(v0 + 128));
  sub_10000B3A8(v6, &qword_10169CBD8, &unk_1013996D0);
  sub_100FC47E0(v5, type metadata accessor for DiscoveredObject);
  v7 = *(v0 + 408);
  v8 = *(v0 + 88);
  v9 = swift_task_alloc();
  *(v0 + 416) = v9;
  *v9 = v0;
  v9[1] = sub_100FA2070;

  return sub_1011EBA70(v8, v7);
}

uint64_t sub_100FA3764(uint64_t a1)
{
  v2 = *(*v1 + 88);
  *(*v1 + 552) = a1;

  return _swift_task_switch(sub_100FA387C, v2, 0);
}

uint64_t sub_100FA387C()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 536);
  v3 = *(v0 + 168);
  v4 = *(v0 + 88);
  swift_beginAccess();
  v5 = v1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v4 + 200);
  *(v4 + 200) = 0x8000000000000000;
  sub_101001ED8(v2, v3, isUniquelyReferenced_nonNull_native);
  *(v4 + 200) = v15;
  swift_endAccess();

  v7 = *(v0 + 552);
  v8 = *(v0 + 504);
  sub_100F9F950(v8);
  sub_100F9F6E8(v7);

  v9 = *(v0 + 232);
  v10 = *(v0 + 184);
  (*(v0 + 496))(*(v0 + 168), *(v0 + 128));
  sub_10000B3A8(v10, &qword_10169CBD8, &unk_1013996D0);
  sub_100FC47E0(v9, type metadata accessor for DiscoveredObject);
  v11 = *(v0 + 408);
  v12 = *(v0 + 88);
  v13 = swift_task_alloc();
  *(v0 + 416) = v13;
  *v13 = v0;
  v13[1] = sub_100FA2070;

  return sub_1011EBA70(v12, v11);
}

uint64_t sub_100FA3A44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100FA3B98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100FA3CE4()
{
  (*(v0[32] + 8))(v0[33], v0[31]);
  if (qword_101695108 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C468);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    v6 = _convertErrorToNSError(_:)();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error during scan: %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  v7 = v0[43];
  v8 = v0[40];
  v9 = v0[41];
  (*(v0[35] + 8))(v0[36], v0[34]);
  (*(v9 + 8))(v7, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100FA3F9C()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  v4 = v0[29];

  (*(v2 + 8))(v1, v3);
  sub_100FC47E0(v4, type metadata accessor for DiscoveredObject);
  if (qword_101695108 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177C468);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = _convertErrorToNSError(_:)();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error during scan: %{public}@", v8, 0xCu);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);
  }

  v11 = v0[43];
  v12 = v0[40];
  v13 = v0[41];
  (*(v0[35] + 8))(v0[36], v0[34]);
  (*(v13 + 8))(v11, v12);

  v14 = v0[1];

  return v14();
}

uint64_t sub_100FA4284(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for UUID();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_100FA437C, v1, 0);
}

uint64_t sub_100FA437C()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  swift_beginAccess();
  sub_1010F6584(v5, v1);
  sub_10000B3A8(v1, &qword_1016980D0, &unk_10138F3B0);
  swift_endAccess();
  (*(v4 + 16))(v2, v5, v3);
  swift_beginAccess();
  sub_1001E1CC8(0, v2);
  swift_endAccess();
  if (*(*(v6 + 192) + 16))
  {

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    v0[14] = v9;
    *v9 = v0;
    v9[1] = sub_100FA4518;

    return sub_100FA4648();
  }
}

uint64_t sub_100FA4518()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100FA4648()
{
  v1[14] = v0;
  v2 = type metadata accessor for UUID();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016C2138, &qword_1013F60F0);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return _swift_task_switch(sub_100FA4758, v0, 0);
}

uint64_t sub_100FA4758()
{
  v41 = v0;
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 168) = sub_1000076D4(v1, qword_1016C1CB0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v40 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1000136BC(0x6164696C61766E69, 0xEC00000029286574, &v40);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v6 = *(v0 + 112);
  swift_beginAccess();
  v6[24] = &_swiftEmptySetSingleton;

  swift_beginAccess();
  v6[25] = _swiftEmptyDictionarySingleton;

  swift_beginAccess();
  v6[26] = _swiftEmptyDictionarySingleton;

  if (v6[22])
  {

    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    Task.cancel()();
  }

  v7 = *(v0 + 112);
  v6[22] = 0;

  swift_beginAccess();
  v8 = *(v7 + 216);
  *(v0 + 176) = v8;
  v9 = *(v8 + 32);
  *(v0 + 248) = v9;
  v10 = -1;
  v11 = -1 << v9;
  if (-(-1 << v9) < 64)
  {
    v10 = ~(-1 << -v11);
  }

  v12 = v10 & *(v8 + 64);

  if (v12)
  {
    v13 = 0;
LABEL_14:
    v17 = *(v0 + 144);
    v16 = *(v0 + 152);
    v18 = *(v0 + 120);
    v19 = *(v0 + 128);
    v39 = (v12 - 1) & v12;
    v20 = __clz(__rbit64(v12)) | (v13 << 6);
    (*(v19 + 16))(v17, *(v8 + 48) + *(v19 + 72) * v20, v18);
    v21 = (*(v8 + 56) + 16 * v20);
    v22 = *v21;
    v23 = v21[1];
    v24 = sub_1000BC4D4(&unk_1016C2140, &unk_1013F60F8);
    v25 = (v16 + *(v24 + 48));
    (*(v19 + 32))(v16, v17, v18);
    *v25 = v22;
    v25[1] = v23;
    (*(*(v24 - 8) + 56))(v16, 0, 1, v24);

    v26 = v39;
    v15 = v13;
  }

  else
  {
    v14 = 0;
    v15 = ((63 - v11) >> 6) - 1;
    while (v15 != v14)
    {
      v13 = v14 + 1;
      v12 = *(v8 + 72 + 8 * v14++);
      if (v12)
      {
        goto LABEL_14;
      }
    }

    v37 = *(v0 + 152);
    v38 = sub_1000BC4D4(&unk_1016C2140, &unk_1013F60F8);
    (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
    v26 = 0;
  }

  *(v0 + 184) = v26;
  *(v0 + 192) = v15;
  v27 = *(v0 + 160);
  sub_1000D2AD8(*(v0 + 152), v27, &qword_1016C2138, &qword_1013F60F0);
  v28 = sub_1000BC4D4(&unk_1016C2140, &unk_1013F60F8);
  if ((*(*(v28 - 8) + 48))(v27, 1, v28) == 1)
  {

    v29 = swift_task_alloc();
    *(v0 + 216) = v29;
    *v29 = v0;
    v29[1] = sub_100FA52C4;

    return sub_100FA6AC8();
  }

  else
  {
    v31 = *(v0 + 160);
    v33 = *(v0 + 128);
    v32 = *(v0 + 136);
    v34 = *(v0 + 120);

    (*(v33 + 32))(v32, v31, v34);
    v35 = swift_task_alloc();
    *(v0 + 200) = v35;
    *v35 = v0;
    v35[1] = sub_100FA4CE0;
    v36 = *(v0 + 136);

    return sub_100FA58D8(v36);
  }
}

uint64_t sub_100FA4CE0()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
  }

  v4 = swift_task_alloc();
  *(v2 + 208) = v4;
  *v4 = v3;
  v4[1] = sub_100FA4E28;
  v5 = *(v2 + 136);

  return sub_100FA5EC8(v5);
}

uint64_t sub_100FA4E28()
{
  v1 = *(*v0 + 112);

  return _swift_task_switch(sub_100FA4F38, v1, 0);
}

uint64_t sub_100FA4F38()
{
  result = (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  if (v2)
  {
    v4 = *(v0 + 176);
LABEL_11:
    v9 = *(v0 + 144);
    v10 = *(v0 + 152);
    v11 = *(v0 + 120);
    v12 = *(v0 + 128);
    v31 = (v2 - 1) & v2;
    v13 = __clz(__rbit64(v2)) | (v3 << 6);
    (*(v12 + 16))(v9, *(v4 + 48) + *(v12 + 72) * v13, v11);
    v14 = (*(v4 + 56) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = sub_1000BC4D4(&unk_1016C2140, &unk_1013F60F8);
    v18 = (v10 + *(v17 + 48));
    (*(v12 + 32))(v10, v9, v11);
    *v18 = v15;
    v18[1] = v16;
    (*(*(v17 - 8) + 56))(v10, 0, 1, v17);

    v19 = v31;
    v7 = v3;
LABEL_12:
    *(v0 + 184) = v19;
    *(v0 + 192) = v7;
    v20 = *(v0 + 160);
    sub_1000D2AD8(*(v0 + 152), v20, &qword_1016C2138, &qword_1013F60F0);
    v21 = sub_1000BC4D4(&unk_1016C2140, &unk_1013F60F8);
    if ((*(*(v21 - 8) + 48))(v20, 1, v21) == 1)
    {

      v22 = swift_task_alloc();
      *(v0 + 216) = v22;
      *v22 = v0;
      v22[1] = sub_100FA52C4;

      return sub_100FA6AC8();
    }

    else
    {
      v23 = *(v0 + 160);
      v25 = *(v0 + 128);
      v24 = *(v0 + 136);
      v26 = *(v0 + 120);

      (*(v25 + 32))(v24, v23, v26);
      v27 = swift_task_alloc();
      *(v0 + 200) = v27;
      *v27 = v0;
      v27[1] = sub_100FA4CE0;
      v28 = *(v0 + 136);

      return sub_100FA58D8(v28);
    }
  }

  else
  {
    v5 = ((1 << *(v0 + 248)) + 63) >> 6;
    if (v5 <= (v3 + 1))
    {
      v6 = v3 + 1;
    }

    else
    {
      v6 = ((1 << *(v0 + 248)) + 63) >> 6;
    }

    v7 = v6 - 1;
    while (1)
    {
      v8 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v8 >= v5)
      {
        v29 = *(v0 + 152);
        v30 = sub_1000BC4D4(&unk_1016C2140, &unk_1013F60F8);
        (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
        v19 = 0;
        goto LABEL_12;
      }

      v4 = *(v0 + 176);
      v2 = *(v4 + 8 * v8 + 64);
      ++v3;
      if (v2)
      {
        v3 = v8;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100FA52C4()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 224) = v3;
  *v3 = v2;
  v3[1] = sub_100FA5404;

  return sub_100FA6F48();
}

uint64_t sub_100FA5404()
{
  v2 = *v1;
  v2[29] = v0;

  if (v0)
  {
    v3 = v2[14];

    return _swift_task_switch(sub_100FA56DC, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[30] = v4;
    *v4 = v2;
    v4[1] = sub_100FA5570;

    return sub_100FA74A0();
  }
}

uint64_t sub_100FA5570()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100FA56DC()
{
  v10 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v3 = 136446466;
    *(v3 + 4) = sub_1000136BC(0x6164696C61766E69, 0xEC00000029286574, &v9);
    *(v3 + 12) = 2114;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v6;
    *v4 = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s Failed to stopLocalFindableScanning %{public}@", v3, 0x16u);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v5);
  }

  else
  {
  }

  v7 = swift_task_alloc();
  *(v0 + 240) = v7;
  *v7 = v0;
  v7[1] = sub_100FA5570;

  return sub_100FA74A0();
}

uint64_t sub_100FA58D8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100FA5998, v1, 0);
}

uint64_t sub_100FA5998()
{
  v20 = v0;
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016C1CB0);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v12 = 136446723;
    *(v12 + 4) = sub_1000136BC(0xD000000000000019, 0x80000001013758A0, &v19);
    *(v12 + 12) = 2160;
    *(v12 + 14) = 1752392040;
    *(v12 + 22) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_1000136BC(v13, v15, &v19);

    *(v12 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s for %{private,mask.hash}s", v12, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  *(v0[3] + 185) = 0;
  v17 = swift_task_alloc();
  v0[7] = v17;
  *v17 = v0;
  v17[1] = sub_100FA5C60;

  return sub_100FA74A0();
}

uint64_t sub_100FA5C60()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 64) = v3;
  *v3 = v2;
  v3[1] = sub_100FA5DB8;
  v4 = *(v1 + 16);

  return sub_100FAAD8C(v4);
}

uint64_t sub_100FA5DB8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100FA5EC8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100FA6028, v1, 0);
}

uint64_t sub_100FA6028()
{
  v14 = v0;
  if (*(v0[3] + 186) == 1)
  {
    if (qword_101695110 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    v0[11] = sub_1000076D4(v1, qword_1016C1CB0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Saving .disappeared event", v4, 2u);
    }

    v5 = swift_task_alloc();
    v0[12] = v5;
    *v5 = v0;
    v5[1] = sub_100FA62EC;

    return daemon.getter();
  }

  else
  {
    if (qword_101695110 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_1016C1CB0);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_1000136BC(0xD00000000000001CLL, 0x8000000101375880, &v13);
      _os_log_impl(&_mh_execute_header, v7, v8, "%s Never detected nearby. NOT saving .disappeared event", v9, 0xCu);
      sub_100007BAC(v10);
    }

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_100FA62EC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 104) = a1;

  v3 = swift_task_alloc();
  *(v2 + 112) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for PencilPairingService(0);
  v6 = sub_100FC4DB8(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100FC4DB8(&qword_10169A090, 255, type metadata accessor for PencilPairingService, &unk_1013E8708);
  *v3 = v9;
  v3[1] = sub_100FA64D0;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100FA64D0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = *(v4 + 24);
    v6 = sub_100FA6940;
  }

  else
  {
    v7 = *(v4 + 24);

    *(v4 + 128) = a1;
    v6 = sub_100FA6610;
    v5 = v7;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100FA6610()
{
  v1 = v0[6];
  v3 = v0[4];
  v2 = v0[5];
  (*(v1 + 16))(v0[7], v0[2], v2);
  type metadata accessor for Peripheral();
  Identifier.init(_:)();
  (*(v1 + 56))(v3, 1, 1, v2);
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_100FA6720;
  v5 = v0[10];
  v6 = v0[4];

  return sub_100D739FC(v5, v6);
}

uint64_t sub_100FA6720()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 24);

  sub_10000B3A8(v4, &qword_1016980D0, &unk_10138F3B0);
  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100FA68C0, v5, 0);
}

uint64_t sub_100FA68C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100FA6940()
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to save .disappeared event %{public}@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100FA6AE8()
{
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016C1CB0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Clearing throttles", v4, 2u);
  }

  if (qword_101695130 != -1)
  {
    swift_once();
  }

  v0[3] = qword_1016C1CE0;
  v0[4] = sub_1000BC4D4(&qword_1016A4720, &qword_1013B1060);
  v0[5] = sub_1000041A4(&unk_1016C2150, &qword_1016A4720, &qword_1013B1060, &protocol conformance descriptor for AsyncKeyedThrottle<A>);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100FA6CA4, v6, v5);
}

uint64_t sub_100FA6CA4()
{
  v1 = *(v0 + 16);
  dispatch thunk of AsyncKeyedThrottle.clearThrottleForKeysExcept(keys:)();

  return _swift_task_switch(sub_100FA6D14, v1, 0);
}

uint64_t sub_100FA6D14()
{
  if (qword_101695120 != -1)
  {
    swift_once();
  }

  *(v0 + 48) = qword_1016C1CD0;
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100FA6DC0, v2, v1);
}

uint64_t sub_100FA6DC0()
{
  v1 = *(v0 + 16);
  dispatch thunk of AsyncKeyedThrottle.clearThrottleForKeysExcept(keys:)();

  return _swift_task_switch(sub_100FA6E34, v1, 0);
}

uint64_t sub_100FA6E34()
{
  if (qword_101695128 != -1)
  {
    swift_once();
  }

  *(v0 + 56) = qword_1016C1CD8;
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100FA6EE0, v2, v1);
}

uint64_t sub_100FA6EE0()
{
  dispatch thunk of AsyncKeyedThrottle.clearThrottleForKeysExcept(keys:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100FA6F68()
{
  v9 = v0;
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016C1CB0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1000136BC(0xD00000000000001BLL, 0x80000001013758C0, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_100FA7114;

  return daemon.getter();
}

uint64_t sub_100FA7114(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 32) = a1;

  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for OwnerCommandService(0);
  v6 = sub_100FC4DB8(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100FC4DB8(&unk_1016B10E0, 255, type metadata accessor for OwnerCommandService, &unk_10140DB10);
  *v3 = v9;
  v3[1] = sub_100FA72F8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100FA72F8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = *(v4 + 16);
    v6 = sub_10050A90C;
  }

  else
  {

    *(v4 + 56) = a1;
    v6 = sub_100FA7434;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100FA7434()
{
  v1 = *(v0 + 16);
  sub_101219DE0();

  return _swift_task_switch(sub_100BCB8D8, v1, 0);
}

uint64_t sub_100FA74A0()
{
  v1[5] = v0;
  v2 = type metadata accessor for UUID();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016C2138, &qword_1013F60F0);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_100FA75BC, v0, 0);
}

uint64_t sub_100FA75BC()
{
  v67 = v0;
  if (qword_101695110 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v1 = type metadata accessor for Logger();
    *(v0 + 104) = sub_1000076D4(v1, qword_1016C1CB0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v66 = v5;
      *v4 = 136446210;
      *(v4 + 4) = sub_1000136BC(0xD000000000000020, 0x8000000101375850, &v66);
      _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
      sub_100007BAC(v5);
    }

    v6 = *(v0 + 40);
    *(v6 + 184) = 0;
    swift_beginAccess();
    v7 = *(v6 + 216);
    *(v0 + 112) = v7;
    v8 = *(v7 + 32);
    *(v0 + 168) = v8;
    v9 = 1 << v8;
    v10 = v9 < 64 ? ~(-1 << v9) : -1;
    v11 = v10 & *(v7 + 64);

    v12 = 0;
    v13 = &unk_1016C2140;
    v63 = v0;
    if (v11)
    {
      break;
    }

LABEL_9:
    v15 = ((1 << *(v0 + 168)) + 63) >> 6;
    if (v15 <= (v12 + 1))
    {
      v16 = v12 + 1;
    }

    else
    {
      v16 = ((1 << *(v0 + 168)) + 63) >> 6;
    }

    v17 = v16 - 1;
    while (1)
    {
      v18 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v18 >= v15)
      {
        v35 = *(v0 + 88);
        v36 = sub_1000BC4D4(v13, &unk_1013F60F8);
        (*(*(v36 - 8) + 56))(v35, 1, 1, v36);
        v11 = 0;
        goto LABEL_18;
      }

      v14 = *(v0 + 112);
      v11 = *(v14 + 8 * v18 + 64);
      ++v12;
      if (v11)
      {
        v12 = v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_32:
    swift_once();
  }

  while (1)
  {
    v14 = *(v0 + 112);
LABEL_17:
    v20 = *(v0 + 80);
    v19 = *(v0 + 88);
    v22 = *(v0 + 48);
    v21 = *(v0 + 56);
    v23 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v24 = v23 | (v12 << 6);
    (*(v21 + 16))(v20, *(v14 + 48) + *(v21 + 72) * v24, v22);
    v25 = (*(v14 + 56) + 16 * v24);
    v26 = *v25;
    v64 = v25[1];
    v27 = sub_1000BC4D4(v13, &unk_1013F60F8);
    v28 = v13;
    v29 = (v19 + *(v27 + 48));
    (*(v21 + 32))(v19, v20, v22);
    *v29 = v26;
    v29[1] = v64;
    v13 = v28;
    v0 = v63;
    (*(*(v27 - 8) + 56))(v19, 0, 1, v27);

    v17 = v12;
LABEL_18:
    *(v0 + 120) = v11;
    *(v0 + 128) = v17;
    v30 = *(v0 + 96);
    sub_1000D2AD8(*(v0 + 88), v30, &qword_1016C2138, &qword_1013F60F0);
    v31 = sub_1000BC4D4(v13, &unk_1013F60F8);
    if ((*(*(v31 - 8) + 48))(v30, 1, v31) == 1)
    {

      v65 = (&async function pointer to dispatch thunk of WorkItemQueue.flushQueue() + async function pointer to dispatch thunk of WorkItemQueue.flushQueue());
      v37 = swift_task_alloc();
      *(v0 + 160) = v37;
      *v37 = v0;
      v37[1] = sub_100FA83D0;
      goto LABEL_28;
    }

    v32 = *(v0 + 72);
    v33 = *(v0 + 56);
    v34 = *(*(v0 + 96) + *(v31 + 48));
    *(v0 + 136) = v34;
    (*(v33 + 32))(v32);
    if (v34)
    {
      break;
    }

    (*(*(v0 + 56) + 8))(*(v0 + 72), *(v0 + 48));
    v12 = v17;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  (*(*(v0 + 56) + 16))(*(v0 + 64), *(v0 + 72), *(v0 + 48));

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = *(v0 + 80);
    v41 = *(v0 + 56);
    v61 = *(v0 + 64);
    v42 = *(v0 + 48);
    v43 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v43 = 136315651;
    v62 = v39;
    WorkItemQueue.WorkItem.id.getter();
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    v46 = v45;
    log = v38;
    v47 = *(v41 + 8);
    v47(v40, v42);
    v48 = sub_1000136BC(v44, v46, &v66);

    *(v43 + 4) = v48;
    *(v43 + 12) = 2160;
    *(v43 + 14) = 1752392040;
    *(v43 + 22) = 2081;
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = v50;
    v47(v61, v42);
    v52 = sub_1000136BC(v49, v51, &v66);

    *(v43 + 24) = v52;
    _os_log_impl(&_mh_execute_header, log, v62, "Canceling %s for %{private,mask.hash}s.", v43, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v53 = v0;
    v56 = v0 + 56;
    v55 = *(v0 + 56);
    v54 = *(v56 + 8);
    v57 = *(v53 + 48);

    v47 = *(v55 + 8);
    v47(v54, v57);
    v0 = v53;
  }

  *(v0 + 144) = v47;
  v65 = (&async function pointer to dispatch thunk of WorkItemQueue.WorkItem.cancel() + async function pointer to dispatch thunk of WorkItemQueue.WorkItem.cancel());
  v58 = swift_task_alloc();
  *(v0 + 152) = v58;
  *v58 = v0;
  v58[1] = sub_100FA7CE0;
LABEL_28:

  return v65();
}

uint64_t sub_100FA7CE0()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_100FA7DF0, v1, 0);
}

uint64_t sub_100FA7DF0()
{
  v57 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);

  result = v1(v2, v3);
  v5 = *(v0 + 120);
  v6 = *(v0 + 128);
  v7 = &unk_1016C2140;
  if (v5)
  {
    while (1)
    {
      v8 = *(v0 + 112);
LABEL_11:
      v13 = *(v0 + 88);
      v54 = *(v0 + 80);
      v15 = *(v0 + 48);
      v14 = *(v0 + 56);
      v16 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v17 = v16 | (v6 << 6);
      (*(v14 + 16))();
      v18 = (*(v8 + 56) + 16 * v17);
      v19 = *v18;
      v52 = v18[1];
      v20 = sub_1000BC4D4(v7, &unk_1013F60F8);
      v21 = v7;
      v22 = (v13 + *(v20 + 48));
      (*(v14 + 32))(v13, v54, v15);
      *v22 = v19;
      v22[1] = v52;
      v7 = v21;
      (*(*(v20 - 8) + 56))(v13, 0, 1, v20);

      v11 = v6;
LABEL_12:
      *(v0 + 120) = v5;
      *(v0 + 128) = v11;
      v23 = *(v0 + 96);
      sub_1000D2AD8(*(v0 + 88), v23, &qword_1016C2138, &qword_1013F60F0);
      v24 = sub_1000BC4D4(v7, &unk_1013F60F8);
      if ((*(*(v24 - 8) + 48))(v23, 1, v24) == 1)
      {

        v55 = (&async function pointer to dispatch thunk of WorkItemQueue.flushQueue() + async function pointer to dispatch thunk of WorkItemQueue.flushQueue());
        v30 = swift_task_alloc();
        *(v0 + 160) = v30;
        *v30 = v0;
        v30[1] = sub_100FA83D0;
        goto LABEL_22;
      }

      v25 = *(v0 + 72);
      v26 = *(v0 + 56);
      v27 = *(*(v0 + 96) + *(v24 + 48));
      *(v0 + 136) = v27;
      (*(v26 + 32))(v25);
      if (v27)
      {
        break;
      }

      result = (*(*(v0 + 56) + 8))(*(v0 + 72), *(v0 + 48));
      v6 = v11;
      if (!v5)
      {
        goto LABEL_3;
      }
    }

    (*(*(v0 + 56) + 16))(*(v0 + 64), *(v0 + 72), *(v0 + 48));

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = *(v0 + 80);
      v34 = *(v0 + 56);
      v51 = *(v0 + 64);
      v35 = *(v0 + 48);
      v36 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v36 = 136315651;
      v53 = v32;
      WorkItemQueue.WorkItem.id.getter();
      sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      log = v31;
      v40 = *(v34 + 8);
      v40(v33, v35);
      v41 = sub_1000136BC(v37, v39, &v56);

      *(v36 + 4) = v41;
      *(v36 + 12) = 2160;
      *(v36 + 14) = 1752392040;
      *(v36 + 22) = 2081;
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      v40(v51, v35);
      v45 = sub_1000136BC(v42, v44, &v56);

      *(v36 + 24) = v45;
      _os_log_impl(&_mh_execute_header, log, v53, "Canceling %s for %{private,mask.hash}s.", v36, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v47 = *(v0 + 56);
      v46 = *(v0 + 64);
      v48 = *(v0 + 48);

      v40 = *(v47 + 8);
      v40(v46, v48);
    }

    *(v0 + 144) = v40;
    v55 = (&async function pointer to dispatch thunk of WorkItemQueue.WorkItem.cancel() + async function pointer to dispatch thunk of WorkItemQueue.WorkItem.cancel());
    v49 = swift_task_alloc();
    *(v0 + 152) = v49;
    *v49 = v0;
    v49[1] = sub_100FA7CE0;
LABEL_22:

    return v55();
  }

  else
  {
LABEL_3:
    v9 = ((1 << *(v0 + 168)) + 63) >> 6;
    if (v9 <= (v6 + 1))
    {
      v10 = v6 + 1;
    }

    else
    {
      v10 = ((1 << *(v0 + 168)) + 63) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v12 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
        v28 = *(v0 + 88);
        v29 = sub_1000BC4D4(v7, &unk_1013F60F8);
        (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
        v5 = 0;
        goto LABEL_12;
      }

      v8 = *(v0 + 112);
      v5 = *(v8 + 8 * v12 + 64);
      ++v6;
      if (v5)
      {
        v6 = v12;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100FA83D0()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_100FA84E0, v1, 0);
}

uint64_t sub_100FA84E0()
{
  *(*(v0 + 40) + 216) = _swiftEmptyDictionarySingleton;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100FA8594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v4[8] = sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v5 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v6 = swift_task_alloc();
  v4[19] = v6;
  *v6 = v4;
  v6[1] = sub_100FA870C;

  return daemon.getter();
}

uint64_t sub_100FA870C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 160) = a1;

  v3 = swift_task_alloc();
  *(v2 + 168) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconKeyService();
  v6 = sub_100FC4DB8(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100FC4DB8(&unk_1016B1090, 255, type metadata accessor for BeaconKeyService, &unk_1013CC4A0);
  *v3 = v9;
  v3[1] = sub_100FA88F0;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100FA88F0(uint64_t a1)
{
  v3 = *v2;
  v3[22] = a1;
  v3[23] = v1;

  if (v1)
  {
    v4 = v3[7];
    v5 = sub_100FA9848;
  }

  else
  {
    v6 = v3[7];

    v5 = sub_100FA8A18;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100FA8A18()
{
  v1 = *(*(v0 + 56) + 128);
  *(v0 + 192) = v1;
  return _swift_task_switch(sub_100FA8A3C, v1, 0);
}

uint64_t sub_100FA8A3C()
{

  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  *v1 = v0;
  v1[1] = sub_100FA8B1C;
  v3 = *(v0 + 192);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1000D27E4, v3, v2);
}

uint64_t sub_100FA8B1C()
{
  v1 = *(*v0 + 192);

  return _swift_task_switch(sub_100FA8C34, v1, 0);
}

uint64_t sub_100FA8C34()
{
  v1 = v0[22];
  v0[26] = v0[2];
  return _swift_task_switch(sub_100FA8C58, v1, 0);
}

uint64_t sub_100FA8C58(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 176) + 136);
  *(v3 + 216) = v4;
  if (v4)
  {
    a1 = sub_100FA8C84;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(a1, v4, a3);
}

uint64_t sub_100FA8C84()
{
  v1 = v0[27];
  v3 = v0[5];
  v2 = v0[6];
  v4 = sub_1000BC4D4(&qword_10169C980, &qword_1013C4A70);
  v5 = sub_100FC4DB8(&unk_1016C1130, 255, type metadata accessor for BeaconKeyServiceBuilder, &unk_1013BFC14);
  v6 = swift_task_alloc();
  v0[28] = v6;
  v6[2] = v1;
  v6[3] = v3;
  v6[4] = v2;
  v7 = swift_task_alloc();
  v0[29] = v7;
  *v7 = v0;
  v7[1] = sub_100FA8DD4;
  v8 = v0[27];
  v9 = v0[8];

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 3, v9, v4, v8, v5, &unk_1013C4A78, v6, v9);
}

uint64_t sub_100FA8DD4()
{
  v1 = *v0;

  v2 = *(v1 + 216);

  return _swift_task_switch(sub_100FA8F08, v2, 0);
}

uint64_t sub_100FA8F08()
{
  v1 = v0[7];
  v0[30] = v0[3];
  return _swift_task_switch(sub_100FA8F2C, v1, 0);
}

uint64_t sub_100FA8F2C()
{
  v1 = v0[30];
  if (*(v1 + 16))
  {
    v3 = v0[17];
    v2 = v0[18];
    v4 = v0[4];
    v5 = *(v0[14] + 80);
    sub_100FC4840(v1 + ((v5 + 32) & ~v5), v3, type metadata accessor for BeaconKeyManager.IndexInformation);

    sub_100FC4778(v3, v2, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_100FC4778(v2, v4, type metadata accessor for BeaconKeyManager.IndexInformation);
    v6 = v0[4];
    v7 = type metadata accessor for BeaconDetails(0);
    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[6];

    v11 = v0[26];
    v12 = v0[5];
    v13 = v0[6];
    if ((v10 & 0x2000000000000000) != 0)
    {
      v14 = swift_allocObject();
      v0[31] = v14;
      v14[2] = v11;
      v14[3] = v12;
      v14[4] = v13 & 0xDFFFFFFFFFFFFFFFLL;

      sub_100029784(v12, v13);
      v19 = swift_task_alloc();
      v0[32] = v19;
      *v19 = v0;
      v19[1] = sub_100FA9250;
      v16 = v0[10];
      v17 = v0[8];
      v18 = sub_100FC3184;
    }

    else
    {
      v14 = swift_allocObject();
      v0[33] = v14;
      v14[2] = v11;
      v14[3] = v12;
      v14[4] = v13;

      sub_100029784(v12, v13);
      v15 = swift_task_alloc();
      v0[34] = v15;
      *v15 = v0;
      v15[1] = sub_100FA954C;
      v16 = v0[12];
      v17 = v0[8];
      v18 = sub_100FC3190;
    }

    return unsafeBlocking<A>(_:)(v16, v18, v14, v17);
  }
}

uint64_t sub_100FA9250()
{
  v1 = *(*v0 + 56);

  return _swift_task_switch(sub_100FA937C, v1, 0);
}

uint64_t sub_100FA937C()
{
  v1 = v0[13];
  v2 = v0[14];
  v4 = v0[9];
  v3 = v0[10];

  sub_1000D2AD8(v3, v4, &unk_1016C1120, &qword_1013C49D0);
  if ((*(v2 + 48))(v4, 1, v1) == 1)
  {
    sub_10000B3A8(v0[9], &unk_1016C1120, &qword_1013C49D0);
    v5 = 1;
  }

  else
  {
    v6 = v0[15];
    v7 = v0[4];
    sub_100FC4778(v0[9], v6, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_100FC4778(v6, v7, type metadata accessor for BeaconKeyManager.IndexInformation);
    v5 = 0;
  }

  v8 = v0[4];
  v9 = type metadata accessor for BeaconDetails(0);
  (*(*(v9 - 8) + 56))(v8, v5, 1, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100FA954C()
{
  v1 = *(*v0 + 56);

  return _swift_task_switch(sub_100FA9678, v1, 0);
}

uint64_t sub_100FA9678()
{
  v1 = v0[13];
  v2 = v0[14];
  v4 = v0[11];
  v3 = v0[12];

  sub_1000D2AD8(v3, v4, &unk_1016C1120, &qword_1013C49D0);
  if ((*(v2 + 48))(v4, 1, v1) == 1)
  {
    sub_10000B3A8(v0[11], &unk_1016C1120, &qword_1013C49D0);
    v5 = 1;
  }

  else
  {
    v6 = v0[16];
    v7 = v0[4];
    sub_100FC4778(v0[11], v6, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_100FC4778(v6, v7, type metadata accessor for BeaconKeyManager.IndexInformation);
    v5 = 0;
  }

  v8 = v0[4];
  v9 = type metadata accessor for BeaconDetails(0);
  (*(*(v9 - 8) + 56))(v8, v5, 1, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100FA9848()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100FA9914@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = sub_1012DD334(a1, a2, v8);
  v11 = v10[2];
  if (v11)
  {
    v12 = v11 - 1;
    v13 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
    v14 = *(v13 - 8);
    sub_100FC4840(v10 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v12, a3, type metadata accessor for BeaconKeyManager.IndexInformation);

    sub_10000B3A8(v8, &qword_1016980D0, &unk_10138F3B0);
    return (*(v14 + 56))(a3, 0, 1, v13);
  }

  else
  {
    sub_10000B3A8(v8, &qword_1016980D0, &unk_10138F3B0);

    v16 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
    return (*(*(v16 - 8) + 56))(a3, 1, 1, v16);
  }
}

uint64_t sub_100FA9B28@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = sub_1012DCA30(a1, a2);
  if (v4[2])
  {
    v5 = v4;
    v6 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
    v13 = *(v6 - 8);
    sub_100FC4840(v5 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), a3, type metadata accessor for BeaconKeyManager.IndexInformation);

    v7 = *(v13 + 56);
    v8 = a3;
    v9 = 0;
    v10 = v6;
  }

  else
  {

    v11 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
    v7 = *(*(v11 - 8) + 56);
    v10 = v11;
    v8 = a3;
    v9 = 1;
  }

  return v7(v8, v9, 1, v10);
}

uint64_t sub_100FA9C48(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = type metadata accessor for AccessoryCommand(0);
  v2[13] = swift_task_alloc();
  v2[14] = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v2[15] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[16] = v3;
  v4 = *(v3 - 8);
  v2[17] = v4;
  v2[18] = *(v4 + 64);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_100FA9DE4, v1, 0);
}

uint64_t sub_100FA9DE4()
{
  v21 = v0;
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[8];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016C1CB0);
  v6 = *(v3 + 16);
  v0[23] = v6;
  v0[24] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[22];
  v11 = v0[16];
  v12 = v0[17];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v13 = 136446723;
    *(v13 + 4) = sub_1000136BC(0xD000000000000027, 0x8000000101375820, &v20);
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v12 + 8))(v10, v11);
    v17 = sub_1000136BC(v14, v16, &v20);

    *(v13 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s for %{private,mask.hash}s", v13, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v12 + 8))(v10, v11);
  }

  v18 = swift_task_alloc();
  v0[25] = v18;
  *v18 = v0;
  v18[1] = sub_100FAA0B0;

  return daemon.getter();
}

uint64_t sub_100FAA0B0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 208) = a1;

  v3 = swift_task_alloc();
  *(v2 + 216) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for OwnerCommandService(0);
  v6 = sub_100FC4DB8(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100FC4DB8(&unk_1016B10E0, 255, type metadata accessor for OwnerCommandService, &unk_10140DB10);
  *v3 = v9;
  v3[1] = sub_100FAA294;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100FAA294(uint64_t a1)
{
  v3 = *v2;
  v3[28] = a1;
  v3[29] = v1;

  if (v1)
  {
    v4 = v3[9];
    v5 = sub_100FAABD4;
  }

  else
  {
    v6 = v3[9];

    v5 = sub_100FAA3BC;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100FAA3BC()
{
  v1 = *(*(v0 + 72) + 128);
  *(v0 + 240) = v1;
  return _swift_task_switch(sub_100FAA3E0, v1, 0);
}

uint64_t sub_100FAA3E0()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 168);
  v3 = *(v0 + 136);
  v4 = *(v0 + 128);
  (*(v0 + 184))(v2, *(v0 + 64), v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v0 + 248) = v6;
  *(v6 + 16) = v1;
  v7 = *(v3 + 32);
  *(v0 + 256) = v7;
  *(v0 + 264) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v7(v6 + v5, v2, v4);

  v8 = swift_task_alloc();
  *(v0 + 272) = v8;
  *v8 = v0;
  v8[1] = sub_100FAA544;
  v10 = *(v0 + 112);
  v9 = *(v0 + 120);

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_100FC4FF4, v6, v10);
}

uint64_t sub_100FAA544()
{
  v1 = *(*v0 + 72);

  return _swift_task_switch(sub_100FAA670, v1, 0);
}

uint64_t sub_100FAA670()
{
  v1 = v0[15];
  v2 = type metadata accessor for OwnedBeaconRecord(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &unk_1016A9A20, &qword_10138B280);
    v3 = 0;
  }

  else
  {
    v4 = sub_100D60CD0();
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
    {
      v3 = 1;
    }

    else
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v10 = v0[15];

    sub_100FC47E0(v10, type metadata accessor for OwnedBeaconRecord);
  }

  v11 = v0[23];
  v12 = v0[20];
  v13 = v0[16];
  v14 = v0[17];
  v16 = v0[10];
  v15 = v0[11];
  v17 = v0[8];
  (*(v14 + 56))(v15, 1, 1, v13);
  v11(v12, v17, v13);
  sub_1000D2A70(v15, v16, &qword_1016980D0, &unk_10138F3B0);
  v18 = *(v14 + 48);
  if (v18(v16, 1, v13) == 1)
  {
    v19 = v0[16];
    v21 = v0[10];
    v20 = v0[11];
    UUID.init()();
    sub_10000B3A8(v20, &qword_1016980D0, &unk_10138F3B0);
    if (v18(v21, 1, v19) != 1)
    {
      sub_10000B3A8(v0[10], &qword_1016980D0, &unk_10138F3B0);
    }
  }

  else
  {
    v22 = v0[32];
    v23 = v0[19];
    v24 = v0[16];
    v25 = v0[10];
    sub_10000B3A8(v0[11], &qword_1016980D0, &unk_10138F3B0);
    v22(v23, v25, v24);
  }

  v26 = v0[32];
  v27 = v0[20];
  v28 = v0[16];
  v30 = v0[12];
  v29 = v0[13];
  v26(v29, v0[19], v28);
  v26(v29 + v30[5], v27, v28);
  v31 = v29 + v30[6];
  *v31 = 120;
  *(v31 + 8) = 0;
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = xmmword_1013AAD80;
  *(v29 + v30[7]) = v3 & 1;
  *(v29 + v30[8]) = 1;
  v32 = swift_task_alloc();
  v0[35] = v32;
  *v32 = v0;
  v32[1] = sub_100FAA9B0;
  v33 = v0[13];

  return sub_10121B780((v0 + 2), v33, 0);
}

uint64_t sub_100FAA9B0()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = sub_100FAACA0;
  }

  else
  {
    v5 = *(v2 + 72);
    sub_10000B3A8(v2 + 16, &qword_1016A24A8, &unk_1013F60E0);
    v4 = sub_100FAAAE8;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100FAAAE8()
{
  v1 = *(v0 + 104);

  sub_100FC47E0(v1, type metadata accessor for AccessoryCommand);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100FAABD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100FAACA0()
{
  v1 = *(v0 + 104);

  sub_100FC47E0(v1, type metadata accessor for AccessoryCommand);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100FAAD8C(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = type metadata accessor for AccessoryCommand(0);
  v2[13] = swift_task_alloc();
  v2[14] = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v2[15] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[16] = v3;
  v4 = *(v3 - 8);
  v2[17] = v4;
  v2[18] = *(v4 + 64);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return _swift_task_switch(sub_100FAAF34, v1, 0);
}

uint64_t sub_100FAAF34()
{
  v22 = v0;
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[8];
  v5 = type metadata accessor for Logger();
  v0[24] = sub_1000076D4(v5, qword_1016C1CB0);
  v6 = *(v3 + 16);
  v0[25] = v6;
  v0[26] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[23];
  v11 = v0[16];
  v12 = v0[17];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v13 = 136446723;
    *(v13 + 4) = sub_1000136BC(0xD000000000000026, 0x80000001013757F0, &v21);
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_1000136BC(v14, v16, &v21);

    *(v13 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s for %{private,mask.hash}s", v13, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[27] = v17;
  v19 = swift_task_alloc();
  v0[28] = v19;
  *v19 = v0;
  v19[1] = sub_100FAB208;

  return daemon.getter();
}

uint64_t sub_100FAB208(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 232) = a1;

  v3 = swift_task_alloc();
  *(v2 + 240) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for OwnerCommandService(0);
  v6 = sub_100FC4DB8(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100FC4DB8(&unk_1016B10E0, 255, type metadata accessor for OwnerCommandService, &unk_10140DB10);
  *v3 = v9;
  v3[1] = sub_100FAB3EC;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100FAB3EC(uint64_t a1)
{
  v3 = *v2;
  v3[31] = a1;
  v3[32] = v1;

  if (v1)
  {
    v4 = v3[9];
    v5 = sub_100FABEF4;
  }

  else
  {
    v6 = v3[9];

    v5 = sub_100FAB514;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100FAB514()
{
  v1 = *(*(v0 + 72) + 128);
  *(v0 + 264) = v1;
  return _swift_task_switch(sub_100FAB538, v1, 0);
}

uint64_t sub_100FAB538()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 176);
  v3 = *(v0 + 136);
  v4 = *(v0 + 128);
  (*(v0 + 200))(v2, *(v0 + 64), v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v0 + 272) = v6;
  *(v6 + 16) = v1;
  v7 = *(v3 + 32);
  *(v0 + 280) = v7;
  *(v0 + 288) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v7(v6 + v5, v2, v4);

  v8 = swift_task_alloc();
  *(v0 + 296) = v8;
  *v8 = v0;
  v8[1] = sub_100FAB69C;
  v10 = *(v0 + 112);
  v9 = *(v0 + 120);

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_100FAC6A0, v6, v10);
}

uint64_t sub_100FAB69C()
{
  v1 = *(*v0 + 72);

  return _swift_task_switch(sub_100FAB7C8, v1, 0);
}

uint64_t sub_100FAB7C8()
{
  v1 = v0[15];
  v2 = type metadata accessor for OwnedBeaconRecord(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &unk_1016A9A20, &qword_10138B280);
    v3 = 0;
  }

  else
  {
    v4 = sub_100D60CD0();
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
    {
      v3 = 1;
    }

    else
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v10 = v0[15];

    sub_100FC47E0(v10, type metadata accessor for OwnedBeaconRecord);
  }

  v11 = v0[25];
  v12 = v0[21];
  v13 = v0[16];
  v14 = v0[17];
  v16 = v0[10];
  v15 = v0[11];
  v17 = v0[8];
  (*(v14 + 56))(v15, 1, 1, v13);
  v11(v12, v17, v13);
  sub_1000D2A70(v15, v16, &qword_1016980D0, &unk_10138F3B0);
  v18 = *(v14 + 48);
  if (v18(v16, 1, v13) == 1)
  {
    v19 = v0[16];
    v21 = v0[10];
    v20 = v0[11];
    UUID.init()();
    sub_10000B3A8(v20, &qword_1016980D0, &unk_10138F3B0);
    if (v18(v21, 1, v19) != 1)
    {
      sub_10000B3A8(v0[10], &qword_1016980D0, &unk_10138F3B0);
    }
  }

  else
  {
    v22 = v0[35];
    v23 = v0[20];
    v24 = v0[16];
    v25 = v0[10];
    sub_10000B3A8(v0[11], &qword_1016980D0, &unk_10138F3B0);
    v22(v23, v25, v24);
  }

  v26 = v0[35];
  v27 = v0[21];
  v28 = v0[16];
  v30 = v0[12];
  v29 = v0[13];
  v26(v29, v0[20], v28);
  v26(v29 + v30[5], v27, v28);
  v31 = v29 + v30[6];
  *v31 = xmmword_1013AAD90;
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = xmmword_10139BF70;
  *(v29 + v30[7]) = v3 & 1;
  *(v29 + v30[8]) = 1;
  v32 = swift_task_alloc();
  v0[38] = v32;
  *v32 = v0;
  v32[1] = sub_100FABB0C;
  v33 = v0[13];

  return sub_10121B780((v0 + 2), v33, 0);
}

uint64_t sub_100FABB0C()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = sub_100FABFD4;
  }

  else
  {
    v5 = *(v2 + 72);
    sub_10000B3A8(v2 + 16, &qword_1016A24A8, &unk_1013F60E0);
    v4 = sub_100FABC44;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100FABC44()
{
  v20 = v0;
  (*(v0 + 200))(*(v0 + 152), *(v0 + 64), *(v0 + 128));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 216);
  v5 = *(v0 + 152);
  v6 = *(v0 + 128);
  v7 = *(v0 + 104);
  if (v3)
  {
    v17 = *(v0 + 216);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 141558275;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v7;
    v12 = v11;
    v17(v5, v6);
    v13 = sub_1000136BC(v10, v12, &v19);

    *(v8 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Successfully stopped fast advertising for %{private,mask.hash}s.", v8, 0x16u);
    sub_100007BAC(v9);

    v14 = v18;
  }

  else
  {

    v4(v5, v6);
    v14 = v7;
  }

  sub_100FC47E0(v14, type metadata accessor for AccessoryCommand);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100FABEF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100FABFD4()
{
  v1 = *(v0 + 104);

  sub_100FC47E0(v1, type metadata accessor for AccessoryCommand);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100FAC0D4()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100FAC154()
{
  sub_100FAC0D4();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100FAC1A4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100FAC200(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100FAC260(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for BTFindingService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_100FAC308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for BTFindingService();
  *v8 = v4;
  v8[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_100FAC3CC(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for BTFindingService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_100FAC474()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100F9F0B8();
}

uint64_t sub_100FAC500(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for BTFindingService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.run()(v5, a2);
}

uint64_t sub_100FAC5A8()
{
  type metadata accessor for BTFindingService();
  sub_100FC4DB8(&qword_1016C2130, v0, type metadata accessor for BTFindingService, &unk_1013F6058);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100FAC6A4()
{
  sub_1000BC4D4(&qword_1016A4720, &qword_1013B1060);
  result = AsyncKeyedThrottle.__allocating_init(throttleInterval:)();
  qword_1016C1CD0 = result;
  return result;
}

uint64_t sub_100FAC6E8()
{
  sub_1000BC4D4(&qword_1016A4720, &qword_1013B1060);
  result = AsyncKeyedThrottle.__allocating_init(throttleInterval:)();
  qword_1016C1CD8 = result;
  return result;
}

uint64_t sub_100FAC72C()
{
  result = sub_100FAC74C();
  qword_1016C1CE0 = result;
  return result;
}

uint64_t sub_100FAC74C()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  sub_101074E98(v7);
  v1 = v0;

  if (qword_101695108 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C468);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v3, v4, "Throttling every %f seconds for .detectedNearby", v5, 0xCu);
  }

  sub_1000BC4D4(&qword_1016A4720, &qword_1013B1060);
  return AsyncKeyedThrottle.__allocating_init(throttleInterval:)();
}

uint64_t sub_100FAC8DC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = *(type metadata accessor for LocalFindableAccessoryRecord(0) - 8);
  v2[5] = v3;
  v2[6] = *(v3 + 64);
  v2[7] = swift_task_alloc();
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[9] = v4;
  v5 = *(v4 - 8);
  v2[10] = v5;
  v2[11] = *(v5 + 64);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_100FACA88, v1, 0);
}

uint64_t sub_100FACA88()
{
  v58 = v0;
  v1 = *(v0[10] + 16);
  v1(v0[15], v0[2], v0[9]);
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[9];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016C1CB0);
  v1(v3, v2, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[14];
  v11 = v0[9];
  v10 = v0[10];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v57[0] = swift_slowAlloc();
    *v12 = 136446723;
    *(v12 + 4) = sub_1000136BC(0xD000000000000017, 0x8000000101375B50, v57);
    *(v12 + 12) = 2160;
    *(v12 + 14) = 1752392040;
    *(v12 + 22) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = v1;
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    log = v6;
    v17 = *(v10 + 8);
    v17(v9, v11);
    v18 = v14;
    v1 = v13;
    v19 = sub_1000136BC(v18, v16, v57);

    *(v12 + 24) = v19;
    _os_log_impl(&_mh_execute_header, log, v7, "%{public}s for %{private,mask.hash}s", v12, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v17 = *(v10 + 8);
    v17(v9, v11);
  }

  v56 = v17;
  v20 = v0[3];
  v21 = v0[15];
  if (*(v20 + 176))
  {
    v1(v0[12], v0[15], v0[9]);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v0[12];
    v26 = v0[9];
    if (v24)
    {
      v27 = swift_slowAlloc();
      v57[0] = swift_slowAlloc();
      *v27 = 136446723;
      *(v27 + 4) = sub_1000136BC(0xD000000000000017, 0x8000000101375B50, v57);
      *(v27 + 12) = 2160;
      *(v27 + 14) = 1752392040;
      *(v27 + 22) = 2081;
      sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      v56(v25, v26);
      v31 = sub_1000136BC(v28, v30, v57);

      *(v27 + 24) = v31;
      _os_log_impl(&_mh_execute_header, v22, v23, "%{public}s Found existing scan task for %{private,mask.hash}s", v27, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v56(v25, v26);
    }

    v43 = v0[15];
    v44 = v0[9];
    sub_100FC449C();
    swift_allocError();
    *v45 = 0x800000000000000DLL;
    swift_willThrow();
    v56(v43, v44);

    v42 = v0[1];
  }

  else
  {
    v32 = v0[13];
    v34 = v0[9];
    v33 = v0[10];
    v36 = v0[7];
    v35 = v0[8];
    v51 = v0[11];
    v52 = v35;
    v55 = v36;
    v49 = v32;
    v50 = v0[6];
    v53 = v0[4];
    v47 = v0[2];
    v48 = v0[5];
    v37 = type metadata accessor for TaskPriority();
    (*(*(v37 - 8) + 56))(v35, 1, 1, v37);
    sub_100FC4840(v47, v36, type metadata accessor for LocalFindableAccessoryRecord);
    v1(v32, v21, v34);
    v38 = (*(v48 + 80) + 40) & ~*(v48 + 80);
    v39 = (v50 + *(v33 + 80) + v38) & ~*(v33 + 80);
    v40 = swift_allocObject();
    *(v40 + 2) = 0;
    *(v40 + 3) = 0;
    *(v40 + 4) = v20;
    sub_100FC4778(v55, &v40[v38], type metadata accessor for LocalFindableAccessoryRecord);
    (*(v33 + 32))(&v40[v39], v49, v34);
    *&v40[(v51 + v39 + 7) & 0xFFFFFFFFFFFFFFF8] = v53;

    v41 = sub_100BB9ADC(0, 0, v35, &unk_1013F6258, v40);
    sub_10000B3A8(v52, &qword_101698C00, &qword_10138B570);
    v56(v21, v34);
    *(v20 + 176) = v41;

    v42 = v0[1];
  }

  return v42();
}

uint64_t sub_100FAD1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[179] = a6;
  v6[173] = a5;
  v6[167] = a4;
  v7 = type metadata accessor for UUID();
  v6[185] = v7;
  v8 = *(v7 - 8);
  v6[191] = v8;
  v6[197] = *(v8 + 64);
  v6[198] = swift_task_alloc();
  v9 = *(type metadata accessor for LocalFindableAccessoryRecord(0) - 8);
  v6[199] = v9;
  v6[200] = *(v9 + 64);
  v6[201] = swift_task_alloc();

  return _swift_task_switch(sub_100FAD2EC, 0, 0);
}

uint64_t sub_100FAD2EC()
{
  v1 = v0[201];
  v2 = v0[199];
  v3 = v0[198];
  v4 = v0[191];
  v5 = v0[185];
  v6 = v0[179];
  v7 = v0[167];
  sub_100FC4840(v0[173], v1, type metadata accessor for LocalFindableAccessoryRecord);
  v8 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v9 = swift_allocObject();
  v0[202] = v9;
  *(v9 + 16) = v7;
  sub_100FC4778(v1, v9 + v8, type metadata accessor for LocalFindableAccessoryRecord);

  swift_asyncLet_begin();
  (*(v4 + 16))(v3, v6, v5);
  v10 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v11 = swift_allocObject();
  v0[203] = v11;
  *(v11 + 16) = v7;
  (*(v4 + 32))(v11 + v10, v3, v5);

  swift_asyncLet_begin();

  return _swift_asyncLet_get_throwing(v0 + 2, v12, sub_100FAD4C8, v0 + 162);
}

uint64_t sub_100FAD4C8(uint64_t a1, uint64_t a2)
{
  *(v3 + 1632) = v2;
  if (v2)
  {
    return _swift_asyncLet_finish(v3 + 656, a2, sub_100FAD5FC, v3 + 1344);
  }

  else
  {
    return _swift_asyncLet_get(v3 + 656);
  }
}

uint64_t sub_100FAD578()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100FAD650()
{
  v11 = v0;
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016C1CB0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_1000136BC(0xD000000000000017, 0x8000000101375B50, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s scanTask error: %{public}@", v4, 0x16u);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100FAD88C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100014650;

  return sub_100FAD928(a3);
}

uint64_t sub_100FAD928(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  v3 = sub_1000BC4D4(&unk_1016B7C30, &qword_1013DBFD0);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v4 = *(type metadata accessor for LocalFindableAccessoryRecord(0) - 8);
  v2[11] = v4;
  v2[12] = *(v4 + 64);
  v2[13] = swift_task_alloc();
  v5 = type metadata accessor for Device();
  v2[14] = v5;
  v6 = *(v5 - 8);
  v2[15] = v6;
  v2[16] = *(v6 + 64);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v7 = type metadata accessor for DeviceChange();
  v2[19] = v7;
  v2[20] = *(v7 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A06D8, &unk_1013A37C0);
  v2[23] = swift_task_alloc();
  v8 = sub_1000BC4D4(&qword_1016B7C40, &unk_1013DD720);
  v2[24] = v8;
  v2[25] = *(v8 - 8);
  v2[26] = swift_task_alloc();
  v9 = sub_1000BC4D4(&unk_1016B7C80, &unk_1013A37D0);
  v2[27] = v9;
  v2[28] = *(v9 - 8);
  v2[29] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v2[30] = v10;
  v11 = *(v10 - 8);
  v2[31] = v11;
  v2[32] = *(v11 + 64);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();

  return _swift_task_switch(sub_100FADCF0, v1, 0);
}

uint64_t sub_100FADCF0()
{
  v25 = v0;
  v1 = v0[35];
  v2 = v0[30];
  v3 = v0[31];
  v4 = v0[3];
  v5 = *(v3 + 16);
  v0[36] = v5;
  v0[37] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v6 = v0[34];
  v7 = v0[35];
  v8 = v0[30];
  v9 = type metadata accessor for Logger();
  v0[38] = sub_1000076D4(v9, qword_1016C1CB0);
  v5(v6, v7, v8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[34];
  v14 = v0[30];
  v15 = v0[31];
  if (v12)
  {
    v16 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v16 = 136446723;
    *(v16 + 4) = sub_1000136BC(0xD000000000000023, 0x8000000101375BD0, &v24);
    *(v16 + 12) = 2160;
    *(v16 + 14) = 1752392040;
    *(v16 + 22) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v20 = *(v15 + 8);
    v20(v13, v14);
    v21 = sub_1000136BC(v17, v19, &v24);

    *(v16 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v10, v11, "%{public}s for %{private,mask.hash}s", v16, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v20 = *(v15 + 8);
    v20(v13, v14);
  }

  v0[39] = v20;
  v22 = swift_task_alloc();
  v0[40] = v22;
  *v22 = v0;
  v22[1] = sub_100FADFD8;

  return daemon.getter();
}

uint64_t sub_100FADFD8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 328) = a1;

  v3 = swift_task_alloc();
  *(v2 + 336) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for OwnerCommandService(0);
  v6 = sub_100FC4DB8(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100FC4DB8(&unk_1016B10E0, 255, type metadata accessor for OwnerCommandService, &unk_10140DB10);
  *v3 = v9;
  v3[1] = sub_100FAE1BC;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100FAE1BC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[43] = a1;
  v3[44] = v1;

  if (v1)
  {
    v5 = v3[4];

    return _swift_task_switch(sub_100FAF6CC, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[45] = v6;
    *v6 = v4;
    v6[1] = sub_100FAE36C;
    v7 = v3[26];
    v8 = v3[3];

    return sub_101219720(v7, v8);
  }
}

uint64_t sub_100FAE36C()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_100FAF808;
  }

  else
  {
    v4 = sub_100FAE498;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100FAE498()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  AsyncThrowingStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v5 = sub_100FC4DB8(&qword_1016C2128, v4, type metadata accessor for BTFindingService, &unk_1013F60B8);
  v0[47] = v5;
  v6 = v0[4];
  v7 = swift_task_alloc();
  v0[48] = v7;
  *v7 = v0;
  v7[1] = sub_100FAE5B8;
  v8 = v0[27];
  v9 = v0[23];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v9, v6, v5, v8, v0 + 2);
}

uint64_t sub_100FAE5B8()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_100FAF954;
  }

  else
  {
    v4 = sub_100FAE6D0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100FAE6D0()
{
  v67 = v0;
  v1 = *(v0 + 184);
  if ((*(*(v0 + 160) + 48))(v1, 1, *(v0 + 152)) == 1)
  {
    v2 = *(v0 + 312);
    v3 = *(v0 + 280);
    v4 = *(v0 + 240);
    v6 = *(v0 + 224);
    v5 = *(v0 + 232);
    v7 = *(v0 + 216);

    (*(v6 + 8))(v5, v7);
    v2(v3, v4);

    v8 = *(v0 + 8);
LABEL_5:

    return v8();
  }

  v9 = *(v0 + 392);
  sub_100FC4778(v1, *(v0 + 176), &type metadata accessor for DeviceChange);
  static Task<>.checkCancellation()();
  *(v0 + 400) = v9;
  if (v9)
  {
    v10 = *(v0 + 312);
    v11 = *(v0 + 280);
    v12 = *(v0 + 240);
    v14 = *(v0 + 224);
    v13 = *(v0 + 232);
    v15 = *(v0 + 216);
    v16 = *(v0 + 176);

    sub_100FC47E0(v16, &type metadata accessor for DeviceChange);
    (*(v14 + 8))(v13, v15);
    v10(v11, v12);

    v8 = *(v0 + 8);
    goto LABEL_5;
  }

  sub_100FC4840(*(v0 + 176), *(v0 + 168), &type metadata accessor for DeviceChange);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v19 = *(v0 + 168);
      v20 = *(v0 + 144);
      v21 = *(v0 + 112);
      v22 = *(v0 + 120);
      v23 = *(v0 + 32);
      v24 = *(v22 + 32);
      *(v0 + 408) = v24;
      *(v0 + 416) = (v22 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v24(v20, v19, v21);
      *(v23 + 186) = 1;
      if (qword_101695130 != -1)
      {
        swift_once();
      }

      v25 = *(v0 + 288);
      v26 = *(v0 + 280);
      v28 = *(v0 + 256);
      v27 = *(v0 + 264);
      v29 = *(v0 + 240);
      v30 = *(v0 + 248);
      v64 = *(v0 + 40);
      *(v0 + 424) = qword_1016C1CE0;
      v31 = swift_allocObject();
      *(v0 + 432) = v31;
      swift_weakInit();
      v25(v27, v26, v29);
      v32 = (*(v30 + 80) + 24) & ~*(v30 + 80);
      *(v0 + 520) = *(v30 + 80);
      v33 = swift_allocObject();
      *(v0 + 440) = v33;
      *(v33 + 16) = v31;
      v34 = *(v30 + 32);
      *(v0 + 448) = v34;
      *(v0 + 456) = (v30 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v34(v33 + v32, v27, v29);
      *(v33 + ((v28 + v32 + 7) & 0xFFFFFFFFFFFFFFF8)) = v64;

      *(v0 + 464) = sub_1000BC4D4(&qword_1016A4720, &qword_1013B1060);
      *(v0 + 472) = sub_1000041A4(&unk_1016C2150, &qword_1016A4720, &qword_1013B1060, &protocol conformance descriptor for AsyncKeyedThrottle<A>);
      v36 = dispatch thunk of Actor.unownedExecutor.getter();

      return _swift_task_switch(sub_100FAEEAC, v36, v35);
    }

    v39 = *(v0 + 64);
    v38 = *(v0 + 72);
    v40 = *(v0 + 48);
    v41 = *(v0 + 56);
    (*(v41 + 32))(v38, *(v0 + 168), v40);
    (*(v41 + 16))(v39, v38, v40);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    v44 = os_log_type_enabled(v42, v43);
    v45 = *(v0 + 176);
    v46 = *(v0 + 64);
    v47 = *(v0 + 72);
    v49 = *(v0 + 48);
    v48 = *(v0 + 56);
    if (v44)
    {
      v65 = *(v0 + 176);
      v50 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v66 = v63;
      *v50 = 141558275;
      *(v50 + 4) = 1752392040;
      *(v50 + 12) = 2081;
      sub_1000041A4(&unk_1016C21E0, &unk_1016B7C30, &qword_1013DBFD0, &protocol conformance descriptor for Identifier<A>);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      v54 = *(v48 + 8);
      v54(v46, v49);
      v55 = sub_1000136BC(v51, v53, &v66);

      *(v50 + 14) = v55;
      _os_log_impl(&_mh_execute_header, v42, v43, "Lost %{private,mask.hash}s", v50, 0x16u);
      sub_100007BAC(v63);

      v54(v47, v49);
      v56 = v65;
    }

    else
    {

      v57 = *(v48 + 8);
      v57(v46, v49);
      v57(v47, v49);
      v56 = v45;
    }

    sub_100FC47E0(v56, &type metadata accessor for DeviceChange);
    *(*(v0 + 32) + 184) = 1;
  }

  else
  {
    v37 = *(v0 + 168);
    sub_100FC47E0(*(v0 + 176), &type metadata accessor for DeviceChange);
    sub_100FC47E0(v37, &type metadata accessor for DeviceChange);
  }

  v58 = *(v0 + 376);
  v59 = *(v0 + 32);
  v60 = swift_task_alloc();
  *(v0 + 384) = v60;
  *v60 = v0;
  v60[1] = sub_100FAE5B8;
  v61 = *(v0 + 216);
  v62 = *(v0 + 184);

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v62, v59, v58, v61, v0 + 16);
}

uint64_t sub_100FAEEAC()
{
  v1 = *(v0 + 32);
  dispatch thunk of AsyncKeyedThrottle.throttle(key:block:)();

  return _swift_task_switch(sub_100FAEF50, v1, 0);
}

uint64_t sub_100FAEF50()
{
  v1 = *(v0 + 400);
  v2 = sub_10124BC00();
  if (v1)
  {
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138543362;
      swift_errorRetain();
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "Fast advertising check error %{public}@", v5, 0xCu);
      sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
    }

    goto LABEL_5;
  }

  if (v2)
  {
    if (qword_101695120 != -1)
    {
      swift_once();
    }

    v46 = *(v0 + 408);
    v14 = *(v0 + 144);
    v15 = *(v0 + 120);
    v41 = *(v0 + 136);
    v43 = *(v0 + 128);
    v16 = *(v0 + 112);
    v17 = *(v0 + 80);
    v19 = *(v0 + 48);
    v18 = *(v0 + 56);
    v45 = *(v0 + 40);
    *(v0 + 504) = qword_1016C1CD0;
    Device.id.getter();
    Identifier.id.getter();
    (*(v18 + 8))(v17, v19);
    (*(v15 + 16))(v41, v14, v16);
    v20 = (*(v15 + 80) + 17) & ~*(v15 + 80);
    v21 = swift_allocObject();
    *(v0 + 512) = v21;
    *(v21 + 16) = 1;
    v46(v21 + v20, v41, v16);
    *(v21 + ((v43 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v45;
    v22 = dispatch thunk of Actor.unownedExecutor.getter();
    v24 = v23;
    v25 = sub_100FAF600;
  }

  else
  {
    if (*(*(v0 + 32) + 185) != 1)
    {
LABEL_5:
      v8 = *(v0 + 176);
      (*(*(v0 + 120) + 8))(*(v0 + 144), *(v0 + 112));
      sub_100FC47E0(v8, &type metadata accessor for DeviceChange);
      v9 = *(v0 + 376);
      v10 = *(v0 + 32);
      v11 = swift_task_alloc();
      *(v0 + 384) = v11;
      *v11 = v0;
      v11[1] = sub_100FAE5B8;
      v12 = *(v0 + 216);
      v13 = *(v0 + 184);

      return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v13, v10, v9, v12, v0 + 16);
    }

    if (qword_101695128 != -1)
    {
      swift_once();
    }

    v47 = *(v0 + 448);
    v26 = *(v0 + 520);
    v40 = *(v0 + 288);
    v27 = *(v0 + 280);
    v28 = *(v0 + 264);
    v29 = *(v0 + 240);
    v30 = *(v0 + 104);
    v39 = *(v0 + 96);
    v31 = *(v0 + 88);
    v42 = *(v0 + 256);
    v44 = *(v0 + 40);
    v32 = *(v0 + 24);
    *(v0 + 480) = qword_1016C1CD8;
    v33 = swift_allocObject();
    *(v0 + 488) = v33;
    swift_weakInit();
    sub_100FC4840(v32, v30, type metadata accessor for LocalFindableAccessoryRecord);
    v40(v28, v27, v29);
    v34 = (*(v31 + 80) + 24) & ~*(v31 + 80);
    v35 = (v39 + v26 + v34) & ~v26;
    v36 = swift_allocObject();
    *(v0 + 496) = v36;
    *(v36 + 16) = v33;
    sub_100FC4778(v30, v36 + v34, type metadata accessor for LocalFindableAccessoryRecord);
    v47(v36 + v35, v28, v29);
    *(v36 + ((v42 + v35 + 7) & 0xFFFFFFFFFFFFFFF8)) = v44;

    v22 = dispatch thunk of Actor.unownedExecutor.getter();
    v24 = v37;
    v25 = sub_100FAF468;
  }

  return _swift_task_switch(v25, v22, v24);
}

uint64_t sub_100FAF468()
{
  v1 = *(v0 + 32);
  dispatch thunk of AsyncKeyedThrottle.throttle(key:block:)();

  return _swift_task_switch(sub_100FAF50C, v1, 0);
}

uint64_t sub_100FAF50C()
{
  v1 = v0[22];
  (*(v0[15] + 8))(v0[18], v0[14]);
  sub_100FC47E0(v1, &type metadata accessor for DeviceChange);
  v2 = v0[47];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v0[48] = v4;
  *v4 = v0;
  v4[1] = sub_100FAE5B8;
  v5 = v0[27];
  v6 = v0[23];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v6, v3, v2, v5, v0 + 2);
}

uint64_t sub_100FAF600()
{
  v1 = v0[39];
  v2 = v0[33];
  v3 = v0[30];
  v4 = v0[4];
  dispatch thunk of AsyncKeyedThrottle.throttle(key:block:)();

  v1(v2, v3);

  return _swift_task_switch(sub_100FC4FBC, v4, 0);
}

uint64_t sub_100FAF6CC()
{
  (*(v0 + 312))(*(v0 + 280), *(v0 + 240));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100FAF808()
{
  v1 = v0[39];
  v2 = v0[35];
  v3 = v0[30];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100FAF954()
{
  v1 = v0[39];
  v2 = v0[35];
  v3 = v0[30];
  v5 = v0[28];
  v4 = v0[29];
  v6 = v0[27];

  (*(v5 + 8))(v4, v6);
  v1(v2, v3);

  v7 = v0[1];

  return v7();
}