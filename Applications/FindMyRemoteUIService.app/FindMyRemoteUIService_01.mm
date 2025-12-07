uint64_t sub_1000197EC()
{
  v1 = *(v0 + 1440);
  v2 = *(v0 + 1376);
  sub_1000119F4(v2);
  sub_100004F1C(v2, &qword_100087AB8, &qword_100062F90);

  return _swift_task_switch(sub_100019874, v1, 0);
}

uint64_t sub_100019874()
{
  v1 = *(v0 + 1440);
  sub_100011CC8(*(v0 + 1321));

  return _swift_task_switch(sub_1000198E0, v1, 0);
}

uint64_t sub_1000198E0()
{
  v1 = *(v0 + 1440);
  sub_100011E7C(*(v0 + 1416), 0);

  return _swift_task_switch(sub_100019950, v1, 0);
}

uint64_t sub_100019950()
{
  v1 = *(v0 + 1440);
  sub_100012050(*(v0 + 1322));

  return _swift_task_switch(sub_1000199BC, v1, 0);
}

uint64_t sub_1000199BC()
{
  v1 = v0[180];
  sub_100012204(v0[178], v0[179]);

  return _swift_task_switch(sub_100019A2C, v1, 0);
}

uint64_t sub_100019A2C()
{
  v1 = *(v0 + 1440);
  sub_100013F4C(*(v0 + 1311));

  return _swift_task_switch(sub_100019A98, v1, 0);
}

uint64_t sub_100019A98()
{
  v1 = *(v0 + 1440);
  sub_100014100(*(v0 + 1308));

  return _swift_task_switch(sub_100019B04, v1, 0);
}

uint64_t sub_100019B04()
{
  v1 = *(v0 + 1440);
  sub_100014588(*(v0 + 1309));

  return _swift_task_switch(sub_100019B70, v1, 0);
}

uint64_t sub_100019B70()
{
  v1 = *(v0 + 1368);
  sub_100012D90(*(v0 + 1310) & 1);

  return _swift_task_switch(sub_100019BE4, v1, 0);
}

uint64_t sub_100019BE4()
{
  v1 = v0[178];
  v14 = v0[176];
  v2 = v0[175];
  v12 = v0[179];
  v13 = v0[174];
  v3 = *(v0[171] + 112);
  v4 = swift_allocObject();
  swift_weakInit();
  v0[18] = sub_100036624;
  v0[19] = v4;
  v0[14] = _NSConcreteStackBlock;
  v0[15] = 1107296256;
  v0[16] = sub_10002E794;
  v0[17] = &unk_10007A678;
  v5 = _Block_copy(v0 + 14);

  [v3 setProximityPairingErrorCallback:v5];
  _Block_release(v5);
  v6 = swift_allocObject();
  swift_weakInit();
  v0[12] = sub_100036644;
  v0[13] = v6;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_10002EED4;
  v0[11] = &unk_10007A6A0;
  v7 = _Block_copy(v0 + 8);

  [v3 setNotifyPairingAccessoryChanged:v7];
  _Block_release(v7);
  v8 = swift_allocObject();
  swift_weakInit();
  v0[6] = sub_10003664C;
  v0[7] = v8;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100030288;
  v0[5] = &unk_10007A6C8;
  v9 = _Block_copy(v0 + 2);

  [v3 setProximityPairingCompletedCallback:v9];
  _Block_release(v9);
  sub_100014CF8(v1, v12);
  (*(v2 + 8))(v14, v13);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100019EBC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001616C;

  return sub_100019F4C();
}

uint64_t sub_100019F4C()
{
  *(v1 + 464) = v0;
  sub_100003958(&qword_100087DB0, &qword_1000636B0);
  *(v1 + 472) = swift_task_alloc();

  return _swift_task_switch(sub_100019FE8, v0, 0);
}

