uint64_t sub_10016EB50(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10016F120();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10016EC04()
{
  result = qword_10044AC78;
  if (!qword_10044AC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AC78);
  }

  return result;
}

unint64_t sub_10016EC5C()
{
  result = qword_10044AC80;
  if (!qword_10044AC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AC80);
  }

  return result;
}

unint64_t sub_10016ECB4()
{
  result = qword_10044AC88;
  if (!qword_10044AC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AC88);
  }

  return result;
}

uint64_t sub_10016ED08(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10016F120();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10016EDBC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10016F120();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10016EE70()
{
  result = qword_10044AC90;
  if (!qword_10044AC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AC90);
  }

  return result;
}

unint64_t sub_10016EEC8()
{
  result = qword_10044AC98;
  if (!qword_10044AC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AC98);
  }

  return result;
}

uint64_t sub_10016EF60(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10016EAFC();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10016F018()
{
  result = qword_10044ACB0;
  if (!qword_10044ACB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ACB0);
  }

  return result;
}

unint64_t sub_10016F070()
{
  result = qword_10044ACB8;
  if (!qword_10044ACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ACB8);
  }

  return result;
}

unint64_t sub_10016F0C8()
{
  result = qword_10044ACC0;
  if (!qword_10044ACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ACC0);
  }

  return result;
}

unint64_t sub_10016F120()
{
  result = qword_10044ACC8;
  if (!qword_10044ACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ACC8);
  }

  return result;
}

uint64_t sub_10016F174()
{
  v0 = qword_100446E68;

  return v0;
}

unint64_t sub_10016F1B0()
{
  result = qword_10044ACD0;
  if (!qword_10044ACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ACD0);
  }

  return result;
}

uint64_t sub_10016F204(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100455458, &qword_100352238);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100455460, &qword_100352240);
  __chkstk_darwin(v5);
  sub_10016ECB4();
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

unint64_t sub_10016F3CC()
{
  result = qword_10044ACD8;
  if (!qword_10044ACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ACD8);
  }

  return result;
}

unint64_t sub_10016F424()
{
  result = qword_10044ACE0;
  if (!qword_10044ACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ACE0);
  }

  return result;
}

unint64_t sub_10016F47C()
{
  result = qword_10044ACE8;
  if (!qword_10044ACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ACE8);
  }

  return result;
}

uint64_t sub_10016F4D0(uint64_t a1)
{
  sub_1002D5540();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10016F5B8(uint64_t a1)
{
  v2 = sub_10016ECB4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10016F608()
{
  result = qword_10044AD00;
  if (!qword_10044AD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AD00);
  }

  return result;
}

uint64_t sub_10016F660(uint64_t a1)
{
  v2 = sub_10016F47C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10016F6B0()
{
  result = qword_10044AD08;
  if (!qword_10044AD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AD08);
  }

  return result;
}

uint64_t sub_10016F76C()
{
  result = swift_getKeyPath();
  qword_10051DC00 = result;
  return result;
}

uint64_t sub_10016F794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100455430, &qword_1003521F8);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100455438, &qword_100352200);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10016F974, 0, 0);
}

uint64_t sub_10016F974()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_100170B2C();
  *v2 = v0;
  v2[1] = sub_10016FA58;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6F20, 0, &type metadata for AXFullKeyboardAccessFocusRingTimeoutEnabledEntity, v3);
}

uint64_t sub_10016FA58()
{

  return _swift_task_switch(sub_10016FB54, 0, 0);
}

uint64_t sub_10016FB54()
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
  if (qword_10043A920 != -1)
  {
    swift_once();
  }

  v3 = qword_10051DC00;
  *(v0 + 288) = qword_10051DC00;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100455418, &qword_100455420, &qword_1003521E0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_10016FCB8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_10016FCB8()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_10016FE28;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10016FE28()
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
  sub_10016F6B0();
  sub_100170D40();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001700A0()
{
  v0 = sub_10000321C(&qword_100455440, &qword_100352208);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A920 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100170D40();
  sub_10002B6E4(&qword_100455448, &qword_100455440, &qword_100352208, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_100170214(uint64_t *a1))(void *)
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

void (*sub_100170288(uint64_t *a1))(void *)
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

unint64_t sub_100170324()
{
  result = qword_10044AD20;
  if (!qword_10044AD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AD20);
  }

  return result;
}

unint64_t sub_10017037C()
{
  result = qword_10044AD28;
  if (!qword_10044AD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AD28);
  }

  return result;
}

uint64_t sub_100170478(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10016F794(a1, v5, v4);
}

uint64_t sub_100170524@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002AF2CC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10017056C()
{
  result = qword_10044AD30;
  if (!qword_10044AD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AD30);
  }

  return result;
}

unint64_t sub_1001705C4()
{
  result = qword_10044AD38;
  if (!qword_10044AD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AD38);
  }

  return result;
}

uint64_t sub_100170638()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 fullKeyboardAccessFocusRingTimeoutEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100170700()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setFullKeyboardAccessFocusRingTimeoutEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100170798(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100170828, 0, 0);
}

uint64_t sub_100170828()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044AD18, qword_1003117F8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455418, &qword_100455420, &qword_1003521E0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000046;
  v1[1] = 0x8000000100361550;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_100170974()
{
  result = qword_10044AD40;
  if (!qword_10044AD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AD40);
  }

  return result;
}

uint64_t sub_1001709C8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100170F98();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100170A7C()
{
  result = qword_10044AD48;
  if (!qword_10044AD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AD48);
  }

  return result;
}

unint64_t sub_100170AD4()
{
  result = qword_10044AD50;
  if (!qword_10044AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AD50);
  }

  return result;
}

unint64_t sub_100170B2C()
{
  result = qword_10044AD58;
  if (!qword_10044AD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AD58);
  }

  return result;
}

uint64_t sub_100170B80(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100170F98();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100170C34(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100170F98();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100170CE8()
{
  result = qword_10044AD60;
  if (!qword_10044AD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AD60);
  }

  return result;
}

unint64_t sub_100170D40()
{
  result = qword_10044AD68;
  if (!qword_10044AD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AD68);
  }

  return result;
}

uint64_t sub_100170DD8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100170974();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100170E90()
{
  result = qword_10044AD80;
  if (!qword_10044AD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AD80);
  }

  return result;
}

unint64_t sub_100170EE8()
{
  result = qword_10044AD88;
  if (!qword_10044AD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AD88);
  }

  return result;
}

unint64_t sub_100170F40()
{
  result = qword_10044AD90;
  if (!qword_10044AD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AD90);
  }

  return result;
}

unint64_t sub_100170F98()
{
  result = qword_10044AD98;
  if (!qword_10044AD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AD98);
  }

  return result;
}

uint64_t sub_100170FEC()
{
  v0 = qword_100446E78;

  return v0;
}

unint64_t sub_100171028()
{
  result = qword_10044ADA0;
  if (!qword_10044ADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ADA0);
  }

  return result;
}

uint64_t sub_10017107C(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100455408, &qword_1003521C0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100455410, &qword_1003521C8);
  __chkstk_darwin(v5);
  sub_100170B2C();
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

unint64_t sub_100171244()
{
  result = qword_10044ADA8;
  if (!qword_10044ADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ADA8);
  }

  return result;
}

unint64_t sub_10017129C()
{
  result = qword_10044ADB0;
  if (!qword_10044ADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ADB0);
  }

  return result;
}

unint64_t sub_1001712F4()
{
  result = qword_10044ADB8;
  if (!qword_10044ADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ADB8);
  }

  return result;
}

uint64_t sub_100171348(uint64_t a1)
{
  sub_1002D54EC();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100171430(uint64_t a1)
{
  v2 = sub_100170B2C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100171480()
{
  result = qword_10044ADD0;
  if (!qword_10044ADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ADD0);
  }

  return result;
}

uint64_t sub_1001714D4(uint64_t a1)
{
  v2 = sub_1001712F4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100171524()
{
  result = qword_10044ADD8;
  if (!qword_10044ADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ADD8);
  }

  return result;
}

uint64_t sub_1001715C8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_1002D8910();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = sub_1002D8840();
  sub_10001EDF0(v8, a2);
  sub_10001EDB8(v8, a2);
  sub_1002D88F0();
  (*(v7 + 56))(v5, 1, 1, v6);
  return sub_1002D8830();
}

uint64_t sub_100171734@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100171AB0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

uint64_t sub_100171B1C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v3, a2);
  v4 = sub_10001EDB8(v3, a2);
  sub_1002D8620();
  v5 = sub_1002D8630();
  v6 = *(*(v5 - 8) + 56);

  return v6(v4, 0, 1, v5);
}

uint64_t sub_100171BD8()
{
  result = swift_getKeyPath();
  qword_10051DC50 = result;
  return result;
}

uint64_t sub_100171C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[22] = a2;
  v3[23] = a3;
  v3[21] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[25] = swift_task_alloc();
  sub_10000321C(&qword_1004553E0, &qword_100352180);
  v3[26] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[27] = v4;
  v3[28] = *(v4 - 8);
  v3[29] = swift_task_alloc();
  v5 = sub_10000321C(&qword_1004553E8, &qword_100352188);
  v3[30] = v5;
  v3[31] = *(v5 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();

  return _swift_task_switch(sub_100171DE0, 0, 0);
}

uint64_t sub_100171DE0()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 272) = v2;
  v3 = sub_100172F90();
  *v2 = v0;
  v2[1] = sub_100171EC4;
  v4 = *(v0 + 264);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6F24, 0, &type metadata for AXFullKeyboardAccessFocusRingTimeoutEntity, v3);
}

uint64_t sub_100171EC4()
{

  return _swift_task_switch(sub_100171FC0, 0, 0);
}

uint64_t sub_100171FC0()
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
  if (qword_10043A940 != -1)
  {
    swift_once();
  }

  v3 = qword_10051DC50;
  v0[37] = qword_10051DC50;

  v4 = swift_task_alloc();
  v0[38] = v4;
  v5 = sub_10002B6E4(&qword_1004553C8, &qword_1004553D0, &qword_100352168, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_10017211C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 20, v3, &type metadata for Double, v5);
}

uint64_t sub_10017211C()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_1002D6E00;
  }

  else
  {
    v2 = sub_10017228C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10017228C()
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
  sub_100171524();
  sub_1001731A4();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100172504()
{
  v0 = sub_10000321C(&qword_1004553F0, &qword_100352190);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A940 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001731A4();
  sub_10002B6E4(&qword_1004553F8, &qword_1004553F0, &qword_100352190, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_100172678(uint64_t *a1))(void *)
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

void (*sub_1001726EC(uint64_t *a1))(void *)
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

unint64_t sub_100172788()
{
  result = qword_10044ADF0;
  if (!qword_10044ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ADF0);
  }

  return result;
}

unint64_t sub_1001727E0()
{
  result = qword_10044ADF8;
  if (!qword_10044ADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ADF8);
  }

  return result;
}

