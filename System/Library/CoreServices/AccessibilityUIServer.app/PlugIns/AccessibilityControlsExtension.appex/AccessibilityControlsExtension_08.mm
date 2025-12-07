unint64_t sub_100108C28()
{
  result = qword_100448748;
  if (!qword_100448748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448748);
  }

  return result;
}

uint64_t sub_100108CC0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10010885C();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100108D78()
{
  result = qword_100448760;
  if (!qword_100448760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448760);
  }

  return result;
}

unint64_t sub_100108DD0()
{
  result = qword_100448768;
  if (!qword_100448768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448768);
  }

  return result;
}

unint64_t sub_100108E28()
{
  result = qword_100448770;
  if (!qword_100448770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448770);
  }

  return result;
}

unint64_t sub_100108E80()
{
  result = qword_100448778;
  if (!qword_100448778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448778);
  }

  return result;
}

uint64_t sub_100108ED4()
{
  v0 = qword_100446B88;

  return v0;
}

unint64_t sub_100108F10()
{
  result = qword_100448780;
  if (!qword_100448780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448780);
  }

  return result;
}

uint64_t sub_100108F64(uint64_t a1)
{
  v1 = sub_10000321C(&qword_1004562C8, &qword_100353800);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_1004562D0, &qword_100353808);
  __chkstk_darwin(v5);
  sub_100108A14();
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

unint64_t sub_10010912C()
{
  result = qword_100448788;
  if (!qword_100448788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448788);
  }

  return result;
}

unint64_t sub_100109184()
{
  result = qword_100448790;
  if (!qword_100448790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448790);
  }

  return result;
}

unint64_t sub_1001091DC()
{
  result = qword_100448798;
  if (!qword_100448798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448798);
  }

  return result;
}

uint64_t sub_100109230(uint64_t a1)
{
  sub_1002D66A0();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100109318(uint64_t a1)
{
  v2 = sub_100108A14();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100109368()
{
  result = qword_1004487B0;
  if (!qword_1004487B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004487B0);
  }

  return result;
}

uint64_t sub_1001093C0(uint64_t a1)
{
  v2 = sub_1001091DC();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100109410()
{
  result = qword_1004487B8;
  if (!qword_1004487B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004487B8);
  }

  return result;
}

uint64_t sub_1001094A8()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051CD58);
  sub_10001EDB8(v5, qword_10051CD58);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_100109618@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100109988()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051CD70);
  sub_10001EDB8(v0, qword_10051CD70);
  return sub_1002D88F0();
}

uint64_t sub_1001099EC()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051CD88);
  v1 = sub_10001EDB8(v0, qword_10051CD88);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100109AAC()
{
  result = swift_getKeyPath();
  qword_10051CDA0 = result;
  return result;
}

uint64_t sub_100109AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_1004562A0, &qword_1003537C0);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_1004562A8, &qword_1003537C8);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100109CB4, 0, 0);
}

uint64_t sub_100109CB4()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_10010AE6C();
  *v2 = v0;
  v2[1] = sub_100109D98;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6E68, 0, &type metadata for AccessibilityVoiceOverBrailleStatusCellsShowGeneralStatusEntity, v3);
}

uint64_t sub_100109D98()
{

  return _swift_task_switch(sub_100109E94, 0, 0);
}

uint64_t sub_100109E94()
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
  if (qword_10043A360 != -1)
  {
    swift_once();
  }

  v3 = qword_10051CDA0;
  *(v0 + 288) = qword_10051CDA0;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100456288, &qword_100456290, &qword_1003537A8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_100109FF8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_100109FF8()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_10010A168;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10010A168()
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
  sub_100109410();
  sub_10010B080();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10010A3E0()
{
  v0 = sub_10000321C(&qword_1004562B0, &qword_1003537D0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A360 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10010B080();
  sub_10002B6E4(&qword_1004562B8, &qword_1004562B0, &qword_1003537D0, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_10010A554(uint64_t *a1))(void *)
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

void (*sub_10010A5C8(uint64_t *a1))(void *)
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

unint64_t sub_10010A664()
{
  result = qword_1004487D0;
  if (!qword_1004487D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004487D0);
  }

  return result;
}

unint64_t sub_10010A6BC()
{
  result = qword_1004487D8;
  if (!qword_1004487D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004487D8);
  }

  return result;
}

uint64_t sub_10010A7B8(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100109AD4(a1, v5, v4);
}

uint64_t sub_10010A864@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A2D0C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10010A8AC()
{
  result = qword_1004487E0;
  if (!qword_1004487E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004487E0);
  }

  return result;
}

unint64_t sub_10010A904()
{
  result = qword_1004487E8;
  if (!qword_1004487E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004487E8);
  }

  return result;
}

uint64_t sub_10010A978()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverTouchBrailleShowGeneralStatus];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10010AA40()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverTouchBrailleShowGeneralStatus:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10010AAD8(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10010AB68, 0, 0);
}

uint64_t sub_10010AB68()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_1004487C8, qword_1002FF9E8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100456288, &qword_100456290, &qword_1003537A8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000035;
  v1[1] = 0x800000010035BDA0;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_10010ACB4()
{
  result = qword_1004487F0;
  if (!qword_1004487F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004487F0);
  }

  return result;
}

uint64_t sub_10010AD08(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10010B2D8();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10010ADBC()
{
  result = qword_1004487F8;
  if (!qword_1004487F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004487F8);
  }

  return result;
}

unint64_t sub_10010AE14()
{
  result = qword_100448800;
  if (!qword_100448800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448800);
  }

  return result;
}

unint64_t sub_10010AE6C()
{
  result = qword_100448808;
  if (!qword_100448808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448808);
  }

  return result;
}

uint64_t sub_10010AEC0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10010B2D8();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10010AF74(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10010B2D8();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10010B028()
{
  result = qword_100448810;
  if (!qword_100448810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448810);
  }

  return result;
}

unint64_t sub_10010B080()
{
  result = qword_100448818;
  if (!qword_100448818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448818);
  }

  return result;
}

uint64_t sub_10010B118(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10010ACB4();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10010B1D0()
{
  result = qword_100448830;
  if (!qword_100448830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448830);
  }

  return result;
}

unint64_t sub_10010B228()
{
  result = qword_100448838;
  if (!qword_100448838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448838);
  }

  return result;
}

unint64_t sub_10010B280()
{
  result = qword_100448840;
  if (!qword_100448840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448840);
  }

  return result;
}

unint64_t sub_10010B2D8()
{
  result = qword_100448848;
  if (!qword_100448848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448848);
  }

  return result;
}

uint64_t sub_10010B32C()
{
  v0 = qword_100446B98;

  return v0;
}

unint64_t sub_10010B368()
{
  result = qword_100448850;
  if (!qword_100448850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448850);
  }

  return result;
}

uint64_t sub_10010B3BC(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100456278, &qword_100353788);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100456280, &qword_100353790);
  __chkstk_darwin(v5);
  sub_10010AE6C();
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

unint64_t sub_10010B584()
{
  result = qword_100448858;
  if (!qword_100448858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448858);
  }

  return result;
}

unint64_t sub_10010B5DC()
{
  result = qword_100448860;
  if (!qword_100448860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448860);
  }

  return result;
}

unint64_t sub_10010B634()
{
  result = qword_100448868;
  if (!qword_100448868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448868);
  }

  return result;
}

uint64_t sub_10010B688(uint64_t a1)
{
  sub_1002D664C();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10010B770(uint64_t a1)
{
  v2 = sub_10010AE6C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10010B7C0()
{
  result = qword_100448880;
  if (!qword_100448880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448880);
  }

  return result;
}

uint64_t sub_10010B818(uint64_t a1)
{
  v2 = sub_10010B634();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10010B868()
{
  result = qword_100448888;
  if (!qword_100448888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448888);
  }

  return result;
}

uint64_t sub_10010B900()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051CDA8);
  sub_10001EDB8(v5, qword_10051CDA8);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_10010BA70@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10010BDE0()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051CDC0);
  sub_10001EDB8(v0, qword_10051CDC0);
  return sub_1002D88F0();
}

uint64_t sub_10010BE44()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051CDD8);
  v1 = sub_10001EDB8(v0, qword_10051CDD8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10010BF04()
{
  result = swift_getKeyPath();
  qword_10051CDF0 = result;
  return result;
}

uint64_t sub_10010BF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100456250, &qword_100353748);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100456258, &qword_100353750);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10010C10C, 0, 0);
}

uint64_t sub_10010C10C()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_10010D2C8();
  *v2 = v0;
  v2[1] = sub_10010C1F0;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6E6C, 0, &type metadata for AccessibilityVoiceOverBrailleStatusCellsShowTextStatusEntity, v3);
}

uint64_t sub_10010C1F0()
{

  return _swift_task_switch(sub_10010C2EC, 0, 0);
}

uint64_t sub_10010C2EC()
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
  if (qword_10043A380 != -1)
  {
    swift_once();
  }

  v3 = qword_10051CDF0;
  *(v0 + 288) = qword_10051CDF0;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100456238, &qword_100456240, &qword_100353730, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_10010C450;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_10010C450()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_10010C5C0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10010C5C0()
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
  sub_10010B868();
  sub_10010D4DC();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10010C838()
{
  v0 = sub_10000321C(&qword_100456260, &qword_100353758);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A380 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10010D4DC();
  sub_10002B6E4(&qword_100456268, &qword_100456260, &qword_100353758, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_10010C9AC(uint64_t *a1))(void *)
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

void (*sub_10010CA20(uint64_t *a1))(void *)
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

unint64_t sub_10010CABC()
{
  result = qword_1004488A0;
  if (!qword_1004488A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004488A0);
  }

  return result;
}

unint64_t sub_10010CB14()
{
  result = qword_1004488A8;
  if (!qword_1004488A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004488A8);
  }

  return result;
}

uint64_t sub_10010CC10(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10010BF2C(a1, v5, v4);
}

uint64_t sub_10010CCBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A3174();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10010CD04()
{
  result = qword_1004488B0;
  if (!qword_1004488B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004488B0);
  }

  return result;
}

unint64_t sub_10010CD5C()
{
  result = qword_1004488B8;
  if (!qword_1004488B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004488B8);
  }

  return result;
}

uint64_t sub_10010CDD0()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverTouchBrailleShowTextStyleStatus];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10010CE98()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverTouchBrailleShowTextStyleStatus:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10010CF30(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10010CFC0, 0, 0);
}

