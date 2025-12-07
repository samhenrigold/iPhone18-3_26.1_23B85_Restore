uint64_t sub_100032A34(char a1)
{
  v3 = *&v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10003DBC8;
  *(v5 + 24) = v4;
  v10[4] = sub_10004076C;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10003885C;
  v10[3] = &unk_10047CFC0;
  v6 = _Block_copy(v10);
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void (*sub_100032B90(uint64_t *a1))(void ****a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  *(v3 + 56) = *(v1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue);
  __chkstk_darwin(v3);
  OS_dispatch_queue.sync<A>(execute:)();
  v4[64] = *v4;
  return sub_100032C70;
}

void sub_100032C70(void ****a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v5 = (*a1)[6];
  isEscapingClosureAtFileLocation = (*a1)[7];
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v3;
    v7 = swift_allocObject();
    v3 = v7;
    *(v7 + 16) = sub_100040760;
    *(v7 + 24) = v6;
    v2[4] = sub_10004076C;
    v2[5] = v7;
    *v2 = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = sub_10003885C;
    v2[3] = &unk_10047D038;
    v8 = _Block_copy(v2);
    v9 = v5;

    dispatch_sync(isEscapingClosureAtFileLocation, v8);
    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v3;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_100040760;
  *(v11 + 24) = v10;
  v2[4] = sub_10004076C;
  v2[5] = v11;
  *v2 = _NSConcreteStackBlock;
  v2[1] = 1107296256;
  v2[2] = sub_10003885C;
  v2[3] = &unk_10047D0B0;
  v12 = _Block_copy(v2);
  v13 = v5;

  dispatch_sync(isEscapingClosureAtFileLocation, v12);
  _Block_release(v12);
  v14 = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
    return;
  }

LABEL_5:

  free(v2);
}

uint64_t sub_100032F6C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *&v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue];
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1000404BC;
  *(v6 + 24) = v5;
  v11[4] = sub_10004076C;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10003885C;
  v11[3] = &unk_10047DEB8;
  v7 = _Block_copy(v11);
  v8 = v1;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000330F0(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10003DC3C;
  *(v5 + 24) = v4;
  v11[4] = sub_10004076C;
  v11[5] = v5;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10003885C;
  v11[3] = &unk_10047D128;
  v6 = _Block_copy(v11);
  v7 = a1;

  v8 = v1;

  dispatch_sync(v3, v6);

  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void (*sub_10003325C(uint64_t *a1))(void ****a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  *(v3 + 64) = *(v1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue);
  __chkstk_darwin(v3);
  sub_1000039E8(&qword_1004A7320, &qword_100376F18);
  OS_dispatch_queue.sync<A>(execute:)();
  v4[6] = *v4;
  return sub_100033358;
}

void sub_100033358(void ****a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 6);
  v3 = *v4;
  v6 = (*a1)[7];
  v5 = (*a1)[8];
  if ((a2 & 1) == 0)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v6;
    *(v14 + 24) = v3;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_100040758;
    *(v15 + 24) = v14;
    v2[4] = sub_10004076C;
    v2[5] = v15;
    *v2 = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = sub_10003885C;
    v2[3] = &unk_10047D218;
    v16 = _Block_copy(v2);
    v17 = v3;

    v18 = v6;

    dispatch_sync(v5, v16);

    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100040758;
  *(v8 + 24) = v7;
  v2[4] = sub_10004076C;
  v2[5] = v8;
  *v2 = _NSConcreteStackBlock;
  v2[1] = 1107296256;
  v2[2] = sub_10003885C;
  v2[3] = &unk_10047D1A0;
  v9 = _Block_copy(v2);
  v10 = v3;
  v11 = v6;
  v12 = v10;

  dispatch_sync(v5, v9);

  _Block_release(v9);
  v13 = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
    goto LABEL_9;
  }

LABEL_5:

  free(v2);
}

uint64_t sub_10003362C(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10003DCF8;
  *(v5 + 24) = v4;
  v10[4] = sub_10004076C;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10003885C;
  v10[3] = &unk_10047D290;
  v6 = _Block_copy(v10);

  v7 = v1;

  dispatch_sync(v3, v6);

  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void (*sub_10003379C(uint64_t *a1))(void ****a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  *(v3 + 64) = *(v1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue);
  __chkstk_darwin(v3);
  sub_1000039E8(&qword_1004A7328, &unk_100376F20);
  OS_dispatch_queue.sync<A>(execute:)();
  v4[6] = *v4;
  return sub_100033898;
}

void sub_100033898(void ****a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v5 = (*a1)[7];
  v4 = (*a1)[8];
  if ((a2 & 1) == 0)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v5;
    *(v11 + 24) = v3;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_10004068C;
    *(v12 + 24) = v11;
    v2[4] = sub_10004076C;
    v2[5] = v12;
    *v2 = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = sub_10003885C;
    v2[3] = &unk_10047D380;
    v13 = _Block_copy(v2);

    v14 = v5;

    dispatch_sync(v4, v13);

    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_10004068C;
  *(v7 + 24) = v6;
  v2[4] = sub_10004076C;
  v2[5] = v7;
  *v2 = _NSConcreteStackBlock;
  v2[1] = 1107296256;
  v2[2] = sub_10003885C;
  v2[3] = &unk_10047D308;
  v8 = _Block_copy(v2);
  swift_retain_n();
  v9 = v5;

  dispatch_sync(v4, v8);

  _Block_release(v8);
  v10 = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
    goto LABEL_9;
  }

LABEL_5:

  free(v2);
}

uint64_t sub_100033B48()
{
  sub_1000039E8(&qword_1004A7330, &qword_1003762A0);
  OS_dispatch_queue.sync<A>(execute:)();
  return v1;
}

uint64_t sub_100033BC8(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue];
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_10003DDA4;
  *(v7 + 24) = v6;
  v12[4] = sub_10004076C;
  v12[5] = v7;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10003885C;
  v12[3] = &unk_10047D3F8;
  v8 = _Block_copy(v12);
  v9 = v2;

  dispatch_sync(v5, v8);
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void (*sub_100033D28(uint64_t *a1))(void ****a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  *(v3 + 72) = *(v1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue);
  __chkstk_darwin(v3);
  sub_1000039E8(&qword_1004A7330, &qword_1003762A0);
  OS_dispatch_queue.sync<A>(execute:)();
  v4[3] = *v4;
  return sub_100033E24;
}

void sub_100033E24(void ****a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v5 = (*a1)[8];
  v4 = (*a1)[9];
  v6 = (*a1)[7];
  if ((a2 & 1) == 0)
  {
    v12 = swift_allocObject();
    v12[2] = v5;
    v12[3] = v3;
    v12[4] = v6;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1000406A8;
    *(v13 + 24) = v12;
    v2[4] = sub_10004076C;
    v2[5] = v13;
    *v2 = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = sub_10003885C;
    v2[3] = &unk_10047D4E8;
    v14 = _Block_copy(v2);
    v15 = v5;

    dispatch_sync(v4, v14);
    _Block_release(v14);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = v3;
  v7[4] = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1000406A8;
  *(v8 + 24) = v7;
  v2[4] = sub_10004076C;
  v2[5] = v8;
  *v2 = _NSConcreteStackBlock;
  v2[1] = 1107296256;
  v2[2] = sub_10003885C;
  v2[3] = &unk_10047D470;
  v9 = _Block_copy(v2);

  v10 = v5;

  dispatch_sync(v4, v9);
  _Block_release(v9);
  v11 = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
    goto LABEL_9;
  }

LABEL_5:

  free(v2);
}

uint64_t sub_1000340D4(char a1)
{
  v3 = *&v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10003DE00;
  *(v5 + 24) = v4;
  v10[4] = sub_10004076C;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10003885C;
  v10[3] = &unk_10047D560;
  v6 = _Block_copy(v10);
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void (*sub_100034230(uint64_t *a1))(void ****a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  *(v3 + 56) = *(v1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue);
  __chkstk_darwin(v3);
  OS_dispatch_queue.sync<A>(execute:)();
  v4[64] = *v4;
  return sub_100034310;
}

void sub_100034310(void ****a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v5 = (*a1)[6];
  isEscapingClosureAtFileLocation = (*a1)[7];
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v3;
    v7 = swift_allocObject();
    v3 = v7;
    *(v7 + 16) = sub_100040764;
    *(v7 + 24) = v6;
    v2[4] = sub_10004076C;
    v2[5] = v7;
    *v2 = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = sub_10003885C;
    v2[3] = &unk_10047D5D8;
    v8 = _Block_copy(v2);
    v9 = v5;

    dispatch_sync(isEscapingClosureAtFileLocation, v8);
    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v3;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_100040764;
  *(v11 + 24) = v10;
  v2[4] = sub_10004076C;
  v2[5] = v11;
  *v2 = _NSConcreteStackBlock;
  v2[1] = 1107296256;
  v2[2] = sub_10003885C;
  v2[3] = &unk_10047D650;
  v12 = _Block_copy(v2);
  v13 = v5;

  dispatch_sync(isEscapingClosureAtFileLocation, v12);
  _Block_release(v12);
  v14 = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
    return;
  }

LABEL_5:

  free(v2);
}

unint64_t sub_10003459C(unint64_t result)
{
  if (result <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = result;
  }

  *(v1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__allowedTries) = v2;
  return result;
}

unint64_t *(*sub_1000345B4(void *a1))(unint64_t *result)
{
  v2 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__allowedTries;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = *(v1 + v2);
  return sub_1000345E8;
}

unint64_t *sub_1000345E8(unint64_t *result)
{
  v1 = *result;
  if (*result <= 1)
  {
    v1 = 1;
  }

  *(result[1] + result[2]) = v1;
  return result;
}

uint64_t sub_100034600()
{
  v1 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_delay;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100034644(int a1)
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_delay;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1000346F4()
{
  v1 = (v0 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_100034774(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  sub_1000039E8(a1, a2);
  OS_dispatch_queue.sync<A>(execute:)();
  return v4;
}

uint64_t sub_1000347D8(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100040444;
  *(v5 + 24) = v4;
  v11[4] = sub_10004076C;
  v11[5] = v5;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10003885C;
  v11[3] = &unk_10047DD50;
  v6 = _Block_copy(v11);
  v7 = a1;

  v8 = v1;

  dispatch_sync(v3, v6);

  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000349C8(char a1)
{
  v3 = *&v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10003DE6C;
  *(v5 + 24) = v4;
  v10[4] = sub_10004076C;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10003885C;
  v10[3] = &unk_10047D6C8;
  v6 = _Block_copy(v10);
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void (*sub_100034B24(uint64_t *a1))(void ****a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  *(v3 + 56) = *(v1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue);
  __chkstk_darwin(v3);
  OS_dispatch_queue.sync<A>(execute:)();
  v4[64] = *v4;
  return sub_100034C04;
}

void sub_100034C04(void ****a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v5 = (*a1)[6];
  isEscapingClosureAtFileLocation = (*a1)[7];
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v3;
    v7 = swift_allocObject();
    v3 = v7;
    *(v7 + 16) = sub_100040768;
    *(v7 + 24) = v6;
    v2[4] = sub_10004076C;
    v2[5] = v7;
    *v2 = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = sub_10003885C;
    v2[3] = &unk_10047D740;
    v8 = _Block_copy(v2);
    v9 = v5;

    dispatch_sync(isEscapingClosureAtFileLocation, v8);
    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v3;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_100040768;
  *(v11 + 24) = v10;
  v2[4] = sub_10004076C;
  v2[5] = v11;
  *v2 = _NSConcreteStackBlock;
  v2[1] = 1107296256;
  v2[2] = sub_10003885C;
  v2[3] = &unk_10047D7B8;
  v12 = _Block_copy(v2);
  v13 = v5;

  dispatch_sync(isEscapingClosureAtFileLocation, v12);
  _Block_release(v12);
  v14 = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
    return;
  }

LABEL_5:

  free(v2);
}

uint64_t sub_100034EF0(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10003DED4;
  *(v5 + 24) = v4;
  v10[4] = sub_10004076C;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10003885C;
  v10[3] = &unk_10047D830;
  v6 = _Block_copy(v10);
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void (*sub_100035048(uint64_t *a1))(void ****a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  *(v3 + 64) = *(v1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue);
  __chkstk_darwin(v3);
  OS_dispatch_queue.sync<A>(execute:)();
  v4[6] = *v4;
  return sub_100035128;
}

void sub_100035128(void ****a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v5 = (*a1)[7];
  isEscapingClosureAtFileLocation = (*a1)[8];
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v3;
    v3 = swift_allocObject();
    v3[2] = sub_100040648;
    v3[3] = v6;
    v2[4] = sub_10004076C;
    v2[5] = v3;
    *v2 = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = sub_10003885C;
    v2[3] = &unk_10047D8A8;
    v7 = _Block_copy(v2);
    v8 = v5;

    dispatch_sync(isEscapingClosureAtFileLocation, v7);
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v3;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_100040648;
  *(v10 + 24) = v9;
  v2[4] = sub_10004076C;
  v2[5] = v10;
  *v2 = _NSConcreteStackBlock;
  v2[1] = 1107296256;
  v2[2] = sub_10003885C;
  v2[3] = &unk_10047D920;
  v11 = _Block_copy(v2);
  v12 = v5;

  dispatch_sync(isEscapingClosureAtFileLocation, v11);
  _Block_release(v11);
  v13 = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
    return;
  }

LABEL_5:

  free(v2);
}

uint64_t sub_1000353A0()
{
  v1 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_useExponentialRetryDelay;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000353E4(char a1)
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_useExponentialRetryDelay;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1000354A4()
{
  if ((*((swift_isaMask & *v0) + 0x2D0))())
  {
    goto LABEL_16;
  }

  v1 = (*((swift_isaMask & *v0) + 0x3D8))();
  if (v1 >= (*((swift_isaMask & *v0) + 0x300))())
  {
    goto LABEL_16;
  }

  v2 = (*((swift_isaMask & *v0) + 0x150))();
  if (v2)
  {
    v3 = *(v2 + 56);
    if (v3 != 18)
    {
      if (v3 == 20)
      {

        LOBYTE(v4) = 1;
        return v4 & 1;
      }

      goto LABEL_15;
    }

    if (!*(v2 + 80))
    {
LABEL_15:

      goto LABEL_16;
    }

    v6 = [*(v2 + 80) code];

    if (v6 + 1009 < 9)
    {
      v4 = 0x151u >> (v6 - 15);
      return v4 & 1;
    }

LABEL_16:
    LOBYTE(v4) = 0;
    return v4 & 1;
  }

  __chkstk_darwin(0);
  sub_1000039E8(&unk_1004A7340, &unk_100376F30);
  OS_dispatch_queue.sync<A>(execute:)();
  if (!v8)
  {
    goto LABEL_16;
  }

  v5 = [v8 statusCode];

  LOBYTE(v4) = 1;
  if (v5 != 408 && v5 != 429 && v5 != 500)
  {
    LOBYTE(v4) = (v5 & 0xFFFFFFFFFFFFFFFELL) == 502;
  }

  return v4 & 1;
}

uint64_t sub_1000356F8(uint64_t a1, unint64_t a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v156 = a2;
  v155 = a1;
  v154 = type metadata accessor for DispatchQoS.QoSClass();
  *&v153 = *(v154 - 8);
  __chkstk_darwin(v154);
  v152 = &v141 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v147 = *(v148 - 8);
  __chkstk_darwin(v148);
  v151 = &v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v10);
  v150 = &v141 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  v149 = &v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v14 - 8);
  v15 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v141 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v141 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v141 - v23;
  v25 = (*((swift_isaMask & **(v4 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client)) + 0x1D0))(v22);
  v26 = [v25 delegate];

  if (!v26 || (v157 = v26, sub_1000039E8(&qword_1004A7388, &qword_100376F60), sub_1000039E8(&qword_1004A7390, &qword_100376F68), (swift_dynamicCast() & 1) == 0))
  {
    v160 = 0;
    v158 = 0u;
    v159 = 0u;
LABEL_10:
    sub_100013F2C(&v158, &qword_1004A7358, &qword_100376F40);
    if (!a4)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  if (!*(&v159 + 1))
  {
    goto LABEL_10;
  }

  sub_100003C88(&v158, &v161);
  v27 = *(*sub_10000E2A8(&v161, v163) + OBJC_IVAR____TtC16KnoxClientPublic29KnoxURLSessionPinningDelegate_sessionError);
  swift_errorRetain();
  sub_100003C3C(&v161);
  v28 = v27;
  if (v27)
  {
LABEL_12:
    v154 = v28;
    swift_errorRetain();
    sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
    v32 = swift_allocObject();
    v153 = xmmword_100376BB0;
    *(v32 + 16) = xmmword_100376BB0;
    *(v32 + 56) = &type metadata for String;
    v33 = sub_10001A9EC();
    *(v32 + 64) = v33;
    *(v32 + 32) = 0xD000000000000034;
    *(v32 + 40) = 0x800000010042AE10;
    swift_getErrorValue();
    v34 = Error.localizedDescription.getter();
    *(v32 + 96) = &type metadata for String;
    *(v32 + 104) = v33;
    *(v32 + 72) = v34;
    *(v32 + 80) = v35;
    sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
    v36 = static OS_os_log.default.getter();
    v37 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("%{public}s got an error: %{public}s", 35, 2, &_mh_execute_header, v36, v37, v32);

    v161 = v27;
    swift_errorRetain();
    sub_1000039E8(&qword_1004AB0A0, &unk_100377120);
    type metadata accessor for KnoxServiceClient.ClientError();
    if (swift_dynamicCast())
    {
      v38 = v158;
    }

    else
    {
      v39 = _convertErrorToNSError(_:)();
      swift_allocObject();
      v38 = sub_100059DCC(0xD000000000000034, 0x800000010042AE10, 0xD000000000000062, 0x800000010042AE50, 605, v39);
    }

    v40 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_lastError;
    swift_beginAccess();
    *(v5 + v40) = v38;
    swift_retain_n();

    if (((*((swift_isaMask & *v5) + 0x438))(v41) & 1) == 0)
    {
      v48 = swift_allocObject();
      *(v48 + 16) = v153;
      *(v48 + 56) = &type metadata for String;
      *(v48 + 64) = v33;
      *(v48 + 32) = 0xD000000000000034;
      *(v48 + 40) = 0x800000010042AE10;
      swift_getErrorValue();
      v49 = Error.localizedDescription.getter();
      *(v48 + 96) = &type metadata for String;
      *(v48 + 104) = v33;
      *(v48 + 72) = v49;
      *(v48 + 80) = v50;
      v51 = static OS_os_log.default.getter();
      v52 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("In %s httpRetryOK returned false for error: %{public}s", 54, 2, &_mh_execute_header, v51, v52, v48);

      v47 = v155;
      sub_100031994(v155, v156, v53, v54);

      return v47;
    }

    v42 = swift_allocObject();
    *(v42 + 16) = v153;
    *(v42 + 56) = &type metadata for String;
    *(v42 + 64) = v33;
    *(v42 + 32) = 0xD000000000000034;
    *(v42 + 40) = 0x800000010042AE10;
    swift_getErrorValue();
    v43 = Error.localizedDescription.getter();
    *(v42 + 96) = &type metadata for String;
    *(v42 + 104) = v33;
    *(v42 + 72) = v43;
    *(v42 + 80) = v44;
    v45 = static OS_os_log.default.getter();
    v46 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("In %{public}s httpRetryOK returned true for error: %{public}s - Maybe a timeout error, and we can try again.", 108, 2, &_mh_execute_header, v45, v46, v42);

    return 0;
  }

  if (a4)
  {
LABEL_11:
    v28 = 0;
    v27 = a4;
    goto LABEL_12;
  }

LABEL_6:
  if (!a3 || (objc_opt_self(), (v29 = swift_dynamicCastObjCClass()) == 0))
  {
    v145 = 0x800000010042AE10;
    v146 = 0x800000010042AE50;
    v161 = 0;
    v162 = 0xE000000000000000;
    _StringGuts.grow(_:)(38);

    v161 = 0xD000000000000024;
    v162 = 0x800000010042AEC0;
    *&v158 = a3;
    v55 = a3;
    sub_1000039E8(&unk_1004A7360, qword_100376F48);
    v56._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v56);

    v144 = v161;
    v143 = v162;
    type metadata accessor for KnoxServiceClient.ClientError();
    v57 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
    static DispatchQoS.userInitiated.getter();
    v161 = _swiftEmptyArrayStorage;
    sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850, &qword_100376280);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v147 + 104))(v151, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v148);
    v58 = v153;
    v59 = v152;
    v60 = v154;
    (*(v153 + 104))(v152, enum case for DispatchQoS.QoSClass.default(_:), v154);
    static OS_dispatch_queue.global(qos:)();
    (*(v58 + 8))(v59, v60);
    v61 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();

    v62 = v145;
    *(v57 + 16) = 0xD000000000000034;
    *(v57 + 24) = v62;
    v63 = v146;
    *(v57 + 32) = 0xD000000000000062;
    *(v57 + 40) = v63;
    *(v57 + 56) = 14;
    *(v57 + 48) = 621;
    v64 = v143;
    *(v57 + 64) = v144;
    *(v57 + 72) = v64;
    *(v57 + 80) = 0;
    *(v57 + 88) = v61;
    v47 = v155;
    sub_100031994(v155, v156, v65, v66);
    return v47;
  }

  v30 = v29;
  v146 = a4;
  v31 = a3;
  sub_100039A44(v30, v24);
  v143 = v31;
  v68 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_nextPageURL;
  swift_beginAccess();
  sub_10001F8D8(v24, v5 + v68, &qword_1004A6D30, &unk_100376820);
  v69 = swift_endAccess();
  v70 = *((swift_isaMask & *v5) + 0x108);
  v145 = (swift_isaMask & *v5) + 264;
  v144 = v70;
  v71 = (v70)(v69);
  v72 = [v30 statusCode];
  v73 = *(v71 + 16);
  v74 = 32;
  v75 = v156;
  while (v73)
  {
    v76 = *(v71 + v74);
    v74 += 8;
    --v73;
    if (v76 == v72)
    {

      v47 = v155;
      sub_100031994(v155, v75, v77, v78);

      return v47;
    }
  }

  if ((*((swift_isaMask & *v5) + 0x438))(v79))
  {
    v161 = 0;
    v162 = 0xE000000000000000;
    _StringGuts.grow(_:)(84);
    v82._countAndFlagsBits = 0xD00000000000001BLL;
    v82._object = 0x800000010042AF30;
    String.append(_:)(v82);
    *&v158 = [v30 statusCode];
    v83._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v83);

    v84._countAndFlagsBits = 0x64616574736E6920;
    v84._object = 0xEC00000020666F20;
    String.append(_:)(v84);
    v144();
    v85 = Array.description.getter();
    v87 = v86;

    v88._countAndFlagsBits = v85;
    v88._object = v87;
    String.append(_:)(v88);

    v89._countAndFlagsBits = 0xD000000000000029;
    v89._object = 0x800000010042AF50;
    String.append(_:)(v89);
    v90 = v161;
    v91 = v162;
    sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
    v92 = swift_allocObject();
    *(v92 + 16) = xmmword_100376A40;
    *(v92 + 56) = &type metadata for String;
    *(v92 + 64) = sub_10001A9EC();
    *(v92 + 32) = v90;
    *(v92 + 40) = v91;
    sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
    v93 = static OS_os_log.default.getter();
    v94 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("%{public}s", 10, 2, &_mh_execute_header, v93, v94, v92);

    return 0;
  }

  if (v75 >> 60 == 15)
  {
    v143 = 1701736270;
    v95 = 0xE400000000000000;
LABEL_48:
    v161 = 0;
    v162 = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    v112._countAndFlagsBits = 0x7461747320746F47;
    v112._object = 0xEB00000000207375;
    String.append(_:)(v112);
    *&v158 = [v30 statusCode];
    v113._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v113);

    v114._countAndFlagsBits = 0xD000000000000015;
    v114._object = 0x800000010042AEF0;
    String.append(_:)(v114);
    v144();
    v115 = Array.description.getter();
    v117 = v116;

    v118._countAndFlagsBits = v115;
    v118._object = v117;
    String.append(_:)(v118);

    v119._countAndFlagsBits = 0x20726F6620;
    v119._object = 0xE500000000000000;
    String.append(_:)(v119);
    v120 = [v30 URL];
    if (v120)
    {
      v121 = v120;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v122 = 0;
    }

    else
    {
      v122 = 1;
    }

    v123 = type metadata accessor for URL();
    v124 = *(v123 - 8);
    (*(v124 + 56))(v18, v122, 1, v123);
    sub_10003E154(v18, v21, &qword_1004A6D30, &unk_100376820);
    if ((*(v124 + 48))(v21, 1, v123) == 1)
    {
      sub_100013F2C(v21, &qword_1004A6D30, &unk_100376820);
      v125 = 0;
      v126 = 0;
    }

    else
    {
      v125 = URL.absoluteString.getter();
      v126 = v127;
      (*(v124 + 8))(v21, v123);
    }

    v145 = 0x800000010042AE10;
    v144 = 0x800000010042AE50;
    *&v158 = v125;
    *(&v158 + 1) = v126;
    sub_1000039E8(&qword_1004A7330, &qword_1003762A0);
    v128._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v128);

    v129._countAndFlagsBits = 0xD000000000000011;
    v129._object = 0x800000010042AF10;
    String.append(_:)(v129);
    v130._countAndFlagsBits = v143;
    v130._object = v95;
    String.append(_:)(v130);

    v143 = v161;
    v142 = v162;
    type metadata accessor for KnoxServiceClient.ClientError();
    v131 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
    v141 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v161 = _swiftEmptyArrayStorage;
    sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850, &qword_100376280);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v147 + 104))(v151, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v148);
    v132 = v153;
    v133 = v152;
    v134 = v154;
    (*(v153 + 104))(v152, enum case for DispatchQoS.QoSClass.default(_:), v154);
    static OS_dispatch_queue.global(qos:)();
    (*(v132 + 8))(v133, v134);
    v135 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();

    v136 = v145;
    *(v131 + 16) = 0xD000000000000034;
    *(v131 + 24) = v136;
    v137 = v144;
    *(v131 + 32) = 0xD000000000000062;
    *(v131 + 40) = v137;
    *(v131 + 56) = 9;
    *(v131 + 48) = 653;
    v138 = v142;
    *(v131 + 64) = v143;
    *(v131 + 72) = v138;
    *(v131 + 80) = 0;
    *(v131 + 88) = v135;
    v47 = v155;
    sub_100031994(v155, v156, v139, v140);
    return v47;
  }

  v96 = v75 >> 62;
  if ((v75 >> 62) > 1)
  {
    v143 = 1701736270;
    if (v96 != 2)
    {
LABEL_43:
      v110 = v155;
      v111 = v75;
LABEL_45:
      sub_100031914(v110, v111);
      v95 = 0xE400000000000000;
      goto LABEL_48;
    }

    result = v155;
    v99 = *(v155 + 16);
    v98 = *(v155 + 24);
    v97 = v98 - v99;
    if (!__OFSUB__(v98, v99))
    {
      goto LABEL_37;
    }

    __break(1u);
  }

  else
  {
    v143 = 1701736270;
    if (!v96)
    {
      v97 = BYTE6(v75);
      goto LABEL_38;
    }
  }

  result = v155;
  if (__OFSUB__(HIDWORD(v155), v155))
  {
    __break(1u);
    goto LABEL_56;
  }

  v97 = HIDWORD(v155) - v155;
