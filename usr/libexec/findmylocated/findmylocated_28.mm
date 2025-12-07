uint64_t sub_100309D00()
{
  v1 = *v0;
  v2 = *(*v0 + 3520);

  sub_100002CE0(v1 + 16, &qword_1005B02C0, &unk_1004D5E90);

  return _swift_task_switch(sub_100309E28, v2, 0);
}

uint64_t sub_100309E28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100309E94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100309F04(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return _swift_task_switch(sub_100309F4C, 0, 0);
}

uint64_t sub_100309F4C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = sub_10004B564(&qword_1005B1C88, &qword_1004D5E68);
  *v4 = v0;
  v4[1] = sub_10030A054;
  v6 = v0[2];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, 0, 0, 0xD000000000000019, 0x80000001004E7B10, sub_100318908, v3, v5);
}

uint64_t sub_10030A054()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100306354, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10030A190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a3;
  v5 = type metadata accessor for UUID();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10004B564(&qword_1005B1C90, &qword_1004D5E70);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - v9;
  v15 = *(a2 + 160);
  type metadata accessor for WorkItemQueue.WorkItem();
  (*(v7 + 16))(v10, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = (v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v11, v10, v6);
  *(v13 + v12) = a2;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v16;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_10030A39C(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  sub_10004B564(&qword_1005B1C88, &qword_1004D5E68);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10030A438, 0, 0);
}

uint64_t sub_10030A438()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_10030A4D4;
  v2 = *(v0 + 48);

  return sub_1003192B8(v2);
}

uint64_t sub_10030A4D4()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_10030A674;
  }

  else
  {
    v2 = sub_10030A5E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10030A5E8()
{
  sub_10004B564(&qword_1005B1C90, &qword_1004D5E70);
  CheckedContinuation.resume(returning:)();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10030A674()
{
  v12 = v0;
  if (qword_1005A8490 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0A98);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v5 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD000000000000019, 0x80000001004E7B10, &v11);
    *(v5 + 12) = 2082;
    v0[3] = v4;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v11);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v0[2] = v0[8];
  sub_10004B564(&qword_1005B1C90, &qword_1004D5E70);
  CheckedContinuation.resume(throwing:)();

  v9 = v0[1];

  return v9();
}

uint64_t sub_10030A8A4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return _swift_task_switch(sub_10030A8EC, v1, 0);
}

uint64_t sub_10030A8EC(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[2];
  v6 = sub_10000D108(&qword_1005AAB90, a2, type metadata accessor for LocalStorageService, &unk_1004D5A90);
  v7 = swift_task_alloc();
  v2[5] = v7;
  v7[2] = v3;
  v7[3] = v5;
  v7[4] = v4;
  v8 = swift_task_alloc();
  v2[6] = v8;
  *v8 = v2;
  v8[1] = sub_100305DA0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, v3, v6, 0x7228747265736E69, 0xEF293A64726F6365, sub_10031870C, v7, &type metadata for () + 1);
}

uint64_t sub_10030AA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  v22 = a2;
  v24 = a1;
  v6 = type metadata accessor for UUID();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v21 - v10;
  v12 = type metadata accessor for OwnerSharedSecretsRecord(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(a2 + 160);
  v23 = type metadata accessor for WorkItemQueue.WorkItem();
  sub_100318DB4(a3, v15, type metadata accessor for OwnerSharedSecretsRecord);
  (*(v8 + 16))(v11, v24, v7);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (*(v8 + 80) + v17 + 8) & ~*(v8 + 80);
  v19 = swift_allocObject();
  sub_100318718(v15, v19 + v16, type metadata accessor for OwnerSharedSecretsRecord);
  *(v19 + v17) = v22;
  (*(v8 + 32))(v19 + v18, v11, v7);
  *(v19 + ((v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_10030AD10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v3[7] = type metadata accessor for OwnerSharedSecretsRecord(0);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_10030ADB4, 0, 0);
}

uint64_t sub_10030ADB4()
{
  v19 = v0;
  if (qword_1005A8490 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[4];
  v3 = type metadata accessor for Logger();
  v0[10] = sub_10000A6F0(v3, qword_1005E0A98);
  sub_100318DB4(v2, v1, type metadata accessor for OwnerSharedSecretsRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = v0[8];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    sub_100318DB4(v7, v8, type metadata accessor for OwnerSharedSecretsRecord);
    v11 = String.init<A>(describing:)();
    v13 = v12;
    sub_100318F00(v7, type metadata accessor for OwnerSharedSecretsRecord);
    v14 = sub_10000D01C(v11, v13, &v18);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Inserting OwnerSharedSecretsRecord: %s", v9, 0xCu);
    sub_100004984(v10);
  }

  else
  {

    sub_100318F00(v7, type metadata accessor for OwnerSharedSecretsRecord);
  }

  v15 = swift_task_alloc();
  v0[11] = v15;
  *v15 = v0;
  v15[1] = sub_10030B01C;
  v16 = v0[4];

  return sub_100319D70(v16);
}

uint64_t sub_10030B01C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_10030B1BC;
  }

  else
  {
    v2 = sub_10030B130;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10030B130()
{
  sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  CheckedContinuation.resume(returning:)();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10030B1BC()
{
  v12 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[12];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v0[3] = v3;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Unable to insert OwnerSharedSecretsRecord: %{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v0[2] = v0[12];
  sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  CheckedContinuation.resume(throwing:)();

  v9 = v0[1];

  return v9();
}

void *sub_10030B378()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10030B400()
{
  sub_10030B378();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10030B42C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for LocalStorageService();
  *v4 = v2;
  v4[1] = sub_10000368C;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_10030B4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for LocalStorageService();
  *v8 = v4;
  v8[1] = sub_10000368C;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_10030B598(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for LocalStorageService();
  *v4 = v2;
  v4[1] = sub_100003690;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_10030B640(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for LocalStorageService();
  *v4 = v2;
  v4[1] = sub_10000368C;

  return ActorServiceProtocol.startup()(v5, a2);
}

uint64_t sub_10030B6E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003690;

  return sub_100307A38();
}

uint64_t sub_10030B774()
{
  type metadata accessor for LocalStorageService();
  sub_10000D108(&qword_1005AAB88, v0, type metadata accessor for LocalStorageService, &unk_1004D5A30);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_10030B86C()
{
  v1 = v0[16];
  (*(v0[8] + 8))(v0[9], v0[7]);
  v0[2] = v1;
  sub_10004B564(&qword_1005B1C48, &qword_1004D5C78);
  CheckedContinuation.resume(throwing:)();

  v2 = v0[1];

  return v2();
}

uint64_t sub_10030B91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a5;
  v34 = a4;
  v35 = a2;
  v32 = a3;
  v33 = a1;
  v5 = type metadata accessor for UUID();
  __chkstk_darwin(v5 - 8);
  v36 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for HandleType();
  v7 = *(v38 - 8);
  v31 = *(v7 + 64);
  __chkstk_darwin(v38);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v9;
  v10 = sub_10004B564(&qword_1005B1CA0, &qword_1004D5ED0);
  v27 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v25 - v13;
  v28 = &v25 - v13;
  v15 = type metadata accessor for Handle();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for WorkItemQueue.WorkItem();
  (*(v16 + 16))(v18, v32, v15);
  (*(v11 + 16))(v14, v33, v10);
  v26 = v7;
  (*(v7 + 16))(v9, v34, v38);
  v19 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v20 = (v17 + *(v11 + 80) + v19) & ~*(v11 + 80);
  v21 = (v12 + *(v7 + 80) + v20) & ~*(v7 + 80);
  v22 = (v31 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = v35;
  (*(v16 + 32))(v23 + v19, v18, v15);
  (*(v11 + 32))(v23 + v20, v28, v27);
  (*(v26 + 32))(v23 + v21, v29, v38);
  *(v23 + v22) = v37;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_10030BCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for Handle();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  sub_10004B564(&qword_1005A9188, &unk_1004D80D0);
  v4[10] = swift_task_alloc();
  sub_10004B564(&qword_1005B0B88, &qword_1004D5CC0);
  v4[11] = swift_task_alloc();
  v6 = type metadata accessor for FriendRecord(0);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_10030BE5C, 0, 0);
}

uint64_t sub_10030BE5C(uint64_t a1)
{
  v2 = Handle.identifier.getter();
  v4 = v3;
  v1[15] = v3;
  v5 = swift_task_alloc();
  v1[16] = v5;
  *v5 = v1;
  v5[1] = sub_10030BF1C;
  v6 = v1[11];

  return sub_10031A318(v6, v2, v4);
}

uint64_t sub_10030BF1C()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_10030C398;
  }

  else
  {

    v2 = sub_10030C038;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10030C038()
{
  v27 = v0;
  v1 = v0[11];
  if ((*(v0[13] + 48))(v1, 1, v0[12]) == 1)
  {
    sub_100002CE0(v1, &qword_1005B0B88, &qword_1004D5CC0);
    if (qword_1005A8490 != -1)
    {
      swift_once();
    }

    v3 = v0[8];
    v2 = v0[9];
    v4 = v0[7];
    v5 = v0[4];
    v6 = type metadata accessor for Logger();
    sub_10000A6F0(v6, qword_1005E0A98);
    (*(v3 + 16))(v2, v5, v4);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v7, v8);
    v11 = v0[8];
    v10 = v0[9];
    v12 = v0[7];
    if (v9)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v26 = v14;
      *v13 = 141558275;
      *(v13 + 4) = 1752392040;
      *(v13 + 12) = 2081;
      v15 = Handle.identifier.getter();
      v17 = v16;
      (*(v11 + 8))(v10, v12);
      v18 = sub_10000D01C(v15, v17, &v26);

      *(v13 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v7, v8, "No friend matching handle %{private,mask.hash}s", v13, 0x16u);
      sub_100004984(v14);
    }

    else
    {

      (*(v11 + 8))(v10, v12);
    }

    v22 = v0[10];
    v23 = type metadata accessor for Friend();
    (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
    sub_10004B564(&qword_1005B1CA0, &qword_1004D5ED0);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    v19 = v0[14];
    v20 = v0[10];
    v21 = v0[6];
    sub_100318718(v1, v19, type metadata accessor for FriendRecord);
    sub_10000D7A4(v21, v20);
    sub_10004B564(&qword_1005B1CA0, &qword_1004D5ED0);
    CheckedContinuation.resume(returning:)();
    sub_100318F00(v19, type metadata accessor for FriendRecord);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_10030C398()
{
  v1 = v0[17];

  v0[2] = v1;
  sub_10004B564(&qword_1005B1CA0, &qword_1004D5ED0);
  CheckedContinuation.resume(throwing:)();

  v2 = v0[1];

  return v2();
}

uint64_t sub_10030C45C()
{
  v0[2] = v0[14];
  sub_10004B564(&qword_1005B1C48, &qword_1004D5C78);
  CheckedContinuation.resume(throwing:)();

  v1 = v0[1];

  return v1();
}

uint64_t sub_10030C514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return _swift_task_switch(sub_10030C538, 0, 0);
}

uint64_t sub_10030C538()
{
  v13 = v0;
  if (qword_1005A8490 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[7] = sub_10000A6F0(v1, qword_1005E0A98);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    type metadata accessor for Friend();
    v6 = Array.description.getter();
    v8 = sub_10000D01C(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "LocalStorage Service write with friends: %s", v4, 0xCu);
    sub_100004984(v5);
  }

  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_10030C720;
  v10 = v0[4];

  return sub_10031A92C(v10);
}

uint64_t sub_10030C720()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_10030C834;
  }

  else
  {
    v2 = sub_100318F80;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10030C834()
{
  v12 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[9];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v0[3] = v3;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "LocalStorage Service write with friends error:%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v0[2] = v0[9];
  sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  CheckedContinuation.resume(throwing:)();
  v9 = v0[1];

  return v9();
}

uint64_t sub_10030C9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = a6;
  v22 = a7;
  v20 = a4;
  v10 = type metadata accessor for UUID();
  __chkstk_darwin(v10 - 8);
  v11 = sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v19 - v14;
  type metadata accessor for WorkItemQueue.WorkItem();
  (*(v12 + 16))(v15, a1, v11);
  v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  (*(v12 + 32))(v17 + v16, v15, v11);
  *(v17 + ((v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v20;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_10030CBC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return _swift_task_switch(sub_10030CBEC, 0, 0);
}

uint64_t sub_10030CBEC()
{
  v13 = v0;
  if (qword_1005A8490 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[7] = sub_10000A6F0(v1, qword_1005E0A98);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    type metadata accessor for Friend();
    type metadata accessor for FriendshipAction();
    sub_10000D108(&qword_1005AE9B0, 255, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
    v6 = Dictionary.description.getter();
    v8 = sub_10000D01C(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "LocalStorage Service update with changes: %s", v4, 0xCu);
    sub_100004984(v5);
  }

  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_10030CE24;
  v10 = v0[4];

  return sub_10031B518(v10);
}

uint64_t sub_10030CE24()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_10030CF38;
  }

  else
  {
    v2 = sub_100318F80;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10030CF38()
{
  v12 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[9];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v0[3] = v3;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "LocalStorage Service update with changes error:%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v0[2] = v0[9];
  sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  CheckedContinuation.resume(throwing:)();
  v9 = v0[1];

  return v9();
}

uint64_t sub_10030D0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a4;
  v7 = type metadata accessor for UUID();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - v11;
  type metadata accessor for WorkItemQueue.WorkItem();
  (*(v9 + 16))(v12, a1, v8);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  (*(v9 + 32))(v14 + v13, v12, v8);
  *(v14 + ((v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v17;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_10030D2EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return _swift_task_switch(sub_10030D310, 0, 0);
}

uint64_t sub_10030D310()
{
  v13 = v0;
  if (qword_1005A8490 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[7] = sub_10000A6F0(v1, qword_1005E0A98);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    type metadata accessor for Device();
    v6 = Array.description.getter();
    v8 = sub_10000D01C(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "LocalStorage Service write with devices: %s", v4, 0xCu);
    sub_100004984(v5);
  }

  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_10030D4F8;
  v10 = v0[4];

  return sub_10032274C(v10);
}

uint64_t sub_10030D4F8()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_10030D60C;
  }

  else
  {
    v2 = sub_100318F80;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10030D60C()
{
  v12 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[9];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v0[3] = v3;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "LocalStorage Service write with devices error:%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v0[2] = v0[9];
  sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  CheckedContinuation.resume(throwing:)();
  v9 = v0[1];

  return v9();
}

uint64_t sub_10030D7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10004B564(&qword_1005B1C18, &qword_1004D5AC8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  type metadata accessor for WorkItemQueue.WorkItem();
  (*(v8 + 16))(v11, a1, v7);
  v12 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  (*(v8 + 32))(v13 + v12, v11, v7);
  *(v13 + ((v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_10030D9B4(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_10030D9D4, 0, 0);
}

uint64_t sub_10030D9D4()
{
  if (qword_1005A8490 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 56) = sub_10000A6F0(v1, qword_1005E0A98);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "LocalStorage Service read all devices", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_10030DB28;

  return sub_100324C30();
}

uint64_t sub_10030DB28(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_10030DD0C;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_10030DC50;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10030DC50()
{

  v1 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

  *(v0 + 32) = v1;
  sub_10004B564(&qword_1005B1C18, &qword_1004D5AC8);
  CheckedContinuation.resume(returning:)();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10030DD0C()
{
  v12 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[9];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v0[3] = v3;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "LocalStorage Service read with devices error:%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v0[2] = v0[9];
  sub_10004B564(&qword_1005B1C18, &qword_1004D5AC8);
  CheckedContinuation.resume(throwing:)();
  v9 = v0[1];

  return v9();
}

uint64_t sub_10030DEB8()
{
  v2 = *(sub_10004B564(&qword_1005B1C18, &qword_1004D5AC8) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_10030D9B4(v4, v0 + v3);
}

uint64_t sub_10030DFCC(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v17 = a4;
  v7 = type metadata accessor for UUID();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v16 - v11;
  v16[1] = type metadata accessor for WorkItemQueue.WorkItem();
  (*(v9 + 16))(v12, a1, v8);
  v13 = (*(v9 + 80) + 504) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  memcpy((v14 + 24), a3, 0x1E0uLL);
  (*(v9 + 32))(v14 + v13, v12, v8);
  *(v14 + ((v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v17;

  sub_1001B5440(a3, &v18);
  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_10030E1EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return _swift_task_switch(sub_10030E210, 0, 0);
}

uint64_t sub_10030E210()
{
  if (qword_1005A8490 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[7] = sub_10000A6F0(v1, qword_1005E0A98);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "LocalStorage Service write serverSettings", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_10030E36C;
  v6 = v0[5];

  return sub_100324FE8(v6);
}

uint64_t sub_10030E36C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_10030E4FC;
  }

  else
  {
    v2 = sub_10030E480;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10030E480()
{
  sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  CheckedContinuation.resume(returning:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10030E4FC()
{
  v12 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[9];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v0[3] = v3;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "LocalStorage Service write serverSettings:%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v0[2] = v0[9];
  sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  CheckedContinuation.resume(throwing:)();
  v9 = v0[1];

  return v9();
}

uint64_t sub_10030E6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10004B564(&qword_1005B1C40, &qword_1004D5BF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  type metadata accessor for WorkItemQueue.WorkItem();
  (*(v8 + 16))(v11, a1, v7);
  v12 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  (*(v8 + 32))(v13 + v12, v11, v7);
  *(v13 + ((v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_10030E89C(uint64_t a1, uint64_t a2)
{
  *(v2 + 8328) = a2;
  *(v2 + 8320) = a1;
  return _swift_task_switch(sub_10030E8C0, 0, 0);
}

uint64_t sub_10030E8C0()
{
  if (qword_1005A8490 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 8336) = sub_10000A6F0(v1, qword_1005E0A98);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "LocalStorage Service read all server settings", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 8344) = v5;
  *v5 = v0;
  v5[1] = sub_100033A74;

  return sub_100325664(v0 + 4816);
}

uint64_t sub_10030EA20()
{
  v12 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[1044];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v0[1038] = v3;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "LocalStorage Service write with serverSettings error:%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v0[1039] = v0[1044];
  sub_10004B564(&qword_1005B1C40, &qword_1004D5BF0);
  CheckedContinuation.resume(throwing:)();
  v9 = v0[1];

  return v9();
}

uint64_t sub_10030EBCC()
{
  v0[2] = v0[7];
  sub_10004B564(&qword_1005B1C38, &qword_1004D5B88);
  CheckedContinuation.resume(throwing:)();
  v1 = v0[1];

  return v1();
}

uint64_t sub_10030EC58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v5 = type metadata accessor for UUID();
  __chkstk_darwin(v5 - 8);
  v21 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v19 - v9;
  v11 = type metadata accessor for Fence.ID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = type metadata accessor for WorkItemQueue.WorkItem();
  (*(v12 + 16))(v14, a3, v11);
  (*(v8 + 16))(v10, a1, v7);
  v15 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v16 = (v13 + *(v8 + 80) + v15) & ~*(v8 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v20;
  (*(v12 + 32))(v17 + v15, v14, v11);
  (*(v8 + 32))(v17 + v16, v10, v7);

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_10030EF14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_10030EF38, 0, 0);
}

uint64_t sub_10030EF38(uint64_t a1)
{
  v2 = Fence.ID.uuidString.getter();
  v4 = v3;
  *(v1 + 48) = v3;
  v5 = swift_task_alloc();
  *(v1 + 56) = v5;
  *v5 = v1;
  v5[1] = sub_10030EFF0;

  return sub_100325814(v2, v4);
}

uint64_t sub_10030EFF0()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_10030F188;
  }

  else
  {

    v2 = sub_10030F10C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10030F10C()
{
  sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  CheckedContinuation.resume(returning:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10030F188()
{
  v1 = v0[8];

  v0[2] = v1;
  sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  CheckedContinuation.resume(throwing:)();
  v2 = v0[1];

  return v2();
}

uint64_t sub_10030F220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v5 = type metadata accessor for UUID();
  __chkstk_darwin(v5 - 8);
  v21 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004B564(&qword_1005B1C30, &qword_1004D5B68);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v19 - v9;
  v11 = type metadata accessor for Fence.ID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = type metadata accessor for WorkItemQueue.WorkItem();
  (*(v12 + 16))(v14, a3, v11);
  (*(v8 + 16))(v10, a1, v7);
  v15 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v16 = (v13 + *(v8 + 80) + v15) & ~*(v8 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v20;
  (*(v12 + 32))(v17 + v15, v14, v11);
  (*(v8 + 32))(v17 + v16, v10, v7);

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_10030F4DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[151] = a3;
  v3[150] = a2;
  v3[149] = a1;
  return _swift_task_switch(sub_10030F504, 0, 0);
}

uint64_t sub_10030F504(uint64_t a1)
{
  v2 = Fence.ID.uuidString.getter();
  v4 = v3;
  *(v1 + 1216) = v3;
  v5 = swift_task_alloc();
  *(v1 + 1224) = v5;
  *v5 = v1;
  v5[1] = sub_10030F5C8;

  return sub_100326220(v1 + 16, v2, v4);
}

uint64_t sub_10030F5C8()
{
  *(*v1 + 1232) = v0;

  if (v0)
  {
    v2 = sub_10030F774;
  }

  else
  {

    v2 = sub_10030F6E4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10030F6E4()
{
  memcpy(v0 + 75, v0 + 2, 0x241uLL);
  sub_10004B564(&qword_1005B1C30, &qword_1004D5B68);
  CheckedContinuation.resume(returning:)();
  v1 = v0[1];

  return v1();
}

uint64_t sub_10030F774()
{
  v1 = v0[154];

  v0[148] = v1;
  sub_10004B564(&qword_1005B1C30, &qword_1004D5B68);
  CheckedContinuation.resume(throwing:)();
  v2 = v0[1];

  return v2();
}

uint64_t sub_10030F804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - v9;
  type metadata accessor for WorkItemQueue.WorkItem();
  (*(v8 + 16))(v10, a1, v7);
  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v8 + 32))(v12 + v11, v10, v7);

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_10030F9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_10030FA14, 0, 0);
}

uint64_t sub_10030FA14()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10030FAB0;
  v2 = *(v0 + 32);

  return sub_100326EE4(v2);
}

uint64_t sub_10030FAB0()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_100318F9C;
  }

  else
  {
    v2 = sub_100318F84;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10030FBC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10004B564(&qword_1005B1C98, &qword_1004D5EA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  type metadata accessor for WorkItemQueue.WorkItem();
  (*(v6 + 16))(v8, a1, v5);
  v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  (*(v6 + 32))(v10 + v9, v8, v5);

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_10030FDA4(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return _swift_task_switch(sub_10030FDC4, 0, 0);
}

uint64_t sub_10030FDC4()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10030FE58;

  return sub_1003272F4();
}

uint64_t sub_10030FE58(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_10031000C;
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = sub_10030FF80;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10030FF80()
{
  v0[3] = v0[8];
  sub_10004B564(&qword_1005B1C98, &qword_1004D5EA0);
  CheckedContinuation.resume(returning:)();
  v1 = v0[1];

  return v1();
}

uint64_t sub_10031000C()
{
  v0[2] = v0[7];
  sub_10004B564(&qword_1005B1C98, &qword_1004D5EA0);
  CheckedContinuation.resume(throwing:)();
  v1 = v0[1];

  return v1();
}

uint64_t sub_100310098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v28 = a4;
  v29 = a5;
  v26 = a2;
  v7 = type metadata accessor for UUID();
  __chkstk_darwin(v7 - 8);
  v27 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  v25[0] = v9;
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v25 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[1] = type metadata accessor for WorkItemQueue.WorkItem();
  (*(v14 + 16))(v16, a3, v13);
  (*(v10 + 16))(v12, a1, v9);
  v17 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (*(v10 + 80) + v18 + 16) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v26;
  (*(v14 + 32))(v20 + v17, v16, v13);
  v21 = (v20 + v18);
  v23 = v28;
  v22 = v29;
  *v21 = v28;
  v21[1] = v22;
  (*(v10 + 32))(v20 + v19, v12, v25[0]);

  sub_100005F6C(v23, v22);
  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_100310380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return _swift_task_switch(sub_1003103A8, 0, 0);
}

uint64_t sub_1003103A8()
{
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_100310448;
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];

  return sub_100328340(v4, v2, v3);
}

uint64_t sub_100310448()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1003105D8;
  }

  else
  {
    v2 = sub_10031055C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10031055C()
{
  sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  CheckedContinuation.resume(returning:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003105D8()
{
  v0[2] = v0[9];
  sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  CheckedContinuation.resume(throwing:)();
  v1 = v0[1];

  return v1();
}

uint64_t sub_100310664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v5 = type metadata accessor for UUID();
  __chkstk_darwin(v5 - 8);
  v21 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v19 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = type metadata accessor for WorkItemQueue.WorkItem();
  (*(v12 + 16))(v14, a3, v11);
  (*(v8 + 16))(v10, a1, v7);
  v15 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v16 = (v13 + *(v8 + 80) + v15) & ~*(v8 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v20;
  (*(v12 + 32))(v17 + v15, v14, v11);
  (*(v8 + 32))(v17 + v16, v10, v7);

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_100310920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_100310944, 0, 0);
}

uint64_t sub_100310944()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10030FAB0;
  v2 = *(v0 + 32);

  return sub_100328B18(v2);
}

uint64_t sub_1003109E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v5 = type metadata accessor for UUID();
  __chkstk_darwin(v5 - 8);
  v21 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004B564(&qword_1005B1C28, &qword_1004D5B28);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v19 - v9;
  v11 = type metadata accessor for Fence.ID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = type metadata accessor for WorkItemQueue.WorkItem();
  (*(v12 + 16))(v14, a3, v11);
  (*(v8 + 16))(v10, a1, v7);
  v15 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v16 = (v13 + *(v8 + 80) + v15) & ~*(v8 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v20;
  (*(v12 + 32))(v17 + v15, v14, v11);
  (*(v8 + 32))(v17 + v16, v10, v7);

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_100310C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  sub_10004B564(&qword_1005B0B98, &qword_1004D27F0);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_100310D48, 0, 0);
}

uint64_t sub_100310D48()
{
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_100310DE8;
  v2 = v0[7];
  v3 = v0[4];

  return sub_100329164(v2, v3);
}

uint64_t sub_100310DE8()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_100310FD4;
  }

  else
  {
    v2 = sub_100310EFC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100310EFC()
{
  v1 = v0[7];
  sub_100005F04(v1, v0[6], &qword_1005B0B98, &qword_1004D27F0);
  sub_10004B564(&qword_1005B1C28, &qword_1004D5B28);
  CheckedContinuation.resume(returning:)();
  sub_100002CE0(v1, &qword_1005B0B98, &qword_1004D27F0);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100310FD4()
{
  v0[2] = v0[9];
  sub_10004B564(&qword_1005B1C28, &qword_1004D5B28);
  CheckedContinuation.resume(throwing:)();

  v1 = v0[1];

  return v1();
}

uint64_t sub_100311070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v5 = type metadata accessor for UUID();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - v8;
  v10 = type metadata accessor for FenceTriggerRecord(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for WorkItemQueue.WorkItem();
  sub_100318DB4(a3, v13, type metadata accessor for FenceTriggerRecord);
  (*(v7 + 16))(v9, v19, v6);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = (v12 + *(v7 + 80) + v14) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  sub_100318718(v13, v16 + v14, type metadata accessor for FenceTriggerRecord);
  (*(v7 + 32))(v16 + v15, v9, v6);

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_10031131C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_100311340, 0, 0);
}

uint64_t sub_100311340()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10030FAB0;
  v2 = *(v0 + 32);

  return sub_10032A70C(v2);
}

uint64_t sub_1003113DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v5 = type metadata accessor for UUID();
  __chkstk_darwin(v5 - 8);
  v21 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v19 - v9;
  v11 = type metadata accessor for Fence.ID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = type metadata accessor for WorkItemQueue.WorkItem();
  (*(v12 + 16))(v14, a3, v11);
  (*(v8 + 16))(v10, a1, v7);
  v15 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v16 = (v13 + *(v8 + 80) + v15) & ~*(v8 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v20;
  (*(v12 + 32))(v17 + v15, v14, v11);
  (*(v8 + 32))(v17 + v16, v10, v7);

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_100311698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_1003116BC, 0, 0);
}

uint64_t sub_1003116BC()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_100311758;
  v2 = *(v0 + 32);

  return sub_10032B474(v2);
}

uint64_t sub_100311758()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_10031186C;
  }

  else
  {
    v2 = sub_100318F84;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10031186C()
{
  v0[2] = v0[7];
  sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  CheckedContinuation.resume(throwing:)();
  v1 = v0[1];

  return v1();
}

uint64_t sub_100311958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v21[0] = a8;
  v21[1] = a4;
  v13 = type metadata accessor for UUID();
  __chkstk_darwin(v13 - 8);
  v14 = sub_10004B564(a5, a6);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v21 - v16;
  type metadata accessor for WorkItemQueue.WorkItem();
  (*(v15 + 16))(v17, a1, v14);
  v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  (*(v15 + 32))(v19 + v18, v17, v14);

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_100311B30(int *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 88) = a3;
  v6 = (a1 + *a1);
  v4 = swift_task_alloc();
  *(v3 + 96) = v4;
  *v4 = v3;
  v4[1] = sub_100311C24;

  return v6(v3 + 16);
}

uint64_t sub_100311C24()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_100311DE0;
  }

  else
  {
    v2 = sub_100311D38;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100311D38()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v0[6] = v1;
  v0[7] = v2;
  v0[8] = v3;
  v0[9] = v4;
  sub_1003185CC(v1, v2, v3, v4);
  sub_10004B564(&qword_1005B1C70, &qword_1004D5DA0);
  CheckedContinuation.resume(returning:)();
  sub_1000F4DB8(v0[2], v0[3], v0[4], v0[5]);
  v5 = v0[1];

  return v5();
}

uint64_t sub_100311DE0()
{
  v0[10] = v0[13];
  sub_10004B564(&qword_1005B1C70, &qword_1004D5DA0);
  CheckedContinuation.resume(throwing:)();
  v1 = v0[1];

  return v1();
}

uint64_t sub_100311E6C(int *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a3;
  v6 = (a1 + *a1);
  v4 = swift_task_alloc();
  *(v3 + 48) = v4;
  *v4 = v3;
  v4[1] = sub_100311F60;

  return v6(v3 + 16);
}

uint64_t sub_100311F60()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_100312100;
  }

  else
  {
    v2 = sub_100312074;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100312074()
{
  v0[4] = v0[2];
  sub_10004B564(&qword_1005B1C58, &qword_1004D5D68);
  CheckedContinuation.resume(returning:)();
  v1 = v0[1];

  return v1();
}

uint64_t sub_100312100()
{
  v0[3] = v0[7];
  sub_10004B564(&qword_1005B1C58, &qword_1004D5D68);
  CheckedContinuation.resume(throwing:)();
  v1 = v0[1];

  return v1();
}

uint64_t sub_10031218C(int *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = a3;
  v6 = (a1 + *a1);
  v4 = swift_task_alloc();
  *(v3 + 32) = v4;
  *v4 = v3;
  v4[1] = sub_100312278;

  return v6();
}

uint64_t sub_100312278()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_100312408;
  }

  else
  {
    v2 = sub_10031238C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10031238C()
{
  sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  CheckedContinuation.resume(returning:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100312408()
{
  v0[2] = v0[5];
  sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  CheckedContinuation.resume(throwing:)();
  v1 = v0[1];

  return v1();
}

uint64_t sub_100312494(int *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = a3;
  v6 = (a1 + *a1);
  v4 = swift_task_alloc();
  *(v3 + 32) = v4;
  *v4 = v3;
  v4[1] = sub_100312588;

  return v6(v3 + 48);
}

uint64_t sub_100312588()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_100312728;
  }

  else
  {
    v2 = sub_10031269C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10031269C()
{
  *(v0 + 49) = *(v0 + 48);
  sub_10004B564(&unk_1005A9578, &unk_1004C29A0);
  CheckedContinuation.resume(returning:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100312728()
{
  v0[2] = v0[5];
  sub_10004B564(&unk_1005A9578, &unk_1004C29A0);
  CheckedContinuation.resume(throwing:)();
  v1 = v0[1];

  return v1();
}

uint64_t sub_1003127B4(int *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 88) = a3;
  v6 = (a1 + *a1);
  v4 = swift_task_alloc();
  *(v3 + 96) = v4;
  *v4 = v3;
  v4[1] = sub_1003128A8;

  return v6(v3 + 16);
}

uint64_t sub_1003128A8()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_100312A64;
  }

  else
  {
    v2 = sub_1003129BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003129BC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v0[6] = v1;
  v0[7] = v2;
  v0[8] = v3;
  v0[9] = v4;
  sub_1003185CC(v1, v2, v3, v4);
  sub_10004B564(&qword_1005B1C80, &qword_1004D5E20);
  CheckedContinuation.resume(returning:)();
  sub_1000F4DB8(v0[2], v0[3], v0[4], v0[5]);
  v5 = v0[1];

  return v5();
}

uint64_t sub_100312A64()
{
  v0[10] = v0[13];
  sub_10004B564(&qword_1005B1C80, &qword_1004D5E20);
  CheckedContinuation.resume(throwing:)();
  v1 = v0[1];

  return v1();
}

uint64_t sub_100312AF0(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 88) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return _swift_task_switch(sub_100312B10, a2, 0);
}

uint64_t sub_100312B10()
{
  v1 = 0xD000000000000014;
  v2 = "aredKeysImported";
  if (*(v0 + 88) != 1)
  {
    v1 = 0xD000000000000020;
    v2 = "readServerSettings()";
  }

  if (*(v0 + 88))
  {
    v3 = v1;
  }

  else
  {
    v3 = 0xD00000000000001BLL;
  }

  if (*(v0 + 88))
  {
    v4 = v2;
  }

  else
  {
    v4 = "secureLocationLabels";
  }

  *(v0 + 32) = v4;
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_100312C08;

  return sub_10032C09C(v3, v4 | 0x8000000000000000);
}

uint64_t sub_100312C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  *(*v5 + 48) = v4;

  if (v4)
  {
    v11 = v10[3];
    v12 = sub_100318FA0;
  }

  else
  {
    v13 = v10[3];

    v10[7] = a4;
    v10[8] = a3;
    v10[9] = a2;
    v10[10] = a1;
    v12 = sub_100318F68;
    v11 = v13;
  }

  return _swift_task_switch(v12, v11, 0);
}

uint64_t sub_100312D68(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 57) = a1;
  return _swift_task_switch(sub_100312D8C, v1, 0);
}

uint64_t sub_100312D8C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 57);
  v3 = *(v1 + 192);
  v4 = swift_allocObject();
  *(v0 + 24) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v6 = sub_10000D108(&qword_1005AAB90, v5, type metadata accessor for LocalStorageService, &unk_1004D5A90);

  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  v7[2] = &unk_1004D5D10;
  v7[3] = v4;
  v7[4] = v3;
  v8 = swift_task_alloc();
  *(v0 + 40) = v8;
  *v8 = v0;
  v8[1] = sub_100312F0C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 56, v1, v6, 0xD00000000000001DLL, 0x80000001004E0910, sub_100317C00, v7, &type metadata for Bool);
}

uint64_t sub_100312F0C()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);

    return _swift_task_switch(sub_100313058, v3, 0);
  }

  else
  {

    v4 = *(v2 + 56);
    v5 = *(v2 + 8);

    return v5(v4);
  }
}

uint64_t sub_100313058()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1003130C8(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 56) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return _swift_task_switch(sub_1003130E8, a2, 0);
}

uint64_t sub_1003130E8()
{
  v1 = 0xD000000000000014;
  v2 = "aredKeysImported";
  if (*(v0 + 56) != 1)
  {
    v1 = 0xD000000000000020;
    v2 = "readServerSettings()";
  }

  if (*(v0 + 56))
  {
    v3 = v1;
  }

  else
  {
    v3 = 0xD00000000000001BLL;
  }

  if (*(v0 + 56))
  {
    v4 = v2;
  }

  else
  {
    v4 = "secureLocationLabels";
  }

  *(v0 + 32) = v4;
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_1003131E0;

  return sub_10032D348(v3, v4 | 0x8000000000000000);
}

uint64_t sub_1003131E0(char a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = *(v4 + 24);
    v6 = sub_100313348;
  }

  else
  {
    v7 = *(v4 + 24);

    *(v4 + 57) = a1 & 1;
    v6 = sub_100313324;
    v5 = v7;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100313348()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003133B0()
{
  v1[3] = v0;
  v2 = type metadata accessor for SecureLocation(0);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_10031347C, v0, 0);
}

uint64_t sub_10031347C(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = *(v3 + 200);
  v5 = sub_10000D108(&qword_1005AAB90, a2, type metadata accessor for LocalStorageService, &unk_1004D5A90);

  v6 = swift_task_alloc();
  v2[8] = v6;
  v6[2] = &unk_1004D5D58;
  v6[3] = v3;
  v6[4] = v4;
  v7 = swift_task_alloc();
  v2[9] = v7;
  v8 = sub_10004B564(&qword_1005B1C50, &qword_1004D5D60);
  *v7 = v2;
  v7[1] = sub_1003135E4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v2 + 2, v3, v5, 0xD00000000000001DLL, 0x80000001004E0910, sub_100317EB8, v6, v8);
}

uint64_t sub_1003135E4()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = v2[3];
    v4 = sub_100313A18;
  }

  else
  {
    v5 = v2[3];

    v2[11] = v2[2];
    v4 = sub_100313728;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100313728()
{
  v1 = v0[11];
  v2 = *(v1 + 16);
  if (v2)
  {
    v16 = v0[5];
    result = sub_100239440(0, v2, 0);
    v4 = 0;
    v5 = v0[10];
    v6 = (v1 + 56);
    v17 = v2;
    v18 = v1;
    while (1)
    {
      if (v4 >= *(v1 + 16))
      {
        __break(1u);
        return result;
      }

      v7 = *(v6 - 1);
      v8 = *v6;
      type metadata accessor for PropertyListDecoder();
      swift_allocObject();

      sub_100005F6C(v7, v8);
      PropertyListDecoder.init()();
      sub_10000D108(&qword_1005AB000, 255, type metadata accessor for SecureLocation, &unk_1004C2CA0);
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
      if (v5)
      {
        break;
      }

      v10 = v0[6];
      v9 = v0[7];

      sub_1000049D0(v7, v8);

      sub_100318718(v10, v9, type metadata accessor for SecureLocation);
      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        sub_100239440((v11 > 1), v12 + 1, 1);
      }

      ++v4;
      v13 = v0[7];
      _swiftEmptyArrayStorage[2] = v12 + 1;
      result = sub_100318718(v13, _swiftEmptyArrayStorage + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v12, type metadata accessor for SecureLocation);
      v5 = 0;
      v6 += 4;
      v1 = v18;
      if (v17 == v4)
      {
        goto LABEL_8;
      }
    }

    sub_1000049D0(v7, v8);

    v14 = v0[1];

    return v14();
  }

  else
  {
LABEL_8:

    v15 = v0[1];

    return v15(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100313A18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100313A98(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100313AB4, a2, 0);
}

uint64_t sub_100313AB4()
{
  if (qword_1005A8170 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Table();
  v2 = sub_10000A6F0(v1, qword_1005E0120);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_10008420C;

  return sub_10032DAAC(v2);
}

uint64_t sub_100313B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v5 = type metadata accessor for SecureLocation(0);
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_100313C58, v3, 0);
}

uint64_t sub_100313C58()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = *(v1 + 200);
  v5 = swift_allocObject();
  v0[13] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v7 = sub_10000D108(&qword_1005AAB90, v6, type metadata accessor for LocalStorageService, &unk_1004D5A90);

  v8 = swift_task_alloc();
  v0[14] = v8;
  v8[2] = &unk_1004D5E48;
  v8[3] = v5;
  v8[4] = v4;
  v9 = swift_task_alloc();
  v0[15] = v9;
  v10 = sub_10004B564(&qword_1005B1C78, &qword_1004D5E18);
  *v9 = v0;
  v9[1] = sub_100313DF0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, v1, v7, 0xD00000000000001DLL, 0x80000001004E0910, sub_100318F94, v8, v10);
}

uint64_t sub_100313DF0()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = sub_1003140DC;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_100313F20;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100313F20()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[2];
    v3 = v0[4];
    v4 = v0[5];
    v5 = v0[16];
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_10000D108(&qword_1005AB000, 255, type metadata accessor for SecureLocation, &unk_1004C2CA0);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    if (v5)
    {
      sub_1000F4DB8(v2, v1, v3, v4);

      v6 = v0[1];
      goto LABEL_7;
    }

    v8 = v0[12];
    v9 = v0[6];
    sub_1000F4DB8(v2, v1, v3, v4);

    sub_100318718(v8, v9, type metadata accessor for SecureLocation);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  (*(v0[11] + 56))(v0[6], v7, 1, v0[10]);

  v6 = v0[1];
LABEL_7:

  return v6();
}

uint64_t sub_1003140DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100314150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100314170, a2, 0);
}

uint64_t sub_100314170()
{
  if (qword_1005A8170 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Table();
  v2 = sub_10000A6F0(v1, qword_1005E0120);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_100314258;
  v5 = v0[4];
  v4 = v0[5];

  return sub_10032E450(v5, v4, v2);
}

uint64_t sub_100314258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v11 = *v5;

  if (v4)
  {
    v12 = v11[1];

    return v12();
  }

  else
  {
    v14 = v10[3];
    v10[7] = a4;
    v10[8] = a3;
    v10[9] = a2;
    v10[10] = a1;

    return _swift_task_switch(sub_1003143CC, v14, 0);
  }
}

uint64_t sub_1003143CC()
{
  v1 = *(v0 + 16);
  v2 = vextq_s8(*(v0 + 56), *(v0 + 56), 8uLL);
  *v1 = vextq_s8(*(v0 + 72), *(v0 + 72), 8uLL);
  v1[1] = v2;
  return (*(v0 + 8))();
}

uint64_t sub_1003143FC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(type metadata accessor for SecureLocation(0) - 8);
  v2[4] = v3;
  v2[5] = *(v3 + 64);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1003144C0, v1, 0);
}

uint64_t sub_1003144C0()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 200);
  sub_100318DB4(v0[2], v1, type metadata accessor for SecureLocation);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[7] = v6;
  *(v6 + 16) = v2;
  sub_100318718(v1, v6 + v5, type metadata accessor for SecureLocation);
  v8 = sub_10000D108(&qword_1005AAB90, v7, type metadata accessor for LocalStorageService, &unk_1004D5A90);

  v9 = swift_task_alloc();
  v0[8] = v9;
  v9[2] = &unk_1004D5F00;
  v9[3] = v6;
  v9[4] = v4;
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_100314684;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, v2, v8, 0xD00000000000001DLL, 0x80000001004E0910, sub_100318F98, v9, &type metadata for () + 1);
}

