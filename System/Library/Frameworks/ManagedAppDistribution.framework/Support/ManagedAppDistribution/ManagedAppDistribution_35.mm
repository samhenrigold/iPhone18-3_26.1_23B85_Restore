uint64_t sub_1004A673C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1001F0C48(&unk_100780380, &qword_10069E9E0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100005934(a3, v25 - v10, &unk_100780380, &qword_10069E9E0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000032A8(v11, &unk_100780380, &qword_10069E9E0);
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

      sub_1000032A8(a3, &unk_100780380, &qword_10069E9E0);

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

  sub_1000032A8(a3, &unk_100780380, &qword_10069E9E0);
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

void main()()
{
  v0 = sub_1001F0C48(&unk_100780380, &qword_10069E9E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_1004A673C(1852399981, 0xE400000000000000, v2, &unk_1006AD6C0, v4);

  dispatch_main();
}

uint64_t sub_1004A6B24()
{
  sub_1001F0C48(&unk_10077F8E0, &qword_10069F380);
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  type metadata accessor for ClientInfo();
  v0[15] = swift_task_alloc();
  type metadata accessor for BagProfile();
  v0[16] = swift_task_alloc();
  v1 = type metadata accessor for BagService();
  v0[17] = v1;
  v0[18] = *(v1 - 8);
  v0[19] = swift_task_alloc();
  v2 = type metadata accessor for Logger();
  v0[20] = v2;
  v0[21] = *(v2 - 8);
  v0[22] = swift_task_alloc();
  v0[23] = swift_task_alloc();
  v0[24] = swift_task_alloc();

  return _swift_task_switch(sub_1004A6D28, 0, 0);
}

uint64_t sub_1004A6D28()
{
  _set_user_dir_suffix();
  if (ASUSQLiteConfigLookaside(1200, 20))
  {
    static Logger.daemon.getter();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Failed to set SQLite lookaside cache size", v3, 2u);
    }

    v4 = v0[24];
    v5 = v0[20];
    v6 = v0[21];

    (*(v6 + 8))(v4, v5);
  }

  v7 = swift_task_alloc();
  v0[25] = v7;
  *v7 = v0;
  v7[1] = sub_1004A6EA4;

  return sub_1005DA7E4();
}

uint64_t sub_1004A6EA4()
{

  return _swift_task_switch(sub_1004A6FCC, 0, 0);
}

uint64_t sub_1004A6FCC()
{
  v29 = v0;
  BagProfile.init(name:version:)();
  ClientInfo.init(identifier:name:version:)();
  BagService.init(bagProfile:clientInfo:)();
  v1 = v0[10].opaque[0];
  v2 = v0[10].opaque[1];
  v4 = v0[6].opaque[1];
  v3 = v0[7].opaque[0];
  static Logger.daemon.getter();
  (*(v2 + 56))(v3, 0, 1, v1);
  sub_100005934(v3, v4, &unk_10077F8E0, &qword_10069F380);
  type metadata accessor for LogActivity();
  v5 = swift_allocObject();
  if (qword_10077E5A8 != -1)
  {
    swift_once();
  }

  v6 = _os_activity_create(&_mh_execute_header, "Starting managedappdistributiond", qword_10078A090, OS_ACTIVITY_FLAG_DEFAULT);
  v0[5].opaque[0] = 0;
  v0[5].opaque[1] = 0;
  os_activity_scope_enter(v6, v0 + 5);
  swift_unknownObjectRelease();
  *(v5 + 16) = v0[5];
  if (qword_10077E598 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v7 = v0[1].opaque[1];
  if (v7)
  {
  }

  else
  {
    sub_1001F0C48(&qword_100784310, &unk_10069FA00);
    v7 = swift_allocObject();
    *(v7 + 24) = 0;
    *(v7 + 16) = 0;
  }

  type metadata accessor for Transaction();
  v8 = swift_allocObject();

  *(v8 + 16) = StaticString.description.getter();
  *(v8 + 24) = v9;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v8);
  os_unfair_lock_unlock(&dword_100788650);
  v10 = v0[10].opaque[0];
  v11 = v0[10].opaque[1];
  v12 = v0[6].opaque[0];
  sub_100005934(v0[6].opaque[1], v12, &unk_10077F8E0, &qword_10069F380);
  if ((*(v11 + 48))(v12, 1, v10) == 1)
  {
    sub_1000032A8(v0[6].opaque[1], &unk_10077F8E0, &qword_10069F380);

    v13 = 0;
  }

  else
  {
    v14 = v0[11].opaque[0];
    v15 = v0[11].opaque[1];
    v16 = v0[10].opaque[0];
    v17 = v0[10].opaque[1];
    v18 = v0[6].opaque[1];
    (*(v17 + 32))(v15, v0[6].opaque[0], v16);
    (*(v17 + 16))(v14, v15, v16);
    type metadata accessor for SignpostInterval(0);
    swift_allocObject();
    v13 = sub_1005AD4D8("Starting managedappdistributiond", 32, 2, v14);

    (*(v17 + 8))(v15, v16);
    sub_1000032A8(v18, &unk_10077F8E0, &qword_10069F380);
  }

  v0[3].opaque[0] = v5;
  v0[3].opaque[1] = v7;
  v0[4].opaque[0] = v8;
  v0[4].opaque[1] = v13;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  sub_1001F0C48(&qword_100783D78, &qword_1006B5090);
  swift_task_localValuePush();
  os_unfair_lock_lock((v7 + 24));
  v19 = *(v7 + 16);
  v20 = v19;
  os_unfair_lock_unlock((v7 + 24));
  if (v19)
  {
    sub_100625B04();
  }

  sub_100003688(v0[9].opaque[1], v28);
  v21 = v0[7].opaque[0];
  v22 = v28[0];
  v23 = v28[1];
  v0[13].opaque[0] = v28[0];
  v0[13].opaque[1] = v23;
  swift_task_localValuePop();

  sub_1000032A8(v21, &unk_10077F8E0, &qword_10069F380);
  v24 = v22;
  v25 = v23;
  v26 = swift_task_alloc();
  v0[14].opaque[0] = v26;
  *v26 = v0;
  v26[1] = sub_1004A7660;

  return withCheckedContinuation<A>(isolation:function:_:)(v26, 0, 0, 0xD000000000000010, 0x80000001006CBF90, sub_1005DABD8, 0, &type metadata for () + 8);
}

uint64_t sub_1004A7660()
{

  return _swift_task_switch(sub_1004A7788, 0, 0);
}

uint64_t sub_1004A7788()
{
  v1 = v0[26];
  v2 = v0[27];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];

  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1004A78C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100214EFC;

  return sub_1004A6B24();
}

uint64_t sub_1004A798C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_ingester);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1004A7A4C;
  v3 = *(v0 + 16);

  return sub_1004ADAA8(v3, v1);
}

uint64_t sub_1004A7A4C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1004A7B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1001F0E54;

  return sub_1004ABE8C(a4, 0);
}

uint64_t sub_1004A7C0C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_scheduler);
  *(v0 + 24) = v1;
  return _swift_task_switch(sub_1004A7C3C, v1, 0);
}

uint64_t sub_1004A7C3C()
{
  sub_1004AFBB4(v0[2], v0[3]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1004A7CB8()
{
  sub_10048C4C4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004A7D14(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = type metadata accessor for Logger();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  sub_1001F0C48(&unk_10077F8E0, &qword_10069F380);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v4 = type metadata accessor for LogKey.Prefix();
  v2[21] = v4;
  v2[22] = *(v4 - 8);
  v2[23] = swift_task_alloc();

  return _swift_task_switch(sub_1004A7EB8, 0, 0);
}

uint64_t sub_1004A7EB8()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v6 = *(v0 + 96);
  (*(*(v0 + 176) + 104))(*(v0 + 184), enum case for LogKey.Prefix.update(_:), *(v0 + 168));
  objc_allocWithZone(type metadata accessor for LogKey());
  *(v0 + 192) = LogKey.init(prefix:)();
  (*(v3 + 56))(v1, 1, 1, v2);
  v4 = swift_task_alloc();
  *(v0 + 200) = v4;
  *(v4 + 16) = v6;

  return _swift_task_switch(sub_1004A7FDC, 0, 0);
}

uint64_t sub_1004A7FDC()
{
  sub_100005934(*(v0 + 160), *(v0 + 152), &unk_10077F8E0, &qword_10069F380);
  type metadata accessor for LogActivity();
  v1 = swift_allocObject();
  *(v0 + 208) = v1;
  if (qword_10077E5A8 != -1)
  {
    swift_once();
  }

  v2 = _os_activity_create(&_mh_execute_header, "pollAvailableUpdates", qword_10078A090, OS_ACTIVITY_FLAG_DEFAULT);
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  os_activity_scope_enter(v2, (v0 + 80));
  swift_unknownObjectRelease();
  *(v1 + 16) = *(v0 + 80);
  if (qword_10077E598 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v3 = *(v0 + 24);
  v4 = *(v0 + 192);
  if (v3)
  {

    *(swift_task_alloc() + 16) = v4;

    v5 = v4;
    os_unfair_lock_lock((v3 + 24));
    sub_100231C24((v3 + 16));
    os_unfair_lock_unlock((v3 + 24));
  }

  else
  {
    sub_1001F0C48(&qword_100784310, &unk_10069FA00);
    v3 = swift_allocObject();
    *(v3 + 24) = 0;
    *(v3 + 16) = v4;
    v6 = v4;
  }

  *(v0 + 216) = v3;
  type metadata accessor for Transaction();
  v7 = swift_allocObject();
  *(v0 + 224) = v7;
  *(v7 + 16) = StaticString.description.getter();
  *(v7 + 24) = v8;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v7);
  os_unfair_lock_unlock(&dword_100788650);
  v9 = *(v0 + 144);
  v10 = *(v0 + 112);
  v11 = *(v0 + 120);
  sub_100005934(*(v0 + 152), v9, &unk_10077F8E0, &qword_10069F380);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000032A8(*(v0 + 152), &unk_10077F8E0, &qword_10069F380);

    v12 = 0;
  }

  else
  {
    v13 = *(v0 + 136);
    v15 = *(v0 + 120);
    v14 = *(v0 + 128);
    v16 = *(v0 + 112);
    v22 = *(v0 + 152);
    (*(v15 + 32))(v13, *(v0 + 144), v16);
    (*(v15 + 16))(v14, v13, v16);
    type metadata accessor for SignpostInterval(0);
    swift_allocObject();
    v12 = sub_1005AD4D8("pollAvailableUpdates", 20, 2, v14);

    (*(v15 + 8))(v13, v16);
    sub_1000032A8(v22, &unk_10077F8E0, &qword_10069F380);
  }

  *(v0 + 232) = v12;
  v18 = *(v0 + 192);
  v17 = *(v0 + 200);
  *(v0 + 48) = v1;
  *(v0 + 56) = v3;
  *(v0 + 64) = v7;
  *(v0 + 72) = v12;
  v19 = swift_task_alloc();
  *(v0 + 240) = v19;
  v19[2] = v18;
  v19[3] = v1;
  v19[4] = v3;
  v19[5] = v7;
  v19[6] = v12;
  v19[7] = &unk_1006AD758;
  v19[8] = v17;

  v20 = swift_task_alloc();
  *(v0 + 248) = v20;
  *v20 = v0;
  v20[1] = sub_1004A850C;

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v20, v0 + 48, &unk_10069F3A0, v19, 0, 0, 0xD000000000000033, 0x80000001006C49B0);
}

uint64_t sub_1004A850C()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_1004A8888;
  }

  else
  {
    v2 = sub_1004A86BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004A86BC()
{
  v1 = *(v0 + 160);

  sub_1000032A8(v1, &unk_10077F8E0, &qword_10069F380);

  return _swift_task_switch(sub_1004A87B4, 0, 0);
}

uint64_t sub_1004A87B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004A8888()
{
  v1 = *(v0 + 160);

  sub_1000032A8(v1, &unk_10077F8E0, &qword_10069F380);

  return _swift_task_switch(sub_1004A8980, 0, 0);
}

uint64_t sub_1004A8980()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004A8A54(uint64_t a1, uint64_t a2, void *a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[21] = *a3;
  sub_1001F0C48(&unk_100780380, &qword_10069E9E0);
  v3[22] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();

  return _swift_task_switch(sub_1004A8BB8, 0, 0);
}

uint64_t sub_1004A8BB8(uint64_t a1)
{
  static Logger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Waking for scheduled automatic update activity", v4, 2u);
  }

  v5 = v1[27];
  v6 = v1[23];
  v7 = v1[24];

  v8 = *(v7 + 8);
  v1[28] = v8;
  v8(v5, v6);
  v9 = swift_task_alloc();
  v1[29] = v9;
  *v9 = v1;
  v9[1] = sub_1004A8D28;

  return sub_100324268((v1 + 12));
}

uint64_t sub_1004A8D28()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_1004AA008;
  }

  else
  {
    v2 = sub_1004A8E68;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004A8E68()
{
  v1 = v0[21];
  v0[17] = v0[20];
  v3 = v0[15];
  v2 = v0[16];
  v4 = sub_100006D8C(v0 + 12, v3);
  v5 = swift_task_alloc();
  v0[31] = v5;
  *v5 = v0;
  v5[1] = sub_1004A8F80;

  return sub_100519D8C((v0 + 17), v4, v1, v3, &off_100770270, v2);
}

uint64_t sub_1004A8F80()
{

  return _swift_task_switch(sub_1004A90A8, 0, 0);
}

uint64_t sub_1004A90A8()
{
  *(v0 + 361) = 0;
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v1, v2, (v0 + 361));
  *(v0 + 362) = AppBooleanValue;

  v4 = *(v0 + 361);
  *(v0 + 363) = v4;
  if (AppBooleanValue)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  v6 = v5;
  static Logger.daemon.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67240192;
    *(v9 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "Starting update discovery, automatic updates enabled: %{BOOL,public}d", v9, 8u);
  }

  v10 = *(v0 + 224);
  v11 = *(v0 + 208);
  v12 = *(v0 + 184);
  v13 = *(v0 + 192);
  v14 = *(v0 + 160);
  v15 = *(v0 + 168);

  *(v0 + 256) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v11, v12);
  *(v0 + 40) = v15;
  *(v0 + 48) = &off_1007702D8;
  *(v0 + 56) = &off_1007702B0;
  *(v0 + 64) = &off_100770230;
  *(v0 + 72) = &off_1007701D0;
  *(v0 + 80) = &off_1007701C0;
  *(v0 + 88) = &off_1007701B0;
  *(v0 + 16) = v14;

  v16 = swift_task_alloc();
  *(v0 + 264) = v16;
  *v16 = v0;
  v16[1] = sub_1004A9314;

  return sub_1004C2318(0, v6, v0 + 16);
}

uint64_t sub_1004A9314()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = sub_1004AA0C8;
  }

  else
  {
    sub_10000710C((v2 + 16));
    v3 = sub_1004A9464;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_1004A9464()
{
  v1 = v0[20];
  sub_100006D8C(v0 + 12, v0[15]);
  v0[35] = sub_100625FA0();
  v0[18] = v1;

  v2 = swift_task_alloc();
  v0[36] = v2;
  *v2 = v0;
  v2[1] = sub_1004A95E8;

  JUMPOUT(0x1005FB058);
}

uint64_t sub_1004A95E8()
{
  v1 = *v0;
  v2 = *(*v0 + 280);
  v6 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 296) = v3;
  *v3 = v6;
  v3[1] = sub_1004A978C;
  v4 = *(v1 + 160);

  return sub_1004B000C(v4);
}

uint64_t sub_1004A978C()
{

  return _swift_task_switch(sub_1004A98B4, 0, 0);
}

uint64_t sub_1004A98B4(uint64_t a1)
{
  v2 = *(v1 + 363);
  v3 = *(v1 + 362);
  v4 = *(v1 + 176);
  v5 = *(v1 + 160);
  static TaskPriority.background.getter();
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;

  sub_1004F8754(0xD000000000000017, 0x80000001006CC100, v4, &unk_1006AD770, v7);

  sub_1000032A8(v4, &unk_100780380, &qword_10069E9E0);
  *(v1 + 328) = 0u;
  *(v1 + 344) = 0u;
  *(v1 + 360) = 1;
  v8 = swift_task_alloc();
  *(v1 + 304) = v8;
  *v8 = v1;
  v8[1] = sub_1004A9AA8;
  if (v3)
  {
    v9 = 1;
  }

  else
  {
    v9 = v2 == 0;
  }

  v10 = v9;
  v11 = *(v1 + 160);

  return sub_10022B450(v11, v1 + 96, 0, 0, v10, 0, v1 + 328);
}

uint64_t sub_1004A9AA8()
{

  return _swift_task_switch(sub_1004A9BD0, 0, 0);
}

uint64_t sub_1004A9BD0(uint64_t a1)
{
  if (*(v1 + 363))
  {
    v2 = *(v1 + 362) == 0;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    static Logger.daemon.getter();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v1 + 224);
    v11 = *(v1 + 200);
    v12 = *(v1 + 184);
    if (v9)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Not performing automatic updates, setting is disabled", v13, 2u);
    }

    v10(v11, v12);
    sub_10000710C((v1 + 96));

    v14 = *(v1 + 8);

    return v14();
  }

  else
  {
    v3 = sub_100625FA0();
    *(v1 + 312) = v3;
    v4 = swift_task_alloc();
    *(v1 + 320) = v4;
    *v4 = v1;
    v4[1] = sub_1004A9DFC;
    v5 = *(v1 + 160);

    return sub_100225F5C(v1 + 96, v3, v5);
  }
}

uint64_t sub_1004A9DFC()
{
  v1 = *(*v0 + 312);

  return _swift_task_switch(sub_1004A9F3C, 0, 0);
}

uint64_t sub_1004A9F3C()
{
  sub_10000710C((v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004AA008()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004AA0C8()
{
  sub_10000710C(v0 + 2);
  sub_10000710C(v0 + 12);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1004AA198(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[8] = a4;
  v4[9] = *a4;
  v5 = type metadata accessor for Logger();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_1004AA280, 0, 0);
}

uint64_t sub_1004AA280()
{
  v1 = v0[8];
  v0[5] = v0[9];
  v0[6] = &off_100770218;
  v0[7] = &off_100770208;
  v0[2] = v1;

  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_1004AA33C;

  return sub_1005749BC((v0 + 2));
}

uint64_t sub_1004AA33C()
{
  v2 = *v1;
  v2[14] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1004AA480, 0, 0);
  }

  else
  {
    sub_10000710C(v2 + 2);

    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_1004AA480()
{
  sub_10000710C(v0 + 2);
  static Logger.daemon.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to renew expiring licenses: %{public}@", v3, 0xCu);
    sub_1000032A8(v4, &qword_10077F920, &qword_10069E6A0);
  }

  else
  {
  }

  (*(v0[11] + 8))(v0[12], v0[10]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1004AA610(uint64_t a1)
{
  v1[6] = a1;
  v1[7] = type metadata accessor for ManagedAppDeclarationIngester.Operation(0);
  v1[8] = swift_task_alloc();
  v2 = sub_1001F0C48(&qword_10077F320, &unk_10069FA10);
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809E0, &qword_10069FA20);
  v1[12] = swift_task_alloc();
  v3 = type metadata accessor for DDMDeclaration(0);
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  v4 = type metadata accessor for ManagedAppStatus.State();
  v1[16] = v4;
  v1[17] = *(v4 - 8);
  v1[18] = swift_task_alloc();
  v5 = type metadata accessor for DDMDeclarationStatus(0);
  v1[19] = v5;
  v1[20] = *(v5 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v1[23] = v6;
  v1[24] = *(v6 - 8);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();

  return _swift_task_switch(sub_1004AA8CC, 0, 0);
}

uint64_t sub_1004AA8CC(uint64_t a1)
{
  static Logger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Waking for scheduled DDM repair activity", v4, 2u);
  }

  v5 = v1[26];
  v6 = v1[23];
  v7 = v1[24];

  v8 = *(v7 + 8);
  v1[27] = v8;
  v8(v5, v6);
  v9 = swift_task_alloc();
  v1[28] = v9;
  *v9 = v1;
  v9[1] = sub_1004AAA50;

  return sub_1003B1FCC(sub_1003047B4, 0);
}

uint64_t sub_1004AAA50(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 232) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_1004AAC10, 0, 0);
  }
}

uint64_t sub_1004AAC10()
{
  v1 = *(*(v0 + 232) + 16);
  *(v0 + 240) = v1;
  if (v1)
  {
    v2 = 0;
    v3 = *(v0 + 160);
    v4 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_ingester;
    *(v0 + 248) = OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStore;
    *(v0 + 256) = v4;
    *(v0 + 328) = *(v3 + 80);
    *(v0 + 264) = *(v3 + 72);
    *(v0 + 332) = enum case for ManagedAppStatus.State.failed(_:);
    while (1)
    {
      *(v0 + 272) = v2;
      v5 = *(v0 + 332);
      v6 = *(v0 + 144);
      v7 = *(v0 + 128);
      v8 = *(v0 + 136);
      sub_1004B10F0(*(v0 + 232) + ((*(v0 + 328) + 32) & ~*(v0 + 328)) + *(v0 + 264) * v2, *(v0 + 176), type metadata accessor for DDMDeclarationStatus);
      (*(v8 + 104))(v6, v5, v7);
      sub_1004B17C0(&qword_10077F3E0, &type metadata accessor for ManagedAppStatus.State, &protocol conformance descriptor for ManagedAppStatus.State);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v9 = *(v0 + 144);
      v10 = *(v0 + 128);
      v11 = (*(v0 + 136) + 8);
      if (*(v0 + 16) == *(v0 + 32) && *(v0 + 24) == *(v0 + 40))
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
      (*v11)(v9, v10);

      if (v12)
      {
        goto LABEL_11;
      }

      sub_1004B1090(*(v0 + 176), type metadata accessor for DDMDeclarationStatus);
      v2 = *(v0 + 272) + 1;
      if (v2 == *(v0 + 240))
      {
        goto LABEL_7;
      }
    }

    (*v11)(*(v0 + 144), *(v0 + 128));

LABEL_11:
    v15 = *(v0 + 176);
    v16 = *(*(v0 + 48) + *(v0 + 248));
    *(v0 + 280) = v16;
    *(v0 + 288) = *(v15 + 8);
    *(v0 + 296) = *(v15 + 16);

    return _swift_task_switch(sub_1004AAF2C, v16, 0);
  }

  else
  {
LABEL_7:

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_1004AAF2C()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = *(v0[35] + 112);
  v4 = swift_task_alloc();
  v0[38] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[39] = v5;
  *v5 = v0;
  v5[1] = sub_1004AB01C;
  v6 = v0[12];

  return sub_1003B0094(v6, sub_10030124C, v4, v3);
}

uint64_t sub_1004AB01C()
{

  if (v0)
  {

    v1 = sub_1004AB684;
  }

  else
  {

    v1 = sub_1004AB164;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1004AB164()
{
  v35 = v0;
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  (*(*(v0 + 112) + 56))(v3, 0, 1, v2);
  sub_1004B18C8(v3, v1, type metadata accessor for DDMDeclaration);
  if (*(v1 + *(v2 + 60)))
  {
    v4 = *(v0 + 176);
    sub_1004B1090(*(v0 + 120), type metadata accessor for DDMDeclaration);
    sub_1004B1090(v4, type metadata accessor for DDMDeclarationStatus);
    v5 = *(v0 + 272) + 1;
    if (v5 == *(v0 + 240))
    {
LABEL_7:

      v14 = *(v0 + 8);

      return v14();
    }

    while (1)
    {
      *(v0 + 272) = v5;
      v6 = *(v0 + 332);
      v7 = *(v0 + 144);
      v8 = *(v0 + 128);
      v9 = *(v0 + 136);
      sub_1004B10F0(*(v0 + 232) + ((*(v0 + 328) + 32) & ~*(v0 + 328)) + *(v0 + 264) * v5, *(v0 + 176), type metadata accessor for DDMDeclarationStatus);
      (*(v9 + 104))(v7, v6, v8);
      sub_1004B17C0(&qword_10077F3E0, &type metadata accessor for ManagedAppStatus.State, &protocol conformance descriptor for ManagedAppStatus.State);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v10 = *(v0 + 144);
      v11 = *(v0 + 128);
      v12 = (*(v0 + 136) + 8);
      if (*(v0 + 16) == *(v0 + 32) && *(v0 + 24) == *(v0 + 40))
      {
        break;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      (*v12)(v10, v11);

      if (v13)
      {
        goto LABEL_15;
      }

      sub_1004B1090(*(v0 + 176), type metadata accessor for DDMDeclarationStatus);
      v5 = *(v0 + 272) + 1;
      if (v5 == *(v0 + 240))
      {
        goto LABEL_7;
      }
    }

    (*v12)(*(v0 + 144), *(v0 + 128));

LABEL_15:
    v32 = *(v0 + 176);
    v30 = *(*(v0 + 48) + *(v0 + 248));
    *(v0 + 280) = v30;
    *(v0 + 288) = *(v32 + 8);
    *(v0 + 296) = *(v32 + 16);
    v31 = sub_1004AAF2C;
  }

  else
  {
    v17 = *(v0 + 168);
    v16 = *(v0 + 176);
    static Logger.daemon.getter();
    sub_1004B10F0(v16, v17, type metadata accessor for DDMDeclarationStatus);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 216);
    v22 = *(v0 + 200);
    v23 = *(v0 + 184);
    v24 = *(v0 + 168);
    if (v20)
    {
      v25 = swift_slowAlloc();
      v33 = v21;
      v26 = swift_slowAlloc();
      v34 = v26;
      *v25 = 136446210;
      v27 = *(v24 + 8);
      v28 = *(v24 + 16);

      sub_1004B1090(v24, type metadata accessor for DDMDeclarationStatus);
      v29 = sub_1002346CC(v27, v28, &v34);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v18, v19, "Attempting re-installation of required app %{public}s", v25, 0xCu);
      sub_10000710C(v26);

      v33(v22, v23);
    }

    else
    {

      sub_1004B1090(v24, type metadata accessor for DDMDeclarationStatus);
      v21(v22, v23);
    }

    v30 = *(*(v0 + 48) + *(v0 + 256));
    *(v0 + 320) = v30;
    v31 = sub_1004AB9BC;
  }

  return _swift_task_switch(v31, v30, 0);
}

uint64_t sub_1004AB684()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 96);
  (*(*(v0 + 112) + 56))(v2, 1, 1, *(v0 + 104));
  sub_1004B1090(v1, type metadata accessor for DDMDeclarationStatus);
  sub_1000032A8(v2, &unk_1007809E0, &qword_10069FA20);
  v3 = *(v0 + 272) + 1;
  if (v3 == *(v0 + 240))
  {
LABEL_6:

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    while (1)
    {
      *(v0 + 272) = v3;
      v4 = *(v0 + 332);
      v5 = *(v0 + 144);
      v6 = *(v0 + 128);
      v7 = *(v0 + 136);
      sub_1004B10F0(*(v0 + 232) + ((*(v0 + 328) + 32) & ~*(v0 + 328)) + *(v0 + 264) * v3, *(v0 + 176), type metadata accessor for DDMDeclarationStatus);
      (*(v7 + 104))(v5, v4, v6);
      sub_1004B17C0(&qword_10077F3E0, &type metadata accessor for ManagedAppStatus.State, &protocol conformance descriptor for ManagedAppStatus.State);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v8 = *(v0 + 144);
      v9 = *(v0 + 128);
      v10 = (*(v0 + 136) + 8);
      if (*(v0 + 16) == *(v0 + 32) && *(v0 + 24) == *(v0 + 40))
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
      (*v10)(v8, v9);

      if (v11)
      {
        goto LABEL_10;
      }

      sub_1004B1090(*(v0 + 176), type metadata accessor for DDMDeclarationStatus);
      v3 = *(v0 + 272) + 1;
      if (v3 == *(v0 + 240))
      {
        goto LABEL_6;
      }
    }

    (*v10)(*(v0 + 144), *(v0 + 128));

LABEL_10:
    v14 = *(v0 + 176);
    v15 = *(*(v0 + 48) + *(v0 + 248));
    *(v0 + 280) = v15;
    *(v0 + 288) = *(v14 + 8);
    *(v0 + 296) = *(v14 + 16);

    return _swift_task_switch(sub_1004AAF2C, v15, 0);
  }
}

uint64_t sub_1004AB9BC()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  sub_1004B10F0(v0[15], v0[8], type metadata accessor for DDMDeclaration);
  swift_storeEnumTagMultiPayload();
  sub_1001F0C48(&qword_10077F328, &qword_10069FA38);
  AsyncStream.Continuation.yield(_:)();
  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_1004ABABC, 0, 0);
}

uint64_t sub_1004ABABC()
{
  v1 = *(v0 + 176);
  sub_1004B1090(*(v0 + 120), type metadata accessor for DDMDeclaration);
  sub_1004B1090(v1, type metadata accessor for DDMDeclarationStatus);
  v2 = *(v0 + 272) + 1;
  if (v2 == *(v0 + 240))
  {
LABEL_6:

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    while (1)
    {
      *(v0 + 272) = v2;
      v3 = *(v0 + 332);
      v4 = *(v0 + 144);
      v5 = *(v0 + 128);
      v6 = *(v0 + 136);
      sub_1004B10F0(*(v0 + 232) + ((*(v0 + 328) + 32) & ~*(v0 + 328)) + *(v0 + 264) * v2, *(v0 + 176), type metadata accessor for DDMDeclarationStatus);
      (*(v6 + 104))(v4, v3, v5);
      sub_1004B17C0(&qword_10077F3E0, &type metadata accessor for ManagedAppStatus.State, &protocol conformance descriptor for ManagedAppStatus.State);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v7 = *(v0 + 144);
      v8 = *(v0 + 128);
      v9 = (*(v0 + 136) + 8);
      if (*(v0 + 16) == *(v0 + 32) && *(v0 + 24) == *(v0 + 40))
      {
        break;
      }

      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
      (*v9)(v7, v8);

      if (v10)
      {
        goto LABEL_10;
      }

      sub_1004B1090(*(v0 + 176), type metadata accessor for DDMDeclarationStatus);
      v2 = *(v0 + 272) + 1;
      if (v2 == *(v0 + 240))
      {
        goto LABEL_6;
      }
    }

    (*v9)(*(v0 + 144), *(v0 + 128));

LABEL_10:
    v13 = *(v0 + 176);
    v14 = *(*(v0 + 48) + *(v0 + 248));
    *(v0 + 280) = v14;
    *(v0 + 288) = *(v13 + 8);
    *(v0 + 296) = *(v13 + 16);

    return _swift_task_switch(sub_1004AAF2C, v14, 0);
  }
}

uint64_t sub_1004ABDD4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100214EFC;

  return sub_1004FE0E4(a1, v4);
}

uint64_t sub_1004ABE8C(uint64_t a1, char a2)
{
  *(v2 + 600) = a2;
  v4 = type metadata accessor for Logger();
  *(v2 + 424) = v4;
  *(v2 + 432) = *(v4 - 8);
  *(v2 + 440) = swift_task_alloc();
  *(v2 + 448) = swift_task_alloc();
  *(v2 + 456) = swift_task_alloc();
  *(v2 + 464) = swift_task_alloc();
  *(v2 + 472) = swift_task_alloc();
  *(v2 + 480) = swift_task_alloc();
  v5 = type metadata accessor for LogKey.Prefix();
  *(v2 + 488) = v5;
  *(v2 + 496) = *(v5 - 8);
  *(v2 + 504) = swift_task_alloc();
  v6 = type metadata accessor for Dependencies(0);
  *(v2 + 512) = v6;
  *(v2 + 264) = v6;
  *(v2 + 272) = &off_1007702B0;
  *(v2 + 280) = &off_100770270;
  *(v2 + 288) = &off_100770230;
  *(v2 + 240) = a1;

  return _swift_task_switch(sub_1004AC024, 0, 0);
}

