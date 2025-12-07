uint64_t sub_10031FDC4(uint64_t a1)
{
  sub_10032626C(&v9);
  if (v9)
  {
    sub_1000089F8(v10, &v6, &qword_10118B990, &unk_100EBE7B0);
    sub_1000095E8(&v9, &unk_10118B930, &unk_100EC71B0);
  }

  else
  {
    sub_1000095E8(&v9, &unk_10118B930, &unk_100EC71B0);
    v6 = 0u;
    v7 = 0u;
    v8 = 0;
  }

  v9 = a1;
  v10[0] = v6;
  v10[1] = v7;
  v11 = v8;
  sub_1000089F8(&v9, &v6, &unk_10118B930, &unk_100EC71B0);
  if (v6)
  {
    sub_100327244(&v6, &v5);
    v3 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    sub_10032727C(&v6);
  }

  else
  {
    v3 = 0;
  }

  [v1 setLocalObject:v3];
  swift_unknownObjectRelease();
  return sub_1000095E8(&v9, &unk_10118B930, &unk_100EC71B0);
}

uint64_t sub_10031FF04(uint64_t a1)
{
  sub_10032626C(v8);
  v3 = *&v8[0];
  if (*&v8[0])
  {

    sub_1000095E8(v8, &unk_10118B930, &unk_100EC71B0);
  }

  else
  {
    sub_1000095E8(v8, &unk_10118B930, &unk_100EC71B0);
    v3 = _swiftEmptyArrayStorage;
  }

  sub_1000089F8(a1, v8 + 8, &qword_10118B990, &unk_100EBE7B0);
  *&v8[0] = v3;
  sub_1000089F8(v8, v7, &unk_10118B930, &unk_100EC71B0);
  if (v7[0])
  {
    sub_100327244(v7, &v6);
    v4 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    sub_10032727C(v7);
  }

  else
  {
    v4 = 0;
  }

  [v1 setLocalObject:v4];
  swift_unknownObjectRelease();
  sub_1000095E8(a1, &qword_10118B990, &unk_100EBE7B0);
  return sub_1000095E8(v8, &unk_10118B930, &unk_100EC71B0);
}

void sub_10032004C(void *a1, void *a2)
{
  v5 = v2[13];
  v6 = v2[14];
  v2[13] = a1;
  v2[14] = a2;
  sub_1003275E0(a1, a2);
  sub_1003274BC(v5, v6);
  v7 = v2[9];
  if (v7)
  {
    v8 = v2[10];
    v9 = v2[13];
    v10 = v2[14];
    sub_100030444(v2[9], v8);
    sub_1003275E0(v9, v10);
    v7(v9, v10);
    sub_1003274BC(a1, a2);
    sub_100020438(v7, v8);
    v11 = v9;
    v12 = v10;
  }

  else
  {
    v11 = a1;
    v12 = a2;
  }

  sub_1003274BC(v11, v12);
}

double sub_100320424(void *a1, uint64_t (*a2)(void))
{
  v3 = a2();
  if (v3)
  {
    v5 = v3;
    sub_10032626C(v10);
    if (*&v10[0])
    {
      sub_1000089F8(v10 + 8, &v11, &qword_10118B990, &unk_100EBE7B0);
      sub_1000095E8(v10, &unk_10118B930, &unk_100EC71B0);
    }

    else
    {
      sub_1000095E8(v10, &unk_10118B930, &unk_100EC71B0);
      v11 = 0u;
      v12 = 0u;
      v13 = 0;
    }

    v6 = sub_1007A411C(&v11);
    if ([a1 localContext])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    v10[0] = v11;
    v10[1] = v12;
    if (*(&v12 + 1))
    {
      if (swift_dynamicCast())
      {
        if (v6 == 4 || v9 != v6)
        {

          return result;
        }

LABEL_19:
        sub_10010FC20(&qword_101183990, &qword_100EBC750);
        v8 = swift_allocObject();
        *&result = 1;
        *(v8 + 16) = xmmword_100EBC6C0;
        *(v8 + 32) = v5;
        return result;
      }
    }

    else
    {
      sub_1000095E8(v10, &unk_101183F30, qword_100EBF960);
    }

    if (v6 == 4)
    {
      v7 = 0;
    }

    else
    {
      LOBYTE(v10[0]) = v6;
      v7 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    [a1 setLocalContext:v7];
    swift_unknownObjectRelease();
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1003207B8(uint64_t a1)
{
  v3 = [v1 localDragSession];
  if (v3)
  {
    v23 = a1;
    v4 = [v3 items];
    swift_unknownObjectRelease();
    sub_100009F78(0, &qword_10118B920, UIDragItem_ptr);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
      goto LABEL_41;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v7 = 0;
      v8 = _swiftEmptyArrayStorage;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = sub_1007E97DC(v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }

          v9 = *(v5 + 8 * v7 + 32);
        }

        v10 = v9;
        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if ([v9 localObject])
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v24 = 0u;
          v25 = 0u;
        }

        v29 = v24;
        v30 = v25;
        if (*(&v25 + 1))
        {
          if ((swift_dynamicCast() & 1) != 0 && v26)
          {
            v29 = v26;
            v30 = v27;
            v31 = v28;
            v12 = v26;

            goto LABEL_20;
          }
        }

        else
        {
          sub_1000095E8(&v29, &unk_101183F30, qword_100EBF960);
        }

        v31 = 0u;
        v12 = _swiftEmptyArrayStorage;
        v29 = 0u;
        v30 = 0u;
LABEL_20:
        sub_1000095E8(&v29, &unk_10118B930, &unk_100EC71B0);

        v13 = v12[2];
        v14 = v8[2];
        v15 = v14 + v13;
        if (__OFADD__(v14, v13))
        {
          goto LABEL_37;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v15 <= v8[3] >> 1)
        {
          if (v12[2])
          {
            goto LABEL_29;
          }
        }

        else
        {
          if (v14 <= v15)
          {
            v17 = v14 + v13;
          }

          else
          {
            v17 = v14;
          }

          v8 = sub_100499B64(isUniquelyReferenced_nonNull_native, v17, 1, v8);
          if (v12[2])
          {
LABEL_29:
            if ((v8[3] >> 1) - v8[2] < v13)
            {
              goto LABEL_39;
            }

            sub_10010FC20(&qword_10119E600, &qword_100ECF0E0);
            swift_arrayInitWithCopy();

            if (v13)
            {
              v18 = v8[2];
              v19 = __OFADD__(v18, v13);
              v20 = v18 + v13;
              if (v19)
              {
                goto LABEL_40;
              }

              v8[2] = v20;
            }

            goto LABEL_6;
          }
        }

        if (v13)
        {
          goto LABEL_38;
        }

LABEL_6:
        ++v7;
        if (v11 == i)
        {
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      ;
    }

    v8 = _swiftEmptyArrayStorage;
LABEL_43:

    a1 = v23;
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  sub_100326348(a1);
  *&v29 = v8;
  sub_1001253DC(v21);
  return v29;
}

id sub_100320B08(void *a1, uint64_t a2, void (*a3)(__int128 *__return_ptr))
{
  v5 = [objc_allocWithZone(UIDropProposal) initWithDropOperation:0];
  a3(&v17);
  if (v18)
  {
    sub_100059A8C(&v17, v19);
    ObjectType = swift_getObjectType();
    v7 = sub_1003207B8(ObjectType);
    v8 = v20;
    v9 = v21;
    sub_10000954C(v19, v20);
    if (sub_10017BC1C(v7, v8, v9))
    {
      v10 = v20;
      v11 = v21;
      sub_10000954C(v19, v20);
      v12 = sub_10017BAC0(v7, v10, v11);
    }

    else
    {

      v12 = [objc_allocWithZone(UIDropProposal) initWithDropOperation:1];
    }

    v5 = v12;
    sub_10000959C(v19);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_unknownObjectRetain();
      v16 = v5;
      sub_10032004C(a1, v5);

      return v16;
    }

    else
    {
    }
  }

  else
  {
    sub_1000095E8(&v17, &unk_10119E610, &unk_100EC71A0);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v13 = v5;
      v14 = swift_unknownObjectRetain();
      sub_10032004C(v14, v5);

      return v13;
    }
  }

  return v5;
}

double sub_100320D00(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10032004C(0, 0);
  }

  return result;
}

void sub_100320D60(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr))
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v5 = &v26 - v4;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + 16);
  }

  else
  {
    v7 = 0;
  }

  ObjectType = swift_getObjectType();
  v9 = sub_1003207B8(ObjectType);
  if (qword_10117F268 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000060E4(v10, qword_1012186C8);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  v13 = os_log_type_enabled(v11, v12);
  v28 = v9;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v31[0] = v27;
    *v14 = 136446210;
    sub_10010FC20(&qword_10119E600, &qword_100ECF0E0);
    v15 = Array.description.getter();
    v17 = a3;
    v18 = v7;
    v19 = sub_1000105AC(v15, v16, v31);

    *(v14 + 4) = v19;
    v7 = v18;
    a3 = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "Will perform drop with intents=%{public}s.", v14, 0xCu);
    sub_10000959C(v27);
  }

  a3(&v29);
  if (v30)
  {
    sub_100059A8C(&v29, v31);
    static TaskPriority.userInitiated.getter();
    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v5, 0, 1, v20);
    sub_100008FE4(v31, &v29);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    sub_100059A8C(&v29, (v21 + 4));
    v21[9] = v28;
    v21[10] = v7;
    v22 = v7;
    sub_10035EB10(0, 0, v5, &unk_100EC7218, v21);

    sub_1000095E8(v5, &unk_101181520, &qword_100EBCC60);
    sub_10000959C(v31);
  }

  else
  {

    sub_1000095E8(&v29, &unk_10119E610, &unk_100EC71A0);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to locate destination.", v25, 2u);
    }
  }
}

uint64_t sub_100321150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[23] = a4;
  v7 = type metadata accessor for Notice(0);
  v6[26] = v7;
  v6[27] = *(v7 - 8);
  v6[28] = swift_task_alloc();
  sub_10010FC20(&unk_10118B980, &qword_100ECA530);
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();

  return _swift_task_switch(sub_100321258, 0, 0);
}

uint64_t sub_100321258()
{
  v23 = v0;
  v1 = v0[23];
  v2 = v0[24];
  v3 = v1[3];
  v4 = v1[4];
  sub_10000954C(v1, v3);
  if (sub_10017BC1C(v2, v3, v4))
  {
    v6 = v1[3];
    v5 = v1[4];
    sub_10000954C(v0[23], v6);
    v7 = swift_task_alloc();
    v0[31] = v7;
    *v7 = v0;
    v7[1] = sub_100321518;
    v8 = v0[30];
    v9 = v0[24];

    return sub_10017BE34(v8, v9, v6, v5);
  }

  else
  {
    if (qword_10117F268 != -1)
    {
      swift_once();
    }

    v11 = v0[23];
    v12 = type metadata accessor for Logger();
    sub_1000060E4(v12, qword_1012186C8);
    sub_100008FE4(v11, (v0 + 2));
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136446210;
      sub_100008FE4((v0 + 2), (v0 + 7));
      sub_10010FC20(&unk_10119E5F0, &unk_100EC7200);
      v17 = String.init<A>(describing:)();
      v19 = v18;
      sub_10000959C(v0 + 2);
      v20 = sub_1000105AC(v17, v19, &v22);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v13, v14, "Dropping to destination=%{public}s is unsupported.", v15, 0xCu);
      sub_10000959C(v16);
    }

    else
    {

      sub_10000959C(v0 + 2);
    }

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_100321518()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_100321AB8;
  }

  else
  {
    v2 = sub_10032162C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10032162C()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  sub_1000089F8(v0[30], v1, &unk_10118B980, &qword_100ECA530);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[29];
    sub_1000095E8(v0[30], &unk_10118B980, &qword_100ECA530);
LABEL_8:
    sub_1000095E8(v4, &unk_10118B980, &qword_100ECA530);

    v8 = v0[1];

    return v8();
  }

  v5 = v0[25];
  sub_1003270AC(v0[29], v0[28], type metadata accessor for Notice);
  if (!v5)
  {
    v4 = v0[30];
    sub_100327114(v0[28], type metadata accessor for Notice);
    goto LABEL_8;
  }

  v0[33] = type metadata accessor for MainActor();
  v0[34] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003217D8, v7, v6);
}

uint64_t sub_1003217D8()
{

  *(v0 + 280) = UIView.noticePresenter.getter();

  return _swift_task_switch(sub_10032184C, 0, 0);
}

uint64_t sub_10032184C(uint64_t a1)
{
  v2 = v1[35];
  if (v2)
  {
    v3 = *v2 + 200;
    v1[36] = *v3;
    v1[37] = v3 & 0xFFFFFFFFFFFFLL | 0x72F0000000000000;
    v1[38] = static MainActor.shared.getter();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100321980, v5, v4);
  }

  else
  {
    v6 = v1[30];
    sub_100327114(v1[28], type metadata accessor for Notice);
    sub_1000095E8(v6, &unk_10118B980, &qword_100ECA530);

    v7 = v1[1];

    return v7();
  }
}

uint64_t sub_100321980()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 224);

  v1(v2, 0);

  return _swift_task_switch(sub_100321A0C, 0, 0);
}

uint64_t sub_100321A0C()
{
  v1 = v0[30];
  sub_100327114(v0[28], type metadata accessor for Notice);
  sub_1000095E8(v1, &unk_10118B980, &qword_100ECA530);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100321AB8()
{
  v18 = v0;
  if (qword_10117F268 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = type metadata accessor for Logger();
  sub_1000060E4(v2, qword_1012186C8);
  sub_100008FE4(v1, (v0 + 12));
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[32];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v7 = 136446466;
    sub_100008FE4((v0 + 12), (v0 + 17));
    sub_10010FC20(&unk_10119E5F0, &unk_100EC7200);
    v8 = String.init<A>(describing:)();
    v10 = v9;
    sub_10000959C(v0 + 12);
    v11 = sub_1000105AC(v8, v10, &v17);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    v0[22] = v6;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v12 = String.init<A>(describing:)();
    v14 = sub_1000105AC(v12, v13, &v17);

    *(v7 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to perform drop on destination=%{public}s. Error=%{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000959C(v0 + 12);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_100321D34()
{
  sub_100020438(*(v0 + 24), *(v0 + 32));
  sub_100020438(*(v0 + 40), *(v0 + 48));
  sub_100020438(*(v0 + 56), *(v0 + 64));
  sub_100020438(*(v0 + 72), *(v0 + 80));
  swift_unknownObjectRelease();
  sub_1003274BC(*(v0 + 104), *(v0 + 112));

  return v0;
}

uint64_t sub_100321DA4()
{
  sub_100321D34();

  return swift_deallocClassInstance();
}

void sub_100321DD8()
{
  if (*(v0 + 88) == 1)
  {
    v1 = *(v0 + 24);
    if (v1)
    {
      v2 = *(v0 + 32);
      v3 = OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dragDelegate;
      v4 = *(v0 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dragDelegate);
      if (v4)
      {

        v5 = v4;
      }

      else
      {
        v8 = objc_allocWithZone(type metadata accessor for CollectionViewDragDropController.DragDelegate());

        v5 = [v8 init];
      }

      v9 = swift_allocObject();
      *(v9 + 16) = v1;
      *(v9 + 24) = v2;
      v10 = &v5[OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DragDelegate_dragItemsProvider];
      v11 = *&v5[OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DragDelegate_dragItemsProvider];
      v12 = *&v5[OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DragDelegate_dragItemsProvider + 8];
      *v10 = sub_10032723C;
      v10[1] = v9;
      v13 = v4;
      sub_100020438(v11, v12);
      v14 = swift_allocObject();
      swift_weakInit();
      v15 = &v5[OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DragDelegate_onDragSessionWillBegin];
      v16 = *&v5[OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DragDelegate_onDragSessionWillBegin];
      v17 = *&v5[OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DragDelegate_onDragSessionWillBegin + 8];
      *v15 = sub_1003277A0;
      v15[1] = v14;

      sub_100020438(v16, v17);

      v18 = swift_allocObject();
      swift_weakInit();
      v19 = &v5[OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DragDelegate_onDragSessionDidEnd];
      v20 = *&v5[OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DragDelegate_onDragSessionDidEnd];
      v21 = *&v5[OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DragDelegate_onDragSessionDidEnd + 8];
      *v19 = sub_1003277A4;
      v19[1] = v18;

      sub_100020438(v20, v21);

      v24 = *(v0 + v3);
      *(v0 + v3) = v5;
      v22 = *(v0 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dragDelegate);
      v23 = v5;
      if (v22)
      {
        if (v22 == v24)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (!v24)
        {
LABEL_18:

          goto LABEL_19;
        }

        v22 = 0;
      }

      [*(v0 + 16) setDragDelegate:v22];
      goto LABEL_18;
    }
  }

  v6 = *(v0 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dragDelegate);
  *(v0 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dragDelegate) = 0;
  v7 = *(v0 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dragDelegate);
  if (v7)
  {
    if (v7 == v6)
    {
      goto LABEL_20;
    }

    v24 = v6;
  }

  else
  {
    if (!v6)
    {
      goto LABEL_20;
    }

    v24 = v6;
    v7 = 0;
  }

  [*(v0 + 16) setDragDelegate:v7];
LABEL_19:
  v6 = v24;
LABEL_20:
}

void sub_100322048()
{
  if (*(v0 + 88) == 1)
  {
    v1 = *(v0 + 40);
    if (v1)
    {
      v2 = *(v0 + 48);
      v3 = OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dropDelegate;
      v4 = *(v0 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dropDelegate);
      if (v4)
      {

        v5 = v4;
      }

      else
      {
        v8 = objc_allocWithZone(type metadata accessor for CollectionViewDragDropController.DropDelegate());

        v5 = [v8 init];
      }

      v9 = &v5[OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate_canHandleSession];
      v10 = *&v5[OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate_canHandleSession];
      v11 = *&v5[OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate_canHandleSession + 8];
      *v9 = sub_10032779C;
      *(v9 + 1) = 0;
      v12 = v4;
      sub_100020438(v10, v11);
      v13 = swift_allocObject();
      swift_weakInit();
      v14 = swift_allocObject();
      *(v14 + 2) = v13;
      *(v14 + 3) = v1;
      *(v14 + 4) = v2;
      v15 = &v5[OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate_onPerformDrop];
      v16 = *&v5[OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate_onPerformDrop];
      v17 = *&v5[OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate_onPerformDrop + 8];
      *v15 = sub_1003261DC;
      v15[1] = v14;
      sub_100030444(v1, v2);

      sub_100020438(v16, v17);

      v18 = swift_allocObject();
      swift_weakInit();
      v19 = swift_allocObject();
      *(v19 + 2) = v18;
      *(v19 + 3) = v1;
      *(v19 + 4) = v2;
      v20 = &v5[OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate_onDropSessionDidUpdate];
      v21 = *&v5[OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate_onDropSessionDidUpdate];
      v22 = *&v5[OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate_onDropSessionDidUpdate + 8];
      *v20 = sub_1003261E8;
      v20[1] = v19;

      sub_100020438(v21, v22);

      v23 = swift_allocObject();
      swift_weakInit();
      v24 = &v5[OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate_onDropSessionDidExitOrEnd];
      v25 = *&v5[OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate_onDropSessionDidExitOrEnd];
      v26 = *&v5[OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate_onDropSessionDidExitOrEnd + 8];
      *v24 = sub_1003261F4;
      v24[1] = v23;

      sub_100020438(v25, v26);

      v29 = *(v0 + v3);
      *(v0 + v3) = v5;
      v27 = *(v0 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dropDelegate);
      v28 = v5;
      if (v27)
      {
        if (v27 == v29)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (!v29)
        {
LABEL_18:

          goto LABEL_19;
        }

        v27 = 0;
      }

      [*(v0 + 16) setDropDelegate:v27];
      goto LABEL_18;
    }
  }

  v6 = *(v0 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dropDelegate);
  *(v0 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dropDelegate) = 0;
  v7 = *(v0 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dropDelegate);
  if (v7)
  {
    if (v7 == v6)
    {
      goto LABEL_20;
    }

    v29 = v6;
  }

  else
  {
    if (!v6)
    {
      goto LABEL_20;
    }

    v29 = v6;
    v7 = 0;
  }

  [*(v0 + 16) setDropDelegate:v7];
LABEL_19:
  v6 = v29;
LABEL_20:
}

void sub_10032234C(char a1)
{
  v2 = *(v1 + 88);
  *(v1 + 88) = a1;
  if (v2 == (a1 & 1))
  {
    return;
  }

  if (a1)
  {
    sub_100321DD8();

    sub_100322048();
    return;
  }

  v3 = *(v1 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dragDelegate);
  *(v1 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dragDelegate) = 0;
  v4 = *(v1 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dragDelegate);
  if (!v4)
  {
    if (!v3)
    {
      goto LABEL_13;
    }

    v4 = 0;
    goto LABEL_12;
  }

  if (v4 != v3)
  {
LABEL_12:
    [*(v1 + 16) setDragDelegate:v4];
  }

LABEL_13:

  v5 = *(v1 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dropDelegate);
  *(v1 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dropDelegate) = 0;
  v6 = *(v1 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dropDelegate);
  if (v6)
  {
    if (v6 != v5)
    {
      v7 = v5;
LABEL_18:
      [*(v1 + 16) setDropDelegate:v6];
      v5 = v7;
    }
  }

  else if (v5)
  {
    v7 = v5;
    v6 = 0;
    goto LABEL_18;
  }
}

double sub_10032245C(uint64_t a1)
{
  v1[12] = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v2 = v1[7];
  if (v2)
  {
    v3 = v1[8];
    sub_100030444(v1[7], v3);
    v4 = swift_unknownObjectRetain();
    v2(v4);
    swift_unknownObjectRelease();
    sub_100020438(v2, v3);
  }

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_1003224FC(char *a1)
{
  sub_10010FC20(&unk_10118B910, L"b\v\a");
  __chkstk_darwin();
  v4 = &v9 - v3;
  v5 = OBJC_IVAR____TtC5Music32CollectionViewDragDropController_activeDropContext;
  swift_beginAccess();
  sub_1003261FC(a1, v1 + v5);
  swift_endAccess();
  v6 = *(v1 + 72);
  if (v6)
  {
    v7 = *(v1 + 80);
    sub_1000089F8(v1 + v5, v4, &unk_10118B910, L"b\v\a");

    v6(v4);
    sub_100020438(v6, v7);
    sub_1000095E8(a1, &unk_10118B910, L"b\v\a");
    a1 = v4;
  }

  return sub_1000095E8(a1, &unk_10118B910, L"b\v\a");
}

id sub_100322B34()
{
  v0 = [objc_allocWithZone(_UIDragSessionProperties) init];
  [v0 set_supportsSystemDrag:0];

  return v0;
}

uint64_t sub_100322C08(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void, void), void *a5, void *a6)
{
  a4(*(a1 + *a3), *(a1 + *a3 + 8));
  sub_100020438(*(a1 + *a5), *(a1 + *a5 + 8));
  v9 = (a1 + *a6);
  v10 = *v9;
  v11 = v9[1];

  return sub_100020438(v10, v11);
}

double sub_100322C78(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = a3(a2);
  if (v4)
  {
    v6 = v4;
    sub_10032626C(v11);
    if (*&v11[0])
    {
      sub_1000089F8(v11 + 8, &v12, &qword_10118B990, &unk_100EBE7B0);
      sub_1000095E8(v11, &unk_10118B930, &unk_100EC71B0);
    }

    else
    {
      sub_1000095E8(v11, &unk_10118B930, &unk_100EC71B0);
      v12 = 0u;
      v13 = 0u;
      v14 = 0;
    }

    v7 = sub_1007A411C(&v12);
    if ([a1 localContext])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
    }

    v11[0] = v12;
    v11[1] = v13;
    if (*(&v13 + 1))
    {
      if (swift_dynamicCast())
      {
        if (v7 == 4 || v10 != v7 || v7 == 3)
        {

          return result;
        }

LABEL_20:
        sub_10010FC20(&qword_101183990, &qword_100EBC750);
        v9 = swift_allocObject();
        *&result = 1;
        *(v9 + 16) = xmmword_100EBC6C0;
        *(v9 + 32) = v6;
        return result;
      }
    }

    else
    {
      sub_1000095E8(v11, &unk_101183F30, qword_100EBF960);
    }

    if (v7 == 4)
    {
      v8 = 0;
    }

    else
    {
      LOBYTE(v11[0]) = v7;
      v8 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    [a1 setLocalContext:v8];
    swift_unknownObjectRelease();
    goto LABEL_20;
  }

  return result;
}

double sub_100322E74(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v3 = swift_unknownObjectRetain();
    sub_10032245C(v3);
  }

  return result;
}

double sub_100322ED8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10032245C(0);
  }

  return result;
}

uint64_t sub_100322F40(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = &a1[*a5];
  v6 = *v5;
  if (*v5)
  {
    v9 = *(v5 + 1);
    swift_unknownObjectRetain();
    v10 = a1;
    sub_100030444(v6, v9);
    v11 = v6(a4);
    swift_unknownObjectRelease();

    sub_100020438(v6, v9);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

char *sub_1003231E8(char *result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void (*)(uint64_t), uint64_t), uint64_t (*a7)(void (*)(uint64_t), uint64_t))
{
  v7 = &result[*a5];
  v8 = *v7;
  if (*v7)
  {
    v11 = result;
    v12 = *(v7 + 1);
    swift_unknownObjectRetain();
    v13 = v11;
    a6(v8, v12);
    v8(a4);
    swift_unknownObjectRelease();

    return a7(v8, v12);
  }

  return result;
}

id sub_100323350(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

BOOL sub_10032340C()
{
  ObjectType = swift_getObjectType();
  v1 = *(sub_1003207B8(ObjectType) + 16);

  return v1 != 0;
}

void sub_100323444(void *a1, uint64_t a2, void (*a3)(__int128 *__return_ptr, char *), uint64_t a4)
{
  v111 = a3;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v109 = v94 - v6;
  v7 = type metadata accessor for IndexPath();
  v112 = *(v7 - 8);
  __chkstk_darwin();
  v101 = v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_10010FC20(&unk_10118B970, &qword_100EC71E0);
  __chkstk_darwin();
  v104 = v94 - v9;
  sub_10010FC20(&unk_10118B910, L"b\v\a");
  __chkstk_darwin();
  v108 = v94 - v10;
  v107 = type metadata accessor for CollectionViewDragDropController.DropContext(0);
  v106 = *(v107 - 8);
  __chkstk_darwin();
  v12 = v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v102 = v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v105 = v94 - v15;
  __chkstk_darwin();
  v17 = v94 - v16;
  __chkstk_darwin();
  v19 = v94 - v18;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v21 = Strong;
  v22 = [a1 session];
  ObjectType = swift_getObjectType();
  v114 = sub_1003207B8(ObjectType);
  swift_unknownObjectRelease();
  v24 = [a1 destinationIndexPath];
  v98 = v12;
  if (v24)
  {
    v25 = v24;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = *(v112 + 56);
  v95 = v7;
  v27(v19, v26, 1, v7);
  v28 = swift_allocBox();
  v113 = v29;
  sub_100326F64(v19, v29);
  if (qword_10117F268 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  v31 = sub_1000060E4(v30, qword_1012186C8);
  swift_unknownObjectRetain();

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  swift_unknownObjectRelease();
  v99 = v33;
  v34 = os_log_type_enabled(v32, v33);
  v94[1] = v13;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v96 = v31;
    v36 = v35;
    v37 = swift_slowAlloc();
    v110 = v17;
    v117 = v37;
    *v36 = 136446722;
    v38 = [a1 proposal];
    v97 = a4;
    v39 = v38;
    v40 = [v38 intent];
    v100 = v28;
    v41 = v40;

    *&v115 = v41;
    type metadata accessor for Intent(0);
    v42 = String.init<A>(describing:)();
    v44 = sub_1000105AC(v42, v43, &v117);

    *(v36 + 4) = v44;
    *(v36 + 12) = 2082;
    v45 = v113;
    swift_beginAccess();
    sub_1000089F8(v45, v110, &unk_10118BCE0, &qword_100EC6450);
    v46 = String.init<A>(describing:)();
    v48 = sub_1000105AC(v46, v47, &v117);

    *(v36 + 14) = v48;
    *(v36 + 22) = 2082;
    sub_10010FC20(&qword_10119E600, &qword_100ECF0E0);
    v49 = Array.description.getter();
    v51 = sub_1000105AC(v49, v50, &v117);
    a4 = v97;

    *(v36 + 24) = v51;
    v28 = v100;
    _os_log_impl(&_mh_execute_header, v32, v99, "Will perform drop with intent=%{public}s, destination indexPath=%{public}s, and intents=%{public}s.", v36, 0x20u);
    swift_arrayDestroy();
    v17 = v110;

    v31 = v96;
  }

  v52 = [a1 proposal];
  v53 = [v52 intent];

  if (v53 == 2)
  {
    v54 = OBJC_IVAR____TtC5Music32CollectionViewDragDropController_activeDropContext;
    swift_beginAccess();
    v55 = v108;
    sub_1000089F8(v21 + v54, v108, &unk_10118B910, L"b\v\a");
    v56 = v107;
    if ((*(v106 + 48))(v55, 1, v107) == 1)
    {
      sub_1000095E8(v55, &unk_10118B910, L"b\v\a");
      goto LABEL_26;
    }

    v57 = a4;
    v110 = v17;
    v100 = v28;
    v58 = v98;
    sub_1003270AC(v55, v98, type metadata accessor for CollectionViewDragDropController.DropContext);
    v59 = *(v56 + 24);
    v60 = v105;
    sub_1000089F8(v58 + v59, v105, &unk_10118BCE0, &qword_100EC6450);
    v61 = *(v112 + 48);
    v62 = v95;
    if (v61(v60, 1, v95) != 1)
    {
      sub_100327114(v58, type metadata accessor for CollectionViewDragDropController.DropContext);
      sub_1000095E8(v60, &unk_10118BCE0, &qword_100EC6450);
      v28 = v100;
      v17 = v110;
      goto LABEL_26;
    }

    v96 = v31;
    v97 = v57;
    sub_1000095E8(v60, &unk_10118BCE0, &qword_100EC6450);
    v63 = v113;
    swift_beginAccess();
    v64 = *(v103 + 48);
    v65 = v63;
    v66 = v104;
    sub_1000089F8(v65, v104, &unk_10118BCE0, &qword_100EC6450);
    v108 = v59;
    sub_1000089F8(v58 + v59, v66 + v64, &unk_10118BCE0, &qword_100EC6450);
    if (v61(v66, 1, v62) == 1)
    {
      v67 = v61(v66 + v64, 1, v62);
      v17 = v110;
      v68 = v113;
      if (v67 == 1)
      {
        sub_1000095E8(v66, &unk_10118BCE0, &qword_100EC6450);
LABEL_24:
        sub_100327114(v98, type metadata accessor for CollectionViewDragDropController.DropContext);
LABEL_25:
        v28 = v100;
        goto LABEL_26;
      }
    }

    else
    {
      v69 = v102;
      sub_1000089F8(v66, v102, &unk_10118BCE0, &qword_100EC6450);
      v70 = v62;
      if (v61(v66 + v64, 1, v62) != 1)
      {
        v79 = v112;
        v80 = v101;
        (*(v112 + 32))(v101, v66 + v64, v62);
        sub_1003271E4();
        v81 = dispatch thunk of static Equatable.== infix(_:_:)();
        v82 = *(v79 + 8);
        v82(v80, v70);
        v82(v69, v70);
        sub_1000095E8(v66, &unk_10118BCE0, &qword_100EC6450);
        v17 = v110;
        v68 = v113;
        if (v81)
        {
          goto LABEL_24;
        }

LABEL_20:

        v71 = Logger.logObject.getter();
        v72 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v117 = v74;
          *v73 = 136446210;
          sub_1000089F8(v68, v17, &unk_10118BCE0, &qword_100EC6450);
          v75 = String.init<A>(describing:)();
          v77 = sub_1000105AC(v75, v76, &v117);

          *(v73 + 4) = v77;
          v17 = v110;
          _os_log_impl(&_mh_execute_header, v71, v72, "Changed destination indexPath from %{public}s to nil.", v73, 0xCu);
          sub_10000959C(v74);
        }

        v78 = v98;
        sub_1000089F8(&v98[v108], v17, &unk_10118BCE0, &qword_100EC6450);
        sub_100327114(v78, type metadata accessor for CollectionViewDragDropController.DropContext);
        sub_100327174(v17, v68);
        goto LABEL_25;
      }

      (*(v112 + 8))(v69, v62);
      v17 = v110;
      v68 = v113;
    }

    sub_1000095E8(v66, &unk_10118B970, &qword_100EC71E0);
    goto LABEL_20;
  }

LABEL_26:
  v83 = v113;
  swift_beginAccess();
  sub_1000089F8(v83, v17, &unk_10118BCE0, &qword_100EC6450);
  v111(&v115, v17);
  sub_1000095E8(v17, &unk_10118BCE0, &qword_100EC6450);
  if (v116)
  {
    sub_100059A8C(&v115, &v117);
    v84 = v109;
    static TaskPriority.userInitiated.getter();
    v85 = type metadata accessor for TaskPriority();
    (*(*(v85 - 8) + 56))(v84, 0, 1, v85);
    sub_100008FE4(&v117, &v115);
    v86 = swift_allocObject();
    v86[2] = 0;
    v86[3] = 0;
    sub_100059A8C(&v115, (v86 + 4));
    v86[9] = v114;
    v86[10] = v28;
    v86[11] = a1;
    v86[12] = v21;
    swift_unknownObjectRetain();

    sub_10035EB10(0, 0, v84, &unk_100EC71F0, v86);

    sub_1000095E8(v84, &unk_101181520, &qword_100EBCC60);
    sub_10000959C(&v117);
  }

  else
  {

    sub_1000095E8(&v115, &unk_10119E610, &unk_100EC71A0);

    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v117 = v90;
      *v89 = 136446210;
      sub_1000089F8(v113, v17, &unk_10118BCE0, &qword_100EC6450);
      v91 = String.init<A>(describing:)();
      v93 = sub_1000105AC(v91, v92, &v117);

      *(v89 + 4) = v93;
      _os_log_impl(&_mh_execute_header, v87, v88, "Failed to locate destination at index path=%{public}s.", v89, 0xCu);
      sub_10000959C(v90);
    }
  }
}

uint64_t sub_100324364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[28] = a7;
  v8[29] = a8;
  v8[26] = a4;
  v8[27] = a5;
  v9 = type metadata accessor for Notice(0);
  v8[30] = v9;
  v8[31] = *(v9 - 8);
  v8[32] = swift_task_alloc();
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  v8[33] = swift_task_alloc();
  v10 = type metadata accessor for IndexPath();
  v8[34] = v10;
  v8[35] = *(v10 - 8);
  v8[36] = swift_task_alloc();
  sub_10010FC20(&unk_10118B980, &qword_100ECA530);
  v8[37] = swift_task_alloc();
  v8[38] = swift_task_alloc();
  v8[39] = swift_projectBox();

  return _swift_task_switch(sub_100324510, 0, 0);
}

uint64_t sub_100324510()
{
  v23 = v0;
  v1 = v0[26];
  v2 = v0[27];
  v3 = v1[3];
  v4 = v1[4];
  sub_10000954C(v1, v3);
  if (sub_10017BC1C(v2, v3, v4))
  {
    v6 = v1[3];
    v5 = v1[4];
    sub_10000954C(v0[26], v6);
    v7 = swift_task_alloc();
    v0[40] = v7;
    *v7 = v0;
    v7[1] = sub_1003247E4;
    v8 = v0[38];
    v9 = v0[27];

    return sub_10017BE34(v8, v9, v6, v5);
  }

  else
  {
    if (qword_10117F268 != -1)
    {
      swift_once();
    }

    v11 = v0[26];
    v12 = type metadata accessor for Logger();
    sub_1000060E4(v12, qword_1012186C8);
    sub_100008FE4(v11, (v0 + 2));
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136446210;
      sub_100008FE4((v0 + 2), (v0 + 7));
      sub_10010FC20(&unk_10119E5F0, &unk_100EC7200);
      v17 = String.init<A>(describing:)();
      v19 = v18;
      sub_10000959C(v0 + 2);
      v20 = sub_1000105AC(v17, v19, &v22);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v13, v14, "Dropping to destination=%{public}s is unsupported.", v15, 0xCu);
      sub_10000959C(v16);
    }

    else
    {

      sub_10000959C(v0 + 2);
    }

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_1003247E4()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_1003255D8;
  }

  else
  {
    v2 = sub_1003248F8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003248F8()
{
  v1 = v0[39];
  v2 = v0[34];
  v3 = v0[35];
  v4 = v0[33];
  swift_beginAccess();
  sub_1000089F8(v1, v4, &unk_10118BCE0, &qword_100EC6450);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_1000095E8(v0[33], &unk_10118BCE0, &qword_100EC6450);
    v5 = v0[37];
    v6 = v0[30];
    v7 = v0[31];
    sub_1000089F8(v0[38], v5, &unk_10118B980, &qword_100ECA530);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      v8 = v0[37];
      sub_1000095E8(v0[38], &unk_10118B980, &qword_100ECA530);
      sub_1000095E8(v8, &unk_10118B980, &qword_100ECA530);

      v9 = v0[1];

      return v9();
    }

    v15 = v0[29];
    sub_1003270AC(v0[37], v0[32], type metadata accessor for Notice);
    v0[53] = *(v15 + 16);
    v0[54] = type metadata accessor for MainActor();
    v0[55] = static MainActor.shared.getter();
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v16;
    v14 = sub_1003252BC;
  }

  else
  {
    (*(v0[35] + 32))(v0[36], v0[33], v0[34]);
    v0[42] = type metadata accessor for MainActor();
    v0[43] = static MainActor.shared.getter();
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v12;
    v14 = sub_100324B74;
  }

  return _swift_task_switch(v14, v11, v13);
}

