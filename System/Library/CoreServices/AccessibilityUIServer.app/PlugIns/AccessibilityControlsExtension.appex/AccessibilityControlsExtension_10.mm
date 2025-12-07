uint64_t sub_10014D134()
{
  v0 = sub_10000321C(&qword_100455948, &qword_1003529B8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A720 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10014DD44();
  sub_10002B6E4(&qword_100455950, &qword_100455948, &qword_1003529B8, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_10014D2A8(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

void (*sub_10014D31C(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

unint64_t sub_10014D3B8()
{
  result = qword_10044A028;
  if (!qword_10044A028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A028);
  }

  return result;
}

unint64_t sub_10014D410()
{
  result = qword_10044A030;
  if (!qword_10044A030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A030);
  }

  return result;
}

uint64_t sub_10014D50C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10014C830(a1, v5, v4);
}

uint64_t sub_10014D5B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002AACB0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10014D600()
{
  result = qword_10044A038;
  if (!qword_10044A038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A038);
  }

  return result;
}

uint64_t sub_10014D678()
{
  Type = MADisplayFilterPrefGetType();
  if ((Type - 1) >= 8)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0x300000002000104uLL >> (8 * (Type - 1));
  }

  **(v0 + 16) = v2;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10014D728()
{
  sub_10001EBD0(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10014D78C(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10014D81C, 0, 0);
}

uint64_t sub_10014D81C()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044A020, &qword_10030B478);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455918, &qword_100455920, &qword_100352988, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  sub_1000168A0();
  v2 = sub_1002D8890();
  *v1 = 0xD00000000000003ALL;
  v1[1] = 0x8000000100360570;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_10014D978()
{
  result = qword_10044A040;
  if (!qword_10044A040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A040);
  }

  return result;
}

uint64_t sub_10014D9CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10014DF9C();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10014DA80()
{
  result = qword_10044A048;
  if (!qword_10044A048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A048);
  }

  return result;
}

unint64_t sub_10014DAD8()
{
  result = qword_10044A050;
  if (!qword_10044A050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A050);
  }

  return result;
}

unint64_t sub_10014DB30()
{
  result = qword_10044A058;
  if (!qword_10044A058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A058);
  }

  return result;
}

uint64_t sub_10014DB84(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10014DF9C();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10014DC38(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10014DF9C();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10014DCEC()
{
  result = qword_10044A060;
  if (!qword_10044A060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A060);
  }

  return result;
}

unint64_t sub_10014DD44()
{
  result = qword_10044A068;
  if (!qword_10044A068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A068);
  }

  return result;
}

uint64_t sub_10014DDDC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10014D978();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10014DE94()
{
  result = qword_10044A080;
  if (!qword_10044A080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A080);
  }

  return result;
}

unint64_t sub_10014DEEC()
{
  result = qword_10044A088;
  if (!qword_10044A088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A088);
  }

  return result;
}

unint64_t sub_10014DF44()
{
  result = qword_10044A090;
  if (!qword_10044A090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A090);
  }

  return result;
}

unint64_t sub_10014DF9C()
{
  result = qword_10044A098;
  if (!qword_10044A098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A098);
  }

  return result;
}

uint64_t sub_10014DFF0()
{
  v0 = qword_100446D78;

  return v0;
}

unint64_t sub_10014E02C()
{
  result = qword_10044A0A0;
  if (!qword_10044A0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A0A0);
  }

  return result;
}

uint64_t sub_10014E080(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100455908, &qword_100352968);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100455910, &qword_100352970);
  __chkstk_darwin(v5);
  sub_10014DB30();
  sub_1002D8800();
  v8._object = 0x8000000100373AF0;
  v8._countAndFlagsBits = 0xD000000000000037;
  sub_1002D87F0(v8);
  (*(v2 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v1);
  sub_1002D87E0();
  (*(v2 + 8))(v4, v1);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_1002D87F0(v9);
  return sub_1002D8810();
}

unint64_t sub_10014E248()
{
  result = qword_10044A0A8;
  if (!qword_10044A0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A0A8);
  }

  return result;
}

unint64_t sub_10014E2A0()
{
  result = qword_10044A0B0;
  if (!qword_10044A0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A0B0);
  }

  return result;
}

unint64_t sub_10014E2F8()
{
  result = qword_10044A0B8;
  if (!qword_10044A0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A0B8);
  }

  return result;
}

uint64_t sub_10014E34C(uint64_t a1)
{
  sub_1002D5C74();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10014E434(uint64_t a1)
{
  v2 = sub_10014DB30();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10014E484()
{
  result = qword_10044A0D0;
  if (!qword_10044A0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A0D0);
  }

  return result;
}

uint64_t sub_10014E4DC(uint64_t a1)
{
  v2 = sub_10014E2F8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10014E52C()
{
  result = qword_10044A0D8;
  if (!qword_10044A0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A0D8);
  }

  return result;
}

uint64_t sub_10014E5EC@<X0>(uint64_t a1@<X8>)
{
  v17[0] = a1;
  v1 = sub_1002D8990();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1002D8900();
  __chkstk_darwin(v2 - 8);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1002D8CF0();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  __chkstk_darwin(v6 - 8);
  v8 = v17 - v7;
  v9 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v9 - 8);
  v11 = v17 - v10;
  v12 = sub_1002D8910();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  __chkstk_darwin(v14);
  sub_1002D88F0();
  sub_1002D88F0();
  (*(v13 + 56))(v11, 0, 1, v12);
  sub_1002D8690();
  v15 = sub_1002D86B0();
  (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
  sub_1002D8CE0();
  sub_1000B4F14(v4);
  sub_1002D8980();
  sub_1002D8920();
  return sub_1002D86D0();
}

uint64_t sub_10014E964()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D720);
  sub_10001EDB8(v0, qword_10051D720);
  return sub_1002D88F0();
}

uint64_t sub_10014E9C8()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D738);
  v1 = sub_10001EDB8(v0, qword_10051D738);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10014EA88()
{
  result = swift_getKeyPath();
  qword_10051D750 = result;
  return result;
}

uint64_t sub_10014EAB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_1004558E0, &qword_100352928);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_1004558E8, &qword_100352930);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10014EC90, 0, 0);
}

uint64_t sub_10014EC90()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_10014FEE8();
  *v2 = v0;
  v2[1] = sub_10014ED74;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6EE4, 0, &type metadata for AccessibilityOnDeviceEyeTrackingEnabledEntity, v3);
}

uint64_t sub_10014ED74()
{

  return _swift_task_switch(sub_10014EE70, 0, 0);
}

uint64_t sub_10014EE70()
{
  sub_1002D85B0();
  *(v0 + 88) = *(v0 + 64);
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  *(v0 + 272) = v1;
  *(v0 + 280) = v2;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  sub_1002D85B0();
  *(v0 + 313) = *(v0 + 312);
  if (qword_10043A740 != -1)
  {
    swift_once();
  }

  v3 = qword_10051D750;
  *(v0 + 288) = qword_10051D750;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_1004558C8, &qword_1004558D0, &qword_100352910, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_10014EFD4;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_10014EFD4()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_10014F144;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10014F144()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[30];
  v11 = v0[32];
  v12 = v0[28];
  v14 = v0[27];
  v15 = v0[26];
  v4 = v0[23];
  v5 = v0[24];
  sub_1002D85B0();
  v6 = v0[15];
  v13 = v0[16];
  v0[17] = v0[14];
  v0[18] = v6;
  v0[19] = v13;
  v7 = sub_1002D8820();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = sub_1002D8850();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_10014E52C();
  sub_1001500FC();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10014F3BC()
{
  v0 = sub_10000321C(&qword_1004558F0, &qword_100352938);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A740 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001500FC();
  sub_10002B6E4(&qword_1004558F8, &qword_1004558F0, &qword_100352938, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_10014F530(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

void (*sub_10014F5A4(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

unint64_t sub_10014F640()
{
  result = qword_10044A0F0;
  if (!qword_10044A0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A0F0);
  }

  return result;
}

unint64_t sub_10014F698()
{
  result = qword_10044A0F8;
  if (!qword_10044A0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A0F8);
  }

  return result;
}

uint64_t sub_10014F794(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10014EAB0(a1, v5, v4);
}

uint64_t sub_10014F840@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002AB0B4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10014F888()
{
  result = qword_10044A100;
  if (!qword_10044A100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A100);
  }

  return result;
}

unint64_t sub_10014F8E0()
{
  result = qword_10044A108;
  if (!qword_10044A108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A108);
  }

  return result;
}

uint64_t sub_10014F954()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 assistiveTouchMouseOnDeviceEyeTrackingEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10014FA4C()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  if (*(v0 + 16) == 1)
  {
    v1 = [objc_opt_self() sharedInstance];
    [v1 setAssistiveTouchMouseOnDeviceEyeTrackingEnabled:1];
  }

  else
  {
    v2 = [objc_opt_self() server];
    if (!v2)
    {
      goto LABEL_8;
    }

    v1 = v2;
    [v2 showAlert:26 withHandler:0];
  }

LABEL_8:
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10014FB5C(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10014FBEC, 0, 0);
}

uint64_t sub_10014FBEC()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044A0E8, qword_10030BAB0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004558C8, &qword_1004558D0, &qword_100352910, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000037;
  v1[1] = 0x800000010035F4D0;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_10014FD30()
{
  result = qword_10044A110;
  if (!qword_10044A110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A110);
  }

  return result;
}

uint64_t sub_10014FD84(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100150354();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10014FE38()
{
  result = qword_10044A118;
  if (!qword_10044A118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A118);
  }

  return result;
}

unint64_t sub_10014FE90()
{
  result = qword_10044A120;
  if (!qword_10044A120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A120);
  }

  return result;
}

unint64_t sub_10014FEE8()
{
  result = qword_10044A128;
  if (!qword_10044A128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A128);
  }

  return result;
}

uint64_t sub_10014FF3C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100150354();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10014FFF0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100150354();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1001500A4()
{
  result = qword_10044A130;
  if (!qword_10044A130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A130);
  }

  return result;
}

unint64_t sub_1001500FC()
{
  result = qword_10044A138;
  if (!qword_10044A138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A138);
  }

  return result;
}

uint64_t sub_100150194(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10014FD30();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10015024C()
{
  result = qword_10044A150;
  if (!qword_10044A150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A150);
  }

  return result;
}

unint64_t sub_1001502A4()
{
  result = qword_10044A158;
  if (!qword_10044A158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A158);
  }

  return result;
}

unint64_t sub_1001502FC()
{
  result = qword_10044A160;
  if (!qword_10044A160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A160);
  }

  return result;
}

unint64_t sub_100150354()
{
  result = qword_10044A168;
  if (!qword_10044A168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A168);
  }

  return result;
}

uint64_t sub_1001503A8()
{
  v0 = qword_100446D88;

  return v0;
}

unint64_t sub_1001503E4()
{
  result = qword_10044A170;
  if (!qword_10044A170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A170);
  }

  return result;
}

uint64_t sub_100150438(uint64_t a1)
{
  v1 = sub_10000321C(&qword_1004558B8, &qword_1003528F0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_1004558C0, &qword_1003528F8);
  __chkstk_darwin(v5);
  sub_10014FEE8();
  sub_1002D8800();
  v8._object = 0x8000000100373AF0;
  v8._countAndFlagsBits = 0xD000000000000037;
  sub_1002D87F0(v8);
  (*(v2 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v1);
  sub_1002D87E0();
  (*(v2 + 8))(v4, v1);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_1002D87F0(v9);
  return sub_1002D8810();
}

unint64_t sub_100150600()
{
  result = qword_10044A178;
  if (!qword_10044A178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A178);
  }

  return result;
}

unint64_t sub_100150658()
{
  result = qword_10044A180;
  if (!qword_10044A180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A180);
  }

  return result;
}

unint64_t sub_1001506B0()
{
  result = qword_10044A188;
  if (!qword_10044A188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A188);
  }

  return result;
}

uint64_t sub_100150704(uint64_t a1)
{
  sub_1002D5C20();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1001507EC(uint64_t a1)
{
  v2 = sub_10014FEE8();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10015083C()
{
  result = qword_10044A1A0;
  if (!qword_10044A1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A1A0);
  }

  return result;
}

uint64_t sub_100150894(uint64_t a1)
{
  v2 = sub_1001506B0();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001508E4()
{
  result = qword_10044A1A8;
  if (!qword_10044A1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A1A8);
  }

  return result;
}

uint64_t sub_10015097C()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051D758);
  sub_10001EDB8(v5, qword_10051D758);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_100150AEC@<X0>(uint64_t a1@<X8>)
{
  v17[0] = a1;
  v1 = sub_1002D8990();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1002D8900();
  __chkstk_darwin(v2 - 8);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1002D8CF0();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  __chkstk_darwin(v6 - 8);
  v8 = v17 - v7;
  v9 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v9 - 8);
  v11 = v17 - v10;
  v12 = sub_1002D8910();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  __chkstk_darwin(v14);
  sub_1002D88F0();
  sub_1002D88F0();
  (*(v13 + 56))(v11, 0, 1, v12);
  sub_1002D8690();
  v15 = sub_1002D86B0();
  (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
  sub_1002D8CE0();
  sub_1000B4F14(v4);
  sub_1002D8980();
  sub_1002D8920();
  return sub_1002D86D0();
}

uint64_t sub_100150E5C()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D770);
  sub_10001EDB8(v0, qword_10051D770);
  return sub_1002D88F0();
}

uint64_t sub_100150EC0()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D788);
  v1 = sub_10001EDB8(v0, qword_10051D788);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100150F80()
{
  result = swift_getKeyPath();
  qword_10051D7A0 = result;
  return result;
}

