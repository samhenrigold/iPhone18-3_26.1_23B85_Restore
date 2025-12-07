uint64_t sub_100002014(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000E0AE8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_1000E0AC8();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100002148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  v9 = sub_1000E2538();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a2;

  sub_100022F54(0, 0, v8, a4, v10);
}

uint64_t sub_100002248(uint64_t a1)
{
  v2 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000022B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002D64;

  return sub_10000283C(a1, v4);
}

uint64_t sub_100002368()
{
  v1 = sub_1000E2118();
  v15 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000E2148();
  v4 = *(v14 - 8);
  __chkstk_darwin(v14);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 120);
  v8 = [v7 queue];
  v9 = swift_allocObject();
  *(v9 + 16) = v0;
  *(v9 + 24) = v7;
  aBlock[4] = sub_100002764;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000026A0;
  aBlock[3] = &unk_100116FC8;
  v10 = _Block_copy(aBlock);

  v11 = v7;
  sub_1000E2138();
  v16 = _swiftEmptyArrayStorage;
  sub_100002C1C(&qword_10011EA20, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
  sub_100002C64(&qword_10011EA30, &unk_10011ED10, &unk_1000F0A60, &protocol conformance descriptor for [A]);
  sub_1000E28C8();
  sub_1000E2738();
  _Block_release(v10);

  (*(v15 + 8))(v3, v1);
  (*(v4 + 8))(v6, v14);
}

uint64_t sub_10000265C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000026A0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1000026E4(int a1, id a2)
{
  v2 = [a2 currentAudioAndVideoCalls];
  sub_10000276C();
  sub_1000E2468();

  sub_1000E1FE8();
}

unint64_t sub_10000276C()
{
  result = qword_100120630;
  if (!qword_100120630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100120630);
  }

  return result;
}

uint64_t sub_10000283C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_100002D68;

  return v5(v2 + 32);
}

uint64_t sub_100002930(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_1000029E4(a1, v4, v5, v6);
}

uint64_t sub_1000029E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return _swift_task_switch(sub_100002A04, 0, 0);
}

uint64_t sub_100002A04()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_100002AC8, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_100002AC8()
{
  sub_100002368();

  return _swift_task_switch(sub_10000269C, 0, 0);
}

uint64_t sub_100002B3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002B5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002B6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002B7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002B8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002B9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002BAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002BBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002BCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002BDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002BEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002C0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002C1C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100002C64(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000AE90(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100002CB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_1000029E4(a1, v4, v5, v6);
}

uint64_t sub_100002D68()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100002E7C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100002F70()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100002FB8(uint64_t a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100003004()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000308C()
{

  if (!v0)
  {

    return _swift_task_switch(sub_1000047D4, 0, 0);
  }

  return result;
}

uint64_t sub_10000319C()
{

  if (!v0)
  {

    return _swift_task_switch(sub_1000032AC, 0, 0);
  }

  return result;
}

uint64_t sub_1000032AC()
{
  if (v0[19] && (, Strong = swift_weakLoadStrong(), (v0[26] = Strong) != 0))
  {

    return _swift_task_switch(sub_100003984, Strong, 0);
  }

  else
  {
    sub_10000E9DC(v0 + 2);
    sub_100023B10();

    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_100003380(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000033C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000ADE4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100003434()
{
  v1 = v0[30];
  v2 = v0[27];
  v9 = v0[29];
  v10 = v0[28];
  v3 = v0[25];
  v4 = v0[26];
  v8 = [*(v0[32] + 200) queue];
  v5 = swift_allocObject();
  swift_weakInit();
  v0[6] = sub_1000CF0C8;
  v0[7] = v5;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1000026A0;
  v0[5] = &unk_1001166E8;
  v6 = _Block_copy(v0 + 2);

  sub_1000E2138();
  v0[22] = _swiftEmptyArrayStorage;
  sub_1000041BC(&qword_10011EA20, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
  sub_10002B8C4();
  sub_1000E28C8();
  sub_1000E2738();
  _Block_release(v6);

  (*(v4 + 8))(v2, v3);
  (*(v9 + 8))(v1, v10);

  sub_100003F64();

  return _swift_task_switch(sub_100004904, 0, 0);
}

uint64_t sub_100003674()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_1000036AC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000036F0()
{

  sub_1000037BC(v0 + 16, *(v0 + 40));
  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  *v1 = v0;
  v1[1] = sub_10000319C;

  return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v0 + 152, 0, 0);
}

uint64_t sub_1000037BC(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_10000380C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_1000038C0(a1, v4, v5, v6);
}

uint64_t sub_1000038C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = sub_1000E2B28();
  v4[3] = v6;
  v4[4] = *(v6 - 8);
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_100003CD8, a4, 0);
}

uint64_t sub_100003984()
{
  v1 = v0[26];
  if (*(v1 + 184))
  {
    v2 = sub_1000E1EE8();
    v3 = sub_1000E2668();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Debouncing calls changed events...", v4, 2u);
    }
  }

  else
  {
    v5 = v0[22];
    v6 = v0[23];
    v7 = sub_1000E2538();
    v8 = *(v7 - 8);
    (*(v8 + 56))(v6, 1, 1, v7);
    v10 = sub_100003380(&qword_10011ECB8, v9, type metadata accessor for NearbyCallServer, &unk_1000F1080);
    v11 = swift_allocObject();
    v11[2] = v1;
    v11[3] = v10;
    v11[4] = v1;
    sub_10001223C(v6, v5);
    LODWORD(v6) = (*(v8 + 48))(v5, 1, v7);
    swift_retain_n();

    v12 = v0[22];
    if (v6 == 1)
    {
      sub_1000033C8(v0[22], &unk_10011EA50, &qword_1000F0D30);
    }

    else
    {
      sub_1000E2528();
      (*(v8 + 8))(v12, v7);
    }

    v13 = v11[2];
    swift_unknownObjectRetain();

    if (v13)
    {
      swift_getObjectType();
      v14 = sub_1000E24B8();
      v16 = v15;
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    sub_1000033C8(v0[23], &unk_10011EA50, &qword_1000F0D30);
    if (v16 | v14)
    {
      v0[12] = 0;
      v0[13] = 0;
      v0[14] = v14;
      v0[15] = v16;
    }

    *(v1 + 184) = swift_task_create();
  }

  return _swift_task_switch(sub_1000036F0, 0, 0);
}

uint64_t sub_100003C98()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100003CD8()
{
  sub_1000E2CF8();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_100004BC4;

  return sub_100003DA4(100000000000000000, 0, 0, 0, 1);
}

uint64_t sub_100003DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1000E2B18();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_10000463C, 0, 0);
}

void sub_100003EA4(char a1)
{
  v3 = [objc_opt_self() currentConnection];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_splitSessionApprovalConnection;
  v6 = *(v1 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_splitSessionApprovalConnection);
  if (a1)
  {
    goto LABEL_6;
  }

  if (v6)
  {
    v8 = v4;
    v7 = [v6 isEqual:?];

    if (!v7)
    {
      return;
    }

    v4 = 0;
LABEL_6:
    *(v1 + v5) = v4;
  }

  _objc_release_x2();
}

void sub_100003F64()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  if (*(v0 + 336))
  {
    if (qword_10011DC40 != -1)
    {
      swift_once();
    }

    v5 = sub_1000E1F08();
    sub_1000049D0(v5, qword_100120060);
    v14 = sub_1000E1EE8();
    v6 = sub_1000E2668();
    if (os_log_type_enabled(v14, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v14, v6, "[ContinuityCalls] Deduping calls changed event.", v7, 2u);
    }

    v8 = v14;
  }

  else
  {
    v9 = sub_1000E2538();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    v11 = sub_1000041BC(&unk_1001200D0, v10, type metadata accessor for ContinuitySessionServer, &unk_1000F32A8);
    v12 = swift_allocObject();
    v12[2] = v0;
    v12[3] = v11;
    v12[4] = v0;
    v12[5] = ObjectType;
    swift_retain_n();
    *(v0 + 336) = sub_100022960(0, 0, v4, &unk_1000F3310, v12);
  }
}

uint64_t sub_1000041BC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100004204(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002D64;

  return sub_1000042BC(a1, v4);
}

uint64_t sub_1000042BC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000058E4;

  return v6(a1);
}

uint64_t sub_1000043B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_100004474(a1, v4, v5, v6);
}

uint64_t sub_100004474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[24] = a4;
  sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v4[25] = swift_task_alloc();
  v6 = sub_1000E2B28();
  v4[26] = v6;
  v4[27] = *(v6 - 8);
  v4[28] = swift_task_alloc();

  return _swift_task_switch(sub_100004570, a4, 0);
}

uint64_t sub_100004570()
{
  sub_1000E2CF8();
  v1 = swift_task_alloc();
  *(v0 + 232) = v1;
  *v1 = v0;
  v1[1] = sub_100004EB8;

  return sub_100003DA4(100000000000000000, 0, 0, 0, 1);
}