uint64_t sub_1001728DC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100171C00(a1, v5, v4);
}

uint64_t sub_100172988@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002AF734();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001729D0()
{
  result = qword_10044AE00;
  if (!qword_10044AE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AE00);
  }

  return result;
}

unint64_t sub_100172A28()
{
  result = qword_10044AE08;
  if (!qword_10044AE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AE08);
  }

  return result;
}

uint64_t sub_100172A9C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 fullKeyboardAccessFocusRingTimeout];
  v4 = v3;

  *v1 = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100172B64()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setFullKeyboardAccessFocusRingTimeout:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100172BFC(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100172C8C, 0, 0);
}

uint64_t sub_100172C8C()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044ADE8, qword_100311E30);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004553C8, &qword_1004553D0, &qword_100352168, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88B0();
  *v1 = 0xD000000000000046;
  v1[1] = 0x8000000100361550;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_100172DD8()
{
  result = qword_10044AE10;
  if (!qword_10044AE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AE10);
  }

  return result;
}

uint64_t sub_100172E2C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001733FC();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100172EE0()
{
  result = qword_10044AE18;
  if (!qword_10044AE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AE18);
  }

  return result;
}

unint64_t sub_100172F38()
{
  result = qword_10044AE20;
  if (!qword_10044AE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AE20);
  }

  return result;
}

unint64_t sub_100172F90()
{
  result = qword_10044AE28;
  if (!qword_10044AE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AE28);
  }

  return result;
}

uint64_t sub_100172FE4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001733FC();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100173098(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001733FC();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10017314C()
{
  result = qword_10044AE30;
  if (!qword_10044AE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AE30);
  }

  return result;
}

unint64_t sub_1001731A4()
{
  result = qword_10044AE38;
  if (!qword_10044AE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AE38);
  }

  return result;
}

uint64_t sub_10017323C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100172DD8();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1001732F4()
{
  result = qword_10044AE50;
  if (!qword_10044AE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AE50);
  }

  return result;
}

unint64_t sub_10017334C()
{
  result = qword_10044AE58;
  if (!qword_10044AE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AE58);
  }

  return result;
}

unint64_t sub_1001733A4()
{
  result = qword_10044AE60;
  if (!qword_10044AE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AE60);
  }

  return result;
}

unint64_t sub_1001733FC()
{
  result = qword_10044AE68;
  if (!qword_10044AE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AE68);
  }

  return result;
}

uint64_t sub_100173450()
{
  v0 = qword_100446E88;

  return v0;
}

unint64_t sub_10017348C()
{
  result = qword_10044AE70;
  if (!qword_10044AE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AE70);
  }

  return result;
}

uint64_t sub_1001734E0(uint64_t a1)
{
  v1 = sub_10000321C(&qword_1004553B8, &qword_100352148);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_1004553C0, &qword_100352150);
  __chkstk_darwin(v5);
  sub_100172F90();
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

unint64_t sub_1001736A8()
{
  result = qword_10044AE78;
  if (!qword_10044AE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AE78);
  }

  return result;
}

unint64_t sub_100173700()
{
  result = qword_10044AE80;
  if (!qword_10044AE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AE80);
  }

  return result;
}

unint64_t sub_100173758()
{
  result = qword_10044AE88;
  if (!qword_10044AE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AE88);
  }

  return result;
}

uint64_t sub_1001737AC(uint64_t a1)
{
  sub_1002D5498();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100173894(uint64_t a1)
{
  v2 = sub_100172F90();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001738E4()
{
  result = qword_10044AEA0;
  if (!qword_10044AEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AEA0);
  }

  return result;
}

uint64_t sub_100173950(uint64_t a1)
{
  v2 = sub_100173758();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001739A0()
{
  result = qword_10044AEA8;
  if (!qword_10044AEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AEA8);
  }

  return result;
}

uint64_t sub_100173A38()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051DC58);
  sub_10001EDB8(v5, qword_10051DC58);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_100173BA8@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100173F18()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051DC70);
  sub_10001EDB8(v0, qword_10051DC70);
  return sub_1002D88F0();
}

uint64_t sub_100173F7C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051DC88);
  v1 = sub_10001EDB8(v0, qword_10051DC88);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10017403C()
{
  result = swift_getKeyPath();
  qword_10051DCA0 = result;
  return result;
}

uint64_t sub_100174064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100455390, &qword_100352108);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100455398, &qword_100352110);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100174244, 0, 0);
}

uint64_t sub_100174244()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_100175400();
  *v2 = v0;
  v2[1] = sub_100174328;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6F28, 0, &type metadata for AXFullKeyboardAccessLargeFocusRingEnabledEntity, v3);
}

uint64_t sub_100174328()
{

  return _swift_task_switch(sub_100174424, 0, 0);
}

uint64_t sub_100174424()
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
  if (qword_10043A960 != -1)
  {
    swift_once();
  }

  v3 = qword_10051DCA0;
  *(v0 + 288) = qword_10051DCA0;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100455378, &qword_100455380, &qword_1003520F0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_100174588;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_100174588()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1001746F8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001746F8()
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
  sub_1001739A0();
  sub_100175614();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100174970()
{
  v0 = sub_10000321C(&qword_1004553A0, &qword_100352118);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A960 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100175614();
  sub_10002B6E4(&qword_1004553A8, &qword_1004553A0, &qword_100352118, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_100174AE4(uint64_t *a1))(void *)
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

void (*sub_100174B58(uint64_t *a1))(void *)
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

unint64_t sub_100174BF4()
{
  result = qword_10044AEC0;
  if (!qword_10044AEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AEC0);
  }

  return result;
}

unint64_t sub_100174C4C()
{
  result = qword_10044AEC8;
  if (!qword_10044AEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AEC8);
  }

  return result;
}

uint64_t sub_100174D48(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100174064(a1, v5, v4);
}

uint64_t sub_100174DF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002AFBC0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100174E3C()
{
  result = qword_10044AED0;
  if (!qword_10044AED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AED0);
  }

  return result;
}

unint64_t sub_100174E94()
{
  result = qword_10044AED8;
  if (!qword_10044AED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AED8);
  }

  return result;
}

uint64_t sub_100174F08()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 fullKeyboardAccessLargeFocusRingEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100174FD0()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setFullKeyboardAccessLargeFocusRingEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100175068(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001750F8, 0, 0);
}

uint64_t sub_1001750F8()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044AEB8, qword_100312468);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455378, &qword_100455380, &qword_1003520F0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000037;
  v1[1] = 0x800000010035E0A0;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_100175248()
{
  result = qword_10044AEE0;
  if (!qword_10044AEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AEE0);
  }

  return result;
}

uint64_t sub_10017529C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10017586C();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100175350()
{
  result = qword_10044AEE8;
  if (!qword_10044AEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AEE8);
  }

  return result;
}

unint64_t sub_1001753A8()
{
  result = qword_10044AEF0;
  if (!qword_10044AEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AEF0);
  }

  return result;
}

unint64_t sub_100175400()
{
  result = qword_10044AEF8;
  if (!qword_10044AEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AEF8);
  }

  return result;
}

uint64_t sub_100175454(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10017586C();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100175508(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10017586C();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1001755BC()
{
  result = qword_10044AF00;
  if (!qword_10044AF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AF00);
  }

  return result;
}

unint64_t sub_100175614()
{
  result = qword_10044AF08;
  if (!qword_10044AF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AF08);
  }

  return result;
}

uint64_t sub_1001756AC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100175248();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100175764()
{
  result = qword_10044AF20;
  if (!qword_10044AF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AF20);
  }

  return result;
}

unint64_t sub_1001757BC()
{
  result = qword_10044AF28;
  if (!qword_10044AF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AF28);
  }

  return result;
}

unint64_t sub_100175814()
{
  result = qword_10044AF30;
  if (!qword_10044AF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AF30);
  }

  return result;
}

unint64_t sub_10017586C()
{
  result = qword_10044AF38;
  if (!qword_10044AF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AF38);
  }

  return result;
}

uint64_t sub_1001758C0()
{
  v0 = qword_100446E98;

  return v0;
}

unint64_t sub_1001758FC()
{
  result = qword_10044AF40;
  if (!qword_10044AF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AF40);
  }

  return result;
}

uint64_t sub_100175950(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100455368, &qword_1003520D0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100455370, &qword_1003520D8);
  __chkstk_darwin(v5);
  sub_100175400();
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

unint64_t sub_100175B18()
{
  result = qword_10044AF48;
  if (!qword_10044AF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AF48);
  }

  return result;
}

unint64_t sub_100175B70()
{
  result = qword_10044AF50;
  if (!qword_10044AF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AF50);
  }

  return result;
}

unint64_t sub_100175BC8()
{
  result = qword_10044AF58;
  if (!qword_10044AF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AF58);
  }

  return result;
}

uint64_t sub_100175C1C(uint64_t a1)
{
  sub_1002D5444();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100175D04(uint64_t a1)
{
  v2 = sub_100175400();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100175D54()
{
  result = qword_10044AF70;
  if (!qword_10044AF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AF70);
  }

  return result;
}

uint64_t sub_100175DAC(uint64_t a1)
{
  v2 = sub_100175BC8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100175DFC()
{
  result = qword_10044AF78;
  if (!qword_10044AF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AF78);
  }

  return result;
}

uint64_t sub_100175EC0@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10017623C()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051DCC0);
  sub_10001EDB8(v0, qword_10051DCC0);
  return sub_1002D88F0();
}

uint64_t sub_1001762A0()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051DCD8);
  v1 = sub_10001EDB8(v0, qword_10051DCD8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100176360()
{
  result = swift_getKeyPath();
  qword_10051DCF0 = result;
  return result;
}

uint64_t sub_100176388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100455340, &qword_100352090);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100455348, &qword_100352098);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100176568, 0, 0);
}

uint64_t sub_100176568()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_10017771C();
  *v2 = v0;
  v2[1] = sub_10017664C;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6F2C, 0, &type metadata for AXFullKeyboardAccessFocusRingHighContrastEnabledEntity, v3);
}

uint64_t sub_10017664C()
{

  return _swift_task_switch(sub_100176748, 0, 0);
}

uint64_t sub_100176748()
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
  if (qword_10043A980 != -1)
  {
    swift_once();
  }

  v3 = qword_10051DCF0;
  *(v0 + 288) = qword_10051DCF0;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100455328, &qword_100455330, &qword_100352078, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1001768AC;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1001768AC()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_100176A1C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100176A1C()
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
  sub_100175DFC();
  sub_100177930();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100176C94()
{
  v0 = sub_10000321C(&qword_100455350, &qword_1003520A0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A980 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100177930();
  sub_10002B6E4(&qword_100455358, &qword_100455350, &qword_1003520A0, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_100176E08(uint64_t *a1))(void *)
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

void (*sub_100176E7C(uint64_t *a1))(void *)
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

unint64_t sub_100176F18()
{
  result = qword_10044AF90;
  if (!qword_10044AF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AF90);
  }

  return result;
}

unint64_t sub_100176F70()
{
  result = qword_10044AF98;
  if (!qword_10044AF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AF98);
  }

  return result;
}

