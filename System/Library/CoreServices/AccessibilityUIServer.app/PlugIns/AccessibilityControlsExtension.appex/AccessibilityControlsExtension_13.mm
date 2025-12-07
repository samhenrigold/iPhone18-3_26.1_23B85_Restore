uint64_t sub_1001B2A98()
{
  v1 = v0[32];
  v2 = v0[30];
  v3 = v0[31];
  v11 = v0[33];
  v12 = v0[29];
  v14 = v0[28];
  v15 = v0[27];
  v4 = v0[24];
  v5 = v0[25];
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
  sub_1001B1E80();
  sub_1001B39AC();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001B2D10()
{
  v0 = sub_10000321C(&qword_100454AE0, &qword_1003513F8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043ACE0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001B39AC();
  sub_10002B6E4(&qword_100454AE8, &qword_100454AE0, &qword_1003513F8, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1001B2E84(uint64_t *a1))(void *)
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

void (*sub_1001B2EF8(uint64_t *a1))(void *)
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

unint64_t sub_1001B2F94()
{
  result = qword_10044C578;
  if (!qword_10044C578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C578);
  }

  return result;
}

unint64_t sub_1001B2FEC()
{
  result = qword_10044C580;
  if (!qword_10044C580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C580);
  }

  return result;
}

uint64_t sub_1001B30E8(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001B240C(a1, v5, v4);
}

uint64_t sub_1001B3194@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B76E4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001B31DC()
{
  result = qword_10044C588;
  if (!qword_10044C588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C588);
  }

  return result;
}

unint64_t sub_1001B3234()
{
  result = qword_10044C590;
  if (!qword_10044C590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C590);
  }

  return result;
}

uint64_t sub_1001B32A8()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 assistiveTouchMouseKeysMaxSpeed];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001B3370()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setAssistiveTouchMouseKeysMaxSpeed:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001B3408(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001B3498, 0, 0);
}

uint64_t sub_1001B3498()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044C570, qword_10031D288);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454AA8, &qword_100454AB0, &qword_1003513C0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88C0();
  *v1 = 0xD00000000000004DLL;
  v1[1] = 0x800000010035D8A0;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1001B35E0()
{
  result = qword_10044C598;
  if (!qword_10044C598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C598);
  }

  return result;
}

uint64_t sub_1001B3634(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001B3C04();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1001B36E8()
{
  result = qword_10044C5A0;
  if (!qword_10044C5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C5A0);
  }

  return result;
}

unint64_t sub_1001B3740()
{
  result = qword_10044C5A8;
  if (!qword_10044C5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C5A8);
  }

  return result;
}

unint64_t sub_1001B3798()
{
  result = qword_10044C5B0;
  if (!qword_10044C5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C5B0);
  }

  return result;
}

uint64_t sub_1001B37EC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001B3C04();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1001B38A0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001B3C04();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1001B3954()
{
  result = qword_10044C5B8;
  if (!qword_10044C5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C5B8);
  }

  return result;
}

unint64_t sub_1001B39AC()
{
  result = qword_10044C5C0;
  if (!qword_10044C5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C5C0);
  }

  return result;
}

uint64_t sub_1001B3A44(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001B35E0();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1001B3AFC()
{
  result = qword_10044C5D8;
  if (!qword_10044C5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C5D8);
  }

  return result;
}

unint64_t sub_1001B3B54()
{
  result = qword_10044C5E0;
  if (!qword_10044C5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C5E0);
  }

  return result;
}

unint64_t sub_1001B3BAC()
{
  result = qword_10044C5E8;
  if (!qword_10044C5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C5E8);
  }

  return result;
}

unint64_t sub_1001B3C04()
{
  result = qword_10044C5F0;
  if (!qword_10044C5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C5F0);
  }

  return result;
}

uint64_t sub_1001B3C58()
{
  v0 = qword_100447058;

  return v0;
}

unint64_t sub_1001B3C94()
{
  result = qword_10044C5F8;
  if (!qword_10044C5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C5F8);
  }

  return result;
}

uint64_t sub_1001B3CE8(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100454A98, &qword_1003513A0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100454AA0, &qword_1003513A8);
  __chkstk_darwin(v5);
  sub_1001B3798();
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

unint64_t sub_1001B3EB0()
{
  result = qword_10044C600;
  if (!qword_10044C600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C600);
  }

  return result;
}

unint64_t sub_1001B3F08()
{
  result = qword_10044C608;
  if (!qword_10044C608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C608);
  }

  return result;
}

unint64_t sub_1001B3F60()
{
  result = qword_10044C610;
  if (!qword_10044C610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C610);
  }

  return result;
}

uint64_t sub_1001B3FB4(uint64_t a1)
{
  sub_1002D4B14();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1001B409C(uint64_t a1)
{
  v2 = sub_1001B3798();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001B40EC()
{
  result = qword_10044C628;
  if (!qword_10044C628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C628);
  }

  return result;
}

uint64_t sub_1001B4144(uint64_t a1)
{
  v2 = sub_1001B3F60();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001B4194()
{
  result = qword_10044C630;
  if (!qword_10044C630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C630);
  }

  return result;
}

uint64_t sub_1001B422C()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051E568);
  sub_10001EDB8(v5, qword_10051E568);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_1001B439C@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001B4718()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051E580);
  sub_10001EDB8(v0, qword_10051E580);
  return sub_1002D88F0();
}

uint64_t sub_1001B477C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051E598);
  v1 = sub_10001EDB8(v0, qword_10051E598);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001B483C()
{
  result = swift_getKeyPath();
  qword_10051E5B0 = result;
  return result;
}

uint64_t sub_1001B4864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100454A70, &qword_100351360);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100454A78, &qword_100351368);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001B4A44, 0, 0);
}

uint64_t sub_1001B4A44()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1001B5BDC();
  *v2 = v0;
  v2[1] = sub_1001B4B28;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6F9C, 0, &type metadata for AccessibilityNameRecognitionEnabledEntity, v3);
}

uint64_t sub_1001B4B28()
{

  return _swift_task_switch(sub_1001B4C24, 0, 0);
}

uint64_t sub_1001B4C24()
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
  if (qword_10043AD00 != -1)
  {
    swift_once();
  }

  v3 = qword_10051E5B0;
  *(v0 + 288) = qword_10051E5B0;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100454A58, &qword_100454A60, &qword_100351348, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1001B4D88;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1001B4D88()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1001B4EF8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001B4EF8()
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
  sub_1001B4194();
  sub_1001B5DF0();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001B5170()
{
  v0 = sub_10000321C(&qword_100454A80, &qword_100351370);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043AD00 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001B5DF0();
  sub_10002B6E4(&qword_100454A88, &qword_100454A80, &qword_100351370, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1001B52E4(uint64_t *a1))(void *)
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

void (*sub_1001B5358(uint64_t *a1))(void *)
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

unint64_t sub_1001B53F4()
{
  result = qword_10044C648;
  if (!qword_10044C648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C648);
  }

  return result;
}

unint64_t sub_1001B544C()
{
  result = qword_10044C650;
  if (!qword_10044C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C650);
  }

  return result;
}

uint64_t sub_1001B5548(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001B4864(a1, v5, v4);
}

uint64_t sub_1001B55F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B7B70();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001B563C()
{
  result = qword_10044C658;
  if (!qword_10044C658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C658);
  }

  return result;
}

unint64_t sub_1001B5694()
{
  result = qword_10044C660;
  if (!qword_10044C660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C660);
  }

  return result;
}

uint64_t sub_1001B5708()
{
  v1 = *(v0 + 16);
  sub_1002D8DD0();
  v2 = sub_1002D8DC0();
  v3 = [v2 isNameRecognitionEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001B57C0()
{
  v1 = *(v0 + 16);
  sub_1002D8DD0();
  v2 = sub_1002D8DC0();
  [v2 setNameRecognitionEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001B5848(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001B58D8, 0, 0);
}

uint64_t sub_1001B58D8()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044C640, qword_10031D8C0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454A58, &qword_100454A60, &qword_100351348, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD00000000000002BLL;
  v1[1] = 0x800000010035DC70;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1001B5A24()
{
  result = qword_10044C668;
  if (!qword_10044C668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C668);
  }

  return result;
}

uint64_t sub_1001B5A78(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001B6048();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1001B5B2C()
{
  result = qword_10044C670;
  if (!qword_10044C670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C670);
  }

  return result;
}

unint64_t sub_1001B5B84()
{
  result = qword_10044C678;
  if (!qword_10044C678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C678);
  }

  return result;
}

unint64_t sub_1001B5BDC()
{
  result = qword_10044C680;
  if (!qword_10044C680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C680);
  }

  return result;
}

uint64_t sub_1001B5C30(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001B6048();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1001B5CE4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001B6048();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1001B5D98()
{
  result = qword_10044C688;
  if (!qword_10044C688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C688);
  }

  return result;
}

unint64_t sub_1001B5DF0()
{
  result = qword_10044C690;
  if (!qword_10044C690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C690);
  }

  return result;
}

uint64_t sub_1001B5E88(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001B5A24();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1001B5F40()
{
  result = qword_10044C6A8;
  if (!qword_10044C6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C6A8);
  }

  return result;
}

unint64_t sub_1001B5F98()
{
  result = qword_10044C6B0;
  if (!qword_10044C6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C6B0);
  }

  return result;
}

unint64_t sub_1001B5FF0()
{
  result = qword_10044C6B8;
  if (!qword_10044C6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C6B8);
  }

  return result;
}

unint64_t sub_1001B6048()
{
  result = qword_10044C6C0;
  if (!qword_10044C6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C6C0);
  }

  return result;
}

uint64_t sub_1001B609C()
{
  v0 = qword_100447068;

  return v0;
}

unint64_t sub_1001B60D8()
{
  result = qword_10044C6C8;
  if (!qword_10044C6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C6C8);
  }

  return result;
}

uint64_t sub_1001B612C(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100454A48, &qword_100351328);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100454A50, &qword_100351330);
  __chkstk_darwin(v5);
  sub_1001B5BDC();
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

unint64_t sub_1001B62F4()
{
  result = qword_10044C6D0;
  if (!qword_10044C6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C6D0);
  }

  return result;
}

unint64_t sub_1001B634C()
{
  result = qword_10044C6D8;
  if (!qword_10044C6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C6D8);
  }

  return result;
}

unint64_t sub_1001B63A4()
{
  result = qword_10044C6E0;
  if (!qword_10044C6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C6E0);
  }

  return result;
}

uint64_t sub_1001B63F8(uint64_t a1)
{
  sub_1002D4AC0();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1001B64E0(uint64_t a1)
{
  v2 = sub_1001B5BDC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001B6530()
{
  result = qword_10044C6F8;
  if (!qword_10044C6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C6F8);
  }

  return result;
}

uint64_t sub_1001B6588(uint64_t a1)
{
  v2 = sub_1001B63A4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001B65D8()
{
  result = qword_10044C700;
  if (!qword_10044C700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C700);
  }

  return result;
}

uint64_t sub_1001B6698@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001B6A10()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051E5D0);
  sub_10001EDB8(v0, qword_10051E5D0);
  return sub_1002D88F0();
}

uint64_t sub_1001B6A74()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051E5E8);
  v1 = sub_10001EDB8(v0, qword_10051E5E8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001B6B34()
{
  result = swift_getKeyPath();
  qword_10051E600 = result;
  return result;
}

uint64_t sub_1001B6B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100454A20, &qword_1003512E8);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100454A28, &qword_1003512F0);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001B6D3C, 0, 0);
}

