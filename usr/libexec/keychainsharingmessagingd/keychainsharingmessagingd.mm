uint64_t sub_100001550(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return _swift_task_switch(sub_1000015DC, 0, 0);
}

uint64_t sub_1000015DC()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_100001680;
  v2 = *(v0 + 16);

  return sub_100004DD0(v2);
}

uint64_t sub_100001680()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000017EC, 0, 0);
  }

  else
  {
    v4 = *(v2 + 24);
    v3 = *(v2 + 32);

    (*(v3 + 16))(v3, 0);
    _Block_release(*(v2 + 32));
    v5 = *(v2 + 8);

    return v5();
  }
}

uint64_t sub_1000017EC()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);

  v3 = _convertErrorToNSError(_:)();

  (*(v1 + 16))(v1, v3);

  _Block_release(*(v0 + 32));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100001A24(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  if (a2)
  {
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v8 = 0;
  }

  v4[5] = v8;
  v9 = a1;
  v10 = a4;

  return _swift_task_switch(sub_100001AD4, 0, 0);
}

uint64_t sub_100001AD4()
{
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_100001B7C;
  v2 = v0[5];
  v3 = v0[2];

  return sub_1000088D8(v3, v2);
}

uint64_t sub_100001B7C()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v1[2](v1, 0);
  _Block_release(v1);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100001E7C(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v3[4] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3[5] = v5;
  v6 = a3;

  return _swift_task_switch(sub_100001F08, 0, 0);
}

uint64_t sub_100001F08()
{
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_100001FAC;
  v3 = v0[4];
  v2 = v0[5];

  return sub_100008F38(v3, v2);
}

uint64_t sub_100001FAC()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10000211C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 24);

    (*(v3 + 16))(v3, 0);
    _Block_release(*(v2 + 24));
    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t sub_10000211C()
{
  v1 = *(v0 + 24);

  v2 = _convertErrorToNSError(_:)();

  (*(v1 + 16))(v1, v2);

  _Block_release(*(v0 + 24));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100002350(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v3[4] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3[5] = v5;
  v6 = a3;

  return _swift_task_switch(sub_1000023DC, 0, 0);
}

uint64_t sub_1000023DC()
{
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_100002480;
  v3 = v0[4];
  v2 = v0[5];

  return sub_1000099F8(v3, v2);
}

uint64_t sub_100002480()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100004614, 0, 0);
  }

  else
  {
    v3 = *(v2 + 24);

    (*(v3 + 16))(v3, 0);
    _Block_release(*(v2 + 24));
    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t sub_1000025F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_100002618, 0, 0);
}

uint64_t sub_100002618()
{
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1000026BC;
  v3 = v0[3];
  v2 = v0[4];

  return sub_10000A3AC(v3, v2);
}

uint64_t sub_1000026BC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = sub_100002870;
  }

  else
  {
    v4 = sub_1000027D0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000027D0()
{
  v1 = v0[8];
  v2 = v0[5];
  if (v1)
  {
    v3 = v1;
    v2(v1, 0);
  }

  else
  {
    v2(0, 0);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_100002870()
{
  v1 = v0[9];
  v2 = v0[5];
  swift_errorRetain();
  v2(0, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100002900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003338(&qword_100024DC0, &qword_100017480);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100003B7C(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100003BEC(v11);
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

      sub_100003BEC(a3);

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

  sub_100003BEC(a3);
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

void sub_100002D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_100002F0C(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_100002F84, 0, 0);
}

uint64_t sub_100002F84()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_100003020;

  return sub_10000B018();
}

uint64_t sub_100003020(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_1000031F4;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = sub_100003148;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100003148()
{
  sub_100003F34();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v2 = *(v0 + 24);
  (v2)[2](v2, isa, 0);

  _Block_release(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000031F4()
{
  v1 = _convertErrorToNSError(_:)();

  v2 = *(v0 + 24);
  (v2)[2](v2, 0, v1);

  _Block_release(v2);
  v3 = *(v0 + 8);

  return v3();
}

id sub_100003294()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KCSharingMessagingdXPCServer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100003338(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003380()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000033C0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100004650;

  return sub_100002F0C(v2, v3);
}

uint64_t sub_10000346C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100004650;

  return v6();
}

uint64_t sub_100003558()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100004650;

  return sub_10000346C(v2, v3, v4);
}

uint64_t sub_100003618(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100003700;

  return v7();
}

uint64_t sub_100003700()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000037F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100004650;

  return sub_100003618(a1, v4, v5, v6);
}

uint64_t sub_1000038C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003338(&qword_100024DC0, &qword_100017480);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_100003B7C(a3, v23 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100003BEC(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_100003BEC(a3);

    return v21;
  }

LABEL_8:
  sub_100003BEC(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_100003B7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003338(&qword_100024DC0, &qword_100017480);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003BEC(uint64_t a1)
{
  v2 = sub_100003338(&qword_100024DC0, &qword_100017480);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100003C54(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100003D4C;

  return v6(a1);
}

uint64_t sub_100003D4C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100003E44()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003E7C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100004650;

  return sub_100003C54(a1, v4);
}

unint64_t sub_100003F34()
{
  result = qword_100024DC8;
  if (!qword_100024DC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100024DC8);
  }

  return result;
}

uint64_t sub_100003F80()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003FC0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100004010(uint64_t a1)
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
  v11[1] = sub_100004650;

  return sub_1000025F0(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000040EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100004650;

  return sub_100003C54(a1, v4);
}

uint64_t sub_1000041A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003700;

  return sub_100003C54(a1, v4);
}

uint64_t sub_100004260()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100004650;

  return sub_100002350(v2, v3, v4);
}

uint64_t sub_100004314()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100004650;

  return sub_100001E7C(v2, v3, v4);
}

uint64_t sub_1000043C8()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100004418()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100004650;

  return sub_100001A24(v2, v3, v5, v4);
}

uint64_t sub_1000044D8()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100004520()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100003700;

  return sub_100001550(v2, v3, v4);
}

uint64_t sub_1000045D4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

char *sub_100004654()
{
  v0 = [objc_opt_self() sharedInvitationNotifier];
  v1 = objc_allocWithZone(type metadata accessor for KCSharingMessagingdInvitationManagerDelegate());
  result = sub_10000497C(v0);
  qword_1000252B0 = result;
  return result;
}

void sub_1000046B0()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v10 = OBJC_IVAR____TtC25keychainsharingmessagingd44KCSharingMessagingdInvitationManagerDelegate_queue;
  sub_1000121D0(0, &qword_100024ED8, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v12 = _swiftEmptyArrayStorage;
  sub_10000F184(&qword_100024EE0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100003338(&qword_100024EE8, &qword_100017990);
  sub_10000DFD4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  v6 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v7 = v11;
  *(v11 + v10) = v6;
  v8 = (v7 + OBJC_IVAR____TtC25keychainsharingmessagingd44KCSharingMessagingdInvitationManagerDelegate_schemaIdentifier);
  *v8 = 0xD000000000000023;
  v8[1] = 0x8000000100017CC0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

char *sub_10000497C(void *a1)
{
  v26 = a1;
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v25[0] = OBJC_IVAR____TtC25keychainsharingmessagingd44KCSharingMessagingdInvitationManagerDelegate_queue;
  sub_1000121D0(0, &qword_100024ED8, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_10000F184(&qword_100024EE0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100003338(&qword_100024EE8, &qword_100017990);
  sub_10000DFD4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v1);
  v7 = v25[1];
  *&v7[v25[0]] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v8 = &v7[OBJC_IVAR____TtC25keychainsharingmessagingd44KCSharingMessagingdInvitationManagerDelegate_schemaIdentifier];
  *v8 = 0xD000000000000023;
  *(v8 + 1) = 0x8000000100017CC0;
  if (qword_100024D10 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000EE30(v9, qword_1000252D0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_100014CFC(0xD000000000000028, 0x8000000100017CF0, &v28);
    _os_log_impl(&_mh_execute_header, v10, v11, "initing IDSInvitationManager with service name %s", v12, 0xCu);
    sub_100013330(v13);
  }

  v14 = objc_allocWithZone(IDSInvitationManager);
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 initWithServiceIdentifier:v15];

  *&v7[OBJC_IVAR____TtC25keychainsharingmessagingd44KCSharingMessagingdInvitationManagerDelegate_manager] = v16;
  v17 = v26;
  *&v7[OBJC_IVAR____TtC25keychainsharingmessagingd44KCSharingMessagingdInvitationManagerDelegate_daemonConnection] = v26;
  v18 = type metadata accessor for KCSharingMessagingdInvitationManagerDelegate();
  v27.receiver = v7;
  v27.super_class = v18;
  v19 = v17;
  v20 = objc_msgSendSuper2(&v27, "init");
  v21 = *&v20[OBJC_IVAR____TtC25keychainsharingmessagingd44KCSharingMessagingdInvitationManagerDelegate_manager];
  v22 = *&v20[OBJC_IVAR____TtC25keychainsharingmessagingd44KCSharingMessagingdInvitationManagerDelegate_queue];
  v23 = v20;
  [v21 setDelegate:v23 queue:v22];

  return v23;
}

uint64_t sub_100004DD0(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = type metadata accessor for URL();
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_100004E9C, 0, 0);
}

uint64_t sub_100004E9C()
{
  v61 = v0;
  if (qword_100024D10 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = type metadata accessor for Logger();
  v0[23] = sub_10000EE30(v2, qword_1000252D0);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[17];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "sending new invites for group %@", v7, 0xCu);
    sub_100012848(v8, &qword_100024F60, &qword_100017650);
  }

  v10 = v0[17];

  v11 = [v10 shareURL];
  if (v11)
  {
    v12 = v0[21];
    v13 = v0[22];
    v15 = v0[19];
    v14 = v0[20];
    v16 = v0[17];
    v17 = v11;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v14 + 32))(v13, v12, v15);
    v18 = [v16 groupID];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    sub_10000C1BC(v19, v21);
    v23 = v22;
    v0[24] = v22;

    v0[15] = &_swiftEmptySetSingleton;
    if (v23 >> 62)
    {
      v24 = _CocoaArrayWrapper.endIndex.getter();
      v32 = v24;
      if (!v24)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v32 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v32)
      {
        goto LABEL_20;
      }
    }

    if (v32 < 1)
    {
      __break(1u);
      return withTaskGroup<A, B>(of:returning:isolation:body:)(v24, v25, v26, v27, v28, v29, v30, v31);
    }

    v33 = 0;
    do
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v34 = *(v23 + 8 * v33 + 32);
      }

      v35 = v34;
      ++v33;
      v36 = [v34 destination];
      v37 = sub_1000058CC();
      swift_unknownObjectRelease();
      sub_100005AD8(v37);
    }

    while (v32 != v33);
LABEL_20:
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v60 = v48;
      *v47 = 136315138;
      swift_beginAccess();

      v49 = Set.description.getter();
      v51 = v50;

      v52 = sub_100014CFC(v49, v51, &v60);

      *(v47 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v45, v46, "all pending URIs: %s", v47, 0xCu);
      sub_100013330(v48);
    }

    v53 = v0[22];
    v55 = v0[17];
    v54 = v0[18];
    v56 = sub_100003338(&qword_100024FF0, &qword_1000176D0);
    v57 = sub_100003338(&qword_100024FF8, &qword_1000176D8);
    v0[25] = v57;
    v58 = swift_task_alloc();
    v0[26] = v58;
    v58[2] = v55;
    v58[3] = v0 + 15;
    v58[4] = v23;
    v58[5] = v54;
    v58[6] = v53;
    v59 = swift_task_alloc();
    v0[27] = v59;
    *v59 = v0;
    v59[1] = sub_100005478;
    v63 = v57;
    v29 = &unk_1000176E8;
    v24 = (v0 + 16);
    v25 = v56;
    v26 = v57;
    v27 = 0;
    v28 = 0;
    v30 = v58;
    v31 = v56;

    return withTaskGroup<A, B>(of:returning:isolation:body:)(v24, v25, v26, v27, v28, v29, v30, v31);
  }

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "missing group shareURL", v40, 2u);
  }

  v41 = objc_allocWithZone(NSError);
  v42 = String._bridgeToObjectiveC()();
  [v41 initWithDomain:v42 code:3 userInfo:0];

  swift_willThrow();

  v43 = v0[1];

  return v43();
}

uint64_t sub_100005478()
{

  return _swift_task_switch(sub_1000055AC, 0, 0);
}

uint64_t sub_1000055AC()
{
  v24 = v0;
  v1 = v0[16];
  if (*(v1 + 16))
  {

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v23 = v5;
      *v4 = 136315138;
      sub_1000121D0(0, &qword_100025010, NSError_ptr);
      v6 = Dictionary.description.getter();
      v8 = sub_100014CFC(v6, v7, &v23);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "collected errors %s", v4, 0xCu);
      sub_100013330(v5);
    }

    v9 = v0[25];
    v10 = v0[22];
    v11 = v0[19];
    v12 = v0[20];
    sub_100003338(&qword_100025000, &qword_1000176F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000175B0;
    *(inited + 32) = 0xD000000000000010;
    v14 = inited + 32;
    *(inited + 72) = v9;
    *(inited + 40) = 0x8000000100017E30;
    *(inited + 48) = v1;
    sub_10001183C(inited);
    swift_setDeallocating();
    sub_100012848(v14, &qword_100025008, &qword_1000176F8);
    v15 = objc_allocWithZone(NSError);
    v16 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v15 initWithDomain:v16 code:0 userInfo:isa];

    swift_willThrow();

    (*(v12 + 8))(v10, v11);

    v18 = v0[1];
  }

  else
  {
    v19 = v0[22];
    v20 = v0[19];
    v21 = v0[20];

    (*(v21 + 8))(v19, v20);

    v18 = v0[1];
  }

  return v18();
}

