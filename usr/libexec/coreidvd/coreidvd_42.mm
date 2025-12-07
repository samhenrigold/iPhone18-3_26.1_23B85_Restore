uint64_t sub_100497E68(uint64_t a1)
{
  v2 = *v1;
  v5 = *v1;
  *(v2 + 112) = a1;

  v3 = swift_task_alloc();
  *(v2 + 120) = v3;
  *v3 = v5;
  v3[1] = sub_100497F98;

  return sub_10030A28C();
}

uint64_t sub_100497F98(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1004982AC(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_100498354;

  return sub_10049796C();
}

uint64_t sub_100498354(uint64_t a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    (*(v8 + 16))(v8, a1, 0);
  }

  _Block_release(*(v6 + 24));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_1004984E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for DIPError();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v4[12] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();

  return _swift_task_switch(sub_1004986A8, 0, 0);
}

uint64_t sub_1004986A8(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134349056;
    *(v4 + 4) = IdentityBoundACLType.rawValue.getter();
    _os_log_impl(&_mh_execute_header, v2, v3, "Setting global bound ACL %{public}ld", v4, 0xCu);
  }

  v5 = v1[16];
  v6 = v1[13];
  v7 = v1[14];

  v8 = *(v7 + 8);
  v1[17] = v8;
  v1[18] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v5, v6);
  sub_1004A14E4();
  v9 = swift_task_alloc();
  v1[19] = v9;
  *v9 = v1;
  v9[1] = sub_100498A54;
  v10 = v1[3];
  v11 = v1[4];
  v12 = v1[2];

  return sub_1001780FC(v12, v10, v11);
}

uint64_t sub_100498A54()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_100498CA8;
  }

  else
  {
    v2 = sub_100498B68;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100498B68()
{
  v1 = v0[12];
  v2 = v0[5];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;

  sub_1003E653C(0, 0, v1, &unk_1006E5A60, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100498CA8()
{
  v11 = v0[17];
  v1 = v0[15];
  v10 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.internalError(_:), v0[6]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  v5 = *(v3 + 16);
  v5(v6, v2, v4);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v11(v1, v10);

  swift_allocError();
  v5(v7, v2, v4);
  swift_willThrow();

  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100498F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_100498FC0, 0, 0);
}

uint64_t sub_100498FC0()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_100499064;

  return sub_1006738C8();
}

uint64_t sub_100499064(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return _swift_task_switch(sub_100499164, 0, 0);
}

uint64_t sub_100499164()
{
  v17 = v0;
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = [*(v0 + 56) deviceID];

    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    defaultLogger()();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    v8 = os_log_type_enabled(v6, v7);
    v10 = *(v0 + 32);
    v9 = *(v0 + 40);
    v11 = *(v0 + 24);
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_100141FE4(0xD00000000000001DLL, 0x8000000100719F10, &v16);
      _os_log_impl(&_mh_execute_header, v6, v7, "%s Watch Paired and a new GlobalAuthACL set, marking any prearmtrust for deletion", v12, 0xCu);
      sub_10000BB78(v13);
    }

    (*(v10 + 8))(v9, v11);
    sub_10058FE8C(v3, v5);
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1004994B8(void *a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = a1;

  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v4[4] = v8;
  v4[5] = v10;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_1004995A4;

  return sub_1004984E8(v8, v10, a2);
}

uint64_t sub_1004995A4()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *v1;

  sub_10000B90C(v6, v5);
  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_100499768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = type metadata accessor for DIPError();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v5[13] = v8;
  v5[14] = *(v8 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_1004998F4, 0, 0);
}

uint64_t sub_1004998F4(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Setting modified global bound ACL", v4, 2u);
  }

  v5 = v1[16];
  v6 = v1[13];
  v7 = v1[14];

  v8 = *(v7 + 8);
  v1[17] = v8;
  v8(v5, v6);
  sub_1004A14E4();
  v9 = swift_task_alloc();
  v1[18] = v9;
  *v9 = v1;
  v9[1] = sub_100499C88;
  v10 = v1[4];
  v11 = v1[5];
  v13 = v1[2];
  v12 = v1[3];

  return sub_100178610(v13, v12, v10, v11);
}

uint64_t sub_100499C88(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 152) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100499DFC, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_100499DFC()
{
  v11 = v0[17];
  v1 = v0[15];
  v2 = v0[12];
  v10 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  (*(v0[8] + 104))(v0[9], enum case for DIPError.Code.internalError(_:), v0[7]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  v5 = *(v3 + 16);
  v5(v6, v2, v4);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v11(v1, v10);

  swift_allocError();
  v5(v7, v2, v4);
  swift_willThrow();

  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10049A1F0(void *a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = a1;
  v8 = a2;

  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v4[4] = v9;
  v4[5] = v11;
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v4[6] = v12;
  v4[7] = v14;
  v15 = swift_task_alloc();
  v4[8] = v15;
  *v15 = v4;
  v15[1] = sub_10049A300;

  return sub_100499768(v9, v11, v12, v14);
}

uint64_t sub_10049A300(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v4 = *v2;
  v6 = *v2;

  v7 = v4[5];
  v8 = v4[4];
  sub_10000B90C(v4[6], v4[7]);
  sub_10000B90C(v8, v7);
  if (v3)
  {
    isa = _convertErrorToNSError(_:)();

    v10 = isa;
    v11 = 0;
  }

  else
  {
    type metadata accessor for UUID();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v11 = isa;
    v10 = 0;
  }

  v12 = v5[3];
  (v12)[2](v12, v11, v10);

  _Block_release(v12);
  v13 = v6[1];

  return v13();
}

uint64_t sub_10049A4F4()
{
  v1[20] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  v3 = type metadata accessor for DIPError();
  v1[24] = v3;
  v1[25] = *(v3 - 8);
  v1[26] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[27] = v4;
  v1[28] = *(v4 - 8);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();

  return _swift_task_switch(sub_10049A678, 0, 0);
}

uint64_t sub_10049A678(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Retrieving bio binding unbound ACL", v4, 2u);
  }

  v5 = v1[30];
  v6 = v1[27];
  v7 = v1[28];

  v8 = *(v7 + 8);
  v1[31] = v8;
  v8(v5, v6);
  sub_1004A14E4();
  v9 = *(*(v1[20] + 56) + 16);
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_10049AA3C;
  v10 = swift_continuation_init();
  v1[17] = sub_100007224(&unk_100845E00, &qword_1006DAB10);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1004B1218;
  v1[13] = &unk_100812768;
  v1[14] = v10;
  [v9 bioBindingUnboundACL:v1 + 10];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_10049AA3C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 256) = v1;
  if (v1)
  {
    v2 = sub_10049ABE8;
  }

  else
  {
    v2 = sub_10049AB4C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10049AB4C()
{
  v2 = v0[18];
  v1 = v0[19];

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_10049ABE8(uint64_t a1)
{
  swift_willThrow();
  v2 = v1[29];
  v3 = v1[26];
  v9 = v1[27];
  v10 = v1[31];
  v4 = v1[24];
  v5 = v1[25];
  (*(v1[22] + 104))(v1[23], enum case for DIPError.Code.internalError(_:), v1[21]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  (*(v5 + 16))(v6, v3, v4);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v10(v2, v9);
  (*(v5 + 8))(v3, v4);

  v7 = v1[1];

  return v7(0, 0xF000000000000000);
}

uint64_t sub_10049AF80(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1004A86F0;

  return sub_10049A4F4();
}

uint64_t sub_10049B028()
{
  v1[20] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  v3 = type metadata accessor for DIPError();
  v1[24] = v3;
  v1[25] = *(v3 - 8);
  v1[26] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[27] = v4;
  v1[28] = *(v4 - 8);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();

  return _swift_task_switch(sub_10049B1AC, 0, 0);
}

uint64_t sub_10049B1AC(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Retrieving passcode binding unbound ACL", v4, 2u);
  }

  v5 = v1[30];
  v6 = v1[27];
  v7 = v1[28];

  v8 = *(v7 + 8);
  v1[31] = v8;
  v8(v5, v6);
  sub_1004A14E4();
  v9 = *(*(v1[20] + 56) + 16);
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_10049B570;
  v10 = swift_continuation_init();
  v1[17] = sub_100007224(&unk_100845E00, &qword_1006DAB10);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1004B1218;
  v1[13] = &unk_100812740;
  v1[14] = v10;
  [v9 passcodeBindingUnboundACL:v1 + 10];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_10049B570()
{
  v1 = *(*v0 + 48);
  *(*v0 + 256) = v1;
  if (v1)
  {
    v2 = sub_10049B680;
  }

  else
  {
    v2 = sub_1004A8578;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10049B680(uint64_t a1)
{
  swift_willThrow();
  v2 = v1[29];
  v3 = v1[26];
  v9 = v1[27];
  v10 = v1[31];
  v4 = v1[24];
  v5 = v1[25];
  (*(v1[22] + 104))(v1[23], enum case for DIPError.Code.internalError(_:), v1[21]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  (*(v5 + 16))(v6, v3, v4);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v10(v2, v9);
  (*(v5 + 8))(v3, v4);

  v7 = v1[1];

  return v7(0, 0xF000000000000000);
}

uint64_t sub_10049BA18(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1004A86F0;

  return sub_10049B028();
}

uint64_t sub_10049BAC0()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for DIPError();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_10049BC44, 0, 0);
}

uint64_t sub_10049BC44(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Retrieving bound ACL", v4, 2u);
  }

  v5 = v1[12];
  v6 = v1[9];
  v7 = v1[10];

  v8 = *(v7 + 8);
  v1[13] = v8;
  v8(v5, v6);
  sub_1004A14E4();
  v9 = swift_task_alloc();
  v1[14] = v9;
  *v9 = v1;
  v9[1] = sub_10049BF84;

  return sub_100177D88();
}

uint64_t sub_10049BF84(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(v6 + 120) = v2;

  if (v2)
  {

    return _swift_task_switch(sub_10049C108, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7(a1, a2);
  }
}

uint64_t sub_10049C108()
{
  v1 = v0[11];
  v2 = v0[8];
  v8 = v0[9];
  v9 = v0[13];
  v3 = v0[6];
  v4 = v0[7];
  (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.internalError(_:), v0[3]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  (*(v4 + 16))(v5, v2, v3);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v9(v1, v8);
  (*(v4 + 8))(v2, v3);

  v6 = v0[1];

  return v6(0, 0xF000000000000000);
}

uint64_t sub_10049C49C(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_10049C544;

  return sub_10049BAC0();
}

uint64_t sub_10049C544(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  v6 = *v2;

  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10000BD94(a1, a2);
  }

  v8 = *(v5 + 24);
  (v8)[2](v8, isa);

  _Block_release(v8);
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_10049C6B8()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for DIPError();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_10049C83C, 0, 0);
}

uint64_t sub_10049C83C(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Deleting deleteBoundACL", v4, 2u);
  }

  v5 = v1[12];
  v6 = v1[9];
  v7 = v1[10];

  (*(v7 + 8))(v5, v6);
  sub_1004A14E4();
  v8 = swift_task_alloc();
  v1[13] = v8;
  *v8 = v1;
  v8[1] = sub_10049CBB8;

  return sub_10058DFB4();
}

uint64_t sub_10049CBB8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10049CEA0(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_10049CF48;

  return sub_10049C6B8();
}

uint64_t sub_10049CF48()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *v1;

  v6 = *(v3 + 24);
  if (v2)
  {
    v7 = _convertErrorToNSError(_:)();

    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(v6, 0);
  }

  _Block_release(*(v4 + 24));
  v8 = *(v5 + 8);

  return v8();
}

uint64_t sub_10049D0D0()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for DIPError();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_10049D254, 0, 0);
}

uint64_t sub_10049D254(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching bio binding details", v4, 2u);
  }

  v5 = v1[12];
  v6 = v1[9];
  v7 = v1[10];

  v8 = *(v7 + 8);
  v1[13] = v8;
  v8(v5, v6);
  sub_1004A14E4();
  v9 = swift_task_alloc();
  v1[14] = v9;
  *v9 = v1;
  v9[1] = sub_10049D5D4;

  return sub_100178A70();
}

uint64_t sub_10049D5D4(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 120) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10049D748, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_10049D748()
{
  v11 = v0[13];
  v1 = v0[11];
  v2 = v0[8];
  v10 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.internalError(_:), v0[3]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  v5 = *(v3 + 16);
  v5(v6, v2, v4);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v11(v1, v10);

  swift_allocError();
  v5(v7, v2, v4);
  swift_willThrow();

  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10049DB18(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1004A86E8;

  return sub_10049D0D0();
}

uint64_t sub_10049DBC0()
{
  v1[7] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = type metadata accessor for DIPError();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[14] = v4;
  v1[15] = *(v4 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();

  return _swift_task_switch(sub_10049DD44, 0, 0);
}

uint64_t sub_10049DD44(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting getLivenessConfig", v4, 2u);
  }

  v5 = v1[17];
  v6 = v1[14];
  v7 = v1[15];

  v8 = *(v7 + 8);
  v1[18] = v8;
  v8(v5, v6);
  sub_1004A14E4();
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  sub_10000BA08(v1 + 2, v1[5]);
  dispatch thunk of DIPAccountManagerProtocol.verifyAccountStatus(requireHSA2:)();
  sub_10000BB78(v1 + 2);
  v9 = swift_task_alloc();
  v1[19] = v9;
  *v9 = v1;
  v9[1] = sub_10049E108;

  return sub_100488518();
}

uint64_t sub_10049E108(uint64_t a1)
{
  v2 = *v1;
  v5 = *v1;
  *(v2 + 160) = a1;

  v3 = swift_task_alloc();
  *(v2 + 168) = v3;
  *v3 = v5;
  v3[1] = sub_10049E238;

  return sub_10030A7A8();
}

uint64_t sub_10049E238(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 176) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10049E3C4, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_10049E3C4()
{

  v11 = v0[18];
  v1 = v0[16];
  v2 = v0[13];
  v10 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  v5 = *(v3 + 16);
  v5(v6, v2, v4);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v11(v1, v10);

  swift_allocError();
  v5(v7, v2, v4);
  swift_willThrow();

  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10049E79C(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1003F8F88;

  return sub_10049DBC0();
}

uint64_t sub_10049E844(uint64_t a1, char a2)
{
  *(v3 + 192) = a2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  v4 = type metadata accessor for DIPError.Code();
  *(v3 + 72) = v4;
  *(v3 + 80) = *(v4 - 8);
  *(v3 + 88) = swift_task_alloc();
  v5 = type metadata accessor for DIPError();
  *(v3 + 96) = v5;
  *(v3 + 104) = *(v5 - 8);
  *(v3 + 112) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v3 + 120) = v6;
  *(v3 + 128) = *(v6 - 8);
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();

  return _swift_task_switch(sub_10049E9CC, 0, 0);
}

uint64_t sub_10049E9CC(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Uploading liveness video", v4, 2u);
  }

  v5 = v1[18];
  v6 = v1[15];
  v7 = v1[16];

  v8 = *(v7 + 8);
  v1[19] = v8;
  v8(v5, v6);
  sub_1004A14E4();
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  sub_10000BA08(v1 + 2, v1[5]);
  dispatch thunk of DIPAccountManagerProtocol.verifyAccountStatus(requireHSA2:)();
  sub_10000BB78(v1 + 2);
  v9 = swift_task_alloc();
  v1[20] = v9;
  *v9 = v1;
  v9[1] = sub_10049ED98;

  return sub_100488518();
}

uint64_t sub_10049ED98(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v2 + 168) = a1;

  v4 = swift_task_alloc();
  *(v2 + 176) = v4;
  *v4 = v3;
  v4[1] = sub_10049EEE8;
  v5 = *(v2 + 192);
  v6 = *(v2 + 56);

  return sub_10030BD9C(v6, v5);
}

uint64_t sub_10049EEE8()
{
  v2 = *v1;
  *(v2 + 184) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10049F060, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10049F060()
{

  v11 = v0[19];
  v1 = v0[17];
  v2 = v0[14];
  v10 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  (*(v0[10] + 104))(v0[11], enum case for DIPError.Code.internalError(_:), v0[9]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  v5 = *(v3 + 16);
  v5(v6, v2, v4);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v11(v1, v10);

  swift_allocError();
  v5(v7, v2, v4);
  swift_willThrow();

  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10049F45C(void *a1, char a2, void *aBlock, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a1;

  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_1004A857C;

  return sub_10049E844(v7, a2);
}

uint64_t sub_10049F6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *aBlock, uint64_t a7)
{
  v7[2] = a7;
  v7[3] = _Block_copy(aBlock);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7[4] = v11;

  v12 = swift_task_alloc();
  v7[5] = v12;
  *v12 = v7;
  v12[1] = sub_10049F7E8;

  return sub_1004A5D64(a1, v11, a3, a4);
}

uint64_t sub_10049F7E8()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *v1;

  v6 = *(v3 + 24);
  if (v2)
  {
    v7 = _convertErrorToNSError(_:)();

    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v8 = *(v5 + 8);

  return v8();
}

uint64_t sub_10049F98C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for DIPError();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_10049FB10, 0, 0);
}

uint64_t sub_10049FB10(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting fetchBiomeFedStatsUI", v4, 2u);
  }

  v5 = v1[13];
  v6 = v1[10];
  v7 = v1[11];

  (*(v7 + 8))(v5, v6);
  sub_1004A14E4();
  v8 = swift_task_alloc();
  v1[14] = v8;
  *v8 = v1;
  v8[1] = sub_10049FE88;

  return sub_100488518();
}

uint64_t sub_10049FE88(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[15] = a1;

  v4 = swift_task_alloc();
  v2[16] = v4;
  *v4 = v3;
  v4[1] = sub_10049FFD4;
  v5 = v2[2];

  return sub_10030B2D8(v5);
}

uint64_t sub_10049FFD4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1004A02FC(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_100481C58;

  return sub_10049F98C(v5);
}

uint64_t sub_1004A054C(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1004A8580;

  return sub_1004A67E4();
}

uint64_t sub_1004A061C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for DIPError();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_1004A07A4, 0, 0);
}

uint64_t sub_1004A07A4(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting clearDataAfterTerminalProofingState", v4, 2u);
  }

  v5 = v1[14];
  v6 = v1[11];
  v7 = v1[12];

  v8 = *(v7 + 8);
  v1[15] = v8;
  v8(v5, v6);
  sub_1004A14E4();
  v9 = swift_task_alloc();
  v1[16] = v9;
  *v9 = v1;
  v9[1] = sub_1004A0B28;

  return sub_100488518();
}

uint64_t sub_1004A0B28(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[17] = a1;

  v4 = swift_task_alloc();
  v2[18] = v4;
  *v4 = v3;
  v4[1] = sub_1004A0C88;
  v5 = v2[3];
  v6 = v2[2];

  return sub_10030DBCC(v6, v5);
}

