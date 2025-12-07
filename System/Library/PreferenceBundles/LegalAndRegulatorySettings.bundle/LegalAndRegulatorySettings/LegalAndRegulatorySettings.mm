id sub_14F4()
{
  type metadata accessor for FindLegalAndRegulatorySettingsClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_C460 = result;
  return result;
}

unint64_t sub_1574()
{
  result = qword_C400;
  if (!qword_C400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C400);
  }

  return result;
}

uint64_t sub_15E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_319C();
  v3[5] = sub_318C();
  v5 = sub_317C();

  return _swift_task_switch(sub_1680, v5, v4);
}

uint64_t sub_1680()
{

  sub_30CC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_16F8()
{
  v0 = sub_1884(&qword_C408, &qword_35C8);
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v5 - v2;
  sub_30BC();
  sub_1908();

  sub_312C();
  sub_1B00();

  sub_311C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1850@<X0>(uint64_t *a1@<X8>)
{
  sub_30FC();
  result = sub_30EC();
  *a1 = result;
  return result;
}

uint64_t sub_1884(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_18CC()
{

  return sub_30AC();
}

unint64_t sub_1908()
{
  result = qword_C410;
  if (!qword_C410)
  {
    sub_30BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C410);
  }

  return result;
}

uint64_t sub_1960(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A0C;

  return sub_15E4(a1, a2, v2);
}

uint64_t sub_1A0C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1B00()
{
  result = qword_C418;
  if (!qword_C418)
  {
    sub_1B64(&qword_C408, &qword_35C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C418);
  }

  return result;
}

uint64_t sub_1B64(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1BBC()
{
  sub_1B64(&qword_C408, &qword_35C8);
  sub_1B00();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C20()
{
  v1 = OBJC_IVAR____TtC26LegalAndRegulatorySettings30LegalAndRegulatorySettingsRoot____lazy_storage___legalAndRegulatorySettingsListState;
  if (*(v0 + OBJC_IVAR____TtC26LegalAndRegulatorySettings30LegalAndRegulatorySettingsRoot____lazy_storage___legalAndRegulatorySettingsListState))
  {
    v2 = *(v0 + OBJC_IVAR____TtC26LegalAndRegulatorySettings30LegalAndRegulatorySettingsRoot____lazy_storage___legalAndRegulatorySettingsListState);
  }

  else
  {
    sub_30FC();
    v2 = sub_30EC();
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_1C90()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_30BC();
  __chkstk_darwin();
  v18.receiver = v1;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "viewDidLoad");
  sub_1C20();
  sub_30AC();
  v3 = objc_allocWithZone(sub_1884(&qword_C458, &unk_3680));
  v4 = sub_310C();
  if (qword_C2C8 != -1)
  {
    swift_once();
  }

  v5 = qword_C460;
  v6 = sub_314C();
  v7 = [v5 localizedStringForKey:v6 value:0 table:0];

  if (!v7)
  {
    sub_315C();
    v7 = sub_314C();
  }

  [v1 setTitle:v7];

  v8 = [v4 view];
  if (!v8)
  {
    v9 = v4;
    goto LABEL_10;
  }

  v9 = v8;
  v10 = [v1 view];
  if (v10)
  {
    v11 = v10;
    [v10 addSubview:v9];

    v12 = [v1 view];
    if (v12)
    {
      v13 = v12;
      [v12 bounds];
      v15 = v14;
      v17 = v16;

      [v9 setFrame:{0.0, 0.0, v15, v17}];
      [v9 setAutoresizingMask:18];
      [v1 addChildViewController:v4];
      [v4 didMoveToParentViewController:v1];

LABEL_10:
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_20F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = sub_319C();
  v3[6] = sub_318C();
  v5 = sub_317C();

  return _swift_task_switch(sub_2190, v5, v4);
}

uint64_t sub_2190()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  *(v0 + 56) = _Block_copy(v2);
  if (v1)
  {
    v3 = sub_313C();
  }

  else
  {
    v3 = 0;
  }

  *(v0 + 64) = v3;
  v4 = *(v0 + 32);
  *(v0 + 72) = sub_318C();
  v6 = sub_317C();

  return _swift_task_switch(sub_226C, v6, v5);
}

uint64_t sub_226C()
{
  v1 = *(v0 + 64);

  if (v1)
  {
    v2 = *(v0 + 64);
    sub_1C20();
    v3._rawValue = v2;
    sub_30DC(v3);
  }

  v4 = *(v0 + 56);

  if (v4)
  {
    v5 = *(v0 + 56);
    v5[2](v5);
    _Block_release(v5);
  }

  v6 = *(v0 + 8);

  return v6();
}

id sub_246C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_24D8()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_2520()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A0C;

  return sub_20F0(v2, v3, v4);
}

uint64_t sub_25D4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_30A8;

  return v6();
}

uint64_t sub_26C0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_30A8;

  return sub_25D4(v2, v3, v4);
}

uint64_t sub_2780(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1A0C;

  return v7();
}

uint64_t sub_2868()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_28A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_30A8;

  return sub_2780(a1, v4, v5, v6);
}

uint64_t sub_2974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1884(&qword_C450, &qword_3630);
  __chkstk_darwin();
  v10 = v22 - v9;
  sub_2C30(a3, v22 - v9);
  v11 = sub_31BC();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_2CA0(v10);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_31AC();
  (*(v12 + 8))(v10, v11);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v13 = sub_317C();
  v15 = v14;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v16 = sub_316C() + 32;
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    *(v17 + 24) = a5;

    if (v15 | v13)
    {
      v23[0] = 0;
      v23[1] = 0;
      v18 = v23;
      v23[2] = v13;
      v23[3] = v15;
    }

    else
    {
      v18 = 0;
    }

    v22[1] = 7;
    v22[2] = v18;
    v22[3] = v16;
    v20 = swift_task_create();

    sub_2CA0(a3);

    return v20;
  }

LABEL_8:
  sub_2CA0(a3);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_2C30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1884(&qword_C450, &qword_3630);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2CA0(uint64_t a1)
{
  v2 = sub_1884(&qword_C450, &qword_3630);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2D08(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2E00;

  return v6(a1);
}

uint64_t sub_2E00()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2EF8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2F30(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_30A8;

  return sub_2D08(a1, v4);
}

uint64_t sub_2FE8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A0C;

  return sub_2D08(a1, v4);
}