uint64_t sub_1001B6D3C()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1001B7EE8();
  *v2 = v0;
  v2[1] = sub_1001B6E20;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6FA0, 0, &type metadata for AccessibilitySideButtonClickSpeedEntity, v3);
}

uint64_t sub_1001B6E20()
{

  return _swift_task_switch(sub_1001B6F1C, 0, 0);
}

uint64_t sub_1001B6F1C()
{
  sub_1002D85B0();
  v0[11] = v0[8];
  v1 = v0[9];
  v2 = v0[10];
  v0[34] = v1;
  v0[35] = v2;
  v0[12] = v1;
  v0[13] = v2;
  sub_1002D85B0();
  if (qword_10043AD20 != -1)
  {
    swift_once();
  }

  v3 = qword_10051E600;
  v0[36] = qword_10051E600;

  v4 = swift_task_alloc();
  v0[37] = v4;
  v5 = sub_10002B6E4(&qword_100454A00, &qword_100454A08, &qword_1003512C8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1001B7078;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 39, v3, &type metadata for AXClickSpeedAppEnum, v5);
}

uint64_t sub_1001B7078()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1001B71E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001B71E8()
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
  sub_1001B65D8();
  sub_1001B80FC();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001B7460()
{
  v0 = sub_10000321C(&qword_100454A30, &qword_1003512F8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043AD20 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001B80FC();
  sub_10002B6E4(&qword_100454A38, &qword_100454A30, &qword_1003512F8, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1001B75D4(uint64_t *a1))(void *)
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

void (*sub_1001B7648(uint64_t *a1))(void *)
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

unint64_t sub_1001B76E4()
{
  result = qword_10044C718;
  if (!qword_10044C718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C718);
  }

  return result;
}

unint64_t sub_1001B773C()
{
  result = qword_10044C720;
  if (!qword_10044C720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C720);
  }

  return result;
}

uint64_t sub_1001B7838(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001B6B5C(a1, v5, v4);
}

uint64_t sub_1001B78E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B7FD8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001B792C()
{
  result = qword_10044C728;
  if (!qword_10044C728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C728);
  }

  return result;
}

uint64_t sub_1001B79A4()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  _AXSSideButtonClickSpeed();
  v3 = fabsf(v2 + -0.7) < 0.01;
  if (fabsf(v2 + -1.2) < 0.01)
  {
    v3 = 2;
  }

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001B7AA8()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  _AXSSetSideButtonClickSpeed();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001B7B48(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001B7BD8, 0, 0);
}

uint64_t sub_1001B7BD8()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044C710, &qword_10031DEF8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454A00, &qword_100454A08, &qword_1003512C8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  sub_1000182AC();
  v2 = sub_1002D8890();
  *v1 = 0xD000000000000022;
  v1[1] = 0x8000000100360610;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1001B7D30()
{
  result = qword_10044C730;
  if (!qword_10044C730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C730);
  }

  return result;
}

uint64_t sub_1001B7D84(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001B8354();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1001B7E38()
{
  result = qword_10044C738;
  if (!qword_10044C738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C738);
  }

  return result;
}

unint64_t sub_1001B7E90()
{
  result = qword_10044C740;
  if (!qword_10044C740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C740);
  }

  return result;
}

unint64_t sub_1001B7EE8()
{
  result = qword_10044C748;
  if (!qword_10044C748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C748);
  }

  return result;
}

uint64_t sub_1001B7F3C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001B8354();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1001B7FF0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001B8354();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1001B80A4()
{
  result = qword_10044C750;
  if (!qword_10044C750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C750);
  }

  return result;
}

unint64_t sub_1001B80FC()
{
  result = qword_10044C758;
  if (!qword_10044C758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C758);
  }

  return result;
}

uint64_t sub_1001B8194(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001B7D30();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1001B824C()
{
  result = qword_10044C770;
  if (!qword_10044C770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C770);
  }

  return result;
}

unint64_t sub_1001B82A4()
{
  result = qword_10044C778;
  if (!qword_10044C778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C778);
  }

  return result;
}

unint64_t sub_1001B82FC()
{
  result = qword_10044C780;
  if (!qword_10044C780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C780);
  }

  return result;
}

unint64_t sub_1001B8354()
{
  result = qword_10044C788;
  if (!qword_10044C788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C788);
  }

  return result;
}

uint64_t sub_1001B83A8()
{
  v0 = qword_100447078;

  return v0;
}

unint64_t sub_1001B83E4()
{
  result = qword_10044C790;
  if (!qword_10044C790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C790);
  }

  return result;
}

uint64_t sub_1001B8438(uint64_t a1)
{
  v1 = sub_10000321C(&qword_1004549F0, &qword_1003512A8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_1004549F8, &qword_1003512B0);
  __chkstk_darwin(v5);
  sub_1001B7EE8();
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

unint64_t sub_1001B8600()
{
  result = qword_10044C798;
  if (!qword_10044C798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C798);
  }

  return result;
}

unint64_t sub_1001B8658()
{
  result = qword_10044C7A0;
  if (!qword_10044C7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C7A0);
  }

  return result;
}

unint64_t sub_1001B86B0()
{
  result = qword_10044C7A8;
  if (!qword_10044C7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C7A8);
  }

  return result;
}

uint64_t sub_1001B8704(uint64_t a1)
{
  sub_1002D4A6C();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1001B87EC(uint64_t a1)
{
  v2 = sub_1001B7EE8();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001B883C()
{
  result = qword_10044C7C0;
  if (!qword_10044C7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C7C0);
  }

  return result;
}

uint64_t sub_1001B8894(uint64_t a1)
{
  v2 = sub_1001B86B0();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001B88E4()
{
  result = qword_10044C7C8;
  if (!qword_10044C7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C7C8);
  }

  return result;
}

uint64_t sub_1001B89A4@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001B8D1C()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051E620);
  sub_10001EDB8(v0, qword_10051E620);
  return sub_1002D88F0();
}

uint64_t sub_1001B8D80()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051E638);
  v1 = sub_10001EDB8(v0, qword_10051E638);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001B8E40()
{
  result = swift_getKeyPath();
  qword_10051E650 = result;
  return result;
}

uint64_t sub_1001B8E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_1004549C8, &qword_100351268);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_1004549D0, &qword_100351270);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001B9048, 0, 0);
}

uint64_t sub_1001B9048()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1001BA188();
  *v2 = v0;
  v2[1] = sub_1001B912C;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6FA4, 0, &type metadata for AccessibilitySiriTypeToSiriEntity, v3);
}

uint64_t sub_1001B912C()
{

  return _swift_task_switch(sub_1001B9228, 0, 0);
}

uint64_t sub_1001B9228()
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
  if (qword_10043AD40 != -1)
  {
    swift_once();
  }

  v3 = qword_10051E650;
  *(v0 + 288) = qword_10051E650;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_1004549B0, &qword_1004549B8, &qword_100351250, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1001B938C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1001B938C()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1001B94FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001B94FC()
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
  sub_1001B88E4();
  sub_1001BA39C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001B9774()
{
  v0 = sub_10000321C(&qword_1004549D8, &qword_100351278);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043AD40 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001BA39C();
  sub_10002B6E4(&qword_1004549E0, &qword_1004549D8, &qword_100351278, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1001B98E8(uint64_t *a1))(void *)
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

void (*sub_1001B995C(uint64_t *a1))(void *)
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

unint64_t sub_1001B99F8()
{
  result = qword_10044C7E0;
  if (!qword_10044C7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C7E0);
  }

  return result;
}

unint64_t sub_1001B9A50()
{
  result = qword_10044C7E8;
  if (!qword_10044C7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C7E8);
  }

  return result;
}

uint64_t sub_1001B9B4C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001B8E68(a1, v5, v4);
}

uint64_t sub_1001B9BF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B83DC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001B9C40()
{
  result = qword_10044C7F0;
  if (!qword_10044C7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C7F0);
  }

  return result;
}

unint64_t sub_1001B9C98()
{
  result = qword_10044C7F8;
  if (!qword_10044C7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C7F8);
  }

  return result;
}

uint64_t sub_1001B9D0C()
{
  v1 = *(v0 + 16);
  *v1 = AFPreferencesTypeToSiriEnabled();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001B9D98()
{
  AFPreferencesSetTypeToSiriEnabled();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001B9DFC(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001B9E8C, 0, 0);
}

uint64_t sub_1001B9E8C()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044C7D8, qword_10031E530);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004549B0, &qword_1004549B8, &qword_100351250, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD00000000000002ELL;
  v1[1] = 0x800000010035A6E0;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1001B9FD0()
{
  result = qword_10044C800;
  if (!qword_10044C800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C800);
  }

  return result;
}

uint64_t sub_1001BA024(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001BA5F4();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1001BA0D8()
{
  result = qword_10044C808;
  if (!qword_10044C808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C808);
  }

  return result;
}

unint64_t sub_1001BA130()
{
  result = qword_10044C810;
  if (!qword_10044C810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C810);
  }

  return result;
}

unint64_t sub_1001BA188()
{
  result = qword_10044C818;
  if (!qword_10044C818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C818);
  }

  return result;
}

uint64_t sub_1001BA1DC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001BA5F4();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1001BA290(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001BA5F4();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1001BA344()
{
  result = qword_10044C820;
  if (!qword_10044C820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C820);
  }

  return result;
}

unint64_t sub_1001BA39C()
{
  result = qword_10044C828;
  if (!qword_10044C828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C828);
  }

  return result;
}

uint64_t sub_1001BA434(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001B9FD0();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1001BA4EC()
{
  result = qword_10044C840;
  if (!qword_10044C840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C840);
  }

  return result;
}

unint64_t sub_1001BA544()
{
  result = qword_10044C848;
  if (!qword_10044C848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C848);
  }

  return result;
}

unint64_t sub_1001BA59C()
{
  result = qword_10044C850;
  if (!qword_10044C850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C850);
  }

  return result;
}

unint64_t sub_1001BA5F4()
{
  result = qword_10044C858;
  if (!qword_10044C858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C858);
  }

  return result;
}

uint64_t sub_1001BA648()
{
  v0 = qword_100447088;

  return v0;
}

unint64_t sub_1001BA684()
{
  result = qword_10044C860;
  if (!qword_10044C860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C860);
  }

  return result;
}

uint64_t sub_1001BA6D8(uint64_t a1)
{
  v1 = sub_10000321C(&qword_1004549A0, &qword_100351230);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_1004549A8, &qword_100351238);
  __chkstk_darwin(v5);
  sub_1001BA188();
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

unint64_t sub_1001BA8A0()
{
  result = qword_10044C868;
  if (!qword_10044C868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C868);
  }

  return result;
}

unint64_t sub_1001BA8F8()
{
  result = qword_10044C870;
  if (!qword_10044C870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C870);
  }

  return result;
}

unint64_t sub_1001BA950()
{
  result = qword_10044C878;
  if (!qword_10044C878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C878);
  }

  return result;
}

uint64_t sub_1001BA9A4(uint64_t a1)
{
  sub_1002D4A18();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1001BAA8C(uint64_t a1)
{
  v2 = sub_1001BA188();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001BAADC()
{
  result = qword_10044C890;
  if (!qword_10044C890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C890);
  }

  return result;
}

uint64_t sub_1001BAB34(uint64_t a1)
{
  v2 = sub_1001BA950();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001BAB84()
{
  result = qword_10044C898;
  if (!qword_10044C898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C898);
  }

  return result;
}

uint64_t sub_1001BAC1C()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051E658);
  sub_10001EDB8(v5, qword_10051E658);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_1001BAD8C@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001BB0FC()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051E670);
  sub_10001EDB8(v0, qword_10051E670);
  return sub_1002D88F0();
}