uint64_t sub_100150FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100455890, &qword_1003528B0);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100455898, &qword_1003528B8);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100151188, 0, 0);
}

uint64_t sub_100151188()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1001522D0();
  *v2 = v0;
  v2[1] = sub_10015126C;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6EE8, 0, &type metadata for AccessibilityHapticOnSuccessfulAuthenticationForFaceIDEnabledEntity, v3);
}

uint64_t sub_10015126C()
{

  return _swift_task_switch(sub_100151368, 0, 0);
}

uint64_t sub_100151368()
{
  sub_1002D85B0();
  *(v0 + 88) = *(v0 + 64);
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  *(v0 + 272) = v1;
  *(v0 + 280) = v2;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  sub_1002D85B0();
  *(v0 + 313) = *(v0 + 312);
  if (qword_10043A760 != -1)
  {
    swift_once();
  }

  v3 = qword_10051D7A0;
  *(v0 + 288) = qword_10051D7A0;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100455878, &qword_100455880, &qword_100352898, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1001514CC;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1001514CC()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_10015163C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10015163C()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[30];
  v11 = v0[32];
  v12 = v0[28];
  v14 = v0[27];
  v15 = v0[26];
  v4 = v0[23];
  v5 = v0[24];
  sub_1002D85B0();
  v6 = v0[15];
  v13 = v0[16];
  v0[17] = v0[14];
  v0[18] = v6;
  v0[19] = v13;
  v7 = sub_1002D8820();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = sub_1002D8850();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_1001508E4();
  sub_1001524E4();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001518B4()
{
  v0 = sub_10000321C(&qword_1004558A0, &qword_1003528C0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A760 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001524E4();
  sub_10002B6E4(&qword_1004558A8, &qword_1004558A0, &qword_1003528C0, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_100151A28(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

void (*sub_100151A9C(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

unint64_t sub_100151B38()
{
  result = qword_10044A1C0;
  if (!qword_10044A1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A1C0);
  }

  return result;
}

unint64_t sub_100151B90()
{
  result = qword_10044A1C8;
  if (!qword_10044A1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A1C8);
  }

  return result;
}

uint64_t sub_100151C8C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100150FA8(a1, v5, v4);
}

uint64_t sub_100151D38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002AB51C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100151D80()
{
  result = qword_10044A1D0;
  if (!qword_10044A1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A1D0);
  }

  return result;
}

unint64_t sub_100151DD8()
{
  result = qword_10044A1D8;
  if (!qword_10044A1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A1D8);
  }

  return result;
}

uint64_t sub_100151E4C()
{
  v1 = *(v0 + 16);
  *v1 = _AXSPearlAuthenticationHapticsEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100151EE0()
{
  _AXSSetPearlAuthenticationHapticsEnabled();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100151F44(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100151FD4, 0, 0);
}

uint64_t sub_100151FD4()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044A1B8, qword_10030C0E8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455878, &qword_100455880, &qword_100352898, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD00000000000001ALL;
  v1[1] = 0x800000010035F050;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_100152118()
{
  result = qword_10044A1E0;
  if (!qword_10044A1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A1E0);
  }

  return result;
}

uint64_t sub_10015216C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10015273C();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100152220()
{
  result = qword_10044A1E8;
  if (!qword_10044A1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A1E8);
  }

  return result;
}

unint64_t sub_100152278()
{
  result = qword_10044A1F0;
  if (!qword_10044A1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A1F0);
  }

  return result;
}

unint64_t sub_1001522D0()
{
  result = qword_10044A1F8;
  if (!qword_10044A1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A1F8);
  }

  return result;
}

uint64_t sub_100152324(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10015273C();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1001523D8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10015273C();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10015248C()
{
  result = qword_10044A200;
  if (!qword_10044A200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A200);
  }

  return result;
}

unint64_t sub_1001524E4()
{
  result = qword_10044A208;
  if (!qword_10044A208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A208);
  }

  return result;
}

uint64_t sub_10015257C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100152118();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100152634()
{
  result = qword_10044A220;
  if (!qword_10044A220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A220);
  }

  return result;
}

unint64_t sub_10015268C()
{
  result = qword_10044A228;
  if (!qword_10044A228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A228);
  }

  return result;
}

unint64_t sub_1001526E4()
{
  result = qword_10044A230;
  if (!qword_10044A230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A230);
  }

  return result;
}

unint64_t sub_10015273C()
{
  result = qword_10044A238;
  if (!qword_10044A238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A238);
  }

  return result;
}

uint64_t sub_100152790()
{
  v0 = qword_100446D98;

  return v0;
}

unint64_t sub_1001527CC()
{
  result = qword_10044A240;
  if (!qword_10044A240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A240);
  }

  return result;
}

uint64_t sub_100152820(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100455868, &qword_100352878);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100455870, &qword_100352880);
  __chkstk_darwin(v5);
  sub_1001522D0();
  sub_1002D8800();
  v8._object = 0x8000000100373AF0;
  v8._countAndFlagsBits = 0xD000000000000037;
  sub_1002D87F0(v8);
  (*(v2 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v1);
  sub_1002D87E0();
  (*(v2 + 8))(v4, v1);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_1002D87F0(v9);
  return sub_1002D8810();
}

unint64_t sub_1001529E8()
{
  result = qword_10044A248;
  if (!qword_10044A248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A248);
  }

  return result;
}

unint64_t sub_100152A40()
{
  result = qword_10044A250;
  if (!qword_10044A250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A250);
  }

  return result;
}

unint64_t sub_100152A98()
{
  result = qword_10044A258;
  if (!qword_10044A258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A258);
  }

  return result;
}

uint64_t sub_100152AEC(uint64_t a1)
{
  sub_1002D5BCC();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100152BD4(uint64_t a1)
{
  v2 = sub_1001522D0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100152C24()
{
  result = qword_10044A270;
  if (!qword_10044A270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A270);
  }

  return result;
}

uint64_t sub_100152C7C(uint64_t a1)
{
  v2 = sub_100152A98();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100152CCC()
{
  result = qword_10044A278;
  if (!qword_10044A278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A278);
  }

  return result;
}

uint64_t sub_100152D88@<X0>(uint64_t a1@<X8>)
{
  v17[0] = a1;
  v1 = sub_1002D8990();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1002D8900();
  __chkstk_darwin(v2 - 8);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1002D8CF0();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  __chkstk_darwin(v6 - 8);
  v8 = v17 - v7;
  v9 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v9 - 8);
  v11 = v17 - v10;
  v12 = sub_1002D8910();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  __chkstk_darwin(v14);
  sub_1002D88F0();
  sub_1002D88F0();
  (*(v13 + 56))(v11, 0, 1, v12);
  sub_1002D8690();
  v15 = sub_1002D86B0();
  (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
  sub_1002D8CE0();
  sub_1000B4F14(v4);
  sub_1002D8980();
  sub_1002D8920();
  return sub_1002D86D0();
}

uint64_t sub_1001530FC()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D7C0);
  sub_10001EDB8(v0, qword_10051D7C0);
  return sub_1002D88F0();
}

uint64_t sub_100153160()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D7D8);
  v1 = sub_10001EDB8(v0, qword_10051D7D8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100153220()
{
  result = swift_getKeyPath();
  qword_10051D7F0 = result;
  return result;
}

uint64_t sub_100153248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100455840, &qword_100352838);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100455848, &qword_100352840);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100153428, 0, 0);
}

uint64_t sub_100153428()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_100154710();
  *v2 = v0;
  v2[1] = sub_10015350C;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6EEC, 0, &type metadata for AccessibilityGuestPassEnabledEntity, v3);
}

uint64_t sub_10015350C()
{

  return _swift_task_switch(sub_100153608, 0, 0);
}

uint64_t sub_100153608()
{
  sub_1002D85B0();
  *(v0 + 88) = *(v0 + 64);
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  *(v0 + 272) = v1;
  *(v0 + 280) = v2;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  sub_1002D85B0();
  *(v0 + 313) = *(v0 + 312);
  if (qword_10043A780 != -1)
  {
    swift_once();
  }

  v3 = qword_10051D7F0;
  *(v0 + 288) = qword_10051D7F0;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100455828, &qword_100455830, &qword_1003527F8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_10015376C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_10015376C()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1001538DC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001538DC()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[30];
  v11 = v0[32];
  v12 = v0[28];
  v14 = v0[27];
  v15 = v0[26];
  v4 = v0[23];
  v5 = v0[24];
  sub_1002D85B0();
  v6 = v0[15];
  v13 = v0[16];
  v0[17] = v0[14];
  v0[18] = v6;
  v0[19] = v13;
  v7 = sub_1002D8820();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = sub_1002D8850();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_100152CCC();
  sub_100154924();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100153B54()
{
  v0 = sub_10000321C(&qword_100455850, &qword_100352848);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A780 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100154924();
  sub_10002B6E4(&qword_100455858, &qword_100455850, &qword_100352848, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_100153CC8(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

void (*sub_100153D3C(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

unint64_t sub_100153DD8()
{
  result = qword_10044A290;
  if (!qword_10044A290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A290);
  }

  return result;
}

unint64_t sub_100153E30()
{
  result = qword_10044A298;
  if (!qword_10044A298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A298);
  }

  return result;
}

uint64_t sub_100153F2C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100153248(a1, v5, v4);
}

uint64_t sub_100153FD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002AB984();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100154020()
{
  result = qword_10044A2A0;
  if (!qword_10044A2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A2A0);
  }

  return result;
}

unint64_t sub_100154078()
{
  result = qword_10044A2A8;
  if (!qword_10044A2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A2A8);
  }

  return result;
}

uint64_t sub_1001540EC()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 guestPassSessionCCWidgetIsActive];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001541C0(uint64_t a1, _BYTE *a2)
{
  sub_10000321C(&qword_10043F808, &unk_100352800);
  *(v2 + 16) = swift_task_alloc();
  *(v2 + 24) = *a2;

  return _swift_task_switch(sub_100154264, 0, 0);
}

uint64_t sub_100154264()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = sub_1002D8DB0();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = v1;
  sub_1000D98C8(0, 0, v2, &unk_1002EE9D0, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100154388(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100154418, 0, 0);
}

uint64_t sub_100154418()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044A288, qword_10030C720);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455828, &qword_100455830, &qword_1003527F8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD00000000000001ELL;
  v1[1] = 0x800000010037CCB0;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_100154558()
{
  result = qword_10044A2B0;
  if (!qword_10044A2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A2B0);
  }

  return result;
}

uint64_t sub_1001545AC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100154B7C();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100154660()
{
  result = qword_10044A2B8;
  if (!qword_10044A2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A2B8);
  }

  return result;
}

unint64_t sub_1001546B8()
{
  result = qword_10044A2C0;
  if (!qword_10044A2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A2C0);
  }

  return result;
}

unint64_t sub_100154710()
{
  result = qword_10044A2C8;
  if (!qword_10044A2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A2C8);
  }

  return result;
}

uint64_t sub_100154764(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100154B7C();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100154818(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100154B7C();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1001548CC()
{
  result = qword_10044A2D0;
  if (!qword_10044A2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A2D0);
  }

  return result;
}

unint64_t sub_100154924()
{
  result = qword_10044A2D8;
  if (!qword_10044A2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A2D8);
  }

  return result;
}

uint64_t sub_1001549BC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100154558();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100154A74()
{
  result = qword_10044A2F0;
  if (!qword_10044A2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A2F0);
  }

  return result;
}

unint64_t sub_100154ACC()
{
  result = qword_10044A2F8;
  if (!qword_10044A2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A2F8);
  }

  return result;
}

unint64_t sub_100154B24()
{
  result = qword_10044A300;
  if (!qword_10044A300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A300);
  }

  return result;
}

unint64_t sub_100154B7C()
{
  result = qword_10044A308;
  if (!qword_10044A308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A308);
  }

  return result;
}

uint64_t sub_100154BD0()
{
  v0 = qword_100446DA8;

  return v0;
}

unint64_t sub_100154C0C()
{
  result = qword_10044A310;
  if (!qword_10044A310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A310);
  }

  return result;
}

uint64_t sub_100154C60(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100455818, &qword_1003527D8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100455820, &qword_1003527E0);
  __chkstk_darwin(v5);
  sub_100154710();
  sub_1002D8800();
  v8._object = 0x8000000100373AF0;
  v8._countAndFlagsBits = 0xD000000000000037;
  sub_1002D87F0(v8);
  (*(v2 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v1);
  sub_1002D87E0();
  (*(v2 + 8))(v4, v1);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_1002D87F0(v9);
  return sub_1002D8810();
}

unint64_t sub_100154E28()
{
  result = qword_10044A318;
  if (!qword_10044A318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A318);
  }

  return result;
}

unint64_t sub_100154E80()
{
  result = qword_10044A320;
  if (!qword_10044A320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A320);
  }

  return result;
}

unint64_t sub_100154ED8()
{
  result = qword_10044A328;
  if (!qword_10044A328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A328);
  }

  return result;
}

uint64_t sub_100154F2C(uint64_t a1)
{
  sub_1002D5930();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100155014(uint64_t a1)
{
  v2 = sub_100154710();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100155064()
{
  result = qword_10044A340;
  if (!qword_10044A340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A340);
  }

  return result;
}

uint64_t sub_1001550BC(uint64_t a1)
{
  v2 = sub_100154ED8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10015510C()
{
  result = qword_10044A348;
  if (!qword_10044A348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A348);
  }

  return result;
}

uint64_t sub_1001551D0@<X0>(uint64_t a1@<X8>)
{
  v18[2] = a1;
  v1 = sub_1002D8990();
  __chkstk_darwin(v1 - 8);
  v18[1] = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1002D8900();
  __chkstk_darwin(v3 - 8);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1002D8CF0();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  __chkstk_darwin(v7 - 8);
  v9 = v18 - v8;
  v10 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v10 - 8);
  v12 = v18 - v11;
  v13 = sub_1002D8910();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  __chkstk_darwin(v15);
  sub_1002D88F0();
  sub_1002D88F0();
  (*(v14 + 56))(v12, 0, 1, v13);
  sub_1002D8690();
  v16 = sub_1002D86B0();
  (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
  sub_1002D8CE0();
  sub_1000B4F14(v5);
  sub_1002D8980();
  sub_1002D8920();
  return sub_1002D86D0();
}

uint64_t sub_100155558()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D810);
  sub_10001EDB8(v0, qword_10051D810);
  return sub_1002D88F0();
}

