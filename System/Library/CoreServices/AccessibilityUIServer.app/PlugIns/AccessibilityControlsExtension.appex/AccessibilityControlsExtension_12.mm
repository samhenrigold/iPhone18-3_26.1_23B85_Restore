unint64_t sub_100190740()
{
  result = qword_10044B930;
  if (!qword_10044B930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B930);
  }

  return result;
}

uint64_t sub_1001907D8()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051E068);
  sub_10001EDB8(v5, qword_10051E068);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_100190948@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100190CC4()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051E080);
  sub_10001EDB8(v0, qword_10051E080);
  return sub_1002D88F0();
}

uint64_t sub_100190D28()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051E098);
  v1 = sub_10001EDB8(v0, qword_10051E098);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100190DE8()
{
  result = swift_getKeyPath();
  qword_10051E0B0 = result;
  return result;
}

uint64_t sub_100190E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100454F80, &qword_100351AF0);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100454F88, &qword_100351AF8);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100190FF0, 0, 0);
}

uint64_t sub_100190FF0()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_100192140();
  *v2 = v0;
  v2[1] = sub_1001910D4;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6F5C, 0, &type metadata for AccessibilityLiveCaptionsEnabledEntity, v3);
}

uint64_t sub_1001910D4()
{

  return _swift_task_switch(sub_1001911D0, 0, 0);
}

uint64_t sub_1001911D0()
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
  if (qword_10043AB00 != -1)
  {
    swift_once();
  }

  v3 = qword_10051E0B0;
  *(v0 + 288) = qword_10051E0B0;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100454F68, &qword_100454F70, &qword_100351AD8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_100191334;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_100191334()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1001914A4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001914A4()
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
  sub_100190740();
  sub_100192354();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10019171C()
{
  v0 = sub_10000321C(&qword_100454F90, &qword_100351B00);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043AB00 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100192354();
  sub_10002B6E4(&qword_100454F98, &qword_100454F90, &qword_100351B00, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_100191890(uint64_t *a1))(void *)
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

void (*sub_100191904(uint64_t *a1))(void *)
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

unint64_t sub_1001919A0()
{
  result = qword_10044B948;
  if (!qword_10044B948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B948);
  }

  return result;
}

unint64_t sub_1001919F8()
{
  result = qword_10044B950;
  if (!qword_10044B950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B950);
  }

  return result;
}

uint64_t sub_100191AF4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100190E10(a1, v5, v4);
}

uint64_t sub_100191BA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B34A8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100191BE8()
{
  result = qword_10044B958;
  if (!qword_10044B958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B958);
  }

  return result;
}

unint64_t sub_100191C40()
{
  result = qword_10044B960;
  if (!qword_10044B960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B960);
  }

  return result;
}

uint64_t sub_100191CB4()
{
  v1 = *(v0 + 16);
  *v1 = _AXSLiveTranscriptionEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100191D48()
{
  _AXSLiveTranscriptionSetEnabled();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100191DAC(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100191E3C, 0, 0);
}

uint64_t sub_100191E3C()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044B940, qword_100317540);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454F68, &qword_100454F70, &qword_100351AD8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD00000000000002BLL;
  v1[1] = 0x800000010035DC70;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_100191F88()
{
  result = qword_10044B968;
  if (!qword_10044B968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B968);
  }

  return result;
}

uint64_t sub_100191FDC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001925AC();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100192090()
{
  result = qword_10044B970;
  if (!qword_10044B970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B970);
  }

  return result;
}

unint64_t sub_1001920E8()
{
  result = qword_10044B978;
  if (!qword_10044B978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B978);
  }

  return result;
}

unint64_t sub_100192140()
{
  result = qword_10044B980;
  if (!qword_10044B980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B980);
  }

  return result;
}

uint64_t sub_100192194(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001925AC();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100192248(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001925AC();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1001922FC()
{
  result = qword_10044B988;
  if (!qword_10044B988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B988);
  }

  return result;
}

unint64_t sub_100192354()
{
  result = qword_10044B990;
  if (!qword_10044B990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B990);
  }

  return result;
}

uint64_t sub_1001923EC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100191F88();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1001924A4()
{
  result = qword_10044B9A8;
  if (!qword_10044B9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B9A8);
  }

  return result;
}

unint64_t sub_1001924FC()
{
  result = qword_10044B9B0;
  if (!qword_10044B9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B9B0);
  }

  return result;
}

unint64_t sub_100192554()
{
  result = qword_10044B9B8;
  if (!qword_10044B9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B9B8);
  }

  return result;
}

unint64_t sub_1001925AC()
{
  result = qword_10044B9C0;
  if (!qword_10044B9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B9C0);
  }

  return result;
}

uint64_t sub_100192600()
{
  v0 = qword_100446F68;

  return v0;
}

unint64_t sub_10019263C()
{
  result = qword_10044B9C8;
  if (!qword_10044B9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B9C8);
  }

  return result;
}

uint64_t sub_100192690(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100454F58, &qword_100351AB8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100454F60, &qword_100351AC0);
  __chkstk_darwin(v5);
  sub_100192140();
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

unint64_t sub_100192858()
{
  result = qword_10044B9D0;
  if (!qword_10044B9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B9D0);
  }

  return result;
}

unint64_t sub_1001928B0()
{
  result = qword_10044B9D8;
  if (!qword_10044B9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B9D8);
  }

  return result;
}

unint64_t sub_100192908()
{
  result = qword_10044B9E0;
  if (!qword_10044B9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B9E0);
  }

  return result;
}

uint64_t sub_10019295C(uint64_t a1)
{
  sub_1002D5000();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100192A44(uint64_t a1)
{
  v2 = sub_100192140();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100192A94()
{
  result = qword_10044B9F8;
  if (!qword_10044B9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B9F8);
  }

  return result;
}

uint64_t sub_100192AEC(uint64_t a1)
{
  v2 = sub_100192908();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100192B3C()
{
  result = qword_10044BA00;
  if (!qword_10044BA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BA00);
  }

  return result;
}

uint64_t sub_100192BD4()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051E0B8);
  sub_10001EDB8(v5, qword_10051E0B8);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_100192D44@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001930B8()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051E0D0);
  sub_10001EDB8(v0, qword_10051E0D0);
  return sub_1002D88F0();
}

uint64_t sub_10019311C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051E0E8);
  v1 = sub_10001EDB8(v0, qword_10051E0E8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001931DC()
{
  result = swift_getKeyPath();
  qword_10051E100 = result;
  return result;
}

uint64_t sub_100193204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100454F30, &qword_100351A78);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100454F38, &qword_100351A80);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001933E4, 0, 0);
}

uint64_t sub_1001933E4()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_100194534();
  *v2 = v0;
  v2[1] = sub_1001934C8;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6F60, 0, &type metadata for AccessibilityLiveCaptionsInFaceTimeEnabledEntity, v3);
}

uint64_t sub_1001934C8()
{

  return _swift_task_switch(sub_1001935C4, 0, 0);
}

uint64_t sub_1001935C4()
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
  if (qword_10043AB20 != -1)
  {
    swift_once();
  }

  v3 = qword_10051E100;
  *(v0 + 288) = qword_10051E100;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100454F18, &qword_100454F20, &qword_100351A60, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_100193728;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_100193728()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_100193898;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100193898()
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
  sub_100192B3C();
  sub_100194748();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100193B10()
{
  v0 = sub_10000321C(&qword_100454F40, &qword_100351A88);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043AB20 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100194748();
  sub_10002B6E4(&qword_100454F48, &qword_100454F40, &qword_100351A88, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_100193C84(uint64_t *a1))(void *)
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

void (*sub_100193CF8(uint64_t *a1))(void *)
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

unint64_t sub_100193D94()
{
  result = qword_10044BA18;
  if (!qword_10044BA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BA18);
  }

  return result;
}

unint64_t sub_100193DEC()
{
  result = qword_10044BA20;
  if (!qword_10044BA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BA20);
  }

  return result;
}

uint64_t sub_100193EE8(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100193204(a1, v5, v4);
}

uint64_t sub_100193F94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B3910();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100193FDC()
{
  result = qword_10044BA28;
  if (!qword_10044BA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BA28);
  }

  return result;
}

unint64_t sub_100194034()
{
  result = qword_10044BA30;
  if (!qword_10044BA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BA30);
  }

  return result;
}

uint64_t sub_1001940A8()
{
  v1 = *(v0 + 16);
  *v1 = _AXSFaceTimeCaptionsEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10019413C()
{
  _AXSSetFaceTimeCaptionsEnabled();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001941A0(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100194230, 0, 0);
}

uint64_t sub_100194230()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044BA10, qword_100317B78);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454F18, &qword_100454F20, &qword_100351A60, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000025;
  v1[1] = 0x800000010035F420;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_10019437C()
{
  result = qword_10044BA38;
  if (!qword_10044BA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BA38);
  }

  return result;
}

uint64_t sub_1001943D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001949A0();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100194484()
{
  result = qword_10044BA40;
  if (!qword_10044BA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BA40);
  }

  return result;
}

unint64_t sub_1001944DC()
{
  result = qword_10044BA48;
  if (!qword_10044BA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BA48);
  }

  return result;
}

unint64_t sub_100194534()
{
  result = qword_10044BA50;
  if (!qword_10044BA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BA50);
  }

  return result;
}

uint64_t sub_100194588(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001949A0();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10019463C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001949A0();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1001946F0()
{
  result = qword_10044BA58;
  if (!qword_10044BA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BA58);
  }

  return result;
}

unint64_t sub_100194748()
{
  result = qword_10044BA60;
  if (!qword_10044BA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BA60);
  }

  return result;
}

uint64_t sub_1001947E0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10019437C();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100194898()
{
  result = qword_10044BA78;
  if (!qword_10044BA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BA78);
  }

  return result;
}

unint64_t sub_1001948F0()
{
  result = qword_10044BA80;
  if (!qword_10044BA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BA80);
  }

  return result;
}

unint64_t sub_100194948()
{
  result = qword_10044BA88;
  if (!qword_10044BA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BA88);
  }

  return result;
}

unint64_t sub_1001949A0()
{
  result = qword_10044BA90;
  if (!qword_10044BA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BA90);
  }

  return result;
}

uint64_t sub_1001949F4()
{
  v0 = qword_100446F78;

  return v0;
}

unint64_t sub_100194A30()
{
  result = qword_10044BA98;
  if (!qword_10044BA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BA98);
  }

  return result;
}

uint64_t sub_100194A84(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100454F08, &qword_100351A40);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100454F10, &qword_100351A48);
  __chkstk_darwin(v5);
  sub_100194534();
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

unint64_t sub_100194C4C()
{
  result = qword_10044BAA0;
  if (!qword_10044BAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BAA0);
  }

  return result;
}

unint64_t sub_100194CA4()
{
  result = qword_10044BAA8;
  if (!qword_10044BAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BAA8);
  }

  return result;
}

unint64_t sub_100194CFC()
{
  result = qword_10044BAB0;
  if (!qword_10044BAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BAB0);
  }

  return result;
}

