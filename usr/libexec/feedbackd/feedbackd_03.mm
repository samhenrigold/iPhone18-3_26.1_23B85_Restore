uint64_t sub_10004E358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v8 = type metadata accessor for UUID();
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();

  return _swift_task_switch(sub_10004E41C, 0, 0);
}

uint64_t sub_10004E41C(uint64_t a1)
{
  v2 = v1[5];
  static Strings.Daemon.bundleIdentifier.getter();
  v7 = v3;

  v4._object = 0x800000010006CA80;
  v4._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v4);

  v1[12] = v7;
  String.utf8CString.getter();
  os_transaction_create();

  swift_unknownObjectRelease();
  v5 = *(v2 + OBJC_IVAR____TtC9feedbackd25CentralizedFeedbackDaemon_biomeReader);
  v1[13] = v5;
  v1[14] = [objc_allocWithZone(BMSQLDatabase) init];

  return _swift_task_switch(sub_10004E51C, v5, 0);
}

uint64_t sub_10004E51C()
{
  v0[15] = CFBBiomeReader.fetchDonation(donationID:database:)(v0[6], v0[14]);
  v0[16] = 0;

  return _swift_task_switch(sub_10004E5B4, 0, 0);
}

uint64_t sub_10004E5B4()
{
  v42 = v0;
  if (!v0[15])
  {
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v2 = v0[10];
    v1 = v0[11];
    v3 = v0[9];
    v4 = v0[6];
    v5 = type metadata accessor for Logger();
    sub_100002D00(v5, qword_100083AE0);
    (*(v2 + 16))(v1, v4, v3);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v10 = v0[10];
    v9 = v0[11];
    v11 = v0[9];
    if (v8)
    {
      v12 = swift_slowAlloc();
      v41[0] = swift_slowAlloc();
      *v12 = 136446723;
      *(v12 + 4) = sub_1000049B8(0xD000000000000025, 0x800000010006CA50, v41);
      *(v12 + 12) = 2160;
      *(v12 + 14) = 1752392040;
      *(v12 + 22) = 2081;
      v13 = UUID.uuidString.getter();
      v15 = v14;
      (*(v10 + 8))(v9, v11);
      v16 = sub_1000049B8(v13, v15, v41);

      *(v12 + 24) = v16;
      _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s could not find Donation: %{private,mask.hash}s", v12, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v10 + 8))(v9, v11);
    }
  }

  v17 = v0[15];
  v18 = v0[16];
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v0[4] = v17;
  sub_100004F70(&qword_100083B80, &qword_100069B70);
  sub_1000558E8();
  v19 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v21 = v0[15];
  if (v18)
  {

    v0[2] = v18;
    swift_errorRetain();
    sub_100004F70(&unk_1000833F0, &unk_100068F00);
    sub_100008714(0, &qword_100082D08, NSError_ptr);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      return result;
    }

    v23 = v0[3];
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100002D00(v24, qword_100083AE0);
    v25 = v23;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v41[0] = swift_slowAlloc();
      *v28 = 136446466;
      *(v28 + 4) = sub_1000049B8(0xD000000000000025, 0x800000010006CA50, v41);
      *(v28 + 12) = 2080;
      v29 = v25;
      v30 = [v29 description];
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      v34 = sub_1000049B8(v31, v33, v41);

      *(v28 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v26, v27, "%{public}s error: %s", v28, 0x16u);
      swift_arrayDestroy();
    }

    v35 = v0[7];
    v36 = v25;
    v35(0, 0xF000000000000000, v25);
  }

  else
  {
    v37 = v0[7];
    v38 = v19;
    v39 = v20;

    sub_100013D40(v38, v39);
    v37(v38, v39, 0);
    sub_100013C98(v38, v39);
    sub_100013C98(v38, v39);
  }

  v40 = v0[1];

  return v40();
}

uint64_t sub_10004EB18()
{
  v18 = v0;
  v0[2] = v0[16];
  swift_errorRetain();
  sub_100004F70(&unk_1000833F0, &unk_100068F00);
  sub_100008714(0, &qword_100082D08, NSError_ptr);
  result = swift_dynamicCast();
  if (result)
  {

    v2 = v0[3];
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100002D00(v3, qword_100083AE0);
    v4 = v2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v7 = 136446466;
      *(v7 + 4) = sub_1000049B8(0xD000000000000025, 0x800000010006CA50, &v17);
      *(v7 + 12) = 2080;
      v8 = v4;
      v9 = [v8 description];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = sub_1000049B8(v10, v12, &v17);

      *(v7 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s error: %s", v7, 0x16u);
      swift_arrayDestroy();
    }

    v14 = v0[7];
    v15 = v4;
    v14(0, 0xF000000000000000, v4);

    v16 = v0[1];

    return v16();
  }

  return result;
}

uint64_t sub_10004EE14(void *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t, uint64_t))
{
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = a1;
  a7(v14, a6, v16);

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_10004EF58(int a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - v11;
  if (qword_100082680 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100002D00(v13, qword_100083AE0);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v31 = v4;
    v17 = a4;
    v18 = a1;
    v19 = a2;
    v20 = a3;
    v21 = v16;
    v22 = swift_slowAlloc();
    v32 = v22;
    *v21 = 136446210;
    *(v21 + 4) = sub_1000049B8(0xD00000000000002CLL, 0x800000010006CA20, &v32);
    _os_log_impl(&_mh_execute_header, v14, v15, "%{public}s", v21, 0xCu);
    sub_100005ED8(v22);

    a3 = v20;
    a2 = v19;
    a1 = v18;
    a4 = v17;
    v5 = v31;
  }

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v32 = v26;
    *v25 = 136446210;
    *(v25 + 4) = sub_1000049B8(0xD000000000000043, 0x800000010006C9D0, &v32);
    _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s", v25, 0xCu);
    sub_100005ED8(v26);
  }

  static TaskPriority.userInitiated.getter();
  v27 = type metadata accessor for TaskPriority();
  (*(*(v27 - 8) + 56))(v12, 0, 1, v27);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = v5;
  *(v28 + 40) = a1;
  *(v28 + 44) = a2 & 1;
  *(v28 + 48) = _swiftEmptyArrayStorage;
  *(v28 + 56) = a3;
  *(v28 + 64) = a4;
  v29 = v5;

  sub_100059484(0, 0, v12, &unk_100069B58, v28);

  return sub_1000071C8(v12, &qword_1000833B0, &qword_100068D60);
}

uint64_t sub_10004F378(int a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  __chkstk_darwin(v12 - 8);
  v14 = &v30 - v13;
  if (qword_100082680 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100002D00(v15, qword_100083AE0);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v30 = a3;
    v31 = v19;
    v20 = a5;
    v21 = v6;
    v22 = a1;
    v23 = a2;
    v24 = a4;
    v25 = v19;
    *v18 = 136446210;
    *(v18 + 4) = sub_1000049B8(0xD000000000000043, 0x800000010006C9D0, &v31);
    _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s", v18, 0xCu);
    sub_100005ED8(v25);
    a4 = v24;
    a2 = v23;
    a1 = v22;
    v6 = v21;
    a5 = v20;
    a3 = v30;
  }

  static TaskPriority.userInitiated.getter();
  v26 = type metadata accessor for TaskPriority();
  (*(*(v26 - 8) + 56))(v14, 0, 1, v26);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = v6;
  *(v27 + 40) = a1;
  *(v27 + 44) = a2 & 1;
  *(v27 + 48) = a3;
  *(v27 + 56) = a4;
  *(v27 + 64) = a5;

  v28 = v6;
  sub_100059484(0, 0, v14, &unk_100069B48, v27);

  return sub_1000071C8(v14, &qword_1000833B0, &qword_100068D60);
}

uint64_t sub_10004F62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = a8;
  *(v8 + 64) = v10;
  *(v8 + 116) = a6;
  *(v8 + 112) = a5;
  *(v8 + 40) = a4;
  *(v8 + 48) = a7;
  return _swift_task_switch(sub_10004F660, 0, 0);
}

uint64_t sub_10004F660(uint64_t a1)
{
  static Strings.Daemon.bundleIdentifier.getter();
  v10 = v2;

  v3._countAndFlagsBits = 0x6F4468637465662ELL;
  v3._object = 0xEF736E6F6974616ELL;
  String.append(_:)(v3);

  *(v1 + 72) = v10;
  String.utf8CString.getter();
  os_transaction_create();

  swift_unknownObjectRelease();
  v4 = [objc_allocWithZone(BMSQLDatabase) init];
  *(v1 + 80) = v4;
  v5 = swift_task_alloc();
  *(v1 + 88) = v5;
  *v5 = v1;
  v5[1] = sub_10004F7AC;
  v6 = *(v1 + 48);
  v7 = *(v1 + 116);
  v8 = *(v1 + 112);

  return CFBBiomeReader.fetchDonations(count:fromLatest:excludingEvaluationIDs:database:)(v8, v7, v6, v4);
}

uint64_t sub_10004F7AC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_10004FD90;
  }

  else
  {

    v4 = sub_10004F8C8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10004F8C8()
{
  v31 = v0;
  v1 = v0[12];
  if (v1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_8;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

  if (qword_100082680 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100002D00(v2, qword_100083AE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v30[0] = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_1000049B8(0xD000000000000043, 0x800000010006C9D0, v30);
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s could not find any donations", v5, 0xCu);
    sub_100005ED8(v6);
  }

LABEL_8:
  v7 = v0[12];
  v8 = v0[13];
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v0[4] = v7;
  sub_100004F70(&qword_100083B68, &qword_100069B50);
  sub_1000556A4();
  v9 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v8)
  {

    v0[2] = v8;
    swift_errorRetain();
    sub_100004F70(&unk_1000833F0, &unk_100068F00);
    sub_100008714(0, &qword_100082D08, NSError_ptr);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      return result;
    }

    v12 = v0[3];
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100002D00(v13, qword_100083AE0);
    v14 = v12;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v30[0] = swift_slowAlloc();
      *v17 = 136446466;
      *(v17 + 4) = sub_1000049B8(0xD000000000000043, 0x800000010006C9D0, v30);
      *(v17 + 12) = 2080;
      v18 = v14;
      v19 = [v18 description];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = sub_1000049B8(v20, v22, v30);

      *(v17 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s error: %s", v17, 0x16u);
      swift_arrayDestroy();
    }

    v24 = v0[7];
    v25 = v14;
    v24(0, 0xF000000000000000, v14);
  }

  else
  {
    v26 = v0[7];
    v27 = v9;
    v28 = v10;

    sub_100013D40(v27, v28);
    v26(v27, v28, 0);
    sub_100013C98(v27, v28);
    sub_100013C98(v27, v28);
  }

  v29 = v0[1];

  return v29();
}

uint64_t sub_10004FD90()
{
  v18 = v0;

  *(v0 + 16) = *(v0 + 104);
  swift_errorRetain();
  sub_100004F70(&unk_1000833F0, &unk_100068F00);
  sub_100008714(0, &qword_100082D08, NSError_ptr);
  result = swift_dynamicCast();
  if (result)
  {

    v2 = *(v0 + 24);
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100002D00(v3, qword_100083AE0);
    v4 = v2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v7 = 136446466;
      *(v7 + 4) = sub_1000049B8(0xD000000000000043, 0x800000010006C9D0, &v17);
      *(v7 + 12) = 2080;
      v8 = v4;
      v9 = [v8 description];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = sub_1000049B8(v10, v12, &v17);

      *(v7 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s error: %s", v7, 0x16u);
      swift_arrayDestroy();
    }

    v14 = *(v0 + 56);
    v15 = v4;
    v14(0, 0xF000000000000000, v4);

    v16 = *(v0 + 8);

    return v16();
  }

  return result;
}

uint64_t sub_1000500A8(int a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  __chkstk_darwin(v12 - 8);
  v14 = &v30 - v13;
  if (qword_100082680 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100002D00(v15, qword_100083AE0);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v30 = a3;
    v31 = v19;
    v20 = a5;
    v21 = v6;
    v22 = a1;
    v23 = a2;
    v24 = a4;
    v25 = v19;
    *v18 = 136446210;
    *(v18 + 4) = sub_1000049B8(0xD000000000000045, 0x800000010006C980, &v31);
    _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s", v18, 0xCu);
    sub_100005ED8(v25);
    a4 = v24;
    a2 = v23;
    a1 = v22;
    v6 = v21;
    a5 = v20;
    a3 = v30;
  }

  static TaskPriority.userInitiated.getter();
  v26 = type metadata accessor for TaskPriority();
  (*(*(v26 - 8) + 56))(v14, 0, 1, v26);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = v6;
  *(v27 + 40) = a1;
  *(v27 + 44) = a2 & 1;
  *(v27 + 48) = a3;
  *(v27 + 56) = a4;
  *(v27 + 64) = a5;

  v28 = v6;
  sub_100059484(0, 0, v14, &unk_100069B30, v27);

  return sub_1000071C8(v14, &qword_1000833B0, &qword_100068D60);
}

uint64_t sub_10005035C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = a8;
  *(v8 + 56) = v10;
  *(v8 + 100) = a6;
  *(v8 + 96) = a5;
  *(v8 + 32) = a4;
  *(v8 + 40) = a7;
  return _swift_task_switch(sub_100050390, 0, 0);
}

uint64_t sub_100050390(uint64_t a1)
{
  v2 = v1[4];
  static Strings.Daemon.bundleIdentifier.getter();
  v7 = v3;

  v4._countAndFlagsBits = 0x6F4468637465662ELL;
  v4._object = 0xEF736E6F6974616ELL;
  String.append(_:)(v4);

  v1[8] = v7;
  String.utf8CString.getter();
  os_transaction_create();

  swift_unknownObjectRelease();
  v5 = *(v2 + OBJC_IVAR____TtC9feedbackd25CentralizedFeedbackDaemon_biomeReader);
  v1[9] = [objc_allocWithZone(BMSQLDatabase) init];

  return _swift_task_switch(sub_100050494, v5, 0);
}

uint64_t sub_100050494()
{
  *(v0 + 80) = sub_100005FD0(*(v0 + 96), *(v0 + 100), *(v0 + 40), *(v0 + 72));
  *(v0 + 88) = 0;

  return _swift_task_switch(sub_100050534, 0, 0);
}

uint64_t sub_100050534()
{
  v30 = v0;
  if (!*(v0[10] + 16))
  {
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100002D00(v1, qword_100083AE0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v29[0] = v5;
      *v4 = 136446210;
      *(v4 + 4) = sub_1000049B8(0xD000000000000045, 0x800000010006C980, v29);
      _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s could not find any donations", v4, 0xCu);
      sub_100005ED8(v5);
    }
  }

  v6 = v0[10];
  v7 = v0[11];
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v0[2] = v6;
  sub_100004F70(&qword_100083B50, &qword_100069B38);
  sub_1000554FC();
  v8 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v7)
  {

    v0[2] = v7;
    swift_errorRetain();
    sub_100004F70(&unk_1000833F0, &unk_100068F00);
    sub_100008714(0, &qword_100082D08, NSError_ptr);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      return result;
    }

    v11 = v0[3];
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100002D00(v12, qword_100083AE0);
    v13 = v11;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v29[0] = swift_slowAlloc();
      *v16 = 136446466;
      *(v16 + 4) = sub_1000049B8(0xD000000000000045, 0x800000010006C980, v29);
      *(v16 + 12) = 2080;
      v17 = v13;
      v18 = [v17 description];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = sub_1000049B8(v19, v21, v29);

      *(v16 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v14, v15, "%{public}s error: %s", v16, 0x16u);
      swift_arrayDestroy();
    }

    v23 = v0[6];
    v24 = v13;
    v23(0, 0xF000000000000000, v13);
  }

  else
  {
    v25 = v0[6];
    v26 = v8;
    v27 = v9;

    sub_100013D40(v26, v27);
    v25(v26, v27, 0);
    sub_100013C98(v26, v27);
    sub_100013C98(v26, v27);
  }

  v28 = v0[1];

  return v28();
}