uint64_t sub_100324B74()
{
  v1 = *(v0 + 224);

  *(v0 + 352) = [v1 session];

  return _swift_task_switch(sub_100324BFC, 0, 0);
}

uint64_t sub_100324BFC(uint64_t a1)
{
  *(v1 + 360) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100324C88, v3, v2);
}

uint64_t sub_100324C88()
{
  v1 = *(v0 + 352);

  *(v0 + 368) = [v1 items];
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_100324D14, 0, 0);
}

uint64_t sub_100324D14()
{
  v1 = *(v0 + 368);
  sub_100009F78(0, &qword_10118B920, UIDragItem_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 376) = v2;

  if (v2 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    *(v0 + 384) = v5;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 384) = v5;
    if (v5)
    {
LABEL_3:
      if (v5 < 1)
      {
        __break(1u);
        return _swift_task_switch(v5, v3, v4);
      }

      *(v0 + 392) = 0;
      v6 = *(v0 + 376);
      if ((v6 & 0xC000000000000001) != 0)
      {
        v7 = sub_1007E97DC(0, v6);
      }

      else
      {
        v7 = *(v6 + 32);
      }

      *(v0 + 400) = v7;
      *(v0 + 408) = IndexPath._bridgeToObjectiveC()();
      *(v0 + 416) = static MainActor.shared.getter();
      v8 = dispatch thunk of Actor.unownedExecutor.getter();
      v10 = v9;
      v11 = sub_100324FC0;
LABEL_14:
      v5 = v11;
      v3 = v8;
      v4 = v10;

      return _swift_task_switch(v5, v3, v4);
    }
  }

  v13 = *(v0 + 280);
  v12 = *(v0 + 288);
  v14 = *(v0 + 272);

  (*(v13 + 8))(v12, v14);
  v15 = *(v0 + 296);
  v16 = *(v0 + 240);
  v17 = *(v0 + 248);
  sub_1000089F8(*(v0 + 304), v15, &unk_10118B980, &qword_100ECA530);
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    v21 = *(v0 + 232);
    sub_1003270AC(*(v0 + 296), *(v0 + 256), type metadata accessor for Notice);
    *(v0 + 424) = *(v21 + 16);
    *(v0 + 432) = type metadata accessor for MainActor();
    *(v0 + 440) = static MainActor.shared.getter();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v22;
    v11 = sub_1003252BC;
    goto LABEL_14;
  }

  v18 = *(v0 + 296);
  sub_1000095E8(*(v0 + 304), &unk_10118B980, &qword_100ECA530);
  sub_1000095E8(v18, &unk_10118B980, &qword_100ECA530);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_100324FC0()
{
  v1 = v0[51];
  v2 = v0[50];
  v3 = v0[28];

  v4 = [v3 dropItem:v2 toItemAtIndexPath:v1];
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_100325060, 0, 0);
}

uint64_t sub_100325060()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 384);

  if (v1 + 1 == v2)
  {
    v4 = *(v0 + 280);
    v3 = *(v0 + 288);
    v5 = *(v0 + 272);

    (*(v4 + 8))(v3, v5);
    v6 = *(v0 + 296);
    v7 = *(v0 + 240);
    v8 = *(v0 + 248);
    sub_1000089F8(*(v0 + 304), v6, &unk_10118B980, &qword_100ECA530);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      v9 = *(v0 + 296);
      sub_1000095E8(*(v0 + 304), &unk_10118B980, &qword_100ECA530);
      sub_1000095E8(v9, &unk_10118B980, &qword_100ECA530);

      v10 = *(v0 + 8);

      return v10();
    }

    v15 = *(v0 + 232);
    sub_1003270AC(*(v0 + 296), *(v0 + 256), type metadata accessor for Notice);
    *(v0 + 424) = *(v15 + 16);
    *(v0 + 432) = type metadata accessor for MainActor();
    *(v0 + 440) = static MainActor.shared.getter();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    v19 = sub_1003252BC;
  }

  else
  {
    v12 = *(v0 + 392) + 1;
    *(v0 + 392) = v12;
    v13 = *(v0 + 376);
    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = sub_1007E97DC(v12, v13);
    }

    else
    {
      v14 = *(v13 + 8 * v12 + 32);
    }

    *(v0 + 400) = v14;
    *(v0 + 408) = IndexPath._bridgeToObjectiveC()();
    *(v0 + 416) = static MainActor.shared.getter();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v20;
    v19 = sub_100324FC0;
  }

  return _swift_task_switch(v19, v16, v18);
}

uint64_t sub_1003252BC()
{

  *(v0 + 448) = UIView.noticePresenter.getter();

  return _swift_task_switch(sub_100325330, 0, 0);
}

uint64_t sub_100325330(uint64_t a1)
{
  v2 = v1[56];
  if (v2)
  {
    v3 = *v2 + 200;
    v1[57] = *v3;
    v1[58] = v3 & 0xFFFFFFFFFFFFLL | 0x72F0000000000000;
    v1[59] = static MainActor.shared.getter();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100325484, v5, v4);
  }

  else
  {
    v6 = v1[38];
    sub_100327114(v1[32], type metadata accessor for Notice);
    sub_1000095E8(v6, &unk_10118B980, &qword_100ECA530);

    v7 = v1[1];

    return v7();
  }
}

uint64_t sub_100325484()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 256);

  v1(v2, 0);

  return _swift_task_switch(sub_100325510, 0, 0);
}

uint64_t sub_100325510()
{
  v1 = v0[38];
  sub_100327114(v0[32], type metadata accessor for Notice);
  sub_1000095E8(v1, &unk_10118B980, &qword_100ECA530);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1003255D8()
{
  v18 = v0;
  if (qword_10117F268 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = type metadata accessor for Logger();
  sub_1000060E4(v2, qword_1012186C8);
  sub_100008FE4(v1, (v0 + 12));
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[41];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v7 = 136446466;
    sub_100008FE4((v0 + 12), (v0 + 17));
    sub_10010FC20(&unk_10119E5F0, &unk_100EC7200);
    v8 = String.init<A>(describing:)();
    v10 = v9;
    sub_10000959C(v0 + 12);
    v11 = sub_1000105AC(v8, v10, &v17);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    v0[25] = v6;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v12 = String.init<A>(describing:)();
    v14 = sub_1000105AC(v12, v13, &v17);

    *(v7 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to perform drop on destination=%{public}s. Error=%{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000959C(v0 + 12);
  }

  v15 = v0[1];

  return v15();
}

id sub_100325868(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *__return_ptr, uint64_t))
{
  sub_10010FC20(&unk_10118B910, L"b\v\a");
  __chkstk_darwin();
  v8 = &v23 - v7;
  v9 = [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:0];
  v28 = v9;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    a4(&v23, a2);
    if (v24)
    {
      sub_100059A8C(&v23, v25);
      ObjectType = swift_getObjectType();
      v13 = sub_1003207B8(ObjectType);
      v14 = v26;
      v15 = v27;
      sub_10000954C(v25, v26);
      if (sub_10017BC1C(v13, v14, v15))
      {
        v16 = v26;
        v17 = v27;
        sub_10000954C(v25, v26);
        v18 = sub_10017BAC0(v13, v16, v17);

        objc_opt_self();
        v19 = swift_dynamicCastObjCClass();
        if (!v19)
        {

          v19 = [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:0];
        }

        sub_10000959C(v25);
      }

      else
      {

        v21 = [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:1];

        v28 = v21;
        v9 = v21;
        sub_10000959C(v25);
        v19 = v9;
      }
    }

    else
    {
      sub_1000095E8(&v23, &unk_10119E610, &unk_100EC71A0);
      v20 = type metadata accessor for CollectionViewDragDropController.DropContext(0);
      (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
      sub_1003224FC(v8);
      v9 = v9;
      v19 = v9;
    }

    sub_100325B08(v11, a1, &v28, a2);

    return v19;
  }

  return v9;
}

uint64_t sub_100325B08(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  sub_10010FC20(&unk_10118B910, L"b\v\a");
  __chkstk_darwin();
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = (&v19 - v10);
  v12 = *a3;
  v13 = type metadata accessor for CollectionViewDragDropController.DropContext(0);
  sub_1000089F8(a4, v11 + *(v13 + 24), &unk_10118BCE0, &qword_100EC6450);
  *v11 = a2;
  v11[1] = v12;
  (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  v14 = OBJC_IVAR____TtC5Music32CollectionViewDragDropController_activeDropContext;
  swift_beginAccess();
  v15 = v12;
  swift_unknownObjectRetain();
  sub_1003261FC(v11, a1 + v14);
  swift_endAccess();
  v16 = *(a1 + 72);
  if (v16)
  {
    v17 = *(a1 + 80);
    sub_1000089F8(a1 + v14, v9, &unk_10118B910, L"b\v\a");

    v16(v9);
    sub_100020438(v16, v17);
    sub_1000095E8(v9, &unk_10118B910, L"b\v\a");
  }

  return sub_1000095E8(v11, &unk_10118B910, L"b\v\a");
}

double sub_100325CE8(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_10118B910, L"b\v\a");
  __chkstk_darwin();
  v3 = &v6 - v2;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v5 = type metadata accessor for CollectionViewDragDropController.DropContext(0);
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    sub_1003224FC(v3);
  }

  return result;
}

uint64_t sub_100325DD0()
{
  sub_100020438(*(v0 + 24), *(v0 + 32));
  sub_100020438(*(v0 + 40), *(v0 + 48));
  sub_100020438(*(v0 + 56), *(v0 + 64));
  sub_100020438(*(v0 + 72), *(v0 + 80));
  swift_unknownObjectRelease();
  sub_1000095E8(v0 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_activeDropContext, &unk_10118B910, L"b\v\a");

  return v0;
}

uint64_t sub_100325E58()
{
  sub_100325DD0();

  return swift_deallocClassInstance();
}

void sub_100325ED8(uint64_t a1)
{
  sub_100326178(319, &unk_10118B648, type metadata accessor for CollectionViewDragDropController.DropContext);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10032604C(uint64_t a1)
{
  sub_100326114();
  if (v1 <= 0x3F)
  {
    sub_100009F78(319, qword_10118B8D0, UICollectionViewDropProposal_ptr);
    if (v2 <= 0x3F)
    {
      sub_100326178(319, &unk_101192480, &type metadata accessor for IndexPath);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_100326114()
{
  result = qword_10118B8C8;
  if (!qword_10118B8C8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10118B8C8);
  }

  return result;
}

void sub_100326178(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1003261FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_10118B910, L"b\v\a");
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_10032626C@<D0>(_OWORD *a1@<X8>)
{
  if ([v1 localObject])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if ((swift_dynamicCast() & 1) != 0 && v8)
    {
      v3 = v9;
      *a1 = v8;
      a1[1] = v3;
      result = *&v10;
      a1[2] = v10;
      return result;
    }
  }

  else
  {
    sub_1000095E8(v7, &unk_101183F30, qword_100EBF960);
  }

  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

void sub_100326348(uint64_t a1)
{
  v41 = a1;
  sub_10010FC20(&unk_10118B940, &unk_100EC71C0);
  __chkstk_darwin();
  v3 = &v40 - v2;
  v4 = type metadata accessor for SuggestedSong(0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v42 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101189DA0, &unk_100EBF370);
  __chkstk_darwin();
  v8 = &v40 - v7;
  v9 = type metadata accessor for GenericMusicItem();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin().n128_u64[0];
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &selRef_setPhotosHeaderMetadata_;
  v15 = [v1 localDragSession];
  v16 = &selRef_setPhotosHeaderMetadata_;
  if (!v15)
  {
    v47 = 0u;
    v48 = 0u;
LABEL_9:
    sub_1000095E8(&v47, &unk_101183F30, qword_100EBF960);
    (*(v10 + 56))(v8, 1, 1, v9);
    goto LABEL_10;
  }

  v17 = [v15 localContext];
  swift_unknownObjectRelease();
  if (v17)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
  }

  v47 = v45;
  v48 = v46;
  v16 = &selRef_setPhotosHeaderMetadata_;
  v14 = &selRef_setPhotosHeaderMetadata_;
  if (!*(&v46 + 1))
  {
    goto LABEL_9;
  }

  v18 = swift_dynamicCast();
  (*(v10 + 56))(v8, v18 ^ 1u, 1, v9);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    (*(v10 + 32))(v13, v8, v9);
    sub_1007973A8(0);
    (*(v10 + 8))(v13, v9);
    return;
  }

LABEL_10:
  sub_1000095E8(v8, &unk_101189DA0, &unk_100EBF370);
  v19 = [v1 v14[343]];
  if (!v19)
  {
    v47 = 0u;
    v48 = 0u;
LABEL_18:
    sub_1000095E8(&v47, &unk_101183F30, qword_100EBF960);
    (*(v5 + 56))(v3, 1, 1, v4);
    goto LABEL_19;
  }

  v20 = [v19 v16[345]];
  swift_unknownObjectRelease();
  if (v20)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
  }

  v47 = v45;
  v48 = v46;
  if (!*(&v46 + 1))
  {
    goto LABEL_18;
  }

  v21 = swift_dynamicCast();
  (*(v5 + 56))(v3, v21 ^ 1u, 1, v4);
  if ((*(v5 + 48))(v3, 1, v4) != 1)
  {
    v22 = v42;
    sub_1003270AC(v3, v42, type metadata accessor for SuggestedSong);
    sub_100236928(0);
    sub_100327114(v22, type metadata accessor for SuggestedSong);
    return;
  }

LABEL_19:
  sub_1000095E8(v3, &unk_10118B940, &unk_100EC71C0);
  v23 = [v1 v14[343]];
  if (!v23)
  {
    v45 = 0u;
    v46 = 0u;
LABEL_45:
    sub_1000095E8(&v45, &unk_101183F30, qword_100EBF960);
    v47 = 0u;
    v48 = 0u;
    v49 = 0;
    goto LABEL_47;
  }

  v24 = [v23 v16[345]];
  swift_unknownObjectRelease();
  if (v24)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
  }

  v45 = v43;
  v46 = v44;
  if (!*(&v44 + 1))
  {
    goto LABEL_45;
  }

  sub_10010FC20(&qword_10118B958, &qword_100EC71D8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v49 = 0;
    v47 = 0u;
    v48 = 0u;
    goto LABEL_47;
  }

  v25 = *(&v48 + 1);
  if (!*(&v48 + 1))
  {
LABEL_47:
    sub_1000095E8(&v47, &qword_10118B950, &qword_100EC71D0);
    return;
  }

  v26 = v49;
  sub_10000954C(&v47, *(&v48 + 1));
  __chkstk_darwin();
  *(&v40 - 6) = v41;
  *(&v40 - 5) = v25;
  *(&v40 - 4) = v26;
  *(&v40 - 3) = sub_100326B0C;
  *(&v40 - 2) = 0;
  sub_10010FC20(&unk_10118B960, &unk_100EBE300);
  v27 = Sequence.compactMap<A>(_:)();
  v28 = *(v27 + 16);
  if (!v28)
  {
LABEL_48:

    sub_10000959C(&v47);
    return;
  }

  v29 = 0;
  v30 = _swiftEmptyArrayStorage;
  while (v29 < *(v27 + 16))
  {
    v31 = *(v27 + 32 + 8 * v29);
    v32 = *(v31 + 16);
    v33 = v30[2];
    v34 = v33 + v32;
    if (__OFADD__(v33, v32))
    {
      goto LABEL_50;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v34 <= v30[3] >> 1)
    {
      if (*(v31 + 16))
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (v33 <= v34)
      {
        v36 = v33 + v32;
      }

      else
      {
        v36 = v33;
      }

      v30 = sub_100499B64(isUniquelyReferenced_nonNull_native, v36, 1, v30);
      if (*(v31 + 16))
      {
LABEL_41:
        if ((v30[3] >> 1) - v30[2] < v32)
        {
          goto LABEL_52;
        }

        sub_10010FC20(&qword_10119E600, &qword_100ECF0E0);
        swift_arrayInitWithCopy();

        if (v32)
        {
          v37 = v30[2];
          v38 = __OFADD__(v37, v32);
          v39 = v37 + v32;
          if (v38)
          {
            goto LABEL_53;
          }

          v30[2] = v39;
        }

        goto LABEL_30;
      }
    }

    if (v32)
    {
      goto LABEL_51;
    }

LABEL_30:
    if (v28 == ++v29)
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}

uint64_t sub_100326B0C(uint64_t a1)
{
  sub_10010FC20(&unk_10118B940, &unk_100EC71C0);
  __chkstk_darwin();
  v3 = &v20[-v2];
  v4 = type metadata accessor for SuggestedSong(0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10010FC20(&unk_101189DA0, &unk_100EBF370);
  __chkstk_darwin();
  v9 = &v20[-v8];
  v10 = type metadata accessor for GenericMusicItem();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10000DD18(a1, v20);
  v14 = swift_dynamicCast();
  v15 = *(v11 + 56);
  if (v14)
  {
    v15(v9, 0, 1, v10);
    (*(v11 + 32))(v13, v9, v10);
    v16 = sub_1007973A8(0);
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    v15(v9, 1, 1, v10);
    sub_1000095E8(v9, &unk_101189DA0, &unk_100EBF370);
    sub_10000DD18(a1, v20);
    v17 = swift_dynamicCast();
    v18 = *(v5 + 56);
    if (v17)
    {
      v18(v3, 0, 1, v4);
      sub_1003270AC(v3, v7, type metadata accessor for SuggestedSong);
      v16 = sub_100236928(0);
      sub_100327114(v7, type metadata accessor for SuggestedSong);
    }

    else
    {
      v18(v3, 1, 1, v4);
      sub_1000095E8(v3, &unk_10118B940, &unk_100EC71C0);
      return 0;
    }
  }

  return v16;
}

uint64_t sub_100326E78@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t *)@<X1>, void *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10[3] = AssociatedTypeWitness;
  v8 = sub_10001C8B8(v10);
  (*(*(AssociatedTypeWitness - 8) + 16))(v8, a1, AssociatedTypeWitness);
  *a4 = a2(v10);
  return sub_10000959C(v10);
}

uint64_t sub_100326F64(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100326FD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = v1[12];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100008F30;

  return sub_100324364(a1, v4, v5, (v1 + 4), v6, v7, v8, v9);
}

uint64_t sub_1003270AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100327114(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100327174(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003271E4()
{
  result = qword_101192840;
  if (!qword_101192840)
  {
    type metadata accessor for IndexPath();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101192840);
  }

  return result;
}

id sub_1003272AC(void *a1)
{
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v3 = [a1 cellForItemAtIndexPath:isa];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 window];
  if (v4)
  {

    v5 = [objc_allocWithZone(UIDragPreviewParameters) init];
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    v7 = v5;
    if (v6)
    {
      v8 = 0.0;
      v9 = Corner.extraSmall.unsafeMutableAddressor();
    }

    else
    {
      v8 = 8.0;
      v9 = Corner.large.unsafeMutableAddressor();
    }

    v10 = *v9;
    v11 = v9[1];
    v12 = *(v9 + 16);
    NSDirectionalEdgeInsets.Edge.all.unsafeMutableAddressor();

    v14 = NSDirectionalEdgeInsets.init(edge:length:)(v13, v8);
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [v3 bounds];
    v25 = CGRect.outset(by:for:)([v3 effectiveUserInterfaceLayoutDirection], v14, v16, v18, v20, v21, v22, v23, v24);
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v32 = Corner.radius(in:)(v10, v25, v26, v28, v30, v11, v12);
    v33 = [objc_opt_self() bezierPathWithRoundedRect:v25 cornerRadius:{v27, v29, v31, v32}];
    [v7 setVisiblePath:v33];
  }

  else
  {

    return 0;
  }

  return v7;
}

void sub_1003274BC(uint64_t a1, void *a2)
{
  if (a1)
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_10032751C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002F3F4;

  return sub_100321150(a1, v4, v5, (v1 + 4), v6, v7);
}

id sub_1003275E0(id result, void *a2)
{
  if (result)
  {
    swift_unknownObjectRetain();

    return a2;
  }

  return result;
}

uint64_t sub_100327670(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100327688(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003276D0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_100327730()
{
  result = qword_10118B9A8;
  if (!qword_10118B9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118B9A8);
  }

  return result;
}

id sub_1003277A8()
{
  sub_10010FC20(&unk_101189DA0, &unk_100EBF370);
  __chkstk_darwin();
  v1 = &v12[-1] - v0;
  MusicPin.genericMusicItem.getter(&v12[-1] - v0);
  v2 = type metadata accessor for GenericMusicItem();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = &unk_101189DA0;
    v5 = &unk_100EBF370;
    v6 = v1;
  }

  else
  {
    GenericMusicItem.innerMusicItem.getter(v12);
    (*(v3 + 8))(v1, v2);
    v7 = v13;
    if (v13)
    {
      sub_10000954C(v12, v13);
      MusicItem.artworkPlaceholder.getter(v7, v14);
      v8 = v15;
      v18 = v14[0];
      v9 = v15;
      sub_1000095E8(&v18, &unk_1011951E0, &unk_100EBE380);
      v17 = v14[1];
      sub_1000095E8(&v17, &unk_1011951E0, &unk_100EBE380);

      sub_10000959C(v12);
      return v8;
    }

    v4 = &qword_10118B990;
    v5 = &unk_100EBE7B0;
    v6 = v12;
  }

  sub_1000095E8(v6, v4, v5);
  return 0;
}