uint64_t sub_10010CFC0()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_100448898, qword_100300020);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100456238, &qword_100456240, &qword_100353730, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000037;
  v1[1] = 0x800000010035BC60;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_10010D110()
{
  result = qword_1004488C0;
  if (!qword_1004488C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004488C0);
  }

  return result;
}

uint64_t sub_10010D164(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10010D734();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10010D218()
{
  result = qword_1004488C8;
  if (!qword_1004488C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004488C8);
  }

  return result;
}

unint64_t sub_10010D270()
{
  result = qword_1004488D0;
  if (!qword_1004488D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004488D0);
  }

  return result;
}

unint64_t sub_10010D2C8()
{
  result = qword_1004488D8;
  if (!qword_1004488D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004488D8);
  }

  return result;
}

uint64_t sub_10010D31C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10010D734();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10010D3D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10010D734();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10010D484()
{
  result = qword_1004488E0;
  if (!qword_1004488E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004488E0);
  }

  return result;
}

unint64_t sub_10010D4DC()
{
  result = qword_1004488E8;
  if (!qword_1004488E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004488E8);
  }

  return result;
}

uint64_t sub_10010D574(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10010D110();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10010D62C()
{
  result = qword_100448900;
  if (!qword_100448900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448900);
  }

  return result;
}

unint64_t sub_10010D684()
{
  result = qword_100448908;
  if (!qword_100448908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448908);
  }

  return result;
}

unint64_t sub_10010D6DC()
{
  result = qword_100448910;
  if (!qword_100448910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448910);
  }

  return result;
}

unint64_t sub_10010D734()
{
  result = qword_100448918;
  if (!qword_100448918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448918);
  }

  return result;
}

uint64_t sub_10010D788()
{
  v0 = qword_100446BA8;

  return v0;
}

unint64_t sub_10010D7C4()
{
  result = qword_100448920;
  if (!qword_100448920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448920);
  }

  return result;
}

uint64_t sub_10010D818(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100456228, &qword_100353710);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100456230, &qword_100353718);
  __chkstk_darwin(v5);
  sub_10010D2C8();
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

unint64_t sub_10010D9E0()
{
  result = qword_100448928;
  if (!qword_100448928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448928);
  }

  return result;
}

unint64_t sub_10010DA38()
{
  result = qword_100448930;
  if (!qword_100448930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448930);
  }

  return result;
}

unint64_t sub_10010DA90()
{
  result = qword_100448938;
  if (!qword_100448938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448938);
  }

  return result;
}

uint64_t sub_10010DAE4(uint64_t a1)
{
  sub_1002D65F8();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10010DBCC(uint64_t a1)
{
  v2 = sub_10010D2C8();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10010DC1C()
{
  result = qword_100448950;
  if (!qword_100448950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448950);
  }

  return result;
}

uint64_t sub_10010DC74(uint64_t a1)
{
  v2 = sub_10010DA90();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10010DCC4()
{
  result = qword_100448958;
  if (!qword_100448958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448958);
  }

  return result;
}

uint64_t sub_10010DD5C()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051CDF8);
  sub_10001EDB8(v5, qword_10051CDF8);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_10010DECC@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10010E23C()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051CE10);
  sub_10001EDB8(v0, qword_10051CE10);
  return sub_1002D88F0();
}

uint64_t sub_10010E2A0()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051CE28);
  v1 = sub_10001EDB8(v0, qword_10051CE28);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10010E360()
{
  result = swift_getKeyPath();
  qword_10051CE40 = result;
  return result;
}

uint64_t sub_10010E388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100456200, &qword_1003536D0);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100456208, &qword_1003536D8);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10010E568, 0, 0);
}

uint64_t sub_10010E568()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_10010F720();
  *v2 = v0;
  v2[1] = sub_10010E64C;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6E70, 0, &type metadata for AccessibilityVoiceOverBrailleEquationsUseNemethCodeEntity, v3);
}

uint64_t sub_10010E64C()
{

  return _swift_task_switch(sub_10010E748, 0, 0);
}

uint64_t sub_10010E748()
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
  if (qword_10043A3A0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051CE40;
  *(v0 + 288) = qword_10051CE40;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_1004561E8, &qword_1004561F0, &qword_1003536B8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_10010E8AC;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_10010E8AC()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_10010EA1C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10010EA1C()
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
  sub_10010DCC4();
  sub_10010F934();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10010EC94()
{
  v0 = sub_10000321C(&qword_100456210, &qword_1003536E0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A3A0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10010F934();
  sub_10002B6E4(&qword_100456218, &qword_100456210, &qword_1003536E0, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_10010EE08(uint64_t *a1))(void *)
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

void (*sub_10010EE7C(uint64_t *a1))(void *)
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

unint64_t sub_10010EF18()
{
  result = qword_100448970;
  if (!qword_100448970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448970);
  }

  return result;
}

unint64_t sub_10010EF70()
{
  result = qword_100448978;
  if (!qword_100448978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448978);
  }

  return result;
}

uint64_t sub_10010F06C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10010E388(a1, v5, v4);
}

uint64_t sub_10010F118@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A35DC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10010F160()
{
  result = qword_100448980;
  if (!qword_100448980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448980);
  }

  return result;
}

unint64_t sub_10010F1B8()
{
  result = qword_100448988;
  if (!qword_100448988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448988);
  }

  return result;
}

uint64_t sub_10010F22C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverAlwaysUseNemethCodeForMathEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10010F2F4()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverAlwaysUseNemethCodeForMathEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10010F38C(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10010F41C, 0, 0);
}

uint64_t sub_10010F41C()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_100448968, qword_100300658);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004561E8, &qword_1004561F0, &qword_1003536B8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000029;
  v1[1] = 0x800000010035F620;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_10010F568()
{
  result = qword_100448990;
  if (!qword_100448990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448990);
  }

  return result;
}

uint64_t sub_10010F5BC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10010FB8C();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10010F670()
{
  result = qword_100448998;
  if (!qword_100448998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448998);
  }

  return result;
}

unint64_t sub_10010F6C8()
{
  result = qword_1004489A0;
  if (!qword_1004489A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004489A0);
  }

  return result;
}

unint64_t sub_10010F720()
{
  result = qword_1004489A8;
  if (!qword_1004489A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004489A8);
  }

  return result;
}

uint64_t sub_10010F774(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10010FB8C();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10010F828(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10010FB8C();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10010F8DC()
{
  result = qword_1004489B0;
  if (!qword_1004489B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004489B0);
  }

  return result;
}

unint64_t sub_10010F934()
{
  result = qword_1004489B8;
  if (!qword_1004489B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004489B8);
  }

  return result;
}

uint64_t sub_10010F9CC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10010F568();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10010FA84()
{
  result = qword_1004489D0;
  if (!qword_1004489D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004489D0);
  }

  return result;
}

unint64_t sub_10010FADC()
{
  result = qword_1004489D8;
  if (!qword_1004489D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004489D8);
  }

  return result;
}

unint64_t sub_10010FB34()
{
  result = qword_1004489E0;
  if (!qword_1004489E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004489E0);
  }

  return result;
}

unint64_t sub_10010FB8C()
{
  result = qword_1004489E8;
  if (!qword_1004489E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004489E8);
  }

  return result;
}

uint64_t sub_10010FBE0()
{
  v0 = qword_100446BB8;

  return v0;
}

unint64_t sub_10010FC1C()
{
  result = qword_1004489F0;
  if (!qword_1004489F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004489F0);
  }

  return result;
}

uint64_t sub_10010FC70(uint64_t a1)
{
  v1 = sub_10000321C(&qword_1004561D8, &qword_100353698);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_1004561E0, &qword_1003536A0);
  __chkstk_darwin(v5);
  sub_10010F720();
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

unint64_t sub_10010FE38()
{
  result = qword_1004489F8;
  if (!qword_1004489F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004489F8);
  }

  return result;
}

unint64_t sub_10010FE90()
{
  result = qword_100448A00;
  if (!qword_100448A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448A00);
  }

  return result;
}

unint64_t sub_10010FEE8()
{
  result = qword_100448A08;
  if (!qword_100448A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448A08);
  }

  return result;
}

uint64_t sub_10010FF3C(uint64_t a1)
{
  sub_1002D65A4();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100110024(uint64_t a1)
{
  v2 = sub_10010F720();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100110074()
{
  result = qword_100448A20;
  if (!qword_100448A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448A20);
  }

  return result;
}

uint64_t sub_1001100CC(uint64_t a1)
{
  v2 = sub_10010FEE8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10011011C()
{
  result = qword_100448A28;
  if (!qword_100448A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448A28);
  }

  return result;
}

uint64_t sub_1001101B4()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051CE48);
  sub_10001EDB8(v5, qword_10051CE48);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_100110324@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100110694()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051CE60);
  sub_10001EDB8(v0, qword_10051CE60);
  return sub_1002D88F0();
}

uint64_t sub_1001106F8()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051CE78);
  v1 = sub_10001EDB8(v0, qword_10051CE78);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001107B8()
{
  result = swift_getKeyPath();
  qword_10051CE90 = result;
  return result;
}

uint64_t sub_1001107E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_1004561B0, &qword_100353658);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_1004561B8, &qword_100353660);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001109C0, 0, 0);
}

uint64_t sub_1001109C0()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_100111B78();
  *v2 = v0;
  v2[1] = sub_100110AA4;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6E74, 0, &type metadata for AccessibilityVoiceOverBrailleShowOnscreenKeyboardEntity, v3);
}

uint64_t sub_100110AA4()
{

  return _swift_task_switch(sub_100110BA0, 0, 0);
}

uint64_t sub_100110BA0()
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
  if (qword_10043A3C0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051CE90;
  *(v0 + 288) = qword_10051CE90;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100456198, &qword_1004561A0, &qword_100353640, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_100110D04;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_100110D04()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_100110E74;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100110E74()
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
  sub_10011011C();
  sub_100111D8C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001110EC()
{
  v0 = sub_10000321C(&qword_1004561C0, &qword_100353668);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A3C0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100111D8C();
  sub_10002B6E4(&qword_1004561C8, &qword_1004561C0, &qword_100353668, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_100111260(uint64_t *a1))(void *)
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

void (*sub_1001112D4(uint64_t *a1))(void *)
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

unint64_t sub_100111370()
{
  result = qword_100448A40;
  if (!qword_100448A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448A40);
  }

  return result;
}

unint64_t sub_1001113C8()
{
  result = qword_100448A48;
  if (!qword_100448A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448A48);
  }

  return result;
}

uint64_t sub_1001114C4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001107E0(a1, v5, v4);
}