uint64_t sub_1000509D8()
{
  v18 = v0;
  v0[2] = v0[11];
  swift_errorRetain();
  sub_100004F70(&unk_1000833F0, &unk_100068F00);
  sub_100008714(0, &qword_100082D08, NSError_ptr);
  result = swift_dynamicCast();
  if (result)
  {

    v2 = v0[3];
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100002D00(v3, qword_100083AE0);
    v4 = v2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v7 = 136446466;
      *(v7 + 4) = sub_1000049B8(0xD000000000000045, 0x800000010006C980, &v17);
      *(v7 + 12) = 2080;
      v8 = v4;
      v9 = [v8 description];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = sub_1000049B8(v10, v12, &v17);

      *(v7 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s error: %s", v7, 0x16u);
      swift_arrayDestroy();
    }

    v14 = v0[6];
    v15 = v4;
    v14(0, 0xF000000000000000, v4);

    v16 = v0[1];

    return v16();
  }

  return result;
}

uint64_t sub_100050CE8(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *aBlock, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v14 = _Block_copy(aBlock);
  if (a5)
  {
    a5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = a1;
  a9(a3, a4, a5, a8, v15);
}

uint64_t sub_100050DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  v9 = type metadata accessor for FBKSRemoteAlertRequest();
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();
  v10 = type metadata accessor for FBKSRemoteEvaluationRequest();
  v8[11] = v10;
  v8[12] = *(v10 - 8);
  v8[13] = swift_task_alloc();
  sub_100004F70(&unk_100083BB0, &unk_100069420);
  v8[14] = swift_task_alloc();
  type metadata accessor for FBKSEvaluation.Action();
  v8[15] = swift_task_alloc();
  v11 = type metadata accessor for Failure();
  v8[16] = v11;
  v8[17] = *(v11 - 8);
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v8[20] = v12;
  v8[21] = *(v12 - 8);
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v13 = type metadata accessor for FBKSEvaluation.Subject();
  v8[26] = v13;
  v8[27] = *(v13 - 8);
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v14 = type metadata accessor for FBKSEvaluation.Subject.RemoteEvaluation();
  v8[30] = v14;
  v8[31] = *(v14 - 8);
  v8[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000510F0, 0, 0);
}

uint64_t sub_1000510F0(uint64_t a1)
{
  v81 = v1;
  v80[0] = static Strings.Daemon.bundleIdentifier.getter();
  v80[1] = v2;

  v3._countAndFlagsBits = 0x4565746F6D65722ELL;
  v3._object = 0xEF657461756C6176;
  String.append(_:)(v3);

  String.utf8CString.getter();

  os_transaction_create();

  swift_unknownObjectRelease();
  sub_100058B7C(&unk_100083BF0, &type metadata accessor for FBKSEvaluation.Subject.RemoteEvaluation, &protocol conformance descriptor for FBKSEvaluation.Subject.RemoteEvaluation);
  static JSONCodable.decode(from:)();
  v1[33] = 0;
  v4 = v1[29];
  v5 = v1[26];
  v6 = v1[27];
  FBKSEvaluation.Subject.RemoteEvaluation.subject.getter();
  v7 = (*(v6 + 88))(v4, v5);
  if (v7 == enum case for FBKSEvaluation.Subject.id(_:))
  {
    v8 = v1[29];
    v9 = v1[25];
    v10 = v1[20];
    v11 = v1[21];
    (*(v1[27] + 96))(v8, v1[26]);
    (*(v11 + 32))(v9, v8, v10);
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v12 = v1[24];
    v13 = v1[25];
    v14 = v1[20];
    v15 = v1[21];
    v16 = type metadata accessor for Logger();
    v1[34] = sub_100002D00(v16, qword_100083AE0);
    v17 = *(v15 + 16);
    v1[35] = v17;
    v1[36] = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v17(v12, v13, v14);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v1[24];
    v22 = v1[20];
    v23 = v1[21];
    if (v20)
    {
      v24 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v80[0] = v77;
      *v24 = 136446210;
      sub_100058B7C(&unk_100083BC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      v28 = *(v23 + 8);
      v28(v21, v22);
      v29 = sub_1000049B8(v25, v27, v80);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v18, v19, "Fetching donation for donationId %{public}s", v24, 0xCu);
      sub_100005ED8(v77);
    }

    else
    {

      v28 = *(v23 + 8);
      v28(v21, v22);
    }

    v1[37] = v28;
    v46 = *(v1[5] + OBJC_IVAR____TtC9feedbackd25CentralizedFeedbackDaemon_biomeReader);
    v1[38] = v46;
    v1[39] = [objc_allocWithZone(BMSQLDatabase) init];

    return _swift_task_switch(sub_100051C40, v46, 0);
  }

  else if (v7 == enum case for FBKSEvaluation.Subject.interaction(_:))
  {
    v30 = v7;
    v31 = v1[29];
    (*(v1[27] + 96))(v31, v1[26]);
    v32 = *v31;
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100002D00(v33, qword_100083AE0);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Using Interaction", v36, 2u);
    }

    v1[42] = v32;
    if (FBKSEvaluation.Subject.RemoteEvaluation.showFeedbackForm.getter())
    {
      v37 = v1[12];
      v38 = v1[13];
      v39 = v1[10];
      v40 = v1[11];
      v41 = v1[9];
      v78 = v1[8];
      FBKSEvaluation.Subject.RemoteEvaluation.action.getter();
      v42 = v32;
      FBKSEvaluation.Subject.RemoteEvaluation.showFeedbackForm.getter();
      FBKSEvaluation.Subject.RemoteEvaluation.associateWithAppleAccount.getter();
      FBKSRemoteEvaluationRequest.init(action:interaction:showFeedbackForm:associateWithAppleAccount:)();
      type metadata accessor for LaunchController();
      swift_initStaticObject();
      (*(v37 + 16))(v39, v38, v40);
      (*(v41 + 104))(v39, enum case for FBKSRemoteAlertRequest.evaluation(_:), v78);
      v43 = swift_task_alloc();
      v1[47] = v43;
      *v43 = v1;
      v43[1] = sub_100052890;
      v44 = v1[10];

      return sub_10003C914(v44);
    }

    else
    {
      if (qword_100082680 != -1)
      {
        swift_once();
      }

      sub_100002D00(v33, qword_100083AE0);
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&_mh_execute_header, v62, v63, "Client doesn't now want to show feedback form. Will record evaluation now and exit", v64, 2u);
      }

      v66 = v1[27];
      v65 = v1[28];
      v67 = v1[26];
      v68 = v1[14];

      *v65 = v32;
      (*(v66 + 104))(v65, v30, v67);
      v69 = v32;
      FBKSEvaluation.Subject.RemoteEvaluation.action.getter();
      v70 = type metadata accessor for FBKSEvaluation.FormResponse();
      (*(*(v70 - 8) + 56))(v68, 1, 1, v70);
      v71 = type metadata accessor for FBKSEvaluation();
      v1[43] = v71;
      v72 = objc_allocWithZone(v71);
      v73 = FBKSEvaluation.init(subject:action:formResponse:)();
      v1[44] = v73;
      v74 = swift_task_alloc();
      v1[45] = v74;
      *v74 = v1;
      v74[1] = sub_1000524A4;
      v75 = v1[22];

      return sub_10004C3A0(v75, v73, 1);
    }
  }

  else
  {
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_100002D00(v47, qword_100083AE0);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v80[0] = v51;
      *v50 = 136315138;
      *(v50 + 4) = sub_1000049B8(0xD000000000000034, 0x800000010006CCB0, v80);
      _os_log_impl(&_mh_execute_header, v48, v49, "Unknown default in %s", v50, 0xCu);
      sub_100005ED8(v51);
    }

    v52 = v1[6];
    Failure.init(message:)();
    v54 = v1[31];
    v53 = v1[32];
    v55 = v1[30];
    v57 = v1[17];
    v56 = v1[18];
    v58 = v1[16];
    if (v52)
    {
      v79 = v1[32];
      v59 = v1[6];
      sub_100058B7C(&qword_100083BE8, &type metadata accessor for Failure, &protocol conformance descriptor for Failure);
      swift_allocError();
      (*(v57 + 16))(v60, v56, v58);
      v61 = _convertErrorToNSError(_:)();
      v59(0, 0xF000000000000000, v61);

      (*(v57 + 8))(v56, v58);
      (*(v54 + 8))(v79, v55);
    }

    else
    {
      (*(v57 + 8))(v1[18], v1[16]);
      (*(v54 + 8))(v53, v55);
    }

    (*(v1[27] + 8))(v1[29], v1[26]);

    v76 = v1[1];

    return v76();
  }
}

uint64_t sub_100051C40()
{
  v1 = v0[33];
  v0[40] = CFBBiomeReader.fetchDonation(donationID:database:)(v0[25], v0[39]);
  v0[41] = v1;

  if (v1)
  {
    v2 = sub_100052C18;
  }

  else
  {
    v2 = sub_100051CD8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100051CD8()
{
  v56 = v0;
  v1 = *(v0 + 320);
  if (v1)
  {
    (*(v0 + 296))(*(v0 + 200), *(v0 + 160));
    *(v0 + 336) = v1;
    if (FBKSEvaluation.Subject.RemoteEvaluation.showFeedbackForm.getter())
    {
      v2 = *(v0 + 96);
      v3 = *(v0 + 104);
      v4 = *(v0 + 80);
      v5 = *(v0 + 88);
      v6 = *(v0 + 72);
      v52 = *(v0 + 64);
      FBKSEvaluation.Subject.RemoteEvaluation.action.getter();
      v7 = v1;
      FBKSEvaluation.Subject.RemoteEvaluation.showFeedbackForm.getter();
      FBKSEvaluation.Subject.RemoteEvaluation.associateWithAppleAccount.getter();
      FBKSRemoteEvaluationRequest.init(action:interaction:showFeedbackForm:associateWithAppleAccount:)();
      type metadata accessor for LaunchController();
      swift_initStaticObject();
      (*(v2 + 16))(v4, v3, v5);
      (*(v6 + 104))(v4, enum case for FBKSRemoteAlertRequest.evaluation(_:), v52);
      v8 = swift_task_alloc();
      *(v0 + 376) = v8;
      *v8 = v0;
      v8[1] = sub_100052890;
      v9 = *(v0 + 80);

      return sub_10003C914(v9);
    }

    else
    {
      if (qword_100082680 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_100002D00(v22, qword_100083AE0);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "Client doesn't now want to show feedback form. Will record evaluation now and exit", v25, 2u);
      }

      v27 = *(v0 + 216);
      v26 = *(v0 + 224);
      v28 = *(v0 + 208);
      v29 = *(v0 + 112);

      *v26 = v1;
      (*(v27 + 104))(v26, enum case for FBKSEvaluation.Subject.interaction(_:), v28);
      v30 = v1;
      FBKSEvaluation.Subject.RemoteEvaluation.action.getter();
      v31 = type metadata accessor for FBKSEvaluation.FormResponse();
      (*(*(v31 - 8) + 56))(v29, 1, 1, v31);
      v32 = type metadata accessor for FBKSEvaluation();
      *(v0 + 344) = v32;
      v33 = objc_allocWithZone(v32);
      v34 = FBKSEvaluation.init(subject:action:formResponse:)();
      *(v0 + 352) = v34;
      v35 = swift_task_alloc();
      *(v0 + 360) = v35;
      *v35 = v0;
      v35[1] = sub_1000524A4;
      v36 = *(v0 + 176);

      return sub_10004C3A0(v36, v34, 1);
    }
  }

  else
  {
    (*(v0 + 280))(*(v0 + 184), *(v0 + 200), *(v0 + 160));
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 296);
    v15 = *(v0 + 184);
    v16 = *(v0 + 160);
    if (v13)
    {
      v17 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v17 = 136446723;
      *(v17 + 4) = sub_1000049B8(0xD000000000000034, 0x800000010006CCB0, &v54);
      *(v17 + 12) = 2160;
      *(v17 + 14) = 1752392040;
      *(v17 + 22) = 2081;
      v18 = UUID.uuidString.getter();
      v20 = v19;
      v14(v15, v16);
      v21 = sub_1000049B8(v18, v20, &v54);

      *(v17 + 24) = v21;
      _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s could not find Donation: %{private,mask.hash}s", v17, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v14(v15, v16);
    }

    v37 = *(v0 + 48);
    v54 = 0;
    v55 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v54 = 0xD000000000000020;
    v55 = 0x800000010006CD40;
    sub_100058B7C(&unk_100083BC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v38._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v38);

    Failure.init(message:)();
    v39 = *(v0 + 296);
    v40 = *(v0 + 248);
    v41 = *(v0 + 256);
    v42 = *(v0 + 240);
    v43 = *(v0 + 200);
    v53 = *(v0 + 160);
    v44 = *(v0 + 152);
    v46 = *(v0 + 128);
    v45 = *(v0 + 136);
    if (v37)
    {
      v51 = *(v0 + 48);
      sub_100058B7C(&qword_100083BE8, &type metadata accessor for Failure, &protocol conformance descriptor for Failure);
      swift_allocError();
      (*(v45 + 16))(v47, v44, v46);
      v50 = v42;
      v48 = _convertErrorToNSError(_:)();
      v51(0, 0xF000000000000000, v48);

      (*(v45 + 8))(v44, v46);
      v39(v43, v53);
      (*(v40 + 8))(v41, v50);
    }

    else
    {
      (*(v45 + 8))(*(v0 + 152), *(v0 + 128));
      v39(v43, v53);
      (*(v40 + 8))(v41, v42);
    }

    v49 = *(v0 + 8);

    return v49();
  }
}