void *sub_100327974(void *a1, uint64_t a2)
{
  v170 = type metadata accessor for Song();
  v162 = *(v170 - 8);
  __chkstk_darwin();
  v161 = &v161 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v169 = &v161 - v5;
  __chkstk_darwin();
  v168 = &v161 - v6;
  sub_10010FC20(&unk_1011846B0, &unk_100ECB630);
  __chkstk_darwin();
  v166 = &v161 - v7;
  v174 = type metadata accessor for MusicVideo();
  v172 = *(v174 - 8);
  __chkstk_darwin();
  v167 = &v161 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v175 = &v161 - v9;
  __chkstk_darwin();
  v173 = &v161 - v10;
  __chkstk_darwin();
  v171 = &v161 - v11;
  v179 = type metadata accessor for Artist();
  v178 = *(v179 - 1);
  __chkstk_darwin();
  v176 = &v161 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v177 = &v161 - v13;
  v165 = type metadata accessor for Playlist();
  v164 = *(v165 - 8);
  __chkstk_darwin();
  v163 = &v161 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011846D0, &qword_100EDD110);
  __chkstk_darwin();
  v184 = &v161 - v15;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v183 = &v161 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v187 = &v161 - v17;
  __chkstk_darwin();
  v194 = &v161 - v18;
  v185 = type metadata accessor for ContainerDetail.Source(0);
  __chkstk_darwin();
  v182 = &v161 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v186 = &v161 - v20;
  __chkstk_darwin();
  v188 = &v161 - v21;
  v22 = type metadata accessor for Album();
  v191 = *(v22 - 8);
  v192 = v22;
  __chkstk_darwin();
  v180 = (&v161 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v181 = &v161 - v24;
  __chkstk_darwin();
  v190 = (&v161 - v25);
  __chkstk_darwin();
  v189 = &v161 - v26;
  v27 = type metadata accessor for MusicPin.Item();
  v28 = *(v27 - 8);
  __chkstk_darwin();
  v30 = &v161 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for MusicPin();
  v32 = *(v31 - 8);
  __chkstk_darwin();
  v34 = &v161 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v36 = &v161 - v35;
  __chkstk_darwin();
  v195 = &v161 - v37;
  _s6PinTabCMa(0);
  v38 = swift_dynamicCastClass();
  v193 = v32;
  if (v38)
  {
    v39 = v38;
    v40 = v30;
    v41 = v28;
    v42 = v27;
    v43 = a1;
    v44 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin;
    swift_beginAccess();
    v45 = v39 + v44;
    v46 = v195;
    a1 = v43;
    v27 = v42;
    v28 = v41;
    v30 = v40;
    v47 = *(v32 + 16);
    v47(v36, v45, v31);
    (*(v32 + 32))(v46, v36, v31);
  }

  else
  {
    v48 = a2;
    v47 = *(v32 + 16);
    v47(v195, v48, v31);
  }

  v49 = [a1 tabBarController];
  if (!v49 || (v50 = v49, v51 = [v49 traitCollection], v50, !v51))
  {
    v51 = [objc_opt_self() currentTraitCollection];
  }

  MusicPin.item.getter();
  v52 = (*(v28 + 88))(v30, v27);
  if (v52 == enum case for MusicPin.Item.album(_:))
  {
    (*(v28 + 96))(v30, v27);
    v53 = v191;
    v54 = *(v191 + 32);
    v55 = v189;
    v178 = v31;
    v56 = v192;
    v54(v189, v30, v192);
    v179 = v51;
    v57 = *(v53 + 16);
    v58 = v190;
    v57(v190, v55, v56);
    v59 = sub_10010FC20(&qword_10118A430, &qword_100EC8F70);
    v60 = *(v59 + 48);
    v61 = *(v59 + 64);
    v62 = _s6AlbumsV5ScopeOMa(0);
    v64 = v187;
    v63 = v188;
    swift_storeEnumTagMultiPayload();
    (*(*(v62 - 8) + 56))(v63, 0, 1, v62);
    *(v63 + v60) = 0;
    *(v63 + v61) = 0;
    swift_storeEnumTagMultiPayload();
    v65 = type metadata accessor for URL();
    v66 = v194;
    (*(*(v65 - 8) + 56))(v194, 1, 1, v65);
    v67 = v181;
    v57(v181, v58, v56);
    v68 = v186;
    sub_10032EB6C(v63, v186, type metadata accessor for ContainerDetail.Source);
    v69 = v66;
    v70 = v64;
    sub_1000089F8(v69, v64, &qword_101183A20, &unk_100EBCF80);
    v71 = v180;
    v57(v180, v67, v56);
    v72 = v182;
    sub_10032EB6C(v68, v182, type metadata accessor for ContainerDetail.Source);
    v73 = type metadata accessor for AlbumDetailDataSource.ProminentTrackSource(0);
    v74 = v184;
    (*(*(v73 - 8) + 56))(v184, 1, 1, v73);
    v75 = v70;
    v76 = v70;
    v77 = v183;
    sub_1000089F8(v75, v183, &qword_101183A20, &unk_100EBCF80);
    v78 = sub_1004E34D0(v71, v72, v74, v77);
    sub_1000095E8(v76, &qword_101183A20, &unk_100EBCF80);
    sub_10032EBD4(v68, type metadata accessor for ContainerDetail.Source);
    v79 = *(v191 + 8);
    v80 = v67;
    v81 = v192;
    v79(v80, v192);
    v82 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
    v83 = v78;
    v84 = sub_100137F64(v83, v82);

    sub_1000095E8(v194, &qword_101183A20, &unk_100EBCF80);
    sub_10032EBD4(v63, type metadata accessor for ContainerDetail.Source);
    v79(v190, v81);
    v79(v189, v81);
    (v193)[1](v195, v178);
    return v84;
  }

  if (v52 == enum case for MusicPin.Item.artist(_:))
  {
    (*(v28 + 96))(v30, v27);
    v85 = v178;
    v86 = v177;
    v87 = v179;
    (*(v178 + 32))(v177, v30, v179);
    v88 = v176;
    (*(v85 + 16))(v176, v86, v87);
    v89 = objc_allocWithZone(type metadata accessor for LibraryArtistDetailViewController(0));
    v90 = sub_1001FAE8C(v88, 0);
LABEL_11:
    v84 = v90;

    (*(v85 + 8))(v86, v87);
LABEL_12:
    (v193)[1](v195, v31);
    return v84;
  }

  if (v52 == enum case for MusicPin.Item.musicVideo(_:))
  {
    (*(v28 + 96))(v30, v27);
    v92 = v172;
    v93 = *(v172 + 16);
    v94 = v171;
    v95 = v174;
    v93(v171, v30, v174);
    if (MusicPin.isSingleMusicVideo.getter())
    {
      v96 = v166;
      v93(v166, v94, v95);
      (*(v92 + 56))(v96, 0, 1, v95);
      v97 = objc_allocWithZone(type metadata accessor for LibraryMusicVideosViewController(0));
      v84 = sub_100507278(0, v96);

      v98 = *(v92 + 8);
      v98(v94, v95);
      (v193)[1](v195, v31);
      v98(v30, v95);
      return v84;
    }

    v99 = *(v92 + 8);
    v191 = v92 + 8;
    v192 = v99;
    v99(v94, v95);
    v100 = v173;
    (*(v92 + 32))(v173, v30, v95);
    v93(v175, v100, v95);
    v101 = sub_10010FC20(&qword_10118A430, &qword_100EC8F70);
    v102 = *(v101 + 48);
    v103 = *(v101 + 64);
    v104 = _s6AlbumsV5ScopeOMa(0);
    v105 = v95;
    v106 = v188;
    swift_storeEnumTagMultiPayload();
    (*(*(v104 - 8) + 56))(v106, 0, 1, v104);
    *(v106 + v102) = 0;
    *(v106 + v103) = 0;
    swift_storeEnumTagMultiPayload();
    v107 = type metadata accessor for URL();
    v108 = v194;
    (*(*(v107 - 8) + 56))(v194, 1, 1, v107);
    v109 = v167;
    v93(v167, v175, v105);
    v110 = v186;
    sub_10032EB6C(v106, v186, type metadata accessor for ContainerDetail.Source);
    v111 = v187;
    sub_1000089F8(v108, v187, &qword_101183A20, &unk_100EBCF80);
    v112 = sub_1004E42B0(v109, v110, v111);
    v113 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
    v114 = v112;
    v84 = sub_100137F64(v114, v113);

    sub_1000095E8(v108, &qword_101183A20, &unk_100EBCF80);
    sub_10032EBD4(v106, type metadata accessor for ContainerDetail.Source);
    v115 = v192;
    v192(v175, v105);
    v115(v173, v105);
    goto LABEL_12;
  }

  if (v52 == enum case for MusicPin.Item.playlist(_:))
  {
    (*(v28 + 96))(v30, v27);
    v85 = v164;
    v86 = v163;
    v87 = v165;
    (*(v164 + 32))(v163, v30, v165);
    v90 = sub_100736798(a1, v86);
    goto LABEL_11;
  }

  if (v52 == enum case for MusicPin.Item.song(_:))
  {
    (*(v28 + 96))(v30, v27);
    v116 = v162;
    v117 = v168;
    v118 = v170;
    (*(v162 + 32))(v168, v30, v170);
    v192 = *(v116 + 16);
    v119 = v169;
    (v192)(v169, v117, v118);
    v120 = sub_10010FC20(&qword_10118A430, &qword_100EC8F70);
    v121 = *(v120 + 48);
    v122 = *(v120 + 64);
    v123 = _s6AlbumsV5ScopeOMa(0);
    v124 = v188;
    swift_storeEnumTagMultiPayload();
    (*(*(v123 - 8) + 56))(v124, 0, 1, v123);
    *(v124 + v121) = 0;
    *(v124 + v122) = 0;
    swift_storeEnumTagMultiPayload();
    v125 = type metadata accessor for URL();
    v126 = v194;
    (*(*(v125 - 8) + 56))(v194, 1, 1, v125);
    v127 = v161;
    v128 = v119;
    v129 = v170;
    (v192)(v161, v128, v170);
    v130 = v186;
    sub_10032EB6C(v124, v186, type metadata accessor for ContainerDetail.Source);
    v131 = v187;
    sub_1000089F8(v126, v187, &qword_101183A20, &unk_100EBCF80);
    v132 = sub_1004E484C(v127, v130, v131);
    v133 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
    v134 = v132;
    v84 = sub_100137F64(v134, v133);

    sub_1000095E8(v126, &qword_101183A20, &unk_100EBCF80);
    sub_10032EBD4(v124, type metadata accessor for ContainerDetail.Source);
    v135 = *(v116 + 8);
    v135(v169, v129);
    v135(v168, v129);
    goto LABEL_12;
  }

  v194 = v27;
  if (qword_10117F7A0 != -1)
  {
    swift_once();
  }

  v136 = type metadata accessor for Logger();
  sub_1000060E4(v136, qword_101218E00);
  v137 = v193;
  v47(v34, v195, v31);
  v138 = a1;
  v139 = Logger.logObject.getter();
  v140 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v139, v140))
  {
    v141 = swift_slowAlloc();
    LODWORD(v191) = v140;
    v142 = v141;
    v192 = swift_slowAlloc();
    v196 = v192;
    *v142 = 136446466;
    sub_10032EC34(&qword_10118BB00, &type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);
    v190 = v139;
    v143 = dispatch thunk of CustomStringConvertible.description.getter();
    v179 = v51;
    v145 = v144;
    v146 = v137[1];
    v193 = v138;
    v146(v34, v31);
    v147 = v146;
    v148 = sub_1000105AC(v143, v145, &v196);

    *(v142 + 4) = v148;
    *(v142 + 12) = 2082;
    v149 = v193;
    v150 = [v149 description];
    v151 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v152 = v31;
    v154 = v153;

    v155 = v151;
    v51 = v179;
    v156 = sub_1000105AC(v155, v154, &v196);

    *(v142 + 14) = v156;
    v157 = v190;
    _os_log_impl(&_mh_execute_header, v190, v191, "Unhandled pinned item type %{public}s — Return All Songs view controller tab=%{public}s", v142, 0x16u);
    swift_arrayDestroy();

    v158 = v152;
  }

  else
  {

    v159 = v137[1];
    v159(v34, v31);
    v147 = v159;
    v158 = v31;
  }

  v160 = objc_allocWithZone(type metadata accessor for LibrarySongsViewController(0));
  v84 = sub_100522954(0);

  v147(v195, v158);
  (*(v28 + 8))(v30, v194);
  return v84;
}

id sub_100328F50(uint64_t a1)
{
  v53 = a1;
  v2 = 0xEC0000006E6F6974;
  v3 = 0x6365532E736E6950;
  v4 = sub_10010FC20(&qword_10118BAF0, &qword_100EC7338);
  v58 = *(v4 - 8);
  v59 = v4;
  __chkstk_darwin();
  v51 = &v51 - v5;
  sub_10010FC20(&unk_101197210, &unk_100ED5E70);
  __chkstk_darwin();
  v57 = &v51 - v6;
  sub_10010FC20(&unk_101182EA0, &unk_100EBE980);
  __chkstk_darwin();
  v8 = &v51 - v7;
  v9 = type metadata accessor for Locale();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v11 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab12PinsTabGroup_token;
  v12 = type metadata accessor for NSNotificationCenter.ObservationToken();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v52 = v1;
  v56 = v12;
  v55 = v14;
  v54 = v13 + 56;
  (v14)(&v1[v11], 1, 1);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v15 = String.init(localized:table:bundle:locale:comment:)();
  v17 = v16;
  v18 = String._bridgeToObjectiveC()();
  v19 = [objc_opt_self() systemImageNamed:v18];

  strcpy(v67, "Pins.Section");
  BYTE5(v67[1]) = 0;
  HIWORD(v67[1]) = -5120;
  aBlock = 0xD000000000000014;
  v61 = 0x8000000100E3E560;
  (*(v10 + 56))(v8, 1, 1, v9);
  sub_100009838();
  StringProtocol.range<A>(of:options:range:locale:)();
  v21 = v20;
  LOBYTE(v18) = v22;
  result = sub_1000095E8(v8, &unk_101182EA0, &unk_100EBE980);
  if (v18)
  {
    v24 = 0x8000000100E47020;
    v25 = 0xD000000000000020;
  }

  else
  {
    if (v21 >> 14 > 0x30)
    {
      __break(1u);
      return result;
    }

    String.subscript.getter();
    v26 = static String._fromSubstring(_:)();
    v28 = v27;

    v25 = 0x6365532E736E6950;
    v24 = 0xEC0000006E6F6974;
    v3 = v26;
    v2 = v28;
  }

  v67[0] = v25;
  v67[1] = v24;
  v67[2] = v3;
  v67[3] = v2;
  v67[4] = v15;
  v67[5] = v17;
  v69 = 0;
  v70 = 0;
  v68 = v19;
  v29 = String._bridgeToObjectiveC()();
  v30 = String._bridgeToObjectiveC()();
  sub_100009F78(0, &qword_101181F70, UITab_ptr);
  v31.super.isa = Array._bridgeToObjectiveC()().super.isa;
  if (v69)
  {
    v64 = v69;
    v65 = v70;
    aBlock = _NSConcreteStackBlock;
    v61 = 1107296256;
    v62 = sub_10003640C;
    v63 = &unk_1010A6FE8;
    v32 = _Block_copy(&aBlock);
  }

  else
  {
    v32 = 0;
  }

  v33 = v68;
  v34 = type metadata accessor for MusicTab.Group();
  v66.receiver = v52;
  v66.super_class = v34;
  v35 = objc_msgSendSuper2(&v66, "initWithTitle:image:identifier:children:viewControllerProvider:", v29, v33, v30, v31.super.isa, v32);
  _Block_release(v32);

  sub_100036360(v67);
  v36 = *(v53 + 16);
  v37 = v35;

  [v37 setHidden:v36 == 0];
  [v37 setPreferredPlacement:6];
  v38 = v37;
  [v38 setAllowsHiding:0];
  [v38 setAllowsReordering:1];

  v39 = AccessibilityIdentifier.libraryPins.unsafeMutableAddressor();
  v40 = *v39;
  v41 = v39[1];
  v42 = v39[2];
  v43 = v39[3];
  _s12PinsTabGroupCMa(0);

  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v40, v41, v42, v43);
  v44 = v38;
  v45 = String._bridgeToObjectiveC()();
  [v44 setPlayActivityFeatureName:v45];

  v46 = [objc_opt_self() defaultCenter];
  type metadata accessor for LibraryPinsController();
  sub_10032E7E0();
  v47 = v51;
  NSNotificationCenter.BaseMessageIdentifier.init<A>()();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_10032E83C();
  v48 = v57;
  v49 = v59;
  NSNotificationCenter.addObserver<A, B>(of:for:using:)();

  (*(v58 + 8))(v47, v49);
  v55(v48, 0, 1, v56);
  v50 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab12PinsTabGroup_token;
  swift_beginAccess();
  sub_10006B010(v48, v44 + v50, &unk_101197210, &unk_100ED5E70);
  swift_endAccess();

  return v44;
}

void sub_100329728(uint64_t a1, uint64_t a2)
{
  if (qword_10117F678 != -1)
  {
    swift_once();
  }

  v2 = sub_10010BA00(&off_10109A650);
  sub_1003C6340(v2);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1003297D8();
  }
}

double sub_1003297D8()
{
  v1 = [v0 children];
  sub_100009F78(0, &qword_101181F70, UITab_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_1007E914C(v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      _s6PinTabCMa(0);
      if (swift_dynamicCastClass())
      {
        sub_10032A8A4();
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:

  return result;
}

void sub_1003299C0(uint64_t a1)
{
  sub_100329A50(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100329A50(uint64_t a1)
{
  if (!qword_10118BAB0)
  {
    type metadata accessor for NSNotificationCenter.ObservationToken();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10118BAB0);
    }
  }
}

void sub_100329AA8(void *a1)
{
  v2 = v1;
  v32 = a1;
  v3 = type metadata accessor for Artwork();
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin();
  v31 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&unk_101191420, &unk_100EC9120) - 8;
  __chkstk_darwin();
  v7 = &v31 - v6;
  v8 = type metadata accessor for MusicPin();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v35 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v31 - v13;
  __chkstk_darwin();
  v16 = &v31 - v15;
  sub_10032A8A4();
  MusicPin.artwork.getter();
  v17 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin;
  swift_beginAccess();
  v18 = *(v9 + 16);
  v32 = v2;
  v18(v11, &v2[v17], v8);
  MusicPin.artwork.getter();
  (*(v9 + 8))(v11, v8);
  v19 = *(v5 + 56);
  v20 = v33;
  sub_1000089F8(v16, v7, &unk_101188920, &qword_100EBCC50);
  v21 = v34;
  sub_1000089F8(v14, &v7[v19], &unk_101188920, &qword_100EBCC50);
  v22 = *(v20 + 48);
  if (v22(v7, 1, v21) == 1)
  {
    sub_1000095E8(v14, &unk_101188920, &qword_100EBCC50);
    sub_1000095E8(v16, &unk_101188920, &qword_100EBCC50);
    if (v22(&v7[v19], 1, v21) == 1)
    {
      sub_1000095E8(v7, &unk_101188920, &qword_100EBCC50);
      return;
    }
  }

  else
  {
    sub_1000089F8(v7, v35, &unk_101188920, &qword_100EBCC50);
    if (v22(&v7[v19], 1, v21) != 1)
    {
      v27 = v31;
      (*(v20 + 32))(v31, &v7[v19], v21);
      sub_10032EC34(&unk_10118D3D0, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
      v28 = v35;
      v29 = dispatch thunk of static Equatable.== infix(_:_:)();
      v30 = *(v20 + 8);
      v30(v27, v21);
      sub_1000095E8(v14, &unk_101188920, &qword_100EBCC50);
      sub_1000095E8(v16, &unk_101188920, &qword_100EBCC50);
      v30(v28, v21);
      sub_1000095E8(v7, &unk_101188920, &qword_100EBCC50);
      v23 = v32;
      if (v29)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_1000095E8(v14, &unk_101188920, &qword_100EBCC50);
    sub_1000095E8(v16, &unk_101188920, &qword_100EBCC50);
    (*(v20 + 8))(v35, v21);
  }

  sub_1000095E8(v7, &unk_101191420, &unk_100EC9120);
  v23 = v32;
LABEL_7:
  v24 = [v23 tabBarController];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 sidebar];

    [v26 reconfigureItemForTab:v23];
  }
}

uint64_t sub_100329FE4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin;
  swift_beginAccess();
  v4 = type metadata accessor for MusicPin();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_10032A06C(uint64_t a1)
{
  v20 = v1;
  v3 = type metadata accessor for MusicPin();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v75 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v76 = &v72 - v6;
  __chkstk_darwin();
  v73 = &v72 - v7;
  __chkstk_darwin();
  v9 = &v72 - v8;
  v10 = type metadata accessor for MusicPin.Item();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v72 - v14;
  v79 = a1;
  MusicPin.item.getter();
  v16 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin;
  swift_beginAccess();
  v17 = *(v4 + 16);
  v80 = v20;
  v72 = v16;
  v77 = v17;
  v17(v9, v20 + v16, v3);
  MusicPin.item.getter();
  v74 = v4;
  v19 = *(v4 + 8);
  v18 = v4 + 8;
  v78 = v3;
  v81 = v19;
  v19(v9, v3);
  sub_10032EC34(&qword_10118BB10, &type metadata accessor for MusicPin.Item, &protocol conformance descriptor for MusicPin.Item);
  sub_10032EC34(&qword_10118BB18, &type metadata accessor for MusicPin.Item, &protocol conformance descriptor for MusicPin.Item);
  LODWORD(v20) = static MusicItem<>.==~ infix(_:_:)();
  v21 = *(v11 + 8);
  v21(v13, v10);
  v21(v15, v10);
  if (v20)
  {
    LODWORD(v75) = v20;
    v22 = v78;
    v23 = v79;
    v24 = v77;
    v77(v9, v79, v78);
    v25 = v80;
    v27 = v72;
    v26 = v73;
    v24(v73, &v80[v72], v22);
    swift_beginAccess();
    (*(v74 + 24))(&v25[v27], v9, v22);
    swift_endAccess();
    sub_100329AA8(v26);
    v28 = v81;
    v81(v26, v22);
    v28(v9, v22);
    v29 = v24;
    if (qword_10117F7A8 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000060E4(v30, qword_101218E18);
    v31 = v76;
    v29(v76, v23, v22);
    v32 = v25;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v82[0] = swift_slowAlloc();
      *v35 = 136446466;
      v36 = v32;
      v37 = [v36 description];
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v18;
      v39 = v28;
      v40 = v38;
      v42 = v41;

      v43 = sub_1000105AC(v40, v42, v82);

      *(v35 + 4) = v43;
      *(v35 + 12) = 2082;
      sub_10032EC34(&qword_10118BB00, &type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);
      v44 = v76;
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      v39(v44, v22);
      v48 = sub_1000105AC(v45, v47, v82);

      *(v35 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v33, v34, "🔁 Updated PinTab=%{public}s with matching pin=%{public}s", v35, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v28(v31, v22);
    }

    LOBYTE(v20) = v75;
  }

  else
  {
    v49 = v79;
    v50 = v80;
    v74 = v18;
    v52 = v77;
    v51 = v78;
    if (qword_10117F7A8 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_1000060E4(v53, qword_101218E18);
    v54 = v75;
    v52(v75, v49, v51);
    v55 = v50;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v82[0] = swift_slowAlloc();
      *v58 = 136446466;
      v59 = v55;
      v60 = [v59 description];
      v61 = v20;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = v62;

      v64 = v20;
      LOBYTE(v20) = v61;
      v65 = sub_1000105AC(v64, v63, v82);

      *(v58 + 4) = v65;
      *(v58 + 12) = 2082;
      sub_10032EC34(&qword_10118BB00, &type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);
      v66 = v75;
      v67 = dispatch thunk of CustomStringConvertible.description.getter();
      v69 = v68;
      v81(v66, v51);
      v70 = sub_1000105AC(v67, v69, v82);

      *(v58 + 14) = v70;
      _os_log_impl(&_mh_execute_header, v56, v57, "🔁 Attempted to update tab=%{public}s with unrelated pin=%{public}s", v58, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v81(v54, v51);
    }
  }

  return v20 & 1;
}

void sub_10032A8A4()
{
  v1 = v0;
  v59 = type metadata accessor for ContentRating();
  v57 = *(v59 - 8);
  __chkstk_darwin();
  v48 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_10010FC20(&qword_1011819C0, &unk_100EBD2E0);
  __chkstk_darwin();
  v58 = &v47 - v3;
  sub_10010FC20(&qword_10118A530, &qword_100EC64E0);
  __chkstk_darwin();
  v54 = &v47 - v4;
  sub_10010FC20(&unk_10118D2F0, &unk_100EBCE10);
  __chkstk_darwin();
  v49 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v61 = &v47 - v6;
  __chkstk_darwin();
  v56 = &v47 - v7;
  v8 = type metadata accessor for MusicPin();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v53 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v47 - v11;
  v13 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin;
  swift_beginAccess();
  v14 = *(v9 + 16);
  v14(v12, &v0[v13], v8);
  MusicPin.title.getter();
  v15 = *(v9 + 8);
  v15(v12, v8);
  v16 = String._bridgeToObjectiveC()();

  [v1 setTitle:v16];

  v50 = v13;
  v17 = &v1[v13];
  v18 = v1;
  v52 = v14;
  v14(v12, v17, v8);
  v19 = sub_1003124C4(2);
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v51 = v15;
  v15(v12, v8);
  _s6PinTabCMa(0);
  v60 = v18;
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v19, v21, v23, v25);
  if (qword_10117F6D8 != -1)
  {
    swift_once();
  }

  v26 = v60;
  v27 = v50;
  v28 = v52;
  v52(v12, &v60[v50], v8);
  v29 = sub_100428914();
  v30 = v51;
  v51(v12, v8);
  [v26 setEnabled:v29 & 1];
  v31 = v53;
  v28(v53, &v26[v27], v8);
  v32 = v54;
  sub_1003121A8(v54);
  v30(v31, v8);
  v33 = type metadata accessor for Track();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
    sub_1000095E8(v32, &qword_10118A530, &qword_100EC64E0);
    v36 = v56;
    v35 = v57;
    v37 = v59;
    (*(v57 + 56))(v56, 1, 1, v59);
    v38 = v58;
  }

  else
  {
    v36 = v56;
    Track.contentRating.getter();
    (*(v34 + 8))(v32, v33);
    v38 = v58;
    v37 = v59;
    v35 = v57;
  }

  v39 = v61;
  (*(v35 + 104))(v61, enum case for ContentRating.explicit(_:), v37);
  (*(v35 + 56))(v39, 0, 1, v37);
  v40 = *(v55 + 48);
  sub_1000089F8(v36, v38, &unk_10118D2F0, &unk_100EBCE10);
  sub_1000089F8(v39, v38 + v40, &unk_10118D2F0, &unk_100EBCE10);
  v41 = *(v35 + 48);
  if (v41(v38, 1, v37) != 1)
  {
    v42 = v49;
    sub_1000089F8(v38, v49, &unk_10118D2F0, &unk_100EBCE10);
    if (v41(v38 + v40, 1, v37) != 1)
    {
      v43 = v48;
      (*(v35 + 32))(v48, v38 + v40, v37);
      sub_10032EC34(&qword_1011819D0, &type metadata accessor for ContentRating, &protocol conformance descriptor for ContentRating);
      v44 = dispatch thunk of static Equatable.== infix(_:_:)();
      v45 = *(v35 + 8);
      v45(v43, v37);
      sub_1000095E8(v61, &unk_10118D2F0, &unk_100EBCE10);
      sub_1000095E8(v36, &unk_10118D2F0, &unk_100EBCE10);
      v45(v42, v37);
      sub_1000095E8(v38, &unk_10118D2F0, &unk_100EBCE10);
      if ((v44 & 1) == 0)
      {
        return;
      }

      goto LABEL_13;
    }

    sub_1000095E8(v61, &unk_10118D2F0, &unk_100EBCE10);
    sub_1000095E8(v36, &unk_10118D2F0, &unk_100EBCE10);
    (*(v35 + 8))(v42, v37);
LABEL_11:
    sub_1000095E8(v38, &qword_1011819C0, &unk_100EBD2E0);
    return;
  }

  sub_1000095E8(v39, &unk_10118D2F0, &unk_100EBCE10);
  sub_1000095E8(v36, &unk_10118D2F0, &unk_100EBCE10);
  if (v41(v38 + v40, 1, v37) != 1)
  {
    goto LABEL_11;
  }

  sub_1000095E8(v38, &unk_10118D2F0, &unk_100EBCE10);
LABEL_13:
  ExplicitRestrictionsController.shared.unsafeMutableAddressor();
  swift_beginAccess();

  v46 = String._bridgeToObjectiveC()();

  [v60 setBadgeValue:v46];
}

uint64_t sub_10032B10C()
{
  sub_10010FC20(&unk_10118ABC0, &unk_100EC03E0);
  __chkstk_darwin();
  v1 = &v13 - v0;
  v2 = type metadata accessor for UICellAccessory.DeleteOptions();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UICellAccessory.DisplayedState();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101184740, &qword_100ED5D60);
  type metadata accessor for UICellAccessory();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100EBC6B0;
  (*(v7 + 104))(v9, enum case for UICellAccessory.DisplayedState.whenEditing(_:), v6);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v11 - 8) + 56))(v1, 1, 1, v11);

  UICellAccessory.DeleteOptions.init(isHidden:reservedLayoutWidth:tintColor:backgroundColor:)();
  static UICellAccessory.delete(displayed:options:actionHandler:)();

  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);

  return v10;
}

