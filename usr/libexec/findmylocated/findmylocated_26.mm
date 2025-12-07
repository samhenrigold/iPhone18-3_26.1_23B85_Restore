uint64_t sub_1002C2F58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002C2FD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002C3054()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002C30D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003690;

  return sub_1002D3B90();
}

uint64_t sub_1002C3168(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for FriendshipRequestResult();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_1002C322C, v2, 0);
}

uint64_t sub_1002C322C()
{
  v9 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 64) = sub_10000A6F0(v1, qword_1005E0000);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000018, 0x80000001004E6D30, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "Sending %{public}s to server", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_1002C33DC;

  return daemon.getter();
}

uint64_t sub_1002C33DC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 80) = a1;

  v3 = swift_task_alloc();
  *(v2 + 88) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for CommandManager(0);
  v6 = sub_100009560(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009560(&qword_1005A90C8, type metadata accessor for CommandManager, &unk_1004C23F8);
  *v3 = v9;
  v3[1] = sub_1002C35B8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1002C35B8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[12] = a1;
  v3[13] = v1;

  if (v1)
  {
    v5 = v3[4];

    return _swift_task_switch(sub_1002C3AAC, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[14] = v6;
    *v6 = v4;
    v6[1] = sub_1002C3744;
    v7 = v3[2];
    v8 = v3[3];

    return sub_10005D170(v7, v8);
  }
}

uint64_t sub_1002C3744()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_1002C3B1C;
  }

  else
  {
    v4 = sub_1002C3870;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002C3870()
{
  v15 = v0;
  (*(v0[6] + 16))(v0[7], v0[2], v0[5]);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_10000D01C(0xD000000000000018, 0x80000001004E6D30, &v14);
    *(v7 + 12) = 2080;
    sub_100009560(&qword_1005A91D8, &type metadata accessor for FriendshipRequestResult, &protocol conformance descriptor for FriendshipRequestResult);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    (*(v5 + 8))(v4, v6);
    v11 = sub_10000D01C(v8, v10, &v14);

    *(v7 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s result %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v5 + 8))(v4, v6);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1002C3AAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002C3B1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002C3B8C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1002C3BB0, v2, 0);
}

uint64_t sub_1002C3BB0()
{
  v9 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 40) = sub_10000A6F0(v1, qword_1005E0000);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004E6D70, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "Sending %{public}s to server", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_1002C3D60;

  return daemon.getter();
}

uint64_t sub_1002C3D60(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[7] = a1;

  v3 = swift_task_alloc();
  v2[8] = v3;
  v4 = type metadata accessor for Daemon();
  v2[9] = v4;
  v5 = type metadata accessor for CloudStorageService();
  v6 = sub_100009560(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[10] = v6;
  v7 = sub_100009560(&qword_1005AD568, type metadata accessor for CloudStorageService, &unk_1004D03B0);
  *v3 = v9;
  v3[1] = sub_1002C3F40;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1002C3F40(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[11] = a1;
  v3[12] = v1;

  if (v1)
  {
    v5 = v3[4];

    return _swift_task_switch(sub_1002C48A8, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[13] = v6;
    *v6 = v4;
    v6[1] = sub_1002C40C8;

    return sub_1001BE02C();
  }
}

uint64_t sub_1002C40C8(char a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 168) = a1;

  return _swift_task_switch(sub_1002C41E0, v2, 0);
}

uint64_t sub_1002C41E0(uint64_t a1)
{
  v11 = v1;
  if (*(v1 + 168) == 1)
  {
    v2 = swift_task_alloc();
    *(v1 + 112) = v2;
    *v2 = v1;
    v2[1] = sub_1002C43CC;

    return daemon.getter();
  }

  else
  {
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10 = v6;
      *v5 = 136446210;
      *(v5 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004E6D70, &v10);
      _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s Manatee is not available!", v5, 0xCu);
      sub_100004984(v6);
    }

    sub_10006DC90();
    swift_allocError();
    *v7 = 4;
    swift_willThrow();

    v8 = *(v1 + 8);

    return v8();
  }
}

uint64_t sub_1002C43CC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 120) = a1;

  v5 = swift_task_alloc();
  *(v3 + 128) = v5;
  v6 = type metadata accessor for CommandManager(0);
  v7 = sub_100009560(&qword_1005A90C8, type metadata accessor for CommandManager, &unk_1004C23F8);
  *v5 = v4;
  v5[1] = sub_1002C4580;
  v8 = *(v2 + 80);
  v9 = *(v2 + 72);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1002C4580(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  if (v1)
  {
    v5 = v3[4];

    return _swift_task_switch(sub_1002C490C, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[19] = v6;
    *v6 = v4;
    v6[1] = sub_1002C470C;
    v7 = v3[2];
    v8 = v3[3];

    return sub_100060778(v7, v8);
  }
}

uint64_t sub_1002C470C()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_1002C497C;
  }

  else
  {
    v4 = sub_1002C4838;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002C4838()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002C48A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002C490C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002C497C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002C49EC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Handle();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  sub_10004B564(&qword_1005A9188, &unk_1004D80D0);
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for Friend();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_1002C4B4C, v1, 0);
}

uint64_t sub_1002C4B4C()
{
  v9 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 96) = sub_10000A6F0(v1, qword_1005E0000);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000015, 0x80000001004E6CF0, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *v6 = v0;
  v6[1] = sub_1002C4CFC;

  return daemon.getter();
}

uint64_t sub_1002C4CFC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[14] = a1;

  v3 = swift_task_alloc();
  v2[15] = v3;
  v4 = type metadata accessor for Daemon();
  v2[16] = v4;
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_100009560(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[17] = v6;
  v7 = sub_100009560(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_1002C4EDC;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1002C4EDC(uint64_t a1)
{
  v4 = *v2;
  v4[18] = a1;
  v4[19] = v1;

  if (v1)
  {
    v5 = v4[3];
    v6 = sub_1002C5C34;
  }

  else
  {

    v6 = sub_1002C5014;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002C5014()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v0 + 160) = v4;
  *(v4 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v4 + v3, enum case for HandleType.following(_:), v1);
  v5 = swift_task_alloc();
  *(v0 + 168) = v5;
  *v5 = v0;
  v5[1] = sub_1002C5178;

  return sub_10001C61C(v4, 1);
}

uint64_t sub_1002C5178(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 176) = a1;

  return _swift_task_switch(sub_1002C52AC, v2, 0);
}

uint64_t sub_1002C52AC()
{
  v26 = v0;
  v1 = v0[22];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[2];
  *(swift_task_alloc() + 16) = v5;
  sub_10044FE2C(sub_1002CE78C, v1, v4);

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v7 = v0[5];
    v6 = v0[6];
    v8 = v0[4];
    v9 = v0[2];
    sub_100002CE0(v0[8], &qword_1005A9188, &unk_1004D80D0);
    (*(v7 + 16))(v6, v9, v8);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[5];
    v13 = v0[6];
    v15 = v0[4];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v25[0] = swift_slowAlloc();
      *v16 = 136446723;
      *(v16 + 4) = sub_10000D01C(0xD000000000000015, 0x80000001004E6CF0, v25);
      *(v16 + 12) = 2160;
      *(v16 + 14) = 1752392040;
      *(v16 + 22) = 2081;
      v17 = Handle.identifier.getter();
      v19 = v18;
      (*(v14 + 8))(v13, v15);
      v20 = sub_10000D01C(v17, v19, v25);

      *(v16 + 24) = v20;
      _os_log_impl(&_mh_execute_header, v10, v11, "%{public}s missing following serverID for %{private,mask.hash}s!", v16, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v14 + 8))(v13, v15);
    }

    sub_10006DC90();
    swift_allocError();
    *v22 = 1;
    swift_willThrow();

    v23 = v0[1];

    return v23();
  }

  else
  {
    (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
    v21 = swift_task_alloc();
    v0[23] = v21;
    *v21 = v0;
    v21[1] = sub_1002C5638;

    return daemon.getter();
  }
}

uint64_t sub_1002C5638(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 192) = a1;

  v5 = swift_task_alloc();
  *(v3 + 200) = v5;
  v6 = type metadata accessor for NIRangingService(0);
  v7 = sub_100009560(&qword_1005AD560, type metadata accessor for NIRangingService, &unk_1004D7F50);
  *v5 = v4;
  v5[1] = sub_1002C57EC;
  v8 = *(v2 + 136);
  v9 = *(v2 + 128);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1002C57EC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 208) = a1;
  *(v4 + 216) = v1;

  v5 = *(v3 + 24);
  if (v1)
  {
    v6 = sub_1002C5CC8;
  }

  else
  {
    v6 = sub_1002C593C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002C593C(uint64_t a1)
{
  Friend.handle.getter();
  v2 = swift_task_alloc();
  *(v1 + 224) = v2;
  *v2 = v1;
  v2[1] = sub_1002C59E0;
  v3 = *(v1 + 56);

  return sub_1003C94F0(v3);
}

uint64_t sub_1002C59E0()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 232) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 24);
  if (v0)
  {
    v7 = sub_1002C5D7C;
  }

  else
  {
    v7 = sub_1002C5B68;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1002C5B68()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002C5C34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002C5CC8()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002C5D7C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002C5E5C()
{
  v9 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0000);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000013, 0x80000001004E6CD0, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_1002C6008;

  return daemon.getter();
}

uint64_t sub_1002C6008(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 32) = a1;

  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for NIRangingService(0);
  v6 = sub_100009560(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009560(&qword_1005AD560, type metadata accessor for NIRangingService, &unk_1004D7F50);
  *v3 = v9;
  v3[1] = sub_1002C61E4;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1002C61E4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[6] = a1;
  v3[7] = v1;

  if (v1)
  {
    v5 = v3[2];

    return _swift_task_switch(sub_1002CE9C0, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[8] = v6;
    *v6 = v4;
    v6[1] = sub_1002C636C;

    return sub_1003CA834();
  }
}

uint64_t sub_1002C636C()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_1002CE9BC;
  }

  else
  {
    v4 = sub_1002CE9C8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002C64B4()
{
  v9 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0000);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004E6C30, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s NOT stopping config ranging session. App needs to stop calling this", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1002C662C()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return _swift_task_switch(sub_1002C6674, v0, 0);
}

uint64_t sub_1002C6674()
{
  v9 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 32) = v1;
  sub_10000A6F0(v1, qword_1005E0000);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000014, 0x80000001004E6CB0, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_1002C6824;

  return daemon.getter();
}

