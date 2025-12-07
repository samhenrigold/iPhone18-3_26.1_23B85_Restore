uint64_t sub_100AB3F40(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v6 = v4[18];
    v7 = v4[19];

    return _swift_task_switch(sub_100AB454C, v6, v7);
  }

  else
  {
    v4[28] = a1;
    v8 = swift_task_alloc();
    v4[29] = v8;
    *v8 = v5;
    v8[1] = sub_100AB43B4;
    v9 = v4[13];

    return sub_100AB468C(a1, v9);
  }
}

uint64_t sub_100AB40C4()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = sub_100AB4264;
  }

  else
  {

    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = sub_100AB41E8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100AB41E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100AB4264()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter((v0 + 240));

  LOBYTE(v2) = *(v0 + 240);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 241) = 0;

  static Published.subscript.setter();
  sub_100AAE4AC(v2);
  sub_100AB1820(v1, 0);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100AB43B4()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return _swift_task_switch(sub_100AB44D4, v3, v2);
}

uint64_t sub_100AB44D4()
{
  v1 = v0[28];
  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100AB454C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 88);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter((v0 + 242));

  v3 = *(v0 + 242);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 243) = 0;

  static Published.subscript.setter();
  sub_100AAE4AC(v3);
  v4 = v2;
  sub_100AB1820(v1, v2);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100AB468C(uint64_t a1, uint64_t a2)
{
  v3[32] = a2;
  v3[33] = v2;
  v3[31] = a1;
  v3[34] = type metadata accessor for GroupActivitiesManager.Activity(0);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();

  return _swift_task_switch(sub_100AB473C, 0, 0);
}

uint64_t sub_100AB473C()
{
  v23 = v0;
  v1 = *(v0 + 248);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 sharedListeningProperties];
    *(v0 + 304) = v3;
    if (v3)
    {
      if (qword_1011A6B28 != -1)
      {
        swift_once();
      }

      v4 = qword_1011AF070;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 224;
      *(v0 + 24) = sub_100AB4AF8;
      v5 = swift_continuation_init();
      *(v0 + 136) = sub_10010FC20(&qword_1011AF988, &unk_100EFB980);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_100988A84;
      *(v0 + 104) = &unk_1010DEC10;
      *(v0 + 112) = v5;
      [v2 getRepresentativeObjectWithProperties:v4 completion:v0 + 80];

      return _swift_continuation_await(v0 + 16, v6);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter((v0 + 352));

  v7 = *(v0 + 352);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 353) = 0;

  static Published.subscript.setter();
  sub_100AAE4AC(v7);
  if (qword_1011A6B30 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 248);
  v9 = type metadata accessor for Logger();
  sub_1000060E4(v9, static Logger.groupActivities);
  v10 = v8;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 248);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v14 = 136446210;
    *(v0 + 216) = v13;
    v16 = v10;
    sub_10010FC20(&unk_1011AF1A0, &unk_100EFB400);
    v17 = String.init<A>(reflecting:)();
    v19 = sub_100010678(v17, v18, &v22);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "Cannot activate intent=%{public}s", v14, 0xCu);
    sub_10000959C(v15);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100AB4AF8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 312) = v1;
  if (v1)
  {
    v2 = sub_100AB5274;
  }

  else
  {
    v2 = sub_100AB4C08;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100AB4C08()
{
  v36 = v0;
  v1 = v0[28];
  v0[40] = v1;
  if (qword_1011A6B30 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[41] = sub_1000060E4(v2, static Logger.groupActivities);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v35 = v7;
    *v6 = 136446210;
    v0[30] = v1;
    v8 = v3;
    sub_10010FC20(&qword_1011AFAF8, &qword_100EFBAE8);
    v9 = String.init<A>(describing:)();
    v11 = sub_100010678(v9, v10, &v35);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "Activity starting item=%{public}s", v6, 0xCu);
    sub_10000959C(v7);
  }

  v12 = v0[37];
  v13 = v0[33];
  sub_100ABFB10(v0[32], v12, type metadata accessor for GroupActivitiesManager.Activity);
  sub_1000095E8(v12, &qword_1011AF0C8, &qword_100EFB238);
  swift_beginAccess();
  sub_100008FE4(v13 + 16, v12);
  if (v3)
  {
    v14 = [v3 innermostModelObject];
    type metadata accessor for CodableModelObjectIdentity();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
  }

  else
  {
    type metadata accessor for CodableModelObjectIdentity();
    swift_allocObject();
    swift_deallocPartialClassInstance();
    v15 = 0;
  }

  v17 = v0[37];
  v16 = v0[38];

  *(v17 + 56) = v15;
  type metadata accessor for CodableListeningProperties();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v17 + 48) = v18;
  v19 = v16;

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v23 = v0[36];
    v22 = v0[37];
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v35 = v25;
    *v24 = 136446210;
    swift_beginAccess();
    sub_100ABFB10(v22, v23, type metadata accessor for GroupActivitiesManager.Activity);
    v26 = String.init<A>(describing:)();
    v28 = sub_100010678(v26, v27, &v35);

    *(v24 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v20, v21, "🚀 Activiting activity=%{public}s", v24, 0xCu);
    sub_10000959C(v25);
  }

  v29 = v0[37];
  v30 = v0[35];
  swift_beginAccess();
  sub_100ABFB10(v29, v30, type metadata accessor for GroupActivitiesManager.Activity);
  v31 = swift_task_alloc();
  v0[42] = v31;
  v32 = sub_100053024(&qword_1011AF0B0, type metadata accessor for GroupActivitiesManager.Activity, &protocol conformance descriptor for GroupActivitiesManager.Activity);
  *v31 = v0;
  v31[1] = sub_100AB507C;
  v33 = v0[34];

  return GroupActivity.activate()(v33, v32);
}

uint64_t sub_100AB507C()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  sub_100ABFC7C(*(v2 + 280), type metadata accessor for GroupActivitiesManager.Activity);
  if (v0)
  {
    v3 = sub_100AB56A4;
  }

  else
  {
    v3 = sub_100AB51C4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100AB51C4()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 296);
  v3 = *(v0 + 248);

  sub_100ABFC7C(v2, type metadata accessor for GroupActivitiesManager.Activity);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100AB5274(uint64_t a1)
{
  v32 = v1;
  swift_willThrow();

  v1[40] = 0;
  if (qword_1011A6B30 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v1[41] = sub_1000060E4(v2, static Logger.groupActivities);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v31[0] = v6;
    *v5 = 136446210;
    v1[30] = 0;
    sub_10010FC20(&qword_1011AFAF8, &qword_100EFBAE8);
    v7 = String.init<A>(describing:)();
    v9 = sub_100010678(v7, v8, v31);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Activity starting item=%{public}s", v5, 0xCu);
    sub_10000959C(v6);
  }

  v10 = v1[37];
  v11 = v1[33];
  sub_100ABFB10(v1[32], v10, type metadata accessor for GroupActivitiesManager.Activity);
  sub_1000095E8(v10, &qword_1011AF0C8, &qword_100EFB238);
  swift_beginAccess();
  sub_100008FE4(v11 + 16, v10);
  type metadata accessor for CodableModelObjectIdentity();
  swift_allocObject();
  swift_deallocPartialClassInstance();
  v13 = v1[37];
  v12 = v1[38];

  *(v13 + 56) = 0;
  type metadata accessor for CodableListeningProperties();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v13 + 48) = v14;
  v15 = v12;

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v19 = v1[36];
    v18 = v1[37];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v31[0] = v21;
    *v20 = 136446210;
    swift_beginAccess();
    sub_100ABFB10(v18, v19, type metadata accessor for GroupActivitiesManager.Activity);
    v22 = String.init<A>(describing:)();
    v24 = sub_100010678(v22, v23, v31);

    *(v20 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "🚀 Activiting activity=%{public}s", v20, 0xCu);
    sub_10000959C(v21);
  }

  v25 = v1[37];
  v26 = v1[35];
  swift_beginAccess();
  sub_100ABFB10(v25, v26, type metadata accessor for GroupActivitiesManager.Activity);
  v27 = swift_task_alloc();
  v1[42] = v27;
  v28 = sub_100053024(&qword_1011AF0B0, type metadata accessor for GroupActivitiesManager.Activity, &protocol conformance descriptor for GroupActivitiesManager.Activity);
  *v27 = v1;
  v27[1] = sub_100AB507C;
  v29 = v1[34];

  return GroupActivity.activate()(v29, v28);
}

uint64_t sub_100AB56A4()
{
  v20 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 344);
    v4 = *(v0 + 320);
    v17 = *(v0 + 304);
    v18 = *(v0 + 296);
    v5 = *(v0 + 248);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136446210;
    *(v0 + 232) = v3;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v8 = String.init<A>(describing:)();
    v10 = sub_100010678(v8, v9, &v19);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Activation failed=%{public}s", v6, 0xCu);
    sub_10000959C(v7);

    v11 = v18;
  }

  else
  {
    v12 = *(v0 + 320);
    v13 = *(v0 + 296);
    v14 = *(v0 + 248);

    v11 = v13;
  }

  sub_100ABFC7C(v11, type metadata accessor for GroupActivitiesManager.Activity);

  v15 = *(v0 + 8);

  return v15();
}

double sub_100AB58C8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(type metadata accessor for GroupActivitiesManager.Activity(0) - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  __chkstk_darwin();
  v9 = &v15 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_100ABFB10(a3, &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GroupActivitiesManager.Activity);
  v11 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a2;
  v12[5] = a1;
  sub_100ABFAA8(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for GroupActivitiesManager.Activity);
  v13 = a1;

  sub_100969440(0, 0, v9, &unk_100EFBAF8, v12);

  return result;
}

uint64_t sub_100AB5AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_100008F30;

  return sub_100AB468C(a5, a6);
}

uint64_t sub_100AB5B58(uint64_t a1, unint64_t a2)
{
  v4._countAndFlagsBits = 0x616C506572616853;
  v4._object = 0xEC0000003D444979;
  if (String.hasPrefix(_:)(v4))
  {
    sub_100ABEA60(0xC0007uLL, a1, a2);
    a1 = static String._fromSubstring(_:)();
  }

  else
  {
  }

  return a1;
}

void GroupActivitiesManager.sessionForReactionAssociation()()
{
  if (GroupActivitiesManager.hasJoined.getter())
  {
  }
}

void sub_100AB5C28()
{
  v1 = sub_10010FC20(&qword_1011AFAF0, &qword_100EFBAD8);
  __chkstk_darwin();
  v67 = &v59 - v2;
  sub_10010FC20(&qword_1011AF1E8, &qword_100EFB478);
  __chkstk_darwin();
  v66 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v59 - v4;
  __chkstk_darwin();
  v7 = &v59 - v6;
  __chkstk_darwin();
  v9 = &v59 - v8;
  v10 = *(type metadata accessor for GroupActivitiesManager.Activity(0) - 8);
  __chkstk_darwin();
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  __chkstk_darwin();
  v14 = &v59 - v13;
  __chkstk_darwin();
  v16 = &v59 - v15;
  __chkstk_darwin();
  v20 = &v59 - v19;
  v69 = v0;
  if (*(v0 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
  {
    v63 = v18;
    v64 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
    v68 = v17;

    GroupSession.activity.getter();

    v21 = *(v20 + 6);
    if (!v21)
    {
      v28 = v20;
LABEL_9:
      sub_100ABFC7C(v28, type metadata accessor for GroupActivitiesManager.Activity);
      return;
    }

    v61 = v12;
    v62 = v16;
    v65 = *(v21 + 16);
    sub_100ABFC7C(v20, type metadata accessor for GroupActivitiesManager.Activity);
    v22 = v69 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_activity;
    swift_beginAccess();
    v23 = *(v10 + 48);
    if (!v23(v22, 1, v68))
    {
      type metadata accessor for CodableListeningProperties();
      v24 = swift_allocObject();
      v25 = v65;
      *(v24 + 16) = v65;
      *(v22 + 48) = v24;
      v26 = v25;
    }

    swift_endAccess();
    if ((GroupActivitiesManager.hasJoined.getter() & 1) == 0)
    {
      goto LABEL_16;
    }

    sub_1000089F8(v22, v9, &qword_1011AF1E8, &qword_100EFB478);
    v27 = v68;
    if (v23(v9, 1, v68) == 1)
    {

      sub_1000095E8(v9, &qword_1011AF1E8, &qword_100EFB478);
      return;
    }

    v29 = v62;
    sub_100ABFAA8(v9, v62, type metadata accessor for GroupActivitiesManager.Activity);
    sub_100ABFB10(v29, v7, type metadata accessor for GroupActivitiesManager.Activity);
    v30 = 1;
    v60 = *(v10 + 56);
    v60(v7, 0, 1, v27);
    if (*(v69 + v64))
    {

      GroupSession.activity.getter();

      v30 = 0;
    }

    v32 = v67;
    v31 = v68;
    v60(v5, v30, 1, v68);
    v33 = *(v1 + 48);
    sub_1000089F8(v7, v32, &qword_1011AF1E8, &qword_100EFB478);
    sub_1000089F8(v5, v32 + v33, &qword_1011AF1E8, &qword_100EFB478);
    if (v23(v32, 1, v31) == 1)
    {
      sub_1000095E8(v5, &qword_1011AF1E8, &qword_100EFB478);
      sub_1000095E8(v7, &qword_1011AF1E8, &qword_100EFB478);
      v34 = v23(v32 + v33, 1, v31);
      v35 = v62;
      if (v34 == 1)
      {
        sub_1000095E8(v32, &qword_1011AF1E8, &qword_100EFB478);
LABEL_15:
        sub_100ABFC7C(v35, type metadata accessor for GroupActivitiesManager.Activity);
LABEL_16:

        return;
      }
    }

    else
    {
      v36 = v66;
      sub_1000089F8(v32, v66, &qword_1011AF1E8, &qword_100EFB478);
      if (v23(v32 + v33, 1, v31) != 1)
      {
        sub_100ABFAA8(v32 + v33, v14, type metadata accessor for GroupActivitiesManager.Activity);
        v40 = *(v36 + 56);
        v35 = v62;
        if (v40)
        {
          v41 = *(v14 + 7);
          if (v41)
          {
            v42 = *(v41 + 16);
            v43 = *(v40 + 16);
            v44 = v42;
            v45 = [v43 identifiers];
            v46 = v32;
            v47 = [v44 identifiers];
            v48 = [v45 intersectsSet:v47];

            sub_100ABFC7C(v14, type metadata accessor for GroupActivitiesManager.Activity);
            sub_1000095E8(v5, &qword_1011AF1E8, &qword_100EFB478);
            sub_1000095E8(v7, &qword_1011AF1E8, &qword_100EFB478);
            sub_100ABFC7C(v66, type metadata accessor for GroupActivitiesManager.Activity);
            sub_1000095E8(v46, &qword_1011AF1E8, &qword_100EFB478);
            if (v48)
            {
              goto LABEL_15;
            }

            goto LABEL_27;
          }
        }

        sub_100ABFC7C(v14, type metadata accessor for GroupActivitiesManager.Activity);
        sub_1000095E8(v5, &qword_1011AF1E8, &qword_100EFB478);
        sub_1000095E8(v7, &qword_1011AF1E8, &qword_100EFB478);
        sub_100ABFC7C(v66, type metadata accessor for GroupActivitiesManager.Activity);
        v39 = v32;
        v37 = &qword_1011AF1E8;
        v38 = &qword_100EFB478;
LABEL_26:
        sub_1000095E8(v39, v37, v38);
LABEL_27:
        if (*(v69 + v64))
        {
          sub_100ABFB10(v35, v63, type metadata accessor for GroupActivitiesManager.Activity);

          GroupSession.activity.setter();
        }

        if (qword_1011A6B30 != -1)
        {
          swift_once();
        }

        v49 = type metadata accessor for Logger();
        sub_1000060E4(v49, static Logger.groupActivities);
        v50 = v61;
        sub_100ABFB10(v35, v61, type metadata accessor for GroupActivitiesManager.Activity);
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v70[0] = v54;
          *v53 = 136446210;
          sub_100ABFB10(v50, v63, type metadata accessor for GroupActivitiesManager.Activity);
          v55 = String.init<A>(describing:)();
          v57 = v56;
          sub_100ABFC7C(v50, type metadata accessor for GroupActivitiesManager.Activity);
          v58 = sub_100010678(v55, v57, v70);

          *(v53 + 4) = v58;
          _os_log_impl(&_mh_execute_header, v51, v52, "Updating session activity=%{public}s", v53, 0xCu);
          sub_10000959C(v54);
        }

        else
        {

          sub_100ABFC7C(v50, type metadata accessor for GroupActivitiesManager.Activity);
        }

        v28 = v35;
        goto LABEL_9;
      }

      sub_1000095E8(v5, &qword_1011AF1E8, &qword_100EFB478);
      sub_1000095E8(v7, &qword_1011AF1E8, &qword_100EFB478);
      sub_100ABFC7C(v36, type metadata accessor for GroupActivitiesManager.Activity);
      v35 = v62;
    }

    v37 = &qword_1011AFAF0;
    v38 = &qword_100EFBAD8;
    v39 = v32;
    goto LABEL_26;
  }
}

void (*sub_100AB65CC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100AB6630;
}

void sub_100AB6630(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_100AB5C28();
  }
}

void sub_100AB6664()
{
  v1 = v0;
  v100 = type metadata accessor for NSNotificationCenter.Publisher();
  v109 = *(v100 - 8);
  __chkstk_darwin();
  v116 = &v93 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10010FC20(&qword_1011AF9A8, &qword_100EFB9C8);
  v118 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v93 - v4;
  v111 = sub_10010FC20(&qword_1011AF9B0, &qword_100EFB9D0);
  v110 = *(v111 - 8);
  __chkstk_darwin();
  v108 = &v93 - v6;
  v114 = sub_10010FC20(&qword_1011AF9B8, &qword_100EFB9D8);
  v113 = *(v114 - 8);
  __chkstk_darwin();
  v112 = &v93 - v7;
  v102 = sub_10010FC20(&qword_1011AF9C0, &qword_100EFB9E0);
  v101 = *(v102 - 8);
  __chkstk_darwin();
  v95 = &v93 - v8;
  v9 = sub_10010FC20(&qword_1011AF9C8, &qword_100EFB9E8);
  v103 = *(v9 - 8);
  __chkstk_darwin();
  v99 = &v93 - v10;
  v11 = sub_10010FC20(&qword_1011AF9D0, &qword_100EFB9F0);
  v106 = *(v11 - 8);
  __chkstk_darwin();
  v105 = &v93 - v12;
  sub_10010FC20(&qword_1011A90D0, &qword_100EEF678);
  __chkstk_darwin();
  v115 = &v93 - v13;
  v14 = sub_10010FC20(&qword_1011ACFE0, "z_\n");
  v126 = *(v14 - 8);
  __chkstk_darwin();
  v125 = &v93 - v15;
  v120 = sub_10010FC20(&qword_1011AF9D8, &qword_100EFB9F8);
  v96 = *(v120 - 1);
  __chkstk_darwin();
  v94 = &v93 - v16;
  v122 = sub_10010FC20(&unk_1011AF9E0, &unk_100EFBA00);
  v98 = *(v122 - 8);
  __chkstk_darwin();
  v97 = &v93 - v17;
  sub_10010FC20(&qword_1011AF1E8, &qword_100EFB478);
  __chkstk_darwin();
  v19 = &v93 - v18;
  if (qword_1011A6B30 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v20 = type metadata accessor for Logger();
    sub_1000060E4(v20, static Logger.groupActivities);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    v23 = os_log_type_enabled(v21, v22);
    v119 = v3;
    v117 = v5;
    v107 = v11;
    v104 = v9;
    v127 = v14;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v131[0] = v25;
      *v24 = 136446210;
      v129[0] = *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session);

      sub_10010FC20(&unk_1011AFA48, &unk_100EFBA10);
      v26 = String.init<A>(reflecting:)();
      v28 = sub_100010678(v26, v27, v131);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "📲 Receiving a new session=%{public}s", v24, 0xCu);
      sub_10000959C(v25);
    }

    v128 = *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session);
    if (v128)
    {
      break;
    }

    v75 = type metadata accessor for GroupActivitiesManager.Activity(0);
    (*(*(v75 - 8) + 56))(v19, 1, 1, v75);
    v76 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_activity;
    swift_beginAccess();
    sub_1002190E0(v19, v1 + v76, &qword_1011AF1E8, &qword_100EFB478);
    swift_endAccess();
    sub_100AB5C28();
    sub_1000095E8(v19, &qword_1011AF1E8, &qword_100EFB478);
    v77 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_sessionSubscriptions;
    swift_beginAccess();
    v3 = *(v1 + v77);
    if ((v3 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for AnyCancellable();
      sub_100053024(&qword_1011A7CF8, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
      Set.Iterator.init(_cocoa:)();
      v19 = v131[0];
      v5 = v131[1];
      v78 = v131[2];
      v9 = v131[3];
      v11 = v131[4];
    }

    else
    {
      v79 = -1 << *(v3 + 32);
      v5 = (v3 + 56);
      v78 = ~v79;
      v80 = -v79;
      if (v80 < 64)
      {
        v81 = ~(-1 << v80);
      }

      else
      {
        v81 = -1;
      }

      v11 = v81 & *(v3 + 56);
      swift_bridgeObjectRetain_n();
      v9 = 0;
      v19 = v3;
    }

    v128 = v78;
    for (i = (v78 + 64) >> 6; v19 < 0; v11 = v85)
    {
      v87 = __CocoaSet.Iterator.next()();
      if (!v87)
      {
        goto LABEL_27;
      }

      v129[4] = v87;
      type metadata accessor for AnyCancellable();
      swift_dynamicCast();
      v14 = v9;
      v85 = v11;
      if (!v130)
      {
        goto LABEL_27;
      }

LABEL_25:
      AnyCancellable.cancel()();

      v9 = v14;
    }

    v83 = v9;
    v84 = v11;
    v14 = v9;
    if (v11)
    {
LABEL_21:
      v85 = (v84 - 1) & v84;
      v86 = *(*(v19 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v84)))));

      if (v86)
      {
        goto LABEL_25;
      }

