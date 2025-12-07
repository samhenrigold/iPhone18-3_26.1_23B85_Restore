uint64_t sub_100444694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v7 = &v13 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_1004462C8(a3, v14);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  v10 = v14[3];
  *(v9 + 80) = v14[2];
  *(v9 + 96) = v10;
  *(v9 + 112) = v15;
  v11 = v14[1];
  *(v9 + 48) = v14[0];
  *(v9 + 64) = v11;

  sub_1001F4CB8(0, 0, v7, &unk_100ECCEE0, v9);

  return 0;
}

uint64_t sub_1004447DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  v6 = swift_task_alloc();
  v5[4] = v6;
  v7 = swift_task_alloc();
  v5[5] = v7;
  *v7 = v5;
  v7[1] = sub_1004448B4;

  return sub_100441600(v6);
}

uint64_t sub_1004448B4()
{

  return _swift_task_switch(sub_1004449B0, 0, 0);
}

uint64_t sub_1004449B0()
{
  v1 = *(v0 + 32);
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1000095E8(v1, &qword_101183A20, &unk_100EBCF80);
    v5 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v4);
    v5 = v6;
    (*(v3 + 8))(v1, v2);
  }

  (*(v0 + 16))(v5, 0);
  swift_unknownObjectRelease();

  v7 = *(v0 + 8);

  return v7();
}

double sub_100444AF0@<D0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {

    v11 = *(a2 + 64);
    if (v11)
    {
      goto LABEL_7;
    }

LABEL_11:
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }

  v11 = *(a2 + 64);
  if (!v11)
  {
    goto LABEL_11;
  }

LABEL_7:
  v14 = v11;
  *(a3 + 24) = sub_100009F78(0, &unk_1011902E0, LPLinkMetadata_ptr);
  *a3 = v14;

  v12 = v14;
  return result;
}

id sub_100444C08(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(v12);

  v5 = v13;
  if (v13)
  {
    sub_10000954C(v12, v13);
    v6 = *(v5 - 8);
    v7 = __chkstk_darwin();
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v9, v5);
    sub_10000959C(v12);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

double sub_100444D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v9 = &v15 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  type metadata accessor for MainActor();
  v11 = a5;
  sub_100030444(a1, a2);
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v11;
  v13[5] = a1;
  v13[6] = a2;
  sub_1001F4CB8(0, 0, v9, &unk_100ECCF10, v13);

  return result;
}

uint64_t sub_100444EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  v6[5] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[14] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10044504C, v10, v9);
}

uint64_t sub_10044504C()
{
  v1 = v0[2];

  if ((*((swift_isaMask & *v1) + 0x110))(v2))
  {
    v3 = v0[13];
    v4 = v0[9];
    v5 = v0[10];
    v6 = Logger.groupActivities.unsafeMutableAddressor();
    (*(v5 + 16))(v3, v6, v4);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "[Suggestion] Session is placeholder, requesting real session", v9, 2u);
    }

    v10 = v0[13];
    v11 = v0[9];
    v12 = v0[10];

    (*(v12 + 8))(v10, v11);
    if (qword_10117F5F8 != -1)
    {
      swift_once();
    }

    v13 = v0[3];
    v14 = v0[4];
    v15 = qword_101218AC8;
    v16 = swift_allocObject();
    *(v16 + 16) = v13;
    *(v16 + 24) = v14;
    v17 = *(*v15 + 720);
    sub_100030444(v13, v14);
    v17(sub_1004466F4, v16);
  }

  else
  {
    v18 = v0[6];
    v19 = v0[7];
    v20 = v0[5];
    (*((swift_isaMask & *v0[2]) + 0x260))();
    v21 = (*(v19 + 48))(v20, 1, v18);
    v22 = v0[9];
    v23 = v0[10];
    if (v21 == 1)
    {
      v24 = v0[12];
      sub_1000095E8(v0[5], &qword_101183A20, &unk_100EBCF80);
      v25 = Logger.groupActivities.unsafeMutableAddressor();
      (*(v23 + 16))(v24, v25, v22);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "[Suggestion] Session had no joinURL", v28, 2u);
      }

      v29 = v0[12];
      v30 = v0[9];
      v31 = v0[10];
      v32 = v0[3];

      (*(v31 + 8))(v29, v30);
      if (v32)
      {
        (v0[3])(0, 0);
      }
    }

    else
    {
      v33 = v0[11];
      (*(v0[7] + 32))(v0[8], v0[5], v0[6]);
      v34 = Logger.groupActivities.unsafeMutableAddressor();
      (*(v23 + 16))(v33, v34, v22);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v35, v36, "[Suggestion] Returning joinURL for session", v37, 2u);
      }

      v39 = v0[10];
      v38 = v0[11];
      v40 = v0[9];
      v41 = v0[3];

      (*(v39 + 8))(v38, v40);
      if (v41)
      {
        v43 = v0[3];
        URL._bridgeToObjectiveC()(v42);
        v45 = v44;
        v43();
      }

      (*(v0[7] + 8))(v0[8], v0[6]);
    }
  }

  v46 = v0[1];

  return v46();
}

void sub_100445524(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void), uint64_t a5)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v35 - v12;
  __chkstk_darwin();
  v15 = &v35 - v14;
  if (a3)
  {
    swift_errorRetain();
    v16 = Logger.groupActivities.unsafeMutableAddressor();
    (*(v9 + 16))(v15, v16, v8);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138543362;
      swift_errorRetain();
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v21;
      *v20 = v21;
      _os_log_impl(&_mh_execute_header, v17, v18, "[Suggestion] There was an error requesting the session %{public}@", v19, 0xCu);
      sub_1000095E8(v20, &unk_101183D70, &unk_100EC6540);
    }

    (*(v9 + 8))(v15, v8);
    if (a4)
    {
      a4(0, 0);
    }
  }

  else
  {
    if (qword_10117F5F8 != -1)
    {
      swift_once();
    }

    v22 = (*(*qword_101218AC8 + 528))();
    if (v22)
    {
      v23 = v22;
      v24 = Logger.groupActivities.unsafeMutableAddressor();
      (*(v9 + 16))(v11, v24, v8);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "[Suggestion] Got new session, waiting for connection.", v27, 2u);
      }

      (*(v9 + 8))(v11, v8);
      v28 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v29 = swift_allocObject();
      v29[2] = v28;
      v29[3] = a4;
      v29[4] = a5;
      v30 = *((swift_isaMask & *v23) + 0x358);

      sub_100030444(a4, a5);
      v30(sub_1004466FC, v29);
    }

    else
    {
      v31 = Logger.groupActivities.unsafeMutableAddressor();
      (*(v9 + 16))(v13, v31, v8);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "[Suggestion] There was no session after requesting it", v34, 2u);
      }

      (*(v9 + 8))(v13, v8);
      if (a4)
      {
        a4(0, 0);
      }
    }
  }
}

uint64_t sub_100445A18(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v30 = a3;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v30 - v8;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v11 = &v30 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    (*((swift_isaMask & *Strong) + 0x260))(Strong);

    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      (*(v13 + 32))(v15, v11, v12);
      v18 = Logger.groupActivities.unsafeMutableAddressor();
      (*(v5 + 16))(v7, v18, v4);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "[Suggestion] Returning joinURL for session after requesting", v21, 2u);
      }

      (*(v5 + 8))(v7, v4);
      if (a2)
      {
        URL._bridgeToObjectiveC()(v22);
        v24 = v23;
        a2(v23);
      }

      return (*(v13 + 8))(v15, v12);
    }
  }

  else
  {
    (*(v13 + 56))(v11, 1, 1, v12);
  }

  sub_1000095E8(v11, &qword_101183A20, &unk_100EBCF80);
  v26 = Logger.groupActivities.unsafeMutableAddressor();
  (*(v5 + 16))(v9, v26, v4);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "[Suggestion] Session had no joinURL after requesting it", v29, 2u);
  }

  result = (*(v5 + 8))(v9, v4);
  if (a2)
  {
    return (a2)(0, 0);
  }

  return result;
}

id GroupActivitiesManager.SuggestionProvider.init()()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtCE5MusicC9MusicCore22GroupActivitiesManager18SuggestionProvider_pendingRegistration];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  v3 = &v0[OBJC_IVAR____TtCE5MusicC9MusicCore22GroupActivitiesManager18SuggestionProvider_playingItemSuggestion];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 8) = 0;
  v4 = &v0[OBJC_IVAR____TtCE5MusicC9MusicCore22GroupActivitiesManager18SuggestionProvider_containerItemSuggestion];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 8) = 0;
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "init");
}

uint64_t sub_100445F64(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101190238, &qword_100ECCD58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100445FD4(uint64_t a1, uint64_t a2)
{
  sub_100442468(a1, v13);
  sub_100442468(a2, v14);
  if (v13[48])
  {
    sub_100442468(v13, v11);
    v3 = v12;
    if (v16 == 1)
    {
      v4 = v15;

      v5 = v3 == v4;
      sub_10000959C(v14);
      sub_10000959C(v11);
LABEL_9:
      sub_100442874(v13);
      return v5;
    }

    sub_10000959C(v11);
  }

  else
  {
    sub_100442468(v13, v11);
    v6 = v11[0];
    if ((v16 & 1) == 0)
    {
      v7 = v14[0];
      v8 = [v11[0] identifiers];
      v9 = [v7 identifiers];
      v5 = [v8 intersectsSet:v9];

      goto LABEL_9;
    }
  }

  sub_1000095E8(v13, &qword_1011902F8, &qword_100ECCF40);
  return 0;
}

id sub_100446128()
{
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v0 = (*(*qword_101218AC8 + 528))();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = [objc_allocWithZone(NSItemProvider) init];
  v3 = String._bridgeToObjectiveC()();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v8[4] = sub_100446624;
  v8[5] = v4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10056401C;
  v8[3] = &unk_1010AC6A8;
  v5 = _Block_copy(v8);
  v6 = v1;

  [v2 registerItemForTypeIdentifier:v3 loadHandler:v5];
  _Block_release(v5);

  return v2;
}

uint64_t sub_100446338()
{
  v1 = (v0 + 16);
  if (*(v0 + 64) == 1)
  {
    sub_10000959C(v1);
    v1 = (v0 + 56);
  }

  return swift_deallocObject();
}

__n128 sub_1004463AC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1004463C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100446404(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_100446454(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

__n128 sub_10044648C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1004464B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1004464F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100446560(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1004447DC(a1, v4, v5, v6, v7);
}

uint64_t sub_10044662C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_100444EA8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100446708(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[13];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_100442E74(a1, v4, v5, v6, v7, (v1 + 6), v8);
}

id sub_1004467EC()
{
  result = [objc_allocWithZone(AVTimeFormatter) init];
  qword_101218CE8 = result;
  return result;
}

id sub_100446820@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UIButton.Configuration.Size();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for UIContentUnavailableConfiguration();
  (*(*(v7 - 8) + 16))(a1, v1, v7);
  v8 = objc_opt_self();
  result = [v8 _preferredFontForTextStyle:UIFontTextStyleTitle2 weight:UIFontWeightSemibold];
  if (result)
  {
    v10 = UIContentUnavailableConfiguration.textProperties.modify();
    UIContentUnavailableConfiguration.TextProperties.font.setter();
    v10(v21, 0);
    v11 = objc_opt_self();
    v12 = [v11 labelColor];
    v13 = UIContentUnavailableConfiguration.textProperties.modify();
    UIContentUnavailableConfiguration.TextProperties.color.setter();
    v13(v21, 0);
    v14 = [v8 preferredFontForTextStyle:UIFontTextStyleBody];
    v15 = UIContentUnavailableConfiguration.secondaryTextProperties.modify();
    UIContentUnavailableConfiguration.TextProperties.font.setter();
    v15(v21, 0);
    v16 = [v11 secondaryLabelColor];
    v17 = UIContentUnavailableConfiguration.secondaryTextProperties.modify();
    UIContentUnavailableConfiguration.TextProperties.color.setter();
    v17(v21, 0);
    UIContentUnavailableConfiguration.textToSecondaryTextPadding.setter();
    (*(v4 + 104))(v6, enum case for UIButton.Configuration.Size.medium(_:), v3);
    v18 = UIContentUnavailableConfiguration.button.modify();
    UIButton.Configuration.buttonSize.setter();
    v18(v21, 0);
    v19 = [v11 tintColor];
    v20 = UIContentUnavailableConfiguration.button.modify();
    UIButton.Configuration.baseForegroundColor.setter();
    return v20(v21, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100446B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v17[1] = _s11MusicVideosVMa(0);
  __chkstk_darwin();
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10TVEpisodesVMa(0);
  __chkstk_darwin();
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UIContentUnavailableConfiguration();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIContentUnavailableConfiguration.empty()();
  sub_100446820(a2);
  (*(v9 + 8))(v11, v8);
  v12 = String._bridgeToObjectiveC()();
  v13 = [objc_opt_self() _systemImageNamed:v12];

  UIContentUnavailableConfiguration.image.setter();
  sub_100008FE4(a1, v18);
  sub_10010FC20(&unk_101190300, &qword_100ECCF48);
  if (swift_dynamicCast())
  {
    goto LABEL_4;
  }

  if (swift_dynamicCast())
  {

LABEL_4:

LABEL_5:
    sub_10000959C(v18);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    UIContentUnavailableConfiguration.text.setter();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    return UIContentUnavailableConfiguration.secondaryText.setter();
  }

  if (swift_dynamicCast())
  {
    v15 = _s10TVEpisodesVMa;
    v16 = v7;
LABEL_10:
    sub_1004479DC(v16, v15);
    goto LABEL_5;
  }

  if (swift_dynamicCast())
  {
    v15 = _s11MusicVideosVMa;
    v16 = v5;
    goto LABEL_10;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  UIContentUnavailableConfiguration.text.setter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  UIContentUnavailableConfiguration.secondaryText.setter();
  return sub_10000959C(v18);
}

uint64_t sub_10044705C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v2 = type metadata accessor for UIContentUnavailableConfiguration();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIContentUnavailableConfiguration.empty()();
  sub_100446820(a1);
  (*(v3 + 8))(v5, v2);
  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() _systemImageNamed:v6];

  UIContentUnavailableConfiguration.image.setter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  UIContentUnavailableConfiguration.text.setter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  return UIContentUnavailableConfiguration.secondaryText.setter();
}

uint64_t sub_1004472B4()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v0 = type metadata accessor for UIContentUnavailableConfiguration();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_100006080(v4, qword_101218D08);
  v5 = sub_1000060E4(v0, qword_101218D08);
  static UIContentUnavailableConfiguration.empty()();
  sub_100446820(v5);
  (*(v1 + 8))(v3, v0);
  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() _systemImageNamed:v6];

  UIContentUnavailableConfiguration.image.setter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  UIContentUnavailableConfiguration.text.setter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  UIContentUnavailableConfiguration.secondaryText.setter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v8 = UIContentUnavailableConfiguration.button.modify();
  UIButton.Configuration.title.setter();
  v8(v12, 0);
  sub_100447990();
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v9 = UIContentUnavailableConfiguration.buttonProperties.modify();
  UIContentUnavailableConfiguration.ButtonProperties.primaryAction.setter();
  return v9(v12, 0);
}

double sub_100447638(__n128 a1)
{
  v1 = *(**CloudLibrary.StatusObserver.shared.unsafeMutableAddressor() + 208);

  v1(0, 0);

  return result;
}

uint64_t sub_1004476CC(__n128 a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = type metadata accessor for UIContentUnavailableConfiguration();
  sub_100006080(v6, a3);
  sub_1000060E4(v6, a3);
  return a4();
}

uint64_t sub_100447724@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v2 = type metadata accessor for UIContentUnavailableConfiguration();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIContentUnavailableConfiguration.empty()();
  sub_100446820(a1);
  (*(v3 + 8))(v5, v2);
  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() systemImageNamed:v6];

  UIContentUnavailableConfiguration.image.setter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  UIContentUnavailableConfiguration.text.setter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  return UIContentUnavailableConfiguration.secondaryText.setter();
}

unint64_t sub_100447990()
{
  result = qword_1011839A0;
  if (!qword_1011839A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011839A0);
  }

  return result;
}

uint64_t sub_1004479DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100447A3C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a3;
  v30 = a4;
  LODWORD(v26) = a2;
  v5 = a1;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v28 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v27 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UIContentUnavailableConfiguration();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v25 - v13;
  static UIContentUnavailableConfiguration.empty()();
  v15 = a5;
  sub_100446820(a5);
  v16 = *(v10 + 8);
  v16(v14, v9);
  sub_100447F98(v5);
  if (v26)
  {
    v26 = v17;
    static UIContentUnavailableConfiguration.search()();
    sub_100446820(v14);
    v16(v12, v9);
    v16(v15, v9);
    (*(v10 + 32))(v15, v14, v9);

    UIContentUnavailableConfiguration.secondaryText.setter();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v18 = UIContentUnavailableConfiguration.button.modify();
    UIButton.Configuration.title.setter();
    v18(v31, 0);
  }

  else
  {
    v19 = String._bridgeToObjectiveC()();

    v20 = [objc_opt_self() _systemImageNamed:v19];

    UIContentUnavailableConfiguration.image.setter();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    UIContentUnavailableConfiguration.secondaryText.setter();

    v21 = UIContentUnavailableConfiguration.button.modify();
    UIButton.Configuration.title.setter();
    v21(v31, 0);
  }

  sub_100447990();
  v22 = swift_allocObject();
  *(v22 + 16) = v29;
  *(v22 + 24) = v30;

  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v23 = UIContentUnavailableConfiguration.buttonProperties.modify();
  UIContentUnavailableConfiguration.ButtonProperties.primaryAction.setter();
  return v23(v31, 0);
}

uint64_t sub_100447F98(char a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  switch(a1)
  {
    case 2:
    case 5:
    case 10:
    case 12:
    case 13:
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v2 = 0;
      break;
    default:
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v2 = String.init(localized:table:bundle:locale:comment:)();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      break;
  }

  String.init(localized:table:bundle:locale:comment:)();
  return v2;
}

uint64_t sub_100448498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v5 = type metadata accessor for UIContentUnavailableConfiguration();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIContentUnavailableConfiguration.empty()();
  sub_100446820(a2);
  (*(v6 + 8))(v8, v5);
  v9 = String._bridgeToObjectiveC()();

  v10 = [objc_opt_self() _systemImageNamed:v9];

  UIContentUnavailableConfiguration.image.setter();
  sub_1004486A0(v3);
  return UIContentUnavailableConfiguration.secondaryText.setter();
}

uint64_t sub_1004486A0(unsigned __int8 a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

void sub_1004488D4()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v1 = v0;
    LSApplicationWorkspace.openRestrictions()();
  }
}

void sub_10044894C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v6 = type metadata accessor for UIContentUnavailableConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  static UIContentUnavailableConfiguration.empty()();
  sub_100446820(a3);
  (*(v7 + 8))(v9, v6);
  v10 = String._bridgeToObjectiveC()();

  v11 = [objc_opt_self() _systemImageNamed:v10];

  UIContentUnavailableConfiguration.image.setter();
  sub_100448E3C(v4, v3);
  UIContentUnavailableConfiguration.secondaryText.setter();
  if (v4 == 2)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      return;
    }
  }

  if (sub_10045EC58(v3) == 0x6C507265646C6F66 && v13 == 0xEF737473696C7961)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v15 = UIContentUnavailableConfiguration.button.modify();
      UIButton.Configuration.title.setter();
      v15(v18, 0);
      sub_100447990();
      UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v16 = UIContentUnavailableConfiguration.buttonProperties.modify();
      UIContentUnavailableConfiguration.ButtonProperties.primaryAction.setter();
      v16(v18, 0);
    }
  }
}

uint64_t sub_100448E3C(unsigned __int8 a1, unsigned __int8 a2)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v3 = [objc_opt_self() currentDevice];
  [v3 userInterfaceIdiom];

  if (a1 <= 1u || (result = 0, a1 == 2))
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }

  return result;
}

void sub_10044933C()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v1 = v0;
    LSApplicationWorkspace.openMusic(tabIdentifier:)(2);
  }
}

