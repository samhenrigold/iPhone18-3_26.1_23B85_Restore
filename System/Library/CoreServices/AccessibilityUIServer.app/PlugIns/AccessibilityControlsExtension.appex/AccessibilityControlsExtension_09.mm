unint64_t sub_10012AF88()
{
  result = qword_1004493B0;
  if (!qword_1004493B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004493B0);
  }

  return result;
}

unint64_t sub_10012AFE0()
{
  result = qword_1004493B8;
  if (!qword_1004493B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004493B8);
  }

  return result;
}

unint64_t sub_10012B038()
{
  result = qword_1004493C0;
  if (!qword_1004493C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004493C0);
  }

  return result;
}

uint64_t sub_10012B08C(uint64_t a1)
{
  sub_1002D61B4();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10012B174(uint64_t a1)
{
  v2 = sub_10012A870();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10012B1C4()
{
  result = qword_1004493D8;
  if (!qword_1004493D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004493D8);
  }

  return result;
}

uint64_t sub_10012B21C(uint64_t a1)
{
  v2 = sub_10012B038();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10012B26C()
{
  result = qword_1004493E0;
  if (!qword_1004493E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004493E0);
  }

  return result;
}

uint64_t sub_10012B304()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051D208);
  sub_10001EDB8(v5, qword_10051D208);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_10012B474@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10012B7E8()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D220);
  sub_10001EDB8(v0, qword_10051D220);
  return sub_1002D88F0();
}

uint64_t sub_10012B84C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D238);
  v1 = sub_10001EDB8(v0, qword_10051D238);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10012B90C()
{
  result = swift_getKeyPath();
  qword_10051D250 = result;
  return result;
}

uint64_t sub_10012B934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100455DE8, &qword_1003530B0);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100455DF0, &qword_1003530B8);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10012BB14, 0, 0);
}

uint64_t sub_10012BB14()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_10012CCCC();
  *v2 = v0;
  v2[1] = sub_10012BBF8;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6EA4, 0, &type metadata for AccessibilityVoiceOverBrailleBrailleScreenInputKeepActiveAfterSelectionEntity, v3);
}

uint64_t sub_10012BBF8()
{

  return _swift_task_switch(sub_10012BCF4, 0, 0);
}

uint64_t sub_10012BCF4()
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
  if (qword_10043A540 != -1)
  {
    swift_once();
  }

  v3 = qword_10051D250;
  *(v0 + 288) = qword_10051D250;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100455DD0, &qword_100455DD8, &qword_100353098, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_10012BE58;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_10012BE58()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_10012BFC8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10012BFC8()
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
  sub_10012B26C();
  sub_10012CEE0();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10012C240()
{
  v0 = sub_10000321C(&qword_100455DF8, &qword_1003530C0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A540 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10012CEE0();
  sub_10002B6E4(&qword_100455E00, &qword_100455DF8, &qword_1003530C0, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_10012C3B4(uint64_t *a1))(void *)
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

void (*sub_10012C428(uint64_t *a1))(void *)
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

unint64_t sub_10012C4C4()
{
  result = qword_1004493F8;
  if (!qword_1004493F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004493F8);
  }

  return result;
}

unint64_t sub_10012C51C()
{
  result = qword_100449400;
  if (!qword_100449400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449400);
  }

  return result;
}

uint64_t sub_10012C618(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10012B934(a1, v5, v4);
}

uint64_t sub_10012C6C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A6ED0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10012C70C()
{
  result = qword_100449408;
  if (!qword_100449408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449408);
  }

  return result;
}

unint64_t sub_10012C764()
{
  result = qword_100449410;
  if (!qword_100449410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449410);
  }

  return result;
}

uint64_t sub_10012C7D8()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverTouchBrailleGestureControl];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10012C8A0()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverTouchBrailleGestureControl:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10012C938(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10012C9C8, 0, 0);
}

uint64_t sub_10012C9C8()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_1004493F0, qword_100305730);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455DD0, &qword_100455DD8, &qword_100353098, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000051;
  v1[1] = 0x8000000100360180;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_10012CB14()
{
  result = qword_100449418;
  if (!qword_100449418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449418);
  }

  return result;
}

uint64_t sub_10012CB68(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10012D138();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10012CC1C()
{
  result = qword_100449420;
  if (!qword_100449420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449420);
  }

  return result;
}

unint64_t sub_10012CC74()
{
  result = qword_100449428;
  if (!qword_100449428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449428);
  }

  return result;
}

unint64_t sub_10012CCCC()
{
  result = qword_100449430;
  if (!qword_100449430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449430);
  }

  return result;
}

uint64_t sub_10012CD20(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10012D138();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10012CDD4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10012D138();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10012CE88()
{
  result = qword_100449438;
  if (!qword_100449438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449438);
  }

  return result;
}

unint64_t sub_10012CEE0()
{
  result = qword_100449440;
  if (!qword_100449440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449440);
  }

  return result;
}

uint64_t sub_10012CF78(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10012CB14();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10012D030()
{
  result = qword_100449458;
  if (!qword_100449458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449458);
  }

  return result;
}

unint64_t sub_10012D088()
{
  result = qword_100449460;
  if (!qword_100449460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449460);
  }

  return result;
}

unint64_t sub_10012D0E0()
{
  result = qword_100449468;
  if (!qword_100449468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449468);
  }

  return result;
}

unint64_t sub_10012D138()
{
  result = qword_100449470;
  if (!qword_100449470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449470);
  }

  return result;
}

uint64_t sub_10012D18C()
{
  v0 = qword_100446C88;

  return v0;
}

unint64_t sub_10012D1C8()
{
  result = qword_100449478;
  if (!qword_100449478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449478);
  }

  return result;
}

uint64_t sub_10012D21C(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100455DC0, &qword_100353078);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100455DC8, &qword_100353080);
  __chkstk_darwin(v5);
  sub_10012CCCC();
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

unint64_t sub_10012D3E4()
{
  result = qword_100449480;
  if (!qword_100449480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449480);
  }

  return result;
}

unint64_t sub_10012D43C()
{
  result = qword_100449488;
  if (!qword_100449488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449488);
  }

  return result;
}

unint64_t sub_10012D494()
{
  result = qword_100449490;
  if (!qword_100449490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449490);
  }

  return result;
}

uint64_t sub_10012D4E8(uint64_t a1)
{
  sub_1002D6160();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10012D5D0(uint64_t a1)
{
  v2 = sub_10012CCCC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10012D620()
{
  result = qword_1004494A8;
  if (!qword_1004494A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004494A8);
  }

  return result;
}

uint64_t sub_10012D678(uint64_t a1)
{
  v2 = sub_10012D494();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10012D6C8()
{
  result = qword_1004494B0;
  if (!qword_1004494B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004494B0);
  }

  return result;
}

uint64_t sub_10012D784()
{
  result = swift_getKeyPath();
  qword_10051D2A0 = result;
  return result;
}

uint64_t sub_10012D7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100455D98, &qword_100353038);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100455DA0, &qword_100353040);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10012D98C, 0, 0);
}

uint64_t sub_10012D98C()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_10012EB68();
  *v2 = v0;
  v2[1] = sub_10012DA70;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6EA8, 0, &type metadata for AccessibilityVoiceOverBrailleBrailleAlertMessagesEntity, v3);
}

uint64_t sub_10012DA70()
{

  return _swift_task_switch(sub_10012DB6C, 0, 0);
}

uint64_t sub_10012DB6C()
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
  if (qword_10043A560 != -1)
  {
    swift_once();
  }

  v3 = qword_10051D2A0;
  *(v0 + 288) = qword_10051D2A0;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100455D80, &qword_100455D88, &qword_100353020, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_10012DCD0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_10012DCD0()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_10012DE40;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10012DE40()
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
  sub_10012D6C8();
  sub_10012ED7C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10012E0B8()
{
  v0 = sub_10000321C(&qword_100455DA8, &qword_100353048);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A560 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10012ED7C();
  sub_10002B6E4(&qword_100455DB0, &qword_100455DA8, &qword_100353048, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_10012E22C(uint64_t *a1))(void *)
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

void (*sub_10012E2A0(uint64_t *a1))(void *)
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

unint64_t sub_10012E33C()
{
  result = qword_1004494C8;
  if (!qword_1004494C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004494C8);
  }

  return result;
}

unint64_t sub_10012E394()
{
  result = qword_1004494D0;
  if (!qword_1004494D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004494D0);
  }

  return result;
}

uint64_t sub_10012E490(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10012D7AC(a1, v5, v4);
}

uint64_t sub_10012E53C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A7338(&qword_100455D90, &qword_100353028, sub_10012EB68);
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10012E5A8()
{
  result = qword_1004494D8;
  if (!qword_1004494D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004494D8);
  }

  return result;
}

unint64_t sub_10012E600()
{
  result = qword_1004494E0;
  if (!qword_1004494E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004494E0);
  }

  return result;
}

uint64_t sub_10012E674()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverBrailleAlertsEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10012E73C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverBrailleAlertsEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10012E7D4(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10012E864, 0, 0);
}

uint64_t sub_10012E864()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_1004494C0, qword_100305D68);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455D80, &qword_100455D88, &qword_100353020, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000061;
  v1[1] = 0x8000000100360F90;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_10012E9B0()
{
  result = qword_1004494E8;
  if (!qword_1004494E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004494E8);
  }

  return result;
}

uint64_t sub_10012EA04(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10012EFD4();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10012EAB8()
{
  result = qword_1004494F0;
  if (!qword_1004494F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004494F0);
  }

  return result;
}

unint64_t sub_10012EB10()
{
  result = qword_1004494F8;
  if (!qword_1004494F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004494F8);
  }

  return result;
}

unint64_t sub_10012EB68()
{
  result = qword_100449500;
  if (!qword_100449500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449500);
  }

  return result;
}

uint64_t sub_10012EBBC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10012EFD4();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10012EC70(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10012EFD4();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10012ED24()
{
  result = qword_100449508;
  if (!qword_100449508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449508);
  }

  return result;
}

unint64_t sub_10012ED7C()
{
  result = qword_100449510;
  if (!qword_100449510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449510);
  }

  return result;
}

uint64_t sub_10012EE14(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10012E9B0();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10012EECC()
{
  result = qword_100449528;
  if (!qword_100449528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449528);
  }

  return result;
}

unint64_t sub_10012EF24()
{
  result = qword_100449530;
  if (!qword_100449530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449530);
  }

  return result;
}

unint64_t sub_10012EF7C()
{
  result = qword_100449538;
  if (!qword_100449538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449538);
  }

  return result;
}

