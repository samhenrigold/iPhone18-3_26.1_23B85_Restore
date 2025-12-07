void sub_10002CE50()
{
  swift_beginAccess();
  v1 = 0;
  v2 = *(v0 + 136);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
    v7 = v1;
LABEL_10:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    if (*(*(*(v2 + 56) + ((v7 << 9) | (8 * v8))) + OBJC_IVAR____TtC16enhancedloggingd10BugSession_uploadStatus) != 1)
    {
      v9 = 0;
      v10 = *(v0 + 136);
      v11 = 1 << *(v10 + 32);
      v12 = -1;
      if (v11 < 64)
      {
        v12 = ~(-1 << v11);
      }

      v13 = v12 & *(v10 + 64);
      v14 = (v11 + 63) >> 6;
      while (v13)
      {
        v15 = v9;
LABEL_20:
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        if (!*(*(*(v10 + 56) + ((v15 << 9) | (8 * v16))) + OBJC_IVAR____TtC16enhancedloggingd10BugSession_uploadStatus))
        {
          if (qword_100049C18 != -1)
          {
            swift_once();
          }

          v17 = type metadata accessor for Logger();
          sub_100004274(v17, qword_10004C088);
          v18 = Logger.logObject.getter();
          v19 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v18, v19))
          {
            v20 = swift_slowAlloc();
            *v20 = 0;
            _os_log_impl(&_mh_execute_header, v18, v19, "Waiting for additional devices to finish uploading...", v20, 2u);
          }

          goto LABEL_29;
        }
      }

      while (1)
      {
        v15 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v15 >= v14)
        {
          if (qword_100049C18 != -1)
          {
            swift_once();
          }

          v25 = type metadata accessor for Logger();
          sub_100004274(v25, qword_10004C088);
          v26 = Logger.logObject.getter();
          v27 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            *v28 = 0;
            _os_log_impl(&_mh_execute_header, v26, v27, "One or more devices failed to upload", v28, 2u);
          }

          v18 = [objc_opt_self() sharedManager];
          [v18 finishWithFailure];
          goto LABEL_29;
        }

        v13 = *(v10 + 64 + 8 * v15);
        ++v9;
        if (v13)
        {
          v9 = v15;
          goto LABEL_20;
        }
      }

LABEL_36:
      __break(1u);
LABEL_37:
      swift_once();
      goto LABEL_26;
    }
  }

  while (1)
  {
    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v7 >= v6)
    {
      break;
    }

    v5 = *(v2 + 64 + 8 * v7);
    ++v1;
    if (v5)
    {
      v1 = v7;
      goto LABEL_10;
    }
  }

  if (qword_100049C18 != -1)
  {
    goto LABEL_37;
  }

LABEL_26:
  v21 = type metadata accessor for Logger();
  sub_100004274(v21, qword_10004C088);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "All devices completed uploading successfully!", v24, 2u);
  }

  v18 = [objc_opt_self() sharedManager];
  [v18 finish];
LABEL_29:
}

uint64_t sub_10002D25C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000CFEC;

  return sub_1000223F4(a1, v4, v5, v6);
}