uint64_t sub_100111570@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A3A44();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001115B8()
{
  result = qword_100448A50;
  if (!qword_100448A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448A50);
  }

  return result;
}

unint64_t sub_100111610()
{
  result = qword_100448A58;
  if (!qword_100448A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448A58);
  }

  return result;
}

uint64_t sub_100111684()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverShowSoftwareKeyboardWithBraille];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10011174C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverShowSoftwareKeyboardWithBraille:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001117E4(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100111874, 0, 0);
}

uint64_t sub_100111874()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_100448A38, qword_100300C90);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100456198, &qword_1004561A0, &qword_100353640, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000028;
  v1[1] = 0x800000010035BD10;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1001119C0()
{
  result = qword_100448A60;
  if (!qword_100448A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448A60);
  }

  return result;
}

uint64_t sub_100111A14(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100111FE4();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100111AC8()
{
  result = qword_100448A68;
  if (!qword_100448A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448A68);
  }

  return result;
}

unint64_t sub_100111B20()
{
  result = qword_100448A70;
  if (!qword_100448A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448A70);
  }

  return result;
}

unint64_t sub_100111B78()
{
  result = qword_100448A78;
  if (!qword_100448A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448A78);
  }

  return result;
}

uint64_t sub_100111BCC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100111FE4();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100111C80(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100111FE4();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100111D34()
{
  result = qword_100448A80;
  if (!qword_100448A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448A80);
  }

  return result;
}

unint64_t sub_100111D8C()
{
  result = qword_100448A88;
  if (!qword_100448A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448A88);
  }

  return result;
}

uint64_t sub_100111E24(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001119C0();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100111EDC()
{
  result = qword_100448AA0;
  if (!qword_100448AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448AA0);
  }

  return result;
}

unint64_t sub_100111F34()
{
  result = qword_100448AA8;
  if (!qword_100448AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448AA8);
  }

  return result;
}

unint64_t sub_100111F8C()
{
  result = qword_100448AB0;
  if (!qword_100448AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448AB0);
  }

  return result;
}

unint64_t sub_100111FE4()
{
  result = qword_100448AB8;
  if (!qword_100448AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448AB8);
  }

  return result;
}

uint64_t sub_100112038()
{
  v0 = qword_100446BC8;

  return v0;
}

unint64_t sub_100112074()
{
  result = qword_100448AC0;
  if (!qword_100448AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448AC0);
  }

  return result;
}

uint64_t sub_1001120C8(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100456188, &qword_100353620);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100456190, &qword_100353628);
  __chkstk_darwin(v5);
  sub_100111B78();
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

unint64_t sub_100112290()
{
  result = qword_100448AC8;
  if (!qword_100448AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448AC8);
  }

  return result;
}

unint64_t sub_1001122E8()
{
  result = qword_100448AD0;
  if (!qword_100448AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448AD0);
  }

  return result;
}

unint64_t sub_100112340()
{
  result = qword_100448AD8;
  if (!qword_100448AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448AD8);
  }

  return result;
}

uint64_t sub_100112394(uint64_t a1)
{
  sub_1002D6550();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10011247C(uint64_t a1)
{
  v2 = sub_100111B78();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001124CC()
{
  result = qword_100448AF0;
  if (!qword_100448AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448AF0);
  }

  return result;
}

uint64_t sub_100112524(uint64_t a1)
{
  v2 = sub_100112340();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100112574()
{
  result = qword_100448AF8;
  if (!qword_100448AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448AF8);
  }

  return result;
}

uint64_t sub_10011260C()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051CE98);
  sub_10001EDB8(v5, qword_10051CE98);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_10011277C@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100112AEC()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051CEB0);
  sub_10001EDB8(v0, qword_10051CEB0);
  return sub_1002D88F0();
}

uint64_t sub_100112B50()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051CEC8);
  v1 = sub_10001EDB8(v0, qword_10051CEC8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100112C10()
{
  result = swift_getKeyPath();
  qword_10051CEE0 = result;
  return result;
}

uint64_t sub_100112C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100456160, &qword_1003535E0);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100456168, &qword_1003535E8);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100112E18, 0, 0);
}

uint64_t sub_100112E18()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_100113FD0();
  *v2 = v0;
  v2[1] = sub_100112EFC;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6E78, 0, &type metadata for AccessibilityVoiceOverBrailleTurnPagesWhenPanningEntity, v3);
}

uint64_t sub_100112EFC()
{

  return _swift_task_switch(sub_100112FF8, 0, 0);
}

uint64_t sub_100112FF8()
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
  if (qword_10043A3E0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051CEE0;
  *(v0 + 288) = qword_10051CEE0;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100456148, &qword_100456150, &qword_1003535C8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_10011315C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_10011315C()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1001132CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001132CC()
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
  sub_100112574();
  sub_1001141E4();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100113544()
{
  v0 = sub_10000321C(&qword_100456170, &qword_1003535F0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A3E0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001141E4();
  sub_10002B6E4(&qword_100456178, &qword_100456170, &qword_1003535F0, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1001136B8(uint64_t *a1))(void *)
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

void (*sub_10011372C(uint64_t *a1))(void *)
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

unint64_t sub_1001137C8()
{
  result = qword_100448B10;
  if (!qword_100448B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448B10);
  }

  return result;
}

unint64_t sub_100113820()
{
  result = qword_100448B18;
  if (!qword_100448B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448B18);
  }

  return result;
}

uint64_t sub_10011391C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100112C38(a1, v5, v4);
}

uint64_t sub_1001139C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A3EBC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100113A10()
{
  result = qword_100448B20;
  if (!qword_100448B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448B20);
  }

  return result;
}

unint64_t sub_100113A68()
{
  result = qword_100448B28;
  if (!qword_100448B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448B28);
  }

  return result;
}

uint64_t sub_100113ADC()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverTouchBraillePanningAutoTurnsReadingContent];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100113BA4()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverTouchBraillePanningAutoTurnsReadingContent:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100113C3C(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100113CCC, 0, 0);
}

uint64_t sub_100113CCC()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_100448B08, qword_1003012C8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100456148, &qword_100456150, &qword_1003535C8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000027;
  v1[1] = 0x800000010035A710;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_100113E18()
{
  result = qword_100448B30;
  if (!qword_100448B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448B30);
  }

  return result;
}

uint64_t sub_100113E6C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10011443C();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100113F20()
{
  result = qword_100448B38;
  if (!qword_100448B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448B38);
  }

  return result;
}

unint64_t sub_100113F78()
{
  result = qword_100448B40;
  if (!qword_100448B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448B40);
  }

  return result;
}

unint64_t sub_100113FD0()
{
  result = qword_100448B48;
  if (!qword_100448B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448B48);
  }

  return result;
}

uint64_t sub_100114024(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10011443C();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1001140D8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10011443C();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10011418C()
{
  result = qword_100448B50;
  if (!qword_100448B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448B50);
  }

  return result;
}

unint64_t sub_1001141E4()
{
  result = qword_100448B58;
  if (!qword_100448B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448B58);
  }

  return result;
}

uint64_t sub_10011427C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100113E18();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100114334()
{
  result = qword_100448B70;
  if (!qword_100448B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448B70);
  }

  return result;
}

unint64_t sub_10011438C()
{
  result = qword_100448B78;
  if (!qword_100448B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448B78);
  }

  return result;
}

unint64_t sub_1001143E4()
{
  result = qword_100448B80;
  if (!qword_100448B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448B80);
  }

  return result;
}

unint64_t sub_10011443C()
{
  result = qword_100448B88;
  if (!qword_100448B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448B88);
  }

  return result;
}

uint64_t sub_100114490()
{
  v0 = qword_100446BD8;

  return v0;
}

unint64_t sub_1001144CC()
{
  result = qword_100448B90;
  if (!qword_100448B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448B90);
  }

  return result;
}

uint64_t sub_100114520(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100456138, &qword_1003535A8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100456140, &qword_1003535B0);
  __chkstk_darwin(v5);
  sub_100113FD0();
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

unint64_t sub_1001146E8()
{
  result = qword_100448B98;
  if (!qword_100448B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448B98);
  }

  return result;
}

unint64_t sub_100114740()
{
  result = qword_100448BA0;
  if (!qword_100448BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448BA0);
  }

  return result;
}

unint64_t sub_100114798()
{
  result = qword_100448BA8;
  if (!qword_100448BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448BA8);
  }

  return result;
}

uint64_t sub_1001147EC(uint64_t a1)
{
  sub_1002D64FC();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1001148D4(uint64_t a1)
{
  v2 = sub_100113FD0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100114924()
{
  result = qword_100448BC0;
  if (!qword_100448BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448BC0);
  }

  return result;
}

uint64_t sub_10011497C(uint64_t a1)
{
  v2 = sub_100114798();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001149CC()
{
  result = qword_100448BC8;
  if (!qword_100448BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448BC8);
  }

  return result;
}

uint64_t sub_100114A88@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100114DFC()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051CF00);
  sub_10001EDB8(v0, qword_10051CF00);
  return sub_1002D88F0();
}

uint64_t sub_100114E60()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051CF18);
  v1 = sub_10001EDB8(v0, qword_10051CF18);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100114F20()
{
  result = swift_getKeyPath();
  qword_10051CF30 = result;
  return result;
}

uint64_t sub_100114F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100456110, &qword_100353568);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100456118, &qword_100353570);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100115128, 0, 0);
}

uint64_t sub_100115128()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1001162D4();
  *v2 = v0;
  v2[1] = sub_10011520C;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6E7C, 0, &type metadata for AccessibilityVoiceOverBrailleWordWrapEntity, v3);
}

uint64_t sub_10011520C()
{

  return _swift_task_switch(sub_100115308, 0, 0);
}

uint64_t sub_100115308()
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
  if (qword_10043A400 != -1)
  {
    swift_once();
  }

  v3 = qword_10051CF30;
  *(v0 + 288) = qword_10051CF30;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_1004560F8, &qword_100456100, &qword_100353550, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_10011546C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_10011546C()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1001155DC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001155DC()
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
  sub_1001149CC();
  sub_1001164E8();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100115854()
{
  v0 = sub_10000321C(&qword_100456120, &qword_100353578);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A400 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001164E8();
  sub_10002B6E4(&qword_100456128, &qword_100456120, &qword_100353578, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1001159C8(uint64_t *a1))(void *)
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

void (*sub_100115A3C(uint64_t *a1))(void *)
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

unint64_t sub_100115AD8()
{
  result = qword_100448BE0;
  if (!qword_100448BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448BE0);
  }

  return result;
}