uint64_t sub_100194D50(uint64_t a1)
{
  sub_1002D4FAC();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100194E38(uint64_t a1)
{
  v2 = sub_100194534();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100194E88()
{
  result = qword_10044BAC8;
  if (!qword_10044BAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BAC8);
  }

  return result;
}

uint64_t sub_100194EE0(uint64_t a1)
{
  v2 = sub_100194CFC();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100194F30()
{
  result = qword_10044BAD0;
  if (!qword_10044BAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BAD0);
  }

  return result;
}

uint64_t sub_100194FF0@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100195374()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051E120);
  sub_10001EDB8(v0, qword_10051E120);
  return sub_1002D88F0();
}

uint64_t sub_1001953D8()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051E138);
  v1 = sub_10001EDB8(v0, qword_10051E138);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100195498()
{
  result = swift_getKeyPath();
  qword_10051E150 = result;
  return result;
}

uint64_t sub_1001954C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100454EE0, &qword_100351A00);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100454EE8, &qword_100351A08);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001956A0, 0, 0);
}

uint64_t sub_1001956A0()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_100196898();
  *v2 = v0;
  v2[1] = sub_100195784;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6F64, 0, &type metadata for AccessibilityLiveSpeechEnabledEntity, v3);
}

uint64_t sub_100195784()
{

  return _swift_task_switch(sub_100195880, 0, 0);
}

uint64_t sub_100195880()
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
  if (qword_10043AB40 != -1)
  {
    swift_once();
  }

  v3 = qword_10051E150;
  *(v0 + 288) = qword_10051E150;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100454EC8, &qword_100454ED0, &qword_1003519E8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1001959E4;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1001959E4()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_100195B54;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100195B54()
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
  sub_100194F30();
  sub_100196AAC();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100195DCC()
{
  v0 = sub_10000321C(&qword_100454EF0, &qword_100351A10);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043AB40 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100196AAC();
  sub_10002B6E4(&qword_100454EF8, &qword_100454EF0, &qword_100351A10, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_100195F40(uint64_t *a1))(void *)
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

void (*sub_100195FB4(uint64_t *a1))(void *)
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

unint64_t sub_100196050()
{
  result = qword_10044BAE8;
  if (!qword_10044BAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BAE8);
  }

  return result;
}

unint64_t sub_1001960A8()
{
  result = qword_10044BAF0;
  if (!qword_10044BAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BAF0);
  }

  return result;
}

uint64_t sub_1001961A4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001954C0(a1, v5, v4);
}

uint64_t sub_100196250@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B3D78();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100196298()
{
  result = qword_10044BAF8;
  if (!qword_10044BAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BAF8);
  }

  return result;
}

unint64_t sub_1001962F0()
{
  result = qword_10044BB00;
  if (!qword_10044BB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BB00);
  }

  return result;
}

uint64_t sub_100196364()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = _AXSTripleClickCopyOptions();
  v3 = _AXSTripleClickContainsOption();

  *v1 = v3 != 0;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100196444()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = _AXSTripleClickCopyOptions();
  v3 = _AXSTripleClickContainsOption();
  if (v1 == 1)
  {
    if (!v3)
    {
      _AXSTripleClickAddOption();
    }
  }

  else if (v3)
  {
    _AXSTripleClickRemoveOption();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10019650C(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10019659C, 0, 0);
}

uint64_t sub_10019659C()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044BAE0, qword_1003181B0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454EC8, &qword_100454ED0, &qword_1003519E8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000011;
  v1[1] = 0x800000010035DDB0;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1001966E0()
{
  result = qword_10044BB08;
  if (!qword_10044BB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BB08);
  }

  return result;
}

uint64_t sub_100196734(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100196D04();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1001967E8()
{
  result = qword_10044BB10;
  if (!qword_10044BB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BB10);
  }

  return result;
}

unint64_t sub_100196840()
{
  result = qword_10044BB18;
  if (!qword_10044BB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BB18);
  }

  return result;
}

unint64_t sub_100196898()
{
  result = qword_10044BB20;
  if (!qword_10044BB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BB20);
  }

  return result;
}

uint64_t sub_1001968EC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100196D04();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1001969A0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100196D04();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100196A54()
{
  result = qword_10044BB28;
  if (!qword_10044BB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BB28);
  }

  return result;
}

unint64_t sub_100196AAC()
{
  result = qword_10044BB30;
  if (!qword_10044BB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BB30);
  }

  return result;
}

uint64_t sub_100196B44(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001966E0();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100196BFC()
{
  result = qword_10044BB48;
  if (!qword_10044BB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BB48);
  }

  return result;
}

unint64_t sub_100196C54()
{
  result = qword_10044BB50;
  if (!qword_10044BB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BB50);
  }

  return result;
}

unint64_t sub_100196CAC()
{
  result = qword_10044BB58;
  if (!qword_10044BB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BB58);
  }

  return result;
}

unint64_t sub_100196D04()
{
  result = qword_10044BB60;
  if (!qword_10044BB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BB60);
  }

  return result;
}

uint64_t sub_100196D58()
{
  v0 = qword_100446F88;

  return v0;
}

unint64_t sub_100196D94()
{
  result = qword_10044BB68;
  if (!qword_10044BB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BB68);
  }

  return result;
}

uint64_t sub_100196DE8(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100454EB8, &qword_1003519C8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100454EC0, &qword_1003519D0);
  __chkstk_darwin(v5);
  sub_100196898();
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

unint64_t sub_100196FB0()
{
  result = qword_10044BB70;
  if (!qword_10044BB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BB70);
  }

  return result;
}

unint64_t sub_100197008()
{
  result = qword_10044BB78;
  if (!qword_10044BB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BB78);
  }

  return result;
}

unint64_t sub_100197060()
{
  result = qword_10044BB80;
  if (!qword_10044BB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BB80);
  }

  return result;
}

uint64_t sub_1001970B4(uint64_t a1)
{
  sub_1002D4F58();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10019719C(uint64_t a1)
{
  v2 = sub_100196898();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001971EC()
{
  result = qword_10044BB98;
  if (!qword_10044BB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BB98);
  }

  return result;
}

uint64_t sub_100197244(uint64_t a1)
{
  v2 = sub_100197060();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100197294()
{
  result = qword_10044BBA0;
  if (!qword_10044BBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BBA0);
  }

  return result;
}

uint64_t sub_100197354@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001976D8()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051E170);
  sub_10001EDB8(v0, qword_10051E170);
  return sub_1002D88F0();
}

uint64_t sub_10019773C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051E188);
  v1 = sub_10001EDB8(v0, qword_10051E188);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001977FC()
{
  result = swift_getKeyPath();
  qword_10051E1A0 = result;
  return result;
}

uint64_t sub_100197824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100454E90, &qword_100351988);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100454E98, &qword_100351990);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100197A04, 0, 0);
}

uint64_t sub_100197A04()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_100198BC0();
  *v2 = v0;
  v2[1] = sub_100197AE8;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6F68, 0, &type metadata for AccessibilityMotionCuesEnabledEntity, v3);
}

uint64_t sub_100197AE8()
{

  return _swift_task_switch(sub_100197BE4, 0, 0);
}

uint64_t sub_100197BE4()
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
  if (qword_10043AB60 != -1)
  {
    swift_once();
  }

  v3 = qword_10051E1A0;
  *(v0 + 288) = qword_10051E1A0;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100454E78, &qword_100454E80, &qword_100351970, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_100197D48;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_100197D48()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_100197EB8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100197EB8()
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
  sub_100197294();
  sub_100198DD4();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100198130()
{
  v0 = sub_10000321C(&qword_100454EA0, &qword_100351998);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043AB60 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100198DD4();
  sub_10002B6E4(&qword_100454EA8, &qword_100454EA0, &qword_100351998, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1001982A4(uint64_t *a1))(void *)
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

void (*sub_100198318(uint64_t *a1))(void *)
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

unint64_t sub_1001983B4()
{
  result = qword_10044BBB8;
  if (!qword_10044BBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BBB8);
  }

  return result;
}

unint64_t sub_10019840C()
{
  result = qword_10044BBC0;
  if (!qword_10044BBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BBC0);
  }

  return result;
}

uint64_t sub_100198508(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100197824(a1, v5, v4);
}

uint64_t sub_1001985B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B41E0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001985FC()
{
  result = qword_10044BBC8;
  if (!qword_10044BBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BBC8);
  }

  return result;
}

unint64_t sub_100198654()
{
  result = qword_10044BBD0;
  if (!qword_10044BBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BBD0);
  }

  return result;
}

uint64_t sub_1001986C8()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  *v1 = _AXSMotionCuesEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10019878C()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  _AXSSetMotionCuesEnabled();
  if (v1 == 1)
  {
    AXDeviceIsPad();
    _AXSSetMotionCuesMode();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100198834(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001988C4, 0, 0);
}

uint64_t sub_1001988C4()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044BBB0, qword_1003187E8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454E78, &qword_100454E80, &qword_100351970, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000017;
  v1[1] = 0x800000010037ADB0;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_100198A08()
{
  result = qword_10044BBD8;
  if (!qword_10044BBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BBD8);
  }

  return result;
}

uint64_t sub_100198A5C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10019902C();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100198B10()
{
  result = qword_10044BBE0;
  if (!qword_10044BBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BBE0);
  }

  return result;
}

unint64_t sub_100198B68()
{
  result = qword_10044BBE8;
  if (!qword_10044BBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BBE8);
  }

  return result;
}

unint64_t sub_100198BC0()
{
  result = qword_10044BBF0;
  if (!qword_10044BBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BBF0);
  }

  return result;
}

uint64_t sub_100198C14(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10019902C();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100198CC8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10019902C();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100198D7C()
{
  result = qword_10044BBF8;
  if (!qword_10044BBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BBF8);
  }

  return result;
}

unint64_t sub_100198DD4()
{
  result = qword_10044BC00;
  if (!qword_10044BC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BC00);
  }

  return result;
}

uint64_t sub_100198E6C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100198A08();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100198F24()
{
  result = qword_10044BC18;
  if (!qword_10044BC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BC18);
  }

  return result;
}

unint64_t sub_100198F7C()
{
  result = qword_10044BC20;
  if (!qword_10044BC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BC20);
  }

  return result;
}

unint64_t sub_100198FD4()
{
  result = qword_10044BC28;
  if (!qword_10044BC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BC28);
  }

  return result;
}

unint64_t sub_10019902C()
{
  result = qword_10044BC30;
  if (!qword_10044BC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BC30);
  }

  return result;
}

uint64_t sub_100199080()
{
  v0 = qword_100446F98;

  return v0;
}

unint64_t sub_1001990BC()
{
  result = qword_10044BC38;
  if (!qword_10044BC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BC38);
  }

  return result;
}

uint64_t sub_100199110(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100454E68, &qword_100351950);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100454E70, &qword_100351958);
  __chkstk_darwin(v5);
  sub_100198BC0();
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

unint64_t sub_1001992D8()
{
  result = qword_10044BC40;
  if (!qword_10044BC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BC40);
  }

  return result;
}