LABEL_27:
      sub_10005C9F8(v19);

      *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_nowPlayingSubscription) = 0;

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v130);

      v88 = v130;
      swift_getKeyPath();
      swift_getKeyPath();
      v130 = 0;

      static Published.subscript.setter();
      sub_100AADE94(v88);
      v89 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
      swift_beginAccess();
      *(v1 + v89) = 0;
      v90 = v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext;
      v91 = *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext);
      v92 = *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext + 8);
      *v90 = xmmword_100EBCEE0;
      *(v90 + 16) = 0;
      sub_100AC0564(v91, v92);
      return;
    }

    while (1)
    {
      v14 = v83 + 1;
      if (__OFADD__(v83, 1))
      {
        break;
      }

      if (v14 >= i)
      {
        goto LABEL_27;
      }

      v84 = *&v5[8 * v14];
      ++v83;
      if (v84)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  GroupSession.activity.getter();
  v29 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v30 = *(v29 - 8);
  (*(v30 + 56))(v19, 0, 1, v29);
  v31 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_activity;
  swift_beginAccess();
  sub_1002190E0(v19, v1 + v31, &qword_1011AF1E8, &qword_100EFB478);
  swift_endAccess();
  sub_100AB5C28();
  sub_1000095E8(v19, &qword_1011AF1E8, &qword_100EFB478);
  v32 = sub_100AB65CC(v129);
  v34 = v33;
  if (!(*(v30 + 48))(v33, 1, v29))
  {
    swift_beginAccess();
    sub_100008FE4(v1 + 16, v131);
    sub_10006B010(v131, v34, &qword_1011AF0C8, &qword_100EFB238);
  }

  v32(v129, 0);
  v35 = v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext;
  v36 = *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext);
  v37 = *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext + 8);
  *v35 = xmmword_100EBCEE0;
  *(v35 + 16) = 0;
  sub_100AC0564(v36, v37);
  if (qword_1011A6820 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_10010FC20(&qword_1011AD0E0, &unk_100EF1878);
  v38 = v125;
  Published.projectedValue.getter();
  swift_endAccess();
  v121 = &protocol conformance descriptor for Published<A>.Publisher;
  sub_100020674(&unk_1011AD0E8, &qword_1011ACFE0, "z_\n", &protocol conformance descriptor for Published<A>.Publisher);
  sub_100AC0F6C();
  v39 = v94;
  v40 = v127;
  Publisher<>.removeDuplicates()();
  (*(v126 + 8))(v38, v40);
  v127 = sub_100009F78(0, &qword_1011A9F80, OS_dispatch_queue_ptr);
  v41 = static OS_dispatch_queue.main.getter();
  v131[0] = v41;
  v42 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v43 = *(v42 - 8);
  v123 = *(v43 + 56);
  v125 = (v43 + 56);
  v44 = v115;
  v124 = v42;
  v123(v115, 1, 1, v42);
  sub_100020674(&unk_1011AF9F8, &qword_1011AF9D8, &qword_100EFB9F8, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v45 = sub_100020724();
  v46 = v97;
  v47 = v120;
  v126 = v45;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v44, &qword_1011A90D0, &qword_100EEF678);

  (*(v96 + 8))(v39, v47);
  swift_allocObject();
  swift_weakInit();
  v120 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_100020674(&qword_1011AFA08, &unk_1011AF9E0, &unk_100EFBA00, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v48 = v122;
  Publisher<>.sink(receiveValue:)();

  (*(v98 + 8))(v46, v48);
  v49 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_sessionSubscriptions;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v50 = v95;
  GroupSession.$activeParticipants.getter();
  v51 = static OS_dispatch_queue.main.getter();
  v131[0] = v51;
  v123(v44, 1, 1, v42);
  sub_100020674(&qword_1011AFA10, &qword_1011AF9C0, &qword_100EFB9E0, v121);
  v52 = v99;
  v53 = v102;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v44, &qword_1011A90D0, &qword_100EEF678);

  (*(v101 + 8))(v50, v53);
  sub_100020674(&qword_1011AFA18, &qword_1011AF9C8, &qword_100EFB9E8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v54 = v105;
  v55 = v104;
  Publisher.map<A>(_:)();
  (*(v103 + 8))(v52, v55);
  swift_allocObject();
  swift_weakInit();
  sub_100020674(&qword_1011AFA20, &qword_1011AF9D0, &qword_100EFB9F0, &protocol conformance descriptor for Publishers.Map<A, B>);
  v56 = v107;
  Publisher<>.sink(receiveValue:)();

  (*(v106 + 8))(v54, v56);
  v122 = v49;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v57 = v128;
  v58 = v108;
  GroupSession.$state.getter();
  v59 = static OS_dispatch_queue.main.getter();
  v131[0] = v59;
  v60 = v123;
  v123(v44, 1, 1, v124);
  sub_100020674(&qword_1011AFA28, &qword_1011AF9B0, &qword_100EFB9D0, v121);
  v61 = v112;
  v62 = v111;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v44, &qword_1011A90D0, &qword_100EEF678);

  (*(v110 + 8))(v58, v62);
  v63 = swift_allocObject();
  swift_weakInit();
  v64 = swift_allocObject();
  *(v64 + 16) = v63;
  *(v64 + 24) = v57;
  sub_100020674(&unk_1011AFA30, &qword_1011AF9B8, &qword_100EFB9D8, v120);

  v65 = v114;
  Publisher<>.sink(receiveValue:)();

  (*(v113 + 8))(v61, v65);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v121 = objc_opt_self();
  v66 = [v121 defaultCenter];
  v67 = v116;
  NSNotificationCenter.publisher(for:object:)();

  v68 = static OS_dispatch_queue.main.getter();
  v131[0] = v68;
  v60(v44, 1, 1, v124);
  v114 = sub_100053024(&qword_1011AC0A0, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
  v69 = v117;
  v70 = v100;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v44, &qword_1011A90D0, &qword_100EEF678);

  v113 = *(v109 + 8);
  (v113)(v67, v70);
  swift_allocObject();
  swift_weakInit();
  v120 = sub_100020674(&qword_1011AFA40, &qword_1011AF9A8, &qword_100EFB9C8, v120);
  v71 = v119;
  Publisher<>.sink(receiveValue:)();

  v118 = *(v118 + 8);
  (v118)(v69, v71);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v72 = [v121 defaultCenter];
  v73 = String._bridgeToObjectiveC()();
  NSNotificationCenter.publisher(for:object:)();

  v74 = static OS_dispatch_queue.main.getter();
  v131[0] = v74;
  v123(v44, 1, 1, v124);
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v44, &qword_1011A90D0, &qword_100EEF678);

  (v113)(v67, v70);
  swift_allocObject();
  swift_weakInit();
  Publisher<>.sink(receiveValue:)();

  (v118)(v69, v71);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

double sub_100AB7E04(__int128 *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v8 = a1[4];
    v9 = a1[5];
    v10 = a1[6];
    v11 = a1[7];
    v4 = *a1;
    v5 = a1[1];
    v6 = a1[2];
    v7 = a1[3];
    UIScreen.Dimensions.size.getter();
    v12[4] = v8;
    v12[5] = v9;
    v12[6] = v10;
    v12[7] = v11;
    v12[0] = v4;
    v12[1] = v5;
    v12[2] = v6;
    v12[3] = v7;
    sub_100AB7EB4(v12);
  }

  return result;
}

void sub_100AB7EB4(unsigned __int8 *a1)
{
  v106 = *a1;
  v2 = a1[1];
  v104 = a1[2];
  LODWORD(v105) = v2;
  v3 = *(a1 + 2);
  v103 = *(a1 + 1);
  v101 = v3;
  v99 = a1[24];
  v100 = *(a1 + 4);
  v4 = *(a1 + 3);
  v108 = *(a1 + 2);
  v98 = v4;
  v5 = *(a1 + 10);
  v6 = *(a1 + 11);
  v7 = a1[96];
  v8 = *(a1 + 13);
  v9 = a1[112];
  v10 = *(a1 + 15);
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  __chkstk_darwin();
  v102 = &v98 - v11;
  v12 = *(a1 + 5);
  v127[4] = *(a1 + 4);
  v127[5] = v12;
  v13 = *(a1 + 7);
  v127[6] = *(a1 + 6);
  v127[7] = v13;
  v14 = *(a1 + 1);
  v127[0] = *a1;
  v127[1] = v14;
  v15 = *(a1 + 3);
  v127[2] = *(a1 + 2);
  v127[3] = v15;
  if (sub_100066F78(v127) == 1)
  {
    if (qword_1011A6820 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v114);

    v16 = v114;
    v17 = BYTE1(v114);
    v18 = BYTE2(v114);
    v19 = v115;
    v20 = v116;
    v21 = v117;
    v23 = v119;
    v22 = v120;
    v24 = v118;
    v25 = v121;
    v6 = v122;
    v7 = v123;
    v8 = v124;
    v9 = v125;
    v10 = v126;
  }

  else
  {
    v16 = v106;
    v24 = v108;
    v18 = v104;
    v17 = v105;
    v19 = v103;
    v20 = v101;
    v21 = v99;
    v22 = v100;
    v25 = v5;
    v23 = v98;
  }

  v108 = v24;
  v26 = v16;
  LODWORD(v101) = v16 & 1;
  LOBYTE(v114) = v16 & 1;
  BYTE1(v114) = v17 & 1;
  BYTE2(v114) = v18 & 1;
  v115 = v19;
  v116 = v20;
  v106 = v21 & 1;
  v117 = v21 & 1;
  v118 = v24;
  v119 = v23;
  v120 = v22;
  v121 = v25;
  v122 = v6;
  v123 = v7;
  v124 = v8;
  v125 = v9;
  v126 = v10;
  v27 = 256;
  if (v21)
  {
    v28 = 256;
  }

  else
  {
    v28 = 0;
  }

  sub_10001494C(&v114, &v110);
  sub_1000089F8(a1, &v110, &qword_1011AFA58, &qword_100EFBA20);
  v29 = v108;
  v30 = sub_10048BBDC(0, v108);
  LODWORD(v29) = sub_10048BBDC(2, v29);
  v31 = v6;
  sub_100014984(&v114);
  v32 = v30;
  v33 = v107 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext;
  v34 = *(v107 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext);
  v35 = *(v107 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext + 8);
  v36 = *(v107 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext + 16);
  v104 = v29;
  if ((v29 & 1) == 0)
  {
    v27 = 0;
  }

  v37 = v27 & 0xFFFFFFFFFFFFFFFELL | v32 & 1;
  v38 = v28 & 0xFFFE | v26 & 1;
  v103 = v32;
  if (v35 == 1)
  {
    v39 = v31;
    sub_100AC0564(v34, 1);
    sub_100AC0564(v37, v6);
    goto LABEL_22;
  }

  if ((v32 & 1) != (v34 & 1) || ((v104 ^ ((v34 & 0x100) == 0)) & 1) == 0)
  {
    goto LABEL_21;
  }

  if (!v35)
  {
    if (!v6)
    {
      if ((v101 ^ v36))
      {
        goto LABEL_22;
      }

      v42 = v36 & 0x100;
      goto LABEL_56;
    }

LABEL_21:
    v43 = v31;
    goto LABEL_22;
  }

  if (!v6 || (LODWORD(v108) = v36, v105 = sub_100009F78(0, &qword_1011A9F78, ICMusicSubscriptionStatus_ptr), v40 = v31, sub_100AC12B0(v34, v35), v41 = static NSObject.== infix(_:_:)(), v40, sub_100AC0564(v34, v35), (v41 & 1) == 0) || ((v101 ^ v108) & 1) != 0)
  {
LABEL_22:
    v44 = *v33;
    v45 = *(v33 + 8);
    *v33 = v37;
    *(v33 + 8) = v6;
    *(v33 + 16) = v38;
    sub_100AC0564(v44, v45);
    if (qword_1011A6B30 != -1)
    {
      swift_once();
    }

    v105 = v6;
    v46 = type metadata accessor for Logger();
    sub_1000060E4(v46, static Logger.groupActivities);
    v47 = v31;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    *&v108 = v47;

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v109 = v51;
      *v50 = 136446210;
      LOBYTE(v110) = v103 & 1;
      HIBYTE(v110) = v104 & 1;
      v111 = v105;
      v112 = v101;
      v52 = v106;
      v113 = v106;
      v53 = v108;
      v54 = String.init<A>(reflecting:)();
      v56 = sub_100010678(v54, v55, &v109);

      *(v50 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v48, v49, "🛂 Checking eligibility with context=%{public}s", v50, 0xCu);
      sub_10000959C(v51);

      if ((v52 & 1) == 0)
      {
LABEL_26:
        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          *v59 = 0;
          _os_log_impl(&_mh_execute_header, v57, v58, "🛂 User did not accept GDPR", v59, 2u);
        }

        v60 = type metadata accessor for TaskPriority();
        v61 = v102;
        (*(*(v60 - 8) + 56))(v102, 1, 1, v60);
        type metadata accessor for MainActor();
        v62 = static MainActor.shared.getter();
        v63 = swift_allocObject();
        *(v63 + 16) = v62;
        *(v63 + 24) = &protocol witness table for MainActor;
        sub_100969D4C(0, 0, v61, &unk_100EFBA30, v63);
        goto LABEL_52;
      }
    }

    else
    {

      v52 = v106;
      if ((v106 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v64 = v105;
    if (!v105 || ([v108 capabilities] & 1) == 0)
    {
      if (v103)
      {
        if (v104)
        {
          if (v101)
          {
            if (v64)
            {
              v65 = v108;
              if (([v65 capabilities] & 1) == 0)
              {
                v66 = Logger.logObject.getter();
                v67 = static os_log_type_t.default.getter();
                if (os_log_type_enabled(v66, v67))
                {
                  v68 = swift_slowAlloc();
                  *v68 = 0;
                  _os_log_impl(&_mh_execute_header, v66, v67, "🛂 User is not a subscriber -> up sell", v68, 2u);
                }

                v69 = type metadata accessor for TaskPriority();
                v70 = v102;
                (*(*(v69 - 8) + 56))(v102, 1, 1, v69);
                v71 = swift_allocObject();
                v71[2] = 0;
                v71[3] = 0;
                v71[4] = v107;

                sub_100969440(0, 0, v70, &unk_100EFBA50, v71);
                sub_100014984(&v114);

                goto LABEL_53;
              }

              v64 = v105;
            }

            v91 = v108;
            v88 = Logger.logObject.getter();
            v92 = static os_log_type_t.default.getter();

            if (!os_log_type_enabled(v88, v92))
            {
              sub_100014984(&v114);

              goto LABEL_67;
            }

            v93 = swift_slowAlloc();
            v94 = swift_slowAlloc();
            v109 = v94;
            *v93 = 136446210;
            v110 = 257;
            v111 = v64;
            v112 = v101;
            v113 = v52;
            v31 = v91;
            v95 = String.init<A>(reflecting:)();
            v97 = sub_100010678(v95, v96, &v109);

            *(v93 + 4) = v97;
            _os_log_impl(&_mh_execute_header, v88, v92, "🛂 Unknown prepare case with=%{public}s", v93, 0xCu);
            sub_10000959C(v94);

            goto LABEL_64;
          }

          v83 = Logger.logObject.getter();
          v84 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v83, v84))
          {
            v85 = swift_slowAlloc();
            *v85 = 0;
            _os_log_impl(&_mh_execute_header, v83, v84, "🛂 User is not signed in -> request authentication", v85, 2u);
          }

          v86 = type metadata accessor for TaskPriority();
          v77 = v102;
          (*(*(v86 - 8) + 56))(v102, 1, 1, v86);
          v78 = swift_allocObject();
          v78[2] = 0;
          v78[3] = 0;
          v78[4] = v107;

          v79 = &unk_100EFBA40;
LABEL_51:
          sub_100969440(0, 0, v77, v79, v78);
LABEL_52:
          sub_100014984(&v114);

LABEL_53:

          return;
        }

        v80 = Logger.logObject.getter();
        v81 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          *v82 = 0;
          _os_log_impl(&_mh_execute_header, v80, v81, "🛂 Apple Music content disabled", v82, 2u);
        }

        v75 = 1;
      }

      else
      {
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          *v74 = 0;
          _os_log_impl(&_mh_execute_header, v72, v73, "🛂 Music services restricted", v74, 2u);
        }

        v75 = 0;
      }

      sub_100ABC6D4(v75);
      sub_100014984(&v114);

      return;
    }

    v76 = type metadata accessor for TaskPriority();
    v77 = v102;
    (*(*(v76 - 8) + 56))(v102, 1, 1, v76);
    v78 = swift_allocObject();
    v78[2] = 0;
    v78[3] = 0;
    v78[4] = v107;

    v79 = &unk_100EFBA60;
    goto LABEL_51;
  }

  v42 = v108 & 0x100;
LABEL_56:
  if ((v106 ^ (v42 >> 8)))
  {
    goto LABEL_22;
  }

  if (qword_1011A6B30 != -1)
  {
    swift_once();
  }

  v87 = type metadata accessor for Logger();
  sub_1000060E4(v87, static Logger.groupActivities);
  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v88, v89))
  {
    goto LABEL_65;
  }

  v90 = swift_slowAlloc();
  *v90 = 0;
  _os_log_impl(&_mh_execute_header, v88, v89, "Eligibility context didn't change.", v90, 2u);
LABEL_64:

LABEL_65:
  sub_100014984(&v114);

LABEL_67:
}

double sub_100AB8B1C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v5);

    v4 = v5;
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = v2;

    static Published.subscript.setter();
    sub_100AADE94(v4);
  }

  return result;
}

uint64_t sub_100AB8C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a3;
  v5 = type metadata accessor for OSSignpostError();
  v57 = *(v5 - 8);
  v58 = v5;
  __chkstk_darwin();
  v56 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OSSignpostID();
  v59 = *(v7 - 8);
  v60 = v7;
  __chkstk_darwin();
  v61 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&qword_1011AF0A8, &qword_100EFB210);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v63 = (&v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v13 = &v55 - v12;
  __chkstk_darwin();
  v15 = &v55 - v14;
  if (qword_1011A6B30 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000060E4(v16, static Logger.groupActivities);
  v17 = *(v10 + 16);
  v66 = a1;
  v18 = a1;
  v19 = v17;
  v17(v15, v18, v9);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v22 = os_log_type_enabled(v20, v21);
  v64 = v10;
  v62 = v19;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v55 = a2;
    v24 = v23;
    v25 = swift_slowAlloc();
    v26 = v19;
    v27 = v25;
    *&v75[0] = v25;
    *v24 = 136446210;
    v26(v13, v15, v9);
    v28 = String.init<A>(reflecting:)();
    v29 = v10;
    v31 = v30;
    (*(v29 + 8))(v15, v9);
    v32 = sub_100010678(v28, v31, v75);

    *(v24 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v20, v21, "📥 Session update with state=%{public}s", v24, 0xCu);
    sub_10000959C(v27);
  }

  else
  {

    (*(v10 + 8))(v15, v9);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  v34 = v66;
  if (result)
  {
    v35 = result;
    v36 = v63;
    v62(v63, v66, v9);
    v37 = v64;
    v38 = (*(v64 + 88))(v36, v9);
    if (v38 == enum case for GroupSession.State.invalidated<A>(_:))
    {
      (*(v37 + 96))(v36, v9);
      sub_100AB9344(*v36);
    }

    else if (v38 == enum case for GroupSession.State.waiting<A>(_:))
    {
      sub_10001DBDC(&v67);
      v75[4] = v71;
      v75[5] = v72;
      v75[6] = v73;
      v75[7] = v74;
      v75[0] = v67;
      v75[1] = v68;
      v75[2] = v69;
      v75[3] = v70;
      sub_100AB7EB4(v75);
    }

    else
    {
      if (v38 != enum case for GroupSession.State.joined<A>(_:))
      {
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v39 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostJoinSessionState;
      v40 = v61;
      if (*(v35 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostJoinSessionState))
      {
        v41 = qword_1011A7168;

        if (v41 != -1)
        {
          swift_once();
        }

        v42 = type metadata accessor for OSSignposter();
        sub_1000060E4(v42, static OSSignposter.sharePlay);
        v43 = OSSignposter.logHandle.getter();
        OSSignpostIntervalState.signpostID.getter();
        v44 = static os_signpost_type_t.end.getter();
        if (OS_os_log.signpostsEnabled.getter())
        {

          v45 = v56;
          checkForErrorAndConsumeState(state:)();

          v47 = v57;
          v46 = v58;
          if ((*(v57 + 88))(v45, v58) == enum case for OSSignpostError.doubleEnd(_:))
          {
            v48 = "[Error] Interval already ended";
          }

          else
          {
            (*(v47 + 8))(v45, v46);
            v48 = "";
          }

          v49 = swift_slowAlloc();
          *v49 = 0;
          v50 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v43, v44, v50, "JoinSession", v48, v49, 2u);

          v34 = v66;
        }

        (*(v59 + 8))(v40, v60);
        *(v35 + v39) = 0;
      }
    }

    sub_100AAE78C();
    swift_beginAccess();
    sub_100008FE4(v35 + 16, &v67);
    v51 = *(&v68 + 1);
    v52 = v69;
    sub_10000954C(&v67, *(&v68 + 1));
    v53 = v65;
    v54 = GroupSession.isLocallyInitiated.getter();
    (*(v52 + 40))(v53, v34, v54 & 1, v51, v52);

    return sub_10000959C(&v67);
  }

  return result;
}

double sub_100AB9344(uint64_t a1)
{
  v2 = v1;
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  __chkstk_darwin();
  v4 = &v16 - v3;
  if (qword_1011A6B30 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000060E4(v5, static Logger.groupActivities);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = Error.localizedDescription.getter();
    v12 = sub_100010678(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Session invalidated for reason=%{public}s", v8, 0xCu);
    sub_10000959C(v9);
  }

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v2;

  sub_100969440(0, 0, v4, &unk_100EFBAD0, v14);

  return result;
}

uint64_t sub_100AB9598(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&qword_1011A9B20, &qword_100EF1560);
  __chkstk_darwin();
  v3 = v15 - v2;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = Notification.userInfo.getter();
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = v8;
  v15[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15[2] = v10;
  AnyHashable.init<A>(_:)();
  if (!*(v9 + 16) || (v11 = sub_1000160B4(v16), (v12 & 1) == 0))
  {

    sub_10001621C(v16);
LABEL_8:
    v17 = 0u;
    v18 = 0u;
    goto LABEL_9;
  }

  sub_10000DD18(*(v9 + 56) + 32 * v11, &v17);
  sub_10001621C(v16);

  if (!*(&v18 + 1))
  {
LABEL_9:
    sub_1000095E8(&v17, &qword_1011ABB20, &unk_100EF1530);
    (*(v5 + 56))(v3, 1, 1, v4);
    goto LABEL_10;
  }

  v13 = swift_dynamicCast();
  (*(v5 + 56))(v3, v13 ^ 1u, 1, v4);
  if ((*(v5 + 48))(v3, 1, v4) != 1)
  {
    (*(v5 + 32))(v7, v3, v4);
    goto LABEL_12;
  }

LABEL_10:
  Date.init()();
  if ((*(v5 + 48))(v3, 1, v4) != 1)
  {
    sub_1000095E8(v3, &qword_1011A9B20, &qword_100EF1560);
  }

LABEL_12:
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100AB9888(v7);
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_100AB9888(void *a1)
{
  v2 = v1;
  v40 = a1;
  sub_10010FC20(&qword_1011A9B20, &qword_100EF1560);
  __chkstk_darwin();
  v39 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v39 - v4;
  v6 = type metadata accessor for Date();
  v42 = *(v6 - 8);
  v43 = v6;
  __chkstk_darwin();
  v41 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011AA2D0, qword_100EFB480);
  __chkstk_darwin();
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v39 - v10;
  v12 = type metadata accessor for Signpost(0);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostInitiationToFirstAudioFrame;
  swift_beginAccess();
  sub_1000089F8(v2 + v16, v11, &qword_1011AA2D0, qword_100EFB480);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000095E8(v11, &qword_1011AA2D0, qword_100EFB480);
  }

  else
  {
    sub_100ABFAA8(v11, v15, type metadata accessor for Signpost);
    Signpost.end(dso:)(&_mh_execute_header);
    sub_100ABFC7C(v15, type metadata accessor for Signpost);
    (*(v13 + 56))(v9, 1, 1, v12);
    swift_beginAccess();
    sub_10006B010(v9, v2 + v16, &qword_1011AA2D0, qword_100EFB480);
    swift_endAccess();
  }

  v17 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_autoBugCaptureIntervalBeginDate;
  swift_beginAccess();
  sub_1000089F8(v2 + v17, v5, &qword_1011A9B20, &qword_100EF1560);
  v19 = v42;
  v18 = v43;
  if ((*(v42 + 48))(v5, 1, v43) != 1)
  {
    (*(v19 + 32))(v41, v5, v18);
    Date.timeIntervalSince(_:)();
    v25 = v24;
    if (qword_1011A6B30 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000060E4(v26, static Logger.groupActivities);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      *(v29 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v27, v28, "endMeasuringInitiationTime: %f", v29, 0xCu);
    }

    if (v25 <= 10.0)
    {
      goto LABEL_19;
    }

    v30 = objc_opt_self();
    v31 = sub_100ABA5B4();
    v32 = String._bridgeToObjectiveC()();
    v33 = String._bridgeToObjectiveC()();
    v34 = String._bridgeToObjectiveC()();
    if (*&v25 >> 52 > 0x7FEuLL)
    {
      __break(1u);
    }

    else if (v25 > -9.22337204e18)
    {
      if (v25 < 9.22337204e18)
      {
        v44 = v25;
        v40 = v34;
        v35 = v31;
        dispatch thunk of CustomStringConvertible.description.getter();
        v36 = String._bridgeToObjectiveC()();

        v37 = v40;
        [v30 snapshotWithDomain:v35 type:v32 subType:v33 context:v40 triggerThresholdValues:v36 events:0 completion:0];

LABEL_19:
        (*(v19 + 8))(v41, v18);
        v38 = v39;
        (*(v19 + 56))(v39, 1, 1, v18);
        swift_beginAccess();
        sub_10006B010(v38, v2 + v17, &qword_1011A9B20, &qword_100EF1560);
        swift_endAccess();
        return;
      }

LABEL_22:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_22;
  }

  sub_1000095E8(v5, &qword_1011A9B20, &qword_100EF1560);
  if (qword_1011A6B30 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_1000060E4(v20, static Logger.groupActivities);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Attempting to endMeasuringInitiationTime but there was no begin time.", v23, 2u);
  }
}

double sub_100AB9FB8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100AAE78C();
  }

  return result;
}

