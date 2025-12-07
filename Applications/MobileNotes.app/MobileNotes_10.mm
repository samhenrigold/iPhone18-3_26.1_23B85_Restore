void *sub_1001ECFF0(void *result, uint64_t a2)
{
  if (a2 < 5)
  {
    v2 = result[3] & 0xFFFFFFFFFFFFFF8;
    v3 = result[4] & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
    result[1] &= 0xFFFFFFFFFFFFFF8uLL;
    result[3] = v2;
    result[4] = v3;
  }

  else
  {
    *result = (a2 - 5);
    result[1] = 0;
    result[2] = 0;
    result[3] = 0;
    result[4] = 0xA000000000000000;
  }

  return result;
}

uint64_t sub_1001ED04C()
{
  v0 = type metadata accessor for Logger();
  sub_100025918(v0, qword_1006BFC38);
  sub_10002597C(v0, qword_1006BFC38);
  return static Logger.realtimeCollaboration.getter();
}

uint64_t sub_1001ED098()
{
  v1 = v0[1];
  v2 = v0[4] >> 61;
  if (v2 <= 2)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        v3 = 0x28746E6573657270;
      }

      else
      {
        v3 = 0x28676E697661656CLL;
      }
    }

    else
    {
      v3 = 0x676E697472617473;
    }

    v20 = v3;
    ObjectType = swift_getObjectType();
    v18._countAndFlagsBits = sub_1001ED31C(ObjectType, v1);
    String.append(_:)(v18);

    goto LABEL_12;
  }

  if (v2 == 3)
  {
    v8 = v0[3];
    v20 = 0;
    _StringGuts.grow(_:)(63);
    v9._object = 0x8000000100564180;
    v9._countAndFlagsBits = 0xD00000000000002ALL;
    String.append(_:)(v9);
    v10 = swift_getObjectType();
    v11._countAndFlagsBits = sub_1001ED31C(v10, v1);
    String.append(_:)(v11);

    v12._countAndFlagsBits = 0x7473202020200A3BLL;
    v12._object = 0xEF20676E69747261;
    String.append(_:)(v12);
    v13 = swift_getObjectType();
    v14._countAndFlagsBits = sub_1001ED31C(v13, v8);
    String.append(_:)(v14);

    v15 = 10506;
    v16 = 0xE200000000000000;
LABEL_13:
    String.append(_:)(*&v15);
    return v20;
  }

  if (v2 == 4)
  {
    v20 = 0;
    _StringGuts.grow(_:)(27);
    v4._countAndFlagsBits = 0x46676E696E696F6ALL;
    v4._object = 0xEE002864656C6961;
    String.append(_:)(v4);
    v5 = swift_getObjectType();
    v6._countAndFlagsBits = sub_1001ED31C(v5, v1);
    String.append(_:)(v6);

    v7._countAndFlagsBits = 0x3D726F727265202CLL;
    v7._object = 0xE800000000000000;
    String.append(_:)(v7);
    sub_10015DA04(&unk_1006C9B40, &unk_1005397F0);
    _print_unlocked<A, B>(_:_:)();
LABEL_12:
    v15 = 41;
    v16 = 0xE100000000000000;
    goto LABEL_13;
  }

  return 1701602409;
}

uint64_t sub_1001ED31C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for EditNoteActivity();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  v17 = 0xE000000000000000;
  v7._countAndFlagsBits = 0x3D65746F6ELL;
  v7._object = 0xE500000000000000;
  String.append(_:)(v7);
  dispatch thunk of GroupSessionProvider.activity.getter();
  v8 = EditNoteActivity.noteID.getter();
  v10 = v9;
  (*(v4 + 8))(v6, v3);
  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x3D6469202CLL;
  v12._object = 0xE500000000000000;
  String.append(_:)(v12);
  v15 = v2;
  _print_unlocked<A, B>(_:_:)();
  return v16;
}

void sub_1001ED494(uint64_t a1)
{
  v3 = type metadata accessor for FastSyncStateMachine(0);
  v4 = *(v1 + *(v3 + 28));
  v5 = EditNoteActivity.noteID.getter();
  v7 = v6;
  v8 = v1 + *(v3 + 32);
  v24 = *(v8 + 32);
  v9 = *(v8 + 16);
  v23[0] = *v8;
  v23[1] = v9;
  if (qword_1006BC5F0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10002597C(v10, qword_1006BFC38);
  sub_1001F2584(v23, v22);

  sub_1001F2584(a1, v22);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  sub_1001F2554(a1);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22[0] = swift_slowAlloc();
    *v13 = 134218754;
    *(v13 + 4) = v4;
    *(v13 + 12) = 2080;
    v14 = sub_100009D88(v5, v7, v22);

    *(v13 + 14) = v14;
    *(v13 + 22) = 2080;
    v15 = sub_1001ED098();
    v17 = sub_100009D88(v15, v16, v22);

    *(v13 + 24) = v17;
    *(v13 + 32) = 2080;
    v18 = sub_1001ED098();
    v20 = v19;
    sub_1001F2554(v23);
    v21 = sub_100009D88(v18, v20, v22);

    *(v13 + 34) = v21;
    _os_log_impl(&_mh_execute_header, v11, v12, "FastSyncStateMachine[id=%ld, note=%s]: state transition from '%s' -> '%s'", v13, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    sub_1001F2554(v23);
  }
}

uint64_t sub_1001ED6E4(uint64_t a1, uint64_t a2)
{
  v7 = sub_10015DA04(&qword_1006C2170, &unk_100538AA0);
  __chkstk_darwin(v7 - 8);
  v9 = &v44 - v8;
  v10 = type metadata accessor for FastSyncStateMachine(0);
  v11 = v2 + v10[8];
  v12 = *(v11 + 16);
  v50 = *v11;
  v51 = v12;
  v52 = *(v11 + 32);
  v13 = v50;
  v14 = v12;
  v15 = v52 >> 61;
  if ((v52 >> 61) <= 2)
  {
    if (v15 <= 1)
    {
      swift_unknownObjectRetain();

      swift_unknownObjectRelease();
      LOBYTE(v4) = 0;
      return v4 & 1;
    }

    v48 = *(&v50 + 1);
    v49 = a1;
    v25 = v10[5];
    v4 = *(v2 + v10[6]);
    swift_unknownObjectRetain();

    v26 = sub_1001EDBF8(v2, (v2 + v25), v4);
    if (v3)
    {

      swift_unknownObjectRelease();
      return v4 & 1;
    }

    v36 = v26;
    v47 = v27;
    v37 = type metadata accessor for TaskPriority();
    LOBYTE(v4) = 1;
    (*(*(v37 - 8) + 56))(v9, 1, 1, v37);
    v38 = swift_allocObject();
    v38[2] = 0;
    v38[3] = 0;
    v38[4] = v14;
    v38[5] = v36;
    v39 = v49;
    v38[6] = v47;
    v38[7] = v39;
    v38[8] = a2;

    swift_unknownObjectRetain();
    v40 = sub_10047493C(0, 0, v9, &unk_100539898, v38);
    v41 = v47;
    v42 = v48;
    *v11 = v13;
    *(v11 + 8) = v42;
    *(v11 + 16) = v36;
    *(v11 + 24) = v41;
    *(v11 + 32) = v40 | 0x6000000000000000;
    sub_1001ED494(&v50);
    sub_1001F2554(&v50);
LABEL_16:

    return v4 & 1;
  }

  if (v15 == 3)
  {
    v49 = a1;
    v47 = *(&v51 + 1);
    v48 = v52 & 0x1FFFFFFFFFFFFFFFLL;
    v4 = v10;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
    v23 = sub_1001EDBF8(v2, (v2 + *(v4 + 20)), *(v2 + *(v4 + 24)));
    if (v3)
    {
      swift_unknownObjectRelease();

      return v4 & 1;
    }

    v45 = v23;
    v46 = v24;
    sub_10015DA04(&qword_1006BFD18, &qword_100539810);
    sub_10015DA04(&unk_1006C9B40, &unk_1005397F0);
    v28 = v48;
    Task.cancel()();
    v29 = type metadata accessor for TaskPriority();
    LOBYTE(v4) = 1;
    (*(*(v29 - 8) + 56))(v9, 1, 1, v29);
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = v28;
    v30[5] = v14;
    v31 = v46;
    v32 = v49;
    v30[6] = v47;
    v30[7] = v32;
    v30[8] = a2;
    v33 = v45;
    v30[9] = v45;
    v30[10] = v31;

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v34 = sub_10047493C(0, 0, v9, &unk_100539888, v30);
    v35 = v47;
    *v11 = v14;
    *(v11 + 8) = v35;
    *(v11 + 16) = v33;
    *(v11 + 24) = v31;
    *(v11 + 32) = v34 | 0x6000000000000000;
    sub_1001ED494(&v50);
    sub_1001F2554(&v50);
    goto LABEL_16;
  }

  if (v15 == 4)
  {
    v4 = v10;
    swift_unknownObjectRetain();
    swift_errorRetain();
    swift_unknownObjectRelease();

    v10 = v4;
  }

  v16 = sub_1001EDBF8(v2, (v2 + v10[5]), *(v2 + v10[6]));
  if (!v3)
  {
    v18 = v16;
    v19 = v17;
    v20 = type metadata accessor for TaskPriority();
    LOBYTE(v4) = 1;
    (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v18;
    v21[5] = v19;
    v21[6] = a1;
    v21[7] = a2;
    swift_unknownObjectRetain();

    v22 = sub_10047493C(0, 0, v9, &unk_1005398A8, v21);
    *v11 = v18;
    *(v11 + 8) = v19;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    *(v11 + 16) = v22;
    sub_1001ED494(&v50);
    sub_1001F2554(&v50);
  }

  return v4 & 1;
}

char *sub_1001EDBF8(uint64_t a1, void *a2, uint64_t a3)
{
  v69 = a3;
  v71 = a2;
  v4 = type metadata accessor for EditNoteActivity();
  v70 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v62 - v8;
  v10 = sub_10015DA04(&qword_1006BFC50, &unk_100539650);
  __chkstk_darwin(v10 - 8);
  v12 = &v62 - v11;
  v13 = sub_10015DA04(&qword_1006BFCC8, &unk_100543B10);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v62 - v15;
  EditNoteActivity.validate()();
  if (v17)
  {
    return v12;
  }

  v65 = v9;
  v66 = v16;
  v18 = v70;
  v67 = 0;
  v68 = a1;
  sub_100006038(v71, v12, &qword_1006BFC50, &unk_100539650);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1000073B4(v12, &qword_1006BFC50, &unk_100539650);
    v19 = v7;
LABEL_11:
    v44 = v68;
    v45 = v4;
    v46 = v18;
    if (qword_1006BC5F0 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_10002597C(v47, qword_1006BFC38);
    (*(v18 + 16))(v19, v44, v4);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v72 = v51;
      *v50 = 136315138;
      v52 = EditNoteActivity.noteID.getter();
      v54 = v53;
      (*(v46 + 8))(v19, v45);
      v55 = sub_100009D88(v52, v54, &v72);

      *(v50 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v48, v49, "Making personal group session provider for activity %s", v50, 0xCu);
      sub_100009F60(v51);
    }

    else
    {

      (*(v46 + 8))(v19, v4);
    }

    sub_10015DA04(&qword_1006BFD28, &qword_1005398B0);
    v12 = static GroupSessionProvider<>.personalGroupSessionProvider(for:)();
    v56 = &unk_1006BFD30;
    v57 = &protocol conformance descriptor for PersonalGroupSessionProvider<A>;
    v58 = &qword_1006BFD28;
    v59 = &qword_1005398B0;
    goto LABEL_17;
  }

  v20 = v14;
  v21 = v66;
  (*(v14 + 32))(v66, v12, v13);
  sub_1000054A4(0, &qword_1006BFD38, CKShare_ptr);
  v22 = static NSObject<>.record(from:)();
  if (!v22)
  {
    v19 = v7;
    (*(v20 + 8))(v21, v13);
    goto LABEL_11;
  }

  v23 = v22;
  if (qword_1006BC5F0 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_10002597C(v24, qword_1006BFC38);
  v25 = v18;
  v26 = *(v18 + 16);
  v27 = v65;
  v28 = v4;
  v26(v65, v68, v4);
  v29 = v23;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v72 = v71;
    *v32 = 136315394;
    v64 = v31;
    v33 = EditNoteActivity.noteID.getter();
    v63 = v30;
    v34 = v33;
    v36 = v35;
    (*(v25 + 8))(v27, v28);
    v37 = sub_100009D88(v34, v36, &v72);

    *(v32 + 4) = v37;
    *(v32 + 12) = 2080;
    v38 = [v29 ic_loggingDescription];
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    v42 = sub_100009D88(v39, v41, &v72);

    *(v32 + 14) = v42;
    v43 = v63;
    _os_log_impl(&_mh_execute_header, v63, v64, "Making shared group session provider for activity %s with share %s", v32, 0x16u);
    swift_arrayDestroy();

    v21 = v66;
  }

  else
  {

    (*(v25 + 8))(v27, v28);
  }

  sub_10015DA04(&qword_1006BFD40, &qword_1005398B8);
  v61 = v67;
  v12 = static GroupSessionProvider<>.sharedGroupSessionProvider(for:share:container:)();
  (*(v20 + 8))(v21, v13);

  if (!v61)
  {
    v67 = 0;
    v56 = &unk_1006BFD48;
    v58 = &qword_1006BFD40;
    v59 = &qword_1005398B8;
    v57 = &protocol conformance descriptor for CKShareGroupSessionProvider<A>;
LABEL_17:
    sub_1000060B4(v56, v58, v59, v57);
  }

  return v12;
}

uint64_t sub_1001EE310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a1;
  v8[7] = type metadata accessor for FastSync.PresenceAction(0);
  v8[8] = swift_task_alloc();
  v10 = swift_task_alloc();
  v8[9] = v10;
  *v10 = v8;
  v10[1] = sub_1001EE3F0;

  return Task<>.value.getter(v10, a4, &type metadata for () + 1);
}

uint64_t sub_1001EE3F0()
{

  return _swift_task_switch(sub_1001EE4EC, 0, 0);
}

uint64_t sub_1001EE4EC()
{
  static Task<>.checkCancellation()();
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  *v1 = *(v0 + 24);
  *(v1 + 16) = 0;
  swift_storeEnumTagMultiPayload();
  swift_unknownObjectRetain();
  v6 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_1001EE65C;
  v4 = *(v0 + 64);

  return v6(v4);
}

uint64_t sub_1001EE65C()
{

  return _swift_task_switch(sub_1001EE758, 0, 0);
}

uint64_t sub_1001EE758()
{
  v1 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_1001F2BF4(*(v0 + 64), type metadata accessor for FastSync.PresenceAction);
  *v1 = v4;
  swift_unknownObjectRetain();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001EE800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v16;
  v8[11] = v17;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a1;
  v10 = type metadata accessor for EditNoteActivity();
  v8[12] = v10;
  v8[13] = *(v10 - 8);
  v8[14] = swift_task_alloc();
  v8[15] = type metadata accessor for FastSync.PresenceAction(0);
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v11 = swift_task_alloc();
  v8[18] = v11;
  v12 = sub_10015DA04(&qword_1006BFD18, &qword_100539810);
  v13 = sub_10015DA04(&unk_1006C9B40, &unk_1005397F0);
  *v11 = v8;
  v11[1] = sub_1001EE994;

  return (Task.result.getter)(v8 + 2, a4, v12, v13, &protocol self-conformance witness table for Error);
}

uint64_t sub_1001EE994()
{

  return _swift_task_switch(sub_1001EEA90, 0, 0);
}

uint64_t sub_1001EEA90()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v14 = *(v0 + 64);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  *(v0 + 152) = v5;
  *(v0 + 160) = v6;
  v7 = *(v0 + 32);
  *(v0 + 33) = v7;
  swift_getObjectType();
  dispatch thunk of GroupSessionProvider.activity.getter();
  (*(v3 + 32))(v1, v2, v4);
  v8 = type metadata accessor for FastSync.LeaveActivityAction(0);
  *(v1 + *(v8 + 24)) = 0;
  v9 = v1 + *(v8 + 20);
  *v9 = v5;
  *(v9 + 8) = v6;
  *(v9 + 16) = v7;
  swift_storeEnumTagMultiPayload();
  sub_1001F2774(v5, v6, v7);
  v13 = (v14 + *v14);
  v10 = swift_task_alloc();
  *(v0 + 168) = v10;
  *v10 = v0;
  v10[1] = sub_1001EEC3C;
  v11 = *(v0 + 136);

  return v13(v11);
}

uint64_t sub_1001EEC3C()
{

  return _swift_task_switch(sub_1001EED38, 0, 0);
}

uint64_t sub_1001EED38()
{
  static Task<>.checkCancellation()();
  v1 = *(v0 + 128);
  v2 = *(v0 + 64);
  *v1 = *(v0 + 80);
  *(v1 + 16) = 0;
  swift_storeEnumTagMultiPayload();
  swift_unknownObjectRetain();
  v6 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v0 + 176) = v3;
  *v3 = v0;
  v3[1] = sub_1001EEF0C;
  v4 = *(v0 + 128);

  return v6(v4);
}

uint64_t sub_1001EEF0C()
{

  return _swift_task_switch(sub_1001EF008, 0, 0);
}

uint64_t sub_1001EF008()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 40);
  v6 = *(v0 + 80);
  sub_1001F2780(*(v0 + 152), *(v0 + 160), *(v0 + 33));
  sub_1001F2BF4(v1, type metadata accessor for FastSync.PresenceAction);
  sub_1001F2BF4(v2, type metadata accessor for FastSync.PresenceAction);
  *v3 = v6;
  swift_unknownObjectRetain();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001EF0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  v7[7] = type metadata accessor for FastSync.PresenceAction(0);
  v7[8] = swift_task_alloc();

  return _swift_task_switch(sub_1001EF184, 0, 0);
}

uint64_t sub_1001EF184()
{
  static Task<>.checkCancellation()();
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  *v1 = *(v0 + 24);
  *(v1 + 16) = 0;
  swift_storeEnumTagMultiPayload();
  swift_unknownObjectRetain();
  v6 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_1001EF2F4;
  v4 = *(v0 + 64);

  return v6(v4);
}

uint64_t sub_1001EF2F4()
{

  return _swift_task_switch(sub_1001F2FAC, 0, 0);
}

void sub_1001EF3F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v6 = type metadata accessor for EditNoteActivity();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v3 + *(type metadata accessor for FastSyncStateMachine(0) + 32));
  v11 = v10[1];
  v31 = *v10;
  v32 = v11;
  v33 = *(v10 + 4);
  v12 = v31;
  v13 = v11;
  v14 = v33 >> 61;
  if ((v33 >> 61) > 2)
  {
    if (v14 != 3)
    {
      if (v14 == 4)
      {
        swift_unknownObjectRetain();
        swift_errorRetain();
        swift_unknownObjectRelease();
      }

      goto LABEL_11;
    }

    v29 = v7;
    v26 = a1;
    v27 = *(&v32 + 1);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    a1 = v26;

    swift_unknownObjectRelease();
    v12 = v13;
  }

  else
  {
    if (v14)
    {
      swift_unknownObjectRetain();

      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    v29 = v7;
    v27 = *(&v31 + 1);
    swift_unknownObjectRetain();
  }

  if (v12 == a2)
  {
    v24 = v27;
    *v10 = v12;
    *(v10 + 1) = v24;
    *(v10 + 2) = a1;
    *(v10 + 24) = xmmword_100539600;
    swift_errorRetain();
    sub_1001ED494(&v31);
    sub_1001F2554(&v31);
    return;
  }

  swift_unknownObjectRelease();
  v7 = v29;
LABEL_11:
  if (qword_1006BC5F0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10002597C(v15, qword_1006BFC38);
  swift_unknownObjectRetain();
  v29 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v29, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v30 = v18;
    *v17 = 136315138;
    swift_getObjectType();
    dispatch thunk of GroupSessionProvider.activity.getter();
    sub_1001F24FC();
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    (v7[1].isa)(v9, v6);
    v22 = sub_100009D88(v19, v21, &v30);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v29, v16, "Ignoring startActivity(_:didFailWith:) for a group session provider we've stopped tracking (%s)", v17, 0xCu);
    sub_100009F60(v18);
  }

  else
  {
    v23 = v29;
  }
}

