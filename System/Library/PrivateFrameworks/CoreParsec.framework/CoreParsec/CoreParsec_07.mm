uint64_t sub_1000A38EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100046184(&unk_10021A820, &qword_1001992D0);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  sub_10000EFEC(a3, v24 - v10, &unk_10021A820, &qword_1001992D0);
  v12 = type metadata accessor for TaskPriority();
  v13 = sub_100008D0C(v11, 1, v12);

  if (v13 == 1)
  {
    sub_10000B240(v11, &unk_10021A820, &qword_1001992D0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_10000B240(a3, &unk_10021A820, &qword_1001992D0);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000B240(a3, &unk_10021A820, &qword_1001992D0);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1000A3BD8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10005416C;

  return v6();
}

uint64_t sub_1000A3CC0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10005416C;

  return v7();
}

uint64_t sub_1000A3DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100046184(&unk_10021A820, &qword_1001992D0);
  __chkstk_darwin(v9 - 8);
  v11 = v22 - v10;
  sub_10000EFEC(a3, v22 - v10, &unk_10021A820, &qword_1001992D0);
  v12 = type metadata accessor for TaskPriority();
  if (sub_100008D0C(v11, 1, v12) == 1)
  {
    sub_10000B240(v11, &unk_10021A820, &qword_1001992D0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = String.utf8CString.getter() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_10000B240(a3, &unk_10021A820, &qword_1001992D0);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000B240(a3, &unk_10021A820, &qword_1001992D0);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_1000A4084(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000A417C;

  return v6(a1);
}

uint64_t sub_1000A417C()
{
  sub_100007B50();
  sub_10000A9A4();
  v1 = *v0;
  sub_100005898();
  *v2 = v1;

  sub_1000098BC();

  return v3();
}

uint64_t sub_1000A4268()
{
  sub_100006EE0();
  v0 = swift_task_alloc();
  v1 = sub_10000E144(v0);
  *v1 = v2;
  v3 = sub_1000089C4(v1);

  return v4(v3);
}

uint64_t sub_1000A42FC()
{
  sub_100008964();
  v0 = swift_task_alloc();
  v1 = sub_10000E144(v0);
  *v1 = v2;
  v1[1] = sub_10005416C;
  sub_10000BA3C();

  return v3();
}

uint64_t sub_1000A43B0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000A43F0()
{
  sub_100008964();
  v0 = swift_task_alloc();
  v1 = sub_100004054(v0);
  *v1 = v2;
  v1[1] = sub_10005416C;
  sub_10000BA3C();

  return v3();
}

uint64_t sub_1000A44AC()
{
  sub_100006EE0();
  sub_1000A5324();
  v0 = swift_task_alloc();
  v1 = sub_100004054(v0);
  *v1 = v2;
  v3 = sub_100005EEC(v1);

  return v4(v3);
}

unint64_t sub_1000A453C()
{
  result = qword_1002181B0;
  if (!qword_1002181B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002181B0);
  }

  return result;
}

uint64_t sub_1000A4590()
{
  sub_100006EE0();
  v0 = swift_task_alloc();
  v1 = sub_10000E144(v0);
  *v1 = v2;
  v3 = sub_1000089C4(v1);

  return v4(v3);
}

uint64_t sub_1000A4624()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A466C()
{
  sub_100006EE0();
  v0 = swift_task_alloc();
  v1 = sub_10000E144(v0);
  *v1 = v2;
  v3 = sub_1000089C4(v1);

  return v4(v3);
}

uint64_t sub_1000A4724(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_10000BE80();
}

uint64_t sub_1000A478C(void *a1)
{
  v2 = [a1 results];

  if (!v2)
  {
    return 0;
  }

  sub_100005180(0, &qword_100218228, _CPResultRankingFeedback_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000A4804(void *a1)
{
  v1 = [a1 userInfo];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000A48A0()
{
  sub_100008964();
  v0 = swift_task_alloc();
  v1 = sub_10000E144(v0);
  *v1 = v2;
  v1[1] = sub_10005416C;
  sub_10000BA3C();

  return v3();
}

void sub_1000A496C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v9 = sub_100046184(&qword_100218230, &unk_100199A00);
  __chkstk_darwin(v9);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v62 - v13;
  _Block_copy(a5);
  _Block_copy(a5);
  v15 = [a1 queryCommand];
  if (v15)
  {
    v16 = v15;
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v18 = v17;
      v19 = qword_1002140C0;
      v20 = v16;
      if (v19 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_10000964C(v21, qword_100232AB0);
      v22 = v20;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v66 = a3;
        v27 = a2;
        v28 = v26;
        v69 = v26;
        *v25 = 136315138;
        v67 = sub_100013354(v18, &selRef_entityIdentifier);
        v68 = v29;
        sub_100046184(&qword_1002181F0, &qword_10019C610);
        v30 = String.init<A>(describing:)();
        v32 = sub_100009684(v30, v31, &v69);

        *(v25 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v23, v24, "performing entity query command: %s", v25, 0xCu);
        sub_100007378(v28);
        a2 = v27;
        a3 = v66;
      }

      _Block_copy(a5);
      sub_1000DD860(a1, a3, a2, a5, v33, v34, v35, v36, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73);
    }

    else
    {
      v66 = a2;
      objc_opt_self();
      v37 = swift_dynamicCastObjCClass();
      if (v37)
      {
        v38 = v37;
        v39 = qword_1002140C0;
        v40 = v16;
        if (v39 != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for Logger();
        sub_10000964C(v41, qword_100232AB0);
        v42 = v40;
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v43, v44))
        {
          v65 = v43;
          v45 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v67 = v62;
          v63 = v45;
          *v45 = 136315138;
          v46 = [v38 card];
          HIDWORD(v64) = v44;
          if (v46)
          {
            v47 = v46;
            v48 = [v46 urlValue];

            if (v48)
            {
              static URL._unconditionallyBridgeFromObjectiveC(_:)();

              v49 = type metadata accessor for URL();
              v50 = 0;
            }

            else
            {
              v49 = type metadata accessor for URL();
              v50 = 1;
            }

            v51 = v66;
            sub_1000051C0(v11, v50, 1, v49);
            sub_1000A4E88(v11, v14, &qword_100218230, &unk_100199A00);
          }

          else
          {
            v52 = type metadata accessor for URL();
            sub_1000051C0(v14, 1, 1, v52);
            v51 = v66;
          }

          v53 = String.init<A>(describing:)();
          v55 = sub_100009684(v53, v54, &v67);

          v56 = v63;
          *(v63 + 1) = v55;
          v57 = v65;
          _os_log_impl(&_mh_execute_header, v65, BYTE4(v64), "performing show card command: %s", v56, 0xCu);
          sub_100007378(v62);
        }

        else
        {

          v51 = v66;
        }

        _Block_copy(a5);
        sub_1000DD860(a1, a3, v51, a5, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73);
      }

      else
      {
      }
    }
  }

  _Block_release(a5);
  _Block_release(a5);
  _Block_release(a5);
}

uint64_t sub_1000A4E88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10000B9F4(a1, a2, a3, a4);
  sub_1000036B8();
  v5 = sub_1000041F8();
  v6(v5);
  return v4;
}

uint64_t sub_1000A4EFC(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000899C();
  v4(v3);
  sub_1000036B8();
  v5 = sub_1000041F8();
  v6(v5);
  return a2;
}

uint64_t sub_1000A4F54()
{
  sub_100008964();
  BagTask = type metadata accessor for ForceFetchBagTask(0);
  sub_100005490(BagTask);
  v1 = swift_task_alloc();
  v2 = sub_100004054(v1);
  *v2 = v3;
  v2[1] = sub_10005416C;
  sub_10000BA3C();

  return sub_1000A3174();
}

uint64_t sub_1000A5030()
{
  sub_100006EE0();
  sub_1000A5324();
  v0 = swift_task_alloc();
  v1 = sub_100004054(v0);
  *v1 = v2;
  v3 = sub_100005EEC(v1);

  return v4(v3);
}

uint64_t sub_1000A50C0()
{
  sub_100006EE0();
  sub_1000A5324();
  v0 = swift_task_alloc();
  v1 = sub_100004054(v0);
  *v1 = v2;
  v3 = sub_100005EEC(v1);

  return v4(v3);
}

uint64_t sub_1000A5150(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000899C();
  v4(v3);
  sub_1000036B8();
  v5 = sub_1000041F8();
  v6(v5);
  return a2;
}

unint64_t sub_1000A51D0(uint64_t a1)
{
  result = type metadata accessor for ClientState(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for UserAgent();
    if (v3 <= 0x3F)
    {
      result = sub_100057FB0();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000A52AC()
{

  return specialized _ArrayBuffer._getElementSlowPath(_:)();
}

uint64_t sub_1000A52C4()
{

  return type metadata accessor for Lock();
}

void sub_1000A52E0(uint64_t a1)
{

  sub_1000ECA64(0, a1 & ~(a1 >> 63), 0);
}

uint64_t sub_1000A5330(uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

unint64_t sub_1000A5350(float a1)
{
  *v1 = a1;
  v5 = *(v3 - 136);

  return sub_100009684(v5, v2, (v3 - 88));
}

id sub_1000A5370(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1000B184C(a1, a2, a3, v3);
}

id sub_1000A5388@<X0>(void *a1@<X8>)
{

  return a1;
}

uint64_t sub_1000A53B4()
{
  result = sub_1000A53DC(5);
  byte_100232C58 = result & 1;
  return result;
}

uint64_t sub_1000A53DC(char a1)
{
  sub_1000A5468(a1);
  v1 = String._bridgeToObjectiveC()();

  v2 = MGCopyAnswer();

  if (!v2)
  {
    return 0;
  }

  result = swift_dynamicCast();
  if (result)
  {
    return v4;
  }

  return result;
}

unint64_t sub_1000A5468(char a1)
{
  result = 0x726556646C697542;
  switch(a1)
  {
    case 1:
      result = 0x4E746375646F7250;
      break;
    case 2:
      result = 0x54746375646F7250;
      break;
    case 3:
      result = 0x56746375646F7250;
      break;
    case 4:
      result = 0x6F436E6F69676552;
      break;
    case 5:
      result = 0x6C616E7265746E49;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x48746375646F7250;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000A55A0()
{
  if (qword_100214168 != -1)
  {
    swift_once();
  }

  return byte_100232C58;
}

void *sub_1000A55F0(void *a1, uint64_t a2)
{
  type metadata accessor for Locker();
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *(v5 + 16) = v6;
  *v6 = 0;
  v2[2] = v5;
  v7 = type metadata accessor for TopicCacheInMemoryImpl();
  v8 = swift_allocObject();
  *(v8 + 16) = 20;
  sub_1000A6C88();
  type metadata accessor for TopicCacheEntry(0);
  sub_1000A6CCC(&qword_1002183C0, sub_1000A6C88, &protocol conformance descriptor for NSObject);
  *(v8 + 24) = Dictionary.init(dictionaryLiteral:)();
  v2[8] = v7;
  v2[9] = &off_1001FE948;
  v2[4] = a2;
  v2[5] = v8;
  v2[10] = 0;
  v2[3] = a1;
  if (a1)
  {
    v9 = qword_100214178;

    v10 = a1;

    if (v9 != -1)
    {
      swift_once();
    }

    [v10 addObserver:v2 selector:"clearCache" name:qword_100232C78 object:0];
  }

  return v2;
}

void sub_1000A5790(void *a1)
{
  v44 = type metadata accessor for Date();
  v2 = *(v44 - 8);
  __chkstk_darwin(v44);
  v45 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100046184(&qword_1002183B0, &qword_10019C758);
  __chkstk_darwin(v4 - 8);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v38 - v8;
  v10 = type metadata accessor for TopicCacheEntry(0);
  __chkstk_darwin(v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v38 - v14;
  sub_100007534(a1 + 5, a1[8]);
  v16 = sub_100118784();
  if (v16)
  {
    v17 = v16;
    v39 = v12;
    v40 = v6;
    v18 = sub_10000D57C(v16);
    v19 = 0;
    v20 = v17 & 0xC000000000000001;
    v46 = v17 & 0xFFFFFFFFFFFFFF8;
    v47 = v18;
    v41 = v2;
    v42 = (v2 + 8);
    v43 = v17 & 0xC000000000000001;
    while (v47 != v19)
    {
      if (v20)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v19 >= *(v46 + 16))
        {
          goto LABEL_26;
        }

        v21 = *(v17 + 8 * v19 + 32);
      }

      v22 = v21;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      sub_100007534(a1 + 5, a1[8]);
      sub_100118BC4(v22, v9);
      if (sub_100008D0C(v9, 1, v10) == 1)
      {

        sub_10000F94C(v9, &qword_1002183B0, &qword_10019C758);
        break;
      }

      sub_1000A6BC0(v9, v15);
      v23 = sub_100007534(a1 + 5, a1[8]);
      if (!sub_100118B94(v23))
      {
        v24 = v10;
        v25 = v45;
        Date.init()();
        sub_1000A6CCC(&qword_1002183B8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v26 = v44;
        v2 = dispatch thunk of static Comparable.< infix(_:_:)();
        v27 = v25;
        v10 = v24;
        v20 = v43;
        (*v42)(v27, v26);
        if (v2)
        {
          sub_1000A6C2C(v15);

          break;
        }
      }

      sub_100007534(a1 + 5, a1[8]);
      sub_100118D64(v22);

      sub_1000A6C2C(v15);
      ++v19;
    }

    v28 = a1[10];
    if (v28)
    {
      [v28 invalidate];
    }

    v2 = v40;
    v20 = v41;
    if (!v47)
    {

      return;
    }

    v29 = v43;
    sub_100106BF8();
    if (!v29)
    {
      v30 = *(v17 + 32);
      goto LABEL_20;
    }

LABEL_27:
    v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_20:
    v31 = v30;

    sub_100007534(a1 + 5, a1[8]);
    sub_100118BC4(v31, v2);
    if (sub_100008D0C(v2, 1, v10) == 1)
    {

      sub_10000F94C(v2, &qword_1002183B0, &qword_10019C758);
    }

    else
    {
      v32 = v39;
      sub_1000A6BC0(v2, v39);
      v33 = v45;
      (*(v20 + 16))(v45, v32, v44);
      v34 = swift_allocObject();
      swift_weakInit();
      v35 = objc_allocWithZone(NSTimer);

      v36 = sub_1000A6A9C(v33, 0, sub_1000A6C24, v34, 0.0);

      sub_1000A6C2C(v32);

      v37 = a1[10];
      a1[10] = v36;
    }
  }
}

uint64_t sub_1000A5C6C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000A68CC(sub_1000A5790);
  }

  return result;
}

void sub_1000A5CD8(void *a1, uint64_t a2)
{
  v5 = *(*(v2 + 16) + 16);
  os_unfair_lock_lock(v5);
  sub_1000A5D44(a2, v2, a1);
  os_unfair_lock_unlock(v5);
  sub_1000A68CC(sub_1000A5790);
}

uint64_t sub_1000A5D44(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for TopicCacheEntry(0);
  __chkstk_darwin(v5 - 8);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1000F3C54(v8, v7);
  sub_100007534((a2 + 40), *(a2 + 64));
  sub_100118C9C(a3, v7);
  if (qword_100214088 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000964C(v9, qword_100232A08);
  v10 = a3;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21[0] = v14;
    *v13 = 136642819;
    v15 = [v10 description];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = sub_100009684(v16, v18, v21);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "Adding result for topic: %{sensitive}s", v13, 0xCu);
    sub_100007378(v14);
  }

  return sub_1000A6C2C(v7);
}

void sub_1000A6118(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v70 = a3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  sub_100003664();
  v9 = v8 - v7;
  v10 = sub_100046184(&qword_1002183B0, &qword_10019C758);
  __chkstk_darwin(v10 - 8);
  v12 = &v69 - v11;
  v13 = type metadata accessor for TopicCacheEntry(0);
  __chkstk_darwin(v13);
  sub_100003664();
  v16 = v15 - v14;
  v17 = type metadata accessor for Client();
  __chkstk_darwin(v17 - 8);
  sub_100003664();
  v20 = v19 - v18;
  v21 = a1[4];

  static Client.parsecd.getter();
  type metadata accessor for ResourceAccessSpan(0);
  swift_allocObject();
  v69 = sub_100004A34(v21, 20, v20, 0, 1);
  v83 = _swiftEmptyArrayStorage;
  v22 = sub_10000D57C(a2);
  v23 = 0;
  v79 = a2 & 0xC000000000000001;
  v80 = v22;
  v77 = (v6 + 8);
  v78 = a2 & 0xFFFFFFFFFFFFFF8;
  *&v24 = 136642819;
  v75 = v24;
  v73 = a1;
  v74 = v16;
  v71 = v12;
  v72 = a2;
  while (1)
  {
    if (v80 == v23)
    {
      *(v69 + qword_100216C08) = 1;
      sub_10000D684();

      v44 = v83;
      goto LABEL_27;
    }

    if (v79)
    {
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v23 >= *(v78 + 16))
      {
        goto LABEL_29;
      }

      v25 = *(a2 + 8 * v23 + 32);
    }

    v6 = v25;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    sub_100007534(a1 + 5, a1[8]);
    sub_100118BC4(v6, v12);
    if (sub_100008D0C(v12, 1, v13) == 1)
    {
      break;
    }

    v81 = v23;
    sub_1000A6BC0(v12, v16);
    Date.init()();
    sub_1000A6CCC(&qword_1002183B8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v26 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*v77)(v9, v5);
    if ((v26 & 1) == 0)
    {

      *(v69 + qword_100216C08) = 27;
      sub_10000D684();
      if (qword_100214088 != -1)
      {
        sub_100005F0C();
        swift_once();
      }

      v58 = type metadata accessor for Logger();
      sub_10000964C(v58, qword_100232A08);
      v59 = v6;
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v82 = v63;
        *v62 = v75;
        v64 = [v59 description];
        v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v67 = v66;

        v68 = sub_100009684(v65, v67, &v82);

        *(v62 + 4) = v68;
        _os_log_impl(&_mh_execute_header, v60, v61, "Cached result expired for: %{sensitive}s", v62, 0xCu);
        sub_100007378(v63);
        sub_1000036D4(v63);
        sub_1000036D4(v62);
      }

      else
      {
      }

      sub_1000A6C2C(v16);
      goto LABEL_26;
    }

    if (qword_100214088 != -1)
    {
      sub_100005F0C();
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10000964C(v27, qword_100232A08);
    v6 = v6;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v82 = v76;
      *v30 = v75;
      v31 = [v6 description];
      v32 = v6;
      v33 = v13;
      v34 = v9;
      v35 = v5;
      v36 = v31;
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      v5 = v35;
      v9 = v34;
      v13 = v33;
      v6 = v32;
      v40 = sub_100009684(v37, v39, &v82);
      v12 = v71;

      *(v30 + 4) = v40;
      a2 = v72;
      _os_log_impl(&_mh_execute_header, v28, v29, "Found cached result for: %{sensitive}s", v30, 0xCu);
      v41 = v76;
      sub_100007378(v76);
      v16 = v74;
      sub_1000036D4(v41);
      v42 = v30;
      a1 = v73;
      sub_1000036D4(v42);
    }

    sub_1000BAE90(v43);

    sub_1000A6C2C(v16);
    v23 = v81 + 1;
  }

  sub_10000F94C(v12, &qword_1002183B0, &qword_10019C758);
  if (qword_100214088 == -1)
  {
    goto LABEL_17;
  }

LABEL_30:
  sub_100005F0C();
  swift_once();
LABEL_17:
  v45 = type metadata accessor for Logger();
  sub_10000964C(v45, qword_100232A08);
  v46 = v6;
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.info.getter();

  v49 = os_log_type_enabled(v47, v48);
  v50 = v69;
  if (v49)
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v82 = v52;
    *v51 = v75;
    v53 = [v46 description];
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    v57 = sub_100009684(v54, v56, &v82);

    *(v51 + 4) = v57;
    _os_log_impl(&_mh_execute_header, v47, v48, "Cached result missing for: %{sensitive}s, will trigger server request", v51, 0xCu);
    sub_100007378(v52);
    sub_1000036D4(v52);
    sub_1000036D4(v51);
  }

  *(v50 + qword_100216C08) = 6;
  sub_10000D684();

LABEL_26:
  v44 = 0;
LABEL_27:
  *v70 = v44;
}

void sub_1000A68CC(void (*a1)(uint64_t))
{
  v3 = *(*(v1 + 16) + 16);
  os_unfair_lock_lock(v3);
  a1(v1);

  os_unfair_lock_unlock(v3);
}

void sub_1000A6924(void *a1)
{
  sub_100007534(a1 + 5, a1[8]);
  sub_100118E1C();
  v2 = a1[10];
  if (v2)
  {
    [v2 invalidate];
    v2 = a1[10];
  }

  a1[10] = 0;
}

uint64_t sub_1000A69D4()
{
  sub_1000A68CC(sub_1000A6924);
  v1 = *(v0 + 24);
  if (v1)
  {
    [v1 removeObserver:v0];
  }

  sub_100007378((v0 + 40));

  return v0;
}

uint64_t sub_1000A6A44()
{
  sub_1000A69D4();

  return _swift_deallocClassInstance(v0, 88, 7);
}

id sub_1000A6A9C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v17[4] = a3;
  v17[5] = a4;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_10002874C;
  v17[3] = &unk_1001FA340;
  v13 = _Block_copy(v17);
  v14 = [v6 initWithFireDate:isa interval:a2 & 1 repeats:v13 block:a5];
  _Block_release(v13);

  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 8))(a1, v15);

  return v14;
}

uint64_t sub_1000A6BC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TopicCacheEntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A6C2C(uint64_t a1)
{
  v2 = type metadata accessor for TopicCacheEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000A6C88()
{
  result = qword_100219380;
  if (!qword_100219380)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100219380);
  }

  return result;
}

uint64_t sub_1000A6CCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000A6D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtC7parsecd16DownloadResource_redirectUrl;
  v10 = type metadata accessor for URL();
  sub_1000051C0(v4 + v9, 1, 1, v10);
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  (*(*(v10 - 8) + 32))(v4 + OBJC_IVAR____TtC7parsecd16DownloadResource_url, a3, v10);
  sub_100011994();
  swift_beginAccess();
  sub_1000B1998(a4, v4 + v9);
  swift_endAccess();
  return v4;
}

