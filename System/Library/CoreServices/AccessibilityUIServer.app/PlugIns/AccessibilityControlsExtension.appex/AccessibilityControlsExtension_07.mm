uint64_t sub_1000E6BA0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000E6FB8();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1000E6C54(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000E6FB8();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1000E6D08()
{
  result = qword_100447B20;
  if (!qword_100447B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447B20);
  }

  return result;
}

unint64_t sub_1000E6D60()
{
  result = qword_100447B28;
  if (!qword_100447B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447B28);
  }

  return result;
}

uint64_t sub_1000E6DF8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000E6994();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1000E6EB0()
{
  result = qword_100447B40;
  if (!qword_100447B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447B40);
  }

  return result;
}

unint64_t sub_1000E6F08()
{
  result = qword_100447B48;
  if (!qword_100447B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447B48);
  }

  return result;
}

unint64_t sub_1000E6F60()
{
  result = qword_100447B50;
  if (!qword_100447B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447B50);
  }

  return result;
}

unint64_t sub_1000E6FB8()
{
  result = qword_100447B58;
  if (!qword_100447B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447B58);
  }

  return result;
}

uint64_t sub_1000E700C()
{
  v0 = qword_100446A98;

  return v0;
}

unint64_t sub_1000E7048()
{
  result = qword_100447B60;
  if (!qword_100447B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447B60);
  }

  return result;
}

uint64_t sub_1000E709C(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100456788, &qword_100353F18);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100456790, &qword_100353F20);
  __chkstk_darwin(v5);
  sub_1000E6B4C();
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

unint64_t sub_1000E7264()
{
  result = qword_100447B68;
  if (!qword_100447B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447B68);
  }

  return result;
}

unint64_t sub_1000E72BC()
{
  result = qword_100447B70;
  if (!qword_100447B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447B70);
  }

  return result;
}

unint64_t sub_1000E7314()
{
  result = qword_100447B78;
  if (!qword_100447B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447B78);
  }

  return result;
}

uint64_t sub_1000E7368(uint64_t a1)
{
  sub_1002D6B8C();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1000E7450(uint64_t a1)
{
  v2 = sub_1000E6B4C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000E74A0()
{
  result = qword_100447B90;
  if (!qword_100447B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447B90);
  }

  return result;
}

uint64_t sub_1000E74F8(uint64_t a1)
{
  v2 = sub_1000E7314();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000E7548()
{
  result = qword_100447B98;
  if (!qword_100447B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447B98);
  }

  return result;
}

uint64_t sub_1000E75E0()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051C8A8);
  sub_10001EDB8(v5, qword_10051C8A8);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_1000E7750@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1000E7AC0()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051C8C0);
  sub_10001EDB8(v0, qword_10051C8C0);
  return sub_1002D88F0();
}

uint64_t sub_1000E7B24()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051C8D8);
  v1 = sub_10001EDB8(v0, qword_10051C8D8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000E7BE4()
{
  result = swift_getKeyPath();
  qword_10051C8F0 = result;
  return result;
}

uint64_t sub_1000E7C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100456760, &qword_100353ED8);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100456768, &qword_100353EE0);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000E7DEC, 0, 0);
}

uint64_t sub_1000E7DEC()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1000E8FA4();
  *v2 = v0;
  v2[1] = sub_1000E7ED0;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6E2C, 0, &type metadata for AccessibilityAssistiveTouchShowOnscreenKeyboardEnabledEntity, v3);
}

uint64_t sub_1000E7ED0()
{

  return _swift_task_switch(sub_1000E7FCC, 0, 0);
}

uint64_t sub_1000E7FCC()
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
  if (qword_10043A180 != -1)
  {
    swift_once();
  }

  v3 = qword_10051C8F0;
  *(v0 + 288) = qword_10051C8F0;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100456748, &qword_100456750, &qword_100353EC0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1000E8130;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1000E8130()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1000E82A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000E82A0()
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
  sub_1000E7548();
  sub_1000E91B8();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000E8518()
{
  v0 = sub_10000321C(&qword_100456770, &qword_100353EE8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A180 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1000E91B8();
  sub_10002B6E4(&qword_100456778, &qword_100456770, &qword_100353EE8, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1000E868C(uint64_t *a1))(void *)
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

void (*sub_1000E8700(uint64_t *a1))(void *)
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

unint64_t sub_1000E879C()
{
  result = qword_100447BB0;
  if (!qword_100447BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447BB0);
  }

  return result;
}

unint64_t sub_1000E87F4()
{
  result = qword_100447BB8;
  if (!qword_100447BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447BB8);
  }

  return result;
}

uint64_t sub_1000E88F0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1000E7C0C(a1, v5, v4);
}

uint64_t sub_1000E899C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10029EB64();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000E89E4()
{
  result = qword_100447BC0;
  if (!qword_100447BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447BC0);
  }

  return result;
}

unint64_t sub_1000E8A3C()
{
  result = qword_100447BC8;
  if (!qword_100447BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447BC8);
  }

  return result;
}

uint64_t sub_1000E8AB0()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 assistiveTouchMouseAlwaysShowSoftwareKeyboardEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000E8B78()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setAssistiveTouchMouseAlwaysShowSoftwareKeyboardEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000E8C10(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000E8CA0, 0, 0);
}

uint64_t sub_1000E8CA0()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_100447BA8, qword_1002F9CA0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100456748, &qword_100456750, &qword_100353EC0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000043;
  v1[1] = 0x8000000100361710;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1000E8DEC()
{
  result = qword_100447BD0;
  if (!qword_100447BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447BD0);
  }

  return result;
}

uint64_t sub_1000E8E40(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000E9410();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1000E8EF4()
{
  result = qword_100447BD8;
  if (!qword_100447BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447BD8);
  }

  return result;
}

unint64_t sub_1000E8F4C()
{
  result = qword_100447BE0;
  if (!qword_100447BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447BE0);
  }

  return result;
}

unint64_t sub_1000E8FA4()
{
  result = qword_100447BE8;
  if (!qword_100447BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447BE8);
  }

  return result;
}

uint64_t sub_1000E8FF8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000E9410();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1000E90AC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000E9410();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1000E9160()
{
  result = qword_100447BF0;
  if (!qword_100447BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447BF0);
  }

  return result;
}

unint64_t sub_1000E91B8()
{
  result = qword_100447BF8;
  if (!qword_100447BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447BF8);
  }

  return result;
}

uint64_t sub_1000E9250(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000E8DEC();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1000E9308()
{
  result = qword_100447C10;
  if (!qword_100447C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447C10);
  }

  return result;
}

unint64_t sub_1000E9360()
{
  result = qword_100447C18;
  if (!qword_100447C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447C18);
  }

  return result;
}

unint64_t sub_1000E93B8()
{
  result = qword_100447C20;
  if (!qword_100447C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447C20);
  }

  return result;
}

unint64_t sub_1000E9410()
{
  result = qword_100447C28;
  if (!qword_100447C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447C28);
  }

  return result;
}

uint64_t sub_1000E9464()
{
  v0 = qword_100446AA8;

  return v0;
}

unint64_t sub_1000E94A0()
{
  result = qword_100447C30;
  if (!qword_100447C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447C30);
  }

  return result;
}

uint64_t sub_1000E94F4(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100456738, &qword_100353EA0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100456740, &qword_100353EA8);
  __chkstk_darwin(v5);
  sub_1000E8FA4();
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

unint64_t sub_1000E96BC()
{
  result = qword_100447C38;
  if (!qword_100447C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447C38);
  }

  return result;
}

unint64_t sub_1000E9714()
{
  result = qword_100447C40;
  if (!qword_100447C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447C40);
  }

  return result;
}

unint64_t sub_1000E976C()
{
  result = qword_100447C48;
  if (!qword_100447C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447C48);
  }

  return result;
}

uint64_t sub_1000E97C0(uint64_t a1)
{
  sub_1002D6B38();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1000E98A8(uint64_t a1)
{
  v2 = sub_1000E8FA4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000E98F8()
{
  result = qword_100447C60;
  if (!qword_100447C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447C60);
  }

  return result;
}

uint64_t sub_1000E9950(uint64_t a1)
{
  v2 = sub_1000E976C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000E99A0()
{
  result = qword_100447C68;
  if (!qword_100447C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447C68);
  }

  return result;
}

uint64_t sub_1000E9A38()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051C8F8);
  sub_10001EDB8(v5, qword_10051C8F8);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_1000E9BA8@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1000E9F18()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051C910);
  sub_10001EDB8(v0, qword_10051C910);
  return sub_1002D88F0();
}

uint64_t sub_1000E9F7C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051C928);
  v1 = sub_10001EDB8(v0, qword_10051C928);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000EA03C()
{
  result = swift_getKeyPath();
  qword_10051C940 = result;
  return result;
}

uint64_t sub_1000EA064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100456710, &qword_100353E60);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100456718, &qword_100353E68);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000EA244, 0, 0);
}

uint64_t sub_1000EA244()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1000EB400();
  *v2 = v0;
  v2[1] = sub_1000EA328;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6E30, 0, &type metadata for AccessibilityAssistiveTouchPerformTouchGesturesEnabledEntity, v3);
}

uint64_t sub_1000EA328()
{

  return _swift_task_switch(sub_1000EA424, 0, 0);
}

uint64_t sub_1000EA424()
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
  if (qword_10043A1A0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051C940;
  *(v0 + 288) = qword_10051C940;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_1004566F8, &qword_100456700, &qword_100353E48, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1000EA588;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1000EA588()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1000EA6F8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000EA6F8()
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
  sub_1000E99A0();
  sub_1000EB614();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000EA970()
{
  v0 = sub_10000321C(&qword_100456720, &qword_100353E70);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A1A0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1000EB614();
  sub_10002B6E4(&qword_100456728, &qword_100456720, &qword_100353E70, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1000EAAE4(uint64_t *a1))(void *)
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

void (*sub_1000EAB58(uint64_t *a1))(void *)
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

unint64_t sub_1000EABF4()
{
  result = qword_100447C80;
  if (!qword_100447C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447C80);
  }

  return result;
}

unint64_t sub_1000EAC4C()
{
  result = qword_100447C88;
  if (!qword_100447C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447C88);
  }

  return result;
}

uint64_t sub_1000EAD48(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1000EA064(a1, v5, v4);
}

uint64_t sub_1000EADF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10029EFCC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000EAE3C()
{
  result = qword_100447C90;
  if (!qword_100447C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447C90);
  }

  return result;
}

unint64_t sub_1000EAE94()
{
  result = qword_100447C98;
  if (!qword_100447C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447C98);
  }

  return result;
}

uint64_t sub_1000EAF08()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 assistiveTouchMouseBehavesLikeFinger];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000EAFD0()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setAssistiveTouchMouseBehavesLikeFinger:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000EB068(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000EB0F8, 0, 0);
}

uint64_t sub_1000EB0F8()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_100447C78, qword_1002FA2D8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004566F8, &qword_100456700, &qword_100353E48, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD00000000000003FLL;
  v1[1] = 0x800000010035CFA0;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1000EB248()
{
  result = qword_100447CA0;
  if (!qword_100447CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447CA0);
  }

  return result;
}