uint64_t sub_1001555BC()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D828);
  v1 = sub_10001EDB8(v0, qword_10051D828);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10015567C()
{
  result = swift_getKeyPath();
  qword_10051D840 = result;
  return result;
}

uint64_t sub_1001556A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_1004557F0, &qword_100352798);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_1004557F8, &qword_1003527A0);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100155884, 0, 0);
}

uint64_t sub_100155884()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1001569D0();
  *v2 = v0;
  v2[1] = sub_100155968;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6EF0, 0, &type metadata for AccessibilityGuidedAccessEnabledEntity, v3);
}

uint64_t sub_100155968()
{

  return _swift_task_switch(sub_100155A64, 0, 0);
}

uint64_t sub_100155A64()
{
  sub_1002D85B0();
  *(v0 + 88) = *(v0 + 64);
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  *(v0 + 272) = v1;
  *(v0 + 280) = v2;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  sub_1002D85B0();
  *(v0 + 313) = *(v0 + 312);
  if (qword_10043A7A0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051D840;
  *(v0 + 288) = qword_10051D840;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_1004557D8, &qword_1004557E0, &qword_100352780, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_100155BC8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_100155BC8()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_100155D38;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100155D38()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[30];
  v11 = v0[32];
  v12 = v0[28];
  v14 = v0[27];
  v15 = v0[26];
  v4 = v0[23];
  v5 = v0[24];
  sub_1002D85B0();
  v6 = v0[15];
  v13 = v0[16];
  v0[17] = v0[14];
  v0[18] = v6;
  v0[19] = v13;
  v7 = sub_1002D8820();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = sub_1002D8850();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_10015510C();
  sub_100156BE4();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100155FB0()
{
  v0 = sub_10000321C(&qword_100455800, &qword_1003527A8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A7A0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100156BE4();
  sub_10002B6E4(&qword_100455808, &qword_100455800, &qword_1003527A8, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_100156124(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

void (*sub_100156198(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

unint64_t sub_100156234()
{
  result = qword_10044A360;
  if (!qword_10044A360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A360);
  }

  return result;
}

unint64_t sub_10015628C()
{
  result = qword_10044A368;
  if (!qword_10044A368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A368);
  }

  return result;
}

uint64_t sub_100156388(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001556A4(a1, v5, v4);
}

uint64_t sub_100156434@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002ABDEC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10015647C()
{
  result = qword_10044A370;
  if (!qword_10044A370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A370);
  }

  return result;
}

unint64_t sub_1001564D4()
{
  result = qword_10044A378;
  if (!qword_10044A378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A378);
  }

  return result;
}

uint64_t sub_100156548()
{
  v1 = *(v0 + 16);
  *v1 = _AXSGuidedAccessEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001565DC()
{
  _AXSGuidedAccessSetEnabled();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100156640(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001566D0, 0, 0);
}

uint64_t sub_1001566D0()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044A358, qword_10030CD58);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004557D8, &qword_1004557E0, &qword_100352780, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000026;
  v1[1] = 0x800000010037CBA0;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_100156818()
{
  result = qword_10044A380;
  if (!qword_10044A380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A380);
  }

  return result;
}

uint64_t sub_10015686C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100156E3C();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100156920()
{
  result = qword_10044A388;
  if (!qword_10044A388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A388);
  }

  return result;
}

unint64_t sub_100156978()
{
  result = qword_10044A390;
  if (!qword_10044A390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A390);
  }

  return result;
}

unint64_t sub_1001569D0()
{
  result = qword_10044A398;
  if (!qword_10044A398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A398);
  }

  return result;
}

uint64_t sub_100156A24(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100156E3C();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100156AD8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100156E3C();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100156B8C()
{
  result = qword_10044A3A0;
  if (!qword_10044A3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A3A0);
  }

  return result;
}

unint64_t sub_100156BE4()
{
  result = qword_10044A3A8;
  if (!qword_10044A3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A3A8);
  }

  return result;
}

uint64_t sub_100156C7C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100156818();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100156D34()
{
  result = qword_10044A3C0;
  if (!qword_10044A3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A3C0);
  }

  return result;
}

unint64_t sub_100156D8C()
{
  result = qword_10044A3C8;
  if (!qword_10044A3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A3C8);
  }

  return result;
}

unint64_t sub_100156DE4()
{
  result = qword_10044A3D0;
  if (!qword_10044A3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A3D0);
  }

  return result;
}

unint64_t sub_100156E3C()
{
  result = qword_10044A3D8;
  if (!qword_10044A3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A3D8);
  }

  return result;
}

uint64_t sub_100156E90()
{
  v0 = qword_100446DB8;

  return v0;
}

unint64_t sub_100156ECC()
{
  result = qword_10044A3E0;
  if (!qword_10044A3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A3E0);
  }

  return result;
}

uint64_t sub_100156F20(uint64_t a1)
{
  v1 = sub_10000321C(&qword_1004557C8, &qword_100352760);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_1004557D0, &qword_100352768);
  __chkstk_darwin(v5);
  sub_1001569D0();
  sub_1002D8800();
  v8._object = 0x8000000100373AF0;
  v8._countAndFlagsBits = 0xD000000000000037;
  sub_1002D87F0(v8);
  (*(v2 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v1);
  sub_1002D87E0();
  (*(v2 + 8))(v4, v1);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_1002D87F0(v9);
  return sub_1002D8810();
}

unint64_t sub_1001570E8()
{
  result = qword_10044A3E8;
  if (!qword_10044A3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A3E8);
  }

  return result;
}

unint64_t sub_100157140()
{
  result = qword_10044A3F0;
  if (!qword_10044A3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A3F0);
  }

  return result;
}

unint64_t sub_100157198()
{
  result = qword_10044A3F8;
  if (!qword_10044A3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A3F8);
  }

  return result;
}

uint64_t sub_1001571EC(uint64_t a1)
{
  sub_1002D58DC();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1001572D4(uint64_t a1)
{
  v2 = sub_1001569D0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100157324()
{
  result = qword_10044A410;
  if (!qword_10044A410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A410);
  }

  return result;
}

uint64_t sub_10015737C(uint64_t a1)
{
  v2 = sub_100157198();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001573CC()
{
  result = qword_10044A418;
  if (!qword_10044A418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A418);
  }

  return result;
}

uint64_t sub_100157464()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051D848);
  sub_10001EDB8(v5, qword_10051D848);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_1001575D4()
{
  v0 = sub_1002D8990();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1002D8900();
  __chkstk_darwin(v1 - 8);
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1002D8CF0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16[-v6];
  v8 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v16[-v9];
  v11 = sub_1002D8910();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  __chkstk_darwin(v13);
  sub_1002D88F0();
  sub_1002D88F0();
  (*(v12 + 56))(v10, 0, 1, v11);
  sub_1002D8690();
  v14 = sub_1002D86B0();
  (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
  sub_1002D8CE0();
  sub_1000B4F14(v3);
  sub_1002D8980();
  sub_1002D8920();
  return sub_1002D86D0();
}

uint64_t sub_100157948()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D860);
  sub_10001EDB8(v0, qword_10051D860);
  return sub_1002D88F0();
}

uint64_t sub_1001579AC()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D878);
  v1 = sub_10001EDB8(v0, qword_10051D878);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100157A6C()
{
  result = swift_getKeyPath();
  qword_10051D890 = result;
  return result;
}

uint64_t sub_100157A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_1004557A0, &qword_100352720);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_1004557A8, &qword_100352728);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100157C74, 0, 0);
}

uint64_t sub_100157C74()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_100158E38();
  *v2 = v0;
  v2[1] = sub_100157D58;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6EF4, 0, &type metadata for AccessibilityHeadphoneAccommodationsEnabledEntity, v3);
}

uint64_t sub_100157D58()
{

  return _swift_task_switch(sub_100157E54, 0, 0);
}

uint64_t sub_100157E54()
{
  sub_1002D85B0();
  *(v0 + 88) = *(v0 + 64);
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  *(v0 + 272) = v1;
  *(v0 + 280) = v2;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  sub_1002D85B0();
  *(v0 + 313) = *(v0 + 312);
  if (qword_10043A7C0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051D890;
  *(v0 + 288) = qword_10051D890;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100455788, &qword_100455790, &qword_100352708, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_100157FB8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_100157FB8()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_100158128;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100158128()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[30];
  v11 = v0[32];
  v12 = v0[28];
  v14 = v0[27];
  v15 = v0[26];
  v4 = v0[23];
  v5 = v0[24];
  sub_1002D85B0();
  v6 = v0[15];
  v13 = v0[16];
  v0[17] = v0[14];
  v0[18] = v6;
  v0[19] = v13;
  v7 = sub_1002D8820();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = sub_1002D8850();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_1001573CC();
  sub_10015904C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001583A0()
{
  v0 = sub_10000321C(&qword_1004557B0, &qword_100352730);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A7C0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10015904C();
  sub_10002B6E4(&qword_1004557B8, &qword_1004557B0, &qword_100352730, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_100158514(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

void (*sub_100158588(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

unint64_t sub_100158624()
{
  result = qword_10044A430;
  if (!qword_10044A430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A430);
  }

  return result;
}

unint64_t sub_10015867C()
{
  result = qword_10044A438;
  if (!qword_10044A438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A438);
  }

  return result;
}

uint64_t sub_100158778(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100157A94(a1, v5, v4);
}

uint64_t sub_100158824@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002AC254();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10015886C()
{
  result = qword_10044A440;
  if (!qword_10044A440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A440);
  }

  return result;
}

unint64_t sub_1001588C4()
{
  result = qword_10044A448;
  if (!qword_10044A448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A448);
  }

  return result;
}

id sub_100158938()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 16);
    v4 = [result personalMediaEnabled];

    *v3 = v4;
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100158A08()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v2 = result;
    [result setPersonalMediaEnabled:*(v0 + 16)];

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100158AA4(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100158B34, 0, 0);
}

uint64_t sub_100158B34()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044A428, qword_10030D390);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455788, &qword_100455790, &qword_100352708, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000023;
  v1[1] = 0x800000010037CA40;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_100158C80()
{
  result = qword_10044A450;
  if (!qword_10044A450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A450);
  }

  return result;
}

uint64_t sub_100158CD4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001592A4();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100158D88()
{
  result = qword_10044A458;
  if (!qword_10044A458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A458);
  }

  return result;
}

unint64_t sub_100158DE0()
{
  result = qword_10044A460;
  if (!qword_10044A460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A460);
  }

  return result;
}

unint64_t sub_100158E38()
{
  result = qword_10044A468;
  if (!qword_10044A468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A468);
  }

  return result;
}

uint64_t sub_100158E8C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001592A4();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100158F40(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001592A4();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100158FF4()
{
  result = qword_10044A470;
  if (!qword_10044A470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A470);
  }

  return result;
}

unint64_t sub_10015904C()
{
  result = qword_10044A478;
  if (!qword_10044A478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A478);
  }

  return result;
}

uint64_t sub_1001590E4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100158C80();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10015919C()
{
  result = qword_10044A490;
  if (!qword_10044A490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A490);
  }

  return result;
}

unint64_t sub_1001591F4()
{
  result = qword_10044A498;
  if (!qword_10044A498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A498);
  }

  return result;
}

unint64_t sub_10015924C()
{
  result = qword_10044A4A0;
  if (!qword_10044A4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A4A0);
  }

  return result;
}

unint64_t sub_1001592A4()
{
  result = qword_10044A4A8;
  if (!qword_10044A4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A4A8);
  }

  return result;
}

uint64_t sub_1001592F8()
{
  v0 = qword_100446DC8;

  return v0;
}

unint64_t sub_100159334()
{
  result = qword_10044A4B0;
  if (!qword_10044A4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A4B0);
  }

  return result;
}

uint64_t sub_100159388(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100455778, &qword_1003526E8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100455780, &qword_1003526F0);
  __chkstk_darwin(v5);
  sub_100158E38();
  sub_1002D8800();
  v8._object = 0x8000000100373AF0;
  v8._countAndFlagsBits = 0xD000000000000037;
  sub_1002D87F0(v8);
  (*(v2 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v1);
  sub_1002D87E0();
  (*(v2 + 8))(v4, v1);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_1002D87F0(v9);
  return sub_1002D8810();
}

unint64_t sub_100159550()
{
  result = qword_10044A4B8;
  if (!qword_10044A4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A4B8);
  }

  return result;
}

unint64_t sub_1001595A8()
{
  result = qword_10044A4C0;
  if (!qword_10044A4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A4C0);
  }

  return result;
}

unint64_t sub_100159600()
{
  result = qword_10044A4C8;
  if (!qword_10044A4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A4C8);
  }

  return result;
}