LABEL_37:
  sub_1000318C0(result, v75, v80, v81);
LABEL_38:
  if (v97 <= 0)
  {
    goto LABEL_43;
  }

  static String.Encoding.utf8.getter();
  v100 = v75;
  v101 = v155;
  v102 = String.init(data:encoding:)();
  if (!v103)
  {
    v110 = v101;
    v111 = v100;
    goto LABEL_45;
  }

  v104 = v102;
  v95 = v103;
  v161 = v102;
  v162 = v103;

  v105 = String.count.getter();

  if (v105 <= 200)
  {
    sub_100031914(v155, v156);
    goto LABEL_47;
  }

  v106 = String.count.getter();
  v107 = __OFSUB__(v106, 200);
  result = v106 - 200;
  v108 = v156;
  if (!v107)
  {
    sub_10003A5CC(result);
    v109._countAndFlagsBits = 774778400;
    v109._object = 0xE400000000000000;
    String.append(_:)(v109);
    sub_100031914(v155, v108);
    v104 = v161;
    v95 = v162;
LABEL_47:
    v143 = v104;
    goto LABEL_48;
  }

LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_100036D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  result = (*((swift_isaMask & *v3) + 0x198))(v9);
  if ((result & 1) == 0)
  {
    v13 = *((swift_isaMask & *v3) + 0x140);

    v13(a2, a3);
    if (a1)
    {
      v24[0] = a1;
      swift_errorRetain();
      swift_errorRetain();
      sub_1000039E8(&qword_1004AB0A0, &unk_100377120);
      type metadata accessor for KnoxServiceClient.ClientError();
      if (swift_dynamicCast() || (v24[0] = a1, swift_errorRetain(), swift_dynamicCast()))
      {

        v14 = v27;
      }

      else
      {
        v16 = _convertErrorToNSError(_:)();
        swift_allocObject();
        v14 = sub_100059DCC(0xD000000000000019, 0x800000010042B770, 0xD000000000000062, 0x800000010042AE50, 721, v16);
      }

      v17 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_lastError;
      swift_beginAccess();
      *(v4 + v17) = v14;
    }

    else
    {
      v15 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_lastError;
      swift_beginAccess();
      *(v4 + v15) = 0;
    }

    v18 = type metadata accessor for URL();
    (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
    v19 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_nextPageURL;
    swift_beginAccess();
    sub_10001F8D8(v11, v4 + v19, &qword_1004A6D30, &unk_100376820);
    v20 = swift_endAccess();
    v21 = (*((swift_isaMask & *v4) + 0x240))(v20);
    [v21 cancel];

    (*((swift_isaMask & *v4) + 0x2D8))(1);
    (*((swift_isaMask & *v4) + 0x1A0))(1);
    sub_100003B20(*(v4 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client) + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_delegate, v24);
    v22 = v25;
    v23 = v26;
    sub_10000E2A8(v24, v25);
    (*(v23 + 16))(v4, a1, v22, v23);
    return sub_100003C3C(v24);
  }

  return result;
}

id sub_100037198(uint64_t a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_session) configuration];
  [v3 setNetworkServiceType:a1];
  v4 = [v3 networkServiceType];
  sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100376F00;
    v6 = [v3 networkServiceType];
    *(v5 + 56) = &type metadata for UInt;
    *(v5 + 64) = &protocol witness table for UInt;
    *(v5 + 32) = v6;
    swift_getObjectType();
    v7 = _typeName(_:qualified:)();
    v9 = v8;
    *(v5 + 96) = &type metadata for String;
    v10 = sub_10001A9EC();
    *(v5 + 72) = v7;
    *(v5 + 80) = v9;
    *(v5 + 136) = &type metadata for String;
    *(v5 + 144) = v10;
    *(v5 + 104) = v10;
    *(v5 + 112) = 0xD000000000000028;
    *(v5 + 120) = 0x800000010042B540;
    sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
    v11 = static OS_os_log.default.getter();
    v12 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Setting networkServiceType to non-default value:%{public}i in %{public}s.%{public}s", 83, 2, &_mh_execute_header, v11, v12, v5);
  }

  else
  {
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100376BB0;
    swift_getObjectType();
    v14 = _typeName(_:qualified:)();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    v17 = sub_10001A9EC();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    *(v13 + 96) = &type metadata for String;
    *(v13 + 104) = v17;
    *(v13 + 64) = v17;
    *(v13 + 72) = 0xD000000000000028;
    *(v13 + 80) = 0x800000010042B540;
    sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
    v11 = static OS_os_log.default.getter();
    v18 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Using default networkServiceType in %{public}s.%{public}s", 57, 2, &_mh_execute_header, v11, v18, v13);
  }

  v19 = [objc_opt_self() sessionWithConfiguration:v3];
  return v19;
}

double sub_1000374E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics);
  v2 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_lookbackSecondsForRecentBytes;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_100037534(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics);
  v4 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_lookbackSecondsForRecentBytes;
  result = swift_beginAccess();
  *(v3 + v4) = a1;
  return result;
}

uint64_t (*sub_100037590(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics);
  v6 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_lookbackSecondsForRecentBytes;
  *(v3 + 32) = v5;
  *(v3 + 40) = v6;
  swift_beginAccess();
  *(v4 + 24) = *(v5 + v6);
  return sub_100037630;
}

void sub_100037630(void **a1)
{
  v1 = *a1;
  *(v1[4] + v1[5]) = v1[3];
  free(v1);
}

uint64_t MultiPageCapable<>.paginationLoop()(uint64_t a1, uint64_t a2)
{
  v144 = a2;
  *&v143 = a1;
  v2 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  __chkstk_darwin(v2 - 8);
  v132 = &v101 - v3;
  v142 = type metadata accessor for DispatchTime();
  v149 = *(v142 - 8);
  v4 = __chkstk_darwin(v142);
  v141 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v140 = &v101 - v6;
  v124 = type metadata accessor for DispatchQoS.QoSClass();
  v7 = *(v124 - 8);
  __chkstk_darwin(v124);
  v9 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v10 = *(v123 - 8);
  __chkstk_darwin(v123);
  v12 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v13);
  v15 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v16 - 8);
  v18 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
  v148 = "error, and we can try again.";
  static DispatchQoS.userInitiated.getter();
  *&aBlock = _swiftEmptyArrayStorage;
  v20 = sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  v21 = sub_1000039E8(&unk_1004A7850, &qword_100376280);
  v22 = sub_10003DEE8();
  v112 = v21;
  v111 = v22;
  v117 = v13;
  v113 = v20;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v23 = *(v10 + 104);
  v110 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v119 = v10 + 104;
  v109 = v23;
  v23(v12);
  v24 = *(v7 + 104);
  v108 = enum case for DispatchQoS.QoSClass.default(_:);
  v25 = v124;
  v107 = v7 + 104;
  v106 = v24;
  v24(v9);
  static OS_dispatch_queue.global(qos:)();
  v26 = *(v7 + 8);
  v120 = v9;
  v121 = v7 + 8;
  v105 = v26;
  v26(v9, v25);
  v115 = v18;
  v116 = v15;
  v118 = v12;
  v114 = v19;
  v139 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  v125 = (v27 + 16);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  v148 = (v28 + 16);
  v138 = dispatch_semaphore_create(0);
  type metadata accessor for RetryRunner();
  swift_allocObject();
  v29 = v150;
  v145 = sub_100072164(v29);
  v150 = 0;
  v147 = v29;
  v30 = (swift_isaMask & *v29);
  v137 = v30 + 124;
  v136 = v30 + 111;
  v130 = v30 + 45;
  v135 = v149 + 1;
  v134 = v30[124];
  v133 = v30[111];
  v104 = 0x800000010042B0F0;
  v129 = v30[45];
  v103 = 0x800000010042AE50;
  v102 = "hivePointer.swift";
  v101 = v152;
  v146 = v27;
  v122 = v28;
  do
  {
    v36 = v147;
    v134(0);
    v37 = swift_allocObject();
    v38 = v144;
    v37[2] = v143;
    v37[3] = v38;
    v39 = v139;
    v40 = v146;
    v37[4] = v139;
    v37[5] = v40;
    v37[6] = v28;
    v37[7] = v36;
    v41 = v138;
    v37[8] = v138;
    v42 = v36;
    v43 = v39;

    v44 = v41;
    sub_100072A1C(sub_10003E014, v37);

    v45 = v141;
    v46 = static DispatchTime.now()();
    v47 = v42;
    v133(v46);
    v48 = v140;
    + infix(_:_:)();
    isa = v135->isa;
    v50 = v45;
    v51 = v142;
    (v135->isa)(v50, v142);
    v131 = v44;
    OS_dispatch_semaphore.wait(timeout:)();
    v52 = isa(v48, v51);
    __chkstk_darwin(v52);
    *(&v101 - 2) = v148;
    v53 = sub_1000039E8(&unk_1004A73A0, &qword_100376F70);
    v149 = v43;
    v54 = v150;
    OS_dispatch_queue.sync<A>(execute:)();
    if (aBlock)
    {
      v150 = v54;

LABEL_3:
      v32 = v47;
      goto LABEL_4;
    }

    v31 = static DispatchTimeoutResult.== infix(_:_:)();
    if ((v31 & 1) == 0)
    {
      v150 = v54;
      goto LABEL_3;
    }

    v126 = v53;
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(21);

    strcpy(&aBlock, "getting page ");
    HIWORD(aBlock) = -4864;
    __chkstk_darwin(v55);
    *(&v101 - 2) = v125;
    OS_dispatch_queue.sync<A>(execute:)();
    v150 = v54;
    v56._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v56);

    v57._countAndFlagsBits = 543584032;
    v57._object = 0xE400000000000000;
    String.append(_:)(v57);
    v32 = v47;
    v58 = [v47 description];
    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v60;

    v62._countAndFlagsBits = v59;
    v62._object = v61;
    String.append(_:)(v62);

    v127 = *(&aBlock + 1);
    v128 = aBlock;
    type metadata accessor for KnoxServiceClient.ClientError();
    v63 = swift_allocObject();
    static DispatchQoS.userInitiated.getter();
    *&aBlock = _swiftEmptyArrayStorage;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v109(v118, v110, v123);
    v64 = v120;
    v65 = v124;
    v106(v120, v108, v124);
    static OS_dispatch_queue.global(qos:)();
    v105(v64, v65);
    v66 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v67 = v104;
    *(v63 + 16) = 0xD000000000000010;
    *(v63 + 24) = v67;
    v68 = v103;
    *(v63 + 32) = 0xD000000000000062;
    *(v63 + 40) = v68;
    *(v63 + 56) = 20;
    *(v63 + 48) = 1161;
    v69 = v127;
    *(v63 + 64) = v128;
    *(v63 + 72) = v69;
    *(v63 + 80) = 0;
    *(v63 + 88) = v66;
    sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
    v70 = swift_allocError();
    *v71 = v63;
    v72 = swift_allocObject();
    *(v72 + 16) = v148;
    *(v72 + 24) = v70;
    v73 = swift_allocObject();
    *(v73 + 16) = sub_10003E14C;
    *(v73 + 24) = v72;
    v152[2] = sub_10004076C;
    v152[3] = v73;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v152[0] = sub_10003885C;
    v152[1] = &unk_10047DA10;
    v74 = _Block_copy(&aBlock);

    swift_errorRetain();

    dispatch_sync(v149, v74);

    _Block_release(v74);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      return result;
    }

    v77 = swift_allocError();
    *v78 = v63;
    v79 = *((swift_isaMask & *v47) + 0x410);

    v79(v77);

    v28 = v122;
LABEL_4:
    v33 = v132;
    v129(v31);
    v34 = type metadata accessor for URL();
    v35 = (*(*(v34 - 8) + 48))(v33, 1, v34);
    sub_100013F2C(v33, &qword_1004A6D30, &unk_100376820);
  }

  while (v35 != 1);
  v144 = sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
  v80 = swift_allocObject();
  v143 = xmmword_100376BB0;
  *(v80 + 16) = xmmword_100376BB0;
  __chkstk_darwin(v80);
  *(&v101 - 2) = v125;
  OS_dispatch_queue.sync<A>(execute:)();
  v81 = aBlock;
  *(v80 + 56) = &type metadata for Int;
  *(v80 + 64) = &protocol witness table for Int;
  *(v80 + 32) = v81;
  v82 = [v32 description];
  v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v85 = v84;

  *(v80 + 96) = &type metadata for String;
  v86 = sub_10001A9EC();
  *(v80 + 104) = v86;
  *(v80 + 72) = v83;
  *(v80 + 80) = v85;
  sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
  v87 = static OS_os_log.default.getter();
  v88 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("paginationLoop finished after %{public}i pages for %{public}s", 61, 2, &_mh_execute_header, v87, v88, v80);

  __chkstk_darwin(v89);
  *(&v101 - 2) = v148;
  v90 = OS_dispatch_queue.sync<A>(execute:)();
  if (aBlock)
  {
    v91 = static os_log_type_t.error.getter();
    v92 = swift_allocObject();
    *(v92 + 16) = v143;
    v93 = (*((swift_isaMask & *v32) + 0x330))();
    *(v92 + 56) = &type metadata for String;
    *(v92 + 64) = v86;
    *(v92 + 32) = v93;
    *(v92 + 40) = v94;
    swift_getErrorValue();
    v95 = Error.localizedDescription.getter();
    *(v92 + 96) = &type metadata for String;
    *(v92 + 104) = v86;
    *(v92 + 72) = v95;
    *(v92 + 80) = v96;
    v97 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v91, &_mh_execute_header, v97, "%{public}s %{public}s", 21, 2, v92);
  }

  __chkstk_darwin(v90);
  *(&v101 - 2) = v125;
  v98 = v149;
  v99 = OS_dispatch_queue.sync<A>(execute:)();
  v100 = aBlock;
  __chkstk_darwin(v99);
  *(&v101 - 2) = v148;
  OS_dispatch_queue.sync<A>(execute:)();

  return v100;
}

uint64_t sub_100038884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__interruptionReason);
  *v3 = a2;
  v3[1] = a3;
}

uint64_t sub_1000388D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_lastError;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

id sub_1000389B0()
{
  v1 = v0;
  v81 = 6369134;
  v2 = sub_1000039E8(&qword_1004A73B0, &unk_100376F78);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v73 - v6;
  v76 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  v8 = __chkstk_darwin(v76);
  v75._object = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v73 - v11;
  v13 = (*((swift_isaMask & **(v0 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client)) + 0x1E8))(&v85, v10);
  v14 = v86;
  if (v86 || (__chkstk_darwin(v13), *(&v73 - 2) = v0, sub_1000039E8(&qword_1004A72D8, &qword_100376EC0), v13 = OS_dispatch_queue.sync<A>(execute:)(), (v14 = v86) != 0))
  {
    v80._object = v14;
    v15 = v85;
  }

  else
  {
    v80._object = 0xE300000000000000;
    v15 = 6369134;
  }

  v80._countAndFlagsBits = v15;
  v79 = (*((swift_isaMask & *v0) + 0x1C8))(v13);
  v78 = (*((swift_isaMask & *v0) + 0x198))();
  LODWORD(v77) = (*((swift_isaMask & *v0) + 0x2D0))();
  v16 = *((swift_isaMask & *v0) + 0x240);
  v17 = v16();
  if (!v17)
  {
    goto LABEL_13;
  }

  v18 = v17;
  v19 = [v17 currentRequest];

  if (v19)
  {
    static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = type metadata accessor for URLRequest();
  v22 = *(v21 - 8);
  (*(v22 + 56))(v5, v20, 1, v21);
  sub_10003E154(v5, v7, &qword_1004A73B0, &unk_100376F78);
  if ((*(v22 + 48))(v7, 1, v21) == 1)
  {
    v23 = &qword_1004A73B0;
    v24 = &unk_100376F78;
    v25 = v7;
LABEL_12:
    sub_100013F2C(v25, v23, v24);
LABEL_13:
    v29 = type metadata accessor for URL();
    (*(*(v29 - 8) + 56))(v12, 1, 1, v29);
    goto LABEL_14;
  }

  object = v75._object;
  URLRequest.url.getter();
  (*(v22 + 8))(v7, v21);
  v27 = type metadata accessor for URL();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(object, 1, v27) == 1)
  {
    v23 = &qword_1004A6D30;
    v24 = &unk_100376820;
    v25 = object;
    goto LABEL_12;
  }

  URL.absoluteURL.getter();
  (*(v28 + 8))(object, v27);
  (*(v28 + 56))(v12, 0, 1, v27);
LABEL_14:
  v75._countAndFlagsBits = String.init<A>(describing:)();
  v75._object = v30;
  v31 = v16();
  if (v31)
  {
    v32 = v31;
    v33 = [v31 description];
    v74._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v74._object = v34;
  }

  else
  {
    v74._object = 0xE300000000000000;
    v74._countAndFlagsBits = 7104878;
  }

  __chkstk_darwin(v31);
  *(&v73 - 2) = v1;
  sub_1000039E8(&unk_1004A7340, &unk_100376F30);
  OS_dispatch_queue.sync<A>(execute:)();
  v76 = 0;
  v35 = v85;
  if (v85)
  {
    v36 = [v85 allHeaderFields];

    v37 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v83 = 0xD000000000000014;
    v84 = 0x800000010042B110;
    AnyHashable.init<A>(_:)();
    if (*(v37 + 16) && (v38 = sub_100013470(&v85), (v39 & 1) != 0))
    {
      sub_100003CA0(*(v37 + 56) + 32 * v38, v87);
      sub_1000142F0(&v85);

      if (swift_dynamicCast())
      {
        v40 = v84;
        v81 = v83;
        goto LABEL_24;
      }
    }

    else
    {

      sub_1000142F0(&v85);
    }
  }

  v40 = 0xE300000000000000;
LABEL_24:
  if (v77)
  {
    v41 = 0xE300000000000000;
  }

  else
  {
    v41 = 0xE200000000000000;
  }

  if (v77)
  {
    v42 = 7562585;
  }

  else
  {
    v42 = 28494;
  }

  v77 = v42;
  if (v78)
  {
    v43 = 0xE300000000000000;
  }

  else
  {
    v43 = 0xE200000000000000;
  }

  if (v78)
  {
    v44 = 7562585;
  }

  else
  {
    v44 = 28494;
  }

  if (v79)
  {
    v45 = 0xE300000000000000;
  }

  else
  {
    v45 = 0xE200000000000000;
  }

  if (v79)
  {
    v46 = 7562585;
  }

  else
  {
    v46 = 28494;
  }

  v85 = 0;
  v86 = 0xE000000000000000;
  _StringGuts.grow(_:)(219);
  v47 = type metadata accessor for KnoxTask(0);
  v82.receiver = v1;
  v82.super_class = v47;
  v48 = objc_msgSendSuper2(&v82, "description");
  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v50;

  v52._countAndFlagsBits = v49;
  v52._object = v51;
  String.append(_:)(v52);

  v53._countAndFlagsBits = 0xD000000000000016;
  v53._object = 0x800000010042B130;
  String.append(_:)(v53);
  String.append(_:)(v80);

  v54._countAndFlagsBits = 0xD00000000000001ALL;
  v54._object = 0x800000010042B150;
  String.append(_:)(v54);
  v55._countAndFlagsBits = v81;
  v55._object = v40;
  String.append(_:)(v55);

  v56._countAndFlagsBits = 0xD000000000000013;
  v56._object = 0x800000010042B170;
  String.append(_:)(v56);
  String.append(_:)(v74);

  v57._countAndFlagsBits = 0xD000000000000015;
  v57._object = 0x800000010042B190;
  String.append(_:)(v57);
  String.append(_:)(v75);

  v58._countAndFlagsBits = 0x726174537369202CLL;
  v58._object = 0xEC0000003D646574;
  String.append(_:)(v58);
  v59._countAndFlagsBits = v46;
  v59._object = v45;
  String.append(_:)(v59);

  v60._countAndFlagsBits = 0x6873696E6966202CLL;
  v60._object = 0xEB000000003D6465;
  String.append(_:)(v60);
  v61._countAndFlagsBits = v44;
  v61._object = v43;
  String.append(_:)(v61);

  v62._countAndFlagsBits = 0x727265746E69202CLL;
  v62._object = 0xEE003D6465747075;
  String.append(_:)(v62);
  v63._countAndFlagsBits = v77;
  v63._object = v41;
  String.append(_:)(v63);

  v64._countAndFlagsBits = 0xD000000000000016;
  v64._object = 0x800000010042B1B0;
  String.append(_:)(v64);
  v65._countAndFlagsBits = (*((swift_isaMask & *v1) + 0x138))();
  String.append(_:)(v65);

  v66._object = 0x800000010042B1D0;
  v66._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v66);
  OS_dispatch_queue.sync<A>(execute:)();
  v67._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v67);

  v68._countAndFlagsBits = 0x546C61746F74202CLL;
  v68._object = 0xED00003D73656972;
  String.append(_:)(v68);
  v87[0] = (*((swift_isaMask & *v1) + 0x3D8))();
  v69._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v69);

  v70._countAndFlagsBits = 0x65776F6C6C61202CLL;
  v70._object = 0xEF3D736569725464;
  String.append(_:)(v70);
  v87[0] = (*((swift_isaMask & *v1) + 0x300))();
  v71._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v71);

  return v85;
}

double sub_1000395A4@<D0>(_OWORD *a2@<X8>)
{
  sub_1000039E8(&qword_1004A72D8, &qword_100376EC0);
  OS_dispatch_queue.sync<A>(execute:)();
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10003962C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__sessionTraceId);
  v2 = *(a1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__sessionTraceId + 8);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_100039658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__sessionTraceId);
  *v3 = a2;
  v3[1] = a3;
}

id sub_1000396A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__urlSessionTask);
  *a2 = v2;
  return v2;
}

uint64_t sub_1000396EC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

void *sub_100039758@<X0>(void *a2@<X8>)
{
  sub_1000039E8(&unk_1004A7340, &unk_100376F30);
  result = OS_dispatch_queue.sync<A>(execute:)();
  *a2 = v4;
  return result;
}

id sub_1000397E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__lastHTTPResponse);
  *a2 = v2;
  return v2;
}

void sub_100039818(uint64_t a1, void *a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__lastHTTPResponse);
  *(a1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__lastHTTPResponse) = a2;
  v2 = a2;
}