uint64_t sub_1000EB29C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000EB86C();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1000EB350()
{
  result = qword_100447CA8;
  if (!qword_100447CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447CA8);
  }

  return result;
}

unint64_t sub_1000EB3A8()
{
  result = qword_100447CB0;
  if (!qword_100447CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447CB0);
  }

  return result;
}

unint64_t sub_1000EB400()
{
  result = qword_100447CB8;
  if (!qword_100447CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447CB8);
  }

  return result;
}

uint64_t sub_1000EB454(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000EB86C();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1000EB508(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000EB86C();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1000EB5BC()
{
  result = qword_100447CC0;
  if (!qword_100447CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447CC0);
  }

  return result;
}

unint64_t sub_1000EB614()
{
  result = qword_100447CC8;
  if (!qword_100447CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447CC8);
  }

  return result;
}

uint64_t sub_1000EB6AC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000EB248();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1000EB764()
{
  result = qword_100447CE0;
  if (!qword_100447CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447CE0);
  }

  return result;
}

unint64_t sub_1000EB7BC()
{
  result = qword_100447CE8;
  if (!qword_100447CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447CE8);
  }

  return result;
}

unint64_t sub_1000EB814()
{
  result = qword_100447CF0;
  if (!qword_100447CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447CF0);
  }

  return result;
}

unint64_t sub_1000EB86C()
{
  result = qword_100447CF8;
  if (!qword_100447CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447CF8);
  }

  return result;
}

uint64_t sub_1000EB8C0()
{
  v0 = qword_100446AB8;

  return v0;
}

unint64_t sub_1000EB8FC()
{
  result = qword_100447D00;
  if (!qword_100447D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447D00);
  }

  return result;
}

uint64_t sub_1000EB950(uint64_t a1)
{
  v1 = sub_10000321C(&qword_1004566E8, &qword_100353E28);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_1004566F0, &qword_100353E30);
  __chkstk_darwin(v5);
  sub_1000EB400();
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

unint64_t sub_1000EBB18()
{
  result = qword_100447D08;
  if (!qword_100447D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447D08);
  }

  return result;
}

unint64_t sub_1000EBB70()
{
  result = qword_100447D10;
  if (!qword_100447D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447D10);
  }

  return result;
}

unint64_t sub_1000EBBC8()
{
  result = qword_100447D18;
  if (!qword_100447D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447D18);
  }

  return result;
}

uint64_t sub_1000EBC1C(uint64_t a1)
{
  sub_1002D6AE4();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1000EBD04(uint64_t a1)
{
  v2 = sub_1000EB400();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000EBD54()
{
  result = qword_100447D30;
  if (!qword_100447D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447D30);
  }

  return result;
}

uint64_t sub_1000EBDAC(uint64_t a1)
{
  v2 = sub_1000EBBC8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000EBDFC()
{
  result = qword_100447D38;
  if (!qword_100447D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447D38);
  }

  return result;
}

uint64_t sub_1000EBE94()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051C948);
  sub_10001EDB8(v5, qword_10051C948);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_1000EC004@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1000EC374()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051C960);
  sub_10001EDB8(v0, qword_10051C960);
  return sub_1002D88F0();
}

uint64_t sub_1000EC3D8()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051C978);
  v1 = sub_10001EDB8(v0, qword_10051C978);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000EC498()
{
  result = swift_getKeyPath();
  qword_10051C990 = result;
  return result;
}

uint64_t sub_1000EC4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_1004566C0, &qword_100353DE8);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_1004566C8, &qword_100353DF0);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000EC6A0, 0, 0);
}

uint64_t sub_1000EC6A0()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1000ED858();
  *v2 = v0;
  v2[1] = sub_1000EC784;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6E34, 0, &type metadata for AccessibilityAssistiveTouchGameControllerModeEnabledEntity, v3);
}

uint64_t sub_1000EC784()
{

  return _swift_task_switch(sub_1000EC880, 0, 0);
}

uint64_t sub_1000EC880()
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
  if (qword_10043A1C0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051C990;
  *(v0 + 288) = qword_10051C990;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_1004566A8, &qword_1004566B0, &qword_100353DD0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1000EC9E4;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1000EC9E4()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1000ECB54;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000ECB54()
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
  sub_1000EBDFC();
  sub_1000EDA6C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000ECDCC()
{
  v0 = sub_10000321C(&qword_1004566D0, &qword_100353DF8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A1C0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1000EDA6C();
  sub_10002B6E4(&qword_1004566D8, &qword_1004566D0, &qword_100353DF8, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1000ECF40(uint64_t *a1))(void *)
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

void (*sub_1000ECFB4(uint64_t *a1))(void *)
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

unint64_t sub_1000ED050()
{
  result = qword_100447D50;
  if (!qword_100447D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447D50);
  }

  return result;
}

unint64_t sub_1000ED0A8()
{
  result = qword_100447D58;
  if (!qword_100447D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447D58);
  }

  return result;
}

uint64_t sub_1000ED1A4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1000EC4C0(a1, v5, v4);
}

uint64_t sub_1000ED250@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10029F444();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000ED298()
{
  result = qword_100447D60;
  if (!qword_100447D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447D60);
  }

  return result;
}

unint64_t sub_1000ED2F0()
{
  result = qword_100447D68;
  if (!qword_100447D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447D68);
  }

  return result;
}

uint64_t sub_1000ED364()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 assistiveTouchGameControllerEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000ED42C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setAssistiveTouchGameControllerEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000ED4C4(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000ED554, 0, 0);
}

uint64_t sub_1000ED554()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_100447D48, qword_1002FA910);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004566A8, &qword_1004566B0, &qword_100353DD0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000054;
  v1[1] = 0x800000010035A510;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1000ED6A0()
{
  result = qword_100447D70;
  if (!qword_100447D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447D70);
  }

  return result;
}

uint64_t sub_1000ED6F4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000EDCC4();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1000ED7A8()
{
  result = qword_100447D78;
  if (!qword_100447D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447D78);
  }

  return result;
}

unint64_t sub_1000ED800()
{
  result = qword_100447D80;
  if (!qword_100447D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447D80);
  }

  return result;
}

unint64_t sub_1000ED858()
{
  result = qword_100447D88;
  if (!qword_100447D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447D88);
  }

  return result;
}

uint64_t sub_1000ED8AC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000EDCC4();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1000ED960(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000EDCC4();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1000EDA14()
{
  result = qword_100447D90;
  if (!qword_100447D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447D90);
  }

  return result;
}

unint64_t sub_1000EDA6C()
{
  result = qword_100447D98;
  if (!qword_100447D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447D98);
  }

  return result;
}

uint64_t sub_1000EDB04(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000ED6A0();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1000EDBBC()
{
  result = qword_100447DB0;
  if (!qword_100447DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447DB0);
  }

  return result;
}

unint64_t sub_1000EDC14()
{
  result = qword_100447DB8;
  if (!qword_100447DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447DB8);
  }

  return result;
}

unint64_t sub_1000EDC6C()
{
  result = qword_100447DC0;
  if (!qword_100447DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447DC0);
  }

  return result;
}

unint64_t sub_1000EDCC4()
{
  result = qword_100447DC8;
  if (!qword_100447DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447DC8);
  }

  return result;
}

uint64_t sub_1000EDD18()
{
  v0 = qword_100446AC8;

  return v0;
}

unint64_t sub_1000EDD54()
{
  result = qword_100447DD0;
  if (!qword_100447DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447DD0);
  }

  return result;
}

uint64_t sub_1000EDDA8(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100456698, &qword_100353DB0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_1004566A0, &qword_100353DB8);
  __chkstk_darwin(v5);
  sub_1000ED858();
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

unint64_t sub_1000EDF70()
{
  result = qword_100447DD8;
  if (!qword_100447DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447DD8);
  }

  return result;
}

unint64_t sub_1000EDFC8()
{
  result = qword_100447DE0;
  if (!qword_100447DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447DE0);
  }

  return result;
}

unint64_t sub_1000EE020()
{
  result = qword_100447DE8;
  if (!qword_100447DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447DE8);
  }

  return result;
}

uint64_t sub_1000EE074(uint64_t a1)
{
  sub_1002D6A90();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1000EE15C(uint64_t a1)
{
  v2 = sub_1000ED858();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000EE1AC()
{
  result = qword_100447E00;
  if (!qword_100447E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447E00);
  }

  return result;
}

uint64_t sub_1000EE204(uint64_t a1)
{
  v2 = sub_1000EE020();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000EE254()
{
  result = qword_100447E08;
  if (!qword_100447E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447E08);
  }

  return result;
}

uint64_t sub_1000EE318@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1000EE694()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051C9B0);
  sub_10001EDB8(v0, qword_10051C9B0);
  return sub_1002D88F0();
}

uint64_t sub_1000EE6F8()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051C9C8);
  v1 = sub_10001EDB8(v0, qword_10051C9C8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000EE7B8()
{
  result = swift_getKeyPath();
  qword_10051C9E0 = result;
  return result;
}

uint64_t sub_1000EE7E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100456670, &qword_100353D70);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100456678, &qword_100353D78);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000EE9C0, 0, 0);
}

uint64_t sub_1000EE9C0()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1000EFB74();
  *v2 = v0;
  v2[1] = sub_1000EEAA4;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6E38, 0, &type metadata for AccessibilityAssistiveTouchDwellControlEnabledEntity, v3);
}

uint64_t sub_1000EEAA4()
{

  return _swift_task_switch(sub_1000EEBA0, 0, 0);
}

uint64_t sub_1000EEBA0()
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
  if (qword_10043A1E0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051C9E0;
  *(v0 + 288) = qword_10051C9E0;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100456658, &qword_100456660, &qword_100353D58, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1000EED04;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1000EED04()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1000EEE74;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000EEE74()
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
  sub_1000EE254();
  sub_1000EFD88();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000EF0EC()
{
  v0 = sub_10000321C(&qword_100456680, &qword_100353D80);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A1E0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1000EFD88();
  sub_10002B6E4(&qword_100456688, &qword_100456680, &qword_100353D80, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1000EF260(uint64_t *a1))(void *)
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

void (*sub_1000EF2D4(uint64_t *a1))(void *)
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

unint64_t sub_1000EF370()
{
  result = qword_100447E20;
  if (!qword_100447E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447E20);
  }

  return result;
}

unint64_t sub_1000EF3C8()
{
  result = qword_100447E28;
  if (!qword_100447E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447E28);
  }

  return result;
}

uint64_t sub_1000EF4C4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1000EE7E0(a1, v5, v4);
}

uint64_t sub_1000EF570@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10029F8AC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000EF5B8()
{
  result = qword_100447E30;
  if (!qword_100447E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447E30);
  }

  return result;
}

unint64_t sub_1000EF610()
{
  result = qword_100447E38;
  if (!qword_100447E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447E38);
  }

  return result;
}