unint64_t sub_10012EFD4()
{
  result = qword_100449540;
  if (!qword_100449540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449540);
  }

  return result;
}

uint64_t sub_10012F028()
{
  v0 = qword_100446C98;

  return v0;
}

unint64_t sub_10012F064()
{
  result = qword_100449548;
  if (!qword_100449548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449548);
  }

  return result;
}

uint64_t sub_10012F0B8(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100455D70, &qword_100353000);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100455D78, &qword_100353008);
  __chkstk_darwin(v5);
  sub_10012EB68();
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

unint64_t sub_10012F280()
{
  result = qword_100449550;
  if (!qword_100449550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449550);
  }

  return result;
}

unint64_t sub_10012F2D8()
{
  result = qword_100449558;
  if (!qword_100449558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449558);
  }

  return result;
}

unint64_t sub_10012F330()
{
  result = qword_100449560;
  if (!qword_100449560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449560);
  }

  return result;
}

uint64_t sub_10012F384(uint64_t a1)
{
  sub_1002D610C();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10012F46C(uint64_t a1)
{
  v2 = sub_10012EB68();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10012F4BC()
{
  result = qword_100449578;
  if (!qword_100449578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449578);
  }

  return result;
}

uint64_t sub_10012F528(uint64_t a1)
{
  v2 = sub_10012F330();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10012F578()
{
  result = qword_100449580;
  if (!qword_100449580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449580);
  }

  return result;
}

uint64_t sub_10012F61C(uint64_t a1, uint64_t *a2)
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

uint64_t sub_10012F788@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10012FB04(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

uint64_t sub_10012FB70(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v3, a2);
  v4 = sub_10001EDB8(v3, a2);
  sub_1002D8620();
  v5 = sub_1002D8630();
  v6 = *(*(v5 - 8) + 56);

  return v6(v4, 0, 1, v5);
}

uint64_t sub_10012FC2C()
{
  result = swift_getKeyPath();
  qword_10051D2F0 = result;
  return result;
}

uint64_t sub_10012FC54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100455D48, &qword_100352FC0);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100455D50, &qword_100352FC8);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10012FE34, 0, 0);
}

uint64_t sub_10012FE34()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_100131010();
  *v2 = v0;
  v2[1] = sub_10012FF18;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6EAC, 0, &type metadata for AccessibilityVoiceOverBrailleBrailleAlertMessagesShowUntilDismissedEntity, v3);
}

uint64_t sub_10012FF18()
{

  return _swift_task_switch(sub_100130014, 0, 0);
}

uint64_t sub_100130014()
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
  if (qword_10043A580 != -1)
  {
    swift_once();
  }

  v3 = qword_10051D2F0;
  *(v0 + 288) = qword_10051D2F0;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100455D30, &qword_100455D38, &qword_100352FA8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_100130178;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_100130178()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1001302E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001302E8()
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
  sub_10012F578();
  sub_100131224();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100130560()
{
  v0 = sub_10000321C(&qword_100455D58, &qword_100352FD0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A580 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100131224();
  sub_10002B6E4(&qword_100455D60, &qword_100455D58, &qword_100352FD0, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1001306D4(uint64_t *a1))(void *)
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

void (*sub_100130748(uint64_t *a1))(void *)
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

unint64_t sub_1001307E4()
{
  result = qword_100449598;
  if (!qword_100449598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449598);
  }

  return result;
}

unint64_t sub_10013083C()
{
  result = qword_1004495A0;
  if (!qword_1004495A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004495A0);
  }

  return result;
}

uint64_t sub_100130938(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10012FC54(a1, v5, v4);
}

uint64_t sub_1001309E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A7338(&qword_100455D40, &qword_100352FB0, sub_100131010);
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100130A50()
{
  result = qword_1004495A8;
  if (!qword_1004495A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004495A8);
  }

  return result;
}

unint64_t sub_100130AA8()
{
  result = qword_1004495B0;
  if (!qword_1004495B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004495B0);
  }

  return result;
}

uint64_t sub_100130B1C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverBrailleAlertShowUntilDismissed];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100130BE4()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverBrailleAlertShowUntilDismissed:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100130C7C(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100130D0C, 0, 0);
}

uint64_t sub_100130D0C()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_100449590, qword_1003063A0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455D30, &qword_100455D38, &qword_100352FA8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000061;
  v1[1] = 0x8000000100360F90;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_100130E58()
{
  result = qword_1004495B8;
  if (!qword_1004495B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004495B8);
  }

  return result;
}

uint64_t sub_100130EAC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10013147C();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100130F60()
{
  result = qword_1004495C0;
  if (!qword_1004495C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004495C0);
  }

  return result;
}

unint64_t sub_100130FB8()
{
  result = qword_1004495C8;
  if (!qword_1004495C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004495C8);
  }

  return result;
}

unint64_t sub_100131010()
{
  result = qword_1004495D0;
  if (!qword_1004495D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004495D0);
  }

  return result;
}

uint64_t sub_100131064(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10013147C();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100131118(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10013147C();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1001311CC()
{
  result = qword_1004495D8;
  if (!qword_1004495D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004495D8);
  }

  return result;
}

unint64_t sub_100131224()
{
  result = qword_1004495E0;
  if (!qword_1004495E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004495E0);
  }

  return result;
}

uint64_t sub_1001312BC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100130E58();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100131374()
{
  result = qword_1004495F8;
  if (!qword_1004495F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004495F8);
  }

  return result;
}

unint64_t sub_1001313CC()
{
  result = qword_100449600;
  if (!qword_100449600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449600);
  }

  return result;
}

unint64_t sub_100131424()
{
  result = qword_100449608;
  if (!qword_100449608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449608);
  }

  return result;
}

unint64_t sub_10013147C()
{
  result = qword_100449610;
  if (!qword_100449610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449610);
  }

  return result;
}

uint64_t sub_1001314D0()
{
  v0 = qword_100446CA8;

  return v0;
}

unint64_t sub_10013150C()
{
  result = qword_100449618;
  if (!qword_100449618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449618);
  }

  return result;
}

uint64_t sub_100131560(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100455D20, &qword_100352F88);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100455D28, &qword_100352F90);
  __chkstk_darwin(v5);
  sub_100131010();
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

unint64_t sub_100131728()
{
  result = qword_100449620;
  if (!qword_100449620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449620);
  }

  return result;
}

unint64_t sub_100131780()
{
  result = qword_100449628;
  if (!qword_100449628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449628);
  }

  return result;
}

unint64_t sub_1001317D8()
{
  result = qword_100449630;
  if (!qword_100449630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449630);
  }

  return result;
}

uint64_t sub_10013182C(uint64_t a1)
{
  sub_1002D60B8();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100131914(uint64_t a1)
{
  v2 = sub_100131010();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100131964()
{
  result = qword_100449648;
  if (!qword_100449648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449648);
  }

  return result;
}

uint64_t sub_1001319B8(uint64_t a1)
{
  v2 = sub_1001317D8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100131A08()
{
  result = qword_100449650;
  if (!qword_100449650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449650);
  }

  return result;
}

uint64_t sub_100131AC4@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100131E38()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D310);
  sub_10001EDB8(v0, qword_10051D310);
  return sub_1002D88F0();
}

uint64_t sub_100131E9C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D328);
  v1 = sub_10001EDB8(v0, qword_10051D328);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100131F5C()
{
  result = swift_getKeyPath();
  qword_10051D340 = result;
  return result;
}

uint64_t sub_100131F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100455CF8, &qword_100352F48);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100455D00, &qword_100352F50);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100132164, 0, 0);
}

uint64_t sub_100132164()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_100133310();
  *v2 = v0;
  v2[1] = sub_100132248;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6EB0, 0, &type metadata for AccessibilityBoldTextEnabledEntity, v3);
}

uint64_t sub_100132248()
{

  return _swift_task_switch(sub_100132344, 0, 0);
}

uint64_t sub_100132344()
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
  if (qword_10043A5A0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051D340;
  *(v0 + 288) = qword_10051D340;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100455CE0, &qword_100455CE8, &qword_100352F30, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1001324A8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1001324A8()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_100132618;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100132618()
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
  sub_100131A08();
  sub_100133524();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100132890()
{
  v0 = sub_10000321C(&qword_100455D08, &qword_100352F58);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A5A0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100133524();
  sub_10002B6E4(&qword_100455D10, &qword_100455D08, &qword_100352F58, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_100132A04(uint64_t *a1))(void *)
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

void (*sub_100132A78(uint64_t *a1))(void *)
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

unint64_t sub_100132B14()
{
  result = qword_100449668;
  if (!qword_100449668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449668);
  }

  return result;
}

unint64_t sub_100132B6C()
{
  result = qword_100449670;
  if (!qword_100449670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449670);
  }

  return result;
}

uint64_t sub_100132C68(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100131F84(a1, v5, v4);
}

uint64_t sub_100132D14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A77C0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100132D5C()
{
  result = qword_100449678;
  if (!qword_100449678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449678);
  }

  return result;
}

unint64_t sub_100132DB4()
{
  result = qword_100449680;
  if (!qword_100449680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449680);
  }

  return result;
}

uint64_t sub_100132E28()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 enhanceTextLegibilityEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100132EF0()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setEnhanceTextLegibilityEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100132F88(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100133018, 0, 0);
}

uint64_t sub_100133018()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_100449660, qword_1003069D8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455CE0, &qword_100455CE8, &qword_100352F30, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000028;
  v1[1] = 0x80000001003610D0;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_100133158()
{
  result = qword_100449688;
  if (!qword_100449688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449688);
  }

  return result;
}

uint64_t sub_1001331AC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10013377C();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100133260()
{
  result = qword_100449690;
  if (!qword_100449690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449690);
  }

  return result;
}

unint64_t sub_1001332B8()
{
  result = qword_100449698;
  if (!qword_100449698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449698);
  }

  return result;
}

unint64_t sub_100133310()
{
  result = qword_1004496A0;
  if (!qword_1004496A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004496A0);
  }

  return result;
}

uint64_t sub_100133364(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10013377C();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100133418(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10013377C();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1001334CC()
{
  result = qword_1004496A8;
  if (!qword_1004496A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004496A8);
  }

  return result;
}

unint64_t sub_100133524()
{
  result = qword_1004496B0;
  if (!qword_1004496B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004496B0);
  }

  return result;
}

uint64_t sub_1001335BC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100133158();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100133674()
{
  result = qword_1004496C8;
  if (!qword_1004496C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004496C8);
  }

  return result;
}