uint64_t sub_1004A0C88()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1004A0E60;
  }

  else
  {

    v2 = sub_1004A0DA4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004A0DA4()
{
  v1 = *(*(v0 + 32) + 40);
  os_unfair_lock_lock((v1 + 24));

  *(v1 + 16) = 0;
  os_unfair_lock_unlock((v1 + 24));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004A0E60()
{

  v11 = v0[15];
  v1 = v0[13];
  v2 = v0[10];
  v10 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  v5 = *(v3 + 16);
  v5(v6, v2, v4);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v11(v1, v10);

  swift_allocError();
  v5(v7, v2, v4);
  swift_willThrow();

  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1004A1258(void *a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a1;

  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_1004A857C;

  return sub_1004A061C(v7, a2);
}

uint64_t sub_1004A1324()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Destroying IdentityManagementSessionProxy", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1004A14B0()
{
  sub_1004A1324();

  return swift_deallocClassInstance();
}

void sub_1004A14E4()
{
  v1 = type metadata accessor for DIPError.Code();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v26 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v27 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v24 = v1;
    v10 = v9;
    v23 = swift_slowAlloc();
    v29 = v23;
    *v10 = 136315138;
    Strong = swift_unknownObjectWeakLoadStrong();
    v25 = v0;
    v12 = Strong;
    v28 = Strong;
    sub_100007224(&unk_100845850, &qword_1006E5A50);
    v13 = Optional.debugDescription.getter();
    v22 = v4;
    v14 = v2;
    v16 = v15;

    v17 = sub_100141FE4(v13, v16, &v29);
    v2 = v14;

    *(v10 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "IdentityManagementSessionProxy Checking connection %s", v10, 0xCu);
    sub_10000BB78(v23);

    v1 = v24;

    (*(v27 + 8))(v6, v22);
  }

  else
  {

    (*(v27 + 8))(v6, v4);
  }

  v18 = swift_unknownObjectWeakLoadStrong();
  if (v18)
  {
    v19 = v18;
    v20._countAndFlagsBits = 0xD000000000000027;
    v20._object = 0x8000000100719DC0;
    if (!NSXPCConnection.isEntitled(_:)(v20))
    {
      (*(v2 + 104))(v26, enum case for DIPError.Code.missingEntitlement(_:), v1);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100485E38(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }

  else
  {
    (*(v2 + 104))(v26, enum case for DIPError.Code.missingEntitlement(_:), v1);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100485E38(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }
}

uint64_t sub_1004A19D0()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for DIPError();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_1004A1B54, 0, 0);
}

uint64_t sub_1004A1B54(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "globalAuthACLInfo", v4, 2u);
  }

  v5 = v1[12];
  v6 = v1[9];
  v7 = v1[10];

  v8 = *(v7 + 8);
  v1[13] = v8;
  v8(v5, v6);
  sub_1004A14E4();
  v9 = swift_task_alloc();
  v1[14] = v9;
  *v9 = v1;
  v9[1] = sub_1004A1ED4;

  return sub_10058F428();
}

uint64_t sub_1004A1ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  *(v8 + 120) = v3;

  if (v3)
  {

    return _swift_task_switch(sub_1004A2064, 0, 0);
  }

  else
  {

    v9 = *(v8 + 8);

    return v9(a1, a2, a3);
  }
}

uint64_t sub_1004A2064()
{
  v11 = v0[13];
  v1 = v0[11];
  v2 = v0[8];
  v10 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.internalError(_:), v0[3]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  v5 = *(v3 + 16);
  v5(v6, v2, v4);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v11(v1, v10);

  swift_allocError();
  v5(v7, v2, v4);
  swift_willThrow();

  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1004A2434(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1004A24DC;

  return sub_1004A19D0();
}

uint64_t sub_1004A24DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v4;
  v8 = *v4;

  v9 = *(v7 + 24);
  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    (v9)[2](v9, 0, 0, 0, v10);

    _Block_release(v9);
  }

  else
  {
    type metadata accessor for UUID();
    isa = Array._bridgeToObjectiveC()().super.isa;
    (v9)[2](v9, isa, a2, a3, 0);

    _Block_release(v9);
  }

  v12 = *(v8 + 8);

  return v12();
}

uint64_t sub_1004A26C0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for DIPError();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_1004A2848, 0, 0);
}

uint64_t sub_1004A2848(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "fetchAnalyticsSessionID", v4, 2u);
  }

  v5 = v1[14];
  v6 = v1[11];
  v7 = v1[12];

  (*(v7 + 8))(v5, v6);
  sub_1004A14E4();
  v8 = swift_task_alloc();
  v1[15] = v8;
  *v8 = v1;
  v8[1] = sub_1004A2B84;

  return sub_100488518();
}

uint64_t sub_1004A2B84(uint64_t a1)
{
  *(*v1 + 128) = a1;

  return _swift_task_switch(sub_1004A2C84, 0, 0);
}

uint64_t sub_1004A2C84()
{
  v0[17] = *(v0[16] + 248);

  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_1004A2D38;
  v3 = v0[2];
  v2 = v0[3];

  return sub_100204A00(v3, v2);
}

uint64_t sub_1004A2D38(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_1004A308C(void *a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a1;

  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_1004A3158;

  return sub_1004A26C0(v7, a2);
}

uint64_t sub_1004A3158(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v4 + 32);
  (v8)[2](v8, v7);

  _Block_release(v8);
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_1004A3310(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_100498F00(a1, v4, v5, v6);
}

void *sub_1004A33C4(void *a1, void *a2)
{
  v3 = v2;
  v29[0] = a2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  *(v2 + 24) = 1;
  sub_100007224(&qword_1008458C0, &unk_1006E5ED0);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = 0;
  *(v2 + 40) = v13;
  if (qword_100832C18 != -1)
  {
    swift_once();
  }

  v14 = qword_100882220;
  *(v2 + 56) = qword_100882220;
  *(v2 + 80) = 0;
  sub_10001F8D4(0, &qword_100845BD0, OS_dispatch_queue_ptr);
  (*(v10 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v9);
  swift_retain_n();
  v15 = static OS_dispatch_queue.global(qos:)();
  (*(v10 + 8))(v12, v9);
  v3[11] = v15;
  defaultLogger()();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Creating IdentityManagementSessionProxy", v18, 2u);
  }

  (*(v6 + 8))(v8, v5);
  swift_unknownObjectWeakAssign();
  v19 = a1;
  result = os_transaction_create();
  if (result)
  {
    v3[4] = result;
    v21 = v29[0];
    v3[9] = v29[0];
    v22 = v21;
    v23 = sub_10048A4CC();
    type metadata accessor for DIPACLCleanerUpper();
    v24 = swift_allocObject();
    v24[2] = v14;
    v24[3] = v22;
    v24[4] = v23;
    v3[8] = v24;
    aBlock[4] = sub_10048A728;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1004DB3EC;
    aBlock[3] = &unk_100813780;
    v25 = _Block_copy(aBlock);
    v26 = [v19 remoteObjectProxyWithErrorHandler:v25];
    _Block_release(v25);
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100007224(&qword_1008458C8, qword_1006E5F20);
    v27 = swift_dynamicCast();
    v28 = v29[1];
    if (!v27)
    {
      v28 = 0;
    }

    v3[10] = v28;
    swift_unknownObjectRelease();
    v3[6] = sub_1004A8FFC(v19);

    sub_1004A88C8(0);

    sub_1004A88C8(1);

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004A3824(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v34 = v5;
    v12 = v11;
    v33 = swift_slowAlloc();
    aBlock = v33;
    *v12 = 136315394;
    v13 = v8;
    v14 = [v13 description];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v4;
    v16 = v15;
    v18 = v17;

    v19 = sub_100141FE4(v16, v18, &aBlock);

    *(v12 + 4) = v19;
    *(v12 + 12) = 1024;
    LODWORD(v19) = [v13 processIdentifier];

    *(v12 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "coreidvd (%s:%d): identity management connection received", v12, 0x12u);
    sub_10000BB78(v33);

    (*(v34 + 8))(v7, v32);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  type metadata accessor for IdentityManagementDaemonToClientUIInterface();
  v20 = static IdentityManagementDaemonToClientUIInterface.interface()();
  [v8 setRemoteObjectInterface:v20];

  type metadata accessor for IdentityManagementInterface();
  v21 = static IdentityManagementInterface.interface()();
  [v8 setExportedInterface:v21];

  v22 = *(v2 + OBJC_IVAR____TtC8coreidvd26IdentityManagementListener_watchSessionManager);
  type metadata accessor for IdentityManagementSessionProxy();
  swift_allocObject();
  v23 = v8;
  v24 = v22;
  v25 = sub_1004A33C4(v23, v24);

  [v23 setExportedObject:v25];

  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v39 = sub_1004A84F8;
  v40 = v26;
  aBlock = _NSConcreteStackBlock;
  v36 = 1107296256;
  v37 = sub_100503A7C;
  v38 = &unk_100813730;
  v27 = _Block_copy(&aBlock);

  [v23 setInvalidationHandler:v27];
  _Block_release(v27);
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v39 = sub_1004A853C;
  v40 = v28;
  aBlock = _NSConcreteStackBlock;
  v36 = 1107296256;
  v37 = sub_100503A7C;
  v38 = &unk_100813758;
  v29 = _Block_copy(&aBlock);

  [v23 setInterruptionHandler:v29];
  _Block_release(v29);
  [v23 resume];
  return 1;
}

uint64_t sub_1004A3C88(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = type metadata accessor for DIPError();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_1004A3E10, 0, 0);
}

uint64_t sub_1004A3E10(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting prepareForProofingIdentity", v4, 2u);
  }

  v5 = v1[19];
  v6 = v1[16];
  v7 = v1[17];

  (*(v7 + 8))(v5, v6);
  sub_1004A14E4();
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  sub_10000BA08(v1 + 2, v1[5]);
  dispatch thunk of DIPAccountManagerProtocol.verifyAccountStatus(requireHSA2:)();
  sub_10000BB78(v1 + 2);
  v8 = swift_task_alloc();
  v1[20] = v8;
  *v8 = v1;
  v8[1] = sub_1004A41D4;

  return sub_100488518();
}

uint64_t sub_1004A41D4(uint64_t a1)
{
  *(*v1 + 168) = a1;

  return _swift_task_switch(sub_1004A42D4, 0, 0);
}

uint64_t sub_1004A42D4(uint64_t a1)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = IdentityProofingConfiguration.country.getter();
  sub_1001D15CC(v2, v3, v4, v5);

  v6 = v1[1];

  return v6();
}

uint64_t sub_1004A43B8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for DIPError();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1004A453C, 0, 0);
}

uint64_t sub_1004A453C(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting fetchExtendedReviewDisplayInfo", v4, 2u);
  }

  v5 = v1[13];
  v6 = v1[10];
  v7 = v1[11];

  v8 = *(v7 + 8);
  v1[14] = v8;
  v8(v5, v6);
  sub_1004A14E4();
  v9 = swift_task_alloc();
  v1[15] = v9;
  *v9 = v1;
  v9[1] = sub_1004A48C0;

  return sub_100488518();
}

uint64_t sub_1004A48C0(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[16] = a1;

  v4 = swift_task_alloc();
  v2[17] = v4;
  *v4 = v3;
  v4[1] = sub_1004A4A24;
  v5 = v2[2];

  return sub_100311564(v5);
}

uint64_t sub_1004A4A24(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 144) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1004A4BB0, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_1004A4BB0()
{

  v11 = v0[14];
  v1 = v0[12];
  v2 = v0[9];
  v10 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.internalError(_:), v0[4]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  v5 = *(v3 + 16);
  v5(v6, v2, v4);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v11(v1, v10);

  swift_allocError();
  v5(v7, v2, v4);
  swift_willThrow();

  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1004A4E18(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for DIPError();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_1004A4F9C, 0, 0);
}

uint64_t sub_1004A4F9C(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting Proofing cancellation flow", v4, 2u);
  }

  v5 = v1[18];
  v6 = v1[15];
  v7 = v1[16];

  v8 = *(v7 + 8);
  v1[19] = v8;
  v8(v5, v6);
  sub_1004A14E4();
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  sub_10000BA08(v1 + 2, v1[5]);
  dispatch thunk of DIPAccountManagerProtocol.verifyAccountStatus(requireHSA2:)();
  sub_10000BB78(v1 + 2);
  v9 = swift_task_alloc();
  v1[20] = v9;
  *v9 = v1;
  v9[1] = sub_1004A5368;

  return sub_100488518();
}

uint64_t sub_1004A5368(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[21] = a1;

  v4 = swift_task_alloc();
  v2[22] = v4;
  *v4 = v3;
  v4[1] = sub_1004A54CC;
  v5 = v2[7];

  return sub_100311160(v5);
}

uint64_t sub_1004A54CC()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1004A56A4;
  }

  else
  {

    v2 = sub_1004A55E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004A55E8()
{
  v1 = *(*(v0 + 64) + 40);
  os_unfair_lock_lock((v1 + 24));

  *(v1 + 16) = 0;
  os_unfair_lock_unlock((v1 + 24));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004A56A4()
{

  v11 = v0[19];
  v1 = v0[17];
  v2 = v0[14];
  v10 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  (*(v0[10] + 104))(v0[11], enum case for DIPError.Code.internalError(_:), v0[9]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  v5 = *(v3 + 16);
  v5(v6, v2, v4);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v11(v1, v10);

  swift_allocError();
  v5(v7, v2, v4);
  swift_willThrow();

  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1004A590C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_10048C0A8(a1, v4, v5, v6);
}

uint64_t sub_1004A59C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_1004888A0(a1, v4, v5, v6);
}

uint64_t sub_1004A5A78()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100027B9C;

  return sub_1004A308C(v2, v3, v5, v4);
}

uint64_t sub_1004A5B40()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_1004A2434(v2, v3);
}

uint64_t sub_1004A5BEC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100041F04;

  return sub_1004A1258(v2, v3, v5, v4);
}

uint64_t sub_1004A5CB0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_1004A054C(v2, v3, v4);
}

uint64_t sub_1004A5D64(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 168) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = type metadata accessor for DIPError.Code();
  *(v5 + 48) = v6;
  *(v5 + 56) = *(v6 - 8);
  *(v5 + 64) = swift_task_alloc();
  v7 = type metadata accessor for DIPError();
  *(v5 + 72) = v7;
  *(v5 + 80) = *(v7 - 8);
  *(v5 + 88) = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  *(v5 + 96) = v8;
  *(v5 + 104) = *(v8 - 8);
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_1004A5EF0, 0, 0);
}

uint64_t sub_1004A5EF0(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting saveIdentityProofingDataSharingUserConsent", v4, 2u);
  }

  v5 = v1[15];
  v6 = v1[12];
  v7 = v1[13];

  v8 = *(v7 + 8);
  v1[16] = v8;
  v8(v5, v6);
  sub_1004A14E4();
  v9 = swift_task_alloc();
  v1[17] = v9;
  *v9 = v1;
  v9[1] = sub_1004A6274;

  return sub_100488518();
}

uint64_t sub_1004A6274(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v2 + 144) = a1;

  v4 = swift_task_alloc();
  *(v2 + 152) = v4;
  *v4 = v3;
  v4[1] = sub_1004A6404;
  v5 = *(v2 + 32);
  v6 = *(v2 + 168);
  v7 = *(v2 + 24);
  v8 = *(v2 + 16);

  return sub_1003133A8(v8, v7, v6, v5);
}

uint64_t sub_1004A6404()
{
  v2 = *v1;
  *(v2 + 160) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1004A657C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1004A657C()
{

  v11 = v0[16];
  v1 = v0[14];
  v2 = v0[11];
  v10 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.internalError(_:), v0[6]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  v5 = *(v3 + 16);
  v5(v6, v2, v4);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v11(v1, v10);

  swift_allocError();
  v5(v7, v2, v4);
  swift_willThrow();

  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1004A67E4()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for DIPError();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_1004A6968, 0, 0);
}

uint64_t sub_1004A6968(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting livenessConsentOptin", v4, 2u);
  }

  v5 = v1[12];
  v6 = v1[9];
  v7 = v1[10];

  (*(v7 + 8))(v5, v6);
  sub_1004A14E4();
  v8 = swift_task_alloc();
  v1[13] = v8;
  *v8 = v1;
  v8[1] = sub_1004A6CE8;

  return sub_100488518();
}

uint64_t sub_1004A6CE8(uint64_t a1)
{
  v2 = *v1;
  v5 = *v1;
  *(v2 + 112) = a1;

  v3 = swift_task_alloc();
  *(v2 + 120) = v3;
  *v3 = v5;
  v3[1] = sub_1004A8584;

  return sub_100310F54();
}

uint64_t sub_1004A6E30()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_1004A02FC(v2, v3, v4);
}

uint64_t sub_1004A6EE4()
{
  _Block_release(*(v0 + 56));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1004A6F2C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = *(v0 + 56);
  v7 = *(v0 + 64);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100041F04;

  return sub_10049F6DC(v2, v3, v4, v5, v6, v8, v7);
}

uint64_t sub_1004A7008()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100041F04;

  return sub_10049F45C(v2, v3, v5, v4);
}

uint64_t sub_1004A70CC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_10049E79C(v2, v3);
}

uint64_t sub_1004A7178()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_10049DB18(v2, v3);
}

uint64_t sub_1004A7224()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_10049CEA0(v2, v3);
}

uint64_t sub_1004A72D0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_10049C49C(v2, v3);
}

uint64_t sub_1004A737C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_10049BA18(v2, v3);
}

uint64_t sub_1004A7428()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_10049AF80(v2, v3);
}

uint64_t sub_1004A74D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100041F04;

  return sub_10049A1F0(v2, v3, v5, v4);
}

uint64_t sub_1004A7598()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100041F04;

  return sub_1004994B8(v2, v3, v5, v4);
}

uint64_t sub_1004A7658()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_1004982AC(v2, v3);
}

uint64_t sub_1004A7704()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_100497744(v2, v3, v4);
}

uint64_t sub_1004A77B8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_100496D78(v2, v3);
}

uint64_t sub_1004A7864()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1004A78B4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100041F04;

  return sub_100495F04(v2, v3, v5, v4);
}

uint64_t sub_1004A7974()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100041F04;

  return sub_100494B64(v2, v3, v5, v4);
}

uint64_t sub_1004A7A38()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100041F04;

  return sub_100494700(v2, v3, v4, v5, v6);
}

uint64_t sub_1004A7B00()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_10049384C(v2, v3);
}

uint64_t sub_1004A7BAC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_100492BA8(v2, v3, v4);
}

uint64_t sub_1004A7C60()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_100491FC4(v2, v3);
}

uint64_t sub_1004A7D10()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100041F04;

  return sub_1004911AC(v2, v3, v4, v5, v6);
}

uint64_t sub_1004A7DD8()
{
  _Block_release(*(v0 + 56));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1004A7E28()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100041F04;

  return sub_100490374(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1004A7F08()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1004A7F58()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100041F04;

  return sub_10048F40C(v2, v3, v4, v5, v6);
}

uint64_t sub_1004A8020()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100041F04;

  return sub_10048E6D0(v2, v3, v5, v4);
}

uint64_t sub_1004A80E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_10048E47C(v2, v3, v4);
}

uint64_t sub_1004A8194()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1004A81EC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100041F04;

  return sub_10048D580(v2, v3, v4, v5, v6);
}

uint64_t sub_1004A82B4()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1004A82FC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100041F04;

  return sub_10048D30C(v2, v3, v5, v4);
}

uint64_t sub_1004A83BC()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1004A83FC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100041F04;

  return sub_10048B464(v2, v3, v5, v4);
}

uint64_t sub_1004A84C0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004A8524(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1004A86FC(uint64_t a1)
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_100141FE4(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "error received while fetching proxy for the exported client %s", v7, 0xCu);
    sub_10000BB78(v8);
  }

  return (*(v2 + 8))(v4, v1);
}

void sub_1004A88C8(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v23 = v2;
    v11 = v10;
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136315138;
    if (a1)
    {
      v13 = 0xD00000000000001DLL;
    }

    else
    {
      v13 = 0xD000000000000015;
    }

    if (a1)
    {
      v14 = "v16@?0@NSNotification8";
    }

    else
    {
      v14 = "extendReviewNotificationShown";
    }

    v15 = sub_100141FE4(v13, v14 | 0x8000000000000000, aBlock);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "Add Observer called for %s", v11, 0xCu);
    sub_10000BB78(v12);

    v2 = v23;
  }

  (*(v5 + 8))(v7, v4);
  v16 = [objc_opt_self() defaultCenter];
  v17 = a1 & 1;
  v18 = String._bridgeToObjectiveC()();
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = v2;
  aBlock[4] = sub_1004A8FB0;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1004A8BDC;
  aBlock[3] = &unk_1008137D0;
  v20 = _Block_copy(aBlock);

  v21 = [v16 addObserverForName:v18 object:0 queue:0 usingBlock:v20];
  _Block_release(v20);
  swift_unknownObjectRelease();
}