uint64_t sub_1004493CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicPropertySource();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100449438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MusicPropertySource();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t _s14descr101094081C15DataSourceErrorOMa(uint64_t a1)
{
  result = qword_101190380;
  if (!qword_101190380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100449500(uint64_t a1)
{
  result = type metadata accessor for MusicPropertySource();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

unint64_t sub_1004495A8()
{
  result = qword_1011903B0;
  if (!qword_1011903B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011903B0);
  }

  return result;
}

uint64_t _s7ArtworkVMa(uint64_t a1)
{
  result = qword_101190418;
  if (!qword_101190418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100449670(uint64_t a1)
{
  type metadata accessor for ArtworkImage.Info(319);
  if (v1 <= 0x3F)
  {
    sub_1004497D4(319, &qword_101182200, &type metadata accessor for VideoArtwork, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100449784();
      if (v3 <= 0x3F)
      {
        sub_1004497D4(319, &unk_101190430, &type metadata accessor for MotionMode, &type metadata accessor for AppStorage);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100449784()
{
  if (!qword_101190428)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_101190428);
    }
  }
}

void sub_1004497D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100449854@<X0>(uint64_t a1@<X8>)
{
  v121 = a1;
  v2 = type metadata accessor for AccessibilityTraits();
  v119 = *(v2 - 8);
  v120 = v2;
  __chkstk_darwin();
  v118 = &v92[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for AccessibilityChildBehavior();
  v116 = *(v4 - 8);
  v117 = v4;
  __chkstk_darwin();
  v115 = &v92[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10010FC20(&unk_101184060, &qword_100EBDF50);
  __chkstk_darwin();
  v123 = &v92[-v6];
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v96 = &v92[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v95 = &v92[-v8];
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v122 = &v92[-v9];
  v10 = type metadata accessor for MotionMode();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v92[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10010FC20(&unk_101192950, &unk_100EBDF40);
  __chkstk_darwin();
  v15 = &v92[-v14];
  v16 = type metadata accessor for ArtworkMotionView(0);
  __chkstk_darwin();
  v18 = &v92[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v101 = sub_10010FC20(&qword_101190468, &qword_100ECD080);
  v99 = *(v101 - 8);
  __chkstk_darwin();
  v98 = &v92[-v19];
  v104 = sub_10010FC20(&qword_101190470, &qword_100ECD088);
  v102 = *(v104 - 8);
  __chkstk_darwin();
  v100 = &v92[-v20];
  v108 = sub_10010FC20(&qword_101190478, &qword_100ECD090);
  v105 = *(v108 - 8);
  __chkstk_darwin();
  v103 = &v92[-v21];
  v22 = sub_10010FC20(&qword_101190480, &qword_100ECD098);
  v109 = *(v22 - 8);
  v110 = v22;
  __chkstk_darwin();
  v106 = &v92[-v23];
  v111 = sub_10010FC20(&qword_101190488, &qword_100ECD0A0);
  __chkstk_darwin();
  v112 = &v92[-v24];
  v114 = sub_10010FC20(&qword_101190490, &qword_100ECD0A8);
  __chkstk_darwin();
  v113 = &v92[-v25];
  v26 = _s7ArtworkVMa(0);
  v27 = v1;
  AppStorage.wrappedValue.getter();
  v29 = MotionMode.allowsMotion.getter(v28);
  (*(v11 + 8))(v13, v10);
  if (v29)
  {
    sub_1000089F8(v1 + *(v26 + 20), v15, &unk_101192950, &unk_100EBDF40);
  }

  else
  {
    v30 = type metadata accessor for VideoArtwork();
    (*(*(v30 - 8) + 56))(v15, 1, 1, v30);
  }

  v31 = v95;
  sub_1000089F8(v1, v95, &unk_10118A5E0, &unk_100EBCD90);
  v32 = type metadata accessor for ArtworkImage.ViewModel(0);
  v33 = *(*(v32 - 8) + 48);
  v34 = v33(v31, 1, v32);
  v107 = v26;
  v97 = v15;
  if (v34 == 1)
  {
    sub_10044A6F4(v31);
    v35 = type metadata accessor for Artwork();
    (*(*(v35 - 8) + 56))(v122, 1, 1, v35);
  }

  else
  {
    v36 = v31;
    v37 = type metadata accessor for Artwork();
    v38 = *(v37 - 8);
    v39 = v122;
    (*(v38 + 16))(v122, v36, v37);
    sub_10044AA2C(v36, type metadata accessor for ArtworkImage.ViewModel);
    (*(v38 + 56))(v39, 0, 1, v37);
  }

  v40 = v96;
  sub_1000089F8(v27, v96, &unk_10118A5E0, &unk_100EBCD90);
  v41 = v33(v40, 1, v32);
  v42 = v123;
  if (v41 == 1)
  {
    sub_10044A6F4(v40);
    v43 = type metadata accessor for Artwork.CropStyle();
    (*(*(v43 - 8) + 56))(v42, 1, 1, v43);
  }

  else
  {
    sub_1000089F8(&v40[*(v32 + 20)], v123, &unk_101184060, &qword_100EBDF50);
    sub_10044AA2C(v40, type metadata accessor for ArtworkImage.ViewModel);
  }

  v44 = type metadata accessor for ArtworkImage.Info(0);
  v45 = v27 + v44[7];
  v46 = *v45;
  LODWORD(v96) = *(v45 + 8);
  v47 = *(v45 + 16);
  v48 = *(v45 + 24);
  v49 = *(v45 + 32);
  LODWORD(v95) = *(v45 + 40);
  v93 = *(v45 + 41);
  v50 = v16[8];
  v51 = v27 + v44[5];
  v94 = v27;
  sub_10044A75C(v51, &v18[v50]);
  v52 = type metadata accessor for ArtworkImage.Placeholder(0);
  (*(*(v52 - 8) + 56))(&v18[v50], 0, 1, v52);
  v53 = v16[9];
  v54 = enum case for ArtworkImage.ReusePolicy.notReusableForDistinctItems(_:);
  v55 = type metadata accessor for ArtworkImage.ReusePolicy();
  (*(*(v55 - 8) + 104))(&v18[v53], v54, v55);
  sub_10003D17C(v97, v18, &unk_101192950, &unk_100EBDF40);
  sub_10003D17C(v122, &v18[v16[5]], &unk_101188920, &qword_100EBCC50);
  sub_10003D17C(v123, &v18[v16[6]], &unk_101184060, &qword_100EBDF50);
  v56 = &v18[v16[7]];
  *v56 = v46;
  v56[8] = v96;
  *(v56 + 2) = v47;
  v56[24] = v48;
  *(v56 + 4) = v49;
  v56[40] = v95;
  v56[41] = v93;
  v18[v16[10]] = 0;
  *&v18[v16[11]] = 0;
  v124 = 0x6B726F77747241;
  v125 = 0xE700000000000000;
  v57 = sub_10044A9B4(&qword_101190498, type metadata accessor for ArtworkMotionView, &unk_100EBDF74);
  v58 = v98;
  View.presentationSource<A>(id:)();
  sub_10044AA2C(v18, type metadata accessor for ArtworkMotionView);
  v59 = v27 + v44[8];
  v60 = *v59;
  v61 = *(v59 + 8);
  v62 = *(v59 + 16);
  v124 = v16;
  v125 = &type metadata for String;
  v126 = v57;
  v127 = &protocol witness table for String;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v64 = v100;
  v65 = v101;
  View.corner(_:)(v60, v61, v62, v101, OpaqueTypeConformance2);
  (*(v99 + 8))(v58, v65);
  v66 = Border.artwork.unsafeMutableAddressor();
  v67 = *v66;
  v68 = *(v66 + 1);
  LOBYTE(v54) = *(v66 + 16);

  v124 = v65;
  v125 = OpaqueTypeConformance2;
  v69 = swift_getOpaqueTypeConformance2();
  v70 = v103;
  v71 = v60;
  v72 = v104;
  View.border(_:corner:)(v67, v54, v71, v61, v62, v104, v69, v68);

  (*(v102 + 8))(v64, v72);
  v73 = v115;
  static AccessibilityChildBehavior.ignore.getter();
  v124 = v72;
  v125 = v69;
  v74 = swift_getOpaqueTypeConformance2();
  v75 = v106;
  v76 = v108;
  View.accessibilityElement(children:)();
  (*(v116 + 8))(v73, v117);
  (*(v105 + 8))(v70, v76);
  v77 = v118;
  static AccessibilityTraits.isImage.getter();
  v124 = v76;
  v125 = v74;
  swift_getOpaqueTypeConformance2();
  v78 = v112;
  v79 = v110;
  View.accessibilityAddTraits(_:)();
  (*(v119 + 8))(v77, v120);
  (*(v109 + 8))(v75, v79);
  v80 = AccessibilityIdentifier.containerDetailHeaderArtwork.unsafeMutableAddressor();
  v81 = *v80;
  v82 = v80[1];
  v83 = v80[2];
  v84 = v80[3];
  v85 = sub_10044A7C0();

  v86 = v113;
  View.accessibilityIdentifier(_:)(v81, v82, v83, v84, v111, v85);

  sub_1000095E8(v78, &qword_101190488, &qword_100ECD0A0);
  v87 = (v94 + *(v107 + 24));
  v88 = *v87;
  v89 = v87[1];
  v90 = sub_10044A9FC();
  View.accessibilityLabel(_:)(v88, v89, v114, v90);
  return sub_1000095E8(v86, &qword_101190490, &qword_100ECD0A8);
}

uint64_t sub_10044A6F4(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10044A75C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage.Placeholder(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10044A7C0()
{
  result = qword_1011904A0;
  if (!qword_1011904A0)
  {
    sub_1001109D0(&qword_101190488, &qword_100ECD0A0);
    sub_1001109D0(&qword_101190478, &qword_100ECD090);
    sub_1001109D0(&qword_101190470, &qword_100ECD088);
    sub_1001109D0(&qword_101190468, &qword_100ECD080);
    type metadata accessor for ArtworkMotionView(255);
    sub_10044A9B4(&qword_101190498, type metadata accessor for ArtworkMotionView, &unk_100EBDF74);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10044A9B4(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011904A0);
  }

  return result;
}

uint64_t sub_10044A9B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10044AA2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10044AA8C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2, a3);
    a4();
    sub_10044A9B4(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10044AB94(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
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

      v9 = (a1)(v12);

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

uint64_t sub_10044ACA0(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = sub_1007E976C(v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

BOOL sub_10044ADDC(uint64_t (*a1)(char *), uint64_t a2)
{
  v28 = a1;
  v29 = a2;
  v27 = type metadata accessor for Track();
  v3 = *(v27 - 8);
  __chkstk_darwin();
  v26 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v23 - v7;
  v9 = sub_10010FC20(&unk_10118C0B0, &qword_100ECFA00) - 8;
  v10 = __chkstk_darwin();
  v12 = &v23 - v11;
  (*(v6 + 16))(v8, v2, v5, v10);
  sub_100020674(&unk_10118C0A0, &unk_1011841D0, &qword_100EC5DB0, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Sequence.makeIterator()();
  v13 = *(v9 + 44);
  sub_100020674(&qword_1011913B0, &unk_1011841D0, &qword_100EC5DB0, &protocol conformance descriptor for MusicItemCollection<A>);
  v24 = (v3 + 16);
  v25 = (v3 + 8);
  do
  {
    dispatch thunk of Collection.endIndex.getter();
    v14 = v31[0];
    v30 = *&v12[v13];
    if (v30 == v31[0])
    {
      break;
    }

    v15 = dispatch thunk of Collection.subscript.read();
    v16 = v5;
    v17 = v26;
    v18 = v27;
    (*v24)(v26);
    v15(v31, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v19 = v32;
    v20 = v28(v17);
    v32 = v19;
    if (v19)
    {
      (*v25)(v17, v18);
      break;
    }

    v21 = v20;
    (*v25)(v17, v18);
    v5 = v16;
  }

  while ((v21 & 1) == 0);
  sub_1000095E8(v12, &unk_10118C0B0, &qword_100ECFA00);
  return v30 != v14;
}

void sub_10044B170(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  if (v8)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v16 = *(*(a3 + 56) + ((v11 << 9) | (8 * __clz(__rbit64(v8)))));
      v12 = v16;
      v13 = a1(&v16);
      if (v3)
      {
        break;
      }

      v14 = v13;

      if (v14)
      {
        goto LABEL_12;
      }

      v8 &= v8 - 1;
      v10 = v11;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {
LABEL_12:

        return;
      }

      v8 = *(v5 + 8 * v11);
      ++v10;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10044B2EC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3, uint64_t (*a4)(unint64_t, uint64_t))
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      v17 = a4;
      v18 = a3 & 0xC000000000000001;
      v7 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v18)
        {
          v8 = a3;
          v9 = v17(v6, a3);
        }

        else
        {
          if (v6 >= *(v7 + 16))
          {
            goto LABEL_14;
          }

          v8 = a3;
          v9 = *(a3 + 8 * v6 + 32);
        }

        v10 = v9;
        v11 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v20 = v9;
        v12 = a1(&v20);

        if (!v4 && (v12 & 1) == 0)
        {
          ++v6;
          a3 = v8;
          if (v11 != v5)
          {
            continue;
          }
        }

        return v12 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v13 = a4;
      v14 = a3;
      v15 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v14;
      a4 = v13;
      v5 = v15;
    }

    while (v15);
  }

  v12 = 0;
  return v12 & 1;
}

uint64_t sub_10044B424(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

unint64_t sub_10044B4CC(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      sub_10010FC20(&unk_1011972C0, &qword_100ECF9B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100EBC6B0;
      *(inited + 32) = 0xD000000000000021;
      v2 = inited + 32;
      *(inited + 72) = &type metadata for String;
      *(inited + 40) = 0x8000000100E4BB70;
      *(inited + 48) = 0xD000000000000024;
      *(inited + 56) = 0x8000000100E4BBA0;
      goto LABEL_6;
    }
  }

  else if (a1)
  {
    sub_10010FC20(&unk_1011972C0, &qword_100ECF9B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 32) = 0xD000000000000020;
    v2 = inited + 32;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0x8000000100E4BBD0;
    *(inited + 48) = 0x3534313332323036;
    *(inited + 56) = 0xEF30303938313939;
LABEL_6:
    v3 = sub_10010BC60(inited);
    swift_setDeallocating();
    sub_1000095E8(v2, &unk_1011927D0, &unk_100EBA560);
    return v3;
  }

  return sub_10010BC60(_swiftEmptyArrayStorage);
}

uint64_t sub_10044B664@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = v23 - v6;
  __chkstk_darwin();
  v9 = v23 - v8;
  __chkstk_darwin();
  v11 = v23 - v10;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      URL.init(string:)();
      v15 = type metadata accessor for URL();
      v16 = *(v15 - 8);
      result = (*(v16 + 48))(v7, 1, v15);
      if (result != 1)
      {
        return (*(v16 + 32))(a2, v7, v15);
      }

      goto LABEL_15;
    }

    v23[0] = 0;
    v23[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v19._countAndFlagsBits = 0xD000000000000036;
    v19._object = 0x8000000100E4B890;
    String.append(_:)(v19);
    v20._object = 0x8000000100E4B8D0;
    v20._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v20);
    URL.init(string:)();

    v21 = type metadata accessor for URL();
    v22 = *(v21 - 8);
    result = (*(v22 + 48))(v5, 1, v21);
    if (result == 1)
    {
LABEL_17:
      __break(1u);
      return result;
    }

    return (*(v22 + 32))(a2, v5, v21);
  }

  else
  {
    if (!a1)
    {
      URL.init(string:)();
      v12 = type metadata accessor for URL();
      v13 = *(v12 - 8);
      result = (*(v13 + 48))(v9, 1, v12);
      if (result != 1)
      {
        return (*(v13 + 32))(a2, v9, v12);
      }

      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    URL.init(string:)();
    v17 = type metadata accessor for URL();
    v18 = *(v17 - 8);
    result = (*(v18 + 48))(v11, 1, v17);
    if (result == 1)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    return (*(v18 + 32))(a2, v11, v17);
  }
}

unint64_t sub_10044BA2C(unsigned __int8 a1)
{
  v1 = 0xD00000000000003FLL;
  if (a1 == 2)
  {
    v1 = 0xD000000000000028;
  }

  v2 = 0xD00000000000002BLL;
  if (a1)
  {
    v2 = 0xD00000000000002ALL;
  }

  if (a1 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_10044BAA0(unsigned __int8 a1)
{
  v1 = 0xD000000000000035;
  if (a1 == 2)
  {
    v1 = 0xD000000000000025;
  }

  v2 = 0xD000000000000028;
  if (a1)
  {
    v2 = 0xD000000000000027;
  }

  if (a1 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10044BB14(unsigned __int8 a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

uint64_t sub_10044BC7C(unsigned __int8 a1)
{
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v3 = v26 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  BagProvider.shared.unsafeMutableAddressor();

  v8 = BagProvider.bag.getter();

  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = [v8 dictionaryForBagKey:ICURLBagKeyMusicSubscription];

  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100407258(v10);
  v12 = v11;

  if (!v12)
  {
    goto LABEL_11;
  }

  if (!*(v12 + 16) || (v13 = sub_100019C10(0xD000000000000027, 0x8000000100E4B7E0), (v14 & 1) == 0))
  {

    goto LABEL_11;
  }

  sub_1000160F8(*(v12 + 56) + 40 * v13, v27);

  sub_10010FC20(&qword_101183BC8, &unk_100EBF620);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v18 = 1;
    goto LABEL_12;
  }

  v15 = v26[2];
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v16 = "com.zhiliaoapp.musically";
      v17 = 0xD000000000000017;
    }

    else
    {
      v16 = "xtensionSetForBundleIds";
      v17 = 0xD000000000000018;
    }
  }

  else if (a1)
  {
    v17 = 0xD000000000000015;
    v16 = "com.burbn.instagram";
  }

  else
  {
    v16 = "com.toyopagroup.picaboo";
    v17 = 0xD000000000000013;
  }

  v27[0] = v17;
  v27[1] = v16 | 0x8000000000000000;
  __chkstk_darwin();
  v26[-2] = v27;
  v25 = sub_10044AB94(sub_10044CF58, &v26[-4], v15);

  v18 = v25 ^ 1;
LABEL_12:
  v19 = [objc_opt_self() sharedApplication];
  if (a1 <= 2u)
  {
    sub_10044B664(a1, v7);
    v3 = v7;
LABEL_15:
    URL._bridgeToObjectiveC()(v20);
    v23 = v22;
    (*(v5 + 8))(v3, v4);
    v24 = [v19 canOpenURL:v23];

    return v18 & v24 & 1;
  }

  URL.init(string:)();
  result = (*(v5 + 48))(v3, 1, v4);
  if (result != 1)
  {
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_10044C064(unsigned __int8 a1)
{
  BagProvider.shared.unsafeMutableAddressor();

  v2 = BagProvider.bag.getter();

  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = [v2 dictionaryForBagKey:ICURLBagKeyMusicSubscription];

  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100407258(v4);
  v6 = v5;

  if (!v6)
  {
    goto LABEL_11;
  }

  if (!*(v6 + 16) || (v7 = 0xD000000000000013, v8 = sub_100019C10(0xD00000000000002CLL, 0x8000000100E4BB40), (v9 & 1) == 0))
  {

    goto LABEL_11;
  }

  sub_1000160F8(*(v6 + 56) + 40 * v8, v15);

  sub_10010FC20(&qword_101183BC8, &unk_100EBF620);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v11 = 1;
    return v11 & 1;
  }

  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v10 = "com.zhiliaoapp.musically";
      v7 = 0xD000000000000017;
    }

    else
    {
      v10 = "xtensionSetForBundleIds";
      v7 = 0xD000000000000018;
    }
  }

  else if (a1)
  {
    v7 = 0xD000000000000015;
    v10 = "com.burbn.instagram";
  }

  else
  {
    v10 = "com.toyopagroup.picaboo";
  }

  v15[0] = v7;
  v15[1] = v10 | 0x8000000000000000;
  __chkstk_darwin();
  v14[2] = v15;
  v13 = sub_10044AB94(sub_10044D034, v14, v14[6]);

  v11 = v13 ^ 1;
  return v11 & 1;
}

uint64_t sub_10044C294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X8>)
{
  v72 = a3;
  v65 = a2;
  v68 = a1;
  v7 = a4;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v76 = &v60 - v8;
  v9 = type metadata accessor for UUID();
  v70 = *(v9 - 8);
  v71 = v9;
  __chkstk_darwin();
  v69 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for URLQueryItem();
  v73 = *(v80 - 8);
  __chkstk_darwin();
  v77 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v78 = &v60 - v12;
  __chkstk_darwin();
  v67 = &v60 - v13;
  __chkstk_darwin();
  v66 = &v60 - v14;
  v15 = type metadata accessor for CharacterSet();
  v74 = *(v15 - 8);
  v75 = v15;
  __chkstk_darwin();
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  __chkstk_darwin();
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101194980, &qword_100ECA390);
  __chkstk_darwin();
  v23 = &v60 - v22;
  v24 = type metadata accessor for URLComponents();
  v25 = *(v24 - 8);
  __chkstk_darwin();
  v79 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v7 == 3)
  {
    v64 = a5;
    sub_10044B664(3u, v21);
    URLComponents.init(url:resolvingAgainstBaseURL:)();
    v63 = v19;
    (*(v19 + 8))(v21, v18);
    if ((*(v25 + 48))(v23, 1, v24) == 1)
    {
      sub_1000095E8(v23, &qword_101194980, &qword_100ECA390);
      return sub_10044B664(3u, v64);
    }

    else
    {
      v61 = v18;
      (*(v25 + 32))(v79, v23, v24);
      v28 = v17;
      static CharacterSet.urlQueryAllowed.getter();
      v29._object = 0x8000000100E4BB20;
      v29._countAndFlagsBits = 0xD000000000000012;
      CharacterSet.remove(charactersIn:)(v29);
      v30 = URLComponents.percentEncodedQueryItems.getter();
      if (v30)
      {
        v31 = v30;
      }

      else
      {
        v31 = _swiftEmptyArrayStorage;
      }

      v81 = 0x2F2F3A636973756DLL;
      v82 = 0xE800000000000000;
      sub_100009838();
      StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
      v32 = v66;
      URLQueryItem.init(name:value:)();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_10049A5A8(0, *(v31 + 2) + 1, 1, v31);
      }

      v33 = v67;
      v35 = *(v31 + 2);
      v34 = *(v31 + 3);
      v62 = v24;
      v60 = v25;
      if (v35 >= v34 >> 1)
      {
        v31 = sub_10049A5A8((v34 > 1), v35 + 1, 1, v31);
      }

      *(v31 + 2) = v35 + 1;
      v36 = v73 + 32;
      v37 = *(v73 + 32);
      v73 = (*(v73 + 80) + 32) & ~*(v73 + 80);
      v67 = *(v36 + 40);
      v38 = v37;
      v37(&v31[v73 + v67 * v35], v32, v80);
      v81 = URL.absoluteString.getter();
      v82 = v39;
      StringProtocol.addingPercentEncoding(withAllowedCharacters:)();

      URLQueryItem.init(name:value:)();

      v41 = *(v31 + 2);
      v40 = *(v31 + 3);
      if (v41 >= v40 >> 1)
      {
        v31 = sub_10049A5A8((v40 > 1), v41 + 1, 1, v31);
      }

      *(v31 + 2) = v41 + 1;
      v42 = v80;
      v38(&v31[v73 + v41 * v67], v33, v80);
      v43 = v69;
      UUID.init()();
      v44 = UUID.uuidString.getter();
      v46 = v45;
      (*(v70 + 8))(v43, v71);
      v81 = v44;
      v82 = v46;
      StringProtocol.addingPercentEncoding(withAllowedCharacters:)();

      URLQueryItem.init(name:value:)();

      v48 = *(v31 + 2);
      v47 = *(v31 + 3);
      if (v48 >= v47 >> 1)
      {
        v31 = sub_10049A5A8((v47 > 1), v48 + 1, 1, v31);
      }

      v49 = v64;
      *(v31 + 2) = v48 + 1;
      v38(&v31[v73 + v48 * v67], v78, v42);
      if (v72)
      {
        v81 = v65;
        v82 = v72;
        StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
        URLQueryItem.init(name:value:)();

        v51 = *(v31 + 2);
        v50 = *(v31 + 3);
        if (v51 >= v50 >> 1)
        {
          v31 = sub_10049A5A8((v50 > 1), v51 + 1, 1, v31);
        }

        v53 = v76;
        v52 = v77;
        v54 = v61;
        *(v31 + 2) = v51 + 1;
        v38(&v31[v73 + v51 * v67], v52, v42);
      }

      else
      {
        v53 = v76;
        v54 = v61;
      }

      v55 = v79;
      URLComponents.percentEncodedQueryItems.setter();
      URLComponents.url.getter();
      v56 = v63;
      v57 = *(v63 + 48);
      v58 = v57(v53, 1, v54);
      v59 = v60;
      if (v58 == 1)
      {
        sub_10044B664(3u, v49);
        (*(v74 + 8))(v28, v75);
        (*(v59 + 8))(v55, v62);
        result = v57(v53, 1, v54);
        if (result != 1)
        {
          return sub_1000095E8(v53, &qword_101183A20, &unk_100EBCF80);
        }
      }

      else
      {
        (*(v74 + 8))(v28, v75);
        (*(v59 + 8))(v55, v62);
        return (*(v56 + 32))(v49, v53, v54);
      }
    }
  }

  else
  {

    return sub_10044B664(a4, a5);
  }

  return result;
}

Swift::Int sub_10044CC58()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_10044CD08(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_10044CDA4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10044CE50@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10044CF74(*a1);
  *a2 = result;
  return result;
}

void sub_10044CE80(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001FLL;
  v3 = "ited";
  v4 = "com.apple.Music.FacebookStories";
  v5 = 0xD00000000000001DLL;
  if (*v1 == 2)
  {
    v5 = 0xD00000000000001FLL;
  }

  else
  {
    v4 = "com.apple.Music.SnapchatStories";
  }

  if (*v1)
  {
    v3 = "InstagramStories";
  }

  else
  {
    v2 = 0xD000000000000020;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

unint64_t sub_10044CF04()
{
  result = qword_1011904D0;
  if (!qword_1011904D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011904D0);
  }

  return result;
}

unint64_t sub_10044CF74(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101099498, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10044CFC0(uint64_t *a1)
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

uint64_t sub_10044D050()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

void sub_10044D0C4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v14);

  if (v14 >> 62)
  {
    goto LABEL_16;
  }

  v0 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v0)
  {
    do
    {
      sub_10010FC20(&qword_101183990, &qword_100EBC750);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100EBC6C0;
      type metadata accessor for MusicLibrary();
      *(inited + 32) = static MusicLibrary.shared.getter();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v14);

      v2 = v14;
      v14 = inited;
      sub_1001251C8(v2);
      v3 = v14;
      if (v14 >> 62)
      {
        v4 = _CocoaArrayWrapper.endIndex.getter();
        if (!v4)
        {
LABEL_19:

          preferredElementSize = _swiftEmptyArrayStorage;
LABEL_20:
          sub_100009F78(0, &unk_1011845F0, UIMenu_ptr);
          v10._countAndFlagsBits = 0;
          v10._object = 0xE000000000000000;
          v15.value.super.isa = 0;
          v15.is_nil = 0;
          UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v10, 0, v15, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v11);
          return;
        }
      }

      else
      {
        v4 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v4)
        {
          goto LABEL_19;
        }
      }

      v14 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v4 < 0)
      {
        __break(1u);

        __break(1u);
        return;
      }

      v5 = 0;
      while (1)
      {
        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v7 = sub_1007E976C(v5, v3);
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v7 = *(v3 + 8 * v5 + 32);
        }

        v12 = v7;
        sub_10044D934(&v12, &v13);

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v5;
        if (v6 == v4)
        {

          preferredElementSize = v14;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      v9 = _CocoaArrayWrapper.endIndex.getter();
    }

    while (v9);
  }
}

uint64_t sub_10044D3B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

void sub_10044D424()
{
  v1 = v0;
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  __chkstk_darwin();
  v3 = &v30 - v2;
  v4 = sub_10010FC20(&unk_101197230, &qword_100ECD2D0);
  v34 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v30 - v5;
  v7 = sub_10010FC20(&qword_1011905E8, &qword_100ECD2D8);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v30 - v9;
  v11 = *(type metadata accessor for MusicSharedLibrariesRequest() - 8);
  __chkstk_darwin();
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC5Music25SharedLibrariesController_isAutomaticReloadingEnabled) == 1)
  {
    v32 = v8;
    v33 = v7;
    v15 = OBJC_IVAR____TtC5Music25SharedLibrariesController_autoupdatingResponse;
    if (*(v1 + OBJC_IVAR____TtC5Music25SharedLibrariesController_autoupdatingResponse))
    {
      v16 = *(v1 + OBJC_IVAR____TtC5Music25SharedLibrariesController_autoupdatingResponse);
    }

    else
    {
      v31 = v3;
      v17 = v10;
      v18 = v4;
      v19 = v12;
      MusicSharedLibrariesRequest.init()();
      v20 = v6;
      v21 = MusicSharedLibrariesRequest.autoupdatingResponse.getter();
      v22 = v19;
      v4 = v18;
      v10 = v17;
      v3 = v31;
      (*(v11 + 8))(v14, v22);
      *(v1 + v15) = v21;
      v16 = v21;
      v6 = v20;
    }

    v23 = OBJC_IVAR____TtC5Music25SharedLibrariesController_autoupdatingResponseSubscription;
    swift_beginAccess();
    sub_10044EF08(v1 + v23, v35);
    v24 = v36;

    if (v24)
    {

      sub_1000095E8(v35, &qword_10118D380, &qword_100EBDE20);
    }

    else
    {
      sub_1000095E8(v35, &qword_10118D380, &qword_100EBDE20);
      dispatch thunk of MusicAutoupdatingSharedLibrariesResponse.$libraries.getter();
      sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
      v25 = static OS_dispatch_queue.main.getter();
      v35[0] = v25;
      v26 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      (*(*(v26 - 8) + 56))(v3, 1, 1, v26);
      sub_100020674(&qword_10118DF80, &unk_101197230, &qword_100ECD2D0, &protocol conformance descriptor for Published<A>.Publisher);
      v31 = v16;
      v27 = v34;
      sub_1000206BC();
      Publisher.receive<A>(on:options:)();
      sub_1000095E8(v3, &qword_101182140, &unk_100EBD2A0);

      (*(v27 + 8))(v6, v4);
      swift_allocObject();
      swift_weakInit();
      sub_100020674(&qword_1011905F0, &qword_1011905E8, &qword_100ECD2D8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
      v28 = v33;
      v29 = Publisher<>.sink(receiveValue:)();

      (*(v32 + 8))(v10, v28);
      v36 = type metadata accessor for AnyCancellable();
      v37 = &protocol witness table for AnyCancellable;

      v35[0] = v29;
      swift_beginAccess();
      sub_10016E1E0(v35, v1 + v23);
      swift_endAccess();
    }
  }
}

void sub_10044D934(uint64_t *a1@<X0>, void *a3@<X8>)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v4 = *a1;
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  LOBYTE(a1) = static MusicLibrary.== infix(_:_:)();

  if (a1)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
  }

  else
  {
    MusicLibrary.name.getter();
  }

  static MusicLibrary.shared.getter();
  v5 = static MusicLibrary.== infix(_:_:)();

  if (v5)
  {
    v6 = &selRef__systemImageNamed_;
  }

  else
  {
    v6 = &selRef_systemImageNamed_;
  }

  v7 = String._bridgeToObjectiveC()();
  v8 = [objc_opt_self() *v6];

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v16);

  static MusicLibrary.== infix(_:_:)();

  sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v4;

  v11 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v12 = v11;
  _StringGuts.grow(_:)(28);

  v16._countAndFlagsBits = 0xD00000000000001ALL;
  v16._object = 0x8000000100E4BD00;
  v13._countAndFlagsBits = MusicLibrary.name.getter();
  String.append(_:)(v13);

  AccessibilityIdentifier.init(name:)(v16);

  v14 = String._bridgeToObjectiveC()();

  [v12 setAccessibilityIdentifier:v14];

  *a3 = v12;
}