unint64_t sub_1001336CC()
{
  result = qword_1004496D0;
  if (!qword_1004496D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004496D0);
  }

  return result;
}

unint64_t sub_100133724()
{
  result = qword_1004496D8;
  if (!qword_1004496D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004496D8);
  }

  return result;
}

unint64_t sub_10013377C()
{
  result = qword_1004496E0;
  if (!qword_1004496E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004496E0);
  }

  return result;
}

uint64_t sub_1001337D0()
{
  v0 = qword_100446CB8;

  return v0;
}

unint64_t sub_10013380C()
{
  result = qword_1004496E8;
  if (!qword_1004496E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004496E8);
  }

  return result;
}

uint64_t sub_100133860(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100455CD0, &qword_100352F10);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100455CD8, &qword_100352F18);
  __chkstk_darwin(v5);
  sub_100133310();
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

unint64_t sub_100133A28()
{
  result = qword_1004496F0;
  if (!qword_1004496F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004496F0);
  }

  return result;
}

unint64_t sub_100133A80()
{
  result = qword_1004496F8;
  if (!qword_1004496F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004496F8);
  }

  return result;
}

unint64_t sub_100133AD8()
{
  result = qword_100449700;
  if (!qword_100449700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449700);
  }

  return result;
}

uint64_t sub_100133B2C(uint64_t a1)
{
  sub_1002D6064();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100133C14(uint64_t a1)
{
  v2 = sub_100133310();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100133C64()
{
  result = qword_100449718;
  if (!qword_100449718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449718);
  }

  return result;
}

uint64_t sub_100133CBC(uint64_t a1)
{
  v2 = sub_100133AD8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100133D0C()
{
  result = qword_100449720;
  if (!qword_100449720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449720);
  }

  return result;
}

uint64_t sub_100133DD0@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10013414C()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D360);
  sub_10001EDB8(v0, qword_10051D360);
  return sub_1002D88F0();
}

uint64_t sub_1001341B0()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D378);
  v1 = sub_10001EDB8(v0, qword_10051D378);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100134270()
{
  result = swift_getKeyPath();
  qword_10051D390 = result;
  return result;
}

uint64_t sub_100134298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100455CA8, &qword_100352ED0);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100455CB0, &qword_100352ED8);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100134478, 0, 0);
}

uint64_t sub_100134478()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_10013562C();
  *v2 = v0;
  v2[1] = sub_10013455C;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6EB4, 0, &type metadata for AccessibilityButtonShapesEnabledEntity, v3);
}

uint64_t sub_10013455C()
{

  return _swift_task_switch(sub_100134658, 0, 0);
}

uint64_t sub_100134658()
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
  if (qword_10043A5C0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051D390;
  *(v0 + 288) = qword_10051D390;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100455C90, &qword_100455C98, &qword_100352EB8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1001347BC;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1001347BC()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_10013492C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10013492C()
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
  sub_100133D0C();
  sub_100135840();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100134BA4()
{
  v0 = sub_10000321C(&qword_100455CB8, &qword_100352EE0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A5C0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100135840();
  sub_10002B6E4(&qword_100455CC0, &qword_100455CB8, &qword_100352EE0, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_100134D18(uint64_t *a1))(void *)
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

void (*sub_100134D8C(uint64_t *a1))(void *)
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

unint64_t sub_100134E28()
{
  result = qword_100449738;
  if (!qword_100449738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449738);
  }

  return result;
}

unint64_t sub_100134E80()
{
  result = qword_100449740;
  if (!qword_100449740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449740);
  }

  return result;
}

uint64_t sub_100134F7C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100134298(a1, v5, v4);
}

uint64_t sub_100135028@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A7C28();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100135070()
{
  result = qword_100449748;
  if (!qword_100449748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449748);
  }

  return result;
}

unint64_t sub_1001350C8()
{
  result = qword_100449750;
  if (!qword_100449750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449750);
  }

  return result;
}

uint64_t sub_10013513C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 buttonShapesEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100135204()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setButtonShapesEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10013529C(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10013532C, 0, 0);
}

uint64_t sub_10013532C()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_100449730, qword_100307010);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455C90, &qword_100455C98, &qword_100352EB8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD00000000000001ELL;
  v1[1] = 0x8000000100360A50;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_100135474()
{
  result = qword_100449758;
  if (!qword_100449758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449758);
  }

  return result;
}

uint64_t sub_1001354C8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100135A98();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10013557C()
{
  result = qword_100449760;
  if (!qword_100449760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449760);
  }

  return result;
}

unint64_t sub_1001355D4()
{
  result = qword_100449768;
  if (!qword_100449768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449768);
  }

  return result;
}

unint64_t sub_10013562C()
{
  result = qword_100449770;
  if (!qword_100449770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449770);
  }

  return result;
}

uint64_t sub_100135680(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100135A98();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100135734(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100135A98();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1001357E8()
{
  result = qword_100449778;
  if (!qword_100449778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449778);
  }

  return result;
}

unint64_t sub_100135840()
{
  result = qword_100449780;
  if (!qword_100449780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449780);
  }

  return result;
}

uint64_t sub_1001358D8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100135474();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100135990()
{
  result = qword_100449798;
  if (!qword_100449798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449798);
  }

  return result;
}

unint64_t sub_1001359E8()
{
  result = qword_1004497A0;
  if (!qword_1004497A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004497A0);
  }

  return result;
}

unint64_t sub_100135A40()
{
  result = qword_1004497A8;
  if (!qword_1004497A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004497A8);
  }

  return result;
}

unint64_t sub_100135A98()
{
  result = qword_1004497B0;
  if (!qword_1004497B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004497B0);
  }

  return result;
}

uint64_t sub_100135AEC()
{
  v0 = qword_100446CC8;

  return v0;
}

unint64_t sub_100135B28()
{
  result = qword_1004497B8;
  if (!qword_1004497B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004497B8);
  }

  return result;
}

uint64_t sub_100135B7C(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100455C80, &qword_100352E98);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100455C88, &qword_100352EA0);
  __chkstk_darwin(v5);
  sub_10013562C();
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

unint64_t sub_100135D44()
{
  result = qword_1004497C0;
  if (!qword_1004497C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004497C0);
  }

  return result;
}

unint64_t sub_100135D9C()
{
  result = qword_1004497C8;
  if (!qword_1004497C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004497C8);
  }

  return result;
}

unint64_t sub_100135DF4()
{
  result = qword_1004497D0;
  if (!qword_1004497D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004497D0);
  }

  return result;
}

uint64_t sub_100135E48(uint64_t a1)
{
  sub_1002D6010();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100135F30(uint64_t a1)
{
  v2 = sub_10013562C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100135F80()
{
  result = qword_1004497E8;
  if (!qword_1004497E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004497E8);
  }

  return result;
}

uint64_t sub_100135FD8(uint64_t a1)
{
  v2 = sub_100135DF4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100136028()
{
  result = qword_1004497F0;
  if (!qword_1004497F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004497F0);
  }

  return result;
}

uint64_t sub_1001360E8@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100136460()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D3B0);
  sub_10001EDB8(v0, qword_10051D3B0);
  return sub_1002D88F0();
}

uint64_t sub_1001364C4()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D3C8);
  v1 = sub_10001EDB8(v0, qword_10051D3C8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100136584()
{
  result = swift_getKeyPath();
  qword_10051D3E0 = result;
  return result;
}

uint64_t sub_1001365AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100455C58, &qword_100352E58);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100455C60, &qword_100352E60);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10013678C, 0, 0);
}

uint64_t sub_10013678C()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_10013793C();
  *v2 = v0;
  v2[1] = sub_100136870;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6EB8, 0, &type metadata for AccessibilityOnOffLabelsEnabledEntity, v3);
}

uint64_t sub_100136870()
{

  return _swift_task_switch(sub_10013696C, 0, 0);
}

uint64_t sub_10013696C()
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
  if (qword_10043A5E0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051D3E0;
  *(v0 + 288) = qword_10051D3E0;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100455C40, &qword_100455C48, &qword_100352E40, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_100136AD0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_100136AD0()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_100136C40;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100136C40()
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
  sub_100136028();
  sub_100137B50();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100136EB8()
{
  v0 = sub_10000321C(&qword_100455C68, &qword_100352E68);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A5E0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100137B50();
  sub_10002B6E4(&qword_100455C70, &qword_100455C68, &qword_100352E68, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_10013702C(uint64_t *a1))(void *)
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

void (*sub_1001370A0(uint64_t *a1))(void *)
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

unint64_t sub_10013713C()
{
  result = qword_100449808;
  if (!qword_100449808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449808);
  }

  return result;
}

unint64_t sub_100137194()
{
  result = qword_100449810;
  if (!qword_100449810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449810);
  }

  return result;
}

uint64_t sub_100137290(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001365AC(a1, v5, v4);
}

uint64_t sub_10013733C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A8090();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100137384()
{
  result = qword_100449818;
  if (!qword_100449818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449818);
  }

  return result;
}

unint64_t sub_1001373DC()
{
  result = qword_100449820;
  if (!qword_100449820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449820);
  }

  return result;
}

uint64_t sub_100137450()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 increaseButtonLegibilityEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100137518()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setIncreaseButtonLegibilityEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001375B0(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100137640, 0, 0);
}

uint64_t sub_100137640()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_100449800, qword_100307648);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455C40, &qword_100455C48, &qword_100352E40, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD00000000000001CLL;
  v1[1] = 0x800000010035D210;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_100137784()
{
  result = qword_100449828;
  if (!qword_100449828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449828);
  }

  return result;
}

uint64_t sub_1001377D8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100137DA8();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10013788C()
{
  result = qword_100449830;
  if (!qword_100449830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449830);
  }

  return result;
}

unint64_t sub_1001378E4()
{
  result = qword_100449838;
  if (!qword_100449838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449838);
  }

  return result;
}

unint64_t sub_10013793C()
{
  result = qword_100449840;
  if (!qword_100449840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449840);
  }

  return result;
}

uint64_t sub_100137990(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100137DA8();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100137A44(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100137DA8();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100137AF8()
{
  result = qword_100449848;
  if (!qword_100449848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449848);
  }

  return result;
}

unint64_t sub_100137B50()
{
  result = qword_100449850;
  if (!qword_100449850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449850);
  }

  return result;
}

uint64_t sub_100137BE8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100137784();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100137CA0()
{
  result = qword_100449868;
  if (!qword_100449868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449868);
  }

  return result;
}

unint64_t sub_100137CF8()
{
  result = qword_100449870;
  if (!qword_100449870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449870);
  }

  return result;
}

