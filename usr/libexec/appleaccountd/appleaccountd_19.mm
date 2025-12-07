unint64_t sub_100242A70()
{
  result = qword_1003E36F0;
  if (!qword_1003E36F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E36F0);
  }

  return result;
}

uint64_t sub_100242AD0()
{
  v1 = sub_100005814(&qword_1003E36F8, qword_100346B68);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

void sub_100242BA0(uint64_t a1)
{
  sub_100005814(&qword_1003E36F8, qword_100346B68);
  v3 = *(v1 + 16);

  sub_100241608(a1, v3);
}

uint64_t sub_100242C20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100242C38()
{
  v1[7] = v0;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_100242D04, 0, 0);
}

uint64_t sub_100242D04()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  (*(v2 + 16))(v1, v0[7] + OBJC_IVAR____TtC13appleaccountd27ProtoAccountCleanupActivity__accountStore, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v4 = [*(*sub_1000080F8(v0 + 2 v0[5]) + 16)];
  if (v4)
  {

    sub_10000839C(v0 + 2);
    v5 = swift_task_alloc();
    v0[11] = v5;
    *v5 = v0;
    v5[1] = sub_100242F24;

    return sub_10024303C();
  }

  else
  {
    sub_10000839C(v0 + 2);
    if (qword_1003D7F80 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100008D04(v7, qword_1003FAB60);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "No primary Apple Account account found, skipping cleanup.", v10, 2u);
    }

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_100242F24()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10024303C()
{
  v1[12] = v0;
  v2 = sub_100005814(&qword_1003E3838, &qword_100346BD8);
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_100243108, 0, 0);
}

uint64_t sub_100243108()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v5 = OBJC_IVAR____TtC13appleaccountd27ProtoAccountCleanupActivity__protoAccountManager;
  v0[16] = OBJC_IVAR____TtC13appleaccountd27ProtoAccountCleanupActivity__protoAccountManager;
  v6 = *(v2 + 16);
  v0[17] = v6;
  v0[18] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v3 + v5, v4);
  Dependency.wrappedValue.getter();
  v7 = *(v2 + 8);
  v0[19] = v7;
  v0[20] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v4);
  sub_1000080F8(v0 + 2, v0[5]);
  v8 = swift_task_alloc();
  v0[21] = v8;
  *v8 = v0;
  v8[1] = sub_10024321C;

  return sub_1002445DC();
}

uint64_t sub_10024321C(uint64_t a1)
{
  *(*v1 + 176) = a1;

  return _swift_task_switch(sub_10024331C, 0, 0);
}

uint64_t sub_10024331C()
{
  v1 = v0[22];
  sub_10000839C(v0 + 2);
  if (v1)
  {
    if (qword_1003D7F80 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100008D04(v2, qword_1003FAB60);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "ProtoAccountCleanupController - Found a protoaccount. Removing it.", v5, 2u);
    }

    v6 = swift_task_alloc();
    v0[23] = v6;
    *v6 = v0;
    v6[1] = sub_100243690;

    return sub_100243CA8(v1);
  }

  else
  {
    if (qword_1003D7F80 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAB60);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "ProtoAccountCleanupController - No proto account found. Checking for followups", v11, 2u);
    }

    v12 = v0[19];
    v13 = v0[17];
    v14 = v0[15];
    v15 = v0[16];
    v17 = v0[12];
    v16 = v0[13];

    v13(v14, v17 + v15, v16);
    Dependency.wrappedValue.getter();
    v12(v14, v16);
    sub_1000080F8(v0 + 7, v0[10]);
    v18 = type metadata accessor for ProtoAccountManager(0);
    v19 = swift_task_alloc();
    v0[25] = v19;
    *v19 = v0;
    v19[1] = sub_100243810;

    return (sub_100245AE4)(v18, &off_1003B0B70);
  }
}