unint64_t sub_100199330()
{
  result = qword_10044BC48;
  if (!qword_10044BC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BC48);
  }

  return result;
}

unint64_t sub_100199388()
{
  result = qword_10044BC50;
  if (!qword_10044BC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BC50);
  }

  return result;
}

uint64_t sub_1001993DC(uint64_t a1)
{
  sub_1002D4F04();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1001994C4(uint64_t a1)
{
  v2 = sub_100198BC0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100199514()
{
  result = qword_10044BC68;
  if (!qword_10044BC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BC68);
  }

  return result;
}

uint64_t sub_10019956C(uint64_t a1)
{
  v2 = sub_100199388();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001995BC()
{
  result = qword_10044BC70;
  if (!qword_10044BC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BC70);
  }

  return result;
}

uint64_t sub_100199680@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100199A08()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051E1C0);
  sub_10001EDB8(v0, qword_10051E1C0);
  return sub_1002D88F0();
}

uint64_t sub_100199A6C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051E1D8);
  v1 = sub_10001EDB8(v0, qword_10051E1D8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100199B2C()
{
  result = swift_getKeyPath();
  qword_10051E1F0 = result;
  return result;
}

uint64_t sub_100199B54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100454E40, &qword_100351910);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100454E48, &qword_100351918);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100199D34, 0, 0);
}

uint64_t sub_100199D34()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_10019AE80();
  *v2 = v0;
  v2[1] = sub_100199E18;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6F6C, 0, &type metadata for AccessibilityReduceMotionEnabledEntity, v3);
}

uint64_t sub_100199E18()
{

  return _swift_task_switch(sub_100199F14, 0, 0);
}

uint64_t sub_100199F14()
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
  if (qword_10043AB80 != -1)
  {
    swift_once();
  }

  v3 = qword_10051E1F0;
  *(v0 + 288) = qword_10051E1F0;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100454E28, &qword_100454E30, &qword_1003518F8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_10019A078;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_10019A078()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_10019A1E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10019A1E8()
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
  sub_1001995BC();
  sub_10019B094();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10019A460()
{
  v0 = sub_10000321C(&qword_100454E50, &qword_100351920);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043AB80 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10019B094();
  sub_10002B6E4(&qword_100454E58, &qword_100454E50, &qword_100351920, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_10019A5D4(uint64_t *a1))(void *)
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

void (*sub_10019A648(uint64_t *a1))(void *)
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

unint64_t sub_10019A6E4()
{
  result = qword_10044BC88;
  if (!qword_10044BC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BC88);
  }

  return result;
}

unint64_t sub_10019A73C()
{
  result = qword_10044BC90;
  if (!qword_10044BC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BC90);
  }

  return result;
}

uint64_t sub_10019A838(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100199B54(a1, v5, v4);
}

uint64_t sub_10019A8E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B4648();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10019A92C()
{
  result = qword_10044BC98;
  if (!qword_10044BC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BC98);
  }

  return result;
}

unint64_t sub_10019A984()
{
  result = qword_10044BCA0;
  if (!qword_10044BCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BCA0);
  }

  return result;
}

uint64_t sub_10019A9F8()
{
  v1 = *(v0 + 16);
  *v1 = _AXSReduceMotionEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10019AA8C()
{
  _AXSSetReduceMotionEnabled();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10019AAF0(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10019AB80, 0, 0);
}

uint64_t sub_10019AB80()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044BC80, qword_100318E20);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454E28, &qword_100454E30, &qword_1003518F8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD00000000000001ALL;
  v1[1] = 0x800000010035C530;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_10019ACC8()
{
  result = qword_10044BCA8;
  if (!qword_10044BCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BCA8);
  }

  return result;
}

uint64_t sub_10019AD1C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10019B2EC();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10019ADD0()
{
  result = qword_10044BCB0;
  if (!qword_10044BCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BCB0);
  }

  return result;
}

unint64_t sub_10019AE28()
{
  result = qword_10044BCB8;
  if (!qword_10044BCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BCB8);
  }

  return result;
}

unint64_t sub_10019AE80()
{
  result = qword_10044BCC0;
  if (!qword_10044BCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BCC0);
  }

  return result;
}

uint64_t sub_10019AED4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10019B2EC();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10019AF88(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10019B2EC();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10019B03C()
{
  result = qword_10044BCC8;
  if (!qword_10044BCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BCC8);
  }

  return result;
}

unint64_t sub_10019B094()
{
  result = qword_10044BCD0;
  if (!qword_10044BCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BCD0);
  }

  return result;
}

uint64_t sub_10019B12C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10019ACC8();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10019B1E4()
{
  result = qword_10044BCE8;
  if (!qword_10044BCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BCE8);
  }

  return result;
}

unint64_t sub_10019B23C()
{
  result = qword_10044BCF0;
  if (!qword_10044BCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BCF0);
  }

  return result;
}

unint64_t sub_10019B294()
{
  result = qword_10044BCF8;
  if (!qword_10044BCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BCF8);
  }

  return result;
}

unint64_t sub_10019B2EC()
{
  result = qword_10044BD00;
  if (!qword_10044BD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BD00);
  }

  return result;
}

uint64_t sub_10019B340()
{
  v0 = qword_100446FA8;

  return v0;
}

unint64_t sub_10019B37C()
{
  result = qword_10044BD08;
  if (!qword_10044BD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BD08);
  }

  return result;
}

uint64_t sub_10019B3D0(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100454E18, &qword_1003518D8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100454E20, &qword_1003518E0);
  __chkstk_darwin(v5);
  sub_10019AE80();
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

unint64_t sub_10019B598()
{
  result = qword_10044BD10;
  if (!qword_10044BD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BD10);
  }

  return result;
}

unint64_t sub_10019B5F0()
{
  result = qword_10044BD18;
  if (!qword_10044BD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BD18);
  }

  return result;
}

unint64_t sub_10019B648()
{
  result = qword_10044BD20;
  if (!qword_10044BD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BD20);
  }

  return result;
}

uint64_t sub_10019B69C(uint64_t a1)
{
  sub_1002D4EB0();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10019B784(uint64_t a1)
{
  v2 = sub_10019AE80();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10019B7D4()
{
  result = qword_10044BD38;
  if (!qword_10044BD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BD38);
  }

  return result;
}

uint64_t sub_10019B82C(uint64_t a1)
{
  v2 = sub_10019B648();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10019B87C()
{
  result = qword_10044BD40;
  if (!qword_10044BD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BD40);
  }

  return result;
}

uint64_t sub_10019B914()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051E1F8);
  sub_10001EDB8(v5, qword_10051E1F8);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_10019BA84()
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

uint64_t sub_10019BDF8()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051E210);
  sub_10001EDB8(v0, qword_10051E210);
  return sub_1002D88F0();
}

uint64_t sub_10019BE5C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051E228);
  v1 = sub_10001EDB8(v0, qword_10051E228);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10019BF1C()
{
  result = swift_getKeyPath();
  qword_10051E240 = result;
  return result;
}

uint64_t sub_10019BF44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100454DF0, &qword_100351898);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100454DF8, &qword_1003518A0);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10019C124, 0, 0);
}

uint64_t sub_10019C124()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_10019D274();
  *v2 = v0;
  v2[1] = sub_10019C208;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6F70, 0, &type metadata for AccessibilityReduceMotionAutoPlayMessageEffectsEnabledEntity, v3);
}

uint64_t sub_10019C208()
{

  return _swift_task_switch(sub_10019C304, 0, 0);
}

uint64_t sub_10019C304()
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
  if (qword_10043ABA0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051E240;
  *(v0 + 288) = qword_10051E240;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100454DD8, &qword_100454DE0, &qword_100351880, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_10019C468;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_10019C468()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_10019C5D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10019C5D8()
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
  sub_10019B87C();
  sub_10019D488();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10019C850()
{
  v0 = sub_10000321C(&qword_100454E00, &qword_1003518A8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043ABA0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10019D488();
  sub_10002B6E4(&qword_100454E08, &qword_100454E00, &qword_1003518A8, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_10019C9C4(uint64_t *a1))(void *)
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

void (*sub_10019CA38(uint64_t *a1))(void *)
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

unint64_t sub_10019CAD4()
{
  result = qword_10044BD58;
  if (!qword_10044BD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BD58);
  }

  return result;
}

unint64_t sub_10019CB2C()
{
  result = qword_10044BD60;
  if (!qword_10044BD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BD60);
  }

  return result;
}

uint64_t sub_10019CC28(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10019BF44(a1, v5, v4);
}

uint64_t sub_10019CCD4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B4AB0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10019CD1C()
{
  result = qword_10044BD68;
  if (!qword_10044BD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BD68);
  }

  return result;
}

unint64_t sub_10019CD74()
{
  result = qword_10044BD70;
  if (!qword_10044BD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BD70);
  }

  return result;
}

uint64_t sub_10019CDE8()
{
  v1 = *(v0 + 16);
  *v1 = _AXSReduceMotionAutoplayMessagesEffectsEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10019CE7C()
{
  _AXSSetReduceMotionAutoplayMessagesEffectsEnabled();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10019CEE0(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10019CF70, 0, 0);
}

uint64_t sub_10019CF70()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044BD50, qword_100319458);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454DD8, &qword_100454DE0, &qword_100351880, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000034;
  v1[1] = 0x800000010037AB60;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_10019D0BC()
{
  result = qword_10044BD78;
  if (!qword_10044BD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BD78);
  }

  return result;
}

uint64_t sub_10019D110(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10019D6E0();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10019D1C4()
{
  result = qword_10044BD80;
  if (!qword_10044BD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BD80);
  }

  return result;
}

unint64_t sub_10019D21C()
{
  result = qword_10044BD88;
  if (!qword_10044BD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BD88);
  }

  return result;
}

unint64_t sub_10019D274()
{
  result = qword_10044BD90;
  if (!qword_10044BD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BD90);
  }

  return result;
}

uint64_t sub_10019D2C8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10019D6E0();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10019D37C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10019D6E0();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10019D430()
{
  result = qword_10044BD98;
  if (!qword_10044BD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BD98);
  }

  return result;
}

unint64_t sub_10019D488()
{
  result = qword_10044BDA0;
  if (!qword_10044BDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BDA0);
  }

  return result;
}

uint64_t sub_10019D520(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10019D0BC();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10019D5D8()
{
  result = qword_10044BDB8;
  if (!qword_10044BDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BDB8);
  }

  return result;
}

unint64_t sub_10019D630()
{
  result = qword_10044BDC0;
  if (!qword_10044BDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BDC0);
  }

  return result;
}

unint64_t sub_10019D688()
{
  result = qword_10044BDC8;
  if (!qword_10044BDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BDC8);
  }

  return result;
}

unint64_t sub_10019D6E0()
{
  result = qword_10044BDD0;
  if (!qword_10044BDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BDD0);
  }

  return result;
}

uint64_t sub_10019D734()
{
  v0 = qword_100446FB8;

  return v0;
}

unint64_t sub_10019D770()
{
  result = qword_10044BDD8;
  if (!qword_10044BDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BDD8);
  }

  return result;
}

