int main(int argc, const char **argv, const char **envp)
{
  qword_100010DB0 = [objc_allocWithZone(type metadata accessor for PassKitWrapperXPCServiceUIDelegate()) init];
  qword_100010DB8 = [objc_opt_self() serviceListener];
  [qword_100010DB8 setDelegate:qword_100010DB0];
  [qword_100010DB8 resume];
  return 0;
}

char *sub_100001AF0()
{
  v1 = [objc_allocWithZone(type metadata accessor for DynamicPaymentButtonDrawer()) init];
  v2 = [objc_allocWithZone(UISSlotMachine) initWithSlotDrawer:v1 options:0];

  *&v0[OBJC_IVAR____TtC26PassKitWrapperXPCServiceUI34PassKitWrapperXPCServiceUIDelegate_slotMachine] = v2;
  v3 = [objc_opt_self() serviceListener];
  *&v0[OBJC_IVAR____TtC26PassKitWrapperXPCServiceUI34PassKitWrapperXPCServiceUIDelegate_slotMachineListener] = v3;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for PassKitWrapperXPCServiceUIDelegate();
  v4 = objc_msgSendSuper2(&v6, "init");
  [*&v4[OBJC_IVAR____TtC26PassKitWrapperXPCServiceUI34PassKitWrapperXPCServiceUIDelegate_slotMachineListener] setDelegate:v4];
  return v4;
}

void sub_100001BF0(uint64_t a1)
{
  sub_100006A40();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong invalidate];
  }
}

uint64_t sub_100001C70(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_100001CB4(uint64_t a1)
{
  sub_100006A40();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong invalidate];
  }
}

id sub_100001D94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PassKitWrapperXPCServiceUIDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void type metadata accessor for CGImage()
{
  if (!qword_100010A68)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100010A68);
    }
  }
}

uint64_t sub_100001E64(void *a1)
{
  v2 = v1;
  v4 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___UISSlotMachineProtocol];
  sub_100002260(0, &qword_100010AD0, NSSet_ptr);
  sub_100002218(&qword_100010AD8, &qword_100007528);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000074A0;
  v6 = sub_100002260(0, &qword_100010AE0, PKPaymentRequest_ptr);
  *(v5 + 56) = sub_100002218(&qword_100010AE8, &qword_100007530);
  *(v5 + 32) = v6;
  v7 = sub_100006BE0();
  *(v5 + 88) = sub_100002218(&qword_100010AF0, &qword_100007538);
  *(v5 + 64) = v7;
  v8 = sub_100002260(0, &qword_100010AF8, NSString_ptr);
  *(v5 + 120) = sub_100002218(&qword_100010B00, &qword_100007540);
  *(v5 + 96) = v8;
  v9 = sub_100002260(0, &qword_100010B08, NSNumber_ptr);
  *(v5 + 152) = sub_100002218(&unk_100010B10, qword_100007548);
  *(v5 + 128) = v9;
  v10 = sub_100006D60();
  v17 = 0;
  sub_100006D20();

  isa = sub_100006D10().super.isa;

  [v4 setClasses:isa forSelector:"getRemoteContentForLayerContextWithId:style:tag:reply:" argumentIndex:2 ofReply:0];

  [a1 setExportedInterface:v4];
  [a1 setExportedObject:*(v2 + OBJC_IVAR____TtC26PassKitWrapperXPCServiceUI34PassKitWrapperXPCServiceUIDelegate_slotMachine)];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_1000022E0;
  v22 = v12;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_100001C70;
  v20 = &unk_10000C778;
  v13 = _Block_copy(&v17);

  [a1 setInterruptionHandler:v13];
  _Block_release(v13);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_100002300;
  v22 = v14;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_100001C70;
  v20 = &unk_10000C7A0;
  v15 = _Block_copy(&v17);

  [a1 setInvalidationHandler:v15];
  _Block_release(v15);
  [a1 resume];

  return 1;
}