uint64_t sub_100243690()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1002439FC;
  }

  else
  {
    v2 = sub_1002437A4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002437A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100243810()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_100243990;
  }

  else
  {
    v2 = sub_100243924;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100243924()
{
  sub_10000839C((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100243990()
{
  sub_10000839C((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002439FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100243A68()
{
  v1 = OBJC_IVAR____TtC13appleaccountd27ProtoAccountCleanupActivity__accountStore;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd27ProtoAccountCleanupActivity__protoAccountManager;
  v4 = sub_100005814(&qword_1003E3838, &qword_100346BD8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ProtoAccountCleanupActivity(uint64_t a1)
{
  result = qword_1003E3738;
  if (!qword_1003E3738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100243BB0(uint64_t a1)
{
  sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, &unk_1003E3748, &qword_1003DF6B8, &qword_100346BB0);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100243CA8(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = sub_100005814(&qword_1003E3838, &qword_100346BD8);
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_100243D74, 0, 0);
}

uint64_t sub_100243D74()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = OBJC_IVAR____TtC13appleaccountd27ProtoAccountCleanupActivity__protoAccountManager;
  v0[17] = OBJC_IVAR____TtC13appleaccountd27ProtoAccountCleanupActivity__protoAccountManager;
  v6 = *(v2 + 16);
  v0[18] = v6;
  v0[19] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v3 + v5, v4);
  Dependency.wrappedValue.getter();
  v7 = *(v2 + 8);
  v0[20] = v7;
  v0[21] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v4);
  sub_1000080F8(v0 + 2, v0[5]);
  v8 = swift_task_alloc();
  v0[22] = v8;
  *v8 = v0;
  v8[1] = sub_100243E90;
  v9 = v0[12];

  return sub_100245254(v9);
}

uint64_t sub_100243E90()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_100244010;
  }

  else
  {
    v2 = sub_100243FA4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100243FA4()
{
  sub_10000839C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100244010()
{
  sub_10000839C(v0 + 2);
  if (qword_1003D7F80 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAB60);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "ProtoAccountCleanupController - Proto account removal failed: %@, trying again.", v4, 0xCu);
    sub_100083380(v5);
  }

  v7 = v0[20];
  v8 = v0[18];
  v9 = v0[16];
  v10 = v0[17];
  v12 = v0[13];
  v11 = v0[14];

  v8(v9, v12 + v10, v11);
  Dependency.wrappedValue.getter();
  v7(v9, v11);
  sub_1000080F8(v0 + 7, v0[10]);
  v13 = swift_task_alloc();
  v0[24] = v13;
  *v13 = v0;
  v13[1] = sub_10024422C;
  v14 = v0[12];

  return sub_100245254(v14);
}

uint64_t sub_10024422C()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1002443B4;
  }

  else
  {
    v2 = sub_100244340;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100244340()
{

  sub_10000839C((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002443B4()
{

  sub_10000839C((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10024442C(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_1000080F8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1002444F8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_1000080F8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    v9 = 0;
    if (a2)
    {
      sub_10015C7C0();
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    **(*(v5 + 64) + 40) = v9;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1002445DC()
{
  v1[24] = v0;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v1[25] = v2;
  v1[26] = *(v2 - 8);
  v1[27] = swift_task_alloc();

  return _swift_task_switch(sub_1002446A8, 0, 0);
}

uint64_t sub_1002446A8()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 protoAccountType];

  v3 = [v2 identifier];
  if (v3)
  {
    v5 = v0[26];
    v4 = v0[27];
    v7 = v0[24];
    v6 = v0[25];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    (*(v5 + 16))(v4, v7 + OBJC_IVAR____TtC13appleaccountd19ProtoAccountManager__accountStore, v6);
    Dependency.wrappedValue.getter();
    (*(v5 + 8))(v4, v6);
    v11 = sub_1000080F8(v0 + 18, v0[21]);
    sub_100005814(&qword_1003E3908, &qword_100346C60);
    v12 = swift_allocObject();
    v0[28] = v12;
    *(v12 + 16) = xmmword_10033EB30;
    *(v12 + 32) = v8;
    *(v12 + 40) = v10;
    v13 = *(*v11 + 16);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v0[29] = isa;
    v0[2] = v0;
    v0[7] = v0 + 23;
    v0[3] = sub_100244A10;
    v15 = swift_continuation_init();
    v0[17] = sub_100005814(&qword_1003E3910, qword_100346C68);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1002444F8;
    v0[13] = &unk_1003B0BE0;
    v0[14] = v15;
    [v13 accountsWithAccountTypeIdentifiers:isa completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    if (qword_1003D7F80 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAB60);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed fetch proto account type", v19, 2u);
    }

    v20 = v0[1];

    return v20(0);
  }
}

uint64_t sub_100244A10()
{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_100244C14;
  }

  else
  {
    v2 = sub_100244B20;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100244B20()
{
  v1 = v0[29];

  v2 = v0[23];

  v3 = v0 + 18;
  if (!v2)
  {
    sub_10000839C(v3);
LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  sub_10000839C(v3);
  if (v2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_10:

    goto LABEL_11;
  }

LABEL_4:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(v2 + 32);
  }

  v6 = v5;

LABEL_12:

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_100244C14(uint64_t a1)
{
  v2 = v1[29];
  swift_willThrow();

  sub_10000839C(v1 + 18);
  if (qword_1003D7F80 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100008D04(v3, qword_1003FAB60);
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
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to fetch proto account: %@", v6, 0xCu);
    sub_100083380(v7);
  }

  else
  {
  }

  v9 = v1[1];

  return v9(0);
}

uint64_t sub_100244DD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003DABC0, &unk_100342840);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19[-1] - v6;
  v8 = sub_100005814(&qword_1003DB0C0, &unk_10033FC00);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19[-1] - v10;
  (*(v9 + 16))(&v19[-1] - v10, a2 + OBJC_IVAR____TtC13appleaccountd19ProtoAccountManager__followUpController, v8);
  Dependency.wrappedValue.getter();
  (*(v9 + 8))(v11, v8);
  v12 = v20;
  v13 = v21;
  sub_1000080F8(v19, v20);
  v14 = AAFollowUpIdentifierChildOrTeenProtoConnect;
  (*(v5 + 16))(v7, a1, v4);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  (*(v5 + 32))(v16 + v15, v7, v4);
  (*(v13 + 32))(v14, sub_100245C78, v16, v12, v13);

  return sub_10000839C(v19);
}

uint64_t sub_10024503C(char a1, uint64_t a2)
{
  if (qword_1003D7F80 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100008D04(v4, qword_1003FAB60);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "Cleared follow up for child connect with success: %{BOOL}d", v7, 8u);
  }

  if (a2)
  {
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "Encountered error while clearing follow up: %@", v10, 0xCu);
      sub_100083380(v11);
    }

    sub_100005814(&qword_1003DABC0, &unk_100342840);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100005814(&qword_1003DABC0, &unk_100342840);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100245254(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();

  return _swift_task_switch(sub_100245320, 0, 0);
}

uint64_t sub_100245320()
{
  v1 = v0;
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];
  v5 = v0[23];
  (*(v1[26] + 16))(v1[27], v1[24] + OBJC_IVAR____TtC13appleaccountd19ProtoAccountManager__accountStore, v1[25]);
  Dependency.wrappedValue.getter();
  (*(v3 + 8))(v2, v4);
  v6 = *(*sub_1000080F8(v1 + 18, v1[21]) + 16);
  v0[2] = v0;
  v0[7] = v0 + 29;
  v0[3] = sub_1002454B8;
  v7 = swift_continuation_init();
  v0[17] = sub_100005814(&unk_1003DEE00, qword_100343450);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10024442C;
  v0[13] = &unk_1003B0BB8;
  v0[14] = v7;
  [v6 removeAccount:v5 withCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1002454B8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_100245704;
  }

  else
  {
    v2 = sub_1002455C8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002455C8()
{
  v1 = *(v0 + 232);
  sub_10000839C((v0 + 144));
  if (qword_1003D7F80 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAB60);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v3, v4, "Removed proto account with success: %{BOOL}d", v5, 8u);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100245704(uint64_t a1)
{
  swift_willThrow();
  sub_10000839C((v1 + 144));
  if (qword_1003D7F80 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAB60);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to remove proto account: %@", v5, 0xCu);
    sub_100083380(v6);
  }

  swift_willThrow();

  v8 = *(v1 + 8);

  return v8();
}

uint64_t sub_1002458A4()
{
  v1 = OBJC_IVAR____TtC13appleaccountd19ProtoAccountManager__accountStore;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd19ProtoAccountManager__followUpController;
  v4 = sub_100005814(&qword_1003DB0C0, &unk_10033FC00);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ProtoAccountManager(uint64_t a1)
{
  result = qword_1003E3878;
  if (!qword_1003E3878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002459EC(uint64_t a1)
{
  sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, &qword_1003DB700, &unk_1003DACE0, &unk_10033F920);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100245B08()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100241EC8;
  v2 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v1, 0, 0, 0xD000000000000022, 0x8000000100331600, sub_100245BDC, v2, &type metadata for () + 8);
}

uint64_t sub_100245BE4()
{
  v1 = sub_100005814(&qword_1003DABC0, &unk_100342840);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100245C78(char a1, uint64_t a2)
{
  sub_100005814(&qword_1003DABC0, &unk_100342840);

  return sub_10024503C(a1, a2);
}

id sub_100245D38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    v10 = a1;
    v8 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v7 = a1;
  v8 = String._bridgeToObjectiveC()();

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = String._bridgeToObjectiveC()();

LABEL_6:
  v11 = [swift_getObjCClassFromMetadata() analyticsEventWithName:a1 altDSID:v8 flowID:v9];

  return v11;
}

void sub_100245E08(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_100245EF4();
    v4 = NSString.init(stringLiteral:)();
    [v2 setObject:0 forKeyedSubscript:?];
  }

  else
  {
    v3 = [objc_allocWithZone(NSNumber) initWithInteger:a1];
    sub_100245EF4();
    v4 = NSString.init(stringLiteral:)();
    [v2 setObject:v3 forKeyedSubscript:?];
  }
}

unint64_t sub_100245EF4()
{
  result = qword_1003D9250;
  if (!qword_1003D9250)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003D9250);
  }

  return result;
}

id sub_100245F40()
{
  v1 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - v3;
  (*(v2 + 16))(&v10 - v3, v0 + OBJC_IVAR____TtC13appleaccountd27DaemonAnalyticsAccountModel__cdpController, v1);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v4, v1);
  v5 = *(*sub_1000080F8(v12, v12[3]) + 24);
  v11 = 0;
  v6 = [v5 isManateeAvailable:&v11];
  if (v6)
  {
    v7 = v11;
  }

  else
  {
    v8 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_10000839C(v12);
  return v6;
}

void sub_1002460D8(uint64_t a1)
{
  v2 = sub_100005814(&qword_1003E3B30, qword_100346D00);
  v76 = *(v2 - 8);
  v77 = v2;
  __chkstk_darwin(v2);
  v75 = &v67 - v3;
  v4 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v81 = *(v4 - 8);
  __chkstk_darwin(v4);
  v80 = &v67 - v5;
  v6 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v67 - v8;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v79 = sub_100008D04(v10, qword_1003FAAB8);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Generating common fields for analytics...", v13, 2u);
  }

  v14 = sub_10030980C(_swiftEmptyArrayStorage);
  v15 = *(v7 + 16);
  v69 = OBJC_IVAR____TtC13appleaccountd27DaemonAnalyticsAccountModel__cdpController;
  v70 = v15;
  v15(v9, a1 + OBJC_IVAR____TtC13appleaccountd27DaemonAnalyticsAccountModel__cdpController, v6);
  Dependency.wrappedValue.getter();
  v68 = *(v7 + 8);
  v68(v9, v6);
  v16 = *(*sub_1000080F8(v83, v84) + 16);
  v82 = 0;
  [v16 walrusStatus:&v82];
  v71 = v7 + 8;
  if (v82)
  {
    swift_willThrow();
  }

  sub_10000839C(v83);
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v83[0] = v14;
  sub_1002CFB8C(isa, 0xD000000000000014, 0x8000000100331680, isUniquelyReferenced_nonNull_native);
  v19 = v83[0];
  v20 = v80;
  v21 = v81;
  v22 = *(v81 + 16);
  v73 = OBJC_IVAR____TtC13appleaccountd27DaemonAnalyticsAccountModel__accountStore;
  v74 = v22;
  v22(v80, a1 + OBJC_IVAR____TtC13appleaccountd27DaemonAnalyticsAccountModel__accountStore, v4);
  Dependency.wrappedValue.getter();
  v23 = *(v21 + 8);
  v78 = v4;
  v81 = v21 + 8;
  v72 = v23;
  v23(v20, v4);
  v24 = [*(*sub_1000080F8(v83 v84) + 16)];
  if (v24)
  {
    v25 = v24;
    [v24 aa_isSuspended];
  }

  sub_10000839C(v83);
  v26 = Bool._bridgeToObjectiveC()().super.super.isa;
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v83[0] = v19;
  sub_1002CFB8C(v26, 0xD000000000000013, 0x80000001003316A0, v27);
  v28 = v83[0];
  sub_100245F40();
  v29 = Bool._bridgeToObjectiveC()().super.super.isa;
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v83[0] = v28;
  sub_1002CFB8C(v29, 0xD000000000000012, 0x80000001003316C0, v30);
  v31 = v83[0];
  v70(v9, a1 + v69, v6);
  Dependency.wrappedValue.getter();
  v68(v9, v6);
  v32 = [objc_allocWithZone(ACAccountStore) init];
  v33 = [v32 aa_primaryAppleAccount];

  if (v33)
  {
    v34 = [v33 aa_personID];

    v35 = v78;
    if (v34)
    {
      [objc_opt_self() isICDPEnabledForDSID:v34];
    }
  }

  else
  {
    v35 = v78;
  }

  sub_10000839C(v83);
  v36 = Bool._bridgeToObjectiveC()().super.super.isa;
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v83[0] = v31;
  sub_1002CFB8C(v36, 0x616E455044437369, 0xEC00000064656C62, v37);
  v38 = v83[0];
  v39 = v75;
  v40 = v76;
  v41 = v77;
  (*(v76 + 16))(v75, a1 + OBJC_IVAR____TtC13appleaccountd27DaemonAnalyticsAccountModel__deviceState, v77);
  Dependency.wrappedValue.getter();
  (*(v40 + 8))(v39, v41);
  v42 = [objc_allocWithZone(AKDevice) init];
  [v42 isProtectedWithPasscode];

  sub_10000839C(v83);
  v43 = Bool._bridgeToObjectiveC()().super.super.isa;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v83[0] = v38;
  sub_1002CFB8C(v43, 0xD000000000000011, 0x80000001003316E0, v44);
  v45 = v83[0];
  v46 = v80;
  v74(v80, a1 + v73, v35);
  Dependency.wrappedValue.getter();
  v72(v46, v35);
  sub_1000080F8(v83, v84);
  sub_10015B8BC();
  sub_10000839C(v83);
  v47 = Int._bridgeToObjectiveC()().super.super.isa;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v83[0] = v45;
  sub_1002CFB8C(v47, 0x7974697275636573, 0xED00006C6576656CLL, v48);
  v49 = v83[0];
  v50 = (a1 + OBJC_IVAR____TtC13appleaccountd27DaemonAnalyticsAccountModel_followUpController);
  v51 = a1;
  v52 = *(a1 + OBJC_IVAR____TtC13appleaccountd27DaemonAnalyticsAccountModel_followUpController + 24);
  v53 = v50[4];
  sub_1000080F8(v50, v52);
  (*(v53 + 40))(v52, v53);
  v54 = Bool._bridgeToObjectiveC()().super.super.isa;
  v55 = swift_isUniquelyReferenced_nonNull_native();
  v83[0] = v49;
  sub_1002CFB8C(v54, 0xD000000000000019, 0x8000000100331700, v55);
  v56 = v83[0];
  v57 = v50[3];
  v58 = v50[4];
  sub_1000080F8(v50, v57);
  (*(v58 + 48))(v57, v58);
  v59 = Bool._bridgeToObjectiveC()().super.super.isa;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v83[0] = v56;
  sub_1002CFB8C(v59, 0xD000000000000014, 0x8000000100331720, v60);
  v61 = v83[0];
  v62 = Double._bridgeToObjectiveC()().super.super.isa;
  v63 = swift_isUniquelyReferenced_nonNull_native();
  v83[0] = v61;
  sub_1002CFB8C(v62, 0xD000000000000013, 0x8000000100331740, v63);
  *(v51 + OBJC_IVAR____TtC13appleaccountd27DaemonAnalyticsAccountModel__commonFields) = v83[0];

  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&_mh_execute_header, v64, v65, "Generated common fields for analytics!", v66, 2u);
  }
}

uint64_t sub_100246A78()
{
  v1 = OBJC_IVAR____TtC13appleaccountd27DaemonAnalyticsAccountModel__cdpController;
  v2 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd27DaemonAnalyticsAccountModel__deviceState;
  v4 = sub_100005814(&qword_1003E3B30, qword_100346D00);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd27DaemonAnalyticsAccountModel__accountStore;
  v6 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  sub_10000839C((v0 + OBJC_IVAR____TtC13appleaccountd27DaemonAnalyticsAccountModel_followUpController));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DaemonAnalyticsAccountModel(uint64_t a1)
{
  result = qword_1003E3970;
  if (!qword_1003E3970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100246C3C(uint64_t a1)
{
  sub_10000DAB8(319, qword_1003DB720, &unk_1003DACD0, &unk_10033F020);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, &unk_1003E3980, &qword_1003DF600, &unk_1003436A0);
    if (v2 <= 0x3F)
    {
      sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_100246DAC()
{
  sub_100005814(&qword_1003E3B28, &qword_100346CF8);
  OS_dispatch_queue.sync<A>(execute:)();
  return v1;
}

uint64_t sub_100246E28(void (*a1)(void), uint64_t a2)
{
  v5 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-1] - v7;
  (*(v6 + 16))(&v11[-1] - v7, *v2 + OBJC_IVAR____TtC13appleaccountd27DaemonAnalyticsAccountModel__cdpController, v5);
  Dependency.wrappedValue.getter();
  (*(v6 + 8))(v8, v5);
  sub_1000080F8(v11, v11[3]);
  sub_10013B5F4(a1, a2);
  return sub_10000839C(v11);
}

void sub_100246FA8(uint64_t a1)
{
  if (a1)
  {

    [v1 sendEvent:a1];
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100008D04(v2, qword_1003FAA40);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Analytics event found nil", v4, 2u);
    }
  }
}

uint64_t sub_1002470C4(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v6[3] = a5;
  v6[4] = v5;
  v6[2] = a2;
  v10 = (a3 + *a3);
  v8 = swift_task_alloc();
  v6[5] = v8;
  *v8 = v6;
  v8[1] = sub_1002471CC;

  return v10(a1);
}

uint64_t sub_1002471CC()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_100247360;
  }

  else
  {
    v2 = sub_1002472E0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002472E0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    [v1 updateTaskResultWithError:0];
    v1 = *(v0 + 16);
  }

  sub_100246FA8(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100247360()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = _convertErrorToNSError(_:)();
    [v1 updateTaskResultWithError:v2];

    v3 = *(v0 + 16);
  }

  else
  {
    v3 = 0;
  }

  sub_100246FA8(v3);
  swift_willThrow();
  v4 = *(v0 + 8);

  return v4();
}

id sub_1002474D4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100247530()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustodianHealthCheckAnalyticsEvent(uint64_t a1)
{
  result = qword_1003E3D30;
  if (!qword_1003E3D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002475E8(uint64_t a1)
{
  sub_100248974(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_1002476C4(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6D75736B63656863;
    if (!a1)
    {
      v6 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return 0x4B52436B63656863;
    }
  }

  else
  {
    v1 = 0xD000000000000010;
    v2 = 0xD000000000000016;
    if (a1 != 9)
    {
      v2 = 0xD000000000000014;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x697373694D636B72;
    v4 = 0xD000000000000010;
    if (a1 != 6)
    {
      v4 = 0xD00000000000001DLL;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_100247870(uint64_t a1, char a2)
{
  *(v2 + qword_1003E3CE0) = _swiftEmptyArrayStorage;
  *(v2 + qword_1003E3CF0) = 0;
  *(v2 + qword_1003E3CF8) = 0;
  *(v2 + qword_1003E3D00) = -1;
  v5 = (v2 + qword_1003E3D08);
  *v5 = 0;
  v5[1] = 0;
  v6 = v2 + qword_1003E3D10;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = (v2 + qword_1003E3D18);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v2 + qword_1003E3D20);
  *v8 = 0;
  v8[1] = 0;
  sub_100005814(&unk_1003DA880, &unk_10033F5F0);
  Dependency.init(dependencyId:config:)();
  v9 = v2 + qword_1003E3CE8;
  *v9 = a1;
  *(v9 + 8) = a2 & 1;
  sub_100309C2C(_swiftEmptyArrayStorage);

  return AAFTimedAnalyticsEvent.init(eventName:initialData:)();
}

void sub_1002479A8(int a1, unsigned __int8 a2)
{
  v4 = v2;
  v7 = sub_100005814(&qword_1003DB628, &qword_10033FAB0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v77 - v9;
  if (AAUnderTest.getter())
  {
    return;
  }

  (*(v8 + 16))(v10, v4 + qword_1003E3D28, v7);
  Dependency.wrappedValue.getter();
  (*(v8 + 8))(v10, v7);
  sub_1000080F8(v96, v96[3]);
  type metadata accessor for DaemonAnalyticsAccountModel(0);
  v11 = sub_100246DAC();
  sub_1002D245C(v11);
  v13 = v12;

  v97 = v13;
  sub_10000839C(v96);
  v14 = String._bridgeToObjectiveC()();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v96[0] = v97;
  sub_1002CF474(v14, 0x6E6F6973726576, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  v97 = v96[0];
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v96[0] = v97;
  sub_1002CF474(isa, 0x6961706552646964, 0xE900000000000072, v17);
  v97 = v96[0];
  v18 = Bool._bridgeToObjectiveC()().super.super.isa;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v96[0] = v97;
  sub_1002CF474(v18, 0xD000000000000013, 0x8000000100331880, v19);
  v97 = v96[0];
  v20 = Int._bridgeToObjectiveC()().super.super.isa;
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v96[0] = v97;
  sub_1002CF474(v20, 0xD000000000000018, 0x80000001003318A0, v21);
  v97 = v96[0];
  sub_1002476C4(a2);
  v22 = String._bridgeToObjectiveC()();

  v23 = swift_isUniquelyReferenced_nonNull_native();
  v96[0] = v97;
  sub_1002CF474(v22, 0x6E6F73616572, 0xE600000000000000, v23);
  v24 = 0;
  v97 = v96[0];
  if ((*(v4 + qword_1003E3CE8 + 8) & 1) == 0)
  {
    v24 = Int._bridgeToObjectiveC()().super.super.isa;
  }

  sub_1001BE0FC(v24, 0xD000000000000012, 0x800000010032E7D0);
  if (*(v4 + qword_1003E3D08 + 8))
  {

    v25 = String._bridgeToObjectiveC()();
  }

  else
  {
    v25 = 0;
  }

  sub_1001BE0FC(v25, 0x646C6975426B7263, 0xEF6E6F6973726556);
  if (*(v4 + qword_1003E3D10 + 8))
  {
    v26 = 0;
  }

  else
  {
    v26 = UInt._bridgeToObjectiveC()().super.super.isa;
  }

  sub_1001BE0FC(v26, 0x6F43726961706572, 0xEB00000000746E75);
  v27 = qword_1003E3CE0;
  swift_beginAccess();
  v28 = *(v4 + v27);
  if (v28 >> 62)
  {
    v72 = _CocoaArrayWrapper.endIndex.getter();
    v28 = *(v4 + v27);
    if (v72 < 2)
    {
      goto LABEL_54;
    }
  }

  else if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
    goto LABEL_54;
  }

  if ((v28 & 0xC000000000000001) != 0)
  {
    goto LABEL_76;
  }

  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
    __break(1u);
    goto LABEL_78;
  }

  v29 = *(v28 + 40);
  while (1)
  {
    v92 = v29;
    sub_1000EBAD0();
    type metadata accessor for CKError(0);
    v30 = v29;
    v31 = swift_dynamicCast();
    HIDWORD(v77) = a1;
    if (v31)
    {
      v32 = v95;
      if (related decl 'e' for CKErrorCode.partialErrorsByItemID.getter())
      {
        v33 = sub_10030B6CC();

        if (v33)
        {
          swift_getErrorValue();
          sub_1002DEA80(v78, v79);

          goto LABEL_23;
        }
      }
    }

    v92 = v30;
    sub_1000CB64C();
    v34 = v30;
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
    }

    else
    {
      swift_allocError();
      *v35 = v34;
    }

LABEL_23:
    v3 = "init(eventName:initialData:)";
    swift_getErrorValue();
    sub_10025648C(v88, v89);
    v36 = _convertErrorToNSError(_:)();

    [v36 code];
    v37 = Int._bridgeToObjectiveC()().super.super.isa;
    swift_beginAccess();
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v95 = v97;
    sub_1002CF474(v37, 0xD000000000000014, 0x8000000100331950, v38);
    v97 = v95;
    swift_endAccess();
    v39 = [v36 domain];
    if (!v39)
    {
      goto LABEL_86;
    }

    v40 = v39;
    swift_beginAccess();
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v95 = v97;
    sub_1002CF474(v40, 0xD000000000000016, 0x8000000100331970, v41);
    v97 = v95;
    swift_endAccess();

    v28 = *(v4 + v27);
    a1 = HIDWORD(v77);
    if (v28 >> 62)
    {
LABEL_78:
      v73 = _CocoaArrayWrapper.endIndex.getter();
      v28 = *(v4 + v27);
      if (v73 < 3)
      {
        goto LABEL_54;
      }
    }

    else if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3)
    {
      goto LABEL_54;
    }

    if ((v28 & 0xC000000000000001) != 0)
    {

      v74 = specialized _ArrayBuffer._getElementSlowPath(_:)();

      v42 = v74;
    }

    else
    {
      if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        __break(1u);
        goto LABEL_82;
      }

      v42 = *(v28 + 48);
    }

    v92 = v42;
    v43 = v42;
    if (swift_dynamicCast())
    {
      v44 = v95;
      if (related decl 'e' for CKErrorCode.partialErrorsByItemID.getter())
      {
        v45 = sub_10030B6CC();

        if (v45)
        {
          swift_getErrorValue();
          sub_1002DEA80(v80, v81);

          goto LABEL_37;
        }
      }
    }

    v92 = v43;
    sub_1000CB64C();
    v46 = v43;
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
    }

    else
    {
      swift_allocError();
      *v47 = v46;
    }

LABEL_37:
    swift_getErrorValue();
    sub_10025648C(v86, v87);
    v48 = _convertErrorToNSError(_:)();

    [v48 code];
    v49 = Int._bridgeToObjectiveC()().super.super.isa;
    swift_beginAccess();
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v95 = v97;
    sub_1002CF474(v49, 0xD000000000000014, 0x8000000100331990, v50);
    v97 = v95;
    swift_endAccess();
    v51 = [v48 domain];
    if (!v51)
    {
      goto LABEL_87;
    }

    v52 = v51;
    swift_beginAccess();
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v95 = v97;
    v3 = 0xD000000000000014;
    sub_1002CF474(v52, 0xD000000000000016, 0x80000001003319B0, v53);
    v97 = v95;
    swift_endAccess();

    v28 = *(v4 + v27);
    a1 = HIDWORD(v77);
    if (!(v28 >> 62))
    {
      if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) < 4)
      {
        goto LABEL_54;
      }

      goto LABEL_40;
    }

LABEL_82:
    v75 = _CocoaArrayWrapper.endIndex.getter();
    v28 = *(v4 + v27);
    if (v75 < 4)
    {
      goto LABEL_54;
    }

LABEL_40:
    if ((v28 & 0xC000000000000001) == 0)
    {
      break;
    }

    v76 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v54 = v76;
LABEL_43:
    v92 = v54;
    v55 = v54;
    if (!swift_dynamicCast())
    {
      goto LABEL_49;
    }

    v56 = v95;
    if (!related decl 'e' for CKErrorCode.partialErrorsByItemID.getter())
    {

      goto LABEL_49;
    }

    v57 = sub_10030B6CC();

    if (!v57)
    {

      a1 = HIDWORD(v77);
LABEL_49:
      v92 = v55;
      sub_1000CB64C();
      v58 = v55;
      if (_getErrorEmbeddedNSError<A>(_:)())
      {
      }

      else
      {
        swift_allocError();
        *v59 = v58;
      }

      goto LABEL_52;
    }

    swift_getErrorValue();
    sub_1002DEA80(v82, v83);

    a1 = HIDWORD(v77);
LABEL_52:
    swift_getErrorValue();
    sub_10025648C(v84, v85);
    v60 = _convertErrorToNSError(_:)();

    [v60 code];
    v61 = Int._bridgeToObjectiveC()().super.super.isa;
    swift_beginAccess();
    v62 = swift_isUniquelyReferenced_nonNull_native();
    v95 = v97;
    sub_1002CF474(v61, 0xD000000000000014, 0x80000001003319D0, v62);
    v97 = v95;
    swift_endAccess();
    v63 = [v60 domain];
    if (!v63)
    {
      goto LABEL_88;
    }

    v64 = v63;
    swift_beginAccess();
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v95 = v97;
    sub_1002CF474(v64, (v3 + 2), 0x80000001003319F0, v65);
    v97 = v95;
    swift_endAccess();

    v28 = *(v4 + v27);
LABEL_54:
    if (v28 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_71:
        v71 = 0;
        goto LABEL_72;
      }
    }

    else if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_71;
    }

    if ((v28 & 0xC000000000000001) != 0)
    {

      v66 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_59:
      v92 = v66;
      sub_1000EBAD0();
      type metadata accessor for CKError(0);
      v67 = v66;
      if (swift_dynamicCast())
      {
        v68 = v95;
        if (related decl 'e' for CKErrorCode.partialErrorsByItemID.getter())
        {
          v69 = sub_10030B6CC();

          if (v69)
          {
            swift_getErrorValue();
            sub_1002DEA80(v90, v91);

            goto LABEL_65;
          }
        }
      }

      v92 = v67;
      sub_1000CB64C();
      v68 = v67;
      if (_getErrorEmbeddedNSError<A>(_:)())
      {
LABEL_65:
      }

      else
      {
        swift_allocError();
        *v70 = v68;
      }

      swift_getErrorValue();
      sub_10025648C(v93, v94);
      v71 = _convertErrorToNSError(_:)();

LABEL_72:
      swift_beginAccess();
      dispatch thunk of AAFTimedAnalyticsEvent.completeEvent(withSuccess:error:additionalData:)();

      return;
    }

    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v66 = *(v28 + 32);
      goto LABEL_59;
    }

    __break(1u);
LABEL_76:

    v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
  {
    v54 = *(v28 + 56);
    goto LABEL_43;
  }

  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
}

uint64_t sub_1002487B8()
{

  v1 = qword_1003E3D28;
  v2 = sub_100005814(&qword_1003DB628, &qword_10033FAB0);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_100248878()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustodianHealthCheckAnalyticsEvent(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002488B0(uint64_t a1)
{

  v2 = qword_1003E3D28;
  v3 = sub_100005814(&qword_1003DB628, &qword_10033FAB0);
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

void sub_100248974(uint64_t a1)
{
  if (!qword_1003DB280)
  {
    sub_100008CBC(&unk_1003DA880, &unk_10033F5F0);
    v1 = type metadata accessor for Dependency();
    if (!v2)
    {
      atomic_store(v1, &qword_1003DB280);
    }
  }
}

uint64_t type metadata accessor for CustodianInvitationActionAnalyticsEvent(uint64_t a1)
{
  result = qword_1003E3DA0;
  if (!qword_1003E3DA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100248AF4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000656461;
  v3 = 0x7267707532617368;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x684368746C616568;
    }

    else
    {
      v5 = 0x7267694D74736F70;
    }

    if (v4 == 2)
    {
      v6 = 0xEB000000006B6365;
    }

    else
    {
      v6 = 0xED00006E6F697461;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6961706552706463;
    }

    else
    {
      v5 = 0x7267707532617368;
    }

    if (v4)
    {
      v6 = 0xE900000000000072;
    }

    else
    {
      v6 = 0xEB00000000656461;
    }
  }

  v7 = 0x684368746C616568;
  v8 = 0xEB000000006B6365;
  if (a2 != 2)
  {
    v7 = 0x7267694D74736F70;
    v8 = 0xED00006E6F697461;
  }

  if (a2)
  {
    v3 = 0x6961706552706463;
    v2 = 0xE900000000000072;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_100248C6C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x614D747065636361;
    }

    else
    {
      v3 = 0x7541747065636361;
    }

    if (v2)
    {
      v4 = 0xEC0000006C61756ELL;
    }

    else
    {
      v4 = 0xEA00000000006F74;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x800000010032C3C0;
    v3 = 0xD000000000000011;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD000000000000013;
    }

    else
    {
      v3 = 0xD000000000000012;
    }

    if (v2 == 3)
    {
      v4 = 0x800000010032C3E0;
    }

    else
    {
      v4 = 0x800000010032C400;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x614D747065636361;
    }

    else
    {
      v9 = 0x7541747065636361;
    }

    if (a2)
    {
      v8 = 0xEC0000006C61756ELL;
    }

    else
    {
      v8 = 0xEA00000000006F74;
    }

    if (v3 != v9)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v5 = 0x800000010032C3E0;
    v6 = 0xD000000000000013;
    if (a2 != 3)
    {
      v6 = 0xD000000000000012;
      v5 = 0x800000010032C400;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000011;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0x800000010032C3C0;
    }

    else
    {
      v8 = v5;
    }

    if (v3 != v7)
    {
      goto LABEL_36;
    }
  }

  if (v4 != v8)
  {
LABEL_36:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_37;
  }

  v10 = 1;
LABEL_37:

  return v10 & 1;
}

uint64_t sub_100248DF8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006F74;
  v3 = 0xD000000000000010;
  v4 = a1;
  if (a1 <= 3u)
  {
    v13 = 0x800000010032C3C0;
    v14 = 0xD000000000000013;
    if (a1 == 2)
    {
      v14 = 0xD000000000000011;
    }

    else
    {
      v13 = 0x800000010032C3E0;
    }

    v15 = 0x614D747065636361;
    v16 = 0xEC0000006C61756ELL;
    if (!a1)
    {
      v15 = 0x7541747065636361;
      v16 = 0xEA00000000006F74;
    }

    if (a1 <= 1u)
    {
      v11 = v15;
    }

    else
    {
      v11 = v14;
    }

    if (v4 <= 1)
    {
      v12 = v16;
    }

    else
    {
      v12 = v13;
    }
  }

  else
  {
    v5 = 0x45676E69646E6570;
    v6 = 0xEC000000726F7272;
    v7 = 0x800000010032C440;
    if (a1 == 7)
    {
      v8 = 0xD000000000000011;
    }

    else
    {
      v8 = 0xD000000000000010;
    }

    if (a1 != 7)
    {
      v7 = 0x800000010032C460;
    }

    if (a1 != 6)
    {
      v5 = v8;
      v6 = v7;
    }

    v9 = 0x800000010032C400;
    v10 = 0xD000000000000012;
    if (a1 != 4)
    {
      v10 = 0xD000000000000010;
      v9 = 0x800000010032C420;
    }

    if (a1 <= 5u)
    {
      v11 = v10;
    }

    else
    {
      v11 = v5;
    }

    if (v4 <= 5)
    {
      v12 = v9;
    }

    else
    {
      v12 = v6;
    }
  }

  if (a2 > 3u)
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v2 = 0x800000010032C400;
        v3 = 0xD000000000000012;
        goto LABEL_47;
      }

      v18 = "pendingNonFamily";
    }

    else
    {
      if (a2 == 6)
      {
        v3 = 0x45676E69646E6570;
        v2 = 0xEC000000726F7272;
        goto LABEL_47;
      }

      if (a2 == 7)
      {
        v17 = "pendingIneligible";
LABEL_38:
        v2 = (v17 - 32) | 0x8000000000000000;
        v3 = 0xD000000000000011;
        goto LABEL_47;
      }

      v18 = "pendingNoManatee";
    }

    v2 = (v18 - 32) | 0x8000000000000000;
    goto LABEL_47;
  }

  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      v2 = 0x800000010032C3E0;
      v3 = 0xD000000000000013;
      goto LABEL_47;
    }

    v17 = "declineIneligible";
    goto LABEL_38;
  }

  if (a2)
  {
    v3 = 0x614D747065636361;
    v2 = 0xEC0000006C61756ELL;
  }

  else
  {
    v3 = 0x7541747065636361;
  }

LABEL_47:
  if (v11 == v3 && v12 == v2)
  {
    v19 = 1;
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v19 & 1;
}