uint64_t GroupActivitiesManager.__allocating_init(coordinator:)(void *a1)
{
  v2 = swift_allocObject();
  GroupActivitiesManager.init(coordinator:)(a1);
  return v2;
}

uint64_t sub_100ABA050()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 160);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_100ABA528;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_100ABA1E8;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_100ABA1E8()
{

  v0[23] = v0[2];
  v1 = v0[14];
  v2 = v0[15];

  return _swift_task_switch(sub_100ABA254, v1, v2);
}

uint64_t sub_100ABA254()
{
  v16 = v0;
  v1 = v0[23];
  if (v1)
  {
    v2 = v0[5];
    if (*(v2 + v0[17]) == 1)
    {

      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v15 = v6;
        *v5 = 136446210;
        v0[4] = v1;

        sub_10010FC20(&qword_1011AF978, &qword_100EFB970);
        v7 = String.init<A>(reflecting:)();
        v9 = sub_100010678(v7, v8, &v15);

        *(v5 + 4) = v9;
        _os_log_impl(&_mh_execute_header, v3, v4, "leaveCommand in progress, setting pendingSession=%{public}s", v5, 0xCu);
        sub_10000959C(v6);
      }

      *(v0[5] + v0[19]) = v0[23];
    }

    else
    {
      *(v2 + v0[18]) = v1;
      swift_retain_n();

      sub_100AB6664();
    }

    v0[20] = static MainActor.shared.getter();
    v12 = sub_100020674(&qword_1011AF970, &qword_1011AF968, &qword_100EFB968, &protocol conformance descriptor for GroupSession<A>.Sessions.Iterator);
    v13 = swift_task_alloc();
    v0[21] = v13;
    *v13 = v0;
    v13[1] = sub_100ABA050;
    v14 = v0[9];

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 2, v14, v12);
  }

  else
  {
    (*(v0[10] + 8))(v0[11], v0[9]);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_100ABA528()
{
  *(v0 + 24) = *(v0 + 176);
  sub_10010FC20(&qword_1011AB640, L"D\v\a");
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

id sub_100ABA5B4()
{
  v1 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager____lazy_storage___autoBugCaptureDomain;
  v2 = *(v0 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager____lazy_storage___autoBugCaptureDomain);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager____lazy_storage___autoBugCaptureDomain);
  }

  else
  {
    v4 = String._bridgeToObjectiveC()();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_100ABA624(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  if (a1[17])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  if (a2[1])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  if (a2[17])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return sub_100ABFEB4(v2 | *a1, *(a1 + 1), v3 | a1[16], v4 | *a2, *(a2 + 1), v5 | a2[16]);
}

uint64_t sub_100ABA688(uint64_t a1)
{
  v1[2] = a1;
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for URL();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[7] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100ABA7B4, v4, v3);
}

uint64_t sub_100ABA7B4()
{

  v1 = [objc_opt_self() defaultWorkspace];
  if (v1)
  {
    v2 = *(v0 + 32);
    v3 = *(v0 + 40);
    v4 = *(v0 + 24);
    URL.init(string:)();
    if ((*(v3 + 48))(v4, 1, v2) == 1)
    {
      sub_1000095E8(*(v0 + 24), &qword_1011A77F0, &unk_100EEAA20);
    }

    else
    {
      v6 = *(v0 + 40);
      v5 = *(v0 + 48);
      v7 = *(v0 + 32);
      (*(v6 + 32))(v5, *(v0 + 24), v7);
      URL._bridgeToObjectiveC()(v8);
      v10 = v9;
      sub_1008BC8D8(_swiftEmptyArrayStorage);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v1 openSensitiveURL:v10 withOptions:isa];

      (*(v6 + 8))(v5, v7);
    }
  }

  **(v0 + 16) = v1 == 0;

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100ABA97C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008F30;

  return sub_100ABAA0C();
}

uint64_t sub_100ABAA0C()
{
  v1[25] = v0;
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  v1[26] = swift_task_alloc();
  sub_10010FC20(&qword_1011A90D0, &qword_100EEF678);
  v1[27] = swift_task_alloc();
  v2 = sub_10010FC20(&unk_1011AFA60, &qword_100EF6D20);
  v1[28] = v2;
  v1[29] = *(v2 - 8);
  v1[30] = swift_task_alloc();
  v3 = sub_10010FC20(&qword_1011ADA00, &qword_100EF81C8);
  v1[31] = v3;
  v1[32] = *(v3 - 8);
  v1[33] = swift_task_alloc();
  v4 = type metadata accessor for OSSignpostID();
  v1[34] = v4;
  v1[35] = *(v4 - 8);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = type metadata accessor for GroupActivitiesManager.Activity(0);
  v1[40] = swift_task_alloc();
  v5 = sub_10010FC20(&qword_1011AF0A8, &qword_100EFB210);
  v1[41] = v5;
  v1[42] = *(v5 - 8);
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = type metadata accessor for MainActor();
  v1[46] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[47] = v7;
  v1[48] = v6;

  return _swift_task_switch(sub_100ABAD00, v7, v6);
}

id sub_100ABAD00()
{
  v70 = v0;
  v1 = *(v0 + 200);
  v2 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  *(v0 + 392) = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  v3 = *(v1 + v2);
  *(v0 + 400) = v3;
  if (!v3)
  {
    goto LABEL_24;
  }

  v5 = *(v0 + 344);
  v4 = *(v0 + 352);
  v6 = *(v0 + 328);
  v7 = *(v0 + 336);

  GroupSession.state.getter();
  *(v0 + 568) = enum case for GroupSession.State.waiting<A>(_:);
  v8 = *(v7 + 104);
  *(v0 + 408) = v8;
  *(v0 + 416) = (v7 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v8(v5);
  *(v0 + 424) = sub_100053024(&qword_1011AF0B0, type metadata accessor for GroupActivitiesManager.Activity, &protocol conformance descriptor for GroupActivitiesManager.Activity);
  v9 = static GroupSession.State.== infix(_:_:)();
  v10 = *(v7 + 8);
  *(v0 + 432) = v10;
  *(v0 + 440) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v5, v6);
  v10(v4, v6);
  if (v9)
  {
    if (qword_1011A6B30 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    *(v0 + 448) = sub_1000060E4(v11, static Logger.groupActivities);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Attempting to join", v14, 2u);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter((v0 + 572));

    v15 = *(v0 + 572);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 573) = 1;

    static Published.subscript.setter();
    sub_100AAE4AC(v15);
    if (*(v1 + v2))
    {
      v16 = *(v0 + 320);

      GroupSession.activity.getter();

      v17 = *(v16 + 48);
      if (v17)
      {
        v18 = *(v0 + 320);
        v19 = *(v17 + 16);
        *(v0 + 456) = v19;
        v20 = v19;
        sub_100ABFC7C(v18, type metadata accessor for GroupActivitiesManager.Activity);
        v21 = objc_allocWithZone(ICLiveLinkIdentity);
        v22 = swift_allocObject();
        *(v22 + 16) = sub_100AC12C0;
        *(v22 + 24) = v3;
        *(v0 + 48) = sub_1002CF914;
        *(v0 + 56) = v22;
        *(v0 + 16) = _NSConcreteStackBlock;
        *(v0 + 24) = 1107296256;
        *(v0 + 32) = sub_10006BD7C;
        *(v0 + 40) = &unk_1010DEAF8;
        v23 = _Block_copy((v0 + 16));

        v24 = [v21 initWithBlock:v23];
        *(v0 + 464) = v24;
        _Block_release(v23);

        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
LABEL_42:
          swift_once();
LABEL_36:
          v49 = type metadata accessor for OSSignposter();
          *(v0 + 480) = sub_1000060E4(v49, static OSSignposter.sharePlay);
          static OSSignpostID.exclusive.getter();
          v50 = OSSignposter.logHandle.getter();
          v51 = static os_signpost_type_t.begin.getter();
          if (OS_os_log.signpostsEnabled.getter())
          {
            v52 = swift_slowAlloc();
            *v52 = 0;
            v53 = OSSignpostID.rawValue.getter();
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v50, v51, v53, "AddIntent", "", v52, 2u);
          }

          v54 = *(v0 + 296);
          v55 = *(v0 + 304);
          v56 = *(v0 + 272);
          v57 = *(v0 + 280);
          v58 = *(v0 + 200);

          v59 = *(v57 + 16);
          *(v0 + 488) = v59;
          *(v0 + 496) = (v57 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v59(v54, v55, v56);
          *(v0 + 504) = type metadata accessor for OSSignpostIntervalState();
          swift_allocObject();
          *(v0 + 512) = OSSignpostIntervalState.init(id:isOpen:)();
          v60 = *(v57 + 8);
          *(v0 + 520) = v60;
          *(v0 + 528) = (v57 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v60(v55, v56);
          swift_beginAccess();
          v61 = v58[5];
          v62 = v58[6];
          sub_10000954C(v58 + 2, v61);
          v63 = *(v61 - 8);
          v64 = swift_task_alloc();
          *(v0 + 536) = v64;
          (*(v63 + 16))();
          v65 = (*(v62 + 48))(v61, v62);
          *(v0 + 544) = v65;
          (*(v63 + 8))(v64, v61);
          *(v0 + 176) = v58;

          v66 = String.init<A>(reflecting:)();
          *(v0 + 88) = &type metadata for Player.CommandIssuerIdentity;
          *(v0 + 96) = &protocol witness table for Player.CommandIssuerIdentity;
          *(v0 + 64) = v66;
          *(v0 + 72) = v67;
          v68 = swift_task_alloc();
          *(v0 + 552) = v68;
          *v68 = v0;
          v68[1] = sub_100ABB910;

          return static SharedListening.addIntent(_:playbackController:issuer:)(isEscapingClosureAtFileLocation, v65, v0 + 64);
        }

        v26 = [objc_opt_self() sharedSessionIntentWithProperties:v20 identity:v24];
        *(v0 + 472) = v26;
        if (v26)
        {
          isEscapingClosureAtFileLocation = v26;
          if (GroupSession.isLocallyInitiated.getter() & 1) != 0 && (GroupSession.isFirstJoin.getter())
          {
            v27 = 20;
          }

          else
          {
            v27 = 10;
          }

          [isEscapingClosureAtFileLocation setActionAfterQueueLoad:v27];

          v36 = Logger.logObject.getter();
          v37 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            v39 = swift_slowAlloc();
            v69 = v39;
            *v38 = 67240706;
            *(v38 + 4) = GroupSession.isLocallyInitiated.getter() & 1;
            *(v38 + 8) = 1026;
            *(v38 + 10) = GroupSession.isFirstJoin.getter() & 1;

            *(v38 + 14) = 2082;
            result = MPNSStringFromQueueLoadAction();
            if (!result)
            {
              __break(1u);
              return result;
            }

            v40 = result;
            v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v43 = v42;

            v44 = sub_100010678(v41, v43, &v69);

            *(v38 + 16) = v44;
            _os_log_impl(&_mh_execute_header, v36, v37, "Will join session isLocallyInitiated=%{BOOL,public}d\n/ isFirstJoin=%{BOOL,public}d.\n-> actionAfterQueueLoad=%{public}s", v38, 0x18u);
            sub_10000959C(v39);
          }

          else
          {
          }

          if (qword_1011A7168 == -1)
          {
            goto LABEL_36;
          }

          goto LABEL_42;
        }

        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&_mh_execute_header, v45, v46, "Failed to retrieve shared playback intent", v47, 2u);
        }

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter((v0 + 576));

        v48 = *(v0 + 576);
        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 577) = 0;

        static Published.subscript.setter();
        v33 = v48;
        goto LABEL_23;
      }

      v28 = *(v0 + 320);

      sub_100ABFC7C(v28, type metadata accessor for GroupActivitiesManager.Activity);
    }

    else
    {
    }

    if (qword_1011A6B50 != -1)
    {
      swift_once();
    }

    sub_1000060E4(v11, static Logger.sharedListening);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Session properties missing in activity", v31, 2u);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter((v0 + 574));

    v32 = *(v0 + 574);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 575) = 0;

    static Published.subscript.setter();
    v33 = v32;
LABEL_23:
    sub_100AAE4AC(v33);
    goto LABEL_24;
  }

LABEL_24:

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_100ABB910()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  *(*v1 + 560) = v0;

  if (v0)
  {
    v4 = *(v2 + 376);
    v5 = *(v2 + 384);
    v6 = sub_100ABC430;
  }

  else
  {
    sub_1000095E8(v2 + 64, &qword_1011A8658, &unk_100EF92B0);

    v4 = *(v2 + 376);
    v5 = *(v2 + 384);
    v6 = sub_100ABBA68;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100ABBA68()
{
  v73 = v0;
  v1 = *(v0 + 512);
  v2 = *(v0 + 392);
  v3 = *(v0 + 200);

  sub_100ABD82C(v1);

  v4 = *(v3 + v2);
  if (!v4)
  {
    v45 = 0;
LABEL_14:
    v48 = *(v0 + 464);
    v49 = *(v0 + 472);
    v50 = *(v0 + 456);
    v51 = *(v0 + 200);
    v52 = *(v0 + 208);
    sub_100AC0378();
    v53 = swift_allocError();
    *v54 = v45;
    *(v54 + 8) = 1;

    sub_100AB1820(v53, 0);

    v55 = type metadata accessor for TaskPriority();
    (*(*(v55 - 8) + 56))(v52, 1, 1, v55);

    v56 = static MainActor.shared.getter();
    v57 = swift_allocObject();
    v57[2] = v56;
    v57[3] = &protocol witness table for MainActor;
    v57[4] = v51;
    sub_100969440(0, 0, v52, &unk_100EFBA90, v57);

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter((v0 + 580));

    LOBYTE(v52) = *(v0 + 580);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 581) = 0;

    static Published.subscript.setter();
    v58 = v52;
    goto LABEL_18;
  }

  v5 = *(v0 + 432);
  v67 = *(v0 + 408);
  v6 = *(v0 + 568);
  v8 = *(v0 + 344);
  v7 = *(v0 + 352);
  v9 = *(v0 + 328);

  GroupSession.state.getter();
  v67(v8, v6, v9);
  v10 = static GroupSession.State.== infix(_:_:)();
  v5(v8, v9);
  v5(v7, v9);
  if ((v10 & 1) == 0)
  {
    v46 = *(v0 + 392);
    v47 = *(v0 + 200);

    v45 = *(v47 + v46);
    goto LABEL_14;
  }

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v72 = v14;
    *v13 = 136446210;
    *(v0 + 192) = v4;
    sub_10010FC20(&qword_1011AF978, &qword_100EFB970);
    sub_100020674(&qword_1011AFAD8, &qword_1011AF978, &qword_100EFB970, &protocol conformance descriptor for GroupSession<A>);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = sub_100010678(v15, v16, &v72);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "🤝 Joining shared session=%{public}s", v13, 0xCu);
    sub_10000959C(v14);
  }

  static OSSignpostID.exclusive.getter();
  v18 = OSSignposter.logHandle.getter();
  v19 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, v19, v21, "JoinSession", "", v20, 2u);
  }

  v22 = *(v0 + 520);
  v23 = *(v0 + 488);
  v70 = *(v0 + 392);
  v25 = *(v0 + 288);
  v24 = *(v0 + 296);
  v26 = *(v0 + 272);
  v27 = *(v0 + 200);

  v23(v24, v25, v26);
  swift_allocObject();
  v28 = OSSignpostIntervalState.init(id:isOpen:)();
  v22(v25, v26);
  *(v27 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostJoinSessionState) = v28;

  if (*(v27 + v70))
  {

    GroupSession.join()();
  }

  v29 = *(v0 + 200);
  v30 = v29[5];
  v31 = v29[6];
  v32 = sub_10000954C(v29 + 2, v30);
  v33 = *(v30 - 8);
  v34 = swift_task_alloc();
  (*(v33 + 16))(v34, v32, v30);
  v35 = (*(v31 + 48))(v30, v31);
  (*(v33 + 8))(v34, v30);
  if (!v35)
  {
    goto LABEL_16;
  }

  v36 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (!*&v35[v36])
  {

LABEL_16:
    v59 = *(v0 + 464);
    v60 = *(v0 + 472);
    v61 = *(v0 + 456);

    v44 = 0;
    goto LABEL_17;
  }

  v68 = *(v0 + 472);
  v69 = *(v0 + 464);
  v71 = *(v0 + 456);
  v37 = *(v0 + 264);
  v38 = *(v0 + 240);
  v65 = *(v0 + 248);
  v66 = *(v0 + 256);
  v40 = *(v0 + 224);
  v39 = *(v0 + 232);
  v41 = *(v0 + 216);

  swift_beginAccess();
  sub_10010FC20(&qword_1011ACC50, &qword_100EF7370);
  Published.projectedValue.getter();
  swift_endAccess();

  sub_100009F78(0, &qword_1011A9F80, OS_dispatch_queue_ptr);
  v42 = static OS_dispatch_queue.main.getter();
  *(v0 + 184) = v42;
  v43 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v43 - 8) + 56))(v41, 1, 1, v43);
  sub_100020674(&qword_1011AD130, &unk_1011AFA60, &qword_100EF6D20, &protocol conformance descriptor for Published<A>.Publisher);
  sub_100020724();
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v41, &qword_1011A90D0, &qword_100EEF678);

  (*(v39 + 8))(v38, v40);

  swift_allocObject();
  swift_weakInit();
  sub_100020674(&qword_1011ADA10, &qword_1011ADA00, &qword_100EF81C8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v44 = Publisher<>.sink(receiveValue:)();

  (*(v66 + 8))(v37, v65);
LABEL_17:
  *(*(v0 + 200) + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_nowPlayingSubscription) = v44;

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter((v0 + 582));

  v62 = *(v0 + 582);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 583) = 0;

  static Published.subscript.setter();
  v58 = v62;
LABEL_18:
  sub_100AAE4AC(v58);

  v63 = *(v0 + 8);

  return v63();
}