uint64_t sub_1000EF684()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 assistiveTouchMouseDwellControlEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000EF74C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setAssistiveTouchMouseDwellControlEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000EF7E4(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000EF874, 0, 0);
}

uint64_t sub_1000EF874()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_100447E18, qword_1002FAF48);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100456658, &qword_100456660, &qword_100353D58, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD00000000000003ELL;
  v1[1] = 0x800000010035F900;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1000EF9BC()
{
  result = qword_100447E40;
  if (!qword_100447E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447E40);
  }

  return result;
}

uint64_t sub_1000EFA10(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000EFFE0();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1000EFAC4()
{
  result = qword_100447E48;
  if (!qword_100447E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447E48);
  }

  return result;
}

unint64_t sub_1000EFB1C()
{
  result = qword_100447E50;
  if (!qword_100447E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447E50);
  }

  return result;
}

unint64_t sub_1000EFB74()
{
  result = qword_100447E58;
  if (!qword_100447E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447E58);
  }

  return result;
}

uint64_t sub_1000EFBC8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000EFFE0();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1000EFC7C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000EFFE0();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1000EFD30()
{
  result = qword_100447E60;
  if (!qword_100447E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447E60);
  }

  return result;
}

unint64_t sub_1000EFD88()
{
  result = qword_100447E68;
  if (!qword_100447E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447E68);
  }

  return result;
}

uint64_t sub_1000EFE20(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000EF9BC();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1000EFED8()
{
  result = qword_100447E80;
  if (!qword_100447E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447E80);
  }

  return result;
}

unint64_t sub_1000EFF30()
{
  result = qword_100447E88;
  if (!qword_100447E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447E88);
  }

  return result;
}

unint64_t sub_1000EFF88()
{
  result = qword_100447E90;
  if (!qword_100447E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447E90);
  }

  return result;
}

unint64_t sub_1000EFFE0()
{
  result = qword_100447E98;
  if (!qword_100447E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447E98);
  }

  return result;
}

uint64_t sub_1000F0034()
{
  v0 = qword_100446AD8;

  return v0;
}

unint64_t sub_1000F0070()
{
  result = qword_100447EA0;
  if (!qword_100447EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447EA0);
  }

  return result;
}

uint64_t sub_1000F00C4(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100456648, &qword_100353D38);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100456650, &qword_100353D40);
  __chkstk_darwin(v5);
  sub_1000EFB74();
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

unint64_t sub_1000F028C()
{
  result = qword_100447EA8;
  if (!qword_100447EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447EA8);
  }

  return result;
}

unint64_t sub_1000F02E4()
{
  result = qword_100447EB0;
  if (!qword_100447EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447EB0);
  }

  return result;
}

unint64_t sub_1000F033C()
{
  result = qword_100447EB8;
  if (!qword_100447EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447EB8);
  }

  return result;
}

uint64_t sub_1000F0390(uint64_t a1)
{
  sub_1002D6A3C();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1000F0478(uint64_t a1)
{
  v2 = sub_1000EFB74();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000F04C8()
{
  result = qword_100447ED0;
  if (!qword_100447ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447ED0);
  }

  return result;
}

uint64_t sub_1000F0520(uint64_t a1)
{
  v2 = sub_1000F033C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000F0570()
{
  result = qword_100447ED8;
  if (!qword_100447ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447ED8);
  }

  return result;
}

uint64_t sub_1000F0608()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051C9E8);
  sub_10001EDB8(v5, qword_10051C9E8);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_1000F0778@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1000F0AE8()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051CA00);
  sub_10001EDB8(v0, qword_10051CA00);
  return sub_1002D88F0();
}

uint64_t sub_1000F0B4C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051CA18);
  v1 = sub_10001EDB8(v0, qword_10051CA18);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000F0C0C()
{
  result = swift_getKeyPath();
  qword_10051CA30 = result;
  return result;
}

uint64_t sub_1000F0C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[22] = a2;
  v3[23] = a3;
  v3[21] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[25] = swift_task_alloc();
  sub_10000321C(&qword_100456620, &qword_100353CF8);
  v3[26] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[27] = v4;
  v3[28] = *(v4 - 8);
  v3[29] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100456628, &qword_100353D00);
  v3[30] = v5;
  v3[31] = *(v5 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();

  return _swift_task_switch(sub_1000F0E14, 0, 0);
}

uint64_t sub_1000F0E14()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 272) = v2;
  v3 = sub_1000F1FC4();
  *v2 = v0;
  v2[1] = sub_1000F0EF8;
  v4 = *(v0 + 264);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6E3C, 0, &type metadata for AccessibilityAssistiveTouchTrackingSensitivityEntity, v3);
}

uint64_t sub_1000F0EF8()
{

  return _swift_task_switch(sub_1000F0FF4, 0, 0);
}

uint64_t sub_1000F0FF4()
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
  if (qword_10043A200 != -1)
  {
    swift_once();
  }

  v3 = qword_10051CA30;
  v0[37] = qword_10051CA30;

  v4 = swift_task_alloc();
  v0[38] = v4;
  v5 = sub_10002B6E4(&qword_100456608, &qword_100456610, &qword_100353CE0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1000F1150;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 20, v3, &type metadata for Double, v5);
}

uint64_t sub_1000F1150()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_1002D6E00;
  }

  else
  {
    v2 = sub_1000F12C0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000F12C0()
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
  sub_1000F0570();
  sub_1000F21D8();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000F1538()
{
  v0 = sub_10000321C(&qword_100456630, &qword_100353D08);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A200 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1000F21D8();
  sub_10002B6E4(&qword_100456638, &qword_100456630, &qword_100353D08, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1000F16AC(uint64_t *a1))(void *)
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

void (*sub_1000F1720(uint64_t *a1))(void *)
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

unint64_t sub_1000F17BC()
{
  result = qword_100447EF0;
  if (!qword_100447EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447EF0);
  }

  return result;
}

unint64_t sub_1000F1814()
{
  result = qword_100447EF8;
  if (!qword_100447EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447EF8);
  }

  return result;
}

uint64_t sub_1000F1910(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1000F0C34(a1, v5, v4);
}

uint64_t sub_1000F19BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10029FD14();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000F1A04()
{
  result = qword_100447F00;
  if (!qword_100447F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447F00);
  }

  return result;
}

unint64_t sub_1000F1A5C()
{
  result = qword_100447F08;
  if (!qword_100447F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447F08);
  }

  return result;
}

uint64_t sub_1000F1AD0()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 assistiveTouchSpeed];
  v4 = v3;

  *v1 = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000F1B98()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setAssistiveTouchSpeed:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000F1C30(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000F1CC0, 0, 0);
}

uint64_t sub_1000F1CC0()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_100447EE8, qword_1002FB580);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100456608, &qword_100456610, &qword_100353CE0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88B0();
  *v1 = 0xD000000000000033;
  v1[1] = 0x800000010035A820;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1000F1E0C()
{
  result = qword_100447F10;
  if (!qword_100447F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447F10);
  }

  return result;
}

uint64_t sub_1000F1E60(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000F2430();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1000F1F14()
{
  result = qword_100447F18;
  if (!qword_100447F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447F18);
  }

  return result;
}

unint64_t sub_1000F1F6C()
{
  result = qword_100447F20;
  if (!qword_100447F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447F20);
  }

  return result;
}

unint64_t sub_1000F1FC4()
{
  result = qword_100447F28;
  if (!qword_100447F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447F28);
  }

  return result;
}

uint64_t sub_1000F2018(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000F2430();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1000F20CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000F2430();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1000F2180()
{
  result = qword_100447F30;
  if (!qword_100447F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447F30);
  }

  return result;
}

unint64_t sub_1000F21D8()
{
  result = qword_100447F38;
  if (!qword_100447F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447F38);
  }

  return result;
}

uint64_t sub_1000F2270(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000F1E0C();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1000F2328()
{
  result = qword_100447F50;
  if (!qword_100447F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447F50);
  }

  return result;
}

unint64_t sub_1000F2380()
{
  result = qword_100447F58;
  if (!qword_100447F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447F58);
  }

  return result;
}

unint64_t sub_1000F23D8()
{
  result = qword_100447F60;
  if (!qword_100447F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447F60);
  }

  return result;
}

unint64_t sub_1000F2430()
{
  result = qword_100447F68;
  if (!qword_100447F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447F68);
  }

  return result;
}

uint64_t sub_1000F2484()
{
  v0 = qword_100446AE8;

  return v0;
}

unint64_t sub_1000F24C0()
{
  result = qword_100447F70;
  if (!qword_100447F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447F70);
  }

  return result;
}

uint64_t sub_1000F2514(uint64_t a1)
{
  v1 = sub_10000321C(&qword_1004565F8, &qword_100353CC0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100456600, &qword_100353CC8);
  __chkstk_darwin(v5);
  sub_1000F1FC4();
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

unint64_t sub_1000F26DC()
{
  result = qword_100447F78;
  if (!qword_100447F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447F78);
  }

  return result;
}

unint64_t sub_1000F2734()
{
  result = qword_100447F80;
  if (!qword_100447F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447F80);
  }

  return result;
}

unint64_t sub_1000F278C()
{
  result = qword_100447F88;
  if (!qword_100447F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447F88);
  }

  return result;
}

uint64_t sub_1000F27E0(uint64_t a1)
{
  sub_1002D69E8();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1000F28C8(uint64_t a1)
{
  v2 = sub_1000F1FC4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000F2918()
{
  result = qword_100447FA0;
  if (!qword_100447FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447FA0);
  }

  return result;
}

uint64_t sub_1000F2970(uint64_t a1)
{
  v2 = sub_1000F278C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000F29C0()
{
  result = qword_100447FA8;
  if (!qword_100447FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447FA8);
  }

  return result;
}

uint64_t sub_1000F2A58()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051CA38);
  sub_10001EDB8(v5, qword_10051CA38);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_1000F2BC8@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1000F2F38()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051CA50);
  sub_10001EDB8(v0, qword_10051CA50);
  return sub_1002D88F0();
}

uint64_t sub_1000F2F9C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051CA68);
  v1 = sub_10001EDB8(v0, qword_10051CA68);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000F305C()
{
  result = swift_getKeyPath();
  qword_10051CA80 = result;
  return result;
}

uint64_t sub_1000F3084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_1004565D0, &qword_100353C80);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_1004565D8, &qword_100353C88);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000F3264, 0, 0);
}

uint64_t sub_1000F3264()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1000F441C();
  *v2 = v0;
  v2[1] = sub_1000F3348;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6E40, 0, &type metadata for AccessibilityAssistiveTouchExtendedPredictionsEntity, v3);
}

uint64_t sub_1000F3348()
{

  return _swift_task_switch(sub_1000F3444, 0, 0);
}