unint64_t sub_100115B30()
{
  result = qword_100448BE8;
  if (!qword_100448BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448BE8);
  }

  return result;
}

uint64_t sub_100115C2C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100114F48(a1, v5, v4);
}

uint64_t sub_100115CD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A4324();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100115D20()
{
  result = qword_100448BF0;
  if (!qword_100448BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448BF0);
  }

  return result;
}

unint64_t sub_100115D78()
{
  result = qword_100448BF8;
  if (!qword_100448BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448BF8);
  }

  return result;
}

uint64_t sub_100115DEC()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverBrailleWordWrapEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100115EB4()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverBrailleWordWrapEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100115F4C(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100115FDC, 0, 0);
}

uint64_t sub_100115FDC()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_100448BD8, qword_100301900);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004560F8, &qword_100456100, &qword_100353550, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000021;
  v1[1] = 0x8000000100359B10;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_10011611C()
{
  result = qword_100448C00;
  if (!qword_100448C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448C00);
  }

  return result;
}

uint64_t sub_100116170(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100116740();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100116224()
{
  result = qword_100448C08;
  if (!qword_100448C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448C08);
  }

  return result;
}

unint64_t sub_10011627C()
{
  result = qword_100448C10;
  if (!qword_100448C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448C10);
  }

  return result;
}

unint64_t sub_1001162D4()
{
  result = qword_100448C18;
  if (!qword_100448C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448C18);
  }

  return result;
}

uint64_t sub_100116328(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100116740();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1001163DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100116740();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100116490()
{
  result = qword_100448C20;
  if (!qword_100448C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448C20);
  }

  return result;
}

unint64_t sub_1001164E8()
{
  result = qword_100448C28;
  if (!qword_100448C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448C28);
  }

  return result;
}

uint64_t sub_100116580(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10011611C();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100116638()
{
  result = qword_100448C40;
  if (!qword_100448C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448C40);
  }

  return result;
}

unint64_t sub_100116690()
{
  result = qword_100448C48;
  if (!qword_100448C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448C48);
  }

  return result;
}

unint64_t sub_1001166E8()
{
  result = qword_100448C50;
  if (!qword_100448C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448C50);
  }

  return result;
}

unint64_t sub_100116740()
{
  result = qword_100448C58;
  if (!qword_100448C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448C58);
  }

  return result;
}

uint64_t sub_100116794()
{
  v0 = qword_100446BE8;

  return v0;
}

unint64_t sub_1001167D0()
{
  result = qword_100448C60;
  if (!qword_100448C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448C60);
  }

  return result;
}

uint64_t sub_100116824(uint64_t a1)
{
  v1 = sub_10000321C(&qword_1004560E8, &qword_100353530);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_1004560F0, &qword_100353538);
  __chkstk_darwin(v5);
  sub_1001162D4();
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

unint64_t sub_1001169EC()
{
  result = qword_100448C68;
  if (!qword_100448C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448C68);
  }

  return result;
}

unint64_t sub_100116A44()
{
  result = qword_100448C70;
  if (!qword_100448C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448C70);
  }

  return result;
}

unint64_t sub_100116A9C()
{
  result = qword_100448C78;
  if (!qword_100448C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448C78);
  }

  return result;
}

uint64_t sub_100116AF0(uint64_t a1)
{
  sub_1002D64A8();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100116BD8(uint64_t a1)
{
  v2 = sub_1001162D4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100116C28()
{
  result = qword_100448C90;
  if (!qword_100448C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448C90);
  }

  return result;
}

uint64_t sub_100116C80(uint64_t a1)
{
  v2 = sub_100116A9C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100116CD0()
{
  result = qword_100448C98;
  if (!qword_100448C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448C98);
  }

  return result;
}

uint64_t sub_100116D68()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051CF38);
  sub_10001EDB8(v5, qword_10051CF38);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_100116ED8@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100117248()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051CF50);
  sub_10001EDB8(v0, qword_10051CF50);
  return sub_1002D88F0();
}

uint64_t sub_1001172AC()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051CF68);
  v1 = sub_10001EDB8(v0, qword_10051CF68);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10011736C()
{
  result = swift_getKeyPath();
  qword_10051CF80 = result;
  return result;
}

uint64_t sub_100117394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_1004560C0, &qword_1003534F0);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_1004560C8, &qword_1003534F8);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100117574, 0, 0);
}

uint64_t sub_100117574()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_10011872C();
  *v2 = v0;
  v2[1] = sub_100117658;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6E80, 0, &type metadata for AccessibilityVoiceOverBrailleTextFormattingEntity, v3);
}

uint64_t sub_100117658()
{

  return _swift_task_switch(sub_100117754, 0, 0);
}

uint64_t sub_100117754()
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
  if (qword_10043A420 != -1)
  {
    swift_once();
  }

  v3 = qword_10051CF80;
  *(v0 + 288) = qword_10051CF80;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_1004560A8, &qword_1004560B0, &qword_1003534D8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1001178B8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1001178B8()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_100117A28;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100117A28()
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
  sub_100116CD0();
  sub_100118940();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100117CA0()
{
  v0 = sub_10000321C(&qword_1004560D0, &qword_100353500);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A420 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100118940();
  sub_10002B6E4(&qword_1004560D8, &qword_1004560D0, &qword_100353500, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_100117E14(uint64_t *a1))(void *)
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

void (*sub_100117E88(uint64_t *a1))(void *)
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

unint64_t sub_100117F24()
{
  result = qword_100448CB0;
  if (!qword_100448CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448CB0);
  }

  return result;
}

unint64_t sub_100117F7C()
{
  result = qword_100448CB8;
  if (!qword_100448CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448CB8);
  }

  return result;
}

uint64_t sub_100118078(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100117394(a1, v5, v4);
}

uint64_t sub_100118124@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A478C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10011816C()
{
  result = qword_100448CC0;
  if (!qword_100448CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448CC0);
  }

  return result;
}

unint64_t sub_1001181C4()
{
  result = qword_100448CC8;
  if (!qword_100448CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448CC8);
  }

  return result;
}

uint64_t sub_100118238()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverBrailleFormattingEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100118300()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverBrailleFormattingEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100118398(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100118428, 0, 0);
}

uint64_t sub_100118428()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_100448CA8, qword_100301F38);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004560A8, &qword_1004560B0, &qword_1003534D8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD00000000000002ALL;
  v1[1] = 0x8000000100360E30;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_100118574()
{
  result = qword_100448CD0;
  if (!qword_100448CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448CD0);
  }

  return result;
}

uint64_t sub_1001185C8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100118B98();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10011867C()
{
  result = qword_100448CD8;
  if (!qword_100448CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448CD8);
  }

  return result;
}

unint64_t sub_1001186D4()
{
  result = qword_100448CE0;
  if (!qword_100448CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448CE0);
  }

  return result;
}

unint64_t sub_10011872C()
{
  result = qword_100448CE8;
  if (!qword_100448CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448CE8);
  }

  return result;
}

uint64_t sub_100118780(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100118B98();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100118834(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100118B98();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1001188E8()
{
  result = qword_100448CF0;
  if (!qword_100448CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448CF0);
  }

  return result;
}

unint64_t sub_100118940()
{
  result = qword_100448CF8;
  if (!qword_100448CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448CF8);
  }

  return result;
}

uint64_t sub_1001189D8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100118574();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100118A90()
{
  result = qword_100448D10;
  if (!qword_100448D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448D10);
  }

  return result;
}

unint64_t sub_100118AE8()
{
  result = qword_100448D18;
  if (!qword_100448D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448D18);
  }

  return result;
}

unint64_t sub_100118B40()
{
  result = qword_100448D20;
  if (!qword_100448D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448D20);
  }

  return result;
}

unint64_t sub_100118B98()
{
  result = qword_100448D28;
  if (!qword_100448D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448D28);
  }

  return result;
}

uint64_t sub_100118BEC()
{
  v0 = qword_100446BF8;

  return v0;
}

unint64_t sub_100118C28()
{
  result = qword_100448D30;
  if (!qword_100448D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448D30);
  }

  return result;
}

uint64_t sub_100118C7C(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100456098, &qword_1003534B8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_1004560A0, &qword_1003534C0);
  __chkstk_darwin(v5);
  sub_10011872C();
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

unint64_t sub_100118E44()
{
  result = qword_100448D38;
  if (!qword_100448D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448D38);
  }

  return result;
}

unint64_t sub_100118E9C()
{
  result = qword_100448D40;
  if (!qword_100448D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448D40);
  }

  return result;
}

unint64_t sub_100118EF4()
{
  result = qword_100448D48;
  if (!qword_100448D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448D48);
  }

  return result;
}

uint64_t sub_100118F48(uint64_t a1)
{
  sub_1002D6454();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100119030(uint64_t a1)
{
  v2 = sub_10011872C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100119080()
{
  result = qword_100448D60;
  if (!qword_100448D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448D60);
  }

  return result;
}

uint64_t sub_1001190D8(uint64_t a1)
{
  v2 = sub_100118EF4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100119128()
{
  result = qword_100448D68;
  if (!qword_100448D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448D68);
  }

  return result;
}

uint64_t sub_1001191EC@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100119568()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051CFA0);
  sub_10001EDB8(v0, qword_10051CFA0);
  return sub_1002D88F0();
}

uint64_t sub_1001195CC()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051CFB8);
  v1 = sub_10001EDB8(v0, qword_10051CFB8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10011968C()
{
  result = swift_getKeyPath();
  qword_10051CFD0 = result;
  return result;
}

uint64_t sub_1001196B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100456070, &qword_100353478);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100456078, &qword_100353480);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100119894, 0, 0);
}

uint64_t sub_100119894()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_10011AA48();
  *v2 = v0;
  v2[1] = sub_100119978;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6E84, 0, &type metadata for AccessibilityVoiceOverBrailleSoundCurtainEntity, v3);
}

uint64_t sub_100119978()
{

  return _swift_task_switch(sub_100119A74, 0, 0);
}

uint64_t sub_100119A74()
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
  if (qword_10043A440 != -1)
  {
    swift_once();
  }

  v3 = qword_10051CFD0;
  *(v0 + 288) = qword_10051CFD0;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100456058, &qword_100456060, &qword_100353460, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_100119BD8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_100119BD8()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_100119D48;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100119D48()
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
  sub_100119128();
  sub_10011AC5C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100119FC0()
{
  v0 = sub_10000321C(&qword_100456080, &qword_100353488);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A440 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10011AC5C();
  sub_10002B6E4(&qword_100456088, &qword_100456080, &qword_100353488, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_10011A134(uint64_t *a1))(void *)
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

void (*sub_10011A1A8(uint64_t *a1))(void *)
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

unint64_t sub_10011A244()
{
  result = qword_100448D80;
  if (!qword_100448D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448D80);
  }

  return result;
}