uint64_t sub_1004AC024()
{
  v111 = v0;
  (*(*(v0 + 496) + 104))(*(v0 + 504), enum case for LogKey.Prefix.migrator(_:), *(v0 + 488));
  v1 = objc_allocWithZone(type metadata accessor for LogKey());
  v2 = LogKey.init(prefix:)();
  *(v0 + 520) = v2;
  static Logger.daemon.getter();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Starting migrator", v6, 0xCu);
    sub_1000032A8(v7, &qword_10077F920, &qword_10069E6A0);
  }

  v9 = (v0 + 280);
  v10 = *(v0 + 512);
  v11 = *(v0 + 480);
  v12 = *(v0 + 424);
  v13 = *(v0 + 432);

  v14 = *(v13 + 8);
  *(v0 + 528) = v14;
  *(v0 + 536) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v11, v12);
  v15 = *sub_100006D8C((v0 + 240), v10) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device;
  v107 = *(v15 + 24);
  *(v0 + 544) = v107;
  v16 = *(v15 + 32);
  *(v0 + 552) = v16;

  v17 = sub_10036BB34(1u);
  if (v17 && (v18 = v17, v19 = String._bridgeToObjectiveC()(), v20 = [v18 stringForKey:v19], v19, v18, v20))
  {
    v21 = *(v0 + 600);
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (v21 & 1) == 0 && (v107 == v22 && v16 == v24 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
    {
      v100 = v14;

      static Logger.daemon.getter();
      v25 = v3;

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();

      v28 = os_log_type_enabled(v26, v27);
      v29 = *(v0 + 440);
      v30 = *(v0 + 424);
      if (v28)
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v110 = v33;
        *v31 = 138412546;
        *(v31 + 4) = v25;
        *v32 = v25;
        *(v31 + 12) = 2080;
        v104 = v25;
        v34 = sub_1002346CC(v107, v16, &v110);

        *(v31 + 14) = v34;
        _os_log_impl(&_mh_execute_header, v26, v27, "[%@] Migration not needed for '%s'", v31, 0x16u);
        sub_1000032A8(v32, &qword_10077F920, &qword_10069E6A0);

        sub_10000710C(v33);

        v100(v29, v30);
      }

      else
      {

        v100(v29, v30);
      }

LABEL_31:
      sub_10000710C((v0 + 240));

      v97 = *(v0 + 8);

      return v97();
    }
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  static Logger.daemon.getter();

  v35 = v3;

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  v38 = os_log_type_enabled(v36, v37);
  v102 = *(v0 + 424);
  v105 = *(v0 + 472);
  if (v38)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    *v39 = 138412802;
    *(v39 + 4) = v35;
    *v40 = v35;
    *(v39 + 12) = 2080;
    if (!v24)
    {
      v22 = 0;
      v24 = 0xE000000000000000;
    }

    v41 = v35;
    v42 = sub_1002346CC(v22, v24, &v110);

    *(v39 + 14) = v42;
    *(v39 + 22) = 2080;
    *(v39 + 24) = sub_1002346CC(v107, v16, &v110);
    _os_log_impl(&_mh_execute_header, v36, v37, "[%@] Migrating from '%s' to '%s'", v39, 0x20u);
    sub_1000032A8(v40, &qword_10077F920, &qword_10069E6A0);
    v9 = (v0 + 280);

    swift_arrayDestroy();

    v14(v105, v102);
  }

  else
  {

    v14(v105, v102);
  }

  sub_1001F0C48(&qword_1007815C0, &qword_1006A3F78);
  inited = swift_initStackObject();
  *(v0 + 560) = inited;
  *(inited + 16) = xmmword_10069E680;
  v44 = *(v0 + 264);
  v108 = *v9;
  v45 = sub_100006D8C((v0 + 240), v44);
  *(inited + 56) = &type metadata for CleanupOnMigrationTask;
  *(inited + 64) = &off_1007645C0;
  v46 = swift_allocObject();
  *(inited + 32) = v46;
  *(v46 + 40) = v44;
  *(v46 + 48) = v108;
  v47 = sub_10020A748((v46 + 16));
  (*(*(v44 - 8) + 16))(v47, v45, v44);
  *(v46 + 64) = v35;
  *(v46 + 72) = 0xD000000000000019;
  *(v46 + 80) = 0x80000001006CC1C0;
  *(v0 + 416) = inited;
  v48 = swift_initStackObject();
  *(v48 + 16) = xmmword_1006A4050;
  v49 = *(v0 + 264);
  v50 = *(v0 + 280);
  v51 = sub_100006D8C((v0 + 240), v49);
  *(v48 + 56) = &type metadata for AppStoreInstallSheetConsistencyTask;
  *(v48 + 64) = &off_10075BDE8;
  v52 = swift_allocObject();
  *(v48 + 32) = v52;
  v52[5] = v49;
  v52[6] = v50;
  v53 = sub_10020A748(v52 + 2);
  (*(*(v49 - 8) + 16))(v53, v51, v49);
  v52[7] = v35;
  v52[8] = 0xD000000000000028;
  v52[9] = 0x80000001006CC1E0;
  *(v48 + 96) = &type metadata for MigrateMarketplacePriorityListTask;
  *(v48 + 104) = &off_10076EDF8;
  v54 = swift_allocObject();
  *(v48 + 72) = v54;
  v54[2] = v35;
  v54[3] = 0xD000000000000026;
  v54[4] = 0x80000001006CC210;
  v54[5] = 0xD000000000000023;
  v54[6] = 0x80000001006C3890;
  *(v48 + 136) = &type metadata for SetDistributorMetadataTask;
  *(v48 + 144) = &off_100762F28;
  *(v48 + 112) = v35;
  *(v48 + 120) = 0xD00000000000001DLL;
  *(v48 + 128) = 0x80000001006CC240;
  v55 = v35;
  sub_10065380C(v48);
  v56 = *(v0 + 416);
  *(v0 + 568) = v56;
  v57 = *(v56 + 16);
  *(v0 + 576) = v57;
  if (!v57)
  {

    v74 = [objc_opt_self() standardUserDefaults];
    if (v74)
    {
      v75 = v74;
      v76 = String._bridgeToObjectiveC()();

      v77 = String._bridgeToObjectiveC()();
      [v75 setObject:v76 forKey:v77];
    }

    else
    {
    }

    v84 = *(v0 + 520);
    static Logger.daemon.getter();
    v85 = v84;
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.default.getter();

    v88 = os_log_type_enabled(v86, v87);
    v89 = *(v0 + 520);
    if (v88)
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      *v90 = 138412290;
      *(v90 + 4) = v89;
      *v91 = v89;
      v92 = v89;
      _os_log_impl(&_mh_execute_header, v86, v87, "[%@] Migrator complete", v90, 0xCu);
      sub_1000032A8(v91, &qword_10077F920, &qword_10069E6A0);

      v93 = *(v0 + 520);
    }

    else
    {
      v93 = v86;
      v86 = *(v0 + 520);
    }

    v94 = *(v0 + 528);
    v95 = *(v0 + 464);
    v96 = *(v0 + 424);

    v94(v95, v96);
    goto LABEL_31;
  }

  *(v0 + 584) = 0;
  v58 = *(v0 + 520);
  sub_10020A980(v56 + 32, v0 + 296);
  static Logger.daemon.getter();
  sub_10020A980(v0 + 296, v0 + 336);
  v59 = v58;
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();

  v62 = os_log_type_enabled(v60, v61);
  v63 = *(v0 + 528);
  if (v62)
  {
    v64 = *(v0 + 520);
    v103 = *(v0 + 424);
    v106 = *(v0 + 456);
    v101 = *(v0 + 528);
    v65 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v110 = v99;
    *v65 = 138412546;
    *(v65 + 4) = v64;
    *v98 = v64;
    *(v65 + 12) = 2082;
    v67 = *(v0 + 360);
    v66 = *(v0 + 368);
    sub_100006D8C((v0 + 336), v67);
    v68 = *(v66 + 8);
    v69 = v64;
    v70 = v68(v67, v66);
    v72 = v71;
    sub_10000710C((v0 + 336));
    v73 = sub_1002346CC(v70, v72, &v110);

    *(v65 + 14) = v73;
    _os_log_impl(&_mh_execute_header, v60, v61, "[%@] Running %{public}s", v65, 0x16u);
    sub_1000032A8(v98, &qword_10077F920, &qword_10069E6A0);

    sub_10000710C(v99);

    v101(v106, v103);
  }

  else
  {
    v78 = *(v0 + 456);
    v79 = *(v0 + 424);

    v63(v78, v79);
    sub_10000710C((v0 + 336));
  }

  v80 = *(v0 + 320);
  v81 = *(v0 + 328);
  sub_100006D8C((v0 + 296), v80);
  v109 = (*(v81 + 16) + **(v81 + 16));
  v82 = swift_task_alloc();
  *(v0 + 592) = v82;
  *v82 = v0;
  v82[1] = sub_1004ACD98;

  return v109(v80, v81);
}

uint64_t sub_1004ACD98()
{

  return _swift_task_switch(sub_1004ACE94, 0, 0);
}

uint64_t sub_1004ACE94(uint64_t a1)
{
  v75 = v1;
  v2 = v1[65];
  static Logger.daemon.getter();
  sub_10020A980((v1 + 37), (v1 + 47));
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[66];
  if (v6)
  {
    v8 = v1[65];
    v69 = v1[53];
    v71 = v1[56];
    v67 = v1[66];
    v9 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v74 = v65;
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v63 = v8;
    *(v9 + 12) = 2082;
    v11 = v1[50];
    v10 = v1[51];
    sub_100006D8C(v1 + 47, v11);
    v12 = *(v10 + 8);
    v13 = v8;
    v14 = v12(v11, v10);
    v16 = v15;
    sub_10000710C(v1 + 47);
    v17 = sub_1002346CC(v14, v16, &v74);

    *(v9 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] %{public}s complete", v9, 0x16u);
    sub_1000032A8(v63, &qword_10077F920, &qword_10069E6A0);

    sub_10000710C(v65);

    v67(v71, v69);
  }

  else
  {
    v18 = v1[56];
    v19 = v1[53];

    v7(v18, v19);
    sub_10000710C(v1 + 47);
  }

  v20 = v1[72];
  v21 = v1[73] + 1;
  sub_10000710C(v1 + 37);
  if (v21 == v20)
  {

    v22 = [objc_opt_self() standardUserDefaults];
    if (v22)
    {
      v23 = v22;
      v24 = String._bridgeToObjectiveC()();

      v25 = String._bridgeToObjectiveC()();
      [v23 setObject:v24 forKey:v25];
    }

    else
    {
    }

    v49 = v1[65];
    static Logger.daemon.getter();
    v50 = v49;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();

    v53 = os_log_type_enabled(v51, v52);
    v54 = v1[65];
    if (v53)
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 138412290;
      *(v55 + 4) = v54;
      *v56 = v54;
      v57 = v54;
      _os_log_impl(&_mh_execute_header, v51, v52, "[%@] Migrator complete", v55, 0xCu);
      sub_1000032A8(v56, &qword_10077F920, &qword_10069E6A0);

      v58 = v1[65];
    }

    else
    {
      v58 = v51;
      v51 = v1[65];
    }

    v59 = v1[66];
    v60 = v1[58];
    v61 = v1[53];

    v59(v60, v61);
    sub_10000710C(v1 + 30);

    v62 = v1[1];

    return v62();
  }

  else
  {
    v26 = v1[73];
    v1[73] = v26 + 1;
    v27 = v1[65];
    sub_10020A980(v1[71] + 40 * v26 + 72, (v1 + 37));
    static Logger.daemon.getter();
    sub_10020A980((v1 + 37), (v1 + 42));
    v28 = v27;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    v31 = os_log_type_enabled(v29, v30);
    v32 = v1[66];
    if (v31)
    {
      v33 = v1[65];
      v70 = v1[53];
      v72 = v1[57];
      v68 = v1[66];
      v34 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v74 = v66;
      *v34 = 138412546;
      *(v34 + 4) = v33;
      *v64 = v33;
      *(v34 + 12) = 2082;
      v36 = v1[45];
      v35 = v1[46];
      sub_100006D8C(v1 + 42, v36);
      v37 = *(v35 + 8);
      v38 = v33;
      v39 = v37(v36, v35);
      v41 = v40;
      sub_10000710C(v1 + 42);
      v42 = sub_1002346CC(v39, v41, &v74);

      *(v34 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v29, v30, "[%@] Running %{public}s", v34, 0x16u);
      sub_1000032A8(v64, &qword_10077F920, &qword_10069E6A0);

      sub_10000710C(v66);

      v68(v72, v70);
    }

    else
    {
      v43 = v1[57];
      v44 = v1[53];

      v32(v43, v44);
      sub_10000710C(v1 + 42);
    }

    v45 = v1[40];
    v46 = v1[41];
    sub_100006D8C(v1 + 37, v45);
    v73 = (*(v46 + 16) + **(v46 + 16));
    v47 = swift_task_alloc();
    v1[74] = v47;
    *v47 = v1;
    v47[1] = sub_1004ACD98;

    return v73(v45, v46);
  }
}

uint64_t sub_1004AD5F4(uint64_t a1, uint64_t a2)
{
  v11[4] = &off_100770270;
  v11[5] = &off_100770230;
  v11[6] = &off_100770218;
  v11[7] = &off_1007701D0;
  v11[8] = &off_1007701B0;
  v11[3] = type metadata accessor for Dependencies(0);
  v11[0] = a1;
  v4 = *(a2 + 16);

  os_unfair_lock_lock(v4 + 22);
  sub_1004B1AC0(&v4[4]);
  os_unfair_lock_unlock(v4 + 22);
  v5 = objc_opt_self();
  v6 = [v5 defaultCenter];
  v7 = String._bridgeToObjectiveC()();
  [v6 addObserver:a2 selector:"handleApplicationRegisteredNotification:" name:v7 object:0];

  v8 = [v5 defaultCenter];
  v9 = String._bridgeToObjectiveC()();
  [v8 addObserver:a2 selector:"handleApplicationUnregisteredNotification:" name:v9 object:0];

  return sub_10000710C(v11);
}

uint64_t sub_1004AD798(uint64_t a1, uint64_t a2)
{
  v7[4] = &off_1007702D8;
  v7[5] = &off_1007702B0;
  v7[6] = &off_100770270;
  v7[7] = &off_100770230;
  v7[8] = &off_100770218;
  v7[9] = &off_100770208;
  v7[10] = &off_1007701D0;
  v7[11] = &off_1007701C0;
  v7[12] = &off_1007701B0;
  v7[3] = type metadata accessor for Dependencies(0);
  v7[0] = a1;
  v4 = *(a2 + 16);

  os_unfair_lock_lock(v4 + 30);
  sub_1004B1AA4(&v4[4]);
  os_unfair_lock_unlock(v4 + 30);
  v5 = [objc_opt_self() defaultCenter];
  if (qword_10077E560 != -1)
  {
    swift_once();
  }

  [v5 addObserver:a2 selector:? name:? object:?];

  return sub_10000710C(v7);
}

id sub_1004AD8FC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v14[4] = &off_1007702D8;
  v14[5] = &off_1007702B0;
  v14[6] = &off_100770270;
  v14[7] = &off_100770230;
  v14[8] = &off_100770218;
  v14[9] = &off_100770208;
  v14[10] = &off_1007701D0;
  v14[11] = &off_1007701C0;
  v14[12] = &off_1007701B0;
  v14[3] = v3;
  v14[0] = a2;
  v4 = type metadata accessor for Service(0);
  v5 = objc_allocWithZone(v4);
  v6 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_daemonInstanceIdentifier;
  v13 = 0;
  swift_stdlib_random();
  *&v5[v6] = getpid();
  v7 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_bagService;
  v8 = type metadata accessor for BagService();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v5[v7], a1, v8);
  sub_1004B1358(v14, &v5[OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies]);
  v12.receiver = v5;
  v12.super_class = v4;
  v10 = objc_msgSendSuper2(&v12, "init");
  (*(v9 + 8))(a1, v8);
  sub_10000710C(v14);
  return v10;
}

uint64_t sub_1004ADAA8(uint64_t a1, uint64_t a2)
{
  v2[44] = a2;
  v5 = type metadata accessor for Logger();
  v2[45] = v5;
  v2[46] = *(v5 - 8);
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  sub_1001F0C48(&unk_10077F8E0, &qword_10069F380);
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = type metadata accessor for DDMDeclaration(0);
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  sub_1001F0C48(&unk_100780380, &qword_10069E9E0);
  v2[58] = swift_task_alloc();
  v6 = type metadata accessor for ManagedAppDeclarationIngester.Operation(0);
  v2[59] = v6;
  v2[60] = *(v6 - 8);
  v2[61] = swift_task_alloc();
  sub_1001F0C48(&qword_100784E20, &qword_1006AD7C8);
  v2[62] = swift_task_alloc();
  v7 = sub_1001F0C48(&qword_100784E28, &qword_1006AD7D0);
  v2[63] = v7;
  v2[64] = *(v7 - 8);
  v2[65] = swift_task_alloc();
  v2[5] = type metadata accessor for Dependencies(0);
  v2[6] = &off_1007702D8;
  v2[7] = &off_1007702B0;
  v2[8] = &off_100770230;
  v2[9] = &off_1007701D0;
  v2[10] = &off_1007701B0;
  v2[2] = a1;

  return _swift_task_switch(sub_1004ADDE0, a2, 0);
}

uint64_t sub_1004ADDE0()
{
  sub_1001F0C48(&qword_10077F3D0, &qword_10069FCB0);
  AsyncStream.makeAsyncIterator()();
  v1 = sub_1004B17C0(&qword_10077FE20, type metadata accessor for ManagedAppDeclarationIngester, byte_10069F9BC);
  v0[66] = v1;
  v0[67] = 0;
  v2 = v0[44];
  v3 = swift_task_alloc();
  v0[68] = v3;
  *v3 = v0;
  v3[1] = sub_1004ADF2C;
  v4 = v0[62];
  v5 = v0[63];

  return AsyncStream.Iterator.next(isolation:)(v4, v2, v1, v5);
}

uint64_t sub_1004ADF2C()
{
  v1 = *(*v0 + 352);

  return _swift_task_switch(sub_1004AE068, v1, 0);
}

uint64_t sub_1004AE068()
{
  v1 = v0 + 2;
  v2 = v0[62];
  if ((*(v0[60] + 48))(v2, 1, v0[59]) == 1)
  {
    v3 = v0[58];
    v4 = v0[44];
    (*(v0[64] + 8))(v0[65], v0[63]);
    static TaskPriority.background.getter();
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
    sub_10026FE78((v0 + 2), (v0 + 11));
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v4;
    sub_10026FEE4((v0 + 11), (v6 + 5));

    sub_1004F8754(0, 0, v3, &unk_1006AD7D8, v6);

    sub_1000032A8(v3, &unk_100780380, &qword_10069E9E0);
    sub_10000710C(v0 + 2);

    v7 = v0[1];

    return v7();
  }

  else
  {
    sub_1004B18C8(v2, v0[61], type metadata accessor for ManagedAppDeclarationIngester.Operation);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v10 = v0[61];
    v11 = v0[45];
    v12 = v0[46];
    v13 = v0[44];
    if (EnumCaseMultiPayload == 1)
    {
      v14 = v0[56];
      v15 = v0[52];
      sub_1004B18C8(v10, v14, type metadata accessor for DDMDeclaration);
      v0[36] = 5391437;
      v0[37] = 0xE300000000000000;
      sub_1001F0C48(&qword_10077E910, &unk_10069E6C0);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_10069E680;
      v17 = String.hashValue.getter();
      *(v16 + 56) = &type metadata for Int;
      *(v16 + 64) = &protocol witness table for Int;
      *(v16 + 32) = v17;
      v18._countAndFlagsBits = String.init(format:_:)();
      String.append(_:)(v18);

      v19._countAndFlagsBits = 58;
      v19._object = 0xE100000000000000;
      String.append(_:)(v19);
      String.append(_:)(v14[3]);
      v20 = objc_allocWithZone(type metadata accessor for LogKey());
      v21 = LogKey.init(string:)();
      v0[74] = v21;
      (*(v12 + 56))(v15, 1, 1, v11);
      v22 = swift_task_alloc();
      v0[75] = v22;
      v22[2] = v13;
      v22[3] = v14;
      v22[4] = v1;
      v23 = v21;
      if (v13)
      {
        swift_getObjectType();
        v24 = dispatch thunk of Actor.unownedExecutor.getter();
        v26 = v25;
      }

      else
      {
        v24 = 0;
        v26 = 0;
      }

      v0[77] = v26;
      v0[76] = v24;
      v38 = sub_1004AEC5C;
    }

    else
    {
      v27 = v0[57];
      v28 = v0[54];
      sub_1004B18C8(v10, v27, type metadata accessor for DDMDeclaration);
      v0[40] = 4801613;
      v0[41] = 0xE300000000000000;
      sub_1001F0C48(&qword_10077E910, &unk_10069E6C0);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_10069E680;
      v30 = String.hashValue.getter();
      *(v29 + 56) = &type metadata for Int;
      *(v29 + 64) = &protocol witness table for Int;
      *(v29 + 32) = v30;
      v31._countAndFlagsBits = String.init(format:_:)();
      String.append(_:)(v31);

      v32._countAndFlagsBits = 58;
      v32._object = 0xE100000000000000;
      String.append(_:)(v32);
      String.append(_:)(v27[3]);
      v33 = objc_allocWithZone(type metadata accessor for LogKey());
      v34 = LogKey.init(string:)();
      v0[69] = v34;
      (*(v12 + 56))(v28, 1, 1, v11);
      v35 = swift_task_alloc();
      v0[70] = v35;
      v35[2] = v1;
      v35[3] = v13;
      v35[4] = v27;
      v35[5] = v34;
      v36 = v34;
      if (v13)
      {
        swift_getObjectType();
        v24 = dispatch thunk of Actor.unownedExecutor.getter();
        v26 = v37;
      }

      else
      {
        v24 = 0;
        v26 = 0;
      }

      v0[72] = v26;
      v0[71] = v24;
      v38 = sub_1004AE654;
    }

    return _swift_task_switch(v38, v24, v26);
  }
}

void sub_1004AE654()
{
  sub_100005934(v0[27].opaque[0], v0[26].opaque[1], &unk_10077F8E0, &qword_10069F380);
  type metadata accessor for LogActivity();
  v1 = swift_allocObject();
  v0[36].opaque[1] = v1;
  if (qword_10077E5A8 != -1)
  {
    swift_once();
  }

  v2 = _os_activity_create(&_mh_execute_header, "Ingest declaration", qword_10078A090, OS_ACTIVITY_FLAG_DEFAULT);
  v0[21].opaque[0] = 0;
  v0[21].opaque[1] = 0;
  os_activity_scope_enter(v2, v0 + 21);
  swift_unknownObjectRelease();
  *(v1 + 16) = v0[21];
  if (qword_10077E598 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v3 = v0[14].opaque[1];
  v4 = v0[34].opaque[1];
  if (v3)
  {
    v5 = v0[33].opaque[1];

    *(swift_task_alloc() + 16) = v4;
    v6 = v4;

    os_unfair_lock_lock((v3 + 24));
    sub_10023228C((v3 + 16));
    if (v5)
    {

      os_unfair_lock_unlock((v3 + 24));
      return;
    }

    v8 = v0[34].opaque[1];
    os_unfair_lock_unlock((v3 + 24));
  }

  else
  {
    sub_1001F0C48(&qword_100784310, &unk_10069FA00);
    v3 = swift_allocObject();
    *(v3 + 24) = 0;
    *(v3 + 16) = v4;
    v7 = v4;
  }

  v0[39].opaque[1] = v3;
  type metadata accessor for Transaction();
  v9 = swift_allocObject();
  v0[40].opaque[0] = v9;
  *(v9 + 16) = StaticString.description.getter();
  *(v9 + 24) = v10;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  v11 = *(v9 + 16);
  v12 = *(v9 + 24);
  v13 = off_100788658;
  if (*(off_100788658 + 2) && (v14 = sub_10052213C(v11, v12), (v15 & 1) != 0))
  {
    v16 = (v13[7] + 16 * v14);
    v17 = *v16;
    v18 = v16[1];
  }

  else
  {
    type metadata accessor for Transaction.SendableTransaction();
    swift_allocObject();

    v18 = sub_1005B83F0(v11, v12);
    v17 = 0;
  }

  if (__OFADD__(v17, 1))
  {
    __break(1u);
  }

  v37 = v9;
  v38 = v1;
  v19 = v0[26].opaque[1];
  v20 = v0[25].opaque[0];
  v21 = v0[23].opaque[0];
  v36 = v0[22].opaque[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = off_100788658;
  sub_1005C1BAC(v17 + 1, v18, v11, v12, isUniquelyReferenced_nonNull_native);

  off_100788658 = v39;
  os_unfair_lock_unlock(&dword_100788650);
  sub_100005934(v19, v20, &unk_10077F8E0, &qword_10069F380);
  v23 = (*(v21 + 48))(v20, 1, v36);
  v24 = v0[26].opaque[1];
  if (v23 == 1)
  {
    sub_1000032A8(v0[26].opaque[1], &unk_10077F8E0, &qword_10069F380);

    v25 = 0;
  }

  else
  {
    v27 = v0[23].opaque[1];
    v26 = v0[24].opaque[0];
    v28 = v0[22].opaque[1];
    v29 = v0[23].opaque[0];
    (*(v29 + 32))(v26, v0[25].opaque[0], v28);
    (*(v29 + 16))(v27, v26, v28);
    type metadata accessor for SignpostInterval(0);
    swift_allocObject();
    v25 = sub_1005AD4D8("Ingest declaration", 18, 2, v27);

    (*(v29 + 8))(v26, v28);
    sub_1000032A8(v24, &unk_10077F8E0, &qword_10069F380);
  }

  v0[40].opaque[1] = v25;
  v30 = v0[35].opaque[0];
  v31 = v0[34].opaque[1];
  v32 = v0[33].opaque[0];
  v33 = v0[22].opaque[0];
  v0[16].opaque[0] = v38;
  v0[16].opaque[1] = v3;
  v0[17].opaque[0] = v37;
  v0[17].opaque[1] = v25;
  v34 = swift_task_alloc();
  v0[41].opaque[0] = v34;
  v34[2] = v31;
  v34[3] = v38;
  v34[4] = v3;
  v34[5] = v37;
  v34[6] = v25;
  v34[7] = &unk_1006AD7F0;
  v34[8] = v30;

  v35 = swift_task_alloc();
  v0[41].opaque[1] = v35;
  *v35 = v0;
  v35[1] = sub_1004AF274;

  TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v35, &v0[16], &unk_1006AD7F8, v34, v33, v32, 0xD000000000000033, 0x80000001006C49B0);
}

void sub_1004AEC5C()
{
  sub_100005934(v0[26].opaque[0], v0[25].opaque[1], &unk_10077F8E0, &qword_10069F380);
  type metadata accessor for LogActivity();
  v1 = swift_allocObject();
  v0[39].opaque[0] = v1;
  if (qword_10077E5A8 != -1)
  {
    swift_once();
  }

  v2 = _os_activity_create(&_mh_execute_header, "Remove declaration", qword_10078A090, OS_ACTIVITY_FLAG_DEFAULT);
  v0[19].opaque[0] = 0;
  v0[19].opaque[1] = 0;
  os_activity_scope_enter(v2, v0 + 19);
  swift_unknownObjectRelease();
  *(v1 + 16) = v0[19];
  if (qword_10077E598 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v3 = v0[10].opaque[1];
  v4 = v0[37].opaque[0];
  if (v3)
  {
    v5 = v0[33].opaque[1];

    *(swift_task_alloc() + 16) = v4;
    v6 = v4;

    os_unfair_lock_lock((v3 + 24));
    sub_10023228C((v3 + 16));
    if (v5)
    {

      os_unfair_lock_unlock((v3 + 24));
      return;
    }

    v8 = v0[37].opaque[0];
    os_unfair_lock_unlock((v3 + 24));
  }

  else
  {
    sub_1001F0C48(&qword_100784310, &unk_10069FA00);
    v3 = swift_allocObject();
    *(v3 + 24) = 0;
    *(v3 + 16) = v4;
    v7 = v4;
  }

  v40 = v1;
  v0[42].opaque[1] = v3;
  type metadata accessor for Transaction();
  v9 = swift_allocObject();
  v0[43].opaque[0] = v9;
  *(v9 + 16) = StaticString.description.getter();
  *(v9 + 24) = v10;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  v13 = off_100788658;
  if (*(off_100788658 + 2) && (v14 = sub_10052213C(*(v9 + 16), *(v9 + 24)), (v15 & 1) != 0))
  {
    v16 = (v13[7] + 16 * v14);
    v17 = *v16;
    v18 = v16[1];
  }

  else
  {
    type metadata accessor for Transaction.SendableTransaction();
    swift_allocObject();

    v18 = sub_1005B83F0(v12, v11);
    v17 = 0;
  }

  if (__OFADD__(v17, 1))
  {
    __break(1u);
  }

  v38 = v9;
  v36 = v0[25].opaque[1];
  v19 = v0[24].opaque[1];
  v20 = v12;
  v21 = v0[23].opaque[0];
  v37 = v0[22].opaque[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = off_100788658;
  sub_1005C1BAC(v17 + 1, v18, v20, v11, isUniquelyReferenced_nonNull_native);

  off_100788658 = v41;
  os_unfair_lock_unlock(&dword_100788650);
  sub_100005934(v36, v19, &unk_10077F8E0, &qword_10069F380);
  v23 = (*(v21 + 48))(v19, 1, v37);
  v24 = v0[25].opaque[1];
  if (v23 == 1)
  {
    sub_1000032A8(v0[25].opaque[1], &unk_10077F8E0, &qword_10069F380);

    v25 = 0;
  }

  else
  {
    v26 = v0[24].opaque[0];
    v28 = v0[23].opaque[0];
    v27 = v0[23].opaque[1];
    v29 = v0[22].opaque[1];
    (*(v28 + 32))(v26, v0[24].opaque[1], v29);
    (*(v28 + 16))(v27, v26, v29);
    type metadata accessor for SignpostInterval(0);
    swift_allocObject();
    v25 = sub_1005AD4D8("Remove declaration", 18, 2, v27);

    (*(v28 + 8))(v26, v29);
    sub_1000032A8(v24, &unk_10077F8E0, &qword_10069F380);
  }

  v30 = v38;
  v0[43].opaque[1] = v25;
  v31 = v0[37].opaque[1];
  v32 = v0[37].opaque[0];
  v39 = v0[33].opaque[0];
  v33 = v0[22].opaque[0];
  v0[12].opaque[0] = v40;
  v0[12].opaque[1] = v3;
  v0[13].opaque[0] = v30;
  v0[13].opaque[1] = v25;
  v34 = swift_task_alloc();
  v0[44].opaque[0] = v34;
  v34[2] = v32;
  v34[3] = v40;
  v34[4] = v3;
  v34[5] = v30;
  v34[6] = v25;
  v34[7] = &unk_1006AD7E0;
  v34[8] = v31;

  v35 = swift_task_alloc();
  v0[44].opaque[1] = v35;
  *v35 = v0;
  v35[1] = sub_1004AF714;

  TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v35, &v0[12], &unk_1006AD7E8, v34, v33, v39, 0xD000000000000033, 0x80000001006C49B0);
}

uint64_t sub_1004AF274()
{
  v2 = *v1;
  *(*v1 + 672) = v0;

  if (v0)
  {

    v3 = *(v2 + 576);
    v4 = *(v2 + 568);
    v5 = sub_1004AF670;
  }

  else
  {

    v3 = *(v2 + 576);
    v4 = *(v2 + 568);
    v5 = sub_1004AF450;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004AF450()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 352);

  sub_1000032A8(v1, &unk_10077F8E0, &qword_10069F380);

  return _swift_task_switch(sub_1004AF558, v2, 0);
}

uint64_t sub_1004AF558()
{
  v1 = v0;
  v2 = *(v0 + 672);
  v3 = *(v1 + 456);

  sub_1004B1090(v3, type metadata accessor for DDMDeclaration);
  *(v1 + 536) = v2;
  v4 = *(v1 + 528);
  v5 = *(v1 + 352);
  v6 = swift_task_alloc();
  *(v1 + 544) = v6;
  *v6 = v1;
  v6[1] = sub_1004ADF2C;
  v7 = *(v1 + 496);
  v8 = *(v1 + 504);

  return AsyncStream.Iterator.next(isolation:)(v7, v5, v4, v8);
}

uint64_t sub_1004AF670()
{
}

uint64_t sub_1004AF714()
{
  v2 = *v1;
  *(*v1 + 720) = v0;

  if (v0)
  {

    v3 = *(v2 + 616);
    v4 = *(v2 + 608);
    v5 = sub_1004AFB10;
  }

  else
  {

    v3 = *(v2 + 616);
    v4 = *(v2 + 608);
    v5 = sub_1004AF8F0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004AF8F0()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 352);

  sub_1000032A8(v1, &unk_10077F8E0, &qword_10069F380);

  return _swift_task_switch(sub_1004AF9F8, v2, 0);
}

uint64_t sub_1004AF9F8()
{
  v1 = v0;
  v2 = *(v0 + 720);
  v3 = *(v1 + 448);

  sub_1004B1090(v3, type metadata accessor for DDMDeclaration);
  *(v1 + 536) = v2;
  v4 = *(v1 + 528);
  v5 = *(v1 + 352);
  v6 = swift_task_alloc();
  *(v1 + 544) = v6;
  *v6 = v1;
  v6[1] = sub_1004ADF2C;
  v7 = *(v1 + 496);
  v8 = *(v1 + 504);

  return AsyncStream.Iterator.next(isolation:)(v7, v5, v4, v8);
}

uint64_t sub_1004AFB10()
{
}

uint64_t sub_1004AFBB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&unk_100780380, &qword_10069E9E0);
  __chkstk_darwin(v4 - 8);
  v6 = v19 - v5 + 22;
  v7 = type metadata accessor for Dependencies(0);
  v20[4] = &off_1007702B0;
  v20[5] = &off_100770270;
  v20[6] = &off_100770230;
  v20[7] = &off_100770218;
  v20[8] = &off_100770208;
  v20[9] = &off_1007701D0;
  v20[10] = &off_1007701C0;
  v20[11] = &off_1007701B0;
  v20[3] = v7;
  v20[0] = a1;
  sub_100231CE8(v20, v19);
  v8 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_dependencies;
  swift_beginAccess();

  sub_1004B13CC(v19, a2 + v8);
  swift_endAccess();
  sub_10054DC08();
  v9 = type metadata accessor for TaskPriority();
  v10 = *(*(v9 - 8) + 56);
  v10(v6, 1, 1, v9);
  v11 = sub_1004B17C0(&qword_100784E18, type metadata accessor for AppInstallScheduler, byte_1006B25BC);
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = v11;
  v12[4] = a2;
  swift_retain_n();
  sub_1002FBE70(0, 0, v6, 0, 0, &unk_1006AD790, v12);

  sub_1000032A8(v6, &unk_100780380, &qword_10069E9E0);
  v10(v6, 1, 1, v9);
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = v11;
  v13[4] = a2;
  swift_retain_n();
  sub_1004A673C(0, 0, v6, &unk_1006AD798, v13);

  v10(v6, 1, 1, v9);
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = v11;
  v14[4] = a2;
  swift_retain_n();
  sub_1004A673C(0xD00000000000002CLL, 0x80000001006CC130, v6, &unk_1006AD7A0, v14);

  v10(v6, 1, 1, v9);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a2;

  sub_1004F8754(0xD000000000000026, 0x80000001006CC160, v6, &unk_1006AD7A8, v15);

  sub_1000032A8(v6, &unk_100780380, &qword_10069E9E0);
  v10(v6, 1, 1, v9);
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = v11;
  v16[4] = a2;
  swift_retain_n();
  sub_1004A673C(0xD000000000000028, 0x80000001006CC190, v6, &unk_1006AD7B0, v16);

  return sub_10000710C(v20);
}