unint64_t sub_100137D50()
{
  result = qword_100449878;
  if (!qword_100449878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449878);
  }

  return result;
}

unint64_t sub_100137DA8()
{
  result = qword_100449880;
  if (!qword_100449880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449880);
  }

  return result;
}

uint64_t sub_100137DFC()
{
  v0 = qword_100446CD8;

  return v0;
}

unint64_t sub_100137E38()
{
  result = qword_100449888;
  if (!qword_100449888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449888);
  }

  return result;
}

uint64_t sub_100137E8C(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100455C30, &qword_100352E20);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100455C38, &qword_100352E28);
  __chkstk_darwin(v5);
  sub_10013793C();
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

unint64_t sub_100138054()
{
  result = qword_100449890;
  if (!qword_100449890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449890);
  }

  return result;
}

unint64_t sub_1001380AC()
{
  result = qword_100449898;
  if (!qword_100449898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449898);
  }

  return result;
}

unint64_t sub_100138104()
{
  result = qword_1004498A0;
  if (!qword_1004498A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004498A0);
  }

  return result;
}

uint64_t sub_100138158(uint64_t a1)
{
  sub_1002D5FBC();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100138240(uint64_t a1)
{
  v2 = sub_10013793C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100138290()
{
  result = qword_1004498B8;
  if (!qword_1004498B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004498B8);
  }

  return result;
}

uint64_t sub_1001382E8(uint64_t a1)
{
  v2 = sub_100138104();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100138338()
{
  result = qword_1004498C0;
  if (!qword_1004498C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004498C0);
  }

  return result;
}

uint64_t sub_1001383D0()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051D3E8);
  sub_10001EDB8(v5, qword_10051D3E8);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_100138540@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001388BC()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D400);
  sub_10001EDB8(v0, qword_10051D400);
  return sub_1002D88F0();
}

uint64_t sub_100138920()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D418);
  v1 = sub_10001EDB8(v0, qword_10051D418);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001389E0()
{
  result = swift_getKeyPath();
  qword_10051D430 = result;
  return result;
}

uint64_t sub_100138A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100455C08, &qword_100352DE0);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100455C10, &qword_100352DE8);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100138BE8, 0, 0);
}

uint64_t sub_100138BE8()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_100139DA0();
  *v2 = v0;
  v2[1] = sub_100138CCC;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6EBC, 0, &type metadata for AccessibilityReduceTransparencyEnabledEntity, v3);
}

uint64_t sub_100138CCC()
{

  return _swift_task_switch(sub_100138DC8, 0, 0);
}

uint64_t sub_100138DC8()
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
  if (qword_10043A600 != -1)
  {
    swift_once();
  }

  v3 = qword_10051D430;
  *(v0 + 288) = qword_10051D430;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100455BF0, &qword_100455BF8, &qword_100352DC8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_100138F2C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_100138F2C()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_10013909C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10013909C()
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
  sub_100138338();
  sub_100139FB4();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100139314()
{
  v0 = sub_10000321C(&qword_100455C18, &qword_100352DF0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A600 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100139FB4();
  sub_10002B6E4(&qword_100455C20, &qword_100455C18, &qword_100352DF0, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_100139488(uint64_t *a1))(void *)
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

void (*sub_1001394FC(uint64_t *a1))(void *)
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

unint64_t sub_100139598()
{
  result = qword_1004498D8;
  if (!qword_1004498D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004498D8);
  }

  return result;
}

unint64_t sub_1001395F0()
{
  result = qword_1004498E0;
  if (!qword_1004498E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004498E0);
  }

  return result;
}

uint64_t sub_1001396EC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100138A08(a1, v5, v4);
}

uint64_t sub_100139798@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A84F8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001397E0()
{
  result = qword_1004498E8;
  if (!qword_1004498E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004498E8);
  }

  return result;
}

unint64_t sub_100139838()
{
  result = qword_1004498F0;
  if (!qword_1004498F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004498F0);
  }

  return result;
}

uint64_t sub_1001398AC()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 enhanceBackgroundContrastEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100139974()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setEnhanceBackgroundContrastEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100139A0C(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100139A9C, 0, 0);
}

uint64_t sub_100139A9C()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_1004498D0, qword_100307C80);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455BF0, &qword_100455BF8, &qword_100352DC8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000024;
  v1[1] = 0x800000010035C500;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_100139BE8()
{
  result = qword_1004498F8;
  if (!qword_1004498F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004498F8);
  }

  return result;
}

uint64_t sub_100139C3C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10013A20C();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100139CF0()
{
  result = qword_100449900;
  if (!qword_100449900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449900);
  }

  return result;
}

unint64_t sub_100139D48()
{
  result = qword_100449908;
  if (!qword_100449908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449908);
  }

  return result;
}

unint64_t sub_100139DA0()
{
  result = qword_100449910;
  if (!qword_100449910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449910);
  }

  return result;
}

uint64_t sub_100139DF4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10013A20C();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100139EA8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10013A20C();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100139F5C()
{
  result = qword_100449918;
  if (!qword_100449918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449918);
  }

  return result;
}

unint64_t sub_100139FB4()
{
  result = qword_100449920;
  if (!qword_100449920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449920);
  }

  return result;
}

uint64_t sub_10013A04C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100139BE8();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10013A104()
{
  result = qword_100449938;
  if (!qword_100449938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449938);
  }

  return result;
}

unint64_t sub_10013A15C()
{
  result = qword_100449940;
  if (!qword_100449940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449940);
  }

  return result;
}

unint64_t sub_10013A1B4()
{
  result = qword_100449948;
  if (!qword_100449948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449948);
  }

  return result;
}

unint64_t sub_10013A20C()
{
  result = qword_100449950;
  if (!qword_100449950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449950);
  }

  return result;
}

uint64_t sub_10013A260()
{
  v0 = qword_100446CE8;

  return v0;
}

unint64_t sub_10013A29C()
{
  result = qword_100449958;
  if (!qword_100449958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449958);
  }

  return result;
}

uint64_t sub_10013A2F0(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100455BE0, &qword_100352DA8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100455BE8, &qword_100352DB0);
  __chkstk_darwin(v5);
  sub_100139DA0();
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

unint64_t sub_10013A4B8()
{
  result = qword_100449960;
  if (!qword_100449960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449960);
  }

  return result;
}

unint64_t sub_10013A510()
{
  result = qword_100449968;
  if (!qword_100449968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449968);
  }

  return result;
}

unint64_t sub_10013A568()
{
  result = qword_100449970;
  if (!qword_100449970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449970);
  }

  return result;
}

uint64_t sub_10013A5BC(uint64_t a1)
{
  sub_1002D5F68();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10013A6A4(uint64_t a1)
{
  v2 = sub_100139DA0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10013A6F4()
{
  result = qword_100449988;
  if (!qword_100449988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449988);
  }

  return result;
}

uint64_t sub_10013A74C(uint64_t a1)
{
  v2 = sub_10013A568();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10013A79C()
{
  result = qword_100449990;
  if (!qword_100449990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449990);
  }

  return result;
}

uint64_t sub_10013A834()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051D438);
  sub_10001EDB8(v5, qword_10051D438);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_10013A9A4@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10013AD20()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D450);
  sub_10001EDB8(v0, qword_10051D450);
  return sub_1002D88F0();
}

uint64_t sub_10013AD84()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D468);
  v1 = sub_10001EDB8(v0, qword_10051D468);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10013AE44()
{
  result = swift_getKeyPath();
  qword_10051D480 = result;
  return result;
}

uint64_t sub_10013AE6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100455BB8, &qword_100352D68);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100455BC0, &qword_100352D70);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10013B04C, 0, 0);
}

uint64_t sub_10013B04C()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_10013C19C();
  *v2 = v0;
  v2[1] = sub_10013B130;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6EC0, 0, &type metadata for AccessibilityIncreaseContrastEnabledEntity, v3);
}

uint64_t sub_10013B130()
{

  return _swift_task_switch(sub_10013B22C, 0, 0);
}

uint64_t sub_10013B22C()
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
  if (qword_10043A620 != -1)
  {
    swift_once();
  }

  v3 = qword_10051D480;
  *(v0 + 288) = qword_10051D480;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100455BA0, &qword_100455BA8, &qword_100352D50, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_10013B390;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_10013B390()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_10013B500;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10013B500()
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
  sub_10013A79C();
  sub_10013C3B0();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10013B778()
{
  v0 = sub_10000321C(&qword_100455BC8, &qword_100352D78);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A620 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10013C3B0();
  sub_10002B6E4(&qword_100455BD0, &qword_100455BC8, &qword_100352D78, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_10013B8EC(uint64_t *a1))(void *)
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

void (*sub_10013B960(uint64_t *a1))(void *)
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

unint64_t sub_10013B9FC()
{
  result = qword_1004499A8;
  if (!qword_1004499A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004499A8);
  }

  return result;
}

unint64_t sub_10013BA54()
{
  result = qword_1004499B0;
  if (!qword_1004499B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004499B0);
  }

  return result;
}

uint64_t sub_10013BB50(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10013AE6C(a1, v5, v4);
}

uint64_t sub_10013BBFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A8960();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10013BC44()
{
  result = qword_1004499B8;
  if (!qword_1004499B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004499B8);
  }

  return result;
}

unint64_t sub_10013BC9C()
{
  result = qword_1004499C0;
  if (!qword_1004499C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004499C0);
  }

  return result;
}

uint64_t sub_10013BD10()
{
  v1 = *(v0 + 16);
  *v1 = _AXDarkenSystemColors() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10013BDA4()
{
  _AXSSetDarkenSystemColors();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10013BE08(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10013BE98, 0, 0);
}

uint64_t sub_10013BE98()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_1004499A0, qword_1003082B8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455BA0, &qword_100455BA8, &qword_100352D50, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000023;
  v1[1] = 0x800000010035E4E0;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_10013BFE4()
{
  result = qword_1004499C8;
  if (!qword_1004499C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004499C8);
  }

  return result;
}

uint64_t sub_10013C038(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10013C608();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10013C0EC()
{
  result = qword_1004499D0;
  if (!qword_1004499D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004499D0);
  }

  return result;
}

unint64_t sub_10013C144()
{
  result = qword_1004499D8;
  if (!qword_1004499D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004499D8);
  }

  return result;
}

unint64_t sub_10013C19C()
{
  result = qword_1004499E0;
  if (!qword_1004499E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004499E0);
  }

  return result;
}