void sub_1001EF794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EditNoteActivity();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v3 + *(type metadata accessor for FastSyncStateMachine(0) + 32));
  v27 = *(v10 + 4);
  v11 = v10[1];
  v25 = *v10;
  v26 = v11;
  v12 = v25;
  v13 = 1 << (v27 >> 61);
  if ((v13 & 0x26) != 0)
  {
    goto LABEL_5;
  }

  if ((v13 & 0x11) == 0)
  {
    v12 = v26;
  }

  if (v12 == a2)
  {
    *v10 = v12;
    *(v10 + 2) = a1;
    *(v10 + 24) = xmmword_100539610;
    swift_unknownObjectRetain();

    sub_1001ED494(&v25);
    sub_1001F2554(&v25);
  }

  else
  {
LABEL_5:
    if (qword_1006BC5F0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10002597C(v14, qword_1006BFC38);
    swift_unknownObjectRetain();
    v23 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v23, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136315138;
      swift_getObjectType();
      dispatch thunk of GroupSessionProvider.activity.getter();
      sub_1001F24FC();
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      (*(v7 + 8))(v9, v6);
      v21 = sub_100009D88(v18, v20, &v24);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v23, v15, "Ignoring didStartActivity() for a group session provider we've stopped tracking (%s)", v16, 0xCu);
      sub_100009F60(v17);
    }

    else
    {
      v22 = v23;
    }
  }
}

uint64_t sub_1001EFA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10015DA04(&qword_1006C2170, &unk_100538AA0);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = (v3 + *(type metadata accessor for FastSyncStateMachine(0) + 32));
  v11 = v10[1];
  v24 = *v10;
  v25 = v11;
  v26 = *(v10 + 4);
  v12 = v24;
  v13 = v11;
  v14 = v26 >> 61;
  if ((v26 >> 61) > 2)
  {
    if (v14 != 3)
    {
      if (v14 == 4)
      {
        swift_unknownObjectRetain();
        swift_errorRetain();
        swift_unknownObjectRelease();
      }

      *v10 = 0u;
      v10[1] = 0u;
      *(v10 + 4) = 0xA000000000000000;
      goto LABEL_12;
    }

    v23 = a1;
    v19 = *(&v25 + 1);
    v22 = v26 & 0x1FFFFFFFFFFFFFFFLL;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v15 = v19;
    a1 = v23;

    swift_unknownObjectRelease();
    v12 = v13;
    v13 = v22;
LABEL_11:
    sub_10015DA04(&qword_1006BFD18, &qword_100539810);
    sub_10015DA04(&unk_1006C9B40, &unk_1005397F0);
    Task.cancel()();
    sub_100006038(a1, v9, &qword_1006C2170, &unk_100538AA0);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v13;
    v20[5] = v12;
    v20[6] = v15;
    v20[7] = a2;
    v20[8] = a3;
    swift_unknownObjectRetain();

    v21 = sub_10023D268(0, 0, v9, &unk_100539820, v20);
    *v10 = v12;
    *(v10 + 1) = v15;
    *(v10 + 2) = v21;
    *(v10 + 24) = xmmword_100539620;
LABEL_12:
    sub_1001ED494(&v24);
    return sub_1001F2554(&v24);
  }

  v15 = *(&v24 + 1);
  if (!v14)
  {
    swift_unknownObjectRetain();

    goto LABEL_11;
  }

  if (v14 == 1)
  {
    swift_unknownObjectRetain();

    Task.cancel()();
    sub_100006038(a1, v9, &qword_1006C2170, &unk_100538AA0);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v13;
    v16[5] = v12;
    v16[6] = v15;
    v16[7] = a2;
    v16[8] = a3;

    swift_unknownObjectRetain();
    v17 = sub_10023D268(0, 0, v9, &unk_100539808, v16);
    *v10 = v12;
    *(v10 + 1) = v15;
    *(v10 + 2) = v17;
    *(v10 + 24) = xmmword_100539620;
    sub_1001ED494(&v24);
    sub_1001F2554(&v24);
  }

  else
  {
    swift_unknownObjectRetain();

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_1001EFE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = type metadata accessor for EditNoteActivity();
  v8[7] = v9;
  v8[8] = *(v9 - 8);
  v8[9] = swift_task_alloc();
  v8[10] = type metadata accessor for FastSync.LeaveActivityAction(0);
  v8[11] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v8[12] = v10;
  v8[13] = *(v10 - 8);
  v8[14] = swift_task_alloc();

  return _swift_task_switch(sub_1001EFF6C, 0, 0);
}

uint64_t sub_1001EFF6C()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[15] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = xmmword_100539630;
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_1001F0060;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 18, &type metadata for Bool, &type metadata for Bool, 0, 0, &unk_100539830, v2, &type metadata for Bool);
}

uint64_t sub_1001F0060()
{

  return _swift_task_switch(sub_1001F0178, 0, 0);
}

uint64_t sub_1001F0178()
{
  v40 = v0;
  v1 = *(v0 + 144);
  *(swift_task_alloc() + 16) = v1;
  swift_unknownObjectRetain();
  static Logger.realtimeCollaboration.getter();
  v2 = swift_allocObject();
  *(v2 + 16) = 2;
  v3 = sub_100365CA4(v2, sub_1001F2850);
  v4 = *(v0 + 112);
  if (v3)
  {
    v5 = *(v0 + 96);
    v6 = *(v0 + 104);
    swift_unknownObjectRelease();
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v7 = static os_log_type_t.fault.getter();
    v8 = Logger.logObject.getter();
    v9 = os_log_type_enabled(v8, v7);
    v10 = *(v0 + 104);
    v11 = *(v0 + 112);
    v12 = *(v0 + 96);
    if (v9)
    {
      v35 = *(v0 + 112);
      v13 = *(v0 + 72);
      v34 = v7;
      v14 = *(v0 + 56);
      v32 = *(v0 + 64);
      v15 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v15 = 136315650;
      v16 = StaticString.description.getter();
      v33 = v12;
      v18 = sub_100009D88(v16, v17, &v37);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2048;
      *(v15 + 14) = 232;
      *(v15 + 22) = 2080;
      v38 = 0;
      v39 = 0xE000000000000000;
      _StringGuts.grow(_:)(80);
      v19._object = 0x80000001005641E0;
      v19._countAndFlagsBits = 0xD00000000000004DLL;
      String.append(_:)(v19);
      swift_getObjectType();
      dispatch thunk of GroupSessionProvider.activity.getter();
      sub_1001F24FC();
      v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v20);

      (*(v32 + 8))(v13, v14);
      v21._countAndFlagsBits = 41;
      v21._object = 0xE100000000000000;
      String.append(_:)(v21);
      v22 = sub_100009D88(v38, v39, &v37);

      *(v15 + 24) = v22;
      _os_log_impl(&_mh_execute_header, v8, v34, "Failed assertion at %s:%lu: %s", v15, 0x20u);
      swift_arrayDestroy();

      swift_unknownObjectRelease();
      (*(v10 + 8))(v35, v33);
    }

    else
    {

      swift_unknownObjectRelease();
      (*(v10 + 8))(v11, v12);
    }
  }

  v24 = *(v0 + 80);
  v23 = *(v0 + 88);
  v26 = *(v0 + 32);
  v25 = *(v0 + 40);
  v27 = *(v0 + 24);

  swift_getObjectType();
  dispatch thunk of GroupSessionProvider.activity.getter();
  *(v23 + *(v24 + 24)) = 0;
  v28 = v23 + *(v24 + 20);
  *v28 = v27;
  *(v28 + 8) = v26;
  *(v28 + 16) = 0;
  swift_unknownObjectRetain();
  v36 = (v25 + *v25);
  v29 = swift_task_alloc();
  *(v0 + 136) = v29;
  *v29 = v0;
  v29[1] = sub_1001F059C;
  v30 = *(v0 + 88);

  return v36(v30);
}

uint64_t sub_1001F059C()
{

  return _swift_task_switch(sub_1001F0698, 0, 0);
}

uint64_t sub_1001F0698()
{
  sub_1001F2BF4(*(v0 + 88), type metadata accessor for FastSync.LeaveActivityAction);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001F0738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[9] = type metadata accessor for FastSync.LeaveActivityAction(0);
  v8[10] = swift_task_alloc();
  v10 = swift_task_alloc();
  v8[11] = v10;
  v11 = sub_10015DA04(&qword_1006BFD18, &qword_100539810);
  v12 = sub_10015DA04(&unk_1006C9B40, &unk_1005397F0);
  *v10 = v8;
  v10[1] = sub_1001F0854;

  return (Task.result.getter)(v8 + 2, a4, v11, v12, &protocol self-conformance witness table for Error);
}

uint64_t sub_1001F0854()
{

  return _swift_task_switch(sub_1001F0950, 0, 0);
}

uint64_t sub_1001F0950()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  *(v0 + 96) = v4;
  *(v0 + 104) = v5;
  v6 = *(v0 + 32);
  *(v0 + 33) = v6;
  swift_getObjectType();
  dispatch thunk of GroupSessionProvider.activity.getter();
  *(v1 + *(v2 + 24)) = 0;
  v7 = v1 + *(v2 + 20);
  *v7 = v4;
  *(v7 + 8) = v5;
  *(v7 + 16) = v6;
  sub_1001F2774(v4, v5, v6);
  v11 = (v3 + *v3);
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_1001F0AB4;
  v9 = *(v0 + 80);

  return v11(v9);
}

uint64_t sub_1001F0AB4()
{

  return _swift_task_switch(sub_1001F0BB0, 0, 0);
}

uint64_t sub_1001F0BB0()
{
  v1 = *(v0 + 80);
  sub_1001F2780(*(v0 + 96), *(v0 + 104), *(v0 + 33));
  sub_1001F2BF4(v1, type metadata accessor for FastSync.LeaveActivityAction);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1001F0C3C()
{
  v1 = (v0 + *(type metadata accessor for FastSyncStateMachine(0) + 32));
  v2 = *(v1 + 4);
  v18 = v2;
  v3 = v1[1];
  v16 = *v1;
  v17 = v3;
  if (v2 >> 62 == 1)
  {
    v4 = swift_unknownObjectRetain();
    if (FastSync.LeaveActivityAction.isRelatedTo(_:)(v4, *(&v16 + 1)))
    {
      if ((~v2 & 0x6000000000000000) != 0)
      {
        swift_unknownObjectRetain();

        swift_unknownObjectRelease();
        *v1 = 0u;
        v1[1] = 0u;
        *(v1 + 4) = 0xA000000000000000;
      }

      else
      {
        v5 = *(&v17 + 1);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();

        swift_unknownObjectRelease();
        *v1 = v17;
        *(v1 + 1) = v5;
        *(v1 + 3) = 0;
        *(v1 + 4) = 0;
        *(v1 + 2) = v2 & 0x1FFFFFFFFFFFFFFFLL;
      }

      sub_1001ED494(&v16);
      sub_1001F2554(&v16);
      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1006BC5F0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10002597C(v6, qword_1006BFC38);
  sub_1001F2584(&v16, v15);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15[0] = v10;
    *v9 = 136315138;
    v11 = sub_1001ED098();
    v13 = v12;
    sub_1001F2554(&v16);
    v14 = sub_100009D88(v11, v13, v15);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "didLeaveActivity(): No state transition for provider unrelated to current state: %s", v9, 0xCu);
    sub_100009F60(v10);
  }

  else
  {

    sub_1001F2554(&v16);
  }
}

uint64_t sub_1001F0EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_10015DA04(&qword_1006C2170, &unk_100538AA0);
  __chkstk_darwin(v9 - 8);
  v11 = &v25 - v10;
  v12 = type metadata accessor for FastSyncStateMachine(0);
  v13 = (v4 + *(v12 + 32));
  v14 = v13[2].u64[0];
  v15 = v14 >> 61;
  if (v14 >> 61 == 2 || v15 == 4)
  {
    goto LABEL_6;
  }

  if (v15 != 5)
  {
    result = sub_1001F1114(a1, a2);
    if ((result & 1) == 0)
    {
      return result;
    }

    if (!(v14 >> 62))
    {
      v23 = type metadata accessor for TaskPriority();
      (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
      v24 = swift_allocObject();
      *(v24 + 16) = a3;
      *(v24 + 24) = a4;

      sub_1001EFA84(v11, &unk_100539878, v24);

      sub_1000073B4(v11, &qword_1006C2170, &unk_100538AA0);
    }

LABEL_6:
    v17 = type metadata accessor for EditNoteActivity();
    (*(*(v17 - 8) + 24))(v4, a1, v17);
    sub_1001F29CC(a2, v4 + *(v12 + 20));
    v18 = swift_allocObject();
    *(v18 + 16) = a3;
    *(v18 + 24) = a4;

    sub_1001ED6E4(&unk_100539868, v18);
  }

  v20 = vorrq_s8(*v13, v13[1]);
  v21 = vorr_s8(*v20.i8, *&vextq_s8(v20, v20, 8uLL));
  if (v14 == 0xA000000000000000 && *&v21 == 0)
  {
    goto LABEL_6;
  }

  result = sub_1001F1114(a1, a2);
  if (result)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1001F1114(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&qword_1006BFC50, &unk_100539650);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = EditNoteActivity.id.getter();
  v12 = v11;
  if (v10 == EditNoteActivity.id.getter() && v12 == v13)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
LABEL_17:
      v22 = 1;
      return v22 & 1;
    }
  }

  sub_100006038(a2, v9, &qword_1006BFC50, &unk_100539650);
  v15 = sub_10015DA04(&qword_1006BFCC8, &unk_100543B10);
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (v17(v9, 1, v15) == 1)
  {
    sub_1000073B4(v9, &qword_1006BFC50, &unk_100539650);
    v18 = 0;
  }

  else
  {
    v18 = CloudRecordSnapshot.id.getter();
    (*(v16 + 8))(v9, v15);
  }

  v19 = type metadata accessor for FastSyncStateMachine(0);
  sub_100006038(v2 + *(v19 + 20), v7, &qword_1006BFC50, &unk_100539650);
  if (v17(v7, 1, v15) == 1)
  {
    sub_1000073B4(v7, &qword_1006BFC50, &unk_100539650);
    if (!v18)
    {
      goto LABEL_18;
    }

LABEL_14:

    goto LABEL_17;
  }

  v20 = CloudRecordSnapshot.id.getter();
  (*(v16 + 8))(v7, v15);
  if (!v18)
  {
    if (!v20)
    {
LABEL_18:
      v22 = 0;
      return v22 & 1;
    }

    goto LABEL_17;
  }

  if (!v20)
  {
    goto LABEL_14;
  }

  sub_1000054A4(0, &qword_1006C8870, CKRecordID_ptr);
  v21 = static NSObject.== infix(_:_:)();

  v22 = v21 ^ 1;
  return v22 & 1;
}

uint64_t sub_1001F1400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v3[8] = type metadata accessor for FastSync.PresenceAction(0);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_1001F14B0, 0, 0);
}

uint64_t sub_1001F14B0()
{
  v1 = v0[6];
  sub_1001F2B8C(v0[5], v0[11], type metadata accessor for FastSync.LeaveActivityAction);
  swift_storeEnumTagMultiPayload();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_1001F15E0;
  v3 = v0[11];

  return v5(v3);
}

uint64_t sub_1001F15E0()
{

  return _swift_task_switch(sub_1001F16DC, 0, 0);
}

uint64_t sub_1001F16DC()
{
  v23 = v0;
  sub_1001F2B8C(v0[11], v0[10], type metadata accessor for FastSync.PresenceAction);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = v0[10];
    v2 = v0[11];
    v3 = v0[5];
    sub_1001F2BF4(v3, type metadata accessor for FastSync.LeaveActivityAction);
    sub_1001F2C54(v1, v3);
    v4 = v2;
  }

  else
  {
    sub_1001F2BF4(v0[10], type metadata accessor for FastSync.PresenceAction);
    if (qword_1006BC5F0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10002597C(v5, qword_1006BFC38);
    v6 = static os_log_type_t.fault.getter();
    v7 = Logger.logObject.getter();
    v8 = os_log_type_enabled(v7, v6);
    v9 = v0[11];
    if (v8)
    {
      v10 = v0[9];
      v11 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v11 = 136315650;
      v12 = StaticString.description.getter();
      v14 = sub_100009D88(v12, v13, &v20);

      *(v11 + 4) = v14;
      *(v11 + 12) = 2048;
      *(v11 + 14) = 277;
      *(v11 + 22) = 2080;
      v21 = 0;
      v22 = 0xE000000000000000;
      _StringGuts.grow(_:)(60);
      v15._object = 0x8000000100564230;
      v15._countAndFlagsBits = 0xD00000000000003ALL;
      String.append(_:)(v15);
      swift_beginAccess();
      sub_1001F2B8C(v9, v10, type metadata accessor for FastSync.PresenceAction);
      v16._countAndFlagsBits = String.init<A>(reflecting:)();
      String.append(_:)(v16);

      v17 = sub_100009D88(v21, v22, &v20);

      *(v11 + 24) = v17;
      _os_log_impl(&_mh_execute_header, v7, v6, "Failed assertion at %s:%lu: %s", v11, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v4 = v9;
  }

  sub_1001F2BF4(v4, type metadata accessor for FastSync.PresenceAction);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1001F1A34(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000A600;

  return v6(a1);
}

uint64_t sub_1001F1B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_10015DA04(&qword_1006C2170, &unk_100538AA0);
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_1001F1BDC, 0, 0);
}

uint64_t sub_1001F1BDC()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = type metadata accessor for TaskPriority();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v3;

  sub_10033AA00(v1, &unk_100539840, v7);
  sub_1000073B4(v1, &qword_1006C2170, &unk_100538AA0);
  v6(v1, 1, 1, v5);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v4;
  v8[5] = v2;
  sub_10033AA00(v1, &unk_100539850, v8);
  sub_1000073B4(v1, &qword_1006C2170, &unk_100538AA0);
  v9 = swift_task_alloc();
  v0[8] = v9;
  v10 = sub_10015DA04(&qword_1006BFD20, &qword_100539858);
  *v9 = v0;
  v9[1] = sub_1001F1DD8;

  return TaskGroup.next(isolation:)(v0 + 9, 0, 0, v10);
}

uint64_t sub_1001F1DD8()
{

  return _swift_task_switch(sub_1001F1ED4, 0, 0);
}

uint64_t sub_1001F1ED4()
{
  v2 = *(v0 + 72);
  if (v2 == 2)
  {
    __break(1u);
  }

  else
  {
    **(v0 + 16) = v2 & 1;
    TaskGroup.cancelAll()();

    v3 = *(v0 + 8);

    return v3();
  }

  return result;
}

uint64_t sub_1001F1F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_1001F2010;

  return Task<>.value.getter(v6, a4, &type metadata for () + 1);
}

uint64_t sub_1001F2010()
{

  return _swift_task_switch(sub_1001F210C, 0, 0);
}

uint64_t sub_1001F212C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = type metadata accessor for ContinuousClock();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_1001F21F0, 0, 0);
}

uint64_t sub_1001F21F0()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1001F22B0;
  v3 = v0[3];
  v2 = v0[4];

  return sub_1004A7818(v3, v2, 0, 0, 1);
}

uint64_t sub_1001F22B0()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 72) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1001F2488;
  }

  else
  {
    v5 = sub_1001F2420;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001F2420()
{
  **(v0 + 16) = 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001F2488()
{

  **(v0 + 16) = 1;

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1001F24FC()
{
  result = qword_1006BFD10;
  if (!qword_1006BFD10)
  {
    type metadata accessor for EditNoteActivity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFD10);
  }

  return result;
}

uint64_t sub_1001F25BC(uint64_t a1)
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
  v11[1] = sub_10000A1FC;

  return sub_1001EFE18(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1001F2698(uint64_t a1)
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
  v11[1] = sub_10000A1FC;

  return sub_1001F0738(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1001F2774(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_errorRetain();
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1001F2780(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return swift_unknownObjectRelease();
  }
}

uint64_t sub_1001F278C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10000A1FC;

  return sub_1001F1B38(a1, a2, v6, v7, v8);
}

uint64_t sub_1001F2858(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A1FC;

  return sub_1001F1F68(a1, v4, v5, v6);
}

uint64_t sub_1001F290C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000A600;

  return sub_1001F212C(a1, v4, v5, v7, v6);
}

uint64_t sub_1001F29CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&qword_1006BFC50, &unk_100539650);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001F2A3C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000A1FC;

  return sub_1001F1A34(a1, v4);
}