uint64_t sub_1000F3444()
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
  if (qword_10043A220 != -1)
  {
    swift_once();
  }

  v3 = qword_10051CA80;
  *(v0 + 288) = qword_10051CA80;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_1004565B8, &qword_1004565C0, &qword_100353C68, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1000F35A8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1000F35A8()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1000F3718;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000F3718()
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
  sub_1000F29C0();
  sub_1000F4630();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000F3990()
{
  v0 = sub_10000321C(&qword_1004565E0, &qword_100353C90);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A220 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1000F4630();
  sub_10002B6E4(&qword_1004565E8, &qword_1004565E0, &qword_100353C90, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1000F3B04(uint64_t *a1))(void *)
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

void (*sub_1000F3B78(uint64_t *a1))(void *)
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

unint64_t sub_1000F3C14()
{
  result = qword_100447FC0;
  if (!qword_100447FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447FC0);
  }

  return result;
}

unint64_t sub_1000F3C6C()
{
  result = qword_100447FC8;
  if (!qword_100447FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447FC8);
  }

  return result;
}

uint64_t sub_1000F3D68(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1000F3084(a1, v5, v4);
}

uint64_t sub_1000F3E14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A01A0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000F3E5C()
{
  result = qword_100447FD0;
  if (!qword_100447FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447FD0);
  }

  return result;
}

unint64_t sub_1000F3EB4()
{
  result = qword_100447FD8;
  if (!qword_100447FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447FD8);
  }

  return result;
}

uint64_t sub_1000F3F28()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 assistiveTouchShouldUseExtendedKeyboardPredictions];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000F3FF0()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setAssistiveTouchShouldUseExtendedKeyboardPredictions:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000F4088(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000F4118, 0, 0);
}

uint64_t sub_1000F4118()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_100447FB8, qword_1002FBBB8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004565B8, &qword_1004565C0, &qword_100353C68, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD00000000000004ALL;
  v1[1] = 0x8000000100361A20;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1000F4264()
{
  result = qword_100447FE0;
  if (!qword_100447FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447FE0);
  }

  return result;
}

uint64_t sub_1000F42B8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000F4888();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1000F436C()
{
  result = qword_100447FE8;
  if (!qword_100447FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447FE8);
  }

  return result;
}

unint64_t sub_1000F43C4()
{
  result = qword_100447FF0;
  if (!qword_100447FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447FF0);
  }

  return result;
}

unint64_t sub_1000F441C()
{
  result = qword_100447FF8;
  if (!qword_100447FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447FF8);
  }

  return result;
}

uint64_t sub_1000F4470(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000F4888();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1000F4524(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000F4888();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1000F45D8()
{
  result = qword_100448000;
  if (!qword_100448000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448000);
  }

  return result;
}

unint64_t sub_1000F4630()
{
  result = qword_100448008;
  if (!qword_100448008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448008);
  }

  return result;
}

uint64_t sub_1000F46C8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000F4264();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1000F4780()
{
  result = qword_100448020;
  if (!qword_100448020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448020);
  }

  return result;
}

unint64_t sub_1000F47D8()
{
  result = qword_100448028;
  if (!qword_100448028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448028);
  }

  return result;
}

unint64_t sub_1000F4830()
{
  result = qword_100448030;
  if (!qword_100448030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448030);
  }

  return result;
}

unint64_t sub_1000F4888()
{
  result = qword_100448038;
  if (!qword_100448038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448038);
  }

  return result;
}

uint64_t sub_1000F48DC()
{
  v0 = qword_100446AF8;

  return v0;
}

unint64_t sub_1000F4918()
{
  result = qword_100448040;
  if (!qword_100448040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448040);
  }

  return result;
}

uint64_t sub_1000F496C(uint64_t a1)
{
  v1 = sub_10000321C(&qword_1004565A8, &qword_100353C48);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_1004565B0, &qword_100353C50);
  __chkstk_darwin(v5);
  sub_1000F441C();
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

unint64_t sub_1000F4B34()
{
  result = qword_100448048;
  if (!qword_100448048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448048);
  }

  return result;
}

unint64_t sub_1000F4B8C()
{
  result = qword_100448050;
  if (!qword_100448050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448050);
  }

  return result;
}

unint64_t sub_1000F4BE4()
{
  result = qword_100448058;
  if (!qword_100448058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448058);
  }

  return result;
}

uint64_t sub_1000F4C38(uint64_t a1)
{
  sub_1002D6994();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1000F4D20(uint64_t a1)
{
  v2 = sub_1000F441C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000F4D70()
{
  result = qword_100448070;
  if (!qword_100448070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448070);
  }

  return result;
}

uint64_t sub_1000F4DC8(uint64_t a1)
{
  v2 = sub_1000F4BE4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000F4E18()
{
  result = qword_100448078;
  if (!qword_100448078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448078);
  }

  return result;
}

uint64_t sub_1000F4EB0()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051CA88);
  sub_10001EDB8(v5, qword_10051CA88);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_1000F5020@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1000F5390()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051CAA0);
  sub_10001EDB8(v0, qword_10051CAA0);
  return sub_1002D88F0();
}

uint64_t sub_1000F53F4()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051CAB8);
  v1 = sub_10001EDB8(v0, qword_10051CAB8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000F54B4()
{
  result = swift_getKeyPath();
  qword_10051CAD0 = result;
  return result;
}

uint64_t sub_1000F54DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100456580, &qword_100353C08);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100456588, &qword_100353C10);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000F56BC, 0, 0);
}

uint64_t sub_1000F56BC()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1000F6878();
  *v2 = v0;
  v2[1] = sub_1000F57A0;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6E44, 0, &type metadata for AccessibilityAssistiveTouchSoundOnMouseClickEntity, v3);
}

uint64_t sub_1000F57A0()
{

  return _swift_task_switch(sub_1000F589C, 0, 0);
}

uint64_t sub_1000F589C()
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
  if (qword_10043A240 != -1)
  {
    swift_once();
  }

  v3 = qword_10051CAD0;
  *(v0 + 288) = qword_10051CAD0;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100456568, &qword_100456570, &qword_100353BF0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1000F5A00;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1000F5A00()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1000F5B70;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000F5B70()
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
  sub_1000F4E18();
  sub_1000F6A8C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000F5DE8()
{
  v0 = sub_10000321C(&qword_100456590, &qword_100353C18);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A240 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1000F6A8C();
  sub_10002B6E4(&qword_100456598, &qword_100456590, &qword_100353C18, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1000F5F5C(uint64_t *a1))(void *)
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

void (*sub_1000F5FD0(uint64_t *a1))(void *)
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

unint64_t sub_1000F606C()
{
  result = qword_100448090;
  if (!qword_100448090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448090);
  }

  return result;
}

unint64_t sub_1000F60C4()
{
  result = qword_100448098;
  if (!qword_100448098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448098);
  }

  return result;
}

uint64_t sub_1000F61C0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1000F54DC(a1, v5, v4);
}

uint64_t sub_1000F626C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A0608();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000F62B4()
{
  result = qword_1004480A0;
  if (!qword_1004480A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004480A0);
  }

  return result;
}

unint64_t sub_1000F630C()
{
  result = qword_1004480A8;
  if (!qword_1004480A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004480A8);
  }

  return result;
}

uint64_t sub_1000F6380()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 assistiveTouchMouseClickSoundsEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000F6448()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setAssistiveTouchMouseClickSoundsEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000F64E0(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000F6570, 0, 0);
}

uint64_t sub_1000F6570()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_100448088, qword_1002FC1F0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100456568, &qword_100456570, &qword_100353BF0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000037;
  v1[1] = 0x8000000100361D30;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1000F66C0()
{
  result = qword_1004480B0;
  if (!qword_1004480B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004480B0);
  }

  return result;
}

uint64_t sub_1000F6714(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000F6CE4();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1000F67C8()
{
  result = qword_1004480B8;
  if (!qword_1004480B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004480B8);
  }

  return result;
}

unint64_t sub_1000F6820()
{
  result = qword_1004480C0;
  if (!qword_1004480C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004480C0);
  }

  return result;
}

unint64_t sub_1000F6878()
{
  result = qword_1004480C8;
  if (!qword_1004480C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004480C8);
  }

  return result;
}

uint64_t sub_1000F68CC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000F6CE4();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1000F6980(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000F6CE4();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1000F6A34()
{
  result = qword_1004480D0;
  if (!qword_1004480D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004480D0);
  }

  return result;
}

unint64_t sub_1000F6A8C()
{
  result = qword_1004480D8;
  if (!qword_1004480D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004480D8);
  }

  return result;
}

uint64_t sub_1000F6B24(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000F66C0();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1000F6BDC()
{
  result = qword_1004480F0;
  if (!qword_1004480F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004480F0);
  }

  return result;
}

unint64_t sub_1000F6C34()
{
  result = qword_1004480F8;
  if (!qword_1004480F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004480F8);
  }

  return result;
}

unint64_t sub_1000F6C8C()
{
  result = qword_100448100;
  if (!qword_100448100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448100);
  }

  return result;
}

unint64_t sub_1000F6CE4()
{
  result = qword_100448108;
  if (!qword_100448108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448108);
  }

  return result;
}

uint64_t sub_1000F6D38()
{
  v0 = qword_100446B08;

  return v0;
}

unint64_t sub_1000F6D74()
{
  result = qword_100448110;
  if (!qword_100448110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448110);
  }

  return result;
}

uint64_t sub_1000F6DC8(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100456558, &qword_100353BD0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100456560, &qword_100353BD8);
  __chkstk_darwin(v5);
  sub_1000F6878();
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

unint64_t sub_1000F6F90()
{
  result = qword_100448118;
  if (!qword_100448118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448118);
  }

  return result;
}

unint64_t sub_1000F6FE8()
{
  result = qword_100448120;
  if (!qword_100448120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448120);
  }

  return result;
}

unint64_t sub_1000F7040()
{
  result = qword_100448128;
  if (!qword_100448128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448128);
  }

  return result;
}

uint64_t sub_1000F7094(uint64_t a1)
{
  sub_1002D6940();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1000F717C(uint64_t a1)
{
  v2 = sub_1000F6878();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000F71CC()
{
  result = qword_100448140;
  if (!qword_100448140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448140);
  }

  return result;
}

uint64_t sub_1000F7224(uint64_t a1)
{
  v2 = sub_1000F7040();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000F7274()
{
  result = qword_100448148;
  if (!qword_100448148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448148);
  }

  return result;
}

uint64_t sub_1000F730C()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051CAD8);
  sub_10001EDB8(v5, qword_10051CAD8);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_1000F747C@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1000F77EC()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051CAF0);
  sub_10001EDB8(v0, qword_10051CAF0);
  return sub_1002D88F0();
}

uint64_t sub_1000F7850()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051CB08);
  v1 = sub_10001EDB8(v0, qword_10051CB08);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000F7910()
{
  result = swift_getKeyPath();
  qword_10051CB20 = result;
  return result;
}

uint64_t sub_1000F7938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100456530, &qword_100353B90);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100456538, &qword_100353B98);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000F7B18, 0, 0);
}

uint64_t sub_1000F7B18()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1000F8D10();
  *v2 = v0;
  v2[1] = sub_1000F7BFC;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6E48, 0, &type metadata for AccessibilityAudioDescriptionsEntity, v3);
}