uint64_t sub_1001BB160()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051E688);
  v1 = sub_10001EDB8(v0, qword_10051E688);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001BB220()
{
  result = swift_getKeyPath();
  qword_10051E6A0 = result;
  return result;
}

uint64_t sub_1001BB248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100454978, &qword_1003511F0);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100454980, &qword_1003511F8);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001BB428, 0, 0);
}

uint64_t sub_1001BB428()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1001BC5E0();
  *v2 = v0;
  v2[1] = sub_1001BB50C;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6FA8, 0, &type metadata for AccessibilitySiriListenForAtypicalSpeechEntity, v3);
}

uint64_t sub_1001BB50C()
{

  return _swift_task_switch(sub_1001BB608, 0, 0);
}

uint64_t sub_1001BB608()
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
  if (qword_10043AD60 != -1)
  {
    swift_once();
  }

  v3 = qword_10051E6A0;
  *(v0 + 288) = qword_10051E6A0;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100454960, &qword_100454968, &qword_1003511D8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1001BB76C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1001BB76C()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1001BB8DC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001BB8DC()
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
  sub_1001BAB84();
  sub_1001BC7F4();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001BBB54()
{
  v0 = sub_10000321C(&qword_100454988, &qword_100351200);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043AD60 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001BC7F4();
  sub_10002B6E4(&qword_100454990, &qword_100454988, &qword_100351200, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1001BBCC8(uint64_t *a1))(void *)
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

void (*sub_1001BBD3C(uint64_t *a1))(void *)
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

unint64_t sub_1001BBDD8()
{
  result = qword_10044C8B0;
  if (!qword_10044C8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C8B0);
  }

  return result;
}

unint64_t sub_1001BBE30()
{
  result = qword_10044C8B8;
  if (!qword_10044C8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C8B8);
  }

  return result;
}

uint64_t sub_1001BBF2C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001BB248(a1, v5, v4);
}

uint64_t sub_1001BBFD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B8844();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001BC020()
{
  result = qword_10044C8C0;
  if (!qword_10044C8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C8C0);
  }

  return result;
}

unint64_t sub_1001BC078()
{
  result = qword_10044C8C8;
  if (!qword_10044C8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C8C8);
  }

  return result;
}

uint64_t sub_1001BC0EC()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedPreferences];
  v3 = [v2 useAtypicalSpeechModel];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001BC1B4()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedPreferences];
  [v2 setUseAtypicalSpeechModel:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001BC24C(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001BC2DC, 0, 0);
}

uint64_t sub_1001BC2DC()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044C8A8, qword_10031EB68);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454960, &qword_100454968, &qword_1003511D8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000028;
  v1[1] = 0x800000010035B2B0;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1001BC428()
{
  result = qword_10044C8D0;
  if (!qword_10044C8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C8D0);
  }

  return result;
}

uint64_t sub_1001BC47C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001BCA4C();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1001BC530()
{
  result = qword_10044C8D8;
  if (!qword_10044C8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C8D8);
  }

  return result;
}

unint64_t sub_1001BC588()
{
  result = qword_10044C8E0;
  if (!qword_10044C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C8E0);
  }

  return result;
}

unint64_t sub_1001BC5E0()
{
  result = qword_10044C8E8;
  if (!qword_10044C8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C8E8);
  }

  return result;
}

uint64_t sub_1001BC634(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001BCA4C();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1001BC6E8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001BCA4C();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1001BC79C()
{
  result = qword_10044C8F0;
  if (!qword_10044C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C8F0);
  }

  return result;
}

unint64_t sub_1001BC7F4()
{
  result = qword_10044C8F8;
  if (!qword_10044C8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C8F8);
  }

  return result;
}

uint64_t sub_1001BC88C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001BC428();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1001BC944()
{
  result = qword_10044C910;
  if (!qword_10044C910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C910);
  }

  return result;
}

unint64_t sub_1001BC99C()
{
  result = qword_10044C918;
  if (!qword_10044C918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C918);
  }

  return result;
}

unint64_t sub_1001BC9F4()
{
  result = qword_10044C920;
  if (!qword_10044C920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C920);
  }

  return result;
}

unint64_t sub_1001BCA4C()
{
  result = qword_10044C928;
  if (!qword_10044C928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C928);
  }

  return result;
}

uint64_t sub_1001BCAA0()
{
  v0 = qword_100447098;

  return v0;
}

unint64_t sub_1001BCADC()
{
  result = qword_10044C930;
  if (!qword_10044C930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C930);
  }

  return result;
}

uint64_t sub_1001BCB30(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100454950, &qword_1003511B8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100454958, &qword_1003511C0);
  __chkstk_darwin(v5);
  sub_1001BC5E0();
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

unint64_t sub_1001BCCF8()
{
  result = qword_10044C938;
  if (!qword_10044C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C938);
  }

  return result;
}

unint64_t sub_1001BCD50()
{
  result = qword_10044C940;
  if (!qword_10044C940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C940);
  }

  return result;
}

unint64_t sub_1001BCDA8()
{
  result = qword_10044C948;
  if (!qword_10044C948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C948);
  }

  return result;
}

uint64_t sub_1001BCDFC(uint64_t a1)
{
  sub_1002D49C4();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1001BCEE4(uint64_t a1)
{
  v2 = sub_1001BC5E0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001BCF34()
{
  result = qword_10044C960;
  if (!qword_10044C960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C960);
  }

  return result;
}

uint64_t sub_1001BCF8C(uint64_t a1)
{
  v2 = sub_1001BCDA8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001BCFDC()
{
  result = qword_10044C968;
  if (!qword_10044C968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C968);
  }

  return result;
}

uint64_t sub_1001BD074()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051E6A8);
  sub_10001EDB8(v5, qword_10051E6A8);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_1001BD1E4@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001BD554()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051E6C0);
  sub_10001EDB8(v0, qword_10051E6C0);
  return sub_1002D88F0();
}

uint64_t sub_1001BD5B8()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051E6D8);
  v1 = sub_10001EDB8(v0, qword_10051E6D8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001BD678()
{
  result = swift_getKeyPath();
  qword_10051E6F0 = result;
  return result;
}

uint64_t sub_1001BD6A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100454928, &qword_100351178);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100454930, &qword_100351180);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001BD880, 0, 0);
}

uint64_t sub_1001BD880()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1001BE9C8();
  *v2 = v0;
  v2[1] = sub_1001BD964;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6FAC, 0, &type metadata for AccessibilitySiriListenForInterruptionsEntity, v3);
}

uint64_t sub_1001BD964()
{

  return _swift_task_switch(sub_1001BDA60, 0, 0);
}

uint64_t sub_1001BDA60()
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
  if (qword_10043AD80 != -1)
  {
    swift_once();
  }

  v3 = qword_10051E6F0;
  *(v0 + 288) = qword_10051E6F0;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100454910, &qword_100454918, &qword_100351160, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1001BDBC4;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1001BDBC4()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1001BDD34;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001BDD34()
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
  sub_1001BCFDC();
  sub_1001BEBDC();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001BDFAC()
{
  v0 = sub_10000321C(&qword_100454938, &qword_100351188);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043AD80 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001BEBDC();
  sub_10002B6E4(&qword_100454940, &qword_100454938, &qword_100351188, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1001BE120(uint64_t *a1))(void *)
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

void (*sub_1001BE194(uint64_t *a1))(void *)
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

unint64_t sub_1001BE230()
{
  result = qword_10044C980;
  if (!qword_10044C980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C980);
  }

  return result;
}

unint64_t sub_1001BE288()
{
  result = qword_10044C988;
  if (!qword_10044C988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C988);
  }

  return result;
}

uint64_t sub_1001BE384(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001BD6A0(a1, v5, v4);
}

uint64_t sub_1001BE430@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B8CAC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001BE478()
{
  result = qword_10044C990;
  if (!qword_10044C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C990);
  }

  return result;
}

unint64_t sub_1001BE4D0()
{
  result = qword_10044C998;
  if (!qword_10044C998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C998);
  }

  return result;
}

uint64_t sub_1001BE544()
{
  v1 = *(v0 + 16);
  *v1 = AXGetSiriRequireSiriForInterruptionsInValue();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001BE5D0()
{
  AXSetSiriRequireSiriForInterruptionsInValue();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001BE634(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001BE6C4, 0, 0);
}

uint64_t sub_1001BE6C4()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044C978, qword_10031F1A0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454910, &qword_100454918, &qword_100351160, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD00000000000001ELL;
  v1[1] = 0x800000010035BB90;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1001BE810()
{
  result = qword_10044C9A0;
  if (!qword_10044C9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C9A0);
  }

  return result;
}

uint64_t sub_1001BE864(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001BEE34();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1001BE918()
{
  result = qword_10044C9A8;
  if (!qword_10044C9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C9A8);
  }

  return result;
}

unint64_t sub_1001BE970()
{
  result = qword_10044C9B0;
  if (!qword_10044C9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C9B0);
  }

  return result;
}

unint64_t sub_1001BE9C8()
{
  result = qword_10044C9B8;
  if (!qword_10044C9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C9B8);
  }

  return result;
}

uint64_t sub_1001BEA1C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001BEE34();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1001BEAD0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001BEE34();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1001BEB84()
{
  result = qword_10044C9C0;
  if (!qword_10044C9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C9C0);
  }

  return result;
}

unint64_t sub_1001BEBDC()
{
  result = qword_10044C9C8;
  if (!qword_10044C9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C9C8);
  }

  return result;
}

uint64_t sub_1001BEC74(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001BE810();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1001BED2C()
{
  result = qword_10044C9E0;
  if (!qword_10044C9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C9E0);
  }

  return result;
}

unint64_t sub_1001BED84()
{
  result = qword_10044C9E8;
  if (!qword_10044C9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C9E8);
  }

  return result;
}

unint64_t sub_1001BEDDC()
{
  result = qword_10044C9F0;
  if (!qword_10044C9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C9F0);
  }

  return result;
}

unint64_t sub_1001BEE34()
{
  result = qword_10044C9F8;
  if (!qword_10044C9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C9F8);
  }

  return result;
}

uint64_t sub_1001BEE88()
{
  v0 = qword_1004470A8;

  return v0;
}

unint64_t sub_1001BEEC4()
{
  result = qword_10044CA00;
  if (!qword_10044CA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CA00);
  }

  return result;
}

uint64_t sub_1001BEF18(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100454900, &qword_100351140);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100454908, &qword_100351148);
  __chkstk_darwin(v5);
  sub_1001BE9C8();
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

unint64_t sub_1001BF0E0()
{
  result = qword_10044CA08;
  if (!qword_10044CA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CA08);
  }

  return result;
}

unint64_t sub_1001BF138()
{
  result = qword_10044CA10;
  if (!qword_10044CA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CA10);
  }

  return result;
}

unint64_t sub_1001BF190()
{
  result = qword_10044CA18;
  if (!qword_10044CA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CA18);
  }

  return result;
}

uint64_t sub_1001BF1E4(uint64_t a1)
{
  sub_1002D4970();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1001BF2CC(uint64_t a1)
{
  v2 = sub_1001BE9C8();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001BF31C()
{
  result = qword_10044CA30;
  if (!qword_10044CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CA30);
  }

  return result;
}

uint64_t sub_1001BF374(uint64_t a1)
{
  v2 = sub_1001BF190();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001BF3C4()
{
  result = qword_10044CA38;
  if (!qword_10044CA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CA38);
  }

  return result;
}

uint64_t sub_1001BF488@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001BF804()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051E710);
  sub_10001EDB8(v0, qword_10051E710);
  return sub_1002D88F0();
}