uint64_t sub_1000524A4()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = sub_100052DA0;
  }

  else
  {
    (*(v2[21] + 8))(v2[22], v2[20]);
    v3 = sub_1000525D0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000525D0()
{
  v1 = v0[6];
  if (v1)
  {
    v2 = v0[46];
    v3 = v0[44];
    type metadata accessor for JSONEncoder();
    swift_allocObject();

    JSONEncoder.init()();
    v0[2] = v3;
    sub_100058B7C(&unk_100083BA0, &type metadata accessor for FBKSEvaluation, &protocol conformance descriptor for FBKSEvaluation);
    v4 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v6 = v2;
    v7 = v0[44];
    v20 = v0[42];
    v8 = v0[31];
    v9 = v0[30];
    v11 = v0[6];
    v10 = v0[7];
    if (v6)
    {
      (*(v8 + 8))(v0[32], v0[30]);

      sub_100047508(v11, v10);

      v12 = _convertErrorToNSError(_:)();
      v1(0, 0xF000000000000000, v12);
    }

    else
    {
      v15 = v4;
      v16 = v5;
      v19 = v0[32];

      sub_100013D40(v15, v16);
      v1(v15, v16, 0);

      sub_100047508(v11, v10);
      sub_100013C98(v15, v16);
      sub_100013C98(v15, v16);

      (*(v8 + 8))(v19, v9);
    }
  }

  else
  {
    v13 = v0[44];
    v14 = v0[42];
    (*(v0[31] + 8))(v0[32], v0[30]);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_100052890()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);
  if (v0)
  {
    v3 = sub_100052F1C;
  }

  else
  {
    v3 = sub_1000529F8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000529F8()
{
  if (qword_100082680 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100002D00(v1, qword_100083AE0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Did finish launching hidden app", v4, 2u);
  }

  v5 = *(v0 + 48);

  if (v5)
  {
    (*(v0 + 48))(0, 0xF000000000000000, 0);
  }

  v7 = *(v0 + 248);
  v6 = *(v0 + 256);
  v8 = *(v0 + 240);
  v10 = *(v0 + 96);
  v9 = *(v0 + 104);
  v11 = *(v0 + 88);

  (*(v10 + 8))(v9, v11);
  (*(v7 + 8))(v6, v8);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100052C18()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 240);
  (*(v0 + 296))(*(v0 + 200), *(v0 + 160));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 48);
  if (v4)
  {
    v5 = _convertErrorToNSError(_:)();
    v4(0, 0xF000000000000000, v5);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100052DA0()
{
  v1 = *(v0 + 336);
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);
  v4 = *(v0 + 240);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 48);
  if (v5)
  {
    v6 = _convertErrorToNSError(_:)();
    v5(0, 0xF000000000000000, v6);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100052F1C()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 240);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 88);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = *(v0 + 48);
  if (v7)
  {
    v8 = _convertErrorToNSError(_:)();
    v7(0, 0xF000000000000000, v8);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

void sub_100053208()
{
  v1 = type metadata accessor for FeedbackFeatureFlags();
  v14 = v1;
  v15 = sub_100058B7C(&qword_100083B48, &type metadata accessor for FeedbackFeatureFlags, &protocol conformance descriptor for FeedbackFeatureFlags);
  v2 = sub_100019A2C(v13);
  (*(*(v1 - 8) + 104))(v2, enum case for FeedbackFeatureFlags.BatchEvaluation(_:), v1);
  LOBYTE(v1) = isFeatureEnabled(_:)();
  sub_100005ED8(v13);
  if (v1)
  {
    v3 = [objc_opt_self() sharedScheduler];
    static Strings.Daemon.CheckDonationsTaskIdentifier.getter();
    v4 = String._bridgeToObjectiveC()();

    v5 = swift_allocObject();
    *(v5 + 16) = v0;
    v15 = sub_100055294;
    v16 = v5;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_100054838;
    v14 = &unk_10007E870;
    v6 = _Block_copy(v13);
    v7 = v0;

    [v3 registerForTaskWithIdentifier:v4 usingQueue:0 launchHandler:v6];
    _Block_release(v6);
  }

  else
  {
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100002D00(v8, qword_100083AE0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13[0] = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_1000049B8(0xD000000000000018, 0x800000010006C940, v13);
      _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s not registering background task because BatchEvaluation is disabled.", v11, 0xCu);
      sub_100005ED8(v12);
    }
  }
}

uint64_t sub_1000534E0(void *a1, void *a2)
{
  v4 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  __chkstk_darwin(v4 - 8);
  v6 = aBlock - v5;
  if (qword_100082680 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100002D00(v7, qword_100083AE0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock[0] = v11;
    *v10 = 136446210;
    v12 = static Strings.Daemon.CheckDonationsTaskIdentifier.getter();
    v14 = sub_1000049B8(v12, v13, aBlock);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "Registering task %{public}s) with feedbackd.", v10, 0xCu);
    sub_100005ED8(v11);
  }

  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a1;
  v16[5] = a2;
  v17 = a1;
  v18 = a2;
  v19 = sub_100059788(0, 0, v6, &unk_100069B18, v16);
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  *(v20 + 24) = v19;
  aBlock[4] = sub_1000553FC;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100059744;
  aBlock[3] = &unk_10007E8E8;
  v21 = _Block_copy(aBlock);
  v22 = v17;

  [v22 setExpirationHandler:v21];
  _Block_release(v21);
}

uint64_t sub_1000537D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return _swift_task_switch(sub_1000537F4, 0, 0);
}

uint64_t sub_1000537F4()
{
  *(v0 + 72) = 0;
  if (static Task<>.isCancelled.getter())
  {
    sub_100054244((v0 + 72), *(v0 + 24));
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 40) = v3;
    *v3 = v0;
    v3[1] = sub_1000538D0;

    return sub_1000548A0();
  }
}

uint64_t sub_1000538D0(char a1)
{
  *(*v1 + 73) = a1;

  return _swift_task_switch(sub_1000539D0, 0, 0);
}

uint64_t sub_1000539D0()
{
  if (*(v0 + 73) == 1)
  {
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    *(v0 + 48) = sub_100002D00(v1, qword_100083AE0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Triggering notification for batch evaluation", v4, 2u);
    }

    if (qword_1000825C0 != -1)
    {
      swift_once();
    }

    v5 = swift_task_alloc();
    *(v0 + 56) = v5;
    *v5 = v0;
    v5[1] = sub_100053CD0;

    return sub_100008A14();
  }

  else
  {
    *(v0 + 72) = 1;
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 24);
    v8 = type metadata accessor for Logger();
    sub_100002D00(v8, qword_100083AE0);
    v9 = v7;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 24);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      *(v13 + 4) = v12;
      *v14 = v12;
      v15 = v12;
      _os_log_impl(&_mh_execute_header, v10, v11, "Setting %{public}@ completed", v13, 0xCu);
      sub_1000071C8(v14, &qword_100082708, &qword_100068320);
    }

    v16 = *(v0 + 24);

    [v16 setTaskCompleted];
    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_100053CD0()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_100053F80;
  }

  else
  {
    v2 = sub_100053DE4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100053DE4()
{
  *(v0 + 72) = 1;
  if (qword_100082680 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = type metadata accessor for Logger();
  sub_100002D00(v2, qword_100083AE0);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 24);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Setting %{public}@ completed", v7, 0xCu);
    sub_1000071C8(v8, &qword_100082708, &qword_100068320);
  }

  v10 = *(v0 + 24);

  [v10 setTaskCompleted];
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100053F80()
{
  v22 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 64);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v21 = v5;
    *v4 = 136446210;
    *(v0 + 16) = v3;
    swift_errorRetain();
    sub_100004F70(&unk_1000833F0, &unk_100068F00);
    v6 = String.init<A>(describing:)();
    v8 = sub_1000049B8(v6, v7, &v21);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Post notification error: %{public}s", v4, 0xCu);
    sub_100005ED8(v5);
  }

  else
  {
  }

  *(v0 + 72) = 1;
  if (qword_100082680 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 24);
  v10 = type metadata accessor for Logger();
  sub_100002D00(v10, qword_100083AE0);
  v11 = v9;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 24);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138543362;
    *(v15 + 4) = v14;
    *v16 = v14;
    v17 = v14;
    _os_log_impl(&_mh_execute_header, v12, v13, "Setting %{public}@ completed", v15, 0xCu);
    sub_1000071C8(v16, &qword_100082708, &qword_100068320);
  }

  v18 = *(v0 + 24);

  [v18 setTaskCompleted];
  v19 = *(v0 + 8);

  return v19();
}

id sub_100054244(_BYTE *a1, void *a2)
{
  if (*a1 == 1)
  {
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100002D00(v3, qword_100083AE0);
    v4 = a2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138543362;
      *(v7 + 4) = v4;
      *v8 = v4;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v5, v6, "Setting %{public}@ completed", v7, 0xCu);
      sub_1000071C8(v8, &qword_100082708, &qword_100068320);
    }

    return [v4 setTaskCompleted];
  }

  else
  {
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100002D00(v11, qword_100083AE0);
    v12 = a2;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138543362;
      *(v15 + 4) = v12;
      *v16 = v12;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v13, v14, "Task %{public}@ was cancelled", v15, 0xCu);
      sub_1000071C8(v16, &qword_100082708, &qword_100068320);
    }

    v26 = 0;
    if ([v12 setTaskExpiredWithRetryAfter:&v26 error:300.0])
    {

      return _objc_retain_x1();
    }

    else
    {
      v18 = v26;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_errorRetain();
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v26 = v22;
        *v21 = 136446210;
        swift_errorRetain();
        sub_100004F70(&unk_1000833F0, &unk_100068F00);
        v23 = String.init<A>(describing:)();
        v25 = sub_1000049B8(v23, v24, &v26);

        *(v21 + 4) = v25;
        _os_log_impl(&_mh_execute_header, v19, v20, "Failed to expire background system task with error: %{public}s", v21, 0xCu);
        sub_100005ED8(v22);
      }

      [v12 setTaskCompleted];
    }
  }
}

void sub_1000546C4(void *a1)
{
  if (qword_100082680 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100002D00(v2, qword_100083AE0);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "Notification task %{public}@ expired", v6, 0xCu);
    sub_1000071C8(v7, &qword_100082708, &qword_100068320);
  }

  Task.cancel()();
}

void sub_100054838(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1000548C0()
{
  v14 = v0;
  v1 = type metadata accessor for FeedbackFeatureFlags();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_100058B7C(&qword_100083B48, &type metadata accessor for FeedbackFeatureFlags, &protocol conformance descriptor for FeedbackFeatureFlags);
  v2 = sub_100019A2C((v0 + 16));
  (*(*(v1 - 8) + 104))(v2, enum case for FeedbackFeatureFlags.BatchEvaluation(_:), v1);
  LOBYTE(v1) = isFeatureEnabled(_:)();
  sub_100005ED8((v0 + 16));
  if (v1)
  {
    if (qword_1000826A0 != -1)
    {
      swift_once();
    }

    v3 = dword_100083AFC;
    *(v0 + 112) = dword_100083AFC;
    v4 = [objc_allocWithZone(BMSQLDatabase) init];
    *(v0 + 80) = v4;
    v5 = swift_task_alloc();
    *(v0 + 88) = v5;
    *v5 = v0;
    v5[1] = sub_100054BC4;

    return CFBBiomeReader.fetchDonations(count:fromLatest:excludingEvaluationIDs:database:)(v3, 0, 0, v4);
  }

  else
  {
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100002D00(v7, qword_100083AE0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_1000049B8(0xD000000000000015, 0x800000010006C920, &v13);
      _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s returns false because BatchEvaluation is disabled.", v10, 0xCu);
      sub_100005ED8(v11);
    }

    v12 = *(v0 + 8);

    return v12(0);
  }
}

uint64_t sub_100054BC4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_100054F10;
  }

  else
  {

    v4 = sub_100054CE0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100054CE0()
{
  v16 = v0;
  v1 = *(v0 + 96);
  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = *(v0 + 112);
  if (v2 < v3)
  {
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100002D00(v4, qword_100083AE0);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = v14;
      *v7 = 136315394;
      v8 = static Strings.Daemon.CheckDonationsTaskIdentifier.getter();
      v10 = sub_1000049B8(v8, v9, &v15);

      *(v7 + 4) = v10;
      *(v7 + 12) = 2048;
      if (v1 >> 62)
      {
        v11 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v11 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v7 + 14) = v11;

      _os_log_impl(&_mh_execute_header, v5, v6, "%s Do not have enough donations to trigger notification. %ld", v7, 0x16u);
      sub_100005ED8(v14);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12(v2 >= v3);
}

uint64_t sub_100054F10()
{
  v20 = v0;
  v1 = *(v0 + 104);

  *(v0 + 56) = v1;
  sub_100004F70(&unk_1000833F0, &unk_100068F00);
  sub_100008714(0, &qword_100082D08, NSError_ptr);
  result = swift_dynamicCast();
  if (result)
  {
    v3 = *(v0 + 64);
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100002D00(v4, qword_100083AE0);
    v5 = v3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v8 = 136315394;
      v9 = static Strings.Daemon.CheckDonationsTaskIdentifier.getter();
      v11 = sub_1000049B8(v9, v10, &v19);

      *(v8 + 4) = v11;
      *(v8 + 12) = 2080;
      v12 = v5;
      v13 = [v12 description];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = sub_1000049B8(v14, v16, &v19);

      *(v8 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v6, v7, "%s error: %s", v8, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v18 = *(v0 + 8);

    return v18(0);
  }

  return result;
}

id sub_1000551A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CentralizedFeedbackDaemon();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10005525C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005529C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000552B4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000552FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002E084;

  return sub_1000537D4(a1, v4, v5, v7, v6);
}

uint64_t sub_1000553BC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100055408(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 44);
  v9 = *(v1 + 48);
  v10 = *(v1 + 56);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002E084;

  return sub_10005035C(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1000554FC()
{
  result = qword_100083B58;
  if (!qword_100083B58)
  {
    sub_100005F88(&qword_100083B50, &qword_100069B38);
    sub_100058B7C(&qword_100083B60, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083B58);
  }

  return result;
}

uint64_t sub_1000555B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 44);
  v9 = *(v1 + 48);
  v10 = *(v1 + 56);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002E084;

  return sub_10004F62C(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1000556A4()
{
  result = qword_100083B70;
  if (!qword_100083B70)
  {
    sub_100005F88(&qword_100083B68, &qword_100069B50);
    sub_100058B7C(&qword_100083B78, &type metadata accessor for FBKSDonation, &protocol conformance descriptor for FBKSInteraction);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083B70);
  }

  return result;
}

uint64_t sub_100055758()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000557AC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10000BEA0;

  return sub_10004E358(a1, v7, v8, v9, v1 + v6, v11, v12);
}

unint64_t sub_1000558E8()
{
  result = qword_100083B88;
  if (!qword_100083B88)
  {
    sub_100005F88(&qword_100083B80, &qword_100069B70);
    sub_100058B7C(&qword_100083B78, &type metadata accessor for FBKSDonation, &protocol conformance descriptor for FBKSInteraction);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083B88);
  }

  return result;
}

uint64_t sub_10005599C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100055A80(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10002E084;

  return sub_10004D558(a1, v7, v8, v9, v1 + v6, v11, v12);
}

unint64_t sub_100055BBC()
{
  result = qword_100083B98;
  if (!qword_100083B98)
  {
    sub_100005F88(&qword_100083B90, &qword_100069B88);
    sub_100058B7C(&unk_100083BA0, &type metadata accessor for FBKSEvaluation, &protocol conformance descriptor for FBKSEvaluation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083B98);
  }

  return result;
}

uint64_t sub_100055C70()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 17, v3 | 7);
}

uint64_t sub_100055D54(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = v10[16];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10002E084;

  return sub_10004B1BC(a1, v7, v8, v9, v1 + v6, v11, v12, v13);
}