uint64_t sub_1001F2AE4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000A1FC;

  return sub_1001F1400(a1, v5, v4);
}

uint64_t sub_1001F2B8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001F2BF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001F2C54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FastSync.LeaveActivityAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001F2CB8(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000A1FC;

  return sub_1001EE800(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1001F2DAC()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1001F2DFC(uint64_t a1)
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
  v11[1] = sub_10000A600;

  return sub_1001EE310(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1001F2ED8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000A1FC;

  return sub_1001EF0E8(a1, v4, v5, v6, v7, v9, v8);
}

void sub_1001F303C(void *a1, void *a2, char a3, int a4, int a5, void *a6, void *a7, char *a8)
{
  v144 = a2;
  v142 = a4;
  v14 = sub_10015DA04(&qword_1006BEF28, &unk_100537260);
  __chkstk_darwin(v14 - 8);
  v16 = &v126 - v15;
  v17 = sub_10015DA04(&unk_1006BFEA0, &unk_100539BC0);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = &v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v126 - v21;
  if (a1 && a7 && a8)
  {
    LODWORD(v138) = a5;
    v140 = a8;
    v23 = a8;
    v24 = a7;
    v141 = a1;
    [v141 setCurrentNoteContainerViewMode:v144];
    v25 = [v141 selectionState];
    if (v25)
    {
      v139 = v24;
      v133 = a6;
      v135 = v22;
      v136 = v16;
      v137 = v20;
      v26 = v25;
      v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      v30 = v29;
      v31 = v27;
      v32 = sub_10015DA04(&qword_1006C42D0, &qword_1005433B0);
      sub_1000060B4(&unk_1006BFF00, &qword_1006C42D0, &qword_1005433B0, &protocol conformance descriptor for ICNavigableQueue<A>);
      v33 = 0;
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      v132 = v31;
      v126 = v32;
      v129 = v30;

      *&v159[32] = v155;
      *&v159[48] = v156;
      *&v159[64] = v157;
      *&v159[80] = v158;
      *v159 = v153;
      *&v159[16] = v154;
      v35 = swift_allocObject();
      *(v35 + 16) = a3 & 1;
      v36 = swift_allocObject();
      *(v36 + 16) = v138 & 1;
      v138 = sub_1001F7644;
      *&v163 = sub_1001F7644;
      *(&v163 + 1) = v35;
      v134 = sub_1001F2850;
      *&v164 = sub_1001F2850;
      *(&v164 + 1) = v36;
      *&v165 = a7;
      *(&v165 + 1) = v140;
      v166 = 0u;
      v167 = 0u;
      v37 = swift_allocObject();
      *(v37 + 16) = v143;
      v38 = v163;
      *(v37 + 40) = v164;
      v39 = v166;
      *(v37 + 56) = v165;
      *(v37 + 72) = v39;
      *(v37 + 88) = v167;
      *(v37 + 24) = v38;
      v40 = swift_allocObject();
      *(v40 + 16) = sub_1001F7580;
      *(v40 + 24) = v37;
      v41 = *&v159[24];
      v131 = *&v159[32];
      *&v159[24] = sub_100010890;
      *&v159[32] = v40;
      v42 = v23;
      v43 = v139;
      v139 = v42;
      v44 = v43;

      sub_10000C840(v41, v131);
      v45 = *&v159[40];
      v46 = *&v159[48];
      *&v159[40] = sub_1001F44C0;
      *&v159[48] = 0;
      v47 = sub_10000C840(v45, v46);
      v127 = &v159[8];
      *&v152[24] = *&v159[24];
      *&v152[40] = *&v159[40];
      *&v152[56] = *&v159[56];
      *&v152[72] = *&v159[72];
      *&v152[8] = *&v159[8];
      *v152 = *v159;
      __chkstk_darwin(v47);
      *(&v126 - 2) = v152;
      v48 = type metadata accessor for ICSelectionStateModel(0);
      OS_dispatch_queue.sync<A>(execute:)();
      v49 = *v151;
      v160[0] = v138;
      v160[1] = v35;
      v160[2] = v134;
      v160[3] = v36;
      v160[4] = a7;
      v160[5] = v140;
      v161 = 0u;
      v162 = 0u;
      v138 = v139;
      v139 = v44;

      v134 = v36;

      sub_1000108C4(v49, 0, v160);
      v128 = v48;
      v50 = [objc_allocWithZone(v48) init];
      v51 = v50;
      v130 = v35;
      v131 = v49;
      v140 = v50;
      if (v144)
      {
        if (v144 == 1)
        {

          if (v49[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_selectionReason] == 1)
          {
            v52 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
            swift_beginAccess();
            v53 = v135;
            sub_100006038(&v49[v52], v135, &unk_1006BFEA0, &unk_100539BC0);
            v54 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
            swift_beginAccess();
            v55 = &v140[v54];
            v51 = v140;
            sub_10000A49C(v53, v55, &unk_1006BFEA0, &unk_100539BC0);
            swift_endAccess();
          }
        }

        else
        {
        }

LABEL_50:
        if (sub_1000167F8())
        {
          objc_opt_self();
          v91 = swift_dynamicCastObjCClass();
          if (v91)
          {
            goto LABEL_57;
          }

          swift_unknownObjectRelease();
        }

        if (sub_1000167F8())
        {
          objc_opt_self();
          v91 = swift_dynamicCastObjCClass();
          if (v91)
          {
            goto LABEL_57;
          }

          swift_unknownObjectRelease();
        }

        v91 = sub_100016590();
LABEL_57:
        v92 = v91;
        sub_10000FE7C(v91, 0);

        v93 = *&v49[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_focusedNoteObjectID];
        v94 = *&v51[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_focusedNoteObjectID];
        *&v51[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_focusedNoteObjectID] = v93;
        v95 = v93;

        v96 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
        swift_beginAccess();
        v97 = v137;
        sub_100006038(&v140[v96], v137, &unk_1006BFEA0, &unk_100539BC0);
        v98 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
        LODWORD(v96) = (*(*(v98 - 8) + 48))(v97, 1, v98);
        v99 = sub_1000073B4(v97, &unk_1006BFEA0, &unk_100539BC0);
        v100 = v96 == 1;
        v101 = v140;
        if (v100)
        {
          v102 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_containerSelection;
          swift_beginAccess();
          v103 = v136;
          sub_100006038(v101 + v102, v136, &qword_1006BEF28, &unk_100537260);
          v104 = type metadata accessor for ICSelectionStateModel.ContainerSelection(0);
          if ((*(*(v104 - 8) + 48))(v103, 1, v104) == 1)
          {

            v105 = v138;
            v106 = v139;

            sub_10019671C(v132, v129);

            sub_1000073B4(v103, &qword_1006BEF28, &unk_100537260);
            *&v152[32] = *&v159[32];
            *&v152[48] = *&v159[48];
            *&v152[64] = *&v159[64];
            *&v152[80] = *&v159[80];
            *v152 = *v159;
            *&v152[16] = *&v159[16];
            v107 = v152;
LABEL_68:
            sub_1000073B4(v107, &qword_1006C42D0, &qword_1005433B0);
            return;
          }

          v99 = sub_1000073B4(v103, &qword_1006BEF28, &unk_100537260);
        }

        v108 = *v127;
        *&v152[24] = v127[1];
        v109 = v127[3];
        *&v152[40] = v127[2];
        *&v152[56] = v109;
        *&v152[72] = v127[4];
        *&v152[8] = v108;
        *v152 = *v159;
        __chkstk_darwin(v99);
        *(&v126 - 2) = v152;
        OS_dispatch_queue.sync<A>(execute:)();
        v110 = *v151;
        sub_1000108C4(*v151, 0, v160);
        sub_1000108C4(v101, 0, v160);

        v111 = static NSObject.== infix(_:_:)();
        v112 = v132;
        if ((v111 & 1) == 0)
        {
          v144 = v110;
          v113 = *v159;
          v114 = swift_allocObject();
          *(v114 + 16) = 0;
          v143 = 0;
          v115 = v140;
          *(v114 + 24) = v159;
          *(v114 + 32) = v115;
          *(v114 + 40) = 1;
          v116 = swift_allocObject();
          *(v116 + 16) = sub_100010864;
          *(v116 + 24) = v114;
          *&v152[32] = sub_10000EFBC;
          *&v152[40] = v116;
          *v152 = _NSConcreteStackBlock;
          *&v152[8] = 1107296256;
          *&v152[16] = sub_10000EAF8;
          *&v152[24] = &unk_100650DC8;
          v117 = _Block_copy(v152);
          v118 = v113;
          v119 = v115;

          v33 = v143;

          dispatch_sync(v118, v117);

          v110 = v144;
          v112 = v132;
          _Block_release(v117);
          LOBYTE(v117) = swift_isEscapingClosureAtFileLocation();

          if (v117)
          {
            __break(1u);
            return;
          }
        }

        type metadata accessor for JSONEncoder();
        swift_allocObject();
        JSONEncoder.init()();
        *&v152[32] = *&v159[32];
        *&v152[48] = *&v159[48];
        *&v152[64] = *&v159[64];
        *&v152[80] = *&v159[80];
        *v152 = *v159;
        *&v152[16] = *&v159[16];
        *&v151[48] = *&v159[48];
        *&v151[64] = *&v159[64];
        *&v151[80] = *&v159[80];
        *v151 = *v159;
        *&v151[16] = *&v159[16];
        *&v151[32] = *&v159[32];
        sub_100006038(v152, &v145, &qword_1006C42D0, &qword_1005433B0);
        sub_1000060B4(&unk_1006C43B0, &qword_1006C42D0, &qword_1005433B0, &protocol conformance descriptor for ICNavigableQueue<A>);
        v120 = dispatch thunk of JSONEncoder.encode<A>(_:)();
        if (v33)
        {

          v147 = *&v151[32];
          v148 = *&v151[48];
          v149 = *&v151[64];
          v150 = *&v151[80];
          v145 = *v151;
          v146 = *&v151[16];
          sub_1000073B4(&v145, &qword_1006C42D0, &qword_1005433B0);
          isa = 0;
        }

        else
        {
          v147 = *&v151[32];
          v148 = *&v151[48];
          v149 = *&v151[64];
          v150 = *&v151[80];
          v145 = *v151;
          v146 = *&v151[16];
          v123 = v120;
          v124 = v121;
          sub_1000073B4(&v145, &qword_1006C42D0, &qword_1005433B0);

          isa = Data._bridgeToObjectiveC()().super.isa;
          sub_10019671C(v123, v124);
        }

        v125 = v131;
        [v141 setSelectionState:isa];

        sub_10019671C(v112, v129);

        *&v151[48] = *&v159[48];
        *&v151[64] = *&v159[64];
        *&v151[80] = *&v159[80];
        *v151 = *v159;
        *&v151[16] = *&v159[16];
        *&v151[32] = *&v159[32];
        v107 = v151;
        goto LABEL_68;
      }

      if ((v142 & 1) == 0)
      {

LABEL_49:
        [v141 setIsSupplementaryContentVisible:1];
        goto LABEL_50;
      }

      *&v152[32] = *&v159[32];
      *&v152[48] = *&v159[48];
      *&v152[64] = *&v159[64];
      *&v152[80] = *&v159[80];
      *v152 = *v159;
      *&v152[16] = *&v159[16];
      v56 = __chkstk_darwin(v50);
      v57 = *&v152[32];
      *&v151[48] = *&v152[48];
      *&v151[64] = *&v152[64];
      v58 = *&v152[16];
      *v151 = *v152;
      *(&v126 - 2) = v143;
      *(&v126 - 1) = &v163;
      *&v151[80] = *&v152[80];
      *&v151[16] = v58;
      *&v151[32] = v57;
      __chkstk_darwin(v56);
      *(&v126 - 4) = v151;
      *(&v126 - 3) = sub_1001F758C;
      *(&v126 - 2) = v59;
      sub_100006038(v152, &v145, &qword_1006C42D0, &qword_1005433B0);
      sub_10015DA04(&qword_1006BFF10, &qword_100539C10);
      OS_dispatch_queue.sync<A>(execute:)();
      sub_1000073B4(v152, &qword_1006C42D0, &qword_1005433B0);
      v60 = v145;
      if (v145)
      {
        v61 = sub_100013FA4();
        v49 = v131;
        if (!v61)
        {
          v61 = sub_1001B9EA4();
        }
      }

      else
      {
        v61 = 0;
        v49 = v131;
      }

      v62 = sub_100013FA4();
      if (v62 || (v62 = sub_1001B9EA4()) != 0)
      {
        v63 = v62;
      }

      else
      {
        v90 = v61;
        v63 = v61;
      }

      v64 = v63;
      if (sub_1000167F8())
      {
        objc_opt_self();
        v65 = swift_dynamicCastObjCClass();
        if (v65)
        {
          goto LABEL_31;
        }

        swift_unknownObjectRelease();
      }

      if (sub_1000167F8())
      {
        objc_opt_self();
        v65 = swift_dynamicCastObjCClass();
        if (v65)
        {
          goto LABEL_31;
        }

        swift_unknownObjectRelease();
      }

      v65 = sub_100016590();
      if (!v65)
      {
        v68 = 0;
        if (v63)
        {
LABEL_32:
          v144 = v61;
          v69 = objc_allocWithZone(type metadata accessor for FolderListSelectionValidator());
          v70 = objc_opt_self();
          v71 = [v70 hidesSystemPaperNotesInCustomFolders];
          v72 = [v70 hidesMathNotesInCustomFolders];
          v73 = [v70 hidesCallNotesInCustomFolders];
          v74 = v69;
          v76 = v138;
          v75 = v139;
          v77 = [v74 initWithModernContext:v139 htmlContext:v138 hidesSystemPaperNotesInCustomFolders:v71 hidesMathNotesInCustomFolders:v72 hidesCallNotesInCustomFolders:v73];

          v78 = *v127;
          *&v151[24] = v127[1];
          v79 = v127[3];
          *&v151[40] = v127[2];
          *&v151[56] = v79;
          *&v151[72] = v127[4];
          *&v151[8] = v78;
          *v151 = *v159;
          __chkstk_darwin(v80);
          *(&v126 - 2) = v151;
          OS_dispatch_queue.sync<A>(execute:)();
          v81 = v145;
          v82 = sub_100016590();

          v83 = sub_100014954(v64);
          if (v83)
          {
            v84 = v83;
            v85 = sub_100014A9C(v83, v68, v82);

            if ((v85 & 1) == 0)
            {

              v63 = v133;
              v64 = v133;
              [v141 setIsSupplementaryContentVisible:1];
              v49 = v131;
              v51 = v140;
              if (!v63)
              {
                goto LABEL_50;
              }

LABEL_38:
              if ([v64 ic_isNoteType])
              {
                if ([v64 ic_isNoteType])
                {
LABEL_43:
                  v87 = v135;
                  *v135 = v63;
                  v87[1] = 0;
                  v88 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
                  swift_storeEnumTagMultiPayload();
                  (*(*(v88 - 8) + 56))(v87, 0, 1, v88);
                  v89 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
                  swift_beginAccess();
                  sub_10000A49C(v87, &v51[v89], &unk_1006BFEA0, &unk_100539BC0);
                  swift_endAccess();
                  v33 = 0;
                  goto LABEL_50;
                }
              }

              else if ([v64 ic_isInvitationType] && objc_msgSend(v64, "ic_isInvitationType"))
              {
                goto LABEL_43;
              }

              goto LABEL_50;
            }

            v86 = v141;
          }

          else
          {

            v86 = v141;
          }

          v49 = v131;
          v51 = v140;
          [v86 setIsSupplementaryContentVisible:1];
          goto LABEL_38;
        }

        goto LABEL_48;
      }

LABEL_31:
      v66 = v65;
      sub_10015DA04(&unk_1006BD390, &unk_100532CB0);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_100534670;
      *(v67 + 32) = v66;
      v68 = sub_1000143C4(v67);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v49 = v131;
      if (v63)
      {
        goto LABEL_32;
      }

LABEL_48:

      v51 = v140;
      goto LABEL_49;
    }

    v34 = v141;
  }
}

void sub_1001F437C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = *(a3 + 32);
    v5 = *(a3 + 48);
    v13 = *(a3 + 40);
    v14 = v4;
    v7 = *(a3 + 56);
    v6 = *(a3 + 64);
    v8 = *(a3 + 72);
    v9 = *(a3 + 16);
    v10 = *(a3 + 48);
    v15[2] = *(a3 + 32);
    v15[3] = v10;
    v15[4] = *(a3 + 64);
    v15[0] = *a3;
    v15[1] = v9;

    sub_100006038(&v14, v12, &qword_1006BFF18, &qword_100539C18);
    sub_100006038(&v13, v12, &qword_1006BFF18, &qword_100539C18);
    sub_100010854(v5, v7);
    sub_100010854(v6, v8);
    v11 = a1;
    sub_1000108C4(v11, 0, v15);

    sub_1000073B4(&v14, &qword_1006BFF18, &qword_100539C18);
    sub_1000073B4(&v13, &qword_1006BFF18, &qword_100539C18);
    sub_10000C840(v5, v7);
    sub_10000C840(v6, v8);
  }
}

uint64_t sub_1001F44CC(char **a1, uint64_t a2, _OWORD *a3)
{
  v3 = a3[3];
  v6[2] = a3[2];
  v6[3] = v3;
  v6[4] = a3[4];
  v4 = a3[1];
  v6[0] = *a3;
  v6[1] = v4;
  sub_1000108C4(*a1, 0, v6);
  result = sub_100013FA4();
  if (result || (result = sub_1001B9EA4()) != 0)
  {

    return 1;
  }

  return result;
}