uint64_t sub_100019FE8()
{
  type metadata accessor for WorkItemQueue();
  if (static WorkItemQueue.called(on:)())
  {
    v1 = *(v0[58] + 136);
    v0[60] = v1;

    return _swift_task_switch(sub_10001A0E8, v1, 0);
  }

  else
  {
    sub_10003477C();
    swift_allocError();
    *v2 = 5;
    swift_willThrow();

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_10001A0E8()
{
  v1 = *(v0 + 480);
  if (*(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_account + 8) == 1)
  {
    v2 = *(v0 + 464);
    if (*(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_profilePicture))
    {
      v3 = sub_100037090;
    }

    else
    {
      v3 = sub_10001A278;
    }
  }

  else
  {
    v2 = *(v0 + 464);
    v3 = sub_10001A158;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_10001A158()
{
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000054DC(v1, qword_10008C038);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Account info already saved!", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10001A278()
{
  v1 = *(v0 + 464);
  if (*(v1 + 184) != 1)
  {
    v10 = *(v0 + 472);
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    v13 = sub_100036CC0(&qword_100087E50, v12, type metadata accessor for PairingContentViewModel, &unk_100063628);
    v14 = swift_allocObject();
    v14[2] = v1;
    v14[3] = v13;
    v14[4] = v1;
    swift_retain_n();
    sub_100053D04(0, 0, v10, &unk_1000639A8, v14);

    v15 = swift_allocObject();
    *(v0 + 488) = v15;
    swift_weakInit();
    v16 = swift_task_alloc();
    *(v0 + 496) = v16;
    v9 = sub_100003958(&qword_100087E58, &qword_1000639C0);
    *v16 = v0;
    v16[1] = sub_10001A614;
    v7 = &unk_1000639B8;
    v5 = 0x8AC7230489E80000;
    v4 = v0 + 272;
    v6 = 0;
    v8 = v15;

    return withTimeout<A>(_:block:)(v4, v5, v6, v7, v8, v9);
  }

  v2 = (v0 + 400);
  v3 = *(v1 + 185);
  if (!*(v1 + 185))
  {
    goto LABEL_13;
  }

  if (v3 == 1)
  {
LABEL_12:
    *(v0 + 400) = 1802658125;
    *(v0 + 408) = 0xE400000000000000;
    *(v0 + 416) = 0;
    *(v0 + 424) = 0x373635343332312BLL;
    *(v0 + 432) = 0xEB00000000303938;
    *(v0 + 440) = 0;
    *(v0 + 448) = 0;
    *(v0 + 456) = 1;
    goto LABEL_14;
  }

  if (v3 == 12)
  {
    v4 = sub_1000346A4(3uLL);
    if (v4 <= 2)
    {
      if (*(&off_100079480 + v4 + 32))
      {
        if (*(&off_100079480 + v4 + 32) == 1)
        {
          goto LABEL_8;
        }

LABEL_13:
        *(v0 + 441) = 0u;
        *(v0 + 416) = 0u;
        *(v0 + 432) = 0u;
        *v2 = 0u;
        goto LABEL_14;
      }

      goto LABEL_12;
    }

    __break(1u);
    return withTimeout<A>(_:block:)(v4, v5, v6, v7, v8, v9);
  }

LABEL_8:
  *(v0 + 400) = 1802658125;
  *(v0 + 408) = 0xE400000000000000;
  *(v0 + 416) = 1;
  *(v0 + 424) = 0x373635343332312BLL;
  *(v0 + 432) = 0xEB00000000303938;
  *(v0 + 440) = 0;
  *(v0 + 448) = 0;
  *(v0 + 456) = 1;
LABEL_14:
  v17 = *(v0 + 480);
  v18 = *(v0 + 416);
  *(v0 + 208) = *v2;
  *(v0 + 224) = v18;
  *(v0 + 240) = *(v0 + 432);
  *(v0 + 249) = *(v0 + 441);

  return _swift_task_switch(sub_10001A59C, v17, 0);
}

uint64_t sub_10001A59C()
{
  sub_100012420((v0 + 208));
  sub_100036534(v0 + 400);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001A614()
{
  v2 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v3 = *(v2 + 464);
    v4 = sub_10001A8B4;
  }

  else
  {
    v5 = *(v2 + 464);

    v4 = sub_10001A73C;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10001A73C()
{
  v1 = *(v0 + 288);
  *(v0 + 336) = *(v0 + 272);
  *(v0 + 352) = v1;
  *(v0 + 368) = *(v0 + 304);
  *(v0 + 377) = *(v0 + 313);
  v2 = *(v0 + 344);
  v3 = *(v0 + 480);
  if (v2)
  {
    v4 = *(v0 + 336);
    v5 = *(v0 + 304);
    *(v0 + 160) = *(v0 + 288);
    *(v0 + 176) = v5;
    *(v0 + 185) = *(v0 + 313);
    *(v0 + 144) = v4;
    *(v0 + 152) = v2;
    v6 = sub_10001A7BC;
  }

  else
  {
    *(v0 + 121) = 0u;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 80) = 0u;
    v6 = sub_10001A844;
  }

  return _swift_task_switch(v6, v3, 0);
}

uint64_t sub_10001A7BC()
{
  sub_100012420((v0 + 144));
  sub_100004F1C(v0 + 336, &qword_100087E58, &qword_1000639C0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001A844()
{
  sub_100012420((v0 + 80));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001A8B4()
{

  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000054DC(v1, qword_10008C038);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure fetching account details: %{public}@", v4, 0xCu);
    sub_100004F1C(v5, &qword_100087AA8, &unk_100062F80);
  }

  v7 = *(v0 + 480);

  *(v0 + 57) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;

  return _swift_task_switch(sub_10001AA64, v7, 0);
}

uint64_t sub_10001AA64()
{
  v1 = *(v0 + 464);
  sub_100012420((v0 + 16));

  return _swift_task_switch(sub_10001AAD4, v1, 0);
}

uint64_t sub_10001AAD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001AB40()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000F540;

  return sub_10001ABD0();
}

uint64_t sub_10001ABF0()
{
  type metadata accessor for WorkItemQueue();
  if (static WorkItemQueue.called(on:)())
  {
    v1 = *(v0[2] + 136);
    v0[3] = v1;

    return _swift_task_switch(sub_10001ACE0, v1, 0);
  }

  else
  {
    sub_10003477C();
    swift_allocError();
    *v2 = 5;
    swift_willThrow();
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_10001ACE0()
{
  v1 = *(v0 + 16);
  *(v0 + 40) = *(*(v0 + 24) + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_isFindMyAppInstalled);
  return _swift_task_switch(sub_10001AD10, v1, 0);
}

uint64_t sub_10001AD10()
{
  if (*(v0 + 40) == 2)
  {
    v1 = swift_task_alloc();
    *(v0 + 32) = v1;
    *v1 = v0;
    v1[1] = sub_10001AEA0;

    return sub_10002DBB8();
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000054DC(v3, qword_10008C038);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "FindMy app installation info already saved!", v6, 2u);
    }

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_10001AEA0(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 41) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v3 + 16);

    return _swift_task_switch(sub_10001AFE8, v7, 0);
  }
}

uint64_t sub_10001AFE8()
{
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000054DC(v1, qword_10008C038);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 41);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "isFindMyAppInstalled = %{BOOL}d.", v5, 8u);
  }

  v6 = *(v0 + 24);

  return _swift_task_switch(sub_10001B118, v6, 0);
}

uint64_t sub_10001B118()
{
  sub_100013DE4(*(v0 + 41));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001B180()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001616C;

  return sub_10001B210();
}

uint64_t sub_10001B230()
{
  type metadata accessor for WorkItemQueue();
  if (static WorkItemQueue.called(on:)())
  {
    v1 = *(v0[19] + 136);
    v0[20] = v1;

    return _swift_task_switch(sub_10001B320, v1, 0);
  }

  else
  {
    sub_10003477C();
    swift_allocError();
    *v2 = 5;
    swift_willThrow();
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_10001B320()
{
  if (*(*(v0 + 160) + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_roleCategories))
  {
    v1 = sub_10001B798;
  }

  else
  {
    v1 = sub_10001B35C;
  }

  return _swift_task_switch(v1, *(v0 + 152), 0);
}

uint64_t sub_10001B35C()
{
  v1 = *(v0[19] + 120);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10001B47C;
  v2 = swift_continuation_init();
  v0[17] = sub_100003958(&qword_100087E48, &qword_100063980);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10002D284;
  v0[13] = &unk_10007A628;
  v0[14] = v2;
  [v1 roleCategoriesWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10001B47C()
{
  v1 = *(*v0 + 152);

  return _swift_task_switch(sub_10001B570, v1, 0);
}

uint64_t sub_10001B570()
{
  v12 = v0;
  v0[21] = v0[18];
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000054DC(v1, qword_10008C038);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    sub_100004E64(0, &qword_100087AC8, SPBeaconRoleCategory_ptr);
    v6 = Array.description.getter();
    v8 = sub_10005B0A0(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Got role categories: %s", v4, 0xCu);
    sub_10000A5C4(v5);
  }

  v9 = v0[20];

  return _swift_task_switch(sub_10001B728, v9, 0);
}

uint64_t sub_10001B728()
{
  sub_100012874(*(v0 + 168));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001B798()
{
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000054DC(v1, qword_10008C038);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Role categories already saved!", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10001B8B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001616C;

  return sub_10001B940();
}

uint64_t sub_10001B960()
{
  type metadata accessor for WorkItemQueue();
  if (static WorkItemQueue.called(on:)())
  {
    v1 = [objc_opt_self() sharedConnection];
    if (v1)
    {
      v2 = v1;
      v3 = [v1 effectiveBoolValueForSetting:MCFeatureFindMyDeviceAllowed];
      v4 = MCFeatureFindMyFriendsAllowed;
      v5 = [v2 effectiveBoolValueForSetting:v4];

      v7 = v3 == 2 || v5 == 2;
    }

    else
    {
      v7 = 0;
    }

    *(v0 + 32) = v7;
    v11 = *(*(v0 + 16) + 136);
    *(v0 + 24) = v11;

    return _swift_task_switch(sub_10001BAE8, v11, 0);
  }

  else
  {
    sub_10003477C();
    swift_allocError();
    *v8 = 5;
    swift_willThrow();
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_10001BAE8()
{
  sub_100012A58(*(v0 + 32));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001BB70()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_10001BC58;

    return sub_10001C30C();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_10001BC58()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_10001C154;
    v4 = 0;
  }

  else
  {
    v4 = *(v2 + 48);
    v3 = sub_10001BD74;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_10001BD74()
{
  type metadata accessor for WorkItemQueue();
  if (static WorkItemQueue.called(on:)())
  {
    v1 = *(v0[6] + 136);
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_10001BEA0;

    return sub_10000821C(v1);
  }

  else
  {
    sub_10003477C();
    v0[10] = swift_allocError();
    *v4 = 5;
    swift_willThrow();

    return _swift_task_switch(sub_10001BF9C, 0, 0);
  }
}

uint64_t sub_10001BEA0()
{

  return _swift_task_switch(sub_1000370C8, 0, 0);
}

uint64_t sub_10001BF9C()
{
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000054DC(v1, qword_10008C038);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure in next state showing: %{public}@", v4, 0xCu);
    sub_100004F1C(v5, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10001C154()
{
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000054DC(v1, qword_10008C038);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure in next state showing: %{public}@", v4, 0xCu);
    sub_100004F1C(v5, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10001C32C()
{
  type metadata accessor for WorkItemQueue();
  if (static WorkItemQueue.called(on:)())
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    v0[6] = sub_1000054DC(v1, qword_10008C038);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Preloading video assets...", v4, 2u);
    }

    v5 = v0[5];

    v6 = *(v5 + 136);
    v0[7] = v6;

    return _swift_task_switch(sub_10001C4D4, v6, 0);
  }

  else
  {
    sub_10003477C();
    swift_allocError();
    *v7 = 5;
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10001C4D4()
{
  v1 = sub_100010238();
  v2 = *(v0 + 40);
  *(v0 + 112) = v1;
  *(v0 + 64) = v4;
  *(v0 + 72) = v3;

  return _swift_task_switch(sub_10001C590, v2, 0);
}

uint64_t sub_10001C590()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 112);
  type metadata accessor for VideoAssetsManager();
  v4 = swift_allocObject();
  *(v0 + 80) = v4;
  swift_defaultActor_initialize();
  *(v4 + 112) = v3 & 1;
  *(v4 + 113) = BYTE1(v3) & 1;
  *(v4 + 114) = BYTE2(v3) & 1;
  *(v4 + 120) = v1;
  *(v4 + 128) = v2;
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_10001C668;

  return sub_10003A2EC();
}

uint64_t sub_10001C668(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v4[12] = v1;

  v5 = v3[5];
  if (v1)
  {
    v6 = sub_10001C960;
  }

  else
  {
    v6 = sub_10001C79C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10001C79C(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Got video assets.", v4, 2u);
  }

  v5 = v1[3];
  v6 = v1[7];

  v1[13] = v5;

  return _swift_task_switch(sub_10001C880, v6, 0);
}

uint64_t sub_10001C880()
{
  v1 = *(v0 + 40);
  sub_100012BC0(*(v0 + 104));

  return _swift_task_switch(sub_10001C8F0, v1, 0);
}

uint64_t sub_10001C8F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001C960()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001C9C4(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_10001C9E4, 0, 0);
}

uint64_t sub_10001C9E4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = *(Strong + 136);
    v0[8] = v2;

    return _swift_task_switch(sub_10001CAA4, v2, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_10001CAA4()
{
  if (*(*(v0 + 64) + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_pairingResult + 8) == 255)
  {
    v1 = sub_10001CAF0;
  }

  else
  {
    v1 = sub_10001D028;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10001CAF0()
{
  v1 = *(*(v0 + 56) + 136);
  *(v0 + 72) = v1;

  return _swift_task_switch(sub_10001CB68, v1, 0);
}

uint64_t sub_10001CB68()
{
  v1 = *(v0 + 56);
  sub_1000139F8(*(v0 + 48), 1);

  return _swift_task_switch(sub_10001CBE0, v1, 0);
}

uint64_t sub_10001CBE0()
{
  type metadata accessor for WorkItemQueue();
  if (static WorkItemQueue.called(on:)())
  {
    v1 = *(v0[7] + 136);
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_10001CD0C;

    return sub_10000821C(v1);
  }

  else
  {
    sub_10003477C();
    v0[11] = swift_allocError();
    *v4 = 5;
    swift_willThrow();

    return _swift_task_switch(sub_10001CE6C, 0, 0);
  }
}

uint64_t sub_10001CD0C()
{

  return _swift_task_switch(sub_10001CE08, 0, 0);
}

uint64_t sub_10001CE08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001CE6C()
{
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000054DC(v1, qword_10008C038);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure in next state showing: %{public}@", v4, 0xCu);
    sub_100004F1C(v5, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10001D028()
{
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000054DC(v1, qword_10008C038);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Pairing result already set", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10001D16C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_10001D228, Strong, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_10001D228()
{
  type metadata accessor for WorkItemQueue();
  if (static WorkItemQueue.called(on:)())
  {
    v1 = *(v0[6] + 136);
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_100037068;

    return sub_10000821C(v1);
  }

  else
  {
    sub_10003477C();
    v0[8] = swift_allocError();
    *v4 = 5;
    swift_willThrow();

    return _swift_task_switch(sub_10001D35C, 0, 0);
  }
}

uint64_t sub_10001D35C()
{
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000054DC(v1, qword_10008C038);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure in next state showing: %{public}@", v4, 0xCu);
    sub_100004F1C(v5, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10001D524()
{
  v14 = v0;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000054DC(v1, qword_10008C038);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_10005B0A0(0x29286873696E6966, 0xE800000000000000, &v13);
    *(v5 + 12) = 2080;
    v0[2] = *v4;
    sub_100003958(&qword_100087E40, &qword_100063908);
    v6 = String.init<A>(describing:)();
    v8 = sub_10005B0A0(v6, v7, &v13);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_100034A54(0, Strong);
  swift_unknownObjectRelease();
  AsyncStreamProvider.finish()();
  v12 = (&async function pointer to dispatch thunk of WorkItemQueue.invalidate() + async function pointer to dispatch thunk of WorkItemQueue.invalidate());
  v10 = swift_task_alloc();
  v0[4] = v10;
  *v10 = v0;
  v10[1] = sub_10001D7A8;

  return v12();
}

uint64_t sub_10001D7A8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10001D89C(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_10001D8BC, 0, 0);
}

uint64_t sub_10001D8BC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = *(Strong + 136);
    v0[8] = v2;

    return _swift_task_switch(sub_10001D984, v2, 0);
  }

  else
  {
    v3 = v0[5];
    *v3 = 0;
    v3[1] = 0;
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_10001D984()
{
  v1 = sub_100010408();
  *(v0 + 72) = 0;
  *(v0 + 88) = v2;
  *(v0 + 80) = v1;

  return _swift_task_switch(sub_10001DA18, 0, 0);
}

uint64_t sub_10001DA18()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 40);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for AirTagDetectionViewModel();
  v6 = swift_allocObject();

  swift_defaultActor_initialize();

  *(v6 + 112) = v1;
  *(v6 + 120) = v2 & 1;
  *(v6 + 121) = BYTE1(v2) & 1;
  *(v6 + 122) = BYTE2(v2) & 1;
  *(v6 + 128) = sub_100034808;
  *(v6 + 136) = v4;
  *(v6 + 144) = &unk_100063678;
  *(v6 + 152) = v5;

  v7 = sub_100036CC0(&qword_100087DA8, 255, type metadata accessor for AirTagDetectionViewModel, &unk_10006530C);
  *v3 = v6;
  v3[1] = v7;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10001DBAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001DC30()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 192);
    *(v0 + 72) = v2;

    return _swift_task_switch(sub_10001DDC4, v2, 0);
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000054DC(v3, qword_10008C038);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Already handled connection.", v6, 2u);
    }

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_10001DDC4()
{
  *(v0 + 104) = *(*(v0 + 72) + 128);

  return _swift_task_switch(sub_10001DE34, 0, 0);
}

uint64_t sub_10001DE34()
{
  if (*(v0 + 104) == 1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    *(v0 + 80) = Strong;
    if (Strong)
    {
      v2 = swift_task_alloc();
      *(v0 + 88) = v2;
      *v2 = v0;
      v2[1] = sub_10001DFEC;

      return sub_10001E2D8();
    }
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000054DC(v4, qword_10008C038);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Already handled connection.", v7, 2u);
    }
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10001DFEC()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10001E128, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10001E128()
{

  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000054DC(v1, qword_10008C038);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Error in connection establishment: %{public}@", v4, 0xCu);
    sub_100004F1C(v5, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10001E2D8()
{
  v1[45] = v0;
  v1[46] = *v0;
  sub_100003958(&qword_100087AB8, &qword_100062F90);
  v1[47] = swift_task_alloc();
  v2 = type metadata accessor for UUID();
  v1[48] = v2;
  v1[49] = *(v2 - 8);
  v1[50] = swift_task_alloc();
  sub_100003958(&qword_100087DB0, &qword_1000636B0);
  v1[51] = swift_task_alloc();

  return _swift_task_switch(sub_10001E430, v0, 0);
}

uint64_t sub_10001E430()
{
  v1 = v0[45];
  v0[52] = type metadata accessor for WorkItemQueue();
  v0[53] = *(v1 + 176);
  if ((static WorkItemQueue.called(on:)() & 1) == 0)
  {
    sub_10003477C();
    swift_allocError();
    *v13 = 5;
    swift_willThrow();

    v12 = v0[1];
    goto LABEL_9;
  }

  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[54] = sub_1000054DC(v2, qword_10008C038);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Proceed with accessory connection.", v5, 2u);
  }

  v6 = v0[45];

  if (*(v6 + 184) == 1)
  {
    v7 = v0[51];
    v8 = v0[46];
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v10;
    v11[5] = v8;
    sub_100040454(0, 0, v7, &unk_1000636C8, v11);

    sub_100004F1C(v7, &qword_100087DB0, &qword_1000636B0);

    v12 = v0[1];
LABEL_9:

    return v12();
  }

  v15 = *(v0[45] + 136);
  v0[55] = v15;

  return _swift_task_switch(sub_10001E710, v15, 0);
}

uint64_t sub_10001E710()
{
  v1 = *(v0 + 360);
  *(v0 + 145) = *(*(v0 + 440) + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_isBatteryLevelCritical);
  return _swift_task_switch(sub_10001E744, v1, 0);
}

uint64_t sub_10001E744()
{
  v1 = *(v0 + 145);
  if (v1 == 2 || (v1 & 1) != 0)
  {
    v2 = *(v0 + 440);
    v3 = sub_10001F020;
LABEL_4:

    return _swift_task_switch(v3, v2, 0);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_100034A54(1, Strong);
  swift_unknownObjectRelease();
  if ((static WorkItemQueue.called(on:)() & 1) == 0)
  {
    sub_10003477C();
    v7 = swift_allocError();
    *v8 = 5;
    swift_willThrow();
    *(v0 + 528) = v7;
    v9 = *(v0 + 440);
    swift_errorRetain();
    v3 = sub_10001F190;
    v2 = v9;
    goto LABEL_4;
  }

  *(v0 + 448) = *(*(v0 + 360) + 192);
  v5 = swift_task_alloc();
  *(v0 + 456) = v5;
  *v5 = v0;
  v5[1] = sub_10001E8C4;
  v6 = *(v0 + 440);

  return sub_10000821C(v6);
}

uint64_t sub_10001E8C4()
{
  v1 = *(*v0 + 448);

  return _swift_task_switch(sub_10001E9D4, v1, 0);
}

uint64_t sub_10001E9D4()
{
  v1 = *(v0 + 448);
  if (*(v1 + 128) >= 7u)
  {
    v2 = sub_10001EA10;
  }

  else
  {
    v1 = *(v0 + 440);
    v2 = sub_10001EB94;
  }

  return _swift_task_switch(v2, v1, 0);
}

uint64_t sub_10001EA10()
{
  v1 = *(v0 + 360);
  *(v0 + 146) = *(*(v0 + 448) + 128);
  return _swift_task_switch(sub_10001EA38, v1, 0);
}

uint64_t sub_10001EA38(uint64_t a1)
{
  v13 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 146);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v7 = sub_100007FE0(v4);
    v9 = sub_10005B0A0(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Interrupt pairing, state is %{public}s", v5, 0xCu);
    sub_10000A5C4(v6);
  }

  v10 = *(v1 + 8);

  return v10();
}

uint64_t sub_10001EB94()
{
  v1 = v0[55];
  v2 = v0[47];
  v3 = v0[45];
  v4 = OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_accessoryID;
  swift_beginAccess();
  sub_100014D60(v1 + v4, v2, &qword_100087AB8, &qword_100062F90);

  return _swift_task_switch(sub_10001EC44, v3, 0);
}

uint64_t sub_10001EC44()
{
  v1 = v0[48];
  v2 = v0[49];
  v3 = v0[47];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100004F1C(v3, &qword_100087AB8, &qword_100062F90);
    sub_10003477C();
    v4 = swift_allocError();
    *v5 = 4;
    swift_willThrow();
    v0[66] = v4;
    v6 = v0[55];
    swift_errorRetain();

    return _swift_task_switch(sub_10001F190, v6, 0);
  }

  else
  {
    v7 = v0[45];
    (*(v2 + 32))(v0[50], v3, v1);
    v8 = *(v7 + 112);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v0[58] = isa;
    v0[2] = v0;
    v0[3] = sub_10001EE68;
    v10 = swift_continuation_init();
    v0[35] = sub_100003958(&qword_100087DB8, &qword_1000636B8);
    v0[28] = _NSConcreteStackBlock;
    v0[29] = 1107296256;
    v0[30] = sub_100031810;
    v0[31] = &unk_10007A3F8;
    v0[32] = v10;
    [v8 initializeProximityPairingForAccessoryIdentifier:isa completion:v0 + 28];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_10001EE68()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 472) = v2;
  v3 = *(v1 + 360);
  if (v2)
  {
    v4 = sub_10001F5E4;
  }

  else
  {
    v4 = sub_10001EF88;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10001EF88()
{
  v1 = v0[58];
  (*(v0[49] + 8))(v0[50], v0[48]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10001F020()
{
  v1 = *(v0 + 360);
  sub_1000149C0((v0 + 288));
  *(v0 + 480) = *(v0 + 288);
  *(v0 + 496) = *(v0 + 304);
  *(v0 + 504) = *(v0 + 312);
  *(v0 + 520) = *(v0 + 328);

  return _swift_task_switch(sub_10001F0B4, v1, 0);
}

uint64_t sub_10001F0B4()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 512);
  v4 = *(v0 + 480);
  v3 = *(v0 + 496);
  *(v0 + 544) = 1;
  *(v0 + 152) = v4;
  *(v0 + 168) = v3;
  *(v0 + 184) = v2;
  *(v0 + 192) = v1;
  *(v0 + 216) = 1;
  AsyncStreamProvider.yield(value:transaction:)();
  v5 = *(v0 + 168);
  v6 = *(v0 + 200);
  *(v0 + 112) = *(v0 + 184);
  *(v0 + 128) = v6;
  *(v0 + 144) = *(v0 + 216);
  *(v0 + 80) = *(v0 + 152);
  *(v0 + 96) = v5;
  sub_100034A24(v0 + 80);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10001F190()
{
  v1 = *(v0 + 360);
  sub_1000139F8(*(v0 + 528), 1);

  return _swift_task_switch(sub_10001F218, v1, 0);
}

uint64_t sub_10001F218()
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Error in connection establishment: %{public}@", v3, 0xCu);
    sub_100004F1C(v4, &qword_100087AA8, &unk_100062F80);
  }

  if (static WorkItemQueue.called(on:)())
  {
    v6 = swift_task_alloc();
    v0[67] = v6;
    *v6 = v0;
    v6[1] = sub_10001F454;
    v7 = v0[55];

    return sub_10000821C(v7);
  }

  else
  {
    sub_10003477C();
    swift_allocError();
    *v9 = 5;
    swift_willThrow();

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_10001F454()
{
  v1 = *(*v0 + 360);

  return _swift_task_switch(sub_10001F564, v1, 0);
}

uint64_t sub_10001F564()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001F5E4()
{
  v1 = v0[58];
  v3 = v0[49];
  v2 = v0[50];
  v4 = v0[48];
  swift_willThrow();
  (*(v3 + 8))(v2, v4);

  v0[66] = v0[59];
  v5 = v0[55];
  swift_errorRetain();

  return _swift_task_switch(sub_10001F190, v5, 0);
}

uint64_t sub_10001F690(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_10001F6B0, 0, 0);
}

uint64_t sub_10001F6B0()
{
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[7] = sub_1000054DC(v1, qword_10008C038);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Error in detection: %{public}@", v4, 0xCu);
    sub_100004F1C(v5, &qword_100087AA8, &unk_100062F80);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_10001F8A8, Strong, 0);
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10001F8A8()
{
  v1 = v0[5];
  v2 = swift_allocObject();
  v0[9] = v2;
  swift_weakInit();
  v3 = swift_allocObject();
  v0[10] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_errorRetain();
  v6 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_10001F9D4;

  return v6(&unk_100063688, v3);
}

uint64_t sub_10001F9D4()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {
    v3 = v2[8];

    return _swift_task_switch(sub_10001FB24, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_10001FB24()
{

  return _swift_task_switch(sub_10001FBA0, 0, 0);
}

uint64_t sub_10001FBA0()
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Failure in UI error handling, error: %{public}@. ", v3, 0xCu);
    sub_100004F1C(v4, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10001FD00(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_10001FD20, 0, 0);
}

uint64_t sub_10001FD20()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = *(Strong + 136);
    v0[8] = v2;

    return _swift_task_switch(sub_10001FDE8, v2, 0);
  }

  else
  {
    v3 = v0[5];
    *v3 = 0;
    v3[1] = 0;
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_10001FDE8()
{
  if (*(*(v0 + 64) + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_roleCategories))
  {

    v2 = sub_100016760(v1);
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  *(v0 + 72) = v2;

  return _swift_task_switch(sub_10001FE90, 0, 0);
}

uint64_t sub_10001FE90()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for AirTagRolePickerViewModel();
  swift_allocObject();

  v4 = sub_100015348(v1, &unk_100063880, v3);

  v5 = sub_100036CC0(&qword_100087098, 255, type metadata accessor for AirTagRolePickerViewModel, "|0");
  *v2 = v4;
  v2[1] = v5;
  v6 = v0[1];

  return v6();
}

uint64_t sub_10001FFC0(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return _swift_task_switch(sub_10001FFE0, 0, 0);
}

uint64_t sub_10001FFE0()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = *(v0 + 64);

    v2 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;

    v4 = v1;
    dispatch thunk of WorkItemQueue.enqueue(_:)();
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10002012C(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return _swift_task_switch(sub_10002014C, 0, 0);
}

uint64_t sub_10002014C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 192);
    *(v0 + 80) = v2;

    return _swift_task_switch(sub_1000202E0, v2, 0);
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000054DC(v3, qword_10008C038);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Already handled role selection.", v6, 2u);
    }

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1000202E0()
{
  *(v0 + 112) = *(*(v0 + 80) + 128);

  return _swift_task_switch(sub_100020350, 0, 0);
}

uint64_t sub_100020350()
{
  if (*(v0 + 112) == 2)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    *(v0 + 88) = Strong;
    if (Strong)
    {
      v2 = swift_task_alloc();
      *(v0 + 96) = v2;
      *v2 = v0;
      v2[1] = sub_100020510;
      v3 = *(v0 + 72);

      return sub_1000207FC(v3);
    }
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000054DC(v5, qword_10008C038);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Already handled role selection.", v8, 2u);
    }
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100020510()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10002064C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10002064C()
{

  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000054DC(v1, qword_10008C038);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure in _showNextState: %{public}@", v4, 0xCu);
    sub_100004F1C(v5, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000207FC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10002081C, v1, 0);
}

uint64_t sub_10002081C()
{
  v1 = v0[3];
  v0[4] = type metadata accessor for WorkItemQueue();
  v0[5] = *(v1 + 176);
  if (static WorkItemQueue.called(on:)())
  {
    v2 = *(v0[3] + 136);
    v0[6] = v2;

    return _swift_task_switch(sub_100020914, v2, 0);
  }

  else
  {
    sub_10003477C();
    swift_allocError();
    *v3 = 5;
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100020914()
{
  if (*(*(v0 + 48) + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_selectedRole))
  {
    v1 = sub_100020EF4;
  }

  else
  {
    v1 = sub_100020958;
  }

  return _swift_task_switch(v1, *(v0 + 24), 0);
}

uint64_t sub_100020958()
{
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000054DC(v1, qword_10008C038);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Proceed with selected accessory role.", v4, 2u);
  }

  v5 = *(v0 + 48);

  return _swift_task_switch(sub_100020A78, v5, 0);
}

uint64_t sub_100020A78()
{
  v1 = *(v0 + 48);
  sub_100013C0C(*(v0 + 16));

  return _swift_task_switch(sub_100020AE4, v1, 0);
}

uint64_t sub_100020AE4()
{
  v1 = *(v0 + 24);
  v2 = String._bridgeToObjectiveC()();
  *(v0 + 72) = MGGetSInt32Answer();

  return _swift_task_switch(sub_100020B78, v1, 0);
}

uint64_t sub_100020B78()
{
  if (*(v0 + 72) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 56) = v1;
    *v1 = v0;
    v1[1] = sub_100020D04;

    return sub_10003201C();
  }

  else if (static WorkItemQueue.called(on:)())
  {
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_100020DFC;
    v4 = *(v0 + 48);

    return sub_10000821C(v4);
  }

  else
  {
    sub_10003477C();
    swift_allocError();
    *v5 = 5;
    swift_willThrow();
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_100020D04()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100020DFC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100020EF4()
{
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000054DC(v1, qword_10008C038);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Role already saved.", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10002100C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return _swift_task_switch(sub_100021030, 0, 0);
}

uint64_t sub_100021030()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = v0[9];
    v2 = v0[8];

    v3 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v4 = swift_allocObject();
    v4[2] = v3;
    v4[3] = v2;
    v4[4] = v1;

    dispatch thunk of WorkItemQueue.enqueue(_:)();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_100021190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  return _swift_task_switch(sub_1000211B4, 0, 0);
}

uint64_t sub_1000211B4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 192);
    *(v0 + 112) = v2;

    return _swift_task_switch(sub_100021348, v2, 0);
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000054DC(v3, qword_10008C038);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Already handled custom name selection.", v6, 2u);
    }

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_100021348()
{
  *(v0 + 152) = *(*(v0 + 112) + 128);

  return _swift_task_switch(sub_1000213B8, 0, 0);
}

uint64_t sub_1000213B8()
{
  if (*(v0 + 152) == 3)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v2 = *(Strong + 136);
      *(v0 + 120) = v2;

      v3 = sub_100021598;
      v4 = v2;
LABEL_14:

      return _swift_task_switch(v3, v4, 0);
    }

    swift_beginAccess();
    v11 = swift_weakLoadStrong();
    *(v0 + 128) = v11;
    if (v11)
    {
      v4 = v11;
      v3 = sub_1000216C8;
      goto LABEL_14;
    }
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000054DC(v5, qword_10008C038);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Already handled custom name selection.", v8, 2u);
    }
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100021598()
{
  sub_100013508(*(v0 + 96), *(v0 + 104));

  return _swift_task_switch(sub_10002160C, 0, 0);
}

uint64_t sub_10002160C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 128) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_1000216C8, Strong, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1000216C8()
{
  type metadata accessor for WorkItemQueue();
  if (static WorkItemQueue.called(on:)())
  {
    v1 = *(v0[16] + 136);
    v2 = swift_task_alloc();
    v0[17] = v2;
    *v2 = v0;
    v2[1] = sub_1000217FC;

    return sub_10000821C(v1);
  }

  else
  {
    sub_10003477C();
    v0[18] = swift_allocError();
    *v4 = 5;
    swift_willThrow();

    return _swift_task_switch(sub_100021910, 0, 0);
  }
}

uint64_t sub_1000217FC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100021910()
{
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000054DC(v1, qword_10008C038);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure in _showNextState: %{public}@", v4, 0xCu);
    sub_100004F1C(v5, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100021AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return _swift_task_switch(sub_100021ADC, 0, 0);
}

uint64_t sub_100021ADC()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = v0[9];
    v2 = v0[8];

    v3 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v4 = swift_allocObject();
    v4[2] = v3;
    v4[3] = v2;
    v4[4] = v1;

    dispatch thunk of WorkItemQueue.enqueue(_:)();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_100021C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  return _swift_task_switch(sub_100021C60, 0, 0);
}

uint64_t sub_100021C60()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 192);
    *(v0 + 112) = v2;

    return _swift_task_switch(sub_100021DF4, v2, 0);
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000054DC(v3, qword_10008C038);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Already handled custom emoji selection.", v6, 2u);
    }

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_100021DF4()
{
  *(v0 + 152) = *(*(v0 + 112) + 128);

  return _swift_task_switch(sub_100021E64, 0, 0);
}

uint64_t sub_100021E64()
{
  if (*(v0 + 152) == 4)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v2 = *(Strong + 136);
      *(v0 + 120) = v2;

      v3 = sub_100022044;
      v4 = v2;
LABEL_14:

      return _swift_task_switch(v3, v4, 0);
    }

    swift_beginAccess();
    v11 = swift_weakLoadStrong();
    *(v0 + 128) = v11;
    if (v11)
    {
      v4 = v11;
      v3 = sub_100022174;
      goto LABEL_14;
    }
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000054DC(v5, qword_10008C038);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Already handled custom emoji selection.", v8, 2u);
    }
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100022044()
{
  sub_1000136C8(*(v0 + 96), *(v0 + 104));

  return _swift_task_switch(sub_1000220B8, 0, 0);
}

uint64_t sub_1000220B8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 128) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_100022174, Strong, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_100022174()
{
  type metadata accessor for WorkItemQueue();
  if (static WorkItemQueue.called(on:)())
  {
    v1 = *(v0[16] + 136);
    v2 = swift_task_alloc();
    v0[17] = v2;
    *v2 = v0;
    v2[1] = sub_100037060;

    return sub_10000821C(v1);
  }

  else
  {
    sub_10003477C();
    v0[18] = swift_allocError();
    *v4 = 5;
    swift_willThrow();

    return _swift_task_switch(sub_1000370A4, 0, 0);
  }
}

uint64_t sub_1000222E0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 192);
    *(v0 + 48) = v2;

    return _swift_task_switch(sub_1000223B4, v2, 0);
  }

  else
  {
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1000223B4()
{
  sub_100009FD0();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100022420(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_100022440, 0, 0);
}

uint64_t sub_100022440()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = *(Strong + 136);
    v0[8] = v2;

    return _swift_task_switch(sub_100022508, v2, 0);
  }

  else
  {
    v3 = v0[5];
    *v3 = 0;
    v3[1] = 0;
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100022508()
{
  v1 = *(v0 + 64);
  v2 = v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_account;
  v3 = *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_account + 8);
  *(v0 + 72) = v3;
  if (v3 > 1)
  {
    v6 = *(v2 + 56);
    *(v0 + 136) = v6;
    v7 = *(v2 + 48);
    *(v0 + 88) = v7;
    v8 = *(v2 + 40);
    *(v0 + 96) = v8;
    v9 = *(v2 + 32);
    *(v0 + 104) = v9;
    v10 = *(v2 + 24);
    *(v0 + 112) = v10;
    *(v0 + 120) = *v2;
    v11 = *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_profilePicture);
    *(v0 + 128) = v11;
    v12 = v11;

    sub_100035720(v10, v9, v8, v7, v6);
    v5 = sub_1000226AC;
  }

  else
  {
    sub_100014B3C();
    *(v0 + 80) = swift_allocError();
    *v4 = 4;
    swift_willThrow();
    v5 = sub_100022648;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100022648()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000226AC()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);
  v13 = *(v0 + 88);
  v14 = *(v0 + 128);
  v12 = *(v0 + 136);
  v5 = *(v0 + 72);
  v6 = *(v0 + 40);
  v7 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for AirTagLinkingUserViewModel();
  v8 = swift_allocObject();

  swift_defaultActor_initialize();

  *(v8 + 112) = v1;
  *(v8 + 120) = v5;
  *(v8 + 128) = v14;
  *(v8 + 136) = v2;
  *(v8 + 144) = v3;
  *(v8 + 152) = v4;
  *(v8 + 160) = v13;
  *(v8 + 168) = v12;
  *(v8 + 176) = &unk_1000637F8;
  *(v8 + 184) = v7;

  v9 = sub_100036CC0(&qword_100087E08, 255, type metadata accessor for AirTagLinkingUserViewModel, &unk_100064DE0);
  *v6 = v8;
  v6[1] = v9;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100022834()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    dispatch thunk of WorkItemQueue.enqueue(_:)();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002297C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = *(Strong + 192);
    v0[7] = v2;

    return _swift_task_switch(sub_100022A3C, v2, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_100022A64()
{
  if (*(v0 + 88) == 5)
  {
    v1 = *(*(v0 + 48) + 136);
    *(v0 + 64) = v1;

    return _swift_task_switch(sub_100022BD8, v1, 0);
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000054DC(v2, qword_10008C038);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Already handled linked account.", v5, 2u);
    }

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_100022C08()
{
  if (*(v0 + 89) == 2)
  {
    v1 = swift_task_alloc();
    *(v0 + 72) = v1;
    *v1 = v0;
    v1[1] = sub_100022DA4;

    return sub_1000230D8();
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000054DC(v3, qword_10008C038);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Already displayed account linking.", v6, 2u);
    }

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_100022DA4()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100022F1C;
  }

  else
  {
    v2 = sub_100022EB8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100022EB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100022F1C()
{
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000054DC(v1, qword_10008C038);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure in account linking handling: %{public}@", v4, 0xCu);
    sub_100004F1C(v5, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000230D8()
{
  v1[5] = v0;
  v1[6] = *v0;
  sub_100003958(&qword_100087AB8, &qword_100062F90);
  v1[7] = swift_task_alloc();
  v2 = type metadata accessor for UUID();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v1[10] = *(v3 + 64);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  sub_100003958(&qword_100087DB0, &qword_1000636B0);
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_100023244, v0, 0);
}

uint64_t sub_100023244()
{
  v1 = v0[5];
  v0[14] = type metadata accessor for WorkItemQueue();
  v0[15] = *(v1 + 176);
  if (static WorkItemQueue.called(on:)())
  {
    v2 = *(v0[5] + 136);
    v0[16] = v2;

    return _swift_task_switch(sub_100023384, v2, 0);
  }

  else
  {
    sub_10003477C();
    swift_allocError();
    *v3 = 5;
    swift_willThrow();

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100023384()
{
  v1 = *(v0 + 40);
  sub_100013890(1);

  return _swift_task_switch(sub_1000233F4, v1, 0);
}

uint64_t sub_1000233F4()
{
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[17] = sub_1000054DC(v1, qword_10008C038);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Proceed with linked account.", v4, 2u);
  }

  if (static WorkItemQueue.called(on:)())
  {
    v5 = swift_task_alloc();
    v0[18] = v5;
    *v5 = v0;
    v5[1] = sub_10002360C;
    v6 = v0[16];

    return sub_10000821C(v6);
  }

  else
  {
    sub_10003477C();
    swift_allocError();
    *v8 = 5;
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_10002360C()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_10002371C, v1, 0);
}

uint64_t sub_10002371C()
{
  if (*(v0[5] + 184) == 1)
  {
    v1 = v0[13];
    v2 = v0[6];
    v3 = type metadata accessor for TaskPriority();
    (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = swift_allocObject();
    v5[2] = 0;
    v5[3] = 0;
    v5[4] = v4;
    v5[5] = v2;
    sub_100040454(0, 0, v1, &unk_100063828, v5);

    sub_100004F1C(v1, &qword_100087DB0, &qword_1000636B0);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[16];

    return _swift_task_switch(sub_1000238C0, v8, 0);
  }
}

uint64_t sub_1000238C0()
{
  v1 = v0[16];
  v2 = v0[7];
  v3 = v0[5];
  v4 = OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_accessoryID;
  swift_beginAccess();
  sub_100014D60(v1 + v4, v2, &qword_100087AB8, &qword_100062F90);

  return _swift_task_switch(sub_100023970, v3, 0);
}

uint64_t sub_100023970()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100004F1C(v3, &qword_100087AB8, &qword_100062F90);
    sub_10003477C();
    v4 = swift_allocError();
    *v5 = 4;
    swift_willThrow();
    v0[23] = v4;
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138543362;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "Pairing error %{public}@", v8, 0xCu);
      sub_100004F1C(v9, &qword_100087AA8, &unk_100062F80);
    }

    v11 = v0[16];

    swift_errorRetain();
    v12 = sub_100024088;
  }

  else
  {
    v11 = v0[16];
    v13 = v0[12];
    v14 = *(v2 + 32);
    v0[19] = v14;
    v0[20] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v14(v13, v3, v1);
    v12 = sub_100023B7C;
  }

  return _swift_task_switch(v12, v11, 0);
}

uint64_t sub_100023B7C()
{
  v1 = *(v0[16] + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_selectedRole);
  if (v1)
  {
    v2 = v1;
    sub_100010564();
    v5 = v0[5];
    v6 = [v2 roleId];
    v7 = objc_allocWithZone(SPAccessoryPairingConfiguration);
    v8 = String._bridgeToObjectiveC()();
    v9 = String._bridgeToObjectiveC()();
    v0[21] = [v7 initWithName:v8 roleId:v6 roleEmoji:v9];

    v10 = sub_100023D14;
    v11 = v5;
  }

  else
  {
    sub_100014B3C();
    v3 = swift_allocError();
    *v4 = 3;
    swift_willThrow();
    v0[22] = v3;
    v11 = v0[5];
    v10 = sub_100023F14;
  }

  return _swift_task_switch(v10, v11, 0);
}

uint64_t sub_100023D14()
{
  v1 = v0[21];
  v16 = v0[19];
  v2 = v0[12];
  v3 = v0[13];
  v15 = v2;
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(v4, v2, v6);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 4) = v9;
  v16(&v11[v10], v4, v6);
  *&v11[(v5 + v10 + 7) & 0xFFFFFFFFFFFFFFF8] = v1;
  v12 = v1;
  sub_100040454(0, 0, v3, &unk_100063820, v11);

  sub_100004F1C(v3, &qword_100087DB0, &qword_1000636B0);
  (*(v7 + 8))(v15, v6);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100023F14()
{
  (*(v0[9] + 8))(v0[12], v0[8]);
  v0[23] = v0[22];
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Pairing error %{public}@", v3, 0xCu);
    sub_100004F1C(v4, &qword_100087AA8, &unk_100062F80);
  }

  v6 = v0[16];

  swift_errorRetain();

  return _swift_task_switch(sub_100024088, v6, 0);
}

uint64_t sub_100024088()
{
  v1 = *(v0 + 40);
  sub_1000139F8(*(v0 + 184), 1);

  return _swift_task_switch(sub_100024110, v1, 0);
}

uint64_t sub_100024110()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000241A4(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_1000241C4, 0, 0);
}

uint64_t sub_1000241C4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = *(Strong + 136);
    v0[8] = v2;

    return _swift_task_switch(sub_10002428C, v2, 0);
  }

  else
  {
    v3 = v0[5];
    *v3 = 0;
    v3[1] = 0;
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_10002428C()
{
  v1 = *(v0[8] + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_videoAssets);
  v0[9] = v1;
  if (v1)
  {

    v2 = sub_100010564();
    v0[10] = v6;
    v0[11] = v5;
    v0[12] = v7;
    v0[13] = v2;
    v8 = sub_100024380;
  }

  else
  {
    sub_100014B3C();
    v3 = swift_allocError();
    *v4 = 2;
    swift_willThrow();
    v0[14] = v3;
    v8 = sub_100024474;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100024380()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  v6 = v0[5];
  type metadata accessor for AirTagLoadingViewModel();
  v7 = swift_allocObject();
  swift_defaultActor_initialize();

  v7[14] = v1;
  v7[15] = v2;
  v7[16] = v3;
  v7[17] = v4;
  v7[18] = v5;
  v8 = sub_100036CC0(&qword_100087058, 255, type metadata accessor for AirTagLoadingViewModel, &unk_100064234);
  *v6 = v7;
  v6[1] = v8;
  v9 = v0[1];

  return v9();
}

uint64_t sub_100024474()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100024510()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 192);
    *(v0 + 72) = v2;

    return _swift_task_switch(sub_1000246A4, v2, 0);
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000054DC(v3, qword_10008C038);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Already handled missing apple id sign in.", v6, 2u);
    }

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1000246A4()
{
  *(v0 + 104) = *(*(v0 + 72) + 128);

  return _swift_task_switch(sub_100024714, 0, 0);
}

uint64_t sub_100024714()
{
  if (*(v0 + 104) == 7)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    *(v0 + 80) = Strong;
    if (Strong)
    {
      v2 = swift_task_alloc();
      *(v0 + 88) = v2;
      *v2 = v0;
      v2[1] = sub_1000248CC;

      return sub_100024BB8();
    }
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000054DC(v4, qword_10008C038);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Already handled missing apple id sign in.", v7, 2u);
    }
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000248CC()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100024A08, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100024A08()
{

  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000054DC(v1, qword_10008C038);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure in _proceedWithSettingsOpening: %{public}@", v4, 0xCu);
    sub_100004F1C(v5, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100024BB8()
{
  v1[3] = v0;
  sub_100003958(&qword_100087DC8, &unk_1000655F0);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100024CA0, v0, 0);
}

void sub_100024CA0()
{
  v100 = v0;
  type metadata accessor for WorkItemQueue();
  if ((static WorkItemQueue.called(on:)() & 1) == 0)
  {
    sub_10003477C();
    swift_allocError();
    *v19 = 5;
    swift_willThrow();
    goto LABEL_71;
  }

  v1 = [objc_allocWithZone(FLFollowUpController) init];
  v0[2] = 0;
  v0[7] = v1;
  v2 = [v1 pendingFollowUpItems:v0 + 2];
  v3 = v0[2];
  if (!v2)
  {
    v39 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_71;
  }

  v4 = v2;
  sub_100004E64(0, &qword_100087DD0, FLFollowUpItem_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v3;

  v98 = sub_100034EE4(&off_1000794A8);
  swift_arrayDestroy();
  v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (qword_100086DA8 != -1)
  {
LABEL_54:
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000054DC(v9, qword_10008C038);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  v91 = v1;
  if (os_log_type_enabled(v10, v11))
  {
    v1 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v99[0] = v12;
    *v1 = 136446210;
    v13 = Array.description.getter();
    v15 = sub_10005B0A0(v13, v14, v99);

    *(v1 + 1) = v15;
    _os_log_impl(&_mh_execute_header, v10, v11, "Followup Items: %{public}s", v1, 0xCu);
    sub_10000A5C4(v12);
  }

  if (v5 >> 62)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_56:
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&_mh_execute_header, v67, v68, "No available accountFollowup!", v69, 2u);
    }

    v21 = v0[6];

    URL.init(string:)();
    goto LABEL_63;
  }

  v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_56;
  }

LABEL_8:
  v17 = 0;
  v95 = v5 & 0xFFFFFFFFFFFFFF8;
  v96 = v5 & 0xC000000000000001;
  v5 += 32;
  v18 = v98 + 56;
  v92 = v8;
  while (1)
  {
    if (v96)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v17 >= *(v95 + 16))
      {
        goto LABEL_53;
      }

      v20 = *(v5 + 8 * v17);
    }

    v21 = v20;
    if (__OFADD__(v17++, 1))
    {
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v23 = [v20 groupIdentifier];
    if (v23)
    {
      break;
    }

LABEL_11:

    if (v17 == v16)
    {
      goto LABEL_56;
    }
  }

  v24 = v23;
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  if (v1 == v93 && v26 == v8)
  {
  }

  else
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v28 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v29 = [v21 uniqueIdentifier];
  if (!v29)
  {
    __break(1u);
    goto LABEL_77;
  }

  v30 = v29;
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  if (!*(v98 + 16) || (Hasher.init(_seed:)(), String.hash(into:)(), v33 = Hasher._finalize()(), v34 = -1 << *(v98 + 32), v35 = v33 & ~v34, ((*(v18 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0))
  {
LABEL_10:

    v8 = v92;
    goto LABEL_11;
  }

  v36 = ~v34;
  while (1)
  {
    v37 = (*(v98 + 48) + 16 * v35);
    v38 = *v37 == v1 && v37[1] == v32;
    if (v38 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v35 = (v35 + 1) & v36;
    if (((*(v18 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v40 = [v21 actions];
  if (!v40)
  {
LABEL_78:
    __break(1u);
LABEL_79:

    __break(1u);
LABEL_80:
    __break(1u);
    return;
  }

  v41 = v40;
  sub_100004E64(0, &qword_100087DD8, FLFollowUpAction_ptr);
  v42 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v42 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_60;
    }

LABEL_40:
    if ((v42 & 0xC000000000000001) != 0)
    {
      v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v43 = *(v42 + 32);
    }

    v44 = v43;

    v45 = v21;
    v21 = v44;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v97 = v47;
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v99[0] = swift_slowAlloc();
      *v48 = 138412802;
      *(v48 + 4) = v45;
      v94 = v49;
      *v49 = v45;
      *(v48 + 12) = 2080;
      v50 = v45;
      v51 = [v50 title];

      if (!v51)
      {
        goto LABEL_79;
      }

      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;

      v55 = sub_10005B0A0(v52, v54, v99);

      *(v48 + 14) = v55;
      *(v48 + 22) = 2080;
      v56 = [v21 label];

      if (!v56)
      {
        goto LABEL_80;
      }

      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;

      v60 = sub_10005B0A0(v57, v59, v99);

      *(v48 + 24) = v60;
      _os_log_impl(&_mh_execute_header, v46, v97, "AccountFollowup: %@, title: %s, label: %s", v48, 0x20u);
      sub_100004F1C(v94, &qword_100087AA8, &unk_100062F80);

      swift_arrayDestroy();
    }

    else
    {
    }

    v61 = [v21 launchActionURL];
    if (v61)
    {
      v62 = v61;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v63 = 0;
    }

    else
    {
      v63 = 1;
    }

    v65 = v0[5];
    v64 = v0[6];

    v66 = type metadata accessor for URL();
    (*(*(v66 - 8) + 56))(v65, v63, 1, v66);
    sub_100035EA0(v65, v64, &qword_100087DC8, &unk_1000655F0);
    goto LABEL_63;
  }

  if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_40;
  }

LABEL_60:

  v21 = v21;
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *v72 = 138412290;
    *(v72 + 4) = v21;
    *v73 = v21;
    v74 = v21;
    _os_log_impl(&_mh_execute_header, v70, v71, "Account followup %@ has no actions!", v72, 0xCu);
    sub_100004F1C(v73, &qword_100087AA8, &unk_100062F80);
  }

  URL.init(string:)();
LABEL_63:
  v75 = [objc_opt_self() defaultWorkspace];
  if (!v75)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v76 = v75;
  v77 = v0[6];
  v78 = v0[4];

  sub_100014D60(v77, v78, &qword_100087DC8, &unk_1000655F0);
  v79 = type metadata accessor for URL();
  v80 = *(v79 - 8);
  v82 = 0;
  if ((*(v80 + 48))(v78, 1, v79) != 1)
  {
    v83 = v0[4];
    URL._bridgeToObjectiveC()(v81);
    v82 = v84;
    (*(v80 + 8))(v83, v79);
  }

  sub_10004EF78(_swiftEmptyArrayStorage);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v76 openSensitiveURL:v82 withOptions:isa];

  if (static WorkItemQueue.called(on:)())
  {
    v86 = *(v0[3] + 136);
    v87 = swift_task_alloc();
    v0[8] = v87;
    *v87 = v0;
    v87[1] = sub_100025908;

    sub_10000821C(v86);
    return;
  }

  v88 = v0[6];
  sub_10003477C();
  swift_allocError();
  *v89 = 5;
  swift_willThrow();

  sub_100004F1C(v88, &qword_100087DC8, &unk_1000655F0);
LABEL_71:

  v90 = v0[1];

  v90();
}

uint64_t sub_100025908()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_100025A44, v1, 0);
}

uint64_t sub_100025A44()
{
  v1 = *(v0 + 48);

  sub_100004F1C(v1, &qword_100087DC8, &unk_1000655F0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100025B48()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 192);
    *(v0 + 72) = v2;

    return _swift_task_switch(sub_100025CDC, v2, 0);
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000054DC(v3, qword_10008C038);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Already handled unavailable manatee issue.", v6, 2u);
    }

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_100025CDC()
{
  *(v0 + 104) = *(*(v0 + 72) + 128);

  return _swift_task_switch(sub_100025D4C, 0, 0);
}

uint64_t sub_100025D4C()
{
  if (*(v0 + 104) == 11)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    *(v0 + 80) = Strong;
    if (Strong)
    {
      v2 = swift_task_alloc();
      *(v0 + 88) = v2;
      *v2 = v0;
      v2[1] = sub_100025F04;

      return sub_100024BB8();
    }
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000054DC(v4, qword_10008C038);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Already handled unavailable manatee issue.", v7, 2u);
    }
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100025F04()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10003709C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100026078()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 192);
    *(v0 + 72) = v2;

    return _swift_task_switch(sub_10002620C, v2, 0);
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000054DC(v3, qword_10008C038);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Already handled find my app installation.", v6, 2u);
    }

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_10002620C()
{
  *(v0 + 104) = *(*(v0 + 72) + 128);

  return _swift_task_switch(sub_10002627C, 0, 0);
}

uint64_t sub_10002627C()
{
  if (*(v0 + 104) == 8)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    *(v0 + 80) = Strong;
    if (Strong)
    {
      v2 = swift_task_alloc();
      *(v0 + 88) = v2;
      *v2 = v0;
      v2[1] = sub_100026434;

      return sub_100026720();
    }
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000054DC(v4, qword_10008C038);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Already handled find my app installation.", v7, 2u);
    }
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100026434()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100026570, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100026570()
{

  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000054DC(v1, qword_10008C038);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure in _proceedWithFindMyAppInstallation: %{public}@", v4, 0xCu);
    sub_100004F1C(v5, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100026720()
{
  v1[21] = v0;
  sub_100003958(&qword_100087AB8, &qword_100062F90);
  v1[22] = swift_task_alloc();
  v2 = type metadata accessor for UUID();
  v1[23] = v2;
  v1[24] = *(v2 - 8);
  v1[25] = swift_task_alloc();
  sub_100003958(&qword_100087DB0, &qword_1000636B0);
  v1[26] = swift_task_alloc();

  return _swift_task_switch(sub_100026850, v0, 0);
}

uint64_t sub_100026850()
{
  v1 = v0[21];
  v0[27] = type metadata accessor for WorkItemQueue();
  v0[28] = *(v1 + 176);
  if (static WorkItemQueue.called(on:)())
  {
    v2 = v0[26];
    v3 = *(v0[21] + 136);
    v0[29] = v3;
    v4 = objc_allocWithZone(ASDSystemAppMetadata);

    v5 = String._bridgeToObjectiveC()();

    v6 = [v4 initWithBundleID:v5];
    v0[30] = v6;

    [v6 setUserInitiated:1];
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v6;
    v9 = v6;
    sub_100040454(0, 0, v2, &unk_1000638E8, v8);

    sub_100004F1C(v2, &qword_100087DB0, &qword_1000636B0);

    return _swift_task_switch(sub_100026A98, v3, 0);
  }

  else
  {
    sub_10003477C();
    swift_allocError();
    *v10 = 5;
    swift_willThrow();

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_100026A98()
{
  v1 = *(v0 + 168);
  sub_100013DE4(1);

  return _swift_task_switch(sub_100026B08, v1, 0);
}

uint64_t sub_100026B08()
{
  if (static WorkItemQueue.called(on:)())
  {
    v1 = swift_task_alloc();
    v0[31] = v1;
    *v1 = v0;
    v2 = sub_100026E08;
LABEL_9:
    v1[1] = v2;
    v11 = v0[29];

    return sub_10000821C(v11);
  }

  sub_10003477C();
  v3 = swift_allocError();
  *v4 = 5;
  swift_willThrow();
  v0[34] = v3;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000054DC(v5, qword_10008C038);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failure on FindMy.app installation request %{public}@.", v8, 0xCu);
    sub_100004F1C(v9, &qword_100087AA8, &unk_100062F80);
  }

  if (static WorkItemQueue.called(on:)())
  {
    v1 = swift_task_alloc();
    v0[35] = v1;
    *v1 = v0;
    v2 = sub_1000275AC;
    goto LABEL_9;
  }

  v13 = v0[30];
  swift_allocError();
  *v14 = 5;
  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_100026E08()
{
  v1 = *(*v0 + 232);

  return _swift_task_switch(sub_100026F18, v1, 0);
}

uint64_t sub_100026F18()
{
  v1 = v0[29];
  v2 = v0[21];
  v3 = v0[22];
  v4 = OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_accessoryID;
  swift_beginAccess();
  sub_100014D60(v1 + v4, v3, &qword_100087AB8, &qword_100062F90);

  return _swift_task_switch(sub_100026FC4, v2, 0);
}

uint64_t sub_100026FC4()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100004F1C(v3, &qword_100087AB8, &qword_100062F90);
    sub_10003477C();
    v4 = swift_allocError();
    *v5 = 4;
    swift_willThrow();
    v0[34] = v4;
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000054DC(v6, qword_10008C038);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138543362;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failure on FindMy.app installation request %{public}@.", v9, 0xCu);
      sub_100004F1C(v10, &qword_100087AA8, &unk_100062F80);
    }

    if (static WorkItemQueue.called(on:)())
    {
      v12 = swift_task_alloc();
      v0[35] = v12;
      *v12 = v0;
      v12[1] = sub_1000275AC;
      v13 = v0[29];

      return sub_10000821C(v13);
    }

    else
    {
      v19 = v0[30];
      swift_allocError();
      *v20 = 5;
      swift_willThrow();

      v21 = v0[1];

      return v21();
    }
  }

  else
  {
    v15 = v0[21];
    (*(v2 + 32))(v0[25], v3, v1);
    v16 = *(v15 + 112);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v0[32] = isa;
    v0[2] = v0;
    v0[3] = sub_1000273DC;
    v18 = swift_continuation_init();
    v0[17] = sub_100003958(&qword_100087DB8, &qword_1000636B8);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100031810;
    v0[13] = &unk_10007A5D8;
    v0[14] = v18;
    [v16 initializeProximityPairingForAccessoryIdentifier:isa completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_1000273DC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  v3 = *(v1 + 168);
  if (v2)
  {
    v4 = sub_100027748;
  }

  else
  {
    v4 = sub_1000274FC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000274FC()
{
  v1 = *(v0 + 256);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = *(v0 + 184);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000275AC()
{
  v1 = *(*v0 + 168);

  return _swift_task_switch(sub_1000276BC, v1, 0);
}

uint64_t sub_1000276BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100027748()
{
  v1 = v0[32];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];
  swift_willThrow();
  (*(v3 + 8))(v2, v4);

  v0[34] = v0[33];
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000054DC(v5, qword_10008C038);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failure on FindMy.app installation request %{public}@.", v8, 0xCu);
    sub_100004F1C(v9, &qword_100087AA8, &unk_100062F80);
  }

  if (static WorkItemQueue.called(on:)())
  {
    v11 = swift_task_alloc();
    v0[35] = v11;
    *v11 = v0;
    v11[1] = sub_1000275AC;
    v12 = v0[29];

    return sub_10000821C(v12);
  }

  else
  {
    v14 = v0[30];
    sub_10003477C();
    swift_allocError();
    *v15 = 5;
    swift_willThrow();

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_100027A2C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 192);
    *(v0 + 72) = v2;

    return _swift_task_switch(sub_100027BC0, v2, 0);
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000054DC(v3, qword_10008C038);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Already handled pairing restricted failure.", v6, 2u);
    }

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_100027BC0()
{
  *(v0 + 104) = *(*(v0 + 72) + 128);

  return _swift_task_switch(sub_100027C30, 0, 0);
}

uint64_t sub_100027C30()
{
  if (*(v0 + 104) == 9)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    *(v0 + 80) = Strong;
    if (Strong)
    {

      return _swift_task_switch(sub_100027DB8, Strong, 0);
    }
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000054DC(v2, qword_10008C038);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Already handled pairing restricted failure.", v5, 2u);
    }
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100027DB8()
{
  type metadata accessor for WorkItemQueue();
  if (static WorkItemQueue.called(on:)())
  {
    v1 = *(v0[10] + 136);
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_100027EEC;

    return sub_10000821C(v1);
  }

  else
  {
    sub_10003477C();
    v0[12] = swift_allocError();
    *v4 = 5;
    swift_willThrow();

    return _swift_task_switch(sub_100028000, 0, 0);
  }
}

uint64_t sub_100027EEC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100028000()
{
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000054DC(v1, qword_10008C038);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure in _showNextState: %{public}@", v4, 0xCu);
    sub_100004F1C(v5, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000281E0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 192);
    *(v0 + 72) = v2;

    return _swift_task_switch(sub_100028374, v2, 0);
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000054DC(v3, qword_10008C038);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Already handled locked to another account failure.", v6, 2u);
    }

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_100028374()
{
  *(v0 + 104) = *(*(v0 + 72) + 128);

  return _swift_task_switch(sub_1000283E4, 0, 0);
}

uint64_t sub_1000283E4()
{
  if (*(v0 + 104) == 10)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    *(v0 + 80) = Strong;
    if (Strong)
    {
      v2 = swift_task_alloc();
      *(v0 + 88) = v2;
      *v2 = v0;
      v2[1] = sub_10002859C;

      return sub_100028888();
    }
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000054DC(v4, qword_10008C038);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Already handled locked to another account failure.", v7, 2u);
    }
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10002859C()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000286D8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1000286D8()
{

  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000054DC(v1, qword_10008C038);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure in _proceedWithPairingLockExplanation: %{public}@", v4, 0xCu);
    sub_100004F1C(v5, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100028888()
{
  v1[2] = v0;
  sub_100003958(&qword_100087DC8, &unk_1000655F0);
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for URL();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100028980, v0, 0);
}

id sub_100028980()
{
  type metadata accessor for WorkItemQueue();
  if ((static WorkItemQueue.called(on:)() & 1) == 0)
  {
LABEL_9:
    sub_10003477C();
    swift_allocError();
    *v11 = 5;
    swift_willThrow();
    goto LABEL_10;
  }

  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  URL.init(string:)();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100004F1C(v0[3], &qword_100087DC8, &unk_1000655F0);
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000054DC(v4, qword_10008C038);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Failure in pairing lock explanation URL!", v7, 2u);
    }

    if (static WorkItemQueue.called(on:)())
    {
      v8 = *(v0[2] + 136);
      v9 = swift_task_alloc();
      v0[8] = v9;
      *v9 = v0;
      v10 = sub_100028EF8;
LABEL_16:
      v9[1] = v10;

      return sub_10000821C(v8);
    }

    goto LABEL_9;
  }

  (*(v0[5] + 32))(v0[6], v0[3], v0[4]);
  result = [objc_opt_self() defaultWorkspace];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v15 = result;
  URL._bridgeToObjectiveC()(v14);
  v17 = v16;
  sub_10004EF78(_swiftEmptyArrayStorage);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v15 openSensitiveURL:v17 withOptions:isa];

  if (static WorkItemQueue.called(on:)())
  {
    v8 = *(v0[2] + 136);
    v9 = swift_task_alloc();
    v0[7] = v9;
    *v9 = v0;
    v10 = sub_100028D60;
    goto LABEL_16;
  }

  v20 = v0[5];
  v19 = v0[6];
  v21 = v0[4];
  sub_10003477C();
  swift_allocError();
  *v22 = 5;
  swift_willThrow();
  (*(v20 + 8))(v19, v21);
LABEL_10:

  v12 = v0[1];

  return v12();
}

uint64_t sub_100028D60()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_100028E70, v1, 0);
}

uint64_t sub_100028E70()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100028EF8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100029060()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 192);
    *(v0 + 72) = v2;

    return _swift_task_switch(sub_1000291F4, v2, 0);
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000054DC(v3, qword_10008C038);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Already handled missing hsa2 account failure.", v6, 2u);
    }

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1000291F4()
{
  *(v0 + 104) = *(*(v0 + 72) + 128);

  return _swift_task_switch(sub_100029264, 0, 0);
}

uint64_t sub_100029264()
{
  if (*(v0 + 104) == 12)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    *(v0 + 80) = Strong;
    if (Strong)
    {
      v2 = swift_task_alloc();
      *(v0 + 88) = v2;
      *v2 = v0;
      v2[1] = sub_10002941C;

      return sub_100029708();
    }
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000054DC(v4, qword_10008C038);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Already handled missing hsa2 account failure.", v7, 2u);
    }
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10002941C()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100029558, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100029558()
{

  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000054DC(v1, qword_10008C038);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure in _proceedWithAccountSecurityEnhancing: %{public}@", v4, 0xCu);
    sub_100004F1C(v5, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100029708()
{
  v1[2] = v0;
  sub_100003958(&qword_100087DC8, &unk_1000655F0);
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for URL();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100029800, v0, 0);
}

id sub_100029800()
{
  type metadata accessor for WorkItemQueue();
  if ((static WorkItemQueue.called(on:)() & 1) == 0)
  {
LABEL_9:
    sub_10003477C();
    swift_allocError();
    *v11 = 5;
    swift_willThrow();
    goto LABEL_10;
  }

  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  URL.init(string:)();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100004F1C(v0[3], &qword_100087DC8, &unk_1000655F0);
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000054DC(v4, qword_10008C038);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Can't create HSA2 alert URL!", v7, 2u);
    }

    if (static WorkItemQueue.called(on:)())
    {
      v8 = *(v0[2] + 136);
      v9 = swift_task_alloc();
      v0[8] = v9;
      *v9 = v0;
      v10 = sub_1000370C0;
LABEL_16:
      v9[1] = v10;

      return sub_10000821C(v8);
    }

    goto LABEL_9;
  }

  (*(v0[5] + 32))(v0[6], v0[3], v0[4]);
  result = [objc_opt_self() defaultWorkspace];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v15 = result;
  URL._bridgeToObjectiveC()(v14);
  v17 = v16;
  sub_10004EF78(_swiftEmptyArrayStorage);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v15 openSensitiveURL:v17 withOptions:isa];

  if (static WorkItemQueue.called(on:)())
  {
    v8 = *(v0[2] + 136);
    v9 = swift_task_alloc();
    v0[7] = v9;
    *v9 = v0;
    v10 = sub_100029BE0;
    goto LABEL_16;
  }

  v20 = v0[5];
  v19 = v0[6];
  v21 = v0[4];
  sub_10003477C();
  swift_allocError();
  *v22 = 5;
  swift_willThrow();
  (*(v20 + 8))(v19, v21);
LABEL_10:

  v12 = v0[1];

  return v12();
}

uint64_t sub_100029BE0()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_1000370BC, v1, 0);
}

uint64_t sub_100029CF0(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return _swift_task_switch(sub_100029D10, 0, 0);
}

uint64_t sub_100029D10()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v2 = *(Strong + 136);
    v0[13] = v2;

    return _swift_task_switch(sub_100029DD8, v2, 0);
  }

  else
  {
    v3 = v0[10];
    *v3 = 0;
    v3[1] = 0;
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100029DD8()
{
  sub_100010900((v0 + 16));
  *(v0 + 112) = 0;

  return _swift_task_switch(sub_100029E68, 0, 0);
}

uint64_t sub_100029E68()
{
  v1 = *(v0 + 80);
  v2 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for AirTagFailureViewModel();
  v3 = swift_allocObject();

  swift_defaultActor_initialize();

  v4 = *(v0 + 32);
  *(v3 + 112) = *(v0 + 16);
  *(v3 + 128) = v4;
  *(v3 + 144) = *(v0 + 48);
  *(v3 + 152) = sub_1000355D0;
  *(v3 + 160) = v2;

  v5 = sub_100036CC0(&qword_100087E00, 255, type metadata accessor for AirTagFailureViewModel, &unk_100064B6C);
  *v1 = v3;
  v1[1] = v5;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100029F90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002A014()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 192);
    *(v0 + 72) = v2;

    return _swift_task_switch(sub_10002A1A8, v2, 0);
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000054DC(v3, qword_10008C038);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Already handled pairing failure.", v6, 2u);
    }

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_10002A1A8()
{
  *(v0 + 104) = *(*(v0 + 72) + 128);

  return _swift_task_switch(sub_10002A218, 0, 0);
}