uint64_t sub_100055EA4(uint64_t a1)
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
  v11[1] = sub_10002E084;

  return sub_100049F20(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100055F80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CFBDonationCheck.Result.Invalid(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100055FE4()
{
  swift_unknownObjectRelease();
  sub_100013C98(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100056034(uint64_t a1)
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
  v11[1] = sub_10002E084;

  return sub_100048FC8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100056110()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100056150(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002E084;

  return sub_100048844(a1, v4, v5, v6);
}

void sub_100056204()
{
  v0 = type metadata accessor for FeedbackFeatureFlags();
  v64[3] = v0;
  v64[4] = sub_100058B7C(&qword_100083B48, &type metadata accessor for FeedbackFeatureFlags, &protocol conformance descriptor for FeedbackFeatureFlags);
  v1 = sub_100019A2C(v64);
  (*(*(v0 - 8) + 104))(v1, enum case for FeedbackFeatureFlags.BatchEvaluation(_:), v0);
  LOBYTE(v0) = isFeatureEnabled(_:)();
  sub_100005ED8(v64);
  if (v0)
  {
    v2 = static Strings.Daemon.CheckDonationsTaskIdentifier.getter();
    v4 = v3;
    v5 = objc_opt_self();
    v6 = [v5 sharedScheduler];
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 taskRequestForIdentifier:v7];

    if (v8)
    {
      if (qword_100082680 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_100002D00(v9, qword_100083AE0);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v64[0] = v13;
        *v12 = 136315138;
        v14 = sub_1000049B8(v2, v4, v64);

        *(v12 + 4) = v14;
        _os_log_impl(&_mh_execute_header, v10, v11, "Task request %s already exists", v12, 0xCu);
        sub_100005ED8(v13);
      }

      else
      {
      }

      v35 = v8;
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v64[0] = v39;
        *v38 = 136315138;
        v40 = [v35 description];
        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v42;

        v44 = sub_1000049B8(v41, v43, v64);

        *(v38 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v36, v37, "Existing BGST.taskRequest: %s", v38, 0xCu);
        sub_100005ED8(v39);
      }

      else
      {
      }
    }

    else
    {
      static Strings.Daemon.CheckDonationsTaskIdentifier.getter();
      v20 = objc_allocWithZone(BGRepeatingSystemTaskRequest);
      v21 = String._bridgeToObjectiveC()();

      v22 = [v20 initWithIdentifier:v21];

      v23 = v22;
      [v23 setPriority:2];
      [v23 setRequiresNetworkConnectivity:0];
      [v23 setRequiresExternalPower:0];

      if (qword_1000826A8 != -1)
      {
        swift_once();
      }

      [v23 setInterval:*&qword_100083B00];
      if (qword_100082680 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_100002D00(v24, qword_100083AE0);

      v25 = v23;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v64[0] = v30;
        *v28 = 136315394;
        *(v28 + 4) = sub_1000049B8(v2, v4, v64);
        *(v28 + 12) = 2112;
        *(v28 + 14) = v25;
        *v29 = v25;
        v31 = v25;
        _os_log_impl(&_mh_execute_header, v26, v27, "Task %s has no request, submitting request: %@", v28, 0x16u);
        sub_1000071C8(v29, &qword_100082708, &qword_100068320);

        sub_100005ED8(v30);
      }

      v32 = [v5 sharedScheduler];
      v64[0] = 0;
      v33 = [v32 submitTaskRequest:v25 error:v64];

      if (v33)
      {
        v34 = v64[0];

        return;
      }

      v45 = v64[0];
      v46 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v64[0] = v46;
      swift_errorRetain();
      sub_100004F70(&unk_1000833F0, &unk_100068F00);
      type metadata accessor for BGSystemTaskSchedulerError(0);
      if (swift_dynamicCast())
      {

        v47 = v62;
        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          *v50 = 136315394;
          v51 = sub_1000049B8(v2, v4, &v63);

          *(v50 + 4) = v51;
          *(v50 + 12) = 2080;
          sub_100058B7C(&qword_100083BE0, type metadata accessor for BGSystemTaskSchedulerError, &unk_100068BD8);
          _BridgedStoredNSError.code.getter();
          type metadata accessor for Code(0);
          v52 = String.init<A>(describing:)();
          v54 = sub_1000049B8(v52, v53, &v63);

          *(v50 + 14) = v54;
          _os_log_impl(&_mh_execute_header, v48, v49, "Task %s schedule request failed: %s", v50, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }
      }

      else
      {

        swift_errorRetain();
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v64[0] = v59;
          *v57 = 136315394;
          v60 = sub_1000049B8(v2, v4, v64);

          *(v57 + 4) = v60;
          *(v57 + 12) = 2112;
          swift_errorRetain();
          v61 = _swift_stdlib_bridgeErrorToNSError();
          *(v57 + 14) = v61;
          *v58 = v61;
          _os_log_impl(&_mh_execute_header, v55, v56, "Task %s schedule request failed: %@", v57, 0x16u);
          sub_1000071C8(v58, &qword_100082708, &qword_100068320);

          sub_100005ED8(v59);

          return;
        }
      }
    }
  }

  else
  {
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100002D00(v15, qword_100083AE0);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v64[0] = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_1000049B8(0xD000000000000018, 0x800000010006CBF0, v64);
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s not submitting background task because BatchEvaluation is disabled.", v18, 0xCu);
      sub_100005ED8(v19);
    }
  }
}

uint64_t sub_100056CD8(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FeedbackFeatureFlags();
  v32 = v4;
  v33 = sub_100058B7C(&qword_100083B48, &type metadata accessor for FeedbackFeatureFlags, &protocol conformance descriptor for FeedbackFeatureFlags);
  v5 = sub_100019A2C(&v29);
  (*(*(v4 - 8) + 104))(v5, enum case for FeedbackFeatureFlags.CentralizedFeedback(_:), v4);
  LOBYTE(v4) = isFeatureEnabled(_:)();
  sub_100005ED8(&v29);
  if ((v4 & 1) == 0)
  {
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100002D00(v11, qword_100083AE0);
    v12 = a1;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67240192;
      *(v15 + 4) = [v12 processIdentifier];

      _os_log_impl(&_mh_execute_header, v13, v14, "Centralized Feedback feature disabled. Rejecting XPC connection from: %{public}d", v15, 8u);
    }

    else
    {
    }

    return 0;
  }

  if ((sub_10004824C(&static Strings.XPC.CentralizedFeedback.entitlement.getter) & 1) == 0 && (sub_10004824C(&static Strings.XPC.CentralizedFeedback.draftingEntitlement.getter) & 1) == 0 && (sub_10004824C(&static Strings.XPC.CentralizedFeedback.remoteEvaluationEntitlement.getter) & 1) == 0)
  {
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100002D00(v24, qword_100083AE0);
    v25 = a1;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 67240192;
      *(v28 + 4) = [v25 processIdentifier];

      _os_log_impl(&_mh_execute_header, v26, v27, "Process %{public}d is not entitled to use this service. Refusing connection.", v28, 8u);
    }

    else
    {

      v26 = v25;
    }

    [v25 invalidate];
    return 0;
  }

  if (qword_100082680 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100002D00(v6, qword_100083AE0);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67240192;
    *(v10 + 4) = [v7 processIdentifier];

    _os_log_impl(&_mh_execute_header, v8, v9, "Accepting a new XPC connection from: %{public}d", v10, 8u);
  }

  else
  {

    v8 = v7;
  }

  v17 = swift_allocObject();
  *(v17 + 16) = v7;
  v33 = sub_100058BC4;
  v34 = v17;
  v29 = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_100059744;
  v32 = &unk_10007ECD0;
  v18 = _Block_copy(&v29);
  v19 = v7;

  [v19 setInterruptionHandler:v18];
  _Block_release(v18);
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v33 = sub_100058BE8;
  v34 = v20;
  v29 = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_100059744;
  v32 = &unk_10007ED20;
  v21 = _Block_copy(&v29);
  v22 = v19;

  [v22 setInvalidationHandler:v21];
  _Block_release(v21);
  v23 = [objc_allocWithZone(type metadata accessor for CentralizedFeedbackDaemonInterface()) init];
  [v22 setExportedInterface:v23];

  [v22 setExportedObject:v2];
  [v22 resume];
  return 1;
}

uint64_t sub_100057294(uint64_t a1, unint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v7 = type metadata accessor for FBKSDonation.DonationError();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100004F70(&qword_100082808, &qword_100068380);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v29 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  _Block_copy(a4);
  if (qword_100082698 != -1)
  {
    swift_once();
  }

  if (byte_100083AF8 == 1)
  {
    sub_100049CA4(a1, a2, sub_100058C5C, v17);
  }

  else
  {
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v30 = v8;
    v19 = type metadata accessor for Logger();
    sub_100002D00(v19, qword_100083AE0);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Donation not enabled", v22, 2u);
    }

    v23 = type metadata accessor for UUID();
    v24 = *(v23 - 8);
    (*(v24 + 56))(v16, 1, 1, v23);
    v25 = v30;
    (*(v30 + 104))(v10, enum case for FBKSDonation.DonationError.unsupported(_:), v7);
    sub_100058B7C(&unk_100083C10, &type metadata accessor for FBKSDonation.DonationError, &protocol conformance descriptor for FBKSDonation.DonationError);
    swift_allocError();
    (*(v25 + 32))(v26, v10, v7);
    v27 = _convertErrorToNSError(_:)();
    sub_100058868(v16, v14);
    isa = 0;
    if ((*(v24 + 48))(v14, 1, v23) != 1)
    {
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v24 + 8))(v14, v23);
    }

    (a4)[2](a4, isa, v27);

    sub_1000071C8(v16, &qword_100082808, &qword_100068380);
  }
}

uint64_t sub_1000576F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  __chkstk_darwin(v10 - 8);
  v12 = &v21 - v11;
  if (qword_100082680 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100002D00(v13, qword_100083AE0);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_1000049B8(0xD000000000000049, 0x800000010006CDC0, &v22);
    _os_log_impl(&_mh_execute_header, v14, v15, "%{public}s", v16, 0xCu);
    sub_100005ED8(v17);
  }

  static TaskPriority.userInitiated.getter();
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v12, 0, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a1;
  v19[5] = a2;
  v19[6] = a3;
  v19[7] = a4;
  v19[8] = a5;

  sub_100059484(0, 0, v12, &unk_100069C08, v19);

  return sub_1000071C8(v12, &qword_1000833B0, &qword_100068D60);
}

uint64_t sub_100057974(uint64_t a1, uint64_t a2, void *a3, const void *a4)
{
  v29 = a3;
  v5 = sub_100004F70(&qword_100082808, &qword_100068380);
  v6 = __chkstk_darwin(v5 - 8);
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v31 = &v28 - v8;
  v9 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  __chkstk_darwin(v9 - 8);
  v11 = &v28 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  _Block_copy(a4);
  if (qword_100082680 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100002D00(v13, qword_100083AE0);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v32 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_1000049B8(0xD00000000000002CLL, 0x800000010006CD70, &v32);
    _os_log_impl(&_mh_execute_header, v14, v15, "%{public}s", v16, 0xCu);
    sub_100005ED8(v17);
  }

  v18 = [objc_opt_self() currentConnection];
  if (v18)
  {
    v19 = v18;
    v20 = sub_100048154();

    v21 = v20 ^ 1;
  }

  else
  {
    v21 = 1;
  }

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  type metadata accessor for FBKSEvaluation();
  sub_100058B7C(&qword_100083C00, &type metadata accessor for FBKSEvaluation, &protocol conformance descriptor for FBKSEvaluation);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  v22 = v32;
  static TaskPriority.userInitiated.getter();
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v11, 0, 1, v23);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = v29;
  *(v24 + 32) = v29;
  *(v24 + 40) = v22;
  *(v24 + 48) = v21 & 1;
  *(v24 + 56) = sub_100058860;
  *(v24 + 64) = v12;
  v26 = v25;

  sub_100059484(0, 0, v11, &unk_100069BF8, v24);

  sub_1000071C8(v11, &qword_1000833B0, &qword_100068D60);
}

void sub_10005805C(uint64_t a1, unint64_t a2, void (*a3)(void, void, void), uint64_t a4)
{
  v5 = v4;
  v49 = a1;
  v50 = a2;
  v8 = type metadata accessor for Failure();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v51 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v47 - v12;
  v14 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  __chkstk_darwin(v14 - 8);
  v48 = &v47 - v15;
  if (qword_100082680 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100002D00(v16, qword_100083AE0);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v47 = v5;
    v20 = v13;
    v21 = a3;
    v22 = v19;
    v23 = v9;
    v24 = v8;
    v25 = a4;
    v26 = swift_slowAlloc();
    v52 = v26;
    *v22 = 136446210;
    *(v22 + 4) = sub_1000049B8(0xD000000000000034, 0x800000010006CCB0, &v52);
    _os_log_impl(&_mh_execute_header, v17, v18, "%{public}s", v22, 0xCu);
    sub_100005ED8(v26);
    a4 = v25;
    v8 = v24;
    v9 = v23;

    a3 = v21;
    v13 = v20;
    v5 = v47;
  }

  v27 = [objc_opt_self() currentConnection];
  if (v27)
  {
    v28 = v27;
    if (sub_10004824C(&static Strings.XPC.CentralizedFeedback.remoteEvaluationEntitlement.getter))
    {
      v29 = v48;
      static TaskPriority.userInitiated.getter();
      v30 = type metadata accessor for TaskPriority();
      (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
      v31 = swift_allocObject();
      v31[2] = 0;
      v31[3] = 0;
      v32 = v49;
      v33 = v50;
      v31[4] = v49;
      v31[5] = v33;
      v31[6] = v5;
      v31[7] = a3;
      v31[8] = a4;
      sub_100013D40(v32, v33);
      v34 = v5;
      sub_100045FB4(a3, a4);
      sub_100059484(0, 0, v29, &unk_100069BE0, v31);

      sub_1000071C8(v29, &qword_1000833B0, &qword_100068D60);
      return;
    }

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v52 = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_1000049B8(0xD000000000000034, 0x800000010006CCB0, &v52);
      _os_log_impl(&_mh_execute_header, v41, v42, "Client not entitled to call %s", v43, 0xCu);
      sub_100005ED8(v44);
    }

    Failure.init(message:)();
    if (a3)
    {
      sub_100058B7C(&qword_100083BE8, &type metadata accessor for Failure, &protocol conformance descriptor for Failure);
      swift_allocError();
      (*(v9 + 16))(v45, v13, v8);
      v46 = _convertErrorToNSError(_:)();
      a3(0, 0xF000000000000000, v46);

      (*(v9 + 8))(v13, v8);
      goto LABEL_16;
    }

    (*(v9 + 8))(v13, v8);
  }

  else
  {
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Current XPC connection is nil. Cannot check entitlements", v37, 2u);
    }

    v38 = v51;
    Failure.init(message:)();
    if (a3)
    {
      sub_100058B7C(&qword_100083BE8, &type metadata accessor for Failure, &protocol conformance descriptor for Failure);
      swift_allocError();
      (*(v9 + 16))(v39, v38, v8);
      v40 = _convertErrorToNSError(_:)();
      a3(0, 0xF000000000000000, v40);

      (*(v9 + 8))(v38, v8);
LABEL_16:

      return;
    }

    (*(v9 + 8))(v38, v8);
  }
}