void sub_1000A6DF0()
{
  sub_100005478();
  v1 = v0;
  v2 = type metadata accessor for URL();
  sub_100003650();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_10000407C();
  v8 = (v6 - v7);
  __chkstk_darwin(v9);
  v11 = v41 - v10;
  v12 = sub_100046184(&qword_100218230, &unk_100199A00);
  v13 = sub_100005490(v12);
  __chkstk_darwin(v13);
  sub_10000407C();
  v16 = v14 - v15;
  __chkstk_darwin(v17);
  v19 = v41 - v18;
  v20 = OBJC_IVAR____TtC7parsecd16DownloadResource_redirectUrl;
  sub_1000089E4(v1 + OBJC_IVAR____TtC7parsecd16DownloadResource_redirectUrl, &v43);
  sub_1000B1BA8(v1 + v20, v19, &qword_100218230, &unk_100199A00);
  v41[0] = v2;
  LODWORD(v2) = sub_100008D0C(v19, 1, v2);
  sub_100015C0C(v19, &qword_100218230, &unk_100199A00);
  sub_100046184(&qword_100214E48, &unk_1001995C0);
  v21 = (v4 + 16);
  v22 = (v4 + 8);
  if (v2 == 1)
  {
    inited = swift_initStackObject();
    sub_10000C854(inited, xmmword_100197F20);
    v24 = OBJC_IVAR____TtC7parsecd16DownloadResource_url;
    sub_1000089E4(v1 + OBJC_IVAR____TtC7parsecd16DownloadResource_url, v42);
    v25 = v1 + v24;
    v26 = v41[0];
    (*v21)(v8, v25, v41[0]);
    v27 = URL.absoluteString.getter();
    v29 = v28;
    (*v22)(v8, v26);
    inited[3].n128_u64[0] = v27;
    inited[3].n128_u64[1] = v29;
LABEL_5:
    Dictionary.init(dictionaryLiteral:)();
    sub_100005460();
    return;
  }

  v30 = swift_initStackObject();
  sub_10000C854(v30, xmmword_100198F10);
  v31 = OBJC_IVAR____TtC7parsecd16DownloadResource_url;
  sub_1000089E4(v1 + OBJC_IVAR____TtC7parsecd16DownloadResource_url, v42);
  v32 = v41[0];
  (*v21)(v11, v1 + v31, v41[0]);
  v33 = URL.absoluteString.getter();
  v35 = v34;
  v36 = *v22;
  (*v22)(v11, v32);
  v30[3].n128_u64[0] = v33;
  v30[3].n128_u64[1] = v35;
  strcpy(&v30[4], "redirect_url");
  v30[4].n128_u8[13] = 0;
  v30[4].n128_u16[7] = -5120;
  sub_1000B1BA8(v1 + v20, v16, &qword_100218230, &unk_100199A00);
  v37 = sub_1000B1FC4();
  sub_10000C944(v37, v38, v32);
  if (!v39)
  {
    v30[5].n128_u64[0] = URL.absoluteString.getter();
    v30[5].n128_u64[1] = v40;
    v36(v16, v32);
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_1000A7128()
{

  v1 = OBJC_IVAR____TtC7parsecd16DownloadResource_url;
  type metadata accessor for URL();
  sub_10000690C();
  (*(v2 + 8))(v0 + v1);
  sub_100015C0C(v0 + OBJC_IVAR____TtC7parsecd16DownloadResource_redirectUrl, &qword_100218230, &unk_100199A00);
  return v0;
}

uint64_t sub_1000A71AC()
{
  sub_1000A7128();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for DownloadResource(uint64_t a1)
{
  result = qword_1002183F8;
  if (!qword_1002183F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000A7258(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    sub_1000487E0(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000A7330()
{
  sub_100005478();
  v33 = type metadata accessor for URLQueryItem();
  sub_100003650();
  v1 = v0;
  __chkstk_darwin(v2);
  sub_100003664();
  v5 = v4 - v3;
  v6 = sub_100046184(&unk_100219320, &unk_1001A06F0);
  v7 = sub_100005490(v6);
  __chkstk_darwin(v7);
  sub_10000407C();
  v10 = v8 - v9;
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  __chkstk_darwin(v14);
  v16 = &v32 - v15;
  v17 = objc_opt_self();
  URL._bridgeToObjectiveC()(v18);
  v20 = v19;
  v21 = [v17 parsec_componentsWithURL:v19 resolvingAgainstBaseURL:0];

  if (v21)
  {
    static URLComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = type metadata accessor for URLComponents();
    v23 = 0;
  }

  else
  {
    v22 = type metadata accessor for URLComponents();
    v23 = 1;
  }

  sub_1000051C0(v13, v23, 1, v22);
  sub_1000B1948(v13, v16, &unk_100219320, &unk_1001A06F0);
  sub_1000B1BA8(v16, v10, &unk_100219320, &unk_1001A06F0);
  type metadata accessor for URLComponents();
  sub_10000C944(v10, 1, v22);
  if (v30)
  {
    sub_100015C0C(v16, &unk_100219320, &unk_1001A06F0);
    v16 = v10;
LABEL_22:
    sub_100015C0C(v16, &unk_100219320, &unk_1001A06F0);
    sub_100005460();
    return;
  }

  v24 = URLComponents.queryItems.getter();
  sub_10000690C();
  (*(v25 + 8))(v10, v22);
  if (!v24)
  {
    goto LABEL_22;
  }

  v32 = v16;
  v26 = 0;
  v27 = *(v24 + 16);
  v28 = (v1 + 8);
  while (1)
  {
    if (v27 == v26)
    {

      goto LABEL_21;
    }

    if (v26 >= *(v24 + 16))
    {
      break;
    }

    (*(v1 + 16))(v5, v24 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v26, v33);
    v30 = URLQueryItem.name.getter() == 0x6E6F6973726576 && v29 == 0xE700000000000000;
    if (v30)
    {

LABEL_20:

      URLQueryItem.value.getter();
      (*v28)(v5, v33);
LABEL_21:
      v16 = v32;
      goto LABEL_22;
    }

    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v31)
    {
      goto LABEL_20;
    }

    (*v28)(v5, v33);
    ++v26;
  }

  __break(1u);
}

void sub_1000A76E0()
{
  sub_100005478();
  v1 = v0;
  v2 = type metadata accessor for URL();
  sub_100003650();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100003664();
  v8 = v7 - v6;
  v9 = sub_100046184(&unk_100219320, &unk_1001A06F0);
  v10 = sub_100005490(v9);
  __chkstk_darwin(v10);
  sub_10000407C();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  v16 = v48 - v15;
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v17 = sub_1000041F8();
  sub_1000B1BA8(v17, v18, &unk_100219320, &unk_1001A06F0);
  v19 = type metadata accessor for URLComponents();
  v20 = sub_10001497C();
  sub_10000C944(v20, v21, v19);
  if (v22)
  {
    sub_100015C0C(v13, &unk_100219320, &unk_1001A06F0);
LABEL_12:
    sub_100015C0C(v16, &unk_100219320, &unk_1001A06F0);
    sub_100005460();
    return;
  }

  v23 = URLComponents.path.getter();
  v25 = v24;
  sub_10000690C();
  (*(v26 + 8))(v13, v19);
  v49 = v23;
  v50 = v25;
  v48[0] = 47;
  v48[1] = 0xE100000000000000;
  sub_10000527C();
  v27 = StringProtocol.components<A>(separatedBy:)();

  if (v27[2] <= 4uLL)
  {

    if (qword_100214070 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_10000964C(v28, qword_1002329C0);
    (*(v4 + 16))(v8, v1, v2);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      sub_10000F554();
      v31 = swift_slowAlloc();
      v32 = sub_10000FE20();
      *v31 = 138412290;
      URL._bridgeToObjectiveC()("mutex_t");
      v34 = v33;
      v35 = sub_10000F18C();
      v36(v35);
      *(v31 + 4) = v34;
      *v32 = v34;
      _os_log_impl(&_mh_execute_header, v29, v30, "invalid lookup hints url when processing signature: %@", v31, 0xCu);
      sub_100015C0C(v32, &unk_100214C70, &qword_10019B4D0);
      sub_1000037A4();

      sub_1000037A4();
    }

    else
    {

      v46 = sub_10000F18C();
      v47(v46);
    }

    goto LABEL_12;
  }

  v37 = v27[11];
  v49 = v27[10];
  v50 = v37;

  v38._countAndFlagsBits = 45;
  v38._object = 0xE100000000000000;
  String.append(_:)(v38);
  if (v27[2] < 5uLL)
  {
    __break(1u);
  }

  else
  {
    v39 = v27[12];
    v40 = v27[13];

    v41._countAndFlagsBits = v39;
    v41._object = v40;
    String.append(_:)(v41);

    v42._countAndFlagsBits = 45;
    v42._object = 0xE100000000000000;
    String.append(_:)(v42);
    if (v27[2] >= 3uLL)
    {
      v43 = v27[8];
      v44 = v27[9];

      v45._countAndFlagsBits = v43;
      v45._object = v44;
      String.append(_:)(v45);

      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1000A7ACC()
{
  sub_100005478();
  v2 = v0;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100003650();
  __chkstk_darwin(v3);
  sub_100003664();
  sub_1000058C8();
  v4 = type metadata accessor for DispatchQoS();
  sub_100003650();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100003664();
  sub_10000FEE8();
  if ((sub_1000101C8(*(*&v0[OBJC_IVAR____TtC7parsecd15DownloadManager_hasStarted] + 16), *&v0[OBJC_IVAR____TtC7parsecd15DownloadManager_hasStarted]) & 1) == 0)
  {
    if (qword_1002140C8 != -1)
    {
      sub_100005F20();
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000964C(v8, qword_100232AC8);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      *swift_slowAlloc() = 0;
      sub_10000BF98(&_mh_execute_header, v11, v12, "DownloadManager started. Dispatching loadResources.");
      sub_1000037A4();
    }

    v13 = swift_allocObject();
    *(v13 + 16) = v2;
    v21[4] = sub_1000B1924;
    v21[5] = v13;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 1107296256;
    sub_100005D74();
    v21[2] = v14;
    v21[3] = &unk_1001FA3F8;
    v15 = _Block_copy(v21);
    v16 = v2;
    static DispatchQoS.unspecified.getter();
    sub_1000042DC();
    sub_100015330(v17, v18, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100046184(&unk_100217030, &unk_1001989C0);
    sub_10000CB0C();
    sub_100007864();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    sub_1000076CC();
    _Block_release(v15);
    v19 = sub_100003674();
    v20(v19);
    (*(v6 + 8))(v1, v4);
  }

  sub_100005460();
}

void sub_1000A7D9C()
{
  sub_100005478();
  v1 = v0;
  v2 = sub_100046184(&qword_100218230, &unk_100199A00);
  v3 = sub_100005490(v2);
  __chkstk_darwin(v3);
  sub_10000407C();
  v6 = v4 - v5;
  __chkstk_darwin(v7);
  sub_100005924();
  v95 = v8;
  __chkstk_darwin(v9);
  v11 = v81 - v10;
  v94 = type metadata accessor for URL();
  sub_100003650();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_10000407C();
  sub_100004144();
  __chkstk_darwin(v15);
  sub_100009934();
  v93 = v16;
  type metadata accessor for DispatchPredicate();
  sub_100003650();
  __chkstk_darwin(v17);
  sub_100003664();
  v20 = *(v1 + OBJC_IVAR____TtC7parsecd15DownloadManager_queue);
  *(v19 - v18) = v20;
  v21 = sub_10000FF9C();
  v22(v21);
  v23 = v20;
  _dispatchPreconditionTest(_:)();
  v24 = sub_100012ED0();
  v25(v24);
  if (v20)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v27 = Strong;
      v28 = [objc_opt_self() standardUserDefaults];
      v29 = [v28 dictionaryForKey:@"download_resources"];

      if (v29)
      {
        v86 = v6;
        v81[1] = v27;
        v91 = v11;
        v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v31 = 0;
        v32 = v30 + 64;
        sub_10000DC14();
        v35 = v34 & v33;
        v89 = OBJC_IVAR____TtC7parsecd15DownloadManager_resources;
        v37 = (v36 + 63) >> 6;
        v85 = (v13 + 32);
        v84 = (v13 + 16);
        v82 = (v13 + 8);
        v83 = v1;
        v90 = v30;
        while (v35)
        {
          v38 = v31;
LABEL_11:
          v39 = __clz(__rbit64(v35));
          v35 &= v35 - 1;
          v40 = v39 | (v38 << 6);
          v41 = (*(v30 + 48) + 16 * v40);
          v43 = *v41;
          v42 = v41[1];
          sub_100009848(*(v30 + 56) + 32 * v40, v96);
          *&v97 = v43;
          *(&v97 + 1) = v42;
          sub_100028734(v96, &v98);

LABEL_12:
          v100 = v97;
          v101[0] = v98;
          v101[1] = v99;
          v44 = *(&v97 + 1);
          if (!*(&v97 + 1))
          {
            sub_100023F48();

            goto LABEL_39;
          }

          v45 = v100;
          sub_100028734(v101, &v97);
          sub_100046184(&qword_1002184F0, &unk_10019C640);
          if (swift_dynamicCast())
          {
            v46 = *&v96[0];
            if (*(*&v96[0] + 16) && (v47 = sub_100005B74(7107189, 0xE300000000000000), (v48 & 1) != 0))
            {
              v92 = v45;
              sub_1000B2004(v47);
              v49 = v91;
              URL.init(string:)();
              v50 = v94;

              sub_10000C944(v49, 1, v50);
              if (v51)
              {

                sub_100015C0C(v49, &qword_100218230, &unk_100199A00);
              }

              else
              {
                (*v85)(v93, v49, v50);
                sub_1000051C0(v95, 1, 1, v50);
                if (*(v46 + 16) && (v52 = sub_100005B74(0x7463657269646572, 0xEC0000006C72755FLL), (v53 & 1) != 0))
                {
                  sub_1000B2004(v52);

                  v54 = v86;
                  URL.init(string:)();
                  v50 = v94;

                  v55 = v95;
                  sub_100015C0C(v95, &qword_100218230, &unk_100199A00);
                  sub_1000B1948(v54, v55, &qword_100218230, &unk_100199A00);
                }

                else
                {
                }

                v56 = v88;
                (*v84)(v88, v93, v50);
                v57 = v86;
                sub_1000B1BA8(v95, v86, &qword_100218230, &unk_100199A00);
                type metadata accessor for DownloadResource(0);
                v58 = swift_allocObject();

                v59 = sub_10000F18C();
                sub_1000A6D14(v59, v60, v56, v57);
                v61 = v89;
                sub_100011994();
                swift_beginAccess();
                v87 = v58;

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *&v96[0] = *(v1 + v61);
                v63 = *&v96[0];
                *(v1 + v61) = 0x8000000000000000;
                v64 = sub_10000F18C();
                v66 = sub_100005B74(v64, v65);
                v68 = *(v63 + 16);
                v69 = (v67 & 1) == 0;
                v70 = v68 + v69;
                if (__OFADD__(v68, v69))
                {
                  goto LABEL_42;
                }

                v71 = v66;
                v72 = v67;
                sub_100046184(&unk_100218518, &unk_10019C7E0);
                if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v70))
                {
                  v73 = sub_100005B74(v92, v44);
                  v1 = v83;
                  if ((v72 & 1) != (v74 & 1))
                  {
                    goto LABEL_44;
                  }

                  v71 = v73;
                }

                else
                {
                  v1 = v83;
                }

                v75 = *&v96[0];
                if (v72)
                {
                  *(*(*&v96[0] + 56) + 8 * v71) = v87;
                }

                else
                {
                  sub_10000FE84(*&v96[0] + 8 * (v71 >> 6));
                  v77 = (v76 + 16 * v71);
                  *v77 = v92;
                  v77[1] = v44;
                  *(*(v75 + 56) + 8 * v71) = v87;
                  v78 = *(v75 + 16);
                  v79 = __OFADD__(v78, 1);
                  v80 = v78 + 1;
                  if (v79)
                  {
                    goto LABEL_43;
                  }

                  *(v75 + 16) = v80;
                }

                *(v1 + v89) = v75;
                swift_endAccess();

                sub_100015C0C(v95, &qword_100218230, &unk_100199A00);
                (*v82)(v93, v94);
              }

              v30 = v90;
            }

            else
            {
            }
          }

          else
          {
          }
        }

        while (1)
        {
          v38 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            break;
          }

          if (v38 >= v37)
          {
            v35 = 0;
            v98 = 0u;
            v99 = 0u;
            v97 = 0u;
            goto LABEL_12;
          }

          v35 = *(v32 + 8 * v38);
          ++v31;
          if (v35)
          {
            v31 = v38;
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_41;
      }

      swift_unknownObjectRelease();
    }

LABEL_39:
    sub_100005460();
    return;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1000A8570()
{
  sub_100005478();
  type metadata accessor for DispatchPredicate();
  sub_100003650();
  __chkstk_darwin(v1);
  sub_100003664();
  v4 = *(v0 + OBJC_IVAR____TtC7parsecd15DownloadManager_queue);
  *(v3 - v2) = v4;
  v5 = sub_10000FF9C();
  v6(v5);
  v7 = v4;
  _dispatchPreconditionTest(_:)();
  v8 = sub_100012ED0();
  v9(v8);
  if (v4)
  {
    if (!swift_unknownObjectWeakLoadStrong())
    {
LABEL_19:
      sub_100005460();
      return;
    }

    v10 = OBJC_IVAR____TtC7parsecd15DownloadManager_resources;
    sub_1000089E4(v0 + OBJC_IVAR____TtC7parsecd15DownloadManager_resources, &v49);
    v11 = *(v0 + v10) + 64;
    sub_10000DC14();
    v14 = v13 & v12;
    v16 = ((v15 + 63) >> 6);
    v46 = v17;

    v18 = 0;
    v19 = _swiftEmptyDictionarySingleton;
    v44 = v16;
    v45 = v11;
    if (!v14)
    {
      goto LABEL_5;
    }

    while (1)
    {
      v20 = v18;
LABEL_8:
      v21 = (*(v46 + 48) + 16 * (__clz(__rbit64(v14)) | (v20 << 6)));
      v23 = *v21;
      v22 = v21[1];

      sub_1000A6DF0();
      v47 = v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v19;
      v26 = sub_100005B74(v23, v22);
      v28 = v19[2];
      v29 = (v27 & 1) == 0;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        break;
      }

      v31 = v26;
      v32 = v27;
      sub_100046184(&qword_100218530, &unk_10019C7F0);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v30))
      {
        v33 = sub_100005B74(v23, v22);
        if ((v32 & 1) != (v34 & 1))
        {
          goto LABEL_24;
        }

        v31 = v33;
      }

      v14 &= v14 - 1;
      if (v32)
      {

        v19 = v48;
        *(v48[7] + 8 * v31) = v47;
      }

      else
      {
        v19 = v48;
        sub_10000FE84(&v48[v31 >> 6]);
        v36 = (v35 + 16 * v31);
        *v36 = v23;
        v36[1] = v22;
        *(v48[7] + 8 * v31) = v47;

        v37 = v48[2];
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          goto LABEL_22;
        }

        v48[2] = v39;
      }

      v18 = v20;
      v16 = v44;
      v11 = v45;
      if (!v14)
      {
LABEL_5:
        while (1)
        {
          v20 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v20 >= v16)
          {

            v40 = [objc_opt_self() standardUserDefaults];
            sub_100046184(&qword_1002184F0, &unk_10019C640);
            Dictionary._bridgeToObjectiveC()();
            sub_1000189B0();

            v41 = @"download_resources";
            v42 = sub_100012634();
            [v42 v43];

            swift_unknownObjectRelease();
            goto LABEL_19;
          }

          v14 = *(v11 + 8 * v20);
          ++v18;
          if (v14)
          {
            goto LABEL_8;
          }
        }

        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
LABEL_24:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1000A88F8()
{
  sub_100005478();
  v2 = v0;
  v4 = v3;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100003650();
  __chkstk_darwin(v5);
  sub_100003664();
  sub_1000058C8();
  v6 = type metadata accessor for DispatchQoS();
  sub_100003650();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100003664();
  sub_10000FEE8();
  v10 = sub_1000A4804(v4);
  if (!v10)
  {
    v29 = 0u;
    v30 = 0u;
    goto LABEL_10;
  }

  v11 = v10;
  v28[6] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28[7] = v12;
  AnyHashable.init<A>(_:)();
  sub_100034150(v11, &v29);

  sub_10003430C(v28);
  if (!*(&v30 + 1))
  {
LABEL_10:
    sub_100015C0C(&v29, &qword_1002181D0, &qword_100198E00);
    goto LABEL_11;
  }

  sub_100005180(0, &qword_100218240, PARBag_ptr);
  if (swift_dynamicCast())
  {
    v13 = v28[0];
    if (qword_1002140C8 != -1)
    {
      sub_100005F20();
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000964C(v14, qword_100232AC8);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      *swift_slowAlloc() = 0;
      sub_10000BF98(&_mh_execute_header, v17, v18, "Received bag change notification");
      sub_1000037A4();
    }

    sub_1000A7ACC();
    sub_100006634();
    v19 = swift_allocObject();
    *(v19 + 16) = v2;
    *(v19 + 24) = v13;
    v28[4] = sub_1000B1CEC;
    v28[5] = v19;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 1107296256;
    sub_100005D74();
    v28[2] = v20;
    v28[3] = &unk_1001FA588;
    v21 = _Block_copy(v28);
    v22 = v2;
    v23 = v13;
    static DispatchQoS.unspecified.getter();
    *&v29 = _swiftEmptyArrayStorage;
    sub_1000042DC();
    sub_100015330(v24, v25, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100046184(&unk_100217030, &unk_1001989C0);
    sub_10000CB0C();
    sub_100007864();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    sub_1000076CC();
    _Block_release(v21);

    v26 = sub_100003674();
    v27(v26);
    (*(v8 + 8))(v1, v6);
  }

LABEL_11:
  sub_100005460();
}

void sub_1000A8C94(void *a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = sub_100085F88();
    sub_100006634();
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    *(v4 + 24) = a1;
    v8[4] = sub_1000B1D14;
    v8[5] = v4;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_1000ABB8C;
    v8[3] = &unk_1001FA5D8;
    v5 = _Block_copy(v8);
    v6 = v1;
    v7 = a1;

    [v3 getAllTasksWithCompletionHandler:v5];
    _Block_release(v5);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1000A8E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v68 = a1;
  v69 = a2;
  v6 = sub_100046184(&qword_100218230, &unk_100199A00);
  __chkstk_darwin(v6 - 8);
  v65 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v61 - v9;
  __chkstk_darwin(v11);
  v13 = &v61 - v12;
  v14 = type metadata accessor for URL();
  v67 = *(v14 - 8);
  __chkstk_darwin(v14);
  v66 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v64 = &v61 - v17;
  __chkstk_darwin(v18);
  v70 = (&v61 - v19);
  v20 = type metadata accessor for DispatchPredicate();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v24 = (&v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *(a4 + OBJC_IVAR____TtC7parsecd15DownloadManager_queue);
  *v24 = v25;
  (*(v21 + 104))(v24, enum case for DispatchPredicate.onQueue(_:), v20, v22);
  v26 = v25;
  LOBYTE(v25) = _dispatchPreconditionTest(_:)();
  result = (*(v21 + 8))(v24, v20);
  if ((v25 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = result;
    sub_1000B1BA8(a3, v13, &qword_100218230, &unk_100199A00);
    v29 = v14;
    if (sub_100008D0C(v13, 1, v14) == 1)
    {
      sub_100015C0C(v13, &qword_100218230, &unk_100199A00);
      sub_1000A94EC();
      return swift_unknownObjectRelease();
    }

    v63 = v28;
    v30 = v67;
    v62 = *(v67 + 32);
    v62(v70, v13, v29);
    v31 = OBJC_IVAR____TtC7parsecd15DownloadManager_resources;
    swift_beginAccess();
    v33 = v68;
    v32 = v69;
    v34 = sub_1000BCE88(v68, v69, *(a4 + v31));
    swift_endAccess();
    if (!v34)
    {
      v35 = v64;
      (*(v30 + 16))(v64, v70, v29);
      sub_1000051C0(v10, 1, 1, v29);
      type metadata accessor for DownloadResource(0);
      v36 = swift_allocObject();

      v37 = v35;
      v34 = v36;
      sub_1000A6D14(v33, v32, v37, v10);
      swift_beginAccess();

      swift_isUniquelyReferenced_nonNull_native();
      v71 = *(a4 + v31);
      sub_1000BDDCC();
      *(a4 + v31) = v71;
      swift_endAccess();
    }

    v38 = v65;
    sub_1000A9F38(v65);
    if (sub_100008D0C(v38, 1, v29) == 1)
    {
      (*(v30 + 8))(v70, v29);

      sub_100015C0C(v38, &qword_100218230, &unk_100199A00);
      return swift_unknownObjectRelease();
    }

    v62(v66, v38, v29);
    v39 = v30;
    v40 = OBJC_IVAR____TtC7parsecd16DownloadResource_url;
    swift_beginAccess();
    v41 = v64;
    (*(v39 + 16))(v64, v34 + v40, v29);
    URL._bridgeToObjectiveC()(v42);
    v44 = v43;
    v45 = *(v39 + 8);
    v67 = v39 + 8;
    v45(v41, v29);
    v46 = v70;
    URL._bridgeToObjectiveC()(v47);
    v49 = v48;
    LOBYTE(v39) = sub_1000B1D24(v44, v48);

    if (v39)
    {
      v50 = [objc_opt_self() defaultManager];
      URL.path.getter();
      v51 = String._bridgeToObjectiveC()();

      v52 = [v50 fileExistsAtPath:v51];

      if (v52)
      {
        if ((sub_1000AA0E8(v68, v69) & 1) == 0)
        {

          v45(v66, v29);
          v45(v46, v29);
          return swift_unknownObjectRelease();
        }

        v53 = 0xE600000000000000;
        v54 = 0x70756B6F6F6CLL;
      }

      else
      {
        v53 = 0xE700000000000000;
        v54 = 0x676E697373696DLL;
      }
    }

    else
    {
      v53 = 0xE600000000000000;
      v54 = 0x657461647075;
    }

    v56 = v68;
    v55 = v69;
    v57 = sub_1000AA0E8(v68, v69);
    v58 = 60.0;
    if ((v57 & 1) == 0)
    {
      v58 = 0.0;
    }

    v59 = v55;
    v60 = v70;
    sub_1000AA18C(v56, v59, v70, v54, v53, v58);

    v45(v66, v29);
    v45(v60, v29);
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_1000A94EC()
{
  sub_100005478();
  v3 = v0;
  v88 = v4;
  v92 = v5;
  v90 = v6;
  v7 = sub_100046184(&qword_100218230, &unk_100199A00);
  sub_100005490(v7);
  sub_100003760();
  __chkstk_darwin(v8);
  sub_1000058C8();
  v89 = type metadata accessor for URL();
  sub_100003650();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100003664();
  sub_10000549C(v13 - v12);
  v14 = type metadata accessor for DispatchWorkItemFlags();
  sub_100003650();
  __chkstk_darwin(v15);
  sub_100003664();
  v18 = v17 - v16;
  v87 = type metadata accessor for DispatchQoS();
  sub_100003650();
  __chkstk_darwin(v19);
  sub_100003664();
  v22 = v21 - v20;
  v23 = type metadata accessor for DispatchPredicate();
  sub_100003650();
  v25 = v24;
  __chkstk_darwin(v26);
  sub_100003664();
  sub_10000FEE8();
  v27 = *&v3[OBJC_IVAR____TtC7parsecd15DownloadManager_queue];
  *v2 = v27;
  (*(v25 + 104))(v2, enum case for DispatchPredicate.onQueue(_:), v23);
  v28 = v27;
  LOBYTE(v27) = _dispatchPreconditionTest(_:)();
  (*(v25 + 8))(v2, v23);
  if ((v27 & 1) == 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v85 = v1;
    v29 = OBJC_IVAR____TtC7parsecd15DownloadManager_resources;
    swift_beginAccess();
    v30 = sub_1000BCE88(v90, v92, *&v3[v29]);
    swift_endAccess();
    if (v30)
    {

      sub_100011994();
      swift_beginAccess();
      sub_1000BC128(v90, v92);
      swift_endAccess();

      sub_1000A8570();
      v31 = sub_100085F88();
      v32 = *(Strong + 312);
      v33 = swift_allocObject();
      v33[2] = v31;
      v33[3] = v90;
      v33[4] = v92;
      v33[5] = v3;
      v97 = sub_1000B1E40;
      v98 = v33;
      *&v94 = _NSConcreteStackBlock;
      *(&v94 + 1) = 1107296256;
      v95 = sub_10000D50C;
      v96 = &unk_1001FA678;
      v84 = v10;
      v34 = _Block_copy(&v94);
      v35 = v32;
      v36 = v31;

      v37 = v3;
      static DispatchQoS.unspecified.getter();
      v93 = _swiftEmptyArrayStorage;
      sub_1000042DC();
      sub_100015330(v38, v39, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100046184(&unk_100217030, &unk_1001989C0);
      sub_10000CB0C();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      v40 = v34;
      v10 = v84;
      _Block_release(v40);

      sub_100012F20();
      v41(v18, v14);
      sub_100012F20();
      v42(v22, v87);
    }

    if ((v88 & 1) == 0)
    {
      goto LABEL_23;
    }

    sub_10000BA48();
    v22 = v90;
    sub_1000A9F38(v43);
    v44 = sub_100009940();
    sub_10000C944(v44, v45, v89);
    if (!v71)
    {
      (*(v10 + 32))(v86, v18, v89);
      v46 = [objc_opt_self() defaultManager];
      URL._bridgeToObjectiveC()(v47);
      v49 = v48;
      *&v94 = 0;
      v50 = sub_100012634();
      v52 = [v50 v51];

      v53 = v94;
      if (v52)
      {
        v54 = objc_opt_self();
        v55 = v53;
        v56 = [v54 defaultCenter];
        sub_100046184(&unk_100217020, &unk_10019B4C0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100197F20;
        *&v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(&v94 + 1) = v58;
        AnyHashable.init<A>(_:)();
        *(inited + 96) = &type metadata for String;
        *(inited + 72) = v90;
        *(inited + 80) = v92;

        v59 = Dictionary.init(dictionaryLiteral:)();
        sub_100033AC0(@"PARFileDeletedNotification", 0, v59, v56);
        sub_1000B1FAC();
        goto LABEL_28;
      }

      v60 = v94;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v61 = _convertErrorToNSError(_:)();
      v62 = [v61 userInfo];

      v63 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1000BCDCC(v64, v65, v63, &v94);

      if (v96)
      {
        sub_100005180(0, &qword_100218540, NSError_ptr);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_24;
        }

        v66 = [v93 domain];
        v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v69 = v68;

        v71 = v67 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v69 == v70;
        if (v71)
        {
        }

        else
        {
          v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v72 & 1) == 0)
          {

            goto LABEL_24;
          }
        }

        v73 = [v93 code];

        if (v73 == 2)
        {
          v74 = sub_1000B1FDC();
          v75(v74);

LABEL_23:
          sub_1000B1FAC();
          goto LABEL_30;
        }
      }

      else
      {
        sub_100015C0C(&v94, &qword_1002181D0, &qword_100198E00);
      }

LABEL_24:
      if (qword_1002140C8 == -1)
      {
LABEL_25:
        v76 = type metadata accessor for Logger();
        sub_10000964C(v76, qword_100232AC8);

        swift_errorRetain();
        v56 = Logger.logObject.getter();
        v77 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v56, v77))
        {
          v78 = sub_10001BCD4();
          v79 = sub_10000FE20();
          sub_1000083D0();
          v80 = swift_slowAlloc();
          *&v94 = v80;
          *v78 = 136315394;
          *(v78 + 4) = sub_100009684(v22, v92, &v94);
          *(v78 + 12) = 2112;
          v81 = _convertErrorToNSError(_:)();
          *(v78 + 14) = v81;
          *v79 = v81;
          _os_log_impl(&_mh_execute_header, v56, v77, "error trying to remove %s: %@", v78, 0x16u);
          sub_100015C0C(v79, &unk_100214C70, &qword_10019B4D0);
          sub_1000037A4();

          sub_100007378(v80);
          sub_1000037A4();

          sub_1000037A4();

          sub_1000B1FAC();

LABEL_29:
          v82 = sub_1000B1FDC();
          v83(v82);
          goto LABEL_30;
        }

        sub_1000B1FAC();

LABEL_28:

        goto LABEL_29;
      }

LABEL_32:
      sub_100005F20();
      swift_once();
      goto LABEL_25;
    }

    sub_1000B1FAC();
    sub_100015C0C(v18, &qword_100218230, &unk_100199A00);
  }

LABEL_30:
  sub_100005460();
}

uint64_t sub_1000A9F38@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100046184(&qword_100218230, &unk_100199A00);
  sub_100005490(v2);
  sub_100003760();
  __chkstk_darwin(v3);
  v5 = &v16 - v4;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = [objc_opt_self() defaultManager];
    NSFileManager.parsecdAssetsDirectoryURL.getter();

    v7 = type metadata accessor for URL();
    sub_10000C944(v5, 1, v7);
    if (v8)
    {
      swift_unknownObjectRelease();
      sub_100015C0C(v5, &qword_100218230, &unk_100199A00);
      v14 = sub_100009940();
    }

    else
    {
      sub_100003898();
      URL.appendingPathComponent(_:isDirectory:)();
      swift_unknownObjectRelease();
      sub_10000690C();
      (*(v13 + 8))(v5, v7);
      v14 = a1;
      v15 = 0;
    }

    return sub_1000051C0(v14, v15, 1, v7);
  }

  else
  {
    type metadata accessor for URL();
    v9 = sub_100009940();

    return sub_1000051C0(v9, v10, 1, v11);
  }
}

uint64_t sub_1000AA0E8(uint64_t a1, uint64_t a2)
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v4 == a1 && v5 == a2)
  {
    goto LABEL_12;
  }

  v7 = sub_10001BCEC(v4);

  if ((v7 & 1) == 0)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v9 != a1 || v10 != a2)
    {
      v8 = sub_10001BCEC(v9);
LABEL_13:

      return v8 & 1;
    }

LABEL_12:
    v8 = 1;
    goto LABEL_13;
  }

  v8 = 1;
  return v8 & 1;
}

void sub_1000AA18C(uint64_t a1, void *a2, void (*a3)(uint64_t, char *, uint64_t), uint64_t a4, uint64_t a5, double a6)
{
  v136 = a4;
  v137 = a5;
  v133 = a3;
  v134 = a2;
  v135 = a1;
  v130 = type metadata accessor for Client();
  sub_100003650();
  v127 = v9;
  __chkstk_darwin(v10);
  sub_100003664();
  sub_10000549C(v12 - v11);
  v126 = type metadata accessor for Date();
  sub_100003650();
  v125 = v13;
  __chkstk_darwin(v14);
  sub_100003664();
  sub_100007C68(v16 - v15);
  v17 = sub_100046184(&qword_100218230, &unk_100199A00);
  sub_100005490(v17);
  sub_100003760();
  __chkstk_darwin(v18);
  sub_100007C68(&v117 - v19);
  v20 = sub_100046184(&unk_100218500, &qword_10019C7D8);
  sub_100005490(v20);
  sub_100003760();
  __chkstk_darwin(v21);
  v23 = &v117 - v22;
  v24 = type metadata accessor for URLRequest();
  sub_100003650();
  v26 = v25;
  __chkstk_darwin(v27);
  sub_10000407C();
  sub_100004144();
  __chkstk_darwin(v28);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v29);
  sub_100009934();
  sub_10000549C(v30);
  v31 = type metadata accessor for DispatchPredicate();
  sub_100003650();
  v33 = v32;
  __chkstk_darwin(v34);
  sub_100003664();
  v37 = v36 - v35;
  v38 = *(v6 + OBJC_IVAR____TtC7parsecd15DownloadManager_queue);
  *(v36 - v35) = v38;
  (*(v33 + 104))(v36 - v35, enum case for DispatchPredicate.onQueue(_:), v31);
  v39 = v38;
  v40 = _dispatchPreconditionTest(_:)();
  (*(v33 + 8))(v37, v31);
  if ((v40 & 1) == 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v42 = Strong;
  v40 = v134;
  sub_1000AAD88(v135, v134, v133, v136, v137, v23);
  if (v7)
  {
    swift_unknownObjectRelease();
    return;
  }

  v43 = v24;
  if (sub_100008D0C(v23, 1, v24) == 1)
  {
    sub_100015C0C(v23, &unk_100218500, &qword_10019C7D8);
    if (qword_1002140C8 == -1)
    {
LABEL_8:
      v44 = type metadata accessor for Logger();
      sub_10000964C(v44, qword_100232AC8);

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v45, v46))
      {
        sub_10000F554();
        v47 = swift_slowAlloc();
        sub_1000083D0();
        v48 = swift_slowAlloc();
        v139[0] = v48;
        *v47 = 136315138;
        *(v47 + 4) = sub_100009684(v135, v40, v139);
        sub_100007C74();
        _os_log_impl(v49, v50, v51, v52, v53, v54);
        sub_100007378(v48);
        sub_1000037A4();

        sub_1000037A4();
      }

      swift_unknownObjectRelease();

      return;
    }

LABEL_27:
    sub_100005F20();
    swift_once();
    goto LABEL_8;
  }

  v135 = v6;
  v55 = v132;
  (*(v26 + 32))(v132, v23, v43);
  v56 = v43;
  if (qword_1002140C8 != -1)
  {
    sub_100005F20();
    swift_once();
  }

  v57 = type metadata accessor for Logger();
  sub_10000964C(v57, qword_100232AC8);
  v58 = *(v26 + 16);
  v58(v131, v55, v43);
  v59 = v128;
  v58(v128, v55, v43);

  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();

  v62 = os_log_type_enabled(v60, v61);
  v133 = 0;
  v122 = v26;
  v121 = v43;
  if (v62)
  {
    v119 = v61;
    v120 = v60;
    v63 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    v138 = v118;
    *v63 = 136315906;
    v64 = v123;
    URLRequest.url.getter();
    v65 = type metadata accessor for URL();
    v66 = sub_1000B1FC4();
    if (sub_100008D0C(v66, v67, v65) == 1)
    {
      sub_100015C0C(v64, &qword_100218230, &unk_100199A00);
      v68 = 0;
      v69 = 0;
    }

    else
    {
      v68 = URL.absoluteString.getter();
      v69 = v71;
      sub_10000690C();
      (*(v72 + 8))(v64, v65);
    }

    v73 = v122;
    v139[0] = v68;
    v139[1] = v69;
    sub_100046184(&qword_1002181F0, &qword_10019C610);
    String.init<A>(describing:)();
    v74 = *(v73 + 8);
    v134 = ((v73 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v74(v131, v56);
    v75 = sub_1000041F8();
    v78 = sub_100009684(v75, v76, v77);

    *(v63 + 4) = v78;
    *(v63 + 12) = 2080;
    if (v137)
    {
      v79 = v136;
    }

    else
    {
      v79 = 0;
    }

    if (v137)
    {
      v80 = v137;
    }

    else
    {
      v80 = 0xE000000000000000;
    }

    v81 = sub_100009684(v79, v80, &v138);

    *(v63 + 14) = v81;
    *(v63 + 22) = 2048;
    *(v63 + 24) = a6;
    *(v63 + 32) = 2080;
    v82 = v128;
    v139[0] = URLRequest.allHTTPHeaderFields.getter();
    sub_100046184(&qword_100215368, &unk_10019C800);
    String.init<A>(describing:)();
    v74(v82, v56);
    v83 = sub_1000041F8();
    v86 = sub_100009684(v83, v84, v85);

    *(v63 + 34) = v86;
    v87 = v120;
    _os_log_impl(&_mh_execute_header, v120, v119, "starting download of %s reason: %s delay: %f headers: %s", v63, 0x2Au);
    swift_arrayDestroy();
    sub_1000037A4();

    sub_1000037A4();
  }

  else
  {

    v70 = *(v26 + 8);
    v134 = ((v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v70(v59, v43);
    v70(v131, v43);
  }

  v88 = sub_100085F88();
  isa = URLRequest._bridgeToObjectiveC()().super.isa;
  v90 = sub_100012634();
  v92 = [v90 v91];

  v93 = v92;
  nw_activity_create();
  v94 = sub_100012634();
  [v94 v95];
  swift_unknownObjectRelease();
  v96 = v124;
  Date.init(timeIntervalSinceNow:)();
  v97 = Date._bridgeToObjectiveC()().super.isa;
  sub_100012F20();
  v98(v96, v126);
  v99 = sub_100012634();
  [v99 v100];

  [v93 resume];
  v101 = sub_100004950();
  v102 = v129;
  static Client.parsecd.getter();
  v103 = v93;
  v104 = [v103 _nw_activity];
  type metadata accessor for ResourceAccessNetworkSpan(0);
  v105 = swift_allocObject();
  v106 = v105 + qword_100232D88;
  *v106 = 0;
  *(v106 + 8) = 1;
  v107 = v127;
  (*(v127 + 16))(v105 + qword_100232D80, v102, v130);
  sub_100046184(&unk_100217040, &qword_1001989F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100198F10;
  v109 = Client.name.getter();
  v111 = v110;
  v137 = v42;
  *(inited + 56) = &type metadata for String;
  v112 = sub_10000512C();
  *(inited + 32) = v109;
  *(inited + 40) = v111;
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v112;
  *(inited + 64) = v112;
  *(inited + 72) = 0;
  *(inited + 80) = 0xE000000000000000;
  *(v105 + *(*v105 + 472)) = 0;
  v113 = *(*v105 + 480);
  *(v105 + v113) = 0;
  v114 = (v105 + *(*v105 + 464));
  *v114 = v103;
  v114[1] = &off_1001FC230;
  [v103 set_nw_activity:v104];
  *(v105 + v113) = v104;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_10007DD84(v101, 9, "client=%{signpost.description:attribute,public}s, version=%{signpost.description:attribute,public}s", 99, 2, inited);
  swift_unknownObjectRelease();
  (*(v107 + 8))(v129, v130);
  [v103 taskIdentifier];

  v115 = OBJC_IVAR____TtC7parsecd15DownloadManager_spans;
  v116 = v135;
  sub_100011994();
  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v138 = *(v116 + v115);
  sub_100003898();
  sub_1000BDDE0();
  *(v116 + v115) = v138;
  swift_endAccess();

  swift_unknownObjectRelease();
  (*(v122 + 8))(v132, v121);
}

uint64_t sub_1000AAD88@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void (*a3)(uint64_t, char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = v7;
  v60 = a3;
  v61 = a5;
  v57 = a4;
  v63 = a2;
  v62 = a1;
  v59 = a6;
  v9 = sub_100046184(&unk_100218500, &qword_10019C7D8);
  sub_100005490(v9);
  sub_100003760();
  __chkstk_darwin(v10);
  v12 = &v53 - v11;
  v58 = type metadata accessor for URLRequest();
  sub_100003650();
  v54 = v13;
  __chkstk_darwin(v14);
  sub_10000407C();
  v56 = (v15 - v16);
  __chkstk_darwin(v17);
  sub_100009934();
  v55 = v18;
  v19 = type metadata accessor for PegasusContext(0);
  v20 = sub_100005490(v19);
  __chkstk_darwin(v20);
  sub_100003664();
  v23 = v22 - v21;
  v24 = type metadata accessor for DispatchPredicate();
  sub_100003650();
  v26 = v25;
  __chkstk_darwin(v27);
  sub_100003664();
  v30 = v29 - v28;
  v31 = *(v6 + OBJC_IVAR____TtC7parsecd15DownloadManager_queue);
  *(v29 - v28) = v31;
  (*(v26 + 104))(v29 - v28, enum case for DispatchPredicate.onQueue(_:), v24);
  v32 = v31;
  LOBYTE(v31) = _dispatchPreconditionTest(_:)();
  result = (*(v26 + 8))(v30, v24);
  if (v31)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1000AA0E8(v62, v63);
      if (v61)
      {
        v34 = v57 == 0x676E697373696DLL && v61 == 0xE700000000000000;
        if (!v34 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v35 = OBJC_IVAR____TtC7parsecd15DownloadManager_resources;
          swift_beginAccess();
          v36 = sub_1000BCE88(v62, v63, *(v6 + v35));
          if (v36)
          {
            v37 = v36;
            swift_endAccess();
            sub_1000AB2E4(v37);
          }

          else
          {
            swift_endAccess();
          }
        }
      }

      sub_100017190(v23);
      type metadata accessor for PARNetworkRequestFactory();
      inited = swift_initStackObject();
      v42 = swift_unknownObjectRetain();
      sub_100017594(v42, inited);
      sub_100092094();
      if (v8)
      {
        swift_unknownObjectRelease();

        return sub_1000174A8(v23);
      }

      v40 = v58;
      if (sub_100008D0C(v12, 1, v58) == 1)
      {
        sub_1000174A8(v23);
        swift_unknownObjectRelease();
        sub_100015C0C(v12, &unk_100218500, &qword_10019C7D8);
        v38 = 1;
        v39 = v59;
      }

      else
      {
        v44 = v54;
        v43 = v55;
        v60 = *(v54 + 32);
        v60(v55, v12, v40);
        isa = URLRequest._bridgeToObjectiveC()().super.isa;
        objc_opt_self();
        v53 = isa;
        v46 = swift_dynamicCastObjCClass();
        if (v46)
        {
          [v46 _setTimeWindowDuration:86400.0];
          static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

          (*(v44 + 8))(v43, v40);
          v60(v43, v56, v40);
        }

        else
        {
        }

        v47._countAndFlagsBits = 0xD00000000000001BLL;
        v47._object = 0x80000001001AFC90;
        v48.value._countAndFlagsBits = v62;
        v48.value._object = v63;
        URLRequest.setValue(_:forHTTPHeaderField:)(v48, v47);
        v49 = v61;
        v50 = v43;
        if (v61)
        {
          v51._object = 0x80000001001AFCB0;
          v52 = v57;
          v51._countAndFlagsBits = 0xD000000000000017;
          URLRequest.setValue(_:forHTTPHeaderField:)(*(&v49 - 1), v51);
          swift_unknownObjectRelease();
          sub_1000174A8(v23);
        }

        else
        {
          sub_1000174A8(v23);
          swift_unknownObjectRelease();
        }

        v39 = v59;
        v60(v59, v50, v40);
        v38 = 0;
      }
    }

    else
    {
      v38 = 1;
      v40 = v58;
      v39 = v59;
    }

    return sub_1000051C0(v39, v38, 1, v40);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000AB2E4(uint64_t a1)
{
  v3 = sub_100046184(&qword_100218230, &unk_100199A00);
  sub_100005490(v3);
  sub_100003760();
  __chkstk_darwin(v4);
  sub_1000058C8();
  v5 = type metadata accessor for URL();
  sub_100003650();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_10000407C();
  v11 = v9 - v10;
  __chkstk_darwin(v12);
  v14 = &v28[-v13];
  v15 = *(a1 + 16);
  v16 = *(a1 + 24);

  LOBYTE(v15) = sub_1000AA0E8(v15, v16);

  if ((v15 & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = OBJC_IVAR____TtC7parsecd16DownloadResource_redirectUrl;
  sub_1000089E4(a1 + OBJC_IVAR____TtC7parsecd16DownloadResource_redirectUrl, v28);
  sub_1000B1BA8(a1 + v17, v1, &qword_100218230, &unk_100199A00);
  v18 = sub_1000B1FC4();
  sub_10000C944(v18, v19, v5);
  if (v20)
  {
    sub_100015C0C(v1, &qword_100218230, &unk_100199A00);
LABEL_5:
    v21 = OBJC_IVAR____TtC7parsecd16DownloadResource_url;
    sub_1000089E4(a1 + OBJC_IVAR____TtC7parsecd16DownloadResource_url, v29);
    (*(v7 + 16))(v11, a1 + v21, v5);
    sub_1000A7330();
    v26 = v22;
    (*(v7 + 8))(v11, v5);
    return v26;
  }

  v23 = sub_100003898();
  v24(v23);
  sub_1000A76E0();
  v26 = v25;
  (*(v7 + 8))(v14, v5);
  return v26;
}

void sub_1000AB500(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v11[4] = sub_1000B1E4C;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1000ABB8C;
  v11[3] = &unk_1001FA6C8;
  v9 = _Block_copy(v11);

  v10 = a4;

  [a1 getAllTasksWithCompletionHandler:v9];
  _Block_release(v9);
}

void sub_1000AB5F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_10000D57C(a1);
  for (i = 0; v8 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v10 = *(a1 + 8 * i + 32);
    }

    v11 = v10;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v12 = v10;
    sub_1000AB6D0(&v12, a2, a3, a4);
  }
}

uint64_t sub_1000AB6D0(void **a1, uint64_t a2, uint64_t a3, void *a4)
{
  v40 = a3;
  v37 = a4;
  v39 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v38 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100046184(&unk_100218500, &qword_10019C7D8);
  __chkstk_darwin(v12 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v36 - v17;
  v19 = *a1;
  v20 = [v19 originalRequest];
  if (v20)
  {
    v21 = v20;
    static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = type metadata accessor for URLRequest();
    v23 = 0;
  }

  else
  {
    v22 = type metadata accessor for URLRequest();
    v23 = 1;
  }

  sub_1000051C0(v14, v23, 1, v22);
  sub_1000B1948(v14, v18, &unk_100218500, &qword_10019C7D8);
  type metadata accessor for URLRequest();
  if (sub_100008D0C(v18, 1, v22) == 1)
  {
    return sub_100015C0C(v18, &unk_100218500, &qword_10019C7D8);
  }

  v36 = v6;
  v25 = URLRequest.allHTTPHeaderFields.getter();
  result = (*(*(v22 - 8) + 8))(v18, v22);
  if (v25)
  {
    v26 = sub_1000BCE30(0xD00000000000001BLL, 0x80000001001AFC90, v25);
    v28 = v27;

    if (v28)
    {
      if (v26 == v39 && v28 == v40)
      {
      }

      else
      {
        v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v30 & 1) == 0)
        {
          return result;
        }
      }

      [v19 cancel];
      v31 = [v19 taskIdentifier];
      v32 = v37;
      v33 = swift_allocObject();
      *(v33 + 16) = v32;
      *(v33 + 24) = v31;
      aBlock[4] = sub_1000B1E58;
      aBlock[5] = v33;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000D50C;
      aBlock[3] = &unk_1001FA718;
      v34 = _Block_copy(aBlock);
      v35 = v32;
      static DispatchQoS.unspecified.getter();
      aBlock[7] = _swiftEmptyArrayStorage;
      sub_100015330(&qword_1002147D0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100046184(&unk_100217030, &unk_1001989C0);
      sub_10000CB0C();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v34);
      (*(v36 + 8))(v8, v5);
      (*(v38 + 8))(v11, v9);
    }
  }

  return result;
}

uint64_t sub_1000ABB8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_100005180(0, &qword_100218538, NSURLSessionTask_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

uint64_t sub_1000ABC10(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for DispatchPredicate();
  sub_100003650();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100003664();
  sub_10000FEE8();
  v10 = *(v2 + OBJC_IVAR____TtC7parsecd15DownloadManager_queue);
  *v3 = v10;
  (*(v8 + 104))(v3, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  v12 = sub_100003898();
  result = v13(v12);
  if (v10)
  {
    v15 = OBJC_IVAR____TtC7parsecd15DownloadManager_resources;
    swift_beginAccess();
    v16 = sub_1000BCE88(a1, a2, *(v2 + v15));
    swift_endAccess();
    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000ABD54()
{
  sub_100005478();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_100046184(&qword_100218230, &unk_100199A00);
  sub_100005490(v6);
  sub_100003760();
  __chkstk_darwin(v7);
  v9 = &v43 - v8;
  v10 = type metadata accessor for URL();
  sub_100003650();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_10000407C();
  v16 = v14 - v15;
  __chkstk_darwin(v17);
  v19 = &v43 - v18;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1000A9F38(v9);
    sub_10000C944(v9, 1, v10);
    if (v20)
    {
      swift_unknownObjectRelease();
      sub_100015C0C(v9, &qword_100218230, &unk_100199A00);
    }

    else
    {
      (*(v12 + 32))(v19, v9, v10);
      if (!v1)
      {
        goto LABEL_8;
      }

      v44 = v5;
      v21 = [objc_opt_self() defaultManager];
      URL.path.getter();
      v22 = String._bridgeToObjectiveC()();

      v46[0] = 0;
      v23 = [v21 attributesOfItemAtPath:v22 error:v46];

      v24 = v46[0];
      if (v23)
      {
        type metadata accessor for FileAttributeKey(0);
        sub_100015330(&qword_1002147B0, type metadata accessor for FileAttributeKey, &unk_10019897C);
        v43 = v12;
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v3;
        v25 = v24;

        v12 = v43;
        Dictionary._bridgeToObjectiveC()();
        sub_1000189B0();

        v26 = v23;
        *v1 = v23;
LABEL_8:
        sub_100005180(0, &qword_100218550, NSFileHandle_ptr);
        (*(v12 + 16))(v16, v19, v10);
        sub_1000AC258(v16);
        v27 = sub_100003674();
        v28(v27);
        swift_unknownObjectRelease();
        goto LABEL_15;
      }

      v29 = v46[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v30 = v44;
      if (qword_1002140C8 != -1)
      {
        sub_100005F20();
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_10000964C(v31, qword_100232AC8);
      sub_1000189B0();

      swift_errorRetain();
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = sub_10001BCD4();
        v35 = sub_10000FE20();
        v45 = v3;
        v36 = v35;
        sub_1000083D0();
        v37 = swift_slowAlloc();
        v38 = v30;
        v39 = v37;
        v46[0] = v37;
        *v34 = 136315394;
        *(v34 + 4) = sub_100009684(v38, v45, v46);
        *(v34 + 12) = 2112;
        v40 = _convertErrorToNSError(_:)();
        *(v34 + 14) = v40;
        *v36 = v40;
        _os_log_impl(&_mh_execute_header, v32, v33, "no file handle for %s: %@", v34, 0x16u);
        sub_100015C0C(v36, &unk_100214C70, &qword_10019B4D0);
        sub_1000037A4();

        sub_100007378(v39);
        sub_1000037A4();

        sub_1000037A4();

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      v41 = sub_100003674();
      v42(v41);
    }
  }

LABEL_15:
  sub_100005460();
}

id sub_1000AC258(uint64_t a1)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v3 = v2;
  v12 = 0;
  v4 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:&v12];

  v5 = v12;
  if (v4)
  {
    v6 = type metadata accessor for URL();
    v7 = *(*(v6 - 8) + 8);
    v8 = v5;
    v7(a1, v6);
  }

  else
  {
    v9 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  return v4;
}

void sub_1000AC3B0(uint64_t a1, void *a2)
{
  v84 = a2;
  v4 = sub_100046184(&qword_100218230, &unk_100199A00);
  __chkstk_darwin(v4 - 8);
  v77 = &v70 - v5;
  v85 = type metadata accessor for URL();
  v6 = *(v85 - 8);
  __chkstk_darwin(v85);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v82 = &v70 - v10;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = (&v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(a1 + OBJC_IVAR____TtC7parsecd15DownloadManager_queue);
  *v15 = v16;
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11, v13);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v15, v11);
  if ((v16 & 1) == 0)
  {
LABEL_48:
    __break(1u);
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    if (sub_1000B1C94(v84))
    {
      v79 = v6;
      v73 = v19;
      v74 = v8;
      v80 = v2;

      v20 = sub_100018F1C(v78);
      v21 = OBJC_IVAR____TtC7parsecd15DownloadManager_resources;
      swift_beginAccess();
      v22 = *(a1 + v21);
      v23 = v22 + 64;
      v24 = 1 << *(v22 + 32);
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      else
      {
        v25 = -1;
      }

      v26 = v25 & *(v22 + 64);
      v27 = (v24 + 63) >> 6;
      v88 = v20 + 56;
      v83 = v22;
      swift_bridgeObjectRetain_n();
      v28 = 0;
      v81 = a1;
      for (i = v20; ; v20 = i)
      {
        v29 = v85;
        if (!v26)
        {
          break;
        }

LABEL_13:
        v31 = (*(v83 + 48) + 16 * (__clz(__rbit64(v26)) | (v28 << 6)));
        v32 = *v31;
        v33 = v31[1];
        if (*(v20 + 16))
        {
          Hasher.init(_seed:)();

          String.hash(into:)();
          v34 = Hasher._finalize()();
          v35 = ~(-1 << *(v20 + 32));
          while (1)
          {
            v36 = v34 & v35;
            if (((*(v88 + (((v34 & v35) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v34 & v35)) & 1) == 0)
            {
              break;
            }

            v37 = (*(i + 48) + 16 * v36);
            if (*v37 != v32 || v37[1] != v33)
            {
              v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v34 = v36 + 1;
              if ((v39 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_24;
          }
        }

        else
        {
        }

        sub_1000A94EC();
LABEL_24:
        v26 &= v26 - 1;
      }

      while (1)
      {
        v30 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          __break(1u);
          goto LABEL_47;
        }

        if (v30 >= v27)
        {
          break;
        }

        v26 = *(v23 + 8 * v30);
        ++v28;
        if (v26)
        {
          v28 = v30;
          goto LABEL_13;
        }
      }

      sub_1000112A4();
      sub_10001130C();
      swift_unknownObjectRelease();
      v41 = 0;
      v42 = 1 << *(v20 + 32);
      v43 = -1;
      if (v42 < 64)
      {
        v43 = ~(-1 << v42);
      }

      v44 = v43 & *(v20 + 56);
      v45 = (v42 + 63) >> 6;
      v78 = (v79 + 2);
      ++v79;
      *&v40 = 136446466;
      v70 = v40;
      v46 = v80;
      while (v44)
      {
        v47 = v41;
LABEL_33:
        v48 = __clz(__rbit64(v44));
        v44 &= v44 - 1;
        v49 = (*(v20 + 48) + ((v47 << 10) | (16 * v48)));
        v50 = *v49;
        v51 = v49[1];

        v83 = v50;
        v52 = String._bridgeToObjectiveC()();
        v53 = [v84 urlForIdentifier:v52];

        if (v53)
        {
          v54 = v82;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          if (qword_1002140C8 != -1)
          {
            swift_once();
          }

          v55 = type metadata accessor for Logger();
          sub_10000964C(v55, qword_100232AC8);
          v56 = v74;
          v76 = *v78;
          v76(v74, v54, v29);

          v57 = Logger.logObject.getter();
          v58 = static os_log_type_t.info.getter();

          v59 = os_log_type_enabled(v57, v58);
          v80 = v46;
          if (v59)
          {
            v60 = swift_slowAlloc();
            v72 = swift_slowAlloc();
            v87[0] = v72;
            *v60 = v70;
            *(v60 + 4) = sub_100009684(v83, v51, v87);
            *(v60 + 12) = 2080;
            v71 = v58;
            v61 = URL.absoluteString.getter();
            v63 = v62;
            v75 = *v79;
            v75(v56, v85);
            v64 = sub_100009684(v61, v63, v87);
            v65 = v81;

            *(v60 + 14) = v64;
            _os_log_impl(&_mh_execute_header, v57, v71, "add resource %{public}s from %s", v60, 0x16u);
            swift_arrayDestroy();

            v29 = v85;

            v66 = v83;
            v67 = v77;
          }

          else
          {

            v75 = *v79;
            v75(v56, v29);
            v67 = v77;
            v65 = v81;
            v66 = v83;
          }

          v68 = v82;
          v76(v67, v82, v29);
          sub_1000051C0(v67, 0, 1, v29);
          v69 = v80;
          sub_1000A8E0C(v66, v51, v67, v65);
          v46 = v69;
          v20 = i;
          if (v69)
          {

            swift_unknownObjectRelease();

            sub_100015C0C(v67, &qword_100218230, &unk_100199A00);
            v75(v68, v29);
            return;
          }

          sub_100015C0C(v67, &qword_100218230, &unk_100199A00);
          v75(v68, v29);
          v41 = v47;
        }

        else
        {

          v41 = v47;
        }
      }

      while (1)
      {
        v47 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          break;
        }

        if (v47 >= v45)
        {

          sub_1000A8570();
          goto LABEL_43;
        }

        v44 = *(v88 + 8 * v47);
        ++v41;
        if (v44)
        {
          goto LABEL_33;
        }
      }

LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

LABEL_43:
    swift_unknownObjectRelease();
  }
}

void sub_1000ACC40(uint64_t a1, void *a2, void *a3)
{
  v22 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v5 - 8);
  v26 = v5;
  __chkstk_darwin(v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v23 = *(v8 - 8);
  v24 = v8;
  __chkstk_darwin(v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000D57C(a1);
  for (i = 0; ; ++i)
  {
    if (v11 == i)
    {
      v15 = swift_allocObject();
      v16 = v22;
      v15[2] = a2;
      v15[3] = v16;
      aBlock[4] = sub_1000B1D1C;
      aBlock[5] = v15;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000D50C;
      aBlock[3] = &unk_1001FA628;
      v17 = _Block_copy(aBlock);
      v18 = a2;
      v19 = v16;
      static DispatchQoS.unspecified.getter();
      v27 = _swiftEmptyArrayStorage;
      sub_100015330(&qword_1002147D0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100046184(&unk_100217030, &unk_1001989C0);
      sub_10000CB0C();
      v20 = v26;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v17);
      (*(v25 + 8))(v7, v20);
      (*(v23 + 8))(v10, v24);

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v13 = *(a1 + 8 * i + 32);
    }

    v14 = v13;
    if (__OFADD__(i, 1))
    {
      break;
    }

    aBlock[0] = v13;
    sub_1000ACF74(aBlock, a2);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_1000ACF74(void **a1, void *a2)
{
  v46 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v4 - 8);
  __chkstk_darwin(v4);
  v49 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DispatchQoS();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100046184(&unk_100218500, &qword_10019C7D8);
  __chkstk_darwin(v7 - 8);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v42 - v11;
  v13 = sub_100046184(&qword_100218230, &unk_100199A00);
  __chkstk_darwin(v13 - 8);
  v15 = &v42 - v14;
  v16 = *a1;
  if (qword_1002140C8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000964C(v17, qword_100232AC8);
  v18 = v16;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v44 = v4;
    v45 = v2;
    v21 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    aBlock[0] = v43;
    *v21 = 136315138;
    v22 = [v18 originalRequest];
    if (v22)
    {
      v23 = v22;
      static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

      v24 = type metadata accessor for URLRequest();
      v25 = 0;
    }

    else
    {
      v24 = type metadata accessor for URLRequest();
      v25 = 1;
    }

    sub_1000051C0(v9, v25, 1, v24);
    sub_1000B1948(v9, v12, &unk_100218500, &qword_10019C7D8);
    type metadata accessor for URLRequest();
    if (sub_100008D0C(v12, 1, v24) == 1)
    {
      v26 = 0x3E6C696E3CLL;
      v27 = &unk_100218500;
      v28 = &qword_10019C7D8;
      v29 = v12;
    }

    else
    {
      URLRequest.url.getter();
      (*(*(v24 - 8) + 8))(v12, v24);
      v30 = type metadata accessor for URL();
      if (sub_100008D0C(v15, 1, v30) != 1)
      {
        v26 = URL.absoluteString.getter();
        v31 = v32;
        (*(*(v30 - 8) + 8))(v15, v30);
        goto LABEL_14;
      }

      v26 = 0x3E6C696E3CLL;
      v27 = &qword_100218230;
      v28 = &unk_100199A00;
      v29 = v15;
    }

    sub_100015C0C(v29, v27, v28);
    v31 = 0xE500000000000000;
LABEL_14:
    v33 = sub_100009684(v26, v31, aBlock);

    *(v21 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v19, v20, "cancel download %s", v21, 0xCu);
    sub_100007378(v43);

    v4 = v44;
    goto LABEL_15;
  }

LABEL_15:
  [v18 cancel];
  v34 = [v18 taskIdentifier];
  v35 = v46;
  v36 = swift_allocObject();
  *(v36 + 16) = v35;
  *(v36 + 24) = v34;
  aBlock[4] = sub_1000B1F80;
  aBlock[5] = v36;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000D50C;
  aBlock[3] = &unk_1001FA768;
  v37 = _Block_copy(aBlock);
  v38 = v35;
  v39 = v47;
  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_100015330(&qword_1002147D0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100046184(&unk_100217030, &unk_1001989C0);
  sub_10000CB0C();
  v40 = v49;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v37);
  (*(v51 + 8))(v40, v4);
  (*(v48 + 8))(v39, v50);
}

uint64_t sub_1000AD5D8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7parsecd15DownloadManager_spans;
  sub_100011994();
  swift_beginAccess();
  sub_1000BBA18(a2);
  if (v5)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(a1 + v4);
    *(a1 + v4) = 0x8000000000000000;
    v7 = *(v9 + 24);
    sub_100046184(&qword_100218548, &unk_10019D8E0);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v7);
    type metadata accessor for ResourceAccessNetworkSpan(0);
    _NativeDictionary._delete(at:)();
    *(a1 + v4) = v9;
  }

  return swift_endAccess();
}

void sub_1000AD8C8(uint64_t a1, void *a2, uint64_t a3, char *a4, const void *a5)
{
  v93 = a4;
  v112 = a3;
  v99 = type metadata accessor for DispatchWorkItemFlags();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v96 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for DispatchQoS();
  v95 = *(v97 - 8);
  __chkstk_darwin(v97);
  v94 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for URL();
  v102 = *(v111 - 8);
  __chkstk_darwin(v111);
  v92 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v9;
  __chkstk_darwin(v10);
  v101 = &v89 - v11;
  v12 = sub_100046184(&qword_100218230, &unk_100199A00);
  __chkstk_darwin(v12 - 8);
  v106 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v89 - v15;
  v17 = type metadata accessor for URLRequest();
  v109 = *(v17 - 8);
  __chkstk_darwin(v17);
  v110 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100046184(&unk_100218500, &qword_10019C7D8);
  __chkstk_darwin(v19 - 8);
  v103 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v104 = &v89 - v22;
  __chkstk_darwin(v23);
  v25 = &v89 - v24;
  __chkstk_darwin(v26);
  v28 = &v89 - v27;
  __chkstk_darwin(v29);
  v31 = &v89 - v30;
  __chkstk_darwin(v32);
  v34 = &v89 - v33;
  v107 = swift_allocObject();
  v108 = a5;
  *(v107 + 16) = a5;
  _Block_copy(a5);
  v35 = [a2 originalRequest];
  if (v35)
  {
    v36 = v35;
    static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  sub_1000051C0(v31, v37, 1, v17);
  sub_1000B1948(v31, v34, &unk_100218500, &qword_10019C7D8);
  v38 = sub_100008D0C(v34, 1, v17);
  v39 = v109;
  if (v38 == 1)
  {
    sub_100015C0C(v34, &unk_100218500, &qword_10019C7D8);
    countAndFlagsBits = 0;
    object = 0;
  }

  else
  {
    v40._object = 0x80000001001AFCB0;
    v40._countAndFlagsBits = 0xD000000000000017;
    v41 = URLRequest.value(forHTTPHeaderField:)(v40);
    countAndFlagsBits = v41.value._countAndFlagsBits;
    object = v41.value._object;
    (*(v39 + 8))(v34, v17);
  }

  v42 = [a2 originalRequest];
  if (v42)
  {
    v43 = v42;
    static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

    v44 = 0;
  }

  else
  {
    v44 = 1;
  }

  sub_1000051C0(v25, v44, 1, v17);
  sub_1000B1948(v25, v28, &unk_100218500, &qword_10019C7D8);
  if (sub_100008D0C(v28, 1, v17) == 1)
  {
    sub_100015C0C(v28, &unk_100218500, &qword_10019C7D8);
    v45 = 0;
    v46 = 0;
  }

  else
  {
    v47._countAndFlagsBits = 0xD00000000000001BLL;
    v47._object = 0x80000001001AFC90;
    v48 = URLRequest.value(forHTTPHeaderField:)(v47);
    v45 = v48.value._countAndFlagsBits;
    v46 = v48.value._object;
    (*(v39 + 8))(v28, v17);
  }

  v49 = v110;
  if (qword_1002140C8 != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  sub_10000964C(v50, qword_100232AC8);
  (*(v39 + 16))(v49, v112, v17);

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();

  v53 = os_log_type_enabled(v51, v52);
  v100 = v45;
  if (v53)
  {
    v54 = 0x3E6C696E3CLL;
    v55 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    aBlock[0] = v89;
    *v55 = 136315394;
    if (v46)
    {
      v56 = v45;
    }

    else
    {
      v56 = 0x3E6C696E3CLL;
    }

    if (v46)
    {
      v57 = v46;
    }

    else
    {
      v57 = 0xE500000000000000;
    }

    v58 = sub_100009684(v56, v57, aBlock);

    *(v55 + 4) = v58;
    *(v55 + 12) = 2080;
    URLRequest.url.getter();
    v59 = v111;
    if (sub_100008D0C(v16, 1, v111) == 1)
    {
      sub_100015C0C(v16, &qword_100218230, &unk_100199A00);
      v60 = 0xE500000000000000;
    }

    else
    {
      v54 = URL.absoluteString.getter();
      v60 = v62;
      (*(v102 + 8))(v16, v59);
    }

    v61 = *(v109 + 8);
    v61(v110, v17);
    v63 = sub_100009684(v54, v60, aBlock);

    *(v55 + 14) = v63;
    _os_log_impl(&_mh_execute_header, v51, v52, "will begin %s url %s", v55, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v61 = *(v39 + 8);
    v61(v49, v17);
  }

  v64 = v111;
  v65 = v106;
  if (!v46)
  {
LABEL_33:

    goto LABEL_34;
  }

  URLRequest.url.getter();
  if (sub_100008D0C(v65, 1, v64) != 1)
  {
    v66 = v101;
    v67 = v102;
    v68 = *(v102 + 32);
    v68(v101, v65, v64);
    if (sub_1000AA0E8(v100, v46))
    {
      v69 = v93;
      v112 = *&v93[OBJC_IVAR____TtC7parsecd15DownloadManager_queue];
      v70 = v92;
      (*(v67 + 16))(v92, v66, v64);
      v71 = (*(v67 + 80) + 40) & ~*(v67 + 80);
      v72 = (v91 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
      v73 = swift_allocObject();
      v74 = v100;
      *(v73 + 2) = v69;
      *(v73 + 3) = v74;
      *(v73 + 4) = v46;
      v68(&v73[v71], v70, v64);
      v75 = &v73[v72];
      v76 = object;
      *v75 = countAndFlagsBits;
      v75[1] = v76;
      v77 = &v73[(v72 + 23) & 0xFFFFFFFFFFFFFFF8];
      v78 = v107;
      *v77 = sub_1000B1BA0;
      v77[1] = v78;
      aBlock[4] = sub_1000B1BF8;
      aBlock[5] = v73;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000D50C;
      aBlock[3] = &unk_1001FA538;
      v79 = _Block_copy(aBlock);
      v80 = v69;

      v81 = v94;
      static DispatchQoS.unspecified.getter();
      v113 = _swiftEmptyArrayStorage;
      sub_100015330(&qword_1002147D0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100046184(&unk_100217030, &unk_1001989C0);
      sub_10000CB0C();
      v82 = v96;
      v83 = v99;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v79);
      (*(v98 + 8))(v82, v83);
      (*(v95 + 8))(v81, v97);
      (*(v102 + 8))(v101, v64);

      v84 = v108;
      goto LABEL_38;
    }

    (*(v67 + 8))(v66, v64);

    goto LABEL_33;
  }

  sub_100015C0C(v65, &qword_100218230, &unk_100199A00);
LABEL_34:
  v85 = v104;
  sub_1000051C0(v104, 1, 1, v17);
  v86 = v103;
  sub_1000B1BA8(v85, v103, &unk_100218500, &qword_10019C7D8);
  if (sub_100008D0C(v86, 1, v17) == 1)
  {
    isa = 0;
  }

  else
  {
    isa = URLRequest._bridgeToObjectiveC()().super.isa;
    v61(v86, v17);
  }

  v88 = v108;
  (*(v108 + 2))(v108, 0, isa);

  sub_100015C0C(v85, &unk_100218500, &qword_10019C7D8);

  v84 = v88;
LABEL_38:
  _Block_release(v84);
}

void sub_1000AE50C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t, char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27[0] = a7;
  v27[1] = a8;
  v28 = a6;
  v12 = sub_100046184(&unk_100218500, &qword_10019C7D8);
  __chkstk_darwin(v12 - 8);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v27 - v16;
  v18 = type metadata accessor for URLRequest();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AAD88(a2, a3, a4, a5, v28, v17);
  v22 = v27[0];
  if (sub_100008D0C(v17, 1, v18) == 1)
  {
    sub_100015C0C(v17, &unk_100218500, &qword_10019C7D8);
    if (qword_1002140C8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000964C(v23, qword_100232AC8);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "createDownloadRequest failed ", v26, 2u);
    }
  }

  else
  {
    (*(v19 + 32))(v21, v17, v18);
    (*(v19 + 16))(v14, v21, v18);
    sub_1000051C0(v14, 0, 1, v18);
    v22(1, v14);
    sub_100015C0C(v14, &unk_100218500, &qword_10019C7D8);
    (*(v19 + 8))(v21, v18);
  }
}

void sub_1000AE958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100046184(&unk_100218500, &qword_10019C7D8);
  __chkstk_darwin(v6 - 8);
  v8 = &v11 - v7;
  sub_1000B1BA8(a2, &v11 - v7, &unk_100218500, &qword_10019C7D8);
  v9 = type metadata accessor for URLRequest();
  isa = 0;
  if (sub_100008D0C(v8, 1, v9) != 1)
  {
    isa = URLRequest._bridgeToObjectiveC()().super.isa;
    (*(*(v9 - 8) + 8))(v8, v9);
  }

  (*(a3 + 16))(a3, a1, isa);
}

void sub_1000AEA78()
{
  sub_100005478();
  v110 = v0;
  v2 = v1;
  v4 = v3;
  v5 = sub_100046184(&unk_100218500, &qword_10019C7D8);
  v6 = sub_100005490(v5);
  __chkstk_darwin(v6);
  sub_10000407C();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  v12 = &v104 - v11;
  v13 = sub_100046184(&qword_100218230, &unk_100199A00);
  sub_100005490(v13);
  sub_100003760();
  __chkstk_darwin(v14);
  sub_10000549C(&v104 - v15);
  v109 = type metadata accessor for URL();
  sub_100003650();
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v20);
  sub_100007C68(&v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __chkstk_darwin(v21);
  v24 = &v104 - v22;
  if (v2)
  {
    v111 = v9;
    v25 = v12;
    v26 = v4;
    v27 = &v104 - v22;
    v28 = v17;
    v29 = v2;
    v30 = _convertErrorToNSError(_:)();
    v31 = [v30 domain];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v36 = v32 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v34 == v35;
    if (v36)
    {
    }

    else
    {
      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v37 & 1) == 0)
      {

        v17 = v28;
        v24 = v27;
        v4 = v26;
        v2 = v29;
        v12 = v25;
        v9 = v111;
        goto LABEL_10;
      }
    }

    v38 = [v30 code];

    v36 = v38 + 999 == 0;
    v17 = v28;
    v24 = v27;
    v4 = v26;
    v2 = v29;
    v12 = v25;
    v9 = v111;
    if (v36)
    {
LABEL_28:
      sub_100005460();
      return;
    }
  }

LABEL_10:
  v39 = [v4 response];
  if (!v39)
  {
    goto LABEL_28;
  }

  v111 = v39;
  objc_opt_self();
  sub_10000F230();
  v40 = swift_dynamicCastObjCClass();
  if (v40)
  {
    v41 = v40;
    v42 = v2;
    v43 = &v110[OBJC_IVAR____TtC7parsecd15DownloadManager_assembly];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v45 = Strong;
      v106 = *(v43 + 1);
      v46 = [v4 originalRequest];
      if (v46)
      {
        v47 = v46;
        static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

        v48 = type metadata accessor for URLRequest();
        v49 = 0;
      }

      else
      {
        v48 = type metadata accessor for URLRequest();
        v49 = 1;
      }

      sub_1000051C0(v9, v49, 1, v48);
      sub_1000B1948(v9, v12, &unk_100218500, &qword_10019C7D8);
      type metadata accessor for URLRequest();
      v52 = sub_10001497C();
      sub_10000C944(v52, v53, v48);
      if (v36)
      {
        sub_100015C0C(v12, &unk_100218500, &qword_10019C7D8);
        v59 = v108;
        v54 = sub_100009940();
        sub_1000051C0(v54, v55, 1, v109);
      }

      else
      {
        v56 = v108;
        URLRequest.url.getter();
        sub_10000690C();
        v58 = v48;
        v59 = v56;
        (*(v57 + 8))(v12, v58);
        v60 = sub_1000B1FC4();
        v61 = v109;
        sub_10000C944(v60, v62, v109);
        if (!v63)
        {
          v105 = v17;
          v72 = *(v17 + 32);
          v72(v24, v56, v61);
          if ([v41 statusCode] - 200 > 0xC7)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            sub_100046184(&qword_1002147F0, &qword_1001989D0);
            inited = swift_initStackObject();
            sub_100005594(inited, xmmword_100197F20);
            _StringGuts.grow(_:)(24);

            strcpy(&v112, "status code ");
            BYTE13(v112) = 0;
            HIWORD(v112) = -5120;
            v117 = [v41 statusCode];
            v120._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            sub_1000B2024(v120);

            sub_100007A28();
            v121._countAndFlagsBits = URL.absoluteString.getter();
            sub_1000B2024(v121);

            v86 = v112;
            *(inited + 72) = &type metadata for String;
            *(inited + 48) = v86;
            Dictionary.init(dictionaryLiteral:)();
            v87 = objc_allocWithZone(NSError);
            v88 = sub_100019040();
            sub_100086A30();
            swift_unknownObjectRelease();

            sub_100012F20();
            v89(v24, v61);
            goto LABEL_28;
          }

          v108 = v45;
          if (v42)
          {
            v73 = _convertErrorToNSError(_:)();
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            sub_100046184(&qword_1002147F0, &qword_1001989D0);
            v74 = swift_initStackObject();
            sub_100005594(v74, xmmword_100197F20);
            _StringGuts.grow(_:)(30);

            *&v112 = 0x64616F6C6E776F64;
            *(&v112 + 1) = 0xEF20726F72726520;
            v75 = [v73 domain];
            v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v77 = v24;
            v79 = v78;

            v80._countAndFlagsBits = v76;
            v80._object = v79;
            String.append(_:)(v80);

            v81._countAndFlagsBits = 32;
            v81._object = 0xE100000000000000;
            String.append(_:)(v81);
            v117 = [v73 code];
            v118._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            sub_1000B2024(v118);

            sub_100007A28();
            v119._countAndFlagsBits = URL.absoluteString.getter();
            sub_1000B2024(v119);

            v82 = v112;
            *(v74 + 72) = &type metadata for String;
            *(v74 + 48) = v82;
            Dictionary.init(dictionaryLiteral:)();
            v83 = objc_allocWithZone(NSError);
            v84 = sub_100019040();
            sub_100086A30();
            swift_unknownObjectRelease();

            (*(v105 + 8))(v77, v109);
            goto LABEL_28;
          }

          v90 = v110;
          sub_1000A7ACC();
          v104 = *&v90[OBJC_IVAR____TtC7parsecd15DownloadManager_queue];
          sub_10000BA48();
          v92 = v107;
          (*(v91 + 16))(v107, v24, v109);
          v93 = (LOBYTE(stru_100211048.name) + 32) & ~LOBYTE(stru_100211048.name);
          v94 = swift_allocObject();
          *(v94 + 16) = v4;
          *(v94 + 24) = v90;
          v95 = v92;
          v96 = v109;
          v72((v94 + v93), v95, v109);
          v97 = (v94 + ((v19 + v93 + 7) & 0xFFFFFFFFFFFFFFF8));
          v98 = v106;
          *v97 = v108;
          v97[1] = v98;
          sub_100006634();
          v99 = swift_allocObject();
          *(v99 + 16) = sub_1000B1A08;
          *(v99 + 24) = v94;
          v115 = sub_100028274;
          v116 = v99;
          *&v112 = _NSConcreteStackBlock;
          *(&v112 + 1) = 1107296256;
          v113 = sub_1000282A4;
          v114 = &unk_1001FA470;
          v100 = _Block_copy(&v112);
          v101 = v4;
          v102 = v90;
          swift_unknownObjectRetain();

          dispatch_sync(v104, v100);
          _Block_release(v100);
          swift_unknownObjectRelease();

          sub_100012F20();
          v103(v24, v96);
          LOBYTE(v100) = swift_isEscapingClosureAtFileLocation();

          if ((v100 & 1) == 0)
          {
            goto LABEL_28;
          }

          __break(1u);
          goto LABEL_35;
        }
      }

      sub_100015C0C(v59, &qword_100218230, &unk_100199A00);
      if (qword_1002140C8 == -1)
      {
LABEL_25:
        v64 = type metadata accessor for Logger();
        sub_10000964C(v64, qword_100232AC8);
        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v65, v66))
        {
          *swift_slowAlloc() = 0;
          sub_1000B1FD0();
          _os_log_impl(v67, v68, v69, v70, v71, 2u);
          sub_1000037A4();
        }

        swift_unknownObjectRelease();

        goto LABEL_28;
      }

LABEL_35:
      sub_100005F20();
      swift_once();
      goto LABEL_25;
    }
  }

  sub_10000F230();
  sub_100005460();
}

uint64_t sub_1000AF4E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v120 = a5;
  v121 = a4;
  v130 = a3;
  v127 = type metadata accessor for DispatchWorkItemFlags();
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v124 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for DispatchQoS();
  v123 = *(v125 - 8);
  __chkstk_darwin(v125);
  v122 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100046184(&qword_100218230, &unk_100199A00);
  __chkstk_darwin(v9 - 8);
  v11 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v114 - v13;
  v15 = type metadata accessor for URL();
  v131 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v119 = &v114 - v19;
  __chkstk_darwin(v20);
  v118 = &v114 - v21;
  __chkstk_darwin(v22);
  countAndFlagsBits = &v114 - v23;
  v24 = sub_100046184(&unk_100218500, &qword_10019C7D8);
  __chkstk_darwin(v24 - 8);
  v26 = &v114 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v114 - v28;
  __chkstk_darwin(v30);
  v32 = &v114 - v31;
  v34 = __chkstk_darwin(v33);
  v36 = &v114 - v35;
  v128 = a1;
  v37 = [a1 originalRequest];
  if (v37)
  {
    v38 = v37;
    static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

    v39 = type metadata accessor for URLRequest();
    v40 = 0;
  }

  else
  {
    v39 = type metadata accessor for URLRequest();
    v40 = 1;
  }

  sub_1000051C0(v32, v40, 1, v39);
  sub_1000B1948(v32, v36, &unk_100218500, &qword_10019C7D8);
  type metadata accessor for URLRequest();
  if (sub_100008D0C(v36, 1, v39) == 1)
  {
    return sub_100015C0C(v36, &unk_100218500, &qword_10019C7D8);
  }

  v116 = v15;
  v117 = a2;
  v42._object = 0x80000001001AFC90;
  v42._countAndFlagsBits = 0xD00000000000001BLL;
  v43 = URLRequest.value(forHTTPHeaderField:)(v42);
  v115 = *(*(v39 - 8) + 8);
  result = v115(v36, v39);
  if (v43.value._object)
  {
    v114 = v11;
    v44 = sub_1000ABC10(v43.value._countAndFlagsBits, v43.value._object);
    if (!v44)
    {
      countAndFlagsBits = v43.value._countAndFlagsBits;
      if (qword_1002140C8 != -1)
      {
        swift_once();
      }

      v56 = type metadata accessor for Logger();
      sub_10000964C(v56, qword_100232AC8);
      v57 = v131;
      v58 = v116;
      (*(v131 + 16))(v17, v130, v116);

      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();

      v61 = os_log_type_enabled(v59, v60);
      v62 = countAndFlagsBits;
      if (v61)
      {
        v63 = swift_slowAlloc();
        aBlock = swift_slowAlloc();
        *v63 = 136315394;
        *(v63 + 4) = sub_100009684(v62, v43.value._object, &aBlock);
        *(v63 + 12) = 2080;
        v64 = URL.absoluteString.getter();
        v66 = v65;
        (*(v57 + 8))(v17, v58);
        v67 = sub_100009684(v64, v66, &aBlock);
        v62 = countAndFlagsBits;

        *(v63 + 14) = v67;
        _os_log_impl(&_mh_execute_header, v59, v60, "missing resource for %s url: %s", v63, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        (*(v57 + 8))(v17, v58);
      }

      v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v85 = v84;
      sub_100046184(&qword_1002147F0, &qword_1001989D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100197F20;
      *(inited + 32) = 0x6E6F73616572;
      *(inited + 40) = 0xE600000000000000;
      aBlock = 0;
      v134 = 0xE000000000000000;
      _StringGuts.grow(_:)(20);

      aBlock = 0x20676E697373696DLL;
      v134 = 0xE800000000000000;
      v87._countAndFlagsBits = v62;
      v87._object = v43.value._object;
      String.append(_:)(v87);

      v88._countAndFlagsBits = 0x203A3E4C52553C20;
      v88._object = 0xE800000000000000;
      String.append(_:)(v88);
      v89._countAndFlagsBits = URL.absoluteString.getter();
      String.append(_:)(v89);

      v90 = aBlock;
      v91 = v134;
      *(inited + 72) = &type metadata for String;
      *(inited + 48) = v90;
      *(inited + 56) = v91;
      v92 = Dictionary.init(dictionaryLiteral:)();
      v93 = objc_allocWithZone(NSError);
      v94 = sub_1000B184C(v83, v85, 500, v92);
      v95 = v121;
      v96 = swift_allocObject();
      v97 = v120;
      v96[2] = v95;
      v96[3] = v97;
      v96[4] = v94;
      v137 = sub_1000B1A90;
      v138 = v96;
      aBlock = _NSConcreteStackBlock;
      v134 = 1107296256;
      v135 = sub_10000D50C;
      v136 = &unk_1001FA4C0;
      v98 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();
      v99 = v94;
      v100 = v122;
      static DispatchQoS.unspecified.getter();
      v132 = _swiftEmptyArrayStorage;
      sub_100015330(&qword_1002147D0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100046184(&unk_100217030, &unk_1001989C0);
      sub_10000CB0C();
      v101 = v124;
      v102 = v127;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v98);

      (*(v126 + 8))(v101, v102);
      (*(v123 + 8))(v100, v125);
    }

    v45 = v44;

    URL._bridgeToObjectiveC()(v46);
    v48 = v47;
    v49 = sub_1000B1ABC(v47);

    v50 = countAndFlagsBits;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v51 = OBJC_IVAR____TtC7parsecd16DownloadResource_url;
    swift_beginAccess();
    v52 = *(v131 + 40);
    v130 = v51;
    v52(v45 + v51, v50, v116);
    swift_endAccess();
    v53 = [v128 currentRequest];
    if (v53)
    {
      v54 = v53;
      static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

      v55 = 0;
    }

    else
    {
      v55 = 1;
    }

    sub_1000051C0(v26, v55, 1, v39);
    sub_1000B1948(v26, v29, &unk_100218500, &qword_10019C7D8);
    if (sub_100008D0C(v29, 1, v39) == 1)
    {
      sub_100015C0C(v29, &unk_100218500, &qword_10019C7D8);
      v68 = v116;
      sub_1000051C0(v14, 1, 1, v116);
    }

    else
    {
      URLRequest.url.getter();
      v115(v29, v39);
      v68 = v116;
      if (sub_100008D0C(v14, 1, v116) != 1)
      {
        v69 = v131;
        v103 = v118;
        v128 = *(v131 + 32);
        (v128)(v118, v14, v68);
        URL._bridgeToObjectiveC()(v104);
        v106 = v105;
        v107 = sub_1000B1ABC(v105);

        v108 = v119;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v70 = v45;
        v109 = v108;
        v110 = countAndFlagsBits;
        (*(v69 + 16))(countAndFlagsBits, v70 + v130, v68);
        sub_100015330(&qword_100218528, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        LOBYTE(v108) = dispatch thunk of static Equatable.== infix(_:_:)();
        v111 = *(v69 + 8);
        v111(v110, v68);
        v111(v103, v68);
        if (v108)
        {
          v111(v109, v68);
        }

        else
        {
          v112 = v114;
          (v128)(v114, v109, v68);
          sub_1000051C0(v112, 0, 1, v68);
          v113 = OBJC_IVAR____TtC7parsecd16DownloadResource_redirectUrl;
          swift_beginAccess();
          sub_1000B1998(v112, v70 + v113);
          swift_endAccess();
        }

        goto LABEL_19;
      }
    }

    sub_100015C0C(v14, &qword_100218230, &unk_100199A00);
    v69 = v131;
    v70 = v45;
LABEL_19:
    if (qword_1002140C8 != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    sub_10000964C(v71, qword_100232AC8);

    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v74 = 136315394;
      v75 = *(v70 + 16);
      v76 = *(v70 + 24);

      v77 = sub_100009684(v75, v76, &aBlock);

      *(v74 + 4) = v77;
      *(v74 + 12) = 2080;
      v78 = countAndFlagsBits;
      (*(v69 + 16))(countAndFlagsBits, v70 + v130, v68);
      v79 = URL.absoluteString.getter();
      v81 = v80;
      (*(v69 + 8))(v78, v68);
      v82 = sub_100009684(v79, v81, &aBlock);

      *(v74 + 14) = v82;
      _os_log_impl(&_mh_execute_header, v72, v73, "%s url: %s", v74, 0x16u);
      swift_arrayDestroy();
    }

    sub_1000A8570();
  }

  return result;
}

void sub_1000B03E0()
{
  sub_100005478();
  v171 = v1;
  v3 = v2;
  v4 = sub_100046184(&qword_100218230, &unk_100199A00);
  v5 = sub_100005490(v4);
  __chkstk_darwin(v5);
  sub_10000407C();
  sub_100004144();
  __chkstk_darwin(v6);
  sub_100009934();
  sub_10000549C(v7);
  v178 = type metadata accessor for URL();
  sub_100003650();
  v172 = v8;
  __chkstk_darwin(v9);
  sub_10000407C();
  sub_100004144();
  __chkstk_darwin(v10);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v11);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v12);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v13);
  sub_100009934();
  sub_100007C68(v14);
  v15 = sub_100046184(&unk_100218500, &qword_10019C7D8);
  v16 = sub_100005490(v15);
  __chkstk_darwin(v16);
  sub_10000407C();
  sub_100004144();
  __chkstk_darwin(v17);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v18);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v19);
  sub_100009934();
  sub_10000549C(v20);
  v21 = type metadata accessor for DispatchWorkItemFlags();
  sub_100003650();
  v23 = v22;
  __chkstk_darwin(v24);
  sub_100003664();
  v27 = v26 - v25;
  countAndFlagsBits = type metadata accessor for DispatchQoS();
  sub_100003650();
  v29 = v28;
  __chkstk_darwin(v30);
  sub_100003664();
  v33 = v32 - v31;
  v34 = *&v0[OBJC_IVAR____TtC7parsecd15DownloadManager_queue];
  sub_100006634();
  v35 = swift_allocObject();
  *(v35 + 16) = v0;
  *(v35 + 24) = v3;
  v187 = sub_1000B18FC;
  v188 = v35;
  *&v184 = _NSConcreteStackBlock;
  *(&v184 + 1) = 1107296256;
  sub_100005D74();
  v185 = v36;
  v186 = &unk_1001FA3A8;
  v37 = _Block_copy(&v184);
  v179 = v0;
  v38 = v3;
  static DispatchQoS.unspecified.getter();
  v183 = _swiftEmptyArrayStorage;
  sub_1000042DC();
  sub_100015330(v39, v40, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100046184(&unk_100217030, &unk_1001989C0);
  sub_10000CB0C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v170 = v34;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v37);
  (*(v23 + 8))(v27, v21);
  (*(v29 + 8))(v33, countAndFlagsBits);

  v41 = [v38 response];
  if (!v41)
  {
    goto LABEL_25;
  }

  v42 = v41;
  objc_opt_self();
  v43 = swift_dynamicCastObjCClass();
  if (!v43)
  {
    goto LABEL_24;
  }

  v44 = v43;
  v45 = [v38 originalRequest];
  if (v45)
  {
    v46 = v45;
    v47 = v180;
    static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

    v48 = 0;
    v49 = v181;
  }

  else
  {
    v48 = 1;
    v49 = v181;
    v47 = v180;
  }

  v50 = type metadata accessor for URLRequest();
  sub_1000051C0(v47, v48, 1, v50);
  sub_1000B1948(v47, v49, &unk_100218500, &qword_10019C7D8);
  sub_10000C944(v49, 1, v50);
  if (v85)
  {

    v51 = &unk_100218500;
    v52 = &qword_10019C7D8;
    v53 = v49;
LABEL_9:
    sub_100015C0C(v53, v51, v52);
    goto LABEL_25;
  }

  v54._object = 0x80000001001AFC90;
  v54._countAndFlagsBits = 0xD00000000000001BLL;
  v55 = URLRequest.value(forHTTPHeaderField:)(v54);
  object = v55.value._object;
  sub_10000690C();
  v58 = *(v57 + 8);
  v58(v49, v50);
  if (!v55.value._object)
  {
LABEL_24:

    goto LABEL_25;
  }

  v59 = v38;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    goto LABEL_25;
  }

  v61 = Strong;
  v62 = [v44 statusCode];
  v63 = v62;
  if ((v62 - 200) > 0xC7)
  {
    if (qword_1002140C8 != -1)
    {
      sub_100005F20();
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    sub_10000964C(v69, qword_100232AC8);

    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = sub_10001BCD4();
      sub_1000083D0();
      v73 = swift_slowAlloc();
      *&v184 = v73;
      *v72 = 136315394;
      v74 = sub_100009684(v55.value._countAndFlagsBits, v55.value._object, &v184);

      *(v72 + 4) = v74;
      *(v72 + 12) = 2048;
      *(v72 + 14) = v63;
      _os_log_impl(&_mh_execute_header, v70, v71, "download of %s got status code %ld", v72, 0x16u);
      sub_100007378(v73);
      sub_1000037A4();

      sub_1000037A4();
    }

    else
    {
    }

    swift_unknownObjectRelease();

    goto LABEL_24;
  }

  if (v62 != 206 && v62 != 200)
  {

    swift_unknownObjectRelease();
    goto LABEL_25;
  }

  countAndFlagsBits = v55.value._countAndFlagsBits;
  sub_1000A7ACC();
  v64 = [v59 originalRequest];
  if (v64)
  {
    v65 = v64;
    static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

    v66 = v175;
    v67 = 0;
    v68 = v176;
  }

  else
  {
    v67 = 1;
    v68 = v176;
    v66 = v175;
  }

  sub_1000051C0(v66, v67, 1, v50);
  v75 = sub_1000041F8();
  sub_1000B1948(v75, v76, v77, v78);
  v79 = sub_10001497C();
  sub_10000C944(v79, v80, v50);
  if (v85)
  {
    swift_unknownObjectRelease();

    sub_100015C0C(v68, &unk_100218500, &qword_10019C7D8);
    sub_100017C74();
    v81 = sub_10001497C();
    sub_1000051C0(v81, v82, 1, v178);
LABEL_34:
    v51 = &qword_100218230;
    v52 = &unk_100199A00;
    v53 = v68;
    goto LABEL_9;
  }

  sub_10000BA48();
  URLRequest.url.getter();
  v58(v68, v50);
  v68 = v66;
  v83 = sub_100009940();
  sub_10000C944(v83, v84, v178);
  if (v85)
  {

    swift_unknownObjectRelease();

    goto LABEL_34;
  }

  v181 = v61;
  v86 = sub_1000041F8();
  v166 = v87;
  v165 = v88;
  (v88)(v86);
  if (qword_1002140C8 != -1)
  {
    sub_100005F20();
    swift_once();
  }

  v89 = type metadata accessor for Logger();
  v90 = sub_10000964C(v89, qword_100232AC8);
  v91 = *(v172 + 16);
  v91(v169, v174, v178);
  v176 = v172 + 16;
  v175 = v91;
  v91(v173, v171, v178);
  v177 = v90;
  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = v169;
    v95 = v172;
    v96 = sub_10001BCD4();
    v164 = v42;
    v162 = swift_slowAlloc();
    *&v184 = v162;
    *v96 = 136315394;
    v97 = URL.absoluteString.getter();
    v99 = v98;
    v100 = v173;
    v163 = v55.value._object;
    v101 = *(v95 + 8);
    v101(v94, v178);
    v102 = sub_100009684(v97, v99, &v184);

    *(v96 + 4) = v102;
    *(v96 + 12) = 2080;
    v103 = URL.absoluteString.getter();
    v105 = v104;
    v180 = v101;
    v101(v100, v178);
    object = v163;
    v106 = sub_100009684(v103, v105, &v184);
    v107 = v178;

    *(v96 + 14) = v106;
    sub_1000B1FD0();
    _os_log_impl(v108, v109, v110, v111, v112, 0x16u);
    swift_arrayDestroy();
    v42 = v164;
    sub_1000037A4();

    sub_1000037A4();
  }

  else
  {

    v114 = *(v172 + 8);
    v114(v173, v178);
    v180 = v114;
    v113 = (v114)(v169, v178);
    v107 = v178;
  }

  __chkstk_darwin(v113);
  v115 = countAndFlagsBits;
  *(&v161 - 4) = v179;
  *(&v161 - 3) = v115;
  *(&v161 - 2) = object;
  OS_dispatch_queue.sync<A>(execute:)();
  if (v184 == 1)
  {
    sub_10000BA48();
    sub_1000A9F38(v116);
    v117 = sub_100009940();
    sub_10000C944(v117, v118, v107);
    if (!v85)
    {
      v148 = v167;
      v165(v167, &v161, v107);
      v149 = sub_100004950();
      sub_100046184(&qword_100218510, &qword_100198ED0);
      swift_allocObject();
      sub_10002E854(v149, 7u, 0);
      v150 = [objc_opt_self() defaultManager];
      NSFileManager.saveInCache(file:from:)();

      v153 = sub_10007AF80();
      sub_1000BCDCC(0xD000000000000027, 0x80000001001AD040, v153, &v184);

      if (v186)
      {
        if (swift_dynamicCast())
        {
          v154 = v183;
        }

        else
        {
          v154 = 0;
        }
      }

      else
      {
        sub_100015C0C(&v184, &qword_1002181D0, &qword_100198E00);
        v154 = 0;
      }

      sub_10002F188(v154);
      v155 = [objc_opt_self() defaultCenter];
      sub_100046184(&unk_100217020, &unk_10019B4C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100198F10;
      *&v184 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v184 + 1) = v157;
      AnyHashable.init<A>(_:)();
      *(inited + 96) = &type metadata for String;
      *(inited + 72) = countAndFlagsBits;
      *(inited + 80) = object;
      *&v184 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v184 + 1) = v158;
      AnyHashable.init<A>(_:)();
      v107 = v178;
      *(inited + 168) = v178;
      sub_1000205C4((inited + 144));
      sub_10000BEA8();
      v159();
      v160 = Dictionary.init(dictionaryLiteral:)();
      sub_100033AC0(@"PARFileDownloadCompletedNotification", 0, v160, v155);
      sub_100023F48();

      v151 = v180;
      sub_100007894();
      v151(v148, v107);
      v152 = v174;
      goto LABEL_56;
    }

    sub_100015C0C(&v161, &qword_100218230, &unk_100199A00);

    sub_100017C74();
    v119 = Logger.logObject.getter();
    v120 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v119, v120))
    {
      sub_10000F554();
      v121 = swift_slowAlloc();
      sub_1000083D0();
      v122 = swift_slowAlloc();
      *&v184 = v122;
      v123 = v107;
      v124 = sub_10001BE54(4.8149e-34);

      *(v121 + 4) = v124;
      sub_1000B1FD0();
      _os_log_impl(v125, v126, v127, v128, v129, 0xCu);
      sub_100007378(v122);
      sub_1000037A4();

      sub_1000037A4();

      sub_100023F48();

      sub_100007894();
      v130 = v174;
      v131 = v123;
    }

    else
    {

      sub_100023F48();

      sub_100007894();
      v130 = v174;
      v131 = v107;
    }

    v180(v130, v131);
  }

  else
  {
    v132 = v168;
    v133 = v174;
    sub_10000BEA8();
    v134();

    sub_100017C74();
    v135 = Logger.logObject.getter();
    v136 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v135, v136))
    {

      sub_100023F48();

      sub_100007894();
      v151 = v180;
      v180(v132, v107);
      v152 = v133;
LABEL_56:
      v151(v152, v107);
      goto LABEL_25;
    }

    v137 = sub_10001BCD4();
    *&v184 = swift_slowAlloc();
    v138 = sub_10001BE54(4.8151e-34);

    *(v137 + 4) = v138;
    *(v137 + 12) = 2080;
    v139 = URL.absoluteString.getter();
    v141 = v140;
    sub_100007894();
    v142 = v180;
    v180(v132, v107);
    sub_100009684(v139, v141, &v184);
    sub_1000189B0();

    *(v137 + 14) = v139;
    sub_1000B1FD0();
    _os_log_impl(v143, v144, v145, v146, v147, 0x16u);
    swift_arrayDestroy();
    sub_1000037A4();

    sub_1000037A4();

    sub_100023F48();

    v142(v174, v107);
  }