uint64_t sub_100ABC430()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 512);
  v4 = *(v0 + 464);
  v3 = *(v0 + 472);
  v5 = *(v0 + 456);
  v6 = *(v0 + 200);
  v7 = *(v0 + 208);

  sub_1000095E8(v0 + 64, &qword_1011A8658, &unk_100EF92B0);

  sub_100ABD82C(v2);

  sub_100AB1820(v1, 0);
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);

  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v6;
  sub_100969440(0, 0, v7, &unk_100EFBA80, v10);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter((v0 + 578));

  LOBYTE(v1) = *(v0 + 578);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 579) = 0;

  static Published.subscript.setter();
  sub_100AAE4AC(v1);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100ABC6D4(int a1)
{
  v2 = v1;
  v36 = a1;
  v35 = type metadata accessor for UUID();
  v3 = *(v35 - 8);
  __chkstk_darwin();
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v35 - v10;
  sub_10010FC20(&qword_1011A7C00, &qword_100EEC4A0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100EBC6B0;
  String.LocalizationValue.init(stringLiteral:)();
  (*(v7 + 16))(v9, v11, v6);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v13 = qword_101219808;
  static Locale.current.getter();
  v14 = String.init(localized:table:bundle:locale:comment:)();
  v16 = v15;
  (*(v7 + 8))(v11, v6);

  UUID.init()();
  v17 = UUID.uuidString.getter();
  v19 = v18;
  (*(v3 + 8))(v5, v35);
  *(v12 + 32) = v17;
  *(v12 + 40) = v19;
  *(v12 + 48) = v14;
  *(v12 + 56) = v16;
  *(v12 + 64) = 0;
  *(v12 + 72) = &unk_100EFBAB8;
  *(v12 + 80) = v2;
  v20 = v36;
  sub_100ABE348(v36 & 1, &v40);
  v21 = v41;
  if (v41)
  {
    v22 = v40;
    v24 = *(v12 + 16);
    v23 = *(v12 + 24);
    if (v24 >= v23 >> 1)
    {
      v12 = sub_10089CAD0((v23 > 1), v24 + 1, 1, v12);
    }

    *(v12 + 16) = v24 + 1;
    v25 = v12 + 56 * v24;
    *(v25 + 32) = v22;
    *(v25 + 40) = v21;
    v26 = v43;
    *(v25 + 48) = v42;
    *(v25 + 64) = v26;
    *(v25 + 80) = v44;
  }

  v27 = sub_100ABDF20(v20 & 1);
  v29 = v28;
  v30 = sub_100ABE134(v20 & 1);
  LOBYTE(v37[0]) = 1;
  v45[0] = v27;
  v45[1] = v29;
  v45[2] = v30;
  v45[3] = v31;
  v46 = 0;
  v47 = 0;
  v48 = 1;
  v49 = v12;
  v50 = 0;
  swift_beginAccess();
  sub_100008FE4(v2 + 16, v37);
  v32 = v38;
  v33 = v39;
  sub_10000954C(v37, v38);
  (*(v33 + 32))(v45, v32, v33);
  sub_100344A84(v45);
  return sub_10000959C(v37);
}

uint64_t sub_100ABCB04()
{
  v1 = v0[26];
  swift_beginAccess();
  sub_100008FE4(v1 + 16, (v0 + 18));
  v2 = v0[21];
  v3 = v0[22];
  sub_10000954C(v0 + 18, v2);
  v6 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[27] = v4;
  *v4 = v0;
  v4[1] = sub_100ABCC4C;

  return v6(v2, v3);
}

uint64_t sub_100ABCC4C(char a1)
{
  *(*v1 + 232) = a1;

  return _swift_task_switch(sub_100ABCD4C, 0, 0);
}

uint64_t sub_100ABCD4C()
{
  sub_10000959C((v0 + 144));
  if (qword_1011A6B30 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, static Logger.groupActivities);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 232);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "🛂 User did authenticate=%{BOOL,public}d", v5, 8u);
  }

  v6 = *(v0 + 232);

  if (v6 == 1)
  {
    v7 = [objc_opt_self() defaultIdentityStore];
    *(v0 + 224) = v7;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_100ABCFB4;
    v8 = swift_continuation_init();
    *(v0 + 136) = sub_10010FC20(&unk_1011AFAE0, &unk_100EFBAA0);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1005400C8;
    *(v0 + 104) = &unk_1010DEB70;
    *(v0 + 112) = v8;
    [v7 synchronizeWithCompletionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16, v9);
  }

  else
  {
    if (*(*(v0 + 208) + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
    {

      GroupSession.leave()();
    }

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_100ABCFB4()
{

  return _swift_task_switch(sub_100ABD094, 0, 0);
}

uint64_t sub_100ABD094()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100ABD114()
{
  v1 = v0[10];
  swift_beginAccess();
  sub_100008FE4(v1 + 16, (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  sub_10000954C(v0 + 2, v2);
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_100ABD25C;

  return v6(v2, v3);
}

uint64_t sub_100ABD25C(char a1)
{
  *(*v1 + 96) = a1;

  return _swift_task_switch(sub_100ABD35C, 0, 0);
}

uint64_t sub_100ABD35C()
{
  v1 = *(v0 + 96);
  sub_10000959C((v0 + 16));
  if (v1 != 2 && (*(v0 + 96) & 1) == 0)
  {
    if (*(*(v0 + 80) + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
    {

      GroupSession.leave()();
    }

    if (qword_1011A6B30 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000060E4(v2, static Logger.groupActivities);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "🛂 User did not complete the subscription flow", v5, 2u);
    }
  }

  v6 = *(v0 + 8);

  return v6();
}

void sub_100ABD4B4(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Participant();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  GroupSession.localParticipant.getter();
  Participant.id.getter();
  (*(v7 + 8))(v9, v6);
  v10 = UUID.uuidString.getter();
  v12 = v11;
  (*(v3 + 8))(v5, v2);
  v13._countAndFlagsBits = 0x616C506572616853;
  v13._object = 0xEC0000003D444979;
  if (String.hasPrefix(_:)(v13))
  {
  }

  else
  {
    strcpy(v26, "SharePlayID=");
    BYTE5(v26[1]) = 0;
    HIWORD(v26[1]) = -5120;
    v14._countAndFlagsBits = v10;
    v14._object = v12;
    String.append(_:)(v14);
  }

  v15 = String._bridgeToObjectiveC()();

  [a1 setExternalIdentifier:v15];

  if (qword_1011A6B30 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000060E4(v16, static Logger.groupActivities);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25 = v20;
    *v19 = 136446210;
    v21._countAndFlagsBits = 0x616C506572616853;
    v21._object = 0xEC0000003D444979;
    if (!String.hasPrefix(_:)(v21))
    {
      strcpy(v26, "SharePlayID=");
      BYTE5(v26[1]) = 0;
      HIWORD(v26[1]) = -5120;
      v22._countAndFlagsBits = v10;
      v22._object = v12;
      String.append(_:)(v22);

      v10 = v26[0];
      v12 = v26[1];
    }

    v23 = sub_100010678(v10, v12, &v25);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v17, v18, "externalID identity=%{public}s", v19, 0xCu);
    sub_10000959C(v20);
  }

  else
  {
  }
}

uint64_t sub_100ABD82C(uint64_t a1)
{
  v1 = type metadata accessor for OSSignpostError();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1011A7168 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for OSSignposter();
  sub_1000060E4(v9, static OSSignposter.sharePlay);
  v10 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v11 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v2 + 88))(v4, v1) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, v11, v14, "AddIntent", v12, v13, 2u);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100ABDAB8()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1001AB600;

  return GroupActivitiesManager.leave(performLeaveCommand:)(1);
}

uint64_t sub_100ABDB68()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1002AC1CC;

  return GroupActivitiesManager.leave(performLeaveCommand:)(1);
}

void sub_100ABDC18(id *a1, uint64_t a2)
{
  if (!*a1)
  {
    return;
  }

  v15 = *a1;
  if (![v15 isSharedListeningSession])
  {
    goto LABEL_6;
  }

  v2 = [v15 tracklist];
  v14 = [v2 playingItem];

  if (!v14)
  {
    goto LABEL_6;
  }

  if ([v14 isPlaceholder])
  {

LABEL_6:
    v3 = v15;
LABEL_7:

    return;
  }

  v4 = [v14 metadataObject];
  if (!v4)
  {
LABEL_17:

    v3 = v14;
    goto LABEL_7;
  }

  v5 = v4;
  v6 = [v4 innermostModelObject];

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {

    goto LABEL_17;
  }

  v8 = v7;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v9 = sub_100AB65CC(v16);
    v11 = v10;
    v12 = type metadata accessor for GroupActivitiesManager.Activity(0);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      type metadata accessor for CodableModelObjectIdentity();
      v13 = swift_allocObject();
      *(v13 + 16) = v8;
      *(v11 + 56) = v13;
      v6 = v6;
    }

    v9(v16, 0);
  }

  else
  {
  }
}

uint64_t sub_100ABDE74()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session) != 0;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1008DB254;

  return GroupActivitiesManager.leave(performLeaveCommand:)(v1);
}

uint64_t sub_100ABDF20(char a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v10[-v5];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v6, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v7 = qword_101219808;
  static Locale.current.getter();
  v8 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v6, v1);
  return v8;
}

uint64_t sub_100ABE134(char a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v10[-v5];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v6, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v7 = qword_101219808;
  static Locale.current.getter();
  v8 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v6, v1);
  return v8;
}

void sub_100ABE348(int a1@<W0>, uint64_t *a2@<X8>)
{
  v24 = a1;
  v3 = type metadata accessor for UUID();
  v22 = *(v3 - 8);
  v23 = v3;
  __chkstk_darwin();
  v21 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v21 - v9;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (v24)
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v6 + 16))(v8, v10, v5);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v17 = qword_101219808;
    static Locale.current.getter();
    v13 = String.init(localized:table:bundle:locale:comment:)();
    v14 = v18;
    (*(v6 + 8))(v10, v5);
    v19 = v21;
    UUID.init()();
    v11 = UUID.uuidString.getter();
    v12 = v20;
    (*(v22 + 8))(v19, v23);
    v16 = &unk_100EFBAC0;
    v15 = 2;
  }

  *a2 = v11;
  a2[1] = v12;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v15;
  a2[5] = v16;
  a2[6] = 0;
}

uint64_t sub_100ABE63C()
{
  v1 = [objc_opt_self() defaultWorkspace];
  if (v1)
  {
    v2 = v1;
    LSApplicationWorkspace.openMusicSettings()();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100ABE6C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008F30;

  return GroupActivitiesManager.leave(performLeaveCommand:)(1);
}

char *GroupActivitiesManager.deinit()
{
  sub_10000959C(v0 + 2);
  sub_1005FF454(*(v0 + 7), *(v0 + 8), *(v0 + 9), *(v0 + 10));

  v1 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager__participantsCount;
  v2 = sub_10010FC20(&qword_1011AEDA8, &qword_100EFAEC8);
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  v3 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager__isLoading;
  v4 = sub_10010FC20(&qword_1011ABBB8, &qword_100EFD0C0);
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager__reaction;
  v6 = sub_10010FC20(&qword_1011AF170, &qword_100EFB3A0);
  (*(*(v6 - 8) + 8))(&v0[v5], v6);

  sub_1000095E8(&v0[OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_activity], &qword_1011AF1E8, &qword_100EFB478);

  sub_1000095E8(&v0[OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostInitiationToFirstAudioFrame], &qword_1011AA2D0, qword_100EFB480);

  sub_1000095E8(&v0[OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_autoBugCaptureIntervalBeginDate], &qword_1011A9B20, &qword_100EF1560);
  sub_100AC0564(*&v0[OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext], *&v0[OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext + 8]);
  return v0;
}

uint64_t GroupActivitiesManager.__deallocating_deinit()
{
  GroupActivitiesManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t static Logger.groupActivities.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011A6B30 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_1000060E4(v2, static Logger.groupActivities);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100ABEA60(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return String.subscript.getter();
  }

  __break(1u);
  return result;
}

uint64_t sub_100ABEAAC()
{
  if (*v0)
  {
    return 7955819;
  }

  else
  {
    return 0x696669746E656469;
  }
}

void sub_100ABEAE4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 7955819 && a2 == 0xE300000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_100ABEBC8(uint64_t a1)
{
  v2 = sub_100AC082C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100ABEC04(uint64_t a1)
{
  v2 = sub_100AC082C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100ABEC40(void *a1)
{
  v4 = sub_10010FC20(&qword_1011AF900, &qword_100EFB930);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v12 - v6;
  sub_10000954C(a1, a1[3]);
  sub_100AC082C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for CodableListeningProperties();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    v13 = 1;
    v12[1] = KeyedDecodingContainer.decode(_:forKey:)();
    v9 = String._bridgeToObjectiveC()();

    v10 = String._bridgeToObjectiveC()();

    v11 = [objc_opt_self() propertiesWithSessionIdentifier:v9 sessionKey:v10];

    (*(v5 + 8))(v7, v4);
    *(v1 + 16) = v11;
  }

  sub_10000959C(a1);
  return v1;
}

void sub_100ABEE90(void *a1)
{
  v3 = v1;
  v5 = sub_10010FC20(&qword_1011AF950, &qword_100EFB948);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v12[-v7];
  sub_10000954C(a1, a1[3]);
  sub_100AC082C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *(v3 + 16);
  v10 = [v9 sessionIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v12[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {

    v11 = [v9 sessionKey];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v12[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v6 + 8))(v8, v5);
}

uint64_t sub_100ABF0EC()
{
  if (*v0)
  {
    return 0x616C436C65646F6DLL;
  }

  else
  {
    return 0x696669746E656469;
  }
}

void sub_100ABF13C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEB00000000737265;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x616C436C65646F6DLL && a2 == 0xEE00656D614E7373)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_100ABF224(uint64_t a1)
{
  v2 = sub_100AC0880();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100ABF260(uint64_t a1)
{
  v2 = sub_100AC0880();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100ABF29C(void *a1)
{
  v3 = v1;
  v5 = sub_10010FC20(&qword_1011AF910, &qword_100EFB938);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v24 - v7;
  sub_10000954C(a1, a1[3]);
  sub_100AC0880();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v34 = 0;
    sub_100AC08D4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10 = aBlock;
    v9 = v29;
    sub_100009F78(0, &unk_1011AF928, NSKeyedUnarchiver_ptr);
    sub_100009F78(0, &unk_1011AAC90, MPIdentifierSet_ptr);
    v11 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    if (v11)
    {
      v27 = v11;
      LOBYTE(aBlock) = 1;
      KeyedDecodingContainer.decode(_:forKey:)();
      v26 = String._bridgeToObjectiveC()();

      v14 = v26;
      v25 = NSClassFromString(v26);

      if (v25)
      {
        swift_getObjCClassMetadata();
        sub_100009F78(0, &qword_1011A9F50, MPModelObject_ptr);
        v15 = swift_dynamicCastMetatype();
        if (v15)
        {
          if (qword_1011A6B40 != -1)
          {
            v23 = v15;
            swift_once();
            v15 = v23;
          }

          v16 = *(off_1011AFB40 + 2);
          v17 = (off_1011AFB40 + 32);
          while (v16)
          {
            v18 = *v17++;
            --v16;
            if (v18 == v15)
            {
              v19 = objc_allocWithZone(swift_getObjCClassFromMetadata());
              v32 = UIScreen.Dimensions.size.getter;
              v33 = 0;
              aBlock = _NSConcreteStackBlock;
              v29 = 1107296256;
              v30 = sub_10006BD7C;
              v31 = &unk_1010DE8F0;
              v26 = _Block_copy(&aBlock);
              v20 = v19;
              v21 = v27;
              v25 = [v20 initWithIdentifiers:v27 block:v26];
              sub_10002C064(v10, v9);

              _Block_release(v26);
              (*(v6 + 8))(v8, v5);

              result = swift_isEscapingClosureAtFileLocation();
              if ((result & 1) == 0)
              {
                *(v3 + 16) = v25;
                goto LABEL_6;
              }

              __break(1u);
              return result;
            }
          }
        }
      }

      sub_100AC0928();
      swift_allocError();
      *v22 = 1;
      swift_willThrow();
      sub_10002C064(v10, v9);
    }

    else
    {
      sub_100AC0928();
      swift_allocError();
      *v12 = 0;
      swift_willThrow();
      sub_10002C064(v10, v9);
    }

    (*(v6 + 8))(v8, v5);
  }

  type metadata accessor for CodableModelObjectIdentity();
  swift_deallocPartialClassInstance();
LABEL_6:
  sub_10000959C(a1);
  return v3;
}

uint64_t sub_100ABF718(void *a1)
{
  v3 = v1;
  v5 = sub_10010FC20(&qword_1011AF940, &qword_100EFB940);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v20[-v7];
  sub_10000954C(a1, a1[3]);
  sub_100AC0880();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = objc_opt_self();
  v10 = [*(v3 + 16) identifiers];
  v21[0] = 0;
  v11 = [v9 archivedDataWithRootObject:v10 requiringSecureCoding:1 error:v21];

  v12 = v21[0];
  if (v11)
  {
    v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v21[0] = v13;
    v21[1] = v15;
    v20[7] = 0;
    sub_100AC0994();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v2)
    {
      (*(v6 + 8))(v8, v5);
    }

    else
    {
      swift_getObjectType();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v19 = NSStringFromClass(ObjCClassFromMetadata);
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v21[0]) = 1;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v6 + 8))(v8, v5);
    }

    return sub_10002C064(v13, v15);
  }

  else
  {
    v16 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_100ABFA18@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  a2(0);
  swift_allocObject();
  result = a3(a1);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_100ABFAA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100ABFB10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100ABFB78(uint64_t a1)
{
  v4 = *(type metadata accessor for GroupActivitiesManager.Activity(0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100008F30;

  return sub_100AB3AAC(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_100ABFC7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100ABFD8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 1u)
  {
    if (!a7)
    {
      goto LABEL_13;
    }

    if (a7 != 1)
    {
      return;
    }

LABEL_12:

    return;
  }

  if (a7 == 2)
  {

    goto LABEL_12;
  }

  if (a7 != 3)
  {
    if (a7 == 4)
    {

      sub_1005FF454(a1, a2, a3, a4);
    }

    return;
  }

LABEL_13:
}

double sub_100ABFE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_100ABFEB4(__int16 a1, void *a2, int a3, __int16 a4, void *a5, int a6)
{
  result = 0;
  v8 = a1 ^ a4;
  if (v8 & 0x100) != 0 || (v8)
  {
    return result;
  }

  if (!a2)
  {
    result = 0;
    if (a5 || ((a3 ^ a6) & 1) != 0)
    {
      return result;
    }

    return ((a6 & 0x100) == 0) ^ ((a3 & 0x100) >> 8);
  }

  if (!a5)
  {
    return 0;
  }

  v9 = a3;
  v10 = a6;
  sub_100009F78(0, &qword_1011A9F78, ICMusicSubscriptionStatus_ptr);
  v13 = a5;
  v14 = a2;
  v15 = static NSObject.== infix(_:_:)();

  result = 0;
  if (v15)
  {
    LOWORD(a6) = v10;
    LOWORD(a3) = v9;
    if (((v9 ^ v10) & 1) == 0)
    {
      return ((a6 & 0x100) == 0) ^ ((a3 & 0x100) >> 8);
    }
  }

  return result;
}

id _s9MusicCore22GroupActivitiesManagerC8ActivityV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a2 + 56);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 16);
  v5 = *(v2 + 16);
  v6 = v4;
  v7 = [v5 identifiers];
  v8 = [v6 identifiers];
  v9 = [v7 intersectsSet:v8];

  return v9;
}

Swift::Int sub_100AC0054(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011AF9A0, &qword_100EFB9C0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      Hasher.init(_seed:)();
      NSDirectionalEdgeInsets.Edge.hash(into:)(v18, v10);
      result = Hasher._finalize()();
      v12 = -1 << *(v3 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      v15 = *(v5 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        while (1)
        {
          result = static NSDirectionalEdgeInsets.Edge.__derived_enum_equals(_:_:)(*(*(v3 + 48) + v13), v10);
          if (result)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_100AC01BC()
{
  result = qword_1011AF0E0;
  if (!qword_1011AF0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AF0E0);
  }

  return result;
}

unint64_t sub_100AC0210()
{
  result = qword_1011AF108;
  if (!qword_1011AF108)
  {
    sub_1001109D0(&qword_1011AF100, &qword_100EFB250);
    sub_100053024(&qword_1011AF110, type metadata accessor for CodableListeningProperties, &unk_100EFB864);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AF108);
  }

  return result;
}

unint64_t sub_100AC02C4()
{
  result = qword_1011AF120;
  if (!qword_1011AF120)
  {
    sub_1001109D0(&qword_1011AF118, &qword_100EFB258);
    sub_100053024(&qword_1011AF128, type metadata accessor for CodableModelObjectIdentity, &unk_100EFB83C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AF120);
  }

  return result;
}

unint64_t sub_100AC0378()
{
  result = qword_1011AF198;
  if (!qword_1011AF198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AF198);
  }

  return result;
}

uint64_t sub_100AC03CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011AF0C0, &qword_100EFB230);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100AC043C(uint64_t a1)
{
  v4 = *(sub_10010FC20(&qword_1011AF0C0, &qword_100EFB230) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002F3F4;

  return sub_100AB0E50(a1, v6, v1 + v5, v7);
}

void sub_100AC0564(uint64_t a1, void *a2)
{
  if (a2 != 1)
  {
  }
}

__n128 sub_100AC05C0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_100AC05D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 18))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100AC0630(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100AC06CC(uint64_t a1)
{
  v1 = type metadata accessor for GroupActivitiesManager.Activity(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

unint64_t sub_100AC0728()
{
  result = qword_1011AF8E8;
  if (!qword_1011AF8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AF8E8);
  }

  return result;
}

unint64_t sub_100AC0780()
{
  result = qword_1011AF8F0;
  if (!qword_1011AF8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AF8F0);
  }

  return result;
}

unint64_t sub_100AC07D8()
{
  result = qword_1011AF8F8;
  if (!qword_1011AF8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AF8F8);
  }

  return result;
}

unint64_t sub_100AC082C()
{
  result = qword_1011AF908;
  if (!qword_1011AF908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AF908);
  }

  return result;
}

unint64_t sub_100AC0880()
{
  result = qword_1011AF918;
  if (!qword_1011AF918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AF918);
  }

  return result;
}

unint64_t sub_100AC08D4()
{
  result = qword_1011AF920;
  if (!qword_1011AF920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AF920);
  }

  return result;
}

unint64_t sub_100AC0928()
{
  result = qword_1011AF938;
  if (!qword_1011AF938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AF938);
  }

  return result;
}

double sub_100AC097C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_100AC0994()
{
  result = qword_1011AF948;
  if (!qword_1011AF948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AF948);
  }

  return result;
}

unint64_t sub_100AC0A04()
{
  result = qword_1011AF980;
  if (!qword_1011AF980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AF980);
  }

  return result;
}

void sub_100AC0A58(void *a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
      }

      return;
    }