uint64_t sub_10019D7C4(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100454DC8, &qword_100351860);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100454DD0, &qword_100351868);
  __chkstk_darwin(v5);
  sub_10019D274();
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

unint64_t sub_10019D98C()
{
  result = qword_10044BDE0;
  if (!qword_10044BDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BDE0);
  }

  return result;
}

unint64_t sub_10019D9E4()
{
  result = qword_10044BDE8;
  if (!qword_10044BDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BDE8);
  }

  return result;
}

unint64_t sub_10019DA3C()
{
  result = qword_10044BDF0;
  if (!qword_10044BDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BDF0);
  }

  return result;
}

uint64_t sub_10019DA90(uint64_t a1)
{
  sub_1002D4E5C();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10019DB78(uint64_t a1)
{
  v2 = sub_10019D274();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10019DBC8()
{
  result = qword_10044BE08;
  if (!qword_10044BE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BE08);
  }

  return result;
}

uint64_t sub_10019DC20(uint64_t a1)
{
  v2 = sub_10019DA3C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10019DC70()
{
  result = qword_10044BE10;
  if (!qword_10044BE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BE10);
  }

  return result;
}

uint64_t sub_10019DD08()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051E248);
  sub_10001EDB8(v5, qword_10051E248);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_10019DE78()
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

uint64_t sub_10019E1EC()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051E260);
  sub_10001EDB8(v0, qword_10051E260);
  return sub_1002D88F0();
}

uint64_t sub_10019E250()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051E278);
  v1 = sub_10001EDB8(v0, qword_10051E278);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10019E310()
{
  result = swift_getKeyPath();
  qword_10051E290 = result;
  return result;
}

uint64_t sub_10019E338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100454DA0, &qword_100351820);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100454DA8, &qword_100351828);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10019E518, 0, 0);
}

uint64_t sub_10019E518()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_10019F668();
  *v2 = v0;
  v2[1] = sub_10019E5FC;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6F74, 0, &type metadata for AccessibilityReduceMotionAutoPlayAnimatedImagesEnabledEntity, v3);
}

uint64_t sub_10019E5FC()
{

  return _swift_task_switch(sub_10019E6F8, 0, 0);
}

uint64_t sub_10019E6F8()
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
  if (qword_10043ABC0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051E290;
  *(v0 + 288) = qword_10051E290;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100454D88, &qword_100454D90, &qword_100351808, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_10019E85C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_10019E85C()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_10019E9CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10019E9CC()
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
  sub_10019DC70();
  sub_10019F87C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10019EC44()
{
  v0 = sub_10000321C(&qword_100454DB0, &qword_100351830);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043ABC0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10019F87C();
  sub_10002B6E4(&qword_100454DB8, &qword_100454DB0, &qword_100351830, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_10019EDB8(uint64_t *a1))(void *)
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

void (*sub_10019EE2C(uint64_t *a1))(void *)
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

unint64_t sub_10019EEC8()
{
  result = qword_10044BE28;
  if (!qword_10044BE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BE28);
  }

  return result;
}

unint64_t sub_10019EF20()
{
  result = qword_10044BE30;
  if (!qword_10044BE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BE30);
  }

  return result;
}

uint64_t sub_10019F01C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10019E338(a1, v5, v4);
}

uint64_t sub_10019F0C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B4F18();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10019F110()
{
  result = qword_10044BE38;
  if (!qword_10044BE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BE38);
  }

  return result;
}

unint64_t sub_10019F168()
{
  result = qword_10044BE40;
  if (!qword_10044BE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BE40);
  }

  return result;
}

uint64_t sub_10019F1DC()
{
  v1 = *(v0 + 16);
  *v1 = _AXSReduceMotionAutoplayAnimatedImagesEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10019F270()
{
  _AXSSetReduceMotionAutoplayAnimatedImagesEnabled();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10019F2D4(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10019F364, 0, 0);
}

uint64_t sub_10019F364()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044BE20, qword_100319A90);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454D88, &qword_100454D90, &qword_100351808, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000033;
  v1[1] = 0x80000001003614D0;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_10019F4B0()
{
  result = qword_10044BE48;
  if (!qword_10044BE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BE48);
  }

  return result;
}

uint64_t sub_10019F504(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10019FAD4();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10019F5B8()
{
  result = qword_10044BE50;
  if (!qword_10044BE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BE50);
  }

  return result;
}

unint64_t sub_10019F610()
{
  result = qword_10044BE58;
  if (!qword_10044BE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BE58);
  }

  return result;
}

unint64_t sub_10019F668()
{
  result = qword_10044BE60;
  if (!qword_10044BE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BE60);
  }

  return result;
}

uint64_t sub_10019F6BC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10019FAD4();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10019F770(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10019FAD4();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10019F824()
{
  result = qword_10044BE68;
  if (!qword_10044BE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BE68);
  }

  return result;
}

unint64_t sub_10019F87C()
{
  result = qword_10044BE70;
  if (!qword_10044BE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BE70);
  }

  return result;
}

uint64_t sub_10019F914(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10019F4B0();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10019F9CC()
{
  result = qword_10044BE88;
  if (!qword_10044BE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BE88);
  }

  return result;
}

unint64_t sub_10019FA24()
{
  result = qword_10044BE90;
  if (!qword_10044BE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BE90);
  }

  return result;
}

unint64_t sub_10019FA7C()
{
  result = qword_10044BE98;
  if (!qword_10044BE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BE98);
  }

  return result;
}

unint64_t sub_10019FAD4()
{
  result = qword_10044BEA0;
  if (!qword_10044BEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BEA0);
  }

  return result;
}

uint64_t sub_10019FB28()
{
  v0 = qword_100446FC8;

  return v0;
}

unint64_t sub_10019FB64()
{
  result = qword_10044BEA8;
  if (!qword_10044BEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BEA8);
  }

  return result;
}

uint64_t sub_10019FBB8(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100454D78, &qword_1003517E8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100454D80, &qword_1003517F0);
  __chkstk_darwin(v5);
  sub_10019F668();
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

unint64_t sub_10019FD80()
{
  result = qword_10044BEB0;
  if (!qword_10044BEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BEB0);
  }

  return result;
}

unint64_t sub_10019FDD8()
{
  result = qword_10044BEB8;
  if (!qword_10044BEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BEB8);
  }

  return result;
}

unint64_t sub_10019FE30()
{
  result = qword_10044BEC0;
  if (!qword_10044BEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BEC0);
  }

  return result;
}

uint64_t sub_10019FE84(uint64_t a1)
{
  sub_1002D4E08();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10019FF6C(uint64_t a1)
{
  v2 = sub_10019F668();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10019FFBC()
{
  result = qword_10044BED8;
  if (!qword_10044BED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BED8);
  }

  return result;
}

uint64_t sub_1001A0014(uint64_t a1)
{
  v2 = sub_10019FE30();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001A0064()
{
  result = qword_10044BEE0;
  if (!qword_10044BEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BEE0);
  }

  return result;
}

uint64_t sub_1001A00FC()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051E298);
  sub_10001EDB8(v5, qword_10051E298);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_1001A026C@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001A05DC()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051E2B0);
  sub_10001EDB8(v0, qword_10051E2B0);
  return sub_1002D88F0();
}

uint64_t sub_1001A0640()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051E2C8);
  v1 = sub_10001EDB8(v0, qword_10051E2C8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001A0700()
{
  result = swift_getKeyPath();
  qword_10051E2E0 = result;
  return result;
}

uint64_t sub_1001A0728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100454D50, &qword_1003517A8);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100454D58, &qword_1003517B0);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001A0908, 0, 0);
}

uint64_t sub_1001A0908()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1001A1A58();
  *v2 = v0;
  v2[1] = sub_1001A09EC;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6F78, 0, &type metadata for AccessibilityReduceMotionDimFlashingLightsEnabledEntity, v3);
}

uint64_t sub_1001A09EC()
{

  return _swift_task_switch(sub_1001A0AE8, 0, 0);
}

uint64_t sub_1001A0AE8()
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
  if (qword_10043ABE0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051E2E0;
  *(v0 + 288) = qword_10051E2E0;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100454D38, &qword_100454D40, &qword_100351790, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1001A0C4C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1001A0C4C()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1001A0DBC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001A0DBC()
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
  sub_1001A0064();
  sub_1001A1C6C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001A1034()
{
  v0 = sub_10000321C(&qword_100454D60, &qword_1003517B8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043ABE0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001A1C6C();
  sub_10002B6E4(&qword_100454D68, &qword_100454D60, &qword_1003517B8, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1001A11A8(uint64_t *a1))(void *)
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

void (*sub_1001A121C(uint64_t *a1))(void *)
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

unint64_t sub_1001A12B8()
{
  result = qword_10044BEF8;
  if (!qword_10044BEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BEF8);
  }

  return result;
}

unint64_t sub_1001A1310()
{
  result = qword_10044BF00;
  if (!qword_10044BF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BF00);
  }

  return result;
}

uint64_t sub_1001A140C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001A0728(a1, v5, v4);
}

uint64_t sub_1001A14B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B5380();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001A1500()
{
  result = qword_10044BF08;
  if (!qword_10044BF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BF08);
  }

  return result;
}

unint64_t sub_1001A1558()
{
  result = qword_10044BF10;
  if (!qword_10044BF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BF10);
  }

  return result;
}

uint64_t sub_1001A15CC()
{
  v1 = *(v0 + 16);
  *v1 = _AXSPhotosensitiveMitigationEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001A1660()
{
  _AXSPhotosensitiveMitigationSetEnabled();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001A16C4(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001A1754, 0, 0);
}

uint64_t sub_1001A1754()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044BEF0, qword_10031A0C8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454D38, &qword_100454D40, &qword_100351790, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000026;
  v1[1] = 0x800000010035FB40;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1001A18A0()
{
  result = qword_10044BF18;
  if (!qword_10044BF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BF18);
  }

  return result;
}

uint64_t sub_1001A18F4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001A1EC4();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1001A19A8()
{
  result = qword_10044BF20;
  if (!qword_10044BF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BF20);
  }

  return result;
}

unint64_t sub_1001A1A00()
{
  result = qword_10044BF28;
  if (!qword_10044BF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BF28);
  }

  return result;
}

unint64_t sub_1001A1A58()
{
  result = qword_10044BF30;
  if (!qword_10044BF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BF30);
  }

  return result;
}

uint64_t sub_1001A1AAC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001A1EC4();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1001A1B60(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001A1EC4();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1001A1C14()
{
  result = qword_10044BF38;
  if (!qword_10044BF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BF38);
  }

  return result;
}

unint64_t sub_1001A1C6C()
{
  result = qword_10044BF40;
  if (!qword_10044BF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BF40);
  }

  return result;
}

uint64_t sub_1001A1D04(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001A18A0();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1001A1DBC()
{
  result = qword_10044BF58;
  if (!qword_10044BF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BF58);
  }

  return result;
}

unint64_t sub_1001A1E14()
{
  result = qword_10044BF60;
  if (!qword_10044BF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BF60);
  }

  return result;
}

unint64_t sub_1001A1E6C()
{
  result = qword_10044BF68;
  if (!qword_10044BF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BF68);
  }

  return result;
}