uint64_t sub_100314684()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_100314818;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_1003147B4;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003147B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100314818()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100314890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v3[4] = type metadata accessor for SecureLocation(0);
  v3[5] = swift_task_alloc();

  return _swift_task_switch(sub_100314928, a2, 0);
}

uint64_t sub_100314928()
{
  v1 = v0[5];
  v2 = v0[3];
  v4 = *v2;
  v3 = v2[1];
  v0[6] = v3;
  sub_100318DB4(v2, v1, type metadata accessor for SecureLocation);
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();

  PropertyListEncoder.init()();
  sub_10000D108(&qword_1005AB008, 255, type metadata accessor for SecureLocation, &unk_1004C2C78);
  v5 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v7 = v6;
  v0[7] = v5;
  v0[8] = v6;
  sub_100318F00(v1, type metadata accessor for SecureLocation);

  if (qword_1005A8170 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Table();
  v9 = sub_10000A6F0(v8, qword_1005E0120);
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_100314B64;

  return sub_10032EFC0(v4, v3, v5, v7, v9);
}

uint64_t sub_100314B64()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {
    v3 = v2[2];

    return _swift_task_switch(sub_100314CC8, v3, 0);
  }

  else
  {
    v5 = v2[7];
    v4 = v2[8];

    sub_1000049D0(v5, v4);

    v6 = v2[1];

    return v6();
  }
}

uint64_t sub_100314CC8()
{
  v1 = v0[7];
  v2 = v0[8];

  sub_1000049D0(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100314D44(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_100314D68, v2, 0);
}

uint64_t sub_100314D68()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = *(v1 + 200);
  v5 = swift_allocObject();
  v0[5] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v7 = sub_10000D108(&qword_1005AAB90, v6, type metadata accessor for LocalStorageService, &unk_1004D5A90);

  v8 = swift_task_alloc();
  v0[6] = v8;
  v8[2] = &unk_1004D5DE0;
  v8[3] = v5;
  v8[4] = v4;
  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = sub_100314EF0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 9, v1, v7, 0xD00000000000001DLL, 0x80000001004E0910, sub_100318F90, v8, &type metadata for Bool);
}

uint64_t sub_100314EF0()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);

    return _swift_task_switch(sub_10031503C, v3, 0);
  }

  else
  {

    v4 = *(v2 + 72);
    v5 = *(v2 + 8);

    return v5(v4);
  }
}

uint64_t sub_10031503C()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1003150AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_1003150CC, a2, 0);
}

uint64_t sub_1003150CC()
{
  if (qword_1005A8170 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Table();
  v2 = sub_10000A6F0(v1, qword_1005E0120);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1003151B4;
  v5 = v0[4];
  v4 = v0[5];

  return sub_10032F670(v5, v4, v2);
}

uint64_t sub_1003151B4(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v4 + 24);
    *(v4 + 56) = a1 & 1;

    return _swift_task_switch(sub_100315304, v8, 0);
  }
}

uint64_t sub_100315328(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100315344, a2, 0);
}

uint64_t sub_100315344()
{
  if (qword_1005A8178 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Table();
  v2 = sub_10000A6F0(v1, qword_1005E0138);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_100315424;

  return sub_10032DAAC(v2);
}

uint64_t sub_100315424(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v4 + 24);
    *(v4 + 40) = a1;

    return _swift_task_switch(sub_100318F78, v8, 0);
  }
}

uint64_t sub_100315570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v5 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_100315634, v3, 0);
}

uint64_t sub_100315634()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = *(v1 + 208);
  v5 = swift_allocObject();
  v0[13] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v7 = sub_10000D108(&qword_1005AAB90, v6, type metadata accessor for LocalStorageService, &unk_1004D5A90);

  v8 = swift_task_alloc();
  v0[14] = v8;
  v8[2] = &unk_1004D5E10;
  v8[3] = v5;
  v8[4] = v4;
  v9 = swift_task_alloc();
  v0[15] = v9;
  v10 = sub_10004B564(&qword_1005B1C78, &qword_1004D5E18);
  *v9 = v0;
  v9[1] = sub_1003157CC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, v1, v7, 0xD00000000000001DLL, 0x80000001004E0910, sub_1003183D8, v8, v10);
}

uint64_t sub_1003157CC()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = sub_100318F74;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_1003158FC;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003158FC()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[2];
    v3 = v0[4];
    v4 = v0[5];
    v5 = v0[16];
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_10000D108(&qword_1005B1C68, 255, type metadata accessor for SecureLocationsCachedSharedKey, &unk_1004C4558);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    if (v5)
    {
      sub_1000F4DB8(v2, v1, v3, v4);

      v6 = v0[1];
      goto LABEL_7;
    }

    v8 = v0[12];
    v9 = v0[6];
    sub_1000F4DB8(v2, v1, v3, v4);

    sub_100318718(v8, v9, type metadata accessor for SecureLocationsCachedSharedKey);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  (*(v0[11] + 56))(v0[6], v7, 1, v0[10]);

  v6 = v0[1];
LABEL_7:

  return v6();
}

uint64_t sub_100315AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100315AD8, a2, 0);
}

uint64_t sub_100315AD8()
{
  if (qword_1005A8178 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Table();
  v2 = sub_10000A6F0(v1, qword_1005E0138);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_100315BC0;
  v5 = v0[4];
  v4 = v0[5];

  return sub_10032E450(v5, v4, v2);
}

uint64_t sub_100315BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v11 = *v5;

  if (v4)
  {
    v12 = v11[1];

    return v12();
  }

  else
  {
    v14 = v10[3];
    v10[7] = a4;
    v10[8] = a3;
    v10[9] = a2;
    v10[10] = a1;

    return _swift_task_switch(sub_100318F68, v14, 0);
  }
}

uint64_t sub_100315D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v3[4] = type metadata accessor for SecureLocationsCachedSharedKey(0);
  v3[5] = swift_task_alloc();

  return _swift_task_switch(sub_100315DCC, a2, 0);
}

uint64_t sub_100315DCC()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = (v2 + *(v0[4] + 20));
  v5 = *v3;
  v4 = v3[1];
  v0[6] = v4;
  sub_100318DB4(v2, v1, type metadata accessor for SecureLocationsCachedSharedKey);
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();

  PropertyListEncoder.init()();
  sub_10000D108(&qword_1005B1C60, 255, type metadata accessor for SecureLocationsCachedSharedKey, &unk_1004C4530);
  v6 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v8 = v7;
  v0[7] = v6;
  v0[8] = v7;
  sub_100318F00(v1, type metadata accessor for SecureLocationsCachedSharedKey);

  if (qword_1005A8178 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Table();
  v10 = sub_10000A6F0(v9, qword_1005E0138);
  v11 = swift_task_alloc();
  v0[9] = v11;
  *v11 = v0;
  v11[1] = sub_100316010;

  return sub_10032EFC0(v5, v4, v6, v8, v10);
}

uint64_t sub_100316010()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {
    v3 = v2[2];

    return _swift_task_switch(sub_100318F60, v3, 0);
  }

  else
  {
    v5 = v2[7];
    v4 = v2[8];

    sub_1000049D0(v5, v4);

    v6 = v2[1];

    return v6();
  }
}

uint64_t sub_100316174(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_100316198, v2, 0);
}

uint64_t sub_100316198()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = *(v1 + 208);
  v5 = swift_allocObject();
  v0[5] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v7 = sub_10000D108(&qword_1005AAB90, v6, type metadata accessor for LocalStorageService, &unk_1004D5A90);

  v8 = swift_task_alloc();
  v0[6] = v8;
  v8[2] = &unk_1004D5DF8;
  v8[3] = v5;
  v8[4] = v4;
  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = sub_100316320;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 9, v1, v7, 0xD00000000000001DLL, 0x80000001004E0910, sub_100318F90, v8, &type metadata for Bool);
}

uint64_t sub_100316320()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);

    return _swift_task_switch(sub_100318F7C, v3, 0);
  }

  else
  {

    v4 = *(v2 + 72);
    v5 = *(v2 + 8);

    return v5(v4);
  }
}