uint64_t sub_10002A218()
{
  if (*(v0 + 104) == 13)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    *(v0 + 80) = Strong;
    if (Strong)
    {

      return _swift_task_switch(sub_10002A3A0, Strong, 0);
    }
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000054DC(v2, qword_10008C038);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Already handled pairing failure.", v5, 2u);
    }
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10002A3A0()
{
  type metadata accessor for WorkItemQueue();
  if (static WorkItemQueue.called(on:)())
  {
    v1 = *(v0[10] + 136);
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_100037064;

    return sub_10000821C(v1);
  }

  else
  {
    sub_10003477C();
    v0[12] = swift_allocError();
    *v4 = 5;
    swift_willThrow();

    return _swift_task_switch(sub_1000370A8, 0, 0);
  }
}

uint64_t sub_10002A4D4(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_10002A4F4, 0, 0);
}

uint64_t sub_10002A4F4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_10002A5B8, Strong, 0);
  }

  else
  {
    v2 = v0[5];
    *v2 = 0;
    v2[1] = 0;
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_10002A5E0()
{
  v1 = *(v0 + 144);
  v2 = *(*(v0 + 56) + 136);
  *(v0 + 64) = v2;
  if (v1 == 1)
  {
    v3 = sub_10002A620;
  }

  else
  {
    v3 = sub_10002A78C;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_10002A620()
{
  v1 = *(*(v0 + 64) + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_accessoryType);
  if (v1 == 2)
  {
    sub_100014B3C();
    *(v0 + 72) = swift_allocError();
    *v2 = 2;
    swift_willThrow();
    v3 = sub_10002A728;
  }

  else
  {
    *(v0 + 128) = 2458820592;
    *(v0 + 136) = 0xA400000000000000;
    *(v0 + 120) = 0x800000010005FFE0;
    *(v0 + 145) = v1 & 1;
    *(v0 + 104) = 0xE700000000000000;
    *(v0 + 112) = 0xD000000000000011;
    *(v0 + 88) = xmmword_1000633C0;
    v3 = sub_10002A928;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002A728()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002A78C()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_accessoryType);
  if (v2 == 2)
  {
    sub_100014B3C();
    v3 = swift_allocError();
    *v4 = 2;
    swift_willThrow();
    *(v0 + 80) = v3;
    v7 = sub_10002A8C4;
  }

  else
  {
    v5 = *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_pairingLocation);
    v6 = v5;
    v8 = sub_100010564();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = sub_10000FF6C();
    *(v0 + 128) = v12;
    *(v0 + 136) = v14;
    *(v0 + 112) = v8;
    *(v0 + 120) = v10;
    *(v0 + 145) = v2 & 1;
    *(v0 + 96) = v15;
    *(v0 + 104) = v16;
    *(v0 + 88) = v5;
    v7 = sub_10002A928;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10002A8C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002A928()
{
  v15 = *(v0 + 136);
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v14 = *(v0 + 145);
  v3 = *(v0 + 96);
  v12 = *(v0 + 104);
  v13 = *(v0 + 128);
  v4 = *(v0 + 88);
  v5 = *(v0 + 40);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for AirTagPairingSuccessViewModel();
  v8 = swift_allocObject();

  swift_defaultActor_initialize();

  *(v8 + 112) = v4;
  *(v8 + 120) = v1;
  *(v8 + 128) = v2;
  *(v8 + 136) = v13;
  *(v8 + 144) = v15;
  *(v8 + 152) = v3;
  *(v8 + 160) = v12;
  *(v8 + 168) = v14;
  *(v8 + 176) = sub_10003525C;
  *(v8 + 184) = v6;
  *(v8 + 192) = sub_10003528C;
  *(v8 + 200) = v7;

  v9 = sub_100036CC0(&qword_100087DE8, 255, type metadata accessor for AirTagPairingSuccessViewModel, &unk_100063D4C);
  *v5 = v8;
  v5[1] = v9;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10002AB04()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 192);
    *(v0 + 72) = v2;

    return _swift_task_switch(sub_10002AC98, v2, 0);
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000054DC(v3, qword_10008C038);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Already handled pairing success", v6, 2u);
    }

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_10002AC98()
{
  *(v0 + 104) = *(*(v0 + 72) + 128);

  return _swift_task_switch(sub_10002AD08, 0, 0);
}

uint64_t sub_10002AD08()
{
  if (*(v0 + 104) == 14)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    *(v0 + 80) = Strong;
    if (Strong)
    {
      v2 = swift_task_alloc();
      *(v0 + 88) = v2;
      *v2 = v0;
      v2[1] = sub_10002AEC0;

      return sub_10002B1AC();
    }
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000054DC(v4, qword_10008C038);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Already handled pairing success", v7, 2u);
    }
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10002AEC0()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10002AFFC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10002AFFC()
{

  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000054DC(v1, qword_10008C038);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure in _proceedWithFindMyAppOpen: %{public}@", v4, 0xCu);
    sub_100004F1C(v5, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10002B1AC()
{
  v1[22] = v0;
  sub_100003958(&qword_100087DC8, &unk_1000655F0);
  v1[23] = swift_task_alloc();
  v2 = type metadata accessor for URL();
  v1[24] = v2;
  v3 = *(v2 - 8);
  v1[25] = v3;
  v1[26] = *(v3 + 64);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  sub_100003958(&qword_100087AB8, &qword_100062F90);
  v1[29] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v1[30] = v4;
  v1[31] = *(v4 - 8);
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();

  return _swift_task_switch(sub_10002B358, v0, 0);
}

uint64_t sub_10002B358()
{
  v1 = v0[22];
  v0[34] = type metadata accessor for WorkItemQueue();
  v0[35] = *(v1 + 176);
  if (static WorkItemQueue.called(on:)())
  {
    v2 = *(v0[22] + 136);
    v0[36] = v2;

    return _swift_task_switch(sub_10002B4A4, v2, 0);
  }

  else
  {
    sub_10003477C();
    swift_allocError();
    *v3 = 5;
    swift_willThrow();

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_10002B4A4()
{
  v1 = v0[36];
  v2 = v0[29];
  v3 = v0[22];
  v4 = OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_beaconIdentifier;
  swift_beginAccess();
  sub_100014D60(v1 + v4, v2, &qword_100087AB8, &qword_100062F90);

  return _swift_task_switch(sub_10002B554, v3, 0);
}

uint64_t sub_10002B554()
{
  v77 = v0;
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[29];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100004F1C(v3, &qword_100087AB8, &qword_100062F90);
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000054DC(v4, qword_10008C038);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "No valid accessory identifier!", v7, 2u);
    }

    v8 = v0[1];
    goto LABEL_34;
  }

  (*(v2 + 32))(v0[33], v3, v1);
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v10 = v0[32];
  v9 = v0[33];
  v12 = v0[30];
  v11 = v0[31];
  v13 = type metadata accessor for Logger();
  v0[37] = sub_1000054DC(v13, qword_10008C038);
  (*(v11 + 16))(v10, v9, v12);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  v16 = os_log_type_enabled(v14, v15);
  v17 = v0[31];
  v18 = v0[32];
  v19 = v0[30];
  if (v16)
  {
    v20 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *v20 = 136315651;
    *(v20 + 4) = sub_10005B0A0(0xD00000000000001BLL, 0x8000000100060040, &v75);
    *(v20 + 12) = 2160;
    *(v20 + 14) = 1752392040;
    *(v20 + 22) = 2081;
    sub_100036CC0(&qword_100087AC0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    v24 = *(v17 + 8);
    v24(v18, v19);
    v25 = sub_10005B0A0(v21, v23, &v75);

    *(v20 + 24) = v25;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s beaconIdentifier: %{private,mask.hash}s", v20, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v24 = *(v17 + 8);
    v24(v18, v19);
  }

  v0[38] = v24;
  v26 = v0[24];
  v27 = v0[25];
  v28 = v0[23];
  v75 = 0;
  v76 = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v75 = 0xD000000000000013;
  v76 = 0x8000000100060000;
  v29._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v29);

  v31 = v75;
  v30 = v76;
  URL.init(string:)();
  if ((*(v27 + 48))(v28, 1, v26) == 1)
  {
    v32 = v0[23];

    sub_100004F1C(v32, &qword_100087DC8, &unk_1000655F0);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Failure in Find My App URL creation!", v35, 2u);
    }

    if (static WorkItemQueue.called(on:)())
    {
      v36 = swift_task_alloc();
      v0[46] = v36;
      *v36 = v0;
      v37 = sub_10002C82C;
LABEL_29:
      v36[1] = v37;
      v65 = v0[36];

      return sub_10000821C(v65);
    }

    v46 = v0[33];
    v47 = v0[30];
    sub_10003477C();
    swift_allocError();
    *v48 = 5;
    swift_willThrow();
    v24(v46, v47);
    goto LABEL_33;
  }

  v74 = *(v0[25] + 32);
  v74(v0[28], v0[23], v0[24]);
  v38 = [objc_allocWithZone(_LSOpenConfiguration) init];
  v0[39] = v38;
  [v38 setSensitive:1];
  sub_100003958(&qword_100086F30, qword_100065160);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100062C90;
  strcpy((inited + 32), "__UnlockDevice");
  *(inited + 47) = -18;
  *(inited + 48) = 1;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = 0x8000000100060020;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = 1;
  sub_10004EF78(inited);
  swift_setDeallocating();
  sub_100003958(&qword_100086F38, &qword_100063790);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v38 setFrontBoardOptions:isa];

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();

  v73 = v24;
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v75 = v44;
    *v43 = 141558275;
    *(v43 + 4) = 1752392040;
    *(v43 + 12) = 2081;
    v45 = sub_10005B0A0(v31, v30, &v75);

    *(v43 + 14) = v45;
    _os_log_impl(&_mh_execute_header, v41, v42, "Opening Find My App URL: %{private,mask.hash}s", v43, 0x16u);
    sub_10000A5C4(v44);
  }

  else
  {
  }

  v49 = [objc_opt_self() defaultWorkspace];
  v0[40] = v49;
  if (!v49)
  {
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v62, v63, "No existing workspace object!", v64, 2u);
    }

    if (static WorkItemQueue.called(on:)())
    {
      v36 = swift_task_alloc();
      v0[45] = v36;
      *v36 = v0;
      v37 = sub_10002C624;
      goto LABEL_29;
    }

    v66 = v0[33];
    v67 = v0[30];
    v68 = v0[28];
    v69 = v0[24];
    v70 = v0[25];
    sub_10003477C();
    swift_allocError();
    *v71 = 5;
    swift_willThrow();

    (*(v70 + 8))(v68, v69);
    v73(v66, v67);
LABEL_33:

    v8 = v0[1];
LABEL_34:

    return v8();
  }

  v50 = v49;
  v51 = v0[27];
  v53 = v0[25];
  v52 = v0[26];
  v54 = v0[24];
  (*(v53 + 16))(v51, v0[28], v54);
  v55 = (*(v53 + 80) + 24) & ~*(v53 + 80);
  v56 = (v52 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  v0[41] = v57;
  *(v57 + 16) = v50;
  v74(v57 + v55, v51, v54);
  *(v57 + v56) = v38;
  v58 = v50;
  v59 = v38;
  v60 = swift_task_alloc();
  v0[42] = v60;
  v61 = sub_100003958(&qword_100087DF0, &qword_1000637A8);
  *v60 = v0;
  v60[1] = sub_10002C0AC;

  return withTimeout<A>(_:block:)(v0 + 21, 5000000000000000000, 0, &unk_1000637A0, v57, v61);
}