uint64_t sub_10017706C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100176388(a1, v5, v4);
}

uint64_t sub_100177118@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B0028();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100177160()
{
  result = qword_10044AFA0;
  if (!qword_10044AFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AFA0);
  }

  return result;
}

unint64_t sub_1001771B8()
{
  result = qword_10044AFA8;
  if (!qword_10044AFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AFA8);
  }

  return result;
}

uint64_t sub_10017722C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 fullKeyboardAccessFocusRingHighContrastEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001772F4()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setFullKeyboardAccessFocusRingHighContrastEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10017738C(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10017741C, 0, 0);
}

uint64_t sub_10017741C()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044AF88, qword_100312AA0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455328, &qword_100455330, &qword_100352078, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD00000000000003ELL;
  v1[1] = 0x800000010035ED90;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_100177564()
{
  result = qword_10044AFB0;
  if (!qword_10044AFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AFB0);
  }

  return result;
}

uint64_t sub_1001775B8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100177B88();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10017766C()
{
  result = qword_10044AFB8;
  if (!qword_10044AFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AFB8);
  }

  return result;
}

unint64_t sub_1001776C4()
{
  result = qword_10044AFC0;
  if (!qword_10044AFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AFC0);
  }

  return result;
}

unint64_t sub_10017771C()
{
  result = qword_10044AFC8;
  if (!qword_10044AFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AFC8);
  }

  return result;
}

uint64_t sub_100177770(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100177B88();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100177824(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100177B88();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1001778D8()
{
  result = qword_10044AFD0;
  if (!qword_10044AFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AFD0);
  }

  return result;
}

unint64_t sub_100177930()
{
  result = qword_10044AFD8;
  if (!qword_10044AFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AFD8);
  }

  return result;
}

uint64_t sub_1001779C8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100177564();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100177A80()
{
  result = qword_10044AFF0;
  if (!qword_10044AFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AFF0);
  }

  return result;
}

unint64_t sub_100177AD8()
{
  result = qword_10044AFF8;
  if (!qword_10044AFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AFF8);
  }

  return result;
}

unint64_t sub_100177B30()
{
  result = qword_10044B000;
  if (!qword_10044B000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B000);
  }

  return result;
}

unint64_t sub_100177B88()
{
  result = qword_10044B008;
  if (!qword_10044B008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B008);
  }

  return result;
}

uint64_t sub_100177BDC()
{
  v0 = qword_100446EA8;

  return v0;
}

unint64_t sub_100177C18()
{
  result = qword_10044B010;
  if (!qword_10044B010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B010);
  }

  return result;
}

uint64_t sub_100177C6C(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100455318, &qword_100352058);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100455320, &qword_100352060);
  __chkstk_darwin(v5);
  sub_10017771C();
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

unint64_t sub_100177E34()
{
  result = qword_10044B018;
  if (!qword_10044B018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B018);
  }

  return result;
}

unint64_t sub_100177E8C()
{
  result = qword_10044B020;
  if (!qword_10044B020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B020);
  }

  return result;
}

unint64_t sub_100177EE4()
{
  result = qword_10044B028;
  if (!qword_10044B028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B028);
  }

  return result;
}

uint64_t sub_100177F38(uint64_t a1)
{
  sub_1002D53F0();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100178020(uint64_t a1)
{
  v2 = sub_10017771C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100178070()
{
  result = qword_10044B040;
  if (!qword_10044B040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B040);
  }

  return result;
}

uint64_t sub_1001780C8(uint64_t a1)
{
  v2 = sub_100177EE4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100178118()
{
  result = qword_10044B048;
  if (!qword_10044B048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B048);
  }

  return result;
}

uint64_t sub_1001781D4@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100178548()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051DD10);
  sub_10001EDB8(v0, qword_10051DD10);
  return sub_1002D88F0();
}

uint64_t sub_1001785AC()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051DD28);
  v1 = sub_10001EDB8(v0, qword_10051DD28);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10017866C()
{
  result = swift_getKeyPath();
  qword_10051DD40 = result;
  return result;
}

uint64_t sub_100178694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_1004552F0, &qword_100352018);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_1004552F8, &qword_100352020);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100178874, 0, 0);
}

uint64_t sub_100178874()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_100179A4C();
  *v2 = v0;
  v2[1] = sub_100178958;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6F30, 0, &type metadata for AXFullKeyboardAccessFocusRingColorEntity, v3);
}

uint64_t sub_100178958()
{

  return _swift_task_switch(sub_100178A54, 0, 0);
}

uint64_t sub_100178A54()
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
  if (qword_10043A9A0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051DD40;
  v0[36] = qword_10051DD40;

  v4 = swift_task_alloc();
  v0[37] = v4;
  v5 = sub_10002B6E4(&qword_1004552D8, &qword_1004552E0, &qword_100352000, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_100178BB0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 39, v3, &type metadata for AXAssistiveTouchCursorColorAppEnum, v5);
}

uint64_t sub_100178BB0()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_100178D20;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100178D20()
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
  sub_100178118();
  sub_100179C60();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100178F98()
{
  v0 = sub_10000321C(&qword_100455300, &qword_100352028);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A9A0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100179C60();
  sub_10002B6E4(&qword_100455308, &qword_100455300, &qword_100352028, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_10017910C(uint64_t *a1))(void *)
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

void (*sub_100179180(uint64_t *a1))(void *)
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

unint64_t sub_10017921C()
{
  result = qword_10044B060;
  if (!qword_10044B060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B060);
  }

  return result;
}

unint64_t sub_100179274()
{
  result = qword_10044B068;
  if (!qword_10044B068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B068);
  }

  return result;
}

uint64_t sub_100179370(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100178694(a1, v5, v4);
}

uint64_t sub_10017941C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B0490();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100179464()
{
  result = qword_10044B070;
  if (!qword_10044B070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B070);
  }

  return result;
}

uint64_t sub_1001794DC()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 fullKeyboardAccessFocusRingColor];

  v4 = sub_10001EAB4(v3);
  if (v4 == 8)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  *v1 = v5;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1001795E8()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setFullKeyboardAccessFocusRingColor:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001796B0(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100179740, 0, 0);
}

uint64_t sub_100179740()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044B058, &qword_1003130D8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004552D8, &qword_1004552E0, &qword_100352000, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  sub_10000BA70();
  v2 = sub_1002D8890();
  *v1 = 0xD000000000000042;
  v1[1] = 0x8000000100360520;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_100179894()
{
  result = qword_10044B078;
  if (!qword_10044B078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B078);
  }

  return result;
}

uint64_t sub_1001798E8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100179EB8();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10017999C()
{
  result = qword_10044B080;
  if (!qword_10044B080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B080);
  }

  return result;
}

unint64_t sub_1001799F4()
{
  result = qword_10044B088;
  if (!qword_10044B088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B088);
  }

  return result;
}

unint64_t sub_100179A4C()
{
  result = qword_10044B090;
  if (!qword_10044B090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B090);
  }

  return result;
}

uint64_t sub_100179AA0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100179EB8();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100179B54(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100179EB8();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100179C08()
{
  result = qword_10044B098;
  if (!qword_10044B098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B098);
  }

  return result;
}

unint64_t sub_100179C60()
{
  result = qword_10044B0A0;
  if (!qword_10044B0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B0A0);
  }

  return result;
}

uint64_t sub_100179CF8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100179894();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100179DB0()
{
  result = qword_10044B0B8;
  if (!qword_10044B0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B0B8);
  }

  return result;
}

unint64_t sub_100179E08()
{
  result = qword_10044B0C0;
  if (!qword_10044B0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B0C0);
  }

  return result;
}

unint64_t sub_100179E60()
{
  result = qword_10044B0C8;
  if (!qword_10044B0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B0C8);
  }

  return result;
}

unint64_t sub_100179EB8()
{
  result = qword_10044B0D0;
  if (!qword_10044B0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B0D0);
  }

  return result;
}

uint64_t sub_100179F0C()
{
  v0 = qword_100446EB8;

  return v0;
}

unint64_t sub_100179F48()
{
  result = qword_10044B0D8;
  if (!qword_10044B0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B0D8);
  }

  return result;
}

uint64_t sub_100179F9C(uint64_t a1)
{
  v1 = sub_10000321C(&qword_1004552C8, &qword_100351FE0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_1004552D0, &qword_100351FE8);
  __chkstk_darwin(v5);
  sub_100179A4C();
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

unint64_t sub_10017A164()
{
  result = qword_10044B0E0;
  if (!qword_10044B0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B0E0);
  }

  return result;
}

unint64_t sub_10017A1BC()
{
  result = qword_10044B0E8;
  if (!qword_10044B0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B0E8);
  }

  return result;
}

unint64_t sub_10017A214()
{
  result = qword_10044B0F0;
  if (!qword_10044B0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B0F0);
  }

  return result;
}

uint64_t sub_10017A268(uint64_t a1)
{
  sub_1002D539C();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10017A350(uint64_t a1)
{
  v2 = sub_100179A4C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10017A3A0()
{
  result = qword_10044B108;
  if (!qword_10044B108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B108);
  }

  return result;
}

uint64_t sub_10017A3F8(uint64_t a1)
{
  v2 = sub_10017A214();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10017A448()
{
  result = qword_10044B110;
  if (!qword_10044B110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B110);
  }

  return result;
}

uint64_t sub_10017A508@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10017A880()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051DD60);
  sub_10001EDB8(v0, qword_10051DD60);
  return sub_1002D88F0();
}

uint64_t sub_10017A8E4()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051DD78);
  v1 = sub_10001EDB8(v0, qword_10051DD78);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10017A9A4()
{
  result = swift_getKeyPath();
  qword_10051DD90 = result;
  return result;
}

uint64_t sub_10017A9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_1004552A0, &qword_100351FA0);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_1004552A8, &qword_100351FA8);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10017ABAC, 0, 0);
}

uint64_t sub_10017ABAC()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_10017BD5C();
  *v2 = v0;
  v2[1] = sub_10017AC90;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6F34, 0, &type metadata for AccessibilityStickyKeysEnabledEntity, v3);
}

uint64_t sub_10017AC90()
{

  return _swift_task_switch(sub_10017AD8C, 0, 0);
}