LABEL_7:

    return;
  }

  if (a2 == 2)
  {

    return;
  }

  if (a2 == 3)
  {
    goto LABEL_7;
  }
}

uint64_t sub_100AC0A90(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10010FC20(&qword_1011AF0C0, &qword_100EFB230) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_10010FC20(&unk_1011AF990, &qword_100EFB990) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100008F30;

  return sub_100AB1DD0(a1, v10, v11, v1 + v6, v12, v1 + v9, v13);
}

double sub_100AC0C44(void *a1)
{
  v3 = *(sub_10010FC20(&qword_1011AF0C0, &qword_100EFB230) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_10010FC20(&unk_1011AF990, &qword_100EFB990) - 8);
  v7 = *(v1 + v5);
  v8 = v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80));

  return sub_100AB25C0(a1, v1 + v4, v7, v8);
}

uint64_t sub_100AC0D40(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10010FC20(&qword_1011AF0C0, &qword_100EFB230) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_10010FC20(&unk_1011AF990, &qword_100EFB990) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + v7);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100008F30;

  return sub_100AB2894(a1, v10, v11, v12, v1 + v6, v13, v1 + v9);
}

double sub_100AC0ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }

  return result;
}

double sub_100AC0F1C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_100AC0F6C()
{
  result = qword_1011AF9F0;
  if (!qword_1011AF9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AF9F0);
  }

  return result;
}

uint64_t sub_100AC0FE8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return sub_100ABA688(a1);
}

uint64_t sub_100AC1094(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_100ABCAE4(a1, v4, v5, v6);
}

uint64_t sub_100AC1148(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_100ABD0F4(a1, v4, v5, v6);
}

uint64_t sub_100AC11FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008F30;

  return sub_100ABA97C();
}

id sub_100AC12B0(uint64_t a1, void *a2)
{
  if (a2 != 1)
  {
    return a2;
  }

  return result;
}

uint64_t sub_100AC12C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008F30;

  return sub_100ABDAB8();
}

uint64_t sub_100AC137C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008F30;

  return sub_100ABDB68();
}

uint64_t sub_100AC1438()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008F30;

  return sub_100ABE6C4();
}

uint64_t sub_100AC14E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_100ABDE54(a1, v4, v5, v6);
}

double sub_100AC1594(void *a1)
{
  v3 = *(type metadata accessor for GroupActivitiesManager.Activity(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100AB58C8(a1, v4, v5);
}

uint64_t sub_100AC1608(uint64_t a1)
{
  v4 = *(type metadata accessor for GroupActivitiesManager.Activity(0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100008F30;

  return sub_100AB5AAC(a1, v6, v7, v8, v9, v1 + v5);
}

unint64_t sub_100AC1740()
{
  result = qword_1011AFB08;
  if (!qword_1011AFB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AFB08);
  }

  return result;
}

unint64_t sub_100AC1798()
{
  result = qword_1011AFB10;
  if (!qword_1011AFB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AFB10);
  }

  return result;
}

unint64_t sub_100AC17F0()
{
  result = qword_1011AFB18;
  if (!qword_1011AFB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AFB18);
  }

  return result;
}

unint64_t sub_100AC1848()
{
  result = qword_1011AFB20;
  if (!qword_1011AFB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AFB20);
  }

  return result;
}

unint64_t sub_100AC18A0()
{
  result = qword_1011AFB28;
  if (!qword_1011AFB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AFB28);
  }

  return result;
}

unint64_t sub_100AC18F8()
{
  result = qword_1011AFB30;
  if (!qword_1011AFB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AFB30);
  }

  return result;
}

unint64_t sub_100AC1950()
{
  result = qword_1011AFB38;
  if (!qword_1011AFB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AFB38);
  }

  return result;
}

void MPCPlayerCommandDialog.alert(context:completion:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v86 = a5;
  v85 = a4;
  v90 = a2;
  v91 = a3;
  v89 = a1;
  v80 = a6;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v7 = type metadata accessor for String.LocalizationValue();
  v8 = *(v7 - 1);
  __chkstk_darwin();
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v80 - v11;
  v84 = type metadata accessor for UUID();
  v13 = *(v84 - 8);
  *&v14 = __chkstk_darwin().n128_u64[0];
  v83 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v6;
  v16 = [v6 actions];
  sub_100009F78(0, &qword_1011AFB50, MPCPlayerCommandDialogAction_ptr);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v17 >> 62)
  {
    v18 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v18)
  {
    sub_10010FC20(&qword_1011A7C00, &qword_100EEC4A0);
    v18 = swift_allocObject();
    *(v18 + 1) = xmmword_100EBC6B0;
    String.LocalizationValue.init(stringLiteral:)();
    (*(v8 + 16))(v10, v12, v7);
    if (qword_1011A6740 == -1)
    {
      goto LABEL_35;
    }

    goto LABEL_50;
  }

  v7 = [v82 actions];
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v19 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_42:

    v18 = _swiftEmptyArrayStorage;
LABEL_43:
    v74 = [v82 localizedTitle];
    if (v74)
    {
      v75 = v74;
      v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v70 = v76;
    }

    else
    {
      v68 = 0;
      v70 = 0;
    }

    v71 = [v82 localizedMessage];
    if (!v71)
    {
      goto LABEL_39;
    }

LABEL_47:
    v77 = v71;
    v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v78;

    goto LABEL_48;
  }

  v8 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_42;
  }

LABEL_6:
  if (v8 >= 1)
  {
    v20 = 0;
    v92 = v19 & 0xC000000000000001;
    v93 = MPCPlayerCommandDialogActionTitlePlayOnlyForMe;
    v18 = _swiftEmptyArrayStorage;
    v81 = (v13 + 8);
    v88 = v19;
    v87 = v8;
    while (1)
    {
      if (v92)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v21 = *(v19 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = [v21 localizedTitle];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      if (v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27)
      {
      }

      else
      {
        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v29 & 1) == 0)
        {
          v95 = v20;
          v30 = [v22 localizedTitle];
          v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v32 = v31;

          v33 = [v22 type];
          if (v33 == 2)
          {
            v34 = 1;
          }

          else
          {
            v34 = 2;
          }

          if (v33 == 1)
          {
            v35 = 0;
          }

          else
          {
            v35 = v34;
          }

          v36 = swift_allocObject();
          v37 = v85;
          v36[2] = v22;
          v36[3] = v37;
          v38 = v86;
          v36[4] = v86;
          v39 = v22;
          sub_100030444(v37, v38);
          v40 = v83;
          UUID.init()();
          v97 = UUID.uuidString.getter();
          v42 = v41;
          (*v81)(v40, v84);

          v43 = v32;

          v44 = v36;

          v96 = &unk_100EFBDD8;
          v98 = v35;
          v94 = v35;
          goto LABEL_28;
        }
      }

      sub_100AC878C(v89, v90, v91, &v101);
      v42 = v102;
      if (v102)
      {
        v95 = v20;
        v45 = v106;
        v46 = v107;
        v94 = v105;
        v47 = v104;
        v98 = v105;
        v99 = v103;
        v97 = v101;

        v43 = v47;

        v96 = v45;
        v44 = v46;
        sub_100030444(v45, v46);
LABEL_28:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_10089CAD0(0, v18[2] + 1, 1, v18);
        }

        v49 = v18[2];
        v48 = v18[3];
        v50 = v22;
        if (v49 >= v48 >> 1)
        {
          v18 = sub_10089CAD0((v48 > 1), v49 + 1, 1, v18);
        }

        v51 = v97;
        v52 = v99;
        v53 = v96;
        sub_100AC8680(v97, v42, v99, v43, v98, v96, v44);

        v18[2] = v49 + 1;
        v54 = &v18[7 * v49];
        v54[4] = v51;
        v54[5] = v42;
        v54[6] = v52;
        v54[7] = v43;
        *(v54 + 64) = v94;
        v54[9] = v53;
        v54[10] = v44;
        v19 = v88;
        v8 = v87;
        v20 = v95;
        goto LABEL_9;
      }

LABEL_9:
      if (v8 == ++v20)
      {

        goto LABEL_43;
      }
    }
  }

  __break(1u);
LABEL_50:
  swift_once();
LABEL_35:
  v55 = qword_101219808;
  static Locale.current.getter();
  v56 = String.init(localized:table:bundle:locale:comment:)();
  v58 = v57;
  (*(v8 + 8))(v12, v7);
  v59 = swift_allocObject();
  v60 = v85;
  v61 = v86;
  *(v59 + 16) = v85;
  *(v59 + 24) = v61;
  sub_100030444(v60, v61);
  v62 = v83;
  UUID.init()();
  v63 = UUID.uuidString.getter();
  v65 = v64;
  (*(v13 + 8))(v62, v84);
  v18[4] = v63;
  v18[5] = v65;
  v18[6] = v56;
  v18[7] = v58;
  *(v18 + 64) = 2;
  v18[9] = &unk_100EFBDE8;
  v18[10] = v59;
  v66 = [v82 localizedTitle];
  if (v66)
  {
    v67 = v66;
    v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v69;
  }

  else
  {
    v68 = 0;
    v70 = 0;
  }

  v71 = [v82 localizedMessage];
  if (v71)
  {
    goto LABEL_47;
  }

LABEL_39:
  v72 = 0;
  v73 = 0;
LABEL_48:
  v100 = 1;
  v79 = v80;
  *v80 = v68;
  v79[1] = v70;
  v79[2] = v72;
  v79[3] = v73;
  *(v79 + 32) = 0;
  v79[5] = 0;
  *(v79 + 48) = 1;
  v79[7] = v18;
  v79[8] = 0;
}

BOOL static SharedListening.isMusicItemTypeSupported(_:)(uint64_t a1)
{
  if (qword_1011A6B48 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = (off_1011AFB48 + 32);
  v2 = *(off_1011AFB48 + 2) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    v3 = *v1;
    v1 += 2;
  }

  while (v3 != a1);
  return v2 != 0;
}

uint64_t Logger.sharedListening.unsafeMutableAddressor()
{
  if (qword_1011A6B50 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_1000060E4(v0, static Logger.sharedListening);
}

uint64_t *SharedListening.Event.properties.unsafeMutableAddressor()
{
  if (qword_1011A6B38 != -1)
  {
    swift_once();
  }

  return &static SharedListening.Event.properties;
}

double SharedListening.Event.init(_:)@<D0>(uint64_t a1@<X8>, NSObject *a2@<X0>)
{
  sub_100AC8C14(a2, v5);
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = *&v6;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return result;
}

uint64_t static SharedListening.buildSharedSession(with:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10030C430;

  return sub_100AC96C4(a1);
}

uint64_t static SharedListening.buildSharedSession(with:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10002F3F4;

  return sub_100AC9D84(a1, a2, a3, a4);
}

uint64_t SharedListening.Event.Content.title.getter(void *a1, char a2)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v8 = __chkstk_darwin().n128_u64[0];
  v10 = &v21[-v9];
  if (a2)
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = [v11 title];
      if (!v12)
      {
        goto LABEL_9;
      }

LABEL_6:
      v13 = v12;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v14;
    }

    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v12 = [v16 name];
      if (v12)
      {
        goto LABEL_6;
      }
    }

    else
    {
      objc_opt_self();
      v19 = swift_dynamicCastObjCClass();
      if (!v19)
      {
        v22 = 0;
        v23 = 0xE000000000000000;
        _StringGuts.grow(_:)(34);

        v22 = 0xD000000000000020;
        v23 = 0x8000000100E62AD0;
        swift_getObjectType();
        v20._countAndFlagsBits = _typeName(_:qualified:)();
        String.append(_:)(v20);

        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v12 = [v19 name];
      if (v12)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
    v12 = [a1 title];
    if (v12)
    {
      goto LABEL_6;
    }
  }

LABEL_9:
  String.LocalizationValue.init(stringLiteral:)();
  (*(v5 + 16))(v7, v10, v4);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v17 = qword_101219808;
  static Locale.current.getter();
  v18 = String.init(localized:table:bundle:locale:comment:)();
  (*(v5 + 8))(v10, v4);
  return v18;
}