uint64_t sub_1002C6824(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 48) = a1;

  v3 = swift_task_alloc();
  *(v2 + 56) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for CloudStorageService();
  v6 = sub_100009560(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009560(&qword_1005AD568, type metadata accessor for CloudStorageService, &unk_1004D03B0);
  *v3 = v9;
  v3[1] = sub_1002C6A00;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1002C6A00(uint64_t a1)
{
  v3 = *v2;
  v3[8] = a1;
  v3[9] = v1;

  if (v1)
  {
    v4 = v3[2];
    v5 = sub_100253EE0;
  }

  else
  {
    v6 = v3[2];

    v5 = sub_1002C6B28;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1002C6B28()
{
  v1 = v0[8];
  v2 = v0[3];
  v3 = swift_allocObject();
  v0[10] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_1002C6C28;

  return withTimeout<A>(_:block:)(v4, 0x8155A43676E00000, 6, &unk_1004D32D0, v3, &type metadata for () + 1);
}

uint64_t sub_1002C6C28()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);
    v4 = sub_1002C7264;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = sub_1002C6D50;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002C6D6C()
{
  v9 = v0;
  if (qword_1005A8070 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(*(v0 + 32), qword_1005DFE80);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_10000D01C(0xD00000000000001ELL, 0x80000001004E6C90, &v8);
    _os_log_impl(&_mh_execute_header, v1, v2, "Deleting CloudKit zone: %s", v3, 0xCu);
    sub_100004984(v4);
  }

  else
  {
  }

  v7 = (&async function pointer to dispatch thunk of CloudKitStorage.delete(zoneName:) + async function pointer to dispatch thunk of CloudKitStorage.delete(zoneName:));
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  v5[1] = sub_1002C6F5C;

  return v7(0xD00000000000001ELL, 0x80000001004E6C90);
}

uint64_t sub_1002C6F5C()
{
  v2 = *v1;
  v2[14] = v0;

  if (v0)
  {
    v3 = v2[2];

    return _swift_task_switch(sub_1002C7200, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[15] = v4;
    *v4 = v2;
    v4[1] = sub_1002C70D4;

    return sub_1001C177C(&off_10058BCB0);
  }
}

uint64_t sub_1002C70D4()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_1002C72D4;
  }

  else
  {
    v4 = sub_100253E7C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002C7200()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002C7264()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002C72D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002C7338(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = type metadata accessor for CloudKitStorage.State();
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_1002C73F8, 0, 0);
}

uint64_t sub_1002C73F8()
{
  v9 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[6] = sub_10000A6F0(v1, qword_1005E0000);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000014, 0x80000001004E6CB0, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Waiting for CloudKit to be available", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = v0[2];
  (*(v0[4] + 104))(v0[5], enum case for CloudKitStorage.State.available(_:), v0[3]);

  return _swift_task_switch(sub_1002C759C, v6, 0);
}

uint64_t sub_1002C759C()
{
  v4 = (&async function pointer to dispatch thunk of CloudKitStorage.await(state:) + async function pointer to dispatch thunk of CloudKitStorage.await(state:));
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1002C764C;
  v2 = *(v0 + 40);

  return v4(v2);
}

uint64_t sub_1002C764C()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = v2[2];
    v4 = sub_1002C78BC;
  }

  else
  {
    (*(v2[4] + 8))(v2[5], v2[3]);
    v4 = sub_1002C7780;
    v3 = 0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002C7780(uint64_t a1)
{
  v9 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000014, 0x80000001004E6CB0, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s CloudKit is available.", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_1002C78BC()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  return _swift_task_switch(sub_1002CE9C4, 0, 0);
}

uint64_t sub_1002C7934(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = type metadata accessor for CloudKitCoordinator.Database();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  sub_10004B564(&qword_1005AF228, &unk_1004D0440);
  v2[8] = swift_task_alloc();
  sub_10004B564(&unk_1005AECE8, &qword_1004D07A0);
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for FriendSharedSecretsRecord(0);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v2[13] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v6 = type metadata accessor for HandleType();
  v2[17] = v6;
  v2[18] = *(v6 - 8);
  v2[19] = swift_task_alloc();
  sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  v2[20] = swift_task_alloc();
  v7 = type metadata accessor for Handle();
  v2[21] = v7;
  v2[22] = *(v7 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();

  return _swift_task_switch(sub_1002C7CA8, v1, 0);
}

uint64_t sub_1002C7CA8()
{
  v22 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  v0[29] = sub_10000A6F0(v5, qword_1005E0000);
  v6 = *(v3 + 16);
  v0[30] = v6;
  v0[31] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[28];
  v12 = v0[21];
  v11 = v0[22];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v13 = 136446723;
    *(v13 + 4) = sub_10000D01C(0xD000000000000015, 0x80000001004E6C70, &v21);
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    v14 = Handle.identifier.getter();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = sub_10000D01C(v14, v16, &v21);

    *(v13 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s for handle: %{private,mask.hash}s", v13, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  v0[32] = v17;
  v19 = swift_task_alloc();
  v0[33] = v19;
  *v19 = v0;
  v19[1] = sub_1002C7F3C;

  return daemon.getter();
}

uint64_t sub_1002C7F3C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[34] = a1;

  v3 = swift_task_alloc();
  v2[35] = v3;
  v4 = type metadata accessor for Daemon();
  v2[36] = v4;
  v5 = type metadata accessor for CloudStorageService();
  v6 = sub_100009560(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[37] = v6;
  v7 = sub_100009560(&qword_1005AD568, type metadata accessor for CloudStorageService, &unk_1004D03B0);
  *v3 = v9;
  v3[1] = sub_1002C811C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1002C811C(uint64_t a1)
{
  v3 = *v2;
  v3[38] = a1;
  v3[39] = v1;

  if (v1)
  {
    v4 = v3[3];
    v5 = sub_1002CA2EC;
  }

  else
  {
    v6 = v3[3];

    v5 = sub_1002C8244;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1002C8244()
{
  v1 = v0[38];
  v2 = v0[4];
  v3 = swift_allocObject();
  v0[40] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  v4 = swift_task_alloc();
  v0[41] = v4;
  *v4 = v0;
  v4[1] = sub_1002C8344;

  return withTimeout<A>(_:block:)(v4, 0x8155A43676E00000, 6, &unk_1004D32A8, v3, &type metadata for () + 1);
}

uint64_t sub_1002C8344()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_1002CA40C;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_1002C846C;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002C846C()
{
  v1 = swift_task_alloc();
  *(v0 + 344) = v1;
  *v1 = v0;
  v1[1] = sub_1002C84FC;

  return daemon.getter();
}

uint64_t sub_1002C84FC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 352) = a1;

  v5 = swift_task_alloc();
  *(v3 + 360) = v5;
  v6 = type metadata accessor for DataManager(0);
  v7 = sub_100009560(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v5 = v4;
  v5[1] = sub_1002C86B0;
  v8 = *(v2 + 296);
  v9 = *(v2 + 288);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1002C86B0(uint64_t a1)
{
  v3 = *v2;
  v3[46] = a1;
  v3[47] = v1;

  if (v1)
  {
    v4 = v3[3];
    v5 = sub_1002CA538;
  }

  else
  {
    v6 = v3[3];

    v5 = sub_1002C87D8;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1002C87D8()
{
  (*(v0[18] + 104))(v0[19], enum case for HandleType.following(_:), v0[17]);
  v1 = swift_task_alloc();
  v0[48] = v1;
  *v1 = v0;
  v1[1] = sub_1002C889C;
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[2];

  return sub_1001E5DD0(v2, v4, v3, 0);
}

uint64_t sub_1002C889C()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v4 = *(*v0 + 24);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_1002C8A08, v4, 0);
}

uint64_t sub_1002C8A08()
{
  v44 = v0;
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = v0[30];
    v5 = v0[23];
    v6 = v0[2];
    sub_100002CE0(v3, &qword_1005B3360, &unk_1004C6AA0);
    v4(v5, v6, v2);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[32];
    v11 = v0[23];
    v12 = v0[21];
    if (v9)
    {
      v13 = swift_slowAlloc();
      v43[0] = swift_slowAlloc();
      *v13 = 136446723;
      *(v13 + 4) = sub_10000D01C(0xD000000000000015, 0x80000001004E6C70, v43);
      *(v13 + 12) = 2160;
      *(v13 + 14) = 1752392040;
      *(v13 + 22) = 2081;
      v14 = Handle.identifier.getter();
      v16 = v15;
      v10(v11, v12);
      v17 = sub_10000D01C(v14, v16, v43);

      *(v13 + 24) = v17;
      _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s Missing serverID for handle: %{private,mask.hash}s", v13, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v10(v11, v12);
    }

    sub_10006DC90();
    swift_allocError();
    *v36 = 1;
    swift_willThrow();

LABEL_14:

    v41 = v0[1];

    return v41();
  }

  v18 = v0[14];
  v19 = v0[15];
  v20 = v0[13];
  (*(v1 + 32))(v0[27], v3, v2);
  Handle.peerID.getter();
  if ((*(v19 + 48))(v20, 1, v18) == 1)
  {
    v21 = v0[30];
    v22 = v0[24];
    v23 = v0[21];
    v24 = v0[2];
    sub_100002CE0(v0[13], &qword_1005A96E0, &qword_1004C2A80);
    v21(v22, v24, v23);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    v27 = os_log_type_enabled(v25, v26);
    v28 = v0[32];
    v29 = v0[24];
    v30 = v0[21];
    if (v27)
    {
      v31 = swift_slowAlloc();
      v43[0] = swift_slowAlloc();
      *v31 = 136446723;
      *(v31 + 4) = sub_10000D01C(0xD000000000000015, 0x80000001004E6C70, v43);
      *(v31 + 12) = 2160;
      *(v31 + 14) = 1752392040;
      *(v31 + 22) = 2081;
      v32 = Handle.identifier.getter();
      v34 = v33;
      v28(v29, v30);
      v35 = sub_10000D01C(v32, v34, v43);

      *(v31 + 24) = v35;
      _os_log_impl(&_mh_execute_header, v25, v26, "%{public}s Missing peerID for handle: %{private,mask.hash}s", v31, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v28(v29, v30);
    }

    v37 = v0[32];
    v38 = v0[27];
    v39 = v0[21];
    sub_10006DC90();
    swift_allocError();
    *v40 = 1;
    swift_willThrow();

    v37(v38, v39);
    goto LABEL_14;
  }

  (*(v0[15] + 32))(v0[16], v0[13], v0[14]);

  return _swift_task_switch(sub_1002C8FF0, 0, 0);
}

uint64_t sub_1002C8FF0()
{
  v1 = swift_task_alloc();
  v0[49] = v1;
  *v1 = v0;
  v1[1] = sub_1002C9090;
  v2 = v0[16];
  v3 = v0[9];

  return sub_1001C4430(v3, v2);
}

uint64_t sub_1002C9090()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_1002C95A0;
  }

  else
  {
    v4 = sub_1002C91BC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002C91BC()
{
  v30 = v0;
  v1 = v0[9];
  if ((*(v0[11] + 48))(v1, 1, v0[10]) == 1)
  {
    v2 = v0[30];
    v3 = v0[25];
    v4 = v0[21];
    v5 = v0[2];
    sub_100002CE0(v1, &unk_1005AECE8, &qword_1004D07A0);
    v2(v3, v5, v4);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[32];
    v10 = v0[25];
    v11 = v0[21];
    if (v8)
    {
      v12 = swift_slowAlloc();
      v29[0] = swift_slowAlloc();
      *v12 = 136446723;
      *(v12 + 4) = sub_10000D01C(0xD000000000000015, 0x80000001004E6C70, v29);
      *(v12 + 12) = 2160;
      *(v12 + 14) = 1752392040;
      *(v12 + 22) = 2081;
      v13 = Handle.identifier.getter();
      v15 = v14;
      v9(v10, v11);
      v16 = sub_10000D01C(v13, v15, v29);

      *(v12 + 24) = v16;
      _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s Missing friendSharedSecretsRecord for handle: %{private,mask.hash}s", v12, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v9(v10, v11);
    }

    v20 = v0[32];
    v21 = v0[27];
    v22 = v0[21];
    v24 = v0[15];
    v23 = v0[16];
    v25 = v0[14];
    sub_10006DC90();
    swift_allocError();
    *v26 = 1;
    swift_willThrow();

    (*(v24 + 8))(v23, v25);
    v20(v21, v22);

    v27 = v0[1];

    return v27();
  }

  else
  {
    v17 = v0[38];
    v18 = v0[12];
    sub_1001B1ABC(v1, v18);
    v19 = swift_task_alloc();
    v0[51] = v19;
    *(v19 + 16) = v18;

    return _swift_task_switch(sub_1002C9710, v17, 0);
  }
}

uint64_t sub_1002C95A0()
{
  v1 = v0[32];
  v2 = v0[27];
  v3 = v0[21];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];

  (*(v5 + 8))(v4, v6);
  v1(v2, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1002C9710()
{
  v5 = (&async function pointer to dispatch thunk of CloudKitStorage.changeSet(block:) + async function pointer to dispatch thunk of CloudKitStorage.changeSet(block:));
  v1 = swift_task_alloc();
  v0[52] = v1;
  *v1 = v0;
  v1[1] = sub_1002C97D8;
  v2 = v0[51];
  v3 = v0[8];

  return v5(v3, &unk_1004D32B8, v2);
}

uint64_t sub_1002C97D8()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v3 = *(v2 + 304);
    v4 = sub_1002C9B70;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_1002C9900;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002C9900()
{
  v1 = v0[38];
  (*(v0[6] + 104))(v0[7], enum case for CloudKitCoordinator.Database.private(_:), v0[5]);

  return _swift_task_switch(sub_1002C9988, v1, 0);
}

uint64_t sub_1002C9988()
{
  v5 = (&async function pointer to dispatch thunk of CloudKitStorage.apply(changeSet:database:) + async function pointer to dispatch thunk of CloudKitStorage.apply(changeSet:database:));
  v1 = swift_task_alloc();
  v0[54] = v1;
  *v1 = v0;
  v1[1] = sub_1002C9A38;
  v2 = v0[7];
  v3 = v0[8];

  return v5(v3, v2);
}

uint64_t sub_1002C9A38()
{
  v2 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {
    v3 = v2[38];
    v4 = sub_1002CA0BC;
  }

  else
  {
    v5 = v2[3];
    (*(v2[6] + 8))(v2[7], v2[5]);
    v4 = sub_1002C9D6C;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002C9B70()
{
  v1 = *(v0 + 24);

  return _swift_task_switch(sub_1002C9BDC, v1, 0);
}

uint64_t sub_1002C9BDC()
{
  v1 = v0[32];
  v2 = v0[27];
  v3 = v0[21];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];
  v7 = v0[12];

  (*(v5 + 8))(v4, v6);
  v1(v2, v3);
  sub_1002CE88C(v7, type metadata accessor for FriendSharedSecretsRecord);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1002C9D6C()
{
  v28 = v0;
  (*(v0 + 240))(*(v0 + 208), *(v0 + 16), *(v0 + 168));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 256);
  v5 = *(v0 + 208);
  v6 = *(v0 + 216);
  v7 = *(v0 + 168);
  v9 = *(v0 + 120);
  v8 = *(v0 + 128);
  v26 = *(v0 + 112);
  v25 = *(v0 + 64);
  if (v3)
  {
    v21 = v2;
    v10 = *(v0 + 256);
    v11 = swift_slowAlloc();
    v24 = v6;
    v12 = swift_slowAlloc();
    v27 = v12;
    *v11 = 141558275;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    v13 = Handle.identifier.getter();
    v14 = v7;
    v22 = v8;
    v23 = v7;
    v15 = v13;
    v17 = v16;
    v10(v5, v14);
    v18 = sub_10000D01C(v15, v17, &v27);

    *(v11 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v1, v21, "Successfully removed peer token for handle: %{private,mask.hash}s", v11, 0x16u);
    sub_100004984(v12);

    sub_100002CE0(v25, &qword_1005AF228, &unk_1004D0440);
    (*(v9 + 8))(v22, v26);
    v10(v24, v23);
  }

  else
  {

    v4(v5, v7);
    sub_100002CE0(v25, &qword_1005AF228, &unk_1004D0440);
    (*(v9 + 8))(v8, v26);
    v4(v6, v7);
  }

  sub_1002CE88C(*(v0 + 96), type metadata accessor for FriendSharedSecretsRecord);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1002CA0BC()
{
  v1 = v0[3];
  (*(v0[6] + 8))(v0[7], v0[5]);

  return _swift_task_switch(sub_1002CA138, v1, 0);
}

uint64_t sub_1002CA138()
{
  v10 = v0[32];
  v1 = v0[27];
  v2 = v0[21];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  v6 = v0[12];
  v7 = v0[8];

  sub_100002CE0(v7, &qword_1005AF228, &unk_1004D0440);
  (*(v4 + 8))(v3, v5);
  v10(v1, v2);
  sub_1002CE88C(v6, type metadata accessor for FriendSharedSecretsRecord);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1002CA2EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002CA40C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002CA538()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002CA664(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = type metadata accessor for CloudKitStorage.State();
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_1002CA724, 0, 0);
}

uint64_t sub_1002CA724()
{
  v9 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[6] = sub_10000A6F0(v1, qword_1005E0000);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000015, 0x80000001004E6C70, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Waiting for CloudKit to be available", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = v0[2];
  (*(v0[4] + 104))(v0[5], enum case for CloudKitStorage.State.available(_:), v0[3]);

  return _swift_task_switch(sub_1002CA8C8, v6, 0);
}

uint64_t sub_1002CA8C8()
{
  v4 = (&async function pointer to dispatch thunk of CloudKitStorage.await(state:) + async function pointer to dispatch thunk of CloudKitStorage.await(state:));
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1002CA978;
  v2 = *(v0 + 40);

  return v4(v2);
}

uint64_t sub_1002CA978()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = v2[2];
    v4 = sub_1002CABE8;
  }

  else
  {
    (*(v2[4] + 8))(v2[5], v2[3]);
    v4 = sub_1002CAAAC;
    v3 = 0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002CAAAC(uint64_t a1)
{
  v9 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000015, 0x80000001004E6C70, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s CloudKit is available.", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_1002CABE8()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  return _swift_task_switch(sub_1002CAC60, 0, 0);
}

uint64_t sub_1002CAC60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002CACC4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for FriendSharedSecretsRecord(0);
  v6 = sub_100009560(&qword_1005AF498, type metadata accessor for FriendSharedSecretsRecord, &unk_1004CF940);
  *v4 = v2;
  v4[1] = sub_10000368C;

  return CloudKitChangeSet.Adaptor.delete<A>(record:)(a2, v5, v6);
}

uint64_t sub_1002CADB8(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 72) = a1;
  return _swift_task_switch(sub_1002CADDC, v1, 0);
}

uint64_t sub_1002CADDC()
{
  v10 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0000);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 72);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD000000000000019, 0x80000001004E6C50, &v9);
    *(v5 + 12) = 1024;
    *(v5 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s force? %{BOOL}d", v5, 0x12u);
    sub_100004984(v6);
  }

  v7 = swift_task_alloc();
  *(v0 + 24) = v7;
  *v7 = v0;
  v7[1] = sub_1002CAF98;

  return daemon.getter();
}

uint64_t sub_1002CAF98(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 32) = a1;

  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for NITokenService_LocalMessaging();
  v6 = sub_100009560(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009560(&qword_1005AD550, type metadata accessor for NITokenService_LocalMessaging, &unk_1004D87A0);
  *v3 = v9;
  v3[1] = sub_1002CB174;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1002CB174(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v6 = *(v4 + 16);

    return _swift_task_switch(sub_1002CB418, v6, 0);
  }

  else
  {

    *(v4 + 56) = a1;
    v7 = swift_task_alloc();
    *(v4 + 64) = v7;
    *v7 = v5;
    v7[1] = sub_1002CB308;
    v8 = *(v4 + 72);

    return sub_1003F54F4(v8);
  }
}

uint64_t sub_1002CB308()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_1000E9F1C, v1, 0);
}

uint64_t sub_1002CB418()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002CB47C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Date();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = sub_10004B564(&qword_1005B0F30, &qword_1004D3308);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  sub_10004B564(&qword_1005A9188, &unk_1004D80D0);
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for Friend();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v5 = type metadata accessor for Handle();
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_1002CB6B0, v1, 0);
}

uint64_t sub_1002CB6B0()
{
  v22 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  v0[22] = sub_10000A6F0(v5, qword_1005E0000);
  v6 = *(v3 + 16);
  v0[23] = v6;
  v0[24] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[21];
  v12 = v0[16];
  v11 = v0[17];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v13 = 136446723;
    *(v13 + 4) = sub_10000D01C(0x656B6F5472656570, 0xEF293A726F66286ELL, &v21);
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    v14 = Handle.identifier.getter();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = sub_10000D01C(v14, v16, &v21);

    *(v13 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s for handle: %{private,mask.hash}s", v13, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  v0[25] = v17;
  v19 = swift_task_alloc();
  v0[26] = v19;
  *v19 = v0;
  v19[1] = sub_1002CB94C;

  return daemon.getter();
}

uint64_t sub_1002CB94C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[27] = a1;

  v3 = swift_task_alloc();
  v2[28] = v3;
  v4 = type metadata accessor for Daemon();
  v2[29] = v4;
  v5 = type metadata accessor for NITokenService(0);
  v6 = sub_100009560(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[30] = v6;
  v7 = sub_100009560(&qword_1005AD548, type metadata accessor for NITokenService, &unk_1004D8368);
  *v3 = v9;
  v3[1] = sub_1002CBB2C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1002CBB2C(uint64_t a1)
{
  v3 = *v2;
  v3[31] = a1;
  v3[32] = v1;

  if (v1)
  {
    v4 = v3[3];

    return _swift_task_switch(sub_1002CCC40, v4, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[33] = v5;
    *v5 = v3;
    v5[1] = sub_1002CBCA0;

    return daemon.getter();
  }
}

uint64_t sub_1002CBCA0(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 272) = a1;

  v5 = swift_task_alloc();
  *(v3 + 280) = v5;
  v6 = type metadata accessor for DataManager(0);
  v7 = sub_100009560(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v5 = v4;
  v5[1] = sub_1002CBE54;
  v8 = *(v2 + 240);
  v9 = *(v2 + 232);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1002CBE54(uint64_t a1)
{
  v4 = *v2;
  v4[36] = a1;
  v4[37] = v1;

  if (v1)
  {
    v5 = v4[3];
    v6 = sub_1002CCD3C;
  }

  else
  {

    v6 = sub_1002CBF8C;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002CBF8C()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v0 + 304) = v4;
  *(v4 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v4 + v3, enum case for HandleType.following(_:), v1);
  v5 = swift_task_alloc();
  *(v0 + 312) = v5;
  *v5 = v0;
  v5[1] = sub_1002CC0F0;

  return sub_10001C61C(v4, 1);
}

uint64_t sub_1002CC0F0(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 320) = a1;

  return _swift_task_switch(sub_1002CC224, v2, 0);
}

uint64_t sub_1002CC224()
{
  v29 = v0;
  v1 = v0[40];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[12];
  v5 = v0[2];
  *(swift_task_alloc() + 16) = v5;
  sub_10044FE2C(sub_1002CE9A0, v1, v4);

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v6 = v0[23];
    v7 = v0[18];
    v8 = v0[16];
    v9 = v0[2];
    sub_100002CE0(v0[12], &qword_1005A9188, &unk_1004D80D0);
    v6(v7, v9, v8);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[25];
    v14 = v0[18];
    v15 = v0[16];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v28[0] = swift_slowAlloc();
      *v16 = 136446723;
      *(v16 + 4) = sub_10000D01C(0x656B6F5472656570, 0xEF293A726F66286ELL, v28);
      *(v16 + 12) = 2160;
      *(v16 + 14) = 1752392040;
      *(v16 + 22) = 2081;
      v17 = Handle.identifier.getter();
      v19 = v18;
      v13(v14, v15);
      v20 = sub_10000D01C(v17, v19, v28);

      *(v16 + 24) = v20;
      _os_log_impl(&_mh_execute_header, v10, v11, "%{public}s missing following serverID for %{private,mask.hash}s!", v16, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v13(v14, v15);
    }

    sub_10006DC90();
    swift_allocError();
    *v26 = 1;
    swift_willThrow();

    v27 = v0[1];

    return v27();
  }

  else
  {
    (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
    Friend.handle.getter();
    static ReferenceClock.now.getter();
    v21 = swift_task_alloc();
    v0[41] = v21;
    *v21 = v0;
    v21[1] = sub_1002CC63C;
    v22 = v0[20];
    v23 = v0[11];
    v24 = v0[6];

    return sub_100403E38(v23, v22, v24);
  }
}

uint64_t sub_1002CC63C()
{
  v2 = *v1;
  v3 = *v1;
  v13 = *(*v1 + 200);
  v12 = *(*v1 + 160);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 40);
  v8 = *(*v1 + 32);
  *(v3 + 336) = v0;

  (*(v7 + 8))(v6, v8);
  *(v3 + 344) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v12, v5);
  v9 = *(v2 + 24);
  if (v0)
  {
    v10 = sub_1002CCE44;
  }

  else
  {
    v10 = sub_1002CC854;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_1002CC854()
{
  v34 = v0;
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  (*(v0 + 184))(*(v0 + 152), *(v0 + 16), *(v0 + 128));
  sub_1002CE7AC(v1, v2);
  v3 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v3, v31);
  v5 = *(v0 + 200);
  v6 = *(v0 + 152);
  v8 = *(v0 + 120);
  v7 = *(v0 + 128);
  v10 = *(v0 + 104);
  v9 = *(v0 + 112);
  v11 = *(v0 + 80);
  if (v4)
  {
    v27 = *(v0 + 72);
    v30 = *(v0 + 120);
    v12 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v12 = 141558787;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    log = v3;
    v13 = Handle.identifier.getter();
    v29 = v10;
    v15 = v14;
    v5(v6, v7);
    v16 = sub_10000D01C(v13, v15, &v33);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2160;
    *(v12 + 24) = 1752392040;
    *(v12 + 32) = 2081;
    sub_1002CE7AC(v11, v27);
    v17 = String.init<A>(describing:)();
    v19 = v18;
    sub_100002CE0(v11, &qword_1005B0F30, &qword_1004D3308);
    v20 = sub_10000D01C(v17, v19, &v33);

    *(v12 + 34) = v20;
    _os_log_impl(&_mh_execute_header, log, v31, "%{private,mask.hash}s token: %{private,mask.hash}s", v12, 0x2Au);
    swift_arrayDestroy();

    (*(v9 + 8))(v30, v29);
  }

  else
  {

    sub_100002CE0(v11, &qword_1005B0F30, &qword_1004D3308);
    v5(v6, v7);
    (*(v9 + 8))(v8, v10);
  }

  v21 = *(v0 + 64);
  sub_1002CE81C(*(v0 + 88), v21);
  v22 = type metadata accessor for DiscoveryToken(0);
  v23 = (*(*(v22 - 8) + 48))(v21, 1, v22);
  v24 = *(v0 + 64);
  if (v23 == 1)
  {
    sub_100002CE0(*(v0 + 64), &qword_1005B0F30, &qword_1004D3308);
    v32 = 0;
  }

  else
  {
    v32 = *v24;
    sub_1002CE88C(v24, type metadata accessor for DiscoveryToken);
  }

  v25 = *(v0 + 8);

  return v25(v32);
}

uint64_t sub_1002CCC40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002CCD3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002CCE44()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002CCF6C(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Handle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Friend.handle.getter();
  v6 = static Handle.== infix(_:_:)();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

uint64_t sub_1002CD058()
{
  v1[3] = v0;
  v2 = type metadata accessor for Date();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_1002CD118, v0, 0);
}

uint64_t sub_1002CD118()
{
  v9 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 56) = sub_10000A6F0(v1, qword_1005E0000);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0x6B6F5472656E776FLL, 0xEC00000029286E65, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_1002CD2CC;

  return daemon.getter();
}

uint64_t sub_1002CD2CC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 72) = a1;

  v3 = swift_task_alloc();
  *(v2 + 80) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for NITokenService(0);
  v6 = sub_100009560(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009560(&qword_1005AD548, type metadata accessor for NITokenService, &unk_1004D8368);
  *v3 = v9;
  v3[1] = sub_1002CD4A8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1002CD4A8(uint64_t a1)
{
  v3 = *v2;
  v3[11] = a1;
  v3[12] = v1;

  if (v1)
  {
    v4 = v3[3];
    v5 = sub_1002CD9B0;
  }

  else
  {
    v6 = v3[3];

    v5 = sub_1002CD5D0;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1002CD5D0(uint64_t a1)
{
  static ReferenceClock.now.getter();
  v2 = swift_task_alloc();
  *(v1 + 104) = v2;
  *v2 = v1;
  v2[1] = sub_1002CD670;

  return sub_100403F98();
}

uint64_t sub_1002CD670(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  *(v4 + 112) = a1;
  *(v4 + 120) = v1;

  (*(v6 + 8))(v5, v7);
  v8 = *(v3 + 24);
  if (v1)
  {
    v9 = sub_1002CDA20;
  }

  else
  {
    v9 = sub_1002CD800;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1002CD800()
{
  v15 = v0;
  v1 = *(v0 + 112);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 112);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 141558275;
    *(v5 + 4) = 1752392040;
    *(v5 + 12) = 2081;
    *(v0 + 16) = v4;
    v7 = v1;
    sub_10004B564(&qword_1005B0F28, &qword_1004D32F8);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v14);

    *(v5 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Owner token: %{private,mask.hash}s", v5, 0x16u);
    sub_100004984(v6);
  }

  v11 = *(v0 + 8);
  v12 = *(v0 + 112);

  return v11(v12);
}

uint64_t sub_1002CD9B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002CDA20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002CDA90(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_1002C3B8C(a1, a2);
}

uint64_t sub_1002CDB38(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000368C;

  return sub_1002BE46C(a1);
}

uint64_t sub_1002CDBD0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000552EC;

  return sub_1002BD010(a1);
}

uint64_t sub_1002CDC64(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_1002BF404(a1, a2);
}

uint64_t sub_1002CDD2C(uint64_t a1)
{
  v2 = *(v1 + 16);
  static Date.now.getter();
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_1002CDDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10000368C;

  return sub_1002C103C(a1, a2, a3, a4);
}

uint64_t sub_1002CDE94(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_1002C1E7C(a1, a2);
}

uint64_t sub_1002CDF3C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_1002C3168(a1, a2);
}

uint64_t sub_1002CDFE4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003690;

  return sub_1002BDDA4(a1, a2);
}

uint64_t sub_1002CE08C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000552EC;

  return sub_1002CB47C(a1);
}