uint64_t sub_10017AD8C()
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
  if (qword_10043A9C0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051DD90;
  *(v0 + 288) = qword_10051DD90;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100455288, &qword_100455290, &qword_100351F88, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_10017AEF0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_10017AEF0()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_10017B060;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10017B060()
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
  sub_10017A448();
  sub_10017BF70();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10017B2D8()
{
  v0 = sub_10000321C(&qword_1004552B0, &qword_100351FB0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A9C0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10017BF70();
  sub_10002B6E4(&qword_1004552B8, &qword_1004552B0, &qword_100351FB0, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_10017B44C(uint64_t *a1))(void *)
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

void (*sub_10017B4C0(uint64_t *a1))(void *)
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

unint64_t sub_10017B55C()
{
  result = qword_10044B128;
  if (!qword_10044B128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B128);
  }

  return result;
}

unint64_t sub_10017B5B4()
{
  result = qword_10044B130;
  if (!qword_10044B130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B130);
  }

  return result;
}

uint64_t sub_10017B6B0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10017A9CC(a1, v5, v4);
}

uint64_t sub_10017B75C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B0894();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10017B7A4()
{
  result = qword_10044B138;
  if (!qword_10044B138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B138);
  }

  return result;
}

unint64_t sub_10017B7FC()
{
  result = qword_10044B140;
  if (!qword_10044B140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B140);
  }

  return result;
}

uint64_t sub_10017B870()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 stickyKeysEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10017B938()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setStickyKeysEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10017B9D0(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10017BA60, 0, 0);
}

uint64_t sub_10017BA60()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044B120, qword_100313710);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455288, &qword_100455290, &qword_100351F88, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD00000000000001DLL;
  v1[1] = 0x800000010037BB30;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_10017BBA4()
{
  result = qword_10044B148;
  if (!qword_10044B148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B148);
  }

  return result;
}

uint64_t sub_10017BBF8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10017C1C8();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10017BCAC()
{
  result = qword_10044B150;
  if (!qword_10044B150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B150);
  }

  return result;
}

unint64_t sub_10017BD04()
{
  result = qword_10044B158;
  if (!qword_10044B158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B158);
  }

  return result;
}

unint64_t sub_10017BD5C()
{
  result = qword_10044B160;
  if (!qword_10044B160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B160);
  }

  return result;
}

uint64_t sub_10017BDB0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10017C1C8();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10017BE64(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10017C1C8();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10017BF18()
{
  result = qword_10044B168;
  if (!qword_10044B168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B168);
  }

  return result;
}

unint64_t sub_10017BF70()
{
  result = qword_10044B170;
  if (!qword_10044B170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B170);
  }

  return result;
}

uint64_t sub_10017C008(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10017BBA4();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10017C0C0()
{
  result = qword_10044B188;
  if (!qword_10044B188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B188);
  }

  return result;
}

unint64_t sub_10017C118()
{
  result = qword_10044B190;
  if (!qword_10044B190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B190);
  }

  return result;
}

unint64_t sub_10017C170()
{
  result = qword_10044B198;
  if (!qword_10044B198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B198);
  }

  return result;
}

unint64_t sub_10017C1C8()
{
  result = qword_10044B1A0;
  if (!qword_10044B1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B1A0);
  }

  return result;
}

uint64_t sub_10017C21C()
{
  v0 = qword_100446EC8;

  return v0;
}

unint64_t sub_10017C258()
{
  result = qword_10044B1A8;
  if (!qword_10044B1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B1A8);
  }

  return result;
}

uint64_t sub_10017C2AC(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100455278, &qword_100351F68);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100455280, &qword_100351F70);
  __chkstk_darwin(v5);
  sub_10017BD5C();
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

unint64_t sub_10017C474()
{
  result = qword_10044B1B0;
  if (!qword_10044B1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B1B0);
  }

  return result;
}

unint64_t sub_10017C4CC()
{
  result = qword_10044B1B8;
  if (!qword_10044B1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B1B8);
  }

  return result;
}

unint64_t sub_10017C524()
{
  result = qword_10044B1C0;
  if (!qword_10044B1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B1C0);
  }

  return result;
}

uint64_t sub_10017C578(uint64_t a1)
{
  sub_1002D5348();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10017C660(uint64_t a1)
{
  v2 = sub_10017BD5C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10017C6B0()
{
  result = qword_10044B1D8;
  if (!qword_10044B1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B1D8);
  }

  return result;
}

uint64_t sub_10017C708(uint64_t a1)
{
  v2 = sub_10017C524();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10017C758()
{
  result = qword_10044B1E0;
  if (!qword_10044B1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B1E0);
  }

  return result;
}

uint64_t sub_10017C7F0()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051DD98);
  sub_10001EDB8(v5, qword_10051DD98);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_10017C960@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10017CCD0()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051DDB0);
  sub_10001EDB8(v0, qword_10051DDB0);
  return sub_1002D88F0();
}

uint64_t sub_10017CD34()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051DDC8);
  v1 = sub_10001EDB8(v0, qword_10051DDC8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10017CDF4()
{
  result = swift_getKeyPath();
  qword_10051DDE0 = result;
  return result;
}

uint64_t sub_10017CE1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100455250, &qword_100351F28);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100455258, &qword_100351F30);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10017CFFC, 0, 0);
}

uint64_t sub_10017CFFC()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_10017E1B4();
  *v2 = v0;
  v2[1] = sub_10017D0E0;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6F38, 0, &type metadata for AXStickyKeysShiftToggleEnabledEntity, v3);
}

uint64_t sub_10017D0E0()
{

  return _swift_task_switch(sub_10017D1DC, 0, 0);
}

uint64_t sub_10017D1DC()
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
  if (qword_10043A9E0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051DDE0;
  *(v0 + 288) = qword_10051DDE0;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100455238, &qword_100455240, &qword_100351F10, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_10017D340;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_10017D340()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_10017D4B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10017D4B0()
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
  sub_10017C758();
  sub_10017E3C8();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10017D728()
{
  v0 = sub_10000321C(&qword_100455260, &qword_100351F38);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A9E0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10017E3C8();
  sub_10002B6E4(&qword_100455268, &qword_100455260, &qword_100351F38, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_10017D89C(uint64_t *a1))(void *)
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

void (*sub_10017D910(uint64_t *a1))(void *)
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

unint64_t sub_10017D9AC()
{
  result = qword_10044B1F8;
  if (!qword_10044B1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B1F8);
  }

  return result;
}

unint64_t sub_10017DA04()
{
  result = qword_10044B200;
  if (!qword_10044B200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B200);
  }

  return result;
}

uint64_t sub_10017DB00(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10017CE1C(a1, v5, v4);
}

uint64_t sub_10017DBAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B0CFC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10017DBF4()
{
  result = qword_10044B208;
  if (!qword_10044B208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B208);
  }

  return result;
}

unint64_t sub_10017DC4C()
{
  result = qword_10044B210;
  if (!qword_10044B210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B210);
  }

  return result;
}

uint64_t sub_10017DCC0()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 stickyKeysShiftToggleEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10017DD88()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setStickyKeysShiftToggleEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10017DE20(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10017DEB0, 0, 0);
}

uint64_t sub_10017DEB0()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044B1F0, qword_100313D48);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455238, &qword_100455240, &qword_100351F10, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000021;
  v1[1] = 0x800000010037BA00;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_10017DFFC()
{
  result = qword_10044B218;
  if (!qword_10044B218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B218);
  }

  return result;
}

uint64_t sub_10017E050(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10017E620();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10017E104()
{
  result = qword_10044B220;
  if (!qword_10044B220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B220);
  }

  return result;
}

unint64_t sub_10017E15C()
{
  result = qword_10044B228;
  if (!qword_10044B228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B228);
  }

  return result;
}

unint64_t sub_10017E1B4()
{
  result = qword_10044B230;
  if (!qword_10044B230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B230);
  }

  return result;
}

uint64_t sub_10017E208(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10017E620();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10017E2BC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10017E620();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10017E370()
{
  result = qword_10044B238;
  if (!qword_10044B238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B238);
  }

  return result;
}

unint64_t sub_10017E3C8()
{
  result = qword_10044B240;
  if (!qword_10044B240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B240);
  }

  return result;
}

uint64_t sub_10017E460(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10017DFFC();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10017E518()
{
  result = qword_10044B258;
  if (!qword_10044B258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B258);
  }

  return result;
}

unint64_t sub_10017E570()
{
  result = qword_10044B260;
  if (!qword_10044B260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B260);
  }

  return result;
}

unint64_t sub_10017E5C8()
{
  result = qword_10044B268;
  if (!qword_10044B268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B268);
  }

  return result;
}

unint64_t sub_10017E620()
{
  result = qword_10044B270;
  if (!qword_10044B270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B270);
  }

  return result;
}

uint64_t sub_10017E674()
{
  v0 = qword_100446ED8;

  return v0;
}

unint64_t sub_10017E6B0()
{
  result = qword_10044B278;
  if (!qword_10044B278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B278);
  }

  return result;
}

uint64_t sub_10017E704(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100455228, &qword_100351EF0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100455230, &qword_100351EF8);
  __chkstk_darwin(v5);
  sub_10017E1B4();
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

unint64_t sub_10017E8CC()
{
  result = qword_10044B280;
  if (!qword_10044B280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B280);
  }

  return result;
}

unint64_t sub_10017E924()
{
  result = qword_10044B288;
  if (!qword_10044B288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B288);
  }

  return result;
}

unint64_t sub_10017E97C()
{
  result = qword_10044B290;
  if (!qword_10044B290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B290);
  }

  return result;
}

uint64_t sub_10017E9D0(uint64_t a1)
{
  sub_1002D52F4();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10017EAB8(uint64_t a1)
{
  v2 = sub_10017E1B4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10017EB08()
{
  result = qword_10044B2A8;
  if (!qword_10044B2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B2A8);
  }

  return result;
}

uint64_t sub_10017EB60(uint64_t a1)
{
  v2 = sub_10017E97C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10017EBB0()
{
  result = qword_10044B2B0;
  if (!qword_10044B2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B2B0);
  }

  return result;
}

uint64_t sub_10017EC64@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10017EFF8()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051DE18);
  v1 = sub_10001EDB8(v0, qword_10051DE18);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10017F0B8()
{
  result = swift_getKeyPath();
  qword_10051DE30 = result;
  return result;
}

uint64_t sub_10017F0E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100455200, &qword_100351EB0);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100455208, &qword_100351EB8);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10017F2C0, 0, 0);
}

uint64_t sub_10017F2C0()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_100180464();
  *v2 = v0;
  v2[1] = sub_10017F3A4;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6F3C, 0, &type metadata for AXStickyKeysBeepEnabledEntity, v3);
}

uint64_t sub_10017F3A4()
{

  return _swift_task_switch(sub_10017F4A0, 0, 0);
}