uint64_t sub_1004A8BDC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1004A8CF8(const char *a1, SEL *a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v20 - v10;
  v12 = *(v2 + 16);
  if (v12)
  {
    swift_unknownObjectRetain();
    defaultLogger()();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, a1, v15, 2u);
    }

    (*(v6 + 8))(v11, v5);
    [v12 *a2];
    return swift_unknownObjectRelease();
  }

  else
  {
    defaultLogger()();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "cannot connect to client proxy", v19, 2u);
    }

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_1004A8F1C()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1004A8F78()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1004A8FB0()
{
  if (*(v0 + 16))
  {
    return sub_1004A8CE4();
  }

  else
  {
    return sub_1004A8CD0();
  }
}

uint64_t sub_1004A8FE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1004A8FFC(void *a1)
{
  type metadata accessor for IdentityManagementSessionDelegate();
  result = swift_allocObject();
  if (a1)
  {
    aBlock[4] = sub_1004A86FC;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1004DB3EC;
    aBlock[3] = &unk_1008137F8;
    v3 = result;
    v4 = _Block_copy(aBlock);
    v5 = a1;
    v6 = [v5 remoteObjectProxyWithErrorHandler:v4];
    _Block_release(v4);

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100007224(&qword_1008458C8, qword_1006E5F20);
    v7 = swift_dynamicCast();
    result = v3;
    if (v7)
    {
      v8 = v9;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  *(result + 16) = v8;
  return result;
}

uint64_t sub_1004A914C()
{
  v0 = type metadata accessor for IdentityBMUserProofingStreamWrapper();
  v1 = swift_allocObject();
  v2 = [BiomeLibrary() WalletPaymentsCommerce];
  swift_unknownObjectRelease();
  v3 = [v2 UserProofing];
  swift_unknownObjectRelease();
  v4 = [v3 Result];
  swift_unknownObjectRelease();
  *(v1 + 16) = v4;
  v5 = objc_allocWithZone(IdentityProofingBiomeDataDeletionManager);

  v6 = [v5 init];
  v17[3] = v0;
  v17[4] = &off_10080D6B8;
  v17[0] = v1;
  type metadata accessor for IdentityProofingBiomeManager();
  v7 = swift_allocObject();
  v8 = sub_10001F370(v17, v0);
  __chkstk_darwin(v8);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = *v10;
  v15 = v0;
  v16 = &off_10080D6B8;
  *&v14 = v12;
  *(v7 + 64) = 90;
  sub_10001F358(&v14, v7 + 16);
  *(v7 + 56) = v6;
  sub_10000BB78(v17);

  return v7;
}

NSObject *sub_1004A9338()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  machServiceIdentityProofingDataSharing.getter();
  v5 = objc_allocWithZone(NSXPCListener);
  v6 = String._bridgeToObjectiveC()();

  v7 = [v5 initWithMachServiceName:v6];

  *&v0[OBJC_IVAR____TtC8coreidvd35IdentityProofingDataSharingListener_xpcListener] = v7;
  v8 = type metadata accessor for IdentityProofingDataSharingListener();
  v18.receiver = v0;
  v18.super_class = v8;
  v9 = objc_msgSendSuper2(&v18, "init");
  v10 = OBJC_IVAR____TtC8coreidvd35IdentityProofingDataSharingListener_xpcListener;
  v11 = *&v9[OBJC_IVAR____TtC8coreidvd35IdentityProofingDataSharingListener_xpcListener];
  v12 = v9;
  [v11 setDelegate:v12];
  [*&v9[v10] resume];
  defaultLogger()();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "IdentityProofingDataSharingListener has started", v15, 2u);

    v16 = v12;
  }

  else
  {
    v16 = v13;
    v13 = v12;
  }

  (*(v2 + 8))(v4, v1);
  return v12;
}

id sub_1004A9564()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "IdentityProofingDataSharingListener is tearing down", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  [*&v1[OBJC_IVAR____TtC8coreidvd35IdentityProofingDataSharingListener_xpcListener] invalidate];
  v9 = type metadata accessor for IdentityProofingDataSharingListener();
  v11.receiver = v1;
  v11.super_class = v9;
  return objc_msgSendSuper2(&v11, "dealloc");
}

uint64_t sub_1004A9728(const char *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, a1, v8, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

void *sub_1004A98E8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3[3] = 0;
  swift_unknownObjectWeakInit();
  defaultLogger()();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Creating IdentityProofingDataSharingSessionProxy", v11, 2u);
  }

  (*(v6 + 8))(v8, v5);
  a3[3] = &protocol witness table for NSXPCConnection;
  swift_unknownObjectWeakAssign();
  a3[4] = a2;

  result = os_transaction_create();
  if (result)
  {
    a3[5] = result;
    return a3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004A9A88(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v40 - v7;
  defaultLogger()();
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = [v9 processIdentifier];

    _os_log_impl(&_mh_execute_header, v10, v11, "IdentityProofingDataSharingListener connection received from %d", v12, 8u);
  }

  else
  {

    v10 = v9;
  }

  v15 = *(v3 + 8);
  v14 = v3 + 8;
  v13 = v15;
  v15(v8, v2);
  defaultLogger()();
  v16 = v9;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v41 = v13;
    v20 = v19;
    v21 = swift_slowAlloc();
    aBlock = v21;
    *v20 = 136315394;
    v22 = v16;
    v40[1] = v14;
    v23 = v22;
    v24 = [v22 description];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40[0] = v2;
    v27 = v26;

    v28 = sub_100141FE4(v25, v27, &aBlock);

    *(v20 + 4) = v28;
    *(v20 + 12) = 1024;
    LODWORD(v27) = [v23 processIdentifier];

    *(v20 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v17, v18, "coreidvd (%s:%d): IdentityProofingDataSharingListener connection received", v20, 0x12u);
    sub_10000BB78(v21);

    v41(v6, v40[0]);
  }

  else
  {

    v13(v6, v2);
  }

  type metadata accessor for IdentityProofingDataSharingInterface();
  v29 = static IdentityProofingDataSharingInterface.interface()();
  [v16 setExportedInterface:v29];

  v30 = sub_1004A914C();
  type metadata accessor for IdentityProofingDataRetentionHelper();
  v31 = swift_allocObject();
  *(v31 + 16) = 90;
  v45 = &type metadata for IdentityProofingPassManager;
  v46 = &off_10080DA50;
  type metadata accessor for IdentityProofingBiomeDataSharingManager();
  v32 = swift_allocObject();
  sub_10001F370(&aBlock, &type metadata for IdentityProofingPassManager);
  v49 = &type metadata for IdentityProofingPassManager;
  v50 = &off_10080DA50;
  *(v32 + 16) = v30;
  sub_10001F358(&v48, v32 + 24);
  *(v32 + 64) = v31;
  sub_10000BB78(&aBlock);
  type metadata accessor for IdentityProofingDataSharingManager();
  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  type metadata accessor for IdentityProofingDataSharingSessionProxy();
  v34 = swift_allocObject();
  v35 = v16;
  v36 = sub_1004A98E8(v35, v33, v34);

  [v35 setExportedObject:v36];

  v46 = sub_1004A9710;
  v47 = 0;
  aBlock = _NSConcreteStackBlock;
  v43 = 1107296256;
  v44 = sub_100503A7C;
  v45 = &unk_100813820;
  v37 = _Block_copy(&aBlock);
  [v35 setInvalidationHandler:v37];
  _Block_release(v37);
  v46 = sub_1004A971C;
  v47 = 0;
  aBlock = _NSConcreteStackBlock;
  v43 = 1107296256;
  v44 = sub_100503A7C;
  v45 = &unk_100813848;
  v38 = _Block_copy(&aBlock);
  [v35 setInterruptionHandler:v38];
  _Block_release(v38);
  [v35 resume];
  return 1;
}

uint64_t sub_1004A9FD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1004A9FF0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Destroying IdentityProofingDataSharingSessionProxy", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  sub_100485E80(v1 + 16);

  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1004AA14C()
{
  sub_1004A9FF0();

  return swift_deallocClassInstance();
}

uint64_t sub_1004AA180()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for DIPError();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_1004AA304, 0, 0);
}

uint64_t sub_1004AA304(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting fetchUserConsent event", v4, 2u);
  }

  v5 = v1[12];
  v6 = v1[9];
  v7 = v1[10];

  v8 = *(v7 + 8);
  v1[13] = v8;
  v8(v5, v6);
  sub_1004AC3C4();
  v1[14] = *(*(v1[2] + 32) + 16);

  v9 = swift_task_alloc();
  v1[15] = v9;
  *v9 = v1;
  v9[1] = sub_1004AA66C;

  return sub_10017C2F0();
}

uint64_t sub_1004AA66C(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 128) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1004AA7F8, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_1004AA7F8()
{

  v11 = v0[13];
  v1 = v0[11];
  v2 = v0[8];
  v10 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.internalError(_:), v0[3]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100037214();
  swift_allocError();
  v5 = *(v3 + 16);
  v5(v6, v2, v4);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v11(v1, v10);

  swift_allocError();
  v5(v7, v2, v4);
  swift_willThrow();

  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1004AABA4(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_100498354;

  return sub_1004AA180();
}

uint64_t sub_1004AAC4C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for DIPError();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1004AADD0, 0, 0);
}

uint64_t sub_1004AADD0(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting didChangeUserConsent event", v4, 2u);
  }

  v5 = v1[13];
  v6 = v1[10];
  v7 = v1[11];

  v8 = *(v7 + 8);
  v1[14] = v8;
  v8(v5, v6);
  sub_1004AC3C4();
  v1[15] = *(*(v1[3] + 32) + 16);

  v9 = swift_task_alloc();
  v1[16] = v9;
  *v9 = v1;
  v9[1] = sub_1004AB14C;
  v10 = v1[2];

  return sub_10017EF7C(v10);
}

uint64_t sub_1004AB14C()
{
  v2 = *v1;
  *(v2 + 136) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1004AB2C4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1004AB2C4()
{

  v11 = v0[14];
  v1 = v0[12];
  v2 = v0[9];
  v10 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.internalError(_:), v0[4]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100037214();
  swift_allocError();
  v5 = *(v3 + 16);
  v5(v6, v2, v4);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v11(v1, v10);

  swift_allocError();
  v5(v7, v2, v4);
  swift_willThrow();

  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1004AB67C(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);

  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_10049CF48;

  return sub_1004AAC4C(a1);
}

uint64_t sub_1004AB738()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for DIPError();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_1004AB8BC, 0, 0);
}

uint64_t sub_1004AB8BC(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting checkUserConsent event", v4, 2u);
  }

  v5 = v1[12];
  v6 = v1[9];
  v7 = v1[10];

  v8 = *(v7 + 8);
  v1[13] = v8;
  v8(v5, v6);
  sub_1004AC3C4();
  v1[14] = *(*(v1[2] + 32) + 16);

  v9 = swift_task_alloc();
  v1[15] = v9;
  *v9 = v1;
  v9[1] = sub_1004ABC28;

  return sub_10017B1E4();
}

uint64_t sub_1004ABC28(char a1)
{
  v4 = *v2;
  *(v4 + 128) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1004ABDB4, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1 & 1);
  }
}

uint64_t sub_1004ABDB4()
{

  v11 = v0[13];
  v1 = v0[11];
  v2 = v0[8];
  v10 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.internalError(_:), v0[3]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100037214();
  swift_allocError();
  v5 = *(v3 + 16);
  v5(v6, v2, v4);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v11(v1, v10);

  swift_allocError();
  v5(v7, v2, v4);
  swift_willThrow();

  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8(0);
}

uint64_t sub_1004AC188(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1004AC230;

  return sub_1004AB738();
}

uint64_t sub_1004AC230(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    (*(v8 + 16))(v8, a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_1004AC3C4()
{
  v2 = v0;
  v3 = type metadata accessor for DIPError.Code();
  v25 = *(v3 - 8);
  __chkstk_darwin(v3);
  v26 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  defaultLogger()();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v23 = v5;
    v12 = v11;
    v22 = swift_slowAlloc();
    v29 = v22;
    *v12 = 136315138;
    Strong = swift_unknownObjectWeakLoadStrong();
    v24 = v1;
    v14 = *(v2 + 24);
    v27 = Strong;
    v28 = v14;
    sub_100007224(&unk_100845AC0, &unk_1006E5FF8);
    v21 = v10;
    v15 = Optional.debugDescription.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    v18 = sub_100141FE4(v15, v17, &v29);

    *(v12 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v9, v21, "Checking connection %s", v12, 0xCu);
    sub_10000BB78(v22);

    (*(v6 + 8))(v8, v23);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    if ((dispatch thunk of NSXPCConnectionProtocol.isEntitled(_:)() & 1) == 0)
    {
      (*(v25 + 104))(v26, enum case for DIPError.Code.missingEntitlement(_:), v3);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    (*(v25 + 104))(v26, enum case for DIPError.Code.missingEntitlement(_:), v3);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }
}

uint64_t sub_1004AC858()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100027B9C;

  return sub_1004AC188(v2, v3);
}

uint64_t sub_1004AC908()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1004AC948()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_1004AB67C(v2, v3, v4);
}

uint64_t sub_1004AC9FC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_1004AABA4(v2, v3);
}

NSObject *sub_1004ACAC0()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  machServiceIdentityProofingXPC.getter();
  v5 = objc_allocWithZone(NSXPCListener);
  v6 = String._bridgeToObjectiveC()();

  v7 = [v5 initWithMachServiceName:v6];

  *&v0[OBJC_IVAR____TtC8coreidvd24IdentityProofingListener_xpcListener] = v7;
  v8 = type metadata accessor for IdentityProofingListener();
  v18.receiver = v0;
  v18.super_class = v8;
  v9 = objc_msgSendSuper2(&v18, "init");
  v10 = OBJC_IVAR____TtC8coreidvd24IdentityProofingListener_xpcListener;
  v11 = *&v9[OBJC_IVAR____TtC8coreidvd24IdentityProofingListener_xpcListener];
  v12 = v9;
  [v11 setDelegate:v12];
  [*&v9[v10] resume];
  defaultLogger()();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Identity Proofing XPC listener has started", v15, 2u);

    v16 = v12;
  }

  else
  {
    v16 = v13;
    v13 = v12;
  }

  (*(v2 + 8))(v4, v1);
  return v12;
}

id sub_1004ACCEC()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Identity Proofing XPC listener is tearing down", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  [*&v1[OBJC_IVAR____TtC8coreidvd24IdentityProofingListener_xpcListener] invalidate];
  v9 = type metadata accessor for IdentityProofingListener();
  v11.receiver = v1;
  v11.super_class = v9;
  return objc_msgSendSuper2(&v11, "dealloc");
}

uint64_t sub_1004ACEB0(const char *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, a1, v8, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

void sub_1004AD070()
{
  v1 = type metadata accessor for DIPError.Code();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v26 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v27 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v24 = v1;
    v10 = v9;
    v23 = swift_slowAlloc();
    v29 = v23;
    *v10 = 136315138;
    Strong = swift_unknownObjectWeakLoadStrong();
    v25 = v0;
    v12 = Strong;
    v28 = Strong;
    sub_100007224(&unk_100845850, &qword_1006E5A50);
    v13 = Optional.debugDescription.getter();
    v22 = v4;
    v14 = v2;
    v16 = v15;

    v17 = sub_100141FE4(v13, v16, &v29);
    v2 = v14;

    *(v10 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "IdentityProofingSessionProxy Checking connection %s", v10, 0xCu);
    sub_10000BB78(v23);

    v1 = v24;

    (*(v27 + 8))(v6, v22);
  }

  else
  {

    (*(v27 + 8))(v6, v4);
  }

  v18 = swift_unknownObjectWeakLoadStrong();
  if (v18)
  {
    v19 = v18;
    v20._countAndFlagsBits = 0xD000000000000024;
    v20._object = 0x800000010071A660;
    if (!NSXPCConnection.isEntitled(_:)(v20))
    {
      (*(v2 + 104))(v26, enum case for DIPError.Code.missingEntitlement(_:), v1);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }

  else
  {
    (*(v2 + 104))(v26, enum case for DIPError.Code.missingEntitlement(_:), v1);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }
}

uint64_t sub_1004AD4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[20] = v7;
  v5[21] = *(v7 - 8);
  v5[22] = swift_task_alloc();
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v5[23] = v8;
  v5[24] = *(v8 - 8);
  v5[25] = swift_task_alloc();

  return _swift_task_switch(sub_1004AD67C, 0, 0);
}

uint64_t sub_1004AD67C()
{
  sub_1004AD070();
  if (qword_1008824A8)
  {
    v26 = *(qword_1008824A8 + 152);
    v1 = v26;
  }

  else
  {
    v26 = 0;
  }

  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];
  v5 = type metadata accessor for IdentityProofingActionNotificationFlow();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  sub_10017ABC8();
  (*(v3 + 104))(v2, enum case for DispatchQoS.QoSClass.default(_:), v4);
  v7 = static OS_dispatch_queue.global(qos:)();
  (*(v3 + 8))(v2, v4);
  v0[5] = v5;
  v0[6] = &off_10080ADD0;
  v0[2] = v6;
  type metadata accessor for IdentityProofingCleanupProvider();
  v8 = swift_allocObject();
  v9 = sub_10001F370((v0 + 2), v5);
  v10 = *(v5 - 8);
  v11 = swift_task_alloc();
  v12 = *(v10 + 16);
  v12(v11, v9, v5);
  v27 = sub_1004AE4BC(v26, *v11, v7, v8);
  v0[26] = v27;
  sub_10000BB78(v0 + 2);

  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v0[10] = v5;
  v0[11] = &off_10080ADD0;
  v0[7] = v13;
  type metadata accessor for IdentityProofingActionNotificationProvider();
  v14 = swift_allocObject();
  v0[27] = v14;
  v15 = sub_10001F370((v0 + 7), v5);
  v16 = swift_task_alloc();
  v12(v16, v15, v5);
  v17 = *v16;
  v14[5] = v5;
  v14[6] = &off_10080ADD0;
  v14[2] = v17;
  type metadata accessor for IdentityProofingDatabaseProvider();
  v18 = swift_allocObject();
  v14[8] = 0;
  v14[9] = v18;
  v14[7] = 0;
  sub_10000BB78(v0 + 7);

  type metadata accessor for IdentityProofingCancellationProvider();
  v19 = swift_allocObject();
  v0[28] = v19;
  *(v19 + 16) = v27;
  *(v19 + 24) = v14;

  v20 = swift_task_alloc();
  v0[29] = v20;
  *v20 = v0;
  v20[1] = sub_1004ADBC8;
  v21 = v0[14];
  v22 = v0[15];
  v24 = v0[12];
  v23 = v0[13];

  return sub_100285A38(v24, v23, v21, v22);
}

uint64_t sub_1004ADBC8()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_1004ADD84;
  }

  else
  {
    v2 = sub_1004ADCDC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004ADCDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004ADD84()
{

  defaultLogger()();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "IdentityProofingSessionProxy failed to cancel proofing session: %@", v3, 0xCu);
    sub_1004385F4(v4);
  }

  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[19];
  v9 = v0[20];
  v10 = v0[17];
  v11 = v0[18];

  (*(v7 + 8))(v6, v9);
  (*(v11 + 104))(v8, enum case for DIPError.Code.internalError(_:), v10);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1004AE194(uint64_t a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v4[4] = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v4[5] = v9;

  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_1004AE290;

  return sub_1004AD4FC(v5, v7, v8, v10);
}