uint64_t sub_1002CE120()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100054E60;

  return sub_1002CD058();
}

uint64_t sub_1002CE1AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000368C;

  return sub_1002C49EC(a1);
}

uint64_t sub_1002CE240()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1002C5E3C();
}

uint64_t sub_1002CE2CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1002BD740();
}

uint64_t sub_1002CE358()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1002C662C();
}

uint64_t sub_1002CE3E4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000368C;

  return sub_1002C7934(a1);
}

uint64_t sub_1002CE478(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000368C;

  return sub_1002CADB8(a1);
}

uint64_t sub_1002CE50C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1002C6498();
}

uint64_t sub_1002CE598(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_1002CA664(a1, v4);
}

uint64_t sub_1002CE644(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003690;

  return sub_1002CACC4(a1, v4);
}

uint64_t sub_1002CE6E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_1002C7338(a1, v4);
}

uint64_t sub_1002CE7AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005B0F30, &qword_1004D3308);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002CE81C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005B0F30, &qword_1004D3308);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002CE88C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002CE8EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003690;

  return sub_1002C30D8();
}

uint64_t sub_1002CE9CC()
{
  v1[2] = v0;
  v1[3] = *v0;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_1002CEA90, v0, 0);
}

uint64_t sub_1002CEA90()
{
  v9 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 40) = sub_10000A6F0(v1, qword_1005E0000);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000017, 0x80000001004E6E20, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_1002CEC40;

  return daemon.getter();
}

uint64_t sub_1002CEC40(uint64_t a1)
{
  *(*v1 + 56) = a1;

  type metadata accessor for Daemon();
  sub_1002D3A88(&qword_1005AB4E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002CED98, v3, v2);
}

uint64_t sub_1002CED98()
{
  v1 = *(v0 + 16);
  *(v0 + 64) = Daemon.xpcAlarmEventHandler.getter();

  return _swift_task_switch(sub_1002CEE10, v1, 0);
}

uint64_t sub_1002CEE10(uint64_t a1)
{
  v2 = v1[8];
  v3 = Logger.logObject.getter();
  if (v2)
  {
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Registering listener for XPC Alarms", v5, 2u);
    }

    v7 = v1[3];
    v6 = v1[4];
    v8 = v1[2];

    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = sub_1002D3A88(&qword_1005B0EA8, type metadata accessor for FriendshipService, &unk_1004D2C58);
    v11 = swift_allocObject();
    v11[2] = v8;
    v11[3] = v10;
    v11[4] = v2;
    v11[5] = v8;
    v11[6] = v7;
    swift_retain_n();

    sub_1001D7F30(0, 0, v6, &unk_1004D3390, v11);

    v17 = (&async function pointer to dispatch thunk of XPCAlarmEventHandler.addEventsToProcess(with:) + async function pointer to dispatch thunk of XPCAlarmEventHandler.addEventsToProcess(with:));
    v12 = swift_task_alloc();
    v1[9] = v12;
    *v12 = v1;
    v12[1] = sub_1002CF0D8;

    return v17(&off_10058BC80);
  }

  else
  {
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v3, v14, "Daemon not registered XPC Alarm event handler", v15, 2u);
    }

    v16 = v1[1];

    return v16();
  }
}

uint64_t sub_1002CF0D8()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_1002CF1E8, v1, 0);
}

uint64_t sub_1002CF1E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002CF250()
{
  v1[3] = v0;
  v2 = type metadata accessor for XPCAlarm.Criteria.Options();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  type metadata accessor for XPCAlarm.Criteria();
  v1[7] = swift_task_alloc();
  v3 = type metadata accessor for XPCAlarm();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v1[11] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_1002CF444, v0, 0);
}

uint64_t sub_1002CF444()
{
  v9 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 136) = sub_10000A6F0(v1, qword_1005E0000);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000010, 0x80000001004E6D90, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  static XPCAlarm.unregister(identifier:)();
  v6 = swift_task_alloc();
  *(v0 + 144) = v6;
  *v6 = v0;
  v6[1] = sub_1002CF614;

  return sub_1002D0374();
}

uint64_t sub_1002CF614(char a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 176) = a1;

  return _swift_task_switch(sub_1002CF72C, v2, 0);
}

uint64_t sub_1002CF72C(uint64_t a1)
{
  v39 = v1;
  if (*(v1 + 176) == 1)
  {
    v2 = *(v1 + 96);
    v3 = *(v1 + 104);
    v4 = *(v1 + 88);
    sub_1002D1938(v4);
    v5 = *(v3 + 48);
    if (v5(v4, 1, v2) == 1)
    {
      v6 = *(v1 + 88);
      v7 = *(v1 + 96);
      static Date.trustedNow.getter(*(v1 + 128));
      if (v5(v6, 1, v7) != 1)
      {
        sub_100002CE0(*(v1 + 88), &unk_1005AE5B0, &qword_1004C32F0);
      }
    }

    else
    {
      (*(*(v1 + 104) + 32))(*(v1 + 128), *(v1 + 88), *(v1 + 96));
    }

    v14 = *(*(v1 + 104) + 16);
    v14(*(v1 + 120), *(v1 + 128), *(v1 + 96));
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v1 + 120);
    v20 = *(v1 + 96);
    v19 = *(v1 + 104);
    if (v17)
    {
      v21 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v21 = 136446466;
      *(v21 + 4) = sub_10000D01C(0xD000000000000035, 0x80000001004DE4E0, &v38);
      *(v21 + 12) = 2080;
      sub_1002D3A88(&qword_1005A9800, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      log = v15;
      v22 = v14;
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      v36 = v16;
      v28 = *(v19 + 8);
      v27 = v19 + 8;
      v26 = v28;
      v28(v18, v20);
      v29 = v23;
      v14 = v22;
      v30 = sub_10000D01C(v29, v25, &v38);

      *(v21 + 14) = v30;
      _os_log_impl(&_mh_execute_header, log, v36, "Registering %{public}s for date: %s", v21, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v31 = *(v19 + 8);
      v27 = v19 + 8;
      v26 = v31;
      v31(v18, v20);
    }

    *(v1 + 152) = v27;
    *(v1 + 160) = v26;
    v14(*(v1 + 112), *(v1 + 128), *(v1 + 96));
    sub_10004B564(&qword_1005B0BD0, &qword_1004D28B0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1004C1900;
    static XPCAlarm.Criteria.Options.userVisible.getter();
    *(v1 + 16) = v32;
    sub_1002D3A88(&qword_1005B0BD8, &type metadata accessor for XPCAlarm.Criteria.Options, &protocol conformance descriptor for XPCAlarm.Criteria.Options);
    sub_10004B564(&qword_1005B0BE0, &qword_1004D28B8);
    sub_1002D395C();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    XPCAlarm.Criteria.init(date:options:)();
    v33 = swift_task_alloc();
    *(v1 + 168) = v33;
    *v33 = v1;
    v33[1] = sub_1002CFCBC;
    v34 = *(v1 + 80);
    v35 = *(v1 + 56);

    return XPCAlarm.init(identifier:criteria:)(v34, 0xD000000000000035, 0x80000001004DE4E0, v35);
  }

  else
  {
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v38 = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_10000D01C(0xD000000000000010, 0x80000001004E6D90, &v38);
      _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s not eligible.", v10, 0xCu);
      sub_100004984(v11);
    }

    v12 = *(v1 + 8);

    return v12();
  }
}

uint64_t sub_1002CFCBC()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 24);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_1002CFE28, v4, 0);
}

uint64_t sub_1002CFE28()
{
  (*(v0 + 160))(*(v0 + 128), *(v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002CFEEC()
{
  v1[2] = v0;
  sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for Date();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_1002CFFF0, v0, 0);
}

uint64_t sub_1002CFFF0()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  static Date.trustedNow.getter(v0[7]);
  sub_1002D3678(v3);
  v4 = *(v2 + 48);
  v5 = v4(v3, 1, v1);
  v7 = v0[3];
  v6 = v0[4];
  if (v5 == 1)
  {
    Date.addingTimeInterval(_:)();
    if (v4(v7, 1, v6) != 1)
    {
      sub_100002CE0(v0[3], &unk_1005AE5B0, &qword_1004C32F0);
    }
  }

  else
  {
    (*(v0[5] + 32))(v0[6], v0[3], v0[4]);
  }

  v8 = [objc_opt_self() standardUserDefaults];
  Date.timeIntervalSince1970.getter();
  v10 = v9;
  v11 = String._bridgeToObjectiveC()();
  [v8 setDouble:v11 forKey:v10];

  v12 = swift_task_alloc();
  v0[8] = v12;
  *v12 = v0;
  v12[1] = sub_1002D01AC;

  return sub_1002CF250();
}

uint64_t sub_1002D01AC()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_1002D02BC, v1, 0);
}

uint64_t sub_1002D02BC()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = *(v0[5] + 8);
  v3(v0[6], v2);
  v3(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002D0374()
{
  *(v1 + 56) = v0;
  sub_10004B564(&qword_1005AA718, &qword_1004C4370);
  *(v1 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_1002D0410, v0, 0);
}

uint64_t sub_1002D0410()
{
  v12 = v0;
  v1 = type metadata accessor for KoreaFeatureFlag();
  v0[5] = v1;
  v0[6] = sub_1002D3A88(&qword_1005AB4D8, &type metadata accessor for KoreaFeatureFlag, &protocol conformance descriptor for KoreaFeatureFlag);
  v2 = sub_10000331C(v0 + 2);
  (*(*(v1 - 8) + 104))(v2, enum case for KoreaFeatureFlag.ArcticPlum(_:), v1);
  LOBYTE(v1) = isFeatureEnabled(_:)();
  sub_100004984(v0 + 2);
  if (v1)
  {
    if (static SystemInfo.isKoreaSKU.getter())
    {
      v3 = swift_task_alloc();
      v0[9] = v3;
      *v3 = v0;
      v3[1] = sub_1002D06A8;

      return daemon.getter();
    }

    if (qword_1005A8100 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A6F0(v4, qword_1005E0000);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v11 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004E6DB0, &v11);
      _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s Not Korea SKU, skipping", v7, 0xCu);
      sub_100004984(v8);
    }
  }

  v9 = v0[1];

  return v9(0);
}

uint64_t sub_1002D06A8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 80) = a1;

  v3 = swift_task_alloc();
  *(v2 + 88) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_1002D3A88(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1002D3A88(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_1002D0884;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1002D0884(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[12] = a1;
  v3[13] = v1;

  if (v1)
  {
    v5 = v3[7];

    return _swift_task_switch(sub_1002D1720, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[14] = v6;
    *v6 = v4;
    v6[1] = sub_1002D0A10;
    v7 = v3[8];

    return sub_1001DB14C(v7);
  }
}

uint64_t sub_1002D0A10()
{
  v1 = *(*v0 + 96);

  return _swift_task_switch(sub_1002D0B20, v1, 0);
}

uint64_t sub_1002D0B20()
{
  v1 = *(v0 + 64);
  v2 = type metadata accessor for Device();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = *(v0 + 56);
  if (v4 == 1)
  {
    sub_100002CE0(v1, &qword_1005AA718, &qword_1004C4370);
    v6 = sub_1002D0E58;
  }

  else
  {
    *(v0 + 152) = Device.isThisDevice.getter() & 1;
    (*(v3 + 8))(v1, v2);
    v6 = sub_1002D0C50;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002D0C50()
{
  v10 = v0;
  if (*(v0 + 152) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 120) = v1;
    *v1 = v0;
    v1[1] = sub_1002D0FE4;

    return sub_1001DBB70();
  }

  else
  {
    if (qword_1005A8100 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005E0000);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004E6DB0, &v9);
      _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s not the me device.", v6, 0xCu);
      sub_100004984(v7);
    }

    v8 = *(v0 + 8);

    return v8(0);
  }
}

uint64_t sub_1002D0E58()
{
  v9 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0000);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004E6DB0, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s not the me device.", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = *(v0 + 8);

  return v6(0);
}

uint64_t sub_1002D0FE4(char a1)
{
  v2 = *(*v1 + 56);
  *(*v1 + 153) = a1;

  return _swift_task_switch(sub_1002D10FC, v2, 0);
}

uint64_t sub_1002D10FC()
{
  v10 = v0;
  if (*(v0 + 153) == 1)
  {
    v1 = *(v0 + 96);

    return _swift_task_switch(sub_1002D12D4, v1, 0);
  }

  else
  {
    if (qword_1005A8100 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A6F0(v2, qword_1005E0000);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v9 = v6;
      *v5 = 136446210;
      *(v5 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004E6DB0, &v9);
      _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s my location not enabled.", v5, 0xCu);
      sub_100004984(v6);
    }

    v7 = *(v0 + 8);

    return v7(0);
  }
}

uint64_t sub_1002D12D4()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v0 + 128) = v4;
  *(v4 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v4 + v3, enum case for HandleType.follower(_:), v1);
  v5 = swift_task_alloc();
  *(v0 + 136) = v5;
  *v5 = v0;
  v5[1] = sub_1002D1438;

  return sub_10001C61C(v4, 1);
}

uint64_t sub_1002D1438(uint64_t a1)
{
  v2 = *(*v1 + 56);
  *(*v1 + 144) = a1;

  return _swift_task_switch(sub_1002D156C, v2, 0);
}

uint64_t sub_1002D156C()
{
  v10 = v0;
  v1 = *(*(v0 + 144) + 16);

  if (!v1)
  {
    if (qword_1005A8100 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A6F0(v2, qword_1005E0000);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v9 = v6;
      *v5 = 136446210;
      *(v5 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004E6DB0, &v9);
      _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s not sharing my location to anyone.", v5, 0xCu);
      sub_100004984(v6);
    }
  }

  v7 = *(v0 + 8);

  return v7(v1 != 0);
}

uint64_t sub_1002D1720()
{
  v11 = v0;

  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0000);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004E6DB0, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s error %{public}@", v4, 0x16u);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8(0);
}

uint64_t sub_1002D1938@<X0>(char *a1@<X8>)
{
  v2 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v45 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v45 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v45 - v14;
  __chkstk_darwin(v13);
  v17 = &v45 - v16;
  sub_1002D3678(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100002CE0(v4, &unk_1005AE5B0, &qword_1004C32F0);
    static Date.trustedNow.getter(v15);
    v18 = objc_opt_self();
    v19 = [v18 standardUserDefaults];
    v20 = String._bridgeToObjectiveC()();
    [v19 doubleForKey:v20];
    v22 = v21;

    if (v22 == 0.0)
    {
      if (qword_1005A8100 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_10000A6F0(v23, qword_1005E0000);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v47 = a1;
        v48 = v27;
        v28 = v27;
        *v26 = 136446210;
        *(v26 + 4) = sub_10000D01C(0x6D72616C41746567, 0xEE00292865746144, &v48);
        _os_log_impl(&_mh_execute_header, v24, v25, "%{public}s cached alarm time interval is zero, writing next date and returning", v26, 0xCu);
        sub_100004984(v28);
        a1 = v47;
      }

      Date.addingTimeInterval(_:)();
      v29 = [v18 standardUserDefaults];
      Date.timeIntervalSince1970.getter();
      v31 = v30;
      v32 = String._bridgeToObjectiveC()();
      [v29 setDouble:v32 forKey:v31];

      (*(v6 + 8))(v15, v5);
    }

    else
    {
      Date.init(timeIntervalSince1970:)();
      if ((static Date.< infix(_:_:)() & 1) == 0)
      {
        (*(v6 + 8))(v15, v5);
        (*(v6 + 32))(a1, v9, v5);
        return (*(v6 + 56))(a1, 0, 1, v5);
      }

      if (qword_1005A8100 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_10000A6F0(v34, qword_1005E0000);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v47 = "v16@?0@NSError8";
        v38 = v37;
        v46 = swift_slowAlloc();
        v48 = v46;
        *v38 = 136446210;
        *(v38 + 4) = sub_10000D01C(0x6D72616C41746567, 0xEE00292865746144, &v48);
        _os_log_impl(&_mh_execute_header, v35, v36, "%{public}s cached alarm time interval is before now, writing next date and returning", v38, 0xCu);
        sub_100004984(v46);
      }

      Date.addingTimeInterval(_:)();
      v39 = [v18 standardUserDefaults];
      Date.timeIntervalSince1970.getter();
      v41 = v40;
      v42 = String._bridgeToObjectiveC()();
      [v39 setDouble:v42 forKey:v41];

      v43 = *(v6 + 8);
      v43(v9, v5);
      v43(v15, v5);
    }

    (*(v6 + 32))(a1, v12, v5);
  }

  else
  {
    v33 = *(v6 + 32);
    v33(v17, v4, v5);
    v33(a1, v17, v5);
  }

  return (*(v6 + 56))(a1, 0, 1, v5);
}

uint64_t sub_1002D1FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a5;
  v6 = sub_10004B564(&qword_1005AB4E8, &qword_1004C5458);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v7 = swift_task_alloc();
  v5[7] = v7;
  v8 = sub_10004B564(&unk_1005AB4F0, &unk_1004C5460);
  v5[8] = v8;
  v5[9] = *(v8 - 8);
  v5[10] = swift_task_alloc();
  v11 = (&async function pointer to dispatch thunk of XPCAlarmEventHandler.asyncStream(name:) + async function pointer to dispatch thunk of XPCAlarmEventHandler.asyncStream(name:));
  v9 = swift_task_alloc();
  v5[11] = v9;
  *v9 = v5;
  v9[1] = sub_1002D2158;

  return v11(v7, 0xD000000000000035, 0x80000001004DE4E0);
}

uint64_t sub_1002D2158()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_1002D2268, v1, 0);
}

uint64_t sub_1002D2268()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = sub_1002D3A88(&qword_1005B0EA8, type metadata accessor for FriendshipService, &unk_1004D2C58);
  v0[12] = v4;
  v5 = v0[4];
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_1002D2384;
  v7 = v0[8];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, v5, v4, v7);
}