uint64_t sub_10005872C()
{
  swift_unknownObjectRelease();
  sub_100013C98(*(v0 + 32), *(v0 + 40));

  if (*(v0 + 56))
  {
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100058784(uint64_t a1)
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
  v11[1] = sub_10002E084;

  return sub_100050DBC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100058868(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004F70(&qword_100082808, &qword_100068380);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000588D8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100058928(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002E084;

  return sub_10004BC20(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_100058A04()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100058A50()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100058AA0(uint64_t a1)
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
  v11[1] = sub_10002E084;

  return sub_10004B9EC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100058B7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for StorageError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StorageError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100058DC4(char a1)
{
  result = 0x6E756F6620746F4ELL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000034;
      break;
    case 2:
      result = 0xD00000000000002BLL;
      break;
    case 3:
      result = 0xD000000000000030;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0xD00000000000001FLL;
      break;
    case 6:
      result = 0xD00000000000001CLL;
      break;
    case 7:
      result = 0xD000000000000017;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 9:
    case 10:
      result = 0xD000000000000020;
      break;
    case 11:
      result = 0xD000000000000019;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 13:
      return result;
    case 14:
      result = 0xD00000000000002DLL;
      break;
    case 15:
      result = 0xD000000000000014;
      break;
    case 16:
      result = 0xD000000000000012;
      break;
    default:
      result = 0xD00000000000002CLL;
      break;
  }

  return result;
}

Swift::Int sub_100059024()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

Swift::Int sub_10005909C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2 + 1);
  return Hasher._finalize()();
}

uint64_t sub_1000590E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005940C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10005911C(uint64_t a1)
{
  v2 = sub_100059364();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100059158(uint64_t a1)
{
  v2 = sub_100059364();
  v3 = sub_1000593B8();
  v4 = sub_100007EA4();

  return Error<>._code.getter(a1, v2, v3, v4);
}

uint64_t sub_1000591DC(uint64_t a1, uint64_t a2)
{
  sub_1000593B8();
  sub_100007EA4();

  return CustomNSError<>.errorCode.getter();
}

unint64_t sub_100059234(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  sub_100004F70(&qword_100082E80, &qword_1000692C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100069110;
  *(inited + 32) = sub_100058DC4(v3);
  *(inited + 40) = v5;
  sub_1000593B8();
  sub_100007EA4();
  v6 = CustomNSError<>.errorCode.getter();
  *(inited + 72) = &type metadata for Int;
  *(inited + 48) = v6;
  v7 = sub_100015ADC(inited);
  swift_setDeallocating();
  sub_100047EC8(inited + 32);
  return v7;
}

unint64_t sub_100059310()
{
  result = qword_100083C20;
  if (!qword_100083C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083C20);
  }

  return result;
}

unint64_t sub_100059364()
{
  result = qword_100083C28;
  if (!qword_100083C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083C28);
  }

  return result;
}

unint64_t sub_1000593B8()
{
  result = qword_100083C30;
  if (!qword_100083C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083C30);
  }

  return result;
}

uint64_t sub_10005940C(uint64_t a1)
{
  if ((a1 - 1) >= 0x11)
  {
    return 17;
  }

  else
  {
    return a1 - 1;
  }
}

uint64_t SharedLog.unsafeMutableAddressor()
{
  if (qword_1000826B8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_100002D00(v0, SharedLog);
}

uint64_t sub_100059484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000C0A0(a3, v25 - v10, &qword_1000833B0, &qword_100068D60);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000071C8(v11, &qword_1000833B0, &qword_100068D60);
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

uint64_t sub_100059744(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100059788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000C0A0(a3, v25 - v10, &qword_1000833B0, &qword_100068D60);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000071C8(v11, &qword_1000833B0, &qword_100068D60);
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

      sub_1000071C8(a3, &qword_1000833B0, &qword_100068D60);

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

  sub_1000071C8(a3, &qword_1000833B0, &qword_100068D60);
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

uint64_t sub_100059A88()
{
  v0 = type metadata accessor for Logger();
  sub_100007284(v0, qword_100083C40);
  sub_100002D00(v0, qword_100083C40);
  static Strings.Daemon.bundleIdentifier.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100059AEC()
{
  v0 = type metadata accessor for Logger();
  sub_100007284(v0, SharedLog);
  v1 = sub_100002D00(v0, SharedLog);
  if (qword_1000826B0 != -1)
  {
    swift_once();
  }

  v2 = sub_100002D00(v0, qword_100083C40);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100059BB4()
{
  result = [objc_allocWithZone(type metadata accessor for FeedbackDaemon()) init];
  qword_100085E60 = result;
  return result;
}

id sub_100059BE4()
{
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v1);
  v2 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC9feedbackd14FeedbackDaemon_listener] = 0;
  v14 = OBJC_IVAR____TtC9feedbackd14FeedbackDaemon_syncQueue;
  v13 = sub_100008714(0, &qword_100083480, OS_dispatch_queue_ptr);
  v16 = 0;
  v17 = 0xE000000000000000;
  _StringGuts.grow(_:)(17);
  v7 = static Strings.Daemon.bundleIdentifier.getter();
  v9 = v8;

  v16 = v7;
  v17 = v9;
  v10._countAndFlagsBits = 0x636162646565662DLL;
  v10._object = 0xEF6E6F6D6561446BLL;
  String.append(_:)(v10);
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v3);
  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_100062850(&qword_100083D18, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100004F70(&qword_100083D20, &qword_100069DE8);
  sub_100062790();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v0[v14] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v0[OBJC_IVAR____TtC9feedbackd14FeedbackDaemon_connectionDelegates] = &_swiftEmptyDictionarySingleton;
  v11 = type metadata accessor for FeedbackDaemon();
  v15.receiver = v0;
  v15.super_class = v11;
  return objc_msgSendSuper2(&v15, "init");
}

void sub_100059EE8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  __chkstk_darwin(v3 - 8);
  v5 = v24 - v4;
  if (qword_1000826B0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100002D00(v6, qword_100083C40);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24[0] = v10;
    v24[1] = ObjectType;
    *v9 = 136446210;
    swift_getMetatypeMetadata();
    v11 = String.init<A>(describing:)();
    v13 = sub_1000049B8(v11, v12, v24);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Started %{public}s", v9, 0xCu);
    sub_100005ED8(v10);
  }

  static TaskPriority.utility.getter();
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v5, 0, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v1;
  v16 = v1;
  sub_100059484(0, 0, v5, &unk_100069D98, v15);

  sub_1000071C8(v5, &qword_1000833B0, &qword_100068D60);
  static Strings.XPC.machService.getter();
  v17 = objc_allocWithZone(NSXPCListener);
  v18 = String._bridgeToObjectiveC()();

  v19 = [v17 initWithMachServiceName:v18];

  v20 = OBJC_IVAR____TtC9feedbackd14FeedbackDaemon_listener;
  v21 = *&v16[OBJC_IVAR____TtC9feedbackd14FeedbackDaemon_listener];
  *&v16[OBJC_IVAR____TtC9feedbackd14FeedbackDaemon_listener] = v19;
  v22 = v19;

  if (v22)
  {
    [v22 setDelegate:v16];

    v23 = *&v16[v20];
    if (v23)
    {
      [v23 resume];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10005A20C(uint64_t a1)
{
  static Strings.Daemon.bundleIdentifier.getter();
  v2._countAndFlagsBits = 0x74726174732ELL;
  v2._object = 0xE600000000000000;
  String.append(_:)(v2);
  String.utf8CString.getter();

  os_transaction_create();

  swift_unknownObjectRelease();
  if (qword_100082610 != -1)
  {
    swift_once();
  }

  v3 = swift_task_alloc();
  *(v1 + 64) = v3;
  *v3 = v1;
  v3[1] = sub_10005A32C;

  return sub_10002273C();
}

uint64_t sub_10005A32C()
{

  return _swift_task_switch(sub_10005A428, 0, 0);
}

uint64_t sub_10005A428()
{
  v1 = static Strings.Daemon.XPCActivityIdentifier.getter();
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v0[6] = sub_10005BAFC;
  v0[7] = v4;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10005B714;
  v0[5] = &unk_10007EE78;
  v5 = _Block_copy(v0 + 2);

  v6 = String.utf8CString.getter();

  xpc_activity_register((v6 + 32), XPC_ACTIVITY_CHECK_IN, v5);

  _Block_release(v5);
  v7 = v0[1];

  return v7();
}

void sub_10005A570(void *a1)
{
  if (qword_1000826B0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100002D00(v2, qword_100083C40);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = [v3 processIdentifier];

    _os_log_impl(&_mh_execute_header, oslog, v4, "XPC service connection interrupted: %{public}d", v5, 8u);

    v6 = oslog;
  }

  else
  {

    v6 = v3;
  }
}

uint64_t sub_10005A69C(void *a1, char *a2)
{
  if (qword_1000826B0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100002D00(v4, qword_100083C40);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67240192;
    *(v8 + 4) = [v5 processIdentifier];

    _os_log_impl(&_mh_execute_header, v6, v7, "XPC service connection invalidated: %{public}d", v8, 8u);
  }

  else
  {

    v6 = v5;
  }

  v9 = *&a2[OBJC_IVAR____TtC9feedbackd14FeedbackDaemon_syncQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = v5;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_100062788;
  *(v11 + 24) = v10;
  v17[4] = sub_1000628BC;
  v17[5] = v11;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_10005A960;
  v17[3] = &unk_10007F080;
  v12 = _Block_copy(v17);
  v13 = v5;
  v14 = a2;

  dispatch_sync(v9, v12);
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10005A8F0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  sub_10005C6B8(a2);
  swift_endAccess();
}

uint64_t sub_10005A988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC9feedbackd14FeedbackDaemon_connectionDelegates;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if ((v7 & 0xC000000000000001) == 0)
  {

    goto LABEL_8;
  }

  if (v7 < 0)
  {
    v8 = *(a1 + v6);
  }

  else
  {
    v8 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  result = __CocoaDictionary.count.getter();
  if (!__OFADD__(result, 1))
  {
    *(a1 + v6) = sub_10005C804(v8, result + 1);
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(a1 + v6);
    sub_10005E34C(a3, a2, isUniquelyReferenced_nonNull_native);
    *(a1 + v6) = v11;
    return swift_endAccess();
  }

  __break(1u);
  return result;
}

uint64_t sub_10005AAC8(void *a1)
{
  v2 = _convertErrorToNSError(_:)();
  v3 = [v2 domain];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  if ([v2 code] == 1)
  {
    if (qword_1000826B0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100002D00(v10, qword_100083C40);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_20;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Failed to unlock device for app launch", v13, 2u);
    goto LABEL_19;
  }

LABEL_13:
  v23 = a1;
  swift_errorRetain();
  sub_100004F70(&unk_1000833F0, &unk_100068F00);
  if ((swift_dynamicCast() & 1) != 0 && v22 == 8)
  {
    if (qword_1000826B0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100002D00(v14, qword_100083C40);
    v11 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v11, v15))
    {
      goto LABEL_20;
    }

    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23 = v17;
    *v16 = 136446210;
    v18 = sub_100015668(8u);
    v20 = sub_1000049B8(v18, v19, &v23);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v15, "[%{public}s]", v16, 0xCu);
    sub_100005ED8(v17);

LABEL_19:

LABEL_20:

    return 1;
  }

  return 0;
}

void sub_10005ADC8(_xpc_activity_s *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  __chkstk_darwin(v6 - 8);
  v8 = &v28 - v7;
  state = xpc_activity_get_state(a1);
  if (state == 2)
  {
    if (qword_1000826B0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100002D00(v14, qword_100083C40);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v29 = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_1000049B8(a2, a3, &v29);
      _os_log_impl(&_mh_execute_header, v15, v16, "Activity %{public}s: RUN", v17, 0xCu);
      sub_100005ED8(v18);
    }

    v19 = xpc_activity_set_state(a1, 4);

    v20 = Logger.logObject.getter();
    if (v19)
    {
      v21 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v29 = v23;
        *v22 = 136446210;
        *(v22 + 4) = sub_1000049B8(a2, a3, &v29);
        v24 = "Activity %{public}s: CONTINUE";
LABEL_19:
        _os_log_impl(&_mh_execute_header, v20, v21, v24, v22, 0xCu);
        sub_100005ED8(v23);
      }
    }

    else
    {
      v21 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v29 = v23;
        *v22 = 136446210;
        *(v22 + 4) = sub_1000049B8(a2, a3, &v29);
        v24 = "Failed to set activity %{public}s to CONTINUE";
        goto LABEL_19;
      }
    }

    v26 = type metadata accessor for TaskPriority();
    (*(*(v26 - 8) + 56))(v8, 1, 1, v26);
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    *(v27 + 32) = v19;
    *(v27 + 40) = a1;
    *(v27 + 48) = a2;
    *(v27 + 56) = a3;

    swift_unknownObjectRetain();
    sub_100059788(0, 0, v8, &unk_100069DC8, v27);

    return;
  }

  if (!state)
  {
    if (qword_1000826B0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100002D00(v10, qword_100083C40);

    v28 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v29 = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_1000049B8(a2, a3, &v29);
      _os_log_impl(&_mh_execute_header, v28, v11, "Activity %{public}s: CHECK_IN", v12, 0xCu);
      sub_100005ED8(v13);
    }

    else
    {
      v25 = v28;
    }
  }
}

uint64_t sub_10005B2C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 16) = a5;
  *(v7 + 48) = a4;
  return _swift_task_switch(sub_10005B2E8, 0, 0);
}

uint64_t sub_10005B2E8()
{
  if (qword_1000825D0 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_10005B3AC;

  return sub_10000D0BC();
}

uint64_t sub_10005B3AC()
{

  return _swift_task_switch(sub_10005B4A8, 0, 0);
}

uint64_t sub_10005B4A8()
{
  v15 = v0;
  if (*(v0 + 48) == 1)
  {
    if (xpc_activity_set_state(*(v0 + 16), 5))
    {
      if (qword_1000826B0 != -1)
      {
        swift_once();
      }

      v1 = type metadata accessor for Logger();
      sub_100002D00(v1, qword_100083C40);

      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v2, v3))
      {
        goto LABEL_12;
      }

      v5 = *(v0 + 24);
      v4 = *(v0 + 32);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v14 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_1000049B8(v5, v4, &v14);
      v8 = "Activity %{public}s: DONE";
    }

    else
    {
      if (qword_1000826B0 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_100002D00(v9, qword_100083C40);

      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v2, v3))
      {
        goto LABEL_12;
      }

      v11 = *(v0 + 24);
      v10 = *(v0 + 32);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v14 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_1000049B8(v11, v10, &v14);
      v8 = "Failed to set activity %{public}s to DONE";
    }

    _os_log_impl(&_mh_execute_header, v2, v3, v8, v6, 0xCu);
    sub_100005ED8(v7);

LABEL_12:
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10005B714(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id sub_10005B774()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeedbackDaemon();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10005B828()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005B868()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002E084;

  return sub_10005A1F0();
}

uint64_t sub_10005B91C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005B954(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002E084;

  return sub_10002A540(a1, v4);
}

uint64_t sub_10005BA0C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000BEA0;

  return sub_10002A540(a1, v4);
}