uint64_t sub_1001F45FC(char *a1, void *a2)
{
  v4 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v44 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10015DA04(&unk_1006BFEF0, &unk_100537370);
  __chkstk_darwin(v7);
  v45 = &v39 - v8;
  v9 = sub_10015DA04(&qword_1006BEF28, &unk_100537260);
  __chkstk_darwin(v9 - 8);
  v11 = &v39 - v10;
  v12 = sub_10015DA04(&unk_1006BFEA0, &unk_100539BC0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v17 = __chkstk_darwin(v16);
  v19 = &v39 - v18;
  __chkstk_darwin(v17);
  v22 = &v39 - v21;
  if (!a2 || !a1)
  {
    goto LABEL_8;
  }

  v42 = v20;
  v23 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
  swift_beginAccess();
  v41 = v23;
  sub_100006038(&a1[v23], v22, &unk_1006BFEA0, &unk_100539BC0);
  v43 = *(v5 + 48);
  if (v43(v22, 1, v4) != 1)
  {
    v40 = v15;
    v27 = a2;
    v28 = a1;
    sub_1000073B4(v22, &unk_1006BFEA0, &unk_100539BC0);
    v29 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_containerSelection;
    swift_beginAccess();
    sub_100006038(v27 + v29, v11, &qword_1006BEF28, &unk_100537260);
    v30 = type metadata accessor for ICSelectionStateModel.ContainerSelection(0);
    if ((*(*(v30 - 8) + 48))(v11, 1, v30) == 1)
    {

      v24 = &qword_1006BEF28;
      v25 = &unk_100537260;
      v26 = v11;
      goto LABEL_7;
    }

    sub_1000073B4(v11, &qword_1006BEF28, &unk_100537260);
    v33 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
    swift_beginAccess();
    sub_100006038(v27 + v33, v19, &unk_1006BFEA0, &unk_100539BC0);
    if (v43(v19, 1, v4) == 1)
    {

LABEL_12:
      sub_1000073B4(v19, &unk_1006BFEA0, &unk_100539BC0);
      v31 = 1;
      return v31 & 1;
    }

    sub_1000073B4(v19, &unk_1006BFEA0, &unk_100539BC0);
    v34 = v42;
    sub_100006038(v27 + v33, v42, &unk_1006BFEA0, &unk_100539BC0);
    v35 = *(v7 + 48);
    v19 = v45;
    sub_100006038(v34, v45, &unk_1006BFEA0, &unk_100539BC0);
    v36 = v43;
    sub_100006038(&a1[v41], &v19[v35], &unk_1006BFEA0, &unk_100539BC0);
    if (v36(v19, 1, v4) == 1)
    {

      sub_1000073B4(v34, &unk_1006BFEA0, &unk_100539BC0);
      if (v36(&v19[v35], 1, v4) == 1)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v37 = v40;
      sub_100006038(v19, v40, &unk_1006BFEA0, &unk_100539BC0);
      if (v36(&v19[v35], 1, v4) != 1)
      {
        v38 = v44;
        sub_100011D7C(&v19[v35], v44, type metadata accessor for ICSelectionStateModel.ObjectSelection);
        v31 = sub_1001C3458(v37, v38);

        sub_100013E2C(v38);
        sub_1000073B4(v42, &unk_1006BFEA0, &unk_100539BC0);
        sub_100013E2C(v37);
        sub_1000073B4(v19, &unk_1006BFEA0, &unk_100539BC0);
        return v31 & 1;
      }

      sub_1000073B4(v42, &unk_1006BFEA0, &unk_100539BC0);
      sub_100013E2C(v37);
    }

    v24 = &unk_1006BFEF0;
    v25 = &unk_100537370;
    v26 = v19;
    goto LABEL_7;
  }

  v24 = &unk_1006BFEA0;
  v25 = &unk_100539BC0;
  v26 = v22;
LABEL_7:
  sub_1000073B4(v26, v24, v25);
LABEL_8:
  v31 = 0;
  return v31 & 1;
}

void sub_1001F4BF8(void *a1@<X0>, void *a2@<X1>, SEL *a4@<X3>, void *a5@<X8>)
{
  v8 = [a1 ic_existingObjectWithID:a2];
  if (!v8 || ((v9 = v8, objc_opt_self(), (v10 = swift_dynamicCastObjCClass()) == 0) ? (v11 = 0) : (v11 = [v10 *a4]), (v12 = objc_msgSend(v9, "isDeleted"), v9, v13 = 0, (v11 & 1) == 0) && (v12 & 1) == 0))
  {
    v14 = a2;
    v13 = a2;
  }

  *a5 = v13;
}

void sub_1001F4CB8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = [objc_opt_self() defaultAccountInContext:a1];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 defaultFolder];

    v6 = [v5 objectID];
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_1001F4D60(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = [a1 objectWithID:a2];
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    if ([v5 isSystemPaper])
    {
      v7 = [objc_opt_self() globalVirtualSystemPaperFolder];
LABEL_12:

      goto LABEL_13;
    }

    v8 = [v6 folder];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 isTrashFolder];
      v11 = [v9 account];
      v12 = v11;
      if (v11 && (v13 = [v11 hasAnyCustomFoldersIncludingSystem:0], (v10 & 1) == 0) && v13)
      {
        v12 = v12;
        v14 = [v12 objectID];
        v15 = v12;
      }

      else
      {
        v15 = v9;
        v14 = [v15 objectID];
      }

      v7 = v14;

      goto LABEL_12;
    }
  }

  v7 = 0;
LABEL_13:
  *a3 = v7;
}

void sub_1001F4F00(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = [a1 objectWithID:a2];
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  v6 = v5;
  if (!v5)
  {
    goto LABEL_11;
  }

  v7 = [v5 store];
  if (!v7 || (v8 = v7, v9 = [v7 account], v8, !v9) || (v10 = objc_msgSend(v9, "hasAnyCustomFolders"), v9, !v10))
  {
    v15 = [v6 store];
    if (v15)
    {
      v13 = v15;
      v14 = [v15 objectID];
      goto LABEL_10;
    }

LABEL_12:

    v6 = 0;
    goto LABEL_13;
  }

  v11 = [v6 store];
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = v11;
  v13 = [v11 account];

  if (!v13)
  {
    goto LABEL_12;
  }

  v14 = [v13 objectID];
LABEL_10:
  v6 = v14;

LABEL_11:
LABEL_13:
  *a3 = v6;
}

void sub_1001F5074(void *a1, uint64_t a2, void **a3)
{
  v4 = [a1 ic_existingObjectWithID:a2];
  if (v4)
  {
    v10 = v4;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = [v5 note];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 objectID];
      }

      else
      {

        v8 = 0;
      }

      v9 = *a3;
      *a3 = v8;
    }

    else
    {
      v9 = v10;
    }
  }
}

BOOL sub_1001F51A8()
{
  v1 = sub_10015DA04(&unk_1006BFEA0, &unk_100539BC0);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *v0;
  v5 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
  swift_beginAccess();
  sub_100006038(v4 + v5, v3, &unk_1006BFEA0, &unk_100539BC0);
  v6 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000073B4(v3, &unk_1006BFEA0, &unk_100539BC0);
  return v7;
}

char *sub_1001F52C0@<X0>(char **a1@<X8>)
{
  result = sub_10001566C(1, 1);
  *a1 = result;
  return result;
}

unint64_t sub_1001F52F4(uint64_t a1)
{
  v4 = *(a1 + 56);
  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
LABEL_3:
      v6 = __OFSUB__(v5, 1);
      v7 = v5 - 1;
      if (v6)
      {
        __break(1u);
      }

      else if ((v4 & 0xC000000000000001) == 0)
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v7 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v8 = *(v4 + 8 * v7 + 32);
          goto LABEL_8;
        }

        __break(1u);
        goto LABEL_28;
      }

      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:
      v1 = v8;
      v2 = *(a1 + 24);
      if (!v2)
      {
        return v1;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v1 = 0;
  v2 = *(a1 + 24);
  if (!v2)
  {
    return v1;
  }

LABEL_12:
  if (!(v4 >> 62))
  {
    v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_14;
    }

LABEL_21:
    v12 = 0;
    goto LABEL_22;
  }

  v9 = _CocoaArrayWrapper.endIndex.getter();
  if (!v9)
  {
    goto LABEL_21;
  }

LABEL_14:
  v6 = __OFSUB__(v9, 1);
  result = v9 - 1;
  if (v6)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_29:
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_19;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v4 + 8 * result + 32);
LABEL_19:
    v12 = v11;
LABEL_22:
    v13 = v12;
    v2(&v13);

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t ICNavigableQueue.resolution.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 68));
  v3 = *v2;
  sub_100010854(*v2, v2[1]);
  return v3;
}

uint64_t ICNavigableQueue.resolution.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 68));
  result = sub_10000C840(*v6, v6[1]);
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t ICNavigableQueue.duplicateCheck.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 72));
  v3 = *v2;
  sub_100010854(*v2, v2[1]);
  return v3;
}

uint64_t ICNavigableQueue.duplicateCheck.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 72));
  result = sub_10000C840(*v6, v6[1]);
  *v6 = a1;
  v6[1] = a2;
  return result;
}

unint64_t sub_1001F5590(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10064BF98, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001F55E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_1001F5654(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t sub_1001F56C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_1001F5730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

unint64_t sub_1001F57A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[1];
  v5._countAndFlagsBits = *a1;
  v5._object = v3;
  result = sub_1001F5590(v5);
  *a2 = result;
  return result;
}

uint64_t sub_1001F57E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10002ADBC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1001F582C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1001F55DC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001F5864@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1001F7438();
  *a2 = result;
  return result;
}

uint64_t sub_1001F589C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_1001F58F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t ICNavigableQueue.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v13 = *(a2 + 16);
  v17 = v13;
  v18 = v4;
  v14 = *(a2 + 40);
  v19 = v14;
  type metadata accessor for ICNavigableQueue.CodingKeys(255, &v17);
  swift_getWitnessTable();
  v5 = type metadata accessor for KeyedEncodingContainer();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v12 - v7;
  sub_10017CC60(a1, a1[3]);
  v9 = v12[1];
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v17 = *(v9 + *(a2 + 76));
  v20 = 0;
  type metadata accessor for Array();
  v16 = v14;
  swift_getWitnessTable();
  v10 = v15;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v10)
  {
    LOBYTE(v17) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v17 = *(v9 + *(a2 + 84));
    v20 = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ICNavigableQueue.init(from:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v58 = a1;
  v43 = a7;
  v60 = a2;
  v61 = a3;
  v62 = a4;
  v63 = a5;
  v64 = a6;
  v52 = type metadata accessor for ICNavigableQueue.CodingKeys(255, &v60);
  WitnessTable = swift_getWitnessTable();
  v12 = type metadata accessor for KeyedDecodingContainer();
  v45 = *(v12 - 8);
  v46 = v12;
  __chkstk_darwin(v12);
  v57 = &v42 - v13;
  v56 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v51 = *(v56 - 8);
  __chkstk_darwin(v56);
  v50 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v15);
  v49 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v17 - 8);
  v60 = a2;
  v61 = a3;
  v44 = a4;
  v62 = a4;
  v63 = a5;
  v64 = a6;
  v18 = type metadata accessor for ICNavigableQueue(0, &v60);
  v55 = *(v18 - 1);
  __chkstk_darwin(v18);
  v20 = (&v42 - v19);
  v21 = sub_1000054A4(0, &qword_1006BE9E0, OS_dispatch_queue_ptr);
  v47 = " will be appended to the note";
  v48 = v21;
  static DispatchQoS.unspecified.getter();
  v60 = _swiftEmptyArrayStorage;
  sub_1001F621C();
  sub_10015DA04(&unk_1006BFD50, &qword_1005398C0);
  sub_1000060B4(&qword_1006BCB90, &unk_1006BFD50, &qword_1005398C0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (v51[13])(v50, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v56);
  v22 = v58;
  *v20 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v20[1] = 50;
  v23 = a2;
  (*(*(a2 - 1) + 56))(v20 + v18[16], 1, 1, a2);
  v24 = (v20 + v18[17]);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v20 + v18[18]);
  *v25 = 0;
  v25[1] = 0;
  v26 = v18[19];
  v27 = Array.init()();
  v49 = v26;
  v50 = v23;
  *&v26[v20] = v27;
  v28 = (v20 + v18[20]);
  *v28 = 0;
  *(v28 + 8) = 1;
  v56 = v18;
  v29 = v18[21];
  v30 = Array.init()();
  v51 = v20;
  *(v20 + v29) = v30;
  sub_10017CC60(v22, v22[3]);
  v31 = v54;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v31)
  {
    v32 = v51;
    sub_100009F60(v58);
    return (*(v55 + 8))(v32, v56);
  }

  else
  {
    v52 = v30;
    WitnessTable = v29;
    v54 = v28;
    v33 = v49;
    type metadata accessor for Array();
    v65 = 0;
    v59 = v44;
    swift_getWitnessTable();
    KeyedDecodingContainer.decode<A>(_:forKey:)();

    v34 = v51;
    *&v33[v51] = v60;
    v35 = v34;
    LOBYTE(v60) = 1;
    v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v37 = v54;
    *v54 = v36;
    *(v37 + 8) = v38 & 1;
    v65 = 2;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v45 + 8))(v57, v46);

    *(v35 + WitnessTable) = v60;
    v41 = v55;
    v40 = v56;
    (*(v55 + 16))(v43, v35, v56);
    sub_100009F60(v58);
    return (*(v41 + 8))(v35, v40);
  }
}

unint64_t sub_1001F621C()
{
  result = qword_1006BCB80;
  if (!qword_1006BCB80)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BCB80);
  }

  return result;
}