uint64_t sub_1001BF868()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051E728);
  v1 = sub_10001EDB8(v0, qword_10051E728);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001BF928()
{
  result = swift_getKeyPath();
  qword_10051E740 = result;
  return result;
}

uint64_t sub_1001BF950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_1004548D8, &qword_100351100);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_1004548E0, &qword_100351108);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001BFB30, 0, 0);
}

uint64_t sub_1001BFB30()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1001C0D74();
  *v2 = v0;
  v2[1] = sub_1001BFC14;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6FB0, 0, &type metadata for AccessibilitySiriPauseTimeEntity, v3);
}

uint64_t sub_1001BFC14()
{

  return _swift_task_switch(sub_1001BFD10, 0, 0);
}

uint64_t sub_1001BFD10()
{
  sub_1002D85B0();
  v0[11] = v0[8];
  v1 = v0[9];
  v2 = v0[10];
  v0[34] = v1;
  v0[35] = v2;
  v0[12] = v1;
  v0[13] = v2;
  sub_1002D85B0();
  if (qword_10043ADA0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051E740;
  v0[36] = qword_10051E740;

  v4 = swift_task_alloc();
  v0[37] = v4;
  v5 = sub_10002B6E4(&qword_1004548B8, &qword_1004548C0, &qword_1003510E0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1001BFE6C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 39, v3, &type metadata for AXSiriPauseTimeAppEnum, v5);
}

uint64_t sub_1001BFE6C()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1001C0254;
  }

  else
  {
    v2 = sub_1001BFFDC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001BFFDC()
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
  sub_1001BF3C4();
  sub_1001C0F88();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001C0254()
{
  (*(v0[30] + 8))(v0[32], v0[29]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1001C0318()
{
  v0 = sub_10000321C(&qword_1004548E8, &qword_100351110);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043ADA0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001C0F88();
  sub_10002B6E4(&qword_1004548F0, &qword_1004548E8, &qword_100351110, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1001C048C(uint64_t *a1))(void *)
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

void (*sub_1001C0500(uint64_t *a1))(void *)
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

unint64_t sub_1001C059C()
{
  result = qword_10044CA50;
  if (!qword_10044CA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CA50);
  }

  return result;
}

unint64_t sub_1001C05F4()
{
  result = qword_10044CA58;
  if (!qword_10044CA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CA58);
  }

  return result;
}

uint64_t sub_1001C06F0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001BF950(a1, v5, v4);
}

uint64_t sub_1001C079C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B9114();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001C07E4()
{
  result = qword_10044CA60;
  if (!qword_10044CA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CA60);
  }

  return result;
}

uint64_t sub_1001C085C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedPreferences];
  v3 = [v2 accessibleEndpointerThreshold];

  if (v3 == 3)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3 == 2;
  }

  *v1 = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1001C0938()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedPreferences];
  [v2 setAccessibleEndpointerThreshold:v1 + 1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001C09D0(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001C0A60, 0, 0);
}

uint64_t sub_1001C0A60()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044CA48, &qword_10031F7D8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004548B8, &qword_1004548C0, &qword_1003510E0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  sub_10001C314();
  v2 = sub_1002D8890();
  *v1 = 0xD00000000000001ELL;
  v1[1] = 0x800000010035BB70;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1001C0BBC()
{
  result = qword_10044CA68;
  if (!qword_10044CA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CA68);
  }

  return result;
}

uint64_t sub_1001C0C10(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001C11E0();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1001C0CC4()
{
  result = qword_10044CA70;
  if (!qword_10044CA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CA70);
  }

  return result;
}

unint64_t sub_1001C0D1C()
{
  result = qword_10044CA78;
  if (!qword_10044CA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CA78);
  }

  return result;
}

unint64_t sub_1001C0D74()
{
  result = qword_10044CA80;
  if (!qword_10044CA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CA80);
  }

  return result;
}

uint64_t sub_1001C0DC8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001C11E0();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1001C0E7C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001C11E0();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1001C0F30()
{
  result = qword_10044CA88;
  if (!qword_10044CA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CA88);
  }

  return result;
}

unint64_t sub_1001C0F88()
{
  result = qword_10044CA90;
  if (!qword_10044CA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CA90);
  }

  return result;
}

uint64_t sub_1001C1020(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001C0BBC();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1001C10D8()
{
  result = qword_10044CAA8;
  if (!qword_10044CAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CAA8);
  }

  return result;
}

unint64_t sub_1001C1130()
{
  result = qword_10044CAB0;
  if (!qword_10044CAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CAB0);
  }

  return result;
}

unint64_t sub_1001C1188()
{
  result = qword_10044CAB8;
  if (!qword_10044CAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CAB8);
  }

  return result;
}

unint64_t sub_1001C11E0()
{
  result = qword_10044CAC0;
  if (!qword_10044CAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CAC0);
  }

  return result;
}

uint64_t sub_1001C1234()
{
  v0 = qword_1004470B8;

  return v0;
}

unint64_t sub_1001C1270()
{
  result = qword_10044CAC8;
  if (!qword_10044CAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CAC8);
  }

  return result;
}

uint64_t sub_1001C12C4(uint64_t a1)
{
  v1 = sub_10000321C(&qword_1004548A8, &qword_1003510C0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_1004548B0, &qword_1003510C8);
  __chkstk_darwin(v5);
  sub_1001C0D74();
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

unint64_t sub_1001C148C()
{
  result = qword_10044CAD0;
  if (!qword_10044CAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CAD0);
  }

  return result;
}

unint64_t sub_1001C14E4()
{
  result = qword_10044CAD8;
  if (!qword_10044CAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CAD8);
  }

  return result;
}

unint64_t sub_1001C153C()
{
  result = qword_10044CAE0;
  if (!qword_10044CAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CAE0);
  }

  return result;
}

uint64_t sub_1001C1590(uint64_t a1)
{
  sub_1002D491C();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1001C1678(uint64_t a1)
{
  v2 = sub_1001C0D74();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001C16C8()
{
  result = qword_10044CAF8;
  if (!qword_10044CAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CAF8);
  }

  return result;
}

uint64_t sub_1001C1720(uint64_t a1)
{
  v2 = sub_1001C153C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001C1770()
{
  result = qword_10044CB00;
  if (!qword_10044CB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CB00);
  }

  return result;
}

uint64_t sub_1001C1808()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051E748);
  sub_10001EDB8(v5, qword_10051E748);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_1001C1978@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001C1CE8()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051E760);
  sub_10001EDB8(v0, qword_10051E760);
  return sub_1002D88F0();
}

uint64_t sub_1001C1D4C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051E778);
  v1 = sub_10001EDB8(v0, qword_10051E778);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001C1E0C()
{
  result = swift_getKeyPath();
  qword_10051E790 = result;
  return result;
}

uint64_t sub_1001C1E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[22] = a2;
  v3[23] = a3;
  v3[21] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[25] = swift_task_alloc();
  sub_10000321C(&qword_100454880, &qword_100351080);
  v3[26] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[27] = v4;
  v3[28] = *(v4 - 8);
  v3[29] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100454888, &qword_100351088);
  v3[30] = v5;
  v3[31] = *(v5 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();

  return _swift_task_switch(sub_1001C2014, 0, 0);
}

uint64_t sub_1001C2014()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 272) = v2;
  v3 = sub_1001C32DC();
  *v2 = v0;
  v2[1] = sub_1001C20F8;
  v4 = *(v0 + 264);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6FB4, 0, &type metadata for AccessibilitySiriSpeakingRateEntity, v3);
}

uint64_t sub_1001C20F8()
{

  return _swift_task_switch(sub_1001C21F4, 0, 0);
}

uint64_t sub_1001C21F4()
{
  sub_1002D85B0();
  v0[11] = v0[8];
  v1 = v0[9];
  v2 = v0[10];
  v0[35] = v1;
  v0[36] = v2;
  v0[12] = v1;
  v0[13] = v2;
  sub_1002D85B0();
  if (qword_10043ADC0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051E790;
  v0[37] = qword_10051E790;

  v4 = swift_task_alloc();
  v0[38] = v4;
  v5 = sub_10002B6E4(&qword_100454868, &qword_100454870, &qword_100351068, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1001C2350;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 20, v3, &type metadata for Double, v5);
}

uint64_t sub_1001C2350()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_1001C2738;
  }

  else
  {
    v2 = sub_1001C24C0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001C24C0()
{
  v1 = v0[32];
  v2 = v0[30];
  v3 = v0[31];
  v11 = v0[33];
  v12 = v0[29];
  v14 = v0[28];
  v15 = v0[27];
  v4 = v0[24];
  v5 = v0[25];
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
  sub_1001C1770();
  sub_1001C34F0();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001C2738()
{
  (*(v0[31] + 8))(v0[33], v0[30]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1001C27FC()
{
  v0 = sub_10000321C(&qword_100454890, &qword_100351090);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043ADC0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001C34F0();
  sub_10002B6E4(&qword_100454898, &qword_100454890, &qword_100351090, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1001C2970(uint64_t *a1))(void *)
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

void (*sub_1001C29E4(uint64_t *a1))(void *)
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

unint64_t sub_1001C2A80()
{
  result = qword_10044CB18;
  if (!qword_10044CB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CB18);
  }

  return result;
}

unint64_t sub_1001C2AD8()
{
  result = qword_10044CB20;
  if (!qword_10044CB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CB20);
  }

  return result;
}

uint64_t sub_1001C2BD4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001C1E34(a1, v5, v4);
}

uint64_t sub_1001C2C80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B9518();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001C2CC8()
{
  result = qword_10044CB28;
  if (!qword_10044CB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CB28);
  }

  return result;
}

unint64_t sub_1001C2D20()
{
  result = qword_10044CB30;
  if (!qword_10044CB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CB30);
  }

  return result;
}

uint64_t sub_1001C2D94()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedPreferences];
  v3 = [v2 siriSpeechRate];

  [v3 doubleValue];
  v5 = v4;

  *v1 = v5;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1001C2E7C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedPreferences];
  v3 = [objc_allocWithZone(NSNumber) initWithDouble:v1];
  [v2 setSiriSpeechRate:v3];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001C2F44(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001C2FD4, 0, 0);
}

uint64_t sub_1001C2FD4()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044CB10, qword_10031FE10);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454868, &qword_100454870, &qword_100351068, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88B0();
  *v1 = 0xD00000000000001FLL;
  v1[1] = 0x800000010035BB30;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1001C3124()
{
  result = qword_10044CB38;
  if (!qword_10044CB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CB38);
  }

  return result;
}

uint64_t sub_1001C3178(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001C3748();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1001C322C()
{
  result = qword_10044CB40;
  if (!qword_10044CB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CB40);
  }

  return result;
}

unint64_t sub_1001C3284()
{
  result = qword_10044CB48;
  if (!qword_10044CB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CB48);
  }

  return result;
}

unint64_t sub_1001C32DC()
{
  result = qword_10044CB50;
  if (!qword_10044CB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CB50);
  }

  return result;
}

uint64_t sub_1001C3330(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001C3748();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1001C33E4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001C3748();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1001C3498()
{
  result = qword_10044CB58;
  if (!qword_10044CB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CB58);
  }

  return result;
}