uint64_t sub_1002D2384()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_1002D2494, v1, 0);
}

uint64_t sub_1002D2494()
{
  v13 = v0;
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[2];
    if (qword_1005A8100 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005E0000);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136446210;
      v8 = sub_10000D01C(v2, v1, &v12);

      *(v6 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v4, v5, "XPC alarm fired for %{public}s", v6, 0xCu);
      sub_100004984(v7);
    }

    else
    {
    }

    v11 = swift_task_alloc();
    v0[14] = v11;
    *v11 = v0;
    v11[1] = sub_1002D26D8;

    return sub_1002D2870();
  }

  else
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1002D26D8()
{
  v1 = *v0;
  v2 = *v0;

  v3 = v1[12];
  v4 = v1[4];
  v5 = swift_task_alloc();
  v1[13] = v5;
  *v5 = v2;
  v5[1] = sub_1002D2384;
  v6 = v1[8];

  return AsyncStream.Iterator.next(isolation:)(v1 + 2, v4, v3, v6);
}

uint64_t sub_1002D2870()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for LocationSharingReminderNotification(0);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v2 = swift_task_alloc();
  v1[7] = v2;
  *v2 = v1;
  v2[1] = sub_1002D2948;

  return sub_1002D0374();
}

uint64_t sub_1002D2948(char a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 120) = a1;

  return _swift_task_switch(sub_1002D2A60, v2, 0);
}

uint64_t sub_1002D2A60()
{
  v15 = v0;
  if (*(v0 + 120) == 1)
  {
    if (qword_1005A8100 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    *(v0 + 64) = sub_10000A6F0(v1, qword_1005E0000);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v14 = v5;
      *v4 = 136446210;
      *(v4 + 4) = sub_10000D01C(0xD000000000000029, 0x80000001004E6E40, &v14);
      _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
      sub_100004984(v5);
    }

    v6 = swift_task_alloc();
    *(v0 + 72) = v6;
    *v6 = v0;
    v6[1] = sub_1002D2D74;

    return daemon.getter();
  }

  else
  {
    if (qword_1005A8100 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000A6F0(v7, qword_1005E0000);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_10000D01C(0xD000000000000029, 0x80000001004E6E40, &v14);
      _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s, timer fired but device is no longer eligible", v10, 0xCu);
      sub_100004984(v11);
    }

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1002D2D74(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 80) = a1;

  v3 = swift_task_alloc();
  *(v2 + 88) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for UserNotificationService();
  v6 = sub_1002D3A88(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1002D3A88(&qword_1005AD530, type metadata accessor for UserNotificationService, &unk_1004D9448);
  *v3 = v9;
  v3[1] = sub_1002D2F50;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1002D2F50(uint64_t a1)
{
  v3 = *v2;
  v3[12] = a1;
  v3[13] = v1;

  if (v1)
  {
    v4 = v3[2];
    v5 = sub_1002D3518;
  }

  else
  {
    v6 = v3[2];

    v5 = sub_1002D3078;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1002D3078()
{
  v1 = v0[12];
  v2 = v0[6];
  v3 = v0[3];
  *v2 = 3;
  v4 = *(v3 + 20);
  v5 = enum case for LocalUserNotificationCategory.locationSharingReminderNotification(_:);
  v6 = type metadata accessor for LocalUserNotificationCategory();
  (*(*(v6 - 8) + 104))(&v2[v4], v5, v6);
  UUID.init()();
  v7 = *(v3 + 28);
  *&v2[v7] = sub_100207B7C(_swiftEmptyArrayStorage);

  return _swift_task_switch(sub_1002D3168, v1, 0);
}

uint64_t sub_1002D3168()
{
  sub_1002D3AD0(v0[6], v0[5]);
  if (qword_1005A8598 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1002D3AD0(v2, v3);
  v4 = objc_allocWithZone(UNUserNotificationCenter);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 initWithBundleIdentifier:v5];

  v7 = sub_100292884(v3);
  UUID.uuidString.getter();
  v8 = v7;
  v9 = String._bridgeToObjectiveC()();

  v10 = [objc_opt_self() requestWithIdentifier:v9 content:v8 trigger:0 destinations:7];

  [v6 addNotificationRequest:v10 withCompletionHandler:0];
  sub_1002D3B34(v3);
  sub_1002D3B34(v2);
  sub_1002D3B34(v1);
  v11 = swift_task_alloc();
  v0[14] = v11;
  *v11 = v0;
  v11[1] = sub_1002D338C;

  return sub_1002CFEEC();
}

uint64_t sub_1002D338C()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_1002D349C, v1, 0);
}

uint64_t sub_1002D349C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002D3518()
{
  v8 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136446210;
    *(v3 + 4) = sub_10000D01C(0xD000000000000029, 0x80000001004E6E40, &v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s, could not post notification", v3, 0xCu);
    sub_100004984(v4);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1002D3678@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.trustedNow.getter(v5);
  sub_1004BA244(0xD000000000000029);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v9 = v6;
    if (qword_1005A8100 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000A6F0(v10, qword_1005E0000);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136446466;
      *(v13 + 4) = sub_10000D01C(0xD00000000000001DLL, 0x80000001004E6E00, &v21);
      *(v13 + 12) = 2048;
      *(v13 + 14) = v9;
      _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s internal override of share location reminder! Scheduling for %ld mins", v13, 0x16u);
      sub_100004984(v14);
    }

    Date.addingTimeInterval(_:)();
    v15 = [objc_opt_self() standardUserDefaults];
    Date.timeIntervalSince1970.getter();
    v17 = v16;
    v18 = String._bridgeToObjectiveC()();
    [v15 setDouble:v18 forKey:v17];

    v8 = 0;
  }

  (*(v3 + 8))(v5, v2);
  return (*(v3 + 56))(a1, v8, 1, v2);
}

unint64_t sub_1002D395C()
{
  result = qword_1005B0BE8;
  if (!qword_1005B0BE8)
  {
    sub_10004B610(&qword_1005B0BE0, &qword_1004D28B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0BE8);
  }

  return result;
}

uint64_t sub_1002D39C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100003690;

  return sub_1002D1FB4(a1, v4, v5, v6, v7);
}

uint64_t sub_1002D3A88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002D3AD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationSharingReminderNotification(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002D3B34(uint64_t a1)
{
  v2 = type metadata accessor for LocationSharingReminderNotification(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002D3B90()
{
  v1[3] = v0;
  sub_10004B564(&qword_1005AA718, &qword_1004C4370);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1002D3C38, v0, 0);
}

uint64_t sub_1002D3C38()
{
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[6] = sub_10000A6F0(v1, qword_1005E0000);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "SwitchMeDeviceAlert: Checking if user should be prompted.", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1002D3D90;
  v6 = v0[5];

  return sub_1002D45BC(v6);
}

uint64_t sub_1002D3D90()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_1002D427C;
  }

  else
  {
    v4 = sub_1002D3EBC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002D3EBC()
{
  v1 = v0[4];
  sub_100192CC0(v0[5], v1);
  v2 = type metadata accessor for Device();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_100192D30(v0[4]);
LABEL_3:
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_1002D40E0;
    v5 = v0[5];

    return sub_1002D5050(v5);
  }

  v7 = Device.isThisDevice.getter();
  v8 = v0[4];
  if (v7)
  {
    (*(v3 + 8))(v0[4], v2);
  }

  else
  {
    v9 = Device.isCompanion.getter();
    (*(v3 + 8))(v8, v2);
    if ((v9 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[5];
  if (v12)
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "SwitchMeDeviceAlert: This device is already used to share location.", v14, 2u);
  }

  sub_100192D30(v13);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1002D40E0()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_1002D4418;
  }

  else
  {
    v4 = sub_1002D420C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002D420C()
{
  sub_100192D30(*(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002D427C()
{
  v12 = v0;
  v1 = v0[8];
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "SwitchMeDeviceAlert: error occurred while getting the current device: %{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1002D4418()
{
  v12 = v0;
  sub_100192D30(v0[5]);
  v1 = v0[10];
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "SwitchMeDeviceAlert: error occurred while getting the current device: %{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1002D45BC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10004B564(&qword_1005AA718, &qword_1004C4370);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for Device();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[8] = v4;
  *v4 = v2;
  v4[1] = sub_1002D46E4;

  return daemon.getter();
}

uint64_t sub_1002D46E4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 72) = a1;

  v3 = swift_task_alloc();
  *(v2 + 80) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for SettingsService(0);
  v6 = sub_100009098(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009098(&qword_1005AA6E8, type metadata accessor for SettingsService, &unk_1004DC468);
  *v3 = v9;
  v3[1] = sub_1002D48C0;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1002D48C0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[11] = a1;
  v4[12] = v1;

  if (v1)
  {
    v6 = v4[3];

    return _swift_task_switch(sub_1002D4EC4, v6, 0);
  }

  else
  {

    v7 = swift_task_alloc();
    v4[13] = v7;
    *v7 = v5;
    v7[1] = sub_1002D4A50;
    v9 = v4[3];
    v8 = v4[4];

    return sub_1002D6698(v8, 1, a1, v9);
  }
}

uint64_t sub_1002D4A50()
{
  v2 = *(*v1 + 24);
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_1002D4F48;
  }

  else
  {
    v3 = sub_1002D4B78;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_1002D4B78()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100192D30(v3);
    v4 = swift_task_alloc();
    v0[15] = v4;
    *v4 = v0;
    v4[1] = sub_1002D4D20;
    v5 = v0[11];
    v6 = v0[2];
    v7 = v0[3];

    return sub_1002D6698(v6, 0, v5, v7);
  }

  else
  {
    v9 = v0[7];
    v10 = v0[2];

    v11 = *(v2 + 32);
    v11(v9, v3, v1);
    v11(v10, v9, v1);
    (*(v2 + 56))(v10, 0, 1, v1);

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1002D4D20()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_1002D4FCC;
  }

  else
  {
    v4 = sub_1002D4E4C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002D4E4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002D4EC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002D4F48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002D4FCC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002D5050(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  sub_10004B564(&qword_1005AA718, &qword_1004C4370);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1002D5118, v1, 0);
}

uint64_t sub_1002D5118()
{
  v1 = v0[6];
  sub_100192CC0(v0[4], v1);
  v2 = type metadata accessor for Device();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[6];
  if (v4 == 1)
  {
    sub_100192D30(v0[6]);
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v8 = Device.deviceName.getter();
    v7 = v9;
    (*(v3 + 8))(v5, v2);
    v6 = v8;
  }

  v10 = sub_1002D6B90(v6, v7);
  v0[7] = v10;

  if (!v10)
  {
LABEL_16:

    v23 = v0[1];

    return v23();
  }

  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v0[8] = sub_10000A6F0(v11, qword_1005E0000);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "SwitchMeDeviceAlert: Waiting for user response", v14, 2u);
  }

  v0[2] = 0;
  v15 = CFUserNotificationReceiveResponse(v10, 0.0, v0 + 2);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 67240192;
    *(v18 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v16, v17, "SwitchMeDeviceAlert: User result received: %{public}d", v18, 8u);
  }

  if (v15)
  {
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v19, v20))
    {
LABEL_15:

      goto LABEL_16;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "SwitchMeDeviceAlert: Unexpected result";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v19, v20, v22, v21, 2u);

    goto LABEL_15;
  }

  v25 = v0[2];
  if (v25 == 2)
  {
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_15;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "SwitchMeDeviceAlert: User chose not to switch my device";
    goto LABEL_14;
  }

  if (v25)
  {
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_15;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "SwitchMeDeviceAlert: Unexpected response";
    goto LABEL_14;
  }

  v26 = swift_task_alloc();
  v0[9] = v26;
  *v26 = v0;
  v26[1] = sub_1002D5574;

  return sub_1002D59D4();
}

uint64_t sub_1002D5574()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_1002D57F0;
  }

  else
  {
    v4 = sub_1002D56CC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002D56CC(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 56);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "SwitchMeDeviceAlert: Switched me device to this device", v6, 2u);
  }

  else
  {

    v2 = v5;
  }

  v7 = *(v1 + 8);

  return v7();
}

uint64_t sub_1002D57F0()
{
  v14 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[10];
    v4 = v0[7];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446210;
    v0[3] = v3;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "SwitchMeDeviceAlert: Failed to change me device: %{public}s", v5, 0xCu);
    sub_100004984(v6);
  }

  else
  {
    v10 = v0[7];
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1002D59D4()
{
  v1[2] = v0;
  sub_10004B564(&qword_1005AA718, &qword_1004C4370);
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for DeviceWithCompanion();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for Device();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[10] = v4;
  *v4 = v1;
  v4[1] = sub_1002D5B58;

  return daemon.getter();
}

uint64_t sub_1002D5B58(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 88) = a1;

  v3 = swift_task_alloc();
  *(v2 + 96) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for SettingsService(0);
  v6 = sub_100009098(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009098(&qword_1005AA6E8, type metadata accessor for SettingsService, &unk_1004DC468);
  *v3 = v9;
  v3[1] = sub_1002D5D34;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1002D5D34(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[13] = a1;
  v3[14] = v1;

  if (v1)
  {
    v5 = v3[2];

    return _swift_task_switch(sub_1002D64D4, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[15] = v6;
    *v6 = v4;
    v6[1] = sub_1002D5EC0;
    v7 = v3[6];

    return sub_1004856D4(v7);
  }
}

uint64_t sub_1002D5EC0()
{
  v2 = *(*v1 + 16);
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1002D6560;
  }

  else
  {
    v3 = sub_1002D5FE8;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_1002D5FE8()
{
  v20 = v0;
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  DeviceWithCompanion.thisDevice.getter();
  (*(v4 + 8))(v3, v5);
  if ((*(v2 + 48))(v6, 1, v1) == 1)
  {
    sub_100192D30(v0[3]);
    sub_10006D30C();
    swift_allocError();
    *v7 = 9;
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }

  else
  {
    (*(v0[8] + 32))(v0[9], v0[3], v0[7]);
    v10 = Device.identifier.getter();
    v12 = v11;
    v0[17] = v11;
    if (qword_1005A8100 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000A6F0(v13, qword_1005E0000);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v19 = v17;
      *v16 = 141558275;
      *(v16 + 4) = 1752392040;
      *(v16 + 12) = 2081;
      *(v16 + 14) = sub_10000D01C(v10, v12, &v19);
      _os_log_impl(&_mh_execute_header, v14, v15, "Set activeLocationSharingDevice to: %{private,mask.hash}s", v16, 0x16u);
      sub_100004984(v17);
    }

    v18 = swift_task_alloc();
    v0[18] = v18;
    *v18 = v0;
    v18[1] = sub_1002D62DC;

    return sub_100485D1C(v10, v12);
  }
}

uint64_t sub_1002D62DC()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_1002D65EC;
  }

  else
  {
    v4 = sub_1002D6424;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002D6424()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002D64D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002D6560()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002D65EC()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002D6698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = v4;
  v6[3] = a1;
  v6[4] = a4;
  v8 = type metadata accessor for PreferenceError();
  v6[5] = v8;
  v6[6] = *(v8 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v9 = swift_task_alloc();
  v6[10] = v9;
  *v9 = v6;
  v9[1] = sub_1002D67C0;

  return sub_100484570(a1, v5);
}

uint64_t sub_1002D67C0()
{
  v2 = *(*v1 + 32);
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1002D69A4;
  }

  else
  {
    v3 = sub_1002D68E8;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_1002D68E8()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for Device();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1002D69A4()
{
  v0[2] = v0[11];
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  if (swift_dynamicCast() && (v1 = v0[8], v3 = v0[6], v2 = v0[7], v4 = v0[5], (*(v3 + 32))(v1, v0[9], v4), (*(v3 + 104))(v2, enum case for PreferenceError.missingMeDevice(_:), v4), v5 = static PreferenceError.== infix(_:_:)(), v6 = *(v3 + 8), v6(v2, v4), v6(v1, v4), (v5 & 1) != 0))
  {
    v7 = v0[3];

    v8 = type metadata accessor for Device();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);

    v9 = v0[1];
  }

  else
  {

    v9 = v0[1];
  }

  return v9();
}

CFUserNotificationRef sub_1002D6B90(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for LocalizationUtility.Table();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  v9 = sub_10000A6F0(v8, qword_1005E0000);

  v45[1] = v9;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  v12 = os_log_type_enabled(v10, v11);
  v47 = a1;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v51[0] = v14;
    *v13 = 136446210;
    if (a2)
    {
      v15 = a1;
    }

    else
    {
      v15 = 0x3E6C696E3CLL;
    }

    v16 = v5;
    if (a2)
    {
      v17 = a2;
    }

    else
    {
      v17 = 0xE500000000000000;
    }

    v18 = sub_10000D01C(v15, v17, v51);
    v5 = v16;

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "Create User Notification to switch me-device (%{public}s)", v13, 0xCu);
    sub_100004984(v14);
  }

  v19 = enum case for LocalizationUtility.Table.default(_:);
  v20 = *(v5 + 104);
  v20(v7, enum case for LocalizationUtility.Table.default(_:), v4);
  v49 = static LocalizationUtility.localizedString(key:table:)();
  v48 = v21;
  v22 = *(v5 + 8);
  v22(v7, v4);
  if (a2)
  {
    sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1004C1900;
    *(v23 + 32) = v47;
    *(v23 + 40) = a2;
    v20(v7, v19, v4);

    v47 = static LocalizationUtility.localizedString(key:table:_:)();
    v46 = v24;
  }

  else
  {
    v20(v7, v19, v4);
    v47 = static LocalizationUtility.localizedString(key:table:)();
    v46 = v25;
  }

  v22(v7, v4);
  v20(v7, v19, v4);
  v26 = static LocalizationUtility.localizedString(key:table:)();
  v28 = v27;
  v22(v7, v4);
  v20(v7, v19, v4);
  v29 = static LocalizationUtility.localizedString(key:table:)();
  v31 = v30;
  v22(v7, v4);
  error = 0;
  sub_10004B564(&qword_1005AE108, &unk_1004CE490);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C0BB0;
  if (!kCFUserNotificationAlertHeaderKey)
  {
    __break(1u);
    goto LABEL_24;
  }

  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v33;
  v34 = v48;
  *(inited + 48) = v49;
  *(inited + 56) = v34;
  if (!kCFUserNotificationAlertMessageKey)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v35;
  v36 = v46;
  *(inited + 80) = v47;
  *(inited + 88) = v36;
  if (!kCFUserNotificationDefaultButtonTitleKey)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  *(inited + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 104) = v37;
  *(inited + 112) = v26;
  *(inited + 120) = v28;
  if (!kCFUserNotificationAlternateButtonTitleKey)
  {
    goto LABEL_26;
  }

  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v38;
  *(inited + 144) = v29;
  *(inited + 152) = v31;
  sub_100208D38(inited);
  swift_setDeallocating();
  sub_10004B564(&qword_1005AE110, &qword_1004CE7D0);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v40 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 0, &error, isa);

  if (!v40)
  {
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 67109120;
      swift_beginAccess();
      *(v43 + 4) = error;
      _os_log_impl(&_mh_execute_header, v41, v42, "Failed to create CFUserNotification. Error code: %d", v43, 8u);
    }

    return 0;
  }

  return v40;
}

uint64_t sub_1002D7200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v5 = type metadata accessor for ClientSessionError.Category();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v6 = type metadata accessor for ClientSessionError();
  v3[9] = v6;
  v3[10] = *(v6 - 8);
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_1002D7324, a1, 0);
}