uint64_t sub_100159654(uint64_t a1)
{
  sub_1002D5888();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10015973C(uint64_t a1)
{
  v2 = sub_100158E38();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10015978C()
{
  result = qword_10044A4E0;
  if (!qword_10044A4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A4E0);
  }

  return result;
}

uint64_t sub_1001597E4(uint64_t a1)
{
  v2 = sub_100159600();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100159834()
{
  result = qword_10044A4E8;
  if (!qword_10044A4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A4E8);
  }

  return result;
}

uint64_t sub_1001598F8@<X0>(uint64_t a1@<X8>)
{
  v17[0] = a1;
  v1 = sub_1002D8990();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1002D8900();
  __chkstk_darwin(v2 - 8);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1002D8CF0();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  __chkstk_darwin(v6 - 8);
  v8 = v17 - v7;
  v9 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v9 - 8);
  v11 = v17 - v10;
  v12 = sub_1002D8910();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  __chkstk_darwin(v14);
  sub_1002D88F0();
  sub_1002D88F0();
  (*(v13 + 56))(v11, 0, 1, v12);
  sub_1002D8690();
  v15 = sub_1002D86B0();
  (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
  sub_1002D8CE0();
  sub_1000B4F14(v4);
  sub_1002D8980();
  sub_1002D8920();
  return sub_1002D86D0();
}

uint64_t sub_100159C74()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D8B0);
  sub_10001EDB8(v0, qword_10051D8B0);
  return sub_1002D88F0();
}

uint64_t sub_100159CD8()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D8C8);
  v1 = sub_10001EDB8(v0, qword_10051D8C8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100159D98()
{
  result = swift_getKeyPath();
  qword_10051D8E0 = result;
  return result;
}

uint64_t sub_100159DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100455750, &qword_1003526A8);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100455758, &qword_1003526B0);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100159FA0, 0, 0);
}

uint64_t sub_100159FA0()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_10015B0EC();
  *v2 = v0;
  v2[1] = sub_10015A084;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6EF8, 0, &type metadata for MusicHapticsEnabledEntity, v3);
}

uint64_t sub_10015A084()
{

  return _swift_task_switch(sub_10015A180, 0, 0);
}

uint64_t sub_10015A180()
{
  sub_1002D85B0();
  *(v0 + 88) = *(v0 + 64);
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  *(v0 + 272) = v1;
  *(v0 + 280) = v2;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  sub_1002D85B0();
  *(v0 + 313) = *(v0 + 312);
  if (qword_10043A7E0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051D8E0;
  *(v0 + 288) = qword_10051D8E0;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100455738, &qword_100455740, &qword_100352690, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_10015A2E4;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_10015A2E4()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_10015A454;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10015A454()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[30];
  v11 = v0[32];
  v12 = v0[28];
  v14 = v0[27];
  v15 = v0[26];
  v4 = v0[23];
  v5 = v0[24];
  sub_1002D85B0();
  v6 = v0[15];
  v13 = v0[16];
  v0[17] = v0[14];
  v0[18] = v6;
  v0[19] = v13;
  v7 = sub_1002D8820();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = sub_1002D8850();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_100159834();
  sub_10015B300();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10015A6CC()
{
  v0 = sub_10000321C(&qword_100455760, &qword_1003526B8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A7E0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10015B300();
  sub_10002B6E4(&qword_100455768, &qword_100455760, &qword_1003526B8, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_10015A840(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

void (*sub_10015A8B4(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

unint64_t sub_10015A950()
{
  result = qword_10044A500;
  if (!qword_10044A500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A500);
  }

  return result;
}

unint64_t sub_10015A9A8()
{
  result = qword_10044A508;
  if (!qword_10044A508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A508);
  }

  return result;
}

uint64_t sub_10015AAA4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100159DC0(a1, v5, v4);
}

uint64_t sub_10015AB50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002AC6BC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10015AB98()
{
  result = qword_10044A510;
  if (!qword_10044A510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A510);
  }

  return result;
}

unint64_t sub_10015ABF0()
{
  result = qword_10044A518;
  if (!qword_10044A518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A518);
  }

  return result;
}

uint64_t sub_10015AC64()
{
  v1 = *(v0 + 16);
  *v1 = _AXSHapticMusicEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10015ACF8()
{
  _AXSSetHapticMusicEnabled();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10015AD5C(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10015ADEC, 0, 0);
}

uint64_t sub_10015ADEC()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044A4F8, qword_10030D9C8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455738, &qword_100455740, &qword_100352690, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000018;
  v1[1] = 0x800000010037C950;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_10015AF34()
{
  result = qword_10044A520;
  if (!qword_10044A520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A520);
  }

  return result;
}

uint64_t sub_10015AF88(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10015B558();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10015B03C()
{
  result = qword_10044A528;
  if (!qword_10044A528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A528);
  }

  return result;
}

unint64_t sub_10015B094()
{
  result = qword_10044A530;
  if (!qword_10044A530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A530);
  }

  return result;
}

unint64_t sub_10015B0EC()
{
  result = qword_10044A538;
  if (!qword_10044A538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A538);
  }

  return result;
}

uint64_t sub_10015B140(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10015B558();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10015B1F4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10015B558();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10015B2A8()
{
  result = qword_10044A540;
  if (!qword_10044A540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A540);
  }

  return result;
}

unint64_t sub_10015B300()
{
  result = qword_10044A548;
  if (!qword_10044A548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A548);
  }

  return result;
}

uint64_t sub_10015B398(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10015AF34();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10015B450()
{
  result = qword_10044A560;
  if (!qword_10044A560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A560);
  }

  return result;
}

unint64_t sub_10015B4A8()
{
  result = qword_10044A568;
  if (!qword_10044A568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A568);
  }

  return result;
}

unint64_t sub_10015B500()
{
  result = qword_10044A570;
  if (!qword_10044A570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A570);
  }

  return result;
}

unint64_t sub_10015B558()
{
  result = qword_10044A578;
  if (!qword_10044A578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A578);
  }

  return result;
}

uint64_t sub_10015B5AC()
{
  v0 = qword_100446DD8;

  return v0;
}

unint64_t sub_10015B5E8()
{
  result = qword_10044A580;
  if (!qword_10044A580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A580);
  }

  return result;
}

uint64_t sub_10015B63C(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100455728, &qword_100352670);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100455730, &qword_100352678);
  __chkstk_darwin(v5);
  sub_10015B0EC();
  sub_1002D8800();
  v8._object = 0x8000000100373AF0;
  v8._countAndFlagsBits = 0xD000000000000037;
  sub_1002D87F0(v8);
  (*(v2 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v1);
  sub_1002D87E0();
  (*(v2 + 8))(v4, v1);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_1002D87F0(v9);
  return sub_1002D8810();
}

unint64_t sub_10015B804()
{
  result = qword_10044A588;
  if (!qword_10044A588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A588);
  }

  return result;
}

unint64_t sub_10015B85C()
{
  result = qword_10044A590;
  if (!qword_10044A590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A590);
  }

  return result;
}

unint64_t sub_10015B8B4()
{
  result = qword_10044A598;
  if (!qword_10044A598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A598);
  }

  return result;
}

uint64_t sub_10015B908(uint64_t a1)
{
  sub_1002D5834();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10015B9F0(uint64_t a1)
{
  v2 = sub_10015B0EC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10015BA40()
{
  result = qword_10044A5B0;
  if (!qword_10044A5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A5B0);
  }

  return result;
}

uint64_t sub_10015BA98(uint64_t a1)
{
  v2 = sub_10015B8B4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10015BAE8()
{
  result = qword_10044A5B8;
  if (!qword_10044A5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A5B8);
  }

  return result;
}

uint64_t sub_10015BBA4@<X0>(uint64_t a1@<X8>)
{
  v17[0] = a1;
  v1 = sub_1002D8990();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1002D8900();
  __chkstk_darwin(v2 - 8);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1002D8CF0();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  __chkstk_darwin(v6 - 8);
  v8 = v17 - v7;
  v9 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v9 - 8);
  v11 = v17 - v10;
  v12 = sub_1002D8910();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  __chkstk_darwin(v14);
  sub_1002D88F0();
  sub_1002D88F0();
  (*(v13 + 56))(v11, 0, 1, v12);
  sub_1002D8690();
  v15 = sub_1002D86B0();
  (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
  sub_1002D8CE0();
  sub_1000B4F14(v4);
  sub_1002D8980();
  sub_1002D8920();
  return sub_1002D86D0();
}

uint64_t sub_10015BF18()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D900);
  sub_10001EDB8(v0, qword_10051D900);
  return sub_1002D88F0();
}

uint64_t sub_10015BF7C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D918);
  v1 = sub_10001EDB8(v0, qword_10051D918);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10015C03C()
{
  result = swift_getKeyPath();
  qword_10051D930 = result;
  return result;
}

uint64_t sub_10015C064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100455700, &qword_100352630);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100455708, &qword_100352638);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10015C244, 0, 0);
}

uint64_t sub_10015C244()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_10015D388();
  *v2 = v0;
  v2[1] = sub_10015C328;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6EFC, 0, &type metadata for MonoAudioEnabledEntity, v3);
}

uint64_t sub_10015C328()
{

  return _swift_task_switch(sub_10015C424, 0, 0);
}

uint64_t sub_10015C424()
{
  sub_1002D85B0();
  *(v0 + 88) = *(v0 + 64);
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  *(v0 + 272) = v1;
  *(v0 + 280) = v2;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  sub_1002D85B0();
  *(v0 + 313) = *(v0 + 312);
  if (qword_10043A800 != -1)
  {
    swift_once();
  }

  v3 = qword_10051D930;
  *(v0 + 288) = qword_10051D930;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_1004556E8, &qword_1004556F0, &qword_100352618, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_10015C588;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_10015C588()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_10015C6F8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10015C6F8()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[30];
  v11 = v0[32];
  v12 = v0[28];
  v14 = v0[27];
  v15 = v0[26];
  v4 = v0[23];
  v5 = v0[24];
  sub_1002D85B0();
  v6 = v0[15];
  v13 = v0[16];
  v0[17] = v0[14];
  v0[18] = v6;
  v0[19] = v13;
  v7 = sub_1002D8820();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = sub_1002D8850();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_10015BAE8();
  sub_10015D59C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10015C970()
{
  v0 = sub_10000321C(&qword_100455710, &qword_100352640);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A800 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10015D59C();
  sub_10002B6E4(&qword_100455718, &qword_100455710, &qword_100352640, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_10015CAE4(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

void (*sub_10015CB58(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

unint64_t sub_10015CBF4()
{
  result = qword_10044A5D0;
  if (!qword_10044A5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A5D0);
  }

  return result;
}

unint64_t sub_10015CC4C()
{
  result = qword_10044A5D8;
  if (!qword_10044A5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A5D8);
  }

  return result;
}

uint64_t sub_10015CD48(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10015C064(a1, v5, v4);
}

uint64_t sub_10015CDF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002ACB24();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10015CE3C()
{
  result = qword_10044A5E0;
  if (!qword_10044A5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A5E0);
  }

  return result;
}

unint64_t sub_10015CE94()
{
  result = qword_10044A5E8;
  if (!qword_10044A5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A5E8);
  }

  return result;
}

uint64_t sub_10015CF08()
{
  v1 = *(v0 + 16);
  *v1 = _AXSMonoAudioEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10015CF9C()
{
  _AXSMonoAudioSetEnabled();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10015D000(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10015D090, 0, 0);
}

uint64_t sub_10015D090()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044A5C8, qword_10030E000);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004556E8, &qword_1004556F0, &qword_100352618, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000021;
  v1[1] = 0x800000010035D730;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_10015D1D0()
{
  result = qword_10044A5F0;
  if (!qword_10044A5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A5F0);
  }

  return result;
}

uint64_t sub_10015D224(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10015D7F4();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10015D2D8()
{
  result = qword_10044A5F8;
  if (!qword_10044A5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A5F8);
  }

  return result;
}

unint64_t sub_10015D330()
{
  result = qword_10044A600;
  if (!qword_10044A600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A600);
  }

  return result;
}

unint64_t sub_10015D388()
{
  result = qword_10044A608;
  if (!qword_10044A608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A608);
  }

  return result;
}

uint64_t sub_10015D3DC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10015D7F4();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10015D490(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10015D7F4();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10015D544()
{
  result = qword_10044A610;
  if (!qword_10044A610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A610);
  }

  return result;
}

unint64_t sub_10015D59C()
{
  result = qword_10044A618;
  if (!qword_10044A618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A618);
  }

  return result;
}

uint64_t sub_10015D634(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10015D1D0();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10015D6EC()
{
  result = qword_10044A630;
  if (!qword_10044A630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A630);
  }

  return result;
}

unint64_t sub_10015D744()
{
  result = qword_10044A638;
  if (!qword_10044A638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A638);
  }

  return result;
}

unint64_t sub_10015D79C()
{
  result = qword_10044A640;
  if (!qword_10044A640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A640);
  }

  return result;
}

unint64_t sub_10015D7F4()
{
  result = qword_10044A648;
  if (!qword_10044A648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A648);
  }

  return result;
}

uint64_t sub_10015D848()
{
  v0 = qword_100446DE8;

  return v0;
}

unint64_t sub_10015D884()
{
  result = qword_10044A650;
  if (!qword_10044A650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A650);
  }

  return result;
}

uint64_t sub_10015D8D8(uint64_t a1)
{
  v1 = sub_10000321C(&qword_1004556D8, &qword_1003525F8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_1004556E0, &qword_100352600);
  __chkstk_darwin(v5);
  sub_10015D388();
  sub_1002D8800();
  v8._object = 0x8000000100373AF0;
  v8._countAndFlagsBits = 0xD000000000000037;
  sub_1002D87F0(v8);
  (*(v2 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v1);
  sub_1002D87E0();
  (*(v2 + 8))(v4, v1);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_1002D87F0(v9);
  return sub_1002D8810();
}

unint64_t sub_10015DAA0()
{
  result = qword_10044A658;
  if (!qword_10044A658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A658);
  }

  return result;
}