uint64_t sub_100039860(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a2 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100040768;
  *(v6 + 24) = v5;
  v10[4] = sub_10004076C;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10003885C;
  v10[3] = &unk_10047DE40;
  v7 = _Block_copy(v10);
  v8 = v3;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

char *KnoxTask.__allocating_init(client:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_10003D38C(a1);

  return v4;
}

uint64_t sub_100039A44@<X0>(void *a1@<X0>, unint64_t a2@<X8>)
{
  v4 = type metadata accessor for DispatchQoS.QoSClass();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v84 = *(v8 - 8);
  v85 = v8;
  __chkstk_darwin(v8);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v83);
  v91 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  v86 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  __chkstk_darwin(v14 - 8);
  v76 = &v73 - v15;
  v16 = type metadata accessor for CharacterSet();
  v77 = *(v16 - 8);
  v78 = v16;
  __chkstk_darwin(v16);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = String._bridgeToObjectiveC()();
  v20 = [a1 valueForHTTPHeaderField:v19];

  if (!v20)
  {
    v34 = type metadata accessor for URL();
    return (*(*(v34 - 8) + 56))(a2, 1, 1, v34);
  }

  v75 = a2;
  v79 = v7;
  v80 = v5;
  v81 = v4;
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v89 = v21;
  v90 = v23;
  v87 = 59;
  v88 = 0xE100000000000000;
  sub_10000B080();
  v24 = StringProtocol.components<A>(separatedBy:)();
  v25 = v10;
  if (v24[2] != 2)
  {
    goto LABEL_19;
  }

  v26._countAndFlagsBits = 60;
  v26._object = 0xE100000000000000;
  v27 = String.hasPrefix(_:)(v26);

  if (!v27)
  {
    goto LABEL_19;
  }

  v74 = v10;
  v28 = v24[4];
  v29 = v24[5];

  v30 = sub_10003A67C(v28, v29);
  v32 = v31;
  v25 = v74;

  if (!v32)
  {
    goto LABEL_19;
  }

  if (v30 == 62 && v32 == 0xE100000000000000)
  {
  }

  else
  {
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v35 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  if (v24[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  v36 = v24[7];
  v89 = v24[6];
  v90 = v36;

  static CharacterSet.whitespaces.getter();
  v37 = StringProtocol.trimmingCharacters(in:)();
  v39 = v38;
  (*(v77 + 8))(v18, v78);

  if (v37 == 0x78656E223D6C6572 && v39 == 0xEA00000000002274)
  {

    v25 = v74;
    goto LABEL_15;
  }

  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v25 = v74;
  if (v40)
  {
LABEL_15:
    v41 = v24[5];
    v89 = v24[4];
    v42 = v89;
    v90 = v41;

    result = sub_10003A6FC(60, 0xE100000000000000, v42, v41);
    if ((v43 & 1) == 0)
    {
      String.remove(at:)();

      v87 = 62;
      v88 = 0xE100000000000000;
      __chkstk_darwin(v44);
      *(&v73 - 2) = &v87;
      result = sub_10003D288(sub_100013DA8, (&v73 - 4), v45, v46);
      v47 = v75;
      v48 = v76;
      if ((v49 & 1) == 0)
      {

        String.remove(at:)();

        v51 = v89;
        v50 = v90;
        URL.init(string:)();
        v52 = type metadata accessor for URL();
        v53 = *(v52 - 8);
        if ((*(v53 + 48))(v48, 1, v52) != 1)
        {

          (*(v53 + 32))(v47, v48, v52);
          return (*(v53 + 56))(v47, 0, 1, v52);
        }

        sub_100013F2C(v48, &qword_1004A6D30, &unk_100376820);
        v78 = 0x800000010042B6C0;
        v82 = 0x800000010042AE50;
        v87 = 0;
        v88 = 0xE000000000000000;
        _StringGuts.grow(_:)(85);
        v54._countAndFlagsBits = 0xD000000000000053;
        v54._object = 0x800000010042B710;
        String.append(_:)(v54);
        v55._countAndFlagsBits = v51;
        v55._object = v50;
        String.append(_:)(v55);

        v75 = v88;
        v76 = v87;
        v77 = type metadata accessor for KnoxServiceClient.ClientError();
        v56 = swift_allocObject();
        sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
        v74 = "hivePointer.swift";
        static DispatchQoS.userInitiated.getter();
        v87 = _swiftEmptyArrayStorage;
        sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
        sub_1000039E8(&unk_1004A7850, &qword_100376280);
        sub_10003DEE8();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        (*(v84 + 104))(v25, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v85);
        v58 = v80;
        v57 = v81;
        v59 = v79;
        (*(v80 + 104))(v79, enum case for DispatchQoS.QoSClass.default(_:), v81);
        static OS_dispatch_queue.global(qos:)();
        (*(v58 + 8))(v59, v57);
        v60 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
        v61 = v78;
        *(v56 + 16) = 0xD000000000000019;
        *(v56 + 24) = v61;
        v62 = v82;
        *(v56 + 32) = 0xD000000000000062;
        *(v56 + 40) = v62;
        *(v56 + 56) = 4;
        v63 = 702;
        goto LABEL_20;
      }

LABEL_25:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_19:

  v78 = 0x800000010042B6C0;
  v82 = 0x800000010042AE50;
  v89 = 0;
  v90 = 0xE000000000000000;
  _StringGuts.grow(_:)(49);

  v89 = 0xD00000000000002ELL;
  v90 = 0x800000010042B6E0;
  v64._countAndFlagsBits = v21;
  v64._object = v23;
  String.append(_:)(v64);

  v65._countAndFlagsBits = 39;
  v65._object = 0xE100000000000000;
  String.append(_:)(v65);
  v75 = v90;
  v76 = v89;
  v77 = type metadata accessor for KnoxServiceClient.ClientError();
  v56 = swift_allocObject();
  sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
  v74 = "hivePointer.swift";
  static DispatchQoS.userInitiated.getter();
  v89 = _swiftEmptyArrayStorage;
  sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850, &qword_100376280);
  sub_10003DEE8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v84 + 104))(v25, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v85);
  v67 = v80;
  v66 = v81;
  v68 = v79;
  (*(v80 + 104))(v79, enum case for DispatchQoS.QoSClass.default(_:), v81);
  static OS_dispatch_queue.global(qos:)();
  (*(v67 + 8))(v68, v66);
  v60 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v69 = v78;
  *(v56 + 16) = 0xD000000000000019;
  *(v56 + 24) = v69;
  v70 = v82;
  *(v56 + 32) = 0xD000000000000062;
  *(v56 + 40) = v70;
  *(v56 + 56) = 4;
  v63 = 692;
LABEL_20:
  *(v56 + 48) = v63;
  v71 = v75;
  *(v56 + 64) = v76;
  *(v56 + 72) = v71;
  *(v56 + 80) = 0;
  *(v56 + 88) = v60;
  sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
  swift_allocError();
  *v72 = v56;
  return swift_willThrow();
}

unint64_t sub_10003A5CC(unint64_t result)
{
  if (!result)
  {
    return result;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = v1[1];
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v3 = *v1 & 0xFFFFFFFFFFFFLL;
  }

  result = String.index(_:offsetBy:limitedBy:)();
  if (v4)
  {
    goto LABEL_14;
  }

  if (4 * v3 < result >> 14)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  return String.removeSubrange(_:)();
}

uint64_t sub_10003A67C(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  String.index(before:)();
  return String.subscript.getter();
}

unint64_t sub_10003A6FC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (String.subscript.getter() != a1 || v9 != a2)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      return v8;
    }

    v8 = String.index(after:)();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

void sub_10003A834(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_10003A890(uint64_t *a1))(id **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_task;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_10003A928;
}

void sub_10003A928(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_10003A9A4()
{
  v16 = type metadata accessor for DispatchQoS.QoSClass();
  v1 = *(v16 - 8);
  __chkstk_darwin(v16);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v15 - 8);
  __chkstk_darwin(v15);
  v14 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  *(v0 + 16) = 1232348160;
  Date.init()();
  *(v0 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics__bytesTransferred) = 0;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_startTime;
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  *(v0 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics__elapsedTime) = 0;
  *(v0 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics__elapsedTimeSinceLastUpdate) = 0;
  *(v0 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_lookbackSecondsForRecentBytes) = 0x4014000000000000;
  *(v0 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics__recentBytesTransferred) = 0;
  *(v0 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics__bytesSinceLastUpdate) = 0;
  v13 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_syncronizationQueue;
  sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
  v12 = "- subclass should override";
  static DispatchQoS.userInitiated.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850, &qword_100376280);
  sub_10003DEE8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v14, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v15);
  v10 = v16;
  (*(v1 + 104))(v3, enum case for DispatchQoS.QoSClass.default(_:), v16);
  static OS_dispatch_queue.global(qos:)();
  (*(v1 + 8))(v3, v10);
  *(v0 + v13) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  return v0;
}

uint64_t sub_10003AD9C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a2 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_syncronizationQueue);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100031D1C;
  *(v6 + 24) = v5;
  v9[4] = sub_10004076C;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10003885C;
  v9[3] = &unk_10047DDC8;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10003AF28(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_syncronizationQueue);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100027124;
  *(v6 + 24) = v5;
  v9[4] = sub_10004076C;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10003885C;
  v9[3] = &unk_10047DA88;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10003B088(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v6);
  v11 = &v23 - v10;
  v12 = *(a2 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics__bytesTransferred);
  v13 = __OFSUB__(a1, v12);
  v14 = a1 - v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(a2 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics__bytesTransferred) = a1;
  v15 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics__bytesSinceLastUpdate;
  v16 = *(a2 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics__bytesSinceLastUpdate);
  v13 = __OFADD__(v16, v14);
  v17 = v16 + v14;
  if (v13)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  *(a2 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics__bytesSinceLastUpdate) = v17;
  Date.init()();
  v18 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics__lastUpdated;
  swift_beginAccess();
  (*(v5 + 16))(v8, a2 + v18, v4);
  Date.timeIntervalSince(_:)();
  v20 = v19;
  v21 = *(v5 + 8);
  v21(v8, v4);
  v21(v11, v4);
  v22 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_lookbackSecondsForRecentBytes;
  result = swift_beginAccess();
  if (*(a2 + v22) < v20)
  {
    *(a2 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics__recentBytesTransferred) = *(a2 + v15);
    *(a2 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics__elapsedTimeSinceLastUpdate) = v20;
    *(a2 + v15) = 0;
    Date.init()();
    swift_beginAccess();
    (*(v5 + 40))(a2 + v18, v11, v4);
    return swift_endAccess();
  }

  return result;
}

void (*sub_10003B2B4(uint64_t *a1))(void ****a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  *(v3 + 56) = v1;
  *(v3 + 64) = *(v1 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_syncronizationQueue);
  OS_dispatch_queue.sync<A>(execute:)();
  return sub_10003B36C;
}

void sub_10003B36C(void ****a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v5 = (*a1)[7];
  isEscapingClosureAtFileLocation = (*a1)[8];
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v5;
    v3 = swift_allocObject();
    v3[2] = sub_100031D1C;
    v3[3] = v6;
    v2[4] = sub_10004076C;
    v2[5] = v3;
    *v2 = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = sub_10003885C;
    v2[3] = &unk_10047DB00;
    v7 = _Block_copy(v2);

    dispatch_sync(isEscapingClosureAtFileLocation, v7);
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  *(v8 + 24) = v5;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100031D1C;
  *(v9 + 24) = v8;
  v2[4] = sub_10004076C;
  v2[5] = v9;
  *v2 = _NSConcreteStackBlock;
  v2[1] = 1107296256;
  v2[2] = sub_10003885C;
  v2[3] = &unk_10047DB78;
  v10 = _Block_copy(v2);

  dispatch_sync(isEscapingClosureAtFileLocation, v10);
  _Block_release(v10);
  v11 = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
    return;
  }

LABEL_5:

  free(v2);
}

double sub_10003B654@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v4 = sub_1000039E8(&qword_1004A73C0, &unk_100376A70);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    if (((*((swift_isaMask & *Strong) + 0x198))() & 1) == 0)
    {
      v16 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_startTime;
      swift_beginAccess();
      sub_100013E54(a1 + v16, v6, &qword_1004A73C0, &unk_100376A70);
      if ((*(v8 + 48))(v6, 1, v7) != 1)
      {
        (*(v8 + 32))(v13, v6, v7);
        Date.init()();
        Date.timeIntervalSince(_:)();
        v23 = v22;

        v24 = *(v8 + 8);
        v24(v11, v7);
        v24(v13, v7);
        *(a1 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics__elapsedTime) = v23;
        goto LABEL_7;
      }

      sub_100013F2C(v6, &qword_1004A73C0, &unk_100376A70);
      v17 = static os_log_type_t.error.getter();
      sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
      v18 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v18, "KnoxTask.TaskMetrics: elapsedTime was accessed without setting startTime first", 78, 2, _swiftEmptyArrayStorage);
    }
  }

  else
  {
    v19 = static os_log_type_t.error.getter();
    sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
    v20 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, v20, "KnoxTask.TaskMetrics: elapsedTime was accessed without setting associated KnoxTask first", 88, 2, _swiftEmptyArrayStorage);
  }

LABEL_7:
  result = *(a1 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics__elapsedTime);
  *a2 = result;
  return result;
}

double sub_10003B9C4()
{
  v1 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_lookbackSecondsForRecentBytes;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10003BA08(double a1)
{
  v3 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_lookbackSecondsForRecentBytes;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *sub_10003BBA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (v4 > 0.0)
  {
    OS_dispatch_queue.sync<A>(execute:)();
    return OS_dispatch_queue.sync<A>(execute:)();
  }

  return result;
}

uint64_t KnoxTask.TaskMetrics.deinit()
{
  v1 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics__lastUpdated;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectWeakDestroy();
  sub_100013F2C(v0 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_startTime, &qword_1004A73C0, &unk_100376A70);

  return v0;
}

uint64_t KnoxTask.TaskMetrics.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics__lastUpdated;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectWeakDestroy();
  sub_100013F2C(v0 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_startTime, &qword_1004A73C0, &unk_100376A70);

  return swift_deallocClassInstance();
}

id KnoxTask.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KnoxTask(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10003BFB4(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  *a1 = a2;
  swift_errorRetain();
}

void *sub_10003C010(char *a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v91 = a6;
  v88 = a5;
  v12 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  __chkstk_darwin(v12 - 8);
  v14 = &v86[-v13];
  v15 = a4 + 16;
  v93 = a4 + 16;
  result = OS_dispatch_queue.sync<A>(execute:)();
  v17 = aBlock + 1;
  if (__OFADD__(aBlock, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v90 = 0;
  v89 = a7;
  v18 = swift_allocObject();
  v92 = v15;
  *(v18 + 16) = v15;
  *(v18 + 24) = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_100040518;
  *(v19 + 24) = v18;
  v101 = sub_10004076C;
  v102 = v19;
  aBlock = _NSConcreteStackBlock;
  v98 = 1107296256;
  v99 = sub_10003885C;
  v100 = &unk_10047DF30;
  v20 = _Block_copy(&aBlock);

  dispatch_sync(a3, v20);
  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!a2)
  {
    v45 = v91;
    v46 = *(v91 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client);
    v47 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_delegate;
    sub_100003B20(v46 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_delegate, v96);
    sub_1000039E8(&qword_1004A76A8, &qword_1003770A0);
    sub_1000039E8(&qword_1004A76B0, &qword_1003770A8);
    v48 = a1;
    if (swift_dynamicCast())
    {
      v49 = sub_100003C88(v94, &aBlock);
      (*((swift_isaMask & *v45) + 0x168))(v49);
      v50 = type metadata accessor for URL();
      v51 = (*(*(v50 - 8) + 48))(v14, 1, v50);
      v52 = sub_100013F2C(v14, &qword_1004A6D30, &unk_100376820);
      if (v51 == 1 && (__chkstk_darwin(v52), *&v86[-16] = v53, OS_dispatch_queue.sync<A>(execute:)(), v96[0] < 2))
      {
        sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
        v54 = swift_allocObject();
        *(v54 + 16) = xmmword_100376BB0;
        v55 = &a1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
        swift_beginAccess();
        v57 = *v55;
        v56 = *(v55 + 1);
        *(v54 + 56) = &type metadata for String;
        v58 = sub_10001A9EC();
        *(v54 + 64) = v58;
        *(v54 + 32) = v57;
        *(v54 + 40) = v56;

        v59 = [a1 description];
        v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v62 = v61;

        *(v54 + 96) = &type metadata for String;
        *(v54 + 104) = v58;
        *(v54 + 72) = v60;
        *(v54 + 80) = v62;
        v48 = a1;
        sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
        v63 = static OS_os_log.default.getter();
        v64 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("Not expecting multiple pages of data for %{public}s - %{public}s", 64, 2, &_mh_execute_header, v63, v64, v54);
      }

      else
      {
        v71 = v100;
        v72 = v101;
        v73 = sub_10000E2A8(&aBlock, v100);
        __chkstk_darwin(v73);
        *&v86[-16] = v92;
        OS_dispatch_queue.sync<A>(execute:)();
        (*(v72 + 1))(a1, v96[0], v71, v72);
      }

      sub_100003C3C(&aBlock);
    }

    else
    {
      v95 = 0;
      memset(v94, 0, sizeof(v94));
      sub_100013F2C(v94, &qword_1004A76B8, qword_1003770B0);
      sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
      v65 = swift_allocObject();
      *(v65 + 16) = xmmword_100376A40;
      sub_100003B20(v46 + v47, &aBlock);
      v66 = String.init<A>(describing:)();
      v68 = v67;
      *(v65 + 56) = &type metadata for String;
      *(v65 + 64) = sub_10001A9EC();
      *(v65 + 32) = v66;
      *(v65 + 40) = v68;
      sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
      v69 = static OS_os_log.default.getter();
      v70 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Delegate %{public}s is not a MultiPageDelegate", 46, 2, &_mh_execute_header, v69, v70, v65);
    }

    sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_100376F00;
    __chkstk_darwin(v74);
    *&v86[-16] = v92;
    OS_dispatch_queue.sync<A>(execute:)();
    v75 = aBlock;
    *(v74 + 56) = &type metadata for Int;
    *(v74 + 64) = &protocol witness table for Int;
    *(v74 + 32) = v75;
    v76 = &v48[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
    swift_beginAccess();
    v78 = *v76;
    v77 = *(v76 + 1);
    *(v74 + 96) = &type metadata for String;
    v79 = sub_10001A9EC();
    *(v74 + 104) = v79;
    *(v74 + 72) = v78;
    *(v74 + 80) = v77;

    v80 = [v48 description];
    v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v83 = v82;

    *(v74 + 136) = &type metadata for String;
    *(v74 + 144) = v79;
    *(v74 + 112) = v81;
    *(v74 + 120) = v83;
    sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
    v84 = static OS_os_log.default.getter();
    v85 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Page %{public}i succeeded for %{public}s - %{public}s", 53, 2, &_mh_execute_header, v84, v85, v74);

    return OS_dispatch_semaphore.signal()();
  }

  v87 = static os_log_type_t.error.getter();
  sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100376260;
  v23 = &a1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
  swift_beginAccess();
  v25 = *v23;
  v24 = *(v23 + 1);
  *(v22 + 56) = &type metadata for String;
  v26 = sub_10001A9EC();
  *(v22 + 64) = v26;
  *(v22 + 32) = v25;
  *(v22 + 40) = v24;
  __chkstk_darwin(v26);
  *&v86[-16] = v92;

  v27 = OS_dispatch_queue.sync<A>(execute:)();
  v28 = aBlock;
  *(v22 + 96) = &type metadata for Int;
  *(v22 + 104) = &protocol witness table for Int;
  *(v22 + 72) = v28;
  result = (*(*a2 + 168))(v27);
  if (v29)
  {
    *(v22 + 136) = &type metadata for String;
    *(v22 + 144) = v26;
    *(v22 + 112) = result;
    *(v22 + 120) = v29;
    v30 = [a1 description];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    *(v22 + 176) = &type metadata for String;
    *(v22 + 184) = v26;
    *(v22 + 152) = v31;
    *(v22 + 160) = v33;
    sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
    v34 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v87, &_mh_execute_header, v34, "%{public}s failed for page %{public}i with error %{public}s - %{public}s", 72, 2, v22);

    type metadata accessor for KnoxServiceClient.ClientError();
    sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
    v35 = swift_allocError();
    *v36 = a2;
    v37 = v88 + 16;
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    *(v38 + 24) = v35;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_100040770;
    *(v39 + 24) = v38;
    v101 = sub_10004076C;
    v102 = v39;
    aBlock = _NSConcreteStackBlock;
    v98 = 1107296256;
    v99 = sub_10003885C;
    v100 = &unk_10047DFA8;
    v40 = _Block_copy(&aBlock);

    swift_errorRetain();

    dispatch_sync(a3, v40);

    _Block_release(v40);
    LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

    if ((v37 & 1) == 0)
    {
      v41 = swift_allocError();
      v42 = v91;
      *v43 = a2;
      v44 = *((swift_isaMask & *v42) + 0x410);

      v44(v41);

      return OS_dispatch_semaphore.signal()();
    }

    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t Restartable.canBeRestarted.getter(uint64_t a1, uint64_t a2)
{
  if (((*(a2 + 8))() & 1) != 0 || ((*(a2 + 56))(a1, a2) & 1) == 0)
  {
    return 0;
  }

  result = (*((swift_isaMask & *v2) + 0x150))();
  if (result)
  {

    return 1;
  }

  return result;
}

Swift::Void __swiftcall Restartable.execute(withMaxiumRestarts:retryDelay:)(Swift::UInt withMaxiumRestarts, Swift::UInt32 retryDelay)
{
  v5 = v4;
  v6 = v3;
  v7 = v2;
  v41 = retryDelay;
  v9 = sub_1000039E8(&qword_1004A73C0, &unk_100376A70);
  __chkstk_darwin(v9 - 8);
  v11 = v34 - v10;
  v12 = *(v4 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics);
  Date.init()();
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  v14 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_startTime;
  swift_beginAccess();
  sub_10001F8D8(v11, v12 + v14, &qword_1004A73C0, &unk_100376A70);
  swift_endAccess();
  (*(v6 + 40))(0, v7, v6);
  v16 = v6 + 32;
  v15 = *(v6 + 32);
  if (v15(v7, v6) <= withMaxiumRestarts)
  {
    v39 = *(v6 + 48);
    v36 = withMaxiumRestarts + 1;
    v38 = withMaxiumRestarts == -1;
    v17 = &swift_isaMask;
    v40 = v6 + 48;
    v34[1] = v6 + 64;
    v37 = xmmword_100376F00;
    v35 = v6;
    while (1)
    {
      v18 = v39(v42, v7, v6);
      if (*v19 == -1)
      {
        break;
      }

      ++*v19;
      v20 = v18(v42, 0);

      if (v15(v7, v6) > withMaxiumRestarts || (Restartable.canBeRestarted.getter(v7, v6) & 1) == 0)
      {
        return;
      }

      sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
      v21 = swift_allocObject();
      *(v21 + 16) = v37;
      v22 = v15(v7, v6);
      *(v21 + 56) = &type metadata for UInt;
      *(v21 + 64) = &protocol witness table for UInt;
      *(v21 + 32) = v22;
      if (v38)
      {
        goto LABEL_10;
      }

      *(v21 + 96) = &type metadata for UInt;
      *(v21 + 104) = &protocol witness table for UInt;
      *(v21 + 72) = v36;
      v23 = [v5 description];
      v24 = v17;
      v25 = v15;
      v26 = withMaxiumRestarts;
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v7;
      v29 = v16;
      v31 = v30;

      *(v21 + 136) = &type metadata for String;
      *(v21 + 144) = sub_10001A9EC();
      *(v21 + 112) = v27;
      withMaxiumRestarts = v26;
      v15 = v25;
      v17 = v24;
      *(v21 + 120) = v31;
      v16 = v29;
      v7 = v28;
      v6 = v35;
      sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
      v32 = static OS_os_log.default.getter();
      v33 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Restarting. This is start %{public}i of %{public}i for %{public}s", 65, 2, &_mh_execute_header, v32, v33, v21);

      (*((*v24 & *v5) + 0x1A0))(0);
      (*((*v24 & *v5) + 0x1D0))(0);
      (*((*v24 & *v5) + 0x158))(0);
      (*((*v24 & *v5) + 0x3E0))(0);
      (*((*v24 & *v5) + 0x2D8))(0);
      (*((*v24 & *v5) + 0x140))(0, 0xE000000000000000);
      (*(v6 + 64))(v7, v6);
      sleep(v41);
      if (v15(v7, v6) > withMaxiumRestarts)
      {
        return;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }
}

unint64_t sub_10003D288(uint64_t (*a1)(void *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = String.index(before:)();
    v13[0] = String.subscript.getter();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

char *sub_10003D38C(void *a1)
{
  v2 = v1;
  v36 = type metadata accessor for DispatchQoS.QoSClass();
  v4 = *(v36 - 8);
  __chkstk_darwin(v36);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v34 = *(v7 - 8);
  v35 = v7;
  __chkstk_darwin(v7);
  v33 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  *&v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_allowedStatusCodes] = &off_10047A748;
  v11 = &v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__interruptionReason];
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  *&v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_lastError] = 0;
  v12 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_nextPageURL;
  v13 = type metadata accessor for URL();
  (*(*(v13 - 8) + 56))(&v1[v12], 1, 1, v13);
  v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__isFinished] = 0;
  v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__isStarted] = 0;
  v14 = &v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__sessionTraceId];
  *v14 = 0;
  v14[1] = 0;
  v30 = v14;
  *&v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__urlSessionTask] = 0;
  *&v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__ahcHttpTask] = 0;
  v15 = &v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__currentRequestURL];
  *v15 = 0;
  v15[1] = 0;
  v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__wasInterrupted] = 0;
  v16 = &v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
  *v16 = 0xD00000000000002ALL;
  v16[1] = 0x800000010042B790;
  v32 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue;
  sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
  v31 = "- subclass should override";
  static DispatchQoS.userInitiated.getter();
  v40 = _swiftEmptyArrayStorage;
  sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850, &qword_100376280);
  sub_10003DEE8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v34 + 104))(v33, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v35);
  v17 = v36;
  (*(v4 + 104))(v6, enum case for DispatchQoS.QoSClass.default(_:), v36);
  static OS_dispatch_queue.global(qos:)();
  (*(v4 + 8))(v6, v17);
  *&v1[v32] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__lastHTTPResponse] = 0;
  v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__status] = 0;
  *&v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__totalTries] = 0;
  v18 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_useExponentialRetryDelay;
  v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_useExponentialRetryDelay] = 0;
  *&v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__allowedTries] = (*((swift_isaMask & *a1) + 0x140))();
  *&v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client] = a1;
  v19 = *((swift_isaMask & *a1) + 0x170);
  v20 = a1;
  *&v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_delay] = v19();
  *&v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_session] = (*((swift_isaMask & *v20) + 0x1D0))();
  *&v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_timeoutSeconds] = (*((swift_isaMask & *v20) + 0x200))();
  v21 = (*((swift_isaMask & *v20) + 0x188))();
  swift_beginAccess();
  v2[v18] = v21 & 1;
  type metadata accessor for KnoxTask.TaskMetrics(0);
  v22 = swift_allocObject();
  v23 = sub_10003A9A4();
  *&v2[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics] = v22;
  (*((swift_isaMask & *v20) + 0x1E8))(&v37, v23);
  v24 = v38;
  if (v38)
  {
    v25 = v30;
    *v30 = v37;
    v25[1] = v24;
  }

  v26 = type metadata accessor for KnoxTask(0);
  v39.receiver = v2;
  v39.super_class = v26;
  v27 = objc_msgSendSuper2(&v39, "init");
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return v27;
}

uint64_t sub_10003DAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
}