uint64_t sub_10013C1F0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10013C608();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10013C2A4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10013C608();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10013C358()
{
  result = qword_1004499E8;
  if (!qword_1004499E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004499E8);
  }

  return result;
}

unint64_t sub_10013C3B0()
{
  result = qword_1004499F0;
  if (!qword_1004499F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004499F0);
  }

  return result;
}

uint64_t sub_10013C448(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10013BFE4();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10013C500()
{
  result = qword_100449A08;
  if (!qword_100449A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449A08);
  }

  return result;
}

unint64_t sub_10013C558()
{
  result = qword_100449A10;
  if (!qword_100449A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449A10);
  }

  return result;
}

unint64_t sub_10013C5B0()
{
  result = qword_100449A18;
  if (!qword_100449A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449A18);
  }

  return result;
}

unint64_t sub_10013C608()
{
  result = qword_100449A20;
  if (!qword_100449A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449A20);
  }

  return result;
}

uint64_t sub_10013C65C()
{
  v0 = qword_100446CF8;

  return v0;
}

unint64_t sub_10013C698()
{
  result = qword_100449A28;
  if (!qword_100449A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449A28);
  }

  return result;
}

uint64_t sub_10013C6EC(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100455B90, &qword_100352D30);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100455B98, &qword_100352D38);
  __chkstk_darwin(v5);
  sub_10013C19C();
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

unint64_t sub_10013C8B4()
{
  result = qword_100449A30;
  if (!qword_100449A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449A30);
  }

  return result;
}

unint64_t sub_10013C90C()
{
  result = qword_100449A38;
  if (!qword_100449A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449A38);
  }

  return result;
}

unint64_t sub_10013C964()
{
  result = qword_100449A40;
  if (!qword_100449A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449A40);
  }

  return result;
}

uint64_t sub_10013C9B8(uint64_t a1)
{
  sub_1002D5F14();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10013CAA0(uint64_t a1)
{
  v2 = sub_10013C19C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10013CAF0()
{
  result = qword_100449A58;
  if (!qword_100449A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449A58);
  }

  return result;
}

uint64_t sub_10013CB48(uint64_t a1)
{
  v2 = sub_10013C964();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10013CB98()
{
  result = qword_100449A60;
  if (!qword_100449A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449A60);
  }

  return result;
}

uint64_t sub_10013CC30()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051D488);
  sub_10001EDB8(v5, qword_10051D488);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_10013CDA0@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10013D110()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D4A0);
  sub_10001EDB8(v0, qword_10051D4A0);
  return sub_1002D88F0();
}

uint64_t sub_10013D174()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D4B8);
  v1 = sub_10001EDB8(v0, qword_10051D4B8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10013D234()
{
  result = swift_getKeyPath();
  qword_10051D4D0 = result;
  return result;
}

uint64_t sub_10013D25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100455B68, &qword_100352CF0);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100455B70, &qword_100352CF8);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10013D43C, 0, 0);
}

uint64_t sub_10013D43C()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_10013E58C();
  *v2 = v0;
  v2[1] = sub_10013D520;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6EC4, 0, &type metadata for AccessibilityDifferentiateWithoutColorEnabledEntity, v3);
}

uint64_t sub_10013D520()
{

  return _swift_task_switch(sub_10013D61C, 0, 0);
}

uint64_t sub_10013D61C()
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
  if (qword_10043A640 != -1)
  {
    swift_once();
  }

  v3 = qword_10051D4D0;
  *(v0 + 288) = qword_10051D4D0;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100455B50, &qword_100455B58, &qword_100352CD8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_10013D780;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_10013D780()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_10013D8F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10013D8F0()
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
  sub_10013CB98();
  sub_10013E7A0();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10013DB68()
{
  v0 = sub_10000321C(&qword_100455B78, &qword_100352D00);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A640 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10013E7A0();
  sub_10002B6E4(&qword_100455B80, &qword_100455B78, &qword_100352D00, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_10013DCDC(uint64_t *a1))(void *)
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

void (*sub_10013DD50(uint64_t *a1))(void *)
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

unint64_t sub_10013DDEC()
{
  result = qword_100449A78;
  if (!qword_100449A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449A78);
  }

  return result;
}

unint64_t sub_10013DE44()
{
  result = qword_100449A80;
  if (!qword_100449A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449A80);
  }

  return result;
}

uint64_t sub_10013DF40(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10013D25C(a1, v5, v4);
}

uint64_t sub_10013DFEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A8DC8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10013E034()
{
  result = qword_100449A88;
  if (!qword_100449A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449A88);
  }

  return result;
}

unint64_t sub_10013E08C()
{
  result = qword_100449A90;
  if (!qword_100449A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449A90);
  }

  return result;
}

uint64_t sub_10013E100()
{
  v1 = *(v0 + 16);
  *v1 = _AXSDifferentiateWithoutColorEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10013E194()
{
  _AXSSetDifferentiateWithoutColorEnabled();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10013E1F8(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10013E288, 0, 0);
}

uint64_t sub_10013E288()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_100449A70, qword_1003088F0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455B50, &qword_100455B58, &qword_100352CD8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD00000000000002CLL;
  v1[1] = 0x800000010035FB70;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_10013E3D4()
{
  result = qword_100449A98;
  if (!qword_100449A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449A98);
  }

  return result;
}

uint64_t sub_10013E428(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10013E9F8();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10013E4DC()
{
  result = qword_100449AA0;
  if (!qword_100449AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449AA0);
  }

  return result;
}

unint64_t sub_10013E534()
{
  result = qword_100449AA8;
  if (!qword_100449AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449AA8);
  }

  return result;
}

unint64_t sub_10013E58C()
{
  result = qword_100449AB0;
  if (!qword_100449AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449AB0);
  }

  return result;
}

uint64_t sub_10013E5E0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10013E9F8();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10013E694(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10013E9F8();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10013E748()
{
  result = qword_100449AB8;
  if (!qword_100449AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449AB8);
  }

  return result;
}

unint64_t sub_10013E7A0()
{
  result = qword_100449AC0;
  if (!qword_100449AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449AC0);
  }

  return result;
}

uint64_t sub_10013E838(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10013E3D4();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10013E8F0()
{
  result = qword_100449AD8;
  if (!qword_100449AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449AD8);
  }

  return result;
}

unint64_t sub_10013E948()
{
  result = qword_100449AE0;
  if (!qword_100449AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449AE0);
  }

  return result;
}

unint64_t sub_10013E9A0()
{
  result = qword_100449AE8;
  if (!qword_100449AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449AE8);
  }

  return result;
}

unint64_t sub_10013E9F8()
{
  result = qword_100449AF0;
  if (!qword_100449AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449AF0);
  }

  return result;
}

uint64_t sub_10013EA4C()
{
  v0 = qword_100446D08;

  return v0;
}

unint64_t sub_10013EA88()
{
  result = qword_100449AF8;
  if (!qword_100449AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449AF8);
  }

  return result;
}

uint64_t sub_10013EADC(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100455B40, &qword_100352CB8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100455B48, &qword_100352CC0);
  __chkstk_darwin(v5);
  sub_10013E58C();
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

unint64_t sub_10013ECA4()
{
  result = qword_100449B00;
  if (!qword_100449B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449B00);
  }

  return result;
}

unint64_t sub_10013ECFC()
{
  result = qword_100449B08;
  if (!qword_100449B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449B08);
  }

  return result;
}

unint64_t sub_10013ED54()
{
  result = qword_100449B10;
  if (!qword_100449B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449B10);
  }

  return result;
}

uint64_t sub_10013EDA8(uint64_t a1)
{
  sub_1002D5EC0();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10013EE90(uint64_t a1)
{
  v2 = sub_10013E58C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10013EEE0()
{
  result = qword_100449B28;
  if (!qword_100449B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449B28);
  }

  return result;
}

uint64_t sub_10013EF38(uint64_t a1)
{
  v2 = sub_10013ED54();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10013EF88()
{
  result = qword_100449B30;
  if (!qword_100449B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449B30);
  }

  return result;
}

uint64_t sub_10013F020()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051D4D8);
  sub_10001EDB8(v5, qword_10051D4D8);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_10013F190@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10013F500()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D4F0);
  sub_10001EDB8(v0, qword_10051D4F0);
  return sub_1002D88F0();
}

uint64_t sub_10013F564()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D508);
  v1 = sub_10001EDB8(v0, qword_10051D508);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10013F624()
{
  result = swift_getKeyPath();
  qword_10051D520 = result;
  return result;
}

uint64_t sub_10013F64C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100455B18, &qword_100352C78);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100455B20, &qword_100352C80);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10013F82C, 0, 0);
}

uint64_t sub_10013F82C()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_10014097C();
  *v2 = v0;
  v2[1] = sub_10013F910;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6EC8, 0, &type metadata for AccessibilityPreferHorizontalTextEnabledEntity, v3);
}

uint64_t sub_10013F910()
{

  return _swift_task_switch(sub_10013FA0C, 0, 0);
}

uint64_t sub_10013FA0C()
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
  if (qword_10043A660 != -1)
  {
    swift_once();
  }

  v3 = qword_10051D520;
  *(v0 + 288) = qword_10051D520;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100455B00, &qword_100455B08, &qword_100352C60, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_10013FB70;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_10013FB70()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_10013FCE0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10013FCE0()
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
  sub_10013EF88();
  sub_100140B90();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10013FF58()
{
  v0 = sub_10000321C(&qword_100455B28, &qword_100352C88);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A660 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100140B90();
  sub_10002B6E4(&qword_100455B30, &qword_100455B28, &qword_100352C88, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1001400CC(uint64_t *a1))(void *)
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

void (*sub_100140140(uint64_t *a1))(void *)
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

unint64_t sub_1001401DC()
{
  result = qword_100449B48;
  if (!qword_100449B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449B48);
  }

  return result;
}

unint64_t sub_100140234()
{
  result = qword_100449B50;
  if (!qword_100449B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449B50);
  }

  return result;
}

uint64_t sub_100140330(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10013F64C(a1, v5, v4);
}

uint64_t sub_1001403DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A9230();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100140424()
{
  result = qword_100449B58;
  if (!qword_100449B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449B58);
  }

  return result;
}

unint64_t sub_10014047C()
{
  result = qword_100449B60;
  if (!qword_100449B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449B60);
  }

  return result;
}

uint64_t sub_1001404F0()
{
  v1 = *(v0 + 16);
  *v1 = _AXSPrefersHorizontalTextLayout() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100140584()
{
  _AXSSetPrefersHorizontalTextLayout();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001405E8(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100140678, 0, 0);
}

uint64_t sub_100140678()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_100449B40, qword_100308F28);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455B00, &qword_100455B08, &qword_100352C60, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000027;
  v1[1] = 0x800000010035C9D0;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1001407C4()
{
  result = qword_100449B68;
  if (!qword_100449B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449B68);
  }

  return result;
}