unint64_t sub_1001C34F0()
{
  result = qword_10044CB60;
  if (!qword_10044CB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CB60);
  }

  return result;
}

uint64_t sub_1001C3588(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001C3124();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1001C3640()
{
  result = qword_10044CB78;
  if (!qword_10044CB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CB78);
  }

  return result;
}

unint64_t sub_1001C3698()
{
  result = qword_10044CB80;
  if (!qword_10044CB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CB80);
  }

  return result;
}

unint64_t sub_1001C36F0()
{
  result = qword_10044CB88;
  if (!qword_10044CB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CB88);
  }

  return result;
}

unint64_t sub_1001C3748()
{
  result = qword_10044CB90;
  if (!qword_10044CB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CB90);
  }

  return result;
}

uint64_t sub_1001C379C()
{
  v0 = qword_1004470C8;

  return v0;
}

unint64_t sub_1001C37D8()
{
  result = qword_10044CB98;
  if (!qword_10044CB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CB98);
  }

  return result;
}

uint64_t sub_1001C382C(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100454858, &qword_100351048);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100454860, &qword_100351050);
  __chkstk_darwin(v5);
  sub_1001C32DC();
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

unint64_t sub_1001C39F4()
{
  result = qword_10044CBA0;
  if (!qword_10044CBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CBA0);
  }

  return result;
}

unint64_t sub_1001C3A4C()
{
  result = qword_10044CBA8;
  if (!qword_10044CBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CBA8);
  }

  return result;
}

unint64_t sub_1001C3AA4()
{
  result = qword_10044CBB0;
  if (!qword_10044CBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CBB0);
  }

  return result;
}

uint64_t sub_1001C3AF8(uint64_t a1)
{
  sub_1002D48C8();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1001C3BE0(uint64_t a1)
{
  v2 = sub_1001C32DC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001C3C30()
{
  result = qword_10044CBC8;
  if (!qword_10044CBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CBC8);
  }

  return result;
}

uint64_t sub_1001C3C88(uint64_t a1)
{
  v2 = sub_1001C3AA4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001C3CD8()
{
  result = qword_10044CBD0;
  if (!qword_10044CBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CBD0);
  }

  return result;
}

uint64_t sub_1001C3D70()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051E798);
  sub_10001EDB8(v5, qword_10051E798);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_1001C3EE0@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001C4250()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051E7B0);
  sub_10001EDB8(v0, qword_10051E7B0);
  return sub_1002D88F0();
}

uint64_t sub_1001C42B4()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051E7C8);
  v1 = sub_10001EDB8(v0, qword_10051E7C8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001C4374()
{
  result = swift_getKeyPath();
  qword_10051E7E0 = result;
  return result;
}

uint64_t sub_1001C439C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100454830, &qword_100351008);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100454838, &qword_100351010);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001C457C, 0, 0);
}

uint64_t sub_1001C457C()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1001C5738();
  *v2 = v0;
  v2[1] = sub_1001C4660;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6FB8, 0, &type metadata for AccessibilitySiriAlwaysListenForEntity, v3);
}

uint64_t sub_1001C4660()
{

  return _swift_task_switch(sub_1001C475C, 0, 0);
}

uint64_t sub_1001C475C()
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
  if (qword_10043ADE0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051E7E0;
  *(v0 + 288) = qword_10051E7E0;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100454818, &qword_100454820, &qword_100350FF0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1001C48C0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1001C48C0()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1001C4A30;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001C4A30()
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
  sub_1001C3CD8();
  sub_1001C594C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001C4CA8()
{
  v0 = sub_10000321C(&qword_100454840, &qword_100351018);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043ADE0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001C594C();
  sub_10002B6E4(&qword_100454848, &qword_100454840, &qword_100351018, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1001C4E1C(uint64_t *a1))(void *)
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

void (*sub_1001C4E90(uint64_t *a1))(void *)
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

unint64_t sub_1001C4F2C()
{
  result = qword_10044CBE8;
  if (!qword_10044CBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CBE8);
  }

  return result;
}

unint64_t sub_1001C4F84()
{
  result = qword_10044CBF0;
  if (!qword_10044CBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CBF0);
  }

  return result;
}

uint64_t sub_1001C5080(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001C439C(a1, v5, v4);
}

uint64_t sub_1001C512C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B99A4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001C5174()
{
  result = qword_10044CBF8;
  if (!qword_10044CBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CBF8);
  }

  return result;
}

unint64_t sub_1001C51CC()
{
  result = qword_10044CC00;
  if (!qword_10044CC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CC00);
  }

  return result;
}

uint64_t sub_1001C5240()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedPreferences];
  v3 = [v2 alwaysAllowVoiceActivation];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001C5308()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedPreferences];
  [v2 setAlwaysAllowVoiceActivation:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001C53A0(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001C5430, 0, 0);
}

uint64_t sub_1001C5430()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044CBE0, qword_100320448);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454818, &qword_100454820, &qword_100350FF0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD00000000000003FLL;
  v1[1] = 0x8000000100361DA0;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1001C5580()
{
  result = qword_10044CC08;
  if (!qword_10044CC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CC08);
  }

  return result;
}

uint64_t sub_1001C55D4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001C5BA4();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1001C5688()
{
  result = qword_10044CC10;
  if (!qword_10044CC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CC10);
  }

  return result;
}

unint64_t sub_1001C56E0()
{
  result = qword_10044CC18;
  if (!qword_10044CC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CC18);
  }

  return result;
}

unint64_t sub_1001C5738()
{
  result = qword_10044CC20;
  if (!qword_10044CC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CC20);
  }

  return result;
}

uint64_t sub_1001C578C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001C5BA4();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1001C5840(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001C5BA4();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1001C58F4()
{
  result = qword_10044CC28;
  if (!qword_10044CC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CC28);
  }

  return result;
}

unint64_t sub_1001C594C()
{
  result = qword_10044CC30;
  if (!qword_10044CC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CC30);
  }

  return result;
}

uint64_t sub_1001C59E4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001C5580();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1001C5A9C()
{
  result = qword_10044CC48;
  if (!qword_10044CC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CC48);
  }

  return result;
}

unint64_t sub_1001C5AF4()
{
  result = qword_10044CC50;
  if (!qword_10044CC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CC50);
  }

  return result;
}

unint64_t sub_1001C5B4C()
{
  result = qword_10044CC58;
  if (!qword_10044CC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CC58);
  }

  return result;
}

unint64_t sub_1001C5BA4()
{
  result = qword_10044CC60;
  if (!qword_10044CC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CC60);
  }

  return result;
}

uint64_t sub_1001C5BF8()
{
  v0 = qword_1004470D8;

  return v0;
}

unint64_t sub_1001C5C34()
{
  result = qword_10044CC68;
  if (!qword_10044CC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CC68);
  }

  return result;
}

uint64_t sub_1001C5C88(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100454808, &qword_100350FD0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100454810, &qword_100350FD8);
  __chkstk_darwin(v5);
  sub_1001C5738();
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

unint64_t sub_1001C5E50()
{
  result = qword_10044CC70;
  if (!qword_10044CC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CC70);
  }

  return result;
}

unint64_t sub_1001C5EA8()
{
  result = qword_10044CC78;
  if (!qword_10044CC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CC78);
  }

  return result;
}

unint64_t sub_1001C5F00()
{
  result = qword_10044CC80;
  if (!qword_10044CC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CC80);
  }

  return result;
}

uint64_t sub_1001C5F54(uint64_t a1)
{
  sub_1002D4874();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1001C603C(uint64_t a1)
{
  v2 = sub_1001C5738();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001C608C()
{
  result = qword_10044CC98;
  if (!qword_10044CC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CC98);
  }

  return result;
}

uint64_t sub_1001C60E4(uint64_t a1)
{
  v2 = sub_1001C5F00();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001C6134()
{
  result = qword_10044CCA0;
  if (!qword_10044CCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CCA0);
  }

  return result;
}

uint64_t sub_1001C61CC()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051E7E8);
  sub_10001EDB8(v5, qword_10051E7E8);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_1001C633C@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001C66AC()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051E800);
  sub_10001EDB8(v0, qword_10051E800);
  return sub_1002D88F0();
}

uint64_t sub_1001C6710()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051E818);
  v1 = sub_10001EDB8(v0, qword_10051E818);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001C67D0()
{
  result = swift_getKeyPath();
  qword_10051E830 = result;
  return result;
}

uint64_t sub_1001C67F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_1004547E0, &qword_100350F90);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_1004547E8, &qword_100350F98);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001C69D8, 0, 0);
}

uint64_t sub_1001C69D8()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1001C7B94();
  *v2 = v0;
  v2[1] = sub_1001C6ABC;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6FBC, 0, &type metadata for AccessibilitySiriShowAppsBehindSiriEntity, v3);
}

uint64_t sub_1001C6ABC()
{

  return _swift_task_switch(sub_1001C6BB8, 0, 0);
}

uint64_t sub_1001C6BB8()
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
  if (qword_10043AE00 != -1)
  {
    swift_once();
  }

  v3 = qword_10051E830;
  *(v0 + 288) = qword_10051E830;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_1004547C8, &qword_1004547D0, &qword_100350F78, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1001C6D1C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1001C6D1C()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1001C6E8C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001C6E8C()
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
  sub_1001C6134();
  sub_1001C7DA8();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001C7104()
{
  v0 = sub_10000321C(&qword_1004547F0, &qword_100350FA0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043AE00 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001C7DA8();
  sub_10002B6E4(&qword_1004547F8, &qword_1004547F0, &qword_100350FA0, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1001C7278(uint64_t *a1))(void *)
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

void (*sub_1001C72EC(uint64_t *a1))(void *)
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

unint64_t sub_1001C7388()
{
  result = qword_10044CCB8;
  if (!qword_10044CCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CCB8);
  }

  return result;
}

unint64_t sub_1001C73E0()
{
  result = qword_10044CCC0;
  if (!qword_10044CCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CCC0);
  }

  return result;
}

uint64_t sub_1001C74DC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001C67F8(a1, v5, v4);
}

uint64_t sub_1001C7588@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B9E0C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001C75D0()
{
  result = qword_10044CCC8;
  if (!qword_10044CCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CCC8);
  }

  return result;
}

unint64_t sub_1001C7628()
{
  result = qword_10044CCD0;
  if (!qword_10044CCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CCD0);
  }

  return result;
}

uint64_t sub_1001C769C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedPreferences];
  v3 = [v2 alwaysObscureBackgroundContentWhenActive];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001C7764()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedPreferences];
  [v2 setAlwaysObscureBackgroundContentWhenActive:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001C77FC(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001C788C, 0, 0);
}

uint64_t sub_1001C788C()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044CCB0, qword_100320A80);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004547C8, &qword_1004547D0, &qword_100350F78, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD00000000000003FLL;
  v1[1] = 0x8000000100361DA0;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1001C79DC()
{
  result = qword_10044CCD8;
  if (!qword_10044CCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CCD8);
  }

  return result;
}

uint64_t sub_1001C7A30(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001C8000();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1001C7AE4()
{
  result = qword_10044CCE0;
  if (!qword_10044CCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CCE0);
  }

  return result;
}

unint64_t sub_1001C7B3C()
{
  result = qword_10044CCE8;
  if (!qword_10044CCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CCE8);
  }

  return result;
}

unint64_t sub_1001C7B94()
{
  result = qword_10044CCF0;
  if (!qword_10044CCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CCF0);
  }

  return result;
}