__n128 sub_1001F62B4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1001F62F4(unint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((((((((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void sub_1001F6494(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v8 & 0x80000000) != 0)
  {
    v20 = ((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10);
    if (v8 >= a2)
    {
      v24 = *(v6 + 56);
      v25 = a2 + 1;
      v26 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10;

      v24(v26, v25);
    }

    else
    {
      if (v11 <= 3)
      {
        v21 = ~(-1 << (8 * v11));
      }

      else
      {
        v21 = -1;
      }

      if (v11)
      {
        v22 = v21 & (~v8 + a2);
        if (v11 <= 3)
        {
          v23 = v11;
        }

        else
        {
          v23 = 4;
        }

        bzero(v20, v11);
        if (v23 > 2)
        {
          if (v23 == 3)
          {
            *v20 = v22;
            v20[2] = BYTE2(v22);
          }

          else
          {
            *v20 = v22;
          }
        }

        else if (v23 == 1)
        {
          *v20 = v22;
        }

        else
        {
          *v20 = v22;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

Swift::Int sub_1001F6768(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10015DA04(&qword_1006BDC88, &unk_100539BE0);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_1000054A4(0, &qword_1006BFEC0, NSManagedObjectID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1002E25D8(v12 + 1, 1);
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

uint64_t sub_1001F6994(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

id sub_1001F6A24(void *a1, void *a2, void *a3)
{
  v6 = sub_10015DA04(&qword_1006BCC20, &qword_100531F40);
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  if (!a1)
  {
    return 0;
  }

  result = [a1 selectionState];
  if (!result)
  {
    return result;
  }

  v10 = result;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_10015DA04(&qword_1006C42D0, &qword_1005433B0);
  sub_1000060B4(&unk_1006BFF00, &qword_1006C42D0, &qword_1005433B0, &protocol conformance descriptor for ICNavigableQueue<A>);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  v28[2] = v32;
  v28[3] = v33;
  v28[4] = v34;
  v29 = v35;
  v28[0] = v30;
  v28[1] = v31;
  v26 = v35;
  v23 = v32;
  v24 = v33;
  v25 = v34;
  v21 = v30;
  v22 = v31;
  __chkstk_darwin(v14);
  *(&v21 - 2) = &v21;
  sub_10015DA04(&qword_1006BFF10, &qword_100539C10);
  OS_dispatch_queue.sync<A>(execute:)();
  v15 = v27;
  if (!v27)
  {
    sub_10019671C(v11, v13);
    sub_1000073B4(v28, &qword_1006C42D0, &qword_1005433B0);
    return 0;
  }

  v16 = a3;
  v17 = a2;
  v18 = sub_100013FA4();
  if (v18)
  {
    v19 = v18;
    sub_10019671C(v11, v13);
    sub_1000073B4(v28, &qword_1006C42D0, &qword_1005433B0);

    return v19;
  }

  else
  {
    sub_1001B9BD8(v8);
    *&v21 = variable initialization expression of AsyncChannel.Iterator.active;
    *(&v21 + 1) = 0;
    *&v22 = variable initialization expression of AsyncChannel.Iterator.active;
    *(&v22 + 1) = 0;
    *&v23 = a2;
    *(&v23 + 1) = a3;
    v24 = 0u;
    v25 = 0u;
    v20 = sub_10000F54C(v8, &v21);
    sub_10019671C(v11, v13);
    sub_1000073B4(v28, &qword_1006C42D0, &qword_1005433B0);

    sub_1000073B4(v8, &qword_1006BCC20, &qword_100531F40);
    return v20;
  }
}

void sub_1001F6D70(void *a1, void *a2)
{
  if (!*a2)
  {
    v7 = 0;
    v10 = 0;
    if (!a1)
    {
      return;
    }

    goto LABEL_15;
  }

  v4 = a2[4];
  v3 = a2[5];
  v5 = a2[8];
  v6 = a2[6];
  if (v6 && (v7 = v6()) != 0)
  {
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = v4;
    v7 = v4;
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  v9 = v5();
  v10 = v9;
  if (v9)
  {
    if (!a1)
    {
      goto LABEL_11;
    }

LABEL_15:
    v12 = a1;
    if ([v12 ic_isInvitationType])
    {
      [objc_opt_self() globalVirtualSharedWithYouFolder];

LABEL_31:
      return;
    }

    v13 = [v12 ic_isModernNoteType];
    if (v13 && v7)
    {
      __chkstk_darwin(v13);
      sub_10015DA04(&unk_1006BFEE0, &unk_100539C00);
      NSManagedObjectContext.performAndWait<A>(_:)();

      return;
    }

    v14 = [v12 ic_isLegacyNoteType];
    if (v14)
    {
      if (v10)
      {
        __chkstk_darwin(v14);
        sub_10015DA04(&unk_1006BFEE0, &unk_100539C00);
        NSManagedObjectContext.performAndWait<A>(_:)();

        return;
      }
    }

    else
    {
    }

    return;
  }

LABEL_10:
  v9 = v3;
  v10 = v3;
  if (a1)
  {
    goto LABEL_15;
  }

LABEL_11:
  if (v7)
  {
    __chkstk_darwin(v9);
    v11 = v7;
    sub_10015DA04(&unk_1006BFEE0, &unk_100539C00);
    NSManagedObjectContext.performAndWait<A>(_:)();

    if (v19)
    {

      return;
    }

    if (!v10)
    {

      return;
    }

LABEL_27:
    v15 = [objc_opt_self() sharedNotesApp];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 noteContext];

      if (v17)
      {
        v18 = [v17 defaultStoreForNewNote];

        if (v18)
        {
          [v18 objectID];

          goto LABEL_31;
        }

        goto LABEL_38;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_38:
    __break(1u);
    return;
  }

  if (v10)
  {
    goto LABEL_27;
  }
}

void *sub_1001F70FC(void *a1, void *a2)
{
  v2 = a2[6];
  if (*a2)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 0;
  }

  result = v2();
  if (!result)
  {
    return result;
  }

  v21[0] = variable initialization expression of AsyncChannel.Iterator.active;
  v21[1] = 0;
  v21[2] = variable initialization expression of AsyncChannel.Iterator.active;
  v21[3] = 0;
  v21[4] = result;
  v22 = 0u;
  v23 = 0u;
  v24 = 0;
  v6 = result;
  v7 = sub_10000F864(a1, v21);
  if (v7)
  {
    v8 = v7;
    if ([v7 ic_isBaseAttachmentType])
    {
      v20 = 0;
      v9 = swift_allocObject();
      v9[2] = v6;
      v9[3] = v8;
      v9[4] = &v20;
      v10 = swift_allocObject();
      v10[2] = sub_1001F7574;
      v10[3] = v9;
      aBlock[4] = sub_10000EFBC;
      aBlock[5] = v10;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000EAF8;
      aBlock[3] = &unk_100650CB0;
      v11 = _Block_copy(aBlock);
      v12 = v6;

      v13 = v8;

      [v12 performBlockAndWait:v11];

      _Block_release(v11);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
        return result;
      }

      if (v20)
      {
        v15 = v20;
        v16 = v12;
        v12 = v15;
        v17 = [v12 ic_isModernType];
        if ((v17 & 1) == 0)
        {
          [v12 ic_isLegacyType];

          goto LABEL_18;
        }

        __chkstk_darwin(v17);
        sub_10015DA04(&unk_1006BFED0, &qword_100536F30);
        NSManagedObjectContext.performAndWait<A>(_:)();

        if (aBlock[0])
        {

          v18 = v20;

          return v8;
        }
      }

      else
      {

        v13 = v12;
      }

LABEL_18:
      v6 = v20;

      goto LABEL_19;
    }
  }

LABEL_19:
  return 0;
}

uint64_t sub_1001F7498(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10015DA04(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1001F75B4@<X0>(unint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v4 + 48);
  v8[2] = *(v4 + 32);
  v8[3] = v5;
  v8[4] = *(v4 + 64);
  v9 = *(v4 + 80);
  v6 = *(v4 + 16);
  v8[0] = *v4;
  v8[1] = v6;
  result = sub_1001F52F4(v8);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1001F764C(uint64_t a1)
{
  v2 = sub_10015DA04(&qword_1006C0468, &qword_10053AB50);
  v42 = *(v2 - 8);
  v43 = v2;
  __chkstk_darwin(v2);
  v4 = &v32 - v3;
  v5 = sub_10015DA04(&qword_1006C0470, &qword_10053AB58);
  __chkstk_darwin(v5);
  sub_10021B230();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._countAndFlagsBits = 0x20796D20646441;
  v6._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  v39 = sub_10021BF7C();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7._countAndFlagsBits = 0x20796D206F7420;
  v7._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  v41 = sub_10001DB74(&qword_1006BE480, type metadata accessor for NoteEntity, &protocol conformance descriptor for NoteEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 0x2E65746F6E20;
  v8._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  v38 = v4;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v36 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v9 = v43;
  v10 = *(v42 + 8);
  v42 += 8;
  v10(v4, v43);
  v40 = v10;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 543450177;
  v11._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  v37 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0x796D206F746E6920;
  v12._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 0x2E65746F6E20;
  v13._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  v14 = v38;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v35 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10(v14, v9);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0x2065687420646441;
  v15._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 0x796D206F746E6920;
  v16._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._countAndFlagsBits = 0x2E65746F6E20;
  v17._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  v18 = v38;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v34 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v40(v18, v43);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v19._countAndFlagsBits = 0x7420747265736E49;
  v19._object = 0xEB00000000206568;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v20._countAndFlagsBits = 0x6874206F746E6920;
  v20._object = 0xEA00000000002065;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21._countAndFlagsBits = 0x2E65746F6E20;
  v21._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v33 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v22 = v40;
  v40(v18, v43);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v23._countAndFlagsBits = 0x2065687420747550;
  v23._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v24._countAndFlagsBits = 0x796D206F746E6920;
  v24._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v25._countAndFlagsBits = 0x2E65746F6E20;
  v25._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v26 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v22(v18, v43);
  sub_10015DA04(&unk_1006C0478, &qword_10053AB60);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100539C20;
  v28 = v35;
  *(v27 + 32) = v36;
  *(v27 + 40) = v28;
  v29 = v33;
  *(v27 + 48) = v34;
  *(v27 + 56) = v29;
  *(v27 + 64) = v26;
  v30 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v30;
}

uint64_t sub_1001F7E4C(uint64_t a1)
{
  v2 = sub_10015DA04(&qword_1006BCE98, &unk_10054C4B0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_100006038(a1, &v9 - v6, &qword_1006BCE98, &unk_10054C4B0);
  sub_100006038(v7, v5, &qword_1006BCE98, &unk_10054C4B0);
  IntentParameter.wrappedValue.setter();
  return sub_1000073B4(v7, &qword_1006BCE98, &unk_10054C4B0);
}

uint64_t sub_1001F7F40()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10001DB74(&qword_1006BE480, type metadata accessor for NoteEntity, &protocol conformance descriptor for NoteEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10021B230();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_10021BF7C();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10015DA04(&qword_1006C0008, &qword_100539D70);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100535E30;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_1001F8160()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58, &qword_100539CF8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100539C30;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v5;
}

uint64_t sub_1001F8264()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58, &qword_100539CF8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100539C30;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v5;
}

uint64_t sub_1001F8364(uint64_t a1)
{
  v35 = a1;
  v34 = sub_10015DA04(&qword_1006C0440, &qword_10053AAE0);
  v1 = *(v34 - 8);
  __chkstk_darwin(v34);
  v3 = &v26 - v2;
  v4 = sub_10015DA04(&qword_1006C0448, &qword_10053AAE8);
  __chkstk_darwin(v4);
  sub_10002062C();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0x20796D206B636F4CLL;
  v5._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  v33 = sub_10021B940();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._countAndFlagsBits = 0x2E65746F6E20;
  v6._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v30 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8 = v1 + 8;
  v7 = *(v1 + 8);
  v9 = v34;
  v7(v3, v34);
  v31 = v8;
  v32 = v7;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._object = 0x80000001005678A0;
  v10._countAndFlagsBits = 0xD000000000000011;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 0x2E65746F6E20;
  v11._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v29 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v7(v3, v9);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0x20796D20747550;
  v12._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 0xD000000000000015;
  v13._object = 0x80000001005678C0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v28 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v32(v3, v34);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0x20796D206B636F4CLL;
  v14._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 0xD000000000000012;
  v15._object = 0x80000001005678E0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v27 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v16 = v34;
  v17 = v32;
  v32(v3, v34);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 0xD000000000000016;
  v18._object = 0x8000000100567900;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._countAndFlagsBits = 0x2E65746F6E20;
  v19._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v20 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v17(v3, v16);
  sub_10015DA04(&qword_1006C0450, &qword_10053AAF0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100539C20;
  v22 = v29;
  *(v21 + 32) = v30;
  *(v21 + 40) = v22;
  v23 = v27;
  *(v21 + 48) = v28;
  *(v21 + 56) = v23;
  *(v21 + 64) = v20;
  v24 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v24;
}

uint64_t sub_1001F8950(uint64_t a1)
{
  v2 = sub_10015DA04(&unk_1006BCAC0, &unk_1005395D0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_100006038(a1, &v9 - v6, &unk_1006BCAC0, &unk_1005395D0);
  sub_100006038(v7, v5, &unk_1006BCAC0, &unk_1005395D0);
  IntentParameter.wrappedValue.setter();
  return sub_1000073B4(v7, &unk_1006BCAC0, &unk_1005395D0);
}

uint64_t sub_1001F8A44()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10021B940();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10002062C();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_10021BF28();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10015DA04(&qword_1006C0008, &qword_100539D70);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100535E30;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_1001F8C34()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58, &qword_100539CF8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100539C20;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_1001F8D58(uint64_t a1)
{
  v28 = sub_10015DA04(&qword_1006C0440, &qword_10053AAE0);
  v30 = *(v28 - 8);
  __chkstk_darwin(v28);
  v3 = &v23 - v2;
  v4 = sub_10015DA04(&qword_1006C0448, &qword_10053AAE8);
  __chkstk_darwin(v4);
  sub_10002062C();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._object = 0x8000000100567760;
  v5._countAndFlagsBits = 0xD000000000000018;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  v23 = sub_10021B940();
  v29 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._countAndFlagsBits = 0x2E65746F6E20;
  v6._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8 = *(v30 + 8);
  v26 = v7;
  v27 = v8;
  v30 += 8;
  v9 = v28;
  v8(v3, v28);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0x20796D2065766F4DLL;
  v10._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 0xD000000000000021;
  v11._object = 0x8000000100567780;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v25 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12 = v27;
  v27(v3, v9);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._object = 0x80000001005677B0;
  v13._countAndFlagsBits = 0x1000000000000039;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 0x2E65746F6E20;
  v14._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v24 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v15 = v28;
  v12(v3, v28);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._countAndFlagsBits = 0xD00000000000001FLL;
  v16._object = 0x80000001005677F0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._countAndFlagsBits = 0x2E65746F6E20;
  v17._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v18 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v27(v3, v15);
  sub_10015DA04(&qword_1006C0450, &qword_10053AAF0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100539C30;
  v20 = v25;
  *(v19 + 32) = v26;
  *(v19 + 40) = v20;
  *(v19 + 48) = v24;
  *(v19 + 56) = v18;
  v21 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v21;
}

uint64_t sub_1001F9280()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10021B940();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10002062C();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_10021BF28();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10015DA04(&qword_1006C0008, &qword_100539D70);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100535E30;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_1001F9470()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58, &qword_100539CF8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100539C20;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_1001F95A8(uint64_t a1)
{
  v2 = sub_10015DA04(&qword_1006C0428, &qword_10053AA78);
  v3 = *(v2 - 8);
  v42 = v2;
  v43 = v3;
  __chkstk_darwin(v2);
  v5 = &v32 - v4;
  v6 = sub_10015DA04(&qword_1006C0430, &qword_10053AA80);
  __chkstk_darwin(v6);
  sub_1001D110C();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0x206120646441;
  v7._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  v40 = sub_10001DCF0();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 0x206F742067617420;
  v8._object = 0xEB0000000020796DLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  v39 = sub_100184E54();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 0x2E65746F6E20;
  v9._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v37 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10 = v42;
  v41 = *(v43 + 8);
  v43 += 8;
  v41(v5, v42);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x6174206120747550;
  v11._object = 0xEE0020726F662067;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  v38 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0x796D206F746E6920;
  v12._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 0x2E65746F6E20;
  v13._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  v33 = v5;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v36 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v14 = v41;
  v41(v5, v10);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0x20656874206E49;
  v15._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._object = 0x8000000100567700;
  v16._countAndFlagsBits = 0xD000000000000018;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._countAndFlagsBits = 46;
  v17._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  v18 = v33;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v35 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v14(v18, v42);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v19._countAndFlagsBits = 0x6120747265736E49;
  v19._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v20._countAndFlagsBits = 0x746E692067617420;
  v20._object = 0xEE0020656874206FLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21._countAndFlagsBits = 0x2E65746F6E20;
  v21._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v34 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v22 = v42;
  v41(v18, v42);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v23._countAndFlagsBits = 0x6120657461657243;
  v23._object = 0xEA0000000000206ELL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v24._countAndFlagsBits = 0x206E692067617420;
  v24._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v25._countAndFlagsBits = 0x2E65746F6E20;
  v25._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v26 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v41(v18, v22);
  sub_10015DA04(&qword_1006C0438, &qword_10053AA88);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100539C20;
  v28 = v36;
  *(v27 + 32) = v37;
  *(v27 + 40) = v28;
  v29 = v34;
  *(v27 + 48) = v35;
  *(v27 + 56) = v29;
  *(v27 + 64) = v26;
  v30 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v30;
}

uint64_t sub_1001F9DA0()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10001DCF0();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_1001D110C();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_100184E54();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10015DA04(&qword_1006C0008, &qword_100539D70);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100535E30;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_1001F9F90()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58, &qword_100539CF8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100539C20;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_1001FA0A4()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58, &qword_100539CF8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100539C20;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_1001FA1CC(uint64_t a1)
{
  v40 = sub_10015DA04(&qword_1006C0410, &qword_10053AA10);
  v42 = *(v40 - 8);
  __chkstk_darwin(v40);
  v3 = v32 - v2;
  v4 = sub_10015DA04(&qword_1006C0418, &qword_10053AA18);
  __chkstk_darwin(v4);
  v5 = sub_1001A6C8C();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._countAndFlagsBits = 543450177;
  v6._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  v39 = sub_10001DB74(&qword_1006C5410, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7._object = 0x8000000100567600;
  v7._countAndFlagsBits = 0xD000000000000012;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  v38 = sub_10001DB74(&qword_1006BE480, type metadata accessor for NoteEntity, &protocol conformance descriptor for NoteEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 0x2E65746F6E20;
  v8._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v32[1] = v5;
  v36 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v41 = *(v42 + 8);
  v42 += 8;
  v9 = v40;
  v41(v3, v40);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._object = 0x8000000100567620;
  v10._countAndFlagsBits = 0xD000000000000012;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 0x61202C65746F6E20;
  v11._object = 0xEB00000000206464;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 46;
  v12._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  v37 = v3;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v35 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v41(v3, v9);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 543450177;
  v13._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  v32[0] = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 0xD000000000000015;
  v14._object = 0x8000000100567640;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 0x2E65746F6E20;
  v15._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  v16 = v37;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v34 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v17 = v41;
  v41(v16, v40);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 0xD000000000000014;
  v18._object = 0x8000000100567660;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._countAndFlagsBits = 0x77202C65746F6E20;
  v19._object = 0xED00002065746972;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v20._countAndFlagsBits = 46;
  v20._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  v21 = v37;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v33 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v22 = v40;
  v17(v21, v40);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v23._countAndFlagsBits = 0x20796D206E49;
  v23._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v24._countAndFlagsBits = 0x61202C65746F6E20;
  v24._object = 0xEB00000000206464;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v25._countAndFlagsBits = 46;
  v25._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v26 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v41(v21, v22);
  sub_10015DA04(&qword_1006C0420, &qword_10053AA20);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100539C20;
  v28 = v35;
  *(v27 + 32) = v36;
  *(v27 + 40) = v28;
  v29 = v33;
  *(v27 + 48) = v34;
  *(v27 + 56) = v29;
  *(v27 + 64) = v26;
  v30 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v30;
}

uint64_t sub_1001FAA10(uint64_t a1)
{
  v2 = type metadata accessor for AttributedString();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  IntentParameter.wrappedValue.setter();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_1001FAB44()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10001DB74(&qword_1006C5410, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_1001A6C8C();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_10001DB74(&qword_1006BE480, type metadata accessor for NoteEntity, &protocol conformance descriptor for NoteEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10015DA04(&qword_1006C0008, &qword_100539D70);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100535E30;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_1001FAD94()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58, &qword_100539CF8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100539C20;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_1001FAEA4()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58, &qword_100539CF8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100539C20;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_1001FAFCC()
{
  v0 = sub_10015DA04(&qword_1006C0400, &qword_10053A938);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - v2;
  sub_10002074C();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v4 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v6 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v8 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10015DA04(&qword_1006C0408, &qword_10053A940);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100539C30;
  *(v9 + 32) = v4;
  *(v9 + 40) = v6;
  *(v9 + 48) = v7;
  *(v9 + 56) = v8;
  v10 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v10;
}

uint64_t sub_1001FB25C()
{
  v0 = sub_10015DA04(&qword_1006C0400, &qword_10053A938);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - v2;
  sub_10002074C();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v4 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v6 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v8 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10015DA04(&qword_1006C0408, &qword_10053A940);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100539C30;
  *(v9 + 32) = v4;
  *(v9 + 40) = v6;
  *(v9 + 48) = v7;
  *(v9 + 56) = v8;
  v10 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v10;
}

uint64_t sub_1001FB4F0()
{
  v0 = sub_10015DA04(&qword_1006C0400, &qword_10053A938);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - v2;
  sub_10002074C();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v4 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v6 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v8 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10015DA04(&qword_1006C0408, &qword_10053A940);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100539C30;
  *(v9 + 32) = v4;
  *(v9 + 40) = v6;
  *(v9 + 48) = v7;
  *(v9 + 56) = v8;
  v10 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v10;
}

uint64_t sub_1001FB780()
{
  v0 = sub_10015DA04(&qword_1006C0400, &qword_10053A938);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - v2;
  sub_10002074C();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v4 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v6 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v8 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10015DA04(&qword_1006C0408, &qword_10053A940);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100539C30;
  *(v9 + 32) = v4;
  *(v9 + 40) = v6;
  *(v9 + 48) = v7;
  *(v9 + 56) = v8;
  v10 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v10;
}

uint64_t sub_1001FBA10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for _AssistantIntent.Value();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10021BC88(&qword_1006C03E8, &qword_1006C03F0, &qword_10053A930, sub_10021BE98);
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10002074C();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v7 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v4 + 8))(v6, v3);
  sub_10015DA04(&qword_1006C0008, &qword_100539D70);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100531E30;
  *(v8 + 32) = v7;
  v9 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v9;
}

uint64_t sub_1001FBBAC()
{
  v0 = sub_10015DA04(&qword_1006C03D8, &qword_10053A8F8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - v2;
  sub_10002086C();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v4 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v6 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10015DA04(&qword_1006C03E0, &qword_10053A900);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100539C40;
  *(v8 + 32) = v4;
  *(v8 + 40) = v6;
  *(v8 + 48) = v7;
  v9 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v9;
}

uint64_t sub_1001FBDC4()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1001D4648();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10002086C();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_10001DB74(&qword_1006C03A0, &type metadata accessor for ChangeOperation, &protocol conformance descriptor for ChangeOperation);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10015DA04(&qword_1006C0008, &qword_100539D70);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100535E30;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_1001FBFE4(uint64_t a1)
{
  v2 = type metadata accessor for ChangeOperation();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  IntentParameter.wrappedValue.setter();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_1001FC118()
{
  v0 = sub_10015DA04(&qword_1006C03D8, &qword_10053A8F8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - v2;
  sub_10002086C();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v4 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  (*(v1 + 8))(v3, v0);
  sub_10015DA04(&qword_1006C03E0, &qword_10053A900);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100531E30;
  *(v5 + 32) = v4;
  v6 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_1001FC27C()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1001D4648();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10002086C();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_10001DB74(&qword_1006C03A0, &type metadata accessor for ChangeOperation, &protocol conformance descriptor for ChangeOperation);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10015DA04(&qword_1006C0008, &qword_100539D70);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100535E30;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_1001FC4B0()
{
  v0 = sub_10015DA04(&qword_1006C03D8, &qword_10053A8F8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - v2;
  sub_10002086C();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v4 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v6 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10015DA04(&qword_1006C03E0, &qword_10053A900);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100535E30;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_1001FC670()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1001D4648();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10002086C();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_10001DB74(&qword_1006C03A0, &type metadata accessor for ChangeOperation, &protocol conformance descriptor for ChangeOperation);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10015DA04(&qword_1006C0008, &qword_100539D70);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100535E30;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_1001FC8A8(uint64_t a1)
{
  v2 = sub_10015DA04(&qword_1006C03C0, &qword_10053A890);
  v3 = *(v2 - 8);
  v67 = v2;
  v68 = v3;
  __chkstk_darwin(v2);
  v65 = v52 - v4;
  v5 = type metadata accessor for _AssistantIntent.PhraseToken();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10015DA04(&qword_1006C03C8, &qword_10053A898);
  __chkstk_darwin(v9);
  v10 = sub_1000215EC();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._object = 0x8000000100566D50;
  v11._countAndFlagsBits = 0xD000000000000012;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  LODWORD(v59) = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v12 = *(v6 + 104);
  v57 = v6 + 104;
  v58 = v12;
  v54 = v5;
  v12(v8);
  v53 = v8;
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v13 = *(v6 + 8);
  v55 = v6 + 8;
  v56 = v13;
  v13(v8, v5);
  v14._countAndFlagsBits = 0x6E69207461687420;
  v14._object = 0xEE00206564756C63;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  v64 = sub_10001DCF0();
  v66 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 46;
  v15._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  v16 = v65;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v17 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v18 = v67;
  v20 = v68 + 8;
  v19 = *(v68 + 8);
  v62 = v17;
  v63 = v19;
  v19(v16, v67);
  v68 = v20;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v21._countAndFlagsBits = 0xD000000000000023;
  v21._object = 0x8000000100567060;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v22._countAndFlagsBits = 46;
  v22._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  v23 = v65;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v61 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v24 = v63;
  v63(v23, v18);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v25._countAndFlagsBits = 0x74207463656C6553;
  v25._object = 0xEB00000000206568;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v26._countAndFlagsBits = 0x2E67617420;
  v26._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  v27 = v65;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v60 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v28 = v27;
  v24(v27, v67);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v29._countAndFlagsBits = 0x6D207463656C6553;
  v29._object = 0xEA00000000002079;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v29);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v30._countAndFlagsBits = 0x206E692067617420;
  v30._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);
  v32 = v53;
  v31 = v54;
  v58(v53, v59, v54);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v56(v32, v31);
  v33._countAndFlagsBits = 46;
  v33._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v33);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v52[1] = v10;
  v59 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v34 = v67;
  v35 = v63;
  v63(v28, v67);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v36._countAndFlagsBits = 0xD000000000000025;
  v36._object = 0x8000000100567090;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v36);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v37._countAndFlagsBits = 46;
  v37._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v37);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v58 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v35(v28, v34);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v38._countAndFlagsBits = 0x7463656C65736544;
  v38._object = 0xED00002065687420;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v38);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v39._countAndFlagsBits = 0x2E67617420;
  v39._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v39);
  v40 = v28;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v57 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v41 = v28;
  v42 = v67;
  v35(v41, v67);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v43._countAndFlagsBits = 0xD000000000000013;
  v43._object = 0x80000001005670C0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v43);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v44._countAndFlagsBits = 0x2E67617420;
  v44._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v44);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v45 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v35(v40, v42);
  sub_10015DA04(&qword_1006C03D0, &qword_10053A8A0);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_100539C50;
  v47 = v61;
  *(v46 + 32) = v62;
  *(v46 + 40) = v47;
  v48 = v59;
  *(v46 + 48) = v60;
  *(v46 + 56) = v48;
  v49 = v57;
  *(v46 + 64) = v58;
  *(v46 + 72) = v49;
  *(v46 + 80) = v45;
  v50 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v50;
}

uint64_t sub_1001FD1DC()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10001DCF0();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_1000215EC();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10015DA04(&qword_1006C0008, &qword_100539D70);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100535E30;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_1001FD3D0(uint64_t a1)
{
  v2 = sub_10015DA04(&qword_1006C03C0, &qword_10053A890);
  v3 = *(v2 - 8);
  v22 = v2;
  v23 = v3;
  __chkstk_darwin(v2);
  v5 = v19 - v4;
  v6 = sub_10015DA04(&qword_1006C03C8, &qword_10053A898);
  __chkstk_darwin(v6);
  sub_1000215EC();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x8000000100566E00;
  v7._countAndFlagsBits = 0xD000000000000010;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  sub_10001DCF0();
  v19[1] = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 0xD00000000000001DLL;
  v8._object = 0x8000000100567020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 46;
  v9._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v10 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v11 = *(v23 + 8);
  v23 += 8;
  v20 = v11;
  v21 = v10;
  v11(v5, v22);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0xD000000000000018;
  v12._object = 0x8000000100566E40;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 0xD000000000000011;
  v13._object = 0x8000000100567040;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 0x2E67617420;
  v14._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v15 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v20(v5, v22);
  sub_10015DA04(&qword_1006C03D0, &qword_10053A8A0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100535E30;
  *(v16 + 32) = v21;
  *(v16 + 40) = v15;
  v17 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v17;
}

uint64_t sub_1001FD814()
{
  v0 = sub_10015DA04(&qword_1006C03C0, &qword_10053A890);
  v1 = *(v0 - 8);
  v20 = v0;
  v21 = v1;
  __chkstk_darwin(v0);
  v3 = &v18 - v2;
  v4 = sub_10015DA04(&qword_1006C03C8, &qword_10053A898);
  __chkstk_darwin(v4);
  sub_1000215EC();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0xD00000000000001CLL;
  v5._object = 0x8000000100566FC0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  sub_10001DCF0();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._object = 0x8000000100566FE0;
  v6._countAndFlagsBits = 0xD00000000000001BLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7._countAndFlagsBits = 46;
  v7._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v8 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v9 = v20;
  v10 = *(v21 + 8);
  v21 += 8;
  v18 = v10;
  v19 = v8;
  v10(v3, v20);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0xD000000000000018;
  v11._object = 0x8000000100566E40;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._object = 0x8000000100567000;
  v12._countAndFlagsBits = 0xD00000000000001BLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 0x2E67617420;
  v13._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v14 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v18(v3, v9);
  sub_10015DA04(&qword_1006C03D0, &qword_10053A8A0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100535E30;
  *(v15 + 32) = v19;
  *(v15 + 40) = v14;
  v16 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v16;
}

uint64_t sub_1001FDC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v4 = type metadata accessor for _AssistantIntent.Value();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10001DCF0();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_1000215EC();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v8 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v9 = *(v5 + 8);
  v9(v7, v4);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v10 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v9(v7, v4);
  swift_getKeyPath();
  sub_10021BE44();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v11 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v9(v7, v4);
  sub_10015DA04(&qword_1006C0008, &qword_100539D70);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100539C40;
  *(v12 + 32) = v8;
  *(v12 + 40) = v10;
  *(v12 + 48) = v11;
  v13 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v13;
}

uint64_t sub_1001FDEA4()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58, &qword_100539CF8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100539C40;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v4;
}

uint64_t sub_1001FDF58()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58, &qword_100539CF8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100535E30;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v3;
}

uint64_t sub_1001FE008(uint64_t a1)
{
  v2 = type metadata accessor for _AssistantIntent.PhraseToken();
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin(v2);
  v47 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10015DA04(&qword_1006C03C0, &qword_10053A890);
  v5 = *(v4 - 8);
  v55 = v4;
  v56 = v5;
  __chkstk_darwin(v4);
  v7 = &v45 - v6;
  v8 = sub_10015DA04(&qword_1006C03C8, &qword_10053A898);
  __chkstk_darwin(v8);
  v9 = sub_1000215EC();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0xD000000000000025;
  v10._object = 0x8000000100566F10;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  v11 = sub_10001DCF0();
  v53 = a1;
  v54 = v11;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 46;
  v12._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v51 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13 = *(v56 + 8);
  v56 += 8;
  v13(v7, v4);
  v52 = v13;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0xD000000000000017;
  v14._object = 0x8000000100566F40;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v50 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v16 = v55;
  v13(v7, v55);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._object = 0x8000000100566D50;
  v17._countAndFlagsBits = 0xD000000000000012;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  v18 = v47;
  v19 = v48;
  v20 = v49;
  (*(v48 + 104))(v47, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v49);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  (*(v19 + 8))(v18, v20);
  v21._countAndFlagsBits = 0x6E69207461687420;
  v21._object = 0xEE00206564756C63;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v22._countAndFlagsBits = 46;
  v22._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v49 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v23 = v16;
  v24 = v52;
  v52(v7, v23);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v25._countAndFlagsBits = 0xD000000000000021;
  v25._object = 0x8000000100566F60;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v26._countAndFlagsBits = 46;
  v26._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  v27 = v9;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v48 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v28 = v55;
  v24(v7, v55);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v29._countAndFlagsBits = 0xD000000000000028;
  v29._object = 0x8000000100566F90;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v29);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v30._countAndFlagsBits = 46;
  v30._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v45 = v27;
  v47 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v31 = v52;
  v52(v7, v28);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v32._countAndFlagsBits = 0xD000000000000010;
  v32._object = 0x8000000100566E00;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v32);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v33._countAndFlagsBits = 0xD00000000000001FLL;
  v33._object = 0x8000000100566E20;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v33);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v34._countAndFlagsBits = 46;
  v34._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v34);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v46 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v31(v7, v55);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v35._countAndFlagsBits = 0xD000000000000018;
  v35._object = 0x8000000100566E40;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v35);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v36._object = 0x8000000100566E60;
  v36._countAndFlagsBits = 0xD000000000000012;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v36);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v37._countAndFlagsBits = 0x2E7367617420;
  v37._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v37);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v38 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v31(v7, v55);
  sub_10015DA04(&qword_1006C03D0, &qword_10053A8A0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_100539C50;
  v40 = v50;
  *(v39 + 32) = v51;
  *(v39 + 40) = v40;
  v41 = v48;
  *(v39 + 48) = v49;
  *(v39 + 56) = v41;
  v42 = v46;
  *(v39 + 64) = v47;
  *(v39 + 72) = v42;
  *(v39 + 80) = v38;
  v43 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v43;
}

uint64_t sub_1001FE9B8()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58, &qword_100539CF8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100539C40;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v4;
}

uint64_t sub_1001FEA94()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58, &qword_100539CF8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100535E30;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v3;
}

uint64_t sub_1001FEB44(uint64_t a1)
{
  v2 = type metadata accessor for _AssistantIntent.PhraseToken();
  v47 = *(v2 - 8);
  v48 = v2;
  __chkstk_darwin(v2);
  v46 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10015DA04(&qword_1006C03C0, &qword_10053A890);
  v5 = *(v4 - 8);
  v54 = v4;
  v55 = v5;
  __chkstk_darwin(v4);
  v7 = &v44 - v6;
  v8 = sub_10015DA04(&qword_1006C03C8, &qword_10053A898);
  __chkstk_darwin(v8);
  v9 = sub_1000215EC();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0xD000000000000028;
  v10._object = 0x8000000100566CF0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  v53 = sub_10001DCF0();
  v51 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 46;
  v11._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v50 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12 = v55 + 8;
  v52 = *(v55 + 8);
  v52(v7, v4);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0xD000000000000027;
  v13._object = 0x8000000100566D20;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 0x2E7367617420;
  v14._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v49 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v15 = v54;
  v55 = v12;
  v52(v7, v54);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._object = 0x8000000100566D50;
  v16._countAndFlagsBits = 0xD000000000000012;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  v17 = v46;
  v18 = v47;
  v19 = v48;
  (*(v47 + 104))(v46, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v48);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  (*(v18 + 8))(v17, v19);
  v20._countAndFlagsBits = 0xD000000000000015;
  v20._object = 0x8000000100566D70;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21._countAndFlagsBits = 46;
  v21._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v48 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v22 = v15;
  v23 = v52;
  v52(v7, v22);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v24._countAndFlagsBits = 0xD000000000000024;
  v24._object = 0x8000000100566D90;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v25._countAndFlagsBits = 46;
  v25._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  v26 = v9;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v47 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v27 = v54;
  v23(v7, v54);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v28._countAndFlagsBits = 0xD000000000000034;
  v28._object = 0x8000000100566DC0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v28);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v29._countAndFlagsBits = 46;
  v29._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v29);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v44 = v26;
  v46 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v30 = v52;
  v52(v7, v27);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v31._countAndFlagsBits = 0xD000000000000010;
  v31._object = 0x8000000100566E00;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v31);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v32._countAndFlagsBits = 0xD00000000000001FLL;
  v32._object = 0x8000000100566E20;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v32);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v33._countAndFlagsBits = 46;
  v33._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v33);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v45 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v30(v7, v54);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v34._countAndFlagsBits = 0xD000000000000018;
  v34._object = 0x8000000100566E40;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v34);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v35._object = 0x8000000100566E60;
  v35._countAndFlagsBits = 0xD000000000000012;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v35);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v36._countAndFlagsBits = 0x2E7367617420;
  v36._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v36);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v37 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v30(v7, v54);
  sub_10015DA04(&qword_1006C03D0, &qword_10053A8A0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_100539C50;
  v39 = v49;
  *(v38 + 32) = v50;
  *(v38 + 40) = v39;
  v40 = v47;
  *(v38 + 48) = v48;
  *(v38 + 56) = v40;
  v41 = v45;
  *(v38 + 64) = v46;
  *(v38 + 72) = v41;
  *(v38 + 80) = v37;
  v42 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v42;
}

uint64_t sub_1001FF504()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58, &qword_100539CF8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100539C40;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v4;
}

uint64_t sub_1001FF5DC()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58, &qword_100539CF8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100535E30;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v3;
}

uint64_t sub_1001FF68C()
{
  v0 = sub_10015DA04(&qword_1006C03A8, &qword_10053A808);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - v2;
  sub_10021B284();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v4 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v6 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v8 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10015DA04(&qword_1006C03B0, &qword_10053A810);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100539C30;
  *(v9 + 32) = v4;
  *(v9 + 40) = v6;
  *(v9 + 48) = v7;
  *(v9 + 56) = v8;
  v10 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v10;
}

uint64_t sub_1001FF8F4()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10021BD78();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10021B284();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_10001DB74(&qword_1006C03A0, &type metadata accessor for ChangeOperation, &protocol conformance descriptor for ChangeOperation);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10015DA04(&qword_1006C0008, &qword_100539D70);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100535E30;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_1001FFB14()
{
  v0 = sub_10015DA04(&qword_1006C03A8, &qword_10053A808);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - v2;
  sub_10021B284();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v4 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v6 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v8 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10015DA04(&qword_1006C03B0, &qword_10053A810);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100539C30;
  *(v9 + 32) = v4;
  *(v9 + 40) = v6;
  *(v9 + 48) = v7;
  *(v9 + 56) = v8;
  v10 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v10;
}

uint64_t sub_1001FFD78()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10021BD78();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10021B284();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_10001DB74(&qword_1006C03A0, &type metadata accessor for ChangeOperation, &protocol conformance descriptor for ChangeOperation);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10015DA04(&qword_1006C0008, &qword_100539D70);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100535E30;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_1001FFF98()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58, &qword_100539CF8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100531E30;
  *(v1 + 32) = v0;
  v2 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v2;
}

uint64_t sub_10020001C()
{
  v0 = sub_10015DA04(&qword_1006C03A8, &qword_10053A808);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - v2;
  sub_10021B284();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v4 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v6 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v8 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10015DA04(&qword_1006C03B0, &qword_10053A810);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100539C30;
  *(v9 + 32) = v4;
  *(v9 + 40) = v6;
  *(v9 + 48) = v7;
  *(v9 + 56) = v8;
  v10 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v10;
}

uint64_t sub_100200284()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10021BD78();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10021B284();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_10001DB74(&qword_1006C03A0, &type metadata accessor for ChangeOperation, &protocol conformance descriptor for ChangeOperation);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10015DA04(&qword_1006C0008, &qword_100539D70);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100535E30;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_1002004A4()
{
  v0 = sub_10015DA04(&qword_1006C03A8, &qword_10053A808);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - v2;
  sub_10021B284();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v4 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v6 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v8 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10015DA04(&qword_1006C03B0, &qword_10053A810);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100539C30;
  *(v9 + 32) = v4;
  *(v9 + 40) = v6;
  *(v9 + 48) = v7;
  *(v9 + 56) = v8;
  v10 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v10;
}

uint64_t sub_100200708()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10021BD78();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10021B284();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_10001DB74(&qword_1006C03A0, &type metadata accessor for ChangeOperation, &protocol conformance descriptor for ChangeOperation);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10015DA04(&qword_1006C0008, &qword_100539D70);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100535E30;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_100200928()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58, &qword_100539CF8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100531E30;
  *(v1 + 32) = v0;
  v2 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v2;
}