uint64_t sub_100249078(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006C61;
  v3 = 0xEA00000000006E69;
  v4 = a1;
  v5 = 0x6D6F43656B617073;
  v6 = 0xED00006574656C70;
  if (a1 != 4)
  {
    v5 = 0x727245656B617073;
    v6 = 0xEA0000000000726FLL;
  }

  if (a1 == 3)
  {
    v7 = 0x6E6946656B617073;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v6 = 0xEA00000000006C61;
  }

  v8 = 0x800000010032C1A0;
  v9 = 0xD000000000000015;
  if (a1 != 1)
  {
    v9 = 0xD000000000000011;
    v8 = 0x800000010032C1C0;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x676542656B617073;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v7;
  }

  if (v4 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      if (v10 != 0x6E6946656B617073)
      {
        goto LABEL_37;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xED00006574656C70;
      if (v10 != 0x6D6F43656B617073)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v2 = 0xEA0000000000726FLL;
      if (v10 != 0x727245656B617073)
      {
LABEL_37:
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_38;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x800000010032C1A0;
      if (v10 != 0xD000000000000015)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v2 = 0x800000010032C1C0;
      if (v10 != 0xD000000000000011)
      {
        goto LABEL_37;
      }
    }
  }

  else
  {
    v2 = 0xEA00000000006E69;
    if (v10 != 0x676542656B617073)
    {
      goto LABEL_37;
    }
  }

  if (v11 != v2)
  {
    goto LABEL_37;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_10024927C(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

unint64_t sub_1002493F0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x7541747065636361;
    v6 = 0xD000000000000013;
    if (a1 == 2)
    {
      v6 = 0xD000000000000011;
    }

    if (a1)
    {
      v5 = 0x614D747065636361;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x45676E69646E6570;
    v2 = 0xD000000000000011;
    if (a1 != 7)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000012;
    if (a1 != 4)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int sub_10024953C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10024927C(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_10024958C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_10024927C(v4, v2);
  return Hasher._finalize()();
}

unint64_t sub_1002495D0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100249724(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100249600@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1002493F0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_10024966C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustodianInvitationActionAnalyticsEvent(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1002496D0()
{
  result = qword_1003E3DF0;
  if (!qword_1003E3DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E3DF0);
  }

  return result;
}

unint64_t sub_100249724(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1003A39E0, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t type metadata accessor for CustodianMigrationAnalyticsEvent(uint64_t a1)
{
  result = qword_1003E3DF8;
  if (!qword_1003E3DF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10024982C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustodianMigrationAnalyticsEvent(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CustodianOwnerRecoverabilityHealthCheckAnalyticsEvent(uint64_t a1)
{
  result = qword_1003E3E58;
  if (!qword_1003E3E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002498BC(uint64_t a1)
{
  sub_100248974(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void *sub_100249960(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = v1 + 64;
    result = _HashTable.startBucket.getter();
    v5 = result;
    v6 = 0;
    v7 = *(v1 + 36);
    v18 = v1 + 72;
    v19 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v20 = v6;
      v10 = *(*(v1 + 56) + 8 * v5);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v1 = v19;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v8 = 1 << *(v19 + 32);
      if (v5 >= v8)
      {
        goto LABEL_23;
      }

      v11 = *(v4 + 8 * v9);
      if ((v11 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (v7 != *(v19 + 36))
      {
        goto LABEL_25;
      }

      v12 = v11 & (-2 << (v5 & 0x3F));
      if (v12)
      {
        v8 = __clz(__rbit64(v12)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v13 = v9 << 6;
        v14 = v9 + 1;
        v15 = (v18 + 8 * v9);
        while (v14 < (v8 + 63) >> 6)
        {
          v17 = *v15++;
          v16 = v17;
          v13 += 64;
          ++v14;
          if (v17)
          {
            result = sub_10024ABAC(v5, v7, 0);
            v8 = __clz(__rbit64(v16)) + v13;
            goto LABEL_4;
          }
        }

        result = sub_10024ABAC(v5, v7, 0);
      }

LABEL_4:
      v6 = v20 + 1;
      v5 = v8;
      if (v20 + 1 == v2)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_21:
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

uint64_t sub_100249B74(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = sub_100005814(&qword_1003DB628, &qword_10033FAB0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v42 - v9;
  result = AAUnderTest.getter();
  if ((result & 1) == 0)
  {
    v12 = swift_allocObject();
    v13 = *(v8 + 16);
    v50 = v3;
    v44 = qword_1003E3E50;
    v45 = v13;
    v46 = v8 + 16;
    v13(v10, &v3[qword_1003E3E50], v7);
    Dependency.wrappedValue.getter();
    v43 = *(v8 + 8);
    v43(v10, v7);
    sub_1000080F8(v53, v54);
    v42[1] = a2;
    v47 = type metadata accessor for DaemonAnalyticsAccountModel(0);
    v14 = sub_100246DAC();
    sub_1002D245C(v14);
    v16 = v15;

    v48 = v12;
    *(v12 + 16) = v16;
    v17 = (v12 + 16);
    sub_10000839C(v53);
    v18 = String._bridgeToObjectiveC()();
    v19 = *(v12 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53[0] = v19;
    v51 = a3;
    *(v12 + 16) = 0x8000000000000000;
    sub_1002CF474(v18, 0x6E6F6973726576, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
    v21 = v53[0];
    *(v12 + 16) = v53[0];
    v49 = a1;
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v53[0] = v21;
    *(v12 + 16) = 0x8000000000000000;
    sub_1002CF474(isa, 0xD000000000000019, 0x8000000100331CC0, v23);
    v24 = v53[0];
    *(v12 + 16) = v53[0];
    v25 = Int._bridgeToObjectiveC()().super.super.isa;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v53[0] = v24;
    *(v12 + 16) = 0x8000000000000000;
    v27 = v51;
    sub_1002CF474(v25, 0x6C6544746E756F63, 0xEA00000000006174, v26);
    *v17 = v53[0];
    if (v27)
    {
      v28 = v27;
      v29 = [v28 userInfo];
      v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (*(v30 + 16))
      {
        v33 = sub_1003084DC(v31, v32);
        v35 = v34;

        if (v35)
        {
          sub_10000DB1C(*(v30 + 56) + 32 * v33, v53);

          sub_100005814(&qword_1003E3EA8, qword_1003470A0);
          if (swift_dynamicCast())
          {
            v27 = v51;
            if (*(v52 + 16))
            {
              v36 = sub_100249960(v52);

              sub_10024A4AC(v36, v17);
            }
          }

          else
          {

            v27 = v51;
          }

          goto LABEL_12;
        }

        v27 = v51;
      }

      else
      {
      }
    }

LABEL_12:
    v37 = v50;
    v45(v10, &v50[v44], v7);
    Dependency.wrappedValue.getter();
    v43(v10, v7);
    sub_1000080F8(v53, v54);
    v38 = swift_allocObject();
    v39 = v49;
    v38[2] = v48;
    v38[3] = v39;
    v38[4] = v37;
    v38[5] = v27;
    v40 = v27;

    v41 = v37;
    sub_100246E28(sub_10024A4A0, v38);

    sub_10000839C(v53);
  }

  return result;
}

void sub_10024A058(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(a2 + 16);
  *(a2 + 16) = 0x8000000000000000;
  sub_1002CF474(isa, 0x766F636552736168, 0xEE0079654B797265, isUniquelyReferenced_nonNull_native);
  *(a2 + 16) = v18;
  swift_endAccess();
  if (a5)
  {
    sub_1000EBAD0();
    type metadata accessor for CKError(0);
    v9 = a5;
    if (swift_dynamicCast())
    {
      v10 = v18;
      if (related decl 'e' for CKErrorCode.partialErrorsByItemID.getter())
      {
        v11 = sub_10030B6CC();

        if (v11)
        {
          swift_getErrorValue();
          sub_1002DEA80(v14, v15);

          goto LABEL_9;
        }
      }
    }

    sub_1000CB64C();
    v10 = v9;
    if (!_getErrorEmbeddedNSError<A>(_:)())
    {
      swift_allocError();
      *v13 = v10;
      goto LABEL_11;
    }

LABEL_9:

LABEL_11:
    swift_getErrorValue();
    sub_10025648C(v16, v17);
    v12 = _convertErrorToNSError(_:)();

    goto LABEL_12;
  }

  v12 = 0;
LABEL_12:
  swift_beginAccess();

  dispatch thunk of AAFTimedAnalyticsEvent.completeEvent(withSuccess:error:additionalData:)();
}

uint64_t sub_10024A2CC()
{

  v1 = qword_1003E3E50;
  v2 = sub_100005814(&qword_1003DB628, &qword_10033FAB0);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_10024A354()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustodianOwnerRecoverabilityHealthCheckAnalyticsEvent(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10024A38C(uint64_t a1)
{

  v2 = qword_1003E3E50;
  v3 = sub_100005814(&qword_1003DB628, &qword_10033FAB0);
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

uint64_t sub_10024A420()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10024A458()
{

  return _swift_deallocObject(v0, 48);
}

void sub_10024A4AC(unint64_t a1, uint64_t *a2)
{
  v4 = a1 >> 62;
  if (!(a1 >> 62))
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

LABEL_3:
    v40 = a1 & 0xC000000000000001;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_53;
      }

      v5 = *(a1 + 32);
    }

    v6 = v5;
    sub_1000EBAD0();
    type metadata accessor for CKError(0);
    v7 = v6;
    if (swift_dynamicCast())
    {
      if (related decl 'e' for CKErrorCode.partialErrorsByItemID.getter())
      {
        v8 = sub_10030B6CC();

        if (v8)
        {
          swift_getErrorValue();
          sub_1002DEA80(v41, v42);

LABEL_14:
          swift_getErrorValue();
          sub_10025648C(v51, v52);
          v11 = _convertErrorToNSError(_:)();

          [v11 code];
          isa = Int._bridgeToObjectiveC()().super.super.isa;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v54 = *a2;
          sub_1002CF474(isa, 0xD000000000000014, 0x8000000100331950, isUniquelyReferenced_nonNull_native);
          *a2 = v54;
          v14 = [v11 domain];
          if (!v14)
          {
LABEL_55:
            __break(1u);
            goto LABEL_56;
          }

          v15 = v14;
          v16 = swift_isUniquelyReferenced_nonNull_native();
          v55 = *a2;
          sub_1002CF474(v15, 0xD000000000000016, 0x8000000100331970, v16);
          *a2 = v55;
          if (v4)
          {
            v17 = _CocoaArrayWrapper.endIndex.getter();
            if (v17 < 2)
            {
              goto LABEL_17;
            }
          }

          else
          {
            v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v17 < 2)
            {
LABEL_17:

              return;
            }
          }

          if (v40)
          {
            v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            goto LABEL_23;
          }

          if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
          {
            v18 = *(a1 + 40);
LABEL_23:
            v19 = v18;
            if (swift_dynamicCast())
            {
              if (related decl 'e' for CKErrorCode.partialErrorsByItemID.getter())
              {
                v20 = sub_10030B6CC();

                if (v20)
                {
                  swift_getErrorValue();
                  sub_1002DEA80(v43, v44);

LABEL_31:
                  swift_getErrorValue();
                  sub_10025648C(v49, v50);
                  v23 = _convertErrorToNSError(_:)();

                  [v23 code];
                  v24 = Int._bridgeToObjectiveC()().super.super.isa;
                  v25 = swift_isUniquelyReferenced_nonNull_native();
                  v56 = *a2;
                  sub_1002CF474(v24, 0xD000000000000014, 0x8000000100331990, v25);
                  *a2 = v56;
                  v26 = [v23 domain];
                  if (!v26)
                  {
LABEL_56:
                    __break(1u);
                    goto LABEL_57;
                  }

                  v27 = v26;
                  v28 = swift_isUniquelyReferenced_nonNull_native();
                  v57 = *a2;
                  sub_1002CF474(v27, 0xD000000000000016, 0x80000001003319B0, v28);
                  *a2 = v57;
                  if (v17 == 2)
                  {

                    return;
                  }

                  if (v40)
                  {
                    v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    goto LABEL_38;
                  }

                  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
                  {
                    v29 = *(a1 + 48);
LABEL_38:
                    v30 = v29;
                    if (swift_dynamicCast())
                    {
                      if (related decl 'e' for CKErrorCode.partialErrorsByItemID.getter())
                      {
                        v31 = sub_10030B6CC();

                        if (v31)
                        {
                          swift_getErrorValue();
                          sub_1002DEA80(v45, v46);

                          goto LABEL_46;
                        }
                      }
                    }

                    sub_1000CB64C();
                    v32 = v30;
                    if (_getErrorEmbeddedNSError<A>(_:)())
                    {
                    }

                    else
                    {
                      swift_allocError();
                      *v33 = v32;
                    }

LABEL_46:
                    swift_getErrorValue();
                    sub_10025648C(v47, v48);
                    v34 = _convertErrorToNSError(_:)();

                    [v34 code];
                    v35 = Int._bridgeToObjectiveC()().super.super.isa;
                    v36 = swift_isUniquelyReferenced_nonNull_native();
                    v58 = *a2;
                    sub_1002CF474(v35, 0xD000000000000014, 0x80000001003319D0, v36);
                    *a2 = v58;
                    v37 = [v34 domain];
                    if (v37)
                    {
                      v38 = v37;
                      v39 = swift_isUniquelyReferenced_nonNull_native();
                      v59 = *a2;
                      sub_1002CF474(v38, 0xD000000000000016, 0x80000001003319F0, v39);

                      *a2 = v59;
                      return;
                    }

LABEL_57:
                    __break(1u);
                    return;
                  }

                  goto LABEL_54;
                }
              }
            }

            sub_1000CB64C();
            v21 = v19;
            if (_getErrorEmbeddedNSError<A>(_:)())
            {
            }

            else
            {
              swift_allocError();
              *v22 = v21;
            }

            goto LABEL_31;
          }

LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }
      }
    }

    sub_1000CB64C();
    v9 = v7;
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
    }

    else
    {
      swift_allocError();
      *v10 = v9;
    }

    goto LABEL_14;
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_3;
  }
}

uint64_t sub_10024ABAC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t type metadata accessor for CustodianPreflightEvent(uint64_t a1)
{
  result = qword_1003E3EF0;
  if (!qword_1003E3EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10024AC04(uint64_t a1)
{
  sub_100248974(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_10024ACD0(uint64_t a1, char a2)
{
  *(v2 + qword_1003E3EB0) = _swiftEmptyArrayStorage;
  *(v2 + qword_1003E3EC0) = 0;
  v5 = (v2 + qword_1003E3EC8);
  *v5 = 0;
  v5[1] = 0;
  v6 = v2 + qword_1003E3ED0;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = (v2 + qword_1003E3ED8);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v2 + qword_1003E3EE0);
  *v8 = 0;
  v8[1] = 0;
  sub_100005814(&unk_1003DA880, &unk_10033F5F0);
  Dependency.init(dependencyId:config:)();
  v9 = v2 + qword_1003E3EB8;
  *v9 = a1;
  *(v9 + 8) = a2 & 1;
  sub_100309C2C(_swiftEmptyArrayStorage);

  return AAFTimedAnalyticsEvent.init(eventName:initialData:)();
}

void sub_10024ADEC(int a1)
{
  v2 = v1;
  v4 = sub_100005814(&qword_1003DB628, &qword_10033FAB0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v73 - v6;
  if (AAUnderTest.getter())
  {
    return;
  }

  v8 = 0xD000000000000014;
  (*(v5 + 16))(v7, v2 + qword_1003E3EE8, v4);
  Dependency.wrappedValue.getter();
  (*(v5 + 8))(v7, v4);
  sub_1000080F8(v92, v92[3]);
  type metadata accessor for DaemonAnalyticsAccountModel(0);
  v9 = sub_100246DAC();
  sub_1002D245C(v9);
  v11 = v10;

  v93 = v11;
  sub_10000839C(v92);
  v12 = String._bridgeToObjectiveC()();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v92[0] = v93;
  sub_1002CF474(v12, 0x6E6F6973726576, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  v93 = v92[0];
  v14 = String._bridgeToObjectiveC()();

  v15 = swift_isUniquelyReferenced_nonNull_native();
  v92[0] = v93;
  sub_1002CF474(v14, 0x6E6F73616572, 0xE600000000000000, v15);
  v93 = v92[0];
  if (*(v2 + qword_1003E3EB8 + 8))
  {
    isa = 0;
  }

  else
  {
    isa = Int._bridgeToObjectiveC()().super.super.isa;
  }

  sub_1001BE0FC(isa, 0xD000000000000012, 0x800000010032E7D0);
  v17 = Bool._bridgeToObjectiveC()().super.super.isa;
  v18 = swift_isUniquelyReferenced_nonNull_native();
  v92[0] = v93;
  sub_1002CF474(v17, 0x7564656863537369, 0xEB0000000064656CLL, v18);
  v93 = v92[0];
  v19 = Bool._bridgeToObjectiveC()().super.super.isa;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v92[0] = v93;
  sub_1002CF474(v19, 0x6961706552646964, 0xE900000000000072, v20);
  v93 = v92[0];
  if (*(v2 + qword_1003E3EC8 + 8))
  {

    v21 = String._bridgeToObjectiveC()();
  }

  else
  {
    v21 = 0;
  }

  sub_1001BE0FC(v21, 0x646C6975426B7263, 0xEF6E6F6973726556);
  if (*(v2 + qword_1003E3ED0 + 8))
  {
    v22 = 0;
  }

  else
  {
    v22 = UInt._bridgeToObjectiveC()().super.super.isa;
  }

  sub_1001BE0FC(v22, 0x6F43726961706572, 0xEB00000000746E75);
  v23 = qword_1003E3EB0;
  swift_beginAccess();
  v24 = *(v2 + v23);
  if (v24 >> 62)
  {
    v68 = _CocoaArrayWrapper.endIndex.getter();
    v24 = *(v2 + v23);
    if (v68 < 2)
    {
      goto LABEL_55;
    }
  }

  else if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
    goto LABEL_55;
  }

  if ((v24 & 0xC000000000000001) != 0)
  {
    goto LABEL_77;
  }

  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
    __break(1u);
    goto LABEL_79;
  }

  v25 = *(v24 + 40);
  while (1)
  {
    v88 = v25;
    sub_1000EBAD0();
    type metadata accessor for CKError(0);
    v26 = v25;
    v27 = swift_dynamicCast();
    HIDWORD(v73) = a1;
    if (v27)
    {
      v28 = v91;
      if (related decl 'e' for CKErrorCode.partialErrorsByItemID.getter())
      {
        v29 = sub_10030B6CC();

        if (v29)
        {
          swift_getErrorValue();
          sub_1002DEA80(v74, v75);

          goto LABEL_24;
        }
      }
    }

    v88 = v26;
    sub_1000CB64C();
    v30 = v26;
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
    }

    else
    {
      swift_allocError();
      *v31 = v30;
    }

LABEL_24:
    v8 = "init(eventName:initialData:)";
    swift_getErrorValue();
    sub_10025648C(v84, v85);
    v32 = _convertErrorToNSError(_:)();

    [v32 code];
    v33 = Int._bridgeToObjectiveC()().super.super.isa;
    swift_beginAccess();
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v91 = v93;
    sub_1002CF474(v33, 0xD000000000000014, 0x8000000100331950, v34);
    v93 = v91;
    swift_endAccess();
    v35 = [v32 domain];
    if (!v35)
    {
      goto LABEL_87;
    }

    v36 = v35;
    swift_beginAccess();
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v91 = v93;
    sub_1002CF474(v36, 0xD000000000000016, 0x8000000100331970, v37);
    v93 = v91;
    swift_endAccess();

    v24 = *(v2 + v23);
    a1 = HIDWORD(v73);
    if (v24 >> 62)
    {
LABEL_79:
      v69 = _CocoaArrayWrapper.endIndex.getter();
      v24 = *(v2 + v23);
      if (v69 < 3)
      {
        goto LABEL_55;
      }
    }

    else if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3)
    {
      goto LABEL_55;
    }

    if ((v24 & 0xC000000000000001) != 0)
    {

      v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();

      v38 = v70;
    }

    else
    {
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        __break(1u);
        goto LABEL_83;
      }

      v38 = *(v24 + 48);
    }

    v88 = v38;
    v39 = v38;
    if (swift_dynamicCast())
    {
      v40 = v91;
      if (related decl 'e' for CKErrorCode.partialErrorsByItemID.getter())
      {
        v41 = sub_10030B6CC();

        if (v41)
        {
          swift_getErrorValue();
          sub_1002DEA80(v76, v77);

          goto LABEL_38;
        }
      }
    }

    v88 = v39;
    sub_1000CB64C();
    v42 = v39;
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
    }

    else
    {
      swift_allocError();
      *v43 = v42;
    }

LABEL_38:
    swift_getErrorValue();
    sub_10025648C(v82, v83);
    v44 = _convertErrorToNSError(_:)();

    [v44 code];
    v45 = Int._bridgeToObjectiveC()().super.super.isa;
    swift_beginAccess();
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v91 = v93;
    sub_1002CF474(v45, 0xD000000000000014, 0x8000000100331990, v46);
    v93 = v91;
    swift_endAccess();
    v47 = [v44 domain];
    if (!v47)
    {
      goto LABEL_88;
    }

    v48 = v47;
    swift_beginAccess();
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v91 = v93;
    v8 = 0xD000000000000014;
    sub_1002CF474(v48, 0xD000000000000016, 0x80000001003319B0, v49);
    v93 = v91;
    swift_endAccess();

    v24 = *(v2 + v23);
    a1 = HIDWORD(v73);
    if (!(v24 >> 62))
    {
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) < 4)
      {
        goto LABEL_55;
      }

      goto LABEL_41;
    }

LABEL_83:
    v71 = _CocoaArrayWrapper.endIndex.getter();
    v24 = *(v2 + v23);
    if (v71 < 4)
    {
      goto LABEL_55;
    }

LABEL_41:
    if ((v24 & 0xC000000000000001) == 0)
    {
      break;
    }

    v72 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v50 = v72;
LABEL_44:
    v88 = v50;
    v51 = v50;
    if (!swift_dynamicCast())
    {
      goto LABEL_50;
    }

    v52 = v91;
    if (!related decl 'e' for CKErrorCode.partialErrorsByItemID.getter())
    {

      goto LABEL_50;
    }

    v53 = sub_10030B6CC();

    if (!v53)
    {

      a1 = HIDWORD(v73);
LABEL_50:
      v88 = v51;
      sub_1000CB64C();
      v54 = v51;
      if (_getErrorEmbeddedNSError<A>(_:)())
      {
      }

      else
      {
        swift_allocError();
        *v55 = v54;
      }

      goto LABEL_53;
    }

    swift_getErrorValue();
    sub_1002DEA80(v78, v79);

    a1 = HIDWORD(v73);
LABEL_53:
    swift_getErrorValue();
    sub_10025648C(v80, v81);
    v56 = _convertErrorToNSError(_:)();

    [v56 code];
    v57 = Int._bridgeToObjectiveC()().super.super.isa;
    swift_beginAccess();
    v58 = swift_isUniquelyReferenced_nonNull_native();
    v91 = v93;
    sub_1002CF474(v57, 0xD000000000000014, 0x80000001003319D0, v58);
    v93 = v91;
    swift_endAccess();
    v59 = [v56 domain];
    if (!v59)
    {
      goto LABEL_89;
    }

    v60 = v59;
    swift_beginAccess();
    v61 = swift_isUniquelyReferenced_nonNull_native();
    v91 = v93;
    sub_1002CF474(v60, (v8 + 2), 0x80000001003319F0, v61);
    v93 = v91;
    swift_endAccess();

    v24 = *(v2 + v23);
LABEL_55:
    if (v24 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_72:
        v67 = 0;
        goto LABEL_73;
      }
    }

    else if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_72;
    }

    if ((v24 & 0xC000000000000001) != 0)
    {

      v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_60:
      v88 = v62;
      sub_1000EBAD0();
      type metadata accessor for CKError(0);
      v63 = v62;
      if (swift_dynamicCast())
      {
        v64 = v91;
        if (related decl 'e' for CKErrorCode.partialErrorsByItemID.getter())
        {
          v65 = sub_10030B6CC();

          if (v65)
          {
            swift_getErrorValue();
            sub_1002DEA80(v86, v87);

            goto LABEL_66;
          }
        }
      }

      v88 = v63;
      sub_1000CB64C();
      v64 = v63;
      if (_getErrorEmbeddedNSError<A>(_:)())
      {
LABEL_66:
      }

      else
      {
        swift_allocError();
        *v66 = v64;
      }

      swift_getErrorValue();
      sub_10025648C(v89, v90);
      v67 = _convertErrorToNSError(_:)();

LABEL_73:
      swift_beginAccess();
      dispatch thunk of AAFTimedAnalyticsEvent.completeEvent(withSuccess:error:additionalData:)();

      return;
    }

    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v62 = *(v24 + 32);
      goto LABEL_60;
    }

    __break(1u);
LABEL_77:

    v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
  {
    v50 = *(v24 + 56);
    goto LABEL_44;
  }

  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
}

uint64_t sub_10024BCB8()
{

  v1 = qword_1003E3EE8;
  v2 = sub_100005814(&qword_1003DB628, &qword_10033FAB0);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_10024BD78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustodianPreflightEvent(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10024BDB0(uint64_t a1)
{

  v2 = qword_1003E3EE8;
  v3 = sub_100005814(&qword_1003DB628, &qword_10033FAB0);
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

uint64_t type metadata accessor for CustodianshipHealthCheckAnalyticsEvent(uint64_t a1)
{
  result = qword_1003E3F60;
  if (!qword_1003E3F60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10024BF28(uint64_t a1)
{
  sub_100248974(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_10024BFE4(uint64_t a1)
{
  v3 = v1;
  v5 = sub_100005814(&qword_1003DB628, &qword_10033FAB0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v72 - v7;
  if (AAUnderTest.getter())
  {
    return;
  }

  (*(v6 + 16))(v8, v3 + qword_1003E3F58, v5);
  Dependency.wrappedValue.getter();
  (*(v6 + 8))(v8, v5);
  sub_1000080F8(v81, v81[3]);
  type metadata accessor for DaemonAnalyticsAccountModel(0);
  v9 = sub_100246DAC();
  sub_1002D245C(v9);
  v11 = v10;

  v82 = v11;
  sub_10000839C(v81);
  v12 = String._bridgeToObjectiveC()();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v81[0] = v82;
  sub_1002CF474(v12, 0x6E6F6973726576, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  v82 = v81[0];
  v14 = String._bridgeToObjectiveC()();

  v15 = swift_isUniquelyReferenced_nonNull_native();
  v81[0] = v82;
  sub_1002CF474(v14, 0x6E6F73616572, 0xE600000000000000, v15);
  v82 = v81[0];
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v81[0] = v82;
  sub_1002CF474(isa, 0x6961706552736177, 0xEB00000000646572, v17);
  v82 = v81[0];
  v18 = qword_1003E3F40;
  swift_beginAccess();
  v19 = *(v3 + v18);
  if (v19 >> 62)
  {
    v67 = _CocoaArrayWrapper.endIndex.getter();
    v19 = *(v3 + v18);
    if (v67 < 2)
    {
      goto LABEL_48;
    }
  }

  else if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
    goto LABEL_48;
  }

  if ((v19 & 0xC000000000000001) != 0)
  {
    goto LABEL_70;
  }

  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
    __break(1u);
    goto LABEL_72;
  }

  v20 = *(v19 + 40);
  while (1)
  {
    v73 = v20;
    sub_1000EBAD0();
    type metadata accessor for CKError(0);
    v22 = v21;
    v23 = v20;
    v72[0] = v22;
    if (swift_dynamicCast())
    {
      v24 = v80;
      if (related decl 'e' for CKErrorCode.partialErrorsByItemID.getter())
      {
        v25 = a1;
        v26 = sub_10030B6CC();

        if (v26)
        {
          swift_getErrorValue();
          v2 = sub_1002DEA80(v72[2], v72[3]);

          goto LABEL_16;
        }

        a1 = v25;
      }

      else
      {
      }
    }

    v25 = a1;
    v73 = v23;
    sub_1000CB64C();
    v27 = v23;
    v28 = _getErrorEmbeddedNSError<A>(_:)();
    if (v28)
    {
      v2 = v28;
    }

    else
    {
      v2 = swift_allocError();
      *v29 = v27;
    }

LABEL_16:
    swift_getErrorValue();
    sub_10025648C(v74, v75);
    v30 = _convertErrorToNSError(_:)();

    [v30 code];
    v31 = Int._bridgeToObjectiveC()().super.super.isa;
    swift_beginAccess();
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v80 = v82;
    sub_1002CF474(v31, 0xD000000000000014, 0x8000000100331950, v32);
    v82 = v80;
    swift_endAccess();
    v33 = [v30 domain];
    if (!v33)
    {
      goto LABEL_80;
    }

    v34 = v33;
    swift_beginAccess();
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v80 = v82;
    sub_1002CF474(v34, 0xD000000000000016, 0x8000000100331970, v35);
    v82 = v80;
    swift_endAccess();

    v19 = *(v3 + v18);
    a1 = v25;
    if (v19 >> 62)
    {
LABEL_72:
      v68 = _CocoaArrayWrapper.endIndex.getter();
      v19 = *(v3 + v18);
      if (v68 < 3)
      {
        goto LABEL_48;
      }
    }

    else if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3)
    {
      goto LABEL_48;
    }

    if ((v19 & 0xC000000000000001) != 0)
    {

      v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();

      v36 = v69;
    }

    else
    {
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        __break(1u);
        goto LABEL_76;
      }

      v36 = *(v19 + 48);
    }

    v73 = v36;
    v37 = v36;
    if (swift_dynamicCast())
    {
      v38 = v80;
      if (related decl 'e' for CKErrorCode.partialErrorsByItemID.getter())
      {
        v39 = a1;
        v40 = sub_10030B6CC();

        if (v40)
        {
          swift_getErrorValue();
          sub_1002DEA80(v72[6], v72[7]);

          goto LABEL_31;
        }

        a1 = v39;
      }

      else
      {
      }
    }

    v39 = a1;
    v73 = v37;
    sub_1000CB64C();
    v41 = v37;
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
    }

    else
    {
      swift_allocError();
      *v42 = v41;
    }

LABEL_31:
    swift_getErrorValue();
    sub_10025648C(v72[18], v72[19]);
    v43 = _convertErrorToNSError(_:)();

    [v43 code];
    v44 = Int._bridgeToObjectiveC()().super.super.isa;
    swift_beginAccess();
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v80 = v82;
    sub_1002CF474(v44, 0xD000000000000014, 0x8000000100331990, v45);
    v82 = v80;
    swift_endAccess();
    v46 = [v43 domain];
    if (!v46)
    {
      goto LABEL_81;
    }

    v47 = v46;
    swift_beginAccess();
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v80 = v82;
    v2 = 0xD000000000000014;
    sub_1002CF474(v47, 0xD000000000000016, 0x80000001003319B0, v48);
    v82 = v80;
    swift_endAccess();

    v19 = *(v3 + v18);
    a1 = v39;
    if (!(v19 >> 62))
    {
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) < 4)
      {
        goto LABEL_48;
      }

      goto LABEL_34;
    }

LABEL_76:
    v70 = _CocoaArrayWrapper.endIndex.getter();
    v19 = *(v3 + v18);
    if (v70 < 4)
    {
      goto LABEL_48;
    }

LABEL_34:
    if ((v19 & 0xC000000000000001) == 0)
    {
      break;
    }

    v71 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v49 = v71;
LABEL_37:
    v73 = v49;
    v50 = v49;
    if (!swift_dynamicCast())
    {
      goto LABEL_43;
    }

    v51 = v80;
    if (!related decl 'e' for CKErrorCode.partialErrorsByItemID.getter())
    {

      goto LABEL_43;
    }

    v52 = sub_10030B6CC();

    if (!v52)
    {

      v2 = 0xD000000000000014;
LABEL_43:
      v73 = v50;
      sub_1000CB64C();
      v53 = v50;
      if (_getErrorEmbeddedNSError<A>(_:)())
      {
      }

      else
      {
        swift_allocError();
        *v54 = v53;
      }

      goto LABEL_46;
    }

    swift_getErrorValue();
    sub_1002DEA80(v72[10], v72[11]);

    v2 = 0xD000000000000014;
LABEL_46:
    swift_getErrorValue();
    sub_10025648C(v72[14], v72[15]);
    v55 = _convertErrorToNSError(_:)();

    [v55 code];
    v56 = Int._bridgeToObjectiveC()().super.super.isa;
    swift_beginAccess();
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v80 = v82;
    sub_1002CF474(v56, 0xD000000000000014, 0x80000001003319D0, v57);
    v82 = v80;
    swift_endAccess();
    v58 = [v55 domain];
    if (!v58)
    {
      goto LABEL_82;
    }

    v59 = v58;
    swift_beginAccess();
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v80 = v82;
    sub_1002CF474(v59, v2 + 2, 0x80000001003319F0, v60);
    swift_endAccess();

    v19 = *(v3 + v18);
LABEL_48:
    if (v19 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_65:
        v66 = 0;
        goto LABEL_66;
      }
    }

    else if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_65;
    }

    if ((v19 & 0xC000000000000001) != 0)
    {

      v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_53:
      v73 = v61;
      sub_1000EBAD0();
      type metadata accessor for CKError(0);
      v62 = v61;
      if (swift_dynamicCast())
      {
        v63 = v80;
        if (related decl 'e' for CKErrorCode.partialErrorsByItemID.getter())
        {
          v64 = sub_10030B6CC();

          if (v64)
          {
            swift_getErrorValue();
            sub_1002DEA80(v76, v77);

            goto LABEL_59;
          }
        }
      }

      v73 = v62;
      sub_1000CB64C();
      v63 = v62;
      if (_getErrorEmbeddedNSError<A>(_:)())
      {
LABEL_59:
      }

      else
      {
        swift_allocError();
        *v65 = v63;
      }

      swift_getErrorValue();
      sub_10025648C(v78, v79);
      v66 = _convertErrorToNSError(_:)();

LABEL_66:
      dispatch thunk of AAFTimedAnalyticsEvent.completeEvent(withSuccess:error:additionalData:)();

      return;
    }

    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v61 = *(v19 + 32);
      goto LABEL_53;
    }

    __break(1u);
LABEL_70:

    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
  {
    v49 = *(v19 + 56);
    goto LABEL_37;
  }

  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
}

uint64_t sub_10024CD58()
{

  v1 = qword_1003E3F58;
  v2 = sub_100005814(&qword_1003DB628, &qword_10033FAB0);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_10024CDF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustodianshipHealthCheckAnalyticsEvent(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10024CE28(uint64_t a1)
{

  v2 = qword_1003E3F58;
  v3 = sub_100005814(&qword_1003DB628, &qword_10033FAB0);
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

uint64_t type metadata accessor for InheritanceHealthCheckAnalyticsEvent(uint64_t a1)
{
  result = qword_1003E4010;
  if (!qword_1003E4010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10024CF18(uint64_t a1)
{
  sub_100248974(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_10024CFF0()
{
  *(v0 + qword_1003E3FB0) = _swiftEmptyArrayStorage;
  *(v0 + qword_1003E3FB8) = 0;
  *(v0 + qword_1003E3FC0) = 0;
  *(v0 + qword_1003E3FC8) = 0;
  *(v0 + qword_1003E3FD0) = 0;
  *(v0 + qword_1003E3FD8) = 0;
  *(v0 + qword_1003E3FE0) = 0;
  *(v0 + qword_1003E3FE8) = 0;
  *(v0 + qword_1003E3FF0) = 0;
  *(v0 + qword_1003E3FF8) = 0;
  *(v0 + qword_1003E4000) = -1;
  sub_100005814(&unk_1003DA880, &unk_10033F5F0);
  Dependency.init(dependencyId:config:)();
  sub_100309C2C(_swiftEmptyArrayStorage);

  return AAFTimedAnalyticsEvent.init(eventName:initialData:)();
}

void sub_10024D10C(char a1)
{
  v4 = v1;
  v5 = sub_100005814(&qword_1003DB628, &qword_10033FAB0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v69 - v7 + 16;
  if (AAUnderTest.getter())
  {
    return;
  }

  (*(v6 + 16))(v8, &v4[qword_1003E4008], v5);
  Dependency.wrappedValue.getter();
  (*(v6 + 8))(v8, v5);
  sub_1000080F8(v69, v69[3]);
  type metadata accessor for DaemonAnalyticsAccountModel(0);
  v9 = sub_100246DAC();
  sub_1002D245C(v9);
  v11 = v10;

  v70 = v11;
  sub_10000839C(v69);
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v69[0] = v70;
  sub_1002CF474(isa, 0x6961706552646964, 0xE900000000000072, isUniquelyReferenced_nonNull_native);
  v70 = v69[0];
  v14 = Bool._bridgeToObjectiveC()().super.super.isa;
  v15 = swift_isUniquelyReferenced_nonNull_native();
  v69[0] = v70;
  sub_1002CF474(v14, 0xD000000000000013, 0x8000000100331880, v15);
  v70 = v69[0];
  v16 = Int._bridgeToObjectiveC()().super.super.isa;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v69[0] = v70;
  sub_1002CF474(v16, 0xD000000000000018, 0x80000001003318A0, v17);
  v70 = v69[0];
  v18 = String._bridgeToObjectiveC()();
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v69[0] = v70;
  sub_1002CF474(v18, 0x6E6F6973726576, 0xE700000000000000, v19);
  v70 = v69[0];
  v20 = String._bridgeToObjectiveC()();
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v69[0] = v70;
  sub_1002CF474(v20, 0x6E6F6973726576, 0xE700000000000000, v21);
  v70 = v69[0];
  v22 = Bool._bridgeToObjectiveC()().super.super.isa;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v69[0] = v70;
  sub_1002CF474(v22, 0xD000000000000011, 0x8000000100331F50, v23);
  v70 = v69[0];
  v24 = Bool._bridgeToObjectiveC()().super.super.isa;
  v25 = swift_isUniquelyReferenced_nonNull_native();
  v69[0] = v70;
  sub_1002CF474(v24, 0xD000000000000012, 0x8000000100331F70, v25);
  v70 = v69[0];
  v26 = Bool._bridgeToObjectiveC()().super.super.isa;
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v69[0] = v70;
  sub_1002CF474(v26, 0xD000000000000013, 0x8000000100331F90, v27);
  v70 = v69[0];
  v28 = Int._bridgeToObjectiveC()().super.super.isa;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v69[0] = v70;
  sub_1002CF474(v28, 0x6C6544746E756F63, 0xEA00000000006174, v29);
  v70 = v69[0];
  v30 = Bool._bridgeToObjectiveC()().super.super.isa;
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v69[0] = v70;
  sub_1002CF474(v30, 0xD000000000000012, 0x8000000100331FB0, v31);
  v70 = v69[0];
  v32 = Bool._bridgeToObjectiveC()().super.super.isa;
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v69[0] = v70;
  sub_1002CF474(v32, 0xD000000000000014, 0x8000000100331FD0, v33);
  v70 = v69[0];
  v34 = qword_1003E3FB0;
  swift_beginAccess();
  v35 = *&v4[v34];
  if (v35 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_21;
    }
  }

  else if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

  v36 = *&v4[v34];
  if ((v36 & 0xC000000000000001) != 0)
  {

    v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_31:
      if (_CocoaArrayWrapper.endIndex.getter() < 2)
      {
        goto LABEL_21;
      }

      goto LABEL_10;
    }

    v37 = *(v36 + 32);
  }

  v2 = &unk_1003D3000;
  [v37 code];
  v38 = Int._bridgeToObjectiveC()().super.super.isa;
  swift_beginAccess();
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v68 = v70;
  sub_1002CF474(v38, 0xD000000000000014, 0x8000000100331950, v39);
  v70 = v68;
  swift_endAccess();
  v3 = &selRef_setPath_;
  v40 = [v37 domain];
  if (!v40)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v41 = v40;
  swift_beginAccess();
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v68 = v70;
  sub_1002CF474(v41, 0xD000000000000016, 0x8000000100331970, v42);
  v70 = v68;
  swift_endAccess();

  v43 = *&v4[v34];
  if (v43 >> 62)
  {
    goto LABEL_31;
  }

  if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
    goto LABEL_21;
  }

LABEL_10:
  v44 = *&v4[v34];
  if ((v44 & 0xC000000000000001) != 0)
  {

    v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
LABEL_35:
      if (_CocoaArrayWrapper.endIndex.getter() < 3)
      {
        goto LABEL_21;
      }

      goto LABEL_16;
    }

    v45 = *(v44 + 40);
  }

  [v45 v2[408]];
  v46 = Int._bridgeToObjectiveC()().super.super.isa;
  swift_beginAccess();
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v68 = v70;
  sub_1002CF474(v46, 0xD000000000000014, 0x8000000100331990, v47);
  v70 = v68;
  swift_endAccess();
  v48 = [v45 v3[42]];
  if (!v48)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v49 = v48;
  swift_beginAccess();
  v50 = swift_isUniquelyReferenced_nonNull_native();
  v68 = v70;
  sub_1002CF474(v49, 0xD000000000000016, 0x80000001003319B0, v50);
  v70 = v68;
  swift_endAccess();

  v51 = *&v4[v34];
  if (v51 >> 62)
  {
    goto LABEL_35;
  }

  if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3)
  {
LABEL_16:
    v52 = *&v4[v34];
    if ((v52 & 0xC000000000000001) != 0)
    {

      v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_19:
      [v53 v2[408]];
      v54 = Int._bridgeToObjectiveC()().super.super.isa;
      swift_beginAccess();
      v55 = swift_isUniquelyReferenced_nonNull_native();
      v68 = v70;
      sub_1002CF474(v54, 0xD000000000000014, 0x80000001003319D0, v55);
      v70 = v68;
      swift_endAccess();
      v56 = [v53 v3[42]];
      if (v56)
      {
        v57 = v56;
        swift_beginAccess();
        v58 = swift_isUniquelyReferenced_nonNull_native();
        v68 = v70;
        sub_1002CF474(v57, 0xD000000000000016, 0x80000001003319F0, v58);
        swift_endAccess();

        goto LABEL_21;
      }

LABEL_41:
      __break(1u);
      return;
    }

    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v53 = *(v52 + 48);
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_39;
  }

LABEL_21:
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v59 = type metadata accessor for Logger();
  sub_100008D04(v59, qword_1003FAAB8);
  v60 = v4;
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v63 = 138412290;
    v65 = *&v60[qword_1003E3FB8];
    *(v63 + 4) = v65;
    *v64 = v65;
    v66 = v65;
    _os_log_impl(&_mh_execute_header, v61, v62, "InheritanceHealthCheckAnalyticsEvent: reporting claimCode error %@", v63, 0xCu);
    sub_100083380(v64);
  }

  v67 = *&v60[qword_1003E3FB8];
  dispatch thunk of AAFTimedAnalyticsEvent.completeEvent(withSuccess:error:additionalData:)();
}

uint64_t sub_10024DBCC()
{

  v1 = qword_1003E4008;
  v2 = sub_100005814(&qword_1003DB628, &qword_10033FAB0);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_10024DC60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InheritanceHealthCheckAnalyticsEvent(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10024DC98(uint64_t a1)
{

  v2 = qword_1003E4008;
  v3 = sub_100005814(&qword_1003DB628, &qword_10033FAB0);
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

uint64_t type metadata accessor for InheritanceInvitationActionAnalyticsEvent(uint64_t a1)
{
  result = qword_1003E4060;
  if (!qword_1003E4060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Int sub_10024DE30()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10024DF20(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10024DFFC(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10024E0E8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10024E678(*a1);
  *a2 = result;
  return result;
}

void sub_10024E118(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006F74;
  v4 = 0x7541747065636361;
  v5 = 0xD000000000000011;
  v6 = 0x800000010032C3C0;
  v7 = 0x800000010032C3E0;
  v8 = 0xD000000000000013;
  if (v2 != 3)
  {
    v8 = 0xD000000000000012;
    v7 = 0x800000010032C400;
  }

  if (v2 != 2)
  {
    v5 = v8;
    v6 = v7;
  }

  if (*v1)
  {
    v4 = 0x614D747065636361;
    v3 = 0xEC0000006C61756ELL;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

Swift::Int sub_10024E1D0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10024E2B4(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10024E384(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10024E464@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10024E6C4(*a1);
  *a2 = result;
  return result;
}

void sub_10024E494(uint64_t *a1@<X8>)
{
  v2 = 0xEB00000000656461;
  v3 = 0x7267707532617368;
  v4 = 0xEB000000006B6365;
  v5 = 0x684368746C616568;
  if (*v1 != 2)
  {
    v5 = 0x7267694D74736F70;
    v4 = 0xED00006E6F697461;
  }

  if (*v1)
  {
    v3 = 0x6961706552706463;
    v2 = 0xE900000000000072;
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

id sub_10024E564()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InheritanceInvitationActionAnalyticsEvent(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10024E5CC()
{
  result = qword_1003E40B0;
  if (!qword_1003E40B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E40B0);
  }

  return result;
}

unint64_t sub_10024E624()
{
  result = qword_1003E40B8;
  if (!qword_1003E40B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E40B8);
  }

  return result;
}

unint64_t sub_10024E678(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1003A3AD8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10024E6C4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1003A3B70, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t type metadata accessor for InheritanceInviteAnalyticsEvent(uint64_t a1)
{
  result = qword_1003E40C0;
  if (!qword_1003E40C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10024E7CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InheritanceInviteAnalyticsEvent(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InheritanceMigrationAnalyticsEvent(uint64_t a1)
{
  result = qword_1003E4110;
  if (!qword_1003E4110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10024E8CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InheritanceMigrationAnalyticsEvent(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InheritancePrintKeyAnalyticsEvent(uint64_t a1)
{
  result = qword_1003E4160;
  if (!qword_1003E4160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10024E9CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InheritancePrintKeyAnalyticsEvent(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InheritanceRecoveryAnalyticsEvent(uint64_t a1)
{
  result = qword_1003E41B0;
  if (!qword_1003E41B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10024EACC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InheritanceRecoveryAnalyticsEvent(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TrustedContactsSyncOperationsCAEvent(uint64_t a1)
{
  result = qword_1003E4200;
  if (!qword_1003E4200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10024EBCC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrustedContactsSyncOperationsCAEvent(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10024EC2C()
{
  v0 = sub_10024F180();
  v1 = type metadata accessor for AppInstallObserver();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR____TtC13appleaccountd18AppInstallObserver_observers] = v0;
  v4.receiver = v2;
  v4.super_class = v1;
  result = objc_msgSendSuper2(&v4, "init");
  qword_1003FA948 = result;
  return result;
}

uint64_t sub_10024EC8C(void *a1)
{
  v3 = v1;
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100008D04(v5, qword_1003FAA40);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "AppInstallObserver: Handling distributed notification.", v8, 2u);
  }

  if (!xpc_dictionary_get_string(a1, _xpc_event_key_name))
  {
    v20 = 5;
LABEL_19:
    sub_10024F12C();
    swift_allocError();
    *v21 = v20;
    return swift_willThrow();
  }

  v9 = String.init(cString:)();
  v11 = v10;
  v12 = v9 == 0xD00000000000002ELL && 0x8000000100332380 == v10;
  if (v12 || (v13 = v9, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v14 = 1;
    goto LABEL_12;
  }

  v22 = v13 == 0xD000000000000030 && 0x80000001003323B0 == v11;
  if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v29 = v27;
      *v26 = 136315138;
      v28 = sub_10021145C(v13, v11, &v29);

      *(v26 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v24, v25, "AppInstallObserver: Ignoring event %s", v26, 0xCu);
      sub_10000839C(v27);
    }

    else
    {
    }

    v20 = 4;
    goto LABEL_19;
  }

  v14 = 0;
LABEL_12:

  result = sub_10024F3CC(a1);
  if (v2)
  {
    return result;
  }

  v16 = result;
  v17 = *(v3 + OBJC_IVAR____TtC13appleaccountd18AppInstallObserver_observers);
  v18 = *(v17 + 16);
  if (v14)
  {
    if (v18)
    {
      v19 = (v17 + 32);

      do
      {
        sub_1000080F8(v19, v19[3]);
        sub_10024F86C(v16);
        v19 += 5;
        --v18;
      }

      while (v18);
LABEL_29:
    }
  }

  else if (v18)
  {
    v23 = (v17 + 32);

    do
    {
      sub_1000080F8(v23, v23[3]);
      sub_10024F86C(v16);
      v23 += 5;
      --v18;
    }

    while (v18);
    goto LABEL_29;
  }
}

uint64_t sub_10024EFE0(int a1, xpc_object_t xstring)
{
  if (xpc_string_get_string_ptr(xstring))
  {
    v2 = String.init(cString:)();
    sub_1002FAEE0(&v5, v2, v3);
  }

  return 1;
}

uint64_t sub_10024F03C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v6 = v5(a2, a3);
  swift_unknownObjectRelease();
  return v6 & 1;
}

id sub_10024F0C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppInstallObserver();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10024F12C()
{
  result = qword_1003E4280;
  if (!qword_1003E4280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E4280);
  }

  return result;
}

id sub_10024F180()
{
  sub_100005814(&qword_1003E4288, &unk_100347630);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10033EB30;
  v1 = type metadata accessor for DaemonAccountStore();
  v2 = swift_allocObject();
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    *(v2 + 16) = result;
    *(v2 + 24) = [objc_opt_self() sharedInstance];
    v16[3] = v1;
    v16[4] = &off_1003AB0B8;
    v16[0] = v2;
    v14 = type metadata accessor for DaemonTaskDispatcher();
    v15 = &off_1003AB248;
    *&v13 = swift_allocObject();
    v4 = type metadata accessor for DataclassAppInstallObserving();
    v5 = swift_allocObject();
    v6 = sub_10003E968(v16, v1);
    __chkstk_darwin(v6);
    v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8);
    v10 = *v8;
    v5[11] = v1;
    v5[12] = &off_1003AB0B8;
    v5[8] = v10;
    v11 = [objc_opt_self() dataclassBundleMap];
    v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v5[7] = sub_1002DF794(v12);
    sub_10003E950(&v13, (v5 + 2));
    sub_10000839C(v16);
    *(v0 + 56) = v4;
    *(v0 + 64) = &off_1003B12C8;
    *(v0 + 32) = v5;
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10024F3CC(void *a1)
{
  v2 = xpc_dictionary_get_dictionary(a1, "UserInfo");
  if (v2)
  {
    v3 = v2;
    v4 = xpc_dictionary_get_array(v2, "bundleIDs");
    if (v4)
    {
      v5 = v4;
      if (xpc_dictionary_get_BOOL(v3, "isPlaceholder"))
      {
        sub_10024F12C();
        swift_allocError();
        v7 = 1;
LABEL_16:
        *v6 = v7;
        swift_willThrow();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return v1;
      }

      if (xpc_dictionary_get_BOOL(v3, "isForcedUpdate"))
      {
        sub_10024F12C();
        swift_allocError();
        v7 = 2;
        goto LABEL_16;
      }

      v16 = &_swiftEmptySetSingleton;
      v9 = swift_allocObject();
      *(v9 + 16) = &v16;
      v1 = swift_allocObject();
      *(v1 + 16) = sub_10024F740;
      *(v1 + 24) = v9;
      aBlock[4] = sub_10024F758;
      aBlock[5] = v1;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10024F03C;
      aBlock[3] = &unk_1003B1210;
      v10 = _Block_copy(aBlock);

      xpc_array_apply(v5, v10);
      _Block_release(v10);
      LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

      if (v10)
      {
        __break(1u);
      }

      else
      {
        v1 = v16;

        if (*(v1 + 16))
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          return v1;
        }

        if (qword_1003D7F20 == -1)
        {
LABEL_13:
          v11 = type metadata accessor for Logger();
          sub_100008D04(v11, qword_1003FAA40);
          v12 = Logger.logObject.getter();
          v13 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v12, v13))
          {
            v1 = swift_slowAlloc();
            *v1 = 0;
            _os_log_impl(&_mh_execute_header, v12, v13, "AppInstallObserver: Missing bundleIDs for notification.", v1, 2u);
          }

          sub_10024F12C();
          swift_allocError();
          v7 = 3;
          goto LABEL_16;
        }
      }

      swift_once();
      goto LABEL_13;
    }

    swift_unknownObjectRelease();
  }

  sub_10024F12C();
  swift_allocError();
  *v8 = 0;
  swift_willThrow();
  return v1;
}

uint64_t sub_10024F784(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10024F7B0()
{
  result = qword_1003E4290;
  if (!qword_1003E4290)
  {
    sub_100008CBC(&qword_1003E4298, qword_100347658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E4290);
  }

  return result;
}

unint64_t sub_10024F818()
{
  result = qword_1003E42A0;
  if (!qword_1003E42A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E42A0);
  }

  return result;
}

void sub_10024F86C(uint64_t a1)
{
  if (*(a1 + 16))
  {

    v4 = sub_10024FBA0(v3, a1);

    if (v4)
    {
      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_100008D04(v5, qword_1003FAA40);

      oslog = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(oslog, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v18[0] = v8;
        *v7 = 136315138;
        v9 = Set.description.getter();
        v11 = sub_10021145C(v9, v10, v18);

        *(v7 + 4) = v11;
        _os_log_impl(&_mh_execute_header, oslog, v6, "Dataclass App Install Observer - Ignoring %s", v7, 0xCu);
        sub_10000839C(v8);

        return;
      }

      goto LABEL_11;
    }

    sub_100040738(v1 + 64, v18);
    sub_1000080F8(v18, v18[3]);
    type metadata accessor for DaemonAccountStore();
    v15 = sub_10015C758();
    if (!v15)
    {
      sub_10000839C(v18);
      v16 = _swiftEmptyArrayStorage;
      goto LABEL_19;
    }

    v16 = v15;
    sub_10000839C(v18);
    if (v16 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_19;
      }
    }

    else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_19:
      sub_10024FD88(v16);

      return;
    }

    v16 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100008D04(v12, qword_1003FAA40);
  oslog = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v13, "Dataclass App Install Observer - No apps provided.", v14, 2u);
  }

LABEL_11:
}

uint64_t sub_10024FBA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;

  v13 = 0;
  v25 = v4;
  while (v9)
  {
    v14 = v9;
LABEL_19:
    v9 = (v14 - 1) & v14;
    if (*(v6 + 16))
    {
      v16 = (*(v4 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v14)))));
      v18 = *v16;
      v17 = v16[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v19 = Hasher._finalize()();
      v20 = -1 << *(v6 + 32);
      v21 = v19 & ~v20;
      if ((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v22 = ~v20;
        while (1)
        {
          v23 = (*(v6 + 48) + 16 * v21);
          v24 = *v23 == v18 && v23[1] == v17;
          if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v21 = (v21 + 1) & v22;
          if (((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        return 0;
      }

LABEL_28:

      v4 = v25;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      return 1;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      v13 = v15;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10024FD88(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v3 = 0;
    v12 = v1 & 0xC000000000000001;
    v13 = result;
    v14 = v1;
    do
    {
      if (v12)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      ++v3;
      v7 = v15[5];
      v6 = v15[6];
      sub_1000080F8(v15 + 2, v7);
      v8 = swift_allocObject();
      swift_weakInit();
      v9 = swift_allocObject();
      *(v9 + 16) = v8;
      *(v9 + 24) = v5;
      v10 = *(v6 + 8);

      v11 = v5;
      v10(&unk_1003477A8, v9, v7, v6);

      result = v13;
      v1 = v14;
    }

    while (v13 != v3);
  }

  return result;
}

uint64_t sub_10024FF08(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_10024FF28, 0, 0);
}

uint64_t sub_10024FF28()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = v0[6];
    sub_1000080F8((Strong + 64), *(Strong + 88));
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_1002500E4;

    return sub_10015C06C(v2);
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100008D04(v5, qword_1003FAA40);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Dataclass App Install Observer - Missing reference to self.", v8, 2u);
    }

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1002500E4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v4 = sub_100250394;
  }

  else
  {
    v4 = sub_1002501F8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002501F8()
{
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAA40);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 72);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v3;
    *v8 = v6;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "Dataclass App Install Observer - Refreshed %@", v7, 0xCu);
    sub_100083380(v8);

    v4 = v9;
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100250394()
{

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAA40);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 48);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Dataclass App Install Observer - Failed to refresh %@", v7, 0xCu);
    sub_100083380(v8);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100250514()
{
  sub_10000839C((v0 + 16));

  sub_10000839C((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_100250580()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1002505B8()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1002505F8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000082A8;

  return sub_10024FF08(v2, v3);
}

uint64_t sub_1002506A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100250778(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for CloudShareInfo(uint64_t a1)
{
  result = qword_1003E4410;
  if (!qword_1003E4410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100250880(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    sub_10025090C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10025090C(uint64_t a1)
{
  if (!qword_1003E4420)
  {
    sub_100016034(255, &unk_1003E4428, CKDeviceToDeviceShareInvitationToken_ptr);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1003E4420);
    }
  }
}

uint64_t sub_100250974(uint64_t a1, uint64_t a2)
{
  v3[32] = a2;
  v3[33] = v2;
  v3[31] = a1;
  type metadata accessor for CloudShareInfo(0);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();

  return _swift_task_switch(sub_100250A44, 0, 0);
}

uint64_t sub_100250A44()
{
  v31 = v0;
  v1 = v0[32];
  if (v1 == 2)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v2 = &qword_1003FAA00;
    goto LABEL_9;
  }

  if (v1 == 1)
  {
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v2 = &qword_1003FA9D0;
LABEL_9:
    v3 = *v2;
    v0[40] = *v2;
    v4 = v2[1];
    v0[41] = v4;
    v5 = qword_1003D7EB0;

    if (v5 != -1)
    {
      swift_once();
    }

    v6 = sub_1002E2BC4(v3, v4);
    v0[42] = v6;
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v7 = v0[39];
    v8 = v0[31];
    v9 = type metadata accessor for Logger();
    v0[43] = sub_100008D04(v9, qword_1003FAA58);
    sub_1000E4E34(v8, v7);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[39];
    if (v12)
    {
      v14 = swift_slowAlloc();
      v30[0] = swift_slowAlloc();
      *v14 = 136315394;
      type metadata accessor for URL();
      sub_10025480C(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      sub_1002543EC(v13);
      v18 = sub_10021145C(v15, v17, v30);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_10021145C(v3, v4, v30);
      _os_log_impl(&_mh_execute_header, v10, v11, "Fetching metadata for url: %s, from container: %s", v14, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1002543EC(v13);
    }

    v19 = v0[31];
    v20 = swift_task_alloc();
    v0[44] = v20;
    *(v20 + 16) = v19;
    *(v20 + 24) = v6;
    v21 = swift_task_alloc();
    v0[45] = v21;
    v22 = sub_100016034(0, &qword_1003E4490, CKShareMetadata_ptr);
    *v21 = v0;
    v21[1] = sub_100250FE4;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 26, 0, 0, 0xD00000000000001ELL, 0x8000000100332510, sub_100254448, v20, v22);
  }

  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100008D04(v23, qword_1003FAA58);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = v0[32];
    v27 = swift_slowAlloc();
    *v27 = 134217984;
    *(v27 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v24, v25, "Missing container ID for %ld", v27, 0xCu);
  }

  type metadata accessor for AACustodianError(0);
  v0[25] = -7056;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_10025480C(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
  _BridgedStoredNSError.init(_:userInfo:)();
  swift_willThrow();

  v28 = v0[1];

  return v28();
}

uint64_t sub_100250FE4()
{
  *(*v1 + 368) = v0;

  if (v0)
  {

    v2 = sub_100251448;
  }

  else
  {

    v2 = sub_10025112C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10025112C()
{
  v22 = v0;
  v1 = v0[38];
  v2 = v0[31];
  v3 = v0[26];
  v0[47] = v3;
  sub_1000E4E34(v2, v1);

  v4 = v3;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v19 = v0[40];
    v20 = v0[41];
    v7 = v0[38];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v8 = 136315650;
    type metadata accessor for URL();
    sub_10025480C(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_1002543EC(v7);
    v13 = sub_10021145C(v10, v12, &v21);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_10021145C(v19, v20, &v21);
    *(v8 + 22) = 2112;
    *(v8 + 24) = v4;
    *v9 = v4;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "Accepting the share url: %s, from container: %s, using meatdata: %@", v8, 0x20u);
    sub_100008D3C(v9, &unk_1003D9140, &qword_10033E640);

    swift_arrayDestroy();
  }

  else
  {
    v15 = v0[38];

    sub_1002543EC(v15);
  }

  v16 = v0[42];
  v0[2] = v0;
  v0[7] = v0 + 27;
  v0[3] = sub_1002514F4;
  v17 = swift_continuation_init();
  v0[17] = sub_100005814(&qword_1003E4498, &qword_100347868);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100254A9C;
  v0[13] = &unk_1003B1380;
  v0[14] = v17;
  [v16 acceptShareMetadata:v4 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100251448()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002514F4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 384) = v1;
  if (v1)
  {
    v2 = sub_100251F44;
  }

  else
  {
    v2 = sub_100251604;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100251604()
{
  v39 = v0;
  v1 = v0[37];
  v2 = v0[31];
  v3 = v0[27];
  v0[49] = v3;
  sub_1000E4E34(v2, v1);
  v4 = v3;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[37];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v38 = v10;
    *v9 = 136315138;
    v11 = URL.absoluteString.getter();
    v13 = v12;
    sub_1002543EC(v8);
    v14 = sub_10021145C(v11, v13, &v38);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "Successfully accepted share from: %s", v9, 0xCu);
    sub_10000839C(v10);
  }

  else
  {

    sub_1002543EC(v8);
  }

  sub_1000E4E34(v0[31], v0[36]);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = v0[40];
    v37 = v0[41];
    v18 = v0[36];
    v19 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v19 = 136315394;
    type metadata accessor for URL();
    v20 = v4;
    sub_10025480C(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    sub_1002543EC(v18);
    v24 = v21;
    v4 = v20;
    v25 = sub_10021145C(v24, v23, &v38);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_10021145C(v17, v37, &v38);
    _os_log_impl(&_mh_execute_header, v15, v16, "Pulling shared database changes from cloud after accepting CKShare, url: %s, from container: %s", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v26 = v0[36];

    sub_1002543EC(v26);
  }

  v27 = v0[42];
  v28 = v0[33];
  v29 = [v4 recordID];

  v30 = [v29 zoneID];
  v0[50] = v30;

  v31 = [v27 sharedCloudDatabase];
  v0[51] = v31;
  sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
  v32 = swift_allocObject();
  v0[52] = v32;
  *(v32 + 16) = xmmword_1003431D0;
  *(v32 + 32) = v30;
  v0[30] = v28;
  v33 = v30;
  v34 = swift_task_alloc();
  v0[53] = v34;
  *(v34 + 16) = v0 + 30;
  *(v34 + 24) = v31;
  *(v34 + 32) = v32;
  *(v34 + 40) = 1;
  v35 = swift_task_alloc();
  v0[54] = v35;
  *v35 = v0;
  v35[1] = sub_100251A64;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v35, 0, 0, 0xD00000000000002ALL, 0x8000000100332550, sub_100254450, v34, &type metadata for () + 8);
}

uint64_t sub_100251A64()
{
  *(*v1 + 440) = v0;

  if (v0)
  {

    v2 = sub_100251E7C;
  }

  else
  {

    v2 = sub_100251BD4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100251BD4()
{
  v25 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 248);

  sub_1000E4E34(v2, v1);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v7 = *(v0 + 392);
  v6 = *(v0 + 400);
  v8 = *(v0 + 376);
  v9 = *(v0 + 328);
  v10 = *(v0 + 336);
  if (v5)
  {
    v21 = *(v0 + 320);
    v11 = *(v0 + 280);
    v23 = *(v0 + 400);
    v12 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v12 = 136315394;
    type metadata accessor for URL();
    v22 = v10;
    sub_10025480C(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    sub_1002543EC(v11);
    v16 = sub_10021145C(v13, v15, &v24);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v17 = sub_10021145C(v21, v9, &v24);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v3, v4, "Successfully pulled shared database changes from cloud after accepting CKShare, url: %s, from container: %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v18 = *(v0 + 280);

    sub_1002543EC(v18);
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_100251E7C()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 392);
  v3 = *(v0 + 376);
  v4 = *(v0 + 336);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100251F44(uint64_t a1)
{
  v23 = v1;
  v2 = v1[34];
  v3 = v1[31];
  swift_willThrow();
  sub_1000E4E34(v3, v2);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[41];
    v21 = v1[40];
    v7 = v1[34];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22[0] = swift_slowAlloc();
    *v8 = 136315650;
    type metadata accessor for URL();
    sub_10025480C(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_1002543EC(v7);
    v13 = sub_10021145C(v10, v12, v22);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    v14 = sub_10021145C(v21, v6, v22);

    *(v8 + 14) = v14;
    *(v8 + 22) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v15;
    *v9 = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error accepting share for url: %s, from container: %s, error: %@", v8, 0x20u);
    sub_100008D3C(v9, &unk_1003D9140, &qword_10033E640);

    swift_arrayDestroy();
  }

  else
  {
    v16 = v1[34];

    sub_1002543EC(v16);
  }

  v17 = v1[47];
  v18 = v1[42];
  swift_getErrorValue();
  sub_1002DEA80(v1[19], v1[20]);
  swift_getErrorValue();
  sub_100255F6C(-7073, v1[22], v1[23]);

  swift_willThrow();

  v19 = v1[1];

  return v19();
}

void sub_100252284(uint64_t a1, uint64_t a2, void *a3)
{
  v46 = a3;
  v48 = a1;
  v4 = sub_100005814(&qword_1003E44A0, &qword_100347870);
  v5 = *(v4 - 8);
  v47 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v39 - v6;
  v8 = type metadata accessor for CloudShareInfo(0);
  v43 = *(v8 - 8);
  v9 = __chkstk_darwin(v8 - 8);
  v44 = v10;
  v45 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + *(v9 + 32));
  sub_100005814(&qword_1003E44A8, &qword_100347878);
  if (v11)
  {
    v12 = type metadata accessor for URL();
    v40 = v7;
    v13 = v12;
    v14 = *(v12 - 8);
    v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v16 = swift_allocObject();
    v39 = xmmword_10033EB30;
    *(v16 + 16) = xmmword_10033EB30;
    v42 = v4;
    v17 = *(v14 + 16);
    v17(v16 + v15, a2, v13);
    sub_100005814(&qword_1003E44B0, &qword_100347880);
    v18 = sub_100005814(&qword_1003E44B8, &qword_100347888);
    v41 = v5;
    v19 = v18 - 8;
    v20 = (*(*(v18 - 8) + 80) + 32) & ~*(*(v18 - 8) + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = v39;
    v22 = v21 + v20;
    v23 = *(v19 + 56);
    v17(v22, a2, v13);
    v4 = v42;
    *(v22 + v23) = v11;
    v24 = v11;
    sub_10030991C(v21);
    swift_setDeallocating();
    sub_100008D3C(v22, &qword_1003E44B8, &qword_100347888);
    swift_deallocClassInstance();
    v25 = objc_allocWithZone(CKFetchShareMetadataOperation);
    isa = Array._bridgeToObjectiveC()().super.isa;

    sub_100016034(0, &unk_1003E4428, CKDeviceToDeviceShareInvitationToken_ptr);
    sub_10025480C(&qword_1003E44C0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v7 = v40;
    v27.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v5 = v41;

    v28 = [v25 initWithShareURLs:isa invitationTokensByShareURL:v27.super.isa];
  }

  else
  {
    v29 = type metadata accessor for URL();
    v30 = *(v29 - 8);
    v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_10033EB30;
    (*(v30 + 16))(v32 + v31, a2, v29);
    v33 = objc_allocWithZone(CKFetchShareMetadataOperation);
    v27.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v28 = [v33 initWithShareURLs:v27.super.isa];
  }

  v34 = v28;
  [v34 setShouldFetchRootRecord:1];
  v35 = v45;
  sub_1000E4E34(a2, v45);
  (*(v5 + 16))(v7, v48, v4);
  v36 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v37 = (v44 + *(v5 + 80) + v36) & ~*(v5 + 80);
  v38 = swift_allocObject();
  sub_1001D9D08(v35, v38 + v36);
  (*(v5 + 32))(v38 + v37, v7, v4);
  CKFetchShareMetadataOperation.perShareMetadataResultBlock.setter();
  [v46 addOperation:v34];
}

uint64_t sub_100252848(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  v7 = type metadata accessor for CloudShareInfo(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v28[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100008D04(v10, qword_1003FAA58);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    sub_10005A40C(a2, 1);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "Error fetching share metadata: %@", v13, 0xCu);
      sub_100008D3C(v14, &unk_1003D9140, &qword_10033E640);
    }

    swift_getErrorValue();
    v28[0] = sub_100255F6C(-7069, v28[2], v28[3]);
    sub_100005814(&qword_1003E44A0, &qword_100347870);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAA58);
    sub_1000E4E34(a4, v9);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28[0] = v21;
      *v20 = 136315138;
      type metadata accessor for URL();
      sub_10025480C(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      sub_1002543EC(v9);
      v25 = sub_10021145C(v22, v24, v28);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "Metadata fetched successfully for the url: %s", v20, 0xCu);
      sub_10000839C(v21);
    }

    else
    {

      sub_1002543EC(v9);
    }

    v28[0] = a2;
    v26 = a2;
    sub_100005814(&qword_1003E44A0, &qword_100347870);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100252BF8()
{
  v1 = 0x6E6F436572616873;
  if (*v0 != 1)
  {
    v1 = 0x6B6F546572616873;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C72556572616873;
  }
}

uint64_t sub_100252C6C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10025496C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100252C94(uint64_t a1)
{
  v2 = sub_100254398();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100252CD0(uint64_t a1)
{
  v2 = sub_100254398();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100252D0C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = type metadata accessor for URL();
  v26 = *(v3 - 8);
  __chkstk_darwin(v3);
  v29 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005814(&qword_1003E4468, &qword_100347850);
  v28 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v23 - v6;
  v8 = type metadata accessor for CloudShareInfo(0);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000080F8(a1, a1[3]);
  sub_100254398();
  v11 = v30;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v11)
  {
    return sub_10000839C(a1);
  }

  v12 = v8;
  v13 = v27;
  LOBYTE(v31) = 0;
  sub_10025480C(&qword_1003E4478, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v26 + 32))(v10, v29, v3);
  LOBYTE(v31) = 1;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = &v10[*(v12 + 20)];
  *v16 = v15;
  v16[1] = v17;
  v33 = 2;
  sub_1000EE61C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v29 = v5;
  v30 = v7;
  v25 = v32;
  if (v32 >> 60 == 15)
  {
    v18 = 0;
  }

  else
  {
    v19 = v31;
    v23 = objc_allocWithZone(NSKeyedUnarchiver);
    sub_100052704(v19, v25);
    v24 = v19;
    v20 = sub_1002E1C48();
    [v20 setRequiresSecureCoding:1];
    [v20 _enableStrictSecureDecodingMode];
    v18 = [objc_allocWithZone(CKDeviceToDeviceShareInvitationToken) initWithCoder:v20];

    v22 = v24;
    v21 = v25;
    sub_100015D58(v24, v25);
    sub_100015D58(v22, v21);
  }

  (*(v28 + 8))(v30, v29);
  *&v10[*(v12 + 24)] = v18;
  sub_1000E4E34(v10, v13);
  sub_10000839C(a1);
  return sub_1002543EC(v10);
}

uint64_t sub_1002531C4(void *a1)
{
  v3 = v1;
  v5 = sub_100005814(&qword_1003E4480, &qword_100347858);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v19 - v7;
  sub_1000080F8(a1, a1[3]);
  sub_100254398();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v19[0]) = 0;
  type metadata accessor for URL();
  sub_10025480C(&qword_1003E4488, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v9 = type metadata accessor for CloudShareInfo(0);
  LOBYTE(v19[0]) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v11 = *(v3 + *(v9 + 24));
  if (!v11)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v12 = objc_allocWithZone(NSKeyedArchiver);
  v13 = v11;
  v14 = [v12 initRequiringSecureCoding:1];
  [v13 encodeWithCoder:v14];
  v15 = [v14 encodedData];
  v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19[0] = v16;
  v19[1] = v18;
  v20 = 2;
  sub_1000EE774();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);

  return sub_100012324(v16, v18);
}

uint64_t sub_1002534A4(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, __int16 a5)
{
  v9 = sub_100005814(&qword_1003DABC0, &unk_100342840);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - v11;
  (*(v10 + 16))(&v16 - v11, a1, v9);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  (*(v10 + 32))(v14 + v13, v12, v9);
  sub_1002E6374(a3, a4, a5 & 0x101, sub_100254508, v14);
}

uint64_t sub_100253614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[29] = a2;
  v3[30] = a3;
  v3[28] = a1;
  return _swift_task_switch(sub_100253638, 0, 0);
}

uint64_t sub_100253638()
{
  v1 = v0;
  v2 = v0 + 2;
  v4 = v1[29];
  v3 = v1[30];
  v1[10] = v1[28];
  v1[11] = v4;
  v1[24] = 64;
  v1[25] = 0xE100000000000000;
  sub_1000709A0();
  v5 = StringProtocol.contains<A>(_:)();
  v6 = objc_allocWithZone(CKUserIdentityLookupInfo);
  v7 = String._bridgeToObjectiveC()();
  v8 = &selRef_initWithEmailAddress_;
  if ((v5 & 1) == 0)
  {
    v8 = &selRef_initWithPhoneNumber_;
  }

  v9 = [v6 *v8];
  v1[31] = v9;

  v1[2] = v1;
  v1[7] = v1 + 24;
  v1[3] = sub_1002537FC;
  v10 = swift_continuation_init();
  v1[17] = sub_100005814(&qword_1003E4460, &qword_100347848);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_100254A9C;
  v1[13] = &unk_1003B1358;
  v1[14] = v10;
  [v3 fetchShareParticipantWithLookupInfo:v9 completionHandler:v1 + 10];

  return _swift_continuation_await(v2);
}

uint64_t sub_1002537FC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 256) = v1;
  if (v1)
  {
    v2 = sub_100253B04;
  }

  else
  {
    v2 = sub_10025390C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10025390C()
{
  v17 = v0;
  v1 = v0[24];
  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAA58);
  v3 = v1;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[31];
  if (v6)
  {
    v9 = v0[28];
    v8 = v0[29];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v10 = 138412546;
    *(v10 + 4) = v3;
    *v11 = v3;
    *(v10 + 12) = 2080;
    v13 = v3;
    *(v10 + 14) = sub_10021145C(v9, v8, &v16);
    _os_log_impl(&_mh_execute_header, v4, v5, "Found a cloudkit participant: %@, handle: %s", v10, 0x16u);
    sub_100008D3C(v11, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v12);
  }

  v14 = v0[1];

  return v14(v3);
}

uint64_t sub_100253B04(uint64_t a1)
{
  v15 = v1;
  v2 = v1[31];
  swift_willThrow();

  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100008D04(v3, qword_1003FAA58);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v1[28];
    v6 = v1[29];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_10021145C(v7, v6, &v14);
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed fetching cloudKit participant (%s) with error: %@", v8, 0x16u);
    sub_100008D3C(v9, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v10);
  }

  swift_getErrorValue();
  sub_1002DEA80(v1[19], v1[20]);
  swift_getErrorValue();
  sub_100255F6C(-7064, v1[22], v1[23]);

  swift_willThrow();

  v12 = v1[1];

  return v12();
}

NSObject *sub_100253D68(void *a1)
{
  if (a1)
  {
    v2 = qword_1003D7F28;
    v3 = a1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100008D04(v4, qword_1003FAA58);
    v5 = v3;
    v1 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v1, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v25 = v8;
      *v7 = 136315138;
      [v5 invitationTokenStatus];
      type metadata accessor for CKShareParticipantInvitationTokenStatus(0);
      v9 = String.init<A>(describing:)();
      v11 = sub_10021145C(v9, v10, &v25);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v1, v6, "Invitation acceptance status: %s", v7, 0xCu);
      sub_10000839C(v8);
    }

    v12 = [v5 acceptanceStatus];
    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v13 = Logger.logObject.getter();
        v22 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v13, v22))
        {
          v1 = swift_slowAlloc();
          LOWORD(v1->isa) = 0;
          _os_log_impl(&_mh_execute_header, v13, v22, "CKShare already accepted", v1, 2u);
        }

        goto LABEL_32;
      }

      if (v12 == 3)
      {
        v13 = Logger.logObject.getter();
        v20 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v13, v20))
        {
          v1 = swift_slowAlloc();
          LOWORD(v1->isa) = 0;
          _os_log_impl(&_mh_execute_header, v13, v20, "Participant is removed from CKShare", v1, 2u);
        }

        goto LABEL_32;
      }
    }

    else
    {
      if (!v12)
      {
        type metadata accessor for AACustodianError(0);
LABEL_33:
        sub_100212324(_swiftEmptyArrayStorage);
        sub_10025480C(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
        _BridgedStoredNSError.init(_:userInfo:)();
        swift_willThrow();

        return v1;
      }

      if (v12 == 1)
      {
        v1 = [v5 invitationToken];
        v13 = Logger.logObject.getter();
        if (v1)
        {
          v14 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v13, v14))
          {
            v15 = swift_slowAlloc();
            *v15 = 0;
            _os_log_impl(&_mh_execute_header, v13, v14, "CKShare status is pending acceptance, and has invitation token", v15, 2u);
          }

          return v1;
        }

        v23 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v13, v23))
        {
          v1 = swift_slowAlloc();
          LOWORD(v1->isa) = 0;
          _os_log_impl(&_mh_execute_header, v13, v23, "CKShare status is in pending status, but CKShare doesn't have an invitation token", v1, 2u);
        }

        goto LABEL_32;
      }
    }

    v13 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v21))
    {
      v1 = swift_slowAlloc();
      LOWORD(v1->isa) = 0;
      _os_log_impl(&_mh_execute_header, v13, v21, "Unexpected participant acceptance status from CKShare", v1, 2u);
    }

LABEL_32:

    type metadata accessor for AACustodianError(0);
    goto LABEL_33;
  }

  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100008D04(v16, qword_1003FAA58);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Saved share missing matching participant.", v19, 2u);
  }

  type metadata accessor for AACustodianError(0);
  sub_100212324(_swiftEmptyArrayStorage);
  sub_10025480C(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
  _BridgedStoredNSError.init(_:userInfo:)();
  swift_willThrow();
  return v1;
}

unint64_t sub_100254398()
{
  result = qword_1003E4470;
  if (!qword_1003E4470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E4470);
  }

  return result;
}

uint64_t sub_1002543EC(uint64_t a1)
{
  v2 = type metadata accessor for CloudShareInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100254450(uint64_t a1)
{
  if (*(v1 + 41))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1002534A4(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v2 | *(v1 + 40));
}

uint64_t sub_100254474()
{
  v1 = sub_100005814(&qword_1003DABC0, &unk_100342840);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100254508(uint64_t a1)
{
  sub_100005814(&qword_1003DABC0, &unk_100342840);

  return sub_1002E5344(a1);
}

uint64_t sub_100254584()
{
  v1 = (type metadata accessor for CloudShareInfo(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = v2 + *(*v1 + 64);
  v4 = sub_100005814(&qword_1003E44A0, &qword_100347870);
  v5 = *(v4 - 8);
  v6 = (v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 8))(v0 + v2, v8);

  (*(v5 + 8))(v0 + v6, v4);

  return _swift_deallocObject(v0, v6 + v7);
}

uint64_t sub_100254714(uint64_t a1, void *a2, char a3)
{
  v7 = *(type metadata accessor for CloudShareInfo(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  sub_100005814(&qword_1003E44A0, &qword_100347870);

  return sub_100252848(a1, a2, a3 & 1, v3 + v8);
}

uint64_t sub_10025480C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100254868()
{
  result = qword_1003E44C8;
  if (!qword_1003E44C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E44C8);
  }

  return result;
}

unint64_t sub_1002548C0()
{
  result = qword_1003E44D0;
  if (!qword_1003E44D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E44D0);
  }

  return result;
}

unint64_t sub_100254918()
{
  result = qword_1003E44D8;
  if (!qword_1003E44D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E44D8);
  }

  return result;
}

uint64_t sub_10025496C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C72556572616873 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F436572616873 && a2 == 0xEE0072656E696174 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B6F546572616873 && a2 == 0xEE00617461446E65)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void sub_100254AA0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (!a3)
  {
    a4 = 0;
  }

  sub_100254ACC(a1, a2, a3, a4);
}

void sub_100254ACC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  if (!a2)
  {
    v8.super.isa = 0;
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  if (v6)
  {
LABEL_3:
    v9[4] = v6;
    v9[5] = a4;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_10013BB5C;
    v9[3] = &unk_1003B15C0;
    v6 = _Block_copy(v9);
  }

LABEL_4:
  [v4 postFollowUpWithIdentifier:a1 userInfo:v8.super.isa completion:v6];
  _Block_release(v6);
}

void sub_100254BDC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a4)
  {
    a5 = 0;
  }

  sub_100254C08(a1, a2, a3, a4, a5);
}

void sub_100254C08(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = a4;
  if (!a3)
  {
    v10.super.isa = 0;
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v10.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  if (v7)
  {
LABEL_3:
    v11[4] = v7;
    v11[5] = a5;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_10013BB5C;
    v11[3] = &unk_1003B1598;
    v7 = _Block_copy(v11);
  }

LABEL_4:
  [v5 postFollowUpWithIdentifier:a1 forAccount:a2 userInfo:v10.super.isa completion:v7];
  _Block_release(v7);
}

uint64_t sub_100254D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100254DF0;

  return sub_100255588(a1, a2, a3);
}

uint64_t sub_100254DF0(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

void sub_100254EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = *v3;
    v7[4] = a2;
    v7[5] = a3;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_10013BB5C;
    v7[3] = &unk_1003B1548;
    v6 = _Block_copy(v7);
  }

  else
  {
    v6 = 0;
    v5 = *v3;
  }

  [v5 dismissFollowUpWithIdentifier:a1 completion:v6];
  _Block_release(v6);
}

void sub_100255004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = *v4;
    v9[4] = a3;
    v9[5] = a4;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_10013BB5C;
    v9[3] = &unk_1003B1520;
    v8 = _Block_copy(v9);
  }

  else
  {
    v8 = 0;
    v7 = *v4;
  }

  [v7 dismissFollowUpsStartingWithIdentifierPrefix:a1 account:a2 completion:v8];
  _Block_release(v8);
}

uint64_t sub_1002550E4(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 152) = a1;
  *(v2 + 160) = v3;
  return _swift_task_switch(sub_100255108, 0, 0);
}

uint64_t sub_100255108()
{
  v2 = v0[19];
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100255230;
  v3 = swift_continuation_init();
  v0[17] = sub_100005814(&qword_1003E44E0, &unk_100347A38);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100255370;
  v0[13] = &unk_1003B14F8;
  v0[14] = v3;
  [v1 pendingFollowUpsForAccount:v2 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100255230(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 48))
  {
    swift_willThrow();
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {
    v5 = *(*v1 + 144);
    v6 = *(v2 + 8);

    return v6(v5);
  }
}

uint64_t sub_100255370(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_1000080F8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_10025553C();
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_100255450(uint64_t a1)
{
  v2 = [*v1 pendingFollowUpItemUserInfosWithIdentifier:a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_100005814(&qword_1003DBB88, &qword_10033FC30);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t sub_1002554C4()
{
  v1 = [*v0 pendingCFUTypes];
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

unint64_t sub_10025553C()
{
  result = qword_1003E44E8;
  if (!qword_1003E44E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003E44E8);
  }

  return result;
}

uint64_t sub_100255588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  if (a3)
  {
    v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  v4[18].super.isa = v8.super.isa;
  v4[2].super.isa = v4;
  v4[7].super.isa = &v4[19];
  v4[3].super.isa = sub_100255700;
  v9 = swift_continuation_init();
  v4[17].super.isa = sub_100005814(&unk_1003DEE00, qword_100343450);
  v4[10].super.isa = _NSConcreteStackBlock;
  v4[11].super.isa = 1107296256;
  v4[12].super.isa = sub_10024442C;
  v4[13].super.isa = &unk_1003B1570;
  v4[14].super.isa = v9;
  [v5 postFollowUpWithIdentifier:a1 forAccount:a2 userInfo:v8.super.isa completion:&v4[10]];

  return _swift_continuation_await(&v4[2]);
}

uint64_t sub_100255700(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 144);
  if (*(v2 + 48))
  {
    swift_willThrow();

    v6 = *(v4 + 8);
    v7 = 0;
  }

  else
  {
    v8 = *(v3 + 152);

    v6 = *(v4 + 8);
    v7 = v8;
  }

  return v6(v7);
}

uint64_t sub_100255840(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100255878()
{
  v0 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7 = 0;
  v2 = [v0 dataWithJSONObject:isa options:1 error:&v7];

  v3 = v7;
  if (v2)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }

  return v4;
}

void sub_100255998(uint64_t a1, int a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v34 = a6;
  v32[3] = a2;
  v7 = type metadata accessor for URL();
  v36 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v33 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v32 - v10;
  v12 = type metadata accessor for URLResourceValues();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v35;
  Data.write(to:options:)();
  if (v16)
  {
    v17 = v36;
    v19 = v33;
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAA40);
    (*(v17 + 16))(v19, a1, v7);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = v19;
      v25 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = 0;
      v37 = v35;
      *v23 = 136315394;
      sub_1000EBC98();
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v7;
      v29 = v28;
      (*(v17 + 8))(v24, v27);
      v30 = sub_10021145C(v26, v29, &v37);

      *(v23 + 4) = v30;
      *(v23 + 12) = 2112;
      swift_errorRetain();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v31;
      *v25 = v31;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed to write data to url: %s with error %@", v23, 0x16u);
      sub_100083380(v25);

      sub_10000839C(v35);
    }

    else
    {

      (*(v17 + 8))(v19, v7);
    }
  }

  else
  {
    v35 = v13;
    URLResourceValues.init()();
    URLResourceValues.isExcludedFromBackup.setter();
    v18 = v36;
    (*(v36 + 16))(v11, a1, v7);
    URL.setResourceValues(_:)();
    (*(v18 + 8))(v11, v7);
    (v35[1])(v15, v12);
  }
}

uint64_t sub_100255E08(uint64_t a1, unint64_t a2)
{
  v4 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v12[0] = 0;
  v6 = [v4 JSONObjectWithData:isa options:4 error:v12];

  v7 = *&v12[0];
  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100012324(a1, a2);
    sub_100070AF0(v11, v12);
    sub_100070AF0(v12, v11);
    sub_100005814(&qword_1003DBB88, &qword_10033FC30);
    if (swift_dynamicCast())
    {
      return v10;
    }
  }

  else
  {
    v9 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    sub_100012324(a1, a2);
  }

  return 0;
}

uint64_t sub_100255F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 - 8);
  __chkstk_darwin(a1);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v7, a2);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v4 + 8))(v6, a2);
  }

  else
  {
    swift_allocError();
    (*(v4 + 32))(v8, v6, a2);
  }

  v9 = _convertErrorToNSError(_:)();

  v10 = _convertErrorToNSError(_:)();
  v11 = [v9 code];
  if (v11 == [v10 code])
  {
    v12 = [v9 domain];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = [v10 domain];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (v13 == v17 && v15 == v19)
    {
      v21 = 1;
    }

    else
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {

    v21 = 0;
  }

  return v21 & 1;
}

void sub_1002561AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  __chkstk_darwin(a1);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v8, a2);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v5 + 8))(v7, a2);
  }

  else
  {
    swift_allocError();
    (*(v5 + 32))(v9, v7, a2);
  }

  v10 = _convertErrorToNSError(_:)();

  v24 = v10;
  v11 = [v10 underlyingErrors];
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = 0;
    v23 = v13 - 1;
    v25 = _swiftEmptyArrayStorage;
    do
    {
      v15 = v14;
      while (1)
      {
        if (v15 >= *(v12 + 16))
        {
          __break(1u);
          return;
        }

        v16 = *(v12 + 32 + 8 * v15);
        v14 = v15 + 1;
        swift_getErrorValue();
        v17 = v26;
        v18 = v27;
        swift_errorRetain();
        if (sub_100255F78(a1, v17, v18))
        {
          break;
        }

        ++v15;
        if (v13 == v14)
        {
          goto LABEL_18;
        }
      }

      v19 = v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1002E03B4(0, v19[2] + 1, 1);
        v19 = v28;
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        sub_1002E03B4((v21 > 1), v22 + 1, 1);
        v19 = v28;
      }

      v19[2] = v22 + 1;
      v25 = v19;
      v19[v22 + 4] = v16;
    }

    while (v23 != v15);
  }

  else
  {
    v25 = _swiftEmptyArrayStorage;
  }

LABEL_18:
}