void sub_100AC2940(void *a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    if (a2 == 1)
    {
      v16 = a1;
      if (qword_1011A6B30 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_1000060E4(v17, static Logger.groupActivities);

      oslog = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      sub_100AC0A58(v16, 1u);
      if (os_log_type_enabled(oslog, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v43 = v20;
        *v19 = 136446210;
        v45 = v16;

        sub_10010FC20(&unk_1011AFA48, &unk_100EFBA10);
        v21 = String.init<A>(describing:)();
        v23 = sub_100010678(v21, v22, &v43);

        *(v19 + 4) = v23;
        _os_log_impl(&_mh_execute_header, oslog, v18, "Cannot joined invalid session=%{public}s", v19, 0xCu);
        sub_10000959C(v20);

        return;
      }
    }

    else
    {
      if (a2 != 2)
      {
        return;
      }

      v2 = [a1 error];
      if (qword_1011A6B50 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_1000060E4(v3, static Logger.sharedListening);
      v4 = v2;
      oslog = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(oslog, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v45 = v7;
        *v6 = 136446210;
        v43 = v2;
        LOBYTE(v44) = 0;
        v8 = v4;
        v9 = String.init<A>(describing:)();
        v11 = sub_100010678(v9, v10, &v45);

        *(v6 + 4) = v11;
        _os_log_impl(&_mh_execute_header, oslog, v5, "Creation error %{public}s", v6, 0xCu);
        sub_10000959C(v7);

        return;
      }
    }

    goto LABEL_42;
  }

  if (a2 != 3)
  {
    if (a2 != 4)
    {
      return;
    }

    if (a1 == 2)
    {
      if (qword_1011A6B50 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      sub_1000060E4(v41, static Logger.sharedListening);
      oslog = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(oslog, v13))
      {
        goto LABEL_42;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Building session failed because the queue is empty";
    }

    else
    {
      if (a1 == 3)
      {
        if (qword_1011A6B50 != -1)
        {
          swift_once();
        }

        v34 = type metadata accessor for Logger();
        sub_1000060E4(v34, static Logger.sharedListening);
        oslog = Logger.logObject.getter();
        v35 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(oslog, v35))
        {
          goto LABEL_42;
        }

        v36 = swift_slowAlloc();
        *v36 = 67109120;
        *(v36 + 1) = FigOutputMonitorIsScreenProbablyBeingRecorded() != 0;
        v15 = "Presenting not supported content alert (isScreenSharing=%{BOOL}d)";
        v37 = v35;
        v38 = oslog;
        v39 = v36;
        v40 = 8;
LABEL_41:
        _os_log_impl(&_mh_execute_header, v38, v37, v15, v39, v40);

LABEL_42:

        return;
      }

      if (a1 != 4)
      {
        return;
      }

      if (qword_1011A6B50 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_1000060E4(v12, static Logger.sharedListening);
      oslog = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(oslog, v13))
      {
        goto LABEL_42;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Cannot add intent for the current route.";
    }

    v37 = v13;
    v38 = oslog;
    v39 = v14;
    v40 = 2;
    goto LABEL_41;
  }

  if (a1)
  {
    swift_getErrorValue();
    a1 = Error.localizedDescription.getter();
  }

  else
  {
    v24 = 0;
  }

  v43 = a1;
  v44 = v24;
  sub_10010FC20(&unk_1011ACB70, &qword_100EEEF60);
  v25 = String.init<A>(describing:)();
  v27 = v26;
  if (qword_1011A6B30 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_1000060E4(v28, static Logger.groupActivities);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v43 = v32;
    *v31 = 136446210;
    v33 = sub_100010678(v25, v27, &v43);

    *(v31 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v29, v30, "Could not add intent to the player: %{public}s", v31, 0xCu);
    sub_10000959C(v32);
  }

  else
  {
  }
}

void sub_100AC2FFC(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, uint64_t)@<X3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  v166 = a4;
  v165 = a3;
  v164 = a2;
  v163 = a1;
  v171 = a6;
  v7 = type metadata accessor for URL();
  v161 = *(v7 - 8);
  v8 = *(v161 + 64);
  __chkstk_darwin();
  __chkstk_darwin();
  v10 = (v153 - v9);
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  __chkstk_darwin();
  v12 = v153 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = v153 - v13;
  v168 = type metadata accessor for UUID();
  v15 = *(v168 - 8);
  __chkstk_darwin();
  v167 = v153 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v169 = v153 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for String.LocalizationValue();
  v170 = *(v18 - 8);
  __chkstk_darwin();
  v20 = v153 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v22 = __chkstk_darwin().n128_u64[0];
  if (a5 == 2)
  {
    v155 = v12;
    v153[1] = v8;
    v154 = v153 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v156 = v14;
    v159 = v10;
    v160 = v7;
    v24 = v153 - v21;
    v63 = v166;
    v64 = [v166 dialog];
    if (v64)
    {
      v65 = v64;
      MPCPlayerCommandDialog.alert(context:completion:)(v163, v164, v165, 0, 0, &v172);
      v66 = v172;
      v40 = v173;
      v67 = *(&v174 + 1);
      v36 = v174;
      v44 = *(&v175 + 1);
      v68 = v175;
      v69 = v176;
      v43 = v177;
      v45 = v178;

      v42 = v66;
      v48 = v68 & 0xFFFFFFFFFFFFFF00;
      v46 = v69 & 0xFFFFFFFFFFFFFF00;
      v47 = v68;
      v49 = v69;
      v41 = v67;
LABEL_26:
      v23 = v171;
      goto LABEL_27;
    }

    v70 = [v63 error];
    v23 = v171;
    if (v70)
    {
      v172 = v70;
      sub_10010FC20(&qword_1011AB640, L"D\v\a");
      type metadata accessor for MPCPlayerEnqueueError(0);
      if (swift_dynamicCast())
      {
        v71 = v179;
        v172 = v179;
        sub_100ACB904(&qword_1011A7960, type metadata accessor for MPCPlayerEnqueueError, &unk_100EEBA2C);
        _BridgedStoredNSError.code.getter();

        if (v179 == 3)
        {
          goto LABEL_19;
        }
      }
    }

    v162 = v15;
    String.LocalizationValue.init(stringLiteral:)();
    v90 = v170;
    v91 = v18;
    v92 = *(v170 + 16);
    v92(v20, v24, v91);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v93 = qword_101219808;
    static Locale.current.getter();
    v94 = v93;
    v158 = String.init(localized:table:bundle:locale:comment:)();
    v157 = v95;
    v170 = *(v90 + 8);
    (v170)(v24, v91);
    sub_10010FC20(&qword_1011A7C00, &qword_100EEC4A0);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_100EBC6B0;
    String.LocalizationValue.init(stringLiteral:)();
    v92(v20, v24, v91);
    static Locale.current.getter();
    v96 = String.init(localized:table:bundle:locale:comment:)();
    v98 = v97;
    (v170)(v24, v91);
    v99 = v167;
    UUID.init()();
    v100 = UUID.uuidString.getter();
    v102 = v101;
    v103 = *(v162 + 8);
    v162 += 8;
    v103(v99, v168);
    *(v43 + 32) = v100;
    *(v43 + 40) = v102;
    *(v43 + 48) = v96;
    *(v43 + 56) = v98;
    *(v43 + 64) = 2;
    *(v43 + 72) = 0;
    *(v43 + 80) = 0;
    v172 = 0;
    v173 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    v172 = 0xD00000000000001CLL;
    v173 = 0x8000000100E62C20;
    *&v179 = [v63 error];
    sub_10010FC20(&qword_1011ADA20, &qword_100EF7348);
    v104._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v104);

    v106 = v172;
    v105 = v173;
    v107 = sub_1000294C0(_swiftEmptyArrayStorage);
    if (qword_1011A70E8 != -1)
    {
      swift_once();
    }

    v23 = v171;
    v108 = v160;
    v109 = v159;
    if (static DeviceCapabilities.isInternalInstall == 1)
    {
      v110 = v106;
      v111 = v156;
      sub_1009AC87C(v110, v105, 0xD000000000000032, 0x8000000100E5DA90, _swiftEmptyArrayStorage, v107, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v156, 1u);

      v112 = v155;
      sub_1000089F8(v111, v155, &qword_1011A77F0, &unk_100EEAA20);
      v113 = v161;
      if ((*(v161 + 48))(v112, 1, v108) == 1)
      {
        sub_1000095E8(v111, &qword_1011A77F0, &unk_100EEAA20);
        v114 = v112;
      }

      else
      {
        v170 = v103;
        v136 = *(v113 + 32);
        v136(v109, v112, v108);
        v137 = v109;
        v138 = [objc_opt_self() sharedApplication];
        URL._bridgeToObjectiveC()(v139);
        v141 = v140;
        v142 = [v138 canOpenURL:v140];

        if (v142)
        {
          v143 = v154;
          (*(v113 + 16))(v154, v137, v108);
          v144 = (*(v113 + 80) + 16) & ~*(v113 + 80);
          v145 = swift_allocObject();
          v136(v145 + v144, v143, v108);
          v146 = v167;
          UUID.init()();
          v147 = UUID.uuidString.getter();
          v149 = v148;
          (v170)(v146, v168);
          (*(v113 + 8))(v137, v108);
          sub_1000095E8(v156, &qword_1011A77F0, &unk_100EEAA20);
          v151 = *(v43 + 16);
          v150 = *(v43 + 24);
          if (v151 >= v150 >> 1)
          {
            v43 = sub_10089CAD0((v150 > 1), v151 + 1, 1, v43);
          }

          v36 = v158;
          *(v43 + 16) = v151 + 1;
          v152 = v43 + 56 * v151;
          *(v152 + 32) = v147;
          *(v152 + 40) = v149;
          strcpy((v152 + 48), "File a Radar");
          *(v152 + 61) = 0;
          *(v152 + 62) = -5120;
          *(v152 + 64) = 2;
          *(v152 + 72) = &unk_100EF4AC0;
          *(v152 + 80) = v145;
          goto LABEL_52;
        }

        (*(v113 + 8))(v137, v108);
        v114 = v156;
      }

      sub_1000095E8(v114, &qword_1011A77F0, &unk_100EEAA20);
    }

    else
    {
    }

    v36 = v158;
LABEL_52:
    v42 = 0;
    v40 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 1;
    v41 = v157;
    goto LABEL_27;
  }

  if (a5 == 3)
  {
    v50 = v167;
    v162 = v15;
    v51 = v153 - v21;
    String.LocalizationValue.init(stringLiteral:)();
    v52 = v170;
    v163 = *(v170 + 16);
    (v163)(v20, v51, v18);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v53 = qword_101219808;
    static Locale.current.getter();
    v166 = v53;
    v165 = String.init(localized:table:bundle:locale:comment:)();
    v164 = v54;
    v55 = *(v52 + 8);
    v55(v51, v18);
    UUID.init()();
    v170 = UUID.uuidString.getter();
    v161 = v56;
    (*(v162 + 8))(v50, v168);
    String.LocalizationValue.init(stringLiteral:)();
    v57 = v163;
    (v163)(v20, v51, v18);
    static Locale.current.getter();
    v58 = v166;
    v59 = String.init(localized:table:bundle:locale:comment:)();
    v166 = v60;
    v55(v51, v18);
    String.LocalizationValue.init(stringLiteral:)();
    v57(v20, v51, v18);
    v42 = v59;
    static Locale.current.getter();
    v36 = String.init(localized:table:bundle:locale:comment:)();
    v41 = v61;
    v62 = v18;
    v40 = v166;
    v55(v51, v62);
    sub_10010FC20(&qword_1011A7C00, &qword_100EEC4A0);
    v43 = swift_allocObject();
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    *(v43 + 32) = v170;
    *(v43 + 40) = v161;
    *(v43 + 16) = xmmword_100EBC6B0;
    *(v43 + 48) = v165;
    *(v43 + 56) = v164;
    *(v43 + 64) = 2;
    *(v43 + 72) = 0;
    *(v43 + 80) = 0;
    v49 = 1;
    goto LABEL_26;
  }

  v23 = v171;
  if (a5 != 4)
  {
    goto LABEL_10;
  }

  v24 = v153 - v21;
  if (v166 == 2)
  {
    v162 = v15;
    v76 = v153 - v21;
    String.LocalizationValue.init(stringLiteral:)();
    v77 = v170;
    v78 = *(v170 + 16);
    v78(v20, v24, v18);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v79 = qword_101219808;
    static Locale.current.getter();
    v80 = v79;
    v161 = String.init(localized:table:bundle:locale:comment:)();
    v166 = v81;
    v170 = *(v77 + 8);
    (v170)(v76, v18);
    sub_10010FC20(&qword_1011A7C00, &qword_100EEC4A0);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_100EBC6B0;
    String.LocalizationValue.init(stringLiteral:)();
    v78(v20, v76, v18);
    static Locale.current.getter();
    v82 = String.init(localized:table:bundle:locale:comment:)();
    v84 = v83;
    v85 = v18;
    v40 = v166;
    (v170)(v76, v85);
    v86 = v167;
    UUID.init()();
    v87 = UUID.uuidString.getter();
    v89 = v88;
    (*(v162 + 8))(v86, v168);
    v41 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    *(v43 + 32) = v87;
    *(v43 + 40) = v89;
    v42 = v161;
    *(v43 + 48) = v82;
    *(v43 + 56) = v84;
    v36 = 0;
    *(v43 + 64) = 0;
    v49 = 1;
    *(v43 + 72) = 0;
    *(v43 + 80) = 0;
    goto LABEL_26;
  }

  if (v166 != 3)
  {
    if (v166 == 4)
    {
      v162 = v15;
      String.LocalizationValue.init(stringLiteral:)();
      v25 = v170;
      v26 = *(v170 + 16);
      v26(v20, v24, v18);
      if (qword_1011A6740 != -1)
      {
        swift_once();
      }

      v27 = qword_101219808;
      v28 = qword_101219808;
      v160 = v27;
      v29 = v28;
      static Locale.current.getter();
      v166 = v29;
      v165 = String.init(localized:table:bundle:locale:comment:)();
      v164 = v30;
      v159 = *(v25 + 8);
      (v159)(v24, v18);
      v31 = v167;
      UUID.init()();
      v170 = UUID.uuidString.getter();
      v163 = v32;
      (*(v162 + 8))(v31, v168);
      String.LocalizationValue.init(stringLiteral:)();
      v26(v20, v24, v18);
      static Locale.current.getter();
      v33 = v166;
      v161 = String.init(localized:table:bundle:locale:comment:)();
      v166 = v34;
      v35 = v159;
      (v159)(v24, v18);
      String.LocalizationValue.init(stringLiteral:)();
      v26(v20, v24, v18);
      static Locale.current.getter();
      v36 = String.init(localized:table:bundle:locale:comment:)();
      v38 = v37;
      v39 = v18;
      v40 = v166;
      (v35)(v24, v39);
      v41 = v38;
      v42 = v161;
      sub_10010FC20(&qword_1011A7C00, &qword_100EEC4A0);
      v43 = swift_allocObject();
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 0;
      *(v43 + 32) = v170;
      *(v43 + 40) = v163;
      *(v43 + 16) = xmmword_100EBC6B0;
      *(v43 + 48) = v165;
      *(v43 + 56) = v164;
      *(v43 + 64) = 2;
      *(v43 + 72) = 0;
      *(v43 + 80) = 0;
      v49 = 1;
      goto LABEL_27;
    }

LABEL_10:
    v42 = 0;
    v40 = 0;
    v36 = 0;
    v41 = 0;
    v44 = 0;
    v43 = 0;
    v45 = 0;
    v49 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    goto LABEL_27;
  }

LABEL_19:
  v162 = v15;
  IsScreenProbablyBeingRecorded = FigOutputMonitorIsScreenProbablyBeingRecorded();
  v73 = (v170 + 16);
  v153[0] = v18;
  if (IsScreenProbablyBeingRecorded)
  {
    String.LocalizationValue.init(stringLiteral:)();
    v74 = *v73;
    (*v73)(v20, v24, v18);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v171 = qword_101219808;
    static Locale.current.getter();
    v158 = String.init(localized:table:bundle:locale:comment:)();
    v157 = v75;
    v166 = *(v170 + 8);
    v166(v24, v18);
    v161 = 0;
    v40 = 0;
    FigOutputMonitorIsScreenProbablyBeingRecorded();
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    v115 = v20;
    v116 = *v73;
    (*v73)(v115, v24, v18);
    v160 = v73;
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v117 = qword_101219808;
    static Locale.current.getter();
    v171 = v117;
    v158 = String.init(localized:table:bundle:locale:comment:)();
    v157 = v118;
    v119 = *(v170 + 8);
    v119(v24, v18);
    String.LocalizationValue.init(stringLiteral:)();
    v116(v115, v24, v18);
    static Locale.current.getter();
    v159 = v116;
    v20 = v115;
    v161 = String.init(localized:table:bundle:locale:comment:)();
    v121 = v120;
    v122 = v18;
    v40 = v121;
    v166 = v119;
    v119(v24, v122);
    v74 = v159;
    FigOutputMonitorIsScreenProbablyBeingRecorded();
  }

  String.LocalizationValue.init(stringLiteral:)();
  v123 = v24;
  v74(v20, v24, v153[0]);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v124 = v171;
  static Locale.current.getter();
  v125 = String.init(localized:table:bundle:locale:comment:)();
  v127 = v126;
  v128 = v162;
  v166(v123, v153[0]);
  v129 = v167;
  UUID.init()();
  v130 = UUID.uuidString.getter();
  v132 = v131;
  (*(v128 + 8))(v129, v168);
  sub_10010FC20(&qword_1011A7C00, &qword_100EEC4A0);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_100EBC6B0;
  *(v43 + 32) = v130;
  *(v43 + 40) = v132;
  *(v43 + 48) = v125;
  *(v43 + 56) = v127;
  *(v43 + 64) = 0;
  *(v43 + 72) = 0;
  *(v43 + 80) = 0;

  sub_100AC878C(v163, v164, v165, &v172);
  v133 = v173;
  if (v173)
  {
    v134 = v172;
    v179 = v174;
    v180 = v175;
    v181 = v176;
    v43 = sub_10089CAD0(1, 2, 1, v43);

    *(v43 + 16) = 2;
    *(v43 + 88) = v134;
    *(v43 + 96) = v133;
    v135 = v180;
    *(v43 + 104) = v179;
    *(v43 + 120) = v135;
    *(v43 + 136) = v181;
  }

  else
  {
  }

  v36 = v158;
  v41 = v157;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 1;
  v42 = v161;
LABEL_27:
  *v23 = v42;
  v23[1] = v40;
  v23[2] = v36;
  v23[3] = v41;
  v23[4] = v48 | v47;
  v23[5] = v44;
  v23[6] = v46 | v49;
  v23[7] = v43;
  v23[8] = v45;
}

uint64_t static SharedListening.addIntent(_:playbackController:issuer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[85] = a3;
  v3[84] = a2;
  v3[83] = a1;
  v3[86] = type metadata accessor for MainActor();
  v3[87] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[88] = v5;
  v3[89] = v4;

  return _swift_task_switch(sub_100AC491C, v5, v4);
}

uint64_t sub_100AC491C()
{
  v22 = v0;
  v1 = qword_1011A6B50;
  v2 = *(v0 + 664);
  if (v1 == -1)
  {
    v3 = v2;
  }

  else
  {
    swift_once();
    v3 = *(v0 + 664);
  }

  v4 = type metadata accessor for Logger();
  *(v0 + 720) = sub_1000060E4(v4, static Logger.sharedListening);
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 664);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136446210;
    *(v0 + 592) = v8;
    *(v0 + 600) = 1;
    v11 = v8;
    v12 = String.init<A>(describing:)();
    v14 = sub_100010678(v12, v13, &v21);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "Adding the intent to the player with command%{public}s", v9, 0xCu);
    sub_10000959C(v10);
  }

  if (*(v0 + 672))
  {
    v15 = *(v0 + 664);
    *(v0 + 552) = &type metadata for Player.ReplaceCommand;
    *(v0 + 560) = &protocol witness table for Player.ReplaceCommand;
    *(v0 + 528) = v15;
    *(v0 + 536) = 1;
    v16 = v15;
    *(v0 + 728) = static MainActor.shared.getter();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 736) = v18;
    *(v0 + 744) = v17;

    return _swift_task_switch(sub_100AC4B98, v18, v17);
  }

  else
  {

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_100AC4B98()
{
  sub_10010FC20(&unk_1011ACA30, &unk_100EEC4D0);
  v1 = swift_allocObject();
  v0[94] = v1;
  *(v1 + 16) = xmmword_100EBC6B0;
  sub_100008FE4((v0 + 66), v1 + 32);
  v0[95] = static MainActor.shared.getter();
  v2 = swift_task_alloc();
  v0[96] = v2;
  *v2 = v0;
  v2[1] = sub_100AC4C98;
  v3 = v0[85];

  return sub_100A43F80(v1, 0x10000, 1, 0, 0, v3);
}

uint64_t sub_100AC4C98(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 776) = a1;
  *(v3 + 784) = v1;

  if (v1)
  {

    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
    v7 = sub_100AC4F94;
  }

  else
  {
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v8;
    v7 = sub_100AC4E14;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_100AC4E14()
{

  v1 = *(v0 + 744);
  v2 = *(v0 + 736);

  return _swift_task_switch(sub_100AC4E88, v2, v1);
}

uint64_t sub_100AC4E88()
{
  v1 = v0[97];

  if (v1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_8:

    sub_10000959C(v0 + 66);
    v3 = v0[89];
    v2 = v0[88];
    v6 = sub_100AC57BC;
    goto LABEL_9;
  }

  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return _swift_task_switch(v4, v2, v3);
    }

    v5 = *(v0[97] + 32);
  }

  v0[99] = v5;

  sub_10000959C(v0 + 66);
  v3 = v0[89];
  v2 = v0[88];
  v6 = sub_100AC53C0;
LABEL_9:
  v4 = v6;

  return _swift_task_switch(v4, v2, v3);
}

uint64_t sub_100AC4F94()
{

  v1 = *(v0 + 744);
  v2 = *(v0 + 736);

  return _swift_task_switch(sub_100AC4FFC, v2, v1);
}

uint64_t sub_100AC4FFC()
{

  v1 = *(v0 + 712);
  v2 = *(v0 + 704);

  return _swift_task_switch(sub_100AC5064, v2, v1);
}

uint64_t sub_100AC5064()
{
  sub_10000959C(v0 + 66);
  v0[76] = v0[98];
  swift_errorRetain();
  sub_10010FC20(&qword_1011AB640, L"D\v\a");
  type metadata accessor for MPCPlayerRequestError(0);
  if (!swift_dynamicCast())
  {
    goto LABEL_9;
  }

  v1 = v0[77];
  v0[100] = v1;
  v0[78] = v1;
  sub_100ACB904(&unk_1011ACC90, type metadata accessor for MPCPlayerRequestError, &unk_100EEA900);
  _BridgedStoredNSError.code.getter();
  if (v0[79] != 1001)
  {

LABEL_9:
    v12 = v0[83];

    swift_willThrow();

    goto LABEL_10;
  }

  v2 = v1;
  v3 = _convertErrorToNSError(_:)();

  v4 = [v3 msv_errorByUnwrappingDomain:MPCErrorDomain];
  v0[101] = v4;

  if (v4)
  {
    swift_getErrorValue();
    if (dispatch thunk of Error._code.getter() == 58)
    {
      v5 = [objc_allocWithZone(MPAVEndpointRoutingDataSource) init];
      v6 = objc_allocWithZone(MPAVRoutingController);
      v7 = String._bridgeToObjectiveC()();
      v8 = [v6 initWithDataSource:v5 name:v7];
      v0[102] = v8;

      v0[2] = v0;
      v0[7] = v0 + 81;
      v0[3] = sub_100AC58D4;
      v9 = swift_continuation_init();
      v10 = sub_10010FC20(&qword_1011AFB58, &qword_100EFBE18);
      v0[103] = v10;
      v0[41] = v10;
      v0[34] = _NSConcreteStackBlock;
      v0[35] = 1107296256;
      v0[36] = sub_100AC769C;
      v0[37] = &unk_1010DEE60;
      v0[38] = v9;
      [v8 getActiveRouteWithTimeout:v0 + 34 completion:2.0];

      return _swift_continuation_await(v0 + 2, v11);
    }
  }

  v14 = v0[83];

  swift_willThrow();

LABEL_10:
  v13 = v0[1];

  return v13();
}

uint64_t sub_100AC53C0()
{
  v1 = [*(v0 + 792) error];
  if (!v1)
  {
    v1 = [*(v0 + 792) dialog];
    if (!v1)
    {
      v18 = *(v0 + 792);
      v19 = *(v0 + 664);

      v17 = *(v0 + 8);
      goto LABEL_13;
    }
  }

  v2 = *(v0 + 792);

  sub_100AC0378();
  v3 = swift_allocError();
  *v4 = v2;
  *(v4 + 8) = 2;
  swift_willThrow();

  *(v0 + 608) = v3;
  swift_errorRetain();
  sub_10010FC20(&qword_1011AB640, L"D\v\a");
  type metadata accessor for MPCPlayerRequestError(0);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 616);
    *(v0 + 800) = v5;
    *(v0 + 624) = v5;
    sub_100ACB904(&unk_1011ACC90, type metadata accessor for MPCPlayerRequestError, &unk_100EEA900);
    _BridgedStoredNSError.code.getter();
    if (*(v0 + 632) == 1001)
    {

      v6 = v5;
      v7 = _convertErrorToNSError(_:)();

      v8 = [v7 msv_errorByUnwrappingDomain:MPCErrorDomain];
      *(v0 + 808) = v8;

      if (v8)
      {
        swift_getErrorValue();
        if (dispatch thunk of Error._code.getter() == 58)
        {
          v9 = [objc_allocWithZone(MPAVEndpointRoutingDataSource) init];
          v10 = objc_allocWithZone(MPAVRoutingController);
          v11 = String._bridgeToObjectiveC()();
          v12 = [v10 initWithDataSource:v9 name:v11];
          *(v0 + 816) = v12;

          *(v0 + 16) = v0;
          *(v0 + 56) = v0 + 648;
          *(v0 + 24) = sub_100AC58D4;
          v13 = swift_continuation_init();
          v14 = sub_10010FC20(&qword_1011AFB58, &qword_100EFBE18);
          *(v0 + 824) = v14;
          *(v0 + 328) = v14;
          *(v0 + 272) = _NSConcreteStackBlock;
          *(v0 + 280) = 1107296256;
          *(v0 + 288) = sub_100AC769C;
          *(v0 + 296) = &unk_1010DEE60;
          *(v0 + 304) = v13;
          [v12 getActiveRouteWithTimeout:v0 + 272 completion:2.0];

          return _swift_continuation_await(v0 + 16, v15);
        }
      }

      v20 = *(v0 + 664);

      swift_willThrow();

      goto LABEL_12;
    }
  }

  v16 = *(v0 + 664);

  swift_willThrow();

LABEL_12:
  v17 = *(v0 + 8);
LABEL_13:

  return v17();
}

uint64_t sub_100AC57BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100AC582C()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 816);
  v3 = *(v0 + 808);
  v4 = *(v0 + 800);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100AC58D4()
{
  v1 = *(*v0 + 712);
  v2 = *(*v0 + 704);

  return _swift_task_switch(sub_100AC59DC, v2, v1);
}