unint64_t sub_1001A1EC4()
{
  result = qword_10044BF70;
  if (!qword_10044BF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BF70);
  }

  return result;
}

uint64_t sub_1001A1F18()
{
  v0 = qword_100446FD8;

  return v0;
}

unint64_t sub_1001A1F54()
{
  result = qword_10044BF78;
  if (!qword_10044BF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BF78);
  }

  return result;
}

uint64_t sub_1001A1FA8(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100454D28, &qword_100351770);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100454D30, &qword_100351778);
  __chkstk_darwin(v5);
  sub_1001A1A58();
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

unint64_t sub_1001A2170()
{
  result = qword_10044BF80;
  if (!qword_10044BF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BF80);
  }

  return result;
}

unint64_t sub_1001A21C8()
{
  result = qword_10044BF88;
  if (!qword_10044BF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BF88);
  }

  return result;
}

unint64_t sub_1001A2220()
{
  result = qword_10044BF90;
  if (!qword_10044BF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BF90);
  }

  return result;
}

uint64_t sub_1001A2274(uint64_t a1)
{
  sub_1002D4DB4();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1001A235C(uint64_t a1)
{
  v2 = sub_1001A1A58();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001A23AC()
{
  result = qword_10044BFA8;
  if (!qword_10044BFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BFA8);
  }

  return result;
}

uint64_t sub_1001A2404(uint64_t a1)
{
  v2 = sub_1001A2220();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001A2454()
{
  result = qword_10044BFB0;
  if (!qword_10044BFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BFB0);
  }

  return result;
}

uint64_t sub_1001A24EC()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051E2E8);
  sub_10001EDB8(v5, qword_10051E2E8);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_1001A265C@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001A29CC()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051E300);
  sub_10001EDB8(v0, qword_10051E300);
  return sub_1002D88F0();
}

uint64_t sub_1001A2A30()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051E318);
  v1 = sub_10001EDB8(v0, qword_10051E318);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001A2AF0()
{
  result = swift_getKeyPath();
  qword_10051E330 = result;
  return result;
}

uint64_t sub_1001A2B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100454D00, &qword_100351730);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100454D08, &qword_100351738);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001A2CF8, 0, 0);
}

uint64_t sub_1001A2CF8()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1001A3E48();
  *v2 = v0;
  v2[1] = sub_1001A2DDC;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6F7C, 0, &type metadata for AccessibilityReduceMotionAutoPlayVideoPreviewsEnabledEntity, v3);
}

uint64_t sub_1001A2DDC()
{

  return _swift_task_switch(sub_1001A2ED8, 0, 0);
}

uint64_t sub_1001A2ED8()
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
  if (qword_10043AC00 != -1)
  {
    swift_once();
  }

  v3 = qword_10051E330;
  *(v0 + 288) = qword_10051E330;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100454CE8, &qword_100454CF0, &qword_100351718, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1001A303C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1001A303C()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1001A31AC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001A31AC()
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
  sub_1001A2454();
  sub_1001A405C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001A3424()
{
  v0 = sub_10000321C(&qword_100454D10, &qword_100351740);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043AC00 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001A405C();
  sub_10002B6E4(&qword_100454D18, &qword_100454D10, &qword_100351740, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1001A3598(uint64_t *a1))(void *)
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

void (*sub_1001A360C(uint64_t *a1))(void *)
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

unint64_t sub_1001A36A8()
{
  result = qword_10044BFC8;
  if (!qword_10044BFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BFC8);
  }

  return result;
}

unint64_t sub_1001A3700()
{
  result = qword_10044BFD0;
  if (!qword_10044BFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BFD0);
  }

  return result;
}

uint64_t sub_1001A37FC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001A2B18(a1, v5, v4);
}

uint64_t sub_1001A38A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B57E8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001A38F0()
{
  result = qword_10044BFD8;
  if (!qword_10044BFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BFD8);
  }

  return result;
}

unint64_t sub_1001A3948()
{
  result = qword_10044BFE0;
  if (!qword_10044BFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BFE0);
  }

  return result;
}

uint64_t sub_1001A39BC()
{
  v1 = *(v0 + 16);
  *v1 = _AXSReduceMotionAutoplayVideoPreviewsEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001A3A50()
{
  _AXSSetReduceMotionAutoplayVideoPreviewsEnabled();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001A3AB4(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001A3B44, 0, 0);
}

uint64_t sub_1001A3B44()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044BFC0, qword_10031A700);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454CE8, &qword_100454CF0, &qword_100351718, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000032;
  v1[1] = 0x8000000100361450;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1001A3C90()
{
  result = qword_10044BFE8;
  if (!qword_10044BFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BFE8);
  }

  return result;
}

uint64_t sub_1001A3CE4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001A42B4();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1001A3D98()
{
  result = qword_10044BFF0;
  if (!qword_10044BFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BFF0);
  }

  return result;
}

unint64_t sub_1001A3DF0()
{
  result = qword_10044BFF8;
  if (!qword_10044BFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BFF8);
  }

  return result;
}

unint64_t sub_1001A3E48()
{
  result = qword_10044C000;
  if (!qword_10044C000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C000);
  }

  return result;
}

uint64_t sub_1001A3E9C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001A42B4();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1001A3F50(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001A42B4();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1001A4004()
{
  result = qword_10044C008;
  if (!qword_10044C008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C008);
  }

  return result;
}

unint64_t sub_1001A405C()
{
  result = qword_10044C010;
  if (!qword_10044C010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C010);
  }

  return result;
}

uint64_t sub_1001A40F4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001A3C90();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1001A41AC()
{
  result = qword_10044C028;
  if (!qword_10044C028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C028);
  }

  return result;
}

unint64_t sub_1001A4204()
{
  result = qword_10044C030;
  if (!qword_10044C030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C030);
  }

  return result;
}

unint64_t sub_1001A425C()
{
  result = qword_10044C038;
  if (!qword_10044C038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C038);
  }

  return result;
}

unint64_t sub_1001A42B4()
{
  result = qword_10044C040;
  if (!qword_10044C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C040);
  }

  return result;
}

uint64_t sub_1001A4308()
{
  v0 = qword_100446FE8;

  return v0;
}

unint64_t sub_1001A4344()
{
  result = qword_10044C048;
  if (!qword_10044C048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C048);
  }

  return result;
}

uint64_t sub_1001A4398(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100454CD8, &qword_1003516F8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100454CE0, &qword_100351700);
  __chkstk_darwin(v5);
  sub_1001A3E48();
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

unint64_t sub_1001A4560()
{
  result = qword_10044C050;
  if (!qword_10044C050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C050);
  }

  return result;
}

unint64_t sub_1001A45B8()
{
  result = qword_10044C058;
  if (!qword_10044C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C058);
  }

  return result;
}

unint64_t sub_1001A4610()
{
  result = qword_10044C060;
  if (!qword_10044C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C060);
  }

  return result;
}

uint64_t sub_1001A4664(uint64_t a1)
{
  sub_1002D4D60();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1001A474C(uint64_t a1)
{
  v2 = sub_1001A3E48();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001A479C()
{
  result = qword_10044C078;
  if (!qword_10044C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C078);
  }

  return result;
}

uint64_t sub_1001A47F4(uint64_t a1)
{
  v2 = sub_1001A4610();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001A4844()
{
  result = qword_10044C080;
  if (!qword_10044C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C080);
  }

  return result;
}

uint64_t sub_1001A48DC()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051E338);
  sub_10001EDB8(v5, qword_10051E338);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_1001A4A4C@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001A4DBC()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051E350);
  sub_10001EDB8(v0, qword_10051E350);
  return sub_1002D88F0();
}

uint64_t sub_1001A4E20()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051E368);
  v1 = sub_10001EDB8(v0, qword_10051E368);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001A4EE0()
{
  result = swift_getKeyPath();
  qword_10051E380 = result;
  return result;
}

uint64_t sub_1001A4F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100454CB0, &qword_1003516B8);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100454CB8, &qword_1003516C0);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001A50E8, 0, 0);
}

uint64_t sub_1001A50E8()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1001A6238();
  *v2 = v0;
  v2[1] = sub_1001A51CC;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6F80, 0, &type metadata for AccessibilityReduceMotionPreferNonBlinkingCursorEnabledEntity, v3);
}

uint64_t sub_1001A51CC()
{

  return _swift_task_switch(sub_1001A52C8, 0, 0);
}

uint64_t sub_1001A52C8()
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
  if (qword_10043AC20 != -1)
  {
    swift_once();
  }

  v3 = qword_10051E380;
  *(v0 + 288) = qword_10051E380;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100454C98, &qword_100454CA0, &qword_1003516A0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1001A542C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1001A542C()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1001A559C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001A559C()
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
  sub_1001A4844();
  sub_1001A644C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001A5814()
{
  v0 = sub_10000321C(&qword_100454CC0, &qword_1003516C8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043AC20 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001A644C();
  sub_10002B6E4(&qword_100454CC8, &qword_100454CC0, &qword_1003516C8, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1001A5988(uint64_t *a1))(void *)
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

void (*sub_1001A59FC(uint64_t *a1))(void *)
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

unint64_t sub_1001A5A98()
{
  result = qword_10044C098;
  if (!qword_10044C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C098);
  }

  return result;
}

unint64_t sub_1001A5AF0()
{
  result = qword_10044C0A0;
  if (!qword_10044C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C0A0);
  }

  return result;
}

uint64_t sub_1001A5BEC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001A4F08(a1, v5, v4);
}

uint64_t sub_1001A5C98@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B5C50();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001A5CE0()
{
  result = qword_10044C0A8;
  if (!qword_10044C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C0A8);
  }

  return result;
}

unint64_t sub_1001A5D38()
{
  result = qword_10044C0B0;
  if (!qword_10044C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C0B0);
  }

  return result;
}

uint64_t sub_1001A5DAC()
{
  v1 = *(v0 + 16);
  *v1 = _AXSPrefersNonBlinkingCursorIndicatorGlobal() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001A5E40()
{
  _AXSSetPrefersNonBlinkingCursorIndicator();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001A5EA4(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001A5F34, 0, 0);
}

uint64_t sub_1001A5F34()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044C090, qword_10031AD38);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454C98, &qword_100454CA0, &qword_1003516A0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000026;
  v1[1] = 0x800000010035C9A0;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1001A6080()
{
  result = qword_10044C0B8;
  if (!qword_10044C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C0B8);
  }

  return result;
}

uint64_t sub_1001A60D4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001A66A4();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1001A6188()
{
  result = qword_10044C0C0;
  if (!qword_10044C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C0C0);
  }

  return result;
}

unint64_t sub_1001A61E0()
{
  result = qword_10044C0C8;
  if (!qword_10044C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C0C8);
  }

  return result;
}

unint64_t sub_1001A6238()
{
  result = qword_10044C0D0;
  if (!qword_10044C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C0D0);
  }

  return result;
}

uint64_t sub_1001A628C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001A66A4();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1001A6340(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001A66A4();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1001A63F4()
{
  result = qword_10044C0D8;
  if (!qword_10044C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C0D8);
  }

  return result;
}

