uint64_t sub_1000015E8()
{
  type metadata accessor for SecureTrackingManager(0);
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(sub_1000043E4()) init];
  sub_100004454();
  v1 = OBJC_IVAR____TtC32TrackingUIServiceWidgetExtension21SecureTrackingManager_secureTrackingControlEnabledNotification;
  v2 = sub_100004444();
  sub_100004404();
  v3 = objc_allocWithZone(v2);
  *(v0 + v1) = sub_100004414();
  v4 = OBJC_IVAR____TtC32TrackingUIServiceWidgetExtension21SecureTrackingManager_secureTrackingControlOnNotification;
  sub_1000043F4();
  v5 = objc_allocWithZone(v2);
  result = sub_100004414();
  *(v0 + v4) = result;
  qword_10000C4F8 = v0;
  return result;
}

uint64_t sub_100001710()
{
  v1 = OBJC_IVAR____TtC32TrackingUIServiceWidgetExtension21SecureTrackingManager_logger;
  v2 = sub_100004464();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for SecureTrackingManager(uint64_t a1)
{
  result = qword_10000C248;
  if (!qword_10000C248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100001828(uint64_t a1)
{
  result = sub_100004464();
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

unint64_t sub_1000018D0()
{
  result = qword_10000C370;
  if (!qword_10000C370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C370);
  }

  return result;
}

unint64_t sub_100001928()
{
  result = qword_10000C378;
  if (!qword_10000C378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C378);
  }

  return result;
}

uint64_t sub_10000197C@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v27 = sub_1000043C4();
  v24 = *(v27 - 8);
  __chkstk_darwin();
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003AA0(&qword_10000C3C8, &qword_100004A60);
  v22 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v21 - v4;
  v29 = sub_100003AA0(&qword_10000C3D0, &qword_100004A68);
  v25 = *(v29 - 8);
  __chkstk_darwin();
  v7 = &v21 - v6;
  v28 = sub_100003AA0(&qword_10000C3D8, &qword_100004A70);
  v26 = *(v28 - 8);
  __chkstk_darwin();
  v23 = &v21 - v8;
  sub_100003AA0(&qword_10000C3E0, &qword_100004A78);
  v9 = sub_1000031B4(&qword_10000C3E8, &qword_100004A80);
  v10 = sub_1000031B4(&qword_10000C3F0, &qword_100004A88);
  v11 = sub_100003C50(&qword_10000C3F8, &qword_10000C3F0, &qword_100004A88, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  v31 = v10;
  v32 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v9;
  v32 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_100003BFC();
  sub_100004574();
  if (qword_10000C200 != -1)
  {
    swift_once();
  }

  sub_1000043B4();
  v13 = sub_100003C50(&qword_10000C408, &qword_10000C3C8, &qword_100004A60, &protocol conformance descriptor for StaticControlConfiguration<A>);
  sub_1000044E4();
  v14 = *(v24 + 8);
  v15 = v27;
  v14(v2, v27);
  (*(v22 + 8))(v5, v3);
  if (qword_10000C208 != -1)
  {
    swift_once();
  }

  sub_1000043B4();
  v31 = v3;
  v32 = v13;
  v16 = swift_getOpaqueTypeConformance2();
  v17 = v23;
  v18 = v29;
  sub_1000044D4();
  v14(v2, v15);
  (*(v25 + 8))(v7, v18);
  v31 = v18;
  v32 = v16;
  swift_getOpaqueTypeConformance2();
  v19 = v28;
  sub_1000044F4();
  return (*(v26 + 8))(v17, v19);
}

uint64_t sub_100001ED4@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_100003AA0(&qword_10000C3F0, &qword_100004A88);
  v20 = *(v3 - 8);
  __chkstk_darwin();
  v5 = v19 - v4;
  v6 = sub_100003AA0(&qword_10000C3E8, &qword_100004A80);
  v21 = *(v6 - 8);
  v22 = v6;
  __chkstk_darwin();
  v8 = v19 - v7;
  v19[1] = *a1;
  if (qword_10000C1D8 != -1)
  {
    swift_once();
  }

  v29 = qword_10000C520;
  v30 = *algn_10000C528;

  v28 = sub_100003764();
  sub_100003AA0(&qword_10000C410, &qword_100004A90);
  v9 = sub_1000031B4(&qword_10000C418, &qword_100004A98);
  v10 = sub_1000031B4(&qword_10000C420, &qword_100004AA0);
  v11 = sub_100003C50(&qword_10000C428, &qword_10000C420, &qword_100004AA0, &protocol conformance descriptor for Label<A, B>);
  v12 = sub_100003C98();
  v24 = v10;
  v25 = &type metadata for String;
  v26 = v11;
  v27 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v9;
  v25 = &type metadata for String;
  v26 = OpaqueTypeConformance2;
  v27 = v12;
  swift_getOpaqueTypeConformance2();
  sub_100003CEC();
  sub_100004564();
  v14 = [objc_opt_self() systemGreenColor];
  sub_100004534();
  v15 = sub_100003C50(&qword_10000C3F8, &qword_10000C3F0, &qword_100004A88, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  sub_1000044A4();

  (*(v20 + 8))(v5, v3);
  if (qword_10000C1C8 != -1)
  {
    swift_once();
  }

  v16 = *(qword_10000C4F8 + OBJC_IVAR____TtC32TrackingUIServiceWidgetExtension21SecureTrackingManager_secureTrackingControlEnabledNotification);
  sub_100004424();

  v24 = v3;
  v25 = v15;
  swift_getOpaqueTypeConformance2();
  v17 = v22;
  sub_1000044B4();
  return (*(v21 + 8))(v8, v17);
}

uint64_t sub_1000022F8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v3 = sub_100003AA0(&qword_10000C420, &qword_100004AA0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v21 - v5;
  v21[0] = sub_100003AA0(&qword_10000C418, &qword_100004A98);
  v7 = *(v21[0] - 8);
  __chkstk_darwin();
  v9 = v21 - v8;
  sub_100004554();
  v10 = a1;
  if (a1)
  {
    if (qword_10000C1E0 != -1)
    {
      swift_once();
    }

    v11 = &qword_10000C530;
  }

  else
  {
    if (qword_10000C1E8 != -1)
    {
      swift_once();
    }

    v11 = &qword_10000C540;
  }

  v12 = *v11;
  v13 = v11[1];

  v22 = v12;
  v23 = v13;
  v14 = sub_100003C50(&qword_10000C428, &qword_10000C420, &qword_100004AA0, &protocol conformance descriptor for Label<A, B>);
  v15 = sub_100003C98();
  sub_100004524();

  (*(v4 + 8))(v6, v3);
  if (v10)
  {
    if (qword_10000C1F0 != -1)
    {
      swift_once();
    }

    v16 = &qword_10000C550;
  }

  else
  {
    if (qword_10000C1F8 != -1)
    {
      swift_once();
    }

    v16 = &qword_10000C560;
  }

  v17 = *v16;
  v18 = v16[1];

  v26 = v17;
  v27 = v18;
  v22 = v3;
  v23 = &type metadata for String;
  v24 = v14;
  v25 = v15;
  swift_getOpaqueTypeConformance2();
  v19 = v21[0];
  sub_100004514();

  return (*(v7 + 8))(v9, v19);
}

uint64_t sub_100002698@<X0>(uint64_t a1@<X8>)
{
  sub_100004484();
  result = sub_100004504();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100002700@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100004544();
  *a1 = result;
  return result;
}

uint64_t sub_100002748@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100003E68();
  *a1 = result & 1;
  a1[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_10000277C(_BYTE *a1)
{
  v3 = sub_100003E68();
  *a1 = v3 & 1;
  a1[1] = HIBYTE(v3) & 1;
  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_1000027F0()
{
  v0 = sub_1000043C4();
  sub_100003B6C(v0, qword_10000C508);
  sub_100003B34(v0, qword_10000C508);
  return sub_1000043B4();
}

uint64_t sub_100002860(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100002880, 0, 0);
}

uint64_t sub_100002880()
{
  if (qword_10000C1C8 != -1)
  {
    swift_once();
  }

  v1 = qword_10000C4F8;
  sub_100004364();
  v2 = *(v1 + OBJC_IVAR____TtC32TrackingUIServiceWidgetExtension21SecureTrackingManager_secureTrackingControlOnNotification);
  sub_100004434();

  sub_100004364();
  v3 = *(v0 + 57);
  v4 = *(v1 + 16);
  *(v0 + 32) = v4;
  v4;
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_1000029B4;

  return DockCoreManager.setTrackingActivity(enabled:)(v3);
}

uint64_t sub_1000029B4()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_100002BF4;
  }

  else
  {

    v3 = sub_100002AD0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100002AD0()
{
  sub_100003AE8();

  v1 = sub_1000045A4();
  v2 = sub_100004594();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 67109120;
    sub_100004364();
    *(v3 + 4) = *(v0 + 58);

    _os_log_impl(&_mh_execute_header, v1, v2, "performing StartTrackingIntent %{BOOL}d", v3, 8u);
  }

  else
  {
  }

  sub_100004344();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100002BF4()
{
  v1 = *(v0 + 8);

  return v1();
}

void *sub_100002C58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100004364();
  *a1 = v3;
  return result;
}

uint64_t (*sub_100002CCC(uint64_t *a1))()
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
  *(v2 + 32) = sub_100004354();
  return sub_100002D40;
}

void sub_100002D40(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100002D90()
{
  result = qword_10000C380;
  if (!qword_10000C380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C380);
  }

  return result;
}

unint64_t sub_100002DE8()
{
  result = qword_10000C388;
  if (!qword_10000C388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C388);
  }

  return result;
}