uint64_t sub_1004B000C(uint64_t *a1)
{
  v3 = *a1;
  v4 = type metadata accessor for Logger();
  v1[19] = v4;
  v1[20] = *(v4 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  sub_1001F0C48(&unk_10077F8E0, &qword_10069F380);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[5] = v3;
  v1[6] = &off_1007702D8;
  v1[7] = &off_100770208;
  v1[8] = &off_1007701D0;
  v1[2] = a1;

  return _swift_task_switch(sub_1004B01B4, 0, 0);
}

uint64_t sub_1004B01B4()
{
  (*(v0[20] + 56))(v0[25], 1, 1, v0[19]);
  v1 = swift_task_alloc();
  v0[26] = v1;
  *(v1 + 16) = v0 + 2;

  return _swift_task_switch(sub_1004B0274, 0, 0);
}

uint64_t sub_1004B0274()
{
  sub_100005934(*(v0 + 200), *(v0 + 192), &unk_10077F8E0, &qword_10069F380);
  type metadata accessor for LogActivity();
  v1 = swift_allocObject();
  *(v0 + 216) = v1;
  if (qword_10077E5A8 != -1)
  {
    swift_once();
  }

  v2 = _os_activity_create(&_mh_execute_header, "syncAgeRatings", qword_10078A090, OS_ACTIVITY_FLAG_DEFAULT);
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  os_activity_scope_enter(v2, (v0 + 136));
  swift_unknownObjectRelease();
  *(v1 + 16) = *(v0 + 136);
  if (qword_10077E598 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v3 = *(v0 + 80);
  if (v3)
  {
  }

  else
  {
    sub_1001F0C48(&qword_100784310, &unk_10069FA00);
    v3 = swift_allocObject();
    *(v3 + 24) = 0;
    *(v3 + 16) = 0;
  }

  *(v0 + 224) = v3;
  type metadata accessor for Transaction();
  v4 = swift_allocObject();
  *(v0 + 232) = v4;

  *(v4 + 16) = StaticString.description.getter();
  *(v4 + 24) = v5;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v4);
  os_unfair_lock_unlock(&dword_100788650);
  v6 = *(v0 + 184);
  v8 = *(v0 + 152);
  v7 = *(v0 + 160);
  sub_100005934(*(v0 + 192), v6, &unk_10077F8E0, &qword_10069F380);
  v9 = (*(v7 + 48))(v6, 1, v8);
  v10 = *(v0 + 192);
  if (v9 == 1)
  {
    sub_1000032A8(*(v0 + 192), &unk_10077F8E0, &qword_10069F380);

    v11 = 0;
  }

  else
  {
    v12 = *(v0 + 176);
    v13 = *(v0 + 160);
    v14 = *(v0 + 168);
    v15 = *(v0 + 152);
    (*(v13 + 32))(v12, *(v0 + 184), v15);
    (*(v13 + 16))(v14, v12, v15);
    type metadata accessor for SignpostInterval(0);
    swift_allocObject();
    v11 = sub_1005AD4D8("syncAgeRatings", 14, 2, v14);

    (*(v13 + 8))(v12, v15);
    sub_1000032A8(v10, &unk_10077F8E0, &qword_10069F380);
  }

  *(v0 + 240) = v11;
  v16 = *(v0 + 208);
  *(v0 + 104) = v1;
  *(v0 + 112) = v3;
  *(v0 + 120) = v4;
  *(v0 + 128) = v11;
  v17 = swift_task_alloc();
  *(v0 + 248) = v17;
  v17[2] = 0;
  v17[3] = v1;
  v17[4] = v3;
  v17[5] = v4;
  v17[6] = v11;
  v17[7] = &unk_1006AD778;
  v17[8] = v16;

  v18 = swift_task_alloc();
  *(v0 + 256) = v18;
  *v18 = v0;
  v18[1] = sub_1004B074C;

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v18, v0 + 104, &unk_1006AD780, v17, 0, 0, 0xD000000000000033, 0x80000001006C49B0);
}

uint64_t sub_1004B074C()
{

  if (v0)
  {

    v1 = sub_100448038;
  }

  else
  {

    v1 = sub_1004B090C;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1004B090C()
{
  v1 = *(v0 + 200);

  sub_1000032A8(v1, &unk_10077F8E0, &qword_10069F380);

  return _swift_task_switch(sub_1004B09F0, 0, 0);
}

uint64_t sub_1004B09F0()
{
  sub_10000710C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004B0AC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100214EFC;

  return sub_10058D37C(a1, v4, v5, v7, v6);
}

uint64_t sub_1004B0B80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100214EFC;

  return sub_100445E94(a1, v4, v5, v6);
}

uint64_t sub_1004B0C34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100214EFC;

  return sub_1004A796C(a1, v4, v5, v6);
}

uint64_t sub_1004B0CE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100214EFC;

  return sub_1004A7B40(a1, v4, v5, v6);
}

uint64_t sub_1004B0D9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100214EFC;

  return sub_1004A7BEC(a1, v4, v5, v6);
}

uint64_t sub_1004B0E50()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100214EFC;

  return sub_1004A7C9C();
}

uint64_t sub_1004B0EFC()
{
  v2 = *(type metadata accessor for BagService() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100214EFC;

  return sub_1004A7D14(v0 + v3, v4);
}

uint64_t sub_1004B1000()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100214EFC;

  return sub_1004AA610(v0);
}

uint64_t sub_1004B1090(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1004B10F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004B1158(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100214EFC;

  return sub_1004A8A54(a1, v5, v4);
}

uint64_t sub_1004B1204(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100214EFC;

  return sub_1004AA198(a1, v4, v5, v6);
}

uint64_t sub_1004B12B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100214EFC;

  return sub_10020B100(a1, v4);
}

uint64_t sub_1004B1358(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 96);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  v7 = *(a1 + 80);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v5;
  *(a2 + 64) = v6;
  *(a2 + 80) = v7;
  *(a2 + 96) = v4;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1004B13CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_100784E10, &qword_1006AD788);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004B143C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1001F0E54;

  return sub_100550900(a1, v4, v5, v6);
}

uint64_t sub_1004B14F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100214EFC;

  return sub_10054F824(a1, v4, v5, v6);
}

uint64_t sub_1004B15A4(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100214EFC;

  return sub_100553BB0();
}

uint64_t sub_1004B1658(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1001F0E54;

  return sub_100558030();
}

uint64_t sub_1004B170C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100214EFC;

  return sub_1005588AC(a1, v4, v5, v6);
}

uint64_t sub_1004B17C0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1004B1808(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100214EFC;

  return sub_10023A754(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1004B18C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004B1930(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100214EFC;

  return sub_10023A578(a1, v4, v5, v6);
}

uint64_t sub_1004B19E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100214EFC;

  return sub_100239DD8(a1, v4, v5, v7, v6);
}

uint64_t sub_1004B1ADC(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return _swift_task_switch(sub_1004B1AFC, v1, 0);
}

uint64_t sub_1004B1AFC()
{
  v1 = *(*(v0 + 112) + 112);
  *(v0 + 120) = v1;
  if (v1 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
    *(v0 + 128) = v11;
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 128) = v2;
    if (v2)
    {
LABEL_3:
      v3 = *(v0 + 120);
      if ((v3 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_6;
      }

      if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v4 = *(v3 + 32);

LABEL_6:
        *(v0 + 136) = v4;
        *(v0 + 144) = 1;
        v5 = *(v0 + 104);
        v14 = *(v5 + 24);
        v6 = *(v5 + 24);
        v16 = *(v5 + 64);
        v17 = *(v5 + 40);
        v15 = *(v5 + 80);
        v7 = sub_100006D8C(v5, v6);
        *(v0 + 40) = v14;
        *(v0 + 56) = v17;
        *(v0 + 72) = v16;
        *(v0 + 88) = v15;
        v8 = sub_10020A748((v0 + 16));
        (*(*(v6 - 8) + 16))(v8, v7, v6);
        v9 = swift_task_alloc();
        *(v0 + 152) = v9;
        *v9 = v0;
        v9[1] = sub_1004B1D3C;

        return sub_1003FA244(v0 + 16);
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  if (qword_10077E538 != -1)
  {
LABEL_16:
    swift_once();
  }

  v12 = qword_100784E30;
  os_unfair_lock_lock((qword_100784E30 + 24));
  sub_100428428((v12 + 16));
  os_unfair_lock_unlock((v12 + 24));
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1004B1D3C()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = sub_1004B2090;
  }

  else
  {
    v5 = *(v2 + 112);
    sub_10000710C((v2 + 16));
    v4 = sub_1004B1E64;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

void sub_1004B1E64()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);

  if (v1 == v2)
  {
    v3 = *(v0 + 160);
    if (qword_10077E538 != -1)
    {
      swift_once();
    }

    v4 = qword_100784E30;
    os_unfair_lock_lock((qword_100784E30 + 24));
    sub_100428428((v4 + 16));
    os_unfair_lock_unlock((v4 + 24));
    if (!v3)
    {
      v13 = *(v0 + 8);

      v13();
    }

    return;
  }

  v5 = *(v0 + 144);
  v6 = *(v0 + 120);
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v5 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_18:
      __break(1u);
      return;
    }

    v7 = *(v6 + 8 * v5 + 32);
  }

  *(v0 + 136) = v7;
  *(v0 + 144) = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  v8 = *(v0 + 104);
  v14 = *(v8 + 24);
  v9 = *(v8 + 24);
  v16 = *(v8 + 64);
  v17 = *(v8 + 40);
  v15 = *(v8 + 80);
  v10 = sub_100006D8C(v8, v9);
  *(v0 + 40) = v14;
  *(v0 + 56) = v17;
  *(v0 + 72) = v16;
  *(v0 + 88) = v15;
  v11 = sub_10020A748((v0 + 16));
  (*(*(v9 - 8) + 16))(v11, v10, v9);
  v12 = swift_task_alloc();
  *(v0 + 152) = v12;
  *v12 = v0;
  v12[1] = sub_1004B1D3C;

  sub_1003FA244(v0 + 16);
}

