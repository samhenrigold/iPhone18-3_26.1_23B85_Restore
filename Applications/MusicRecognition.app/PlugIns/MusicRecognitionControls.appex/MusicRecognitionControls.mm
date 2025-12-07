uint64_t sub_100001570()
{
  v0 = sub_100004344();
  sub_1000018D8(v0, qword_10000C380);
  sub_10000193C(v0, qword_10000C380);
  return sub_100004334();
}

uint64_t sub_1000015E4()
{
  v0 = sub_100001790(&qword_10000C118, &unk_1000048C0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  sub_1000017D8();
  sub_1000043F4();
  sub_10000182C();
  sub_1000043C4();
  return (*(v1 + 8))(v3, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001710();
  sub_100004354();
  return 0;
}

unint64_t sub_100001710()
{
  result = qword_10000C110;
  if (!qword_10000C110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C110);
  }

  return result;
}

uint64_t sub_100001790(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000017D8()
{
  result = qword_10000C120;
  if (!qword_10000C120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C120);
  }

  return result;
}

unint64_t sub_10000182C()
{
  result = qword_10000C128;
  if (!qword_10000C128)
  {
    sub_100001890(&qword_10000C118, &unk_1000048C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C128);
  }

  return result;
}

uint64_t sub_100001890(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t *sub_1000018D8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10000193C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100001974()
{
  sub_100001890(&qword_10000C118, &unk_1000048C0);
  sub_10000182C();
  return swift_getOpaqueTypeConformance2();
}

void sub_1000019D8()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_100004584();
  v2 = [v0 initWithSuiteName:v1];

  qword_10000C130 = v2;
}

unint64_t sub_100001A4C()
{
  result = qword_10000C1E0;
  if (!qword_10000C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1E0);
  }

  return result;
}

unint64_t sub_100001AA4()
{
  result = qword_10000C1E8;
  if (!qword_10000C1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1E8);
  }

  return result;
}

uint64_t sub_100001AF8()
{
  result = sub_1000043A4();
  qword_10000C138 = result;
  unk_10000C140 = v1;
  byte_10000C148 = v2 & 1;
  qword_10000C150 = v3;
  return result;
}

uint64_t sub_100001B40()
{
  result = sub_1000043A4();
  qword_10000C158 = result;
  unk_10000C160 = v1;
  byte_10000C168 = v2 & 1;
  qword_10000C170 = v3;
  return result;
}

uint64_t sub_100001B88()
{
  result = sub_1000043A4();
  qword_10000C178 = result;
  unk_10000C180 = v1;
  byte_10000C188 = v2 & 1;
  qword_10000C190 = v3;
  return result;
}

uint64_t sub_100001BD0()
{
  result = sub_1000043A4();
  qword_10000C198 = result;
  unk_10000C1A0 = v1;
  byte_10000C1A8 = v2 & 1;
  qword_10000C1B0 = v3;
  return result;
}

uint64_t sub_100001C18()
{
  result = sub_1000043A4();
  qword_10000C1B8 = result;
  unk_10000C1C0 = v1;
  byte_10000C1C8 = v2 & 1;
  qword_10000C1D0 = v3;
  return result;
}

Class sub_100001C60()
{
  sub_100003F20(0, &qword_10000C2D8, UIColor_ptr);
  result = sub_1000045B4(0.0, 0.53333, 1.0, 1.0).super.isa;
  qword_10000C1D8 = result;
  return result;
}