uint64_t sub_10017F4A0()
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
  if (qword_10043AA00 != -1)
  {
    swift_once();
  }

  v3 = qword_10051DE30;
  *(v0 + 288) = qword_10051DE30;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_1004551E8, &qword_1004551F0, &qword_100351E98, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_10017F604;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_10017F604()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_10017F774;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10017F774()
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
  sub_10017EBB0();
  sub_100180678();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10017F9EC()
{
  v0 = sub_10000321C(&qword_100455210, &qword_100351EC0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043AA00 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100180678();
  sub_10002B6E4(&qword_100455218, &qword_100455210, &qword_100351EC0, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_10017FB60(uint64_t *a1))(void *)
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

void (*sub_10017FBD4(uint64_t *a1))(void *)
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

unint64_t sub_10017FC70()
{
  result = qword_10044B2C8;
  if (!qword_10044B2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B2C8);
  }

  return result;
}

unint64_t sub_10017FCC8()
{
  result = qword_10044B2D0;
  if (!qword_10044B2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B2D0);
  }

  return result;
}

uint64_t sub_10017FDC4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10017F0E0(a1, v5, v4);
}

uint64_t sub_10017FE70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B1164();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10017FEB8()
{
  result = qword_10044B2D8;
  if (!qword_10044B2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B2D8);
  }

  return result;
}

unint64_t sub_10017FF10()
{
  result = qword_10044B2E0;
  if (!qword_10044B2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B2E0);
  }

  return result;
}

uint64_t sub_10017FF84()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 stickyKeysBeepEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10018004C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setStickyKeysBeepEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001800E4(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100180174, 0, 0);
}

uint64_t sub_100180174()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044B2C0, qword_100314380);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004551E8, &qword_1004551F0, &qword_100351E98, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD00000000000001BLL;
  v1[1] = 0x800000010037B970;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1001802AC()
{
  result = qword_10044B2E8;
  if (!qword_10044B2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B2E8);
  }

  return result;
}

uint64_t sub_100180300(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001808D0();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1001803B4()
{
  result = qword_10044B2F0;
  if (!qword_10044B2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B2F0);
  }

  return result;
}

unint64_t sub_10018040C()
{
  result = qword_10044B2F8;
  if (!qword_10044B2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B2F8);
  }

  return result;
}

unint64_t sub_100180464()
{
  result = qword_10044B300;
  if (!qword_10044B300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B300);
  }

  return result;
}

uint64_t sub_1001804B8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001808D0();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10018056C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001808D0();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100180620()
{
  result = qword_10044B308;
  if (!qword_10044B308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B308);
  }

  return result;
}

unint64_t sub_100180678()
{
  result = qword_10044B310;
  if (!qword_10044B310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B310);
  }

  return result;
}

uint64_t sub_100180710(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001802AC();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1001807C8()
{
  result = qword_10044B328;
  if (!qword_10044B328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B328);
  }

  return result;
}

unint64_t sub_100180820()
{
  result = qword_10044B330;
  if (!qword_10044B330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B330);
  }

  return result;
}

unint64_t sub_100180878()
{
  result = qword_10044B338;
  if (!qword_10044B338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B338);
  }

  return result;
}

unint64_t sub_1001808D0()
{
  result = qword_10044B340;
  if (!qword_10044B340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B340);
  }

  return result;
}

uint64_t sub_100180924()
{
  v0 = qword_100446EE8;

  return v0;
}

unint64_t sub_100180960()
{
  result = qword_10044B348;
  if (!qword_10044B348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B348);
  }

  return result;
}

uint64_t sub_1001809B4(uint64_t a1)
{
  v1 = sub_10000321C(&qword_1004551D8, &qword_100351E78);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_1004551E0, &qword_100351E80);
  __chkstk_darwin(v5);
  sub_100180464();
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

unint64_t sub_100180B7C()
{
  result = qword_10044B350;
  if (!qword_10044B350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B350);
  }

  return result;
}

unint64_t sub_100180BD4()
{
  result = qword_10044B358;
  if (!qword_10044B358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B358);
  }

  return result;
}

unint64_t sub_100180C2C()
{
  result = qword_10044B360;
  if (!qword_10044B360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B360);
  }

  return result;
}

uint64_t sub_100180C80(uint64_t a1)
{
  sub_1002D52A0();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100180D68(uint64_t a1)
{
  v2 = sub_100180464();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100180DB8()
{
  result = qword_10044B378;
  if (!qword_10044B378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B378);
  }

  return result;
}

uint64_t sub_100180E10(uint64_t a1)
{
  v2 = sub_100180C2C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100180E60()
{
  result = qword_10044B380;
  if (!qword_10044B380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B380);
  }

  return result;
}

uint64_t sub_100180F1C@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100181290()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051DE50);
  sub_10001EDB8(v0, qword_10051DE50);
  return sub_1002D88F0();
}

uint64_t sub_1001812F4()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051DE68);
  v1 = sub_10001EDB8(v0, qword_10051DE68);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001813B4()
{
  result = swift_getKeyPath();
  qword_10051DE80 = result;
  return result;
}

uint64_t sub_1001813DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_1004551B0, &qword_100351E38);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_1004551B8, &qword_100351E40);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001815BC, 0, 0);
}

uint64_t sub_1001815BC()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_100182700();
  *v2 = v0;
  v2[1] = sub_1001816A0;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6F40, 0, &type metadata for AccessibilityKeyRepeatEnabledEntity, v3);
}

uint64_t sub_1001816A0()
{

  return _swift_task_switch(sub_10018179C, 0, 0);
}

uint64_t sub_10018179C()
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
  if (qword_10043AA20 != -1)
  {
    swift_once();
  }

  v3 = qword_10051DE80;
  *(v0 + 288) = qword_10051DE80;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100455198, &qword_1004551A0, &qword_100351E20, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_100181900;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_100181900()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_100181A70;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100181A70()
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
  sub_100180E60();
  sub_100182914();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100181CE8()
{
  v0 = sub_10000321C(&qword_1004551C0, &qword_100351E48);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043AA20 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100182914();
  sub_10002B6E4(&qword_1004551C8, &qword_1004551C0, &qword_100351E48, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_100181E5C(uint64_t *a1))(void *)
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

void (*sub_100181ED0(uint64_t *a1))(void *)
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

unint64_t sub_100181F6C()
{
  result = qword_10044B398;
  if (!qword_10044B398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B398);
  }

  return result;
}

unint64_t sub_100181FC4()
{
  result = qword_10044B3A0;
  if (!qword_10044B3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B3A0);
  }

  return result;
}

uint64_t sub_1001820C0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001813DC(a1, v5, v4);
}

uint64_t sub_10018216C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B15D0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001821B4()
{
  result = qword_10044B3A8;
  if (!qword_10044B3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B3A8);
  }

  return result;
}

unint64_t sub_10018220C()
{
  result = qword_10044B3B0;
  if (!qword_10044B3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B3B0);
  }

  return result;
}

uint64_t sub_100182280()
{
  v1 = *(v0 + 16);
  *v1 = _AXSKeyRepeatEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100182314()
{
  _AXSSetKeyRepeatEnabled();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100182378(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100182408, 0, 0);
}

uint64_t sub_100182408()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044B390, qword_1003149B8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455198, &qword_1004551A0, &qword_100351E20, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000025;
  v1[1] = 0x800000010035E230;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_100182548()
{
  result = qword_10044B3B8;
  if (!qword_10044B3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B3B8);
  }

  return result;
}

uint64_t sub_10018259C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100182B6C();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100182650()
{
  result = qword_10044B3C0;
  if (!qword_10044B3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B3C0);
  }

  return result;
}

unint64_t sub_1001826A8()
{
  result = qword_10044B3C8;
  if (!qword_10044B3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B3C8);
  }

  return result;
}

unint64_t sub_100182700()
{
  result = qword_10044B3D0;
  if (!qword_10044B3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B3D0);
  }

  return result;
}

uint64_t sub_100182754(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100182B6C();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100182808(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100182B6C();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1001828BC()
{
  result = qword_10044B3D8;
  if (!qword_10044B3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B3D8);
  }

  return result;
}

unint64_t sub_100182914()
{
  result = qword_10044B3E0;
  if (!qword_10044B3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B3E0);
  }

  return result;
}

uint64_t sub_1001829AC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100182548();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100182A64()
{
  result = qword_10044B3F8;
  if (!qword_10044B3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B3F8);
  }

  return result;
}

unint64_t sub_100182ABC()
{
  result = qword_10044B400;
  if (!qword_10044B400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B400);
  }

  return result;
}

unint64_t sub_100182B14()
{
  result = qword_10044B408;
  if (!qword_10044B408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B408);
  }

  return result;
}

unint64_t sub_100182B6C()
{
  result = qword_10044B410;
  if (!qword_10044B410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B410);
  }

  return result;
}

uint64_t sub_100182BC0()
{
  v0 = qword_100446EF8;

  return v0;
}

unint64_t sub_100182BFC()
{
  result = qword_10044B418;
  if (!qword_10044B418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B418);
  }

  return result;
}

uint64_t sub_100182C50(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100455188, &qword_100351E00);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100455190, &qword_100351E08);
  __chkstk_darwin(v5);
  sub_100182700();
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

unint64_t sub_100182E18()
{
  result = qword_10044B420;
  if (!qword_10044B420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B420);
  }

  return result;
}

unint64_t sub_100182E70()
{
  result = qword_10044B428;
  if (!qword_10044B428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B428);
  }

  return result;
}

unint64_t sub_100182EC8()
{
  result = qword_10044B430;
  if (!qword_10044B430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B430);
  }

  return result;
}

uint64_t sub_100182F1C(uint64_t a1)
{
  sub_1002D524C();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100183004(uint64_t a1)
{
  v2 = sub_100182700();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100183054()
{
  result = qword_10044B448;
  if (!qword_10044B448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B448);
  }

  return result;
}

uint64_t sub_1001830AC(uint64_t a1)
{
  v2 = sub_100182EC8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001830FC()
{
  result = qword_10044B450;
  if (!qword_10044B450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B450);
  }

  return result;
}

uint64_t sub_1001831B8@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10018352C()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051DEA0);
  sub_10001EDB8(v0, qword_10051DEA0);
  return sub_1002D88F0();
}

uint64_t sub_100183590()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051DEB8);
  v1 = sub_10001EDB8(v0, qword_10051DEB8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100183650()
{
  result = swift_getKeyPath();
  qword_10051DED0 = result;
  return result;
}

uint64_t sub_100183678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100455160, &qword_100351DC0);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100455168, &qword_100351DC8);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100183858, 0, 0);
}

uint64_t sub_100183858()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_10018499C();
  *v2 = v0;
  v2[1] = sub_10018393C;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6F44, 0, &type metadata for AccessibilitySlowKeysEnabledEntity, v3);
}

uint64_t sub_10018393C()
{

  return _swift_task_switch(sub_100183A38, 0, 0);
}