uint64_t sub_1000F7BFC()
{

  return _swift_task_switch(sub_1000F7CF8, 0, 0);
}

uint64_t sub_1000F7CF8()
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
  if (qword_10043A260 != -1)
  {
    swift_once();
  }

  v3 = qword_10051CB20;
  *(v0 + 288) = qword_10051CB20;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100456518, &qword_100456520, &qword_100353B78, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1000F7E5C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1000F7E5C()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1000F7FCC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000F7FCC()
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
  sub_1000F7274();
  sub_1000F8F24();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000F8244()
{
  v0 = sub_10000321C(&qword_100456540, &qword_100353BA0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A260 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1000F8F24();
  sub_10002B6E4(&qword_100456548, &qword_100456540, &qword_100353BA0, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1000F83B8(uint64_t *a1))(void *)
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

void (*sub_1000F842C(uint64_t *a1))(void *)
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

unint64_t sub_1000F84C8()
{
  result = qword_100448160;
  if (!qword_100448160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448160);
  }

  return result;
}

unint64_t sub_1000F8520()
{
  result = qword_100448168;
  if (!qword_100448168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448168);
  }

  return result;
}

uint64_t sub_1000F861C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1000F7938(a1, v5, v4);
}

uint64_t sub_1000F86C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A0A70();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000F8710()
{
  result = qword_100448170;
  if (!qword_100448170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448170);
  }

  return result;
}

unint64_t sub_1000F8768()
{
  result = qword_100448178;
  if (!qword_100448178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448178);
  }

  return result;
}

const __CFBoolean *sub_1000F87DC(uint64_t a1)
{
  if (qword_100438D20 != -1)
  {
    swift_once();
    if (MAAudibleMediaPrefCopyPreferDescriptiveVideo())
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  if (!MAAudibleMediaPrefCopyPreferDescriptiveVideo())
  {
    goto LABEL_6;
  }

LABEL_3:
  result = MAAudibleMediaPrefCopyPreferDescriptiveVideo();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  Value = CFBooleanGetValue(result);

  v5 = Value != 0;
LABEL_7:
  **(v1 + 16) = v5;
  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_1000F88CC()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  MAAudibleMediaPrefSetPreferDescriptiveVideo();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000F897C(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000F8A0C, 0, 0);
}

uint64_t sub_1000F8A0C()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_100448158, qword_1002FC828);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100456518, &qword_100456520, &qword_100353B78, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD00000000000002BLL;
  v1[1] = 0x800000010037FB10;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1000F8B58()
{
  result = qword_100448180;
  if (!qword_100448180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448180);
  }

  return result;
}

uint64_t sub_1000F8BAC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000F917C();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1000F8C60()
{
  result = qword_100448188;
  if (!qword_100448188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448188);
  }

  return result;
}

unint64_t sub_1000F8CB8()
{
  result = qword_100448190;
  if (!qword_100448190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448190);
  }

  return result;
}

unint64_t sub_1000F8D10()
{
  result = qword_100448198;
  if (!qword_100448198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448198);
  }

  return result;
}

uint64_t sub_1000F8D64(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000F917C();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1000F8E18(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000F917C();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1000F8ECC()
{
  result = qword_1004481A0;
  if (!qword_1004481A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004481A0);
  }

  return result;
}

unint64_t sub_1000F8F24()
{
  result = qword_1004481A8;
  if (!qword_1004481A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004481A8);
  }

  return result;
}

uint64_t sub_1000F8FBC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000F8B58();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1000F9074()
{
  result = qword_1004481C0;
  if (!qword_1004481C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004481C0);
  }

  return result;
}

unint64_t sub_1000F90CC()
{
  result = qword_1004481C8;
  if (!qword_1004481C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004481C8);
  }

  return result;
}

unint64_t sub_1000F9124()
{
  result = qword_1004481D0;
  if (!qword_1004481D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004481D0);
  }

  return result;
}

unint64_t sub_1000F917C()
{
  result = qword_1004481D8;
  if (!qword_1004481D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004481D8);
  }

  return result;
}

uint64_t sub_1000F91D0()
{
  v0 = qword_100446B18;

  return v0;
}

unint64_t sub_1000F920C()
{
  result = qword_1004481E0;
  if (!qword_1004481E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004481E0);
  }

  return result;
}

uint64_t sub_1000F9260(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100456508, &qword_100353B58);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100456510, &qword_100353B60);
  __chkstk_darwin(v5);
  sub_1000F8D10();
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

unint64_t sub_1000F9428()
{
  result = qword_1004481E8;
  if (!qword_1004481E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004481E8);
  }

  return result;
}

unint64_t sub_1000F9480()
{
  result = qword_1004481F0;
  if (!qword_1004481F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004481F0);
  }

  return result;
}

unint64_t sub_1000F94D8()
{
  result = qword_1004481F8;
  if (!qword_1004481F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004481F8);
  }

  return result;
}

uint64_t sub_1000F952C(uint64_t a1)
{
  sub_1002D68EC();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1000F9614(uint64_t a1)
{
  v2 = sub_1000F8D10();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000F9664()
{
  result = qword_100448210;
  if (!qword_100448210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448210);
  }

  return result;
}

uint64_t sub_1000F96BC(uint64_t a1)
{
  v2 = sub_1000F94D8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000F970C()
{
  result = qword_100448218;
  if (!qword_100448218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448218);
  }

  return result;
}

uint64_t sub_1000F97D0@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1000F9B58()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051CB40);
  sub_10001EDB8(v0, qword_10051CB40);
  return sub_1002D88F0();
}

uint64_t sub_1000F9BBC()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051CB58);
  v1 = sub_10001EDB8(v0, qword_10051CB58);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000F9C7C()
{
  result = swift_getKeyPath();
  qword_10051CB70 = result;
  return result;
}

uint64_t sub_1000F9CA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_1004564E0, &qword_100353B18);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_1004564E8, &qword_100353B20);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000F9E84, 0, 0);
}

uint64_t sub_1000F9E84()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1000FB038();
  *v2 = v0;
  v2[1] = sub_1000F9F68;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6E4C, 0, &type metadata for AccessibilityBackgroundSoundsEnabledEntity, v3);
}

uint64_t sub_1000F9F68()
{

  return _swift_task_switch(sub_1000FA064, 0, 0);
}

uint64_t sub_1000FA064()
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
  if (qword_10043A280 != -1)
  {
    swift_once();
  }

  v3 = qword_10051CB70;
  *(v0 + 288) = qword_10051CB70;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_1004564C8, &qword_1004564D0, &qword_100353B00, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1000FA1C8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1000FA1C8()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1000FA338;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000FA338()
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
  sub_1000F970C();
  sub_1000FB24C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000FA5B0()
{
  v0 = sub_10000321C(&qword_1004564F0, &qword_100353B28);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A280 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1000FB24C();
  sub_10002B6E4(&qword_1004564F8, &qword_1004564F0, &qword_100353B28, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1000FA724(uint64_t *a1))(void *)
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

void (*sub_1000FA798(uint64_t *a1))(void *)
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

unint64_t sub_1000FA834()
{
  result = qword_100448230;
  if (!qword_100448230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448230);
  }

  return result;
}

unint64_t sub_1000FA88C()
{
  result = qword_100448238;
  if (!qword_100448238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448238);
  }

  return result;
}

uint64_t sub_1000FA988(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1000F9CA4(a1, v5, v4);
}

uint64_t sub_1000FAA34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A0ED8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000FAA7C()
{
  result = qword_100448240;
  if (!qword_100448240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448240);
  }

  return result;
}

unint64_t sub_1000FAAD4()
{
  result = qword_100448248;
  if (!qword_100448248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448248);
  }

  return result;
}

uint64_t sub_1000FAB48()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 comfortSoundsEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000FAC10()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setComfortSoundsEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000FACA8(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000FAD38, 0, 0);
}

uint64_t sub_1000FAD38()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_100448228, qword_1002FCE60);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004564C8, &qword_1004564D0, &qword_100353B00, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000039;
  v1[1] = 0x80000001003604E0;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1000FAE80()
{
  result = qword_100448250;
  if (!qword_100448250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448250);
  }

  return result;
}

uint64_t sub_1000FAED4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000FB4A4();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1000FAF88()
{
  result = qword_100448258;
  if (!qword_100448258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448258);
  }

  return result;
}

unint64_t sub_1000FAFE0()
{
  result = qword_100448260;
  if (!qword_100448260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448260);
  }

  return result;
}

unint64_t sub_1000FB038()
{
  result = qword_100448268;
  if (!qword_100448268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448268);
  }

  return result;
}

uint64_t sub_1000FB08C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000FB4A4();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1000FB140(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000FB4A4();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1000FB1F4()
{
  result = qword_100448270;
  if (!qword_100448270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448270);
  }

  return result;
}

unint64_t sub_1000FB24C()
{
  result = qword_100448278;
  if (!qword_100448278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448278);
  }

  return result;
}

uint64_t sub_1000FB2E4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000FAE80();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1000FB39C()
{
  result = qword_100448290;
  if (!qword_100448290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448290);
  }

  return result;
}

unint64_t sub_1000FB3F4()
{
  result = qword_100448298;
  if (!qword_100448298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448298);
  }

  return result;
}

unint64_t sub_1000FB44C()
{
  result = qword_1004482A0;
  if (!qword_1004482A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004482A0);
  }

  return result;
}

unint64_t sub_1000FB4A4()
{
  result = qword_1004482A8;
  if (!qword_1004482A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004482A8);
  }

  return result;
}

uint64_t sub_1000FB4F8()
{
  v0 = qword_100446B28;

  return v0;
}

unint64_t sub_1000FB534()
{
  result = qword_1004482B0;
  if (!qword_1004482B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004482B0);
  }

  return result;
}

uint64_t sub_1000FB588(uint64_t a1)
{
  v1 = sub_10000321C(&qword_1004564B8, &qword_100353AE0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_1004564C0, &qword_100353AE8);
  __chkstk_darwin(v5);
  sub_1000FB038();
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

unint64_t sub_1000FB750()
{
  result = qword_1004482B8;
  if (!qword_1004482B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004482B8);
  }

  return result;
}

unint64_t sub_1000FB7A8()
{
  result = qword_1004482C0;
  if (!qword_1004482C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004482C0);
  }

  return result;
}

unint64_t sub_1000FB800()
{
  result = qword_1004482C8;
  if (!qword_1004482C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004482C8);
  }

  return result;
}

uint64_t sub_1000FB854(uint64_t a1)
{
  sub_1002D6898();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1000FB93C(uint64_t a1)
{
  v2 = sub_1000FB038();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000FB98C()
{
  result = qword_1004482E0;
  if (!qword_1004482E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004482E0);
  }

  return result;
}

uint64_t sub_1000FB9E4(uint64_t a1)
{
  v2 = sub_1000FB800();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000FBA34()
{
  result = qword_1004482E8;
  if (!qword_1004482E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004482E8);
  }

  return result;
}

uint64_t sub_1000FBACC()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051CB78);
  sub_10001EDB8(v5, qword_10051CB78);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_1000FBC3C@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1000FBFAC()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051CB90);
  sub_10001EDB8(v0, qword_10051CB90);
  return sub_1002D88F0();
}