uint64_t sub_1000058CC()
{
  v1 = [v0 destinationURIs];
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v5 &= v5 - 1;

    v11 = String._bridgeToObjectiveC()();
    v12 = [v11 _stripFZIDPrefix];

    if (v12)
    {
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v14;

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10000EE68(0, *(v9 + 2) + 1, 1, v9);
        v9 = result;
      }

      v16 = *(v9 + 2);
      v15 = *(v9 + 3);
      if (v16 >= v15 >> 1)
      {
        result = sub_10000EE68((v15 > 1), v16 + 1, 1, v9);
        v9 = result;
      }

      *(v9 + 2) = v16 + 1;
      v17 = &v9[16 * v16];
      *(v17 + 4) = v13;
      *(v17 + 5) = v19;
    }

    else
    {
    }
  }

  while (1)
  {
    v8 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      v18 = sub_1000117A4(v9);

      return v18;
    }

    v5 = *(v2 + 56 + 8 * v8);
    ++v10;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100005AD8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_10000F1CC(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_100005BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[18] = a6;
  v7[19] = a7;
  v7[16] = a4;
  v7[17] = a5;
  v7[14] = a2;
  v7[15] = a3;
  v7[13] = a1;
  sub_100003338(&qword_100024DC0, &qword_100017480);
  v7[20] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v7[21] = v8;
  v7[22] = *(v8 - 8);
  v7[23] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v7[24] = v9;
  v7[25] = *(v9 - 8);
  v7[26] = swift_task_alloc();
  sub_100003338(&qword_100024F80, &qword_100017680);
  v7[27] = swift_task_alloc();
  v10 = type metadata accessor for KCSharingMessagingdInvitationManagerDelegate.InvitationPayload(0);
  v7[28] = v10;
  v7[29] = *(v10 - 8);
  v7[30] = swift_task_alloc();
  v7[31] = swift_task_alloc();
  v11 = sub_100003338(&qword_100025020, &qword_100017708);
  v7[32] = v11;
  v7[33] = *(v11 - 8);
  v7[34] = swift_task_alloc();

  return _swift_task_switch(sub_100005E44, 0, 0);
}

uint64_t sub_100005E44()
{
  v1 = [*(v0 + 120) participants];
  sub_1000121D0(0, &qword_100025028, KCSharingParticipant_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_81;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = v144[29];
    v129 = v144[30];
    v130 = v144[28];
    v4 = v144[25];
    v5 = v144[22];
    v6 = v144[17];
    v121 = OBJC_IVAR____TtC25keychainsharingmessagingd44KCSharingMessagingdInvitationManagerDelegate_manager;
    v122 = v144[18];
    v7 = v2 & 0xC000000000000001;
    swift_beginAccess();
    v8 = 0;
    v142 = v2 + 32;
    v143 = v2 & 0xFFFFFFFFFFFFFF8;
    v125 = v6 & 0xFFFFFFFFFFFFFF8;
    v139 = v6 & 0xC000000000000001;
    v138 = v6 + 32;
    v123 = (v3 + 56);
    v127 = (v4 + 32);
    v128 = (v4 + 16);
    v126 = (v5 + 32);
    v9 = &KCSharingMessagingdXPCServer;
    v124 = v6 >> 62;
    v131 = v2;
    v132 = v2 & 0xC000000000000001;
    while (1)
    {
      if (v7)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v143 + 16))
        {
          goto LABEL_78;
        }

        v10 = *(v142 + 8 * v8);
      }

      v11 = v10;
      v12 = __OFADD__(v8++, 1);
      if (v12)
      {
        break;
      }

      if ([v10 v9[203].count] == 1)
      {
        if ([v11 isCurrentUser])
        {
          if (qword_100024D10 != -1)
          {
            swift_once();
          }

          v13 = type metadata accessor for Logger();
          sub_10000EE30(v13, qword_1000252D0);
          v14 = v11;
          v15 = Logger.logObject.getter();
          v16 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v15, v16))
          {
            v17 = swift_slowAlloc();
            v18 = v2;
            v19 = swift_slowAlloc();
            *v17 = 138412290;
            *(v17 + 4) = v14;
            *v19 = v14;
            v20 = v14;
            v21 = v16;
            v22 = v15;
            v23 = "Skipping participant %@ because they're us";
LABEL_21:
            _os_log_impl(&_mh_execute_header, v22, v21, v23, v17, 0xCu);
            sub_100012848(v19, &qword_100024F60, &qword_100017650);
            v2 = v18;

            goto LABEL_5;
          }
        }

        else
        {
          v26 = [v11 sharingInvitationData];
          if (v26)
          {
            v146 = v11;
            v137 = v8;
            v27 = v144[16];
            v28 = v26;
            v135 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v136 = v29;

            v30 = *v27;
            v2 = *v27 + 56;
            v31 = -1 << *(*v27 + 32);
            if (-v31 < 64)
            {
              v32 = ~(-1 << -v31);
            }

            else
            {
              v32 = -1;
            }

            v33 = v32 & *(*v27 + 56);
            v34 = (63 - v31) >> 6;
            swift_bridgeObjectRetain_n();
            v35 = 0;
            while (v33)
            {
              v36 = v35;
LABEL_34:
              v38 = (*(v30 + 48) + ((v36 << 10) | (16 * __clz(__rbit64(v33)))));
              v39 = v38[1];
              v33 &= v33 - 1;
              v144[8] = *v38;
              v144[9] = v39;

              v40 = [v146 handle];
              v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v43 = v42;

              v144[10] = v41;
              v144[11] = v43;
              sub_100010E78();
              LOBYTE(v40) = StringProtocol.contains<A>(_:)();

              if (v40)
              {

                if (qword_100024D10 != -1)
                {
                  swift_once();
                }

                v44 = type metadata accessor for Logger();
                sub_10000EE30(v44, qword_1000252D0);
                v45 = v146;
                v46 = Logger.logObject.getter();
                v47 = static os_log_type_t.default.getter();
                v140 = v45;

                v9 = &KCSharingMessagingdXPCServer;
                if (os_log_type_enabled(v46, v47))
                {
                  v48 = swift_slowAlloc();
                  v49 = swift_slowAlloc();
                  *v48 = 138412290;
                  *(v48 + 4) = v140;
                  *v49 = v140;
                  v50 = v140;
                  _os_log_impl(&_mh_execute_header, v46, v47, "Participant %@ already has a pending invite", v48, 0xCu);
                  sub_100012848(v49, &qword_100024F60, &qword_100017650);
                }

                if (v124)
                {
                  v2 = _CocoaArrayWrapper.endIndex.getter();
                }

                else
                {
                  v2 = *(v125 + 16);
                }

                v51 = 0;
                while (1)
                {
                  if (v2 == v51)
                  {
                    v98 = Logger.logObject.getter();
                    v99 = static os_log_type_t.default.getter();
                    if (os_log_type_enabled(v98, v99))
                    {
                      v100 = swift_slowAlloc();
                      *v100 = 0;
                      _os_log_impl(&_mh_execute_header, v98, v99, "Unable to find existing invitation, which we know we do have..? Skipping participant which has unknown pending invitation", v100, 2u);
                    }

                    sub_10000FF94(v135, v136);
                    v7 = v132;
                    v8 = v137;
                    goto LABEL_60;
                  }

                  if (v139)
                  {
                    v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    if (v51 >= *(v125 + 16))
                    {
                      goto LABEL_79;
                    }

                    v52 = *(v138 + 8 * v51);
                  }

                  v53 = v52;
                  v54 = [v52 destination];
                  v55 = sub_1000058CC();
                  swift_unknownObjectRelease();
                  v56 = [v140 handle];
                  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v59 = v58;

                  LOBYTE(v56) = sub_10000719C(v57, v59, v55);

                  if (v56)
                  {
                    break;
                  }

                  v12 = __OFADD__(v51++, 1);
                  v9 = &KCSharingMessagingdXPCServer;
                  if (v12)
                  {
                    goto LABEL_80;
                  }
                }

                v9 = &KCSharingMessagingdXPCServer;
                if (v139)
                {
                  v101 = v144;
                  v102 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v102 = *(v138 + 8 * v51);
                  v101 = v144;
                }

                sub_10000C5B0(v102, v101[27]);
                v7 = v132;
                v8 = v137;
                v103 = v101[31];
                v104 = v101[27];
                (*v123)(v104, 0, 1, v101[28]);
                sub_100010DB8(v104, v103);
                if (sub_1000123FC(*(v103 + v130[6]), *(v103 + v130[6] + 8), v135, v136))
                {
                  v105 = v140;
                  v106 = Logger.logObject.getter();
                  v107 = static os_log_type_t.default.getter();

                  if (os_log_type_enabled(v106, v107))
                  {
                    v108 = swift_slowAlloc();
                    v109 = swift_slowAlloc();
                    *v108 = 138412290;
                    *(v108 + 4) = v105;
                    *v109 = v105;
                    v110 = v105;
                    _os_log_impl(&_mh_execute_header, v106, v107, "Skipping participant %@ because their pending invite seems fine", v108, 0xCu);
                    sub_100012848(v109, &qword_100024F60, &qword_100017650);

                    sub_10000FF94(v135, v136);
                  }

                  else
                  {
                    sub_10000FF94(v135, v136);
                  }

                  v2 = v131;
                  v117 = v144[31];

                  sub_100010E1C(v117);
                  goto LABEL_5;
                }

                sub_100010E1C(v101[31]);
                v60 = v101;
                v111 = v140;
                v112 = Logger.logObject.getter();
                v113 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v112, v113))
                {
                  v114 = swift_slowAlloc();
                  v115 = swift_slowAlloc();
                  *v114 = 138412290;
                  *(v114 + 4) = v111;
                  *v115 = v111;
                  v116 = v111;
                  _os_log_impl(&_mh_execute_header, v112, v113, "Invitation data for %@ has changed. Canceling existing invite and resending", v114, 0xCu);
                  sub_100012848(v115, &qword_100024F60, &qword_100017650);
                }

                [*(v122 + v121) cancelInvitation:v102 serverAcknowledgedBlock:0];
                v37 = v146;
LABEL_52:
                v61 = v60[26];
                v62 = v60[24];
                v63 = v60[19];
                v64 = v60[15];
                v65 = [v64 groupID];
                v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v68 = v67;

                (*v128)(v61, v63, v62);
                v69 = [v37 handle];
                v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v72 = v71;

                Date.init()();
                v73 = [v64 displayName];
                v74 = v72;
                if (v73)
                {
                  v75 = v73;
                  v133 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v77 = v76;
                }

                else
                {
                  v133 = 0;
                  v77 = 0;
                }

                v80 = v60[30];
                v81 = v60[26];
                v83 = v60[23];
                v82 = v60[24];
                v85 = v60[20];
                v84 = v60[21];
                v134 = v60[18];
                v141 = v60[15];
                *v80 = v66;
                *(v129 + 8) = v68;
                (*v127)(v80 + v130[5], v81, v82);
                v86 = (v80 + v130[6]);
                *v86 = v135;
                v86[1] = v136;
                v87 = (v80 + v130[7]);
                *v87 = v70;
                v87[1] = v74;
                (*v126)(v80 + v130[8], v83, v84);
                v88 = (v80 + v130[9]);
                *v88 = v133;
                v88[1] = v77;
                v89 = sub_100007294();
                sub_100007550(v89);

                v90 = objc_allocWithZone(IDSDictionaryInvitationContext);
                isa = Dictionary._bridgeToObjectiveC()().super.isa;

                v92 = String._bridgeToObjectiveC()();
                v93 = [v90 initWithDictionary:isa schema:v92];

                v94 = type metadata accessor for TaskPriority();
                (*(*(v94 - 8) + 56))(v85, 1, 1, v94);
                v95 = swift_allocObject();
                v95[2] = 0;
                v95[3] = 0;
                v95[4] = v146;
                v95[5] = v134;
                v95[6] = v93;
                v95[7] = v141;
                v96 = v134;
                v97 = v141;
                sub_100008400(v85, &unk_100017718, v95);
                sub_100012848(v85, &qword_100024DC0, &qword_100017480);
                sub_100010E1C(v80);
                v7 = v132;
                v8 = v137;
                v9 = &KCSharingMessagingdXPCServer;
LABEL_60:
                v2 = v131;
                goto LABEL_5;
              }
            }

            v37 = v146;
            while (1)
            {
              v36 = v35 + 1;
              if (__OFADD__(v35, 1))
              {
                break;
              }

              if (v36 >= v34)
              {

                v60 = v144;
                goto LABEL_52;
              }

              v33 = *(v2 + 8 * v36);
              ++v35;
              if (v33)
              {
                v35 = v36;
                goto LABEL_34;
              }
            }

            __break(1u);
            break;
          }

          if (qword_100024D10 != -1)
          {
            swift_once();
          }

          v78 = type metadata accessor for Logger();
          sub_10000EE30(v78, qword_1000252D0);
          v14 = v11;
          v15 = Logger.logObject.getter();
          v79 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v15, v79))
          {
            v17 = swift_slowAlloc();
            v18 = v2;
            v19 = swift_slowAlloc();
            *v17 = 138412290;
            *(v17 + 4) = v14;
            *v19 = v14;
            v20 = v14;
            v21 = v79;
            v22 = v15;
            v23 = "missing invitationData for participant %@, can't (re)invite them";
            goto LABEL_21;
          }
        }
      }

      else
      {
        if (qword_100024D10 != -1)
        {
          swift_once();
        }

        v24 = type metadata accessor for Logger();
        sub_10000EE30(v24, qword_1000252D0);
        v14 = v11;
        v15 = Logger.logObject.getter();
        v25 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v15, v25))
        {
          v17 = swift_slowAlloc();
          v18 = v2;
          v19 = swift_slowAlloc();
          *v17 = 138412290;
          *(v17 + 4) = v14;
          *v19 = v14;
          v20 = v14;
          v21 = v25;
          v22 = v15;
          v23 = "Skipping participant %@ because they're not pending";
          goto LABEL_21;
        }
      }