uint64_t sub_1002009AC()
{
  v0 = sub_10015DA04(&qword_1006C03A8, &qword_10053A808);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - v2;
  sub_10021B284();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v4 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v6 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10015DA04(&qword_1006C03B0, &qword_10053A810);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100539C40;
  *(v8 + 32) = v4;
  *(v8 + 40) = v6;
  *(v8 + 48) = v7;
  v9 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v9;
}

uint64_t sub_100200BC4()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10021BD78();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10021B284();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_10001DB74(&qword_1006C03A0, &type metadata accessor for ChangeOperation, &protocol conformance descriptor for ChangeOperation);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10015DA04(&qword_1006C0008, &qword_100539D70);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100535E30;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_100200DE4()
{
  v0 = sub_10015DA04(&qword_1006C03A8, &qword_10053A808);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - v2;
  sub_10021B284();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v13 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4 = *(v1 + 8);
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v5 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v6 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v8 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  sub_10015DA04(&qword_1006C03B0, &qword_10053A810);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100539C20;
  *(v9 + 32) = v13;
  *(v9 + 40) = v5;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  *(v9 + 64) = v8;
  v10 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v10;
}

uint64_t sub_1002010A0()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10021BD78();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10021B284();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_10001DB74(&qword_1006C03A0, &type metadata accessor for ChangeOperation, &protocol conformance descriptor for ChangeOperation);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10015DA04(&qword_1006C0008, &qword_100539D70);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100535E30;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_1002012C0()
{
  v0 = sub_10015DA04(&qword_1006C03A8, &qword_10053A808);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - v2;
  sub_10021B284();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v13 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4 = *(v1 + 8);
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v5 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v6 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v8 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  sub_10015DA04(&qword_1006C03B0, &qword_10053A810);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100539C20;
  *(v9 + 32) = v13;
  *(v9 + 40) = v5;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  *(v9 + 64) = v8;
  v10 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v10;
}

uint64_t sub_100201588()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10021BD78();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10021B284();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_10001DB74(&qword_1006C03A0, &type metadata accessor for ChangeOperation, &protocol conformance descriptor for ChangeOperation);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10015DA04(&qword_1006C0008, &qword_100539D70);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100535E30;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_1002017A8()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58, &qword_100539CF8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100531E30;
  *(v1 + 32) = v0;
  v2 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v2;
}

uint64_t sub_10020182C()
{
  v0 = sub_10015DA04(&qword_1006C03A8, &qword_10053A808);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - v2;
  sub_10021B284();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v13 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4 = *(v1 + 8);
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v5 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v6 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v8 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  sub_10015DA04(&qword_1006C03B0, &qword_10053A810);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100539C20;
  *(v9 + 32) = v13;
  *(v9 + 40) = v5;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  *(v9 + 64) = v8;
  v10 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v10;
}

uint64_t sub_100201AF4()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10021BD78();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10021B284();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_10001DB74(&qword_1006C03A0, &type metadata accessor for ChangeOperation, &protocol conformance descriptor for ChangeOperation);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10015DA04(&qword_1006C0008, &qword_100539D70);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100535E30;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_100201D14()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58, &qword_100539CF8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100531E30;
  *(v1 + 32) = v0;
  v2 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v2;
}

uint64_t sub_100201D98()
{
  v0 = sub_10015DA04(&qword_1006C03A8, &qword_10053A808);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - v2;
  sub_10021B284();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v13 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4 = *(v1 + 8);
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v5 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v6 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v8 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  sub_10015DA04(&qword_1006C03B0, &qword_10053A810);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100539C20;
  *(v9 + 32) = v13;
  *(v9 + 40) = v5;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  *(v9 + 64) = v8;
  v10 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v10;
}

uint64_t sub_100202058()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10021BD78();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10021B284();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_10001DB74(&qword_1006C03A0, &type metadata accessor for ChangeOperation, &protocol conformance descriptor for ChangeOperation);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10015DA04(&qword_1006C0008, &qword_100539D70);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100535E30;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_100202278()
{
  v0 = sub_10015DA04(&qword_1006C03A8, &qword_10053A808);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - v2;
  sub_10021B284();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v13 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4 = *(v1 + 8);
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v5 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v6 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v8 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  sub_10015DA04(&qword_1006C03B0, &qword_10053A810);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100539C20;
  *(v9 + 32) = v13;
  *(v9 + 40) = v5;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  *(v9 + 64) = v8;
  v10 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v10;
}

uint64_t sub_100202538()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10021BD78();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10021B284();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_10001DB74(&qword_1006C03A0, &type metadata accessor for ChangeOperation, &protocol conformance descriptor for ChangeOperation);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10015DA04(&qword_1006C0008, &qword_100539D70);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100535E30;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_100202758()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58, &qword_100539CF8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100531E30;
  *(v1 + 32) = v0;
  v2 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v2;
}

uint64_t sub_1002027DC(uint64_t a1)
{
  v34 = a1;
  v35 = sub_10015DA04(&qword_1006C0380, &qword_10053A7A0);
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v2 = &v26 - v1;
  v3 = sub_10015DA04(&qword_1006C0388, &qword_10053A7A8);
  __chkstk_darwin(v3);
  sub_10021B08C();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._countAndFlagsBits = 0xD000000000000016;
  v4._object = 0x80000001005662B0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  v32 = sub_10021B940();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v5._countAndFlagsBits = 0x2E65746F6E20;
  v5._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v31 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v6 = v33 + 8;
  v26 = *(v33 + 8);
  v7 = v35;
  v26(v2, v35);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0xD000000000000017;
  v8._object = 0x80000001005662D0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 0x2E65746F6E20;
  v9._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v30 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10 = v26;
  v26(v2, v7);
  v33 = v6;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0xD000000000000022;
  v11._object = 0x80000001005662F0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0x2E65746F6E20;
  v12._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v29 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10(v2, v35);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0xD00000000000001BLL;
  v13._object = 0x8000000100566320;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  v32 = sub_10021BC88(&qword_1006C4630, &qword_1006C0318, &unk_10054A7C0, sub_10001CAF8);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v28 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10(v2, v35);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0xD00000000000001FLL;
  v15._object = 0x8000000100566340;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v27 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v17 = v35;
  v10(v2, v35);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 544503120;
  v18._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._object = 0x8000000100566360;
  v19._countAndFlagsBits = 0xD000000000000010;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v20 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10(v2, v17);
  sub_10015DA04(&qword_1006C0390, &qword_10053A7B0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100538200;
  v22 = v30;
  *(v21 + 32) = v31;
  *(v21 + 40) = v22;
  v23 = v28;
  *(v21 + 48) = v29;
  *(v21 + 56) = v23;
  *(v21 + 64) = v27;
  *(v21 + 72) = v20;
  v24 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v24;
}

uint64_t sub_100202EE8()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10021B940();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10021B08C();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_10021BC88(&qword_1006C4630, &qword_1006C0318, &unk_10054A7C0, sub_10001CAF8);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10015DA04(&qword_1006C0008, &qword_100539D70);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100535E30;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_100203104()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58, &qword_100539CF8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100539C40;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v4;
}

uint64_t sub_1002031D4()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58, &qword_100539CF8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100539C40;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v4;
}