uint64_t sub_10002C0AC()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = *(v2 + 176);
    v4 = sub_10002CA00;
  }

  else
  {
    v5 = *(v2 + 176);

    v4 = sub_10002C1DC;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10002C1DC(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Successfully opened FindMy app.", v4, 2u);
  }

  if (static WorkItemQueue.called(on:)())
  {
    v5 = swift_task_alloc();
    v1[44] = v5;
    *v5 = v1;
    v5[1] = sub_10002C414;
    v6 = v1[36];

    return sub_10000821C(v6);
  }

  else
  {
    v9 = v1[39];
    v8 = v1[40];
    v16 = v1[33];
    v17 = v1[38];
    v10 = v1[30];
    v11 = v1[28];
    v13 = v1[24];
    v12 = v1[25];
    sub_10003477C();
    swift_allocError();
    *v14 = 5;
    swift_willThrow();

    (*(v12 + 8))(v11, v13);
    v17(v16, v10);

    v15 = v1[1];

    return v15();
  }
}

uint64_t sub_10002C414()
{
  v1 = *(*v0 + 176);

  return _swift_task_switch(sub_10002C524, v1, 0);
}

uint64_t sub_10002C524()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 304);
  v3 = *(v0 + 264);
  v4 = *(v0 + 240);
  v5 = *(v0 + 224);
  v6 = *(v0 + 192);
  v7 = *(v0 + 200);

  (*(v7 + 8))(v5, v6);
  v2(v3, v4);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10002C624()
{
  v1 = *(*v0 + 176);

  return _swift_task_switch(sub_10002C734, v1, 0);
}