uint64_t sub_1000FC010()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051CBA8);
  v1 = sub_10001EDB8(v0, qword_10051CBA8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000FC0D0()
{
  result = swift_getKeyPath();
  qword_10051CBC0 = result;
  return result;
}

uint64_t sub_1000FC0F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100456490, &qword_100353AA0);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100456498, &qword_100353AA8);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000FC2D8, 0, 0);
}

uint64_t sub_1000FC2D8()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1000FD464();
  *v2 = v0;
  v2[1] = sub_1000FC3BC;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6E50, 0, &type metadata for AccessibilityBackgroundSoundsSoundSelectorEntity, v3);
}

uint64_t sub_1000FC3BC()
{

  return _swift_task_switch(sub_1000FC4B8, 0, 0);
}

uint64_t sub_1000FC4B8()
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
  if (qword_10043A2A0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051CBC0;
  v0[36] = qword_10051CBC0;

  v4 = swift_task_alloc();
  v0[37] = v4;
  v5 = sub_10002B6E4(&qword_100456470, &qword_100456478, &qword_100353A80, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1000FC614;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 39, v3, &type metadata for HUBackgroundSoundsSoundSelectionAppEnum, v5);
}

uint64_t sub_1000FC614()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1000FC784;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000FC784()
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
  sub_1000FBA34();
  sub_1000FD678();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000FC9FC()
{
  v0 = sub_10000321C(&qword_1004564A0, &qword_100353AB0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A2A0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1000FD678();
  sub_10002B6E4(&qword_1004564A8, &qword_1004564A0, &qword_100353AB0, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1000FCB70(uint64_t *a1))(void *)
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

void (*sub_1000FCBE4(uint64_t *a1))(void *)
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

unint64_t sub_1000FCC80()
{
  result = qword_100448300;
  if (!qword_100448300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448300);
  }

  return result;
}

unint64_t sub_1000FCCD8()
{
  result = qword_100448308;
  if (!qword_100448308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448308);
  }

  return result;
}

uint64_t sub_1000FCDD4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1000FC0F8(a1, v5, v4);
}

uint64_t sub_1000FCE80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A1340();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000FCEC8()
{
  result = qword_100448310;
  if (!qword_100448310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448310);
  }

  return result;
}

uint64_t sub_1000FCF40()
{
  v1 = *(v0 + 16);
  *v1 = sub_1000032E0();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000FCFCC()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [objc_opt_self() defaultComfortSoundForGroup:v1 + 1];
  [v2 setSelectedComfortSound:v3];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000FD0C4(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000FD154, 0, 0);
}

uint64_t sub_1000FD154()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_1004482F8, &qword_1002FD498);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100456470, &qword_100456478, &qword_100353A80, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  sub_100017718();
  v2 = sub_1002D8890();
  *v1 = 0xD00000000000003ALL;
  v1[1] = 0x800000010037F8B0;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1000FD2AC()
{
  result = qword_100448318;
  if (!qword_100448318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448318);
  }

  return result;
}

uint64_t sub_1000FD300(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000FD8D0();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1000FD3B4()
{
  result = qword_100448320;
  if (!qword_100448320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448320);
  }

  return result;
}

unint64_t sub_1000FD40C()
{
  result = qword_100448328;
  if (!qword_100448328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448328);
  }

  return result;
}

unint64_t sub_1000FD464()
{
  result = qword_100448330;
  if (!qword_100448330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448330);
  }

  return result;
}

uint64_t sub_1000FD4B8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000FD8D0();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1000FD56C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000FD8D0();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1000FD620()
{
  result = qword_100448338;
  if (!qword_100448338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448338);
  }

  return result;
}

unint64_t sub_1000FD678()
{
  result = qword_100448340;
  if (!qword_100448340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448340);
  }

  return result;
}

uint64_t sub_1000FD710(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000FD2AC();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1000FD7C8()
{
  result = qword_100448358;
  if (!qword_100448358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448358);
  }

  return result;
}

unint64_t sub_1000FD820()
{
  result = qword_100448360;
  if (!qword_100448360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448360);
  }

  return result;
}

unint64_t sub_1000FD878()
{
  result = qword_100448368;
  if (!qword_100448368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448368);
  }

  return result;
}

unint64_t sub_1000FD8D0()
{
  result = qword_100448370;
  if (!qword_100448370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448370);
  }

  return result;
}

uint64_t sub_1000FD924()
{
  v0 = qword_100446B38;

  return v0;
}

unint64_t sub_1000FD960()
{
  result = qword_100448378;
  if (!qword_100448378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448378);
  }

  return result;
}

uint64_t sub_1000FD9B4(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100456460, &qword_100353A60);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100456468, &qword_100353A68);
  __chkstk_darwin(v5);
  sub_1000FD464();
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

unint64_t sub_1000FDB7C()
{
  result = qword_100448380;
  if (!qword_100448380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448380);
  }

  return result;
}

unint64_t sub_1000FDBD4()
{
  result = qword_100448388;
  if (!qword_100448388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448388);
  }

  return result;
}

unint64_t sub_1000FDC2C()
{
  result = qword_100448390;
  if (!qword_100448390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448390);
  }

  return result;
}

uint64_t sub_1000FDC80(uint64_t a1)
{
  sub_1002D6844();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1000FDD68(uint64_t a1)
{
  v2 = sub_1000FD464();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000FDDB8()
{
  result = qword_1004483A8;
  if (!qword_1004483A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004483A8);
  }

  return result;
}

uint64_t sub_1000FDE10(uint64_t a1)
{
  v2 = sub_1000FDC2C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000FDE60()
{
  result = qword_1004483B0;
  if (!qword_1004483B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004483B0);
  }

  return result;
}

uint64_t sub_1000FDEF8()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051CBC8);
  sub_10001EDB8(v5, qword_10051CBC8);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_1000FE068@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1000FE3D8()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051CBE0);
  sub_10001EDB8(v0, qword_10051CBE0);
  return sub_1002D88F0();
}

uint64_t sub_1000FE43C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051CBF8);
  v1 = sub_10001EDB8(v0, qword_10051CBF8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000FE4FC()
{
  result = swift_getKeyPath();
  qword_10051CC10 = result;
  return result;
}

uint64_t sub_1000FE524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100456438, &qword_100353A20);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100456440, &qword_100353A28);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000FE704, 0, 0);
}

uint64_t sub_1000FE704()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1000FF8BC();
  *v2 = v0;
  v2[1] = sub_1000FE7E8;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6E54, 0, &type metadata for AccessibilityBackgroundSoundsUseWhenMediaIsPlayingEnabledEntity, v3);
}

uint64_t sub_1000FE7E8()
{

  return _swift_task_switch(sub_1000FE8E4, 0, 0);
}

uint64_t sub_1000FE8E4()
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
  if (qword_10043A2C0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051CC10;
  *(v0 + 288) = qword_10051CC10;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100456420, &qword_100456428, &qword_100353A08, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1000FEA48;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1000FEA48()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1000FEBB8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000FEBB8()
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
  sub_1000FDE60();
  sub_1000FFAD0();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000FEE30()
{
  v0 = sub_10000321C(&qword_100456448, &qword_100353A30);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A2C0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1000FFAD0();
  sub_10002B6E4(&qword_100456450, &qword_100456448, &qword_100353A30, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1000FEFA4(uint64_t *a1))(void *)
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

void (*sub_1000FF018(uint64_t *a1))(void *)
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

unint64_t sub_1000FF0B4()
{
  result = qword_1004483C8;
  if (!qword_1004483C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004483C8);
  }

  return result;
}

unint64_t sub_1000FF10C()
{
  result = qword_1004483D0;
  if (!qword_1004483D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004483D0);
  }

  return result;
}

uint64_t sub_1000FF208(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1000FE524(a1, v5, v4);
}

uint64_t sub_1000FF2B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A1744();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000FF2FC()
{
  result = qword_1004483D8;
  if (!qword_1004483D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004483D8);
  }

  return result;
}

unint64_t sub_1000FF354()
{
  result = qword_1004483E0;
  if (!qword_1004483E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004483E0);
  }

  return result;
}

uint64_t sub_1000FF3C8()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 mixesWithMedia];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000FF490()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setMixesWithMedia:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000FF528(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000FF5B8, 0, 0);
}

uint64_t sub_1000FF5B8()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_1004483C0, qword_1002FDAD0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100456420, &qword_100456428, &qword_100353A08, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000040;
  v1[1] = 0x800000010037F740;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1000FF704()
{
  result = qword_1004483E8;
  if (!qword_1004483E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004483E8);
  }

  return result;
}

uint64_t sub_1000FF758(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000FFD28();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1000FF80C()
{
  result = qword_1004483F0;
  if (!qword_1004483F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004483F0);
  }

  return result;
}

unint64_t sub_1000FF864()
{
  result = qword_1004483F8;
  if (!qword_1004483F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004483F8);
  }

  return result;
}

unint64_t sub_1000FF8BC()
{
  result = qword_100448400;
  if (!qword_100448400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448400);
  }

  return result;
}

uint64_t sub_1000FF910(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000FFD28();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1000FF9C4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000FFD28();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1000FFA78()
{
  result = qword_100448408;
  if (!qword_100448408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448408);
  }

  return result;
}

unint64_t sub_1000FFAD0()
{
  result = qword_100448410;
  if (!qword_100448410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448410);
  }

  return result;
}

uint64_t sub_1000FFB68(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000FF704();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1000FFC20()
{
  result = qword_100448428;
  if (!qword_100448428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448428);
  }

  return result;
}

unint64_t sub_1000FFC78()
{
  result = qword_100448430;
  if (!qword_100448430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448430);
  }

  return result;
}

unint64_t sub_1000FFCD0()
{
  result = qword_100448438;
  if (!qword_100448438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448438);
  }

  return result;
}

unint64_t sub_1000FFD28()
{
  result = qword_100448440;
  if (!qword_100448440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448440);
  }

  return result;
}

uint64_t sub_1000FFD7C()
{
  v0 = qword_100446B48;

  return v0;
}

unint64_t sub_1000FFDB8()
{
  result = qword_100448448;
  if (!qword_100448448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448448);
  }

  return result;
}

uint64_t sub_1000FFE0C(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100456410, &qword_1003539E8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100456418, &qword_1003539F0);
  __chkstk_darwin(v5);
  sub_1000FF8BC();
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

unint64_t sub_1000FFFD4()
{
  result = qword_100448450;
  if (!qword_100448450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448450);
  }

  return result;
}

unint64_t sub_10010002C()
{
  result = qword_100448458;
  if (!qword_100448458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448458);
  }

  return result;
}

unint64_t sub_100100084()
{
  result = qword_100448460;
  if (!qword_100448460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448460);
  }

  return result;
}