double sub_10044DD20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10044DD80(a3);
  }

  return result;
}

double sub_10044DD80(uint64_t a1)
{
  v2 = v1;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v5 = &v11 - v4;
  v12 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v11);

  type metadata accessor for MusicLibrary();
  sub_10031D190();
  v6 = dispatch thunk of static Equatable.== infix(_:_:)();

  if ((v6 & 1) == 0 && (*(v2 + OBJC_IVAR____TtC5Music25SharedLibrariesController_isCurrentlyConnecting) & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v12);

    MusicLibrary.disconnect()();

    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    type metadata accessor for MainActor();

    v9 = static MainActor.shared.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = &protocol witness table for MainActor;
    v10[4] = v2;
    v10[5] = a1;
    sub_1001F4CB8(0, 0, v5, &unk_100ECD2B8, v10);
  }

  return result;
}

void sub_10044DFA4(unint64_t *a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v38[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v38[-v7];
  v9 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v49);

    v12 = sub_10047D074(v9, v49);

    if ((v12 & 1) == 0)
    {
      v13 = Logger.libraryMenu.unsafeMutableAddressor();
      (*(v4 + 16))(v8, v13, v3);

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v46 = v11;
        v16 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v49 = v44;
        v45 = v16;
        *v16 = 136446210;
        v47 = v6;
        if (v9 >> 62)
        {
          v17 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v17 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v17)
        {
          v39 = v15;
          v40 = v14;
          v41 = v8;
          v42 = v4;
          v43 = v3;
          v48 = _swiftEmptyArrayStorage;
          sub_100015C04(0, v17 & ~(v17 >> 63), 0);
          if (v17 < 0)
          {
            __break(1u);
            return;
          }

          v18 = 0;
          v19 = v48;
          do
          {
            if ((v9 & 0xC000000000000001) != 0)
            {
              sub_1007E976C(v18, v9);
            }

            else
            {
            }

            v20 = MusicLibrary.name.getter();
            v22 = v21;

            v48 = v19;
            v24 = v19[2];
            v23 = v19[3];
            if (v24 >= v23 >> 1)
            {
              sub_100015C04((v23 > 1), v24 + 1, 1);
              v19 = v48;
            }

            ++v18;
            v19[2] = v24 + 1;
            v25 = &v19[2 * v24];
            v25[4] = v20;
            v25[5] = v22;
          }

          while (v17 != v18);
          v4 = v42;
          v3 = v43;
          v14 = v40;
          v8 = v41;
          LOBYTE(v15) = v39;
        }

        v26 = Array.description.getter();
        v28 = v27;

        v29 = sub_1000105AC(v26, v28, &v49);

        v30 = v45;
        *(v45 + 1) = v29;
        _os_log_impl(&_mh_execute_header, v14, v15, "Discovered new shared libraries %{public}s", v30, 0xCu);
        sub_10000959C(v44);

        (*(v4 + 8))(v8, v3);
        v6 = v47;
      }

      else
      {

        (*(v4 + 8))(v8, v3);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v49 = v9;

      static Published.subscript.setter();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v49);

    type metadata accessor for MusicLibrary();
    v48 = static MusicLibrary.shared.getter();
    sub_10031D190();
    v31 = dispatch thunk of static Equatable.== infix(_:_:)();

    if ((v31 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v49);

      __chkstk_darwin();
      *&v38[-16] = &v49;
      v32 = sub_10044ACA0(sub_10044EFE0, &v38[-32], v9);

      if ((v32 & 1) == 0)
      {
        v33 = Logger.libraryMenu.unsafeMutableAddressor();
        (*(v4 + 16))(v6, v33, v3);
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          _os_log_impl(&_mh_execute_header, v34, v35, "Currently selected Library become unavailable, resetting to device library", v36, 2u);
        }

        (*(v4 + 8))(v6, v3);
        v37 = static MusicLibrary.shared.getter();
        sub_10044DD80(v37);
      }
    }
  }
}

uint64_t sub_10044E5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = type metadata accessor for Logger();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[11] = v8;
  v5[12] = v7;

  return _swift_task_switch(sub_10044E6E8, v8, v7);
}

uint64_t sub_10044E6E8()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC5Music25SharedLibrariesController_isCurrentlyConnecting;
  v0[13] = OBJC_IVAR____TtC5Music25SharedLibrariesController_isCurrentlyConnecting;
  *(v1 + v2) = 1;
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_10044E794;

  return MusicLibrary.connect()();
}

uint64_t sub_10044E794()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_10044E9A0;
  }

  else
  {
    v5 = sub_10044E8D0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10044E8D0()
{
  v1 = v0[13];
  v2 = v0[5];
  v3 = v0[6];

  *(v2 + v1) = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  v0[4] = v3;

  static Published.subscript.setter();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10044E9A0()
{
  v23 = v0;
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[8];

  v4 = Logger.libraryMenu.unsafeMutableAddressor();
  (*(v3 + 16))(v1, v4, v2);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[15];
    v9 = v0[8];
    v8 = v0[9];
    v10 = v0[7];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    v0[3] = v7;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v13 = String.init<A>(describing:)();
    v15 = sub_1000105AC(v13, v14, &v22);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to connect to shared library with error=%s", v11, 0xCu);
    sub_10000959C(v12);

    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v17 = v0[8];
    v16 = v0[9];
    v18 = v0[7];

    (*(v17 + 8))(v16, v18);
  }

  *(v0[5] + v0[13]) = 0;
  type metadata accessor for MusicLibrary();
  v19 = static MusicLibrary.shared.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v19;

  static Published.subscript.setter();

  v20 = v0[1];

  return v20();
}

uint64_t sub_10044EC18()
{
  v1 = OBJC_IVAR____TtC5Music25SharedLibrariesController__availableSharedLibraries;
  v2 = sub_10010FC20(&unk_101197240, &unk_100ECD2C0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC5Music25SharedLibrariesController__selectedLibrary;
  v4 = sub_10010FC20(&unk_101197250, &qword_100EC9FC0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_1000095E8(v0 + OBJC_IVAR____TtC5Music25SharedLibrariesController_autoupdatingResponseSubscription, &qword_10118D380, &qword_100EBDE20);

  return swift_deallocClassInstance();
}

void sub_10044ED44(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

uint64_t sub_10044EDC4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10044EE48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002F3F4;

  return sub_10044E5F4(a1, v4, v5, v7, v6);
}

uint64_t sub_10044EF08(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_10118D380, &qword_100EBDE20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10044EF80(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for MusicLibrary();
  sub_10031D190();
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

void sub_10044F000(uint64_t a1)
{
  sub_10010FC20(&qword_1011906A8, &qword_100ECD330);
  __chkstk_darwin();
  v137 = (&v121 - v2);
  v3 = type metadata accessor for MusicCollaborativePlaylist.Error();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v126 = &v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v125 = &v121 - v6;
  __chkstk_darwin();
  v132 = &v121 - v7;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v124 = &v121 - v8;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v128 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v127 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v136 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v129 = &v121 - v14;
  __chkstk_darwin();
  v130 = &v121 - v15;
  __chkstk_darwin();
  v17 = &v121 - v16;
  v18 = Logger.collaboration.unsafeMutableAddressor();
  v19 = *(v12 + 2);
  v133 = v18;
  v134 = v19;
  v135 = v12 + 16;
  (v19)(v17);
  swift_errorRetain();
  v20 = a1;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v123 = v3;
    v121 = v24;
    *&v142 = v24;
    *v23 = 136446210;
    swift_getErrorValue();
    v122 = v20;
    v25 = Error.localizedDescription.getter();
    v27 = v12;
    v28 = v11;
    v29 = v4;
    v30 = sub_1000105AC(v25, v26, &v142);
    v20 = v122;

    *(v23 + 4) = v30;
    v4 = v29;
    v11 = v28;
    v12 = v27;
    _os_log_impl(&_mh_execute_header, v21, v22, "Handling error=%{public}s", v23, 0xCu);
    sub_10000959C(v121);
    v3 = v123;
  }

  v31 = *(v12 + 1);
  v31(v17, v11);
  *&v138 = v20;
  swift_errorRetain();
  sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
  v32 = swift_dynamicCast();
  v33 = v137;
  if (!v32)
  {
    v134(v136, v133, v11);
    swift_errorRetain();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138543362;
      swift_errorRetain();
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v46 + 4) = v48;
      *v47 = v48;
      _os_log_impl(&_mh_execute_header, v44, v45, "Not handled error=%{public}@", v46, 0xCu);
      sub_1000095E8(v47, &unk_101183D70, &unk_100EC6540);
    }

    v31(v136, v11);
    return;
  }

  v34 = v142;
  v35 = v143;
  if (!v143)
  {
    goto LABEL_41;
  }

  if (v143 == 1)
  {
    sub_10045262C(v142, *(&v142 + 1), 1u);
    swift_errorRetain();
    v49 = swift_dynamicCast();
    v50 = *(v4 + 7);
    if ((v49 & 1) == 0)
    {
      v50(v33, 1, 1, v3);
      sub_1000095E8(v33, &qword_1011906A8, &qword_100ECD330);
      v134(v129, v133, v11);
      swift_errorRetain();
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.error.getter();
      sub_100452604(v34, *(&v34 + 1), 1u);
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        *v66 = 138543362;
        swift_errorRetain();
        v68 = _swift_stdlib_bridgeErrorToNSError();
        *(v66 + 4) = v68;
        *v67 = v68;
        _os_log_impl(&_mh_execute_header, v64, v65, "Not handled MusicKit error=%{public}@", v66, 0xCu);
        sub_1000095E8(v67, &unk_101183D70, &unk_100EC6540);
      }

      v31(v129, v11);
      sub_100450988();
      sub_100452604(v34, *(&v34 + 1), 1u);
      v70 = *(&v34 + 1);
      v69 = v34;
      v35 = 1;
      goto LABEL_42;
    }

    v124 = v12;
    v136 = *(&v34 + 1);
    v129 = v34;
    v50(v33, 0, 1, v3);
    v51 = v132;
    (*(v4 + 4))(v132, v33, v3);
    v52 = v133;
    v133 = v11;
    v134(v130, v52, v11);
    v53 = *(v4 + 2);
    v54 = v125;
    v53(v125, v51, v3);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v135 = v4;
      v58 = v57;
      v134 = swift_slowAlloc();
      v59.n128_u64[0] = 138543362;
      *v58 = 138543362;
      sub_100452654(v59);
      swift_allocError();
      v60 = v3;
      v53(v61, v54, v3);
      v62 = _swift_stdlib_bridgeErrorToNSError();
      v137 = *(v135 + 1);
      v137(v54, v60);
      *(v58 + 4) = v62;
      v63 = v134;
      *v134 = v62;
      v3 = v60;
      _os_log_impl(&_mh_execute_header, v55, v56, "Getting MusicKit error=%{public}@", v58, 0xCu);
      sub_1000095E8(v63, &unk_101183D70, &unk_100EC6540);

      v4 = v135;
    }

    else
    {

      v137 = *(v4 + 1);
      v137(v54, v3);
    }

    v31(v130, v133);
    v71 = v126;
    v53(v126, v132, v3);
    v72 = (*(v4 + 11))(v71, v3);
    if (v72 == enum case for MusicCollaborativePlaylist.Error.expiredLink(_:))
    {
      v73 = v3;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v74 = String._bridgeToObjectiveC()();

      v75 = String._bridgeToObjectiveC()();

      v76 = [objc_opt_self() alertControllerWithTitle:v74 message:v75 preferredStyle:1];

      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v77 = String._bridgeToObjectiveC()();

      v78 = [objc_opt_self() actionWithTitle:v77 style:1 handler:0];

      [v76 addAction:v78];
      v79 = *(v131 + 16);
      v80 = v136;
      if (v79)
      {
        v81 = *(v79 + 32);
        if (v81 >= 0)
        {
          v82 = v81;
        }

        else
        {
          v82 = (v81 & 0x7FFFFFFFFFFFFFFFLL);
        }

        v138 = 0u;
        v139 = 0u;
        v140 = 0;
        v141 = xmmword_100EBCEF0;
        v83 = (v81 & 0x7FFFFFFFFFFFFFFFLL);
        PresentationSource.init(viewController:position:)(v82, &v138, &v142);
        PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v76, 1, 1, 0, 0);

        v84 = v129;
        sub_100452604(v129, v80, 1u);
        v85 = v84;
        v86 = v80;
LABEL_50:
        sub_100452604(v85, v86, 1u);
        sub_10012BA6C(&v142);
LABEL_63:
        (v137)(v132, v73, v98);
        return;
      }

      v110 = v129;
      sub_100452604(v129, v136, 1u);

      v111 = v110;
      v112 = v80;
    }

    else
    {
      v87 = v136;
      if (v72 != enum case for MusicCollaborativePlaylist.Error.maximumCollaboratorsReached(_:) && v72 != enum case for MusicCollaborativePlaylist.Error.maximumPendingCollaboratorsReached(_:))
      {
        if (v72 == enum case for MusicCollaborativePlaylist.Error.underageUser(_:))
        {
          sub_1004525B0();
          v114 = swift_allocError();
          *v115 = 0;
          *(v115 + 8) = 0;
          *(v115 + 16) = 3;
          sub_10044F000(v114);
          v116 = v129;
          sub_100452604(v129, v87, 1u);
          v117 = sub_100452604(v116, v87, 1u);
          (v137)(v132, v3, v117);
        }

        else
        {
          sub_100450988();
          v118 = v129;
          sub_100452604(v129, v87, 1u);
          v119 = sub_100452604(v118, v87, 1u);
          v120 = v137;
          (v137)(v132, v3, v119);
          v120(v71, v3);
        }

        return;
      }

      v73 = v3;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v88 = String._bridgeToObjectiveC()();

      v89 = String._bridgeToObjectiveC()();

      v90 = [objc_opt_self() alertControllerWithTitle:v88 message:v89 preferredStyle:1];

      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v91 = String._bridgeToObjectiveC()();

      v92 = [objc_opt_self() actionWithTitle:v91 style:1 handler:0];

      [v90 addAction:v92];
      v93 = *(v131 + 16);
      if (v93)
      {
        v94 = *(v93 + 32);
        if (v94 >= 0)
        {
          v95 = v94;
        }

        else
        {
          v95 = (v94 & 0x7FFFFFFFFFFFFFFFLL);
        }

        v138 = 0u;
        v139 = 0u;
        v140 = 0;
        v141 = xmmword_100EBCEF0;
        v96 = (v94 & 0x7FFFFFFFFFFFFFFFLL);
        PresentationSource.init(viewController:position:)(v95, &v138, &v142);
        PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v90, 1, 1, 0, 0);

        v97 = v129;
        sub_100452604(v129, v87, 1u);
        v85 = v97;
        v86 = v87;
        goto LABEL_50;
      }

      v113 = v129;
      sub_100452604(v129, v87, 1u);

      v111 = v113;
      v112 = v87;
    }

    v98.n128_f64[0] = sub_100452604(v111, v112, 1u);
    goto LABEL_63;
  }

  if (v143 != 3)
  {
    goto LABEL_41;
  }

  if (v142 <= 3)
  {
    if (__PAIR128__((v142 != 0) + *(&v142 + 1) - 1, v142 - 1) < 2)
    {
      return;
    }

    if (v142 == 0)
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v99 = String._bridgeToObjectiveC()();

      v100 = String._bridgeToObjectiveC()();

      v101 = [objc_opt_self() alertControllerWithTitle:v99 message:v100 preferredStyle:1];

      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v102 = String._bridgeToObjectiveC()();

      v103 = [objc_opt_self() actionWithTitle:v102 style:1 handler:0];
      goto LABEL_53;
    }

    if (!(v142 ^ 3 | *(&v142 + 1)))
    {
      v144 = 0;
      v142 = 0u;
      v143 = 0u;
      v145 = -3;
      static SubscriptionUpsellPresenter.present(for:)(&v142);
      sub_100309980(&v142);
      return;
    }