uint64_t sub_100001CBC@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_100004314();
  v29 = *(v1 - 8);
  v30 = v1;
  __chkstk_darwin(v1);
  v3 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100001790(&qword_10000C238, &qword_100004AE8);
  v25 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v24 - v5;
  v7 = sub_100001790(&qword_10000C240, &qword_100004AF0);
  v26 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v24 - v8;
  v10 = sub_100001790(&qword_10000C248, &qword_100004AF8);
  v11 = *(v10 - 8);
  v27 = v10;
  v28 = v11;
  __chkstk_darwin(v10);
  v13 = v24 - v12;
  v24[2] = "N_CONTROLS_TITLE";
  v24[1] = sub_100001790(&qword_10000C250, &qword_100004B00);
  v14 = sub_100001890(&qword_10000C258, &qword_100004B08);
  v15 = sub_100001890(&qword_10000C260, &qword_100004B10);
  v16 = sub_100003E84(&qword_10000C268, &qword_10000C260, &qword_100004B10, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  v32 = v15;
  v33 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v14;
  v33 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_100004574();
  sub_100004304();
  v18 = sub_100003E84(&qword_10000C270, &qword_10000C238, &qword_100004AE8, &protocol conformance descriptor for StaticControlConfiguration<A>);
  sub_100004414();
  v19 = v30;
  v20 = *(v29 + 8);
  v20(v3, v30);
  (*(v25 + 8))(v6, v4);
  sub_100004304();
  v32 = v4;
  v33 = v18;
  v21 = swift_getOpaqueTypeConformance2();
  sub_100004404();
  v20(v3, v19);
  (*(v26 + 8))(v9, v7);
  v32 = v7;
  v33 = v21;
  swift_getOpaqueTypeConformance2();
  v22 = v27;
  sub_100004424();
  return (*(v28 + 8))(v13, v22);
}