uint64_t sub_10003DAF0@<X0>(void *a1@<X8>)
{
  v2 = (*(v1 + 16) + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__interruptionReason);
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
}

uint64_t sub_10003DB30()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__interruptionReason);
  *v2 = v0[3];
  v2[1] = v1;
}

id sub_10003DC00@<X0>(void *a1@<X8>)
{
  v2 = *(*(v1 + 16) + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__urlSessionTask);
  *a1 = v2;
  return v2;
}

void sub_10003DC3C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__urlSessionTask);
  *(v1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__urlSessionTask) = v2;
  v3 = v2;
}

uint64_t sub_10003DC88()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003DCFC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003DD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(*(v4 + 16) + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__ahcHttpTask) = *(v4 + 24);
}

uint64_t sub_10003DDC8()
{

  return _swift_deallocObject(v0, 25, 7);
}

id sub_10003DE18@<X0>(void *a1@<X8>)
{
  v2 = *(*(v1 + 16) + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__lastHTTPResponse);
  *a1 = v2;
  return v2;
}

uint64_t sub_10003DE9C()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10003DEE8()
{
  result = qword_1004A6B70;
  if (!qword_1004A6B70)
  {
    sub_100003A94(&unk_1004A7850, &qword_100376280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A6B70);
  }

  return result;
}

uint64_t sub_10003DF84()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003DFBC()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10003E060@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = swift_beginAccess();
  *a1 = *v3;
  return result;
}

uint64_t sub_10003E0B8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  *a1 = *v3;
  return swift_errorRetain();
}

uint64_t sub_10003E114()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003E154(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000039E8(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10003E1DC()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_10003E214@<D0>(double *a1@<X8>)
{
  result = *(v1 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics__elapsedTimeSinceLastUpdate);
  *a1 = result;
  return result;
}

uint64_t sub_10003E228@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x108))();
  *a2 = result;
  return result;
}

uint64_t sub_10003E28C(void *a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0x110);

  return v2(v3);
}

uint64_t sub_10003E2F8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x138))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10003E35C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((swift_isaMask & **a2) + 0x140);

  return v4(v2, v3);
}

uint64_t sub_10003E3DC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x150))();
  *a2 = result;
  return result;
}

uint64_t sub_10003E444@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x198))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_10003E50C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x1C8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_10003E5D8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4[0] = v2;
  v4[1] = v1;

  return sub_100032F6C(v4);
}

uint64_t sub_10003E614@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x240))();
  *a2 = result;
  return result;
}

uint64_t sub_10003E678(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0x248);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_10003E6E8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x270))();
  *a2 = result;
  return result;
}

uint64_t sub_10003E74C(void *a1, void **a2, uint64_t a3, uint64_t a4)
{
  v4 = *((swift_isaMask & **a2) + 0x278);

  return v4(v5);
}

uint64_t sub_10003E7B8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x2A0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10003E81C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((swift_isaMask & **a2) + 0x2A8);

  return v4(v2, v3);
}

uint64_t sub_10003E89C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x2D0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_10003E964@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x300))();
  *a2 = result;
  return result;
}

uint64_t sub_10003EA28@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_delay;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_10003EA80(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_delay;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_10003EAD4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_10003EB34(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return sub_1000347D8(v1);
}

void *sub_10003EB64@<X0>(_BYTE *a2@<X8>)
{
  result = OS_dispatch_queue.sync<A>(execute:)();
  *a2 = v4;
  return result;
}

uint64_t sub_10003EBE0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x3D8))();
  *a2 = result;
  return result;
}

uint64_t sub_10003ECA4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_useExponentialRetryDelay;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_10003ECFC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_useExponentialRetryDelay;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

double sub_10003ED50@<D0>(void *a1@<X0>, double *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics);
  v4 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_lookbackSecondsForRecentBytes;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_10003EDB4(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics);
  v4 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_lookbackSecondsForRecentBytes;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_10003EE14@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void *sub_10003EECC@<X0>(void *a2@<X8>)
{
  result = OS_dispatch_queue.sync<A>(execute:)();
  *a2 = v4;
  return result;
}

double sub_10003EF40@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_lookbackSecondsForRecentBytes;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_10003EF98(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_lookbackSecondsForRecentBytes;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

void sub_10003EFF4(uint64_t a1)
{
  sub_100040314(319, &qword_1004A6E28, &type metadata accessor for URL);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10003FF7C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003FFB4(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_100040314(319, &qword_1004A74C0, &type metadata accessor for Date);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100040314(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_100040444()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__lastHTTPResponse);
  *(v1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__lastHTTPResponse) = v2;
  v3 = v2;
}

uint64_t sub_100040490@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*(v2 + 16) + *a1);
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1000404C8(void *a1)
{
  v2 = v1[4];
  v3 = (v1[2] + *a1);
  *v3 = v1[3];
  v3[1] = v2;
}

uint64_t sub_100040518()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *v1 = v2;
  return result;
}

void sub_100040948(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16KnoxClientPublic17WestgateTokenTask_westgateToken;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_1000409A8()
{
  v1 = OBJC_IVAR____TtC16KnoxClientPublic17WestgateTokenTask_westgateToken;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1000409F4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic17WestgateTokenTask_westgateToken;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *WestgateTokenTask.__allocating_init(client:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC16KnoxClientPublic17WestgateTokenTask_westgateToken] = 0;
  v4 = sub_10003D38C(a1);

  v5 = &v4[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
  swift_beginAccess();
  strcpy(v5, "WestgateToken");
  *(v5 + 7) = -4864;

  return v4;
}

char *WestgateTokenTask.init(client:)(void *a1)
{
  *(v1 + OBJC_IVAR____TtC16KnoxClientPublic17WestgateTokenTask_westgateToken) = 0;
  v3 = sub_10003D38C(a1);

  v4 = &v3[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
  swift_beginAccess();
  strcpy(v4, "WestgateToken");
  *(v4 + 7) = -4864;

  return v3;
}

void sub_100040C0C(unint64_t a1@<X8>)
{
  v3 = v2;
  v48 = a1;
  v4 = type metadata accessor for URLRequest();
  v46 = *(v4 - 8);
  v47 = v4;
  __chkstk_darwin(v4);
  v56 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS.QoSClass();
  v53 = *(v6 - 8);
  v54 = v6;
  __chkstk_darwin(v6);
  v52 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v50 = *(v8 - 8);
  v51 = v8;
  __chkstk_darwin(v8);
  v49 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v10);
  v57 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  v14 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v45 - v20;
  v22 = *(v1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client);
  (*(v16 + 16))(v19, v22 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_knoxHostURL, v15);
  v58 = v21;
  URL.appendingPathComponent(_:)();
  v23 = *(v16 + 8);
  v23(v19, v15);
  v24 = *(v22 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__knoxExtraHeaders);
  v25 = *(v24 + 16);

  if (v25)
  {
    sub_100013364(0x7A69726F68747541, 0xED00006E6F697461);
    if (v26)
    {
LABEL_8:
      v43 = v58;
      LOBYTE(v59) = 2;
      v44 = v56;
      sub_10005ADB0(v58, v24, 1, v56);
      v23(v43, v15);
      if (!v3)
      {
        (*(v46 + 4))(v48, v44, v47);
      }

      goto LABEL_10;
    }
  }

  v55 = v23;
  v27 = *(v22 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_authToken);
  if (v27)
  {
    v28 = *((swift_isaMask & *v27) + 0x60);
    v29 = v27;
    v30 = v28(0);
    if (v3)
    {
      v55(v58, v15);

      return;
    }

    v40 = v30;
    v41 = v31;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = v24;
    sub_100026BFC(v40, v41, 0x7A69726F68747541, 0xED00006E6F697461, isUniquelyReferenced_nonNull_native);
    v24 = v59;
    v23 = v55;
    goto LABEL_8;
  }

  v47 = 0x800000010042B890;
  v48 = 0x800000010042B900;
  v56 = type metadata accessor for KnoxServiceClient.ClientError();
  v32 = swift_allocObject();
  v45[1] = sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
  v45[2] = v14;
  v46 = "hivePointer.swift";
  static DispatchQoS.userInitiated.getter();
  v59 = _swiftEmptyArrayStorage;
  sub_1000441D0(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850, &qword_100376280);
  sub_10000E720(&qword_1004A6B70, &unk_1004A7850, &qword_100376280, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v50 + 104))(v49, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v51);
  v34 = v52;
  v33 = v53;
  v35 = v54;
  (*(v53 + 104))(v52, enum case for DispatchQoS.QoSClass.default(_:), v54);
  static OS_dispatch_queue.global(qos:)();
  v51 = v15;
  (*(v33 + 8))(v34, v35);
  v36 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  strcpy((v32 + 16), "urlRequest()");
  *(v32 + 29) = 0;
  *(v32 + 30) = -5120;
  v37 = v47;
  *(v32 + 32) = 0xD00000000000006BLL;
  *(v32 + 40) = v37;
  *(v32 + 56) = 14;
  *(v32 + 48) = 37;
  v38 = v48;
  *(v32 + 64) = 0xD000000000000017;
  *(v32 + 72) = v38;
  *(v32 + 80) = 0;
  *(v32 + 88) = v36;
  sub_1000441D0(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
  swift_allocError();
  *v39 = v32;
  swift_willThrow();
  v55(v58, v51);
LABEL_10:
}

uint64_t sub_1000413A4(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v10 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v62);
  v64 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  result = __chkstk_darwin(v12 - 8);
  v15 = v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v2;
  v17 = *&v2[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics];
  v18 = a2 >> 62;
  v66 = v10;
  if ((a2 >> 62) > 1)
  {
    v19 = 0;
    if (v18 != 2)
    {
      goto LABEL_10;
    }

    v21 = *(a1 + 16);
    v20 = *(a1 + 24);
    v19 = v20 - v21;
    if (!__OFSUB__(v20, v21))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v18)
  {
    v19 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v19 = HIDWORD(a1) - a1;
LABEL_10:
  v58 = v15;
  v59 = v8;
  v60 = v6;
  v61 = v5;
  v22 = *(v17 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_syncronizationQueue);
  v23 = swift_allocObject();
  *(v23 + 16) = v19;
  *(v23 + 24) = v17;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_100027124;
  *(v24 + 24) = v23;
  v71 = sub_10001F874;
  v72 = v24;
  aBlock = _NSConcreteStackBlock;
  v68 = 1107296256;
  v69 = sub_10003885C;
  v70 = &unk_10047E020;
  v25 = _Block_copy(&aBlock);

  dispatch_sync(v22, v25);
  _Block_release(v25);
  LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

  if (v25)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v26 = sub_100041C98(&aBlock, a1, a2, type metadata accessor for WestgateToken, &qword_1004A7718, type metadata accessor for WestgateToken, &protocol conformance descriptor for AuthToken, 0x6574616774736557);
  v28 = v27;
  v29 = aBlock;
  v30 = OBJC_IVAR____TtC16KnoxClientPublic17WestgateTokenTask_westgateToken;
  swift_beginAccess();
  v31 = *&v16[v30];
  *&v16[v30] = v29;
  v32 = v29;

  if (v28)
  {
    v54 = 0x800000010042A530;
    v53 = 0x800000010042B890;
    v55 = type metadata accessor for KnoxServiceClient.ClientError();
    v33 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
    v51[1] = "hivePointer.swift";
    v52 = v26;
    static DispatchQoS.userInitiated.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_1000441D0(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    v56 = v16;
    v57 = v32;
    v51[0] = v28;
    sub_1000039E8(&unk_1004A7850, &qword_100376280);
    sub_10000E720(&qword_1004A6B70, &unk_1004A7850, &qword_100376280, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v63 + 104))(v66, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v65);
    v35 = v60;
    v34 = v61;
    v36 = v59;
    (*(v60 + 104))(v59, enum case for DispatchQoS.QoSClass.default(_:), v61);
    static OS_dispatch_queue.global(qos:)();
    (*(v35 + 8))(v36, v34);
    v37 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v38 = v54;
    *(v33 + 16) = 0xD00000000000001ALL;
    *(v33 + 24) = v38;
    v39 = v53;
    *(v33 + 32) = 0xD00000000000006BLL;
    *(v33 + 40) = v39;
    *(v33 + 56) = 7;
    *(v33 + 48) = 59;
    v40 = v51[0];
    *(v33 + 64) = v52;
    *(v33 + 72) = v40;
    *(v33 + 80) = 0;
    *(v33 + 88) = v37;
    sub_1000441D0(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
    v41 = swift_allocError();
    *v42 = v33;
    swift_getErrorValue();

    v43 = Error.localizedDescription.getter();
    sub_100036D50(v41, v43, v44);
  }

  v45 = *&v16[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue];
  v46 = swift_allocObject();
  *(v46 + 16) = v16;
  *(v46 + 24) = 1;
  v47 = swift_allocObject();
  *(v47 + 16) = sub_10001F9F8;
  *(v47 + 24) = v46;
  v71 = sub_10001FA40;
  v72 = v47;
  aBlock = _NSConcreteStackBlock;
  v68 = 1107296256;
  v69 = sub_10003885C;
  v70 = &unk_10047E098;
  v48 = _Block_copy(&aBlock);
  v49 = v16;

  dispatch_sync(v45, v48);
  _Block_release(v48);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_100041C98(void *a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7, uint64_t a8)
{
  v20[0] = a8;
  v21 = a1;
  v13 = type metadata accessor for DecodingError.Context();
  v14 = *(v13 - 8);
  v20[3] = v13;
  v20[4] = v14;
  v15 = __chkstk_darwin(v13);
  v20[1] = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v20[2] = v20 - v17;
  v18 = type metadata accessor for DecodingError();
  __chkstk_darwin(v18);
  a4(0);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  if (a3 >> 60 == 15)
  {
    __break(1u);

    result = sub_100003C3C(&v22);
    __break(1u);
  }

  else
  {
    sub_1000441D0(a5, a6, a7);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    *v21 = v22;
    return 0;
  }

  return result;
}

uint64_t sub_100042404(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = type metadata accessor for DecodingError.Context();
  v5 = __chkstk_darwin(v4);
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DecodingError();
  __chkstk_darwin(v6);
  type metadata accessor for ImageDecryptionComponents(0);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  if (a3 >> 60 == 15)
  {
    __break(1u);

    result = sub_100003C3C(&v9);
    __break(1u);
  }

  else
  {
    sub_1000441D0(&qword_1004A7708, type metadata accessor for ImageDecryptionComponents, &protocol conformance descriptor for ImageDecryptionComponents);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    *a1 = v9;
    return 0;
  }

  return result;
}

uint64_t sub_100042B58(_OWORD *a1, uint64_t a2, unint64_t a3)
{
  v4 = type metadata accessor for DecodingError.Context();
  v5 = __chkstk_darwin(v4);
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DecodingError();
  __chkstk_darwin(v6);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  if (a3 >> 60 == 15)
  {
    __break(1u);

    result = sub_100003C3C(&v9);
    __break(1u);
  }

  else
  {
    sub_10004417C();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    *a1 = v9;
    return 0;
  }

  return result;
}

uint64_t sub_10004325C(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = type metadata accessor for DecodingError.Context();
  v5 = __chkstk_darwin(v4);
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DecodingError();
  __chkstk_darwin(v6);
  type metadata accessor for ArchiveDecryptionComponents();
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  if (a3 >> 60 == 15)
  {
    __break(1u);

    result = sub_100003C3C(&v9);
    __break(1u);
  }

  else
  {
    sub_1000441D0(&qword_1004A7700, type metadata accessor for ArchiveDecryptionComponents, &protocol conformance descriptor for ArchiveDecryptionComponents);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    *a1 = v9;
    return 0;
  }

  return result;
}

char *sub_1000439B0()
{
  v1 = type metadata accessor for DispatchTime();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for RetryRunner();
  swift_allocObject();
  v5 = v0;
  v6 = sub_100072164(v5);
  v7 = dispatch_semaphore_create(0);
  v8 = v5;
  sub_100078AAC(v6, v7, v8);

  static DispatchTime.distantFuture.getter();
  OS_dispatch_semaphore.wait(timeout:)();
  (*(v2 + 8))(v4, v1);
  sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100376BB0;
  v10 = &v8[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
  swift_beginAccess();
  v12 = *v10;
  v11 = *(v10 + 1);
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_10001A9EC();
  *(v9 + 32) = v12;
  *(v9 + 40) = v11;
  v19 = v8;

  OS_dispatch_queue.sync<A>(execute:)();
  v13 = v20;
  *(v9 + 96) = &type metadata for UInt;
  *(v9 + 104) = &protocol witness table for UInt;
  *(v9 + 72) = v13;
  sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
  v14 = static OS_os_log.default.getter();
  v15 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("%{public}s finished in total tries: %{public}i", 46, 2, &_mh_execute_header, v14, v15, v9);

  v16 = v8;

  return v16;
}

Swift::Int sub_100043C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for WestgateTokenTask(0);
  v6 = swift_dynamicCastClassUnconditional();
  if (a2)
  {
    v7 = OBJC_IVAR____TtC16KnoxClientPublic17WestgateTokenTask_westgateToken;
    v8 = v6;
    swift_beginAccess();
    v9 = *(v8 + v7);
    *(v8 + v7) = 0;

    v10 = static os_log_type_t.error.getter();
    sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100376A40;
    result = (*(*a2 + 168))();
    if (!v13)
    {
      __break(1u);
      return result;
    }

    v14 = result;
    v15 = v13;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_10001A9EC();
    *(v11 + 32) = v14;
    *(v11 + 40) = v15;
    sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
    v16 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v16, "%{public}s", 10, 2, v11);
  }

  sub_100003B20(*(a4 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client) + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_delegate, v22);
  v17 = v23;
  v18 = v24;
  sub_10000E2A8(v22, v23);
  if (a2)
  {
    type metadata accessor for KnoxServiceClient.ClientError();
    sub_1000441D0(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
    v19 = swift_allocError();
    *v20 = a2;
  }

  else
  {
    v19 = 0;
  }

  v21 = *(v18 + 16);

  v21(a4, v19, v17, v18);

  sub_100003C3C(v22);
  return OS_dispatch_semaphore.signal()();
}

id WestgateTokenTask.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WestgateTokenTask(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100043EF8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100043F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
}

uint64_t sub_100043F58()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t type metadata accessor for WestgateTokenTask(uint64_t a1)
{
  result = qword_1004A76E8;
  if (!qword_1004A76E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100043FF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16KnoxClientPublic17WestgateTokenTask_westgateToken;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

unint64_t sub_10004417C()
{
  result = qword_1004A76F8;
  if (!qword_1004A76F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A76F8);
  }

  return result;
}

uint64_t sub_1000441D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100044224(uint64_t a1, void *a2, void *a3)
{
  v77 = a3;
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v87 = *(v5 - 8);
  v88 = v5;
  __chkstk_darwin(v5);
  v85 = v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v86 = v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v80);
  v84 = v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  v83 = v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_encryption);
  v16 = OBJC_IVAR____TtCC16KnoxClientPublic25ImageDecryptionComponents10Encryption_kms;
  if (*(v15 + OBJC_IVAR____TtCC16KnoxClientPublic25ImageDecryptionComponents10Encryption_kms) == 2)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      if (*(v15 + v16) <= 1u && *(v15 + v16))
      {
      }

      else
      {
        v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v34 & 1) == 0)
        {
          v76 = 0x800000010042BBF0;
          v77 = 0x800000010042BA70;
          v78 = 0x800000010042BC20;
          v79 = type metadata accessor for KnoxServiceClient.ClientError();
          v26 = swift_allocObject();
          sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
          v75 = "hivePointer.swift";
          static DispatchQoS.userInitiated.getter();
          v98 = _swiftEmptyArrayStorage;
          sub_100047608(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
          sub_1000039E8(&unk_1004A7850, &qword_100376280);
          sub_10000E720(&qword_1004A6B70, &unk_1004A7850, &qword_100376280, &protocol conformance descriptor for [A]);
          dispatch thunk of SetAlgebra.init<A>(_:)();
          (*(v81 + 104))(v86, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v82);
          v36 = v87;
          v35 = v88;
          v37 = v85;
          (*(v87 + 104))(v85, enum case for DispatchQoS.QoSClass.default(_:), v88);
          static OS_dispatch_queue.global(qos:)();
          (*(v36 + 8))(v37, v35);
          v30 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
          v38 = v76;
          *(v26 + 16) = 0xD000000000000026;
          *(v26 + 24) = v38;
          *(v26 + 32) = 0xD000000000000066;
          v39 = v77;
          *(v26 + 56) = 4;
          *(v26 + 40) = v39;
          *(v26 + 48) = 135;
          v33 = 0xD000000000000027;
          goto LABEL_14;
        }
      }

      v50 = *(v15 + OBJC_IVAR____TtCC16KnoxClientPublic25ImageDecryptionComponents10Encryption_key);
      v49 = *(v15 + OBJC_IVAR____TtCC16KnoxClientPublic25ImageDecryptionComponents10Encryption_key + 8);

      v51 = v50;
      v52 = v78;
      v53 = sub_100060488(v51, v49);

      if (v52)
      {
        return;
      }

      goto LABEL_19;
    }
  }

  if (!a2)
  {
    v76 = 0x800000010042BBF0;
    v77 = 0x800000010042BA70;
    v78 = 0x800000010042BC50;
    v79 = type metadata accessor for KnoxServiceClient.ClientError();
    v26 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
    v75 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v98 = _swiftEmptyArrayStorage;
    sub_100047608(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850, &qword_100376280);
    sub_10000E720(&qword_1004A6B70, &unk_1004A7850, &qword_100376280, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v81 + 104))(v86, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v82);
    v28 = v87;
    v27 = v88;
    v29 = v85;
    (*(v87 + 104))(v85, enum case for DispatchQoS.QoSClass.default(_:), v88);
    static OS_dispatch_queue.global(qos:)();
    (*(v28 + 8))(v29, v27);
    v30 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v31 = v76;
    *(v26 + 16) = 0xD000000000000026;
    *(v26 + 24) = v31;
    *(v26 + 32) = 0xD000000000000066;
    v32 = v77;
    *(v26 + 56) = 12;
    *(v26 + 40) = v32;
    *(v26 + 48) = 102;
    v33 = 0xD000000000000050;
LABEL_14:
    *(v26 + 64) = v33;
    *(v26 + 72) = v78;
    *(v26 + 80) = 0;
    *(v26 + 88) = v30;
    sub_100047608(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v40 = v26;
    swift_willThrow();
    return;
  }

  v18 = v79[2];
  v19 = a2;
  v20 = AEAAuthDataCreateWithContext(v18);
  if (!v20)
  {
    v75 = 0x800000010042BBF0;
    v76 = 0x800000010042BA70;
    v77 = 0x800000010042BAE0;
    v78 = type metadata accessor for KnoxServiceClient.ClientError();
    v41 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
    v74 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v98 = _swiftEmptyArrayStorage;
    sub_100047608(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850, &qword_100376280);
    sub_10000E720(&qword_1004A6B70, &unk_1004A7850, &qword_100376280, &protocol conformance descriptor for [A]);
    v79 = v19;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v81 + 104))(v86, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v82);
    v43 = v87;
    v42 = v88;
    v44 = v85;
    (*(v87 + 104))(v85, enum case for DispatchQoS.QoSClass.default(_:), v88);
    static OS_dispatch_queue.global(qos:)();
    (*(v43 + 8))(v44, v42);
    v45 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v46 = v75;
    *(v41 + 16) = 0xD000000000000026;
    *(v41 + 24) = v46;
    *(v41 + 32) = 0xD000000000000066;
    v47 = v76;
    *(v41 + 56) = 0;
    *(v41 + 40) = v47;
    *(v41 + 48) = 107;
    *(v41 + 64) = 0xD00000000000002BLL;
    *(v41 + 72) = v77;
    *(v41 + 80) = 0;
    *(v41 + 88) = v45;
    sub_100047608(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v48 = v41;
    swift_willThrow();
LABEL_16:

    return;
  }

  v21 = v20;
  (*(v12 + 16))(v14, a1 + OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_createdAt, v11);
  v22 = v78;
  sub_10008835C(v21, v14);
  if (v22)
  {
    AEAAuthDataDestroy(v21);

    return;
  }

  v56 = v23;
  v57 = v25;
  v58 = v24;
  v59 = v24;

  sub_100067B44(v60, v58, v57, &v89);
  if (!v90)
  {
    v72 = 0x800000010042BBF0;
    v74 = 0x800000010042BA70;
    v76 = 0x800000010042BCB0;
    v77 = type metadata accessor for KnoxServiceClient.ClientError();
    v61 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
    v71[0] = "hivePointer.swift";
    v78 = v59;
    static DispatchQoS.userInitiated.getter();
    v98 = _swiftEmptyArrayStorage;
    sub_100047608(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    v73 = v56;
    v75 = v21;
    v71[1] = v57;
    sub_1000039E8(&unk_1004A7850, &qword_100376280);
    sub_10000E720(&qword_1004A6B70, &unk_1004A7850, &qword_100376280, &protocol conformance descriptor for [A]);
    v79 = v19;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v81 + 104))(v86, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v82);
    v63 = v87;
    v62 = v88;
    v64 = v85;
    (*(v87 + 104))(v85, enum case for DispatchQoS.QoSClass.default(_:), v88);
    static OS_dispatch_queue.global(qos:)();
    (*(v63 + 8))(v64, v62);
    v65 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v66 = v72;
    *(v61 + 16) = 0xD000000000000026;
    *(v61 + 24) = v66;
    *(v61 + 32) = 0xD000000000000066;
    v67 = v74;
    *(v61 + 56) = 12;
    *(v61 + 40) = v67;
    *(v61 + 48) = 120;
    v68 = v76;
    *(v61 + 64) = 0xD000000000000028;
    *(v61 + 72) = v68;
    *(v61 + 80) = 0;
    *(v61 + 88) = v65;
    sub_100047608(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v69 = v61;
    swift_willThrow();

    AEAAuthDataDestroy(v75);
    goto LABEL_16;
  }

  v94[0] = v89;
  v94[1] = v90;
  v95 = v91;
  v96 = v92;
  v97 = v93;
  sub_100046ABC(v94, v19, v77);
  v53 = v70;

  sub_100047544(&v89);
  AEAAuthDataDestroy(v21);