uint64_t sub_1002032A0(uint64_t a1)
{
  v47 = a1;
  v1 = sub_10015DA04(&qword_1006C0368, &qword_10053A738);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v39 - v3;
  v5 = sub_10015DA04(&qword_1006C0370, &qword_10053A740);
  __chkstk_darwin(v5);
  FolderIntent = type metadata accessor for CreateFolderIntent(0);
  v7 = sub_10001DB74(&qword_1006C4580, type metadata accessor for CreateFolderIntent, &protocol conformance descriptor for CreateFolderIntent);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0xD00000000000001BLL;
  v8._object = 0x8000000100566180;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  v52 = sub_10021BC88(&qword_1006C4630, &qword_1006C0318, &unk_10054A7C0, sub_10001CAF8);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 46;
  v9._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  v48 = v4;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v45 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v51 = *(v2 + 8);
  v49 = v1;
  v51(v4, v1);
  v50 = v2 + 8;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0xD000000000000014;
  v10._object = 0x80000001005661A0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 46;
  v11._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  v12 = v48;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v44 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13 = v51;
  v51(v12, v1);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0xD00000000000001DLL;
  v14._object = 0x80000001005661C0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 46;
  v15._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  v16 = v48;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v46 = FolderIntent;
  v43 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v17 = v49;
  v13(v16, v49);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 0x6120707520746553;
  v18._object = 0xED00002077656E20;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._countAndFlagsBits = 0x2E7265646C6F6620;
  v19._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v42 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v16, v17);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._countAndFlagsBits = 0x206120646441;
  v20._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21._countAndFlagsBits = 0x207265646C6F6620;
  v21._object = 0xEE0020796D206F74;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  swift_getKeyPath();
  v39[2] = sub_10001DAC0();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v22._countAndFlagsBits = 0x2E7265646C6F6620;
  v22._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  v23 = v48;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v39[1] = v7;
  v41 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v24 = v23;
  v25 = v49;
  v51(v23, v49);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v26._countAndFlagsBits = 0x206120656B614DLL;
  v26._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v27._object = 0x80000001005661E0;
  v27._countAndFlagsBits = 0xD000000000000011;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v28._countAndFlagsBits = 0x2E7265646C6F6620;
  v28._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v28);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v40 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v51(v23, v25);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v29._countAndFlagsBits = 0x20656874206E49;
  v29._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v29);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v30._countAndFlagsBits = 0xD000000000000023;
  v30._object = 0x8000000100566200;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v31._countAndFlagsBits = 46;
  v31._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v31);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v32 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v51(v24, v49);
  sub_10015DA04(&qword_1006C0378, &qword_10053A748);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_100539C50;
  v34 = v44;
  *(v33 + 32) = v45;
  *(v33 + 40) = v34;
  v35 = v42;
  *(v33 + 48) = v43;
  *(v33 + 56) = v35;
  v36 = v40;
  *(v33 + 64) = v41;
  *(v33 + 72) = v36;
  *(v33 + 80) = v32;
  v37 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v37;
}

uint64_t sub_100203C04()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10021BC88(&qword_1006C4630, &qword_1006C0318, &unk_10054A7C0, sub_10001CAF8);
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10001DB74(&qword_1006C4580, type metadata accessor for CreateFolderIntent, &protocol conformance descriptor for CreateFolderIntent);
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_10001DAC0();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10015DA04(&qword_1006C0008, &qword_100539D70);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100535E30;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_100203E50()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58, &qword_100539CF8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100539C20;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_100203F88()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58, &qword_100539CF8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100539C30;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v5;
}

uint64_t sub_100204080(uint64_t a1)
{
  v50 = sub_10015DA04(&qword_1006C0350, &qword_10053A6D8);
  v2 = *(v50 - 8);
  __chkstk_darwin(v50);
  v4 = &v38 - v3;
  v5 = sub_10015DA04(&qword_1006C0358, &qword_10053A6E0);
  __chkstk_darwin(v5);
  sub_100023DE8();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._countAndFlagsBits = 0xD00000000000001ELL;
  v6._object = 0x8000000100566060;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  v49 = sub_10021BC88(&qword_1006C4630, &qword_1006C0318, &unk_10054A7C0, sub_10001CAF8);
  v51 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7._countAndFlagsBits = 46;
  v7._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v45 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8 = *(v2 + 8);
  v48 = v2 + 8;
  v9 = v50;
  v8(v4, v50);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0x6120657461657243;
  v10._object = 0xED00002077656E20;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 0x2E65746F6E20;
  v11._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v44 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v47 = v8;
  v8(v4, v9);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._object = 0x8000000100566080;
  v12._countAndFlagsBits = 0xD000000000000017;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 0xD000000000000018;
  v13._object = 0x80000001005660A0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v43 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8(v4, v50);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0xD000000000000016;
  v14._object = 0x80000001005660C0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 46;
  v15._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v42 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v16 = v50;
  v47(v4, v50);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._object = 0x80000001005660E0;
  v17._countAndFlagsBits = 0xD000000000000017;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 46;
  v18._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v41 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v19 = v47;
  v47(v4, v16);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._countAndFlagsBits = 0xD000000000000012;
  v20._object = 0x8000000100566100;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21._countAndFlagsBits = 0x20796D206F7420;
  v21._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  swift_getKeyPath();
  v46 = sub_10001DAC0();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v22._countAndFlagsBits = 0x7265646C6F6620;
  v22._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v40 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v23 = v50;
  v19(v4, v50);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v24._countAndFlagsBits = 0x2061207472617453;
  v24._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v25._countAndFlagsBits = 0x6E692065746F6E20;
  v25._object = 0xED00002065687420;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v26._countAndFlagsBits = 0x7265646C6F6620;
  v26._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v39 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v27 = v47;
  v47(v4, v23);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v28._countAndFlagsBits = 0xD000000000000015;
  v28._object = 0x8000000100566120;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v28);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v29._countAndFlagsBits = 0x20796D206E6920;
  v29._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v29);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v30._countAndFlagsBits = 0x7265646C6F6620;
  v30._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v31 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v27(v4, v50);
  sub_10015DA04(&qword_1006C0360, &qword_10053A6E8);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_100539C60;
  v33 = v44;
  *(v32 + 32) = v45;
  *(v32 + 40) = v33;
  v34 = v42;
  *(v32 + 48) = v43;
  *(v32 + 56) = v34;
  v35 = v40;
  *(v32 + 64) = v41;
  *(v32 + 72) = v35;
  *(v32 + 80) = v39;
  *(v32 + 88) = v31;
  v36 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v36;
}

uint64_t sub_100204A78(uint64_t a1)
{
  v2 = sub_10015DA04(&unk_1006BF9D0, &unk_100531EE0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_100006038(a1, &v9 - v6, &unk_1006BF9D0, &unk_100531EE0);
  sub_100006038(v7, v5, &unk_1006BF9D0, &unk_100531EE0);
  IntentParameter.wrappedValue.setter();
  return sub_1000073B4(v7, &unk_1006BF9D0, &unk_100531EE0);
}

uint64_t sub_100204B6C()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10021BC88(&qword_1006C4630, &qword_1006C0318, &unk_10054A7C0, sub_10001CAF8);
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_100023DE8();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_10001DAC0();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10015DA04(&qword_1006C0008, &qword_100539D70);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100535E30;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_100204D88()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58, &qword_100539CF8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100539C20;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_100204EB8()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58, &qword_100539CF8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100539C30;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v5;
}

uint64_t sub_100204F94(uint64_t a1)
{
  v2 = sub_10015DA04(&qword_1006C0338, &qword_10053A668);
  v47 = *(v2 - 8);
  v48 = v2;
  __chkstk_darwin(v2);
  v4 = &v35 - v3;
  v5 = sub_10015DA04(&qword_1006C0340, &qword_10053A670);
  __chkstk_darwin(v5);
  sub_10021B0E0();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._countAndFlagsBits = 0xD000000000000014;
  v6._object = 0x8000000100565F20;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  v46 = sub_10001DB74(&qword_1006BE480, type metadata accessor for NoteEntity, &protocol conformance descriptor for NoteEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7._countAndFlagsBits = 0x2E65746F6E20;
  v7._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v42 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8 = v47 + 8;
  v44 = *(v47 + 8);
  v44(v4, v48);
  v47 = v8;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v40 = "Add a table into my ";
  v9._object = 0x8000000100565F40;
  v9._countAndFlagsBits = 0xD000000000000017;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  v45 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 0x2E65746F6E20;
  v10._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v41 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v44(v4, v48);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0xD00000000000001ELL;
  v11._object = 0x8000000100565F60;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0x2E65746F6E20;
  v12._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v39 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13 = v48;
  v14 = v44;
  v44(v4, v48);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0x20796D206E49;
  v15._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 0xD00000000000001ALL;
  v16._object = 0x8000000100565F80;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v38 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v14(v4, v13);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._object = 0x8000000100565FA0;
  v17._countAndFlagsBits = 0xD000000000000017;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();
  v43 = sub_10021BC88(&qword_1006C4630, &qword_1006C0318, &unk_10054A7C0, sub_10001CAF8);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 0x6D206F746E692027;
  v18._object = 0xEA00000000002079;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._countAndFlagsBits = 0x2E65746F6E20;
  v19._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v37 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v14(v4, v48);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._countAndFlagsBits = 0xD000000000000018;
  v20._object = 0x8000000100565FC0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21._countAndFlagsBits = 0xD000000000000019;
  v21._object = 0x8000000100565FE0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v22._countAndFlagsBits = 11815;
  v22._object = 0xE200000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v36 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v23 = v48;
  v24 = v44;
  v44(v4, v48);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v25._object = (v40 | 0x8000000000000000);
  v25._countAndFlagsBits = 0xD000000000000017;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v26._countAndFlagsBits = 0xD000000000000016;
  v26._object = 0x8000000100566000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v27._countAndFlagsBits = 11815;
  v27._object = 0xE200000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v28 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v24(v4, v23);
  sub_10015DA04(&qword_1006C0348, &qword_10053A678);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100539C50;
  v30 = v41;
  *(v29 + 32) = v42;
  *(v29 + 40) = v30;
  v31 = v38;
  *(v29 + 48) = v39;
  *(v29 + 56) = v31;
  v32 = v36;
  *(v29 + 64) = v37;
  *(v29 + 72) = v32;
  *(v29 + 80) = v28;
  v33 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v33;
}

uint64_t sub_1002058C0(uint64_t a1)
{
  v2 = type metadata accessor for NoteEntity(0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_10021B878(a1, &v9 - v6, type metadata accessor for NoteEntity);
  sub_10021B878(v7, v5, type metadata accessor for NoteEntity);
  IntentParameter.wrappedValue.setter();
  return sub_10021B8E0(v7, type metadata accessor for NoteEntity);
}

uint64_t sub_1002059A8()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10001DB74(&qword_1006BE480, type metadata accessor for NoteEntity, &protocol conformance descriptor for NoteEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10021B0E0();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_10021BC88(&qword_1006C4630, &qword_1006C0318, &unk_10054A7C0, sub_10001CAF8);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10015DA04(&qword_1006C0008, &qword_100539D70);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100535E30;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_100205BF4()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58, &qword_100539CF8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100539C40;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v4;
}

uint64_t sub_100205CD8()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58, &qword_100539CF8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100539C40;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v4;
}

uint64_t sub_100205DAC(uint64_t a1)
{
  v34 = a1;
  v1 = sub_10015DA04(&qword_1006C0320, &qword_10053A600);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v25 - v3;
  v5 = sub_10015DA04(&qword_1006C0328, &qword_10053A608);
  __chkstk_darwin(v5);
  sub_10021B134();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._countAndFlagsBits = 0x6174206120646441;
  v6._object = 0xEE0020726F662067;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  v33 = sub_10021BC88(&qword_1006C4630, &qword_1006C0318, &unk_10054A7C0, sub_10001CAF8);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7._countAndFlagsBits = 46;
  v7._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v29 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v30 = v1;
  v8 = *(v2 + 8);
  v8(v4, v1);
  v31 = v2 + 8;
  v32 = v8;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0xD000000000000015;
  v9._object = 0x8000000100565E40;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 46;
  v10._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v28 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8(v4, v1);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0xD00000000000002FLL;
  v11._object = 0x8000000100565E60;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 46;
  v12._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v27 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v32(v4, v30);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._object = 0x8000000100565E90;
  v13._countAndFlagsBits = 0xD000000000000011;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 46;
  v14._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v26 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v15 = v30;
  v16 = v32;
  v32(v4, v30);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 0x206120657355;
  v17._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 0x2E67617420;
  v18._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v19 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v16(v4, v15);
  sub_10015DA04(&qword_1006C0330, &qword_10053A610);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100539C20;
  v21 = v28;
  *(v20 + 32) = v29;
  *(v20 + 40) = v21;
  v22 = v26;
  *(v20 + 48) = v27;
  *(v20 + 56) = v22;
  *(v20 + 64) = v19;
  v23 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v23;
}

uint64_t sub_1002063A4()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10021BC88(&qword_1006C4630, &qword_1006C0318, &unk_10054A7C0, sub_10001CAF8);
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10021B134();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v1 + 8))(v3, v0);
  sub_10015DA04(&qword_1006C0008, &qword_100539D70);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100531E30;
  *(v5 + 32) = v4;
  v6 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_100206540()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58, &qword_100539CF8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100539C30;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v5;
}

uint64_t sub_100206628(uint64_t a1)
{
  v32 = a1;
  v34 = sub_10015DA04(&qword_1006C0300, &qword_10053A5B8);
  v1 = *(v34 - 8);
  __chkstk_darwin(v34);
  v3 = &v26 - v2;
  v4 = sub_10015DA04(&qword_1006C0308, &qword_10053A5C0);
  __chkstk_darwin(v4);
  sub_10021B2D8();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0x74206574656C6544;
  v5._object = 0xEB00000000206568;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  v33 = sub_10021BBD4();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._countAndFlagsBits = 0x6D68636174746120;
  v6._object = 0xEC0000002E746E65;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v30 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8 = v1 + 8;
  v7 = *(v1 + 8);
  v9 = v34;
  v7(v3, v34);
  v31 = v7;
  v35 = v8;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0xD000000000000021;
  v10._object = 0x8000000100565DD0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 46;
  v11._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v29 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v7(v3, v9);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0x742065766F6D6552;
  v12._object = 0xEB00000000206568;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._object = 0x8000000100565E00;
  v13._countAndFlagsBits = 0xD000000000000012;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v28 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v31(v3, v34);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0x2064697220746547;
  v14._object = 0xEF2065687420666FLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 0x6D68636174746120;
  v15._object = 0xEC0000002E746E65;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v27 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v16 = v34;
  v17 = v31;
  v31(v3, v34);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 0x742065766F6D6552;
  v18._object = 0xEB00000000206568;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._countAndFlagsBits = 46;
  v19._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v20 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v17(v3, v16);
  sub_10015DA04(&qword_1006C0310, &qword_10053A5C8);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100539C20;
  v22 = v29;
  *(v21 + 32) = v30;
  *(v21 + 40) = v22;
  v23 = v27;
  *(v21 + 48) = v28;
  *(v21 + 56) = v23;
  *(v21 + 64) = v20;
  v24 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v24;
}

uint64_t sub_100206C7C()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58, &qword_100539CF8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100539C20;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_100206D94(uint64_t a1)
{
  v35 = a1;
  v34 = sub_10015DA04(&qword_1006C02E0, &qword_10053A570);
  v1 = *(v34 - 8);
  __chkstk_darwin(v34);
  v3 = &v26 - v2;
  v4 = sub_10015DA04(&qword_1006C02E8, &qword_10053A578);
  __chkstk_darwin(v4);
  sub_10019F8A4();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0x74206574656C6544;
  v5._object = 0xEB00000000206568;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  v33 = sub_10021B674();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._object = 0x8000000100565600;
  v6._countAndFlagsBits = 0xD000000000000013;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v30 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8 = v1 + 8;
  v7 = *(v1 + 8);
  v9 = v34;
  v7(v3, v34);
  v31 = v8;
  v32 = v7;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0x742065766F6D6552;
  v10._object = 0xEB00000000206568;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 0xD000000000000011;
  v11._object = 0x8000000100565620;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v29 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v7(v3, v9);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0x206574656C6544;
  v12._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._object = 0x8000000100565640;
  v13._countAndFlagsBits = 0xD000000000000013;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v28 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v32(v3, v34);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0x2064697220746547;
  v14._object = 0xEF2065687420666FLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 0xD000000000000019;
  v15._object = 0x8000000100565680;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v27 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v16 = v34;
  v17 = v32;
  v32(v3, v34);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 0xD00000000000001DLL;
  v18._object = 0x8000000100565D30;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._countAndFlagsBits = 46;
  v19._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v20 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v17(v3, v16);
  sub_10015DA04(&qword_1006C02F0, &qword_10053A580);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100539C20;
  v22 = v29;
  *(v21 + 32) = v30;
  *(v21 + 40) = v22;
  v23 = v27;
  *(v21 + 48) = v28;
  *(v21 + 56) = v23;
  *(v21 + 64) = v20;
  v24 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v24;
}

uint64_t sub_1002073E8()
{
  v40 = type metadata accessor for _AssistantIntent.PhraseToken();
  v42 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v29 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_10015DA04(&qword_1006C02C8, &qword_10053A530);
  v41 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v29 - v2;
  v4 = sub_10015DA04(&qword_1006C02D0, &qword_10053A538);
  __chkstk_darwin(v4);
  sub_10021B32C();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0x6D206574656C6544;
  v5._object = 0xEA00000000002079;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  v38 = sub_10021BAA8();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._countAndFlagsBits = 0x2E7265646C6F6620;
  v6._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v36 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v37 = v1;
  v7 = *(v41 + 8);
  v41 += 8;
  v29 = v7;
  v7(v3, v1);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0x6D206574656C6544;
  v8._object = 0xEA00000000002079;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 0x207265646C6F6620;
  v9._object = 0xED0000206D6F7266;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  v34 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v10 = v42;
  v32 = *(v42 + 104);
  v33 = v42 + 104;
  v12 = v39;
  v11 = v40;
  v32(v39);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v13 = *(v10 + 8);
  v42 = v10 + 8;
  v31 = v13;
  v13(v12, v11);
  v14._countAndFlagsBits = 46;
  v14._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v35 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v15 = v1;
  v16 = v29;
  v29(v3, v15);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 0x6D2065766F6D6552;
  v17._object = 0xEA00000000002079;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 0x2E7265646C6F6620;
  v18._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v30 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v16(v3, v37);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v19._countAndFlagsBits = 0x20796D2065766F4DLL;
  v19._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v20._object = 0xEB00000000206E69;
  v20._countAndFlagsBits = 0x207265646C6F6620;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  v21 = v39;
  v22 = v40;
  (v32)(v39, v34, v40);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v31(v21, v22);
  v23._countAndFlagsBits = 0x20656874206F7420;
  v23._object = 0xEE002E6873617254;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v24 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v16(v3, v37);
  sub_10015DA04(&qword_1006C02D8, &qword_10053A540);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100539C30;
  v26 = v35;
  *(v25 + 32) = v36;
  *(v25 + 40) = v26;
  *(v25 + 48) = v30;
  *(v25 + 56) = v24;
  v27 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v27;
}

uint64_t sub_100207AB8()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58, &qword_100539CF8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100539C30;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v5;
}

uint64_t sub_100207BAC(uint64_t a1)
{
  v2 = sub_10015DA04(&qword_1006C02A8, &qword_10053A4E8);
  v3 = *(v2 - 8);
  v29 = v2;
  v30 = v3;
  __chkstk_darwin(v2);
  v5 = &v23 - v4;
  v6 = sub_10015DA04(&qword_1006C02B0, &qword_10053A4F0);
  __chkstk_darwin(v6);
  sub_10021B380();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0x6D206574656C6544;
  v7._object = 0xEA00000000002079;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  v27 = sub_100184E54();
  v23 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 0x2E65746F6E20;
  v8._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v26 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v9 = v29;
  v28 = *(v30 + 8);
  v30 += 8;
  v28(v5, v29);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0x2064697220746547;
  v10._object = 0xEE0020796D20666FLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 0x2E65746F6E20;
  v11._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v25 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12 = v28;
  v28(v5, v9);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0x6D2065766F6D6552;
  v13._object = 0xEA00000000002079;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 0x2E65746F6E20;
  v14._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v24 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v15 = v29;
  v12(v5, v29);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._object = 0x8000000100565CF0;
  v16._countAndFlagsBits = 0xD000000000000014;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._countAndFlagsBits = 0x20656874206F7420;
  v17._object = 0xEE002E6873617254;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v18 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v28(v5, v15);
  sub_10015DA04(&qword_1006C02B8, &qword_10053A4F8);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100539C30;
  v20 = v25;
  *(v19 + 32) = v26;
  *(v19 + 40) = v20;
  *(v19 + 48) = v24;
  *(v19 + 56) = v18;
  v21 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v21;
}

uint64_t sub_10020811C()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58, &qword_100539CF8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100539C30;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v5;
}