uint64_t sub_10000218C@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = sub_100001790(&qword_10000C260, &qword_100004B10);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v22 - v3;
  v5 = sub_100001790(&qword_10000C258, &qword_100004B08);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v22 - v7;
  v9 = sub_1000043B4();
  v24 = v10;
  v25 = v9;
  v22[1] = v11;
  v23 = v12;
  if (qword_10000C0B8 != -1)
  {
    swift_once();
  }

  v13 = qword_10000C130;
  if (qword_10000C130)
  {
    v14 = sub_100004584();
    [v13 BOOLForKey:v14];
  }

  v29 = sub_100003930();
  sub_100001790(&qword_10000C278, &qword_100004B18);
  v15 = sub_100001890(&qword_10000C280, &qword_100004B20);
  v16 = sub_100001890(&qword_10000C288, &qword_100004B28);
  v17 = sub_100003CE4();
  v27 = v16;
  v28 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v15;
  v28 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_100003ECC();
  sub_100004564();
  if (qword_10000C0E8 != -1)
  {
    swift_once();
  }

  v19 = qword_10000C1D8;
  sub_100004474();
  v20 = sub_100003E84(&qword_10000C268, &qword_10000C260, &qword_100004B10, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  sub_1000043E4();

  (*(v2 + 8))(v4, v1);
  v27 = v1;
  v28 = v20;
  swift_getOpaqueTypeConformance2();
  sub_1000043D4();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10000258C@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v36 = a1;
  v42 = a2;
  v38 = sub_100004504();
  v3 = *(v38 - 8);
  __chkstk_darwin(v38);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000044E4();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v35 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v35 - v11;
  __chkstk_darwin(v10);
  v14 = &v35 - v13;
  v37 = sub_100001790(&qword_10000C288, &qword_100004B28);
  __chkstk_darwin(v37);
  v16 = &v35 - v15;
  v17 = sub_100001790(&qword_10000C280, &qword_100004B20);
  v40 = *(v17 - 8);
  v41 = v17;
  __chkstk_darwin(v17);
  v39 = &v35 - v18;
  v43 = v2;
  sub_100004494();
  sub_1000044D4();
  sub_1000044C4();
  v19 = *(v7 + 8);
  v19(v14, v6);
  sub_1000044B4();
  v19(v12, v6);
  v20 = v5;
  sub_1000044F4();
  v21 = &v16[*(sub_100001790(&qword_10000C2A0, &qword_100004B30) + 36)];
  v22 = sub_100004434();
  v23 = v5;
  v24 = v38;
  (*(v3 + 16))(&v21[*(v22 + 20)], v23, v38);
  sub_100003F70(&qword_10000C2E0, &type metadata accessor for BreatheSymbolEffect, &protocol conformance descriptor for BreatheSymbolEffect);
  v25 = v35;
  sub_1000044A4();
  v26 = v20;
  v27 = v16;
  (*(v3 + 8))(v26, v24);
  v28 = v36;
  v19(v25, v6);
  v29 = v37;
  v21[*(v22 + 24)] = 1;
  v30 = &v16[*(v29 + 36)];
  sub_100001790(&qword_10000C2C8, &qword_100004B40);
  sub_100004364();
  *v30 = swift_getKeyPath();
  if ((v28 & 1) == 0)
  {
    if (qword_10000C0D0 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  if (qword_10000C0C8 != -1)
  {
LABEL_10:
    swift_once();
  }

LABEL_5:
  v31 = v39;

  v32 = sub_100003CE4();
  sub_100004464();

  sub_100003FE0(v27);
  if (v28)
  {
    if (qword_10000C0D8 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (qword_10000C0E0 != -1)
  {
LABEL_12:
    swift_once();
  }

LABEL_9:

  v44 = v29;
  v45 = v32;
  swift_getOpaqueTypeConformance2();
  v33 = v41;
  sub_100004454();

  return (*(v40 + 8))(v31, v33);
}

uint64_t sub_100002B98@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    if (qword_10000C0C0 != -1)
    {
      swift_once();
    }

    result = sub_100004444();
  }

  else
  {
    result = 0;
    v5 = 0;
    v6 = &_swiftEmptyArrayStorage;
    v4 = 0xE000000000000000;
  }

  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_100002C80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100004484();
  *a1 = result;
  return result;
}

uint64_t sub_100002CC8()
{
  v0 = sub_100004314();
  sub_1000018D8(v0, qword_10000C398);
  sub_10000193C(v0, qword_10000C398);
  return sub_100004304();
}

uint64_t sub_100002D2C()
{
  v0 = sub_1000042F4();
  sub_1000018D8(v0, qword_10000C3B0);
  v1 = sub_10000193C(v0, qword_10000C3B0);
  v2 = enum case for IntentAuthenticationPolicy.alwaysAllowed(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_100002DB4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100002DD4, 0, 0);
}

uint64_t sub_100002DD4()
{
  sub_1000042B4();
  if (*(v0 + 40) == 1)
  {
    if (qword_10000C0B0 != -1)
    {
      swift_once();
    }

    v1 = sub_100004344();
    sub_10000193C(v1, qword_10000C380);
    v2 = sub_100004324();
    v3 = sub_1000045A4();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Start matching", v4, 2u);
    }

    if (qword_10000C108 != -1)
    {
      swift_once();
    }

    v5 = swift_task_alloc();
    *(v0 + 32) = v5;
    *v5 = v0;
    v5[1] = sub_10000311C;

    return SHManagedSession.result()();
  }

  else
  {
    if (qword_10000C0B0 != -1)
    {
      swift_once();
    }

    v6 = sub_100004344();
    sub_10000193C(v6, qword_10000C380);
    v7 = sub_100004324();
    v8 = sub_1000045A4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Stop matching", v9, 2u);
    }

    if (qword_10000C108 != -1)
    {
      swift_once();
    }

    sub_100004524();
    sub_100003F20(0, &qword_10000C230, NSDistributedNotificationCenter_ptr);
    v10 = [swift_getObjCClassFromMetadata() defaultCenter];
    if (qword_10000C100 != -1)
    {
      swift_once();
    }

    [v10 postNotificationName:qword_10000C3C8 object:0];

    sub_100004294();
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_10000311C(void *a1, void *a2, uint64_t a3)
{
  v3 = a3;

  sub_100003C6C(a1, a2, v3);

  return _swift_task_switch(sub_10000323C, 0, 0);
}

uint64_t sub_10000323C()
{
  sub_100004294();
  v1 = *(v0 + 8);

  return v1();
}

void *sub_1000032A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000042B4();
  *a1 = v3;
  return result;
}

uint64_t (*sub_100003314(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000042A4();
  return sub_100003388;
}

void sub_100003388(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_1000033D8()
{
  result = qword_10000C1F0;
  if (!qword_10000C1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1F0);
  }

  return result;
}

unint64_t sub_100003430()
{
  result = qword_10000C1F8;
  if (!qword_10000C1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1F8);
  }

  return result;
}

uint64_t sub_100003568@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_10000193C(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_10000361C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000036BC;

  return sub_100002DB4(a1, v4);
}

uint64_t sub_1000036BC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000037B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100003930();
  *a1 = result;
  return result;
}