LABEL_19:
  v54 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v54 + 16) = 32;
  v98 = v53;
  sub_1000039E8(&qword_1004A71E0, &qword_100376D60);
  sub_10000E720(&qword_1004A71E8, &qword_1004A71E0, &qword_100376D60, &protocol conformance descriptor for <A> [A]);
  DataProtocol.copyBytes<A>(to:)();
  v55 = *(v53 + 2);
  if (v55 > 0x20)
  {
    __break(1u);
  }

  else
  {
    *(v54 + 16) = v55;

    sub_100045314((v54 + 32), v54 + 32 + *(v54 + 16), v79);
  }
}

uint64_t sub_100045314(const uint8_t *a1, uint64_t a2, uint64_t a3)
{
  v34 = type metadata accessor for DispatchQoS.QoSClass();
  v6 = *(v34 - 8);
  __chkstk_darwin(v34);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v36 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v33);
  v35 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  result = __chkstk_darwin(v13 - 8);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v17 = v16;
    result = AEAContextSetFieldBlob(*(a3 + 16), 9u, 0, a1, a2 - a1);
    if (result)
    {
      v18 = result;
      v31 = 0x800000010042BD80;
      v32 = 0x800000010042BA70;
      v37 = 0;
      v38 = 0xE000000000000000;
      _StringGuts.grow(_:)(50);

      v37 = 0xD000000000000030;
      v38 = 0x800000010042BDA0;
      v39 = v18;
      v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v19);

      v28 = v38;
      v29 = v37;
      v30 = type metadata accessor for KnoxServiceClient.ClientError();
      v20 = swift_allocObject();
      v27[0] = sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
      v27[1] = v17;
      v27[2] = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v37 = _swiftEmptyArrayStorage;
      sub_100047608(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850, &qword_100376280);
      sub_10000E720(&qword_1004A6B70, &unk_1004A7850, &qword_100376280, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v36 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v9);
      v21 = v34;
      (*(v6 + 104))(v8, enum case for DispatchQoS.QoSClass.default(_:), v34);
      static OS_dispatch_queue.global(qos:)();
      (*(v6 + 8))(v8, v21);
      v22 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v23 = v31;
      *(v20 + 16) = 0xD000000000000013;
      *(v20 + 24) = v23;
      v24 = v32;
      *(v20 + 32) = 0xD000000000000066;
      *(v20 + 40) = v24;
      *(v20 + 56) = 0;
      *(v20 + 48) = 156;
      v25 = v28;
      *(v20 + 64) = v29;
      *(v20 + 72) = v25;
      *(v20 + 80) = 0;
      *(v20 + 88) = v22;
      sub_100047608(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v26 = v20;
      return swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1000457E4@<X0>(char *result@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  if (result && result != a2)
  {
    v3 = result;
    result = sub_100011D30(0, 1, 1, _swiftEmptyArrayStorage);
    v6 = a2;
    v7 = a3;
    v8 = result;
    v9 = v3;
    v10 = *(result + 2);
    do
    {
      v11 = *v9;
      v12 = *(v8 + 24);
      if (v10 >= v12 >> 1)
      {
        v13 = v9;
        result = sub_100011D30((v12 > 1), v10 + 1, 1, v8);
        v6 = a2;
        v7 = a3;
        v8 = result;
        v9 = v13;
      }

      ++v9;
      *(v8 + 16) = v10 + 1;
      *(v8 + v10++ + 32) = v11;
    }

    while (v9 != v6);
    *v7 = v8;
  }

  else
  {
    *a3 = _swiftEmptyArrayStorage;
  }

  return result;
}

void sub_1000458E0()
{
  v2 = v0;
  v68 = type metadata accessor for DispatchQoS.QoSClass();
  v70 = *(v68 - 8);
  __chkstk_darwin(v68);
  v4 = v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v66 = *(v5 - 8);
  v67 = v5;
  __chkstk_darwin(v5);
  v69 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = AEAAuthDataCreateWithContext(*(v2 + 16));
  if (!v72)
  {
    v64 = 0x800000010042BA50;
    v63 = 0x800000010042BA70;
    v65 = 0x800000010042BAE0;
    v72 = type metadata accessor for KnoxServiceClient.ClientError();
    v25 = swift_allocObject();
    v61 = sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
    v62 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    *&v71 = _swiftEmptyArrayStorage;
    v60 = sub_100047608(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850, &qword_100376280);
    v26 = v70;
    sub_10000E720(&qword_1004A6B70, &unk_1004A7850, &qword_100376280, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v66 + 104))(v69, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v67);
    v27 = v68;
    (*(v26 + 104))(v4, enum case for DispatchQoS.QoSClass.default(_:), v68);
    static OS_dispatch_queue.global(qos:)();
    (*(v26 + 8))(v4, v27);
    v28 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v29 = v64;
    *(v25 + 16) = 0xD000000000000015;
    *(v25 + 24) = v29;
    v30 = v63;
    *(v25 + 32) = 0xD000000000000066;
    *(v25 + 40) = v30;
    *(v25 + 56) = 0;
    *(v25 + 48) = 222;
    v31 = v65;
    *(v25 + 64) = 0xD00000000000002BLL;
    *(v25 + 72) = v31;
    *(v25 + 80) = 0;
    *(v25 + 88) = v28;
    sub_100047608(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v32 = v25;
    swift_willThrow();
    return;
  }

  v64 = v7;
  v65 = v4;
  (*(v10 + 16))(v12, *(v2 + 24) + OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_createdAt, v9);
  sub_10008835C(v72, v12);
  if (v1)
  {
    goto LABEL_16;
  }

  v62 = v15;
  v63 = v13;
  if (!v14)
  {
    v33 = v68;
    v34 = v70;
    v58 = 0x800000010042BA70;
    v59 = 0x800000010042BA50;
    v60 = 0x800000010042BB10;
    v61 = type metadata accessor for KnoxServiceClient.ClientError();
    v35 = swift_allocObject();
    v56 = sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
    v57 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    *&v71 = _swiftEmptyArrayStorage;
    v55 = sub_100047608(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850, &qword_100376280);
    sub_10000E720(&qword_1004A6B70, &unk_1004A7850, &qword_100376280, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v66 + 104))(v69, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v67);
    v36 = v65;
    (*(v34 + 104))(v65, enum case for DispatchQoS.QoSClass.default(_:), v33);
    static OS_dispatch_queue.global(qos:)();
    (*(v34 + 8))(v36, v33);
    v37 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v38 = v59;
    *(v35 + 16) = 0xD000000000000015;
    *(v35 + 24) = v38;
    v39 = v58;
    *(v35 + 32) = 0xD000000000000066;
    *(v35 + 40) = v39;
    *(v35 + 56) = 0;
    *(v35 + 48) = 234;
    v40 = v60;
    *(v35 + 64) = 0xD000000000000040;
    *(v35 + 72) = v40;
    *(v35 + 80) = 0;
    *(v35 + 88) = v37;
    sub_100047608(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v41 = v35;
    swift_willThrow();

LABEL_15:

LABEL_16:
    AEAAuthDataDestroy(v72);
    return;
  }

  v16 = v14;
  v17 = SecKeyCopyExternalRepresentation(v16, 0);
  if (!v17)
  {
    goto LABEL_13;
  }

  v18 = v17;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_13;
  }

  v71 = xmmword_100376D40;
  static Data._conditionallyBridgeFromObjectiveC(_:result:)();

  v21 = *(&v71 + 1);
  if (*(&v71 + 1) >> 60 == 15)
  {
LABEL_13:
    v42 = v68;
    v43 = v70;
    v58 = 0x800000010042BA70;
    v59 = 0x800000010042BA50;
    v60 = 0x800000010042BB60;
    v61 = type metadata accessor for KnoxServiceClient.ClientError();
    v44 = swift_allocObject();
    v55 = sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
    v56 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    *&v71 = _swiftEmptyArrayStorage;
    v54[1] = sub_100047608(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    v57 = v16;
    sub_1000039E8(&unk_1004A7850, &qword_100376280);
    sub_10000E720(&qword_1004A6B70, &unk_1004A7850, &qword_100376280, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v66 + 104))(v69, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v67);
    v45 = v65;
    (*(v43 + 104))(v65, enum case for DispatchQoS.QoSClass.default(_:), v42);
    static OS_dispatch_queue.global(qos:)();
    (*(v43 + 8))(v45, v42);
    v46 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v47 = v59;
    *(v44 + 16) = 0xD000000000000015;
    *(v44 + 24) = v47;
    v48 = v58;
    *(v44 + 32) = 0xD000000000000066;
    *(v44 + 40) = v48;
    *(v44 + 56) = 0;
    *(v44 + 48) = 239;
    v49 = v60;
    *(v44 + 64) = 0xD000000000000030;
    *(v44 + 72) = v49;
    *(v44 + 80) = 0;
    *(v44 + 88) = v46;
    sub_100047608(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v50 = v44;
    swift_willThrow();

    v16 = v57;
LABEL_14:

    goto LABEL_15;
  }

  v22 = v71;
  v23 = *(&v71 + 1) >> 62;
  if ((*(&v71 + 1) >> 62) > 1)
  {
    if (v23 != 2)
    {
      v24 = 0;
      goto LABEL_24;
    }

    v52 = *(v71 + 16);
    v51 = *(v71 + 24);
    v24 = v51 - v52;
    if (!__OFSUB__(v51, v52))
    {
      goto LABEL_24;
    }

    __break(1u);
  }

  else if (!v23)
  {
    v24 = BYTE14(v71);
LABEL_24:
    sub_100031994(v22, v21, v19, v20);
    v53 = sub_1000469F0(v24, v22, v21);
    sub_100031914(v22, v21);
    sub_100046534((v53 + 32), v53 + 32 + *(v53 + 16), v2, v53);
    sub_100031914(v22, v21);

    goto LABEL_14;
  }

  if (!__OFSUB__(HIDWORD(v22), v22))
  {
    v24 = HIDWORD(v22) - v22;
    goto LABEL_24;
  }

  __break(1u);
}

uint64_t sub_100046418(uint64_t *a1, void *a2, uint64_t a3, unint64_t a4)
{
  result = *a1;
  v6 = a1[1];
  v7 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v7 == 2)
    {
      v10 = *(a3 + 16);
      v9 = *(a3 + 24);
      v11 = __OFSUB__(v9, v10);
      v8 = v9 - v10;
      if (v11)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      if (v8 < 1)
      {
        goto LABEL_21;
      }

      goto LABEL_11;
    }

LABEL_21:
    v14 = 0;
LABEL_25:
    *a2 = v14;
    return result;
  }

  if (!v7)
  {
    v8 = BYTE6(a4);
    if (!BYTE6(a4))
    {
      goto LABEL_21;
    }

    goto LABEL_11;
  }

  LODWORD(v8) = HIDWORD(a3) - a3;
  if (__OFSUB__(HIDWORD(a3), a3))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v8 = v8;
  if (v8 < 1)
  {
    goto LABEL_21;
  }

LABEL_11:
  if (v7)
  {
    if (v7 == 2)
    {
      v12 = *(a3 + 16);
    }

    else
    {
      v12 = a3;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v8 < v6)
  {
    v6 = v8;
  }

  v13 = v12 + v6;
  if (__OFADD__(v12, v6))
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v13 < v12)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v12 == v13)
  {
    goto LABEL_21;
  }

  if (result)
  {
    v15 = a2;
    result = Data._copyBytesHelper(to:from:)();
    v14 = v13 - v12;
    if (!__OFSUB__(v13, v12))
    {
      a2 = v15;
      goto LABEL_25;
    }

    goto LABEL_30;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100046534(const uint8_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = type metadata accessor for DispatchQoS.QoSClass();
  v7 = *(v31 - 8);
  __chkstk_darwin(v31);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v12);
  v33 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  result = __chkstk_darwin(v14 - 8);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v18 = v17;
    result = AEAContextSetFieldBlob(*(a3 + 16), 7u, 1u, a1, *(a4 + 16));
    if (result)
    {
      v27 = 0x800000010042BA70;
      v28 = 0x800000010042BA50;
      v29 = 0x800000010042BBA0;
      v30 = type metadata accessor for KnoxServiceClient.ClientError();
      v19 = swift_allocObject();
      v26[1] = sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
      v26[2] = v18;
      v26[3] = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v35 = _swiftEmptyArrayStorage;
      sub_100047608(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850, &qword_100376280);
      sub_10000E720(&qword_1004A6B70, &unk_1004A7850, &qword_100376280, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v32 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v34);
      v20 = v31;
      (*(v7 + 104))(v9, enum case for DispatchQoS.QoSClass.default(_:), v31);
      static OS_dispatch_queue.global(qos:)();
      (*(v7 + 8))(v9, v20);
      v21 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v22 = v28;
      *(v19 + 16) = 0xD000000000000015;
      *(v19 + 24) = v22;
      v23 = v27;
      *(v19 + 32) = 0xD000000000000066;
      *(v19 + 40) = v23;
      *(v19 + 56) = 0;
      *(v19 + 48) = 257;
      v24 = v29;
      *(v19 + 64) = 0xD000000000000040;
      *(v19 + 72) = v24;
      *(v19 + 80) = 0;
      *(v19 + 88) = v21;
      sub_100047608(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v25 = v19;
      return swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100046994()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000469F0(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = result;
  if (result)
  {
    v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v7[2] = v6;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v8[1] = v6;
  v9 = 0;
  v8[0] = (v7 + 4);
  result = sub_100046418(v8, &v9, a2, a3);
  if (v3)
  {
    if (v9 <= v6)
    {
      v7[2] = v9;

      return v7;
    }

    goto LABEL_12;
  }

  if (v9 <= v6)
  {
    v7[2] = v9;
    return v7;
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_100046ABC(uint64_t a1, void *a2, void *a3)
{
  v67 = a3;
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v65 = *(v5 - 8);
  v66 = v5;
  __chkstk_darwin(v5);
  v64 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v60 = *(v7 - 8);
  v61 = v7;
  __chkstk_darwin(v7);
  v63 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v59);
  v62 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SHA256();
  v57 = *(v13 - 1);
  __chkstk_darwin(v13);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SHA256Digest();
  v58 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = objc_allocWithZone(type metadata accessor for SAKSDecryptionTask(0));
  v20 = a2;
  sub_1000475AC(a1, &v68);
  v21 = v67;
  v22 = v67;
  v23 = v69;
  v24 = sub_100089F34(v20, a1, v21);
  if (!v23)
  {
    v25 = v24;
    v54 = v15;
    v55 = v18;
    v56 = v12;
    v67 = v13;
    v69 = v16;
    v26 = v66;

    v27 = *((swift_isaMask & *v25) + 0x150);
    v28 = v25;
    v29 = v27();

    if (v29)
    {
      type metadata accessor for KnoxServiceClient.ClientError();
      sub_100047608(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v30 = v29;
    }

    else if (*&v28[OBJC_IVAR____TtC16KnoxClientPublic18SAKSDecryptionTask_serverResponse + 8])
    {
      v53 = v28;

      v31 = Data.init(base64Encoded:options:)();
      v33 = v32;

      if (v33 >> 60 != 15)
      {
        sub_100047608(&unk_1004A7820, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
        v48 = v54;
        v49 = v67;
        dispatch thunk of HashFunction.init()();
        sub_1000318C0(v31, v33, v50, v51);
        sub_100093720(v31, v33, v48);
        sub_100031914(v31, v33);
        v52 = v55;
        dispatch thunk of HashFunction.finalize()();
        (*(v57 + 8))(v48, v49);
        sub_1000039E8(&qword_1004A71E0, &qword_100376D60);
        SHA256Digest.withUnsafeBytes<A>(_:)();
        sub_100031914(v31, v33);

        (*(v58 + 8))(v52, v69);
        return;
      }

      v57 = 0x800000010042BCE0;
      v58 = 0x800000010042BA70;
      v67 = 0x800000010042BD50;
      v69 = type metadata accessor for KnoxServiceClient.ClientError();
      v34 = swift_allocObject();
      sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
      v55 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v68 = _swiftEmptyArrayStorage;
      sub_100047608(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850, &qword_100376280);
      sub_10000E720(&qword_1004A6B70, &unk_1004A7850, &qword_100376280, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v60 + 104))(v63, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v61);
      v36 = v64;
      v35 = v65;
      (*(v65 + 104))(v64, enum case for DispatchQoS.QoSClass.default(_:), v26);
      static OS_dispatch_queue.global(qos:)();
      (*(v35 + 8))(v36, v26);
      v37 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      *(v34 + 16) = 0xD000000000000036;
      *(v34 + 24) = v57;
      *(v34 + 32) = 0xD000000000000066;
      v38 = v58;
      *(v34 + 56) = 7;
      *(v34 + 40) = v38;
      *(v34 + 48) = 198;
      v39 = v67;
      *(v34 + 64) = 0xD000000000000020;
      *(v34 + 72) = v39;
      *(v34 + 80) = 0;
      *(v34 + 88) = v37;
      sub_100047608(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v40 = v34;
      v28 = v53;
    }

    else
    {
      v57 = 0x800000010042BCE0;
      v58 = 0x800000010042BA70;
      v67 = 0x800000010042BD20;
      v69 = type metadata accessor for KnoxServiceClient.ClientError();
      v41 = swift_allocObject();
      v54 = sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
      v55 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v68 = _swiftEmptyArrayStorage;
      sub_100047608(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850, &qword_100376280);
      sub_10000E720(&qword_1004A6B70, &unk_1004A7850, &qword_100376280, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v60 + 104))(v63, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v61);
      v43 = v64;
      v42 = v65;
      (*(v65 + 104))(v64, enum case for DispatchQoS.QoSClass.default(_:), v26);
      static OS_dispatch_queue.global(qos:)();
      (*(v42 + 8))(v43, v26);
      v44 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      *(v41 + 16) = 0xD000000000000036;
      *(v41 + 24) = v57;
      *(v41 + 32) = 0xD000000000000066;
      v45 = v58;
      *(v41 + 56) = 12;
      *(v41 + 40) = v45;
      *(v41 + 48) = 193;
      v46 = v67;
      *(v41 + 64) = 0xD000000000000020;
      *(v41 + 72) = v46;
      *(v41 + 80) = 0;
      *(v41 + 88) = v44;
      sub_100047608(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v47 = v41;
    }

    swift_willThrow();
  }
}

uint64_t sub_100047544(uint64_t a1)
{
  v2 = sub_1000039E8(&qword_1004A7818, &unk_100378D60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100047608(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100047650(AAByteStream_impl *a1, void *a2, char *a3, void *a4)
{
  v46 = a4;
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v44 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v41 = *(v10 - 8);
  v42 = v10;
  __chkstk_darwin(v10);
  v43 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v12);
  v13 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v13 - 8);
  v14 = AEAContextCreateWithEncryptedStream(a1);
  if (v14)
  {
    v15 = v14;
    type metadata accessor for AEAContextWrapper();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = a2;
    v17 = a2;
    v18 = v45;
    sub_1000458E0();
    if (v18)
    {
      v44 = v18;
      LODWORD(v45) = static os_log_type_t.error.getter();
      sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_100376F00;
      v20 = *&v17[OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_digest];
      v21 = *&v17[OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_digest + 8];
      *(v19 + 56) = &type metadata for String;
      v22 = sub_10001A9EC();
      v43 = a3;
      v23 = v22;
      *(v19 + 64) = v22;
      *(v19 + 32) = v20;
      *(v19 + 40) = v21;
      v24 = *&v17[OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_digestAlgorithm];
      v25 = *&v17[OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_digestAlgorithm + 8];
      *(v19 + 96) = &type metadata for String;
      *(v19 + 104) = v22;
      *(v19 + 72) = v24;
      *(v19 + 80) = v25;
      swift_getErrorValue();

      v26 = Error.localizedDescription.getter();
      *(v19 + 136) = &type metadata for String;
      *(v19 + 144) = v23;
      a3 = v43;
      *(v19 + 112) = v26;
      *(v19 + 120) = v27;
      sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
      v28 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v45, &_mh_execute_header, v28, "Failed to set a public signing key on AEAContext for {digest: %@, digest-algorithm: %@} – %@", 102, 0, v19);
    }

    sub_100044224(v17, a3, v46);
  }

  else
  {
    v38 = 0x800000010042BDE0;
    v39 = 0x800000010042BA70;
    v40 = 0x800000010042BE20;
    v45 = type metadata accessor for KnoxServiceClient.ClientError();
    v29 = swift_allocObject();
    v37[1] = sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
    v37[2] = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v47 = _swiftEmptyArrayStorage;
    sub_100047608(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    v37[0] = v7;
    sub_1000039E8(&unk_1004A7850, &qword_100376280);
    sub_10000E720(&qword_1004A6B70, &unk_1004A7850, &qword_100376280, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v16 = v43;
    (*(v41 + 104))(v43, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v42);
    v30 = v44;
    v31 = v37[0];
    (*(v44 + 104))(v9, enum case for DispatchQoS.QoSClass.default(_:), v37[0]);
    static OS_dispatch_queue.global(qos:)();
    (*(v30 + 8))(v9, v31);
    v32 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v33 = v38;
    *(v29 + 16) = 0xD00000000000003ELL;
    *(v29 + 24) = v33;
    *(v29 + 32) = 0xD000000000000066;
    v34 = v39;
    *(v29 + 56) = 0;
    *(v29 + 40) = v34;
    *(v29 + 48) = 82;
    *(v29 + 64) = 0xD000000000000031;
    *(v29 + 72) = v40;
    *(v29 + 80) = 0;
    *(v29 + 88) = v32;
    sub_100047608(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v35 = v29;
    swift_willThrow();
  }

  return v16;
}

void sub_100047C50(uint64_t a1, void *a2, void (*a3)(uint64_t, void *), uint64_t a4)
{
  v76 = a4;
  v77 = a3;
  v78 = type metadata accessor for DispatchQoS.QoSClass();
  v75 = *(v78 - 1);
  __chkstk_darwin(v78);
  v74 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v71 = *(v7 - 8);
  v72 = v7;
  __chkstk_darwin(v7);
  v73 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v70 = v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v11 - 8);
  v69 = v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC16KnoxClientPublic29KnoxURLSessionPinningDelegate_sessionError;
  *(v4 + OBJC_IVAR____TtC16KnoxClientPublic29KnoxURLSessionPinningDelegate_sessionError) = 0;

  v14 = [a2 protectionSpace];
  v15 = [v14 host];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = (v4 + OBJC_IVAR____TtC16KnoxClientPublic29KnoxURLSessionPinningDelegate_expectedHost);
  if (__PAIR128__(v18, v16) == *(v4 + OBJC_IVAR____TtC16KnoxClientPublic29KnoxURLSessionPinningDelegate_expectedHost))
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      v66 = 0x800000010042BED0;
      v67 = 0x800000010042BF00;
      v79 = 0;
      v80 = 0xE000000000000000;
      v68 = v4;
      _StringGuts.grow(_:)(53);
      v32._countAndFlagsBits = 0xD00000000000001ALL;
      v32._object = 0x800000010042BF70;
      String.append(_:)(v32);
      v33 = [a2 protectionSpace];
      v34 = [v33 host];

      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38._countAndFlagsBits = v35;
      v38._object = v37;
      String.append(_:)(v38);

      v39._object = 0x800000010042BF90;
      v39._countAndFlagsBits = 0xD000000000000017;
      String.append(_:)(v39);
      v40 = *v19;
      v41 = v19[1];

      v42._countAndFlagsBits = v40;
      v42._object = v41;
      String.append(_:)(v42);

      v63 = v80;
      v64 = v79;
      v65 = type metadata accessor for KnoxServiceClient.ClientError();
      v43 = swift_allocObject();
      v62[1] = sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
      v62[2] = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v79 = _swiftEmptyArrayStorage;
      sub_10004A230(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850, &qword_100376280);
      sub_10003DEE8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v71 + 104))(v73, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v72);
      v44 = v74;
      v45 = v75;
      v46 = v78;
      (*(v75 + 104))(v74, enum case for DispatchQoS.QoSClass.default(_:), v78);
      static OS_dispatch_queue.global(qos:)();
      (*(v45 + 8))(v44, v46);
      v47 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v48 = v66;
      *(v43 + 16) = 0xD00000000000002BLL;
      *(v43 + 24) = v48;
      v49 = v67;
      *(v43 + 32) = 0xD00000000000006ELL;
      *(v43 + 40) = v49;
      *(v43 + 56) = 19;
      *(v43 + 48) = 83;
      v50 = v63;
      *(v43 + 64) = v64;
      *(v43 + 72) = v50;
      *(v43 + 80) = 0;
      *(v43 + 88) = v47;
      sub_10004A230(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
      v51 = swift_allocError();
      *v52 = v43;
      *(v68 + v13) = v51;

      v53 = static os_log_type_t.error.getter();
      sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_100376A40;
      v55 = sub_10005A570();
      if (v56)
      {
        v57 = v55;
        v58 = v56;
        *(v54 + 56) = &type metadata for String;
        *(v54 + 64) = sub_10001A9EC();
        *(v54 + 32) = v57;
        *(v54 + 40) = v58;
        sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
        v59 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v53, &_mh_execute_header, v59, "%{public}s", 10, 2, v54);

        v77(2, 0);
      }

      else
      {
        __break(1u);
      }

      return;
    }
  }

  v21 = [a2 protectionSpace];
  v22 = [v21 authenticationMethod];

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v23 && v26 == v25)
  {

LABEL_8:

    v29 = sub_10004850C(a2);
    v78 = v28;
    goto LABEL_9;
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v27)
  {
    goto LABEL_8;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v23 && v60 == v25)
  {
  }

  else
  {
    v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v61 & 1) == 0)
    {
      v78 = 0;
      v29 = 1;
      goto LABEL_10;
    }
  }

  v78 = *(v4 + OBJC_IVAR____TtC16KnoxClientPublic29KnoxURLSessionPinningDelegate_clientURLCredential);
  v28 = v78;
  v29 = 0;
LABEL_9:
  v30 = v28;
LABEL_10:
  v77(v29, v78);

  v31 = v78;
}

unint64_t sub_10004850C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchQoS.QoSClass();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v114 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v109 = *(v7 - 8);
  v110 = v7;
  __chkstk_darwin(v7);
  v113 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v108);
  v112 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v111 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 protectionSpace];
  v13 = [v12 host];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = [a1 protectionSpace];
  v18 = [v17 serverTrust];

  if (!v18)
  {
    goto LABEL_15;
  }

  v19 = [a1 protectionSpace];
  v20 = [v19 authenticationMethod];

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v24)
  {

    goto LABEL_6;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v29 & 1) == 0)
  {

LABEL_15:
    v106 = 0x800000010042C070;
    v107 = 0x800000010042BF00;
    v116 = 0;
    v117 = 0xE000000000000000;
    _StringGuts.grow(_:)(77);
    v57._countAndFlagsBits = 0xD00000000000001ALL;
    v57._object = 0x800000010042BF70;
    String.append(_:)(v57);
    v58._countAndFlagsBits = v14;
    v58._object = v16;
    String.append(_:)(v58);

    v59._countAndFlagsBits = 0xD000000000000031;
    v59._object = 0x800000010042C090;
    String.append(_:)(v59);
    v103 = v117;
    v104 = v116;
    v105 = type metadata accessor for KnoxServiceClient.ClientError();
    v60 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
    v102 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v116 = _swiftEmptyArrayStorage;
    sub_10004A230(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850, &qword_100376280);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v109 + 104))(v113, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v110);
    v61 = v114;
    (*(v5 + 104))(v114, enum case for DispatchQoS.QoSClass.default(_:), v4);
    static OS_dispatch_queue.global(qos:)();
    (*(v5 + 8))(v61, v4);
    v62 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v63 = v106;
    *(v60 + 16) = 0xD000000000000015;
    *(v60 + 24) = v63;
    v64 = v107;
    *(v60 + 32) = 0xD00000000000006ELL;
    *(v60 + 40) = v64;
    *(v60 + 56) = 19;
    *(v60 + 48) = 139;
    v65 = v103;
    *(v60 + 64) = v104;
    *(v60 + 72) = v65;
    *(v60 + 80) = 0;
    *(v60 + 88) = v62;
    sub_10004A230(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
    v66 = swift_allocError();
    *v67 = v60;
    *(v2 + OBJC_IVAR____TtC16KnoxClientPublic29KnoxURLSessionPinningDelegate_sessionError) = v66;

    v68 = static os_log_type_t.error.getter();
    sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_100376A40;
    result = sub_10005A570();
    if (v70)
    {
      v71 = result;
      v72 = v70;
      *(v69 + 56) = &type metadata for String;
      *(v69 + 64) = sub_10001A9EC();
      *(v69 + 32) = v71;
      *(v69 + 40) = v72;
      sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
      v73 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v68, &_mh_execute_header, v73, "%{public}s", 10, 2, v69);

      return 1;
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_6:
  sub_10004980C(v25, v26, v27, v28);
  type metadata accessor for SecCertificate(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v31 = SecTrustSetAnchorCertificates(v18, isa);

  v100 = v4;
  v101 = v2;
  v107 = v18;
  v99 = v5;
  if (v31)
  {
    v32 = SecCopyErrorMessageString(v31, 0);
    if (!v32)
    {
      v32 = String._bridgeToObjectiveC()();
    }

    v105 = 0x800000010042C070;
    v106 = 0x800000010042BF00;
    v116 = 0;
    v117 = 0xE000000000000000;
    _StringGuts.grow(_:)(63);
    v33._countAndFlagsBits = 0xD00000000000002ELL;
    v33._object = 0x800000010042C0D0;
    String.append(_:)(v33);
    v98 = v32;
    v115 = v32;
    type metadata accessor for CFString(0);
    _print_unlocked<A, B>(_:_:)();
    v34._countAndFlagsBits = 0x2072657672655320;
    v34._object = 0xED0000203A736177;
    String.append(_:)(v34);
    v35._countAndFlagsBits = v14;
    v35._object = v16;
    String.append(_:)(v35);

    v102 = v117;
    v103 = v116;
    v104 = type metadata accessor for KnoxServiceClient.ClientError();
    v36 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
    static DispatchQoS.userInitiated.getter();
    v116 = _swiftEmptyArrayStorage;
    sub_10004A230(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850, &qword_100376280);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v109 + 104))(v113, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v110);
    v38 = v99;
    v37 = v100;
    v39 = v114;
    (*(v99 + 104))(v114, enum case for DispatchQoS.QoSClass.default(_:), v100);
    static OS_dispatch_queue.global(qos:)();
    (*(v38 + 8))(v39, v37);
    v40 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v41 = v105;
    *(v36 + 16) = 0xD000000000000015;
    *(v36 + 24) = v41;
    v42 = v106;
    *(v36 + 32) = 0xD00000000000006ELL;
    *(v36 + 40) = v42;
    *(v36 + 56) = 19;
    *(v36 + 48) = 152;
    v43 = v102;
    *(v36 + 64) = v103;
    *(v36 + 72) = v43;
    *(v36 + 80) = 0;
    *(v36 + 88) = v40;
    sub_10004A230(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
    v44 = swift_allocError();
    *v45 = v36;
    *(v101 + OBJC_IVAR____TtC16KnoxClientPublic29KnoxURLSessionPinningDelegate_sessionError) = v44;

    v46 = static os_log_type_t.error.getter();
    sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_100376A40;
    result = sub_10005A570();
    if (v49)
    {
      v50 = result;
      v51 = v49;
      *(v47 + 56) = &type metadata for String;
      *(v47 + 64) = sub_10001A9EC();
      *(v47 + 32) = v50;
      *(v47 + 40) = v51;
      sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
      v52 = static OS_os_log.default.getter();
      v53 = 2;
      os_log(_:dso:log:_:_:)(v46, &_mh_execute_header, v52, "%{public}s", 10, 2, v47);

      return v53;
    }

    goto LABEL_24;
  }

  v54 = swift_slowAlloc();
  v55 = SecTrustEvaluateWithError(v18, v54);
  v56 = *v54;
  if (v55)
  {
    if (!v56)
    {

      [objc_allocWithZone(NSURLCredential) initWithTrust:v18];

      return 0;
    }

    goto LABEL_18;
  }

  if (v56)
  {
LABEL_18:
    v98 = v54;
    v116 = v56;
    type metadata accessor for CFError(0);
    sub_10004A230(&qword_1004A7910, type metadata accessor for CFError, &protocol conformance descriptor for CFErrorRef);
    v74 = Error.localizedDescription.getter();
    v76 = v75;
    goto LABEL_20;
  }

  v98 = v54;
  v76 = 0xED0000726F727265;
  v74 = 0x206E776F6E6B6E55;
LABEL_20:
  v105 = 0x800000010042C070;
  v106 = 0x800000010042BF00;
  v116 = 0;
  v117 = 0xE000000000000000;
  _StringGuts.grow(_:)(54);
  v77._countAndFlagsBits = 0xD000000000000025;
  v77._object = 0x800000010042C100;
  String.append(_:)(v77);
  v78._countAndFlagsBits = v14;
  v78._object = v16;
  String.append(_:)(v78);

  v79._countAndFlagsBits = 0x7265206874697720;
  v79._object = 0xED0000203A726F72;
  String.append(_:)(v79);
  v80._countAndFlagsBits = v74;
  v80._object = v76;
  String.append(_:)(v80);

  v102 = v117;
  v103 = v116;
  v104 = type metadata accessor for KnoxServiceClient.ClientError();
  v81 = swift_allocObject();
  sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
  static DispatchQoS.userInitiated.getter();
  v116 = _swiftEmptyArrayStorage;
  sub_10004A230(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850, &qword_100376280);
  sub_10003DEE8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v109 + 104))(v113, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v110);
  v83 = v99;
  v82 = v100;
  v84 = v114;
  (*(v99 + 104))(v114, enum case for DispatchQoS.QoSClass.default(_:), v100);
  static OS_dispatch_queue.global(qos:)();
  (*(v83 + 8))(v84, v82);
  v85 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v86 = v105;
  *(v81 + 16) = 0xD000000000000015;
  *(v81 + 24) = v86;
  v87 = v106;
  *(v81 + 32) = 0xD00000000000006ELL;
  *(v81 + 40) = v87;
  *(v81 + 56) = 19;
  *(v81 + 48) = 177;
  v88 = v102;
  *(v81 + 64) = v103;
  *(v81 + 72) = v88;
  *(v81 + 80) = 0;
  *(v81 + 88) = v85;
  sub_10004A230(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
  v89 = swift_allocError();
  *v90 = v81;
  *(v101 + OBJC_IVAR____TtC16KnoxClientPublic29KnoxURLSessionPinningDelegate_sessionError) = v89;

  v91 = static os_log_type_t.error.getter();
  sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_100376A40;
  result = sub_10005A570();
  if (v93)
  {
    v94 = result;
    v95 = v93;
    *(v92 + 56) = &type metadata for String;
    *(v92 + 64) = sub_10001A9EC();
    *(v92 + 32) = v94;
    *(v92 + 40) = v95;
    sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
    v96 = static OS_os_log.default.getter();
    v53 = 2;
    os_log(_:dso:log:_:_:)(v91, &_mh_execute_header, v96, "%{public}s", 10, 2, v92);

    return v53;
  }

LABEL_25:
  __break(1u);
  return result;
}

id KnoxURLSessionPinningDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KnoxURLSessionPinningDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000495B8()
{
  sub_10000B080();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v0 = Data.init(base64Encoded:options:)();
  v2 = v1;

  if (v2 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_1004E29E0 = v0;
    *algn_1004E29E8 = v2;
  }

  return result;
}

uint64_t sub_100049684()
{
  sub_10000B080();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v0 = Data.init(base64Encoded:options:)();
  v2 = v1;

  if (v2 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_1004E29F0 = v0;
    *algn_1004E29F8 = v2;
  }

  return result;
}

void sub_10004980C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1004A6A78 != -1)
  {
    swift_once();
  }

  v4 = qword_1004E29E0;
  v5 = *algn_1004E29E8;
  sub_1000318C0(qword_1004E29E0, *algn_1004E29E8, a3, a4);
  if (qword_1004A6A80 != -1)
  {
    swift_once();
  }

  v8 = qword_1004E29F0;
  v9 = *algn_1004E29F8;
  sub_1000318C0(qword_1004E29F0, *algn_1004E29F8, v6, v7);
  specialized ContiguousArray.reserveCapacity(_:)();
  sub_1000318C0(v4, v5, v10, v11);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v13 = SecCertificateCreateWithData(kCFAllocatorDefault, isa);

  if (v13 && (sub_100031928(v4, v5), specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(), specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(), specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(), specialized ContiguousArray._endMutation()(), sub_1000318C0(v8, v9, v14, v15), v16 = Data._bridgeToObjectiveC()().super.isa, v17 = SecCertificateCreateWithData(kCFAllocatorDefault, v16), v16, v17))
  {
    sub_100031928(v8, v9);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    swift_arrayDestroy();
  }

  else
  {
    __break(1u);
  }
}

void sub_100049A0C(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v75 = a3;
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v73 = *(v5 - 8);
  v74 = v5;
  __chkstk_darwin(v5);
  v72 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v69 = *(v7 - 8);
  v70 = v7;
  __chkstk_darwin(v7);
  v71 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v68 = v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v11 - 8);
  v76 = v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC16KnoxClientPublic29KnoxURLSessionPinningDelegate_sessionError;
  *(a2 + OBJC_IVAR____TtC16KnoxClientPublic29KnoxURLSessionPinningDelegate_sessionError) = 0;

  v14 = [a1 protectionSpace];
  v15 = [v14 host];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = (a2 + OBJC_IVAR____TtC16KnoxClientPublic29KnoxURLSessionPinningDelegate_expectedHost);
  if (__PAIR128__(v18, v16) == *(a2 + OBJC_IVAR____TtC16KnoxClientPublic29KnoxURLSessionPinningDelegate_expectedHost))
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      v66 = 0x800000010042BED0;
      v67 = 0x800000010042BF00;
      v77 = 0;
      v78 = 0xE000000000000000;
      _StringGuts.grow(_:)(53);
      v32._countAndFlagsBits = 0xD00000000000001ALL;
      v32._object = 0x800000010042BF70;
      String.append(_:)(v32);
      v33 = [a1 protectionSpace];
      v34 = [v33 host];

      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38._countAndFlagsBits = v35;
      v38._object = v37;
      String.append(_:)(v38);

      v39._object = 0x800000010042BF90;
      v39._countAndFlagsBits = 0xD000000000000017;
      String.append(_:)(v39);
      v40 = *v19;
      v41 = v19[1];

      v42._countAndFlagsBits = v40;
      v42._object = v41;
      String.append(_:)(v42);

      v63 = v78;
      v64 = v77;
      v65 = type metadata accessor for KnoxServiceClient.ClientError();
      v43 = swift_allocObject();
      v62[0] = sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
      v62[1] = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v77 = _swiftEmptyArrayStorage;
      sub_10004A230(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850, &qword_100376280);
      sub_10003DEE8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v69 + 104))(v71, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v70);
      v44 = v72;
      v45 = v73;
      v46 = v74;
      (*(v73 + 104))(v72, enum case for DispatchQoS.QoSClass.default(_:), v74);
      static OS_dispatch_queue.global(qos:)();
      (*(v45 + 8))(v44, v46);
      v47 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v48 = v66;
      *(v43 + 16) = 0xD00000000000002BLL;
      *(v43 + 24) = v48;
      v49 = v67;
      *(v43 + 32) = 0xD00000000000006ELL;
      *(v43 + 40) = v49;
      *(v43 + 56) = 19;
      *(v43 + 48) = 83;
      v50 = v63;
      *(v43 + 64) = v64;
      *(v43 + 72) = v50;
      *(v43 + 80) = 0;
      *(v43 + 88) = v47;
      sub_10004A230(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
      v51 = swift_allocError();
      *v52 = v43;
      *(a2 + v13) = v51;

      v53 = static os_log_type_t.error.getter();
      sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_100376A40;
      v55 = sub_10005A570();
      if (v56)
      {
        v57 = v55;
        v58 = v56;
        *(v54 + 56) = &type metadata for String;
        *(v54 + 64) = sub_10001A9EC();
        *(v54 + 32) = v57;
        *(v54 + 40) = v58;
        sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
        v59 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v53, &_mh_execute_header, v59, "%{public}s", 10, 2, v54);

        v75[2](v75, 2, 0);
      }

      else
      {
        _Block_release(v75);
        __break(1u);
      }

      return;
    }
  }

  v21 = [a1 protectionSpace];
  v22 = [v21 authenticationMethod];

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v23 && v26 == v25)
  {

LABEL_8:

    v29 = sub_10004850C(a1);
    v76 = v28;
    goto LABEL_9;
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v27)
  {
    goto LABEL_8;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v23 && v60 == v25)
  {
  }

  else
  {
    v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v61 & 1) == 0)
    {
      v76 = 0;
      v29 = 1;
      goto LABEL_10;
    }
  }

  v76 = *(a2 + OBJC_IVAR____TtC16KnoxClientPublic29KnoxURLSessionPinningDelegate_clientURLCredential);
  v28 = v76;
  v29 = 0;
LABEL_9:
  v30 = v28;
LABEL_10:
  (v75)[2](v75, v29, v76);

  v31 = v76;
}

uint64_t sub_10004A230(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10004A28C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC16KnoxClientPublic14RawRequestTask_json);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_10004A2F8()
{
  v1 = (v0 + OBJC_IVAR____TtC16KnoxClientPublic14RawRequestTask_json);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_10004A350(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16KnoxClientPublic14RawRequestTask_json);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

char *RawRequestTask.init(client:url:)(void *a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC16KnoxClientPublic14RawRequestTask_rawData) = _swiftEmptyArrayStorage;
  v5 = (v2 + OBJC_IVAR____TtC16KnoxClientPublic14RawRequestTask_json);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = OBJC_IVAR____TtC16KnoxClientPublic14RawRequestTask_rawURL;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v2 + v6, a2, v7);
  v9 = sub_10003D38C(a1);
  sub_1000039E8(&qword_1004A6B08, &unk_100376270);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100376BB0;
  v11 = v9;
  *(v10 + 32) = URL.path.getter();
  *(v10 + 40) = v12;
  v13 = URL.query.getter();
  if (v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  *(v10 + 48) = v15;
  *(v10 + 56) = v16;
  sub_1000039E8(&qword_1004A6B48, &unk_100376810);
  sub_10004AF7C();
  BidirectionalCollection<>.joined(separator:)();

  v17 = String.count.getter();
  v18 = String._bridgeToObjectiveC()();

  if (v17 >= 60)
  {
    v19 = 60;
  }

  else
  {
    v19 = v17;
  }

  v20 = [v18 substringToIndex:v19];

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24._countAndFlagsBits = v21;
  v24._object = v23;
  String.append(_:)(v24);

  v25 = String.count.getter();

  if (v25 < v17)
  {
    v26._countAndFlagsBits = 3026478;
    v26._object = 0xE300000000000000;
    String.append(_:)(v26);
  }

  sub_10004AFE0();
  String.insert<A>(contentsOf:at:)();

  (*(v8 + 8))(a2, v7);
  v27 = &v11[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
  swift_beginAccess();
  *v27 = 0;
  *(v27 + 1) = 0xE000000000000000;

  return v11;
}

uint64_t sub_10004A720@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  v3 = type metadata accessor for URLRequest();
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = __chkstk_darwin(v3);
  v38 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v6;
  v7 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  __chkstk_darwin(v7 - 8);
  v9 = &v30 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v36 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v35 = &v30 - v15;
  __chkstk_darwin(v14);
  v17 = &v30 - v16;
  v18 = *(v11 + 16);
  v33 = OBJC_IVAR____TtC16KnoxClientPublic14RawRequestTask_rawURL;
  v34 = v18;
  v18(&v30 - v16, v2 + OBJC_IVAR____TtC16KnoxClientPublic14RawRequestTask_rawURL, v10);
  URL.path.getter();
  v39 = *(v11 + 8);
  v39(v17, v10);
  v19._object = 0x800000010042C960;
  v19._countAndFlagsBits = 0xD000000000000016;
  LOBYTE(v17) = String.hasSuffix(_:)(v19);

  if (v17)
  {
    v20 = 2;
  }

  else
  {
    v20 = 1;
  }

  v21 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_nextPageURL;
  swift_beginAccess();
  sub_10001FB20(v2 + v21, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10004B034(v9);
    v22 = v2 + v33;
    v23 = v36;
    v34(v36, v22, v10);
    v41 = v20;
    v24 = v38;
    v25 = v40;
    sub_10005ADB0(v23, 0, 1, v38);
    v26 = v23;
    if (v25)
    {
      return (v39)(v26, v10);
    }
  }

  else
  {
    v28 = v35;
    (*(v11 + 32))(v35, v9, v10);
    v41 = v20;
    v24 = v37;
    v29 = v40;
    sub_10005ADB0(v28, 0, 1, v37);
    v26 = v28;
    if (v29)
    {
      return (v39)(v26, v10);
    }
  }

  v39(v26, v10);
  return (*(v30 + 32))(v32, v24, v31);
}

uint64_t sub_10004AB14(uint64_t result, unint64_t a2)
{
  v3 = v2;
  v5 = result;
  isEscapingClosureAtFileLocation = *(v2 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics);
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v8 = BYTE6(a2);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v7 != 2)
  {
    v8 = 0;
    goto LABEL_11;
  }

  v10 = *(result + 16);
  v9 = *(result + 24);
  v8 = v9 - v10;
  if (__OFSUB__(v9, v10))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      return result;
    }

    v8 = HIDWORD(result) - result;
  }

LABEL_11:
  v11 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_syncronizationQueue;
  OS_dispatch_queue.sync<A>(execute:)();
  v12 = v22[0] + v8;
  if (__OFADD__(v22[0], v8))
  {
    __break(1u);
    goto LABEL_18;
  }

  v13 = *(isEscapingClosureAtFileLocation + v11);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = isEscapingClosureAtFileLocation;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_100027124;
  *(v11 + 24) = v14;
  v22[4] = sub_10001F874;
  v22[5] = v11;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 1107296256;
  v22[2] = sub_10003885C;
  v22[3] = &unk_10047E1B8;
  v15 = _Block_copy(v22);

  dispatch_sync(v13, v15);
  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v11 = OBJC_IVAR____TtC16KnoxClientPublic14RawRequestTask_rawData;
  swift_beginAccess();
  isEscapingClosureAtFileLocation = *(v3 + v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + v11) = isEscapingClosureAtFileLocation;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_19:
    isEscapingClosureAtFileLocation = sub_100011F34(0, *(isEscapingClosureAtFileLocation + 16) + 1, 1, isEscapingClosureAtFileLocation);
    *(v3 + v11) = isEscapingClosureAtFileLocation;
  }

  v18 = *(isEscapingClosureAtFileLocation + 16);
  v17 = *(isEscapingClosureAtFileLocation + 24);
  if (v18 >= v17 >> 1)
  {
    isEscapingClosureAtFileLocation = sub_100011F34((v17 > 1), v18 + 1, 1, isEscapingClosureAtFileLocation);
  }

  *(isEscapingClosureAtFileLocation + 16) = v18 + 1;
  v19 = isEscapingClosureAtFileLocation + 16 * v18;
  *(v19 + 32) = v5;
  *(v19 + 40) = a2;
  *(v3 + v11) = isEscapingClosureAtFileLocation;
  swift_endAccess();
  return sub_1000318C0(v5, a2, v20, v21);
}

char *sub_10004ADCC()
{
  v0 = sub_10004B0FC();

  return v0;
}

uint64_t sub_10004AE28()
{

  v1 = OBJC_IVAR____TtC16KnoxClientPublic14RawRequestTask_rawURL;
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id RawRequestTask.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RawRequestTask(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10004AF7C()
{
  result = qword_1004A6B50;
  if (!qword_1004A6B50)
  {
    sub_100003A94(&qword_1004A6B48, &unk_100376810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A6B50);
  }

  return result;
}

unint64_t sub_10004AFE0()
{
  result = qword_1004A7920;
  if (!qword_1004A7920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A7920);
  }

  return result;
}

uint64_t sub_10004B034(uint64_t a1)
{
  v2 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004B09C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004B0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
}

char *sub_10004B0FC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v71 = type metadata accessor for CharacterSet();
  v3 = *(v71 - 8);
  __chkstk_darwin(v71);
  v70 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v5 - 8);
  v69 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  *(v8 + 24) = 1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_10004BC84;
  *(v9 + 24) = v8;
  v76 = sub_10001FA40;
  v77 = v9;
  aBlock = _NSConcreteStackBlock;
  v73 = 1107296256;
  v74 = sub_10003885C;
  v75 = &unk_10047E250;
  v10 = _Block_copy(&aBlock);
  v11 = v1;

  dispatch_sync(v7, v10);
  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  MultiPageCapable<>.paginationLoop()(ObjectType, &protocol witness table for RawRequestTask);
  v15 = v14;
  v16 = OBJC_IVAR____TtC16KnoxClientPublic14RawRequestTask_rawData;
  swift_beginAccess();
  v17 = *(*&v11[v16] + 16);
  if (v17)
  {
    v64 = v11;
    v65 = v15;
    v66 = v7;
    v18 = (v3 + 8);

    v68 = 0;
    v22 = _swiftEmptyArrayStorage;
    v63 = v19;
    v23 = (v19 + 40);
    v67 = (v3 + 8);
    do
    {
      v25 = *(v23 - 1);
      v24 = *v23;
      sub_1000318C0(v25, *v23, v20, v21);
      static String.Encoding.utf8.getter();
      v26 = String.init(data:encoding:)();
      if (v27)
      {
        v28 = v26;
      }

      else
      {
        v28 = 0;
      }

      if (v27)
      {
        v29 = v27;
      }

      else
      {
        v29 = 0xE000000000000000;
      }

      aBlock = v28;
      v73 = v29;
      v30 = v70;
      static CharacterSet.whitespacesAndNewlines.getter();
      sub_10000B080();
      v31 = StringProtocol.trimmingCharacters(in:)();
      v33 = v32;
      (*v18)(v30, v71);

      aBlock = v31;
      v73 = v33;

      v34._countAndFlagsBits = 91;
      v34._object = 0xE100000000000000;
      v35 = String.hasPrefix(_:)(v34);

      if (v35)
      {
        if ((v33 & 0x2000000000000000) != 0)
        {
          if ((v33 & 0xF00000000000000) == 0)
          {
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
            goto LABEL_43;
          }
        }

        else if ((v31 & 0xFFFFFFFFFFFFLL) == 0)
        {
          goto LABEL_40;
        }

        String.subscript.getter();

        result = String.index(_:offsetBy:limitedBy:)();
        if (v36)
        {
          goto LABEL_46;
        }

        result = String.removeSubrange(_:)();
        v18 = v67;
        if ((v73 & 0x2000000000000000) != 0)
        {
          if ((v73 & 0xF00000000000000) == 0)
          {
            goto LABEL_42;
          }
        }

        else if ((aBlock & 0xFFFFFFFFFFFFLL) == 0)
        {
          goto LABEL_41;
        }

        String.index(before:)();
        String.remove(at:)();

        v68 = 1;
      }

      v38 = aBlock;
      v37 = v73;
      v39 = HIBYTE(v73) & 0xF;
      if ((v73 & 0x2000000000000000) == 0)
      {
        v39 = aBlock & 0xFFFFFFFFFFFFLL;
      }

      if (v39)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_100011A4C(0, *(v22 + 2) + 1, 1, v22);
        }

        v41 = *(v22 + 2);
        v40 = *(v22 + 3);
        if (v41 >= v40 >> 1)
        {
          v22 = sub_100011A4C((v40 > 1), v41 + 1, 1, v22);
        }

        sub_100031928(v25, v24);
        *(v22 + 2) = v41 + 1;
        v42 = &v22[16 * v41];
        *(v42 + 4) = v38;
        *(v42 + 5) = v37;
      }

      else
      {
        sub_100031928(v25, v24);
      }

      v23 += 2;
      --v17;
    }

    while (v17);

    v7 = v66;
    if (v68)
    {
      aBlock = v22;
      sub_1000039E8(&qword_1004A6B48, &unk_100376810);
      sub_10004AF7C();
      v43 = BidirectionalCollection<>.joined(separator:)();
      v45 = v44;

      aBlock = 91;
      v73 = 0xE100000000000000;
      v46._countAndFlagsBits = v43;
      v46._object = v45;
      String.append(_:)(v46);

      v47._countAndFlagsBits = 93;
      v47._object = 0xE100000000000000;
      String.append(_:)(v47);

      v48 = aBlock;
      v49 = v73;
      v15 = v65;
      v11 = v64;
      goto LABEL_36;
    }

    v15 = v65;
    v11 = v64;
  }

  else
  {
    v22 = _swiftEmptyArrayStorage;
  }

  aBlock = v22;
  sub_1000039E8(&qword_1004A6B48, &unk_100376810);
  sub_10004AF7C();
  v48 = BidirectionalCollection<>.joined(separator:)();
  v49 = v50;