unint64_t sub_10011A29C()
{
  result = qword_100448D88;
  if (!qword_100448D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448D88);
  }

  return result;
}

uint64_t sub_10011A398(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001196B4(a1, v5, v4);
}

uint64_t sub_10011A444@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A4BF4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10011A48C()
{
  result = qword_100448D90;
  if (!qword_100448D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448D90);
  }

  return result;
}

unint64_t sub_10011A4E4()
{
  result = qword_100448D98;
  if (!qword_100448D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448D98);
  }

  return result;
}

uint64_t sub_10011A558()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverSoundCurtain];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10011A620()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverSoundCurtain:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10011A6B8(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10011A748, 0, 0);
}

uint64_t sub_10011A748()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_100448D78, qword_100302570);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100456058, &qword_100456060, &qword_100353460, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000025;
  v1[1] = 0x800000010035B8B0;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_10011A890()
{
  result = qword_100448DA0;
  if (!qword_100448DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448DA0);
  }

  return result;
}

uint64_t sub_10011A8E4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10011AEB4();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10011A998()
{
  result = qword_100448DA8;
  if (!qword_100448DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448DA8);
  }

  return result;
}

unint64_t sub_10011A9F0()
{
  result = qword_100448DB0;
  if (!qword_100448DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448DB0);
  }

  return result;
}

unint64_t sub_10011AA48()
{
  result = qword_100448DB8;
  if (!qword_100448DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448DB8);
  }

  return result;
}

uint64_t sub_10011AA9C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10011AEB4();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10011AB50(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10011AEB4();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10011AC04()
{
  result = qword_100448DC0;
  if (!qword_100448DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448DC0);
  }

  return result;
}

unint64_t sub_10011AC5C()
{
  result = qword_100448DC8;
  if (!qword_100448DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448DC8);
  }

  return result;
}

uint64_t sub_10011ACF4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10011A890();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10011ADAC()
{
  result = qword_100448DE0;
  if (!qword_100448DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448DE0);
  }

  return result;
}

unint64_t sub_10011AE04()
{
  result = qword_100448DE8;
  if (!qword_100448DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448DE8);
  }

  return result;
}

unint64_t sub_10011AE5C()
{
  result = qword_100448DF0;
  if (!qword_100448DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448DF0);
  }

  return result;
}

unint64_t sub_10011AEB4()
{
  result = qword_100448DF8;
  if (!qword_100448DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448DF8);
  }

  return result;
}

uint64_t sub_10011AF08()
{
  v0 = qword_100446C08;

  return v0;
}

unint64_t sub_10011AF44()
{
  result = qword_100448E00;
  if (!qword_100448E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448E00);
  }

  return result;
}

uint64_t sub_10011AF98(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100456048, &qword_100353440);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100456050, &qword_100353448);
  __chkstk_darwin(v5);
  sub_10011AA48();
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

unint64_t sub_10011B160()
{
  result = qword_100448E08;
  if (!qword_100448E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448E08);
  }

  return result;
}

unint64_t sub_10011B1B8()
{
  result = qword_100448E10;
  if (!qword_100448E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448E10);
  }

  return result;
}

unint64_t sub_10011B210()
{
  result = qword_100448E18;
  if (!qword_100448E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448E18);
  }

  return result;
}

uint64_t sub_10011B264(uint64_t a1)
{
  sub_1002D6400();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10011B34C(uint64_t a1)
{
  v2 = sub_10011AA48();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10011B39C()
{
  result = qword_100448E30;
  if (!qword_100448E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448E30);
  }

  return result;
}

uint64_t sub_10011B3F4(uint64_t a1)
{
  v2 = sub_10011B210();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10011B444()
{
  result = qword_100448E38;
  if (!qword_100448E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448E38);
  }

  return result;
}

uint64_t sub_10011B4DC()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051CFD8);
  sub_10001EDB8(v5, qword_10051CFD8);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_10011B64C@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10011B9BC()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051CFF0);
  sub_10001EDB8(v0, qword_10051CFF0);
  return sub_1002D88F0();
}

uint64_t sub_10011BA20()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D008);
  v1 = sub_10001EDB8(v0, qword_10051D008);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10011BAE0()
{
  result = swift_getKeyPath();
  qword_10051D020 = result;
  return result;
}

uint64_t sub_10011BB08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100456020, &qword_100353400);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100456028, &qword_100353408);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10011BCE8, 0, 0);
}

uint64_t sub_10011BCE8()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_10011CEA0();
  *v2 = v0;
  v2[1] = sub_10011BDCC;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6E88, 0, &type metadata for AccessibilityVoiceOverBrailleEnableBluetoothOnStartEntity, v3);
}

uint64_t sub_10011BDCC()
{

  return _swift_task_switch(sub_10011BEC8, 0, 0);
}

uint64_t sub_10011BEC8()
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
  if (qword_10043A460 != -1)
  {
    swift_once();
  }

  v3 = qword_10051D020;
  *(v0 + 288) = qword_10051D020;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100456008, &qword_100456010, &qword_1003533E8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_10011C02C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_10011C02C()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_10011C19C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10011C19C()
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
  sub_10011B444();
  sub_10011D0B4();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10011C414()
{
  v0 = sub_10000321C(&qword_100456030, &qword_100353410);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A460 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10011D0B4();
  sub_10002B6E4(&qword_100456038, &qword_100456030, &qword_100353410, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_10011C588(uint64_t *a1))(void *)
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

void (*sub_10011C5FC(uint64_t *a1))(void *)
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

unint64_t sub_10011C698()
{
  result = qword_100448E50;
  if (!qword_100448E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448E50);
  }

  return result;
}

unint64_t sub_10011C6F0()
{
  result = qword_100448E58;
  if (!qword_100448E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448E58);
  }

  return result;
}

uint64_t sub_10011C7EC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10011BB08(a1, v5, v4);
}

uint64_t sub_10011C898@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A505C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10011C8E0()
{
  result = qword_100448E60;
  if (!qword_100448E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448E60);
  }

  return result;
}

unint64_t sub_10011C938()
{
  result = qword_100448E68;
  if (!qword_100448E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448E68);
  }

  return result;
}

uint64_t sub_10011C9AC()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverAlwaysTurnOnBluetooth];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10011CA74()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverAlwaysTurnOnBluetooth:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10011CB0C(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10011CB9C, 0, 0);
}

uint64_t sub_10011CB9C()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_100448E48, qword_100302BA8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100456008, &qword_100456010, &qword_1003533E8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000036;
  v1[1] = 0x800000010035F720;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_10011CCE8()
{
  result = qword_100448E70;
  if (!qword_100448E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448E70);
  }

  return result;
}

uint64_t sub_10011CD3C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10011D30C();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10011CDF0()
{
  result = qword_100448E78;
  if (!qword_100448E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448E78);
  }

  return result;
}

unint64_t sub_10011CE48()
{
  result = qword_100448E80;
  if (!qword_100448E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448E80);
  }

  return result;
}

unint64_t sub_10011CEA0()
{
  result = qword_100448E88;
  if (!qword_100448E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448E88);
  }

  return result;
}

uint64_t sub_10011CEF4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10011D30C();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10011CFA8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10011D30C();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10011D05C()
{
  result = qword_100448E90;
  if (!qword_100448E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448E90);
  }

  return result;
}

unint64_t sub_10011D0B4()
{
  result = qword_100448E98;
  if (!qword_100448E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448E98);
  }

  return result;
}

uint64_t sub_10011D14C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10011CCE8();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10011D204()
{
  result = qword_100448EB0;
  if (!qword_100448EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448EB0);
  }

  return result;
}

unint64_t sub_10011D25C()
{
  result = qword_100448EB8;
  if (!qword_100448EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448EB8);
  }

  return result;
}

unint64_t sub_10011D2B4()
{
  result = qword_100448EC0;
  if (!qword_100448EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448EC0);
  }

  return result;
}

unint64_t sub_10011D30C()
{
  result = qword_100448EC8;
  if (!qword_100448EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448EC8);
  }

  return result;
}

uint64_t sub_10011D360()
{
  v0 = qword_100446C18;

  return v0;
}

unint64_t sub_10011D39C()
{
  result = qword_100448ED0;
  if (!qword_100448ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448ED0);
  }

  return result;
}

uint64_t sub_10011D3F0(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100455FF8, &qword_1003533C8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100456000, &qword_1003533D0);
  __chkstk_darwin(v5);
  sub_10011CEA0();
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

unint64_t sub_10011D5B8()
{
  result = qword_100448ED8;
  if (!qword_100448ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448ED8);
  }

  return result;
}

unint64_t sub_10011D610()
{
  result = qword_100448EE0;
  if (!qword_100448EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448EE0);
  }

  return result;
}

unint64_t sub_10011D668()
{
  result = qword_100448EE8;
  if (!qword_100448EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448EE8);
  }

  return result;
}

uint64_t sub_10011D6BC(uint64_t a1)
{
  sub_1002D63AC();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10011D7A4(uint64_t a1)
{
  v2 = sub_10011CEA0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10011D7F4()
{
  result = qword_100448F00;
  if (!qword_100448F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448F00);
  }

  return result;
}

uint64_t sub_10011D84C(uint64_t a1)
{
  v2 = sub_10011D668();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10011D89C()
{
  result = qword_100448F08;
  if (!qword_100448F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448F08);
  }

  return result;
}

uint64_t sub_10011D934()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051D028);
  sub_10001EDB8(v5, qword_10051D028);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_10011DAA4@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10011DE14()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D040);
  sub_10001EDB8(v0, qword_10051D040);
  return sub_1002D88F0();
}

uint64_t sub_10011DE78()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D058);
  v1 = sub_10001EDB8(v0, qword_10051D058);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10011DF38()
{
  result = swift_getKeyPath();
  qword_10051D070 = result;
  return result;
}

uint64_t sub_10011DF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100455FD0, &qword_100353388);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100455FD8, &qword_100353390);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10011E140, 0, 0);
}

uint64_t sub_10011E140()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_10011F2F8();
  *v2 = v0;
  v2[1] = sub_10011E224;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6E8C, 0, &type metadata for AccessibilityVoiceOverBrailleBrailleScreenInputReverseDotPositionsEntity, v3);
}