uint64_t sub_10031646C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_10031648C, a2, 0);
}

uint64_t sub_10031648C()
{
  if (qword_1005A8178 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Table();
  v2 = sub_10000A6F0(v1, qword_1005E0138);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_100316574;
  v5 = v0[4];
  v4 = v0[5];

  return sub_10032F670(v5, v4, v2);
}

uint64_t sub_100316574(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v4 + 24);
    *(v4 + 56) = a1 & 1;

    return _swift_task_switch(sub_100318F6C, v8, 0);
  }
}

uint64_t sub_1003166C4()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0AB0);
  sub_10000A6F0(v0, qword_1005E0AB0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100316744()
{
  v2 = *(type metadata accessor for Fence.ID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10000368C;

  return sub_10030EF14(v7, v0 + v3, v0 + v6);
}

uint64_t sub_100316884()
{
  v2 = *(type metadata accessor for FenceTriggerRecord(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10000368C;

  return sub_10031131C(v7, v0 + v3, v0 + v6);
}

uint64_t sub_1003169C4()
{
  v2 = *(type metadata accessor for Fence.ID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_10004B564(&qword_1005B1C28, &qword_1004D5B28) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10000368C;

  return sub_100310C9C(v7, v0 + v3, v0 + v6);
}

uint64_t sub_100316B04()
{
  v2 = *(type metadata accessor for Fence.ID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10000368C;

  return sub_100311698(v7, v0 + v3, v0 + v6);
}

uint64_t sub_100316C44()
{
  v2 = *(type metadata accessor for Fence.ID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_10004B564(&qword_1005B1C30, &qword_1004D5B68) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10000368C;

  return sub_10030F4DC(v7, v0 + v3, v0 + v6);
}

uint64_t sub_100316D84()
{
  v2 = *(sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_10030F9F0(v4, v5, v0 + v3);
}

uint64_t sub_100316E78()
{
  v2 = *(sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0) - 8);
  v3 = (*(v2 + 80) + 504) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_10030E1EC(v4, v0 + 24, v0 + v3);
}

uint64_t sub_100316F98()
{
  v2 = *(sub_10004B564(&qword_1005B1C40, &qword_1004D5BF0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_10030E89C(v4, v0 + v3);
}

uint64_t sub_1003170FC()
{
  v2 = *(sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_10030C514(v4, v5, v0 + v3);
}

uint64_t sub_10031726C()
{
  v2 = *(sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_10030CBC8(v4, v5, v0 + v3);
}

uint64_t sub_100317398()
{
  v1 = sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10031747C()
{
  v2 = *(sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_10030D2EC(v4, v5, v0 + v3);
}

uint64_t sub_10031759C(uint64_t *a1, uint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  v7 = sub_10004B564(a1, a2);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 + 32) & ~v9;
  v11 = *(v8 + 64);
  a3(*(v4 + 16));
  a4(*(v4 + 24));
  (*(v8 + 8))(v4 + v10, v7);

  return _swift_deallocObject(v4, v10 + v11, v9 | 7);
}

uint64_t sub_10031767C(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_10004B564(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v7 + 8, v5 | 7);
}

uint64_t sub_100317748(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = a1(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 24) & ~v8;
  v10 = *(v7 + 64);
  v11 = sub_10004B564(a2, a3);
  v12 = *(v11 - 8);
  v13 = *(v12 + 80);
  v14 = (v9 + v10 + v13) & ~v13;
  v15 = *(v12 + 64);
  v16 = v8 | v13;

  (*(v7 + 8))(v3 + v9, v6);
  (*(v12 + 8))(v3 + v14, v11);

  return _swift_deallocObject(v3, v14 + v15, v16 | 7);
}

uint64_t sub_1003178AC()
{
  v2 = *(type metadata accessor for URL() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10000368C;

  return sub_100310920(v7, v0 + v3, v0 + v6);
}

uint64_t sub_1003179EC()
{
  v2 = *(type metadata accessor for URL() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0) - 8);
  v6 = (v4 + *(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = v0 + v4;
  v9 = *(v0 + v4);
  v10 = *(v8 + 8);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_10000368C;

  return sub_100310380(v7, v0 + v3, v9, v10, v0 + v6);
}

uint64_t sub_100317B50(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000368C;

  return sub_1003130C8(a1, v4, v5);
}

uint64_t sub_100317C4C()
{
  v2 = *(sub_10004B564(&unk_1005A9578, &unk_1004C29A0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_100312494(v4, v5, v0 + v3);
}

uint64_t sub_100317D34()
{
  v2 = *(sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_10031218C(v4, v5, v0 + v3);
}

uint64_t sub_100317E1C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000368C;

  return sub_100313A98(a1, v1);
}

uint64_t sub_100317F04()
{
  v2 = *(sub_10004B564(&qword_1005B1C58, &qword_1004D5D68) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_100311E6C(v4, v5, v0 + v3);
}

uint64_t sub_100317FEC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000368C;

  return sub_100315328(a1, v1);
}

uint64_t sub_100318088()
{
  v2 = *(sub_10004B564(&qword_1005B1C70, &qword_1004D5DA0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_100311B30(v4, v5, v0 + v3);
}

uint64_t sub_1003181BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_1003150AC(a1, v4, v5, v6);
}

uint64_t sub_100318270(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_10031646C(a1, v4, v5, v6);
}

uint64_t sub_100318324(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_100315AB8(a1, v4, v5, v6);
}

uint64_t sub_100318424(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_10004B564(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v4 + 64);

  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_1003184E4()
{
  v2 = *(sub_10004B564(&qword_1005B1C80, &qword_1004D5E20) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_1003127B4(v4, v5, v0 + v3);
}

void sub_1003185CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_100005F6C(a3, a4);
  }
}

uint64_t sub_100318618()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100318658(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_100314150(a1, v4, v5, v6);
}

uint64_t sub_100318718(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100318780()
{
  v2 = *(type metadata accessor for OwnerSharedSecretsRecord(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = *(v0 + v4);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10000368C;

  return sub_10030AD10(v0 + v3, v7, v0 + v6);
}

uint64_t sub_100318910()
{
  v2 = *(sub_10004B564(&qword_1005B1C90, &qword_1004D5E70) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_10030A39C(v0 + v3, v4);
}

uint64_t sub_100318A30(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_10004B564(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v4 + 64);

  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_100318AF0()
{
  v2 = *(sub_10004B564(&qword_1005B1C98, &qword_1004D5EA0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_10030FDA4(v4, v0 + v3);
}

uint64_t sub_100318BE0()
{
  v2 = *(type metadata accessor for Handle() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_10004B564(&qword_1005B1CA0, &qword_1004D5ED0) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for HandleType() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v0 + 16);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_10000368C;

  return sub_10030BCCC(v10, v0 + v3, v0 + v6, v0 + v9);
}

uint64_t sub_100318DB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100318E1C(uint64_t a1)
{
  v4 = *(type metadata accessor for SecureLocation(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_100314890(a1, v6, v1 + v5);
}

uint64_t sub_100318F00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_100318FB0(uint64_t a1)
{
  v35 = type metadata accessor for Device();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v5)
  {
    v27 = v1;
    v39 = _swiftEmptyArrayStorage;
    sub_10002B3C0(0, v5, 0);
    v38 = v39;
    v7 = a1 + 56;
    result = _HashTable.startBucket.getter();
    v8 = result;
    v9 = 0;
    v32 = v3 + 8;
    v33 = v3 + 16;
    v28 = a1 + 64;
    v29 = v5;
    v30 = v3;
    v31 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v12 = v34;
      v13 = v35;
      (*(v3 + 16))(v34, *(a1 + 48) + *(v3 + 72) * v8, v35);
      v37 = Device.identifier.getter();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v38;
      v39 = v38;
      v18 = v38[2];
      v17 = v38[3];
      if (v18 >= v17 >> 1)
      {
        result = sub_10002B3C0((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      v16[2] = v18 + 1;
      v19 = &v16[2 * v18];
      v19[4] = v37;
      v19[5] = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = *(v31 + 8 * v11);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v16;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v30;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v28 + 8 * v11);
        v3 = v30;
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_10002F14C(v8, v36, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_10002F14C(v8, v36, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v29)
      {
        return v38;
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
  }

  return result;
}

uint64_t sub_1003192B8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for Row();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v4 = type metadata accessor for Table();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_1003193F8, v1, 0);
}

uint64_t sub_1003193F8()
{
  v1 = *(*(v0 + 64) + 112);
  *(v0 + 144) = v1;
  return _swift_task_switch(sub_10031941C, v1, 0);
}

uint64_t sub_10031941C()
{
  sub_10000A0A4();
  *(v0 + 152) = 0;
  v1 = *(v0 + 144);

  return _swift_task_switch(sub_10031950C, v1, 0);
}

uint64_t sub_10031950C()
{
  v1 = *(v0 + 64);
  type metadata accessor for LocalStorageDatabase(0);
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase, &unk_1004D5700);
  *(v0 + 160) = Database.readConnection.getter();

  return _swift_task_switch(sub_1003195CC, v1, 0);
}

uint64_t sub_1003195CC()
{
  if (v0[20])
  {
    if (qword_1005A8130 != -1)
    {
      swift_once();
    }

    sub_10000A6F0(v0[14], qword_1005E0060);
    sub_10004B564(&qword_1005AF0D0, &unk_1004D5830);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1004C0BB0;
    if (qword_1005A8180 != -1)
    {
      swift_once();
    }

    v2 = sub_10004B564(&qword_1005AF078, &unk_1004D0260);
    v3 = sub_10000A6F0(v2, qword_1005E0168);
    *(v1 + 56) = v2;
    *(v1 + 64) = sub_10001DF0C(&qword_1005AF0D8, &qword_1005AF078, &unk_1004D0260, &protocol conformance descriptor for Expression<A>);
    v4 = sub_10000331C((v1 + 32));
    (*(*(v2 - 8) + 16))(v4, v3, v2);
    if (qword_1005A81A0 != -1)
    {
      swift_once();
    }

    v5 = sub_10004B564(&qword_1005AF0C8, &unk_1004D02A0);
    v6 = sub_10000A6F0(v5, qword_1005E01C8);
    *(v1 + 96) = v5;
    *(v1 + 104) = sub_10001DF0C(&qword_1005B1DF8, &qword_1005AF0C8, &unk_1004D02A0, &protocol conformance descriptor for Expression<A>);
    v7 = sub_10000331C((v1 + 72));
    (*(*(v5 - 8) + 16))(v7, v6, v5);
    if (qword_1005A8190 != -1)
    {
      swift_once();
    }

    v8 = sub_10004B564(&qword_1005AF0B8, &qword_1004D5850);
    v9 = sub_10000A6F0(v8, qword_1005E0198);
    *(v1 + 136) = v8;
    *(v1 + 144) = sub_10001DF0C(&qword_1005B1E00, &qword_1005AF0B8, &qword_1004D5850, &protocol conformance descriptor for Expression<A>);
    v10 = sub_10000331C((v1 + 112));
    (*(*(v8 - 8) + 16))(v10, v9, v8);
    if (qword_1005A8198 != -1)
    {
      swift_once();
    }

    v36 = v0[19];
    v12 = v0[16];
    v11 = v0[17];
    v13 = v0[14];
    v14 = v0[15];
    v15 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
    v16 = sub_10000A6F0(v15, qword_1005E01B0);
    *(v1 + 176) = v15;
    *(v1 + 184) = sub_10001DF0C(&qword_1005B1E08, &qword_1005AF028, &qword_1004D0238, &protocol conformance descriptor for Expression<A>);
    v17 = sub_10000331C((v1 + 152));
    (*(*(v15 - 8) + 16))(v17, v16, v15);
    SchemaType.select(_:)();

    QueryType.limit(_:)();
    v18 = *(v14 + 8);
    v18(v12, v13);
    v0[5] = v13;
    v0[6] = &protocol witness table for Table;
    v19 = sub_10000331C(v0 + 2);
    (*(v14 + 16))(v19, v11, v13);
    Connection.prepare(_:)();
    if (!v36)
    {
      sub_100004984(v0 + 2);
      v24 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

      if (*(v24 + 16))
      {
        v25 = v0[13];
        v26 = v0[10];
        v35 = v0[12];
        v37 = v0[11];
        v27 = v0[9];
        v38 = v0[7];
        v28 = *(v26 + 16);
        v28();

        (*(v26 + 32))(v25, v35, v27);
        (v28)(v37, v25, v27);
        sub_10032FECC(v37, v38);
        v29 = v0[13];
        v30 = v0[9];
        v31 = v0[10];

        (*(v31 + 8))(v29, v30);
        v32 = 0;
      }

      else
      {

        v32 = 1;
      }

      v33 = v0[7];
      v18(v0[17], v0[14]);
      v34 = type metadata accessor for OwnerSharedSecretsRecord(0);
      (*(*(v34 - 8) + 56))(v33, v32, 1, v34);

      v22 = v0[1];
      goto LABEL_16;
    }

    v18(v0[17], v0[14]);

    sub_100004984(v0 + 2);
  }

  else
  {
    v20 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError, &protocol conformance descriptor for DatabaseError);
    swift_allocError();
    (*(*(v20 - 8) + 104))(v21, enum case for DatabaseError.notConnected(_:), v20);
    swift_willThrow();
  }

  v22 = v0[1];
LABEL_16:

  return v22();
}

uint64_t sub_100319D70(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Insert();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100319E30, v1, 0);
}

uint64_t sub_100319E30()
{
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 56) = v1;
  return _swift_task_switch(sub_100319E54, v1, 0);
}

uint64_t sub_100319E54()
{
  sub_10000A0A4();
  *(v0 + 64) = 0;
  v1 = *(v0 + 56);

  return _swift_task_switch(sub_100319F10, v1, 0);
}

uint64_t sub_100319F10()
{
  v1 = *(v0 + 24);
  type metadata accessor for LocalStorageDatabase(0);
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase, &unk_1004D5700);
  *(v0 + 72) = Database.writeConnection.getter();

  return _swift_task_switch(sub_100319FD0, v1, 0);
}

uint64_t sub_100319FD0()
{
  if (v0[9])
  {
    v1 = swift_task_alloc();
    v0[10] = v1;
    *v1 = v0;
    v1[1] = sub_10031A154;
    v2 = v0[6];
    v3 = v0[2];

    return sub_100330374(v2, v3);
  }

  else
  {
    v5 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError, &protocol conformance descriptor for DatabaseError);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for DatabaseError.notConnected(_:), v5);
    swift_willThrow();

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_10031A154()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_10031A264, v1, 0);
}

uint64_t sub_10031A264()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  Connection.run(_:)();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10031A318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v6 = type metadata accessor for Table();
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_10031A444, 0, 0);
}

uint64_t sub_10031A444()
{
  v1 = *(*(v0 + 96) + 112);
  *(v0 + 152) = v1;
  return _swift_task_switch(sub_10031A468, v1, 0);
}

uint64_t sub_10031A468()
{
  sub_10000A0A4();
  *(v0 + 160) = 0;
  v1 = *(v0 + 152);

  return _swift_task_switch(sub_10031A530, v1, 0);
}

uint64_t sub_10031A530()
{
  type metadata accessor for LocalStorageDatabase(0);
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase, &unk_1004D5700);
  *(v0 + 168) = Database.readConnection.getter();

  return _swift_task_switch(sub_10031A5E4, 0, 0);
}

uint64_t sub_10031A5E4()
{
  if (!*(v0 + 168))
  {
    v11 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError, &protocol conformance descriptor for DatabaseError);
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, enum case for DatabaseError.notConnected(_:), v11);
    swift_willThrow();
    goto LABEL_9;
  }

  if (qword_1005A8138 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(*(v0 + 128), qword_1005E0078);
  if (qword_1005A81A8 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 160);
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 112);
  v15 = *(v0 + 104);
  v6 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
  sub_10000A6F0(v6, qword_1005E01E0);
  *(v0 + 56) = String.lowercased()();
  == infix<A>(_:_:)();

  QueryType.filter(_:)();
  (*(v5 + 8))(v4, v15);
  *(v0 + 40) = v3;
  *(v0 + 48) = &protocol witness table for Table;
  v7 = sub_10000331C((v0 + 16));
  (*(v1 + 16))(v7, v2, v3);
  sub_10000A728(v0 + 16);
  v9 = *(v0 + 136);
  v8 = *(v0 + 144);
  v10 = *(v0 + 128);
  if (v16)
  {
    (*(v9 + 8))(*(v0 + 144), *(v0 + 128));

    sub_100004984((v0 + 16));
LABEL_9:

    v13 = *(v0 + 8);
    goto LABEL_11;
  }

  sub_100004984((v0 + 16));
  dispatch thunk of _AnySequenceBox._makeIterator()();

  dispatch thunk of _AnyIteratorBoxBase.next()();

  (*(v9 + 8))(v8, v10);

  v13 = *(v0 + 8);
LABEL_11:

  return v13();
}

uint64_t sub_10031A92C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Insert();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for FriendRecord(0);
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for Delete();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_10031AAA4, v1, 0);
}

uint64_t sub_10031AAA4()
{
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 104) = v1;
  return _swift_task_switch(sub_10031AAC8, v1, 0);
}

uint64_t sub_10031AAC8()
{
  sub_10000A0A4();
  *(v0 + 112) = 0;
  v1 = *(v0 + 104);

  return _swift_task_switch(sub_10031AB9C, v1, 0);
}

uint64_t sub_10031AB9C()
{
  v1 = *(v0 + 24);
  type metadata accessor for LocalStorageDatabase(0);
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase, &unk_1004D5700);
  *(v0 + 120) = Database.writeConnection.getter();

  return _swift_task_switch(sub_10031AC5C, v1, 0);
}

void sub_10031AC5C()
{
  v22 = v0;
  if (!v0[15])
  {
    v3 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError, &protocol conformance descriptor for DatabaseError);
    swift_allocError();
    (*(*(v3 - 8) + 104))(v4, enum case for DatabaseError.notConnected(_:), v3);
    swift_willThrow();
    goto LABEL_7;
  }

  if (qword_1005A8138 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = type metadata accessor for Table();
  sub_10000A6F0(v2, qword_1005E0078);
  QueryType.delete()();
  Connection.run(_:)();
  if (v1)
  {
    (*(v0[11] + 8))(v0[12], v0[10]);

LABEL_7:

    v5 = v0[1];
LABEL_8:

    v5();
    return;
  }

  v6 = sub_100339AF0(v0[2]);
  v0[16] = v6;
  if (qword_1005A84A0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000A6F0(v7, qword_1005E0AC8);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 141558275;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v12 = Array.description.getter();
    v14 = sub_10000D01C(v12, v13, &v21);

    *(v10 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "LocalStorageSerivice write friendRecords: %{private,mask.hash}s", v10, 0x16u);
    sub_100004984(v11);
  }

  v15 = *(v6 + 16);
  v0[17] = v15;
  if (!v15)
  {
    (*(v0[11] + 8))(v0[12], v0[10]);

    v5 = v0[1];
    goto LABEL_8;
  }

  v16 = v0[8];
  v0[18] = 0;
  v17 = v0[16];
  if (*(v17 + 16))
  {
    sub_10033C390(v17 + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v0[9], type metadata accessor for FriendRecord);
    v18 = swift_task_alloc();
    v0[19] = v18;
    *v18 = v0;
    v18[1] = sub_10031B0A8;
    v19 = v0[9];
    v20 = v0[6];

    sub_100335C5C(v20, v19);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10031B0A8()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 24);
    sub_10033C3F8(v3, type metadata accessor for FriendRecord);

    v5 = sub_10031B46C;
    v6 = v4;
  }

  else
  {
    v7 = *(v2 + 24);
    sub_10033C3F8(*(v2 + 72), type metadata accessor for FriendRecord);
    v5 = sub_10031B210;
    v6 = v7;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_10031B210()
{
  v1 = v0[20];
  Connection.run(_:)();
  if (v1)
  {
    v3 = v0[11];
    v2 = v0[12];
    v4 = v0[10];
    v6 = v0[5];
    v5 = v0[6];
    v7 = v0[4];

    (*(v6 + 8))(v5, v7);
    (*(v3 + 8))(v2, v4);

    v8 = v0[1];
LABEL_5:

    return v8();
  }

  v9 = v0[17];
  v10 = v0[18] + 1;
  result = (*(v0[5] + 8))(v0[6], v0[4]);
  if (v10 == v9)
  {
    (*(v0[11] + 8))(v0[12], v0[10]);

    v8 = v0[1];
    goto LABEL_5;
  }

  v12 = v0[18] + 1;
  v0[18] = v12;
  v13 = v0[16];
  if (v12 >= *(v13 + 16))
  {
    __break(1u);
  }

  else
  {
    sub_10033C390(v13 + ((*(v0[8] + 80) + 32) & ~*(v0[8] + 80)) + *(v0[8] + 72) * v12, v0[9], type metadata accessor for FriendRecord);
    v14 = swift_task_alloc();
    v0[19] = v14;
    *v14 = v0;
    v14[1] = sub_10031B0A8;
    v15 = v0[9];
    v16 = v0[6];

    return sub_100335C5C(v16, v15);
  }

  return result;
}

uint64_t sub_10031B46C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10031B518(uint64_t a1)
{
  v2[40] = a1;
  v2[41] = v1;
  v3 = type metadata accessor for Insert();
  v2[42] = v3;
  v2[43] = *(v3 - 8);
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v4 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v2[48] = v4;
  v2[49] = *(v4 - 8);
  v2[50] = swift_task_alloc();
  v5 = type metadata accessor for Delete();
  v2[51] = v5;
  v2[52] = *(v5 - 8);
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v6 = type metadata accessor for HandleType();
  v2[56] = v6;
  v2[57] = *(v6 - 8);
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v7 = type metadata accessor for Handle();
  v2[61] = v7;
  v2[62] = *(v7 - 8);
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  sub_10004B564(&qword_1005B0B88, &qword_1004D5CC0);
  v2[65] = swift_task_alloc();
  v8 = type metadata accessor for FriendRecord(0);
  v2[66] = v8;
  v2[67] = *(v8 - 8);
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v2[70] = swift_task_alloc();
  v2[71] = swift_task_alloc();
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();
  v9 = type metadata accessor for FriendshipAction();
  v2[75] = v9;
  v2[76] = *(v9 - 8);
  v2[77] = swift_task_alloc();
  v2[78] = swift_task_alloc();
  v2[79] = swift_task_alloc();
  v2[80] = swift_task_alloc();
  v2[81] = swift_task_alloc();
  v2[82] = swift_task_alloc();
  v2[83] = swift_task_alloc();
  v2[84] = swift_task_alloc();
  v10 = type metadata accessor for Friend();
  v2[85] = v10;
  v2[86] = *(v10 - 8);
  v2[87] = swift_task_alloc();
  v2[88] = swift_task_alloc();
  v2[89] = swift_task_alloc();
  v2[90] = swift_task_alloc();
  v2[91] = swift_task_alloc();
  sub_10004B564(&qword_1005AFFF8, &unk_1004D2ED0);
  v2[92] = swift_task_alloc();
  v2[93] = swift_task_alloc();
  v11 = type metadata accessor for Table();
  v2[94] = v11;
  v2[95] = *(v11 - 8);
  v2[96] = swift_task_alloc();
  v2[97] = swift_task_alloc();

  return _swift_task_switch(sub_10031BA78, v1, 0);
}

uint64_t sub_10031BA78()
{
  v1 = *(*(v0 + 328) + 112);
  *(v0 + 784) = v1;
  return _swift_task_switch(sub_10031BA9C, v1, 0);
}

uint64_t sub_10031BA9C()
{
  sub_10000A0A4();
  v1 = *(v0 + 784);

  return _swift_task_switch(sub_10031BD60, v1, 0);
}

uint64_t sub_10031BD60()
{
  v1 = *(v0 + 328);
  type metadata accessor for LocalStorageDatabase(0);
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase, &unk_1004D5700);
  *(v0 + 792) = Database.writeConnection.getter();

  return _swift_task_switch(sub_10031BE20, v1, 0);
}

uint64_t sub_10031BE20()
{
  if (!*(v0 + 792))
  {
    v12 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError, &protocol conformance descriptor for DatabaseError);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, enum case for DatabaseError.notConnected(_:), v12);
    swift_willThrow();

    v14 = *(v0 + 8);
LABEL_15:

    return v14();
  }

  if (qword_1005A8138 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 776);
  v2 = *(v0 + 760);
  v3 = *(v0 + 752);
  v4 = *(v0 + 320);
  v5 = sub_10000A6F0(v3, qword_1005E0078);
  (*(v2 + 16))(v1, v5, v3);
  v6 = *(v4 + 32);
  *(v0 + 1008) = v6;
  v7 = -1;
  v8 = -1 << v6;
  if (-(-1 << v6) < 64)
  {
    v7 = ~(-1 << -(-1 << v6));
  }

  v9 = v7 & *(v4 + 64);
  *(v0 + 976) = enum case for HandleType.follower(_:);
  *(v0 + 980) = enum case for HandleType.following(_:);
  *(v0 + 984) = enum case for HandleType.futureFollower(_:);
  *(v0 + 988) = enum case for HandleType.futureFollowing(_:);
  *(v0 + 992) = enum case for HandleType.pendingOffer(_:);
  *(v0 + 996) = enum case for FriendshipAction.remove(_:);
  *(v0 + 1000) = enum case for FriendshipAction.add(_:);
  *(v0 + 1004) = enum case for FriendshipAction.modify(_:);

  if (v9)
  {
    v10 = 0;
    v11 = *(v0 + 320);
LABEL_12:
    v17 = *(v0 + 736);
    v18 = *(v0 + 728);
    v19 = *(v0 + 688);
    v20 = *(v0 + 680);
    v21 = *(v0 + 672);
    v22 = *(v0 + 608);
    v46 = *(v0 + 600);
    v47 = (v9 - 1) & v9;
    v23 = __clz(__rbit64(v9)) | (v10 << 6);
    (*(v19 + 16))(v18, *(v11 + 48) + *(v19 + 72) * v23, v20);
    (*(v22 + 16))(v21, *(v11 + 56) + *(v22 + 72) * v23, v46);
    v24 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
    v25 = *(v24 + 48);
    (*(v19 + 32))(v17, v18, v20);
    (*(v22 + 32))(v17 + v25, v21, v46);
    (*(*(v24 - 8) + 56))(v17, 0, 1, v24);
    v26 = v47;
    v16 = v10;
  }

  else
  {
    v15 = 0;
    v16 = ((63 - v8) >> 6) - 1;
    while (v16 != v15)
    {
      v10 = v15 + 1;
      v11 = *(v0 + 320);
      v9 = *(v11 + 8 * v15++ + 72);
      if (v9)
      {
        goto LABEL_12;
      }
    }

    v44 = *(v0 + 736);
    v45 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
    (*(*(v45 - 8) + 56))(v44, 1, 1, v45);
    v26 = 0;
  }

  *(v0 + 808) = v16;
  *(v0 + 800) = v26;
  v27 = *(v0 + 744);
  sub_10033C300(*(v0 + 736), v27);
  v28 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
  if ((*(*(v28 - 8) + 48))(v27, 1, v28) == 1)
  {
    (*(*(v0 + 760) + 8))(*(v0 + 776), *(v0 + 752));

    v14 = *(v0 + 8);
    goto LABEL_15;
  }

  v30 = *(v0 + 744);
  v31 = *(v0 + 664);
  v32 = *(v0 + 608);
  v33 = *(v0 + 600);
  v34 = *(v0 + 512);
  v35 = *(v0 + 488);
  v36 = *(v0 + 496);
  v37 = *(v28 + 48);
  (*(*(v0 + 688) + 32))(*(v0 + 720), v30, *(v0 + 680));
  (*(v32 + 32))(v31, v30 + v37, v33);
  Friend.handle.getter();
  v38 = Handle.identifier.getter();
  v40 = v39;
  *(v0 + 816) = v39;
  v41 = *(v36 + 8);
  *(v0 + 824) = v41;
  *(v0 + 832) = (v36 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v41(v34, v35);
  v42 = swift_task_alloc();
  *(v0 + 840) = v42;
  *v42 = v0;
  v42[1] = sub_10031C7D0;
  v43 = *(v0 + 520);

  return sub_10031A318(v43, v38, v40);
}

uint64_t sub_10031C7D0()
{
  v2 = *v1;
  *(*v1 + 848) = v0;

  v3 = *(v2 + 328);

  if (v0)
  {
    v4 = sub_100321B2C;
  }

  else
  {
    v4 = sub_10031C918;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10031C918()
{
  v291 = v0;
  v1 = *(v0 + 520);
  if ((*(*(v0 + 536) + 48))(v1, 1, *(v0 + 528)) != 1)
  {
    v8 = *(v0 + 976);
    v10 = *(v0 + 472);
    v9 = *(v0 + 480);
    v11 = *(v0 + 448);
    v12 = *(v0 + 456);
    sub_10033C458(v1, *(v0 + 592), type metadata accessor for FriendRecord);
    Friend.type.getter();
    (*(v12 + 16))(v10, v9, v11);
    v13 = (*(v12 + 88))(v10, v11);
    if (v13 == v8)
    {
      v14 = 2;
    }

    else if (v13 == *(v0 + 980))
    {
      v14 = 4;
    }

    else if (v13 == *(v0 + 984))
    {
      v14 = 8;
    }

    else if (v13 == *(v0 + 988))
    {
      v14 = 16;
    }

    else
    {
      if (v13 != *(v0 + 992))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      v14 = 32;
    }

    v96 = *(v0 + 996);
    v97 = *(v0 + 656);
    v98 = *(v0 + 608);
    v99 = *(v0 + 600);
    v100 = *(*(v0 + 456) + 8);
    v100(*(v0 + 480), *(v0 + 448));
    v101 = *(v98 + 104);
    v101(v97, v96, v99);
    sub_10000A49C(&qword_1005AFFE8, &type metadata accessor for FriendshipAction, &protocol conformance descriptor for FriendshipAction);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (*(v0 + 208) == *(v0 + 224) && *(v0 + 216) == *(v0 + 232))
    {
      v102 = 1;
    }

    else
    {
      v102 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v103 = *(v0 + 656);
    v104 = *(v0 + 608);
    v105 = *(v0 + 600);
    v106 = *(v104 + 8);
    *(v0 + 856) = v106;
    *(v0 + 864) = (v104 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v288 = v106;
    v106(v103, v105);

    v286 = v100;
    if (v102)
    {
      v107 = *(v0 + 592);
      v108 = *(v0 + 528);
      swift_beginAccess();
      v109 = *(v108 + 140);
      v110 = *(v107 + v109);
      if ((v110 & v14) != 0)
      {
        v110 &= ~v14;
        *(v107 + v109) = v110;
      }

      v111 = *(v0 + 848);
      v112 = *(v0 + 720);
      v113 = *(v0 + 592);
      v114 = *(*(v0 + 528) + 136);
      v115 = *(v113 + v114);
      v116 = swift_task_alloc();
      *(v116 + 16) = v112;

      v117 = sub_100338788(sub_10033C370, v116, v115);

      *(v113 + v114) = v117;
      swift_endAccess();
      if (v110)
      {
        if (qword_1005A84A0 != -1)
        {
          swift_once();
        }

        v118 = *(v0 + 720);
        v119 = *(v0 + 712);
        v120 = *(v0 + 688);
        v121 = *(v0 + 680);
        v122 = type metadata accessor for Logger();
        sub_10000A6F0(v122, qword_1005E0AC8);
        (*(v120 + 16))(v119, v118, v121);
        v123 = Logger.logObject.getter();
        v124 = static os_log_type_t.default.getter();
        v125 = os_log_type_enabled(v123, v124);
        v126 = *(v0 + 712);
        v127 = *(v0 + 688);
        v128 = *(v0 + 680);
        if (v125)
        {
          v281 = *(v0 + 680);
          v129 = *(v0 + 592);
          v130 = *(v0 + 584);
          v131 = *(v0 + 464);
          v276 = *(v0 + 448);
          v132 = swift_slowAlloc();
          v290[0] = swift_slowAlloc();
          *v132 = 136315394;
          sub_10033C390(v129, v130, type metadata accessor for FriendRecord);
          v133 = String.init<A>(describing:)();
          v135 = sub_10000D01C(v133, v134, v290);

          *(v132 + 4) = v135;
          *(v132 + 12) = 2080;
          Friend.type.getter();
          sub_10000A49C(&qword_1005A9198, &type metadata accessor for HandleType, &protocol conformance descriptor for HandleType);
          v136 = dispatch thunk of CustomStringConvertible.description.getter();
          v138 = v137;
          v286(v131, v276);
          v139 = *(v127 + 8);
          v139(v126, v281);
          v140 = sub_10000D01C(v136, v138, v290);

          *(v132 + 14) = v140;
          _os_log_impl(&_mh_execute_header, v123, v124, "LocalStorage update a record: %s by removing type: %s", v132, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v139 = *(v127 + 8);
          v139(v126, v128);
        }

        *(v0 + 872) = v139;
        sub_10033C390(*(v0 + 592), *(v0 + 576), type metadata accessor for FriendRecord);
        v209 = swift_task_alloc();
        *(v0 + 880) = v209;
        *v209 = v0;
        v209[1] = sub_10031ED50;
        v87 = *(v0 + 576);
        v88 = *(v0 + 376);
LABEL_108:

        return sub_100335C5C(v88, v87);
      }

      v287 = v111;
      if (qword_1005A81A8 != -1)
      {
        swift_once();
      }

      v266 = *(v0 + 824);
      v170 = *(v0 + 760);
      v269 = *(v0 + 752);
      v273 = *(v0 + 768);
      v171 = *(v0 + 504);
      v172 = *(v0 + 488);
      v173 = *(v0 + 392);
      v174 = *(v0 + 400);
      v277 = *(v0 + 384);
      v175 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
      sub_10000A6F0(v175, qword_1005E01E0);
      Friend.handle.getter();
      Handle.identifier.getter();
      v266(v171, v172);
      v176 = String.lowercased()();

      *(v0 + 304) = v176;
      == infix<A>(_:_:)();

      QueryType.filter(_:)();
      (*(v173 + 8))(v174, v277);
      QueryType.delete()();
      v283 = *(v170 + 8);
      v283(v273, v269);
      if (qword_1005A84A0 != -1)
      {
        swift_once();
      }

      v177 = *(v0 + 432);
      v178 = *(v0 + 440);
      v179 = *(v0 + 408);
      v180 = *(v0 + 416);
      v181 = type metadata accessor for Logger();
      sub_10000A6F0(v181, qword_1005E0AC8);
      v182 = *(v180 + 16);
      v182(v177, v178, v179);
      v183 = Logger.logObject.getter();
      v184 = static os_log_type_t.default.getter();
      v185 = os_log_type_enabled(v183, v184);
      v186 = *(v0 + 432);
      if (v185)
      {
        v278 = v184;
        v187 = *(v0 + 416);
        v188 = *(v0 + 424);
        v189 = *(v0 + 408);
        v190 = swift_slowAlloc();
        v274 = swift_slowAlloc();
        v290[0] = v274;
        *v190 = 136315138;
        v182(v188, v186, v189);
        v191 = String.init<A>(describing:)();
        v193 = v192;
        v194 = v189;
        v195 = *(v187 + 8);
        v195(v186, v194);
        v196 = sub_10000D01C(v191, v193, v290);

        *(v190 + 4) = v196;
        _os_log_impl(&_mh_execute_header, v183, v278, "LocalStorage delete a record: %s", v190, 0xCu);
        sub_100004984(v274);
      }

      else
      {
        v212 = *(v0 + 408);
        v213 = *(v0 + 416);

        v195 = *(v213 + 8);
        v195(v186, v212);
      }

      Connection.run(_:)();
      if (v287)
      {
        v267 = *(v0 + 752);
        v268 = *(v0 + 776);
        v214 = *(v0 + 688);
        v270 = *(v0 + 680);
        v275 = *(v0 + 720);
        v215 = *(v0 + 664);
        v216 = *(v0 + 600);
        v279 = *(v0 + 592);
        v217 = *(v0 + 440);
        v218 = *(v0 + 408);

        v195(v217, v218);
        v288(v215, v216);
        v283(v268, v267);
        (*(v214 + 8))(v275, v270);
        sub_10033C3F8(v279, type metadata accessor for FriendRecord);

        v51 = *(v0 + 8);
        goto LABEL_95;
      }

      v219 = *(v0 + 720);
      v220 = *(v0 + 688);
      v221 = *(v0 + 680);
      v222 = *(v0 + 664);
      v223 = *(v0 + 600);
      v224 = *(v0 + 592);
      v195(*(v0 + 440), *(v0 + 408));
      v288(v222, v223);
      (*(v220 + 8))(v219, v221);
      v225 = v224;
LABEL_114:
      sub_10033C3F8(v225, type metadata accessor for FriendRecord);
      goto LABEL_14;
    }

    v101(*(v0 + 648), *(v0 + 1000), *(v0 + 600));
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v141 = *(v0 + 648);
    v142 = *(v0 + 600);
    if (*(v0 + 240) == *(v0 + 256) && *(v0 + 248) == *(v0 + 264))
    {
      v288(*(v0 + 648), *(v0 + 600));
    }

    else
    {
      v143 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v288(v141, v142);

      if ((v143 & 1) == 0)
      {
        v101(*(v0 + 640), *(v0 + 1004), *(v0 + 600));
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        v210 = *(v0 + 640);
        v211 = *(v0 + 600);
        if (*(v0 + 272) == *(v0 + 288) && *(v0 + 280) == *(v0 + 296))
        {
          v288(*(v0 + 640), *(v0 + 600));
        }

        else
        {
          v226 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v288(v210, v211);

          if ((v226 & 1) == 0)
          {
            v262 = *(v0 + 720);
            v263 = *(v0 + 688);
            v264 = *(v0 + 680);
            v265 = *(v0 + 592);
            v288(*(v0 + 664), *(v0 + 600));
            (*(v263 + 8))(v262, v264);
            v225 = v265;
            goto LABEL_114;
          }
        }

        if (qword_1005A84A0 != -1)
        {
          swift_once();
        }

        v227 = *(v0 + 720);
        v228 = *(v0 + 696);
        v229 = *(v0 + 688);
        v230 = *(v0 + 680);
        v231 = type metadata accessor for Logger();
        sub_10000A6F0(v231, qword_1005E0AC8);
        (*(v229 + 16))(v228, v227, v230);
        v232 = Logger.logObject.getter();
        v233 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v232, v233))
        {
          v271 = *(v0 + 824);
          v234 = *(v0 + 696);
          v235 = *(v0 + 688);
          v280 = *(v0 + 680);
          v236 = *(v0 + 504);
          v237 = *(v0 + 488);
          v238 = swift_slowAlloc();
          v284 = swift_slowAlloc();
          v290[0] = v284;
          *v238 = 141558275;
          *(v238 + 4) = 1752392040;
          *(v238 + 12) = 2081;
          Friend.handle.getter();
          v239 = Handle.identifier.getter();
          v241 = v240;
          v271(v236, v237);
          v242 = *(v235 + 8);
          v242(v234, v280);
          v243 = sub_10000D01C(v239, v241, v290);

          *(v238 + 14) = v243;
          _os_log_impl(&_mh_execute_header, v232, v233, "Local storage modify friend %{private,mask.hash}s", v238, 0x16u);
          sub_100004984(v284);
        }

        else
        {
          v244 = *(v0 + 696);
          v245 = *(v0 + 688);
          v246 = *(v0 + 680);

          v242 = *(v245 + 8);
          v242(v244, v246);
        }

        *(v0 + 920) = v242;
        v247 = *(v0 + 720);
        v248 = *(v0 + 464);
        v249 = *(v0 + 448);
        Friend.type.getter();
        swift_beginAccess();
        sub_1001A952C(v247, v248);
        swift_endAccess();
        v286(v248, v249);
        v250 = Logger.logObject.getter();
        v251 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v250, v251))
        {
          v252 = swift_slowAlloc();
          v253 = swift_slowAlloc();
          v290[0] = v253;
          *v252 = 136315138;
          type metadata accessor for FriendInfoOption(0);
          sub_10000A49C(&unk_1005AEA60, type metadata accessor for FriendInfoOption, &protocol conformance descriptor for FriendInfoOption);

          v254 = Set.description.getter();
          v256 = v255;

          v257 = sub_10000D01C(v254, v256, v290);

          *(v252 + 4) = v257;
          _os_log_impl(&_mh_execute_header, v250, v251, "LocalStorage record info : %s", v252, 0xCu);
          sub_100004984(v253);
        }

        sub_10033C390(*(v0 + 592), *(v0 + 560), type metadata accessor for FriendRecord);
        v258 = swift_task_alloc();
        *(v0 + 928) = v258;
        *v258 = v0;
        v258[1] = sub_1003202D8;
        v87 = *(v0 + 560);
        v88 = *(v0 + 360);
        goto LABEL_108;
      }
    }

    if (qword_1005A84A0 != -1)
    {
      swift_once();
    }

    v144 = *(v0 + 720);
    v145 = *(v0 + 704);
    v146 = *(v0 + 688);
    v147 = *(v0 + 680);
    v148 = type metadata accessor for Logger();
    sub_10000A6F0(v148, qword_1005E0AC8);
    (*(v146 + 16))(v145, v144, v147);
    v149 = Logger.logObject.getter();
    v150 = static os_log_type_t.default.getter();
    v151 = os_log_type_enabled(v149, v150);
    v152 = *(v0 + 704);
    v153 = *(v0 + 688);
    v154 = *(v0 + 680);
    if (v151)
    {
      v282 = v150;
      v155 = *(v0 + 592);
      v272 = *(v0 + 680);
      v156 = *(v0 + 584);
      v157 = *(v0 + 464);
      v158 = *(v0 + 448);
      v159 = swift_slowAlloc();
      v290[0] = swift_slowAlloc();
      *v159 = 136315394;
      swift_beginAccess();
      sub_10033C390(v155, v156, type metadata accessor for FriendRecord);
      v160 = String.init<A>(describing:)();
      v162 = sub_10000D01C(v160, v161, v290);

      *(v159 + 4) = v162;
      *(v159 + 12) = 2080;
      Friend.type.getter();
      sub_10000A49C(&qword_1005A9198, &type metadata accessor for HandleType, &protocol conformance descriptor for HandleType);
      v163 = dispatch thunk of CustomStringConvertible.description.getter();
      v165 = v164;
      v166 = v158;
      v167 = v286;
      v286(v157, v166);
      v168 = *(v153 + 8);
      v168(v152, v272);
      v169 = sub_10000D01C(v163, v165, v290);

      *(v159 + 14) = v169;
      _os_log_impl(&_mh_execute_header, v149, v282, "LocalStorage update a record: %s by adding type: %s", v159, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v168 = *(v153 + 8);
      v168(v152, v154);
      v167 = v286;
    }

    *(v0 + 896) = v168;
    v197 = *(v0 + 720);
    v198 = *(v0 + 464);
    v199 = *(v0 + 448);
    Friend.type.getter();
    swift_beginAccess();
    sub_1001A952C(v197, v198);
    swift_endAccess();
    v167(v198, v199);
    v200 = Logger.logObject.getter();
    v201 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v200, v201))
    {
      v202 = swift_slowAlloc();
      v203 = swift_slowAlloc();
      v290[0] = v203;
      *v202 = 136315138;
      type metadata accessor for FriendInfoOption(0);
      sub_10000A49C(&unk_1005AEA60, type metadata accessor for FriendInfoOption, &protocol conformance descriptor for FriendInfoOption);

      v204 = Set.description.getter();
      v206 = v205;

      v207 = sub_10000D01C(v204, v206, v290);

      *(v202 + 4) = v207;
      _os_log_impl(&_mh_execute_header, v200, v201, "LocalStorage record info : %s", v202, 0xCu);
      sub_100004984(v203);
    }

    sub_10033C390(*(v0 + 592), *(v0 + 568), type metadata accessor for FriendRecord);
    v208 = swift_task_alloc();
    *(v0 + 904) = v208;
    *v208 = v0;
    v208[1] = sub_10031F814;
    v87 = *(v0 + 568);
    v88 = *(v0 + 368);
    goto LABEL_108;
  }

  v2 = *(v0 + 996);
  v3 = *(v0 + 632);
  v4 = *(v0 + 608);
  v5 = *(v0 + 600);
  sub_100002CE0(v1, &qword_1005B0B88, &qword_1004D5CC0);
  v6 = *(v4 + 104);
  v6(v3, v2, v5);
  sub_10000A49C(&qword_1005AFFE8, &type metadata accessor for FriendshipAction, &protocol conformance descriptor for FriendshipAction);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (*(v0 + 112) == *(v0 + 128) && *(v0 + 120) == *(v0 + 136))
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v15 = *(v0 + 632);
  v16 = *(v0 + 608);
  v17 = *(v0 + 600);
  v18 = *(v16 + 8);
  *(v0 + 944) = v18;
  *(v0 + 952) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v15, v17);

  if ((v7 & 1) == 0)
  {
    v6(*(v0 + 624), *(v0 + 1000), *(v0 + 600));
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v33 = *(v0 + 624);
    v34 = *(v0 + 600);
    if (*(v0 + 144) == *(v0 + 160) && *(v0 + 152) == *(v0 + 168))
    {
      v18(*(v0 + 624), *(v0 + 600));
    }

    else
    {
      v67 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v68 = v18;
      v69 = v67;
      v288 = v68;
      v68(v33, v34);

      if ((v69 & 1) == 0)
      {
        v6(*(v0 + 616), *(v0 + 1004), *(v0 + 600));
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        v91 = *(v0 + 616);
        v92 = *(v0 + 600);
        if (*(v0 + 176) == *(v0 + 192) && *(v0 + 184) == *(v0 + 200))
        {
          v288(*(v0 + 616), *(v0 + 600));
        }

        else
        {
          v93 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v288(v91, v92);

          if ((v93 & 1) == 0)
          {
            v259 = *(v0 + 720);
            v260 = *(v0 + 688);
            v261 = *(v0 + 680);
            v288(*(v0 + 664), *(v0 + 600));
            (*(v260 + 8))(v259, v261);
            goto LABEL_14;
          }
        }

        if (qword_1005A84A0 != -1)
        {
          swift_once();
        }

        v94 = type metadata accessor for Logger();
        sub_10000A6F0(v94, qword_1005E0AC8);
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.error.getter();
        v95 = os_log_type_enabled(v20, v21);
        v23 = *(v0 + 720);
        v24 = *(v0 + 688);
        v25 = *(v0 + 680);
        v26 = *(v0 + 664);
        v27 = *(v0 + 600);
        if (!v95)
        {
          goto LABEL_13;
        }

        v28 = swift_slowAlloc();
        *v28 = 0;
        v29 = "Local storage try to modified friend record that not exist";
        goto LABEL_12;
      }
    }

    v70 = *(v0 + 728);
    v71 = *(v0 + 552);
    (*(*(v0 + 688) + 16))(v70, *(v0 + 720), *(v0 + 680));
    sub_1001A80DC(v70, v71);
    if (qword_1005A84A0 != -1)
    {
      swift_once();
    }

    v72 = *(v0 + 552);
    v73 = *(v0 + 544);
    v74 = type metadata accessor for Logger();
    sub_10000A6F0(v74, qword_1005E0AC8);
    sub_10033C390(v72, v73, type metadata accessor for FriendRecord);
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = *(v0 + 584);
      v78 = *(v0 + 544);
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v290[0] = v80;
      *v79 = 136315138;
      sub_10033C390(v78, v77, type metadata accessor for FriendRecord);
      v81 = String.init<A>(describing:)();
      v83 = v82;
      sub_10033C3F8(v78, type metadata accessor for FriendRecord);
      v84 = sub_10000D01C(v81, v83, v290);

      *(v79 + 4) = v84;
      _os_log_impl(&_mh_execute_header, v75, v76, "LocalStorage add a new record: %s", v79, 0xCu);
      sub_100004984(v80);
    }

    else
    {
      v85 = *(v0 + 544);

      sub_10033C3F8(v85, type metadata accessor for FriendRecord);
    }

    v86 = swift_task_alloc();
    *(v0 + 960) = v86;
    *v86 = v0;
    v86[1] = sub_100320D9C;
    v87 = *(v0 + 552);
    v88 = *(v0 + 352);
    goto LABEL_108;
  }

  v288 = v18;
  if (qword_1005A84A0 != -1)
  {
    goto LABEL_116;
  }

  while (1)
  {
    v19 = type metadata accessor for Logger();
    sub_10000A6F0(v19, qword_1005E0AC8);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 720);
    v24 = *(v0 + 688);
    v25 = *(v0 + 680);
    v26 = *(v0 + 664);
    v27 = *(v0 + 600);
    if (v22)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = "Local storage try to remove friend record that not exist";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v20, v21, v29, v28, 2u);
    }

LABEL_13:

    v288(v26, v27);
    (*(v24 + 8))(v23, v25);
LABEL_14:
    v30 = *(v0 + 808);
    v31 = *(v0 + 800);
    if (v31)
    {
      break;
    }

    v35 = ((1 << *(v0 + 1008)) + 63) >> 6;
    if (v35 <= (v30 + 1))
    {
      v36 = v30 + 1;
    }

    else
    {
      v36 = ((1 << *(v0 + 1008)) + 63) >> 6;
    }

    v37 = v36 - 1;
    while (1)
    {
      v38 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v38 >= v35)
      {
        v89 = *(v0 + 736);
        v90 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
        (*(*(v90 - 8) + 56))(v89, 1, 1, v90);
        v48 = 0;
        goto LABEL_30;
      }

      v32 = *(v0 + 320);
      v31 = *(v32 + 8 * v38 + 64);
      ++v30;
      if (v31)
      {
        v30 = v38;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_116:
    swift_once();
  }

  v32 = *(v0 + 320);
LABEL_29:
  v39 = *(v0 + 736);
  v40 = *(v0 + 728);
  v41 = *(v0 + 688);
  v42 = *(v0 + 680);
  v43 = *(v0 + 672);
  v44 = *(v0 + 608);
  v285 = *(v0 + 600);
  v289 = (v31 - 1) & v31;
  v45 = __clz(__rbit64(v31)) | (v30 << 6);
  (*(v41 + 16))(v40, *(v32 + 48) + *(v41 + 72) * v45, v42);
  (*(v44 + 16))(v43, *(v32 + 56) + *(v44 + 72) * v45, v285);
  v46 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
  v47 = *(v46 + 48);
  (*(v41 + 32))(v39, v40, v42);
  (*(v44 + 32))(v39 + v47, v43, v285);
  (*(*(v46 - 8) + 56))(v39, 0, 1, v46);
  v48 = v289;
  v37 = v30;
LABEL_30:
  *(v0 + 808) = v37;
  *(v0 + 800) = v48;
  v49 = *(v0 + 744);
  sub_10033C300(*(v0 + 736), v49);
  v50 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
  if ((*(*(v50 - 8) + 48))(v49, 1, v50) == 1)
  {
    (*(*(v0 + 760) + 8))(*(v0 + 776), *(v0 + 752));

    v51 = *(v0 + 8);
LABEL_95:

    return v51();
  }

  v52 = *(v0 + 744);
  v53 = *(v0 + 664);
  v54 = *(v0 + 608);
  v55 = *(v0 + 600);
  v56 = *(v0 + 512);
  v57 = *(v0 + 488);
  v58 = *(v0 + 496);
  v59 = *(v50 + 48);
  (*(*(v0 + 688) + 32))(*(v0 + 720), v52, *(v0 + 680));
  (*(v54 + 32))(v53, v52 + v59, v55);
  Friend.handle.getter();
  v60 = Handle.identifier.getter();
  v62 = v61;
  *(v0 + 816) = v61;
  v63 = *(v58 + 8);
  *(v0 + 824) = v63;
  *(v0 + 832) = (v58 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v63(v56, v57);
  v64 = swift_task_alloc();
  *(v0 + 840) = v64;
  *v64 = v0;
  v64[1] = sub_10031C7D0;
  v65 = *(v0 + 520);

  return sub_10031A318(v65, v60, v62);
}

uint64_t sub_10031ED50()
{
  v2 = *v1;
  *(*v1 + 888) = v0;

  v3 = *(v2 + 576);
  v4 = *(v2 + 328);
  sub_10033C3F8(v3, type metadata accessor for FriendRecord);
  if (v0)
  {
    v5 = sub_100321E1C;
  }

  else
  {
    v5 = sub_10031EEAC;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10031EEAC()
{
  v1 = *(v0 + 888);
  Connection.run(_:)();
  v2 = *(v0 + 872);
  v3 = *(v0 + 856);
  if (v1)
  {
    v4 = *(v0 + 760);
    v53 = *(v0 + 752);
    v54 = *(v0 + 776);
    v55 = *(v0 + 680);
    v56 = *(v0 + 720);
    v51 = *(v0 + 664);
    v52 = *(v0 + 872);
    v5 = *(v0 + 600);
    v58 = *(v0 + 592);
    v6 = *(v0 + 376);
    v8 = *(v0 + 336);
    v7 = *(v0 + 344);

    (*(v7 + 8))(v6, v8);
    v3(v51, v5);
    (*(v4 + 8))(v54, v53);
    v52(v56, v55);
    sub_10033C3F8(v58, type metadata accessor for FriendRecord);

    v9 = *(v0 + 8);
LABEL_16:

    return v9();
  }

  v10 = *(v0 + 720);
  v11 = *(v0 + 680);
  v12 = *(v0 + 664);
  v13 = *(v0 + 600);
  v14 = *(v0 + 592);
  (*(*(v0 + 344) + 8))(*(v0 + 376), *(v0 + 336));
  v3(v12, v13);
  v2(v10, v11);
  result = sub_10033C3F8(v14, type metadata accessor for FriendRecord);
  v16 = *(v0 + 808);
  v17 = *(v0 + 800);
  if (v17)
  {
    v18 = *(v0 + 320);
LABEL_13:
    v23 = *(v0 + 736);
    v24 = *(v0 + 728);
    v25 = *(v0 + 688);
    v26 = *(v0 + 680);
    v27 = *(v0 + 672);
    v28 = *(v0 + 608);
    v57 = *(v0 + 600);
    v59 = (v17 - 1) & v17;
    v29 = __clz(__rbit64(v17)) | (v16 << 6);
    (*(v25 + 16))(v24, *(v18 + 48) + *(v25 + 72) * v29, v26);
    (*(v28 + 16))(v27, *(v18 + 56) + *(v28 + 72) * v29, v57);
    v30 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
    v31 = *(v30 + 48);
    (*(v25 + 32))(v23, v24, v26);
    (*(v28 + 32))(v23 + v31, v27, v57);
    (*(*(v30 - 8) + 56))(v23, 0, 1, v30);
    v32 = v59;
    v21 = v16;
LABEL_14:
    *(v0 + 808) = v21;
    *(v0 + 800) = v32;
    v33 = *(v0 + 744);
    sub_10033C300(*(v0 + 736), v33);
    v34 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
    if ((*(*(v34 - 8) + 48))(v33, 1, v34) == 1)
    {
      (*(*(v0 + 760) + 8))(*(v0 + 776), *(v0 + 752));

      v9 = *(v0 + 8);
      goto LABEL_16;
    }

    v35 = *(v0 + 744);
    v36 = *(v0 + 664);
    v37 = *(v0 + 608);
    v38 = *(v0 + 600);
    v39 = *(v0 + 512);
    v40 = *(v0 + 488);
    v41 = *(v0 + 496);
    v42 = *(v34 + 48);
    (*(*(v0 + 688) + 32))(*(v0 + 720), v35, *(v0 + 680));
    (*(v37 + 32))(v36, v35 + v42, v38);
    Friend.handle.getter();
    v43 = Handle.identifier.getter();
    v45 = v44;
    *(v0 + 816) = v44;
    v46 = *(v41 + 8);
    *(v0 + 824) = v46;
    *(v0 + 832) = (v41 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v46(v39, v40);
    v47 = swift_task_alloc();
    *(v0 + 840) = v47;
    *v47 = v0;
    v47[1] = sub_10031C7D0;
    v48 = *(v0 + 520);

    return sub_10031A318(v48, v43, v45);
  }

  else
  {
    v19 = ((1 << *(v0 + 1008)) + 63) >> 6;
    if (v19 <= (v16 + 1))
    {
      v20 = v16 + 1;
    }

    else
    {
      v20 = ((1 << *(v0 + 1008)) + 63) >> 6;
    }

    v21 = v20 - 1;
    while (1)
    {
      v22 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v22 >= v19)
      {
        v49 = *(v0 + 736);
        v50 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
        (*(*(v50 - 8) + 56))(v49, 1, 1, v50);
        v32 = 0;
        goto LABEL_14;
      }

      v18 = *(v0 + 320);
      v17 = *(v18 + 8 * v22 + 64);
      ++v16;
      if (v17)
      {
        v16 = v22;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10031F814()
{
  v2 = *v1;
  *(*v1 + 912) = v0;

  v3 = *(v2 + 568);
  v4 = *(v2 + 328);
  sub_10033C3F8(v3, type metadata accessor for FriendRecord);
  if (v0)
  {
    v5 = sub_10032212C;
  }

  else
  {
    v5 = sub_10031F970;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10031F970()
{
  v1 = *(v0 + 912);
  Connection.run(_:)();
  v2 = *(v0 + 896);
  v3 = *(v0 + 856);
  if (v1)
  {
    v4 = *(v0 + 760);
    v53 = *(v0 + 752);
    v54 = *(v0 + 776);
    v55 = *(v0 + 680);
    v56 = *(v0 + 720);
    v51 = *(v0 + 664);
    v52 = *(v0 + 896);
    v5 = *(v0 + 600);
    v58 = *(v0 + 592);
    v6 = *(v0 + 368);
    v8 = *(v0 + 336);
    v7 = *(v0 + 344);

    (*(v7 + 8))(v6, v8);
    v3(v51, v5);
    (*(v4 + 8))(v54, v53);
    v52(v56, v55);
    sub_10033C3F8(v58, type metadata accessor for FriendRecord);

    v9 = *(v0 + 8);
LABEL_16:

    return v9();
  }

  v10 = *(v0 + 720);
  v11 = *(v0 + 680);
  v12 = *(v0 + 664);
  v13 = *(v0 + 600);
  v14 = *(v0 + 592);
  (*(*(v0 + 344) + 8))(*(v0 + 368), *(v0 + 336));
  v3(v12, v13);
  v2(v10, v11);
  result = sub_10033C3F8(v14, type metadata accessor for FriendRecord);
  v16 = *(v0 + 808);
  v17 = *(v0 + 800);
  if (v17)
  {
    v18 = *(v0 + 320);
LABEL_13:
    v23 = *(v0 + 736);
    v24 = *(v0 + 728);
    v25 = *(v0 + 688);
    v26 = *(v0 + 680);
    v27 = *(v0 + 672);
    v28 = *(v0 + 608);
    v57 = *(v0 + 600);
    v59 = (v17 - 1) & v17;
    v29 = __clz(__rbit64(v17)) | (v16 << 6);
    (*(v25 + 16))(v24, *(v18 + 48) + *(v25 + 72) * v29, v26);
    (*(v28 + 16))(v27, *(v18 + 56) + *(v28 + 72) * v29, v57);
    v30 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
    v31 = *(v30 + 48);
    (*(v25 + 32))(v23, v24, v26);
    (*(v28 + 32))(v23 + v31, v27, v57);
    (*(*(v30 - 8) + 56))(v23, 0, 1, v30);
    v32 = v59;
    v21 = v16;
LABEL_14:
    *(v0 + 808) = v21;
    *(v0 + 800) = v32;
    v33 = *(v0 + 744);
    sub_10033C300(*(v0 + 736), v33);
    v34 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
    if ((*(*(v34 - 8) + 48))(v33, 1, v34) == 1)
    {
      (*(*(v0 + 760) + 8))(*(v0 + 776), *(v0 + 752));

      v9 = *(v0 + 8);
      goto LABEL_16;
    }

    v35 = *(v0 + 744);
    v36 = *(v0 + 664);
    v37 = *(v0 + 608);
    v38 = *(v0 + 600);
    v39 = *(v0 + 512);
    v40 = *(v0 + 488);
    v41 = *(v0 + 496);
    v42 = *(v34 + 48);
    (*(*(v0 + 688) + 32))(*(v0 + 720), v35, *(v0 + 680));
    (*(v37 + 32))(v36, v35 + v42, v38);
    Friend.handle.getter();
    v43 = Handle.identifier.getter();
    v45 = v44;
    *(v0 + 816) = v44;
    v46 = *(v41 + 8);
    *(v0 + 824) = v46;
    *(v0 + 832) = (v41 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v46(v39, v40);
    v47 = swift_task_alloc();
    *(v0 + 840) = v47;
    *v47 = v0;
    v47[1] = sub_10031C7D0;
    v48 = *(v0 + 520);

    return sub_10031A318(v48, v43, v45);
  }

  else
  {
    v19 = ((1 << *(v0 + 1008)) + 63) >> 6;
    if (v19 <= (v16 + 1))
    {
      v20 = v16 + 1;
    }

    else
    {
      v20 = ((1 << *(v0 + 1008)) + 63) >> 6;
    }

    v21 = v20 - 1;
    while (1)
    {
      v22 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v22 >= v19)
      {
        v49 = *(v0 + 736);
        v50 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
        (*(*(v50 - 8) + 56))(v49, 1, 1, v50);
        v32 = 0;
        goto LABEL_14;
      }

      v18 = *(v0 + 320);
      v17 = *(v18 + 8 * v22 + 64);
      ++v16;
      if (v17)
      {
        v16 = v22;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1003202D8()
{
  v2 = *v1;
  *(*v1 + 936) = v0;

  v3 = *(v2 + 560);
  v4 = *(v2 + 328);
  sub_10033C3F8(v3, type metadata accessor for FriendRecord);
  if (v0)
  {
    v5 = sub_10032243C;
  }

  else
  {
    v5 = sub_100320434;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100320434()
{
  v1 = *(v0 + 936);
  Connection.run(_:)();
  v2 = *(v0 + 920);
  v3 = *(v0 + 856);
  if (v1)
  {
    v4 = *(v0 + 760);
    v53 = *(v0 + 752);
    v54 = *(v0 + 776);
    v55 = *(v0 + 680);
    v56 = *(v0 + 720);
    v51 = *(v0 + 664);
    v52 = *(v0 + 920);
    v5 = *(v0 + 600);
    v58 = *(v0 + 592);
    v6 = *(v0 + 360);
    v8 = *(v0 + 336);
    v7 = *(v0 + 344);

    (*(v7 + 8))(v6, v8);
    v3(v51, v5);
    (*(v4 + 8))(v54, v53);
    v52(v56, v55);
    sub_10033C3F8(v58, type metadata accessor for FriendRecord);

    v9 = *(v0 + 8);
LABEL_16:

    return v9();
  }

  v10 = *(v0 + 720);
  v11 = *(v0 + 680);
  v12 = *(v0 + 664);
  v13 = *(v0 + 600);
  v14 = *(v0 + 592);
  (*(*(v0 + 344) + 8))(*(v0 + 360), *(v0 + 336));
  v3(v12, v13);
  v2(v10, v11);
  result = sub_10033C3F8(v14, type metadata accessor for FriendRecord);
  v16 = *(v0 + 808);
  v17 = *(v0 + 800);
  if (v17)
  {
    v18 = *(v0 + 320);
LABEL_13:
    v23 = *(v0 + 736);
    v24 = *(v0 + 728);
    v25 = *(v0 + 688);
    v26 = *(v0 + 680);
    v27 = *(v0 + 672);
    v28 = *(v0 + 608);
    v57 = *(v0 + 600);
    v59 = (v17 - 1) & v17;
    v29 = __clz(__rbit64(v17)) | (v16 << 6);
    (*(v25 + 16))(v24, *(v18 + 48) + *(v25 + 72) * v29, v26);
    (*(v28 + 16))(v27, *(v18 + 56) + *(v28 + 72) * v29, v57);
    v30 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
    v31 = *(v30 + 48);
    (*(v25 + 32))(v23, v24, v26);
    (*(v28 + 32))(v23 + v31, v27, v57);
    (*(*(v30 - 8) + 56))(v23, 0, 1, v30);
    v32 = v59;
    v21 = v16;
LABEL_14:
    *(v0 + 808) = v21;
    *(v0 + 800) = v32;
    v33 = *(v0 + 744);
    sub_10033C300(*(v0 + 736), v33);
    v34 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
    if ((*(*(v34 - 8) + 48))(v33, 1, v34) == 1)
    {
      (*(*(v0 + 760) + 8))(*(v0 + 776), *(v0 + 752));

      v9 = *(v0 + 8);
      goto LABEL_16;
    }

    v35 = *(v0 + 744);
    v36 = *(v0 + 664);
    v37 = *(v0 + 608);
    v38 = *(v0 + 600);
    v39 = *(v0 + 512);
    v40 = *(v0 + 488);
    v41 = *(v0 + 496);
    v42 = *(v34 + 48);
    (*(*(v0 + 688) + 32))(*(v0 + 720), v35, *(v0 + 680));
    (*(v37 + 32))(v36, v35 + v42, v38);
    Friend.handle.getter();
    v43 = Handle.identifier.getter();
    v45 = v44;
    *(v0 + 816) = v44;
    v46 = *(v41 + 8);
    *(v0 + 824) = v46;
    *(v0 + 832) = (v41 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v46(v39, v40);
    v47 = swift_task_alloc();
    *(v0 + 840) = v47;
    *v47 = v0;
    v47[1] = sub_10031C7D0;
    v48 = *(v0 + 520);

    return sub_10031A318(v48, v43, v45);
  }

  else
  {
    v19 = ((1 << *(v0 + 1008)) + 63) >> 6;
    if (v19 <= (v16 + 1))
    {
      v20 = v16 + 1;
    }

    else
    {
      v20 = ((1 << *(v0 + 1008)) + 63) >> 6;
    }

    v21 = v20 - 1;
    while (1)
    {
      v22 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v22 >= v19)
      {
        v49 = *(v0 + 736);
        v50 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
        (*(*(v50 - 8) + 56))(v49, 1, 1, v50);
        v32 = 0;
        goto LABEL_14;
      }

      v18 = *(v0 + 320);
      v17 = *(v18 + 8 * v22 + 64);
      ++v16;
      if (v17)
      {
        v16 = v22;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100320D9C()
{
  v2 = *v1;
  *(*v1 + 968) = v0;

  v3 = *(v2 + 328);
  if (v0)
  {
    v4 = sub_100321824;
  }

  else
  {
    v4 = sub_100320EC8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100320EC8()
{
  v1 = *(v0 + 968);
  Connection.run(_:)();
  v2 = *(v0 + 944);
  if (v1)
  {
    v3 = *(v0 + 760);
    v55 = *(v0 + 752);
    v56 = *(v0 + 776);
    v4 = *(v0 + 688);
    v57 = *(v0 + 680);
    v59 = *(v0 + 720);
    v54 = *(v0 + 664);
    v5 = *(v0 + 600);
    v6 = *(v0 + 552);
    v7 = *(v0 + 944);
    v8 = *(v0 + 344);
    v9 = *(v0 + 352);
    v10 = *(v0 + 336);

    (*(v8 + 8))(v9, v10);
    sub_10033C3F8(v6, type metadata accessor for FriendRecord);
    v7(v54, v5);
    (*(v3 + 8))(v56, v55);
    (*(v4 + 8))(v59, v57);

    v11 = *(v0 + 8);
LABEL_16:

    return v11();
  }

  v12 = *(v0 + 720);
  v13 = *(v0 + 688);
  v14 = *(v0 + 680);
  v15 = *(v0 + 664);
  v16 = *(v0 + 600);
  v17 = *(v0 + 552);
  (*(*(v0 + 344) + 8))(*(v0 + 352), *(v0 + 336));
  sub_10033C3F8(v17, type metadata accessor for FriendRecord);
  v2(v15, v16);
  result = (*(v13 + 8))(v12, v14);
  v19 = *(v0 + 808);
  v20 = *(v0 + 800);
  if (v20)
  {
    v21 = *(v0 + 320);
LABEL_13:
    v26 = *(v0 + 736);
    v27 = *(v0 + 728);
    v28 = *(v0 + 688);
    v29 = *(v0 + 680);
    v30 = *(v0 + 672);
    v31 = *(v0 + 608);
    v58 = *(v0 + 600);
    v60 = (v20 - 1) & v20;
    v32 = __clz(__rbit64(v20)) | (v19 << 6);
    (*(v28 + 16))(v27, *(v21 + 48) + *(v28 + 72) * v32, v29);
    (*(v31 + 16))(v30, *(v21 + 56) + *(v31 + 72) * v32, v58);
    v33 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
    v34 = *(v33 + 48);
    (*(v28 + 32))(v26, v27, v29);
    (*(v31 + 32))(v26 + v34, v30, v58);
    (*(*(v33 - 8) + 56))(v26, 0, 1, v33);
    v35 = v60;
    v24 = v19;
LABEL_14:
    *(v0 + 808) = v24;
    *(v0 + 800) = v35;
    v36 = *(v0 + 744);
    sub_10033C300(*(v0 + 736), v36);
    v37 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
    if ((*(*(v37 - 8) + 48))(v36, 1, v37) == 1)
    {
      (*(*(v0 + 760) + 8))(*(v0 + 776), *(v0 + 752));

      v11 = *(v0 + 8);
      goto LABEL_16;
    }

    v38 = *(v0 + 744);
    v39 = *(v0 + 664);
    v40 = *(v0 + 608);
    v41 = *(v0 + 600);
    v42 = *(v0 + 512);
    v43 = *(v0 + 488);
    v44 = *(v0 + 496);
    v45 = *(v37 + 48);
    (*(*(v0 + 688) + 32))(*(v0 + 720), v38, *(v0 + 680));
    (*(v40 + 32))(v39, v38 + v45, v41);
    Friend.handle.getter();
    v46 = Handle.identifier.getter();
    v48 = v47;
    *(v0 + 816) = v47;
    v49 = *(v44 + 8);
    *(v0 + 824) = v49;
    *(v0 + 832) = (v44 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v49(v42, v43);
    v50 = swift_task_alloc();
    *(v0 + 840) = v50;
    *v50 = v0;
    v50[1] = sub_10031C7D0;
    v51 = *(v0 + 520);

    return sub_10031A318(v51, v46, v48);
  }

  else
  {
    v22 = ((1 << *(v0 + 1008)) + 63) >> 6;
    if (v22 <= (v19 + 1))
    {
      v23 = v19 + 1;
    }

    else
    {
      v23 = ((1 << *(v0 + 1008)) + 63) >> 6;
    }

    v24 = v23 - 1;
    while (1)
    {
      v25 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v25 >= v22)
      {
        v52 = *(v0 + 736);
        v53 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
        (*(*(v53 - 8) + 56))(v52, 1, 1, v53);
        v35 = 0;
        goto LABEL_14;
      }

      v21 = *(v0 + 320);
      v20 = *(v21 + 8 * v25 + 64);
      ++v19;
      if (v20)
      {
        v19 = v25;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100321824()
{
  v1 = v0[118];
  v2 = v0[95];
  v3 = v0[94];
  v12 = v0[90];
  v4 = v0[86];
  v10 = v0[97];
  v11 = v0[85];
  v5 = v0[83];
  v6 = v0[75];
  v7 = v0[69];

  sub_10033C3F8(v7, type metadata accessor for FriendRecord);
  v1(v5, v6);
  (*(v2 + 8))(v10, v3);
  (*(v4 + 8))(v12, v11);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100321B2C()
{
  v1 = v0[97];
  v2 = v0[95];
  v3 = v0[94];
  v11 = v0[90];
  v4 = v0[86];
  v5 = v0[85];
  v6 = v0[83];
  v7 = v0[76];
  v8 = v0[75];

  (*(v7 + 8))(v6, v8);
  (*(v2 + 8))(v1, v3);
  (*(v4 + 8))(v11, v5);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100321E1C()
{
  v1 = v0[107];
  v2 = v0[97];
  v3 = v0[95];
  v4 = v0[94];
  v9 = v0[85];
  v10 = v0[90];
  v5 = v0[83];
  v6 = v0[75];
  v11 = v0[74];
  v12 = v0[109];

  v1(v5, v6);
  (*(v3 + 8))(v2, v4);
  v12(v10, v9);
  sub_10033C3F8(v11, type metadata accessor for FriendRecord);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10032212C()
{
  v1 = v0[107];
  v2 = v0[97];
  v3 = v0[95];
  v4 = v0[94];
  v9 = v0[85];
  v10 = v0[90];
  v5 = v0[83];
  v6 = v0[75];
  v11 = v0[74];
  v12 = v0[112];

  v1(v5, v6);
  (*(v3 + 8))(v2, v4);
  v12(v10, v9);
  sub_10033C3F8(v11, type metadata accessor for FriendRecord);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10032243C()
{
  v1 = v0[107];
  v2 = v0[97];
  v3 = v0[95];
  v4 = v0[94];
  v9 = v0[85];
  v10 = v0[90];
  v5 = v0[83];
  v6 = v0[75];
  v11 = v0[74];
  v12 = v0[115];

  v1(v5, v6);
  (*(v3 + 8))(v2, v4);
  v12(v10, v9);
  sub_10033C3F8(v11, type metadata accessor for FriendRecord);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10032274C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for Insert();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v6 = type metadata accessor for Delete();
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v7 = type metadata accessor for Device();
  v2[20] = v7;
  v2[21] = *(v7 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v8 = type metadata accessor for Table();
  v2[27] = v8;
  v2[28] = *(v8 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_100322A70, 0, 0);
}

uint64_t sub_100322A70()
{
  v1 = *(*(v0 + 40) + 112);
  *(v0 + 248) = v1;

  return _swift_task_switch(sub_100322B04, v1, 0);
}

uint64_t sub_100322B04()
{
  sub_10000A0A4();
  v1 = *(v0 + 248);

  return _swift_task_switch(sub_100322CAC, v1, 0);
}

uint64_t sub_100322CAC()
{
  type metadata accessor for LocalStorageDatabase(0);
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase, &unk_1004D5700);
  *(v0 + 256) = Database.writeConnection.getter();

  return _swift_task_switch(sub_100322D94, 0, 0);
}

uint64_t sub_100322D94()
{
  if (v0[32])
  {
    if (qword_1005A8140 != -1)
    {
      swift_once();
    }

    v1 = v0[30];
    v2 = v0[27];
    v3 = v0[28];
    v4 = sub_10000A6F0(v2, qword_1005E0090);
    (*(v3 + 16))(v1, v4, v2);

    v0[33] = sub_10023F630(v5);

    v6 = swift_task_alloc();
    v0[34] = v6;
    *v6 = v0;
    v6[1] = sub_100323080;

    return sub_100324C30();
  }

  else
  {
    v8 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError, &protocol conformance descriptor for DatabaseError);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, enum case for DatabaseError.notConnected(_:), v8);
    swift_willThrow();

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_100323080(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 280) = a1;
  *(v3 + 288) = v1;

  if (v1)
  {

    v4 = sub_100324ACC;
  }

  else
  {
    v4 = sub_1003231D0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003231D0()
{
  v187 = object;

  v1 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

  p_object = sub_10023F630(v1);

  if (qword_1005A84A0 != -1)
  {
    goto LABEL_75;
  }

  while (1)
  {
    v3 = type metadata accessor for Logger();
    v4 = sub_10000A6F0(v3, qword_1005E0AC8);
    object[18]._object = v4;

    v173 = v4;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    v7 = os_log_type_enabled(v5, v6);
    v185 = object;
    if (!v7)
    {
LABEL_19:

      countAndFlagsBits = object[18]._countAndFlagsBits;
      goto LABEL_38;
    }

    LODWORD(v176) = v6;
    v177 = v5;
    v8 = swift_slowAlloc();
    v175 = swift_slowAlloc();
    v186[0] = v175;
    *v8 = 141558787;
    *(v8 + 4) = 1752392040;
    v181 = v8;
    *(v8 + 12) = 2081;
    v9 = *(p_object + 32);
    v10 = v9 & 0x3F;
    v11 = ((1 << v9) + 63) >> 6;
    v12 = 8 * v11;

    v184 = p_object;
    if (v10 <= 0xD)
    {
      goto LABEL_4;
    }

    if (swift_stdlib_isStackAllocationSafe())
    {

LABEL_4:
      v178 = &v162;
      v179 = v11;
      object = object[10]._object;
      __chkstk_darwin(v13);
      v180 = &v162 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v180, v12);
      v14 = 0;
      v15 = p_object + 56;
      v16 = 1 << *(p_object + 32);
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      else
      {
        v17 = -1;
      }

      v18 = v17 & *(p_object + 56);
      v19 = (v16 + 63) >> 6;
      v182 = 0;
      v183 = object + 1;
      p_object = &object->_object;
      while (v18)
      {
        v20 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        v21 = v20 | (v14 << 6);
        v22 = v185;
LABEL_15:
        v5 = v22[13]._countAndFlagsBits;
        v25 = v22[10]._countAndFlagsBits;
        (object[1]._countAndFlagsBits)(v5, *(v184 + 48) + object[4]._object * v21, v25);
        v26 = Device.isActive.getter();
        (object->_object)(v5, v25);
        if (v26)
        {
          *&v180[(v21 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v21;
          v27 = __OFADD__(v182++, 1);
          if (v27)
          {
            __break(1u);
            goto LABEL_19;
          }
        }
      }

      v23 = v14;
      v22 = v185;
      while (1)
      {
        v14 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v14 >= v19)
        {
          v29 = sub_10033948C(v180, v179, v182, v184);
          v30 = v22[18]._countAndFlagsBits;
          goto LABEL_21;
        }

        v24 = *(v15 + 8 * v14);
        ++v23;
        if (v24)
        {
          v18 = (v24 - 1) & v24;
          v21 = __clz(__rbit64(v24)) | (v14 << 6);
          goto LABEL_15;
        }
      }

LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v30 = object[18]._countAndFlagsBits;
    v160 = swift_slowAlloc();
    v29 = sub_1003390B4(v160, v11, p_object, sub_10033C544, 0);

    if (v30)
    {
      return result;
    }

    v22 = v185;
LABEL_21:
    v31 = v22[16]._object;
    sub_100318FB0(v29);

    v32 = Array.description.getter();
    v34 = v33;

    v35 = sub_10000D01C(v32, v34, v186);

    v36 = v181;
    *(v181 + 14) = v35;
    *(v36 + 11) = 2160;
    v36[3] = 1752392040;
    *(v36 + 16) = 2081;
    v37 = v31[32];
    v38 = v37 & 0x3F;
    v39 = ((1 << v37) + 63) >> 6;
    v40 = 8 * v39;

    if (v38 > 0xD)
    {
      break;
    }

LABEL_22:
    v174 = v39;
    v178 = v30;
    v172 = &v162;
    v42 = v22[16]._object;
    v43 = v22[10]._object;
    __chkstk_darwin(v41);
    v179 = &v162 - ((v40 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v179, v40);
    v180 = 0;
    v44 = 0;
    v183 = v42;
    v46 = *(v42 + 7);
    object = (v42 + 56);
    v45 = v46;
    v47 = 1 << v31[32];
    v48 = -1;
    if (v47 < 64)
    {
      v48 = ~(-1 << v47);
    }

    v49 = v48 & v45;
    v50 = (v47 + 63) >> 6;
    v182 = v43 + 16;
    while (v49)
    {
      v51 = __clz(__rbit64(v49));
      v49 &= v49 - 1;
LABEL_32:
      p_object = v51 | (v44 << 6);
      v54 = v185[13]._countAndFlagsBits;
      v55 = v185[10]._countAndFlagsBits;
      (*(v43 + 2))(v54, v183[3]._countAndFlagsBits + *(v43 + 9) * p_object, v55);
      v56 = Device.isActive.getter();
      (*(v43 + 1))(v54, v55);
      if (v56)
      {
        *&v179[(p_object >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << p_object;
        v27 = __OFADD__(v180++, 1);
        if (v27)
        {
          __break(1u);
LABEL_36:
          object = v185;
          v57 = sub_10033948C(v179, v174, v180, v185[16]._object);
          goto LABEL_37;
        }
      }
    }

    v52 = v44;
    while (1)
    {
      v44 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        break;
      }

      if (v44 >= v50)
      {
        goto LABEL_36;
      }

      v53 = *(&object->_countAndFlagsBits + v44);
      ++v52;
      if (v53)
      {
        v51 = __clz(__rbit64(v53));
        v49 = (v53 - 1) & v53;
        goto LABEL_32;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    swift_once();
  }

  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v159 = v22[16]._object;
  if (isStackAllocationSafe)
  {

    v22 = v185;
    goto LABEL_22;
  }

  v161 = swift_slowAlloc();
  v57 = sub_1003390B4(v161, v39, v159, sub_10033C544, 0);

  if (v30)
  {
    return result;
  }

  v178 = 0;
  object = v185;
LABEL_37:
  countAndFlagsBits = v178;
  sub_100318FB0(v57);

  v58 = Array.description.getter();
  v60 = v59;

  v61 = sub_10000D01C(v58, v60, v186);

  v62 = v181;
  *(v181 + 34) = v61;
  v63 = v177;
  _os_log_impl(&_mh_execute_header, v177, v176, "cached active Devices: %{private,mask.hash}s\ncurrent active Devices: %{private,mask.hash}s", v62, 0x2Au);
  swift_arrayDestroy();

  p_object = v184;
LABEL_38:
  v65 = object[14]._countAndFlagsBits;
  v66 = object[10]._object;
  v67 = object[8]._countAndFlagsBits;
  v68 = object[6]._object;
  v69 = object[5]._countAndFlagsBits;
  v186[0] = object[16]._object;
  v64 = v186[0];

  sub_10023CE40(p_object);
  v70 = v186[0];

  v72 = sub_10033AF34(v71, v64);

  v163 = sub_10033B7FC(v70, v64);
  object[19]._countAndFlagsBits = v163;

  v74 = 0;
  v76 = v72 + 56;
  v75 = *(v72 + 56);
  v77 = -1;
  v175 = v72;
  v78 = -1 << *(v72 + 32);
  if (-v78 < 64)
  {
    v77 = ~(-1 << -v78);
  }

  p_object = v77 & v75;
  v79 = (63 - v78) >> 6;
  v171 = v66 + 16;
  v172 = v66;
  v169 = (v69 + 8);
  v170 = (v66 + 8);
  v168 = (v68 + 8);
  v174 = (v65 + 8);
  v183 = (v67 + 8);
  *&v73 = 136315138;
  v164 = v73;
  v184 = countAndFlagsBits;
  v166 = v76;
  v165 = v79;
  v167 = (v67 + 16);
  if (p_object)
  {
    while (1)
    {
      v80 = v74;
LABEL_45:
      (v172[2])(object[12]._object, *(v175 + 48) + v172[9] * (__clz(__rbit64(p_object)) | (v80 << 6)), object[10]._countAndFlagsBits);
      if (qword_1005A82A8 != -1)
      {
        swift_once();
      }

      v81 = object[15]._countAndFlagsBits;
      v82 = object[13]._object;
      v176 = object[14]._object;
      v177 = v82;
      v83 = object[12]._object;
      v84 = object[9]._object;
      v85 = object[10]._countAndFlagsBits;
      v179 = v81;
      v180 = v84;
      v87 = object[7]._countAndFlagsBits;
      v86 = object[7]._object;
      v181 = object[9]._countAndFlagsBits;
      v182 = v86;
      v88 = object[5]._object;
      v178 = object[6]._countAndFlagsBits;
      v89 = object[4]._object;
      sub_10000A6F0(v89, qword_1005E04E0);
      sub_10001DF0C(&qword_1005AF070, &qword_1005AF068, &unk_1004D06E0, &protocol conformance descriptor for Expression<A>);
      ExpressionType<>.lowercaseString.getter();
      Device.identifier.getter();
      (*v170)(v83, v85);
      v90 = String.lowercased()();
      object = v185;

      object[1] = v90;
      == infix<A>(_:_:)();

      (*v169)(v88, v89);
      v92 = v176;
      v91 = v177;
      QueryType.filter(_:)();
      (*v168)(v87, v178);
      v93 = v180;
      QueryType.delete()();
      v94 = *v174;
      (*v174)(v92, v91);
      v95 = *v167;
      (*v167)(v181, v93, v182);
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.default.getter();
      v98 = os_log_type_enabled(v96, v97);
      v99 = object[9]._countAndFlagsBits;
      if (v98)
      {
        v100 = object[8]._object;
        v182 = v94;
        v101 = v185[7]._object;
        v102 = swift_slowAlloc();
        v181 = swift_slowAlloc();
        v186[0] = v181;
        *v102 = v164;
        v95(v100, v99, v101);
        v180 = String.init<A>(describing:)();
        v104 = v103;
        v105 = v183->_countAndFlagsBits;
        v106 = v101;
        v94 = v182;
        object = v185;
        (v183->_countAndFlagsBits)(v99, v106);
        v107 = sub_10000D01C(v180, v104, v186);

        *(v102 + 4) = v107;
        _os_log_impl(&_mh_execute_header, v96, v97, "LocalStorage delete a device record: %s", v102, 0xCu);
        sub_100004984(v181);
      }

      else
      {
        v108 = object[7]._object;

        v105 = v183->_countAndFlagsBits;
        (v183->_countAndFlagsBits)(v99, v108);
      }

      v109 = v184;
      Connection.run(_:)();
      if (v109)
      {
        break;
      }

      p_object &= p_object - 1;
      v105(object[9]._object, object[7]._object);
      v184 = 0;
      v74 = v80;
      v76 = v166;
      v79 = v165;
      if (!p_object)
      {
        goto LABEL_42;
      }
    }

    v152 = object[15]._countAndFlagsBits;
    v153 = object[13]._object;
    v154 = object[9]._object;
    v155 = object[7]._object;

    v105(v154, v155);
    (v94)(v152, v153);
    v156 = v185[5]._object;
    v182 = v185[7]._countAndFlagsBits;
    v183 = v156;
    v184 = v185[4]._countAndFlagsBits;

    v157 = v185;

    v151 = v157->_object;
LABEL_69:

    return v151();
  }

  else
  {
    while (1)
    {
LABEL_42:
      v80 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        __break(1u);
        goto LABEL_73;
      }

      if (v80 >= v79)
      {
        break;
      }

      p_object = *(v76 + 8 * v80);
      ++v74;
      if (p_object)
      {
        goto LABEL_45;
      }
    }

    v110 = v163;
    v111 = *(v163 + 32);
    LOBYTE(object[22]._countAndFlagsBits) = v111;
    v112 = -1 << v111;
    v113 = *(v110 + 56);
    if (-v112 < 64)
    {
      v114 = ~(-1 << -v112);
    }

    else
    {
      v114 = -1;
    }

    object[19]._object = v184;
    v115 = v114 & v113;
    if ((v114 & v113) == 0)
    {
      v118 = 0;
      v119 = ((63 - v112) >> 6) - 1;
      v117 = object[19]._countAndFlagsBits;
      while (v119 != v118)
      {
        v116 = (v118 + 1);
        v115 = *(v117 + 8 * v118++ + 64);
        if (v115)
        {
          goto LABEL_61;
        }
      }

      v144 = object[15]._countAndFlagsBits;
      v145 = object[13]._object;
      v146 = object[14]._countAndFlagsBits;
      v147 = v185[9]._object;
      v178 = v185[11]._countAndFlagsBits;
      v179 = v147;
      v148 = v185[8]._object;
      v180 = v185[9]._countAndFlagsBits;
      v181 = v148;
      v149 = v185[5]._object;
      v182 = v185[7]._countAndFlagsBits;
      v183 = v149;
      v184 = v185[4]._countAndFlagsBits;
      (*(v146 + 8))(v144, v145);

      v150 = v185;

      v151 = v150->_object;
      goto LABEL_69;
    }

    v116 = 0;
    v117 = object[19]._countAndFlagsBits;
LABEL_61:
    object[20]._countAndFlagsBits = v115;
    object[20]._object = v116;
    v120 = object[11]._object;
    v121 = object[12]._countAndFlagsBits;
    v123 = object[10]._object;
    v122 = object[11]._countAndFlagsBits;
    v124 = object[10]._countAndFlagsBits;
    v125 = v123[2];
    v125(v121, *(v117 + 48) + v123[9] * (__clz(__rbit64(v115)) | (v116 << 6)), v124);
    (v123[4])(v120, v121, v124);
    v125(v122, v120, v124);
    v126 = Logger.logObject.getter();
    v127 = static os_log_type_t.default.getter();
    v128 = os_log_type_enabled(v126, v127);
    v130 = object[10]._object;
    v129 = object[11]._countAndFlagsBits;
    v131 = object[10]._countAndFlagsBits;
    if (v128)
    {
      v132 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v186[0] = v133;
      *v132 = v164;
      sub_10000A49C(&qword_1005B1DF0, &type metadata accessor for Device, &protocol conformance descriptor for Device);
      v134 = dispatch thunk of CustomStringConvertible.description.getter();
      v136 = v135;
      v137 = v130[1];
      v137(v129, v131);
      v138 = sub_10000D01C(v134, v136, v186);

      *(v132 + 4) = v138;
      _os_log_impl(&_mh_execute_header, v126, v127, "LocalStorage added a device: %s", v132, 0xCu);
      sub_100004984(v133);
    }

    else
    {

      v137 = v130[1];
      v137(v129, v131);
    }

    v139 = v185;
    v185[21]._countAndFlagsBits = v137;
    v140 = swift_task_alloc();
    v139[21]._object = v140;
    *v140 = v139;
    v140[1] = sub_1003243DC;
    v141 = v139[11]._object;
    v142 = v139[4]._countAndFlagsBits;

    return sub_100330EF4(v142, v141);
  }
}

uint64_t sub_1003243DC()
{

  return _swift_task_switch(sub_100324504, 0, 0);
}

uint64_t sub_100324504()
{
  v43 = v0;
  v1 = *(v0 + 312);
  Connection.run(_:)();
  v2 = *(v0 + 336);
  if (v1)
  {
    v3 = *(v0 + 224);
    v39 = *(v0 + 216);
    v40 = *(v0 + 240);
    v38 = *(v0 + 184);
    v4 = *(v0 + 160);
    v5 = *(v0 + 56);
    v6 = *(v0 + 64);
    v7 = *(v0 + 48);

    (*(v5 + 8))(v6, v7);
    v2(v38, v4);
    (*(v3 + 8))(v40, v39);

    v8 = *(v0 + 8);
LABEL_3:

    return v8();
  }

  v10 = *(v0 + 184);
  v11 = *(v0 + 160);
  (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
  v2(v10, v11);
  v13 = *(v0 + 320);
  v12 = *(v0 + 328);
  *(v0 + 312) = 0;
  v14 = (v13 - 1) & v13;
  if (!v14)
  {
    while (1)
    {
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
      }

      v15 = *(v0 + 304);
      if (v16 >= (((1 << *(v0 + 352)) + 63) >> 6))
      {
        break;
      }

      v14 = *(v15 + 8 * v16 + 56);
      ++v12;
      if (v14)
      {
        v12 = v16;
        goto LABEL_12;
      }
    }

    (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 216));

    v8 = *(v0 + 8);
    goto LABEL_3;
  }

  v15 = *(v0 + 304);
LABEL_12:
  *(v0 + 320) = v14;
  *(v0 + 328) = v12;
  v18 = *(v0 + 184);
  v17 = *(v0 + 192);
  v20 = *(v0 + 168);
  v19 = *(v0 + 176);
  v21 = *(v0 + 160);
  v22 = *(v20 + 16);
  v22(v17, *(v15 + 48) + *(v20 + 72) * (__clz(__rbit64(v14)) | (v12 << 6)), v21);
  (*(v20 + 32))(v18, v17, v21);
  v22(v19, v18, v21);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v27 = *(v0 + 168);
  v26 = *(v0 + 176);
  v28 = *(v0 + 160);
  if (v25)
  {
    v29 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = v41;
    *v29 = 136315138;
    sub_10000A49C(&qword_1005B1DF0, &type metadata accessor for Device, &protocol conformance descriptor for Device);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    v33 = *(v27 + 8);
    v33(v26, v28);
    v34 = sub_10000D01C(v30, v32, &v42);

    *(v29 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v23, v24, "LocalStorage added a device: %s", v29, 0xCu);
    sub_100004984(v41);
  }

  else
  {

    v33 = *(v27 + 8);
    v33(v26, v28);
  }

  *(v0 + 336) = v33;
  v35 = swift_task_alloc();
  *(v0 + 344) = v35;
  *v35 = v0;
  v35[1] = sub_1003243DC;
  v36 = *(v0 + 184);
  v37 = *(v0 + 64);

  return sub_100330EF4(v37, v36);
}

uint64_t sub_100324ACC()
{
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[28];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100324C50()
{
  v1 = *(*(v0 + 56) + 112);
  *(v0 + 64) = v1;
  return _swift_task_switch(sub_100324C74, v1, 0);
}

uint64_t sub_100324C74()
{
  sub_10000A0A4();
  *(v0 + 72) = 0;
  v1 = *(v0 + 64);

  return _swift_task_switch(sub_100324D28, v1, 0);
}

uint64_t sub_100324D28()
{
  type metadata accessor for LocalStorageDatabase(0);
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase, &unk_1004D5700);
  *(v0 + 80) = Database.readConnection.getter();

  return _swift_task_switch(sub_100324DDC, 0, 0);
}

uint64_t sub_100324DDC()
{
  if (v0[10])
  {
    if (qword_1005A8140 != -1)
    {
      swift_once();
    }

    v1 = v0[9];
    v2 = type metadata accessor for Table();
    v3 = sub_10000A6F0(v2, qword_1005E0090);
    v0[5] = v2;
    v0[6] = &protocol witness table for Table;
    v4 = sub_10000331C(v0 + 2);
    (*(*(v2 - 8) + 16))(v4, v3, v2);
    v5 = sub_100339FCC((v0 + 2));

    sub_100004984(v0 + 2);
    if (!v1)
    {
      v6 = v0[1];

      return v6(v5);
    }
  }

  else
  {
    v8 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError, &protocol conformance descriptor for DatabaseError);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, enum case for DatabaseError.notConnected(_:), v8);
    swift_willThrow();
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_100324FE8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10004B564(&qword_1005B1D80, &qword_1004D6000);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for Insert();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1003250E0, 0, 0);
}

uint64_t sub_1003250E0()
{
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 64) = v1;
  return _swift_task_switch(sub_100325104, v1, 0);
}

uint64_t sub_100325104()
{
  sub_10000A0A4();
  *(v0 + 72) = 0;
  v1 = *(v0 + 64);

  return _swift_task_switch(sub_1003251CC, v1, 0);
}

uint64_t sub_1003251CC()
{
  type metadata accessor for LocalStorageDatabase(0);
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase, &unk_1004D5700);
  *(v0 + 80) = Database.writeConnection.getter();

  return _swift_task_switch(sub_100325280, 0, 0);
}

uint64_t sub_100325280()
{
  if (v0[10])
  {
    v1 = swift_task_alloc();
    v0[11] = v1;
    *v1 = v0;
    v1[1] = sub_100325410;
    v2 = v0[4];
    v3 = v0[2];

    return sub_10033150C(v2, v3);
  }

  else
  {
    v5 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError, &protocol conformance descriptor for DatabaseError);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for DatabaseError.notConnected(_:), v5);
    swift_willThrow();

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_100325410()
{

  return _swift_task_switch(sub_10032550C, 0, 0);
}

uint64_t sub_10032550C()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_100002CE0(v3, &qword_1005B1D80, &qword_1004D6000);
  }

  else
  {
    v4 = v0[7];
    (*(v2 + 32))(v4, v3, v1);
    Connection.run(_:)();
    (*(v2 + 8))(v4, v1);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_100325664(uint64_t a1)
{
  *(v2 + 544) = v1;
  *(v2 + 536) = a1;
  return _swift_task_switch(sub_100325688, 0, 0);
}

uint64_t sub_100325688()
{
  v1 = *(*(v0 + 544) + 112);
  *(v0 + 552) = v1;
  return _swift_task_switch(sub_1003256AC, v1, 0);
}

uint64_t sub_1003256AC()
{
  sub_10000A0A4();
  *(v0 + 560) = 0;
  v1 = *(v0 + 552);

  return _swift_task_switch(sub_100325760, v1, 0);
}

uint64_t sub_100325760()
{
  type metadata accessor for LocalStorageDatabase(0);
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase, &unk_1004D5700);
  *(v0 + 568) = Database.readConnection.getter();

  return _swift_task_switch(sub_10003384C, 0, 0);
}

uint64_t sub_100325814(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v6 = type metadata accessor for Table();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v7 = type metadata accessor for Delete();
  v3[16] = v7;
  v3[17] = *(v7 - 8);
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_100325A04, 0, 0);
}

uint64_t sub_100325A04()
{
  v1 = *(*(v0 + 48) + 112);
  *(v0 + 152) = v1;
  return _swift_task_switch(sub_100325A28, v1, 0);
}

uint64_t sub_100325A28()
{
  sub_10000A0A4();
  *(v0 + 160) = 0;
  v1 = *(v0 + 152);

  return _swift_task_switch(sub_100325B14, v1, 0);
}

uint64_t sub_100325B14()
{
  type metadata accessor for LocalStorageDatabase(0);
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase, &unk_1004D5700);
  *(v0 + 168) = Database.writeConnection.getter();

  return _swift_task_switch(sub_100325BC8, 0, 0);
}

uint64_t sub_100325BC8()
{
  v37 = v0;
  if (!*(v0 + 168))
  {
    v8 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError, &protocol conformance descriptor for DatabaseError);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, enum case for DatabaseError.notConnected(_:), v8);
    swift_willThrow();
    goto LABEL_9;
  }

  if (qword_1005A8158 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(*(v0 + 104), qword_1005E00D8);
  if (qword_1005A8360 != -1)
  {
    swift_once();
  }

  v35 = *(v0 + 160);
  v34 = *(v0 + 112);
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v32 = *(v0 + 120);
  v33 = *(v0 + 80);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);
  sub_10000A6F0(v6, qword_1005E0708);
  sub_10001DF0C(&qword_1005AF070, &qword_1005AF068, &unk_1004D06E0, &protocol conformance descriptor for Expression<A>);
  ExpressionType<>.lowercaseString.getter();
  *(v0 + 16) = String.lowercased()();
  == infix<A>(_:_:)();

  (*(v5 + 8))(v4, v6);
  QueryType.filter(_:)();
  (*(v3 + 8))(v2, v33);
  QueryType.delete()();
  (*(v34 + 8))(v32, v1);
  v7 = Connection.run(_:)();
  if (v35)
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));

LABEL_9:

    v10 = *(v0 + 8);
    goto LABEL_22;
  }

  if (v7 == 1)
  {
    if (qword_1005A84A0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000A6F0(v11, qword_1005E0AC8);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    v14 = os_log_type_enabled(v12, v13);
    v16 = *(v0 + 136);
    v15 = *(v0 + 144);
    v17 = *(v0 + 128);
    if (v14)
    {
      v19 = *(v0 + 32);
      v18 = *(v0 + 40);
      v20 = swift_slowAlloc();
      v36[0] = swift_slowAlloc();
      *v20 = 136446466;
      *(v20 + 4) = sub_10000D01C(0xD00000000000001CLL, 0x80000001004E7BA0, v36);
      *(v20 + 12) = 2082;
      *(v20 + 14) = sub_10000D01C(v19, v18, v36);
      _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s: fence deleted: %{public}s", v20, 0x16u);
      swift_arrayDestroy();
    }

    (*(v16 + 8))(v15, v17);
  }

  else
  {
    v21 = v7;
    if (qword_1005A84A0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000A6F0(v22, qword_1005E0AC8);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    v25 = os_log_type_enabled(v23, v24);
    v27 = *(v0 + 136);
    v26 = *(v0 + 144);
    v28 = *(v0 + 128);
    if (v25)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v36[0] = v30;
      *v29 = 136446466;
      *(v29 + 4) = sub_10000D01C(0xD00000000000001CLL, 0x80000001004E7BA0, v36);
      *(v29 + 12) = 2050;
      *(v29 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s: did not delete fence. DeletedRows: %{public}ld", v29, 0x16u);
      sub_100004984(v30);
    }

    (*(v27 + 8))(v26, v28);
  }

  v10 = *(v0 + 8);
LABEL_22:

  return v10();
}

uint64_t sub_100326220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[450] = v3;
  v4[449] = a3;
  v4[448] = a2;
  v4[447] = a1;
  sub_10004B564(&qword_1005AF468, &qword_1004D06C0);
  v4[451] = swift_task_alloc();
  v4[452] = swift_task_alloc();
  v5 = type metadata accessor for Row();
  v4[453] = v5;
  v4[454] = *(v5 - 8);
  v4[455] = swift_task_alloc();
  v4[456] = swift_task_alloc();
  v4[457] = swift_task_alloc();
  v6 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
  v4[458] = v6;
  v4[459] = *(v6 - 8);
  v4[460] = swift_task_alloc();
  v7 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v4[461] = v7;
  v4[462] = *(v7 - 8);
  v4[463] = swift_task_alloc();
  v8 = type metadata accessor for Table();
  v4[464] = v8;
  v4[465] = *(v8 - 8);
  v4[466] = swift_task_alloc();

  return _swift_task_switch(sub_100326474, 0, 0);
}

uint64_t sub_100326474()
{
  v1 = *(*(v0 + 3600) + 112);
  *(v0 + 3736) = v1;
  return _swift_task_switch(sub_100326498, v1, 0);
}

uint64_t sub_100326498()
{
  sub_10000A0A4();
  *(v0 + 3744) = 0;
  v1 = *(v0 + 3736);

  return _swift_task_switch(sub_1003265CC, v1, 0);
}

uint64_t sub_1003265CC()
{
  type metadata accessor for LocalStorageDatabase(0);
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase, &unk_1004D5700);
  *(v0 + 3752) = Database.readConnection.getter();

  return _swift_task_switch(sub_100326680, 0, 0);
}

void *sub_100326680()
{
  if (*(v0 + 3752))
  {
    if (qword_1005A8158 != -1)
    {
      swift_once();
    }

    sub_10000A6F0(*(v0 + 3712), qword_1005E00D8);
    if (qword_1005A8360 != -1)
    {
      swift_once();
    }

    v46 = *(v0 + 3744);
    v44 = *(v0 + 3720);
    v1 = *(v0 + 3712);
    v2 = *(v0 + 3704);
    v3 = *(v0 + 3696);
    v41 = *(v0 + 3728);
    v43 = *(v0 + 3688);
    v4 = *(v0 + 3680);
    v5 = *(v0 + 3672);
    v6 = *(v0 + 3664);
    sub_10000A6F0(v6, qword_1005E0708);
    sub_10001DF0C(&qword_1005AF070, &qword_1005AF068, &unk_1004D06E0, &protocol conformance descriptor for Expression<A>);
    ExpressionType<>.lowercaseString.getter();
    *(v0 + 3560) = String.lowercased()();
    == infix<A>(_:_:)();

    (*(v5 + 8))(v4, v6);
    QueryType.filter(_:)();
    (*(v3 + 8))(v2, v43);
    *(v0 + 3544) = v1;
    *(v0 + 3552) = &protocol witness table for Table;
    v7 = sub_10000331C((v0 + 3520));
    (*(v44 + 16))(v7, v41, v1);
    Connection.prepare(_:)();
    if (!v46)
    {
      sub_100004984((v0 + 3520));
      v12 = dispatch thunk of _AnySequenceBox._underestimatedCount.getter();
      sub_10000F708(0, v12 & ~(v12 >> 63), 0);
      result = dispatch thunk of _AnySequenceBox._makeIterator()();
      if (v12 < 0)
      {
        __break(1u);
      }

      else
      {
        if (!v12)
        {
LABEL_20:
          v22 = *(v0 + 3632);
          v23 = *(v0 + 3624);
          v24 = *(v0 + 3616);
          dispatch thunk of _AnyIteratorBoxBase.next()();
          v45 = *(v22 + 48);
          if (v45(v24, 1, v23) != 1)
          {
            v31 = *(v0 + 3632);
            v42 = *(v31 + 32);
            v32 = (v31 + 16);
            v33 = (v31 + 8);
            do
            {
              v34 = *(v0 + 3656);
              v35 = *(v0 + 3648);
              v36 = *(v0 + 3624);
              v42(v34, *(v0 + 3616), v36);
              (*v32)(v35, v34, v36);
              sub_10033C560(v35, v0 + 600);
              (*v33)(*(v0 + 3656), *(v0 + 3624));
              v38 = _swiftEmptyArrayStorage[2];
              v37 = _swiftEmptyArrayStorage[3];
              if (v38 >= v37 >> 1)
              {
                sub_10000F708((v37 > 1), v38 + 1, 1);
              }

              v39 = *(v0 + 3624);
              v40 = *(v0 + 3616);
              _swiftEmptyArrayStorage[2] = v38 + 1;
              memcpy(&_swiftEmptyArrayStorage[73 * v38 + 4], (v0 + 600), 0x241uLL);
              dispatch thunk of _AnyIteratorBoxBase.next()();
            }

            while (v45(v40, 1, v39) != 1);
          }

          v25 = *(v0 + 3616);

          sub_100002CE0(v25, &qword_1005AF468, &qword_1004D06C0);
          v26 = *(v0 + 3728);
          v27 = *(v0 + 3720);
          v28 = *(v0 + 3712);
          if (_swiftEmptyArrayStorage[2])
          {
            memcpy((v0 + 2352), &_swiftEmptyArrayStorage[4], 0x241uLL);
            sub_10005D0C0(v0 + 2352, v0 + 2936);

            (*(v27 + 8))(v26, v28);
            memcpy((v0 + 1768), (v0 + 2352), 0x241uLL);
            v29._countAndFlagsBits = v0 + 1768;
            DarwinNotification.init(name:value:)(v29, v30);
            memcpy((v0 + 1184), (v0 + 1768), 0x241uLL);
          }

          else
          {
            (*(v27 + 8))(*(v0 + 3728), *(v0 + 3712));

            sub_10033BCFC((v0 + 1184));
          }

          memcpy(*(v0 + 3576), (v0 + 1184), 0x241uLL);

          v10 = *(v0 + 8);
          goto LABEL_10;
        }

        v13 = *(v0 + 3632);
        v14 = (v13 + 48);
        v15 = (v13 + 16);
        v16 = (v13 + 8);
        while (1)
        {
          v17 = *(v0 + 3624);
          v18 = *(v0 + 3608);
          dispatch thunk of _AnyIteratorBoxBase.next()();
          result = (*v14)(v18, 1, v17);
          if (result == 1)
          {
            break;
          }

          v19 = *(v0 + 3640);
          (*v15)(v19, *(v0 + 3608), *(v0 + 3624));
          sub_10033C560(v19, v0 + 16);
          (*v16)(*(v0 + 3608), *(v0 + 3624));
          v21 = _swiftEmptyArrayStorage[2];
          v20 = _swiftEmptyArrayStorage[3];
          if (v21 >= v20 >> 1)
          {
            sub_10000F708((v20 > 1), v21 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v21 + 1;
          memcpy(&_swiftEmptyArrayStorage[73 * v21 + 4], (v0 + 16), 0x241uLL);
          if (!--v12)
          {
            goto LABEL_20;
          }
        }
      }

      __break(1u);
      return result;
    }

    (*(*(v0 + 3720) + 8))(*(v0 + 3728), *(v0 + 3712));

    sub_100004984((v0 + 3520));
  }

  else
  {
    v8 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError, &protocol conformance descriptor for DatabaseError);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, enum case for DatabaseError.notConnected(_:), v8);
    swift_willThrow();
  }

  v10 = *(v0 + 8);
LABEL_10:

  return v10();
}

uint64_t sub_100326EE4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Connection.TransactionMode();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100326FA4, 0, 0);
}

uint64_t sub_100326FA4()
{
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 56) = v1;
  return _swift_task_switch(sub_100326FC8, v1, 0);
}

uint64_t sub_100326FC8()
{
  sub_10000A0A4();
  *(v0 + 64) = 0;
  v1 = *(v0 + 56);

  return _swift_task_switch(sub_100327084, v1, 0);
}

uint64_t sub_100327084()
{
  type metadata accessor for LocalStorageDatabase(0);
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase, &unk_1004D5700);
  *(v0 + 72) = Database.writeConnection.getter();

  return _swift_task_switch(sub_100327138, 0, 0);
}

uint64_t sub_100327138()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v3 = *(v0 + 40);
    v2 = *(v0 + 48);
    v4 = *(v0 + 32);
    v5 = swift_task_alloc();
    v6 = *(v0 + 16);
    *(v5 + 16) = v1;
    *(v5 + 24) = v6;
    (*(v3 + 104))(v2, enum case for Connection.TransactionMode.deferred(_:), v4);
    Connection.transaction(_:block:)();
    (*(v3 + 8))(v2, v4);
  }

  else
  {
    v7 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError, &protocol conformance descriptor for DatabaseError);
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, enum case for DatabaseError.notConnected(_:), v7);
    swift_willThrow();
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1003272F4()
{
  v1[19] = v0;
  sub_10004B564(&qword_1005A9DB8, &unk_1004CC1D0);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v2 = type metadata accessor for URL();
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v3 = type metadata accessor for ShareInvitationRecord(0);
  v1[26] = v3;
  v1[27] = *(v3 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  sub_10004B564(&qword_1005AF468, &qword_1004D06C0);
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v4 = type metadata accessor for Row();
  v1[34] = v4;
  v1[35] = *(v4 - 8);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();

  return _swift_task_switch(sub_10032753C, 0, 0);
}

uint64_t sub_10032753C()
{
  v1 = *(*(v0 + 152) + 112);
  *(v0 + 312) = v1;
  return _swift_task_switch(sub_100327560, v1, 0);
}

uint64_t sub_100327560()
{
  sub_10000A0A4();
  *(v0 + 320) = 0;
  v1 = *(v0 + 312);

  return _swift_task_switch(sub_1003276C0, v1, 0);
}

uint64_t sub_1003276C0()
{
  type metadata accessor for LocalStorageDatabase(0);
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase, &unk_1004D5700);
  *(v0 + 328) = Database.readConnection.getter();

  return _swift_task_switch(sub_100327774, 0, 0);
}

uint64_t sub_100327774()
{
  if (!*(v0 + 328))
  {
    v5 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError, &protocol conformance descriptor for DatabaseError);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for DatabaseError.notConnected(_:), v5);
    swift_willThrow();
    goto LABEL_7;
  }

  if (qword_1005A8150 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 320);
  v2 = type metadata accessor for Table();
  v3 = sub_10000A6F0(v2, qword_1005E00C0);
  *(v0 + 40) = v2;
  *(v0 + 48) = &protocol witness table for Table;
  v4 = sub_10000331C((v0 + 16));
  (*(*(v2 - 8) + 16))(v4, v3, v2);
  Connection.prepare(_:)();
  if (v1)
  {

    sub_100004984((v0 + 16));
LABEL_7:

    v7 = *(v0 + 8);

    return v7();
  }

  sub_100004984((v0 + 16));
  v9 = dispatch thunk of _AnySequenceBox._underestimatedCount.getter();
  sub_10023967C(0, v9 & ~(v9 >> 63), 0);
  result = dispatch thunk of _AnySequenceBox._makeIterator()();
  if (v9 < 0)
  {
    __break(1u);
LABEL_39:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v10 = *(v0 + 280);
    v95 = (v10 + 16);
    v97 = (v10 + 48);
    v11 = *(v0 + 184);
    v90 = (v11 + 32);
    v86 = (v11 + 8);
    v88 = (v11 + 16);
    v92 = (v10 + 8);
    v93 = (v11 + 48);
    v82 = *(v0 + 208);
    v84 = *(v0 + 216);
    do
    {
      v12 = *(v0 + 272);
      v13 = *(v0 + 256);
      dispatch thunk of _AnyIteratorBoxBase.next()();
      result = (*v97)(v13, 1, v12);
      if (result == 1)
      {
        goto LABEL_39;
      }

      (*v95)(*(v0 + 288), *(v0 + 256), *(v0 + 272));
      if (qword_1005A8308 != -1)
      {
        swift_once();
      }

      v14 = *(v0 + 176);
      v15 = *(v0 + 160);
      v16 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
      sub_10000A6F0(v16, qword_1005E0600);
      Row.subscript.getter();
      URL.init(string:)();

      if ((*v93)(v15, 1, v14) == 1)
      {
        v64 = *(v0 + 288);
        v65 = *(v0 + 272);
        v66 = *(v0 + 256);
        v67 = *(v0 + 160);

        sub_100002CE0(v67, &qword_1005A9DB8, &unk_1004CC1D0);
        Row.subscript.getter();
        v68 = *(v0 + 72);
        v69 = *(v0 + 80);
        sub_10033BD30();
        swift_allocError();
        *v70 = v68;
        *(v70 + 8) = v69;
        *(v70 + 16) = 0;
        swift_willThrow();

        v71 = *v92;
        (*v92)(v64, v65);

        v71(v66, v65);
        goto LABEL_7;
      }

      v17 = *(v0 + 224);
      v18 = *(v0 + 192);
      v19 = *(v0 + 176);
      (*v90)(v18, *(v0 + 160), v19);
      (*v88)(v17, v18, v19);
      if (qword_1005A8310 != -1)
      {
        swift_once();
      }

      v20 = *(v0 + 288);
      v21 = *(v0 + 272);
      v22 = *(v0 + 256);
      v23 = *(v0 + 224);
      v24 = *(v0 + 232);
      v25 = *(v0 + 192);
      v26 = *(v0 + 176);
      v27 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
      sub_10000A6F0(v27, qword_1005E0618);
      Row.subscript.getter();
      (*v86)(v25, v26);
      v28 = *v92;
      (*v92)(v20, v21);
      *(v23 + *(v82 + 20)) = *(v0 + 88);
      sub_10033C458(v23, v24, type metadata accessor for ShareInvitationRecord);
      v28(v22, v21);
      v30 = _swiftEmptyArrayStorage[2];
      v29 = _swiftEmptyArrayStorage[3];
      if (v30 >= v29 >> 1)
      {
        sub_10023967C((v29 > 1), v30 + 1, 1);
      }

      v31 = *(v0 + 232);
      _swiftEmptyArrayStorage[2] = v30 + 1;
      sub_10033C458(v31, _swiftEmptyArrayStorage + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v30, type metadata accessor for ShareInvitationRecord);
    }

    while (--v9);
  }

  v32 = *(v0 + 272);
  v33 = *(v0 + 280);
  v34 = *(v0 + 264);
  dispatch thunk of _AnyIteratorBoxBase.next()();
  v96 = *(v33 + 48);
  if (v96(v34, 1, v32) != 1)
  {
    v37 = *(v0 + 280);
    v38 = *(v37 + 32);
    v37 += 32;
    v89 = (v37 - 16);
    v91 = v38;
    v39 = *(v0 + 184);
    v85 = (v39 + 32);
    v87 = (v39 + 48);
    v81 = (v39 + 8);
    v83 = (v39 + 16);
    v94 = (v37 - 24);
    v40 = *(v0 + 216);
    v80 = *(v0 + 208);
    while (1)
    {
      v42 = *(v0 + 296);
      v41 = *(v0 + 304);
      v43 = *(v0 + 272);
      v91(v41, *(v0 + 264), v43);
      (*v89)(v42, v41, v43);
      if (qword_1005A8308 != -1)
      {
        swift_once();
      }

      v44 = *(v0 + 168);
      v45 = *(v0 + 176);
      v46 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
      sub_10000A6F0(v46, qword_1005E0600);
      Row.subscript.getter();
      URL.init(string:)();

      if ((*v87)(v44, 1, v45) == 1)
      {
        break;
      }

      v47 = *(v0 + 240);
      v48 = *(v0 + 200);
      v49 = *(v0 + 176);
      (*v85)(v48, *(v0 + 168), v49);
      (*v83)(v47, v48, v49);
      if (qword_1005A8310 != -1)
      {
        swift_once();
      }

      v51 = *(v0 + 296);
      v50 = *(v0 + 304);
      v52 = *(v0 + 272);
      v54 = *(v0 + 240);
      v53 = *(v0 + 248);
      v55 = *(v0 + 200);
      v56 = *(v0 + 176);
      v57 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
      sub_10000A6F0(v57, qword_1005E0618);
      Row.subscript.getter();
      (*v81)(v55, v56);
      v58 = *v94;
      (*v94)(v51, v52);
      v58(v50, v52);
      *(v54 + *(v80 + 20)) = *(v0 + 136);
      sub_10033C458(v54, v53, type metadata accessor for ShareInvitationRecord);
      v60 = _swiftEmptyArrayStorage[2];
      v59 = _swiftEmptyArrayStorage[3];
      if (v60 >= v59 >> 1)
      {
        sub_10023967C((v59 > 1), v60 + 1, 1);
      }

      v62 = *(v0 + 264);
      v61 = *(v0 + 272);
      v63 = *(v0 + 248);
      _swiftEmptyArrayStorage[2] = v60 + 1;
      sub_10033C458(v63, _swiftEmptyArrayStorage + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v60, type metadata accessor for ShareInvitationRecord);
      dispatch thunk of _AnyIteratorBoxBase.next()();
      if (v96(v62, 1, v61) == 1)
      {
        goto LABEL_23;
      }
    }

    v73 = *(v0 + 296);
    v72 = *(v0 + 304);
    v74 = *(v0 + 272);
    v75 = *(v0 + 168);

    sub_100002CE0(v75, &qword_1005A9DB8, &unk_1004CC1D0);
    Row.subscript.getter();
    v76 = *(v0 + 120);
    v77 = *(v0 + 128);
    sub_10033BD30();
    swift_allocError();
    *v78 = v76;
    *(v78 + 8) = v77;
    *(v78 + 16) = 0;
    swift_willThrow();

    v79 = *v94;
    (*v94)(v73, v74);
    v79(v72, v74);

    goto LABEL_7;
  }

LABEL_23:
  v35 = *(v0 + 264);

  sub_100002CE0(v35, &qword_1005AF468, &qword_1004D06C0);

  v36 = *(v0 + 8);

  return v36(_swiftEmptyArrayStorage);
}

uint64_t sub_100328340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v5 = type metadata accessor for OnConflict();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = type metadata accessor for Insert();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = type metadata accessor for ShareInvitationRecord(0);
  v4[17] = swift_task_alloc();

  return _swift_task_switch(sub_100328490, 0, 0);
}

uint64_t sub_100328490()
{
  v1 = *(*(v0 + 72) + 112);
  *(v0 + 144) = v1;
  return _swift_task_switch(sub_1003284B4, v1, 0);
}

uint64_t sub_1003284B4()
{
  sub_10000A0A4();
  *(v0 + 152) = 0;
  v1 = *(v0 + 144);

  return _swift_task_switch(sub_100328588, v1, 0);
}

uint64_t sub_100328588()
{
  type metadata accessor for LocalStorageDatabase(0);
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase, &unk_1004D5700);
  *(v0 + 160) = Database.writeConnection.getter();

  return _swift_task_switch(sub_10032863C, 0, 0);
}

uint64_t sub_10032863C()
{
  if (!v0[20])
  {
    v25 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError, &protocol conformance descriptor for DatabaseError);
    swift_allocError();
    (*(*(v25 - 8) + 104))(v26, enum case for DatabaseError.notConnected(_:), v25);
    swift_willThrow();
    goto LABEL_11;
  }

  v1 = v0[16];
  v2 = v0[17];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 16))(v2, v5, v6);
  v7 = (v2 + *(v1 + 20));
  *v7 = v4;
  v7[1] = v3;
  sub_100005F6C(v4, v3);
  if (qword_1005A8150 != -1)
  {
    swift_once();
  }

  v8 = v0[11];
  v9 = v0[12];
  v10 = v0[10];
  v29 = type metadata accessor for Table();
  sub_10000A6F0(v29, qword_1005E00C0);
  (*(v8 + 104))(v9, enum case for OnConflict.replace(_:), v10);
  sub_10004B564(&qword_1005AF4F0, &qword_1004D07D0);
  type metadata accessor for Setter();
  *(swift_allocObject() + 16) = xmmword_1004C2310;
  if (qword_1005A8308 != -1)
  {
    swift_once();
  }

  v11 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
  sub_10000A6F0(v11, qword_1005E0600);
  v0[2] = URL.absoluteString.getter();
  v0[3] = v12;
  <- infix<A>(_:_:)();

  if (qword_1005A8310 != -1)
  {
    swift_once();
  }

  v13 = v0[19];
  v14 = v0[11];
  v15 = v0[12];
  v16 = v0[10];
  v17 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
  sub_10000A6F0(v17, qword_1005E0618);
  v18 = *v7;
  v19 = v7[1];
  v0[4] = *v7;
  v0[5] = v19;
  sub_100005F6C(v18, v19);
  <- infix<A>(_:_:)();
  sub_1000049D0(v0[4], v0[5]);
  QueryType.insert(or:_:)();

  (*(v14 + 8))(v15, v16);
  Connection.run(_:)();
  v20 = v13;
  v21 = v0[17];
  v22 = v0[14];
  v23 = v0[15];
  v24 = v0[13];
  if (v20)
  {

    (*(v22 + 8))(v23, v24);
    sub_10033C3F8(v21, type metadata accessor for ShareInvitationRecord);
LABEL_11:

    v27 = v0[1];
    goto LABEL_13;
  }

  (*(v22 + 8))(v23, v24);
  sub_10033C3F8(v21, type metadata accessor for ShareInvitationRecord);

  v27 = v0[1];
LABEL_13:

  return v27();
}

uint64_t sub_100328B18(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for Table();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for Delete();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_100328C9C, 0, 0);
}

uint64_t sub_100328C9C()
{
  v1 = *(*(v0 + 40) + 112);
  *(v0 + 120) = v1;
  return _swift_task_switch(sub_100328CC0, v1, 0);
}

uint64_t sub_100328CC0()
{
  sub_10000A0A4();
  *(v0 + 128) = 0;
  v1 = *(v0 + 120);

  return _swift_task_switch(sub_100328D94, v1, 0);
}

uint64_t sub_100328D94()
{
  type metadata accessor for LocalStorageDatabase(0);
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase, &unk_1004D5700);
  *(v0 + 136) = Database.writeConnection.getter();

  return _swift_task_switch(sub_100328E48, 0, 0);
}

uint64_t sub_100328E48()
{
  if (!v0[17])
  {
    v9 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError, &protocol conformance descriptor for DatabaseError);
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, enum case for DatabaseError.notConnected(_:), v9);
    swift_willThrow();
    goto LABEL_9;
  }

  if (qword_1005A8150 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v0[9], qword_1005E00C0);
  if (qword_1005A8308 != -1)
  {
    swift_once();
  }

  v14 = v0[16];
  v1 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];
  v13 = v0[6];
  v6 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
  sub_10000A6F0(v6, qword_1005E0600);
  v0[2] = URL.absoluteString.getter();
  v0[3] = v7;
  == infix<A>(_:_:)();

  QueryType.filter(_:)();
  (*(v5 + 8))(v4, v13);
  QueryType.delete()();
  (*(v1 + 8))(v2, v3);
  Connection.run(_:)();
  v8 = v0[13];
  if (v14)
  {
    (*(v8 + 8))(v0[14], v0[12]);

LABEL_9:

    v11 = v0[1];
    goto LABEL_11;
  }

  (*(v8 + 8))();

  v11 = v0[1];
LABEL_11:

  return v11();
}

uint64_t sub_100329164(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = type metadata accessor for Fence.TriggerPosition();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v5 = type metadata accessor for FenceTriggerRecord(0);
  v3[20] = v5;
  v3[21] = *(v5 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  sub_10004B564(&qword_1005AF468, &qword_1004D06C0);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v6 = type metadata accessor for Row();
  v3[26] = v6;
  v3[27] = *(v6 - 8);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v3[31] = v7;
  v3[32] = *(v7 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v8 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v3[38] = v8;
  v3[39] = *(v8 - 8);
  v3[40] = swift_task_alloc();
  v9 = type metadata accessor for Table();
  v3[41] = v9;
  v3[42] = *(v9 - 8);
  v3[43] = swift_task_alloc();

  return _swift_task_switch(sub_1003294BC, 0, 0);
}

uint64_t sub_1003294BC()
{
  v1 = *(*(v0 + 104) + 112);
  *(v0 + 352) = v1;
  return _swift_task_switch(sub_1003294E0, v1, 0);
}

uint64_t sub_1003294E0()
{
  sub_10000A0A4();
  *(v0 + 360) = 0;
  v1 = *(v0 + 352);

  return _swift_task_switch(sub_100329684, v1, 0);
}

uint64_t sub_100329684()
{
  type metadata accessor for LocalStorageDatabase(0);
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase, &unk_1004D5700);
  *(v0 + 368) = Database.readConnection.getter();

  return _swift_task_switch(sub_100329738, 0, 0);
}

uint64_t sub_100329738()
{
  if (v0[46])
  {
    if (qword_1005A8160 != -1)
    {
      swift_once();
    }

    sub_10000A6F0(v0[41], qword_1005E00F0);
    if (qword_1005A8458 != -1)
    {
      swift_once();
    }

    v98 = v0[45];
    v1 = v0[42];
    v3 = v0[40];
    v2 = v0[41];
    v4 = v0[39];
    v90 = v0[43];
    v93 = v0[38];
    v5 = v0[37];
    v7 = v0[31];
    v6 = v0[32];
    v80 = sub_10004B564(&qword_1005AF078, &unk_1004D0260);
    sub_10000A6F0(v80, qword_1005E09F0);
    Fence.ID.uuid.getter();
    == infix<A>(_:_:)();
    v8 = *(v6 + 8);
    v8(v5, v7);
    QueryType.where(_:)();
    (*(v4 + 8))(v3, v93);
    v0[5] = v2;
    v0[6] = &protocol witness table for Table;
    v9 = sub_10000331C(v0 + 2);
    (*(v1 + 16))(v9, v90, v2);
    Connection.prepare(_:)();
    if (!v98)
    {
      v79 = v8;
      sub_100004984(v0 + 2);
      v14 = dispatch thunk of _AnySequenceBox._underestimatedCount.getter();
      sub_1002396C0(0, v14 & ~(v14 >> 63), 0);
      v15 = _swiftEmptyArrayStorage;
      result = dispatch thunk of _AnySequenceBox._makeIterator()();
      if (v14 < 0)
      {
        __break(1u);
      }

      else
      {
        v16 = v80;
        if (!v14)
        {
LABEL_24:
          v35 = v0[26];
          v36 = v0[27];
          v37 = v0[25];
          dispatch thunk of _AnyIteratorBoxBase.next()();
          v77 = *(v36 + 48);
          if (v77(v37, 1, v35) != 1)
          {
            v44 = v0[27];
            v45 = *(v44 + 32);
            v44 += 32;
            v70 = (v44 - 16);
            v72 = v45;
            v97 = (v0[15] + 32);
            v68 = (v0[32] + 16);
            v65 = v0[20];
            v66 = v0[21];
            v75 = (v44 - 24);
            do
            {
              v46 = v0[30];
              v47 = v0[29];
              v48 = v0[26];
              v72(v46, v0[25], v48);
              (*v70)(v47, v46, v48);
              Row.subscript.getter();
              if (qword_1005A8460 != -1)
              {
                swift_once();
              }

              v100 = v15;
              sub_10000A6F0(v16, qword_1005E0A08);
              Row.subscript.getter();
              if (qword_1005A8468 != -1)
              {
                swift_once();
              }

              v49 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
              sub_10000A6F0(v49, qword_1005E0A20);
              Row.subscript.getter();
              v50 = v0[9];
              v51 = v0[10];
              type metadata accessor for PropertyListDecoder();
              swift_allocObject();
              sub_100005F6C(v50, v51);
              PropertyListDecoder.init()();
              sub_10000A49C(&qword_1005B1D70, &type metadata accessor for Fence.TriggerPosition, &protocol conformance descriptor for Fence.TriggerPosition);
              dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
              v53 = v0[36];
              v52 = v0[37];
              v85 = v0[35];
              v54 = v0[31];
              v92 = v0[29];
              v95 = v0[30];
              v89 = v0[26];
              v82 = v0[23];
              v56 = v0[18];
              v55 = v0[19];
              v57 = v0[14];

              sub_1000049D0(v50, v51);
              v87 = *v97;
              (*v97)(v55, v56, v57);
              v58 = *v68;
              (*v68)(v52, v53, v54);
              Fence.ID.init(id:)();
              v58(v52, v85, v54);
              Fence.TriggerID.init(id:)();
              sub_1000049D0(v50, v51);
              v59 = *v75;
              (*v75)(v92, v89);
              v79(v85, v54);
              v79(v53, v54);
              v87(v82 + *(v65 + 24), v55, v57);
              v59(v95, v89);
              v15 = v100;
              v61 = v100[2];
              v60 = v100[3];
              if (v61 >= v60 >> 1)
              {
                sub_1002396C0((v60 > 1), v61 + 1, 1);
                v15 = v100;
              }

              v63 = v0[25];
              v62 = v0[26];
              v64 = v0[23];
              v15[2] = v61 + 1;
              sub_10033C458(v64, v15 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v61, type metadata accessor for FenceTriggerRecord);
              dispatch thunk of _AnyIteratorBoxBase.next()();
              v16 = v80;
            }

            while (v77(v63, 1, v62) != 1);
          }

          v38 = v0[25];

          sub_100002CE0(v38, &qword_1005AF468, &qword_1004D06C0);
          v40 = v0[42];
          v39 = v0[43];
          v41 = v0[41];
          if (v15[2])
          {
            v42 = *(v0[21] + 80);
            sub_10033C390(v15 + ((v42 + 32) & ~v42), v0[11], type metadata accessor for FenceTriggerRecord);

            (*(v40 + 8))(v39, v41);
            v43 = 0;
          }

          else
          {
            (*(v40 + 8))(v0[43], v0[41]);

            v43 = 1;
          }

          (*(v0[21] + 56))(v0[11], v43, 1, v0[20]);

          v12 = v0[1];
          goto LABEL_10;
        }

        v17 = v0[27];
        v76 = (v17 + 16);
        v78 = (v17 + 48);
        v71 = (v0[32] + 16);
        v73 = (v0[15] + 32);
        v67 = v0[20];
        v69 = v0[21];
        v74 = (v17 + 8);
        while (1)
        {
          v18 = v0[26];
          v19 = v0[24];
          dispatch thunk of _AnyIteratorBoxBase.next()();
          result = (*v78)(v19, 1, v18);
          if (result == 1)
          {
            break;
          }

          (*v76)(v0[28], v0[24], v0[26]);
          Row.subscript.getter();
          if (qword_1005A8460 != -1)
          {
            swift_once();
          }

          v99 = v15;
          sub_10000A6F0(v16, qword_1005E0A08);
          Row.subscript.getter();
          if (qword_1005A8468 != -1)
          {
            swift_once();
          }

          v20 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
          sub_10000A6F0(v20, qword_1005E0A20);
          Row.subscript.getter();
          v21 = v0[7];
          v22 = v0[8];
          type metadata accessor for PropertyListDecoder();
          swift_allocObject();
          sub_100005F6C(v21, v22);
          PropertyListDecoder.init()();
          sub_10000A49C(&qword_1005B1D70, &type metadata accessor for Fence.TriggerPosition, &protocol conformance descriptor for Fence.TriggerPosition);
          dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
          v96 = v14;
          v23 = v0[37];
          v24 = v0[34];
          v84 = v0[33];
          v25 = v0[31];
          v88 = v0[26];
          v91 = v0[28];
          v94 = v0[24];
          v81 = v0[22];
          v27 = v0[16];
          v26 = v0[17];
          v28 = v21;
          v83 = v21;
          v29 = v0[14];

          sub_1000049D0(v28, v22);
          v86 = *v73;
          (*v73)(v26, v27, v29);
          v30 = *v71;
          (*v71)(v23, v24, v25);
          Fence.ID.init(id:)();
          v30(v23, v84, v25);
          Fence.TriggerID.init(id:)();
          sub_1000049D0(v83, v22);
          v31 = *v74;
          (*v74)(v91, v88);
          v79(v84, v25);
          v79(v24, v25);
          v86(v81 + *(v67 + 24), v26, v29);
          v31(v94, v88);
          v15 = v99;
          v33 = v99[2];
          v32 = v99[3];
          if (v33 >= v32 >> 1)
          {
            sub_1002396C0((v32 > 1), v33 + 1, 1);
            v15 = v99;
          }

          v34 = v0[22];
          v15[2] = v33 + 1;
          sub_10033C458(v34, v15 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v33, type metadata accessor for FenceTriggerRecord);
          v14 = v96 - 1;
          v16 = v80;
          if (v96 == 1)
          {
            goto LABEL_24;
          }
        }
      }

      __break(1u);
      return result;
    }

    (*(v0[42] + 8))(v0[43], v0[41]);

    sub_100004984(v0 + 2);
  }

  else
  {
    v10 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError, &protocol conformance descriptor for DatabaseError);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, enum case for DatabaseError.notConnected(_:), v10);
    swift_willThrow();
  }

  v12 = v0[1];
LABEL_10:

  return v12();
}

uint64_t sub_10032A70C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v2[6] = type metadata accessor for FenceTriggerRecord(0);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = type metadata accessor for OnConflict();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v6 = type metadata accessor for Insert();
  v2[18] = v6;
  v2[19] = *(v6 - 8);
  v2[20] = swift_task_alloc();

  return _swift_task_switch(sub_10032A91C, 0, 0);
}

uint64_t sub_10032A91C()
{
  v1 = *(*(v0 + 40) + 112);
  *(v0 + 168) = v1;
  return _swift_task_switch(sub_10032A940, v1, 0);
}

uint64_t sub_10032A940()
{
  sub_10000A0A4();
  *(v0 + 176) = 0;
  v1 = *(v0 + 168);

  return _swift_task_switch(sub_10032AA4C, v1, 0);
}

uint64_t sub_10032AA4C()
{
  type metadata accessor for LocalStorageDatabase(0);
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase, &unk_1004D5700);
  *(v0 + 184) = Database.writeConnection.getter();

  return _swift_task_switch(sub_10032AB00, 0, 0);
}

uint64_t sub_10032AB00()
{
  v54 = v0;
  if (!v0[23])
  {
    v5 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError, &protocol conformance descriptor for DatabaseError);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for DatabaseError.notConnected(_:), v5);
    swift_willThrow();
    goto LABEL_16;
  }

  v1 = v0[22];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for Fence.TriggerPosition();
  sub_10000A49C(&qword_1005B1D68, &type metadata accessor for Fence.TriggerPosition, &protocol conformance descriptor for Fence.TriggerPosition);
  v2 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v4 = v3;

  if (v1)
  {

LABEL_16:

    v24 = v0[1];
    goto LABEL_17;
  }

  v51 = v2;
  if (qword_1005A8160 != -1)
  {
    swift_once();
  }

  v7 = v0[16];
  v8 = v0[17];
  v9 = v0[15];
  v48 = type metadata accessor for Table();
  sub_10000A6F0(v48, qword_1005E00F0);
  (*(v7 + 104))(v8, enum case for OnConflict.replace(_:), v9);
  sub_10004B564(&qword_1005AF4F0, &qword_1004D07D0);
  type metadata accessor for Setter();
  *(swift_allocObject() + 16) = xmmword_1004C0BB0;
  v52 = v4;
  if (qword_1005A8458 != -1)
  {
    swift_once();
  }

  v10 = v0[13];
  v11 = v0[14];
  v12 = v0[12];
  v13 = sub_10004B564(&qword_1005AF078, &unk_1004D0260);
  sub_10000A6F0(v13, qword_1005E09F0);
  Fence.ID.uuid.getter();
  <- infix<A>(_:_:)();
  v14 = *(v10 + 8);
  v14(v11, v12);
  if (qword_1005A8460 != -1)
  {
    swift_once();
  }

  v15 = v0[14];
  v16 = v0[12];
  sub_10000A6F0(v13, qword_1005E0A08);
  Fence.TriggerID.uuid.getter();
  <- infix<A>(_:_:)();
  v14(v15, v16);
  if (qword_1005A8468 != -1)
  {
    swift_once();
  }

  v17 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
  sub_10000A6F0(v17, qword_1005E0A20);
  v0[2] = v51;
  v0[3] = v52;
  <- infix<A>(_:_:)();
  if (qword_1005A8470 != -1)
  {
    swift_once();
  }

  v19 = v0[16];
  v18 = v0[17];
  v47 = v0[15];
  v20 = v0[10];
  v21 = v0[11];
  v22 = v0[9];
  v23 = sub_10004B564(&qword_1005AF0C8, &unk_1004D02A0);
  sub_10000A6F0(v23, qword_1005E0A38);
  sub_1002787C8(v21);
  <- infix<A>(_:_:)();
  (*(v20 + 8))(v21, v22);
  QueryType.insert(or:_:)();

  (*(v19 + 8))(v18, v47);
  Connection.run(_:)();
  if (qword_1005A84A0 != -1)
  {
    swift_once();
  }

  v26 = v0[7];
  v27 = v0[8];
  v28 = v0[4];
  v29 = type metadata accessor for Logger();
  sub_10000A6F0(v29, qword_1005E0AC8);
  sub_10033C390(v28, v27, type metadata accessor for FenceTriggerRecord);
  sub_10033C390(v28, v26, type metadata accessor for FenceTriggerRecord);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  v32 = os_log_type_enabled(v30, v31);
  v34 = v0[19];
  v33 = v0[20];
  v35 = v0[18];
  v37 = v0[7];
  v36 = v0[8];
  if (v32)
  {
    v50 = v0[20];
    v38 = swift_slowAlloc();
    v53[0] = swift_slowAlloc();
    *v38 = 136446722;
    *(v38 + 4) = sub_10000D01C(0xD000000000000015, 0x80000001004E66C0, v53);
    *(v38 + 12) = 2082;
    type metadata accessor for Fence.ID();
    sub_10000A49C(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v49 = v35;
    v41 = v40;
    sub_10033C3F8(v36, type metadata accessor for FenceTriggerRecord);
    v42 = sub_10000D01C(v39, v41, v53);

    *(v38 + 14) = v42;
    *(v38 + 22) = 2082;
    sub_10000A49C(&qword_1005AE810, &type metadata accessor for Fence.TriggerPosition, &protocol conformance descriptor for Fence.TriggerPosition);
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v44;
    sub_10033C3F8(v37, type metadata accessor for FenceTriggerRecord);
    v46 = sub_10000D01C(v43, v45, v53);

    *(v38 + 24) = v46;
    _os_log_impl(&_mh_execute_header, v30, v31, "%{public}s: inserted fenceTrigger for fence id %{public}s, position: %{public}s", v38, 0x20u);
    swift_arrayDestroy();

    sub_1000049D0(v51, v52);

    (*(v34 + 8))(v50, v49);
  }

  else
  {

    sub_1000049D0(v51, v52);

    sub_10033C3F8(v37, type metadata accessor for FenceTriggerRecord);
    sub_10033C3F8(v36, type metadata accessor for FenceTriggerRecord);
    (*(v34 + 8))(v33, v35);
  }

  v24 = v0[1];
LABEL_17:

  return v24();
}

uint64_t sub_10032B474(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Fence.ID();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v6 = type metadata accessor for Table();
  v2[14] = v6;
  v2[15] = *(v6 - 8);
  v2[16] = swift_task_alloc();
  v7 = type metadata accessor for Delete();
  v2[17] = v7;
  v2[18] = *(v7 - 8);
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_10032B6BC, 0, 0);
}

uint64_t sub_10032B6BC()
{
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 160) = v1;
  return _swift_task_switch(sub_10032B6E0, v1, 0);
}

uint64_t sub_10032B6E0()
{
  sub_10000A0A4();
  *(v0 + 168) = 0;
  v1 = *(v0 + 160);

  return _swift_task_switch(sub_10032B7F0, v1, 0);
}

uint64_t sub_10032B7F0()
{
  type metadata accessor for LocalStorageDatabase(0);
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase, &unk_1004D5700);
  *(v0 + 176) = Database.writeConnection.getter();

  return _swift_task_switch(sub_10032B8A4, 0, 0);
}

uint64_t sub_10032B8A4()
{
  v62 = v0;
  if (!v0[22])
  {
    v10 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError, &protocol conformance descriptor for DatabaseError);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, enum case for DatabaseError.notConnected(_:), v10);
    swift_willThrow();
    goto LABEL_9;
  }

  if (qword_1005A8160 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v0[14], qword_1005E00F0);
  if (qword_1005A8458 != -1)
  {
    swift_once();
  }

  v59 = v0[21];
  v1 = v0[16];
  v56 = v0[15];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  v53 = v0[11];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  v8 = sub_10004B564(&qword_1005AF078, &unk_1004D0260);
  sub_10000A6F0(v8, qword_1005E09F0);
  Fence.ID.uuid.getter();
  == infix<A>(_:_:)();
  (*(v6 + 8))(v5, v7);
  QueryType.where(_:)();
  (*(v4 + 8))(v3, v53);
  QueryType.delete()();
  (*(v56 + 8))(v1, v2);
  v9 = Connection.run(_:)();
  if (v59)
  {
    (*(v0[18] + 8))(v0[19], v0[17]);

LABEL_9:

    v12 = v0[1];
    v13 = 0;
    goto LABEL_22;
  }

  v60 = v9;
  if (v9 < 1)
  {
    if (qword_1005A84A0 != -1)
    {
      swift_once();
    }

    v34 = v0[5];
    v33 = v0[6];
    v35 = v0[4];
    v36 = v0[2];
    v37 = type metadata accessor for Logger();
    sub_10000A6F0(v37, qword_1005E0AC8);
    (*(v34 + 16))(v33, v36, v35);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    v40 = os_log_type_enabled(v38, v39);
    v42 = v0[18];
    v41 = v0[19];
    v43 = v0[17];
    v45 = v0[5];
    v44 = v0[6];
    v46 = v0[4];
    if (v40)
    {
      v47 = swift_slowAlloc();
      v61[0] = swift_slowAlloc();
      *v47 = 136446466;
      *(v47 + 4) = sub_10000D01C(0xD000000000000017, 0x80000001004E65A0, v61);
      *(v47 + 12) = 2082;
      sub_10000A49C(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
      v55 = v43;
      v58 = v41;
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      (*(v45 + 8))(v44, v46);
      v51 = sub_10000D01C(v48, v50, v61);

      *(v47 + 14) = v51;
      _os_log_impl(&_mh_execute_header, v38, v39, "%{public}s: no fenceTrigger deleted for fence id %{public}s", v47, 0x16u);
      swift_arrayDestroy();

      (*(v42 + 8))(v58, v55);
    }

    else
    {

      (*(v45 + 8))(v44, v46);
      (*(v42 + 8))(v41, v43);
    }
  }

  else
  {
    if (qword_1005A84A0 != -1)
    {
      swift_once();
    }

    v14 = v0[7];
    v15 = v0[4];
    v16 = v0[5];
    v17 = v0[2];
    v18 = type metadata accessor for Logger();
    sub_10000A6F0(v18, qword_1005E0AC8);
    (*(v16 + 16))(v14, v17, v15);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    v21 = os_log_type_enabled(v19, v20);
    v23 = v0[18];
    v22 = v0[19];
    v24 = v0[17];
    v25 = v0[7];
    v26 = v0[4];
    v27 = v0[5];
    if (v21)
    {
      v28 = swift_slowAlloc();
      v61[0] = swift_slowAlloc();
      *v28 = 136446466;
      *(v28 + 4) = sub_10000D01C(0xD000000000000017, 0x80000001004E65A0, v61);
      *(v28 + 12) = 2082;
      sub_10000A49C(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
      v54 = v24;
      v57 = v22;
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      (*(v27 + 8))(v25, v26);
      v32 = sub_10000D01C(v29, v31, v61);

      *(v28 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v19, v20, "%{public}s: deleted fenceTrigger for fence id %{public}s", v28, 0x16u);
      swift_arrayDestroy();

      (*(v23 + 8))(v57, v54);
    }

    else
    {

      (*(v27 + 8))(v25, v26);
      (*(v23 + 8))(v22, v24);
    }
  }

  v12 = v0[1];
  v13 = v60 > 0;
LABEL_22:

  return v12(v13);
}

uint64_t sub_10032C09C(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  sub_10004B564(&qword_1005AF468, &qword_1004D06C0);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v4 = type metadata accessor for Row();
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v5 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v3[26] = v5;
  v3[27] = *(v5 - 8);
  v3[28] = swift_task_alloc();
  v6 = type metadata accessor for Table();
  v3[29] = v6;
  v3[30] = *(v6 - 8);
  v3[31] = swift_task_alloc();

  return _swift_task_switch(sub_10032C274, 0, 0);
}

uint64_t sub_10032C274()
{
  v1 = *(*(v0 + 152) + 112);
  *(v0 + 256) = v1;
  return _swift_task_switch(sub_10032C298, v1, 0);
}

uint64_t sub_10032C298()
{
  sub_10000A0A4();
  *(v0 + 264) = 0;
  v1 = *(v0 + 256);

  return _swift_task_switch(sub_10032C3A0, v1, 0);
}

uint64_t sub_10032C3A0()
{
  type metadata accessor for LocalStorageDatabase(0);
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase, &unk_1004D5700);
  *(v0 + 272) = Database.readConnection.getter();

  return _swift_task_switch(sub_10032C454, 0, 0);
}

uint64_t sub_10032C454()
{
  if (!*(v0 + 272))
  {
    v11 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError, &protocol conformance descriptor for DatabaseError);
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, enum case for DatabaseError.notConnected(_:), v11);
    swift_willThrow();
    goto LABEL_9;
  }

  if (qword_1005A8168 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(*(v0 + 232), qword_1005E0108);
  if (qword_1005A8478 != -1)
  {
    swift_once();
  }

  v68 = *(v0 + 264);
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);
  v5 = *(v0 + 208);
  v6 = *(v0 + 216);
  v7 = *(v0 + 136);
  v8 = *(v0 + 144);
  v9 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
  sub_10000A6F0(v9, qword_1005E0A50);
  *(v0 + 56) = v7;
  *(v0 + 64) = v8;
  == infix<A>(_:_:)();
  QueryType.where(_:)();
  (*(v6 + 8))(v4, v5);
  *(v0 + 40) = v3;
  *(v0 + 48) = &protocol witness table for Table;
  v10 = sub_10000331C((v0 + 16));
  (*(v2 + 16))(v10, v1, v3);
  Connection.prepare(_:)();
  if (v68)
  {
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));

    sub_100004984((v0 + 16));