LABEL_25:
  sub_100005460();
}

uint64_t sub_1000B1658(uint64_t a1, id a2)
{
  v2 = [a2 taskIdentifier];
  swift_beginAccess();
  sub_1000BC1C8(v2);
  swift_endAccess();
}

uint64_t sub_1000B16DC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, BOOL *a3@<X8>)
{
  result = sub_1000ABC10(a1, a2);
  v5 = result;
  if (result)
  {
  }

  *a3 = v5 != 0;
  return result;
}

id sub_1000B184C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8.super.isa];

  return v9;
}

uint64_t sub_1000B1948(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10000B9F4(a1, a2, a3, a4);
  sub_10000690C();
  v5 = sub_1000041F8();
  v6(v5);
  return v4;
}

uint64_t sub_1000B1998(uint64_t a1, uint64_t a2)
{
  v4 = sub_100046184(&qword_100218230, &unk_100199A00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B1A08()
{
  type metadata accessor for URL();
  sub_1000B1FF0();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = (v0 + v4);
  v6 = *v5;
  v7 = v5[1];

  return sub_1000AF4E8(v2, v3, v0 + v1, v6, v7);
}

id sub_1000B1ABC(void *a1)
{
  v1 = a1;
  v2 = [NSURLComponents parsec_componentsWithURL:v1 resolvingAgainstBaseURL:0];
  v3 = [v2 queryItems];
  v4 = [v3 mutableCopy];

  v5 = [v4 parsec_filterObjectsUsingBlock:&stru_1001FA7B0];
  if ([v5 count])
  {
    [v2 setQueryItems:v5];
  }

  else
  {
    [v2 setQueryItems:0];
    [v2 setQuery:0];
  }

  v6 = [v2 URL];

  return v6;
}

uint64_t sub_1000B1BA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10000B9F4(a1, a2, a3, a4);
  sub_10000690C();
  v5 = sub_1000041F8();
  v6(v5);
  return v4;
}

void sub_1000B1BF8()
{
  type metadata accessor for URL();
  sub_1000B1FF0();
  v3 = (v2 + 23) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = (v0 + v2);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v0 + v3);
  v11 = *(v0 + v3 + 8);

  sub_1000AE50C(v4, v5, v6, (v0 + v1), v8, v9, v10, v11);
}