uint64_t sub_100140818(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100140DE8();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1001408CC()
{
  result = qword_100449B70;
  if (!qword_100449B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449B70);
  }

  return result;
}

unint64_t sub_100140924()
{
  result = qword_100449B78;
  if (!qword_100449B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449B78);
  }

  return result;
}

unint64_t sub_10014097C()
{
  result = qword_100449B80;
  if (!qword_100449B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449B80);
  }

  return result;
}

uint64_t sub_1001409D0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100140DE8();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100140A84(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100140DE8();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100140B38()
{
  result = qword_100449B88;
  if (!qword_100449B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449B88);
  }

  return result;
}

unint64_t sub_100140B90()
{
  result = qword_100449B90;
  if (!qword_100449B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449B90);
  }

  return result;
}

uint64_t sub_100140C28(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001407C4();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100140CE0()
{
  result = qword_100449BA8;
  if (!qword_100449BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449BA8);
  }

  return result;
}

unint64_t sub_100140D38()
{
  result = qword_100449BB0;
  if (!qword_100449BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449BB0);
  }

  return result;
}

unint64_t sub_100140D90()
{
  result = qword_100449BB8;
  if (!qword_100449BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449BB8);
  }

  return result;
}

unint64_t sub_100140DE8()
{
  result = qword_100449BC0;
  if (!qword_100449BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449BC0);
  }

  return result;
}

uint64_t sub_100140E3C()
{
  v0 = qword_100446D18;

  return v0;
}

unint64_t sub_100140E78()
{
  result = qword_100449BC8;
  if (!qword_100449BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449BC8);
  }

  return result;
}

uint64_t sub_100140ECC(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100455AF0, &qword_100352C40);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100455AF8, &qword_100352C48);
  __chkstk_darwin(v5);
  sub_10014097C();
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

unint64_t sub_100141094()
{
  result = qword_100449BD0;
  if (!qword_100449BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449BD0);
  }

  return result;
}

unint64_t sub_1001410EC()
{
  result = qword_100449BD8;
  if (!qword_100449BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449BD8);
  }

  return result;
}

unint64_t sub_100141144()
{
  result = qword_100449BE0;
  if (!qword_100449BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449BE0);
  }

  return result;
}

uint64_t sub_100141198(uint64_t a1)
{
  sub_1002D5E6C();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100141280(uint64_t a1)
{
  v2 = sub_10014097C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001412D0()
{
  result = qword_100449BF8;
  if (!qword_100449BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449BF8);
  }

  return result;
}

uint64_t sub_100141328(uint64_t a1)
{
  v2 = sub_100141144();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100141378()
{
  result = qword_100449C00;
  if (!qword_100449C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449C00);
  }

  return result;
}

uint64_t sub_100141438@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001417BC()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D540);
  sub_10001EDB8(v0, qword_10051D540);
  return sub_1002D88F0();
}

uint64_t sub_100141820()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D558);
  v1 = sub_10001EDB8(v0, qword_10051D558);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001418E0()
{
  result = swift_getKeyPath();
  qword_10051D570 = result;
  return result;
}

uint64_t sub_100141908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100455AC8, &qword_100352C00);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100455AD0, &qword_100352C08);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100141AE8, 0, 0);
}

uint64_t sub_100141AE8()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_100142C60();
  *v2 = v0;
  v2[1] = sub_100141BCC;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6ECC, 0, &type metadata for AccessibilitySmartInvertEnabledEntity, v3);
}

uint64_t sub_100141BCC()
{

  return _swift_task_switch(sub_100141CC8, 0, 0);
}

uint64_t sub_100141CC8()
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
  if (qword_10043A680 != -1)
  {
    swift_once();
  }

  v3 = qword_10051D570;
  *(v0 + 288) = qword_10051D570;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100455AB0, &qword_100455AB8, &qword_100352BE8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_100141E2C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_100141E2C()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_100141F9C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100141F9C()
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
  sub_100141378();
  sub_100142E74();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100142214()
{
  v0 = sub_10000321C(&qword_100455AD8, &qword_100352C10);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A680 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100142E74();
  sub_10002B6E4(&qword_100455AE0, &qword_100455AD8, &qword_100352C10, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_100142388(uint64_t *a1))(void *)
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

void (*sub_1001423FC(uint64_t *a1))(void *)
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

unint64_t sub_100142498()
{
  result = qword_100449C18;
  if (!qword_100449C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449C18);
  }

  return result;
}

unint64_t sub_1001424F0()
{
  result = qword_100449C20;
  if (!qword_100449C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449C20);
  }

  return result;
}

uint64_t sub_1001425EC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100141908(a1, v5, v4);
}

uint64_t sub_100142698@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A96A8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001426E0()
{
  result = qword_100449C28;
  if (!qword_100449C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449C28);
  }

  return result;
}

unint64_t sub_100142738()
{
  result = qword_100449C30;
  if (!qword_100449C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449C30);
  }

  return result;
}

uint64_t sub_1001427AC()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  *v1 = _AXSInvertColorsEnabledGlobal() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100142870()
{
  sub_100003390(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001428D4(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100142964, 0, 0);
}

uint64_t sub_100142964()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_100449C10, qword_100309560);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455AB0, &qword_100455AB8, &qword_100352BE8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD00000000000001DLL;
  v1[1] = 0x800000010035BAD0;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_100142AA8()
{
  result = qword_100449C38;
  if (!qword_100449C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449C38);
  }

  return result;
}

uint64_t sub_100142AFC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001430CC();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100142BB0()
{
  result = qword_100449C40;
  if (!qword_100449C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449C40);
  }

  return result;
}

unint64_t sub_100142C08()
{
  result = qword_100449C48;
  if (!qword_100449C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449C48);
  }

  return result;
}

unint64_t sub_100142C60()
{
  result = qword_100449C50;
  if (!qword_100449C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449C50);
  }

  return result;
}

uint64_t sub_100142CB4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001430CC();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100142D68(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001430CC();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100142E1C()
{
  result = qword_100449C58;
  if (!qword_100449C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449C58);
  }

  return result;
}

unint64_t sub_100142E74()
{
  result = qword_100449C60;
  if (!qword_100449C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449C60);
  }

  return result;
}

uint64_t sub_100142F0C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100142AA8();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100142FC4()
{
  result = qword_100449C78;
  if (!qword_100449C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449C78);
  }

  return result;
}

unint64_t sub_10014301C()
{
  result = qword_100449C80;
  if (!qword_100449C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449C80);
  }

  return result;
}

unint64_t sub_100143074()
{
  result = qword_100449C88;
  if (!qword_100449C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449C88);
  }

  return result;
}

unint64_t sub_1001430CC()
{
  result = qword_100449C90;
  if (!qword_100449C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449C90);
  }

  return result;
}

uint64_t sub_100143120()
{
  v0 = qword_100446D28;

  return v0;
}

unint64_t sub_10014315C()
{
  result = qword_100449C98;
  if (!qword_100449C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449C98);
  }

  return result;
}

uint64_t sub_1001431B0(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100455AA0, &qword_100352BC8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100455AA8, &qword_100352BD0);
  __chkstk_darwin(v5);
  sub_100142C60();
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

unint64_t sub_100143378()
{
  result = qword_100449CA0;
  if (!qword_100449CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449CA0);
  }

  return result;
}

unint64_t sub_1001433D0()
{
  result = qword_100449CA8;
  if (!qword_100449CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449CA8);
  }

  return result;
}

unint64_t sub_100143428()
{
  result = qword_100449CB0;
  if (!qword_100449CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449CB0);
  }

  return result;
}

uint64_t sub_10014347C(uint64_t a1)
{
  sub_1002D5E18();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100143564(uint64_t a1)
{
  v2 = sub_100142C60();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001435B4()
{
  result = qword_100449CC8;
  if (!qword_100449CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449CC8);
  }

  return result;
}

uint64_t sub_10014360C(uint64_t a1)
{
  v2 = sub_100143428();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10014365C()
{
  result = qword_100449CD0;
  if (!qword_100449CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449CD0);
  }

  return result;
}

uint64_t sub_100143720@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100143AA8()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D590);
  sub_10001EDB8(v0, qword_10051D590);
  return sub_1002D88F0();
}

uint64_t sub_100143B0C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D5A8);
  v1 = sub_10001EDB8(v0, qword_10051D5A8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100143BCC()
{
  result = swift_getKeyPath();
  qword_10051D5C0 = result;
  return result;
}

uint64_t sub_100143BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100455A78, &qword_100352B88);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100455A80, &qword_100352B90);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100143DD4, 0, 0);
}

uint64_t sub_100143DD4()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_100144F88();
  *v2 = v0;
  v2[1] = sub_100143EB8;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6ED0, 0, &type metadata for AccessibilityClassicInvertEnabledEntity, v3);
}

uint64_t sub_100143EB8()
{

  return _swift_task_switch(sub_100143FB4, 0, 0);
}

uint64_t sub_100143FB4()
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
  if (qword_10043A6A0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051D5C0;
  *(v0 + 288) = qword_10051D5C0;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100455A60, &qword_100455A68, &qword_100352B70, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_100144118;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_100144118()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_100144288;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100144288()
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
  sub_10014365C();
  sub_10014519C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100144500()
{
  v0 = sub_10000321C(&qword_100455A88, &qword_100352B98);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A6A0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10014519C();
  sub_10002B6E4(&qword_100455A90, &qword_100455A88, &qword_100352B98, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_100144674(uint64_t *a1))(void *)
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

void (*sub_1001446E8(uint64_t *a1))(void *)
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

unint64_t sub_100144784()
{
  result = qword_100449CE8;
  if (!qword_100449CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449CE8);
  }

  return result;
}

unint64_t sub_1001447DC()
{
  result = qword_100449CF0;
  if (!qword_100449CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449CF0);
  }

  return result;
}

uint64_t sub_1001448D8(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100143BF4(a1, v5, v4);
}

uint64_t sub_100144984@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A9B10();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001449CC()
{
  result = qword_100449CF8;
  if (!qword_100449CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449CF8);
  }

  return result;
}

unint64_t sub_100144A24()
{
  result = qword_100449D00;
  if (!qword_100449D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449D00);
  }

  return result;
}

uint64_t sub_100144A98()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 classicInvertColors];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100144B60()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setClassicInvertColors:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100144BF8(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100144C88, 0, 0);
}