uint64_t sub_10025648C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  v5 = __chkstk_darwin(a1);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1002568B0(v5, v8);
  v10 = [v9 aa_partialErrorsByName];

  if (v10 && (sub_100005814(&unk_1003DBB60, &unk_10033E740), static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(), v10, v11 = sub_10030B6CC(), , v11))
  {
    swift_getErrorValue();
    v12 = sub_10025648C(v16[1], v16[2]);
  }

  else
  {
    (*(v4 + 16))(v7, v2, a1);
    v13 = _getErrorEmbeddedNSError<A>(_:)();
    if (v13)
    {
      v12 = v13;
      (*(v4 + 8))(v7, a1);
    }

    else
    {
      v12 = swift_allocError();
      (*(v4 + 32))(v14, v7, a1);
    }
  }

  return v12;
}

id sub_10025666C(uint64_t a1, uint64_t a2)
{
  sub_100308978(_swiftEmptyArrayStorage);
  if (a2)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
    swift_getErrorValue();
    v18 = v16;
    v7 = sub_10000DBEC(&v17);
    (*(*(v16 - 8) + 16))(v7, v15, v16);
    sub_100070AF0(&v17, v14);
    swift_errorRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1002CF8B4(v14, v4, v6, isUniquelyReferenced_nonNull_native);
  }

  v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v10 = AACustodianRecoveryErrorDomain;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = [v9 initWithDomain:v10 code:a1 userInfo:isa];

  return v12;
}