uint64_t sub_1001C7BE8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001C8000();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1001C7C9C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001C8000();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1001C7D50()
{
  result = qword_10044CCF8;
  if (!qword_10044CCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CCF8);
  }

  return result;
}

unint64_t sub_1001C7DA8()
{
  result = qword_10044CD00;
  if (!qword_10044CD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CD00);
  }

  return result;
}

uint64_t sub_1001C7E40(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001C79DC();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1001C7EF8()
{
  result = qword_10044CD18;
  if (!qword_10044CD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CD18);
  }

  return result;
}

unint64_t sub_1001C7F50()
{
  result = qword_10044CD20;
  if (!qword_10044CD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CD20);
  }

  return result;
}

unint64_t sub_1001C7FA8()
{
  result = qword_10044CD28;
  if (!qword_10044CD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CD28);
  }

  return result;
}

unint64_t sub_1001C8000()
{
  result = qword_10044CD30;
  if (!qword_10044CD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CD30);
  }

  return result;
}

uint64_t sub_1001C8054()
{
  v0 = qword_1004470E8;

  return v0;
}

unint64_t sub_1001C8090()
{
  result = qword_10044CD38;
  if (!qword_10044CD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CD38);
  }

  return result;
}

uint64_t sub_1001C80E4(uint64_t a1)
{
  v1 = sub_10000321C(&qword_1004547B8, &qword_100350F58);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_1004547C0, &qword_100350F60);
  __chkstk_darwin(v5);
  sub_1001C7B94();
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

unint64_t sub_1001C82AC()
{
  result = qword_10044CD40;
  if (!qword_10044CD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CD40);
  }

  return result;
}

unint64_t sub_1001C8304()
{
  result = qword_10044CD48;
  if (!qword_10044CD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CD48);
  }

  return result;
}

unint64_t sub_1001C835C()
{
  result = qword_10044CD50;
  if (!qword_10044CD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CD50);
  }

  return result;
}

uint64_t sub_1001C83B0(uint64_t a1)
{
  sub_1002D4820();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1001C8498(uint64_t a1)
{
  v2 = sub_1001C7B94();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001C84E8()
{
  result = qword_10044CD68;
  if (!qword_10044CD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CD68);
  }

  return result;
}

uint64_t sub_1001C8540(uint64_t a1)
{
  v2 = sub_1001C835C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001C8590()
{
  result = qword_10044CD70;
  if (!qword_10044CD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CD70);
  }

  return result;
}

uint64_t sub_1001C8628()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051E838);
  sub_10001EDB8(v5, qword_10051E838);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_1001C8798@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001C8B08()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051E850);
  sub_10001EDB8(v0, qword_10051E850);
  return sub_1002D88F0();
}

uint64_t sub_1001C8B6C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051E868);
  v1 = sub_10001EDB8(v0, qword_10051E868);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001C8C2C()
{
  result = swift_getKeyPath();
  qword_10051E880 = result;
  return result;
}

uint64_t sub_1001C8C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100454790, &qword_100350F18);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100454798, &qword_100350F20);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001C8E34, 0, 0);
}

uint64_t sub_1001C8E34()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1001C9FEC();
  *v2 = v0;
  v2[1] = sub_1001C8F18;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6FC0, 0, &type metadata for AccessibilitySiriAnnounceNotificationsOnSpeakerEntity, v3);
}

uint64_t sub_1001C8F18()
{

  return _swift_task_switch(sub_1001C9014, 0, 0);
}

uint64_t sub_1001C9014()
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
  if (qword_10043AE20 != -1)
  {
    swift_once();
  }

  v3 = qword_10051E880;
  *(v0 + 288) = qword_10051E880;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100454778, &qword_100454780, &qword_100350F00, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1001C9178;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1001C9178()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1001C92E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001C92E8()
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
  sub_1001C8590();
  sub_1001CA200();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001C9560()
{
  v0 = sub_10000321C(&qword_1004547A0, &qword_100350F28);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043AE20 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001CA200();
  sub_10002B6E4(&qword_1004547A8, &qword_1004547A0, &qword_100350F28, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1001C96D4(uint64_t *a1))(void *)
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

void (*sub_1001C9748(uint64_t *a1))(void *)
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

unint64_t sub_1001C97E4()
{
  result = qword_10044CD88;
  if (!qword_10044CD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CD88);
  }

  return result;
}

unint64_t sub_1001C983C()
{
  result = qword_10044CD90;
  if (!qword_10044CD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CD90);
  }

  return result;
}

uint64_t sub_1001C9938(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001C8C54(a1, v5, v4);
}

uint64_t sub_1001C99E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002BA274();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001C9A2C()
{
  result = qword_10044CD98;
  if (!qword_10044CD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CD98);
  }

  return result;
}

unint64_t sub_1001C9A84()
{
  result = qword_10044CDA0;
  if (!qword_10044CDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CDA0);
  }

  return result;
}

uint64_t sub_1001C9AF8()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedPreferences];
  v3 = [v2 announceNotificationsOnBuiltInSpeakerEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001C9BC0()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedPreferences];
  [v2 setAnnounceNotificationsOnBuiltInSpeakerEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001C9C58(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001C9CE8, 0, 0);
}

uint64_t sub_1001C9CE8()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044CD80, qword_1003210B8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454778, &qword_100454780, &qword_100350F00, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD00000000000003ELL;
  v1[1] = 0x8000000100361C30;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1001C9E34()
{
  result = qword_10044CDA8;
  if (!qword_10044CDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CDA8);
  }

  return result;
}

uint64_t sub_1001C9E88(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001CA458();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1001C9F3C()
{
  result = qword_10044CDB0;
  if (!qword_10044CDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CDB0);
  }

  return result;
}

unint64_t sub_1001C9F94()
{
  result = qword_10044CDB8;
  if (!qword_10044CDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CDB8);
  }

  return result;
}

unint64_t sub_1001C9FEC()
{
  result = qword_10044CDC0;
  if (!qword_10044CDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CDC0);
  }

  return result;
}

uint64_t sub_1001CA040(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001CA458();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1001CA0F4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001CA458();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1001CA1A8()
{
  result = qword_10044CDC8;
  if (!qword_10044CDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CDC8);
  }

  return result;
}

unint64_t sub_1001CA200()
{
  result = qword_10044CDD0;
  if (!qword_10044CDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CDD0);
  }

  return result;
}

uint64_t sub_1001CA298(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001C9E34();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1001CA350()
{
  result = qword_10044CDE8;
  if (!qword_10044CDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CDE8);
  }

  return result;
}

unint64_t sub_1001CA3A8()
{
  result = qword_10044CDF0;
  if (!qword_10044CDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CDF0);
  }

  return result;
}

unint64_t sub_1001CA400()
{
  result = qword_10044CDF8;
  if (!qword_10044CDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CDF8);
  }

  return result;
}

unint64_t sub_1001CA458()
{
  result = qword_10044CE00;
  if (!qword_10044CE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CE00);
  }

  return result;
}

uint64_t sub_1001CA4AC()
{
  v0 = qword_1004470F8;

  return v0;
}

unint64_t sub_1001CA4E8()
{
  result = qword_10044CE08;
  if (!qword_10044CE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CE08);
  }

  return result;
}

uint64_t sub_1001CA53C(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100454768, &qword_100350EE0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100454770, &qword_100350EE8);
  __chkstk_darwin(v5);
  sub_1001C9FEC();
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

unint64_t sub_1001CA704()
{
  result = qword_10044CE10;
  if (!qword_10044CE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CE10);
  }

  return result;
}

unint64_t sub_1001CA75C()
{
  result = qword_10044CE18;
  if (!qword_10044CE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CE18);
  }

  return result;
}

unint64_t sub_1001CA7B4()
{
  result = qword_10044CE20;
  if (!qword_10044CE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CE20);
  }

  return result;
}

uint64_t sub_1001CA808(uint64_t a1)
{
  sub_1002D47CC();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1001CA8F0(uint64_t a1)
{
  v2 = sub_1001C9FEC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001CA940()
{
  result = qword_10044CE38;
  if (!qword_10044CE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CE38);
  }

  return result;
}

uint64_t sub_1001CA998(uint64_t a1)
{
  v2 = sub_1001CA7B4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001CA9E8()
{
  result = qword_10044CE40;
  if (!qword_10044CE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CE40);
  }

  return result;
}

uint64_t sub_1001CAAA8@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001CAE20()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051E8A0);
  sub_10001EDB8(v0, qword_10051E8A0);
  return sub_1002D88F0();
}

uint64_t sub_1001CAE84()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051E8B8);
  v1 = sub_10001EDB8(v0, qword_10051E8B8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001CAF44()
{
  result = swift_getKeyPath();
  qword_10051E8D0 = result;
  return result;
}

uint64_t sub_1001CAF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100454740, &qword_100350EA0);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100454748, &qword_100350EA8);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001CB14C, 0, 0);
}

uint64_t sub_1001CB14C()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1001CC28C();
  *v2 = v0;
  v2[1] = sub_1001CB230;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6FC4, 0, &type metadata for AccessibilitySiriCallHangUpEntity, v3);
}

uint64_t sub_1001CB230()
{

  return _swift_task_switch(sub_1001CB32C, 0, 0);
}

uint64_t sub_1001CB32C()
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
  if (qword_10043AE40 != -1)
  {
    swift_once();
  }

  v3 = qword_10051E8D0;
  *(v0 + 288) = qword_10051E8D0;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100454728, &qword_100454730, &qword_100350E88, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1001CB490;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1001CB490()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1001CB600;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001CB600()
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
  sub_1001CA9E8();
  sub_1001CC4A0();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001CB878()
{
  v0 = sub_10000321C(&qword_100454750, &qword_100350EB0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043AE40 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001CC4A0();
  sub_10002B6E4(&qword_100454758, &qword_100454750, &qword_100350EB0, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1001CB9EC(uint64_t *a1))(void *)
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

void (*sub_1001CBA60(uint64_t *a1))(void *)
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

unint64_t sub_1001CBAFC()
{
  result = qword_10044CE58;
  if (!qword_10044CE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CE58);
  }

  return result;
}

unint64_t sub_1001CBB54()
{
  result = qword_10044CE60;
  if (!qword_10044CE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CE60);
  }

  return result;
}

uint64_t sub_1001CBC50(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001CAF6C(a1, v5, v4);
}

uint64_t sub_1001CBCFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002BA6DC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001CBD44()
{
  result = qword_10044CE68;
  if (!qword_10044CE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CE68);
  }

  return result;
}

unint64_t sub_1001CBD9C()
{
  result = qword_10044CE70;
  if (!qword_10044CE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CE70);
  }

  return result;
}

uint64_t sub_1001CBE10()
{
  v1 = *(v0 + 16);
  *v1 = AXGetSiriCallHangUpValue();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001CBE9C()
{
  AXSetSiriCallHangUpValue();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001CBF00(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001CBF90, 0, 0);
}

uint64_t sub_1001CBF90()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044CE50, qword_1003216F0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454728, &qword_100454730, &qword_100350E88, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD00000000000003ELL;
  v1[1] = 0x8000000100361C30;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1001CC0D4()
{
  result = qword_10044CE78;
  if (!qword_10044CE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CE78);
  }

  return result;
}

uint64_t sub_1001CC128(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001CC6F8();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1001CC1DC()
{
  result = qword_10044CE80;
  if (!qword_10044CE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CE80);
  }

  return result;
}

unint64_t sub_1001CC234()
{
  result = qword_10044CE88;
  if (!qword_10044CE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CE88);
  }

  return result;
}