uint64_t sub_100002218(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002260(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1000022A8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000022E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100002350(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PassKitWrapperXPCServiceUI();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id DynamicPaymentButtonDrawer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t DynamicPaymentButtonDrawer.getImageWith(_:tag:forRemote:reply:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002218(&qword_100010BB0, &qword_1000075E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_100006D00();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a2;
  v13[5] = a1;
  v13[6] = a4;
  v13[7] = a5;
  v14 = a2;
  v15 = a1;

  sub_100002F20(0, 0, v11, &unk_1000075F0, v13);
}

uint64_t sub_100002508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v8 = sub_100006B20();
  v7[15] = v8;
  v7[16] = *(v8 - 8);
  v7[17] = swift_task_alloc();
  v9 = sub_100006B40();
  v7[18] = v9;
  v7[19] = *(v9 - 8);
  v7[20] = swift_task_alloc();

  return _swift_task_switch(sub_100002628, 0, 0);
}

uint64_t sub_100002628()
{
  super_class = v0[5].super_class;
  sub_100006BE0();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    receiver = v0[6].receiver;
    v5 = type metadata accessor for DynamicPaymentButtonDrawing();
    v6 = objc_allocWithZone(v5);
    *&v6[OBJC_IVAR____TtC26PassKitWrapperXPCServiceUI27DynamicPaymentButtonDrawing_tag] = v3;
    *&v6[OBJC_IVAR____TtC26PassKitWrapperXPCServiceUI27DynamicPaymentButtonDrawing_slotStyle] = receiver;
    v0[4].receiver = v6;
    v0[4].super_class = v5;
    v7 = super_class;
    v8 = receiver;
    v0[10].super_class = objc_msgSendSuper2(v0 + 4, "init");
    v9 = swift_task_alloc();
    v0[11].receiver = v9;
    *v9 = v0;
    v9[1] = sub_100002924;

    return DynamicPaymentButtonDrawing.renderImage(tag:style:)(v3, v8);
  }

  else
  {
    v12 = v0[9].super_class;
    v11 = v0[10].receiver;
    v13 = v0[8].super_class;
    v22 = v0[9].receiver;
    v14 = v0[7].super_class;
    v15 = v0[8].receiver;
    v17 = v0[6].super_class;
    v16 = v0[7].receiver;
    sub_100002260(0, &qword_100010D78, OS_dispatch_queue_ptr);
    v21 = sub_100006D40();
    v18 = swift_allocObject();
    *(v18 + 2) = v17;
    *(v18 + 3) = v16;
    *(v18 + 4) = 0;
    v0[3].receiver = sub_1000066A0;
    v0[3].super_class = v18;
    v0[1].receiver = _NSConcreteStackBlock;
    v0[1].super_class = 1107296256;
    v0[2].receiver = sub_100001C70;
    v0[2].super_class = &unk_10000C8E0;
    v19 = _Block_copy(&v0[1]);

    sub_100006B30();
    v0[5].receiver = &_swiftEmptyArrayStorage;
    sub_1000066C4();
    sub_100002218(&qword_100010D88, &qword_1000076D0);
    sub_10000671C();
    sub_100006D70();
    sub_100006D50();
    _Block_release(v19);

    v15[1](v13, v14);
    (*(v12 + 1))(v11, v22);

    v20 = v0->super_class;

    return v20();
  }
}

uint64_t sub_100002924(uint64_t a1)
{
  *(*v1 + 184) = a1;

  return _swift_task_switch(sub_100002A24, 0, 0);
}

uint64_t sub_100002A24()
{
  v1 = v0[23];
  v2 = v0[11];

  v3 = v0[23];
  v4 = v0[20];
  v5 = v0[17];
  v16 = v0[19];
  v17 = v0[18];
  v6 = v0[15];
  v15 = v0[16];
  v8 = v0[13];
  v7 = v0[14];
  sub_100002260(0, &qword_100010D78, OS_dispatch_queue_ptr);
  v9 = v1;
  v10 = sub_100006D40();
  v11 = swift_allocObject();
  v11[2] = v8;
  v11[3] = v7;
  v11[4] = v3;
  v0[6] = sub_1000066A0;
  v0[7] = v11;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100001C70;
  v0[5] = &unk_10000C8E0;
  v12 = _Block_copy(v0 + 2);

  sub_100006B30();
  v0[10] = &_swiftEmptyArrayStorage;
  sub_1000066C4();
  sub_100002218(&qword_100010D88, &qword_1000076D0);
  sub_10000671C();
  sub_100006D70();
  sub_100006D50();
  _Block_release(v12);

  (*(v15 + 8))(v5, v6);
  (*(v16 + 8))(v4, v17);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100002C50(uint64_t a1)
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
  v10[1] = sub_1000069D8;

  return sub_100002508(a1, v4, v5, v6, v7, v9, v8);
}

id DynamicPaymentButtonDrawing.__allocating_init(tag:slotStyle:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC26PassKitWrapperXPCServiceUI27DynamicPaymentButtonDrawing_tag] = a1;
  *&v5[OBJC_IVAR____TtC26PassKitWrapperXPCServiceUI27DynamicPaymentButtonDrawing_slotStyle] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, "init");
}