uint64_t sub_100208214(uint64_t a1)
{
  v35 = a1;
  v34 = sub_10015DA04(&qword_1006C0290, &qword_10053A4A8);
  v1 = *(v34 - 8);
  __chkstk_darwin(v34);
  v3 = &v26 - v2;
  v4 = sub_10015DA04(&qword_1006C0298, &qword_10053A4B0);
  __chkstk_darwin(v4);
  sub_10021B3D4();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0xD000000000000016;
  v5._object = 0x8000000100565BE0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  v33 = sub_10021B9F4();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._countAndFlagsBits = 0x6E69206F666E6920;
  v6._object = 0xEC0000002E746920;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v30 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8 = v1 + 8;
  v7 = *(v1 + 8);
  v9 = v34;
  v7(v3, v34);
  v31 = v8;
  v32 = v7;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0xD00000000000001BLL;
  v10._object = 0x8000000100565C00;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._object = 0x8000000100565C20;
  v11._countAndFlagsBits = 0xD000000000000013;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v29 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v7(v3, v9);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0xD000000000000025;
  v12._object = 0x8000000100565C40;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 46;
  v13._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v28 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v32(v3, v34);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0xD00000000000001FLL;
  v14._object = 0x8000000100565C70;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 46;
  v15._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v27 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v16 = v34;
  v17 = v32;
  v32(v3, v34);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 0xD000000000000015;
  v18._object = 0x8000000100565C90;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._countAndFlagsBits = 0x2E7469206E6920;
  v19._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v20 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v17(v3, v16);
  sub_10015DA04(&qword_1006C02A0, &qword_10053A4B8);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100539C20;
  v22 = v29;
  *(v21 + 32) = v30;
  *(v21 + 40) = v22;
  v23 = v27;
  *(v21 + 48) = v28;
  *(v21 + 56) = v23;
  *(v21 + 64) = v20;
  v24 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v24;
}

uint64_t sub_10020885C(uint64_t a1)
{
  v36 = a1;
  v35 = sub_10015DA04(&qword_1006C0268, &qword_10053A460);
  v1 = *(v35 - 8);
  __chkstk_darwin(v35);
  v3 = v28 - v2;
  v4 = sub_10015DA04(&qword_1006C0270, &qword_10053A468);
  __chkstk_darwin(v4);
  sub_10002098C();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0x74206574656C6544;
  v5._object = 0xEB00000000206568;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  v28[1] = sub_10001DCF0();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._countAndFlagsBits = 0x2E67617420;
  v6._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v9 = v1 + 8;
  v8 = *(v1 + 8);
  v32 = v7;
  v33 = v8;
  v10 = v35;
  v8(v3, v35);
  v34 = v9;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x2064697220746547;
  v11._object = 0xEE0020796D20666FLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0x2E67617420;
  v12._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v31 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13 = v33;
  v33(v3, v10);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0x796D206873617254;
  v14._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 0x2E67617420;
  v15._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v30 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v3, v35);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._countAndFlagsBits = 0xD000000000000023;
  v16._object = 0x8000000100565B90;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._countAndFlagsBits = 0x65746F4E206E6920;
  v17._object = 0xEA00000000002E73;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v29 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v18 = v35;
  v19 = v33;
  v33(v3, v35);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._countAndFlagsBits = 0x6568742065766F4DLL;
  v20._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21._object = 0x8000000100565BC0;
  v21._countAndFlagsBits = 0xD000000000000012;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v22 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v19(v3, v18);
  sub_10015DA04(&qword_1006C0278, &qword_10053A470);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100539C20;
  v24 = v31;
  *(v23 + 32) = v32;
  *(v23 + 40) = v24;
  v25 = v29;
  *(v23 + 48) = v30;
  *(v23 + 56) = v25;
  *(v23 + 64) = v22;
  v26 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v26;
}

uint64_t sub_100208EB8()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58, &qword_100539CF8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100539C20;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_100208FC0(uint64_t a1)
{
  v2 = sub_10015DA04(&qword_1006C0250, &qword_10053A420);
  v3 = *(v2 - 8);
  v31 = v2;
  v32 = v3;
  __chkstk_darwin(v2);
  v5 = &v25 - v4;
  v6 = sub_10015DA04(&qword_1006C0258, &qword_10053A428);
  __chkstk_darwin(v6);
  sub_10021B428();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x8000000100565AA0;
  v7._countAndFlagsBits = 0xD00000000000002ALL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  v30 = sub_10001DB74(&qword_1006BE480, type metadata accessor for NoteEntity, &protocol conformance descriptor for NoteEntity);
  v25 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 0x2E65746F6E20;
  v8._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v9 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10 = v31;
  v11 = *(v32 + 8);
  v28 = v9;
  v29 = v11;
  v32 += 8;
  v11(v5, v31);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0xD000000000000037;
  v12._object = 0x8000000100565AD0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 0x2E65746F6E20;
  v13._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v27 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v14 = v29;
  v29(v5, v10);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0xD00000000000002ELL;
  v15._object = 0x8000000100565B10;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 0x2E65746F6E20;
  v16._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v26 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v17 = v31;
  v14(v5, v31);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 0xD00000000000002BLL;
  v18._object = 0x8000000100565B40;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._countAndFlagsBits = 0x2E65746F6E20;
  v19._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v20 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v29(v5, v17);
  sub_10015DA04(&qword_1006C0260, &qword_10053A430);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100539C30;
  v22 = v27;
  *(v21 + 32) = v28;
  *(v21 + 40) = v22;
  *(v21 + 48) = v26;
  *(v21 + 56) = v20;
  v23 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v23;
}

uint64_t sub_100209508()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10001DB74(&qword_1006BE480, type metadata accessor for NoteEntity, &protocol conformance descriptor for NoteEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10021B428();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v1 + 8))(v3, v0);
  sub_10015DA04(&qword_1006C0008, &qword_100539D70);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100531E30;
  *(v5 + 32) = v4;
  v6 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_1002096A8()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58, &qword_100539CF8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100539C30;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v5;
}

uint64_t sub_10020978C(uint64_t a1)
{
  v35 = a1;
  v36 = sub_10015DA04(&qword_1006C0238, &qword_10053A3E0);
  v1 = *(v36 - 8);
  __chkstk_darwin(v36);
  v3 = &v29 - v2;
  v4 = sub_10015DA04(&qword_1006C0240, &qword_10053A3E8);
  __chkstk_darwin(v4);
  sub_10021B47C();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0xD000000000000017;
  v5._object = 0x8000000100565990;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  v34 = sub_10021B940();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._countAndFlagsBits = 0x2E65746F6E20;
  v6._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8 = *(v1 + 8);
  v29 = v1 + 8;
  v32 = v7;
  v33 = v8;
  v9 = v36;
  v8(v3, v36);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._object = 0x80000001005659B0;
  v10._countAndFlagsBits = 0x1000000000000013;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 0x2E65746F6E20;
  v11._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v31 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12 = v9;
  v13 = v33;
  v33(v3, v12);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0xD00000000000001ELL;
  v14._object = 0x80000001005659D0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 0x2E65746F6E20;
  v15._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v30 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v3, v36);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._countAndFlagsBits = 0x1000000000000021;
  v16._object = 0x80000001005659F0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._countAndFlagsBits = 0x2E65746F6E20;
  v17._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v35 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v18 = v36;
  v19 = v33;
  v33(v3, v36);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v20 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v19(v3, v18);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v21 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v19(v3, v18);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v22 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v19(v3, v18);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v23 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v19(v3, v18);
  sub_10015DA04(&qword_1006C0248, &qword_10053A3F0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100539C60;
  v25 = v31;
  *(v24 + 32) = v32;
  *(v24 + 40) = v25;
  v26 = v35;
  *(v24 + 48) = v30;
  *(v24 + 56) = v26;
  *(v24 + 64) = v20;
  *(v24 + 72) = v21;
  *(v24 + 80) = v22;
  *(v24 + 88) = v23;
  v27 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v27;
}

uint64_t sub_100209E0C(uint64_t a1)
{
  v2 = sub_10015DA04(&unk_1006BCAC0, &unk_1005395D0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_100006038(a1, &v9 - v6, &unk_1006BCAC0, &unk_1005395D0);
  sub_100006038(v7, v5, &unk_1006BCAC0, &unk_1005395D0);
  IntentParameter.wrappedValue.setter();
  return sub_1000073B4(v7, &unk_1006BCAC0, &unk_1005395D0);
}

uint64_t sub_100209F48(uint64_t a1)
{
  v33 = sub_10015DA04(&qword_1006C0220, &qword_10053A3A0);
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v3 = v25 - v2;
  v4 = sub_10015DA04(&qword_1006C0228, &qword_10053A3A8);
  __chkstk_darwin(v4);
  v5 = sub_10021B188();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._countAndFlagsBits = 0x206E6F69746E654DLL;
  v6._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  v30 = sub_10001CAF8();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7._countAndFlagsBits = 0x20796D206E6920;
  v7._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  v25[1] = sub_10021B940();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 0x2E65746F6E20;
  v8._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v29 = v5;
  v28 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v9 = *(v31 + 8);
  v31 += 8;
  v32 = v9;
  v10 = v33;
  v9(v3, v33);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x9D80E274419C80E2;
  v11._object = 0xA900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  v25[0] = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0x20796D206E6920;
  v12._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 0x2E65746F6E20;
  v13._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v27 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v32(v3, v10);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._object = 0x8000000100565950;
  v14._countAndFlagsBits = 0xD000000000000011;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 0x6874206F746E6920;
  v15._object = 0xEA00000000002065;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 0x2E65746F6E20;
  v16._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v26 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v32(v3, v33);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._object = 0x8000000100565970;
  v17._countAndFlagsBits = 0x1000000000000011;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 0x20656874206E6920;
  v18._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._countAndFlagsBits = 0x2E65746F6E20;
  v19._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v20 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v32(v3, v33);
  sub_10015DA04(&qword_1006C0230, &qword_10053A3B0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100539C30;
  v22 = v27;
  *(v21 + 32) = v28;
  *(v21 + 40) = v22;
  *(v21 + 48) = v26;
  *(v21 + 56) = v20;
  v23 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v23;
}

uint64_t sub_10020A5E8()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10001CAF8();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10021B188();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_10021B940();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10015DA04(&qword_1006C0008, &qword_100539D70);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100535E30;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_10020A7D8()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58, &qword_100539CF8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100539C20;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_10020A8D0()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58, &qword_100539CF8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100539C30;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v5;
}

uint64_t sub_10020A9CC(uint64_t a1)
{
  v2 = sub_10015DA04(&qword_1006C0208, &qword_10053A338);
  v3 = *(v2 - 8);
  v58 = v2;
  v59 = v3;
  __chkstk_darwin(v2);
  v5 = &v46 - v4;
  v6 = sub_10015DA04(&qword_1006C0210, &qword_10053A340);
  __chkstk_darwin(v6);
  sub_100024048();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v51 = "Home Depot Shopping";
  v7._object = 0x8000000100565870;
  v7._countAndFlagsBits = 0xD000000000000011;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  v57 = sub_10001DB74(&qword_1006BE480, type metadata accessor for NoteEntity, &protocol conformance descriptor for NoteEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 0x6E692065746F6E20;
  v8._object = 0xEC00000020796D20;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  v54 = sub_10021B940();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 0x2E65746F6E20;
  v9._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v53 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10 = v58;
  v11 = *(v59 + 8);
  v59 += 8;
  v56 = v11;
  v11(v5, v58);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v49 = "Add a link to my ";
  v12._object = 0x8000000100565890;
  v12._countAndFlagsBits = 0xD000000000000011;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._object = 0xED00002065687420;
  v13._countAndFlagsBits = 0x6E692065746F6E20;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 0x2E65746F6E20;
  v14._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v52 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v15 = v56;
  v56(v5, v10);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v48 = "Put a link to my ";
  v16._countAndFlagsBits = 0xD000000000000015;
  v16._object = 0x80000001005658B0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._countAndFlagsBits = 0x6E692065746F6E20;
  v17._object = 0xED00002065687420;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 0x2E65746F6E20;
  v18._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v50 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v15(v5, v58);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v19._countAndFlagsBits = 0x20796D206E49;
  v19._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  swift_getKeyPath();
  v20 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21._countAndFlagsBits = 0xD000000000000018;
  v21._object = 0x80000001005658D0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v22._countAndFlagsBits = 0x2E65746F6E20;
  v22._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v47 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v23 = v56;
  v56(v5, v58);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v24._countAndFlagsBits = 0x206F74206B6E694CLL;
  v24._object = 0xEB0000000020796DLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  swift_getKeyPath();
  v55 = v20;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v25._countAndFlagsBits = 0x72662065746F6E20;
  v25._object = 0xEE0020796D206D6FLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v26._countAndFlagsBits = 0x2E65746F6E20;
  v26._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v54 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v27 = v58;
  v23(v5, v58);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v28._object = (v51 | 0x8000000000000000);
  v28._countAndFlagsBits = 0xD000000000000011;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v28);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v29._countAndFlagsBits = 0x2E65746F6E20;
  v29._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v29);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v51 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v23(v5, v27);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v30._object = (v49 | 0x8000000000000000);
  v30._countAndFlagsBits = 0xD000000000000011;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v31._countAndFlagsBits = 0x2E65746F6E20;
  v31._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v31);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v49 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v56(v5, v58);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v32._countAndFlagsBits = 0xD000000000000015;
  v32._object = (v48 | 0x8000000000000000);
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v32);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v33._countAndFlagsBits = 0x2E65746F6E20;
  v33._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v33);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v48 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v34 = v58;
  v35 = v56;
  v56(v5, v58);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v36._countAndFlagsBits = 0x206F74206B6E694CLL;
  v36._object = 0xEB0000000020796DLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v36);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v37._countAndFlagsBits = 0x2E65746F6E20;
  v37._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v37);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v38 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v35(v5, v34);
  sub_10015DA04(&qword_1006C0218, &qword_10053A348);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_100539C70;
  v40 = v52;
  *(v39 + 32) = v53;
  *(v39 + 40) = v40;
  v41 = v47;
  *(v39 + 48) = v50;
  *(v39 + 56) = v41;
  v42 = v51;
  *(v39 + 64) = v54;
  *(v39 + 72) = v42;
  v43 = v48;
  *(v39 + 80) = v49;
  *(v39 + 88) = v43;
  *(v39 + 96) = v38;
  v44 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v44;
}

uint64_t sub_10020B578(uint64_t a1)
{
  v2 = type metadata accessor for NoteEntity(0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_10021B878(a1, &v9 - v6, type metadata accessor for NoteEntity);
  sub_10021B878(v7, v5, type metadata accessor for NoteEntity);
  IntentParameter.wrappedValue.setter();
  return sub_10021B8E0(v7, type metadata accessor for NoteEntity);
}

uint64_t sub_10020B660()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10021B940();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_100024048();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_10001DB74(&qword_1006BE480, type metadata accessor for NoteEntity, &protocol conformance descriptor for NoteEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10015DA04(&qword_1006C0008, &qword_100539D70);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100535E30;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_10020B880()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58, &qword_100539CF8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100539C30;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v5;
}

uint64_t sub_10020B988()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58, &qword_100539CF8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100539C20;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_10020BAB0(uint64_t a1)
{
  v2 = sub_10015DA04(&qword_1006C01F0, &qword_10053A2C8);
  v3 = *(v2 - 8);
  v49 = v2;
  v50 = v3;
  __chkstk_darwin(v2);
  v41 = v40 - v4;
  v5 = type metadata accessor for _AssistantIntent.PhraseToken();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10015DA04(&qword_1006C01F8, &qword_10053A2D0);
  __chkstk_darwin(v9);
  v10 = sub_100020AAC();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x6568742065766F4DLL;
  v11._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  v40[1] = sub_100184E54();
  v47 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0x6F742065746F6E20;
  v12._object = 0xED00002065687420;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  v46 = sub_10001DB74(&qword_1006C5420, type metadata accessor for FolderEntity, &protocol conformance descriptor for FolderEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 0x207265646C6F6620;
  v13._object = 0xEB00000000206E69;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  (*(v6 + 104))(v8, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v5);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  (*(v6 + 8))(v8, v5);
  v14._countAndFlagsBits = 46;
  v14._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  v15 = v41;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v44 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v16 = v49;
  v17 = *(v50 + 8);
  v50 += 8;
  v48 = v17;
  v17(v15, v49);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._object = 0x80000001005657A0;
  v18._countAndFlagsBits = 0xD000000000000014;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._countAndFlagsBits = 0x796D206F746E6920;
  v19._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v20._countAndFlagsBits = 0x2E7265646C6F6620;
  v20._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v45 = v10;
  v43 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v21 = v15;
  v48(v15, v16);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._countAndFlagsBits = 0x7420747265736E49;
  v22._object = 0xEB00000000206568;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v23._countAndFlagsBits = 0x6E692065746F6E20;
  v23._object = 0xEF20656874206F74;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v24._countAndFlagsBits = 0x2E7265646C6F6620;
  v24._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v42 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v25 = v49;
  v48(v21, v49);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v26._countAndFlagsBits = 0x20796D20747550;
  v26._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v27._object = 0xEC00000020796D20;
  v27._countAndFlagsBits = 0x6E692065746F6E20;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v28._countAndFlagsBits = 0x2E7265646C6F6620;
  v28._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v28);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v40[0] = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v29 = v25;
  v30 = v48;
  v48(v21, v29);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v31._countAndFlagsBits = 0x6568742065766F4DLL;
  v31._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v31);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v32._object = 0xEE0020796D206F74;
  v32._countAndFlagsBits = 0x6E692065746F6E20;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v32);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v33._countAndFlagsBits = 0x2E7265646C6F6620;
  v33._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v33);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v34 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v30(v21, v49);
  sub_10015DA04(&qword_1006C0200, &qword_10053A2D8);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_100539C20;
  v36 = v43;
  *(v35 + 32) = v44;
  *(v35 + 40) = v36;
  v37 = v40[0];
  *(v35 + 48) = v42;
  *(v35 + 56) = v37;
  *(v35 + 64) = v34;
  v38 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v38;
}

uint64_t sub_10020C400(uint64_t a1)
{
  v2 = type metadata accessor for FolderEntity(0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_10021B878(a1, &v9 - v6, type metadata accessor for FolderEntity);
  sub_10021B878(v7, v5, type metadata accessor for FolderEntity);
  IntentParameter.wrappedValue.setter();
  return sub_10021B8E0(v7, type metadata accessor for FolderEntity);
}

uint64_t sub_10020C4E8()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100184E54();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_100020AAC();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_10001DB74(&qword_1006C5420, type metadata accessor for FolderEntity, &protocol conformance descriptor for FolderEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10015DA04(&qword_1006C0008, &qword_100539D70);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100535E30;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_10020C708()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58, &qword_100539CF8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100539C30;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v5;
}

uint64_t sub_10020C808()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58, &qword_100539CF8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100539C20;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_10020C918(uint64_t a1)
{
  v25 = sub_10015DA04(&qword_1006C01D8, &qword_10053A260);
  v27 = *(v25 - 8);
  __chkstk_darwin(v25);
  v3 = &v21 - v2;
  v4 = sub_10015DA04(&qword_1006C01E0, &qword_10053A268);
  __chkstk_darwin(v4);
  sub_100020E0C();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0x20796D206E65704FLL;
  v5._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  v28 = sub_10001DB74(&qword_1006C40F0, type metadata accessor for AccountEntity, &protocol conformance descriptor for AccountEntity);
  v26 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._countAndFlagsBits = 0x746E756F63636120;
  v6._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v24 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v7 = *(v27 + 8);
  v27 += 8;
  v8 = v25;
  v7(v3, v25);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0x6874206F74206F47;
  v9._object = 0xEA00000000002065;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 0x746E756F63636120;
  v10._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v23 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v21 = v7;
  v7(v3, v8);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x20796D20776F6853;
  v11._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0x746E756F63636120;
  v12._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v22 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13 = v25;
  v7(v3, v25);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._object = 0x8000000100565720;
  v14._countAndFlagsBits = 0xD00000000000001CLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 0x746E756F63636120;
  v15._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v16 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v21(v3, v13);
  sub_10015DA04(&qword_1006C01E8, &qword_10053A270);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100539C30;
  v18 = v23;
  *(v17 + 32) = v24;
  *(v17 + 40) = v18;
  *(v17 + 48) = v22;
  *(v17 + 56) = v16;
  v19 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v19;
}