uint64_t sub_1004AE290()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *v1;

  v6 = *(v3 + 24);
  if (v2)
  {
    v7 = _convertErrorToNSError(_:)();

    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v8 = *(v5 + 8);

  return v8();
}

uint64_t sub_1004AE458()
{
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1004AE4BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = type metadata accessor for IdentityProofingActionNotificationFlow();
  v12 = &off_10080ADD0;
  *&v10 = a2;
  swift_unknownObjectWeakInit();
  if (!a1)
  {
    if (qword_1008824A8)
    {
      a1 = *(qword_1008824A8 + 152);
      v8 = a1;
    }

    else
    {
      a1 = 0;
    }
  }

  swift_unknownObjectWeakAssign();

  sub_10001F358(&v10, a4 + 24);
  *(a4 + 64) = a3;
  return a4;
}

uint64_t sub_1004AE560()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1004AE5B0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100027B9C;

  return sub_1004AE194(v2, v3, v5, v4);
}

uint64_t sub_1004AE674(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Creating IdentityProofingSessionProxy", v9, 2u);
  }

  (*(v4 + 8))(v6, v3);
  swift_unknownObjectWeakAssign();
  result = os_transaction_create();
  if (result)
  {
    *(v2 + 24) = result;
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004AE7EC(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = [v6 processIdentifier];

    _os_log_impl(&_mh_execute_header, v7, v8, "IdentityProofingListener connection received from %d", v9, 8u);
  }

  else
  {

    v7 = v6;
  }

  (*(v3 + 8))(v5, v2);
  type metadata accessor for DIIdentityProofingXPCInterface();
  v10 = static DIIdentityProofingXPCInterface.interface()();
  [v6 setExportedInterface:v10];

  type metadata accessor for IdentityProofingSessionProxy();
  swift_allocObject();
  v11 = v6;
  v12 = sub_1004AE674(v11);

  [v11 setExportedObject:v12];

  v20 = sub_1004ACE98;
  v21 = 0;
  aBlock = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_100503A7C;
  v19 = &unk_100813A50;
  v13 = _Block_copy(&aBlock);
  [v11 setInvalidationHandler:v13];
  _Block_release(v13);
  v20 = sub_1004ACEA4;
  v21 = 0;
  aBlock = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_100503A7C;
  v19 = &unk_100813A78;
  v14 = _Block_copy(&aBlock);
  [v11 setInterruptionHandler:v14];
  _Block_release(v14);
  [v11 resume];
  return 1;
}

uint64_t sub_1004AEAE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

NSObject *sub_1004AEB04()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  machServiceIdentityProvisioningXPC.getter();
  v5 = objc_allocWithZone(NSXPCListener);
  v6 = String._bridgeToObjectiveC()();

  v7 = [v5 initWithMachServiceName:v6];

  *&v0[OBJC_IVAR____TtC8coreidvd28IdentityProvisioningListener_xpcListener] = v7;
  v8 = type metadata accessor for IdentityProvisioningListener();
  v18.receiver = v0;
  v18.super_class = v8;
  v9 = objc_msgSendSuper2(&v18, "init");
  v10 = OBJC_IVAR____TtC8coreidvd28IdentityProvisioningListener_xpcListener;
  v11 = *&v9[OBJC_IVAR____TtC8coreidvd28IdentityProvisioningListener_xpcListener];
  v12 = v9;
  [v11 setDelegate:v12];
  [*&v9[v10] resume];
  defaultLogger()();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Identity Provisioning XPC listener has started", v15, 2u);

    v16 = v12;
  }

  else
  {
    v16 = v13;
    v13 = v12;
  }

  (*(v2 + 8))(v4, v1);
  return v12;
}

id sub_1004AED30()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Identity Provisioning XPC listener is tearing down", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  [*&v1[OBJC_IVAR____TtC8coreidvd28IdentityProvisioningListener_xpcListener] invalidate];
  v9 = type metadata accessor for IdentityProvisioningListener();
  v11.receiver = v1;
  v11.super_class = v9;
  return objc_msgSendSuper2(&v11, "dealloc");
}

uint64_t sub_1004AEEF4(const char *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, a1, v8, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

void sub_1004AF0B4()
{
  v1 = type metadata accessor for DIPError.Code();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v26 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v27 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v24 = v1;
    v10 = v9;
    v23 = swift_slowAlloc();
    v29 = v23;
    *v10 = 136315138;
    Strong = swift_unknownObjectWeakLoadStrong();
    v25 = v0;
    v12 = Strong;
    v28 = Strong;
    sub_100007224(&unk_100845850, &qword_1006E5A50);
    v13 = Optional.debugDescription.getter();
    v22 = v4;
    v14 = v2;
    v16 = v15;

    v17 = sub_100141FE4(v13, v16, &v29);
    v2 = v14;

    *(v10 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "Checking connection %s", v10, 0xCu);
    sub_10000BB78(v23);

    v1 = v24;

    (*(v27 + 8))(v6, v22);
  }

  else
  {

    (*(v27 + 8))(v6, v4);
  }

  v18 = swift_unknownObjectWeakLoadStrong();
  if (v18)
  {
    v19 = v18;
    v20._countAndFlagsBits = 0xD000000000000028;
    v20._object = 0x800000010071A7F0;
    if (!NSXPCConnection.isEntitled(_:)(v20))
    {
      (*(v2 + 104))(v26, enum case for DIPError.Code.missingEntitlement(_:), v1);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }

  else
  {
    (*(v2 + 104))(v26, enum case for DIPError.Code.missingEntitlement(_:), v1);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }
}

uint64_t sub_1004AF6D4(uint64_t a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v4[4] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4[5] = v6;
  if (a2)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v4[6] = v7;
  v4[7] = v8;

  return _swift_task_switch(sub_1004AF78C, 0, 0);
}

uint64_t sub_1004AF78C()
{
  sub_1004AF0B4();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1004AF8E0;
  v2 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v4 = v0[5];

  return sub_1002F245C(v5, v4, v2, v3);
}

uint64_t sub_1004AF8E0(void *a1)
{
  v4 = *v2;
  v4[9] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1004AFA80, 0, 0);
  }

  else
  {
    v5 = v4[3];

    (v5)[2](v5, a1, 0);
    _Block_release(v5);

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_1004AFA80()
{

  v1 = *(v0 + 24);
  v2 = _convertErrorToNSError(_:)();

  (v1)[2](v1, 0, v2);

  _Block_release(v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1004AFB28()
{
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1004AFB94()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1004AFBE4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100027B9C;

  return sub_1004AF6D4(v2, v3, v5, v4);
}

uint64_t sub_1004AFCA8(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Creating IdentityProvisioningSessionProxy", v9, 2u);
  }

  (*(v4 + 8))(v6, v3);
  swift_unknownObjectWeakAssign();
  result = os_transaction_create();
  if (result)
  {
    *(v2 + 24) = result;
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    type metadata accessor for IdentityProvisioningManager();
    memset(v11, 0, sizeof(v11));
    v12 = 0;
    swift_allocObject();
    *(v2 + 32) = sub_1002EA490(v13, v11, 0, 0);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004AFE6C(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = [v6 processIdentifier];

    _os_log_impl(&_mh_execute_header, v7, v8, "IdentityProvisioningListener connection received from %d", v9, 8u);
  }

  else
  {

    v7 = v6;
  }

  (*(v3 + 8))(v5, v2);
  type metadata accessor for DIIdentityProvisioningXPCInterface();
  v10 = static DIIdentityProvisioningXPCInterface.interface()();
  [v6 setExportedInterface:v10];

  type metadata accessor for IdentityProvisioningSessionProxy();
  swift_allocObject();
  v11 = v6;
  v12 = sub_1004AFCA8(v11);

  [v11 setExportedObject:v12];

  v20 = sub_1004AEEDC;
  v21 = 0;
  aBlock = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_100503A7C;
  v19 = &unk_100813B18;
  v13 = _Block_copy(&aBlock);
  [v11 setInvalidationHandler:v13];
  _Block_release(v13);
  v20 = sub_1004AEEE8;
  v21 = 0;
  aBlock = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_100503A7C;
  v19 = &unk_100813B40;
  v14 = _Block_copy(&aBlock);
  [v11 setInterruptionHandler:v14];
  _Block_release(v14);
  [v11 resume];
  return 1;
}

uint64_t sub_1004B0160(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1004B0184(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Setting up IdentityProvisioningStreamListener", v14, 2u);
  }

  (*(v9 + 8))(v11, v8);
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a4;
  aBlock[4] = sub_1004B099C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003E854C;
  aBlock[3] = &unk_100813B90;
  v16 = _Block_copy(aBlock);

  v17 = String.utf8CString.getter();
  xpc_set_event_stream_handler((v17 + 32), a1, v16);

  _Block_release(v16);
}

uint64_t sub_1004B03A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a3;
  v59 = a4;
  v57 = a2;
  v5 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v5 - 8);
  v56 = &v54 - v6;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v55 = &v54 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v54 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v54 - v18;
  __chkstk_darwin(v17);
  v21 = &v54 - v20;
  defaultLogger()();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Received an event for IdentityProvisioningStreamListener", v24, 2u);
  }

  v25 = *(v8 + 8);
  v25(v21, v7);
  v26 = XPC_EVENT_KEY_NAME.getter();
  string = xpc_dictionary_get_string(a1, v26);
  if (!string)
  {
    defaultLogger()();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "provisioning event doesn't exist", v36, 2u);
    }

    v33 = v19;
    return (v25)(v33, v7);
  }

  v28 = string;
  v29 = String.utf8CString.getter();
  LODWORD(v28) = strcmp(v28, (v29 + 32));

  if (v28)
  {
    defaultLogger()();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Invalid event name. Cannot perform Post Provisioning Cleanup", v32, 2u);
    }

    v33 = v11;
    return (v25)(v33, v7);
  }

  v37 = sub_1004B0D80(a1);
  if (v38 >> 60 == 15)
  {
    defaultLogger()();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Unable to retrieve the data from the xpc event. Cannot perform Post Provisioning Cleanup", v41, 2u);
    }

    goto LABEL_19;
  }

  v42 = v37;
  v43 = v38;
  v44 = [objc_opt_self() standardUserDefaults];
  v45._countAndFlagsBits = static DaemonInternalDefaultsKeys.ignoreProvisioningCompletion.getter();
  v46 = NSUserDefaults.internalBool(forKey:)(v45);

  if (!v46)
  {
    v49 = type metadata accessor for TaskPriority();
    v50 = v56;
    (*(*(v49 - 8) + 56))(v56, 1, 1, v49);
    v51 = swift_allocObject();
    v51[2] = 0;
    v51[3] = 0;
    v51[4] = v57;
    v52 = v59;
    v51[5] = v58;
    v51[6] = v52;
    v51[7] = v42;
    v51[8] = v43;

    sub_1003E653C(0, 0, v50, &unk_1006E6160, v51);
  }

  v16 = v55;
  defaultLogger()();
  v39 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v39, v47))
  {
    sub_10000BD94(v42, v43);
LABEL_19:

    goto LABEL_20;
  }

  v48 = swift_slowAlloc();
  *v48 = 0;
  _os_log_impl(&_mh_execute_header, v39, v47, "Internal Setting to ignore provisioning completion has been enabled. Will ignore the incoming provisioning stream", v48, 2u);

  sub_10000BD94(v42, v43);
LABEL_20:
  v33 = v16;
  return (v25)(v33, v7);
}

uint64_t sub_1004B095C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1004B09A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1004B09C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  return _swift_task_switch(sub_1004B09E8, 0, 0);
}

uint64_t sub_1004B09E8()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  type metadata accessor for OSTransaction();
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = *(v0 + 32);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  *(v4 + 40) = v2;
  *(v4 + 48) = v1;
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_1004B0B14;
  v7 = *(v0 + 16);

  return __s13CoreIDVShared13OSTransactionC5namedyq_SS_q_yYaYbxYKXEtYaxYKs5ErrorRzRi__r0_lFZ(v7, 0xD00000000000001ELL, 0x800000010071A8B0, &unk_1006E6170, v4, &type metadata for Never, &type metadata for () + 8, &protocol witness table for Never);
}

uint64_t sub_1004B0B14()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_1004B0C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_1001AFE54;

  return sub_1002E52B4(a5, a6);
}

unint64_t sub_1004B0CD0(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_10034BFA0(a1, &a1[a2]);
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

unint64_t sub_1004B0D80(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &length - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &length - v7;
  type = xpc_get_type(a1);
  if (type != XPC_TYPE_DICTIONARY.getter())
  {
    defaultLogger()();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Event Identity Provisioning Complete is not of type dictionary. Cannot perform Post Provisioning Cleanup", v12, 2u);
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }

  length = 0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = String.utf8CString.getter();

  data = xpc_dictionary_get_data(a1, (v14 + 32), &length);

  if (!data)
  {
    defaultLogger()();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Unable to get the receipt data for the key PKPassLibraryPendingProvisioningFinishedReceiptKey. Cannot perform Post Provisioning Cleanup", v18, 2u);
    }

    (*(v3 + 8))(v8, v2);
    return 0;
  }

  return sub_1004B0CD0(data, length);
}

uint64_t sub_1004B1004()
{
  swift_unknownObjectRelease();

  sub_10000B90C(*(v0 + 56), *(v0 + 64));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1004B1054(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100027B9C;

  return sub_1004B09C0(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1004B1130(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100027B9C;

  return sub_1004B0C24(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1004B1218(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_10000BA08((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    v9 = a2;
    v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return _swift_continuation_throwingResume(v5);
  }
}

char *sub_1004B1300(uint64_t a1)
{
  v2 = v1;
  v47 = a1;
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v44 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v42 = *(v5 - 8);
  v43 = v5;
  __chkstk_darwin(v5);
  v41 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionTimeout] = 0x403E000000000000;
  v13 = OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_rangingSessionID;
  v14 = type metadata accessor for UUID();
  (*(*(v14 - 8) + 56))(&v2[v13], 1, 1, v14);
  defaultLogger()();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "IdentityWatchSessionManagementListener init called", v17, 2u);
  }

  (*(v10 + 8))(v12, v9);
  if (qword_100832C18 != -1)
  {
    swift_once();
  }

  v18 = *(qword_100882220 + 16);
  *&v2[OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_biometricStore] = v18;
  sub_10001F8D4(0, &qword_100845BD0, OS_dispatch_queue_ptr);
  v19 = v18;
  static DispatchQoS.unspecified.getter();
  v52[0] = _swiftEmptyArrayStorage;
  sub_1004CF2E4(&qword_1008465A0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100007224(&unk_1008458B0, &qword_1006BF8A0);
  sub_10031ABF4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v42 + 104))(v41, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v43);
  v20 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v2[OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_rangingQueue] = v20;
  v21 = [objc_allocWithZone(SFAuthenticationManager) initWithQueue:v20];
  *&v2[OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_rangingManager] = v21;
  *&v2[OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_deviceLockStateMonitor] = [objc_allocWithZone(type metadata accessor for DIPLockStateMonitor()) init];
  *&v2[OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService] = [objc_allocWithZone(type metadata accessor for DIPWatch()) init];
  v22 = type metadata accessor for IdentityProofingActionNotificationFlow();
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v24 = v44;
  v25 = v45;
  v26 = v46;
  (*(v45 + 104))(v44, enum case for DispatchQoS.QoSClass.default(_:), v46);
  v27 = static OS_dispatch_queue.global(qos:)();
  (*(v25 + 8))(v24, v26);
  v52[3] = v22;
  v52[4] = &off_10080ADD0;
  v52[0] = v23;
  type metadata accessor for IdentityProofingCleanupProvider();
  v28 = swift_allocObject();
  v29 = sub_10001F370(v52, v22);
  __chkstk_darwin(v29);
  v31 = (&v41 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))(v31);
  v33 = *v31;
  v50 = v22;
  v51 = &off_10080ADD0;
  *&v49 = v33;
  swift_unknownObjectWeakInit();
  if (qword_1008824A8)
  {
    v34 = *(qword_1008824A8 + 152);
  }

  else
  {
    v34 = 0;
  }

  swift_unknownObjectWeakAssign();

  sub_10001F358(&v49, v28 + 24);
  *(v28 + 64) = v27;
  sub_10000BB78(v52);
  *&v2[OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_proofingCleanUpProvider] = v28;
  v35 = v47;
  sub_10026C540(v47, &v2[OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_localizationHelper]);
  v36 = type metadata accessor for IdentityWatchSessionManagementListener(0);
  v48.receiver = v2;
  v48.super_class = v36;
  v37 = objc_msgSendSuper2(&v48, "init");
  v38 = *&v37[OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_rangingManager];
  v39 = v37;
  [v38 setDelegate:v39];
  sub_10026C59C(v35);
  swift_unknownObjectWeakAssign();
  *(*&v39[OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService] + OBJC_IVAR____TtC8coreidvd8DIPWatch_delegate + 8) = &off_100813C60;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();

  return v39;
}

uint64_t sub_1004B1A80()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1004B1B1C;

  return sub_1006738C8();
}

uint64_t sub_1004B1B1C(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_1004B1C1C, 0, 0);
}

uint64_t sub_1004B1C1C()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = [*(v0 + 32) deviceID];

    v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v0 + 8);

  return v5(v1, v4);
}

uint64_t sub_1004B1CE8()
{
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v1[1] = sub_1004B1D84;

  return sub_1006738C8();
}

uint64_t sub_1004B1D84(uint64_t a1)
{
  *(*v1 + 168) = a1;

  return _swift_task_switch(sub_1004B1E84, 0, 0);
}

uint64_t sub_1004B1E84()
{
  v1 = v0[21];
  if (v1)
  {
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1004B1FE0;
    v2 = swift_continuation_init();
    v0[17] = sub_100007224(&unk_10084A490, &qword_1006DC480);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10067FE58;
    v0[13] = &unk_100814468;
    v0[14] = v2;
    [v1 provisionedCredentialCountForType:1 completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v3 = v0[1];

    return v3(0, 1);
  }
}

uint64_t sub_1004B1FE0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1004B2164;
  }

  else
  {
    v2 = sub_1004B20F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004B20F0()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 176) != 0;
  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_1004B2164(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 176) != 0;
  v3 = *(v1 + 8);

  return v3(0, v2);
}

void sub_1004B21F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v36 - v12;
  v14 = sub_10057A388(2, 0, 1);
  if (!v3)
  {
    v15 = v14;
    v40 = a1;
    v41 = a2;
    v42 = a3;
    if (v14)
    {
      v39 = v7;
      v36 = 0;
      v16 = v14 & 0xFFFFFFFFFFFFFF8;
      if (v14 >> 62)
      {
        goto LABEL_32;
      }

      for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v37 = v16;
        v16 = 0;
        v43 = v15 & 0xC000000000000001;
        v38 = (v8 + 8);
        while (1)
        {
          if (v43)
          {
            v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v16 >= *(v37 + 16))
            {
              goto LABEL_31;
            }

            v18 = *(v15 + 8 * v16 + 32);
          }

          v19 = v18;
          v8 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          v20 = [v18 pairingID];
          if (!v20)
          {
            goto LABEL_6;
          }

          v21 = v20;
          v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v24 = v23;

          if (v22 == v41 && v24 == v42)
          {
          }

          else
          {
            v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v26 & 1) == 0)
            {
LABEL_6:

              goto LABEL_7;
            }
          }

          v27 = *(v40 + 16);
          [v27 deleteObject:{v19, v36}];
          v44 = 0;
          if (![v27 save:&v44])
          {
            v35 = v44;

            _convertNSErrorToError(_:)();

            swift_willThrow();
            return;
          }

          v28 = v44;
          defaultLogger()();
          v29 = Logger.logObject.getter();
          v30 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            *v31 = 0;
            _os_log_impl(&_mh_execute_header, v29, v30, "Successfully deleted proofing session for watch", v31, 2u);
          }

          else
          {
          }

          (*v38)(v11, v39);