uint64_t sub_1000B1C94(void *a1)
{
  v1 = [a1 downloadResourcesList];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id sub_1000B1D24(void *a1, void *a2)
{
  v4 = a1;
  v5 = a2;
  v6 = 0;
  if (a1 && a2)
  {
    v7 = [NSURLComponents parsec_componentsWithURL:v4 resolvingAgainstBaseURL:0];
    v8 = [NSURLComponents parsec_componentsWithURL:v5 resolvingAgainstBaseURL:0];
    v9 = [v7 path];
    v10 = [v8 path];
    v6 = 0;
    if ([v9 isEqual:v10])
    {
      v11 = [v7 query];
      v12 = [v8 query];
      v6 = [v11 isEqual:v12];
    }
  }

  return v6;
}

BOOL sub_1000B1E74(id a1, NSURLQueryItem *a2, unint64_t a3)
{
  v3 = a2;
  v4 = [(NSURLQueryItem *)v3 name];
  if ([v4 isEqualToString:@"key"])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(NSURLQueryItem *)v3 name];
    if ([v6 isEqualToString:@"internal"])
    {
      v5 = 0;
    }

    else
    {
      v7 = [(NSURLQueryItem *)v3 name];
      if ([v7 isEqualToString:@"seed"])
      {
        v5 = 0;
      }

      else
      {
        v8 = [(NSURLQueryItem *)v3 name];
        v9 = [v8 isEqualToString:@"eat"];

        v5 = v9 ^ 1;
      }
    }
  }

  return v5;
}