LABEL_5:
      if (v8 == i)
      {
        goto LABEL_82;
      }
    }

    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    ;
  }

LABEL_82:

  sub_100003338(&qword_100024FF0, &qword_1000176D0);
  TaskGroup.makeAsyncIterator()();
  v144[35] = _swiftEmptyDictionarySingleton;
  v118 = swift_task_alloc();
  v144[36] = v118;
  *v118 = v144;
  v118[1] = sub_100006DB8;
  v119 = v144[32];

  return TaskGroup.Iterator.next(isolation:)(v144 + 5, 0, 0, v119);
}

uint64_t sub_100006DB8()
{

  return _swift_task_switch(sub_100006EB4, 0, 0);
}

uint64_t sub_100006EB4()
{
  v3 = v0[5];
  v2 = v0[6];
  if (v2)
  {
    v4 = v0[7];
    if (!v4)
    {

      goto LABEL_20;
    }

    v5 = v0[35];
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v0[12] = v5;
    v8 = sub_10000FE50(v3, v2);
    v10 = *(v5 + 16);
    v11 = (v9 & 1) == 0;
    v12 = __OFADD__(v10, v11);
    v13 = v10 + v11;
    if (v12)
    {
      __break(1u);
    }

    else
    {
      v1 = v9;
      if (*(v0[35] + 24) < v13)
      {
        sub_100010698(v13, isUniquelyReferenced_nonNull_native);
        v8 = sub_10000FE50(v3, v2);
        if ((v1 & 1) != (v14 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

LABEL_14:
        if (v1)
        {
LABEL_15:
          v19 = v8;

          v20 = v0[12];
          v21 = *(v20 + 56);
          v22 = *(v21 + 8 * v19);
          *(v21 + 8 * v19) = v6;

          v0[35] = v20;
          goto LABEL_20;
        }

LABEL_18:
        v24 = v0[12];
        v24[(v8 >> 6) + 8] |= 1 << v8;
        v25 = (v24[6] + 16 * v8);
        *v25 = v3;
        v25[1] = v2;
        *(v24[7] + 8 * v8) = v6;

        v30 = v24[2];
        v12 = __OFADD__(v30, 1);
        v31 = v30 + 1;
        if (v12)
        {
          __break(1u);
          return TaskGroup.Iterator.next(isolation:)(v26, v27, v28, v29);
        }

        v24[2] = v31;
        v0[35] = v24;
LABEL_20:
        v32 = swift_task_alloc();
        v0[36] = v32;
        *v32 = v0;
        v32[1] = sub_100006DB8;
        v29 = v0[32];
        v26 = v0 + 5;
        v27 = 0;
        v28 = 0;

        return TaskGroup.Iterator.next(isolation:)(v26, v27, v28, v29);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_14;
      }
    }

    v23 = v8;
    sub_1000112C4();
    v8 = v23;
    if (v1)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  v16 = v0[35];
  v17 = v0[13];
  (*(v0[33] + 8))(v0[34], v0[32]);
  *v17 = v16;

  v18 = v0[1];

  return v18();
}

uint64_t sub_10000719C(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_100007294()
{
  v1 = v0;
  sub_100003338(&qword_100025000, &qword_1000176F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000175C0;
  *(inited + 32) = 0x444970756F7267;
  *(inited + 40) = 0xE700000000000000;
  v3 = *v0;
  v4 = *(v0 + 1);
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x4C52556572616873;
  *(inited + 88) = 0xE800000000000000;
  v5 = type metadata accessor for KCSharingMessagingdInvitationManagerDelegate.InvitationPayload(0);

  *(inited + 96) = URL.absoluteString.getter();
  *(inited + 104) = v6;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0x6974617469766E69;
  *(inited + 136) = 0xEF6E656B6F546E6FLL;
  v7 = &v1[v5[6]];
  v8 = *v7;
  v9 = v7[1];
  *(inited + 144) = *v7;
  *(inited + 152) = v9;
  *(inited + 168) = &type metadata for Data;
  strcpy((inited + 176), "inviteeHandle");
  *(inited + 190) = -4864;
  v10 = &v1[v5[7]];
  v11 = *(v10 + 1);
  *(inited + 192) = *v10;
  *(inited + 200) = v11;
  *(inited + 216) = &type metadata for String;
  *(inited + 224) = 0x656D6954746E6573;
  *(inited + 232) = 0xE800000000000000;
  v12 = v5[8];
  v13 = type metadata accessor for Date();
  *(inited + 264) = v13;
  v14 = sub_1000127E4((inited + 240));
  (*(*(v13 - 8) + 16))(v14, &v1[v12], v13);

  sub_100012564(v8, v9);
  v15 = sub_10001183C(inited);
  swift_setDeallocating();
  sub_100003338(&qword_100025008, &qword_1000176F8);
  swift_arrayDestroy();
  v24 = v15;
  v16 = &v1[v5[9]];
  v17 = v16[1];
  if (v17)
  {
    v18 = *v16;
    v23 = &type metadata for String;
    *&v22 = v18;
    *(&v22 + 1) = v17;
    sub_100011FD0(&v22, v21);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100010AEC(v21, 0x6D614E70756F7267, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
    return v15;
  }

  else
  {
    sub_100010078(0x6D614E70756F7267, 0xE900000000000065, &v22);
    sub_100012848(&v22, &qword_100025038, &qword_100017980);
    return v24;
  }
}

Swift::Int sub_100007550(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003338(&qword_100024FD0, &qword_1000176B0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10000FEC8(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100011FD0(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100011FD0(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100011FD0(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v7[v18 >> 6]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = v7[v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~v7[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100011FD0(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100007818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return _swift_task_switch(sub_100007840, 0, 0);
}

uint64_t sub_100007840()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 40);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = sub_100003338(&qword_100024FF0, &qword_1000176D0);
  *v3 = v0;
  v3[1] = sub_10000794C;
  v5 = *(v0 + 16);

  return withCheckedContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000018, 0x8000000100017E50, sub_100012670, v1, v4);
}

uint64_t sub_10000794C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_100007A5C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v42 = a3;
  v9 = sub_100003338(&qword_100025030, &unk_100017730);
  v10 = *(v9 - 8);
  v43 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v38 - v11;
  if (qword_100024D10 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000EE30(v13, qword_1000252D0);
  v14 = a2;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  v17 = &KCSharingMessagingdXPCServer;
  if (os_log_type_enabled(v15, v16))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v41 = a5;
    v38 = v19;
    aBlock[0] = v19;
    *v18 = 136315138;
    v20 = v14;
    v21 = [v14 handle];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v10;
    v40 = a1;
    v23 = v22;
    v24 = v12;
    v25 = v9;
    v26 = a4;
    v28 = v27;

    v14 = v20;
    v29 = sub_100014CFC(v23, v28, aBlock);
    a4 = v26;
    v9 = v25;
    v12 = v24;
    v10 = v39;

    *(v18 + 4) = v29;
    a1 = v40;
    _os_log_impl(&_mh_execute_header, v15, v16, "Sending invite to participant %s", v18, 0xCu);
    sub_100013330(v38);
    a5 = v41;

    v17 = &KCSharingMessagingdXPCServer;
  }

  v30 = *(v42 + OBJC_IVAR____TtC25keychainsharingmessagingd44KCSharingMessagingdInvitationManagerDelegate_manager);
  v31 = v14;
  v32 = [v14 v17[206].count];
  if (!v32)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = String._bridgeToObjectiveC()();
  }

  (*(v10 + 16))(v12, a1, v9);
  v33 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = v31;
  *(v34 + 24) = a5;
  (*(v10 + 32))(v34 + v33, v12, v9);
  aBlock[4] = sub_100012754;
  aBlock[5] = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008374;
  aBlock[3] = &unk_100020ED8;
  v35 = _Block_copy(aBlock);
  v36 = v31;
  v37 = a5;

  [v30 sendInvitationToDestination:v32 expirationDate:0 context:a4 serverAcknowledgedBlock:v35];
  _Block_release(v35);
}

uint64_t sub_100007E0C(void *a1, uint64_t a2, void *a3, void *a4)
{
  if (a1)
  {
    v7 = [a1 description];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (a2)
    {
LABEL_3:
      swift_errorRetain();
      if (qword_100024D10 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_10000EE30(v11, qword_1000252D0);
      swift_errorRetain();

      v12 = a3;
      v13 = a4;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();

      v16 = &KCSharingMessagingdXPCServer;
      if (os_log_type_enabled(v14, v15))
      {
        v17 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *v17 = 136315906;
        v18 = sub_100014CFC(v8, v10, &v52);

        *(v17 + 4) = v18;
        *(v17 + 12) = 2080;
        v19 = [v12 handle];
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        v23 = sub_100014CFC(v20, v22, &v52);
        v16 = &KCSharingMessagingdXPCServer;

        *(v17 + 14) = v23;
        *(v17 + 22) = 2080;
        v24 = [v13 groupID];
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        v28 = sub_100014CFC(v25, v27, &v52);

        *(v17 + 24) = v28;
        *(v17 + 32) = 2112;
        swift_errorRetain();
        v29 = _swift_stdlib_bridgeErrorToNSError();
        *(v17 + 34) = v29;
        *v51 = v29;
        _os_log_impl(&_mh_execute_header, v14, v15, "IDS reports error sending invitation %s to %s for %s: %@", v17, 0x2Au);
        sub_100012848(v51, &qword_100024F60, &qword_100017650);

        swift_arrayDestroy();
      }

      else
      {
      }

      v41 = [v12 v16[206].count];
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      v45 = _convertErrorToNSError(_:)();
      v52 = v42;
      v53 = v44;
      v54 = v45;
      sub_100003338(&qword_100025030, &unk_100017730);
      CheckedContinuation.resume(returning:)();
    }
  }

  else
  {
    v10 = 0xE500000000000000;
    v8 = 0x3E6C696E3CLL;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  if (qword_100024D10 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_10000EE30(v30, qword_1000252D0);

  v31 = a4;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v34 = 136315394;
    v35 = sub_100014CFC(v8, v10, &v52);

    *(v34 + 4) = v35;
    *(v34 + 12) = 2080;
    v36 = [v31 groupID];
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    v40 = sub_100014CFC(v37, v39, &v52);

    *(v34 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v32, v33, "IDS acknowledges sending %s for %s", v34, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v47 = [a3 handle];
  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v49;

  v52 = v48;
  v53 = v50;
  v54 = 0;
  sub_100003338(&qword_100025030, &unk_100017730);
  return CheckedContinuation.resume(returning:)();
}

void sub_100008374(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_100008400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100003338(&qword_100024DC0, &qword_100017480);
  __chkstk_darwin(v8 - 8);
  v10 = v20 - v9;
  sub_100012168(a1, v20 - v9, &qword_100024DC0, &qword_100017480);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100012848(v10, &qword_100024DC0, &qword_100017480);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = dispatch thunk of Actor.unownedExecutor.getter();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  sub_100003338(&qword_100024FF0, &qword_1000176D0);
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();
}

uint64_t sub_100008628(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100008648, 0, 0);
}

uint64_t sub_100008648()
{
  if (qword_100024D10 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  sub_10000EE30(v2, qword_1000252D0);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Canceling pending invites for group %@", v7, 0xCu);
    sub_100012848(v8, &qword_100024F60, &qword_100017650);
  }

  v10 = v0[2];

  v11 = [v10 groupID];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  sub_10000C1BC(v12, v14);
  v16 = v15;

  if (v16 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v18 = result;
    if (!result)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_16;
    }
  }

  if (v18 < 1)
  {
    __break(1u);
    return result;
  }

  v19 = 0;
  v20 = v0[3];
  v21 = OBJC_IVAR____TtC25keychainsharingmessagingd44KCSharingMessagingdInvitationManagerDelegate_manager;
  do
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v22 = *(v16 + 8 * v19 + 32);
    }

    v23 = v22;
    if ([v22 state] == 1)
    {
      [*(v20 + v21) cancelInvitation:v23 serverAcknowledgedBlock:0];
    }

    ++v19;
  }

  while (v18 != v19);
LABEL_16:

  v24 = v0[1];

  return v24();
}

uint64_t sub_1000088D8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1000088FC, 0, 0);
}

uint64_t sub_1000088FC()
{
  v52 = v0;
  v1 = *(v0 + 24);
  if (v1)
  {
    if (qword_100024D10 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 16);
    v3 = type metadata accessor for Logger();
    sub_10000EE30(v3, qword_1000252D0);

    v4 = v2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    v46 = v1;
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 16);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v51 = v10;
      *v8 = 136315394;
      v11 = Array.description.getter();
      v13 = sub_100014CFC(v11, v12, &v51);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2112;
      *(v8 + 14) = v7;
      *v9 = v7;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v5, v6, "Canceling pending invites for participants %s in group %@", v8, 0x16u);
      sub_100012848(v9, &qword_100024F60, &qword_100017650);

      sub_100013330(v10);
    }

    v15 = [*(v0 + 16) groupID];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    sub_10000C1BC(v16, v18);
    v20 = v19;

    v44 = v0;
    if (v20 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v22 = result;
      v23 = v46;
      if (result)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v23 = v46;
      if (v22)
      {
LABEL_8:
        if (v22 < 1)
        {
          __break(1u);
          return result;
        }

        v24 = 0;
        v49 = OBJC_IVAR____TtC25keychainsharingmessagingd44KCSharingMessagingdInvitationManagerDelegate_manager;
        v50 = *(v0 + 32);
        v25 = v20 & 0xC000000000000001;
        v26 = &KCSharingMessagingdXPCServer;
        v45 = v20;
        v48 = v20 & 0xC000000000000001;
        do
        {
          if (v25)
          {
            v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v27 = *(v20 + 8 * v24 + 32);
          }

          v28 = v27;
          if ([v27 v26[198].count] == 1)
          {
            v29 = [v28 destination];
            v30 = sub_1000058CC();
            swift_unknownObjectRelease();
            v31 = sub_100011430(v23, v30);

            if ((v31 & 1) == 0)
            {
              v32 = v28;
              v33 = Logger.logObject.getter();
              v34 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v33, v34))
              {
                v35 = swift_slowAlloc();
                v47 = swift_slowAlloc();
                v51 = v47;
                *v35 = 136315138;
                v36 = [v32 destination];
                sub_1000058CC();
                swift_unknownObjectRelease();
                v37 = Set.description.getter();
                v39 = v38;

                v40 = sub_100014CFC(v37, v39, &v51);
                v23 = v46;

                *(v35 + 4) = v40;
                _os_log_impl(&_mh_execute_header, v33, v34, "Canceling pending invite for %s", v35, 0xCu);
                sub_100013330(v47);

                v20 = v45;
              }

              [*(v50 + v49) cancelInvitation:v32 serverAcknowledgedBlock:0];
              v25 = v48;
              v26 = &KCSharingMessagingdXPCServer;
            }
          }

          ++v24;
        }

        while (v22 != v24);
      }
    }

    v43 = *(v44 + 8);

    return v43();
  }

  v41 = swift_task_alloc();
  *(v0 + 40) = v41;
  *v41 = v0;
  v41[1] = sub_100008E44;
  v42 = *(v0 + 16);

  return sub_100008628(v42);
}

uint64_t sub_100008E44()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100008F38(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  sub_100003338(&qword_100024F80, &qword_100017680);
  v3[12] = swift_task_alloc();
  v4 = type metadata accessor for KCSharingMessagingdInvitationManagerDelegate.InvitationPayload(0);
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_100009034, 0, 0);
}

uint64_t sub_100009034()
{
  v1 = [*(*(v0 + 88) + OBJC_IVAR____TtC25keychainsharingmessagingd44KCSharingMessagingdInvitationManagerDelegate_manager) receivedInvitations];
  sub_1000121D0(0, &qword_100024FA0, IDSReceivedInvitation_ptr);
  sub_100010D60(&qword_100024FA8, &qword_100024FA0, IDSReceivedInvitation_ptr);
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
  }

  else
  {
    v7 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v2 + 56);

    v5 = 0;
  }

  v34 = *(v0 + 120);
  v10 = (v4 + 64) >> 6;
  v37 = (*(v0 + 112) + 56);
  while ((v2 & 0x8000000000000000) == 0)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v13 >= v10)
        {
          goto LABEL_23;
        }

        v12 = *(v3 + 8 * v13);
        ++v11;
        if (v12)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      return withCheckedThrowingContinuation<A>(isolation:function:_:)();
    }