LABEL_7:
          ++v16;
          if (v8 == i)
          {
            goto LABEL_33;
          }
        }

        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        ;
      }

LABEL_33:
    }

    else
    {
      defaultLogger()();
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "Error occurred in retrieving proofing sessions for watch", v34, 2u);
      }

      (*(v8 + 8))(v13, v7);
    }
  }
}

uint64_t sub_1004B2600(uint64_t a1, uint64_t a2)
{
  v3[42] = a2;
  v3[43] = v2;
  v3[41] = a1;
  v4 = type metadata accessor for Logger();
  v3[44] = v4;
  v3[45] = *(v4 - 8);
  v3[46] = swift_task_alloc();

  return _swift_task_switch(sub_1004B26C4, 0, 0);
}

uint64_t sub_1004B26C4()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v1 + 54);
  sub_100031B5C(&v1[4], (v0 + 2));
  os_unfair_lock_unlock(v1 + 54);
  v2 = v0[43];
  v0[47] = v0[9];

  sub_100031918((v0 + 2));
  v0[48] = *(*(v2 + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService) + OBJC_IVAR____TtC8coreidvd8DIPWatch_currentSession);

  v3 = swift_task_alloc();
  v0[49] = v3;
  *v3 = v0;
  v3[1] = sub_1004B282C;
  v4 = v0[41];
  v5 = v0[42];

  return sub_1004C9820((v0 + 27), v4, v5);
}

uint64_t sub_1004B282C()
{

  return _swift_task_switch(sub_1004B2928, 0, 0);
}

uint64_t sub_1004B2928()
{
  v1 = *(v0 + 384);
  v3 = *(v0 + 328);
  v2 = *(v0 + 336);
  v4 = swift_allocObject();
  *(v0 + 400) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = *(v0 + 232);
  *(v4 + 32) = *(v0 + 216);
  *(v4 + 48) = v5;
  *(v4 + 64) = *(v0 + 248);
  *(v4 + 79) = *(v0 + 263);
  *(v4 + 88) = v1;
  *(v4 + 96) = 0x403E000000000000;

  sub_10000BBC4(v0 + 216, v0 + 272, &qword_100845E10, &qword_1006DCDA8);
  v6 = swift_allocObject();
  *(v0 + 408) = v6;
  *(v6 + 16) = &unk_1006E6450;
  *(v6 + 24) = v4;

  v7 = swift_task_alloc();
  *(v0 + 416) = v7;
  *v7 = v0;
  v7[1] = sub_1004B2AA8;

  return AsyncCoreDataContainer.write<A>(_:)(v7, &unk_1006E6460, v6, &type metadata for () + 8);
}

uint64_t sub_1004B2AA8()
{
  *(*v1 + 424) = v0;

  if (v0)
  {
    v2 = sub_1004B2C5C;
  }

  else
  {

    v2 = sub_1004B2BCC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004B2BCC()
{
  sub_10000BE18(v0 + 216, &qword_100845E10, &qword_1006DCDA8);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004B2C5C()
{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[44];

  sub_10000BE18((v0 + 27), &qword_100845E10, &qword_1006DCDA8);

  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1004B2D6C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 256) = a1;
  *(v7 + 240) = a6;
  *(v7 + 248) = a7;
  *(v7 + 224) = a4;
  *(v7 + 232) = a5;
  *(v7 + 216) = a3;
  v8 = *(a6 + 16);
  *(v7 + 264) = *a6;
  *(v7 + 280) = v8;
  *(v7 + 296) = *(a6 + 32);
  v9 = *(a6 + 48);
  *(v7 + 70) = *(a6 + 50);
  *(v7 + 68) = v9;
  v10 = type metadata accessor for DIPError.Code();
  *(v7 + 312) = v10;
  *(v7 + 320) = *(v10 - 8);
  *(v7 + 328) = swift_task_alloc();
  v11 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  *(v7 + 336) = v11;
  *(v7 + 344) = *(v11 - 8);
  *(v7 + 352) = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  *(v7 + 360) = v12;
  *(v7 + 368) = *(v12 - 8);
  *(v7 + 376) = swift_task_alloc();
  *(v7 + 384) = swift_task_alloc();
  *(v7 + 392) = swift_task_alloc();

  return _swift_task_switch(sub_1004B2F2C, 0, 0);
}

uint64_t sub_1004B2F2C(uint64_t a1)
{
  v38 = v1;
  v2 = *(v1 + 240);
  defaultLogger()();

  sub_10000BBC4(v2, v1 + 16, &qword_100845E10, &qword_1006DCDA8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  sub_10000BE18(v2, &qword_100845E10, &qword_1006DCDA8);
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v1 + 392);
  v8 = *(v1 + 360);
  v7 = *(v1 + 368);
  if (v5)
  {
    v9 = *(v1 + 232);
    v10 = *(v1 + 240);
    v11 = *(v1 + 224);
    v35 = *(v1 + 392);
    v12 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_100141FE4(v11, v9, &v37);
    *(v12 + 12) = 2080;
    if (*(v10 + 40))
    {
      v13 = 0x746E6573657270;
    }

    else
    {
      v13 = 7104878;
    }

    if (*(v10 + 40))
    {
      v14 = 0xE700000000000000;
    }

    else
    {
      v14 = 0xE300000000000000;
    }

    v15 = sub_100141FE4(v13, v14, &v37);

    *(v12 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Trying to validate prearm trust for watch with pairingID: %s, prearmtrust is %s", v12, 0x16u);
    swift_arrayDestroy();

    v16 = *(v7 + 8);
    v16(v35, v8);
  }

  else
  {

    v16 = *(v7 + 8);
    v16(v6, v8);
  }

  *(v1 + 400) = v16;
  v17 = *(v1 + 240);
  if (*(v17 + 40) && (*(v17 + 50) & 1) != 0)
  {
    v18 = *(v1 + 68);
    v19 = *(v1 + 70);
    v20 = *(v1 + 280);
    *(v1 + 72) = *(v1 + 264);
    *(v1 + 88) = v20;
    *(v1 + 104) = *(v1 + 296);
    *(v1 + 122) = v19;
    *(v1 + 120) = v18;
    sub_1004CDE10(v1 + 72, v1 + 128);
    defaultLogger()();

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v1 + 384);
    v25 = *(v1 + 360);
    if (v23)
    {
      v36 = *(v1 + 384);
      v27 = *(v1 + 224);
      v26 = *(v1 + 232);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_100141FE4(v27, v26, &v37);
      _os_log_impl(&_mh_execute_header, v21, v22, "Trying to delete acl for watch with pairingID: %s", v28, 0xCu);
      sub_10000BB78(v29);

      v30 = v36;
    }

    else
    {

      v30 = v24;
    }

    v16(v30, v25);
    v33 = swift_task_alloc();
    *(v1 + 408) = v33;
    *v33 = v1;
    v33[1] = sub_1004B3358;
    v34 = *(v1 + 256);

    return sub_100672D6C(v34);
  }

  else
  {

    v31 = *(v1 + 8);

    return v31();
  }
}

uint64_t sub_1004B3358()
{
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2 = sub_1004B3BA8;
  }

  else
  {
    v2 = sub_1004B346C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004B346C(uint64_t a1)
{
  v27 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[50];
  v6 = v1[47];
  v7 = v1[45];
  if (v4)
  {
    v24 = v1[50];
    v9 = v1[28];
    v8 = v1[29];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100141FE4(v9, v8, &v26);
    _os_log_impl(&_mh_execute_header, v2, v3, "Successfully deleted acl for watch with pairingID: %s", v10, 0xCu);
    sub_10000BB78(v11);

    v24(v6, v7);
  }

  else
  {

    v5(v6, v7);
  }

  v12 = v1[43];
  v25 = v1[44];
  v13 = v1[42];
  v14 = v1[28];
  v15 = v1[29];
  v16 = v1[27];
  v17 = swift_allocObject();
  v1[53] = v17;
  v17[2] = v16;
  v17[3] = v14;
  v17[4] = v15;
  v18 = swift_allocObject();
  v1[54] = v18;
  *(v18 + 16) = sub_1004CEDDC;
  *(v18 + 24) = v17;
  v19 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v20 = *(v12 + 104);

  v20(v25, v19, v13);

  v21 = swift_task_alloc();
  v1[55] = v21;
  *v21 = v1;
  v21[1] = sub_1004B3718;
  v22 = v1[44];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v21, v22, sub_1004CF3BC, v18, &type metadata for () + 8);
}

uint64_t sub_1004B3718()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    (*(v2[43] + 8))(v2[44], v2[42]);

    v3 = sub_1004B3954;
  }

  else
  {
    v5 = v2[43];
    v4 = v2[44];
    v6 = v2[42];

    (*(v5 + 8))(v4, v6);
    v3 = sub_1004B38A4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004B38A4()
{
  sub_10000BE18(*(v0 + 240), &qword_100845E10, &qword_1006DCDA8);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004B3954()
{

  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[39];
  v8 = v0[30];
  _StringGuts.grow(_:)(44);

  swift_getErrorValue();
  v4._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 46;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  (*(v2 + 104))(v1, enum case for DIPError.Code.unableToDeleteACLInWatch(_:), v3);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  sub_10000BE18(v8, &qword_100845E10, &qword_1006DCDA8);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1004B3BA8()
{
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[39];
  v8 = v0[30];
  _StringGuts.grow(_:)(44);

  swift_getErrorValue();
  v4._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 46;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  (*(v2 + 104))(v1, enum case for DIPError.Code.unableToDeleteACLInWatch(_:), v3);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  sub_10000BE18(v8, &qword_100845E10, &qword_1006DCDA8);

  v6 = v0[1];

  return v6();
}

void sub_1004B3DF4(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10057ADE4(a2, a3);
  if (!v3)
  {
    if (v11)
    {
      v12 = v11;
      [*(a1 + 16) deleteObject:v11];
      sub_1005783D4();
    }

    v17[1] = 0;
    defaultLogger()();

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_100141FE4(a2, a3, &v18);
      _os_log_impl(&_mh_execute_header, v13, v14, "Successfully deleted prearm trust with watch with pairingID: %s", v15, 0xCu);
      sub_10000BB78(v16);
    }

    (*(v8 + 8))(v10, v7);
  }
}

unint64_t sub_1004B4000@<X0>(uint64_t a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  v7 = type metadata accessor for ProofingSession();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_10057A388(2, 0, 1);
  if (!v3)
  {
    v12 = result;
    v42 = a2;
    v43 = a1;
    v39 = v10;
    v40 = v7;
    v13 = _swiftEmptyArrayStorage;
    if (!result)
    {
LABEL_40:
      *a3 = v13;
      return result;
    }

    v37 = 0;
    v45 = _swiftEmptyArrayStorage;
    v14 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
      goto LABEL_26;
    }

    v15 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = a3; v15; i = a3)
    {
      v16 = 0;
      v44 = v12 & 0xC000000000000001;
      v41 = v8;
      while (1)
      {
        if (v44)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v16 >= *(v14 + 16))
          {
            goto LABEL_25;
          }

          v17 = *(v12 + 8 * v16 + 32);
        }

        a3 = v17;
        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        v19 = [v17 pairingID];
        if (v19)
        {
          v20 = v19;
          v21 = v12;
          v22 = v15;
          v23 = v14;
          v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v13 = v25;

          if (v24 == v43 && v13 == v42)
          {
          }

          else
          {
            v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v27 & 1) == 0)
            {

LABEL_21:
              v14 = v23;
              v15 = v22;
              v12 = v21;
              v8 = v41;
              goto LABEL_7;
            }
          }

          v13 = &v45;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          goto LABEL_21;
        }

LABEL_7:
        ++v16;
        if (v18 == v15)
        {
          v28 = v45;
          v13 = _swiftEmptyArrayStorage;
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v15 = _CocoaArrayWrapper.endIndex.getter();
    }

    v28 = v13;
LABEL_28:

    v29 = v40;
    if ((v28 & 0x8000000000000000) != 0 || (v28 & 0x4000000000000000) != 0)
    {
      v30 = _CocoaArrayWrapper.endIndex.getter();
      if (v30)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v30 = *(v28 + 16);
      if (v30)
      {
LABEL_31:
        v45 = v13;
        result = sub_100173040(0, v30 & ~(v30 >> 63), 0);
        if (v30 < 0)
        {
          __break(1u);
          return result;
        }

        v31 = 0;
        v13 = v45;
        v32 = v28;
        v43 = v8 + 32;
        v44 = v28 & 0xC000000000000001;
        v33 = v39;
        do
        {
          if (v44)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v34 = *(v32 + 8 * v31 + 32);
          }

          ProofingSession.init(_:)();
          v45 = v13;
          v36 = v13[2];
          v35 = v13[3];
          if (v36 >= v35 >> 1)
          {
            sub_100173040((v35 > 1), v36 + 1, 1);
            v13 = v45;
          }

          ++v31;
          v13[2] = v36 + 1;
          (*(v8 + 32))(v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v36, v33, v29);
          v32 = v28;
        }

        while (v30 != v31);
      }
    }

    a3 = i;
    goto LABEL_40;
  }

  return result;
}