unint64_t sub_1001A644C()
{
  result = qword_10044C0E0;
  if (!qword_10044C0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C0E0);
  }

  return result;
}

uint64_t sub_1001A64E4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001A6080();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1001A659C()
{
  result = qword_10044C0F8;
  if (!qword_10044C0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C0F8);
  }

  return result;
}

unint64_t sub_1001A65F4()
{
  result = qword_10044C100;
  if (!qword_10044C100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C100);
  }

  return result;
}

unint64_t sub_1001A664C()
{
  result = qword_10044C108;
  if (!qword_10044C108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C108);
  }

  return result;
}

unint64_t sub_1001A66A4()
{
  result = qword_10044C110;
  if (!qword_10044C110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C110);
  }

  return result;
}

uint64_t sub_1001A66F8()
{
  v0 = qword_100446FF8;

  return v0;
}

unint64_t sub_1001A6734()
{
  result = qword_10044C118;
  if (!qword_10044C118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C118);
  }

  return result;
}

uint64_t sub_1001A6788(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100454C88, &qword_100351680);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100454C90, &qword_100351688);
  __chkstk_darwin(v5);
  sub_1001A6238();
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

unint64_t sub_1001A6950()
{
  result = qword_10044C120;
  if (!qword_10044C120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C120);
  }

  return result;
}

unint64_t sub_1001A69A8()
{
  result = qword_10044C128;
  if (!qword_10044C128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C128);
  }

  return result;
}

unint64_t sub_1001A6A00()
{
  result = qword_10044C130;
  if (!qword_10044C130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C130);
  }

  return result;
}

uint64_t sub_1001A6A54(uint64_t a1)
{
  sub_1002D4D0C();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1001A6B3C(uint64_t a1)
{
  v2 = sub_1001A6238();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001A6B8C()
{
  result = qword_10044C148;
  if (!qword_10044C148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C148);
  }

  return result;
}

uint64_t sub_1001A6BE4(uint64_t a1)
{
  v2 = sub_1001A6A00();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001A6C34()
{
  result = qword_10044C150;
  if (!qword_10044C150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C150);
  }

  return result;
}

uint64_t sub_1001A6CF4@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001A706C()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051E3A0);
  sub_10001EDB8(v0, qword_10051E3A0);
  return sub_1002D88F0();
}

uint64_t sub_1001A70D0()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051E3B8);
  v1 = sub_10001EDB8(v0, qword_10051E3B8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001A7190()
{
  result = swift_getKeyPath();
  qword_10051E3D0 = result;
  return result;
}

uint64_t sub_1001A71B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100454C60, &qword_100351640);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100454C68, &qword_100351648);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001A7398, 0, 0);
}

uint64_t sub_1001A7398()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1001A8548();
  *v2 = v0;
  v2[1] = sub_1001A747C;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6F84, 0, &type metadata for AccessibilityReduceMotionLimitFrameRateEnabledEntity, v3);
}

uint64_t sub_1001A747C()
{

  return _swift_task_switch(sub_1001A7578, 0, 0);
}

uint64_t sub_1001A7578()
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
  if (qword_10043AC40 != -1)
  {
    swift_once();
  }

  v3 = qword_10051E3D0;
  *(v0 + 288) = qword_10051E3D0;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100454C48, &qword_100454C50, &qword_100351628, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1001A76DC;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1001A76DC()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1001A784C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001A784C()
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
  sub_1001A6C34();
  sub_1001A875C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001A7AC4()
{
  v0 = sub_10000321C(&qword_100454C70, &qword_100351650);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043AC40 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001A875C();
  sub_10002B6E4(&qword_100454C78, &qword_100454C70, &qword_100351650, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1001A7C38(uint64_t *a1))(void *)
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

void (*sub_1001A7CAC(uint64_t *a1))(void *)
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

unint64_t sub_1001A7D48()
{
  result = qword_10044C168;
  if (!qword_10044C168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C168);
  }

  return result;
}

unint64_t sub_1001A7DA0()
{
  result = qword_10044C170;
  if (!qword_10044C170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C170);
  }

  return result;
}

uint64_t sub_1001A7E9C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001A71B8(a1, v5, v4);
}

uint64_t sub_1001A7F48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B60B8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001A7F90()
{
  result = qword_10044C178;
  if (!qword_10044C178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C178);
  }

  return result;
}

unint64_t sub_1001A7FE8()
{
  result = qword_10044C180;
  if (!qword_10044C180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C180);
  }

  return result;
}

uint64_t sub_1001A805C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 shouldLimitDisplayRefreshRate];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001A8124()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setShouldLimitDisplayRefreshRate:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001A81BC(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001A824C, 0, 0);
}

uint64_t sub_1001A824C()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044C160, qword_10031B370);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454C48, &qword_100454C50, &qword_100351628, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000019;
  v1[1] = 0x800000010035C4C0;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1001A8390()
{
  result = qword_10044C188;
  if (!qword_10044C188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C188);
  }

  return result;
}

uint64_t sub_1001A83E4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001A89B4();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1001A8498()
{
  result = qword_10044C190;
  if (!qword_10044C190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C190);
  }

  return result;
}

unint64_t sub_1001A84F0()
{
  result = qword_10044C198;
  if (!qword_10044C198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C198);
  }

  return result;
}

unint64_t sub_1001A8548()
{
  result = qword_10044C1A0;
  if (!qword_10044C1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C1A0);
  }

  return result;
}

uint64_t sub_1001A859C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001A89B4();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1001A8650(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001A89B4();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1001A8704()
{
  result = qword_10044C1A8;
  if (!qword_10044C1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C1A8);
  }

  return result;
}

unint64_t sub_1001A875C()
{
  result = qword_10044C1B0;
  if (!qword_10044C1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C1B0);
  }

  return result;
}

uint64_t sub_1001A87F4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001A8390();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1001A88AC()
{
  result = qword_10044C1C8;
  if (!qword_10044C1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C1C8);
  }

  return result;
}

unint64_t sub_1001A8904()
{
  result = qword_10044C1D0;
  if (!qword_10044C1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C1D0);
  }

  return result;
}

unint64_t sub_1001A895C()
{
  result = qword_10044C1D8;
  if (!qword_10044C1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C1D8);
  }

  return result;
}

unint64_t sub_1001A89B4()
{
  result = qword_10044C1E0;
  if (!qword_10044C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C1E0);
  }

  return result;
}

uint64_t sub_1001A8A08()
{
  v0 = qword_100447008;

  return v0;
}

unint64_t sub_1001A8A44()
{
  result = qword_10044C1E8;
  if (!qword_10044C1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C1E8);
  }

  return result;
}

uint64_t sub_1001A8A98(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100454C38, &qword_100351608);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100454C40, &qword_100351610);
  __chkstk_darwin(v5);
  sub_1001A8548();
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

unint64_t sub_1001A8C60()
{
  result = qword_10044C1F0;
  if (!qword_10044C1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C1F0);
  }

  return result;
}

unint64_t sub_1001A8CB8()
{
  result = qword_10044C1F8;
  if (!qword_10044C1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C1F8);
  }

  return result;
}

unint64_t sub_1001A8D10()
{
  result = qword_10044C200;
  if (!qword_10044C200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C200);
  }

  return result;
}

uint64_t sub_1001A8D64(uint64_t a1)
{
  sub_1002D4CB8();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1001A8E4C(uint64_t a1)
{
  v2 = sub_1001A8548();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001A8E9C()
{
  result = qword_10044C218;
  if (!qword_10044C218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C218);
  }

  return result;
}

uint64_t sub_1001A8EF4(uint64_t a1)
{
  v2 = sub_1001A8D10();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001A8F44()
{
  result = qword_10044C220;
  if (!qword_10044C220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C220);
  }

  return result;
}

uint64_t sub_1001A9000@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001A9374()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051E3F0);
  sub_10001EDB8(v0, qword_10051E3F0);
  return sub_1002D88F0();
}

uint64_t sub_1001A93D8()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051E408);
  v1 = sub_10001EDB8(v0, qword_10051E408);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001A9498()
{
  result = swift_getKeyPath();
  qword_10051E420 = result;
  return result;
}

uint64_t sub_1001A94C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100454C10, &qword_1003515C8);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100454C18, &qword_1003515D0);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001A96A0, 0, 0);
}

uint64_t sub_1001A96A0()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1001AA84C();
  *v2 = v0;
  v2[1] = sub_1001A9784;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6F88, 0, &type metadata for AccessibilityAssistiveTouchMouseKeysEnabledEntity, v3);
}

uint64_t sub_1001A9784()
{

  return _swift_task_switch(sub_1001A9880, 0, 0);
}

uint64_t sub_1001A9880()
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
  if (qword_10043AC60 != -1)
  {
    swift_once();
  }

  v3 = qword_10051E420;
  *(v0 + 288) = qword_10051E420;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100454BF8, &qword_100454C00, &qword_1003515B0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1001A99E4;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1001A99E4()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1001A9B54;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001A9B54()
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
  sub_1001A8F44();
  sub_1001AAA60();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001A9DCC()
{
  v0 = sub_10000321C(&qword_100454C20, &qword_1003515D8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043AC60 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001AAA60();
  sub_10002B6E4(&qword_100454C28, &qword_100454C20, &qword_1003515D8, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1001A9F40(uint64_t *a1))(void *)
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

void (*sub_1001A9FB4(uint64_t *a1))(void *)
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

unint64_t sub_1001AA050()
{
  result = qword_10044C238;
  if (!qword_10044C238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C238);
  }

  return result;
}

unint64_t sub_1001AA0A8()
{
  result = qword_10044C240;
  if (!qword_10044C240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C240);
  }

  return result;
}

uint64_t sub_1001AA1A4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001A94C0(a1, v5, v4);
}

uint64_t sub_1001AA250@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B6520();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001AA298()
{
  result = qword_10044C248;
  if (!qword_10044C248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C248);
  }

  return result;
}

unint64_t sub_1001AA2F0()
{
  result = qword_10044C250;
  if (!qword_10044C250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C250);
  }

  return result;
}

uint64_t sub_1001AA364()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 assistiveTouchMouseKeysEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001AA42C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setAssistiveTouchMouseKeysEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001AA4C4(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001AA554, 0, 0);
}

uint64_t sub_1001AA554()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044C230, qword_10031B9A8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454BF8, &qword_100454C00, &qword_1003515B0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000051;
  v1[1] = 0x800000010037A450;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1001AA694()
{
  result = qword_10044C258;
  if (!qword_10044C258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C258);
  }

  return result;
}

uint64_t sub_1001AA6E8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001AACB8();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1001AA79C()
{
  result = qword_10044C260;
  if (!qword_10044C260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C260);
  }

  return result;
}

unint64_t sub_1001AA7F4()
{
  result = qword_10044C268;
  if (!qword_10044C268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C268);
  }

  return result;
}

unint64_t sub_1001AA84C()
{
  result = qword_10044C270;
  if (!qword_10044C270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C270);
  }

  return result;
}