LABEL_13:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    *(v0 + 128) = v15;
    if (!v15)
    {
      goto LABEL_23;
    }

LABEL_17:
    v38 = v14;
    sub_10000C5B0(v15, *(v0 + 96));
    v17 = *(v0 + 120);
    v18 = *(v0 + 96);
    v35 = *(v0 + 72);
    v36 = *(v0 + 80);
    (*v37)(v18, 0, 1, *(v0 + 104));
    sub_100010DB8(v18, v17);
    v19 = *v17;
    v20 = *(v0 + 120);
    if (v19 == v35 && *(v34 + 8) == v36)
    {
      sub_100010E1C(*(v0 + 120));
LABEL_27:
      sub_100010DB0(v2);
      v27 = *(v0 + 88);

      sub_10001196C(_swiftEmptyArrayStorage);
      v28 = objc_allocWithZone(IDSDictionaryInvitationContext);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v30 = String._bridgeToObjectiveC()();
      v31 = [v28 initWithDictionary:isa schema:v30];
      *(v0 + 136) = v31;

      v32 = swift_task_alloc();
      *(v0 + 144) = v32;
      v32[2] = v27;
      v32[3] = v15;
      v32[4] = v31;
      v33 = swift_task_alloc();
      *(v0 + 152) = v33;
      *v33 = v0;
      v33[1] = sub_10000958C;

      return withCheckedThrowingContinuation<A>(isolation:function:_:)();
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_100010E1C(v20);
    if (v22)
    {
      goto LABEL_27;
    }

    v5 = v13;
    v6 = v38;
  }

  v16 = __CocoaSet.Iterator.next()();
  if (v16)
  {
    *(v0 + 64) = v16;
    swift_dynamicCast();
    v15 = *(v0 + 56);
    v13 = v5;
    v14 = v6;
    *(v0 + 128) = v15;
    if (v15)
    {
      goto LABEL_17;
    }
  }

LABEL_23:
  sub_100010DB0(v2);

  v23 = objc_allocWithZone(NSError);
  v24 = String._bridgeToObjectiveC()();
  [v23 initWithDomain:v24 code:8 userInfo:0];

  swift_willThrow();

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_10000958C()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_100009730;
  }

  else
  {

    v2 = sub_1000096A8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000096A8()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100009730()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1000097B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100003338(&qword_100024FC8, &qword_1000176A8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - v10;
  v12 = *(a2 + OBJC_IVAR____TtC25keychainsharingmessagingd44KCSharingMessagingdInvitationManagerDelegate_manager);
  (*(v9 + 16))(aBlock - v10, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v11, v8);
  aBlock[4] = sub_100011F5C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000998C;
  aBlock[3] = &unk_100020E38;
  v15 = _Block_copy(aBlock);

  [v12 acceptInvitation:a3 withContext:a4 serverAcknowledgedBlock:v15];
  _Block_release(v15);
}

void sub_10000998C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1000099F8(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  sub_100003338(&qword_100024F80, &qword_100017680);
  v3[12] = swift_task_alloc();
  v4 = type metadata accessor for KCSharingMessagingdInvitationManagerDelegate.InvitationPayload(0);
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_100009AF4, 0, 0);
}

uint64_t sub_100009AF4()
{
  v1 = [*(*(v0 + 88) + OBJC_IVAR____TtC25keychainsharingmessagingd44KCSharingMessagingdInvitationManagerDelegate_manager) receivedInvitations];
  sub_1000121D0(0, &qword_100024FA0, IDSReceivedInvitation_ptr);
  sub_100010D60(&qword_100024FA8, &qword_100024FA0, IDSReceivedInvitation_ptr);
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
  }

  else
  {
    v7 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v2 + 56);

    v5 = 0;
  }

  v28 = *(v0 + 120);
  v10 = (v4 + 64) >> 6;
  v31 = (*(v0 + 112) + 56);
  while ((v2 & 0x8000000000000000) == 0)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v13 >= v10)
        {
          goto LABEL_23;
        }

        v12 = *(v3 + 8 * v13);
        ++v11;
        if (v12)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      return withCheckedThrowingContinuation<A>(isolation:function:_:)();
    }

LABEL_13:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    *(v0 + 128) = v15;
    if (!v15)
    {
      goto LABEL_23;
    }

LABEL_17:
    v32 = v14;
    sub_10000C5B0(v15, *(v0 + 96));
    v17 = *(v0 + 120);
    v18 = *(v0 + 96);
    v29 = *(v0 + 72);
    v30 = *(v0 + 80);
    (*v31)(v18, 0, 1, *(v0 + 104));
    sub_100010DB8(v18, v17);
    v19 = *v17;
    v20 = *(v0 + 120);
    if (v19 == v29 && *(v28 + 8) == v30)
    {
      sub_100010E1C(*(v0 + 120));
LABEL_27:
      sub_100010DB0(v2);
      v25 = *(v0 + 88);

      v26 = swift_task_alloc();
      *(v0 + 136) = v26;
      *(v26 + 16) = v25;
      *(v26 + 24) = v15;
      v27 = swift_task_alloc();
      *(v0 + 144) = v27;
      *v27 = v0;
      v27[1] = sub_100009F54;

      return withCheckedThrowingContinuation<A>(isolation:function:_:)();
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_100010E1C(v20);
    if (v22)
    {
      goto LABEL_27;
    }

    v5 = v13;
    v6 = v32;
  }

  v16 = __CocoaSet.Iterator.next()();
  if (v16)
  {
    *(v0 + 64) = v16;
    swift_dynamicCast();
    v15 = *(v0 + 56);
    v13 = v5;
    v14 = v6;
    *(v0 + 128) = v15;
    if (v15)
    {
      goto LABEL_17;
    }
  }

LABEL_23:
  sub_100010DB0(v2);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_100009F54()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_10000A0E8;
  }

  else
  {

    v2 = sub_10000A070;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000A070()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000A0E8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10000A174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003338(&qword_100024FC8, &qword_1000176A8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - v8;
  v10 = *(a2 + OBJC_IVAR____TtC25keychainsharingmessagingd44KCSharingMessagingdInvitationManagerDelegate_manager);
  (*(v7 + 16))(aBlock - v8, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  aBlock[4] = sub_100013934;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000998C;
  aBlock[3] = &unk_100020DE8;
  v13 = _Block_copy(aBlock);

  [v10 declineInvitation:a3 serverAcknowledgedBlock:v13];
  _Block_release(v13);
}

uint64_t sub_10000A338(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    sub_100003338(&qword_100024FC8, &qword_1000176A8);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100003338(&qword_100024FC8, &qword_1000176A8);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10000A3AC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_10000A43C;

  return sub_10000B018();
}

uint64_t sub_10000A43C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 40) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_10000A570, 0, 0);
  }
}

uint64_t sub_10000A570()
{
  v1 = v0[5];
  if (v1 >> 62)
  {
    goto LABEL_24;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0[5]; v2; i = v0[5])
  {
    v4 = 0;
    v18 = v1 & 0xFFFFFFFFFFFFFF8;
    v19 = v1 & 0xC000000000000001;
    v17 = i + 32;
    while (1)
    {
      if (v19)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v18 + 16))
        {
          goto LABEL_23;
        }

        v5 = *(v17 + 8 * v4);
      }

      v1 = v5;
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v7 = v0[2];
      v8 = v0[3];
      v9 = [v5 groupID];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      if (v10 == v7 && v12 == v8)
      {

        goto LABEL_19;
      }

      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v14)
      {

        goto LABEL_19;
      }

      ++v4;
      if (v6 == v2)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

LABEL_18:

  v1 = 0;
LABEL_19:
  v15 = v0[1];

  return v15(v1);
}

uint64_t sub_10000A730(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v41 = a3;
  v9 = sub_100003338(&qword_100024DC0, &qword_100017480);
  __chkstk_darwin(v9 - 8);
  v11 = &v38 - v10;
  v12 = type metadata accessor for UUID();
  v42 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100024D10 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000EE30(v15, qword_1000252D0);
  v16 = a1;

  v17 = a2;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v40 = v5;
    v21 = v20;
    v22 = swift_slowAlloc();
    v38 = v12;
    v23 = v22;
    v39 = swift_slowAlloc();
    v43 = v39;
    *v21 = 136315906;
    *(v21 + 4) = sub_100014CFC(v41, a4, &v43);
    *(v21 + 12) = 2112;
    *(v21 + 14) = v16;
    *(v21 + 22) = 2112;
    *(v21 + 24) = v17;
    *v23 = v16;
    v23[1] = v17;
    *(v21 + 32) = 2080;
    v24 = v16;
    v25 = v17;
    v26 = [v24 uniqueID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10000F184(&qword_100024F68, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v27 = v38;
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    (*(v42 + 8))(v14, v27);
    v31 = sub_100014CFC(v28, v30, &v43);

    *(v21 + 34) = v31;
    _os_log_impl(&_mh_execute_header, v18, v19, "Found duplicate invite for %s:\n%@\n%@, will decline %s", v21, 0x2Au);
    sub_100003338(&qword_100024F60, &qword_100017650);
    swift_arrayDestroy();

    swift_arrayDestroy();

    v5 = v40;
  }

  v32 = os_transaction_create();
  static TaskPriority.background.getter();
  v33 = type metadata accessor for TaskPriority();
  (*(*(v33 - 8) + 56))(v11, 0, 1, v33);
  v34 = swift_allocObject();
  v34[2] = 0;
  v34[3] = 0;
  v34[4] = v32;
  v34[5] = v16;
  v34[6] = v5;
  v35 = v16;
  swift_unknownObjectRetain();
  v36 = v5;
  sub_10000AD58(0, 0, v11, &unk_1000176A0, v34);
  swift_unknownObjectRelease();

  return sub_100012848(v11, &qword_100024DC0, &qword_100017480);
}

uint64_t sub_10000AB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  return _swift_task_switch(sub_10000ABB8, 0, 0);
}