uint64_t sub_1001000D8(uint64_t a1)
{
  sub_1002D67F0();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1001001C0(uint64_t a1)
{
  v2 = sub_1000FF8BC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100100210()
{
  result = qword_100448478;
  if (!qword_100448478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448478);
  }

  return result;
}

uint64_t sub_100100268(uint64_t a1)
{
  v2 = sub_100100084();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001002B8()
{
  result = qword_100448480;
  if (!qword_100448480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448480);
  }

  return result;
}

uint64_t sub_100100350()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051CC18);
  sub_10001EDB8(v5, qword_10051CC18);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_1001004C0@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100100830()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051CC30);
  sub_10001EDB8(v0, qword_10051CC30);
  return sub_1002D88F0();
}

uint64_t sub_100100894()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051CC48);
  v1 = sub_10001EDB8(v0, qword_10051CC48);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100100954()
{
  result = swift_getKeyPath();
  qword_10051CC60 = result;
  return result;
}

uint64_t sub_10010097C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_1004563E8, &qword_1003539A8);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_1004563F0, &qword_1003539B0);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100100B5C, 0, 0);
}

uint64_t sub_100100B5C()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_100101D14();
  *v2 = v0;
  v2[1] = sub_100100C40;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6E58, 0, &type metadata for AccessibilityBackgroundSoundsStopSoundsWhenLockedEnabledEntity, v3);
}

uint64_t sub_100100C40()
{

  return _swift_task_switch(sub_100100D3C, 0, 0);
}

uint64_t sub_100100D3C()
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
  if (qword_10043A2E0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051CC60;
  *(v0 + 288) = qword_10051CC60;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_1004563D0, &qword_1004563D8, &qword_100353990, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_100100EA0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_100100EA0()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_100101010;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100101010()
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
  sub_1001002B8();
  sub_100101F28();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100101288()
{
  v0 = sub_10000321C(&qword_1004563F8, &qword_1003539B8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A2E0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100101F28();
  sub_10002B6E4(&qword_100456400, &qword_1004563F8, &qword_1003539B8, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1001013FC(uint64_t *a1))(void *)
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

void (*sub_100101470(uint64_t *a1))(void *)
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

unint64_t sub_10010150C()
{
  result = qword_100448498;
  if (!qword_100448498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448498);
  }

  return result;
}

unint64_t sub_100101564()
{
  result = qword_1004484A0;
  if (!qword_1004484A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004484A0);
  }

  return result;
}

uint64_t sub_100101660(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10010097C(a1, v5, v4);
}

uint64_t sub_10010170C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A1BAC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100101754()
{
  result = qword_1004484A8;
  if (!qword_1004484A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004484A8);
  }

  return result;
}

unint64_t sub_1001017AC()
{
  result = qword_1004484B0;
  if (!qword_1004484B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004484B0);
  }

  return result;
}

uint64_t sub_100101820()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 stopsOnLock];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001018E8()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setStopsOnLock:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100101980(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100101A10, 0, 0);
}

uint64_t sub_100101A10()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_100448490, qword_1002FE108);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004563D0, &qword_1004563D8, &qword_100353990, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000044;
  v1[1] = 0x800000010037F5E0;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_100101B5C()
{
  result = qword_1004484B8;
  if (!qword_1004484B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004484B8);
  }

  return result;
}

uint64_t sub_100101BB0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100102180();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100101C64()
{
  result = qword_1004484C0;
  if (!qword_1004484C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004484C0);
  }

  return result;
}

unint64_t sub_100101CBC()
{
  result = qword_1004484C8;
  if (!qword_1004484C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004484C8);
  }

  return result;
}

unint64_t sub_100101D14()
{
  result = qword_1004484D0;
  if (!qword_1004484D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004484D0);
  }

  return result;
}

uint64_t sub_100101D68(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100102180();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100101E1C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100102180();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100101ED0()
{
  result = qword_1004484D8;
  if (!qword_1004484D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004484D8);
  }

  return result;
}

unint64_t sub_100101F28()
{
  result = qword_1004484E0;
  if (!qword_1004484E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004484E0);
  }

  return result;
}

uint64_t sub_100101FC0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100101B5C();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100102078()
{
  result = qword_1004484F8;
  if (!qword_1004484F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004484F8);
  }

  return result;
}

unint64_t sub_1001020D0()
{
  result = qword_100448500;
  if (!qword_100448500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448500);
  }

  return result;
}

unint64_t sub_100102128()
{
  result = qword_100448508;
  if (!qword_100448508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448508);
  }

  return result;
}

unint64_t sub_100102180()
{
  result = qword_100448510;
  if (!qword_100448510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448510);
  }

  return result;
}

uint64_t sub_1001021D4()
{
  v0 = qword_100446B58;

  return v0;
}

unint64_t sub_100102210()
{
  result = qword_100448518;
  if (!qword_100448518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448518);
  }

  return result;
}

uint64_t sub_100102264(uint64_t a1)
{
  v1 = sub_10000321C(&qword_1004563C0, &qword_100353970);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_1004563C8, &qword_100353978);
  __chkstk_darwin(v5);
  sub_100101D14();
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

unint64_t sub_10010242C()
{
  result = qword_100448520;
  if (!qword_100448520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448520);
  }

  return result;
}

unint64_t sub_100102484()
{
  result = qword_100448528;
  if (!qword_100448528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448528);
  }

  return result;
}

unint64_t sub_1001024DC()
{
  result = qword_100448530;
  if (!qword_100448530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448530);
  }

  return result;
}

uint64_t sub_100102530(uint64_t a1)
{
  sub_1002D679C();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100102618(uint64_t a1)
{
  v2 = sub_100101D14();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100102668()
{
  result = qword_100448548;
  if (!qword_100448548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448548);
  }

  return result;
}

uint64_t sub_1001026C0(uint64_t a1)
{
  v2 = sub_1001024DC();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100102710()
{
  result = qword_100448550;
  if (!qword_100448550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448550);
  }

  return result;
}

uint64_t sub_1001027A8()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051CC68);
  sub_10001EDB8(v5, qword_10051CC68);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_100102918@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100102C88()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051CC80);
  sub_10001EDB8(v0, qword_10051CC80);
  return sub_1002D88F0();
}

uint64_t sub_100102CEC()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051CC98);
  v1 = sub_10001EDB8(v0, qword_10051CC98);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100102DAC()
{
  result = swift_getKeyPath();
  qword_10051CCB0 = result;
  return result;
}

uint64_t sub_100102DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[22] = a2;
  v3[23] = a3;
  v3[21] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[25] = swift_task_alloc();
  sub_10000321C(&qword_100456398, &qword_100353930);
  v3[26] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[27] = v4;
  v3[28] = *(v4 - 8);
  v3[29] = swift_task_alloc();
  v5 = sub_10000321C(&qword_1004563A0, &qword_100353938);
  v3[30] = v5;
  v3[31] = *(v5 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();

  return _swift_task_switch(sub_100102FB4, 0, 0);
}

uint64_t sub_100102FB4()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 272) = v2;
  v3 = sub_100104164();
  *v2 = v0;
  v2[1] = sub_100103098;
  v4 = *(v0 + 264);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6E5C, 0, &type metadata for AccessibilityBackgroundSoundsVolumeEntity, v3);
}

uint64_t sub_100103098()
{

  return _swift_task_switch(sub_100103194, 0, 0);
}

uint64_t sub_100103194()
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
  if (qword_10043A300 != -1)
  {
    swift_once();
  }

  v3 = qword_10051CCB0;
  v0[37] = qword_10051CCB0;

  v4 = swift_task_alloc();
  v0[38] = v4;
  v5 = sub_10002B6E4(&qword_100456380, &qword_100456388, &qword_100353918, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1001032F0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 20, v3, &type metadata for Double, v5);
}

uint64_t sub_1001032F0()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_1002D6E00;
  }

  else
  {
    v2 = sub_100103460;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100103460()
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
  sub_100102710();
  sub_100104378();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001036D8()
{
  v0 = sub_10000321C(&qword_1004563A8, &qword_100353940);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A300 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100104378();
  sub_10002B6E4(&qword_1004563B0, &qword_1004563A8, &qword_100353940, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_10010384C(uint64_t *a1))(void *)
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

void (*sub_1001038C0(uint64_t *a1))(void *)
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

unint64_t sub_10010395C()
{
  result = qword_100448568;
  if (!qword_100448568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448568);
  }

  return result;
}

unint64_t sub_1001039B4()
{
  result = qword_100448570;
  if (!qword_100448570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448570);
  }

  return result;
}

uint64_t sub_100103AB0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100102DD4(a1, v5, v4);
}

uint64_t sub_100103B5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A2014();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100103BA4()
{
  result = qword_100448578;
  if (!qword_100448578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448578);
  }

  return result;
}

unint64_t sub_100103BFC()
{
  result = qword_100448580;
  if (!qword_100448580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448580);
  }

  return result;
}

uint64_t sub_100103C70()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 relativeVolume];
  v4 = v3;

  *v1 = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100103D38()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setRelativeVolume:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100103DD0(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100103E60, 0, 0);
}

uint64_t sub_100103E60()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_100448560, qword_1002FE740);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100456380, &qword_100456388, &qword_100353918, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88B0();
  *v1 = 0xD00000000000003ALL;
  v1[1] = 0x800000010037F4A0;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_100103FAC()
{
  result = qword_100448588;
  if (!qword_100448588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448588);
  }

  return result;
}

uint64_t sub_100104000(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001045D0();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1001040B4()
{
  result = qword_100448590;
  if (!qword_100448590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448590);
  }

  return result;
}

unint64_t sub_10010410C()
{
  result = qword_100448598;
  if (!qword_100448598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448598);
  }

  return result;
}

unint64_t sub_100104164()
{
  result = qword_1004485A0;
  if (!qword_1004485A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004485A0);
  }

  return result;
}

uint64_t sub_1001041B8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001045D0();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10010426C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001045D0();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100104320()
{
  result = qword_1004485A8;
  if (!qword_1004485A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004485A8);
  }

  return result;
}

unint64_t sub_100104378()
{
  result = qword_1004485B0;
  if (!qword_1004485B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004485B0);
  }

  return result;
}

uint64_t sub_100104410(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100103FAC();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1001044C8()
{
  result = qword_1004485C8;
  if (!qword_1004485C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004485C8);
  }

  return result;
}

unint64_t sub_100104520()
{
  result = qword_1004485D0;
  if (!qword_1004485D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004485D0);
  }

  return result;
}

unint64_t sub_100104578()
{
  result = qword_1004485D8;
  if (!qword_1004485D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004485D8);
  }

  return result;
}

unint64_t sub_1001045D0()
{
  result = qword_1004485E0;
  if (!qword_1004485E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004485E0);
  }

  return result;
}

uint64_t sub_100104624()
{
  v0 = qword_100446B68;

  return v0;
}

unint64_t sub_100104660()
{
  result = qword_1004485E8;
  if (!qword_1004485E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004485E8);
  }

  return result;
}