uint64_t sub_100144C88()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_100449CE0, qword_100309B98);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455A60, &qword_100455A68, &qword_100352B70, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD00000000000001FLL;
  v1[1] = 0x8000000100360640;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_100144DD0()
{
  result = qword_100449D08;
  if (!qword_100449D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449D08);
  }

  return result;
}

uint64_t sub_100144E24(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001453F4();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100144ED8()
{
  result = qword_100449D10;
  if (!qword_100449D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449D10);
  }

  return result;
}

unint64_t sub_100144F30()
{
  result = qword_100449D18;
  if (!qword_100449D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449D18);
  }

  return result;
}

unint64_t sub_100144F88()
{
  result = qword_100449D20;
  if (!qword_100449D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449D20);
  }

  return result;
}

uint64_t sub_100144FDC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001453F4();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100145090(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001453F4();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100145144()
{
  result = qword_100449D28;
  if (!qword_100449D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449D28);
  }

  return result;
}

unint64_t sub_10014519C()
{
  result = qword_100449D30;
  if (!qword_100449D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449D30);
  }

  return result;
}

uint64_t sub_100145234(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100144DD0();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1001452EC()
{
  result = qword_100449D48;
  if (!qword_100449D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449D48);
  }

  return result;
}

unint64_t sub_100145344()
{
  result = qword_100449D50;
  if (!qword_100449D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449D50);
  }

  return result;
}

unint64_t sub_10014539C()
{
  result = qword_100449D58;
  if (!qword_100449D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449D58);
  }

  return result;
}

unint64_t sub_1001453F4()
{
  result = qword_100449D60;
  if (!qword_100449D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449D60);
  }

  return result;
}

uint64_t sub_100145448()
{
  v0 = qword_100446D38;

  return v0;
}

unint64_t sub_100145484()
{
  result = qword_100449D68;
  if (!qword_100449D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449D68);
  }

  return result;
}

uint64_t sub_1001454D8(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100455A50, &qword_100352B50);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100455A58, &qword_100352B58);
  __chkstk_darwin(v5);
  sub_100144F88();
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

unint64_t sub_1001456A0()
{
  result = qword_100449D70;
  if (!qword_100449D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449D70);
  }

  return result;
}

unint64_t sub_1001456F8()
{
  result = qword_100449D78;
  if (!qword_100449D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449D78);
  }

  return result;
}

unint64_t sub_100145750()
{
  result = qword_100449D80;
  if (!qword_100449D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449D80);
  }

  return result;
}

uint64_t sub_1001457A4(uint64_t a1)
{
  sub_1002D5DC4();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10014588C(uint64_t a1)
{
  v2 = sub_100144F88();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001458DC()
{
  result = qword_100449D98;
  if (!qword_100449D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449D98);
  }

  return result;
}

uint64_t sub_100145934(uint64_t a1)
{
  v2 = sub_100145750();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100145984()
{
  result = qword_100449DA0;
  if (!qword_100449DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449DA0);
  }

  return result;
}

uint64_t sub_100145A48@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100145DC4()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D5E0);
  sub_10001EDB8(v0, qword_10051D5E0);
  return sub_1002D88F0();
}

uint64_t sub_100145E28()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D5F8);
  v1 = sub_10001EDB8(v0, qword_10051D5F8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100145EE8()
{
  result = swift_getKeyPath();
  qword_10051D610 = result;
  return result;
}

uint64_t sub_100145F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100455A28, &qword_100352B10);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100455A30, &qword_100352B18);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001460F0, 0, 0);
}

uint64_t sub_1001460F0()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1001472E8();
  *v2 = v0;
  v2[1] = sub_1001461D4;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6ED4, 0, &type metadata for AccessibilityAutoBrightnessEnabledEntity, v3);
}

uint64_t sub_1001461D4()
{

  return _swift_task_switch(sub_1001462D0, 0, 0);
}

uint64_t sub_1001462D0()
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
  if (qword_10043A6C0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051D610;
  *(v0 + 288) = qword_10051D610;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100455A10, &qword_100455A18, &qword_100352AF8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_100146434;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_100146434()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1001465A4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001465A4()
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
  sub_100145984();
  sub_1001474FC();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10014681C()
{
  v0 = sub_10000321C(&qword_100455A38, &qword_100352B20);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A6C0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001474FC();
  sub_10002B6E4(&qword_100455A40, &qword_100455A38, &qword_100352B20, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_100146990(uint64_t *a1))(void *)
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

void (*sub_100146A04(uint64_t *a1))(void *)
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

unint64_t sub_100146AA0()
{
  result = qword_100449DB8;
  if (!qword_100449DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449DB8);
  }

  return result;
}

unint64_t sub_100146AF8()
{
  result = qword_100449DC0;
  if (!qword_100449DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449DC0);
  }

  return result;
}

uint64_t sub_100146BF4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100145F10(a1, v5, v4);
}

uint64_t sub_100146CA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A9F78();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100146CE8()
{
  result = qword_100449DC8;
  if (!qword_100449DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449DC8);
  }

  return result;
}

unint64_t sub_100146D40()
{
  result = qword_100449DD0;
  if (!qword_100449DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449DD0);
  }

  return result;
}

uint64_t sub_100146DB4()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  *v1 = _AXSAutoBrightnessEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

CFNotificationCenterRef sub_100146E78()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  BKSDisplayBrightnessSetAutoBrightnessEnabled();
  result = CFNotificationCenterGetDarwinNotifyCenter();
  if (kAXSAutoBrightnessChangedNotification)
  {
    v2 = result;
    v3 = kAXSAutoBrightnessChangedNotification;
    CFNotificationCenterPostNotification(v2, v3, 0, 0, 1u);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100146F58(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100146FE8, 0, 0);
}

uint64_t sub_100146FE8()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_100449DB0, qword_10030A1D0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455A10, &qword_100455A18, &qword_100352AF8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000020;
  v1[1] = 0x80000001003615A0;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_100147130()
{
  result = qword_100449DD8;
  if (!qword_100449DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449DD8);
  }

  return result;
}

uint64_t sub_100147184(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100147754();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100147238()
{
  result = qword_100449DE0;
  if (!qword_100449DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449DE0);
  }

  return result;
}

unint64_t sub_100147290()
{
  result = qword_100449DE8;
  if (!qword_100449DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449DE8);
  }

  return result;
}

unint64_t sub_1001472E8()
{
  result = qword_100449DF0;
  if (!qword_100449DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449DF0);
  }

  return result;
}

uint64_t sub_10014733C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100147754();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1001473F0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100147754();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1001474A4()
{
  result = qword_100449DF8;
  if (!qword_100449DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449DF8);
  }

  return result;
}

unint64_t sub_1001474FC()
{
  result = qword_100449E00;
  if (!qword_100449E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449E00);
  }

  return result;
}

uint64_t sub_100147594(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100147130();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10014764C()
{
  result = qword_100449E18;
  if (!qword_100449E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449E18);
  }

  return result;
}

unint64_t sub_1001476A4()
{
  result = qword_100449E20;
  if (!qword_100449E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449E20);
  }

  return result;
}

unint64_t sub_1001476FC()
{
  result = qword_100449E28;
  if (!qword_100449E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449E28);
  }

  return result;
}

unint64_t sub_100147754()
{
  result = qword_100449E30;
  if (!qword_100449E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449E30);
  }

  return result;
}

uint64_t sub_1001477A8()
{
  v0 = qword_100446D48;

  return v0;
}

unint64_t sub_1001477E4()
{
  result = qword_100449E38;
  if (!qword_100449E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449E38);
  }

  return result;
}

uint64_t sub_100147838(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100455A00, &qword_100352AD8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100455A08, &qword_100352AE0);
  __chkstk_darwin(v5);
  sub_1001472E8();
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

unint64_t sub_100147A00()
{
  result = qword_100449E40;
  if (!qword_100449E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449E40);
  }

  return result;
}

unint64_t sub_100147A58()
{
  result = qword_100449E48;
  if (!qword_100449E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449E48);
  }

  return result;
}

unint64_t sub_100147AB0()
{
  result = qword_100449E50;
  if (!qword_100449E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449E50);
  }

  return result;
}

uint64_t sub_100147B04(uint64_t a1)
{
  sub_1002D5D70();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100147BEC(uint64_t a1)
{
  v2 = sub_1001472E8();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100147C3C()
{
  result = qword_100449E68;
  if (!qword_100449E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449E68);
  }

  return result;
}

uint64_t sub_100147C94(uint64_t a1)
{
  v2 = sub_100147AB0();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100147CE4()
{
  result = qword_100449E70;
  if (!qword_100449E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449E70);
  }

  return result;
}

uint64_t sub_100147D7C()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051D618);
  sub_10001EDB8(v5, qword_10051D618);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_100147EEC@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100148268()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D630);
  sub_10001EDB8(v0, qword_10051D630);
  return sub_1002D88F0();
}

uint64_t sub_1001482CC()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D648);
  v1 = sub_10001EDB8(v0, qword_10051D648);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10014838C()
{
  result = swift_getKeyPath();
  qword_10051D660 = result;
  return result;
}

uint64_t sub_1001483B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_1004559D8, &qword_100352A98);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_1004559E0, &qword_100352AA0);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100148594, 0, 0);
}

uint64_t sub_100148594()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1001496E4();
  *v2 = v0;
  v2[1] = sub_100148678;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6ED8, 0, &type metadata for AccessibilityReduceWhitePointEnabledEntity, v3);
}

uint64_t sub_100148678()
{

  return _swift_task_switch(sub_100148774, 0, 0);
}

uint64_t sub_100148774()
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
  if (qword_10043A6E0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051D660;
  *(v0 + 288) = qword_10051D660;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_1004559C0, &qword_1004559C8, &qword_100352A80, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1001488D8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1001488D8()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_100148A48;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100148A48()
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
  sub_100147CE4();
  sub_1001498F8();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100148CC0()
{
  v0 = sub_10000321C(&qword_1004559E8, &qword_100352AA8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A6E0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001498F8();
  sub_10002B6E4(&qword_1004559F0, &qword_1004559E8, &qword_100352AA8, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_100148E34(uint64_t *a1))(void *)
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

void (*sub_100148EA8(uint64_t *a1))(void *)
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

unint64_t sub_100148F44()
{
  result = qword_100449E88;
  if (!qword_100449E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449E88);
  }

  return result;
}

unint64_t sub_100148F9C()
{
  result = qword_100449E90;
  if (!qword_100449E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449E90);
  }

  return result;
}

uint64_t sub_100149098(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001483B4(a1, v5, v4);
}

uint64_t sub_100149144@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002AA3E0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10014918C()
{
  result = qword_100449E98;
  if (!qword_100449E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449E98);
  }

  return result;
}