uint64_t sub_1004B4398(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v2[25] = swift_task_alloc();
  v3 = type metadata accessor for DIPError.Code();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[29] = v4;
  v2[30] = *(v4 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v5 = type metadata accessor for ProofingDisplayMessage();
  v2[39] = v5;
  v2[40] = *(v5 - 8);
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  sub_100007224(&unk_100845E90, &qword_1006E6440);
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v6 = type metadata accessor for ProofingSession();
  v2[45] = v6;
  v2[46] = *(v6 - 8);
  v2[47] = swift_task_alloc();

  return _swift_task_switch(sub_1004B4648, 0, 0);
}

uint64_t sub_1004B4648()
{
  v1 = *(v0 + 184);
  v2 = *(v1 + 16);
  *(v0 + 384) = v2;
  if (!v2)
  {
LABEL_21:

    v34 = *(v0 + 8);

    return v34();
  }

  v3 = 0;
  v4 = *(v0 + 368);
  v5 = *(v4 + 80);
  *(v0 + 600) = v5;
  v6 = OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_localizationHelper;
  *(v0 + 392) = OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService;
  *(v0 + 400) = v6;
  v7 = *(v4 + 72);
  *(v0 + 408) = v7;
  v8 = *(v4 + 16);
  *(v0 + 416) = v8;
  while (1)
  {
    *(v0 + 424) = v3;
    v8(*(v0 + 376), v1 + ((v5 + 32) & ~v5) + v7 * v3, *(v0 + 360));
    *(v0 + 432) = ProofingSession.state.getter();
    *(v0 + 440) = v9;
    if (!v9)
    {
      defaultLogger()();
      v14 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      v25 = os_log_type_enabled(v14, v24);
      v18 = *(v0 + 240);
      v17 = *(v0 + 248);
      v19 = *(v0 + 232);
      if (!v25)
      {
        goto LABEL_19;
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = v24;
      v22 = v14;
      v23 = "IdentityWatchSessionManagementListener failed to update proofing sessions on Watch: missing state";
      goto LABEL_18;
    }

    *(v0 + 448) = ProofingSession.country.getter();
    *(v0 + 456) = v10;
    if (!v10)
    {

      defaultLogger()();
      v14 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      v27 = os_log_type_enabled(v14, v26);
      v17 = *(v0 + 256);
      v19 = *(v0 + 232);
      v18 = *(v0 + 240);
      if (!v27)
      {
        goto LABEL_19;
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = v26;
      v22 = v14;
      v23 = "IdentityWatchSessionManagementListener failed to update proofing sessions on Watch: missing country";
      goto LABEL_18;
    }

    ProofingSession.documentType.getter();
    if (!v11)
    {

      defaultLogger()();
      v14 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      v29 = os_log_type_enabled(v14, v28);
      v17 = *(v0 + 264);
      v19 = *(v0 + 232);
      v18 = *(v0 + 240);
      if (!v29)
      {
        goto LABEL_19;
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = v28;
      v22 = v14;
      v23 = "IdentityWatchSessionManagementListener failed to update proofing sessions on Watch: missing documentType";
      goto LABEL_18;
    }

    *(v0 + 464) = IdentityDocumentType.init(documentTypeString:)();
    *(v0 + 472) = ProofingSession.credentialIdentifier.getter();
    *(v0 + 480) = v12;
    if (v12)
    {
      break;
    }

    defaultLogger()();
    v14 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    v31 = os_log_type_enabled(v14, v30);
    v17 = *(v0 + 272);
    v19 = *(v0 + 232);
    v18 = *(v0 + 240);
    if (!v31)
    {
      goto LABEL_19;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = v30;
    v22 = v14;
    v23 = "IdentityWatchSessionManagementListener failed to update proofing sessions on Watch: missing credentialIdentifier";
LABEL_18:
    _os_log_impl(&_mh_execute_header, v22, v21, v23, v20, 2u);

LABEL_19:

    (*(v18 + 8))(v17, v19);
    v32 = *(v0 + 384);
    v33 = *(v0 + 424) + 1;
    (*(*(v0 + 368) + 8))(*(v0 + 376), *(v0 + 360));
    if (v33 == v32)
    {
      goto LABEL_21;
    }

    v8 = *(v0 + 416);
    v3 = *(v0 + 424) + 1;
    v7 = *(v0 + 408);
    LOBYTE(v5) = *(v0 + 600);
    v1 = *(v0 + 184);
  }

  ProofingSession.proofingActionStatus.getter();
  *(v0 + 488) = IdentityProofingActionStatus.init(rawValue:)();
  if (v13)
  {

    defaultLogger()();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 280);
    v19 = *(v0 + 232);
    v18 = *(v0 + 240);
    if (!v16)
    {
      goto LABEL_19;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = v15;
    v22 = v14;
    v23 = "IdentityWatchSessionManagementListener failed to update proofing sessions on Watch: invalid action status";
    goto LABEL_18;
  }

  v37 = *(v0 + 344);
  v36 = *(v0 + 352);
  v38 = *(v0 + 312);
  v39 = *(v0 + 320);
  v40 = ProofingSession.productIdentifier.getter();
  *(v0 + 496) = v41;
  *(v0 + 504) = v40;
  ProofingSession.proofingErrorMessage.getter();
  sub_10000BBC4(v36, v37, &unk_100845E90, &qword_1006E6440);
  if ((*(v39 + 48))(v37, 1, v38) == 1)
  {
    v42 = 0;
  }

  else
  {
    v43 = *(v0 + 336);
    v45 = *(v0 + 320);
    v44 = *(v0 + 328);
    v46 = *(v0 + 312);
    (*(v45 + 32))(v43, *(v0 + 344), v46);
    type metadata accessor for IdentityProofingPrecursorPassMessage();
    (*(v45 + 16))(v44, v43, v46);
    v42 = sub_10058CE3C(v44);
    (*(v45 + 8))(v43, v46);
  }

  *(v0 + 512) = v42;
  sub_10000BE18(*(v0 + 352), &unk_100845E90, &qword_1006E6440);
  v47 = swift_task_alloc();
  *(v0 + 520) = v47;
  *v47 = v0;
  v47[1] = sub_1004B4C60;

  return sub_1006738C8();
}

uint64_t sub_1004B4C60(uint64_t a1)
{
  *(*v1 + 528) = a1;

  return _swift_task_switch(sub_1004B4D60, 0, 0);
}

uint64_t sub_1004B4D60(uint64_t a1)
{
  v55 = v1;
  if (v1[66])
  {
    defaultLogger()();

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v5 = v1[56];
      v4 = v1[57];
      v7 = v1[54];
      v6 = v1[55];
      v8 = v1[30];
      v50 = v1[29];
      v52 = v1[38];
      v9 = swift_slowAlloc();
      v54[0] = swift_slowAlloc();
      *v9 = 136315394;
      *(v9 + 4) = sub_100141FE4(v7, v6, v54);
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_100141FE4(v5, v4, v54);
      _os_log_impl(&_mh_execute_header, v2, v3, "IdentityWatchSessionManagementListener saving initial watch proofing session for state: '%s', country: '%s'", v9, 0x16u);
      swift_arrayDestroy();

      v10 = *(v8 + 8);
      v10(v52, v50);
    }

    else
    {
      v20 = v1[38];
      v21 = v1[29];
      v22 = v1[30];

      v10 = *(v22 + 8);
      v10(v20, v21);
    }

    v1[67] = v10;
    v23 = v1[58];
    if (v23 > 3)
    {
      v24 = 0;
    }

    else
    {
      v24 = qword_1006E64A0[v23];
    }

    v1[68] = v24;
    v25 = v1[64];
    if (v25)
    {
      v26 = v1[57];
      v27 = v1[55];
      sub_10026C540(v1[24] + v1[50], (v1 + 18));
      v28 = v25;
      v29 = swift_task_alloc();
      v1[69] = v29;
      *v29 = v1;
      v29[1] = sub_1004B5614;
      v30 = v1[56];
      v31 = v1[54];

      return sub_10059DF4C(v28, v31, v27, v30, v26);
    }

    else
    {
      v1[72] = 0;
      v33 = v1[61];
      v34 = v1[25];
      String.lowercased()();
      String.lowercased()();
      v53 = sub_10058D658(v33);
      v35 = type metadata accessor for URL();
      v36 = *(v35 - 8);
      (*(v36 + 56))(v34, 1, 1, v35);
      v47 = v1[25];
      v51 = String._bridgeToObjectiveC()();

      v49 = String._bridgeToObjectiveC()();

      v37 = String._bridgeToObjectiveC()();
      v38 = String._bridgeToObjectiveC()();
      v39 = String._bridgeToObjectiveC()();
      v41 = 0;
      if ((*(v36 + 48))(v47, 1, v35) != 1)
      {
        v42 = v1[25];
        URL._bridgeToObjectiveC()(v40);
        v41 = v43;
        (*(v36 + 8))(v42, v35);
      }

      v48 = v1[66];
      v44 = [objc_allocWithZone(PKIdentityProofingConfiguration) initWithState:v51 country:v49 target:2 credentialIdentifier:v37 status:v53 productIdentifier:v38 accountKeyIdentifier:v39 idType:v1[68] learnMoreURL:v41 proofingErrorMessage:0];
      v1[73] = v44;

      v1[2] = v1;
      v1[3] = sub_1004B5D1C;
      v45 = swift_continuation_init();
      v1[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
      v1[14] = v45;
      v1[10] = _NSConcreteStackBlock;
      v1[11] = 1107296256;
      v1[12] = sub_100429100;
      v1[13] = &unk_1008143A0;
      [v48 updateProofingConfiguration:v44 completion:v1 + 10];

      return _swift_continuation_await(v1 + 2);
    }
  }

  else
  {
    v11 = v1[64];
    (*(v1[27] + 104))(v1[28], enum case for DIPError.Code.unableToEstablishSessionWithWatch(_:), v1[26]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v13 = v1[46];
    v12 = v1[47];
    v14 = v1[45];

    (*(v13 + 8))(v12, v14);
    defaultLogger()();
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "IdentityWatchSessionManagementListener failed to update proofing sessions on Watch: %@", v17, 0xCu);
      sub_10000BE18(v18, &unk_100833B50, &unk_1006D8FB0);
    }

    else
    {
    }

    (*(v1[30] + 8))(v1[36], v1[29]);

    v46 = v1[1];

    return v46();
  }
}

uint64_t sub_1004B5614(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 560) = v1;

  if (v1)
  {
    sub_10026C59C(v4 + 144);
    v5 = sub_1004B5A80;
  }

  else
  {
    *(v4 + 568) = a1;
    sub_10026C59C(v4 + 144);
    v5 = sub_1004B574C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1004B574C()
{
  v1 = *(v0 + 568);

  *(v0 + 576) = v1;
  v2 = *(v0 + 488);
  v3 = *(v0 + 200);
  String.lowercased()();
  String.lowercased()();
  v22 = sub_10058D658(v2);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v3, 1, 1, v4);
  if (v1)
  {
    v20 = sub_10058D9B4();
  }

  else
  {
    v20 = 0;
  }

  v6 = *(v0 + 200);
  v21 = String._bridgeToObjectiveC()();

  v19 = String._bridgeToObjectiveC()();

  v7 = String._bridgeToObjectiveC()();
  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  v10 = (*(v5 + 48))(v6, 1, v4);
  v12 = 0;
  if (v10 != 1)
  {
    v13 = *(v0 + 200);
    URL._bridgeToObjectiveC()(v11);
    v12 = v14;
    (*(v5 + 8))(v13, v4);
  }

  v18 = *(v0 + 528);
  v15 = [objc_allocWithZone(PKIdentityProofingConfiguration) initWithState:v21 country:v19 target:2 credentialIdentifier:v7 status:v22 productIdentifier:v8 accountKeyIdentifier:v9 idType:*(v0 + 544) learnMoreURL:v12 proofingErrorMessage:v20];
  *(v0 + 584) = v15;

  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1004B5D1C;
  v16 = swift_continuation_init();
  *(v0 + 136) = sub_100007224(&unk_100843590, &qword_1006D8B10);
  *(v0 + 112) = v16;
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100429100;
  *(v0 + 104) = &unk_1008143A0;
  [v18 updateProofingConfiguration:v15 completion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_1004B5A80()
{
  v1 = v0[66];
  v2 = v0[64];

  v4 = v0[46];
  v3 = v0[47];
  v5 = v0[45];

  (*(v4 + 8))(v3, v5);
  defaultLogger()();
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "IdentityWatchSessionManagementListener failed to update proofing sessions on Watch: %@", v8, 0xCu);
    sub_10000BE18(v9, &unk_100833B50, &unk_1006D8FB0);
  }

  else
  {
  }

  (*(v0[30] + 8))(v0[36], v0[29]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1004B5D1C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 592) = v1;
  if (v1)
  {
    v2 = sub_1004B6608;
  }

  else
  {
    v2 = sub_1004B5E2C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004B5E2C()
{
  v59 = v0;

  defaultLogger()();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 584);
  v5 = *(v0 + 576);
  v6 = *(v0 + 528);
  v57 = *(v0 + 536);
  v7 = *(v0 + 440);
  if (v3)
  {
    v8 = *(v0 + 432);
    v56 = *(v0 + 296);
    v55 = *(v0 + 232);
    v9 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_100141FE4(v8, v7, &v58);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_100141FE4(v8, v7, &v58);
    _os_log_impl(&_mh_execute_header, v1, v2, "IdentityWatchSessionManagementListener saved watch proofing session for state: '%s', country: '%s'", v9, 0x16u);
    swift_arrayDestroy();

    v57(v56, v55);
  }

  else
  {
    v10 = *(v0 + 296);
    v11 = *(v0 + 232);

    v57(v10, v11);
  }

  v12 = *(v0 + 384);
  v13 = *(v0 + 424) + 1;
  (*(*(v0 + 368) + 8))(*(v0 + 376), *(v0 + 360));
  if (v13 == v12)
  {
LABEL_5:

    v14 = *(v0 + 8);

    return v14();
  }

  while (1)
  {
    v18 = *(v0 + 416);
    v19 = *(v0 + 424) + 1;
    *(v0 + 424) = v19;
    v18(*(v0 + 376), *(v0 + 184) + ((*(v0 + 600) + 32) & ~*(v0 + 600)) + *(v0 + 408) * v19, *(v0 + 360));
    *(v0 + 432) = ProofingSession.state.getter();
    *(v0 + 440) = v20;
    if (!v20)
    {
      defaultLogger()();
      v25 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      v36 = os_log_type_enabled(v25, v35);
      v29 = *(v0 + 240);
      v28 = *(v0 + 248);
      v30 = *(v0 + 232);
      if (!v36)
      {
        goto LABEL_10;
      }

      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = v35;
      v33 = v25;
      v34 = "IdentityWatchSessionManagementListener failed to update proofing sessions on Watch: missing state";
      goto LABEL_9;
    }

    *(v0 + 448) = ProofingSession.country.getter();
    *(v0 + 456) = v21;
    if (!v21)
    {

      defaultLogger()();
      v25 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();
      v38 = os_log_type_enabled(v25, v37);
      v28 = *(v0 + 256);
      v30 = *(v0 + 232);
      v29 = *(v0 + 240);
      if (!v38)
      {
        goto LABEL_10;
      }

      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = v37;
      v33 = v25;
      v34 = "IdentityWatchSessionManagementListener failed to update proofing sessions on Watch: missing country";
      goto LABEL_9;
    }

    ProofingSession.documentType.getter();
    if (!v22)
    {

      defaultLogger()();
      v25 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      v40 = os_log_type_enabled(v25, v39);
      v28 = *(v0 + 264);
      v30 = *(v0 + 232);
      v29 = *(v0 + 240);
      if (!v40)
      {
        goto LABEL_10;
      }

      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = v39;
      v33 = v25;
      v34 = "IdentityWatchSessionManagementListener failed to update proofing sessions on Watch: missing documentType";
      goto LABEL_9;
    }

    *(v0 + 464) = IdentityDocumentType.init(documentTypeString:)();
    *(v0 + 472) = ProofingSession.credentialIdentifier.getter();
    *(v0 + 480) = v23;
    if (!v23)
    {

      defaultLogger()();
      v25 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      v42 = os_log_type_enabled(v25, v41);
      v28 = *(v0 + 272);
      v30 = *(v0 + 232);
      v29 = *(v0 + 240);
      if (!v42)
      {
        goto LABEL_10;
      }

      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = v41;
      v33 = v25;
      v34 = "IdentityWatchSessionManagementListener failed to update proofing sessions on Watch: missing credentialIdentifier";
      goto LABEL_9;
    }

    ProofingSession.proofingActionStatus.getter();
    *(v0 + 488) = IdentityProofingActionStatus.init(rawValue:)();
    if ((v24 & 1) == 0)
    {
      break;
    }

    defaultLogger()();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 280);
    v30 = *(v0 + 232);
    v29 = *(v0 + 240);
    if (!v27)
    {
      goto LABEL_10;
    }

    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = v26;
    v33 = v25;
    v34 = "IdentityWatchSessionManagementListener failed to update proofing sessions on Watch: invalid action status";
LABEL_9:
    _os_log_impl(&_mh_execute_header, v33, v32, v34, v31, 2u);

LABEL_10:

    (*(v29 + 8))(v28, v30);
    v16 = *(v0 + 384);
    v17 = *(v0 + 424) + 1;
    (*(*(v0 + 368) + 8))(*(v0 + 376), *(v0 + 360));
    if (v17 == v16)
    {
      goto LABEL_5;
    }
  }

  v44 = *(v0 + 344);
  v43 = *(v0 + 352);
  v45 = *(v0 + 312);
  v46 = *(v0 + 320);
  v47 = ProofingSession.productIdentifier.getter();
  *(v0 + 496) = v48;
  *(v0 + 504) = v47;
  ProofingSession.proofingErrorMessage.getter();
  sub_10000BBC4(v43, v44, &unk_100845E90, &qword_1006E6440);
  if ((*(v46 + 48))(v44, 1, v45) == 1)
  {
    v49 = 0;
  }

  else
  {
    v50 = *(v0 + 336);
    v52 = *(v0 + 320);
    v51 = *(v0 + 328);
    v53 = *(v0 + 312);
    (*(v52 + 32))(v50, *(v0 + 344), v53);
    type metadata accessor for IdentityProofingPrecursorPassMessage();
    (*(v52 + 16))(v51, v50, v53);
    v49 = sub_10058CE3C(v51);
    (*(v52 + 8))(v50, v53);
  }

  *(v0 + 512) = v49;
  sub_10000BE18(*(v0 + 352), &unk_100845E90, &qword_1006E6440);
  v54 = swift_task_alloc();
  *(v0 + 520) = v54;
  *v54 = v0;
  v54[1] = sub_1004B4C60;

  return sub_1006738C8();
}

uint64_t sub_1004B6608(uint64_t a1)
{
  v2 = v1[73];
  v3 = v1[72];
  v4 = v1[66];
  v5 = v1[64];
  swift_willThrow();

  v7 = v1[46];
  v6 = v1[47];
  v8 = v1[45];

  (*(v7 + 8))(v6, v8);
  defaultLogger()();
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v9, v10, "IdentityWatchSessionManagementListener failed to update proofing sessions on Watch: %@", v11, 0xCu);
    sub_10000BE18(v12, &unk_100833B50, &unk_1006D8FB0);
  }

  else
  {
  }

  (*(v1[30] + 8))(v1[36], v1[29]);

  v14 = v1[1];

  return v14();
}

uint64_t sub_1004B68C0(uint64_t a1)
{
  v2[25] = a1;
  v2[26] = v1;
  v3 = type metadata accessor for Logger();
  v2[27] = v3;
  v2[28] = *(v3 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v4 = type metadata accessor for ProofingSession();
  v2[31] = v4;
  v2[32] = *(v4 - 8);
  v2[33] = swift_task_alloc();

  return _swift_task_switch(sub_1004B69E8, 0, 0);
}

uint64_t sub_1004B69E8()
{
  v46 = v0;
  v1 = *(v0 + 208);
  v2 = type metadata accessor for IdentityWatchSessionManagementListener(0);
  *(v0 + 16) = v1;
  *(v0 + 40) = v2;
  *(v0 + 48) = &off_10080C438;
  v3 = objc_allocWithZone(PKPaymentService);
  v4 = v1;
  v5 = [v3 init];
  v6 = sub_10001F8D4(0, &unk_1008458A0, PKPaymentService_ptr);
  *(v0 + 56) = v5;
  *(v0 + 80) = v6;
  *(v0 + 88) = &off_10080C410;
  type metadata accessor for IdentityProofingConfigProvider();
  v7 = swift_allocObject();
  type metadata accessor for IdentityProofingTextReplacementProvider();
  swift_allocObject();
  v8 = IdentityProofingTextReplacementProvider.init()();
  type metadata accessor for IdentityProofingDeviceMigrationManagerFactory();
  v9 = swift_allocObject();
  type metadata accessor for IdentityProofingWorkflowProvider();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  type metadata accessor for IdentityProofingUserNotificationProvider(0);
  v11 = swift_allocObject();
  *(v0 + 272) = v11;
  *(v11 + 56) = 0u;
  *(v11 + 72) = 0u;
  *(v11 + 88) = 0;
  v12 = OBJC_IVAR____TtC8coreidvd40IdentityProofingUserNotificationProvider_staticWorkflow;
  v13 = type metadata accessor for IdentityProofingStaticWorkflow(0);
  (*(*(v13 - 8) + 56))(v11 + v12, 1, 1, v13);
  sub_100020260(v0 + 56, v11 + 16);
  sub_10000BBC4(v0 + 16, v0 + 136, &unk_100845E80, &qword_1006DAD90);
  if (!*(v0 + 160))
  {
    if (qword_1008824A8 && (v14 = *(qword_1008824A8 + 152)) != 0)
    {
      *(v0 + 120) = v2;
      *(v0 + 128) = &off_10080C438;
      *(v0 + 96) = v14;
      v15 = v14;
      sub_10000BE18(v0 + 16, &unk_100845E80, &qword_1006DAD90);
      sub_10000BB78((v0 + 56));
      if (!*(v0 + 160))
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_10000BE18(v0 + 16, &unk_100845E80, &qword_1006DAD90);
      sub_10000BB78((v0 + 56));
      *(v0 + 128) = 0;
      *(v0 + 112) = 0u;
      *(v0 + 96) = 0u;
      if (!*(v0 + 160))
      {
        goto LABEL_9;
      }
    }

    sub_10000BE18(v0 + 136, &unk_100845E80, &qword_1006DAD90);
    goto LABEL_9;
  }

  sub_10000BE18(v0 + 16, &unk_100845E80, &qword_1006DAD90);
  sub_10000BB78((v0 + 56));
  sub_10001F358((v0 + 136), v0 + 96);
LABEL_9:
  v16 = *(v0 + 200);
  swift_beginAccess();
  sub_1000B2764(v0 + 96, v11 + 56, &unk_100845E80, &qword_1006DAD90);
  swift_endAccess();
  *(v11 + 96) = v7;
  *(v11 + 104) = v8;
  *(v11 + 112) = v10;
  v17 = *(v16 + 16);
  *(v0 + 280) = v17;
  if (!v17)
  {
LABEL_18:

    v34 = *(v0 + 8);

    return v34();
  }

  v18 = 0;
  v19 = *(v0 + 256);
  *(v0 + 328) = *(v19 + 80);
  *(v0 + 288) = *(v19 + 72);
  *(v0 + 296) = *(v19 + 16);
  while (1)
  {
    *(v0 + 304) = v18;
    (*(v0 + 296))(*(v0 + 264), *(v0 + 200) + ((*(v0 + 328) + 32) & ~*(v0 + 328)) + *(v0 + 288) * v18, *(v0 + 248));
    v20 = ProofingSession.proofingSessionID.getter();
    *(v0 + 312) = v21;
    if (!v21)
    {
      defaultLogger()();
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      v26 = os_log_type_enabled(v24, v25);
      v28 = *(v0 + 256);
      v27 = *(v0 + 264);
      v29 = *(v0 + 248);
      v30 = *(v0 + 224);
      v31 = *(v0 + 232);
      v32 = *(v0 + 216);
      if (v26)
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "IdentityWatchSessionManagementListener missing proofing session ID, skipping to check to notify", v33, 2u);
      }

      (*(v30 + 8))(v31, v32);
      (*(v28 + 8))(v27, v29);
      goto LABEL_12;
    }

    v22 = v21;
    v23 = v20;
    if (ProofingSession.shouldShowNotificationOnWatch.getter())
    {
      break;
    }

    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));

LABEL_12:
    v18 = *(v0 + 304) + 1;
    if (v18 == *(v0 + 280))
    {
      goto LABEL_18;
    }
  }

  defaultLogger()();

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();

  v38 = os_log_type_enabled(v36, v37);
  v39 = *(v0 + 240);
  v40 = *(v0 + 216);
  v41 = *(v0 + 224);
  if (v38)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v45 = v43;
    *v42 = 136315138;
    *(v42 + 4) = sub_100141FE4(v23, v22, &v45);
    _os_log_impl(&_mh_execute_header, v36, v37, "IdentityWatchSessionManagementListener Found pending Watch notification for %s. Will send the notification to the Watch", v42, 0xCu);
    sub_10000BB78(v43);
  }

  (*(v41 + 8))(v39, v40);
  v44 = swift_task_alloc();
  *(v0 + 320) = v44;
  *v44 = v0;
  v44[1] = sub_1004B7034;

  return sub_1002CD7D4(0, 0, 0, 0, v23, v22, 0);
}

uint64_t sub_1004B7034()
{

  return _swift_task_switch(sub_1004B714C, 0, 0);
}