uint64_t sub_1002D7324()
{
  if (swift_weakLoadStrong())
  {

    v1 = sub_1002E267C;
  }

  else
  {
    v2 = type metadata accessor for CommunicationError();
    sub_100017B04(&qword_1005B0F68, &type metadata accessor for CommunicationError, &protocol conformance descriptor for CommunicationError);
    v3 = swift_allocError();
    v0[12] = v3;
    (*(*(v2 - 8) + 104))(v4, enum case for CommunicationError.missingTrampoline(_:), v2);
    swift_willThrow();
    v0[2] = v3;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    if (swift_dynamicCast())
    {
      (*(v0[10] + 8))(v0[11], v0[9]);
      swift_errorRetain();
    }

    else
    {
      (*(v0[7] + 104))(v0[8], enum case for ClientSessionError.Category.friendshipService(_:), v0[6]);
      sub_100017B04(&qword_1005B0F70, &type metadata accessor for ClientSessionError, &protocol conformance descriptor for ClientSessionError);
      v3 = swift_allocError();
      ClientSessionError.init(type:)();
    }

    v0[13] = v3;
    v1 = sub_1002D7540;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1002D7540()
{
  v1 = v0[13];
  v2 = v0[4];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002D76D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1002D76FC, 0, 0);
}

uint64_t sub_1002D76FC()
{
  objc_allocWithZone(type metadata accessor for ResultObject());
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1002D77B4;
  v2 = *(v0 + 16);

  return ResultObject.init(_:)(&unk_1004D3538, v2);
}

uint64_t sub_1002D77B4(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_1002D78B4, 0, 0);
}

uint64_t sub_1002D78B4()
{
  v1 = *(v0 + 48);
  (*(v0 + 24))(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002D7924(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for FriendContainer();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1002D79E4, 0, 0);
}

uint64_t sub_1002D79E4()
{
  v1 = *(v0 + 16);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  *(v0 + 48) = JSONEncoder.init()();

  return _swift_task_switch(sub_1002D7A68, v1, 0);
}

uint64_t sub_1002D7A68()
{
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_1002D7BFC;
    v3 = v0[5];

    return sub_1002BE46C(v3);
  }

  else
  {

    v5 = type metadata accessor for CommunicationError();
    sub_100017B04(&qword_1005B0F68, &type metadata accessor for CommunicationError, &protocol conformance descriptor for CommunicationError);
    v0[10] = swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for CommunicationError.missingTrampoline(_:), v5);
    swift_willThrow();

    return _swift_task_switch(sub_1002D7D40, 0, 0);
  }
}

uint64_t sub_1002D7BFC()
{
  *(*v1 + 72) = v0;

  if (v0)
  {

    v2 = sub_1002D7F0C;
  }

  else
  {
    v2 = sub_1002D7DA4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002D7D40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002D7DA4()
{
  v1 = v0[9];
  sub_100017B04(&qword_1005B0FB0, &type metadata accessor for FriendContainer, &protocol conformance descriptor for FriendContainer);
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v4 = v0[4];
  if (v1)
  {
    (*(v4 + 8))(v0[5], v0[3]);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v2;
    v8 = v3;
    (*(v4 + 8))(v0[5], v0[3]);

    v9 = v0[1];

    return v9(v7, v8);
  }
}

uint64_t sub_1002D7F0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002D8060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = type metadata accessor for ClientSessionError.Category();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v7 = type metadata accessor for ClientSessionError();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();

  return _swift_task_switch(sub_1002D8184, 0, 0);
}

uint64_t sub_1002D8184()
{
  v1 = v0[7];
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_10004B564(&qword_1005B0F98, &qword_1004D3518);
  sub_1002E21D0();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  v0[16] = v0[2];

  return _swift_task_switch(sub_1002D8288, v1, 0);
}

uint64_t sub_1002D8288()
{
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[18] = v2;
    *v2 = v0;
    v2[1] = sub_1002D8420;
    v3 = v0[16];

    return sub_1002BD010(v3);
  }

  else
  {

    v5 = type metadata accessor for CommunicationError();
    sub_100017B04(&qword_1005B0F68, &type metadata accessor for CommunicationError, &protocol conformance descriptor for CommunicationError);
    v6 = swift_allocError();
    (*(*(v5 - 8) + 104))(v7, enum case for CommunicationError.missingTrampoline(_:), v5);
    swift_willThrow();
    v0[21] = v6;
    v8 = v0[7];

    return _swift_task_switch(sub_1002D86D8, v8, 0);
  }
}

uint64_t sub_1002D8420(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v4 = sub_1002D88E8;
  }

  else
  {

    v4 = sub_1002D8544;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002D8544()
{
  v2 = v0[19];
  v1 = v0[20];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[4] = v2;
  sub_10004B564(&qword_1005B0578, &qword_1004D5CA0);
  sub_1002E2284();
  v3 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v1)
  {

    v0[21] = v1;
    v5 = v0[7];

    return _swift_task_switch(sub_1002D86D8, v5, 0);
  }

  else
  {
    v6 = v0[8];
    v7 = v3;
    v8 = v4;

    sub_100005F6C(v7, v8);
    v6(v7, v8, 0);
    sub_1000049D0(v7, v8);
    sub_1000049D0(v7, v8);

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1002D86D8()
{
  v0[3] = v0[21];
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  if (swift_dynamicCast())
  {
    (*(v0[14] + 8))(v0[15], v0[13]);
    swift_errorRetain();
    v1 = v0[21];
  }

  else
  {
    (*(v0[11] + 104))(v0[12], enum case for ClientSessionError.Category.friendshipService(_:), v0[10]);
    sub_100017B04(&qword_1005B0F70, &type metadata accessor for ClientSessionError, &protocol conformance descriptor for ClientSessionError);
    v1 = swift_allocError();
    ClientSessionError.init(type:)();
  }

  v0[22] = v1;

  return _swift_task_switch(sub_1002D8838, 0, 0);
}

uint64_t sub_1002D8838()
{
  v1 = v0[22];
  v2 = v0[8];
  swift_errorRetain();
  v2(0, 0xF000000000000000, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002D88E8()
{

  v0[21] = v0[20];
  v1 = v0[7];

  return _swift_task_switch(sub_1002D86D8, v1, 0);
}

uint64_t sub_1002D8A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = type metadata accessor for ClientSessionError.Category();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = type metadata accessor for ClientSessionError();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v8 = type metadata accessor for FriendshipState();
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();
  CanShareLocationRequest = type metadata accessor for FriendshipCanShareLocationRequest();
  v5[17] = CanShareLocationRequest;
  v5[18] = *(CanShareLocationRequest - 8);
  v5[19] = swift_task_alloc();

  return _swift_task_switch(sub_1002D8C74, 0, 0);
}

uint64_t sub_1002D8C74()
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_100017B04(&qword_1005B0F88, &type metadata accessor for FriendshipCanShareLocationRequest, &protocol conformance descriptor for FriendshipCanShareLocationRequest);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v1 = *(v0 + 40);

  return _swift_task_switch(sub_1002D8D94, v1, 0);
}

uint64_t sub_1002D8D94()
{
  Strong = swift_weakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[21] = v2;
    *v2 = v0;
    v2[1] = sub_1002D8F20;
    v3 = v0[19];
    v4 = v0[16];

    return sub_1002BF404(v4, v3);
  }

  else
  {
    v6 = type metadata accessor for CommunicationError();
    sub_100017B04(&qword_1005B0F68, &type metadata accessor for CommunicationError, &protocol conformance descriptor for CommunicationError);
    v0[23] = swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for CommunicationError.missingTrampoline(_:), v6);
    swift_willThrow();

    return _swift_task_switch(sub_1002D9054, 0, 0);
  }
}

uint64_t sub_1002D8F20()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1002D9464;
  }

  else
  {
    v2 = sub_1002D90D4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002D9054()
{
  (*(v0[18] + 8))(v0[19], v0[17]);
  v1 = v0[5];
  v0[24] = v0[23];

  return _swift_task_switch(sub_1002D9304, v1, 0);
}

uint64_t sub_1002D90D4()
{
  v1 = v0[22];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_100017B04(&qword_1005B0F90, &type metadata accessor for FriendshipState, &protocol conformance descriptor for FriendshipState);
  v2 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[16];
  v7 = v0[17];
  v8 = v0[14];
  v9 = v0[15];
  if (v1)
  {

    (*(v9 + 8))(v6, v8);
    (*(v5 + 8))(v4, v7);
    v10 = v0[5];
    v0[24] = v1;

    return _swift_task_switch(sub_1002D9304, v10, 0);
  }

  else
  {
    v15 = v0[6];
    v11 = v2;
    v12 = v3;

    sub_100005F6C(v11, v12);
    v15(v11, v12, 0);
    sub_1000049D0(v11, v12);
    sub_1000049D0(v11, v12);
    (*(v9 + 8))(v6, v8);
    (*(v5 + 8))(v4, v7);

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1002D9304()
{
  v0[2] = v0[24];
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  if (swift_dynamicCast())
  {
    (*(v0[12] + 8))(v0[13], v0[11]);
    swift_errorRetain();
    v1 = v0[24];
  }

  else
  {
    (*(v0[9] + 104))(v0[10], enum case for ClientSessionError.Category.friendshipService(_:), v0[8]);
    sub_100017B04(&qword_1005B0F70, &type metadata accessor for ClientSessionError, &protocol conformance descriptor for ClientSessionError);
    v1 = swift_allocError();
    ClientSessionError.init(type:)();
  }

  v0[25] = v1;

  return _swift_task_switch(sub_1002E2680, 0, 0);
}

uint64_t sub_1002D9464()
{
  (*(v0[18] + 8))(v0[19], v0[17]);
  v1 = v0[5];
  v0[24] = v0[22];

  return _swift_task_switch(sub_1002D9304, v1, 0);
}

uint64_t sub_1002D961C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  v8 = type metadata accessor for ClientSessionError.Category();
  v7[10] = v8;
  v7[11] = *(v8 - 8);
  v7[12] = swift_task_alloc();
  v9 = type metadata accessor for ClientSessionError();
  v7[13] = v9;
  v7[14] = *(v9 - 8);
  v7[15] = swift_task_alloc();
  sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();
  v10 = type metadata accessor for Handle();
  v7[18] = v10;
  v7[19] = *(v10 - 8);
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();

  return _swift_task_switch(sub_1002D97F0, 0, 0);
}

uint64_t sub_1002D97F0()
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_100017B04(&qword_1005AE888, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  swift_allocObject();
  PropertyListDecoder.init()();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v1 = *(v0 + 56);

  return _swift_task_switch(sub_1002D9994, v1, 0);
}

uint64_t sub_1002D9994()
{
  Strong = swift_weakLoadStrong();
  *(v0 + 176) = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_1002D9AC0;
  }

  else
  {
    v4 = type metadata accessor for CommunicationError();
    sub_100017B04(&qword_1005B0F68, &type metadata accessor for CommunicationError, &protocol conformance descriptor for CommunicationError);
    *(v0 + 184) = swift_allocError();
    (*(*(v4 - 8) + 104))(v5, enum case for CommunicationError.missingTrampoline(_:), v4);
    swift_willThrow();
    v3 = sub_1002D9C70;
    v2 = 0;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_1002D9AC0(uint64_t a1)
{
  v2 = *(v1 + 136);
  static Date.now.getter();

  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);

  return _swift_task_switch(sub_1002D9B78, 0, 0);
}

uint64_t sub_1002D9B78()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  v5 = *(v0 + 136);
  (*(v0 + 64))(v5, 0);
  sub_1000CF9E4(v5);
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1002D9C70()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = *(v0[19] + 8);
  v3(v0[20], v2);
  v3(v1, v2);
  v0[24] = v0[23];
  v4 = v0[7];

  return _swift_task_switch(sub_1002D9D10, v4, 0);
}

uint64_t sub_1002D9D10()
{
  v0[2] = v0[24];
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  if (swift_dynamicCast())
  {
    (*(v0[14] + 8))(v0[15], v0[13]);
    swift_errorRetain();
    v1 = v0[24];
  }

  else
  {
    (*(v0[11] + 104))(v0[12], enum case for ClientSessionError.Category.friendshipService(_:), v0[10]);
    sub_100017B04(&qword_1005B0F70, &type metadata accessor for ClientSessionError, &protocol conformance descriptor for ClientSessionError);
    v1 = swift_allocError();
    ClientSessionError.init(type:)();
  }

  v0[25] = v1;

  return _swift_task_switch(sub_1002D9E70, 0, 0);
}

uint64_t sub_1002D9E70()
{
  v1 = v0[25];
  v2 = v0[16];
  v3 = v0[8];
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  swift_errorRetain();
  v3(v2, v1);

  sub_1000CF9E4(v2);

  v5 = v0[1];

  return v5();
}

void sub_1002DA114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  sub_1000CF974(a1, &v13 - v7);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v8, v9);
  }

  if (a2)
  {
    v12 = _convertErrorToNSError(_:)();
  }

  else
  {
    v12 = 0;
  }

  (*(a3 + 16))(a3, isa, v12);
}

uint64_t sub_1002DA260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  v8 = type metadata accessor for ClientSessionError.Category();
  v7[10] = v8;
  v7[11] = *(v8 - 8);
  v7[12] = swift_task_alloc();
  v9 = type metadata accessor for ClientSessionError();
  v7[13] = v9;
  v7[14] = *(v9 - 8);
  v7[15] = swift_task_alloc();
  sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();
  v10 = type metadata accessor for Handle();
  v7[18] = v10;
  v7[19] = *(v10 - 8);
  v7[20] = swift_task_alloc();

  return _swift_task_switch(sub_1002DA428, 0, 0);
}

uint64_t sub_1002DA428()
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_100017B04(&qword_1005AE888, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v1 = *(v0 + 40);

  return _swift_task_switch(sub_1002DA548, v1, 0);
}

uint64_t sub_1002DA548()
{
  Strong = swift_weakLoadStrong();
  v0[21] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[22] = v2;
    *v2 = v0;
    v2[1] = sub_1002DA6D8;
    v3 = v0[20];
    v4 = v0[17];
    v5 = v0[6];
    v6 = v0[7];

    return sub_1002C103C(v4, v3, v5, v6);
  }

  else
  {
    v8 = type metadata accessor for CommunicationError();
    sub_100017B04(&qword_1005B0F68, &type metadata accessor for CommunicationError, &protocol conformance descriptor for CommunicationError);
    v0[24] = swift_allocError();
    (*(*(v8 - 8) + 104))(v9, enum case for CommunicationError.missingTrampoline(_:), v8);
    swift_willThrow();

    return _swift_task_switch(sub_1002DA80C, 0, 0);
  }
}

uint64_t sub_1002DA6D8()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1002DABE4;
  }

  else
  {
    v2 = sub_1002DA88C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002DA80C()
{
  (*(v0[19] + 8))(v0[20], v0[18]);
  v1 = v0[5];
  v0[25] = v0[24];

  return _swift_task_switch(sub_1002DA964, v1, 0);
}

uint64_t sub_1002DA88C()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  (*(v0 + 64))(v4, 0);
  sub_1000CF9E4(v4);
  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1002DA964()
{
  v0[2] = v0[25];
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  if (swift_dynamicCast())
  {
    (*(v0[14] + 8))(v0[15], v0[13]);
    swift_errorRetain();
    v1 = v0[25];
  }

  else
  {
    (*(v0[11] + 104))(v0[12], enum case for ClientSessionError.Category.friendshipService(_:), v0[10]);
    sub_100017B04(&qword_1005B0F70, &type metadata accessor for ClientSessionError, &protocol conformance descriptor for ClientSessionError);
    v1 = swift_allocError();
    ClientSessionError.init(type:)();
  }

  v0[26] = v1;

  return _swift_task_switch(sub_1002DAAC4, 0, 0);
}

uint64_t sub_1002DAAC4()
{
  v1 = v0[26];
  v2 = v0[16];
  v3 = v0[8];
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  swift_errorRetain();
  v3(v2, v1);

  sub_1000CF9E4(v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1002DABE4()
{
  (*(v0[19] + 8))(v0[20], v0[18]);
  v1 = v0[5];
  v0[25] = v0[23];

  return _swift_task_switch(sub_1002DA964, v1, 0);
}

uint64_t sub_1002DADD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = type metadata accessor for ClientSessionError.Category();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = type metadata accessor for ClientSessionError();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v8 = type metadata accessor for FriendshipRequestResult();
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();
  v9 = type metadata accessor for FriendshipRequest();
  v5[17] = v9;
  v5[18] = *(v9 - 8);
  v5[19] = swift_task_alloc();

  return _swift_task_switch(sub_1002DAFB4, 0, 0);
}

uint64_t sub_1002DAFB4()
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_100017B04(&qword_1005B0F78, &type metadata accessor for FriendshipRequest, &protocol conformance descriptor for FriendshipRequest);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v1 = *(v0 + 40);

  return _swift_task_switch(sub_1002DB0D4, v1, 0);
}

uint64_t sub_1002DB0D4()
{
  Strong = swift_weakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[21] = v2;
    *v2 = v0;
    v2[1] = sub_1002DB260;
    v3 = v0[19];
    v4 = v0[16];

    return sub_1002C1E7C(v4, v3);
  }

  else
  {
    v6 = type metadata accessor for CommunicationError();
    sub_100017B04(&qword_1005B0F68, &type metadata accessor for CommunicationError, &protocol conformance descriptor for CommunicationError);
    v0[23] = swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for CommunicationError.missingTrampoline(_:), v6);
    swift_willThrow();

    return _swift_task_switch(sub_1002DB394, 0, 0);
  }
}

uint64_t sub_1002DB260()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1002DB92C;
  }

  else
  {
    v2 = sub_1002DB414;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002DB394()
{
  (*(v0[18] + 8))(v0[19], v0[17]);
  v1 = v0[5];
  v0[24] = v0[23];

  return _swift_task_switch(sub_1002DB704, v1, 0);
}

uint64_t sub_1002DB414()
{
  v1 = v0[22];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_100017B04(&qword_1005B0F80, &type metadata accessor for FriendshipRequestResult, &protocol conformance descriptor for FriendshipRequestResult);
  v2 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v1)
  {
    v5 = v0[18];
    v4 = v0[19];
    v7 = v0[16];
    v6 = v0[17];
    v8 = v0[14];
    v9 = v0[15];

    (*(v9 + 8))(v7, v8);
    (*(v5 + 8))(v4, v6);
    v10 = v0[5];
    v0[24] = v1;

    return _swift_task_switch(sub_1002DB704, v10, 0);
  }

  else
  {
    v25 = v3;
    v11 = v2;

    if (qword_1005A8100 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000A6F0(v12, qword_1005E0000);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "FriendshipService+Trampoline sendFriendshipOffer result back to framework", v15, 2u);
    }

    v16 = v0[18];
    v24 = v0[19];
    v18 = v0[16];
    v17 = v0[17];
    v19 = v0[14];
    v20 = v0[15];
    v21 = v0[6];

    sub_100005F6C(v11, v25);
    v21(v11, v25, 0);
    sub_1000049D0(v11, v25);
    sub_1000049D0(v11, v25);
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v24, v17);

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_1002DB704()
{
  v0[2] = v0[24];
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  if (swift_dynamicCast())
  {
    (*(v0[12] + 8))(v0[13], v0[11]);
    swift_errorRetain();
    v1 = v0[24];
  }

  else
  {
    (*(v0[9] + 104))(v0[10], enum case for ClientSessionError.Category.friendshipService(_:), v0[8]);
    sub_100017B04(&qword_1005B0F70, &type metadata accessor for ClientSessionError, &protocol conformance descriptor for ClientSessionError);
    v1 = swift_allocError();
    ClientSessionError.init(type:)();
  }

  v0[25] = v1;

  return _swift_task_switch(sub_1002DB864, 0, 0);
}