void sub_10032B434(uint64_t a1)
{
  sub_10010FC20(&unk_101197070, &unk_100ED1BC0);
  __chkstk_darwin();
  v2 = &v33[-v1 - 8];
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v4 = &v33[-v3 - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = Strong;
    v8 = [v7 tabBarController];
    if (v8)
    {
      v9 = v8;
      v43 = v6;
      v44 = 0u;
      v45 = 0u;
      v46 = 2;
      PresentationSource.Position.init(source:permittedArrowDirections:)(&v43, 12, v35);
      v39[0] = v35[0];
      v39[1] = v35[1];
      v40 = v36;
      v41 = v37;
      v42 = v38;
      v10 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v11 = swift_allocObject();
      *(v11 + 16) = v10;
      *(v11 + 24) = v7;
      v12 = v7;
      PresentationSource.init(viewController:position:configurationHandler:presentationDeferral:)(v9, v39, 0, 0, sub_10032EC84, v11, v34);
      v13 = type metadata accessor for TaskPriority();
      (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
      sub_10012B7A8(v34, v33);
      type metadata accessor for MainActor();
      v14 = v12;
      v15 = static MainActor.shared.getter();
      v16 = swift_allocObject();
      v16[2] = v15;
      v16[3] = &protocol witness table for MainActor;
      v16[4] = v14;
      sub_10012B828(v33, (v16 + 5));
      sub_1001F4CB8(0, 0, v4, &unk_100EC7348, v16);

      sub_10012BA6C(v34);
      return;
    }
  }

  if (qword_10117F7A0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000060E4(v17, qword_101218E00);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&v39[0] = v21;
    *v20 = 136446210;
    swift_beginAccess();
    v22 = swift_unknownObjectWeakLoadStrong();
    if (v22)
    {
      v23 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin;
      v24 = v22;
      swift_beginAccess();
      v25 = type metadata accessor for MusicPin();
      v26 = *(v25 - 8);
      v32 = v21;
      v27 = v26;
      (*(v26 + 16))(v2, &v24[v23], v25);

      (*(v27 + 56))(v2, 0, 1, v25);
      v21 = v32;
    }

    else
    {
      v28 = type metadata accessor for MusicPin();
      (*(*(v28 - 8) + 56))(v2, 1, 1, v28);
    }

    v29 = String.init<A>(describing:)();
    v31 = sub_1000105AC(v29, v30, v39);

    *(v20 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v18, v19, "Failed to unpin pin=%{public}s. No presentation source provided.", v20, 0xCu);
    sub_10000959C(v21);
  }
}

uint64_t sub_10032B934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = type metadata accessor for MainActor();
  v5[3] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v5[4] = v8;
  *v8 = v5;
  v8[1] = sub_1001AB600;

  return sub_10032B9F0(a4, a5);
}

uint64_t sub_10032B9F0(uint64_t a1, uint64_t a2)
{
  v2[21] = a1;
  v2[22] = a2;
  v2[23] = type metadata accessor for Notice.Variant(0);
  v2[24] = swift_task_alloc();
  type metadata accessor for Notice(0);
  v2[25] = swift_task_alloc();
  v2[26] = sub_10010FC20(&qword_10118BB08, &qword_100EC7358);
  v2[27] = swift_task_alloc();
  sub_10010FC20(&unk_1011838F0, &qword_100EC1070);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  sub_10010FC20(&unk_1011838D0, &unk_100EC0320);
  v2[30] = swift_task_alloc();
  v3 = type metadata accessor for MusicPin();
  v2[31] = v3;
  v2[32] = *(v3 - 8);
  v2[33] = swift_task_alloc();
  type metadata accessor for Actions.Unpin.Context(0);
  v2[34] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[35] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[36] = v5;
  v2[37] = v4;

  return _swift_task_switch(sub_10032BC24, v5, v4);
}

uint64_t sub_10032BC24()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  v4 = v0[21];
  v5 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin;
  swift_beginAccess();
  (*(v2 + 16))(v1, &v4[v5], v3);
  v6 = [v4 managingTabGroup];
  if (v6)
  {
    v7 = v6;
    _s3TabCMa(0);
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v39 = *(v8 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_selectedLibrary);

      goto LABEL_6;
    }
  }

  type metadata accessor for MusicLibrary();
  v39 = static MusicLibrary.shared.getter();
LABEL_6:
  v9 = v0[28];
  v10 = v0[29];
  sub_10012B7A8(v0[22], (v0 + 2));
  v11 = MetricsEvent.Page.libraryLanding.unsafeMutableAddressor();
  sub_10032EB6C(v11, v10, type metadata accessor for MetricsEvent.Page);
  v12 = type metadata accessor for MetricsEvent.Page(0);
  v13 = *(*(v12 - 8) + 56);
  v13(v10, 0, 1, v12);
  sub_1000089F8(v10, v9, &unk_1011838F0, &qword_100EC1070);
  MetricsReportingController.shared.unsafeMutableAddressor();
  v14 = sub_10053771C();
  v34 = v15;
  v35 = v14;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v36 = v0[34];
  v16 = v0[30];
  v18 = v0[28];
  v17 = v0[29];
  v37 = v0[31];
  v38 = v0[27];
  v19 = qword_101218AD0;
  v33 = GroupActivitiesManager.hasJoined.getter();
  v20 = GroupActivitiesManager.participantsCount.getter();
  sub_1000095E8(v17, &unk_1011838F0, &qword_100EC1070);
  v21 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  v22 = *(v19 + v21);
  v23 = type metadata accessor for Actions.MetricsReportingContext(0);
  v24 = v23[5];
  v13(v16 + v24, 1, 1, v12);
  v25 = v23[7];
  v26 = (v16 + v23[6]);
  v27 = v23[8];
  *v16 = xmmword_100EBEF60;
  sub_10006B010(v18, v16 + v24, &unk_1011838F0, &qword_100EC1070);
  *v26 = v35;
  v26[1] = v34;
  *(v16 + v25) = 0;
  *(v16 + v27) = 0;
  v28 = v16 + v23[9];
  *v28 = v33 & 1;
  *(v28 + 1) = v20;
  *(v28 + 2) = v22;
  (*(*(v23 - 1) + 56))(v16, 0, 1, v23);
  v29 = sub_10032EC34(&unk_1011970F0, &type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);
  Actions.Unpin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)(v39, (v0 + 2), v16, 0, 0, v37, v29, v36);
  static Actions.Unpin.action(context:)(v36, v38);
  v30 = swift_task_alloc();
  v0[38] = v30;
  *v30 = v0;
  v30[1] = sub_10032BFF0;
  v31 = v0[26];

  return Action.execute(checkSupportedStatus:)(v30, 1, v31);
}

uint64_t sub_10032BFF0()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  v3 = *(v2 + 296);
  v4 = *(v2 + 288);
  if (v0)
  {
    v5 = sub_10032C2EC;
  }

  else
  {
    v5 = sub_10032C12C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10032C12C()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = UIViewController.noticePresenter.getter(), v2, v3))
  {
    v4 = v0[34];
    v5 = v0[27];
    v7 = v0[24];
    v6 = v0[25];
    swift_storeEnumTagMultiPayload();
    static Notice.variant(_:)(v7, v6);
    sub_10032EBD4(v7, type metadata accessor for Notice.Variant);
    (*(*v3 + 200))(v6, 0);

    sub_10032EBD4(v6, type metadata accessor for Notice);
  }

  else
  {
    v4 = v0[34];
    v5 = v0[27];
  }

  sub_1000095E8(v5, &qword_10118BB08, &qword_100EC7358);
  sub_10032EBD4(v4, type metadata accessor for Actions.Unpin.Context);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10032C2EC()
{
  v24 = v0;
  v1 = v0[34];
  v2 = v0[27];

  sub_1000095E8(v2, &qword_10118BB08, &qword_100EC7358);
  sub_10032EBD4(v1, type metadata accessor for Actions.Unpin.Context);
  if (qword_10117F7A0 != -1)
  {
    swift_once();
  }

  v3 = v0[21];
  v4 = type metadata accessor for Logger();
  sub_1000060E4(v4, qword_101218E00);
  v5 = v3;
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[39];
  if (v8)
  {
    v10 = v0[21];
    v11 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v11 = 136446466;
    v12 = v10;
    v13 = [v12 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_1000105AC(v14, v16, &v23);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2082;
    v0[20] = v9;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v18 = String.init<A>(describing:)();
    v20 = sub_1000105AC(v18, v19, &v23);

    *(v11 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to unpin tab=%{public}s with error=%{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_10032C5D0(uint64_t a1, uint64_t a2)
{
  _s11ArtworkInfoV10PropertiesVMa(0);
  __chkstk_darwin();
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v2;
  sub_10032C700(v6, v5);
  v7 = [v6 managingTabGroup];
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = v7;
  _s3TabCMa(0);
  v9 = swift_dynamicCastClass();
  if (!v9)
  {

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v10 = *(v9 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_artworkCache);

LABEL_6:
  sub_10053BCD4(v5, v10, a1);

  return sub_10032EBD4(v5, _s11ArtworkInfoV10PropertiesVMa);
}

uint64_t sub_10032C700@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a1;
  v3 = type metadata accessor for UIView.Corner();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v40 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MusicPin.Item();
  v45 = *(v6 - 8);
  v46 = v6;
  __chkstk_darwin();
  v44 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v9 = &v39 - v8;
  v10 = type metadata accessor for MusicPin();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v43 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v39 - v13;
  v15 = type metadata accessor for Artwork();
  (*(*(v15 - 8) + 56))(a2, 1, 1, v15);
  v16 = _s11ArtworkInfoV10PropertiesVMa(0);
  v17 = a2 + v16[6];
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = v16[7];
  v19 = UIView.Corner.extraSmall.unsafeMutableAddressor();
  v41 = v4;
  v42 = v3;
  v20 = *(v4 + 16);
  v39 = v18;
  v20(a2 + v18, v19, v3);
  v21 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin;
  v22 = v47;
  swift_beginAccess();
  v23 = *(v11 + 16);
  v23(v14, &v22[v21], v10);
  MusicPin.artwork.getter();
  v24 = *(v11 + 8);
  v24(v14, v10);
  sub_10006B010(v9, a2, &unk_101188920, &qword_100EBCC50);
  v25 = [objc_opt_self() defaultMetrics];
  [v25 scaledValueForValue:28.0];
  v27 = v26;
  [v25 scaledValueForValue:28.0];
  v29 = v28;

  v30 = (a2 + v16[5]);
  *v30 = v27;
  v30[1] = v29;
  v31 = &v47[v21];
  v32 = v47;
  v33 = v43;
  v23(v43, v31, v10);
  v34 = v44;
  MusicPin.item.getter();
  v35 = v45;
  v24(v33, v10);
  v36 = v46;
  if ((*(v35 + 88))(v34, v46) == enum case for MusicPin.Item.artist(_:))
  {
    (*(v35 + 8))(v34, v36);
    v37 = v40;
    static UIView.Corner.rounded.getter();

    return (*(v41 + 40))(a2 + v39, v37, v42);
  }

  else
  {

    return (*(v35 + 8))(v34, v36);
  }
}

id sub_10032CB80()
{
  v1 = [v0 tabBarController];
  if (!v1)
  {
    if (qword_10117F7A0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000060E4(v16, qword_101218E00);
    v17 = v0;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v35[0] = v21;
      *v20 = 136446210;
      v22 = v17;
      v23 = [v22 description];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = sub_1000105AC(v24, v26, v35);

      *(v20 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v18, v19, "No presentation source provided for pin tab=%{public}s", v20, 0xCu);
      sub_10000959C(v21);
    }

    return 0;
  }

  v2 = v1;
  v44 = v0;
  v45 = 0u;
  v46 = 0u;
  v47 = 2;
  PresentationSource.Position.init(source:permittedArrowDirections:)(&v44, 12, v36);
  v40[0] = v36[0];
  v40[1] = v36[1];
  v41 = v37;
  v42 = v38;
  v43 = v39;
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v0;
  v5 = v0;
  result = [v5 identifier];
  if (result)
  {
    v7 = result;
    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10012B7A8(v35, v34);
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    sub_10012B828(v34, v10 + 24);
    v11 = objc_opt_self();
    v32 = sub_10032E8A8;
    v33 = v8;
    v28 = _NSConcreteStackBlock;
    v29 = 1107296256;
    v30 = sub_100747E6C;
    v31 = &unk_1010A70D8;
    v12 = _Block_copy(&v28);
    v13 = v5;

    v32 = sub_10032E8B0;
    v33 = v10;
    v28 = _NSConcreteStackBlock;
    v29 = 1107296256;
    v30 = sub_100747EBC;
    v31 = &unk_1010A7100;
    v14 = _Block_copy(&v28);

    v15 = [v11 configurationWithIdentifier:v7 previewProvider:v12 actionProvider:v14];

    _Block_release(v14);
    _Block_release(v12);
    sub_10012BA6C(v35);

    return v15;
  }

  __break(1u);
  return result;
}

uint64_t sub_10032CFF8(uint64_t a1)
{
  v2 = type metadata accessor for MusicPin();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin;
  swift_beginAccess();
  (*(v3 + 16))(v5, a1 + v6, v2);
  return sub_1007350F8(v5, 1);
}

char *sub_10032D0EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for UUID();
  v156 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v128 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MusicPin.Action();
  v144 = *(v7 - 8);
  v145 = v7;
  __chkstk_darwin();
  v141 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v140 = &v128 - v9;
  v10 = type metadata accessor for MusicPin.Item();
  v142 = *(v10 - 8);
  v143 = v10;
  __chkstk_darwin();
  v139 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Actions.PlaybackContext(0);
  v13 = *(v12 - 8);
  v163 = v12;
  v164 = v13;
  __chkstk_darwin();
  v15 = &v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = v14;
  __chkstk_darwin();
  v17 = &v128 - v16;
  sub_10010FC20(&unk_1011838F0, &qword_100EC1070);
  __chkstk_darwin();
  v150 = &v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v149 = &v128 - v19;
  v152 = *(sub_10010FC20(&unk_1011838D0, &unk_100EC0320) - 8);
  __chkstk_darwin();
  v153 = v20;
  v154 = &v128 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v166 = (&v128 - v21);
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v158 = &v128 - v22;
  sub_10010FC20(&unk_1011838E0, &unk_100EC1670);
  __chkstk_darwin();
  v146 = &v128 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v148 = &v128 - v24;
  __chkstk_darwin();
  v26 = &v128 - v25;
  sub_10010FC20(&unk_10118AB20, &unk_100EBF390);
  __chkstk_darwin();
  v157 = &v128 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v165 = &v128 - v28;
  v29 = type metadata accessor for MusicPin();
  v161 = *(v29 - 8);
  __chkstk_darwin();
  v160 = &v128 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = v30;
  __chkstk_darwin();
  v167 = &v128 - v31;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v33 = result;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return 0;
  }

  v134 = a3;
  v34 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin;
  swift_beginAccess();
  v136 = *(v161 + 16);
  v137 = v161 + 16;
  v136(v167, &v33[v34], v29);
  v35 = [v33 managingTabGroup];
  if (!v35)
  {
    goto LABEL_8;
  }

  v36 = v35;
  _s3TabCMa(0);
  v37 = swift_dynamicCastClass();
  if (!v37)
  {

LABEL_8:
    type metadata accessor for MusicLibrary();
    v135 = static MusicLibrary.shared.getter();
    goto LABEL_9;
  }

  v135 = *(v37 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_selectedLibrary);

LABEL_9:
  v159 = v29;
  v138 = v15;
  v147 = v17;
  v38 = qword_10117F608;
  v39 = v33;
  if (v38 != -1)
  {
    swift_once();
  }

  v40 = qword_101218AD8;
  ObjectType = swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v42 = result;
    v132 = v6;
    v133 = v4;
    v43 = *(result + 1);
    v44 = v39;
    v45 = v40;
    v46 = v158;
    v43(ObjectType, v42);

    PlaybackIntentDescriptor.IntentType.init(_:)(v46, v26);
    v47 = UITab.combinedPlayActivityFeatureName.getter();
    v49 = MPCPlaybackIntent.PlayActivityInformation.init(featureName:recommendationData:)(v47, v48, 0, 0xF000000000000000);
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v56 = sub_100009F78(0, &qword_101181F70, UITab_ptr);
    v178[4] = &protocol witness table for UITab;
    v178[3] = v56;
    v131 = v44;
    v178[0] = v44;
    v57 = v165;
    v128 = v45;
    Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v45, v26, v49, v51, v53, v55, v178, v165);
    (*(v164 + 56))(v57, 0, 1, v163);
    sub_10012B7A8(v134, v178);
    v58 = type metadata accessor for MetricsEvent.Page(0);
    v59 = *(*(v58 - 8) + 56);
    v60 = v149;
    v59(v149, 1, 1, v58);
    v61 = v150;
    sub_1000089F8(v60, v150, &unk_1011838F0, &qword_100EC1070);
    MetricsReportingController.shared.unsafeMutableAddressor();
    v134 = sub_10053771C();
    v130 = v62;
    if (qword_10117F600 != -1)
    {
      swift_once();
    }

    v63 = qword_101218AD0;
    v129 = GroupActivitiesManager.hasJoined.getter();
    v64 = GroupActivitiesManager.participantsCount.getter();
    sub_1000095E8(v60, &unk_1011838F0, &qword_100EC1070);
    v65 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
    swift_beginAccess();
    v66 = *(v63 + v65);
    v67 = type metadata accessor for Actions.MetricsReportingContext(0);
    v68 = v67[5];
    v69 = v166;
    v59(v166 + v68, 1, 1, v58);
    v70 = v67[7];
    v71 = (v69 + v67[6]);
    v72 = v67[8];
    *v69 = xmmword_100EBEF60;
    sub_10006B010(v61, v69 + v68, &unk_1011838F0, &qword_100EC1070);
    v73 = v130;
    *v71 = v134;
    v71[1] = v73;
    *(v69 + v70) = 0;
    *(v69 + v72) = 0;
    v74 = v69 + v67[9];
    *v74 = v129 & 1;
    *(v74 + 1) = v64;
    *(v74 + 2) = v66;
    (*(*(v67 - 1) + 56))(v69, 0, 1, v67);
    sub_1000089F8(v178, v175, &unk_1011845E0, &unk_100EBF3A0);
    if (v176 == 1)
    {
      v180 = 0;
      memset(v179, 0, sizeof(v179));
      v181 = xmmword_100EBCEF0;
      PresentationSource.init(viewController:position:)(Strong, v179, v177);
      v75 = v147;
      v76 = v157;
      if (v176 != 1)
      {
        sub_1000095E8(v175, &unk_1011845E0, &unk_100EBF3A0);
      }
    }

    else
    {
      sub_10012B828(v175, v177);
      v75 = v147;
      v76 = v157;
    }

    sub_1000089F8(v165, v76, &unk_10118AB20, &unk_100EBF390);
    v77 = v164 + 48;
    v78 = *(v164 + 48);
    if ((v78)(v76, 1, v163) == 1)
    {
      v149 = v78;
      v150 = v77;
      if (qword_10117F6D8 != -1)
      {
        swift_once();
      }

      v79 = v139;
      v80 = v167;
      MusicPin.item.getter();
      v81 = v140;
      MusicPin.action.getter();
      v83 = v144;
      v82 = v145;
      v84 = v141;
      (*(v144 + 104))(v141, enum case for MusicPin.Action.shuffle(_:), v145);
      v85 = static MusicPin.Action.== infix(_:_:)();
      v86 = *(v83 + 8);
      v86(v84, v82);
      v86(v81, v82);
      v87 = v158;
      sub_10042BAAC(v79, v85 & 1, v158);
      (*(v142 + 8))(v79, v143);
      v88 = v148;
      PlaybackIntentDescriptor.IntentType.init(_:)(v87, v148);
      sub_10010FC20(&unk_101183930, &unk_100EC1690);
      v89 = swift_allocObject();
      *(v89 + 16) = xmmword_100EBDC20;
      v175[0] = Strong;
      v90 = Strong;
      v91 = String.init<A>(reflecting:)();
      *(v89 + 56) = &type metadata for Player.CommandIssuerIdentity;
      *(v89 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v89 + 32) = v91;
      *(v89 + 40) = v92;
      v93 = v159;
      *(v89 + 96) = v159;
      *(v89 + 104) = &protocol witness table for MusicPin;
      v94 = sub_10001C8B8((v89 + 72));
      v136(v94, v80, v93);
      v95 = static Player.CommandIssuer<>.combining(_:)(v89);
      v97 = v96;

      v175[3] = &type metadata for Player.CommandIssuerIdentity;
      v175[4] = &protocol witness table for Player.CommandIssuerIdentity;
      v175[0] = v95;
      v175[1] = v97;
      v98 = v146;
      sub_1000089F8(v88, v146, &unk_1011838E0, &unk_100EC1670);
      v99 = v128;
      v100 = UIViewController.playActivityInformation.getter();
      v102 = v101;
      v104 = v103;
      v106 = v105;
      sub_1000089F8(v175, &v172, &unk_101183910, &unk_100EBDD00);
      if (v173)
      {
        sub_100188D80(&v172, v174);
        v75 = v147;
      }

      else
      {
        v171 = v90;
        sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
        v107 = v90;
        sub_10010FC20(&unk_101183920, &unk_100EC0330);
        if (swift_dynamicCast())
        {
          sub_100188D80(&v168, v174);
          v75 = v147;
        }

        else
        {
          v170 = 0;
          v168 = 0u;
          v169 = 0u;
          v174[0] = v107;
          v108 = v107;
          v109 = String.init<A>(reflecting:)();
          v174[3] = &type metadata for Player.CommandIssuerIdentity;
          v174[4] = &protocol witness table for Player.CommandIssuerIdentity;
          v174[0] = v109;
          v174[1] = v110;
          v75 = v147;
          if (*(&v169 + 1))
          {
            sub_1000095E8(&v168, &unk_101183910, &unk_100EBDD00);
          }
        }

        v98 = v146;
        if (v173)
        {
          sub_1000095E8(&v172, &unk_101183910, &unk_100EBDD00);
        }
      }

      Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v99, v98, v100, v102, v104, v106, v174, v75);
      sub_1000095E8(v148, &unk_1011838E0, &unk_100EC1670);
      sub_1000095E8(v175, &unk_101183910, &unk_100EBDD00);
      v111 = v157;
      if ((v149)(v157, 1, v163) != 1)
      {
        sub_1000095E8(v111, &unk_10118AB20, &unk_100EBF390);
      }
    }

    else
    {
      sub_100314A80(v76, v75);
    }

    sub_10032EC34(&qword_10118BB00, &type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);
    v112 = v167;
    v113 = v159;
    v163 = dispatch thunk of CustomStringConvertible.description.getter();
    v158 = v114;
    v157 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v136(v160, v112, v113);
    sub_10032EB6C(v75, v138, type metadata accessor for Actions.PlaybackContext);
    v115 = v154;
    sub_1000089F8(v166, v154, &unk_1011838D0, &unk_100EC0320);
    sub_10012B7A8(v177, v175);
    v116 = v161;
    v117 = (*(v161 + 80) + 16) & ~*(v161 + 80);
    v118 = (v151 + *(v164 + 80) + v117) & ~*(v164 + 80);
    v119 = (v155 + *(v152 + 80) + v118) & ~*(v152 + 80);
    v120 = (v153 + v119 + 7) & 0xFFFFFFFFFFFFFFF8;
    v121 = (v120 + 103) & 0xFFFFFFFFFFFFFFF8;
    v122 = swift_allocObject();
    (*(v116 + 32))(v122 + v117, v160, v159);
    sub_100314A80(v138, v122 + v118);
    sub_10032E8BC(v115, v122 + v119);
    sub_10012B828(v175, v122 + v120);
    *(v122 + v121) = v135;
    *(v122 + ((v121 + 15) & 0xFFFFFFFFFFFFFFF8)) = v157;

    v123 = v132;
    UUID.init()();
    v124 = UUID.uuidString.getter();
    v126 = v125;
    (*(v156 + 8))(v123, v133);
    type metadata accessor for ActionMenu();
    swift_allocObject();
    v182._countAndFlagsBits = v163;
    v182._object = v158;
    ActionMenu.init(id:type:subtitle:debugDescription:sort:builder:)(v124, v126, 0, 0, 0, v182, 0, sub_10032E92C, v122);

    v127 = ActionMenu.uiMenu(excluding:includeUnsupported:)(&off_10109A678, 0);

    sub_10032EBD4(v147, type metadata accessor for Actions.PlaybackContext);
    sub_10012BA6C(v177);
    sub_1000095E8(v178, &unk_1011845E0, &unk_100EBF3A0);
    sub_1000095E8(v165, &unk_10118AB20, &unk_100EBF390);
    (*(v116 + 8))(v167, v159);
    sub_1000095E8(v166, &unk_1011838D0, &unk_100EC0320);
    return v127;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10032E26C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MusicPin.Action();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = v23 - v7;
  v9 = type metadata accessor for MusicPin.Item();
  v25 = *(v9 - 8);
  v26 = v9;
  __chkstk_darwin();
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MusicPin();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin().n128_u64[0];
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v1 isEnabled])
  {
    v24 = a1;
    v17 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin;
    swift_beginAccess();
    (*(v13 + 16))(v16, &v1[v17], v12);
    if (qword_10117F6D8 != -1)
    {
      swift_once();
    }

    v23[1] = qword_101218C40;
    MusicPin.item.getter();
    MusicPin.action.getter();
    (*(v4 + 104))(v6, enum case for MusicPin.Action.shuffle(_:), v3);
    v18 = static MusicPin.Action.== infix(_:_:)();
    v19 = *(v4 + 8);
    v19(v6, v3);
    v19(v8, v3);
    sub_10042BAAC(v11, v18 & 1, v24);
    (*(v25 + 8))(v11, v26);
    return (*(v13 + 8))(v16, v12);
  }

  else
  {
    v21 = type metadata accessor for MusicPlaybackIntentDescriptor();
    v22 = *(*(v21 - 8) + 56);

    return v22(a1, 1, 1, v21);
  }
}

uint64_t sub_10032E5EC()
{
  v1 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin;
  v2 = type metadata accessor for MusicPin();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_10032E66C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10032E740(uint64_t a1)
{
  result = type metadata accessor for MusicPin();
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

unint64_t sub_10032E7E0()
{
  result = qword_101197270;
  if (!qword_101197270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101197270);
  }

  return result;
}

unint64_t sub_10032E83C()
{
  result = qword_10118BAF8;
  if (!qword_10118BAF8)
  {
    sub_1001109D0(&qword_10118BAF0, &qword_100EC7338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118BAF8);
  }

  return result;
}

uint64_t sub_10032E8BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_1011838D0, &unk_100EC0320);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10032E92C()
{
  v1 = *(type metadata accessor for MusicPin() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Actions.PlaybackContext(0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_10010FC20(&unk_1011838D0, &unk_100EC0320) - 8);
  v9 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v10 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 103) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + v11);
  v13 = *(v0 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100492FA8(v0 + v2, v0 + v5, v0 + v9, v0 + v10, v12, v13, v8);
}

uint64_t sub_10032EAAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_10032B934(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_10032EB6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10032EBD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10032EC34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10032EC90()
{
  v1 = v0;
  sub_10010FC20(&qword_101189A18, &unk_100EE1DA0);
  __chkstk_darwin();
  v3 = &v50 - v2;
  v4 = type metadata accessor for Song();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v50 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v51 = &v50 - v7;
  __chkstk_darwin();
  v9 = &v50 - v8;
  v54 = _swiftEmptyArrayStorage;
  v55 = _swiftEmptyArrayStorage;
  v10 = _swiftEmptyArrayStorage;
  if (v0[OBJC_IVAR____TtC5Music26StaticLyricsViewController_isInModal] == 1)
  {
    v11 = v4;
    sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
    sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v56.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v56.is_nil = 0;
    v12.super.super.isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemClose, v56, v57).super.super.isa;
    v13 = [v0 navigationController];
    if (!v13)
    {
      goto LABEL_13;
    }

    v14 = v13;
    v15 = [v13 viewControllers];

    sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v16 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_5;
      }
    }

    else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      if ((v16 & 0xC000000000000001) != 0)
      {
        v17 = sub_10004056C(0, v16);
      }

      else
      {
        if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_41;
        }

        v17 = *(v16 + 32);
      }

      v18 = v17;

      v19 = v1;
      v20 = static NSObject.== infix(_:_:)();

      if (v20)
      {
        v12.super.super.isa = v12.super.super.isa;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_10:
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v10 = v55;
LABEL_16:
          v4 = v11;
          goto LABEL_17;
        }

LABEL_41:
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        goto LABEL_10;
      }

LABEL_13:
      v21 = v12.super.super.isa;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v10 = _swiftEmptyArrayStorage;
      goto LABEL_16;
    }

    goto LABEL_13;
  }

LABEL_17:
  v52 = v10;
  v53 = v3;
  v22 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_song;
  v23 = *(v5 + 16);
  v23(v9, &v1[OBJC_IVAR____TtC5Music26StaticLyricsViewController_song], v4);
  Song.catalogID.getter();
  v25 = v24;
  v26 = v4;
  v27 = *(v5 + 8);
  v28 = v26;
  v27(v9);
  if (v25)
  {

    sub_1001EBB88();
    if (v29)
    {
LABEL_30:
      v40 = v53;
      goto LABEL_31;
    }
  }

  else
  {
    sub_10032F4EC();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    sub_1001EBB88();
    if (v30)
    {
      goto LABEL_30;
    }
  }

  v31 = [objc_opt_self() currentTraitCollection];
  v32 = [v31 userInterfaceIdiom];

  if (v32 == 6)
  {
    goto LABEL_30;
  }

  v33 = v51;
  v34 = v28;
  v23(v51, &v1[v22], v28);
  Song.catalogID.getter();
  v36 = v35;
  (v27)(v33, v34);
  if (!v36)
  {
    goto LABEL_30;
  }

  v37 = v50;
  v23(v50, &v1[v22], v34);
  v38 = Song.hasLyrics.getter();
  (v27)(v37, v34);
  if ((v38 & 1) == 0)
  {
    goto LABEL_30;
  }

  v23(v37, &v1[v22], v34);
  v39 = Song.hasTimeSyncedLyrics.getter();
  (v27)(v37, v34);
  v40 = v53;
  if (v39)
  {
    sub_100334D08();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

LABEL_31:
  v41 = *(*&v1[OBJC_IVAR____TtC5Music26StaticLyricsViewController_contentViewController] + OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyrics);
  if (!v41)
  {
    v45 = type metadata accessor for Lyrics.Translation(0);
    (*(*(v45 - 8) + 56))(v40, 1, 1, v45);
    goto LABEL_37;
  }

  v42 = *(*v41 + 288);

  v42(v43);

  v44 = type metadata accessor for Lyrics.Translation(0);
  if ((*(*(v44 - 8) + 48))(v40, 1, v44) == 1)
  {
LABEL_37:
    sub_1000095E8(v40, &qword_101189A18, &unk_100EE1DA0);
    goto LABEL_38;
  }

  sub_1000095E8(v40, &qword_101189A18, &unk_100EE1DA0);
  sub_100335290();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_38:
  v46 = [v1 navigationItem];
  sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v46 setLeftBarButtonItems:isa animated:0];

  v48 = [v1 navigationItem];
  v49 = Array._bridgeToObjectiveC()().super.isa;

  [v48 setRightBarButtonItems:v49 animated:0];
}