uint64_t sub_10002C734()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 264);
  v3 = *(v0 + 240);
  v4 = *(v0 + 224);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);

  (*(v6 + 8))(v4, v5);
  v1(v2, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10002C82C()
{
  v1 = *(*v0 + 176);

  return _swift_task_switch(sub_10002C93C, v1, 0);
}

uint64_t sub_10002C93C()
{
  (*(v0 + 304))(*(v0 + 264), *(v0 + 240));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002CA00()
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to open FindMy app: %{public}@", v3, 0xCu);
    sub_100004F1C(v4, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  if (static WorkItemQueue.called(on:)())
  {
    v6 = swift_task_alloc();
    v0[44] = v6;
    *v6 = v0;
    v6[1] = sub_10002C414;
    v7 = v0[36];

    return sub_10000821C(v7);
  }

  else
  {
    v10 = v0[39];
    v9 = v0[40];
    v17 = v0[33];
    v18 = v0[38];
    v11 = v0[30];
    v12 = v0[28];
    v14 = v0[24];
    v13 = v0[25];
    sub_10003477C();
    swift_allocError();
    *v15 = 5;
    swift_willThrow();

    (*(v13 + 8))(v12, v14);
    v18(v17, v11);

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_10002CCC8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    dispatch thunk of WorkItemQueue.enqueue(_:)();
  }

  return result;
}

uint64_t sub_10002CDD8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_10002CE94, Strong, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_10002CE94()
{
  type metadata accessor for WorkItemQueue();
  if (static WorkItemQueue.called(on:)())
  {
    v1 = *(v0[6] + 136);
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_10002CFC8;

    return sub_10000821C(v1);
  }

  else
  {
    sub_10003477C();
    v0[8] = swift_allocError();
    *v4 = 5;
    swift_willThrow();

    return _swift_task_switch(sub_10002D0DC, 0, 0);
  }
}

uint64_t sub_10002CFC8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10002D0DC()
{
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000054DC(v1, qword_10008C038);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure in _showNextState: %{public}@", v4, 0xCu);
    sub_100004F1C(v5, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10002D284(uint64_t a1, uint64_t a2)
{
  v2 = *sub_100034E10((a1 + 32), *(a1 + 56));
  sub_100004E64(0, &qword_100087AC8, SPBeaconRoleCategory_ptr);
  **(*(v2 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return _swift_continuation_resume(v2);
}

uint64_t sub_10002D328()
{
  v1 = swift_allocObject();
  *(v0 + 32) = v1;
  swift_weakInit();
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = sub_100003958(&qword_100087AD0, &qword_100062F98);
  *v2 = v0;
  v2[1] = sub_10002D42C;

  return withTimeout<A>(_:block:)(v0 + 16, 0x8AC7230489E80000, 0, &unk_1000639D0, v1, v3);
}

uint64_t sub_10002D42C()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_10002D644;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_10002D550;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10002D550()
{
  v1 = v0[3];
  v0[7] = v0[2];
  v2 = *(v1 + 136);
  v0[8] = v2;
  return _swift_task_switch(sub_10002D578, v2, 0);
}

uint64_t sub_10002D578()
{
  v1 = *(v0 + 24);
  sub_10001269C(*(v0 + 56));

  return _swift_task_switch(sub_10002D5E4, v1, 0);
}

uint64_t sub_10002D5E4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002D644()
{

  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000054DC(v1, qword_10008C038);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure fetching account profile picture: %{public}@", v4, 0xCu);
    sub_100004F1C(v5, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10002D7F0(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_10002D810, 0, 0);
}

uint64_t sub_10002D810()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_10002D8D4, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 0;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_10002D8D4()
{
  *(v0 + 64) = *(*(v0 + 56) + 144);

  return _swift_task_switch(sub_10002D94C, 0, 0);
}

uint64_t sub_10002D94C()
{
  v1 = sub_10005C320();

  **(v0 + 40) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10002D9C4(uint64_t a1, uint64_t a2)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return _swift_task_switch(sub_10002D9E4, 0, 0);
}

uint64_t sub_10002D9E4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_10002DAB4, Strong, 0);
  }

  else
  {
    v2 = v0[13];
    *(v2 + 41) = 0u;
    v2[1] = 0u;
    v2[2] = 0u;
    *v2 = 0u;
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_10002DAB4()
{
  *(v0 + 128) = *(*(v0 + 120) + 144);

  return _swift_task_switch(sub_10002DB2C, 0, 0);
}

uint64_t sub_10002DB2C()
{
  v1 = *(v0 + 104);
  sub_10005C5B4(v0 + 16);

  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  *(v1 + 41) = *(v0 + 57);
  v1[1] = v3;
  v1[2] = v4;
  *v1 = v2;
  v5 = *(v0 + 8);

  return v5();
}

id sub_10002DBD8()
{
  type metadata accessor for WorkItemQueue();
  if (static WorkItemQueue.called(on:)())
  {
    v1 = *(v0 + 24);
    if (*(v1 + 184))
    {
      v2 = *(v1 + 185);
      if (v2 == 12)
      {
        *(v0 + 16) = 0;
        swift_stdlib_random();
        v3 = (*(v0 + 18) & 2) == 0;
      }

      else
      {
        v3 = v2 != 2;
      }
    }

    else
    {
      result = [objc_opt_self() defaultWorkspace];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v7 = result;

      v8 = String._bridgeToObjectiveC()();

      v9 = [v7 applicationIsInstalled:v8];

      v3 = v9;
    }

    v5 = *(v0 + 8);
  }

  else
  {
    sub_10003477C();
    swift_allocError();
    *v4 = 5;
    swift_willThrow();
    v5 = *(v0 + 8);
    v3 = 0;
  }

  return v5(v3);
}

uint64_t sub_10002DD68(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v4 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = v4;
    swift_errorRetain();

    dispatch thunk of WorkItemQueue.enqueue(_:)();
  }

  return result;
}

uint64_t sub_10002DE8C(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return _swift_task_switch(sub_10002DEAC, 0, 0);
}

uint64_t sub_10002DEAC()
{
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[14] = sub_1000054DC(v1, qword_10008C038);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "proximityPairingErrorCallback: %{public}@", v4, 0xCu);
    sub_100004F1C(v5, &qword_100087AA8, &unk_100062F80);
  }

  v7 = v0[12];

  v0[8] = v7;
  swift_errorRetain();
  sub_100003958(&qword_100087DC0, &qword_1000636E8);
  type metadata accessor for SPPairingSessionError(0);
  if (!swift_dynamicCast())
  {
LABEL_15:
    v10 = v0[12];
    swift_errorRetain();
    goto LABEL_16;
  }

  v8 = v0[9];
  v0[10] = v8;
  sub_100036CC0(&qword_100086EF8, 255, type metadata accessor for SPPairingSessionError, &unk_10006226C);
  _BridgedStoredNSError.code.getter();

  v9 = v0[11];
  if (v9 > 16)
  {
    switch(v9)
    {
      case 17:
        v10 = 2;
        break;
      case 20:
        v10 = 3;
        break;
      case 18:
        v10 = 1;
        break;
      default:
        goto LABEL_15;
    }
  }

  else
  {
    switch(v9)
    {
      case 5:
        v10 = 4;
        break;
      case 11:
        v10 = 5;
        break;
      case 13:
        v10 = 0;
        break;
      default:
        goto LABEL_15;
    }
  }

LABEL_16:
  v0[15] = v10;

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = *(Strong + 136);
    v0[16] = v12;

    v13 = sub_10002E234;
    v14 = v12;
LABEL_20:

    return _swift_task_switch(v13, v14, 0);
  }

  swift_beginAccess();
  v15 = swift_weakLoadStrong();
  v0[17] = v15;
  if (v15)
  {
    v14 = v15;
    v13 = sub_10002E36C;
    goto LABEL_20;
  }

  sub_10000A8CC(v0[15]);
  v16 = v0[1];

  return v16();
}

uint64_t sub_10002E234()
{
  sub_1000139F8(*(v0 + 120), 1);

  return _swift_task_switch(sub_10002E2A8, 0, 0);
}

uint64_t sub_10002E2A8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_10002E36C, Strong, 0);
  }

  else
  {
    sub_10000A8CC(v0[15]);
    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_10002E36C()
{
  type metadata accessor for WorkItemQueue();
  if (static WorkItemQueue.called(on:)())
  {
    v1 = *(v0[17] + 136);
    v2 = swift_task_alloc();
    v0[18] = v2;
    *v2 = v0;
    v2[1] = sub_10002E4A0;

    return sub_10000821C(v1);
  }

  else
  {
    sub_10003477C();
    v0[19] = swift_allocError();
    *v4 = 5;
    swift_willThrow();

    return _swift_task_switch(sub_10002E61C, 0, 0);
  }
}

uint64_t sub_10002E4A0()
{

  return _swift_task_switch(sub_10002E5B8, 0, 0);
}

uint64_t sub_10002E5B8()
{
  sub_10000A8CC(*(v0 + 120));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002E61C()
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 120);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failure in _showNextState: %{public}@", v5, 0xCu);
    sub_100004F1C(v6, &qword_100087AA8, &unk_100062F80);

    sub_10000A8CC(v4);
  }

  else
  {
    sub_10000A8CC(*(v0 + 120));
  }

  v8 = *(v0 + 8);

  return v8();
}