uint64_t sub_100183A38()
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
  if (qword_10043AA40 != -1)
  {
    swift_once();
  }

  v3 = qword_10051DED0;
  *(v0 + 288) = qword_10051DED0;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100455148, &qword_100455150, &qword_100351DA8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_100183B9C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_100183B9C()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_100183D0C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100183D0C()
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
  sub_1001830FC();
  sub_100184BB0();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100183F84()
{
  v0 = sub_10000321C(&qword_100455170, &qword_100351DD0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043AA40 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100184BB0();
  sub_10002B6E4(&qword_100455178, &qword_100455170, &qword_100351DD0, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1001840F8(uint64_t *a1))(void *)
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

void (*sub_10018416C(uint64_t *a1))(void *)
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

unint64_t sub_100184208()
{
  result = qword_10044B468;
  if (!qword_10044B468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B468);
  }

  return result;
}

unint64_t sub_100184260()
{
  result = qword_10044B470;
  if (!qword_10044B470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B470);
  }

  return result;
}

uint64_t sub_10018435C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100183678(a1, v5, v4);
}

uint64_t sub_100184408@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B1A38();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100184450()
{
  result = qword_10044B478;
  if (!qword_10044B478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B478);
  }

  return result;
}

unint64_t sub_1001844A8()
{
  result = qword_10044B480;
  if (!qword_10044B480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B480);
  }

  return result;
}

uint64_t sub_10018451C()
{
  v1 = *(v0 + 16);
  *v1 = _AXSSlowKeysEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001845B0()
{
  _AXSSetSlowKeysEnabled();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100184614(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001846A4, 0, 0);
}

uint64_t sub_1001846A4()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044B460, qword_100314FF0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455148, &qword_100455150, &qword_100351DA8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000039;
  v1[1] = 0x800000010035BAF0;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1001847E4()
{
  result = qword_10044B488;
  if (!qword_10044B488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B488);
  }

  return result;
}

uint64_t sub_100184838(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100184E08();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1001848EC()
{
  result = qword_10044B490;
  if (!qword_10044B490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B490);
  }

  return result;
}

unint64_t sub_100184944()
{
  result = qword_10044B498;
  if (!qword_10044B498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B498);
  }

  return result;
}

unint64_t sub_10018499C()
{
  result = qword_10044B4A0;
  if (!qword_10044B4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B4A0);
  }

  return result;
}

uint64_t sub_1001849F0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100184E08();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100184AA4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100184E08();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100184B58()
{
  result = qword_10044B4A8;
  if (!qword_10044B4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B4A8);
  }

  return result;
}

unint64_t sub_100184BB0()
{
  result = qword_10044B4B0;
  if (!qword_10044B4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B4B0);
  }

  return result;
}

uint64_t sub_100184C48(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001847E4();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100184D00()
{
  result = qword_10044B4C8;
  if (!qword_10044B4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B4C8);
  }

  return result;
}

unint64_t sub_100184D58()
{
  result = qword_10044B4D0;
  if (!qword_10044B4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B4D0);
  }

  return result;
}

unint64_t sub_100184DB0()
{
  result = qword_10044B4D8;
  if (!qword_10044B4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B4D8);
  }

  return result;
}

unint64_t sub_100184E08()
{
  result = qword_10044B4E0;
  if (!qword_10044B4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B4E0);
  }

  return result;
}

uint64_t sub_100184E5C()
{
  v0 = qword_100446F08;

  return v0;
}

unint64_t sub_100184E98()
{
  result = qword_10044B4E8;
  if (!qword_10044B4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B4E8);
  }

  return result;
}

uint64_t sub_100184EEC(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100455138, &qword_100351D88);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100455140, &qword_100351D90);
  __chkstk_darwin(v5);
  sub_10018499C();
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

unint64_t sub_1001850B4()
{
  result = qword_10044B4F0;
  if (!qword_10044B4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B4F0);
  }

  return result;
}

unint64_t sub_10018510C()
{
  result = qword_10044B4F8;
  if (!qword_10044B4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B4F8);
  }

  return result;
}

unint64_t sub_100185164()
{
  result = qword_10044B500;
  if (!qword_10044B500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B500);
  }

  return result;
}

uint64_t sub_1001851B8(uint64_t a1)
{
  sub_1002D51F8();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1001852A0(uint64_t a1)
{
  v2 = sub_10018499C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001852F0()
{
  result = qword_10044B518;
  if (!qword_10044B518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B518);
  }

  return result;
}

uint64_t sub_100185348(uint64_t a1)
{
  v2 = sub_100185164();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100185398()
{
  result = qword_10044B520;
  if (!qword_10044B520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B520);
  }

  return result;
}

uint64_t sub_100185430()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051DED8);
  sub_10001EDB8(v5, qword_10051DED8);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_1001855A0@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100185910()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051DEF0);
  sub_10001EDB8(v0, qword_10051DEF0);
  return sub_1002D88F0();
}

uint64_t sub_100185974()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051DF08);
  v1 = sub_10001EDB8(v0, qword_10051DF08);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100185A34()
{
  result = swift_getKeyPath();
  qword_10051DF20 = result;
  return result;
}

uint64_t sub_100185A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100455110, &qword_100351D48);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100455118, &qword_100351D50);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100185C3C, 0, 0);
}

uint64_t sub_100185C3C()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_100186D8C();
  *v2 = v0;
  v2[1] = sub_100185D20;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6F48, 0, &type metadata for AccessibilityLowercaseKeyboardDisplayEnabledEntity, v3);
}

uint64_t sub_100185D20()
{

  return _swift_task_switch(sub_100185E1C, 0, 0);
}

uint64_t sub_100185E1C()
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
  if (qword_10043AA60 != -1)
  {
    swift_once();
  }

  v3 = qword_10051DF20;
  *(v0 + 288) = qword_10051DF20;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_1004550F8, &qword_100455100, &qword_100351D30, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_100185F80;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_100185F80()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1001860F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001860F0()
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
  sub_100185398();
  sub_100186FA0();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100186368()
{
  v0 = sub_10000321C(&qword_100455120, &qword_100351D58);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043AA60 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100186FA0();
  sub_10002B6E4(&qword_100455128, &qword_100455120, &qword_100351D58, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1001864DC(uint64_t *a1))(void *)
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

void (*sub_100186550(uint64_t *a1))(void *)
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

unint64_t sub_1001865EC()
{
  result = qword_10044B538;
  if (!qword_10044B538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B538);
  }

  return result;
}

unint64_t sub_100186644()
{
  result = qword_10044B540;
  if (!qword_10044B540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B540);
  }

  return result;
}

uint64_t sub_100186740(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100185A5C(a1, v5, v4);
}

uint64_t sub_1001867EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B1EA0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100186834()
{
  result = qword_10044B548;
  if (!qword_10044B548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B548);
  }

  return result;
}

unint64_t sub_10018688C()
{
  result = qword_10044B550;
  if (!qword_10044B550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B550);
  }

  return result;
}

uint64_t sub_100186900()
{
  v1 = *(v0 + 16);
  *v1 = _AXSLowercaseKeyboardDisplayEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100186994()
{
  _AXSSetLowercaseKeyboardDisplayEnabled();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001869F8(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100186A88, 0, 0);
}

uint64_t sub_100186A88()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044B530, qword_100315628);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004550F8, &qword_100455100, &qword_100351D30, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD00000000000001CLL;
  v1[1] = 0x800000010035BD40;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_100186BD4()
{
  result = qword_10044B558;
  if (!qword_10044B558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B558);
  }

  return result;
}

uint64_t sub_100186C28(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001871F8();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100186CDC()
{
  result = qword_10044B560;
  if (!qword_10044B560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B560);
  }

  return result;
}

unint64_t sub_100186D34()
{
  result = qword_10044B568;
  if (!qword_10044B568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B568);
  }

  return result;
}

unint64_t sub_100186D8C()
{
  result = qword_10044B570;
  if (!qword_10044B570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B570);
  }

  return result;
}

uint64_t sub_100186DE0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001871F8();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100186E94(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001871F8();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100186F48()
{
  result = qword_10044B578;
  if (!qword_10044B578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B578);
  }

  return result;
}

unint64_t sub_100186FA0()
{
  result = qword_10044B580;
  if (!qword_10044B580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B580);
  }

  return result;
}

uint64_t sub_100187038(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100186BD4();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1001870F0()
{
  result = qword_10044B598;
  if (!qword_10044B598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B598);
  }

  return result;
}

unint64_t sub_100187148()
{
  result = qword_10044B5A0;
  if (!qword_10044B5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B5A0);
  }

  return result;
}

unint64_t sub_1001871A0()
{
  result = qword_10044B5A8;
  if (!qword_10044B5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B5A8);
  }

  return result;
}

unint64_t sub_1001871F8()
{
  result = qword_10044B5B0;
  if (!qword_10044B5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B5B0);
  }

  return result;
}

uint64_t sub_10018724C()
{
  v0 = qword_100446F18;

  return v0;
}

unint64_t sub_100187288()
{
  result = qword_10044B5B8;
  if (!qword_10044B5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B5B8);
  }

  return result;
}

uint64_t sub_1001872DC(uint64_t a1)
{
  v1 = sub_10000321C(&qword_1004550E8, &qword_100351D10);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_1004550F0, &qword_100351D18);
  __chkstk_darwin(v5);
  sub_100186D8C();
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

unint64_t sub_1001874A4()
{
  result = qword_10044B5C0;
  if (!qword_10044B5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B5C0);
  }

  return result;
}

unint64_t sub_1001874F8()
{
  result = qword_10044B5C8;
  if (!qword_10044B5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B5C8);
  }

  return result;
}

unint64_t sub_100187550()
{
  result = qword_10044B5D0;
  if (!qword_10044B5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B5D0);
  }

  return result;
}

uint64_t sub_1001875A8(uint64_t a1)
{
  sub_1002D51A4();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100187690(uint64_t a1)
{
  v2 = sub_100186D8C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001876E0()
{
  result = qword_10044B5E8;
  if (!qword_10044B5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B5E8);
  }

  return result;
}

uint64_t sub_100187738(uint64_t a1)
{
  v2 = sub_100187550();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100187788()
{
  result = qword_10044B5F0;
  if (!qword_10044B5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B5F0);
  }

  return result;
}

uint64_t sub_100187848@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100187BC0()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051DF40);
  sub_10001EDB8(v0, qword_10051DF40);
  return sub_1002D88F0();
}

uint64_t sub_100187C24()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051DF58);
  v1 = sub_10001EDB8(v0, qword_10051DF58);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100187CE4()
{
  result = swift_getKeyPath();
  qword_10051DF70 = result;
  return result;
}

uint64_t sub_100187D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_1004550C0, &qword_100351CD0);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_1004550C8, &qword_100351CD8);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100187EEC, 0, 0);
}