uint64_t sub_1000B1FAC()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_1000B2004(uint64_t a1)
{
}

void sub_1000B2024(Swift::String a1)
{

  String.append(_:)(a1);
}

uint64_t sub_1000B203C(uint64_t a1)
{
  result = sub_1000495C8(a1);
  *(result + 24) = 1;
  return result;
}

uint64_t sub_1000B205C(void *a1)
{
  v2 = [a1 typeForPQC];
  if (v2 >= 2)
  {
    if (v2 != 2)
    {
      if (qword_1002140D8 != -1)
      {
        sub_10000393C(&qword_1002140D8);
      }

      v7 = type metadata accessor for Logger();
      sub_10000964C(v7, qword_100232AF8);
      v8 = a1;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 67109120;
        *(v11 + 4) = [v8 type];

        _os_log_impl(&_mh_execute_header, v9, v10, "ECC: type %d is not handled", v11, 8u);
      }

      else
      {
      }

      return 0;
    }

    return 1;
  }

  sub_1000B23B8(a1);
  if (v3)
  {
    v4._countAndFlagsBits = sub_10000395C();
    v5 = String.hasPrefix(_:)(v4);

    if (v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1000B21BC(void *a1)
{
  v2 = [a1 result];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v2 typeForPQC];
  if (v4 >= 2)
  {
    if (v4 != 2)
    {
      if (qword_1002140D8 != -1)
      {
        sub_10000393C(&qword_1002140D8);
      }

      v12 = type metadata accessor for Logger();
      sub_10000964C(v12, qword_100232AF8);
      v3 = v3;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 67109120;
        *(v15 + 4) = [v3 type];

        _os_log_impl(&_mh_execute_header, v13, v14, "ECC: type %d is not handled", v15, 8u);
      }

      else
      {
      }

      goto LABEL_16;
    }

    v9 = [a1 titleText];
  }

  else
  {
    sub_1000B23B8(v3);
    v6 = v5;
    if (!v5)
    {

      return v6;
    }

    v7._countAndFlagsBits = sub_10000395C();
    v8 = String.hasPrefix(_:)(v7);

    if (!v8)
    {
      goto LABEL_16;
    }

    v9 = [v3 completedQuery];
  }

  v10 = v9;
  if (!v10)
  {
LABEL_16:

    return 0;
  }

  v11 = v10;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

uint64_t sub_1000B23B8(void *a1)
{
  v1 = [a1 jsonSectionBundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000B241C(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_100003650();
  v87 = v4;
  v88 = v3;
  __chkstk_darwin(v3);
  v86 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100046184(&qword_100218230, &unk_100199A00);
  __chkstk_darwin(v6 - 8);
  v8 = &v78 - v7;
  v9 = type metadata accessor for URL();
  sub_100003650();
  v11 = v10;
  __chkstk_darwin(v12);
  v83 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v84 = &v78 - v15;
  __chkstk_darwin(v16);
  v18 = &v78 - v17;
  __chkstk_darwin(v19);
  v21 = &v78 - v20;
  __chkstk_darwin(v22);
  v24 = &v78 - v23;
  __chkstk_darwin(v25);
  v27 = &v78 - v26;
  v89 = v1;
  NSFileManager.parsecdCustomFBDirectoryURL.getter();
  if (sub_100008D0C(v8, 1, v9) == 1)
  {
    sub_1000982A0(v8);
LABEL_8:
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
    v31 = objc_allocWithZone(NSError);
    sub_1000B184C(v28, v30, 500, 0);
    swift_willThrow();
    return a1;
  }

  (*(v11 + 32))(v27, v8, v9);
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_47;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (!a1 || a1 == 19)
  {
    (*(v11 + 8))(v27, v9);
    goto LABEL_8;
  }

  v79 = v11;
  v80 = v27;
  v81 = v9;
  v82 = v24;
  switch(a1)
  {
    case 1:
      v33 = @"SafariAutoFill";
      goto LABEL_30;
    case 2:
      v33 = @"Crowdsourcing";
      goto LABEL_30;
    case 3:
      v33 = @"SpotlightResultFeatures";
      goto LABEL_30;
    case 4:
      v33 = @"SafariAutoPlay";
      goto LABEL_30;
    case 5:
      v33 = @"Trystero";
      goto LABEL_30;
    case 6:
      v33 = @"EngagedCompletionFeatures";
      goto LABEL_30;
    case 7:
      v33 = @"ProactiveEventTracker";
      goto LABEL_30;
    case 8:
      v33 = @"PhiDES";
      goto LABEL_30;
    case 9:
      v33 = @"DuetExpert";
      goto LABEL_30;
    case 10:
      v33 = @"UserReport";
      goto LABEL_30;
    case 11:
      v33 = @"Usage";
      goto LABEL_30;
    case 12:
      v33 = @"FeedbackV2";
      goto LABEL_30;
    case 13:
      v33 = @"FeedbackV2PB";
      goto LABEL_30;
    case 14:
      v33 = @"ProactiveEventTrackerAggregated";
      goto LABEL_30;
    case 15:
      v33 = @"Handwashing";
      goto LABEL_30;
    case 16:
      v33 = @"Experiments";
      goto LABEL_30;
    case 17:
      v33 = @"FeatureQuality";
      goto LABEL_30;
    case 18:
      v33 = @"OnDeviceAnalytics";
      goto LABEL_30;
    case 19:
      v33 = @"ModelFeedback";
LABEL_30:
      v34 = v33;
      break;
    default:
      v33 = [NSString stringWithFormat:@"(unknown: %i)", a1];
      break;
  }

  v36 = v86;
  v35 = v87;
  v37 = v33;
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v39;

  UUID.init()();
  v40 = UUID.uuidString.getter();
  v42 = v41;
  v35[1](v36, v88);
  v78 = v38;
  URL.appendingPathComponent(_:isDirectory:)();
  v86 = v40;
  v87 = v42;
  URL.appendingPathComponent(_:)();
  v43 = v79 + 8;
  v24 = *(v79 + 8);
  v44 = v18;
  v45 = v81;
  (v24)(v44, v81);
  URL.standardizedFileURL.getter();
  v88 = v43;
  (v24)(v21, v45);
  URL.path.getter();
  v46 = String._bridgeToObjectiveC()();

  sub_100046184(qword_100217FB0, &unk_10019C2F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100197F20;
  *(inited + 64) = &type metadata for Int;
  *(inited + 32) = NSFilePosixPermissions;
  *(inited + 40) = 384;
  type metadata accessor for FileAttributeKey(0);
  sub_100098E68();
  v48 = NSFilePosixPermissions;
  v49 = Dictionary.init(dictionaryLiteral:)();
  LOBYTE(v35) = sub_1000B2DF4(v46, 0, 0xC000000000000000, v49, v89);

  if (v35)
  {
    v21 = v87;
    if (qword_1002140A0 == -1)
    {
LABEL_33:
      v50 = type metadata accessor for Logger();
      sub_10000964C(v50, qword_100232A50);
      v51 = v8;

      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.info.getter();

      v54 = v24;
      if (os_log_type_enabled(v52, v53))
      {
        v55 = v21;
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v90 = v57;
        *v56 = 136315394;
        v58 = sub_100009684(v78, v51, &v90);

        *(v56 + 4) = v58;
        *(v56 + 12) = 2080;
        v59 = sub_100009684(v86, v55, &v90);

        *(v56 + 14) = v59;
        _os_log_impl(&_mh_execute_header, v52, v53, "Created custom feedback file for type %s with name %s", v56, 0x16u);
        swift_arrayDestroy();
        sub_1000036D4(v57);
        sub_1000036D4(v56);
      }

      else
      {
      }

      sub_1000B2EB4();
      a1 = v84;
      v72 = v81;
      (*(v79 + 16))(v84, v82, v81);
      v73 = v85;
      v74 = sub_10002D8F0(a1);
      if (!v73)
      {
        a1 = v74;
      }

      v54(v82, v72);
      v54(v80, v72);
      return a1;
    }

LABEL_48:
    swift_once();
    goto LABEL_33;
  }

  if (qword_1002140C0 != -1)
  {
    swift_once();
  }

  v60 = type metadata accessor for Logger();
  sub_10000964C(v60, qword_100232AB0);
  v61 = v83;
  v62 = v81;
  (*(v79 + 16))(v83, v82, v81);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = v61;
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v90 = v67;
    *v66 = 136315138;
    v68 = URL.path.getter();
    v70 = v69;
    (v24)(v65, v81);
    v71 = sub_100009684(v68, v70, &v90);
    v62 = v81;

    *(v66 + 4) = v71;
    _os_log_impl(&_mh_execute_header, v63, v64, "could not create custom feedback file at %s", v66, 0xCu);
    sub_100007378(v67);
    sub_1000036D4(v67);
    sub_1000036D4(v66);
  }

  else
  {

    (v24)(v61, v62);
  }

  v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  a1 = v76;
  v77 = objc_allocWithZone(NSError);
  sub_1000B184C(v75, a1, 500, 0);
  swift_willThrow();
  (v24)(v82, v62);
  (v24)(v80, v62);
  return a1;
}

id sub_1000B2DF4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100014A40(a2, a3);
  type metadata accessor for FileAttributeKey(0);
  sub_100098E68();
  v10 = Dictionary._bridgeToObjectiveC()().super.isa;

  v11 = [a5 createFileAtPath:a1 contents:isa attributes:v10];

  return v11;
}

unint64_t sub_1000B2EB4()
{
  result = qword_100218550;
  if (!qword_100218550)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100218550);
  }

  return result;
}