void sub_10002E794(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_10002E7FC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v7 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    (*(v4 + 16))(&v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v3);
    v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v9 = swift_allocObject();
    (*(v4 + 32))(v9 + v8, &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v3);
    *(v9 + ((v5 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;

    dispatch thunk of WorkItemQueue.enqueue(_:)();
  }

  return result;
}

uint64_t sub_10002E9F4(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  sub_100003958(&qword_100087AB8, &qword_100062F90);
  v2[7] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_10002EAEC, 0, 0);
}

uint64_t sub_10002EAEC()
{
  v30 = v0;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[5];
  v5 = type metadata accessor for Logger();
  sub_1000054DC(v5, qword_10008C038);
  v6 = *(v2 + 16);
  v6(v1, v4, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[9];
  v10 = v0[10];
  v12 = v0[8];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_100036CC0(&qword_100087AC0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v8;
    v15 = v6;
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_10005B0A0(v14, v17, &v29);
    v6 = v15;

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v27, "notifyPairingAccessoryChanged: %{private,mask.hash}s", v13, 0x16u);
    sub_10000A5C4(v28);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = v0[8];
    v21 = v0[9];
    v22 = v0[7];
    v23 = v0[5];
    v24 = *(Strong + 136);
    v0[11] = v24;

    v6(v22, v23, v20);
    (*(v21 + 56))(v22, 0, 1, v20);

    return _swift_task_switch(sub_10002EE34, v24, 0);
  }

  else
  {

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_10002EE34()
{
  v1 = *(v0 + 56);
  sub_1000119F4(v1);

  sub_100004F1C(v1, &qword_100087AB8, &qword_100062F90);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10002EED4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10002EFC8(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v6 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = a2;
    v7[4] = a1;
    v8 = a1;

    dispatch thunk of WorkItemQueue.enqueue(_:)();
  }

  return result;
}

uint64_t sub_10002F100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return _swift_task_switch(sub_10002F124, 0, 0);
}

uint64_t sub_10002F124()
{
  v20 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v2 = v0[7];
    v3 = type metadata accessor for Logger();
    v0[9] = sub_1000054DC(v3, qword_10008C038);
    v4 = v2;

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v18 = v0[7];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v7 = 136315395;
      type metadata accessor for UUID();
      v10 = Array.description.getter();
      v12 = sub_10005B0A0(v10, v11, &v19);

      *(v7 + 4) = v12;
      *(v7 + 12) = 2113;
      *(v7 + 14) = v4;
      *v8 = v18;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v5, v6, "proximityPairingCompletedCallback: beacons:%s, location: %{private}@", v7, 0x16u);
      sub_100004F1C(v8, &qword_100087AA8, &unk_100062F80);

      sub_10000A5C4(v9);
    }

    v14 = swift_task_alloc();
    v0[10] = v14;
    *v14 = v0;
    v14[1] = sub_10002F3E0;
    v15 = v0[7];

    return sub_10002FDAC(v15);
  }

  else
  {
    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_10002F3E0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = sub_10002FC20;
  }

  else
  {
    v4 = sub_10002F4F4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10002F4F4()
{
  v1 = v0[11];
  v2 = v0[7];
  v3 = v1;
  v4 = v2;
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[11];
    v9 = v0[7];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v8;
    *(v10 + 12) = 2112;
    *(v10 + 14) = v9;
    *v11 = v1;
    v11[1] = v9;
    v12 = v9;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v6, v7, "Location shifting completed. newLocation: %@ oldLocation: %@", v10, 0x16u);
    sub_100003958(&qword_100087AA8, &unk_100062F80);
    swift_arrayDestroy();
  }

  v0[13] = v1;
  v14 = *(v0[8] + 136);
  v0[14] = v14;

  return _swift_task_switch(sub_10002F690, v14, 0);
}