uint64_t sub_10011E224()
{

  return _swift_task_switch(sub_10011E320, 0, 0);
}

uint64_t sub_10011E320()
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
  if (qword_10043A480 != -1)
  {
    swift_once();
  }

  v3 = qword_10051D070;
  *(v0 + 288) = qword_10051D070;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100455FB8, &qword_100455FC0, &qword_100353370, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_10011E484;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_10011E484()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_10011E5F4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10011E5F4()
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
  sub_10011D89C();
  sub_10011F50C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10011E86C()
{
  v0 = sub_10000321C(&qword_100455FE0, &qword_100353398);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A480 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10011F50C();
  sub_10002B6E4(&qword_100455FE8, &qword_100455FE0, &qword_100353398, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_10011E9E0(uint64_t *a1))(void *)
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

void (*sub_10011EA54(uint64_t *a1))(void *)
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

unint64_t sub_10011EAF0()
{
  result = qword_100448F20;
  if (!qword_100448F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448F20);
  }

  return result;
}

unint64_t sub_10011EB48()
{
  result = qword_100448F28;
  if (!qword_100448F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448F28);
  }

  return result;
}

uint64_t sub_10011EC44(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10011DF60(a1, v5, v4);
}

uint64_t sub_10011ECF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A54C4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10011ED38()
{
  result = qword_100448F30;
  if (!qword_100448F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448F30);
  }

  return result;
}

unint64_t sub_10011ED90()
{
  result = qword_100448F38;
  if (!qword_100448F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448F38);
  }

  return result;
}

uint64_t sub_10011EE04()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverTouchBrailleShouldReverseDots];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10011EECC()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverTouchBrailleShouldReverseDots:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10011EF64(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10011EFF4, 0, 0);
}

uint64_t sub_10011EFF4()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_100448F18, qword_1003031E0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455FB8, &qword_100455FC0, &qword_100353370, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000040;
  v1[1] = 0x800000010035C350;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_10011F140()
{
  result = qword_100448F40;
  if (!qword_100448F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448F40);
  }

  return result;
}

uint64_t sub_10011F194(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10011F764();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10011F248()
{
  result = qword_100448F48;
  if (!qword_100448F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448F48);
  }

  return result;
}

unint64_t sub_10011F2A0()
{
  result = qword_100448F50;
  if (!qword_100448F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448F50);
  }

  return result;
}

unint64_t sub_10011F2F8()
{
  result = qword_100448F58;
  if (!qword_100448F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448F58);
  }

  return result;
}

uint64_t sub_10011F34C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10011F764();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10011F400(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10011F764();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10011F4B4()
{
  result = qword_100448F60;
  if (!qword_100448F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448F60);
  }

  return result;
}

unint64_t sub_10011F50C()
{
  result = qword_100448F68;
  if (!qword_100448F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448F68);
  }

  return result;
}

uint64_t sub_10011F5A4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10011F140();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10011F65C()
{
  result = qword_100448F80;
  if (!qword_100448F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448F80);
  }

  return result;
}

unint64_t sub_10011F6B4()
{
  result = qword_100448F88;
  if (!qword_100448F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448F88);
  }

  return result;
}

unint64_t sub_10011F70C()
{
  result = qword_100448F90;
  if (!qword_100448F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448F90);
  }

  return result;
}

unint64_t sub_10011F764()
{
  result = qword_100448F98;
  if (!qword_100448F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448F98);
  }

  return result;
}

uint64_t sub_10011F7B8()
{
  v0 = qword_100446C28;

  return v0;
}

unint64_t sub_10011F7F4()
{
  result = qword_100448FA0;
  if (!qword_100448FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448FA0);
  }

  return result;
}

uint64_t sub_10011F848(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100455FA8, &qword_100353350);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100455FB0, &qword_100353358);
  __chkstk_darwin(v5);
  sub_10011F2F8();
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

unint64_t sub_10011FA10()
{
  result = qword_100448FA8;
  if (!qword_100448FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448FA8);
  }

  return result;
}

unint64_t sub_10011FA68()
{
  result = qword_100448FB0;
  if (!qword_100448FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448FB0);
  }

  return result;
}

unint64_t sub_10011FAC0()
{
  result = qword_100448FB8;
  if (!qword_100448FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448FB8);
  }

  return result;
}

uint64_t sub_10011FB14(uint64_t a1)
{
  sub_1002D6358();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10011FBFC(uint64_t a1)
{
  v2 = sub_10011F2F8();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10011FC4C()
{
  result = qword_100448FD0;
  if (!qword_100448FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448FD0);
  }

  return result;
}

uint64_t sub_10011FCA4(uint64_t a1)
{
  v2 = sub_10011FAC0();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10011FCF4()
{
  result = qword_100448FD8;
  if (!qword_100448FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448FD8);
  }

  return result;
}

uint64_t sub_10011FD8C()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051D078);
  sub_10001EDB8(v5, qword_10051D078);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_10011FEFC@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100120270()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D090);
  sub_10001EDB8(v0, qword_10051D090);
  return sub_1002D88F0();
}

uint64_t sub_1001202D4()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D0A8);
  v1 = sub_10001EDB8(v0, qword_10051D0A8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100120394()
{
  result = swift_getKeyPath();
  qword_10051D0C0 = result;
  return result;
}

uint64_t sub_1001203BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100455F80, &qword_100353310);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100455F88, &qword_100353318);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10012059C, 0, 0);
}

uint64_t sub_10012059C()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_100121754();
  *v2 = v0;
  v2[1] = sub_100120680;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6E90, 0, &type metadata for AccessibilityVoiceOverBrailleBrailleScreenInputStartAutomaticallyWhenEditingTextEntity, v3);
}

uint64_t sub_100120680()
{

  return _swift_task_switch(sub_10012077C, 0, 0);
}

uint64_t sub_10012077C()
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
  if (qword_10043A4A0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051D0C0;
  *(v0 + 288) = qword_10051D0C0;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100455F68, &qword_100455F70, &qword_1003532F8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1001208E0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1001208E0()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_100120A50;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100120A50()
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
  sub_10011FCF4();
  sub_100121968();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100120CC8()
{
  v0 = sub_10000321C(&qword_100455F90, &qword_100353320);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A4A0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100121968();
  sub_10002B6E4(&qword_100455F98, &qword_100455F90, &qword_100353320, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_100120E3C(uint64_t *a1))(void *)
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

void (*sub_100120EB0(uint64_t *a1))(void *)
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

unint64_t sub_100120F4C()
{
  result = qword_100448FF0;
  if (!qword_100448FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448FF0);
  }

  return result;
}

unint64_t sub_100120FA4()
{
  result = qword_100448FF8;
  if (!qword_100448FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448FF8);
  }

  return result;
}

uint64_t sub_1001210A0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001203BC(a1, v5, v4);
}

uint64_t sub_10012114C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A592C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100121194()
{
  result = qword_100449000;
  if (!qword_100449000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449000);
  }

  return result;
}

unint64_t sub_1001211EC()
{
  result = qword_100449008;
  if (!qword_100449008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449008);
  }

  return result;
}

uint64_t sub_100121260()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverTouchBrailleGesturesAutoActivateOnTextFields];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100121328()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverTouchBrailleGesturesAutoActivateOnTextFields:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001213C0(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100121450, 0, 0);
}

uint64_t sub_100121450()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_100448FE8, qword_100303818);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455F68, &qword_100455F70, &qword_1003532F8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000049;
  v1[1] = 0x8000000100360DE0;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_10012159C()
{
  result = qword_100449010;
  if (!qword_100449010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449010);
  }

  return result;
}

uint64_t sub_1001215F0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100121BC0();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1001216A4()
{
  result = qword_100449018;
  if (!qword_100449018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449018);
  }

  return result;
}

unint64_t sub_1001216FC()
{
  result = qword_100449020;
  if (!qword_100449020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449020);
  }

  return result;
}

unint64_t sub_100121754()
{
  result = qword_100449028;
  if (!qword_100449028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449028);
  }

  return result;
}

uint64_t sub_1001217A8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100121BC0();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10012185C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100121BC0();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100121910()
{
  result = qword_100449030;
  if (!qword_100449030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449030);
  }

  return result;
}

unint64_t sub_100121968()
{
  result = qword_100449038;
  if (!qword_100449038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449038);
  }

  return result;
}

uint64_t sub_100121A00(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10012159C();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100121AB8()
{
  result = qword_100449050;
  if (!qword_100449050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449050);
  }

  return result;
}

unint64_t sub_100121B10()
{
  result = qword_100449058;
  if (!qword_100449058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449058);
  }

  return result;
}

unint64_t sub_100121B68()
{
  result = qword_100449060;
  if (!qword_100449060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449060);
  }

  return result;
}

unint64_t sub_100121BC0()
{
  result = qword_100449068;
  if (!qword_100449068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449068);
  }

  return result;
}

uint64_t sub_100121C14()
{
  v0 = qword_100446C38;

  return v0;
}

unint64_t sub_100121C50()
{
  result = qword_100449070;
  if (!qword_100449070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449070);
  }

  return result;
}

uint64_t sub_100121CA4(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100455F58, &qword_1003532D8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100455F60, &qword_1003532E0);
  __chkstk_darwin(v5);
  sub_100121754();
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

unint64_t sub_100121E6C()
{
  result = qword_100449078;
  if (!qword_100449078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449078);
  }

  return result;
}

unint64_t sub_100121EC4()
{
  result = qword_100449080;
  if (!qword_100449080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449080);
  }

  return result;
}

unint64_t sub_100121F1C()
{
  result = qword_100449088;
  if (!qword_100449088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449088);
  }

  return result;
}

uint64_t sub_100121F70(uint64_t a1)
{
  sub_1002D6304();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100122058(uint64_t a1)
{
  v2 = sub_100121754();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001220A8()
{
  result = qword_1004490A0;
  if (!qword_1004490A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004490A0);
  }

  return result;
}

uint64_t sub_100122100(uint64_t a1)
{
  v2 = sub_100121F1C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100122150()
{
  result = qword_1004490A8;
  if (!qword_1004490A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004490A8);
  }

  return result;
}

uint64_t sub_1001221E8()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051D0C8);
  sub_10001EDB8(v5, qword_10051D0C8);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_100122358@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001226C8()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D0E0);
  sub_10001EDB8(v0, qword_10051D0E0);
  return sub_1002D88F0();
}