uint64_t sub_100002EA8@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C1D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000043C4();
  v3 = sub_100003B34(v2, qword_10000C508);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100002F68(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003008;

  return sub_100002860(a1, v4);
}

uint64_t sub_100003008()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000030FC@<X0>(uint64_t *a2@<X8>)
{
  result = sub_100003764();
  *a2 = result;
  return result;
}

uint64_t sub_100003124(uint64_t a1)
{
  v2 = sub_1000018D0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000031B4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_1000031FC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100005050;
  v6._countAndFlagsBits = 0xD000000000000025;
  v6._object = 0x8000000100005000;
  v8._object = 0x8000000100005030;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD00000000000001ALL;
  v2 = sub_1000043A4(v6, v7, v1, v8, 0xD000000000000022, v5);
  v4 = v3;

  qword_10000C520 = v2;
  *algn_10000C528 = v4;
}

void sub_1000032C0()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100004DA0;
  v6._countAndFlagsBits = 0xD000000000000029;
  v6._object = 0x8000000100004D50;
  v8._object = 0x8000000100004D80;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD00000000000001FLL;
  v2 = sub_1000043A4(v6, v7, v1, v8, 0xD00000000000004CLL, v5);
  v4 = v3;

  qword_10000C530 = v2;
  *algn_10000C538 = v4;
}