unint64_t sub_1001CC28C()
{
  result = qword_10044CE90;
  if (!qword_10044CE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CE90);
  }

  return result;
}

uint64_t sub_1001CC2E0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001CC6F8();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1001CC394(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001CC6F8();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1001CC448()
{
  result = qword_10044CE98;
  if (!qword_10044CE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CE98);
  }

  return result;
}

unint64_t sub_1001CC4A0()
{
  result = qword_10044CEA0;
  if (!qword_10044CEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CEA0);
  }

  return result;
}

uint64_t sub_1001CC538(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001CC0D4();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1001CC5F0()
{
  result = qword_10044CEB8;
  if (!qword_10044CEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CEB8);
  }

  return result;
}

unint64_t sub_1001CC648()
{
  result = qword_10044CEC0;
  if (!qword_10044CEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CEC0);
  }

  return result;
}

unint64_t sub_1001CC6A0()
{
  result = qword_10044CEC8;
  if (!qword_10044CEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CEC8);
  }

  return result;
}

unint64_t sub_1001CC6F8()
{
  result = qword_10044CED0;
  if (!qword_10044CED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CED0);
  }

  return result;
}

uint64_t sub_1001CC74C()
{
  v0 = qword_100447108;

  return v0;
}

unint64_t sub_1001CC788()
{
  result = qword_10044CED8;
  if (!qword_10044CED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CED8);
  }

  return result;
}

uint64_t sub_1001CC7DC(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100454718, &qword_100350E68);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100454720, &qword_100350E70);
  __chkstk_darwin(v5);
  sub_1001CC28C();
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

unint64_t sub_1001CC9A4()
{
  result = qword_10044CEE0;
  if (!qword_10044CEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CEE0);
  }

  return result;
}

unint64_t sub_1001CC9FC()
{
  result = qword_10044CEE8;
  if (!qword_10044CEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CEE8);
  }

  return result;
}

unint64_t sub_1001CCA54()
{
  result = qword_10044CEF0;
  if (!qword_10044CEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CEF0);
  }

  return result;
}

uint64_t sub_1001CCAA8(uint64_t a1)
{
  sub_1002D4778();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1001CCB90(uint64_t a1)
{
  v2 = sub_1001CC28C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001CCBE0()
{
  result = qword_10044CF08;
  if (!qword_10044CF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CF08);
  }

  return result;
}

uint64_t sub_1001CCC38(uint64_t a1)
{
  v2 = sub_1001CCA54();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001CCC88()
{
  result = qword_10044CF10;
  if (!qword_10044CF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CF10);
  }

  return result;
}

uint64_t sub_1001CCD4C@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001CD0C8()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051E8F0);
  sub_10001EDB8(v0, qword_10051E8F0);
  return sub_1002D88F0();
}

uint64_t sub_1001CD12C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051E908);
  v1 = sub_10001EDB8(v0, qword_10051E908);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001CD1EC()
{
  result = swift_getKeyPath();
  qword_10051E920 = result;
  return result;
}

uint64_t sub_1001CD214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_1004546F0, &qword_100350E28);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_1004546F8, &qword_100350E30);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001CD3F4, 0, 0);
}

uint64_t sub_1001CD3F4()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1001CE574();
  *v2 = v0;
  v2[1] = sub_1001CD4D8;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6FC8, 0, &type metadata for AccessibilitySiriSpokenResponsesEntity, v3);
}

uint64_t sub_1001CD4D8()
{

  return _swift_task_switch(sub_1001CD5D4, 0, 0);
}

uint64_t sub_1001CD5D4()
{
  sub_1002D85B0();
  v0[11] = v0[8];
  v1 = v0[9];
  v2 = v0[10];
  v0[34] = v1;
  v0[35] = v2;
  v0[12] = v1;
  v0[13] = v2;
  sub_1002D85B0();
  if (qword_10043AE60 != -1)
  {
    swift_once();
  }

  v3 = qword_10051E920;
  v0[36] = qword_10051E920;

  v4 = swift_task_alloc();
  v0[37] = v4;
  v5 = sub_10002B6E4(&qword_1004546D0, &qword_1004546D8, &qword_100350E08, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1001CD730;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 39, v3, &type metadata for AXSiriSpokenResponsesAppEnum, v5);
}

uint64_t sub_1001CD730()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1001CD8A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001CD8A0()
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
  sub_1001CCC88();
  sub_1001CE788();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001CDB18()
{
  v0 = sub_10000321C(&qword_100454700, &qword_100350E38);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043AE60 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001CE788();
  sub_10002B6E4(&qword_100454708, &qword_100454700, &qword_100350E38, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1001CDC8C(uint64_t *a1))(void *)
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

void (*sub_1001CDD00(uint64_t *a1))(void *)
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

unint64_t sub_1001CDD9C()
{
  result = qword_10044CF28;
  if (!qword_10044CF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CF28);
  }

  return result;
}

unint64_t sub_1001CDDF4()
{
  result = qword_10044CF30;
  if (!qword_10044CF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CF30);
  }

  return result;
}

uint64_t sub_1001CDEF0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001CD214(a1, v5, v4);
}

uint64_t sub_1001CDF9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002BAB44();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001CDFE4()
{
  result = qword_10044CF38;
  if (!qword_10044CF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CF38);
  }

  return result;
}

uint64_t sub_1001CE05C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedPreferences];
  v3 = [v2 useDeviceSpeakerForTTS];

  if (v3 == 3)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3 == 2;
  }

  *v1 = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1001CE138()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedPreferences];
  [v2 setUseDeviceSpeakerForTTS:v1 + 1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001CE1D0(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001CE260, 0, 0);
}

uint64_t sub_1001CE260()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044CF20, &qword_100321D28);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004546D0, &qword_1004546D8, &qword_100350E08, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  sub_10001CF4C();
  v2 = sub_1002D8890();
  *v1 = 0xD00000000000002BLL;
  v1[1] = 0x80000001003793D0;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1001CE3BC()
{
  result = qword_10044CF40;
  if (!qword_10044CF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CF40);
  }

  return result;
}

uint64_t sub_1001CE410(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001CE9E0();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1001CE4C4()
{
  result = qword_10044CF48;
  if (!qword_10044CF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CF48);
  }

  return result;
}

unint64_t sub_1001CE51C()
{
  result = qword_10044CF50;
  if (!qword_10044CF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CF50);
  }

  return result;
}

unint64_t sub_1001CE574()
{
  result = qword_10044CF58;
  if (!qword_10044CF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CF58);
  }

  return result;
}

uint64_t sub_1001CE5C8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001CE9E0();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1001CE67C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001CE9E0();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1001CE730()
{
  result = qword_10044CF60;
  if (!qword_10044CF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CF60);
  }

  return result;
}

unint64_t sub_1001CE788()
{
  result = qword_10044CF68;
  if (!qword_10044CF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CF68);
  }

  return result;
}

uint64_t sub_1001CE820(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001CE3BC();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1001CE8D8()
{
  result = qword_10044CF80;
  if (!qword_10044CF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CF80);
  }

  return result;
}

unint64_t sub_1001CE930()
{
  result = qword_10044CF88;
  if (!qword_10044CF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CF88);
  }

  return result;
}

unint64_t sub_1001CE988()
{
  result = qword_10044CF90;
  if (!qword_10044CF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CF90);
  }

  return result;
}

unint64_t sub_1001CE9E0()
{
  result = qword_10044CF98;
  if (!qword_10044CF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CF98);
  }

  return result;
}

uint64_t sub_1001CEA34()
{
  v0 = qword_100447118;

  return v0;
}

unint64_t sub_1001CEA70()
{
  result = qword_10044CFA0;
  if (!qword_10044CFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CFA0);
  }

  return result;
}

uint64_t sub_1001CEAC4(uint64_t a1)
{
  v1 = sub_10000321C(&qword_1004546C0, &qword_100350DE8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_1004546C8, &qword_100350DF0);
  __chkstk_darwin(v5);
  sub_1001CE574();
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

unint64_t sub_1001CEC8C()
{
  result = qword_10044CFA8;
  if (!qword_10044CFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CFA8);
  }

  return result;
}

unint64_t sub_1001CECE4()
{
  result = qword_10044CFB0;
  if (!qword_10044CFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CFB0);
  }

  return result;
}

unint64_t sub_1001CED3C()
{
  result = qword_10044CFB8;
  if (!qword_10044CFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CFB8);
  }

  return result;
}

uint64_t sub_1001CED90(uint64_t a1)
{
  sub_1002D4724();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1001CEE78(uint64_t a1)
{
  v2 = sub_1001CE574();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001CEEC8()
{
  result = qword_10044CFD0;
  if (!qword_10044CFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CFD0);
  }

  return result;
}

uint64_t sub_1001CEF20(uint64_t a1)
{
  v2 = sub_1001CED3C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001CEF70()
{
  result = qword_10044CFD8;
  if (!qword_10044CFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CFD8);
  }

  return result;
}

uint64_t sub_1001CF034@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001CF3B0()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051E940);
  sub_10001EDB8(v0, qword_10051E940);
  return sub_1002D88F0();
}

uint64_t sub_1001CF414()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051E958);
  v1 = sub_10001EDB8(v0, qword_10051E958);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001CF4D4()
{
  result = swift_getKeyPath();
  qword_10051E970 = result;
  return result;
}

uint64_t sub_1001CF4FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100454698, &qword_100350DA8);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_1004546A0, &qword_100350DB0);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001CF6DC, 0, 0);
}

uint64_t sub_1001CF6DC()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1001D0828();
  *v2 = v0;
  v2[1] = sub_1001CF7C0;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6FCC, 0, &type metadata for AccessibilitySpeakSelectionEnabledEntity, v3);
}

uint64_t sub_1001CF7C0()
{

  return _swift_task_switch(sub_1001CF8BC, 0, 0);
}

uint64_t sub_1001CF8BC()
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
  if (qword_10043AE80 != -1)
  {
    swift_once();
  }

  v3 = qword_10051E970;
  *(v0 + 288) = qword_10051E970;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100454680, &qword_100454688, &qword_100350D90, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1001CFA20;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1001CFA20()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1001CFB90;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001CFB90()
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
  sub_1001CEF70();
  sub_1001D0A3C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001CFE08()
{
  v0 = sub_10000321C(&qword_1004546A8, &qword_100350DB8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043AE80 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001D0A3C();
  sub_10002B6E4(&qword_1004546B0, &qword_1004546A8, &qword_100350DB8, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1001CFF7C(uint64_t *a1))(void *)
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

void (*sub_1001CFFF0(uint64_t *a1))(void *)
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

unint64_t sub_1001D008C()
{
  result = qword_10044CFF0;
  if (!qword_10044CFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CFF0);
  }

  return result;
}

unint64_t sub_1001D00E4()
{
  result = qword_10044CFF8;
  if (!qword_10044CFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CFF8);
  }

  return result;
}

uint64_t sub_1001D01E0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001CF4FC(a1, v5, v4);
}

uint64_t sub_1001D028C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002BAF48();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001D02D4()
{
  result = qword_10044D000;
  if (!qword_10044D000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D000);
  }

  return result;
}

unint64_t sub_1001D032C()
{
  result = qword_10044D008;
  if (!qword_10044D008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D008);
  }

  return result;
}

uint64_t sub_1001D03A0()
{
  v1 = *(v0 + 16);
  *v1 = _AXSQuickSpeakEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001D0434()
{
  _AXSQuickSpeakSetEnabled();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001D0498(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001D0528, 0, 0);
}

uint64_t sub_1001D0528()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044CFE8, qword_100322360);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454680, &qword_100454688, &qword_100350D90, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD00000000000002DLL;
  v1[1] = 0x800000010035B580;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1001D0670()
{
  result = qword_10044D010;
  if (!qword_10044D010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D010);
  }

  return result;
}