uint64_t sub_1004B714C()
{
  v28 = v0;
  (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
  while (1)
  {
    v1 = *(v0 + 304) + 1;
    if (v1 == *(v0 + 280))
    {
      break;
    }

    *(v0 + 304) = v1;
    (*(v0 + 296))(*(v0 + 264), *(v0 + 200) + ((*(v0 + 328) + 32) & ~*(v0 + 328)) + *(v0 + 288) * v1, *(v0 + 248));
    v2 = ProofingSession.proofingSessionID.getter();
    *(v0 + 312) = v3;
    if (v3)
    {
      v4 = v3;
      v5 = v2;
      if (ProofingSession.shouldShowNotificationOnWatch.getter())
      {
        defaultLogger()();

        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.debug.getter();

        v20 = os_log_type_enabled(v18, v19);
        v21 = *(v0 + 240);
        v22 = *(v0 + 216);
        v23 = *(v0 + 224);
        if (v20)
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v27 = v25;
          *v24 = 136315138;
          *(v24 + 4) = sub_100141FE4(v5, v4, &v27);
          _os_log_impl(&_mh_execute_header, v18, v19, "IdentityWatchSessionManagementListener Found pending Watch notification for %s. Will send the notification to the Watch", v24, 0xCu);
          sub_10000BB78(v25);
        }

        (*(v23 + 8))(v21, v22);
        v26 = swift_task_alloc();
        *(v0 + 320) = v26;
        *v26 = v0;
        v26[1] = sub_1004B7034;

        return sub_1002CD7D4(0, 0, 0, 0, v5, v4, 0);
      }

      (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
    }

    else
    {
      defaultLogger()();
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();
      v8 = os_log_type_enabled(v6, v7);
      v10 = *(v0 + 256);
      v9 = *(v0 + 264);
      v11 = *(v0 + 248);
      v12 = *(v0 + 224);
      v13 = *(v0 + 232);
      v14 = *(v0 + 216);
      if (v8)
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "IdentityWatchSessionManagementListener missing proofing session ID, skipping to check to notify", v15, 2u);
      }

      (*(v12 + 8))(v13, v14);
      (*(v10 + 8))(v9, v11);
    }
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1004B74D8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1004B7598, 0, 0);
}

uint64_t sub_1004B7598()
{
  v0[8] = *(v0[4] + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService);
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_1004B7638;

  return sub_1006738C8();
}

uint64_t sub_1004B7638(uint64_t a1)
{
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_1004B7738, 0, 0);
}

uint64_t sub_1004B7738()
{
  v1 = v0[10];
  if (v1)
  {
    v2 = *(v0[8] + OBJC_IVAR____TtC8coreidvd8DIPWatch_service);
    v0[11] = v2;
    if (v2)
    {
      v3 = v0[3];
      v4 = swift_allocObject();
      v0[12] = v4;
      v4[2] = v2;
      v4[3] = v3;
      v4[4] = v1;
      v5 = v2;

      v6 = v1;
      v7 = swift_task_alloc();
      v0[13] = v7;
      sub_100007224(&qword_100834EA0, &qword_1006C06B0);
      *v7 = v0;
      v7[1] = sub_1004B7AC4;
      v8.n128_u64[0] = 30.0;

      return withTaskTimeoutHandler<A>(timeout:operation:)(v8);
    }

    (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.failedToRegisterForWatchEvents(_:), v0[5]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.unableToEstablishSessionWithWatch(_:), v0[5]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1004B7AC4()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1004B7C5C;
  }

  else
  {

    v2 = sub_1004B7BE0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004B7BE0()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 16);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1004B7C5C()
{
  v1 = v0[11];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1004B7CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[19] = a1;
  v4[20] = a2;
  return _swift_task_switch(sub_1004B7CF8, 0, 0);
}

uint64_t sub_1004B7CF8()
{
  v1 = v0[22];
  v2 = v0[20];
  isa = Array._bridgeToObjectiveC()().super.isa;
  v4 = NPKIDVRemoteDeviceServiceEventsFromStringsArray();

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1004B7E4C;
  v5 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100845E70, &qword_1006E6428);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10067FE58;
  v0[13] = &unk_100814378;
  v0[14] = v5;
  [v2 registerForEvents:v4 withSession:v1 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1004B7E4C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_1004B7FEC;
  }

  else
  {
    v2 = sub_1004B7F5C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004B7F5C()
{
  v1 = *(v0 + 152);
  v2 = stringsArrayFromNPKIDVRemoteDeviceServiceEvents();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1004B7FEC(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1004B8058(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_1004B8174, 0, 0);
}

uint64_t sub_1004B8174()
{
  v0[11] = *(v0[4] + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService);
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_1004B8214;

  return sub_1006738C8();
}

uint64_t sub_1004B8214(uint64_t a1)
{
  *(*v1 + 104) = a1;

  return _swift_task_switch(sub_1004B8314, 0, 0);
}

uint64_t sub_1004B8314()
{
  v1 = v0[13];
  if (v1)
  {
    v2 = *(v0[11] + OBJC_IVAR____TtC8coreidvd8DIPWatch_service);
    v0[14] = v2;
    if (v2)
    {
      v3 = v2;
      defaultLogger()();
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, v5, "IdentityWatchSessionManagementListener unregisterFromEvents called", v6, 2u);
      }

      v8 = v0[9];
      v7 = v0[10];
      v9 = v0[8];
      v10 = v0[3];

      (*(v8 + 8))(v7, v9);
      v11 = swift_allocObject();
      v0[15] = v11;
      v11[2] = v3;
      v11[3] = v10;
      v11[4] = v1;
      v12 = v3;

      v13 = v1;
      v14 = swift_task_alloc();
      v0[16] = v14;
      sub_100007224(&qword_100834EA0, &qword_1006C06B0);
      *v14 = v0;
      v14[1] = sub_1004B8748;
      v15.n128_u64[0] = 30.0;

      return withTaskTimeoutHandler<A>(timeout:operation:)(v15);
    }

    (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.failedToUnregisterForWatchEvents(_:), v0[5]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.unableToEstablishSessionWithWatch(_:), v0[5]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1004B8748()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1004B88F4;
  }

  else
  {

    v2 = sub_1004B8864;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004B8864()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 16);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1004B88F4()
{
  v1 = v0[14];
  v2 = v0[13];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1004B8978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[19] = a1;
  v4[20] = a2;
  return _swift_task_switch(sub_1004B899C, 0, 0);
}

uint64_t sub_1004B899C()
{
  v1 = v0[22];
  v2 = v0[20];
  isa = Array._bridgeToObjectiveC()().super.isa;
  v4 = NPKIDVRemoteDeviceServiceEventsFromStringsArray();

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1004B8AF0;
  v5 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100845E70, &qword_1006E6428);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10067FE58;
  v0[13] = &unk_100814328;
  v0[14] = v5;
  [v2 unregisterFromEvents:v4 withSession:v1 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1004B8AF0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_1004CF418;
  }

  else
  {
    v2 = sub_1004CF3B8;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_1004B8C00(uint64_t a1, void *a2, uint64_t a3)
{
  v40 = a3;
  v5 = type metadata accessor for DIPError.Code();
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin(v5);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v37 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v43 = &v34 - v12;
  __chkstk_darwin(v11);
  v14 = &v34 - v13;
  defaultLogger()();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v39 = v8;
    v18 = v7;
    v19 = v17;
    v20 = swift_slowAlloc();
    v42[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_100141FE4(a1, a2, v42);
    _os_log_impl(&_mh_execute_header, v15, v16, "Trying to retrieve prearm trust key and certificate for watch with pairingID: %s", v19, 0xCu);
    sub_10000BB78(v20);

    v7 = v18;
    v8 = v39;
  }

  v21 = *(v8 + 8);
  v21(v14, v7);
  v22 = v41;
  v23 = sub_10057DC18(a1, a2);
  v24 = v43;
  if (!v22)
  {
    v41 = 0;
    if (v23)
    {

      defaultLogger()();

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v39 = v8;
        v28 = v27;
        v29 = swift_slowAlloc();
        v42[0] = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_100141FE4(a1, a2, v42);
        _os_log_impl(&_mh_execute_header, v25, v26, "Successfully retrieved prearm trust key and certificate for watch with pairingID: %s", v28, 0xCu);
        sub_10000BB78(v29);

        v30 = v43;
      }

      else
      {

        v30 = v24;
      }

      v21(v30, v7);
      sub_100484DB8(a1, a2);
    }

    else
    {
      v42[0] = 0;
      v42[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(115);
      v31._countAndFlagsBits = 0xD000000000000071;
      v31._object = 0x800000010071AA50;
      String.append(_:)(v31);
      v32._countAndFlagsBits = a1;
      v32._object = a2;
      String.append(_:)(v32);
      (*(v35 + 104))(v38, enum case for DIPError.Code.watchPrearmTrustDoesNotExist(_:), v36);
      v43 = v7;
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v33 = v37;
      defaultLogger()();
      DIPRecordError(_:message:log:)();
      v21(v33, v43);
    }
  }
}

uint64_t sub_1004B9158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v53 = a4;
  v54 = a5;
  v52 = a3;
  v50 = a2;
  v6 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v6 - 8);
  v51 = &v49 - v7;
  v8 = type metadata accessor for Logger();
  v56 = *(v8 - 8);
  v57 = v8;
  v9 = __chkstk_darwin(v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v49 - v13;
  __chkstk_darwin(v12);
  v55 = &v49 - v15;
  v16 = sub_100007224(&unk_100849F90, &qword_1006DEAA0);
  __chkstk_darwin(v16 - 8);
  v18 = &v49 - v17;
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v49 - v24;
  sub_10000BBC4(a1, v18, &unk_100849F90, &qword_1006DEAA0);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_10000BE18(v18, &unk_100849F90, &qword_1006DEAA0);
    v27 = v56;
    v26 = v57;
    if (v50)
    {
      swift_errorRetain();
      defaultLogger()();
      DIPRecordError(_:message:log:)();

      (*(v27 + 8))(v14, v26);
    }

    defaultLogger()();
    v28 = v53;

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();

    v31 = os_log_type_enabled(v29, v30);
    v32 = v52;
    if (v31)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v58 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_100141FE4(v32, v28, &v58);
      _os_log_impl(&_mh_execute_header, v29, v30, "Secure ranging is not supported for watch with pairingID: %s, will continue to prearm the watch without it.", v33, 0xCu);
      sub_10000BB78(v34);
    }

    (*(v27 + 8))(v11, v26);
    v35 = type metadata accessor for TaskPriority();
    v36 = v51;
    (*(*(v35 - 8) + 56))(v51, 1, 1, v35);
    v37 = swift_allocObject();
    v37[2] = 0;
    v37[3] = 0;
    v38 = v54;
    v37[4] = v54;
    v37[5] = v32;
    v37[6] = v28;

    v39 = v38;
    sub_1003E653C(0, 0, v36, &unk_1006E6498, v37);
  }

  else
  {
    (*(v20 + 32))(v25, v18, v19);
    defaultLogger()();
    (*(v20 + 16))(v23, v25, v19);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v58 = v44;
      *v43 = 136315138;
      v54 = UUID.uuidString.getter();
      v46 = v45;
      v47 = *(v20 + 8);
      v47(v23, v19);
      v48 = sub_100141FE4(v54, v46, &v58);

      *(v43 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v41, v42, "Secure ranging session established with watch, sessionID: %s", v43, 0xCu);
      sub_10000BB78(v44);
    }

    else
    {

      v47 = *(v20 + 8);
      v47(v23, v19);
    }

    (*(v56 + 8))(v55, v57);
    return (v47)(v25, v19);
  }
}

uint64_t sub_1004B97D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for Logger();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v8 = type metadata accessor for DIPError.Code();
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();

  return _swift_task_switch(sub_1004B98F0, 0, 0);
}

uint64_t sub_1004B98F0()
{
  v1 = objc_opt_self();
  v0[11] = v1;
  v2 = [v1 standardUserDefaults];
  static DaemonDefaultsKeys.watchPrearmAttempts.getter();
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 integerForKey:v3];
  v0[12] = v4;

  if (v4 > 4)
  {
    v10 = v0[9];
    v9 = v0[10];
    v11 = v0[7];
    v12 = v0[8];
    v13 = v0[5];
    v14 = v0[6];
    sub_1004857EC(v0[3], v0[4]);
    (*(v10 + 104))(v9, enum case for DIPError.Code.watchPrearmRateLimited(_:), v12);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    (*(v14 + 8))(v11, v13);

    v15 = v0[1];

    return v15();
  }

  else
  {
    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_1004B9BC4;
    v7 = v0[3];
    v6 = v0[4];

    return sub_1004C0330(v7, v6);
  }
}