uint64_t sub_1001AA8A0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001AACB8();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1001AA954(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001AACB8();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1001AAA08()
{
  result = qword_10044C278;
  if (!qword_10044C278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C278);
  }

  return result;
}

unint64_t sub_1001AAA60()
{
  result = qword_10044C280;
  if (!qword_10044C280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C280);
  }

  return result;
}

uint64_t sub_1001AAAF8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001AA694();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1001AABB0()
{
  result = qword_10044C298;
  if (!qword_10044C298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C298);
  }

  return result;
}

unint64_t sub_1001AAC08()
{
  result = qword_10044C2A0;
  if (!qword_10044C2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C2A0);
  }

  return result;
}

unint64_t sub_1001AAC60()
{
  result = qword_10044C2A8;
  if (!qword_10044C2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C2A8);
  }

  return result;
}

unint64_t sub_1001AACB8()
{
  result = qword_10044C2B0;
  if (!qword_10044C2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C2B0);
  }

  return result;
}

uint64_t sub_1001AAD0C()
{
  v0 = qword_100447018;

  return v0;
}

unint64_t sub_1001AAD48()
{
  result = qword_10044C2B8;
  if (!qword_10044C2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C2B8);
  }

  return result;
}

uint64_t sub_1001AAD9C(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100454BE8, &qword_100351590);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100454BF0, &qword_100351598);
  __chkstk_darwin(v5);
  sub_1001AA84C();
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

unint64_t sub_1001AAF64()
{
  result = qword_10044C2C0;
  if (!qword_10044C2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C2C0);
  }

  return result;
}

unint64_t sub_1001AAFBC()
{
  result = qword_10044C2C8;
  if (!qword_10044C2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C2C8);
  }

  return result;
}

unint64_t sub_1001AB014()
{
  result = qword_10044C2D0;
  if (!qword_10044C2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C2D0);
  }

  return result;
}

uint64_t sub_1001AB068(uint64_t a1)
{
  sub_1002D4C64();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1001AB150(uint64_t a1)
{
  v2 = sub_1001AA84C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001AB1A0()
{
  result = qword_10044C2E8;
  if (!qword_10044C2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C2E8);
  }

  return result;
}

uint64_t sub_1001AB1F8(uint64_t a1)
{
  v2 = sub_1001AB014();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001AB248()
{
  result = qword_10044C2F0;
  if (!qword_10044C2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C2F0);
  }

  return result;
}

uint64_t sub_1001AB2E0()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051E428);
  sub_10001EDB8(v5, qword_10051E428);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_1001AB450@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001AB7C0()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051E440);
  sub_10001EDB8(v0, qword_10051E440);
  return sub_1002D88F0();
}

uint64_t sub_1001AB824()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051E458);
  v1 = sub_10001EDB8(v0, qword_10051E458);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001AB8E4()
{
  result = swift_getKeyPath();
  qword_10051E470 = result;
  return result;
}

uint64_t sub_1001AB90C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100454BC0, &qword_100351550);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100454BC8, &qword_100351558);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001ABAEC, 0, 0);
}

uint64_t sub_1001ABAEC()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1001ACCA4();
  *v2 = v0;
  v2[1] = sub_1001ABBD0;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6F8C, 0, &type metadata for AccessibilityAssistiveTouchMouseKeysOptionKeyEnabledEntity, v3);
}

uint64_t sub_1001ABBD0()
{

  return _swift_task_switch(sub_1001ABCCC, 0, 0);
}

uint64_t sub_1001ABCCC()
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
  if (qword_10043AC80 != -1)
  {
    swift_once();
  }

  v3 = qword_10051E470;
  *(v0 + 288) = qword_10051E470;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100454BA8, &qword_100454BB0, &qword_100351538, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1001ABE30;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1001ABE30()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1001ABFA0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001ABFA0()
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
  sub_1001AB248();
  sub_1001ACEB8();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001AC218()
{
  v0 = sub_10000321C(&qword_100454BD0, &qword_100351560);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043AC80 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001ACEB8();
  sub_10002B6E4(&qword_100454BD8, &qword_100454BD0, &qword_100351560, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1001AC38C(uint64_t *a1))(void *)
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

void (*sub_1001AC400(uint64_t *a1))(void *)
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

unint64_t sub_1001AC49C()
{
  result = qword_10044C308;
  if (!qword_10044C308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C308);
  }

  return result;
}

unint64_t sub_1001AC4F4()
{
  result = qword_10044C310;
  if (!qword_10044C310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C310);
  }

  return result;
}

uint64_t sub_1001AC5F0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001AB90C(a1, v5, v4);
}

uint64_t sub_1001AC69C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B6988();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001AC6E4()
{
  result = qword_10044C318;
  if (!qword_10044C318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C318);
  }

  return result;
}

unint64_t sub_1001AC73C()
{
  result = qword_10044C320;
  if (!qword_10044C320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C320);
  }

  return result;
}

uint64_t sub_1001AC7B0()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 assistiveTouchMouseKeysOptionToggleEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001AC878()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setAssistiveTouchMouseKeysOptionToggleEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001AC910(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001AC9A0, 0, 0);
}

uint64_t sub_1001AC9A0()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044C300, qword_10031BFE0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454BA8, &qword_100454BB0, &qword_100351538, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000050;
  v1[1] = 0x800000010035D170;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1001ACAEC()
{
  result = qword_10044C328;
  if (!qword_10044C328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C328);
  }

  return result;
}

uint64_t sub_1001ACB40(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001AD110();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1001ACBF4()
{
  result = qword_10044C330;
  if (!qword_10044C330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C330);
  }

  return result;
}

unint64_t sub_1001ACC4C()
{
  result = qword_10044C338;
  if (!qword_10044C338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C338);
  }

  return result;
}

unint64_t sub_1001ACCA4()
{
  result = qword_10044C340;
  if (!qword_10044C340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C340);
  }

  return result;
}

uint64_t sub_1001ACCF8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001AD110();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1001ACDAC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001AD110();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1001ACE60()
{
  result = qword_10044C348;
  if (!qword_10044C348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C348);
  }

  return result;
}

unint64_t sub_1001ACEB8()
{
  result = qword_10044C350;
  if (!qword_10044C350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C350);
  }

  return result;
}

uint64_t sub_1001ACF50(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001ACAEC();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1001AD008()
{
  result = qword_10044C368;
  if (!qword_10044C368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C368);
  }

  return result;
}

unint64_t sub_1001AD060()
{
  result = qword_10044C370;
  if (!qword_10044C370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C370);
  }

  return result;
}

unint64_t sub_1001AD0B8()
{
  result = qword_10044C378;
  if (!qword_10044C378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C378);
  }

  return result;
}

unint64_t sub_1001AD110()
{
  result = qword_10044C380;
  if (!qword_10044C380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C380);
  }

  return result;
}

uint64_t sub_1001AD164()
{
  v0 = qword_100447028;

  return v0;
}

unint64_t sub_1001AD1A0()
{
  result = qword_10044C388;
  if (!qword_10044C388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C388);
  }

  return result;
}

uint64_t sub_1001AD1F4(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100454B98, &qword_100351518);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100454BA0, &qword_100351520);
  __chkstk_darwin(v5);
  sub_1001ACCA4();
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

unint64_t sub_1001AD3BC()
{
  result = qword_10044C390;
  if (!qword_10044C390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C390);
  }

  return result;
}

unint64_t sub_1001AD414()
{
  result = qword_10044C398;
  if (!qword_10044C398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C398);
  }

  return result;
}

unint64_t sub_1001AD46C()
{
  result = qword_10044C3A0;
  if (!qword_10044C3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C3A0);
  }

  return result;
}

uint64_t sub_1001AD4C0(uint64_t a1)
{
  sub_1002D4C10();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1001AD5A8(uint64_t a1)
{
  v2 = sub_1001ACCA4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001AD5F8()
{
  result = qword_10044C3B8;
  if (!qword_10044C3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C3B8);
  }

  return result;
}

uint64_t sub_1001AD650(uint64_t a1)
{
  v2 = sub_1001AD46C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001AD6A0()
{
  result = qword_10044C3C0;
  if (!qword_10044C3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C3C0);
  }

  return result;
}

uint64_t sub_1001AD738()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051E478);
  sub_10001EDB8(v5, qword_10051E478);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_1001AD8A8@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001ADC18()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051E490);
  sub_10001EDB8(v0, qword_10051E490);
  return sub_1002D88F0();
}

uint64_t sub_1001ADC7C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051E4A8);
  v1 = sub_10001EDB8(v0, qword_10051E4A8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001ADD3C()
{
  result = swift_getKeyPath();
  qword_10051E4C0 = result;
  return result;
}

uint64_t sub_1001ADD64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100454B70, &qword_1003514D8);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100454B78, &qword_1003514E0);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001ADF44, 0, 0);
}

uint64_t sub_1001ADF44()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1001AF0FC();
  *v2 = v0;
  v2[1] = sub_1001AE028;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6F90, 0, &type metadata for AccessibilityAssistiveTouchMouseKeysUsePrimaryKeyboardEnabledEntity, v3);
}

uint64_t sub_1001AE028()
{

  return _swift_task_switch(sub_1001AE124, 0, 0);
}

uint64_t sub_1001AE124()
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
  if (qword_10043ACA0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051E4C0;
  *(v0 + 288) = qword_10051E4C0;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100454B58, &qword_100454B60, &qword_1003514C0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1001AE288;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1001AE288()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1001AE3F8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001AE3F8()
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
  sub_1001AD6A0();
  sub_1001AF310();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001AE670()
{
  v0 = sub_10000321C(&qword_100454B80, &qword_1003514E8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043ACA0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001AF310();
  sub_10002B6E4(&qword_100454B88, &qword_100454B80, &qword_1003514E8, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1001AE7E4(uint64_t *a1))(void *)
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

void (*sub_1001AE858(uint64_t *a1))(void *)
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

unint64_t sub_1001AE8F4()
{
  result = qword_10044C3D8;
  if (!qword_10044C3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C3D8);
  }

  return result;
}

unint64_t sub_1001AE94C()
{
  result = qword_10044C3E0;
  if (!qword_10044C3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C3E0);
  }

  return result;
}

uint64_t sub_1001AEA48(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001ADD64(a1, v5, v4);
}

uint64_t sub_1001AEAF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B6DF0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001AEB3C()
{
  result = qword_10044C3E8;
  if (!qword_10044C3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C3E8);
  }

  return result;
}

unint64_t sub_1001AEB94()
{
  result = qword_10044C3F0;
  if (!qword_10044C3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C3F0);
  }

  return result;
}

uint64_t sub_1001AEC08()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 assistiveTouchMouseKeysUseMainKeyboardKeys];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001AECD0()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setAssistiveTouchMouseKeysUseMainKeyboardKeys:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001AED68(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001AEDF8, 0, 0);
}

uint64_t sub_1001AEDF8()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044C3D0, qword_10031C618);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454B58, &qword_100454B60, &qword_1003514C0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000053;
  v1[1] = 0x800000010035A4B0;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1001AEF44()
{
  result = qword_10044C3F8;
  if (!qword_10044C3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C3F8);
  }

  return result;
}