LABEL_36:
  v51 = v11;
  v52 = &v11[OBJC_IVAR____TtC16KnoxClientPublic14RawRequestTask_json];
  swift_beginAccess();
  *v52 = v48;
  v52[1] = v49;

  v53 = swift_allocObject();
  *(v53 + 16) = v51;
  *(v53 + 24) = 1;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_10001F8CC;
  *(v54 + 24) = v53;
  v76 = sub_10001FA40;
  v77 = v54;
  aBlock = _NSConcreteStackBlock;
  v73 = 1107296256;
  v74 = sub_10003885C;
  v75 = &unk_10047E2C8;
  v55 = _Block_copy(&aBlock);
  v56 = v51;

  dispatch_sync(v7, v55);
  _Block_release(v55);
  LOBYTE(v55) = swift_isEscapingClosureAtFileLocation();

  if (v55)
  {
    goto LABEL_44;
  }

  sub_100003B20(*&v56[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client] + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_delegate, &aBlock);
  v57 = v75;
  v58 = v76;
  sub_10000E2A8(&aBlock, v75);
  (*(v58 + 2))(v56, v15, v57, v58);
  sub_100003C3C(&aBlock);
  v59 = swift_allocObject();
  *(v59 + 16) = v56;
  *(v59 + 24) = v15 == 0;
  v60 = swift_allocObject();
  *(v60 + 16) = sub_10001F9F8;
  *(v60 + 24) = v59;
  v76 = sub_10001FA40;
  v77 = v60;
  aBlock = _NSConcreteStackBlock;
  v73 = 1107296256;
  v74 = sub_10003885C;
  v75 = &unk_10047E340;
  v61 = _Block_copy(&aBlock);
  v62 = v56;

  dispatch_sync(v7, v61);
  _Block_release(v61);
  LOBYTE(v61) = swift_isEscapingClosureAtFileLocation();

  if ((v61 & 1) == 0)
  {
    return v62;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for RawRequestTask(uint64_t a1)
{
  result = qword_1004A7950;
  if (!qword_1004A7950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004BA60@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC16KnoxClientPublic14RawRequestTask_json);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_10004BAC4(uint64_t a1)
{
  result = type metadata accessor for URL();
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

uint64_t sub_10004BC4C()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10004BCCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69 = a2;
  v70 = a1;
  v93 = type metadata accessor for ArchiveHeader.FieldKey();
  v4 = *(v93 - 8);
  v5 = __chkstk_darwin(v93);
  v79 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v68 = &v60 - v8;
  __chkstk_darwin(v7);
  v10 = &v60 - v9;
  v11 = type metadata accessor for ArchiveHeader.FieldType();
  v12 = *(v11 - 8);
  v91 = v11;
  v92 = v12;
  v13 = __chkstk_darwin(v11);
  v90 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v89 = &v60 - v15;
  v71 = type metadata accessor for ArchiveHeader.Field();
  v16 = *(v71 - 8);
  v17 = __chkstk_darwin(v71);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v60 - v21;
  __chkstk_darwin(v20);
  v88 = &v60 - v23;
  v95 = a3;
  v24 = type metadata accessor for ArchiveHeader();
  v25 = sub_10004D30C(&qword_1004A7960, &type metadata accessor for ArchiveHeader, &protocol conformance descriptor for ArchiveHeader);
  dispatch thunk of Collection.startIndex.getter();
  v97 = a3;
  v64 = a3;

  dispatch thunk of Collection.endIndex.getter();
  if (v96 == v95)
  {
  }

  v66 = v10;
  v78 = v19;
  v63 = v19 + 8;
  v86 = (v16 + 32);
  v87 = (v16 + 16);
  v85 = v92 + 1;
  v92 = (v16 + 8);
  v77 = (v16 + 88);
  v76 = enum case for ArchiveHeader.Field.uint(_:);
  v74 = (v16 + 96);
  v67 = enum case for ArchiveHeader.Field.string(_:);
  v62 = enum case for ArchiveHeader.Field.timespec(_:);
  v61 = enum case for ArchiveHeader.Field.blob(_:);
  v73 = xmmword_100376A40;
  v27 = v71;
  v81 = v22;
  v83 = v25;
  v84 = v24;
  v75 = (v4 + 8);
  while (1)
  {
    v28 = dispatch thunk of Collection.subscript.read();
    v29 = v88;
    v30 = *v87;
    (*v87)(v88);
    v28(&v95, 0);
    dispatch thunk of Collection.formIndex(after:)();
    (*v86)(v22, v29, v27);
    v31 = v89;
    ArchiveHeader.Field.type.getter();
    v32 = v22;
    v33 = v90;
    static ArchiveHeader.FieldType.blob.getter();
    sub_10004D30C(&qword_1004A7968, &type metadata accessor for ArchiveHeader.FieldType, &protocol conformance descriptor for ArchiveHeader.FieldType);
    v34 = v91;
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v35 = *v85;
    (*v85)(v33, v34);
    v35(v31, v34);
    if (v95 != v94)
    {
      v22 = v32;
      goto LABEL_5;
    }

    v36 = v78;
    (v30)(v78, v32, v27);
    v37 = (*v77)(v36, v27);
    v22 = v32;
    if (v37 == v76)
    {
      (*v74)(v36, v27);
      v38 = v75;
LABEL_13:
      v39 = v38;
      v40 = v93;
LABEL_14:
      (*v39)(v36, v40);
      v41 = static os_log_type_t.error.getter();
      sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
      v42 = swift_allocObject();
      *(v42 + 16) = v73;
      v43 = v79;
      ArchiveHeader.Field.key.getter();
      v44 = ArchiveHeader.FieldKey.description.getter();
      v46 = v45;
      (*v38)(v43, v93);
      *(v42 + 56) = &type metadata for String;
      *(v42 + 64) = sub_10001A9EC();
      *(v42 + 32) = v44;
      *(v42 + 40) = v46;
      v22 = v81;
      sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
      v47 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v41, &_mh_execute_header, v47, "aField.key %{public}s of type blob, does not have size value", 60, 2, v42);

      goto LABEL_5;
    }

    v38 = v75;
    if (v37 == v67)
    {
      (*v74)(v36, v27);
      sub_1000039E8(&qword_1004A7970, &qword_1003772A8);

      goto LABEL_13;
    }

    if (v37 == v62)
    {
      (*v74)(v36, v27);
      goto LABEL_13;
    }

    v39 = v92;
    v40 = v27;
    if (v37 != v61)
    {
      goto LABEL_14;
    }

    (*v74)(v36, v27);
    v48 = *&v36[*(sub_1000039E8(&qword_1004A7978, qword_1003772B0) + 48)];
    v49 = *v38;
    result = (*v38)(v36, v93);
    if ((v48 & 0x8000000000000000) != 0)
    {
      __break(1u);
      return result;
    }

    v65 = v49;
    if (v48)
    {
      break;
    }

LABEL_5:
    (*v92)(v22, v27);
    dispatch thunk of Collection.endIndex.getter();
    if (v96 == v95)
    {
    }
  }

  while (1)
  {
    v50 = v93;
    if (v48 >= 0xF4240)
    {
      v51 = 1000000;
    }

    else
    {
      v51 = v48;
    }

    v52 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v52 + 16) = v51;
    v80 = v52;
    bzero((v52 + 32), v51);
    v53 = v66;
    ArchiveHeader.Field.key.getter();
    v54 = v82;
    dispatch thunk of ArchiveStream.readBlob(key:into:)();
    v82 = v54;
    if (v54)
    {
      v65(v53, v50);

      return (*v92)(v81, v71);
    }

    v55 = v65;
    v65(v53, v50);
    v56 = v38;
    v57 = v68;
    v72 = *(v80 + 16);
    ArchiveHeader.Field.key.getter();
    v58 = v82;
    dispatch thunk of ArchiveStream.writeBlob(key:from:)();
    v82 = v58;
    if (v58)
    {
      break;
    }

    v55(v57, v50);

    v59 = v48 <= v51;
    v48 -= v51;
    v22 = v81;
    v38 = v56;
    v27 = v71;
    if (v59)
    {
      goto LABEL_5;
    }
  }

  v55(v57, v50);

  return (*v92)(v81, v71);
}

uint64_t sub_10004C684(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6)
{
  v94 = a4;
  v95 = a5;
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v92 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v89 = *(v14 - 8);
  v90 = v14;
  __chkstk_darwin(v14);
  v91 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v85);
  v88 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v17 - 8);
  v87 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for ArchiveHeader.Field();
  v84 = *(v86 - 1);
  v19 = __chkstk_darwin(v86);
  v82 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v83 = &v77 - v21;
  v22 = type metadata accessor for ArchiveHeader.FieldKey();
  result = __chkstk_darwin(v22);
  v26 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a3 + 16);
  if (v27)
  {
    v78 = v12;
    v79 = v11;
    v80 = v24;
    v93 = a6;
    v96 = v26;
    v97 = v6;
    v81 = result;
    v28 = 0;
    v29 = a3 + 40;
    v100 = _swiftEmptyArrayStorage;
    while (2)
    {
      v30 = (v29 + 16 * v28);
      v31 = v28;
      while (1)
      {
        if (v31 >= v27)
        {
          __break(1u);
LABEL_26:
          __break(1u);
          return result;
        }

        v28 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_26;
        }

        v32 = *(v30 - 1);
        v33 = *v30;

        v34._countAndFlagsBits = v32;
        v34._object = v33;
        if (String.hasPrefix(_:)(v34))
        {
          break;
        }

        ++v31;
        v30 += 2;
        if (v28 == v27)
        {
          v38 = *(v100 + 2);
          if (!v38)
          {
          }

          goto LABEL_16;
        }
      }

      v35 = v100;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100011A4C(0, *(v35 + 2) + 1, 1, v35);
        v35 = result;
      }

      v37 = *(v35 + 2);
      v36 = *(v35 + 3);
      v100 = v35;
      v38 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        result = sub_100011A4C((v36 > 1), v37 + 1, 1, v100);
        v100 = result;
      }

      v39 = v100;
      *(v100 + 2) = v38;
      v40 = &v39[16 * v37];
      *(v40 + 4) = v32;
      *(v40 + 5) = v33;
      if (v28 != v27)
      {
        continue;
      }

      break;
    }

LABEL_16:
    v41 = v95;

    v42 = v96;
    v43 = v94;
    v44 = ArchiveHeader.FieldKey.init(_:)();
    __chkstk_darwin(v44);
    *(&v77 - 2) = v42;
    v45 = v97;
    v46 = sub_10004D098(sub_10004D2EC, (&v77 - 4));
    if (v47)
    {

      v97 = 0x800000010042CA40;
      v98 = 0;
      v100 = 0x800000010042CA70;
      v99 = 0xE000000000000000;
      _StringGuts.grow(_:)(45);

      v98 = 0xD000000000000019;
      v99 = 0x800000010042CAE0;
      v48._countAndFlagsBits = v43;
      v48._object = v41;
      String.append(_:)(v48);
      v49._object = 0x800000010042CB00;
      v49._countAndFlagsBits = 0xD000000000000012;
      String.append(_:)(v49);
      v93 = v99;
      v94 = v98;
      v95 = type metadata accessor for KnoxServiceClient.ClientError();
      v50 = swift_allocObject();
      sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
      v86 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v98 = _swiftEmptyArrayStorage;
      sub_10004D30C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850, &qword_100376280);
      sub_10003DEE8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v89 + 104))(v91, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v90);
      v51 = v78;
      v52 = v92;
      v53 = v79;
      (*(v78 + 104))(v92, enum case for DispatchQoS.QoSClass.default(_:), v79);
      static OS_dispatch_queue.global(qos:)();
      (*(v51 + 8))(v52, v53);
      v54 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v55 = v97;
      *(v50 + 16) = 0xD000000000000026;
      *(v50 + 24) = v55;
      v56 = v100;
      *(v50 + 32) = 0xD000000000000067;
      *(v50 + 40) = v56;
      *(v50 + 56) = 0;
      *(v50 + 48) = 100;
      v57 = v93;
      *(v50 + 64) = v94;
      *(v50 + 72) = v57;
      *(v50 + 80) = 0;
      *(v50 + 88) = v54;
      sub_10004D30C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v58 = v50;
      swift_willThrow();
      return (*(v80 + 8))(v96, v81);
    }

    else
    {
      v95 = v46;
      v97 = v45;

      v59 = (v100 + 40);
      v60 = a1;
      v61 = a2;
      do
      {
        v63 = *(v59 - 1);
        v62 = *v59;

        v64._countAndFlagsBits = v63;
        v64._object = v62;
        if (String.hasPrefix(_:)(v64))
        {

          v65 = String.count.getter();

          sub_10004D354(v65, a1, a2);

          v60 = static String._fromSubstring(_:)();
          v61 = v66;
        }

        v59 += 2;
        --v38;
      }

      while (v38);

      v67 = sub_1000039E8(&qword_1004A7970, &qword_1003772A8);
      v68 = v83;
      v69 = &v83[*(v67 + 48)];
      v71 = v80;
      v70 = v81;
      v72 = v96;
      (*(v80 + 16))(v83, v96, v81);
      *v69 = v60;
      v69[1] = v61;
      v73 = v84;
      v74 = v86;
      (*(v84 + 104))(v68, enum case for ArchiveHeader.Field.string(_:), v86);
      v75 = v82;
      ArchiveHeader.remove(at:)();
      v76 = *(v73 + 8);
      v76(v75, v74);
      ArchiveHeader.append(_:)();
      v76(v68, v74);
      return (*(v71 + 8))(v72, v70);
    }
  }

  return result;
}

uint64_t sub_10004CFAC(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for ArchiveHeader.FieldKey();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  ArchiveHeader.Field.key.getter();
  v6 = static ArchiveHeader.FieldKey.== infix(_:_:)();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

uint64_t sub_10004D098(uint64_t (*a1)(char *), uint64_t a2)
{
  v18 = a1;
  v19 = a2;
  v4 = type metadata accessor for ArchiveHeader.Field();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  type metadata accessor for ArchiveHeader();
  sub_10004D30C(&qword_1004A7960, &type metadata accessor for ArchiveHeader, &protocol conformance descriptor for ArchiveHeader);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v8 = v21;
  if (v21 == v20[0])
  {
    return 0;
  }

  v9 = (v5 + 16);
  v16 = (v5 + 8);
  v17 = v4;
  while (1)
  {
    v10 = dispatch thunk of Collection.subscript.read();
    v11 = v17;
    (*v9)(v7);
    v10(v20, 0);
    v12 = v18(v7);
    if (v3)
    {
      break;
    }

    v13 = v12;
    (*v16)(v7, v11);
    if (v13)
    {
      return v8;
    }

    dispatch thunk of Collection.formIndex(after:)();
    dispatch thunk of Collection.endIndex.getter();
    v8 = v21;
    if (v21 == v20[0])
    {
      return 0;
    }
  }

  (*v16)(v7, v11);
  return v8;
}

uint64_t sub_10004D30C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10004D354(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = String.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

uint64_t KnoxServiceClient.ClientError.__allocating_init(function:file:line:kind:message:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, uint64_t a7, uint64_t a8)
{
  v36 = a7;
  v37 = a8;
  v34 = a4;
  v35 = a5;
  v32 = a2;
  v33 = a3;
  v31 = a1;
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v29 = *(v9 - 8);
  v30 = v9;
  __chkstk_darwin(v9);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v12 = *(v28 - 8);
  __chkstk_darwin(v28);
  v27 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v14);
  v15 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v15 - 8);
  v16 = swift_allocObject();
  v26 = *a6;
  v25[1] = sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
  v25[2] = "hivePointer.swift";
  static DispatchQoS.userInitiated.getter();
  v38 = _swiftEmptyArrayStorage;
  sub_100061B64(&unk_1004A6B60, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850, &qword_100376280);
  sub_10000E720(&qword_1004A6B70, &unk_1004A7850, &qword_100376280, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v12 + 104))(v27, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v28);
  v18 = v29;
  v17 = v30;
  (*(v29 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v30);
  static OS_dispatch_queue.global(qos:)();
  (*(v18 + 8))(v11, v17);
  v19 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v20 = v32;
  *(v16 + 16) = v31;
  *(v16 + 24) = v20;
  v21 = v34;
  *(v16 + 32) = v33;
  *(v16 + 40) = v21;
  *(v16 + 56) = v26;
  v22 = v36;
  *(v16 + 48) = v35;
  v23 = v37;
  *(v16 + 64) = v22;
  *(v16 + 72) = v23;
  *(v16 + 80) = 0;
  *(v16 + 88) = v19;
  return v16;
}

uint64_t static KnoxServiceClient.ClientError.withError(function:file:line:error:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_errorRetain();
  sub_1000039E8(&qword_1004AB0A0, &unk_100377120);
  type metadata accessor for KnoxServiceClient.ClientError();
  if (swift_dynamicCast())
  {
    return v13;
  }

  v12 = _convertErrorToNSError(_:)();
  swift_allocObject();
  return sub_100059DCC(a1, a2, a3, a4, a5, v12);
}

void sub_10004D8C4(unint64_t a1, unsigned int a2)
{
  v3 = v2;
  v46 = a2;
  v5 = sub_1000039E8(&qword_1004A73C0, &unk_100376A70);
  __chkstk_darwin(v5 - 8);
  v7 = &v42 - v6;
  v8 = *&v2[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics];
  Date.init()();
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  v10 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_startTime;
  swift_beginAccess();
  sub_10001F8D8(v7, v8 + v10, &qword_1004A73C0, &unk_100376A70);
  swift_endAccess();
  v11 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_startCount;
  swift_beginAccess();
  *&v2[v11] = 0;
  v12 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_lastError;
  v47 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue;
  v48 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_wasCancelled;
  swift_beginAccess();
  v49 = v12;
  swift_beginAccess();
  v13 = *&v3[v11];
  if (v13 <= a1)
  {
    v43 = a1 + 1;
    v45 = a1 == -1;
    v44 = xmmword_100376F00;
    v42 = a1;
    while (1)
    {
      v14 = __CFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        break;
      }

      *&v3[v11] = v15;

      if (*&v3[v11] > a1 || (v3[v48] & 1) != 0 || (sub_100029970() & 1) == 0 || !*&v3[v49])
      {
        return;
      }

      sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
      v16 = swift_allocObject();
      *(v16 + 16) = v44;
      v17 = *&v3[v11];
      *(v16 + 56) = &type metadata for UInt;
      *(v16 + 64) = &protocol witness table for UInt;
      *(v16 + 32) = v17;
      if (v45)
      {
        goto LABEL_17;
      }

      *(v16 + 96) = &type metadata for UInt;
      *(v16 + 104) = &protocol witness table for UInt;
      *(v16 + 72) = v43;
      v18 = v16;
      v19 = [v3 description];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v18[17] = &type metadata for String;
      v18[18] = sub_10001A9EC();
      v18[14] = v20;
      v18[15] = v22;
      sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
      v23 = static OS_os_log.default.getter();
      v24 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Restarting. This is start %{public}i of %{public}i for %{public}s", 65, 2, &_mh_execute_header, v23, v24, v18);

      sub_10002A7AC(0);
      v25 = *&v3[v47];
      v26 = swift_allocObject();
      *(v26 + 16) = v3;
      *(v26 + 24) = 0;
      v27 = swift_allocObject();
      *(v27 + 16) = sub_100064E34;
      *(v27 + 24) = v26;
      v54 = sub_10001FA40;
      v55 = v27;
      aBlock = _NSConcreteStackBlock;
      v51 = 1107296256;
      v52 = sub_10003885C;
      v53 = &unk_10047EF68;
      v28 = _Block_copy(&aBlock);
      v29 = v3;

      dispatch_sync(v25, v28);
      _Block_release(v28);
      LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

      if (v28)
      {
        goto LABEL_18;
      }

      *&v3[v49] = 0;

      v30 = swift_allocObject();
      *(v30 + 16) = v29;
      *(v30 + 24) = 0;
      v31 = swift_allocObject();
      *(v31 + 16) = sub_100064E38;
      *(v31 + 24) = v30;
      v54 = sub_10001FA40;
      v55 = v31;
      aBlock = _NSConcreteStackBlock;
      v51 = 1107296256;
      v52 = sub_10003885C;
      v53 = &unk_10047EFE0;
      v32 = _Block_copy(&aBlock);
      v33 = v29;

      dispatch_sync(v25, v32);
      _Block_release(v32);
      LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

      if (v32)
      {
        goto LABEL_19;
      }

      v34 = swift_allocObject();
      *(v34 + 16) = v33;
      *(v34 + 24) = 0;
      v35 = swift_allocObject();
      *(v35 + 16) = sub_100064E3C;
      *(v35 + 24) = v34;
      v54 = sub_10001FA40;
      v55 = v35;
      aBlock = _NSConcreteStackBlock;
      v51 = 1107296256;
      v52 = sub_10003885C;
      v53 = &unk_10047F058;
      v36 = _Block_copy(&aBlock);
      v37 = v33;

      dispatch_sync(v25, v36);
      _Block_release(v36);
      LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

      if (v36)
      {
        goto LABEL_20;
      }

      v38 = swift_allocObject();
      v38[2] = v37;
      v38[3] = 0;
      v38[4] = 0xE000000000000000;
      v39 = swift_allocObject();
      *(v39 + 16) = sub_100064EEC;
      *(v39 + 24) = v38;
      v54 = sub_10001FA40;
      v55 = v39;
      aBlock = _NSConcreteStackBlock;
      v51 = 1107296256;
      v52 = sub_10003885C;
      v53 = &unk_10047F0D0;
      v40 = _Block_copy(&aBlock);
      v37;

      dispatch_sync(v25, v40);
      _Block_release(v40);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        goto LABEL_21;
      }

      sub_10002D264();
      sleep(v46);
      v13 = *&v3[v11];
      a1 = v42;
      if (v13 > v42)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }
}