uint64_t sub_1004B9BC4()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1004B9DDC;
  }

  else
  {
    v2 = sub_1004B9CD8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004B9CD8()
{
  v1 = v0[11];
  v2 = v0[12];
  sub_1004857EC(v0[3], v0[4]);
  v3 = [v1 standardUserDefaults];
  static DaemonDefaultsKeys.watchPrearmAttempts.getter();
  v4 = String._bridgeToObjectiveC()();

  [v3 removeObjectForKey:v4];

  if (v2 >= 1)
  {
    type metadata accessor for DaemonAnalytics();
    static DaemonAnalytics.sendWatchPrearmSuccessEvent(attempts:)();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1004B9DDC(uint64_t a1)
{
  v2 = v1[11];
  v3 = v1[12];
  v5 = v1[6];
  v4 = v1[7];
  v6 = v1[5];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  (*(v5 + 8))(v4, v6);
  v7 = [v2 standardUserDefaults];
  static DaemonDefaultsKeys.watchPrearmAttempts.getter();
  v8 = String._bridgeToObjectiveC()();

  [v7 setInteger:v3 + 1 forKey:v8];

  v9 = v1[1];

  return v9();
}

uint64_t sub_1004B9EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[26] = v5;
  v4[27] = *(v5 - 8);
  v4[28] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[29] = v6;
  v4[30] = *(v6 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();

  return _swift_task_switch(sub_1004BA030, 0, 0);
}

uint64_t sub_1004BA030(uint64_t a1)
{
  v16 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[33];
  v6 = v1[29];
  v7 = v1[30];
  if (v4)
  {
    v9 = v1[22];
    v8 = v1[23];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100141FE4(v9, v8, &v15);
    _os_log_impl(&_mh_execute_header, v2, v3, "Trying to regenerate watch attestation with pairingID: %s", v10, 0xCu);
    sub_10000BB78(v11);
  }

  v12 = *(v7 + 8);
  v12(v5, v6);
  v1[34] = v12;
  v13 = swift_task_alloc();
  v1[35] = v13;
  *v13 = v1;
  v13[1] = sub_1004BA1E8;

  return sub_1006738C8();
}

uint64_t sub_1004BA1E8(uint64_t a1)
{
  *(*v1 + 288) = a1;

  return _swift_task_switch(sub_1004BA2E8, 0, 0);
}

uint64_t sub_1004BA2E8()
{
  v1 = v0[36];
  if (v1)
  {
    v0[37] = *(v0[25] + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_biometricStore);
    v2 = swift_allocObject();
    v0[38] = v2;
    *(v2 + 16) = v1;
    v3 = v1;
    v4 = swift_task_alloc();
    v0[39] = v4;
    sub_10001F8D4(0, &qword_100845E18, DCCredentialNonce_ptr);
    *v4 = v0;
    v4[1] = sub_1004BA57C;
    v5.n128_u64[0] = 30.0;

    return withTaskTimeoutHandler<A>(timeout:operation:)(v5);
  }

  else
  {
    (*(v0[27] + 104))(v0[28], enum case for DIPError.Code.unableToEstablishSessionWithWatch(_:), v0[26]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1004BA57C()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_1004BB478;
  }

  else
  {

    v2 = sub_1004BA698;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004BA698()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[24];
  v4 = v0[19];
  v0[41] = v4;
  v5 = swift_allocObject();
  v0[42] = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v6 = *v3;
  v7 = *(v3 + 16);
  v8 = *(v3 + 32);
  *(v5 + 79) = *(v3 + 47);
  *(v5 + 48) = v7;
  *(v5 + 64) = v8;
  *(v5 + 32) = v6;
  *(v5 + 88) = v4;
  v9 = v2;
  v10 = v1;
  sub_1004CDE10(v3, (v0 + 12));
  v11 = v4;
  v12 = swift_task_alloc();
  v0[43] = v12;
  sub_10001F8D4(0, &qword_100845E38, DCCredentialTrust_ptr);
  *v12 = v0;
  v12[1] = sub_1004BA7E0;
  v13.n128_u64[0] = 30.0;

  return withTaskTimeoutHandler<A>(timeout:operation:)(v13);
}

uint64_t sub_1004BA7E0()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_1004BB514;
  }

  else
  {

    v2 = sub_1004BA8FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004BA8FC()
{
  v1 = v0[36];
  v2 = v0[20];
  v0[45] = v2;
  v3 = swift_allocObject();
  v0[46] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = v1;
  v5 = v2;
  v6 = swift_task_alloc();
  v0[47] = v6;
  sub_100007224(&qword_100845E40, &qword_1006E6390);
  *v6 = v0;
  v6[1] = sub_1004BAA08;
  v7.n128_u64[0] = 30.0;

  return withTaskTimeoutHandler<A>(timeout:operation:)(v7);
}

uint64_t sub_1004BAA08()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_1004BB5B8;
  }

  else
  {

    v2 = sub_1004BAB24;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004BAB24(uint64_t a1)
{
  v40 = v1;
  v2 = v1[21];
  v1[49] = v2;
  defaultLogger()();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v1[34];
  v7 = v1[32];
  v8 = v1[29];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v39 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100141FE4(0xD000000000000030, 0x800000010071B1E0, &v39);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s - Skipping on saving prearm trust, only the attestation is updated", v9, 0xCu);
    sub_10000BB78(v10);
  }

  v6(v7, v8);
  v11 = v1[36];
  if (v2)
  {
    v12 = [v2 attestationData];
    v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v1[50] = v13;
    v1[51] = v15;
    v16 = swift_task_alloc();
    v1[52] = v16;
    *v16 = v1;
    v16[1] = sub_1004BAF50;

    return sub_1004CA174(v11);
  }

  else
  {
    defaultLogger()();
    v18 = v11;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    v21 = os_log_type_enabled(v19, v20);
    v22 = v1[49];
    v38 = v1[45];
    v23 = v1[41];
    v24 = v1[36];
    v25 = v1[34];
    v26 = v1[31];
    v27 = v1[29];
    if (v21)
    {
      v37 = v1[49];
      v28 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v28 = 136315394;
      *(v28 + 4) = sub_100141FE4(0xD000000000000030, 0x800000010071B1E0, &v39);
      *(v28 + 12) = 2080;
      v36 = v27;
      v29 = [v24 deviceID];
      v35 = v25;
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = sub_100141FE4(v30, v32, &v39);

      *(v28 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v19, v20, "%s - Successfully generated watch attestation with pairingID: %s", v28, 0x16u);
      swift_arrayDestroy();

      v35(v26, v36);
    }

    else
    {

      v25(v26, v27);
    }

    v34 = v1[1];

    return v34(0);
  }
}

uint64_t sub_1004BAF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  *(*v5 + 424) = v4;

  if (v4)
  {
    v11 = sub_1004BB3B4;
  }

  else
  {
    v10[54] = a4;
    v10[55] = a3;
    v10[56] = a2;
    v10[57] = a1;
    v11 = sub_1004BB098;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_1004BB098()
{
  v35 = v0;
  v2 = v0[56];
  v1 = v0[57];
  v4 = v0[54];
  v3 = v0[55];
  v6 = v0[50];
  v5 = v0[51];
  sub_100007224(&qword_100845E48, &qword_1006E63A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006BF520;
  *(inited + 32) = v3;
  *(inited + 40) = v4;
  v8 = Data.base16EncodedString()();
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  *(inited + 64) = v8;
  v9 = sub_10003F6B4(inited);
  swift_setDeallocating();
  sub_10000BE18(inited + 32, &qword_100845E50, &qword_1006E63A8);
  sub_10000B90C(v6, v5);
  v10 = v0[36];
  defaultLogger()();
  v11 = v10;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[49];
  v16 = v0[41];
  v17 = v0[36];
  v18 = v0[34];
  v19 = v0[31];
  v33 = v0[45];
  v20 = v0[29];
  if (v14)
  {
    v32 = v9;
    v21 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v21 = 136315394;
    *(v21 + 4) = sub_100141FE4(0xD000000000000030, 0x800000010071B1E0, &v34);
    *(v21 + 12) = 2080;
    v31 = v20;
    v22 = [v17 deviceID];
    v29 = v15;
    v30 = v18;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = sub_100141FE4(v23, v25, &v34);

    *(v21 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s - Successfully generated watch attestation with pairingID: %s", v21, 0x16u);
    swift_arrayDestroy();

    v9 = v32;

    v30(v19, v31);
  }

  else
  {

    v18(v19, v20);
  }

  v27 = v0[1];

  return v27(v9);
}

uint64_t sub_1004BB3B4()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);
  v3 = *(v0 + 392);
  v4 = *(v0 + 360);
  v5 = *(v0 + 288);

  sub_10000B90C(v1, v2);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1004BB478()
{
  v1 = *(v0 + 288);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004BB514()
{
  v1 = *(v0 + 288);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004BB5B8()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 288);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1004BB664(uint64_t a1, uint64_t a2)
{
  v2[22] = a1;
  v2[23] = a2;
  v3 = type metadata accessor for DIPError.Code();
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[27] = v4;
  v2[28] = *(v4 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_1004BB78C, 0, 0);
}

uint64_t sub_1004BB78C(uint64_t a1)
{
  v23 = v1;
  v2 = v1[23];
  defaultLogger()();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[30];
  v9 = v1[27];
  v8 = v1[28];
  if (v6)
  {
    v10 = v1[23];
    v21 = v1[30];
    v11 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100141FE4(0xD000000000000030, 0x800000010071B1E0, &v22);
    *(v11 + 12) = 2080;
    v12 = [v10 deviceID];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_100141FE4(v13, v15, &v22);

    *(v11 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s - Getting watch nonce with pairingID: %s", v11, 0x16u);
    swift_arrayDestroy();

    v17 = *(v8 + 8);
    v17(v21, v9);
  }

  else
  {

    v17 = *(v8 + 8);
    v17(v7, v9);
  }

  v1[31] = v17;
  v18 = v1[23];
  v1[2] = v1;
  v1[7] = v1 + 20;
  v1[3] = sub_1004BBA3C;
  v19 = swift_continuation_init();
  v1[17] = sub_100007224(&qword_100845E30, &qword_1006E6358);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1004CF424;
  v1[13] = &unk_1008142D8;
  v1[14] = v19;
  [v18 nonceForAuthorizationTokenWithCompletion:v1 + 10];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_1004BBA3C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 256) = v1;
  if (v1)
  {
    v2 = sub_1004BBE10;
  }

  else
  {
    v2 = sub_1004BBB4C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004BBB4C(uint64_t a1)
{
  v33 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 160);
  defaultLogger()();
  v4 = v2;
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v1 + 248);
  v10 = *(v1 + 232);
  v11 = *(v1 + 216);
  if (v8)
  {
    v28 = *(v1 + 184);
    v31 = *(v1 + 216);
    v12 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v12 = 136315650;
    *(v12 + 4) = sub_100141FE4(0xD000000000000030, 0x800000010071B1E0, &v32);
    *(v12 + 12) = 2080;
    v13 = [v5 credentialNonce];
    v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v9;
    v16 = v15;

    v17 = Data.description.getter();
    v29 = v10;
    v19 = v18;
    sub_10000B90C(v14, v16);
    v20 = sub_100141FE4(v17, v19, &v32);

    *(v12 + 14) = v20;
    *(v12 + 22) = 2080;
    v21 = [v28 deviceID];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = sub_100141FE4(v22, v24, &v32);

    *(v12 + 24) = v25;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s - Successfully generated nonce in watch: %s with pairingID: %s", v12, 0x20u);
    swift_arrayDestroy();

    v30(v29, v31);
  }

  else
  {

    v9(v10, v11);
  }

  **(v1 + 176) = v5;

  v26 = *(v1 + 8);

  return v26();
}

uint64_t sub_1004BBE10(uint64_t a1)
{
  v2 = v1[32];
  v4 = v1[25];
  v3 = v1[26];
  v5 = v1[24];
  swift_willThrow();
  _StringGuts.grow(_:)(47);
  v1[18] = 0;
  v1[19] = 0xE000000000000000;
  v6._object = 0x800000010071B1B0;
  v6._countAndFlagsBits = 0xD00000000000002DLL;
  String.append(_:)(v6);
  v1[21] = v2;
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  _print_unlocked<A, B>(_:_:)();
  (*(v4 + 104))(v3, enum case for DIPError.Code.unableToGenerateNonceOnWatch(_:), v5);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = v1[1];

  return v7();
}

uint64_t sub_1004BC040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[24] = v6;
  v5[25] = *(v6 - 8);
  v5[26] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[27] = v7;
  v5[28] = *(v7 - 8);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();

  return _swift_task_switch(sub_1004BC170, 0, 0);
}

uint64_t sub_1004BC170(uint64_t a1)
{
  v33 = v1;
  v2 = &v1[18];
  isa = v1[20].super.isa;
  defaultLogger()();
  v4 = isa;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v1[30].super.isa;
  v10 = v1[27].super.isa;
  v9 = v1[28].super.isa;
  if (v7)
  {
    v11 = v1[20].super.isa;
    v31 = v1[27].super.isa;
    v12 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_100141FE4(0xD000000000000030, 0x800000010071B1E0, &v32);
    *(v12 + 12) = 2080;
    v13 = [(objc_class *)v11 deviceID];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_100141FE4(v14, v16, &v32);

    *(v12 + 14) = v17;
    v2 = &v1[18];
    _os_log_impl(&_mh_execute_header, v5, v6, "%s - Trying to get a new certificate re-using trust key for pairingID: %s", v12, 0x16u);
    swift_arrayDestroy();

    v18 = *(v9 + 1);
    (v18)(v8, v31);
  }

  else
  {

    v18 = *(v9 + 1);
    (v18)(v8, v10);
  }

  v1[31].super.isa = v18;
  v19 = v1[23].super.isa;
  v20 = v1[20].super.isa;
  v21.super.isa = Data._bridgeToObjectiveC()().super.isa;
  v1[32].super.isa = v21.super.isa;
  v22 = [(objc_class *)v19 credentialNonce];
  v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26.super.isa = Data._bridgeToObjectiveC()().super.isa;
  v1[33].super.isa = v26.super.isa;
  sub_10000B90C(v23, v25);
  v27 = [(objc_class *)v20 deviceID];
  if (!v27)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = String._bridgeToObjectiveC()();
  }

  v1[34].super.isa = v27;
  v28 = v1[21].super.isa;
  v1[2].super.isa = v1;
  v1[7].super.isa = v2;
  v1[3].super.isa = sub_1004BC4DC;
  v29 = swift_continuation_init();
  v1[17].super.isa = sub_100007224(&unk_100845E60, &qword_1006E63D8);
  v1[10].super.isa = _NSConcreteStackBlock;
  v1[11].super.isa = 1107296256;
  v1[12].super.isa = sub_1004CF424;
  v1[13].super.isa = &unk_1008142B0;
  v1[14].super.isa = v29;
  [(objc_class *)v28 generatePrearmTrustCertificateFromKeyBlob:v21.super.isa nonce:v26.super.isa pairingID:v27 completion:&v1[10]];

  return _swift_continuation_await(&v1[2]);
}

uint64_t sub_1004BC4DC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 280) = v1;
  if (v1)
  {
    v2 = sub_1004BC940;
  }

  else
  {
    v2 = sub_1004BC5EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004BC5EC()
{
  v38 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 256);
  v3 = *(v0 + 160);
  v4 = *(v0 + 144);

  defaultLogger()();
  v5 = v3;
  v6 = v4;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 248);
  v11 = *(v0 + 232);
  v12 = *(v0 + 216);
  if (v9)
  {
    v33 = *(v0 + 160);
    v36 = *(v0 + 216);
    v13 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v13 = 136315906;
    *(v13 + 4) = sub_100141FE4(0xD000000000000030, 0x800000010071B1E0, &v37);
    *(v13 + 12) = 2080;
    v14 = [v6 credentialKeyBlob];
    v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v10;
    v17 = v16;

    v18 = Data.base64EncodedString(options:)(0);
    v34 = v11;
    sub_10000B90C(v15, v17);
    v19 = sub_100141FE4(v18._countAndFlagsBits, v18._object, &v37);

    *(v13 + 14) = v19;
    *(v13 + 22) = 2080;
    v20 = [v6 credentialBAACertificate];
    v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = Data.base64EncodedString(options:)(0);
    sub_10000B90C(v21, v23);
    v25 = sub_100141FE4(v24._countAndFlagsBits, v24._object, &v37);

    *(v13 + 24) = v25;
    *(v13 + 32) = 2080;
    v26 = [v33 deviceID];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = sub_100141FE4(v27, v29, &v37);

    *(v13 + 34) = v30;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s - Successfully resigned prearm trust key: %s and certificate: %s on phone for watch with pairingID: %s", v13, 0x2Au);
    swift_arrayDestroy();

    v35(v34, v36);
  }

  else
  {

    v10(v11, v12);
  }

  **(v0 + 152) = v6;

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1004BC940(uint64_t a1)
{
  v2 = v1[34];
  v4 = v1[32];
  v3 = v1[33];
  v5 = v1[25];
  v6 = v1[26];
  v7 = v1[24];
  swift_willThrow();

  (*(v5 + 104))(v6, enum case for DIPError.Code.unableToRegeneratePrearmTrustKeyOnPhone(_:), v7);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v8 = v1[1];

  return v8();
}

uint64_t sub_1004BCB04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return _swift_task_switch(sub_1004BCB28, 0, 0);
}

uint64_t sub_1004BCB28()
{
  v2 = v0[20];
  v1 = v0[21];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1004BCC50;
  v3 = swift_continuation_init();
  v0[17] = sub_100007224(&qword_100845E58, &qword_1006E63D0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1004CF424;
  v0[13] = &unk_100814288;
  v0[14] = v3;
  [v2 establishPrearmTrustV2:v1 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1004BCC50()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1004BCD80;
  }

  else
  {
    v2 = sub_1004BCD60;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004BCD80(uint64_t a1)
{
  swift_willThrow();

  **(v1 + 152) = 0;
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1004BCE00(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[18] = v4;
  v3[19] = *(v4 - 8);
  v3[20] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[21] = v5;
  v3[22] = *(v5 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_1004BCF2C, 0, 0);
}

uint64_t sub_1004BCF2C(uint64_t a1)
{
  v16 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[24];
  v6 = v1[21];
  v7 = v1[22];
  if (v4)
  {
    v9 = v1[15];
    v8 = v1[16];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100141FE4(v9, v8, &v15);
    _os_log_impl(&_mh_execute_header, v2, v3, "Trying to establish prearm trust with watch with pairingID: %s", v10, 0xCu);
    sub_10000BB78(v11);
  }

  v12 = *(v7 + 8);
  v12(v5, v6);
  v1[25] = v12;
  v13 = swift_task_alloc();
  v1[26] = v13;
  *v13 = v1;
  v13[1] = sub_1004BD0E4;

  return sub_1006738C8();
}

uint64_t sub_1004BD0E4(uint64_t a1)
{
  *(*v1 + 216) = a1;

  return _swift_task_switch(sub_1004BD1E4, 0, 0);
}

uint64_t sub_1004BD1E4()
{
  v1 = v0[27];
  if (v1)
  {
    v0[28] = *(v0[17] + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_biometricStore);
    v2 = swift_allocObject();
    v0[29] = v2;
    *(v2 + 16) = v1;
    v3 = v1;
    v4 = swift_task_alloc();
    v0[30] = v4;
    sub_10001F8D4(0, &qword_100845E18, DCCredentialNonce_ptr);
    *v4 = v0;
    v4[1] = sub_1004BD468;
    v5.n128_u64[0] = 30.0;

    return withTaskTimeoutHandler<A>(timeout:operation:)(v5);
  }

  else
  {
    (*(v0[19] + 104))(v0[20], enum case for DIPError.Code.unableToEstablishSessionWithWatch(_:), v0[18]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1004BD468()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_1004BE1CC;
  }

  else
  {
    v2 = sub_1004BD59C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004BD59C()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[12];
  v0[32] = v3;
  v4 = swift_allocObject();
  v0[33] = v4;
  v4[2] = v2;
  v4[3] = v1;
  v4[4] = v3;
  v5 = v2;
  v6 = v1;
  v7 = v3;
  v8 = swift_task_alloc();
  v0[34] = v8;
  sub_10001F8D4(0, &qword_100845E38, DCCredentialTrust_ptr);
  *v8 = v0;
  v8[1] = sub_1004BD6BC;
  v9.n128_u64[0] = 30.0;

  return withTaskTimeoutHandler<A>(timeout:operation:)(v9);
}

uint64_t sub_1004BD6BC()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_1004BE254;
  }

  else
  {
    v2 = sub_1004BD7F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004BD7F0()
{
  v1 = v0[27];
  v2 = v0[13];
  v0[36] = v2;
  v3 = swift_allocObject();
  v0[37] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = v1;
  v5 = v2;
  v6 = swift_task_alloc();
  v0[38] = v6;
  sub_100007224(&qword_100845E40, &qword_1006E6390);
  *v6 = v0;
  v6[1] = sub_1004BD8FC;
  v7.n128_u64[0] = 30.0;

  return withTaskTimeoutHandler<A>(timeout:operation:)(v7);
}

uint64_t sub_1004BD8FC()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_1004BE2E4;
  }

  else
  {
    v2 = sub_1004BDA30;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004BDA30()
{
  v33 = v0;
  v1 = v0[14];
  v0[40] = v1;
  v2 = v0[27];
  if (v1)
  {
    v3 = [v1 attestationData];
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v0[41] = v4;
    v0[42] = v6;
    v7 = swift_task_alloc();
    v0[43] = v7;
    *v7 = v0;
    v7[1] = sub_1004BDD08;

    return sub_1004CA174(v2);
  }

  else
  {
    defaultLogger()();
    v9 = v2;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[40];
    v14 = v0[32];
    v15 = v0[27];
    v16 = v0[25];
    v17 = v0[23];
    v18 = v0[21];
    if (v12)
    {
      v31 = v0[40];
      v19 = swift_slowAlloc();
      v30 = v17;
      v20 = swift_slowAlloc();
      v32 = v20;
      *v19 = 136315138;
      v29 = v18;
      v21 = [v15 deviceID];
      v28 = v16;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v25 = sub_100141FE4(v22, v24, &v32);

      *(v19 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v10, v11, "Successfully established prearm trust with watch with pairingID: %s", v19, 0xCu);
      sub_10000BB78(v20);

      v28(v30, v29);
    }

    else
    {

      v16(v17, v18);
    }

    v26 = v0[1];
    v27 = v0[36];

    return v26(v27, 0);
  }
}

uint64_t sub_1004BDD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  *(*v5 + 352) = v4;

  if (v4)
  {
    v11 = sub_1004BE114;
  }

  else
  {
    v10[45] = a4;
    v10[46] = a3;
    v10[47] = a2;
    v10[48] = a1;
    v11 = sub_1004BDE50;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_1004BDE50()
{
  v37 = v0;
  v2 = v0[47];
  v1 = v0[48];
  v4 = v0[45];
  v3 = v0[46];
  v6 = v0[41];
  v5 = v0[42];
  sub_100007224(&qword_100845E48, &qword_1006E63A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006BF520;
  *(inited + 32) = v3;
  *(inited + 40) = v4;
  v8 = Data.base16EncodedString()();
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  *(inited + 64) = v8;
  v9 = sub_10003F6B4(inited);
  swift_setDeallocating();
  sub_10000BE18(inited + 32, &qword_100845E50, &qword_1006E63A8);
  sub_10000B90C(v6, v5);
  v10 = v0[27];
  defaultLogger()();
  v11 = v10;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[40];
  v16 = v0[32];
  v17 = v0[27];
  v18 = v0[25];
  v19 = v0[23];
  v20 = v0[21];
  if (v14)
  {
    v35 = v9;
    v21 = swift_slowAlloc();
    v34 = v19;
    v22 = swift_slowAlloc();
    v36 = v22;
    *v21 = 136315138;
    v33 = v20;
    v23 = [v17 deviceID];
    v31 = v15;
    v32 = v18;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = sub_100141FE4(v24, v26, &v36);

    *(v21 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v12, v13, "Successfully established prearm trust with watch with pairingID: %s", v21, 0xCu);
    sub_10000BB78(v22);

    v9 = v35;

    v32(v34, v33);
  }

  else
  {

    v18(v19, v20);
  }

  v28 = v0[1];
  v29 = v0[36];

  return v28(v29, v9);
}

uint64_t sub_1004BE114()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);
  v3 = *(v0 + 320);
  v4 = *(v0 + 288);
  v5 = *(v0 + 256);

  sub_10000B90C(v1, v2);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1004BE1CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004BE254()
{
  v1 = *(v0 + 216);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004BE2E4()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 216);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1004BE37C(uint64_t a1, uint64_t a2)
{
  v2[22] = a1;
  v2[23] = a2;
  v3 = type metadata accessor for DIPError.Code();
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[27] = v4;
  v2[28] = *(v4 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_1004BE4A4, 0, 0);
}

uint64_t sub_1004BE4A4(uint64_t a1)
{
  v24 = v1;
  v2 = v1[23];
  defaultLogger()();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[30];
  v9 = v1[27];
  v8 = v1[28];
  if (v6)
  {
    v10 = v1[23];
    v22 = v1[30];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136315138;
    v13 = [v10 deviceID];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_100141FE4(v14, v16, &v23);

    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "Trying to generate nonce in watch with pairingID: %s", v11, 0xCu);
    sub_10000BB78(v12);

    v18 = *(v8 + 8);
    v18(v22, v9);
  }

  else
  {

    v18 = *(v8 + 8);
    v18(v7, v9);
  }

  v1[31] = v18;
  v19 = v1[23];
  v1[2] = v1;
  v1[7] = v1 + 20;
  v1[3] = sub_1004BE718;
  v20 = swift_continuation_init();
  v1[17] = sub_100007224(&qword_100845E30, &qword_1006E6358);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1004CF424;
  v1[13] = &unk_1008141E8;
  v1[14] = v20;
  [v19 nonceForAuthorizationTokenWithCompletion:v1 + 10];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_1004BE718()
{
  v1 = *(*v0 + 48);
  *(*v0 + 256) = v1;
  if (v1)
  {
    v2 = sub_1004BEAC0;
  }

  else
  {
    v2 = sub_1004BE828;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004BE828(uint64_t a1)
{
  v33 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 160);
  defaultLogger()();
  v4 = v2;
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v1 + 248);
  v10 = *(v1 + 232);
  v11 = *(v1 + 216);
  if (v8)
  {
    v28 = *(v1 + 184);
    v31 = *(v1 + 216);
    v12 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v12 = 136315394;
    v13 = [v5 credentialNonce];
    v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v9;
    v16 = v15;

    v17 = Data.description.getter();
    v29 = v10;
    v19 = v18;
    sub_10000B90C(v14, v16);
    v20 = sub_100141FE4(v17, v19, &v32);

    *(v12 + 4) = v20;
    *(v12 + 12) = 2080;
    v21 = [v28 deviceID];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = sub_100141FE4(v22, v24, &v32);

    *(v12 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v6, v7, "Successfully generated nonce in watch: %s with pairingID: %s", v12, 0x16u);
    swift_arrayDestroy();

    v30(v29, v31);
  }

  else
  {

    v9(v10, v11);
  }

  **(v1 + 176) = v5;

  v26 = *(v1 + 8);

  return v26();
}