uint64_t sub_10002F690()
{
  v1 = *(v0 + 104);
  sub_100012EF8(v1, *(v0 + 48));

  return _swift_task_switch(sub_10002F70C, 0, 0);
}

uint64_t sub_10002F70C()
{
  v1 = *(*(v0 + 64) + 136);
  *(v0 + 120) = v1;

  return _swift_task_switch(sub_10002F784, v1, 0);
}

uint64_t sub_10002F784()
{
  v1 = *(v0 + 64);
  sub_1000139F8(0, 0);

  return _swift_task_switch(sub_10002F800, v1, 0);
}

uint64_t sub_10002F800()
{
  type metadata accessor for WorkItemQueue();
  if (static WorkItemQueue.called(on:)())
  {
    v1 = *(v0[8] + 136);
    v2 = swift_task_alloc();
    v0[16] = v2;
    *v2 = v0;
    v2[1] = sub_10002F92C;

    return sub_10000821C(v1);
  }

  else
  {
    sub_10003477C();
    v0[17] = swift_allocError();
    *v4 = 5;
    swift_willThrow();

    return _swift_task_switch(sub_10002FA94, 0, 0);
  }
}

uint64_t sub_10002F92C()
{

  return _swift_task_switch(sub_10002FA28, 0, 0);
}

uint64_t sub_10002FA28()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10002FA94()
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 104);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failure in _showNextState: %{public}@", v5, 0xCu);
    sub_100004F1C(v6, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10002FC20()
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Failure in location shifting: %{public}@", v3, 0xCu);
    sub_100004F1C(v4, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v6 = v0[7];
  v7 = v0[8];
  v0[13] = v6;
  v8 = *(v7 + 136);
  v0[14] = v8;
  v9 = v6;

  return _swift_task_switch(sub_10002F690, v8, 0);
}

uint64_t sub_10002FDAC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  return _swift_task_switch(sub_10002FDF4, v1, 0);
}

uint64_t sub_10002FDF4()
{
  type metadata accessor for WorkItemQueue();
  if (static WorkItemQueue.called(on:)())
  {
    v1 = v0[3];
    if (v1)
    {
      v2 = v1;
      [v2 coordinate];
      v4 = v3;
      [v2 coordinate];
      v6 = v5;
      if ([objc_opt_self() isLocationShiftRequiredForCoordinate:{v4, v5}])
      {
        v8 = v0[4];
        v9 = v0[5];
        v10 = sub_100036CC0(&qword_100087E50, v7, type metadata accessor for PairingContentViewModel, &unk_100063628);
        v11 = swift_task_alloc();
        v0[6] = v11;
        *(v11 + 2) = v8;
        v11[3] = v4;
        v11[4] = v6;
        *(v11 + 5) = v2;
        *(v11 + 6) = v9;
        v12 = swift_task_alloc();
        v0[7] = v12;
        v13 = sub_100004E64(0, &qword_100087E70, CLLocation_ptr);
        *v12 = v0;
        v12[1] = sub_100030088;

        return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, v8, v10, 0xD000000000000011, 0x80000001000601F0, sub_100036744, v11, v13);
      }

      else
      {
        v17 = v0[1];

        return v17(v2);
      }
    }

    v14 = 8;
  }

  else
  {
    v14 = 5;
  }

  sub_10003477C();
  swift_allocError();
  *v15 = v14;
  swift_willThrow();
  v16 = v0[1];

  return v16();
}

uint64_t sub_100030088()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_100030218;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_1000301B0;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000301B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100030218()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100030288(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  type metadata accessor for UUID();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = a2;
  v4(a2, v5);
}

void sub_100030320(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, double a5, double a6)
{
  v35 = a4;
  v33 = a1;
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v38 = *(v11 - 8);
  v39 = v11;
  __chkstk_darwin(v11);
  v37 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100003958(&qword_100087E78, &qword_100063A20);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v32 - v16;
  v36 = *(a2 + 200);
  [a3 horizontalAccuracy];
  v19 = v18;
  v32 = *(v14 + 16);
  v32(v17, a1, v13);
  v20 = *(v14 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  v22 = *(v14 + 32);
  v22(v21 + ((v20 + 24) & ~v20), v17, v13);
  v44 = sub_100036824;
  v45 = v21;
  aBlock = _NSConcreteStackBlock;
  v41 = 1107296256;
  v42 = sub_1000308FC;
  v43 = &unk_10007A740;
  v34 = _Block_copy(&aBlock);
  v23 = a3;

  v32(v17, v33, v13);
  v24 = (v20 + 16) & ~v20;
  v25 = swift_allocObject();
  v22(v25 + v24, v17, v13);
  *(v25 + ((v15 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = v35;
  v44 = sub_10003695C;
  v45 = v25;
  aBlock = _NSConcreteStackBlock;
  v41 = 1107296256;
  v42 = sub_1000309F4;
  v43 = &unk_10007A790;
  v26 = _Block_copy(&aBlock);

  sub_100004E64(0, &qword_100087E80, OS_dispatch_queue_ptr);
  v28 = v37;
  v27 = v38;
  v29 = v39;
  (*(v38 + 104))(v37, enum case for DispatchQoS.QoSClass.default(_:), v39);
  v30 = static OS_dispatch_queue.global(qos:)();
  (*(v27 + 8))(v28, v29);
  v31 = v34;
  [v36 shiftCoordinate:v34 accuracy:0 withCompletionHandler:v26 mustGoToNetworkCallback:v30 errorHandler:a5 callbackQueue:{a6, v19}];

  _Block_release(v26);
  _Block_release(v31);
}

uint64_t sub_100030700(void *a1, double a2, double a3, double a4)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 altitude];
  v13 = v12;
  [a1 verticalAccuracy];
  v15 = v14;
  [a1 course];
  v17 = v16;
  [a1 speed];
  v19 = v18;
  v20 = [a1 timestamp];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = objc_allocWithZone(CLLocation);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v23 = [v21 initWithCoordinate:isa altitude:a2 horizontalAccuracy:a3 verticalAccuracy:v13 course:a4 speed:v15 timestamp:{v17, v19}];

  (*(v9 + 8))(v11, v8);
  [v23 setReferenceFrame:2];
  v25[1] = v23;
  sub_100003958(&qword_100087E78, &qword_100063A20);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1000308FC(uint64_t a1, double a2, double a3, double a4)
{
  v7 = *(a1 + 32);

  v7(v8, a2, a3, a4);
}

uint64_t sub_100030968(uint64_t a1)
{
  if (!a1)
  {
    sub_10003477C();
    swift_allocError();
    *v1 = 9;
  }

  swift_errorRetain();
  sub_100003958(&qword_100087E78, &qword_100063A20);
  return CheckedContinuation.resume(throwing:)();
}

void sub_1000309F4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_100030A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return _swift_task_switch(sub_100030A80, 0, 0);
}

uint64_t sub_100030A80()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = *(v0 + 48);
    v2 = swift_allocObject();
    swift_weakInit();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;

    dispatch thunk of WorkItemQueue.enqueue(_:)();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100030BD4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 336) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_100030C90, Strong, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_100030CB8(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  switch(*(v1 + 233))
  {
    case 1:
      v4 = *(*(v1 + 336) + 136);
      *(v1 + 360) = v4;
      *(v1 + 176) = 1701667150;
      *(v1 + 184) = 0xE400000000000000;
      *(v1 + 192) = 0;
      *(v1 + 200) = xmmword_1000633D0;
      *(v1 + 216) = 0;
      *(v1 + 224) = 0;
      *(v1 + 232) = 1;
      v5 = sub_100031120;
      goto LABEL_15;
    case 2:
      v4 = *(*(v1 + 336) + 136);
      *(v1 + 368) = v4;
      v5 = sub_1000311A0;
      goto LABEL_15;
    case 3:
      goto LABEL_14;
    case 4:
      v3 = 0;
      v2 = 1;
      goto LABEL_14;
    case 5:
      v4 = *(*(v1 + 336) + 136);
      *(v1 + 376) = v4;
      v5 = sub_100031220;
      goto LABEL_15;
    case 6:
      v2 = 1;
      v3 = 2;
      goto LABEL_14;
    case 7:
      v2 = 1;
      v3 = 3;
      goto LABEL_14;
    case 8:
      v2 = 1;
      v3 = 4;
      goto LABEL_14;
    case 9:
      v2 = 1;
      v3 = 5;
      goto LABEL_14;
    case 0xA:
      v3 = 1;
      v2 = 1;
      goto LABEL_14;
    case 0xB:
      sub_10003477C();
      v3 = swift_allocError();
      v2 = 1;
      *v6 = 1;
      swift_errorRetain();
LABEL_14:
      *(v1 + 236) = v2;
      *(v1 + 235) = v2;
      *(v1 + 384) = v3;
      v4 = *(*(v1 + 336) + 136);
      *(v1 + 392) = v4;
      v5 = sub_1000312A0;
      goto LABEL_15;
    case 0xC:
      v7 = *(*(v1 + 336) + 136);
      *(v1 + 344) = v7;
      v8 = sub_100030EE0;
      goto LABEL_16;
    default:
      v4 = *(*(v1 + 336) + 136);
      *(v1 + 352) = v4;
      *(v1 + 256) = 0u;
      *(v1 + 272) = 0u;
      *(v1 + 240) = 0u;
      *(v1 + 281) = 0u;
      v5 = sub_1000310A0;
LABEL_15:
      v9 = v5;

      v8 = v9;
      v7 = v4;
LABEL_16:

      return _swift_task_switch(v8, v7, 0);
  }
}

uint64_t sub_100030F10(uint64_t a1)
{
  if (*(v1 + 234) == 2)
  {
    *(v1 + 237) = -1;
    *(v1 + 400) = 0;
    v2 = *(v1 + 336);
    v3 = sub_100031390;
  }

  else
  {
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
    *(v1 + 72) = 1;
    *(v1 + 80) = 2;
    *(v1 + 88) = 1;
    *(v1 + 96) = 3;
    *(v1 + 104) = 1;
    *(v1 + 112) = 4;
    *(v1 + 120) = 1;
    *(v1 + 128) = 5;
    *(v1 + 136) = 1;
    *(v1 + 144) = 1;
    *(v1 + 152) = 1;
    sub_10003477C();
    v4 = swift_allocError();
    *v5 = 1;
    *(v1 + 160) = v4;
    *(v1 + 168) = 1;
    v3 = sub_1000346A4(8uLL);
    if (v3 > 7)
    {
      __break(1u);
      return _swift_task_switch(v3, v2, v6);
    }

    v7 = v1 + 48 + 16 * v3;
    v8 = *v7;
    v9 = *(v7 + 8);
    sub_10000A88C(*v7, v9);
    sub_100003958(&qword_100087AB0, &qword_1000636E0);
    swift_arrayDestroy();
    sub_10000A88C(v8, v9);
    *(v1 + 236) = v9;
    *(v1 + 235) = v9;
    *(v1 + 384) = v8;
    v10 = *(*(v1 + 336) + 136);
    *(v1 + 392) = v10;

    v3 = sub_1000312A0;
    v2 = v10;
  }

  v6 = 0;

  return _swift_task_switch(v3, v2, v6);
}

uint64_t sub_1000310A0()
{
  sub_100012420((v0 + 240));

  *(v0 + 237) = -1;
  *(v0 + 400) = 0;
  v1 = *(v0 + 336);

  return _swift_task_switch(sub_100031390, v1, 0);
}

uint64_t sub_100031120()
{
  sub_100012420((v0 + 176));

  *(v0 + 237) = -1;
  *(v0 + 400) = 0;
  v1 = *(v0 + 336);

  return _swift_task_switch(sub_100031390, v1, 0);
}

uint64_t sub_1000311A0()
{
  sub_100013DE4(0);

  *(v0 + 237) = -1;
  *(v0 + 400) = 0;
  v1 = *(v0 + 336);

  return _swift_task_switch(sub_100031390, v1, 0);
}

uint64_t sub_100031220()
{
  sub_100012A58(1);

  *(v0 + 237) = -1;
  *(v0 + 400) = 0;
  v1 = *(v0 + 336);

  return _swift_task_switch(sub_100031390, v1, 0);
}

uint64_t sub_1000312A0()
{
  sub_1000139F8(*(v0 + 384), *(v0 + 235));

  return _swift_task_switch(sub_100031314, 0, 0);
}

uint64_t sub_100031314()
{
  sub_10000A8C0(*(v0 + 384), *(v0 + 235));
  v1 = *(v0 + 384);
  *(v0 + 237) = *(v0 + 236);
  *(v0 + 400) = v1;
  v2 = *(v0 + 336);

  return _swift_task_switch(sub_100031390, v2, 0);
}

uint64_t sub_100031390()
{
  type metadata accessor for WorkItemQueue();
  if (static WorkItemQueue.called(on:)())
  {
    v1 = *(v0[42] + 136);
    v2 = swift_task_alloc();
    v0[51] = v2;
    *v2 = v0;
    v2[1] = sub_1000314BC;

    return sub_10000821C(v1);
  }

  else
  {
    sub_10003477C();
    v0[52] = swift_allocError();
    *v4 = 5;
    swift_willThrow();

    return _swift_task_switch(sub_10003162C, 0, 0);
  }
}

uint64_t sub_1000314BC()
{

  return _swift_task_switch(sub_1000315B8, 0, 0);
}

uint64_t sub_1000315B8()
{
  sub_10000A8A8(*(v0 + 400), *(v0 + 237));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003162C()
{
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000054DC(v1, qword_10008C038);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 237);
  v6 = *(v0 + 400);
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure in next state displaying: %{public}@", v7, 0xCu);
    sub_100004F1C(v8, &qword_100087AA8, &unk_100062F80);

    sub_10000A8A8(v6, v5);
  }

  else
  {
    sub_10000A8A8(*(v0 + 400), *(v0 + 237));
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100031810(uint64_t a1, void *a2)
{
  v3 = *sub_100034E10((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_100003958(&qword_100087DC0, &qword_1000636E8);
    v4 = swift_allocError();
    *v5 = a2;
    v6 = a2;

    return _swift_continuation_throwingResumeWithError(v3, v4);
  }

  else
  {

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1000318BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  v5 = type metadata accessor for UUID();
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();

  return _swift_task_switch(sub_10003197C, 0, 0);
}

uint64_t sub_10003197C()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_100031AB4;
  v4 = swift_continuation_init();
  v0[17] = sub_100003958(&qword_100087E28, &qword_1000638F0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100031EAC;
  v0[13] = &unk_10007A600;
  v0[14] = v4;
  [v3 installApp:v2 withCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100031AB4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_100031CF8;
  }

  else
  {
    v2 = sub_100031BC4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100031BC4()
{
  (*(v0[20] + 8))(v0[21], v0[19]);
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000054DC(v1, qword_10008C038);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Successful FindMy.app installation.", v4, 2u);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_100031CF8()
{
  swift_willThrow();
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000054DC(v1, qword_10008C038);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure on FindMy.app installation request %{public}@.", v4, 0xCu);
    sub_100004F1C(v5, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100031EAC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *sub_100034E10((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100003958(&qword_100087DC0, &qword_1000636E8);
    v10 = swift_allocError();
    *v11 = a3;
    v12 = a3;

    return _swift_continuation_throwingResumeWithError(v9, v10);
  }

  else
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v6 + 32))(*(*(v9 + 64) + 40), v8, v5);
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_10003201C()
{
  v1[20] = v0;
  v2 = type metadata accessor for Device();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = sub_100003958(&qword_100087AA0, &qword_100062F78);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v3 = type metadata accessor for ClientOrigin();
  v1[30] = v3;
  v1[31] = *(v3 - 8);
  v1[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000321A4, v0, 0);
}

uint64_t sub_1000321A4()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  type metadata accessor for Session();
  (*(v2 + 104))(v1, enum case for ClientOrigin.findMyApp(_:), v3);
  v4 = static Session.sharedSession(origin:)();
  v0[33] = v4;
  (*(v2 + 8))(v1, v3);

  v5 = swift_task_alloc();
  v0[34] = v5;
  *v5 = v0;
  v5[1] = sub_1000322E0;
  v6 = v0[28];
  v7 = v0[24];

  return withTimeout<A>(_:block:)(v6, 0x8AC7230489E80000, 0, &unk_1000638B8, v4, v7);
}

uint64_t sub_1000322E0()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = *(v2 + 160);
    v4 = sub_10003322C;
  }

  else
  {
    v5 = *(v2 + 160);

    v4 = sub_100032408;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100032408()
{
  sub_100035EA0(v0[28], v0[29], &qword_100087AA0, &qword_100062F78);
  v1 = *(v0[20] + 136);
  v0[36] = v1;

  return _swift_task_switch(sub_100032488, v1, 0);
}

uint64_t sub_100032488()
{
  v1 = *(v0 + 160);
  sub_1000142B4(*(v0 + 232));

  return _swift_task_switch(sub_1000324F8, v1, 0);
}

uint64_t sub_1000324F8()
{
  v45 = v0;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = v0[27];
  v3 = type metadata accessor for Logger();
  sub_1000054DC(v3, qword_10008C038);
  sub_100014D60(v1, v2, &qword_100087AA0, &qword_100062F78);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[27];
  if (v6)
  {
    v8 = v0[26];
    v9 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v10 = v44;
    *v9 = 136315138;
    sub_100014D60(v7, v8, &qword_100087AA0, &qword_100062F78);
    v11 = String.init<A>(describing:)();
    v13 = v12;
    sub_100004F1C(v7, &qword_100087AA0, &qword_100062F78);
    v14 = sub_10005B0A0(v11, v13, &v44);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received device value: %s.", v9, 0xCu);
    sub_10000A5C4(v10);
  }

  else
  {

    sub_100004F1C(v7, &qword_100087AA0, &qword_100062F78);
  }

  v15 = v0[25];
  v16 = v0[21];
  v17 = v0[22];
  sub_100014D60(v0[29], v15, &qword_100087AA0, &qword_100062F78);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_100004F1C(v0[25], &qword_100087AA0, &qword_100062F78);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "No Me device information available", v20, 2u);
    }

    type metadata accessor for WorkItemQueue();
    if (static WorkItemQueue.called(on:)())
    {
      v21 = swift_task_alloc();
      v0[38] = v21;
      *v21 = v0;
      v22 = sub_100033048;
LABEL_16:
      v21[1] = v22;
      v26 = v0[36];

      return sub_10000821C(v26);
    }

    sub_10003477C();
    swift_allocError();
    *v28 = 5;
    swift_willThrow();
    swift_errorRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    v31 = os_log_type_enabled(v29, v30);
    v32 = v0[29];
    if (v31)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138543362;
      swift_errorRetain();
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v35;
      *v34 = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "Failure in next state showing: %{public}@", v33, 0xCu);
      sub_100004F1C(v34, &qword_100087AA8, &unk_100062F80);
    }

    else
    {
    }

LABEL_28:
    sub_100004F1C(v32, &qword_100087AA0, &qword_100062F78);

    v43 = v0[1];

    return v43();
  }

  (*(v0[22] + 32))(v0[23], v0[25], v0[21]);
  if (Device.isThisDevice.getter())
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Me device is this device.", v25, 2u);
    }

    type metadata accessor for WorkItemQueue();
    if (static WorkItemQueue.called(on:)())
    {
      v21 = swift_task_alloc();
      v0[37] = v21;
      *v21 = v0;
      v22 = sub_100032CA4;
      goto LABEL_16;
    }

    sub_10003477C();
    swift_allocError();
    *v37 = 5;
    swift_willThrow();
    swift_errorRetain();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138543362;
      swift_errorRetain();
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 4) = v42;
      *v41 = v42;
      _os_log_impl(&_mh_execute_header, v38, v39, "Failure in next state showing: %{public}@", v40, 0xCu);
      sub_100004F1C(v41, &qword_100087AA8, &unk_100062F80);
    }

    v32 = v0[29];
    (*(v0[22] + 8))(v0[23], v0[21]);
    goto LABEL_28;
  }

  v36 = v0[36];

  return _swift_task_switch(sub_100032EA0, v36, 0);
}