uint64_t sub_10000ABB8()
{
  if (qword_100024D10 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  sub_10000EE30(v2, qword_1000252D0);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Declining duplicate invite %@", v7, 0xCu);
    sub_100012848(v8, &qword_100024F60, &qword_100017650);
  }

  v10 = v0[2];
  v11 = v0[3];

  [*(v11 + OBJC_IVAR____TtC25keychainsharingmessagingd44KCSharingMessagingdInvitationManagerDelegate_manager) declineInvitation:v10 serverAcknowledgedBlock:0];
  v12 = v0[1];

  return v12();
}

uint64_t sub_10000AD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003338(&qword_100024DC0, &qword_100017480);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100012168(a3, v25 - v10, &qword_100024DC0, &qword_100017480);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100012848(v11, &qword_100024DC0, &qword_100017480);
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

uint64_t sub_10000B018()
{
  v1[2] = v0;
  v2 = type metadata accessor for Date();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_10000B0E4, 0, 0);
}

uint64_t sub_10000B0E4()
{
  if (qword_100024D10 != -1)
  {
LABEL_34:
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000EE30(v1, qword_1000252D0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "fetching all received invites", v4, 2u);
  }

  v5 = *(v0 + 16);

  v6 = [*&v5[OBJC_IVAR____TtC25keychainsharingmessagingd44KCSharingMessagingdInvitationManagerDelegate_manager] receivedInvitations];
  sub_1000121D0(0, &qword_100024FA0, IDSReceivedInvitation_ptr);
  sub_100010D60(&qword_100024FA8, &qword_100024FA0, IDSReceivedInvitation_ptr);
  v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = v5;
  sub_100011AA8(v7);
  v10 = v9;

  v64 = v0;
  v67 = *(v10 + 16);
  if (v67)
  {
    v11 = *(v0 + 32);
    v0 = 0;
    v66 = v10 + 32;
    v62 = (v11 + 8);
    v63 = v10;
    do
    {
      if (v0 >= *(v10 + 16))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v68 = *(v66 + 16 * v0);
      v16 = v68;
      v17 = *(&v68 + 1);
      v18 = [v17 groupID];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      if (_swiftEmptyDictionarySingleton[2])
      {
        v22 = sub_10000FE50(v19, v21);
        v24 = v23;

        if ((v24 & 1) == 0)
        {
          goto LABEL_14;
        }

        v25 = v64[5];
        v26 = v64[6];
        v27 = v64[3];
        v28 = _swiftEmptyDictionarySingleton[7] + 16 * v22;
        v29 = *(v28 + 8);
        v65 = *v28;
        v30 = v29;
        v31 = [v17 sentTime];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v32 = [v30 sentTime];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10000F184(&qword_100024FB0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        LOBYTE(v32) = dispatch thunk of static Comparable.< infix(_:_:)();
        v33 = *v62;
        (*v62)(v25, v27);
        v33(v26, v27);
        v34 = [v17 groupID];
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;

        if ((v32 & 1) == 0)
        {
          sub_10000A730(v16, v65, v35, v37);

          v10 = v63;
          goto LABEL_7;
        }

        sub_10000A730(v65, v16, v35, v37);

        v10 = v63;
      }

LABEL_14:
      v38 = [v17 groupID];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42 = v16;
      v43 = v17;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = sub_10000FE50(v39, v41);
      v47 = _swiftEmptyDictionarySingleton[2];
      v48 = (v46 & 1) == 0;
      v49 = __OFADD__(v47, v48);
      v50 = v47 + v48;
      if (v49)
      {
        goto LABEL_32;
      }

      v51 = v46;
      if (_swiftEmptyDictionarySingleton[3] < v50)
      {
        sub_10001011C(v50, isUniquelyReferenced_nonNull_native);
        v45 = sub_10000FE50(v39, v41);
        if ((v51 & 1) != (v52 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

LABEL_19:
        if (v51)
        {
          goto LABEL_6;
        }

        goto LABEL_20;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_19;
      }

      v56 = v0;
      v57 = v10;
      v58 = v45;
      sub_100010F94();
      v45 = v58;
      v10 = v57;
      v0 = v56;
      if (v51)
      {
LABEL_6:
        v12 = v45;

        v13 = _swiftEmptyDictionarySingleton[7] + 16 * v12;
        v14 = *v13;
        v15 = *(v13 + 8);
        *v13 = v68;

        goto LABEL_7;
      }

LABEL_20:
      _swiftEmptyDictionarySingleton[(v45 >> 6) + 8] |= 1 << v45;
      v53 = (_swiftEmptyDictionarySingleton[6] + 16 * v45);
      *v53 = v39;
      v53[1] = v41;
      *(_swiftEmptyDictionarySingleton[7] + 16 * v45) = v68;

      v54 = _swiftEmptyDictionarySingleton[2];
      v49 = __OFADD__(v54, 1);
      v55 = v54 + 1;
      if (v49)
      {
        goto LABEL_33;
      }

      _swiftEmptyDictionarySingleton[2] = v55;
LABEL_7:
      ++v0;
    }

    while (v67 != v0);
  }

  v59 = sub_10000B71C(_swiftEmptyDictionarySingleton);

  v60 = v64[1];

  return v60(v59);
}

void *sub_10000B71C(uint64_t a1)
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
      v10 = *(*(v1 + 56) + 16 * v5 + 8);
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
            result = sub_100011D70(v5, v7, 0);
            v8 = __clz(__rbit64(v16)) + v13;
            goto LABEL_4;
          }
        }

        result = sub_100011D70(v5, v7, 0);
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

void sub_10000B934(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v78 = v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for KCSharingMessagingdInvitationManagerDelegate.InvitationPayload(0);
  __chkstk_darwin(v9);
  v11 = v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100024D10 != -1)
  {
LABEL_32:
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = sub_10000EE30(v12, qword_1000252D0);
  v14 = a1;
  v79 = v13;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v81 = v4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v80 = v7;
    v20 = v6;
    v21 = v3;
    v22 = v9;
    v23 = v19;
    *v18 = 138412290;
    *(v18 + 4) = v14;
    *v19 = v14;
    v24 = v14;
    _os_log_impl(&_mh_execute_header, v15, v16, "creating KCSharingGroup object from invite %@", v18, 0xCu);
    sub_100012848(v23, &qword_100024F60, &qword_100017650);
    v9 = v22;
    v3 = v21;
    v6 = v20;
    v7 = v80;

    v4 = v81;
  }

  sub_10000C5B0(v14, v11);
  if (!v3)
  {
    v80 = v7;
    v81 = v4;
    v74 = v9;
    v75 = v6;
    v73[1] = 0;
    v25 = &v11[*(v9 + 28)];
    v7 = v25[1];
    v85 = *v25;
    v76 = *&v4[OBJC_IVAR____TtC25keychainsharingmessagingd44KCSharingMessagingdInvitationManagerDelegate_manager];
    v77 = v11;
    v26 = [v76 internal];
    v27 = [v26 aliases];

    if (v27)
    {
      a1 = &type metadata for String;
      v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v4 = v11 + 56;
      v28 = 1 << v11[32];
      v29 = -1;
      if (v28 < 64)
      {
        v29 = ~(-1 << v28);
      }

      v6 = v29 & *(v11 + 7);
      v9 = (v28 + 63) >> 6;

      v3 = 0;
      do
      {
        if (!v6)
        {
          while (1)
          {
            v30 = v3 + 1;
            if (__OFADD__(v3, 1))
            {
              __break(1u);
              goto LABEL_32;
            }

            if (v30 >= v9)
            {
              break;
            }

            v6 = *&v4[8 * v30];
            ++v3;
            if (v6)
            {
              v3 = v30;
              goto LABEL_15;
            }
          }

          v47 = v81;
          v48 = Logger.logObject.getter();
          v49 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            v84[0] = swift_slowAlloc();
            *v50 = 136315394;
            v51 = sub_100014CFC(v85, v7, v84);

            *(v50 + 4) = v51;
            *(v50 + 12) = 2080;
            v52 = [v76 internal];
            v53 = [v52 aliases];

            if (!v53)
            {
              goto LABEL_34;
            }

            static Set._unconditionallyBridgeFromObjectiveC(_:)();

            v54 = Set.description.getter();
            v56 = v55;

            v57 = sub_100014CFC(v54, v56, v84);

            *(v50 + 14) = v57;
            _os_log_impl(&_mh_execute_header, v48, v49, "received invitee handle %s is not a valid alias for this account. all aliases: %s", v50, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v58 = objc_allocWithZone(NSError);
          v59 = String._bridgeToObjectiveC()();
          [v58 initWithDomain:v59 code:6 userInfo:0];

          swift_willThrow();
          sub_100010E1C(v77);
          return;
        }

        v30 = v3;
LABEL_15:
        v31 = (*(v11 + 6) + ((v30 << 10) | (16 * __clz(__rbit64(v6)))));
        v33 = *v31;
        v32 = v31[1];
        v6 &= v6 - 1;
        v84[0] = v33;
        v84[1] = v32;
        v82 = v85;
        v83 = v7;
        sub_100010E78();
      }

      while ((StringProtocol.contains<A>(_:)() & 1) == 0);

      v34 = v74;
      (*(v80 + 16))(v78, &v77[*(v74 + 20)], v75);
      v35 = [v14 fromID];
      if (!v35)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = String._bridgeToObjectiveC()();
      }

      v36 = [v35 _stripFZIDPrefix];

      if (v36)
      {
        v37 = &v77[*(v34 + 36)];
        v38 = *(v37 + 1);
        v76 = *v37;
        v81 = String._bridgeToObjectiveC()();
        URL._bridgeToObjectiveC()(v39);
        v41 = v40;
        v42 = String._bridgeToObjectiveC()();
        v43.super.isa = Data._bridgeToObjectiveC()().super.isa;
        v44 = v77;
        v45.super.isa = Date._bridgeToObjectiveC()().super.isa;
        if (v38)
        {
          v46 = String._bridgeToObjectiveC()();
        }

        else
        {
          v46 = 0;
        }

        v60 = objc_allocWithZone(KCSharingGroupInvite);
        v61 = v81;
        v62 = [v60 initWithGroupID:v81 shareURL:v41 senderHandle:v36 inviteeHandle:v42 inviteToken:v43.super.isa sentTime:v45.super.isa displayName:v46];

        (*(v80 + 8))(v78, v75);
        v63 = v62;
        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v84[0] = v67;
          *v66 = 136315138;
          v68 = [v63 groupID];
          v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v71 = v70;

          v72 = sub_100014CFC(v69, v71, v84);

          *(v66 + 4) = v72;
          _os_log_impl(&_mh_execute_header, v64, v65, "Created group invite for %s", v66, 0xCu);
          sub_100013330(v67);
          v44 = v77;
        }

        sub_100010E1C(v44);
        return;
      }
    }

    else
    {
      __break(1u);
LABEL_34:
      __break(1u);
    }

    __break(1u);
  }
}