uint64_t sub_1000B2EF8()
{

  v0 = sub_1000866B8();
  v2 = v1;

  sub_1000B315C(0, v0, v2);
  return v0;
}

uint64_t sub_1000B2F5C()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_1000382D0();
  static DispatchQoS.userInitiated.getter();
  v7[1] = 0;
  sub_1000152E8(&qword_100216910, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  dispatch thunk of OptionSet.init(rawValue:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_100232C70 = result;
  return result;
}

uint64_t sub_1000B315C(char a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  sub_100003650();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  sub_100003650();
  v13 = v12;
  __chkstk_darwin(v14);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100214170 != -1)
  {
    swift_once();
  }

  v21[1] = qword_100232C70;
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = a1 & 1;
  *(v18 + 32) = a2;
  *(v18 + 40) = a3;
  aBlock[4] = sub_1000B424C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000D50C;
  aBlock[3] = &unk_1001FA830;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_1000152E8(&qword_1002147D0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100046184(&unk_100217030, &unk_1001989C0);
  sub_10000CB0C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v8 + 8))(v11, v6);
  (*(v13 + 8))(v16, v22);
}

void sub_1000B346C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Client();
  __chkstk_darwin(v7 - 8);
  v9 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = sub_100004950();
    static Client.parsecd.getter();
    type metadata accessor for ResourceAccessSpan(0);
    swift_allocObject();
    v13 = sub_100004A34(v12, 100, v9, 0, 1);
    v14 = [objc_opt_self() defaultTreatmentStore];
    sub_100046184(&qword_10021AC30, &qword_10019FB60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100197F20;
    v16 = *(v11 + 24);
    *(inited + 32) = *(v11 + 16);
    *(inited + 40) = v16;

    sub_1000ECD9C(inited);
    isa = Set._bridgeToObjectiveC()().super.isa;

    v18 = [v14 areasForNamespaces:isa];

    *&v101[0] = 0;
    v19 = [v18 resultWithError:v101];

    v20 = *&v101[0];
    if (v19)
    {
      v21 = *(v11 + 24);
      *&v99 = *(v11 + 16);
      *(&v99 + 1) = v21;

      v22 = v20;
      v23 = [v19 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
      if (v23)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v99 = 0u;
        v100 = 0u;
      }

      v101[0] = v99;
      v101[1] = v100;
      if (!*(&v100 + 1))
      {

        sub_100048450(v101);
        return;
      }

      sub_100046184(&qword_100217B28, &qword_10019C8B0);
      if ((swift_dynamicCast() & 1) == 0)
      {

LABEL_55:
        return;
      }

      v98 = v19;
      v35 = Set._bridgeToObjectiveC()().super.isa;

      v36 = v14;
      v37 = [v14 treatmentsPayloadForAreas:v35];

      *&v101[0] = 0;
      v38 = [v37 resultWithError:v101];

      v39 = *&v101[0];
      if (v38)
      {
        v96 = v36;
        v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v42 = v41;
        v43 = v39;
        v44 = v42;

        v45 = HIBYTE(v42) & 0xF;
        v97 = v40;
        if ((v42 & 0x2000000000000000) == 0)
        {
          v45 = v40 & 0xFFFFFFFFFFFFLL;
        }

        v46 = v13;
        if (!v45)
        {

          return;
        }

        v19 = v98;
        if (a2)
        {
          *(v13 + qword_100216C08) = 54;
          sub_10000D684();
          if (qword_1002140E8 != -1)
          {
            swift_once();
          }

          v47 = type metadata accessor for Logger();
          sub_10000964C(v47, qword_100232B28);

          v48 = Logger.logObject.getter();
          v49 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            *&v101[0] = swift_slowAlloc();
            *v50 = 136315394;
            v51 = v42;
            v53 = *(v11 + 16);
            v52 = *(v11 + 24);

            v54 = sub_100009684(v53, v52, v101);

            *(v50 + 4) = v54;
            v44 = v51;
            *(v50 + 12) = 2080;
            v55 = v97;
            *(v50 + 14) = sub_100009684(v97, v44, v101);
            v56 = "AMS Baseline Treatments for namespace %s initialized to '%s'";
LABEL_22:
            _os_log_impl(&_mh_execute_header, v48, v49, v56, v50, 0x16u);
            swift_arrayDestroy();

LABEL_45:
            v80 = v96;
LABEL_54:

            sub_100087C70(v55, v44);

            goto LABEL_55;
          }

LABEL_52:

          goto LABEL_53;
        }

        if (!a4 || (v97 == a3 ? (v58 = v42 == a4) : (v58 = 0), !v58 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
        {
          *(v13 + qword_100216C08) = 55;
          sub_10000D684();
          if (qword_1002140E8 != -1)
          {
            swift_once();
          }

          v65 = type metadata accessor for Logger();
          sub_10000964C(v65, qword_100232B28);

          v66 = Logger.logObject.getter();
          v67 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            v95 = swift_slowAlloc();
            *&v99 = v95;
            *v68 = 136315650;
            v69 = *(v11 + 16);
            v70 = *(v11 + 24);

            v71 = sub_100009684(v69, v70, &v99);

            *(v68 + 4) = v71;
            *(v68 + 12) = 2080;

            v72 = sub_1000866B8();
            v73 = v19;
            v74 = v44;
            v76 = v75;

            *&v101[0] = v72;
            *(&v101[0] + 1) = v76;
            v44 = v74;
            v19 = v73;
            sub_100046184(&qword_1002181F0, &qword_10019C610);
            v77 = String.init<A>(describing:)();
            v79 = sub_100009684(v77, v78, &v99);

            *(v68 + 14) = v79;
            *(v68 + 22) = 2080;
            v55 = v97;
            *(v68 + 24) = sub_100009684(v97, v44, &v99);
            _os_log_impl(&_mh_execute_header, v66, v67, "Stale previously vended AMS Baseline Treatments for namespace %s %s updated to '%s'", v68, 0x20u);
            swift_arrayDestroy();

            goto LABEL_45;
          }

LABEL_53:
          v80 = v96;
          v55 = v97;
          goto LABEL_54;
        }

        v59 = v42;
        v60 = sub_1000866B8();
        v62 = v61;

        if (v62)
        {
          if (v97 == v60 && v62 == v42)
          {

            v44 = v42;
LABEL_58:
            if (qword_1002140E8 != -1)
            {
              swift_once();
            }

            v86 = type metadata accessor for Logger();
            sub_10000964C(v86, qword_100232B28);

            v87 = Logger.logObject.getter();
            v88 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v87, v88))
            {
              v89 = swift_slowAlloc();
              v90 = swift_slowAlloc();
              *&v101[0] = v90;
              *v89 = 136315138;
              v91 = v44;
              v92 = *(v11 + 16);
              v93 = *(v11 + 24);

              v94 = sub_100009684(v92, v93, v101);

              *(v89 + 4) = v94;
              v44 = v91;
              _os_log_impl(&_mh_execute_header, v87, v88, "AMS BaselineTreatments for namespace %s unchanged", v89, 0xCu);
              sub_100007378(v90);
            }

            v80 = v96;
            v55 = v97;
            *(v46 + qword_100216C08) = 53;
            sub_10000D684();
            goto LABEL_54;
          }

          v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v44 = v59;
          if (v64)
          {
            goto LABEL_58;
          }
        }

        else
        {

          v44 = v42;
        }

        *(v46 + qword_100216C08) = 54;
        sub_10000D684();
        if (qword_1002140E8 != -1)
        {
          swift_once();
        }

        v81 = type metadata accessor for Logger();
        sub_10000964C(v81, qword_100232B28);

        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *&v101[0] = swift_slowAlloc();
          *v50 = 136315394;
          v82 = v44;
          v83 = *(v11 + 16);
          v84 = *(v11 + 24);

          v85 = sub_100009684(v83, v84, v101);
          v44 = v82;

          *(v50 + 4) = v85;
          *(v50 + 12) = 2080;
          v55 = v97;
          *(v50 + 14) = sub_100009684(v97, v44, v101);
          v56 = "AMS Baseline Treatments for namespace %s updated to '%s'";
          goto LABEL_22;
        }

        goto LABEL_52;
      }

      v57 = *&v101[0];
      v26 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v24 = v98;
    }

    else
    {
      v24 = v14;
      v25 = *&v101[0];
      v26 = _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    *(v13 + qword_100216C08) = 52;
    sub_10000D684();
    if (qword_1002140E8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10000964C(v27, qword_100232B28);
    swift_errorRetain();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v101[0] = v31;
      *v30 = 136315138;
      *&v99 = v26;
      swift_errorRetain();
      sub_100046184(&qword_100216900, &unk_10019AE20);
      v32 = String.init<A>(describing:)();
      v34 = sub_100009684(v32, v33, v101);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "Couldn't fetch Baseline Treatments: %s", v30, 0xCu);
      sub_100007378(v31);
    }

    else
    {
    }
  }
}