uint64_t sub_100256810(uint64_t a1, uint64_t a2)
{
  v2 = sub_1002568B0(a1, a2);
  v3 = [v2 domain];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

id sub_100256874(uint64_t a1, uint64_t a2)
{
  v2 = sub_1002568B0(a1, a2);
  v3 = [v2 code];

  return v3;
}

uint64_t sub_1002568B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  __chkstk_darwin(a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v6, a1);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v3 + 8))(v5, a1);
  }

  else
  {
    swift_allocError();
    (*(v3 + 32))(v7, v5, a1);
  }

  v8 = _convertErrorToNSError(_:)();

  return v8;
}

uint64_t sub_1002569F8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1002568B0(a1, a2);
  v3 = [v2 userInfo];

  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

id sub_100256A74(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v7 = *a4;
  sub_100005814(&unk_1003DB0A0, &qword_10033EC60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10033EB30;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v9;
  *(inited + 72) = a2;
  v10 = sub_10000DBEC((inited + 48));
  (*(*(a2 - 8) + 16))(v10, v4, a2);
  v11 = v7;
  sub_100308978(inited);
  swift_setDeallocating();
  sub_100256CF4(inited + 32);
  v12 = objc_allocWithZone(NSError);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v14 = [v12 initWithDomain:v11 code:a1 userInfo:isa];

  return v14;
}

void sub_100256BF8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = objc_allocWithZone(NSError);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithDomain:v6 code:a2 userInfo:0];

  *a3 = v7;
}