void sub_10000C1BC(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v29 = a1;
  v3 = sub_100003338(&qword_100024F80, &qword_100017680);
  __chkstk_darwin(v3 - 8);
  v33 = v27 - v4;
  v32 = type metadata accessor for KCSharingMessagingdInvitationManagerDelegate.InvitationPayload(0);
  v5 = *(v32 - 8);
  __chkstk_darwin(v32);
  v30 = (v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = v2;
  v7 = [*(v2 + OBJC_IVAR____TtC25keychainsharingmessagingd44KCSharingMessagingdInvitationManagerDelegate_manager) pendingInvitations];
  v8 = sub_1000121D0(0, &qword_100024F88, IDSSentInvitation_ptr);
  sub_100010D60(&qword_100024F90, &qword_100024F88, IDSSentInvitation_ptr);
  v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v37 = _swiftEmptyArrayStorage;
  v27[1] = v8;
  if ((v9 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v9 = v38;
    v10 = v39;
    v11 = v40;
    v12 = v41;
    v13 = v42;
  }

  else
  {
    v12 = 0;
    v14 = -1 << *(v9 + 32);
    v10 = v9 + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(v9 + 56);
  }

  v27[0] = v11;
  v17 = (v11 + 64) >> 6;
  v31 = (v5 + 56);
  while (v9 < 0)
  {
    v23 = __CocoaSet.Iterator.next()();
    if (!v23 || (v35 = v23, swift_dynamicCast(), v22 = v36, v20 = v12, v21 = v13, !v36))
    {
LABEL_24:
      sub_100010DB0(v9);
      return;
    }

LABEL_18:
    v24 = v33;
    sub_10000C5B0(v22, v33);
    (*v31)(v24, 0, 1, v32);
    v25 = v30;
    sub_100010DB8(v24, v30);
    if (*v25 == v29 && v25[1] == v28)
    {
      sub_100010E1C(v30);
LABEL_22:
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      goto LABEL_8;
    }

    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_100010E1C(v30);
    if (v26)
    {
      goto LABEL_22;
    }

LABEL_8:
    v12 = v20;
    v13 = v21;
  }

  v18 = v12;
  v19 = v13;
  v20 = v12;
  if (v13)
  {
LABEL_14:
    v21 = (v19 - 1) & v19;
    v22 = *(*(v9 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v22)
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
      goto LABEL_24;
    }

    v19 = *(v10 + 8 * v20);
    ++v18;
    if (v19)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_10000C5B0@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = v2;
  v7 = sub_100003338(&qword_100024DC0, &qword_100017480);
  __chkstk_darwin(v7 - 8);
  v9 = &v37 - v8;
  v10 = [a1 context];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = [v11 dictionary];
    v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10000CAA0(v13, a2);
    if (v3)
    {
      if (qword_100024D10 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_10000EE30(v14, qword_1000252D0);
      v15 = a1;
      swift_errorRetain();
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v40 = v10;
        v19 = v18;
        v20 = swift_slowAlloc();
        v38 = v20;
        v39 = swift_slowAlloc();
        v41 = v39;
        *v19 = 138412546;
        *(v19 + 4) = v15;
        *v20 = v15;
        *(v19 + 12) = 2080;
        swift_getErrorValue();
        HIDWORD(v37) = v17;
        v21 = v15;
        v22 = Error.localizedDescription.getter();
        v24 = sub_100014CFC(v22, v23, &v41);

        *(v19 + 14) = v24;
        _os_log_impl(&_mh_execute_header, v16, BYTE4(v37), "Failed to extract payload for invitation %@: %s", v19, 0x16u);
        sub_100012848(v38, &qword_100024F60, &qword_100017650);

        sub_100013330(v39);
      }

      v25 = os_transaction_create();
      static TaskPriority.background.getter();
      v26 = type metadata accessor for TaskPriority();
      (*(*(v26 - 8) + 56))(v9, 0, 1, v26);
      v27 = swift_allocObject();
      v27[2] = 0;
      v27[3] = 0;
      v27[4] = v25;
      v27[5] = v15;
      v27[6] = v4;
      v28 = v15;
      swift_unknownObjectRetain();
      v29 = v4;
      sub_10000AD58(0, 0, v9, &unk_100017648, v27);

      sub_100012848(v9, &qword_100024DC0, &qword_100017480);
      swift_willThrow();
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    if (qword_100024D10 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000EE30(v30, qword_1000252D0);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "early return failed cast", v33, 2u);
    }

    v34 = objc_allocWithZone(NSError);
    v35 = String._bridgeToObjectiveC()();
    [v34 initWithDomain:v35 code:9 userInfo:0];

    return swift_willThrow();
  }
}

uint64_t sub_10000CAA0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v97 = a2;
  v3 = sub_100003338(&qword_100024F70, &qword_100017670);
  __chkstk_darwin(v3 - 8);
  v5 = &v83 - v4;
  v6 = type metadata accessor for Date();
  v101 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v83 - v10;
  v12 = sub_100003338(&qword_100024F78, &qword_100017678);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v83 - v16;
  v18 = type metadata accessor for URL();
  v19 = __chkstk_darwin(v18);
  v21 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  if (!*(a1 + 16) || (v94 = &v83 - v23, v95 = v24, v96 = v22, v25 = sub_10000FE50(0x444970756F7267, 0xE700000000000000), (v26 & 1) == 0) || (sub_10000FEC8(*(a1 + 56) + 32 * v25, v100), (swift_dynamicCast() & 1) == 0))
  {

    if (qword_100024D10 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_10000EE30(v31, qword_1000252D0);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Invitation lacks GroupID", v34, 2u);
    }

    v35 = objc_allocWithZone(NSError);
    v36 = String._bridgeToObjectiveC()();
    [v35 initWithDomain:v36 code:2 userInfo:0];
    goto LABEL_14;
  }

  v92 = v6;
  if (!*(a1 + 16) || (v93 = v99, v27 = v98, v28 = sub_10000FE50(0x4C52556572616873, 0xE800000000000000), (v29 & 1) == 0) || (sub_10000FEC8(*(a1 + 56) + 32 * v28, v100), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_16;
  }

  v91 = v27;

  URL.init(string:)();
  swift_bridgeObjectRelease_n();
  sub_10000FF24(v15, v17);
  v30 = v95;
  if ((*(v95 + 48))(v17, 1, v96) == 1)
  {

    sub_100012848(v17, &qword_100024F78, &qword_100017678);
LABEL_16:
    if (qword_100024D10 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_10000EE30(v38, qword_1000252D0);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Invitation lacks ShareURL", v41, 2u);
    }

    v42 = objc_allocWithZone(NSError);
    v36 = String._bridgeToObjectiveC()();
    [v42 initWithDomain:v36 code:3 userInfo:0];
LABEL_14:

    return swift_willThrow();
  }

  v90 = *(v30 + 32);
  v90(v94, v17, v96);
  if (!*(a1 + 16) || (v43 = sub_10000FE50(0x6974617469766E69, 0xEF6E656B6F546E6FLL), (v44 & 1) == 0) || (sub_10000FEC8(*(a1 + 56) + 32 * v43, v100), (swift_dynamicCast() & 1) == 0))
  {

    if (qword_100024D10 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_10000EE30(v53, qword_1000252D0);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "Invitation lacks invitation data", v56, 2u);
    }

    v57 = objc_allocWithZone(NSError);
    v58 = String._bridgeToObjectiveC()();
    [v57 initWithDomain:v58 code:4 userInfo:0];

    swift_willThrow();
    return (*(v95 + 8))(v94, v96);
  }

  v45 = v99;
  v89 = v98;
  if (!*(a1 + 16) || (v46 = sub_10000FE50(0x4865657469766E69, 0xED0000656C646E61), (v47 & 1) == 0) || (sub_10000FEC8(*(a1 + 56) + 32 * v46, v100), (swift_dynamicCast() & 1) == 0))
  {

    if (qword_100024D10 != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    sub_10000EE30(v59, qword_1000252D0);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "Invitation lacks inviteeHandle", v62, 2u);
    }

    v63 = objc_allocWithZone(NSError);
    v64 = String._bridgeToObjectiveC()();
    [v63 initWithDomain:v64 code:5 userInfo:0];
    goto LABEL_42;
  }

  v88 = v99;
  if (!*(a1 + 16) || (v87 = v98, v48 = sub_10000FE50(0x656D6954746E6573, 0xE800000000000000), (v49 & 1) == 0))
  {

    (*(v101 + 56))(v5, 1, 1, v92);
    goto LABEL_44;
  }

  v86 = v45;
  sub_10000FEC8(*(a1 + 56) + 32 * v48, v100);
  v50 = v92;
  v51 = swift_dynamicCast();
  v52 = v101;
  (*(v101 + 56))(v5, v51 ^ 1u, 1, v50);
  if ((*(v52 + 48))(v5, 1, v50) == 1)
  {

    v45 = v86;
LABEL_44:
    sub_100012848(v5, &qword_100024F70, &qword_100017670);
    if (qword_100024D10 != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    sub_10000EE30(v65, qword_1000252D0);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, v66, v67, "Invitation lacks sentTime", v68, 2u);
    }

    v69 = objc_allocWithZone(NSError);
    v64 = String._bridgeToObjectiveC()();
    [v69 initWithDomain:v64 code:7 userInfo:0];
LABEL_42:

    swift_willThrow();
    sub_10000FF94(v89, v45);
    return (*(v95 + 8))(v94, v96);
  }

  v84 = *(v52 + 32);
  v85 = v52 + 32;
  v84(v11, v5, v50);
  (*(v95 + 16))(v21, v94, v96);
  (*(v52 + 16))(v9, v11, v50);
  if (*(a1 + 16) && (v70 = sub_10000FE50(0x6D614E70756F7267, 0xE900000000000065), (v71 & 1) != 0))
  {
    sub_10000FEC8(*(a1 + 56) + 32 * v70, v100);
    (*(v101 + 8))(v11, v92);
    (*(v95 + 8))(v94, v96);

    v72 = swift_dynamicCast();
    if (v72)
    {
      v73 = v98;
    }

    else
    {
      v73 = 0;
    }

    if (v72)
    {
      v74 = v99;
    }

    else
    {
      v74 = 0;
    }
  }

  else
  {

    (*(v101 + 8))(v11, v92);
    (*(v95 + 8))(v94, v96);
    v73 = 0;
    v74 = 0;
  }

  v75 = v97;
  v76 = v93;
  *v97 = v91;
  *(v75 + 1) = v76;
  v77 = type metadata accessor for KCSharingMessagingdInvitationManagerDelegate.InvitationPayload(0);
  v90(&v75[v77[5]], v21, v96);
  v78 = &v75[v77[6]];
  v80 = v86;
  v79 = v87;
  *v78 = v89;
  *(v78 + 1) = v80;
  v81 = &v75[v77[7]];
  *v81 = v79;
  *(v81 + 1) = v88;
  result = (v84)(&v75[v77[8]], v9, v92);
  v82 = &v75[v77[9]];
  *v82 = v73;
  v82[1] = v74;
  return result;
}

uint64_t sub_10000D7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = type metadata accessor for UUID();
  v6[4] = v7;
  v6[5] = *(v7 - 8);
  v6[6] = swift_task_alloc();

  return _swift_task_switch(sub_10000D8B0, 0, 0);
}

uint64_t sub_10000D8B0()
{
  v47 = v0;
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = qword_100024D10;
    v4 = *(v0 + 16);
    if (v3 == -1)
    {
      v5 = v4;
    }

    else
    {
      swift_once();
      v5 = *(v0 + 16);
    }

    v6 = type metadata accessor for Logger();
    sub_10000EE30(v6, qword_1000252D0);
    v7 = v5;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 40);
      v11 = *(v0 + 48);
      v12 = *(v0 + 32);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v46 = v14;
      *v13 = 136315138;
      v44 = v2;
      v15 = [v2 uniqueID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000F184(&qword_100024F68, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v10 + 8))(v11, v12);
      v19 = v16;
      v2 = v44;
      v20 = sub_100014CFC(v19, v18, &v46);

      *(v13 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v8, v9, "Auto-declining received invite for which we can't extract the payload: %s", v13, 0xCu);
      sub_100013330(v14);
    }

    v21 = &selRef_declineInvitation_serverAcknowledgedBlock_;
  }

  else
  {
    objc_opt_self();
    v22 = swift_dynamicCastObjCClass();
    if (!v22)
    {
      goto LABEL_14;
    }

    v2 = v22;
    v23 = qword_100024D10;
    v24 = *(v0 + 16);
    if (v23 == -1)
    {
      v25 = v24;
    }

    else
    {
      swift_once();
      v25 = *(v0 + 16);
    }

    v26 = type metadata accessor for Logger();
    sub_10000EE30(v26, qword_1000252D0);
    v27 = v25;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = *(v0 + 40);
      v31 = *(v0 + 48);
      v32 = *(v0 + 32);
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v46 = v34;
      *v33 = 136315138;
      v45 = v2;
      v35 = [v2 uniqueID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000F184(&qword_100024F68, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      (*(v30 + 8))(v31, v32);
      v39 = v36;
      v2 = v45;
      v40 = sub_100014CFC(v39, v38, &v46);

      *(v33 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v28, v29, "Auto-canceling sent invite for which we can't extract the payload: %s", v33, 0xCu);
      sub_100013330(v34);
    }

    v21 = &selRef_cancelInvitation_serverAcknowledgedBlock_;
  }

  v41 = *(v0 + 16);
  [*(*(v0 + 24) + OBJC_IVAR____TtC25keychainsharingmessagingd44KCSharingMessagingdInvitationManagerDelegate_manager) *v21];

LABEL_14:

  v42 = *(v0 + 8);

  return v42();
}

id sub_10000DF0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KCSharingMessagingdInvitationManagerDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10000DFD4()
{
  result = qword_100024EF0;
  if (!qword_100024EF0)
  {
    sub_10000E038(&qword_100024EE8, &qword_100017990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024EF0);
  }

  return result;
}