id sub_10032F4EC()
{
  v1 = OBJC_IVAR____TtC5Music26StaticLyricsViewController____lazy_storage___contextBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC5Music26StaticLyricsViewController____lazy_storage___contextBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music26StaticLyricsViewController____lazy_storage___contextBarButtonItem);
  }

  else
  {
    sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v5 = v0;
    v7 = static UIBarButtonItem.contextBarButtonItem(options:childrenProvider:)(0, sub_100337384, v4, v6);

    v8 = *(v0 + v1);
    *(v5 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void *sub_10032F5D0(uint64_t a1)
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011838E0, &unk_100EC1670);
  __chkstk_darwin();
  v101 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v102 = &v83 - v6;
  v105 = *(sub_10010FC20(&unk_1011838D0, &unk_100EC0320) - 8);
  __chkstk_darwin();
  v8 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = v7;
  __chkstk_darwin();
  v108 = (&v83 - v9);
  v103 = *(sub_10010FC20(&unk_1011845D0, &unk_100EBF380) - 8);
  __chkstk_darwin();
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = v10;
  __chkstk_darwin();
  v13 = &v83 - v12;
  sub_10010FC20(&unk_10118AB20, &unk_100EBF390);
  __chkstk_darwin();
  v15 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v83 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v94 = v11;
  v95 = v8;
  v97 = v4;
  v98 = v2;
  v99 = v1;
  v19 = Strong;
  v20 = sub_10032F4EC();
  PresentationSource.Position.init(sourceItem:permittedArrowDirections:)(v20, 15, v124);
  v21 = v19;
  PresentationSource.init(viewController:position:)(v21, v124, v123);
  sub_10010FC20(&unk_101183900, &unk_100EC1680);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100EBC6B0;
  v23 = type metadata accessor for Song();
  *(v22 + 56) = v23;
  *(v22 + 64) = &protocol witness table for Song;
  v24 = sub_10001C8B8((v22 + 32));
  (*(*(v23 - 8) + 16))(v24, v21 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_song, v23);
  v25 = [v21 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v93 = v122[0];
  v26 = type metadata accessor for Actions.PlaybackContext(0);
  v27 = *(v26 - 8);
  (*(v27 + 56))(v17, 1, 1, v26);
  v28 = type metadata accessor for PlaylistContext(0);
  (*(*(v28 - 8) + 56))(v13, 1, 1, v28);
  sub_10012B7A8(v123, v122);
  v29 = v108;
  sub_1003335B0(v108);
  v30 = type metadata accessor for Actions.MetricsReportingContext(0);
  (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
  sub_10012B7A8(v123, v121);
  v31 = swift_allocObject();
  *(v31 + 16) = v21;
  v92 = v31;
  sub_10012B828(v121, v31 + 24);
  sub_100008FE4(v22 + 32, v120);
  v32 = v21;

  sub_1000089F8(v122, &v115, &unk_1011845E0, &unk_100EBF3A0);
  v33 = v17;
  if (v118 == 1)
  {
    v129 = 0;
    memset(v128, 0, sizeof(v128));
    v130 = xmmword_100EBCEF0;
    PresentationSource.init(viewController:position:)(v32, v128, v119);
    v34 = v32;
    if (v118 != 1)
    {
      sub_1000095E8(&v115, &unk_1011845E0, &unk_100EBF3A0);
    }
  }

  else
  {
    sub_10012B828(&v115, v119);
    v34 = v32;
  }

  swift_getObjectType();
  v36 = swift_conformsToProtocol2();
  if (v36)
  {
    v89 = v36;
    v37 = v34;
    v90 = v34;
  }

  else
  {
    v89 = 0;
    v90 = 0;
  }

  v91 = swift_allocBox();
  v39 = v38;
  sub_1000089F8(v33, v15, &unk_10118AB20, &unk_100EBF390);
  v40 = *(v27 + 48);
  v41 = v40(v15, 1, v26);
  v107 = v13;
  v96 = v33;
  v100 = v34;
  if (v41 == 1)
  {
    v42 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
    v43 = v102;
    (*(*(v42 - 8) + 56))(v102, 1, 1, v42);
    v117 = 0;
    v115 = 0u;
    v116 = 0u;
    if (qword_10117F608 != -1)
    {
      swift_once();
    }

    v44 = qword_101218AD8;
    sub_1000089F8(v43, v101, &unk_1011838E0, &unk_100EC1670);
    v88 = v44;
    v45 = UIViewController.playActivityInformation.getter();
    v86 = v47;
    v87 = v46;
    v49 = v48;
    sub_1000089F8(&v115, &v113, &unk_101183910, &unk_100EBDD00);
    if (v114)
    {
      sub_100059A8C(&v113, &v125);
    }

    else
    {
      v84 = v39;
      v85 = v45;
      v112 = v34;
      sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
      v50 = v34;
      sub_10010FC20(&unk_101183920, &unk_100EC0330);
      if (swift_dynamicCast())
      {
        sub_100059A8C(&v109, &v125);
        v39 = v84;
      }

      else
      {
        v111 = 0;
        v109 = 0u;
        v110 = 0u;
        *&v125 = v50;
        v51 = v50;
        v52 = String.init<A>(reflecting:)();
        *(&v126 + 1) = &type metadata for Player.CommandIssuerIdentity;
        v127 = &protocol witness table for Player.CommandIssuerIdentity;
        *&v125 = v52;
        *(&v125 + 1) = v53;
        v39 = v84;
        if (*(&v110 + 1))
        {
          sub_1000095E8(&v109, &unk_101183910, &unk_100EBDD00);
        }
      }

      v34 = v100;
      v45 = v85;
      if (v114)
      {
        sub_1000095E8(&v113, &unk_101183910, &unk_100EBDD00);
      }
    }

    Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v88, v101, v45, v87, v86, v49, &v125, v39);
    sub_1000095E8(&v115, &unk_101183910, &unk_100EBDD00);
    sub_1000095E8(v102, &unk_1011838E0, &unk_100EC1670);
    if (v40(v15, 1, v26) != 1)
    {
      sub_1000095E8(v15, &unk_10118AB20, &unk_100EBF390);
    }
  }

  else
  {
    sub_100337398(v15, v39, type metadata accessor for Actions.PlaybackContext);
  }

  v54 = *(v26 + 28);
  sub_1000089F8(&v39[v54], &v125, &unk_101183910, &unk_100EBDD00);
  if (*(&v126 + 1))
  {
    sub_100059A8C(&v125, &v115);
  }

  else
  {
    *&v115 = v34;
    v55 = v34;
    v56 = String.init<A>(reflecting:)();
    *(&v116 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v117 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v115 = v56;
    *(&v115 + 1) = v57;
    if (*(&v126 + 1))
    {
      sub_1000095E8(&v125, &unk_101183910, &unk_100EBDD00);
    }
  }

  sub_10010FC20(&unk_101183930, &unk_100EC1690);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_100EBDC20;
  *(v58 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v58 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v58 + 32) = 0x4D747865746E6F43;
  *(v58 + 40) = 0xEB00000000756E65;
  sub_100008FE4(&v115, v58 + 72);
  v59 = static Player.CommandIssuer<>.combining(_:)(v58);
  v61 = v60;

  sub_10000959C(&v115);
  *(&v116 + 1) = &type metadata for Player.CommandIssuerIdentity;
  v117 = &protocol witness table for Player.CommandIssuerIdentity;
  *&v115 = v59;
  *(&v115 + 1) = v61;
  sub_10006B010(&v115, &v39[v54], &unk_101183910, &unk_100EBDD00);
  sub_100008FE4(v120, &v115);
  sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
  v62 = String.init<A>(describing:)();
  v101 = v63;
  v102 = v62;
  v88 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100008FE4(v120, &v113);
  sub_10012B7A8(v119, &v115);
  v64 = v95;
  sub_1000089F8(v108, v95, &unk_1011838D0, &unk_100EC0320);
  v65 = v94;
  sub_1000089F8(v107, v94, &unk_1011845D0, &unk_100EBF380);
  v66 = (*(v105 + 80) + 160) & ~*(v105 + 80);
  v67 = (v106 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v68 = (v67 + 15) & 0xFFFFFFFFFFFFFFF8;
  v69 = (*(v103 + 80) + v68 + 8) & ~*(v103 + 80);
  v106 = (v69 + v104 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = (v69 + v104 + 31) & 0xFFFFFFFFFFFFFFF8;
  v71 = swift_allocObject();
  sub_100059A8C(&v113, v71 + 16);
  *(v71 + 56) = v93;
  sub_10012B828(&v115, v71 + 64);
  sub_10003D17C(v64, v71 + v66, &unk_1011838D0, &unk_100EC0320);
  *(v71 + v67) = v88;
  *(v71 + v68) = v91;
  sub_10003D17C(v65, v71 + v69, &unk_1011845D0, &unk_100EBF380);
  v72 = v71 + v106;
  v73 = v89;
  *v72 = v90;
  *(v72 + 8) = v73;
  *(v72 + 16) = 2;
  v74 = (v71 + v70);
  v75 = v92;
  *v74 = sub_10033738C;
  v74[1] = v75;
  swift_unknownObjectRetain();

  v76 = v97;
  UUID.init()();
  v77 = UUID.uuidString.getter();
  v79 = v78;
  (*(v98 + 8))(v76, v99);
  v131._object = v101;
  v131._countAndFlagsBits = v102;
  ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(&v125, v131, v77, v79, sub_1001CFB84, v71);
  swift_unknownObjectRelease();
  sub_10012BA6C(v119);
  sub_10000959C(v120);

  v80 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(&off_10109A6A0, 0);
  v119[0] = v125;
  sub_100015BB0(v119);
  v115 = v126;
  sub_100015BB0(&v115);

  sub_1000095E8(v108, &unk_1011838D0, &unk_100EC0320);
  sub_1000095E8(v122, &unk_1011845E0, &unk_100EBF3A0);
  sub_1000095E8(v107, &unk_1011845D0, &unk_100EBF380);
  sub_1000095E8(v96, &unk_10118AB20, &unk_100EBF390);
  if (v80)
  {
    v81 = [v80 children];
    sub_100009F78(0, &qword_10118CDE0, UIMenuElement_ptr);
    v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v35 = _swiftEmptyArrayStorage;
    v81 = v100;
  }

  sub_10012BA6C(v123);
  return v35;
}

uint64_t sub_1003303D0(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  sub_10010FC20(&unk_1011838D0, &unk_100EC0320);
  __chkstk_darwin();
  v36 = (&v33 - v3);
  v4 = type metadata accessor for Lyrics.Translation(0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101189A18, &unk_100EE1DA0);
  __chkstk_darwin();
  v9 = &v33 - v8;
  v10 = type metadata accessor for Song();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin();
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_song, v10, v12);
  v34 = Song.id.getter();
  v16 = v15;
  (*(v11 + 8))(v14, v10);
  v37 = a1;
  v17 = *(a1 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_contentViewController);
  v18 = OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_translation;
  swift_beginAccess();
  sub_1000089F8(v17 + v18, v9, &qword_101189A18, &unk_100EE1DA0);
  if ((*(v5 + 48))(v9, 1, v4))
  {
    sub_1000095E8(v9, &qword_101189A18, &unk_100EE1DA0);
    v19 = 0;
    v20 = 0;
  }

  else
  {
    sub_10033731C(v9, v7, type metadata accessor for Lyrics.Translation);
    sub_1000095E8(v9, &qword_101189A18, &unk_100EE1DA0);
    v21 = &v7[*(v4 + 20)];
    v19 = *v21;
    v20 = *(v21 + 1);

    sub_100337588(v7, type metadata accessor for Lyrics.Translation);
  }

  v51 = v19;
  v52 = v20;
  v53 = 0u;
  v54 = 0u;
  v22 = Lyrics.ReportConcernData.dictionaryRepresentation()();

  v23 = sub_100363D38(v22);

  sub_10012B7A8(v35, v49);
  v24 = v36;
  sub_1003335B0(v36);
  v25 = type metadata accessor for Actions.MetricsReportingContext(0);
  (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
  v26 = swift_allocObject();
  v27 = v34;
  *(v26 + 16) = v34;
  *(v26 + 24) = v16;
  *(v26 + 32) = 2;
  *(v26 + 40) = v23;
  sub_10012B828(v49, v26 + 48);
  Actions.ReportConcern.Context.init(contentID:contentType:actionType:canReportConcern:reportConcern:metricsReportingContext:)(v27, v16, 1735290739, 0xE400000000000000, 40, variable initialization expression of _NSRange.NSRangeIterator.current, 0, &unk_100EBF410, v48, v26, v24);
  static Actions.ReportConcern.action(context:)(v48, v49);

  v42 = v49[4];
  v43 = v49[5];
  v44 = v49[6];
  v45 = v50;
  v38 = v49[0];
  v39 = v49[1];
  v40 = v49[2];
  v41 = v49[3];
  v28 = static ActionBuilder.buildExpression<A, B>(_:)(&v38, &type metadata for Actions.ReportConcern.Context, (&type metadata for () + 1), &protocol witness table for Actions.ReportConcern.Context);
  v46[4] = v42;
  v46[5] = v43;
  v46[6] = v44;
  v47 = v45;
  v46[0] = v38;
  v46[1] = v39;
  v46[2] = v40;
  v46[3] = v41;
  sub_1000095E8(v46, &qword_1011839B0, &unk_100EC73E0);
  sub_10010FC20(&unk_101183940, &unk_100EC64D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 32) = v28;
  v30 = inited + 32;
  v31 = static ActionBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_1000095E8(v30, &unk_10118AB80, &qword_100EBF3B0);
  return v31;
}

void sub_10033097C()
{
  v1 = v0;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v150 = &v150 - v2;
  type metadata accessor for MetricsEvent.Page(0);
  __chkstk_darwin();
  v151 = (&v150 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for Song();
  v153 = *(v4 - 8);
  v154 = v4;
  __chkstk_darwin();
  v152 = &v150 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v7 = &v150 - v6;
  v8 = type metadata accessor for StaticLyricsViewController(0);
  v157.receiver = v0;
  v157.super_class = v8;
  objc_msgSendSuper2(&v157, "viewDidLoad");
  v9 = [v0 view];
  if (!v9)
  {
    __break(1u);
    goto LABEL_32;
  }

  v10 = v9;
  v11 = objc_opt_self();
  v12 = [v11 systemBackgroundColor];
  [v10 setBackgroundColor:v12];

  v13 = [v1 navigationItem];
  [v13 setLargeTitleDisplayMode:2];

  v14 = type metadata accessor for TaskPriority();
  v15 = *(*(v14 - 8) + 56);
  v15(v7, 1, 1, v14);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = &protocol witness table for MainActor;
  v18[4] = v16;

  sub_10086E3AC(0, 0, v7, &unk_100EC73F8, v18);

  v19 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_contentViewController;
  v20 = [*&v1[OBJC_IVAR____TtC5Music26StaticLyricsViewController_contentViewController] view];
  if (!v20)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v21 = v20;
  [v20 setPreservesSuperviewLayoutMargins:1];

  v22 = [*&v1[v19] view];
  if (!v22)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v23 = v22;
  [v22 setHidden:1];

  v156 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_activityIndicator;
  [*&v1[OBJC_IVAR____TtC5Music26StaticLyricsViewController_activityIndicator] startAnimating];
  v15(v7, 1, 1, v14);
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v25 = static MainActor.shared.getter();
  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = &protocol witness table for MainActor;
  v26[4] = v24;

  sub_10086E3AC(0, 0, v7, &unk_100EC7408, v26);

  v27 = [objc_allocWithZone(UIView) init];
  v28 = [v11 _barHairlineShadowColor];
  [v27 setBackgroundColor:v28];

  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (v1[OBJC_IVAR____TtC5Music26StaticLyricsViewController_isInModal])
  {
    v29 = 32.0;
  }

  else
  {
    v29 = 20.0;
  }

  v30 = [v1 view];
  if (!v30)
  {
    goto LABEL_34;
  }

  v31 = v30;
  v32 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_stackView;
  [v30 addSubview:*&v1[OBJC_IVAR____TtC5Music26StaticLyricsViewController_stackView]];

  v33 = [v1 view];
  if (!v33)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v34 = v33;
  [v33 addSubview:v27];

  v35 = [v1 view];
  if (!v35)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v36 = v35;
  v37 = [*&v1[v19] view];
  if (!v37)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v38 = v37;
  [v36 addSubview:v37];

  v39 = [v1 view];
  if (!v39)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v40 = v39;
  v155 = v27;
  [v39 addSubview:*&v1[v156]];

  [v1 addChildViewController:*&v1[v19]];
  [*&v1[v19] didMoveToParentViewController:v1];
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_100EC3DF0;
  v42 = [*&v1[v32] leadingAnchor];
  v43 = [v1 view];
  if (!v43)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v44 = v43;
  v45 = [v43 safeAreaLayoutGuide];

  v46 = [v45 leadingAnchor];
  v47 = [v42 constraintEqualToAnchor:v46 constant:v29];

  *(v41 + 32) = v47;
  v48 = [*&v1[v32] topAnchor];
  v49 = [v1 view];
  if (!v49)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v50 = v49;
  v51 = [v49 safeAreaLayoutGuide];

  v52 = [v51 topAnchor];
  v53 = [v48 constraintEqualToAnchor:v52];

  *(v41 + 40) = v53;
  v54 = [*&v1[v32] trailingAnchor];
  v55 = [v1 view];
  if (!v55)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v56 = v55;
  v57 = [v55 safeAreaLayoutGuide];

  v58 = [v57 trailingAnchor];
  v59 = [v54 constraintEqualToAnchor:v58 constant:-v29];

  *(v41 + 48) = v59;
  v60 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_artworkImageView;
  v61 = [*&v1[OBJC_IVAR____TtC5Music26StaticLyricsViewController_artworkImageView] widthAnchor];
  v62 = [v61 constraintEqualToConstant:60.0];

  *(v41 + 56) = v62;
  v63 = [*&v1[v60] heightAnchor];
  v64 = [*&v1[v60] widthAnchor];
  v65 = [v63 constraintEqualToAnchor:v64];

  *(v41 + 64) = v65;
  v66 = v155;
  v67 = [v155 topAnchor];
  v68 = [*&v1[v32] bottomAnchor];
  v69 = [v67 constraintEqualToAnchor:v68 constant:16.0];

  *(v41 + 72) = v69;
  v70 = [v66 leadingAnchor];
  v71 = [v1 view];
  if (!v71)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v72 = v71;
  v73 = [v71 leadingAnchor];

  v74 = [v70 constraintEqualToAnchor:v73 constant:v29];
  *(v41 + 80) = v74;
  v75 = [v66 trailingAnchor];
  v76 = [v1 view];
  if (!v76)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v77 = v76;
  v78 = [v76 trailingAnchor];

  v79 = [v75 constraintEqualToAnchor:v78];
  *(v41 + 88) = v79;
  v80 = [v66 heightAnchor];
  v81 = [v1 traitCollection];
  [v81 displayScale];
  v83 = v82;

  v84 = [v80 constraintEqualToConstant:1.0 / v83];
  *(v41 + 96) = v84;
  v85 = [*&v1[v19] view];
  if (!v85)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v86 = v85;
  v87 = [v85 topAnchor];

  v88 = [v66 bottomAnchor];
  v89 = [v87 constraintEqualToAnchor:v88];

  *(v41 + 104) = v89;
  v90 = [*&v1[v19] view];
  if (!v90)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v91 = v90;
  v92 = [v90 leadingAnchor];

  v93 = [v1 view];
  if (!v93)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v94 = v93;
  v95 = [v93 leadingAnchor];

  v96 = [v92 constraintEqualToAnchor:v95];
  *(v41 + 112) = v96;
  v97 = [*&v1[v19] view];
  if (!v97)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v98 = v97;
  v99 = [v97 trailingAnchor];

  v100 = [v1 view];
  if (!v100)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v101 = v100;
  v102 = [v100 trailingAnchor];

  v103 = [v99 constraintEqualToAnchor:v102];
  *(v41 + 120) = v103;
  v104 = [*&v1[v19] view];
  if (!v104)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v105 = v104;
  v106 = [v104 bottomAnchor];

  v107 = [v1 view];
  v108 = v156;
  if (!v107)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v109 = v107;
  v110 = [v107 bottomAnchor];

  v111 = [v106 constraintEqualToAnchor:v110];
  *(v41 + 128) = v111;
  v112 = [*&v1[v108] centerYAnchor];
  v113 = [v1 view];
  if (!v113)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v114 = v113;
  v115 = [v113 safeAreaLayoutGuide];

  v116 = [v115 centerYAnchor];
  v117 = [v112 constraintEqualToAnchor:v116];

  *(v41 + 136) = v117;
  v118 = [*&v1[v108] centerXAnchor];
  v119 = [v1 view];
  if (!v119)
  {
LABEL_52:
    __break(1u);
    return;
  }

  v120 = v119;
  v121 = objc_opt_self();
  v122 = [v120 safeAreaLayoutGuide];

  v123 = [v122 centerXAnchor];
  v124 = [v118 constraintEqualToAnchor:v123];

  *(v41 + 144) = v124;
  sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v121 activateConstraints:isa];

  v126 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC5Music26StaticLyricsViewController_backgroundObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationDidEnterBackgroundNotification, 0, 1, 1, sub_100337568, v126);

  v127 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC5Music26StaticLyricsViewController_foregroundObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationWillEnterForegroundNotification, 0, 1, 1, sub_100337570, v127);

  v128 = UIPresentationControllerPresentationTransitionDidEndNotification;
  v129 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC5Music26StaticLyricsViewController_presentationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v128, 0, 1, 1, sub_100337578, v129);

  v130 = UIPresentationControllerDismissalTransitionDidEndNotification;
  v131 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC5Music26StaticLyricsViewController_dismissalObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v130, 0, 1, 1, sub_100337580, v131);

  v133 = v152;
  v132 = v153;
  v134 = v154;
  (*(v153 + 16))(v152, &v1[OBJC_IVAR____TtC5Music26StaticLyricsViewController_song], v154);
  v135 = Song.catalogID.getter();
  v137 = v136;
  (*(v132 + 8))(v133, v134);
  if (v137)
  {
    v138 = type metadata accessor for URL();
    v139 = v150;
    (*(*(v138 - 8) + 56))(v150, 1, 1, v138);
    v140 = v151;
    MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)(v135, v137, 0x73636972794CLL, 0xE600000000000000, v139, 0, 0, 0, v151, 1, 0, 0, 2);
    v141 = *MetricsReportingController.shared.unsafeMutableAddressor();
    v142 = sub_10053771C();
    v144 = v143;
    v145 = v155;
    if (qword_10117F600 != -1)
    {
      swift_once();
    }

    v146 = qword_101218AD0;
    v147 = GroupActivitiesManager.hasJoined.getter();
    v148 = GroupActivitiesManager.participantsCount.getter();
    v149 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
    swift_beginAccess();
    (*((swift_isaMask & *v141) + 0xA0))(v140, v142, v144, v147 & 1, v148, *(v146 + v149));

    sub_100337588(v140, type metadata accessor for MetricsEvent.Page);
  }

  else
  {
  }
}

uint64_t sub_100331C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_10010FC20(&unk_101195200, &qword_100EBFA50);
  v4[6] = swift_task_alloc();
  sub_10010FC20(&unk_101184060, &qword_100EBDF50);
  v4[7] = swift_task_alloc();
  v5 = type metadata accessor for Song();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  v4[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[13] = v7;
  v4[14] = v6;

  return _swift_task_switch(sub_100331DF4, v7, v6);
}

uint64_t sub_100331DF4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[15] = Strong;
  if (!Strong)
  {

    goto LABEL_5;
  }

  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  v6 = Strong;
  (*(v5 + 16))(v2, Strong + OBJC_IVAR____TtC5Music26StaticLyricsViewController_song, v4);
  Song.artwork.getter();
  (*(v5 + 8))(v2, v4);
  v7 = type metadata accessor for Artwork();
  v0[16] = v7;
  v8 = *(v7 - 8);
  v0[17] = v8;
  if ((*(v8 + 48))(v3, 1, v7) == 1)
  {
    v9 = v0[11];

    sub_1000095E8(v9, &unk_101188920, &qword_100EBCC50);
    v10 = v0[15];
    [*&v10[OBJC_IVAR____TtC5Music26StaticLyricsViewController_artworkImageView] setImage:0];

LABEL_5:

    v11 = v0[1];

    return v11();
  }

  v13 = v0[6];
  v14 = v0[7];
  v15 = [v6 traitCollection];
  [v15 displayScale];
  v17 = v16;

  v18 = type metadata accessor for Artwork.CropStyle();
  (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
  v19 = type metadata accessor for Artwork.ImageFormat();
  (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  v20 = swift_task_alloc();
  v0[18] = v20;
  *v20 = v0;
  v20[1] = sub_1003320FC;
  v22 = v0[6];
  v23 = v0[7];
  v24.n128_u64[0] = 0x404E000000000000;
  v25.n128_u64[0] = 0x404E000000000000;

  v21.n128_f64[0] = 1.0 / v17;
  return Artwork.image(width:height:pixelLength:cropStyle:format:cacheOwner:)(v23, v22, 0, 0, v24, v25, v21);
}

uint64_t sub_1003320FC(uint64_t a1)
{
  v4 = *v2;
  (*v2)[19] = v1;

  if (v1)
  {
    v5 = v4[7];
    sub_1000095E8(v4[6], &unk_101195200, &qword_100EBFA50);
    sub_1000095E8(v5, &unk_101184060, &qword_100EBDF50);
    v6 = v4[13];
    v7 = v4[14];
    v8 = sub_100332364;
  }

  else
  {
    v9 = v4[16];
    v10 = v4[17];
    v11 = v4[11];
    v12 = v4[6];
    v13 = v4[7];
    v4[20] = a1;
    sub_1000095E8(v12, &unk_101195200, &qword_100EBFA50);
    sub_1000095E8(v13, &unk_101184060, &qword_100EBDF50);
    (*(v10 + 8))(v11, v9);
    v6 = v4[13];
    v7 = v4[14];
    v8 = sub_1003322A8;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_1003322A8()
{

  v1 = v0[20];
  v2 = v0[15];
  [*&v2[OBJC_IVAR____TtC5Music26StaticLyricsViewController_artworkImageView] setImage:v1];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100332364()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[11];

  (*(v2 + 8))(v4, v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10033242C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  sub_10010FC20(&qword_101189A18, &unk_100EE1DA0);
  v4[12] = swift_task_alloc();
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  v4[13] = swift_task_alloc();
  v5 = type metadata accessor for Song();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[17] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[18] = v7;
  v4[19] = v6;

  return _swift_task_switch(sub_100332590, v7, v6);
}

uint64_t sub_100332590()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC5Music26StaticLyricsViewController_lyricsLoader);
    v4 = v0[15];
    v3 = v0[16];
    v5 = v0[14];
    v0[21] = v2;
    (*(v4 + 16))(v3, Strong + OBJC_IVAR____TtC5Music26StaticLyricsViewController_song, v5);
    v6 = *((swift_isaMask & *v2) + 0x70);
    v2;
    v11 = (v6 + *v6);
    v7 = swift_task_alloc();
    v0[22] = v7;
    *v7 = v0;
    v7[1] = sub_100332784;
    v8 = v0[16];

    return v11(v8);
  }

  else
  {

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_100332784(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v4;
  v6 = *v4;
  v7 = *(*v4 + 168);
  v8 = *(*v4 + 128);
  v9 = *(*v4 + 120);
  v10 = *(*v4 + 112);
  *(v6 + 184) = a1;
  *(v6 + 192) = a2;
  *(v6 + 208) = a3;
  *(v6 + 200) = v3;

  (*(v9 + 8))(v8, v10);

  v11 = *(v5 + 152);
  v12 = *(v5 + 144);
  if (v3)
  {
    v13 = sub_100332C70;
  }

  else
  {
    v13 = sub_10033294C;
  }

  return _swift_task_switch(v13, v12, v11);
}

id sub_10033294C()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 160);
  [*(v2 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_activityIndicator) stopAnimating];
  v3 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_contentViewController;
  v4 = *(v2 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_contentViewController);
  if (v1)
  {
    v5 = v4;
    v6 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 248);

    LOBYTE(v6) = v6(0);

    if (v6)
    {
      (*(**(v0 + 184) + 288))(v7);
    }

    else
    {
      v14 = *(v0 + 96);
      v15 = type metadata accessor for Lyrics.Translation(0);
      (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
    }

    v16 = *(v0 + 96);
    sub_100782D34(*(v0 + 184), v16);

    sub_1000095E8(v16, &qword_101189A18, &unk_100EE1DA0);
    result = [*(v2 + v3) view];
    if (result)
    {
      v13 = result;
      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    return result;
  }

  v8 = *(v0 + 184);
  v9 = *(v0 + 192);
  v10 = &v4[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyricsText];
  *v10 = v8;
  v10[1] = v9;
  v11 = v4;
  sub_10021D0C0(v8, v9, 0);

  sub_100781890();

  result = [*(v2 + v3) view];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = result;
LABEL_9:
  v17 = *(v0 + 160);
  v18 = *(v0 + 104);

  [v13 setHidden:0];

  Date.init()();
  v19 = type metadata accessor for Date();
  (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  v20 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_lyricsVisibilityStart;
  swift_beginAccess();
  sub_10006B010(v18, v17 + v20, &qword_101188C20, &qword_100EC2030);
  swift_endAccess();
  v22 = *(v0 + 184);
  v21 = *(v0 + 192);
  v23 = *(v0 + 160);
  LOBYTE(v17) = *(v0 + 208);
  sub_10032EC90();
  sub_10011895C(v22, v21, v17 & 1);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100332C70()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

void sub_100332D00(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  __chkstk_darwin();
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v15 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_lyricsVisibilityStart;
    swift_beginAccess();
    sub_1000089F8(&v11[v12], v5, &qword_101188C20, &qword_100EC2030);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_1000095E8(v5, &qword_101188C20, &qword_100EC2030);
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
      Date.timeIntervalSinceNow.getter();
      v14 = v13;
      (*(v7 + 8))(v9, v6);
      *&v11[OBJC_IVAR____TtC5Music26StaticLyricsViewController_visibleDuration] = *&v11[OBJC_IVAR____TtC5Music26StaticLyricsViewController_visibleDuration] - v14;
      (*(v7 + 56))(v3, 1, 1, v6);
      swift_beginAccess();
      sub_10006B010(v3, &v11[v12], &qword_101188C20, &qword_100EC2030);
      swift_endAccess();
    }
  }
}

void sub_100332F88(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  __chkstk_darwin();
  v3 = &v8[-v2];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    Date.init()();
    v6 = type metadata accessor for Date();
    (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
    v7 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_lyricsVisibilityStart;
    swift_beginAccess();
    sub_10006B010(v3, v5 + v7, &qword_101188C20, &qword_100EC2030);
    swift_endAccess();
  }
}

void sub_1003330B4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (*(Strong + OBJC_IVAR____TtC5Music26StaticLyricsViewController_isVisible) != 1)
    {
      goto LABEL_9;
    }

    Notification.object.getter();
    if (!v12)
    {

      sub_1000095E8(v11, &unk_101183F30, qword_100EBF960);
      return;
    }

    sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_9:

      return;
    }

    v4 = [v3 parentViewController];
    if (v4)
    {
      v5 = v4;
      v6 = [v10 presentingViewController];
      if (v6)
      {
        v7 = v6;
        v8 = v5;
        v9 = static NSObject.== infix(_:_:)();

        if (v9)
        {
          sub_100333C48();

          return;
        }

        goto LABEL_14;
      }
    }

LABEL_14:
  }
}