void sub_100003384()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100004F80;
  v6._countAndFlagsBits = 0xD00000000000002ALL;
  v6._object = 0x8000000100004F30;
  v8._object = 0x8000000100004F60;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD00000000000001FLL;
  v2 = sub_1000043A4(v6, v7, v1, v8, 0xD00000000000004CLL, v5);
  v4 = v3;

  qword_10000C540 = v2;
  *algn_10000C548 = v4;
}

void sub_100003448()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100004E40;
  v6._countAndFlagsBits = 0xD000000000000027;
  v6._object = 0x8000000100004DF0;
  v8._object = 0x8000000100004E20;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD00000000000001DLL;
  v2 = sub_1000043A4(v6, v7, v1, v8, 0xD00000000000004ALL, v5);
  v4 = v3;

  qword_10000C550 = v2;
  *algn_10000C558 = v4;
}

void sub_10000350C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100004EE0;
  v6._countAndFlagsBits = 0xD000000000000028;
  v6._object = 0x8000000100004E90;
  v8._object = 0x8000000100004EC0;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD00000000000001CLL;
  v2 = sub_1000043A4(v6, v7, v1, v8, 0xD00000000000004BLL, v5);
  v4 = v3;

  qword_10000C560 = v2;
  *algn_10000C568 = v4;
}

void sub_1000035D0()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100004CF0;
  v8._countAndFlagsBits = 0x756F72676B636142;
  v8._object = 0xEF65646F4D20646ELL;
  v6._object = 0x8000000100004D30;
  v6._countAndFlagsBits = 0xD00000000000001FLL;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_1000043A4(v6, v7, v1, v8, 0xD000000000000034, v5);
  v4 = v3;

  qword_10000C570 = v2;
  *algn_10000C578 = v4;
}