uint64_t sub_10000E038(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000E080()
{
  _StringGuts.grow(_:)(17);
  v1 = *v0;

  v2._countAndFlagsBits = 32;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3 = type metadata accessor for KCSharingMessagingdInvitationManagerDelegate.InvitationPayload(0);
  type metadata accessor for URL();
  sub_10000F184(&qword_100025138, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 32;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = Data.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 32;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  String.append(_:)(*(v0 + *(v3 + 28)));
  v8._countAndFlagsBits = 32;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  type metadata accessor for Date();
  sub_10000F184(&qword_100025140, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 32;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  v11 = (v0 + *(v3 + 36));
  if (v11[1])
  {
    v12 = *v11;
    v13 = v11[1];
  }

  else
  {
    v13 = 0xE90000000000003ELL;
    v12 = 0x656D616E206F6E3CLL;
  }

  v14._countAndFlagsBits = v12;
  v14._object = v13;
  String.append(_:)(v14);

  return v1;
}

Swift::Int sub_10000E2AC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10000E320(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10000E364()
{
  v1 = *v0;
  v2 = 0x444970756F7267;
  v3 = 0x4865657469766E69;
  v4 = 0x656D6954746E6573;
  if (v1 != 4)
  {
    v4 = 0x4E79616C70736964;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x4C52556572616873;
  if (v1 != 1)
  {
    v5 = 0x6974617469766E69;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10000E440@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100013704(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10000E480(uint64_t a1)
{
  v2 = sub_1000132DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000E4BC(uint64_t a1)
{
  v2 = sub_1000132DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000E4F8(void *a1)
{
  v3 = v1;
  v5 = sub_100003338(&qword_100025118, &qword_100017818);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-v7];
  sub_100013298(a1, a1[3]);
  sub_1000132DC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for KCSharingMessagingdInvitationManagerDelegate.InvitationPayload(0);
    LOBYTE(v14) = 1;
    type metadata accessor for URL();
    sub_10000F184(&qword_100025120, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = (v3 + *(v9 + 24));
    v11 = v10[1];
    v14 = *v10;
    v15 = v11;
    v13[15] = 2;
    sub_100012564(v14, v11);
    sub_100013434();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10000FF94(v14, v15);
    LOBYTE(v14) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 4;
    type metadata accessor for Date();
    sub_10000F184(&qword_100025130, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10000E7DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = type metadata accessor for Date();
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v38 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003338(&qword_1000250F0, &qword_100017810);
  v39 = *(v9 - 8);
  v40 = v9;
  __chkstk_darwin(v9);
  v11 = v33 - v10;
  v12 = type metadata accessor for KCSharingMessagingdInvitationManagerDelegate.InvitationPayload(0);
  __chkstk_darwin(v12);
  v14 = (v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[3];
  v43 = a1;
  sub_100013298(a1, v15);
  sub_1000132DC();
  v41 = v11;
  v16 = v42;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    return sub_100013330(v43);
  }

  v34 = v5;
  v17 = v39;
  v18 = v40;
  v42 = v6;
  LOBYTE(v44) = 0;
  *v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v14[1] = v19;
  LOBYTE(v44) = 1;
  sub_10000F184(&qword_100025100, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v20 = v42;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v38 + 32))(v14 + v12[5], v8, v20);
  v45 = 2;
  sub_10001337C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v14 + v12[6]) = v44;
  LOBYTE(v44) = 3;
  v33[1] = 0;
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  v22 = v37;
  v23 = v12;
  v24 = (v14 + v12[7]);
  *v24 = v21;
  v24[1] = v25;
  LOBYTE(v44) = 4;
  sub_10000F184(&qword_100025110, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v26 = v22;
  v27 = v34;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v36 + 32))(v14 + v23[8], v27, v26);
  LOBYTE(v44) = 5;
  v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v30 = v29;
  (*(v17 + 8))(v41, v18);
  v31 = (v14 + v23[9]);
  *v31 = v28;
  v31[1] = v30;
  sub_1000133D0(v14, v35);
  sub_100013330(v43);
  return sub_100010E1C(v14);
}

uint64_t sub_10000EE30(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

char *sub_10000EE68(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003338(&qword_100024FE8, &qword_1000176C8);
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

char *sub_10000EF74(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003338(&qword_100024FC0, &qword_100017690);
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

uint64_t sub_10000F084(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100003700;

  return sub_10000D7F0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10000F14C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000F184(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000F1CC(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
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

    sub_10000F57C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int sub_10000F31C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003338(&qword_100024FE0, &qword_1000176C0);
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

Swift::Int sub_10000F57C(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10000F31C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10000F6FC();
      goto LABEL_16;
    }

    sub_10000F858(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_10000F6FC()
{
  v1 = v0;
  sub_100003338(&qword_100024FE0, &qword_1000176C0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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

  return result;
}

Swift::Int sub_10000F858(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003338(&qword_100024FE0, &qword_1000176C0);
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

uint64_t sub_10000FA90@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_10000FCC0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_100012344(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_10000FF94(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_10000FA90(v13, a3, a4, &v12);
  v10 = v4;
  sub_10000FF94(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

unint64_t sub_10000FE50(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100010CA8(a1, a2, v4);
}

uint64_t sub_10000FEC8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000FF24(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003338(&qword_100024F78, &qword_100017678);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000FF94(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t type metadata accessor for KCSharingMessagingdInvitationManagerDelegate.InvitationPayload(uint64_t a1)
{
  result = qword_1000250A0;
  if (!qword_1000250A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100010034(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100010ECC(a1, v4);
}

double sub_100010078@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_10000FE50(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100011120();
      v10 = v12;
    }

    sub_100011FD0((*(v10 + 56) + 32 * v8), a3);
    sub_10001093C(v8, v10);
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

Swift::Int sub_10001011C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003338(&qword_100024FB8, &qword_100017688);
  v35 = v4;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v36 = *(*(v5 + 56) + v21);
      if ((v35 & 1) == 0)
      {

        v25 = v36;
        v26 = *(&v36 + 1);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v36;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_1000103E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003338(&qword_100025018, &qword_100017700);
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
        sub_100011FD0(v24, v34);
      }

      else
      {
        sub_10000FEC8(v24, v34);
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
      result = sub_100011FD0(v34, (*(v7 + 56) + 32 * v15));
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

Swift::Int sub_100010698(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003338(&qword_100025040, &qword_100017740);
  v35 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10001093C(uint64_t result, uint64_t a2)
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

_OWORD *sub_100010AEC(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000FE50(a2, a3);
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
      sub_100011120();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1000103E0(v16, a4 & 1);
    v11 = sub_10000FE50(a2, a3);
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
    sub_100013330(v22);

    return sub_100011FD0(a1, v22);
  }

  else
  {
    sub_100010C3C(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_100010C3C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100011FD0(a4, (a5[7] + 32 * a1));
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

unint64_t sub_100010CA8(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_100010D60(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000121D0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100010DB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KCSharingMessagingdInvitationManagerDelegate.InvitationPayload(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100010E1C(uint64_t a1)
{
  v2 = type metadata accessor for KCSharingMessagingdInvitationManagerDelegate.InvitationPayload(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100010E78()
{
  result = qword_100024F98;
  if (!qword_100024F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024F98);
  }

  return result;
}

unint64_t sub_100010ECC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100011FE0(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10001203C(v8);
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

id sub_100010F94()
{
  v1 = v0;
  sub_100003338(&qword_100024FB8, &qword_100017688);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v23 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v23;

        v22 = v23;
        result = *(&v23 + 1);
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

void *sub_100011120()
{
  v1 = v0;
  sub_100003338(&qword_100025018, &qword_100017700);
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
        sub_10000FEC8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100011FD0(v25, (*(v4 + 56) + v22));
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

id sub_1000112C4()
{
  v1 = v0;
  sub_100003338(&qword_100025040, &qword_100017740);
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

uint64_t sub_100011430(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  while (1)
  {
    if (!*(a2 + 16))
    {
      goto LABEL_5;
    }

    v7 = (v5 + 16 * v4);
    v9 = *v7;
    v8 = v7[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v10 = Hasher._finalize()();
    v11 = -1 << *(a2 + 32);
    v12 = v10 & ~v11;
    if ((*(v6 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
    {
      break;
    }

LABEL_4:

LABEL_5:
    if (++v4 == v2)
    {
      return 1;
    }
  }

  v13 = ~v11;
  while (1)
  {
    v14 = (*(a2 + 48) + 16 * v12);
    v15 = *v14 == v9 && v14[1] == v8;
    if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v6 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  return 0;
}

uint64_t sub_10001157C(uint64_t a1, int *a2)
{
  *(v2 + 40) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  *v3 = v2;
  v3[1] = sub_100011670;

  return v5(v2 + 16);
}

uint64_t sub_100011670()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *v0;

  v4 = *(v1 + 32);
  *v2 = *(v1 + 16);
  *(v2 + 16) = v4;
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_1000117A4(uint64_t a1)
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

      sub_10000F1CC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_10001183C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003338(&qword_100025018, &qword_100017700);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100012168(v4, &v13, &qword_100025008, &qword_1000176F8);
      v5 = v13;
      v6 = v14;
      result = sub_10000FE50(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100011FD0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10001196C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003338(&qword_100024FD0, &qword_1000176B0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100012168(v4, v13, &qword_100024FD8, &qword_1000176B8);
      result = sub_100010034(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100011FD0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_100011AA8(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000121D0(0, &qword_100024FA0, IDSReceivedInvitation_ptr);
    sub_100010D60(&qword_100024FA8, &qword_100024FA0, IDSReceivedInvitation_ptr);
    Set.Iterator.init(_cocoa:)();
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    v7 = v27;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v21 = _swiftEmptyArrayStorage;
  v22 = v3;
LABEL_8:
  v11 = v6;
  v12 = v7;
  if (v3 < 0)
  {
    while (__CocoaSet.Iterator.next()())
    {
      sub_1000121D0(0, &qword_100024FA0, IDSReceivedInvitation_ptr);
      swift_dynamicCast();
      v15 = v28;
      v6 = v11;
      v7 = v12;
      if (!v28)
      {
        goto LABEL_26;
      }

LABEL_17:
      sub_10000B934(v15);
      if (!v2)
      {
        v17 = v16;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_10000EF74(0, *(v21 + 2) + 1, 1, v21);
        }

        v19 = *(v21 + 2);
        v18 = *(v21 + 3);
        if (v19 >= v18 >> 1)
        {
          v21 = sub_10000EF74((v18 > 1), v19 + 1, 1, v21);
        }

        *(v21 + 2) = v19 + 1;
        v20 = &v21[16 * v19];
        *(v20 + 4) = v15;
        *(v20 + 5) = v17;
        v3 = v22;
        goto LABEL_8;
      }

      v2 = 0;
      v11 = v6;
      v12 = v7;
      v3 = v22;
      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_25;
  }

LABEL_9:
  v13 = v11;
  v14 = v12;
  v6 = v11;
  if (v12)
  {
LABEL_13:
    v7 = (v14 - 1) & v14;
    v15 = *(*(v3 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v15)
    {
      goto LABEL_17;
    }

LABEL_26:
    v3 = v22;
LABEL_25:
    sub_100010DB0(v3);
    return;
  }

  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= ((v5 + 64) >> 6))
    {
      goto LABEL_25;
    }

    v14 = *(v4 + 8 * v6);
    ++v13;
    if (v14)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_100011D70(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_100011D80()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100011DD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100004650;

  return sub_10000AB98(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100011EA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100011EC8()
{
  v1 = sub_100003338(&qword_100024FC8, &qword_1000176A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

_OWORD *sub_100011FD0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100012090(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100004650;

  return sub_100005BDC(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_100012168(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003338(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000121D0(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100012218()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100012270(uint64_t a1)
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
  v10[1] = sub_100004650;

  return sub_100007818(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100012344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_10000FA90(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_1000123FC(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_100012564(a3, a4);
          return sub_10000FCC0(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100012564(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1000125B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003700;

  return sub_10001157C(a1, v4);
}

uint64_t sub_10001267C()
{
  v1 = sub_100003338(&qword_100025030, &unk_100017730);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100012754(void *a1, uint64_t a2)
{
  sub_100003338(&qword_100025030, &unk_100017730);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);

  return sub_100007E0C(a1, a2, v5, v6);
}

uint64_t *sub_1000127E4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100012848(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003338(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1000128A8(void *a1)
{
  v2 = v1;
  if (qword_100024D10 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000EE30(v4, qword_1000252D0);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v19 = v16;
    *v8 = 138412546;
    *(v8 + 4) = v5;
    *v15 = v5;
    *(v8 + 12) = 2080;
    v9 = [objc_msgSend(v5 "context")];
    swift_unknownObjectRelease();
    osloga = v2;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = Dictionary.description.getter();
    v12 = v11;

    v13 = sub_100014CFC(v10, v12, &v19);

    *(v8 + 14) = v13;
    v2 = osloga;
    _os_log_impl(&_mh_execute_header, v6, v7, "incoming invitation %@ %s", v8, 0x16u);
    sub_100012848(v15, &qword_100024F60, &qword_100017650);

    sub_100013330(v16);
  }

  sub_10000B934(v5);
  oslog = v14;
  [*(&v2->isa + OBJC_IVAR____TtC25keychainsharingmessagingd44KCSharingMessagingdInvitationManagerDelegate_daemonConnection) receivedGroupInvitation:?];
}

id sub_100012BBC(void *a1)
{
  v2 = v1;
  if (qword_100024D10 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000EE30(v4, qword_1000252D0);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "sender did cancel invite %@", v8, 0xCu);
    sub_100012848(v9, &qword_100024F60, &qword_100017650);
  }

  v11 = *(v2 + OBJC_IVAR____TtC25keychainsharingmessagingd44KCSharingMessagingdInvitationManagerDelegate_daemonConnection);

  return [v11 groupInvitationWasCancelled];
}

void sub_100012D24(void *a1, const char *a2, ...)
{
  if (qword_100024D10 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000EE30(v4, qword_1000252D0);
  v5 = a1;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v5;
    *v8 = v5;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v6, a2, v7, 0xCu);
    sub_100012848(v8, &qword_100024F60, &qword_100017650);
  }
}

__n128 sub_100012E7C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100012E88(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100012ED0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100012F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Date();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100013068(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Date();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10001318C(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      sub_100013248();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100013248()
{
  if (!qword_1000250B0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000250B0);
    }
  }
}

void *sub_100013298(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1000132DC()
{
  result = qword_1000250F8;
  if (!qword_1000250F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000250F8);
  }

  return result;
}

uint64_t sub_100013330(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_10001337C()
{
  result = qword_100025108;
  if (!qword_100025108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025108);
  }

  return result;
}

uint64_t sub_1000133D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KCSharingMessagingdInvitationManagerDelegate.InvitationPayload(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100013434()
{
  result = qword_100025128;
  if (!qword_100025128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025128);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KCSharingMessagingdInvitationManagerDelegate.InvitationPayload.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KCSharingMessagingdInvitationManagerDelegate.InvitationPayload.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100013600()
{
  result = qword_100025148;
  if (!qword_100025148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025148);
  }

  return result;
}

unint64_t sub_100013658()
{
  result = qword_100025150;
  if (!qword_100025150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025150);
  }

  return result;
}

unint64_t sub_1000136B0()
{
  result = qword_100025158;
  if (!qword_100025158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025158);
  }

  return result;
}

uint64_t sub_100013704(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444970756F7267 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C52556572616873 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974617469766E69 && a2 == 0xEF6E656B6F546E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4865657469766E69 && a2 == 0xED0000656C646E61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656D6954746E6573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t *sub_10001394C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1000139C4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = type metadata accessor for Logger();
  sub_10001394C(v4, a2);
  sub_10000EE30(v4, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100013A38()
{
  sub_100014264();
  result = static OS_dispatch_source.makeSignalSource(signal:queue:)();
  qword_1000252E8 = result;
  return result;
}

uint64_t sub_100013A74()
{
  if (qword_100024D08 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000EE30(v0, qword_1000252B8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Received SIGTERM, will exit when clean", v3, 2u);
  }

  return _xpc_transaction_exit_clean();
}

uint64_t sub_100013B5C()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_1000141A8();
  sub_100003338(&qword_1000251C8, &qword_100017948);
  sub_100014200();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

int main(int argc, const char **argv, const char **envp)
{
  swift_task_create();
  swift_task_getMainExecutor();
  swift_job_run();
  result = swift_task_asyncMainDrainQueue();
  __break(1u);
  return result;
}

uint64_t sub_100013C4C()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100013D04;

  return sub_100013E78();
}

uint64_t sub_100013D04()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100013E40, v1, v0);
}

uint64_t sub_100013E78()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v0[8] = v1;
  v0[9] = *(v1 - 8);
  v0[10] = swift_task_alloc();
  v2 = type metadata accessor for DispatchQoS();
  v0[11] = v2;
  v0[12] = *(v2 - 8);
  v0[13] = swift_task_alloc();
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100013FC0, v4, v3);
}

void sub_100013FC0()
{
  if (qword_100024D18 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  swift_getObjectType();
  v0[6] = sub_100013A74;
  v0[7] = 0;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1000142B0;
  v0[5] = &unk_100021010;
  v7 = _Block_copy(v0 + 2);
  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  sub_100013B5C();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v7);
  swift_unknownObjectRelease();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v8 = SIG_IGN.getter();
  signal(15, v8);
  swift_getObjectType();
  swift_unknownObjectRetain();
  OS_dispatch_source.activate()();
  swift_unknownObjectRelease();
  if (qword_100024D20 == -1)
  {
    dispatch_main();
  }

  swift_once();
  dispatch_main();
}

uint64_t sub_100014190(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000141A8()
{
  result = qword_1000251C0;
  if (!qword_1000251C0)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000251C0);
  }

  return result;
}

unint64_t sub_100014200()
{
  result = qword_1000251D0;
  if (!qword_1000251D0)
  {
    sub_10000E038(&qword_1000251C8, &qword_100017948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000251D0);
  }

  return result;
}

unint64_t sub_100014264()
{
  result = qword_1000251D8;
  if (!qword_1000251D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000251D8);
  }

  return result;
}

uint64_t sub_1000142B0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1000142F4()
{
  v0 = objc_allocWithZone(NSXPCListener);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithMachServiceName:v1];

  v3 = objc_allocWithZone(type metadata accessor for KCSharingMessagingdXPCListenerDelegate());
  v4 = v2;
  v5 = sub_10001466C(v4);
  v6 = OBJC_IVAR____TtC25keychainsharingmessagingd38KCSharingMessagingdXPCListenerDelegate_listener;
  [*&v5[OBJC_IVAR____TtC25keychainsharingmessagingd38KCSharingMessagingdXPCListenerDelegate_listener] setDelegate:v5];
  v7 = *&v5[v6];
  v8 = *&v5[OBJC_IVAR____TtC25keychainsharingmessagingd38KCSharingMessagingdXPCListenerDelegate_connectionQueue];
  [v7 _setQueue:v8];

  [*&v5[v6] resume];
  qword_1000252F0 = v5;
}

void sub_1000143F0()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v9 = OBJC_IVAR____TtC25keychainsharingmessagingd38KCSharingMessagingdXPCListenerDelegate_connectionQueue;
  sub_1000160B4();
  static DispatchQoS.unspecified.getter();
  v11 = _swiftEmptyArrayStorage;
  sub_100016100();
  sub_100003338(&qword_100024EE8, &qword_100017990);
  sub_10000DFD4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  v6 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v7 = v10;
  *(v10 + v9) = v6;
  *(v7 + OBJC_IVAR____TtC25keychainsharingmessagingd38KCSharingMessagingdXPCListenerDelegate_clientConnections) = _swiftEmptyArrayStorage;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10001466C(uint64_t a1)
{
  v11 = a1;
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v10 - 8);
  __chkstk_darwin(v10);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v9 = OBJC_IVAR____TtC25keychainsharingmessagingd38KCSharingMessagingdXPCListenerDelegate_connectionQueue;
  sub_1000160B4();
  static DispatchQoS.unspecified.getter();
  v13 = _swiftEmptyArrayStorage;
  sub_100016100();
  sub_100003338(&qword_100024EE8, &qword_100017990);
  sub_10000DFD4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  *&v1[v9] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v1[OBJC_IVAR____TtC25keychainsharingmessagingd38KCSharingMessagingdXPCListenerDelegate_clientConnections] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC25keychainsharingmessagingd38KCSharingMessagingdXPCListenerDelegate_listener] = v11;
  v7 = type metadata accessor for KCSharingMessagingdXPCListenerDelegate();
  v12.receiver = v1;
  v12.super_class = v7;
  return objc_msgSendSuper2(&v12, "init");
}

void sub_1000148C4(uint64_t a1, void *a2)
{
  if (qword_100024D08 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000EE30(v3, qword_1000252B8);
  v4 = a2;
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v4;
    *v7 = v4;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, oslog, v5, "connection interrupted %@", v6, 0xCu);
    sub_100012848(v7, &qword_100024F60, &qword_100017650);
  }
}

void sub_100014A70(void *a1)
{
  v2 = v1;
  if (qword_100024D08 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000EE30(v4, qword_1000252B8);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "connection invalidated %@", v8, 0xCu);
    sub_100012848(v9, &qword_100024F60, &qword_100017650);
  }

  v11 = OBJC_IVAR____TtC25keychainsharingmessagingd38KCSharingMessagingdXPCListenerDelegate_clientConnections;
  swift_beginAccess();
  v12 = v5;
  v13 = sub_100015BC0((v2 + v11), v12);

  v14 = *(v2 + v11);
  if (v14 >> 62)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
    if (v15 >= v13)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15 >= v13)
    {
LABEL_7:
      sub_100015EE4(v13, v15);
      swift_endAccess();
      return;
    }
  }

  __break(1u);
}

id sub_100014C48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KCSharingMessagingdXPCListenerDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100014CFC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100014DC8(v11, 0, 0, 1, a1, a2);
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
    sub_10000FEC8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100013330(v11);
  return v7;
}

unint64_t sub_100014DC8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100014ED4(a5, a6);
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

void *sub_100014ED4(uint64_t a1, unint64_t a2)
{
  v3 = sub_100014F20(a1, a2);
  sub_100015050(&off_1000209B0);
  return v3;
}

void *sub_100014F20(uint64_t a1, unint64_t a2)
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

  v6 = sub_10001513C(v5, 0);
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
        v7 = sub_10001513C(v10, 0);
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

uint64_t sub_100015050(uint64_t result)
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

  result = sub_1000151B0(result, v11, 1, v3);
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

void *sub_10001513C(uint64_t a1, uint64_t a2)
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

  sub_100003338(&qword_100025280, &qword_100017988);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000151B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003338(&qword_100025280, &qword_100017988);
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

unint64_t sub_1000152A4(uint64_t a1, char a2)
{
  v4 = *v2;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v4 & 0x8000000000000000) != 0) || (v4 & 0x4000000000000000) != 0 || a1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v4 >> 62)
    {
      _CocoaArrayWrapper.endIndex.getter();
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    *v2 = result;
  }

  return result;
}

uint64_t sub_100015360(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

unint64_t sub_1000153C4(unint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_16:
    v11 = a1;
    v12 = a2;
    v13 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v3 = v13;
    a1 = v11;
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      swift_unknownObjectRelease();
      a1 = v7;
      a2 = v8;
      if (v9 == v8)
      {
        return v4;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (*(a1 + 8 * v4 + 32) == a2)
      {
        return v4;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t sub_1000154C8(void *a1)
{
  v2 = v1;
  if (qword_100024D08 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000EE30(v4, qword_1000252B8);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "handling incoming connection %@", v8, 0xCu);
    sub_100012848(v9, &qword_100024F60, &qword_100017650);
  }

  if (qword_100024D00 != -1)
  {
    swift_once();
  }

  if (!qword_1000252B0)
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "keychainsharingmessagingd disabled. refusing new XPC connection", v16, 2u);
    }

    return 0;
  }

  v11 = qword_1000252B0;
  v12 = String._bridgeToObjectiveC()();
  v13 = [v5 valueForEntitlement:v12];

  if (v13)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
  }

  v47[0] = v41;
  v47[1] = v42;
  sub_100015FBC(v47, &v41);
  if (!*(&v42 + 1))
  {
    sub_100012848(&v41, &qword_100025038, &qword_100017980);
    goto LABEL_21;
  }

  if ((swift_dynamicCast() & 1) == 0 || (v46 & 1) == 0)
  {
LABEL_21:
    v34 = v5;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v41 = v39;
      *v37 = 138412546;
      *(v37 + 4) = v34;
      *v38 = v34;
      *(v37 + 12) = 2080;
      v40 = v34;
      *(v37 + 14) = sub_100014CFC(0xD000000000000037, 0x8000000100017FC0, &v41);
      _os_log_impl(&_mh_execute_header, v35, v36, "Rejected connection %@ lacks entitlement %s", v37, 0x16u);
      sub_100012848(v38, &qword_100024F60, &qword_100017650);

      sub_100013330(v39);
    }

    else
    {
    }

    sub_100012848(v47, &qword_100025038, &qword_100017980);
    return 0;
  }

  v17 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___KCSharingMessagingdXPCServerProtocol];
  [v5 setExportedInterface:v17];
  v18 = type metadata accessor for KCSharingMessagingdXPCServer();
  v19 = objc_allocWithZone(v18);
  *&v19[OBJC_IVAR____TtC25keychainsharingmessagingd28KCSharingMessagingdXPCServer_connection] = v5;
  *&v19[OBJC_IVAR____TtC25keychainsharingmessagingd28KCSharingMessagingdXPCServer_invitationManagerDelegate] = v11;
  v45.receiver = v19;
  v45.super_class = v18;
  v20 = v5;
  v21 = v11;
  v22 = objc_msgSendSuper2(&v45, "init");
  [v20 setExportedObject:v22];
  v23 = swift_allocObject();
  *(v23 + 16) = v2;
  *(v23 + 24) = v22;
  v43 = sub_10001606C;
  v44 = v23;
  *&v41 = _NSConcreteStackBlock;
  *(&v41 + 1) = 1107296256;
  *&v42 = sub_1000142B0;
  *(&v42 + 1) = &unk_100021060;
  v24 = _Block_copy(&v41);
  v25 = v2;
  v26 = v22;

  [v20 setInterruptionHandler:v24];
  _Block_release(v24);
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  *(v27 + 24) = v26;
  v43 = sub_10001608C;
  v44 = v27;
  *&v41 = _NSConcreteStackBlock;
  *(&v41 + 1) = 1107296256;
  *&v42 = sub_1000142B0;
  *(&v42 + 1) = &unk_1000210B0;
  v28 = _Block_copy(&v41);
  v29 = v25;
  v30 = v26;

  [v20 setInvalidationHandler:v28];
  _Block_release(v28);
  v31 = OBJC_IVAR____TtC25keychainsharingmessagingd38KCSharingMessagingdXPCListenerDelegate_clientConnections;
  swift_beginAccess();
  v32 = v30;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v29 + v31) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v29 + v31) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  [v20 _setQueue:*(v29 + OBJC_IVAR____TtC25keychainsharingmessagingd38KCSharingMessagingdXPCListenerDelegate_connectionQueue)];
  [v20 resume];

  sub_100012848(v47, &qword_100025038, &qword_100017980);
  return 1;
}

uint64_t sub_100015BC0(unint64_t *a1, void *a2)
{
  v7 = *a1;
  v8 = sub_1000153C4(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    swift_unknownObjectRelease();
    if (v21 != a2)
    {
      if (v10 != v11)
      {
        v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_21;
      }

LABEL_9:
      v14 = __OFADD__(v10++, 1);
      if (v14)
      {
        goto LABEL_42;
      }
    }

LABEL_10:
    v14 = __OFADD__(v11++, 1);
    if (v14)
    {
      goto LABEL_41;
    }
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v15)
    {
      goto LABEL_40;
    }

    v16 = *(v7 + 32 + 8 * v11);
    if (v16 != a2)
    {
      if (v10 != v11)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v10 >= v15)
        {
          goto LABEL_44;
        }

        v3 = *(v7 + 32 + 8 * v10);
        v17 = v16;
LABEL_21:
        v18 = v17;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_100015360(v7);
          v19 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v19) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        v20 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20);
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v18;

        if ((v7 & 0x8000000000000000) != 0 || v19)
        {
          v7 = sub_100015360(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        v12 = v4 + 8 * v11;
        v13 = *(v12 + 32);
        *(v12 + 32) = v3;

        *a1 = v7;
      }

      goto LABEL_9;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_100015DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for KCSharingMessagingdXPCServer();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_100015EE4(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_1000152A4(result, 1);

  return sub_100015DE4(v5, v3, 0);
}

uint64_t sub_100015FBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003338(&qword_100025038, &qword_100017980);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001602C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100016074(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000160B4()
{
  result = qword_100024ED8;
  if (!qword_100024ED8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100024ED8);
  }

  return result;
}

unint64_t sub_100016100()
{
  result = qword_100024EE0;
  if (!qword_100024EE0)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024EE0);
  }

  return result;
}

id sub_1000162B8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MessagingError();
  return objc_msgSendSuper2(&v3, "dealloc");
}