uint64_t sub_100002D8C(void (*a1)(uint64_t, id), uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = 0;
  }

  else
  {
    sub_100002218(&qword_100010D98, &qword_1000076D8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000075B0;
    *(inited + 32) = sub_100006C50();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v7;
    *(inited + 48) = 0xD000000000000010;
    *(inited + 56) = 0x8000000100007F50;
    sub_1000067C8(inited);
    swift_setDeallocating();
    sub_1000068F8(inited + 32, &qword_100010DA0, &qword_1000076E0);
    v8 = objc_allocWithZone(NSError);
    v9 = sub_100006C40();
    isa = sub_100006C30().super.isa;

    v5 = [v8 initWithDomain:v9 code:1 userInfo:isa];
  }

  a1(a3, v5);
}

uint64_t sub_100002F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002218(&qword_100010BB0, &qword_1000075E0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100006958(a3, v25 - v10, &qword_100010BB0, &qword_1000075E0);
  v12 = sub_100006D00();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000068F8(v11, &qword_100010BB0, &qword_1000075E0);
  }

  else
  {
    sub_100006CF0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_100006CC0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_100006C70() + 32;
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

      sub_1000068F8(a3, &qword_100010BB0, &qword_1000075E0);

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

  sub_1000068F8(a3, &qword_100010BB0, &qword_1000075E0);
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

void sub_100003378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_100006A00();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id DynamicPaymentButtonDrawer.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DynamicPaymentButtonDrawer();
  return objc_msgSendSuper2(&v3, "init");
}

id DynamicPaymentButtonDrawing.init(tag:slotStyle:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC26PassKitWrapperXPCServiceUI27DynamicPaymentButtonDrawing_tag] = a1;
  *&v2[OBJC_IVAR____TtC26PassKitWrapperXPCServiceUI27DynamicPaymentButtonDrawing_slotStyle] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for DynamicPaymentButtonDrawing();
  return objc_msgSendSuper2(&v4, "init");
}

uint64_t DynamicPaymentButtonDrawing.renderImage(tag:style:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_100006AC0();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = sub_100002218(&qword_100010BC8, &qword_100007600);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  sub_100006CE0();
  v3[18] = sub_100006CD0();
  v6 = sub_100006CC0();
  v3[19] = v6;
  v3[20] = v5;

  return _swift_task_switch(sub_100003654, v6, v5);
}

uint64_t sub_100003654()
{
  v1 = *(v0 + 72);
  v2 = objc_opt_self();
  *(v0 + 168) = v2;
  [v2 begin];
  [v2 setDisableActions:1];
  *(v0 + 176) = sub_100006BC0();
  *(v0 + 184) = sub_100006BD0();
  if (v1)
  {
    v3 = [*(v0 + 72) displayScale];
  }

  else
  {
    PKUIScreenScale();
  }

  *(v0 + 192) = v3;
  v4 = swift_task_alloc();
  *(v0 + 200) = v4;
  *v4 = v0;
  v4[1] = sub_100003754;

  return sub_100004C34();
}

uint64_t sub_100003754(char a1)
{
  v2 = *v1;
  *(*v1 + 208) = a1;

  v3 = *(v2 + 160);
  v4 = *(v2 + 152);

  return _swift_task_switch(sub_10000387C, v4, v3);
}