uint64_t sub_10012272C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D0F8);
  v1 = sub_10001EDB8(v0, qword_10051D0F8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001227EC()
{
  result = swift_getKeyPath();
  qword_10051D110 = result;
  return result;
}

uint64_t sub_100122814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100455F30, &qword_100353298);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100455F38, &qword_1003532A0);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001229F4, 0, 0);
}

uint64_t sub_1001229F4()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_100123BAC();
  *v2 = v0;
  v2[1] = sub_100122AD8;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6E94, 0, &type metadata for AccessibilityVoiceOverBrailleBrailleScreenInputVisualTextFeedbackEntity, v3);
}

uint64_t sub_100122AD8()
{

  return _swift_task_switch(sub_100122BD4, 0, 0);
}

uint64_t sub_100122BD4()
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
  if (qword_10043A4C0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051D110;
  *(v0 + 288) = qword_10051D110;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100455F18, &qword_100455F20, &qword_100353280, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_100122D38;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_100122D38()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_100122EA8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100122EA8()
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
  sub_100122150();
  sub_100123DC0();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100123120()
{
  v0 = sub_10000321C(&qword_100455F40, &qword_1003532A8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A4C0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100123DC0();
  sub_10002B6E4(&qword_100455F48, &qword_100455F40, &qword_1003532A8, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_100123294(uint64_t *a1))(void *)
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

void (*sub_100123308(uint64_t *a1))(void *)
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

unint64_t sub_1001233A4()
{
  result = qword_1004490C0;
  if (!qword_1004490C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004490C0);
  }

  return result;
}

unint64_t sub_1001233FC()
{
  result = qword_1004490C8;
  if (!qword_1004490C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004490C8);
  }

  return result;
}

uint64_t sub_1001234F8(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100122814(a1, v5, v4);
}

uint64_t sub_1001235A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A5D94();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001235EC()
{
  result = qword_1004490D0;
  if (!qword_1004490D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004490D0);
  }

  return result;
}

unint64_t sub_100123644()
{
  result = qword_1004490D8;
  if (!qword_1004490D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004490D8);
  }

  return result;
}

uint64_t sub_1001236B8()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverTouchBrailleGesturesDisplaysEnteredText];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100123780()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverTouchBrailleGesturesDisplaysEnteredText:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100123818(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001238A8, 0, 0);
}

uint64_t sub_1001238A8()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_1004490B8, qword_100303E50);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455F18, &qword_100455F20, &qword_100353280, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000041;
  v1[1] = 0x8000000100360D50;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1001239F4()
{
  result = qword_1004490E0;
  if (!qword_1004490E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004490E0);
  }

  return result;
}

uint64_t sub_100123A48(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100124018();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100123AFC()
{
  result = qword_1004490E8;
  if (!qword_1004490E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004490E8);
  }

  return result;
}

unint64_t sub_100123B54()
{
  result = qword_1004490F0;
  if (!qword_1004490F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004490F0);
  }

  return result;
}

unint64_t sub_100123BAC()
{
  result = qword_1004490F8;
  if (!qword_1004490F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004490F8);
  }

  return result;
}

uint64_t sub_100123C00(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100124018();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100123CB4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100124018();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100123D68()
{
  result = qword_100449100;
  if (!qword_100449100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449100);
  }

  return result;
}

unint64_t sub_100123DC0()
{
  result = qword_100449108;
  if (!qword_100449108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449108);
  }

  return result;
}

uint64_t sub_100123E58(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001239F4();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100123F10()
{
  result = qword_100449120;
  if (!qword_100449120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449120);
  }

  return result;
}

unint64_t sub_100123F68()
{
  result = qword_100449128;
  if (!qword_100449128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449128);
  }

  return result;
}

unint64_t sub_100123FC0()
{
  result = qword_100449130;
  if (!qword_100449130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449130);
  }

  return result;
}

unint64_t sub_100124018()
{
  result = qword_100449138;
  if (!qword_100449138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449138);
  }

  return result;
}

uint64_t sub_10012406C()
{
  v0 = qword_100446C48;

  return v0;
}

unint64_t sub_1001240A8()
{
  result = qword_100449140;
  if (!qword_100449140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449140);
  }

  return result;
}

uint64_t sub_1001240FC(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100455F08, &qword_100353260);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100455F10, &qword_100353268);
  __chkstk_darwin(v5);
  sub_100123BAC();
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

unint64_t sub_1001242C4()
{
  result = qword_100449148;
  if (!qword_100449148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449148);
  }

  return result;
}

unint64_t sub_10012431C()
{
  result = qword_100449150;
  if (!qword_100449150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449150);
  }

  return result;
}

unint64_t sub_100124374()
{
  result = qword_100449158;
  if (!qword_100449158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449158);
  }

  return result;
}

uint64_t sub_1001243C8(uint64_t a1)
{
  sub_1002D62B0();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1001244B0(uint64_t a1)
{
  v2 = sub_100123BAC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100124500()
{
  result = qword_100449170;
  if (!qword_100449170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449170);
  }

  return result;
}

uint64_t sub_100124558(uint64_t a1)
{
  v2 = sub_100124374();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001245A8()
{
  result = qword_100449178;
  if (!qword_100449178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449178);
  }

  return result;
}

uint64_t sub_100124640()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051D118);
  sub_10001EDB8(v5, qword_10051D118);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_1001247B0@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100124B20()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D130);
  sub_10001EDB8(v0, qword_10051D130);
  return sub_1002D88F0();
}

uint64_t sub_100124B84()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D148);
  v1 = sub_10001EDB8(v0, qword_10051D148);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100124C44()
{
  result = swift_getKeyPath();
  qword_10051D160 = result;
  return result;
}

uint64_t sub_100124C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100455EE0, &qword_100353220);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100455EE8, &qword_100353228);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100124E4C, 0, 0);
}

uint64_t sub_100124E4C()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_100126004();
  *v2 = v0;
  v2[1] = sub_100124F30;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6E98, 0, &type metadata for AccessibilityVoiceOverBrailleBrailleScreenInputTypingSoundFeedbackEntity, v3);
}

uint64_t sub_100124F30()
{

  return _swift_task_switch(sub_10012502C, 0, 0);
}

uint64_t sub_10012502C()
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
  if (qword_10043A4E0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051D160;
  *(v0 + 288) = qword_10051D160;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100455EC8, &qword_100455ED0, &qword_100353208, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_100125190;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_100125190()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_100125300;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100125300()
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
  sub_1001245A8();
  sub_100126218();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100125578()
{
  v0 = sub_10000321C(&qword_100455EF0, &qword_100353230);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A4E0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100126218();
  sub_10002B6E4(&qword_100455EF8, &qword_100455EF0, &qword_100353230, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1001256EC(uint64_t *a1))(void *)
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

void (*sub_100125760(uint64_t *a1))(void *)
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

unint64_t sub_1001257FC()
{
  result = qword_100449190;
  if (!qword_100449190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449190);
  }

  return result;
}

unint64_t sub_100125854()
{
  result = qword_100449198;
  if (!qword_100449198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449198);
  }

  return result;
}

uint64_t sub_100125950(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100124C6C(a1, v5, v4);
}

uint64_t sub_1001259FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A61FC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100125A44()
{
  result = qword_1004491A0;
  if (!qword_1004491A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004491A0);
  }

  return result;
}

unint64_t sub_100125A9C()
{
  result = qword_1004491A8;
  if (!qword_1004491A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004491A8);
  }

  return result;
}

uint64_t sub_100125B10()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverTouchBrailleGesturesUsesTypingSoundFeedback];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100125BD8()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverTouchBrailleGesturesUsesTypingSoundFeedback:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100125C70(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100125D00, 0, 0);
}

uint64_t sub_100125D00()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_100449188, qword_100304488);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455EC8, &qword_100455ED0, &qword_100353208, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000046;
  v1[1] = 0x8000000100360C30;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_100125E4C()
{
  result = qword_1004491B0;
  if (!qword_1004491B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004491B0);
  }

  return result;
}

uint64_t sub_100125EA0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100126470();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100125F54()
{
  result = qword_1004491B8;
  if (!qword_1004491B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004491B8);
  }

  return result;
}

unint64_t sub_100125FAC()
{
  result = qword_1004491C0;
  if (!qword_1004491C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004491C0);
  }

  return result;
}

unint64_t sub_100126004()
{
  result = qword_1004491C8;
  if (!qword_1004491C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004491C8);
  }

  return result;
}

uint64_t sub_100126058(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100126470();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10012610C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100126470();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1001261C0()
{
  result = qword_1004491D0;
  if (!qword_1004491D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004491D0);
  }

  return result;
}

unint64_t sub_100126218()
{
  result = qword_1004491D8;
  if (!qword_1004491D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004491D8);
  }

  return result;
}

uint64_t sub_1001262B0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100125E4C();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100126368()
{
  result = qword_1004491F0;
  if (!qword_1004491F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004491F0);
  }

  return result;
}

unint64_t sub_1001263C0()
{
  result = qword_1004491F8;
  if (!qword_1004491F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004491F8);
  }

  return result;
}

unint64_t sub_100126418()
{
  result = qword_100449200;
  if (!qword_100449200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449200);
  }

  return result;
}

unint64_t sub_100126470()
{
  result = qword_100449208;
  if (!qword_100449208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449208);
  }

  return result;
}

uint64_t sub_1001264C4()
{
  v0 = qword_100446C58;

  return v0;
}

unint64_t sub_100126500()
{
  result = qword_100449210;
  if (!qword_100449210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449210);
  }

  return result;
}

uint64_t sub_100126554(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100455EB8, &qword_1003531E8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100455EC0, &qword_1003531F0);
  __chkstk_darwin(v5);
  sub_100126004();
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

unint64_t sub_10012671C()
{
  result = qword_100449218;
  if (!qword_100449218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449218);
  }

  return result;
}

unint64_t sub_100126774()
{
  result = qword_100449220;
  if (!qword_100449220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449220);
  }

  return result;
}

unint64_t sub_1001267CC()
{
  result = qword_100449228;
  if (!qword_100449228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449228);
  }

  return result;
}

uint64_t sub_100126820(uint64_t a1)
{
  sub_1002D625C();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100126908(uint64_t a1)
{
  v2 = sub_100126004();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100126958()
{
  result = qword_100449240;
  if (!qword_100449240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449240);
  }

  return result;
}

uint64_t sub_1001269B0(uint64_t a1)
{
  v2 = sub_1001267CC();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100126A00()
{
  result = qword_100449248;
  if (!qword_100449248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449248);
  }

  return result;
}

uint64_t sub_100126A98()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051D168);
  sub_10001EDB8(v5, qword_10051D168);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_100126C08@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100126F78()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D180);
  sub_10001EDB8(v0, qword_10051D180);
  return sub_1002D88F0();
}