uint64_t sub_100AC59DC()
{
  v1 = v0[81];
  v0[104] = v1;
  v2 = objc_opt_self();
  v0[105] = v2;
  v3 = v1;
  v4 = [v2 systemRoute];
  v5 = v4;
  if (!v1)
  {
    if (!v4)
    {
      goto LABEL_6;
    }

LABEL_10:

LABEL_11:
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "SharedListening requires system route, switching…", v14, 2u);
    }

    v0[10] = v0;
    v0[11] = sub_100AC5C68;
    v15 = swift_continuation_init();
    v16 = sub_10010FC20(&unk_1011AD160, &unk_100EF0DD8);
    v0[106] = v16;
    v0[49] = v16;
    v0[42] = _NSConcreteStackBlock;
    v0[43] = 1107296256;
    v0[44] = sub_100950FD0;
    v0[45] = &unk_1010DEE88;
    v0[46] = v15;
    [v2 setActiveRoute:0 completion:v0 + 42];

    return _swift_continuation_await(v0 + 10, v17);
  }

  if (!v4)
  {
    v5 = v3;
    goto LABEL_10;
  }

  sub_100009F78(0, &qword_1011ADA28, MPAVRoute_ptr);
  v6 = static NSObject.== infix(_:_:)();

  if ((v6 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v7 = v0[102];
  v8 = v0[101];
  v9 = v0[83];

  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t sub_100AC5C68()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 856) = v2;
  v3 = *(v1 + 712);
  v4 = *(v1 + 704);
  if (v2)
  {
    v5 = sub_100AC6600;
  }

  else
  {
    v5 = sub_100AC5D98;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100AC5D98()
{
  v1 = *(v0 + 848);
  v2 = *(v0 + 816);
  v3 = [*(v0 + 840) systemRoute];
  *(v0 + 864) = v3;
  *(v0 + 144) = v0;
  *(v0 + 152) = sub_100AC5EC8;
  v4 = swift_continuation_init();
  *(v0 + 456) = v1;
  *(v0 + 400) = _NSConcreteStackBlock;
  *(v0 + 408) = 1107296256;
  *(v0 + 416) = sub_100950FD0;
  *(v0 + 424) = &unk_1010DEEB0;
  *(v0 + 432) = v4;
  [v2 selectRoute:v3 operation:0 completion:v0 + 400];

  return _swift_continuation_await(v0 + 144, v5);
}

uint64_t sub_100AC5EC8()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 872) = v2;
  v3 = *(v1 + 712);
  v4 = *(v1 + 704);
  if (v2)
  {
    v5 = sub_100AC66B4;
  }

  else
  {
    v5 = sub_100AC5FF8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100AC5FF8()
{
  v1 = *(v0 + 824);
  v2 = *(v0 + 816);

  *(v0 + 208) = v0;
  *(v0 + 248) = v0 + 656;
  *(v0 + 216) = sub_100AC6114;
  v3 = swift_continuation_init();
  *(v0 + 520) = v1;
  *(v0 + 464) = _NSConcreteStackBlock;
  *(v0 + 472) = 1107296256;
  *(v0 + 480) = sub_100AC769C;
  *(v0 + 488) = &unk_1010DEED8;
  *(v0 + 496) = v3;
  [v2 getActiveRouteWithTimeout:v0 + 464 completion:2.0];

  return _swift_continuation_await(v0 + 208, v4);
}

uint64_t sub_100AC6114()
{
  v1 = *(*v0 + 712);
  v2 = *(*v0 + 704);

  return _swift_task_switch(sub_100AC621C, v2, v1);
}

uint64_t sub_100AC621C()
{
  v1 = *(v0 + 656);
  *(v0 + 880) = v1;
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v1;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "active route=%@", v5, 0xCu);
    sub_1000095E8(v6, &qword_1011A9120, &qword_100EEF840);
  }

  v8 = *(v0 + 840);

  v9 = [v8 systemRoute];
  v10 = v9;
  if (!v1)
  {
    v11 = v9;
    if (!v9)
    {
LABEL_12:
      v20 = swift_task_alloc();
      *(v0 + 888) = v20;
      *v20 = v0;
      v20[1] = sub_100AC64C4;
      v21 = *(v0 + 680);
      v22 = *(v0 + 672);
      v23 = *(v0 + 664);

      return static SharedListening.addIntent(_:playbackController:issuer:)(v23, v22, v21);
    }

    goto LABEL_8;
  }

  v11 = v2;
  if (!v9)
  {
LABEL_8:

    goto LABEL_9;
  }

  sub_100009F78(0, &qword_1011ADA28, MPAVRoute_ptr);
  v12 = static NSObject.== infix(_:_:)();

  if (v12)
  {
    goto LABEL_12;
  }

LABEL_9:
  v13 = *(v0 + 816);
  v14 = *(v0 + 808);
  v15 = *(v0 + 800);
  v16 = *(v0 + 664);

  sub_100AC0378();
  swift_allocError();
  *v17 = 4;
  *(v17 + 8) = 4;
  swift_willThrow();

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100AC64C4()
{
  v2 = *v1;
  *(*v1 + 896) = v0;

  v3 = *(v2 + 712);
  v4 = *(v2 + 704);
  if (v0)
  {
    v5 = sub_100AC6770;
  }

  else
  {
    v5 = sub_100AC582C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100AC6600()
{
  v1 = v0[104];
  v2 = v0[102];
  v3 = v0[101];
  v4 = v0[100];
  v5 = v0[83];

  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_100AC66B4()
{
  v1 = v0[108];
  v2 = v0[104];
  v3 = v0[102];
  v4 = v0[101];
  v5 = v0[100];
  v6 = v0[83];

  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_100AC6770()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 816);
  v3 = *(v0 + 808);
  v4 = *(v0 + 800);

  v5 = *(v0 + 8);

  return v5();
}

BOOL static SharedListening.isModelObjectTypeSupported(_:)(uint64_t a1)
{
  if (qword_1011A6B40 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *(off_1011AFB40 + 2);
  v2 = (off_1011AFB40 + 32);
  do
  {
    v3 = v1;
    if (v1-- == 0)
    {
      break;
    }

    v5 = *v2++;
  }

  while (v5 != a1);
  return v3 != 0;
}

void __swiftcall SharedListening.Reaction.init(id:emoji:senderID:)(MusicCore::SharedListening::Reaction *__return_ptr retstr, Swift::String_optional id, Swift::String emoji, Swift::String_optional senderID)
{
  object = senderID.value._object;
  countAndFlagsBits = senderID.value._countAndFlagsBits;
  v6 = emoji._object;
  v7 = emoji._countAndFlagsBits;
  v8 = id.value._object;
  v9 = id.value._countAndFlagsBits;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v8)
  {
    UUID.init()();
    v9 = UUID.uuidString.getter();
    v8 = v15;
    (*(v12 + 8))(v14, v11);
  }

  retstr->id._countAndFlagsBits = v9;
  retstr->id._object = v8;
  retstr->emoji._countAndFlagsBits = v7;
  retstr->emoji._object = v6;
  retstr->senderID.value._countAndFlagsBits = countAndFlagsBits;
  retstr->senderID.value._object = object;
}

uint64_t sub_100AC69B4()
{
  v1 = 0x696A6F6D65;
  if (*v0 != 1)
  {
    v1 = 0x44497265646E6573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_100AC6A00@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100ACB134(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100AC6A28(uint64_t a1)
{
  v2 = sub_100ACB0E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100AC6A64(uint64_t a1)
{
  v2 = sub_100ACB0E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SharedListening.Reaction.encode(to:)(void *a1)
{
  v3 = sub_10010FC20(&qword_1011AFB60, &qword_100EFBE20);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v8[-v5];
  sub_10000954C(a1, a1[3]);
  sub_100ACB0E0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

void SharedListening.Reaction.hash(into:)(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();
  if (*(v1 + 40))
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int SharedListening.Reaction.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  if (*(v0 + 40))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

double SharedListening.Reaction.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100ACB240(a2, v6);
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

Swift::Int sub_100AC6DBC()
{
  v1 = *(v0 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void sub_100AC6E64(uint64_t a1)
{
  v2 = *(v1 + 40);
  String.hash(into:)();
  String.hash(into:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_100AC6F00(uint64_t a1)
{
  v2 = *(v1 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t sub_100AC6FA4(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return _s9MusicCore15SharedListeningO8ReactionV23__derived_struct_equalsySbAE_AEtFZ_0(v7, v8) & 1;
}

void sub_100AC6FEC()
{
  sub_10010FC20(&qword_1011AAC20, &unk_100EF8210);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBEF50;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  sub_10010FC20(&unk_1011AAAB0, &unk_100EF3570);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100EBC6B0;
  *(v2 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v2 + 40) = v3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = objc_opt_self();
  v6 = [v5 propertySetWithProperties:isa];

  *(inited + 48) = v6;
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100EBC6B0;
  *(v8 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v8 + 40) = v9;
  v10 = Array._bridgeToObjectiveC()().super.isa;

  v11 = [v5 propertySetWithProperties:v10];

  *(inited + 72) = v11;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100EBC6B0;
  *(v13 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v13 + 40) = v14;
  v15 = Array._bridgeToObjectiveC()().super.isa;

  v16 = [v5 propertySetWithProperties:v15];

  *(inited + 96) = v16;
  *(inited + 104) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 112) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100EBC6B0;
  *(v18 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v18 + 40) = v19;
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_100EBC6B0;
  *(v20 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v20 + 40) = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100EBC6B0;
  *(v22 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v22 + 40) = v23;
  v24 = Array._bridgeToObjectiveC()().super.isa;

  v25 = [v5 propertySetWithProperties:v24];

  *(v20 + 48) = v25;
  sub_10000C0A4(v20);
  swift_setDeallocating();
  sub_1000095E8(v20 + 32, &qword_1011AAC28, qword_100EF30B0);
  v26 = objc_allocWithZone(MPPropertySet);
  v27 = Array._bridgeToObjectiveC()().super.isa;

  sub_100009F78(0, &qword_1011AC8D0, MPPropertySet_ptr);
  v28 = Dictionary._bridgeToObjectiveC()().super.isa;

  v29 = [v26 initWithProperties:v27 relationships:v28];

  *(inited + 120) = v29;
  sub_10000C0A4(inited);
  swift_setDeallocating();
  sub_10010FC20(&qword_1011AAC28, qword_100EF30B0);
  swift_arrayDestroy();
  v30 = objc_allocWithZone(MPPropertySet);
  v31 = Array._bridgeToObjectiveC()().super.isa;
  v32 = Dictionary._bridgeToObjectiveC()().super.isa;

  v33 = [v30 initWithProperties:v31 relationships:v32];

  static SharedListening.Event.properties = v33;
}

id static SharedListening.Event.properties.getter()
{
  if (qword_1011A6B38 != -1)
  {
    swift_once();
  }

  v1 = static SharedListening.Event.properties;

  return v1;
}

uint64_t sub_100AC74D4()
{
  sub_100AC8608();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100EC6C60;
  *(v0 + 32) = sub_100009F78(0, &qword_1011AFB98, MPModelAlbum_ptr);
  *(v0 + 40) = sub_100009F78(0, &qword_1011AFBA0, MPModelSong_ptr);
  *(v0 + 48) = sub_100009F78(0, &qword_1011A9810, MPModelPlaylist_ptr);
  *(v0 + 56) = sub_100009F78(0, qword_1011A9818, MPModelRadioStation_ptr);
  result = sub_100009F78(0, &qword_1011AFBA8, MPModelArtist_ptr);
  *(v0 + 64) = result;
  off_1011AFB40 = v0;
  return result;
}

void *sub_100AC75B4()
{
  result = sub_100AC75D4();
  off_1011AFB48 = result;
  return result;
}

uint64_t sub_100AC75D4()
{
  sub_10010FC20(&qword_1011AFBE0, &qword_100EFC4C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100EBCED0;
  *(v0 + 32) = type metadata accessor for Album();
  *(v0 + 40) = &protocol witness table for Album;
  *(v0 + 48) = type metadata accessor for Song();
  *(v0 + 56) = &protocol witness table for Song;
  *(v0 + 64) = type metadata accessor for MusicVideo();
  *(v0 + 72) = &protocol witness table for MusicVideo;
  *(v0 + 80) = type metadata accessor for Playlist();
  *(v0 + 88) = &protocol witness table for Playlist;
  *(v0 + 96) = type metadata accessor for Station();
  *(v0 + 104) = &protocol witness table for Station;
  *(v0 + 112) = type metadata accessor for Artist();
  *(v0 + 120) = &protocol witness table for Artist;
  return v0;
}

uint64_t sub_100AC769C(uint64_t a1, void *a2)
{
  **(*(*sub_10000954C((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;
  v3 = a2;

  return swift_continuation_resume();
}

uint64_t sub_100AC7700(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(*sub_10000954C((a1 + 32), *(a1 + 56)) + 64) + 40);
  *v5 = a2;
  v5[1] = a3;
  v6 = a2;
  v7 = a3;

  return swift_continuation_resume();
}

uint64_t sub_100AC7774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[32] = a4;
  v5[33] = a5;
  v5[30] = a2;
  v5[31] = a3;
  v5[29] = a1;
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  v5[34] = swift_task_alloc();

  return _swift_task_switch(sub_100AC7818, 0, 0);
}

uint64_t sub_100AC7818()
{
  v1 = *(v0 + 248);
  if (v1)
  {
    *(v0 + 88) = v1;
    *(v0 + 96) = 3;
    v2 = &protocol witness table for Player.ReplaceCommand;
    v3 = &type metadata for Player.ReplaceCommand;
    v22 = v1;
  }

  else
  {
    v22 = 0;
    *(v0 + 88) = 0;
    v2 = &protocol witness table for Player.PlaybackCommand;
    v3 = &type metadata for Player.PlaybackCommand;
  }

  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  v6 = *(v0 + 256);
  v8 = *(v0 + 232);
  v7 = *(v0 + 240);
  *(v0 + 112) = v3;
  *(v0 + 120) = v2;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  sub_100008FE4(v0 + 88, v0 + 128);
  *(v0 + 168) = *v8;
  *(v0 + 184) = v8[1];
  v10 = *(v8 + 6);
  v21 = *(v8 + 5);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = v1;
  *(v11 + 40) = v6;
  *(v11 + 48) = v5;
  *(v11 + 56) = v1 == 0;
  sub_100188D80((v0 + 128), v11 + 64);
  v12 = *v8;
  v13 = v8[1];
  v14 = v8[2];
  *(v11 + 152) = *(v8 + 6);
  *(v11 + 136) = v14;
  *(v11 + 120) = v13;
  *(v11 + 104) = v12;
  *(v11 + 160) = *v7;
  v15 = *(v7 + 64);
  v17 = *(v7 + 32);
  v16 = *(v7 + 48);
  *(v11 + 176) = *(v7 + 16);
  *(v11 + 192) = v17;
  *(v11 + 208) = v16;
  *(v11 + 224) = v15;

  v18 = v22;

  sub_100118E9C(v0 + 168, v0 + 200);
  sub_100118E9C(v0 + 184, v0 + 216);
  sub_100030444(v21, v10);
  sub_1000089F8(v7, v0 + 16, &qword_1011A9570, &qword_100EF47C0);
  sub_100A5932C(0, 0, v4, &unk_100EFC4E0, v11);

  sub_10000959C((v0 + 88));

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_100AC7A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 152) = v10;
  *(v8 + 160) = v11;
  *(v8 + 136) = a6;
  *(v8 + 144) = a8;
  *(v8 + 192) = a7;
  *(v8 + 128) = a5;
  return _swift_task_switch(sub_100AC7A88, 0, 0);
}

uint64_t sub_100AC7A88()
{
  if (*(v0 + 128))
  {
    v1 = swift_task_alloc();
    *(v0 + 168) = v1;
    *v1 = v0;
    v1[1] = sub_100AC7C98;
    v2 = *(v0 + 192);

    return GroupActivitiesManager.leave(performLeaveCommand:)(v2);
  }

  else if (*(v0 + 136))
  {
    v4 = *(v0 + 152);
    v5 = *(v0 + 160);
    v6 = *v4;
    v7 = v4[1];
    v8 = v4[2];
    v9 = v4[3];
    v10 = v4[5];
    v11 = v4[6];

    sub_100030444(v10, v11);
    sub_1000089F8(v5, v0 + 16, &qword_1011A9570, &qword_100EF47C0);
    v12 = sub_100A59084(v6, v7, v8, v9, v10, v11, v5);
    *(v0 + 112) = &type metadata for Alert.ActionCommandIssuingContext;
    *(v0 + 120) = &protocol witness table for Alert.ActionCommandIssuingContext;
    *(v0 + 88) = v12;
    *(v0 + 96) = v13;
    v14 = swift_task_alloc();
    *(v0 + 176) = v14;
    *v14 = v0;
    v14[1] = sub_100AC7F20;
    v15 = *(v0 + 144);

    return Player.perform(_:options:issuer:)(v15, 0, 0, 0, v0 + 88);
  }

  else
  {
    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_100AC7C98()
{

  return _swift_task_switch(sub_100AC7D94, 0, 0);
}

uint64_t sub_100AC7D94()
{
  if (v0[17])
  {
    v1 = v0[19];
    v2 = v0[20];
    v3 = *v1;
    v4 = v1[1];
    v5 = v1[2];
    v6 = v1[3];
    v7 = v1[5];
    v8 = v1[6];

    sub_100030444(v7, v8);
    sub_1000089F8(v2, (v0 + 2), &qword_1011A9570, &qword_100EF47C0);
    v9 = sub_100A59084(v3, v4, v5, v6, v7, v8, v2);
    v0[14] = &type metadata for Alert.ActionCommandIssuingContext;
    v0[15] = &protocol witness table for Alert.ActionCommandIssuingContext;
    v0[11] = v9;
    v0[12] = v10;
    v11 = swift_task_alloc();
    v0[22] = v11;
    *v11 = v0;
    v11[1] = sub_100AC7F20;
    v12 = v0[18];

    return Player.perform(_:options:issuer:)(v12, 0, 0, 0, (v0 + 11));
  }

  else
  {
    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_100AC7F20(void *a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100AC8088, 0, 0);
  }

  else
  {

    sub_1000095E8(v4 + 88, &qword_1011A8658, &unk_100EF92B0);
    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100AC8088()
{
  sub_1000095E8(v0 + 88, &qword_1011A8658, &unk_100EF92B0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100AC80FC()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, static Logger.sharedListening);
  sub_1000060E4(v0, static Logger.sharedListening);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.sharedListening.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011A6B50 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_1000060E4(v2, static Logger.sharedListening);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100AC8228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_100AC8248, 0, 0);
}

uint64_t sub_100AC8248()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
    v1();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100AC82F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a3;
  return _swift_task_switch(sub_100AC8318, 0, 0);
}

uint64_t sub_100AC8318()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = objc_opt_self();
  v5 = [v3 commandRequest];
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = v1;
  v0[6] = sub_100ACBB04;
  v0[7] = v6;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1001D5D0C;
  v0[5] = &unk_1010DF428;
  v7 = _Block_copy(v0 + 2);
  v8 = v3;
  sub_100030444(v2, v1);

  [v4 performRequest:v5 completion:v7];
  _Block_release(v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100AC847C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100008F30;

  return sub_100AC82F4(a1, a2, v6, v7, v8);
}

void sub_100AC853C(uint64_t a1, id a2, void (*a3)(uint64_t))
{
  if ([a2 type] == 1)
  {
    if (a3)
    {
      v5 = [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
      (a3)();
    }
  }

  else if (a3)
  {
    a3(a1);
  }
}

uint64_t sub_100AC8608()
{
  v0 = sub_10010FC20(&qword_1011AFBB0, &qword_100EFC408);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_1011AFBB8;
    v3 = &unk_100EFC410;
  }

  else
  {
    v2 = &qword_1011AA660;
    v3 = &unk_100EEF850;
  }

  return sub_10010FC20(v2, v3);
}

void sub_100AC8680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {

    sub_100020438(a6, a7);
  }
}

uint64_t _s9MusicCore15SharedListeningO8ReactionV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v5 = a1[2] == a2[2] && a1[3] == a2[3];
    if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v6 = a1[5];
      v7 = a2[5];
      if (v6)
      {
        if (v7 && (a1[4] == a2[4] && v6 == v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
        {
          return 1;
        }
      }

      else if (!v7)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_100AC878C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v35 = a3;
  v36 = a2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v10 = type metadata accessor for String.LocalizationValue();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v32 - v14;
  if (FigOutputMonitorIsScreenProbablyBeingRecorded())
  {
    if (qword_1011A6B50 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000060E4(v16, static Logger.sharedListening);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Play locally action is NOT available because of screen sharing", v19, 2u);
    }

    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v33 = v6;
    v34 = v7;
    String.LocalizationValue.init(stringLiteral:)();
    (*(v11 + 16))(v13, v15, v10);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v27 = qword_101219808;
    static Locale.current.getter();
    v22 = String.init(localized:table:bundle:locale:comment:)();
    v23 = v28;
    (*(v11 + 8))(v15, v10);
    v26 = swift_allocObject();
    v29 = v36;
    v26[2] = a1;
    v26[3] = v29;
    v26[4] = v35;

    v30 = a1;

    UUID.init()();
    v20 = UUID.uuidString.getter();
    v21 = v31;
    (*(v34 + 8))(v9, v33);
    v25 = &unk_100EFC4D0;
    v24 = 2;
  }

  *a4 = v20;
  a4[1] = v21;
  a4[2] = v22;
  a4[3] = v23;
  a4[4] = v24;
  a4[5] = v25;
  a4[6] = v26;
}

uint64_t sub_100AC8B64(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100008F30;

  return sub_100AC8228(a1, a2, v7, v6);
}

void sub_100AC8C14(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = [a1 type];
  if (v4 <= 2)
  {
    if (v4 == 1)
    {
      v28 = [v2 sessionEvent];
      if (v28)
      {
        v29 = v28;
        v30 = [v28 kind];

        if (v30 == 4)
        {

          v8 = 0;
          v9 = 0;
          v10 = 0;
          v11 = 5;
          v12 = 2;
          goto LABEL_83;
        }

        if (v30 == 1)
        {

          v12 = 0;
          v8 = 0;
          v9 = 0;
          v10 = 0;
          v11 = 5;
          goto LABEL_83;
        }
      }

      if (qword_1011A6B50 != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      sub_1000060E4(v38, static Logger.sharedListening);
      v20 = v2;
      v2 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v2, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v82 = v23;
        *v22 = 136446210;
        v39 = [v20 sessionEvent];
        v40 = v39;
        if (v39)
        {
          v41 = [v39 kind];
        }

        else
        {
          v41 = 0;
        }

        v80 = v41;
        v81 = v40 == 0;
        sub_10010FC20(&qword_1011AFBD8, &qword_100EFC4B8);
        v59 = String.init<A>(describing:)();
        v61 = sub_100010678(v59, v60, &v82);

        *(v22 + 4) = v61;
        v27 = "Unknown session event kind: %{public}s";
        goto LABEL_59;
      }

LABEL_46:

LABEL_47:
LABEL_60:
      v12 = 0;
      goto LABEL_61;
    }

    if (v4 == 2)
    {
      v5 = [v2 playbackEvent];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 kind];

        if (v7 > 2)
        {
          if (v7 == 3)
          {

            v8 = 0;
            v9 = 0;
            v10 = 0;
            v11 = 5;
            v12 = 1;
            goto LABEL_83;
          }

          if (v7 == 4)
          {
            v42 = [v2 playbackEvent];
            if (v42)
            {
              v43 = v42;
              v44 = [v42 item];

              if (v44)
              {
                v45 = [v44 innermostModelObject];

                objc_opt_self();
                v46 = swift_dynamicCastObjCClass();
                v44 = v46;
                if (v46)
                {
                  v47 = [v46 title];
                  if (v47)
                  {
                    v48 = v47;
                    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v8 = v49;

                    v9 = 0;
                    v10 = 0;
                    v11 = 2;
                    goto LABEL_83;
                  }
                }

                else
                {
                }
              }
            }

            else
            {
              v44 = 0;
            }

            v12 = 0;
            v9 = 0;
            v10 = 0;
            v11 = 2;
            v8 = 0xE000000000000000;
            goto LABEL_83;
          }
        }

        else
        {
          if (v7 == 1)
          {

            v8 = 0;
            v9 = 0;
            v10 = 0;
            v11 = 5;
            v12 = 4;
            goto LABEL_83;
          }

          if (v7 == 2)
          {

            v8 = 0;
            v9 = 0;
            v10 = 0;
            v11 = 5;
            v12 = 3;
LABEL_83:
            *a2 = v12;
            *(a2 + 8) = v8;
            *(a2 + 16) = v9;
            *(a2 + 24) = v10;
            *(a2 + 32) = 0;
            *(a2 + 40) = 0;
            *(a2 + 48) = v11;
            return;
          }
        }
      }

      if (qword_1011A6B50 != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      sub_1000060E4(v50, static Logger.sharedListening);
      v20 = v2;
      v2 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v2, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v82 = v23;
        *v22 = 136446210;
        v51 = [v20 playbackEvent];
        v52 = v51;
        if (v51)
        {
          v53 = [v51 kind];
        }

        else
        {
          v53 = 0;
        }

        v80 = v53;
        v81 = v52 == 0;
        sub_10010FC20(&qword_1011AFBD0, &qword_100EFC4B0);
        v62 = String.init<A>(describing:)();
        v64 = sub_100010678(v62, v63, &v82);

        *(v22 + 4) = v64;
        v27 = "Unknown playback event kind: %{public}s";
        goto LABEL_59;
      }

      goto LABEL_46;
    }

LABEL_13:
    if (qword_1011A6B50 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000060E4(v19, static Logger.sharedListening);
    v20 = v2;
    v2 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v2, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v80 = v23;
      *v22 = 136446210;
      v82 = [v20 type];
      type metadata accessor for MPCSharedListeningEventType(0);
      v24 = String.init<A>(describing:)();
      v26 = sub_100010678(v24, v25, &v80);

      *(v22 + 4) = v26;
      v27 = "Unknown event type: %{public}s";
LABEL_59:
      _os_log_impl(&_mh_execute_header, v2, v21, v27, v22, 0xCu);
      sub_10000959C(v23);

      goto LABEL_60;
    }

    goto LABEL_46;
  }

  if (v4 != 3)
  {
    if (v4 == 4)
    {
      v13 = [v2 reactionEvent];
      if (v13)
      {
        v14 = v13;
        v15 = [v13 reactionIdentifier];
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = v16;

        v17 = [v14 reaction];
        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v18;

        v11 = 1;
        goto LABEL_83;
      }

      goto LABEL_47;
    }

    goto LABEL_13;
  }

  v31 = [v2 queueEvent];
  if (!v31)
  {
    goto LABEL_81;
  }

  v32 = v31;
  v33 = [v31 kind];

  if (v33 != 1)
  {
    if (v33 != 7)
    {
      if (v33 == 6)
      {
        v34 = [v2 queueEvent];
        if (v34)
        {
          v35 = v34;
          v12 = [v34 playedNowContent];

          if (v12)
          {
            v36 = [v12 startItem];
            v37 = [v36 innermostModelObject];

            objc_opt_self();
            v12 = swift_dynamicCastObjCClass();
            if (v12)
            {
              v8 = 0;
              v9 = 0;
              v10 = 0;
              v11 = 3;
              goto LABEL_83;
            }
          }

          else
          {
          }

LABEL_61:
          v8 = 0;
          v9 = 0;
          v10 = 0;
          v11 = -1;
          goto LABEL_83;
        }

        goto LABEL_47;
      }

      goto LABEL_81;
    }

LABEL_77:
    v71 = [v2 queueEvent];
    if (v71)
    {
      v72 = v71;
      v73 = [v71 contentUpdatedMessage];

      if (v73)
      {
        v74 = [v73 localizedTitle];
        if (v74)
        {
          v75 = v74;
          v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v8 = v76;
        }

        else
        {
          v12 = 0;
          v8 = 0;
        }

        v77 = [v73 localizedMessage];
        if (v77)
        {
          v78 = v77;
          v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v10 = v79;
        }

        else
        {

          v9 = 0;
          v10 = 0;
        }

        v11 = 4;
        goto LABEL_83;
      }
    }

LABEL_81:

    v12 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 4;
    goto LABEL_82;
  }

  v54 = [v2 queueEvent];
  if (!v54)
  {
    goto LABEL_77;
  }

  v55 = v54;
  v56 = [v54 addedContent];

  if (!v56)
  {
    goto LABEL_77;
  }

  v57 = [v56 container];
  if (v57)
  {
    v58 = v57;
    v12 = [v57 innermostModelObject];

    v9 = 0;
    v10 = 0;
    v11 = 0;
LABEL_82:
    v8 = 1;
    goto LABEL_83;
  }

  v65 = [v56 items];
  sub_100009F78(0, &qword_1011AFBC8, MPModelGenericObject_ptr);
  v66 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v66 >> 62))
  {
    if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_66;
    }

LABEL_76:

    goto LABEL_77;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_76;
  }

LABEL_66:
  if ((v66 & 0xC000000000000001) != 0)
  {
    v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_69;
  }

  if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v67 = *(v66 + 32);
LABEL_69:
    v68 = v67;

    v69 = [v68 innermostModelObject];

    objc_opt_self();
    v70 = swift_dynamicCastObjCClass();
    if (v70)
    {
      v12 = v70;

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      goto LABEL_83;
    }

    goto LABEL_77;
  }

  __break(1u);
}

uint64_t sub_100AC96E4()
{
  if (qword_1011A6B50 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = type metadata accessor for Logger();
  v0[21] = sub_1000060E4(v2, static Logger.sharedListening);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[20];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "🏗 Building session with intent=%{public}@", v7, 0xCu);
    sub_1000095E8(v8, &qword_1011A9120, &qword_100EEF840);
  }

  v10 = objc_allocWithZone(ICLiveLinkIdentity);
  v0[14] = UIScreen.Dimensions.size.getter;
  v0[15] = 0;
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10006BD7C;
  v0[13] = &unk_1010DF338;
  v11 = _Block_copy(v0 + 10);
  v12 = [v10 initWithBlock:v11];
  v0[22] = v12;
  _Block_release(v11);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v15 = v0[20];
    v16 = objc_opt_self();
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_100AC99EC;
    v17 = swift_continuation_init();
    v0[17] = sub_10010FC20(&qword_1011AFBC0, &qword_100EFC4A8);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100AC7700;
    v0[13] = &unk_1010DF360;
    v0[14] = v17;
    [v16 buildSharedSessionIntentWithIntent:v15 identity:v12 extendedStatusCompletion:v0 + 10];
    isEscapingClosureAtFileLocation = (v0 + 2);
  }

  return _swift_continuation_await(isEscapingClosureAtFileLocation, v14);
}

uint64_t sub_100AC99EC()
{

  return _swift_task_switch(sub_100AC9ACC, 0, 0);
}

uint64_t sub_100AC9ACC()
{
  v23 = v0;
  v1 = v0[18];
  v2 = v0[19];
  if (v1 && (v3 = v1, v4 = [v3 sharedListeningProperties], v3, v4))
  {

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "✅ Shared listening intent successfully built", v7, 2u);
    }

    v8 = v0[22];

    v9 = v0[1];

    return v9(v1);
  }

  else
  {
    v11 = v2;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136446210;
      v0[10] = [v11 error];
      sub_10010FC20(&qword_1011ADA20, &qword_100EF7348);
      v16 = String.init<A>(describing:)();
      v18 = sub_100010678(v16, v17, &v22);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "⚠️ Creation error %{public}s", v14, 0xCu);
      sub_10000959C(v15);
    }

    v19 = v0[22];
    sub_100AC0378();
    swift_allocError();
    *v20 = v11;
    *(v20 + 8) = 2;
    swift_willThrow();

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_100AC9D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[42] = a3;
  v4[43] = a4;
  v4[40] = a1;
  v4[41] = a2;
  v4[44] = type metadata accessor for MainActor();
  v4[45] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[46] = v6;
  v4[47] = v5;

  return _swift_task_switch(sub_100AC9E24, v6, v5);
}

uint64_t sub_100AC9E24()
{
  v46 = v0;
  if (qword_1011A6B50 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 320);
  v2 = type metadata accessor for Logger();
  *(v0 + 384) = sub_1000060E4(v2, static Logger.sharedListening);
  v3 = v1;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 336);
    v44 = *(v0 + 320);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v45[0] = v8;
    *v7 = 136446210;
    *(v0 + 272) = v44;
    *(v0 + 288) = v6;
    v9 = v44;

    v10 = String.init<A>(describing:)();
    v12 = sub_100010678(v10, v11, v45);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "🏗 Building session with command=%{public}s", v7, 0xCu);
    sub_10000959C(v8);
  }

  v13 = *(v0 + 344);
  if (v13 && (v14 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player, swift_beginAccess(), *(v13 + v14)) && (swift_getKeyPath(), swift_getKeyPath(), , static Published.subscript.getter((v0 + 296)), , , , (v15 = *(v0 + 296)) != 0) && (v16 = [*(v0 + 296) tracklist], v17 = objc_msgSend(v16, "playingItem"), v15, v16, v17))
  {

    v18 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
    swift_beginAccess();
    if (!*(v13 + v18) || (swift_getKeyPath(), swift_getKeyPath(), , static Published.subscript.getter((v0 + 304)), , , , (v19 = *(v0 + 304)) == 0) || (v20 = [*(v0 + 304) route], *(v0 + 392) = v20, v19, !v20))
    {
LABEL_14:
      v21 = *(v0 + 336);
      v22 = *(v0 + 320);
      *(v0 + 144) = v22;
      *(v0 + 208) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 216) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v0 + 176) = &protocol witness table for Player.BuildSharedSessionCommand;
      *(v0 + 184) = 0x694C646572616853;
      *(v0 + 192) = 0xEF676E696E657473;
      *(v0 + 160) = v21;
      *(v0 + 168) = &type metadata for Player.BuildSharedSessionCommand;
      v23 = v22;

      *(v0 + 416) = static MainActor.shared.getter();
      v25 = dispatch thunk of Actor.unownedExecutor.getter();
      *(v0 + 424) = v25;
      *(v0 + 432) = v24;

      return _swift_task_switch(sub_100ACA6F4, v25, v24);
    }

    if ([v20 isDeviceRoute])
    {

      goto LABEL_14;
    }

    v28 = v20;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v45[0] = v32;
      *v31 = 136446210;
      v33 = v28;
      v34 = [v33 description];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = sub_100010678(v35, v37, v45);

      *(v31 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v29, v30, "    Build session command needs to be performed on the system route.\n    Switching from %{public}s) to system route.", v31, 0xCu);
      sub_10000959C(v32);
    }

    v39 = objc_opt_self();
    v40 = [v39 systemRoute];
    *(v0 + 400) = v40;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_100ACA4C0;
    v41 = swift_continuation_init();
    *(v0 + 136) = sub_10010FC20(&unk_1011AD160, &unk_100EF0DD8);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_100950FD0;
    *(v0 + 104) = &unk_1010DF310;
    *(v0 + 112) = v41;
    [v39 setActiveRoute:v40 completion:v0 + 80];

    return _swift_continuation_await(v0 + 16, v42);
  }

  else
  {

    sub_100AC0378();
    swift_allocError();
    *v26 = 2;
    *(v26 + 8) = 4;
    swift_willThrow();
    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_100ACA4C0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 408) = v2;
  v3 = *(v1 + 376);
  v4 = *(v1 + 368);
  if (v2)
  {
    v5 = sub_100ACB060;
  }

  else
  {
    v5 = sub_100ACA5F0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100ACA5F0()
{
  v1 = *(v0 + 400);

  v2 = *(v0 + 336);
  v3 = *(v0 + 320);
  *(v0 + 144) = v3;
  *(v0 + 208) = &type metadata for Player.CommandIssuerIdentity;
  *(v0 + 216) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v0 + 176) = &protocol witness table for Player.BuildSharedSessionCommand;
  *(v0 + 184) = 0x694C646572616853;
  *(v0 + 192) = 0xEF676E696E657473;
  *(v0 + 160) = v2;
  *(v0 + 168) = &type metadata for Player.BuildSharedSessionCommand;
  v4 = v3;

  *(v0 + 416) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 424) = v6;
  *(v0 + 432) = v5;

  return _swift_task_switch(sub_100ACA6F4, v6, v5);
}

uint64_t sub_100ACA6F4()
{
  sub_10010FC20(&unk_1011ACA30, &unk_100EEC4D0);
  v1 = swift_allocObject();
  v0[55] = v1;
  *(v1 + 16) = xmmword_100EBC6B0;
  sub_100008FE4((v0 + 18), v1 + 32);
  v0[56] = static MainActor.shared.getter();
  v2 = swift_task_alloc();
  v0[57] = v2;
  *v2 = v0;
  v2[1] = sub_100ACA7F0;

  return sub_100A43F80(v1, 0x10000, 1, 0, 0, (v0 + 23));
}

uint64_t sub_100ACA7F0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 464) = a1;
  *(v3 + 472) = v1;

  if (v1)
  {

    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
    v7 = sub_100ACAB08;
  }

  else
  {
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v8;
    v7 = sub_100ACA968;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_100ACA968()
{

  v1 = *(v0 + 424);
  v2 = *(v0 + 432);

  return _swift_task_switch(sub_100ACA9D4, v1, v2);
}

uint64_t sub_100ACA9D4()
{
  v1 = v0[58];

  if (v1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_8:

    sub_1000095E8((v0 + 23), &qword_1011A8658, &unk_100EF92B0);
    sub_10000959C(v0 + 18);
    v2 = v0[46];
    v3 = v0[47];
    v6 = sub_100ACAFFC;
    goto LABEL_9;
  }

  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return _swift_task_switch(v4, v2, v3);
    }

    v5 = *(v0[58] + 32);
  }

  v0[60] = v5;

  sub_1000095E8((v0 + 23), &qword_1011A8658, &unk_100EF92B0);
  sub_10000959C(v0 + 18);
  v2 = v0[46];
  v3 = v0[47];
  v6 = sub_100ACADA8;
LABEL_9:
  v4 = v6;

  return _swift_task_switch(v4, v2, v3);
}