uint64_t sub_10000387C()
{
  v1 = *(v0 + 208);

  if (v1)
  {
    DynamicPaymentButtonDrawing.passSnapshot(tag:style:)(*(v0 + 64), *(v0 + 72));
    v3 = v2;
    goto LABEL_9;
  }

  result = sub_100006BC0();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  sub_100006B70();
  if (v5)
  {
    v6 = sub_100006C40();
  }

  else
  {
    v6 = 0;
  }

  PKAnalyticsReportPaymentButtonRequest();

  v3 = 0;
LABEL_9:
  v7 = *(v0 + 128);
  v8 = *(v0 + 136);
  v9 = *(v0 + 120);
  v10 = v3;
  sub_100006BA0();
  sub_100006B60();
  sub_100006B50();
  sub_100006B80();
  sub_100006B90();
  sub_100006B10();
  sub_100006AD0();
  v11 = (v8 + *(v9 + 36));
  v12 = *(v0 + 16);
  v13 = *(v0 + 48);
  v11[1] = *(v0 + 32);
  v11[2] = v13;
  *v11 = v12;
  sub_100006958(v8, v7, &qword_100010BC8, &qword_100007600);
  sub_100002218(&qword_100010BD0, &qword_100007610);
  swift_allocObject();
  sub_100006B00();
  sub_100006AF0();
  v14 = sub_100006AE0();
  v30 = v14;
  if (v14)
  {
    v15 = v14;
    v16 = (v0 + 112);
    sub_100006AA0();
    v17 = v15;
    v18 = sub_100006AB0();
    v19 = sub_100006D30();
    if (!os_log_type_enabled(v18, v19))
    {

      goto LABEL_16;
    }

    v20 = swift_slowAlloc();
    *v20 = 134218240;
    *(v20 + 4) = CGImageGetWidth(v17);
    *(v20 + 12) = 2048;
    Height = CGImageGetHeight(v17);

    *(v20 + 14) = Height;
    _os_log_impl(&_mh_execute_header, v18, v19, "Successfully returning CGImage of the button with size: %ld x %ld", v20, 0x16u);
    goto LABEL_14;
  }

  v16 = (v0 + 104);
  sub_100006AA0();
  v18 = sub_100006AB0();
  v22 = sub_100006D30();
  if (os_log_type_enabled(v18, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v18, v22, "Failed to render CGImage of the button", v23, 2u);
LABEL_14:
  }

LABEL_16:

  v24 = *v16;
  v25 = *(v0 + 168);
  v26 = *(v0 + 136);
  v27 = *(v0 + 88);
  v28 = *(v0 + 96);

  (*(v28 + 8))(v24, v27);
  sub_1000068F8(v26, &qword_100010BC8, &qword_100007600);
  [v25 commit];

  v29 = *(v0 + 8);

  return v29(v30);
}