void sub_100333238(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  __chkstk_darwin();
  v3 = &v16[-v2 - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (*(Strong + OBJC_IVAR____TtC5Music26StaticLyricsViewController_isVisible) != 1)
    {
      goto LABEL_9;
    }

    Notification.object.getter();
    if (!v17)
    {

      sub_1000095E8(v16, &unk_101183F30, qword_100EBF960);
      return;
    }

    sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_9:

      return;
    }

    v6 = v15;
    v7 = [v5 parentViewController];
    if (v7)
    {
      v8 = v7;
      v9 = [v6 presentingViewController];
      if (v9)
      {
        v10 = v9;
        v11 = v8;
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          Date.init()();

          v13 = type metadata accessor for Date();
          (*(*(v13 - 8) + 56))(v3, 0, 1, v13);
          v14 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_lyricsVisibilityStart;
          swift_beginAccess();
          sub_10006B010(v3, v5 + v14, &qword_101188C20, &qword_100EC2030);
          swift_endAccess();
          goto LABEL_9;
        }

        goto LABEL_14;
      }
    }

LABEL_14:
  }
}

uint64_t sub_1003335B0@<X0>(_OWORD *a1@<X8>)
{
  sub_10010FC20(&unk_1011838D0, &unk_100EC0320);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music26StaticLyricsViewController____lazy_storage___actionMetricsReportingContext;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &unk_1011838D0, &unk_100EC0320);
  v8 = type metadata accessor for Actions.MetricsReportingContext(0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return sub_100337398(v6, a1, type metadata accessor for Actions.MetricsReportingContext);
  }

  sub_1000095E8(v6, &unk_1011838D0, &unk_100EC0320);
  sub_1003337BC(v1, a1);
  sub_10033731C(a1, v4, type metadata accessor for Actions.MetricsReportingContext);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &unk_1011838D0, &unk_100EC0320);
  return swift_endAccess();
}

uint64_t sub_1003337BC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v41 = a2;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v40 = &v36 - v3;
  v4 = type metadata accessor for Song();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011838F0, &qword_100EC1070);
  __chkstk_darwin();
  v42 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v36 - v9;
  __chkstk_darwin();
  v12 = &v36 - v11;
  v13 = type metadata accessor for MetricsEvent.Page(0);
  v14 = *(*(v13 - 8) + 56);
  v14(v12, 1, 1, v13);
  (*(v5 + 16))(v7, a1 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_song, v4);
  v15 = Song.catalogID.getter();
  v17 = v16;
  (*(v5 + 8))(v7, v4);
  if (v17)
  {
    sub_1000095E8(v12, &unk_1011838F0, &qword_100EC1070);
    v18 = type metadata accessor for URL();
    v19 = v40;
    (*(*(v18 - 8) + 56))(v40, 1, 1, v18);
    MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)(v15, v17, 0x73636972794CLL, 0xE600000000000000, v19, 0, 0, 0, v10, 1, 0, 0, 2);
    v14(v10, 0, 1, v13);
    sub_10003D17C(v10, v12, &unk_1011838F0, &qword_100EC1070);
  }

  v20 = v13;
  sub_1000089F8(v12, v10, &unk_1011838F0, &qword_100EC1070);
  v21 = v42;
  sub_1000089F8(v10, v42, &unk_1011838F0, &qword_100EC1070);
  MetricsReportingController.shared.unsafeMutableAddressor();
  v22 = sub_10053771C();
  v39 = v23;
  v40 = v22;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v24 = qword_101218AD0;
  v38 = GroupActivitiesManager.hasJoined.getter();
  v37 = GroupActivitiesManager.participantsCount.getter();
  sub_1000095E8(v10, &unk_1011838F0, &qword_100EC1070);
  sub_1000095E8(v12, &unk_1011838F0, &qword_100EC1070);
  v25 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  v26 = *(v24 + v25);
  v27 = type metadata accessor for Actions.MetricsReportingContext(0);
  v28 = v27[5];
  v29 = v41;
  v14(v41 + v28, 1, 1, v20);
  v30 = v27[7];
  v31 = (v29 + v27[6]);
  v32 = v27[8];
  *v29 = xmmword_100EBEF60;
  result = sub_10006B010(v21, v29 + v28, &unk_1011838F0, &qword_100EC1070);
  v34 = v39;
  *v31 = v40;
  v31[1] = v34;
  *(v29 + v30) = 0;
  *(v29 + v32) = 0;
  v35 = v29 + v27[9];
  *v35 = v38 & 1;
  *(v35 + 1) = v37;
  *(v35 + 2) = v26;
  return result;
}

uint64_t sub_100333C48()
{
  v1 = v0;
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  __chkstk_darwin();
  v3 = &v14[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v14[-v4];
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_lyricsVisibilityStart;
  swift_beginAccess();
  sub_1000089F8(v1 + v10, v5, &qword_101188C20, &qword_100EC2030);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1000095E8(v5, &qword_101188C20, &qword_100EC2030);
  }

  (*(v7 + 32))(v9, v5, v6);
  Date.timeIntervalSinceNow.getter();
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  *(v1 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_visibleDuration) = *(v1 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_visibleDuration) - v13;
  (*(v7 + 56))(v3, 1, 1, v6);
  swift_beginAccess();
  sub_10006B010(v3, v1 + v10, &qword_101188C20, &qword_100EC2030);
  return swift_endAccess();
}

void sub_100333EB0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v94 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Song();
  v95 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v83 - v8;
  sub_10010FC20(&qword_101189A18, &unk_100EE1DA0);
  __chkstk_darwin();
  v93 = &v83 - v10;
  sub_10010FC20(&unk_101184010, &qword_100EBF9E8);
  __chkstk_darwin();
  v12 = &v83 - v11;
  sub_10010FC20(&qword_101189A10, &unk_100EBF9F0);
  __chkstk_darwin();
  v14 = &v83 - v13;
  sub_10010FC20(&unk_101183960, &unk_100EBCF90);
  __chkstk_darwin();
  v16 = &v83 - v15;
  v17 = *(*(v1 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_contentViewController) + OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyrics);
  if (!v17)
  {
    return;
  }

  v90 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_contentViewController;
  v91 = v3;

  sub_100333C48();
  v18 = *(v1 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_visibleDuration);
  if (v18 > 0.0)
  {
    v88 = v7;
    *(v1 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_visibleDuration) = 0;
    v19 = [objc_allocWithZone(MPCReportingLyricsViewEvent) init];
    v20 = v95;
    v21 = *(v95 + 16);
    v84 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_song;
    v86 = v21;
    v87 = v95 + 16;
    v21(v16, v1 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_song, v5);
    (*(v20 + 56))(v16, 0, 1, v5);
    v92 = v19;
    MPCReportingLyricsViewEvent.song.setter();
    v22 = v17[3];
    v89 = v2;
    if (v22)
    {

      v23 = String._bridgeToObjectiveC()();
    }

    else
    {
      v23 = 0;
    }

    v24 = v92;
    [v92 setLyricsID:v23];

    (*(*v17 + 232))([v24 setVisibleDuration:v18]);
    v25 = type metadata accessor for Locale.Language();
    v26 = *(v25 - 8);
    v27 = (*(v26 + 48))(v12, 1, v25);
    v85 = v17;
    if (v27 == 1)
    {
      v28 = &unk_101184010;
      v29 = &qword_100EBF9E8;
      v30 = v12;
    }

    else
    {
      Locale.Language.languageCode.getter();
      (*(v26 + 8))(v12, v25);
      v31 = type metadata accessor for Locale.LanguageCode();
      v32 = *(v31 - 8);
      if ((*(v32 + 48))(v14, 1, v31) != 1)
      {
        Locale.LanguageCode.identifier.getter();
        (*(v32 + 8))(v14, v31);
        v33 = String._bridgeToObjectiveC()();

        goto LABEL_15;
      }

      v28 = &qword_101189A10;
      v29 = &unk_100EBF9F0;
      v30 = v14;
    }

    sub_1000095E8(v30, v28, v29);
    v33 = 0;
LABEL_15:
    v34 = v92;
    [v92 setLanguage:v33];

    [v34 setDisplayType:0];
    [v34 setModelPlayEvent:*(v1 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_modelPlayEvent)];
    v35 = String._bridgeToObjectiveC()();
    [v34 setFeatureName:v35];

    v36 = *(v1 + v90);
    v37 = OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_translation;
    swift_beginAccess();
    v38 = v93;
    sub_1000089F8(v36 + v37, v93, &qword_101189A18, &unk_100EE1DA0);
    v39 = type metadata accessor for Lyrics.Translation(0);
    v40 = (*(*(v39 - 8) + 48))(v38, 1, v39) != 1;
    sub_1000095E8(v38, &qword_101189A18, &unk_100EE1DA0);
    [v34 setDisplayTranslationEnabled:v40];
    v41 = [objc_allocWithZone(MPCLyricsReportingController) init];
    [v41 recordLyricsViewEvent:v34];

    v97 = 0;
    v98 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);
    v42 = v1;
    v83 = v1;
    v43 = v84;
    v44 = v86;
    v86(v9, v42 + v84, v5);
    v45 = Song.title.getter();
    v47 = v46;
    v95 = *(v95 + 8);
    (v95)(v9, v5);

    v97 = v45;
    v98 = v47;
    v48._countAndFlagsBits = 0x3D64692820;
    v48._object = 0xE500000000000000;
    String.append(_:)(v48);
    v49 = v83;
    v44(v9, v83 + v43, v5);
    v50 = Song.id.getter();
    v52 = v51;
    v53 = v9;
    v54 = v95;
    (v95)(v53, v5);
    v55._countAndFlagsBits = v50;
    v55._object = v52;
    String.append(_:)(v55);

    v56._countAndFlagsBits = 0x676F6C6174616320;
    v56._object = 0xEB000000003D4449;
    String.append(_:)(v56);
    v57 = v88;
    v44(v88, v49 + v43, v5);
    v58 = Song.catalogID.getter();
    v60 = v59;
    v54(v57, v5);
    if (v60)
    {
      v61 = v58;
    }

    else
    {
      v61 = 0;
    }

    if (v60)
    {
      v62 = v60;
    }

    else
    {
      v62 = 0xE000000000000000;
    }

    v63 = v62;
    String.append(_:)(*&v61);

    v64._countAndFlagsBits = 41;
    v64._object = 0xE100000000000000;
    String.append(_:)(v64);
    v66 = v97;
    v65 = v98;
    v67 = Logger.lyrics.unsafeMutableAddressor();
    v68 = v91;
    v69 = v94;
    v70 = v89;
    (*(v91 + 16))(v94, v67, v89);
    v71 = v85;

    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v96 = v95;
      *v74 = 136446722;
      v75 = v71[3];
      v97 = v71[2];
      v98 = v75;

      sub_10010FC20(&qword_1011815E0, &qword_100EBD050);
      v76 = String.init<A>(describing:)();
      v78 = sub_1000105AC(v76, v77, &v96);

      *(v74 + 4) = v78;
      *(v74 + 12) = 2082;
      v79 = Double.description.getter();
      v81 = sub_1000105AC(v79, v80, &v96);

      *(v74 + 14) = v81;
      *(v74 + 22) = 2082;
      v82 = sub_1000105AC(v66, v65, &v96);

      *(v74 + 24) = v82;
      _os_log_impl(&_mh_execute_header, v72, v73, "Recorded Static PAF Event with id=%{public}s; duration=%{public}ss; song=%{public}s", v74, 0x20u);
      swift_arrayDestroy();

      (*(v68 + 8))(v94, v89);
    }

    else
    {

      (*(v68 + 8))(v69, v70);
    }

    return;
  }
}

id sub_100334950()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StaticLyricsViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for StaticLyricsViewController(uint64_t a1)
{
  result = qword_10118BBD0;
  if (!qword_10118BBD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100334B2C(uint64_t a1)
{
  type metadata accessor for Song();
  if (v1 <= 0x3F)
  {
    sub_100334CB4(319, &qword_101184A60, &type metadata accessor for Date);
    if (v2 <= 0x3F)
    {
      sub_100334CB4(319, &qword_1011845B0, type metadata accessor for Actions.MetricsReportingContext);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100334CB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_100334D08()
{
  sub_10010FC20(&qword_101183A90, &unk_100EBE340);
  __chkstk_darwin();
  v1 = v35 - v0;
  v2 = type metadata accessor for SymbolButton.Configuration(0) - 8;
  __chkstk_darwin();
  v4 = (v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v6 = v35 - v5;
  SymbolButton.Configuration.init()(v4);
  v7 = [objc_opt_self() currentTraitCollection];
  SymbolButton.Configuration.forBarButtonItem(_:)(v6);

  v36 = v4;
  sub_100337588(v4, type metadata accessor for SymbolButton.Configuration);
  static UIView.Corner.rounded.getter();
  v8 = type metadata accessor for UIView.Corner();
  (*(*(v8 - 8) + 56))(v1, 0, 1, v8);
  sub_10006B010(v1, &v6[*(v2 + 44)], &qword_101183A90, &unk_100EBE340);
  v9 = SymbolButton.Background.secondary.unsafeMutableAddressor();
  v11 = *v9;
  v10 = v9[1];
  v12 = v9[2];
  v13 = v9[3];
  v14 = *(v6 + 25);
  v15 = *(v6 + 26);
  v16 = *(v6 + 27);
  v17 = *(v6 + 28);

  v18 = v10;
  sub_100282F24(v14, v15, v16, v17);
  *(v6 + 25) = v11;
  *(v6 + 26) = v10;
  *(v6 + 27) = v12;
  *(v6 + 28) = v13;
  variable initialization expression of SymbolButton.Configuration.symbol(&v39);
  v19 = v41;
  v49 = v40;
  v50 = v47;
  v48 = v39;
  sub_1000095E8(&v48, &qword_1011815E0, &qword_100EBD050);
  if (qword_10117F878 != -1)
  {
    swift_once();
  }

  v20 = qword_101218F90;
  sub_1000095E8(&v49, &qword_10118BBE0, &unk_100EC73B0);
  LOBYTE(v54[0]) = 0;
  v21 = [objc_opt_self() secondaryLabelColor];
  sub_1000095E8(&v50, &unk_1011951E0, &unk_100EBE380);
  v22 = v54[0];
  v23 = *(v6 + 5);
  v54[4] = *(v6 + 4);
  v54[5] = v23;
  v54[6] = *(v6 + 6);
  v55 = *(v6 + 14);
  v24 = *(v6 + 1);
  v54[0] = *v6;
  v54[1] = v24;
  v25 = *(v6 + 3);
  v54[2] = *(v6 + 2);
  v54[3] = v25;
  sub_1001D223C(v54);
  *v6 = 0xD000000000000021;
  *(v6 + 1) = 0x8000000100E470D0;
  *(v6 + 2) = v20;
  *(v6 + 3) = v19;
  *(v6 + 4) = 0x4024000000000000;
  v6[40] = v22;
  *(v6 + 41) = v42[0];
  *(v6 + 11) = *(v42 + 3);
  *(v6 + 6) = 6;
  *(v6 + 56) = v43;
  *(v6 + 72) = v44;
  *(v6 + 88) = v45;
  *(v6 + 13) = v46;
  *(v6 + 14) = v21;
  memset(v51, 0, sizeof(v51));
  v52 = 0;
  v53 = xmmword_100EBCEF0;
  v26 = v35[1];
  PresentationSource.init(viewController:position:)(v26, v51, v38);
  v27 = v36;
  sub_10033731C(v6, v36, type metadata accessor for SymbolButton.Configuration);
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10012B7A8(v38, v37);
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  sub_10012B828(v37, v29 + 24);
  v30 = objc_allocWithZone(type metadata accessor for SymbolButton(0));
  v31 = SymbolButton.init(configuration:handler:)(v27, sub_100337300, v29);
  v32 = [v26 traitCollection];
  UITraitCollection.supportedMaterials.getter();

  LOBYTE(v32) = sub_100042A50();

  (*((swift_isaMask & *v31) + 0x1B8))(v32 & 1);
  (*((swift_isaMask & *v31) + 0x108))(0xD000000000000012, 0x8000000100E47100);
  v33 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v31];

  sub_10012BA6C(v38);
  sub_100337588(v6, type metadata accessor for SymbolButton.Configuration);
  return v33;
}

id sub_100335290()
{
  v1 = v0;
  sub_10010FC20(&qword_101189A18, &unk_100EE1DA0);
  __chkstk_darwin();
  v3 = &aBlock - v2;
  v4 = [objc_allocWithZone(UIButton) init];
  v23 = sub_100335ECC;
  v24 = 0;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_10027D328;
  v22 = &unk_1010A7240;
  v5 = _Block_copy(&aBlock);
  [v4 setConfigurationUpdateHandler:v5];
  _Block_release(v5);
  sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v4;
  v8 = v4;
  v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v8 addAction:v9 forControlEvents:64];

  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v23 = sub_100337314;
  v24 = v10;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_1003366D4;
  v22 = &unk_1010A72B8;
  v11 = _Block_copy(&aBlock);
  v12 = v8;

  [v12 setAccessibilityValueBlock:v11];
  _Block_release(v11);

  v13 = *(v1 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_contentViewController);
  v14 = OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_translation;
  swift_beginAccess();
  sub_1000089F8(v13 + v14, v3, &qword_101189A18, &unk_100EE1DA0);
  v15 = type metadata accessor for Lyrics.Translation(0);
  v16 = (*(*(v15 - 8) + 48))(v3, 1, v15) != 1;
  sub_1000095E8(v3, &qword_101189A18, &unk_100EE1DA0);
  [v12 setSelected:v16];

  [v12 setNeedsUpdateConfiguration];
  v17 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v12];

  return v17;
}

void sub_100335628(uint64_t a1, uint64_t a2, void *a3)
{
  v62 = a3;
  v59 = type metadata accessor for AppInterfaceContext.Activity(0);
  v60 = *(v59 - 8);
  __chkstk_darwin();
  v61 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v53 - v4;
  v58 = v6;
  __chkstk_darwin();
  v8 = &v53 - v7;
  v64 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin();
  v63 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Lyrics.Translation(0);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101189A18, &unk_100EE1DA0);
  __chkstk_darwin();
  v15 = &v53 - v14;
  v16 = type metadata accessor for Song();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v57 = v8;
    v54 = v5;
    v56 = v17;
    v21 = *(v17 + 16);
    v22 = Strong;
    v65 = v16;
    v21(v19, Strong + OBJC_IVAR____TtC5Music26StaticLyricsViewController_song, v16);
    sub_10012B7A8(v62, v67);
    v62 = v22;
    v23 = *&v22[OBJC_IVAR____TtC5Music26StaticLyricsViewController_contentViewController];
    v24 = OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_translation;
    swift_beginAccess();
    sub_1000089F8(v23 + v24, v15, &qword_101189A18, &unk_100EE1DA0);
    if ((*(v11 + 48))(v15, 1, v10))
    {
      sub_1000095E8(v15, &qword_101189A18, &unk_100EE1DA0);
      v25 = 0;
      v26 = 0;
    }

    else
    {
      sub_10033731C(v15, v13, type metadata accessor for Lyrics.Translation);
      sub_1000095E8(v15, &qword_101189A18, &unk_100EE1DA0);
      v27 = &v13[*(v10 + 20)];
      v25 = *v27;
      v26 = *(v27 + 1);

      sub_100337588(v13, type metadata accessor for Lyrics.Translation);
    }

    v55 = type metadata accessor for LyricsSharingActivityViewController(0);
    v28 = objc_allocWithZone(v55);
    v29 = &v28[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_lyricsID];
    *v29 = 0;
    v29[1] = 0;
    *&v28[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_selectionManager] = 0;
    *&v28[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_lyricsLoader] = 0;
    v30 = &v28[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_reportConcernData];
    *(v30 + 1) = 0u;
    *(v30 + 2) = 0u;
    *v30 = xmmword_100EBCEE0;
    *&v28[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_windowBackgroundView] = 0;
    *&v28[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_leadingSilence] = 0;
    v28[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_needsLyricsReporting] = 0;
    *&v28[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_visibleDuration] = 0;
    v31 = OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_lyricsVisibilityStart;
    v32 = type metadata accessor for Date();
    (*(*(v32 - 8) + 56))(&v28[v31], 1, 1, v32);
    v28[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_isVisible] = 0;
    *&v28[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_backgroundObserver] = 0;
    *&v28[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_foregroundObserver] = 0;
    *&v28[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_presentationObserver] = 0;
    *&v28[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_dismissalObserver] = 0;
    v21(&v28[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_song], v19, v65);
    *v29 = 0;
    v29[1] = 0;
    sub_10012B7A8(v67, &v28[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_presentationSource]);
    *v30 = v25;
    *(v30 + 1) = v26;
    type metadata accessor for LyricsSelectionViewController(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    *(v30 + 1) = 0u;
    *(v30 + 2) = 0u;
    v34 = [objc_allocWithZone(ObjCClassFromMetadata) init];
    *&v28[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_selectionViewController] = v34;
    v35 = [objc_allocWithZone(LPLinkMetadata) init];
    v36 = OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_headerMetadata;
    *&v28[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_headerMetadata] = v35;
    v37 = sub_100564124();
    v38 = [v37 specialization];

    v39 = v56;
    if (v38)
    {
      objc_opt_self();
      v40 = swift_dynamicCastObjCClass();
      v41 = v57;
      if (!v40)
      {
      }
    }

    else
    {
      v40 = 0;
      v41 = v57;
    }

    v42 = *&v28[v36];
    v43 = [v40 artwork];
    [v42 setImage:v43];

    isa = Array._bridgeToObjectiveC()().super.isa;
    v66.receiver = v28;
    v66.super_class = v55;
    v45 = objc_msgSendSuper2(&v66, "initWithActivityItems:applicationActivities:", isa, 0);

    v46 = v45;
    UIViewController.traitOverrides.getter();
    sub_100050078();
    dispatch thunk of UIMutableTraits.subscript.setter();
    UIViewController.traitOverrides.setter();
    sub_1001E0BC4(1);

    sub_10012BA6C(v67);
    (*(v39 + 8))(v19, v65);
    v47 = v62;
    v48 = sub_10003169C();

    if (v48)
    {
      *v41 = v46;
      *(v41 + 8) = 1;
      *(v41 + 16) = &_swiftEmptySetSingleton;
      swift_storeEnumTagMultiPayload();
      v49 = v54;
      sub_10033731C(v41, v54, type metadata accessor for AppInterfaceContext.Activity);
      v50 = v61;
      sub_10033731C(v49, v61, type metadata accessor for AppInterfaceContext.Activity);
      v51 = (*(v60 + 80) + 32) & ~*(v60 + 80);
      v52 = swift_allocObject();
      *(v52 + 16) = 0;
      *(v52 + 24) = 0;
      sub_100337398(v50, v52 + v51, type metadata accessor for AppInterfaceContext.Activity);
      sub_100706900(v49, sub_100115C18, v52);

      sub_100337588(v49, type metadata accessor for AppInterfaceContext.Activity);
      sub_100337588(v41, type metadata accessor for AppInterfaceContext.Activity);
    }

    else
    {
    }
  }
}

uint64_t sub_100335ECC(void *a1)
{
  sub_10010FC20(&unk_101183AB0, &qword_100EBF4D0);
  __chkstk_darwin();
  v3 = &v22[-v2];
  type metadata accessor for UIBackgroundConfiguration();
  __chkstk_darwin();
  v4 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for UIButton.Configuration();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static UIButton.Configuration.plain()();
  (*(v5 + 104))(v7, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v4);
  UIButton.Configuration.cornerStyle.setter();
  static UIBackgroundConfiguration.clear()();
  UIButton.Configuration.background.setter();
  if ([a1 isSelected])
  {
    v12 = *UIColor.MusicTint.normal.unsafeMutableAddressor();
  }

  else
  {
    v13 = [objc_opt_self() clearColor];
  }

  v14 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.backgroundColor.setter();
  v14(v22, 0);
  v15 = String._bridgeToObjectiveC()();
  v16 = [objc_opt_self() systemImageNamed:v15];

  UIButton.Configuration.image.setter();
  v17 = [objc_opt_self() configurationWithPointSize:6 weight:10.0];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  LODWORD(v15) = [a1 isSelected];
  v18 = objc_opt_self();
  v19 = &selRef_whiteColor;
  if (!v15)
  {
    v19 = &selRef_secondaryLabelColor;
  }

  v20 = [v18 *v19];
  UIButton.Configuration.baseForegroundColor.setter();
  (*(v9 + 16))(v3, v11, v8);
  (*(v9 + 56))(v3, 0, 1, v8);
  UIButton.configuration.setter();
  return (*(v9 + 8))(v11, v8);
}

void sub_100336290(uint64_t a1, uint64_t a2, void *a3)
{
  sub_10010FC20(&qword_101189A18, &unk_100EE1DA0);
  __chkstk_darwin();
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v30 - v6;
  __chkstk_darwin();
  v9 = &v30 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v31 = a3;
    v12 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_contentViewController;
    v13 = *(Strong + OBJC_IVAR____TtC5Music26StaticLyricsViewController_contentViewController);
    v14 = OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_translation;
    swift_beginAccess();
    sub_1000089F8(v13 + v14, v9, &qword_101189A18, &unk_100EE1DA0);
    v15 = type metadata accessor for Lyrics.Translation(0);
    v16 = *(v15 - 8);
    v17 = (*(v16 + 48))(v9, 1, v15);
    sub_1000095E8(v9, &qword_101189A18, &unk_100EE1DA0);
    v18 = **LyricsOptionsManager.shared.unsafeMutableAddressor();
    if (v17 == 1)
    {
      v19 = *(v18 + 232);

      v19(0);

      v20 = *&v11[v12];
      v21 = *&v20[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyrics];
      if (v21)
      {
        v22 = *(*v21 + 288);
        v23 = v20;

        v22(v24);
      }

      else
      {
        (*(v16 + 56))(v7, 1, 1, v15);
        v28 = v20;
      }

      v27 = v7;
    }

    else
    {
      v25 = *(v18 + 240);

      v25(0);

      v26 = *&v11[v12];
      (*(v16 + 56))(v5, 1, 1, v15);
      v20 = v26;
      v27 = v5;
    }

    sub_100781E38(v27);
    v29 = v31;

    [v29 setSelected:v17 == 1];
  }
}

uint64_t sub_1003365B8(void *a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  [a1 isSelected];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

id sub_1003366D4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_100336758(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin();
  v93[2] = v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v10 = v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v93[3] = v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_isInModal;
  *(v4 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_isInModal) = 0;
  v13 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_modelPlayEvent;
  *(v4 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_modelPlayEvent) = 0;
  v14 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_lyricsLoader;
  *(v4 + v14) = [objc_allocWithZone(type metadata accessor for LyricsLoader()) init];
  *(v4 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_visibleDuration) = 0;
  v15 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_lyricsVisibilityStart;
  v16 = type metadata accessor for Date();
  (*(*(v16 - 8) + 56))(v4 + v15, 1, 1, v16);
  *(v4 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_isVisible) = 0;
  *(v4 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_backgroundObserver) = 0;
  *(v4 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_foregroundObserver) = 0;
  *(v4 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_presentationObserver) = 0;
  *(v4 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_dismissalObserver) = 0;
  *(v4 + OBJC_IVAR____TtC5Music26StaticLyricsViewController____lazy_storage___contextBarButtonItem) = 0;
  v17 = OBJC_IVAR____TtC5Music26StaticLyricsViewController____lazy_storage___actionMetricsReportingContext;
  v18 = type metadata accessor for Actions.MetricsReportingContext(0);
  (*(*(v18 - 8) + 56))(v4 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_song;
  v20 = type metadata accessor for Song();
  v95 = *(v20 - 8);
  v96 = v20;
  v21 = *(v95 + 16);
  v101 = a1;
  v21(v4 + v19, a1);
  v22 = *(v4 + v13);
  *(v4 + v13) = a2;
  v23 = a2;

  *(v4 + v12) = a3;
  v24 = [objc_allocWithZone(UIImageView) init];
  v25 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_artworkImageView;
  *(v4 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_artworkImageView) = v24;
  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
  v26 = [*&v25[v4] layer];
  [v26 setCornerRadius:4.0];

  v100 = v25;
  v27 = [*&v25[v4] layer];
  [v27 setMasksToBounds:1];

  v28 = [objc_allocWithZone(UILabel) init];
  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  v29 = objc_opt_self();
  v30 = [v29 preferredFontForTextStyle:UIFontTextStyleCaption2];
  [v28 setFont:v30];

  v31 = objc_opt_self();
  v32 = [v31 secondaryLabelColor];
  [v28 setTextColor:v32];

  v98 = v12;
  if ((*(v4 + v12) & 1) == 0)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v33 = String._bridgeToObjectiveC()();

    [v28 setText:v33];
  }

  v93[1] = v10;
  v34 = [objc_allocWithZone(UILabel) init];
  [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
  v35 = [v29 preferredFontForTextStyle:UIFontTextStyleHeadline];
  [v34 setFont:v35];

  v36 = [v31 labelColor];
  [v34 setTextColor:v36];

  v37 = [objc_allocWithZone(UILabel) init];
  [v37 setTranslatesAutoresizingMaskIntoConstraints:0];
  v38 = [v29 preferredFontForTextStyle:UIFontTextStyleBody];
  [v37 setFont:v38];

  v39 = [v31 secondaryLabelColor];
  [v37 setTextColor:v39];

  v99 = sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_100EBE270;
  *(v40 + 32) = v28;
  *(v40 + 40) = v34;
  *(v40 + 48) = v37;
  v41 = objc_allocWithZone(UIStackView);
  sub_100009F78(0, &qword_101181620, UIView_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v43 = [v41 initWithArrangedSubviews:isa];

  v44 = v43;
  [v44 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v44 setAxis:1];
  [v44 setBaselineRelativeArrangement:1];
  result = [v34 font];
  if (!result)
  {
    __break(1u);
    goto LABEL_26;
  }

  v46 = result;
  [result _scaledValueForValue:20.0];
  v48 = v47;

  v94 = v28;
  [v44 setCustomSpacing:v28 afterView:v48];
  v97 = v37;
  result = [v37 font];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v49 = result;
  [result _scaledValueForValue:22.0];
  v51 = v50;

  v52 = v34;
  [v44 setCustomSpacing:v34 afterView:v51];
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_100EBC6D0;
  v54 = *&v100[v4];
  *(v53 + 32) = v54;
  *(v53 + 40) = v44;
  v55 = objc_allocWithZone(UIStackView);
  v56 = v54;
  v57 = Array._bridgeToObjectiveC()().super.isa;

  v58 = [v55 initWithArrangedSubviews:v57];

  v59 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_stackView;
  *(v4 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_stackView) = v58;
  [v58 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*(v4 + v59) setAxis:0];
  [*(v4 + v59) setSpacing:8.0];
  [*(v4 + v59) setAlignment:3];
  v60 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v61 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_activityIndicator;
  *(v4 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_activityIndicator) = v60;
  [v60 setHidesWhenStopped:1];
  [*(v4 + v61) setTranslatesAutoresizingMaskIntoConstraints:0];
  type metadata accessor for StaticLyricsContentViewController(0);
  v62 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v63 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_contentViewController;
  *(v4 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_contentViewController) = v62;
  result = [v62 view];
  v64 = v101;
  if (!result)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v65 = result;
  v66 = v98;
  v67 = 20.0;
  if (*(v4 + v98))
  {
    v67 = 32.0;
  }

  [result setLayoutMargins:{0.0, v67, 0.0, v67}];

  result = [*(v4 + v63) view];
  v68 = v97;
  if (!result)
  {
    goto LABEL_28;
  }

  v69 = result;
  v100 = v44;
  [result setTranslatesAutoresizingMaskIntoConstraints:0];

  LOBYTE(v69) = *(v4 + v66);
  v70 = *(v4 + v63);
  sub_1007820F8(v69);

  Song.title.getter();
  v71 = String._bridgeToObjectiveC()();

  [v52 setText:v71];

  v72 = Song.artistName.getter();
  v74 = v73;

  v75 = HIBYTE(v74) & 0xF;
  if ((v74 & 0x2000000000000000) == 0)
  {
    v75 = v72 & 0xFFFFFFFFFFFFLL;
  }

  if (v75)
  {
    Song.artistName.getter();
LABEL_13:
    v76 = String._bridgeToObjectiveC()();

    [v68 setText:v76];

    goto LABEL_14;
  }

  v85 = Song.composerName.getter();
  if (v86)
  {
    v87 = v85;
    v88 = v86;
    v89 = HIBYTE(v86) & 0xF;
    if ((v86 & 0x2000000000000000) == 0)
    {
      v89 = v85 & 0xFFFFFFFFFFFFLL;
    }

    if (v89)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v90._countAndFlagsBits = 2128194;
      v90._object = 0xE300000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v90);
      v91._countAndFlagsBits = v87;
      v91._object = v88;
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v91);

      v92._countAndFlagsBits = 0;
      v92._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v92);
      String.LocalizationValue.init(stringInterpolation:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      goto LABEL_13;
    }
  }

LABEL_14:
  v77 = *(v4 + v63);
  v78 = Song.catalogID.getter();
  v80 = &v77[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_songIdentifier];
  if (v79)
  {
    v81 = v78;
  }

  else
  {
    v81 = 0;
  }

  *v80 = v81;
  v80[1] = v79;

  v82 = type metadata accessor for StaticLyricsViewController(0);
  v102.receiver = v4;
  v102.super_class = v82;
  v83 = objc_msgSendSuper2(&v102, "initWithNibName:bundle:", 0, 0);
  [v83 setViewRespectsSystemMinimumLayoutMargins:0];
  result = [v83 view];
  if (result)
  {
    v84 = result;
    [result setPreservesSuperviewLayoutMargins:1];

    UIViewController.playActivityFeatureIdentifier.setter(18);
    sub_10032EC90();

    (*(v95 + 8))(v64, v96);
    return v83;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_10033731C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100337398(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100337400(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_100331C58(a1, v4, v5, v6);
}

uint64_t sub_1003374B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_10033242C(a1, v4, v5, v6);
}

uint64_t sub_100337588(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1003375E8()
{
  *(v0 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_isInModal) = 0;
  *(v0 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_modelPlayEvent) = 0;
  v1 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_lyricsLoader;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for LyricsLoader()) init];
  *(v0 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_visibleDuration) = 0;
  v2 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_lyricsVisibilityStart;
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_isVisible) = 0;
  *(v0 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_backgroundObserver) = 0;
  *(v0 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_foregroundObserver) = 0;
  *(v0 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_presentationObserver) = 0;
  *(v0 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_dismissalObserver) = 0;
  *(v0 + OBJC_IVAR____TtC5Music26StaticLyricsViewController____lazy_storage___contextBarButtonItem) = 0;
  v4 = OBJC_IVAR____TtC5Music26StaticLyricsViewController____lazy_storage___actionMetricsReportingContext;
  v5 = type metadata accessor for Actions.MetricsReportingContext(0);
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1003377B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100338450();

  return static View<>._makeView(view:inputs:)(a1, a2, a3, v8, a4);
}

uint64_t sub_100337820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100338450();

  return static View<>._makeViewList(view:inputs:)(a1, a2, a3, v8, a4);
}

