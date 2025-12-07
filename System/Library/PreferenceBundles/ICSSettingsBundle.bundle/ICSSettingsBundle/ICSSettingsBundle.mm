id PHDefaultLog(uint64_t a1)
{
  if (qword_111B8 != -1)
  {
    sub_5490();
  }

  v2 = qword_111B0;

  return v2;
}

void sub_2648(id a1)
{
  qword_111B0 = os_log_create("com.apple.calls.mobilephone", "Default");

  _objc_release_x1();
}

id PHOversizedLog(uint64_t a1)
{
  if (qword_111C8 != -1)
  {
    sub_54A4();
  }

  v2 = qword_111C0;

  return v2;
}

void sub_26D0(id a1)
{
  qword_111C0 = os_log_create("com.apple.calls.mobilephone", "Oversized");

  _objc_release_x1();
}

id PHOversizedLogQueue(uint64_t a1)
{
  if (qword_111D8 != -1)
  {
    sub_54B8();
  }

  v2 = qword_111D0;

  return v2;
}

void sub_2758(id a1)
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, 0xFFFFFFFE, 0);
  v1 = dispatch_queue_create("com.apple.calls.mobilephone.logging", v3);
  v2 = qword_111D0;
  qword_111D0 = v1;
}

uint64_t sub_2860(uint64_t a1)
{
  qword_111E0 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

uint64_t static ICSTipsHelper.donateEventAnnouceCallsEnabled()()
{
  sub_3938(&qword_11008, &qword_80E0);
  __chkstk_darwin();
  v1 = &v5 - v0;
  v2 = sub_560C();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  sub_3D10(0, 0, v1, &unk_80F0, v3);
}

uint64_t sub_3938(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_39A0()
{
  sub_54DC();
  v1 = sub_55CC();
  v3 = v2;
  v0[3] = v2;
  v4 = sub_55CC();
  v6 = v5;
  v0[4] = v5;
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_3A98;

  return static TipEventProxy.donate(eventIdentifier:for:with:)(v1, v3, v4, v6, 0);
}

uint64_t sub_3A98()
{
  *(*v1 + 48) = v0;

  if (v0)
  {

    v2 = sub_4808;
  }

  else
  {

    v2 = sub_3C04;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_3C2C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3C64(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_4804;

  return sub_3980(a1);
}

uint64_t sub_3D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_3938(&qword_11008, &qword_80E0);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_4374(a3, v24 - v9);
  v11 = sub_560C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_43E4(v10);
  }

  else
  {
    sub_55FC();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_55EC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_55DC() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      sub_3938(&qword_11038, &qword_8138);
      v20 = (v17 | v15);
      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v21 = swift_task_create();

      sub_43E4(a3);

      return v21;
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

  sub_43E4(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  sub_3938(&qword_11038, &qword_8138);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

id ICSTipsHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ICSTipsHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ICSTipsHelper();
  return objc_msgSendSuper2(&v2, "init");
}

id ICSTipsHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ICSTipsHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_41D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_4280;

  return sub_3980(a1);
}

uint64_t sub_4280()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_4374(uint64_t a1, uint64_t a2)
{
  v4 = sub_3938(&qword_11008, &qword_80E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_43E4(uint64_t a1)
{
  v2 = sub_3938(&qword_11008, &qword_80E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_444C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_4540;

  return v5(v2 + 32);
}

uint64_t sub_4540()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_4654(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_4804;

  return sub_444C(a1, v4);
}

uint64_t sub_470C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_4744(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_4280;

  return sub_444C(a1, v4);
}

unint64_t sub_4844()
{
  result = qword_110D8;
  if (!qword_110D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_110D8);
  }

  return result;
}

uint64_t sub_48B4()
{
  sub_551C();
  __chkstk_darwin();
  v0 = sub_54FC();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4CD8(0, &qword_110F0, &off_C2E0);
  sub_4C04();
  sub_550C();
  sub_54EC();
  sub_552C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v6 = sub_553C();
  v8 = v7;
  v10 = v9;
  sub_4BAC();
  sub_554C();
  sub_4CC8(v6, v8, v10 & 1);

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_4B00()
{
  sub_3938(&qword_110E0, &qword_8208);
  sub_54FC();
  sub_4BAC();
  swift_getOpaqueTypeConformance2();
  return sub_55AC();
}

unint64_t sub_4BAC()
{
  result = qword_110E8;
  if (!qword_110E8)
  {
    sub_54FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_110E8);
  }

  return result;
}

id sub_4C04()
{
  v0 = [objc_allocWithZone(PSSpecifier) init];
  v1 = [objc_allocWithZone(TUUserConfiguration) init];
  sub_4CD8(0, &qword_110F8, TUUserConfiguration_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v3)
  {
    sub_55CC();
    v3 = sub_55BC();
  }

  [v0 setProperty:v1 forKey:v3];

  return v0;
}

uint64_t sub_4CC8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_4CD8(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_4D34()
{
  result = qword_11100;
  if (!qword_11100)
  {
    sub_4D98(&qword_11108, qword_8228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_11100);
  }

  return result;
}

uint64_t sub_4D98(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t ICSSettingsBundleController.isStateDrivenNavigationPossible(parentController:)(void *a1)
{
  v2 = sub_559C();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 traitCollection];
  sub_561C();

  LOBYTE(a1) = sub_557C();
  (*(v3 + 8))(v5, v2);
  return a1 & 1;
}

uint64_t ICSSettingsBundleController.handleUserDidTapOnMainSpecifier(_:parentController:)(uint64_t a1, void *a2)
{
  v3 = sub_559C();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_563C();
  __chkstk_darwin();
  v7 = sub_556C();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_562C();
  sub_555C();
  v11 = [a2 traitCollection];
  sub_561C();

  sub_51F4();
  sub_558C();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_51F4()
{
  result = qword_11110;
  if (!qword_11110)
  {
    sub_556C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_11110);
  }

  return result;
}