void DynamicPaymentButtonDrawing.passSnapshot(tag:style:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_100006AC0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() sharedInstance];
  if (!v10)
  {
    return;
  }

  v11 = v10;
  v12 = sub_100006BB0();
  sub_100005800(v12, v11);
  v14 = v13;

  if (!v14)
  {
    sub_100006AA0();
    v18 = a1;
    v19 = sub_100006AB0();
    v20 = sub_100006D30();

    if (os_log_type_enabled(v19, v20))
    {
      v48 = v20;
      v21 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v51 = v47;
      *v21 = 136315138;
      v22 = sub_100006BB0();
      if (v22)
      {
        v23 = v22;
        v24 = [v22 merchantIdentifier];

        v25 = sub_100006C50();
        v27 = v26;
      }

      else
      {
        v25 = 0;
        v27 = 0;
      }

      v49 = v25;
      v50 = v27;
      sub_100002218(&qword_100010BD8, &qword_100007618);
      v41 = sub_100006C60();
      v43 = sub_10000455C(v41, v42, &v51);

      *(v21 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v19, v48, "No valid pass found to render card art for payment request: %s", v21, 0xCu);
      sub_100005F70(v47);
    }

    (*(v7 + 8))(v9, v6);
    v44 = sub_100006BC0();
    if (v44 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v44 <= 0x7FFFFFFF)
    {
      sub_100006B70();
      if (v45)
      {
        v39 = sub_100006C40();
      }

      else
      {
        v39 = 0;
      }

      PKAnalyticsReportPaymentButtonRequest();

      goto LABEL_36;
    }

    __break(1u);
    goto LABEL_40;
  }

  v15 = sub_100006C40();
  v16 = [v11 passWithUniqueID:v15];

  if (!v16)
  {
LABEL_44:
    __break(1u);
    return;
  }

  v17 = [v16 paymentPass];

  if (!v17)
  {

    return;
  }

  if (sub_100006BC0())
  {
    sub_100006BF0();
  }

  else
  {
    sub_100006C00();
  }

  sub_100006B80();
  sub_100006B90();
  sub_100006C20();
  [*(v3 + OBJC_IVAR____TtC26PassKitWrapperXPCServiceUI27DynamicPaymentButtonDrawing_slotStyle) displayScale];
  PKSizeRoundToPixelWithScale();
  sub_100006C10();
  PKPassFrontFaceContentSize();
  PKSizeAspectFit();
  v29 = v28;
  v31 = v30;
  if (a2)
  {
    [a2 displayScale];
  }

  else
  {
    PKUIScreenScale();
  }

  v32 = sub_100005FBC(v17, v29, v31);
  if (!v32)
  {
    v37 = sub_100006BC0();
    if (v37 < 0xFFFFFFFF80000000)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    if (v37 > 0x7FFFFFFF)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    sub_100006B70();
    if (v38)
    {
      v39 = sub_100006C40();
    }

    else
    {
      v39 = 0;
    }

    PKAnalyticsReportPaymentButtonRequest();

LABEL_36:
    return;
  }

  v33 = v32;
  v34 = sub_100006BC0();
  if (v34 < 0xFFFFFFFF80000000)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v34 > 0x7FFFFFFF)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  sub_100006B70();
  if (v35)
  {
    v36 = sub_100006C40();
  }

  else
  {
    v36 = 0;
  }

  v40 = [v17 paymentPass];
  PKAnalyticsReportPaymentButtonRequest();

  [v33 CGImage];
}