uint64_t sub_10033788C@<X0>(uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  result = static Alignment.center.getter();
  *a2 = result;
  a2[1] = v9;
  a2[2] = v4;
  a2[3] = v6;
  a2[4] = v4;
  a2[5] = v5;
  a2[6] = v6;
  a2[7] = v7;
  return result;
}

uint64_t sub_1003378D8(uint64_t a1)
{
  __chkstk_darwin();
  GraphicsContext.drawLayer(content:)();
  __chkstk_darwin();
  return GraphicsContext.drawLayer(content:)();
}

void sub_100337A80(uint64_t *a1, double *a2)
{
  v3 = type metadata accessor for GraphicsContext.Shading();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Path.init(ellipseIn:)();
  static Color.secondary.getter();
  static GraphicsContext.Shading.color(_:)();

  GraphicsContext.stroke(_:with:lineWidth:)();
  sub_100338684(v8);
  v7 = *(v4 + 8);
  v7(v6, v3);
  if (a2[4] > 0.0)
  {
    GraphicsContext.opacity.setter();
    Path.init(ellipseIn:)();
    static Color.white.getter();
    static GraphicsContext.Shading.color(_:)();

    GraphicsContext.stroke(_:with:lineWidth:)();
    sub_100338684(v9);
    v7(v6, v3);
    GraphicsContext.opacity.setter();
  }
}

uint64_t sub_100337C50()
{
  v1 = type metadata accessor for ColorRenderingMode();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = v0[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  (*(v2 + 104))(v4, enum case for ColorRenderingMode.nonLinear(_:), v1);
  return Canvas<>.init(opaque:colorMode:rendersAsynchronously:renderer:)();
}

uint64_t sub_100337D74@<X0>(uint64_t *a2@<X8>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = static Alignment.center.getter();
  a2[1] = v10;
  v11 = sub_10010FC20(&qword_10118BC10, &qword_100EC75E8);
  return sub_100337DF4(a2 + *(v11 + 44), a4, a5, a6);
}

uint64_t sub_100337DF4@<X0>(uint64_t a1@<X8>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v9 = sub_10010FC20(&qword_10118BC18, &qword_100EC75F0);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v42[-1] - v11;
  sub_10010FC20(&qword_10118BC20, &qword_100EC75F8);
  __chkstk_darwin();
  v14 = &v42[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v42[-1] - v15;
  __chkstk_darwin();
  v18 = &v42[-1] - v17;
  __chkstk_darwin();
  v20 = &v42[-1] - v19;
  GeometryProxy.size.getter();
  v22 = v21 * 0.5;
  GeometryProxy.size.getter();
  v24 = v23 * 0.5;
  GeometryProxy.size.getter();
  v26 = v25;
  GeometryProxy.size.getter();
  if (v27 >= v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = v27;
  }

  v29 = v28 * 0.25;
  v30 = v28 * 0.15;
  v31 = v28 * 0.075;
  v32 = (v30 - v31) * a4;
  v33 = v30 - v32;
  if (a4 <= 0.0)
  {
    v33 = v30;
  }

  if (a3 <= 0.0)
  {
    v34 = 0;
    if (a4 <= 0.0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v34 = a4 < 0.5;
  if (a4 > 0.0)
  {
LABEL_10:
    v31 = v31 + v32;
  }

LABEL_11:
  v44[0] = v24 - v30;
  v44[1] = v22;
  v44[2] = v29 - v33 * 0.5;
  v44[3] = v33;
  v44[4] = a3;
  v45 = v34;
  v35 = v29 - v31 * 0.5;
  v36 = a4 > 0.5 && a5 > 0.0;
  v42[0] = v24 + v30;
  v42[1] = v22;
  v42[2] = v35;
  v42[3] = v31;
  v42[4] = a5;
  v43 = v36;
  if (v34)
  {
    sub_10033819C(v44, v12);
    sub_1003385F0(v12, v20);
    v37 = *(v10 + 56);
    v37(v20, 0, 1, v9);
  }

  else
  {
    v37 = *(v10 + 56);
    v37(v20, 1, 1, v9);
  }

  if (v36)
  {
    sub_10033819C(v42, v12);
    sub_1003385F0(v12, v18);
    v38 = 0;
  }

  else
  {
    v38 = 1;
  }

  v37(v18, v38, 1, v9);
  sub_100338518(v20, v16);
  sub_100338518(v18, v14);
  sub_100338518(v16, a1);
  v39 = sub_10010FC20(&qword_10118BC28, &qword_100EC7600);
  sub_100338518(v14, a1 + *(v39 + 48));
  sub_100338588(v18);
  sub_100338588(v20);
  sub_100338588(v14);
  return sub_100338588(v16);
}

double sub_10033819C@<D0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Color.white.getter();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v5 = static Alignment.center.getter();
  v7 = v6;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v8 = *a1;
  v9 = *(a1 + 1);
  v10 = a1[4] * 0.6;
  v11 = *(sub_10010FC20(&qword_10118BC18, &qword_100EC75F0) + 36);
  v12 = enum case for BlendMode.plusLighter(_:);
  v13 = type metadata accessor for BlendMode();
  (*(*(v13 - 8) + 104))(a2 + v11, v12, v13);
  *a2 = v15;
  *(a2 + 8) = v16;
  *(a2 + 16) = v17;
  *(a2 + 24) = v18;
  *(a2 + 32) = v19;
  *(a2 + 40) = v4;
  *(a2 + 48) = 256;
  *(a2 + 56) = v5;
  *(a2 + 64) = v7;
  *(a2 + 72) = v20;
  *(a2 + 88) = v21;
  result = *&v22;
  *(a2 + 104) = v22;
  *(a2 + 120) = v8;
  *(a2 + 128) = v9;
  *(a2 + 136) = 0x4008000000000000;
  *(a2 + 144) = 0;
  *(a2 + 152) = v10;
  return result;
}

__n128 sub_100338334@<Q0>(uint64_t a1@<X8>)
{
  v3 = swift_allocObject();
  result = *v1;
  v5 = *(v1 + 16);
  *(v3 + 16) = *v1;
  *(v3 + 32) = v5;
  *a1 = sub_10033850C;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  return result;
}

__n128 sub_100338388@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 sub_100338394(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v3;
  return result;
}

void (*sub_1003383A0(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = v1[1];
  *v3 = *v1;
  *(v3 + 16) = v4;
  return sub_10033840C;
}

void sub_10033840C(void **a1)
{
  v1 = *a1;
  v2 = v1[4];
  v3 = *(v1 + 1);
  *v2 = *v1;
  v2[1] = v3;
  free(v1);
}

unint64_t sub_100338450()
{
  result = qword_10118BBF8;
  if (!qword_10118BBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118BBF8);
  }

  return result;
}

uint64_t sub_100338518(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_10118BC20, &qword_100EC75F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100338588(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_10118BC20, &qword_100EC75F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003385F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_10118BC18, &qword_100EC75F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003386D8()
{
  result = qword_10118BC30;
  if (!qword_10118BC30)
  {
    sub_1001109D0(&qword_10118BC38, &qword_100EC7608);
    sub_100020674(&qword_10118BC40, &qword_10118BC48, &qword_100EC7610, &protocol conformance descriptor for GeometryReader<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118BC30);
  }

  return result;
}

uint64_t MusicPlayer.PlayabilityStatus.UnplayableReason.debugDescription.getter()
{
  v1 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin();
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0, v1, v3);
  v6 = (*(v2 + 88))(v5, v1);
  if (v6 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.networkUnavailable(_:))
  {
    return 0xD000000000000012;
  }

  if (v6 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.contentUnavailable(_:))
  {
    return 0xD000000000000012;
  }

  if (v6 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.ageVerificationRequired(_:))
  {
    return 0xD000000000000017;
  }

  if (v6 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.explicitRestricted(_:))
  {
    return 0xD000000000000012;
  }

  if (v6 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.cellularRestricted(_:))
  {
    return 0xD000000000000012;
  }

  if (v6 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.accountRequired(_:))
  {
    return 0x52746E756F636361;
  }

  if (v6 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:))
  {
    return 0xD000000000000014;
  }

  if (v6 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.userUploadRequired(_:))
  {
    return 0xD000000000000012;
  }

  if (v6 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.unsupportedType(_:))
  {
    return 0x726F707075736E75;
  }

  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  v8._countAndFlagsBits = 0x286E776F6E6B6E75;
  v8._object = 0xE800000000000000;
  String.append(_:)(v8);
  _print_unlocked<A, B>(_:_:)();
  v9._countAndFlagsBits = 41;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  v10 = v11[0];
  (*(v2 + 8))(v5, v1);
  return v10;
}

double sub_100338AB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

id sub_100338B0C()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    type metadata accessor for PresentationDonationTarget();
    v3 = swift_allocObject();
    *(v3 + 72) = 0u;
    *(v3 + 88) = 0u;
    *(v3 + 104) = 0u;
    *(v3 + 16) = 0x4C6C616974696E49;
    *(v3 + 24) = 0xEB00000000656E69;
    *(v3 + 32) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    *(v3 + 40) = sub_10033F328;
    *(v3 + 48) = v4;
    v5 = swift_allocObject();
    *(v5 + 16) = v0;
    *(v3 + 88) = sub_10033F330;
    *(v3 + 96) = v5;
    *(v3 + 56) = UIScreen.Dimensions.size.getter;
    *(v3 + 64) = 0;
    sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100EBC6C0;
    *(v6 + 32) = v3;
    v7 = v0;
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100338C4C()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:230.0 damping:22.0 initialVelocity:{0.0, 0.0}];
  qword_101218A70 = result;
  return result;
}

id sub_100338C9C()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:9300.0 damping:200.0 initialVelocity:{0.0, 0.0}];
  qword_101218A78 = result;
  return result;
}

id sub_100338CF0()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:300.0 damping:40.0 initialVelocity:{0.0, 0.0}];
  qword_101218A80 = result;
  return result;
}

id sub_100338D44()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:396.0 damping:32.0 initialVelocity:{0.0, 0.0}];
  qword_101218A88 = result;
  return result;
}

id sub_100338D98()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:100.0 damping:16.0 initialVelocity:{0.0, 0.0}];
  qword_101218A90 = result;
  return result;
}