uint64_t sub_100ACAB08()
{

  v1 = *(v0 + 424);
  v2 = *(v0 + 432);

  return _swift_task_switch(sub_100ACAB6C, v1, v2);
}

uint64_t sub_100ACAB6C()
{

  v1 = *(v0 + 368);
  v2 = *(v0 + 376);

  return _swift_task_switch(sub_100ACABD0, v1, v2);
}

uint64_t sub_100ACABD0()
{
  v13 = v0;

  sub_1000095E8((v0 + 23), &qword_1011A8658, &unk_100EF92B0);
  sub_10000959C(v0 + 18);
  v1 = v0[59];
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136446210;
    v0[39] = v1;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v6 = String.init<A>(describing:)();
    v8 = sub_100010678(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "⚠️ Building session failed with error=%{public}s", v4, 0xCu);
    sub_10000959C(v5);
  }

  sub_100AC0378();
  swift_allocError();
  *v9 = 3;
  *(v9 + 8) = 4;
  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t sub_100ACADA8()
{
  v18 = v0;
  v1 = *(v0 + 480);

  v2 = [v1 error];
  if (v2 || (v2 = [*(v0 + 480) dialog]) != 0)
  {
    v3 = *(v0 + 480);

    sub_100AC0378();
    v4 = swift_allocError();
    *v5 = v3;
    *(v5 + 8) = 2;
    swift_willThrow();

    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136446210;
      *(v0 + 312) = v4;
      swift_errorRetain();
      sub_10010FC20(&qword_1011AB640, L"D\v\a");
      v10 = String.init<A>(describing:)();
      v12 = sub_100010678(v10, v11, &v17);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "⚠️ Building session failed with error=%{public}s", v8, 0xCu);
      sub_10000959C(v9);
    }

    swift_allocError();
    *v13 = 3;
    *(v13 + 8) = 4;
    swift_willThrow();

    v14 = *(v0 + 8);
  }

  else
  {
    v16 = *(v0 + 480);

    v14 = *(v0 + 8);
  }

  return v14();
}

uint64_t sub_100ACAFFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100ACB060()
{
  v1 = v0[50];
  v2 = v0[49];

  swift_willThrow();

  v3 = v0[1];

  return v3();
}

unint64_t sub_100ACB0E0()
{
  result = qword_1011AFB68;
  if (!qword_1011AFB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AFB68);
  }

  return result;
}

uint64_t sub_100ACB134(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696A6F6D65 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44497265646E6573 && a2 == 0xE800000000000000)
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

uint64_t sub_100ACB240@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_10010FC20(&qword_1011AFB90, &qword_100EFC400);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v19 - v7;
  sub_10000954C(a1, a1[3]);
  sub_100ACB0E0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000959C(a1);
  }

  v25 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = v12;
  v23 = 2;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = sub_10000959C(a1);
  *a2 = v22;
  a2[1] = v11;
  v18 = v21;
  a2[2] = v20;
  a2[3] = v18;
  a2[4] = v13;
  a2[5] = v16;
  return result;
}

unint64_t sub_100ACB490()
{
  result = qword_1011AFB70;
  if (!qword_1011AFB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AFB70);
  }

  return result;
}

uint64_t sub_100ACB500(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100ACB524(uint64_t a1)
{
  if ((*(a1 + 48) & 7u) <= 4)
  {
    return *(a1 + 48) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_100ACB540(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 49))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 48);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100ACB588(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_100ACB5DC(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_100ACB644(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100ACB6A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100ACB714(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t sub_100ACB730(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100ACB778(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_100ACB7BC(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_100ACB7E8()
{
  result = qword_1011AFB78;
  if (!qword_1011AFB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AFB78);
  }

  return result;
}

unint64_t sub_100ACB840()
{
  result = qword_1011AFB80;
  if (!qword_1011AFB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AFB80);
  }

  return result;
}

unint64_t sub_100ACB898()
{
  result = qword_1011AFB88;
  if (!qword_1011AFB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AFB88);
  }

  return result;
}

double sub_100ACB8EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100ACB904(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100ACB94C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10002F3F4;

  return sub_100AC7774(a1, a2, v6, v7, v8);
}

uint64_t sub_100ACBA0C(uint64_t a1)
{
  v4 = *(v1 + 24);
  v11 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_100AC7A54(a1, v11, v4, v5, v6, v7, v8, v1 + 64);
}

unint64_t UnifiedMessages.MLI.State.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x6572676F72506E69;
  if (a1 != 2)
  {
    v2 = 0x6574656C706D6F63;
  }

  if (!a1)
  {
    v1 = 0xD00000000000001ELL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_100ACBBF8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_100ACBCC8(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_100ACBD84(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100ACBE50@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore15UnifiedMessagesO3MLIV5StateO8rawValueAGSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_100ACBE80(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xEA00000000007373;
  v5 = 0x6572676F72506E69;
  if (*v1 != 2)
  {
    v5 = 0x6574656C706D6F63;
    v4 = 0xE900000000000064;
  }

  if (!*v1)
  {
    v3 = 0xD00000000000001ELL;
    v2 = 0x8000000100E3BEB0;
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

MusicCore::UnifiedMessages::GroupDefaultsKey_optional __swiftcall UnifiedMessages.GroupDefaultsKey.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010C8EA0, v2);

  if (v3 == 1)
  {
    v4.value = MusicCore_UnifiedMessages_GroupDefaultsKey_countOfSongsInLibrary;
  }

  else
  {
    v4.value = MusicCore_UnifiedMessages_GroupDefaultsKey_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t UnifiedMessages.GroupDefaultsKey.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t sub_100ACC088(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v3 = 0xD000000000000019;
  }

  if (v2)
  {
    v4 = "ByReleaseDateDescending";
  }

  else
  {
    v4 = "countOfPlaylistsInLibrary";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000015;
  }

  else
  {
    v6 = 0xD000000000000019;
  }

  if (*a2)
  {
    v7 = "countOfPlaylistsInLibrary";
  }

  else
  {
    v7 = "ByReleaseDateDescending";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_100ACC134()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_100ACC1B4(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_100ACC220(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_100ACC29C(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1010C8EA0, *a1);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_100ACC2FC(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000015;
  }

  else
  {
    v2 = 0xD000000000000019;
  }

  if (*v1)
  {
    v3 = "countOfPlaylistsInLibrary";
  }

  else
  {
    v3 = "ByReleaseDateDescending";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t _s9MusicCore15UnifiedMessagesO3MLIV5StateO8rawValueAGSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010C8E20, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100ACC38C()
{
  result = qword_1011AFBE8;
  if (!qword_1011AFBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AFBE8);
  }

  return result;
}

unint64_t sub_100ACC3E4()
{
  result = qword_1011AFBF0;
  if (!qword_1011AFBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AFBF0);
  }

  return result;
}

unint64_t sub_100ACC478()
{
  result = qword_1011AFBF8;
  if (!qword_1011AFBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AFBF8);
  }

  return result;
}

MusicCore::AccessibilityIdentifier __swiftcall AccessibilityIdentifier.init(name:)(Swift::String name)
{
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  if (qword_1011A6B58 != -1)
  {
    swift_once();
  }

  v9 = qword_1011AFC00;
  v10 = *algn_1011AFC08;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);

  v4._countAndFlagsBits = countAndFlagsBits;
  v4._object = object;
  String.append(_:)(v4);

  v5 = v9;
  v6 = v10;
  v7 = countAndFlagsBits;
  v8 = object;
  result.name._object = v8;
  result.name._countAndFlagsBits = v7;
  result.rawValue._object = v6;
  result.rawValue._countAndFlagsBits = v5;
  return result;
}

uint64_t sub_100ACC588(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin();
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    v6 = swift_getTupleTypeMetadata();
  }

  __chkstk_darwin();
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *TupleTypeMetadata++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return TupleView.init(_:)();
}

uint64_t *AccessibilityIdentifier.libraryAlbumsView.unsafeMutableAddressor()
{
  if (qword_1011A6E38 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryAlbumsView;
}

uint64_t *AccessibilityIdentifier.libraryArtistsListView.unsafeMutableAddressor()
{
  if (qword_1011A6E28 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryArtistsListView;
}

uint64_t *AccessibilityIdentifier.librarySongsView.unsafeMutableAddressor()
{
  if (qword_1011A6E80 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.librarySongsView;
}

uint64_t *AccessibilityIdentifier.libraryPlaylistsView.unsafeMutableAddressor()
{
  if (qword_1011A6E78 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryPlaylistsView;
}

uint64_t *AccessibilityIdentifier.libraryGenresView.unsafeMutableAddressor()
{
  if (qword_1011A6E60 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryGenresView;
}

uint64_t *AccessibilityIdentifier.libraryRecentlyAddedView.unsafeMutableAddressor()
{
  if (qword_1011A6E20 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryRecentlyAddedView;
}

uint64_t *AccessibilityIdentifier.libraryMadeForYouView.unsafeMutableAddressor()
{
  if (qword_1011A6E68 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryMadeForYouView;
}

uint64_t *AccessibilityIdentifier.libraryMusicVideosView.unsafeMutableAddressor()
{
  if (qword_1011A6E70 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryMusicVideosView;
}

uint64_t *AccessibilityIdentifier.libraryCompilationsView.unsafeMutableAddressor()
{
  if (qword_1011A6E48 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryCompilationsView;
}

uint64_t *AccessibilityIdentifier.libraryComposersView.unsafeMutableAddressor()
{
  if (qword_1011A6E40 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryComposersView;
}

uint64_t *AccessibilityIdentifier.libraryTVAndMoviesView.unsafeMutableAddressor()
{
  if (qword_1011A6E88 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryTVAndMoviesView;
}

uint64_t *AccessibilityIdentifier.libraryDownloadedView.unsafeMutableAddressor()
{
  if (qword_1011A6E50 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryDownloadedView;
}

uint64_t *AccessibilityIdentifier.libraryDownloadingView.unsafeMutableAddressor()
{
  if (qword_1011A6E58 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryDownloadingView;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression1.unsafeMutableAddressor()
{
  if (qword_1011A6FD0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression1;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression2.unsafeMutableAddressor()
{
  if (qword_1011A6FD8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression2;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression3.unsafeMutableAddressor()
{
  if (qword_1011A6FE0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression3;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression4.unsafeMutableAddressor()
{
  if (qword_1011A6FE8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression4;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression5.unsafeMutableAddressor()
{
  if (qword_1011A6FF0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression5;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression6.unsafeMutableAddressor()
{
  if (qword_1011A6FF8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression6;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression7.unsafeMutableAddressor()
{
  if (qword_1011A7000 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression7;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression8.unsafeMutableAddressor()
{
  if (qword_1011A7008 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression8;
}

MusicCore::AccessibilityIdentifier __swiftcall AccessibilityIdentifier.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  countAndFlagsBits = rawValue._countAndFlagsBits;

  v3 = countAndFlagsBits;
  v4 = object;
  v5 = countAndFlagsBits;
  v6 = object;
  result.name._object = v6;
  result.name._countAndFlagsBits = v5;
  result.rawValue._object = v4;
  result.rawValue._countAndFlagsBits = v3;
  return result;
}

uint64_t static AccessibilityIdentifier.named(_:)(uint64_t a1, void *a2)
{
  if (qword_1011A6B58 != -1)
  {
    swift_once();
  }

  v7 = qword_1011AFC00;

  v4._countAndFlagsBits = 46;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);

  v5._countAndFlagsBits = a1;
  v5._object = a2;
  String.append(_:)(v5);

  return v7;
}

void sub_100ACCEF0()
{
  if (qword_1011A6B58 != -1)
  {
    swift_once();
  }

  v2 = qword_1011AFC00;
  v3 = *algn_1011AFC08;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x6B726F77747241;
  v1._object = 0xE700000000000000;
  String.append(_:)(v1);

  static AccessibilityIdentifier.artwork = v2;
  *algn_101219E58 = v3;
  qword_101219E60 = 0x6B726F77747241;
  unk_101219E68 = 0xE700000000000000;
}

uint64_t *AccessibilityIdentifier.artwork.unsafeMutableAddressor()
{
  if (qword_1011A6B60 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.artwork;
}