uint64_t sub_1000041FC(uint64_t a1, void *a2)
{
  v3 = sub_100006474((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

id sub_1000042D8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10000436C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100004464;

  return v6(a1);
}

uint64_t sub_100004464()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_10000455C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100004628(v11, 0, 0, 1, a1, a2);
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
    sub_1000063FC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005F70(v11);
  return v7;
}

unint64_t sub_100004628(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100004734(a5, a6);
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
    result = sub_100006DA0();
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

char *sub_100004734(uint64_t a1, unint64_t a2)
{
  v3 = sub_100004780(a1, a2);
  sub_1000048B0(&off_10000C6F8);
  return v3;
}

char *sub_100004780(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10000499C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100006DA0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100006C90();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000499C(v10, 0);
        result = sub_100006D80();
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

uint64_t sub_1000048B0(uint64_t result)
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

  result = sub_100004A10(result, v11, 1, v3);
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

void *sub_10000499C(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100002218(&qword_100010D38, &qword_100007688);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100004A10(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002218(&qword_100010D38, &qword_100007688);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

unint64_t sub_100004B04(uint64_t a1, uint64_t a2)
{
  sub_100006DE0();
  sub_100006C80();
  v4 = sub_100006DF0();

  return sub_100004B7C(a1, a2, v4);
}

unint64_t sub_100004B7C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100006DD0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100004C34()
{
  v1 = sub_100006AC0();
  v0[19] = v1;
  v0[20] = *(v1 - 8);
  v0[21] = swift_task_alloc();
  v2 = sub_100006A30();
  v0[22] = v2;
  v0[23] = *(v2 - 8);
  v0[24] = swift_task_alloc();
  sub_100002218(&qword_100010D48, &qword_100007690);
  v0[25] = swift_task_alloc();
  sub_100002218(&qword_100010D50, &qword_100007698);
  v0[26] = swift_task_alloc();
  v3 = sub_1000069F0();
  v0[27] = v3;
  v0[28] = *(v3 - 8);
  v0[29] = swift_task_alloc();
  v4 = sub_100006A50();
  v0[30] = v4;
  v0[31] = *(v4 - 8);
  v0[32] = swift_task_alloc();
  v5 = sub_100006A80();
  v0[33] = v5;
  v0[34] = *(v5 - 8);
  v0[35] = swift_task_alloc();
  sub_100002218(&qword_100010D58, &qword_1000076A0);
  v0[36] = swift_task_alloc();
  v0[37] = swift_task_alloc();

  return _swift_task_switch(sub_100004F14, 0, 0);
}

uint64_t sub_100004F14()
{
  v1 = v0[34];
  v3 = v0[32];
  v2 = v0[33];
  v5 = v0[30];
  v4 = v0[31];
  v6 = v0[29];
  v33 = v0[35];
  v34 = v0[28];
  v7 = v0[26];
  v37 = v0[37];
  v38 = v0[27];
  v8 = v0[24];
  v31 = v0[25];
  v39 = v0[36];
  v40 = v0[23];
  v36 = v0[22];
  v35 = [objc_allocWithZone(PKPaymentTransactionRequest) init];
  v0[38] = v35;
  (*(v4 + 104))(v3, enum case for Calendar.Identifier.gregorian(_:), v5);
  sub_100006A60();
  (*(v4 + 8))(v3, v5);
  (*(v1 + 56))(v7, 1, 1, v2);
  v9 = sub_100006A90();
  (*(*(v9 - 8) + 56))(v31, 1, 1, v9);
  LOBYTE(v30) = 1;
  LOBYTE(v29) = 1;
  LOBYTE(v28) = 1;
  LOBYTE(v27) = 1;
  LOBYTE(v26) = 1;
  LOBYTE(v25) = 1;
  LOBYTE(v24) = 1;
  LOBYTE(v23) = 1;
  LOBYTE(v22) = 1;
  LOBYTE(v21) = 1;
  LOBYTE(v20) = 1;
  sub_1000069E0();
  sub_100006A20();
  sub_100006A70();
  v32 = *(v40 + 8);
  v32(v8, v36);
  (*(v34 + 8))(v6, v38);
  (*(v1 + 8))(v33, v2);
  sub_100002218(&unk_100010D60, &qword_1000076A8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000075C0;
  *(v10 + 32) = [objc_allocWithZone(NSNumber) initWithInteger:{0, 0, v20, 0, v21, 0, v22, 0, v23, 0, v24, 0, v25, 0, v26, 0, v27, 0, v28, 0, v29, 0, v30}];
  sub_100002260(0, &qword_100010B08, NSNumber_ptr);
  isa = sub_100006CA0().super.isa;

  [v35 setTransactionTypes:isa];

  sub_100006958(v37, v39, &qword_100010D58, &qword_1000076A0);
  v12 = 0;
  if ((*(v40 + 48))(v39, 1, v36) != 1)
  {
    v13 = v0[36];
    v14 = v0[22];
    v12 = sub_100006A10().super.isa;
    v32(v13, v14);
  }

  [v35 setStartDate:v12];

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000075D0;
  *(v15 + 32) = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:2];
  *(v15 + 40) = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:3];
  v16 = sub_100006CA0().super.isa;

  [v35 setTransactionSources:v16];

  [v35 setHasBackingData:0];
  [v35 setOriginatedByDevice:1];
  v17 = [objc_allocWithZone(PKPaymentService) init];
  v0[39] = v17;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100005450;
  v18 = swift_continuation_init();
  v0[17] = sub_100002218(&qword_100010D70, &qword_1000076B0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000041FC;
  v0[13] = &unk_10000C840;
  v0[14] = v18;
  [v17 transactionCountForRequest:v35 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100005450()
{

  return _swift_task_switch(sub_100005530, 0, 0);
}

uint64_t sub_100005530()
{
  v28 = v0;
  v1 = *(v0 + 144);
  if (v1)
  {

    v2 = [v1 integerValue];
    v26 = v2 < 1;
    sub_100006AA0();
    v3 = sub_100006AB0();
    v4 = sub_100006D30();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 312);
    v25 = *(v0 + 304);
    v7 = *(v0 + 296);
    v9 = *(v0 + 160);
    v8 = *(v0 + 168);
    v10 = *(v0 + 152);
    if (v5)
    {
      v24 = *(v0 + 152);
      v11 = swift_slowAlloc();
      v23 = v7;
      v12 = swift_slowAlloc();
      v27 = v12;
      *v11 = 136315138;
      if (v2 >= 1)
      {
        v13 = 20302;
      }

      else
      {
        v13 = 5457241;
      }

      if (v2 >= 1)
      {
        v14 = 0xE200000000000000;
      }

      else
      {
        v14 = 0xE300000000000000;
      }

      v22 = v8;
      v15 = sub_10000455C(v13, v14, &v27);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v3, v4, "Inactive Apple Pay User: %s", v11, 0xCu);
      sub_100005F70(v12);

      (*(v9 + 8))(v22, v24);
      v16 = v23;
    }

    else
    {

      (*(v9 + 8))(v8, v10);
      v16 = v7;
    }

    sub_1000068F8(v16, &qword_100010D58, &qword_1000076A0);
    v19 = v26;
  }

  else
  {
    v17 = *(v0 + 304);
    v18 = *(v0 + 312);
    sub_1000068F8(*(v0 + 296), &qword_100010D58, &qword_1000076A0);

    v19 = 0;
  }

  v20 = *(v0 + 8);

  return v20(v19);
}

void sub_100005800(void *a1, void *a2)
{
  v4 = sub_100006AC0();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v65 - v10;
  __chkstk_darwin(v9);
  v13 = &v65 - v12;
  if (!a1)
  {
    v43 = [a2 _defaultPaymentPassWithoutPaymentRequest];
    if (!v43)
    {
      return;
    }

    v44 = v43;
    v45 = [v43 devicePrimaryPaymentApplication];
    if (v45)
    {
      v46 = v45;
      v47 = [v45 supportsInAppPayment];

      if (!v47)
      {

        return;
      }

      sub_100006AA0();
      v21 = v44;
      v48 = sub_100006AB0();
      v49 = sub_100006D30();
      if (os_log_type_enabled(v48, v49))
      {
        v66 = v5;
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v68 = v51;
        *v50 = 136315138;
        v52 = [v21 uniqueID];

        if (!v52)
        {
LABEL_53:
          __break(1u);
          return;
        }

        v53 = sub_100006C50();
        v55 = v54;

        v56 = sub_10000455C(v53, v55, &v68);

        *(v50 + 4) = v56;
        _os_log_impl(&_mh_execute_header, v48, v49, "Default pass valid to display on dynamic button: %s", v50, 0xCu);
        sub_100005F70(v51);

        (v66)[1](v8, v4);
      }

      else
      {

        (v5)[1](v8, v4);
      }

      v63 = [v21 uniqueID];
      if (v63)
      {
        v64 = v63;
        sub_100006C50();

        return;
      }

      goto LABEL_42;
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v14 = a1;
  v15 = [a2 _defaultPaymentPassForPaymentRequest:v14];
  v16 = v15;
  if (!v15)
  {
    goto LABEL_8;
  }

  v17 = v15;
  v18 = [v17 devicePrimaryPaymentApplication];
  if (!v18)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v19 = v18;
  v20 = [v18 supportsInAppPayment];

  if (v20)
  {
    v67 = v14;
    sub_100006AA0();
    v21 = v17;
    v22 = sub_100006AB0();
    v23 = sub_100006D30();
    v24 = &PassKitWrapperXPCServiceUIDelegate;
    if (!os_log_type_enabled(v22, v23))
    {

      (v5)[1](v13, v4);
      goto LABEL_31;
    }

    v66 = v5;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v68 = v26;
    *v25 = 136315138;
    v27 = [v21 uniqueID];

    if (v27)
    {
      v28 = sub_100006C50();
      v30 = v29;

      v31 = sub_10000455C(v28, v30, &v68);

      *(v25 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v22, v23, "Default pass valid to display on dynamic button: %s", v25, 0xCu);
      sub_100005F70(v26);

      (v66)[1](v13, v4);
      v24 = &PassKitWrapperXPCServiceUIDelegate;
LABEL_31:
      v60 = [v21 v24[167].count];
      if (v60)
      {
        v61 = v60;
        sub_100006C50();

        return;
      }

LABEL_42:
      return;
    }

    goto LABEL_52;
  }

LABEL_8:
  v32 = [a2 _sortedPaymentPassesForPaymentRequest:v14];
  if (!v32)
  {
    sub_100006AA0();
    v57 = sub_100006AB0();
    v58 = sub_100006D30();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v57, v58, "No passes valid for dynamic button", v59, 2u);
    }

    else
    {
    }

    (v5)[1](v11, v4);
    return;
  }

  v33 = v32;
  v66 = v16;
  sub_100002260(0, &qword_100010D40, PKPaymentPass_ptr);
  v34 = sub_100006CB0();

  v67 = v14;
  if (!(v34 >> 62))
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
      goto LABEL_11;
    }

LABEL_47:

    return;
  }

LABEL_46:
  v35 = sub_100006DB0();
  if (!v35)
  {
    goto LABEL_47;
  }

LABEL_11:
  v36 = 0;
  while (1)
  {
    if ((v34 & 0xC000000000000001) != 0)
    {
      v37 = sub_100006D90();
    }

    else
    {
      if (v36 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_45;
      }

      v37 = *(v34 + 8 * v36 + 32);
    }

    v38 = v37;
    v39 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v40 = [v37 devicePrimaryPaymentApplication];
    if (!v40)
    {
      __break(1u);
      goto LABEL_50;
    }

    v41 = v40;
    v42 = [v40 supportsInAppPayment];

    if (v42)
    {
      break;
    }

    ++v36;
    if (v39 == v35)
    {
      goto LABEL_47;
    }
  }

  v62 = [v38 uniqueID];

  if (v62)
  {
    sub_100006C50();
  }
}

uint64_t sub_100005F70(void *a1)
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

id sub_100005FBC(uint64_t a1, double a2, double a3)
{
  v6 = sub_100006AC0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(PKPassView) initWithPass:a1 content:4 suppressedContent:2039];
  v11 = v10;
  if (v10 && (v12 = [v10 snapshotOfFrontFaceWithRequestedSize:{a2, a3}]) != 0)
  {
    v13 = v12;

    return v13;
  }

  else
  {
    sub_100006AA0();
    v15 = sub_100006AB0();
    v16 = sub_100006D30();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Did not get snapshot of front face.", v17, 2u);
    }

    else
    {
    }

    (*(v7 + 8))(v9, v6);
    return 0;
  }
}

uint64_t sub_1000061A4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000061E4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100006234(uint64_t a1)
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
  v10[1] = sub_100006308;

  return sub_100002508(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100006308()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000063FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_100006474(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000064B8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000064F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000069D8;

  return sub_10000436C(a1, v4);
}

uint64_t sub_1000065A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100006308;

  return sub_10000436C(a1, v4);
}

uint64_t sub_100006660()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000066AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000066C4()
{
  result = qword_100010D80;
  if (!qword_100010D80)
  {
    sub_100006B20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010D80);
  }

  return result;
}

unint64_t sub_10000671C()
{
  result = qword_100010D90;
  if (!qword_100010D90)
  {
    sub_100006780(&qword_100010D88, &qword_1000076D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010D90);
  }

  return result;
}

uint64_t sub_100006780(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000067C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002218(&qword_100010DA8, &qword_1000076E8);
    v3 = sub_100006DC0();
    v4 = a1 + 32;

    while (1)
    {
      sub_100006958(v4, &v13, &qword_100010DA0, &qword_1000076E0);
      v5 = v13;
      v6 = v14;
      result = sub_100004B04(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000069C0(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000068F8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002218(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100006958(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002218(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_1000069C0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}