uint64_t sub_1001AEF98(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001AF568();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1001AF04C()
{
  result = qword_10044C400;
  if (!qword_10044C400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C400);
  }

  return result;
}

unint64_t sub_1001AF0A4()
{
  result = qword_10044C408;
  if (!qword_10044C408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C408);
  }

  return result;
}

unint64_t sub_1001AF0FC()
{
  result = qword_10044C410;
  if (!qword_10044C410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C410);
  }

  return result;
}

uint64_t sub_1001AF150(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001AF568();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1001AF204(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001AF568();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1001AF2B8()
{
  result = qword_10044C418;
  if (!qword_10044C418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C418);
  }

  return result;
}

unint64_t sub_1001AF310()
{
  result = qword_10044C420;
  if (!qword_10044C420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C420);
  }

  return result;
}

uint64_t sub_1001AF3A8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001AEF44();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1001AF460()
{
  result = qword_10044C438;
  if (!qword_10044C438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C438);
  }

  return result;
}

unint64_t sub_1001AF4B8()
{
  result = qword_10044C440;
  if (!qword_10044C440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C440);
  }

  return result;
}

unint64_t sub_1001AF510()
{
  result = qword_10044C448;
  if (!qword_10044C448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C448);
  }

  return result;
}

unint64_t sub_1001AF568()
{
  result = qword_10044C450;
  if (!qword_10044C450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C450);
  }

  return result;
}

uint64_t sub_1001AF5BC()
{
  v0 = qword_100447038;

  return v0;
}

unint64_t sub_1001AF5F8()
{
  result = qword_10044C458;
  if (!qword_10044C458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C458);
  }

  return result;
}

uint64_t sub_1001AF64C(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100454B48, &qword_1003514A0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100454B50, &qword_1003514A8);
  __chkstk_darwin(v5);
  sub_1001AF0FC();
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

unint64_t sub_1001AF814()
{
  result = qword_10044C460;
  if (!qword_10044C460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C460);
  }

  return result;
}

unint64_t sub_1001AF86C()
{
  result = qword_10044C468;
  if (!qword_10044C468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C468);
  }

  return result;
}

unint64_t sub_1001AF8C4()
{
  result = qword_10044C470;
  if (!qword_10044C470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C470);
  }

  return result;
}

uint64_t sub_1001AF918(uint64_t a1)
{
  sub_1002D4BBC();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1001AFA00(uint64_t a1)
{
  v2 = sub_1001AF0FC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001AFA50()
{
  result = qword_10044C488;
  if (!qword_10044C488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C488);
  }

  return result;
}

uint64_t sub_1001AFAA8(uint64_t a1)
{
  v2 = sub_1001AF8C4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001AFAF8()
{
  result = qword_10044C490;
  if (!qword_10044C490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C490);
  }

  return result;
}

uint64_t sub_1001AFBBC@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001AFF38()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051E4E0);
  sub_10001EDB8(v0, qword_10051E4E0);
  return sub_1002D88F0();
}

uint64_t sub_1001AFF9C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051E4F8);
  v1 = sub_10001EDB8(v0, qword_10051E4F8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001B005C()
{
  result = swift_getKeyPath();
  qword_10051E510 = result;
  return result;
}

uint64_t sub_1001B0084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[22] = a2;
  v3[23] = a3;
  v3[21] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[25] = swift_task_alloc();
  sub_10000321C(&qword_100454B20, &qword_100351460);
  v3[26] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[27] = v4;
  v3[28] = *(v4 - 8);
  v3[29] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100454B28, &qword_100351468);
  v3[30] = v5;
  v3[31] = *(v5 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();

  return _swift_task_switch(sub_1001B0264, 0, 0);
}

uint64_t sub_1001B0264()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 272) = v2;
  v3 = sub_1001B1484();
  *v2 = v0;
  v2[1] = sub_1001B0348;
  v4 = *(v0 + 264);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6F94, 0, &type metadata for AccessibilityAssistiveTouchMouseKeysInitialDelayEntity, v3);
}

uint64_t sub_1001B0348()
{

  return _swift_task_switch(sub_1001B0444, 0, 0);
}

uint64_t sub_1001B0444()
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
  if (qword_10043ACC0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051E510;
  v0[37] = qword_10051E510;

  v4 = swift_task_alloc();
  v0[38] = v4;
  v5 = sub_10002B6E4(&qword_100454B08, &qword_100454B10, &qword_100351448, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1001B05A0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 20, v3, &type metadata for Int, v5);
}

uint64_t sub_1001B05A0()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_1002D6E00;
  }

  else
  {
    v2 = sub_1001B0710;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001B0710()
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
  sub_1001AFAF8();
  sub_1001B1698();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001B0988()
{
  v0 = sub_10000321C(&qword_100454B30, &qword_100351470);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043ACC0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001B1698();
  sub_10002B6E4(&qword_100454B38, &qword_100454B30, &qword_100351470, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1001B0AFC(uint64_t *a1))(void *)
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

void *sub_1001B0B70@<X0>(void *a1@<X8>)
{
  result = sub_1002D85B0();
  *a1 = v3;
  return result;
}

void (*sub_1001B0BE4(uint64_t *a1))(void *)
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

unint64_t sub_1001B0C80()
{
  result = qword_10044C4A8;
  if (!qword_10044C4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C4A8);
  }

  return result;
}

unint64_t sub_1001B0CD8()
{
  result = qword_10044C4B0;
  if (!qword_10044C4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C4B0);
  }

  return result;
}

uint64_t sub_1001B0DD4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001B0084(a1, v5, v4);
}

uint64_t sub_1001B0E80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B7258();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001B0EC8()
{
  result = qword_10044C4B8;
  if (!qword_10044C4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C4B8);
  }

  return result;
}

unint64_t sub_1001B0F20()
{
  result = qword_10044C4C0;
  if (!qword_10044C4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C4C0);
  }

  return result;
}

uint64_t sub_1001B0F94()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 assistiveTouchMouseKeysDelay];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001B105C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setAssistiveTouchMouseKeysDelay:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001B10F4(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001B1184, 0, 0);
}

uint64_t sub_1001B1184()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044C4A0, qword_10031CC50);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454B08, &qword_100454B10, &qword_100351448, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88C0();
  *v1 = 0xD00000000000004DLL;
  v1[1] = 0x800000010035E460;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1001B12CC()
{
  result = qword_10044C4C8;
  if (!qword_10044C4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C4C8);
  }

  return result;
}

uint64_t sub_1001B1320(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001B18F0();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1001B13D4()
{
  result = qword_10044C4D0;
  if (!qword_10044C4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C4D0);
  }

  return result;
}

unint64_t sub_1001B142C()
{
  result = qword_10044C4D8;
  if (!qword_10044C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C4D8);
  }

  return result;
}

unint64_t sub_1001B1484()
{
  result = qword_10044C4E0;
  if (!qword_10044C4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C4E0);
  }

  return result;
}

uint64_t sub_1001B14D8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001B18F0();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1001B158C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001B18F0();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1001B1640()
{
  result = qword_10044C4E8;
  if (!qword_10044C4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C4E8);
  }

  return result;
}

unint64_t sub_1001B1698()
{
  result = qword_10044C4F0;
  if (!qword_10044C4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C4F0);
  }

  return result;
}

uint64_t sub_1001B1730(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001B12CC();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1001B17E8()
{
  result = qword_10044C508;
  if (!qword_10044C508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C508);
  }

  return result;
}

unint64_t sub_1001B1840()
{
  result = qword_10044C510;
  if (!qword_10044C510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C510);
  }

  return result;
}

unint64_t sub_1001B1898()
{
  result = qword_10044C518;
  if (!qword_10044C518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C518);
  }

  return result;
}

unint64_t sub_1001B18F0()
{
  result = qword_10044C520;
  if (!qword_10044C520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C520);
  }

  return result;
}

uint64_t sub_1001B1944()
{
  v0 = qword_100447048;

  return v0;
}

unint64_t sub_1001B1980()
{
  result = qword_10044C528;
  if (!qword_10044C528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C528);
  }

  return result;
}

uint64_t sub_1001B19D4(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100454AF8, &qword_100351428);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100454B00, &qword_100351430);
  __chkstk_darwin(v5);
  sub_1001B1484();
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

unint64_t sub_1001B1B9C()
{
  result = qword_10044C530;
  if (!qword_10044C530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C530);
  }

  return result;
}

unint64_t sub_1001B1BF4()
{
  result = qword_10044C538;
  if (!qword_10044C538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C538);
  }

  return result;
}

unint64_t sub_1001B1C4C()
{
  result = qword_10044C540;
  if (!qword_10044C540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C540);
  }

  return result;
}

uint64_t sub_1001B1CA0(uint64_t a1)
{
  sub_1002D4B68();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1001B1D88(uint64_t a1)
{
  v2 = sub_1001B1484();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001B1DD8()
{
  result = qword_10044C558;
  if (!qword_10044C558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C558);
  }

  return result;
}

uint64_t sub_1001B1E30(uint64_t a1)
{
  v2 = sub_1001B1C4C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001B1E80()
{
  result = qword_10044C560;
  if (!qword_10044C560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C560);
  }

  return result;
}

uint64_t sub_1001B1F44@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001B22C0()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051E530);
  sub_10001EDB8(v0, qword_10051E530);
  return sub_1002D88F0();
}

uint64_t sub_1001B2324()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051E548);
  v1 = sub_10001EDB8(v0, qword_10051E548);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001B23E4()
{
  result = swift_getKeyPath();
  qword_10051E560 = result;
  return result;
}

uint64_t sub_1001B240C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[22] = a2;
  v3[23] = a3;
  v3[21] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[25] = swift_task_alloc();
  sub_10000321C(&qword_100454AD0, &qword_1003513E8);
  v3[26] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[27] = v4;
  v3[28] = *(v4 - 8);
  v3[29] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100454AD8, &qword_1003513F0);
  v3[30] = v5;
  v3[31] = *(v5 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();

  return _swift_task_switch(sub_1001B25EC, 0, 0);
}

uint64_t sub_1001B25EC()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 272) = v2;
  v3 = sub_1001B3798();
  *v2 = v0;
  v2[1] = sub_1001B26D0;
  v4 = *(v0 + 264);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6F98, 0, &type metadata for AccessibilityAssistiveTouchMouseKeysMaximumSpeedEntity, v3);
}

uint64_t sub_1001B26D0()
{

  return _swift_task_switch(sub_1001B27CC, 0, 0);
}

uint64_t sub_1001B27CC()
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
  if (qword_10043ACE0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051E560;
  v0[37] = qword_10051E560;

  v4 = swift_task_alloc();
  v0[38] = v4;
  v5 = sub_10002B6E4(&qword_100454AA8, &qword_100454AB0, &qword_1003513C0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1001B2928;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 20, v3, &type metadata for Int, v5);
}

uint64_t sub_1001B2928()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_1002D6E00;
  }

  else
  {
    v2 = sub_1001B2A98;
  }

  return _swift_task_switch(v2, 0, 0);
}