unint64_t sub_10015DAF8()
{
  result = qword_10044A660;
  if (!qword_10044A660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A660);
  }

  return result;
}

unint64_t sub_10015DB50()
{
  result = qword_10044A668;
  if (!qword_10044A668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A668);
  }

  return result;
}

uint64_t sub_10015DBA4(uint64_t a1)
{
  sub_1002D57E0();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10015DC8C(uint64_t a1)
{
  v2 = sub_10015D388();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10015DCDC()
{
  result = qword_10044A680;
  if (!qword_10044A680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A680);
  }

  return result;
}

uint64_t sub_10015DD34(uint64_t a1)
{
  v2 = sub_10015DB50();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10015DD84()
{
  result = qword_10044A688;
  if (!qword_10044A688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A688);
  }

  return result;
}

uint64_t sub_10015DE1C()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051D938);
  sub_10001EDB8(v5, qword_10051D938);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_10015DF8C@<X0>(uint64_t a1@<X8>)
{
  v17[0] = a1;
  v1 = sub_1002D8990();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1002D8900();
  __chkstk_darwin(v2 - 8);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1002D8CF0();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  __chkstk_darwin(v6 - 8);
  v8 = v17 - v7;
  v9 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v9 - 8);
  v11 = v17 - v10;
  v12 = sub_1002D8910();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  __chkstk_darwin(v14);
  sub_1002D88F0();
  sub_1002D88F0();
  (*(v13 + 56))(v11, 0, 1, v12);
  sub_1002D8690();
  v15 = sub_1002D86B0();
  (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
  sub_1002D8CE0();
  sub_1000B4F14(v4);
  sub_1002D8980();
  sub_1002D8920();
  return sub_1002D86D0();
}

uint64_t sub_10015E2FC()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D950);
  sub_10001EDB8(v0, qword_10051D950);
  return sub_1002D88F0();
}

uint64_t sub_10015E360()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D968);
  v1 = sub_10001EDB8(v0, qword_10051D968);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10015E420()
{
  result = swift_getKeyPath();
  qword_10051D980 = result;
  return result;
}

uint64_t sub_10015E448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_1004556B0, &qword_1003525B8);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_1004556B8, &qword_1003525C0);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10015E628, 0, 0);
}

uint64_t sub_10015E628()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_10015F778();
  *v2 = v0;
  v2[1] = sub_10015E70C;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6F00, 0, &type metadata for AlwaysShowVolumeControlEntity, v3);
}

uint64_t sub_10015E70C()
{

  return _swift_task_switch(sub_10015E808, 0, 0);
}

uint64_t sub_10015E808()
{
  sub_1002D85B0();
  *(v0 + 88) = *(v0 + 64);
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  *(v0 + 272) = v1;
  *(v0 + 280) = v2;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  sub_1002D85B0();
  *(v0 + 313) = *(v0 + 312);
  if (qword_10043A820 != -1)
  {
    swift_once();
  }

  v3 = qword_10051D980;
  *(v0 + 288) = qword_10051D980;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100455698, &qword_1004556A0, &qword_1003525A0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_10015E96C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_10015E96C()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_10015EADC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10015EADC()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[30];
  v11 = v0[32];
  v12 = v0[28];
  v14 = v0[27];
  v15 = v0[26];
  v4 = v0[23];
  v5 = v0[24];
  sub_1002D85B0();
  v6 = v0[15];
  v13 = v0[16];
  v0[17] = v0[14];
  v0[18] = v6;
  v0[19] = v13;
  v7 = sub_1002D8820();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = sub_1002D8850();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_10015DD84();
  sub_10015F98C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10015ED54()
{
  v0 = sub_10000321C(&qword_1004556C0, &qword_1003525C8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A820 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10015F98C();
  sub_10002B6E4(&qword_1004556C8, &qword_1004556C0, &qword_1003525C8, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_10015EEC8(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

void (*sub_10015EF3C(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

unint64_t sub_10015EFD8()
{
  result = qword_10044A6A0;
  if (!qword_10044A6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A6A0);
  }

  return result;
}

unint64_t sub_10015F030()
{
  result = qword_10044A6A8;
  if (!qword_10044A6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A6A8);
  }

  return result;
}

uint64_t sub_10015F12C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10015E448(a1, v5, v4);
}

uint64_t sub_10015F1D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002ACF8C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10015F220()
{
  result = qword_10044A6B0;
  if (!qword_10044A6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A6B0);
  }

  return result;
}

unint64_t sub_10015F278()
{
  result = qword_10044A6B8;
  if (!qword_10044A6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A6B8);
  }

  return result;
}

uint64_t sub_10015F2EC()
{
  v1 = *(v0 + 16);
  *v1 = _AXSAlwaysShowVolumeControlEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10015F380()
{
  _AXSAlwaysShowVolumeControlSetEnabled();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10015F3E4(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10015F474, 0, 0);
}

uint64_t sub_10015F474()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044A698, qword_10030E638);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455698, &qword_1004556A0, &qword_1003525A0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000034;
  v1[1] = 0x8000000100361CF0;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_10015F5C0()
{
  result = qword_10044A6C0;
  if (!qword_10044A6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A6C0);
  }

  return result;
}

uint64_t sub_10015F614(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10015FBE4();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10015F6C8()
{
  result = qword_10044A6C8;
  if (!qword_10044A6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A6C8);
  }

  return result;
}

unint64_t sub_10015F720()
{
  result = qword_10044A6D0;
  if (!qword_10044A6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A6D0);
  }

  return result;
}

unint64_t sub_10015F778()
{
  result = qword_10044A6D8;
  if (!qword_10044A6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A6D8);
  }

  return result;
}

uint64_t sub_10015F7CC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10015FBE4();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10015F880(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10015FBE4();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10015F934()
{
  result = qword_10044A6E0;
  if (!qword_10044A6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A6E0);
  }

  return result;
}

unint64_t sub_10015F98C()
{
  result = qword_10044A6E8;
  if (!qword_10044A6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A6E8);
  }

  return result;
}

uint64_t sub_10015FA24(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10015F5C0();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10015FADC()
{
  result = qword_10044A700;
  if (!qword_10044A700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A700);
  }

  return result;
}

unint64_t sub_10015FB34()
{
  result = qword_10044A708;
  if (!qword_10044A708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A708);
  }

  return result;
}

unint64_t sub_10015FB8C()
{
  result = qword_10044A710;
  if (!qword_10044A710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A710);
  }

  return result;
}

unint64_t sub_10015FBE4()
{
  result = qword_10044A718;
  if (!qword_10044A718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A718);
  }

  return result;
}

uint64_t sub_10015FC38()
{
  v0 = qword_100446DF8;

  return v0;
}

unint64_t sub_10015FC74()
{
  result = qword_10044A720;
  if (!qword_10044A720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A720);
  }

  return result;
}

uint64_t sub_10015FCC8(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100455688, &qword_100352580);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100455690, &qword_100352588);
  __chkstk_darwin(v5);
  sub_10015F778();
  sub_1002D8800();
  v8._object = 0x8000000100373AF0;
  v8._countAndFlagsBits = 0xD000000000000037;
  sub_1002D87F0(v8);
  (*(v2 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v1);
  sub_1002D87E0();
  (*(v2 + 8))(v4, v1);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_1002D87F0(v9);
  return sub_1002D8810();
}

unint64_t sub_10015FE90()
{
  result = qword_10044A728;
  if (!qword_10044A728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A728);
  }

  return result;
}

unint64_t sub_10015FEE8()
{
  result = qword_10044A730;
  if (!qword_10044A730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A730);
  }

  return result;
}

unint64_t sub_10015FF40()
{
  result = qword_10044A738;
  if (!qword_10044A738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A738);
  }

  return result;
}

uint64_t sub_10015FF94(uint64_t a1)
{
  sub_1002D578C();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10016007C(uint64_t a1)
{
  v2 = sub_10015F778();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001600CC()
{
  result = qword_10044A750;
  if (!qword_10044A750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A750);
  }

  return result;
}

uint64_t sub_100160124(uint64_t a1)
{
  v2 = sub_10015FF40();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100160174()
{
  result = qword_10044A758;
  if (!qword_10044A758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A758);
  }

  return result;
}

uint64_t sub_100160238@<X0>(uint64_t a1@<X8>)
{
  v17[0] = a1;
  v1 = sub_1002D8990();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1002D8900();
  __chkstk_darwin(v2 - 8);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1002D8CF0();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  __chkstk_darwin(v6 - 8);
  v8 = v17 - v7;
  v9 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v9 - 8);
  v11 = v17 - v10;
  v12 = sub_1002D8910();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  __chkstk_darwin(v14);
  sub_1002D88F0();
  sub_1002D88F0();
  (*(v13 + 56))(v11, 0, 1, v12);
  sub_1002D8690();
  v15 = sub_1002D86B0();
  (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
  sub_1002D8CE0();
  sub_1000B4F14(v4);
  sub_1002D8980();
  sub_1002D8920();
  return sub_1002D86D0();
}

uint64_t sub_1001605B4()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D9A0);
  sub_10001EDB8(v0, qword_10051D9A0);
  return sub_1002D88F0();
}

uint64_t sub_100160618()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D9B8);
  v1 = sub_10001EDB8(v0, qword_10051D9B8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001606D8()
{
  result = swift_getKeyPath();
  qword_10051D9D0 = result;
  return result;
}

uint64_t sub_100160700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100455660, &qword_100352540);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100455668, &qword_100352548);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001608E0, 0, 0);
}

uint64_t sub_1001608E0()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_100161A94();
  *v2 = v0;
  v2[1] = sub_1001609C4;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6F04, 0, &type metadata for StartupSoundsEnabledEntity, v3);
}

uint64_t sub_1001609C4()
{

  return _swift_task_switch(sub_100160AC0, 0, 0);
}

uint64_t sub_100160AC0()
{
  sub_1002D85B0();
  *(v0 + 88) = *(v0 + 64);
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  *(v0 + 272) = v1;
  *(v0 + 280) = v2;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  sub_1002D85B0();
  *(v0 + 313) = *(v0 + 312);
  if (qword_10043A840 != -1)
  {
    swift_once();
  }

  v3 = qword_10051D9D0;
  *(v0 + 288) = qword_10051D9D0;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100455648, &qword_100455650, &qword_100352528, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_100160C24;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_100160C24()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_100160D94;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100160D94()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[30];
  v11 = v0[32];
  v12 = v0[28];
  v14 = v0[27];
  v15 = v0[26];
  v4 = v0[23];
  v5 = v0[24];
  sub_1002D85B0();
  v6 = v0[15];
  v13 = v0[16];
  v0[17] = v0[14];
  v0[18] = v6;
  v0[19] = v13;
  v7 = sub_1002D8820();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = sub_1002D8850();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_100160174();
  sub_100161CA8();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10016100C()
{
  v0 = sub_10000321C(&qword_100455670, &qword_100352550);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A840 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100161CA8();
  sub_10002B6E4(&qword_100455678, &qword_100455670, &qword_100352550, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_100161180(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

void (*sub_1001611F4(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

unint64_t sub_100161290()
{
  result = qword_10044A770;
  if (!qword_10044A770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A770);
  }

  return result;
}

unint64_t sub_1001612E8()
{
  result = qword_10044A778;
  if (!qword_10044A778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A778);
  }

  return result;
}

uint64_t sub_1001613E4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100160700(a1, v5, v4);
}

uint64_t sub_100161490@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002AD3F4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001614D8()
{
  result = qword_10044A780;
  if (!qword_10044A780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A780);
  }

  return result;
}

unint64_t sub_100161530()
{
  result = qword_10044A788;
  if (!qword_10044A788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A788);
  }

  return result;
}

uint64_t sub_1001615A4()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 startupSoundEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10016166C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setStartupSoundEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100161704(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100161794, 0, 0);
}

uint64_t sub_100161794()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044A768, qword_10030EC70);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455648, &qword_100455650, &qword_100352528, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD00000000000001FLL;
  v1[1] = 0x800000010035B220;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1001618DC()
{
  result = qword_10044A790;
  if (!qword_10044A790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A790);
  }

  return result;
}

uint64_t sub_100161930(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100161F00();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1001619E4()
{
  result = qword_10044A798;
  if (!qword_10044A798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A798);
  }

  return result;
}

unint64_t sub_100161A3C()
{
  result = qword_10044A7A0;
  if (!qword_10044A7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A7A0);
  }

  return result;
}

unint64_t sub_100161A94()
{
  result = qword_10044A7A8;
  if (!qword_10044A7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A7A8);
  }

  return result;
}

uint64_t sub_100161AE8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100161F00();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100161B9C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100161F00();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100161C50()
{
  result = qword_10044A7B0;
  if (!qword_10044A7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A7B0);
  }

  return result;
}

unint64_t sub_100161CA8()
{
  result = qword_10044A7B8;
  if (!qword_10044A7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A7B8);
  }

  return result;
}

uint64_t sub_100161D40(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001618DC();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100161DF8()
{
  result = qword_10044A7D0;
  if (!qword_10044A7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A7D0);
  }

  return result;
}

unint64_t sub_100161E50()
{
  result = qword_10044A7D8;
  if (!qword_10044A7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A7D8);
  }

  return result;
}

unint64_t sub_100161EA8()
{
  result = qword_10044A7E0;
  if (!qword_10044A7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A7E0);
  }

  return result;
}

unint64_t sub_100161F00()
{
  result = qword_10044A7E8;
  if (!qword_10044A7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A7E8);
  }

  return result;
}

uint64_t sub_100161F54()
{
  v0 = qword_100446E08;

  return v0;
}

unint64_t sub_100161F90()
{
  result = qword_10044A7F0;
  if (!qword_10044A7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A7F0);
  }

  return result;
}