uint64_t sub_100032CA4()
{
  v1 = *(*v0 + 160);

  return _swift_task_switch(sub_100032DB4, v1, 0);
}

uint64_t sub_100032DB4()
{

  v1 = v0[29];
  (*(v0[22] + 8))(v0[23], v0[21]);
  sub_100004F1C(v1, &qword_100087AA0, &qword_100062F78);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100032EA0()
{
  v1 = *(v0 + 160);
  sub_100010D5C((v0 + 88));

  return _swift_task_switch(sub_100032F10, v1, 0);
}

uint64_t sub_100032F10()
{
  v1 = *(v0 + 232);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = *(v0 + 168);
  *(v0 + 312) = 0;
  *(v0 + 152) = 0;
  AsyncStreamProvider.yield(value:transaction:)();

  v5 = *(v0 + 104);
  v6 = *(v0 + 136);
  *(v0 + 48) = *(v0 + 120);
  *(v0 + 64) = v6;
  *(v0 + 80) = *(v0 + 152);
  *(v0 + 16) = *(v0 + 88);
  *(v0 + 32) = v5;
  sub_100034A24(v0 + 16);
  (*(v3 + 8))(v2, v4);
  sub_100004F1C(v1, &qword_100087AA0, &qword_100062F78);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100033048()
{
  v1 = *(*v0 + 160);

  return _swift_task_switch(sub_100033158, v1, 0);
}

uint64_t sub_100033158()
{
  v1 = *(v0 + 232);

  sub_100004F1C(v1, &qword_100087AA0, &qword_100062F78);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10003322C()
{
  v1 = v0[29];
  v2 = v0[21];
  v3 = v0[22];

  (*(v3 + 56))(v1, 1, 1, v2);
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000054DC(v4, qword_10008C038);
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
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to get active location sharing device %{public}@.", v7, 0xCu);
    sub_100004F1C(v8, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v10 = *(v0[20] + 136);
  v0[36] = v10;

  return _swift_task_switch(sub_100032488, v10, 0);
}

uint64_t sub_100033410(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for PreferenceError();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  sub_100003958(&qword_100087AA0, &qword_100062F78);
  v2[8] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[9] = v4;
  v5 = swift_task_alloc();
  v2[10] = v5;
  *v5 = v2;
  v5[1] = sub_100033558;

  return Session.activeLocationSharingDevice(cached:)(v4, 1);
}

uint64_t sub_100033558()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_100033940;
  }

  else
  {
    v2 = sub_10003366C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10003366C()
{
  v1 = v0[9];
  v2 = v0[3];
  v3 = type metadata accessor for Device();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  sub_100035EA0(v1, v2, &qword_100087AA0, &qword_100062F78);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100033748()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_100033ADC;
  }

  else
  {
    v2 = sub_10003385C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10003385C()
{
  v1 = v0[8];
  v2 = v0[3];
  v3 = type metadata accessor for Device();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  sub_100035EA0(v1, v2, &qword_100087AA0, &qword_100062F78);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100033940()
{
  v0[2] = v0[11];
  swift_errorRetain();
  sub_100003958(&qword_100087DC0, &qword_1000636E8);
  if (swift_dynamicCast())
  {
    if ((*(v0[6] + 88))(v0[7], v0[5]) == enum case for PreferenceError.missingMeDevice(_:))
    {

      v1 = swift_task_alloc();
      v0[12] = v1;
      *v1 = v0;
      v1[1] = sub_100033748;
      v2 = v0[8];

      return Session.activeLocationSharingDevice(cached:)(v2, 0);
    }

    (*(v0[6] + 8))(v0[7], v0[5]);
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_100033ADC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100033B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v6[21] = a4;
  return _swift_task_switch(sub_100033B8C, 0, 0);
}

uint64_t sub_100033B8C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 192) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_100033C44, Strong, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_100033C44()
{
  v1 = *(*(v0 + 192) + 112);
  *(v0 + 200) = v1;
  v2 = v1;

  return _swift_task_switch(sub_100033CB8, 0, 0);
}

uint64_t sub_100033CB8()
{
  v1 = v0[25];
  v2 = v0[23];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v0[26] = isa;
  v0[2] = v0;
  v0[3] = sub_100033DEC;
  v4 = swift_continuation_init();
  v0[17] = sub_100003958(&qword_100087DB8, &qword_1000636B8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100031810;
  v0[13] = &unk_10007A560;
  v0[14] = v4;
  [v1 finalizeProximityPairingForAccessoryIdentifier:isa configuration:v2 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100033DEC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_100034028;
  }

  else
  {
    v2 = sub_100033EFC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100033EFC()
{
  v1 = *(v0 + 208);

  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000054DC(v2, qword_10008C038);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "finalizeProximityPairing completed successfully", v5, 2u);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100034028()
{
  v1 = v0[26];
  v2 = v0[25];
  swift_willThrow();

  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000054DC(v3, qword_10008C038);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "finalizeProximityPairing failed: %{public}@", v6, 0xCu);
    sub_100004F1C(v7, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000341FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[19] = a1;
  v4[20] = a2;
  return _swift_task_switch(sub_100034220, 0, 0);
}

uint64_t sub_100034220@<X0>(NSURL *a1@<X8>)
{
  v2 = v1[22];
  v3 = v1[20];
  URL._bridgeToObjectiveC()(a1);
  v5 = v4;
  v1[23] = v4;
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_10003435C;
  v6 = swift_continuation_init();
  v1[17] = sub_100003958(&qword_100087DF8, &qword_1000637B0);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_100034548;
  v1[13] = &unk_10007A4E8;
  v1[14] = v6;
  [v3 openURL:v5 configuration:v2 completionHandler:v1 + 10];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_10003435C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_1000344D8;
  }

  else
  {
    v2 = sub_10003446C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10003446C()
{
  v1 = *(v0 + 184);
  **(v0 + 152) = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000344D8()
{
  v1 = *(v0 + 184);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100034548(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_100034E10((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100003958(&qword_100087DC0, &qword_1000636E8);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_100034644(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

unint64_t sub_1000346A4(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100034730(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100079310, v2);

  if (v3 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10003477C()
{
  result = qword_100087DA0;
  if (!qword_100087DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087DA0);
  }

  return result;
}

uint64_t sub_1000347D0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100034838(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001616C;

  return sub_10001F690(a1, v1);
}

uint64_t sub_1000348FC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001616C;

  return sub_10001C9C4(v2, v3);
}

uint64_t sub_100034994()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001616C;

  return sub_10001DC10(v0);
}

void sub_100034A54(char a1, void *a2)
{
  if (a2)
  {
    v4 = qword_100086DA8;
    swift_unknownObjectRetain();
    if (v4 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000054DC(v5, qword_10008C038);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v6, v7, "Setting idle timer disabled: %{BOOL}d", v8, 8u);
    }

    oslog = String._bridgeToObjectiveC()();
    [a2 setIdleTimerDisabled:a1 & 1 forReason:?];
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000054DC(v9, qword_10008C038);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v10, "No remote view controller proxy found.", v11, 2u);
    }
  }
}

uint64_t sub_100034C80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001616C;

  return sub_100030A60(a1, v4, v5, v7, v6);
}

uint64_t sub_100034D40()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100034D78()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001616C;

  return sub_100030BB4(v2);
}

void *sub_100034E10(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100034E54()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001616C;

  return sub_1000244F0(v0);
}

Swift::Int sub_100034EE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003958(&qword_100087DE0, &qword_100063710);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_10003504C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001616C;

  return sub_1000222C0(v0);
}

uint64_t sub_10003510C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001616C;

  return sub_100021C3C(v2, v3, v4);
}

uint64_t sub_1000351B4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000F540;

  return sub_100021190(v2, v3, v4);
}

uint64_t sub_1000352BC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001616C;

  return sub_10002CDB8(v0);
}

uint64_t sub_10003534C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001616C;

  return sub_10002AAE4(v0);
}

uint64_t sub_1000353DC()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000354B4(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001616C;

  return sub_1000341FC(a1, v6, v1 + v5, v7);
}

uint64_t sub_100035600()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001616C;

  return sub_100029FF4(v0);
}

uint64_t sub_100035690()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001616C;

  return sub_100029040(v0);
}

void sub_100035720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 < 2u)
  {

LABEL_4:

    return;
  }

  if (a5 == 2)
  {

    goto LABEL_4;
  }
}

uint64_t sub_100035784()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001616C;

  return sub_100022814(v0);
}

uint64_t sub_100035814()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001616C;

  return sub_10002295C(v0);
}

uint64_t sub_1000358A4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100035984(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001616C;

  return sub_100033B68(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_100035AE4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001616C;

  return sub_1000281C0(v0);
}

uint64_t sub_100035B74()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001616C;

  return sub_100025B28(v0);
}

uint64_t sub_100035C04()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001616C;

  return sub_100027A0C(v0);
}

uint64_t sub_100035C94(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000F540;

  return sub_10001FFC0(a1, v1);
}

uint64_t sub_100035D2C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100035D6C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001616C;

  return sub_10002012C(v2, v3);
}

uint64_t sub_100035E04(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001616C;

  return sub_100033410(a1, v1);
}

uint64_t sub_100035EA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003958(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100035F08(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000177D4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100035F5C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001616C;

  return sub_100026058(v0);
}

uint64_t sub_100035FEC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003602C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001616C;

  return sub_1000318BC(a1, v4, v5, v6);
}

uint64_t sub_1000360E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001616C;

  return sub_100019EBC();
}

uint64_t sub_10003617C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001616C;

  return sub_10001AB40();
}

uint64_t sub_100036218()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001616C;

  return sub_10001B180();
}

uint64_t sub_1000362B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001616C;

  return sub_10001B8B0();
}

uint64_t sub_100036380(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 32));

  return _swift_deallocObject(v3, a3, 7);
}

uint64_t sub_1000363E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001616C;

  return sub_10002D308(a1, v4, v5, v6);
}

uint64_t sub_100036498(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001616C;

  return sub_10002D9C4(a1, v1);
}

uint64_t sub_100036588(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001616C;

  return sub_10002D7F0(a1, v1);
}

double sub_10003662C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100036654()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003669C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001616C;

  return sub_10002F100(v2, v3, v4);
}

uint64_t sub_100036754()
{
  v1 = sub_100003958(&qword_100087E78, &qword_100063A20);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100036824(double a1, double a2, double a3)
{
  sub_100003958(&qword_100087E78, &qword_100063A20);
  v7 = *(v3 + 16);

  return sub_100030700(v7, a1, a2, a3);
}

uint64_t sub_1000368BC()
{
  v1 = sub_100003958(&qword_100087E78, &qword_100063A20);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10003695C(uint64_t a1)
{
  sub_100003958(&qword_100087E78, &qword_100063A20);

  return sub_100030968(a1);
}

uint64_t sub_100036A04()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100036AA0()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001616C;

  return sub_10002E9F4(v0 + v3, v4);
}

uint64_t sub_100036BD0(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return _swift_deallocObject(v2, 32, 7);
}

uint64_t sub_100036C28()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001616C;

  return sub_10002DE8C(v2, v3);
}

uint64_t sub_100036CC0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t getEnumTagSinglePayload for PairingContentViewModel.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}