uint64_t sub_10005BAC4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005BB04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005BB1C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10005BB64(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000BEA0;

  return sub_10005B2C0(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_10005BC3C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_10005BC6C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10005BF4C(a1, v4);
}

unint64_t sub_10005BCB0(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10005C014(a1, a2, v4);
}

unint64_t sub_10005BD28(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for CFString(0);
  sub_100062850(&unk_100083D40, type metadata accessor for CFString, &unk_100068B68);
  _CFObject.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_10005C0CC(a1, v2);
}

unint64_t sub_10005BDDC(uint64_t a1)
{
  type metadata accessor for FBKSForm.Question();
  sub_100062850(&qword_100083D80, &type metadata accessor for FBKSForm.Question, &protocol conformance descriptor for FBKSForm.Question);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_10005C1D8(a1, v2);
}

unint64_t sub_10005BE74(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_10005C398(a1, v2);
}

unint64_t sub_10005BF08(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_10005C49C(a1, v4);
}

unint64_t sub_10005BF4C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000627F4(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100006FC4(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10005C014(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_10005C0CC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_100062850(&unk_100083D40, type metadata accessor for CFString, &unk_100068B68);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static _CFObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10005C1D8(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = type metadata accessor for FBKSForm.Question();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_100062850(&qword_100083D88, &type metadata accessor for FBKSForm.Question, &protocol conformance descriptor for FBKSForm.Question);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_10005C398(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10005C49C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_100008714(0, &qword_100083D00, NSXPCConnection_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

double sub_10005C570@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_10005BC6C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10005E5B0();
      v9 = v11;
    }

    sub_100006FC4(*(v9 + 48) + 40 * v7);
    sub_100007274((*(v9 + 56) + 32 * v7), a2);
    sub_10005DBD0(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_10005C614@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_10005BCB0(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10005E754();
      v10 = v12;
    }

    sub_100007274((*(v10 + 56) + 32 * v8), a3);
    sub_10005DD74(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_10005C6B8(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_10005BF08(a1);
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
        sub_10005DF24(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_10005EF10();
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
  v8 = sub_10005C804(v4, v7);

  v9 = sub_10005BF08(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_10005DF24(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

Swift::Int sub_10005C804(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100004F70(&unk_100083D08, &qword_100069DE0);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_100008714(0, &qword_100083D00, NSXPCConnection_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for FeedbackDaemonDelegate();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10005D960(v12 + 1, 1);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

uint64_t sub_10005CA38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100004F70(&unk_100083D30, &qword_100069138);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_100007274((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_1000627F4(v23, &v36);
        sub_100007018(*(v5 + 56) + 32 * v22, v35);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v7 + 40));
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_100007274(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_10005CCF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100004F70(&qword_100082E38, &qword_100069128);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_100007274(v24, v34);
      }

      else
      {
        sub_100007018(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_100007274(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

Swift::Int sub_10005CFA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for FormLaunchConfiguration(0);
  v39 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_100004F70(&unk_100083D60, &qword_100069E10);
  v40 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
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
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_10000F8C8(v28, v41);
      }

      else
      {
        sub_10000F92C(v28, v41);
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
      *v18 = v25;
      v18[1] = v26;
      result = sub_10000F8C8(v41, *(v9 + 56) + v27 * v17);
      ++*(v9 + 16);
      v7 = v38;
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

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
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

uint64_t sub_10005D2E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for FBKSForm.Question();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100004F70(&qword_100083D78, &qword_100069E20);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_100062850(&qword_100083D80, &type metadata accessor for FBKSForm.Question, &protocol conformance descriptor for FBKSForm.Question);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

Swift::Int sub_10005D6C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100004F70(&qword_100083D70, &qword_100069E18);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_10005D960(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100004F70(&unk_100083D08, &qword_100069DE0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
        v22 = v20;
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
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

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10005DBD0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      sub_1000627F4(*(a2 + 48) + 40 * v6, v25);
      v10 = AnyHashable._rawHashValue(seed:)(*(a2 + 40));
      result = sub_100006FC4(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10005DD74(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_10005DF24(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

_OWORD *sub_10005E0B0(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_10005BC6C(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_10005E5B0();
      goto LABEL_7;
    }

    sub_10005CA38(v13, a3 & 1);
    v19 = sub_10005BC6C(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1000627F4(a2, v21);
      return sub_10005E4C8(v10, v21, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_100005ED8(v17);

  return sub_100007274(a1, v17);
}

_OWORD *sub_10005E1FC(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10005BCB0(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10005E754();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10005CCF0(v16, a4 & 1);
    v11 = sub_10005BCB0(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_100005ED8(v22);

    return sub_100007274(a1, v22);
  }

  else
  {
    sub_10005E544(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_10005E34C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10005BF08(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_10005D960(v13, a3 & 1);
      v8 = sub_10005BF08(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_100008714(0, &qword_100083D00, NSXPCConnection_ptr);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_retain_x1();
      }
    }

    else
    {
      v16 = v8;
      sub_10005EF10();
      v8 = v16;
    }
  }

  v18 = *v4;
  if ((v14 & 1) == 0)
  {
    v18[(v8 >> 6) + 8] |= 1 << v8;
    *(v18[6] + 8 * v8) = a2;
    *(v18[7] + 8 * v8) = a1;
    v20 = v18[2];
    v12 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v12)
    {
      v18[2] = v21;

      return _objc_retain_x1();
    }

    goto LABEL_17;
  }

  *(v18[7] + 8 * v8) = a1;
}

_OWORD *sub_10005E4C8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_100007274(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *sub_10005E544(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100007274(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_10005E5B0()
{
  v1 = v0;
  sub_100004F70(&unk_100083D30, &qword_100069138);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_1000627F4(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_100007018(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_100007274(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10005E754()
{
  v1 = v0;
  sub_100004F70(&qword_100082E38, &qword_100069128);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_100007018(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100007274(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_10005E8F8()
{
  v1 = v0;
  v2 = type metadata accessor for FormLaunchConfiguration(0);
  v31 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004F70(&unk_100083D60, &qword_100069E10);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_10000F92C(*(v4 + 56) + v26, v30);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_10000F8C8(v25, *(v27 + 56) + v26);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_10005EB28()
{
  v1 = v0;
  v33 = type metadata accessor for FBKSForm.Question();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004F70(&qword_100083D78, &qword_100069E20);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
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

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
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

void *sub_10005EDA8()
{
  v1 = v0;
  sub_100004F70(&qword_100083D70, &qword_100069E18);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10005EF10()
{
  v1 = v0;
  sub_100004F70(&unk_100083D08, &qword_100069DE0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10005F074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[51] = a2;
  v3[52] = a3;
  v3[50] = a1;
  v3[53] = type metadata accessor for FormLaunchConfiguration(0);
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();

  return _swift_task_switch(sub_10005F118, 0, 0);
}

uint64_t sub_10005F118()
{
  v72 = v0;
  if (qword_1000826B0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100002D00(v1, qword_100083C40);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 408);
    v4 = *(v0 + 416);
    v6 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_1000049B8(0xD00000000000002BLL, 0x800000010006D420, &v71);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_1000049B8(v5, v4, &v71);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s [%s]", v6, 0x16u);
    swift_arrayDestroy();
  }

  v7 = *(v0 + 416);
  *(v0 + 368) = *(v0 + 408);
  *(v0 + 376) = v7;
  *(v0 + 384) = 0xD000000000000013;
  *(v0 + 392) = 0x800000010006D400;
  sub_1000070C4();
  if (StringProtocol.contains<A>(_:)())
  {
    v8 = *(v0 + 424);
    v9 = *(*(v0 + 400) + *(v8 + 40));
    if (qword_100082670 != -1)
    {
      swift_once();
    }

    v10 = qword_100083AC0;

    v11 = v10;
    v12 = String._bridgeToObjectiveC()();
    v13 = [v11 integerForKey:v12];

    if (v13 < v9)
    {
      sub_10000F92C(*(v0 + 400), *(v0 + 440));
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      v16 = os_log_type_enabled(v14, v15);
      v17 = *(v0 + 440);
      if (v16)
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v71 = v19;
        *v18 = 136446466;
        v20 = *v17;
        v21 = v17[1];

        sub_10000F990(v17);
        v22 = sub_1000049B8(v20, v21, &v71);

        *(v18 + 4) = v22;
        *(v18 + 12) = 2050;
        v23 = qword_100083AC0;

        v24 = v23;
        v25 = String._bridgeToObjectiveC()();
        v26 = [v24 integerForKey:v25];

        *(v18 + 14) = v26;
        _os_log_impl(&_mh_execute_header, v14, v15, "Form [%{public}s] has been snoozed more than [%{public}ld]. Marking it as declined", v18, 0x16u);
        sub_100005ED8(v19);
      }

      else
      {

        sub_10000F990(v17);
      }

      if (qword_100082620 == -1)
      {
        goto LABEL_20;
      }

      goto LABEL_25;
    }

    v46 = *(v0 + 424);
    v47 = *(v0 + 432);
    v48 = *(v0 + 400);
    v49 = v48[1];
    v50 = v48[3];
    v68 = v48[2];
    v70 = *v48;
    v51 = *(v48 + 3);
    *(v0 + 192) = *(v48 + 2);
    *(v0 + 208) = v51;
    v53 = *(v48 + 5);
    v52 = *(v48 + 6);
    v54 = *(v48 + 4);
    *(v0 + 272) = *(v48 + 112);
    *(v0 + 240) = v53;
    *(v0 + 256) = v52;
    *(v0 + 224) = v54;
    v55 = *(v46 + 32);
    v56 = type metadata accessor for Date();
    v57 = *(*(v56 - 8) + 56);
    v57(v47 + v55, 1, 1, v56);
    v58 = __OFADD__(v9, 1);
    v59 = v9 + 1;
    if (v58)
    {
      __break(1u);
LABEL_25:
      swift_once();
LABEL_20:
      v66 = *(v0 + 400);
      v44 = qword_100085E18;
      *(v0 + 448) = qword_100085E18;
      *(v0 + 456) = *v66;
      *(v0 + 464) = v66[1];
      v45 = sub_10005F814;
      goto LABEL_21;
    }

    v61 = *(v0 + 424);
    v60 = *(v0 + 432);
    v57(v60 + *(v61 + 36), 1, 1, v56);

    sub_10000FA5C(v0 + 192, v0 + 280);
    Date.init()();
    *v60 = v70;
    *(v60 + 8) = v49;
    *(v60 + 16) = v68;
    *(v60 + 24) = v50;
    v62 = *(v0 + 208);
    *(v60 + 32) = *(v0 + 192);
    *(v60 + 48) = v62;
    v63 = *(v0 + 224);
    v64 = *(v0 + 240);
    v65 = *(v0 + 256);
    *(v60 + 112) = *(v0 + 272);
    *(v60 + 80) = v64;
    *(v60 + 96) = v65;
    *(v60 + 64) = v63;
    *(v60 + *(v61 + 28)) = 0;
    *(v60 + *(v8 + 40)) = v59;
    if (qword_1000825F8 != -1)
    {
      swift_once();
    }

    v44 = qword_100085DF0;
    v45 = sub_10005F988;
  }

  else
  {
    v28 = *(v0 + 424);
    v27 = *(v0 + 432);
    v29 = *(v0 + 400);
    v30 = v29[1];
    v69 = *v29;
    v32 = v29[2];
    v31 = v29[3];
    v33 = *(v29 + 3);
    *(v0 + 16) = *(v29 + 2);
    *(v0 + 32) = v33;
    v35 = *(v29 + 5);
    v34 = *(v29 + 6);
    v36 = *(v29 + 4);
    *(v0 + 96) = *(v29 + 112);
    *(v0 + 64) = v35;
    *(v0 + 80) = v34;
    *(v0 + 48) = v36;
    v37 = v28[8];
    v38 = type metadata accessor for Date();
    v39 = *(*(v38 - 8) + 56);
    v39(v27 + v37, 1, 1, v38);
    v39(v27 + v28[9], 1, 1, v38);

    sub_10000FA5C(v0 + 16, v0 + 104);
    Date.init()();
    *v27 = v69;
    *(v27 + 8) = v30;
    *(v27 + 16) = v32;
    *(v27 + 24) = v31;
    v40 = *(v0 + 32);
    *(v27 + 32) = *(v0 + 16);
    *(v27 + 48) = v40;
    v41 = *(v0 + 48);
    v42 = *(v0 + 64);
    v43 = *(v0 + 80);
    *(v27 + 112) = *(v0 + 96);
    *(v27 + 80) = v42;
    *(v27 + 96) = v43;
    *(v27 + 64) = v41;
    *(v27 + v28[7]) = 0;
    *(v27 + v28[10]) = 1;
    if (qword_1000825F8 != -1)
    {
      swift_once();
    }

    v44 = qword_100085DF0;
    v45 = sub_10005F988;
  }

LABEL_21:

  return _swift_task_switch(v45, v44, 0);
}

uint64_t sub_10005F814()
{
  sub_100034A7C(*(v0 + 456), *(v0 + 464));

  return _swift_task_switch(sub_10005F880, 0, 0);
}

uint64_t sub_10005F880()
{
  if (qword_1000825F8 != -1)
  {
    swift_once();
  }

  v0 = qword_100085DF0;

  return _swift_task_switch(sub_10005F914, v0, 0);
}

uint64_t sub_10005F914()
{
  sub_100020464(v0[51], v0[52], 1);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10005F988()
{
  sub_100021900(*(v0 + 432));

  return _swift_task_switch(sub_10005F9F8, 0, 0);
}

uint64_t sub_10005F9F8()
{
  sub_10000F990(*(v0 + 432));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005FA68(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  sub_100004F70(&qword_1000830F0, &qword_100069410);
  v2[7] = swift_task_alloc();
  v3 = type metadata accessor for User();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_10005FB60, 0, 0);
}

uint64_t sub_10005FB60()
{
  v1 = v0[5];
  if (v1 == 1)
  {
    goto LABEL_11;
  }

  if (v1 != 2)
  {
    if (v1 != 3)
    {
      _StringGuts.grow(_:)(37);

      v9._countAndFlagsBits = FBKSForm.AuthenticationMethod.description.getter();
      String.append(_:)(v9);

      return _assertionFailure(_:_:file:line:flags:)();
    }

    v2 = *(v0[6] + 65);
    if (v2 == 2 || (v2 & 1) == 0)
    {
      v7 = 0;
      goto LABEL_19;
    }

    if (qword_1000826B0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100002D00(v3, qword_100083C40);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Forcing to use hidden app as configured by client", v6, 2u);
    }

LABEL_11:
    v7 = 1;
LABEL_19:

    v10 = v0[1];

    return v10(v7);
  }

  if (qword_1000826D0 != -1)
  {
    swift_once();
  }

  v8 = qword_100085E68;
  v0[11] = qword_100085E68;

  return _swift_task_switch(sub_10005FDD8, v8, 0);
}

uint64_t sub_10005FDD8()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);
  sub_100063510();
  sub_100063510();
  v5 = OBJC_IVAR____TtC9feedbackd14Authentication__loggedInUser;
  swift_beginAccess();
  sub_10000C0A0(v1 + v5, v4, &qword_1000830F0, &qword_100069410);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_1000071C8(*(v0 + 56), &qword_1000830F0, &qword_100069410);

    v6 = *(v0 + 8);

    return v6(1);
  }

  else
  {
    v9 = *(v0 + 72);
    v8 = *(v0 + 80);
    v10 = *(v0 + 64);
    (*(v9 + 32))(v8, *(v0 + 56), v10);
    *(v0 + 96) = User.isUnauthenticated.getter() & 1;
    (*(v9 + 8))(v8, v10);

    return _swift_task_switch(sub_10005FF68, 0, 0);
  }
}

uint64_t sub_10005FF68()
{
  if (*(v0 + 96))
  {
LABEL_2:
    v1 = 1;
    goto LABEL_11;
  }

  v2 = *(*(v0 + 48) + 65);
  if (v2 != 2 && (v2 & 1) != 0)
  {
    if (qword_1000826B0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100002D00(v3, qword_100083C40);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Forcing to use hidden app as configured by client", v6, 2u);
    }

    goto LABEL_2;
  }

  v1 = 0;
LABEL_11:

  v7 = *(v0 + 8);

  return v7(v1);
}

uint64_t sub_1000600C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a4;
  v6[6] = a6;
  v6[3] = a2;
  v6[4] = a3;
  v6[2] = a1;
  v9 = type metadata accessor for FBKSRemoteAlertRequest();
  v6[7] = v9;
  v6[8] = *(v9 - 8);
  v6[9] = swift_task_alloc();
  v10 = swift_task_alloc();
  v6[10] = v10;
  *v10 = v6;
  v10[1] = sub_1000601C4;

  return sub_10005FA68(a3, a5);
}

uint64_t sub_1000601C4(char a1)
{
  *(*v1 + 112) = a1;

  return _swift_task_switch(sub_1000602C4, 0, 0);
}

uint64_t sub_1000602C4()
{
  if (*(v0 + 112) == 1)
  {
    v2 = *(v0 + 64);
    v1 = *(v0 + 72);
    v3 = *(v0 + 56);
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);
    v7 = *(v0 + 16);
    v6 = *(v0 + 24);
    type metadata accessor for LaunchController();
    swift_initStaticObject();
    *v1 = sub_100014430(v7, v6, v5, v4);
    (*(v2 + 104))(v1, enum case for FBKSRemoteAlertRequest.form(_:), v3);
    v8 = swift_task_alloc();
    *(v0 + 88) = v8;
    *v8 = v0;
    v8[1] = sub_100060480;
    v9 = *(v0 + 72);

    return sub_10003C914(v9);
  }

  else
  {
    v11 = swift_task_alloc();
    *(v0 + 104) = v11;
    *v11 = v0;
    v11[1] = sub_100060718;
    v12 = *(v0 + 40);
    v13 = *(v0 + 48);
    v14 = *(v0 + 24);
    v15 = *(v0 + 32);
    v16 = *(v0 + 16);

    return sub_10003E868(v16, v14, v15, v12, v13);
  }
}

uint64_t sub_100060480()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  *(*v1 + 96) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1000606B4;
  }

  else
  {
    v5 = sub_1000605F0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000605F0()
{
  v1 = *(v0 + 112);
  v2 = objc_opt_self();
  v3 = String._bridgeToObjectiveC()();
  [v2 logFeedbackdLaunchedFeedbackWithForm:v3 usedAlertPrompt:1 usedNotificationPrompt:0 usedHiddenApp:v1];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000606B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100060718()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_1000628B8, 0, 0);
  }
}

uint64_t sub_100060864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[78] = a4;
  v4[77] = a3;
  v4[76] = a2;
  v4[75] = a1;
  v4[79] = type metadata accessor for FormLaunchConfiguration(0);
  v4[80] = swift_task_alloc();
  sub_100004F70(&qword_100082CA8, &unk_100069A60);
  v4[81] = swift_task_alloc();
  v5 = type metadata accessor for FormItem();
  v4[82] = v5;
  v4[83] = *(v5 - 8);
  v4[84] = swift_task_alloc();

  return _swift_task_switch(sub_100060998, 0, 0);
}

uint64_t sub_100060998()
{
  v22 = v0;
  v1 = *(v0 + 600);
  v2 = *v1;
  *(v0 + 680) = *v1;
  v3 = *(v1 + 8);
  *(v0 + 688) = v3;
  v4 = *(v1 + 16);
  *(v0 + 696) = v4;
  v5 = *(v1 + 24);
  *(v0 + 704) = v5;
  v6 = *(v1 + 64);
  v7 = *(v1 + 80);
  v8 = *(v1 + 96);
  *(v0 + 96) = *(v1 + 112);
  *(v0 + 64) = v7;
  *(v0 + 80) = v8;
  *(v0 + 48) = v6;
  v9 = *(v1 + 48);
  *(v0 + 16) = *(v1 + 32);
  *(v0 + 32) = v9;
  if (qword_1000826B0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  *(v0 + 712) = sub_100002D00(v10, qword_100083C40);

  sub_10000FA5C(v0 + 16, v0 + 104);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  sub_100045FC4(v0 + 16);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v13 = 136446722;
    *(v13 + 4) = sub_1000049B8(0xD00000000000004BLL, 0x800000010006D3B0, &v21);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_1000049B8(v2, v3, &v21);
    *(v13 + 22) = 2080;
    v14 = *(v0 + 16);
    *(v0 + 544) = v14;
    *(v0 + 560) = v14;
    sub_10000C0A0(v0 + 544, v0 + 576, &unk_100083D50, &qword_100068FE0);
    sub_100004F70(&unk_100083D50, &qword_100068FE0);
    v15 = String.init<A>(describing:)();
    v17 = sub_1000049B8(v15, v16, &v21);

    *(v13 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s form: %s prompt title: %s", v13, 0x20u);
    swift_arrayDestroy();
  }

  type metadata accessor for SeedPortal();
  *(v0 + 720) = static SeedPortal.shared.getter();
  v18 = swift_task_alloc();
  *(v0 + 728) = v18;
  *v18 = v0;
  v18[1] = sub_100060C98;
  v19 = *(v0 + 648);

  return sub_10001A628(v19, v2, v3, v4, v5, 0);
}

uint64_t sub_100060C98()
{
  *(*v1 + 736) = v0;

  if (v0)
  {
    v2 = sub_100061020;
  }

  else
  {
    v2 = sub_100060DC8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100060DC8()
{
  v14 = v0;
  v1 = v0[83];
  v2 = v0[82];
  v3 = v0[81];
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_1000071C8(v3, &qword_100082CA8, &unk_100069A60);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v13 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_1000049B8(0xD00000000000004BLL, 0x800000010006D3B0, &v13);
      _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s failed to launch because form item is no longer available", v6, 0xCu);
      sub_100005ED8(v7);
    }

    if (qword_100082620 != -1)
    {
      swift_once();
    }

    v8 = qword_100085E18;
    v0[95] = qword_100085E18;
    sub_10000BCE0();
    v0[96] = swift_allocError();
    *v9 = 1;
    v0[97] = _convertErrorToNSError(_:)();
    v10 = sub_1000618B4;
    v11 = v8;
  }

  else
  {
    (*(v1 + 32))(v0[84], v3, v2);
    if (qword_1000825F8 != -1)
    {
      swift_once();
    }

    v11 = qword_100085DF0;
    v10 = sub_10006127C;
  }

  return _swift_task_switch(v10, v11, 0);
}

uint64_t sub_100061020()
{
  v13 = v0;
  v1 = v0[92];
  v0[98] = v1;
  if (sub_10005AAC8(v1))
  {
    if (qword_1000825F8 != -1)
    {
      swift_once();
    }

    v2 = qword_100085DF0;
    v3 = sub_100061A5C;
  }

  else
  {
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v6 = 136446466;
      *(v6 + 4) = sub_1000049B8(0xD00000000000004BLL, 0x800000010006D3B0, &v12);
      *(v6 + 12) = 2080;
      v0[74] = v1;
      swift_errorRetain();
      sub_100004F70(&unk_1000833F0, &unk_100068F00);
      v7 = String.init<A>(describing:)();
      v9 = sub_1000049B8(v7, v8, &v12);

      *(v6 + 14) = v9;
      _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s failed with: %s", v6, 0x16u);
      swift_arrayDestroy();
    }

    if (qword_100082620 != -1)
    {
      swift_once();
    }

    v10 = qword_100085E18;
    v0[100] = qword_100085E18;
    v0[101] = _convertErrorToNSError(_:)();
    v3 = sub_100061E60;
    v2 = v10;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_10006127C()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 688);
  v26 = *(v0 + 680);
  v27 = *(v0 + 696);
  v3 = *(v0 + 640);
  v4 = *(v0 + 632);
  v5 = *(v0 + 600);
  v6 = *(v5 + 48);
  *(v0 + 368) = *(v5 + 32);
  *(v0 + 384) = v6;
  v8 = *(v5 + 80);
  v7 = *(v5 + 96);
  v9 = *(v5 + 64);
  *(v0 + 448) = *(v5 + 112);
  *(v0 + 416) = v8;
  *(v0 + 432) = v7;
  *(v0 + 400) = v9;
  v10 = v4[8];
  v25 = *(v5 + v4[7]);

  sub_10000FA5C(v0 + 368, v0 + 456);
  Date.init()();
  v11 = type metadata accessor for Date();
  v12 = *(*(v11 - 8) + 56);
  v12(v3 + v10, 0, 1, v11);
  v13 = *(v5 + v4[10]);
  v12(v3 + v4[9], 1, 1, v11);
  Date.init()();
  *v3 = v26;
  *(v3 + 8) = v2;
  *(v3 + 16) = v27;
  *(v3 + 24) = v1;
  v14 = *(v0 + 384);
  *(v3 + 32) = *(v0 + 368);
  *(v3 + 48) = v14;
  v15 = *(v0 + 400);
  v16 = *(v0 + 416);
  v17 = *(v0 + 432);
  *(v3 + 112) = *(v0 + 448);
  *(v3 + 80) = v16;
  *(v3 + 96) = v17;
  *(v3 + 64) = v15;
  *(v3 + v4[7]) = v25;
  *(v3 + v4[10]) = v13;
  sub_10001FA24(v3);

  sub_10000F990(v3);
  v18 = swift_task_alloc();
  *(v0 + 744) = v18;
  *v18 = v0;
  v18[1] = sub_100061494;
  v19 = *(v0 + 704);
  v20 = *(v0 + 696);
  v21 = *(v0 + 688);
  v22 = *(v0 + 680);
  v23 = *(v0 + 672);

  return sub_1000600C0(v22, v21, v20, v19, v0 + 16, v23);
}

uint64_t sub_100061494()
{
  *(*v1 + 752) = v0;

  if (v0)
  {
    v2 = sub_10006163C;
  }

  else
  {
    v2 = sub_1000615A8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000615A8()
{
  (*(v0[83] + 8))(v0[84], v0[82]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10006163C()
{
  v13 = v0;
  (*(v0[83] + 8))(v0[84], v0[82]);
  v1 = v0[94];
  v0[98] = v1;
  if (sub_10005AAC8(v1))
  {
    if (qword_1000825F8 != -1)
    {
      swift_once();
    }

    v2 = qword_100085DF0;
    v3 = sub_100061A5C;
  }

  else
  {
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v6 = 136446466;
      *(v6 + 4) = sub_1000049B8(0xD00000000000004BLL, 0x800000010006D3B0, &v12);
      *(v6 + 12) = 2080;
      v0[74] = v1;
      swift_errorRetain();
      sub_100004F70(&unk_1000833F0, &unk_100068F00);
      v7 = String.init<A>(describing:)();
      v9 = sub_1000049B8(v7, v8, &v12);

      *(v6 + 14) = v9;
      _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s failed with: %s", v6, 0x16u);
      swift_arrayDestroy();
    }

    if (qword_100082620 != -1)
    {
      swift_once();
    }

    v10 = qword_100085E18;
    v0[100] = qword_100085E18;
    v0[101] = _convertErrorToNSError(_:)();
    v3 = sub_100061E60;
    v2 = v10;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_1000618B4()
{
  v1 = *(v0 + 776);
  sub_100033994(*(v0 + 680), *(v0 + 688), v1);

  return _swift_task_switch(sub_100061944, 0, 0);
}

uint64_t sub_100061944()
{
  if (qword_1000825F8 != -1)
  {
    swift_once();
  }

  v0 = qword_100085DF0;

  return _swift_task_switch(sub_1000619D8, v0, 0);
}

uint64_t sub_1000619D8()
{
  sub_10002096C(v0[76], v0[77]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100061A5C()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 688);
  v20 = *(v0 + 680);
  v21 = *(v0 + 696);
  v3 = *(v0 + 640);
  v4 = *(v0 + 632);
  v5 = *(v0 + 600);
  v6 = *(v5 + 48);
  *(v0 + 192) = *(v5 + 32);
  *(v0 + 208) = v6;
  v8 = *(v5 + 80);
  v7 = *(v5 + 96);
  v9 = *(v5 + 64);
  *(v0 + 272) = *(v5 + 112);
  *(v0 + 240) = v8;
  *(v0 + 256) = v7;
  *(v0 + 224) = v9;
  v10 = v4[8];
  v19 = *(v5 + v4[7]);
  v11 = type metadata accessor for Date();
  v12 = *(*(v11 - 8) + 56);
  v12(v3 + v10, 1, 1, v11);
  v13 = *(v5 + v4[10]);
  v12(v3 + v4[9], 1, 1, v11);

  sub_10000FA5C(v0 + 192, v0 + 280);
  Date.init()();
  *v3 = v20;
  *(v3 + 8) = v2;
  *(v3 + 16) = v21;
  *(v3 + 24) = v1;
  v14 = *(v0 + 208);
  *(v3 + 32) = *(v0 + 192);
  *(v3 + 48) = v14;
  v15 = *(v0 + 224);
  v16 = *(v0 + 240);
  v17 = *(v0 + 256);
  *(v3 + 112) = *(v0 + 272);
  *(v3 + 80) = v16;
  *(v3 + 96) = v17;
  *(v3 + 64) = v15;
  *(v3 + v4[7]) = v19;
  *(v3 + v4[10]) = v13;
  sub_10001FA24(v3);

  return _swift_task_switch(sub_100061C08, 0, 0);
}

uint64_t sub_100061C08()
{
  if (qword_100082610 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[99] = v1;
  *v1 = v0;
  v1[1] = sub_100061CD8;
  v2 = v0[80];
  v3 = v0[78];

  return sub_1000273F4(v2, v3);
}

uint64_t sub_100061CD8()
{

  return _swift_task_switch(sub_100061DD4, 0, 0);
}

uint64_t sub_100061DD4()
{
  v1 = *(v0 + 640);

  sub_10000F990(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100061E60()
{
  v1 = *(v0 + 808);
  sub_100033994(*(v0 + 680), *(v0 + 688), v1);

  return _swift_task_switch(sub_100061EDC, 0, 0);
}

uint64_t sub_100061EDC()
{
  if (qword_1000825F8 != -1)
  {
    swift_once();
  }

  v0 = qword_100085DF0;

  return _swift_task_switch(sub_100061F70, v0, 0);
}

uint64_t sub_100061F70()
{
  sub_10002096C(*(v0 + 608), *(v0 + 616));

  return _swift_task_switch(sub_100061FDC, 0, 0);
}

uint64_t sub_100061FDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006205C(void *a1)
{
  v2 = v1;
  if (qword_1000826B0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100002D00(v4, qword_100083C40);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v32 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1000049B8(0xD000000000000026, 0x800000010006D320, &v32);
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s", v7, 0xCu);
    sub_100005ED8(v8);
  }

  v9 = sub_100039614();
  v10 = a1;
  v11 = Logger.logObject.getter();
  if (v9 == 2)
  {
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67240192;
      *(v15 + 4) = [v10 processIdentifier];

      _os_log_impl(&_mh_execute_header, v11, v14, "Process %{public}d is not entitled to use this service. Refusing connection.", v15, 8u);
    }

    else
    {

      v11 = v10;
    }

    [v10 invalidate];
    return v9 != 2;
  }

  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67240192;
    *(v13 + 4) = [v10 processIdentifier];

    _os_log_impl(&_mh_execute_header, v11, v12, "Accepting a new XPC connection from: %{public}d", v13, 8u);
  }

  else
  {

    v11 = v10;
  }

  v16 = swift_allocObject();
  *(v16 + 16) = v10;
  v36 = sub_10006267C;
  v37 = v16;
  v32 = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_100059744;
  v35 = &unk_10007EF40;
  v17 = _Block_copy(&v32);
  v18 = v10;

  [v18 setInterruptionHandler:v17];
  _Block_release(v17);
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v2;
  v36 = sub_1000626C4;
  v37 = v19;
  v32 = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_100059744;
  v35 = &unk_10007EF90;
  v20 = _Block_copy(&v32);
  v21 = v18;
  v22 = v2;

  [v21 setInvalidationHandler:v20];
  _Block_release(v20);
  type metadata accessor for FeedbackDaemonDelegate();
  v23 = swift_allocObject();
  *(v23 + 16) = v9;
  v24 = *&v22[OBJC_IVAR____TtC9feedbackd14FeedbackDaemon_syncQueue];
  v25 = swift_allocObject();
  v25[2] = v22;
  v25[3] = v21;
  v25[4] = v23;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_100062714;
  *(v26 + 24) = v25;
  v36 = sub_100062730;
  v37 = v26;
  v32 = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_10005A960;
  v35 = &unk_10007F008;
  v27 = _Block_copy(&v32);
  v28 = v21;
  v29 = v22;

  sub_100062758(v9);

  dispatch_sync(v24, v27);
  _Block_release(v27);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if ((v22 & 1) == 0)
  {
    if (v9)
    {
      v31 = [objc_allocWithZone(type metadata accessor for FeedbackDaemonInterface()) init];
      sub_100062778(v9);
    }

    else
    {
      v31 = [objc_allocWithZone(type metadata accessor for FeedbackDaemonAdminInterface()) init];
    }

    [v28 setExportedInterface:v31];

    [v28 setExportedObject:v23];
    [v28 resume];

    return v9 != 2;
  }

  __break(1u);
  return result;
}

uint64_t sub_100062644()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100062684()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000626CC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100062758(uint64_t result)
{
  if (result != 2)
  {
    return sub_100062768(result);
  }

  return result;
}

unint64_t sub_100062768(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_100062778(unint64_t result)
{
  if (result != 2)
  {
    return sub_100045BF4(result);
  }

  return result;
}

unint64_t sub_100062790()
{
  result = qword_100083D28;
  if (!qword_100083D28)
  {
    sub_100005F88(&qword_100083D20, &qword_100069DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083D28);
  }

  return result;
}

uint64_t sub_100062850(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000628D4()
{
  v35 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v1 = &v21 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DispatchQoS();
  v36 = *(v34 - 8);
  __chkstk_darwin(v34);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS.QoSClass();
  v25 = v4;
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_10000BC7C();
  v32 = enum case for DispatchQoS.QoSClass.userInitiated(_:);
  v31 = *(v5 + 104);
  v31(v7);
  v24 = static OS_dispatch_queue.global(qos:)();
  v30 = *(v5 + 8);
  v30(v7, v4);
  v43 = sub_100062D9C;
  v44 = 0;
  aBlock = _NSConcreteStackBlock;
  v40 = 1107296256;
  v29 = &v41;
  v41 = sub_100059744;
  v42 = &unk_10007F0A8;
  v8 = _Block_copy(&aBlock);
  static DispatchQoS.unspecified.getter();
  v38 = _swiftEmptyArrayStorage;
  v27 = sub_100062EF0();
  v26 = sub_100004F70(&qword_100083D98, &unk_100069E28);
  v28 = sub_100062F48();
  v9 = v35;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v22 = v1;
  v10 = v24;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);

  v11 = *(v37 + 8);
  v37 += 8;
  v24 = v11;
  v11(v1, v9);
  v12 = *(v36 + 8);
  v36 += 8;
  v23 = v12;
  v13 = v3;
  v14 = v34;
  v12(v3, v34);
  v15 = v25;
  (v31)(v7, v32, v25);
  v16 = static OS_dispatch_queue.global(qos:)();
  v30(v7, v15);
  v43 = sub_100062DD4;
  v44 = 0;
  aBlock = _NSConcreteStackBlock;
  v40 = 1107296256;
  v41 = sub_100059744;
  v42 = &unk_10007F0D0;
  v17 = _Block_copy(&aBlock);
  static DispatchQoS.unspecified.getter();
  v38 = _swiftEmptyArrayStorage;
  v18 = v22;
  v19 = v35;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  v24(v18, v19);
  return v23(v13, v14);
}

uint64_t sub_100062E0C(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (*a1 != -1)
  {
    v5 = a3;
    swift_once();
    a3 = v5;
  }

  return a3();
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  sub_1000628D4();
  objc_autoreleasePoolPop(v3);
  v4 = [objc_opt_self() currentRunLoop];
  [v4 run];

  return 0;
}

uint64_t sub_100062ED8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100062EF0()
{
  result = qword_100083D90;
  if (!qword_100083D90)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083D90);
  }

  return result;
}

unint64_t sub_100062F48()
{
  result = qword_100083DA0;
  if (!qword_100083DA0)
  {
    sub_100005F88(&qword_100083D98, &unk_100069E28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083DA0);
  }

  return result;
}

uint64_t sub_100062FB4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_100063060()
{
  v0 = type metadata accessor for Logger();
  sub_100007284(v0, qword_100083DA8);
  sub_100002D00(v0, qword_100083DA8);
  static Strings.Daemon.bundleIdentifier.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000630C0()
{
  type metadata accessor for Authentication(0);
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = OBJC_IVAR____TtC9feedbackd14Authentication__loggedInUser;
  v2 = type metadata accessor for User();
  result = (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC9feedbackd14Authentication_invalidTokens) = _swiftEmptyArrayStorage;
  qword_100085E68 = v0;
  return result;
}

uint64_t sub_10006315C()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedUserDefaults];
  v3 = [v2 integerForKey:FBKSLastSuccessfulUserIDKey];

  if (v3 < 1)
  {
    if (qword_1000826C8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100002D00(v19, qword_100083DA8);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_13;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "No user id found in preferences";
    goto LABEL_12;
  }

  v4 = objc_opt_self();
  sub_100008714(0, &qword_100082AA0, NSNumber_ptr);
  isa = NSNumber.init(integerLiteral:)(v3).super.super.isa;
  v6 = [v4 fetchDeviceTokenForParticipantID:isa];

  if (!v6)
  {
    if (qword_1000826C8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100002D00(v20, qword_100083DA8);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134349056;
      *(v23 + 4) = v3;
      _os_log_impl(&_mh_execute_header, v21, v22, "No device token found for user: %{public}ld", v23, 0xCu);
    }

    return 0;
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = OBJC_IVAR____TtC9feedbackd14Authentication_invalidTokens;
  v11 = swift_beginAccess();
  v12 = *(v1 + v10);
  v26[0] = v7;
  v26[1] = v9;
  __chkstk_darwin(v11);
  v25[2] = v26;

  v13 = sub_100062FB4(sub_1000660C8, v25, v12);

  if (v13)
  {

    if (qword_1000826C8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100002D00(v14, qword_100083DA8);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_13;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "Device token is invalid";
LABEL_12:
    _os_log_impl(&_mh_execute_header, v15, v16, v18, v17, 2u);

LABEL_13:

    return 0;
  }

  return v7;
}

uint64_t sub_100063510()
{
  v1 = v0;
  v2 = sub_100004F70(&qword_1000830F0, &qword_100069410);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v15[-v6];
  v8 = type metadata accessor for User();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = OBJC_IVAR____TtC9feedbackd14Authentication__loggedInUser;
  swift_beginAccess();
  sub_10001B984(v1 + v12, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10001B9F4(v7);
    return 0;
  }

  (*(v9 + 32))(v11, v7, v8);
  v13 = User.hasExpiredSession.getter();
  (*(v9 + 8))(v11, v8);
  if (v13)
  {
    (*(v9 + 56))(v5, 1, 1, v8);
    swift_beginAccess();
    sub_100065958(v5, v1 + v12);
    swift_endAccess();
    return 0;
  }

  return 1;
}

uint64_t sub_100063734(char a1)
{
  *(v2 + 64) = v1;
  *(v2 + 80) = a1;
  sub_100004F70(&qword_1000830F0, &qword_100069410);
  *(v2 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_1000637D4, v1, 0);
}

uint64_t sub_1000637D4()
{
  v27 = v0;
  if (qword_1000826C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100002D00(v1, qword_100083DA8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v26 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1000049B8(0xD000000000000028, 0x800000010006D4C0, &v26);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100005ED8(v5);
  }

  if (*(v0 + 80) == 1)
  {
    v6 = sub_10006315C();
    if (v7)
    {
      v8 = v6;
      v9 = v7;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "Adding token to deny list", v12, 2u);
      }

      v13 = *(v0 + 64);

      v14 = OBJC_IVAR____TtC9feedbackd14Authentication_invalidTokens;
      swift_beginAccess();
      v15 = *(v13 + v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v13 + v14) = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v15 = sub_100065BA0(0, *(v15 + 2) + 1, 1, v15);
        *(v13 + v14) = v15;
      }

      v18 = *(v15 + 2);
      v17 = *(v15 + 3);
      if (v18 >= v17 >> 1)
      {
        v15 = sub_100065BA0((v17 > 1), v18 + 1, 1, v15);
      }

      *(v15 + 2) = v18 + 1;
      v19 = &v15[16 * v18];
      *(v19 + 4) = v8;
      *(v19 + 5) = v9;
      *(v13 + v14) = v15;
      swift_endAccess();
    }
  }

  v20 = *(v0 + 64);
  v21 = *(v0 + 72);
  v22 = type metadata accessor for User();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtC9feedbackd14Authentication__loggedInUser;
  swift_beginAccess();
  sub_100065958(v21, v20 + v23);
  swift_endAccess();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100063B00(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = type metadata accessor for User();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  sub_100004F70(&qword_1000830F0, &qword_100069410);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_100063C38, v2, 0);
}

uint64_t sub_100063C38()
{
  v1 = FBKSForm.AuthenticationMethod.rawValue.getter();
  if (v1 == FBKSForm.AuthenticationMethod.rawValue.getter())
  {
    v2 = swift_task_alloc();
    v0[25] = v2;
    *v2 = v0;
    v2[1] = sub_100063EE0;
    v3 = v0[24];
LABEL_3:

    return sub_100065000(v3);
  }

  v5 = sub_10006315C();
  v0[27] = v6;
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    type metadata accessor for SeedPortal();
    v0[28] = static SeedPortal.shared.getter();
    v15 = (&async function pointer to dispatch thunk of SeedPortal.loginWithDeviceToken(token:) + async function pointer to dispatch thunk of SeedPortal.loginWithDeviceToken(token:));
    v9 = swift_task_alloc();
    v0[29] = v9;
    *v9 = v0;
    v9[1] = sub_100064184;
    v10 = v0[19];

    return v15(v10, v7, v8);
  }

  else
  {
    v11 = FBKSForm.AuthenticationMethod.rawValue.getter();
    if (v11 != FBKSForm.AuthenticationMethod.rawValue.getter())
    {
      v14 = swift_task_alloc();
      v0[31] = v14;
      *v14 = v0;
      v14[1] = sub_10006458C;
      v3 = v0[21];
      goto LABEL_3;
    }

    sub_10000BCE0();
    swift_allocError();
    *v12 = 3;
    swift_willThrow();

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_100063EE0()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 120);
  if (v0)
  {
    v4 = sub_100064830;
  }

  else
  {
    v4 = sub_10006400C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10006400C()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[15];
  v6 = OBJC_IVAR____TtC9feedbackd14Authentication__loggedInUser;
  swift_beginAccess();
  sub_100065958(v2, v5 + v6);
  swift_endAccess();
  sub_100063510();
  sub_10001B984(v5 + v6, v1);
  v7 = (*(v4 + 48))(v1, 1, v3);
  v8 = v0[16];
  v9 = v0[17];
  v10 = v0[13];
  if (v7 == 1)
  {
    sub_10001B9F4(v0[23]);
    v11 = 1;
  }

  else
  {
    (*(v9 + 32))(v0[13], v0[23], v0[16]);
    v11 = 0;
  }

  (*(v9 + 56))(v10, v11, 1, v8);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100064184()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 120);

  if (v0)
  {
    v4 = sub_1000649A0;
  }

  else
  {
    v4 = sub_1000642E8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000642E8()
{
  if (qword_1000826C8 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  v5 = type metadata accessor for Logger();
  sub_100002D00(v5, qword_100083DA8);
  v6 = *(v4 + 16);
  v6(v1, v2, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[17];
  v10 = v0[18];
  v12 = v0[16];
  if (v9)
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    v14 = User.id.getter();
    (*(v11 + 8))(v10, v12);
    *(v13 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "Logged in as user %ld", v13, 0xCu);
  }

  else
  {
    (*(v11 + 8))(v0[18], v0[16]);
  }

  v15 = v0[22];
  v16 = v0[19];
  v17 = v0[16];
  v18 = v0[17];
  v19 = v0[15];
  v20 = v0[13];

  v6(v15, v16, v17);
  v21 = *(v18 + 56);
  v21(v15, 0, 1, v17);
  v22 = OBJC_IVAR____TtC9feedbackd14Authentication__loggedInUser;
  swift_beginAccess();
  sub_100065958(v15, v19 + v22);
  swift_endAccess();
  (*(v18 + 32))(v20, v16, v17);
  v21(v20, 0, 1, v17);

  v23 = v0[1];

  return v23();
}

uint64_t sub_10006458C()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 120);
  if (v0)
  {
    v4 = sub_1000648E8;
  }

  else
  {
    v4 = sub_1000646B8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000646B8()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[15];
  v6 = OBJC_IVAR____TtC9feedbackd14Authentication__loggedInUser;
  swift_beginAccess();
  sub_100065958(v2, v5 + v6);
  swift_endAccess();
  sub_100063510();
  sub_10001B984(v5 + v6, v1);
  v7 = (*(v4 + 48))(v1, 1, v3);
  v8 = v0[16];
  v9 = v0[17];
  v10 = v0[13];
  if (v7 == 1)
  {
    sub_10001B9F4(v0[20]);
    v11 = 1;
  }

  else
  {
    (*(v9 + 32))(v0[13], v0[20], v0[16]);
    v11 = 0;
  }

  (*(v9 + 56))(v10, v11, 1, v8);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100064830()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000648E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000649A0()
{
  v0[11] = v0[30];
  swift_errorRetain();
  sub_100004F70(&unk_1000833F0, &unk_100068F00);
  sub_100008714(0, &qword_100082D08, NSError_ptr);
  if (!swift_dynamicCast())
  {

    goto LABEL_15;
  }

  v1 = v0[12];
  v0[33] = v1;
  v2 = v1;
  v3 = _convertErrorToNSError(_:)();

  v4 = FBKSErrorContainsSP2ErrorCode();
  if (!v4)
  {
    if (qword_1000826C8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100002D00(v11, qword_100083DA8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Login failed", v14, 2u);
    }

    swift_willThrow();

    goto LABEL_15;
  }

  if (qword_1000826C8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100002D00(v5, qword_100083DA8);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Device token is no longer valid", v8, 2u);
  }

  v9 = FBKSForm.AuthenticationMethod.rawValue.getter();
  if (v9 == FBKSForm.AuthenticationMethod.rawValue.getter())
  {
    sub_10000BCE0();
    swift_allocError();
    *v10 = 3;
    swift_willThrow();

LABEL_15:

    v15 = v0[1];

    return v15();
  }

  v17 = swift_task_alloc();
  v0[34] = v17;
  *v17 = v0;
  v17[1] = sub_100064D4C;
  v18 = v0[13];

  return sub_100065000(v18);
}

uint64_t sub_100064D4C()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 120);
  if (v0)
  {
    v4 = sub_100064F38;
  }

  else
  {
    v4 = sub_100064E78;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100064E78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100064F38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100065000(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  sub_100004F70(&qword_1000830F0, &qword_100069410);
  v2[9] = swift_task_alloc();
  v3 = type metadata accessor for User();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_100065104, v1, 0);
}

uint64_t sub_100065104()
{
  v11 = v0;
  if (qword_1000826C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[14] = sub_100002D00(v1, qword_100083DA8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1000049B8(0xD000000000000016, 0x800000010006D4A0, &v10);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100005ED8(v5);
  }

  type metadata accessor for SeedPortal();
  v0[15] = static SeedPortal.shared.getter();
  v9 = (&async function pointer to dispatch thunk of SeedPortal.unauthenticatedLogin() + async function pointer to dispatch thunk of SeedPortal.unauthenticatedLogin());
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_1000652E4;
  v7 = v0[13];

  return v9(v7);
}

uint64_t sub_1000652E4()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = sub_100065630;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_10006540C;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10006540C()
{
  v1 = *(v0[11] + 16);
  v1(v0[12], v0[13], v0[10]);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    v9 = User.id.getter();
    (*(v6 + 8))(v5, v7);
    *(v8 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Logged in as user %ld", v8, 0xCu);
  }

  else
  {
    (*(v6 + 8))(v0[12], v0[10]);
  }

  v10 = v0[13];
  v11 = v0[10];
  v12 = v0[11];
  v14 = v0[8];
  v13 = v0[9];
  v15 = v0[7];

  v1(v13, v10, v11);
  v16 = *(v12 + 56);
  v16(v13, 0, 1, v11);
  v17 = OBJC_IVAR____TtC9feedbackd14Authentication__loggedInUser;
  swift_beginAccess();
  sub_100065958(v13, v14 + v17);
  swift_endAccess();
  (*(v12 + 32))(v15, v10, v11);
  v16(v15, 0, 1, v11);

  v18 = v0[1];

  return v18();
}

uint64_t sub_100065630()
{
  v1 = v0[17];

  v0[5] = v1;
  swift_errorRetain();
  sub_100004F70(&unk_1000833F0, &unk_100068F00);
  sub_100008714(0, &qword_100082D08, NSError_ptr);
  if (swift_dynamicCast())
  {

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Login failed", v4, 2u);
    }

    swift_willThrow();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000657B4()
{
  sub_10001B9F4(v0 + OBJC_IVAR____TtC9feedbackd14Authentication__loggedInUser);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for Authentication(uint64_t a1)
{
  result = qword_100083DF8;
  if (!qword_100083DF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100065858(uint64_t a1)
{
  sub_100065900(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100065900(uint64_t a1)
{
  if (!qword_100083E08)
  {
    type metadata accessor for User();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100083E08);
    }
  }
}

uint64_t sub_100065958(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004F70(&qword_1000830F0, &qword_100069410);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_1000659C8(void *result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004F70(&unk_100083F20, &qword_100069EC8);
  v10 = *(type metadata accessor for UUID() - 8);
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
  v15 = *(type metadata accessor for UUID() - 8);
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

char *sub_100065BA0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004F70(&qword_100082838, &qword_1000683A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100065CAC(void *result, int64_t a2, char a3, void *a4)
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
    sub_100004F70(&qword_100083F10, &qword_100069EB8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004F70(&qword_100083F18, &qword_100069EC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100065E38(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
LABEL_30:
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

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004F70(a5, a6);
  v16 = *(sub_100004F70(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_100004F70(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_100066020(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_100066040@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_100066070(uint64_t *a1, void *a2)
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

uint64_t sub_1000660C8(uint64_t *a1)
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

Swift::String __swiftcall FBKSLocalizedString(key:)(Swift::String key)
{
  v1 = FBKSLocalizedString(key:)(key._countAndFlagsBits, key._object);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}