uint64_t sub_100161FE4(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100455638, &qword_100352508);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100455640, &qword_100352510);
  __chkstk_darwin(v5);
  sub_100161A94();
  sub_1002D8800();
  v8._object = 0x8000000100373AF0;
  v8._countAndFlagsBits = 0xD000000000000037;
  sub_1002D87F0(v8);
  (*(v2 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v1);
  sub_1002D87E0();
  (*(v2 + 8))(v4, v1);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_1002D87F0(v9);
  return sub_1002D8810();
}

unint64_t sub_1001621AC()
{
  result = qword_10044A7F8;
  if (!qword_10044A7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A7F8);
  }

  return result;
}

unint64_t sub_100162204()
{
  result = qword_10044A800;
  if (!qword_10044A800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A800);
  }

  return result;
}

unint64_t sub_10016225C()
{
  result = qword_10044A808;
  if (!qword_10044A808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A808);
  }

  return result;
}

uint64_t sub_1001622B0(uint64_t a1)
{
  sub_1002D5738();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100162398(uint64_t a1)
{
  v2 = sub_100161A94();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001623E8()
{
  result = qword_10044A820;
  if (!qword_10044A820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A820);
  }

  return result;
}

uint64_t sub_100162440(uint64_t a1)
{
  v2 = sub_10016225C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100162490()
{
  result = qword_10044A828;
  if (!qword_10044A828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A828);
  }

  return result;
}

uint64_t sub_100162550()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D9F0);
  sub_10001EDB8(v0, qword_10051D9F0);
  return sub_1002D88F0();
}

uint64_t sub_1001625B4()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051DA08);
  v1 = sub_10001EDB8(v0, qword_10051DA08);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100162674()
{
  result = swift_getKeyPath();
  qword_10051DA20 = result;
  return result;
}

uint64_t sub_10016269C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100455610, &qword_1003524C8);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100455618, &qword_1003524D0);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10016287C, 0, 0);
}

uint64_t sub_10016287C()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_100163A38();
  *v2 = v0;
  v2[1] = sub_100162960;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6F08, 0, &type metadata for SoftwareRTTEnabledEntity, v3);
}

uint64_t sub_100162960()
{

  return _swift_task_switch(sub_100162A5C, 0, 0);
}

uint64_t sub_100162A5C()
{
  sub_1002D85B0();
  *(v0 + 88) = *(v0 + 64);
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  *(v0 + 272) = v1;
  *(v0 + 280) = v2;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  sub_1002D85B0();
  *(v0 + 313) = *(v0 + 312);
  if (qword_10043A860 != -1)
  {
    swift_once();
  }

  v3 = qword_10051DA20;
  *(v0 + 288) = qword_10051DA20;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_1004555F8, &qword_100455600, &qword_1003524B0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_100162BC0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_100162BC0()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_100162D30;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100162D30()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[30];
  v11 = v0[32];
  v12 = v0[28];
  v14 = v0[27];
  v15 = v0[26];
  v4 = v0[23];
  v5 = v0[24];
  sub_1002D85B0();
  v6 = v0[15];
  v13 = v0[16];
  v0[17] = v0[14];
  v0[18] = v6;
  v0[19] = v13;
  v7 = sub_1002D8820();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = sub_1002D8850();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_100162490();
  sub_100163C4C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100162FA8()
{
  v0 = sub_10000321C(&qword_100455620, &qword_1003524D8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A860 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100163C4C();
  sub_10002B6E4(&qword_100455628, &qword_100455620, &qword_1003524D8, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_10016311C(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

void (*sub_100163190(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

unint64_t sub_10016322C()
{
  result = qword_10044A840;
  if (!qword_10044A840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A840);
  }

  return result;
}

unint64_t sub_100163284()
{
  result = qword_10044A848;
  if (!qword_10044A848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A848);
  }

  return result;
}

uint64_t sub_100163380(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10016269C(a1, v5, v4);
}

uint64_t sub_10016342C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002AD85C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100163474()
{
  result = qword_10044A850;
  if (!qword_10044A850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A850);
  }

  return result;
}

unint64_t sub_1001634CC()
{
  result = qword_10044A858;
  if (!qword_10044A858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A858);
  }

  return result;
}

id sub_100163540()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 16);
    v4 = [result TTYSoftwareEnabled];

    *v3 = v4;
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100163610()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v2 = result;
    [result setTTYSoftwareEnabled:*(v0 + 16)];

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001636AC(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10016373C, 0, 0);
}

uint64_t sub_10016373C()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044A838, qword_10030F2A8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004555F8, &qword_100455600, &qword_1003524B0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0x545F575323545452;
  v1[1] = 0xEA00000000005954;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_100163880()
{
  result = qword_10044A860;
  if (!qword_10044A860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A860);
  }

  return result;
}

uint64_t sub_1001638D4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100163EA4();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100163988()
{
  result = qword_10044A868;
  if (!qword_10044A868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A868);
  }

  return result;
}

unint64_t sub_1001639E0()
{
  result = qword_10044A870;
  if (!qword_10044A870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A870);
  }

  return result;
}

unint64_t sub_100163A38()
{
  result = qword_10044A878;
  if (!qword_10044A878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A878);
  }

  return result;
}

uint64_t sub_100163A8C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100163EA4();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100163B40(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100163EA4();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100163BF4()
{
  result = qword_10044A880;
  if (!qword_10044A880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A880);
  }

  return result;
}

unint64_t sub_100163C4C()
{
  result = qword_10044A888;
  if (!qword_10044A888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A888);
  }

  return result;
}

uint64_t sub_100163CE4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100163880();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100163D9C()
{
  result = qword_10044A8A0;
  if (!qword_10044A8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A8A0);
  }

  return result;
}

unint64_t sub_100163DF4()
{
  result = qword_10044A8A8;
  if (!qword_10044A8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A8A8);
  }

  return result;
}

unint64_t sub_100163E4C()
{
  result = qword_10044A8B0;
  if (!qword_10044A8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A8B0);
  }

  return result;
}

unint64_t sub_100163EA4()
{
  result = qword_10044A8B8;
  if (!qword_10044A8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A8B8);
  }

  return result;
}

uint64_t sub_100163EF8()
{
  v0 = qword_100446E18;

  return v0;
}

unint64_t sub_100163F34()
{
  result = qword_10044A8C0;
  if (!qword_10044A8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A8C0);
  }

  return result;
}

uint64_t sub_100163F88(uint64_t a1)
{
  v1 = sub_10000321C(&qword_1004555E8, &qword_100352490);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_1004555F0, &qword_100352498);
  __chkstk_darwin(v5);
  sub_100163A38();
  sub_1002D8800();
  v8._object = 0x8000000100373AF0;
  v8._countAndFlagsBits = 0xD000000000000037;
  sub_1002D87F0(v8);
  (*(v2 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v1);
  sub_1002D87E0();
  (*(v2 + 8))(v4, v1);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_1002D87F0(v9);
  return sub_1002D8810();
}

unint64_t sub_100164150()
{
  result = qword_10044A8C8;
  if (!qword_10044A8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A8C8);
  }

  return result;
}

unint64_t sub_1001641A8()
{
  result = qword_10044A8D0;
  if (!qword_10044A8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A8D0);
  }

  return result;
}

unint64_t sub_100164200()
{
  result = qword_10044A8D8;
  if (!qword_10044A8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A8D8);
  }

  return result;
}

uint64_t sub_100164254(uint64_t a1)
{
  sub_1002D56E4();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10016433C(uint64_t a1)
{
  v2 = sub_100163A38();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10016438C()
{
  result = qword_10044A8F0;
  if (!qword_10044A8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A8F0);
  }

  return result;
}

uint64_t sub_100164424(uint64_t a1)
{
  v2 = sub_100164200();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100164474()
{
  result = qword_10044A8F8;
  if (!qword_10044A8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A8F8);
  }

  return result;
}

uint64_t sub_100164534@<X0>(uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v20[0] = a2;
  v20[1] = a3;
  v20[2] = a4;
  v4 = sub_1002D8990();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1002D8900();
  __chkstk_darwin(v5 - 8);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1002D8CF0();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  __chkstk_darwin(v9 - 8);
  v11 = v20 - v10;
  v12 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v12 - 8);
  v14 = v20 - v13;
  v15 = sub_1002D8910();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  __chkstk_darwin(v17);
  sub_1002D88F0();
  sub_1002D88F0();
  (*(v16 + 56))(v14, 0, 1, v15);
  sub_1002D8690();
  v18 = sub_1002D86B0();
  (*(*(v18 - 8) + 56))(v11, 0, 1, v18);
  sub_1002D8CE0();
  sub_1000B4F14(v7);
  sub_1002D8980();
  sub_1002D8920();
  return sub_1002D86D0();
}

uint64_t sub_100164898()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051DA40);
  sub_10001EDB8(v0, qword_10051DA40);
  return sub_1002D88F0();
}

uint64_t sub_1001648FC()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051DA58);
  v1 = sub_10001EDB8(v0, qword_10051DA58);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001649BC()
{
  result = swift_getKeyPath();
  qword_10051DA70 = result;
  return result;
}

uint64_t sub_1001649E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_1004555C0, &qword_100352450);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_1004555C8, &qword_100352458);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100164BC4, 0, 0);
}

uint64_t sub_100164BC4()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_100165D80();
  *v2 = v0;
  v2[1] = sub_100164CA8;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6F0C, 0, &type metadata for HardwareTTYEnabledEntity, v3);
}

uint64_t sub_100164CA8()
{

  return _swift_task_switch(sub_100164DA4, 0, 0);
}

uint64_t sub_100164DA4()
{
  sub_1002D85B0();
  *(v0 + 88) = *(v0 + 64);
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  *(v0 + 272) = v1;
  *(v0 + 280) = v2;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  sub_1002D85B0();
  *(v0 + 313) = *(v0 + 312);
  if (qword_10043A880 != -1)
  {
    swift_once();
  }

  v3 = qword_10051DA70;
  *(v0 + 288) = qword_10051DA70;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_1004555A8, &qword_1004555B0, &qword_100352438, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_100164F08;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_100164F08()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_100165078;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100165078()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[30];
  v11 = v0[32];
  v12 = v0[28];
  v14 = v0[27];
  v15 = v0[26];
  v4 = v0[23];
  v5 = v0[24];
  sub_1002D85B0();
  v6 = v0[15];
  v13 = v0[16];
  v0[17] = v0[14];
  v0[18] = v6;
  v0[19] = v13;
  v7 = sub_1002D8820();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = sub_1002D8850();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_100164474();
  sub_100165F94();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001652F0()
{
  v0 = sub_10000321C(&qword_1004555D0, &qword_100352460);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A880 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100165F94();
  sub_10002B6E4(&qword_1004555D8, &qword_1004555D0, &qword_100352460, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_100165464(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

void (*sub_1001654D8(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

unint64_t sub_100165574()
{
  result = qword_10044A910;
  if (!qword_10044A910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A910);
  }

  return result;
}

unint64_t sub_1001655CC()
{
  result = qword_10044A918;
  if (!qword_10044A918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A918);
  }

  return result;
}

uint64_t sub_1001656C8(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001649E4(a1, v5, v4);
}

uint64_t sub_100165774@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002ADCC4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001657BC()
{
  result = qword_10044A920;
  if (!qword_10044A920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A920);
  }

  return result;
}

unint64_t sub_100165814()
{
  result = qword_10044A928;
  if (!qword_10044A928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A928);
  }

  return result;
}

id sub_100165888()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 16);
    v4 = [result TTYHardwareEnabled];

    *v3 = v4;
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100165958()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v2 = result;
    [result setTTYHardwareEnabled:*(v0 + 16)];

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001659F4(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100165A84, 0, 0);
}

uint64_t sub_100165A84()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044A908, qword_10030F8E0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004555A8, &qword_1004555B0, &qword_100352438, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0x545F574823545452;
  v1[1] = 0xEA00000000005954;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_100165BC8()
{
  result = qword_10044A930;
  if (!qword_10044A930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A930);
  }

  return result;
}

uint64_t sub_100165C1C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001661EC();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100165CD0()
{
  result = qword_10044A938;
  if (!qword_10044A938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A938);
  }

  return result;
}

unint64_t sub_100165D28()
{
  result = qword_10044A940;
  if (!qword_10044A940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A940);
  }

  return result;
}

unint64_t sub_100165D80()
{
  result = qword_10044A948;
  if (!qword_10044A948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A948);
  }

  return result;
}

uint64_t sub_100165DD4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001661EC();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100165E88(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001661EC();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100165F3C()
{
  result = qword_10044A950;
  if (!qword_10044A950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A950);
  }

  return result;
}

unint64_t sub_100165F94()
{
  result = qword_10044A958;
  if (!qword_10044A958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A958);
  }

  return result;
}

uint64_t sub_10016602C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100165BC8();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1001660E4()
{
  result = qword_10044A970;
  if (!qword_10044A970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A970);
  }

  return result;
}

unint64_t sub_10016613C()
{
  result = qword_10044A978;
  if (!qword_10044A978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A978);
  }

  return result;
}

unint64_t sub_100166194()
{
  result = qword_10044A980;
  if (!qword_10044A980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A980);
  }

  return result;
}

unint64_t sub_1001661EC()
{
  result = qword_10044A988;
  if (!qword_10044A988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A988);
  }

  return result;
}

uint64_t sub_100166240()
{
  v0 = qword_100446E28;

  return v0;
}

unint64_t sub_10016627C()
{
  result = qword_10044A990;
  if (!qword_10044A990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A990);
  }

  return result;
}