uint64_t sub_100187EEC()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_10018909C();
  *v2 = v0;
  v2[1] = sub_100187FD0;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6F4C, 0, &type metadata for AccessibilityHoverTypingEntity, v3);
}

uint64_t sub_100187FD0()
{

  return _swift_task_switch(sub_1001880CC, 0, 0);
}

uint64_t sub_1001880CC()
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
  if (qword_10043AA80 != -1)
  {
    swift_once();
  }

  v3 = qword_10051DF70;
  *(v0 + 288) = qword_10051DF70;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_1004550A8, &qword_1004550B0, &qword_100351CB8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_100188230;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_100188230()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1001883A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001883A0()
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
  sub_100187788();
  sub_1001892B0();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100188618()
{
  v0 = sub_10000321C(&qword_1004550D0, &qword_100351CE0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043AA80 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001892B0();
  sub_10002B6E4(&qword_1004550D8, &qword_1004550D0, &qword_100351CE0, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_10018878C(uint64_t *a1))(void *)
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

void (*sub_100188800(uint64_t *a1))(void *)
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

unint64_t sub_10018889C()
{
  result = qword_10044B608;
  if (!qword_10044B608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B608);
  }

  return result;
}

unint64_t sub_1001888F4()
{
  result = qword_10044B610;
  if (!qword_10044B610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B610);
  }

  return result;
}

uint64_t sub_1001889F0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100187D0C(a1, v5, v4);
}

uint64_t sub_100188A9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B2308();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100188AE4()
{
  result = qword_10044B618;
  if (!qword_10044B618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B618);
  }

  return result;
}

unint64_t sub_100188B3C()
{
  result = qword_10044B620;
  if (!qword_10044B620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B620);
  }

  return result;
}

uint64_t sub_100188BB0()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 hoverTextTypingEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100188C78()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setHoverTextTypingEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100188D10(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100188DA0, 0, 0);
}

uint64_t sub_100188DA0()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044B600, qword_100315C60);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004550A8, &qword_1004550B0, &qword_100351CB8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000016;
  v1[1] = 0x800000010035ECE0;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_100188EE4()
{
  result = qword_10044B628;
  if (!qword_10044B628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B628);
  }

  return result;
}

uint64_t sub_100188F38(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100189508();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100188FEC()
{
  result = qword_10044B630;
  if (!qword_10044B630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B630);
  }

  return result;
}

unint64_t sub_100189044()
{
  result = qword_10044B638;
  if (!qword_10044B638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B638);
  }

  return result;
}

unint64_t sub_10018909C()
{
  result = qword_10044B640;
  if (!qword_10044B640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B640);
  }

  return result;
}

uint64_t sub_1001890F0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100189508();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1001891A4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100189508();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100189258()
{
  result = qword_10044B648;
  if (!qword_10044B648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B648);
  }

  return result;
}

unint64_t sub_1001892B0()
{
  result = qword_10044B650;
  if (!qword_10044B650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B650);
  }

  return result;
}

uint64_t sub_100189348(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100188EE4();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100189400()
{
  result = qword_10044B668;
  if (!qword_10044B668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B668);
  }

  return result;
}

unint64_t sub_100189458()
{
  result = qword_10044B670;
  if (!qword_10044B670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B670);
  }

  return result;
}

unint64_t sub_1001894B0()
{
  result = qword_10044B678;
  if (!qword_10044B678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B678);
  }

  return result;
}

unint64_t sub_100189508()
{
  result = qword_10044B680;
  if (!qword_10044B680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B680);
  }

  return result;
}

uint64_t sub_10018955C()
{
  v0 = qword_100446F28;

  return v0;
}

unint64_t sub_100189598()
{
  result = qword_10044B688;
  if (!qword_10044B688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B688);
  }

  return result;
}

uint64_t sub_1001895EC(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100455098, &qword_100351C98);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_1004550A0, &qword_100351CA0);
  __chkstk_darwin(v5);
  sub_10018909C();
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

unint64_t sub_1001897B4()
{
  result = qword_10044B690;
  if (!qword_10044B690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B690);
  }

  return result;
}

unint64_t sub_10018980C()
{
  result = qword_10044B698;
  if (!qword_10044B698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B698);
  }

  return result;
}

unint64_t sub_100189864()
{
  result = qword_10044B6A0;
  if (!qword_10044B6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B6A0);
  }

  return result;
}

uint64_t sub_1001898B8(uint64_t a1)
{
  sub_1002D5150();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1001899A0(uint64_t a1)
{
  v2 = sub_10018909C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001899F0()
{
  result = qword_10044B6B8;
  if (!qword_10044B6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B6B8);
  }

  return result;
}

uint64_t sub_100189A48(uint64_t a1)
{
  v2 = sub_100189864();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100189A98()
{
  result = qword_10044B6C0;
  if (!qword_10044B6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B6C0);
  }

  return result;
}

uint64_t sub_100189B30()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051DF78);
  sub_10001EDB8(v5, qword_10051DF78);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_100189CA0@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10018A010()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051DF90);
  sub_10001EDB8(v0, qword_10051DF90);
  return sub_1002D88F0();
}

uint64_t sub_10018A074()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051DFA8);
  v1 = sub_10001EDB8(v0, qword_10051DFA8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10018A134()
{
  result = swift_getKeyPath();
  qword_10051DFC0 = result;
  return result;
}

uint64_t sub_10018A15C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100455070, &qword_100351C58);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100455078, &qword_100351C60);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10018A33C, 0, 0);
}

uint64_t sub_10018A33C()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_10018B48C();
  *v2 = v0;
  v2[1] = sub_10018A420;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6F50, 0, &type metadata for AccessibilityLEDFlashForAlertsEnabledEntity, v3);
}

uint64_t sub_10018A420()
{

  return _swift_task_switch(sub_10018A51C, 0, 0);
}

uint64_t sub_10018A51C()
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
  if (qword_10043AAA0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051DFC0;
  *(v0 + 288) = qword_10051DFC0;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100455058, &qword_100455060, &qword_100351C40, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_10018A680;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_10018A680()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_10018A7F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10018A7F0()
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
  sub_100189A98();
  sub_10018B6A0();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10018AA68()
{
  v0 = sub_10000321C(&qword_100455080, &qword_100351C68);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043AAA0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10018B6A0();
  sub_10002B6E4(&qword_100455088, &qword_100455080, &qword_100351C68, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_10018ABDC(uint64_t *a1))(void *)
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

void (*sub_10018AC50(uint64_t *a1))(void *)
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

unint64_t sub_10018ACEC()
{
  result = qword_10044B6D8;
  if (!qword_10044B6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B6D8);
  }

  return result;
}

unint64_t sub_10018AD44()
{
  result = qword_10044B6E0;
  if (!qword_10044B6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B6E0);
  }

  return result;
}

uint64_t sub_10018AE40(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10018A15C(a1, v5, v4);
}

uint64_t sub_10018AEEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B2770();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10018AF34()
{
  result = qword_10044B6E8;
  if (!qword_10044B6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B6E8);
  }

  return result;
}

unint64_t sub_10018AF8C()
{
  result = qword_10044B6F0;
  if (!qword_10044B6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B6F0);
  }

  return result;
}

uint64_t sub_10018B000()
{
  v1 = *(v0 + 16);
  *v1 = _AXSVisualAlertEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10018B094()
{
  _AXSVisualAlertSetEnabled();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10018B0F8(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10018B188, 0, 0);
}

uint64_t sub_10018B188()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044B6D0, qword_100316298);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455058, &qword_100455060, &qword_100351C40, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000026;
  v1[1] = 0x800000010037B4A0;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_10018B2D4()
{
  result = qword_10044B6F8;
  if (!qword_10044B6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B6F8);
  }

  return result;
}

uint64_t sub_10018B328(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10018B8F8();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10018B3DC()
{
  result = qword_10044B700;
  if (!qword_10044B700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B700);
  }

  return result;
}

unint64_t sub_10018B434()
{
  result = qword_10044B708;
  if (!qword_10044B708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B708);
  }

  return result;
}

unint64_t sub_10018B48C()
{
  result = qword_10044B710;
  if (!qword_10044B710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B710);
  }

  return result;
}

uint64_t sub_10018B4E0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10018B8F8();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10018B594(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10018B8F8();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10018B648()
{
  result = qword_10044B718;
  if (!qword_10044B718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B718);
  }

  return result;
}

unint64_t sub_10018B6A0()
{
  result = qword_10044B720;
  if (!qword_10044B720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B720);
  }

  return result;
}

uint64_t sub_10018B738(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10018B2D4();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10018B7F0()
{
  result = qword_10044B738;
  if (!qword_10044B738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B738);
  }

  return result;
}

unint64_t sub_10018B848()
{
  result = qword_10044B740;
  if (!qword_10044B740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B740);
  }

  return result;
}

unint64_t sub_10018B8A0()
{
  result = qword_10044B748;
  if (!qword_10044B748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B748);
  }

  return result;
}

unint64_t sub_10018B8F8()
{
  result = qword_10044B750;
  if (!qword_10044B750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B750);
  }

  return result;
}

uint64_t sub_10018B94C()
{
  v0 = qword_100446F38;

  return v0;
}

unint64_t sub_10018B988()
{
  result = qword_10044B758;
  if (!qword_10044B758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B758);
  }

  return result;
}

uint64_t sub_10018B9DC(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100455048, &qword_100351C20);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100455050, &qword_100351C28);
  __chkstk_darwin(v5);
  sub_10018B48C();
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

unint64_t sub_10018BBA4()
{
  result = qword_10044B760;
  if (!qword_10044B760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B760);
  }

  return result;
}

unint64_t sub_10018BBFC()
{
  result = qword_10044B768;
  if (!qword_10044B768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B768);
  }

  return result;
}

unint64_t sub_10018BC54()
{
  result = qword_10044B770;
  if (!qword_10044B770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B770);
  }

  return result;
}

uint64_t sub_10018BCA8(uint64_t a1)
{
  sub_1002D50FC();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10018BD90(uint64_t a1)
{
  v2 = sub_10018B48C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10018BDE0()
{
  result = qword_10044B788;
  if (!qword_10044B788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B788);
  }

  return result;
}

uint64_t sub_10018BE38(uint64_t a1)
{
  v2 = sub_10018BC54();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10018BE88()
{
  result = qword_10044B790;
  if (!qword_10044B790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B790);
  }

  return result;
}

uint64_t sub_10018BF20()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051DFC8);
  sub_10001EDB8(v5, qword_10051DFC8);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_10018C090()
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

uint64_t sub_10018C404()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051DFE0);
  sub_10001EDB8(v0, qword_10051DFE0);
  return sub_1002D88F0();
}