uint64_t sub_10002D314(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000061F4(&unk_10004A630, &qword_100038A30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002D384(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100010F58;

  return sub_100023078(a1, v4);
}

uint64_t sub_10002D43C()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_10002D484(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  result = [a1 setStatus:v3];
  if ((v5 & 1) == 0)
  {

    return [a1 setConsent:v4];
  }

  return result;
}

uint64_t sub_10002D4F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_10002D524(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

_OWORD *sub_10002D568(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10002D628(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10002D6A0()
{
  result = qword_10004A610;
  if (!qword_10004A610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004A610);
  }

  return result;
}

uint64_t sub_10002D6F4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10002D628(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002D73C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002D77C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002D7C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100010F58;

  return sub_10001DF98(a1, v4, v5, v6);
}

uint64_t sub_10002D894()
{
  v1 = sub_1000061F4(&qword_10004A478, &qword_100038D78);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10002D96C(uint64_t a1)
{
  v4 = *(sub_1000061F4(&qword_10004A478, &qword_100038D78) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v1 + 2);
  v7 = *(v1 + 3);
  v8 = v1[4];
  v9 = *(v1 + 5);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000CFEC;

  return sub_100020B6C(v8, a1, v6, v7, v9, v1 + v5);
}

uint64_t sub_10002DA80()
{
  v1 = sub_1000061F4(&qword_10004A478, &qword_100038D78);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10002DB58()
{
  sub_1000061F4(&qword_10004A478, &qword_100038D78);
  v1 = *(v0 + 16);

  return sub_100020FC8(v1);
}

uint64_t sub_10002DBEC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002DC3C(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_10002DC84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100010F58;

  return sub_10001FCB4();
}

uint64_t sub_10002DD84(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_10002E14C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10002DE1C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_10002DF64(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = (result + v8 + 16) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *result = a2 & 0x7FFFFFFF;
        result[1] = 0;
      }

      else
      {
        result[1] = a2 - 1;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

unint64_t sub_10002E14C()
{
  result = qword_10004A508;
  if (!qword_10004A508)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10004A508);
  }

  return result;
}

uint64_t sub_10002E1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10002E2C0()
{
  sub_1000061F4(&qword_10004A358, &unk_100038FB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100038E40;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  *(inited + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 56) = v2;
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v3;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v4;
  *(inited + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 104) = v5;
  *(inited + 112) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 120) = v6;
  v7 = sub_100034954(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  qword_10004C0E0 = v7;
  return result;
}

uint64_t sub_10002E3C8()
{
  v1[3] = v0;
  sub_1000061F4(&unk_10004A630, &qword_100038A30);
  v1[4] = swift_task_alloc();
  v2 = type metadata accessor for URL();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_10002E4C0, 0, 0);
}

uint64_t sub_10002E4C0()
{
  v15 = v0;
  if (qword_100049BF8 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  sub_100004274(v2, qword_10004C028);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_100031FE8(*(v6 + OBJC_IVAR____TtC16enhancedloggingd10BugSession_id), *(v6 + OBJC_IVAR____TtC16enhancedloggingd10BugSession_id + 8), &v14);
    _os_log_impl(&_mh_execute_header, v4, v5, "[%{public}s] Starting new bug session", v7, 0xCu);
    sub_10000D154(v8);
  }

  v9 = v0[3];
  v10 = swift_task_alloc();
  v0[8] = v10;
  *(v10 + 16) = v9;
  *(v10 + 24) = 0;
  v11 = swift_task_alloc();
  v0[9] = v11;
  v12 = sub_10001256C(0, &qword_10004A618, DEDBugSession_ptr);
  *v11 = v0;
  v11[1] = sub_10002E6F0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000021, 0x800000010003A300, sub_10003545C, v10, v12);
}

uint64_t sub_10002E6F0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_10002EA1C;
  }

  else
  {

    v2 = sub_10002E80C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10002E80C()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  [v5 setUploadDelegate:v4];
  v6 = *(v4 + OBJC_IVAR____TtC16enhancedloggingd10BugSession_bugSession);
  *(v4 + OBJC_IVAR____TtC16enhancedloggingd10BugSession_bugSession) = v5;
  v7 = v5;

  sub_1000352C4(v4 + OBJC_IVAR____TtC16enhancedloggingd10BugSession_consentFormURL, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v8 = v0[4];

    sub_100010EB8(v8, &unk_10004A630, &qword_100038A30);
  }

  else
  {
    v9 = v0[10];
    (*(v0[6] + 32))(v0[7], v0[4], v0[5]);
    v10 = Data.init(contentsOf:options:)();
    v13 = v0[6];
    v12 = v0[7];
    v14 = v0[5];
    if (v9)
    {
      (*(v13 + 8))(v0[7], v0[5]);

      v15 = v0[1];
      goto LABEL_7;
    }

    v16 = v10;
    v17 = v11;
    isa = Data._bridgeToObjectiveC()().super.isa;
    URL.lastPathComponent.getter();
    v19 = String._bridgeToObjectiveC()();

    [v7 addData:isa withFilename:v19];
    sub_100010B10(v16, v17);

    (*(v13 + 8))(v12, v14);
  }

  v15 = v0[1];
LABEL_7:

  return v15();
}

uint64_t sub_10002EA1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002EAB4()
{
  v17 = v0;
  v1 = v0[9];
  v2 = OBJC_IVAR____TtC16enhancedloggingd10BugSession_bugSession;
  v0[10] = OBJC_IVAR____TtC16enhancedloggingd10BugSession_bugSession;
  if (*&v1[v2])
  {
    v3 = v0[1];

    return v3();
  }

  else
  {
    if (qword_100049BF8 != -1)
    {
      swift_once();
      v1 = v0[9];
    }

    v5 = type metadata accessor for Logger();
    sub_100004274(v5, qword_10004C028);
    v6 = v1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[9];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_100031FE8(*(v9 + OBJC_IVAR____TtC16enhancedloggingd10BugSession_id), *(v9 + OBJC_IVAR____TtC16enhancedloggingd10BugSession_id + 8), &v16);
      _os_log_impl(&_mh_execute_header, v7, v8, "[%{public}s] Reconnecting to bug session", v10, 0xCu);
      sub_10000D154(v11);
    }

    v12 = v0[9];
    v13 = swift_task_alloc();
    v0[11] = v13;
    *(v13 + 16) = v12;
    *(v13 + 24) = 1;
    v14 = swift_task_alloc();
    v0[12] = v14;
    v15 = sub_10001256C(0, &qword_10004A618, DEDBugSession_ptr);
    *v14 = v0;
    v14[1] = sub_10002ED3C;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 8, 0, 0, 0xD000000000000021, 0x800000010003A300, sub_10003512C, v13, v15);
  }
}

uint64_t sub_10002ED3C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_10002EFA8;
  }

  else
  {

    v2 = sub_10002EE58;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10002EE58()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  [v3 setUploadDelegate:v1];
  v4 = *&v1[v2];
  *&v1[v2] = v3;
  v5 = v3;

  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v5;
  v0[6] = sub_100035138;
  v0[7] = v6;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10002F384;
  v0[5] = &unk_100046020;
  v7 = _Block_copy(v0 + 2);
  v8 = v1;
  v9 = v5;

  [v9 synchronizeSessionStatusWithCompletion:v7];
  _Block_release(v7);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10002EFA8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10002F00C(unint64_t a1, unint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if (qword_100049BF8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100004274(v8, qword_10004C028);
  v9 = a4;

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v12 = 136446466;
    *(v12 + 4) = sub_100031FE8(*&v9[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id], *&v9[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id + 8], aBlock);
    *(v12 + 12) = 2080;
    sub_10001256C(0, &qword_10004A608, DEDExtension_ptr);
    v13 = Array.description.getter();
    v15 = sub_100031FE8(v13, v14, aBlock);

    *(v12 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%{public}s] Ongoing DEs: %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  if (a2 >> 62)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
    if (v16)
    {
LABEL_7:
      if (v16 < 1)
      {
        __break(1u);
      }

      else
      {
        v17 = 0;
        do
        {
          if ((a2 & 0xC000000000000001) != 0)
          {
            v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v18 = *(a2 + 8 * v17 + 32);
          }

          v19 = v18;
          ++v17;
          v20 = swift_allocObject();
          *(v20 + 16) = v9;
          *(v20 + 24) = v19;
          aBlock[4] = sub_100035140;
          aBlock[5] = v20;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100035458;
          aBlock[3] = &unk_100046070;
          v21 = _Block_copy(aBlock);
          v22 = v9;
          v23 = v19;

          [a5 attachCompletionHandlerForOngoingOperation:v23 handler:v21];
          _Block_release(v21);
        }

        while (v16 != v17);
      }

      return;
    }
  }

  else
  {
    v16 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_7;
    }
  }

  v9[OBJC_IVAR____TtC16enhancedloggingd10BugSession_didCompleteCollection] = 1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100021998(v9, a1);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_10002F384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  sub_10001256C(0, &qword_10004A600, DEDAttachmentGroup_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10001256C(0, &qword_10004A608, DEDExtension_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10001256C(0, &qword_10004A620, DEDExtensionIdentifier_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4(v5, v6, v7);
}

void sub_10002F480(uint64_t a1, char *a2, uint64_t a3)
{
  v3 = a3;
  v6 = sub_1000061F4(&qword_10004A628, &unk_100038FC0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = sub_100030D40(v3);
  v11 = [objc_opt_self() sharedInstance];
  v12 = String._bridgeToObjectiveC()();
  v18 = *&a2[OBJC_IVAR____TtC16enhancedloggingd10BugSession_device];
  (*(v7 + 16))(v9, a1, v6);
  v13 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  (*(v7 + 32))(v14 + v13, v9, v6);
  aBlock[4] = sub_100035234;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002F990;
  aBlock[3] = &unk_1000460C0;
  v15 = _Block_copy(aBlock);
  v16 = a2;

  [v11 startBugSessionWithIdentifier:v12 configuration:v10 target:v18 completion:v15];
  _Block_release(v15);
}

uint64_t sub_10002F6B8(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v19 = a1;
    v3 = a1;
    sub_1000061F4(&qword_10004A628, &unk_100038FC0);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (qword_100049BF8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100004274(v7, qword_10004C028);
    v8 = a3;
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v11 = 136446466;
      *(v11 + 4) = sub_100031FE8(*&v8[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id], *&v8[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id + 8], &v19);
      *(v11 + 12) = 2112;
      if (a2)
      {
        swift_errorRetain();
        v14 = _swift_stdlib_bridgeErrorToNSError();
        v15 = v14;
      }

      else
      {
        v14 = 0;
        v15 = 0;
      }

      *(v11 + 14) = v14;
      *v12 = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "[%{public}s] Error starting bug session: %@", v11, 0x16u);
      sub_100010EB8(v12, &qword_100049E70, &qword_100038FA0);

      sub_10000D154(v13);
    }

    v16 = a2;
    if (!a2)
    {
      v17 = type metadata accessor for SessionError();
      sub_1000353E8(&qword_100049E80, &type metadata accessor for SessionError, &protocol conformance descriptor for SessionError);
      v16 = swift_allocError();
      (*(*(v17 - 8) + 104))(v18, enum case for SessionError.noBugSession(_:), v17);
    }

    v19 = v16;
    swift_errorRetain();
    sub_1000061F4(&qword_10004A628, &unk_100038FC0);
    return CheckedContinuation.resume(throwing:)();
  }
}

void sub_10002F990(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_10002FA1C(void *a1)
{
  v55 = type metadata accessor for CharacterSet();
  v2 = *(v55 - 8);
  __chkstk_darwin(v55);
  v4 = v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [a1 platform];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v56 = v6;
  v57 = v8;
  v58 = 44;
  v59 = 0xE100000000000000;
  v54[2] = sub_10002D6A0();
  v9 = StringProtocol.components<A>(separatedBy:)();

  v10 = *(v9 + 16);
  if (v10)
  {
    v58 = _swiftEmptyArrayStorage;
    sub_100028404(0, v10, 0);
    v11 = v58;
    v12 = (v2 + 8);
    v54[0] = v9;
    v13 = (v9 + 40);
    do
    {
      v14 = *v13;
      v56 = *(v13 - 1);
      v57 = v14;

      static CharacterSet.whitespaces.getter();
      v15 = StringProtocol.trimmingCharacters(in:)();
      v17 = v16;
      (*v12)(v4, v55);

      v58 = v11;
      v19 = v11[2];
      v18 = v11[3];
      if (v19 >= v18 >> 1)
      {
        sub_100028404((v18 > 1), v19 + 1, 1);
        v11 = v58;
      }

      v11[2] = v19 + 1;
      v20 = &v11[2 * v19];
      v20[4] = v15;
      v20[5] = v17;
      v13 += 2;
      --v10;
    }

    while (v10);

    v22 = v11[2];
    if (v22)
    {
LABEL_7:
      v23 = 0;
      v55 = (v11 + 4);
      v24 = _swiftEmptyArrayStorage;
      while (v23 < v11[2])
      {
        v25 = (v55 + 16 * v23);
        v27 = *v25;
        v26 = v25[1];
        ++v23;
        v28 = HIBYTE(v26) & 0xF;
        if ((v26 & 0x2000000000000000) == 0)
        {
          v28 = v27 & 0xFFFFFFFFFFFFLL;
        }

        if (v28)
        {
          v29 = objc_opt_self();

          v30 = [v29 allPlatforms];
          v31 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          if (*(v31 + 16) && (Hasher.init(_seed:)(), String.hash(into:)(), v32 = Hasher._finalize()(), v33 = -1 << *(v31 + 32), v34 = v32 & ~v33, ((*(v31 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) != 0))
          {
            v35 = ~v33;
            while (1)
            {
              v36 = (*(v31 + 48) + 16 * v34);
              v37 = *v36 == v27 && v36[1] == v26;
              if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v34 = (v34 + 1) & v35;
              if (((*(v31 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
              {
                goto LABEL_8;
              }
            }

            result = swift_isUniquelyReferenced_nonNull_native();
            v58 = v24;
            if ((result & 1) == 0)
            {
              result = sub_100028404(0, v24[2] + 1, 1);
              v24 = v58;
            }

            v39 = v24[2];
            v38 = v24[3];
            if (v39 >= v38 >> 1)
            {
              result = sub_100028404((v38 > 1), v39 + 1, 1);
              v24 = v58;
            }

            v24[2] = v39 + 1;
            v40 = &v24[2 * v39];
            v40[4] = v27;
            v40[5] = v26;
          }

          else
          {
LABEL_8:
          }
        }

        if (v23 == v22)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
      return result;
    }
  }

  else
  {

    v11 = _swiftEmptyArrayStorage;
    v22 = _swiftEmptyArrayStorage[2];
    if (v22)
    {
      goto LABEL_7;
    }
  }

  v24 = _swiftEmptyArrayStorage;
LABEL_31:

  v41 = sub_100034954(v24);

  if (*(v41 + 16))
  {
    v42 = &selRef_clearPendingFollowUpItems_;
  }

  else
  {
    v43 = [objc_opt_self() currentDevice];
    v42 = &selRef_clearPendingFollowUpItems_;
    if (v43)
    {
      v44 = v43;

      sub_1000061F4(&qword_10004A358, &unk_100038FB0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000387E0;
      v46 = [v44 platform];
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      *(inited + 32) = v47;
      *(inited + 40) = v49;
      v41 = sub_100034954(inited);
      swift_setDeallocating();
      sub_100010C3C(inited + 32);
    }
  }

  v50 = [*(v54[1] + OBJC_IVAR____TtC16enhancedloggingd10BugSession_device) v42[52]];
  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v52;

  LOBYTE(v50) = sub_10002E1C8(v51, v53, v41);

  return v50 & 1;
}

_DWORD *sub_10002FF68(_DWORD *a1)
{
  v3 = v1;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v75 - v10;
  v12 = *&v1[OBJC_IVAR____TtC16enhancedloggingd10BugSession_bugSession];
  if (v12)
  {
    v78 = v2;
    v82 = v12;
    v13 = [a1 typeName];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    [*&v3[OBJC_IVAR____TtC16enhancedloggingd10BugSession_device] operatingSystemVersion];
    v17 = sub_1000355D4(v14, v16, aBlock, v86, v87);
    v19 = v18;

    v83 = v11;
    v79 = v6;
    v80 = v5;
    v77 = v9;
    if (v19)
    {
      v81 = v19;
      v20 = v17;
    }

    else
    {
      v28 = [a1 type];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v81 = v29;
    }

    *&v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v91 + 1) = v30;
    AnyHashable.init<A>(_:)();
    v92 = &type metadata for String;
    *&v91 = 0xD00000000000001ALL;
    *(&v91 + 1) = 0x8000000100039500;
    v31 = [a1 parameters];
    v32 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10002D568(&v91, v84);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v93 = v32;
    sub_1000256F8(v84, &aBlock, isUniquelyReferenced_nonNull_native);
    sub_10002D5D4(&aBlock);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [a1 setParameters:isa];

    [a1 executeAfterDuration];
    Date.init(timeIntervalSinceNow:)();
    v76 = v20;
    v35 = String._bridgeToObjectiveC()();
    v36 = [a1 parameters];
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v37 = Dictionary._bridgeToObjectiveC()().super.isa;

    v38 = Date._bridgeToObjectiveC()().super.isa;
    v39 = swift_allocObject();
    *(v39 + 16) = v3;
    *(v39 + 24) = a1;
    v89 = sub_100035108;
    v90 = v39;
    aBlock = _NSConcreteStackBlock;
    v86 = 1107296256;
    v87 = sub_100035458;
    v88 = &unk_100045FD0;
    v40 = _Block_copy(&aBlock);
    v41 = v3;
    v42 = a1;

    a1 = [v82 startDiagnosticExtensionWithIdentifier:v35 parameters:v37 deferRunUntil:v38 completion:v40];
    _Block_release(v40);

    if (a1)
    {
      v43 = v80;
      v44 = v81;
      v45 = v79;
      if (qword_100049BF8 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_100004274(v46, qword_10004C028);
      v47 = v77;
      v48 = v83;
      (*(v45 + 16))(v77, v83, v43);
      v49 = v41;

      v50 = v44;
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        aBlock = v75;
        *v53 = 136446722;
        *(v53 + 4) = sub_100031FE8(*&v49[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id], *&v49[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id + 8], &aBlock);
        *(v53 + 12) = 2080;
        v54 = sub_100031FE8(v76, v50, &aBlock);

        *(v53 + 14) = v54;
        *(v53 + 22) = 2080;
        sub_1000353E8(&qword_100049E98, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v55 = dispatch thunk of CustomStringConvertible.description.getter();
        v57 = v56;
        v58 = *(v45 + 8);
        v58(v47, v43);
        v59 = sub_100031FE8(v55, v57, &aBlock);

        *(v53 + 24) = v59;
        _os_log_impl(&_mh_execute_header, v51, v52, "[%{public}s] DE %s scheduled to run at %s", v53, 0x20u);
        swift_arrayDestroy();

        v58(v83, v43);
      }

      else
      {

        v73 = *(v45 + 8);
        v73(v47, v43);
        v73(v48, v43);
      }
    }

    else
    {

      v60 = v79;
      if (qword_100049BF8 != -1)
      {
        swift_once();
      }

      v61 = type metadata accessor for Logger();
      sub_100004274(v61, qword_10004C028);
      v62 = v41;
      v63 = v42;
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v64, v65))
      {
        a1 = swift_slowAlloc();
        aBlock = swift_slowAlloc();
        *a1 = 136446466;
        *(a1 + 1) = sub_100031FE8(*&v62[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id], *&v62[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id + 8], &aBlock);
        *(a1 + 6) = 2080;
        v66 = [v63 type];
        v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v69 = v68;

        v70 = sub_100031FE8(v67, v69, &aBlock);

        *(a1 + 14) = v70;
        _os_log_impl(&_mh_execute_header, v64, v65, "[%{public}s] Failed to schedule DE %s", a1, 0x16u);
        swift_arrayDestroy();
      }

      v71 = type metadata accessor for SessionError();
      sub_1000353E8(&qword_100049E80, &type metadata accessor for SessionError, &protocol conformance descriptor for SessionError);
      swift_allocError();
      (*(*(v71 - 8) + 104))(v72, enum case for SessionError.failedToScheduleDiagnosticExtension(_:), v71);
      swift_willThrow();

      (*(v60 + 8))(v83, v80);
    }
  }

  else
  {
    if (qword_100049BF8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100004274(v21, qword_10004C028);
    v22 = v1;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      a1 = swift_slowAlloc();
      aBlock = a1;
      *v25 = 136446466;
      *(v25 + 4) = sub_100031FE8(*&v22[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id], *&v22[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id + 8], &aBlock);
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_100031FE8(0xD00000000000002BLL, 0x800000010003A290, &aBlock);
      _os_log_impl(&_mh_execute_header, v23, v24, "[%{public}s] %s called when bugSession is nil", v25, 0x16u);
      swift_arrayDestroy();
    }

    v26 = type metadata accessor for SessionError();
    sub_1000353E8(&qword_100049E80, &type metadata accessor for SessionError, &protocol conformance descriptor for SessionError);
    swift_allocError();
    (*(*(v26 - 8) + 104))(v27, enum case for SessionError.noBugSession(_:), v26);
    swift_willThrow();
  }

  return a1;
}

uint64_t sub_100030A78(void *a1, int a2, id a3, SEL *a4)
{
  v5 = [a3 *a4];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  sub_1000310E0(v6, v8, a1);
}

id sub_100030AFC()
{
  v1 = *&v0[OBJC_IVAR____TtC16enhancedloggingd10BugSession_bugSession];
  if (v1)
  {
    return [v1 scheduleNotification];
  }

  if (qword_100049BF8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100004274(v3, qword_10004C028);
  v4 = v0;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_100031FE8(*&v4[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id], *&v4[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id + 8], &v10);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_100031FE8(0xD000000000000016, 0x800000010003A0C0, &v10);
    _os_log_impl(&_mh_execute_header, v5, v6, "[%{public}s] %s called when bugSession is nil", v7, 0x16u);
    swift_arrayDestroy();
  }

  v8 = type metadata accessor for SessionError();
  sub_1000353E8(&qword_100049E80, &type metadata accessor for SessionError, &protocol conformance descriptor for SessionError);
  swift_allocError();
  (*(*(v8 - 8) + 104))(v9, enum case for SessionError.noBugSession(_:), v8);
  return swift_willThrow();
}

id sub_100030D40(char a1)
{
  if (qword_100049BF8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100004274(v3, qword_10004C028);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_100031FE8(*&v4[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id], *&v4[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id + 8], &v20);
    *(v7 + 12) = 2080;
    v8 = Dictionary.description.getter();
    v10 = sub_100031FE8(v8, v9, &v20);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%{public}s] Creating bug session config with metadata: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v11 = [objc_allocWithZone(DEDBugSessionConfiguration) init];
  if (qword_100049C40 != -1)
  {
    swift_once();
  }

  isa = Set._bridgeToObjectiveC()().super.isa;
  [v11 requestCapabilitiesSet:isa];

  v13 = [objc_opt_self() sharedInstance];
  v14 = [v13 cloudKitContainerIdentifier];

  if (a1)
  {
    v15 = 0;
  }

  else
  {
    v15 = 3;
  }

  [v11 setFinishingMove:v15];
  v16 = [v14 containerIdentifier];
  if (!v16)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = String._bridgeToObjectiveC()();
  }

  [v11 setCloudkitContainer:v16];

  v17 = Dictionary._bridgeToObjectiveC()().super.isa;
  [v11 setCloudkitData:v17];

  [v11 setCloudkitUseDevelopmentEnvironment:{objc_msgSend(v14, "environment") == 2}];
  [v11 setNotifyingMove:3];
  v18 = [objc_opt_self() enhancedLoggingConfiguration];
  [v11 setNotifierConfiguration:v18];

  return v11;
}

void sub_1000310E0(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = type metadata accessor for URL();
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v3[OBJC_IVAR____TtC16enhancedloggingd10BugSession_bugSession];
  if (v11)
  {
    v37 = a1;
    v38 = v8;
    v12 = qword_100049BF8;
    v13 = v11;
    if (v12 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100004274(v14, qword_10004C028);
    v15 = v3;

    v16 = a3;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v36 = v13;
      v20 = v19;
      aBlock[0] = swift_slowAlloc();
      *v20 = 136446722;
      *(v20 + 4) = sub_100031FE8(*&v15[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id], *&v15[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id + 8], aBlock);
      *(v20 + 12) = 2082;
      *(v20 + 14) = sub_100031FE8(v37, a2, aBlock);
      *(v20 + 22) = 2080;
      v21 = [v16 rootURL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1000353E8(&qword_10004A5F8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      (v38[1].isa)(v10, v7);
      v25 = sub_100031FE8(v22, v24, aBlock);

      *(v20 + 24) = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, "[%{public}s] DE %{public}s finished with attachments at %s", v20, 0x20u);
      swift_arrayDestroy();

      v13 = v36;
    }

    v26 = swift_allocObject();
    *(v26 + 16) = v15;
    aBlock[4] = sub_1000350A8;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031970;
    aBlock[3] = &unk_100045F80;
    v27 = _Block_copy(aBlock);
    v28 = v15;

    [v13 getSessionStatusWithCompletion:v27];
    _Block_release(v27);
  }

  else
  {
    if (qword_100049BF8 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100004274(v29, qword_10004C028);
    v30 = v3;
    v38 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      aBlock[0] = v33;
      *v32 = 136446210;
      *(v32 + 4) = sub_100031FE8(*&v30[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id], *&v30[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id + 8], aBlock);
      _os_log_impl(&_mh_execute_header, v38, v31, "[%{public}s] bugSession is nil", v32, 0xCu);
      sub_10000D154(v33);
    }

    else
    {
      v34 = v38;
    }
  }
}

void sub_1000315DC(uint64_t a1, unint64_t a2, void *a3)
{
  if (a2 >> 62)
  {
    v19 = a1;
    v4 = _CocoaArrayWrapper.endIndex.getter();
    a1 = v19;
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    if (qword_100049BF8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100004274(v5, qword_10004C028);
    v6 = a3;

    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v8 = 136446466;
      *(v8 + 4) = sub_100031FE8(*&v6[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id], *&v6[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id + 8], &v21);
      *(v8 + 12) = 2082;
      sub_10001256C(0, &qword_10004A608, DEDExtension_ptr);
      v9 = Array.description.getter();
      v11 = sub_100031FE8(v9, v10, &v21);

      *(v8 + 14) = v11;
      _os_log_impl(&_mh_execute_header, oslog, v7, "[%{public}s] Ongoing extensions: %{public}s", v8, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    v12 = a1;
    if (qword_100049BF8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100004274(v13, qword_10004C028);
    v14 = a3;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v21 = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_100031FE8(*&v14[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id], *&v14[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id + 8], &v21);
      _os_log_impl(&_mh_execute_header, v15, v16, "[%{public}s] All DEs finished", v17, 0xCu);
      sub_10000D154(v18);
    }

    v14[OBJC_IVAR____TtC16enhancedloggingd10BugSession_didCompleteCollection] = 1;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100021998(v14, v12);

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100031970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  sub_10001256C(0, &qword_10004A600, DEDAttachmentGroup_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10001256C(0, &qword_10004A608, DEDExtension_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3(v4, v5);
}

id sub_100031A68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BugSession(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BugSession(uint64_t a1)
{
  result = qword_10004A558;
  if (!qword_10004A558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100031B94(uint64_t a1)
{
  sub_10001DF40(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

char *sub_100031CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *&v3[OBJC_IVAR____TtC16enhancedloggingd10BugSession_device];
  sub_1000061F4(&qword_10004A358, &unk_100038FB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000387E0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v9;
  sub_100034954(inited);
  swift_setDeallocating();
  sub_100010C3C(inited + 32);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v11 = [v7 hasCapabilities:isa];

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = a1 == 1;
  }

  if (v12 && a2 == 1)
  {
    return [v3 bugSession:a3 didFinishUploadingWithError:0];
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else
    {
      v15 = result;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v16 = [v7 identifier];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10000C814(v15, a1, a2);

        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

unint64_t sub_100031F94()
{
  result = qword_10004A5D0;
  if (!qword_10004A5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004A5D0);
  }

  return result;
}

unint64_t sub_100031FE8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000320B4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000D268(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000D154(v11);
  return v7;
}

unint64_t sub_1000320B4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000321C0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1000321C0(uint64_t a1, unint64_t a2)
{
  v3 = sub_10003220C(a1, a2);
  sub_10003233C(&off_100045230);
  return v3;
}

void *sub_10003220C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_100032428(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100032428(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10003233C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10003249C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100032428(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000061F4(&unk_10004A5E0, &qword_100038FA8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10003249C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000061F4(&unk_10004A5E0, &qword_100038FA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100032590(uint64_t a1)
{
  v2 = v1;
  v3 = sub_100023838(a1);
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
    sub_100025AF4();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 16 * v5);
  sub_100024D70(v8, v7);
  *v2 = v7;
  return v9;
}

uint64_t sub_100032624(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1000238C4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100025EE4();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_100025204(v6, v8);
  *v3 = v8;
  return v9;
}

Swift::Int sub_1000326BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000061F4(&qword_10004A5F0, &qword_100038C40);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_10003291C(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for TargetDevice.DeviceType();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1000061F4(&qword_10004A470, &unk_100038FD0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1000353E8(&unk_10004A640, &type metadata accessor for TargetDevice.DeviceType, &protocol conformance descriptor for TargetDevice.DeviceType);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

Swift::Int sub_100032C78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000061F4(&qword_10004A668, &unk_100038FE0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v2;
    v31 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    v32 = result;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v33 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(*(v17 + 16));
      v18 = *(v17 + 16);
      if (v18)
      {
        v19 = (v17 + 32);
        do
        {
          v20 = *v19++;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v21 = v20;
          String.hash(into:)();

          --v18;
        }

        while (v18);
      }

      result = Hasher._finalize()();
      v5 = v32;
      v22 = -1 << *(v32 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v32 + 48) + 8 * v13) = v17;
      ++*(v32 + 16);
      v3 = v31;
      v10 = v33;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v33 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero(v7, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v30;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_100032F30(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_100034298(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100033080(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for TargetDevice.DeviceType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1000353E8(&unk_10004A640, &type metadata accessor for TargetDevice.DeviceType, &protocol conformance descriptor for TargetDevice.DeviceType);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1000353E8(&qword_10004A3D8, &type metadata accessor for TargetDevice.DeviceType, &protocol conformance descriptor for TargetDevice.DeviceType);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100034418(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

void sub_100033360(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  Hasher.init(_seed:)();
  v6 = *(a2 + 16);
  Hasher._combine(_:)(v6);
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = (a2 + 32);
    do
    {
      v9 = *v8++;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;
      String.hash(into:)();

      --v7;
    }

    while (v7);
  }

  v11 = Hasher._finalize()();
  v12 = v5 + 56;
  v13 = -1 << *(v5 + 32);
  v14 = v11 & ~v13;
  if ((*(v5 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v28 = v3;
    v27 = ~v13;
    while (1)
    {
      v16 = *(*(v5 + 48) + 8 * v14);
      if (*(v16 + 16) == v6)
      {
        break;
      }

LABEL_6:
      v14 = (v14 + 1) & v15;
      if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    if (!v6 || v16 == a2)
    {
LABEL_22:

      *a1 = *(*(v5 + 48) + 8 * v14);
    }

    else
    {

      v17 = 4;
      v18 = v6;
      while ((v17 - 4) < *(v16 + 16))
      {
        if ((v17 - 4) >= *(a2 + 16))
        {
          goto LABEL_25;
        }

        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;
        if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
        {
        }

        else
        {
          v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v24 & 1) == 0)
          {

            v12 = v5 + 56;
            v3 = v28;
            v15 = v27;
            goto LABEL_6;
          }
        }

        ++v17;
        if (!--v18)
        {

          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
    }
  }

  else
  {
LABEL_23:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *v3;

    sub_1000346BC(v26, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v30;
    *a1 = a2;
  }
}

void sub_1000335C4()
{
  v1 = v0;
  sub_1000061F4(&qword_10004A5F0, &qword_100038C40);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

void *sub_100033720()
{
  v1 = v0;
  v2 = type metadata accessor for TargetDevice.DeviceType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000061F4(&qword_10004A470, &unk_100038FD0);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
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
    *v1 = v8;
  }

  return result;
}

void sub_100033958()
{
  v1 = v0;
  sub_1000061F4(&qword_10004A668, &unk_100038FE0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

Swift::Int sub_100033AA8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000061F4(&qword_10004A5F0, &qword_100038C40);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_100033CE0(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for TargetDevice.DeviceType();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1000061F4(&qword_10004A470, &unk_100038FD0);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_1000353E8(&unk_10004A640, &type metadata accessor for TargetDevice.DeviceType, &protocol conformance descriptor for TargetDevice.DeviceType);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

Swift::Int sub_100033FFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000061F4(&qword_10004A668, &unk_100038FE0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    v31 = result;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v32 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(*(v17 + 16));
      v18 = *(v17 + 16);
      if (v18)
      {
        v19 = (v17 + 32);

        do
        {
          v20 = *v19++;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v21 = v20;
          String.hash(into:)();

          --v18;
        }

        while (v18);
      }

      else
      {
      }

      result = Hasher._finalize()();
      v5 = v31;
      v22 = -1 << *(v31 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_33;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v31 + 48) + 8 * v13) = v17;
      ++*(v31 + 16);
      v3 = v30;
      v10 = v32;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v29;
        goto LABEL_31;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v32 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v5;
  }

  return result;
}

void sub_100034298(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1000326BC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1000335C4();
      goto LABEL_16;
    }

    sub_100033AA8(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == a1 && v14[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = a1;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100034418(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for TargetDevice.DeviceType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10003291C(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_100033720();
      goto LABEL_12;
    }

    sub_100033CE0(v10 + 1);
  }

  v12 = *v3;
  sub_1000353E8(&unk_10004A640, &type metadata accessor for TargetDevice.DeviceType, &protocol conformance descriptor for TargetDevice.DeviceType);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1000353E8(&qword_10004A3D8, &type metadata accessor for TargetDevice.DeviceType, &protocol conformance descriptor for TargetDevice.DeviceType);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1000346BC(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_28;
  }

  if (a3)
  {
    sub_100032C78(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100033958();
      goto LABEL_28;
    }

    sub_100033FFC(v6 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  v9 = *(a1 + 16);
  Hasher._combine(_:)(v9);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = (a1 + 32);
    do
    {
      v12 = *v11++;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
      String.hash(into:)();

      --v10;
    }

    while (v10);
  }

  v14 = Hasher._finalize()();
  v15 = v8 + 56;
  v16 = -1 << *(v8 + 32);
  a2 = v14 & ~v16;
  if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
LABEL_28:
    v26 = *v30;
    *(*v30 + 8 * (a2 >> 6) + 56) |= 1 << a2;
    *(*(v26 + 48) + 8 * a2) = a1;
    v27 = *(v26 + 16);
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (!v28)
    {
      *(v26 + 16) = v29;
      return;
    }

    goto LABEL_32;
  }

  v17 = ~v16;
  v31 = ~v16;
  while (1)
  {
    v18 = *(*(v8 + 48) + 8 * a2);
    if (*(v18 + 16) == v9)
    {
      break;
    }

LABEL_13:
    a2 = (a2 + 1) & v17;
    if (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  if (!v9 || v18 == a1)
  {
    goto LABEL_34;
  }

  v19 = 0;
  while (v19 < *(v18 + 16))
  {
    if (v19 >= *(a1 + 16))
    {
      goto LABEL_31;
    }

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
    if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
    {
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v25 & 1) == 0)
      {

        v17 = v31;
        v15 = v8 + 56;
        goto LABEL_13;
      }
    }

    if (v9 == ++v19)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:

LABEL_34:
  sub_1000061F4(&qword_10004A650, &qword_100038C90);
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100034954(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100032F30(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1000349EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1000061F4(&qword_10004A650, &qword_100038C90);
  sub_100035334();
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;

      sub_100033360(&v6, v5);

      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_100034A88(uint64_t a1)
{
  v2 = type metadata accessor for TargetDevice.DeviceType();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_1000353E8(&unk_10004A640, &type metadata accessor for TargetDevice.DeviceType, &protocol conformance descriptor for TargetDevice.DeviceType);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_100033080(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_100034C24(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if ((a2 | a1) < 0)
    {
      __break(1u);
    }

    else
    {
      v6 = result;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v7 = [*(v2 + OBJC_IVAR____TtC16enhancedloggingd10BugSession_device) identifier];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10000C578(v6, a1, a2);

        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_100034D20(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    swift_errorRetain();
    if (qword_100049BF8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100004274(v3, qword_10004C028);
    swift_errorRetain();
    v4 = v1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v7 = 136446466;
      *(v7 + 4) = sub_100031FE8(*&v4[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id], *&v4[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id + 8], &v19);
      *(v7 + 12) = 2112;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 14) = v10;
      *v8 = v10;
      _os_log_impl(&_mh_execute_header, v5, v6, "[%{public}s] Upload failed: %@", v7, 0x16u);
      sub_100010EB8(v8, &qword_100049E70, &qword_100038FA0);

      sub_10000D154(v9);
    }

    else
    {
    }

    v17 = 2;
  }

  else
  {
    if (qword_100049BF8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100004274(v11, qword_10004C028);
    v12 = v1;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v19 = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_100031FE8(*&v12[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id], *&v12[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id + 8], &v19);
      _os_log_impl(&_mh_execute_header, v13, v14, "[%{public}s] Upload succeeded", v15, 0xCu);
      sub_10000D154(v16);
    }

    v17 = 1;
  }

  v2[OBJC_IVAR____TtC16enhancedloggingd10BugSession_uploadStatus] = v17;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10002CE50();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100035070()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000350B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000350C8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100035164()
{
  v1 = sub_1000061F4(&qword_10004A628, &unk_100038FC0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100035234(void *a1, uint64_t a2)
{
  sub_1000061F4(&qword_10004A628, &unk_100038FC0);
  v5 = *(v2 + 16);

  return sub_10002F6B8(a1, a2, v5);
}

uint64_t sub_1000352C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000061F4(&unk_10004A630, &qword_100038A30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100035334()
{
  result = qword_10004A658;
  if (!qword_10004A658)
  {
    sub_10002D628(&qword_10004A650, &qword_100038C90);
    sub_1000353E8(&qword_10004A660, type metadata accessor for ELSPlatform, &unk_1000386C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004A658);
  }

  return result;
}

uint64_t sub_1000353E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _sSo24NSOperatingSystemVersiona16enhancedloggingdE1loiySbAB_ABtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a5 >= a2 && a3 < a6;
  v8 = a2 < a5 || v7;
  if (a4 < a1)
  {
    v8 = 0;
  }

  if (a1 >= a4)
  {
    return v8;
  }

  else
  {
    return 1;
  }
}

unint64_t sub_10003557C()
{
  result = qword_10004A670;
  if (!qword_10004A670)
  {
    type metadata accessor for OperatingSystemVersion(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004A670);
  }

  return result;
}

unint64_t sub_1000355D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = 0xD000000000000036;
  v9 = *"optical" == a1 && a2 == 0xE700000000000000;
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (a3 >= 26)
  {
    if (a3 > 26)
    {
      return 0;
    }

    if (a4 >= 0 && (a4 > 0 || a5 >= 0))
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_100035688(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *"optical";
  v9 = a1 == 0xD000000000000036 && "ELSSnapshot8B16B20" == a2;
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (a3 >= 26)
  {
    if (a3 > 26)
    {
      return 0;
    }

    if (a4 >= 0 && (a4 > 0 || a5 >= 0))
    {
      return 0;
    }
  }

  return v8;
}

void sub_1000357C0(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 description];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "Enhanced logging already queued for: %@", a1, 0xCu);
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}