uint64_t sub_1001662D0(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100455598, &qword_100352418);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_1004555A0, &qword_100352420);
  __chkstk_darwin(v5);
  sub_100165D80();
  sub_1002D8800();
  v8._object = 0x8000000100373AF0;
  v8._countAndFlagsBits = 0xD000000000000037;
  sub_1002D87F0(v8);
  (*(v2 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v1);
  sub_1002D87E0();
  (*(v2 + 8))(v4, v1);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_1002D87F0(v9);
  return sub_1002D8810();
}

unint64_t sub_100166498()
{
  result = qword_10044A998;
  if (!qword_10044A998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A998);
  }

  return result;
}

unint64_t sub_1001664F0()
{
  result = qword_10044A9A0;
  if (!qword_10044A9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A9A0);
  }

  return result;
}

unint64_t sub_100166548()
{
  result = qword_10044A9A8;
  if (!qword_10044A9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A9A8);
  }

  return result;
}

uint64_t sub_10016659C(uint64_t a1)
{
  sub_1002D5690();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100166684(uint64_t a1)
{
  v2 = sub_100165D80();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001666D4()
{
  result = qword_10044A9C0;
  if (!qword_10044A9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A9C0);
  }

  return result;
}

uint64_t sub_10016676C(uint64_t a1)
{
  v2 = sub_100166548();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001667BC()
{
  result = qword_10044A9C8;
  if (!qword_10044A9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A9C8);
  }

  return result;
}

uint64_t sub_100166854()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051DA78);
  sub_10001EDB8(v5, qword_10051DA78);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_1001669C4@<X0>(uint64_t a1@<X8>)
{
  v17[0] = a1;
  v1 = sub_1002D8990();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1002D8900();
  __chkstk_darwin(v2 - 8);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1002D8CF0();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  __chkstk_darwin(v6 - 8);
  v8 = v17 - v7;
  v9 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v9 - 8);
  v11 = v17 - v10;
  v12 = sub_1002D8910();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  __chkstk_darwin(v14);
  sub_1002D88F0();
  sub_1002D88F0();
  (*(v13 + 56))(v11, 0, 1, v12);
  sub_1002D8690();
  v15 = sub_1002D86B0();
  (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
  sub_1002D8CE0();
  sub_1000B4F14(v4);
  sub_1002D8980();
  sub_1002D8920();
  return sub_1002D86D0();
}

uint64_t sub_100166D34()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051DA90);
  sub_10001EDB8(v0, qword_10051DA90);
  return sub_1002D88F0();
}

uint64_t sub_100166D98()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051DAA8);
  v1 = sub_10001EDB8(v0, qword_10051DAA8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100166E58()
{
  result = swift_getKeyPath();
  qword_10051DAC0 = result;
  return result;
}

uint64_t sub_100166E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100455570, &qword_1003523D8);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100455578, &qword_1003523E0);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100167060, 0, 0);
}

uint64_t sub_100167060()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1001681B0();
  *v2 = v0;
  v2[1] = sub_100167144;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6F10, 0, &type metadata for AccessibilityHearingAidCompatibilityEnabledEntity, v3);
}

uint64_t sub_100167144()
{

  return _swift_task_switch(sub_100167240, 0, 0);
}

uint64_t sub_100167240()
{
  sub_1002D85B0();
  *(v0 + 88) = *(v0 + 64);
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  *(v0 + 272) = v1;
  *(v0 + 280) = v2;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  sub_1002D85B0();
  *(v0 + 313) = *(v0 + 312);
  if (qword_10043A8A0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051DAC0;
  *(v0 + 288) = qword_10051DAC0;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100455558, &qword_100455560, &qword_1003523C0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1001673A4;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1001673A4()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_100167514;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100167514()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[30];
  v11 = v0[32];
  v12 = v0[28];
  v14 = v0[27];
  v15 = v0[26];
  v4 = v0[23];
  v5 = v0[24];
  sub_1002D85B0();
  v6 = v0[15];
  v13 = v0[16];
  v0[17] = v0[14];
  v0[18] = v6;
  v0[19] = v13;
  v7 = sub_1002D8820();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = sub_1002D8850();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_1001667BC();
  sub_1001683C4();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10016778C()
{
  v0 = sub_10000321C(&qword_100455580, &qword_1003523E8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A8A0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001683C4();
  sub_10002B6E4(&qword_100455588, &qword_100455580, &qword_1003523E8, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_100167900(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

void (*sub_100167974(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

unint64_t sub_100167A10()
{
  result = qword_10044A9E0;
  if (!qword_10044A9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A9E0);
  }

  return result;
}

unint64_t sub_100167A68()
{
  result = qword_10044A9E8;
  if (!qword_10044A9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A9E8);
  }

  return result;
}

uint64_t sub_100167B64(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100166E80(a1, v5, v4);
}

uint64_t sub_100167C10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002AE12C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100167C58()
{
  result = qword_10044A9F0;
  if (!qword_10044A9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A9F0);
  }

  return result;
}

unint64_t sub_100167CB0()
{
  result = qword_10044A9F8;
  if (!qword_10044A9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A9F8);
  }

  return result;
}

uint64_t sub_100167D24()
{
  v1 = *(v0 + 16);
  *v1 = AXHACHearingAidComplianceEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100167DB8()
{
  AXHACHearingAidComplianceSetEnabled();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100167E1C(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100167EAC, 0, 0);
}

uint64_t sub_100167EAC()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044A9D8, qword_10030FF18);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455558, &qword_100455560, &qword_1003523C0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000028;
  v1[1] = 0x800000010035EF20;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_100167FF8()
{
  result = qword_10044AA00;
  if (!qword_10044AA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AA00);
  }

  return result;
}

uint64_t sub_10016804C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10016861C();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100168100()
{
  result = qword_10044AA08;
  if (!qword_10044AA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AA08);
  }

  return result;
}

unint64_t sub_100168158()
{
  result = qword_10044AA10;
  if (!qword_10044AA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AA10);
  }

  return result;
}

unint64_t sub_1001681B0()
{
  result = qword_10044AA18;
  if (!qword_10044AA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AA18);
  }

  return result;
}

uint64_t sub_100168204(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10016861C();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1001682B8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10016861C();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10016836C()
{
  result = qword_10044AA20;
  if (!qword_10044AA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AA20);
  }

  return result;
}

unint64_t sub_1001683C4()
{
  result = qword_10044AA28;
  if (!qword_10044AA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AA28);
  }

  return result;
}

uint64_t sub_10016845C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100167FF8();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100168514()
{
  result = qword_10044AA40;
  if (!qword_10044AA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AA40);
  }

  return result;
}

unint64_t sub_10016856C()
{
  result = qword_10044AA48;
  if (!qword_10044AA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AA48);
  }

  return result;
}

unint64_t sub_1001685C4()
{
  result = qword_10044AA50;
  if (!qword_10044AA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AA50);
  }

  return result;
}

unint64_t sub_10016861C()
{
  result = qword_10044AA58;
  if (!qword_10044AA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AA58);
  }

  return result;
}

uint64_t sub_100168670()
{
  v0 = qword_100446E38;

  return v0;
}

unint64_t sub_1001686AC()
{
  result = qword_10044AA60;
  if (!qword_10044AA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AA60);
  }

  return result;
}

uint64_t sub_100168700(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100455548, &qword_1003523A0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100455550, &qword_1003523A8);
  __chkstk_darwin(v5);
  sub_1001681B0();
  sub_1002D8800();
  v8._object = 0x8000000100373AF0;
  v8._countAndFlagsBits = 0xD000000000000037;
  sub_1002D87F0(v8);
  (*(v2 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v1);
  sub_1002D87E0();
  (*(v2 + 8))(v4, v1);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_1002D87F0(v9);
  return sub_1002D8810();
}

unint64_t sub_1001688C8()
{
  result = qword_10044AA68;
  if (!qword_10044AA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AA68);
  }

  return result;
}

unint64_t sub_100168920()
{
  result = qword_10044AA70;
  if (!qword_10044AA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AA70);
  }

  return result;
}

unint64_t sub_100168978()
{
  result = qword_10044AA78;
  if (!qword_10044AA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AA78);
  }

  return result;
}

uint64_t sub_1001689CC(uint64_t a1)
{
  sub_1002D563C();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100168AB4(uint64_t a1)
{
  v2 = sub_1001681B0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100168B04()
{
  result = qword_10044AA90;
  if (!qword_10044AA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AA90);
  }

  return result;
}

uint64_t sub_100168B5C(uint64_t a1)
{
  v2 = sub_100168978();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100168BAC()
{
  result = qword_10044AA98;
  if (!qword_10044AA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AA98);
  }

  return result;
}

uint64_t sub_100168C44()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051DAC8);
  sub_10001EDB8(v5, qword_10051DAC8);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_100168DB4@<X0>(uint64_t a1@<X8>)
{
  v17[0] = a1;
  v1 = sub_1002D8990();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1002D8900();
  __chkstk_darwin(v2 - 8);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1002D8CF0();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  __chkstk_darwin(v6 - 8);
  v8 = v17 - v7;
  v9 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v9 - 8);
  v11 = v17 - v10;
  v12 = sub_1002D8910();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  __chkstk_darwin(v14);
  sub_1002D88F0();
  sub_1002D88F0();
  (*(v13 + 56))(v11, 0, 1, v12);
  sub_1002D8690();
  v15 = sub_1002D86B0();
  (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
  sub_1002D8CE0();
  sub_1000B4F14(v4);
  sub_1002D8980();
  sub_1002D8920();
  return sub_1002D86D0();
}

uint64_t sub_100169130()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051DAE0);
  sub_10001EDB8(v0, qword_10051DAE0);
  return sub_1002D88F0();
}

uint64_t sub_100169194()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051DAF8);
  v1 = sub_10001EDB8(v0, qword_10051DAF8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100169254()
{
  result = swift_getKeyPath();
  qword_10051DB10 = result;
  return result;
}

uint64_t sub_10016927C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100455520, &qword_100352360);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100455528, &qword_100352368);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10016945C, 0, 0);
}

uint64_t sub_10016945C()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_10016A614();
  *v2 = v0;
  v2[1] = sub_100169540;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6F14, 0, &type metadata for AccessibilityLeftRightBalanceEnabledEntity, v3);
}

uint64_t sub_100169540()
{

  return _swift_task_switch(sub_10016963C, 0, 0);
}

uint64_t sub_10016963C()
{
  sub_1002D85B0();
  *(v0 + 88) = *(v0 + 64);
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  *(v0 + 272) = v1;
  *(v0 + 280) = v2;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  sub_1002D85B0();
  *(v0 + 313) = *(v0 + 312);
  if (qword_10043A8C0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051DB10;
  *(v0 + 288) = qword_10051DB10;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100455508, &qword_100455510, &qword_100352348, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1001697A0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1001697A0()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_100169910;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100169910()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[30];
  v11 = v0[32];
  v12 = v0[28];
  v14 = v0[27];
  v15 = v0[26];
  v4 = v0[23];
  v5 = v0[24];
  sub_1002D85B0();
  v6 = v0[15];
  v13 = v0[16];
  v0[17] = v0[14];
  v0[18] = v6;
  v0[19] = v13;
  v7 = sub_1002D8820();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = sub_1002D8850();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_100168BAC();
  sub_10016A828();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100169B88()
{
  v0 = sub_10000321C(&qword_100455530, &qword_100352370);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A8C0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10016A828();
  sub_10002B6E4(&qword_100455538, &qword_100455530, &qword_100352370, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_100169CFC(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

void (*sub_100169D70(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

unint64_t sub_100169E0C()
{
  result = qword_10044AAB0;
  if (!qword_10044AAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AAB0);
  }

  return result;
}

unint64_t sub_100169E64()
{
  result = qword_10044AAB8;
  if (!qword_10044AAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AAB8);
  }

  return result;
}

uint64_t sub_100169F60(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10016927C(a1, v5, v4);
}

uint64_t sub_10016A00C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002AE594();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10016A054()
{
  result = qword_10044AAC0;
  if (!qword_10044AAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AAC0);
  }

  return result;
}

unint64_t sub_10016A0AC()
{
  result = qword_10044AAC8;
  if (!qword_10044AAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AAC8);
  }

  return result;
}

uint64_t sub_10016A120()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 leftRightBalanceEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10016A1E8()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setLeftRightBalanceEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10016A280(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10016A310, 0, 0);
}

uint64_t sub_10016A310()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044AAA8, qword_100310550);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455508, &qword_100455510, &qword_100352348, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000023;
  v1[1] = 0x800000010035DF80;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_10016A45C()
{
  result = qword_10044AAD0;
  if (!qword_10044AAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AAD0);
  }

  return result;
}

uint64_t sub_10016A4B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10016AA80();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10016A564()
{
  result = qword_10044AAD8;
  if (!qword_10044AAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AAD8);
  }

  return result;
}

unint64_t sub_10016A5BC()
{
  result = qword_10044AAE0;
  if (!qword_10044AAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AAE0);
  }

  return result;
}

unint64_t sub_10016A614()
{
  result = qword_10044AAE8;
  if (!qword_10044AAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AAE8);
  }

  return result;
}

uint64_t sub_10016A668(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10016AA80();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10016A71C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10016AA80();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10016A7D0()
{
  result = qword_10044AAF0;
  if (!qword_10044AAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AAF0);
  }

  return result;
}

unint64_t sub_10016A828()
{
  result = qword_10044AAF8;
  if (!qword_10044AAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AAF8);
  }

  return result;
}

uint64_t sub_10016A8C0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10016A45C();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10016A978()
{
  result = qword_10044AB10;
  if (!qword_10044AB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AB10);
  }

  return result;
}

unint64_t sub_10016A9D0()
{
  result = qword_10044AB18;
  if (!qword_10044AB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AB18);
  }

  return result;
}