void sub_100256C7C()
{
  v0 = objc_allocWithZone(NSError);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithDomain:v1 code:9 userInfo:0];

  qword_1003FA968 = v2;
}

uint64_t sub_100256CF4(uint64_t a1)
{
  v2 = sub_100005814(&qword_1003DB0B0, &unk_10033E710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_100256D5C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_1002E02CC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = 0;
      do
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = _swiftEmptyArrayStorage[2];
        v6 = _swiftEmptyArrayStorage[3];
        if (v7 >= v6 >> 1)
        {
          v9 = v5;
          sub_1002E02CC((v6 > 1), v7 + 1, 1);
          v5 = v9;
        }

        ++v4;
        _swiftEmptyArrayStorage[2] = v7 + 1;
        v8 = &_swiftEmptyArrayStorage[2 * v7];
        v8[4] = v5;
        v8[5] = &off_1003A9F30;
      }

      while (v2 != v4);
    }

    else
    {
      v10 = (a1 + 32);
      v11 = _swiftEmptyArrayStorage[2];
      v12 = 2 * v11;
      do
      {
        v13 = *v10;
        v14 = _swiftEmptyArrayStorage[3];

        if (v11 >= v14 >> 1)
        {
          sub_1002E02CC((v14 > 1), v11 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v11 + 1;
        v15 = &_swiftEmptyArrayStorage[v12];
        v15[4] = v13;
        v15[5] = &off_1003A9F30;
        v12 += 2;
        ++v10;
        ++v11;
        --v2;
      }

      while (v2);
    }

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

void *sub_100256EF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_1002E03D4(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_1002E03D4((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_100070AF0(&v8, &v2[4 * v6 + 4]);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_100256FF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_1002E03D4(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_100005814(&qword_1003E31F8, &qword_100346900);
      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_1002E03D4((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_100070AF0(&v8, &v2[4 * v6 + 4]);
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void NSXPCInterface.aa_setClasses(_:for:argumentIndex:ofReply:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_100256FF4(a1);
  v4 = objc_allocWithZone(NSSet);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithArray:isa];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100257274(void *a1)
{
  if ([objc_opt_self() isInternalBuild])
  {
    v2 = a1 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    v3 = qword_1003D7F20;
    v4 = a1;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100008D04(v5, qword_1003FAA40);
    v6 = v4;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v25 = v10;
      *v9 = 136315138;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = sub_10021145C(v11, v12, &v25);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Checking whether to induce failure of event: %s", v9, 0xCu);
      sub_10000839C(v10);
    }

    v14 = [objc_opt_self() standardUserDefaults];
    v25 = 0;
    v26 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v25 = 0x662E656375646E69;
    v26 = 0xEF2E6572756C6961;
    v15._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    String.append(_:)(v15);

    v16 = String._bridgeToObjectiveC()();

    v17 = [v14 BOOLForKey:v16];

    if (v17)
    {
      v6 = v6;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v25 = v21;
        *v20 = 136315138;
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = sub_10021145C(v22, v23, &v25);

        *(v20 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v18, v19, "🚨 Inducing failure of event: %s", v20, 0xCu);
        sub_10000839C(v21);
      }

      type metadata accessor for AACustodianError(0);
      v27 = -7756;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10003A9C0();
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
    }
  }
}

uint64_t sub_1002575F4(void *a1, uint64_t (*a2)(void *), uint64_t a3)
{
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for AACustodianError(0);
  if ((swift_dynamicCast() & 1) != 0 && (sub_10003A9C0(), _BridgedStoredNSError.code.getter(), v8, v8 == -7756))
  {
    v6 = 0;
  }

  else if (a2)
  {

    v6 = a2(a1);
    sub_100083B0C(a2, a3);
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

uint64_t sub_1002576F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[0] = a1;
  v13[1] = a2;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_1000709A0();
  v8 = StringProtocol.trimmingCharacters(in:)();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {

    return 0;
  }

  return v8;
}

BOOL sub_100257818(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v37 - v9;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v39 = v4;
    v40 = Strong;
    v41 = a1;
    v12 = OBJC_IVAR____TtC13appleaccountd35AppleIDAvailabilityActivityProvider__accountStore;
    v13 = *(v8 + 16);
    v13(v10, Strong + OBJC_IVAR____TtC13appleaccountd35AppleIDAvailabilityActivityProvider__accountStore, v7);
    Dependency.wrappedValue.getter();
    v14 = *(v8 + 8);
    v14(v10, v7);
    v15 = [*(*sub_1000080F8(v43 v44) + 16)];
    if (v15)
    {

      sub_10000839C(v43);
      UUID.init()();
      v37 = UUID.uuidString.getter();
      v38 = v16;
      (*(v39 + 8))(v6, v3);
      v13(v10, v40 + v12, v7);
      Dependency.wrappedValue.getter();
      v14(v10, v7);
      v17 = [*(*sub_1000080F8(v43 v44) + 16)];
      if (v17)
      {

        sub_10000839C(v43);
        sub_100257F84(1, v37, v38, sub_100257DB0, 0);
      }

      else
      {

        sub_10000839C(v43);
        sub_100005814(&qword_1003E4610, &qword_100347AD0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10033EB30;
        *(inited + 32) = 0x72456E496E676953;
        *(inited + 40) = 0xEB00000000726F72;
        type metadata accessor for AASignInError(0);
        v42 = -8014;
        sub_100212324(_swiftEmptyArrayStorage);
        sub_100259B80(&qword_1003D8338, type metadata accessor for AASignInError, &unk_10033DC64);
        _BridgedStoredNSError.init(_:userInfo:)();
        *(inited + 48) = v43[0];
        v35 = sub_100308AA8(inited);
        swift_setDeallocating();
        sub_100008D3C(inited + 32, &qword_1003E4618, qword_100349CF0);
        sub_100257DB0(0, v35);
      }
    }

    else
    {
      sub_10000839C(v43);
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100008D04(v30, qword_1003FAAB8);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "No account signed in. Skipping AppleID Availability activity.", v33, 2u);
      }
    }
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAAB8);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Lost reference to self. Aborting AppleID Availability XPC activity", v29, 2u);
    }
  }

  return sub_10030FF34(v18, v19, v20, v21, v22, v23, v24, v25, v37);
}

void sub_100257DB0(char a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100008D04(v3, qword_1003FAAB8);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315138;
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v8 = Dictionary.description.getter();
      v10 = sub_10021145C(v8, v9, &v12);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Overall AppleID Availability activity failed: %s", v6, 0xCu);
      sub_10000839C(v7);
    }

    if (a1)
    {
      v11 = objc_opt_self();

      [v11 isHealthCheckTTREnabled];
    }
  }
}

uint64_t sub_100257F84(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v67 = a5;
  v65 = a4;
  v77 = a2;
  v78 = a3;
  LODWORD(v83) = a1;
  v72 = type metadata accessor for DispatchWorkItemFlags();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for DispatchQoS.QoSClass();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v62 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  v69 = type metadata accessor for DispatchQoS();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = dispatch_group_create();
  v81 = swift_allocObject();
  *(v81 + 16) = &_swiftEmptyDictionarySingleton;
  v15 = sub_100071C74();
  v82 = "shouldOverrideInterval";
  (*(v11 + 104))(v13, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v10);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100259B80(&qword_1003DAB90, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100005814(&unk_1003E6290, &qword_10033F570);
  sub_1000834A8(&qword_1003DABA0, &unk_1003E6290, &qword_10033F570);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v66 = v9;
  v61 = v15;
  v80 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v82 = swift_allocObject();
  *(v82 + 16) = 0;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v76 = sub_100008D04(v16, qword_1003FAAB8);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v19 = 136315138;
    v21 = v83;
    if (v83)
    {
      v22 = 0x656C756465686353;
    }

    else
    {
      v22 = 0x6E616D6544206E4FLL;
    }

    v23 = sub_10021145C(v22, 0xE900000000000064, aBlock);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v17, v18, "Starting %s Apple ID Availability activities.", v19, 0xCu);
    sub_10000839C(v20);
  }

  else
  {

    v21 = v83;
  }

  v25 = *(v79 + 16);
  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = v25 + 32;
    LODWORD(v79) = v21 & 1;
    if (v21)
    {
      v28 = 0x656C756465686353;
    }

    else
    {
      v28 = 0x6E616D6544206E4FLL;
    }

    v74 = v28;
    *&v24 = 136315394;
    v73 = v24;
    v75 = v14;
    do
    {
      v83 = v26;
      sub_100040738(v27, aBlock);
      dispatch_group_enter(v14);
      sub_100040738(aBlock, &v89);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v29 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        *v29 = v73;
        v30 = sub_10021145C(v74, 0xE900000000000064, &v84);

        *(v29 + 4) = v30;
        *(v29 + 12) = 2080;
        sub_1000080F8(&v89, v90);
        swift_getDynamicType();
        v31 = _typeName(_:qualified:)();
        v33 = v32;
        sub_10000839C(&v89);
        v34 = sub_10021145C(v31, v33, &v84);

        *(v29 + 14) = v34;
        _os_log_impl(&_mh_execute_header, v43, v44, "Starting %s Apple ID Availability activity - %s", v29, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_10000839C(&v89);
      }

      v35 = v86;
      v36 = v87;
      sub_1000080F8(aBlock, v86);
      sub_100040738(aBlock, &v89);
      v37 = swift_allocObject();
      *(v37 + 16) = v79;
      sub_10003E950(&v89, v37 + 24);
      v38 = v80;
      v39 = v81;
      *(v37 + 64) = v80;
      *(v37 + 72) = v39;
      v14 = v75;
      *(v37 + 80) = v82;
      *(v37 + 88) = v14;
      v40 = *(v36 + 2);
      v41 = v38;

      v42 = v14;
      v40(v77, v78, sub_100259AF0, v37, v35, v36);

      sub_10000839C(aBlock);
      v27 += 40;
      v26 = v83 - 1;
    }

    while (v83 != 1);
    v45 = v79;
  }

  else
  {
    v45 = v21 & 1;
  }

  v46 = v63;
  v47 = v62;
  v48 = v64;
  (*(v63 + 104))(v62, enum case for DispatchQoS.QoSClass.default(_:), v64);
  v83 = static OS_dispatch_queue.global(qos:)();
  (*(v46 + 8))(v47, v48);
  v49 = swift_allocObject();
  v50 = v80;
  v51 = v81;
  *(v49 + 16) = v80;
  *(v49 + 24) = v45;
  v52 = v65;
  *(v49 + 32) = v51;
  *(v49 + 40) = v52;
  v53 = v82;
  *(v49 + 48) = v67;
  *(v49 + 56) = v53;
  v87 = sub_100259B54;
  v88 = v49;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  v86 = &unk_1003B16A8;
  v54 = _Block_copy(aBlock);
  v55 = v50;

  v56 = v66;
  static DispatchQoS.unspecified.getter();
  *&v89 = _swiftEmptyArrayStorage;
  sub_100259B80(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  v57 = v70;
  v58 = v72;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v59 = v83;
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v54);

  (*(v71 + 8))(v57, v58);
  (*(v68 + 8))(v56, v69);
}

