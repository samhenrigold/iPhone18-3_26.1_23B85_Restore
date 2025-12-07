unint64_t StaticString._asString.getter(unint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    if (result)
    {
      return sub_10001B904();
    }

    __break(1u);
  }

  if (HIDWORD(result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((result & 0xFFFFF800) != 0xD800)
  {
    if (result >> 16 <= 0x10)
    {
      return sub_10001B904();
    }

LABEL_9:
    __break(1u);
    return sub_10001B904();
  }

  __break(1u);
  return result;
}

uint64_t *NSBundle._current.unsafeMutableAddressor()
{
  if (qword_100033B60 != -1)
  {
    sub_100002538(&qword_100033B60);
  }

  return &static NSBundle._current;
}

id sub_100002460()
{
  _s2__CMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  static NSBundle._current = result;
  return result;
}

id static NSBundle._current.getter()
{
  if (qword_100033B60 != -1)
  {
    sub_100002538(&qword_100033B60);
  }

  v1 = static NSBundle._current;

  return v1;
}

uint64_t sub_100002538(uint64_t a1)
{

  return _swift_once(a1, sub_100002460);
}

uint64_t sub_100002770(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10000285C(uint64_t a1)
{
  v1 = sub_100004AB8();
  sub_100004A38(v1, v2);
  return sub_100004AB8();
}

void sub_100002934(void *a1)
{
  swift_unknownObjectWeakAssign();
}

id sub_10000297C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  swift_unknownObjectWeakInit();
  *&v9[OBJC_IVAR____TtC28WidgetConfigurationExtension45WFWidgetParametersConfigurationViewController_request] = a1;
  *&v9[OBJC_IVAR____TtC28WidgetConfigurationExtension45WFWidgetParametersConfigurationViewController_action] = a2;
  objc_allocWithZone(type metadata accessor for WidgetConfigurationParameterDataSource(0));
  v17 = a2;
  v18 = a1;
  sub_1000082E0(v17, 0);
  *&v9[OBJC_IVAR____TtC28WidgetConfigurationExtension45WFWidgetParametersConfigurationViewController_dataSource] = v19;
  v20 = &v9[OBJC_IVAR____TtC28WidgetConfigurationExtension45WFWidgetParametersConfigurationViewController_intentIdentifier];
  *v20 = a3;
  *(v20 + 1) = a4;
  v21 = &v9[OBJC_IVAR____TtC28WidgetConfigurationExtension45WFWidgetParametersConfigurationViewController_dismiss];
  *v21 = a5;
  *(v21 + 1) = a6;
  v22 = &v9[OBJC_IVAR____TtC28WidgetConfigurationExtension45WFWidgetParametersConfigurationViewController_cancel];
  *v22 = a7;
  *(v22 + 1) = a8;
  v26.receiver = v9;
  v26.super_class = type metadata accessor for WFWidgetParametersConfigurationViewController();
  v23 = objc_msgSendSuper2(&v26, "initWithNibName:bundle:", 0, 0);

  return v23;
}

void sub_100002BBC()
{
  swift_unknownObjectWeakInit();
  sub_10001BB74();
  __break(1u);
}

void sub_100002C4C()
{
  v1 = v0;
  v2 = sub_100003C48(&qword_100033E58, &qword_1000280D8);
  sub_100004AD4();
  __chkstk_darwin(v3);
  v5 = v39 - v4;
  v6 = type metadata accessor for WFWidgetParametersConfigurationViewController();
  v41.receiver = v1;
  v41.super_class = v6;
  objc_msgSendSuper2(&v41, "viewDidLoad");
  v7 = [v1 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = v7;
  v9 = objc_opt_self();
  v10 = [v9 clearColor];
  [v8 setBackgroundColor:v10];

  v11 = *&v1[OBJC_IVAR____TtC28WidgetConfigurationExtension45WFWidgetParametersConfigurationViewController_request];
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  type metadata accessor for WidgetParametersConfigurationView(0);
  sub_1000046D0();
  v12 = v11;

  sub_10001B384();
  KeyPath = swift_getKeyPath();
  [v12 family];
  v14 = sub_10001B364();
  memset(v39, 0, sizeof(v39));
  v40[3] = v14;
  v40[4] = &protocol witness table for WidgetConfigurationContext;
  sub_100004750(v40);
  sub_10001B354();
  v15 = &v5[*(v2 + 36)];
  sub_1000047B0(v40, (v15 + 1), &qword_100033E68, &qword_100028110);
  *v15 = KeyPath;
  sub_10000480C(v40, &qword_100033E68, &qword_100028110);
  sub_100004864();
  v40[0] = sub_10001B7C4();
  v16 = objc_allocWithZone(sub_100003C48(&qword_100033E98, &qword_100028128));
  v17 = sub_10001B514();
  v18 = [v17 view];
  if (!v18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v19 = v18;
  v20 = [v9 clearColor];
  [v19 setBackgroundColor:v20];

  v21 = [v17 view];
  if (!v21)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v22 = v21;
  [v21 setAutoresizingMask:18];

  v23 = [v17 view];
  if (!v23)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v24 = v23;
  v25 = [v1 view];
  if (!v25)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v26 = v25;
  [v25 bounds];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  [v24 setFrame:{v28, v30, v32, v34}];
  [v1 addChildViewController:v17];
  v35 = [v1 view];
  if (!v35)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v36 = v35;
  v37 = [v17 view];
  if (v37)
  {
    v38 = v37;
    [v36 addSubview:v37];

    [v17 didMoveToParentViewController:v1];
    swift_unknownObjectWeakAssign();

    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_100003098@<X0>(uint64_t x8_0@<X8>)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = *&Strong[OBJC_IVAR____TtC28WidgetConfigurationExtension45WFWidgetParametersConfigurationViewController_request];

  v5 = swift_unknownObjectUnownedLoadStrong();
  v6 = *&v5[OBJC_IVAR____TtC28WidgetConfigurationExtension45WFWidgetParametersConfigurationViewController_dataSource];

  return sub_100004B08(v4, x8_0);
}

uint64_t sub_1000031B8()
{
  sub_100004A8C();
  v1[2] = v0;
  sub_10001B994();
  v1[3] = sub_10001B984();
  v3 = sub_10001B974();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_10000324C, v3, v2);
}

uint64_t sub_10000324C()
{
  sub_100004A8C();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1000032E4;

  return sub_100009158();
}

uint64_t sub_1000032E4()
{
  sub_100004AFC();
  v3 = v2;
  sub_100004AF0();
  v5 = v4;
  v6 = *v1;
  sub_100004A7C();
  *v7 = v6;
  v5[7] = v0;

  if (v0)
  {
    v8 = v5[4];
    v9 = v5[5];
    v10 = sub_100003460;
  }

  else
  {
    v5[8] = v3;
    v8 = v5[4];
    v9 = v5[5];
    v10 = sub_1000033FC;
  }

  return _swift_task_switch(v10, v8, v9);
}

uint64_t sub_1000033FC()
{
  sub_100004A8C();

  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1(v2);
}

uint64_t sub_100003460()
{
  sub_100004A8C();

  sub_100004AE4();

  return v0();
}

uint64_t sub_100003538(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_10001B994();
  v2[4] = sub_10001B984();
  v4 = sub_10001B974();

  return _swift_task_switch(sub_1000035D0, v4, v3);
}

uint64_t sub_1000035D0()
{
  sub_100004A8C();
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_10000367C;

  return sub_1000031B8();
}

uint64_t sub_10000367C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *v2;
  sub_100004A7C();
  *v8 = v7;

  v9 = *(v5 + 40);
  if (v3)
  {
    v10 = sub_10001B224();

    (v9)[2](v9, 0, v10);

    _Block_release(v9);
  }

  else
  {
    (v9)[2](v9, a1, 0);
    _Block_release(v9);
  }

  v11 = *(v7 + 8);

  return v11();
}

uint64_t sub_100003814(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003C48(&qword_100033E50, &qword_100028098);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_10001B9B4();
  sub_100003C90(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_1000280A8;
  v9[5] = v8;
  sub_100004050(0, 0, v6, &unk_1000280B8, v9);
}

id sub_100003984(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WFWidgetParametersConfigurationViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100003A84()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003AC4()
{
  sub_100004AFC();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003B68;
  v2 = sub_100004AB8();

  return v3(v2);
}

uint64_t sub_100003B68()
{
  sub_100004A8C();
  sub_100004AF0();
  v1 = *v0;
  sub_100004A7C();
  *v2 = v1;

  sub_100004AE4();

  return v3();
}

uint64_t sub_100003C48(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003CB8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100004A68;

  return v6();
}

uint64_t sub_100003DA0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100004A68;

  return sub_100003CB8(v2, v3, v4);
}

uint64_t sub_100003E60(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100003B68;

  return v7();
}

uint64_t sub_100003F4C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100003F8C(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = sub_100004AC4(v6);
  *v7 = v8;
  v7[1] = sub_100004A68;

  return sub_100003E60(a1, v3, v4, v5);
}

uint64_t sub_100004050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003C48(&qword_100033E50, &qword_100028098);
  __chkstk_darwin(v9 - 8);
  v11 = v22 - v10;
  sub_1000047B0(a3, v22 - v10, &qword_100033E50, &qword_100028098);
  v12 = sub_10001B9B4();
  if (sub_10000432C(v11, 1, v12) == 1)
  {
    sub_10000480C(v11, &qword_100033E50, &qword_100028098);
  }

  else
  {
    sub_10001B9A4();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_10001B974();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_10001B8F4() + 32;
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

      sub_10000480C(a3, &qword_100033E50, &qword_100028098);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000480C(a3, &qword_100033E50, &qword_100028098);
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

uint64_t sub_100004354(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000444C;

  return v6(a1);
}

uint64_t sub_10000444C()
{
  sub_100004A8C();
  sub_100004AF0();
  v1 = *v0;
  sub_100004A7C();
  *v2 = v1;

  sub_100004AE4();

  return v3();
}

uint64_t sub_100004530()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100004568()
{
  sub_100004AFC();
  v0 = swift_task_alloc();
  v1 = sub_100004AC4(v0);
  *v1 = v2;
  v3 = sub_100004A98(v1);

  return v4(v3);
}

uint64_t sub_1000045FC()
{
  sub_100004AFC();
  v0 = swift_task_alloc();
  v1 = sub_100004AC4(v0);
  *v1 = v2;
  v3 = sub_100004A98(v1);

  return v4(v3);
}

uint64_t sub_100004690()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000046D0()
{
  result = qword_100033E60;
  if (!qword_100033E60)
  {
    type metadata accessor for WidgetParametersConfigurationView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100033E60);
  }

  return result;
}

uint64_t *sub_100004750(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_1000047B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100003C48(a3, a4);
  sub_100004AD4();
  v5 = sub_100004AB8();
  v6(v5);
  return a2;
}

uint64_t sub_10000480C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100003C48(a2, a3);
  sub_100004AD4();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_100004864()
{
  result = qword_100033E70;
  if (!qword_100033E70)
  {
    sub_100004948(&qword_100033E58, &qword_1000280D8);
    sub_100004990(&qword_100033E78, &qword_100033E80, &qword_100028118, &protocol conformance descriptor for WidgetConfigurationCardView<A>);
    sub_100004990(&qword_100033E88, &qword_100033E90, &qword_100028120, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100033E70);
  }

  return result;
}

uint64_t sub_100004948(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100004990(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100004948(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000049D8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004A20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004A38(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100004A48(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100004B08@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = a3 + *(type metadata accessor for WidgetParametersConfigurationView(0) + 28);
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  *(a3 + 8) = a1;
  v6 = sub_10000680C([a1 intent]);
  if (v7)
  {
    if (v6 == 0xD000000000000010 && v7 == 0x8000000100028B90)
    {
      v9 = 1;
    }

    else
    {
      v9 = sub_10001BBB4();
    }
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9 & 1;
  type metadata accessor for WidgetConfigurationParameterDataSource(0);
  sub_100006F94(&qword_100033EA0, type metadata accessor for WidgetConfigurationParameterDataSource, &unk_100028438);
  return sub_10001B814();
}

void *sub_100004C44()
{
  v1 = sub_10001B4D4();
  sub_100007450();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0 + *(type metadata accessor for WidgetParametersConfigurationView(0) + 28);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    v9 = v8;
  }

  else
  {

    sub_10001BA54();
    v10 = sub_10001B564();
    sub_10001B3C4();

    sub_10001B4C4();
    swift_getAtKeyPath();
    sub_100007044(v8, 0);
    (*(v3 + 8))(v6, v1);
    return v12[1];
  }

  return v8;
}

uint64_t sub_100004D98()
{
  v1 = sub_10001B3A4();
  sub_100007450();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 8);
  sub_10001B394();
  sub_100004F3C(v13);
  v11 = v0;
  memcpy(v12, v13, 0xD9uLL);
  v9[2] = v6;
  v9[3] = sub_100006B8C;
  v9[4] = &v10;
  v9[5] = v12;
  sub_100003C48(&qword_100033F68, &qword_1000281F0);
  sub_100004990(&qword_100033F70, &qword_100033F68, &qword_1000281F0, &protocol conformance descriptor for TupleView<A>);
  sub_10001B604();
  sub_10000480C(v13, &qword_100033F78, &qword_1000281F8);
  return (*(v3 + 8))(v6, v1);
}

void *sub_100004F3C@<X0>(void *a1@<X8>)
{
  if (*v1 == 1)
  {
    v3 = sub_10001B4E4();
    v15[136] = 0;
    sub_100006350(__src);
    memcpy(__dst, __src, 0x81uLL);
    memcpy(v17, __src, 0x81uLL);
    sub_100007390(__dst, v18, &qword_100034050, &qword_1000282A8);
    sub_10000480C(v17, &qword_100034050, &qword_1000282A8);
    memcpy(&v15[7], __dst, 0x81uLL);
    v4 = sub_10001B554();
    v5 = sub_10001B594();
    sub_10001B3F4();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    LOBYTE(__src[0]) = 0;
    v18[0] = v3;
    v18[1] = 0;
    LOBYTE(v18[2]) = 0;
    memcpy(&v18[2] + 1, v15, 0x88uLL);
    HIDWORD(v18[19]) = v4;
    LOWORD(v18[20]) = 256;
    v18[21] = 0x3FE8000000000000;
    LOBYTE(v18[22]) = v5;
    v18[23] = v7;
    v18[24] = v9;
    v18[25] = v11;
    v18[26] = v13;
    LOBYTE(v18[27]) = 0;
    nullsub_1();
    memcpy(__src, v18, 0xD9uLL);
  }

  else
  {
    sub_100007378(__src);
  }

  return memcpy(a1, __src, 0xD9uLL);
}

uint64_t sub_1000050C0()
{
  v1 = type metadata accessor for WidgetParametersConfigurationView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8);
  sub_100003C48(&qword_100033EA8, &unk_100028160);
  sub_10001B804();
  v4 = sub_100008090();

  v9 = v4;
  sub_100006FDC(v0, &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  sub_100007050(&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_100003C48(&qword_100034000, &qword_100028248);
  sub_100003C48(&qword_100033FA8, &qword_100028218);
  sub_100004990(&qword_100034008, &qword_100034000, &qword_100028248, &protocol conformance descriptor for [A]);
  sub_100006CAC();
  sub_100007124();
  return sub_10001B7E4();
}

uint64_t sub_10000529C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, const void *a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a3;
  v38 = a4;
  v41 = a5;
  v7 = sub_100003C48(&qword_100033F80, &qword_100028200);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v35 - v9;
  v40 = sub_100003C48(&qword_100033F88, &qword_100028208);
  v36 = *(v40 - 8);
  v11 = v36;
  v12 = __chkstk_darwin(v40);
  v39 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v35 - v14;
  v16 = sub_100003C48(&qword_100033F90, &qword_100028210);
  v17 = v16 - 8;
  v18 = __chkstk_darwin(v16);
  v42 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v35 - v20;
  v22 = sub_10001B3A4();
  v23 = (*(*(v22 - 8) + 16))(v21, a1, v22);
  v24 = &v21[*(v17 + 44)];
  v24[32] = 0;
  *v24 = 0u;
  *(v24 + 1) = 0u;
  a2(v23);
  sub_100006C28();
  sub_10001B674();
  (*(v8 + 8))(v10, v7);
  memcpy(v49, v38, 0xD9uLL);
  v43[0] = 0;
  memcpy(v44, v49, 0xE0uLL);
  memset(&v44[224], 0, 33);
  memcpy(v45, v49, sizeof(v45));
  v46 = 0u;
  v47 = 0u;
  v48 = 0;
  sub_100007390(v38, v50, &qword_100033F78, &qword_1000281F8);
  sub_100007390(v44, v50, &qword_100033FF0, &qword_100028238);
  sub_10000480C(v45, &qword_100033FF0, &qword_100028238);
  v25 = v42;
  sub_100007390(v21, v42, &qword_100033F90, &qword_100028210);
  v26 = *(v11 + 16);
  v27 = v39;
  v28 = v40;
  v26(v39, v15, v40);
  memcpy(v43, v44, sizeof(v43));
  v29 = v25;
  v30 = v41;
  sub_100007390(v29, v41, &qword_100033F90, &qword_100028210);
  v31 = sub_100003C48(&qword_100033FF8, &qword_100028240);
  v26((v30 + *(v31 + 48)), v27, v28);
  v32 = *(v31 + 64);
  memcpy(v49, v43, 0x101uLL);
  memcpy((v30 + v32), v43, 0x101uLL);
  sub_100007390(v49, v50, &qword_100033FF0, &qword_100028238);
  v33 = *(v36 + 8);
  v33(v15, v28);
  sub_10000480C(v21, &qword_100033F90, &qword_100028210);
  memcpy(v50, v43, 0x101uLL);
  sub_10000480C(v50, &qword_100033FF0, &qword_100028238);
  v33(v27, v28);
  return sub_10000480C(v42, &qword_100033F90, &qword_100028210);
}

uint64_t sub_100005758@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = **a1;
  v19 = *(*a1 + 8);
  v6 = *v4;
  v7 = v4[1];
  v9 = v4[3];
  v18 = *(v4 + 16);
  v8 = v18;
  v10 = a1[2];
  memcpy(__dst, v10, sizeof(__dst));
  v11 = a1[3];
  v12 = *v11;
  v17 = *(v11 + 8);
  v13 = v17;
  LOBYTE(v11) = v19;
  v14 = v18;
  *a2 = v5;
  *(a2 + 8) = v11;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v14;
  *(a2 + 40) = v9;
  memcpy((a2 + 48), v10, 0x48uLL);
  *(a2 + 120) = v12;
  *(a2 + 128) = v13;
  sub_100007380(v6, v7, v8);

  return sub_100007390(__dst, v16, &qword_100034060, &qword_1000282B8);
}

uint64_t sub_100005850(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v2;
  v9 = *(a1 + 32);
  v3 = *(a1 + 8);
  v10 = v3;
  v4 = v3;
  v5 = _swiftEmptyArrayStorage;
  if (!*(&v3 + 1))
  {
    v4 = 0;
    v5 = 0;
  }

  v7[4] = v4;
  v7[5] = *(&v3 + 1);
  v7[6] = 0;
  v7[7] = v5;
  sub_100007390(&v10, v7, &qword_100034018, qword_100028250);
  sub_1000060B4(v8, v7);
  sub_100003C48(&qword_100033FB8, &qword_100028220);
  sub_100003C48(&qword_100033FC8, &qword_100028228);
  sub_100006D3C();
  sub_100006DB8();
  return sub_10001B7F4();
}

uint64_t sub_100005968(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetParametersConfigurationView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v12[3] = *a1;
  swift_getKeyPath();
  sub_100006FDC(a2, v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_100007050(v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);

  sub_100003C48(&qword_100034030, &qword_100028290);
  sub_100003C48(&qword_100034038, &qword_100028298);
  sub_100004990(&qword_100034040, &qword_100034030, &qword_100028290, &protocol conformance descriptor for [A]);
  v9 = sub_100004948(&qword_100033FD0, &qword_100028230);
  v10 = sub_100006E78();
  v12[1] = v9;
  v12[2] = v10;
  swift_getOpaqueTypeConformance2();
  return sub_10001B7D4();
}

uint64_t sub_100005B8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_10001B2F4();
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin(v3);
  v39 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_10001B324();
  v5 = *(v33 - 8);
  __chkstk_darwin(v33);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10001B314();
  v8 = *(v34 - 8);
  __chkstk_darwin(v34);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003C48(&qword_100034048, &qword_1000282A0);
  v12 = *(v11 - 8);
  v36 = v11;
  v37 = v12;
  __chkstk_darwin(v11);
  v14 = &v33 - v13;
  v38 = sub_100003C48(&qword_100033FD0, &qword_100028230);
  __chkstk_darwin(v38);
  v35 = &v33 - v15;
  sub_10001B344();
  type metadata accessor for WidgetParametersConfigurationView(0);
  v16 = a1;
  sub_100003C48(&qword_100033EA8, &unk_100028160);
  sub_10001B804();
  v17 = v43;
  v18 = *(v43 + OBJC_IVAR____TtC28WidgetConfigurationExtension38WidgetConfigurationParameterDataSource_action);

  v19 = v16;
  sub_100004C44();
  sub_10001B334();
  (*(v5 + 104))(v7, enum case for ParameterLayoutMode.default(_:), v33);
  sub_10001B304();
  v20 = sub_100006F94(&qword_100033FE0, &type metadata accessor for ParameterRowView, &protocol conformance descriptor for ParameterRowView);
  v21 = v34;
  sub_10001B654();
  v22 = v21;
  (*(v8 + 8))(v10, v21);
  v43 = 0;
  v44 = 0xE000000000000000;
  sub_10001BAE4(22);

  v43 = 0xD000000000000014;
  v44 = 0x8000000100028BB0;
  v23 = [v19 key];
  v24 = sub_10001B8E4();
  v26 = v25;

  v45._countAndFlagsBits = v24;
  v45._object = v26;
  sub_10001B924(v45);

  v43 = v22;
  v44 = v20;
  swift_getOpaqueTypeConformance2();
  v27 = v35;
  v28 = v36;
  sub_10001B6D4();

  (*(v37 + 8))(v14, v28);
  v30 = v39;
  v29 = v40;
  v31 = v41;
  (*(v40 + 104))(v39, enum case for EditorPresentationEnvironment.focusFilter(_:), v41);
  sub_100006E78();
  sub_10001B664();
  (*(v29 + 8))(v30, v31);
  return sub_100007318(v27);
}

void sub_1000060B4(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_100003C48(&qword_100034020, &qword_1000286B0);
  __chkstk_darwin(v4);
  v6 = v26 - v5;
  v7 = sub_10001B374();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WidgetParametersConfigurationView(0);
  sub_100003C48(&qword_100033EA8, &unk_100028160);
  sub_10001B804();
  v11 = v28[OBJC_IVAR____TtC28WidgetConfigurationExtension38WidgetConfigurationParameterDataSource_showsParameterDescription];

  if (v11 == 1 && *(a1 + 32))
  {

    sub_10001B5E4();
    v12 = sub_10001B634();
    v26[1] = v14;
    v27 = v13;
    v16 = v15;

    sub_10001B404();
    (*(v8 + 32))(v6, v10, v7);
    *&v6[*(v4 + 36)] = 2;
    sub_100004990(&qword_100034028, &qword_100034020, &qword_1000286B0, &protocol conformance descriptor for HierarchicalShapeStyleModifier<A>);
    v17 = v27;
    v18 = sub_10001B624();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    sub_100007180(v12, v17, v16 & 1);

    sub_10000480C(v6, &qword_100034020, &qword_1000286B0);
    v25 = v22 & 1;
  }

  else
  {
    v18 = 0;
    v20 = 0;
    v25 = 0;
    v24 = 0;
  }

  *a2 = v18;
  a2[1] = v20;
  a2[2] = v25;
  a2[3] = v24;
}

uint64_t sub_100006350@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = sub_10001B744();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_100003C48(&qword_100034058, &qword_1000282B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v22[-v6];
  sub_10001B4F4();
  v8 = sub_10001B644();
  v10 = v9;
  v12 = v11;
  sub_10001B5D4();
  v13 = sub_10001B634();
  v24 = v14;
  v25 = v13;
  v23 = v15;
  v26 = v16;

  sub_100007180(v8, v10, v12 & 1);

  sub_10001B784();
  v17 = enum case for Image.TemplateRenderingMode.template(_:);
  v18 = sub_10001B764();
  (*(*(v18 - 8) + 104))(v7, v17, v18);
  sub_100003C90(v7, 0, 1, v18);
  sub_10001B754();

  sub_10000480C(v7, &qword_100034058, &qword_1000282B0);
  (*(v2 + 104))(v4, enum case for Image.ResizingMode.stretch(_:), v1);
  v19 = sub_10001B774();

  (*(v2 + 8))(v4, v1);
  v20 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption1];
  [v20 wf_lineHeight];

  sub_10001B834();
  sub_10001B424();
  *&v38[3] = *&v38[31];
  *&v38[11] = *&v38[39];
  *&v38[19] = v39;
  *(&v30[2] + 2) = *v38;
  __dst[0] = 1;
  v36 = 1;
  v31 = v25;
  v32 = v24;
  v33 = v23 & 1;
  v34 = v26;
  v35 = 0;
  v37[0] = &v35;
  v37[1] = &v31;
  v30[0] = v19;
  v30[1] = 0;
  LOWORD(v30[2]) = 1;
  *(&v30[4] + 2) = *&v38[8];
  *(&v30[6] + 2) = *&v38[16];
  v30[8] = *(&v39 + 1);
  v28 = 0;
  v29 = 1;
  v37[2] = v30;
  v37[3] = &v28;
  sub_100005758(v37, v27);
  memcpy(__dst, v30, 0x48uLL);
  sub_10000480C(__dst, &qword_100034060, &qword_1000282B8);
  sub_100007180(v31, v32, v33);
}

uint64_t type metadata accessor for WidgetParametersConfigurationView(uint64_t a1)
{
  result = qword_100033F08;
  if (!qword_100033F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000067E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001B454();
  *a1 = result;
  return result;
}

uint64_t sub_10000680C(void *a1)
{
  v2 = [a1 launchId];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_10001B8E4();

  return v3;
}

uint64_t sub_100006890(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100003C48(&qword_100033EA8, &unk_100028160);
    v9 = a1 + *(a3 + 24);

    return sub_10000432C(v9, a2, v8);
  }
}

uint64_t sub_100006938(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100003C48(&qword_100033EA8, &unk_100028160);
    v8 = v5 + *(a4 + 24);

    return sub_100003C90(v8, a2, a2, v7);
  }

  return result;
}

void sub_1000069C4(uint64_t a1)
{
  sub_100006A70();
  if (v1 <= 0x3F)
  {
    sub_100006AB4(319);
    if (v2 <= 0x3F)
    {
      sub_100006B0C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_100006A70()
{
  result = qword_100033F18;
  if (!qword_100033F18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100033F18);
  }

  return result;
}

void sub_100006AB4(uint64_t a1)
{
  if (!qword_100033F20)
  {
    type metadata accessor for WidgetConfigurationParameterDataSource(255);
    v1 = sub_10001B824();
    if (!v2)
    {
      atomic_store(v1, &qword_100033F20);
    }
  }
}

void sub_100006B0C(uint64_t a1)
{
  if (!qword_100033F28)
  {
    sub_100004948(&unk_100033F30, &qword_100028198);
    v1 = sub_10001B414();
    if (!v2)
    {
      atomic_store(v1, &qword_100033F28);
    }
  }
}

unint64_t sub_100006C28()
{
  result = qword_100033F98;
  if (!qword_100033F98)
  {
    sub_100004948(&qword_100033F80, &qword_100028200);
    sub_100006CAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100033F98);
  }

  return result;
}

unint64_t sub_100006CAC()
{
  result = qword_100033FA0;
  if (!qword_100033FA0)
  {
    sub_100004948(&qword_100033FA8, &qword_100028218);
    sub_100006D3C();
    sub_100006DB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100033FA0);
  }

  return result;
}

unint64_t sub_100006D3C()
{
  result = qword_100033FB0;
  if (!qword_100033FB0)
  {
    sub_100004948(&qword_100033FB8, &qword_100028220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100033FB0);
  }

  return result;
}

unint64_t sub_100006DB8()
{
  result = qword_100033FC0;
  if (!qword_100033FC0)
  {
    sub_100004948(&qword_100033FC8, &qword_100028228);
    sub_100004948(&qword_100033FD0, &qword_100028230);
    sub_100006E78();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100033FC0);
  }

  return result;
}

unint64_t sub_100006E78()
{
  result = qword_100033FD8;
  if (!qword_100033FD8)
  {
    sub_100004948(&qword_100033FD0, &qword_100028230);
    sub_10001B314();
    sub_100006F94(&qword_100033FE0, &type metadata accessor for ParameterRowView, &protocol conformance descriptor for ParameterRowView);
    swift_getOpaqueTypeConformance2();
    sub_100006F94(&qword_100033FE8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100033FD8);
  }

  return result;
}

uint64_t sub_100006F94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100006FDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetParametersConfigurationView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100007044(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_100007050(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetParametersConfigurationView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000070B4()
{
  type metadata accessor for WidgetParametersConfigurationView(0);
  v0 = sub_100007438();

  return sub_100005850(v0, v1);
}

unint64_t sub_100007124()
{
  result = qword_100034010;
  if (!qword_100034010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034010);
  }

  return result;
}

uint64_t sub_100007180(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000071A0()
{
  v1 = (type metadata accessor for WidgetParametersConfigurationView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  sub_100003C48(&qword_100033EA8, &unk_100028160);
  sub_100004AD4();
  (*(v6 + 8))(v0 + v3 + v5);
  sub_100007044(*(v0 + v3 + v1[9]), *(v0 + v3 + v1[9] + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000072A8()
{
  type metadata accessor for WidgetParametersConfigurationView(0);
  v0 = sub_100007438();

  return sub_100005B64(v0, v1);
}

uint64_t sub_100007318(uint64_t a1)
{
  sub_100003C48(&qword_100033FD0, &qword_100028230);
  sub_100004AD4();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_100007380(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100007390(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100003C48(a3, a4);
  sub_100004AD4();
  (*(v6 + 16))(a2, a1);
  return a2;
}

void sub_100007464(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 key];
  v4 = sub_10001B8E4();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_1000074BC(uint64_t a1)
{
  sub_10000E1DC();
  v2 = v1;
  v4 = v3;
  v5 = sub_10001B3E4();
  sub_100007450();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_10000E064();
  v11 = v10 - v9;
  v12 = sub_10000CD84(v2);
  v13 = 0;
  v14 = v2 & 0xC000000000000001;
  v15 = v2 & 0xFFFFFFFFFFFFFF8;
  do
  {
    while (1)
    {
      if (v13 == v12)
      {
        goto LABEL_10;
      }

      if (v14)
      {
        break;
      }

      if ((v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      if (v13 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      ++v13;
    }

    sub_10001BB04();
    swift_unknownObjectRelease();
  }

  while (!__OFADD__(v13++, 1));
  __break(1u);
LABEL_10:
  if (!sub_10000CD84(_swiftEmptyArrayStorage))
  {
    goto LABEL_24;
  }

  sub_10001B3B4();
  v17 = sub_10001B3D4();
  v18 = sub_10001BA34();
  if (!os_log_type_enabled(v17, v18))
  {

    (*(v7 + 8))(v11, v5);
    goto LABEL_24;
  }

  v49 = v17;
  v19 = swift_slowAlloc();
  v47 = swift_slowAlloc();
  v48 = v19;
  *v19 = 136315138;
  v20 = sub_10000CD84(_swiftEmptyArrayStorage);
  v53 = v2;
  v54 = v4;
  v51 = v7;
  v52 = v5;
  v50 = v11;
  if (!v20)
  {
    goto LABEL_23;
  }

  v55 = v20;
  sub_10000D524(0, v20 & ~(v20 >> 63), 0);
  if (v55 < 0)
  {
    goto LABEL_42;
  }

  v21 = 0;
  do
  {
    if (_swiftEmptyArrayStorage >> 62)
    {
      v22 = sub_10001BB04();
    }

    else
    {
      v22 = _swiftEmptyArrayStorage[v21 + 4];
    }

    v23 = v22;
    v24 = [v23 key];
    v25 = sub_10001B8E4();
    v27 = v26;

    v29 = _swiftEmptyArrayStorage[2];
    v28 = _swiftEmptyArrayStorage[3];
    if (v29 >= v28 >> 1)
    {
      sub_10000D524((v28 > 1), v29 + 1, 1);
    }

    ++v21;
    _swiftEmptyArrayStorage[2] = (v29 + 1);
    v30 = &_swiftEmptyArrayStorage[2 * v29];
    v30[4] = v25;
    v30[5] = v27;
  }

  while (v55 != v21);
LABEL_23:
  v31 = sub_100004AB8();
  sub_100003C48(v31, v32);
  sub_10000E08C();
  sub_10000DE88(v33, &qword_1000341B0, &qword_100028460);
  sub_10001B8A4();

  v34 = sub_100004AB8();
  v37 = sub_10000CEA8(v34, v35, v36);

  *(v48 + 4) = v37;
  _os_log_impl(&_mh_execute_header, v49, v18, "Found parameters that is not supported on this platform: %s", v48, 0xCu);
  sub_10000DD48(v47);
  sub_10000E108(v47);
  sub_10000E108(v48);

  (*(v51 + 8))(v50, v52);
  v2 = v53;
  v4 = v54;
LABEL_24:
  v38 = sub_10000CD84(v2);
  v39 = 0;
  if (!v12)
  {
    v40 = 0;
    goto LABEL_34;
  }

  v40 = 0;
  if (v38 != 1)
  {
    goto LABEL_34;
  }

  if (!v14)
  {
    if (*(v15 + 16))
    {
      v41 = *(v2 + 32);
      goto LABEL_29;
    }

    __break(1u);
LABEL_42:
    __break(1u);
    return;
  }

LABEL_40:
  v41 = sub_10001BB04();
LABEL_29:
  v42 = v41;
  if ([v41 allowsMultipleValues] && (objc_msgSend(v42, "displaysMultipleValueEditor") & 1) != 0)
  {
    v43 = [v42 localizedLabel];
    v39 = sub_10001B8E4();
    v40 = v44;
  }

  else
  {

    v39 = 0;
    v40 = 0;
  }

LABEL_34:
  v45 = sub_100007934(v2);
  if (v45)
  {
    v45 = sub_10000DB7C(v45);
  }

  else
  {
    v46 = 0;
  }

  *v4 = v2;
  v4[1] = v39;
  v4[2] = v40;
  v4[3] = v45;
  v4[4] = v46;
  sub_10000E1C4();
}

id sub_100007934(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = sub_10000CD84(a1);
    v4 = v3 - 1;
    if (__OFSUB__(v3, 1))
    {
      __break(1u);
    }

    else
    {
      sub_10000D764(v3 - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v4 + 32);
      }
    }

    return sub_10001BB04();
  }

  result = sub_10001BB84();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

id *sub_1000079D0()
{
  v1 = *v0;
  v2 = sub_10000CD84(*v0);
  if (!v2)
  {
LABEL_10:
    sub_100003C48(&qword_1000341B0, &qword_100028460);
    sub_10000E08C();
    sub_10000DE88(v15, &qword_1000341B0, &qword_100028460);
    v16 = sub_10001B8A4();

    return v16;
  }

  v3 = v2;
  result = sub_10000E1A4(v2);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = sub_10000E138();
      }

      else
      {
        v6 = sub_10000E120();
      }

      v7 = v6;
      v8 = [v7 key];
      v9 = sub_10001B8E4();
      v11 = v10;

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        sub_10000E0E4(v12);
      }

      ++v5;
      _swiftEmptyArrayStorage[2] = (v13 + 1);
      v14 = &_swiftEmptyArrayStorage[2 * v13];
      v14[4] = v9;
      v14[5] = v11;
    }

    while (v3 != v5);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_100007B48(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10001BB84())
  {
    if (a2 >> 62)
    {
      result = sub_10001BB84();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v21 = 0;
      return v21 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    v23 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v22 = a2 & 0xFFFFFFFFFFFFFF8;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v21 = 1;
      return v21 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = sub_10000DECC(0, &qword_1000341C0, WFParameter_ptr);
    v24 = v3;
    v11 = v3 & 0xC000000000000001;
    v12 = a2 & 0xC000000000000001;
    v13 = 4;
    v3 = i;
    v14 = a2;
    while (1)
    {
      v15 = v13 - 4;
      v16 = v13 - 3;
      if (__OFADD__(v13 - 4, 1))
      {
        break;
      }

      if (v11)
      {
        v17 = sub_10001BB04();
      }

      else
      {
        if (v15 >= *(v23 + 16))
        {
          goto LABEL_34;
        }

        v17 = *(v24 + 8 * v13);
      }

      v18 = v17;
      if (v12)
      {
        v19 = sub_10001BB04();
      }

      else
      {
        if (v15 >= *(v22 + 16))
        {
          goto LABEL_35;
        }

        v19 = *(a2 + 8 * v13);
      }

      v20 = v19;
      v21 = sub_10001BA74();

      if (v21)
      {
        ++v13;
        a2 = v14;
        if (v16 != v3)
        {
          continue;
        }
      }

      return v21 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_100007D1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v7 = 1;
    }

    else
    {
      v3 = a1 + 64;
      v4 = a2 + 64;
      do
      {
        v5 = *(v3 - 32);
        v6 = *(v4 - 32);

        v7 = sub_100007B48(v5, v6);

        if ((v7 & 1) == 0)
        {
          break;
        }

        v3 += 40;
        v4 += 40;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

id *sub_100007E3C()
{
  v1 = *v0;
  v2 = sub_10000CD84(*v0);
  if (v2)
  {
    v3 = v2;
    result = sub_10000E1A4(v2);
    if (v3 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = sub_10000E138();
      }

      else
      {
        v6 = sub_10000E120();
      }

      v7 = v6;
      v8 = [v7 key];
      v9 = sub_10001B8E4();
      v11 = v10;

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        sub_10000E0E4(v12);
      }

      ++v5;
      _swiftEmptyArrayStorage[2] = (v13 + 1);
      v14 = &_swiftEmptyArrayStorage[2 * v13];
      v14[4] = v9;
      v14[5] = v11;
    }

    while (v3 != v5);
  }

  v15 = sub_100004AB8();
  sub_10000DCCC(v15, v16);
}

Swift::Int sub_100007F64()
{
  sub_10001BBD4();
  sub_100007E3C();
  return sub_10001BBF4();
}

Swift::Int sub_100007FAC(uint64_t a1)
{
  sub_10001BBD4();
  sub_100007E3C();
  return sub_10001BBF4();
}

id *sub_100007FE8@<X0>(id **a1@<X8>)
{
  result = sub_1000079D0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000080A4(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_10000E074();
  sub_10000DFCC(v2, v3);
  sub_10001B2C4();
}

uint64_t sub_1000081A0(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v9 = *a2;

  LOBYTE(a3) = a3(v10, a1);

  if (a3)
  {
    *(v5 + v9) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v13 = __chkstk_darwin(KeyPath);
    v14[2] = v5;
    v14[3] = a1;
    sub_10000A260(v13, a5, v14);
  }
}

uint64_t sub_1000082A0(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + *a3) = a2;
}

void sub_1000082E0(void *a1, char a2)
{
  v3 = v2;
  sub_10001B2D4();
  *&v3[OBJC_IVAR____TtC28WidgetConfigurationExtension38WidgetConfigurationParameterDataSource_action] = a1;
  v25 = a2;
  v3[OBJC_IVAR____TtC28WidgetConfigurationExtension38WidgetConfigurationParameterDataSource_showsParameterDescription] = a2;
  v6 = a1;
  v7 = [v6 visibleParametersWithProcessing:0];
  sub_10000DECC(0, &qword_1000341C0, WFParameter_ptr);
  sub_10000E0BC();
  v8 = sub_10001B964();

  v27 = _swiftEmptyArrayStorage;
  v9 = sub_10000CD84(v8);
  for (i = 0; ; ++i)
  {
    if (v9 == i)
    {

      v14 = v27;
      *&v3[OBJC_IVAR____TtC28WidgetConfigurationExtension38WidgetConfigurationParameterDataSource__configurableParameters] = v27;

      sub_100008760(v25 & 1, v14);
      v16 = v15;

      *&v3[OBJC_IVAR____TtC28WidgetConfigurationExtension38WidgetConfigurationParameterDataSource__configurationSections] = v16;
      v26.receiver = v3;
      v26.super_class = type metadata accessor for WidgetConfigurationParameterDataSource(0);
      v17 = objc_msgSendSuper2(&v26, "init");
      [v6 addEventObserver:v17];
      v18 = [v6 parameters];
      v19 = sub_10001B964();

      v20 = sub_10000CD84(v19);
      if (v20)
      {
        v21 = v20;
        if (v20 < 1)
        {
          goto LABEL_22;
        }

        for (j = 0; j != v21; ++j)
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v23 = sub_10000E138();
          }

          else
          {
            v23 = sub_10000E120();
          }

          v24 = v23;
          [v23 addEventObserver:v17];
        }
      }

      return;
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = sub_10001BB04();
    }

    else
    {
      if (i >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v11 = *(v8 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v12 = v11;
    v13 = sub_100008580();

    if (v13)
    {
      sub_10001BB24();
      sub_10001BB54();
      sub_10001BB64();
      sub_10001BB34();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_100008580()
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    goto LABEL_18;
  }

  v1 = [v0 key];
  v2 = sub_10001B8E4();
  v4 = v3;

  if (v2 == sub_10001B8E4() && v4 == v5)
  {
    goto LABEL_17;
  }

  v7 = sub_10001BBB4();

  if (v7)
  {
    goto LABEL_18;
  }

  v8 = [v0 key];
  v9 = sub_10001B8E4();
  v11 = v10;

  if (v9 == sub_10001B8E4() && v11 == v12)
  {
    goto LABEL_17;
  }

  v14 = sub_10001BBB4();

  if (v14)
  {
LABEL_18:
    v22 = 0;
    return v22 & 1;
  }

  v15 = [v0 key];
  v16 = sub_10001B8E4();
  v18 = v17;

  if (v16 == sub_10001B8E4() && v18 == v19)
  {
LABEL_17:

    goto LABEL_18;
  }

  v21 = sub_10001BBB4();

  v22 = v21 ^ 1;
  return v22 & 1;
}

void sub_100008760(uint64_t a1, uint64_t a2)
{
  sub_10000E1DC();
  v3 = v2;
  LODWORD(v117) = v4;
  v113 = sub_100003C48(&qword_1000341D8, &qword_100028470);
  sub_100004AD4();
  __chkstk_darwin(v5);
  sub_10000E0C8();
  v101 = v6 - v7;
  sub_10000E168();
  __chkstk_darwin(v8);
  v118 = v87 - v9;
  v115 = sub_100003C48(&qword_1000341E0, &qword_100028478);
  sub_100004AD4();
  sub_10000E0D8();
  __chkstk_darwin(v10);
  sub_10000E15C();
  v114 = v11;
  v100 = sub_100003C48(&qword_1000341E8, &qword_100028480);
  sub_100004AD4();
  sub_10000E0D8();
  __chkstk_darwin(v12);
  sub_10000E15C();
  v102 = v13;
  v111 = sub_100003C48(&qword_1000341F0, &qword_100028488);
  sub_100004AD4();
  sub_10000E0D8();
  __chkstk_darwin(v14);
  sub_10000E15C();
  v16 = v15;
  v106 = sub_100003C48(&qword_1000341F8, &qword_100028490);
  sub_100004AD4();
  sub_10000E0D8();
  __chkstk_darwin(v17);
  sub_10000E15C();
  v109 = v18;
  v19 = sub_100003C48(&qword_100034200, &qword_100028498);
  sub_100007450();
  v21 = v20;
  sub_10000E0D8();
  __chkstk_darwin(v22);
  v24 = v87 - v23;
  v94 = sub_10001B2A4();
  sub_100007450();
  v103 = v25;
  __chkstk_darwin(v26);
  sub_10000E0C8();
  v116 = v27 - v28;
  sub_10000E168();
  __chkstk_darwin(v29);
  v99 = v87 - v30;
  sub_10000E168();
  __chkstk_darwin(v31);
  v110 = v87 - v32;
  sub_10000E168();
  __chkstk_darwin(v33);
  v35 = v87 - v34;
  v36 = sub_100003C48(&qword_100034208, &qword_1000284A0);
  sub_100007450();
  v97 = v37;
  __chkstk_darwin(v38);
  sub_10000E0C8();
  v41 = v39 - v40;
  __chkstk_darwin(v42);
  v44 = v87 - v43;
  sub_10000A520(v3);
  sub_10001B294();
  v95 = v44;
  sub_10001BC14();
  sub_10000AB30(v24);
  v45 = v21 + 8;
  v46 = *(v21 + 8);
  v112 = v45;
  v46(v24, v19);
  sub_10000A81C(v3, v117);
  v98 = v36;
  v96 = v41;
  sub_10001BC14();
  sub_10000AD84(v24, v35);
  v46(v24, v19);
  v47 = sub_10000CD84(v3);
  if (v47 < 0)
  {
    __break(1u);
  }

  else
  {
    v91 = 0;
    v93 = v3;
    v48 = v110;
    v88 = v47;
    sub_10001B244();
    sub_10001B254();
    v49 = v103;
    v50 = *(v103 + 8);
    v51 = v94;
    v90 = v103 + 8;
    v89 = v50;
    v50(v48, v94);
    sub_10001B284(0);
    v52 = *(v49 + 16);
    v92 = v35;
    v87[1] = v49 + 16;
    v87[0] = v52;
    v52(v48, v35, v51);
    v53 = v109;
    sub_10000B038(1, v109);
    sub_10000E0A4();
    v56 = sub_10000DFCC(v54, v55);
    v57 = v116;
    sub_10001BAB4();
    sub_10000DDF0(v53, v16, &qword_1000341F8, &qword_100028490);
    v58 = *(v111 + 36);
    v59 = sub_10001B234();
    v105 = *(v59 - 8);
    v110 = *(v105 + 16);
    v111 = v105 + 16;
    (v110)(v16 + v58, v53, v59);
    sub_10000480C(v53, &qword_1000341F8, &qword_100028490);
    v60 = v106;
    v61 = *(v106 + 36);
    v62 = sub_10000DFCC(&qword_100034218, &type metadata accessor for IndexSet.Index);
    v112 = v58;
    v109 = v62;
    v63 = sub_10001B8C4();
    v64 = v101;
    v65 = v118;
    if ((v63 & 1) == 0)
    {
      v106 = *(v60 + 40);
      v107 = (v105 + 32);
      v104 = v16;
      v105 += 8;
      v108 = v56;
      v117 = v61;
      v66 = v114;
      do
      {
        v67 = v16;
        v68 = v110;
        (v110)(v65, v16, v59);
        v69 = v113;
        v68(v118 + *(v113 + 48), v67 + v117, v59);
        sub_10000DDF0(v118, v64, &qword_1000341D8, &qword_100028470);
        v70 = *(v69 + 48);
        v71 = *v107;
        (*v107)(v66, v64, v59);
        v72 = v51;
        v73 = *v105;
        (*v105)(v64 + v70, v59);
        sub_10000DE3C(v118, v64, &qword_1000341D8, &qword_100028470);
        v71(v66 + *(v115 + 36), v64 + *(v69 + 48), v59);
        v73(v64, v59);
        sub_10000E0A4();
        sub_10000DFCC(&qword_100034220, v74);
        v16 = v104;
        sub_10001B9D4();
        sub_10000480C(v66, &qword_1000341E0, &qword_100028478);
        v75 = sub_10001BA24();
        v77 = *v76;
        v75(&v120, 0);
        sub_10001BA04();
        v119 = v77;
        v51 = v72;
        v57 = v116;
        sub_10001BAA4();
        v78 = sub_10001B8C4();
        v65 = v118;
      }

      while ((v78 & 1) == 0);
    }

    sub_10000480C(v16, &qword_1000341F0, &qword_100028488);
    v79 = v99;
    (*(v103 + 32))(v99, v57, v51);
    sub_10001B284(v88);
    v80 = v102;
    v81 = v92;
    v82 = v87[0];
    (v87[0])(v102, v92, v51);
    v82(v80 + *(v100 + 52), v79, v51);
    v83 = v93;

    sub_10000B788(v80, v83);
    sub_10000480C(v80, &qword_1000341E8, &qword_100028480);
    v84 = v89;
    v89(v79, v51);
    v85 = *(v97 + 8);
    v86 = v98;
    v85(v96, v98);
    v85(v95, v86);
    v84(v81, v51);
    sub_10000E1C4();
  }
}

uint64_t sub_100009158()
{
  sub_100004A8C();
  v1[2] = v0;
  sub_10001B994();
  v1[3] = sub_10001B984();
  v3 = sub_10001B974();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_1000091EC, v3, v2);
}

void sub_1000091EC()
{
  objc_opt_self();
  sub_10000E0BC();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    objc_opt_self();
    sub_10000E0BC();
    if (swift_dynamicCastObjCClass())
    {
      v27 = swift_task_alloc();
      *(v0 + 48) = v27;
      *v27 = v0;
      v27[1] = sub_100009610;
      sub_10000E188();

      sub_100009BB0();
    }

    else
    {
      sub_10001BB74();
      sub_10000E188();
    }

    return;
  }

  v2 = v1;

  v3 = [v2 fullyQualifiedLinkActionIdentifier];
  v4 = [v3 bundleIdentifier];

  v5 = sub_10001B8E4();
  v7 = v6;

  v8 = [v2 fullyQualifiedLinkActionIdentifier];
  v9 = [v8 actionIdentifier];

  v10 = sub_10001B8E4();
  v12 = v11;

  v13 = [v2 serializedParameters];
  sub_100003C48(&qword_1000342F0, &qword_1000284F8);
  v14 = sub_10001B894();

  v15 = sub_1000097F0(v14);

  v16 = objc_allocWithZone(INAppIntent);
  v17 = sub_10000CCC0(v5, v7, v10, v12, v15);
  v18 = [v2 metadata];
  v19 = [v18 effectiveBundleIdentifiers];

  v20 = [v19 array];
  v21 = sub_10001B964();

  v22 = sub_100009AB8(v21);

  v23 = sub_10000CD84(v22);
  for (i = 0; ; ++i)
  {
    if (v23 == i)
    {
      v29 = 0;
      goto LABEL_18;
    }

    if ((v22 & 0xC000000000000001) != 0)
    {
      v25 = sub_10001BB04();
    }

    else
    {
      if (i >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v25 = *(v22 + 8 * i + 32);
    }

    v26 = v25;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if ([v25 type] == 1)
    {

      v29 = [v26 bundleIdentifier];

      if (v29)
      {
        goto LABEL_19;
      }

      sub_10001B8E4();
      v29 = sub_10001B8D4();
LABEL_18:

LABEL_19:
      [v17 _setExtensionBundleId:v29];

      sub_10000E174();
      sub_10000E188();

      __asm { BRAA            X2, X16 }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t sub_100009610()
{
  sub_100004AFC();
  v3 = v2;
  v4 = *v1;
  sub_10000E150();
  *v5 = v4;
  v6 = *v1;
  sub_10000E150();
  *v7 = v6;
  v4[7] = v0;

  if (v0)
  {
    v8 = v4[4];
    v9 = v4[5];
    v10 = sub_100009790;
  }

  else
  {
    v4[8] = v3;
    v8 = v4[4];
    v9 = v4[5];
    v10 = sub_10000972C;
  }

  return _swift_task_switch(v10, v8, v9);
}

uint64_t sub_10000972C()
{
  sub_100004A8C();

  v1 = *(v0 + 64);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100009790()
{
  sub_100004A8C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000097F0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003C48(&unk_100034300, &unk_100028500);
    v2 = sub_10001BBA4();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
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
  v7 = (v2 + 8);

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v12 = v11[1];
    *&v30[0] = *v11;
    *(&v30[0] + 1) = v12;

    swift_unknownObjectRetain();
    swift_dynamicCast();
    sub_100003C48(&qword_1000342F0, &qword_1000284F8);
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_10000DF0C(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_10000DF0C(v29, v30);
    result = sub_10001BAC4(v2[5]);
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*&v7[8 * (v14 >> 6)]) == 0)
    {
      v17 = 0;
      v18 = (63 - v13) >> 6;
      while (++v15 != v18 || (v17 & 1) == 0)
      {
        v19 = v15 == v18;
        if (v15 == v18)
        {
          v15 = 0;
        }

        v17 |= v19;
        v20 = *&v7[8 * v15];
        if (v20 != -1)
        {
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v16 = __clz(__rbit64((-1 << v14) & ~*&v7[8 * (v14 >> 6)])) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
    v21 = v2[6] + 40 * v16;
    *v21 = v22;
    *(v21 + 16) = v23;
    *(v21 + 32) = v24;
    result = sub_10000DF0C(v30, (v2[7] + 32 * v16));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

id *sub_100009AB8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    v6 = _swiftEmptyArrayStorage;
    sub_10001BB44();
    v4 = a1 + 32;
    do
    {
      sub_10000DD94(v4, &v5);
      sub_10000DECC(0, &qword_1000342F8, LNEffectiveBundleIdentifier_ptr);
      swift_dynamicCast();
      sub_10001BB24();
      sub_10001BB54();
      sub_10001BB64();
      sub_10001BB34();
      v4 += 32;
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

uint64_t sub_100009BB0()
{
  v1[19] = v0;
  sub_10001B994();
  v1[20] = sub_10001B984();
  v3 = sub_10001B974();
  v1[21] = v3;
  v1[22] = v2;

  return _swift_task_switch(sub_100009C48, v3, v2);
}

uint64_t sub_100009C48()
{
  sub_100004A8C();
  sub_10000DECC(0, &qword_1000341C8, OS_dispatch_queue_ptr);
  v1 = sub_10001BA64();
  *(v0 + 184) = v1;
  v2 = swift_task_alloc();
  *(v0 + 192) = v2;
  *v2 = v0;
  v2[1] = sub_100009D08;

  return WFAction.processParametersWithoutAskingForValues(withInput:workQueue:)(0, v1);
}

uint64_t sub_100009D08()
{
  sub_100004AFC();
  v3 = v2;
  v4 = *v1;
  sub_10000E150();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 200) = v6;
  *(v4 + 208) = v0;

  if (v0)
  {
    v7 = *(v4 + 168);
    v8 = *(v4 + 176);
    v9 = sub_10000A17C;
  }

  else
  {

    v7 = *(v4 + 168);
    v8 = *(v4 + 176);
    v9 = sub_100009E30;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100009E30()
{
  v1 = [*(v0 + 152) identifier];
  if (!v1)
  {
    sub_10001B8E4();
    v1 = sub_10001B8D4();
  }

  *(v0 + 216) = v1;
  v2 = *(v0 + 152);
  sub_100003C48(&qword_100034310, &qword_100028510);
  isa = sub_10001B884().super.isa;
  *(v0 + 224) = isa;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_100009FE4;
  v4 = swift_continuation_init();
  *(v0 + 136) = sub_100003C48(&qword_100034318, &qword_100028518);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_10000CBA4;
  *(v0 + 104) = &unk_10002D4F8;
  *(v0 + 112) = v4;
  [v2 generatePopulatedIntentWithIdentifier:v1 fromInput:0 processedParameters:isa completion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100009FE4()
{
  sub_100004A8C();
  sub_10000E150();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 232) = v4;
  v5 = v3[22];
  v6 = v3[21];
  if (v4)
  {
    v7 = sub_10000A1E4;
  }

  else
  {
    v7 = sub_10000A10C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10000A10C()
{
  sub_100004AFC();
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);

  v3 = sub_10000E174();

  return v4(v3);
}

uint64_t sub_10000A17C()
{
  sub_100004A8C();
  v1 = *(v0 + 184);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000A1E4()
{
  sub_100004AFC();
  v1 = v0[28];
  v2 = v0[27];

  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_10000A260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000E074();
  sub_10000DFCC(v3, v4);
  return sub_10001B2B4();
}

id sub_10000A348()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WidgetConfigurationParameterDataSource(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for WidgetConfigurationParameterDataSource(uint64_t a1)
{
  result = qword_1000340D0;
  if (!qword_1000340D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000A468(uint64_t a1)
{
  result = sub_10001B2E4();
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

uint64_t sub_10000A520(unint64_t a1)
{
  result = sub_10000CD84(a1);
  v4 = result;
  v5 = 0;
  v6 = a1 & 0xC000000000000001;
  v7 = _swiftEmptyArrayStorage;
  v31 = (2 * result) | 1;
  v8 = a1 >> 62;
  while (v4 >= v5)
  {
    sub_10000DB24(v5, a1);
    sub_10000DB24(v4, a1);
    if (!v6 || v5 == v4)
    {

      if (!v8)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_10000DECC(0, &qword_1000341C0, WFParameter_ptr);

      v9 = v5;
      do
      {
        v10 = v9 + 1;
        sub_10001BAF4(v9);
        v9 = v10;
      }

      while (v4 != v10);
      if (!v8)
      {
LABEL_8:
        v11 = a1 & 0xFFFFFFFFFFFFFF8;
        v13 = v31;
        v12 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
        goto LABEL_11;
      }
    }

    v11 = sub_10001BB94();
    v5 = v14;
LABEL_11:
    sub_10000D844(v11, v12, v5, v13);
    if (v1)
    {

      return swift_unknownObjectRelease();
    }

    v17 = v15;
    v18 = v16;
    result = swift_unknownObjectRelease();
    if (v18)
    {
      return sub_10001BC04();
    }

    if (v4 < v17)
    {
      goto LABEL_32;
    }

    result = sub_10000DB24(v17, a1);
    if (!v6 || v17 == v4)
    {
    }

    else
    {
      if (v17 >= v4)
      {
        goto LABEL_34;
      }

      sub_10000DECC(0, &qword_1000341C0, WFParameter_ptr);

      v19 = v17;
      do
      {
        v20 = v19 + 1;
        sub_10001BAF4(v19);
        v19 = v20;
      }

      while (v4 != v20);
    }

    v21 = a1 & 0xFFFFFFFFFFFFFF8;
    v23 = v31;
    v22 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    v24 = v17;
    if (v8)
    {

      v21 = sub_10001BB94();
    }

    sub_10000DA14(v21, v22, v24, v23);
    v26 = v25;
    result = swift_unknownObjectRelease();
    v27 = v26 >> 1;
    if ((v26 >> 1) < v17)
    {
      goto LABEL_33;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10000CDA8(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v29 = v7[2];
    v28 = v7[3];
    if (v29 >= v28 >> 1)
    {
      result = sub_10000CDA8((v28 > 1), v29 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = (v29 + 1);
    v30 = &v7[2 * v29];
    v30[4] = v17;
    v30[5] = v27;
    v5 = v27 + 1;
    v6 = a1 & 0xC000000000000001;
    if (v27 >= v4)
    {
      return sub_10001BC04();
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_10000A81C(unint64_t a1, char a2)
{
  result = sub_10000CD84(a1);
  v5 = result;
  v6 = 0;
  v33 = a1 & 0xC000000000000001;
  v7 = _swiftEmptyArrayStorage;
  v31 = (2 * result) | 1;
  v8 = a1 >> 62;
  while (v5 >= v6)
  {
    sub_10000DB24(v6, a1);
    sub_10000DB24(v5, a1);
    if (!v33 || v6 == v5)
    {

      if (!v8)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_10000DECC(0, &qword_1000341C0, WFParameter_ptr);

      v9 = v6;
      do
      {
        v10 = v9 + 1;
        sub_10001BAF4(v9);
        v9 = v10;
      }

      while (v5 != v10);
      if (!v8)
      {
LABEL_8:
        v11 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
        v12 = a1 & 0xFFFFFFFFFFFFFF8;
        v13 = v31;
        goto LABEL_11;
      }
    }

    v12 = sub_10001BB94();
    v6 = v14;
LABEL_11:
    sub_10000D788(v12, v11, v6, v13, a2 & 1);
    if (v2)
    {

      return swift_unknownObjectRelease();
    }

    v17 = v15;
    v18 = v16;
    result = swift_unknownObjectRelease();
    if (v18)
    {
      return sub_10001BC04();
    }

    if (v5 < v17)
    {
      goto LABEL_32;
    }

    result = sub_10000DB24(v17, a1);
    if (!v33 || v17 == v5)
    {
    }

    else
    {
      if (v17 >= v5)
      {
        goto LABEL_34;
      }

      sub_10000DECC(0, &qword_1000341C0, WFParameter_ptr);

      v19 = v17;
      do
      {
        v20 = v19 + 1;
        sub_10001BAF4(v19);
        v19 = v20;
      }

      while (v5 != v20);
    }

    v22 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    v21 = a1 & 0xFFFFFFFFFFFFFF8;
    v23 = v17;
    v24 = v31;
    if (v8)
    {

      v21 = sub_10001BB94();
    }

    sub_10000D8FC(v21, v22, v23, v24, a2 & 1);
    v26 = v25;
    result = swift_unknownObjectRelease();
    v27 = v26 >> 1;
    if ((v26 >> 1) < v17)
    {
      goto LABEL_33;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10000CDA8(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v29 = v7[2];
    v28 = v7[3];
    if (v29 >= v28 >> 1)
    {
      result = sub_10000CDA8((v28 > 1), v29 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = (v29 + 1);
    v30 = &v7[2 * v29];
    v30[4] = v17;
    v30[5] = v27;
    v6 = v27 + 1;
    if (v27 >= v5)
    {
      return sub_10001BC04();
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_10000AB30(uint64_t a1)
{
  v2 = sub_100003C48(&qword_100034200, &qword_100028498);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - v4;
  v6 = sub_100003C48(&qword_100034260, &qword_1000284D0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = v15 - v8;
  (*(v3 + 16))(v5, a1, v2);
  sub_10000DE88(&qword_100034268, &qword_100034200, &qword_100028498);
  sub_10001B944();
  v10 = *(v7 + 44);
  sub_10000DE88(&qword_100034270, &qword_100034200, &qword_100028498);
  while (1)
  {
    sub_10001B9F4();
    if (*&v9[v10] == v15[0])
    {
      break;
    }

    v11 = sub_10001BA24();
    v13 = *(v12 + 8);
    v11(v15, 0);
    sub_10001BA04();
    sub_10001B264();
    sub_10001B284(v13);
  }

  return sub_10000480C(v9, &qword_100034260, &qword_1000284D0);
}

uint64_t sub_10000AD84(uint64_t a1, uint64_t a2)
{
  v18[5] = a2;
  v3 = sub_100003C48(&qword_100034200, &qword_100028498);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - v5;
  v7 = sub_100003C48(&qword_100034260, &qword_1000284D0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = v18 - v9;
  (*(v4 + 16))(v6, a1, v3);
  sub_10000DE88(&qword_100034268, &qword_100034200, &qword_100028498);
  sub_10001B944();
  v11 = *(v8 + 44);
  sub_10000DE88(&qword_100034270, &qword_100034200, &qword_100028498);
  while (1)
  {
    sub_10001B9F4();
    if (*&v10[v11] == v18[0])
    {
      return sub_10000480C(v10, &qword_100034260, &qword_1000284D0);
    }

    v12 = sub_10001BA24();
    v14 = *v13;
    v15 = v13[1];
    v12(v18, 0);
    result = sub_10001BA04();
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 < v14 + 1)
    {
      goto LABEL_8;
    }

    v18[0] = v14 + 1;
    v18[1] = v15;
    sub_100003C48(&qword_100034278, &qword_1000284D8);
    sub_10000DE88(&qword_100034280, &qword_100034278, &qword_1000284D8);
    sub_10001B274();
  }

  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_10000B038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100003C48(&qword_1000341D8, &qword_100028470);
  v6 = __chkstk_darwin(v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v47 = &v41 - v9;
  v46 = sub_100003C48(&qword_1000341E0, &qword_100028478);
  __chkstk_darwin(v46);
  v48 = &v41 - v10;
  v11 = sub_100003C48(&qword_100034250, &qword_1000284C8);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v41 - v15;
  v17 = sub_10001B234();
  v50 = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v41 - v22;
  result = __chkstk_darwin(v21);
  v49 = &v41 - v25;
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v43 = v8;
    v44 = v5;
    v45 = a2;
    v26 = sub_10001B2A4();
    v27 = sub_10000DFCC(&qword_100034220, &type metadata accessor for IndexSet);
    sub_10001B9C4();
    sub_10001B9F4();
    sub_10001B9E4();
    v28 = v14;
    v29 = *(v50 + 8);
    v29(v20, v17);
    v42 = v29;
    v29(v23, v17);
    sub_10000DE3C(v16, v28, &qword_100034250, &qword_1000284C8);
    if (sub_10000432C(v28, 1, v17) == 1)
    {
      v30 = v49;
      sub_10001B9F4();
      sub_10000480C(v28, &qword_100034250, &qword_1000284C8);
      v31 = v50;
    }

    else
    {
      v30 = v49;
      v31 = v50;
      (*(v50 + 32))(v49, v28, v17);
    }

    sub_10001B9F4();
    sub_10000DFCC(&qword_100034258, &type metadata accessor for IndexSet.Index);
    result = sub_10001B8B4();
    if (result)
    {
      v50 = v2;
      v32 = *(v31 + 32);
      v33 = v47;
      v32(v47, v30, v17);
      v49 = v27;
      v34 = v44;
      v32((v33 + *(v44 + 48)), v23, v17);
      v35 = v43;
      sub_10000DDF0(v33, v43, &qword_1000341D8, &qword_100028470);
      v36 = *(v34 + 48);
      v37 = v48;
      v32(v48, v35, v17);
      v38 = v35 + v36;
      v39 = v42;
      v42(v38, v17);
      sub_10000DE3C(v33, v35, &qword_1000341D8, &qword_100028470);
      v32((v37 + *(v46 + 36)), (v35 + *(v34 + 48)), v17);
      v39(v35, v17);
      v40 = v50;
      sub_10001BA14();
      (*(*(v26 - 8) + 8))(v40, v26);
      return sub_10000480C(v37, &qword_1000341E0, &qword_100028478);
    }
  }

  __break(1u);
  return result;
}

double sub_10000B594@<D0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  if (v6 < *a1)
  {
    __break(1u);
    goto LABEL_14;
  }

  v7 = a2;
  v3 = a3;
  sub_10000DB24(*a1, a2);
  sub_10000DB24(v6, v7);
  if ((v7 & 0xC000000000000001) == 0 || v5 == v6)
  {
  }

  else
  {
    if (v5 >= v6)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v4 = sub_10000DECC(0, &qword_1000341C0, WFParameter_ptr);

    v8 = v5;
    do
    {
      v9 = v8 + 1;
      sub_10001BAF4(v8);
      v8 = v9;
    }

    while (v6 != v9);
  }

  if (v7 >> 62)
  {
LABEL_14:

    v7 = sub_10001BB94();
    v4 = v12;
    v5 = v13;
    v6 = v14;
    if ((v14 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  if (v6 < 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v7 &= 0xFFFFFFFFFFFFFF8uLL;
  v4 = v7 + 32;
  v6 = (2 * v6) | 1;
  if ((v6 & 1) == 0)
  {
LABEL_12:
    sub_10000D418(v7, v4, v5, v6);
    v11 = v10;
LABEL_21:
    swift_unknownObjectRelease();
    goto LABEL_22;
  }

LABEL_15:
  sub_10001BBC4();
  swift_unknownObjectRetain_n();
  v15 = swift_dynamicCastClass();
  if (!v15)
  {
    swift_unknownObjectRelease();
    v15 = _swiftEmptyArrayStorage;
  }

  v16 = v15[2];

  if (__OFSUB__(v6 >> 1, v5))
  {
    goto LABEL_25;
  }

  if (v16 != ((v6 >> 1) - v5))
  {
LABEL_26:
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v11 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v11)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_21;
  }

LABEL_22:
  sub_1000074BC(v11);
  result = *&v18;
  *v3 = v18;
  *(v3 + 16) = v19;
  *(v3 + 32) = v20;
  return result;
}

uint64_t sub_10000B788(uint64_t a1, unint64_t a2)
{
  v76 = a2;
  v78 = sub_10001B234();
  v71 = *(v78 - 8);
  __chkstk_darwin(v78);
  v79 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10001B2A4();
  *&v82 = *(v4 - 8);
  __chkstk_darwin(v4);
  *&v83 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003C48(&qword_1000341E8, &qword_100028480);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v70 - v8;
  v81 = sub_100003C48(&qword_100034228, &qword_1000284A8) - 8;
  __chkstk_darwin(v81);
  v11 = &v70 - v10;
  sub_10000DFCC(&qword_100034230, &type metadata accessor for IndexSet);
  v12 = sub_10001B954();
  v13 = sub_10001B954();
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v92 = _swiftEmptyArrayStorage;
  sub_10000D504(0, v14 & ~(v14 >> 63), 0);
  *&v84 = v92;
  sub_10000DDF0(a1, v9, &qword_1000341E8, &qword_100028480);
  v15 = *(v82 + 32);
  v16 = v83;
  v15(v83, v9, v4);
  sub_10001B944();
  v17 = *(v7 + 60);
  v18 = v11;
  v15(v16, &v9[v17], v4);
  v19 = v81;
  v20 = &v11[*(v81 + 60)];
  sub_10001B944();
  v21 = *(v19 + 64);
  v11[v21] = 0;
  if (v14 < 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    sub_10000480C(v75, &qword_100034228, &qword_1000284A8);

    __break(1u);
    return result;
  }

  v77 = v20;
  v75 = v11;
  v22 = v79;
  v70 = v21;
  if (v14)
  {
    v23 = *(sub_100003C48(&qword_100034238, &qword_1000284B0) + 36);
    v74 = (v71 + 8);
    v73 = sub_10000DFCC(&qword_100034220, &type metadata accessor for IndexSet);
    v24 = v78;
    v25 = v4;
    v72 = v23;
    while (1)
    {
      v26 = v22;
      sub_10001B9F4();
      *&v83 = sub_10000DFCC(&qword_100034218, &type metadata accessor for IndexSet.Index);
      v27 = sub_10001B8C4();
      v28 = v25;
      *&v82 = *v74;
      (v82)(v22, v24);
      if (v27)
      {
        break;
      }

      v80 = v14;
      v29 = sub_10001BA24();
      v81 = *v30;
      v29(v86, 0);
      sub_10001BA04();
      sub_10001B9F4();
      v31 = sub_10001B8C4();
      (v82)(v26, v24);
      if (v31)
      {
        goto LABEL_24;
      }

      v32 = sub_10001BA24();
      v34 = *v33;
      v32(v86, 0);
      sub_10001BA04();
      v87[0] = v81;
      v87[1] = v34;
      v88 = 0;
      v35 = v85;
      sub_10000B594(v87, v76, &v89);
      v85 = v35;
      if (v35)
      {
        goto LABEL_26;
      }

      v36 = v89;
      v37 = v90;
      v38 = v91;
      v39 = v84;
      v92 = v84;
      v41 = *(v84 + 16);
      v40 = *(v84 + 24);
      v22 = v79;
      v42 = v80;
      if (v41 >= v40 >> 1)
      {
        v44 = v79;
        v83 = v91;
        v84 = v90;
        sub_10000D504((v40 > 1), v41 + 1, 1);
        v38 = v83;
        v37 = v84;
        v22 = v44;
        v39 = v92;
      }

      v39[2] = (v41 + 1);
      *&v84 = v39;
      v43 = &v39[5 * v41];
      v43[4] = v36;
      *(v43 + 5) = v37;
      *(v43 + 7) = v38;
      v14 = v42 - 1;
      v24 = v78;
      v25 = v28;
      v18 = v75;
      if (!v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v24 = v78;
  v25 = v4;
LABEL_15:
  v45 = v18;
  v74 = sub_100003C48(&qword_100034238, &qword_1000284B0);
  v46 = sub_10000DFCC(&qword_100034220, &type metadata accessor for IndexSet);
  v47 = v25;
  v48 = (v71 + 8);
  *&v83 = v71 + 8;
  while (1)
  {
    v49 = v22;
    v50 = v45;
    v51 = v47;
    sub_10001B9F4();
    *&v82 = sub_10000DFCC(&qword_100034218, &type metadata accessor for IndexSet.Index);
    v52 = sub_10001B8C4();
    v81 = *v48;
    (v81)(v49, v24);
    if (v52)
    {
      break;
    }

    v53 = sub_10001BA24();
    v80 = *v54;
    v53(&v89, 0);
    sub_10001BA04();
    sub_10001B9F4();
    v55 = sub_10001B8C4();
    (v81)(v49, v24);
    if (v55)
    {
      break;
    }

    v56 = v83;
    v57 = sub_10001BA24();
    v59 = *v58;
    v57(&v89, 0);
    v60 = v46;
    sub_10001BA04();
    v86[0] = v80;
    v86[1] = v59;
    v61 = v85;
    sub_10000B594(v86, v76, &v89);
    if (v61)
    {
      goto LABEL_26;
    }

    v47 = v51;
    v62 = v89;
    v63 = v90;
    v64 = v91;
    v65 = v84;
    v92 = v84;
    v67 = *(v84 + 16);
    v66 = *(v84 + 24);
    v22 = v79;
    v45 = v75;
    if (v67 >= v66 >> 1)
    {
      v85 = v47;
      v84 = v90;
      v82 = v91;
      sub_10000D504((v66 > 1), v67 + 1, 1);
      v64 = v82;
      v63 = v84;
      v47 = v85;
      v22 = v79;
      v65 = v92;
    }

    v85 = 0;
    v65[2] = (v67 + 1);
    *&v84 = v65;
    v68 = &v65[5 * v67];
    v68[4] = v62;
    *(v68 + 5) = v63;
    *(v68 + 7) = v64;
    v24 = v78;
    v46 = v60;
    v48 = v56;
  }

  *(v50 + v70) = 1;
  sub_10000480C(v50, &qword_100034228, &qword_1000284A8);

  return v84;
}

void sub_10000C118(uint64_t a1, uint64_t a2)
{
  sub_10000E1DC();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v46 = sub_10001B3E4();
  sub_100007450();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_10000E064();
  v15 = v14 - v13;
  v16 = sub_10001B864();
  sub_100007450();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_10000E064();
  v22 = (v21 - v20);
  sub_10000DECC(0, &qword_1000341C8, OS_dispatch_queue_ptr);
  *v22 = sub_10001BA64();
  (*(v18 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v16);
  v23 = sub_10001B874();
  (*(v18 + 8))(v22, v16);
  if ((v23 & 1) == 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (WFLogCategoryFocusConfiguration)
  {
    sub_10001B3B4();

    v24 = v9;
    v25 = sub_10001B3D4();
    v26 = sub_10001BA44();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v45 = v3;
      v28 = swift_slowAlloc();
      v47 = v28;
      *v27 = 136315394;
      *(v27 + 4) = sub_10000CEA8(v7, v5, &v47);
      *(v27 + 12) = 2080;
      v29 = [v24 identifier];
      v30 = sub_10001B8E4();
      v32 = v31;

      v33 = sub_10000CEA8(v30, v32, &v47);

      *(v27 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v25, v26, "Parameter state changed for key: %s, in action: %s", v27, 0x16u);
      swift_arrayDestroy();
      v34 = v28;
      v3 = v45;
      sub_10000E108(v34);
      sub_10000E108(v27);
    }

    (*(v11 + 8))(v15, v46);
    v35 = [v24 visibleParametersWithProcessing:0];
    sub_10000DECC(0, &qword_1000341C0, WFParameter_ptr);
    v36 = sub_10001B964();

    v47 = _swiftEmptyArrayStorage;
    v37 = sub_10000CD84(v36);
    for (i = 0; ; ++i)
    {
      if (v37 == i)
      {

        sub_100008054(v47);
        v42 = sub_100008014();
        sub_100008760(*(v3 + OBJC_IVAR____TtC28WidgetConfigurationExtension38WidgetConfigurationParameterDataSource_showsParameterDescription), v42);
        v44 = v43;

        sub_100008164(v44);
        sub_10000E1C4();
        return;
      }

      if ((v36 & 0xC000000000000001) != 0)
      {
        v39 = sub_10000E138();
      }

      else
      {
        if (i >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v39 = sub_10000E120();
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      v40 = v39;
      v41 = sub_100008580();

      if (v41)
      {
        sub_10001BB24();
        sub_10001BB54();
        sub_10001BB64();
        sub_10001BB34();
      }

      else
      {
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_20:
  __break(1u);
}

void sub_10000C5B8(uint64_t a1)
{
  sub_10000E1DC();
  v2 = v1;
  v4 = v3;
  v5 = sub_10001B3E4();
  sub_100007450();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_10000E064();
  v11 = v10 - v9;
  v12 = sub_10001B864();
  sub_100007450();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_10000E064();
  v18 = (v17 - v16);
  sub_10000DECC(0, &qword_1000341C8, OS_dispatch_queue_ptr);
  *v18 = sub_10001BA64();
  (*(v14 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v12);
  v19 = sub_10001B874();
  (*(v14 + 8))(v18, v12);
  if ((v19 & 1) == 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (WFLogCategoryFocusConfiguration)
  {
    sub_10001B3B4();
    v20 = v4;
    v21 = v2;
    v22 = sub_10001B3D4();
    v23 = sub_10001BA44();

    v24 = &qword_100034000;
    if (os_log_type_enabled(v22, v23))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v49 = v26;
      *v25 = 136315394;
      v27 = [v20 key];
      v48 = v5;
      v28 = sub_10001B8E4();
      v30 = v29;

      v31 = sub_10000CEA8(v28, v30, &v49);

      *(v25 + 4) = v31;
      *(v25 + 12) = 2080;
      v32 = [*&v21[OBJC_IVAR____TtC28WidgetConfigurationExtension38WidgetConfigurationParameterDataSource_action] identifier];
      v33 = sub_10001B8E4();
      v35 = v34;

      v36 = sub_10000CEA8(v33, v35, &v49);

      *(v25 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v22, v23, "Parameter attributes changed: %s, in action: %s", v25, 0x16u);
      swift_arrayDestroy();
      sub_10000E108(v26);
      v37 = v25;
      v24 = &qword_100034000;
      sub_10000E108(v37);

      (*(v7 + 8))(v11, v48);
    }

    else
    {

      (*(v7 + 8))(v11, v5);
    }

    v38 = [*&v21[v24[16]] visibleParametersWithProcessing:0];
    sub_10000DECC(0, &qword_1000341C0, WFParameter_ptr);
    sub_10000E0BC();
    v39 = sub_10001B964();

    v49 = _swiftEmptyArrayStorage;
    v40 = sub_10000CD84(v39);
    for (i = 0; ; ++i)
    {
      if (v40 == i)
      {

        sub_100008054(v49);
        v45 = sub_100008014();
        sub_100008760(v21[OBJC_IVAR____TtC28WidgetConfigurationExtension38WidgetConfigurationParameterDataSource_showsParameterDescription], v45);
        v47 = v46;

        sub_100008164(v47);
        sub_10000E1C4();
        return;
      }

      if ((v39 & 0xC000000000000001) != 0)
      {
        v42 = sub_10000E138();
      }

      else
      {
        if (i >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v42 = sub_10000E120();
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      v43 = v42;
      v44 = sub_100008580();

      if (v44)
      {
        sub_10001BB24();
        sub_10001BB54();
        sub_10001BB64();
        sub_10001BB34();
      }

      else
      {
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
}

__n128 sub_10000CA94(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000CAA8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000CAE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10000CB50()
{
  result = qword_1000341A0;
  if (!qword_1000341A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000341A0);
  }

  return result;
}

uint64_t *sub_10000CBA4(uint64_t a1, void *a2, void *a3)
{
  result = sub_10000DF34((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_10000CC34(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_10000CCA0(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000CC34(uint64_t a1, uint64_t a2)
{
  sub_100003C48(&qword_100034320, &qword_100028520);
  v4 = swift_allocError();
  *v5 = a2;

  return _swift_continuation_throwingResumeWithError(a1, v4);
}

id sub_10000CCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_10001B8D4();

  v7 = sub_10001B8D4();

  isa = sub_10001B884().super.isa;

  v9 = [v5 initWithAppBundleIdentifier:v6 appIntentIdentifier:v7 serializedParameters:isa];

  return v9;
}

uint64_t sub_10000CD84(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_10001BB84();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

id *sub_10000CDA8(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003C48(&qword_100034288, &qword_1000284E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * ((v11 - 32) / 16));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

unint64_t sub_10000CEA8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000CF6C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_10000DD94(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_10000DD48(v11);
  return v7;
}

unint64_t sub_10000CF6C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10000D06C(a5, a6);
    *a1 = v9;
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
    result = sub_10001BB14();
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

id *sub_10000D06C(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000D0B8(a1, a2);
  sub_10000D1D0(&off_10002D268);
  return v3;
}

id *sub_10000D0B8(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_10001B934())
  {
    result = sub_10000D2B4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_10001BAD4();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 4;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_10001BB14();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 4;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10000D1D0(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_10000D324(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

id *sub_10000D2B4(uint64_t a1, uint64_t a2)
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

  sub_100003C48(&qword_1000341D0, &qword_100028468);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

id *sub_10000D324(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003C48(&qword_1000341D0, &qword_100028468);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * v11 - 64);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_10000D418(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      sub_100003C48(&qword_100034248, &qword_1000284C0);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = (2 * ((v8 - 32) / 8)) | 1;
    }

    if (v4 != a3)
    {
      sub_10000DECC(0, &qword_1000341C0, WFParameter_ptr);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

id *sub_10000D504(id *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000D544(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *sub_10000D524(id *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000D65C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *sub_10000D544(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003C48(&qword_100034240, &qword_1000284B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * ((v11 - 32) / 40));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id *sub_10000D65C(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003C48(&qword_1000341A8, &qword_100028458);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * ((v11 - 32) / 16));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_10000D764(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

void sub_10000D788(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v8 = a4 >> 1;
  while (v8 != a3)
  {
    if (a3 >= v8)
    {
      __break(1u);
      return;
    }

    if (a5)
    {
      v9 = *(a2 + 8 * a3);
      v10 = sub_10000DBEC(v9);
      v12 = v11;

      if (v12)
      {

        v13 = HIBYTE(v12) & 0xF;
        if ((v12 & 0x2000000000000000) == 0)
        {
          v13 = v10 & 0xFFFFFFFFFFFFLL;
        }

        if (v13)
        {
          return;
        }
      }
    }

    ++a3;
  }
}

void sub_10000D844(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4 >> 1;
  while (v6 != a3)
  {
    if (a3 >= v6)
    {
      __break(1u);
      return;
    }

    v7 = *(a2 + 8 * a3);
    if ([v7 allowsMultipleValues])
    {
      v8 = [v7 displaysMultipleValueEditor];

      if (v8)
      {
        return;
      }
    }

    else
    {
    }

    ++a3;
  }
}

uint64_t sub_10000D8FC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v17 = result;
  v9 = a4 >> 1;
  for (i = a3; ; ++i)
  {
    if (v9 == i)
    {
      goto LABEL_11;
    }

    if (i >= v9)
    {
      break;
    }

    if ((a5 & 1) == 0)
    {
      goto LABEL_13;
    }

    v11 = *(a2 + 8 * i);
    v12 = sub_10000DBEC(v11);
    v14 = v13;

    if (!v14)
    {
      goto LABEL_10;
    }

    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15)
    {
LABEL_10:
      v9 = i;
LABEL_11:
      if (v9 < a3)
      {
        __break(1u);
LABEL_13:
        v9 = a3;
      }

      v16 = sub_10000DC50(a3, v9, v17, a2, a3, a4);
      swift_unknownObjectRelease();
      return v16;
    }
  }

  __break(1u);
  return result;
}

void sub_10000DA14(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a4 >> 1;
  for (i = a3; ; ++i)
  {
    if (v7 == i)
    {
      i = v7;
      goto LABEL_9;
    }

    if (i >= v7)
    {
      __break(1u);
      goto LABEL_12;
    }

    v9 = *(a2 + 8 * i);
    if (![v9 allowsMultipleValues])
    {
      break;
    }

    v10 = [v9 displaysMultipleValueEditor];

    if ((v10 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

LABEL_9:
  if (i >= a3)
  {
    sub_10000DC50(a3, i, a1, a2, a3, a4);
    swift_unknownObjectRelease();
    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_10000DB24(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_10001BB84();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_10000DB7C(void *a1)
{
  v2 = [a1 localizedDescription];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_10001B8E4();

  return v3;
}

uint64_t sub_10000DBEC(void *a1)
{
  v1 = [a1 localizedDescription];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_10001B8E4();

  return v3;
}

uint64_t sub_10000DC50(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_10000DCCC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_10001BBE4(v3);
  if (v3)
  {
    v4 = a2 + 40;
    do
    {

      sub_10001B914();

      v4 += 16;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_10000DD48(void *a1)
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

uint64_t sub_10000DD94(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000DDF0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10000E1F4(a1, a2, a3, a4);
  sub_100004AD4();
  v5 = sub_100004AB8();
  v6(v5);
  return v4;
}

uint64_t sub_10000DE3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10000E1F4(a1, a2, a3, a4);
  sub_100004AD4();
  v5 = sub_100004AB8();
  v6(v5);
  return v4;
}

uint64_t sub_10000DE88(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100004948(a2, a3);
    sub_10000E0BC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000DECC(uint64_t a1, unint64_t *a2, void *a3)
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

_OWORD *sub_10000DF0C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *sub_10000DF34(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000DF78@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100008090();
  *a1 = result;
  return result;
}

uint64_t sub_10000DFCC(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_10000E0BC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000E010@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100008014();
  *a1 = result;
  return result;
}

id *sub_10000E0E4@<X0>(unint64_t a1@<X8>)
{

  return sub_10000D524((a1 > 1), v1, 1);
}

uint64_t sub_10000E108(uint64_t a1)
{

  return _swift_slowDealloc(a1, -1, -1);
}

id sub_10000E120()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t sub_10000E138()
{

  return sub_10001BB04();
}

id *sub_10000E1A4(uint64_t a1)
{

  return sub_10000D524(0, a1 & ~(a1 >> 63), 0);
}

uint64_t sub_10000E1F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_100003C48(a3, a4);
}

uint64_t sub_10000E214(uint64_t *TupleTypeMetadata, uint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; a2 != i; ++i)
    {
      *&v8[8 * i] = *((a3 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v12 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v13 = (v6 + 32);
    v14 = a2;
    do
    {
      if (a2 == 1)
      {
        v15 = 0;
      }

      else
      {
        v15 = *v13;
      }

      v17 = *v12++;
      v16 = v17;
      v18 = *v5++;
      (*(*(v16 - 8) + 16))(&v11[v15], v18);
      v13 += 4;
      --v14;
    }

    while (v14);
  }

  return sub_10001B854();
}

uint64_t WidgetConfigurationCardHeaderView.init(icon:title:subtitle:dismiss:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t WidgetConfigurationCardHeaderView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v36 = a2;
  v44 = sub_100004948(&qword_100034328, &qword_100028590);
  v45 = &type metadata for Spacer;
  v46 = sub_100004948(&qword_100034330, &qword_100028598);
  v47 = &type metadata for Spacer;
  v3 = *(a1 + 16);
  sub_100010190();
  sub_10001B544();
  sub_100010184();
  sub_10001B724();
  v48 = sub_10001B434();
  sub_10001019C();
  sub_100010184();
  sub_10001B844();
  sub_10001016C();
  swift_getWitnessTable();
  v4 = sub_10001B7B4();
  sub_100007450();
  v32 = v5;
  __chkstk_darwin(v6);
  v8 = &v31 - v7;
  v9 = sub_10001B434();
  sub_100007450();
  v35 = v10;
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  v14 = sub_10001B434();
  sub_100007450();
  v16 = v15;
  v18 = __chkstk_darwin(v17);
  v33 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v34 = &v31 - v20;
  v21 = *(a1 + 24);
  v37 = v3;
  v38 = v21;
  v39 = v31;
  sub_10001B4E4();
  sub_10001B7A4();
  sub_100003C48(qword_100034338, &qword_1000285A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100028580;
  LOBYTE(a1) = sub_10001B574();
  *(inited + 32) = a1;
  v23 = sub_10001B594();
  *(inited + 33) = v23;
  sub_10001B5A4();
  sub_10001B5A4();
  if (sub_10001B5A4() != a1)
  {
    sub_10001B5A4();
  }

  sub_10001B5A4();
  if (sub_10001B5A4() != v23)
  {
    sub_10001B5A4();
  }

  WitnessTable = swift_getWitnessTable();
  sub_10001B6F4();
  (*(v32 + 8))(v8, v4);
  v42 = WitnessTable;
  v43 = &protocol witness table for _PaddingLayout;
  sub_100010154();
  v25 = swift_getWitnessTable();
  sub_10001B444();
  sub_10001B584();
  v26 = v33;
  sub_10001B6C4();
  (*(v35 + 8))(v13, v9);
  v40 = v25;
  v41 = &protocol witness table for _SafeAreaRegionsIgnoringLayout;
  swift_getWitnessTable();
  v27 = *(v16 + 16);
  v28 = v34;
  v27(v34, v26, v14);
  v29 = *(v16 + 8);
  v29(v26, v14);
  v27(v36, v28, v14);
  return (v29)(v28, v14);
}

uint64_t sub_10000E85C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a3;
  v52 = a4;
  v41 = a2;
  v46 = sub_10001B544();
  v6 = sub_10001B724();
  v50 = *(v6 - 8);
  __chkstk_darwin(v6);
  v44 = &v41 - v7;
  v49 = sub_10001B434();
  v56 = *(v49 - 8);
  v8 = __chkstk_darwin(v49);
  v45 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v47 = &v41 - v10;
  v51 = sub_100003C48(&qword_100034330, &qword_100028598);
  v11 = __chkstk_darwin(v51);
  v48 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v41 - v13;
  v15 = sub_100003C48(&qword_100034328, &qword_100028590);
  v43 = v15;
  v16 = __chkstk_darwin(v15);
  v55 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v41 - v18;
  v20 = *(a1 + 16);
  v72 = *(a1 + 32);
  v73 = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  v22 = v42;
  *(v21 + 24) = v42;
  v23 = *(a1 + 16);
  *(v21 + 32) = *a1;
  *(v21 + 48) = v23;
  v24 = *(a1 + 48);
  *(v21 + 64) = *(a1 + 32);
  *(v21 + 80) = v24;

  sub_10000FDF8(&v73, v71);
  sub_100007390(&v72, v71, &qword_100034018, qword_100028250);

  sub_100003C48(&qword_1000343C0, &qword_100028698);
  *&v71[0] = &type metadata for Image;
  *(&v71[0] + 1) = &protocol witness table for Image;
  swift_getOpaqueTypeConformance2();
  v54 = v19;
  sub_10001B794();
  sub_10001B834();
  sub_10001B424();
  v25 = &v19[*(v15 + 36)];
  v26 = v71[1];
  *v25 = v71[0];
  *(v25 + 1) = v26;
  *(v25 + 2) = v71[2];
  *v14 = sub_10001B504();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v53 = v14;
  v27 = sub_100003C48(&qword_1000343C8, &qword_1000286A0);
  v28 = v41;
  sub_10000F09C(a1, &v14[*(v27 + 44)]);
  v57 = v28;
  v58 = v22;
  v59 = a1;
  v70[8] = v22;
  v70[9] = &protocol witness table for Color;
  WitnessTable = swift_getWitnessTable();
  v30 = v44;
  sub_10001B714();
  v70[7] = WitnessTable;
  v31 = swift_getWitnessTable();
  sub_10001B834();
  v32 = v45;
  sub_10001B6E4();
  (*(v50 + 8))(v30, v6);
  v70[5] = v31;
  v70[6] = &protocol witness table for _FrameLayout;
  v33 = v49;
  v50 = swift_getWitnessTable();
  v34 = v56;
  v35 = *(v56 + 16);
  v36 = v47;
  v35(v47, v32, v33);
  v37 = *(v34 + 8);
  v56 = v34 + 8;
  v37(v32, v33);
  v38 = v55;
  sub_10000FE60(v54, v55);
  v68 = 0;
  v69 = 1;
  v70[0] = v38;
  v70[1] = &v68;
  v39 = v48;
  sub_100007390(v53, v48, &qword_100034330, &qword_100028598);
  v66 = 0;
  v67 = 1;
  v70[2] = v39;
  v70[3] = &v66;
  v35(v32, v36, v33);
  v70[4] = v32;
  v65[0] = v43;
  v65[1] = &type metadata for Spacer;
  v65[2] = v51;
  v65[3] = &type metadata for Spacer;
  v65[4] = v33;
  v60 = sub_10000FEC8();
  v61 = &protocol witness table for Spacer;
  v62 = sub_100004990(&qword_1000343E8, &qword_100034330, &qword_100028598, &protocol conformance descriptor for VStack<A>);
  v63 = &protocol witness table for Spacer;
  v64 = v50;
  sub_10000E214(v70, 5, v65);
  v37(v36, v33);
  sub_10000480C(v53, &qword_100034330, &qword_100028598);
  sub_10000FF80(v54);
  v37(v32, v33);
  sub_10000480C(v39, &qword_100034330, &qword_100028598);
  return sub_10000FF80(v55);
}

uint64_t sub_10000EF30()
{
  v0 = sub_10001B744();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001B734();
  (*(v1 + 104))(v3, enum case for Image.ResizingMode.stretch(_:), v0);
  v4 = sub_10001B774();

  (*(v1 + 8))(v3, v0);
  v6[1] = v4;
  sub_10001B5B4();
  sub_10001B6A4();
}

uint64_t sub_10000F09C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v47 = sub_100003C48(&qword_100034020, &qword_1000286B0);
  __chkstk_darwin(v47);
  v4 = &v44 - v3;
  v5 = sub_10001B374();
  v45 = *(v5 - 8);
  v46 = v5;
  __chkstk_darwin(v5);
  v44 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003C48(&qword_1000343F0, &qword_1000286B8);
  v8 = __chkstk_darwin(v7);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v44 - v10;

  sub_10001B5F4();
  v12 = sub_10001B634();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  KeyPath = swift_getKeyPath();
  v20 = swift_getKeyPath();
  v16 &= 1u;
  v51 = v16;
  v50 = 0;
  sub_10001B404();
  *v11 = v12;
  *(v11 + 1) = v14;
  v11[16] = v16;
  *(v11 + 3) = v18;
  *(v11 + 4) = KeyPath;
  *(v11 + 5) = 2;
  v11[48] = 0;
  *(v11 + 7) = v20;
  v11[64] = 1;
  if (a1[5])
  {

    sub_10001B5E4();
    v21 = sub_10001B634();
    v23 = v22;
    v25 = v24;
    v26 = v4;

    sub_10001B5C4();
    v27 = sub_10001B614();
    v29 = v28;
    v31 = v30;
    sub_100007180(v21, v23, v25 & 1);

    v32 = v44;
    sub_10001B404();
    (*(v45 + 32))(v4, v32, v46);
    *&v4[*(v47 + 36)] = 2;
    sub_100004990(&qword_100034028, &qword_100034020, &qword_1000286B0, &protocol conformance descriptor for HierarchicalShapeStyleModifier<A>);
    v33 = sub_10001B624();
    v35 = v34;
    LOBYTE(v32) = v36;
    v38 = v37;
    sub_100007180(v27, v29, v31 & 1);

    sub_10000480C(v26, &qword_100034020, &qword_1000286B0);
    v39 = v32 & 1;
    sub_100007380(v33, v35, v32 & 1);
  }

  else
  {
    v33 = 0;
    v35 = 0;
    v39 = 0;
    v38 = 0;
  }

  v40 = v48;
  sub_100007390(v11, v48, &qword_1000343F0, &qword_1000286B8);
  v41 = v49;
  sub_100007390(v40, v49, &qword_1000343F0, &qword_1000286B8);
  v42 = (v41 + *(sub_100003C48(&qword_1000343F8, &unk_100028720) + 48));
  sub_10001009C(v33, v35, v39, v38);
  sub_1000100E0(v33, v35, v39, v38);
  *v42 = v33;
  v42[1] = v35;
  v42[2] = v39;
  v42[3] = v38;
  sub_10000480C(v11, &qword_1000343F0, &qword_1000286B8);
  sub_1000100E0(v33, v35, v39, v38);
  return sub_10000480C(v40, &qword_1000343F0, &qword_1000286B8);
}

uint64_t sub_10000F52C@<X0>(void (**a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a3;
  v32 = a4;
  v6 = sub_10001BA94();
  v29 = *(v6 - 8);
  v30 = v6;
  v7 = __chkstk_darwin(v6);
  v9 = &v28 - v8;
  v10 = *(a2 - 8);
  v11 = __chkstk_darwin(v7);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v28 - v15;
  __chkstk_darwin(v14);
  v18 = &v28 - v17;
  v19 = sub_10001B544();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v28 - v22;
  (*a1)(v21);
  if (sub_10000432C(v9, 1, a2) == 1)
  {
    (*(v29 + 8))(v9, v30);
    v35 = sub_10001B704();
    v24 = v31;
    sub_10000F9B8(&v35, a2, &type metadata for Color, v31, &protocol witness table for Color);
  }

  else
  {
    (*(v10 + 32))(v18, v9, a2);
    v25 = *(v10 + 16);
    v25(v16, v18, a2);
    v25(v13, v16, a2);
    v24 = v31;
    sub_10000F8C0(v13, a2, &type metadata for Color, v31, &protocol witness table for Color);
    v26 = *(v10 + 8);
    v26(v13, a2);
    v26(v16, a2);
    v26(v18, a2);
  }

  v33 = v24;
  v34 = &protocol witness table for Color;
  swift_getWitnessTable();
  (*(v20 + 16))(v32, v23, v19);
  return (*(v20 + 8))(v23, v19);
}

uint64_t sub_10000F8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_10001B524();
  __chkstk_darwin(v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_10001B534();
}

uint64_t sub_10000F9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_10001B524();
  __chkstk_darwin(v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_10001B534();
}

uint64_t sub_10000FB30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_10000FB78(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000FB8C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000FBCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000FC34()
{
  sub_100004948(&qword_100034328, &qword_100028590);
  sub_100004948(&qword_100034330, &qword_100028598);
  sub_100010190();
  sub_10001B544();
  sub_100010184();
  sub_10001B724();
  sub_10001B434();
  sub_10001019C();
  sub_100010184();
  sub_10001B844();
  sub_10001016C();
  swift_getWitnessTable();
  sub_100010190();
  sub_10001B7B4();
  sub_100010190();
  sub_10001B434();
  sub_10001B434();
  swift_getWitnessTable();
  sub_100010154();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_10000FD80()
{

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10000FE60(uint64_t a1, uint64_t a2)
{
  sub_100003C48(&qword_100034328, &qword_100028590);
  sub_100004AD4();
  (*(v4 + 16))(a2, a1);
  return a2;
}

unint64_t sub_10000FEC8()
{
  result = qword_1000343D0;
  if (!qword_1000343D0)
  {
    sub_100004948(&qword_100034328, &qword_100028590);
    sub_100004990(&qword_1000343D8, &qword_1000343E0, &qword_1000286A8, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000343D0);
  }

  return result;
}

uint64_t sub_10000FF80(uint64_t a1)
{
  sub_100003C48(&qword_100034328, &qword_100028590);
  sub_100004AD4();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_10000FFE0@<X0>(uint64_t a1@<X8>)
{
  result = sub_10001B4A4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100010048@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10001B484();
  *a1 = result;
  return result;
}

uint64_t sub_10001009C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100007380(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1000100E0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100007180(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10001019C()
{

  return swift_getTupleTypeMetadata();
}

void sub_1000109D8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) scrollDividerView];
  [v2 setAlpha:v1];
}

void sub_1000118D4(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 reloadData];

  [*(a1 + 32) preferredContentSize];
  v4 = v3;
  v6 = v5;
  v7 = [*(a1 + 32) tableView];
  [v7 contentSize];
  v9 = v8;
  v11 = v10;

  if (v4 != v9 || v6 != v11)
  {
    v13 = [*(a1 + 32) tableView];
    [v13 contentSize];
    [*(a1 + 32) setPreferredContentSize:?];
  }
}

void sub_100011C2C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    objc_opt_class();
    v10 = objc_opt_isKindOfClass() & 1;
    if (v10)
    {
      v11 = v7;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    if (v10)
    {
      v13 = [*(a1 + 32) intentIdentifier];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100011E7C;
      v17[3] = &unk_10002D618;
      v18 = *(a1 + 40);
      [v7 generatePopulatedIntentWithIdentifier:v13 fromInput:0 processedParameters:v8 completion:v17];
    }

    else
    {
      v16 = getWFWidgetConfigurationLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v20 = "[WFWidgetConfigurationParametersViewController populateConfiguredCustomIntentWithCompletion:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "%s Invalid Intent Action", buf, 0xCu);
      }

      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v14 = getWFWidgetConfigurationLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [v9 localizedDescription];
      *buf = 136315394;
      v20 = "[WFWidgetConfigurationParametersViewController populateConfiguredCustomIntentWithCompletion:]_block_invoke";
      v21 = 2114;
      v22 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Unable to process parameters. %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_100011E7C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    v7 = getWFWidgetConfigurationLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v5 localizedDescription];
      v9 = 136315394;
      v10 = "[WFWidgetConfigurationParametersViewController populateConfiguredCustomIntentWithCompletion:]_block_invoke";
      v11 = 2114;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Unable to generate populated intent. %{public}@", &v9, 0x16u);
    }

    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

void sub_100012F90(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v6)
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) intentIdentifier];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10001312C;
    v12[3] = &unk_10002D618;
    v13 = *(a1 + 48);
    [v8 generatePopulatedIntentWithIdentifier:v9 fromInput:0 processedParameters:v6 completion:v12];
  }

  else
  {
    v10 = getWFWidgetConfigurationLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v7 localizedDescription];
      *buf = 136315394;
      v15 = "[WFWidgetValuePickerViewController populateConfiguredCustomIntentWithAction:completion:]_block_invoke";
      v16 = 2114;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Unable to process parameters. %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_10001312C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    v7 = getWFWidgetConfigurationLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v5 localizedDescription];
      v9 = 136315394;
      v10 = "[WFWidgetValuePickerViewController populateConfiguredCustomIntentWithAction:completion:]_block_invoke";
      v11 = 2114;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Unable to generate populated intent. %{public}@", &v9, 0x16u);
    }

    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

double sub_100013D0C()
{
  v0 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleFootnote];
  [v0 scaledValueForValue:2.0];
  v2 = ceil(v1);

  return v2;
}

void sub_1000149C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000149FC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 key];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

BOOL sub_100014A44(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 allowsMultipleValues] && (objc_msgSend(v3, "displaysMultipleValueEditor") & 1) != 0)
  {
    v4 = 1;
  }

  else if ([*(a1 + 32) showsParameterDescription])
  {
    v5 = [v3 localizedDescription];
    v4 = [v5 length] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_100014ACC(uint64_t a1, unint64_t a2)
{
  if (a2 > *(*(*(a1 + 48) + 8) + 24))
  {
    v4 = [NSIndexSet indexSetWithIndexesInRange:?];
    v5 = [*(a1 + 32) objectsAtIndexes:v4];
    v6 = [WFDataConfigurationParametersSection alloc];
    ++*(*(*(a1 + 56) + 8) + 24);
    v7 = [(WFDataConfigurationParametersSection *)v6 initWithParameters:v5 sectionIndex:?];
    [*(a1 + 40) addObject:v7];
  }

  v8 = [WFDataConfigurationParametersSection alloc];
  v9 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v12 = v9;
  v10 = [NSArray arrayWithObjects:&v12 count:1];
  ++*(*(*(a1 + 56) + 8) + 24);
  v11 = [(WFDataConfigurationParametersSection *)v8 initWithParameters:v10 sectionIndex:?];

  [*(a1 + 40) addObject:v11];
  *(*(*(a1 + 48) + 8) + 24) = a2 + 1;
}

void sub_100014C40(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v9 = a2;
  v4 = a2;
  v5 = [NSArray arrayWithObjects:&v9 count:1];
  [v3 appendSectionsWithIdentifiers:{v5, v9}];

  v6 = *(a1 + 32);
  v7 = [v4 parameters];
  v8 = [v7 valueForKey:@"key"];
  [v6 appendItemsWithIdentifiers:v8];
}

NSString *__cdecl sub_100014D1C(id a1, WFFocusConfigurationButton *a2, unint64_t a3)
{
  v3 = [(WFFocusConfigurationButton *)a2 identifier];
  v4 = [@"_footerButton_" stringByAppendingString:v3];

  return v4;
}

BOOL sub_100014E64(id a1, WFParameter *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (-[WFParameter key](v2, "key"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 isEqualToString:WFHandleIntentActionShowWhenRunKey], v3, (v4))
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v6 = [(WFParameter *)v2 key];
    if ([v6 isEqualToString:WFLinkActionShowWhenRunKey])
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v7 = [(WFParameter *)v2 key];
      v5 = [v7 isEqualToString:WFLinkActionOpenWhenRunKey] ^ 1;
    }
  }

  return v5;
}

void sub_100015D0C(uint64_t a1)
{
  v2 = [[WFAppLaunchRequest alloc] initWithURL:*(a1 + 32) error:0];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100015DB8;
  v3[3] = &unk_10002D920;
  v4 = *(a1 + 32);
  [v2 performWithCompletionHandler:v3];
}

void sub_100015DB8(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = getWFWidgetConfigurationLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 136315650;
      v9 = "[WFWidgetConfigurationAttributionView textView:shouldInteractWithURL:inRange:interaction:]_block_invoke_2";
      v10 = 2114;
      v11 = v7;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Unable to open an attribution URL (%{public}@) with error: %@", &v8, 0x20u);
    }
  }
}

void sub_1000165E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100016618(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100016630(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = [a2 image];

  if (v9)
  {
    v10 = [*(a1 + 32) attributedSubstringFromRange:{a3, a4}];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    *a5 = 1;
  }
}

void sub_1000166B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    v11 = v7;
    if (*(*(*(a1 + 40) + 8) + 40))
    {
      v8 = [[NSMutableAttributedString alloc] initWithAttributedString:*(*(*(a1 + 40) + 8) + 40)];
      [v8 addAttribute:NSLinkAttributeName value:v11 range:{0, objc_msgSend(v8, "length")}];
    }

    else
    {
      v8 = [*(a1 + 32) attributedSubstringFromRange:{a3, a4}];
    }

    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v7 = v11;
  }
}

void *sub_100016B08(void *a1)
{
  v5[0] = 0;
  if (!qword_100034CD8)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_100016F60;
    v5[4] = &unk_10002D980;
    v5[5] = v5;
    v6 = off_10002D968;
    v7 = 0;
    qword_100034CD8 = _sl_dlopen();
  }

  v2 = qword_100034CD8;
  if (!qword_100034CD8)
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"void *StocksUILibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"WFWidgetConfigurationAttributionView.m" lineNumber:22 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "StocksAttributionString");
  *(*(a1[4] + 8) + 24) = result;
  off_100034CD0 = *(*(a1[4] + 8) + 24);
  return result;
}

void sub_100016C8C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = [a2 image];

  if (v9)
  {
    v10 = objc_opt_new();
    [*(a1 + 32) addAttribute:NSAttachmentAttributeName value:v10 range:{a3, a4}];
    [*(a1 + 32) removeAttribute:NSBaselineOffsetAttributeName range:{a3, a4}];
    *a5 = 1;
  }
}

void *sub_100016D68(void *a1)
{
  v5[0] = 0;
  if (!qword_100034CE8)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_100016EEC;
    v5[4] = &unk_10002D980;
    v5[5] = v5;
    v6 = off_10002D9A0;
    v7 = 0;
    qword_100034CE8 = _sl_dlopen();
  }

  v2 = qword_100034CE8;
  if (!qword_100034CE8)
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"void *WeatherLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"WFWidgetConfigurationAttributionView.m" lineNumber:25 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "WAAttributionString");
  *(*(a1[4] + 8) + 24) = result;
  off_100034CE0 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t sub_100016EEC(uint64_t a1)
{
  result = _sl_dlopen();
  qword_100034CE8 = result;
  return result;
}

uint64_t sub_100016F60(uint64_t a1)
{
  result = _sl_dlopen();
  qword_100034CD8 = result;
  return result;
}

void sub_1000178DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100017904(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([v9 hasPrefix:@"_footerButton_"])
  {
    v11 = [v9 substringFromIndex:{objc_msgSend(@"_footerButton_", "length")}];
    v12 = [WeakRetained footerButtons];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100017C08;
    v27[3] = &unk_10002DA38;
    v13 = v11;
    v28 = v13;
    v14 = [v12 if_firstObjectPassingTest:v27];

    v15 = [v7 dequeueReusableCellWithIdentifier:@"ButtonCell" forIndexPath:v8];
    v16 = +[UIListContentConfiguration cellConfiguration];
    v17 = [v14 localizedTitle];
    [v16 setText:v17];

    if ([v14 isDestructive])
    {
      +[UIColor systemRedColor];
    }

    else
    {
      +[UIColor tintColor];
    }
    v24 = ;
    v25 = [v16 textProperties];
    [v25 setColor:v24];

    [v15 setContentConfiguration:v16];
  }

  else
  {
    v18 = v9;
    v15 = [v7 dequeueReusableCellWithIdentifier:@"ParameterEditorHostingCell" forIndexPath:v8];
    [v15 setContainingViewController:WeakRetained];
    [v15 setDelegate:WeakRetained];
    v19 = [WeakRetained action];
    v13 = [v19 parameterForKey:v18];

    v20 = [WeakRetained action];
    v21 = [v20 parameterStateForKey:v18 fallingBackToDefaultValue:1];

    v22 = [[WFParameterEditorModel alloc] initWithParameter:v13 state:v21 widgetFamily:{objc_msgSend(WeakRetained, "widgetFamily")}];
    [v15 updateModel:v22];

    [v15 layoutIfNeeded];
    v23 = [WeakRetained action];
    [WeakRetained configureCell:v15 forAction:v23 parameter:v13];
  }

  return v15;
}

id sub_100017C08(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_100017E24(uint64_t a1)
{
  [*(a1 + 32) preferredContentSize];
  v3 = v2;
  v5 = v4;
  v6 = [*(a1 + 32) tableView];
  [v6 contentSize];
  v8 = v7;
  v10 = v9;

  if (v3 != v8 || v5 != v10)
  {
    v12 = [*(a1 + 32) tableView];
    [v12 contentSize];
    [*(a1 + 32) setPreferredContentSize:?];
  }
}

void sub_100017FA0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = *(a1 + 40);
  v9 = v6;
  if (v6)
  {
    v8 = [*(a1 + 32) action];
    (*(v7 + 16))(v7, v8, v9, 0);
  }

  else
  {
    (*(v7 + 16))(v7, 0, 0, a4);
  }
}

void sub_1000181B8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  [v6 addEventObserver:v3];
  v4 = [v6 resourceManager];
  [v4 addTarget:*(a1 + 32) selector:"reloadActionParameterModels"];

  if (*(a1 + 40) == 1)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  [v6 setEditingContext:v5];
}

id sub_100018264(void *a1)
{
  v1 = a1;
  v2 = sub_1000182D0();
  v3 = [v2 localizedStringForKey:v1 value:v1 table:0];

  return v3;
}

id sub_1000182D0()
{
  if (qword_100034CF8 != -1)
  {
    dispatch_once(&qword_100034CF8, &stru_10002DAA0);
  }

  v1 = qword_100034CF0;

  return v1;
}

void sub_100018324(id a1)
{
  memset(&v5, 0, sizeof(v5));
  if (dladdr(sub_1000182D0, &v5) && v5.dli_fname)
  {
    v1 = [[NSURL alloc] initFileURLWithFileSystemRepresentation:v5.dli_fname isDirectory:0 relativeToURL:0];
    v2 = _CFBundleCopyBundleURLForExecutableURL();
    v3 = [NSBundle bundleWithURL:v2];
    v4 = qword_100034CF0;
    qword_100034CF0 = v3;
  }

  else
  {
    v1 = getWFGeneralLogObject();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v7 = "WFCurrentBundle_block_invoke";
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "%s WFLocalizedString failed to locate current bundle", buf, 0xCu);
    }
  }
}

void sub_1000186D4(uint64_t a1)
{
  v2 = [*(a1 + 32) hostViewControllerProxy];
  [v2 intentConfigurationWasCancelled];

  v4 = [*(a1 + 32) extensionContext];
  v3 = +[NSError userCancelledError];
  [v4 cancelRequestWithError:v3];
}

void sub_100018830(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) hostViewControllerProxy];
    v8 = INIntentWithTypedIntent();
    [v7 intentWasConfigured:v8];

    v9 = [*(a1 + 32) remoteWidgetConnection];
    [v9 invalidate];

    v10 = [*(a1 + 32) extensionContext];
    [v10 completeRequestReturningItems:&__NSArray0__struct completionHandler:0];
  }

  else
  {
    v11 = getWFWidgetConfigurationLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "[WFWidgetConfigurationServiceViewController requestViewControllerDismissal]_block_invoke";
      v14 = 2114;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Unable to generate populated intent: %{public}@", &v12, 0x16u);
    }

    v10 = [*(a1 + 32) extensionContext];
    [v10 cancelRequestWithError:v6];
  }
}

void sub_100018E18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 localizedIntent];
    [*(a1 + 32) setRemoteLocalizedIntent:v5];

    v6 = [v4 languageCode];
    [*(a1 + 32) setRemoteLanguageCode:v6];

    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100018F60;
    v10[3] = &unk_10002DBE0;
    v11 = *(a1 + 48);
    [v7 linkActionOrIntentActionFromRequest:v8 completion:v10];
  }

  else
  {
    v9 = [NSError errorWithDomain:WFRemoteWidgetConfigurationErrorDomain code:101 userInfo:0];
    (*(*(a1 + 48) + 16))();
  }
}

void sub_100019038(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = [*(a1 + 32) customIntentActionFromRequest:*(a1 + 40)];
  }

  v5 = v4;
  (*(*(a1 + 48) + 16))();
}

void sub_10001950C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100019534(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10001954C(uint64_t a1)
{
  [*(*(*(a1 + 56) + 8) + 40) setWidgetFamily:{objc_msgSend(*(a1 + 32), "family")}];
  if (!*(a1 + 40))
  {
    v2 = [*(a1 + 32) intent];
    v3 = [v2 _asMigratedAppIntent];

    v4 = *(*(*(a1 + 56) + 8) + 40);
    v5 = [v3 serializedParameters];
    v6 = [v4 copyWithSerializedParameters:v5];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    [*(*(*(a1 + 56) + 8) + 40) setWidgetFamily:{objc_msgSend(*(a1 + 32), "family")}];
  }

  [*(*(*(a1 + 56) + 8) + 40) forceUpdateParameterVisibility];
  v9 = *(*(a1 + 48) + 16);

  return v9();
}

void sub_10001964C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) bundleIdentifier];
  v14 = v3;
  v5 = [WFRemoteLinkAction alloc];
  v6 = *(a1 + 40);
  v7 = [v14 metadata];

  v8 = [*(a1 + 48) serializedParameters];
  v9 = *(a1 + 32);
  v10 = [*(a1 + 56) remoteWidgetConnection];
  v11 = [v5 initWithActionIdentifier:v6 bundleIdentifier:v4 metadata:v7 serializedParameters:v8 fullyQualifiedActionIdentifier:v9 remoteWidgetConnection:v10];
  v12 = *(*(a1 + 72) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  (*(*(a1 + 64) + 16))();
}

void sub_10001A72C(uint64_t a1)
{
  v2 = [NSError errorWithDomain:WFRemoteWidgetConfigurationErrorDomain code:100 userInfo:0];
  v3 = getWFWidgetConfigurationLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[WFWidgetConfigurationServiceViewController startConfigurationWithRequest:completion:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Error making the remoteWidgetConnection %@", &v4, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10001A82C(uint64_t a1, void *a2, void *a3)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001A91C;
  block[3] = &unk_10002DB18;
  v11 = a2;
  v12 = a3;
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v15 = v5;
  v13 = v6;
  v14 = v7;
  v8 = v12;
  v9 = v11;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10001A91C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 48) setAction:?];
    if ([*(a1 + 48) shouldShowShortcutPickerPresentation])
    {
      v2 = [[WFSystemShortcutPickerModuleSummaryCoordinator alloc] initWithAction:*(a1 + 32)];
      [*(a1 + 48) setSystemShortcutPickerModuleSummaryCoordinator:v2];

      v3 = *(a1 + 48);
      v4 = [v3 systemShortcutPickerModuleSummaryCoordinator];
      [v4 setDelegate:v3];

      v5 = [*(a1 + 48) systemShortcutPickerModuleSummaryCoordinator];
      v6 = [v5 createViewController];
      [*(a1 + 48) setSystemShortcutPickerViewController:v6];

      v7 = *(a1 + 48);
      v8 = [v7 systemShortcutPickerViewController];
      [v7 setupChildViewController:v8];
    }

    else
    {
      v11 = [*(a1 + 48) parameterConfigurationViewControllerForAction:*(a1 + 32) request:*(a1 + 56)];
      v12 = *(a1 + 48);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      if ([*(a1 + 56) resolvedWidgetConfigurationStyle] == 1 && (objc_msgSend(*(a1 + 48), "parameterConfigurationViewController"), v14 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v14, (isKindOfClass & 1) != 0))
      {
        v16 = [WFWidgetConfigurationContentViewController alloc];
        v17 = *(a1 + 56);
        v18 = [*(a1 + 48) parameterConfigurationViewController];
        v19 = [(WFWidgetConfigurationContentViewController *)v16 initWithRequest:v17 parametersConfigurationViewController:v18];
      }

      else
      {
        v19 = [*(a1 + 48) parameterConfigurationViewController];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [[UINavigationController alloc] initWithRootViewController:v19];
        v20 = [v8 navigationBar];
        [v20 setTranslucent:0];

        v21 = [*(a1 + 48) request];
        v22 = [v21 widgetPrimaryColor];
        v23 = v22;
        if (!v22)
        {
          v23 = +[UIColor wf_defaultWidgetConfigurationCardBackgroundColor];
        }

        v24 = [v8 navigationBar];
        [v24 setBarTintColor:v23];

        if (!v22)
        {
        }

        [v8 setNavigationBarHidden:1];
      }

      else
      {
        v8 = v19;
      }

      v25 = [[WFWidgetConfigurationServiceCardContainerViewController alloc] initWithRequest:*(a1 + 56) contentViewController:v8];
      [(WFWidgetConfigurationServiceCardContainerViewController *)v25 setContainerDelegate:*(a1 + 48)];
      [*(a1 + 48) setRootWidgetConfigurationViewController:v25];
      v26 = *(a1 + 48);
      v27 = [v26 rootWidgetConfigurationViewController];
      [v26 setupChildViewController:v27];
    }

    v28 = *(*(a1 + 64) + 16);

    v28();
  }

  else
  {
    v9 = *(a1 + 40);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = [NSError errorWithDomain:@"WFWidgetConfigurationErrorDomain" code:1000 userInfo:0];
    }

    v29 = v10;
    v30 = getWFWidgetConfigurationLogObject();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = *(a1 + 40);
      v33 = 136315394;
      v34 = "[WFWidgetConfigurationServiceViewController startConfigurationWithRequest:completion:]_block_invoke_2";
      v35 = 2114;
      v36 = v31;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%s Error getting action from request: %{public}@", &v33, 0x16u);
    }

    (*(*(a1 + 64) + 16))();
    v32 = [*(a1 + 48) extensionContext];
    [v32 cancelRequestWithError:*(a1 + 40)];
  }
}

void sub_10001ADF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = getWFWidgetConfigurationLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[WFWidgetConfigurationServiceViewController hostViewControllerProxy]_block_invoke";
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Connection interrupted to widget configuration host process: %{public}@", &v6, 0x16u);
  }

  v5 = [*(a1 + 32) extensionContext];
  [v5 cancelRequestWithError:v3];
}