LABEL_9:

    v13 = *(v0 + 8);

    return v13();
  }

  sub_100004984((v0 + 16));
  v15 = dispatch thunk of _AnySequenceBox._underestimatedCount.getter();
  sub_100239704(0, v15 & ~(v15 >> 63), 0);
  result = dispatch thunk of _AnySequenceBox._makeIterator()();
  if (v15 < 0)
  {
    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  if (v15)
  {
    v16 = *(v0 + 184);
    v63 = (v16 + 16);
    v65 = (v16 + 48);
    v17 = (v16 + 8);
    do
    {
      v18 = *(v0 + 176);
      v19 = *(v0 + 160);
      dispatch thunk of _AnyIteratorBoxBase.next()();
      result = (*v65)(v19, 1, v18);
      if (result == 1)
      {
        goto LABEL_36;
      }

      (*v63)(*(v0 + 192), *(v0 + 160), *(v0 + 176));
      Row.subscript.getter();
      v66 = *(v0 + 80);
      v69 = *(v0 + 72);
      if (qword_1005A8480 != -1)
      {
        swift_once();
      }

      v20 = *(v0 + 192);
      v21 = *(v0 + 176);
      v22 = *(v0 + 160);
      v23 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
      sub_10000A6F0(v23, qword_1005E0A68);
      Row.subscript.getter();
      v24 = *v17;
      (*v17)(v20, v21);
      v26 = *(v0 + 88);
      v25 = *(v0 + 96);
      v24(v22, v21);
      v28 = _swiftEmptyArrayStorage[2];
      v27 = _swiftEmptyArrayStorage[3];
      if (v28 >= v27 >> 1)
      {
        sub_100239704((v27 > 1), v28 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v28 + 1;
      v29 = &_swiftEmptyArrayStorage[4 * v28];
      v29[4] = v69;
      v29[5] = v66;
      v29[6] = v26;
      v29[7] = v25;
    }

    while (--v15);
  }

  v31 = *(v0 + 176);
  v30 = *(v0 + 184);
  v32 = *(v0 + 168);
  dispatch thunk of _AnyIteratorBoxBase.next()();
  v67 = *(v30 + 48);
  if (v67(v32, 1, v31) != 1)
  {
    v41 = *(v0 + 184);
    v42 = *(v41 + 32);
    v41 += 32;
    v62 = (v41 - 16);
    v64 = v42;
    v43 = (v41 - 24);
    do
    {
      v45 = *(v0 + 192);
      v44 = *(v0 + 200);
      v46 = *(v0 + 176);
      v64(v44, *(v0 + 168), v46);
      (*v62)(v45, v44, v46);
      Row.subscript.getter();
      v48 = *(v0 + 104);
      v47 = *(v0 + 112);
      if (qword_1005A8480 != -1)
      {
        swift_once();
      }

      v49 = *(v0 + 192);
      v50 = *(v0 + 200);
      v51 = *(v0 + 176);
      v52 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
      sub_10000A6F0(v52, qword_1005E0A68);
      Row.subscript.getter();
      v53 = *v43;
      (*v43)(v49, v51);
      v53(v50, v51);
      v54 = *(v0 + 120);
      v56 = _swiftEmptyArrayStorage[2];
      v55 = _swiftEmptyArrayStorage[3];
      if (v56 >= v55 >> 1)
      {
        v61 = *(v0 + 120);
        sub_100239704((v55 > 1), v56 + 1, 1);
        v54 = v61;
      }

      v58 = *(v0 + 168);
      v57 = *(v0 + 176);
      _swiftEmptyArrayStorage[2] = v56 + 1;
      v59 = &_swiftEmptyArrayStorage[4 * v56];
      v59[4] = v48;
      v59[5] = v47;
      *(v59 + 3) = v54;
      dispatch thunk of _AnyIteratorBoxBase.next()();
    }

    while (v67(v58, 1, v57) != 1);
  }

  v33 = *(v0 + 168);

  sub_100002CE0(v33, &qword_1005AF468, &qword_1004D06C0);
  v35 = *(v0 + 240);
  v34 = *(v0 + 248);
  v36 = *(v0 + 232);
  if (_swiftEmptyArrayStorage[2])
  {
    v38 = _swiftEmptyArrayStorage[4];
    v37 = _swiftEmptyArrayStorage[5];
    v39 = _swiftEmptyArrayStorage[6];
    v40 = _swiftEmptyArrayStorage[7];

    sub_100005F6C(v39, v40);

    (*(v35 + 8))(v34, v36);
  }

  else
  {
    (*(v35 + 8))(*(v0 + 248), *(v0 + 232));

    v38 = 0;
    v37 = 0;
    v39 = 0;
    v40 = 0;
  }

  v60 = *(v0 + 8);

  return v60(v38, v37, v39, v40);
}

uint64_t sub_10032CC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = type metadata accessor for OnConflict();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = type metadata accessor for Insert();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_10032CD78, 0, 0);
}