uint64_t sub_1000037D8(uint64_t a1)
{
  v2 = sub_100001A4C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100003868(uint64_t a1)
{
  v2 = sub_100004374();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_100004394();
}

uint64_t sub_100003930()
{
  v0 = sub_1000042E4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_100001790(&qword_10000C210, &qword_100004A60);
  __chkstk_darwin(v4 - 8);
  v6 = &v18[-v5];
  v7 = sub_100001790(&qword_10000C218, &qword_100004A68);
  __chkstk_darwin(v7 - 8);
  v9 = &v18[-v8];
  v10 = sub_100001790(&qword_10000C220, &qword_100004A70);
  __chkstk_darwin(v10 - 8);
  v12 = &v18[-v11];
  v13 = sub_100004314();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  sub_100001790(&qword_10000C228, &qword_100004A78);
  sub_100004304();
  (*(v14 + 56))(v12, 1, 1, v13);
  v18[15] = 2;
  v15 = sub_100004594();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  v16 = sub_100004284();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  (*(v1 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v0);
  return sub_1000042D4();
}

void sub_100003C6C(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 >= 2u)
  {
    if (a3 != 2)
    {
      return;
    }

    a1 = a2;
  }
}

unint64_t sub_100003CE4()
{
  result = qword_10000C290;
  if (!qword_10000C290)
  {
    sub_100001890(&qword_10000C288, &qword_100004B28);
    sub_100003D9C();
    sub_100003E84(&qword_10000C2C0, &qword_10000C2C8, &qword_100004B40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C290);
  }

  return result;
}

unint64_t sub_100003D9C()
{
  result = qword_10000C298;
  if (!qword_10000C298)
  {
    sub_100001890(&qword_10000C2A0, &qword_100004B30);
    sub_100003E84(&qword_10000C2A8, &qword_10000C2B0, &qword_100004B38, &protocol conformance descriptor for Label<A, B>);
    sub_100003F70(&qword_10000C2B8, &type metadata accessor for _IndefiniteSymbolEffectModifier, &protocol conformance descriptor for _IndefiniteSymbolEffectModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C298);
  }

  return result;
}

uint64_t sub_100003E84(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100001890(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100003ECC()
{
  result = qword_10000C2D0;
  if (!qword_10000C2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C2D0);
  }

  return result;
}

uint64_t sub_100003F20(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100003F70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100003FE0(uint64_t a1)
{
  v2 = sub_100001790(&qword_10000C288, &qword_100004B28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100004048()
{
  sub_100001890(&qword_10000C248, &qword_100004AF8);
  sub_100001890(&qword_10000C240, &qword_100004AF0);
  sub_100001890(&qword_10000C238, &qword_100004AE8);
  sub_100003E84(&qword_10000C270, &qword_10000C238, &qword_100004AE8, &protocol conformance descriptor for StaticControlConfiguration<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

NSString sub_100004160()
{
  result = sub_100004584();
  qword_10000C3C8 = result;
  return result;
}

uint64_t sub_100004198()
{
  sub_100004554();
  swift_allocObject();
  v0 = sub_100004544();

  sub_100004514();

  qword_10000C3D0 = v0;
  return result;
}