unint64_t sub_1001491E4()
{
  result = qword_100449EA0;
  if (!qword_100449EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449EA0);
  }

  return result;
}

uint64_t sub_100149258()
{
  v1 = *(v0 + 16);
  *v1 = _AXSReduceWhitePointEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001492EC()
{
  _AXSSetReduceWhitePointEnabled();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100149350(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001493E0, 0, 0);
}

uint64_t sub_1001493E0()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_100449E80, qword_10030A808);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004559C0, &qword_1004559C8, &qword_100352A80, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD00000000000001CLL;
  v1[1] = 0x800000010035C4E0;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_10014952C()
{
  result = qword_100449EA8;
  if (!qword_100449EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449EA8);
  }

  return result;
}

uint64_t sub_100149580(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100149B50();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100149634()
{
  result = qword_100449EB0;
  if (!qword_100449EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449EB0);
  }

  return result;
}

unint64_t sub_10014968C()
{
  result = qword_100449EB8;
  if (!qword_100449EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449EB8);
  }

  return result;
}

unint64_t sub_1001496E4()
{
  result = qword_100449EC0;
  if (!qword_100449EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449EC0);
  }

  return result;
}

uint64_t sub_100149738(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100149B50();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1001497EC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100149B50();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1001498A0()
{
  result = qword_100449EC8;
  if (!qword_100449EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449EC8);
  }

  return result;
}

unint64_t sub_1001498F8()
{
  result = qword_100449ED0;
  if (!qword_100449ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449ED0);
  }

  return result;
}

uint64_t sub_100149990(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10014952C();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100149A48()
{
  result = qword_100449EE8;
  if (!qword_100449EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449EE8);
  }

  return result;
}

unint64_t sub_100149AA0()
{
  result = qword_100449EF0;
  if (!qword_100449EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449EF0);
  }

  return result;
}

unint64_t sub_100149AF8()
{
  result = qword_100449EF8;
  if (!qword_100449EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449EF8);
  }

  return result;
}

unint64_t sub_100149B50()
{
  result = qword_100449F00;
  if (!qword_100449F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449F00);
  }

  return result;
}

uint64_t sub_100149BA4()
{
  v0 = qword_100446D58;

  return v0;
}

unint64_t sub_100149BE0()
{
  result = qword_100449F08;
  if (!qword_100449F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449F08);
  }

  return result;
}

uint64_t sub_100149C34(uint64_t a1)
{
  v1 = sub_10000321C(&qword_1004559B0, &qword_100352A60);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_1004559B8, &qword_100352A68);
  __chkstk_darwin(v5);
  sub_1001496E4();
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

unint64_t sub_100149DFC()
{
  result = qword_100449F10;
  if (!qword_100449F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449F10);
  }

  return result;
}

unint64_t sub_100149E54()
{
  result = qword_100449F18;
  if (!qword_100449F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449F18);
  }

  return result;
}

unint64_t sub_100149EAC()
{
  result = qword_100449F20;
  if (!qword_100449F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449F20);
  }

  return result;
}

uint64_t sub_100149F00(uint64_t a1)
{
  sub_1002D5D1C();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100149FE8(uint64_t a1)
{
  v2 = sub_1001496E4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10014A038()
{
  result = qword_100449F38;
  if (!qword_100449F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449F38);
  }

  return result;
}

uint64_t sub_10014A090(uint64_t a1)
{
  v2 = sub_100149EAC();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10014A0E0()
{
  result = qword_100449F40;
  if (!qword_100449F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449F40);
  }

  return result;
}

uint64_t sub_10014A1A4@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10014A544()
{
  result = swift_getKeyPath();
  qword_10051D6B0 = result;
  return result;
}

uint64_t sub_10014A56C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100455988, &qword_100352A20);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100455990, &qword_100352A28);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10014A74C, 0, 0);
}

uint64_t sub_10014A74C()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_10014B898();
  *v2 = v0;
  v2[1] = sub_10014A830;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6EDC, 0, &type metadata for AccessibilityColorFiltersEnabledEntity, v3);
}

uint64_t sub_10014A830()
{

  return _swift_task_switch(sub_10014A92C, 0, 0);
}

uint64_t sub_10014A92C()
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
  if (qword_10043A700 != -1)
  {
    swift_once();
  }

  v3 = qword_10051D6B0;
  *(v0 + 288) = qword_10051D6B0;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100455970, &qword_100455978, &qword_100352A08, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_10014AA90;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_10014AA90()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_10014AC00;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10014AC00()
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
  sub_10014A0E0();
  sub_10014BAAC();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10014AE78()
{
  v0 = sub_10000321C(&qword_100455998, &qword_100352A30);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A700 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10014BAAC();
  sub_10002B6E4(&qword_1004559A0, &qword_100455998, &qword_100352A30, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_10014AFEC(uint64_t *a1))(void *)
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

void (*sub_10014B060(uint64_t *a1))(void *)
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

unint64_t sub_10014B0FC()
{
  result = qword_100449F58;
  if (!qword_100449F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449F58);
  }

  return result;
}

unint64_t sub_10014B154()
{
  result = qword_100449F60;
  if (!qword_100449F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449F60);
  }

  return result;
}

uint64_t sub_10014B250(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10014A56C(a1, v5, v4);
}

uint64_t sub_10014B2FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002AA848();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10014B344()
{
  result = qword_100449F68;
  if (!qword_100449F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449F68);
  }

  return result;
}

unint64_t sub_10014B39C()
{
  result = qword_100449F70;
  if (!qword_100449F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449F70);
  }

  return result;
}

uint64_t sub_10014B410()
{
  v1 = *(v0 + 16);
  *v1 = _AXSDisplayFilterColorEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10014B4A4()
{
  _AXSDisplayFilterColorSetEnabled();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10014B508(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10014B598, 0, 0);
}

uint64_t sub_10014B598()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_100449F50, qword_10030AE40);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455970, &qword_100455978, &qword_100352A08, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD00000000000003ALL;
  v1[1] = 0x8000000100360570;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_10014B6E0()
{
  result = qword_100449F78;
  if (!qword_100449F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449F78);
  }

  return result;
}

uint64_t sub_10014B734(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10014BD04();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10014B7E8()
{
  result = qword_100449F80;
  if (!qword_100449F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449F80);
  }

  return result;
}

unint64_t sub_10014B840()
{
  result = qword_100449F88;
  if (!qword_100449F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449F88);
  }

  return result;
}

unint64_t sub_10014B898()
{
  result = qword_100449F90;
  if (!qword_100449F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449F90);
  }

  return result;
}

uint64_t sub_10014B8EC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10014BD04();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10014B9A0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10014BD04();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10014BA54()
{
  result = qword_100449F98;
  if (!qword_100449F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449F98);
  }

  return result;
}

unint64_t sub_10014BAAC()
{
  result = qword_100449FA0;
  if (!qword_100449FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449FA0);
  }

  return result;
}

uint64_t sub_10014BB44(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10014B6E0();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10014BBFC()
{
  result = qword_100449FB8;
  if (!qword_100449FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449FB8);
  }

  return result;
}

unint64_t sub_10014BC54()
{
  result = qword_100449FC0;
  if (!qword_100449FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449FC0);
  }

  return result;
}

unint64_t sub_10014BCAC()
{
  result = qword_100449FC8;
  if (!qword_100449FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449FC8);
  }

  return result;
}

unint64_t sub_10014BD04()
{
  result = qword_100449FD0;
  if (!qword_100449FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449FD0);
  }

  return result;
}

uint64_t sub_10014BD58()
{
  v0 = qword_100446D68;

  return v0;
}

unint64_t sub_10014BD94()
{
  result = qword_100449FD8;
  if (!qword_100449FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449FD8);
  }

  return result;
}

uint64_t sub_10014BDE8(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100455960, &qword_1003529E8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100455968, &qword_1003529F0);
  __chkstk_darwin(v5);
  sub_10014B898();
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

unint64_t sub_10014BFB0()
{
  result = qword_100449FE0;
  if (!qword_100449FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449FE0);
  }

  return result;
}

unint64_t sub_10014C008()
{
  result = qword_100449FE8;
  if (!qword_100449FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449FE8);
  }

  return result;
}

unint64_t sub_10014C060()
{
  result = qword_100449FF0;
  if (!qword_100449FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449FF0);
  }

  return result;
}

uint64_t sub_10014C0B4(uint64_t a1)
{
  sub_1002D5CC8();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10014C19C(uint64_t a1)
{
  v2 = sub_10014B898();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10014C1EC()
{
  result = qword_10044A008;
  if (!qword_10044A008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A008);
  }

  return result;
}

uint64_t sub_10014C244(uint64_t a1)
{
  v2 = sub_10014C060();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10014C294()
{
  result = qword_10044A010;
  if (!qword_10044A010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A010);
  }

  return result;
}

uint64_t sub_10014C358@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10014C6E0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

uint64_t sub_10014C74C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v3, a2);
  v4 = sub_10001EDB8(v3, a2);
  sub_1002D8620();
  v5 = sub_1002D8630();
  v6 = *(*(v5 - 8) + 56);

  return v6(v4, 0, 1, v5);
}

uint64_t sub_10014C808()
{
  result = swift_getKeyPath();
  qword_10051D700 = result;
  return result;
}

uint64_t sub_10014C830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100455938, &qword_1003529A8);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100455940, &qword_1003529B0);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10014CA10, 0, 0);
}

uint64_t sub_10014CA10()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_10014DB30();
  *v2 = v0;
  v2[1] = sub_10014CAF4;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6EE0, 0, &type metadata for AccessibilityColorFiltersPickerEntity, v3);
}

uint64_t sub_10014CAF4()
{

  return _swift_task_switch(sub_10014CBF0, 0, 0);
}

uint64_t sub_10014CBF0()
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
  if (qword_10043A720 != -1)
  {
    swift_once();
  }

  v3 = qword_10051D700;
  v0[36] = qword_10051D700;

  v4 = swift_task_alloc();
  v0[37] = v4;
  v5 = sub_10002B6E4(&qword_100455918, &qword_100455920, &qword_100352988, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_10014CD4C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 39, v3, &type metadata for ColorFilterAppEnum, v5);
}

uint64_t sub_10014CD4C()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_10014CEBC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10014CEBC()
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
  sub_10014C294();
  sub_10014DD44();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}