uint64_t sub_10004E0A8(unint64_t a1, unsigned int a2)
{
  v3 = v2;
  v55 = a2;
  v5 = sub_1000039E8(&qword_1004A73C0, &unk_100376A70);
  __chkstk_darwin(v5 - 8);
  v7 = v50 - v6;
  v8 = *&v2[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics];
  Date.init()();
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  v10 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_startTime;
  swift_beginAccess();
  v50[1] = v8;
  sub_10001F8D8(v7, v8 + v10, &qword_1004A73C0, &unk_100376A70);
  swift_endAccess();
  v11 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_startCount;
  swift_beginAccess();
  *&v2[v11] = 0;
  v12 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_lastError;
  v56 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue;
  v50[0] = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_syncronizationQueue;
  v57 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_wasCancelled;
  swift_beginAccess();
  v59 = v12;
  result = swift_beginAccess();
  v14 = *&v3[v11];
  if (v14 > a1)
  {
    return result;
  }

  v58 = 0;
  v52 = a1 + 1;
  v54 = a1 == -1;
  v53 = xmmword_100376F00;
  v51 = a1;
  while (1)
  {
    v15 = __CFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      break;
    }

    *&v3[v11] = v16;
    result = sub_10001AA88();
    if (*&v3[v11] > a1 || (v3[v57] & 1) != 0)
    {
      return result;
    }

    v17 = *&v3[v59];
    if (v17)
    {
      v18 = *(v17 + 56);
      if (v18 == 9)
      {
        goto LABEL_15;
      }

      if (v18 == 13 || v18 == 16)
      {
        return result;
      }
    }

    v20 = v58;
    result = OS_dispatch_queue.sync<A>(execute:)();
    v58 = v20;
    if (!aBlock || !*&v3[v59])
    {
      return result;
    }

LABEL_15:
    sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
    result = swift_allocObject();
    *(result + 16) = v53;
    v21 = *&v3[v11];
    *(result + 56) = &type metadata for UInt;
    *(result + 64) = &protocol witness table for UInt;
    *(result + 32) = v21;
    if (v54)
    {
      goto LABEL_24;
    }

    *(result + 96) = &type metadata for UInt;
    *(result + 104) = &protocol witness table for UInt;
    *(result + 72) = v52;
    v22 = result;
    v23 = [v3 description];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v22[17] = &type metadata for String;
    v22[18] = sub_10001A9EC();
    v22[14] = v24;
    v22[15] = v26;
    sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
    v27 = static OS_os_log.default.getter();
    v28 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Restarting. This is start %{public}i of %{public}i for %{public}s", 65, 2, &_mh_execute_header, v27, v28, v22);

    v29 = *&v3[v56];
    v30 = swift_allocObject();
    *(v30 + 16) = v3;
    *(v30 + 24) = 0;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_10001F8CC;
    *(v31 + 24) = v30;
    v64 = sub_10001FA40;
    v65 = v31;
    aBlock = _NSConcreteStackBlock;
    v61 = 1107296256;
    v62 = sub_10003885C;
    v63 = &unk_10047ED10;
    v32 = _Block_copy(&aBlock);
    v33 = v3;

    dispatch_sync(v29, v32);
    _Block_release(v32);
    LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

    if (v32)
    {
      goto LABEL_25;
    }

    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    *(v34 + 24) = 0;
    v35 = swift_allocObject();
    *(v35 + 16) = sub_10004BC84;
    *(v35 + 24) = v34;
    v64 = sub_10001FA40;
    v65 = v35;
    aBlock = _NSConcreteStackBlock;
    v61 = 1107296256;
    v62 = sub_10003885C;
    v63 = &unk_10047ED88;
    v36 = _Block_copy(&aBlock);
    v37 = v33;

    dispatch_sync(v29, v36);
    _Block_release(v36);
    LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

    if (v36)
    {
      goto LABEL_26;
    }

    *&v3[v59] = 0;

    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    *(v38 + 24) = 0;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_100064CCC;
    *(v39 + 24) = v38;
    v64 = sub_10001FA40;
    v65 = v39;
    aBlock = _NSConcreteStackBlock;
    v61 = 1107296256;
    v62 = sub_10003885C;
    v63 = &unk_10047EE00;
    v40 = _Block_copy(&aBlock);
    v41 = v37;

    dispatch_sync(v29, v40);
    _Block_release(v40);
    LOBYTE(v40) = swift_isEscapingClosureAtFileLocation();

    if (v40)
    {
      goto LABEL_27;
    }

    v42 = swift_allocObject();
    *(v42 + 16) = v41;
    *(v42 + 24) = 0;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_100064CD4;
    *(v43 + 24) = v42;
    v64 = sub_10001FA40;
    v65 = v43;
    aBlock = _NSConcreteStackBlock;
    v61 = 1107296256;
    v62 = sub_10003885C;
    v63 = &unk_10047EE78;
    v44 = _Block_copy(&aBlock);
    v45 = v41;

    dispatch_sync(v29, v44);
    _Block_release(v44);
    LOBYTE(v44) = swift_isEscapingClosureAtFileLocation();

    if (v44)
    {
      goto LABEL_28;
    }

    v46 = swift_allocObject();
    v46[2] = v45;
    v46[3] = 0;
    v46[4] = 0xE000000000000000;
    v47 = swift_allocObject();
    *(v47 + 16) = sub_100064CE4;
    *(v47 + 24) = v46;
    v64 = sub_10001FA40;
    v65 = v47;
    aBlock = _NSConcreteStackBlock;
    v61 = 1107296256;
    v62 = sub_10003885C;
    v63 = &unk_10047EEF0;
    v48 = _Block_copy(&aBlock);
    v45;

    dispatch_sync(v29, v48);
    _Block_release(v48);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      goto LABEL_29;
    }

    sub_1000180C8();
    result = sleep(v55);
    v14 = *&v3[v11];
    a1 = v51;
    if (v14 > v51)
    {
      return result;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t static KnoxServiceClient.decodeJSONData<A>(decodableType:jsonData:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a3;
  v25 = a6;
  v10 = type metadata accessor for DecodingError.Context();
  v21[4] = *(v10 - 8);
  v21[5] = v10;
  v11 = __chkstk_darwin(v10);
  v21[1] = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v21[2] = v21 - v13;
  v22 = type metadata accessor for DecodingError();
  v21[3] = *(v22 - 8);
  __chkstk_darwin(v22);
  v23 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v21 - v17;
  v19 = *(*(a5 - 8) + 56);
  v19(a1, 1, 1, a5);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  if (a4 >> 60 == 15)
  {
    __break(1u);

    result = sub_100003C3C(&v26);
    __break(1u);
  }

  else
  {
    v21[0] = a2;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    (*(v16 + 8))(a1, v15);

    v19(v18, 0, 1, a5);
    (*(v16 + 32))(a1, v18, v15);
    return 0;
  }

  return result;
}

uint64_t sub_10004F28C()
{
  v0 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for URL();
  sub_1000279B4(v3, qword_1004A7980);
  v4 = sub_1000270B4(v3, qword_1004A7980);
  URL.init(string:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_10004F3E0()
{
  v0 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for URL();
  sub_1000279B4(v3, qword_1004A7998);
  v4 = sub_1000270B4(v3, qword_1004A7998);
  URL.init(string:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_10004F534@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for URL();
  v7 = sub_1000270B4(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

void sub_10004F5F4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 infoDictionary];

  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v2 + 16) || (v3 = sub_100013364(0x656C646E75424643, 0xEF6E6F6973726556), (v4 & 1) == 0))
  {

    goto LABEL_7;
  }

  sub_100003CA0(*(v2 + 56) + 32 * v3, v9);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v5 = 0;
    v6 = 0xE000000000000000;
    goto LABEL_8;
  }

  v5 = v7;
  v6 = v8;
LABEL_8:
  qword_1004A79B0 = v5;
  qword_1004A79B8 = v6;
}

uint64_t static KnoxServiceClient.userAgentVersion.getter()
{
  if (qword_1004A6A98 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1004A79B0;

  return v0;
}

uint64_t static KnoxServiceClient.userAgentVersion.setter(uint64_t a1, uint64_t a2)
{
  if (qword_1004A6A98 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1004A79B0 = a1;
  qword_1004A79B8 = a2;
}

uint64_t (*static KnoxServiceClient.userAgentVersion.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1004A6A98 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_10004F8B4@<X0>(void *a1@<X8>)
{
  if (qword_1004A6A98 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1004A79B8;
  *a1 = qword_1004A79B0;
  a1[1] = v2;
}

uint64_t sub_10004F934(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = qword_1004A6A98;

  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1004A79B0 = v2;
  qword_1004A79B8 = v1;
}

uint64_t sub_10004F9DC(uint64_t result)
{
  if (result >= 0x10)
  {
    v2 = 16;
  }

  else
  {
    v2 = result;
  }

  if (result < 1)
  {
    v2 = 1;
  }

  *(v1 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__decryptionThreadCount) = v2;
  return result;
}

uint64_t (*sub_10004FA00(uint64_t a1))(uint64_t result)
{
  v2 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__decryptionThreadCount;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_10004FA34;
}

uint64_t sub_10004FA34(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 >= 16)
  {
    v1 = 16;
  }

  if (v1 <= 1)
  {
    v1 = 1;
  }

  *(*result + *(result + 8)) = v1;
  return result;
}

unint64_t sub_10004FA68(unint64_t result)
{
  if (result <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = result;
  }

  *(v1 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__networkOperationTryCount) = v2;
  return result;
}

unint64_t *(*sub_10004FA80(void *a1))(unint64_t *result)
{
  v2 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__networkOperationTryCount;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = *(v1 + v2);
  return sub_1000345E8;
}

uint64_t sub_10004FAC4(uint64_t result)
{
  if (result)
  {
    if (result < 0xB)
    {
      *(v1 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__networkOperationRetryDelay) = result;
    }

    else
    {
      *(v1 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__networkOperationRetryDelay) = 10;
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__networkOperationRetryDelay) = 1;
  }

  return result;
}

uint64_t (*sub_10004FAFC(uint64_t a1))(uint64_t result)
{
  v2 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__networkOperationRetryDelay;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_10004FB30;
}

uint64_t sub_10004FB30(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 >= 0xA)
  {
    v2 = 10;
  }

  else
  {
    v2 = *(result + 16);
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 1;
  }

  *(*result + *(result + 8)) = v3;
  return result;
}

uint64_t sub_10004FB54()
{
  v1 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_useExponentialRetryDelay;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10004FB98(char a1)
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_useExponentialRetryDelay;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

unint64_t sub_10004FC58(unint64_t result)
{
  if (result <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = result;
  }

  *(v1 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__maximumDownloadStartCount) = v2;
  return result;
}

uint64_t *(*sub_10004FC70(void *a1))(uint64_t *result)
{
  v2 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__maximumDownloadStartCount;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = *(v1 + v2);
  return sub_100064EE8;
}

id sub_10004FCA4()
{
  v1 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_session;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_10004FCF8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_session;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_10004FDB0@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_globalSessionTraceId);
  swift_beginAccess();
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t sub_10004FE04(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_globalSessionTraceId);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
}

double sub_10004FEC0()
{
  v1 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_timeoutSeconds;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10004FF04(double a1)
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_timeoutSeconds;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t KnoxServiceClient.knoxHostURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_knoxHostURL;
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_10005003C(uint64_t a1)
{
  v74 = type metadata accessor for CharacterSet();
  __chkstk_darwin(v74);
  v73 = v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(a1 + 64);
  v69 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v4;
  v68 = (v5 + 63) >> 6;
  v72 = (v2 + 8);

  v8 = 0;
  v71 = &_swiftEmptyDictionarySingleton;
  v67 = xmmword_100376A40;
  v70 = a1;
  while (v7)
  {
LABEL_9:
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v7)))));
    v11 = *v10;
    v12 = v10[1];
    v7 &= v7 - 1;
    v77 = *v10;
    v78 = v12;

    v13 = v73;
    static CharacterSet.whitespacesAndNewlines.getter();
    sub_10000B080();
    v14 = StringProtocol.trimmingCharacters(in:)();
    v16 = v15;
    v17 = *v72;
    v18 = v13;
    v19 = v14;
    (*v72)(v18, v74);
    if (String.count.getter())
    {
      if (!*(a1 + 16))
      {

        goto LABEL_20;
      }

      v20 = sub_100013364(v11, v12);
      v22 = v21;

      if (v22)
      {
        v23 = (*(v70 + 56) + 16 * v20);
        v24 = v23[1];
        v77 = *v23;
        v78 = v24;

        v25 = v19;
        v26 = v73;
        static CharacterSet.whitespacesAndNewlines.getter();
        v66[0] = StringProtocol.trimmingCharacters(in:)();
        v28 = v27;
        v17(v26, v74);

        v29 = v71;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v77 = v29;
        v31 = sub_100013364(v25, v16);
        v33 = v29[2];
        v34 = (v32 & 1) == 0;
        v35 = __OFADD__(v33, v34);
        v36 = v33 + v34;
        if (v35)
        {
          goto LABEL_35;
        }

        v37 = v32;
        if (v29[3] >= v36)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_28;
          }

          v59 = v31;
          sub_10005D7B4();
          v31 = v59;
          v56 = v66[0];
          if ((v37 & 1) == 0)
          {
            goto LABEL_31;
          }

LABEL_29:
          v57 = v31;

          v71 = v77;
          v58 = (v77[7] + 16 * v57);
          *v58 = v56;
          v58[1] = v28;

          a1 = v70;
        }

        else
        {
          sub_10005CB64(v36, isUniquelyReferenced_nonNull_native);
          v31 = sub_100013364(v25, v16);
          if ((v37 & 1) != (v38 & 1))
          {
            goto LABEL_37;
          }

LABEL_28:
          v56 = v66[0];
          if (v37)
          {
            goto LABEL_29;
          }

LABEL_31:
          v60 = v77;
          v77[(v31 >> 6) + 8] |= 1 << v31;
          v61 = (v60[6] + 16 * v31);
          *v61 = v25;
          v61[1] = v16;
          v62 = (v60[7] + 16 * v31);
          *v62 = v56;
          v62[1] = v28;
          v63 = v60[2];
          v35 = __OFADD__(v63, 1);
          v64 = v63 + 1;
          if (v35)
          {
            goto LABEL_36;
          }

          v71 = v60;
          v60[2] = v64;
          a1 = v70;
        }
      }

      else
      {
LABEL_20:
        v46 = sub_100013364(v19, v16);
        v48 = v47;

        a1 = v70;
        if (v48)
        {
          v49 = v71;
          v50 = swift_isUniquelyReferenced_nonNull_native();
          v77 = v49;
          if (!v50)
          {
            sub_10005D7B4();
            v49 = v77;
          }

          v71 = v49;
          sub_10005D37C(v46, v49);
        }
      }
    }

    else
    {

      sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
      v39 = swift_allocObject();
      *(v39 + 16) = v67;
      v77 = v11;
      v78 = v12;

      v40._countAndFlagsBits = 58;
      v40._object = 0xE100000000000000;
      String.append(_:)(v40);
      if (*(a1 + 16))
      {
        v41 = sub_100013364(v11, v12);
        v43 = v42;

        if (v43)
        {
          v44 = *(*(a1 + 56) + 16 * v41);

          goto LABEL_26;
        }
      }

      else
      {
      }

      v44 = 0;
      v45 = 0;
LABEL_26:
      v75 = v44;
      v76 = v45;
      sub_1000039E8(&qword_1004A7330, &qword_1003762A0);
      v51._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v51);

      v52 = v77;
      v53 = v78;
      *(v39 + 56) = &type metadata for String;
      *(v39 + 64) = sub_10001A9EC();
      *(v39 + 32) = v52;
      *(v39 + 40) = v53;
      sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
      v54 = static OS_os_log.default.getter();
      v55 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Skipping header with empty header name: '%{public}s'", 52, 2, &_mh_execute_header, v54, v55, v39);
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v68)
    {

      *(v66[1] + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__knoxExtraHeaders) = v71;
    }

    v7 = *(v69 + 8 * v9);
    ++v8;
    if (v7)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t (*sub_10005060C(void *a1))(uint64_t *a1, char a2)
{
  *a1 = *(v1 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__knoxExtraHeaders);
  a1[1] = v1;

  return sub_100050660;
}

uint64_t sub_100050660(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_10005003C(*a1);
  }

  sub_10005003C(v2);
}

__n128 sub_1000506C4(uint64_t a1)
{
  v14 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = (v1 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_SAKSmTLSAuth);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = v4[5];
  v11 = v4[6];
  v12 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v12;
  *(v4 + 2) = v14;
  v4[6] = v3;
  sub_10005D990(v5, v6, v7, v8, v9, v10, v11);
  return result;
}

void sub_1000507A8(void *a1@<X0>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = v4[5];
  v11 = v4[6];
  *a3 = *v4;
  a3[1] = v6;
  a3[2] = v7;
  a3[3] = v8;
  a3[4] = v9;
  a3[5] = v10;
  a3[6] = v11;
  sub_10005D92C(v5, v6, v7, v8, v9, v10, v11);
}

void sub_100050814(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = a1[4];
  v10 = a1[5];
  v11 = a1[6];
  v12 = (*a2 + *a5);
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  v18 = v12[3];
  v19 = v12[2];
  v16 = v12[5];
  v17 = v12[4];
  v15 = v12[6];
  *v12 = v5;
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v12[4] = v9;
  v12[5] = v10;
  v12[6] = v11;
  sub_10005D92C(v5, v6, v7, v8, v9, v10, v11);
  sub_10005D990(v13, v14, v19, v18, v17, v16, v15);
}

void sub_1000508F8(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = v4[5];
  v11 = v4[6];
  *a2 = *v4;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v9;
  a2[5] = v10;
  a2[6] = v11;
  sub_10005D92C(v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_100050960(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_alternateCDNHost);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1000509CC()
{
  v1 = (v0 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_alternateCDNHost);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_100050A24(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_alternateCDNHost);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t static KnoxServiceClient.trustRootPEMPath.getter()
{
  swift_beginAccess();
  v0 = qword_1004A79C0;

  return v0;
}

uint64_t static KnoxServiceClient.trustRootPEMPath.setter(uint64_t a1, char *a2)
{
  swift_beginAccess();
  qword_1004A79C0 = a1;
  off_1004A79C8 = a2;
}

uint64_t sub_100050C08(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1004A79C0 = v2;
  off_1004A79C8 = v1;
}

void *sub_100050C6C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = *(*result + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_authToken);
  if (v3)
  {
    type metadata accessor for WestgateToken(0);
    result = swift_dynamicCastClass();
    v4 = result;
    if (result)
    {
      result = v3;
    }
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_100050CD4()
{
  v1 = *(v0 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_authToken);
  if (!v1)
  {
    return 0;
  }

  type metadata accessor for WestgateToken(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = result;
    v4 = v1;
    return v3;
  }

  return result;
}

uint64_t sub_100050D2C(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_synchronizationQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10005DA38;
  *(v5 + 24) = v4;
  v11[4] = sub_10001F874;
  v11[5] = v5;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10003885C;
  v11[3] = &unk_10047E3B8;
  v6 = _Block_copy(v11);
  v7 = a1;

  v8 = v1;

  dispatch_sync(v3, v6);

  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_100050E98(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_authToken;
  v5 = a2;
  v9 = *(a1 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_authToken);
  if (v9)
  {
    type metadata accessor for WestgateToken(0);
    v6 = swift_dynamicCastClass();
    v5 = a2;
    if (v6)
    {
      if (a2)
      {
        v7 = v9;
        v9 = a2;
        sub_100066238(v9);

        goto LABEL_7;
      }

      v5 = 0;
    }
  }

  *(a1 + v4) = v5;
  v8 = a2;
LABEL_7:
}

void (*sub_100050F4C(uint64_t *a1))(void ****a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = *(v1 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_authToken);
  if (v5)
  {
    type metadata accessor for WestgateToken(0);
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  *(v4 + 48) = v6;
  return sub_100050FF8;
}

void sub_100050FF8(void ****a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 6);
  v3 = *v4;
  v5 = (*a1)[7];
  v6 = *(v5 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_synchronizationQueue);
  if ((a2 & 1) == 0)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v5;
    *(v14 + 24) = v3;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_100064E30;
    *(v15 + 24) = v14;
    v2[4] = sub_10001FA40;
    v2[5] = v15;
    *v2 = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = sub_10003885C;
    v2[3] = &unk_10047E4A8;
    v16 = _Block_copy(v2);
    v17 = v3;

    v18 = v5;

    dispatch_sync(v6, v16);

    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100064E30;
  *(v8 + 24) = v7;
  v2[4] = sub_10001FA40;
  v2[5] = v8;
  *v2 = _NSConcreteStackBlock;
  v2[1] = 1107296256;
  v2[2] = sub_10003885C;
  v2[3] = &unk_10047E430;
  v9 = _Block_copy(v2);
  v10 = v3;
  v11 = v5;
  v12 = v10;

  dispatch_sync(v6, v9);

  _Block_release(v9);
  v13 = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
    goto LABEL_9;
  }

LABEL_5:

  free(v2);
}

id KnoxServiceClient.__allocating_init(authToken:delegate:knoxHostURL:trustRootPEMPath:useAsyncHttpClient:)(void *a1, void *a2, uint64_t a3, uint64_t a4, char *a5)
{
  v6 = sub_10005F210(a1, a2, a3, a4, a5);

  return v6;
}

void *KnoxServiceClient.init(from:)(void *a1)
{
  v84 = a1;
  v2 = v1;
  v3 = type metadata accessor for URL();
  v88 = *(v3 - 8);
  v89 = v3;
  __chkstk_darwin(v3);
  v65 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for Date();
  v67 = *(v68 - 8);
  v5 = __chkstk_darwin(v68);
  v66 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v69 = &v64 - v7;
  v71 = sub_1000039E8(&qword_1004A7A20, &qword_1003772F0);
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  *&v87 = &v64 - v8;
  v86 = type metadata accessor for DispatchQoS.QoSClass();
  v83 = *(v86 - 8);
  __chkstk_darwin(v86);
  v82 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  *&v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  *&v78 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v11);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  v76 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_httpMaximumConnectionsPerHost] = 16;
  *&v1[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__decryptionThreadCount] = 4;
  *&v1[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__networkOperationTryCount] = 2;
  *&v1[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__networkOperationRetryDelay] = 3;
  v1[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_useExponentialRetryDelay] = 0;
  *&v1[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__maximumDownloadStartCount] = 5;
  v14 = &v1[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_globalSessionTraceId];
  *v14 = 0;
  *(v14 + 1) = 0;
  v72 = v14;
  *&v1[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_timeoutSeconds] = 0x4092C00000000000;
  v73 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__knoxExtraHeaders;
  *&v1[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__knoxExtraHeaders] = &_swiftEmptyDictionarySingleton;
  v15 = &v1[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_SAKSmTLSAuth];
  *v15 = xmmword_1003772E0;
  *(v15 + 1) = 0u;
  *(v15 + 2) = 0u;
  v74 = v15;
  *(v15 + 6) = 0;
  v16 = &v1[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_knoxMtlsAuth];
  *v16 = xmmword_1003772E0;
  *(v16 + 1) = 0u;
  *(v16 + 2) = 0u;
  v80 = v16;
  *(v16 + 6) = 0;
  v17 = &v1[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_alternateCDNHost];
  *v17 = 0;
  *(v17 + 1) = 0;
  v75 = v17;
  v18 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_synchronizationQueue;
  sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
  v77 = "r name: '%{public}s'";
  static DispatchQoS.userInitiated.getter();
  *&v92 = _swiftEmptyArrayStorage;
  sub_100061B64(&unk_1004A6B60, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850, &qword_100376280);
  sub_10000E720(&qword_1004A6B70, &unk_1004A7850, &qword_100376280, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v79 + 104))(v78, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v81);
  v19 = v83;
  v20 = v82;
  v21 = v86;
  (*(v83 + 104))(v82, enum case for DispatchQoS.QoSClass.default(_:), v86);
  static OS_dispatch_queue.global(qos:)();
  (*(v19 + 8))(v20, v21);
  v22 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v82 = v18;
  *&v1[v18] = v22;
  v86 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_authToken;
  *&v1[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_authToken] = 0;
  v23 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__rfc7617ControlCharacters;
  v24 = type metadata accessor for CharacterSet();
  v25 = *(*(v24 - 8) + 56);
  v81 = v23;
  v25(v2 + v23, 1, 1, v24);
  *(v2 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_urlSessionTimeoutIntervalForRequest) = 0x405E000000000000;
  v26 = v2 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__dawTokenFactory;
  *v26 = 0u;
  *(v26 + 16) = 0u;
  *(v26 + 32) = 0;
  if (qword_1004A6A88 != -1)
  {
    swift_once();
  }

  v27 = v89;
  v28 = sub_1000270B4(v89, qword_1004A7980);
  v29 = *(v88 + 16);
  v83 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_knoxHostURL;
  v29(v2 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_knoxHostURL, v28, v27);
  v30 = v84;
  sub_10000E2A8(v84, v84[3]);
  sub_10005FC78();
  v31 = v85;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v32 = v80;
  if (v31)
  {
    v55 = v88;
    v54 = v89;
    sub_100003C3C(v30);

    (*(v55 + 8))(v2 + v83, v54);

    sub_10005D990(*v74, *(v74 + 1), *(v74 + 2), *(v74 + 3), *(v74 + 4), *(v74 + 5), *(v74 + 6));
    sub_10005D990(*v32, *(v32 + 1), *(v32 + 2), *(v32 + 3), *(v32 + 4), *(v32 + 5), *(v32 + 6));

    sub_100013F2C(v2 + v81, &qword_1004A7A48, &qword_1003772F8);
    sub_100013F2C(v26, &qword_1004A7A50, &unk_100377300);
    type metadata accessor for KnoxServiceClient(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v85 = v29;
    LOBYTE(v92) = 0;
    v33 = v71;
    v34 = v87;
    v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if (v36)
    {
      v37 = v66;
      v38 = v35;
      v39 = v36;
      Date.init()();
      Date.addingTimeInterval(_:)();
      (*(v67 + 8))(v37, v68);
      v40 = objc_allocWithZone(type metadata accessor for DAWToken(0));
      v41 = v38;
      v34 = v87;
      v42 = v39;
      v33 = v71;
      v43 = DAWToken.init(token:expirationDate:)(v41, v42, v69);
      v44 = *(v2 + v86);
      *(v2 + v86) = v43;
    }

    v91[0] = 1;
    sub_10005FD18();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v87 = v94;
    v45 = v95;
    v79 = v93;
    v78 = v92;
    swift_beginAccess();
    v46 = *v32;
    v47 = *(v32 + 1);
    v48 = *(v32 + 2);
    v49 = *(v32 + 3);
    v50 = *(v32 + 4);
    v51 = *(v32 + 5);
    v52 = *(v32 + 6);
    v53 = v79;
    *v32 = v78;
    *(v32 + 1) = v53;
    *(v32 + 2) = v87;
    *(v32 + 6) = v45;
    sub_10005D990(v46, v47, v48, v49, v50, v51, v52);
    type metadata accessor for AuthToken(0);
    v96 = 2;
    sub_100061B64(&qword_1004A7A60, 255, type metadata accessor for AuthToken, &protocol conformance descriptor for AuthToken);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v57 = *(v2 + v86);
    *(v2 + v86) = v92;

    v58 = type metadata accessor for KnoxDelegateSimple();
    v96 = 3;
    *(&v93 + 1) = v58;
    *&v94 = &protocol witness table for KnoxDelegateSimple;
    sub_100061B64(&qword_1004A7A68, 255, type metadata accessor for KnoxDelegateSimple, &protocol conformance descriptor for KnoxDelegateSimple);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_100003C88(&v92, v2 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_delegate);
    v59 = v65;
    v60 = v33;
    v61 = v89;
    v85(v65, v2 + v83, v89);
    v62 = sub_10005E530(120.0, v59, 16);
    (*(v88 + 8))(v59, v61);
    (*(v70 + 8))(v34, v60);
    *(v2 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_session) = v62;
    *(v2 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_useAHC) = 0;
    v63 = type metadata accessor for KnoxServiceClient(0);
    v90.receiver = v2;
    v90.super_class = v63;
    v2 = objc_msgSendSuper2(&v90, "init");
    sub_100003C3C(v30);
  }

  return v2;
}