uint64_t sub_1000B41C4()
{

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1000B41F4()
{
  sub_1000B41C4();

  return _swift_deallocClassInstance(v0, 56, 7);
}

parsecd::PegasusClientName_optional __swiftcall PegasusClientName.init(rawValue:)(Swift::String rawValue)
{
  v1 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v1 >= 0x20)
  {
    return 32;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1000B42CC()
{
  result = qword_1002187B0;
  if (!qword_1002187B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002187B0);
  }

  return result;
}

parsecd::PegasusClientName_optional sub_1000B4338@<W0>(Swift::String *a1@<X0>, parsecd::PegasusClientName_optional *a2@<X8>)
{
  result.value = PegasusClientName.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1000B4368@<X0>(uint64_t *a1@<X8>)
{
  result = PegasusClientName.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000B4398()
{
  result = qword_1002187B8;
  if (!qword_1002187B8)
  {
    sub_1000461CC(&qword_1002187C0, &qword_10019C958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002187B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PegasusClientName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE1)
  {
    if (a2 + 31 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 31) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 32;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x20;
  v5 = v6 - 32;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PegasusClientName(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 31 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 31) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE0)
  {
    v6 = ((a2 - 225) >> 8) + 1;
    *result = a2 + 31;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 31;
        }

        break;
    }
  }

  return result;
}

Swift::Int sub_1000B4570(uint64_t a1)
{
  v1 = a1;
  sub_100006A80(a1);
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

Swift::Int sub_1000B45D8(uint64_t a1)
{
  v1 = a1;
  sub_100006A80(a1);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000B4618(uint64_t a1)
{
  sub_100006A80(a1);
  Hasher._combine(_:)(0x100u);
  return Hasher._finalize()();
}

Swift::Int sub_1000B466C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_100006A80(a1);
  v4 = a2(a1);
  sub_100005F34(v4, v5, v6);

  return Hasher._finalize()();
}

Swift::Int sub_1000B46BC(uint64_t a1)
{
  v1 = a1;
  sub_100006A80(a1);
  Hasher._combine(_:)(qword_10019CB58[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1000B4708(uint64_t a1)
{
  v1 = a1;
  sub_100006A80(a1);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000B4748(uint64_t a1)
{
  v1 = a1;
  sub_100006A80(a1);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000B4788(uint64_t a1)
{
  v1 = a1;
  sub_100006A80(a1);
  sub_1000B49A4(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000B47C8(Swift::UInt a1)
{
  sub_100006A80(a1);
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t sub_1000B4808(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_1000B4928(uint64_t a1, char a2)
{
  PegasusClientName.rawValue.getter(a2);
  String.hash(into:)();
}

uint64_t sub_1000B49A4(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_1000B4A54(uint64_t a1, char a2)
{
  String.hash(into:)();
}

Swift::Int sub_1000B4AAC(uint64_t a1, uint64_t a2)
{
  sub_100007FF8(a1, a2);
  sub_1000B49A4(v4, v2);
  return Hasher._finalize()();
}

Swift::Int sub_1000B4AE8(uint64_t a1, uint64_t a2)
{
  sub_100007FF8(a1, a2);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int sub_1000B4B3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  v5 = a3(a2);
  sub_100005F34(v5, v6, v7);

  return Hasher._finalize()();
}

Swift::Int sub_1000B4B90(uint64_t a1, uint64_t a2)
{
  sub_100007FF8(a1, a2);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int sub_1000B4BCC(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2 + 1);
  return Hasher._finalize()();
}

Swift::Int sub_1000B4C14(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_10019CB58[a2]);
  return Hasher._finalize()();
}

Swift::Int sub_1000B4C64(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x100u);
  return Hasher._finalize()();
}

Swift::Int sub_1000B4CA4(uint64_t a1, Swift::UInt a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

Swift::Int sub_1000B4CE8(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

Swift::Int sub_1000B4D2C(uint64_t a1, uint64_t a2)
{
  sub_100007FF8(a1, a2);
  String.hash(into:)();

  return Hasher._finalize()();
}

const char *sub_1000B4DA8(char a1)
{
  result = "creating";
  switch(a1)
  {
    case 1:
      result = "updating";
      break;
    case 2:
      result = "failedToGetURL";
      break;
    case 3:
      result = "failedToRead";
      break;
    case 4:
      result = "failedToWrite";
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000B4E20(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_1000B4E68@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000B4E20(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000B4E94()
{
  v0 = qword_1002187C8;

  return v0;
}

uint64_t sub_1000B4ECC()
{
  v0 = qword_1002187D8;

  return v0;
}

uint64_t sub_1000B4F24(uint64_t a1, uint64_t a2)
{

  Logger.init(subsystem:category:)();
  v5 = (v2 + OBJC_IVAR____TtC7parsecd27DevicePersistentDataManager_cachedData);
  v5[1] = 0;
  v5[2] = 0;
  *v5 = 0;
  v6 = OBJC_IVAR____TtC7parsecd27DevicePersistentDataManager_locker;
  type metadata accessor for Locker();
  v7 = swift_allocObject();
  v8 = swift_slowAlloc();
  *(v7 + 16) = v8;
  *v8 = 0;
  *(v2 + v6) = v7;
  *(v2 + 16) = a1;
  *(v2 + OBJC_IVAR____TtC7parsecd27DevicePersistentDataManager_fileManager) = a2;
  return v2;
}

unint64_t sub_1000B5004()
{
  v67 = type metadata accessor for UUID();
  sub_100003650();
  v66 = v1;
  __chkstk_darwin(v2);
  sub_100003664();
  v65 = v4 - v3;
  v69 = type metadata accessor for OSSignpostID();
  sub_100003650();
  v72 = v5;
  __chkstk_darwin(v6);
  sub_100003664();
  v68 = v8 - v7;
  v9 = type metadata accessor for PegasusPersistenceContext();
  sub_100003650();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_100003664();
  v15 = v14 - v13;
  v16 = type metadata accessor for URL();
  sub_100003650();
  v18 = v17;
  __chkstk_darwin(v19);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v63 - v23;
  sub_100046184(&qword_100218958, &unk_10019CB10);
  swift_allocObject();

  sub_1000489D8();
  v70 = v25;
  v71 = v0;
  v26 = *(v0 + OBJC_IVAR____TtC7parsecd27DevicePersistentDataManager_fileManager);
  v76[0] = *(v71 + OBJC_IVAR____TtC7parsecd27DevicePersistentDataManager_fileManager);
  sub_100005180(0, &qword_1002157B8, NSFileManager_ptr);
  static PegasusConfigContainerURLProvider.containerURL<A>(using:)();
  (*(v18 + 16))(v21, v24, v16);
  v27 = v26;
  PegasusPersistenceContext.init(location:fileManager:)();
  static PegasusKeyValueStoreFactory.deviceInfoStore(context:name:requiresAuthentication:)();
  (*(v11 + 8))(v15, v9);
  (*(v18 + 8))(v24, v16);
  sub_100008C84(&v74, v76);
  sub_10000DE58();
  v29 = dispatch thunk of PegasusKeyValueStore.integer(for:)();
  LODWORD(v24) = v30;
  sub_10000DE58();
  v31 = dispatch thunk of PegasusKeyValueStore.string(for:)();
  v33 = v32;

  v36 = sub_1000BF264(v29, v24 & 1, v31, v33);
  v37 = v34;
  v38 = v35;
  v39 = v24 | (v36 != v29);
  if ((v39 & 1) != 0 || !v33 || (v34 == v31 ? (v40 = v33 == v35) : (v40 = 0), !v40 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    LODWORD(v67) = v39;
    v66 = v31;
    v45 = sub_100005180(0, &qword_100214810, OS_os_log_ptr);
    sub_1000042F4();
    v64 = sub_10000527C();
    sub_100003970(&v75, v73, v46, v47, v48, v49, &type metadata for String, v50, &type metadata for String, v64, v64, v64);

    v65 = v45;
    v51 = OS_os_log.init(subsystem:category:)();
    v52 = v68;
    OSSignpostID.init(log:)();
    static os_signpost_type_t.event.getter();
    sub_100008450();
    sub_1000070D0(v53, v51, "failedToRead", 12, 2, v52, "enableTelemetry=YES", 19, v61, v62);

    v54 = *(v72 + 8);
    v72 += 8;
    v63 = v54;
    v54(v52, v69);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&_mh_execute_header, v55, v56, "Failed to read data from store", v57, 2u);
      sub_1000036D4(v57);
    }

    if (v67)
    {
      sub_100007534(v76, v76[3]);
      dispatch thunk of PegasusKeyValueStore.setInteger(_:for:)();
    }

    if (v33)
    {
      if (v37 == v66 && v33 == v38)
      {
        goto LABEL_22;
      }

      v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v59)
      {
LABEL_23:
        sub_100046184(&unk_100217040, &qword_1001989F0);
        v60 = swift_allocObject();
        *(v60 + 16) = xmmword_100197F20;
        *(v60 + 56) = &type metadata for Int;
        *(v60 + 64) = &protocol witness table for Int;
        *(v60 + 32) = v36;
        sub_10000E384("enableTelemetry=YES d20=%{signpost.telemetry:number1,public}lu", 62, 2, v60);
        goto LABEL_24;
      }
    }

    sub_10000DE58();

    dispatch thunk of PegasusKeyValueStore.setString(_:for:)();
LABEL_22:

    goto LABEL_23;
  }

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "Persistent data read successfully", v43, 2u);
    sub_1000036D4(v43);
  }

  sub_100046184(&unk_100217040, &qword_1001989F0);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_100197F20;
  *(v44 + 56) = &type metadata for Int;
  *(v44 + 64) = &protocol witness table for Int;
  *(v44 + 32) = v29;
  sub_10000E384("enableTelemetry=YES d20=%{signpost.telemetry:number1,public}lu", 62, 2, v44);
LABEL_24:

  sub_100007378(v76);
  return v36;
}

uint64_t sub_1000B5BB8(uint64_t a1)
{
  sub_100046184(&unk_100217040, &qword_1001989F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100197F20;
  swift_errorRetain();
  sub_100046184(&qword_100216900, &unk_10019AE20);
  v2 = String.init<A>(describing:)();
  v4 = v3;
  *(v1 + 56) = &type metadata for String;
  *(v1 + 64) = sub_10000512C();
  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
  sub_10000E384("ActivityResult=%{signpost.description:attribute}s", 49, 2, v1);
}

uint64_t sub_1000B5C84()
{

  v1 = OBJC_IVAR____TtC7parsecd27DevicePersistentDataManager_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1000B5D20()
{
  sub_1000B5C84();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for DevicePersistentDataManager(uint64_t a1)
{
  result = qword_100218830;
  if (!qword_100218830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B5DCC(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

unint64_t sub_1000B5E88()
{
  result = qword_100218918;
  if (!qword_100218918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100218918);
  }

  return result;
}

unint64_t sub_1000B5EDC(uint64_t a1)
{
  *(a1 + 8) = sub_1000B5F0C();
  result = sub_1000B5F60();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000B5F0C()
{
  result = qword_100218938;
  if (!qword_100218938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100218938);
  }

  return result;
}

unint64_t sub_1000B5F60()
{
  result = qword_100218940;
  if (!qword_100218940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100218940);
  }

  return result;
}

unint64_t sub_1000B5FB8()
{
  result = qword_100218948;
  if (!qword_100218948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100218948);
  }

  return result;
}

unint64_t sub_1000B600C(uint64_t a1)
{
  result = sub_1000B6034();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000B6034()
{
  result = qword_100218950;
  if (!qword_100218950)
  {
    type metadata accessor for DevicePersistentDataManager(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100218950);
  }

  return result;
}

unint64_t sub_1000B608C(unint64_t result)
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

_BYTE *storeEnumTagSinglePayload for DevicePersistentDataManager.Activity(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

NSString sub_1000B620C()
{
  result = String._bridgeToObjectiveC()();
  qword_100232C78 = result;
  return result;
}

uint64_t static ObjcExceptionUtil.tryBlock<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a4;
  v34 = type metadata accessor for Optional();
  sub_100003650();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &aBlock[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &aBlock[-v13];
  sub_100006A98();
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = v14;
  v15[4] = a1;
  v15[5] = a2;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1000B6A98;
  *(v16 + 24) = v15;
  v32 = sub_10002827C;
  v33 = v16;
  sub_100003784();
  sub_100004314(COERCE_DOUBLE(1107296256));
  v30 = v17;
  v31 = &unk_1001FAA20;
  v18 = _Block_copy(aBlock);

  v19 = v18[2];
  isEscapingClosureAtFileLocation = v18;
  v19();
  v21 = 0;
  while (1)
  {

    v22 = v21;
    _Block_release(isEscapingClosureAtFileLocation);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_9;
    }

    if (v22)
    {
      v24 = v22;
      sub_1000119A0();
      sub_1000572E8();
      swift_allocError();
      *v25 = v22;
      *(v25 + 8) = 0;
      *(v25 + 16) = 0;
      swift_willThrow();

      (*(v8 + 8))(v14, v34);
    }

    v27 = v34;
    (*(v8 + 16))(v11, v14, v34);
    v23 = sub_100008D0C(v11, 1, a3);
    if (v23 != 1)
    {
      break;
    }

LABEL_9:
    __break(1u);
    v21 = objc_begin_catch(v23);
    objc_end_catch();
  }

  (*(*(a3 - 1) + 32))(v28, v11, a3);
  (*(v8 + 8))(v14, v27);
}

{
  v28 = a4;
  v30 = type metadata accessor for Optional();
  sub_100003650();
  v8 = v7;
  __chkstk_darwin(v9);
  v29 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  v36 = 0;
  sub_100006A98();
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = v13;
  v14[4] = a1;
  v14[5] = a2;
  v14[6] = &v36;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1000B6AA4;
  *(v15 + 24) = v14;
  v34 = sub_1000B6AC4;
  v35 = v15;
  sub_100003784();
  sub_100004314(COERCE_DOUBLE(1107296256));
  v32 = v16;
  v33 = &unk_1001FAA98;
  v17 = _Block_copy(aBlock);

  v18 = v17[2];
  isEscapingClosureAtFileLocation = v17;
  v18();
  v20 = 0;
  while (1)
  {

    v21 = v20;
    _Block_release(isEscapingClosureAtFileLocation);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_12;
    }

    if (v21)
    {
      v23 = v21;
      sub_1000119A0();
      sub_1000572E8();
      swift_allocError();
      *v24 = v21;
      *(v24 + 8) = 0;
      *(v24 + 16) = 0;
      swift_willThrow();

LABEL_7:
      (*(v8 + 8))(v13, v30);
      goto LABEL_8;
    }

    if (v36)
    {
      swift_willThrow();
      swift_errorRetain();
      goto LABEL_7;
    }

    v26 = v29;
    isEscapingClosureAtFileLocation = v30;
    (*(v8 + 16))(v29, v13, v30);
    v22 = sub_100008D0C(v26, 1, a3);
    if (v22 != 1)
    {
      break;
    }

LABEL_12:
    __break(1u);
    v20 = objc_begin_catch(v22);
    objc_end_catch();
  }

  (*(*(a3 - 1) + 32))(v28, v26, a3);
  (*(v8 + 8))(v13, isEscapingClosureAtFileLocation);
LABEL_8:
}

uint64_t sub_1000B6878(uint64_t a1, void (*a2)(double), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v14 - v11;
  a2(v10);
  sub_1000051C0(v12, 0, 1, a5);
  return (*(v9 + 40))(a1, v12, v8);
}

uint64_t sub_1000B699C(uint64_t a1, void (*a2)(double), uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v13 - v10;
  a2(v9);
  sub_1000051C0(v11, 0, 1, a4);
  return (*(v8 + 40))(a1, v11, v7);
}

uint64_t sub_1000B6AC8(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  sub_100046184(&qword_100218A40, &unk_10019CFF0);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;

  *(v1 + 24) = v3;
  return v1;
}

void sub_1000B6B3C()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_1000BA6E8();
  os_unfair_lock_unlock(v1 + 4);
}

void sub_1000B6B9C()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_1000BA210();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1000B6C04()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_1000BA310(v2, &v4);
  os_unfair_lock_unlock(v1 + 4);
  return v4;
}

uint64_t sub_1000B6C98()
{
  sub_100046184(&qword_100218A48, &qword_10019D000);
  swift_allocObject();
  result = sub_10010CFAC(&_swiftEmptyDictionarySingleton);
  qword_100218960 = result;
  return result;
}

uint64_t sub_1000B6CEC()
{
  sub_100046184(&qword_1002175A0, &qword_10019BB60);
  swift_allocObject();
  result = sub_1000993B0(0);
  qword_100232C80 = result;
  return result;
}

uint64_t sub_1000B6D3C()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_100005180(0, &qword_1002147C0, OS_dispatch_queue_ptr);
  static DispatchQoS.userInteractive.getter();
  v7[1] = 0;
  sub_1000152E8(&qword_100216910, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  dispatch thunk of OptionSet.init(rawValue:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_100232C88 = result;
  return result;
}

uint64_t sub_1000B6F4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v42 = a7;
  v39 = a4;
  v40 = a5;
  v37 = a3;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100003650();
  v46 = v9;
  v47 = v8;
  __chkstk_darwin(v8);
  v45 = &v36[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for DispatchQoS();
  sub_100003650();
  v43 = v12;
  v44 = v11;
  __chkstk_darwin(v11);
  v14 = &v36[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for URL();
  sub_100003650();
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v20);
  v21 = &v36[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100214190 != -1)
  {
    swift_once();
  }

  v38 = qword_100232C88;
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v17 + 16))(&v36[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v15);
  v23 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v24 = v23 + v19;
  v25 = swift_allocObject();
  *(v25 + 16) = v22;
  (*(v17 + 32))(v25 + v23, v21, v15);
  *(v25 + v24) = v37 & 1;
  v26 = v25 + (v24 & 0xFFFFFFFFFFFFFFF8);
  v28 = v39;
  v27 = v40;
  *(v26 + 8) = v39;
  *(v26 + 16) = v27;
  v29 = (v25 + (((v24 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8));
  v31 = v41;
  v30 = v42;
  *v29 = v41;
  v29[1] = v30;
  v53 = sub_1000BA108;
  v54 = v25;
  sub_100003784();
  v50 = 1107296256;
  v51 = sub_10000D50C;
  v52 = &unk_1001FAB30;
  v32 = _Block_copy(aBlock);

  sub_10000D1D4(v28, v27);
  sub_10000D1D4(v31, v30);
  static DispatchQoS.unspecified.getter();
  v48 = _swiftEmptyArrayStorage;
  sub_1000152E8(&qword_1002147D0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100046184(&unk_100217030, &unk_1001989C0);
  sub_100095D74(&qword_1002147E0, &unk_100217030, &unk_1001989C0, &protocol conformance descriptor for [A]);
  v33 = v45;
  v34 = v47;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v32);
  (*(v46 + 8))(v33, v34);
  (*(v43 + 8))(v14, v44);
}

void sub_1000B7368(uint64_t a1, uint64_t a2, int a3, void (*a4)(_BYTE *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v130 = a6;
  v131 = a7;
  v125 = a5;
  v129 = a4;
  v128 = a3;
  v8 = type metadata accessor for URLRequest();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v135 = &v116[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v126 = &v116[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v116[-v15];
  v17 = type metadata accessor for Date();
  v134 = *(v17 - 8);
  __chkstk_darwin(v17);
  v133 = &v116[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_100046184(&qword_100217050, &qword_100199180);
  __chkstk_darwin(v19 - 8);
  v124 = &v116[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v127 = &v116[-v22];
  __chkstk_darwin(v23);
  v25 = &v116[-v24];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    v123 = a2;
    v28 = URL.host(percentEncoded:)(1);
    countAndFlagsBits = v28.value._countAndFlagsBits;
    object = v28.value._object;
    if (!v28.value._object)
    {
      if (qword_100214120 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_10000964C(v32, qword_100232B80);
      v33 = v27;
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        aBlock[0] = v37;
        *v36 = 136315138;
        v38 = sub_1000B822C();
        v40 = sub_100009684(v38, v39, aBlock);

        *(v36 + 4) = v40;
        v41 = "Throttling warmup for session: %s couldn't infer hostname";
LABEL_23:
        v53 = v35;
        v54 = v34;
        v55 = v36;
        v56 = 12;
        goto LABEL_24;
      }

      goto LABEL_25;
    }

    v121 = v9;
    if (qword_100214180 != -1)
    {
      swift_once();
    }

    v29 = sub_10001E384();

    sub_1000BCE8C(countAndFlagsBits, object, v29, v25);

    v30 = sub_100008D0C(v25, 1, v17);
    v31 = v12;
    v122 = v17;
    if (v30)
    {
      sub_10000B298(v25, &qword_100217050, &qword_100199180);
    }

    else
    {
      v43 = v133;
      v42 = v134;
      (*(v134 + 16))(v133, v25, v17);
      sub_10000B298(v25, &qword_100217050, &qword_100199180);
      Date.timeIntervalSinceNow.getter();
      v45 = v44;
      (*(v42 + 8))(v43, v17);
      v46 = fabs(v45);
      if (v46 < 180.0)
      {

        if (qword_100214120 != -1)
        {
          swift_once();
        }

        v47 = type metadata accessor for Logger();
        sub_10000964C(v47, qword_100232B80);
        v33 = v27;
        v34 = Logger.logObject.getter();
        v48 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v34, v48))
        {
          v49 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          aBlock[0] = v37;
          *v49 = 136315394;
          v50 = sub_1000B822C();
          v52 = sub_100009684(v50, v51, aBlock);

          *(v49 + 4) = v52;
          *(v49 + 12) = 2048;
          *(v49 + 14) = v46;
          v41 = "Throttling warmup for session: %s attempted %f seconds ago";
          v53 = v48;
          v54 = v34;
          v55 = v49;
          v56 = 22;
LABEL_24:
          _os_log_impl(&_mh_execute_header, v54, v53, v41, v55, v56);
          sub_100007378(v37);

          return;
        }

LABEL_25:

        return;
      }
    }

    if (qword_100214188 != -1)
    {
      swift_once();
    }

    v57 = qword_100232C80;

    Lock.lock()();
    swift_beginAccess();
    if (*(v57 + 24))
    {
      Lock.unlock()();

      if (qword_100214120 != -1)
      {
        swift_once();
      }

      v58 = type metadata accessor for Logger();
      sub_10000964C(v58, qword_100232B80);
      v33 = v27;
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        aBlock[0] = v37;
        *v36 = 136315138;
        v59 = sub_1000B822C();
        v61 = sub_100009684(v59, v60, aBlock);

        *(v36 + 4) = v61;
        v41 = "Throttling warmup for session: %s: already in progress";
        goto LABEL_23;
      }

      goto LABEL_25;
    }

    v120 = v8;
    *(v57 + 24) = 1;
    Lock.unlock()();

    if (qword_100214120 != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    v63 = sub_10000964C(v62, qword_100232B80);
    v64 = *(v12 + 16);
    v65 = v123;
    v64(v16, v123, v11);
    v66 = v27;
    v119 = v63;
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.debug.getter();

    v69 = os_log_type_enabled(v67, v68);
    v118 = v66;
    if (v69)
    {
      v70 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v70 = 136315394;
      v117 = v68;
      v71 = sub_1000B822C();
      v73 = sub_100009684(v71, v72, aBlock);

      *(v70 + 4) = v73;
      *(v70 + 12) = 2080;
      v74 = URL.absoluteString.getter();
      v76 = v75;
      (*(v31 + 8))(v16, v11);
      v77 = sub_100009684(v74, v76, aBlock);

      *(v70 + 14) = v77;
      _os_log_impl(&_mh_execute_header, v67, v117, "Warming up session %s to %s", v70, 0x16u);
      swift_arrayDestroy();

      v65 = v123;
    }

    else
    {

      (*(v31 + 8))(v16, v11);
    }

    v78 = v129;
    v64(v126, v65, v11);
    v79 = v135;
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    URLRequest.cachePolicy.setter();
    URLRequest.assumesHTTP3Capable.setter();
    if (v78)
    {
      v80 = v125;

      v78(v79);
      sub_100010300(v78, v80);
    }

    sub_100046184(&qword_100218A30, &unk_10019CFE0);
    swift_allocObject();
    v81 = sub_1000B6AC8(0);
    isa = URLRequest._bridgeToObjectiveC()().super.isa;
    v83 = swift_allocObject();
    v84 = v118;
    swift_unknownObjectWeakInit();
    v85 = swift_allocObject();
    v85[2] = v81;
    v85[3] = v83;
    v87 = v130;
    v86 = v131;
    v85[4] = v130;
    v85[5] = v86;
    aBlock[4] = sub_1000BA1E4;
    aBlock[5] = v85;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000B8490;
    aBlock[3] = &unk_1001FAB80;
    v88 = _Block_copy(aBlock);

    sub_10000D1D4(v87, v86);

    v89 = [v84 dataTaskWithRequest:isa completionHandler:v88];
    _Block_release(v88);

    v90 = v89;
    sub_1000B6B9C();

    v91 = v127;
    Date.init()();
    v92 = v122;
    sub_1000051C0(v91, 0, 1, v122);

    v93 = sub_10001E384();
    if (sub_100008D0C(v91, 1, v92) == 1)
    {
      sub_10000B298(v91, &qword_100217050, &qword_100199180);
      v94 = sub_100005B74(countAndFlagsBits, object);
      if (v95)
      {
        v96 = v94;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v93;
        v98 = *(v93 + 24);
        sub_100046184(&qword_100218A38, &unk_10019D8F0);
        v99 = isUniquelyReferenced_nonNull_native;
        v79 = v135;
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v99, v98);
        v100 = aBlock[0];

        v101 = v124;
        (*(v134 + 32))(v124, *(v100 + 56) + *(v134 + 72) * v96, v122);
        _NativeDictionary._delete(at:)();
        v102 = 0;
      }

      else
      {
        v102 = 1;
        v101 = v124;
      }

      sub_1000051C0(v101, v102, 1, v122);

      sub_10000B298(v101, &qword_100217050, &qword_100199180);
    }

    else
    {
      v103 = v133;
      (*(v134 + 32))(v133, v91, v122);
      v104 = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v93;
      sub_1000BDED0(v103, countAndFlagsBits, object, v104);
    }

    sub_100087D10();

    v105 = v84;
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      aBlock[0] = v109;
      *v108 = 136315138;
      v110 = sub_1000B822C();
      v112 = sub_100009684(v110, v111, aBlock);

      *(v108 + 4) = v112;
      _os_log_impl(&_mh_execute_header, v106, v107, "Kicked off connection warmup for session %s", v108, 0xCu);
      sub_100007378(v109);

      v79 = v135;
    }

    v113 = v120;
    v114 = v90;
    *&v115 = NSURLSessionTaskPriorityHigh;
    [v114 setPriority:v115];
    [v114 set_preconnect:1];

    [v114 resume];

    (*(v121 + 8))(v79, v113);
  }
}

uint64_t sub_1000B822C()
{
  result = sub_1000BA238(v0);
  if (!v2)
  {
    return 0x6E776F6E6B6E75;
  }

  return result;
}

void sub_1000B8268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t), uint64_t a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (qword_100214120 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000964C(v12, qword_100232B80);
    v13 = v11;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136315138;
      v18 = sub_1000B822C();
      v20 = sub_100009684(v18, v19, &v23);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "warmup attempt complete for session %s", v16, 0xCu);
      sub_100007378(v17);
    }

    if (a7)
    {

      v21 = sub_1000B6C04();
      if (v21)
      {
        v22 = v21;
        a7(v21);
      }

      sub_100010300(a7, a8);
    }

    if (qword_100214188 != -1)
    {
      swift_once();
    }

    sub_1000FEDAC(0);
  }

  sub_1000B6B3C();
}

uint64_t sub_1000B8490(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_100014A2C(v6, v10);
}

void sub_1000B8558(uint64_t a1, void *a2)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v8[4] = sub_1000BA548;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1000273B8;
  v8[3] = &unk_1001FAC98;
  v6 = _Block_copy(v8);
  swift_errorRetain();
  v7 = a2;

  AnalyticsSendEventLazy();
  _Block_release(v6);
}

uint64_t sub_1000B8660(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v49 - v8;
  v10 = _convertErrorToNSError(_:)();
  v11 = [v10 domain];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
  {
    goto LABEL_16;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v17)
  {
LABEL_17:
    v38 = 1;
    goto LABEL_18;
  }

  v18 = _convertErrorToNSError(_:)();
  v19 = [v18 domain];

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
  {
LABEL_16:

    goto LABEL_17;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v25)
  {
    goto LABEL_17;
  }

  if (qword_1002140C0 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_10000964C(v26, qword_100232AB0);
  swift_errorRetain();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v50 = v29;
    v52 = swift_slowAlloc();
    v53 = v52;
    *v29 = 136446210;
    v30 = _convertErrorToNSError(_:)();
    v51 = v28;
    v31 = v30;
    v32 = [v30 domain];

    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v36 = sub_100009684(v33, v35, &v53);

    v37 = v50;
    *(v50 + 1) = v36;
    _os_log_impl(&_mh_execute_header, v27, v51, "skipping error code for unexpected networkFailure domain %{public}s", v37, 0xCu);
    sub_100007378(v52);
  }

  v38 = 0;
LABEL_18:
  v39 = sub_10007B0D8(a2);
  sub_1000B8C6C(v39, v40);
  v41 = [a2 connectStartDate];
  if (v41)
  {
    v42 = v41;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v43 = [a2 connectEndDate];
    if (v43)
    {
      v44 = v43;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      Date.timeIntervalSince(_:)();
      v45 = *(v4 + 8);
      v45(v6, v3);
      v45(v9, v3);
    }

    else
    {
      (*(v4 + 8))(v9, v3);
    }
  }

  sub_100046184(&qword_100219540, &unk_1001A8690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10019CF80;
  *(inited + 32) = 0x4474736575716572;
  *(inited + 40) = 0xEF6E6F6974617275;
  *(inited + 48) = Double._bridgeToObjectiveC()();
  *(inited + 56) = 0x72616C756C6C6563;
  *(inited + 64) = 0xE800000000000000;
  [a2 isCellular];
  *(inited + 72) = Bool._bridgeToObjectiveC()();
  strcpy((inited + 80), "cfnErrorCode");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  if (v38)
  {
    v47 = _convertErrorToNSError(_:)();
    [v47 code];
  }

  *(inited + 96) = Int._bridgeToObjectiveC()();
  *(inited + 104) = 0x74617069746C756DLL;
  *(inited + 112) = 0xE900000000000068;
  [a2 isMultipath];
  *(inited + 120) = Bool._bridgeToObjectiveC()();
  *(inited + 128) = 0x6574736973726570;
  *(inited + 136) = 0xEA0000000000746ELL;
  [a2 isReusedConnection];
  *(inited + 144) = Bool._bridgeToObjectiveC()();
  strcpy((inited + 152), "protocolName");
  *(inited + 165) = 0;
  *(inited + 166) = -5120;
  *(inited + 168) = Int._bridgeToObjectiveC()();
  sub_100005180(0, &qword_10021A4C0, NSObject_ptr);
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_1000B8C6C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a1 == 0x312E312F70747468 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else
  {
    v6 = a1 == 12904 && a2 == 0xE200000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 2;
    }

    else if (a1 == 13160 && a2 == 0xE200000000000000)
    {

      return 3;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 3;
      }

      else
      {
        return 0;
      }
    }
  }
}

uint64_t sub_1000B8D84(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    _StringGuts.grow(_:)(51);
    v5._object = 0x80000001001B0090;
    v5._countAndFlagsBits = 0xD000000000000016;
    String.append(_:)(v5);
    [a1 code];
    v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v6);

    v7._countAndFlagsBits = 0x3A6E69616D6F6420;
    v7._object = 0xE900000000000020;
    String.append(_:)(v7);
    v8 = [a1 domain];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12._countAndFlagsBits = v9;
    v12._object = v11;
    String.append(_:)(v12);

    v13._countAndFlagsBits = 0x7069726373656420;
    v13._object = 0xEE00203A6E6F6974;
    String.append(_:)(v13);
    v14 = [a1 description];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    sub_1000BA4F0(a1, a2, 1);
    v18._countAndFlagsBits = v15;
    v18._object = v17;
    String.append(_:)(v18);

    return 0;
  }

  else
  {

    sub_100046184(&qword_1002181F0, &qword_10019C610);
    return String.init<A>(describing:)();
  }
}

id sub_1000B8F60(uint64_t a1, char a2, char a3)
{
  v38 = type metadata accessor for URLRequest();
  sub_100003650();
  v7 = v6;
  __chkstk_darwin(v8);
  v36 = v9;
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_100046184(&qword_100218A50, &qword_10019D008);
  sub_100003650();
  v39 = v11;
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  v42 = sub_100046184(&qword_100218A58, &qword_10019D010);
  sub_100003650();
  v40 = v15;
  __chkstk_darwin(v16);
  v18 = &v35 - v17;
  _s20PegasusResponseStateCMa();
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = _swiftEmptyArrayStorage;
  *(v19 + 32) = 0;
  *(v19 + 48) = 0;
  *(v19 + 56) = 0;
  *(v19 + 40) = 0;
  *(v19 + 64) = -1;
  v37 = a1;
  isa = URLRequest._bridgeToObjectiveC()().super.isa;
  v47 = sub_1000BA34C;
  v48 = v19;
  sub_100003784();
  v44 = 1107296256;
  v45 = sub_1000B8490;
  v46 = &unk_1001FABA8;
  v21 = _Block_copy(aBlock);

  v22 = [v35 dataTaskWithRequest:isa completionHandler:v21];
  _Block_release(v21);

  LODWORD(v23) = **(&off_1001FADA0 + a2);
  [v22 setPriority:v23];
  if (a3)
  {
    v24 = v22;
    sub_1000B986C(v19, v24);
  }

  v25 = swift_allocObject();
  *(v25 + 16) = v19;
  *(v25 + 24) = v22;

  v26 = v22;
  sub_100046184(&qword_100218A60, &qword_10019D018);
  sub_100095D74(&qword_100218A68, &qword_100218A60, &qword_10019D018, &protocol conformance descriptor for Future<A, B>);
  Deferred.init(createPublisher:)();
  v27 = v38;
  (*(v7 + 16))(v10, v37, v38);
  v28 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v29 = (v36 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v7 + 32))(v30 + v28, v10, v27);
  *(v30 + v29) = v26;
  v31 = v26;
  sub_100046184(&qword_100216900, &unk_10019AE20);
  sub_100095D74(&qword_100218A70, &qword_100218A50, &qword_10019D008, &protocol conformance descriptor for Deferred<A>);
  v32 = v41;
  Publisher.mapError<A>(_:)();

  (*(v39 + 8))(v14, v32);
  sub_100095D74(&qword_100218A78, &qword_100218A58, &qword_10019D010, &protocol conformance descriptor for Publishers.MapError<A, B>);
  v33 = v42;
  Publisher.eraseToAnyPublisher()();

  (*(v40 + 8))(v18, v33);
  return v31;
}

void sub_1000B945C(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  if (a4)
  {
    swift_errorRetain();
    v4 = _convertErrorToNSError(_:)();
    sub_1000BA5D4();
    v5 = swift_allocError();
    *v6 = v4;
    *(v6 + 8) = 0;
    *(v6 + 16) = 1;
    sub_1000B9628(v5, 0, 0, 1);
  }

  else if (a3 && (objc_opt_self(), (v10 = swift_dynamicCastObjCClass()) != 0))
  {
    v11 = v10;
    v18 = a3;
    sub_100062FBC(a1, a2);
    sub_1000B9628(v11, a1, a2, 0);

    sub_100014A2C(a1, a2);
  }

  else
  {
    v12 = a3;
    sub_100046184(&qword_100218A80, &qword_10019D020);
    v13 = String.init<A>(describing:)();
    v15 = v14;
    sub_1000BA5D4();
    v16 = swift_allocError();
    *v17 = v13;
    *(v17 + 8) = v15;
    *(v17 + 16) = 0;
    sub_1000B9628(v16, 0, 0, 1);
  }
}

uint64_t sub_1000B9628(void *a1, uint64_t a2, unint64_t a3, char a4)
{
  os_unfair_lock_lock((v4 + 32));
  sub_1000BA484(*(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64));
  *(v4 + 40) = a1;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  v9 = a4 & 1;
  *(v4 + 64) = v9;
  swift_beginAccess();
  v10 = *(v4 + 24);
  *(v4 + 24) = _swiftEmptyArrayStorage;
  sub_1000BA430(a1, a2, a3, v9);
  os_unfair_lock_unlock((v4 + 32));
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = v10 + 40;
    do
    {
      v13 = *(v12 - 8);
      v15[0] = a1;
      v15[1] = a2;
      v15[2] = a3;
      v16 = v9;

      v13(v15);

      v12 += 16;
      --v11;
    }

    while (v11);
  }
}

void sub_1000B9730(void *result, uint64_t a2, unint64_t a3, char a4, void *a5)
{
  if (a4)
  {
    sub_1000BA430(result, a2, a3, 1);
    swift_errorRetain();
    sub_100046184(&qword_100216900, &unk_10019AE20);
    if (swift_dynamicCast())
    {
      if (v13 == 1)
      {
        v9 = v11;
        v10 = [a5 _incompleteCurrentTaskTransactionMetrics];
        sub_1000B8558(v9, v10);
        sub_1000BA49C(result, a2, a3, 1);

        sub_1000BA4F0(v11, v12, 1);
        sub_1000BA4F0(v11, v12, 1);
        return;
      }

      sub_1000BA4F0(v11, v12, 0);
    }

    sub_1000BA49C(result, a2, a3, 1);
  }
}

uint64_t sub_1000B986C(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = a2;
  os_unfair_lock_lock((a1 + 32));
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  if (v9 == 255)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1000BA408;
    *(v12 + 24) = v4;
    swift_beginAccess();

    sub_100106834();
    v13 = *(*(a1 + 24) + 16);
    sub_100110744(v13);
    v14 = *(a1 + 24);
    *(v14 + 16) = v13 + 1;
    v15 = v14 + 16 * v13;
    *(v15 + 32) = sub_1000BA414;
    *(v15 + 40) = v12;
    *(a1 + 24) = v14;
    swift_endAccess();
    sub_1000BA418(v7, v6, v8, 255);
    os_unfair_lock_unlock((a1 + 32));
LABEL_13:
  }

  sub_1000BA418(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  os_unfair_lock_unlock((a1 + 32));
  if (v9)
  {
    swift_errorRetain();
    swift_errorRetain();
    sub_100046184(&qword_100216900, &unk_10019AE20);
    if (swift_dynamicCast())
    {
      if (v19 == 1)
      {
        v10 = v17;
        v11 = [v5 _incompleteCurrentTaskTransactionMetrics];
        sub_1000B8558(v10, v11);
        sub_1000BA484(v7, v6, v8, v9);

        sub_1000BA4F0(v17, v18, 1);
        sub_1000BA4F0(v17, v18, 1);
LABEL_12:
        sub_1000BA484(v7, v6, v8, v9);
        goto LABEL_13;
      }

      sub_1000BA4F0(v17, v18, 0);
    }

    sub_1000BA484(v7, v6, v8, v9);
    goto LABEL_12;
  }

  sub_1000BA484(v7, v6, v8, v9);
}

uint64_t sub_1000B9B20(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  os_unfair_lock_lock((a1 + 32));
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  if (v10 == 255)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1000BA558;
    *(v11 + 24) = v6;
    swift_beginAccess();

    sub_100106834();
    v12 = *(*(a1 + 24) + 16);
    sub_100110744(v12);
    v13 = *(a1 + 24);
    *(v13 + 16) = v12 + 1;
    v14 = v13 + 16 * v12;
    *(v14 + 32) = sub_1000BA6E4;
    *(v14 + 40) = v11;
    *(a1 + 24) = v13;
    swift_endAccess();
    sub_1000BA418(v8, v7, v9, 255);
    os_unfair_lock_unlock((a1 + 32));
  }

  else
  {
    sub_1000BA418(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
    os_unfair_lock_unlock((a1 + 32));
    v16[0] = v8;
    v16[1] = v7;
    v16[2] = v9;
    v17 = v10 & 1;
    a2(v16);
    sub_1000BA484(v8, v7, v9, v10);
  }
}

id sub_1000B9CC4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  sub_100046184(&qword_100218A60, &qword_10019D018);
  swift_allocObject();

  result = Future.init(_:)();
  v7 = result;
  v8 = 0;
  atomic_compare_exchange_strong((a1 + 16), &v8, 1u);
  if (!v8)
  {
    result = [a2 resume];
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1000B9D6C(void (*a1)(void *), uint64_t a2, uint64_t a3)
{

  return sub_1000B9B20(a3, a1, a2);
}

uint64_t sub_1000B9DC0@<X0>(uint64_t *a1@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = URLRequest.allHTTPHeaderFields.getter();
  if (v6 && (v7 = sub_1000BCE30(0xD000000000000011, 0x80000001001B0050, v6), v9 = v8, , v9))
  {

    _StringGuts.grow(_:)(18);

    v26[0] = 0xD000000000000010;
    v26[1] = 0x80000001001B0070;
    v10._countAndFlagsBits = v7;
    v10._object = v9;
    String.append(_:)(v10);
    swift_bridgeObjectRelease_n();
    v12 = 0xD000000000000010;
    v11 = 0x80000001001B0070;
  }

  else
  {

    v12 = 0;
    v11 = 0xE000000000000000;
  }

  if (qword_100214098 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000964C(v13, qword_100232A38);
  v14 = a2;

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v25 = a3;
    v17 = swift_slowAlloc();
    v26[0] = swift_slowAlloc();
    *v17 = 136315394;
    v18 = [v14 description];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = sub_100009684(v19, v21, v26);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    v23 = sub_100009684(v12, v11, v26);

    *(v17 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "Download for %s %s failed", v17, 0x16u);
    swift_arrayDestroy();

    a3 = v25;
  }

  else
  {
  }

  *a3 = v5;

  return swift_errorRetain();
}

uint64_t sub_1000BA078()
{

  sub_10000B298(v0 + 40, &qword_100218A28, &qword_10019CFD8);
  return v0;
}

uint64_t sub_1000BA0B0()
{
  sub_1000BA078();

  return _swift_deallocClassInstance(v0, 65, 7);
}

void sub_1000BA108()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = ((v3 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + v3);
  v7 = v0 + (v3 & 0xFFFFFFFFFFFFFFF8);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = *(v0 + v4);
  v11 = *(v0 + v4 + 8);

  sub_1000B7368(v5, v0 + v2, v6, v8, v9, v10, v11);
}

void *sub_1000BA1AC(uint64_t a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = (a2)(&v4, a1);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1000BA238(void *a1)
{
  v1 = [a1 sessionDescription];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000BA29C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000B6C6C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_1000BA2E4@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, void *a3@<X8>)
{
  result = sub_1000BA1AC(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1000BA35C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for URLRequest() - 8);
  v6 = *(v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000B9DC0(a1, v6, a2);
}

void *sub_1000BA418(void *result, uint64_t a2, unint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1000BA430(result, a2, a3, a4 & 1);
  }

  return result;
}

uint64_t sub_1000BA430(void *a1, uint64_t a2, unint64_t a3, char a4)
{
  if (a4)
  {

    return swift_errorRetain();
  }

  else
  {
    v8 = a1;

    return sub_100062FBC(a2, a3);
  }
}

void *sub_1000BA484(void *result, uint64_t a2, unint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1000BA49C(result, a2, a3, a4 & 1);
  }

  return result;
}

uint64_t sub_1000BA49C(void *a1, uint64_t a2, unint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {

    return sub_100014A2C(a2, a3);
  }
}

void sub_1000BA4F0(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000BA500(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 32, 7);
}

uint64_t sub_1000BA558(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(v4 + 16);
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3;
  v8 = a4 & 1;
  return v5(v7);
}

unint64_t sub_1000BA5D4()
{
  result = qword_100218A88;
  if (!qword_100218A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100218A88);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TagPathComponent(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TagPathComponent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void sub_1000BA728(uint64_t a1)
{
  type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    sub_1000BA7AC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000BA7AC(uint64_t a1)
{
  if (!qword_100218AF8)
  {
    sub_1000BA804();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100218AF8);
    }
  }
}

unint64_t sub_1000BA804()
{
  result = qword_100218B00;
  if (!qword_100218B00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100218B00);
  }

  return result;
}

uint64_t sub_1000BA848(uint64_t a1, uint64_t a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v2 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10000DE78(v2, v6, v5);
  }

  return v8 & 1;
}

uint64_t sub_1000BA8C0(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x64757469676E6F6CLL;
  }

  else
  {
    v3 = 0x656475746974616CLL;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  if (a2)
  {
    v5 = 0x64757469676E6F6CLL;
  }

  else
  {
    v5 = 0x656475746974616CLL;
  }

  if (a2)
  {
    v6 = 0xE900000000000065;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10000DE78(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_1000BA97C(char a1, char a2)
{
  v3 = PegasusClientName.rawValue.getter(a1);
  v5 = v4;
  v6 = PegasusClientName.rawValue.getter(a2);
  if (v3 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_10000DE78(v3, v7, v6);
  }

  return v9 & 1;
}

uint64_t sub_1000BA9F4(char a1, char a2)
{
  if (qword_10019D7A8[a1] == qword_10019D7A8[a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1000BAA5C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 1852141679;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1852141679;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v5 = 0x6465736F6C63;
      break;
    case 2:
      v5 = 0x69737365636F7270;
      v3 = 0xEA0000000000676ELL;
      break;
    case 3:
      v3 = 0xE800000000000000;
      v5 = 0x646564616F6C7075;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE600000000000000;
      v2 = 0x6465736F6C63;
      break;
    case 2:
      v2 = 0x69737365636F7270;
      v6 = 0xEA0000000000676ELL;
      break;
    case 3:
      v6 = 0xE800000000000000;
      v2 = 0x646564616F6C7075;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10000DE78(v5, a2, v2);
  }

  return v8 & 1;
}

void *sub_1000BAB98(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v33 = _swiftEmptyArrayStorage;
    sub_1000EC9A4(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 64);
    do
    {
      v26 = v1;
      v5 = *(v4 - 4);
      v6 = *(v4 - 3);
      v7 = *(v4 - 2);
      v8 = *(v4 - 1);
      v9 = *v4;
      v31 = &type metadata for AppDistEntry;
      v32 = &off_1001F77C0;
      v10 = swift_allocObject();
      v30[0] = v10;
      v10[2] = v5;
      v10[3] = v6;
      v10[4] = v7;
      v10[5] = v8;
      v10[6] = v9;
      v33 = v2;
      v12 = v2[2];
      v11 = v2[3];

      v13 = &type metadata for AppDistEntry;
      if (v12 >= v11 >> 1)
      {
        sub_1000EC9A4(v11 > 1, v12 + 1, 1);
        v13 = v31;
        v2 = v33;
      }

      v4 += 5;
      v14 = sub_100026EEC(v30, v13);
      v15 = __chkstk_darwin(v14);
      v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 16))(v17, v15);
      v19 = *v17;
      v24 = *(v17 + 1);
      v25 = v19;
      v20 = *(v17 + 4);
      v28 = &type metadata for AppDistEntry;
      v29 = &off_1001F77C0;
      v21 = swift_allocObject();
      *&v27 = v21;
      v22 = v24;
      *(v21 + 16) = v25;
      *(v21 + 32) = v22;
      *(v21 + 48) = v20;
      v2[2] = v12 + 1;
      sub_100008C84(&v27, &v2[5 * v12 + 4]);
      sub_100007378(v30);
      v1 = v26 - 1;
    }

    while (v26 != 1);
  }

  return v2;
}

uint64_t sub_1000BADDC(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  v5 = sub_10004229C(a1);
  v6 = sub_10004229C(*v2);
  v7 = __OFADD__(v6, v5);
  result = v6 + v5;
  if (v7)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1000BC3D4(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v12 < 1)
  {
LABEL_6:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1000BAE90(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1000BC358(result, 1, sub_10006CE60);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

Swift::Void __swiftcall _CPSearchResultForFeedback.redactSensitive()()
{
  v1 = [v0 type];
  if (v1 != 1)
  {
    v2 = sub_1000066E8(v1, "setUserInput:");
    v3 = sub_1000066E8(v2, "setCompletedQuery:");
    v4 = sub_1000066E8(v3, "setIntendedQuery:");
    sub_1000066E8(v4, "setPunchout:");
    sub_1000BB05C(_CPCardSectionForFeedback.redactSensitive());
  }
}

Swift::Void __swiftcall _CPSearchResultForFeedback.redactUnused()()
{
  if ([v0 type] != 1)
  {
    sub_1000BB05C(_CPCardSectionForFeedback.redactUnused());
  }
}

void sub_1000BB05C(void (*a1)(void))
{
  v7 = v1;
  v8 = [v1 card];
  if (v8 && (v9 = sub_1000BC534(v8, &selRef_cardSections, &qword_100218B90, _CPCardSectionForFeedback_ptr)) != 0)
  {
    v10 = v9;
    sub_10004229C(v9);
    sub_10000EBCC();
    while (1)
    {
      if (v2 == v3)
      {

        goto LABEL_12;
      }

      if (v4)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v5 + 16))
        {
          goto LABEL_38;
        }

        v11 = *(v10 + 8 * v3 + 32);
      }

      v12 = v11;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      a1();

      ++v3;
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  else
  {
LABEL_12:
    v13 = [v7 inlineCard];
    if (v13)
    {
      v14 = sub_1000BC534(v13, &selRef_cardSections, &qword_100218B90, _CPCardSectionForFeedback_ptr);
      if (v14)
      {
        v15 = v14;
        sub_10004229C(v14);
        sub_10000EBCC();
        while (v2 != v3)
        {
          if (v4)
          {
            v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v3 >= *(v5 + 16))
            {
              goto LABEL_40;
            }

            v16 = *(v15 + 8 * v3 + 32);
          }

          v17 = v16;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_39;
          }

          a1();

          ++v3;
        }
      }
    }

    v18 = [v7 compactCard];
    if (v18)
    {
      v19 = sub_1000BC534(v18, &selRef_cardSections, &qword_100218B90, _CPCardSectionForFeedback_ptr);
      if (v19)
      {
        v20 = v19;
        v21 = sub_10004229C(v19);
        for (i = 0; v21 != i; ++i)
        {
          if ((v20 & 0xC000000000000001) != 0)
          {
            v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (i >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_42;
            }

            v23 = *(v20 + 8 * i + 32);
          }

          v24 = v23;
          if (__OFADD__(i, 1))
          {
            goto LABEL_41;
          }

          a1();
        }
      }
    }
  }
}