LABEL_41:
    v70 = *(&v142 + 1);
    v69 = v142;
LABEL_42:
    sub_100452604(v69, v70, v35);
    return;
  }

  if (v142 <= 6)
  {
    if (__PAIR128__((v142 >= 4) + *(&v142 + 1) - 1, v142 - 4) < 2)
    {
      return;
    }

    if (!(v142 ^ 6 | *(&v142 + 1)))
    {
      v36 = *(v131 + 16);
      if (v36)
      {
        v37 = *(v36 + 32);
        if (v37 >= 0)
        {
          v38 = v37;
        }

        else
        {
          v38 = (v37 & 0x7FFFFFFFFFFFFFFFLL);
        }

        memset(v146, 0, sizeof(v146));
        v147 = 0;
        v148 = xmmword_100EBCEF0;
        v39 = (v37 & 0x7FFFFFFFFFFFFFFFLL);
        PresentationSource.init(viewController:position:)(v38, v146, &v142);
        v40 = type metadata accessor for TaskPriority();
        v41 = v124;
        (*(*(v40 - 8) + 56))(v124, 1, 1, v40);
        sub_10012B7A8(&v142, &v138);
        type metadata accessor for MainActor();
        v42 = static MainActor.shared.getter();
        v43 = swift_allocObject();
        *(v43 + 16) = v42;
        *(v43 + 24) = &protocol witness table for MainActor;
        sub_10012B828(&v138, v43 + 32);
        sub_1001F5D9C(0, 0, v41, &unk_100ECD340, v43);

LABEL_58:
        sub_10012BA6C(&v142);
        return;
      }

      return;
    }

    goto LABEL_41;
  }

  if (v142 ^ 7 | *(&v142 + 1))
  {
    if (!(v142 ^ 9 | *(&v142 + 1)))
    {
      static Collaboration.Error.tapToRadarAlert()();
      return;
    }

    goto LABEL_41;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v104 = String._bridgeToObjectiveC()();

  v101 = [objc_opt_self() alertControllerWithTitle:0 message:v104 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v102 = String._bridgeToObjectiveC()();

  v103 = [objc_opt_self() actionWithTitle:v102 style:1 handler:0];
LABEL_53:
  v105 = v103;

  [v101 addAction:v105];
  v106 = *(v131 + 16);
  if (v106)
  {
    v107 = *(v106 + 32);
    if (v107 >= 0)
    {
      v108 = v107;
    }

    else
    {
      v108 = (v107 & 0x7FFFFFFFFFFFFFFFLL);
    }

    v138 = 0u;
    v139 = 0u;
    v140 = 0;
    v141 = xmmword_100EBCEF0;
    v109 = (v107 & 0x7FFFFFFFFFFFFFFFLL);
    PresentationSource.init(viewController:position:)(v108, &v138, &v142);
    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v101, 1, 1, 0, 0);

    goto LABEL_58;
  }
}

uint64_t sub_10045071C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = swift_task_alloc();
  v4[5] = v6;
  *v6 = v4;
  v6[1] = sub_1004507D8;

  return static CloudLibrary.presentCloudLibraryEnabler(context:presentationSource:style:)(3, a4, 0);
}

uint64_t sub_1004507D8(char a1)
{
  *(*v1 + 48) = a1;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10045091C, v3, v2);
}

uint64_t sub_10045091C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);

  *v2 = v1;
  v3 = *(v0 + 8);

  return v3();
}

void sub_100450988()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v1 = String._bridgeToObjectiveC()();

  v2 = String._bridgeToObjectiveC()();

  v3 = [objc_opt_self() alertControllerWithTitle:v1 message:v2 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v4 = String._bridgeToObjectiveC()();

  v5 = [objc_opt_self() actionWithTitle:v4 style:1 handler:0];

  [v3 addAction:v5];
  v6 = *(v0 + 16);
  if (v6)
  {
    v7 = *(v6 + 32);
    if (v7 >= 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    }

    memset(v11, 0, sizeof(v11));
    v12 = 0;
    v13 = xmmword_100EBCEF0;
    v9 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    PresentationSource.init(viewController:position:)(v8, v11, v10);
    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v3, 1, 1, 0, 0);

    sub_10012BA6C(v10);
  }

  else
  {
  }
}

uint64_t sub_100450C7C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100450CD8(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v49 = type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin();
  v50 = &v47[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Collaboration.Flow.View(0);
  __chkstk_darwin();
  v51 = &v47[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v53 = &v47[-v6];
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  __chkstk_darwin();
  v52 = &v47[-v9];
  __chkstk_darwin();
  v11 = &v47[-v10];
  v12 = type metadata accessor for Playlist();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v47[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (Playlist.hasActiveCollaboration.getter())
  {
    (*(v13 + 16))(v15, a1, v12);
    type metadata accessor for Collaboration.Management.Model(0);
    swift_allocObject();

    Collaboration.Management.Model.init(manager:playlist:)(v16, v15);
    v17 = objc_allocWithZone(type metadata accessor for Collaboration.Management.ViewController(0));

    v19 = Collaboration.Management.ViewController.init(model:)(v18);
    [v19 setModalPresentationStyle:2];
    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v19, 0, 1, 0, 0);
    v20 = Logger.collaboration.unsafeMutableAddressor();
    (*(v8 + 16))(v11, v20, v7);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Management view presented", v23, 2u);
    }

    else
    {
    }

    return (*(v8 + 8))(v11, v7);
  }

  else
  {
    Collaboration.Manager.canCollaborate(for:)();
    v25 = Collaboration.Manager.participantProfile.getter();
    v26 = v2;
    if (v25)
    {
      v27 = v25;
      v28 = [v25 collaborationAllowed];

      v29 = v28 ^ 1;
    }

    else
    {
      v29 = 1;
    }

    v48 = v29;
    v30 = v54;
    v31 = v50;
    swift_storeEnumTagMultiPayload();
    (*(v13 + 16))(v15, a1, v12);
    sub_10012B7A8(v30, v55);
    v32 = swift_allocObject();
    sub_10012B828(v55, v32 + 16);
    *(v32 + 112) = v26;
    swift_retain_n();
    v33 = v53;
    Collaboration.Flow.View.init(_:playlist:manager:showProfileCreation:profileUpdateHandler:completion:)(v31, v15, v26, v48, &unk_100ECD320, 0, sub_100452474, v32, v53);
    v34 = v51;
    sub_100452480(v33, v51);
    v35 = objc_allocWithZone(sub_10010FC20(&qword_101190698, &unk_100EE4E60));
    v39 = Card.ViewController.init(content:)(v34, v36, v37, v38);
    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v39, 0, 1, 0, 0);
    v40 = Logger.collaboration.unsafeMutableAddressor();
    v41 = v8;
    v42 = *(v8 + 16);
    v43 = v52;
    v42(v52, v40, v7);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Initialization sheet presented", v46, 2u);
    }

    (*(v41 + 8))(v43, v7);
    return sub_1004524E4(v33);
  }
}

uint64_t sub_1004513D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a3;
  v5 = type metadata accessor for Logger();
  v44 = *(v5 - 8);
  v45 = v5;
  __chkstk_darwin();
  v43 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011906A0, &qword_100EE4EE0);
  __chkstk_darwin();
  v8 = v42 - v7;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v10 = v42 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v47 = v11;
  v48 = v12;
  __chkstk_darwin();
  v46 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Playlist();
  v50 = *(v14 - 8);
  __chkstk_darwin();
  v16 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v18 = v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = v42 - v19;
  sub_10010FC20(&qword_1011A4820, &qword_100ECD328);
  __chkstk_darwin();
  v22 = (v42 - v21);
  v42[1] = a2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }

  sub_1000089F8(a1, v22, &qword_1011A4820, &qword_100ECD328);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    Collaboration.Manager.handleError(_:)(*v22);
  }

  sub_100452540(v22, v20);
  sub_1000089F8(v20, v18, &unk_1011814D0, &qword_100EC12A0);
  v26 = v50;
  if ((*(v50 + 48))(v18, 1, v14) == 1)
  {
    sub_1000095E8(v20, &unk_1011814D0, &qword_100EC12A0);
    v27 = v18;
    v28 = &unk_1011814D0;
    v29 = &qword_100EC12A0;
  }

  else
  {
    (*(v26 + 32))(v16, v18, v14);
    Playlist.collaboration.getter();
    v30 = type metadata accessor for Playlist.Collaboration();
    v31 = *(v30 - 8);
    if ((*(v31 + 48))(v8, 1, v30) == 1)
    {
      (*(v26 + 8))(v16, v14);
      sub_1000095E8(v20, &unk_1011814D0, &qword_100EC12A0);
      sub_1000095E8(v8, &qword_1011906A0, &qword_100EE4EE0);
      (*(v48 + 56))(v10, 1, 1, v47);
    }

    else
    {
      Playlist.Collaboration.invitationURL.getter();
      (*(v31 + 8))(v8, v30);
      v33 = v47;
      v32 = v48;
      if ((*(v48 + 48))(v10, 1, v47) != 1)
      {
        (*(v32 + 32))(v46, v10, v33);
        v34 = Collaboration.Manager.activityViewController(for:url:)();
        PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v34, 1, 1, 0, 0);
        v35 = Logger.collaboration.unsafeMutableAddressor();
        v37 = v43;
        v36 = v44;
        v38 = v45;
        (*(v44 + 16))(v43, v35, v45);
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&_mh_execute_header, v39, v40, "ShareSheet invite presented", v41, 2u);

          (*(v36 + 8))(v37, v38);
          (*(v48 + 8))(v46, v47);
        }

        else
        {

          (*(v36 + 8))(v37, v38);
          (*(v48 + 8))(v46, v33);
        }

        (*(v50 + 8))(v16, v14);
        v28 = &unk_1011814D0;
        v29 = &qword_100EC12A0;
        v27 = v20;
        return sub_1000095E8(v27, v28, v29);
      }

      (*(v26 + 8))(v16, v14);
      sub_1000095E8(v20, &unk_1011814D0, &qword_100EC12A0);
    }

    v28 = &qword_101183A20;
    v29 = &unk_100EBCF80;
    v27 = v10;
  }

  return sub_1000095E8(v27, v28, v29);
}

uint64_t sub_100451AF4(uint64_t a1)
{
  v1[8] = a1;
  type metadata accessor for MainActor();
  v1[9] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[10] = v3;
  v1[11] = v2;

  return _swift_task_switch(sub_100451B8C, v3, v2);
}

uint64_t sub_100451B8C()
{
  if ((*(**(v0 + 64) + 280))())
  {
    v1 = 0;
  }

  else
  {
    v2 = (*(**(v0 + 64) + 312))();
    if (v2 <= 1)
    {
      v1 = 1;
    }

    else
    {
      v1 = v2;
    }
  }

  *(v0 + 96) = v1;
  *(v0 + 16) = (*(**(v0 + 64) + 272))();
  *(v0 + 104) = v3;
  *(v0 + 24) = v3;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = v1;
  *(v0 + 56) = 513;
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *v4 = v0;
  v4[1] = sub_100451D04;

  return sub_10040CEDC(v0 + 16, 1);
}

uint64_t sub_100451D04()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_100451EC0;
  }

  else
  {
    v5 = sub_100451E40;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100451E40()
{
  v1 = *(v0 + 96);

  sub_10040DEF8(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100451EC0()
{
  v1 = v0[15];
  v2 = v0[12];

  sub_1004525B0();
  swift_allocError();
  *v3 = v1;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  swift_willThrow();

  sub_10040DEF8(v2);
  v4 = v0[1];

  return v4();
}

double sub_100452004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Playlist();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v11 = &v18[-v10];
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v7 + 16))(v9, a2, v6);
  sub_10012B7A8(a3, v18);
  type metadata accessor for MainActor();

  v13 = static MainActor.shared.getter();
  v14 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v15 = (v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 2) = v13;
  *(v16 + 3) = &protocol witness table for MainActor;
  *(v16 + 4) = a1;
  (*(v7 + 32))(&v16[v14], v9, v6);
  sub_10012B828(v18, &v16[v15]);
  sub_1001F4CB8(0, 0, v11, &unk_100ECD318, v16);

  return result;
}

uint64_t sub_100452234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004522D0, v8, v7);
}

uint64_t sub_1004522D0()
{
  v1 = v0[4];
  v2 = v0[3];

  sub_100450CD8(v2, v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_100452348(uint64_t a1)
{
  v4 = *(type metadata accessor for Playlist() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100008F30;

  return sub_100452234(a1, v7, v8, v9, v1 + v5, v1 + v6);
}

uint64_t sub_100452480(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Collaboration.Flow.View(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004524E4(uint64_t a1)
{
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100452540(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1004525B0()
{
  result = qword_1011A4800;
  if (!qword_1011A4800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A4800);
  }

  return result;
}

double sub_100452604(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
  }

  else if (a3 <= 1u)
  {
  }

  return result;
}

double sub_10045262C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
  }

  else if (a3 <= 1u)
  {
    swift_errorRetain();
  }

  return result;
}

unint64_t sub_100452654(__n128 a1)
{
  result = qword_1011906B0;
  if (!qword_1011906B0)
  {
    type metadata accessor for MusicCollaborativePlaylist.Error();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011906B0);
  }

  return result;
}

uint64_t sub_1004526AC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002F3F4;

  return sub_10045071C(a1, v4, v5, v1 + 32);
}

uint64_t sub_10045275C()
{
  swift_getKeyPath();
  v3 = v0;
  sub_1004530DC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);
  sub_100030444(v1, *(v3 + 24));
  return v1;
}

uint64_t sub_1004527E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  sub_100030444(a2, a3);
  return sub_100020438(v3, v4);
}

double sub_10045282C()
{
  swift_getKeyPath();
  sub_1004530DC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return result;
}

double sub_1004528A0(uint64_t a1)
{
  if (sub_100190304(*(v1 + 32), a1))
  {
    *(v1 + 32) = a1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_1004530DC();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

__n128 sub_1004529B0@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1004530DC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v1 + 56);
  *a1 = *(v1 + 40);
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v1 + 72);
  result = *(v1 + 81);
  *(a1 + 41) = result;
  return result;
}