void sub_1002589E0(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, NSObject *a7)
{
  v65 = a7;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v18 = __chkstk_darwin(v17);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v60 = v21;
    v61 = v19;
    v63 = v18;
    v64 = a4;
    swift_errorRetain();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v59 = a5;
    v62 = v16;
    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAAB8);
    sub_100040738(a3, &aBlock);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v58 = v14;
      v26 = v25;
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *&v73[0] = v57;
      *v26 = 136315650;
      if (a2)
      {
        v27 = 0x656C756465686353;
      }

      else
      {
        v27 = 0x6E616D6544206E4FLL;
      }

      v28 = sub_10021145C(v27, 0xE900000000000064, v73);

      *(v26 + 4) = v28;
      *(v26 + 12) = 2080;
      sub_1000080F8(&aBlock, v70);
      swift_getDynamicType();
      v29 = _typeName(_:qualified:)();
      v31 = v30;
      sub_10000839C(&aBlock);
      v32 = sub_10021145C(v29, v31, v73);

      *(v26 + 14) = v32;
      *(v26 + 22) = 2112;
      v33 = _convertErrorToNSError(_:)();
      *(v26 + 24) = v33;
      v34 = v56;
      *v56 = v33;
      _os_log_impl(&_mh_execute_header, v23, v24, "%s %s Apple ID Availability activity failed with error %@", v26, 0x20u);
      sub_100008D3C(v34, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();

      v14 = v58;
    }

    else
    {

      sub_10000839C(&aBlock);
    }

    sub_1000080F8(a3, a3[3]);
    DynamicType = swift_getDynamicType();
    v46 = a3[4];
    aBlock = DynamicType;
    v68 = v46;
    sub_100005814(&unk_1003E62A0, qword_100347AD8);
    v47 = String.init<A>(describing:)();
    v49 = v48;
    sub_100040738(a3, v73);
    v50 = swift_allocObject();
    v51 = v59;
    v50[2] = a1;
    v50[3] = v51;
    v50[4] = v47;
    v50[5] = v49;
    v50[6] = a6;
    sub_10003E950(v73, (v50 + 7));
    v71 = sub_100259C78;
    v72 = v50;
    aBlock = _NSConcreteStackBlock;
    v68 = 1107296256;
    v69 = sub_100031EF0;
    v70 = &unk_1003B1748;
    v52 = _Block_copy(&aBlock);
    swift_errorRetain();

    v53 = v60;
    static DispatchQoS.unspecified.getter();
    v66 = _swiftEmptyArrayStorage;
    sub_100259B80(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100005814(&unk_1003DABE0, &unk_10033EC20);
    sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
    v54 = v62;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v52);

    (*(v14 + 8))(v54, v13);
    (*(v61 + 8))(v53, v63);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100008D04(v35, qword_1003FAAB8);
    sub_100040738(a3, &aBlock);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *&v73[0] = swift_slowAlloc();
      *v38 = 136315394;
      if (a2)
      {
        v39 = 0x656C756465686353;
      }

      else
      {
        v39 = 0x6E616D6544206E4FLL;
      }

      v40 = sub_10021145C(v39, 0xE900000000000064, v73);

      *(v38 + 4) = v40;
      *(v38 + 12) = 2080;
      sub_1000080F8(&aBlock, v70);
      swift_getDynamicType();
      v41 = _typeName(_:qualified:)();
      v43 = v42;
      sub_10000839C(&aBlock);
      v44 = sub_10021145C(v41, v43, v73);

      *(v38 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v36, v37, "%s %s Apple ID Availability activity completed.", v38, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10000839C(&aBlock);
    }
  }

  dispatch_group_leave(v65);
}