uint64_t sub_1002DB864()
{
  v1 = v0[25];
  v2 = v0[6];
  swift_errorRetain();
  v2(0, 0xF000000000000000, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002DB92C()
{
  (*(v0[18] + 8))(v0[19], v0[17]);
  v1 = v0[5];
  v0[24] = v0[22];

  return _swift_task_switch(sub_1002DB704, v1, 0);
}

uint64_t sub_1002DBAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = type metadata accessor for ClientSessionError.Category();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = type metadata accessor for ClientSessionError();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v8 = type metadata accessor for FriendshipRequestResult();
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();
  v9 = type metadata accessor for FriendshipRequest();
  v5[17] = v9;
  v5[18] = *(v9 - 8);
  v5[19] = swift_task_alloc();

  return _swift_task_switch(sub_1002DBCC0, 0, 0);
}

uint64_t sub_1002DBCC0()
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_100017B04(&qword_1005B0F78, &type metadata accessor for FriendshipRequest, &protocol conformance descriptor for FriendshipRequest);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v1 = *(v0 + 40);

  return _swift_task_switch(sub_1002DBDE0, v1, 0);
}

uint64_t sub_1002DBDE0()
{
  Strong = swift_weakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[21] = v2;
    *v2 = v0;
    v2[1] = sub_1002DBF6C;
    v3 = v0[19];
    v4 = v0[16];

    return sub_1002C3168(v4, v3);
  }

  else
  {
    v6 = type metadata accessor for CommunicationError();
    sub_100017B04(&qword_1005B0F68, &type metadata accessor for CommunicationError, &protocol conformance descriptor for CommunicationError);
    v0[23] = swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for CommunicationError.missingTrampoline(_:), v6);
    swift_willThrow();

    return _swift_task_switch(sub_1002D9054, 0, 0);
  }
}

uint64_t sub_1002DBF6C()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1002D9464;
  }

  else
  {
    v2 = sub_1002DC0A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002DC0A0()
{
  v1 = v0[22];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_100017B04(&qword_1005B0F80, &type metadata accessor for FriendshipRequestResult, &protocol conformance descriptor for FriendshipRequestResult);
  v2 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v1)
  {
    v5 = v0[18];
    v4 = v0[19];
    v7 = v0[16];
    v6 = v0[17];
    v8 = v0[14];
    v9 = v0[15];

    (*(v9 + 8))(v7, v8);
    (*(v5 + 8))(v4, v6);
    v10 = v0[5];
    v0[24] = v1;

    return _swift_task_switch(sub_1002D9304, v10, 0);
  }

  else
  {
    v25 = v3;
    v11 = v2;

    if (qword_1005A8100 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000A6F0(v12, qword_1005E0000);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "FriendshipService+Trampoline sendFriendshipInvite result back to framework", v15, 2u);
    }

    v16 = v0[18];
    v24 = v0[19];
    v18 = v0[16];
    v17 = v0[17];
    v19 = v0[14];
    v20 = v0[15];
    v21 = v0[6];

    sub_100005F6C(v11, v25);
    v21(v11, v25, 0);
    sub_1000049D0(v11, v25);
    sub_1000049D0(v11, v25);
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v24, v17);

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_1002DC4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = type metadata accessor for ClientSessionError.Category();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = type metadata accessor for ClientSessionError();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v8 = type metadata accessor for FriendshipRequestResult();
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();
  v9 = type metadata accessor for FriendshipRequest();
  v5[17] = v9;
  v5[18] = *(v9 - 8);
  v5[19] = swift_task_alloc();

  return _swift_task_switch(sub_1002DC6A4, 0, 0);
}

uint64_t sub_1002DC6A4()
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_100017B04(&qword_1005B0F78, &type metadata accessor for FriendshipRequest, &protocol conformance descriptor for FriendshipRequest);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v1 = *(v0 + 40);

  return _swift_task_switch(sub_1002DC7C4, v1, 0);
}

uint64_t sub_1002DC7C4()
{
  Strong = swift_weakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[21] = v2;
    *v2 = v0;
    v2[1] = sub_1002DC950;
    v3 = v0[19];
    v4 = v0[16];

    return sub_1002C3B8C(v4, v3);
  }

  else
  {
    v6 = type metadata accessor for CommunicationError();
    sub_100017B04(&qword_1005B0F68, &type metadata accessor for CommunicationError, &protocol conformance descriptor for CommunicationError);
    v0[23] = swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for CommunicationError.missingTrampoline(_:), v6);
    swift_willThrow();

    return _swift_task_switch(sub_1002D9054, 0, 0);
  }
}

uint64_t sub_1002DC950()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1002D9464;
  }

  else
  {
    v2 = sub_1002DCA84;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002DCA84()
{
  v1 = v0[22];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_100017B04(&qword_1005B0F80, &type metadata accessor for FriendshipRequestResult, &protocol conformance descriptor for FriendshipRequestResult);
  v2 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[16];
  v7 = v0[17];
  v8 = v0[14];
  v9 = v0[15];
  if (v1)
  {

    (*(v9 + 8))(v6, v8);
    (*(v5 + 8))(v4, v7);
    v10 = v0[5];
    v0[24] = v1;

    return _swift_task_switch(sub_1002D9304, v10, 0);
  }

  else
  {
    v15 = v0[6];
    v11 = v2;
    v12 = v3;

    sub_100005F6C(v11, v12);
    v15(v11, v12, 0);
    sub_1000049D0(v11, v12);
    sub_1000049D0(v11, v12);
    (*(v9 + 8))(v6, v8);
    (*(v5 + 8))(v4, v7);

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1002DCDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = type metadata accessor for ClientSessionError.Category();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = type metadata accessor for ClientSessionError();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v8 = type metadata accessor for FriendshipRequestResult();
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();
  v9 = type metadata accessor for FriendshipRequest();
  v5[17] = v9;
  v5[18] = *(v9 - 8);
  v5[19] = swift_task_alloc();

  return _swift_task_switch(sub_1002DCFC8, 0, 0);
}

uint64_t sub_1002DCFC8()
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_100017B04(&qword_1005B0F78, &type metadata accessor for FriendshipRequest, &protocol conformance descriptor for FriendshipRequest);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v1 = *(v0 + 40);

  return _swift_task_switch(sub_1002DD0E8, v1, 0);
}

uint64_t sub_1002DD0E8()
{
  Strong = swift_weakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[21] = v2;
    *v2 = v0;
    v2[1] = sub_1002DC950;
    v3 = v0[19];
    v4 = v0[16];

    return sub_1002BDDA4(v4, v3);
  }

  else
  {
    v6 = type metadata accessor for CommunicationError();
    sub_100017B04(&qword_1005B0F68, &type metadata accessor for CommunicationError, &protocol conformance descriptor for CommunicationError);
    v0[23] = swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for CommunicationError.missingTrampoline(_:), v6);
    swift_willThrow();

    return _swift_task_switch(sub_1002D9054, 0, 0);
  }
}

uint64_t sub_1002DD3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = type metadata accessor for ClientSessionError.Category();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = type metadata accessor for ClientSessionError();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v8 = type metadata accessor for Handle();
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_1002DD52C, 0, 0);
}

uint64_t sub_1002DD52C()
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_100017B04(&qword_1005AE888, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v1 = *(v0 + 40);

  return _swift_task_switch(sub_1002DD64C, v1, 0);
}

uint64_t sub_1002DD64C()
{
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[18] = v2;
    *v2 = v0;
    v2[1] = sub_1002DD7D4;
    v3 = v0[16];

    return sub_1002CB47C(v3);
  }

  else
  {
    v5 = type metadata accessor for CommunicationError();
    sub_100017B04(&qword_1005B0F68, &type metadata accessor for CommunicationError, &protocol conformance descriptor for CommunicationError);
    v0[21] = swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for CommunicationError.missingTrampoline(_:), v5);
    swift_willThrow();

    return _swift_task_switch(sub_1002DD910, 0, 0);
  }
}

uint64_t sub_1002DD7D4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v4 = sub_1002DDD60;
  }

  else
  {
    v4 = sub_1002DD990;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002DD910()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[5];
  v0[22] = v0[21];

  return _swift_task_switch(sub_1002DDB44, v1, 0);
}

uint64_t sub_1002DD990()
{
  v1 = v0[19];
  if (v1)
  {
    v2 = v0[20];
    v3 = NIDiscoveryToken.dataRepresentation.getter();
    v6 = v0[15];
    v5 = v0[16];
    v7 = v0[14];
    if (v2)
    {
      (*(v6 + 8))(v0[16], v0[14]);

      v8 = v0[5];
      v0[22] = v2;

      return _swift_task_switch(sub_1002DDB44, v8, 0);
    }

    v12 = v0[6];
    v13 = v3;
    v14 = v4;
    sub_100005F6C(v3, v4);
    v12(v13, v14, 0);
    sub_1000049D0(v13, v14);

    sub_1000049D0(v13, v14);
    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v10 = v0[15];
    v9 = v0[16];
    v11 = v0[14];
    (v0[6])(0, 0xF000000000000000, 0);
    (*(v10 + 8))(v9, v11);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1002DDB44()
{
  v0[2] = v0[22];
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  if (swift_dynamicCast())
  {
    (*(v0[12] + 8))(v0[13], v0[11]);
    swift_errorRetain();
    v1 = v0[22];
  }

  else
  {
    (*(v0[9] + 104))(v0[10], enum case for ClientSessionError.Category.friendshipService(_:), v0[8]);
    sub_100017B04(&qword_1005B0F70, &type metadata accessor for ClientSessionError, &protocol conformance descriptor for ClientSessionError);
    v1 = swift_allocError();
    ClientSessionError.init(type:)();
  }

  v0[23] = v1;

  return _swift_task_switch(sub_1002DDCA4, 0, 0);
}

uint64_t sub_1002DDCA4()
{
  v1 = v0[23];
  v2 = v0[6];
  swift_errorRetain();
  v2(0, 0xF000000000000000, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002DDD60()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[5];
  v0[22] = v0[20];

  return _swift_task_switch(sub_1002DDB44, v1, 0);
}

uint64_t sub_1002DDF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for Handle();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_1002DDFE0, 0, 0);
}

uint64_t sub_1002DDFE0()
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_100017B04(&qword_1005AE888, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  v1 = *(v0 + 32);

  return _swift_task_switch(sub_1002DE144, v1, 0);
}

uint64_t sub_1002DE144()
{
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_1002DE2CC;
    v3 = v0[9];

    return sub_1002C7934(v3);
  }

  else
  {
    v5 = type metadata accessor for CommunicationError();
    sub_100017B04(&qword_1005B0F68, &type metadata accessor for CommunicationError, &protocol conformance descriptor for CommunicationError);
    v0[13] = swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for CommunicationError.missingTrampoline(_:), v5);
    swift_willThrow();

    return _swift_task_switch(sub_1002DE3FC, 0, 0);
  }
}

uint64_t sub_1002DE2CC()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1002DE540;
  }

  else
  {
    v2 = sub_1002DE4A8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002DE3FC()
{
  v1 = v0[13];
  (*(v0[8] + 8))(v0[9], v0[7]);
  v2 = v0[5];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002DE4A8()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  (*(v0 + 40))(0);
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1002DE540()
{
  v1 = v0[12];
  (*(v0[8] + 8))(v0[9], v0[7]);
  v2 = v0[5];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002DE724(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 72) = a2;
  *(v4 + 16) = a1;
  return _swift_task_switch(sub_1002DE750, a1, 0);
}

uint64_t sub_1002DE750()
{
  Strong = swift_weakLoadStrong();
  *(v0 + 40) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 48) = v2;
    *v2 = v0;
    v2[1] = sub_1002DE8D8;
    v3 = *(v0 + 72);

    return sub_1002CADB8(v3);
  }

  else
  {
    v5 = type metadata accessor for CommunicationError();
    sub_100017B04(&qword_1005B0F68, &type metadata accessor for CommunicationError, &protocol conformance descriptor for CommunicationError);
    *(v0 + 64) = swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for CommunicationError.missingTrampoline(_:), v5);
    swift_willThrow();

    return _swift_task_switch(sub_1002DE9F4, 0, 0);
  }
}

uint64_t sub_1002DE8D8()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1002DEAE8;
  }

  else
  {

    v2 = sub_1002DEA80;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002DE9F4()
{
  v1 = v0[8];
  v2 = v0[3];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002DEA80()
{
  (*(v0 + 24))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002DEAE8()
{

  v1 = v0[7];
  v2 = v0[3];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002DEC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = type metadata accessor for ClientSessionError.Category();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = type metadata accessor for ClientSessionError();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v8 = type metadata accessor for Handle();
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_1002DEE00, 0, 0);
}

uint64_t sub_1002DEE00()
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_100017B04(&qword_1005AE888, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v1 = *(v0 + 40);

  return _swift_task_switch(sub_1002DEF20, v1, 0);
}

uint64_t sub_1002DEF20()
{
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[18] = v2;
    *v2 = v0;
    v2[1] = sub_1002DF0A8;
    v3 = v0[16];

    return sub_1002C49EC(v3);
  }

  else
  {
    v5 = type metadata accessor for CommunicationError();
    sub_100017B04(&qword_1005B0F68, &type metadata accessor for CommunicationError, &protocol conformance descriptor for CommunicationError);
    v0[20] = swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for CommunicationError.missingTrampoline(_:), v5);
    swift_willThrow();

    return _swift_task_switch(sub_1002DF1DC, 0, 0);
  }
}

uint64_t sub_1002DF0A8()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1002DF520;
  }

  else
  {
    v2 = sub_1002DF25C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002DF1DC()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[5];
  v0[21] = v0[20];

  return _swift_task_switch(sub_1002DF30C, v1, 0);
}

uint64_t sub_1002DF25C()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  (*(v0 + 48))(0);
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1002DF30C()
{
  v0[2] = v0[21];
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  if (swift_dynamicCast())
  {
    (*(v0[12] + 8))(v0[13], v0[11]);
    swift_errorRetain();
    v1 = v0[21];
  }

  else
  {
    (*(v0[9] + 104))(v0[10], enum case for ClientSessionError.Category.friendshipService(_:), v0[8]);
    sub_100017B04(&qword_1005B0F70, &type metadata accessor for ClientSessionError, &protocol conformance descriptor for ClientSessionError);
    v1 = swift_allocError();
    ClientSessionError.init(type:)();
  }

  v0[22] = v1;

  return _swift_task_switch(sub_1002DF46C, 0, 0);
}

uint64_t sub_1002DF46C()
{
  v1 = v0[22];
  v2 = v0[6];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002DF520()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[5];
  v0[21] = v0[19];

  return _swift_task_switch(sub_1002DF30C, v1, 0);
}

uint64_t sub_1002DF6D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v5 = type metadata accessor for ClientSessionError.Category();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v6 = type metadata accessor for ClientSessionError();
  v3[9] = v6;
  v3[10] = *(v6 - 8);
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_1002DF7FC, a1, 0);
}

uint64_t sub_1002DF7FC()
{
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = sub_1002DF980;

    return sub_1002BD740();
  }

  else
  {
    v4 = type metadata accessor for CommunicationError();
    sub_100017B04(&qword_1005B0F68, &type metadata accessor for CommunicationError, &protocol conformance descriptor for CommunicationError);
    v5 = swift_allocError();
    (*(*(v4 - 8) + 104))(v6, enum case for CommunicationError.missingTrampoline(_:), v4);
    swift_willThrow();
    v0[15] = v5;
    v7 = v0[3];

    return _swift_task_switch(sub_1002DFB18, v7, 0);
  }
}

uint64_t sub_1002DF980()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1002DFD20;
  }

  else
  {

    v2 = sub_1002DFA9C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002DFA9C()
{
  (*(v0 + 32))(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002DFB18()
{
  v0[2] = v0[15];
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  if (swift_dynamicCast())
  {
    (*(v0[10] + 8))(v0[11], v0[9]);
    swift_errorRetain();
    v1 = v0[15];
  }

  else
  {
    (*(v0[7] + 104))(v0[8], enum case for ClientSessionError.Category.friendshipService(_:), v0[6]);
    sub_100017B04(&qword_1005B0F70, &type metadata accessor for ClientSessionError, &protocol conformance descriptor for ClientSessionError);
    v1 = swift_allocError();
    ClientSessionError.init(type:)();
  }

  v0[16] = v1;

  return _swift_task_switch(sub_1002DFC78, 0, 0);
}

uint64_t sub_1002DFC78()
{
  v1 = v0[16];
  v2 = v0[4];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002DFD20()
{

  v0[15] = v0[14];
  v1 = v0[3];

  return _swift_task_switch(sub_1002DFB18, v1, 0);
}

uint64_t sub_1002DFE80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1002DFEA8, a1, 0);
}

uint64_t sub_1002DFEA8()
{
  Strong = swift_weakLoadStrong();
  v0[5] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[6] = v2;
    *v2 = v0;
    v2[1] = sub_1002E0028;

    return sub_1002C6498();
  }

  else
  {
    v4 = type metadata accessor for CommunicationError();
    sub_100017B04(&qword_1005B0F68, &type metadata accessor for CommunicationError, &protocol conformance descriptor for CommunicationError);
    v0[8] = swift_allocError();
    (*(*(v4 - 8) + 104))(v5, enum case for CommunicationError.missingTrampoline(_:), v4);
    swift_willThrow();

    return _swift_task_switch(sub_1002E268C, 0, 0);
  }
}

uint64_t sub_1002E0028()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1002E2694;
  }

  else
  {

    v2 = sub_1002E2690;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002E0234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v5 = type metadata accessor for ClientSessionError.Category();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v6 = type metadata accessor for ClientSessionError();
  v3[9] = v6;
  v3[10] = *(v6 - 8);
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_1002E0358, a1, 0);
}

uint64_t sub_1002E0358()
{
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = sub_1002E04DC;

    return sub_1002C662C();
  }

  else
  {
    v4 = type metadata accessor for CommunicationError();
    sub_100017B04(&qword_1005B0F68, &type metadata accessor for CommunicationError, &protocol conformance descriptor for CommunicationError);
    v5 = swift_allocError();
    (*(*(v4 - 8) + 104))(v6, enum case for CommunicationError.missingTrampoline(_:), v4);
    swift_willThrow();
    v0[15] = v5;
    v7 = v0[3];

    return _swift_task_switch(sub_1002E05F8, v7, 0);
  }
}

uint64_t sub_1002E04DC()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1002E0758;
  }

  else
  {

    v2 = sub_1002E267C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002E05F8()
{
  v0[2] = v0[15];
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  if (swift_dynamicCast())
  {
    (*(v0[10] + 8))(v0[11], v0[9]);
    swift_errorRetain();
    v1 = v0[15];
  }

  else
  {
    (*(v0[7] + 104))(v0[8], enum case for ClientSessionError.Category.friendshipService(_:), v0[6]);
    sub_100017B04(&qword_1005B0F70, &type metadata accessor for ClientSessionError, &protocol conformance descriptor for ClientSessionError);
    v1 = swift_allocError();
    ClientSessionError.init(type:)();
  }

  v0[16] = v1;

  return _swift_task_switch(sub_1002E2678, 0, 0);
}

uint64_t sub_1002E0758()
{

  v0[15] = v0[14];
  v1 = v0[3];

  return _swift_task_switch(sub_1002E05F8, v1, 0);
}

uint64_t sub_1002E08B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v5 = type metadata accessor for ClientSessionError.Category();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v6 = type metadata accessor for ClientSessionError();
  v3[9] = v6;
  v3[10] = *(v6 - 8);
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_1002E09DC, a1, 0);
}