uint64_t sub_1004B2090()
{

  sub_10000710C((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004B20FC()
{
  sub_1001F0C48(&qword_100784EF8, &qword_1006AD870);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = _swiftEmptyArrayStorage;
  qword_100784E30 = result;
  return result;
}

uint64_t sub_1004B2148(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1001F0C48(&qword_100783C40, &qword_1006AA2E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v46 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  if (!(a1 >> 62))
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_12:

    v45 = _swiftEmptyArrayStorage;
LABEL_13:
    *(v3 + 112) = v45;
    UUID.init()();
    (*(v10 + 32))(v3 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon19ADPBatchInstallTask_id, v12, v9);
    return v3;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  if (!v13)
  {
    goto LABEL_12;
  }

LABEL_3:
  v51 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v13 & 0x8000000000000000) == 0)
  {
    v46 = v12;
    v47 = v10;
    v48 = v2;
    v50 = v9;
    v15 = 0;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v16 = (v10 + 16);
      do
      {
        v17 = v15 + 1;
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        type metadata accessor for ADPInstallTask(0);
        v19 = swift_allocObject();
        swift_defaultActor_initialize();
        v20 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_lockedADP;
        v21 = type metadata accessor for ADP(0);
        (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
        sub_1001F0C48(&qword_100783C98, &qword_1006AA498);
        v22 = a1;
        v23 = swift_allocObject();
        *(v23 + ((*(*v23 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
        sub_1004B3F1C(v8, v23 + *(*v23 + class metadata base offset for ManagedBuffer + 16));
        *(v19 + v20) = v23;
        v24 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_preflightMetadata;
        v25 = type metadata accessor for ADPPreflightResultingMetadata(0);
        v26 = v19 + v24;
        v9 = v50;
        (*(*(v25 - 8) + 56))(v26, 1, 1, v25);
        *(v19 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_shouldCacheInstallAsPending) = 1;
        *(v19 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_shouldShowAlertOnInstallFailure) = 1;
        *(v19 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_installConfirmationTask) = 0;
        v27 = (v19 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_developerID);
        *v27 = 0;
        v27[1] = 0;
        *(v19 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_hasConditionalDeveloperApproval) = 0;
        *(v19 + 112) = v18;
        (*v16)(v19 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_id, v18 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_id, v9);
        v28 = *(a2 + 16);
        *(v19 + 120) = *a2;
        *(v19 + 136) = v28;
        *(v19 + 152) = *(a2 + 32);
        v29 = *(v18 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_logKey);
        *(v19 + 160) = v29;
        v30 = v29;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        a1 = v22;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v15 = v17;
      }

      while (v13 != v17);
    }

    else
    {
      type metadata accessor for ADPInstallTask(0);
      v49 = a1;
      v31 = (v10 + 16);
      v32 = 32;
      do
      {
        v33 = *(v49 + v32);
        v34 = swift_allocObject();

        swift_defaultActor_initialize();
        v35 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_lockedADP;
        v36 = type metadata accessor for ADP(0);
        (*(*(v36 - 8) + 56))(v8, 1, 1, v36);
        sub_1001F0C48(&qword_100783C98, &qword_1006AA498);
        v37 = swift_allocObject();
        *(v37 + ((*(*v37 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
        sub_1004B3F1C(v8, v37 + *(*v37 + class metadata base offset for ManagedBuffer + 16));
        *(v34 + v35) = v37;
        v38 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_preflightMetadata;
        v39 = type metadata accessor for ADPPreflightResultingMetadata(0);
        v40 = v34 + v38;
        v9 = v50;
        (*(*(v39 - 8) + 56))(v40, 1, 1, v39);
        *(v34 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_shouldCacheInstallAsPending) = 1;
        *(v34 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_shouldShowAlertOnInstallFailure) = 1;
        *(v34 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_installConfirmationTask) = 0;
        v41 = (v34 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_developerID);
        *v41 = 0;
        v41[1] = 0;
        *(v34 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_hasConditionalDeveloperApproval) = 0;
        *(v34 + 112) = v33;
        (*v31)(v34 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_id, v33 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_id, v9);
        v42 = *(a2 + 16);
        *(v34 + 120) = *a2;
        *(v34 + 136) = v42;
        *(v34 + 152) = *(a2 + 32);
        v43 = *(v33 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_logKey);
        *(v34 + 160) = v43;
        v44 = v43;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v32 += 8;
        --v13;
      }

      while (v13);
    }

    v45 = v51;
    v10 = v47;
    v3 = v48;
    v12 = v46;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004B27E4(unint64_t *a1, uint64_t a2)
{
  v6[2] = a2;
  result = sub_10041DFEC(sub_1004B3F8C, v6);
  if (*a1 >> 62)
  {
    v5 = result;
    v4 = _CocoaArrayWrapper.endIndex.getter();
    result = v5;
    if (v4 >= v5)
    {
      return sub_100428C24(result, v4);
    }
  }

  else
  {
    v4 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4 >= result)
    {
      return sub_100428C24(result, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1004B2888()
{

  v1 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19ADPBatchInstallTask_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for ADPBatchInstallTask(uint64_t a1)
{
  result = qword_100784E60;
  if (!qword_100784E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004B295C(uint64_t a1)
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

uint64_t sub_1004B2A04(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = a7;
  *(v8 + 120) = a8;
  *(v8 + 96) = a5;
  *(v8 + 104) = a6;
  *(v8 + 320) = a4;
  *(v8 + 80) = a2;
  *(v8 + 88) = a3;
  *(v8 + 72) = a1;
  v9 = type metadata accessor for UUID();
  *(v8 + 128) = v9;
  *(v8 + 136) = *(v9 - 8);
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  *(v8 + 168) = v10;
  *(v8 + 176) = *(v10 - 8);
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();

  return _swift_task_switch(sub_1004B2B6C, 0, 0);
}

uint64_t sub_1004B2B6C(uint64_t a1)
{
  v71 = v1;
  if (!v1[11])
  {
    v5 = v1[17];
    v4 = v1[18];
    v6 = v1[16];
    v7 = v1[9];
    static Logger.install.getter();
    (*(v5 + 16))(v4, v7, v6);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v12 = v1[22];
    v11 = v1[23];
    v13 = v1[21];
    v15 = v1[17];
    v14 = v1[18];
    v16 = v1[16];
    if (v10)
    {
      v68 = v1[21];
      v17 = swift_slowAlloc();
      v64 = v9;
      v18 = swift_slowAlloc();
      v70[0] = v18;
      *v17 = 136446210;
      sub_1004B3E24(&qword_100789F60, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v66 = v11;
      v21 = v20;
      (*(v15 + 8))(v14, v16);
      v22 = sub_1002346CC(v19, v21, v70);

      *(v17 + 4) = v22;
      v23 = "No calling bundle ID found when confirming %{public}s";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v8, v64, v23, v17, 0xCu);
      sub_10000710C(v18);

      (*(v12 + 8))(v66, v68);
LABEL_21:
      type metadata accessor for InternalError(0);
      sub_1004B3E24(&qword_10077F900, type metadata accessor for InternalError, byte_1006B8E64);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_22;
    }

LABEL_20:

    (*(v15 + 8))(v14, v16);
    (*(v12 + 8))(v11, v13);
    goto LABEL_21;
  }

  if (qword_10077E538 != -1)
  {
    swift_once();
  }

  v2 = v1[9];
  v3 = qword_100784E30;
  v1[27] = qword_100784E30;
  *(swift_task_alloc() + 16) = v2;
  os_unfair_lock_lock((v3 + 24));
  sub_1004B3E6C(v70, (v3 + 16));
  v1[28] = 0;
  os_unfair_lock_unlock((v3 + 24));
  v24 = v70[0];
  v1[29] = v70[0];

  if (!v24)
  {
    v33 = v1[19];
    v34 = v1[16];
    v35 = v1[17];
    v36 = v1[9];
    static Logger.install.getter();
    (*(v35 + 16))(v33, v36, v34);
    v8 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    v38 = os_log_type_enabled(v8, v37);
    v11 = v1[24];
    v13 = v1[21];
    v12 = v1[22];
    v14 = v1[19];
    v16 = v1[16];
    v15 = v1[17];
    if (v38)
    {
      v68 = v1[21];
      v17 = swift_slowAlloc();
      v64 = v37;
      v18 = swift_slowAlloc();
      v70[0] = v18;
      *v17 = 136446210;
      sub_1004B3E24(&qword_100789F60, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v66 = v11;
      v41 = v40;
      (*(v15 + 8))(v14, v16);
      v42 = sub_1002346CC(v39, v41, v70);

      *(v17 + 4) = v42;
      v23 = "No pending batch install with ID: %{public}s found";
      goto LABEL_7;
    }

    goto LABEL_20;
  }

  v27 = *(v24 + 112);
  if (v27 >> 62)
  {
    v28 = _CocoaArrayWrapper.endIndex.getter();
    if (v28)
    {
LABEL_11:
      if ((v27 & 0xC000000000000001) != 0)
      {

        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return _swift_task_switch(v28, v25, v26);
        }

        v29 = *(v27 + 32);
      }

      v1[30] = v29;
      v30 = *(*(v29 + 112) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
      v31 = *(*v30 + class metadata base offset for ManagedBuffer + 16);
      v32 = (*(*v30 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v30 + v32));
      sub_10020A980(v30 + v31, (v1 + 2));
      os_unfair_lock_unlock((v30 + v32));

      sub_1001F0C48(&qword_10077E970, &qword_10069E920);
      if (swift_dynamicCast())
      {
        if (v1[7] == v1[10] && v1[11] == v1[8])
        {

LABEL_26:
          v28 = sub_1004B3440;
          v25 = v24;
          goto LABEL_28;
        }

        v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v45)
        {
          goto LABEL_26;
        }
      }

      v28 = sub_1004B3B88;
      v25 = v29;
LABEL_28:
      v26 = 0;

      return _swift_task_switch(v28, v25, v26);
    }
  }

  else
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28)
    {
      goto LABEL_11;
    }
  }

  v46 = v1[20];
  v47 = v1[16];
  v48 = v1[17];
  v49 = v1[9];
  static Logger.install.getter();
  (*(v48 + 16))(v46, v49, v47);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  v52 = os_log_type_enabled(v50, v51);
  v69 = v1[25];
  v53 = v1[21];
  v54 = v1[22];
  v55 = v1[20];
  v57 = v1[16];
  v56 = v1[17];
  if (v52)
  {
    v58 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v70[0] = v67;
    *v58 = 136446210;
    sub_1004B3E24(&qword_100789F60, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v65 = v53;
    v59 = dispatch thunk of CustomStringConvertible.description.getter();
    v63 = v51;
    v61 = v60;
    (*(v56 + 8))(v55, v57);
    v62 = sub_1002346CC(v59, v61, v70);

    *(v58 + 4) = v62;
    _os_log_impl(&_mh_execute_header, v50, v63, "Can't resume an empty batch: %{public}s", v58, 0xCu);
    sub_10000710C(v67);

    (*(v54 + 8))(v69, v65);
  }

  else
  {

    (*(v56 + 8))(v55, v57);
    (*(v54 + 8))(v69, v53);
  }

  type metadata accessor for InternalError(0);
  sub_1004B3E24(&qword_10077F900, type metadata accessor for InternalError, byte_1006B8E64);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

LABEL_22:

  v43 = v1[1];

  return v43();
}

uint64_t sub_1004B3440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 232) + 112);
  *(v3 + 248) = v4;
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v3 + 256) = v5;
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_17:
    *(v3 + 264) = *(v3 + 224);
    v5 = sub_1004B3608;
    v6 = 0;
    a3 = 0;

    return _swift_task_switch(v5, v6, a3);
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  *(v3 + 256) = v5;
  if (!v5)
  {
    goto LABEL_17;
  }

LABEL_3:
  v6 = *(v3 + 248);
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return _swift_task_switch(v5, v6, a3);
  }

  v7 = *(v6 + 32);

LABEL_7:
  *(v3 + 272) = v7;
  *(v3 + 280) = 1;
  v8 = *(v3 + 96);
  v9 = sub_10040022C();
  v10 = 0;
  v11 = 0;
  if ((v12 & 1) == 0 && v8)
  {
    if (*(*(v3 + 96) + 16) && (v13 = sub_10052BA64(v9), (v14 & 1) != 0))
    {
      v15 = (*(*(v3 + 96) + 56) + 16 * v13);
      v10 = *v15;
      v11 = v15[1];
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }
  }

  *(v3 + 288) = v11;
  v16 = swift_task_alloc();
  *(v3 + 296) = v16;
  *v16 = v3;
  v16[1] = sub_1004B3760;
  v17 = *(v3 + 112);
  v18 = *(v3 + 120);
  v19 = *(v3 + 104);
  v20 = *(v3 + 320);

  return sub_1004064CC(v20, v10, v11, v19, v17, v18);
}

void sub_1004B3608()
{
  v1 = v0[33];
  v2 = v0[27];
  v3 = v0[9];
  *(swift_task_alloc() + 16) = v3;
  os_unfair_lock_lock((v2 + 24));
  sub_1004B3EC0((v2 + 16));
  if (v1)
  {
    v4 = (v0[27] + 24);

    os_unfair_lock_unlock(v4);
  }

  else
  {
    os_unfair_lock_unlock((v0[27] + 24));

    v5 = v0[1];

    v5();
  }
}

uint64_t sub_1004B3760()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  v3 = *(v2 + 232);
  if (v0)
  {
    v4 = sub_1004B3A58;
  }

  else
  {
    v4 = sub_1004B38A4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1004B38A4()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 256);

  if (v1 == v2)
  {
    *(v0 + 264) = *(v0 + 304);
    v3 = sub_1004B3608;
    v5 = 0;
    v4 = 0;

    return _swift_task_switch(v3, v5, v4);
  }

  v6 = *(v0 + 280);
  v5 = *(v0 + 248);
  if ((v5 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v7 = v3;
  }

  else
  {
    if (v6 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_20:
      __break(1u);
      return _swift_task_switch(v3, v5, v4);
    }

    v7 = *(v5 + 8 * v6 + 32);
  }

  *(v0 + 272) = v7;
  *(v0 + 280) = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v8 = *(v0 + 96);
  v9 = sub_10040022C();
  v10 = 0;
  v11 = 0;
  if ((v12 & 1) == 0 && v8)
  {
    if (*(*(v0 + 96) + 16) && (v13 = sub_10052BA64(v9), (v14 & 1) != 0))
    {
      v15 = (*(*(v0 + 96) + 56) + 16 * v13);
      v10 = *v15;
      v11 = v15[1];
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }
  }

  *(v0 + 288) = v11;
  v16 = swift_task_alloc();
  *(v0 + 296) = v16;
  *v16 = v0;
  v16[1] = sub_1004B3760;
  v17 = *(v0 + 112);
  v18 = *(v0 + 120);
  v19 = *(v0 + 104);
  v20 = *(v0 + 320);

  return sub_1004064CC(v20, v10, v11, v19, v17, v18);
}

uint64_t sub_1004B3A58()
{

  return _swift_task_switch(sub_1004B3AC0, 0, 0);
}

uint64_t sub_1004B3AC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004B3B88()
{
  v1 = *(*(v0 + 240) + 160);
  *(v0 + 312) = v1;
  v2 = v1;

  return _swift_task_switch(sub_1004B3BFC, 0, 0);
}

uint64_t sub_1004B3BFC(uint64_t a1)
{
  v2 = v1[39];
  static Logger.install.getter();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[39];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Blocking attempt to confirm install started by another distributor.", v7, 0xCu);
    sub_1001F8084(v8);
  }

  v10 = v1[39];
  v11 = v1[26];
  v12 = v1[21];
  v13 = v1[22];

  (*(v13 + 8))(v11, v12);
  type metadata accessor for InternalError(0);
  sub_1004B3E24(&qword_10077F900, type metadata accessor for InternalError, byte_1006B8E64);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v14 = v1[1];

  return v14();
}

uint64_t sub_1004B3E24(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1004B3E6C@<X0>(uint64_t *a1@<X8>, unint64_t *a2@<X0>)
{
  v4 = *a2;
  v6[2] = *(v2 + 16);
  result = sub_10020B0C8(sub_1004B3EDC, v6, v4);
  *a1 = result;
  return result;
}

uint64_t sub_1004B3F1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_100783C40, &qword_1006AA2E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_1004B3FA8(uint64_t a1, uint64_t a2)
{
  v2 = String.count.getter();
  if (v2)
  {
    v3 = v2;
    result = sub_100526324(0, v2 & ~(v2 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      return result;
    }

    do
    {
      v6 = String.subscript.getter();
      v7 = v5;
      if (v6 == 45 && v5 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v7 = 0xE100000000000000;
        v6 = 43;
      }

      else if (v6 == 95 && v7 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v7 = 0xE100000000000000;
        v6 = 47;
      }

      v9 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];
      if (v9 >= v8 >> 1)
      {
        sub_100526324((v8 > 1), v9 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v9 + 1;
      v10 = &_swiftEmptyArrayStorage[2 * v9];
      v10[4] = v6;
      v10[5] = v7;
      String.index(after:)();
      --v3;
    }

    while (v3);
  }

  sub_1001F0C48(&qword_100784A78, &qword_1006ACD78);
  sub_10048E6B0();
  String.init<A>(_:)();

  v11 = String.count.getter();

  v12 = v11 & 3;
  if (v11 <= 0)
  {
    v12 = -(-v11 & 3);
  }

  if (v12)
  {
    v13._countAndFlagsBits = 61;
    v13._object = 0xE100000000000000;
    v14 = String.init(repeating:count:)(v13, 4 - v12);
    String.append(_:)(v14);
  }

  v15 = Data.init(base64Encoded:options:)();
  v17 = v16;
  sub_1001DFECC(v15, v16);

  if (v17 >> 60 != 15)
  {
    sub_10020B0E0(v15, v17);
  }

  return v15;
}

char *sub_1004B4220()
{
  Data.base64EncodedString(options:)(0);
  v0 = String.count.getter();
  if (v0)
  {
    v1 = v0;
    result = sub_100526324(0, v0 & ~(v0 >> 63), 0);
    if (v1 < 0)
    {
      __break(1u);
      return result;
    }

    do
    {
      v4 = String.subscript.getter();
      v5 = v3;
      if (v4 == 43 && v3 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v5 = 0xE100000000000000;
        v4 = 45;
      }

      else if (v4 == 47 && v5 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v5 = 0xE100000000000000;
        v4 = 95;
      }

      v7 = _swiftEmptyArrayStorage[2];
      v6 = _swiftEmptyArrayStorage[3];
      if (v7 >= v6 >> 1)
      {
        sub_100526324((v6 > 1), v7 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v7 + 1;
      v8 = &_swiftEmptyArrayStorage[2 * v7];
      v8[4] = v4;
      v8[5] = v5;
      String.index(after:)();
      --v1;
    }

    while (v1);
  }

  sub_1001F0C48(&qword_100784A78, &qword_1006ACD78);
  sub_10048E6B0();
  String.init<A>(_:)();
  v9 = String.Iterator.next()();
  object = v9.value._object;
  if (v9.value._object)
  {
    countAndFlagsBits = v9.value._countAndFlagsBits;
    do
    {
      if ((countAndFlagsBits != 61 || object != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v13._countAndFlagsBits = countAndFlagsBits;
        v13._object = object;
        String.append(_:)(v13);
      }

      v12 = String.Iterator.next()();
      countAndFlagsBits = v12.value._countAndFlagsBits;
      object = v12.value._object;
    }

    while (v12.value._object);
    object = 0;
  }

  return object;
}

void sub_1004B44BC(CGContext *a1, double a2, double a3)
{
  v4 = v3;
  v8 = type metadata accessor for SecureButtonTag.ButtonImagePlacement();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v109 = &v98 - v14;
  v15 = __chkstk_darwin(v13);
  v110 = &v98 - v16;
  __chkstk_darwin(v15);
  v18 = &v98 - v17;
  CGContextSaveGState(a1);
  v19 = *(v3 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12SecureButton_borderDrawing);
  v111 = a2;
  [v19 drawInContext:a1 atPoint:{a2, a3}];
  CGContextRestoreGState(a1);
  CGContextSaveGState(a1);
  v20 = *(v3 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12SecureButton_backgroundDrawing);
  v21 = *(v3 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12SecureButton_tag);
  SecureButtonTag.borderWidth.getter();
  v23 = v22;
  SecureButtonTag.borderWidth.getter();
  [v20 drawInContext:a1 atPoint:{v23, v24}];
  CGContextRestoreGState(a1);
  v25 = (v4 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12SecureButton_drawingPlan);
  v26 = *(v4 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12SecureButton_drawingPlan + 32);
  v108 = *(v4 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12SecureButton_drawingPlan + 40);
  v27 = *(v4 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12SecureButton_drawingPlan + 56);
  v28 = *(v4 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12SecureButton_drawingPlan + 24);
  v112 = v21;
  v29 = SecureButtonTag.foregroundColor.getter();
  v30 = v29;
  if (v28)
  {
    v31 = objc_allocWithZone(UISVectorGlyphDrawing);
    v32 = v28;
    v113 = [v31 initWithVectorGlyph:v32 tintColor:v30];
  }

  else
  {

    v113 = 0;
  }

  v33 = v25[3];
  v118 = v25[2];
  v119 = v33;
  v34 = v25[5];
  v120 = v25[4];
  v121 = v34;
  v35 = v25[1];
  v116 = *v25;
  v117 = v35;
  v36 = SecureButtonTag.foregroundColor.getter();
  v37 = sub_10036B1FC(v36);

  v38 = 0.0;
  v39 = 0.0;
  v40 = 0.0;
  v41 = 0.0;
  v42 = 0.0;
  if (v113)
  {
    [v113 alignmentRect];
    v41 = v43;
    v42 = v44;
  }

  v105 = v39;
  v106 = v40;
  v45 = 0.0;
  v46 = 0.0;
  v47 = 0.0;
  if (v37)
  {
    [v37 alignmentRect];
    v38 = v48;
    v45 = v49;
    v46 = v50;
  }

  v107 = v47;
  v102 = [*(v4 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12SecureButton_style) layoutDirection];
  if (!v113)
  {
    goto LABEL_28;
  }

  v100 = v113;
  CGContextSaveGState(a1);
  SecureButtonTag.imagePlacement.getter();
  v51 = (*(v9 + 88))(v18, v8);
  v52 = enum case for SecureButtonTag.ButtonImagePlacement.top(_:);
  v101 = v26;
  v104 = v42;
  v103 = v46;
  if (v51 == enum case for SecureButtonTag.ButtonImagePlacement.top(_:))
  {
    goto LABEL_10;
  }

  if (v51 == enum case for SecureButtonTag.ButtonImagePlacement.leading(_:))
  {
    v99 = v37;
    v98 = v4;
    v71 = enum case for SecureButtonTag.ButtonImagePlacement.trailing(_:);
  }

  else
  {
    if (v51 == enum case for SecureButtonTag.ButtonImagePlacement.bottom(_:))
    {
LABEL_10:
      v53 = v38;
      v54 = a3;
      v55 = v41;
      v56 = v45;
      v57 = v108;
      v58 = v110;
      SecureButtonTag.imagePlacement.getter();
      v59 = *(v9 + 104);
      v99 = v12;
      v60 = a1;
      v61 = v4;
      v62 = v109;
      v59(v109, v52, v8);
      sub_1004B5398();
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v63 = v37;
      v64 = *(v9 + 8);
      v65 = v62;
      v4 = v61;
      a1 = v60;
      v12 = v99;
      v64(v65, v8);
      v64(v58, v8);
      v37 = v63;
      v66 = v107 == 0.0 || v115 == v114;
      v67 = v107 - v57 * 0.5;
      v68 = -(v57 * 0.5);
      v45 = v56;
      v41 = v55;
      if (v66)
      {
        v69 = v68;
      }

      else
      {
        v69 = v67;
      }

      v70 = v55 * -0.5;
      goto LABEL_27;
    }

    v99 = v37;
    v98 = v4;
    v71 = v51;
    if (v51 != enum case for SecureButtonTag.ButtonImagePlacement.trailing(_:))
    {
      goto LABEL_49;
    }
  }

  v72 = v26 * 0.5;
  v73 = v110;
  SecureButtonTag.imagePlacement.getter();
  v74 = v109;
  (*(v9 + 104))(v109, v71, v8);
  sub_1004B5398();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v75 = *(v9 + 8);
  v75(v74, v8);
  v75(v73, v8);
  v53 = v38;
  if (v115 != v114)
  {
    v4 = v98;
    if ((v103 != 0.0) == (v102 == 0))
    {
      goto LABEL_23;
    }

LABEL_25:
    v54 = a3;
    v70 = v103 - v72;
    goto LABEL_26;
  }

  v4 = v98;
  if (!v102)
  {
    goto LABEL_25;
  }

LABEL_23:
  v54 = a3;
  v70 = -v72;
LABEL_26:
  v37 = v99;
  v69 = v104 * -0.5;
LABEL_27:
  v76 = v4 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12SecureButton_drawingSize;
  v77 = sub_1004B53F0(v27 * (v70 + *(v4 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12SecureButton_drawingSize) * 0.5 - v105));
  v78 = v77 / v27 + v111;
  v79 = sub_1004B53F0(v27 * (v69 + *(v76 + 8) * 0.5 - v106));
  a3 = v54;
  v80 = v100;
  [v100 drawInContext:a1 atPoint:{v78, v79 / v27 + v54}];
  CGContextRestoreGState(a1);

  v26 = v101;
  v38 = v53;
  v42 = v104;
  v46 = v103;
LABEL_28:
  if (!v37)
  {
LABEL_48:

    return;
  }

  CGContextSaveGState(a1);
  SecureButtonTag.imagePlacement.getter();
  v81 = (*(v9 + 88))(v12, v8);
  v82 = enum case for SecureButtonTag.ButtonImagePlacement.top(_:);
  if (v81 == enum case for SecureButtonTag.ButtonImagePlacement.top(_:))
  {
    goto LABEL_30;
  }

  if (v81 == enum case for SecureButtonTag.ButtonImagePlacement.leading(_:))
  {
    v99 = v37;
    v85 = v4;
    v91 = enum case for SecureButtonTag.ButtonImagePlacement.trailing(_:);
    goto LABEL_41;
  }

  if (v81 == enum case for SecureButtonTag.ButtonImagePlacement.bottom(_:))
  {
LABEL_30:
    v83 = v37;
    v84 = v110;
    SecureButtonTag.imagePlacement.getter();
    v85 = v4;
    v86 = v109;
    (*(v9 + 104))(v109, v82, v8);
    sub_1004B5398();
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v87 = *(v9 + 8);
    v87(v86, v8);
    v87(v84, v8);
    if (v42 != 0.0 && v115 == v114)
    {
      v89 = v42 + v108 * -0.5;
    }

    else
    {
      v89 = v108 * -0.5;
    }

    v90 = v46 * -0.5;
    goto LABEL_47;
  }

  v99 = v37;
  v85 = v4;
  v91 = v81;
  if (v81 == enum case for SecureButtonTag.ButtonImagePlacement.trailing(_:))
  {
LABEL_41:
    v92 = v110;
    SecureButtonTag.imagePlacement.getter();
    v93 = v109;
    (*(v9 + 104))(v109, v91, v8);
    sub_1004B5398();
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v94 = *(v9 + 8);
    v94(v93, v8);
    v94(v92, v8);
    if (v115 == v114)
    {
      v83 = v99;
      v95 = v107;
      if ((v41 == 0.0) == (v102 == 0))
      {
LABEL_43:
        v90 = v41 + v26 * -0.5;
LABEL_46:
        v89 = v95 * -0.5;
LABEL_47:
        v96 = v85 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12SecureButton_drawingSize;
        v97 = sub_1004B53F0(v27 * (v90 + *(v85 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12SecureButton_drawingSize) * 0.5 - v38));
        [v83 drawInContext:a1 atPoint:{v97 / v27 + v111, sub_1004B53F0(v27 * (v89 + *(v96 + 8) * 0.5 - v45)) / v27 + a3}];
        CGContextRestoreGState(a1);

        goto LABEL_48;
      }
    }

    else
    {
      v83 = v99;
      v95 = v107;
      if (!v102)
      {
        goto LABEL_43;
      }
    }

    v90 = v26 * -0.5;
    goto LABEL_46;
  }

LABEL_49:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1004B5060()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SecureButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1004B5158(void *a1, void *a2, char a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR____TtC28ManagedAppDistributionDaemon12SecureButton_style] = a1;
  *&v3[OBJC_IVAR____TtC28ManagedAppDistributionDaemon12SecureButton_tag] = a2;
  v3[OBJC_IVAR____TtC28ManagedAppDistributionDaemon12SecureButton_isRemote] = a3;
  sub_10036B3D4(a1, a2, v44);
  v5 = &v3[OBJC_IVAR____TtC28ManagedAppDistributionDaemon12SecureButton_drawingPlan];
  v6 = v44[3];
  *(v5 + 2) = v44[2];
  *(v5 + 3) = v6;
  v7 = v44[5];
  *(v5 + 4) = v44[4];
  *(v5 + 5) = v7;
  v8 = v44[1];
  *v5 = v44[0];
  *(v5 + 1) = v8;
  SecureButtonTag.size.getter();
  v9 = *(v5 + 10);
  if (v9 <= v10)
  {
    SecureButtonTag.size.getter();
    v11 = *(v5 + 11);
    if (v11 <= v12)
    {
      SecureButtonTag.size.getter();
      v9 = v13;
      v11 = v14;
    }

    else
    {
      v9 = *(v5 + 10);
    }
  }

  else
  {
    v11 = *(v5 + 11);
  }

  SecureButtonTag.cornerRadius.getter();
  v43[0] = v15;
  SecureButtonTag.cornerRadius.getter();
  v43[1] = v16;
  SecureButtonTag.cornerRadius.getter();
  v43[2] = v17;
  SecureButtonTag.cornerRadius.getter();
  v43[3] = v18;
  v19 = SecureButtonTag.borderColor.getter();
  v20 = [objc_allocWithZone(UISPathDrawing) initWithRoundedRectSize:v43 cornerRadii:v19 fillColor:{v9, v11}];

  *&v3[OBJC_IVAR____TtC28ManagedAppDistributionDaemon12SecureButton_borderDrawing] = v20;
  SecureButtonTag.cornerRadius.getter();
  v22 = v21;
  SecureButtonTag.borderWidth.getter();
  v42[0] = v22 - v23;
  SecureButtonTag.cornerRadius.getter();
  v25 = v24;
  SecureButtonTag.borderWidth.getter();
  v42[1] = v25 - v26;
  SecureButtonTag.cornerRadius.getter();
  v28 = v27;
  SecureButtonTag.borderWidth.getter();
  v42[2] = v28 - v29;
  SecureButtonTag.cornerRadius.getter();
  v31 = v30;
  SecureButtonTag.borderWidth.getter();
  v42[3] = v31 - v32;
  SecureButtonTag.borderWidth.getter();
  v34 = v9 - (v33 + v33);
  SecureButtonTag.borderWidth.getter();
  v36 = v11 - (v35 + v35);
  v37 = SecureButtonTag.backgroundColor.getter();
  v38 = [objc_allocWithZone(UISPathDrawing) initWithRoundedRectSize:v42 cornerRadii:v37 fillColor:{v34, v36}];

  *&v4[OBJC_IVAR____TtC28ManagedAppDistributionDaemon12SecureButton_backgroundDrawing] = v38;
  v39 = &v4[OBJC_IVAR____TtC28ManagedAppDistributionDaemon12SecureButton_drawingSize];
  *v39 = v9;
  v39[1] = v11;
  v41.receiver = v4;
  v41.super_class = type metadata accessor for SecureButton();
  return objc_msgSendSuper2(&v41, "init");
}

unint64_t sub_1004B5398()
{
  result = qword_100784FC0;
  if (!qword_100784FC0)
  {
    v3 = type metadata accessor for SecureButtonTag.ButtonImagePlacement();
    result = swift_getWitnessTable(&protocol conformance descriptor for SecureButtonTag.ButtonImagePlacement, v3, v0, v1);
    atomic_store(result, &qword_100784FC0);
  }

  return result;
}

uint64_t sub_1004B53F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39[1] = a2;
  v44 = a3;
  v43 = type metadata accessor for InternalError(0);
  v4 = __chkstk_darwin(v43);
  v40 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v41 = v39 - v7;
  __chkstk_darwin(v6);
  v42 = v39 - v8;
  v9 = type metadata accessor for MarketplaceKitError();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ManagedAppDistributionError();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 - 8);
  v19 = __chkstk_darwin(v15);
  v39[0] = v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v45 = v18;
  v21 = *(v18 + 16);
  v23 = v39 - v22;
  v21();
  v46 = v23;
  if (!swift_dynamicCast())
  {
    v25 = v44;
    if (swift_dynamicCast())
    {
      (*(v10 + 32))(v25, v12, v9);
      v24 = v45;
      return (*(v24 + 8))(v46, a1);
    }

    v26 = v42;
    if (!swift_dynamicCast())
    {
      if (swift_dynamicCast())
      {
        v31 = *(v10 + 104);
        if (!v47)
        {
          v31(v25, enum case for MarketplaceKitError.appNotInstalled(_:), v9);
          v24 = v45;
          return (*(v24 + 8))(v46, a1);
        }

        v24 = v45;
        v32 = enum case for MarketplaceKitError.unknown(_:);
LABEL_46:
        v31(v25, v32, v9);
        return (*(v24 + 8))(v46, a1);
      }

      v47 = 203;
      v33 = v39[0];
      (v21)(v39[0], v46, a1);
      if (_getErrorEmbeddedNSError<A>(_:)())
      {
        v24 = v45;
        v34 = a1;
        (*(v45 + 8))(v33, a1);
      }

      else
      {
        swift_allocError();
        v24 = v45;
        v34 = a1;
        (*(v45 + 32))(v36, v33, a1);
      }

      type metadata accessor for Code(0);
      sub_1004B5B28();
      v37 = static _ErrorCodeProtocol.~= infix(_:_:)();

      if (v37)
      {
        (*(v10 + 104))(v25, enum case for MarketplaceKitError.networkError(_:), v9);
        a1 = v34;
        return (*(v24 + 8))(v46, a1);
      }

      type metadata accessor for AMSError(0);
      a1 = v34;
      if (swift_dynamicCast())
      {
      }

      goto LABEL_44;
    }

    v27 = v41;
    sub_1004B5B80(v26, v41);
    v28 = v40;
    sub_1004B5BE4(v27, v40);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 16)
    {
      v24 = v45;
      if (EnumCaseMultiPayload <= 6)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_1004B5C48(v27);
          (*(v10 + 32))(v25, v28, v9);
          return (*(v24 + 8))(v46, a1);
        }

        if (EnumCaseMultiPayload == 2)
        {
          v35 = [objc_opt_self() bytes];
          sub_100223508();
          Measurement.init(value:unit:)();
          sub_1004B5C48(v27);
          v30 = &enum case for MarketplaceKitError.insufficientStorageSpace(_:);
          goto LABEL_45;
        }
      }

      else
      {
        switch(EnumCaseMultiPayload)
        {
          case 7:
            sub_1004B5C48(v27);
            sub_1004B5C48(v28);
            v30 = &enum case for MarketplaceKitError.missingInstallVerificationToken(_:);
            goto LABEL_45;
          case 15:
            sub_1004B5C48(v27);
            v30 = &enum case for MarketplaceKitError.installationRestricted(_:);
            goto LABEL_45;
          case 16:
            sub_1004B5C48(v27);
            v30 = &enum case for MarketplaceKitError.ratingRestricted(_:);
            goto LABEL_45;
        }
      }
    }

    else
    {
      v24 = v45;
      if (EnumCaseMultiPayload > 21)
      {
        switch(EnumCaseMultiPayload)
        {
          case 22:
            sub_1004B5C48(v27);
            v30 = &enum case for MarketplaceKitError.invalidManifest(_:);
            goto LABEL_45;
          case 24:
            sub_1004B5C48(v27);
            v30 = &enum case for MarketplaceKitError.featureUnavailable(_:);
            goto LABEL_45;
          case 29:
            sub_1004B5C48(v27);
            v30 = &enum case for MarketplaceKitError.networkError(_:);
            goto LABEL_45;
        }
      }

      else
      {
        switch(EnumCaseMultiPayload)
        {
          case 17:
            sub_1004B5C48(v27);
            v30 = &enum case for MarketplaceKitError.appNotInstalled(_:);
            goto LABEL_45;
          case 18:
            v28 = v27;
LABEL_43:
            sub_1004B5C48(v28);
LABEL_44:
            v30 = &enum case for MarketplaceKitError.unknown(_:);
            goto LABEL_45;
          case 20:
            sub_1004B5C48(v27);
            v30 = &enum case for MarketplaceKitError.noSupportedVariant(_:);
LABEL_45:
            v32 = *v30;
            v31 = *(v10 + 104);
            goto LABEL_46;
        }
      }
    }

    sub_1004B5C48(v27);
    goto LABEL_43;
  }

  (*(v10 + 104))(v44, enum case for MarketplaceKitError.unknown(_:), v9);
  (*(v14 + 8))(v17, v13);
  v24 = v45;
  return (*(v24 + 8))(v46, a1);
}

unint64_t sub_1004B5B28()
{
  result = qword_10077E800;
  if (!qword_10077E800)
  {
    type metadata accessor for Code(255);
    result = swift_getWitnessTable("%-\n", v3, v0, v1);
    atomic_store(result, &qword_10077E800);
  }

  return result;
}

uint64_t sub_1004B5B80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004B5BE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004B5C48(uint64_t a1)
{
  v2 = type metadata accessor for InternalError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1004B5CA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100526304(0, v1, 0);
    v3 = a1 + 64;
    v4 = _HashTable.startBucket.getter();
    v5 = 0;
    v22 = *(a1 + 36);
    v20 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_22;
      }

      if (v22 != *(a1 + 36))
      {
        goto LABEL_23;
      }

      v8 = (*(a1 + 48) + 16 * v4);
      v9 = v8[1];
      v21 = *v8;
      v10 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];

      if (v10 >= v11 >> 1)
      {
        sub_100526304((v11 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      v12 = &_swiftEmptyArrayStorage[2 * v10];
      v12[4] = v21;
      v12[5] = v9;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_24;
      }

      v3 = a1 + 64;
      v13 = *(a1 + 64 + 8 * v7);
      if ((v13 & (1 << v4)) == 0)
      {
        goto LABEL_25;
      }

      if (v22 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v14 = v13 & (-2 << (v4 & 0x3F));
      if (v14)
      {
        v6 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v7 << 6;
        v16 = v7 + 1;
        v17 = (a1 + 72 + 8 * v7);
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            sub_100323C00(v4, v22, 0);
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        sub_100323C00(v4, v22, 0);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v20)
      {
        return;
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
  }
}

uint64_t sub_1004B5EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[123] = v3;
  v4[122] = a3;
  v4[121] = a2;
  v4[120] = a1;
  sub_1001F0C48(&qword_10077F380, &qword_1006A96D0);
  v4[124] = swift_task_alloc();
  v4[125] = type metadata accessor for InternalError(0);
  v4[126] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0, &unk_10069E8F0);
  v4[127] = swift_task_alloc();
  v5 = type metadata accessor for Platform();
  v4[128] = v5;
  v4[129] = *(v5 - 8);
  v4[130] = swift_task_alloc();
  v4[131] = swift_task_alloc();
  sub_1001F0C48(&qword_10077F360, &unk_10069FA80);
  v4[132] = swift_task_alloc();
  sub_1001F0C48(&qword_10077F368, &unk_1006AD8B0);
  v4[133] = swift_task_alloc();
  v6 = type metadata accessor for MediaAPIApp(0);
  v4[134] = v6;
  v4[135] = *(v6 - 8);
  v4[136] = swift_task_alloc();
  v4[137] = type metadata accessor for ManagedAppInstallationTask(0);
  v4[138] = swift_task_alloc();
  v4[139] = swift_task_alloc();
  v4[140] = swift_task_alloc();
  v4[141] = swift_task_alloc();
  v7 = type metadata accessor for DDMPurchaseMethod();
  v4[142] = v7;
  v4[143] = *(v7 - 8);
  v4[144] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809D0, &unk_1006A2420);
  v4[145] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[146] = v8;
  v4[147] = *(v8 - 8);
  v4[148] = swift_task_alloc();
  v4[149] = swift_task_alloc();
  v4[150] = swift_task_alloc();
  v9 = type metadata accessor for ProgressCache.Progress(0);
  v4[151] = v9;
  v4[152] = *(v9 - 8);
  v4[153] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v4[154] = v10;
  v4[155] = *(v10 - 8);
  v4[156] = swift_task_alloc();
  v4[157] = swift_task_alloc();
  v4[158] = swift_task_alloc();

  return _swift_task_switch(sub_1004B6358, 0, 0);
}

uint64_t sub_1004B6358(uint64_t a1)
{
  v2 = *(v1 + 984);
  v3 = *(v1 + 976);
  UUID.init()();
  v4 = *(*sub_100006D8C(v3, v3[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_progressCache);
  *(v1 + 1272) = v4;
  *(v1 + 1280) = *(v2 + 48);
  *(v1 + 1288) = *(v2 + 56);
  *(v1 + 1296) = *(v2 + 8);
  *(v1 + 193) = *(v2 + 16);

  return _swift_task_switch(sub_1004B6418, v4, 0);
}

uint64_t sub_1004B6418()
{
  v53 = v0;
  v1 = *(v0 + 193);
  v2 = *(v0 + 1296);
  v3 = *(v0 + 1288);
  v4 = *(v0 + 1280);
  v49 = *(v0 + 1256);
  v51 = *(v0 + 1264);
  v5 = *(v0 + 1240);
  v46 = *(v0 + 1232);
  v6 = *(v0 + 1224);
  v7 = *(*(v0 + 1208) + 24);
  v8 = enum case for AppState.waiting(_:);
  v9 = type metadata accessor for AppState();
  (*(*(v9 - 8) + 104))(v6 + v7, v8, v9);
  *v6 = v4;
  *(v6 + 8) = v3;
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 48) = -1;
  *(v6 + 56) = 0;
  *(v6 + 64) = 1;

  static Logger.progress.getter();
  v10 = v49;
  v50 = *(v5 + 16);
  v50(v10, v51, v46);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v41 = *(v0 + 1280);
    v13 = *(v0 + 1256);
    v14 = *(v0 + 1240);
    v15 = *(v0 + 1232);
    v42 = *(v0 + 1288);
    v43 = *(v0 + 1176);
    v44 = *(v0 + 1168);
    v47 = *(v0 + 1200);
    v16 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v16 = 136446466;
    sub_1004C20B4(&qword_100789F60, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v20 = *(v14 + 8);
    v20(v13, v15);
    v21 = sub_1002346CC(v17, v19, &v52);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2082;
    *(v16 + 14) = sub_1002346CC(v41, v42, &v52);
    _os_log_impl(&_mh_execute_header, v11, v12, "[ProgressCache] Starting progress for %{public}s (%{public}s)", v16, 0x16u);
    swift_arrayDestroy();

    v22 = *(v43 + 8);
    v22(v47, v44);
  }

  else
  {
    v23 = *(v0 + 1256);
    v24 = *(v0 + 1240);
    v25 = *(v0 + 1232);
    v26 = *(v0 + 1200);
    v27 = *(v0 + 1176);
    v28 = *(v0 + 1168);

    v20 = *(v24 + 8);
    v20(v23, v25);
    v22 = *(v27 + 8);
    v22(v26, v28);
  }

  *(v0 + 1312) = v22;
  *(v0 + 1304) = v20;
  v29 = *(v0 + 1248);
  v45 = *(v0 + 1264);
  v48 = *(v0 + 1232);
  v30 = *(v0 + 1224);
  v31 = *(v0 + 1216);
  v32 = *(v0 + 1208);
  v33 = *(v0 + 1160);
  (v50)(v29);
  sub_1004C1F84(v30, v33, type metadata accessor for ProgressCache.Progress);
  (*(v31 + 56))(v33, 0, 1, v32);
  swift_beginAccess();
  sub_1005B7A24(v33, v29);
  swift_endAccess();
  sub_1001F0C48(&unk_100780A70, &unk_1006AD8C0);
  v34 = (sub_1001F0C48(&qword_100786FA0, &unk_1006A2430) - 8);
  v35 = (*(*v34 + 80) + 32) & ~*(*v34 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_10069E680;
  v37 = v36 + v35;
  v38 = v34[14];
  v50(v37, v45, v48);
  sub_1004C1F84(v30, v37 + v38, type metadata accessor for ProgressCache.Progress);
  v39 = sub_100528E5C(v36);
  swift_setDeallocating();
  sub_1000032A8(v37, &qword_100786FA0, &unk_1006A2430);
  swift_deallocClassInstance();
  sub_1003868C0(v39);

  sub_1004C2054(v30, type metadata accessor for ProgressCache.Progress);

  return _swift_task_switch(sub_1004B694C, 0, 0);
}

uint64_t sub_1004B694C()
{
  v67 = v0;
  v1 = *(v0 + 1152);
  v2 = *(v0 + 1144);
  v3 = *(v0 + 1136);
  v4 = *(v0 + 984);
  v5 = type metadata accessor for DDMDeclaration(0);
  (*(v2 + 16))(v1, v4 + v5[25], v3);
  v6 = (*(v2 + 88))(v1, v3);
  if (v6 == enum case for DDMPurchaseMethod.volumePurchaseProgram(_:))
  {
    v7 = *(v0 + 1128);
    v8 = *(v0 + 1120);
    v9 = *(v0 + 984);
    static Logger.vpp.getter();
    sub_1004C1F84(v9, v7, type metadata accessor for ManagedAppInstallationTask);
    sub_1004C1F84(v9, v8, type metadata accessor for ManagedAppInstallationTask);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 1312);
    v14 = *(v0 + 1192);
    v15 = *(v0 + 1168);
    v16 = *(v0 + 1128);
    v17 = *(v0 + 1120);
    if (v12)
    {
      v18 = *(v0 + 1096);
      v62 = *(v0 + 1192);
      v19 = swift_slowAlloc();
      v61 = v15;
      v20 = swift_slowAlloc();
      v63 = v5;
      v21 = swift_slowAlloc();
      v66 = v21;
      *v19 = 138412546;
      v60 = v13;
      v22 = *(v16 + *(v18 + 28));
      sub_1004C2054(v16, type metadata accessor for ManagedAppInstallationTask);
      *(v19 + 4) = v22;
      *v20 = v22;
      *(v19 + 12) = 2082;
      v23 = (v17 + v63[13]);
      v24 = *v23;
      v25 = v23[1];

      sub_1004C2054(v17, type metadata accessor for ManagedAppInstallationTask);
      v26 = sub_1002346CC(v24, v25, &v66);

      *(v19 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v10, v11, "[%@] Requesting metadata for installation of %{public}s", v19, 0x16u);
      sub_1000032A8(v20, &qword_10077F920, &qword_10069E6A0);

      sub_10000710C(v21);
      v5 = v63;

      v60(v62, v61);
    }

    else
    {

      sub_1004C2054(v17, type metadata accessor for ManagedAppInstallationTask);
      sub_1004C2054(v16, type metadata accessor for ManagedAppInstallationTask);
      v13(v14, v15);
    }

    v41 = *(v0 + 1056);
    v42 = *(v0 + 984);
    v43 = *(v0 + 976);
    sub_10020A980(*(v0 + 960), v0 + 200);
    v44 = (*sub_100006D8C(v43, v43[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device);
    v45 = *(v44 + 95);
    v46 = v44[5];
    v47 = v44[3];
    *(v0 + 424) = v44[4];
    *(v0 + 440) = v46;
    *(v0 + 455) = v45;
    *(v0 + 408) = v47;
    v48 = *v44;
    v49 = v44[2];
    *(v0 + 376) = v44[1];
    *(v0 + 392) = v49;
    *(v0 + 360) = v48;
    memmove((v0 + 240), v44, 0x6FuLL);
    *(v0 + 352) = 0;
    sub_10020A7AC(v0 + 360, v0 + 472);
    v50 = sub_1004DA6EC();
    v52 = v51;
    v54 = v53;
    *(v0 + 1320) = v50;
    *(v0 + 1328) = v51;
    *(v0 + 194) = v53;
    v55 = v5[24];
    v56 = type metadata accessor for Locale.Language();
    (*(*(v56 - 8) + 56))(v41, 1, 1, v56);
    v57 = swift_task_alloc();
    *(v0 + 1336) = v57;
    *v57 = v0;
    v57[1] = sub_1004B6FEC;
    v58 = *(v0 + 1064);
    v59 = *(v0 + 1056);

    return sub_1003726D4(v58, v50, v52, v54 & 1, v42 + v55, v59);
  }

  else if (v6 == enum case for DDMPurchaseMethod.manifest(_:))
  {
    v27 = *(v0 + 1016);
    sub_100005934(*(v0 + 984) + v5[20], v27, &unk_1007809F0, &unk_10069E8F0);
    v28 = type metadata accessor for URL();
    *(v0 + 1376) = v28;
    v29 = *(v28 - 8);
    *(v0 + 1384) = v29;
    result = (*(v29 + 48))(v27, 1, v28);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v31 = *(v0 + 976);
      v32 = *(*(v0 + 984) + *(*(v0 + 1096) + 28));
      v64 = *(v31 + 24);
      v33 = *(v31 + 24);
      v65 = *(v31 + 40);
      v34 = sub_100006D8C(v31, v33);
      *(v0 + 832) = v64;
      *(v0 + 848) = v65;
      v35 = sub_10020A748((v0 + 808));
      (*(*(v33 - 8) + 16))(v35, v34, v33);
      v36 = swift_task_alloc();
      *(v0 + 1392) = v36;
      *v36 = v0;
      v36[1] = sub_1004B7DA4;
      v37 = *(v0 + 1264);
      v38 = *(v0 + 1016);
      v39 = *(v0 + 968);
      v40 = *(v0 + 960);

      return sub_1004BA44C(v38, v39, v37, v40, v32, v0 + 808);
    }
  }

  else
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  return result;
}

uint64_t sub_1004B6FEC()
{
  v2 = *v1;
  *(v2 + 1344) = v0;

  v3 = *(v2 + 1328);
  v4 = *(v2 + 1320);
  v5 = *(v2 + 194);
  sub_1000032A8(*(v2 + 1056), &qword_10077F360, &unk_10069FA80);
  sub_1001DFEBC(v4, v3, v5 & 1);
  if (v0)
  {
    v6 = sub_1004B81C8;
  }

  else
  {
    v6 = sub_1004B7174;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1004B7174()
{
  v121 = v0;
  v1 = *(v0 + 1064);
  if ((*(*(v0 + 1080) + 48))(v1, 1, *(v0 + 1072)) == 1)
  {
    sub_1000032A8(v1, &qword_10077F368, &unk_1006AD8B0);
    sub_1004C20B4(&qword_10077F900, type metadata accessor for InternalError, byte_1006B8E64);
    swift_allocError();
    v3 = v2;
    v4 = sub_1004DA6EC();
    v6 = v5;
    v8 = v7;
    v9 = StoreAppIdentifier.description.getter();
    v11 = v10;
    sub_1001DFEBC(v4, v6, v8 & 1);
    *v3 = v9;
    v3[1] = v11;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_5;
  }

  v12 = *(v0 + 1344);
  v13 = *(v0 + 1048);
  v14 = *(v0 + 1040);
  v15 = *(v0 + 976);
  sub_1004C1FEC(v1, *(v0 + 1088), type metadata accessor for MediaAPIApp);
  v16 = (*sub_100006D8C(v15, v15[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device);
  v18 = v16[4];
  v17 = v16[5];
  v19 = v16[3];
  *(v0 + 679) = *(v16 + 95);
  *(v0 + 648) = v18;
  *(v0 + 664) = v17;
  *(v0 + 632) = v19;
  v21 = v16[1];
  v20 = v16[2];
  *(v0 + 584) = *v16;
  *(v0 + 600) = v21;
  *(v0 + 616) = v20;
  sub_10020A7AC(v0 + 584, v0 + 696);
  static Platform.iOS.getter();
  v22 = sub_1004FF904();
  sub_10020A92C(v0 + 584);
  sub_100373074(v13, v14, v22, v109);
  v23 = v12;
  v24 = *(v0 + 1040);
  v25 = *(v0 + 1032);
  v26 = *(v0 + 1024);
  if (!v23)
  {
    v43 = *(&v109[0] + 1);
    v44 = v109[1];
    v45 = v109[2];
    v46 = v109[3];
    v47 = v110;
    v48 = v111;
    v49 = v112;
    v50 = v113;
    v51 = v114;
    v52 = v115;
    v53 = v116;
    v54 = v117;
    v55 = v118;
    v56 = v119;
    v57 = v120;
    v58 = *(v0 + 1048);
    *(v0 + 16) = *&v109[0];
    *(v0 + 24) = v43;
    *(v0 + 32) = v44;
    *(v0 + 48) = v45;
    *(v0 + 64) = v46;
    *(v0 + 80) = v47;
    *(v0 + 88) = v48;
    *(v0 + 96) = v49;
    *(v0 + 112) = v50;
    *(v0 + 128) = v51;
    *(v0 + 136) = v52;
    *(v0 + 144) = v53;
    *(v0 + 152) = v54;
    *(v0 + 168) = v55;
    *(v0 + 176) = v56;
    *(v0 + 192) = v57;

    v59 = *(v25 + 8);
    v59(v24, v26);
    result = (v59)(v58, v26);
    v60 = *(v0 + 128);
    v61 = *(v60 + 16);
    if (v61)
    {
      v62 = 0;
      v63 = (v60 + 48);
      while (v62 < *(v60 + 16))
      {
        if ((*v63 & 1) == 0)
        {

LABEL_23:
          v100 = *(v0 + 1088);
          sub_10026E6B8(v0 + 16);
          v101 = objc_allocWithZone(AMSBuyParams);
          v102 = String._bridgeToObjectiveC()();

          v103 = [v101 initWithString:v102];

          v33 = sub_100507E64(v103);
          sub_1004C2054(v100, type metadata accessor for MediaAPIApp);
          sub_100262C04(v0 + 200);
          goto LABEL_6;
        }

        v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v64)
        {
          goto LABEL_23;
        }

        ++v62;

        v63 += 24;
        if (v61 == v62)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

LABEL_15:
    v65 = *(v0 + 1112);
    v66 = *(v0 + 1104);
    v67 = *(v0 + 1088);
    v68 = *(v0 + 984);
    sub_10026E6B8(v0 + 16);
    sub_1004C2054(v67, type metadata accessor for MediaAPIApp);
    sub_100262C04(v0 + 200);
    static Logger.vpp.getter();
    sub_1004C1F84(v68, v65, type metadata accessor for ManagedAppInstallationTask);
    sub_1004C1F84(v68, v66, type metadata accessor for ManagedAppInstallationTask);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = *(v0 + 1112);
      v72 = *(v0 + 1104);
      v73 = *(v0 + 1096);
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *&v109[0] = v76;
      *v74 = 138412546;
      v77 = *(v71 + *(v73 + 28));
      result = sub_1004C2054(v71, type metadata accessor for ManagedAppInstallationTask);
      *(v74 + 4) = v77;
      *v75 = v77;
      *(v74 + 12) = 2082;
      if (*(v72 + 16))
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v108 = *(v0 + 1312);
      v104 = *(v0 + 1168);
      v106 = *(v0 + 1184);
      v78 = *(v0 + 1104);
      *(v0 + 952) = *(v78 + 8);
      v79 = dispatch thunk of CustomStringConvertible.description.getter();
      v81 = v80;
      sub_1004C2054(v78, type metadata accessor for ManagedAppInstallationTask);
      v82 = sub_1002346CC(v79, v81, v109);

      *(v74 + 14) = v82;
      _os_log_impl(&_mh_execute_header, v69, v70, "[%@] Unable to purchase '%{public}s' with missing metadata", v74, 0x16u);
      sub_1000032A8(v75, &qword_10077F920, &qword_10069E6A0);

      sub_10000710C(v76);

      v108(v106, v104);
    }

    else
    {
      v83 = *(v0 + 1312);
      v84 = *(v0 + 1184);
      v85 = *(v0 + 1168);
      v86 = *(v0 + 1112);
      v87 = *(v0 + 1104);

      sub_1004C2054(v87, type metadata accessor for ManagedAppInstallationTask);
      sub_1004C2054(v86, type metadata accessor for ManagedAppInstallationTask);
      v83(v84, v85);
    }

    v88 = type metadata accessor for ManagedAppDistributionError();
    sub_1004C20B4(&qword_10077FD80, &type metadata accessor for ManagedAppDistributionError, &protocol conformance descriptor for ManagedAppDistributionError);
    v89 = swift_allocError();
    (*(*(v88 - 8) + 104))(v90, enum case for ManagedAppDistributionError.unrecoverableError(_:), v88);
    swift_willThrow();
    *(v0 + 1408) = v89;
    v91 = *(v0 + 976);
    v92 = *(*sub_100006D8C(v91, v91[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_progressCache);
    *(v0 + 1416) = v92;
    v93 = v91[3];
    v94 = v91[5];
    v95 = v91[6];
    v96 = v91[7];
    v97 = sub_100006D8C(v91, v93);

    v98 = swift_task_alloc();
    *(v0 + 1424) = v98;
    *v98 = v0;
    v98[1] = sub_1004B7EEC;
    v99 = *(v0 + 1264);

    return sub_100387224(v99, v97, v92, v93, v94, v95, v96);
  }

  v27 = *(v0 + 1088);

  (*(v25 + 8))(v24, v26);
  sub_1004C2054(v27, type metadata accessor for MediaAPIApp);
LABEL_5:
  sub_100262C04(v0 + 200);
  v28 = sub_1004DA6EC();
  v30 = v29;
  v32 = v31;
  v33 = sub_100508448(v28, v29, v31 & 1);

  sub_1001DFEBC(v28, v30, v32 & 1);
LABEL_6:
  *(v0 + 1352) = v33;
  v34 = *(v0 + 976);
  v105 = *(v34 + 24);
  v35 = *(v34 + 24);
  v107 = *(v34 + 40);
  v36 = sub_100006D8C(v34, v35);
  *(v0 + 888) = v105;
  *(v0 + 904) = v107;
  v37 = sub_10020A748((v0 + 864));
  (*(*(v35 - 8) + 16))(v37, v36, v35);
  v38 = swift_task_alloc();
  *(v0 + 1360) = v38;
  *v38 = v0;
  v38[1] = sub_1004B7AC4;
  v39 = *(v0 + 1264);
  v40 = *(v0 + 968);
  v41 = *(v0 + 960);

  return sub_1004B8EB4(v33, v40, v39, v41, v0 + 864);
}

uint64_t sub_1004B7AC4()
{
  v2 = *v1;
  *(*v1 + 1368) = v0;

  if (v0)
  {
    v3 = sub_1004B8334;
  }

  else
  {
    sub_10000710C((v2 + 864));
    v3 = sub_1004B7BF0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004B7BF0()
{
  (*(v0 + 1304))(*(v0 + 1264), *(v0 + 1232));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004B7DA4()
{
  v2 = *v1;
  *(*v1 + 1400) = v0;

  if (v0)
  {
    v3 = sub_1004B8D0C;
  }

  else
  {
    v4 = v2[173];
    v5 = v2[172];
    v6 = v2[127];
    sub_10000710C(v2 + 101);
    (*(v4 + 8))(v6, v5);
    v3 = sub_1004B7BF0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004B7EEC()
{

  return _swift_task_switch(sub_1004B8004, 0, 0);
}

uint64_t sub_1004B8004(uint64_t a1)
{
  v2 = v1[163];
  v3 = v1[158];
  v4 = v1[154];
  swift_willThrow();
  v2(v3, v4);

  v5 = v1[1];

  return v5();
}

uint64_t sub_1004B81C8()
{
  sub_100262C04(v0 + 200);
  v1 = sub_1004DA6EC();
  v3 = v2;
  v5 = v4;
  v6 = sub_100508448(v1, v2, v4 & 1);

  sub_1001DFEBC(v1, v3, v5 & 1);
  *(v0 + 1352) = v6;
  v7 = *(v0 + 976);
  v16 = *(v7 + 24);
  v8 = *(v7 + 24);
  v17 = *(v7 + 40);
  v9 = sub_100006D8C(v7, v8);
  *(v0 + 888) = v16;
  *(v0 + 904) = v17;
  v10 = sub_10020A748((v0 + 864));
  (*(*(v8 - 8) + 16))(v10, v9, v8);
  v11 = swift_task_alloc();
  *(v0 + 1360) = v11;
  *v11 = v0;
  v11[1] = sub_1004B7AC4;
  v12 = *(v0 + 1264);
  v13 = *(v0 + 968);
  v14 = *(v0 + 960);

  return sub_1004B8EB4(v6, v13, v12, v14, v0 + 864);
}

uint64_t sub_1004B8334()
{
  v1 = *(v0 + 1368);
  sub_10000710C((v0 + 864));
  *(v0 + 944) = v1;
  swift_errorRetain();
  sub_1001F0C48(&unk_10077F940, &qword_10069D7E0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 1008);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1004C2054(v2, type metadata accessor for InternalError);
    }

    else
    {
      v3 = type metadata accessor for ManagedAppDistributionError();
      *(v0 + 1432) = v3;
      v4 = *(v3 - 8);
      v5 = v4;
      *(v0 + 1440) = v4;
      v6 = (*(v4 + 88))(v2, v3);
      *(v0 + 196) = v6;
      if (v6 == enum case for ManagedAppDistributionError.licenseNotFound(_:))
      {
        v7 = *(v0 + 1096);
        v8 = *(v0 + 992);
        v9 = *(v0 + 984);
        v10 = *(v0 + 976);

        *(v0 + 1448) = *(*sub_100006D8C(v10, v10[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStatus);
        v11 = enum case for ManagedAppStatus.Reason.licenseNotFound(_:);
        v12 = type metadata accessor for ManagedAppStatus.Reason();
        v13 = *(v12 - 8);
        (*(v13 + 104))(v8, v11, v12);
        (*(v13 + 56))(v8, 0, 1, v12);
        v14 = *(v9 + *(v7 + 28));

        v15 = swift_task_alloc();
        *(v0 + 1456) = v15;
        *v15 = v0;
        v15[1] = sub_1004B86D0;
        v16 = *(v0 + 992);
        v17 = *(v0 + 984);
        v18 = v14;
        goto LABEL_8;
      }

      (*(v5 + 8))(*(v0 + 1008), v3);
    }
  }

  v19 = *(v0 + 1096);
  v20 = *(v0 + 992);
  v21 = *(v0 + 984);
  v22 = *(v0 + 976);

  *(v0 + 1464) = *(*sub_100006D8C(v22, v22[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStatus);
  v23 = type metadata accessor for ManagedAppStatus.Reason();
  (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
  v24 = *(v21 + *(v19 + 28));

  v25 = swift_task_alloc();
  *(v0 + 1472) = v25;
  *v25 = v0;
  v25[1] = sub_1004B89DC;
  v16 = *(v0 + 992);
  v17 = *(v0 + 984);
  v18 = v24;
LABEL_8:

  return sub_10030B39C(v17, v16, 1, v18);
}

uint64_t sub_1004B86D0()
{
  v1 = *(*v0 + 992);

  sub_1000032A8(v1, &qword_10077F380, &qword_1006A96D0);

  return _swift_task_switch(sub_1004B8814, 0, 0);
}

uint64_t sub_1004B8814()
{
  v1 = *(v0 + 196);
  v2 = *(v0 + 1440);
  v3 = *(v0 + 1432);
  sub_1004C20B4(&qword_10077F900, type metadata accessor for InternalError, byte_1006B8E64);
  v4 = swift_allocError();
  (*(v2 + 104))(v5, v1, v3);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  *(v0 + 1408) = v4;
  v6 = *(v0 + 976);
  v7 = *(*sub_100006D8C(v6, v6[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_progressCache);
  *(v0 + 1416) = v7;
  v8 = v6[3];
  v9 = v6[5];
  v10 = v6[6];
  v11 = v6[7];
  v12 = sub_100006D8C(v6, v8);

  v13 = swift_task_alloc();
  *(v0 + 1424) = v13;
  *v13 = v0;
  v13[1] = sub_1004B7EEC;
  v14 = *(v0 + 1264);

  return sub_100387224(v14, v12, v7, v8, v9, v10, v11);
}

uint64_t sub_1004B89DC()
{
  v1 = *(*v0 + 992);

  sub_1000032A8(v1, &qword_10077F380, &qword_1006A96D0);

  return _swift_task_switch(sub_1004B8B20, 0, 0);
}

uint64_t sub_1004B8B20()
{
  sub_1004C20B4(&qword_10077F900, type metadata accessor for InternalError, byte_1006B8E64);
  v1 = swift_allocError();
  v3 = v2;
  v4 = enum case for ManagedAppDistributionError.networkError(_:);
  v5 = type metadata accessor for ManagedAppDistributionError();
  (*(*(v5 - 8) + 104))(v3, v4, v5);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v0[176] = v1;
  v6 = v0[122];
  v7 = *(*sub_100006D8C(v6, v6[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_progressCache);
  v0[177] = v7;
  v8 = v6[3];
  v9 = v6[5];
  v10 = v6[6];
  v11 = v6[7];
  v12 = sub_100006D8C(v6, v8);

  v13 = swift_task_alloc();
  v0[178] = v13;
  *v13 = v0;
  v13[1] = sub_1004B7EEC;
  v14 = v0[158];

  return sub_100387224(v14, v12, v7, v8, v9, v10, v11);
}

uint64_t sub_1004B8D0C()
{
  v1 = v0[173];
  v2 = v0[172];
  v3 = v0[127];
  sub_10000710C(v0 + 101);
  (*(v1 + 8))(v3, v2);
  v0[176] = v0[175];
  v4 = v0[122];
  v5 = *(*sub_100006D8C(v4, v4[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_progressCache);
  v0[177] = v5;
  v6 = v4[3];
  v7 = v4[5];
  v8 = v4[6];
  v9 = v4[7];
  v10 = sub_100006D8C(v4, v6);

  v11 = swift_task_alloc();
  v0[178] = v11;
  *v11 = v0;
  v11[1] = sub_1004B7EEC;
  v12 = v0[158];

  return sub_100387224(v12, v10, v5, v6, v7, v8, v9);
}

uint64_t type metadata accessor for ManagedAppInstallationTask(uint64_t a1)
{
  result = qword_100785040;
  if (!qword_100785040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004B8EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  type metadata accessor for AppInstall(0);
  v6[8] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = type metadata accessor for ManagedAppInstallationTask(0);
  v6[13] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v6[14] = v8;
  v6[15] = *(v8 - 8);
  v6[16] = swift_task_alloc();
  v9 = type metadata accessor for ManagedAppDeclaration.InstallBehavior.LicenseEnum();
  v6[17] = v9;
  v6[18] = *(v9 - 8);
  v6[19] = swift_task_alloc();
  v6[20] = sub_1001F0C48(&qword_100784FD0, &unk_1006AD8E0);
  v6[21] = swift_task_alloc();
  sub_1001F0C48(&qword_10077F340, &unk_10069FA60);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v10 = type metadata accessor for AppInstallRequestType();
  v6[24] = v10;
  v6[25] = *(v10 - 8);
  v6[26] = swift_task_alloc();

  return _swift_task_switch(sub_1004B916C, 0, 0);
}

uint64_t sub_1004B916C()
{
  v1 = v0[23];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[17];
  v5 = v0[18];
  v6 = v0[6];
  v7 = v0[7];
  v8 = type metadata accessor for DDMDeclaration(0);
  v9 = (v7 + *(v8 + 88));
  v0[27] = *v9;
  v0[28] = v9[1];
  v10 = *(*sub_100006D8C(v6, v6[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStatus);
  v0[29] = v10;
  v11 = *(v8 + 72);
  (*(v5 + 104))(v1, enum case for ManagedAppDeclaration.InstallBehavior.LicenseEnum.user(_:), v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v12 = v7 + v11;
  v13 = *(v3 + 48);
  sub_100005934(v12, v2, &qword_10077F340, &unk_10069FA60);
  sub_100005934(v1, v2 + v13, &qword_10077F340, &unk_10069FA60);
  v14 = *(v5 + 48);
  if (v14(v2, 1, v4) == 1)
  {
    v15 = v0[23];
    v16 = v0[17];

    sub_1000032A8(v15, &qword_10077F340, &unk_10069FA60);
    v17 = v10;
    if (v14(v2 + v13, 1, v16) == 1)
    {
      sub_1000032A8(v0[21], &qword_10077F340, &unk_10069FA60);
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v18 = v0[17];
  sub_100005934(v0[21], v0[22], &qword_10077F340, &unk_10069FA60);
  v19 = v14(v2 + v13, 1, v18);
  v20 = v0[22];
  v21 = v0[23];
  if (v19 == 1)
  {
    v23 = v0[17];
    v22 = v0[18];
    v17 = v10;

    sub_1000032A8(v21, &qword_10077F340, &unk_10069FA60);
    (*(v22 + 8))(v20, v23);
LABEL_6:
    sub_1000032A8(v0[21], &qword_100784FD0, &unk_1006AD8E0);
    goto LABEL_7;
  }

  v56 = v0[21];
  v29 = v0[18];
  v28 = v0[19];
  v30 = v0[17];
  (*(v29 + 32))(v28, v2 + v13, v30);
  sub_1004C20B4(&qword_100784FD8, &type metadata accessor for ManagedAppDeclaration.InstallBehavior.LicenseEnum, &protocol conformance descriptor for ManagedAppDeclaration.InstallBehavior.LicenseEnum);

  v31 = dispatch thunk of static Equatable.== infix(_:_:)();
  v32 = *(v29 + 8);
  v32(v28, v30);
  sub_1000032A8(v21, &qword_10077F340, &unk_10069FA60);
  v32(v20, v30);
  v17 = v10;
  sub_1000032A8(v56, &qword_10077F340, &unk_10069FA60);
  if (v31)
  {
LABEL_10:
    v24 = v0[24];
    v25 = *(v0[25] + 104);
    v26 = v0[26];
    if (v0[3])
    {
      v27 = &enum case for AppInstallRequestType.userVPPUpdate(_:);
    }

    else
    {
      v27 = &enum case for AppInstallRequestType.userVPP(_:);
    }

    goto LABEL_14;
  }

LABEL_7:
  v24 = v0[24];
  v25 = *(v0[25] + 104);
  v26 = v0[26];
  if (v0[3])
  {
    v27 = &enum case for AppInstallRequestType.deviceVPPUpdate(_:);
  }

  else
  {
    v27 = &enum case for AppInstallRequestType.deviceVPP(_:);
  }

LABEL_14:
  v25(v26, *v27, v24);
  v33 = v0[12];
  v34 = v0[7];
  if (*(v34 + *(v33 + 36)) == 1)
  {
    v35 = v0[13];
    static Logger.vpp.getter();
    sub_1004C1F84(v34, v35, type metadata accessor for ManagedAppInstallationTask);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    v38 = os_log_type_enabled(v36, v37);
    v39 = v0[13];
    if (v38)
    {
      v40 = v0[12];
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      v43 = *(v39 + *(v40 + 28));
      sub_1004C2054(v39, type metadata accessor for ManagedAppInstallationTask);
      *(v41 + 4) = v43;
      *v42 = v43;
      _os_log_impl(&_mh_execute_header, v36, v37, "[%@] User did not initiate installation, asking for consent before continuing", v41, 0xCu);
      sub_1000032A8(v42, &qword_10077F920, &qword_10069E6A0);
    }

    else
    {

      sub_1004C2054(v39, type metadata accessor for ManagedAppInstallationTask);
    }

    v51 = v0[12];
    v52 = v0[7];
    (*(v0[15] + 8))(v0[16], v0[14]);
    v53 = *(v52 + *(v51 + 28));
    v54 = swift_task_alloc();
    v0[30] = v54;
    *v54 = v0;
    v54[1] = sub_1004B97FC;
    v55 = v0[7];

    return sub_100627DE4(v55, v17, 1, v53);
  }

  else
  {
    v0[31] = *(*sub_100006D8C(v0[6], *(v0[6] + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_scheduler);
    v44 = *(v34 + 48);
    v45 = *(v34 + 56);
    v46 = *(v34 + *(v33 + 24));

    v47 = swift_task_alloc();
    v0[32] = v47;
    *v47 = v0;
    v47[1] = sub_1004B9B50;
    v48 = v0[11];
    v49 = v0[4];

    return sub_10054ADF8(v48, v44, v45, 0, 2, v49, v46);
  }
}

uint64_t sub_1004B97FC(char a1)
{
  *(*v1 + 320) = a1;

  return _swift_task_switch(sub_1004B98FC, 0, 0);
}

uint64_t sub_1004B98FC()
{
  if (*(v0 + 320))
  {
    type metadata accessor for InternalError(0);
    sub_1004C20B4(&qword_10077F900, type metadata accessor for InternalError, byte_1006B8E64);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v1 = *(v0 + 96);
    v2 = *(v0 + 56);
    *(v0 + 248) = *(*sub_100006D8C(*(v0 + 48), *(*(v0 + 48) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_scheduler);
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = *(v2 + *(v1 + 24));

    v6 = swift_task_alloc();
    *(v0 + 256) = v6;
    *v6 = v0;
    v6[1] = sub_1004B9B50;
    v7 = *(v0 + 88);
    v8 = *(v0 + 32);

    return sub_10054ADF8(v7, v3, v4, 0, 2, v8, v5);
  }
}

uint64_t sub_1004B9B50()
{
  v2 = *v1;
  v2[33] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1004B9E6C, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[34] = v3;
    *v3 = v2;
    v3[1] = sub_1004B9CDC;
    v4 = v2[27];
    v5 = v2[28];
    v6 = v2[11];
    v8 = v2[7];
    v7 = v2[8];
    v10 = v2[5];
    v9 = v2[6];
    v11 = v2[2];

    return sub_1004BE810(v7, v6, v8, v11, v4, v5, v9, v10);
  }
}

uint64_t sub_1004B9CDC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 280) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1004BA0AC, 0, 0);
  }

  else
  {
    v4[36] = a1;
    v6 = swift_task_alloc();
    v4[37] = v6;
    *v6 = v5;
    v6[1] = sub_1004B9F7C;
    v7 = v4[8];

    return sub_10054CDE0(v7, a1);
  }
}

uint64_t sub_1004B9E6C()
{

  (*(v0[25] + 8))(v0[26], v0[24]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1004B9F7C()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1004BA220;
  }

  else
  {
    v2 = sub_1004BA0D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004BA0D0()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[8];
  v7 = v0[9];

  sub_1004C2054(v6, type metadata accessor for AppInstall);
  (*(v5 + 8))(v4, v7);

  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1004BA220()
{
  sub_1004C2054(v0[8], type metadata accessor for AppInstall);
  v0[39] = v0[38];
  v1 = v0[31];

  return _swift_task_switch(sub_1004BA2A4, v1, 0);
}

uint64_t sub_1004BA2A4()
{
  sub_10054C8D0(*(v0 + 88));

  return _swift_task_switch(sub_1004BA310, 0, 0);
}

uint64_t sub_1004BA310(uint64_t a1)
{
  v3 = v1[10];
  v2 = v1[11];
  v4 = v1[9];
  swift_willThrow();

  (*(v3 + 8))(v2, v4);

  (*(v1[25] + 8))(v1[26], v1[24]);

  v5 = v1[1];

  return v5();
}

uint64_t sub_1004BA44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[194] = v6;
  v7[193] = a6;
  v7[192] = a5;
  v7[191] = a4;
  v7[190] = a3;
  v7[189] = a2;
  v7[188] = a1;
  v8 = type metadata accessor for AppPackage(0);
  v7[195] = v8;
  v7[196] = *(v8 - 8);
  v7[197] = swift_task_alloc();
  v9 = type metadata accessor for LogKey.Prefix();
  v7[198] = v9;
  v7[199] = *(v9 - 8);
  v7[200] = swift_task_alloc();
  v10 = type metadata accessor for AppInstallRequestType();
  v7[201] = v10;
  v7[202] = *(v10 - 8);
  v7[203] = swift_task_alloc();
  sub_1001F0C48(&qword_10077E958, &qword_10069FC00);
  v7[204] = swift_task_alloc();
  v7[205] = swift_task_alloc();
  sub_1001F0C48(&unk_100780A00, &unk_10069E8E0);
  v7[206] = swift_task_alloc();
  v7[207] = swift_task_alloc();
  v11 = type metadata accessor for CellularIdentity();
  v7[208] = v11;
  v7[209] = *(v11 - 8);
  v7[210] = swift_task_alloc();
  v7[211] = type metadata accessor for EvaluatorDownload(0);
  v7[212] = swift_task_alloc();
  v7[213] = type metadata accessor for AppInstall(0);
  v7[214] = swift_task_alloc();
  v7[215] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v7[216] = v12;
  v7[217] = *(v12 - 8);
  v7[218] = swift_task_alloc();
  v7[219] = swift_task_alloc();
  v7[220] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0, &unk_10069E8F0);
  v7[221] = swift_task_alloc();
  v7[222] = swift_task_alloc();
  v7[223] = swift_task_alloc();
  v7[224] = swift_task_alloc();
  v7[225] = swift_task_alloc();
  sub_1001F0C48(&qword_10077FE28, &unk_1006A30C0);
  v7[226] = swift_task_alloc();
  v13 = type metadata accessor for Platform();
  v7[227] = v13;
  v7[228] = *(v13 - 8);
  v7[229] = swift_task_alloc();
  v7[230] = swift_task_alloc();
  v14 = type metadata accessor for Logger();
  v7[231] = v14;
  v7[232] = *(v14 - 8);
  v7[233] = swift_task_alloc();
  v7[234] = swift_task_alloc();
  v7[235] = swift_task_alloc();
  v7[236] = swift_task_alloc();
  v15 = type metadata accessor for URL();
  v7[237] = v15;
  v7[238] = *(v15 - 8);
  v7[239] = swift_task_alloc();
  v7[240] = swift_task_alloc();
  v7[241] = swift_task_alloc();
  v7[242] = swift_task_alloc();
  v7[243] = type metadata accessor for EnterpriseApp(0);
  v7[244] = swift_task_alloc();

  return _swift_task_switch(sub_1004BA9D8, 0, 0);
}

uint64_t sub_1004BA9D8()
{
  v1 = v0[242];
  v2 = v0[238];
  v3 = v0[237];
  v4 = v0[194];
  v5 = v0[193];
  v6 = v0[192];
  v7 = v0[188];
  v0[245] = *(*sub_100006D8C(v5, v5[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStatus);
  v0[246] = *(*sub_100006D8C(v5, v5[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_scheduler);
  v8 = *(v2 + 16);
  v0[247] = v8;
  v0[248] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, v7, v3);
  v9 = type metadata accessor for ManagedAppInstallationTask(0);
  v0[249] = v9;
  v10 = *(v4 + *(v9 + 20));

  v11 = v6;
  v12 = swift_task_alloc();
  v0[250] = v12;
  *v12 = v0;
  v12[1] = sub_1004BAB54;
  v13 = v0[244];
  v14 = v0[242];
  v15 = v0[192];

  return sub_10035562C(v13, v14, v10, v15);
}

uint64_t sub_1004BAB54()
{
  *(*v1 + 2008) = v0;

  if (v0)
  {
    v2 = sub_1004BE5DC;
  }

  else
  {
    v2 = sub_1004BAC68;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004BAC68(uint64_t a1)
{
  if (*(*(v1 + 1552) + *(*(v1 + 1992) + 36)) == 1)
  {
    v2 = *(v1 + 1536);
    static Logger.vpp.getter();
    v3 = v2;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v1 + 1536);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v6;
      *v8 = v6;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v4, v5, "[%@] User did not initiate installation, asking for consent before continuing", v7, 0xCu);
      sub_1000032A8(v8, &qword_10077F920, &qword_10069E6A0);
    }

    v10 = *(v1 + 1888);
    v11 = *(v1 + 1856);
    v12 = *(v1 + 1848);

    v13 = *(v11 + 8);
    *(v1 + 2016) = v13;
    *(v1 + 2024) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v10, v12);
    v14 = swift_task_alloc();
    *(v1 + 2032) = v14;
    *v14 = v1;
    v14[1] = sub_1004BB760;
    v15 = *(v1 + 1960);
    v16 = *(v1 + 1552);
    v17 = *(v1 + 1536);

    return sub_100627DE4(v16, v15, 1, v17);
  }

  v19 = (*sub_100006D8C(*(v1 + 1544), *(*(v1 + 1544) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device);
  v21 = v19[4];
  v20 = v19[5];
  v22 = v19[3];
  *(v1 + 567) = *(v19 + 95);
  *(v1 + 536) = v21;
  *(v1 + 552) = v20;
  *(v1 + 520) = v22;
  v24 = v19[1];
  v23 = v19[2];
  *(v1 + 472) = *v19;
  *(v1 + 488) = v24;
  *(v1 + 504) = v23;
  sub_10020A7AC(v1 + 472, v1 + 696);
  sub_100355DAC((v1 + 472), 3, v1 + 168);
  sub_10020A92C(v1 + 472);
  v25 = *(v1 + 280);
  *(v1 + 112) = *(v1 + 264);
  *(v1 + 128) = v25;
  *(v1 + 144) = *(v1 + 296);
  *(v1 + 160) = *(v1 + 312);
  v26 = *(v1 + 216);
  *(v1 + 48) = *(v1 + 200);
  *(v1 + 64) = v26;
  v27 = *(v1 + 248);
  *(v1 + 80) = *(v1 + 232);
  *(v1 + 96) = v27;
  v28 = *(v1 + 184);
  *(v1 + 16) = *(v1 + 168);
  *(v1 + 32) = v28;
  if (sub_100350308(v1 + 16) == 1)
  {
    type metadata accessor for EnterpriseIngestTask.Error(0);
    sub_1004C20B4(&qword_100780F08, type metadata accessor for EnterpriseIngestTask.Error, byte_1006A310C);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_19:
    v77 = *(v1 + 1536);
    static Logger.vpp.getter();
    v78 = v77;
    swift_errorRetain();
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = *(v1 + 1536);
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *v82 = 138412546;
      *(v82 + 4) = v81;
      *v83 = v81;
      *(v82 + 12) = 2114;
      v84 = v81;
      swift_errorRetain();
      v85 = _swift_stdlib_bridgeErrorToNSError();
      *(v82 + 14) = v85;
      v83[1] = v85;
      _os_log_impl(&_mh_execute_header, v79, v80, "[%@] Failed to enqueue enterprise manifest install: %{public}@", v82, 0x16u);
      sub_1001F0C48(&qword_10077F920, &qword_10069E6A0);
      swift_arrayDestroy();
    }

    v86 = *(v1 + 1952);
    v87 = *(v1 + 1864);
    v88 = *(v1 + 1856);
    v89 = *(v1 + 1848);

    (*(v88 + 8))(v87, v89);
    swift_willThrow();

    sub_1004C2054(v86, type metadata accessor for EnterpriseApp);

    v90 = *(v1 + 8);

    return v90();
  }

  v29 = *(v1 + 1952);
  v30 = *(v1 + 1944);
  v31 = *(v1 + 1824);
  v32 = *(v1 + 1816);
  v33 = *(v1 + 1808);
  v34 = *(v1 + 96);
  *(v1 + 384) = *(v1 + 80);
  *(v1 + 400) = v34;
  v35 = *(v1 + 64);
  *(v1 + 352) = *(v1 + 48);
  *(v1 + 368) = v35;
  *(v1 + 464) = *(v1 + 160);
  v36 = *(v1 + 144);
  *(v1 + 432) = *(v1 + 128);
  *(v1 + 448) = v36;
  *(v1 + 416) = *(v1 + 112);
  v37 = *(v1 + 32);
  *(v1 + 320) = *(v1 + 16);
  *(v1 + 336) = v37;
  v38 = *(v1 + 320);
  v39 = *(v1 + 328);
  *(v1 + 2040) = v38;
  *(v1 + 2048) = v39;
  v40 = *(v1 + 336);
  v41 = *(v1 + 344);
  *(v1 + 2056) = v40;
  *(v1 + 2064) = v41;
  v43 = *(v1 + 352);
  v42 = *(v1 + 360);
  *(v1 + 2072) = v43;
  v93 = v42;
  *(v1 + 2080) = v42;
  v92 = *(v1 + 368);
  *(v1 + 2088) = v92;
  v44 = *(v1 + 120);
  *(v1 + 952) = *(v1 + 104);
  *(v1 + 968) = v44;
  v45 = *(v1 + 152);
  *(v1 + 984) = *(v1 + 136);
  *(v1 + 1000) = v45;
  v46 = *(v1 + 88);
  *(v1 + 920) = *(v1 + 72);
  *(v1 + 936) = v46;
  sub_100005934(v29 + *(v30 + 20), v33, &qword_10077FE28, &unk_1006A30C0);
  if ((*(v31 + 48))(v33, 1, v32) == 1)
  {
    v91 = v43;
    v47 = v41;
    v48 = v40;
    v49 = v39;
    v50 = v38;
    sub_1000032A8(*(v1 + 1808), &qword_10077FE28, &unk_1006A30C0);
  }

  else
  {
    (*(*(v1 + 1824) + 32))(*(v1 + 1840), *(v1 + 1808), *(v1 + 1816));
    type metadata accessor for DDMDeclaration(0);
    sub_1004C20B4(&qword_100780F10, &type metadata accessor for Platform, &protocol conformance descriptor for Platform);
    v51 = dispatch thunk of static Equatable.== infix(_:_:)();
    v52 = *(v1 + 1824);
    v53 = *(v1 + 1816);
    if ((v51 & 1) == 0)
    {
      v75 = v38;
      v76 = *(v1 + 1840);
      sub_100271104(v75, v39, v40, v41, v43, v93, v92);
      sub_100350510(v1 + 376);
      type metadata accessor for EnterpriseIngestTask.Error(0);
      sub_1004C20B4(&qword_100780F08, type metadata accessor for EnterpriseIngestTask.Error, byte_1006A310C);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v52 + 8))(v76, v53);
      goto LABEL_19;
    }

    v91 = v43;
    v47 = v41;
    v48 = v40;
    v49 = v39;
    v50 = v38;
    (*(v52 + 8))(*(v1 + 1840), v53);
  }

  v54 = *(v1 + 1904);
  v55 = *(v1 + 1896);
  v56 = *(v1 + 1800);
  v58 = *(v1 + 448);
  v57 = *(v1 + 456);
  URL.init(string:)();
  if ((*(v54 + 48))(v56, 1, v55) == 1)
  {
    v59 = *(v1 + 1800);
    sub_100271104(v50, v49, v48, v47, v91, v93, v92);
    sub_1000032A8(v59, &unk_1007809F0, &unk_10069E8F0);
    type metadata accessor for EnterpriseIngestTask.Error(0);
    sub_1004C20B4(&qword_100780F08, type metadata accessor for EnterpriseIngestTask.Error, byte_1006A310C);
    swift_allocError();
    *v60 = v58;
    v60[1] = v57;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_100350510(v1 + 376);
    goto LABEL_19;
  }

  v61 = *(v1 + 1992);
  v62 = *(v1 + 1952);
  v63 = *(v1 + 1928);
  v64 = *(v1 + 1904);
  v65 = *(v1 + 1896);
  v66 = *(v1 + 1800);
  v67 = *(v1 + 1552);
  v68 = *(v64 + 32);
  *(v1 + 2096) = v68;
  *(v1 + 2104) = (v64 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v68(v63, v66, v65);
  v69 = *v62;
  *(v1 + 2112) = *v62;
  v70 = v62[1];
  *(v1 + 2120) = v70;
  v71 = *(v67 + *(v61 + 24));
  *(v1 + 695) = v71;
  v72 = swift_task_alloc();
  *(v1 + 2128) = v72;
  *v72 = v1;
  v72[1] = sub_1004BC30C;
  v73 = *(v1 + 1760);
  v74 = *(v1 + 1520);

  return sub_10054ADF8(v73, v69, v70, 0, 2, v74, v71);
}

uint64_t sub_1004BB760(char a1)
{
  *(*v1 + 583) = a1;

  return _swift_task_switch(sub_1004BB860, 0, 0);
}

uint64_t sub_1004BB860(uint64_t a1)
{
  if (*(v1 + 583))
  {
    v12 = *(v1 + 1536);
    static Logger.vpp.getter();
    v13 = v12;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v1 + 1536);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v16;
      *v18 = v16;
      v19 = v16;
      _os_log_impl(&_mh_execute_header, v14, v15, "[%@] Consent was not granted", v17, 0xCu);
      sub_1000032A8(v18, &qword_10077F920, &qword_10069E6A0);
    }

    v20 = *(v1 + 2016);
    v21 = *(v1 + 1952);
    v22 = *(v1 + 1880);
    v23 = *(v1 + 1848);

    v20(v22, v23);
    type metadata accessor for InternalError(0);
    sub_1004C20B4(&qword_10077F900, type metadata accessor for InternalError, byte_1006B8E64);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    goto LABEL_20;
  }

  v2 = (*sub_100006D8C(*(v1 + 1544), *(*(v1 + 1544) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device);
  v4 = v2[4];
  v3 = v2[5];
  v5 = v2[3];
  *(v1 + 567) = *(v2 + 95);
  *(v1 + 536) = v4;
  *(v1 + 552) = v3;
  *(v1 + 520) = v5;
  v7 = v2[1];
  v6 = v2[2];
  *(v1 + 472) = *v2;
  *(v1 + 488) = v7;
  *(v1 + 504) = v6;
  sub_10020A7AC(v1 + 472, v1 + 696);
  sub_100355DAC((v1 + 472), 3, v1 + 168);
  sub_10020A92C(v1 + 472);
  v8 = *(v1 + 280);
  *(v1 + 112) = *(v1 + 264);
  *(v1 + 128) = v8;
  *(v1 + 144) = *(v1 + 296);
  *(v1 + 160) = *(v1 + 312);
  v9 = *(v1 + 216);
  *(v1 + 48) = *(v1 + 200);
  *(v1 + 64) = v9;
  v10 = *(v1 + 248);
  *(v1 + 80) = *(v1 + 232);
  *(v1 + 96) = v10;
  v11 = *(v1 + 184);
  *(v1 + 16) = *(v1 + 168);
  *(v1 + 32) = v11;
  if (sub_100350308(v1 + 16) == 1)
  {
    type metadata accessor for EnterpriseIngestTask.Error(0);
    sub_1004C20B4(&qword_100780F08, type metadata accessor for EnterpriseIngestTask.Error, byte_1006A310C);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_17:
    v73 = *(v1 + 1536);
    static Logger.vpp.getter();
    v74 = v73;
    swift_errorRetain();
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = *(v1 + 1536);
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *v78 = 138412546;
      *(v78 + 4) = v77;
      *v79 = v77;
      *(v78 + 12) = 2114;
      v80 = v77;
      swift_errorRetain();
      v81 = _swift_stdlib_bridgeErrorToNSError();
      *(v78 + 14) = v81;
      v79[1] = v81;
      _os_log_impl(&_mh_execute_header, v75, v76, "[%@] Failed to enqueue enterprise manifest install: %{public}@", v78, 0x16u);
      sub_1001F0C48(&qword_10077F920, &qword_10069E6A0);
      swift_arrayDestroy();
    }

    v21 = *(v1 + 1952);
    v82 = *(v1 + 1864);
    v83 = *(v1 + 1856);
    v84 = *(v1 + 1848);

    (*(v83 + 8))(v82, v84);
LABEL_20:
    swift_willThrow();

    sub_1004C2054(v21, type metadata accessor for EnterpriseApp);

    v85 = *(v1 + 8);

    return v85();
  }

  v24 = *(v1 + 1952);
  v25 = *(v1 + 1944);
  v26 = *(v1 + 1824);
  v27 = *(v1 + 1816);
  v28 = *(v1 + 1808);
  v29 = *(v1 + 96);
  *(v1 + 384) = *(v1 + 80);
  *(v1 + 400) = v29;
  v30 = *(v1 + 64);
  *(v1 + 352) = *(v1 + 48);
  *(v1 + 368) = v30;
  *(v1 + 464) = *(v1 + 160);
  v31 = *(v1 + 144);
  *(v1 + 432) = *(v1 + 128);
  *(v1 + 448) = v31;
  *(v1 + 416) = *(v1 + 112);
  v32 = *(v1 + 32);
  *(v1 + 320) = *(v1 + 16);
  *(v1 + 336) = v32;
  v33 = *(v1 + 320);
  v34 = *(v1 + 328);
  *(v1 + 2040) = v33;
  *(v1 + 2048) = v34;
  v35 = *(v1 + 336);
  v36 = *(v1 + 344);
  *(v1 + 2056) = v35;
  *(v1 + 2064) = v36;
  v38 = *(v1 + 352);
  v37 = *(v1 + 360);
  *(v1 + 2072) = v38;
  v88 = v37;
  *(v1 + 2080) = v37;
  v87 = *(v1 + 368);
  *(v1 + 2088) = v87;
  v39 = *(v1 + 120);
  *(v1 + 952) = *(v1 + 104);
  *(v1 + 968) = v39;
  v40 = *(v1 + 152);
  *(v1 + 984) = *(v1 + 136);
  *(v1 + 1000) = v40;
  v41 = *(v1 + 88);
  *(v1 + 920) = *(v1 + 72);
  *(v1 + 936) = v41;
  sub_100005934(v24 + *(v25 + 20), v28, &qword_10077FE28, &unk_1006A30C0);
  if ((*(v26 + 48))(v28, 1, v27) == 1)
  {
    v86 = v38;
    v42 = v36;
    v43 = v35;
    v44 = v34;
    v45 = v33;
    sub_1000032A8(*(v1 + 1808), &qword_10077FE28, &unk_1006A30C0);
  }

  else
  {
    (*(*(v1 + 1824) + 32))(*(v1 + 1840), *(v1 + 1808), *(v1 + 1816));
    type metadata accessor for DDMDeclaration(0);
    sub_1004C20B4(&qword_100780F10, &type metadata accessor for Platform, &protocol conformance descriptor for Platform);
    v46 = dispatch thunk of static Equatable.== infix(_:_:)();
    v47 = *(v1 + 1824);
    v48 = *(v1 + 1816);
    if ((v46 & 1) == 0)
    {
      v71 = v33;
      v72 = *(v1 + 1840);
      sub_100271104(v71, v34, v35, v36, v38, v88, v87);
      sub_100350510(v1 + 376);
      type metadata accessor for EnterpriseIngestTask.Error(0);
      sub_1004C20B4(&qword_100780F08, type metadata accessor for EnterpriseIngestTask.Error, byte_1006A310C);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v47 + 8))(v72, v48);
      goto LABEL_17;
    }

    v86 = v38;
    v42 = v36;
    v43 = v35;
    v44 = v34;
    v45 = v33;
    (*(v47 + 8))(*(v1 + 1840), v48);
  }

  v49 = *(v1 + 1904);
  v50 = *(v1 + 1896);
  v51 = *(v1 + 1800);
  v53 = *(v1 + 448);
  v52 = *(v1 + 456);
  URL.init(string:)();
  if ((*(v49 + 48))(v51, 1, v50) == 1)
  {
    v54 = *(v1 + 1800);
    sub_100271104(v45, v44, v43, v42, v86, v88, v87);
    sub_1000032A8(v54, &unk_1007809F0, &unk_10069E8F0);
    type metadata accessor for EnterpriseIngestTask.Error(0);
    sub_1004C20B4(&qword_100780F08, type metadata accessor for EnterpriseIngestTask.Error, byte_1006A310C);
    swift_allocError();
    *v55 = v53;
    v55[1] = v52;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_100350510(v1 + 376);
    goto LABEL_17;
  }

  v56 = *(v1 + 1992);
  v57 = *(v1 + 1952);
  v58 = *(v1 + 1928);
  v59 = *(v1 + 1904);
  v60 = *(v1 + 1896);
  v61 = *(v1 + 1800);
  v62 = *(v1 + 1552);
  v63 = *(v59 + 32);
  *(v1 + 2096) = v63;
  *(v1 + 2104) = (v59 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v63(v58, v61, v60);
  v64 = *v57;
  *(v1 + 2112) = *v57;
  v65 = v57[1];
  *(v1 + 2120) = v65;
  v66 = *(v62 + *(v56 + 24));
  *(v1 + 695) = v66;
  v67 = swift_task_alloc();
  *(v1 + 2128) = v67;
  *v67 = v1;
  v67[1] = sub_1004BC30C;
  v68 = *(v1 + 1760);
  v69 = *(v1 + 1520);

  return sub_10054ADF8(v68, v64, v65, 0, 2, v69, v66);
}

uint64_t sub_1004BC30C()
{
  v2 = *v1;
  *(*v1 + 2136) = v0;

  if (v0)
  {
    v3 = v2[261];
    v4 = v2[260];
    v5 = v2[259];
    v6 = v2[258];
    v7 = v2[257];
    v8 = v2[256];
    v9 = v2[255];
    sub_100350510((v2 + 47));
    sub_100271104(v9, v8, v7, v6, v5, v4, v3);
    v10 = sub_1004BDAA4;
  }

  else
  {
    v10 = sub_1004BC47C;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_1004BC47C(uint64_t a1)
{
  v56 = v1;
  v2 = *(v1 + 1760);
  v3 = *(v1 + 1752);
  v4 = *(v1 + 1736);
  v5 = *(v1 + 1728);
  v6 = *(v1 + 1536);
  static Logger.vpp.getter();
  v7 = *(v4 + 16);
  *(v1 + 2144) = v7;
  *(v1 + 2152) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v3, v2, v5);
  v8 = v6;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v1 + 1872);
  v13 = *(v1 + 1856);
  v14 = *(v1 + 1848);
  v15 = *(v1 + 1752);
  v16 = *(v1 + 1736);
  v17 = *(v1 + 1728);
  if (v11)
  {
    v54 = *(v1 + 1848);
    v18 = *(v1 + 1536);
    v19 = swift_slowAlloc();
    v51 = v10;
    v20 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v55 = v52;
    *v19 = 138412546;
    *(v19 + 4) = v18;
    *v20 = v18;
    *(v19 + 12) = 2082;
    sub_1004C20B4(&qword_100789F60, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v53 = v12;
    v21 = v18;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    (*(v16 + 8))(v15, v17);
    v25 = sub_1002346CC(v22, v24, &v55);

    *(v19 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v9, v51, "[%@] Enqueuing enterprise manifest install '%{public}s", v19, 0x16u);
    sub_1000032A8(v20, &qword_10077F920, &qword_10069E6A0);

    sub_10000710C(v52);

    (*(v13 + 8))(v53, v54);
  }

  else
  {

    (*(v16 + 8))(v15, v17);
    (*(v13 + 8))(v12, v14);
  }

  v26 = *(v1 + 1952);
  v27 = *(v1 + 1904);
  v28 = *(v1 + 1896);
  v29 = *(v1 + 1696);
  v30 = *(v1 + 1688);
  v31 = *(v1 + 1552);
  v32 = *(v1 + 1536);
  v33 = (*(v1 + 695) & 1) == 0;
  v34 = *(v1 + 1528);
  (*(v1 + 1976))(v29, *(v1 + 1928), v28);
  v35 = *(v27 + 56);
  *(v1 + 2160) = v35;
  *(v1 + 2168) = (v27 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v35(v29, 0, 1, v28);
  v36 = *(v26 + 40);
  *(v1 + 2176) = v36;
  v37 = *(v26 + 48);
  *(v1 + 2184) = v37;
  v38 = type metadata accessor for DDMDeclaration(0);
  *(v1 + 2192) = v38;
  v39 = *(v31 + *(v38 + 44));
  v40 = v30[9];
  v41 = (v29 + v30[5]);
  *v41 = v36;
  v41[1] = v37;
  *(v29 + v30[6]) = 0;
  *(v29 + v30[7]) = 2;
  *(v29 + v40) = v39;
  *(v29 + v30[10]) = v33;
  *(v29 + v30[8]) = v32;
  swift_bridgeObjectRetain_n();
  v42 = v32;
  static CellularIdentity.current()();
  v43 = v34[3];
  v44 = v34[4];
  v45 = sub_100006D8C(v34, v43);
  v46 = swift_task_alloc();
  *(v1 + 2200) = v46;
  *v46 = v1;
  v46[1] = sub_1004BC89C;
  v47 = *(v1 + 695);
  v48 = *(v1 + 1680);
  v49 = *(v1 + 1696);

  return sub_1005C9BD8(v49, 0, 0, v48, v47, v45, v43, v44);
}

uint64_t sub_1004BC89C(uint64_t a1)
{
  v2 = *(*v1 + 1680);
  v3 = *(*v1 + 1672);
  v4 = *(*v1 + 1664);
  *(*v1 + 2208) = a1;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_1004BC9FC, 0, 0);
}

void sub_1004BC9FC()
{
  v1 = *(*(v0 + 1952) + *(*(v0 + 1944) + 32));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (v1 + 32);
    while (v3 < *(v1 + 16))
    {
      v5 = *v4;
      *(v0 + 1032) = v4[1];
      v6 = v4[2];
      v7 = v4[3];
      v8 = v4[5];
      *(v0 + 1080) = v4[4];
      *(v0 + 1096) = v8;
      *(v0 + 1048) = v6;
      *(v0 + 1064) = v7;
      *(v0 + 1016) = v5;
      v9 = *(v0 + 1032);
      if (v9 <= 2 && *(v0 + 1032) && v9 != 2)
      {
        sub_100355378(v0 + 1016, v0 + 1304);

LABEL_11:
        sub_100355378(v0 + 1016, v0 + 1208);
        URL.init(string:)();
        sub_100350510(v0 + 1016);
        sub_100350510(v0 + 1016);
        goto LABEL_12;
      }

      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_100355378(v0 + 1016, v0 + 1112);

      if (v10)
      {
        goto LABEL_11;
      }

      ++v3;
      sub_100350510(v0 + 1016);
      v4 += 6;
      if (v2 == v3)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

LABEL_9:
  (*(v0 + 2160))(*(v0 + 1792), 1, 1, *(v0 + 1896));
LABEL_12:
  v177 = *(v0 + 2144);
  v11 = *(v0 + 1952);
  v12 = *(v0 + 1784);
  v171 = *(v0 + 2192);
  v174 = *(v0 + 1760);
  v13 = *(v0 + 1744);
  v14 = *(v0 + 1736);
  v15 = *(v0 + 1728);
  v16 = *(v0 + 1656);
  v17 = *(v0 + 1552);
  v18 = *(v0 + 1512);
  v19 = (*sub_100006D8C(*(v0 + 1544), *(*(v0 + 1544) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device);
  v21 = v19[4];
  v20 = v19[5];
  v22 = v19[3];
  *(v0 + 679) = *(v19 + 95);
  *(v0 + 648) = v21;
  *(v0 + 664) = v20;
  *(v0 + 632) = v22;
  v24 = v19[1];
  v23 = v19[2];
  *(v0 + 584) = *v19;
  *(v0 + 600) = v24;
  *(v0 + 616) = v23;
  sub_10020A7AC(v0 + 584, v0 + 808);
  sub_10035712C(v0 + 920, (v0 + 584), v12);
  sub_10020A92C(v0 + 584);
  v25 = *(v11 + 24);
  v168 = *(v11 + 16);
  v26 = *(v14 + 56);
  v26(v16, 1, 1, v15);
  v27 = (v17 + *(v171 + 52));
  v29 = *v27;
  v28 = v27[1];
  v177(v13, v174, v15);
  v170 = v26;
  v164 = v28;
  v166 = v29;
  if (v18)
  {
    v30 = *(v0 + 1632);
    v31 = *(v0 + 1512);

    v32 = [v31 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    FilePath.init(_:)();
    v33 = type metadata accessor for FilePath();
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(v30, 1, v33) == 1)
    {
LABEL_29:
      __break(1u);
      return;
    }

    v35 = *(v0 + 1640);
    (*(v34 + 32))(v35, *(v0 + 1632), v33);
    v143 = v33;
    (*(v34 + 56))(v35, 0, 1, v33);
  }

  else
  {
    v36 = *(v0 + 1640);
    v143 = type metadata accessor for FilePath();
    (*(*(v143 - 8) + 56))(v36, 1, 1);
  }

  v109 = *(v0 + 2208);
  v146 = v18 != 0;
  v114 = *(v0 + 2192);
  v131 = *(v0 + 2176);
  v133 = *(v0 + 2184);
  v179 = *(v0 + 2160);
  v116 = *(v0 + 695);
  v123 = *(v0 + 2112);
  v124 = *(v0 + 2120);
  v162 = *(v0 + 2048);
  v120 = *(v0 + 1992);
  v159 = *(v0 + 1976);
  v37 = *(v0 + 1952);
  v155 = *(v0 + 1912);
  v157 = *(v0 + 1928);
  v175 = *(v0 + 1896);
  v119 = *(v0 + 1832);
  v148 = *(v0 + 1824);
  v150 = *(v0 + 1816);
  v112 = *(v0 + 1792);
  v110 = *(v0 + 1784);
  v38 = *(v0 + 1776);
  v118 = v38;
  v154 = *(v0 + 1768);
  v141 = *(v0 + 1744);
  v137 = *(v0 + 1736);
  v172 = *(v0 + 1728);
  v39 = *(v0 + 1712);
  v40 = *(v0 + 1704);
  v111 = *(v0 + 1656);
  v152 = *(v0 + 1648);
  v127 = *(v0 + 1624);
  v129 = *(v0 + 1640);
  v125 = *(v0 + 1608);
  v126 = *(v0 + 1616);
  v41 = *(v0 + 1600);
  v42 = *(v0 + 1592);
  v43 = *(v0 + 1584);
  v44 = *(v0 + 1552);
  (*(v126 + 104))();
  v135 = *(v37 + 32);
  (*(v42 + 104))(v41, enum case for LogKey.Prefix.manifest(_:), v43);
  v45 = objc_allocWithZone(type metadata accessor for LogKey());
  v122 = LogKey.init(prefix:)();
  v121 = *(v44 + *(v120 + 40));
  sub_100005934(v112, v38, &unk_1007809F0, &unk_10069E8F0);
  v46 = (v44 + *(v114 + 88));
  v113 = v46[1];
  v115 = *v46;
  sub_10026E620(*v46, v113);
  static Platform.current.getter();
  if (v116)
  {
    v47 = 2;
  }

  else
  {
    v47 = 0;
  }

  v117 = v47;
  v48 = v40[9];
  v179(v39 + v48, 1, 1, v175);
  v99 = v40[14];
  v49 = (v39 + v40[13]);
  v170(v39 + v99, 1, 1, v172);
  v98 = (v39 + v40[15]);
  v50 = v40[20];
  v100 = v40[16];
  v101 = v50;
  type metadata accessor for FilePath();
  (*(*(v143 - 8) + 56))(v39 + v50, 1, 1);
  v102 = (v39 + v40[22]);
  v106 = v40[29];
  v103 = v40[26];
  v104 = v40[30];
  v179(v39 + v104, 1, 1, v175);
  v105 = v40[31];
  v107 = v40[33];
  v108 = v40[34];
  static Platform.current.getter();
  v139 = v40[35];
  v51 = v39 + v40[36];
  *v51 = xmmword_10069E8A0;
  v144 = v40[38];
  *(v39 + v40[39]) = xmmword_10069E8A0;
  v52 = (v39 + v40[40]);
  *v52 = 0;
  v52[1] = 0;
  v53 = v39 + v40[41];
  *v53 = 0;
  *(v53 + 8) = 0;
  *(v53 + 16) = -1;
  v54 = (v39 + v40[42]);
  *v54 = 0;
  v54[1] = 0;
  *(v39 + v40[43]) = 0;
  *v39 = 0;
  *(v39 + 8) = 0;
  *(v39 + 16) = 1;
  *(v39 + 24) = 0;
  *(v39 + 32) = 1;
  *(v39 + 40) = 0;
  *(v39 + 48) = 1;
  *(v39 + 56) = 0;
  *(v39 + 64) = 1;
  sub_10020AD90(v110, v39 + v48, &unk_1007809F0, &unk_10069E8F0);
  v55 = (v39 + v40[10]);
  *v55 = v123;
  v55[1] = v124;
  v56 = (v39 + v40[11]);
  *v56 = v131;
  v56[1] = v133;
  v57 = (v39 + v40[12]);
  *v57 = v168;
  v57[1] = v25;
  *v49 = 0;
  v49[1] = 0;
  sub_10020AD90(v111, v39 + v99, &unk_100780A00, &unk_10069E8E0);
  *v98 = v166;
  v98[1] = v164;
  *(v39 + v100) = 0;
  *(v39 + v40[17]) = 0;
  *(v39 + v40[18]) = 0;
  (*(v137 + 32))(v39 + v40[19], v141, v172);
  sub_10020AD90(v129, v39 + v101, &qword_10077E958, &qword_10069FC00);
  (*(v126 + 32))(v39 + v40[21], v127, v125);
  *v102 = 0;
  v102[1] = 0;
  *(v39 + v40[23]) = 0;
  *(v39 + v40[24]) = 0;
  *(v39 + v40[25]) = v135 & 1;
  *(v39 + v103) = v146;
  *(v39 + v40[27]) = 1;
  *(v39 + v40[28]) = v122;
  *(v39 + v106) = v121;
  sub_10020AD90(v118, v39 + v104, &unk_1007809F0, &unk_10069E8F0);
  *(v39 + v105) = v109 & 0x1010101;
  v58 = (v39 + v40[32]);
  *v58 = v115;
  v58[1] = v113;
  *(v39 + v107) = 0;
  (*(v148 + 40))(v39 + v108, v119, v150);
  *(v39 + v139) = v117;
  sub_10020B0E0(*v51, *(v51 + 8));
  *v51 = xmmword_10069E8A0;
  *(v39 + v40[37]) = 0;
  v59 = [objc_allocWithZone(MIStoreMetadata) init];
  v60 = String._bridgeToObjectiveC()();
  [v59 setSoftwareVersionBundleID:v60];

  v61 = String._bridgeToObjectiveC()();
  [v59 setBundleVersion:v61];

  v62 = v59;
  [v62 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();

  sub_10047D06C();
  swift_dynamicCast();
  *(v39 + v144) = *(v0 + 1496);
  v170(v152, 1, 1, v172);
  v63 = *(v0 + 400);
  v64 = *(v0 + 408);
  v66 = *(v0 + 416);
  v65 = *(v0 + 424);
  v67 = *(v0 + 432);
  v68 = *(v0 + 440);
  v179(v154, 1, 1, v175);
  v159(v155, v157, v175);
  v181 = v62;
  v151 = v68;
  v153 = v67;
  v149 = v65;
  v140 = v63;
  v142 = v64;
  v138 = v66;
  if (v162)
  {
    v69 = v68;
    v70 = v67;
    v71 = *(v0 + 2088);
    v72 = *(v0 + 2048);
    if (v71)
    {
      v73 = v65;
      v74 = *(v0 + 2080);
      v75 = *(v0 + 2040);
      v182 = 14897;
      sub_10047D0D4(v63, v64, v66, v73, v70, v69);
      v76._countAndFlagsBits = v75;
      v76._object = v72;
      String.append(_:)(v76);
      v77._countAndFlagsBits = 47;
      v77._object = 0xE100000000000000;
      String.append(_:)(v77);
      v78 = v74;
      v79 = v71;
    }

    else
    {
      v80 = *(v0 + 2040);
      v182 = 14896;
      sub_10047D0D4(v63, v64, v66, v65, v70, v69);
      v78 = v80;
      v79 = v72;
    }

    String.append(_:)(*&v78);
    v128 = 0xE200000000000000;
    v130 = v182;
  }

  else
  {
    sub_10047D0D4(v63, v64, v66, v65, v67, v68);
    v128 = 0;
    v130 = 0;
  }

  v81 = *(v0 + 2160);
  v147 = *(v0 + 2096);
  v173 = *(v0 + 2080);
  v176 = *(v0 + 2088);
  v167 = *(v0 + 2064);
  v169 = *(v0 + 2072);
  v163 = *(v0 + 2048);
  v165 = *(v0 + 2056);
  v161 = *(v0 + 2040);
  v145 = *(v0 + 1912);
  v82 = *(v0 + 1896);
  v136 = v82;
  v178 = *(v0 + 1792);
  v134 = *(v0 + 1768);
  v83 = *(v0 + 1728);
  v156 = *(v0 + 1712);
  v158 = *(v0 + 1720);
  v180 = *(v0 + 1696);
  v132 = *(v0 + 1648);
  v84 = *(v0 + 1576);
  v160 = *(v0 + 1568);
  v85 = *(v0 + 1560);
  *(v0 + 1432) = 0u;
  *(v0 + 1448) = 0u;
  *(v0 + 1400) = 0u;
  *(v0 + 1416) = 0u;
  v86 = v85[8];
  v170(v84 + v86, 1, 1, v83);
  v87 = v85[10];
  v88 = (v84 + v85[9]);
  v81(v84 + v87, 1, 1, v82);
  v89 = v84 + v85[18];
  v90 = (v84 + v85[20]);
  v91 = (v84 + v85[21]);
  v91[2] = 0u;
  v91[3] = 0u;
  *v91 = 0u;
  v91[1] = 0u;
  *v84 = 0u;
  *(v84 + 16) = 0u;
  *(v84 + 32) = 1;
  *(v84 + 40) = 0u;
  *(v84 + 56) = 0u;
  sub_10020AD90(v132, v84 + v86, &unk_100780A00, &unk_10069E8E0);
  *v88 = v140;
  v88[1] = v142;
  v88[2] = v138;
  v88[3] = v149;
  v88[4] = v153;
  v88[5] = v151;
  sub_10020AD90(v134, v84 + v87, &unk_1007809F0, &unk_10069E8F0);
  v92 = v84 + v85[11];
  *(v92 + 48) = 0u;
  *(v92 + 64) = 0u;
  *(v92 + 16) = 0u;
  *(v92 + 32) = 0u;
  *v92 = 0u;
  *(v92 + 80) = 0;
  *(v92 + 88) = 0x8000000000000000;
  *(v92 + 96) = 0;
  *(v92 + 104) = 0;
  *(v84 + v85[12]) = 0;
  *(v84 + v85[13]) = 0;
  *(v84 + v85[14]) = 0;
  *(v84 + v85[15]) = 0;
  *(v84 + v85[16]) = 0;
  *(v84 + v85[17]) = 0;
  *v89 = 0;
  *(v89 + 8) = 1;
  v147(v84 + v85[19], v145, v136);
  *v90 = v130;
  v90[1] = v128;
  sub_10020AD90(v0 + 1400, v91, &qword_10077E968, &unk_1006A30E0);
  sub_1004C1F84(v156, v158, type metadata accessor for AppInstall);
  sub_1001F0C48(&qword_100780F18, &unk_1006A3DC0);
  v93 = *(v160 + 80);
  *(v0 + 2240) = v93;
  v94 = (v93 + 32) & ~v93;
  v95 = swift_allocObject();
  *(v0 + 2216) = v95;
  *(v95 + 16) = xmmword_10069E680;
  sub_1004C1FEC(v84, v95 + v94, type metadata accessor for AppPackage);
  sub_100271104(v161, v163, v165, v167, v169, v173, v176);
  sub_100350510(v0 + 376);

  sub_1000032A8(v178, &unk_1007809F0, &unk_10069E8F0);
  sub_1004C2054(v180, type metadata accessor for EvaluatorDownload);
  sub_1004C2054(v156, type metadata accessor for AppInstall);
  v96 = swift_task_alloc();
  *(v0 + 2224) = v96;
  *v96 = v0;
  v96[1] = sub_1004BD934;
  v97 = *(v0 + 1720);

  sub_10054CDE0(v97, v95);
}

uint64_t sub_1004BD934()
{
  v2 = *v1;
  *(v2 + 2232) = v0;

  v3 = *(v2 + 2216);
  v4 = (*(v2 + 2240) + 32) & ~*(v2 + 2240);
  swift_setDeallocating();
  sub_1004C2054(v3 + v4, type metadata accessor for AppPackage);
  swift_deallocClassInstance();
  if (v0)
  {
    v5 = sub_1004BE110;
  }

  else
  {
    v5 = sub_1004BDE58;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1004BDAA4()
{
  (*(v0[238] + 8))(v0[241], v0[237]);
  v1 = v0[192];
  static Logger.vpp.getter();
  v2 = v1;
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[192];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412546;
    *(v6 + 4) = v5;
    *v7 = v5;
    *(v6 + 12) = 2114;
    v8 = v5;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    v7[1] = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Failed to enqueue enterprise manifest install: %{public}@", v6, 0x16u);
    sub_1001F0C48(&qword_10077F920, &qword_10069E6A0);
    swift_arrayDestroy();
  }

  v10 = v0[244];
  v11 = v0[233];
  v12 = v0[232];
  v13 = v0[231];

  (*(v12 + 8))(v11, v13);
  swift_willThrow();

  sub_1004C2054(v10, type metadata accessor for EnterpriseApp);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1004BDE58()
{
  v1 = v0[244];
  v2 = v0[241];
  v3 = v0[238];
  v4 = v0[237];
  v5 = v0[220];
  v6 = v0[217];
  v7 = v0[216];
  sub_1004C2054(v0[215], type metadata accessor for AppInstall);
  (*(v6 + 8))(v5, v7);

  (*(v3 + 8))(v2, v4);
  sub_1004C2054(v1, type metadata accessor for EnterpriseApp);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1004BE110()
{
  v1 = *(v0 + 1968);
  sub_1004C2054(*(v0 + 1720), type metadata accessor for AppInstall);

  return _swift_task_switch(sub_1004BE190, v1, 0);
}

uint64_t sub_1004BE190()
{
  sub_10054C8D0(*(v0 + 1760));

  return _swift_task_switch(sub_1004BE1FC, 0, 0);
}

uint64_t sub_1004BE1FC(uint64_t a1)
{
  v2 = v1[220];
  v3 = v1[217];
  v4 = v1[216];
  swift_willThrow();
  (*(v3 + 8))(v2, v4);
  (*(v1[238] + 8))(v1[241], v1[237]);
  v5 = v1[192];
  static Logger.vpp.getter();
  v6 = v5;
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v1[192];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2114;
    v12 = v9;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v13;
    v11[1] = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%@] Failed to enqueue enterprise manifest install: %{public}@", v10, 0x16u);
    sub_1001F0C48(&qword_10077F920, &qword_10069E6A0);
    swift_arrayDestroy();
  }

  v14 = v1[244];
  v15 = v1[233];
  v16 = v1[232];
  v17 = v1[231];

  (*(v16 + 8))(v15, v17);
  swift_willThrow();

  sub_1004C2054(v14, type metadata accessor for EnterpriseApp);

  v18 = v1[1];

  return v18();
}

uint64_t sub_1004BE5DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004BE810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[128] = v20;
  v8[127] = v19;
  v8[126] = a8;
  v8[125] = a7;
  v8[124] = a6;
  v8[123] = a5;
  v8[122] = a4;
  v8[121] = a3;
  v8[120] = a2;
  v8[119] = a1;
  v9 = type metadata accessor for AppPackage(0);
  v8[129] = v9;
  v8[130] = *(v9 - 8);
  v8[131] = swift_task_alloc();
  v10 = type metadata accessor for Platform();
  v8[132] = v10;
  v8[133] = *(v10 - 8);
  v8[134] = swift_task_alloc();
  v8[135] = swift_task_alloc();
  v8[136] = swift_task_alloc();
  v8[137] = type metadata accessor for AppStoreMetadata(0);
  v8[138] = swift_task_alloc();
  v11 = type metadata accessor for URL();
  v8[139] = v11;
  v8[140] = *(v11 - 8);
  v8[141] = swift_task_alloc();
  v8[142] = swift_task_alloc();
  sub_1001F0C48(&qword_10077E958, &qword_10069FC00);
  v8[143] = swift_task_alloc();
  v8[144] = swift_task_alloc();
  sub_1001F0C48(&unk_100780A00, &unk_10069E8E0);
  v8[145] = swift_task_alloc();
  v8[146] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0, &unk_10069E8F0);
  v8[147] = swift_task_alloc();
  v8[148] = swift_task_alloc();
  v8[149] = swift_task_alloc();
  v8[150] = type metadata accessor for AppInstall(0);
  v8[151] = swift_task_alloc();
  v12 = type metadata accessor for CellularIdentity();
  v8[152] = v12;
  v8[153] = *(v12 - 8);
  v8[154] = swift_task_alloc();
  v8[155] = type metadata accessor for EvaluatorDownload(0);
  v8[156] = swift_task_alloc();
  v13 = type metadata accessor for AppInstallRequestType();
  v8[157] = v13;
  v8[158] = *(v13 - 8);
  v8[159] = swift_task_alloc();
  v8[160] = swift_task_alloc();
  sub_1001F0C48(&unk_100786710, &qword_1006A7D80);
  v8[161] = swift_task_alloc();
  v14 = type metadata accessor for AppStoreItem(0);
  v8[162] = v14;
  v8[163] = *(v14 - 8);
  v8[164] = swift_task_alloc();
  sub_1001F0C48(&qword_10077F340, &unk_10069FA60);
  v8[165] = swift_task_alloc();
  v8[166] = type metadata accessor for AppStorePurchaseRequest(0);
  v8[167] = swift_task_alloc();
  v15 = type metadata accessor for UUID();
  v8[168] = v15;
  v8[169] = *(v15 - 8);
  v8[170] = swift_task_alloc();
  v8[171] = swift_task_alloc();
  v8[172] = type metadata accessor for ManagedAppInstallationTask(0);
  v8[173] = swift_task_alloc();
  v8[174] = swift_task_alloc();
  v8[175] = swift_task_alloc();
  v8[176] = swift_task_alloc();
  v8[177] = swift_task_alloc();
  v16 = type metadata accessor for Logger();
  v8[178] = v16;
  v8[179] = *(v16 - 8);
  v8[180] = swift_task_alloc();
  v8[181] = swift_task_alloc();
  v8[182] = swift_task_alloc();
  v8[183] = swift_task_alloc();

  return _swift_task_switch(sub_1004BEE48, 0, 0);
}

uint64_t sub_1004BEE48(uint64_t a1)
{
  v87 = v1;
  v2 = *(v1 + 1416);
  v3 = *(v1 + 1368);
  v4 = *(v1 + 1352);
  v5 = *(v1 + 1344);
  v6 = *(v1 + 968);
  v7 = *(v1 + 960);
  static Logger.vpp.getter();
  sub_1004C1F84(v6, v2, type metadata accessor for ManagedAppInstallationTask);
  v8 = *(v4 + 16);
  *(v1 + 1472) = v8;
  *(v1 + 1480) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v7, v5);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v1 + 1464);
  v13 = *(v1 + 1432);
  v14 = *(v1 + 1424);
  v15 = *(v1 + 1416);
  if (v11)
  {
    v16 = *(v1 + 1376);
    v17 = *(v1 + 1368);
    v84 = *(v1 + 1464);
    v18 = *(v1 + 1352);
    v79 = *(v1 + 1344);
    v19 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v86 = v81;
    *v19 = 138412546;
    v20 = *(v15 + *(v16 + 28));
    sub_1004C2054(v15, type metadata accessor for ManagedAppInstallationTask);
    *(v19 + 4) = v20;
    *v77 = v20;
    *(v19 + 12) = 2082;
    sub_1004C20B4(&qword_100789F60, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v18 + 8))(v17, v79);
    v24 = sub_1002346CC(v21, v23, &v86);

    *(v19 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v9, v10, "[%@] Assigning installation identifier: %{public}s", v19, 0x16u);
    sub_1000032A8(v77, &qword_10077F920, &qword_10069E6A0);

    sub_10000710C(v81);

    (*(v13 + 8))(v84, v14);
  }

  else
  {
    v25 = *(v1 + 1368);
    v26 = *(v1 + 1352);
    v27 = *(v1 + 1344);

    (*(v26 + 8))(v25, v27);
    sub_1004C2054(v15, type metadata accessor for ManagedAppInstallationTask);
    (*(v13 + 8))(v12, v14);
  }

  v28 = *(v1 + 968);
  v29 = type metadata accessor for DDMDeclaration(0);
  *(v1 + 1488) = v29;
  v30 = (v28 + *(v29 + 104));
  v31 = v30[1];
  if (v31)
  {
    v82 = *(v28 + 48);
    v83 = *v30;
    v80 = *(v28 + 56);
  }

  else
  {
    v82 = 0;
    v83 = 0;
    v80 = 0;
  }

  v32 = *(v1 + 1376);
  v33 = (v28 + *(v32 + 32));
  if (*(v33 + 8) == 1)
  {

    v78 = 0;
  }

  else
  {
    v34 = *v33;
    sub_1001F0C48(&unk_100786730, &unk_1006AD910);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10069E680;
    v36 = AMSBuyParamPropertyExternalVersionId;
    *(inited + 32) = AMSBuyParamPropertyExternalVersionId;
    *(v1 + 944) = v34;

    v37 = v36;
    *(inited + 40) = dispatch thunk of CustomStringConvertible.description.getter();
    *(inited + 48) = v38;
    v78 = sub_10052B164(inited);
    swift_setDeallocating();
    sub_1000032A8(inited + 32, &qword_100780EC0, &qword_1006A3048);
    v32 = *(v1 + 1376);
    v28 = *(v1 + 968);
  }

  v85 = v31;
  v39 = *(v1 + 1320);
  v76 = *(v28 + *(v32 + 24));
  *(v1 + 127) = v76;
  sub_100005934(v28 + *(v29 + 72), v39, &qword_10077F340, &unk_10069FA60);
  v40 = type metadata accessor for ManagedAppDeclaration.InstallBehavior.LicenseEnum();
  v41 = *(v40 - 8);
  v42 = (*(v41 + 48))(v39, 1, v40);
  v74 = v29;
  if (v42 == 1)
  {
    __break(1u);
  }

  else
  {
    v45 = *(v1 + 1336);
    v46 = *(v1 + 1328);
    v47 = *(v1 + 1008);
    v48 = *(v1 + 1000);
    v71 = *(v1 + 1376);
    v72 = *(v1 + 992);
    v49 = *(v1 + 984);
    v50 = *(v1 + 976);
    v73 = *(v1 + 1320);
    v51 = *(v1 + 968);
    v52 = (*sub_100006D8C(v48, v48[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device);
    v53 = *(v52 + 95);
    v54 = v52[5];
    v55 = v52[3];
    *(v1 + 80) = v52[4];
    *(v1 + 96) = v54;
    *(v1 + 111) = v53;
    *(v1 + 64) = v55;
    v56 = *v52;
    v57 = v52[2];
    *(v1 + 32) = v52[1];
    *(v1 + 48) = v57;
    *(v1 + 16) = v56;
    sub_10020A980(v47, v45 + v46[10]);
    v58 = (v51 + *(v74 + 92));
    v75 = *v58;
    v70 = *(v58 + 8);
    v59 = *(v51 + *(v71 + 28));
    *(v1 + 1496) = v59;
    *v45 = v50;
    *(v45 + 8) = v83;
    *(v45 + 16) = v85;
    *(v45 + 24) = v82;
    *(v45 + 32) = v80;
    *(v45 + 40) = v76;
    *(v45 + 48) = v49;
    *(v45 + 56) = v72;
    (*(v41 + 32))(v45 + v46[8], v73, v40);
    v60 = (v45 + v46[9]);
    v61 = *(v1 + 111);
    v63 = *(v1 + 80);
    v62 = *(v1 + 96);
    v60[3] = *(v1 + 64);
    v60[4] = v63;
    v60[5] = v62;
    *(v60 + 95) = v61;
    v65 = *(v1 + 32);
    v64 = *(v1 + 48);
    *v60 = *(v1 + 16);
    v60[1] = v65;
    v60[2] = v64;
    *(v45 + v46[11]) = v78;
    *(v45 + v46[12]) = 0;
    v66 = v45 + v46[13];
    *v66 = v75;
    *(v66 + 8) = v70;
    *(v45 + v46[14]) = v59;
    v67 = *(*sub_100006D8C(v48, v48[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_purchaseQueue);
    *(v1 + 1504) = v67;
    sub_10020A7AC(v1 + 16, v1 + 128);
    v68 = v59;
    sub_10026E620(v49, v72);

    v42 = sub_1004BF4C8;
    v43 = v67;
    v44 = 0;
  }

  return _swift_task_switch(v42, v43, v44);
}

uint64_t sub_1004BF4C8()
{
  v1 = v0[188];
  v2 = v0[167];
  v3 = sub_1004C20B4(&unk_100786700, type metadata accessor for AppStorePurchaseQueue, asc_1006B065C);
  v4 = swift_task_alloc();
  v0[189] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[190] = v5;
  v6 = sub_1001F0C48(&qword_100784FE0, &unk_1006AD900);
  *v5 = v0;
  v5[1] = sub_1004BF614;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 114, v1, v3, 0xD000000000000016, 0x80000001006CC530, sub_1004C1F7C, v4, v6);
}

uint64_t sub_1004BF614()
{
  v2 = *v1;
  *(*v1 + 1528) = v0;

  if (v0)
  {
    v3 = *(v2 + 1504);
    v4 = sub_1004C0714;
  }

  else
  {
    v5 = *(v2 + 1504);

    v4 = sub_1004BF73C;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1004BF73C()
{

  *(v0 + 1536) = *(v0 + 912);

  return _swift_task_switch(sub_1004BF7AC, 0, 0);
}

uint64_t sub_1004BF7AC(uint64_t a1)
{
  v141 = v1;
  v2 = *(v1 + 1536);
  v3 = *(v1 + 1304);
  v4 = *(v1 + 1296);
  v5 = *(v1 + 1288);
  v6 = sub_1004DA6EC();
  v8 = v7;
  v10 = v9;
  sub_10039CFA8(v6, v7, v9 & 1, v2, v5);

  sub_1001DFEBC(v6, v8, v10 & 1);
  if ((*(v3 + 48))(v5, 1, v4) == 1)
  {
    v11 = *(v1 + 1392);
    v12 = *(v1 + 1384);
    v13 = *(v1 + 968);
    sub_1000032A8(*(v1 + 1288), &unk_100786710, &qword_1006A7D80);
    static Logger.vpp.getter();
    sub_1004C1F84(v13, v11, type metadata accessor for ManagedAppInstallationTask);
    sub_1004C1F84(v13, v12, type metadata accessor for ManagedAppInstallationTask);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v1 + 1440);
    v18 = *(v1 + 1432);
    v19 = *(v1 + 1424);
    v20 = *(v1 + 1392);
    v21 = *(v1 + 1384);
    if (v16)
    {
      v135 = v14;
      v22 = *(v1 + 1376);
      v137 = *(v1 + 1424);
      v23 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v139 = v134;
      *v23 = 138412546;
      v24 = *(v20 + *(v22 + 28));
      sub_1004C2054(v20, type metadata accessor for ManagedAppInstallationTask);
      *(v23 + 4) = v24;
      *v133 = v24;
      *(v23 + 12) = 2082;
      v25 = sub_1004DA6EC();
      v27 = v26;
      v29 = v28;
      v30 = StoreAppIdentifier.description.getter();
      v132 = v15;
      v32 = v31;
      sub_1001DFEBC(v25, v27, v29 & 1);
      sub_1004C2054(v21, type metadata accessor for ManagedAppInstallationTask);
      v33 = sub_1002346CC(v30, v32, &v139);

      *(v23 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v135, v132, "[%@] Missing expected metadata for %{public}s", v23, 0x16u);
      sub_1000032A8(v133, &qword_10077F920, &qword_10069E6A0);

      sub_10000710C(v134);

      (*(v18 + 8))(v17, v137);
    }

    else
    {

      sub_1004C2054(v21, type metadata accessor for ManagedAppInstallationTask);
      sub_1004C2054(v20, type metadata accessor for ManagedAppInstallationTask);
      (*(v18 + 8))(v17, v19);
    }

    v51 = *(v1 + 1336);
    type metadata accessor for InternalError(0);
    sub_1004C20B4(&qword_10077F900, type metadata accessor for InternalError, byte_1006B8E64);
    swift_allocError();
    *v52 = 0;
    v52[1] = 0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_28:
    sub_1004C2054(v51, type metadata accessor for AppStorePurchaseRequest);

    v104 = *(v1 + 8);

    return v104();
  }

  v34 = *(v1 + 1312);
  v35 = *(v1 + 1296);
  sub_1004C1FEC(*(v1 + 1288), v34, type metadata accessor for AppStoreItem);
  v36 = *(v35 + 24);
  *(v1 + 1648) = v36;
  v37 = (v34 + v36);
  v38 = *(v34 + v36 + 16);
  *(v1 + 1544) = v38;
  v39 = v37[3];
  *(v1 + 1552) = v39;
  v139 = v38;
  v140 = v39;

  v40._countAndFlagsBits = 58;
  v40._object = 0xE100000000000000;
  String.append(_:)(v40);
  *(v1 + 920) = *v34;
  v41._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v41);

  v42._countAndFlagsBits = 58;
  v42._object = 0xE100000000000000;
  String.append(_:)(v42);
  v43 = v37[12];
  *(v1 + 1560) = v43;
  *(v1 + 928) = v43;
  v44._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v44);

  v46 = v139;
  v45 = v140;
  sub_1006258D8("No activity to associate LogKey with", 36, 2);
  if (qword_10077E5A0 != -1)
  {
    swift_once();
  }

  sub_1002710CC(*(v1 + 1424), qword_1007B88E8);

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v139 = v50;
    *v49 = 136446210;

    *(v49 + 4) = sub_1002346CC(v46, v45, &v139);
    _os_log_impl(&_mh_execute_header, v47, v48, "Activity associated with %{public}s", v49, 0xCu);
    sub_10000710C(v50);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v53 = *(v1 + 1408);
  v54 = *(v1 + 968);
  static Logger.vpp.getter();
  sub_1004C1F84(v54, v53, type metadata accessor for ManagedAppInstallationTask);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();
  v57 = os_log_type_enabled(v55, v56);
  v58 = *(v1 + 1408);
  if (v57)
  {
    v59 = *(v1 + 1376);
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v60 = 138412290;
    v62 = *(v58 + *(v59 + 28));
    sub_1004C2054(v58, type metadata accessor for ManagedAppInstallationTask);
    *(v60 + 4) = v62;
    *v61 = v62;
    _os_log_impl(&_mh_execute_header, v55, v56, "[%@] Purchase completed, performing compatiblity checks", v60, 0xCu);
    sub_1000032A8(v61, &qword_10077F920, &qword_10069E6A0);
  }

  else
  {

    sub_1004C2054(v58, type metadata accessor for ManagedAppInstallationTask);
  }

  v63 = *(v1 + 1096);
  v64 = *(*(v1 + 1432) + 8);
  v64(*(v1 + 1456), *(v1 + 1424));
  v65 = *(v37 + *(v63 + 140));
  if (v65)
  {
    v66 = *(v1 + 1000);
    sub_1004B5CA4(v65);
    v68 = v67;
    v69 = (*sub_100006D8C(v66, v66[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device);
    v71 = v69[4];
    v70 = v69[5];
    v72 = v69[3];
    *(v1 + 335) = *(v69 + 95);
    *(v1 + 304) = v71;
    *(v1 + 320) = v70;
    *(v1 + 288) = v72;
    v74 = v69[1];
    v73 = v69[2];
    *(v1 + 240) = *v69;
    *(v1 + 256) = v74;
    *(v1 + 272) = v73;
    sub_10020A7AC(v1 + 240, v1 + 352);
    v75 = sub_1004FED84(v68);

    sub_10020A92C(v1 + 240);
    if (v75[2])
    {
      v76 = *(v1 + 1400);
      v77 = *(v1 + 968);
      static Logger.vpp.getter();
      sub_1004C1F84(v77, v76, type metadata accessor for ManagedAppInstallationTask);

      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.error.getter();

      v80 = os_log_type_enabled(v78, v79);
      v81 = *(v1 + 1448);
      v82 = *(v1 + 1424);
      v83 = *(v1 + 1400);
      if (v80)
      {
        v138 = *(v1 + 1448);
        v84 = *(v1 + 1376);
        v85 = swift_slowAlloc();
        v136 = v82;
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v139 = v87;
        *v85 = 138412546;
        v88 = *(v83 + *(v84 + 28));
        sub_1004C2054(v83, type metadata accessor for ManagedAppInstallationTask);
        *(v85 + 4) = v88;
        *v86 = v88;
        *(v85 + 12) = 2080;
        v89 = Array.description.getter();
        v91 = v90;

        v92 = sub_1002346CC(v89, v91, &v139);

        *(v85 + 14) = v92;
        _os_log_impl(&_mh_execute_header, v78, v79, "[%@] Failed to import purchase, there are missing capabilities: %s", v85, 0x16u);
        sub_1000032A8(v86, &qword_10077F920, &qword_10069E6A0);

        sub_10000710C(v87);

        v93 = v138;
        v94 = v136;
      }

      else
      {

        sub_1004C2054(v83, type metadata accessor for ManagedAppInstallationTask);
        v93 = v81;
        v94 = v82;
      }

      v64(v93, v94);
      v51 = *(v1 + 1336);
      v103 = *(v1 + 1312);
      type metadata accessor for InternalError(0);
      sub_1004C20B4(&qword_10077F900, type metadata accessor for InternalError, byte_1006B8E64);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1004C2054(v103, type metadata accessor for AppStoreItem);
      goto LABEL_28;
    }
  }

  v95 = *(v1 + 1280);
  v96 = *(v1 + 1264);
  v97 = *(v1 + 1256);
  v98 = *(v1 + 1016);
  v99 = *(v96 + 16);
  *(v1 + 1568) = v99;
  *(v1 + 1576) = (v96 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v99(v95, v98, v97);
  result = (*(v96 + 88))(v95, v97);
  v101 = *(v1 + 127);
  if (result == enum case for AppInstallRequestType.automaticUpdate(_:) || result == enum case for AppInstallRequestType.update(_:) || result == enum case for AppInstallRequestType.deviceVPPUpdate(_:) || result == enum case for AppInstallRequestType.userVPPUpdate(_:))
  {
    if (*(v1 + 127))
    {
      v102 = 2;
    }

    else
    {
      v102 = 3;
    }
  }

  else
  {
    result = (*(*(v1 + 1264) + 8))(*(v1 + 1280), *(v1 + 1256));
    v102 = (v101 & 1) == 0;
  }

  v105 = *(*(v1 + 1312) + *(*(v1 + 1296) + 28));
  *(v1 + 1584) = v105;
  if (!*(v105 + 16))
  {
    __break(1u);
    goto LABEL_38;
  }

  v106 = *(v1 + 1248);
  v107 = *(v1 + 1120);
  v108 = *(v1 + 1112);
  v109 = type metadata accessor for AppStorePackage(0);
  *(v1 + 1592) = v109;
  v110 = *(*(v109 - 8) + 80);
  *(v1 + 1652) = v110;
  v111 = v105 + ((v110 + 32) & ~v110);
  v112 = *(v107 + 16);
  *(v1 + 1600) = v112;
  *(v1 + 1608) = (v107 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v112(v106, v111, v108);
  v113 = *(v107 + 56);
  *(v1 + 1616) = v113;
  *(v1 + 1624) = (v107 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  result = v113(v106, 0, 1, v108);
  v114 = *(v109 + 20);
  *(v1 + 1656) = v114;
  v115 = *(v111 + v114);
  if (v115 < 0)
  {
LABEL_38:
    __break(1u);
    return result;
  }

  v116 = *(v1 + 1496);
  v117 = *(v1 + 1248);
  v118 = *(v1 + 1240);
  v119 = *(v1 + 1008);
  v120 = v37[28];
  v121 = *(*(v1 + 968) + *(*(v1 + 1488) + 44));
  v122 = v118[9];
  v123 = (v117 + v118[5]);
  *v123 = v37[27];
  v123[1] = v120;
  *(v117 + v118[6]) = v115;
  *(v117 + v118[7]) = 2;
  *(v117 + v122) = v121;
  *(v117 + v118[10]) = v102;
  *(v117 + v118[8]) = v116;
  v124 = v116;

  static CellularIdentity.current()();
  v125 = v119[3];
  v126 = v119[4];
  v127 = sub_100006D8C(v119, v125);
  v128 = swift_task_alloc();
  *(v1 + 1632) = v128;
  *v128 = v1;
  v128[1] = sub_1004C09EC;
  v129 = *(v1 + 127);
  v130 = *(v1 + 1232);
  v131 = *(v1 + 1248);

  return sub_1005C9BD8(v131, 0, 0, v130, v129, v127, v125, v126);
}

uint64_t sub_1004C0714()
{

  return _swift_task_switch(sub_1004C0788, 0, 0);
}

uint64_t sub_1004C0788()
{
  sub_1004C2054(*(v0 + 1336), type metadata accessor for AppStorePurchaseRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004C09EC(uint64_t a1)
{
  v2 = *(*v1 + 1232);
  v3 = *(*v1 + 1224);
  v4 = *(*v1 + 1216);
  *(*v1 + 1640) = a1;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_1004C0B4C, 0, 0);
}

uint64_t sub_1004C0B4C()
{
  if ((*(v0 + 1640) & 0x1010000) == 0x1000000)
  {
    v1 = *(v0 + 1336);
    v2 = *(v0 + 1312);
    v3 = *(v0 + 1248);
    type metadata accessor for InternalError(0);
    sub_1004C20B4(&qword_10077F900, type metadata accessor for InternalError, byte_1006B8E64);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1004C2054(v3, type metadata accessor for EvaluatorDownload);
    sub_1004C2054(v2, type metadata accessor for AppStoreItem);
    sub_1004C2054(v1, type metadata accessor for AppStorePurchaseRequest);

    v4 = *(v0 + 8);

    return v4();
  }

  v217 = *(v0 + 1616);
  v207 = *(v0 + 1472);
  v201 = *(v0 + 1488);
  v204 = *(v0 + 1360);
  v6 = *(v0 + 1352);
  v7 = *(v0 + 1312);
  v8 = *(v0 + 1296);
  v9 = *(v0 + 1192);
  v186 = *(v0 + 1600);
  v189 = *(v0 + 1168);
  v10 = *(v0 + 1112);
  v212 = *(v0 + 1024);
  v192 = *(v0 + 968);
  v11 = (v7 + *(v0 + 1648));
  v195 = *(v0 + 960);
  v198 = *(v0 + 1344);
  sub_100397D84(v0 + 840);
  v12 = *(v0 + 864);
  v13 = *(v0 + 872);
  sub_100006D8C((v0 + 840), v12);
  v179 = (*(v13 + 8))(v12, v13);
  v181 = v11[26];
  v186(v9, v7 + *(v8 + 20), v10);
  v217(v9, 0, 1, v10);
  v15 = v11[4];
  v14 = v11[5];
  v16 = v11[8];
  v17 = v11[9];
  v215 = v14;
  v218 = *(v6 + 56);
  v218(v189, 1, 1, v198);
  v18 = (v192 + *(v201 + 52));
  v19 = *v18;
  v20 = v18[1];
  v207(v204, v195, v198);
  v202 = v19;
  v184 = v15;
  v187 = v16;
  v193 = v20;
  v177 = v17;
  if (v212)
  {
    v21 = *(v0 + 1144);
    v22 = *(v0 + 1024);

    v23 = [v22 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    FilePath.init(_:)();
    v24 = type metadata accessor for FilePath();
    v25 = *(v24 - 8);
    result = (*(v25 + 48))(v21, 1, v24);
    if (result == 1)
    {
LABEL_34:
      __break(1u);
      return result;
    }

    v26 = *(v0 + 1152);
    (*(v25 + 32))(v26, *(v0 + 1144), v24);
    v174 = v24;
    (*(v25 + 56))(v26, 0, 1, v24);
  }

  else
  {
    v27 = *(v0 + 1152);
    v174 = type metadata accessor for FilePath();
    (*(*(v174 - 8) + 56))(v27, 1, 1);
  }

  v28 = *(v0 + 1640);
  v208 = v212 != 0;
  v143 = *(v0 + 1616);
  v149 = *(v0 + 1560);
  v155 = *(v0 + 1552);
  v152 = *(v0 + 1544);
  v171 = *(v0 + 127);
  v162 = *(v0 + 1488);
  v29 = *(v0 + 1376);
  v169 = *(v0 + 1360);
  v165 = *(v0 + 1352);
  v210 = *(v0 + 1344);
  v30 = *(v0 + 1312);
  v157 = *(v0 + 1296);
  v161 = *(v0 + 1272);
  v190 = *(v0 + 1264);
  v159 = *(v0 + 1256);
  v31 = *(v0 + 1208);
  v32 = *(v0 + 1200);
  v146 = *(v0 + 1192);
  v33 = *(v0 + 1184);
  v151 = *(v0 + 1168);
  v167 = *(v0 + 1152);
  v168 = v33;
  v136 = *(v0 + 1112);
  v147 = *(v0 + 1104);
  v34 = *(v0 + 1096);
  v205 = v34;
  v213 = *(v0 + 1088);
  v35 = v30 + *(v0 + 1648);
  v150 = *(v0 + 1064);
  v199 = *(v0 + 1056);
  v36 = *(v0 + 968);
  (*(v0 + 1568))();
  v164 = *(v35 + 204);
  v166 = *(v35 + 205);
  v170 = *(v36 + *(v29 + 40));
  v196 = v35;
  sub_100005934(v35 + *(v34 + 116), v33, &unk_1007809F0, &unk_10069E8F0);
  v37 = (v36 + *(v162 + 88));
  v39 = *v37;
  v38 = v37[1];
  v153 = v38;
  v154 = *v37;
  if (v171)
  {
    v40 = 2;
  }

  else
  {
    v40 = 0;
  }

  v172 = v40;
  v163 = v28 & 0x1010101;
  v41 = (v30 + *(v157 + 32));
  v42 = *v41;
  v43 = v41[1];
  v156 = v43;
  v158 = *v41;
  sub_10047D06C();
  sub_1004C1F84(v35, v147, type metadata accessor for AppStoreMetadata);
  sub_10026E620(v39, v38);
  sub_1001DFECC(v42, v43);
  sub_10061AAE8(v147);
  v45 = v44;
  [v44 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();

  swift_dynamicCast();
  v148 = *(v0 + 936);
  v145 = sub_100625FA0();
  static Platform.current.getter();
  v46 = v32[9];
  v143(v31 + v46, 1, 1, v136);
  v130 = v32[14];
  v47 = (v31 + v32[13]);
  v218(v31 + v130, 1, 1, v210);
  v48 = (v31 + v32[15]);
  v49 = v32[20];
  v132 = v32[16];
  v134 = v49;
  type metadata accessor for FilePath();
  (*(*(v174 - 8) + 56))(v31 + v49, 1, 1);
  v50 = (v31 + v32[22]);
  v142 = v32[29];
  v138 = v32[26];
  v140 = v32[30];
  v143(v31 + v140, 1, 1, v136);
  v144 = v32[31];
  v51 = v32[34];
  v160 = v32[33];
  static Platform.current.getter();
  v175 = v32[35];
  v52 = v31 + v32[36];
  *v52 = xmmword_10069E8A0;
  v53 = v32[38];
  *(v31 + v32[39]) = xmmword_10069E8A0;
  v54 = (v31 + v32[40]);
  *v54 = 0;
  v54[1] = 0;
  v55 = v31 + v32[41];
  *v55 = 0;
  *(v55 + 8) = 0;
  *(v55 + 16) = -1;
  v56 = (v31 + v32[42]);
  *v56 = 0;
  v56[1] = 0;
  *(v31 + v32[43]) = 0;
  *v31 = 0;
  *(v31 + 8) = 0;
  *(v31 + 16) = 1;
  *(v31 + 24) = v179;
  *(v31 + 32) = 0;
  *(v31 + 40) = v181;
  *(v31 + 48) = 0;
  *(v31 + 56) = v149;
  *(v31 + 64) = 0;
  sub_10020AD90(v146, v31 + v46, &unk_1007809F0, &unk_10069E8F0);
  v57 = (v31 + v32[10]);
  *v57 = v152;
  v57[1] = v155;
  v58 = (v31 + v32[11]);
  *v58 = v184;
  v58[1] = v215;
  v59 = (v31 + v32[12]);
  *v59 = v187;
  v59[1] = v177;
  *v47 = 0;
  v47[1] = 0;
  sub_10020AD90(v151, v31 + v130, &unk_100780A00, &unk_10069E8E0);
  *v48 = v202;
  v48[1] = v193;
  *(v31 + v132) = 0;
  *(v31 + v32[17]) = 0;
  *(v31 + v32[18]) = 0;
  (*(v165 + 32))(v31 + v32[19], v169, v210);
  sub_10020AD90(v167, v31 + v134, &qword_10077E958, &qword_10069FC00);
  (*(v190 + 32))(v31 + v32[21], v161, v159);
  *v50 = 0;
  v50[1] = 0;
  *(v31 + v32[23]) = 0;
  *(v31 + v32[24]) = v164;
  *(v31 + v32[25]) = v166 & 1;
  *(v31 + v138) = v208;
  *(v31 + v32[27]) = 1;
  *(v31 + v32[28]) = v145;
  *(v31 + v142) = v170;
  sub_10020AD90(v168, v31 + v140, &unk_1007809F0, &unk_10069E8F0);
  *(v31 + v144) = v163;
  v60 = (v31 + v32[32]);
  *v60 = v154;
  v60[1] = v153;
  *(v31 + v160) = 0;
  v61 = *(v150 + 40);
  v61(v31 + v51, v213, v199);
  *(v31 + v175) = v172;
  sub_10020B0E0(*v52, *(v52 + 8));
  *v52 = v158;
  *(v52 + 8) = v156;
  *(v31 + v32[37]) = 2;
  *(v31 + v53) = v148;
  sub_10000710C((v0 + 840));
  v62 = *(v196 + *(v205 + 144));
  if (v62 <= 1)
  {
    if (*(v196 + *(v205 + 144)))
    {
      static Platform.macOS.getter();
    }

    else
    {
      static Platform.iOS.getter();
    }

    goto LABEL_18;
  }

  if (v62 == 2)
  {
    static Platform.visionOS.getter();
LABEL_18:
    (*(*(v0 + 1064) + 32))(*(v0 + 1080), *(v0 + 1072), *(v0 + 1056));
    goto LABEL_20;
  }

  static Platform.current.getter();
LABEL_20:
  v63 = *(v0 + 1584);
  result = (v61)(v31 + v51, *(v0 + 1080), *(v0 + 1056));
  if (!*(v63 + 16))
  {
    __break(1u);
    goto LABEL_34;
  }

  v64 = *(v0 + 1616);
  v65 = *(v0 + 1600);
  v66 = *(v0 + 1592);
  v67 = *(v0 + 1176);
  v68 = *(v0 + 1128);
  v69 = *(v0 + 1112);
  v70 = *(v0 + 1584) + ((*(v0 + 1652) + 32) & ~*(v0 + 1652));
  v71 = (v70 + v66[10]);
  v197 = v71[1];
  v200 = *v71;
  v191 = v71[3];
  v194 = v71[2];
  v185 = v71[5];
  v188 = v71[4];
  v173 = *(v70 + *(v0 + 1656));
  v218(*(v0 + 1160), 1, 1, *(v0 + 1344));
  v72 = (v70 + v66[9]);
  v214 = v72[1];
  v216 = *v72;
  v209 = v72[3];
  v211 = v72[2];
  v203 = v72[5];
  v206 = v72[4];
  v64(v67, 1, 1, v69);
  v73 = (v70 + v66[7]);
  v74 = *v73;
  v75 = v73[1];
  v76 = v73[3];
  *(v0 + 496) = v73[2];
  *(v0 + 512) = v76;
  *(v0 + 464) = v74;
  *(v0 + 480) = v75;
  v77 = (v70 + v66[8]);
  v78 = *v77;
  v79 = v77[1];
  v176 = *(v70 + v66[13]);
  v80 = v70 + v66[6];
  v182 = *v80;
  v81 = *(v80 + 8);
  v65(v68, v70, v69);
  v82 = (v70 + v66[12]);
  v83 = v82[1];
  v178 = v79;
  v180 = v78;
  if (v83)
  {
    v84 = *v82;
    v85 = v82[2];
    v86 = v82[3];
    v87 = v82[4];
    v88 = v82[5];
    v89 = v82[6];
    if (v89)
    {
      v219 = 14897;
      sub_10047D0D4(v200, v197, v194, v191, v188, v185);
      sub_10047D0D4(v216, v214, v211, v209, v206, v203);
      sub_100005934(v0 + 464, v0 + 720, &qword_1007845D8, &unk_1006AC760);
      sub_1001DFECC(v180, v178);
      sub_10047D11C(v84, v83, v85, v86, v87, v88, v89);
      v90._countAndFlagsBits = v84;
      v90._object = v83;
      String.append(_:)(v90);
      v91._countAndFlagsBits = 47;
      v91._object = 0xE100000000000000;
      String.append(_:)(v91);
      v92._countAndFlagsBits = v88;
      v92._object = v89;
      String.append(_:)(v92);
      v93 = v84;
      v94 = v83;
      v95 = v85;
      v96 = v86;
      v97 = v87;
      v98 = v88;
      v99 = v89;
    }

    else
    {
      v219 = 14896;
      sub_10047D0D4(v200, v197, v194, v191, v188, v185);
      sub_10047D0D4(v216, v214, v211, v209, v206, v203);
      sub_100005934(v0 + 464, v0 + 656, &qword_1007845D8, &unk_1006AC760);
      sub_1001DFECC(v180, v178);
      sub_10047D11C(v84, v83, v85, v86, v87, v88, 0);
      v100._countAndFlagsBits = v84;
      v100._object = v83;
      String.append(_:)(v100);
      v93 = v84;
      v94 = v83;
      v95 = v85;
      v96 = v86;
      v97 = v87;
      v98 = v88;
      v99 = 0;
    }

    sub_100271104(v93, v94, v95, v96, v97, v98, v99);
    v133 = 0xE200000000000000;
    v135 = v219;
  }

  else
  {
    sub_10047D0D4(v200, v197, v194, v191, v188, v185);
    sub_10047D0D4(v216, v214, v211, v209, v206, v203);
    sub_100005934(v0 + 464, v0 + 528, &qword_1007845D8, &unk_1006AC760);
    sub_1001DFECC(v78, v79);
    v133 = 0;
    v135 = 0;
  }

  v101 = v182;
  v102 = *(v0 + 1616);
  v103 = *(v0 + 1344);
  v139 = *(v0 + 1312);
  v141 = *(v0 + 1336);
  v137 = *(v0 + 1248);
  v131 = *(v0 + 1208);
  v125 = *(v0 + 1176);
  v183 = *(v0 + 1160);
  if (v81)
  {
    v104 = 0;
  }

  else
  {
    v104 = v101;
  }

  *(v0 + 624) = 0u;
  *(v0 + 640) = 0u;
  *(v0 + 592) = 0u;
  *(v0 + 608) = 0u;
  v122 = *(v0 + 496);
  v123 = *(v0 + 464);
  v120 = *(v0 + 512);
  v121 = *(v0 + 480);
  v126 = *(v0 + 1128);
  v127 = v104;
  v124 = v81;
  v105 = *(v0 + 1120);
  v106 = *(v0 + 1112);
  v119 = v106;
  v107 = *(v0 + 1048);
  v108 = *(v0 + 1032);
  v128 = *(v0 + 952);
  v129 = *(v0 + 1040);
  v109 = v108[8];
  v218(&v107[v109], 1, 1, v103);
  v110 = v108[10];
  v111 = &v107[v108[9]];
  v102(&v107[v110], 1, 1, v106);
  v112 = &v107[v108[18]];
  v113 = &v107[v108[20]];
  v114 = &v107[v108[21]];
  *(v114 + 2) = 0u;
  *(v114 + 3) = 0u;
  *v114 = 0u;
  *(v114 + 1) = 0u;
  *v107 = 0;
  *(v107 + 1) = 0;
  *(v107 + 2) = v200;
  *(v107 + 3) = v197;
  *(v107 + 4) = v194;
  *(v107 + 5) = v191;
  *(v107 + 6) = v188;
  *(v107 + 7) = v185;
  *(v107 + 8) = v173;
  sub_10020AD90(v183, &v107[v109], &unk_100780A00, &unk_10069E8E0);
  *v111 = v216;
  v111[1] = v214;
  v111[2] = v211;
  v111[3] = v209;
  v111[4] = v206;
  v111[5] = v203;
  sub_10020AD90(v125, &v107[v110], &unk_1007809F0, &unk_10069E8F0);
  v115 = &v107[v108[11]];
  *v115 = v123;
  *(v115 + 1) = v121;
  *(v115 + 2) = v122;
  *(v115 + 3) = v120;
  *(v115 + 8) = v180;
  *(v115 + 9) = v178;
  *(v115 + 10) = 0;
  *(v115 + 11) = 0;
  v107[v108[12]] = 0;
  v107[v108[13]] = 0;
  v107[v108[14]] = v176;
  *&v107[v108[15]] = 0;
  *&v107[v108[16]] = 0;
  v107[v108[17]] = 0;
  *v112 = v127;
  v112[8] = v124;
  (*(v105 + 32))(&v107[v108[19]], v126, v119);
  *v113 = v135;
  v113[1] = v133;
  sub_10020AD90(v0 + 592, v114, &qword_10077E968, &unk_1006A30E0);
  sub_1004C1F84(v131, v128, type metadata accessor for AppInstall);
  sub_1001F0C48(&qword_100780F18, &unk_1006A3DC0);
  v116 = (*(v129 + 80) + 32) & ~*(v129 + 80);
  v117 = swift_allocObject();
  *(v117 + 16) = xmmword_10069E680;
  sub_1004C1FEC(v107, v117 + v116, type metadata accessor for AppPackage);
  sub_1004C2054(v137, type metadata accessor for EvaluatorDownload);
  sub_1004C2054(v139, type metadata accessor for AppStoreItem);
  sub_1004C2054(v141, type metadata accessor for AppStorePurchaseRequest);
  sub_1004C2054(v131, type metadata accessor for AppInstall);

  v118 = *(v0 + 8);

  return v118(v117);
}

uint64_t sub_1004C1F84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004C1FEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004C2054(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1004C20B4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void sub_1004C2124(uint64_t a1)
{
  type metadata accessor for DDMDeclaration(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PlainHTTP();
    if (v2 <= 0x3F)
    {
      type metadata accessor for LogKey();
      if (v3 <= 0x3F)
      {
        sub_1004C21F0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1004C21F0()
{
  if (!qword_100782AF8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100782AF8);
    }
  }
}

void sub_1004C2268(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  sub_100006D8C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v9 = a3;
    sub_1001F0C48(a4, a5);
    CheckedContinuation.resume(throwing:)();
  }

  else if (a2)
  {
    v10 = a2;
    sub_1001F0C48(a4, a5);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1004C2318(char a1, char a2, uint64_t a3)
{
  *(v3 + 96) = a3;
  *(v3 + 225) = a2;
  *(v3 + 224) = a1;
  v4 = type metadata accessor for Logger();
  *(v3 + 104) = v4;
  *(v3 + 112) = *(v4 - 8);
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  sub_1001F0C48(&unk_10077F8E0, &qword_10069F380);
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();

  return _swift_task_switch(sub_1004C2468, 0, 0);
}

uint64_t sub_1004C2468()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 225);
  v3 = *(v0 + 224);
  (*(*(v0 + 112) + 56))(*(v0 + 152), 1, 1, *(v0 + 104));
  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  *(v4 + 16) = v3;
  *(v4 + 17) = v2;
  *(v4 + 24) = v1;

  return _swift_task_switch(sub_1004C2540, 0, 0);
}

uint64_t sub_1004C2540()
{
  sub_100005934(v0[9].opaque[1], v0[9].opaque[0], &unk_10077F8E0, &qword_10069F380);
  type metadata accessor for LogActivity();
  v1 = swift_allocObject();
  v0[10].opaque[1] = v1;
  if (qword_10077E5A8 != -1)
  {
    swift_once();
  }

  v2 = _os_activity_create(&_mh_execute_header, "pollAvailableUpdates", qword_10078A090, OS_ACTIVITY_FLAG_DEFAULT);
  v0[5].opaque[0] = 0;
  v0[5].opaque[1] = 0;
  os_activity_scope_enter(v2, v0 + 5);
  swift_unknownObjectRelease();
  *(v1 + 16) = v0[5];
  if (qword_10077E598 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v3 = v0[1].opaque[1];
  if (v3)
  {
  }

  else
  {
    sub_1001F0C48(&qword_100784310, &unk_10069FA00);
    v3 = swift_allocObject();
    *(v3 + 24) = 0;
    *(v3 + 16) = 0;
  }

  v0[11].opaque[0] = v3;
  type metadata accessor for Transaction();
  v4 = swift_allocObject();
  v0[11].opaque[1] = v4;

  *(v4 + 16) = StaticString.description.getter();
  *(v4 + 24) = v5;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v4);
  os_unfair_lock_unlock(&dword_100788650);
  v6 = v0[8].opaque[1];
  v8 = v0[6].opaque[1];
  v7 = v0[7].opaque[0];
  sub_100005934(v0[9].opaque[0], v6, &unk_10077F8E0, &qword_10069F380);
  v9 = (*(v7 + 48))(v6, 1, v8);
  v10 = v0[9].opaque[0];
  if (v9 == 1)
  {
    sub_1000032A8(v0[9].opaque[0], &unk_10077F8E0, &qword_10069F380);

    v11 = 0;
  }

  else
  {
    v12 = v0[8].opaque[0];
    v13 = v0[7].opaque[0];
    v14 = v0[7].opaque[1];
    v15 = v0[6].opaque[1];
    (*(v13 + 32))(v12, v0[8].opaque[1], v15);
    (*(v13 + 16))(v14, v12, v15);
    type metadata accessor for SignpostInterval(0);
    swift_allocObject();
    v11 = sub_1005AD4D8("pollAvailableUpdates", 20, 2, v14);

    (*(v13 + 8))(v12, v15);
    sub_1000032A8(v10, &unk_10077F8E0, &qword_10069F380);
  }

  v0[12].opaque[0] = v11;
  v16 = v0[10].opaque[0];
  v0[3].opaque[0] = v1;
  v0[3].opaque[1] = v3;
  v0[4].opaque[0] = v4;
  v0[4].opaque[1] = v11;
  v17 = swift_task_alloc();
  v0[12].opaque[1] = v17;
  v17[2] = 0;
  v17[3] = v1;
  v17[4] = v3;
  v17[5] = v4;
  v17[6] = v11;
  v17[7] = &unk_1006AD990;
  v17[8] = v16;

  v18 = swift_task_alloc();
  v0[13].opaque[0] = v18;
  *v18 = v0;
  v18[1] = sub_1004C2A18;

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v18, &v0[3], &unk_10069F3A0, v17, 0, 0, 0xD000000000000033, 0x80000001006C49B0);
}

uint64_t sub_1004C2A18()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1004C2D74;
  }

  else
  {
    v2 = sub_1004C2BC8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004C2BC8()
{
  v1 = *(v0 + 152);

  sub_1000032A8(v1, &unk_10077F8E0, &qword_10069F380);

  return _swift_task_switch(sub_1004C2CAC, 0, 0);
}

uint64_t sub_1004C2CAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004C2D74()
{
  v1 = *(v0 + 152);

  sub_1000032A8(v1, &unk_10077F8E0, &qword_10069F380);

  return _swift_task_switch(sub_1004C2E58, 0, 0);
}

uint64_t sub_1004C2E58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004C2F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3;
  v7 = a2;
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1001F0E54;

  return sub_1004CB8B0(v7, v6, a4);
}

uint64_t sub_1004C2FCC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_10020A6D0(a1, &v4);
  sub_100006190(0, &qword_100781700, ACAccount_ptr);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1004C303C@<X0>(uint64_t a2@<X1>, void *a3@<X8>)
{
  v64 = a2;
  v68 = a3;
  v3 = type metadata accessor for URLQueryItem();
  v69 = *(v3 - 8);
  v70 = v3;
  v4 = __chkstk_darwin(v3);
  v71 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v67 = &v59 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v59 - v9;
  __chkstk_darwin(v8);
  v65 = &v59 - v11;
  URLQueryItem.init(name:value:)();

  v66 = v10;
  URLQueryItem.init(name:value:)();
  v74[0] = _swiftEmptyArrayStorage;
  sub_100526304(0, 13, 0);
  v12 = 0;
  v13 = v74[0];
  v14 = 0x80000001006C3350;
  v15 = 0x80000001006C3320;
  v16 = 0x80000001006C32F0;
  v17 = 0x80000001006C32D0;
  v18 = 0x80000001006C32A0;
  do
  {
    v19 = 0xE400000000000000;
    v20 = 1701667182;
    switch(*(&off_1007593D0 + v12 + 32))
    {
      case 1:
        v20 = 0xD000000000000010;
        v19 = v18;
        break;
      case 2:
        break;
      case 3:
        v19 = 0xE800000000000000;
        v20 = 0x656C746974627573;
        break;
      case 4:
        v20 = 0x614E747369747261;
        v19 = 0xEA0000000000656DLL;
        break;
      case 5:
        v20 = 0xD00000000000001ALL;
        v19 = v17;
        break;
      case 6:
        v20 = 0xD000000000000016;
        v19 = v16;
        break;
      case 7:
        v20 = 0x6146656369766564;
        v19 = 0xEE007365696C696DLL;
        break;
      case 8:
        v20 = 0xD00000000000001ALL;
        v19 = v15;
        break;
      case 9:
        v19 = 0xE900000000000074;
        v20 = 0x6867697279706F63;
        break;
      case 0xA:
        v19 = 0xE700000000000000;
        v20 = 0x616C7545736168;
        break;
      case 0xB:
        v20 = 0xD000000000000010;
        v19 = v14;
        break;
      case 0xC:
        v19 = 0xEA00000000006C72;
        v20 = 0x5565746973626577;
        break;
      default:
        v20 = 0xD000000000000012;
        v19 = 0x80000001006C3280;
        break;
    }

    v74[0] = v13;
    v22 = *(v13 + 16);
    v21 = *(v13 + 24);
    if (v22 >= v21 >> 1)
    {
      v60 = v18;
      v61 = v17;
      v62 = v16;
      v63 = v14;
      v24 = v15;
      sub_100526304((v21 > 1), v22 + 1, 1);
      v18 = v60;
      v17 = v61;
      v16 = v62;
      v14 = v63;
      v15 = v24;
      v13 = v74[0];
    }

    ++v12;
    *(v13 + 16) = v22 + 1;
    v23 = v13 + 16 * v22;
    *(v23 + 32) = v20;
    *(v23 + 40) = v19;
  }

  while (v12 != 13);
  v74[0] = _swiftEmptyArrayStorage;
  sub_100526304(0, 10, 0);
  v25 = 0;
  v26 = v74[0];
  v27 = 0x80000001006C3260;
  v28 = 0x80000001006C3240;
  v29 = 0x80000001006C3210;
  v30 = 0x80000001006C31F0;
  do
  {
    v31 = *(&off_100759400 + v25 + 32);
    if (v31 == 8)
    {
      v32 = 0x656C746974627573;
    }

    else
    {
      v32 = 0xD000000000000010;
    }

    if (v31 == 8)
    {
      v33 = 0xE800000000000000;
    }

    else
    {
      v33 = v27;
    }

    if (v31 == 7)
    {
      v32 = 0xD000000000000011;
      v33 = v28;
    }

    if (v31 == 5)
    {
      v34 = 0x73726566666FLL;
    }

    else
    {
      v34 = 0x6B726F77747261;
    }

    if (v31 == 5)
    {
      v35 = 0xE600000000000000;
    }

    else
    {
      v35 = 0xE700000000000000;
    }

    if (*(&off_100759400 + v25 + 32) <= 6u)
    {
      v32 = v34;
      v33 = v35;
    }

    if (v31 == 3)
    {
      v36 = 0xD000000000000010;
    }

    else
    {
      v36 = 0x7470697263736564;
    }

    if (v31 == 3)
    {
      v37 = v29;
    }

    else
    {
      v37 = 0xEB000000006E6F69;
    }

    if (v31 == 2)
    {
      v36 = 0xD000000000000011;
      v37 = v30;
    }

    v38 = 0x6449656C646E7562;
    if (*(&off_100759400 + v25 + 32))
    {
      v38 = 0xD000000000000011;
      v39 = 0x80000001006C31D0;
    }

    else
    {
      v39 = 0xE800000000000000;
    }

    if (*(&off_100759400 + v25 + 32) <= 1u)
    {
      v36 = v38;
      v37 = v39;
    }

    if (*(&off_100759400 + v25 + 32) <= 4u)
    {
      v40 = v36;
    }

    else
    {
      v40 = v32;
    }

    if (*(&off_100759400 + v25 + 32) <= 4u)
    {
      v41 = v37;
    }

    else
    {
      v41 = v33;
    }

    v74[0] = v26;
    v43 = *(v26 + 16);
    v42 = *(v26 + 24);
    if (v43 >= v42 >> 1)
    {
      v61 = v29;
      v62 = v28;
      v63 = v27;
      v60 = v30;
      sub_100526304((v42 > 1), v43 + 1, 1);
      v30 = v60;
      v29 = v61;
      v28 = v62;
      v27 = v63;
      v26 = v74[0];
    }

    ++v25;
    *(v26 + 16) = v43 + 1;
    v44 = v26 + 16 * v43;
    *(v44 + 32) = v40;
    *(v44 + 40) = v41;
  }

  while (v25 != 10);
  v74[0] = v13;
  sub_1006540A0(v26);
  sub_1001F0C48(&unk_10077FB40, &qword_10069E770);
  sub_1001F766C();
  BidirectionalCollection<>.joined(separator:)();

  v45 = v67;
  URLQueryItem.init(name:value:)();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  URLQueryItem.init(name:value:)();

  v73 = 0;
  memset(v72, 0, sizeof(v72));
  sub_1005D7D18(v72, v74);
  sub_1000032A8(v72, &qword_1007850E8, &qword_1006ADA00);
  sub_1001F0C48(&qword_10077EAD0, &qword_10069EA78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006A8420;
  v47 = v70;
  *(inited + 56) = v70;
  *(inited + 64) = &off_10076DDB8;
  v48 = sub_10020A748((inited + 32));
  v49 = v69;
  v50 = *(v69 + 16);
  v51 = v65;
  v50(v48, v65, v47);
  *(inited + 96) = v47;
  *(inited + 104) = &off_10076DDB8;
  v52 = sub_10020A748((inited + 72));
  v53 = v66;
  v50(v52, v66, v47);
  *(inited + 136) = v47;
  *(inited + 144) = &off_10076DDB8;
  v54 = sub_10020A748((inited + 112));
  v50(v54, v45, v47);
  *(inited + 176) = v47;
  *(inited + 184) = &off_10076DDB8;
  v55 = sub_10020A748((inited + 152));
  v56 = v71;
  v50(v55, v71, v47);
  sub_10020A980(v74, inited + 192);
  sub_1005D67B0(inited, v68);
  swift_setDeallocating();
  sub_1001F0C48(&qword_10077EAD8, &qword_10069EA80);
  swift_arrayDestroy();
  sub_10000710C(v74);
  v57 = *(v49 + 8);
  v57(v56, v47);
  v57(v45, v47);
  v57(v53, v47);
  return (v57)(v51, v47);
}

uint64_t sub_1004C3938(void **a1)
{
  v1 = *a1;
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  v4 = v3;
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  sub_1003AA170(0, v2, v4, v5, v6, v1);
}

uint64_t sub_1004C3A00@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v74 = a4;
  v75 = a3;
  v67 = a2;
  v5 = type metadata accessor for Logger();
  v69 = *(v5 - 8);
  v70 = v5;
  __chkstk_darwin(v5);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001F0C48(&qword_10077FE28, &unk_1006A30C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v65 - v9;
  v11 = type metadata accessor for Platform();
  v76 = *(v11 - 8);
  v77 = v11;
  __chkstk_darwin(v11);
  v72 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URL();
  __chkstk_darwin(v13 - 8);
  v14 = sub_1001F0C48(&qword_10077E958, &qword_10069FC00);
  __chkstk_darwin(v14 - 8);
  v16 = &v65 - v15;
  v17 = type metadata accessor for MediaAPIUpdates.App(0);
  v73 = *(v17 - 1);
  __chkstk_darwin(v17);
  v19 = (&v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = a1;
  v21 = [v20 bundleIdentifier];
  if (v21)
  {
    v22 = v21;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  v68 = v23;
  *v19 = v23;
  v19[1] = v25;
  v71 = v25;
  v26 = [v20 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  FilePath.init(_:)();
  v27 = type metadata accessor for FilePath();
  v28 = *(v27 - 8);
  result = (*(v28 + 48))(v16, 1, v27);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  v30 = v17[5];
  (*(v28 + 32))(v19 + v30, v16, v27);
  (*(v28 + 56))(v19 + v30, 0, 1, v27);
  sub_1004C53A4([v20 platform], v10);
  v32 = v76;
  v31 = v77;
  if ((*(v76 + 48))(v10, 1, v77) != 1)
  {
    v33 = v72;
    (*(v32 + 32))(v72, v10, v31);
    (*(v32 + 16))(v19 + v17[10], v33, v31);
    v34 = [v20 managedPersonas];

    v35 = v7;
    if (v34)
    {
      v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v36[2])
      {
        v37 = v7;
        v38 = v30;
        v39 = v36[4];
        v40 = v36[5];

        v41 = (v19 + v17[6]);
        *v41 = v39;
        v41[1] = v40;
        v35 = v37;
        v30 = v38;
        goto LABEL_12;
      }
    }

    v42 = (v19 + v17[6]);
    *v42 = 0;
    v42[1] = 0;
LABEL_12:
    v43 = sub_10060D18C();
    v66 = v30;
    if (v43)
    {
      v44 = v43;
      v45 = [v43 itemID];
      if (v45)
      {
        v46 = v45;
        v47 = [v44 softwareVersionExternalIdentifier];
        if (v47)
        {
          v48 = v47;
          v49 = [v46 longLongValue];
          if ((v49 & 0x8000000000000000) == 0)
          {
            v50 = v49;
            v70 = [v48 longLongValue];

            v51 = *(v32 + 8);
            v31 = v77;
            v51(v72, v77);
            v52 = v70;
            if (v70 > 0)
            {
              *(v19 + v17[7]) = v50;
              *(v19 + v17[8]) = v52;
              v53 = (v19 + v17[9]);
              v55 = v74;
              v54 = v75;
              *v53 = v67;
              v53[1] = v54;
              sub_1004D2D7C(v19, v55, type metadata accessor for MediaAPIUpdates.App);
              (*(v73 + 56))(v55, 0, 1, v17);
              return sub_1004D2DE4(v19, type metadata accessor for MediaAPIUpdates.App);
            }

            goto LABEL_32;
          }

          v51 = *(v32 + 8);
          v64 = v77;
          v51(v72, v77);

          v31 = v64;

LABEL_31:

LABEL_32:
          sub_1000032A8(v19 + v66, &qword_10077E958, &qword_10069FC00);
          sub_1004D2F70(*(v19 + v17[6]), *(v19 + v17[6] + 8));
          v51(v19 + v17[10], v31);
          return (*(v73 + 56))(v74, 1, 1, v17);
        }

        v31 = v77;
      }

      else
      {
        v46 = v44;
      }
    }

    static Logger.updates.getter();
    v56 = v71;

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v78 = v60;
      *v59 = 136446210;
      if (v56)
      {
        v61 = v68;
      }

      else
      {
        v61 = 0xD000000000000019;
      }

      v75 = v35;
      if (v56)
      {
        v62 = v56;
      }

      else
      {
        v62 = 0x80000001006CC5F0;
      }

      v63 = sub_1002346CC(v61, v62, &v78);

      *(v59 + 4) = v63;
      _os_log_impl(&_mh_execute_header, v57, v58, "%{public}s has missing metadata", v59, 0xCu);
      sub_10000710C(v60);

      v31 = v77;

      (*(v69 + 8))(v75, v70);
    }

    else
    {

      (*(v69 + 8))(v35, v70);
    }

    v51 = *(v76 + 8);
    v51(v72, v31);
    goto LABEL_31;
  }

  sub_1000032A8(v10, &qword_10077FE28, &unk_1006A30C0);

  sub_1000032A8(v19 + v30, &qword_10077E958, &qword_10069FC00);
  return (*(v73 + 56))(v74, 1, 1, v17);
}