uint64_t sub_100259158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = _convertErrorToNSError(_:)();
  v13 = [v12 aa_partialErrorsByName];

  if (v13)
  {
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v14 + 16))
    {

      sub_100259C8C(v14, (a2 + 16), a3, a4);

      goto LABEL_6;
    }
  }

  swift_beginAccess();

  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(a2 + 16);
  *(a2 + 16) = 0x8000000000000000;
  sub_1002CEFC4(a1, a3, a4, isUniquelyReferenced_nonNull_native);

  *(a2 + 16) = v20;
  swift_endAccess();
LABEL_6:
  swift_beginAccess();
  if (*(a5 + 16))
  {
    v16 = 1;
  }

  else
  {
    v17 = a6[3];
    v18 = a6[4];
    sub_1000080F8(a6, v17);
    v16 = (*(v18 + 24))(v17, v18);
  }

  result = swift_beginAccess();
  *(a5 + 16) = v16 & 1;
  return result;
}

uint64_t sub_100259330(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a1;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v15 = *(v22 - 8);
  __chkstk_darwin(v22);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a2 & 1;
  *(v18 + 24) = a3;
  *(v18 + 32) = a4;
  *(v18 + 40) = a5;
  *(v18 + 48) = a6;
  aBlock[4] = sub_100259C10;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003B16F8;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_100259B80(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v12 + 8))(v14, v11);
  (*(v15 + 8))(v17, v22);
}

uint64_t sub_100259614(char a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, uint64_t a5)
{
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100008D04(v9, qword_1003FAAB8);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v22 = a3;
    v12 = swift_slowAlloc();
    v23[0] = swift_slowAlloc();
    *v12 = 136315394;
    if (a1)
    {
      v13 = 0x656C756465686353;
    }

    else
    {
      v13 = 0x6E616D6544206E4FLL;
    }

    v14 = sub_10021145C(v13, 0xE900000000000064, v23);

    *(v12 + 4) = v14;
    *(v12 + 12) = 2080;
    swift_beginAccess();

    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    v15 = Dictionary.description.getter();
    v17 = v16;

    v18 = sub_10021145C(v15, v17, v23);

    *(v12 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "Overall %s Apple ID Availability activities finished with errors: %s", v12, 0x16u);
    swift_arrayDestroy();

    a3 = v22;
  }

  swift_beginAccess();
  v19 = *(a5 + 16);
  swift_beginAccess();
  v20 = *(a2 + 16);

  a3(v19, v20);
}

uint64_t sub_1002598A4()
{

  v1 = OBJC_IVAR____TtC13appleaccountd35AppleIDAvailabilityActivityProvider__accountStore;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppleIDAvailabilityActivityProvider(uint64_t a1)
{
  result = qword_1003E4520;
  if (!qword_1003E4520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002599A8(uint64_t a1)
{
  sub_1001CFA84(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100259A50()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100259A98()
{
  sub_10000839C((v0 + 24));

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_100259B04()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_100259B68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100259B80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100259BC8()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_100259C20()
{

  sub_10000839C((v0 + 56));

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_100259C8C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v35 = v9;
  v36 = v5;
  v37 = a2;
  while (v8)
  {
LABEL_11:
    v12 = __clz(__rbit64(v8)) | (v10 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(a1 + 56) + 8 * v12);

    swift_errorRetain();

    v17._countAndFlagsBits = 58;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);
    v18._countAndFlagsBits = v14;
    v18._object = v15;
    String.append(_:)(v18);
    swift_beginAccess();
    swift_errorRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *a2;
    v41 = *a2;
    *a2 = 0x8000000000000000;
    v22 = sub_1003084DC(a3, a4);
    v23 = *(v20 + 16);
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_24;
    }

    v26 = v21;
    if (*(v20 + 24) >= v25)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v29 = v41;
        if (v21)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1002CFE94();
        v29 = v41;
        if (v26)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1002CC470(v25, isUniquelyReferenced_nonNull_native);
      v27 = sub_1003084DC(a3, a4);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_26;
      }

      v22 = v27;
      v29 = v41;
      if (v26)
      {
LABEL_4:
        *(v29[7] + 8 * v22) = v16;

        goto LABEL_5;
      }
    }

    v29[(v22 >> 6) + 8] |= 1 << v22;
    v30 = (v29[6] + 16 * v22);
    *v30 = a3;
    v30[1] = a4;
    *(v29[7] + 8 * v22) = v16;
    v31 = v29[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_25;
    }

    v29[2] = v33;
LABEL_5:
    v8 &= v8 - 1;
    a2 = v37;
    *v37 = v29;
    swift_endAccess();

    v9 = v35;
    v5 = v36;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
    }

    v8 = *(v5 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100259F38()
{
  type metadata accessor for AppleIDAvailabilityHealthCheck(0);
  sub_100005814(&qword_1003E4940, &qword_100347B38);
  result = String.init<A>(describing:)();
  qword_1003FA970 = result;
  *algn_1003FA978 = v1;
  return result;
}

id sub_100259F8C()
{
  v1 = v0;
  v2 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v35 - v4;
  v6 = sub_100005814(&qword_1003DB0C0, &unk_10033FC00);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v35 - v8;
  if (!sub_10025CC8C(&selRef_continuationTokenForAccount_))
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAAB8);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v35[0] = v23;
      *v22 = 136315138;
      if (qword_1003D7E58 != -1)
      {
        swift_once();
      }

      *(v22 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, v35);
      _os_log_impl(&_mh_execute_header, v20, v21, "%s - Could not get Continuation Key, Apple ID is NOT available.", v22, 0xCu);
      sub_10000839C(v23);
    }

    type metadata accessor for AAError(0);
    v18 = -4413;
    goto LABEL_30;
  }

  (*(v7 + 16))(v9, v0 + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__followUpController, v6);
  Dependency.wrappedValue.getter();
  (*(v7 + 8))(v9, v6);
  v10 = v36;
  v11 = v37;
  sub_1000080F8(v35, v36);
  v12 = (*(v11 + 40))(v10, v11);
  sub_10000839C(v35);
  if (v12)
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100008D04(v13, qword_1003FAAB8);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v35[0] = v17;
      *v16 = 136315138;
      if (qword_1003D7E58 != -1)
      {
        swift_once();
      }

      *(v16 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, v35);
      _os_log_impl(&_mh_execute_header, v14, v15, "%s - Renew Credentials CFU is posted, Apple ID is NOT available.", v16, 0xCu);
      sub_10000839C(v17);
    }

    type metadata accessor for AAError(0);
    v18 = -4412;
LABEL_30:
    v38 = v18;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001530B4();
    _BridgedStoredNSError.init(_:userInfo:)();
    return v35[0];
  }

  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__cdpController, v2);
  Dependency.wrappedValue.getter();
  (*(v3 + 8))(v5, v2);
  v24 = objc_opt_self();
  result = [v24 sharedInstance];
  if (result)
  {
    v26 = result;
    v27 = [result contextForPrimaryAccount];

    if (!v27)
    {
      sub_10000839C(v35);
LABEL_23:
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100008D04(v30, qword_1003FAAB8);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v35[0] = v34;
        *v33 = 136315138;
        if (qword_1003D7E58 != -1)
        {
          swift_once();
        }

        *(v33 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, v35);
        _os_log_impl(&_mh_execute_header, v31, v32, "%s - Octagon trust is not healthy, Apple ID is NOT available.", v33, 0xCu);
        sub_10000839C(v34);
      }

      type metadata accessor for AAError(0);
      v18 = -4414;
      goto LABEL_30;
    }

    result = [v24 sharedInstance];
    if (result)
    {
      v28 = result;
      v29 = [result isOTEnabledForContext:v27];

      sub_10000839C(v35);
      if (v29)
      {
        return 0;
      }

      goto LABEL_23;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10025A660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v11 - 8);
  v13 = &v24 - v12;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100008D04(v14, qword_1003FAAB8);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v24 = v10;
    v17 = a1;
    v18 = a3;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25 = v20;
    *v19 = 136315138;
    if (qword_1003D7E58 != -1)
    {
      swift_once();
    }

    *(v19 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, &v25);
    _os_log_impl(&_mh_execute_header, v15, v16, "%s - started.", v19, 0xCu);
    sub_10000839C(v20);

    a3 = v18;
    a1 = v17;
    v10 = v24;
  }

  else
  {
  }

  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v5;
  v22[5] = a1;
  v22[6] = a2;
  v22[7] = a3;
  v22[8] = a4;
  v22[9] = v10;

  sub_1000BCD5C(0, 0, v13, &unk_100347B48, v22);
}

uint64_t sub_10025A928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[26] = a7;
  v8[27] = a8;
  v8[25] = a4;
  v9 = sub_100005814(&qword_1003E4948, &qword_100347B50);
  v8[28] = v9;
  v8[29] = *(v9 - 8);
  v8[30] = swift_task_alloc();
  v10 = sub_100005814(&qword_1003E4950, &qword_100347B58);
  v8[31] = v10;
  v8[32] = *(v10 - 8);
  v8[33] = swift_task_alloc();
  v11 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v8[34] = v11;
  v8[35] = *(v11 - 8);
  v8[36] = swift_task_alloc();
  v12 = sub_100005814(&unk_1003E1260, &qword_10033FBA0);
  v8[37] = v12;
  v8[38] = *(v12 - 8);
  v8[39] = swift_task_alloc();
  v13 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v8[40] = v13;
  v8[41] = *(v13 - 8);
  v8[42] = swift_task_alloc();

  return _swift_task_switch(sub_10025AB9C, 0, 0);
}

uint64_t sub_10025AB9C()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 320);
  v4 = kAAAnalyticsEventAppleIDHealthCheck;
  (*(v2 + 16))(v1, *(v0 + 200) + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__accountStore, v3);
  v5 = v4;
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v6 = [*(*sub_1000080F8((v0 + 16) *(v0 + 40)) + 16)];
  if (v6 && (v7 = v6, v8 = [v6 aa_altDSID], v7, v8))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10000839C((v0 + 16));
    v9 = v5;
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    sub_10000839C((v0 + 16));
    v11 = v5;
    v10 = 0;
  }

  v12 = [objc_opt_self() analyticsEventWithName:v5 altDSID:v10 flowID:0];
  *(v0 + 344) = v12;

  if (v12)
  {
    v13 = v12;
    v14 = sub_10025BE9C();
    if (v14)
    {
      v15 = v14;
      v17 = *(v0 + 304);
      v16 = *(v0 + 312);
      v18 = *(v0 + 296);
      (*(v17 + 16))(v16, *(v0 + 200) + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__akAccountManager, v18);
      Dependency.wrappedValue.getter();
      (*(v17 + 8))(v16, v18);
      v19 = *(v0 + 192);
      [v19 securityLevelForAccount:v15];
    }

    v21 = *(v0 + 280);
    v20 = *(v0 + 288);
    v22 = *(v0 + 272);
    v23 = *(v0 + 200);
    isa = UInt._bridgeToObjectiveC()().super.super.isa;
    [v13 setObject:isa forKeyedSubscript:kAAAnalyticsSecurityLevel];

    (*(v21 + 16))(v20, v23 + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__cdpController, v22);
    v25 = v13;
    Dependency.wrappedValue.getter();
    (*(v21 + 8))(v20, v22);
    v26 = [objc_allocWithZone(ACAccountStore) init];
    v27 = [v26 aa_primaryAppleAccount];

    if (v27)
    {
      v28 = [v27 aa_personID];

      if (v28)
      {
        [objc_opt_self() isICDPEnabledForDSID:v28];
      }
    }

    v29 = Bool._bridgeToObjectiveC()().super.super.isa;
    sub_10000839C((v0 + 136));
    [v25 setObject:v29 forKeyedSubscript:kAAAnalyticsCdpStatus];
  }

  v31 = *(v0 + 304);
  v30 = *(v0 + 312);
  v32 = *(v0 + 296);
  v33 = *(v0 + 200);
  v34 = sub_10025BE9C();
  (*(v31 + 16))(v30, v33 + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__akAccountManager, v32);
  Dependency.wrappedValue.getter();
  (*(v31 + 8))(v30, v32);
  v35 = *(v0 + 176);
  if (!v34)
  {
    goto LABEL_17;
  }

  v36 = [*(v0 + 176) idmsWalrusStatusForAccount:v34];

  if (v36)
  {
    if (v12)
    {
      [v36 integerValue];
      v35 = Int._bridgeToObjectiveC()().super.super.isa;
      [v12 setObject:v35 forKeyedSubscript:kAAAnalyticsIdmsWalrusStatus];
    }

    else
    {
      v35 = v36;
    }

LABEL_17:
  }

  sub_100016034(0, &qword_1003E4958, AAFDeviceInfo_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v38 = [ObjCClassFromMetadata respondsToSelector:Selector.init(_:)()];
  if (v12 && v38)
  {
    v40 = *(v0 + 256);
    v39 = *(v0 + 264);
    v41 = *(v0 + 248);
    (*(v40 + 16))(v39, *(v0 + 200) + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__deviceInfo, v41);
    v42 = v12;
    Dependency.wrappedValue.getter();
    (*(v40 + 8))(v39, v41);
    v43 = *(v0 + 184);
    v44 = [v43 localSecretType];

    v45 = String._bridgeToObjectiveC()();
    [v42 setObject:v44 forKeyedSubscript:v45];
  }

  sub_10025CE14(v12);
  v46 = swift_task_alloc();
  *(v0 + 352) = v46;
  *v46 = v0;
  v46[1] = sub_10025B1AC;

  return sub_10025D16C(v12);
}

uint64_t sub_10025B1AC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v6 = *v1;
  *(v2 + 360) = a1;

  v4 = swift_task_alloc();
  *(v2 + 368) = v4;
  *v4 = v6;
  v4[1] = sub_10025B310;

  return sub_10025D6A8(v3);
}

uint64_t sub_10025B310()
{

  return _swift_task_switch(sub_10025B40C, 0, 0);
}

uint64_t sub_10025B40C()
{
  v54 = v0;
  v1 = *(v0 + 344);
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = *(v0 + 224);
  v5 = *(v0 + 200);
  sub_10025DCB4(v1);
  v6 = sub_10025BE9C();
  sub_10025C2CC(v1, v6);

  sub_10025C708(v1);
  (*(v3 + 16))(v2, v5 + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__featureFlagStateProvider, v4);
  Dependency.wrappedValue.getter();
  (*(v3 + 8))(v2, v4);
  *(v0 + 120) = &type metadata for AAFeatureFlags;
  v7 = sub_10015B62C();
  *(v0 + 96) = 6;
  *(v0 + 128) = v7;
  LOBYTE(v1) = isFeatureEnabled(_:)();
  sub_10000839C((v0 + 56));
  sub_10000839C((v0 + 96));
  if (v1)
  {
    v8 = *(v0 + 344);
    v9 = swift_task_alloc();
    *(v0 + 376) = v9;
    *v9 = v0;
    v9[1] = sub_10025B9E4;

    return sub_10025F0D8(v8);
  }

  else
  {
    v11 = sub_10025EAA8();
    if (v11)
    {
      v12 = v11;
      sub_100016034(0, &qword_1003D8D68, NSNumber_ptr);
      isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
      v14 = static NSObject.== infix(_:_:)();

      if (v14)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }
    }

    else
    {
      v15 = 1;
    }

    sub_10025F024(*(v0 + 344), v15);
    v16 = sub_10025ECC8();
    if (v16)
    {
      v17 = v16;
      [v16 unsignedIntegerValue];
    }

    v18 = *(v0 + 344);
    if (v18)
    {
      v19 = UInt._bridgeToObjectiveC()().super.super.isa;
      [v18 setObject:v19 forKeyedSubscript:kAAAnalyticsRecordViabilityState];

      v20 = *(v0 + 344);
    }

    else
    {
      v20 = 0;
    }

    sub_10025E0C0(v20);
    v21 = sub_100259F8C();
    v22 = v21;
    if (v20)
    {
      v23 = *(v0 + 344);
      v24 = v22;
      v25 = Bool._bridgeToObjectiveC()().super.super.isa;
      [v23 setObject:v25 forKeyedSubscript:kAAFDidSucceed];
    }

    else
    {
      v26 = v21;
    }

    v27 = *(v0 + 360);
    v28 = *(v0 + 344);
    v29 = sub_10025BE9C();
    sub_10025F848(v28);

    v30 = sub_10025C154(v22, v27);
    v31 = v30;
    if (v28)
    {
      v32 = *(v0 + 344);
      if (v30)
      {
        v33 = v32;
        v34 = _convertErrorToNSError(_:)();
        v35 = *(v0 + 344);
      }

      else
      {
        v35 = v32;
        v34 = 0;
      }

      [v35 updateTaskResultWithError:v34];
    }

    v52 = v22;
    v36 = v31;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v37 = *(v0 + 344);
    v38 = type metadata accessor for Logger();
    sub_100008D04(v38, qword_1003FAAB8);
    v39 = v37;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v53 = v44;
      *v42 = 136315394;
      if (qword_1003D7E58 != -1)
      {
        swift_once();
      }

      v45 = *(v0 + 344);
      *(v42 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, &v53);
      *(v42 + 12) = 2112;
      *(v42 + 14) = v45;
      *v43 = v45;
      v46 = v45;
      _os_log_impl(&_mh_execute_header, v40, v41, "%s - Reporting AppleID Availability Healthcheck event %@", v42, 0x16u);
      sub_100008D3C(v43, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v44);
    }

    v47 = *(v0 + 344);
    if (v47)
    {
      v48 = *(*(v0 + 200) + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck_reportEvent);
      v49 = v47;

      v48(v49);

      v50 = *(v0 + 344);
    }

    else
    {
      v50 = 0;
    }

    (*(v0 + 208))(v36);

    v51 = *(v0 + 8);

    return v51();
  }
}