unint64_t sub_10016AA28()
{
  result = qword_10044AB20;
  if (!qword_10044AB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AB20);
  }

  return result;
}

unint64_t sub_10016AA80()
{
  result = qword_10044AB28;
  if (!qword_10044AB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AB28);
  }

  return result;
}

uint64_t sub_10016AAD4()
{
  v0 = qword_100446E48;

  return v0;
}

unint64_t sub_10016AB10()
{
  result = qword_10044AB30;
  if (!qword_10044AB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AB30);
  }

  return result;
}

uint64_t sub_10016AB64(uint64_t a1)
{
  v1 = sub_10000321C(&qword_1004554F8, &qword_100352328);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100455500, &qword_100352330);
  __chkstk_darwin(v5);
  sub_10016A614();
  sub_1002D8800();
  v8._object = 0x8000000100373AF0;
  v8._countAndFlagsBits = 0xD000000000000037;
  sub_1002D87F0(v8);
  (*(v2 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v1);
  sub_1002D87E0();
  (*(v2 + 8))(v4, v1);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_1002D87F0(v9);
  return sub_1002D8810();
}

unint64_t sub_10016AD2C()
{
  result = qword_10044AB38;
  if (!qword_10044AB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AB38);
  }

  return result;
}

unint64_t sub_10016AD84()
{
  result = qword_10044AB40;
  if (!qword_10044AB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AB40);
  }

  return result;
}

unint64_t sub_10016ADDC()
{
  result = qword_10044AB48;
  if (!qword_10044AB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AB48);
  }

  return result;
}

uint64_t sub_10016AE30(uint64_t a1)
{
  sub_1002D55E8();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10016AF18(uint64_t a1)
{
  v2 = sub_10016A614();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10016AF68()
{
  result = qword_10044AB60;
  if (!qword_10044AB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AB60);
  }

  return result;
}

uint64_t sub_10016AFC0(uint64_t a1)
{
  v2 = sub_10016ADDC();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10016B010()
{
  result = qword_10044AB68;
  if (!qword_10044AB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AB68);
  }

  return result;
}

uint64_t sub_10016B0CC@<X0>(uint64_t a1@<X8>)
{
  v17[0] = a1;
  v1 = sub_1002D8990();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1002D8900();
  __chkstk_darwin(v2 - 8);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1002D8CF0();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  __chkstk_darwin(v6 - 8);
  v8 = v17 - v7;
  v9 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v9 - 8);
  v11 = v17 - v10;
  v12 = sub_1002D8910();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  __chkstk_darwin(v14);
  sub_1002D88F0();
  sub_1002D88F0();
  (*(v13 + 56))(v11, 0, 1, v12);
  sub_1002D8690();
  v15 = sub_1002D86B0();
  (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
  sub_1002D8CE0();
  sub_1000B4F14(v4);
  sub_1002D8980();
  sub_1002D8920();
  return sub_1002D86D0();
}

uint64_t sub_10016B440()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051DB30);
  sub_10001EDB8(v0, qword_10051DB30);
  return sub_1002D88F0();
}

uint64_t sub_10016B4A4()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051DB48);
  v1 = sub_10001EDB8(v0, qword_10051DB48);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10016B564()
{
  result = swift_getKeyPath();
  qword_10051DB60 = result;
  return result;
}

uint64_t sub_10016B58C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_1004554D0, &qword_1003522E8);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_1004554D8, &qword_1003522F0);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10016B76C, 0, 0);
}

uint64_t sub_10016B76C()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_10016C8AC();
  *v2 = v0;
  v2[1] = sub_10016B850;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6F18, 0, &type metadata for AccessibilityHoverTextEnabledEntity, v3);
}

uint64_t sub_10016B850()
{

  return _swift_task_switch(sub_10016B94C, 0, 0);
}

uint64_t sub_10016B94C()
{
  sub_1002D85B0();
  *(v0 + 88) = *(v0 + 64);
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  *(v0 + 272) = v1;
  *(v0 + 280) = v2;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  sub_1002D85B0();
  *(v0 + 313) = *(v0 + 312);
  if (qword_10043A8E0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051DB60;
  *(v0 + 288) = qword_10051DB60;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_1004554B8, &qword_1004554C0, &qword_1003522D0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_10016BAB0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_10016BAB0()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_10016BC20;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10016BC20()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[30];
  v11 = v0[32];
  v12 = v0[28];
  v14 = v0[27];
  v15 = v0[26];
  v4 = v0[23];
  v5 = v0[24];
  sub_1002D85B0();
  v6 = v0[15];
  v13 = v0[16];
  v0[17] = v0[14];
  v0[18] = v6;
  v0[19] = v13;
  v7 = sub_1002D8820();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = sub_1002D8850();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_10016B010();
  sub_10016CAC0();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10016BE98()
{
  v0 = sub_10000321C(&qword_1004554E0, &qword_1003522F8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A8E0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10016CAC0();
  sub_10002B6E4(&qword_1004554E8, &qword_1004554E0, &qword_1003522F8, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_10016C00C(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

void (*sub_10016C080(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

unint64_t sub_10016C11C()
{
  result = qword_10044AB80;
  if (!qword_10044AB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AB80);
  }

  return result;
}

unint64_t sub_10016C174()
{
  result = qword_10044AB88;
  if (!qword_10044AB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AB88);
  }

  return result;
}

uint64_t sub_10016C270(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10016B58C(a1, v5, v4);
}

uint64_t sub_10016C31C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002AE9FC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10016C364()
{
  result = qword_10044AB90;
  if (!qword_10044AB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AB90);
  }

  return result;
}

unint64_t sub_10016C3BC()
{
  result = qword_10044AB98;
  if (!qword_10044AB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AB98);
  }

  return result;
}

uint64_t sub_10016C430()
{
  v1 = *(v0 + 16);
  *v1 = _AXSHoverTextEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10016C4C4()
{
  _AXSHoverTextSetEnabled();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10016C528(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10016C5B8, 0, 0);
}

uint64_t sub_10016C5B8()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044AB78, qword_100310B88);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004554B8, &qword_1004554C0, &qword_1003522D0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0x5845545245564F48;
  v1[1] = 0xEF454C5449545F54;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_10016C6F4()
{
  result = qword_10044ABA0;
  if (!qword_10044ABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ABA0);
  }

  return result;
}

uint64_t sub_10016C748(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10016CD18();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10016C7FC()
{
  result = qword_10044ABA8;
  if (!qword_10044ABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ABA8);
  }

  return result;
}

unint64_t sub_10016C854()
{
  result = qword_10044ABB0;
  if (!qword_10044ABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ABB0);
  }

  return result;
}

unint64_t sub_10016C8AC()
{
  result = qword_10044ABB8;
  if (!qword_10044ABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ABB8);
  }

  return result;
}

uint64_t sub_10016C900(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10016CD18();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10016C9B4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10016CD18();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10016CA68()
{
  result = qword_10044ABC0;
  if (!qword_10044ABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ABC0);
  }

  return result;
}

unint64_t sub_10016CAC0()
{
  result = qword_10044ABC8;
  if (!qword_10044ABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ABC8);
  }

  return result;
}

uint64_t sub_10016CB58(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10016C6F4();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10016CC10()
{
  result = qword_10044ABE0;
  if (!qword_10044ABE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ABE0);
  }

  return result;
}

unint64_t sub_10016CC68()
{
  result = qword_10044ABE8;
  if (!qword_10044ABE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ABE8);
  }

  return result;
}

unint64_t sub_10016CCC0()
{
  result = qword_10044ABF0;
  if (!qword_10044ABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ABF0);
  }

  return result;
}

unint64_t sub_10016CD18()
{
  result = qword_10044ABF8;
  if (!qword_10044ABF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ABF8);
  }

  return result;
}

uint64_t sub_10016CD6C()
{
  v0 = qword_100446E58;

  return v0;
}

unint64_t sub_10016CDA8()
{
  result = qword_10044AC00;
  if (!qword_10044AC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AC00);
  }

  return result;
}

uint64_t sub_10016CDFC(uint64_t a1)
{
  v1 = sub_10000321C(&qword_1004554A8, &qword_1003522B0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_1004554B0, &qword_1003522B8);
  __chkstk_darwin(v5);
  sub_10016C8AC();
  sub_1002D8800();
  v8._object = 0x8000000100373AF0;
  v8._countAndFlagsBits = 0xD000000000000037;
  sub_1002D87F0(v8);
  (*(v2 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v1);
  sub_1002D87E0();
  (*(v2 + 8))(v4, v1);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_1002D87F0(v9);
  return sub_1002D8810();
}

unint64_t sub_10016CFC4()
{
  result = qword_10044AC08;
  if (!qword_10044AC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AC08);
  }

  return result;
}

unint64_t sub_10016D01C()
{
  result = qword_10044AC10;
  if (!qword_10044AC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AC10);
  }

  return result;
}

unint64_t sub_10016D074()
{
  result = qword_10044AC18;
  if (!qword_10044AC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AC18);
  }

  return result;
}

uint64_t sub_10016D0C8(uint64_t a1)
{
  sub_1002D5594();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10016D1B0(uint64_t a1)
{
  v2 = sub_10016C8AC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10016D200()
{
  result = qword_10044AC30;
  if (!qword_10044AC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AC30);
  }

  return result;
}

uint64_t sub_10016D258(uint64_t a1)
{
  v2 = sub_10016D074();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10016D2A8()
{
  result = qword_10044AC38;
  if (!qword_10044AC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AC38);
  }

  return result;
}

uint64_t sub_10016D340()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051DB68);
  sub_10001EDB8(v5, qword_10051DB68);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_10016D4B0@<X0>(uint64_t a1@<X8>)
{
  v17[0] = a1;
  v1 = sub_1002D8990();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1002D8900();
  __chkstk_darwin(v2 - 8);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1002D8CF0();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  __chkstk_darwin(v6 - 8);
  v8 = v17 - v7;
  v9 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v9 - 8);
  v11 = v17 - v10;
  v12 = sub_1002D8910();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  __chkstk_darwin(v14);
  sub_1002D88F0();
  sub_1002D88F0();
  (*(v13 + 56))(v11, 0, 1, v12);
  sub_1002D8690();
  v15 = sub_1002D86B0();
  (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
  sub_1002D8CE0();
  sub_1000B4F14(v4);
  sub_1002D8980();
  sub_1002D8920();
  return sub_1002D86D0();
}

uint64_t sub_10016D838()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051DB80);
  sub_10001EDB8(v0, qword_10051DB80);
  return sub_1002D88F0();
}

uint64_t sub_10016D89C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051DB98);
  v1 = sub_10001EDB8(v0, qword_10051DB98);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10016D95C()
{
  result = swift_getKeyPath();
  qword_10051DBB0 = result;
  return result;
}

uint64_t sub_10016D984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100455480, &qword_100352270);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100455488, &qword_100352278);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10016DB64, 0, 0);
}

uint64_t sub_10016DB64()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_10016ECB4();
  *v2 = v0;
  v2[1] = sub_10016DC48;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6F1C, 0, &type metadata for AccessibilityFullKeyboardAccessEnabledEntity, v3);
}

uint64_t sub_10016DC48()
{

  return _swift_task_switch(sub_10016DD44, 0, 0);
}

uint64_t sub_10016DD44()
{
  sub_1002D85B0();
  *(v0 + 88) = *(v0 + 64);
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  *(v0 + 272) = v1;
  *(v0 + 280) = v2;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  sub_1002D85B0();
  *(v0 + 313) = *(v0 + 312);
  if (qword_10043A900 != -1)
  {
    swift_once();
  }

  v3 = qword_10051DBB0;
  *(v0 + 288) = qword_10051DBB0;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100455468, &qword_100455470, &qword_100352258, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_10016DEA8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_10016DEA8()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_10016E018;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10016E018()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[30];
  v11 = v0[32];
  v12 = v0[28];
  v14 = v0[27];
  v15 = v0[26];
  v4 = v0[23];
  v5 = v0[24];
  sub_1002D85B0();
  v6 = v0[15];
  v13 = v0[16];
  v0[17] = v0[14];
  v0[18] = v6;
  v0[19] = v13;
  v7 = sub_1002D8820();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = sub_1002D8850();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_10016D2A8();
  sub_10016EEC8();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10016E290()
{
  v0 = sub_10000321C(&qword_100455490, &qword_100352280);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A900 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10016EEC8();
  sub_10002B6E4(&qword_100455498, &qword_100455490, &qword_100352280, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_10016E404(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

void (*sub_10016E478(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

unint64_t sub_10016E514()
{
  result = qword_10044AC50;
  if (!qword_10044AC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AC50);
  }

  return result;
}

unint64_t sub_10016E56C()
{
  result = qword_10044AC58;
  if (!qword_10044AC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AC58);
  }

  return result;
}

uint64_t sub_10016E668(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10016D984(a1, v5, v4);
}

uint64_t sub_10016E714@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002AEE64();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10016E75C()
{
  result = qword_10044AC60;
  if (!qword_10044AC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AC60);
  }

  return result;
}

unint64_t sub_10016E7B4()
{
  result = qword_10044AC68;
  if (!qword_10044AC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AC68);
  }

  return result;
}

uint64_t sub_10016E828()
{
  v1 = *(v0 + 16);
  *v1 = _AXSFullKeyboardAccessEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10016E8BC()
{
  _AXSFullKeyboardAccessSetEnabled();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10016E920(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10016E9B0, 0, 0);
}

uint64_t sub_10016E9B0()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044AC48, qword_1003111C0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455468, &qword_100455470, &qword_100352258, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD00000000000002FLL;
  v1[1] = 0x800000010035F260;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_10016EAFC()
{
  result = qword_10044AC70;
  if (!qword_10044AC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AC70);
  }

  return result;
}