uint64_t sub_10000463C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1000E2B28();
  v5 = sub_100003380(&qword_10011ED30, 255, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_1000E2CD8();
  sub_100003380(&qword_10011ED38, 255, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_1000E2B38();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_100004A08;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_1000047D4()
{
  if (v0[21] && (, Strong = swift_weakLoadStrong(), (v0[32] = Strong) != 0))
  {

    return _swift_task_switch(sub_100003434, Strong, 0);
  }

  else
  {
    sub_10000E9DC(v0 + 8);

    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_100004904()
{

  sub_1000037BC(v0 + 64, *(v0 + 88));
  v1 = swift_task_alloc();
  *(v0 + 248) = v1;
  *v1 = v0;
  v1[1] = sub_10000308C;

  return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v0 + 168, 0, 0);
}

uint64_t sub_1000049D0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100004A08()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_100029AF8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100004BC4()
{
  v2 = *v1;

  v3 = v2[5];
  v4 = v2[4];
  v5 = v2[3];
  v6 = v2[2];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v7 = sub_10002BA6C;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v7 = sub_100004D70;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100004D70()
{
  *(*(v0 + 16) + 184) = 0;

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_100006EC4;

  return sub_100004E10();
}

uint64_t sub_100004E10()
{
  v1[24] = v0;
  sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();

  return _swift_task_switch(sub_100005064, v0, 0);
}

uint64_t sub_100004EB8()
{
  v2 = *v1;

  v3 = v2[28];
  v4 = v2[27];
  v5 = v2[26];
  v6 = v2[24];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v7 = sub_100005A94;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v7 = sub_100005348;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100005064()
{
  sub_100005524((v0 + 72));
  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = *(v0 + 192);
    *(v0 + 16) = *(v0 + 72);
    *(v0 + 24) = v1;
    v3 = *(v0 + 104);
    *(v0 + 32) = *(v0 + 88);
    *(v0 + 48) = v3;
    *(v0 + 64) = *(v0 + 120);
    *(v0 + 216) = sub_100005F20();
    *(v0 + 224) = v4;
    sub_1000033C8(v0 + 72, &qword_10011ECC0, &unk_1000F1120);
    v6 = sub_100003380(&qword_10011ECB8, v5, type metadata accessor for NearbyCallServer, &unk_1000F1080);
    *(v0 + 232) = v6;
    v7 = swift_allocObject();
    *(v0 + 240) = v7;
    swift_weakInit();
    v8 = swift_task_alloc();
    *(v0 + 248) = v8;
    v9 = sub_10000ADE4(&qword_10011ECC8, &qword_1000F3300);
    *v8 = v0;
    v8[1] = sub_100023BF8;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 184, v2, v6, 0xD000000000000010, 0x80000001000EA5F0, sub_10002B68C, v7, v9);
  }

  else
  {
    if (qword_10011DBF8 != -1)
    {
      swift_once();
    }

    v10 = sub_1000E1F08();
    sub_1000049D0(v10, qword_10011EBD0);
    v11 = sub_1000E1EE8();
    v12 = sub_1000E2678();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Unable to broadcast calls because local account is unavailable!", v13, 2u);
    }

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_100005310()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005348()
{
  v1 = *(v0 + 192);
  v2 = *(v1 + 136);
  v3 = *(v1 + 168);
  v4 = *(v1 + 120);
  *(v0 + 48) = *(v1 + 152);
  *(v0 + 64) = v3;
  *(v0 + 16) = v4;
  *(v0 + 32) = v2;
  v5 = *(v0 + 24);
  if (v5)
  {
    v6 = *(v0 + 200);
    v7 = *(v0 + 16);
    v8 = *(v1 + 168);
    v9 = *(v1 + 152);
    *(v0 + 144) = *(v1 + 136);
    *(v0 + 160) = v9;
    *(v0 + 176) = v8;
    v10 = sub_1000E2538();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    v12 = sub_1000041BC(&unk_1001200D0, v11, type metadata accessor for ContinuitySessionServer, &unk_1000F32A8);
    v13 = swift_allocObject();
    *(v13 + 16) = v1;
    *(v13 + 24) = v12;
    *(v13 + 32) = v1;
    *(v13 + 40) = v7;
    *(v13 + 48) = v5;
    v14 = *(v0 + 160);
    *(v13 + 56) = *(v0 + 144);
    *(v13 + 72) = v14;
    *(v13 + 88) = *(v0 + 176);
    swift_retain_n();
    sub_10000CB64(v0 + 16, v0 + 80, &unk_10011FA58, &unk_1000F25E0);
    sub_100022960(0, 0, v6, &unk_1000F3320, v13);

    v1 = *(v0 + 192);
  }

  *(v1 + 336) = 0;

  v15 = *(v0 + 8);

  return v15();
}

void sub_100005524(uint64_t *a1@<X8>)
{
  v2 = sub_1000E0D68();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() ams_sharedAccountStore];
  v7 = [v6 ams_activeiCloudAccount];
  if (v7 && (v8 = v7, v9 = [v7 ams_altDSID], v8, v9))
  {
    v42 = sub_1000E2338();
    v11 = v10;
  }

  else
  {
    v42 = 0;
    v11 = 0;
  }

  v12 = [v6 ams_activeiTunesAccount];
  if (v12 && (v13 = v12, v14 = [v12 ams_altDSID], v13, v14))
  {
    v15 = sub_1000E2338();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v18 = sub_1000E1F08();
  sub_1000049D0(v18, qword_100123128);

  v19 = sub_1000E1EE8();
  v20 = sub_1000E2698();
  if (!os_log_type_enabled(v19, v20))
  {

    if (v11 | v17)
    {
      goto LABEL_13;
    }

LABEL_26:

    v27 = 0;
    v29 = 0;
    v36 = 0;
    v38 = 0;
    v39 = 0;
    v37 = 0;
    v40 = 0;
    goto LABEL_27;
  }

  v21 = swift_slowAlloc();
  v41 = v6;
  v22 = v5;
  v23 = v3;
  v24 = v2;
  v25 = v15;
  v26 = v21;
  *v21 = 67109376;
  v21[1] = v11 != 0;

  *(v26 + 4) = 1024;
  *(v26 + 10) = v17 != 0;

  _os_log_impl(&_mh_execute_header, v19, v20, "User Account Info - iCloudAltDSID: %{BOOL}d, iTunesAltDSID: %{BOOL}d", v26, 0xEu);
  v15 = v25;
  v2 = v24;
  v3 = v23;
  v5 = v22;
  v6 = v41;

  if (!(v11 | v17))
  {
    goto LABEL_26;
  }

LABEL_13:
  sub_1000E0D58();
  v27 = sub_1000E0D08();
  v29 = v28;
  (*(v3 + 8))(v5, v2);
  v30 = sub_100005B48(v42, v11, v27, v29);
  v32 = v31;

  v33 = sub_100005B48(v15, v17, v27, v29);
  v35 = v34;

  if (v32 >> 60 == 15)
  {
    v36 = 0;
  }

  else
  {
    v36 = v30;
  }

  v37 = 0xC000000000000000;
  if (v32 >> 60 == 15)
  {
    v38 = 0xC000000000000000;
  }

  else
  {
    v38 = v32;
  }

  if (v35 >> 60 == 15)
  {
    v39 = 0;
  }

  else
  {
    v39 = v33;
  }

  if (v35 >> 60 != 15)
  {
    v37 = v35;
  }

  v40 = _swiftEmptyArrayStorage;
LABEL_27:
  *a1 = v27;
  a1[1] = v29;
  a1[2] = v36;
  a1[3] = v38;
  a1[4] = v39;
  a1[5] = v37;
  a1[6] = v40;
}

uint64_t sub_1000058E4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000059DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002D64;

  return sub_10002AD6C(a1, v4);
}

uint64_t sub_100005A98()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100005AE0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_100005B48(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1000E2208();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000E2288();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return 0;
  }

  v19[0] = a1;
  v19[1] = a2;

  v20._countAndFlagsBits = 43;
  v20._object = 0xE100000000000000;
  sub_1000E23A8(v20);
  v21._countAndFlagsBits = a3;
  v21._object = a4;
  sub_1000E23A8(v21);
  sub_1000E2278();
  sub_100005D60(v19);

  sub_1000E2268();
  sub_1000E21F8();
  (*(v9 + 8))(v11, v8);
  v16 = v18[1];
  (*(v13 + 8))(v15, v12);
  return v16;
}

uint64_t sub_100005D60(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if ((v3 & 0x1000000000000000) != 0)
  {
    v5 = sub_1000A3AFC(v2, v3);
    v7 = v6;

    v2 = v5;
    *a1 = v5;
    a1[1] = v7;
    if ((v7 & 0x2000000000000000) != 0)
    {
      return sub_1000E2258();
    }
  }

  else if ((v3 & 0x2000000000000000) != 0)
  {
    return sub_1000E2258();
  }

  if ((v2 & 0x1000000000000000) == 0)
  {
    sub_1000E2AB8();
  }

  return sub_1000E2258();
}

char *sub_100005E58@<X0>(char *result@<X0>, char *a2@<X1>, char **a3@<X8>)
{
  if (result)
  {
    v4 = a2 - result;
    if (a2 == result)
    {
      result = 0;
      v5 = 0xC000000000000000;
    }

    else if (v4 <= 14)
    {
      result = sub_1000A72D4(result, a2);
      v5 = (v7 & 0xFFFFFFFFFFFFFFLL);
    }

    else
    {
      sub_1000E0B38();
      swift_allocObject();
      v6 = sub_1000E0AF8();
      if (v4 >= 0x7FFFFFFF)
      {
        sub_1000E0C68();
        result = swift_allocObject();
        *(result + 2) = 0;
        *(result + 3) = v4;
        v5 = (v6 | 0x8000000000000000);
      }

      else
      {
        result = (v4 << 32);
        v5 = (v6 | 0x4000000000000000);
      }
    }

    *a3 = result;
    a3[1] = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100005F20()
{
  sub_1000E0BB8();
  swift_allocObject();
  sub_1000E0BA8();
  sub_10000613C();
  v0 = sub_1000E0B98();

  return v0;
}

unint64_t sub_10000613C()
{
  result = qword_10011F158;
  if (!qword_10011F158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F158);
  }

  return result;
}

uint64_t sub_1000061A8(void *a1)
{
  v3 = v1;
  v5 = sub_10000ADE4(&qword_10011F168, &qword_1000F18E8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000036AC(a1, a1[3]);
  sub_10000641C();
  sub_1000E2D98();
  LOBYTE(v13) = 0;
  sub_1000E2BD8();
  if (!v2)
  {
    v15 = *(v3 + 16);
    v13 = *(v3 + 16);
    v12 = 1;
    sub_1000064FC(&v15, v11);
    sub_10000655C();
    sub_1000E2BE8();
    sub_100006660(v13, *(&v13 + 1));
    v13 = *(v3 + 32);
    v14 = v13;
    v12 = 2;
    sub_1000064FC(&v14, v11);
    sub_1000E2BE8();
    sub_100006660(v13, *(&v13 + 1));
    *&v13 = *(v3 + 48);
    v11[0] = 3;
    sub_10000ADE4(&qword_10011F180, &qword_1000F18F0);
    sub_1000066B4(&qword_10011F188, sub_10000655C, &protocol conformance descriptor for <A> [A]);
    sub_1000E2BE8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_10000641C()
{
  result = qword_10011F170;
  if (!qword_10011F170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F170);
  }

  return result;
}

unint64_t sub_10000647C()
{
  v1 = 0x65636E6F6ELL;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000018;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_10000655C()
{
  result = qword_10011F178;
  if (!qword_10011F178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F178);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for UserAccountInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100006660(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1000066B4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000AE90(&qword_10011F180, &qword_1000F18F0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserAccountInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1000067BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_100006804(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

unint64_t *sub_100006820()
{
  v0 = [objc_allocWithZone(UNUserNotificationCenter) initWithBundleIdentifier:TUBundleIdentifierMobilePhoneApplication];
  v1 = [v0 notificationSettings];

  if ([v1 authorizationStatus] == 1 || objc_msgSend(v1, "showPreviewsSetting") == 2 || !objc_msgSend(objc_opt_self(), "areCallsOnOtherDevicesEnabled"))
  {
    if (qword_10011DC90 != -1)
    {
      swift_once();
    }

    v4 = sub_1000E1F08();
    sub_1000049D0(v4, qword_1001231B8);
    v5 = sub_1000E1EE8();
    v6 = sub_1000E2698();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Filtering out incoming call banner devices because global notifications are disabled in settings.", v7, 2u);
    }

    return _swiftEmptyArrayStorage;
  }

  else
  {
    if (qword_10011DC58 != -1)
    {
      swift_once();
    }

    v2 = sub_1000069EC(6u);

    if (v2)
    {
      return v2;
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }
}

unint64_t *sub_1000069EC(unsigned __int8 a1)
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_1000E2328();

  v3 = [v1 objectForKey:v2];

  if (v3)
  {
    sub_1000E28B8();
    swift_unknownObjectRelease();
    sub_1000033C8(v9, &unk_10011ECF0, &qword_1000F08A0);
    v4 = sub_1000E2328();

    v5 = [v1 arrayForKey:v4];

    if (v5)
    {
      v6 = sub_1000E2468();

      v7 = sub_100029970(v6);

      return v7;
    }
  }

  else
  {

    memset(v9, 0, sizeof(v9));
    sub_1000033C8(v9, &unk_10011ECF0, &qword_1000F08A0);
  }

  return 0;
}

uint64_t sub_100006CF4()
{
  v1 = v0[23];
  v0[32] = v1;
  v2 = sub_100006820();
  v0[33] = v2;
  if (qword_10011DBF8 != -1)
  {
    swift_once();
  }

  v3 = sub_1000E1F08();
  sub_1000049D0(v3, qword_10011EBD0);

  v4 = sub_1000E1EE8();
  v5 = sub_1000E2678();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    *(v6 + 4) = *(v1 + 16);

    *(v6 + 12) = 2048;
    *(v6 + 14) = v2[2];

    _os_log_impl(&_mh_execute_header, v4, v5, "Broadcasting %ld calls to nearby devices with %ld incoming call banner devices...", v6, 0x16u);
  }

  else
  {
  }

  v0[34] = *(v0[24] + 160);
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v7 = qword_1001230E0;
  v0[35] = qword_1001230E0;

  return _swift_task_switch(sub_100023D24, v7, 0);
}

uint64_t sub_100006EC4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t *sub_100006FD8(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *sub_100007050@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10000706C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000070A4()
{
  v1 = sub_10000ADE4(&unk_10011FA70, &qword_1000F0868);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100007174()
{
  v1 = sub_10000ADE4(&unk_10011FA70, &qword_1000F0868);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100007208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000E0D68();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000072D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000E0D68();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_10000738C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000073C4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100007404()
{
  v1 = sub_1000E12A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000074D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007508()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100007548()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007580()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000075F8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007630()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000766C()
{
  v1 = sub_1000E0D68();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100007758()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000077A8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000077F4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007844()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000078DC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000796C()
{
  swift_unknownObjectRelease();

  sub_10000E9DC((v0 + 40));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000079B4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1000079CC()
{
  sub_10000E9DC((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100007A0C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100007A4C()
{
  swift_unknownObjectRelease();

  sub_100006660(*(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100007AAC()
{
  v1 = sub_10000ADE4(&unk_10011ED00, &unk_1000F1160);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100007B7C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007BD0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100007C10()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100007C48()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007C80()
{
  v1 = sub_10000ADE4(&unk_10011FA70, &qword_1000F0868);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100007D50()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007DA0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007DD8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100007E40()
{
  v1 = *(v0 + 16);
  if (v1)
  {
  }

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_100007EC8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100007F84()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007FC4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100008044()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

id sub_10000810C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t sub_10000811C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008154()
{
  v1 = (type metadata accessor for HandoffInfo(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v1[8];
  v6 = sub_1000E0D68();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3 + v5, v6);
  v7(v0 + v3 + v1[9], v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000082AC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000082F0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008328()
{
  v1 = (type metadata accessor for HandoffInfo(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_1000E13E8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v14 = v2 | v7;
  v15 = *(v6 + 64);
  swift_unknownObjectRelease();

  v9 = v0 + v3;

  v10 = v1[8];
  v11 = sub_1000E0D68();
  v12 = *(*(v11 - 8) + 8);
  v12(v9 + v10, v11);
  v12(v9 + v1[9], v11);

  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v8 + v15, v14 | 7);
}

uint64_t sub_100008500()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008544()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_1000085AC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000085E4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000861C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100008670()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000086B8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100008700()
{

  return _swift_deallocObject(v0, 29, 7);
}

uint64_t sub_100008738()
{
  v1 = sub_1000E1AA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = sub_10000ADE4(&unk_10011FA70, &qword_1000F0868);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100008894()
{
  v1 = sub_1000E0D68();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1000E1C48();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100008A00()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100008B7C()
{
  v1 = (type metadata accessor for HandoffInfo(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v1[8];
  v6 = sub_1000E0D68();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3 + v5, v6);
  v7(v0 + v3 + v1[9], v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100008CC4()
{
  v1 = sub_1000E1948();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100008D98()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100008DE0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008E18()
{
  v1 = sub_10000ADE4(&qword_10011FC38, &qword_1000F3350);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100008EF0()
{
  v1 = sub_1000E1338();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100009000()
{
  v1 = sub_1000E1338();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000090F8()
{
  v1 = sub_1000E1338();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1000091E0()
{
  v1 = sub_1000E0D68();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000092B4()
{
  v1 = sub_1000E0D68();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 17) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1000093A4()
{
  v1 = sub_1000E0D68();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100009470()
{
  v1 = sub_1000E0D68();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v17 = (v3 + 24) & ~v3;
  v18 = v1;
  v4 = v17 + *(v2 + 64);
  v5 = sub_10000ADE4(&unk_10011FA70, &qword_1000F0868);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = sub_1000E0FE8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v8 + v9 + v12) & ~v12;
  v16 = *(v11 + 64);
  v14 = v3 | v12 | v7;

  (*(v2 + 8))(v0 + v17, v18);
  (*(v6 + 8))(v0 + v8, v5);
  (*(v11 + 8))(v0 + v13, v10);

  return _swift_deallocObject(v0, v13 + v16, v14 | 7);
}

uint64_t sub_100009658()
{
  v1 = sub_1000E0D68();
  v2 = *(v1 - 8);
  v17 = v1;
  v18 = *(v2 + 80);
  v3 = (v18 + 24) & ~v18;
  v4 = v3 + *(v2 + 64);
  v5 = sub_10000ADE4(&qword_10011FCC0, &qword_1000F2A80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v7) & ~v7;
  v9 = (v8 + *(v6 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(sub_10000ADE4(&qword_10011E478, &unk_1000F0998) - 8);
  v11 = *(v10 + 80);
  v12 = (v9 + v11 + 16) & ~v11;
  v16 = *(v10 + 64);

  v15 = *(v2 + 8);
  v15(v0 + v3, v17);
  (*(v6 + 8))(v0 + v8, v5);

  v13 = type metadata accessor for ConversationUIState(0);
  if (!(*(*(v13 - 8) + 48))(v0 + v12, 1, v13))
  {
    v15(v0 + v12, v17);
  }

  return _swift_deallocObject(v0, v12 + v16, v18 | v7 | v11 | 7);
}

uint64_t sub_1000098CC()
{
  v1 = sub_1000E0D68();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100009A6C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100009AA8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100009AEC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100009B24()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100009B64()
{
  sub_100006660(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100009BB4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100009BC4()
{

  v1 = *(v0 + 32);
  if (v1 >> 60 != 15)
  {
    sub_100006660(*(v0 + 24), v1);
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100009C2C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100009C64()
{
  v1 = sub_1000E1D08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = sub_10000ADE4(&unk_100120028, &qword_1000F3048);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100009DC0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_100009E30()
{
  v1 = sub_10000ADE4(&unk_10011ED00, &unk_1000F1160);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 104) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100009F30()
{
  v1 = sub_10000ADE4(&qword_10011FC38, &qword_1000F3350);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000A008()
{
  v1 = sub_1000E1978();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000A104()
{
  sub_10000E9DC((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000A144()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000A184()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_10000A1F4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000A284()
{
  v1 = sub_1000E0D68();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000A348()
{
  v1 = sub_1000E0D68();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = v4 + *(v2 + 64);
  sub_10000AE90(&unk_10011F8C0, &qword_1000F0C40);
  v6 = sub_1000E24E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 8, v10 | 7);
}

uint64_t sub_10000A4E0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000A518()
{
  v1 = (type metadata accessor for HandoffInfo(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v1[8];
  v6 = sub_1000E0D68();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3 + v5, v6);
  v7(v0 + v3 + v1[9], v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000A668()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000A6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000E0D68();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000A75C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000E0D68();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000A800()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000A848(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void FTSandboxEnter()
{
  if ((_set_user_dir_suffix() & 1) == 0 || (bzero(v1, 0x400uLL), !confstr(65537, v1, 0x400uLL)) || (v0 = realpath_DARWIN_EXTSN(v1, 0)) == 0)
  {
    exit(1);
  }

  free(v0);
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_1000E2708();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000E26B8();
  __chkstk_darwin(v7);
  v8 = sub_1000E2148();
  __chkstk_darwin(v8 - 8);
  if ([objc_opt_self() isConduitAvailable])
  {
    FTSandboxEnter();
    sub_10000CAAC(0, &qword_10011DCD0, OS_dispatch_queue_ptr);
    sub_1000E2138();
    v16[1] = _swiftEmptyArrayStorage;
    sub_10000C968(&qword_10011DCD8, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_10000ADE4(&qword_10011DCE0, &qword_1000F0190);
    sub_10000AE2C();
    sub_1000E28C8();
    (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v3);
    v9 = sub_1000E2748();
    if (qword_10011DC38 != -1)
    {
      swift_once();
    }

    v10 = qword_10011DC10;
    v11 = qword_1001230F8;
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = qword_1001230D8;
    objc_allocWithZone(type metadata accessor for NeighborhoodActivityConduitServer());
    v13 = sub_100015958(v9, v11, v12);
    v14 = [objc_opt_self() serviceListener];
    [v14 setDelegate:v13];
    [v14 resume];
  }

  return 0;
}

uint64_t sub_10000ADE4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10000AE2C()
{
  result = qword_10011DCE8;
  if (!qword_10011DCE8)
  {
    sub_10000AE90(&qword_10011DCE0, &qword_1000F0190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DCE8);
  }

  return result;
}

uint64_t sub_10000AE90(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t variable initialization expression of NeighborhoodActivityPublisherService.queue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1000E2708();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000E26B8();
  __chkstk_darwin(v7);
  v8 = sub_1000E2148();
  __chkstk_darwin(v8 - 8);
  sub_10000CAAC(0, &qword_10011DCD0, OS_dispatch_queue_ptr);
  sub_1000E2138();
  v10[1] = _swiftEmptyArrayStorage;
  sub_10000C968(&qword_10011DCD8, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10000ADE4(&qword_10011DCE0, &qword_1000F0190);
  sub_10000AE2C();
  sub_1000E28C8();
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v3);
  return sub_1000E2748();
}

uint64_t sub_10000B13C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1000E0D88();
}

Swift::Int sub_10000B268(uint64_t a1, uint64_t a2)
{
  sub_1000E2D48();
  swift_getWitnessTable();
  sub_1000E0D98();
  return sub_1000E2D68();
}

unint64_t sub_10000B2D0(uint64_t a1, uint64_t a2)
{
  sub_1000E2D48();
  sub_1000E2398();
  v4 = sub_1000E2D68();

  return sub_10000B468(a1, a2, v4);
}

unint64_t sub_10000B348(uint64_t a1)
{
  sub_1000E0D68();
  sub_10000C968(&qword_1001201B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2 = sub_1000E22D8();

  return sub_10000B520(a1, v2);
}

unint64_t sub_10000B3E0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000E29E8(*(v2 + 40));

  return sub_10000B6E0(a1, v4);
}

unint64_t sub_10000B424(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000E2808(*(v2 + 40));

  return sub_10000B7A8(a1, v4);
}

unint64_t sub_10000B468(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1000E2C68())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10000B520(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_1000E0D68();
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
      sub_10000C968(&qword_10011DF60, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = sub_1000E2318();
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

unint64_t sub_10000B6E0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10000C164(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_1000E29F8();
      sub_10000C1C0(v8);
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

unint64_t sub_10000B7A8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_10000CAAC(0, &qword_10011DF80, NSNumber_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1000E2818();

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

unint64_t sub_10000B87C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000ADE4(&unk_10011DF30, &unk_1000F04A0);
    v3 = sub_1000E2B98();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000B2D0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_10000B980(uint64_t a1)
{
  v2 = sub_10000ADE4(&qword_10011DFC8, &unk_1000F0520);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000ADE4(&qword_10011DFD0, &qword_1000F34D0);
    v7 = sub_1000E2B98();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000CB64(v9, v5, &qword_10011DFC8, &unk_1000F0520);
      result = sub_10000B348(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1000E0D68();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_10000BC1C(uint64_t a1)
{
  v2 = sub_10000ADE4(&unk_10011DFA0, &qword_1000F04F8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000ADE4(&unk_10011EB90, &qword_1000F0500);
    v7 = sub_1000E2B98();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000CB64(v9, v5, &unk_10011DFA0, &qword_1000F04F8);
      result = sub_10000B348(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1000E0D68();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_10000BE04(uint64_t a1)
{
  v2 = sub_10000ADE4(&qword_10011DF88, &qword_1000F04E0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000ADE4(&unk_10011DF90, &qword_1000F04E8);
    v7 = sub_1000E2B98();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000CB64(v9, v5, &qword_10011DF88, &qword_1000F04E0);
      result = sub_10000B348(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1000E0D68();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_10000ADE4(&qword_10011EBB0, &qword_1000F04F0);
      result = sub_10000CAF4(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_10000C018(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000ADE4(&qword_10011DEB8, &qword_1000F0488);
    v3 = sub_1000E2B98();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000CB64(v4, v13, &qword_10011DEC0, &unk_1000F0490);
      result = sub_10000B3E0(v13);
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
      result = sub_10000C154(&v15, (v3[7] + 32 * result));
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

_OWORD *sub_10000C154(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_10000C214(uint64_t a1)
{
  v2 = sub_10000ADE4(&qword_10011DFB8, &unk_1000F0510);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000ADE4(&qword_10011DFC0, &qword_1000F3500);
    v7 = sub_1000E2B98();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000CB64(v9, v5, &qword_10011DFB8, &unk_1000F0510);
      v11 = *v5;
      v12 = v5[1];
      result = sub_10000B2D0(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_1000E0DE8();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_10000C400(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000ADE4(&qword_10011DF70, &qword_1000F04D0);
    v3 = sub_1000E2B98();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000CB64(v4, &v13, &qword_10011DF78, &qword_1000F04D8);
      v5 = v13;
      v6 = v14;
      result = sub_10000B2D0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000C154(&v15, (v3[7] + 32 * result));
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

unint64_t sub_10000C56C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_10000ADE4(a2, a3);
    v5 = sub_1000E2B98();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_10000B2D0(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_10000C668(uint64_t a1)
{
  v2 = sub_10000ADE4(&qword_10011DF40, &qword_1000F04B0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000ADE4(&qword_10011DF48, &qword_1000F04B8);
    v7 = sub_1000E2B98();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000CB64(v9, v5, &qword_10011DF40, &qword_1000F04B0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_10000B2D0(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_1000E0ED8();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_10000C854(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000ADE4(&qword_10011DEC8, &unk_1000F35E0);
    v3 = sub_1000E2B98();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10000B2D0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_10000C968(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10000C9B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000ADE4(&qword_10011DF68, &qword_1000F04C8);
    v3 = sub_1000E2B98();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000B2D0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_10000CAAC(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_10000CAF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ADE4(&qword_10011EBB0, &qword_1000F04F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000CB64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000ADE4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_10000CC30(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

Swift::Int sub_10000CD30()
{
  v1 = *v0;
  sub_1000E2D48();
  sub_1000E2D58(v1);
  return sub_1000E2D68();
}

Swift::Int sub_10000CDA4()
{
  v1 = *v0;
  sub_1000E2D48();
  sub_1000E2D58(v1);
  return sub_1000E2D68();
}

uint64_t sub_10000CDF8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return _swift_task_switch(sub_10000CE40, v1, 0);
}

uint64_t sub_10000CE40()
{
  v18 = v0;
  sub_10000E844();
  v0[5] = v1;
  v0[6] = v2;
  v3 = v1;
  v4 = v2;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v5 = sub_1000E1F08();
  v0[7] = sub_1000049D0(v5, qword_100123128);

  v6 = sub_1000E1EE8();
  v7 = sub_1000E2698();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100029C70(v3, v4, &v17);
    _os_log_impl(&_mh_execute_header, v6, v7, "[Lookup Actor] Fetching capabilities for %s", v8, 0xCu);
    sub_10000E9DC(v9);
  }

  v10 = v0[3];
  v11 = v0[4];
  v13 = sub_10000EA28(&qword_10011E250, v12, type metadata accessor for HandleCapabilitiesLookupActor, &unk_1000F0838);
  v14 = swift_task_alloc();
  v0[8] = v14;
  v14[2] = v3;
  v14[3] = v4;
  v14[4] = v10;
  v14[5] = v11;
  v15 = swift_task_alloc();
  v0[9] = v15;
  *v15 = v0;
  v15[1] = sub_10000D0EC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v15, v10, v13, 0xD000000000000017, 0x80000001000E99D0, sub_10000E9D0, v14, &type metadata for () + 8);
}

uint64_t sub_10000D0EC()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_10000D214;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_10000D284;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10000D214()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000D284()
{
  v27 = v0;
  v1 = v0[6];
  v2 = v0[5];
  v3 = v0[3];
  sub_1000E1D88();
  v4 = sub_1000E2328();

  v5 = [v4 destinationIdIsPhoneNumber];

  v6 = *(v3 + 112);
  sub_10000ADE4(&qword_10011E258, &qword_1000F0860);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000F07C0;
  *(v7 + 32) = v2;
  *(v7 + 40) = v1;

  isa = sub_1000E2458().super.isa;

  v9 = [v6 isFaceTimeAudioAvailableForAnyDestinationInDestinations:isa];

  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000F07C0;
  *(v10 + 32) = v2;
  *(v10 + 40) = v1;

  v11 = sub_1000E2458().super.isa;

  v12 = [v6 isFaceTimeVideoAvailableForAnyDestinationInDestinations:v11];

  v13 = [objc_allocWithZone(TUContinuityHandleCapabilities) initWithSupportsTelephonyCalls:v5 supportsFaceTimeAudio:v9 supportsFaceTimeVideo:v12];

  v14 = v13;
  v15 = sub_1000E1EE8();
  v16 = sub_1000E2698();

  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[6];
  if (v17)
  {
    v19 = v0[5];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v26 = v21;
    *v20 = 136315650;
    v22 = sub_100029C70(v19, v18, &v26);

    *(v20 + 4) = v22;
    *(v20 + 12) = 1024;
    *(v20 + 14) = [v14 supportsFaceTimeVideo];

    *(v20 + 18) = 1024;
    v23 = [v14 supportsFaceTimeAudio];

    *(v20 + 20) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "[Lookup Actor] (%s) Returning capabilities -- supports video: %{BOOL}d, supports audio: %{BOOL}d", v20, 0x18u);
    sub_10000E9DC(v21);
  }

  else
  {
  }

  v24 = v0[1];

  return v24(v14);
}

void sub_10000D598(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v92 = a4;
  v94 = a2;
  v89 = a1;
  v5 = sub_10000ADE4(&unk_10011FA70, &qword_1000F0868);
  v90 = *(v5 - 8);
  v91 = v5;
  v88 = *(v90 + 64);
  __chkstk_darwin(v5);
  v87 = &v67 - v6;
  v7 = sub_10000ADE4(&qword_10011E260, &unk_1000F0870);
  __chkstk_darwin(v7 - 8);
  v82 = &v67 - v8;
  v9 = sub_1000E2848();
  v85 = *(v9 - 8);
  v86 = v9;
  __chkstk_darwin(v9);
  v81 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000ADE4(&qword_10011E268, &qword_1000F2760);
  __chkstk_darwin(v11 - 8);
  v13 = &v67 - v12;
  v73 = sub_1000E26F8();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1000E27D8();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_10000ADE4(&qword_10011E270, &qword_1000F0880);
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v19 = &v67 - v18;
  v76 = sub_10000ADE4(&qword_10011E278, &qword_1000F0888);
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v67 - v20;
  v79 = sub_10000ADE4(&qword_10011E280, &qword_1000F0890);
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v67 - v21;
  v22 = sub_10000ADE4(&qword_10011E288, &qword_1000F0898);
  v83 = *(v22 - 8);
  v84 = v22;
  __chkstk_darwin(v22);
  v93 = &v67 - v23;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v24 = sub_1000E1F08();
  v25 = sub_1000049D0(v24, qword_100123128);

  v80 = v25;
  v26 = sub_1000E1EE8();
  v27 = sub_1000E2698();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v95 = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_100029C70(v94, a3, &v95);
    _os_log_impl(&_mh_execute_header, v26, v27, "[Lookup Actor] (%s) Setting up notification publisher", v28, 0xCu);
    sub_10000E9DC(v29);
  }

  v30 = a3;
  v31 = [objc_opt_self() defaultCenter];
  sub_1000E27E8();

  sub_1000E26E8();
  sub_10000CAAC(0, &qword_10011DCD0, OS_dispatch_queue_ptr);
  v32 = sub_1000E2718();
  v95 = v32;
  v33 = sub_1000E26D8();
  (*(*(v33 - 8) + 56))(v13, 1, 1, v33);
  sub_10000EA28(&qword_10011E290, 255, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
  sub_10000EA70(&qword_10011FB70, &qword_10011DCD0, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v34 = v69;
  sub_1000E20A8();
  sub_1000033C8(v13, &qword_10011E268, &qword_1000F2760);

  (*(v72 + 8))(v15, v73);
  (*(v68 + 8))(v17, v34);
  sub_100002C64(&qword_10011E298, &qword_10011E270, &qword_1000F0880, &protocol conformance descriptor for Publishers.Debounce<A, B>);
  sub_10000EAB4();
  v35 = v74;
  v36 = v71;
  sub_1000E20C8();
  (*(v70 + 8))(v19, v36);
  v37 = v81;
  sub_1000E2858();
  v38 = [objc_opt_self() mainRunLoop];
  v95 = v38;
  v39 = sub_1000E2838();
  v40 = v82;
  (*(*(v39 - 8) + 56))(v82, 1, 1, v39);
  sub_10000CAAC(0, &qword_10011E2A8, NSRunLoop_ptr);
  sub_100002C64(&qword_10011E2B0, &qword_10011E278, &qword_1000F0888, &protocol conformance descriptor for Publishers.SetFailureType<A, B>);
  sub_10000EA70(&qword_10011E2B8, &qword_10011E2A8, NSRunLoop_ptr, &protocol conformance descriptor for NSRunLoop);
  v41 = v77;
  v42 = v76;
  sub_1000E2098();
  sub_1000033C8(v40, &qword_10011E260, &unk_1000F0870);

  (*(v85 + 8))(v37, v86);
  (*(v75 + 8))(v35, v42);
  v43 = swift_allocObject();
  *(v43 + 16) = v94;
  *(v43 + 24) = v30;
  sub_100002C64(&qword_10011E2C0, &qword_10011E280, &qword_1000F0890, &protocol conformance descriptor for Publishers.Timeout<A, B>);

  v44 = v79;
  sub_1000E2078();

  (*(v78 + 8))(v41, v44);
  v45 = v90;
  v86 = *(v90 + 16);
  v46 = v30;
  v67 = v30;
  v47 = v87;
  v48 = v89;
  v49 = v91;
  v86(v87, v89, v91);
  v50 = *(v45 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = v94;
  *(v51 + 24) = v46;
  v52 = *(v45 + 32);
  v52(v51 + ((v50 + 32) & ~v50), v47, v49);
  v86(v47, v48, v49);
  v53 = swift_allocObject();
  v52(v53 + ((v50 + 16) & ~v50), v47, v49);
  sub_100002C64(&qword_10011E2C8, &qword_10011E288, &qword_1000F0898, &protocol conformance descriptor for Publishers.Filter<A>);
  v54 = v67;

  v55 = v84;
  v56 = v93;
  sub_1000E2018();

  (*(v83 + 8))(v56, v55);

  v57 = sub_1000E1EE8();
  v58 = sub_1000E2698();

  v59 = os_log_type_enabled(v57, v58);
  v60 = v94;
  v61 = v54;
  if (v59)
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v95 = v63;
    *v62 = 136315138;
    *(v62 + 4) = sub_100029C70(v60, v61, &v95);
    _os_log_impl(&_mh_execute_header, v57, v58, "[Lookup Actor] (%s) Starting query for capabilities from lookup manager", v62, 0xCu);
    sub_10000E9DC(v63);
  }

  v64 = *(v92 + 112);
  sub_10000ADE4(&qword_10011E258, &qword_1000F0860);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F07C0;
  *(inited + 32) = v60;
  *(inited + 40) = v61;

  sub_1000DFEE0(inited);
  swift_setDeallocating();
  sub_10000EC0C(inited + 32);
  isa = sub_1000E25D8().super.isa;

  [v64 beginQueryWithDestinations:isa services:7];
}

BOOL sub_10000E370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000E0AD8();
  if (!v10)
  {
    sub_1000033C8(v9, &unk_10011ECF0, &qword_1000F08A0);
    return 1;
  }

  sub_10000CAAC(0, &qword_10011E2D8, TUIDSLookupManager_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 1;
  }

  v3 = sub_1000E2328();
  v4 = [v8 faceTimeVideoAvailabilityForDestination:v3];

  if (v4)
  {
    v5 = sub_1000E2328();
    v6 = [v8 faceTimeAudioAvailabilityForDestination:v5];

    return v6 != 0;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_10000E494(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_1000E0AE8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v12 = sub_1000E1F08();
  sub_1000049D0(v12, qword_100123128);
  (*(v9 + 16))(v11, a1, v8);

  v13 = sub_1000E1EE8();
  v14 = sub_1000E2698();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v22 = a4;
    v16 = v15;
    v23 = swift_slowAlloc();
    *v16 = 136315394;
    *(v16 + 4) = sub_100029C70(a2, a3, &v23);
    *(v16 + 12) = 2080;
    sub_10000EA28(&qword_10011E2D0, 255, &type metadata accessor for Notification, &protocol conformance descriptor for Notification);
    v17 = sub_1000E2C18();
    v19 = v18;
    (*(v9 + 8))(v11, v8);
    v20 = sub_100029C70(v17, v19, &v23);

    *(v16 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "[Lookup Actor] (%s) Returning back to getCapabilities after notification: %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  sub_10000ADE4(&unk_10011FA70, &qword_1000F0868);
  return sub_1000E24D8();
}

uint64_t sub_10000E778(char *a1)
{
  v1 = *a1;
  sub_10000EAB4();
  swift_allocError();
  *v2 = v1;
  sub_10000ADE4(&unk_10011FA70, &qword_1000F0868);
  return sub_1000E24C8();
}

uint64_t sub_10000E7E8()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

void sub_10000E844()
{
  v0 = sub_1000E1D58();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E1D68();
  if ((*(v1 + 88))(v3, v0) == enum case for NCProtoGetDestinationCapabilitiesRequest.DestinationType.handle(_:))
  {
    sub_1000E1D88();
    v4 = sub_1000E2328();

    v5 = TUCopyIDSCanonicalAddressForDestinationID();

    if (v5)
    {
      sub_1000E2338();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_10000EAB4();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();
    (*(v1 + 8))(v3, v0);
  }
}

uint64_t sub_10000E9DC(void *a1)
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

uint64_t sub_10000EA28(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000EA70(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000CAAC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000EAB4()
{
  result = qword_10011E2A0;
  if (!qword_10011E2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E2A0);
  }

  return result;
}

uint64_t sub_10000EB10(uint64_t a1)
{
  v3 = *(sub_10000ADE4(&unk_10011FA70, &qword_1000F0868) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_10000E494(a1, v4, v5, v6);
}

uint64_t sub_10000EB90(char *a1)
{
  sub_10000ADE4(&unk_10011FA70, &qword_1000F0868);

  return sub_10000E778(a1);
}

uint64_t getEnumTagSinglePayload for HandleCapabilitiesLookupActor.LookupError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HandleCapabilitiesLookupActor.LookupError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000EDCC()
{
  result = qword_10011E2E0;
  if (!qword_10011E2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E2E0);
  }

  return result;
}

void sub_10000EEB4(void *a1)
{
  v3 = sub_10000ADE4(&qword_10011E478, &unk_1000F0998);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = [a1 groupUUID];
  sub_1000E0D38();

  v7 = type metadata accessor for ConversationUIState(0);
  v5[*(v7 + 20)] = 0;
  (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
  v8 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService27ConversationUIStateObserver_uiState;
  swift_beginAccess();
  sub_10000F538(v5, v1 + v8);
  swift_endAccess();
  v9 = CFNotificationCenterGetDarwinNotifyCenter();
  if (qword_10011DBD0 != -1)
  {
    swift_once();
  }

  CFNotificationCenterAddObserver(v9, v1, sub_10000F250, qword_10011E2E8, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v10 = CFNotificationCenterGetDarwinNotifyCenter();
  if (qword_10011DBD8 != -1)
  {
    swift_once();
  }

  CFNotificationCenterAddObserver(v10, v1, sub_10000F250, qword_10011E2F0, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

void sub_10000F0B0()
{
  v1 = sub_10000ADE4(&qword_10011E478, &unk_1000F0998);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for ConversationUIState(0);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService27ConversationUIStateObserver_uiState;
  swift_beginAccess();
  sub_10000F538(v3, v0 + v5);
  swift_endAccess();
  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  if (qword_10011DBD0 != -1)
  {
    swift_once();
  }

  CFNotificationCenterRemoveObserver(v6, v0, qword_10011E2E8, 0);

  v7 = CFNotificationCenterGetDarwinNotifyCenter();
  if (qword_10011DBD8 != -1)
  {
    swift_once();
  }

  CFNotificationCenterRemoveObserver(v7, v0, qword_10011E2F0, 0);
}

void sub_10000F250(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  sub_10000F5A8(a2, a3);
}

uint64_t sub_10000F2D0()
{
  sub_10000F794(v0 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService27ConversationUIStateObserver_uiState);

  return swift_deallocClassInstance();
}

void sub_10000F35C(uint64_t a1)
{
  sub_10000F3EC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10000F3EC(uint64_t a1)
{
  if (!qword_10011E330)
  {
    type metadata accessor for ConversationUIState(255);
    v1 = sub_1000E2888();
    if (!v2)
    {
      atomic_store(v1, &qword_10011E330);
    }
  }
}

uint64_t sub_10000F464(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000F4C4(uint64_t a1)
{
  result = sub_1000E0D68();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10000F538(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ADE4(&qword_10011E478, &unk_1000F0998);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000F5A8(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    return result;
  }

  type metadata accessor for ConversationUIStateObserver(0);
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    if (qword_10011DBD0 == -1)
    {
      if (a2)
      {
LABEL_5:
        v3 = qword_10011E2E8;
        type metadata accessor for CFString(0);
        sub_10000F73C();
        v4 = v3;
        v5 = sub_1000E0D88();

LABEL_11:
        v6 = sub_10000EE50(v10);
        v8 = v7;
        v9 = type metadata accessor for ConversationUIState(0);
        if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
        {
          *(v8 + *(v9 + 20)) = v5 & 1;
        }

        (v6)(v10, 0);
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      swift_once();
      if (a2)
      {
        goto LABEL_5;
      }
    }

    v5 = 0;
    goto LABEL_11;
  }

  return swift_unknownObjectRelease();
}

unint64_t sub_10000F73C()
{
  result = qword_10011E480;
  if (!qword_10011E480)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E480);
  }

  return result;
}

uint64_t sub_10000F794(uint64_t a1)
{
  v2 = sub_10000ADE4(&qword_10011E478, &unk_1000F0998);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000F7FC()
{
  v1 = sub_1000E0C38();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v71 = &v51 - v9;
  v70 = sub_1000E12A8();
  v62 = *(v70 - 8);
  v10 = __chkstk_darwin(v70);
  v60 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v11;
  __chkstk_darwin(v10);
  v69 = &v51 - v12;
  v13 = type metadata accessor for IDSMessageProxy.BufferedMessage(0);
  v14 = *(v13 - 8);
  result = __chkstk_darwin(v13);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + 72) & 1) == 0)
  {
    swift_beginAccess();
    result = *(v0 + 56);
    v18 = *(result + 16);
    if (v18)
    {
      v58 = v1;
      v68 = v0;
      v19 = result + ((*(v14 + 80) + 32) & ~*(v14 + 80));
      v56 = v62 + 32;
      v65 = *(v14 + 72);
      v55 = v62 + 16;
      v54 = (v62 + 8);
      v53 = (v2 + 32);
      v52 = (v2 + 8);
      v51 = result;

      v59 = v4;
      v66 = v13;
      v67 = v8;
      v57 = v17;
      do
      {
        sub_1000120E0(v19, v17);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v22 = v8;
          v23 = sub_10000ADE4(&qword_10011E6C8, &qword_1000F0A80);
          v24 = *&v17[v23[12]];
          v25 = &v17[v23[16]];
          v26 = *v25;
          v27 = v25[1];
          v28 = *&v17[v23[20]];
          v29 = v58;
          (*v53)(v4, v17, v58);
          sub_100010128(v4, v24, v26, v27, v28);

          v30 = [objc_opt_self() defaultManager];
          sub_1000E0BF8(v31);
          v33 = v32;
          v76 = 0;
          LODWORD(v27) = [v30 removeItemAtURL:v32 error:&v76];

          if (v27)
          {
            v20 = *v52;
            v21 = v76;
            v20(v4, v29);
          }

          else
          {
            v34 = v76;
            sub_1000E0BE8();

            swift_willThrow();

            (*v52)(v4, v29);
          }

          v8 = v22;
        }

        else
        {
          v63 = v19;
          v64 = v18;
          v35 = v62;
          v36 = *(v62 + 32);
          v37 = v69;
          v38 = v70;
          v36(v69, v17, v70);
          v39 = sub_1000E2538();
          v40 = *(v39 - 8);
          v41 = v71;
          (*(v40 + 56))(v71, 1, 1, v39);
          v42 = v60;
          (*(v35 + 16))(v60, v37, v38);
          v43 = (*(v35 + 80) + 40) & ~*(v35 + 80);
          v44 = swift_allocObject();
          v44[2] = 0;
          v44[3] = 0;
          v44[4] = v68;
          v45 = v44 + v43;
          v46 = v67;
          v36(v45, v42, v38);
          sub_10001223C(v41, v46);
          LODWORD(v36) = (*(v40 + 48))(v46, 1, v39);

          if (v36 == 1)
          {
            sub_100002248(v46);
          }

          else
          {
            sub_1000E2528();
            (*(v40 + 8))(v46, v39);
          }

          v47 = v44[2];
          swift_unknownObjectRetain();

          v17 = v57;
          v19 = v63;
          v18 = v64;
          if (v47)
          {
            swift_getObjectType();
            v48 = sub_1000E24B8();
            v50 = v49;
            swift_unknownObjectRelease();
          }

          else
          {
            v48 = 0;
            v50 = 0;
          }

          v4 = v59;
          sub_100002248(v71);
          if (v50 | v48)
          {
            v72 = 0;
            v73 = 0;
            v74 = v48;
            v75 = v50;
          }

          v8 = v67;
          swift_task_create();

          (*v54)(v69, v70);
        }

        v19 += v65;
        --v18;
      }

      while (v18);
    }
  }

  return result;
}

uint64_t sub_10000FF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_10000FF50, 0, 0);
}

uint64_t sub_10000FF50()
{
  v1 = v0[2];
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_100010034;
  v5 = v0[3];

  return sub_1000253BC(7, v5, v2, v3, 2);
}

uint64_t sub_100010034()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id sub_100010128(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v6 = v5;
  v104 = a2;
  v105 = a4;
  v103 = a3;
  v106 = *v5;
  v9 = sub_1000E12A8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for IDSMessageProxy.BufferedMessage(0);
  v14 = *(v13 - 8);
  v101 = v13;
  v102 = v14;
  __chkstk_darwin(v13);
  v16 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000E0C38();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v20 = __chkstk_darwin(v19);
  v21 = __chkstk_darwin(v20);
  v23 = &v95 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v95 - v25;
  v27 = __chkstk_darwin(v24);
  if (*(v6 + 72) == 1)
  {
    v100 = a1;
    v95 = v30;
    v96 = v29;
    v106 = v27;
    v107 = &v95 - v28;
    v31 = objc_opt_self();
    v32 = [v31 defaultManager];
    v33 = [v32 temporaryDirectory];

    sub_1000E0C28();
    v97 = a5;
    result = [a5 storageGuid];
    if (result)
    {
      v35 = result;

      sub_1000E2338();
      sub_1000E0C08();

      v36 = *(v18 + 8);
      v37 = v106;
      v36(v23, v106);
      v38 = v107;
      sub_1000E0C18();
      v98 = v36;
      v99 = v18 + 8;
      v36(v26, v37);
      v39 = [v31 defaultManager];
      v40 = v100;
      sub_1000E0BF8(v41);
      v43 = v42;
      sub_1000E0BF8(v44);
      v46 = v45;
      v109[0] = 0;
      v47 = [v39 copyItemAtURL:v43 toURL:v45 error:v109];

      v48 = v109[0];
      if (v47)
      {
        v49 = sub_10000ADE4(&qword_10011E6C8, &qword_1000F0A80);
        v50 = v49[12];
        v51 = &v16[v49[16]];
        v52 = v49[20];
        (*(v18 + 16))(v16, v38, v37);
        v53 = v103;
        *&v16[v50] = v104;
        v54 = v105;
        *v51 = v53;
        *(v51 + 1) = v54;
        v55 = v97;
        *&v16[v52] = v97;
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        v56 = v6[7];
        v57 = v48;

        v58 = v55;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v6[7] = v56;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v56 = sub_1000D2008(0, v56[2] + 1, 1, v56);
          v6[7] = v56;
        }

        v61 = v56[2];
        v60 = v56[3];
        if (v61 >= v60 >> 1)
        {
          v56 = sub_1000D2008((v60 > 1), v61 + 1, 1, v56);
        }

        v56[2] = v61 + 1;
        sub_1000122D8(v16, v56 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v61);
        v6[7] = v56;
        swift_endAccess();
        return v98(v107, v106);
      }

      else
      {
        v63 = v109[0];
        v64 = sub_1000E0BE8();

        swift_willThrow();
        if (qword_10011DC70 != -1)
        {
          swift_once();
        }

        v65 = sub_1000E1F08();
        sub_1000049D0(v65, qword_100123158);
        v66 = *(v18 + 16);
        v67 = v95;
        v68 = v40;
        v69 = v106;
        v66(v95, v68, v106);
        v70 = v96;
        v71 = v107;
        v66(v96, v107, v69);
        swift_errorRetain();
        v72 = sub_1000E1EE8();
        v73 = sub_1000E2678();

        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          v109[0] = v105;
          *v74 = 136315650;
          sub_100012398(&qword_10011E6D0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v75 = sub_1000E2C18();
          v77 = v76;
          LODWORD(v104) = v73;
          v78 = v98;
          v98(v67, v69);
          v79 = sub_100029C70(v75, v77, v109);

          *(v74 + 4) = v79;
          *(v74 + 12) = 2080;
          v80 = sub_1000E2C18();
          v82 = v81;
          v78(v70, v69);
          v83 = sub_100029C70(v80, v82, v109);

          *(v74 + 14) = v83;
          *(v74 + 22) = 2080;
          v108 = v64;
          swift_errorRetain();
          sub_10000ADE4(&unk_10011F8C0, &qword_1000F0C40);
          v84 = sub_1000E2368();
          v86 = sub_100029C70(v84, v85, v109);

          *(v74 + 24) = v86;
          _os_log_impl(&_mh_execute_header, v72, v104, "Unexpected error preserving %s as %s: %s", v74, 0x20u);
          swift_arrayDestroy();

          return (v78)(v107, v69);
        }

        else
        {

          v94 = v98;
          v98(v70, v69);
          v94(v67, v69);
          return (v94)(v71, v69);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v62 = sub_1000E0C58();
    v87 = __chkstk_darwin(v62);
    *(&v95 - 8) = v87;
    *(&v95 - 7) = v88;
    v89 = v103;
    *(&v95 - 6) = v104;
    *(&v95 - 5) = v89;
    v90 = v106;
    *(&v95 - 4) = v105;
    *(&v95 - 3) = v91;
    *(&v95 - 2) = v90;
    v92 = v87;
    v93 = v88;
    sub_100012398(&qword_10011EDE0, &type metadata accessor for NCProtoIDSProxyMessage, &protocol conformance descriptor for NCProtoIDSProxyMessage);
    sub_1000E0E38();
    sub_1000E1FC8();
    sub_100006660(v92, v93);
    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_100010C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_1000E1288();
  __chkstk_darwin(v8);
  sub_100012398(&qword_10011E6D8, &type metadata accessor for NCProtoIDSProxyMessage.Resource, &protocol conformance descriptor for NCProtoIDSProxyMessage.Resource);
  sub_1000E0E38();
  return sub_1000E1298();
}

uint64_t sub_100010D74(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  sub_1000123E0(a2, a3);
  sub_1000E1248();
  v8 = objc_opt_self();
  isa = sub_1000E22A8().super.isa;
  v14 = 0;
  v10 = [v8 archivedDataWithRootObject:isa requiringSecureCoding:0 error:&v14];

  v11 = v14;
  if (v10)
  {
    sub_1000E0C88();

    sub_1000E1278();
  }

  else
  {
    v12 = v11;
    sub_1000E0BE8();

    swift_willThrow();
  }

  sub_1000E1258();
  sub_100012434(a7);
  return sub_1000E1268();
}

uint64_t sub_100010EF4()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IDSMessageProxy.BufferedMessage(uint64_t a1)
{
  result = qword_10011E660;
  if (!qword_10011E660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001100C(uint64_t a1)
{
  sub_1000E12A8();
  if (v1 <= 0x3F)
  {
    sub_100011080(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100011080(uint64_t a1)
{
  if (!qword_10011E670)
  {
    sub_1000E0C38();
    sub_10000AE90(&unk_10011EDB0, &qword_1000F0A50);
    sub_10000CAAC(255, &unk_10011E678, IDSMessageContext_ptr);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_10011E670);
    }
  }
}

uint64_t sub_10001112C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000E2118();
  v55 = *(v4 - 8);
  v56 = v4;
  __chkstk_darwin(v4);
  v53 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1000E2148();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v51 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1000E2108();
  v50 = *(v47 - 8);
  v7 = __chkstk_darwin(v47);
  v48 = (&v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v45 = (&v42 - v9);
  v59 = sub_1000E2188();
  v46 = *(v59 - 8);
  v10 = __chkstk_darwin(v59);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v44 = &v42 - v13;
  v14 = sub_1000E2768();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10011DC70 != -1)
  {
    swift_once();
  }

  v18 = sub_1000E1F08();
  sub_1000049D0(v18, qword_100123158);
  v19 = sub_1000E1EE8();
  v20 = sub_1000E2698();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    *(v21 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v19, v20, "Setting IDS proxy timeout of %ld seconds", v21, 0xCu);
  }

  v49 = a1;

  v22 = OBJC_IVAR___CSDNeighborhoodActivityConduit_idsProxyCleanupTimer;
  if (*(v1 + OBJC_IVAR___CSDNeighborhoodActivityConduit_idsProxyCleanupTimer))
  {
    v23 = qword_10011DCA0;
    swift_unknownObjectRetain();
    if (v23 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v24 = static os_log_type_t.errorWithState;
    v25 = sub_1000E1EE8();
    if (os_log_type_enabled(v25, v24))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v25, v24, "Existing IDS proxy timer found. Canceling it and making a new one.", v26, 2u);
    }

    swift_getObjectType();
    sub_1000E2798();
    swift_unknownObjectRelease();
    *(v2 + v22) = 0;
    swift_unknownObjectRelease();
  }

  sub_10000CAAC(0, &qword_10011E6A8, OS_dispatch_source_ptr);
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100012398(&qword_10011E6B0, &type metadata accessor for OS_dispatch_source.TimerFlags, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
  sub_10000ADE4(&qword_10011E6B8, &qword_1000F0A58);
  v42 = v2;
  sub_100011FD8(&qword_10011E6C0, &qword_10011E6B8, &qword_1000F0A58);
  sub_1000E28C8();
  v58 = sub_1000E2778();
  (*(v15 + 8))(v17, v14);
  ObjectType = swift_getObjectType();
  v43 = v22;
  v27 = v12;
  sub_1000E2178();
  v28 = v50;
  v29 = v45;
  *v45 = v49;
  v30 = v28[13];
  v31 = v47;
  v30(v29, enum case for DispatchTimeInterval.seconds(_:), v47);
  v32 = v44;
  sub_1000E21B8();
  v33 = v28[1];
  v33(v29, v31);
  v50 = *(v46 + 8);
  (v50)(v27, v59);
  v30(v29, enum case for DispatchTimeInterval.never(_:), v31);
  v34 = v48;
  *v48 = 0;
  v30(v34, enum case for DispatchTimeInterval.nanoseconds(_:), v31);
  sub_1000E27F8();
  v33(v34, v31);
  v33(v29, v31);
  (v50)(v32, v59);
  v35 = swift_allocObject();
  v36 = v42;
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100011FD0;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000026A0;
  aBlock[3] = &unk_100112E60;
  v37 = _Block_copy(aBlock);

  v38 = v51;
  sub_1000E2138();
  v39 = v53;
  sub_100011D54();
  v40 = v58;
  sub_1000E2788();
  _Block_release(v37);
  (*(v55 + 8))(v39, v56);
  (*(v52 + 8))(v38, v54);

  sub_1000E27A8();
  *(v36 + v43) = v40;
  return swift_unknownObjectRelease();
}

void sub_100011960(uint64_t a1)
{
  v1 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v4 = sub_1000E1F08();
  sub_1000049D0(v4, qword_100123128);
  v5 = sub_1000E1EE8();
  v6 = sub_1000E2698();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Timing out IDS proxy", v7, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_1000E2538();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
    v11 = qword_10011DC30;
    v12 = v9;
    if (v11 != -1)
    {
      swift_once();
    }

    v13 = qword_1001230F0;
    v14 = sub_100012398(&qword_100120020, type metadata accessor for ConduitActor, &unk_1000F2250);
    v15 = swift_allocObject();
    v15[2] = v13;
    v15[3] = v14;
    v15[4] = v12;

    sub_100022960(0, 0, v3, &unk_1000F0A78, v15);
  }
}

uint64_t sub_100011BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230F0;

  return _swift_task_switch(sub_100011C64, v5, 0);
}

uint64_t sub_100011C64()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR___CSDNeighborhoodActivityConduit_messageProxy;
  v3 = *(v1 + OBJC_IVAR___CSDNeighborhoodActivityConduit_messageProxy);
  if (v3)
  {
    *(v0 + 24) = 1;

    sub_1000E1FB8();
    *(v3 + 24) = &_swiftEmptySetSingleton;
  }

  v4 = *(v0 + 16);
  *(v1 + v2) = 0;

  *(v4 + OBJC_IVAR___CSDNeighborhoodActivityConduit_idsProxyCleanupTimer) = 0;
  swift_unknownObjectRelease();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100011D54()
{
  sub_1000E2118();
  sub_100012398(&qword_10011EA20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
  sub_100011FD8(&qword_10011EA30, &unk_10011ED10, &unk_1000F0A60);
  return sub_1000E28C8();
}

void sub_100011E2C()
{
  v1 = OBJC_IVAR___CSDNeighborhoodActivityConduit_idsProxyCleanupTimer;
  if (*(v0 + OBJC_IVAR___CSDNeighborhoodActivityConduit_idsProxyCleanupTimer))
  {
    v2 = v0;
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v3 = sub_1000E1F08();
    sub_1000049D0(v3, qword_100123128);
    v4 = sub_1000E1EE8();
    v5 = sub_1000E2698();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Cleaning up IDS proxy", v6, 2u);
    }

    if (*(v2 + v1))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1000E2798();
      swift_unknownObjectRelease();
    }

    *(v2 + v1) = 0;
    swift_unknownObjectRelease();
    v7 = OBJC_IVAR___CSDNeighborhoodActivityConduit_messageProxy;
    v8 = *(v2 + OBJC_IVAR___CSDNeighborhoodActivityConduit_messageProxy);
    if (v8)
    {

      sub_1000E1FB8();
      *(v8 + 24) = &_swiftEmptySetSingleton;
    }

    *(v2 + v7) = 0;
  }
}

uint64_t sub_100011FD8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000AE90(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001202C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002E7C;

  return sub_100011BCC(a1, v4, v5, v6);
}

uint64_t sub_1000120E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSMessageProxy.BufferedMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100012144(uint64_t a1)
{
  v4 = *(sub_1000E12A8() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100002E7C;

  return sub_10000FF30(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10001223C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000122D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSMessageProxy.BufferedMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100012398(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000123E0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_100012434(void *a1)
{
  v2 = sub_1000E0DE8();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v59 - v7;
  v9 = sub_10000C214(_swiftEmptyArrayStorage);
  v10 = [a1 outgoingResponseIdentifier];
  if (v10)
  {
    v11 = v10;
    sub_1000E2338();

    v12 = sub_1000E2338();
    v14 = v13;
    sub_1000E0DD8();
    (*(v3 + 32))(v6, v8, v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = v9;
    sub_1000CA308(v6, v12, v14, isUniquelyReferenced_nonNull_native);

    v9 = v60;
  }

  v16 = [a1 storageGuid];
  if (v16)
  {
    v17 = v16;
    sub_1000E2338();

    v18 = sub_1000E2338();
    v20 = v19;
    sub_1000E0DD8();
    (*(v3 + 32))(v6, v8, v2);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v60 = v9;
    sub_1000CA308(v6, v18, v20, v21);

    v9 = v60;
  }

  v22 = [a1 fromID];
  if (v22)
  {
    v23 = v22;
    sub_1000E2338();

    v24 = sub_1000E2338();
    v26 = v25;
    sub_1000E0DD8();
    (*(v3 + 32))(v6, v8, v2);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v60 = v9;
    sub_1000CA308(v6, v24, v26, v27);

    v9 = v60;
  }

  v28 = [a1 toID];
  if (v28)
  {
    v29 = v28;
    sub_1000E2338();

    v30 = sub_1000E2338();
    v32 = v31;
    sub_1000E0DD8();
    (*(v3 + 32))(v6, v8, v2);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v60 = v9;
    sub_1000CA308(v6, v30, v32, v33);

    v9 = v60;
  }

  v34 = [a1 publicIntentAction];
  if (v34)
  {
    v35 = v34;
    v36 = sub_1000E2338();
    v38 = v37;
    [v35 doubleValue];
    sub_1000E0DC8();
    (*(v3 + 32))(v6, v8, v2);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v60 = v9;
    sub_1000CA308(v6, v36, v38, v39);

    v9 = v60;
  }

  v40 = sub_1000E2338();
  v42 = v41;
  [a1 fromServerStorage];
  sub_1000E0DB8();
  v43 = *(v3 + 32);
  v43(v6, v8, v2);
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v60 = v9;
  sub_1000CA308(v6, v40, v42, v44);

  v45 = v60;
  v46 = [a1 serverTimestamp];
  if (v46)
  {
    v47 = v46;
    v48 = sub_1000E2338();
    v50 = v49;
    [v47 doubleValue];
    sub_1000E0DC8();
    v43(v6, v8, v2);
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v60 = v45;
    sub_1000CA308(v6, v48, v50, v51);

    v45 = v60;
  }

  v52 = [a1 originalTimestamp];
  if (v52)
  {
    v53 = v52;
    v54 = sub_1000E2338();
    v56 = v55;
    [v53 doubleValue];
    sub_1000E0DC8();
    v43(v6, v8, v2);
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v60 = v45;
    sub_1000CA308(v6, v54, v56, v57);

    return v60;
  }

  return v45;
}

unint64_t sub_100012A20(uint64_t a1, void *a2, char a3)
{
  if (a3 == 1)
  {
    sub_1000E2A88(39);

    v5 = 0xD000000000000024;
  }

  else
  {
    sub_1000E2A88(38);

    v5 = 0xD000000000000023;
  }

  v7 = v5;
  v8._countAndFlagsBits = a1;
  v8._object = a2;
  sub_1000E23A8(v8);
  v9._countAndFlagsBits = 41;
  v9._object = 0xE100000000000000;
  sub_1000E23A8(v9);
  return v7;
}

uint64_t sub_100012B30(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  if (!v6)
  {
    if (!v9)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (v6 != 1)
  {
    if (v9 == 2)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (v9 != 1)
  {
    return 0;
  }

LABEL_4:
  if (v4 == v7 && v5 == v8)
  {
    return 1;
  }

  else
  {
    return sub_1000E2C68();
  }
}

Swift::Int sub_100012B94()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1000E2D48();
  sub_100012A20(v1, v2, v3);
  sub_1000E2398();

  return sub_1000E2D68();
}

uint64_t sub_100012C0C(uint64_t a1)
{
  sub_100012A20(*v1, *(v1 + 8), *(v1 + 16));
  sub_1000E2398();
}

Swift::Int sub_100012C64()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1000E2D48();
  sub_100012A20(v1, v2, v3);
  sub_1000E2398();

  return sub_1000E2D68();
}

id sub_100012CD8()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v5 = 1 << *(*(v0 + 40) + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v2;
  v8 = (v5 + 63) >> 6;
  v69 = *(v0 + 40);

  v9 = 0;
  if (v7)
  {
    goto LABEL_7;
  }

LABEL_8:
  while (1)
  {
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v14 >= v8)
    {

      v59 = *(v0 + 56);
      v60 = *(v0 + 64);
      v61 = *(v0 + 72);

      v62 = sub_1000A714C(v60, v61);
      v63 = *(v0 + 32);
      if (v59)
      {
        v64 = sub_1000E2328();
      }

      else
      {
        v64 = 0;
      }

      v65 = objc_allocWithZone(TUNearbyDeviceHandle);
      sub_10000CAAC(0, &qword_10011DF80, NSNumber_ptr);
      sub_1000154B8();
      isa = sub_1000E22A8().super.isa;

      v67 = [v65 initWithName:v64 knownIdentifiers:isa deviceModel:v62 capabilities:v63];

      return v67;
    }

    v7 = *(v3 + 8 * v14);
    ++v9;
    if (v7)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v16 = *(v69 + 48) + 24 * (v15 | (v14 << 6));
        v18 = *v16;
        v17 = *(v16 + 8);
        v19 = *(v16 + 16);
        v20 = objc_allocWithZone(NSNumber);
        if (!v19)
        {
          sub_100015488(v18, v17, 0);

          v21 = [v20 initWithInteger:2];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v32 = sub_10000B424(v21);
          v34 = _swiftEmptyDictionarySingleton[2];
          v35 = (v33 & 1) == 0;
          v27 = __OFADD__(v34, v35);
          v36 = v34 + v35;
          if (v27)
          {
            goto LABEL_52;
          }

          v37 = v33;
          if (_swiftEmptyDictionarySingleton[3] < v36)
          {
            sub_10001ED0C(v36, isUniquelyReferenced_nonNull_native);
            v32 = sub_10000B424(v21);
            if ((v37 & 1) != (v38 & 1))
            {
              goto LABEL_57;
            }

            goto LABEL_31;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_31:
            if (v37)
            {
              goto LABEL_32;
            }
          }

          else
          {
            v53 = v32;
            sub_1000CB1EC();
            v32 = v53;
            if (v37)
            {
LABEL_32:
              v50 = (_swiftEmptyDictionarySingleton[7] + 16 * v32);
              *v50 = v18;
              v50[1] = v17;

              v11 = v18;
              v12 = v17;
              v13 = 0;
              goto LABEL_6;
            }
          }

          _swiftEmptyDictionarySingleton[(v32 >> 6) + 8] |= 1 << v32;
          *(_swiftEmptyDictionarySingleton[6] + 8 * v32) = v21;
          v54 = (_swiftEmptyDictionarySingleton[7] + 16 * v32);
          *v54 = v18;
          v54[1] = v17;
          sub_1000154A0(v18, v17, 0);
          v55 = _swiftEmptyDictionarySingleton[2];
          v27 = __OFADD__(v55, 1);
          v49 = v55 + 1;
          if (v27)
          {
            goto LABEL_54;
          }

          goto LABEL_44;
        }

        if (v19 == 1)
        {
          sub_100015488(v18, v17, 1u);

          v21 = [v20 initWithInteger:1];
          v22 = swift_isUniquelyReferenced_nonNull_native();
          v23 = sub_10000B424(v21);
          v25 = _swiftEmptyDictionarySingleton[2];
          v26 = (v24 & 1) == 0;
          v27 = __OFADD__(v25, v26);
          v28 = v25 + v26;
          if (v27)
          {
            goto LABEL_51;
          }

          v29 = v24;
          if (_swiftEmptyDictionarySingleton[3] < v28)
          {
            sub_10001ED0C(v28, v22);
            v23 = sub_10000B424(v21);
            if ((v29 & 1) != (v30 & 1))
            {
              goto LABEL_57;
            }

            goto LABEL_26;
          }

          if (v22)
          {
LABEL_26:
            if (v29)
            {
              goto LABEL_5;
            }
          }

          else
          {
            v52 = v23;
            sub_1000CB1EC();
            v23 = v52;
            if (v29)
            {
LABEL_5:
              v10 = (_swiftEmptyDictionarySingleton[7] + 16 * v23);
              *v10 = v18;
              v10[1] = v17;

              v11 = v18;
              v12 = v17;
              v13 = 1;
              goto LABEL_6;
            }
          }

          _swiftEmptyDictionarySingleton[(v23 >> 6) + 8] |= 1 << v23;
          *(_swiftEmptyDictionarySingleton[6] + 8 * v23) = v21;
          v47 = (_swiftEmptyDictionarySingleton[7] + 16 * v23);
          *v47 = v18;
          v47[1] = v17;
          sub_1000154A0(v18, v17, 1u);
          v48 = _swiftEmptyDictionarySingleton[2];
          v27 = __OFADD__(v48, 1);
          v49 = v48 + 1;
          if (v27)
          {
            goto LABEL_55;
          }

          goto LABEL_44;
        }

        sub_100015488(v18, v17, 2u);

        v21 = [v20 initWithInteger:0];
        v39 = swift_isUniquelyReferenced_nonNull_native();
        v40 = sub_10000B424(v21);
        v42 = _swiftEmptyDictionarySingleton[2];
        v43 = (v41 & 1) == 0;
        v27 = __OFADD__(v42, v43);
        v44 = v42 + v43;
        if (v27)
        {
          goto LABEL_53;
        }

        v45 = v41;
        if (_swiftEmptyDictionarySingleton[3] >= v44)
        {
          if ((v39 & 1) == 0)
          {
            v56 = v40;
            sub_1000CB1EC();
            v40 = v56;
            if (v45)
            {
LABEL_35:
              v51 = (_swiftEmptyDictionarySingleton[7] + 16 * v40);
              *v51 = v18;
              v51[1] = v17;

              v11 = v18;
              v12 = v17;
              v13 = 2;
LABEL_6:
              sub_1000154A0(v11, v12, v13);

              v9 = v14;
              if (!v7)
              {
                goto LABEL_8;
              }

              goto LABEL_7;
            }

            goto LABEL_43;
          }
        }

        else
        {
          sub_10001ED0C(v44, v39);
          v40 = sub_10000B424(v21);
          if ((v45 & 1) != (v46 & 1))
          {
            goto LABEL_57;
          }
        }

        if (v45)
        {
          goto LABEL_35;
        }

LABEL_43:
        _swiftEmptyDictionarySingleton[(v40 >> 6) + 8] |= 1 << v40;
        *(_swiftEmptyDictionarySingleton[6] + 8 * v40) = v21;
        v57 = (_swiftEmptyDictionarySingleton[7] + 16 * v40);
        *v57 = v18;
        v57[1] = v17;
        sub_1000154A0(v18, v17, 2u);
        v58 = _swiftEmptyDictionarySingleton[2];
        v27 = __OFADD__(v58, 1);
        v49 = v58 + 1;
        if (v27)
        {
          goto LABEL_56;
        }

LABEL_44:
        _swiftEmptyDictionarySingleton[2] = v49;
        v9 = v14;
        if (!v7)
        {
          goto LABEL_8;
        }

LABEL_7:
        v14 = v9;
      }
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  sub_10000CAAC(0, &qword_10011DF80, NSNumber_ptr);
  result = sub_1000E2CC8();
  __break(1u);
  return result;
}

void *sub_1000132BC(void *a1)
{
  v2 = v1;
  *(v1 + 40) = &_swiftEmptySetSingleton;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  swift_weakInit();
  sub_10000ADE4(&qword_10011E7D0, &qword_1000F0C38);
  *(v1 + 104) = sub_1000E0F18();
  v4 = a1;
  v5 = [v4 idsDeviceIdentifier];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1000E2338();
    v9 = v8;

    v2[2] = v7;
    v2[3] = v9;
    v2[4] = sub_100013444();
    v10 = [v4 accountAltDSID];

    if (v10)
    {
      v11 = sub_1000E2338();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    v2[10] = v11;
    v2[11] = v13;
    sub_1000138F4(v4);
  }

  else
  {

    swift_weakDestroy();

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v2;
}

id sub_100013444()
{
  v1 = v0;
  v2 = sub_10000ADE4(&qword_10011E7F0, &qword_1000F0C48);
  __chkstk_darwin(v2 - 8);
  v4 = &v45[-v3];
  v5 = [objc_allocWithZone(TUFeatureFlags) init];
  v6 = [v0 sourceVersion];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1000E2338();
    v10 = v9;

    v48 = v8;
    v49 = v10;
    v46 = 3158068;
    v47 = 0xE300000000000000;
    v11 = sub_1000E0D78();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
    v43 = sub_100015574();
    v44 = v43;
    v12 = sub_1000E28A8();
    sub_1000155C8(v4);

    v13 = v12 != -1;
  }

  else
  {
    v13 = 1;
  }

  v14 = [v1 model];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1000E2338();
    v18 = v17;

    v48 = v16;
    v49 = v18;
    __chkstk_darwin(v19);
    v43 = &v48;
    LOBYTE(v15) = sub_1000D0350(sub_100015630, &v45[-32], &off_100112AA0);

    v20 = v15 ^ 1;
  }

  else
  {
    v20 = 1;
  }

  v21 = [v1 sourceVersion];
  if (v21)
  {
    v22 = v21;
    v23 = sub_1000E2338();
    v25 = v24;

    v48 = v23;
    v49 = v25;
    v46 = 3158069;
    v47 = 0xE300000000000000;
    v26 = sub_1000E0D78();
    (*(*(v26 - 8) + 56))(v4, 1, 1, v26);
    v43 = sub_100015574();
    v44 = v43;
    v27 = sub_1000E28A8();
    sub_1000155C8(v4);

    v20 &= v27 != -1;
  }

  v28 = [v1 statusFlags] & 0x80000;
  v29 = [v1 statusFlags];
  v30 = (v29 & 0x1000000000 | [v1 statusFlags] & 0x2000) != 0;
  if (v28)
  {
    v30 = v20;
  }

  if (v20)
  {
    v31 = v30;
  }

  else
  {
    v31 = v20;
  }

  if ([v5 lagunaAudioCallsEnabled] && (v32 = objc_msgSend(v1, "sourceVersion")) != 0)
  {
    v33 = v32;
    v34 = sub_1000E2338();
    v36 = v35;

    v48 = v34;
    v49 = v36;
    v46 = 0x302E35372E303135;
    v47 = 0xE800000000000000;
    v37 = sub_1000E0D78();
    (*(*(v37 - 8) + 56))(v4, 1, 1, v37);
    v43 = sub_100015574();
    v44 = v43;
    v38 = sub_1000E28A8();
    sub_1000155C8(v4);

    v39 = v38 != -1;
  }

  else
  {
    v39 = 0;
  }

  if (TUGreenTeaLagunaEnabled())
  {
    v40 = ([v1 deviceCapabilityFlags] >> 1) & 1;
  }

  else
  {
    v40 = 0;
  }

  v41 = [objc_allocWithZone(TUNearbyDeviceHandleCapabilities) initWithAVLessCapable:v13 lagunaCapable:v31 & 1 audioCallCapable:v39 telephonyRelayCapable:0 greenTea:v40];

  return v41;
}

void sub_1000138F4(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = *(v2 + 24);
  v6 = [a1 idsDeviceIdentifier];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1000E2338();
    v10 = v9;

    if (v4 == v8 && v5 == v10)
    {
    }

    else
    {
      v12 = sub_1000E2C68();

      if ((v12 & 1) == 0)
      {
        return;
      }
    }

    v13 = sub_100013DE8();
    swift_beginAccess();
    sub_10001E268(v13);
    swift_endAccess();
    v14 = [a1 name];
    if (v14)
    {
      v15 = v14;
      v16 = sub_1000E2338();
      v18 = v17;

      *(v2 + 48) = v16;
      *(v2 + 56) = v18;
    }

    v19 = [a1 model];
    if (v19)
    {
      v20 = v19;
      v21 = sub_1000E2338();
      v23 = v22;

      *(v2 + 64) = v21;
      *(v2 + 72) = v23;
    }

    v24 = sub_100013444();
    if ([*(v2 + 32) isAVLessCapable])
    {
      v25 = 1;
    }

    else
    {
      v25 = [v24 isLagunaCapable];
    }

    if ([*(v2 + 32) isLagunaCapable])
    {
      v26 = 1;
    }

    else
    {
      v26 = [v24 isLagunaCapable];
    }

    if ([*(v2 + 32) isAudioCallCapable])
    {
      v27 = 1;
    }

    else
    {
      v27 = [v24 isAudioCallCapable];
    }

    if ([*(v2 + 32) isTelephonyRelayCapable])
    {
      v28 = 1;
    }

    else
    {
      v28 = [v24 isTelephonyRelayCapable];
    }

    if ([*(v2 + 32) isGreenTea])
    {
      v29 = 1;
    }

    else
    {
      v29 = [v24 isGreenTea];
    }

    v30 = [objc_allocWithZone(TUNearbyDeviceHandleCapabilities) initWithAVLessCapable:v25 lagunaCapable:v26 audioCallCapable:v27 telephonyRelayCapable:v28 greenTea:v29];

    v31 = *(v2 + 32);
    *(v2 + 32) = v30;
  }
}

uint64_t sub_100013B80()
{
  v1 = 7104878;
  sub_1000E2A88(66);
  v12._countAndFlagsBits = 0x746975646E6F433CLL;
  v12._object = 0xEF20656369766544;
  sub_1000E23A8(v12);
  sub_1000E23A8(v0[1]);
  v13._countAndFlagsBits = 0x6669746E65646920;
  v13._object = 0xED00003D73726569;
  sub_1000E23A8(v13);
  swift_beginAccess();
  sub_100015520();

  v2 = sub_1000E25F8();
  v4 = v3;

  v14._countAndFlagsBits = v2;
  v14._object = v4;
  sub_1000E23A8(v14);

  v15._countAndFlagsBits = 0x3D656D616E20;
  v15._object = 0xE600000000000000;
  sub_1000E23A8(v15);
  if (v0[3]._object)
  {

    v5._countAndFlagsBits = sub_1000E2368();
    object = v5._object;
  }

  else
  {
    object = 0xE300000000000000;
    v5._countAndFlagsBits = 7104878;
  }

  v5._object = object;
  sub_1000E23A8(v5);

  v16._countAndFlagsBits = 0x3D6C65646F6D20;
  v16._object = 0xE700000000000000;
  sub_1000E23A8(v16);
  if (v0[4]._object)
  {

    v1 = sub_1000E2368();
    v8 = v7;
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  v17._countAndFlagsBits = v1;
  v17._object = v8;
  sub_1000E23A8(v17);

  v18._countAndFlagsBits = 0x6C69626170616320;
  v18._object = 0xEE003D7365697469;
  sub_1000E23A8(v18);
  countAndFlagsBits = v0[2]._countAndFlagsBits;
  sub_10000CAAC(0, &qword_10011E7E8, TUNearbyDeviceHandleCapabilities_ptr);
  v10 = countAndFlagsBits;
  v19._countAndFlagsBits = sub_1000E2368();
  sub_1000E23A8(v19);

  v20._countAndFlagsBits = 62;
  v20._object = 0xE100000000000000;
  sub_1000E23A8(v20);
  return 0;
}

uint64_t sub_100013DE8()
{
  v1 = v0;
  v2 = [v0 effectiveIdentifier];
  v3 = sub_1000E2338();
  v5 = v4;

  sub_1000E2D48();
  sub_1000E2A88(38);

  v68._countAndFlagsBits = v3;
  v68._object = v5;
  sub_1000E23A8(v68);
  v69._countAndFlagsBits = 41;
  v69._object = 0xE100000000000000;
  sub_1000E23A8(v69);
  sub_1000E2398();

  v6 = sub_1000E2D68();
  v7 = -1 << *(&_swiftEmptySetSingleton + 32);
  v8 = v6 & ~v7;
  if ((*(&_swiftEmptySetSingleton + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v8))
  {
    v9 = ~v7;
    v10 = *(&_swiftEmptySetSingleton + 6);
    while (1)
    {
      v11 = v10 + 24 * v8;
      if (*(v11 + 16) >= 2u)
      {
        v12 = *v11 == v3 && *(v11 + 8) == v5;
        if (v12 || (sub_1000E2C68() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v9;
      if (((*(&_swiftEmptySetSingleton + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v8) & 1) == 0)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = &_swiftEmptySetSingleton;
    v15 = *(&_swiftEmptySetSingleton + 2);
    v14 = *(&_swiftEmptySetSingleton + 3);

    if (v14 <= v15)
    {
      v17 = v15 + 1;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_1000D30F4(v17);
      }

      else
      {
        sub_1000D41E0(v17);
      }

      sub_1000E2D48();
      sub_1000E2A88(38);

      v70._countAndFlagsBits = v3;
      v70._object = v5;
      sub_1000E23A8(v70);
      v71._countAndFlagsBits = 41;
      v71._object = 0xE100000000000000;
      sub_1000E23A8(v71);
      sub_1000E2398();

      result = sub_1000E2D68();
      v18 = -1 << *(&_swiftEmptySetSingleton + 32);
      v8 = result & ~v18;
      if ((*(&_swiftEmptySetSingleton + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v8))
      {
        v19 = ~v18;
        v20 = *(&_swiftEmptySetSingleton + 6);
        do
        {
          v21 = v20 + 24 * v8;
          if (*(v21 + 16) >= 2u)
          {
            if (*v21 == v3 && *(v21 + 8) == v5)
            {
              goto LABEL_84;
            }

            result = sub_1000E2C68();
            if (result)
            {
              goto LABEL_84;
            }
          }

          v8 = (v8 + 1) & v19;
        }

        while (((*(&_swiftEmptySetSingleton + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v8) & 1) != 0);
      }
    }

    else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      result = sub_1000D3DA0();
    }

    *(&_swiftEmptySetSingleton + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v8;
    v23 = *(&_swiftEmptySetSingleton + 6) + 24 * v8;
    *v23 = v3;
    *(v23 + 8) = v5;
    *(v23 + 16) = 2;
    v24 = *(&_swiftEmptySetSingleton + 2);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      __break(1u);
      goto LABEL_89;
    }

    *(&_swiftEmptySetSingleton + 2) = v26;
  }

  v27 = [v1 idsDeviceIdentifier];
  if (!v27)
  {
    goto LABEL_58;
  }

  v28 = v27;
  v29 = sub_1000E2338();
  v5 = v30;

  sub_1000E2D48();
  sub_1000E2A88(38);

  v66 = 0xD000000000000023;
  v67 = 0x80000001000E9C70;
  v72._countAndFlagsBits = v29;
  v72._object = v5;
  sub_1000E23A8(v72);
  v73._countAndFlagsBits = 41;
  v73._object = 0xE100000000000000;
  sub_1000E23A8(v73);
  sub_1000E2398();

  v31 = sub_1000E2D68();
  v32 = -1 << *(&_swiftEmptySetSingleton + 32);
  v33 = v31 & ~v32;
  if (((*(&_swiftEmptySetSingleton + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v33) & 1) == 0)
  {
LABEL_40:
    result = swift_isUniquelyReferenced_nonNull_native();
    v65 = &_swiftEmptySetSingleton;
    v38 = *(&_swiftEmptySetSingleton + 2);
    if (*(&_swiftEmptySetSingleton + 3) <= v38)
    {
      if (result)
      {
        sub_1000D30F4(v38 + 1);
      }

      else
      {
        sub_1000D41E0(v38 + 1);
      }

      sub_1000E2D48();
      sub_1000E2A88(38);

      v66 = 0xD000000000000023;
      v67 = 0x80000001000E9C70;
      v74._countAndFlagsBits = v29;
      v74._object = v5;
      sub_1000E23A8(v74);
      v75._countAndFlagsBits = 41;
      v75._object = 0xE100000000000000;
      sub_1000E23A8(v75);
      sub_1000E2398();

      result = sub_1000E2D68();
      v39 = -1 << *(&_swiftEmptySetSingleton + 32);
      v33 = result & ~v39;
      if ((*(&_swiftEmptySetSingleton + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v33))
      {
        v19 = ~v39;
        v40 = *(&_swiftEmptySetSingleton + 6);
        do
        {
          v41 = v40 + 24 * v33;
          if (!*(v41 + 16))
          {
            if (*v41 == v29 && *(v41 + 8) == v5)
            {
              goto LABEL_84;
            }

            result = sub_1000E2C68();
            if (result)
            {
              goto LABEL_84;
            }
          }

          v33 = (v33 + 1) & v19;
        }

        while (((*(&_swiftEmptySetSingleton + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v33) & 1) != 0);
      }
    }

    else if ((result & 1) == 0)
    {
      result = sub_1000D3DA0();
    }

    *(&_swiftEmptySetSingleton + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v33;
    v43 = *(&_swiftEmptySetSingleton + 6) + 24 * v33;
    *v43 = v29;
    *(v43 + 8) = v5;
    *(v43 + 16) = 0;
    v44 = *(&_swiftEmptySetSingleton + 2);
    v25 = __OFADD__(v44, 1);
    v45 = v44 + 1;
    if (!v25)
    {
      *(&_swiftEmptySetSingleton + 2) = v45;
      goto LABEL_58;
    }

LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v34 = ~v32;
  v35 = *(&_swiftEmptySetSingleton + 6);
  while (1)
  {
    v36 = v35 + 24 * v33;
    if (!*(v36 + 16))
    {
      v37 = *v36 == v29 && *(v36 + 8) == v5;
      if (v37 || (sub_1000E2C68() & 1) != 0)
      {
        break;
      }
    }

    v33 = (v33 + 1) & v34;
    if (((*(&_swiftEmptySetSingleton + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v33) & 1) == 0)
    {
      goto LABEL_40;
    }
  }

LABEL_58:
  v46 = [v1 mediaRouteIdentifier];
  if (!v46)
  {
    return &_swiftEmptySetSingleton;
  }

  v47 = v46;
  v5 = sub_1000E2338();
  v1 = v48;

  sub_1000E2D48();
  sub_1000E2A88(39);

  v76._countAndFlagsBits = v5;
  v76._object = v1;
  sub_1000E23A8(v76);
  v77._countAndFlagsBits = 41;
  v77._object = 0xE100000000000000;
  sub_1000E23A8(v77);
  sub_1000E2398();

  v49 = sub_1000E2D68();
  v50 = -1 << *(&_swiftEmptySetSingleton + 32);
  v19 = v49 & ~v50;
  if ((*(&_swiftEmptySetSingleton + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v19))
  {
    v51 = ~v50;
    v52 = *(&_swiftEmptySetSingleton + 6);
    while (1)
    {
      v53 = v52 + 24 * v19;
      if (*(v53 + 16) == 1)
      {
        v54 = *v53 == v5 && *(v53 + 8) == v1;
        if (v54 || (sub_1000E2C68() & 1) != 0)
        {
          break;
        }
      }

      v19 = (v19 + 1) & v51;
      if (((*(&_swiftEmptySetSingleton + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v19) & 1) == 0)
      {
        goto LABEL_69;
      }
    }

    return &_swiftEmptySetSingleton;
  }

LABEL_69:
  result = swift_isUniquelyReferenced_nonNull_native();
  v55 = *(&_swiftEmptySetSingleton + 2);
  if (*(&_swiftEmptySetSingleton + 3) > v55)
  {
    if ((result & 1) == 0)
    {
      result = sub_1000D3DA0();
    }

    goto LABEL_85;
  }

  if (result)
  {
    sub_1000D30F4(v55 + 1);
  }

  else
  {
    sub_1000D41E0(v55 + 1);
  }

  sub_1000E2D48();
  sub_1000E2A88(39);

  v78._countAndFlagsBits = v5;
  v78._object = v1;
  sub_1000E23A8(v78);
  v79._countAndFlagsBits = 41;
  v79._object = 0xE100000000000000;
  sub_1000E23A8(v79);
  sub_1000E2398();

  result = sub_1000E2D68();
  v56 = -1 << *(&_swiftEmptySetSingleton + 32);
  v19 = result & ~v56;
  if ((*(&_swiftEmptySetSingleton + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v19))
  {
    v57 = ~v56;
    v58 = *(&_swiftEmptySetSingleton + 6);
    while (1)
    {
      v59 = v58 + 24 * v19;
      if (*(v59 + 16) == 1)
      {
        if (*v59 == v5 && *(v59 + 8) == v1)
        {
          break;
        }

        result = sub_1000E2C68();
        if (result)
        {
          break;
        }
      }

      v19 = (v19 + 1) & v57;
      if (((*(&_swiftEmptySetSingleton + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v19) & 1) == 0)
      {
        goto LABEL_85;
      }
    }

LABEL_84:
    result = sub_1000E2CB8();
    __break(1u);
  }

LABEL_85:
  *(&_swiftEmptySetSingleton + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v19;
  v61 = *(&_swiftEmptySetSingleton + 6) + 24 * v19;
  *v61 = v5;
  *(v61 + 8) = v1;
  *(v61 + 16) = 1;
  v62 = *(&_swiftEmptySetSingleton + 2);
  v25 = __OFADD__(v62, 1);
  v63 = v62 + 1;
  if (!v25)
  {
    *(&_swiftEmptySetSingleton + 2) = v63;
    return &_swiftEmptySetSingleton;
  }

LABEL_90:
  __break(1u);
  return result;
}

uint64_t sub_100014704()
{
  *(v1 + 144) = v0;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v2 = qword_1001230E0;
  *(v1 + 152) = qword_1001230E0;

  return _swift_task_switch(sub_1000147A0, v2, 0);
}

uint64_t sub_1000147A0()
{
  if (swift_weakLoadStrong())
  {
    v1 = *(v0 + 8);

    return v1();
  }

  v3 = *(v0 + 144);
  *(v0 + 160) = *(v3 + 16);
  *(v0 + 168) = *(v3 + 24);
  v4 = [objc_allocWithZone(RPCompanionLinkDevice) init];
  *(v0 + 176) = v4;
  v5 = v4;
  v6 = sub_1000E2328();
  [v5 setIdentifier:v6];

  v7 = [objc_allocWithZone(RPCompanionLinkClient) init];
  *(v0 + 184) = v7;
  [v7 setDestinationDevice:v5];
  if (qword_10011DC58 == -1)
  {
    if (!_TUIsInternalInstall())
    {
      goto LABEL_9;
    }
  }

  else
  {
    swift_once();
    if (!_TUIsInternalInstall())
    {
      goto LABEL_9;
    }
  }

  v8 = sub_1000D525C(4u);
  if (v8 != 2 && (v8 & 1) == 0)
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

LABEL_9:
  if (qword_10011DC20 != -1)
  {
    swift_once();
  }

  if ((sub_100040A14(*(v0 + 144)) & 1) == 0)
  {
    goto LABEL_13;
  }

  [v7 setControlFlags:{objc_msgSend(v7, "controlFlags") | 0x20000}];
  [v7 setControlFlags:{objc_msgSend(v7, "controlFlags") | 0x200000}];
  v9 = 1;
LABEL_14:
  *(v0 + 224) = v9;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_100014A70;
  v10 = swift_continuation_init();
  *(v0 + 136) = sub_10000ADE4(&qword_10011E7C0, &qword_1000F0C30);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100014FC4;
  *(v0 + 104) = &unk_100112F68;
  *(v0 + 112) = v10;
  [v7 activateWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100014A70()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  v3 = *(v1 + 152);
  if (v2)
  {
    v4 = sub_100014F4C;
  }

  else
  {
    v4 = sub_100014B90;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100014B90()
{
  v1 = v0[23];
  v3 = v0[20];
  v2 = v0[21];
  v0[25] = *(v0[18] + 104);
  v0[13] = sub_10000CAAC(0, &qword_10011E7C8, RPCompanionLinkClient_ptr);
  v0[14] = &off_100116AD8;
  v0[10] = v1;
  v4 = swift_allocObject();
  v0[26] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = v1;

  sub_10000ADE4(&qword_10011E7D0, &qword_1000F0C38);
  sub_100015424();
  v7 = sub_1000E24B8();

  return _swift_task_switch(sub_100014C8C, v7, v6);
}

uint64_t sub_100014C8C()
{
  v1 = v0[19];
  v0[27] = sub_1000E0EE8();

  sub_10000E9DC(v0 + 10);

  return _swift_task_switch(sub_100014D30, v1, 0);
}

uint64_t sub_100014D30()
{
  v20 = v0;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 184);
    v3 = Strong;

    v4 = v3;
  }

  else
  {
    swift_weakAssign();
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v5 = sub_1000E1F08();
    sub_1000049D0(v5, qword_1001231A0);

    v6 = sub_1000E1EE8();
    v7 = sub_1000E2698();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 224);
      v10 = *(v0 + 176);
      v9 = *(v0 + 184);
      v12 = *(v0 + 160);
      v11 = *(v0 + 168);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136315394;
      v15 = sub_100029C70(v12, v11, &v19);

      *(v13 + 4) = v15;
      *(v13 + 12) = 1024;
      *(v13 + 14) = v8;
      _os_log_impl(&_mh_execute_header, v6, v7, "[%s] Creating connection assertion (forcedAWDL=%{BOOL}d).", v13, 0x12u);
      sub_10000E9DC(v14);
    }

    else
    {
      v16 = *(v0 + 184);
    }

    v4 = *(v0 + 216);
  }

  v17 = *(v0 + 8);

  return v17(v4);
}

uint64_t sub_100014F4C()
{
  v1 = v0[23];
  v2 = v0[22];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100014FC4(uint64_t a1, void *a2)
{
  v3 = sub_1000036AC((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_10000ADE4(&unk_10011F8C0, &qword_1000F0C40);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_100015070(void *a1, uint64_t a2, unint64_t a3)
{
  if (qword_10011DC88 != -1)
  {
    swift_once();
  }

  v6 = sub_1000E1F08();
  sub_1000049D0(v6, qword_1001231A0);

  v7 = sub_1000E1EE8();
  v8 = sub_1000E2698();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100029C70(a2, a3, &v14);
    _os_log_impl(&_mh_execute_header, v7, v8, "[%s] Releasing connection assertion.", v9, 0xCu);
    sub_10000E9DC(v10);
  }

  v11 = a1[3];
  v12 = a1[4];
  sub_1000036AC(a1, v11);
  return (*(v12 + 160))(v11, v12);
}

uint64_t sub_1000151F4()
{

  swift_weakDestroy();

  return v0;
}

uint64_t sub_10001524C()
{
  sub_1000151F4();

  return swift_deallocClassInstance();
}

__n128 sub_1000152B0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000152C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10001530C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

unint64_t sub_10001536C()
{
  result = qword_10011E7B8;
  if (!qword_10011E7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E7B8);
  }

  return result;
}

uint64_t sub_1000153C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100015424()
{
  result = qword_10011E7D8;
  if (!qword_10011E7D8)
  {
    sub_10000AE90(&qword_10011E7D0, &qword_1000F0C38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E7D8);
  }

  return result;
}

uint64_t sub_100015488(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1000154A0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

unint64_t sub_1000154B8()
{
  result = qword_10011FA40;
  if (!qword_10011FA40)
  {
    sub_10000CAAC(255, &qword_10011DF80, NSNumber_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FA40);
  }

  return result;
}

unint64_t sub_100015520()
{
  result = qword_10011E7E0;
  if (!qword_10011E7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E7E0);
  }

  return result;
}

unint64_t sub_100015574()
{
  result = qword_10011E7F8;
  if (!qword_10011E7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E7F8);
  }

  return result;
}

uint64_t sub_1000155C8(uint64_t a1)
{
  v2 = sub_10000ADE4(&qword_10011E7F0, &qword_1000F0C48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id CSDConversationManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CSDConversationManager.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CSDConversationManager();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1000158A8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100015904(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100006660(result, a2);
  }

  return result;
}

NSString sub_100015920()
{
  result = sub_1000E2328();
  qword_10011E890 = result;
  return result;
}

char *sub_100015958(void *a1, void *a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - v10;
  *&v4[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_systemLanguageChanged] = sub_10001591C;
  v12 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_continuitySessionServer;
  if (qword_10011DC48 != -1)
  {
    swift_once();
  }

  *&v4[v12] = qword_100123118;
  if (_swiftEmptyArrayStorage >> 62 && sub_1000E2B68())
  {

    v13 = sub_1000DFC4C(_swiftEmptyArrayStorage);
  }

  else
  {

    v13 = &_swiftEmptySetSingleton;
  }

  *&v4[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_cancellables] = v13;
  *&v4[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_connections] = &_swiftEmptySetSingleton;
  *&v4[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_splitSessionApprovalConnection] = 0;
  *&v4[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_queue] = a1;
  *&v4[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_conduit] = a2;
  *&v4[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_suggestionController] = a3;
  v35.receiver = v4;
  v35.super_class = ObjectType;
  v33 = a1;
  v14 = a2;
  v31 = a3;
  v15 = objc_msgSendSuper2(&v35, "init");
  v16 = sub_1000E2538();
  v30 = *(*(v16 - 8) + 56);
  v30(v11, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v14;
  v17[5] = v15;
  v18 = v15;
  v19 = v14;
  v20 = v18;
  sub_100022960(0, 0, v11, &unk_1000F0E78, v17);

  v32 = v19;
  v34 = *&v19[OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffStateSubject];
  sub_10000ADE4(&unk_10011EAD0, &qword_1000F0E80);
  sub_100002C64(&qword_10011F900, &unk_10011EAD0, &qword_1000F0E80, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v34 = sub_1000E2028();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = v20;
  sub_10000ADE4(&qword_10011EAE0, &qword_1000F0E88);
  sub_100002C64(&qword_10011EAE8, &qword_10011EAE0, &qword_1000F0E88, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_1000E20D8();

  swift_beginAccess();
  sub_1000E1F78();
  swift_endAccess();

  v30(v11, 1, 1, v16);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v23 = v31;
  v22[4] = v31;
  v22[5] = v21;
  v24 = v23;
  sub_100022960(0, 0, v11, &unk_1000F0E98, v22);

  v34 = *(*&v21[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_continuitySessionServer] + 192);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_10000ADE4(&qword_10011EA88, &qword_1000F3450);
  sub_100002C64(&qword_10011EA90, &qword_10011EA88, &qword_1000F3450, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  sub_1000E20D8();

  swift_beginAccess();
  sub_1000E1F78();
  swift_endAccess();

  notify_post("NeighborhoodActivityConduitClientsShouldConnectNotification");
  v25 = CFNotificationCenterGetDarwinNotifyCenter();
  v26 = *&v21[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_systemLanguageChanged];
  if (qword_10011DBE0 != -1)
  {
    v28 = *&v21[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_systemLanguageChanged];
    swift_once();
    v26 = v28;
  }

  CFNotificationCenterAddObserver(v25, 0, v26, qword_10011E890, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  return v21;
}

uint64_t sub_100015F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100015F58, 0, 0);
}

uint64_t sub_100015F58()
{
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v0 = qword_1001230F0;

  return _swift_task_switch(sub_100015FEC, v0, 0);
}

uint64_t sub_100015FEC()
{
  *(*(v0 + 16) + OBJC_IVAR___CSDNeighborhoodActivityConduit_delegate + 8) = &off_100112FC8;
  swift_unknownObjectWeakAssign();
  v1 = *(v0 + 8);

  return v1();
}

void sub_100016068(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10001629C(sub_10001B024, 0);
  }
}

uint64_t sub_1000160D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1000160F4, 0, 0);
}

uint64_t sub_1000160F4()
{
  if (qword_10011DC08 != -1)
  {
    swift_once();
  }

  v0 = qword_1001230D0;

  return _swift_task_switch(sub_100016188, v0, 0);
}

uint64_t sub_100016188()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionXPCDelegate + 8) = &off_100112FB8;
  swift_unknownObjectWeakAssign();
  v1 = *(v0 + 8);

  return v1();
}

void *sub_100016200(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    sub_10001629C(sub_10001C9B0, v5);
  }

  return result;
}

uint64_t sub_10001629C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000E2118();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000E2148();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *&v2[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_queue];
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_10001B110;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000026A0;
  aBlock[3] = &unk_100113020;
  v13 = _Block_copy(aBlock);
  v14 = v2;

  sub_1000E2138();
  v18 = _swiftEmptyArrayStorage;
  sub_10001B11C();
  sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
  sub_100002C64(&qword_10011EA30, &unk_10011ED10, &unk_1000F0A60, &protocol conformance descriptor for [A]);
  sub_1000E28C8();
  sub_1000E2738();
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v17);
}

id sub_100016550()
{
  ObjectType = swift_getObjectType();
  v2 = CFNotificationCenterGetDarwinNotifyCenter();
  if (qword_10011DBE0 != -1)
  {
    swift_once();
  }

  CFNotificationCenterRemoveObserver(v2, 0, qword_10011E890, 0);

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_100016744(void *a2@<X1>, char *a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_13:
    v27 = 0;
    goto LABEL_14;
  }

  v6 = Strong;
  if ((sub_100016CE0() & 1) == 0)
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v28 = sub_1000E1F08();
    sub_1000049D0(v28, qword_100123128);
    v29 = a2;
    v30 = sub_1000E1EE8();
    v31 = sub_1000E2678();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock = v38;
      *v32 = 136315138;
      v33 = [v29 debugDescription];
      v34 = sub_1000E2338();
      v36 = v35;

      v37 = sub_100029C70(v34, v36, &aBlock);

      *(v32 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v30, v31, "%s not entitled to use NeighborhoodActivityConduitService", v32, 0xCu);
      sub_10000E9DC(v38);
    }

    goto LABEL_13;
  }

  v7 = objc_opt_self();
  v8 = [v7 neighborhoodActivityClientXPCInterface];
  [a2 setRemoteObjectInterface:v8];

  v9 = [v7 neighborhoodActivityServerXPCInterface];
  [a2 setExportedInterface:v9];

  [a2 setExportedObject:v6];
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a2;
  v44 = sub_10001C72C;
  v45 = v11;
  aBlock = _NSConcreteStackBlock;
  v41 = 1107296256;
  v42 = sub_1000026A0;
  v43 = &unk_1001134A8;
  v12 = _Block_copy(&aBlock);
  v13 = v6;
  v14 = a2;

  [v14 setInterruptionHandler:v12];
  _Block_release(v12);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  v44 = sub_10001C7BC;
  v45 = v16;
  aBlock = _NSConcreteStackBlock;
  v41 = 1107296256;
  v42 = sub_1000026A0;
  v43 = &unk_1001134F8;
  v17 = _Block_copy(&aBlock);
  v18 = v14;

  [v18 setInvalidationHandler:v17];
  _Block_release(v17);
  [v18 _setQueue:*&v13[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_queue]];
  swift_beginAccess();
  v19 = v18;
  sub_1000D29C8(&v39, v19);
  swift_endAccess();

  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v20 = sub_1000E1F08();
  sub_1000049D0(v20, qword_100123128);
  v21 = v19;
  v22 = sub_1000E1EE8();
  v23 = sub_1000E2658();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v21;
    *v25 = v21;
    v26 = v21;
    _os_log_impl(&_mh_execute_header, v22, v23, "Connected to new client %@", v24, 0xCu);
    sub_1000033C8(v25, &unk_10011EAC0, &unk_1000F0E60);
  }

  [v21 resume];
  v27 = 1;
LABEL_14:
  *a3 = v27;
}

uint64_t sub_100016CE0()
{
  v1 = sub_1000E2328();
  v2 = [v0 valueForEntitlement:v1];

  if (v2)
  {
    sub_1000E28B8();
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
    result = swift_dynamicCast();
    if (result)
    {
      return v4;
    }
  }

  else
  {
    sub_1000033C8(v7, &unk_10011ECF0, &qword_1000F08A0);
    return 0;
  }

  return result;
}

void *sub_100016DD0(uint64_t a1, void *a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a4;
  v36 = a5;
  v34 = a3;
  v8 = sub_1000E2118();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000E2148();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v32 = v12;
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v30 = a6;
    v31 = v13;
    v33 = v9;
    v18 = sub_1000E1F08();
    sub_1000049D0(v18, qword_100123128);
    v19 = a2;
    v20 = sub_1000E1EE8();
    v21 = sub_1000E2658();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v19;
      *v23 = v19;
      v24 = v19;
      _os_log_impl(&_mh_execute_header, v20, v21, v34, v22, 0xCu);
      sub_1000033C8(v23, &unk_10011EAC0, &unk_1000F0E60);
    }

    v25 = swift_allocObject();
    *(v25 + 16) = v17;
    *(v25 + 24) = v19;
    aBlock[4] = v36;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000026A0;
    aBlock[3] = v30;
    v26 = _Block_copy(aBlock);
    v27 = v19;
    v28 = v17;
    sub_1000E2138();
    v37 = _swiftEmptyArrayStorage;
    sub_10001B11C();
    sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
    sub_100002C64(&qword_10011EA30, &unk_10011ED10, &unk_1000F0A60, &protocol conformance descriptor for [A]);
    sub_1000E28C8();
    sub_1000E2738();
    _Block_release(v26);
    (*(v33 + 8))(v11, v8);
    (*(v31 + 8))(v15, v32);
  }

  return result;
}

void sub_1000171B8(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v3 = sub_1000A4264(a2);
  swift_endAccess();
}

void sub_1000172EC(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v27 = a2;
  v28 = a3;
  v5 = sub_1000E2198();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v3 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_queue);
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = sub_1000E21C8();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1000E2918();
      sub_10000CAAC(0, &qword_10011FD10, NSXPCConnection_ptr);
      sub_10001B174(&unk_10011EA40, &qword_10011FD10, NSXPCConnection_ptr);
      sub_1000E2628();
      a1 = v31;
      v11 = v32;
      v12 = v33;
      v13 = v34;
      v14 = v35;
    }

    else
    {
      v15 = -1 << *(a1 + 32);
      v11 = a1 + 56;
      v12 = ~v15;
      v16 = -v15;
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      else
      {
        v17 = -1;
      }

      v14 = v17 & *(a1 + 56);

      v13 = 0;
    }

    v26[1] = v12;
    v18 = (v12 + 64) >> 6;
    while (1)
    {
      if (a1 < 0)
      {
        v24 = sub_1000E29A8();
        if (!v24 || (v29 = v24, sub_10000CAAC(0, &qword_10011FD10, NSXPCConnection_ptr), swift_dynamicCast(), v23 = v30, v21 = v13, v22 = v14, !v30))
        {
LABEL_21:
          sub_10000A840(a1);
          return;
        }
      }

      else
      {
        v19 = v13;
        v20 = v14;
        v21 = v13;
        if (!v14)
        {
          while (1)
          {
            v21 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              break;
            }

            if (v21 >= v18)
            {
              goto LABEL_21;
            }

            v20 = *(v11 + 8 * v21);
            ++v19;
            if (v20)
            {
              goto LABEL_15;
            }
          }

          __break(1u);
          break;
        }

LABEL_15:
        v22 = (v20 - 1) & v20;
        v23 = *(*(a1 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
        if (!v23)
        {
          goto LABEL_21;
        }
      }

      v25 = [v23 remoteObjectProxy];
      sub_1000E28B8();
      swift_unknownObjectRelease();
      sub_10000ADE4(&qword_10011FCA0, &qword_1000F29E0);
      if (swift_dynamicCast())
      {
        v27(v29);
        swift_unknownObjectRelease();
      }

      v13 = v21;
      v14 = v22;
    }
  }

  __break(1u);
}

uint64_t sub_100017648(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  swift_beginAccess();

  sub_1000172EC(v5, a2, a3);
}

uint64_t sub_1000176C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return _swift_task_switch(sub_1000176E4, 0, 0);
}

uint64_t sub_1000176E4()
{
  *(v0 + 64) = *(*(v0 + 56) + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_conduit);
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v1 = qword_1001230F0;

  return _swift_task_switch(sub_10001778C, v1, 0);
}

uint64_t sub_10001778C()
{
  v1 = *(v0 + 64);
  v2 = OBJC_IVAR___CSDNeighborhoodActivityConduit_nearbyDevices;
  swift_beginAccess();
  *(v0 + 72) = *(v1 + v2);

  return _swift_task_switch(sub_10001781C, 0, 0);
}

uint64_t sub_10001781C()
{
  (*(v0 + 40))(*(v0 + 72), 0);

  v1 = *(v0 + 8);

  return v1();
}

void sub_1000178D0(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    sub_10000CAAC(0, &qword_10011EAB0, TUNearbyDeviceHandle_ptr);
    sub_10001B174(&qword_10011EAB8, &qword_10011EAB0, TUNearbyDeviceHandle_ptr);
    isa = sub_1000E25D8().super.isa;
  }

  if (a2)
  {
    v6 = sub_1000E0BD8();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, isa);
}

uint64_t sub_1000179A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = type metadata accessor for HandoffState(0);
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();

  return _swift_task_switch(sub_100017A6C, 0, 0);
}

uint64_t sub_100017A6C()
{
  v1 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  v0[11] = *(v0[7] + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_conduit);
  v0[12] = v1;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v2 = qword_1001230F0;

  return _swift_task_switch(sub_100017B20, v2, 0);
}

uint64_t sub_100017B20()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[8];
  v4 = v0[9];
  swift_beginAccess();
  if ((*(v4 + 48))(v2 + v1, 1, v3))
  {

    return _swift_task_switch(sub_100017C40, 0, 0);
  }

  else
  {
    sub_10001C538(v0[11] + v0[12], v0[10]);
    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_100017CB8;

    return sub_1000DD6C0();
  }
}

uint64_t sub_100017C40()
{
  (*(v0 + 40))(0, 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100017CB8(uint64_t a1)
{
  v2 = *(*v1 + 80);
  *(*v1 + 112) = a1;

  sub_10001C59C(v2);

  return _swift_task_switch(sub_100017DD8, 0, 0);
}

uint64_t sub_100017DD8()
{
  v1 = *(v0 + 112);
  (*(v0 + 40))(v1, 0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100017E9C(void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v11 - 8);
  v13 = &v20 - v12;
  v14 = _Block_copy(a3);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = sub_1000E2538();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a6;
  v17[5] = v15;
  v17[6] = a1;
  v18 = a1;
  sub_100022960(0, 0, v13, a7, v17);
}

uint64_t sub_10001806C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_100018090, 0, 0);
}

uint64_t sub_100018090()
{
  *(v0 + 40) = *(*(v0 + 16) + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_suggestionController);
  if (qword_10011DC08 != -1)
  {
    swift_once();
  }

  v1 = qword_1001230D0;

  return _swift_task_switch(sub_100018138, v1, 0);
}

uint64_t sub_100018138()
{
  v1 = *(v0 + 40) + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionState;
  v2 = *v1;
  *(v0 + 48) = *v1;
  v3 = *(v1 + 8);
  if (v2)
  {
    v4 = v2;
  }

  sub_10001C3F0(v2, v3);
  sub_10001C430(v2, v3);

  return _swift_task_switch(sub_1000181E8, 0, 0);
}

uint64_t sub_1000181E8()
{
  v1 = *(v0 + 48);
  (*(v0 + 24))(v1, 0);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1000183A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1000E0BD8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_100018414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_10001843C, 0, 0);
}

uint64_t sub_10001843C()
{
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1000184E0;
  v3 = v0[3];
  v2 = v0[4];

  return sub_10002ED8C(v3, v2);
}

uint64_t sub_1000184E0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_10001867C;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_100018608;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100018608()
{
  v1 = *(v0 + 72);
  (*(v0 + 40))(v1, 0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10001867C()
{
  v1 = v0[8];
  v2 = v0[5];
  swift_errorRetain();
  v2(0, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100018874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_10001889C, 0, 0);
}

uint64_t sub_10001889C()
{
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_100018940;
  v3 = v0[3];
  v2 = v0[4];

  return sub_10005B2F8(v3, v2);
}

uint64_t sub_100018940()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_100018AC0;
  }

  else
  {
    v2 = sub_100018A54;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100018A54()
{
  (*(v0 + 40))(1, 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100018AC0()
{
  v1 = v0[8];
  v2 = v0[5];
  swift_errorRetain();
  v2(0, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100018E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_100018E38, 0, 0);
}

uint64_t sub_100018E38()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_100018EDC;
  v2 = *(v0 + 24);

  return sub_10005C31C(v2);
}

uint64_t sub_100018EDC()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_10001905C;
  }

  else
  {
    v2 = sub_100018FF0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100018FF0()
{
  (*(v0 + 32))(1, 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001905C()
{
  v1 = v0[7];
  v2 = v0[4];
  swift_errorRetain();
  v2(0, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100019128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_10001914C, 0, 0);
}

uint64_t sub_10001914C()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1000191F0;
  v2 = *(v0 + 24);

  return sub_1000319F0(v2);
}

uint64_t sub_1000191F0()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_10001CAA8;
  }

  else
  {
    v2 = sub_10001CAB0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100019340(void *a1, uint64_t a2, void *a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v13 - 8);
  v15 = &v23 - v14;
  v16 = _Block_copy(a4);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = sub_1000E2538();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a1;
  v19[5] = a3;
  v19[6] = a7;
  v19[7] = v17;
  v20 = a3;
  v21 = a1;
  sub_100022960(0, 0, v15, a8, v19);
}

uint64_t sub_1000194A8()
{
  v1 = v0[2];
  v2 = swift_allocObject();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1000195A4;

  return sub_10005CD04(sub_10005CD04, 1000000000000000000, 0, &unk_1000F0DC8, v2);
}

uint64_t sub_1000195A4()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1000197D8;
  }

  else
  {

    v2 = sub_1000196C0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000196C0()
{
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v1 = sub_1000E1F08();
  sub_1000049D0(v1, qword_100123128);
  v2 = sub_1000E1EE8();
  v3 = sub_1000E2698();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Conduit Activated", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000197D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001983C(uint64_t a1, uint64_t a2)
{
  v2[3] = a2;
  v3 = sub_10000ADE4(&qword_10011EA70, &qword_1000F0DD0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_10000ADE4(&qword_10011EA78, &qword_1000F0DD8);
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_10000ADE4(&qword_10011EA80, &unk_1000F0DE0);
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000199E4, 0, 0);
}

uint64_t sub_1000199E4()
{
  v1 = v0[13];
  v2 = v0[11];
  v10 = v0[10];
  v11 = v0[12];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v0[2] = *(*(v0[3] + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_conduit) + OBJC_IVAR___CSDNeighborhoodActivityConduit_activatedSubject);
  sub_10000ADE4(&qword_10011EA88, &qword_1000F3450);
  sub_100002C64(&qword_10011EA90, &qword_10011EA88, &qword_1000F3450, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  sub_1000E20B8();
  sub_100002C64(&qword_10011EA98, &qword_10011EA78, &qword_1000F0DD8, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  sub_1000E20E8();
  (*(v3 + 8))(v4, v5);
  (*(v2 + 16))(v11, v1, v10);
  sub_100002C64(&qword_10011EAA0, &qword_10011EA80, &unk_1000F0DE0, &protocol conformance descriptor for AsyncPublisher<A>);
  sub_1000E25C8();
  v6 = sub_100002C64(&qword_10011EAA8, &qword_10011EA70, &qword_1000F0DD0, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_100019C34;
  v8 = v0[4];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 15, v8, v6);
}

uint64_t sub_100019C34()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[5];
    v3 = v2[6];
    v5 = v2[4];

    (*(v4 + 8))(v3, v5);
    v6 = nullsub_1;
  }

  else
  {
    v6 = sub_100019D74;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100019D74()
{
  v1 = *(v0 + 120);
  if (v1 == 2 || (v1 & 1) != 0)
  {
    v2 = *(v0 + 104);
    v3 = *(v0 + 80);
    v4 = *(v0 + 88);
    (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
    (*(v4 + 8))(v2, v3);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = sub_100002C64(&qword_10011EAA8, &qword_10011EA70, &qword_1000F0DD0, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
    v8 = swift_task_alloc();
    *(v0 + 112) = v8;
    *v8 = v0;
    v8[1] = sub_100019C34;
    v9 = *(v0 + 32);

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 120, v9, v7);
  }
}

uint64_t sub_10001A080(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10001A128;

  return sub_100019488();
}

uint64_t sub_10001A128()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_1000E0BD8();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_10001A2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_10001A2D4, 0, 0);
}

uint64_t sub_10001A2D4()
{
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_10001A37C;
  v3 = v0[3];
  v2 = v0[4];

  return sub_10005D678(v3, v2, 0);
}

uint64_t sub_10001A37C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_10001CAAC;
  }

  else
  {
    v2 = sub_10001CAB4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001A4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_10001A510, 0, 0);
}

uint64_t sub_10001A510()
{
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_10001A37C;
  v3 = v0[3];
  v2 = v0[4];

  return sub_10005DEF0(v3, v2);
}

uint64_t sub_10001A60C(void *a1, uint64_t a2, uint64_t a3, void *a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v37 = a4;
  v38 = a8;
  v36 = a7;
  v39 = a9;
  v11 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v11 - 8);
  v13 = &v34 - v12;
  v35 = &v34 - v12;
  v14 = sub_1000E0D68();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v18 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v34 - v19;
  v21 = _Block_copy(a5);
  sub_1000E0D38();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v23 = sub_1000E2538();
  (*(*(v23 - 8) + 56))(v13, 1, 1, v23);
  (*(v15 + 16))(v18, v20, v14);
  v24 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v25 = (v16 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  *(v26 + 4) = a1;
  (*(v15 + 32))(&v26[v24], v18, v14);
  v28 = v37;
  v27 = v38;
  *&v26[v25] = v37;
  v29 = &v26[(v25 + 15) & 0xFFFFFFFFFFFFFFF8];
  *v29 = v27;
  v29[1] = v22;
  v30 = v28;
  v31 = a1;
  v32 = v30;

  sub_100022960(0, 0, v35, v39, v26);

  return (*(v15 + 8))(v20, v14);
}

uint64_t sub_10001A8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  sub_10000ADE4(&unk_10011F0C0, &qword_1000F1670);
  v8[7] = swift_task_alloc();
  v8[8] = swift_task_alloc();

  return _swift_task_switch(sub_10001A974, 0, 0);
}

uint64_t sub_10001A974()
{
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_10001AA1C;
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];

  return sub_10005E644(v2, v3, v4);
}

uint64_t sub_10001AA1C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_10001AC14;
  }

  else
  {
    v2 = sub_10001AB30;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001AB30()
{
  v1 = v0[8];
  v2 = v0[2];
  v3 = sub_1000E0D68();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v2(v1, 0);
  sub_1000033C8(v0[8], &unk_10011F0C0, &qword_1000F1670);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10001AC14()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[2];
  v4 = sub_1000E0D68();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  swift_errorRetain();
  v3(v2, v1);

  sub_1000033C8(v0[7], &unk_10011F0C0, &qword_1000F1670);

  v5 = v0[1];

  return v5();
}

void sub_10001AEC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000ADE4(&unk_10011F0C0, &qword_1000F1670);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  sub_10000CB64(a1, &v13 - v7, &unk_10011F0C0, &qword_1000F1670);
  v9 = sub_1000E0D68();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    isa = sub_1000E0D18().super.isa;
    (*(v10 + 8))(v8, v9);
  }

  if (a2)
  {
    v12 = sub_1000E0BD8();
  }

  else
  {
    v12 = 0;
  }

  (*(a3 + 16))(a3, isa, v12);
}

id sub_10001B050(void *a1)
{
  result = [a1 respondsToSelector:"cancelSplitSessionApproval"];
  if (result)
  {

    return [a1 cancelSplitSessionApproval];
  }

  return result;
}

unint64_t sub_10001B11C()
{
  result = qword_10011EA20;
  if (!qword_10011EA20)
  {
    sub_1000E2118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EA20);
  }

  return result;
}

uint64_t sub_10001B174(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000CAAC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001B1CC(uint64_t a1)
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
  v11[1] = sub_100002D64;

  return sub_10001A8C4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10001B2B0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000E0D68() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = *(v1 + v7);
  v12 = v1[4];
  v13 = *(v1 + v8);
  v14 = *(v1 + v8 + 8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100002D64;

  return sub_10001A4E8(a1, v9, v10, v12, v1 + v6, v11, v13, v14);
}

uint64_t sub_10001B404()
{
  v1 = sub_1000E0D68();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_10001B500(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000E0D68() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = *(v1 + v7);
  v12 = v1[4];
  v13 = *(v1 + v8);
  v14 = *(v1 + v8 + 8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100002D64;

  return sub_10001A2AC(a1, v9, v10, v12, v1 + v6, v11, v13, v14);
}

uint64_t sub_10001B654()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100002E7C;

  return sub_10001A080(v2, v3);
}

uint64_t sub_10001B700(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100002D64;

  return v6();
}

uint64_t sub_10001B7E8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100002D64;

  return sub_10001B700(v2, v3, v4);
}

uint64_t sub_10001B8A8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100002E7C;

  return v7();
}

uint64_t sub_10001B990()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001B9D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_10001B8A8(a1, v4, v5, v6);
}

uint64_t sub_10001BA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_10000CB64(a3, v23 - v10, &unk_10011EA50, &qword_1000F0D30);
  v12 = sub_1000E2538();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000033C8(v11, &unk_10011EA50, &qword_1000F0D30);
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

  sub_1000E2528();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1000E24B8();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1000E2378() + 32;
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

    sub_1000033C8(a3, &unk_10011EA50, &qword_1000F0D30);

    return v21;
  }

LABEL_8:
  sub_1000033C8(a3, &unk_10011EA50, &qword_1000F0D30);
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

uint64_t sub_10001BD98(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002D64;

  return sub_1000042BC(a1, v4);
}

uint64_t sub_10001BE50(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002E7C;

  return sub_10001983C(a1, v4);
}

uint64_t sub_10001BEF0(uint64_t a1)
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
  v10[1] = sub_100002D64;

  return sub_100019128(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10001BFC4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10001C014(uint64_t a1)
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
  v10[1] = sub_100002D64;

  return sub_100018E14(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10001C0E8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000E0D68() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100002D64;

  return sub_100018874(a1, v7, v8, v9, v10, v1 + v6, v12, v13);
}

uint64_t sub_10001C24C(uint64_t a1)
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
  v11[1] = sub_100002D64;

  return sub_100018414(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10001C328(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100002D64;

  return sub_10001806C(a1, v4, v5, v6, v7, v8);
}

id sub_10001C3F0(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

void sub_10001C430(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t sub_10001C470(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100002D64;

  return sub_1000179A8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10001C538(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HandoffState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001C59C(uint64_t a1)
{
  v2 = type metadata accessor for HandoffState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001C600()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001C648(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100002D64;

  return sub_1000176C0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10001C774(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 32, 7);
}

uint64_t sub_10001C820(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_100015F38(a1, v4, v5, v7, v6);
}

uint64_t sub_10001C8E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_1000160D4(a1, v4, v5, v7, v6);
}

void sub_10001C9C0()
{
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v0 = sub_1000E1F08();
  sub_1000049D0(v0, qword_100123128);
  v1 = sub_1000E1EE8();
  v2 = sub_1000E2698();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Received language change, restarting process", v3, 2u);
  }

  exit(0);
}

uint64_t TUNearbyConversationPullContext.description.getter(uint64_t a1)
{
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      return 0x50664F746E696F70;
    }

    if (a1 == 2)
    {
      return 0xD000000000000019;
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        return 0xD00000000000001CLL;
      case 4:
        return 0x61576D6574737973;
      case 5:
        return 0x656D695465636166;
    }
  }

  return 0x6E776F6E6B6E75;
}

void sub_10001CBB0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000ADE4(&qword_10011EB08, &unk_1000F0F10);
    v2 = sub_1000E2B98();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);

        v19 = v18;
        v20 = sub_10000B2D0(v17, v16);
        if (v21)
        {
          v8 = (v2[6] + 16 * v20);
          *v8 = v17;
          v8[1] = v16;
          v9 = v20;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v19;

          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
          v22 = (v2[6] + 16 * v20);
          *v22 = v17;
          v22[1] = v16;
          *(v2[7] + 8 * v20) = v19;
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

Class sub_10001CD90(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_10001D37C();
    v4.super.isa = sub_1000E22A8().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

uint64_t TUNearbyConversationHandoffType.description.getter(uint64_t a1)
{
  result = 0x2066666F646E6148;
  if (a1 <= 1)
  {
    if (a1 == 1)
    {
      return result;
    }

    return 0x6E776F6E6B6E55;
  }

  if (a1 == 4)
  {
    return 0x676E696F6774754FLL;
  }

  if (a1 == 3)
  {
    return 0x676E696D6F636E49;
  }

  if (a1 != 2)
  {
    return 0x6E776F6E6B6E55;
  }

  return result;
}

uint64_t sub_10001CECC()
{
  result = 0x2066666F646E6148;
  v2 = *v0;
  if (*v0 <= 1)
  {
    if (v2 == 1)
    {
      return result;
    }

    return 0x6E776F6E6B6E55;
  }

  if (v2 == 4)
  {
    return 0x676E696F6774754FLL;
  }

  if (v2 == 3)
  {
    return 0x676E696D6F636E49;
  }

  if (v2 != 2)
  {
    return 0x6E776F6E6B6E55;
  }

  return result;
}

void sub_10001CF74(unsigned __int8 a1)
{
  if (qword_10011DC68 != -1)
  {
    swift_once();
  }

  v2 = sub_1000E1F08();
  sub_1000049D0(v2, qword_100123140);
  v3 = sub_1000E1EE8();
  v4 = sub_1000E2658();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    aBlock[0] = v6;
    *v5 = 136315138;
    v7 = 0xEA0000000000676ELL;
    v8 = 0x757165526C6C7570;
    v9 = 0xEB00000000747365;
    if (a1 != 2)
    {
      v8 = 0x61576D6574737973;
      v9 = 0xEA0000000000656BLL;
    }

    if (a1)
    {
      v10 = 0xD000000000000012;
    }

    else
    {
      v10 = 0x696472616F626E6FLL;
    }

    if (a1)
    {
      v7 = 0x80000001000EA440;
    }

    if (a1 <= 1u)
    {
      v11 = v10;
    }

    else
    {
      v11 = v8;
    }

    if (a1 <= 1u)
    {
      v12 = v7;
    }

    else
    {
      v12 = v9;
    }

    v13 = sub_100029C70(v11, v12, aBlock);

    *(v5 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Send laguna presenting suggestion event, reason: %s", v5, 0xCu);
    sub_10000E9DC(v6);
  }

  else
  {
  }

  sub_10000ADE4(&qword_10011EAF0, &qword_1000F0F00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F07C0;
  *(inited + 32) = 0x747865746E6F63;
  *(inited + 40) = 0xE700000000000000;
  v15 = sub_1000E2328();

  *(inited + 48) = v15;
  v16 = sub_10000C530(inited);
  swift_setDeallocating();
  sub_10001D30C(inited + 32);
  sub_10001CBB0(v16);
  v18 = v17;

  v19 = sub_1000E2328();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  aBlock[4] = sub_10001D374;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001CD90;
  aBlock[3] = &unk_100113660;
  v21 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v21);
}

uint64_t sub_10001D30C(uint64_t a1)
{
  v2 = sub_10000ADE4(&qword_10011EAF8, &qword_1000F0F08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10001D37C()
{
  result = qword_10011EB00;
  if (!qword_10011EB00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10011EB00);
  }

  return result;
}

void sub_10001D3C8()
{
  if (qword_10011DC68 != -1)
  {
    swift_once();
  }

  v0 = sub_1000E1F08();
  sub_1000049D0(v0, qword_100123140);
  v1 = sub_1000E1EE8();
  v2 = sub_1000E2658();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Send SharePlay push to TV event", v3, 2u);
  }

  v4 = sub_1000E2328();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v7[4] = sub_10001DBD0;
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_10001CD90;
  v7[3] = &unk_1001136B0;
  v6 = _Block_copy(v7);

  AnalyticsSendEventLazy();
  _Block_release(v6);
}

void sub_10001D564(void *a1)
{
  v1 = [a1 type];
  v2 = 0x6465747065636361;
  if (v1 == 3)
  {
    v2 = 0x64657463656A6572;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0x656C6C65636E6163;
  }

  if (v1)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE900000000000064;
  }

  if (qword_10011DC68 != -1)
  {
    swift_once();
  }

  v5 = sub_1000E1F08();
  sub_1000049D0(v5, qword_100123140);

  v6 = sub_1000E1EE8();
  v7 = sub_1000E2658();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    aBlock[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100029C70(v3, v4, aBlock);
    _os_log_impl(&_mh_execute_header, v6, v7, "Send laguna responding to suggestion event, context: %s", v8, 0xCu);
    sub_10000E9DC(v9);
  }

  sub_10000ADE4(&qword_10011EAF0, &qword_1000F0F00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F07C0;
  *(inited + 32) = 0x747865746E6F63;
  *(inited + 40) = 0xE700000000000000;
  v11 = sub_1000E2328();

  *(inited + 48) = v11;
  v12 = sub_10000C530(inited);
  swift_setDeallocating();
  sub_10001D30C(inited + 32);
  sub_10001CBB0(v12);
  v14 = v13;

  v15 = sub_1000E2328();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  aBlock[4] = sub_10001DBD0;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001CD90;
  aBlock[3] = &unk_100113750;
  v17 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v17);
}