uint64_t sub_1001046B4(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100456370, &qword_1003538F8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100456378, &qword_100353900);
  __chkstk_darwin(v5);
  sub_100104164();
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

unint64_t sub_10010487C()
{
  result = qword_1004485F0;
  if (!qword_1004485F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004485F0);
  }

  return result;
}

unint64_t sub_1001048D4()
{
  result = qword_1004485F8;
  if (!qword_1004485F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004485F8);
  }

  return result;
}

unint64_t sub_10010492C()
{
  result = qword_100448600;
  if (!qword_100448600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448600);
  }

  return result;
}

uint64_t sub_100104980(uint64_t a1)
{
  sub_1002D6748();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100104A68(uint64_t a1)
{
  v2 = sub_100104164();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100104AB8()
{
  result = qword_100448618;
  if (!qword_100448618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448618);
  }

  return result;
}

uint64_t sub_100104B10(uint64_t a1)
{
  v2 = sub_10010492C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100104B60()
{
  result = qword_100448620;
  if (!qword_100448620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448620);
  }

  return result;
}

uint64_t sub_100104BF8()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051CCB8);
  sub_10001EDB8(v5, qword_10051CCB8);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_100104D68@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001050D8()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051CCD0);
  sub_10001EDB8(v0, qword_10051CCD0);
  return sub_1002D88F0();
}

uint64_t sub_10010513C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051CCE8);
  v1 = sub_10001EDB8(v0, qword_10051CCE8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001051FC()
{
  result = swift_getKeyPath();
  qword_10051CD00 = result;
  return result;
}

uint64_t sub_100105224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100456348, &qword_1003538B8);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100456350, &qword_1003538C0);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100105404, 0, 0);
}

uint64_t sub_100105404()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1001065BC();
  *v2 = v0;
  v2[1] = sub_1001054E8;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6E60, 0, &type metadata for AccessibilityVoiceOverBrailleAutomaticTranslationEntity, v3);
}

uint64_t sub_1001054E8()
{

  return _swift_task_switch(sub_1001055E4, 0, 0);
}

uint64_t sub_1001055E4()
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
  if (qword_10043A320 != -1)
  {
    swift_once();
  }

  v3 = qword_10051CD00;
  *(v0 + 288) = qword_10051CD00;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100456330, &qword_100456338, &qword_1003538A0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_100105748;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_100105748()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1001058B8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001058B8()
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
  sub_100104B60();
  sub_1001067D0();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100105B30()
{
  v0 = sub_10000321C(&qword_100456358, &qword_1003538C8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A320 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001067D0();
  sub_10002B6E4(&qword_100456360, &qword_100456358, &qword_1003538C8, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_100105CA4(uint64_t *a1))(void *)
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

void (*sub_100105D18(uint64_t *a1))(void *)
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

unint64_t sub_100105DB4()
{
  result = qword_100448638;
  if (!qword_100448638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448638);
  }

  return result;
}

unint64_t sub_100105E0C()
{
  result = qword_100448640;
  if (!qword_100448640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448640);
  }

  return result;
}

uint64_t sub_100105F08(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100105224(a1, v5, v4);
}

uint64_t sub_100105FB4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A24A0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100105FFC()
{
  result = qword_100448648;
  if (!qword_100448648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448648);
  }

  return result;
}

unint64_t sub_100106054()
{
  result = qword_100448650;
  if (!qword_100448650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448650);
  }

  return result;
}

uint64_t sub_1001060C8()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverBrailleGradeTwoAutoTranslateEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100106190()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverBrailleGradeTwoAutoTranslateEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100106228(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001062B8, 0, 0);
}

uint64_t sub_1001062B8()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_100448630, qword_1002FED78);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100456330, &qword_100456338, &qword_1003538A0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD00000000000002DLL;
  v1[1] = 0x8000000100360E80;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_100106404()
{
  result = qword_100448658;
  if (!qword_100448658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448658);
  }

  return result;
}

uint64_t sub_100106458(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100106A28();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10010650C()
{
  result = qword_100448660;
  if (!qword_100448660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448660);
  }

  return result;
}

unint64_t sub_100106564()
{
  result = qword_100448668;
  if (!qword_100448668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448668);
  }

  return result;
}

unint64_t sub_1001065BC()
{
  result = qword_100448670;
  if (!qword_100448670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448670);
  }

  return result;
}

uint64_t sub_100106610(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100106A28();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1001066C4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100106A28();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100106778()
{
  result = qword_100448678;
  if (!qword_100448678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448678);
  }

  return result;
}

unint64_t sub_1001067D0()
{
  result = qword_100448680;
  if (!qword_100448680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448680);
  }

  return result;
}

uint64_t sub_100106868(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100106404();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100106920()
{
  result = qword_100448698;
  if (!qword_100448698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448698);
  }

  return result;
}

unint64_t sub_100106978()
{
  result = qword_1004486A0;
  if (!qword_1004486A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004486A0);
  }

  return result;
}

unint64_t sub_1001069D0()
{
  result = qword_1004486A8;
  if (!qword_1004486A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004486A8);
  }

  return result;
}

unint64_t sub_100106A28()
{
  result = qword_1004486B0;
  if (!qword_1004486B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004486B0);
  }

  return result;
}

uint64_t sub_100106A7C()
{
  v0 = qword_100446B78;

  return v0;
}

unint64_t sub_100106AB8()
{
  result = qword_1004486B8;
  if (!qword_1004486B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004486B8);
  }

  return result;
}

uint64_t sub_100106B0C(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100456320, &qword_100353880);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100456328, &qword_100353888);
  __chkstk_darwin(v5);
  sub_1001065BC();
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

unint64_t sub_100106CD4()
{
  result = qword_1004486C0;
  if (!qword_1004486C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004486C0);
  }

  return result;
}

unint64_t sub_100106D2C()
{
  result = qword_1004486C8;
  if (!qword_1004486C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004486C8);
  }

  return result;
}

unint64_t sub_100106D84()
{
  result = qword_1004486D0;
  if (!qword_1004486D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004486D0);
  }

  return result;
}

uint64_t sub_100106DD8(uint64_t a1)
{
  sub_1002D66F4();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100106EC0(uint64_t a1)
{
  v2 = sub_1001065BC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100106F10()
{
  result = qword_1004486E8;
  if (!qword_1004486E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004486E8);
  }

  return result;
}

uint64_t sub_100106F68(uint64_t a1)
{
  v2 = sub_100106D84();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100106FB8()
{
  result = qword_1004486F0;
  if (!qword_1004486F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004486F0);
  }

  return result;
}

uint64_t sub_100107050()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051CD08);
  sub_10001EDB8(v5, qword_10051CD08);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_1001071C0@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100107530()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051CD20);
  sub_10001EDB8(v0, qword_10051CD20);
  return sub_1002D88F0();
}

uint64_t sub_100107594()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051CD38);
  v1 = sub_10001EDB8(v0, qword_10051CD38);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100107654()
{
  result = swift_getKeyPath();
  qword_10051CD50 = result;
  return result;
}

uint64_t sub_10010767C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_1004562F8, &qword_100353840);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100456300, &qword_100353848);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10010785C, 0, 0);
}

uint64_t sub_10010785C()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_100108A14();
  *v2 = v0;
  v2[1] = sub_100107940;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6E64, 0, &type metadata for AccessibilityVoiceOverBrailleStatusCellsPositionEntity, v3);
}

uint64_t sub_100107940()
{

  return _swift_task_switch(sub_100107A3C, 0, 0);
}

uint64_t sub_100107A3C()
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
  if (qword_10043A340 != -1)
  {
    swift_once();
  }

  v3 = qword_10051CD50;
  v0[36] = qword_10051CD50;

  v4 = swift_task_alloc();
  v0[37] = v4;
  v5 = sub_10002B6E4(&qword_1004562D8, &qword_1004562E0, &qword_100353820, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_100107B98;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 39, v3, &type metadata for AXSVoiceOverBrailleStatusCellsPositionAppEnum, v5);
}

uint64_t sub_100107B98()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_100107D08;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100107D08()
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
  sub_100106FB8();
  sub_100108C28();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100107F80()
{
  v0 = sub_10000321C(&qword_100456308, &qword_100353850);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A340 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100108C28();
  sub_10002B6E4(&qword_100456310, &qword_100456308, &qword_100353850, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1001080F4(uint64_t *a1))(void *)
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

void (*sub_100108168(uint64_t *a1))(void *)
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

unint64_t sub_100108204()
{
  result = qword_100448708;
  if (!qword_100448708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448708);
  }

  return result;
}

unint64_t sub_10010825C()
{
  result = qword_100448710;
  if (!qword_100448710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448710);
  }

  return result;
}

uint64_t sub_100108358(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10010767C(a1, v5, v4);
}

uint64_t sub_100108404@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A2908();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10010844C()
{
  result = qword_100448718;
  if (!qword_100448718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448718);
  }

  return result;
}

unint64_t sub_1001084C4(uint64_t a1)
{
  if (qword_100438D20 == -1)
  {
    result = _AXSVoiceOverTouchBrailleVirtualStatusAlignment();
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  swift_once();
  result = _AXSVoiceOverTouchBrailleVirtualStatusAlignment();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_12;
  }

LABEL_3:
  v3 = result;
  if (HIDWORD(result))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v4 = *(v1 + 16);
  v5 = _AXSVoiceOverTouchBrailleMasterStatusCellIndex();
  v6 = 2 * (v3 == 1);
  if (!v3)
  {
    v6 = 1;
  }

  if (v5 < 0)
  {
    v6 = 0;
  }

  *v4 = v6;
  v7 = *(v1 + 8);

  return v7();
}

uint64_t sub_1001085BC()
{
  if (qword_100438D20 == -1)
  {
    if (!*(v0 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  swift_once();
  if (*(v0 + 16))
  {
LABEL_3:
    _AXSVoiceOverTouchSetBrailleVirtualStatusAlignment();
  }

LABEL_5:
  _AXSVoiceOverTouchSetBrailleMasterStatusCellIndex();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100108674(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100108704, 0, 0);
}

uint64_t sub_100108704()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_100448700, &qword_1002FF3B0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004562D8, &qword_1004562E0, &qword_100353820, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  sub_100014A98();
  v2 = sub_1002D8890();
  *v1 = 0xD000000000000038;
  v1[1] = 0x800000010035B1E0;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_10010885C()
{
  result = qword_100448720;
  if (!qword_100448720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448720);
  }

  return result;
}

uint64_t sub_1001088B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100108E80();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100108964()
{
  result = qword_100448728;
  if (!qword_100448728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448728);
  }

  return result;
}

unint64_t sub_1001089BC()
{
  result = qword_100448730;
  if (!qword_100448730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448730);
  }

  return result;
}

unint64_t sub_100108A14()
{
  result = qword_100448738;
  if (!qword_100448738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448738);
  }

  return result;
}

uint64_t sub_100108A68(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100108E80();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100108B1C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100108E80();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100108BD0()
{
  result = qword_100448740;
  if (!qword_100448740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448740);
  }

  return result;
}