double sub_100452A3C(__int128 *a1)
{
  v3 = *(v1 + 64);
  v4 = *(a1 + 3);
  v5 = v4 & 0xFF0000;
  if ((v3 & 0xFF0000) == 0x20000)
  {
    if (v5 != 0x20000)
    {
LABEL_7:
      swift_getKeyPath();
      __chkstk_darwin();
      sub_1004530DC();
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      return *&v9;
    }
  }

  else
  {
    if (v5 == 0x20000)
    {
      goto LABEL_7;
    }

    v15 = *a1;
    v6 = *(a1 + 2);
    v18[0] = a1[2];
    *(v18 + 9) = *(a1 + 41);
    v16 = v6;
    v17 = v4;
    v11 = *(v1 + 40);
    v7 = *(v1 + 56);
    v14[0] = *(v1 + 72);
    *(v14 + 9) = *(v1 + 81);
    v12 = v7;
    v13 = v3;
    if ((static HI.Grid.Metrics.__derived_struct_equals(_:_:)(&v11, &v15) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v8 = a1[1];
  *(v1 + 40) = *a1;
  *(v1 + 56) = v8;
  *(v1 + 72) = a1[2];
  v9 = *(a1 + 41);
  *(v1 + 81) = v9;
  return *&v9;
}

uint64_t sub_100452BA0()
{
  sub_100020438(*(v0 + 16), *(v0 + 24));

  v1 = OBJC_IVAR____TtCV5Music12SearchHeader13Configuration___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t _s13ConfigurationCMa_1(uint64_t a1)
{
  result = qword_1011906E8;
  if (!qword_1011906E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100452CA0(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_100452D54(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v9 = v17 - v8;
  sub_100452FB8(a1, v17 - v8);
  v10 = type metadata accessor for Playlist();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100453028(v9);
LABEL_6:
    v13 = &off_10109AE90;
    goto LABEL_7;
  }

  v12 = Playlist.supportsSing.getter();
  (*(v11 + 8))(v9, v10);
  if (v12 == 2 || (v12 & 1) == 0)
  {
    goto LABEL_6;
  }

  v13 = &off_10109AE68;
LABEL_7:
  v14 = sub_10010E594(v13);
  _s13ConfigurationCMa_1(0);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 40) = 0;
  *(v15 + 48) = 0;
  *(v15 + 56) = 0;
  *(v15 + 64) = 0x20000;
  *(v15 + 80) = 0;
  *(v15 + 88) = 0;
  *(v15 + 72) = 0;
  *(v15 + 96) = 0;
  ObservationRegistrar.init()();
  *(v15 + 32) = v14;
  swift_getKeyPath();
  __chkstk_darwin();
  v17[-4] = v15;
  v17[-3] = a2;
  v17[-2] = a3;
  v17[1] = v15;
  sub_100030444(a2, a3);
  sub_1004530DC();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_100020438(a2, a3);

  sub_100452A3C(a4);
  sub_100453028(a1);
  return v15;
}

uint64_t sub_100452FB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100453028(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100453090()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  sub_100030444(v1, v3);
  return sub_100020438(v4, v5);
}

unint64_t sub_1004530DC()
{
  result = qword_101190850;
  if (!qword_101190850)
  {
    _s13ConfigurationCMa_1(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101190850);
  }

  return result;
}

__n128 sub_100453134()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = *v2;
  v4 = *(v2 + 16);
  v5 = *(v2 + 32);
  *(v1 + 81) = *(v2 + 41);
  *(v1 + 72) = v5;
  *(v1 + 56) = v4;
  *(v1 + 40) = result;
  return result;
}

void sub_100453158()
{
  *(*(v0 + 16) + 32) = *(v0 + 24);
}

void sub_100453194(unsigned __int8 a1)
{
  v2 = OBJC_IVAR____TtC5Music12BackdropView_gradientMaskType;
  if (v1[OBJC_IVAR____TtC5Music12BackdropView_gradientMaskType] == a1)
  {
    return;
  }

  v3 = objc_opt_self();
  v4 = [v3 blackColor];
  v5 = [v4 colorWithAlphaComponent:0.0];

  v6 = [v5 cgColor];
  v7 = v5;
  if (!v6)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = v6;
  v9 = [v3 blackColor];
  v10 = [v9 cgColor];
  v11 = v9;
  if (!v10)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v12 = v10;
  if (v1[v2])
  {
    if (v1[v2] == 1)
    {
      v13 = [objc_allocWithZone(CAGradientLayer) init];
      sub_10010FC20(&qword_101183990, &qword_100EBC750);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_100EBC6C0;
      v15 = objc_allocWithZone(CAMediaTimingFunction);
      LODWORD(v16) = 1045220557;
      LODWORD(v17) = 1061997773;
      LODWORD(v18) = 1.0;
      *(v14 + 32) = [v15 initWithControlPoints:0.0 :v16 :v18 :v17];
      sub_100009F78(0, &qword_1011908A0, CAMediaTimingFunction_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v13 setInterpolations:isa];

      v20 = *&v1[OBJC_IVAR____TtC5Music12BackdropView_gradientLayer];
      *&v1[OBJC_IVAR____TtC5Music12BackdropView_gradientLayer] = v13;
      v21 = v13;

      sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_100EBDC20;
      type metadata accessor for CGColor(0);
      *(v22 + 32) = v12;
      *(v22 + 88) = v23;
      *(v22 + 56) = v23;
      *(v22 + 64) = v8;
    }

    else
    {
      v25 = [objc_allocWithZone(CAGradientLayer) init];
      sub_10010FC20(&qword_101183990, &qword_100EBC750);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_100EBC6C0;
      v27 = objc_allocWithZone(CAMediaTimingFunction);
      LODWORD(v28) = 1045220557;
      LODWORD(v29) = 1061997773;
      LODWORD(v30) = 1.0;
      *(v26 + 32) = [v27 initWithControlPoints:0.0 :v28 :v30 :v29];
      sub_100009F78(0, &qword_1011908A0, CAMediaTimingFunction_ptr);
      v31 = Array._bridgeToObjectiveC()().super.isa;

      [v25 setInterpolations:v31];

      v32 = *&v1[OBJC_IVAR____TtC5Music12BackdropView_gradientLayer];
      *&v1[OBJC_IVAR____TtC5Music12BackdropView_gradientLayer] = v25;
      v21 = v25;

      sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_100EBDC20;
      type metadata accessor for CGColor(0);
      *(v33 + 32) = v8;
      *(v33 + 88) = v34;
      *(v33 + 56) = v34;
      *(v33 + 64) = v12;
    }

    v35 = v12;
    v36 = v8;
    v24 = Array._bridgeToObjectiveC()().super.isa;

    [v21 setColors:v24];
  }

  else
  {
    v24 = *&v1[OBJC_IVAR____TtC5Music12BackdropView_gradientLayer];
    *&v1[OBJC_IVAR____TtC5Music12BackdropView_gradientLayer] = 0;
  }

  v37 = [v1 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setMask:*&v1[OBJC_IVAR____TtC5Music12BackdropView_gradientLayer]];
}

id sub_1004535E4(int a1, id a2)
{
  v3 = [a2 traitCollection];
  sub_100050078();
  v4 = UITraitCollection.subscript.getter();

  v5 = &selRef_clearColor;
  if ((v4 & 1) == 0)
  {
    v6 = [a2 layer];
    objc_opt_self();
    v7 = [swift_dynamicCastObjCClassUnconditional() captureOnly];

    if (!v7)
    {
      v5 = &selRef_systemBackgroundColor;
    }
  }

  v8 = [objc_opt_self() *v5];

  return v8;
}

void sub_1004537C0(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for BackdropView();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v2 = *&v1[OBJC_IVAR____TtC5Music12BackdropView_gradientLayer];
  if (v2)
  {
    v3 = v2;
    [v1 bounds];
    [v3 setFrame:?];
  }

  v4 = *&v1[OBJC_IVAR____TtC5Music12BackdropView_overlayView];
  [v1 bounds];
  [v4 setFrame:?];
}

void sub_1004538E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Music12BackdropView_overlayView);
}

id sub_100453928(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BackdropView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1004539E0()
{
  result = qword_101190898;
  if (!qword_101190898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101190898);
  }

  return result;
}

char *sub_100453A34()
{
  v0[OBJC_IVAR____TtC5Music12BackdropView_gradientMaskType] = 0;
  *&v0[OBJC_IVAR____TtC5Music12BackdropView_gradientLayer] = 0;
  v1 = OBJC_IVAR____TtC5Music12BackdropView_overlayView;
  type metadata accessor for PassthroughView();
  *&v0[v1] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20.receiver = v0;
  v20.super_class = type metadata accessor for BackdropView();
  v2 = objc_msgSendSuper2(&v20, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v3 = OBJC_IVAR____TtC5Music12BackdropView_overlayView;
  v4 = *&v2[OBJC_IVAR____TtC5Music12BackdropView_overlayView];
  v5 = v2;
  [v5 addSubview:v4];
  v6 = [v5 traitCollection];

  v7 = [v6 userInterfaceIdiom];
  v8 = [v5 layer];
  objc_opt_self();
  v9 = swift_dynamicCastObjCClassUnconditional();
  if (v7 == 6)
  {
    v10 = [objc_opt_self() blackColor];
    v11 = [v10 CGColor];

    [v9 setBackgroundColor:v11];
  }

  else
  {
    v12 = String._bridgeToObjectiveC()();
    [v9 setGroupName:v12];

    v13 = *&v2[v3];
    v14 = swift_allocObject();
    *(v14 + 16) = v5;
    v15 = objc_allocWithZone(UIColor);
    v19[4] = sub_100453CEC;
    v19[5] = v14;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 1107296256;
    v19[2] = sub_10003640C;
    v19[3] = &unk_1010ACA98;
    v16 = _Block_copy(v19);
    v17 = v5;
    v8 = v13;
    v11 = [v15 initWithDynamicProvider:v16];
    _Block_release(v16);

    [v8 setBackgroundColor:v11];
  }

  return v5;
}

double sub_100453CF4(uint64_t a1, uint64_t a2, double result)
{
  v4 = (v3 + OBJC_IVAR____TtC5Music25NowPlayingAttributionView_displayName);
  v5 = *(v3 + OBJC_IVAR____TtC5Music25NowPlayingAttributionView_displayName);
  v6 = *(v3 + OBJC_IVAR____TtC5Music25NowPlayingAttributionView_displayName + 8);
  *v4 = a1;
  v4[1] = a2;
  if (a2)
  {
    if (v6)
    {
      v7 = v5 == a1 && v6 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_14;
      }
    }
  }

  else if (!v6)
  {
    return v11;
  }

  v8 = sub_1004541CC();
  if (v4[1])
  {

    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  [v8 setText:v9];

  v10 = sub_100454100();
  Artwork.View.invalidatePlaceholderView()();

LABEL_14:

  return v11;
}

id sub_100453DF0()
{
  v1 = OBJC_IVAR____TtC5Music25NowPlayingAttributionView____lazy_storage___backgroundView;
  v2 = *&v0[OBJC_IVAR____TtC5Music25NowPlayingAttributionView____lazy_storage___backgroundView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC5Music25NowPlayingAttributionView____lazy_storage___backgroundView];
  }

  else
  {
    v4 = sub_100453E54(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100453E54(void *a1)
{
  v2 = [objc_allocWithZone(UIView) init];
  v3 = UIView.forAutolayout.getter();

  v4 = objc_opt_self();
  v5 = [v4 whiteColor];
  v6 = [v5 colorWithAlphaComponent:0.1];

  [v3 setBackgroundColor:v6];
  v7 = [v3 layer];
  v8 = [a1 traitCollection];
  [v8 displayScale];
  v10 = v9;

  [v7 setBorderWidth:1.0 / v10];
  v11 = [v3 layer];
  v12 = [v4 whiteColor];
  v13 = [v12 colorWithAlphaComponent:0.04];

  v14 = [v13 CGColor];
  [v11 setBorderColor:v14];

  v15 = [v3 layer];
  [v15 setShadowOffset:{0.0, 2.0}];

  v16 = [v3 layer];
  v17 = [v4 blackColor];
  v18 = [v17 colorWithAlphaComponent:0.02];

  v19 = [v18 CGColor];
  [v16 setShadowColor:v19];

  v20 = [v3 layer];
  [v20 setShadowPathIsBounds:1];

  return v3;
}

char *sub_100454100()
{
  v1 = v0;
  type metadata accessor for Artwork(0);
  __chkstk_darwin();
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC5Music25NowPlayingAttributionView____lazy_storage___artworkView;
  v5 = *(v1 + OBJC_IVAR____TtC5Music25NowPlayingAttributionView____lazy_storage___artworkView);
  if (v5)
  {
    v6 = *(v1 + OBJC_IVAR____TtC5Music25NowPlayingAttributionView____lazy_storage___artworkView);
  }

  else
  {
    Artwork.init()(v3);
    v7 = objc_allocWithZone(type metadata accessor for Artwork.View(0));
    v8 = Artwork.View.init(configuration:)(v3);
    v9 = *(v1 + v4);
    *(v1 + v4) = v8;
    v6 = v8;

    v5 = 0;
  }

  v10 = v5;
  return v6;
}

id sub_1004541CC()
{
  v1 = OBJC_IVAR____TtC5Music25NowPlayingAttributionView____lazy_storage___displayNameLabel;
  v2 = *(v0 + OBJC_IVAR____TtC5Music25NowPlayingAttributionView____lazy_storage___displayNameLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music25NowPlayingAttributionView____lazy_storage___displayNameLabel);
  }

  else
  {
    v4 = sub_10045422C();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10045422C()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = UIView.forAutolayout.getter();

  sub_100009F78(0, &qword_101183A00, UIFont_ptr);
  v2 = static UIFont.preferredFont(forTextStyle:weight:)();
  [v1 setFont:v2];

  v3 = v1;
  LODWORD(v4) = 1148846080;
  [v3 setContentHuggingPriority:1 forAxis:v4];
  [v3 setAdjustsFontForContentSizeCategory:1];
  [v3 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];

  return v3;
}

char *sub_10045431C(double a1, double a2, double a3, double a4)
{
  type metadata accessor for Artwork(0);
  __chkstk_darwin();
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v4[OBJC_IVAR____TtC5Music25NowPlayingAttributionView_displayName];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v4[OBJC_IVAR____TtC5Music25NowPlayingAttributionView_artwork] = 0;
  v12 = OBJC_IVAR____TtC5Music25NowPlayingAttributionView_artworkCachingReference;
  type metadata accessor for Artwork.Caching.Reference();
  *&v4[v12] = swift_allocObject();
  *&v4[OBJC_IVAR____TtC5Music25NowPlayingAttributionView____lazy_storage___backgroundView] = 0;
  *&v4[OBJC_IVAR____TtC5Music25NowPlayingAttributionView____lazy_storage___artworkView] = 0;
  *&v4[OBJC_IVAR____TtC5Music25NowPlayingAttributionView____lazy_storage___displayNameLabel] = 0;
  v13 = type metadata accessor for NowPlayingAttributionView();
  v69.receiver = v4;
  v69.super_class = v13;
  v14 = objc_msgSendSuper2(&v69, "initWithFrame:", a1, a2, a3, a4);
  v15 = sub_100453DF0();
  [v14 addSubview:v15];

  v16 = sub_100454100();
  v17 = UIView.forAutolayout.getter();

  [v14 addSubview:v17];
  v18 = sub_1004541CC();
  [v14 addSubview:v18];

  v19 = OBJC_IVAR____TtC5Music25NowPlayingAttributionView____lazy_storage___artworkView;
  v20 = *&v14[OBJC_IVAR____TtC5Music25NowPlayingAttributionView____lazy_storage___artworkView];
  v68 = v14;
  v21 = v20;
  static Artwork.with(_:)(sub_1001D1CCC, v10);
  Artwork.View.typedConfiguration.setter(v10);

  v67 = objc_opt_self();
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100ECD4F0;
  v23 = OBJC_IVAR____TtC5Music25NowPlayingAttributionView____lazy_storage___backgroundView;
  v24 = [*&v14[OBJC_IVAR____TtC5Music25NowPlayingAttributionView____lazy_storage___backgroundView] topAnchor];
  v25 = [v14 topAnchor];

  v26 = [v24 constraintEqualToAnchor:v25];
  *(v22 + 32) = v26;
  v27 = [*&v14[v23] bottomAnchor];
  v28 = [v14 bottomAnchor];

  v29 = [v27 constraintEqualToAnchor:v28];
  *(v22 + 40) = v29;
  v30 = [*&v14[v23] trailingAnchor];
  v31 = [v14 trailingAnchor];

  v32 = [v30 constraintEqualToAnchor:v31];
  *(v22 + 48) = v32;
  v33 = [*&v14[v23] leadingAnchor];
  v34 = [v14 leadingAnchor];

  v35 = [v33 constraintEqualToAnchor:v34];
  *(v22 + 56) = v35;
  v36 = [*&v14[v19] leadingAnchor];
  v37 = [v14 leadingAnchor];

  v38 = [v36 constraintEqualToAnchor:v37 constant:4.0];
  *(v22 + 64) = v38;
  v39 = [*&v14[v19] topAnchor];
  v40 = [v14 topAnchor];

  v41 = [v39 constraintEqualToAnchor:v40 constant:4.0];
  *(v22 + 72) = v41;
  v42 = [*&v14[v19] bottomAnchor];
  v43 = [v14 bottomAnchor];

  v44 = [v42 constraintEqualToAnchor:v43 constant:-4.0];
  *(v22 + 80) = v44;
  v45 = [*&v14[v19] heightAnchor];
  v46 = [*&v14[v19] widthAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];

  *(v22 + 88) = v47;
  v48 = OBJC_IVAR____TtC5Music25NowPlayingAttributionView____lazy_storage___displayNameLabel;
  v49 = [*&v14[OBJC_IVAR____TtC5Music25NowPlayingAttributionView____lazy_storage___displayNameLabel] centerYAnchor];
  v50 = [v14 centerYAnchor];

  v51 = [v49 constraintEqualToAnchor:v50];
  *(v22 + 96) = v51;
  v52 = [*&v14[v48] topAnchor];
  v53 = [v14 topAnchor];

  v54 = [v52 constraintEqualToAnchor:v53 constant:2.0];
  *(v22 + 104) = v54;
  v55 = [*&v14[v48] bottomAnchor];
  v56 = [v14 bottomAnchor];

  v57 = [v55 constraintEqualToAnchor:v56 constant:-2.0];
  *(v22 + 112) = v57;
  v58 = [*&v14[v48] leadingAnchor];
  v59 = [*&v14[v19] trailingAnchor];
  v60 = [v58 constraintEqualToAnchor:v59 constant:5.0];

  *(v22 + 120) = v60;
  v61 = [*&v14[v48] trailingAnchor];
  v62 = [v14 trailingAnchor];

  v63 = [v61 constraintEqualToAnchor:v62 constant:-10.0];
  *(v22 + 128) = v63;
  sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v67 activateConstraints:isa];

  return v14;
}

void sub_100454B2C()
{
  v1 = type metadata accessor for UIView.Corner.Radius();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&qword_101183A90, &unk_100EBE340);
  __chkstk_darwin();
  v6 = &v11 - v5;
  v7 = type metadata accessor for NowPlayingAttributionView();
  v11.receiver = v0;
  v11.super_class = v7;
  objc_msgSendSuper2(&v11, "layoutSubviews");
  v8 = sub_100453DF0();
  [v0 frame];
  *v4 = v9 * 0.5;
  *(v4 + 8) = 1;
  (*(v2 + 104))(v4, enum case for UIView.Corner.Radius.value(_:), v1);
  static CACornerMask.all.getter();
  UIView.Corner.init(radius:mask:)();
  v10 = type metadata accessor for UIView.Corner();
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  UIView.corner.setter();
}

void sub_100454D38(void **a1, char *a2)
{
  sub_10010FC20(&qword_101183A90, &unk_100EBE340);
  __chkstk_darwin();
  v5 = &v24[-1] - v4;
  v6 = *&a2[OBJC_IVAR____TtC5Music25NowPlayingAttributionView_artwork];
  v7 = v6;
  v8 = Artwork.Content.init(catalog:background:)(v6, 0);
  v10 = v9;
  sub_10004D23C(*a1, a1[1]);
  *a1 = v8;
  a1[1] = v10;
  static UIView.Corner.rounded.getter();
  v11 = type metadata accessor for UIView.Corner();
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  v12 = type metadata accessor for Artwork(0);
  v13 = (a1 + *(v12 + 28));
  v14 = type metadata accessor for Artwork.Decoration(0);
  sub_10006B010(v5, v13 + *(v14 + 20), &qword_101183A90, &unk_100EBE340);
  [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.16];
  UIView.Border.init(thickness:color:)();
  v16 = v15;
  v18 = v17;
  v20 = (v19 & 1);

  *v13 = v16;
  v13[1] = v20;
  v13[2] = v18;

  Artwork.Caching.init(reference:)(v24);
  sub_10006B010(v24, (a1 + 2), &qword_101190910, &qword_100ECD530);
  v21 = (a1 + *(v12 + 36));
  v22 = a2;
  swift_unknownObjectRelease();
  *v21 = a2;
  v21[1] = &off_1010ACAC0;
}

id sub_100454F24(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NowPlayingAttributionView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10045500C(void *a1)
{
  if (a1 && (objc_opt_self(), (v3 = swift_dynamicCastObjCClass()) != 0))
  {
    v4 = v3;
    v5 = a1;
  }

  else
  {
    v6 = [objc_opt_self() defaultSettings];
    v4 = [objc_allocWithZone(CNAvatarView) initWithSettings:v6];
  }

  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100EBC6C0;
  if (*(v1 + OBJC_IVAR____TtC5Music25NowPlayingAttributionView_displayName + 8))
  {

    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_opt_self() contactWithDisplayName:v8 handleStrings:0];

  *(v7 + 32) = v9;
  sub_100009F78(0, &qword_101190908, CNContact_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 setContacts:isa];

  return v4;
}

void sub_1004551A0()
{
  v1 = (v0 + OBJC_IVAR____TtC5Music25NowPlayingAttributionView_displayName);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC5Music25NowPlayingAttributionView_artwork) = 0;
  v2 = OBJC_IVAR____TtC5Music25NowPlayingAttributionView_artworkCachingReference;
  type metadata accessor for Artwork.Caching.Reference();
  *(v0 + v2) = swift_allocObject();
  *(v0 + OBJC_IVAR____TtC5Music25NowPlayingAttributionView____lazy_storage___backgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC5Music25NowPlayingAttributionView____lazy_storage___artworkView) = 0;
  *(v0 + OBJC_IVAR____TtC5Music25NowPlayingAttributionView____lazy_storage___displayNameLabel) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100455260(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1004552A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100455300@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10000954C(a1, a1[3]);
  result = dispatch thunk of LibraryMusicMovieFilter.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_100455348(char *a1@<X0>, char *a2@<X8>)
{
  v142 = a1;
  v138 = a2;
  v132 = type metadata accessor for Logger();
  v104 = *(v132 - 8);
  __chkstk_darwin();
  v105 = &v99 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for UploadedVideo();
  v102 = *(v103 - 8);
  __chkstk_darwin();
  v100 = &v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v101 = &v99 - v4;
  v125 = sub_10010FC20(&qword_101180370, &qword_100EBA5E0);
  v124 = *(v125 - 8);
  __chkstk_darwin();
  v121 = &v99 - v5;
  v123 = type metadata accessor for MusicMovie();
  v122 = *(v123 - 8);
  __chkstk_darwin();
  v120 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_10010FC20(&qword_10118CEE8, &qword_100EC8B10);
  v115 = *(v116 - 8);
  __chkstk_darwin();
  v112 = &v99 - v7;
  v114 = type metadata accessor for MusicVideo();
  v113 = *(v114 - 8);
  __chkstk_darwin();
  v111 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v107 = &v99 - v9;
  v109 = sub_10010FC20(&qword_10118A3B0, &qword_100EE4B40);
  v108 = *(v109 - 8);
  __chkstk_darwin();
  v127 = &v99 - v10;
  v118 = type metadata accessor for Playlist();
  v110 = *(v118 - 8);
  __chkstk_darwin();
  v117 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10010FC20(&qword_101188E88, &unk_100ECBD70);
  v129 = *(v12 - 8);
  __chkstk_darwin();
  v14 = &v99 - v13;
  v128 = type metadata accessor for Album();
  v140 = *(v128 - 8);
  __chkstk_darwin();
  v16 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for RecentlyAddedMusicItem();
  v18 = *(v17 - 8);
  __chkstk_darwin();
  v131 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v126 = &v99 - v20;
  __chkstk_darwin();
  v99 = &v99 - v21;
  __chkstk_darwin();
  v23 = &v99 - v22;
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v25 = &v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v119 = &v99 - v26;
  __chkstk_darwin();
  v28 = &v99 - v27;
  __chkstk_darwin();
  v106 = &v99 - v29;
  __chkstk_darwin();
  v31 = &v99 - v30;
  __chkstk_darwin();
  v33 = &v99 - v32;
  v34 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v35 = *(v34 - 8);
  v36 = *(v35 + 56);
  v139 = v33;
  v37 = v33;
  v38 = v18;
  v137 = v34;
  v136 = v36;
  v135 = v35 + 56;
  (v36)(v37, 1, 1);
  v39 = *(v18 + 16);
  v134 = v18 + 16;
  v133 = v39;
  v39(v23, v142, v17);
  v40 = (*(v18 + 88))(v23, v17);
  v130 = v18;
  if (v40 == enum case for RecentlyAddedMusicItem.album(_:))
  {
    (*(v18 + 96))(v23, v17);
    v41 = v23;
    v42 = v128;
    (*(v140 + 32))(v16, v41, v128);
    type metadata accessor for Track();
    MusicLibrarySectionedRequest.init()();

    MusicLibrarySectionedRequest.library.setter();
    swift_getKeyPath();
    LOBYTE(v146[0]) = 1;
    MusicLibrarySectionedRequest<>.includeSections<A>(matching:equalTo:)();

    swift_getKeyPath();
    MusicLibrarySectionedRequest.filterItems<A>(matching:contains:)();

    swift_getKeyPath();
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

    swift_getKeyPath();
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

    swift_getKeyPath();
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

    *(&v147 + 1) = v12;
    *&v148 = sub_100457744(&qword_101188E90, &qword_101188E88, &unk_100ECBD70);
    v43 = sub_10001C8B8(v146);
    v44 = v129;
    (*(v129 + 16))(v43, v14, v12);
    v145 = 0;
    v144 = 0u;
    v143 = 0u;
    MusicPlaybackIntentDescriptor.init(request:startingAt:)();
    (*(v44 + 8))(v14, v12);
    (*(v140 + 8))(v16, v42);
LABEL_7:
    v73 = v139;
    sub_1000095E8(v139, &unk_10118CDB0, &unk_100EC0360);
    goto LABEL_16;
  }

  if (v40 == enum case for RecentlyAddedMusicItem.musicMovie(_:))
  {
    (*(v18 + 96))(v23, v17);
    v45 = v122;
    v46 = v120;
    v47 = v23;
    v48 = v123;
    (*(v122 + 32))(v120, v47, v123);
    type metadata accessor for TitledSection();
    sub_10003DB40(&qword_1011800D8, &type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
    v49 = v121;
    MusicLibrarySectionedRequest.init()();

    v50 = v125;
    MusicLibrarySectionedRequest.library.setter();
    swift_getKeyPath();
    v146[0] = MusicMovie.id.getter();
    v146[1] = v51;
    MusicLibrarySectionedRequest.filterItems<A>(matching:equalTo:)();

    *(&v147 + 1) = v50;
    *&v148 = sub_100457744(&qword_1011803D8, &qword_101180370, &qword_100EBA5E0);
    v52 = sub_10001C8B8(v146);
    v53 = v124;
    (*(v124 + 16))(v52, v49, v50);
    v145 = 0;
    v144 = 0u;
    v143 = 0u;
    v54 = v119;
    MusicPlaybackIntentDescriptor.init(request:startingAt:)();
    (*(v53 + 8))(v49, v50);
    (*(v45 + 8))(v46, v48);
    v73 = v139;
    sub_1000095E8(v139, &unk_10118CDB0, &unk_100EC0360);
    v31 = v54;
LABEL_16:
    v136(v31, 0, 1, v137);
    sub_1003FAC48(v31, v73);
    sub_1003FAC48(v73, v138);
    return;
  }

  if (v40 == enum case for RecentlyAddedMusicItem.musicVideo(_:))
  {
    (*(v18 + 96))(v23, v17);
    v55 = v113;
    v56 = v111;
    v57 = v23;
    v58 = v114;
    (*(v113 + 32))(v111, v57, v114);
    type metadata accessor for TitledSection();
    v59 = v112;
    MusicLibrarySectionedRequest.init()();

    v60 = v116;
    MusicLibrarySectionedRequest.library.setter();
    MusicLibrarySectionedRequest<>.filterItems(equalTo:)();
    *(&v147 + 1) = v60;
    *&v148 = sub_100457744(&qword_101190A00, &qword_10118CEE8, &qword_100EC8B10);
    v61 = sub_10001C8B8(v146);
    v62 = v115;
    (*(v115 + 16))(v61, v59, v60);
    v145 = 0;
    v144 = 0u;
    v143 = 0u;
    MusicPlaybackIntentDescriptor.init(request:startingAt:)();
    (*(v62 + 8))(v59, v60);
    (*(v55 + 8))(v56, v58);
    v73 = v139;
    sub_1000095E8(v139, &unk_10118CDB0, &unk_100EC0360);
    v31 = v28;
    goto LABEL_16;
  }

  if (v40 == enum case for RecentlyAddedMusicItem.playlist(_:))
  {
    (*(v18 + 96))(v23, v17);
    (*(v110 + 32))(v117, v23, v118);
    type metadata accessor for Playlist.Entry();
    MusicLibrarySectionedRequest.init()();

    v63 = v109;
    MusicLibrarySectionedRequest.library.setter();
    KeyPath = swift_getKeyPath();
    if (qword_10117F5D0 != -1)
    {
      swift_once();
    }

    v65 = qword_101218AB0;
    v66 = *(qword_101218AB0 + 16);
    if (!v66)
    {
      v72 = v118;
      goto LABEL_20;
    }

    v140 = KeyPath;
    v67 = sub_1003ADCE4(v66, 0);
    v68 = *(type metadata accessor for Playlist.Variant() - 8);
    sub_1001975FC(v146, &v67[(*(v68 + 80) + 32) & ~*(v68 + 80)], v66, v65);
    v70 = v69;
    v71 = v146[0];

    sub_10005C9F8(v71);
    if (v70 == v66)
    {
      v63 = v109;
      v72 = v118;
LABEL_20:
      sub_10003DB40(&qword_10118A3C0, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
      MusicLibrarySectionedRequest<>.filterSections<A>(matching:memberOf:)();

      swift_getKeyPath();
      v77 = v110;
      v78 = v107;
      v79 = v117;
      (*(v110 + 16))(v107, v117, v72);
      (*(v77 + 56))(v78, 0, 1, v72);
      sub_10003DB40(&qword_101186EC0, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
      MusicLibrarySectionedRequest<>.filterItems<A>(matching:equalTo:)();

      sub_1000095E8(v78, &unk_1011814D0, &qword_100EC12A0);
      type metadata accessor for PlaylistSortingController(0);
      static PlaylistSortingController.apply(for:to:)(v79, v127);
      v80 = v127;
      *(&v147 + 1) = v63;
      *&v148 = sub_100457744(&qword_1011831B8, &qword_10118A3B0, &qword_100EE4B40);
      v81 = sub_10001C8B8(v146);
      v82 = v108;
      (*(v108 + 16))(v81, v80, v63);
      v145 = 0;
      v144 = 0u;
      v143 = 0u;
      v31 = v106;
      MusicPlaybackIntentDescriptor.init(request:startingAt:)();
      (*(v82 + 8))(v80, v63);
      (*(v77 + 8))(v117, v118);
      goto LABEL_7;
    }

    __break(1u);
  }

  else
  {
    if (v40 == enum case for RecentlyAddedMusicItem.tvSeason(_:))
    {
      sub_1000095E8(v139, &unk_10118CDB0, &unk_100EC0360);
      v136(v138, 1, 1, v137);
      (*(v18 + 8))(v23, v17);
      return;
    }

    if (v40 == enum case for RecentlyAddedMusicItem.uploadedVideo(_:))
    {
      (*(v18 + 96))(v23, v17);
      v74 = v102;
      v75 = v101;
      v76 = v103;
      (*(v102 + 32))(v101, v23, v103);
      (*(v74 + 16))(v100, v75, v76);
      sub_10003DB40(&qword_101181148, &type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
      MusicPlaybackIntentDescriptor.init<A>(item:)();
      (*(v74 + 8))(v75, v76);
      v73 = v139;
      sub_1000095E8(v139, &unk_10118CDB0, &unk_100EC0360);
      v31 = v25;
      goto LABEL_16;
    }

    v83 = Logger.musicKit.unsafeMutableAddressor();
    v84 = v104;
    (*(v104 + 16))(v105, v83, v132);
    v85 = v99;
    v86 = v17;
    v87 = v133;
    v133(v99, v142, v17);
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      LODWORD(v141) = v89;
      v91 = v90;
      v142 = swift_slowAlloc();
      v146[0] = v142;
      *v91 = 136315138;
      v87(v126, v85, v17);
      v92 = String.init<A>(describing:)();
      v94 = v93;
      v95 = *(v38 + 8);
      v95(v85, v17);
      v96 = v95;
      v86 = v17;
      v97 = sub_1000105AC(v92, v94, v146);

      *(v91 + 4) = v97;
      _os_log_impl(&_mh_execute_header, v88, v141, "Unknown Recently Added Item=%s", v91, 0xCu);
      sub_10000959C(v142);

      v98 = v96;
      (*(v104 + 8))(v105, v132);
    }

    else
    {

      v98 = *(v38 + 8);
      v98(v85, v17);
      (*(v84 + 8))(v105, v132);
    }

    sub_1000095E8(v139, &unk_10118CDB0, &unk_100EC0360);
    v136(v138, 1, 1, v137);
    v98(v23, v86);
  }
}

uint64_t sub_100456F68@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000954C(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  *(a3 + 8) = v8 & 1;
  return result;
}

uint64_t sub_100456FC8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10000954C(a1, a1[3]);
  result = dispatch thunk of LibraryTrackSortProperties.title.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100457040(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000954C(a1, v5);
  return a4(v5, v6);
}

void sub_100457090(__int128 *a1)
{
  sub_10045EC58(*v1);
  String.hash(into:)();

  type metadata accessor for MusicLibrary();
  sub_10003DB40(&qword_101180378, &type metadata accessor for MusicLibrary, &protocol conformance descriptor for MusicLibrary);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + 16) & 1);
  String.hash(into:)();
  v3 = *(v1 + 41);
  String.hash(into:)();

  Hasher._combine(_:)(v3 & 1);
  String.hash(into:)();
  sub_10010B570(a1, *(v1 + 64));
  sub_10010B100(a1, *(v1 + 72));
  String.hash(into:)();
  sub_10010B4B0(a1, *(v1 + 96));
}

double sub_1004572D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  type metadata accessor for TitledSection();
  type metadata accessor for RecentlyAddedMusicItem();
  sub_10003DB40(&qword_10118CFF8, &type metadata accessor for RecentlyAddedMusicItem, &protocol conformance descriptor for RecentlyAddedMusicItem);
  MusicLibrarySectionedRequest.init()();

  sub_10010FC20(&qword_10118CFF0, &qword_100EC8CB8);
  MusicLibrarySectionedRequest.library.setter();
  MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
  v4._countAndFlagsBits = v2;
  v4._object = v3;
  MusicLibrarySectionedRequest.filterItems(text:)(v4);
  MusicLibrarySectionedRequest.limit.setter();
  if (v1 == 1)
  {
    swift_getKeyPath();
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

    MusicLibrarySectionedRequest.excludeNonPinnedPlaylists.setter();
  }

  else
  {
    swift_getKeyPath();
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();
  }

  return result;
}

Swift::Int sub_10045745C()
{
  Hasher.init(_seed:)();
  sub_100457090(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1004574A0(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100457090(v2);
  return Hasher._finalize()();
}

uint64_t sub_1004574DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v2;
  v13 = *(a1 + 96);
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v5 = *(a2 + 16);
  v14[0] = *a2;
  v14[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v15 = *(a2 + 96);
  v14[4] = v8;
  v14[5] = v9;
  v14[2] = v6;
  v14[3] = v7;
  sub_100457548(v12, v14);
  return v10 & 1;
}

void sub_100457548(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a2;
  v5 = sub_10045EC58(*a1);
  v7 = v6;
  if (v5 == sub_10045EC58(v4) && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      return;
    }
  }

  type metadata accessor for MusicLibrary();
  if (static MusicLibrary.== infix(_:_:)() & 1) != 0 && ((a1[16] ^ a2[16]) & 1) == 0 && (*(a1 + 3) == *(a2 + 3) && *(a1 + 4) == *(a2 + 4) || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    v11 = a1[41];
    v12 = a2[41];
    if (sub_1006B8B0C(a1[40], a2[40]) & 1) != 0 && ((v11 ^ v12) & 1) == 0 && (*(a1 + 6) == *(a2 + 6) && *(a1 + 7) == *(a2 + 7) || (_stringCompareWithSmolCheck(_:_:expecting:)()))
    {
      sub_10047B908(*(a1 + 8), *(a2 + 8));
      if (v13 & 1) != 0 && (sub_10018FCA0(*(a1 + 9), *(a2 + 9)) & 1) != 0 && (*(a1 + 10) == *(a2 + 10) && *(a1 + 11) == *(a2 + 11) || (_stringCompareWithSmolCheck(_:_:expecting:)()))
      {
        v14 = *(a1 + 12);
        v15 = *(a2 + 12);

        sub_10047BC00(v14, v15);
      }
    }
  }
}

uint64_t sub_1004576F4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000954C(a1, v5);
  return a4(v5, v6);
}

uint64_t sub_100457744(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_100457798(char a1, char a2)
{
  v3 = v2;
  v3[OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_layoutMode] = a1 & 1;
  if (a1)
  {
    v5 = type metadata accessor for LibraryArtistsContainerViewController.SplayedLayoutContainer();
    v6 = &off_1010ACCF0;
  }

  else
  {
    v5 = type metadata accessor for LibraryArtistsContainerViewController.PlainLayoutContainer();
    v6 = &off_1010ACD48;
  }

  v7 = [objc_allocWithZone(v5) init];
  v8 = &v3[OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_layoutContainer];
  *v8 = v7;
  v8[1] = v6;
  v9 = objc_allocWithZone(type metadata accessor for LibraryArtistsListViewController(0));
  *&v3[OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_artistListViewController] = sub_100766448(a2 & 1);
  v23.receiver = v3;
  v23.super_class = type metadata accessor for LibraryArtistsContainerViewController();
  v10 = objc_msgSendSuper2(&v23, "initWithNibName:bundle:", 0, 0);
  v11 = &v10[OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_layoutContainer];
  v12 = *&v10[OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_layoutContainer];
  v13 = v10;
  v14 = v12;
  UIViewController.add(_:)(v14);

  [*v11 didMoveToParentViewController:v13];
  v15 = *v11;
  v16 = *(v11 + 1);
  ObjectType = swift_getObjectType();
  v18 = *&v13[OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_artistListViewController];
  v19 = *(v16 + 32);
  v20 = v15;
  v21 = v18;
  v19(v18, ObjectType, v16);

  UIViewController.playActivityFeatureIdentifier.setter(2);
  return v13;
}

void sub_1004579BC(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_layoutMode);
  *(v1 + OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_layoutMode) = a1 & 1;
  if (v2 != (a1 & 1))
  {
    if (a1)
    {
      v3 = type metadata accessor for LibraryArtistsContainerViewController.SplayedLayoutContainer();
      v4 = &off_1010ACCF0;
    }

    else
    {
      v3 = type metadata accessor for LibraryArtistsContainerViewController.PlainLayoutContainer();
      v4 = &off_1010ACD48;
    }

    v5 = [objc_allocWithZone(v3) init];
    v6 = (v1 + OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_layoutContainer);
    v7 = *(v1 + OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_layoutContainer + 8);
    v10 = *(v1 + OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_layoutContainer);
    *v6 = v5;
    v6[1] = v4;
    v8 = v5;
    v9.super.super.isa = v10;
    sub_1004583A4(v9, v7);
  }
}

void sub_100457A94()
{
  v23.receiver = v0;
  v23.super_class = type metadata accessor for LibraryArtistsContainerViewController();
  objc_msgSendSuper2(&v23, "viewDidLoad");
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 6)
  {
LABEL_4:
    v6 = OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_layoutContainer;
    v7 = [*&v0[OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_layoutContainer] view];
    if (v7)
    {
      v8 = v7;
      v9 = [v0 view];
      if (v9)
      {
        v10 = v9;
        [v9 bounds];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;

        [v8 setFrame:{v12, v14, v16, v18}];
        v19 = [v0 view];
        if (v19)
        {
          v20 = v19;
          v21 = [*&v0[v6] view];
          if (v21)
          {
            v22 = v21;
            [v20 addSubview:v21];

            return;
          }

          goto LABEL_12;
        }

LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }

  v3 = [v0 view];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() systemBackgroundColor];
    [v4 setBackgroundColor:v5];

    goto LABEL_4;
  }

LABEL_13:
  __break(1u);
}

void sub_100457CDC()
{
  v33[0].receiver = v0;
  v33[0].super_class = type metadata accessor for LibraryArtistsContainerViewController();
  [(objc_super *)v33 viewDidLayoutSubviews];
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = v1;
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [v0 traitCollection];
  v12 = [v11 horizontalSizeClass];

  if (v12 != 2)
  {
LABEL_7:
    v21 = [*&v0[OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_layoutContainer] view];
    if (v21)
    {
      v22 = v21;
      v23 = [v0 view];
      if (v23)
      {
        v24 = v23;
        memset(&v33[1], 0, 32);
        v34 = 1;
        CGRect.applyingLayoutDirection(in:bounds:)();
        v26 = v25;
        v28 = v27;
        v30 = v29;
        v32 = v31;

        [v22 setFrame:{v26, v28, v30, v32}];
        return;
      }

      goto LABEL_12;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = [v0 view];
  if (!v13)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = v13;
  [v13 safeAreaInsets];

  v15 = [v0 view];
  if (!v15)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = v15;
  [v15 safeAreaInsets];

  v17 = [v0 view];
  if (v17)
  {
    v18 = v17;
    [v17 effectiveUserInterfaceLayoutDirection];

    UIEdgeInsets.applyingLayoutDirection(_:)();
    sub_100058728(v4, v6, v8, v10, v19, v20);
    goto LABEL_7;
  }

LABEL_15:
  __break(1u);
}

void sub_100457FA8(void *a1, uint64_t a2, uint64_t a3, const char **a4, void (*a5)(id, uint64_t))
{
  v12.receiver = a1;
  v12.super_class = type metadata accessor for LibraryArtistsContainerViewController();
  v8 = *a4;
  v9 = v12.receiver;
  objc_msgSendSuper2(&v12, v8, a3);
  type metadata accessor for ApplicationMainMenu();
  v10 = sub_100314AEC();
  if (v10)
  {
    v11 = v10;
    a5(v9, v10);
  }
}

double sub_1004580FC(void *a1, uint64_t a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for LibraryArtistsContainerViewController();
  objc_msgSendSuper2(&v7, "didMoveToParentViewController:", a1);
  if (a1)
  {
    sub_10010FC20(&unk_101182D80, "ʫ\n");
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100EBC6B0;
    *(v5 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
    *(v5 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
    v6 = a1;
    UIViewController.registerForTraitChanges<A>(_:handler:)();

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_100458220(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong parentViewController];

    if (v6)
    {
      sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
      v7 = a1;
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        swift_beginAccess();
        v9 = swift_unknownObjectWeakLoadStrong();
        if (v9)
        {
          v10 = v9;
          v11 = [v7 traitCollection];
          v12 = sub_10045B524(v11);

          sub_1004579BC(v12 & 1);
        }
      }
    }
  }
}

void sub_1004583A4(UIViewController a1, uint64_t a2)
{
  v3 = v2;
  v6 = &v2[OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_layoutContainer];
  v7 = *&v2[OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_layoutContainer];
  ObjectType = swift_getObjectType();
  if (v7 != a1.super.super.isa)
  {
    v9 = ObjectType;
    v10 = (*(a2 + 48))(ObjectType, a2);
    (*(a2 + 32))(0, v9, a2);
    if (v10)
    {
      v43[0] = a1.super.super.isa;
      v11 = *(*(a2 + 8) + 24);
      v12 = v10;
      v13 = v11(v12);
    }

    UIViewController.remove(_:)(a1);
    v14 = *v6;
    v15 = *(v6 + 1);
    v16 = swift_getObjectType();
    v17 = *&v3[OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_artistListViewController];
    v18 = *(v15 + 32);
    v19 = v14;
    v20 = v17;
    v18(v17, v16, v15);

    v21 = *v6;
    UIViewController.add(_:)(v21);

    if (![v3 isViewLoaded])
    {
      goto LABEL_10;
    }

    v22 = [*v6 view];
    if (v22)
    {
      v23 = v22;
      [v22 setAutoresizingMask:18];

      v24 = [*v6 view];
      if (v24)
      {
        v25 = v24;
        v26 = [v3 view];
        if (v26)
        {
          v27 = v26;
          [v26 bounds];
          v29 = v28;
          v31 = v30;
          v33 = v32;
          v35 = v34;

          [v25 setFrame:{v29, v31, v33, v35}];
          v36 = [v3 view];
          if (v36)
          {
            v37 = v36;
            [v36 layoutIfNeeded];

LABEL_10:
            if (v10)
            {
              v38 = [objc_opt_self() sharedApplication];
              v39 = swift_allocObject();
              *(v39 + 16) = v3;
              *(v39 + 24) = v10;
              v43[4] = sub_10045BB2C;
              v43[5] = v39;
              v43[0] = _NSConcreteStackBlock;
              v43[1] = 1107296256;
              v43[2] = sub_10002BC98;
              v43[3] = &unk_1010ACDD0;
              v40 = _Block_copy(v43);
              v41 = v10;
              v42 = v3;

              [v38 _performBlockAfterCATransactionCommits:v40];
              _Block_release(v40);
            }

            return;
          }

LABEL_16:
          __break(1u);
          return;
        }

LABEL_15:
        __break(1u);
        goto LABEL_16;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_15;
  }
}

void sub_1004586F8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_layoutContainer);
  v5 = *(a1 + OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_layoutContainer + 8);
  ObjectType = swift_getObjectType();
  v7 = *(a1 + OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_artistListViewController);
  v8 = *(v5 + 8);
  v9 = *(v8 + 16);
  v10 = v4;
  v9(a2, v7, 0, ObjectType, v8);
}

void sub_1004589E4()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for LibraryArtistsContainerViewController.PlainLayoutContainer();
  objc_msgSendSuper2(&v16, "viewDidLoad");
  if ([v0 isViewLoaded])
  {
    v1 = *&v0[OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F20PlainLayoutContainer_artistListViewController];
    if (v1)
    {
      v2 = [v1 view];
      if (v2)
      {
        v3 = v2;
        v4 = [v0 view];
        if (v4)
        {
          v5 = v4;
          [v4 bounds];
          v7 = v6;
          v9 = v8;
          v11 = v10;
          v13 = v12;

          [v3 setFrame:{v7, v9, v11, v13}];
          [v3 setAutoresizingMask:18];
          v14 = [v0 view];
          if (v14)
          {
            v15 = v14;
            [v14 addSubview:v3];

            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
      }
    }
  }
}

void sub_100458B70(void *a1)
{
  v2 = v1;
  type metadata accessor for UITraitOverrides();
  __chkstk_darwin();
  v4 = OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F20PlainLayoutContainer_artistListViewController;
  v5 = *&v2[OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F20PlainLayoutContainer_artistListViewController];
  if (v5)
  {
    if (v5 == a1)
    {
      return;
    }

    if (!a1)
    {
      goto LABEL_7;
    }
  }

  else if (!a1)
  {
    return;
  }

  v6 = a1;
  UIViewController.remove(_:)(v6);

  v5 = *&v2[v4];
  if (!v5)
  {
    return;
  }

LABEL_7:
  v7 = v5;
  UIViewController.traitOverrides.getter();
  sub_10045B4D0();
  dispatch thunk of UIMutableTraits.subscript.setter();
  UIViewController.traitOverrides.setter();
  UIViewController.add(_:)(v7);
  if (![v2 isViewLoaded])
  {
    goto LABEL_13;
  }

  v8 = *&v2[v4];
  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = [v8 view];
  if (!v9)
  {
    goto LABEL_13;
  }

  v10 = v9;
  v11 = [v2 view];
  if (!v11)
  {
    __break(1u);
    goto LABEL_16;
  }

  v12 = v11;
  [v11 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [v10 setFrame:{v14, v16, v18, v20}];
  [v10 setAutoresizingMask:18];
  v21 = [v2 view];
  if (!v21)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v22 = v21;
  [v21 addSubview:v10];

LABEL_13:
}

uint64_t sub_100458D84(void *a1, id a2, char a3)
{
  v4 = v3;
  result = [v3 navigationController];
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *&v3[OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F20PlainLayoutContainer_artistListViewController];
  if (!a2)
  {
    if (v10)
    {
      goto LABEL_30;
    }

    v14 = 0;
    goto LABEL_8;
  }

  if (!v10)
  {
    v23 = 0;
    goto LABEL_30;
  }

  sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
  v11 = v10;
  v12 = a2;
  v13 = static NSObject.== infix(_:_:)();

  if (v13)
  {
LABEL_8:
    v35 = a1;
    v34 = a3;
    v15 = [v9 viewControllers];
    sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v16 >> 62)
    {
LABEL_37:
      v17 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = 0;
    while (1)
    {
      if (v17 == v18)
      {

        return 0;
      }

      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = sub_10004056C(v18, v16);
      }

      else
      {
        if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v19 = *(v16 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = UIViewController.isDescendant(of:)(v19);

      if (v21)
      {
        break;
      }

      if (__OFADD__(v18++, 1))
      {
        goto LABEL_36;
      }
    }

    type metadata accessor for LibraryArtistDetailViewController(0);
    v24 = swift_dynamicCastClass();
    if (!v24)
    {
      goto LABEL_30;
    }

    v25 = v24;
    v26 = *&v4[OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F20PlainLayoutContainer_navigatedArtistDetailViewController];
    *&v4[OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F20PlainLayoutContainer_navigatedArtistDetailViewController] = v24;
    v27 = v35;

    v28 = [v9 viewControllers];
    v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v29 >> 62)
    {
      v30 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (__OFSUB__(v30, 1))
    {
      __break(1u);
    }

    else
    {
      if (v18 >= v30 - 1)
      {
        [v9 navigateTo:v27 from:a2 animated:v34 & 1];

        goto LABEL_34;
      }

      a2 = v27;
      v31 = [v9 viewControllers];
      v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!(v32 >> 62))
      {
        result = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result > v18)
        {
LABEL_29:
          sub_1003BB868(v18 + 1, v18 + 1, v25);

          isa = Array._bridgeToObjectiveC()().super.isa;

          [v9 setViewControllers:isa];

LABEL_34:
          return 1;
        }

LABEL_41:
        __break(1u);
        return result;
      }
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result > v18)
    {
      goto LABEL_29;
    }

    goto LABEL_41;
  }

LABEL_30:

  return 0;
}

id sub_100459108(void *a1, char a2)
{
  v3 = v2;
  result = [v3 navigationController];
  if (result)
  {
    v7 = result;
    v8 = OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F20PlainLayoutContainer_navigatedArtistDetailViewController;
    v9 = *&v3[OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F20PlainLayoutContainer_navigatedArtistDetailViewController];
    if (v9 && (sub_100009F78(0, &qword_101183D40, UIViewController_ptr), v10 = a1, v11 = v9, v12 = static NSObject.== infix(_:_:)(), v11, v10, (v12 & 1) != 0))
    {
      v13 = *&v3[v8];
      *&v3[v8] = 0;

      v14 = [v7 drop:v10 animated:a2 & 1];
      return v14;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void *sub_1004592C4()
{
  v1 = *(v0 + OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F20PlainLayoutContainer_artistListViewController);
  v2 = v1;
  return v1;
}

void *sub_100459314()
{
  v1 = *(v0 + OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F20PlainLayoutContainer_navigatedArtistDetailViewController);
  v2 = v1;
  return v1;
}

id sub_100459390()
{
  *&v0[OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_artistListViewController] = 0;
  *&v0[OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer____lazy_storage___verticalSeparator] = 0;
  *&v0[OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_leftViewController] = 0;
  *&v0[OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_rightViewController] = 0;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for LibraryArtistsContainerViewController.SplayedLayoutContainer();
  v1 = objc_msgSendSuper2(&v6, "initWithNibName:bundle:", 0, 0);
  v2 = [v1 navigationItem];
  if ((sub_10005A544() & 1) == 0)
  {
    if (qword_10117FD70 != -1)
    {
      swift_once();
    }

    v3 = qword_1011A3E60;
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    objc_setAssociatedObject(v2, v3, isa, 3);
  }

  return v1;
}

void sub_100459554(void *a1)
{
  type metadata accessor for UITraitOverrides();
  __chkstk_darwin();
  v3 = *(v1 + OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_artistListViewController);
  if (v3)
  {
    if (v3 != a1)
    {
      v4 = v3;
      UIViewController.traitOverrides.getter();
      sub_10045B4D0();
      dispatch thunk of UIMutableTraits.subscript.setter();
      UIViewController.traitOverrides.setter();
      v5 = objc_allocWithZone(sub_10010FC20(&qword_101190B60, &unk_100ECD988));
      v6 = v4;
      v7 = sub_10045AB44(v6, &qword_101190B60, &unk_100ECD988);
      v8 = *(v1 + OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_leftViewController);
      *(v1 + OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_leftViewController) = v7;
      v9 = v7;
      sub_10045A3F4(v8);
    }
  }

  else if (a1)
  {
    v10 = *(v1 + OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_leftViewController);
    *(v1 + OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_leftViewController) = 0;
    sub_10045A3F4(v10);
  }
}

void sub_1004596F4()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for LibraryArtistsContainerViewController.SplayedLayoutContainer();
  objc_msgSendSuper2(&v16, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_leftViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 view];
    if (!v3)
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    v4 = v3;
    v5 = [v2 view];
    if (!v5)
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v6 = v5;
    [v4 addSubview:v5];
  }

  v7 = *&v0[OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_rightViewController];
  if (!v7)
  {
LABEL_9:
    v13 = [v0 view];
    if (v13)
    {
      v14 = v13;
      v15 = sub_10045A340();
      [v14 addSubview:v15];

      return;
    }

    __break(1u);
    goto LABEL_12;
  }

  v8 = v7;
  v9 = [v0 view];
  if (!v9)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v9;
  v11 = [v8 view];
  if (v11)
  {
    v12 = v11;
    [v10 addSubview:v11];

    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

void sub_1004598BC(char a1)
{
  sub_10010FC20(&unk_101184930, &unk_100EC05C0);
  __chkstk_darwin();
  v4 = &v20 - v3;
  v5 = type metadata accessor for Artist();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v20 - v9;
  v11 = type metadata accessor for LibraryArtistsContainerViewController.SplayedLayoutContainer();
  v21.receiver = v1;
  v21.super_class = v11;
  objc_msgSendSuper2(&v21, "viewWillAppear:", a1 & 1);
  v12 = OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_artistListViewController;
  v13 = *&v1[OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_artistListViewController];
  if (!v13)
  {
    (*(v6 + 56))(v4, 1, 1, v5);
    goto LABEL_5;
  }

  v14 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_selectedArtist;
  swift_beginAccess();
  sub_1000089F8(v13 + v14, v4, &unk_101184930, &unk_100EC05C0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
LABEL_5:
    sub_1000095E8(v4, &unk_101184930, &unk_100EC05C0);
    goto LABEL_6;
  }

  (*(v6 + 32))(v10, v4, v5);
  (*(v6 + 16))(v8, v10, v5);
  v15 = [v1 traitCollection];
  sub_100217F14();
  UITraitCollection.subscript.getter();

  LOBYTE(v15) = sub_10049CB78();

  v16 = objc_allocWithZone(type metadata accessor for LibraryArtistDetailViewController(0));
  v17 = sub_1001FAE8C(v8, v15 & 1);
  v18 = *&v1[v12];
  v19 = v18;
  sub_10016EEEC(v17, v18, 0, v1);

  (*(v6 + 8))(v10, v5);
LABEL_6:
  sub_10045A73C();
}

void sub_100459C10()
{
  type metadata accessor for UITraitOverrides();
  __chkstk_darwin();
  v1 = type metadata accessor for LibraryArtistsContainerViewController.SplayedLayoutContainer();
  v98.receiver = v0;
  v98.super_class = v1;
  objc_msgSendSuper2(&v98, "viewDidLayoutSubviews");
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  sub_10045A1F0(&v95, v5, v7, v9, v11);
  v12 = *(&v95 + 1);
  v13 = *&v95;
  v15 = *(&v96 + 1);
  v14 = *&v96;
  v16 = *&v0[OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_leftViewController];
  if (v16)
  {
    v17 = [v16 view];
    if (!v17)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v18 = v17;
    v19 = [v0 view];
    if (!v19)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v20 = v19;
    v96 = 0u;
    v95 = 0u;
    LOBYTE(v97) = 1;
    CGRect.applyingLayoutDirection(in:bounds:)();
    v22 = v21;
    v23 = v15;
    v24 = v14;
    v25 = v12;
    v26 = v13;
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v33 = v28;
    v13 = v26;
    v12 = v25;
    v14 = v24;
    v15 = v23;
    [v18 setFrame:{v22, v33, v30, v32}];
  }

  v34 = OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_rightViewController;
  v35 = *&v0[OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_rightViewController];
  if (v35)
  {
    v36 = [v35 view];
    if (!v36)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v37 = v36;
    v38 = v13;
    v39 = [v0 view];
    if (!v39)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v40 = v39;
    v102 = 0u;
    v103 = 0u;
    v104 = 1;
    CGRect.applyingLayoutDirection(in:bounds:)();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;

    [v37 setFrame:{v42, v44, v46, v48}];
    v13 = v38;
  }

  v49 = sub_10045A340();
  v105.origin.x = v13;
  v105.origin.y = v12;
  v105.size.width = v14;
  v105.size.height = v15;
  CGRectGetMaxX(v105);
  v50 = [v0 view];
  if (!v50)
  {
    goto LABEL_19;
  }

  v51 = v50;
  [v50 bounds];
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;

  v106.origin.x = v53;
  v106.origin.y = v55;
  v106.size.width = v57;
  v106.size.height = v59;
  CGRectGetMinY(v106);
  v60 = [v0 traitCollection];
  [v60 displayScale];

  v61 = [v0 view];
  if (!v61)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v62 = v61;
  [v61 bounds];
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;

  v107.origin.x = v64;
  v107.origin.y = v66;
  v107.size.width = v68;
  v107.size.height = v70;
  CGRectGetHeight(v107);
  v71 = [v0 view];
  if (!v71)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v72 = v71;
  v99 = 0u;
  v100 = 0u;
  v101 = 1;
  CGRect.applyingLayoutDirection(in:bounds:)();
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v80 = v79;

  [v49 setFrame:{v74, v76, v78, v80}];
  v81 = [v0 view];
  if (!v81)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v82 = v81;
  [v81 bringSubviewToFront:*&v0[OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer____lazy_storage___verticalSeparator]];

  v83 = *&v0[v34];
  if (!v83)
  {
    return;
  }

  v84 = v83;
  v85 = [v84 view];
  if (!v85)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v86 = v85;
  [v85 frame];
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v94 = v93;

  v108.origin.x = v88;
  v108.origin.y = v90;
  v108.size.width = v92;
  v108.size.height = v94;
  CGRectGetWidth(v108);
  UIViewController.traitOverrides.getter();
  UIMutableTraits.horizontalSizeClass.setter();
  UIViewController.traitOverrides.setter();
}

void sub_10045A1F0(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  CGRectGetWidth(*&a2);
  v11 = [v5 traitCollection];
  [v11 displayScale];

  CGFloat.floorValue(scale:)();
  v13 = v12;
  v14 = [objc_opt_self() defaultMetrics];
  [v14 scaledValueForValue:366.0];
  v16 = v15;

  if (v16 >= v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = v16;
  }

  memset(&slice, 0, sizeof(slice));
  memset(&v21, 0, sizeof(v21));
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  CGRectDivide(v23, &slice, &v21, v17, CGRectMinXEdge);
  origin = v21.origin;
  size = v21.size;
  v20 = slice.size;
  *a1 = slice.origin;
  *(a1 + 16) = v20;
  *(a1 + 32) = origin;
  *(a1 + 48) = size;
}

id sub_10045A340()
{
  v1 = OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer____lazy_storage___verticalSeparator;
  v2 = *(v0 + OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer____lazy_storage___verticalSeparator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer____lazy_storage___verticalSeparator);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) init];
    v5 = [objc_opt_self() separatorColor];
    [v4 setBackgroundColor:v5];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_10045A3F4(id a1)
{
  v2 = v1;
  type metadata accessor for UITraitOverrides();
  __chkstk_darwin();
  v4 = OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_leftViewController;
  v5 = *(v1 + OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_leftViewController);
  if (v5)
  {
    if (!a1)
    {
LABEL_7:
      v9 = v5;
      UIViewController.traitOverrides.getter();
      UIMutableTraits.horizontalSizeClass.setter();
      UIViewController.traitOverrides.setter();
      UIViewController.add(_:)(v9);
      v10 = [v9 navigationBar];
      v11 = String._bridgeToObjectiveC()();
      [v10 _setBackdropViewLayerGroupName:v11];

      return;
    }

    sub_10010FC20(&qword_101190B60, &unk_100ECD988);
    v6 = v5;
    a1 = a1;
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v8 = a1;
  UIViewController.remove(_:)(v8);

  v5 = *(v2 + v4);
  if (v5)
  {
    goto LABEL_7;
  }

  v12 = *(v2 + OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_rightViewController);
  *(v2 + OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_rightViewController) = 0;
  sub_10045A5EC(v12);
}

void sub_10045A5EC(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_rightViewController;
  v5 = *(v1 + OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_rightViewController);
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

LABEL_6:
    v8 = v3;
    UIViewController.remove(_:)(v8);

    v5 = *(v2 + v4);
    if (!v5)
    {
      return;
    }

    goto LABEL_7;
  }

  if (a1)
  {
    sub_10010FC20(&qword_101190B68, &qword_100ECD998);
    v6 = v5;
    v3 = v3;
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      return;
    }

    goto LABEL_6;
  }

LABEL_7:
  v9 = v5;
  UIViewController.add(_:)(v9);
  v10 = [v9 navigationBar];
  v11 = String._bridgeToObjectiveC()();
  [v10 _setBackdropViewLayerGroupName:v11];
}

void sub_10045A73C()
{
  v1 = v0;
  v2 = [v0 navigationController];
  if (!v2)
  {
    return;
  }

  v25 = v2;
  v3 = [v2 viewControllers];
  sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = sub_1003FC8BC(v0, v4);
  v7 = v6;

  if ((v7 & 1) == 0 && v5 >= 1)
  {
    v8 = [v25 viewControllers];
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = sub_10004056C(v5 - 1, v9);
    }

    else
    {
      if (v5 > *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v10 = *(v9 + 8 * (v5 - 1) + 32);
    }

    v11 = v10;

    v12 = [v11 navigationItem];
    v13 = [v12 backButtonTitle];

    if (!v13)
    {
      v14 = [v11 title];
      if (!v14)
      {
        v15 = 0;
        v17 = 0;
LABEL_11:
        sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
        sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
        v18 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v27.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        v19.value._countAndFlagsBits = v15;
        v19.value._object = v17;
        v27.value.super.isa = 0;
        v28.value.super.super.isa = 0;
        v20.super.super.isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v19, v27, v28, v29).super.super.isa;
        [(objc_class *)v20.super.super.isa _setShowsBackButtonIndicator:1, 0, 0, 0, sub_10045BB24, v18];
        v21 = *&v1[OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_leftViewController];
        if (v21)
        {
          v22 = [*(v21 + qword_101190AC8) navigationItem];
          v20.super.super.isa = v20.super.super.isa;
          [v22 setLeftBarButtonItem:v20.super.super.isa];
        }

        else
        {
        }

        goto LABEL_18;
      }

      v13 = v14;
    }

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    goto LABEL_11;
  }

  v23 = *&v0[OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_leftViewController];
  if (v23)
  {
    v20.super.super.isa = [*(v23 + qword_101190AC8) navigationItem];
    [(objc_class *)v20.super.super.isa setLeftBarButtonItem:0];
    v11 = v25;
LABEL_18:

    v24 = v11;
    goto LABEL_19;
  }

  v24 = v25;
LABEL_19:
}

void sub_10045AAB0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong navigationController];

    if (v4)
    {
      v5 = [v4 popViewControllerAnimated:1];
    }
  }
}

id sub_10045AB44(void *a1, uint64_t *a2, uint64_t *a3)
{
  *&v3[qword_101190AC8] = a1;
  v6 = a1;
  v14.receiver = v3;
  v14.super_class = sub_10010FC20(a2, a3);
  v7 = objc_msgSendSuper2(&v14, "initWithNavigationBarClass:toolbarClass:", 0, 0);
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100EBC6C0;
  *(v8 + 32) = v6;
  sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
  v9 = v7;
  v10 = v6;
  v11 = v9;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v11 setViewControllers:isa];

  return v11;
}

void sub_10045ACB4(uint64_t a1, uint64_t a2)
{
  sub_1000089F8(a2, v6, &unk_101183F30, qword_100EBF960);
  if (v7)
  {
    sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
    if (swift_dynamicCast())
    {
      v4 = v5;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    sub_1000095E8(v6, &unk_101183F30, qword_100EBF960);
    v4 = 0;
  }

  sub_10016EEEC(a1, v4, 1, v2);
}

uint64_t sub_10045AD88(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4)
  {
    v6 = a3;
    v7 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    v8 = a3;
    v9 = a1;
  }

  sub_10045ACB4(a3, v11);

  return sub_1000095E8(v11, &unk_101183F30, qword_100EBF960);
}

id sub_10045AE24(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = swift_isaMask & *v4;
  v9 = [v4 viewControllers];
  sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v10 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11)
  {
    return 0;
  }

  v13 = *(v8 + 208);
  result = swift_dynamicCastUnknownClass();
  if (result)
  {
    v16.receiver = v4;
    v16.super_class = type metadata accessor for LibraryArtistsContainerViewController.SplayedLayoutContainer.DummyNavigationController(0, v13, v14, v15);
    return objc_msgSendSuper2(&v16, "navigateTo:from:animated:", a1, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10045AF6C(void *a1, uint64_t a2, void *a3, void *a4, char a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  v11 = sub_10045AE24(v8, a4, a5);

  return v11 & 1;
}

id sub_10045B024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LibraryArtistsContainerViewController.SplayedLayoutContainer.DummyNavigationController(0, *((swift_isaMask & *v4) + 0xD0), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

id sub_10045B0DC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_10045B214()
{
  result = qword_101190B50;
  if (!qword_101190B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101190B50);
  }

  return result;
}

void *sub_10045B268()
{
  v1 = *(v0 + OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_artistListViewController);
  v2 = v1;
  return v1;
}

void sub_10045B2B8(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(id))
{
  v8 = *(v5 + *a4);
  *(v5 + *a4) = a1;
  v7 = a1;
  a5(v8);
}

void *sub_10045B324()
{
  v1 = *(v0 + OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_rightViewController);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + qword_101190AC8);
  v3 = v2;
  return v2;
}

void *sub_10045B3B8()
{
  v1 = v0 + OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_layoutContainer;
  v2 = *(v0 + OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_layoutContainer);
  v3 = *(v0 + OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_layoutContainer + 8);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 24);
  v6 = v2;
  v7 = v5(ObjectType, v3);

  if (v7)
  {
    v8 = sub_100766268();
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v9 = *v1;
  v10 = *(v1 + 8);
  v11 = swift_getObjectType();
  v12 = *(v10 + 48);
  v13 = v9;
  v14 = v12(v11, v10);

  if (v14)
  {
    v15 = sub_100211590();
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  sub_1001252D8(v15);
  return v8;
}

unint64_t sub_10045B4D0()
{
  result = qword_101190B58;
  if (!qword_101190B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101190B58);
  }

  return result;
}

uint64_t sub_10045B524(void *a1)
{
  if ((UITraitCollection.legacyLibraryFilter.getter().rawValue & 2) == 0)
  {
    sub_100217F14();
    UITraitCollection.subscript.getter();
    v2 = sub_10049CB78();

    if ((v2 & 1) == 0)
    {
      v3 = UITraitCollection.mediaLibrary.getter();
      v4 = [objc_opt_self() deviceMediaLibrary];
      if (v4)
      {
        v5 = v4;
        sub_100009F78(0, &qword_101183F80, MPMediaLibrary_ptr);
        v6 = static NSObject.== infix(_:_:)();

        if ((v6 & 1) != 0 && [a1 horizontalSizeClass] == 2)
        {
          return 1;
        }
      }

      else
      {
      }
    }
  }

  return 0;
}

uint64_t sub_10045B630(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Artist();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v37 - v10;
  v12 = *&v3[OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_artistListViewController];
  if (!a2)
  {
    if (!v12)
    {
      v16 = 0;
      goto LABEL_7;
    }

    return 0;
  }

  if (!v12)
  {
    v25 = 0;
    return 0;
  }

  sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
  v13 = v12;
  v14 = a2;
  v15 = static NSObject.== infix(_:_:)();

  if ((v15 & 1) == 0)
  {
    return 0;
  }

LABEL_7:
  [v3 loadViewIfNeeded];
  type metadata accessor for LibraryArtistDetailViewController(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v18 = result;
    v37 = OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_rightViewController;
    v19 = *&v3[OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_rightViewController];
    if (v19)
    {
      v20 = *(v19 + qword_101190AC8);
      v21 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artist;
      swift_beginAccess();
      (*(v7 + 16))(v11, v20 + v21, v6);
      v22 = a1;
      v38 = Artist.id.getter();
      v24 = v23;
      (*(v7 + 8))(v11, v6);
    }

    else
    {
      v26 = a1;
      v38 = 0;
      v24 = 0;
    }

    v27 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artist;
    swift_beginAccess();
    (*(v7 + 16))(v9, &v18[v27], v6);
    v28 = Artist.id.getter();
    v30 = v29;
    (*(v7 + 8))(v9, v6);
    if (v24)
    {
      if (v38 == v28 && v24 == v30)
      {

        return 1;
      }

      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v31)
      {

        return 1;
      }
    }

    else
    {
    }

    v32 = objc_allocWithZone(sub_10010FC20(&qword_101190B68, &qword_100ECD998));
    v33 = a1;
    v34 = sub_10045AB44(v18, &qword_101190B68, &qword_100ECD998);
    v35 = *&v3[v37];
    *&v3[v37] = v34;
    v36 = v34;
    sub_10045A5EC(v35);

    return 1;
  }

  return result;
}

uint64_t sub_10045B99C(void *a1)
{
  v2 = OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_rightViewController;
  v3 = *(v1 + OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_rightViewController);
  if (!v3)
  {
    return 0;
  }

  v4 = v1;
  v6 = *(v3 + qword_101190AC8);
  sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
  v7 = v6;
  v8 = a1;
  v9 = static NSObject.== infix(_:_:)();

  if ((v9 & 1) == 0)
  {
    v10 = *(v1 + v2);
    if (!v10)
    {
      return 0;
    }

    v11 = v8;
    v12 = v10;
    v13 = static NSObject.== infix(_:_:)();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *(v4 + v2);
  *(v4 + v2) = 0;
  sub_10045A5EC(v14);

  v15 = *(v4 + v2);
  if (!v15)
  {
    return 0;
  }

  v16 = *(v4 + v2);
  v17 = v15;
  return v16;
}

void sub_10045BB4C(uint64_t a1)
{
  v1 = a1;
  v31 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v37 = _swiftEmptyArrayStorage;
    sub_10066CCB4(0, v2 & ~(v2 >> 63), 0);
    v32 = _swiftEmptyArrayStorage;
    if (v31)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v34 = v3;
    v35 = v4;
    v36 = v31 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v29 = v1 + 56;
      v28 = v1 + 64;
      v30 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v9 = v34;
        v8 = v35;
        v10 = v36;
        v11 = v1;
        sub_1007482D0(v34, v35, v36, v1);
        v13 = v12;
        v14 = [v12 role];

        v15 = v32;
        v37 = v32;
        v17 = v32[2];
        v16 = v32[3];
        if (v17 >= v16 >> 1)
        {
          sub_10066CCB4((v16 > 1), v17 + 1, 1);
          v15 = v37;
        }

        v15[2] = v17 + 1;
        v15[v17 + 4] = v14;
        v32 = v15;
        if (v31)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v30;
          sub_10010FC20(&qword_101190C18, &qword_100ECDA90);
          v6 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v6(v33, 0);
          if (v5 == v30)
          {
LABEL_32:
            sub_1000D8F7C(v34, v35, v36);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v18 = 1 << *(v11 + 32);
          if (v9 >= v18)
          {
            goto LABEL_36;
          }

          v19 = v9 >> 6;
          v20 = *(v29 + 8 * (v9 >> 6));
          if (((v20 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v8)
          {
            goto LABEL_38;
          }

          v21 = v20 & (-2 << (v9 & 0x3F));
          if (v21)
          {
            v18 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v30;
          }

          else
          {
            v22 = v19 << 6;
            v23 = v19 + 1;
            v24 = (v28 + 8 * v19);
            v2 = v30;
            while (v23 < (v18 + 63) >> 6)
            {
              v26 = *v24++;
              v25 = v26;
              v22 += 64;
              ++v23;
              if (v26)
              {
                sub_1000D8F7C(v9, v8, 0);
                v18 = __clz(__rbit64(v25)) + v22;
                goto LABEL_31;
              }
            }

            sub_1000D8F7C(v9, v8, 0);
          }

LABEL_31:
          v27 = *(v1 + 36);
          v34 = v18;
          v35 = v27;
          v36 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void sub_10045BEF0(CGFloat *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v4 = *(Strong + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);
  v5 = Strong;

  if (!v4)
  {
    goto LABEL_6;
  }

  v6 = *(v4 + 32);
  v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);

  if (v6 < 0)
  {

LABEL_6:
    top = NSDirectionalEdgeInsetsZero.top;
    leading = NSDirectionalEdgeInsetsZero.leading;
    bottom = NSDirectionalEdgeInsetsZero.bottom;
    trailing = NSDirectionalEdgeInsetsZero.trailing;
    goto LABEL_7;
  }

  sub_100062AB8();
  top = v8;
  leading = v10;
  bottom = v12;
  trailing = v14;

LABEL_7:
  a1[3] = top;
  a1[4] = leading;
  a1[5] = bottom;
  a1[6] = trailing;
}

void sub_10045BFDC()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  SharePlayTogetherSession.needsDisplayNameAckDefaultsKey.unsafeMutableAddressor();

  v2 = String._bridgeToObjectiveC()();

  [v1 removeObjectForKey:v2];

  v3 = [v0 standardUserDefaults];
  v4 = SharePlayTogetherSession.didShowDisplayNameAck.unsafeMutableAddressor();
  v5 = *v4;
  v6 = v4[1];
  v10 = &type metadata for Bool;
  v9[0] = 1;
  v8[0] = v5;
  v8[1] = v6;
  v7 = sub_100009838();

  NSUserDefaults.subscript.setter(v9, v8, &type metadata for String, v7);
}

void sub_10045C0E0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = Logger.scenes.unsafeMutableAddressor();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  v12 = os_log_type_enabled(v10, v11);
  v46 = v9;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v45 = v4;
    v14 = v13;
    v15 = swift_slowAlloc();
    v49[0] = v15;
    *v14 = 136446210;
    v16 = [v9 description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v2;
    v20 = v19;

    v21 = sub_1000105AC(v17, v20, v49);
    v2 = v18;

    *(v14 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v10, v11, "Main scene did enter background %{public}s", v14, 0xCu);
    sub_10000959C(v15);

    (*(v5 + 8))(v7, v45);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  *(v2 + OBJC_IVAR____TtC5Music17MainSceneDelegate_hasStartedFromUserAction) = 0;
  if (qword_10117FC88 == -1)
  {
    goto LABEL_5;
  }

  while (1)
  {
    swift_once();
LABEL_5:
    swift_beginAccess();
    v22 = sub_100195B58(v46);
    swift_endAccess();

    sub_10005EDE8();
    v23 = [objc_opt_self() sharedApplication];
    v24 = [v23 connectedScenes];

    v25 = sub_100009F78(0, &qword_1011839F0, UIScene_ptr);
    sub_10005C54C(&qword_101183DE0, &qword_1011839F0, UIScene_ptr);
    v26 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v46 = v25;
    if ((v26 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v28 = v49[0];
      v27 = v49[1];
      v29 = v49[2];
      v30 = v49[3];
      v31 = v49[4];
    }

    else
    {
      v32 = -1 << *(v26 + 32);
      v27 = v26 + 56;
      v29 = ~v32;
      v33 = -v32;
      v34 = v33 < 64 ? ~(-1 << v33) : -1;
      v31 = v34 & *(v26 + 56);

      v30 = 0;
      v28 = v26;
    }

    v45 = v29;
    v35 = (v29 + 64) >> 6;
    if (v28 < 0)
    {
      break;
    }

LABEL_12:
    v36 = v30;
    v37 = v31;
    v38 = v30;
    if (v31)
    {
LABEL_16:
      v39 = (v37 - 1) & v37;
      v40 = *(*(v28 + 48) + ((v38 << 9) | (8 * __clz(__rbit64(v37)))));
      if (v40)
      {
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    while (1)
    {
      v38 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v38 >= v35)
      {
        goto LABEL_23;
      }

      v37 = *(v27 + 8 * v38);
      ++v36;
      if (v37)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v41 = __CocoaSet.Iterator.next()();
    if (!v41)
    {
      break;
    }

    v47 = v41;
    swift_dynamicCast();
    v40 = v48;
    v38 = v30;
    v39 = v31;
    if (!v48)
    {
      break;
    }

LABEL_20:
    if (![v40 activationState])
    {
      sub_10005C9F8(v28);

      goto LABEL_25;
    }

    v30 = v38;
    v31 = v39;
    if ((v28 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_23:
  sub_10005C9F8(v28);

  v42 = [objc_opt_self() sharedCloudController];
  if (v42)
  {
    v43 = v42;
    [v42 resignActive];

    [objc_opt_self() endDiscoveringMediaLibraries];
LABEL_25:
    BackgroundRefreshController.shared.unsafeMutableAddressor();

    BackgroundRefreshController.scheduleAllTasks()();
  }

  else
  {
    __break(1u);
  }
}

void sub_10045C684(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = Logger.scenes.unsafeMutableAddressor();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = v4;
    v13 = v12;
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136446210;
    v15 = [v9 description];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = sub_1000105AC(v16, v18, &v22);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "Main sceneDidDisconnect %{public}s", v13, 0xCu);
    sub_10000959C(v14);

    (*(v5 + 8))(v7, v21);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  *(v2 + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext) = 0;

  sub_1000593FC();
  v20 = *(v2 + OBJC_IVAR____TtC5Music17MainSceneDelegate_window);
  *(v2 + OBJC_IVAR____TtC5Music17MainSceneDelegate_window) = 0;
}

void sub_10045C984(void *a1, void *a2)
{
  v79 = a1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v72[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v9 = &v72[-v8];
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v77 = &v72[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v12 = &v72[-v11];
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v72[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(v2 + OBJC_IVAR____TtC5Music17MainSceneDelegate_hasStartedFromUserAction) = 1;
  v80 = sub_100060CB0(_swiftEmptyArrayStorage);
  v17 = Logger.scenes.unsafeMutableAddressor();
  v18 = *(v14 + 16);
  v76 = v13;
  v18(v16, v17, v13);
  v19 = a2;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  v22 = os_log_type_enabled(v20, v21);
  v81 = v19;
  v78 = v12;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v86[0] = v74;
    *v23 = 136446210;
    v24 = [v81 description];
    v75 = v4;
    v25 = v24;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v21;
    v27 = v9;
    v28 = v5;
    v29 = v26;
    v30 = v7;
    v32 = v31;

    v33 = v29;
    v5 = v28;
    v9 = v27;
    v34 = sub_1000105AC(v33, v32, v86);
    v7 = v30;

    *(v23 + 4) = v34;
    v4 = v75;
    _os_log_impl(&_mh_execute_header, v20, v73, "[MainSceneDelegate] continue userActivity: %{public}s", v23, 0xCu);
    sub_10000959C(v74);

    v19 = v81;
  }

  (*(v14 + 8))(v16, v76);
  v35 = [v19 _sourceApplication];
  v36 = v80;
  v37 = v79;
  if (v35)
  {
    v38 = v35;
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    *&v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v84 + 1) = v42;
    AnyHashable.init<A>(_:)();
    v85 = &type metadata for String;
    *&v84 = v39;
    *(&v84 + 1) = v41;
    sub_100016270(&v84, v83);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = v36;
    sub_10006800C(v83, v86, isUniquelyReferenced_nonNull_native);
    sub_10001621C(v86);
    v36 = v82;
  }

  v44 = v77;
  v45 = [v19 referrerURL];
  if (v45)
  {
    v46 = v45;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v47 = 0;
  }

  else
  {
    v47 = 1;
  }

  (*(v5 + 56))(v44, v47, 1, v4);
  v48 = v78;
  sub_100027998(v44, v78);
  if ((*(v5 + 48))(v48, 1, v4))
  {
    sub_1000095E8(v48, &qword_101183A20, &unk_100EBCF80);
  }

  else
  {
    (*(v5 + 16))(v9, v48, v4);
    sub_1000095E8(v48, &qword_101183A20, &unk_100EBCF80);
    v49 = URL.absoluteString.getter();
    v51 = v50;
    (*(v5 + 8))(v9, v4);
    sub_10010FC20(&qword_101190BE0, &qword_100EC1580);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v53;
    *(inited + 48) = v49;
    *(inited + 56) = v51;
    v54 = sub_10010C578(inited);
    swift_setDeallocating();
    v19 = v81;
    sub_1000095E8(inited + 32, &qword_101183AA0, &unk_100ECAF50);
    *&v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v84 + 1) = v55;
    AnyHashable.init<A>(_:)();
    v85 = sub_10010FC20(&unk_10118A3F0, &qword_100ECDA70);
    *&v84 = v54;
    sub_100016270(&v84, v83);
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v82 = v36;
    sub_10006800C(v83, v86, v56);
    sub_10001621C(v86);
    v36 = v82;
  }

  objc_opt_self();
  v57 = swift_dynamicCastObjCClass();
  if (!v57)
  {

    return;
  }

  v58 = v57;
  v59 = v37;
  v60 = [v19 activityType];
  v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v63 = v62;

  if (v61 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v63 == v64)
  {

    v65 = v81;
  }

  else
  {
    v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v65 = v81;
    if ((v66 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v67 = [v65 webpageURL];
  if (v67)
  {
    v68 = v67;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 16))(v9, v7, v4);
    type metadata accessor for LaunchOptions(0);
    swift_allocObject();
    v69 = v59;
    sub_1002B8D68(v9, v36, v58);
    (*(v5 + 8))(v7, v4);
    goto LABEL_20;
  }

LABEL_19:

  type metadata accessor for LaunchOptions(0);
  swift_allocObject();
  v70 = v65;
  v71 = v59;
  if (!sub_1002C4B38(v70, v58))
  {

    return;
  }

LABEL_20:
  sub_1002C5A04();
}

double sub_10045D310(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v33 = a1;
  v34 = a3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = Logger.scenes.unsafeMutableAddressor();
  (*(v9 + 16))(v11, v12, v8);
  v13 = a2;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v35 = v31;
    *v16 = 136446210;
    v17 = [v13 description];
    v32 = a4;
    v18 = v17;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v15;
    v20 = v19;
    v30 = v8;
    v21 = v5;
    v23 = v22;

    v24 = sub_1000105AC(v20, v23, &v35);
    v5 = v21;

    *(v16 + 4) = v24;
    a4 = v32;
    _os_log_impl(&_mh_execute_header, v14, v29, "[MainSceneDelegate] performActionFor shortcutItem: %{public}s", v16, 0xCu);
    sub_10000959C(v31);

    (*(v9 + 8))(v11, v30);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  *(v5 + OBJC_IVAR____TtC5Music17MainSceneDelegate_hasStartedFromUserAction) = 1;
  type metadata accessor for LaunchOptions(0);
  swift_allocObject();
  v25 = v13;

  v26 = v33;
  if (sub_1002C3090(v25, v26, v34, a4))
  {
    sub_1002C5A04();
  }

  return result;
}

id sub_10045D7D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MainSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

NSString sub_10045D8A4()
{
  result = String._bridgeToObjectiveC()();
  qword_101218D40 = result;
  return result;
}

uint64_t sub_10045D8DC(void *a1, uint64_t *a2)
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

uint64_t sub_10045D994(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = Logger.scenes.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v6, v2);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136446210;
    v12 = [v7 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_1000105AC(v13, v15, &v19);

    *(v10 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "Main sceneWillResignActive %{public}s", v10, 0xCu);
    sub_10000959C(v11);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10045DB88(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = Logger.scenes.unsafeMutableAddressor();
  (*(v7 + 16))(v9, v10, v6);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_1000105AC(a1, a2, &v17);
    _os_log_impl(&_mh_execute_header, v11, v12, "[MainSceneDelegate] willContinueUserActivityWithType: %{public}s", v13, 0xCu);
    sub_10000959C(v14);
  }

  result = (*(v7 + 8))(v9, v6);
  *(v3 + OBJC_IVAR____TtC5Music17MainSceneDelegate_hasStartedFromUserAction) = 1;
  return result;
}

uint64_t Logger.libraryView.unsafeMutableAddressor()
{
  if (qword_10117F750 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_1000060E4(v0, static Logger.libraryView);
}

Swift::Int sub_10045DDF0(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10045DF18(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10045E054(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10045E174(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10045E2D4(__int16 a1)
{
  if (a1 == 6)
  {
    v1 = 5;
  }

  else
  {
    v1 = 8;
  }

  if (a1 == 4)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a1 <= 5u)
  {
    v1 = v2;
  }

  if ((a1 & 0x100) != 0)
  {
    v3 = 11;
  }

  else
  {
    v3 = 12;
  }

  if ((a1 & 0x100) != 0)
  {
    v4 = 10;
  }

  else
  {
    v4 = 9;
  }

  if (a1 != 2)
  {
    v3 = v4;
  }

  if (a1)
  {
    v5 = 3;
  }

  else
  {
    v5 = 6;
  }

  if (a1 > 1u)
  {
    v5 = v3;
  }

  if (a1 <= 3u)
  {
    return v5;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10045E340(unsigned __int8 a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

uint64_t sub_10045E540(char a1, char a2)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  if (((1 << a2) & 0x6E) != 0 || (result = 0, ((1 << a2) & 0x11) != 0))
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }

  return result;
}

unint64_t sub_10045E750@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10045FE40(*a1);
  *a2 = result;
  return result;
}

void sub_10045E780(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000656DLL;
  v4 = 0x614E747369747261;
  v5 = 0x8000000100E3C6C0;
  v6 = 0xD000000000000010;
  if (v2 != 6)
  {
    v6 = 0x7473696C79616C70;
    v5 = 0xEC00000065707954;
  }

  v7 = 0xE500000000000000;
  v8 = 0x656C746974;
  if (v2 != 4)
  {
    v8 = 0x79616C507473616CLL;
    v7 = 0xEE00657461446465;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB00000000657461;
  v10 = 0x44657361656C6572;
  if (v2 != 2)
  {
    v10 = 1918985593;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x8000000100E3C680;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_10045E968(void *a1, unsigned __int16 a2)
{
  v3 = a2;
  v5 = sub_10010FC20(&qword_101190C68, &qword_100ECDD48);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v10[-v7];
  sub_10000954C(a1, a1[3]);
  sub_1004600A8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = v3;
  v10[14] = 0;
  sub_100460150();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10[13] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_10045EB00(uint64_t a1, __int16 a2)
{
  v2 = HIBYTE(a2);
  String.hash(into:)();

  Hasher._combine(_:)(v2 & 1);
}

uint64_t sub_10045EC58(char a1)
{
  result = 0x736D75626C61;
  switch(a1)
  {
    case 1:
      result = 0x73747369747261;
      break;
    case 2:
      result = 0x7265736F706D6F63;
      break;
    case 3:
      result = 0x74616C69706D6F63;
      break;
    case 4:
      result = 0x6C507265646C6F66;
      break;
    case 5:
      result = 0x7365726E6567;
      break;
    case 6:
      result = 0x59726F466564616DLL;
      break;
    case 7:
      result = 0x736569766F6DLL;
      break;
    case 8:
      result = 0x646956636973756DLL;
      break;
    case 9:
      result = 0x7473696C79616C70;
      break;
    case 10:
      result = 0x796C746E65636572;
      break;
    case 11:
      result = 0x73676E6F73;
      break;
    case 12:
      result = 0x646F736970457674;
      break;
    case 13:
      result = 0x73776F68537674;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10045EDE8()
{
  if (*v0)
  {
    return 0x646E656373417369;
  }

  else
  {
    return 0x6E6F6974706FLL;
  }
}

void sub_10045EE28(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6974706FLL && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x646E656373417369 && a2 == 0xEB00000000676E69)
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

uint64_t sub_10045EF04(uint64_t a1)
{
  v2 = sub_1004600A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10045EF40(uint64_t a1)
{
  v2 = sub_1004600A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10045EF7C()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  sub_10045EB00(v5, v3 | v1);
  return Hasher._finalize()();
}

void sub_10045EFD4(uint64_t a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  sub_10045EB00(a1, v2 | *v1);
}

Swift::Int sub_10045EFF0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  if (v3)
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  sub_10045EB00(v6, v4 | v2);
  return Hasher._finalize()();
}

uint64_t sub_10045F044@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_10045FEE0(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = BYTE1(result) & 1;
  }

  return result;
}

uint64_t sub_10045F078(void *a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_10045E968(a1, v2 | *v1);
}

uint64_t sub_10045F0A8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return sub_1006B8B0C(*a1, *a2) & ~(v2 ^ v3) & 1;
}

uint64_t sub_10045F0E4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10045EC58(*a1);
  v5 = v4;
  if (v3 == sub_10045EC58(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10045F16C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10045EC58(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_10045F1D0(uint64_t a1)
{
  sub_10045EC58(*v1);
  String.hash(into:)();

  return result;
}

Swift::Int sub_10045F224(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_10045EC58(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10045F284@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1004601A4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10045F2B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10045EC58(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10045F2E0(char a1, char a2)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

uint64_t sub_10045F8A0()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, static Logger.libraryView);
  sub_1000060E4(v0, static Logger.libraryView);
  String.musicSubsystem.unsafeMutableAddressor();

  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.libraryView.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10117F750 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_1000060E4(v2, static Logger.libraryView);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t _s11ContentSortVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s11ContentSortVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s8CategoryOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s8CategoryOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10045FC9C()
{
  result = qword_101190C30;
  if (!qword_101190C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101190C30);
  }

  return result;
}

unint64_t sub_10045FCF4()
{
  result = qword_101190C38;
  if (!qword_101190C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101190C38);
  }

  return result;
}

unint64_t sub_10045FD4C()
{
  result = qword_101190C40;
  if (!qword_101190C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101190C40);
  }

  return result;
}

uint64_t sub_10045FDA0(uint64_t a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = NSUserDefaults.sortType(for:keyDomain:)(a1, 0, 0);

  if (v3 - 2) <= 8u && ((0x1DFu >> (v3 - 2)))
  {
    return word_100ECDE70[(v3 - 2)] | byte_100ECDE66[(v3 - 2)];
  }

  else
  {
    return 512;
  }
}

unint64_t sub_10045FE40(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10109AF08, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10045FE8C()
{
  result = qword_101190C48;
  if (!qword_101190C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101190C48);
  }

  return result;
}

uint64_t sub_10045FEE0(void *a1)
{
  v3 = sub_10010FC20(&qword_101190C50, &qword_100ECDD40);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v11[-v5];
  sub_10000954C(a1, a1[3]);
  sub_1004600A8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_10000959C(a1);
  }

  v11[14] = 0;
  sub_1004600FC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v7 = v11[15];
  v11[13] = 1;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_10000959C(a1);
  if (v8)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  return v10 | v7;
}

unint64_t sub_1004600A8()
{
  result = qword_101190C58;
  if (!qword_101190C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101190C58);
  }

  return result;
}

unint64_t sub_1004600FC()
{
  result = qword_101190C60;
  if (!qword_101190C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101190C60);
  }

  return result;
}

unint64_t sub_100460150()
{
  result = qword_101190C70;
  if (!qword_101190C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101190C70);
  }

  return result;
}