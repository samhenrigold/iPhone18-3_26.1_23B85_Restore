id sub_100001038()
{
  result = [objc_allocWithZone(type metadata accessor for MLSDaemon()) init];
  qword_100008150 = result;
  return result;
}

uint64_t sub_10000106C()
{
  if (qword_100008098 != -1)
  {
    swift_once();
  }

  v0 = qword_100008150;
  v1 = objc_allocWithZone(type metadata accessor for KDSRegistrationDaemon());
  v2 = v0;
  result = KDSRegistrationDaemon.init(mlsDaemon:)();
  qword_100008158 = result;
  return result;
}

uint64_t sub_1000010E0()
{
  if (qword_100008098 != -1)
  {
    swift_once();
  }

  v0 = qword_1000080A0;
  v1 = qword_100008150;
  if (v0 != -1)
  {
    swift_once();
  }

  v2 = qword_100008158;
  v3 = objc_allocWithZone(type metadata accessor for XPCServer());
  v4 = v2;
  result = XPCServer.init(xpcDaemons:deliveryDaemon:registrationDaemon:)();
  qword_100008160 = result;
  return result;
}

uint64_t sub_1000011AC()
{
  type metadata accessor for MainActor();
  v0[2] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[3] = v2;
  v0[4] = v1;

  return _swift_task_switch(sub_100001240, v2, v1);
}

uint64_t sub_100001240()
{
  sub_100002388(0xD00000000000001ELL, 0x8000000100002A70);
  if (qword_1000080A0 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = qword_100008158;
  v3 = (&async function pointer to dispatch thunk of KDSRegistrationDaemon.start() + async function pointer to dispatch thunk of KDSRegistrationDaemon.start());
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_100001338;

  return v3();
}

uint64_t sub_100001338()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 32);
  v4 = *(v2 + 24);
  if (v0)
  {
    v5 = sub_10000174C;
  }

  else
  {
    v5 = sub_100001474;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100001474()
{
  if (qword_100008098 != -1)
  {
    swift_once();
  }

  *(v0 + 64) = qword_100008150;
  v3 = (&async function pointer to dispatch thunk of MLSDaemon.start() + async function pointer to dispatch thunk of MLSDaemon.start());
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_100001550;

  return v3();
}

uint64_t sub_100001550()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 32);
  v4 = *(v2 + 24);
  if (v0)
  {
    v5 = sub_1000017B0;
  }

  else
  {
    v5 = sub_10000168C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10000168C()
{

  if (qword_1000080A8 != -1)
  {
    swift_once();
  }

  dispatch thunk of XPCServer.setupXPCListener()();
  dispatch thunk of MLSDaemon.setupXPCNotificationPoster()();
  dispatch thunk of KDSRegistrationDaemon.setupXPCNotificationPoster()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000174C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000017B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100001814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100001BA0(&qword_1000080B0, &qword_100002950);
  __chkstk_darwin();
  v9 = v21 - v8;
  sub_100001DEC(a3, v21 - v8);
  v10 = type metadata accessor for TaskPriority();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v9, 1, v10);

  if (v12 == 1)
  {
    sub_100001E5C(v9);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v11 + 8))(v9, v10);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = String.utf8CString.getter() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_100001E5C(a3);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100001E5C(a3);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001BA0(&qword_1000080B0, &qword_100002950);
  __chkstk_darwin();
  v4 = &v9 - v3;
  v5 = type metadata accessor for SecureMessagingAgentMain();
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  type metadata accessor for MainActor();
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v5;
  sub_100001814(0, 0, v4, &unk_100002960, v8);

  dispatch_main();
}

uint64_t sub_100001BA0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001C0C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100001C44()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100001CF8;

  return sub_1000011AC();
}

uint64_t sub_100001CF8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100001DEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001BA0(&qword_1000080B0, &qword_100002950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100001E5C(uint64_t a1)
{
  v2 = sub_100001BA0(&qword_1000080B0, &qword_100002950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_100001EC4(uint64_t *a1, uint64_t a2)
{
  v3 = a2;
  v6 = *a1;
  v5 = a1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      v15 = a2;
      sub_1000024E0(v6, v5);
      *v16 = v6;
      *&v16[8] = v5;
      v16[10] = BYTE2(v5);
      v16[11] = BYTE3(v5);
      v16[12] = BYTE4(v5);
      v16[13] = BYTE5(v5);
      v16[14] = BYTE6(v5);
      result = sub_100002534(&v17, v16, v15);
      if (!v2)
      {
        result = v17;
      }

      v9 = *&v16[8] | ((*&v16[12] | (v16[14] << 16)) << 32);
      *a1 = *v16;
      a1[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1000024E0(v6, v5);
    *a1 = xmmword_100002930;
    sub_1000024E0(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
LABEL_24:
        __break(1u);
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v13 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v11 = v13;
    }

    if (v12 >= v6)
    {

      v14 = sub_100002234(v6, v6 >> 32, v11, v3);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *a1 = v6;
        a1[1] = v10;
        return v14;
      }

      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_23;
  }

  if (v7 == 2)
  {

    sub_1000024E0(v6, v5);
    v17 = v6;
    v18 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_100002930;
    sub_1000024E0(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v6 = v17;
    result = sub_100002234(v17[2], v17[3], v18, v3);
    v10 = v18 | 0x8000000000000000;
    if (!v2)
    {
      *a1 = v17;
      a1[1] = v10;
      return result;
    }

LABEL_19:
    *a1 = v6;
    a1[1] = v10;
    return result;
  }

  memset(v16, 0, 15);
  result = sub_100002534(&v17, v16, a2);
  if (!v2)
  {
    return v17;
  }

  return result;
}

uint64_t *sub_100002234(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_9;
  }

  v9 = result;
  result = __DataStorage._offset.getter();
  v10 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (__OFSUB__(a2, a1))
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  __DataStorage._length.getter();
  result = sub_100002534(&v11, v9 + v10, a4);
  if (!v4)
  {
    return v11;
  }

  return result;
}

void sub_1000022E0(int *a1, int a2)
{
  Data.InlineSlice.ensureUniqueReference()();
  v4 = *a1;
  v5 = a1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = __DataStorage._bytes.getter();
  if (!v6)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = __DataStorage._offset.getter();
  v9 = v4 - v8;
  if (__OFSUB__(v4, v8))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v5 - v4;
  v11 = __DataStorage._length.getter();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  memset((v7 + v9), a2, v12);
}

uint64_t sub_100002388(uint64_t a1, uint64_t a2)
{
  String.utf8CString.getter();
  v2 = _set_user_dir_suffix();

  if (v2 && (type metadata accessor for __DataStorage(), swift_allocObject(), v6 = 0x40000000000, v7 = __DataStorage.init(length:)(), sub_1000022E0(&v6, 0), v7 |= 0x4000000000000000uLL, sub_100001EC4(&v6, 65537), v4 = v3, sub_1000024E0(v6, v7), v4))
  {
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000024E0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

int64_t sub_100002534@<X0>(uint64_t *__return_ptr a1@<X8>, char *a2@<X0>, int a3@<W2>)
{
  result = confstr(a3, a2, 0x400uLL);
  if (result >= 1 && a2)
  {
    result = String.init(cString:)();
    *a1 = result;
    a1[1] = v6;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }

  return result;
}