uint64_t sub_1002E09DC()
{
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = sub_1002E0B60;

    return sub_1002CD058();
  }

  else
  {
    v4 = type metadata accessor for CommunicationError();
    sub_100017B04(&qword_1005B0F68, &type metadata accessor for CommunicationError, &protocol conformance descriptor for CommunicationError);
    v5 = swift_allocError();
    (*(*(v4 - 8) + 104))(v6, enum case for CommunicationError.missingTrampoline(_:), v4);
    swift_willThrow();
    v0[16] = v5;
    v7 = v0[3];

    return _swift_task_switch(sub_1002E0DB4, v7, 0);
  }
}

uint64_t sub_1002E0B60(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v4 = sub_1002E0FC4;
  }

  else
  {

    v4 = sub_1002E0C7C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002E0C7C()
{
  v1 = v0[14];
  if (v1)
  {
    v2 = v0[15];
    v3 = NIDiscoveryToken.dataRepresentation.getter();
    if (v2)
    {

      v0[16] = v2;
      v5 = v0[3];

      return _swift_task_switch(sub_1002E0DB4, v5, 0);
    }

    v6 = v0[4];
    v7 = v3;
    v8 = v4;
    sub_100005F6C(v3, v4);
    v6(v7, v8, 0);
    sub_1000049D0(v7, v8);
    sub_1000049D0(v7, v8);
  }

  else
  {
    (v0[4])(0, 0xF000000000000000, 0);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1002E0DB4()
{
  v0[2] = v0[16];
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  if (swift_dynamicCast())
  {
    (*(v0[10] + 8))(v0[11], v0[9]);
    swift_errorRetain();
    v1 = v0[16];
  }

  else
  {
    (*(v0[7] + 104))(v0[8], enum case for ClientSessionError.Category.friendshipService(_:), v0[6]);
    sub_100017B04(&qword_1005B0F70, &type metadata accessor for ClientSessionError, &protocol conformance descriptor for ClientSessionError);
    v1 = swift_allocError();
    ClientSessionError.init(type:)();
  }

  v0[17] = v1;

  return _swift_task_switch(sub_1002E0F14, 0, 0);
}

uint64_t sub_1002E0F14()
{
  v1 = v0[17];
  v2 = v0[4];
  swift_errorRetain();
  v2(0, 0xF000000000000000, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002E0FC4()
{

  v0[16] = v0[15];
  v1 = v0[3];

  return _swift_task_switch(sub_1002E0DB4, v1, 0);
}

uint64_t sub_1002E1124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v5 = type metadata accessor for ClientSessionError.Category();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v6 = type metadata accessor for ClientSessionError();
  v3[9] = v6;
  v3[10] = *(v6 - 8);
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_1002E1248, a1, 0);
}

uint64_t sub_1002E1248()
{
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = sub_1002E04DC;

    return sub_1002C5E3C();
  }

  else
  {
    v4 = type metadata accessor for CommunicationError();
    sub_100017B04(&qword_1005B0F68, &type metadata accessor for CommunicationError, &protocol conformance descriptor for CommunicationError);
    v5 = swift_allocError();
    (*(*(v4 - 8) + 104))(v6, enum case for CommunicationError.missingTrampoline(_:), v4);
    swift_willThrow();
    v0[15] = v5;
    v7 = v0[3];

    return _swift_task_switch(sub_1002E05F8, v7, 0);
  }
}

uint64_t sub_1002E14F0()
{
  swift_weakDestroy();
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1002E154C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_1002E1124(v2, v3, v4);
}

uint64_t sub_1002E15F4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_1002E08B8(v2, v3, v4);
}

uint64_t sub_1002E169C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_1002E0234(v2, v3, v4);
}

uint64_t sub_1002E1744()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_1002DFE80(v2, v3, v4);
}

uint64_t sub_1002E17EC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_1002DF6D8(v2, v3, v4);
}

uint64_t sub_1002E1894()
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

  return sub_1002DEC80(v2, v3, v4, v5, v6);
}

uint64_t sub_1002E1950()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_1002DE724(v2, v3, v5, v4);
}

uint64_t sub_1002E1A00()
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

  return sub_1002DDF18(v2, v3, v4, v5, v6);
}

uint64_t sub_1002E1ABC()
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

  return sub_1002DD3AC(v2, v3, v4, v5, v6);
}

uint64_t sub_1002E1B78()
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

  return sub_1002DCDEC(v2, v3, v4, v5, v6);
}

uint64_t sub_1002E1C34()
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

  return sub_1002DC4C8(v2, v3, v4, v5, v6);
}

uint64_t sub_1002E1CF0()
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

  return sub_1002DBAE4(v2, v3, v4, v5, v6);
}

uint64_t sub_1002E1DAC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100003690;

  return sub_1002DADD8(v2, v3, v4, v5, v6);
}

uint64_t sub_1002E1E70()
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

  return sub_1002DA260(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1002E1F40()
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

  return sub_1002D961C(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1002E2010()
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

  return sub_1002D8A98(v2, v3, v4, v5, v6);
}

uint64_t sub_1002E20CC()
{
  sub_1000049D0(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1002E2114()
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

  return sub_1002D8060(v2, v3, v4, v5, v6);
}

unint64_t sub_1002E21D0()
{
  result = qword_1005B0FA0;
  if (!qword_1005B0FA0)
  {
    sub_10004B610(&qword_1005B0F98, &qword_1004D3518);
    sub_100017B04(&qword_1005AE868, &type metadata accessor for HandleType, &protocol conformance descriptor for HandleType);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0FA0);
  }

  return result;
}

unint64_t sub_1002E2284()
{
  result = qword_1005B0FA8;
  if (!qword_1005B0FA8)
  {
    sub_10004B610(&qword_1005B0578, &qword_1004D5CA0);
    sub_100017B04(&qword_1005B0ED0, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0FA8);
  }

  return result;
}

uint64_t sub_1002E234C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_1002D76D8(v2, v3, v4);
}

uint64_t sub_1002E23F4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1002E2484;

  return sub_1002D7924(v0);
}

uint64_t sub_1002E2484(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_1002E2590()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1002E25D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_1002D7200(v2, v3, v4);
}

uint64_t sub_1002E2698(uint64_t a1)
{
  if (*(a1 + 16) && (v2 = sub_1000110D8(0xD000000000000015, 0x80000001004DDC10), (v3 & 1) != 0))
  {
    sub_10000709C(*(a1 + 56) + 32 * v2, v7);

    sub_10004B564(&qword_1005A9268, &unk_1004D38E0);
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
  }

  sub_10005A48C();
  swift_allocError();
  *v5 = 5;
  return swift_willThrow();
}

uint64_t getEnumTagSinglePayload for CompanionPeopleFindingCapabilityEnvelopeV1(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1002E283C(char a1)
{
  _StringGuts.grow(_:)(23);
  sub_1002E2F60();
  v2 = CustomStringConvertible.typeDescription.getter();

  v3._object = 0x80000001004E7230;
  v3._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v3);
  if (a1)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (a1)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = v5;
  String.append(_:)(*&v4);

  return v2;
}

void sub_1002E2930(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001004E7250 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t sub_1002E29C4(uint64_t a1)
{
  v2 = sub_1002E2F0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002E2A00(uint64_t a1)
{
  v2 = sub_1002E2F0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002E2A3C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_10004B564(&qword_1005B0FC8, &qword_1004D36D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_100011AEC(a1, a1[3]);
  sub_1002E2F0C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(a1);
  }

  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  result = sub_100004984(a1);
  *a2 = v9 & 1;
  return result;
}

uint64_t sub_1002E2BA0(void *a1)
{
  v2 = sub_10004B564(&qword_1005B0FD8, &qword_1004D36D8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_100011AEC(a1, a1[3]);
  sub_1002E2F0C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1002E2CEC(uint64_t a1)
{
  v2 = sub_1002E2EB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002E2D28(uint64_t a1)
{
  v2 = sub_1002E2EB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002E2D8C(void *a1)
{
  v2 = sub_10004B564(&qword_1005B0FB8, &qword_1004D36C8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_100011AEC(a1, a1[3]);
  sub_1002E2EB8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1002E2EB8()
{
  result = qword_1005B0FC0;
  if (!qword_1005B0FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0FC0);
  }

  return result;
}

unint64_t sub_1002E2F0C()
{
  result = qword_1005B0FD0;
  if (!qword_1005B0FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0FD0);
  }

  return result;
}

unint64_t sub_1002E2F60()
{
  result = qword_1005B0FE0;
  if (!qword_1005B0FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0FE0);
  }

  return result;
}

unint64_t sub_1002E2FD8()
{
  result = qword_1005B0FE8;
  if (!qword_1005B0FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0FE8);
  }

  return result;
}

unint64_t sub_1002E3030()
{
  result = qword_1005B0FF0;
  if (!qword_1005B0FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0FF0);
  }

  return result;
}

unint64_t sub_1002E3088()
{
  result = qword_1005B0FF8;
  if (!qword_1005B0FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0FF8);
  }

  return result;
}

unint64_t sub_1002E30E0()
{
  result = qword_1005B1000;
  if (!qword_1005B1000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1000);
  }

  return result;
}

unint64_t sub_1002E3138()
{
  result = qword_1005B1008;
  if (!qword_1005B1008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1008);
  }

  return result;
}

unint64_t sub_1002E3190()
{
  sub_10004B564(&qword_1005B0BC0, &qword_1004D2868);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C0BD0;
  v2 = v0[1];
  v8 = *v0;
  *(inited + 48) = v8;
  *(inited + 32) = 0x444965636E6566;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0xD000000000000015;
  *(inited + 88) = 0x80000001004DDC10;
  *(inited + 96) = v2;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0x64726F6365526B63;
  *(inited + 136) = 0xEA00000000004449;
  v6 = v0[2];
  v7 = v2;
  *(inited + 168) = &type metadata for Data;
  *(inited + 144) = v0[2];
  sub_10007C30C(&v8, v5);
  sub_10007C30C(&v7, v5);
  sub_1001066B0(&v6, v5);
  v3 = sub_100207B7C(inited);
  swift_setDeallocating();
  sub_10004B564(&qword_1005B0088, &qword_1004D38F0);
  swift_arrayDestroy();
  return v3;
}

void sub_1002E32DC(uint64_t a1@<X8>)
{
  v2 = sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  __chkstk_darwin(v2 - 8);
  v4 = &v26[-1] - v3;
  sub_10004B564(&qword_1005AE320, &qword_1004D38D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1004C1900;
  v6 = sub_1002E3F18();
  *(v5 + 56) = sub_10004B564(&qword_1005B1018, &qword_1004D38D8);
  *(v5 + 32) = v6;
  v7 = objc_allocWithZone(NSSet);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v9 = [v7 initWithArray:isa];

  v26[0] = 0;
  static Set._conditionallyBridgeFromObjectiveC(_:result:)();

  if (!v26[0])
  {
    goto LABEL_6;
  }

  v10 = objc_opt_self();
  v11 = Set._bridgeToObjectiveC()().super.isa;

  v12 = Data._bridgeToObjectiveC()().super.isa;
  v26[0] = 0;
  v13 = [v10 _strictlyUnarchivedObjectOfClasses:v11 fromData:v12 error:v26];

  if (!v13)
  {
    v24 = v26[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return;
  }

  v14 = v26[0];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    sub_10005CF04();
    swift_allocError();
    *v23 = 11;
    swift_willThrow();
    return;
  }

  v15 = v25;
  v16 = [v25 recordName];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  UUID.init(uuidString:)();
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v4, 1, v20) == 1)
  {
    sub_1002E3F64(v4);
    type metadata accessor for FenceServiceClient.Failure(0);
    sub_1002E3FCC();
    swift_allocError();
    *v22 = v17;
    v22[1] = v19;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {

    (*(v21 + 32))(a1, v4, v20);
  }
}

uint64_t sub_1002E3694(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005B1030, &qword_1004D3A00);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_100011AEC(a1, a1[3]);
  sub_1002E4788();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = *(v3 + 32);
    v13 = v12;
    v11[23] = 2;
    sub_1001066B0(&v13, v11);
    sub_10010670C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000049D0(v12, *(&v12 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1002E388C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000015;
  v4 = 0x80000001004DDC10;
  if (v2 == 1)
  {
    v5 = 0x80000001004DDC10;
  }

  else
  {
    v3 = 0x64726F6365526B63;
    v5 = 0xEA00000000004449;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x444965636E6566;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0xD000000000000015;
  if (*a2 != 1)
  {
    v8 = 0x64726F6365526B63;
    v4 = 0xEA00000000004449;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x444965636E6566;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1002E3990()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1002E3A3C(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_1002E3AD4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002E3B7C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002E44A8(*a1);
  *a2 = result;
  return result;
}

void sub_1002E3BAC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x80000001004DDC10;
  v5 = 0xD000000000000015;
  if (v2 != 1)
  {
    v5 = 0x64726F6365526B63;
    v4 = 0xEA00000000004449;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x444965636E6566;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1002E3C14()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0x64726F6365526B63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x444965636E6566;
  }
}

unint64_t sub_1002E3C78@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1002E44A8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1002E3CA0(uint64_t a1)
{
  v2 = sub_1002E4788();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002E3CDC(uint64_t a1)
{
  v2 = sub_1002E4788();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1002E3D18@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1002E44F4(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_1002E3D74()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v14 = 0xE000000000000000;
  _StringGuts.grow(_:)(46);

  v13 = 0x3A444965636E6566;
  v14 = 0xE900000000000020;
  String.append(_:)(*v0);
  v5._countAndFlagsBits = 0x64616F6C7961700ALL;
  v5._object = 0xEA0000000000203ALL;
  String.append(_:)(v5);
  String.append(_:)(v0[1]);
  v6._object = 0x80000001004E7270;
  v6._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v6);
  sub_1002E32DC(v4);
  v7 = UUID.uuidString.getter();
  v9 = v8;
  (*(v2 + 8))(v4, v1);
  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  return v13;
}

unint64_t sub_1002E3F18()
{
  result = qword_1005B1010;
  if (!qword_1005B1010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005B1010);
  }

  return result;
}

uint64_t sub_1002E3F64(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1002E3FCC()
{
  result = qword_1005A9140;
  if (!qword_1005A9140)
  {
    type metadata accessor for FenceServiceClient.Failure(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9140);
  }

  return result;
}

uint64_t sub_1002E4024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1000110D8(0x444965636E6566, 0xE700000000000000), (v5 & 1) != 0) && (sub_10000709C(*(a1 + 56) + 32 * v4, v12), sub_10004B564(&qword_1005A9268, &unk_1004D38E0), (swift_dynamicCast() & 1) != 0))
  {
    if (*(a1 + 16) && (v6 = sub_1000110D8(0x64726F6365526B63, 0xEA00000000004449), (v7 & 1) != 0))
    {
      sub_10000709C(*(a1 + 56) + 32 * v6, v12);

      result = swift_dynamicCast();
      if (result)
      {
        *a2 = v11;
        *(a2 + 16) = 0xD000000000000017;
        *(a2 + 24) = 0x80000001004DDBF0;
        *(a2 + 32) = v11;
        return result;
      }
    }

    else
    {
    }

    v9 = 13;
  }

  else
  {

    v9 = 12;
  }

  sub_10005CF04();
  swift_allocError();
  *v10 = v9;
  return swift_willThrow();
}

void sub_1002E41B8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  UUID.uuidString.getter();
  v9 = objc_allocWithZone(CKRecordID);
  v10 = String._bridgeToObjectiveC()();

  v11 = [v9 initWithRecordName:v10];

  v22 = 0;
  v12 = [objc_opt_self() archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v22];
  if (v12)
  {
    v13 = v12;
    v14 = v22;
    v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = a1;
    v18 = v17;

    v19 = type metadata accessor for UUID();
    (*(*(v19 - 8) + 8))(a3, v19);

    sub_100005F6C(v15, v18);

    sub_1000049D0(v15, v18);
    *a4 = v16;
    a4[1] = a2;
    a4[2] = 0xD000000000000017;
    a4[3] = 0x80000001004DDBF0;
    a4[4] = v15;
    a4[5] = v18;
  }

  else
  {
    v20 = v22;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v21 = type metadata accessor for UUID();
    (*(*(v21 - 8) + 8))(a3, v21);
  }
}

__n128 sub_1002E43F0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1002E4404(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1002E444C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1002E44A8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10058BCE0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

void sub_1002E44F4(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_10004B564(&qword_1005B1020, &qword_1004D39F8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_100011AEC(a1, a1[3]);
  sub_1002E4788();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100004984(a1);
  }

  else
  {
    LOBYTE(v22) = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v10;
    v20 = a2;
    v21 = v9;
    LOBYTE(v22) = 1;
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    v14 = v13;
    v19 = v12;
    v24 = 2;
    sub_1000F4D64();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v15 = v22;
    v16 = v23;

    sub_100005F6C(v15, v16);
    sub_100004984(a1);

    sub_1000049D0(v15, v16);
    v17 = v20;
    *v20 = v21;
    v17[1] = v11;
    v17[2] = v19;
    v17[3] = v14;
    v17[4] = v15;
    v17[5] = v16;
  }
}

unint64_t sub_1002E4788()
{
  result = qword_1005B1028;
  if (!qword_1005B1028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1028);
  }

  return result;
}

unint64_t sub_1002E47F0()
{
  result = qword_1005B1038;
  if (!qword_1005B1038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1038);
  }

  return result;
}

unint64_t sub_1002E4848()
{
  result = qword_1005B1040;
  if (!qword_1005B1040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1040);
  }

  return result;
}

unint64_t sub_1002E48A0()
{
  result = qword_1005B1048;
  if (!qword_1005B1048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1048);
  }

  return result;
}

uint64_t sub_1002E48F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_10004B564(&qword_1005A9DB8, &unk_1004CC1D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v39 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16) || (v12 = v9, v13 = sub_1000110D8(12400, 0xE200000000000000), (v14 & 1) == 0) || (sub_10000709C(*(a1 + 56) + 32 * v13, v47), sub_10004B564(&qword_1005A9268, &unk_1004D38E0), (swift_dynamicCast() & 1) == 0))
  {

    sub_10005CF04();
    swift_allocError();
    v19 = 14;
LABEL_10:
    *v18 = v19;
    return swift_willThrow();
  }

  v15 = v46;
  if (!*(a1 + 16) || (v48 = v45, v16 = sub_1000110D8(12656, 0xE200000000000000), (v17 & 1) == 0) || (sub_10000709C(*(a1 + 56) + 32 * v16, v47), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_12;
  }

  v44 = v15;
  URL.init(string:)();

  if ((*(v8 + 48))(v6, 1, v12) == 1)
  {

    sub_1001980FC(v6);
LABEL_12:
    sub_10005CF04();
    swift_allocError();
    v19 = 15;
    goto LABEL_10;
  }

  v43 = *(v8 + 32);
  v43(v11, v6, v12);
  if (*(a1 + 16) && (v21 = sub_1000110D8(0xD000000000000015, 0x80000001004DDC10), (v22 & 1) != 0) && (sub_10000709C(*(a1 + 56) + 32 * v21, v47), (swift_dynamicCast() & 1) != 0))
  {
    if (*(a1 + 16) && (v42 = v46, v23 = v45, v24 = sub_1000110D8(118, 0xE100000000000000), (v25 & 1) != 0) && (sub_10000709C(*(a1 + 56) + 32 * v24, v47), (swift_dynamicCast() & 1) != 0))
    {
      v41 = v46;
      if (*(a1 + 16) && (v40 = v45, v26 = sub_1000110D8(0x64726F6365526B63, 0xEC000000656D614ELL), (v27 & 1) != 0))
      {
        sub_10000709C(*(a1 + 56) + 32 * v26, v47);

        if (swift_dynamicCast())
        {
          v28 = v45;
          v29 = v46;
          v30 = v44;
          *a2 = v48;
          a2[1] = v30;
          v31 = type metadata accessor for FenceShareInviteEnvelopeV1(0);
          result = (v43)(a2 + v31[5], v11, v12);
          v32 = (a2 + v31[6]);
          v33 = v42;
          *v32 = v23;
          v32[1] = v33;
          v34 = (a2 + v31[7]);
          v35 = v41;
          *v34 = v40;
          v34[1] = v35;
          v36 = (a2 + v31[8]);
          *v36 = v28;
          v36[1] = v29;
          return result;
        }
      }

      else
      {
      }

      sub_10005CF04();
      swift_allocError();
      v38 = 18;
    }

    else
    {

      sub_10005CF04();
      swift_allocError();
      v38 = 17;
    }
  }

  else
  {

    sub_10005CF04();
    swift_allocError();
    v38 = 16;
  }

  *v37 = v38;
  swift_willThrow();
  return (*(v8 + 8))(v11, v12);
}