uint64_t sub_10018C468()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051DFF8);
  v1 = sub_10001EDB8(v0, qword_10051DFF8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10018C528()
{
  result = swift_getKeyPath();
  qword_10051E010 = result;
  return result;
}

uint64_t sub_10018C550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100455020, &qword_100351BE0);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100455028, &qword_100351BE8);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10018C730, 0, 0);
}

uint64_t sub_10018C730()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_10018D8E8();
  *v2 = v0;
  v2[1] = sub_10018C814;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6F54, 0, &type metadata for AccessibilityLEDFlashForAlertsFlashWhileUnlockedEnabledEntity, v3);
}

uint64_t sub_10018C814()
{

  return _swift_task_switch(sub_10018C910, 0, 0);
}

uint64_t sub_10018C910()
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
  if (qword_10043AAC0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051E010;
  *(v0 + 288) = qword_10051E010;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100455008, &qword_100455010, &qword_100351BC8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_10018CA74;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_10018CA74()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_10018CBE4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10018CBE4()
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
  sub_10018BE88();
  sub_10018DAFC();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10018CE5C()
{
  v0 = sub_10000321C(&qword_100455030, &qword_100351BF0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043AAC0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10018DAFC();
  sub_10002B6E4(&qword_100455038, &qword_100455030, &qword_100351BF0, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_10018CFD0(uint64_t *a1))(void *)
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

void (*sub_10018D044(uint64_t *a1))(void *)
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

unint64_t sub_10018D0E0()
{
  result = qword_10044B7A8;
  if (!qword_10044B7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B7A8);
  }

  return result;
}

unint64_t sub_10018D138()
{
  result = qword_10044B7B0;
  if (!qword_10044B7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B7B0);
  }

  return result;
}

uint64_t sub_10018D234(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10018C550(a1, v5, v4);
}

uint64_t sub_10018D2E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B2BD8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10018D328()
{
  result = qword_10044B7B8;
  if (!qword_10044B7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B7B8);
  }

  return result;
}

unint64_t sub_10018D380()
{
  result = qword_10044B7C0;
  if (!qword_10044B7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B7C0);
  }

  return result;
}

uint64_t sub_10018D3F4()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 shouldFlashWhileUnlocked];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10018D4BC()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setShouldFlashWhileUnlocked:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10018D554(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10018D5E4, 0, 0);
}

uint64_t sub_10018D5E4()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044B7A0, qword_1003168D0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455008, &qword_100455010, &qword_100351BC8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000035;
  v1[1] = 0x800000010037B330;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_10018D730()
{
  result = qword_10044B7C8;
  if (!qword_10044B7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B7C8);
  }

  return result;
}

uint64_t sub_10018D784(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10018DD54();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10018D838()
{
  result = qword_10044B7D0;
  if (!qword_10044B7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B7D0);
  }

  return result;
}

unint64_t sub_10018D890()
{
  result = qword_10044B7D8;
  if (!qword_10044B7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B7D8);
  }

  return result;
}

unint64_t sub_10018D8E8()
{
  result = qword_10044B7E0;
  if (!qword_10044B7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B7E0);
  }

  return result;
}

uint64_t sub_10018D93C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10018DD54();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10018D9F0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10018DD54();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10018DAA4()
{
  result = qword_10044B7E8;
  if (!qword_10044B7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B7E8);
  }

  return result;
}

unint64_t sub_10018DAFC()
{
  result = qword_10044B7F0;
  if (!qword_10044B7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B7F0);
  }

  return result;
}

uint64_t sub_10018DB94(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10018D730();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10018DC4C()
{
  result = qword_10044B808;
  if (!qword_10044B808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B808);
  }

  return result;
}

unint64_t sub_10018DCA4()
{
  result = qword_10044B810;
  if (!qword_10044B810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B810);
  }

  return result;
}

unint64_t sub_10018DCFC()
{
  result = qword_10044B818;
  if (!qword_10044B818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B818);
  }

  return result;
}

unint64_t sub_10018DD54()
{
  result = qword_10044B820;
  if (!qword_10044B820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B820);
  }

  return result;
}

uint64_t sub_10018DDA8()
{
  v0 = qword_100446F48;

  return v0;
}

unint64_t sub_10018DDE4()
{
  result = qword_10044B828;
  if (!qword_10044B828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B828);
  }

  return result;
}

uint64_t sub_10018DE38(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100454FF8, &qword_100351BA8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100455000, &qword_100351BB0);
  __chkstk_darwin(v5);
  sub_10018D8E8();
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

unint64_t sub_10018E000()
{
  result = qword_10044B830;
  if (!qword_10044B830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B830);
  }

  return result;
}

unint64_t sub_10018E058()
{
  result = qword_10044B838;
  if (!qword_10044B838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B838);
  }

  return result;
}

unint64_t sub_10018E0B0()
{
  result = qword_10044B840;
  if (!qword_10044B840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B840);
  }

  return result;
}

uint64_t sub_10018E104(uint64_t a1)
{
  sub_1002D50A8();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10018E1EC(uint64_t a1)
{
  v2 = sub_10018D8E8();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10018E23C()
{
  result = qword_10044B858;
  if (!qword_10044B858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B858);
  }

  return result;
}

uint64_t sub_10018E294(uint64_t a1)
{
  v2 = sub_10018E0B0();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10018E2E4()
{
  result = qword_10044B860;
  if (!qword_10044B860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B860);
  }

  return result;
}

uint64_t sub_10018E37C()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051E018);
  sub_10001EDB8(v5, qword_10051E018);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_10018E4EC()
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

uint64_t sub_10018E860()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051E030);
  sub_10001EDB8(v0, qword_10051E030);
  return sub_1002D88F0();
}

uint64_t sub_10018E8C4()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051E048);
  v1 = sub_10001EDB8(v0, qword_10051E048);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10018E984()
{
  result = swift_getKeyPath();
  qword_10051E060 = result;
  return result;
}

uint64_t sub_10018E9AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100454FD0, &qword_100351B68);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100454FD8, &qword_100351B70);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10018EB8C, 0, 0);
}

uint64_t sub_10018EB8C()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_10018FD44();
  *v2 = v0;
  v2[1] = sub_10018EC70;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6F58, 0, &type metadata for AccessibilityLEDFlashForAlertsFlashInSilentModeEnabledEntity, v3);
}

uint64_t sub_10018EC70()
{

  return _swift_task_switch(sub_10018ED6C, 0, 0);
}

uint64_t sub_10018ED6C()
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
  if (qword_10043AAE0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051E060;
  *(v0 + 288) = qword_10051E060;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100454FB8, &qword_100454FC0, &qword_100351B50, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_10018EED0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_10018EED0()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_10018F040;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10018F040()
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
  sub_10018E2E4();
  sub_10018FF58();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10018F2B8()
{
  v0 = sub_10000321C(&qword_100454FE0, &qword_100351B78);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043AAE0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10018FF58();
  sub_10002B6E4(&qword_100454FE8, &qword_100454FE0, &qword_100351B78, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_10018F42C(uint64_t *a1))(void *)
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

void (*sub_10018F4A0(uint64_t *a1))(void *)
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

unint64_t sub_10018F53C()
{
  result = qword_10044B878;
  if (!qword_10044B878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B878);
  }

  return result;
}

unint64_t sub_10018F594()
{
  result = qword_10044B880;
  if (!qword_10044B880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B880);
  }

  return result;
}

uint64_t sub_10018F690(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10018E9AC(a1, v5, v4);
}

uint64_t sub_10018F73C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B3040();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10018F784()
{
  result = qword_10044B888;
  if (!qword_10044B888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B888);
  }

  return result;
}

unint64_t sub_10018F7DC()
{
  result = qword_10044B890;
  if (!qword_10044B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B890);
  }

  return result;
}

uint64_t sub_10018F850()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 shouldFlashForAlertInSilentMode];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10018F918()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setShouldFlashForAlertInSilentMode:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10018F9B0(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10018FA40, 0, 0);
}

uint64_t sub_10018FA40()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044B870, qword_100316F08);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454FB8, &qword_100454FC0, &qword_100351B50, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000036;
  v1[1] = 0x800000010037B1C0;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_10018FB8C()
{
  result = qword_10044B898;
  if (!qword_10044B898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B898);
  }

  return result;
}

uint64_t sub_10018FBE0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001901B0();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10018FC94()
{
  result = qword_10044B8A0;
  if (!qword_10044B8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B8A0);
  }

  return result;
}

unint64_t sub_10018FCEC()
{
  result = qword_10044B8A8;
  if (!qword_10044B8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B8A8);
  }

  return result;
}

unint64_t sub_10018FD44()
{
  result = qword_10044B8B0;
  if (!qword_10044B8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B8B0);
  }

  return result;
}

uint64_t sub_10018FD98(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001901B0();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10018FE4C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001901B0();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10018FF00()
{
  result = qword_10044B8B8;
  if (!qword_10044B8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B8B8);
  }

  return result;
}

unint64_t sub_10018FF58()
{
  result = qword_10044B8C0;
  if (!qword_10044B8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B8C0);
  }

  return result;
}

uint64_t sub_10018FFF0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10018FB8C();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1001900A8()
{
  result = qword_10044B8D8;
  if (!qword_10044B8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B8D8);
  }

  return result;
}

unint64_t sub_100190100()
{
  result = qword_10044B8E0;
  if (!qword_10044B8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B8E0);
  }

  return result;
}

unint64_t sub_100190158()
{
  result = qword_10044B8E8;
  if (!qword_10044B8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B8E8);
  }

  return result;
}

unint64_t sub_1001901B0()
{
  result = qword_10044B8F0;
  if (!qword_10044B8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B8F0);
  }

  return result;
}

uint64_t sub_100190204()
{
  v0 = qword_100446F58;

  return v0;
}

unint64_t sub_100190240()
{
  result = qword_10044B8F8;
  if (!qword_10044B8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B8F8);
  }

  return result;
}

uint64_t sub_100190294(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100454FA8, &qword_100351B30);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100454FB0, &qword_100351B38);
  __chkstk_darwin(v5);
  sub_10018FD44();
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

unint64_t sub_10019045C()
{
  result = qword_10044B900;
  if (!qword_10044B900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B900);
  }

  return result;
}

unint64_t sub_1001904B4()
{
  result = qword_10044B908;
  if (!qword_10044B908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B908);
  }

  return result;
}

unint64_t sub_10019050C()
{
  result = qword_10044B910;
  if (!qword_10044B910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B910);
  }

  return result;
}

uint64_t sub_100190560(uint64_t a1)
{
  sub_1002D5054();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100190648(uint64_t a1)
{
  v2 = sub_10018FD44();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100190698()
{
  result = qword_10044B928;
  if (!qword_10044B928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B928);
  }

  return result;
}

uint64_t sub_1001906F0(uint64_t a1)
{
  v2 = sub_10019050C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}