id sub_100338DE4()
{
  v1 = OBJC_IVAR____TtC5Music29LyricsSelectionViewController____lazy_storage___collectionView;
  v2 = *(v0 + OBJC_IVAR____TtC5Music29LyricsSelectionViewController____lazy_storage___collectionView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music29LyricsSelectionViewController____lazy_storage___collectionView);
  }

  else
  {
    v4 = sub_100338E48(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100338E48(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  v1 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  aBlock[4] = sub_100338FCC;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005A63A8;
  aBlock[3] = &unk_1010A7980;
  v2 = _Block_copy(aBlock);
  v3 = [v1 initWithSectionProvider:v2];
  _Block_release(v2);
  swift_unknownObjectWeakDestroy();

  v4 = [objc_allocWithZone(UICollectionView) initWithFrame:v3 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  v5 = UIView.forAutolayout.getter();

  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 clearColor];
  [v7 setBackgroundColor:v8];

  [v7 setHidden:1];
  return v7;
}

id sub_100338FCC(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(_UICollectionViewListLayoutSectionConfiguration) initWithAppearanceStyle:0 layoutEnvironment:a2];
  [v3 setSeparatorStyle:0];
  [v3 setEstimatedRowHeight:108.0];
  v4 = [objc_allocWithZone(_UICollectionViewListLayoutSection) initWithConfiguration:v3 layoutEnvironment:a2];
  [v4 setContentInsets:{19.0, 0.0, 19.0, 0.0}];

  return v4;
}

id sub_10033908C()
{
  v1 = v0;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v3 = &v92 - v2;
  type metadata accessor for MetricsEvent.Page(0);
  __chkstk_darwin();
  v5 = (&v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for LyricsSelectionViewController(0);
  v95.receiver = v0;
  v95.super_class = v6;
  objc_msgSendSuper2(&v95, "viewDidLoad");
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v9 = [objc_opt_self() clearColor];
  [v8 setBackgroundColor:v9];

  v10 = [objc_allocWithZone(UIView) init];
  v11 = UIView.forAutolayout.getter();

  [v11 setClipsToBounds:1];
  result = [v1 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v12 = result;
  [result addSubview:v11];

  v13 = sub_100338DE4();
  [v13 setDelegate:v1];

  v14 = OBJC_IVAR____TtC5Music29LyricsSelectionViewController____lazy_storage___collectionView;
  v15 = [*&v1[OBJC_IVAR____TtC5Music29LyricsSelectionViewController____lazy_storage___collectionView] layer];
  [v15 setMasksToBounds:0];

  v16 = *&v1[v14];
  _s8LineCellCMa();
  v17 = v16;
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  v18 = *&v1[v14];
  result = [v1 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v19 = result;
  [result bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  [v18 setFrame:{v21, v23, v25, v27}];
  [v11 addSubview:*&v1[v14]];
  v28 = OBJC_IVAR____TtC5Music29LyricsSelectionViewController_activityIndicator;
  [*&v1[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_activityIndicator] startAnimating];
  result = [v1 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v29 = result;
  v93 = v3;
  v94 = v28;
  [result addSubview:*&v1[v28]];

  v30 = *&v1[v14];
  *(swift_allocObject() + 16) = v1;
  v31 = objc_allocWithZone(sub_10010FC20(&qword_10118BD08, &unk_100EC76F0));
  v32 = v1;
  v33 = v30;
  v34 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
  v35 = *&v32[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_dataSource];
  *&v32[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_dataSource] = v34;

  sub_10033A430();
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_100EC56B0;
  v37 = [v11 leadingAnchor];
  result = [v32 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v38 = result;
  v39 = [result leadingAnchor];

  v40 = [v37 constraintEqualToAnchor:v39];
  *(v36 + 32) = v40;
  v41 = [v11 trailingAnchor];
  result = [v32 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v42 = result;
  v92 = v5;
  v43 = [result trailingAnchor];

  v44 = [v41 constraintEqualToAnchor:v43];
  *(v36 + 40) = v44;
  v45 = [v11 topAnchor];
  result = [v32 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v46 = result;
  v47 = [result topAnchor];

  v48 = [v45 constraintEqualToAnchor:v47];
  *(v36 + 48) = v48;
  v49 = [v11 bottomAnchor];
  result = [v32 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v50 = result;
  v51 = [result bottomAnchor];

  v52 = [v49 constraintEqualToAnchor:v51];
  *(v36 + 56) = v52;
  v53 = [*&v1[v14] leadingAnchor];
  v54 = [v11 leadingAnchor];
  v55 = [v53 constraintEqualToAnchor:v54];

  *(v36 + 64) = v55;
  v56 = [*&v1[v14] trailingAnchor];
  v57 = [v11 trailingAnchor];
  v58 = [v56 constraintEqualToAnchor:v57];

  *(v36 + 72) = v58;
  v59 = [*&v1[v14] topAnchor];
  v60 = [v11 topAnchor];
  v61 = [v59 constraintEqualToAnchor:v60];

  *(v36 + 80) = v61;
  v62 = [*&v1[v14] bottomAnchor];
  v63 = [v11 bottomAnchor];
  v64 = [v62 constraintEqualToAnchor:v63];

  *(v36 + 88) = v64;
  v65 = v94;
  v66 = [*&v1[v94] centerYAnchor];
  result = [v32 view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v67 = result;
  v68 = [result centerYAnchor];

  v69 = [v66 constraintEqualToAnchor:v68];
  *(v36 + 96) = v69;
  v70 = [*&v1[v65] centerXAnchor];
  result = [v32 view];
  if (!result)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v71 = result;
  v72 = objc_opt_self();
  v73 = [v71 centerXAnchor];

  v74 = [v70 constraintEqualToAnchor:v73];
  *(v36 + 104) = v74;
  sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v72 activateConstraints:isa];

  v76 = &v32[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_pageProperties];
  v77 = *&v32[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_pageProperties];
  v78 = *&v32[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_pageProperties + 8];
  v79 = *&v32[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_pageProperties + 16];
  v80 = *(v76 + 3);
  v81 = type metadata accessor for URL();
  v82 = v93;
  (*(*(v81 - 8) + 56))(v93, 1, 1, v81);
  v83 = v92;
  MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)(v77, v78, v79, v80, v82, 0, 0, 0, v92, 1, 0, 0, 2);

  v84 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v85 = sub_10053771C();
  v87 = v86;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v88 = qword_101218AD0;
  v89 = GroupActivitiesManager.hasJoined.getter();
  v90 = GroupActivitiesManager.participantsCount.getter();
  v91 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v84) + 0xA0))(v83, v85, v87, v89 & 1, v90, *(v88 + v91));

  return sub_10033F754(v83, type metadata accessor for MetricsEvent.Page);
}

uint64_t sub_100339B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = _s8LineCellCMa();
  v8 = static UICollectionReusableView.reuseIdentifier.getter();
  v10 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v7, a2, v8, v9, v7);

  v11 = type metadata accessor for Lyrics.TextLine(0);
  v12 = (*(a3 + *(v11 + 64)))();
  v13 = (v10 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_text);
  *v13 = v12;
  v13[1] = v14;

  v15 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_label;
  v16 = *(v10 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_label);

  v17 = v16;
  v18 = String._bridgeToObjectiveC()();

  [v17 setText:v18];

  v19 = *(a4 + OBJC_IVAR____TtC5Music29LyricsSelectionViewController_selectionManager);
  if (v19 && *(v19 + 32))
  {
    v20 = *(v19 + 24);

    v22 = NSTextAlignment.init(languageCode:)(v20, v21);
    *(v10 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_textAlignment) = v22;
    [*(v10 + v15) setTextAlignment:v22];
  }

  return v10;
}

id sub_100339CAC(char a1)
{
  v3 = *(type metadata accessor for Lyrics.TextLine(0) - 8);
  __chkstk_darwin();
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LyricsSelectionViewController(0);
  v13.receiver = v1;
  v13.super_class = v6;
  result = objc_msgSendSuper2(&v13, "viewWillAppear:", a1 & 1);
  if ((v1[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_needsCustomTransition] & 1) == 0)
  {
    v8 = OBJC_IVAR____TtC5Music29LyricsSelectionViewController_didAdjustInitialContentOffset;
    if ((v1[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_didAdjustInitialContentOffset] & 1) == 0)
    {
      v9 = *&v1[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_selectionManager];
      if (v9)
      {
        result = swift_beginAccess();
        v10 = *(v9 + 72);
        if (*(v10 + 16))
        {
          sub_10033F418(v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v5, type metadata accessor for Lyrics.TextLine);
          v11 = sub_100338DE4();
          sub_100339E90(v5);
          [v11 setContentOffset:0.0];

          result = sub_10033F754(v5, type metadata accessor for Lyrics.TextLine);
          v1[v8] = 1;
        }
      }
    }
  }

  return result;
}

void sub_100339E90(uint64_t a1)
{
  v2 = v1;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v4 = &aBlock[-1] - v3;
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &aBlock[-1] - v9;
  v11 = *&v1[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_dataSource];
  if (!v11)
  {
    goto LABEL_15;
  }

  v12 = v11;
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000095E8(v4, &unk_10118BCE0, &qword_100EC6450);
    return;
  }

  (*(v6 + 32))(v10, v4, v5);
  if (IndexPath.item.getter() < 1)
  {
    (*(v6 + 8))(v10, v5);
    return;
  }

  if (__OFSUB__(IndexPath.item.getter(), 1))
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  IndexPath.init(item:section:)();
  v13 = sub_100338DE4();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v15 = [v13 layoutAttributesForItemAtIndexPath:isa];

  if (!v15)
  {
    v28 = *(v6 + 8);
    v28(v8, v5);
    v28(v10, v5);
    return;
  }

  v31 = v15;
  v16 = objc_opt_self();
  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  *(v17 + 24) = &v31;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_10033F744;
  *(v18 + 24) = v17;
  aBlock[4] = sub_1001D3174;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010A7958;
  v19 = _Block_copy(aBlock);
  v20 = v2;

  [v16 performWithoutAnimation:v19];
  _Block_release(v19);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    goto LABEL_14;
  }

  v21 = OBJC_IVAR____TtC5Music29LyricsSelectionViewController____lazy_storage___collectionView;
  v22 = *&v20[OBJC_IVAR____TtC5Music29LyricsSelectionViewController____lazy_storage___collectionView];
  v23 = IndexPath._bridgeToObjectiveC()().super.isa;
  v24 = [v22 layoutAttributesForItemAtIndexPath:v23];

  if (v24)
  {
    v25 = v31;
    v31 = v24;
  }

  [*&v20[v21] contentSize];
  [*&v20[v21] frame];
  CGRectGetHeight(v32);
  [v31 frame];
  CGRectGetMaxY(v33);
  [v31 frame];
  CGRectGetHeight(v34);
  v26 = *(v6 + 8);
  v26(v8, v5);
  v26(v10, v5);
  v27 = v31;
}

void sub_10033A35C(void *a1, id *a2)
{
  v4 = sub_100338DE4();
  [*a2 frame];
  MaxY = CGRectGetMaxY(v9);
  [*a2 frame];
  [v4 setContentOffset:{0.0, MaxY + CGRectGetHeight(v10) * -0.5}];

  v6 = [a1 view];
  if (v6)
  {
    v7 = v6;
    [v6 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10033A430()
{
  v1 = v0;
  type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin();
  v2 = sub_10010FC20(&qword_10118BCF8, &qword_100EC76E8);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v21 - v4;
  v6 = *&v0[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_selectionManager];
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v7 = *(v6 + 40);
  }

  type metadata accessor for Lyrics.TextLine(0);
  sub_1000296C8(&qword_10118BD00, type metadata accessor for Lyrics.TextLine, &protocol conformance descriptor for Lyrics.TextLine);
  NSDiffableDataSourceSnapshot.init()();
  NSDiffableDataSourceSnapshot.appendSections(_:)(&off_101099730);
  aBlock = 0;
  v23 = 0;
  result = NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
  v9 = *&v0[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_dataSource];
  if (v9)
  {
    *(swift_allocObject() + 16) = v1;
    v10 = v9;
    v11 = v1;
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    v12 = v7[2];

    if (v12)
    {
      [*&v11[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_activityIndicator] setHidden:1];
      v13 = OBJC_IVAR____TtC5Music29LyricsSelectionViewController_displayActivityIndicatorWorkItem;
      if (*&v11[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_displayActivityIndicatorWorkItem])
      {

        dispatch thunk of DispatchWorkItem.cancel()();
      }

      *&v11[v13] = 0;
    }

    else
    {
      v14 = OBJC_IVAR____TtC5Music29LyricsSelectionViewController_displayActivityIndicatorWorkItem;
      if (*&v11[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_displayActivityIndicatorWorkItem])
      {
LABEL_11:
        v20 = sub_100338DE4();
        [v20 setHidden:v12 == 0];

        return (*(v3 + 8))(v5, v2);
      }

      v15 = swift_allocObject();
      *(v15 + 16) = v11;
      v26 = sub_10033F728;
      v27 = v15;
      aBlock = _NSConcreteStackBlock;
      v23 = 1107296256;
      v24 = sub_10002BC98;
      v25 = &unk_1010A78E0;
      v21[2] = _Block_copy(&aBlock);
      v21[3] = _swiftEmptyArrayStorage;
      v21[1] = sub_1000296C8(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      v16 = v11;
      sub_10010FC20(&qword_101182970, &qword_100EBD250);
      sub_10002489C();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      type metadata accessor for DispatchWorkItem();
      swift_allocObject();
      v17 = DispatchWorkItem.init(flags:block:)();

      sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
      v18 = static OS_dispatch_queue.main.getter();
      OS_dispatch_queue.asyncAfterUIFeedbackDeadline(_:)(v17, v19);

      *&v11[v14] = v17;
    }

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void sub_10033A884(uint64_t a1)
{
  v2 = *(type metadata accessor for Lyrics.TextLine(0) - 8);
  __chkstk_darwin();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + OBJC_IVAR____TtC5Music29LyricsSelectionViewController_needsCustomTransition) & 1) == 0)
  {
    v5 = *(a1 + OBJC_IVAR____TtC5Music29LyricsSelectionViewController_selectionManager);
    if (v5)
    {
      swift_beginAccess();
      v6 = *(v5 + 72);
      if (*(v6 + 16))
      {
        sub_10033F418(v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v4, type metadata accessor for Lyrics.TextLine);
        v7 = sub_100338DE4();
        sub_100339E90(v4);
        [v7 setContentOffset:0.0];

        sub_10033F754(v4, type metadata accessor for Lyrics.TextLine);
      }
    }
  }
}

uint64_t sub_10033A9D4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5Music29LyricsSelectionViewController_selectionManager);
  if (v2)
  {
    swift_beginAccess();
    v4 = *(v2 + 72);
    v5 = *(v4 + 16);

    v6 = 0;
    while (v5 != v6)
    {
      v7 = *(type metadata accessor for Lyrics.TextLine(0) - 8);
      v8 = static Lyrics.TextLine.== infix(_:_:)(v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v6++, a1);
      if (v8)
      {

        return 1;
      }
    }

    swift_beginAccess();
    v10 = *(v2 + 80);

    v11 = sub_10048C144(a1, v10);

    if (v11)
    {
LABEL_11:

      return 2;
    }

    v12 = *(v2 + 72);
    v13 = *(v12 + 16);

    v14 = 0;
    while (v13 != v14)
    {
      v15 = *(type metadata accessor for Lyrics.TextLine(0) - 8);
      v16 = static Lyrics.TextLine.== infix(_:_:)(v12 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v14++, a1);
      if (v16)
      {

        goto LABEL_11;
      }
    }
  }

  return 4;
}

uint64_t sub_10033ABD0(uint64_t a1)
{
  v3 = type metadata accessor for Lyrics.TextLine(0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_10010FC20(&qword_10118BCF0, &qword_100EC76E0);
  __chkstk_darwin();
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v55 - v9;
  sub_10010FC20(&qword_101184020, &unk_100EC76D0);
  __chkstk_darwin();
  __chkstk_darwin();
  v65 = &v55 - v11;
  __chkstk_darwin();
  v66 = &v55 - v12;
  __chkstk_darwin();
  __chkstk_darwin();
  v14 = &v55 - v13;
  __chkstk_darwin();
  v18 = &v55 - v17;
  v19 = *(v1 + OBJC_IVAR____TtC5Music29LyricsSelectionViewController_selectionManager);
  if (!v19)
  {
    return 0;
  }

  v63 = v16;
  v60 = v15;
  v61 = v6;
  swift_beginAccess();
  v20 = *(v19 + 72);
  v21 = *(v20 + 16);
  if (v21 < 2)
  {
    return 0;
  }

  v62 = v3;
  v22 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v64 = v4;
  v23 = *(v4 + 72);
  v58 = v8;
  v59 = v22;
  v24 = v20 + v22;

  v25 = v21 + 1;
  do
  {
    if (!--v25)
    {

      return 0;
    }

    v26 = static Lyrics.TextLine.== infix(_:_:)(v24, a1);
    v24 += v23;
  }

  while ((v26 & 1) == 0);

  sub_10033F418(a1, v18, type metadata accessor for Lyrics.TextLine);
  v27 = v64 + 56;
  v28 = *(v64 + 56);
  v29 = 1;
  v30 = v62;
  v28(v18, 0, 1, v62);
  v31 = *(v19 + 72);
  if (*(v31 + 16))
  {
    sub_10033F418(v31 + v59, v14, type metadata accessor for Lyrics.TextLine);
    v29 = 0;
  }

  v56 = v28;
  v57 = v27;
  v28(v14, v29, 1, v30);
  v32 = *(v67 + 48);
  sub_1000089F8(v18, v10, &qword_101184020, &unk_100EC76D0);
  v33 = v32;
  v34 = v62;
  sub_1000089F8(v14, &v10[v32], &qword_101184020, &unk_100EC76D0);
  v36 = v64 + 48;
  v35 = *(v64 + 48);
  v37 = v35(v10, 1, v34);
  v55 = v35;
  v64 = v36;
  if (v37 == 1)
  {
    sub_1000095E8(v14, &qword_101184020, &unk_100EC76D0);
    sub_1000095E8(v18, &qword_101184020, &unk_100EC76D0);
    if (v55(&v10[v33], 1, v34) == 1)
    {
      sub_1000095E8(v10, &qword_101184020, &unk_100EC76D0);
LABEL_20:

      return 1;
    }
  }

  else
  {
    sub_1000089F8(v10, v63, &qword_101184020, &unk_100EC76D0);
    if (v35(&v10[v33], 1, v34) != 1)
    {
      v46 = v61;
      sub_1001EC250(&v10[v33], v61);
      v47 = v63;
      v48 = static Lyrics.TextLine.== infix(_:_:)(v63, v46);
      sub_10033F754(v46, type metadata accessor for Lyrics.TextLine);
      sub_1000095E8(v14, &qword_101184020, &unk_100EC76D0);
      sub_1000095E8(v18, &qword_101184020, &unk_100EC76D0);
      sub_10033F754(v47, type metadata accessor for Lyrics.TextLine);
      sub_1000095E8(v10, &qword_101184020, &unk_100EC76D0);
      v34 = v62;
      if (v48)
      {
        goto LABEL_20;
      }

      goto LABEL_17;
    }

    sub_1000095E8(v14, &qword_101184020, &unk_100EC76D0);
    sub_1000095E8(v18, &qword_101184020, &unk_100EC76D0);
    sub_10033F754(v63, type metadata accessor for Lyrics.TextLine);
    v34 = v62;
  }

  sub_1000095E8(v10, &qword_10118BCF0, &qword_100EC76E0);
LABEL_17:
  v39 = a1;
  v40 = v66;
  sub_10033F418(v39, v66, type metadata accessor for Lyrics.TextLine);
  v41 = 1;
  v56(v40, 0, 1, v34);
  v42 = *(v19 + 72);
  v43 = *(v42 + 16);
  if (v43)
  {
    v44 = v65;
    sub_10033F418(v42 + v59 + (v43 - 1) * v23, v65, type metadata accessor for Lyrics.TextLine);
    v41 = 0;
    v45 = v58;
  }

  else
  {
    v45 = v58;
    v44 = v65;
  }

  v56(v44, v41, 1, v34);
  v49 = *(v67 + 48);
  sub_1000089F8(v40, v45, &qword_101184020, &unk_100EC76D0);
  sub_1000089F8(v44, v45 + v49, &qword_101184020, &unk_100EC76D0);
  v50 = v55;
  if (v55(v45, 1, v34) == 1)
  {

    sub_1000095E8(v44, &qword_101184020, &unk_100EC76D0);
    sub_1000095E8(v40, &qword_101184020, &unk_100EC76D0);
    if (v50(v45 + v49, 1, v34) == 1)
    {
      sub_1000095E8(v45, &qword_101184020, &unk_100EC76D0);
      return 3;
    }

    goto LABEL_27;
  }

  v51 = v60;
  sub_1000089F8(v45, v60, &qword_101184020, &unk_100EC76D0);
  if (v50(v45 + v49, 1, v34) == 1)
  {

    sub_1000095E8(v44, &qword_101184020, &unk_100EC76D0);
    sub_1000095E8(v40, &qword_101184020, &unk_100EC76D0);
    sub_10033F754(v51, type metadata accessor for Lyrics.TextLine);
LABEL_27:
    sub_1000095E8(v45, &qword_10118BCF0, &qword_100EC76E0);
    return 2;
  }

  v52 = v45 + v49;
  v53 = v61;
  sub_1001EC250(v52, v61);
  v54 = static Lyrics.TextLine.== infix(_:_:)(v51, v53);

  sub_10033F754(v53, type metadata accessor for Lyrics.TextLine);
  sub_1000095E8(v44, &qword_101184020, &unk_100EC76D0);
  sub_1000095E8(v40, &qword_101184020, &unk_100EC76D0);
  sub_10033F754(v51, type metadata accessor for Lyrics.TextLine);
  sub_1000095E8(v45, &qword_101184020, &unk_100EC76D0);
  if (v54)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

void sub_10033B470(uint64_t a1)
{
  v2 = v1;
  v86 = a1;
  v85 = sub_10010FC20(&unk_10118B970, &qword_100EC71E0);
  __chkstk_darwin();
  v84 = v70 - v3;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v72 = v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v96 = v70 - v5;
  sub_10010FC20(&qword_101184020, &unk_100EC76D0);
  __chkstk_darwin();
  v7 = v70 - v6;
  v90 = type metadata accessor for Lyrics.TextLine(0);
  v8 = *(v90 - 8);
  __chkstk_darwin();
  v10 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IndexPath();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v71 = v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v91 = v70 - v14;
  __chkstk_darwin();
  v16 = v70 - v15;
  v17 = sub_100338DE4();
  v18 = [v17 visibleCells];

  sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v19 >> 62)
  {
LABEL_46:
    v20 = _CocoaArrayWrapper.endIndex.getter();
    if (v20)
    {
      goto LABEL_3;
    }

LABEL_47:

    return;
  }

  v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v20)
  {
    goto LABEL_47;
  }

LABEL_3:
  v83 = OBJC_IVAR____TtC5Music29LyricsSelectionViewController____lazy_storage___collectionView;
  v82 = OBJC_IVAR____TtC5Music29LyricsSelectionViewController_dataSource;
  v89 = v19 & 0xC000000000000001;
  v88 = v19 & 0xFFFFFFFFFFFFFF8;
  v76 = OBJC_IVAR____TtC5Music29LyricsSelectionViewController_selectionManager;
  v87 = v19 + 32;
  v94 = (v12 + 32);
  v80 = (v8 + 48);
  v75 = (v12 + 16);
  v74 = (v12 + 56);
  v73 = (v12 + 48);
  v95 = (v12 + 8);
  v12 = 0;
  v70[1] = v103;
  v78 = v7;
  v77 = v20;
  v93 = v10;
  v79 = v2;
  v100 = v16;
  v81 = v19;
  while (1)
  {
    if (v89)
    {
      v21 = sub_1007E97A0(v12, v19);
    }

    else
    {
      if (v12 >= *(v88 + 16))
      {
        goto LABEL_45;
      }

      v21 = *(v87 + 8 * v12);
    }

    v101 = v21;
    if (__OFADD__(v12++, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v99 = v12;
    _s8LineCellCMa();
    v23 = swift_dynamicCastClass();
    if (!v23 || (v24 = v23, (v25 = [*(v2 + v83) indexPathForCell:v23]) == 0))
    {

      return;
    }

    v26 = v25;
    v27 = v91;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = *v94;
    (*v94)(v16, v27, v11);
    v29 = *(v2 + v82);
    if (!v29)
    {
      break;
    }

    v30 = v29;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    if ((*v80)(v7, 1, v90) == 1)
    {
      (*v95)(v100, v11);

      sub_1000095E8(v7, &qword_101184020, &unk_100EC76D0);
      return;
    }

    v92 = v28;
    sub_1001EC250(v7, v10);
    *(v24 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_position) = sub_10033ABD0(v10);
    sub_1007F3A40();
    v31 = *(v2 + v76);
    v98 = v24;
    if (v31)
    {
      v32 = v11;
      swift_beginAccess();
      v33 = *(v31 + 72);
      v34 = *(v33 + 16);

      v35 = 0;
      v36 = v73;
      while (v34 != v35)
      {
        v37 = v35 + 1;
        v38 = static Lyrics.TextLine.== infix(_:_:)(v33 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v35, v10);
        v35 = v37;
        if (v38)
        {

          v39 = 1;
          goto LABEL_27;
        }
      }

      swift_beginAccess();
      v40 = *(v31 + 80);

      v41 = sub_10048C144(v10, v40);

      if (v41)
      {
LABEL_25:

        v39 = 2;
      }

      else
      {
        v42 = *(v31 + 72);
        v43 = *(v42 + 16);

        v44 = 0;
        while (v43 != v44)
        {
          v45 = v44 + 1;
          v46 = static Lyrics.TextLine.== infix(_:_:)(v42 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v44, v10);
          v44 = v45;
          if (v46)
          {

            goto LABEL_25;
          }
        }

        v39 = 4;
      }

LABEL_27:
      v97 = v39;
      v11 = v32;
    }

    else
    {
      v97 = 4;
      v36 = v73;
    }

    v47 = v96;
    (*v75)(v96, v100, v11);
    (*v74)(v47, 0, 1, v11);
    v48 = *(v85 + 48);
    v49 = v84;
    sub_1000089F8(v86, v84, &unk_10118BCE0, &qword_100EC6450);
    sub_1000089F8(v47, v49 + v48, &unk_10118BCE0, &qword_100EC6450);
    v50 = v11;
    v51 = *v36;
    if ((*v36)(v49, 1, v50) != 1)
    {
      v54 = v72;
      sub_1000089F8(v49, v72, &unk_10118BCE0, &qword_100EC6450);
      if (v51(v49 + v48, 1, v50) == 1)
      {
        sub_1000095E8(v96, &unk_10118BCE0, &qword_100EC6450);
        (*v95)(v54, v50);
        v2 = v79;
        v11 = v50;
LABEL_34:
        sub_1000095E8(v49, &unk_10118B970, &qword_100EC71E0);
        v7 = v78;
        v19 = v81;
        v10 = v93;
        if (v97 == *(v98 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_state))
        {
          goto LABEL_5;
        }

        *(v98 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_state) = v97;
      }

      else
      {
        v55 = v71;
        v92(v71, v49 + v48, v50);
        sub_1000296C8(&qword_101192840, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
        LODWORD(v92) = dispatch thunk of static Equatable.== infix(_:_:)();
        v56 = *v95;
        (*v95)(v55, v50);
        sub_1000095E8(v96, &unk_10118BCE0, &qword_100EC6450);
        v56(v54, v50);
        sub_1000095E8(v49, &unk_10118BCE0, &qword_100EC6450);
        v53 = v98;
        v2 = v79;
        v7 = v78;
        v11 = v50;
        v19 = v81;
        v10 = v93;
        if (v97 == *(v98 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_state))
        {
          goto LABEL_5;
        }

        *(v98 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_state) = v97;
        if (v92)
        {
          goto LABEL_38;
        }
      }

      sub_1007F31FC();
      goto LABEL_5;
    }

    sub_1000095E8(v47, &unk_10118BCE0, &qword_100EC6450);
    v52 = v51(v49 + v48, 1, v50);
    v2 = v79;
    v11 = v50;
    if (v52 != 1)
    {
      goto LABEL_34;
    }

    sub_1000095E8(v49, &unk_10118BCE0, &qword_100EC6450);
    v53 = v98;
    v7 = v78;
    v19 = v81;
    v10 = v93;
    if (v97 != *(v98 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_state))
    {
      *(v98 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_state) = v97;
LABEL_38:
      if (qword_10117FE28 != -1)
      {
        swift_once();
      }

      v57 = qword_101219768;
      v58 = objc_opt_self();
      [v57 settlingDuration];
      v60 = v59;
      [v57 mass];
      v62 = v61;
      [v57 stiffness];
      v64 = v63;
      [v57 damping];
      v66 = v65;
      v67 = swift_allocObject();
      *(v67 + 16) = v53;
      v103[2] = sub_10033F718;
      v103[3] = v67;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v103[0] = sub_10002BC98;
      v103[1] = &unk_1010A7868;
      v68 = _Block_copy(aBlock);
      v69 = v101;

      [v58 _animateUsingSpringWithDuration:6 delay:v68 options:0 mass:v60 stiffness:0.0 damping:v62 initialVelocity:v64 animations:v66 completion:0.0];
      _Block_release(v68);
      v10 = v93;
    }

LABEL_5:

    sub_10033F754(v10, type metadata accessor for Lyrics.TextLine);
    v16 = v100;
    (*v95)(v100, v11);
    v12 = v99;
    if (v99 == v77)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
}

id sub_10033C130(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v8 = &v18 - v7;
  *&v3[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_selectionManager] = 0;
  v3[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_needsCustomTransition] = 0;
  *&v3[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_dataSource] = 0;
  v9 = OBJC_IVAR____TtC5Music29LyricsSelectionViewController_activityIndicator;
  v10 = [objc_allocWithZone(UIActivityIndicatorView) init];
  v11 = UIView.forAutolayout.getter();

  *&v4[v9] = v11;
  *&v4[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_displayActivityIndicatorWorkItem] = 0;
  v4[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_didAdjustInitialContentOffset] = 0;
  *&v4[OBJC_IVAR____TtC5Music29LyricsSelectionViewController____lazy_storage___collectionView] = 0;
  v12 = OBJC_IVAR____TtC5Music29LyricsSelectionViewController_pageProperties;
  v13 = type metadata accessor for URL();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  MetricsPageProperties.init(pageIdentifier:pageType:pageURL:pageDetails:extRefUrl:)(0x685373636972794CLL, 0xED0000676E697261, 0x4D747865746E6F43, 0xEB00000000756E65, v8, 0, 0, 0, &v4[v12]);
  if (a2)
  {
    v14 = String._bridgeToObjectiveC()();
  }

  else
  {
    v14 = 0;
  }

  v15 = type metadata accessor for LyricsSelectionViewController(0);
  v18.receiver = v4;
  v18.super_class = v15;
  v16 = objc_msgSendSuper2(&v18, "initWithNibName:bundle:", v14, a3);

  return v16;
}

id sub_10033C398(void *a1)
{
  v2 = v1;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v5 = &v14 - v4;
  *&v1[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_selectionManager] = 0;
  v1[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_needsCustomTransition] = 0;
  *&v1[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_dataSource] = 0;
  v6 = OBJC_IVAR____TtC5Music29LyricsSelectionViewController_activityIndicator;
  v7 = [objc_allocWithZone(UIActivityIndicatorView) init];
  v8 = UIView.forAutolayout.getter();

  *&v2[v6] = v8;
  *&v2[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_displayActivityIndicatorWorkItem] = 0;
  v2[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_didAdjustInitialContentOffset] = 0;
  *&v2[OBJC_IVAR____TtC5Music29LyricsSelectionViewController____lazy_storage___collectionView] = 0;
  v9 = OBJC_IVAR____TtC5Music29LyricsSelectionViewController_pageProperties;
  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  MetricsPageProperties.init(pageIdentifier:pageType:pageURL:pageDetails:extRefUrl:)(0x685373636972794CLL, 0xED0000676E697261, 0x4D747865746E6F43, 0xEB00000000756E65, v5, 0, 0, 0, &v2[v9]);
  v11 = type metadata accessor for LyricsSelectionViewController(0);
  v14.receiver = v2;
  v14.super_class = v11;
  v12 = objc_msgSendSuper2(&v14, "initWithCoder:", a1);

  if (v12)
  {
  }

  return v12;
}

id sub_10033C59C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LyricsSelectionViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for LyricsSelectionViewController(uint64_t a1)
{
  result = qword_10118BCC8;
  if (!qword_10118BCC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10033C6BC(uint64_t a1)
{
  result = type metadata accessor for MetricsPageProperties(319);
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

void sub_10033C8C0(void *a1, uint64_t a2)
{
  v3 = v2;
  v123 = type metadata accessor for Logger();
  v122 = *(v123 - 8);
  __chkstk_darwin();
  v121 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v120 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v126 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MetricsPageProperties(0);
  __chkstk_darwin();
  v128 = (&v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v129 = &v116 - v10;
  type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin();
  v130 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v13 = &v116 - v12;
  sub_10010FC20(&qword_101184020, &unk_100EC76D0);
  __chkstk_darwin();
  v15 = &v116 - v14;
  v16 = type metadata accessor for Lyrics.TextLine(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin();
  v125 = &v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v124 = &v116 - v19;
  __chkstk_darwin();
  v127 = &v116 - v20;
  __chkstk_darwin();
  v22 = &v116 - v21;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [a1 deselectItemAtIndexPath:isa animated:0];

  v24 = *&v3[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_selectionManager];
  if (v24)
  {
    v25 = *&v3[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_dataSource];
    if (!v25)
    {
      __break(1u);
      return;
    }

    v26 = v25;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {

      sub_1000095E8(v15, &qword_101184020, &unk_100EC76D0);
      return;
    }

    v119 = v3;
    v27 = v22;
    sub_1001EC250(v15, v22);
    swift_beginAccess();
    v28 = *(v24 + 72);
    if (*(v28 + 16) == 1)
    {
      v29 = v127;
      sub_10033F418(v28 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v127, type metadata accessor for Lyrics.TextLine);
      v30 = static Lyrics.TextLine.== infix(_:_:)(v22, v29);
      sub_10033F754(v29, type metadata accessor for Lyrics.TextLine);
      if (v30)
      {
        sub_10033FF60(v22);
        v31 = type metadata accessor for IndexPath();
        v32 = *(v31 - 8);
        v117 = v24;
        v33 = v32;
        (*(v32 + 16))(v13, a2, v31);
        (*(v33 + 56))(v13, 0, 1, v31);
        v34 = v119;
        sub_10033B470(v13);
        sub_1000095E8(v13, &unk_10118BCE0, &qword_100EC6450);
        aBlock[0] = *(v22 + 2);
        v35 = dispatch thunk of CustomStringConvertible.description.getter();
        v37 = v36;
        v38 = type metadata accessor for URL();
        v39 = v129;
        (*(*(v38 - 8) + 56))(v129, 1, 1, v38);
        v40 = v128;
        sub_10033F418(v34 + OBJC_IVAR____TtC5Music29LyricsSelectionViewController_pageProperties, v128, type metadata accessor for MetricsPageProperties);
        v41 = v130;
        MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:metricsPageProperties:snapshotImpressions:)(v35, v37, 14, 17, v39, 0, 0, 12, v130, 0, 0, 0xFF00u, v40, 0);
        v42 = *MetricsReportingController.shared.unsafeMutableAddressor();
        v43 = sub_10053771C();
        v45 = v44;
        if (qword_10117F600 != -1)
        {
          swift_once();
        }

        v46 = qword_101218AD0;
        v47 = GroupActivitiesManager.hasJoined.getter();
        v48 = GroupActivitiesManager.participantsCount.getter();
        v49 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
        swift_beginAccess();
        (*((swift_isaMask & *v42) + 0xB8))(v41, v43, v45, v47 & 1, v48, *(v46 + v49));

        [v34 accessibilityDidSelectItem];

        sub_10033F754(v41, type metadata accessor for MetricsEvent.Click);
        v50 = v27;
        goto LABEL_19;
      }
    }

    swift_beginAccess();
    v51 = *(v24 + 80);

    v52 = v24;
    v53 = sub_10048C144(v22, v51);

    v118 = v22;
    if (v53)
    {
LABEL_15:
      sub_10033F820(v27);
      v59 = type metadata accessor for IndexPath();
      v60 = *(v59 - 8);
      (*(v60 + 16))(v13, a2, v59);
      (*(v60 + 56))(v13, 0, 1, v59);
      v61 = v119;
      sub_10033B470(v13);
      sub_1000095E8(v13, &unk_10118BCE0, &qword_100EC6450);
      aBlock[0] = *(v27 + 16);
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;
      v65 = type metadata accessor for URL();
      v66 = v129;
      (*(*(v65 - 8) + 56))(v129, 1, 1, v65);
      v67 = v128;
      sub_10033F418(v61 + OBJC_IVAR____TtC5Music29LyricsSelectionViewController_pageProperties, v128, type metadata accessor for MetricsPageProperties);
      v68 = v130;
      MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:metricsPageProperties:snapshotImpressions:)(v62, v64, 14, 44, v66, 0, 0, 12, v130, 0, 0, 0xFF00u, v67, 0);
      v69 = *MetricsReportingController.shared.unsafeMutableAddressor();
      v70 = sub_10053771C();
      v72 = v71;
      if (qword_10117F600 != -1)
      {
        swift_once();
      }

      v73 = qword_101218AD0;
      v74 = GroupActivitiesManager.hasJoined.getter();
      v75 = GroupActivitiesManager.participantsCount.getter();
      v76 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
      swift_beginAccess();
      (*((swift_isaMask & *v69) + 0xB8))(v68, v70, v72, v74 & 1, v75, *(v73 + v76));

      [v61 accessibilityDidSelectItem];

      sub_10033F754(v68, type metadata accessor for MetricsEvent.Click);
      goto LABEL_18;
    }

    v117 = v52;
    v54 = *(v52 + 72);
    v55 = *(v54 + 16);

    v56 = 0;
    while (v55 != v56)
    {
      v57 = v56 + 1;
      v58 = static Lyrics.TextLine.== infix(_:_:)(v54 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v56, v22);
      v56 = v57;
      if (v58)
      {

        v27 = v22;
        goto LABEL_15;
      }
    }

    (*&v22[*(v16 + 64)])(v77);
    v78 = String.count.getter();

    v79 = sub_1001EBB88();
    if (v80)
    {
      v81 = v124;
      v82 = v125;
      if (v78 <= 150)
      {
LABEL_23:
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        v83 = String._bridgeToObjectiveC()();

        v84 = String._bridgeToObjectiveC()();

        v85 = [objc_opt_self() alertControllerWithTitle:v83 message:v84 preferredStyle:1];

        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        v86 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v87 = v22;
        v88 = v127;
        sub_10033F418(v87, v127, type metadata accessor for Lyrics.TextLine);
        v89 = (*(v17 + 80) + 32) & ~*(v17 + 80);
        v90 = swift_allocObject();
        v91 = v117;
        *(v90 + 16) = v86;
        *(v90 + 24) = v91;
        sub_1001EC250(v88, v90 + v89);

        v92 = String._bridgeToObjectiveC()();

        aBlock[4] = sub_10033F480;
        aBlock[5] = v90;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10027D328;
        aBlock[3] = &unk_1010A7818;
        v93 = _Block_copy(aBlock);

        v94 = objc_opt_self();
        v95 = [v94 actionWithTitle:v92 style:2 handler:v93];
        _Block_release(v93);

        [v85 addAction:v95];
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        v96 = String._bridgeToObjectiveC()();

        v97 = [v94 actionWithTitle:v96 style:1 handler:0];

        [v85 addAction:v97];
        [v119 presentViewController:v85 animated:1 completion:0];

LABEL_18:
        v50 = v118;
LABEL_19:
        sub_10033F754(v50, type metadata accessor for Lyrics.TextLine);
        return;
      }
    }

    else
    {
      v81 = v124;
      v82 = v125;
      if (v79 >= v78)
      {
        goto LABEL_23;
      }
    }

    v98 = Logger.lyrics.unsafeMutableAddressor();
    v99 = v122;
    v100 = v121;
    v101 = v123;
    (*(v122 + 16))(v121, v98, v123);
    sub_10033F418(v22, v81, type metadata accessor for Lyrics.TextLine);
    sub_10033F418(v22, v82, type metadata accessor for Lyrics.TextLine);
    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = v81;
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      aBlock[0] = v106;
      *v105 = 136446722;
      v107 = (*(v104 + *(v16 + 64)))();
      v109 = v108;
      sub_10033F754(v104, type metadata accessor for Lyrics.TextLine);
      v110 = sub_1000105AC(v107, v109, aBlock);

      *(v105 + 4) = v110;
      *(v105 + 12) = 2050;
      (*(v82 + *(v16 + 64)))(v111);
      v112 = String.count.getter();

      sub_10033F754(v82, type metadata accessor for Lyrics.TextLine);
      *(v105 + 14) = v112;
      *(v105 + 22) = 2050;
      v113 = sub_1001EBB88();
      v115 = 150;
      if ((v114 & 1) == 0)
      {
        v115 = v113;
      }

      *(v105 + 24) = v115;
      _os_log_impl(&_mh_execute_header, v102, v103, "Trying to share a line that is too long to be shared (text=%{public}s, length=%{public}ld, maxCharacterCount=%{public}ld)", v105, 0x20u);
      sub_10000959C(v106);

      (*(v122 + 8))(v121, v123);
      v50 = v118;
    }

    else
    {
      sub_10033F754(v82, type metadata accessor for Lyrics.TextLine);

      (*(v99 + 8))(v100, v101);
      sub_10033F754(v81, type metadata accessor for Lyrics.TextLine);
      v50 = v22;
    }

    goto LABEL_19;
  }
}