uint64_t sub_1001D06C4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001D0C94();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1001D0778()
{
  result = qword_10044D018;
  if (!qword_10044D018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D018);
  }

  return result;
}

unint64_t sub_1001D07D0()
{
  result = qword_10044D020;
  if (!qword_10044D020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D020);
  }

  return result;
}

unint64_t sub_1001D0828()
{
  result = qword_10044D028;
  if (!qword_10044D028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D028);
  }

  return result;
}

uint64_t sub_1001D087C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001D0C94();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1001D0930(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001D0C94();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1001D09E4()
{
  result = qword_10044D030;
  if (!qword_10044D030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D030);
  }

  return result;
}

unint64_t sub_1001D0A3C()
{
  result = qword_10044D038;
  if (!qword_10044D038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D038);
  }

  return result;
}

uint64_t sub_1001D0AD4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001D0670();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1001D0B8C()
{
  result = qword_10044D050;
  if (!qword_10044D050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D050);
  }

  return result;
}

unint64_t sub_1001D0BE4()
{
  result = qword_10044D058;
  if (!qword_10044D058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D058);
  }

  return result;
}

unint64_t sub_1001D0C3C()
{
  result = qword_10044D060;
  if (!qword_10044D060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D060);
  }

  return result;
}

unint64_t sub_1001D0C94()
{
  result = qword_10044D068;
  if (!qword_10044D068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D068);
  }

  return result;
}

uint64_t sub_1001D0CE8()
{
  v0 = qword_100447128;

  return v0;
}

unint64_t sub_1001D0D24()
{
  result = qword_10044D070;
  if (!qword_10044D070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D070);
  }

  return result;
}

uint64_t sub_1001D0D78(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100454670, &qword_100350D70);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100454678, &qword_100350D78);
  __chkstk_darwin(v5);
  sub_1001D0828();
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

unint64_t sub_1001D0F40()
{
  result = qword_10044D078;
  if (!qword_10044D078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D078);
  }

  return result;
}

unint64_t sub_1001D0F98()
{
  result = qword_10044D080;
  if (!qword_10044D080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D080);
  }

  return result;
}

unint64_t sub_1001D0FF0()
{
  result = qword_10044D088;
  if (!qword_10044D088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D088);
  }

  return result;
}

uint64_t sub_1001D1044(uint64_t a1)
{
  sub_1002D46D0();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1001D112C(uint64_t a1)
{
  v2 = sub_1001D0828();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001D117C()
{
  result = qword_10044D0A0;
  if (!qword_10044D0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D0A0);
  }

  return result;
}

uint64_t sub_1001D11D4(uint64_t a1)
{
  v2 = sub_1001D0FF0();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001D1224()
{
  result = qword_10044D0A8;
  if (!qword_10044D0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D0A8);
  }

  return result;
}

uint64_t sub_1001D12E4@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001D1668()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051E990);
  sub_10001EDB8(v0, qword_10051E990);
  return sub_1002D88F0();
}

uint64_t sub_1001D16CC()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051E9A8);
  v1 = sub_10001EDB8(v0, qword_10051E9A8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001D178C()
{
  result = swift_getKeyPath();
  qword_10051E9C0 = result;
  return result;
}

uint64_t sub_1001D17B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100454648, &qword_100350D30);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100454650, &qword_100350D38);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001D1994, 0, 0);
}

uint64_t sub_1001D1994()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1001D2ADC();
  *v2 = v0;
  v2[1] = sub_1001D1A78;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6FD0, 0, &type metadata for AccessibilitySpokenContentEnabledEntity, v3);
}

uint64_t sub_1001D1A78()
{

  return _swift_task_switch(sub_1001D1B74, 0, 0);
}

uint64_t sub_1001D1B74()
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
  if (qword_10043AEA0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051E9C0;
  *(v0 + 288) = qword_10051E9C0;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100454630, &qword_100454638, &qword_100350D18, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1001D1CD8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1001D1CD8()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1001D1E48;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001D1E48()
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
  sub_1001D1224();
  sub_1001D2CF0();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001D20C0()
{
  v0 = sub_10000321C(&qword_100454658, &qword_100350D40);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043AEA0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001D2CF0();
  sub_10002B6E4(&qword_100454660, &qword_100454658, &qword_100350D40, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1001D2234(uint64_t *a1))(void *)
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

void (*sub_1001D22A8(uint64_t *a1))(void *)
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

unint64_t sub_1001D2344()
{
  result = qword_10044D0C0;
  if (!qword_10044D0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D0C0);
  }

  return result;
}

unint64_t sub_1001D239C()
{
  result = qword_10044D0C8;
  if (!qword_10044D0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D0C8);
  }

  return result;
}

uint64_t sub_1001D2498(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001D17B4(a1, v5, v4);
}

uint64_t sub_1001D2544@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002BB3B0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001D258C()
{
  result = qword_10044D0D0;
  if (!qword_10044D0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D0D0);
  }

  return result;
}

unint64_t sub_1001D25E4()
{
  result = qword_10044D0D8;
  if (!qword_10044D0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D0D8);
  }

  return result;
}

uint64_t sub_1001D2658()
{
  v1 = *(v0 + 16);
  *v1 = _AXSSpeakThisEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001D26EC()
{
  _AXSSetSpeakThisEnabled();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001D2750(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001D27E0, 0, 0);
}

uint64_t sub_1001D27E0()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044D0B8, qword_100322998);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454630, &qword_100454638, &qword_100350D18, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000029;
  v1[1] = 0x800000010035B600;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1001D2924()
{
  result = qword_10044D0E0;
  if (!qword_10044D0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D0E0);
  }

  return result;
}

uint64_t sub_1001D2978(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001D2F48();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1001D2A2C()
{
  result = qword_10044D0E8;
  if (!qword_10044D0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D0E8);
  }

  return result;
}

unint64_t sub_1001D2A84()
{
  result = qword_10044D0F0;
  if (!qword_10044D0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D0F0);
  }

  return result;
}

unint64_t sub_1001D2ADC()
{
  result = qword_10044D0F8;
  if (!qword_10044D0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D0F8);
  }

  return result;
}

uint64_t sub_1001D2B30(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001D2F48();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1001D2BE4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001D2F48();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1001D2C98()
{
  result = qword_10044D100;
  if (!qword_10044D100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D100);
  }

  return result;
}

unint64_t sub_1001D2CF0()
{
  result = qword_10044D108;
  if (!qword_10044D108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D108);
  }

  return result;
}

uint64_t sub_1001D2D88(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001D2924();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1001D2E40()
{
  result = qword_10044D120;
  if (!qword_10044D120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D120);
  }

  return result;
}

unint64_t sub_1001D2E98()
{
  result = qword_10044D128;
  if (!qword_10044D128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D128);
  }

  return result;
}

unint64_t sub_1001D2EF0()
{
  result = qword_10044D130;
  if (!qword_10044D130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D130);
  }

  return result;
}

unint64_t sub_1001D2F48()
{
  result = qword_10044D138;
  if (!qword_10044D138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D138);
  }

  return result;
}

uint64_t sub_1001D2F9C()
{
  v0 = qword_100447138;

  return v0;
}

unint64_t sub_1001D2FD8()
{
  result = qword_10044D140;
  if (!qword_10044D140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D140);
  }

  return result;
}

uint64_t sub_1001D302C(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100454620, &qword_100350CF8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100454628, &qword_100350D00);
  __chkstk_darwin(v5);
  sub_1001D2ADC();
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

unint64_t sub_1001D31F4()
{
  result = qword_10044D148;
  if (!qword_10044D148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D148);
  }

  return result;
}

unint64_t sub_1001D324C()
{
  result = qword_10044D150;
  if (!qword_10044D150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D150);
  }

  return result;
}

unint64_t sub_1001D32A4()
{
  result = qword_10044D158;
  if (!qword_10044D158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D158);
  }

  return result;
}

uint64_t sub_1001D32F8(uint64_t a1)
{
  sub_1002D467C();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1001D33E0(uint64_t a1)
{
  v2 = sub_1001D2ADC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001D3430()
{
  result = qword_10044D170;
  if (!qword_10044D170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D170);
  }

  return result;
}

uint64_t sub_1001D3488(uint64_t a1)
{
  v2 = sub_1001D32A4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001D34D8()
{
  result = qword_10044D178;
  if (!qword_10044D178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D178);
  }

  return result;
}

uint64_t sub_1001D3594()
{
  result = swift_getKeyPath();
  qword_10051EA10 = result;
  return result;
}

uint64_t sub_1001D35BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_1004545F8, &qword_100350CB8);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100454600, &qword_100350CC0);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001D379C, 0, 0);
}

uint64_t sub_1001D379C()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1001D4978();
  *v2 = v0;
  v2[1] = sub_1001D3880;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6FD4, 0, &type metadata for AccessibilityDetectLanguagesEnabledEntity, v3);
}

uint64_t sub_1001D3880()
{

  return _swift_task_switch(sub_1001D397C, 0, 0);
}

uint64_t sub_1001D397C()
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
  if (qword_10043AEC0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051EA10;
  *(v0 + 288) = qword_10051EA10;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_1004545E0, &qword_1004545E8, &qword_100350CA0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1001D3AE0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1001D3AE0()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1001D3C50;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001D3C50()
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
  sub_1001D34D8();
  sub_1001D4B8C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001D3EC8()
{
  v0 = sub_10000321C(&qword_100454608, &qword_100350CC8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043AEC0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001D4B8C();
  sub_10002B6E4(&qword_100454610, &qword_100454608, &qword_100350CC8, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1001D403C(uint64_t *a1))(void *)
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

void (*sub_1001D40B0(uint64_t *a1))(void *)
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

unint64_t sub_1001D414C()
{
  result = qword_10044D190;
  if (!qword_10044D190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D190);
  }

  return result;
}

unint64_t sub_1001D41A4()
{
  result = qword_10044D198;
  if (!qword_10044D198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D198);
  }

  return result;
}

uint64_t sub_1001D42A0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001D35BC(a1, v5, v4);
}

uint64_t sub_1001D434C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002CB694(&qword_1004545F0, &qword_100350CA8, sub_1001D4978);
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001D43B8()
{
  result = qword_10044D1A0;
  if (!qword_10044D1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D1A0);
  }

  return result;
}

unint64_t sub_1001D4410()
{
  result = qword_10044D1A8;
  if (!qword_10044D1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D1A8);
  }

  return result;
}

uint64_t sub_1001D4484()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 spokenContentShouldUseLanguageDetection];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001D454C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setSpokenContentShouldUseLanguageDetection:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001D45E4(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001D4674, 0, 0);
}

uint64_t sub_1001D4674()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044D188, qword_100322FD0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004545E0, &qword_1004545E8, &qword_100350CA0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD00000000000003CLL;
  v1[1] = 0x8000000100379180;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1001D47C0()
{
  result = qword_10044D1B0;
  if (!qword_10044D1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D1B0);
  }

  return result;
}

uint64_t sub_1001D4814(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001D4DE4();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1001D48C8()
{
  result = qword_10044D1B8;
  if (!qword_10044D1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D1B8);
  }

  return result;
}

unint64_t sub_1001D4920()
{
  result = qword_10044D1C0;
  if (!qword_10044D1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D1C0);
  }

  return result;
}