unint64_t sub_1002E4E34()
{
  v1 = v0;
  sub_10004B564(&qword_1005B0BC0, &qword_1004D2868);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C0BC0;
  *(inited + 32) = 12400;
  *(inited + 40) = 0xE200000000000000;
  v3 = *v0;
  v4 = v0[1];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 12656;
  *(inited + 88) = 0xE200000000000000;
  v5 = type metadata accessor for FenceShareInviteEnvelopeV1(0);

  *(inited + 96) = URL.absoluteString.getter();
  *(inited + 104) = v6;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0xD000000000000015;
  *(inited + 136) = 0x80000001004DDC10;
  v7 = (v1 + v5[6]);
  v8 = v7[1];
  *(inited + 144) = *v7;
  *(inited + 152) = v8;
  *(inited + 168) = &type metadata for String;
  *(inited + 176) = 118;
  *(inited + 184) = 0xE100000000000000;
  v9 = (v1 + v5[7]);
  v10 = v9[1];
  *(inited + 192) = *v9;
  *(inited + 200) = v10;
  *(inited + 216) = &type metadata for String;
  strcpy((inited + 224), "ckRecordName");
  *(inited + 237) = 0;
  *(inited + 238) = -5120;
  v11 = (v1 + v5[8]);
  v12 = *v11;
  v13 = v11[1];
  *(inited + 264) = &type metadata for String;
  *(inited + 240) = v12;
  *(inited + 248) = v13;

  v14 = sub_100207B7C(inited);
  swift_setDeallocating();
  sub_10004B564(&qword_1005B0088, &qword_1004D38F0);
  swift_arrayDestroy();
  return v14;
}

uint64_t sub_1002E4FCC(void *a1)
{
  v3 = sub_10004B564(&qword_1005B1100, &qword_1004D3C08);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100011AEC(a1, a1[3]);
  sub_1002E5D10();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for FenceShareInviteEnvelopeV1(0);
    v8[14] = 1;
    type metadata accessor for URL();
    sub_10018696C(&qword_1005ADCF8, &protocol conformance descriptor for URL);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_1002E5204(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for URL();
  v27 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10004B564(&qword_1005B10F0, &qword_1004D3C00);
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v7 = v25 - v6;
  v8 = type metadata accessor for FenceShareInviteEnvelopeV1(0);
  __chkstk_darwin(v8);
  v10 = (v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100011AEC(a1, a1[3]);
  sub_1002E5D10();
  v29 = v7;
  v11 = v31;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v11)
  {
    sub_100004984(a1);
  }

  else
  {
    v12 = v27;
    v36 = 0;
    *v10 = KeyedDecodingContainer.decode(_:forKey:)();
    v10[1] = v13;
    v31 = v13;
    v35 = 1;
    sub_10018696C(&qword_1005ADCC0, &protocol conformance descriptor for URL);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v12 + 32))(v10 + v8[5], v5, v3);
    v34 = 2;
    v25[1] = 0;
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    v15 = (v10 + v8[6]);
    *v15 = v14;
    v15[1] = v16;
    v33 = 3;
    v17 = KeyedDecodingContainer.decode(_:forKey:)();
    v18 = (v10 + v8[7]);
    *v18 = v17;
    v18[1] = v19;
    v32 = 4;
    v20 = KeyedDecodingContainer.decode(_:forKey:)();
    v25[0] = v21;
    v22 = v20;
    (*(v28 + 8))(v29, v30);
    v23 = (v10 + v8[8]);
    v24 = v25[0];
    *v23 = v22;
    v23[1] = v24;
    sub_1002E5D64(v10, v26);
    sub_100004984(a1);
    sub_1002E5DC8(v10);
  }
}

Swift::Int sub_1002E5674()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1002E5740(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_1002E57F8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002E58C0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002E5F3C(*a1);
  *a2 = result;
  return result;
}

void sub_1002E58F0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 12400;
  v5 = 0x80000001004DDC10;
  v6 = 0xD000000000000015;
  v7 = 0xE100000000000000;
  v8 = 118;
  if (v2 != 3)
  {
    v8 = 0x64726F6365526B63;
    v7 = 0xEC000000656D614ELL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 12656;
    v3 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_1002E5978()
{
  v1 = *v0;
  v2 = 12400;
  v3 = 0xD000000000000015;
  v4 = 118;
  if (v1 != 3)
  {
    v4 = 0x64726F6365526B63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 12656;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1002E59FC@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1002E5F3C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1002E5A24(uint64_t a1)
{
  v2 = sub_1002E5D10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002E5A60(uint64_t a1)
{
  v2 = sub_1002E5D10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002E5ACC()
{
  _StringGuts.grow(_:)(62);
  v1._countAndFlagsBits = 540684400;
  v1._object = 0xE400000000000000;
  String.append(_:)(v1);
  String.append(_:)(*v0);
  v2._countAndFlagsBits = 0x203A31700ALL;
  v2._object = 0xE500000000000000;
  String.append(_:)(v2);
  v3 = type metadata accessor for FenceShareInviteEnvelopeV1(0);
  v4._countAndFlagsBits = URL.absoluteString.getter();
  String.append(_:)(v4);

  v5._object = 0x80000001004E7290;
  v5._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v5);
  String.append(_:)(*(v0 + v3[6]));
  v6._countAndFlagsBits = 0x726F6365526B630ALL;
  v6._object = 0xEF203A656D614E64;
  String.append(_:)(v6);
  String.append(_:)(*(v0 + v3[8]));
  v7._countAndFlagsBits = 540702218;
  v7._object = 0xE400000000000000;
  String.append(_:)(v7);
  String.append(_:)(*(v0 + v3[7]));
  return 0;
}

uint64_t type metadata accessor for FenceShareInviteEnvelopeV1(uint64_t a1)
{
  result = qword_1005B10A8;
  if (!qword_1005B10A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002E5C90(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1002E5D10()
{
  result = qword_1005B10F8;
  if (!qword_1005B10F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B10F8);
  }

  return result;
}

uint64_t sub_1002E5D64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FenceShareInviteEnvelopeV1(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002E5DC8(uint64_t a1)
{
  v2 = type metadata accessor for FenceShareInviteEnvelopeV1(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1002E5E38()
{
  result = qword_1005B1108;
  if (!qword_1005B1108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1108);
  }

  return result;
}

unint64_t sub_1002E5E90()
{
  result = qword_1005B1110;
  if (!qword_1005B1110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1110);
  }

  return result;
}

unint64_t sub_1002E5EE8()
{
  result = qword_1005B1118;
  if (!qword_1005B1118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1118);
  }

  return result;
}

unint64_t sub_1002E5F3C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10058BD48, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1002E5F88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  v3 = sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v4 = __chkstk_darwin(v3 - 8);
  v117 = &v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v119 = (&v115 - v6);
  v123 = type metadata accessor for UUID();
  v122 = *(v123 - 8);
  v7 = __chkstk_darwin(v123);
  v116 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v118 = &v115 - v10;
  __chkstk_darwin(v9);
  v120 = &v115 - v11;
  v12 = (a1 + 64);
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 64);
  v16 = (v13 + 63) >> 6;

  v17 = 0;
  v18 = _swiftEmptyArrayStorage;
  while (1)
  {
    v19 = v17;
    if (!v15)
    {
      break;
    }

LABEL_8:
    v20 = __clz(__rbit64(v15)) | (v17 << 6);
    v21 = *(a1 + 48) + 16 * v20;
    v22 = *v21;
    v23 = *(v21 + 8);
    sub_10000709C(*(a1 + 56) + 32 * v20, v132);
    v131[0] = v22;
    v131[1] = v23;
    swift_bridgeObjectRetain_n();
    v24._countAndFlagsBits = v22;
    v24._object = v23;
    v25 = _findStringSwitchCase(cases:string:)(&off_10058A818, v24);

    if (v25 > 6)
    {
      v130 = 0;
      v128 = 0u;
      v129 = 0u;
    }

    else
    {
      LOBYTE(v128) = v25;
      sub_10000709C(v132, &v128 + 8);
    }

    v15 &= v15 - 1;
    sub_100002CE0(v131, &qword_1005B1128, &qword_1004D3D68);
    if (v130)
    {
      v125 = v128;
      v126 = v129;
      v127 = v130;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1001FCBA8(0, v18[2] + 1, 1, v18);
      }

      v27 = v18[2];
      v26 = v18[3];
      if (v27 >= v26 >> 1)
      {
        v18 = sub_1001FCBA8((v26 > 1), v27 + 1, 1, v18);
      }

      v18[2] = v27 + 1;
      v28 = &v18[5 * v27];
      v29 = v125;
      v30 = v126;
      v28[8] = v127;
      *(v28 + 2) = v29;
      *(v28 + 3) = v30;
    }

    else
    {
      sub_100002CE0(&v128, &qword_1005B1130, &unk_1004D3D70);
    }
  }

  while (1)
  {
    v17 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_43;
    }

    if (v17 >= v16)
    {
      break;
    }

    v15 = v12[v17];
    ++v19;
    if (v15)
    {
      goto LABEL_8;
    }
  }

  if (v18[2])
  {
    sub_10004B564(&qword_1005B00F8, &qword_1004D1688);
    v31 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v31 = _swiftEmptyDictionarySingleton;
  }

  v131[0] = v31;
  v32 = v124;
  sub_1002E7DC8(v18, 1, v131);
  if (v32)
  {

    __break(1u);
    return result;
  }

  v12 = v131[0];
  if (!*(v131[0] + 2) || (v33 = sub_1001FDA10(2), (v34 & 1) == 0) || (sub_10000709C(v12[7] + 32 * v33, v131), sub_10004B564(&qword_1005A9268, &unk_1004D38E0), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_28;
  }

  v35 = v119;
  UUID.init(uuidString:)();

  v36 = v122;
  v37 = *(v122 + 48);
  v38 = v123;
  if (v37(v35, 1, v123) == 1)
  {

    sub_100002CE0(v35, &qword_1005A96E0, &qword_1004C2A80);
LABEL_28:
    sub_10005CF04();
    swift_allocError();
    *v39 = 19;
    return swift_willThrow();
  }

  v41 = v35;
  v42 = v120;
  v124 = *(v36 + 32);
  v124(v120, v41, v38);
  v119 = *(v36 + 16);
  v119(v118, v42, v38);
  Fence.ID.init(id:)();
  if (!v12[2] || (v43 = sub_1001FDA10(1), (v44 & 1) == 0) || (sub_10000709C(v12[7] + 32 * v43, v131), (swift_dynamicCast() & 1) == 0))
  {

LABEL_36:
    sub_10005CF04();
    swift_allocError();
    *v45 = 20;
    swift_willThrow();
    (*(v122 + 8))(v120, v123);
    v46 = 0;
    v47 = 0;
    goto LABEL_37;
  }

  v18 = v117;
  UUID.init(uuidString:)();

  v15 = v123;
  if (v37(v18, 1, v123) == 1)
  {

    sub_100002CE0(v18, &qword_1005A96E0, &qword_1004C2A80);
    goto LABEL_36;
  }

LABEL_43:
  v54 = v18;
  v55 = v116;
  v124(v116, v54, v15);
  v119(v118, v55, v15);
  v56 = type metadata accessor for FenceTriggerEnvelopeV1(0);
  v48 = v121;
  Fence.TriggerID.init(id:)();
  if (!v12[2] || (v57 = sub_1001FDA10(5), (v58 & 1) == 0) || (sub_10000709C(v12[7] + 32 * v57, v131), (swift_dynamicCast() & 1) == 0))
  {

    sub_10005CF04();
    swift_allocError();
    v47 = 0;
    *v66 = 21;
    goto LABEL_52;
  }

  v59 = v56[7];
  Date.init(timeIntervalSince1970:)();
  if (!v12[2] || (v60 = sub_1001FDA10(3), (v61 & 1) == 0) || (sub_10000709C(v12[7] + 32 * v60, v131), (swift_dynamicCast() & 1) == 0))
  {

    sub_10005CF04();
    swift_allocError();
    *v70 = 22;
    v47 = 1;
    goto LABEL_52;
  }

  v62 = v128;

  v63 = sub_1002E804C(v62);
  v64 = v63;
  if (v63 == 5)
  {

    type metadata accessor for FenceServiceClient.Failure(0);
    sub_1002E8098(&qword_1005A9140, type metadata accessor for FenceServiceClient.Failure, &unk_1004D25C8);
    swift_allocError();
    *v65 = v62;
    swift_storeEnumTagMultiPayload();
    v47 = 1;
    v48 = v121;
    v55 = v116;
LABEL_52:
    swift_willThrow();
    v67 = *(v122 + 8);
    v68 = v55;
    v69 = v123;
    v67(v68, v123);
    v67(v120, v69);
    v46 = 1;
    goto LABEL_38;
  }

  v71 = v63;

  *(v121 + v56[8]) = v71;
  if (v64 <= 1)
  {
    if (v64)
    {
      goto LABEL_67;
    }
  }

  else if (v64 != 2)
  {
    if (v64 != 3)
    {

      v72 = *(v122 + 8);
      v73 = v123;
      v72(v116, v123);
      v72(v120, v73);
      v74 = v56[6];
      v75 = type metadata accessor for Date();
      v76 = v121;
      (*(*(v75 - 8) + 16))(v121 + v74, v121 + v59, v75);
      v77 = &enum case for Fence.TriggerPosition.undetermined(_:);
LABEL_58:
      v78 = *v77;
      v79 = type metadata accessor for Fence.TriggerPosition();
      return (*(*(v79 - 8) + 104))(v76 + v74, v78, v79);
    }

LABEL_67:
    if (v12[2])
    {
      v97 = sub_1001FDA10(6);
      if (v98)
      {
        sub_10000709C(v12[7] + 32 * v97, v131);

        if (swift_dynamicCast())
        {
          v82 = *(&v128 + 1);
          v83 = v128;
          sub_10004B564(&qword_1005AE320, &qword_1004D38D0);
          v99 = swift_allocObject();
          *(v99 + 16) = xmmword_1004C1900;
          v100 = sub_1000545A4(0, &unk_1005ABB70, CLLocation_ptr);
          *(v99 + 56) = sub_10004B564(&qword_1005B1138, &unk_1004D3D80);
          *(v99 + 32) = v100;
          v101 = objc_allocWithZone(NSSet);
          isa = Array._bridgeToObjectiveC()().super.isa;

          v103 = [v101 initWithArray:isa];

          v131[0] = 0;
          static Set._conditionallyBridgeFromObjectiveC(_:result:)();

          if (v131[0])
          {
            v104 = objc_opt_self();
            v105 = Set._bridgeToObjectiveC()().super.isa;

            v106 = Data._bridgeToObjectiveC()().super.isa;
            v131[0] = 0;
            v107 = [v104 _strictlyUnarchivedObjectOfClasses:v105 fromData:v106 error:v131];

            v93 = v131[0];
            if (v107)
            {
              v108 = v131[0];
              _bridgeAnyObjectToAny(_:)();
              sub_1000049D0(v83, v82);
              swift_unknownObjectRelease();
              if (swift_dynamicCast())
              {
                v109 = *(v122 + 8);
                v110 = v123;
                v109(v116, v123);
                v109(v120, v110);
                v74 = v56[6];
                v76 = v121;
                *(v121 + v74) = v128;
                v77 = &enum case for Fence.TriggerPosition.outside(_:);
                goto LABEL_58;
              }

              goto LABEL_75;
            }

LABEL_78:
            v114 = v93;
            _convertNSErrorToError(_:)();

            swift_willThrow();
            sub_1000049D0(v83, v82);
            goto LABEL_76;
          }

LABEL_77:
          sub_1000049D0(v83, v82);
          goto LABEL_75;
        }

        goto LABEL_75;
      }
    }

LABEL_74:

    goto LABEL_75;
  }

  if (!v12[2])
  {
    goto LABEL_74;
  }

  v80 = sub_1001FDA10(6);
  if ((v81 & 1) == 0)
  {
    goto LABEL_74;
  }

  sub_10000709C(v12[7] + 32 * v80, v131);

  if (swift_dynamicCast())
  {
    v82 = *(&v128 + 1);
    v83 = v128;
    sub_10004B564(&qword_1005AE320, &qword_1004D38D0);
    v84 = swift_allocObject();
    *(v84 + 16) = xmmword_1004C1900;
    v85 = sub_1000545A4(0, &unk_1005ABB70, CLLocation_ptr);
    *(v84 + 56) = sub_10004B564(&qword_1005B1138, &unk_1004D3D80);
    *(v84 + 32) = v85;
    v86 = objc_allocWithZone(NSSet);
    v87 = Array._bridgeToObjectiveC()().super.isa;

    v88 = [v86 initWithArray:v87];

    v131[0] = 0;
    static Set._conditionallyBridgeFromObjectiveC(_:result:)();

    if (v131[0])
    {
      v89 = objc_opt_self();
      v90 = Set._bridgeToObjectiveC()().super.isa;

      v91 = Data._bridgeToObjectiveC()().super.isa;
      v131[0] = 0;
      v92 = [v89 _strictlyUnarchivedObjectOfClasses:v90 fromData:v91 error:v131];

      v93 = v131[0];
      if (v92)
      {
        v94 = v131[0];
        _bridgeAnyObjectToAny(_:)();
        sub_1000049D0(v83, v82);
        swift_unknownObjectRelease();
        if (swift_dynamicCast())
        {
          v95 = *(v122 + 8);
          v96 = v123;
          v95(v116, v123);
          v95(v120, v96);
          v74 = v56[6];
          v76 = v121;
          *(v121 + v74) = v128;
          v77 = &enum case for Fence.TriggerPosition.inside(_:);
          goto LABEL_58;
        }

        goto LABEL_75;
      }

      goto LABEL_78;
    }

    goto LABEL_77;
  }

LABEL_75:
  sub_10005CF04();
  swift_allocError();
  *v111 = 23;
  swift_willThrow();
LABEL_76:
  v112 = *(v122 + 8);
  v113 = v123;
  v112(v116, v123);
  v112(v120, v113);
  v46 = 1;
  v47 = 1;
LABEL_37:
  v48 = v121;
LABEL_38:
  v49 = type metadata accessor for Fence.ID();
  result = (*(*(v49 - 8) + 8))(v48, v49);
  if (v46)
  {
    v50 = *(type metadata accessor for FenceTriggerEnvelopeV1(0) + 20);
    v51 = type metadata accessor for Fence.TriggerID();
    result = (*(*(v51 - 8) + 8))(v48 + v50, v51);
  }

  if (v47)
  {
    v52 = *(type metadata accessor for FenceTriggerEnvelopeV1(0) + 28);
    v53 = type metadata accessor for Date();
    return (*(*(v53 - 8) + 8))(v48 + v52, v53);
  }

  return result;
}