void sub_1000036A0()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100004CF0;
  v6._object = 0x8000000100004C80;
  v8._countAndFlagsBits = 0xD000000000000035;
  v8._object = 0x8000000100004CB0;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_1000043A4(v6, v7, v1, v8, 0xD000000000000034, v5);
  v4 = v3;

  qword_10000C580 = v2;
  *algn_10000C588 = v4;
}

uint64_t sub_100003764()
{
  v0 = sub_100004394();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v15[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100003AA0(&qword_10000C3A0, &qword_1000049D0);
  __chkstk_darwin();
  v5 = &v15[-v4];
  sub_100003AA0(&qword_10000C3A8, &qword_1000049D8);
  __chkstk_darwin();
  v7 = &v15[-v6];
  sub_100003AA0(&qword_10000C3B0, &qword_1000049E0);
  __chkstk_darwin();
  v9 = &v15[-v8];
  v10 = sub_1000043C4();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  sub_100003AA0(&qword_10000C3B8, &qword_1000049E8);
  sub_1000043B4();
  (*(v11 + 56))(v9, 1, 1, v10);
  v15[15] = 2;
  v12 = sub_100004584();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v13 = sub_100004334();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  (*(v1 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v0);
  return sub_100004384();
}

uint64_t sub_100003AA0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100003AE8()
{
  result = qword_10000C3C0;
  if (!qword_10000C3C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000C3C0);
  }

  return result;
}

uint64_t sub_100003B34(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100003B6C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_100003BFC()
{
  result = qword_10000C400;
  if (!qword_10000C400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C400);
  }

  return result;
}

uint64_t sub_100003C50(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000031B4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100003C98()
{
  result = qword_10000C430;
  if (!qword_10000C430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C430);
  }

  return result;
}

unint64_t sub_100003CEC()
{
  result = qword_10000C438;
  if (!qword_10000C438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C438);
  }

  return result;
}

uint64_t sub_100003D50()
{
  sub_1000031B4(&qword_10000C3D8, &qword_100004A70);
  sub_1000031B4(&qword_10000C3D0, &qword_100004A68);
  sub_1000031B4(&qword_10000C3C8, &qword_100004A60);
  sub_100003C50(&qword_10000C408, &qword_10000C3C8, &qword_100004A60, &protocol conformance descriptor for StaticControlConfiguration<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100003E68()
{
  if (qword_10000C1C8 != -1)
  {
    swift_once();
  }

  v0 = qword_10000C4F8;
  v1 = *(qword_10000C4F8 + OBJC_IVAR____TtC32TrackingUIServiceWidgetExtension21SecureTrackingManager_secureTrackingControlOnNotification);
  v2 = sub_100004424();

  v3 = *(v0 + OBJC_IVAR____TtC32TrackingUIServiceWidgetExtension21SecureTrackingManager_secureTrackingControlEnabledNotification);
  v4 = sub_100004424();

  sub_100003AE8();
  v5 = sub_1000045A4();
  v6 = sub_100004594();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109376;
    *(v7 + 4) = v4 != 0;
    *(v7 + 8) = 1024;
    *(v7 + 10) = v2 != 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "querying StartTrackingIntent isEnabled %{BOOL}d isOn %{BOOL}d", v7, 0xEu);
  }

  return (v2 != 0) | ((v4 == 0) << 8);
}

uint64_t sub_100003FC8()
{
  v0 = sub_100003AA0(&qword_10000C448, &unk_100004B60);
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v5 - v2;
  sub_100004174();
  sub_1000044C4();
  sub_1000041C8();
  sub_100004494();
  return (*(v1 + 8))(v3, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000040F4();
  sub_100004474();
  return 0;
}

unint64_t sub_1000040F4()
{
  result = qword_10000C440;
  if (!qword_10000C440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C440);
  }

  return result;
}

unint64_t sub_100004174()
{
  result = qword_10000C450;
  if (!qword_10000C450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C450);
  }

  return result;
}

unint64_t sub_1000041C8()
{
  result = qword_10000C458;
  if (!qword_10000C458)
  {
    sub_1000031B4(&qword_10000C448, &unk_100004B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C458);
  }

  return result;
}

uint64_t sub_10000422C()
{
  sub_1000031B4(&qword_10000C448, &unk_100004B60);
  sub_1000041C8();
  return swift_getOpaqueTypeConformance2();
}