uint64_t sub_100126FDC()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D198);
  v1 = sub_10001EDB8(v0, qword_10051D198);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10012709C()
{
  result = swift_getKeyPath();
  qword_10051D1B0 = result;
  return result;
}

uint64_t sub_1001270C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100455E90, &qword_1003531A8);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100455E98, &qword_1003531B0);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001272A4, 0, 0);
}

uint64_t sub_1001272A4()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_10012845C();
  *v2 = v0;
  v2[1] = sub_100127388;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6E9C, 0, &type metadata for AccessibilityVoiceOverBrailleBrailleScreenInputHapticFeedbackEntity, v3);
}

uint64_t sub_100127388()
{

  return _swift_task_switch(sub_100127484, 0, 0);
}

uint64_t sub_100127484()
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
  if (qword_10043A500 != -1)
  {
    swift_once();
  }

  v3 = qword_10051D1B0;
  *(v0 + 288) = qword_10051D1B0;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100455E78, &qword_100455E80, &qword_100353190, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1001275E8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1001275E8()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_100127758;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100127758()
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
  sub_100126A00();
  sub_100128670();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001279D0()
{
  v0 = sub_10000321C(&qword_100455EA0, &qword_1003531B8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A500 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100128670();
  sub_10002B6E4(&qword_100455EA8, &qword_100455EA0, &qword_1003531B8, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_100127B44(uint64_t *a1))(void *)
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

void (*sub_100127BB8(uint64_t *a1))(void *)
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

unint64_t sub_100127C54()
{
  result = qword_100449260;
  if (!qword_100449260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449260);
  }

  return result;
}

unint64_t sub_100127CAC()
{
  result = qword_100449268;
  if (!qword_100449268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449268);
  }

  return result;
}

uint64_t sub_100127DA8(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001270C4(a1, v5, v4);
}

uint64_t sub_100127E54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A6664();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100127E9C()
{
  result = qword_100449270;
  if (!qword_100449270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449270);
  }

  return result;
}

unint64_t sub_100127EF4()
{
  result = qword_100449278;
  if (!qword_100449278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449278);
  }

  return result;
}

uint64_t sub_100127F68()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverTouchBrailleGesturesUsesHapticFeedback];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100128030()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverTouchBrailleGesturesUsesHapticFeedback:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001280C8(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100128158, 0, 0);
}

uint64_t sub_100128158()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_100449258, qword_100304AC0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455E78, &qword_100455E80, &qword_100353190, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000040;
  v1[1] = 0x8000000100360C80;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1001282A4()
{
  result = qword_100449280;
  if (!qword_100449280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449280);
  }

  return result;
}

uint64_t sub_1001282F8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001288C8();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1001283AC()
{
  result = qword_100449288;
  if (!qword_100449288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449288);
  }

  return result;
}

unint64_t sub_100128404()
{
  result = qword_100449290;
  if (!qword_100449290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449290);
  }

  return result;
}

unint64_t sub_10012845C()
{
  result = qword_100449298;
  if (!qword_100449298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449298);
  }

  return result;
}

uint64_t sub_1001284B0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001288C8();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100128564(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001288C8();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100128618()
{
  result = qword_1004492A0;
  if (!qword_1004492A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004492A0);
  }

  return result;
}

unint64_t sub_100128670()
{
  result = qword_1004492A8;
  if (!qword_1004492A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004492A8);
  }

  return result;
}

uint64_t sub_100128708(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001282A4();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1001287C0()
{
  result = qword_1004492C0;
  if (!qword_1004492C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004492C0);
  }

  return result;
}

unint64_t sub_100128818()
{
  result = qword_1004492C8;
  if (!qword_1004492C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004492C8);
  }

  return result;
}

unint64_t sub_100128870()
{
  result = qword_1004492D0;
  if (!qword_1004492D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004492D0);
  }

  return result;
}

unint64_t sub_1001288C8()
{
  result = qword_1004492D8;
  if (!qword_1004492D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004492D8);
  }

  return result;
}

uint64_t sub_10012891C()
{
  v0 = qword_100446C68;

  return v0;
}

unint64_t sub_100128958()
{
  result = qword_1004492E0;
  if (!qword_1004492E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004492E0);
  }

  return result;
}

uint64_t sub_1001289AC(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100455E68, &qword_100353170);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100455E70, &qword_100353178);
  __chkstk_darwin(v5);
  sub_10012845C();
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

unint64_t sub_100128B74()
{
  result = qword_1004492E8;
  if (!qword_1004492E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004492E8);
  }

  return result;
}

unint64_t sub_100128BCC()
{
  result = qword_1004492F0;
  if (!qword_1004492F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004492F0);
  }

  return result;
}

unint64_t sub_100128C24()
{
  result = qword_1004492F8;
  if (!qword_1004492F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004492F8);
  }

  return result;
}

uint64_t sub_100128C78(uint64_t a1)
{
  sub_1002D6208();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100128D60(uint64_t a1)
{
  v2 = sub_10012845C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100128DB0()
{
  result = qword_100449310;
  if (!qword_100449310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449310);
  }

  return result;
}

uint64_t sub_100128E08(uint64_t a1)
{
  v2 = sub_100128C24();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100128E58()
{
  result = qword_100449318;
  if (!qword_100449318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449318);
  }

  return result;
}

uint64_t sub_100128EF0()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051D1B8);
  sub_10001EDB8(v5, qword_10051D1B8);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_100129060@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001293D0()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D1D0);
  sub_10001EDB8(v0, qword_10051D1D0);
  return sub_1002D88F0();
}

uint64_t sub_100129434()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D1E8);
  v1 = sub_10001EDB8(v0, qword_10051D1E8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001294F4()
{
  result = swift_getKeyPath();
  qword_10051D200 = result;
  return result;
}

uint64_t sub_10012951C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100455E40, &qword_100353130);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100455E48, &qword_100353138);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001296FC, 0, 0);
}

uint64_t sub_1001296FC()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_10012A870();
  *v2 = v0;
  v2[1] = sub_1001297E0;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6EA0, 0, &type metadata for AccessibilityVoiceOverBrailleBrailleScreenInputModeAnnouncementsEntity, v3);
}

uint64_t sub_1001297E0()
{

  return _swift_task_switch(sub_1001298DC, 0, 0);
}

uint64_t sub_1001298DC()
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
  if (qword_10043A520 != -1)
  {
    swift_once();
  }

  v3 = qword_10051D200;
  v0[36] = qword_10051D200;

  v4 = swift_task_alloc();
  v0[37] = v4;
  v5 = sub_10002B6E4(&qword_100455E20, &qword_100455E28, &qword_100353110, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_100129A38;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 39, v3, &type metadata for AXSVoiceOverBrailleBrailleScreenInputModeAnnouncementsAppEnum, v5);
}

uint64_t sub_100129A38()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_100129BA8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100129BA8()
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
  sub_100128E58();
  sub_10012AA84();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100129E20()
{
  v0 = sub_10000321C(&qword_100455E50, &qword_100353140);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A520 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10012AA84();
  sub_10002B6E4(&qword_100455E58, &qword_100455E50, &qword_100353140, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_100129F94(uint64_t *a1))(void *)
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

void (*sub_10012A008(uint64_t *a1))(void *)
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

unint64_t sub_10012A0A4()
{
  result = qword_100449330;
  if (!qword_100449330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449330);
  }

  return result;
}

unint64_t sub_10012A0FC()
{
  result = qword_100449338;
  if (!qword_100449338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449338);
  }

  return result;
}

uint64_t sub_10012A1F8(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10012951C(a1, v5, v4);
}

uint64_t sub_10012A2A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A6ACC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10012A2EC()
{
  result = qword_100449340;
  if (!qword_100449340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449340);
  }

  return result;
}

uint64_t sub_10012A364()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 voiceOverTouchBrailleGesturesSoundOption];

  v3 = 0x201u >> (8 * v2);
  if (v2 >= 3)
  {
    LOBYTE(v3) = 0;
  }

  **(v0 + 16) = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10012A46C()
{
  sub_100003264(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10012A4D0(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10012A560, 0, 0);
}

uint64_t sub_10012A560()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_100449328, &qword_1003050F8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455E20, &qword_100455E28, &qword_100353110, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  sub_100015874();
  v2 = sub_1002D8890();
  *v1 = 0xD000000000000039;
  v1[1] = 0x8000000100360D10;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_10012A6B8()
{
  result = qword_100449348;
  if (!qword_100449348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449348);
  }

  return result;
}

uint64_t sub_10012A70C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10012ACDC();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10012A7C0()
{
  result = qword_100449350;
  if (!qword_100449350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449350);
  }

  return result;
}

unint64_t sub_10012A818()
{
  result = qword_100449358;
  if (!qword_100449358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449358);
  }

  return result;
}

unint64_t sub_10012A870()
{
  result = qword_100449360;
  if (!qword_100449360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449360);
  }

  return result;
}

uint64_t sub_10012A8C4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10012ACDC();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10012A978(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10012ACDC();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10012AA2C()
{
  result = qword_100449368;
  if (!qword_100449368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449368);
  }

  return result;
}

unint64_t sub_10012AA84()
{
  result = qword_100449370;
  if (!qword_100449370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449370);
  }

  return result;
}

uint64_t sub_10012AB1C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10012A6B8();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10012ABD4()
{
  result = qword_100449388;
  if (!qword_100449388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449388);
  }

  return result;
}

unint64_t sub_10012AC2C()
{
  result = qword_100449390;
  if (!qword_100449390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449390);
  }

  return result;
}

unint64_t sub_10012AC84()
{
  result = qword_100449398;
  if (!qword_100449398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449398);
  }

  return result;
}

unint64_t sub_10012ACDC()
{
  result = qword_1004493A0;
  if (!qword_1004493A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004493A0);
  }

  return result;
}

uint64_t sub_10012AD30()
{
  v0 = qword_100446C78;

  return v0;
}

unint64_t sub_10012AD6C()
{
  result = qword_1004493A8;
  if (!qword_1004493A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004493A8);
  }

  return result;
}

uint64_t sub_10012ADC0(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100455E10, &qword_1003530F0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100455E18, &qword_1003530F8);
  __chkstk_darwin(v5);
  sub_10012A870();
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