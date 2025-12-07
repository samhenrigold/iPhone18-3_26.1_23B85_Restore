uint64_t sub_1001F6568()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1001F66D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001F66D8()
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
  sub_1001F5AC0();
  sub_1001F75C8();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001F6950()
{
  v0 = sub_10000321C(&qword_1004540F8, &qword_100350538);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043B0C0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001F75C8();
  sub_10002B6E4(&qword_100454100, &qword_1004540F8, &qword_100350538, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1001F6AC4(uint64_t *a1))(void *)
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

void (*sub_1001F6B38(uint64_t *a1))(void *)
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

unint64_t sub_1001F6BD4()
{
  result = qword_10044DE80;
  if (!qword_10044DE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DE80);
  }

  return result;
}

unint64_t sub_1001F6C2C()
{
  result = qword_10044DE88;
  if (!qword_10044DE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DE88);
  }

  return result;
}

uint64_t sub_1001F6D28(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001F604C(a1, v5, v4);
}

uint64_t sub_1001F6DD4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002BF9F8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001F6E1C()
{
  result = qword_10044DE90;
  if (!qword_10044DE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DE90);
  }

  return result;
}

uint64_t sub_1001F6E94()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 switchControlPointPickerSelectionStyle];

  v3 = 0x20001u >> (8 * v2);
  if (v2 >= 3)
  {
    LOBYTE(v3) = 1;
  }

  **(v0 + 16) = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001F6F70()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setSwitchControlPointPickerSelectionStyle:qword_100354218[v1]];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001F7010(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001F70A0, 0, 0);
}

uint64_t sub_1001F70A0()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044DE78, &qword_100329350);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004540C8, &qword_1004540D0, &qword_100350508, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  sub_10001ABB4();
  v2 = sub_1002D8890();
  *v1 = 0xD00000000000003ALL;
  v1[1] = 0x800000010035BFD0;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1001F71FC()
{
  result = qword_10044DE98;
  if (!qword_10044DE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DE98);
  }

  return result;
}

uint64_t sub_1001F7250(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001F7820();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1001F7304()
{
  result = qword_10044DEA0;
  if (!qword_10044DEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DEA0);
  }

  return result;
}

unint64_t sub_1001F735C()
{
  result = qword_10044DEA8;
  if (!qword_10044DEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DEA8);
  }

  return result;
}

unint64_t sub_1001F73B4()
{
  result = qword_10044DEB0;
  if (!qword_10044DEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DEB0);
  }

  return result;
}

uint64_t sub_1001F7408(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001F7820();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1001F74BC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001F7820();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1001F7570()
{
  result = qword_10044DEB8;
  if (!qword_10044DEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DEB8);
  }

  return result;
}

unint64_t sub_1001F75C8()
{
  result = qword_10044DEC0;
  if (!qword_10044DEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DEC0);
  }

  return result;
}

uint64_t sub_1001F7660(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001F71FC();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1001F7718()
{
  result = qword_10044DED8;
  if (!qword_10044DED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DED8);
  }

  return result;
}

unint64_t sub_1001F7770()
{
  result = qword_10044DEE0;
  if (!qword_10044DEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DEE0);
  }

  return result;
}

unint64_t sub_1001F77C8()
{
  result = qword_10044DEE8;
  if (!qword_10044DEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DEE8);
  }

  return result;
}

unint64_t sub_1001F7820()
{
  result = qword_10044DEF0;
  if (!qword_10044DEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DEF0);
  }

  return result;
}

uint64_t sub_1001F7874()
{
  v0 = qword_100447248;

  return v0;
}

unint64_t sub_1001F78B0()
{
  result = qword_10044DEF8;
  if (!qword_10044DEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DEF8);
  }

  return result;
}

uint64_t sub_1001F7904(uint64_t a1)
{
  v1 = sub_10000321C(&qword_1004540B8, &qword_1003504E8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_1004540C0, &qword_1003504F0);
  __chkstk_darwin(v5);
  sub_1001F73B4();
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

unint64_t sub_1001F7ACC()
{
  result = qword_10044DF00;
  if (!qword_10044DF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DF00);
  }

  return result;
}

unint64_t sub_1001F7B24()
{
  result = qword_10044DF08;
  if (!qword_10044DF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DF08);
  }

  return result;
}

unint64_t sub_1001F7B7C()
{
  result = qword_10044DF10;
  if (!qword_10044DF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DF10);
  }

  return result;
}

uint64_t sub_1001F7BD0(uint64_t a1)
{
  sub_1002D40E8();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1001F7CB8(uint64_t a1)
{
  v2 = sub_1001F73B4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001F7D08()
{
  result = qword_10044DF28;
  if (!qword_10044DF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DF28);
  }

  return result;
}

uint64_t sub_1001F7D60(uint64_t a1)
{
  v2 = sub_1001F7B7C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001F7DB0()
{
  result = qword_10044DF30;
  if (!qword_10044DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DF30);
  }

  return result;
}

uint64_t sub_1001F7E74@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001F81F0()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051EF30);
  sub_10001EDB8(v0, qword_10051EF30);
  return sub_1002D88F0();
}

uint64_t sub_1001F8254()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051EF48);
  v1 = sub_10001EDB8(v0, qword_10051EF48);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001F8314()
{
  result = swift_getKeyPath();
  qword_10051EF60 = result;
  return result;
}

uint64_t sub_1001F833C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100454090, &qword_1003504A8);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100454098, &qword_1003504B0);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001F851C, 0, 0);
}

uint64_t sub_1001F851C()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1001F96D0();
  *v2 = v0;
  v2[1] = sub_1001F8600;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D7018, 0, &type metadata for AccessibilitySwitchControlUseHeadTrackingEntity, v3);
}

uint64_t sub_1001F8600()
{

  return _swift_task_switch(sub_1001F86FC, 0, 0);
}

uint64_t sub_1001F86FC()
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
  if (qword_10043B0E0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051EF60;
  *(v0 + 288) = qword_10051EF60;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100454078, &qword_100454080, &qword_100350490, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1001F8860;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1001F8860()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1001F89D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001F89D0()
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
  sub_1001F7DB0();
  sub_1001F98E4();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001F8C48()
{
  v0 = sub_10000321C(&qword_1004540A0, &qword_1003504B8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043B0E0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001F98E4();
  sub_10002B6E4(&qword_1004540A8, &qword_1004540A0, &qword_1003504B8, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1001F8DBC(uint64_t *a1))(void *)
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

void (*sub_1001F8E30(uint64_t *a1))(void *)
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

unint64_t sub_1001F8ECC()
{
  result = qword_10044DF48;
  if (!qword_10044DF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DF48);
  }

  return result;
}

unint64_t sub_1001F8F24()
{
  result = qword_10044DF50;
  if (!qword_10044DF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DF50);
  }

  return result;
}

uint64_t sub_1001F9020(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001F833C(a1, v5, v4);
}

uint64_t sub_1001F90CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002BFDFC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001F9114()
{
  result = qword_10044DF58;
  if (!qword_10044DF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DF58);
  }

  return result;
}

unint64_t sub_1001F916C()
{
  result = qword_10044DF60;
  if (!qword_10044DF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DF60);
  }

  return result;
}

uint64_t sub_1001F91E0()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 switchControlUseCameraForPointMode];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001F92A8()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setSwitchControlUseCameraForPointMode:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001F9340(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001F93D0, 0, 0);
}

uint64_t sub_1001F93D0()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044DF40, qword_100329988);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454078, &qword_100454080, &qword_100350490, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000044;
  v1[1] = 0x800000010035EF50;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1001F9518()
{
  result = qword_10044DF68;
  if (!qword_10044DF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DF68);
  }

  return result;
}

uint64_t sub_1001F956C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001F9B3C();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1001F9620()
{
  result = qword_10044DF70;
  if (!qword_10044DF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DF70);
  }

  return result;
}

unint64_t sub_1001F9678()
{
  result = qword_10044DF78;
  if (!qword_10044DF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DF78);
  }

  return result;
}

unint64_t sub_1001F96D0()
{
  result = qword_10044DF80;
  if (!qword_10044DF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DF80);
  }

  return result;
}

uint64_t sub_1001F9724(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001F9B3C();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1001F97D8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001F9B3C();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1001F988C()
{
  result = qword_10044DF88;
  if (!qword_10044DF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DF88);
  }

  return result;
}

unint64_t sub_1001F98E4()
{
  result = qword_10044DF90;
  if (!qword_10044DF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DF90);
  }

  return result;
}

uint64_t sub_1001F997C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001F9518();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1001F9A34()
{
  result = qword_10044DFA8;
  if (!qword_10044DFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DFA8);
  }

  return result;
}

unint64_t sub_1001F9A8C()
{
  result = qword_10044DFB0;
  if (!qword_10044DFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DFB0);
  }

  return result;
}

unint64_t sub_1001F9AE4()
{
  result = qword_10044DFB8;
  if (!qword_10044DFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DFB8);
  }

  return result;
}

unint64_t sub_1001F9B3C()
{
  result = qword_10044DFC0;
  if (!qword_10044DFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DFC0);
  }

  return result;
}

uint64_t sub_1001F9B90()
{
  v0 = qword_100447258;

  return v0;
}

unint64_t sub_1001F9BCC()
{
  result = qword_10044DFC8;
  if (!qword_10044DFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DFC8);
  }

  return result;
}

uint64_t sub_1001F9C20(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100454068, &qword_100350470);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100454070, &qword_100350478);
  __chkstk_darwin(v5);
  sub_1001F96D0();
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

unint64_t sub_1001F9DE8()
{
  result = qword_10044DFD0;
  if (!qword_10044DFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DFD0);
  }

  return result;
}

unint64_t sub_1001F9E40()
{
  result = qword_10044DFD8;
  if (!qword_10044DFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DFD8);
  }

  return result;
}

unint64_t sub_1001F9E98()
{
  result = qword_10044DFE0;
  if (!qword_10044DFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DFE0);
  }

  return result;
}

uint64_t sub_1001F9EEC(uint64_t a1)
{
  sub_1002D4094();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1001F9FD4(uint64_t a1)
{
  v2 = sub_1001F96D0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001FA024()
{
  result = qword_10044DFF8;
  if (!qword_10044DFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DFF8);
  }

  return result;
}

uint64_t sub_1001FA07C(uint64_t a1)
{
  v2 = sub_1001F9E98();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001FA0CC()
{
  result = qword_10044E000;
  if (!qword_10044E000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E000);
  }

  return result;
}

uint64_t sub_1001FA18C@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001FA504()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051EF80);
  sub_10001EDB8(v0, qword_10051EF80);
  return sub_1002D88F0();
}

uint64_t sub_1001FA568()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051EF98);
  v1 = sub_10001EDB8(v0, qword_10051EF98);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001FA628()
{
  result = swift_getKeyPath();
  qword_10051EFB0 = result;
  return result;
}

uint64_t sub_1001FA650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100454040, &qword_100350430);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100454048, &qword_100350438);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001FA830, 0, 0);
}

uint64_t sub_1001FA830()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1001FBA0C();
  *v2 = v0;
  v2[1] = sub_1001FA914;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D701C, 0, &type metadata for AXSwitchControlCursorColorEntity, v3);
}

uint64_t sub_1001FA914()
{

  return _swift_task_switch(sub_1001FAA10, 0, 0);
}

uint64_t sub_1001FAA10()
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
  if (qword_10043B100 != -1)
  {
    swift_once();
  }

  v3 = qword_10051EFB0;
  v0[36] = qword_10051EFB0;

  v4 = swift_task_alloc();
  v0[37] = v4;
  v5 = sub_10002B6E4(&qword_100454020, &qword_100454028, &qword_100350410, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1001FAB6C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 39, v3, &type metadata for AXAssistiveTouchCursorColorAppEnum, v5);
}

uint64_t sub_1001FAB6C()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1001FACDC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001FACDC()
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
  sub_1001FA0CC();
  sub_1001FBC20();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001FAF54()
{
  v0 = sub_10000321C(&qword_100454050, &qword_100350440);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043B100 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001FBC20();
  sub_10002B6E4(&qword_100454058, &qword_100454050, &qword_100350440, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1001FB0C8(uint64_t *a1))(void *)
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

void (*sub_1001FB13C(uint64_t *a1))(void *)
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

unint64_t sub_1001FB1D8()
{
  result = qword_10044E018;
  if (!qword_10044E018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E018);
  }

  return result;
}

unint64_t sub_1001FB230()
{
  result = qword_10044E020;
  if (!qword_10044E020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E020);
  }

  return result;
}

uint64_t sub_1001FB32C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001FA650(a1, v5, v4);
}

uint64_t sub_1001FB3D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002C0264();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001FB420()
{
  result = qword_10044E028;
  if (!qword_10044E028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E028);
  }

  return result;
}

uint64_t sub_1001FB498()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 assistiveTouchCursorColor];

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

uint64_t sub_1001FB5A4()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setAssistiveTouchCursorColor:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001FB66C(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001FB6FC, 0, 0);
}

uint64_t sub_1001FB6FC()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044E010, &qword_100329FC0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454020, &qword_100454028, &qword_100350410, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  sub_10000BA70();
  v2 = sub_1002D8890();
  *v1 = 0xD00000000000003ELL;
  v1[1] = 0x800000010035FFA0;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1001FB854()
{
  result = qword_10044E030;
  if (!qword_10044E030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E030);
  }

  return result;
}

uint64_t sub_1001FB8A8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001FBE78();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1001FB95C()
{
  result = qword_10044E038;
  if (!qword_10044E038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E038);
  }

  return result;
}

unint64_t sub_1001FB9B4()
{
  result = qword_10044E040;
  if (!qword_10044E040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E040);
  }

  return result;
}

unint64_t sub_1001FBA0C()
{
  result = qword_10044E048;
  if (!qword_10044E048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E048);
  }

  return result;
}

uint64_t sub_1001FBA60(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001FBE78();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1001FBB14(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001FBE78();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1001FBBC8()
{
  result = qword_10044E050;
  if (!qword_10044E050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E050);
  }

  return result;
}

unint64_t sub_1001FBC20()
{
  result = qword_10044E058;
  if (!qword_10044E058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E058);
  }

  return result;
}

uint64_t sub_1001FBCB8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001FB854();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1001FBD70()
{
  result = qword_10044E070;
  if (!qword_10044E070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E070);
  }

  return result;
}

unint64_t sub_1001FBDC8()
{
  result = qword_10044E078;
  if (!qword_10044E078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E078);
  }

  return result;
}

unint64_t sub_1001FBE20()
{
  result = qword_10044E080;
  if (!qword_10044E080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E080);
  }

  return result;
}

unint64_t sub_1001FBE78()
{
  result = qword_10044E088;
  if (!qword_10044E088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E088);
  }

  return result;
}

uint64_t sub_1001FBECC()
{
  v0 = qword_100447268;

  return v0;
}

unint64_t sub_1001FBF08()
{
  result = qword_10044E090;
  if (!qword_10044E090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E090);
  }

  return result;
}

uint64_t sub_1001FBF5C(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100454010, &qword_1003503F0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100454018, &qword_1003503F8);
  __chkstk_darwin(v5);
  sub_1001FBA0C();
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

unint64_t sub_1001FC124()
{
  result = qword_10044E098;
  if (!qword_10044E098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E098);
  }

  return result;
}

unint64_t sub_1001FC17C()
{
  result = qword_10044E0A0;
  if (!qword_10044E0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E0A0);
  }

  return result;
}

unint64_t sub_1001FC1D4()
{
  result = qword_10044E0A8;
  if (!qword_10044E0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E0A8);
  }

  return result;
}

uint64_t sub_1001FC228(uint64_t a1)
{
  sub_1002D4040();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1001FC310(uint64_t a1)
{
  v2 = sub_1001FBA0C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001FC360()
{
  result = qword_10044E0C0;
  if (!qword_10044E0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E0C0);
  }

  return result;
}

uint64_t sub_1001FC3B8(uint64_t a1)
{
  v2 = sub_1001FC1D4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001FC408()
{
  result = qword_10044E0C8;
  if (!qword_10044E0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E0C8);
  }

  return result;
}

uint64_t sub_1001FC4CC@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001FC848()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051EFD0);
  sub_10001EDB8(v0, qword_10051EFD0);
  return sub_1002D88F0();
}

uint64_t sub_1001FC8AC()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051EFE8);
  v1 = sub_10001EDB8(v0, qword_10051EFE8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001FC96C()
{
  result = swift_getKeyPath();
  qword_10051F000 = result;
  return result;
}

uint64_t sub_1001FC994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100453FE8, &qword_1003503B0);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100453FF0, &qword_1003503B8);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001FCB74, 0, 0);
}

uint64_t sub_1001FCB74()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1001FDCF4();
  *v2 = v0;
  v2[1] = sub_1001FCC58;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D7020, 0, &type metadata for AccessibilitySwitchControlScanningStyleEntity, v3);
}

uint64_t sub_1001FCC58()
{

  return _swift_task_switch(sub_1001FCD54, 0, 0);
}

uint64_t sub_1001FCD54()
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
  if (qword_10043B120 != -1)
  {
    swift_once();
  }

  v3 = qword_10051F000;
  v0[36] = qword_10051F000;

  v4 = swift_task_alloc();
  v0[37] = v4;
  v5 = sub_10002B6E4(&qword_100453FC8, &qword_100453FD0, &qword_100350390, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1001FCEB0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 39, v3, &type metadata for AXSSwitchControlScanningStyleAppEnum, v5);
}

uint64_t sub_1001FCEB0()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1001FD020;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001FD020()
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
  sub_1001FC408();
  sub_1001FDF08();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001FD298()
{
  v0 = sub_10000321C(&qword_100453FF8, &qword_1003503C0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043B120 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001FDF08();
  sub_10002B6E4(&qword_100454000, &qword_100453FF8, &qword_1003503C0, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1001FD40C(uint64_t *a1))(void *)
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

void (*sub_1001FD480(uint64_t *a1))(void *)
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

unint64_t sub_1001FD51C()
{
  result = qword_10044E0E0;
  if (!qword_10044E0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E0E0);
  }

  return result;
}

unint64_t sub_1001FD574()
{
  result = qword_10044E0E8;
  if (!qword_10044E0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E0E8);
  }

  return result;
}

uint64_t sub_1001FD670(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001FC994(a1, v5, v4);
}

uint64_t sub_1001FD71C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002C0668();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001FD764()
{
  result = qword_10044E0F0;
  if (!qword_10044E0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E0F0);
  }

  return result;
}

uint64_t sub_1001FD7DC()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 switchControlScanningStyle];

  if (v3 == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3 == 1;
  }

  *v1 = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1001FD8B8()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setSwitchControlScanningStyle:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001FD950(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001FD9E0, 0, 0);
}

uint64_t sub_1001FD9E0()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044E0D8, &qword_10032A5F8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100453FC8, &qword_100453FD0, &qword_100350390, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  sub_10001B758();
  v2 = sub_1002D8890();
  *v1 = 0xD00000000000002ALL;
  v1[1] = 0x8000000100377F50;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1001FDB3C()
{
  result = qword_10044E0F8;
  if (!qword_10044E0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E0F8);
  }

  return result;
}

uint64_t sub_1001FDB90(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001FE160();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1001FDC44()
{
  result = qword_10044E100;
  if (!qword_10044E100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E100);
  }

  return result;
}

unint64_t sub_1001FDC9C()
{
  result = qword_10044E108;
  if (!qword_10044E108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E108);
  }

  return result;
}

unint64_t sub_1001FDCF4()
{
  result = qword_10044E110;
  if (!qword_10044E110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E110);
  }

  return result;
}

uint64_t sub_1001FDD48(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001FE160();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1001FDDFC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1001FE160();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1001FDEB0()
{
  result = qword_10044E118;
  if (!qword_10044E118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E118);
  }

  return result;
}

unint64_t sub_1001FDF08()
{
  result = qword_10044E120;
  if (!qword_10044E120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E120);
  }

  return result;
}

uint64_t sub_1001FDFA0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001FDB3C();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1001FE058()
{
  result = qword_10044E138;
  if (!qword_10044E138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E138);
  }

  return result;
}

unint64_t sub_1001FE0B0()
{
  result = qword_10044E140;
  if (!qword_10044E140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E140);
  }

  return result;
}

unint64_t sub_1001FE108()
{
  result = qword_10044E148;
  if (!qword_10044E148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E148);
  }

  return result;
}

unint64_t sub_1001FE160()
{
  result = qword_10044E150;
  if (!qword_10044E150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E150);
  }

  return result;
}

uint64_t sub_1001FE1B4()
{
  v0 = qword_100447278;

  return v0;
}

unint64_t sub_1001FE1F0()
{
  result = qword_10044E158;
  if (!qword_10044E158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E158);
  }

  return result;
}

uint64_t sub_1001FE244(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100453FB8, &qword_100350370);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100453FC0, &qword_100350378);
  __chkstk_darwin(v5);
  sub_1001FDCF4();
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

unint64_t sub_1001FE40C()
{
  result = qword_10044E160;
  if (!qword_10044E160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E160);
  }

  return result;
}

unint64_t sub_1001FE464()
{
  result = qword_10044E168;
  if (!qword_10044E168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E168);
  }

  return result;
}

unint64_t sub_1001FE4BC()
{
  result = qword_10044E170;
  if (!qword_10044E170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E170);
  }

  return result;
}

uint64_t sub_1001FE510(uint64_t a1)
{
  sub_1002D3FEC();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1001FE5F8(uint64_t a1)
{
  v2 = sub_1001FDCF4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001FE648()
{
  result = qword_10044E188;
  if (!qword_10044E188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E188);
  }

  return result;
}

uint64_t sub_1001FE6A0(uint64_t a1)
{
  v2 = sub_1001FE4BC();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001FE6F0()
{
  result = qword_10044E190;
  if (!qword_10044E190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E190);
  }

  return result;
}

uint64_t sub_1001FE7A8@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001FEB44()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051F038);
  v1 = sub_10001EDB8(v0, qword_10051F038);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001FEC04()
{
  result = swift_getKeyPath();
  qword_10051F050 = result;
  return result;
}

uint64_t sub_1001FEC34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100453F90, &qword_100350330);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100453F98, &qword_100350338);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001FEE14, 0, 0);
}

uint64_t sub_1001FEE14()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1001FFF54();
  *v2 = v0;
  v2[1] = sub_1001FEEF8;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D7024, 0, &type metadata for AccessibilityBackTapEntity, v3);
}

uint64_t sub_1001FEEF8()
{

  return _swift_task_switch(sub_1001FEFF4, 0, 0);
}

uint64_t sub_1001FEFF4()
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
  if (qword_10043B140 != -1)
  {
    swift_once();
  }

  v3 = qword_10051F050;
  *(v0 + 288) = qword_10051F050;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100453F78, &qword_100453F80, &qword_100350318, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1001FF158;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1001FF158()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1001C0254;
  }

  else
  {
    v2 = sub_1001FF2C8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001FF2C8()
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
  sub_1001FE6F0();
  sub_100200168();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001FF540()
{
  v0 = sub_10000321C(&qword_100453FA0, &qword_100350340);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043B140 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100200168();
  sub_10002B6E4(&qword_100453FA8, &qword_100453FA0, &qword_100350340, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1001FF6B4(uint64_t *a1))(void *a1)
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
  return sub_100091044;
}

void (*sub_1001FF728(uint64_t *a1))(void *)
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

unint64_t sub_1001FF7C4()
{
  result = qword_10044E1A8;
  if (!qword_10044E1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E1A8);
  }

  return result;
}

unint64_t sub_1001FF81C()
{
  result = qword_10044E1B0;
  if (!qword_10044E1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E1B0);
  }

  return result;
}

uint64_t sub_1001FF918(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001FEC34(a1, v5, v4);
}

uint64_t sub_1001FF9C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002C0A6C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001FFA0C()
{
  result = qword_10044E1B8;
  if (!qword_10044E1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E1B8);
  }

  return result;
}

unint64_t sub_1001FFA64()
{
  result = qword_10044E1C0;
  if (!qword_10044E1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E1C0);
  }

  return result;
}

uint64_t sub_1001FFAD8()
{
  v1 = *(v0 + 16);
  *v1 = _AXSBackTapEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001FFB6C()
{
  _AXSBackTapSetEnabled();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001FFBD0(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001FFC60, 0, 0);
}

uint64_t sub_1001FFC60()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044E1A0, qword_10032AC30);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100453F78, &qword_100453F80, &qword_100350318, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000028;
  v1[1] = 0x8000000100361340;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1001FFD9C()
{
  result = qword_10044E1C8;
  if (!qword_10044E1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E1C8);
  }

  return result;
}

uint64_t sub_1001FFDF0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100200474();
  *v4 = v2;
  v4[1] = sub_1000D10D8;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1001FFEA4()
{
  result = qword_10044E1D0;
  if (!qword_10044E1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E1D0);
  }

  return result;
}

unint64_t sub_1001FFEFC()
{
  result = qword_10044E1D8;
  if (!qword_10044E1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E1D8);
  }

  return result;
}

unint64_t sub_1001FFF54()
{
  result = qword_10044E1E0;
  if (!qword_10044E1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E1E0);
  }

  return result;
}

uint64_t sub_1001FFFA8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100200474();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10020005C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100200474();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100200110()
{
  result = qword_10044E1E8;
  if (!qword_10044E1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E1E8);
  }

  return result;
}

unint64_t sub_100200168()
{
  result = qword_10044E1F0;
  if (!qword_10044E1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E1F0);
  }

  return result;
}

uint64_t sub_100200200(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001FFD9C();
  *v5 = v2;
  v5[1] = sub_100023140;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_1002002B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100023140;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_10020036C()
{
  result = qword_10044E208;
  if (!qword_10044E208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E208);
  }

  return result;
}

unint64_t sub_1002003C4()
{
  result = qword_10044E210;
  if (!qword_10044E210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E210);
  }

  return result;
}

unint64_t sub_10020041C()
{
  result = qword_10044E218;
  if (!qword_10044E218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E218);
  }

  return result;
}

unint64_t sub_100200474()
{
  result = qword_10044E220;
  if (!qword_10044E220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E220);
  }

  return result;
}

uint64_t sub_1002004C8()
{
  v0 = qword_100447288;

  return v0;
}

unint64_t sub_100200504()
{
  result = qword_10044E228;
  if (!qword_10044E228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E228);
  }

  return result;
}

uint64_t sub_100200558(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100453F68, &qword_1003502F8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100453F70, &qword_100350300);
  __chkstk_darwin(v5);
  sub_1001FFF54();
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

unint64_t sub_100200720()
{
  result = qword_10044E230;
  if (!qword_10044E230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E230);
  }

  return result;
}

unint64_t sub_100200778()
{
  result = qword_10044E238;
  if (!qword_10044E238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E238);
  }

  return result;
}

unint64_t sub_1002007D0()
{
  result = qword_10044E240;
  if (!qword_10044E240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E240);
  }

  return result;
}

uint64_t sub_100200824(uint64_t a1)
{
  sub_1002D3F98();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10020090C(uint64_t a1)
{
  v2 = sub_1001FFF54();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10020095C()
{
  result = qword_10044E258;
  if (!qword_10044E258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E258);
  }

  return result;
}

uint64_t sub_1002009B4(uint64_t a1)
{
  v2 = sub_1002007D0();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100200A04()
{
  result = qword_10044E260;
  if (!qword_10044E260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E260);
  }

  return result;
}

uint64_t sub_100200AC4@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100200E3C()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051F070);
  sub_10001EDB8(v0, qword_10051F070);
  return sub_1002D88F0();
}

uint64_t sub_100200EA0()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051F088);
  v1 = sub_10001EDB8(v0, qword_10051F088);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100200F60()
{
  result = swift_getKeyPath();
  qword_10051F0A0 = result;
  return result;
}

uint64_t sub_100200F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100453F40, &qword_1003502B8);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100453F48, &qword_1003502C0);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100201168, 0, 0);
}

uint64_t sub_100201168()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_100202318();
  *v2 = v0;
  v2[1] = sub_10020124C;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D7028, 0, &type metadata for AccessibilityReachabilityEntity, v3);
}

uint64_t sub_10020124C()
{

  return _swift_task_switch(sub_100201348, 0, 0);
}

uint64_t sub_100201348()
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
  if (qword_10043B160 != -1)
  {
    swift_once();
  }

  v3 = qword_10051F0A0;
  *(v0 + 288) = qword_10051F0A0;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100453F28, &qword_100453F30, &qword_1003502A0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1002014AC;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1002014AC()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_10020161C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10020161C()
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
  sub_100200A04();
  sub_10020252C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100201894()
{
  v0 = sub_10000321C(&qword_100453F50, &qword_1003502C8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043B160 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10020252C();
  sub_10002B6E4(&qword_100453F58, &qword_100453F50, &qword_1003502C8, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_100201A08(uint64_t *a1))(void *)
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

void (*sub_100201A7C(uint64_t *a1))(void *)
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

unint64_t sub_100201B18()
{
  result = qword_10044E278;
  if (!qword_10044E278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E278);
  }

  return result;
}

unint64_t sub_100201B70()
{
  result = qword_10044E280;
  if (!qword_10044E280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E280);
  }

  return result;
}

uint64_t sub_100201C6C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100200F88(a1, v5, v4);
}

uint64_t sub_100201D18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002C0ED4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100201D60()
{
  result = qword_10044E288;
  if (!qword_10044E288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E288);
  }

  return result;
}

unint64_t sub_100201DB8()
{
  result = qword_10044E290;
  if (!qword_10044E290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E290);
  }

  return result;
}

uint64_t sub_100201E2C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 reachabilityEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100201EF4()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setReachabilityEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100201F8C(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10020201C, 0, 0);
}

uint64_t sub_10020201C()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044E270, qword_10032B268);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100453F28, &qword_100453F30, &qword_1003502A0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000025;
  v1[1] = 0x800000010035C5D0;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_100202160()
{
  result = qword_10044E298;
  if (!qword_10044E298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E298);
  }

  return result;
}

uint64_t sub_1002021B4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100202784();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100202268()
{
  result = qword_10044E2A0;
  if (!qword_10044E2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E2A0);
  }

  return result;
}

unint64_t sub_1002022C0()
{
  result = qword_10044E2A8;
  if (!qword_10044E2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E2A8);
  }

  return result;
}

unint64_t sub_100202318()
{
  result = qword_10044E2B0;
  if (!qword_10044E2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E2B0);
  }

  return result;
}

uint64_t sub_10020236C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100202784();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100202420(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100202784();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1002024D4()
{
  result = qword_10044E2B8;
  if (!qword_10044E2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E2B8);
  }

  return result;
}

unint64_t sub_10020252C()
{
  result = qword_10044E2C0;
  if (!qword_10044E2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E2C0);
  }

  return result;
}

uint64_t sub_1002025C4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100202160();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10020267C()
{
  result = qword_10044E2D8;
  if (!qword_10044E2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E2D8);
  }

  return result;
}

unint64_t sub_1002026D4()
{
  result = qword_10044E2E0;
  if (!qword_10044E2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E2E0);
  }

  return result;
}

unint64_t sub_10020272C()
{
  result = qword_10044E2E8;
  if (!qword_10044E2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E2E8);
  }

  return result;
}

unint64_t sub_100202784()
{
  result = qword_10044E2F0;
  if (!qword_10044E2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E2F0);
  }

  return result;
}

uint64_t sub_1002027D8()
{
  v0 = qword_100447298;

  return v0;
}

unint64_t sub_100202814()
{
  result = qword_10044E2F8;
  if (!qword_10044E2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E2F8);
  }

  return result;
}

uint64_t sub_100202868(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100453F18, &qword_100350280);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100453F20, &qword_100350288);
  __chkstk_darwin(v5);
  sub_100202318();
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

unint64_t sub_100202A30()
{
  result = qword_10044E300;
  if (!qword_10044E300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E300);
  }

  return result;
}

unint64_t sub_100202A88()
{
  result = qword_10044E308;
  if (!qword_10044E308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E308);
  }

  return result;
}

unint64_t sub_100202AE0()
{
  result = qword_10044E310;
  if (!qword_10044E310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E310);
  }

  return result;
}

uint64_t sub_100202B34(uint64_t a1)
{
  sub_1002D3F44();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100202C1C(uint64_t a1)
{
  v2 = sub_100202318();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100202C6C()
{
  result = qword_10044E328;
  if (!qword_10044E328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E328);
  }

  return result;
}

uint64_t sub_100202CC4(uint64_t a1)
{
  v2 = sub_100202AE0();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100202D14()
{
  result = qword_10044E330;
  if (!qword_10044E330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E330);
  }

  return result;
}

uint64_t sub_100202DD8@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100203154()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051F0C0);
  sub_10001EDB8(v0, qword_10051F0C0);
  return sub_1002D88F0();
}

uint64_t sub_1002031B8()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051F0D8);
  v1 = sub_10001EDB8(v0, qword_10051F0D8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100203278()
{
  result = swift_getKeyPath();
  qword_10051F0F0 = result;
  return result;
}

uint64_t sub_1002032A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100453EF0, &qword_100350240);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100453EF8, &qword_100350248);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100203480, 0, 0);
}

uint64_t sub_100203480()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1002045E4();
  *v2 = v0;
  v2[1] = sub_100203564;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D702C, 0, &type metadata for AccessibilityHapticTouchDurationEntity, v3);
}

uint64_t sub_100203564()
{

  return _swift_task_switch(sub_100203660, 0, 0);
}

uint64_t sub_100203660()
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
  if (qword_10043B180 != -1)
  {
    swift_once();
  }

  v3 = qword_10051F0F0;
  v0[36] = qword_10051F0F0;

  v4 = swift_task_alloc();
  v0[37] = v4;
  v5 = sub_10002B6E4(&qword_100453ED0, &qword_100453ED8, &qword_100350220, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1002037BC;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 39, v3, &type metadata for AXSForceTouchTimeDurationAppEnum, v5);
}

uint64_t sub_1002037BC()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_10020392C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10020392C()
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
  sub_100202D14();
  sub_1002047F8();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100203BA4()
{
  v0 = sub_10000321C(&qword_100453F00, &qword_100350250);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043B180 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1002047F8();
  sub_10002B6E4(&qword_100453F08, &qword_100453F00, &qword_100350250, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_100203D18(uint64_t *a1))(void *)
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

void (*sub_100203D8C(uint64_t *a1))(void *)
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

unint64_t sub_100203E28()
{
  result = qword_10044E348;
  if (!qword_10044E348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E348);
  }

  return result;
}

unint64_t sub_100203E80()
{
  result = qword_10044E350;
  if (!qword_10044E350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E350);
  }

  return result;
}

uint64_t sub_100203F7C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1002032A0(a1, v5, v4);
}

uint64_t sub_100204028@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002C133C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100204070()
{
  result = qword_10044E358;
  if (!qword_10044E358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E358);
  }

  return result;
}

uint64_t sub_1002040E8()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = _AXSForceTouchTimeDuration();
  if (v1 >= 3)
  {
    v2 = 1;
  }

  else
  {
    v2 = v1;
  }

  **(v0 + 16) = v2;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1002041AC()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  _AXSSetForceTouchTimeDuration();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100204240(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1002042D0, 0, 0);
}

uint64_t sub_1002042D0()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044E340, &qword_10032B8A0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100453ED0, &qword_100453ED8, &qword_100350220, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  sub_10000C888();
  v2 = sub_1002D8890();
  *v1 = 0xD00000000000002FLL;
  v1[1] = 0x800000010035A8F0;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_10020442C()
{
  result = qword_10044E360;
  if (!qword_10044E360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E360);
  }

  return result;
}

uint64_t sub_100204480(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100204A50();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100204534()
{
  result = qword_10044E368;
  if (!qword_10044E368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E368);
  }

  return result;
}

unint64_t sub_10020458C()
{
  result = qword_10044E370;
  if (!qword_10044E370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E370);
  }

  return result;
}

unint64_t sub_1002045E4()
{
  result = qword_10044E378;
  if (!qword_10044E378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E378);
  }

  return result;
}

uint64_t sub_100204638(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100204A50();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1002046EC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100204A50();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1002047A0()
{
  result = qword_10044E380;
  if (!qword_10044E380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E380);
  }

  return result;
}

unint64_t sub_1002047F8()
{
  result = qword_10044E388;
  if (!qword_10044E388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E388);
  }

  return result;
}

uint64_t sub_100204890(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10020442C();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100204948()
{
  result = qword_10044E3A0;
  if (!qword_10044E3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E3A0);
  }

  return result;
}

unint64_t sub_1002049A0()
{
  result = qword_10044E3A8;
  if (!qword_10044E3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E3A8);
  }

  return result;
}

unint64_t sub_1002049F8()
{
  result = qword_10044E3B0;
  if (!qword_10044E3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E3B0);
  }

  return result;
}

unint64_t sub_100204A50()
{
  result = qword_10044E3B8;
  if (!qword_10044E3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E3B8);
  }

  return result;
}

uint64_t sub_100204AA4()
{
  v0 = qword_1004472A8;

  return v0;
}

unint64_t sub_100204AE0()
{
  result = qword_10044E3C0;
  if (!qword_10044E3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E3C0);
  }

  return result;
}

uint64_t sub_100204B34(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100453EC0, &qword_100350200);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100453EC8, &qword_100350208);
  __chkstk_darwin(v5);
  sub_1002045E4();
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

unint64_t sub_100204CFC()
{
  result = qword_10044E3C8;
  if (!qword_10044E3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E3C8);
  }

  return result;
}

unint64_t sub_100204D54()
{
  result = qword_10044E3D0;
  if (!qword_10044E3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E3D0);
  }

  return result;
}

unint64_t sub_100204DAC()
{
  result = qword_10044E3D8;
  if (!qword_10044E3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E3D8);
  }

  return result;
}

uint64_t sub_100204E00(uint64_t a1)
{
  sub_1002D3EF0();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100204EE8(uint64_t a1)
{
  v2 = sub_1002045E4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100204F38()
{
  result = qword_10044E3F0;
  if (!qword_10044E3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E3F0);
  }

  return result;
}

uint64_t sub_100204F90(uint64_t a1)
{
  v2 = sub_100204DAC();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100204FE0()
{
  result = qword_10044E3F8;
  if (!qword_10044E3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E3F8);
  }

  return result;
}

uint64_t sub_1002050A0@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100205418()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051F110);
  sub_10001EDB8(v0, qword_10051F110);
  return sub_1002D88F0();
}

uint64_t sub_10020547C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051F128);
  v1 = sub_10001EDB8(v0, qword_10051F128);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10020553C()
{
  result = swift_getKeyPath();
  qword_10051F140 = result;
  return result;
}

uint64_t sub_100205564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100453E98, &qword_1003501C0);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100453EA0, &qword_1003501C8);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100205744, 0, 0);
}

uint64_t sub_100205744()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1002069D4();
  *v2 = v0;
  v2[1] = sub_100205828;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D7030, 0, &type metadata for AccessibilityTapToWakeEntity, v3);
}

uint64_t sub_100205828()
{

  return _swift_task_switch(sub_100205924, 0, 0);
}

uint64_t sub_100205924()
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
  if (qword_10043B1A0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051F140;
  *(v0 + 288) = qword_10051F140;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100453E80, &qword_100453E88, &qword_1003501A8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_100205A88;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_100205A88()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_100205BF8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100205BF8()
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
  sub_100204FE0();
  sub_100206BE8();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100205E70()
{
  v0 = sub_10000321C(&qword_100453EA8, &qword_1003501D0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043B1A0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100206BE8();
  sub_10002B6E4(&qword_100453EB0, &qword_100453EA8, &qword_1003501D0, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_100205FE4(uint64_t *a1))(void *)
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

void (*sub_100206058(uint64_t *a1))(void *)
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

unint64_t sub_1002060F4()
{
  result = qword_10044E410;
  if (!qword_10044E410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E410);
  }

  return result;
}

unint64_t sub_10020614C()
{
  result = qword_10044E418;
  if (!qword_10044E418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E418);
  }

  return result;
}

uint64_t sub_100206248(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100205564(a1, v5, v4);
}

uint64_t sub_1002062F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002C1740();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10020633C()
{
  result = qword_10044E420;
  if (!qword_10044E420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E420);
  }

  return result;
}

unint64_t sub_100206394()
{
  result = qword_10044E428;
  if (!qword_10044E428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E428);
  }

  return result;
}

id sub_100206408()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  result = [objc_allocWithZone(NSUserDefaults) initWithSuiteName:AX_SpringBoardBundleName];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 16);
    v4 = sub_1002D8D00();
    v5 = [v2 BOOLForKey:v4];

    *v3 = v5;
    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10020653C()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  result = [objc_allocWithZone(NSUserDefaults) initWithSuiteName:AX_SpringBoardBundleName];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 16);
    v4 = sub_1002D8D00();
    [v2 setBool:v3 forKey:v4];

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100206648(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1002066D8, 0, 0);
}

uint64_t sub_1002066D8()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044E408, qword_10032BED8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100453E80, &qword_100453E88, &qword_1003501A8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD00000000000002ALL;
  v1[1] = 0x800000010035AD80;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_10020681C()
{
  result = qword_10044E430;
  if (!qword_10044E430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E430);
  }

  return result;
}

uint64_t sub_100206870(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100206E40();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100206924()
{
  result = qword_10044E438;
  if (!qword_10044E438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E438);
  }

  return result;
}

unint64_t sub_10020697C()
{
  result = qword_10044E440;
  if (!qword_10044E440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E440);
  }

  return result;
}

unint64_t sub_1002069D4()
{
  result = qword_10044E448;
  if (!qword_10044E448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E448);
  }

  return result;
}

uint64_t sub_100206A28(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100206E40();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100206ADC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100206E40();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100206B90()
{
  result = qword_10044E450;
  if (!qword_10044E450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E450);
  }

  return result;
}

unint64_t sub_100206BE8()
{
  result = qword_10044E458;
  if (!qword_10044E458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E458);
  }

  return result;
}

uint64_t sub_100206C80(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10020681C();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100206D38()
{
  result = qword_10044E470;
  if (!qword_10044E470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E470);
  }

  return result;
}

unint64_t sub_100206D90()
{
  result = qword_10044E478;
  if (!qword_10044E478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E478);
  }

  return result;
}

unint64_t sub_100206DE8()
{
  result = qword_10044E480;
  if (!qword_10044E480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E480);
  }

  return result;
}

unint64_t sub_100206E40()
{
  result = qword_10044E488;
  if (!qword_10044E488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E488);
  }

  return result;
}

uint64_t sub_100206E94()
{
  v0 = qword_1004472B8;

  return v0;
}

unint64_t sub_100206ED0()
{
  result = qword_10044E490;
  if (!qword_10044E490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E490);
  }

  return result;
}

uint64_t sub_100206F24(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100453E70, &qword_100350188);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100453E78, &qword_100350190);
  __chkstk_darwin(v5);
  sub_1002069D4();
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

unint64_t sub_1002070EC()
{
  result = qword_10044E498;
  if (!qword_10044E498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E498);
  }

  return result;
}

unint64_t sub_100207144()
{
  result = qword_10044E4A0;
  if (!qword_10044E4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E4A0);
  }

  return result;
}

unint64_t sub_10020719C()
{
  result = qword_10044E4A8;
  if (!qword_10044E4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E4A8);
  }

  return result;
}

uint64_t sub_1002071F0(uint64_t a1)
{
  sub_1002D3E9C();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1002072D8(uint64_t a1)
{
  v2 = sub_1002069D4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100207328()
{
  result = qword_10044E4C0;
  if (!qword_10044E4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E4C0);
  }

  return result;
}

uint64_t sub_100207380(uint64_t a1)
{
  v2 = sub_10020719C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1002073D0()
{
  result = qword_10044E4C8;
  if (!qword_10044E4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E4C8);
  }

  return result;
}

uint64_t sub_100207494@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100207810()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051F160);
  sub_10001EDB8(v0, qword_10051F160);
  return sub_1002D88F0();
}

uint64_t sub_100207874()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051F178);
  v1 = sub_10001EDB8(v0, qword_10051F178);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100207934()
{
  result = swift_getKeyPath();
  qword_10051F190 = result;
  return result;
}

uint64_t sub_10020795C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100453E48, &qword_100350148);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100453E50, &qword_100350150);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100207B3C, 0, 0);
}

uint64_t sub_100207B3C()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_100208C90();
  *v2 = v0;
  v2[1] = sub_100207C20;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D7034, 0, &type metadata for AccessibilityShakeToUndoEntity, v3);
}

uint64_t sub_100207C20()
{

  return _swift_task_switch(sub_100207D1C, 0, 0);
}

uint64_t sub_100207D1C()
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
  if (qword_10043B1C0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051F190;
  *(v0 + 288) = qword_10051F190;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100453E30, &qword_100453E38, &qword_100350130, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_100207E80;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_100207E80()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_100207FF0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100207FF0()
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
  sub_1002073D0();
  sub_100208EA4();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100208268()
{
  v0 = sub_10000321C(&qword_100453E58, &qword_100350158);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043B1C0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100208EA4();
  sub_10002B6E4(&qword_100453E60, &qword_100453E58, &qword_100350158, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1002083DC(uint64_t *a1))(void *)
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

void (*sub_100208450(uint64_t *a1))(void *)
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

unint64_t sub_1002084EC()
{
  result = qword_10044E4E0;
  if (!qword_10044E4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E4E0);
  }

  return result;
}

unint64_t sub_100208544()
{
  result = qword_10044E4E8;
  if (!qword_10044E4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E4E8);
  }

  return result;
}

uint64_t sub_100208640(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10020795C(a1, v5, v4);
}

uint64_t sub_1002086EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002C1BA8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100208734()
{
  result = qword_10044E4F0;
  if (!qword_10044E4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E4F0);
  }

  return result;
}

unint64_t sub_10020878C()
{
  result = qword_10044E4F8;
  if (!qword_10044E4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E4F8);
  }

  return result;
}

uint64_t sub_100208800()
{
  v1 = *(v0 + 16);
  *v1 = _AXSShakeToUndoDisabled() == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100208894()
{
  _AXSSetShakeToUndoDisabled();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100208900(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100208990, 0, 0);
}

uint64_t sub_100208990()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044E4D8, qword_10032C510);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100453E30, &qword_100453E38, &qword_100350130, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000026;
  v1[1] = 0x800000010035BEA0;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_100208AD8()
{
  result = qword_10044E500;
  if (!qword_10044E500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E500);
  }

  return result;
}

uint64_t sub_100208B2C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1002090FC();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100208BE0()
{
  result = qword_10044E508;
  if (!qword_10044E508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E508);
  }

  return result;
}

unint64_t sub_100208C38()
{
  result = qword_10044E510;
  if (!qword_10044E510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E510);
  }

  return result;
}

unint64_t sub_100208C90()
{
  result = qword_10044E518;
  if (!qword_10044E518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E518);
  }

  return result;
}

uint64_t sub_100208CE4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1002090FC();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100208D98(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1002090FC();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100208E4C()
{
  result = qword_10044E520;
  if (!qword_10044E520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E520);
  }

  return result;
}

unint64_t sub_100208EA4()
{
  result = qword_10044E528;
  if (!qword_10044E528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E528);
  }

  return result;
}

uint64_t sub_100208F3C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100208AD8();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100208FF4()
{
  result = qword_10044E540;
  if (!qword_10044E540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E540);
  }

  return result;
}

unint64_t sub_10020904C()
{
  result = qword_10044E548;
  if (!qword_10044E548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E548);
  }

  return result;
}

unint64_t sub_1002090A4()
{
  result = qword_10044E550;
  if (!qword_10044E550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E550);
  }

  return result;
}

unint64_t sub_1002090FC()
{
  result = qword_10044E558;
  if (!qword_10044E558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E558);
  }

  return result;
}

uint64_t sub_100209150()
{
  v0 = qword_1004472C8;

  return v0;
}

unint64_t sub_10020918C()
{
  result = qword_10044E560;
  if (!qword_10044E560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E560);
  }

  return result;
}

uint64_t sub_1002091E0(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100453E20, &qword_100350110);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100453E28, &qword_100350118);
  __chkstk_darwin(v5);
  sub_100208C90();
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

unint64_t sub_1002093A8()
{
  result = qword_10044E568;
  if (!qword_10044E568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E568);
  }

  return result;
}

unint64_t sub_100209400()
{
  result = qword_10044E570;
  if (!qword_10044E570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E570);
  }

  return result;
}

unint64_t sub_100209458()
{
  result = qword_10044E578;
  if (!qword_10044E578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E578);
  }

  return result;
}

uint64_t sub_1002094AC(uint64_t a1)
{
  sub_1002D3E48();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100209594(uint64_t a1)
{
  v2 = sub_100208C90();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1002095E4()
{
  result = qword_10044E590;
  if (!qword_10044E590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E590);
  }

  return result;
}

uint64_t sub_10020963C(uint64_t a1)
{
  v2 = sub_100209458();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10020968C()
{
  result = qword_10044E598;
  if (!qword_10044E598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E598);
  }

  return result;
}

uint64_t sub_100209748@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100209ABC()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051F1B0);
  sub_10001EDB8(v0, qword_10051F1B0);
  return sub_1002D88F0();
}

uint64_t sub_100209B20()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051F1C8);
  v1 = sub_10001EDB8(v0, qword_10051F1C8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100209BE0()
{
  result = swift_getKeyPath();
  qword_10051F1E0 = result;
  return result;
}

uint64_t sub_100209C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100453DF8, &qword_1003500D0);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100453E00, &qword_1003500D8);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100209DE8, 0, 0);
}

uint64_t sub_100209DE8()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_10020AF34();
  *v2 = v0;
  v2[1] = sub_100209ECC;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D7038, 0, &type metadata for AccessibilityVibrationEntity, v3);
}

uint64_t sub_100209ECC()
{

  return _swift_task_switch(sub_100209FC8, 0, 0);
}

uint64_t sub_100209FC8()
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
  if (qword_10043B1E0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051F1E0;
  *(v0 + 288) = qword_10051F1E0;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100453DE0, &qword_100453DE8, &qword_1003500B8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_10020A12C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_10020A12C()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_10020A29C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10020A29C()
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
  sub_10020968C();
  sub_10020B148();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10020A514()
{
  v0 = sub_10000321C(&qword_100453E08, &qword_1003500E0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043B1E0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10020B148();
  sub_10002B6E4(&qword_100453E10, &qword_100453E08, &qword_1003500E0, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_10020A688(uint64_t *a1))(void *)
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

void (*sub_10020A6FC(uint64_t *a1))(void *)
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

unint64_t sub_10020A798()
{
  result = qword_10044E5B0;
  if (!qword_10044E5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E5B0);
  }

  return result;
}

unint64_t sub_10020A7F0()
{
  result = qword_10044E5B8;
  if (!qword_10044E5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E5B8);
  }

  return result;
}

uint64_t sub_10020A8EC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100209C08(a1, v5, v4);
}

uint64_t sub_10020A998@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002C2010();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10020A9E0()
{
  result = qword_10044E5C0;
  if (!qword_10044E5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E5C0);
  }

  return result;
}

unint64_t sub_10020AA38()
{
  result = qword_10044E5C8;
  if (!qword_10044E5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E5C8);
  }

  return result;
}

uint64_t sub_10020AAAC()
{
  v1 = *(v0 + 16);
  *v1 = _AXSVibrationDisabled() == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10020AB40()
{
  _AXSSetVibrationDisabled();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10020ABAC(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10020AC3C, 0, 0);
}

uint64_t sub_10020AC3C()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044E5A8, qword_10032CB48);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100453DE0, &qword_100453DE8, &qword_1003500B8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000022;
  v1[1] = 0x800000010035A110;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_10020AD7C()
{
  result = qword_10044E5D0;
  if (!qword_10044E5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E5D0);
  }

  return result;
}

uint64_t sub_10020ADD0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10020B3A0();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10020AE84()
{
  result = qword_10044E5D8;
  if (!qword_10044E5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E5D8);
  }

  return result;
}

unint64_t sub_10020AEDC()
{
  result = qword_10044E5E0;
  if (!qword_10044E5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E5E0);
  }

  return result;
}

unint64_t sub_10020AF34()
{
  result = qword_10044E5E8;
  if (!qword_10044E5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E5E8);
  }

  return result;
}

uint64_t sub_10020AF88(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10020B3A0();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10020B03C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10020B3A0();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10020B0F0()
{
  result = qword_10044E5F0;
  if (!qword_10044E5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E5F0);
  }

  return result;
}

unint64_t sub_10020B148()
{
  result = qword_10044E5F8;
  if (!qword_10044E5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E5F8);
  }

  return result;
}

uint64_t sub_10020B1E0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10020AD7C();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10020B298()
{
  result = qword_10044E610;
  if (!qword_10044E610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E610);
  }

  return result;
}

unint64_t sub_10020B2F0()
{
  result = qword_10044E618;
  if (!qword_10044E618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E618);
  }

  return result;
}

unint64_t sub_10020B348()
{
  result = qword_10044E620;
  if (!qword_10044E620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E620);
  }

  return result;
}

unint64_t sub_10020B3A0()
{
  result = qword_10044E628;
  if (!qword_10044E628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E628);
  }

  return result;
}

uint64_t sub_10020B3F4()
{
  v0 = qword_1004472D8;

  return v0;
}

unint64_t sub_10020B430()
{
  result = qword_10044E630;
  if (!qword_10044E630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E630);
  }

  return result;
}

uint64_t sub_10020B484(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100453DD0, &qword_100350098);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100453DD8, &qword_1003500A0);
  __chkstk_darwin(v5);
  sub_10020AF34();
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

unint64_t sub_10020B64C()
{
  result = qword_10044E638;
  if (!qword_10044E638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E638);
  }

  return result;
}

unint64_t sub_10020B6A4()
{
  result = qword_10044E640;
  if (!qword_10044E640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E640);
  }

  return result;
}

unint64_t sub_10020B6FC()
{
  result = qword_10044E648;
  if (!qword_10044E648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E648);
  }

  return result;
}

uint64_t sub_10020B750(uint64_t a1)
{
  sub_1002D3DF4();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10020B838(uint64_t a1)
{
  v2 = sub_10020AF34();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10020B888()
{
  result = qword_10044E660;
  if (!qword_10044E660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E660);
  }

  return result;
}

uint64_t sub_10020B8E0(uint64_t a1)
{
  v2 = sub_10020B6FC();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10020B930()
{
  result = qword_10044E668;
  if (!qword_10044E668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E668);
  }

  return result;
}

uint64_t sub_10020B9C8()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051F1E8);
  sub_10001EDB8(v5, qword_10051F1E8);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_10020BB38@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10020BEA8()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051F200);
  sub_10001EDB8(v0, qword_10051F200);
  return sub_1002D88F0();
}

uint64_t sub_10020BF0C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051F218);
  v1 = sub_10001EDB8(v0, qword_10051F218);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10020BFCC()
{
  result = swift_getKeyPath();
  qword_10051F230 = result;
  return result;
}

uint64_t sub_10020BFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100453DA8, &qword_100350058);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100453DB0, &qword_100350060);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10020C1D4, 0, 0);
}

uint64_t sub_10020C1D4()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_10020D32C();
  *v2 = v0;
  v2[1] = sub_10020C2B8;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D703C, 0, &type metadata for AccessibilityPreventLockToEndCallEntity, v3);
}

uint64_t sub_10020C2B8()
{

  return _swift_task_switch(sub_10020C3B4, 0, 0);
}

uint64_t sub_10020C3B4()
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
  if (qword_10043B200 != -1)
  {
    swift_once();
  }

  v3 = qword_10051F230;
  *(v0 + 288) = qword_10051F230;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100453D90, &qword_100453D98, &qword_100350040, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_10020C518;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_10020C518()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_10020C688;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10020C688()
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
  sub_10020B930();
  sub_10020D540();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10020C900()
{
  v0 = sub_10000321C(&qword_100453DB8, &qword_100350068);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043B200 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10020D540();
  sub_10002B6E4(&qword_100453DC0, &qword_100453DB8, &qword_100350068, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_10020CA74(uint64_t *a1))(void *)
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

void (*sub_10020CAE8(uint64_t *a1))(void *)
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

unint64_t sub_10020CB84()
{
  result = qword_10044E680;
  if (!qword_10044E680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E680);
  }

  return result;
}

unint64_t sub_10020CBDC()
{
  result = qword_10044E688;
  if (!qword_10044E688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E688);
  }

  return result;
}

uint64_t sub_10020CCD8(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10020BFF4(a1, v5, v4);
}

uint64_t sub_10020CD84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002C2478();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10020CDCC()
{
  result = qword_10044E690;
  if (!qword_10044E690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E690);
  }

  return result;
}

unint64_t sub_10020CE24()
{
  result = qword_10044E698;
  if (!qword_10044E698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E698);
  }

  return result;
}

uint64_t sub_10020CE98()
{
  v1 = *(v0 + 16);
  *v1 = _AXSPhoneLockToEndCallEnabled() == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10020CF2C()
{
  _AXSPhoneLockToEndCallSetEnabled();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10020CF98(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10020D028, 0, 0);
}

uint64_t sub_10020D028()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044E678, qword_10032D180);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100453D90, &qword_100453D98, &qword_100350040, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000029;
  v1[1] = 0x800000010035DA70;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_10020D174()
{
  result = qword_10044E6A0;
  if (!qword_10044E6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E6A0);
  }

  return result;
}

uint64_t sub_10020D1C8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10020D798();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10020D27C()
{
  result = qword_10044E6A8;
  if (!qword_10044E6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E6A8);
  }

  return result;
}

unint64_t sub_10020D2D4()
{
  result = qword_10044E6B0;
  if (!qword_10044E6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E6B0);
  }

  return result;
}

unint64_t sub_10020D32C()
{
  result = qword_10044E6B8;
  if (!qword_10044E6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E6B8);
  }

  return result;
}

uint64_t sub_10020D380(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10020D798();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10020D434(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10020D798();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10020D4E8()
{
  result = qword_10044E6C0;
  if (!qword_10044E6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E6C0);
  }

  return result;
}

unint64_t sub_10020D540()
{
  result = qword_10044E6C8;
  if (!qword_10044E6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E6C8);
  }

  return result;
}

uint64_t sub_10020D5D8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10020D174();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10020D690()
{
  result = qword_10044E6E0;
  if (!qword_10044E6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E6E0);
  }

  return result;
}

unint64_t sub_10020D6E8()
{
  result = qword_10044E6E8;
  if (!qword_10044E6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E6E8);
  }

  return result;
}

unint64_t sub_10020D740()
{
  result = qword_10044E6F0;
  if (!qword_10044E6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E6F0);
  }

  return result;
}

unint64_t sub_10020D798()
{
  result = qword_10044E6F8;
  if (!qword_10044E6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E6F8);
  }

  return result;
}

uint64_t sub_10020D7EC()
{
  v0 = qword_1004472E8;

  return v0;
}

unint64_t sub_10020D828()
{
  result = qword_10044E700;
  if (!qword_10044E700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E700);
  }

  return result;
}

uint64_t sub_10020D87C(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100453D80, &qword_100350020);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100453D88, &qword_100350028);
  __chkstk_darwin(v5);
  sub_10020D32C();
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

unint64_t sub_10020DA44()
{
  result = qword_10044E708;
  if (!qword_10044E708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E708);
  }

  return result;
}

unint64_t sub_10020DA9C()
{
  result = qword_10044E710;
  if (!qword_10044E710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E710);
  }

  return result;
}

unint64_t sub_10020DAF4()
{
  result = qword_10044E718;
  if (!qword_10044E718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E718);
  }

  return result;
}

uint64_t sub_10020DB48(uint64_t a1)
{
  sub_1002D3DA0();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10020DC30(uint64_t a1)
{
  v2 = sub_10020D32C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10020DC80()
{
  result = qword_10044E730;
  if (!qword_10044E730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E730);
  }

  return result;
}

uint64_t sub_10020DCD8(uint64_t a1)
{
  v2 = sub_10020DAF4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10020DD28()
{
  result = qword_10044E738;
  if (!qword_10044E738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E738);
  }

  return result;
}

uint64_t sub_10020DDEC@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10020E174()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051F250);
  sub_10001EDB8(v0, qword_10051F250);
  return sub_1002D88F0();
}

uint64_t sub_10020E1D8()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051F268);
  v1 = sub_10001EDB8(v0, qword_10051F268);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10020E298()
{
  result = swift_getKeyPath();
  qword_10051F280 = result;
  return result;
}

uint64_t sub_10020E2C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100453D58, &qword_10034FFE0);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100453D60, &qword_10034FFE8);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10020E4A0, 0, 0);
}

uint64_t sub_10020E4A0()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_10020F5EC();
  *v2 = v0;
  v2[1] = sub_10020E584;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D7040, 0, &type metadata for AccessibilityVoiceControlEnabledEntity, v3);
}

uint64_t sub_10020E584()
{

  return _swift_task_switch(sub_10020E680, 0, 0);
}

uint64_t sub_10020E680()
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
  if (qword_10043B220 != -1)
  {
    swift_once();
  }

  v3 = qword_10051F280;
  *(v0 + 288) = qword_10051F280;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100453D40, &qword_100453D48, &qword_10034FFC8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_10020E7E4;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_10020E7E4()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_10020E954;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10020E954()
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
  sub_10020DD28();
  sub_10020F800();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10020EBCC()
{
  v0 = sub_10000321C(&qword_100453D68, &qword_10034FFF0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043B220 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10020F800();
  sub_10002B6E4(&qword_100453D70, &qword_100453D68, &qword_10034FFF0, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_10020ED40(uint64_t *a1))(void *)
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

void (*sub_10020EDB4(uint64_t *a1))(void *)
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

unint64_t sub_10020EE50()
{
  result = qword_10044E750;
  if (!qword_10044E750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E750);
  }

  return result;
}

unint64_t sub_10020EEA8()
{
  result = qword_10044E758;
  if (!qword_10044E758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E758);
  }

  return result;
}

uint64_t sub_10020EFA4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10020E2C0(a1, v5, v4);
}

uint64_t sub_10020F050@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002C28E0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10020F098()
{
  result = qword_10044E760;
  if (!qword_10044E760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E760);
  }

  return result;
}

unint64_t sub_10020F0F0()
{
  result = qword_10044E768;
  if (!qword_10044E768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E768);
  }

  return result;
}

uint64_t sub_10020F164()
{
  v1 = *(v0 + 16);
  *v1 = _AXSCommandAndControlEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10020F1F8()
{
  _AXSCommandAndControlSetEnabled();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10020F25C(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10020F2EC, 0, 0);
}

uint64_t sub_10020F2EC()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044E748, qword_10032D7B8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100453D40, &qword_100453D48, &qword_10034FFC8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000016;
  v1[1] = 0x8000000100359E20;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_10020F434()
{
  result = qword_10044E770;
  if (!qword_10044E770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E770);
  }

  return result;
}

uint64_t sub_10020F488(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10020FA58();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10020F53C()
{
  result = qword_10044E778;
  if (!qword_10044E778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E778);
  }

  return result;
}

unint64_t sub_10020F594()
{
  result = qword_10044E780;
  if (!qword_10044E780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E780);
  }

  return result;
}

unint64_t sub_10020F5EC()
{
  result = qword_10044E788;
  if (!qword_10044E788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E788);
  }

  return result;
}

uint64_t sub_10020F640(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10020FA58();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10020F6F4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10020FA58();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10020F7A8()
{
  result = qword_10044E790;
  if (!qword_10044E790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E790);
  }

  return result;
}

unint64_t sub_10020F800()
{
  result = qword_10044E798;
  if (!qword_10044E798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E798);
  }

  return result;
}

uint64_t sub_10020F898(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10020F434();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10020F950()
{
  result = qword_10044E7B0;
  if (!qword_10044E7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E7B0);
  }

  return result;
}

unint64_t sub_10020F9A8()
{
  result = qword_10044E7B8;
  if (!qword_10044E7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E7B8);
  }

  return result;
}

unint64_t sub_10020FA00()
{
  result = qword_10044E7C0;
  if (!qword_10044E7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E7C0);
  }

  return result;
}

unint64_t sub_10020FA58()
{
  result = qword_10044E7C8;
  if (!qword_10044E7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E7C8);
  }

  return result;
}

uint64_t sub_10020FAAC()
{
  v0 = qword_1004472F8;

  return v0;
}

unint64_t sub_10020FAE8()
{
  result = qword_10044E7D0;
  if (!qword_10044E7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E7D0);
  }

  return result;
}

uint64_t sub_10020FB3C(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100453D30, &qword_10034FFA8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100453D38, &qword_10034FFB0);
  __chkstk_darwin(v5);
  sub_10020F5EC();
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

unint64_t sub_10020FD04()
{
  result = qword_10044E7D8;
  if (!qword_10044E7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E7D8);
  }

  return result;
}

unint64_t sub_10020FD5C()
{
  result = qword_10044E7E0;
  if (!qword_10044E7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E7E0);
  }

  return result;
}

unint64_t sub_10020FDB4()
{
  result = qword_10044E7E8;
  if (!qword_10044E7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E7E8);
  }

  return result;
}

uint64_t sub_10020FE08(uint64_t a1)
{
  sub_1002D3D4C();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10020FEF0(uint64_t a1)
{
  v2 = sub_10020F5EC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10020FF40()
{
  result = qword_10044E800;
  if (!qword_10044E800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E800);
  }

  return result;
}

uint64_t sub_10020FF98(uint64_t a1)
{
  v2 = sub_10020FDB4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10020FFE8()
{
  result = qword_10044E808;
  if (!qword_10044E808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E808);
  }

  return result;
}

uint64_t sub_100210080()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051F288);
  sub_10001EDB8(v5, qword_10051F288);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_1002101F0@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100210560()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051F2A0);
  sub_10001EDB8(v0, qword_10051F2A0);
  return sub_1002D88F0();
}

uint64_t sub_1002105C4()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051F2B8);
  v1 = sub_10001EDB8(v0, qword_10051F2B8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100210684()
{
  result = swift_getKeyPath();
  qword_10051F2D0 = result;
  return result;
}

uint64_t sub_1002106AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100453D08, &qword_10034FF68);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100453D10, &qword_10034FF70);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10021088C, 0, 0);
}

uint64_t sub_10021088C()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_100211AA4();
  *v2 = v0;
  v2[1] = sub_100210970;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D7044, 0, &type metadata for AccessibilityVoiceControlShowConfirmationEntity, v3);
}

uint64_t sub_100210970()
{

  return _swift_task_switch(sub_100210A6C, 0, 0);
}

uint64_t sub_100210A6C()
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
  if (qword_10043B240 != -1)
  {
    swift_once();
  }

  v3 = qword_10051F2D0;
  *(v0 + 288) = qword_10051F2D0;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100453CF0, &qword_100453CF8, &qword_10034FF50, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_100210BD0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_100210BD0()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_100210D40;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100210D40()
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
  sub_10020FFE8();
  sub_100211CB8();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100210FB8()
{
  v0 = sub_10000321C(&qword_100453D18, &qword_10034FF78);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043B240 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100211CB8();
  sub_10002B6E4(&qword_100453D20, &qword_100453D18, &qword_10034FF78, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_10021112C(uint64_t *a1))(void *)
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

void (*sub_1002111A0(uint64_t *a1))(void *)
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

unint64_t sub_10021123C()
{
  result = qword_10044E820;
  if (!qword_10044E820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E820);
  }

  return result;
}

unint64_t sub_100211294()
{
  result = qword_10044E828;
  if (!qword_10044E828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E828);
  }

  return result;
}

uint64_t sub_100211390(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1002106AC(a1, v5, v4);
}

uint64_t sub_10021143C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002C2D48();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100211484()
{
  result = qword_10044E830;
  if (!qword_10044E830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E830);
  }

  return result;
}

unint64_t sub_1002114DC()
{
  result = qword_10044E838;
  if (!qword_10044E838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E838);
  }

  return result;
}

uint64_t sub_100211550()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedPreferences];
  v3 = [v2 showTextResponseUponRecognition];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100211648()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedPreferences];
  [v2 setShowTextResponseUponRecognition:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100211710(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1002117A0, 0, 0);
}

uint64_t sub_1002117A0()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044E818, qword_10032DDF0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100453CF0, &qword_100453CF8, &qword_10034FF50, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD00000000000002FLL;
  v1[1] = 0x800000010035BE10;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1002118EC()
{
  result = qword_10044E840;
  if (!qword_10044E840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E840);
  }

  return result;
}

uint64_t sub_100211940(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100211F10();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1002119F4()
{
  result = qword_10044E848;
  if (!qword_10044E848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E848);
  }

  return result;
}

unint64_t sub_100211A4C()
{
  result = qword_10044E850;
  if (!qword_10044E850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E850);
  }

  return result;
}

unint64_t sub_100211AA4()
{
  result = qword_10044E858;
  if (!qword_10044E858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E858);
  }

  return result;
}

uint64_t sub_100211AF8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100211F10();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100211BAC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100211F10();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100211C60()
{
  result = qword_10044E860;
  if (!qword_10044E860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E860);
  }

  return result;
}

unint64_t sub_100211CB8()
{
  result = qword_10044E868;
  if (!qword_10044E868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E868);
  }

  return result;
}

uint64_t sub_100211D50(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1002118EC();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100211E08()
{
  result = qword_10044E880;
  if (!qword_10044E880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E880);
  }

  return result;
}

unint64_t sub_100211E60()
{
  result = qword_10044E888;
  if (!qword_10044E888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E888);
  }

  return result;
}

unint64_t sub_100211EB8()
{
  result = qword_10044E890;
  if (!qword_10044E890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E890);
  }

  return result;
}

unint64_t sub_100211F10()
{
  result = qword_10044E898;
  if (!qword_10044E898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E898);
  }

  return result;
}

uint64_t sub_100211F64()
{
  v0 = qword_100447308;

  return v0;
}

unint64_t sub_100211FA0()
{
  result = qword_10044E8A0;
  if (!qword_10044E8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E8A0);
  }

  return result;
}

uint64_t sub_100211FF4(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100453CE0, &qword_10034FF30);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100453CE8, &qword_10034FF38);
  __chkstk_darwin(v5);
  sub_100211AA4();
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

unint64_t sub_1002121BC()
{
  result = qword_10044E8A8;
  if (!qword_10044E8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E8A8);
  }

  return result;
}

unint64_t sub_100212214()
{
  result = qword_10044E8B0;
  if (!qword_10044E8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E8B0);
  }

  return result;
}

unint64_t sub_10021226C()
{
  result = qword_10044E8B8;
  if (!qword_10044E8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E8B8);
  }

  return result;
}

uint64_t sub_1002122C0(uint64_t a1)
{
  sub_1002D3CF8();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1002123A8(uint64_t a1)
{
  v2 = sub_100211AA4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1002123F8()
{
  result = qword_10044E8D0;
  if (!qword_10044E8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E8D0);
  }

  return result;
}

uint64_t sub_100212450(uint64_t a1)
{
  v2 = sub_10021226C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1002124A0()
{
  result = qword_10044E8D8;
  if (!qword_10044E8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E8D8);
  }

  return result;
}

uint64_t sub_10021255C@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1002128D0()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051F2F0);
  sub_10001EDB8(v0, qword_10051F2F0);
  return sub_1002D88F0();
}

uint64_t sub_100212934()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051F308);
  v1 = sub_10001EDB8(v0, qword_10051F308);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1002129F4()
{
  result = swift_getKeyPath();
  qword_10051F320 = result;
  return result;
}

uint64_t sub_100212A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100453CB8, &qword_10034FEF0);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100453CC0, &qword_10034FEF8);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100212BFC, 0, 0);
}

uint64_t sub_100212BFC()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_100213E08();
  *v2 = v0;
  v2[1] = sub_100212CE0;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D7048, 0, &type metadata for AccessibilityVoiceControlPlaySoundEntity, v3);
}

uint64_t sub_100212CE0()
{

  return _swift_task_switch(sub_100212DDC, 0, 0);
}

uint64_t sub_100212DDC()
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
  if (qword_10043B260 != -1)
  {
    swift_once();
  }

  v3 = qword_10051F320;
  *(v0 + 288) = qword_10051F320;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100453CA0, &qword_100453CA8, &qword_10034FED8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_100212F40;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_100212F40()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1002130B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002130B0()
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
  sub_1002124A0();
  sub_10021401C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100213328()
{
  v0 = sub_10000321C(&qword_100453CC8, &qword_10034FF00);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043B260 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10021401C();
  sub_10002B6E4(&qword_100453CD0, &qword_100453CC8, &qword_10034FF00, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_10021349C(uint64_t *a1))(void *)
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

void (*sub_100213510(uint64_t *a1))(void *)
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

unint64_t sub_1002135AC()
{
  result = qword_10044E8F0;
  if (!qword_10044E8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E8F0);
  }

  return result;
}

unint64_t sub_100213604()
{
  result = qword_10044E8F8;
  if (!qword_10044E8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E8F8);
  }

  return result;
}

uint64_t sub_100213700(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100212A1C(a1, v5, v4);
}

uint64_t sub_1002137AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002C31B0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1002137F4()
{
  result = qword_10044E900;
  if (!qword_10044E900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E900);
  }

  return result;
}

unint64_t sub_10021384C()
{
  result = qword_10044E908;
  if (!qword_10044E908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E908);
  }

  return result;
}

uint64_t sub_1002138C0()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedPreferences];
  v3 = [v2 playSoundUponRecognition];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1002139B8()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedPreferences];
  [v2 setPlaySoundUponRecognition:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100213A80(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100213B10, 0, 0);
}

uint64_t sub_100213B10()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044E8E8, qword_10032E428);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100453CA0, &qword_100453CA8, &qword_10034FED8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000030;
  v1[1] = 0x800000010035CD80;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_100213C50()
{
  result = qword_10044E910;
  if (!qword_10044E910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E910);
  }

  return result;
}

uint64_t sub_100213CA4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100214274();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100213D58()
{
  result = qword_10044E918;
  if (!qword_10044E918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E918);
  }

  return result;
}

unint64_t sub_100213DB0()
{
  result = qword_10044E920;
  if (!qword_10044E920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E920);
  }

  return result;
}

unint64_t sub_100213E08()
{
  result = qword_10044E928;
  if (!qword_10044E928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E928);
  }

  return result;
}

uint64_t sub_100213E5C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100214274();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100213F10(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100214274();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100213FC4()
{
  result = qword_10044E930;
  if (!qword_10044E930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E930);
  }

  return result;
}

unint64_t sub_10021401C()
{
  result = qword_10044E938;
  if (!qword_10044E938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E938);
  }

  return result;
}

uint64_t sub_1002140B4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100213C50();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10021416C()
{
  result = qword_10044E950;
  if (!qword_10044E950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E950);
  }

  return result;
}

unint64_t sub_1002141C4()
{
  result = qword_10044E958;
  if (!qword_10044E958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E958);
  }

  return result;
}

unint64_t sub_10021421C()
{
  result = qword_10044E960;
  if (!qword_10044E960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E960);
  }

  return result;
}

unint64_t sub_100214274()
{
  result = qword_10044E968;
  if (!qword_10044E968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E968);
  }

  return result;
}

uint64_t sub_1002142C8()
{
  v0 = qword_100447318;

  return v0;
}

unint64_t sub_100214304()
{
  result = qword_10044E970;
  if (!qword_10044E970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E970);
  }

  return result;
}

uint64_t sub_100214358(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100453C90, &qword_10034FEB8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100453C98, &qword_10034FEC0);
  __chkstk_darwin(v5);
  sub_100213E08();
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

unint64_t sub_100214520()
{
  result = qword_10044E978;
  if (!qword_10044E978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E978);
  }

  return result;
}

unint64_t sub_100214578()
{
  result = qword_10044E980;
  if (!qword_10044E980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E980);
  }

  return result;
}

unint64_t sub_1002145D0()
{
  result = qword_10044E988;
  if (!qword_10044E988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E988);
  }

  return result;
}

uint64_t sub_100214624(uint64_t a1)
{
  sub_1002D3CA4();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10021470C(uint64_t a1)
{
  v2 = sub_100213E08();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10021475C()
{
  result = qword_10044E9A0;
  if (!qword_10044E9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E9A0);
  }

  return result;
}

uint64_t sub_1002147B4(uint64_t a1)
{
  v2 = sub_1002145D0();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100214804()
{
  result = qword_10044E9A8;
  if (!qword_10044E9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E9A8);
  }

  return result;
}

uint64_t sub_1002148C0@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100214C34()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051F340);
  sub_10001EDB8(v0, qword_10051F340);
  return sub_1002D88F0();
}

uint64_t sub_100214C98()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051F358);
  v1 = sub_10001EDB8(v0, qword_10051F358);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100214D58()
{
  result = swift_getKeyPath();
  qword_10051F370 = result;
  return result;
}

uint64_t sub_100214D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100453C68, &qword_10034FE78);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100453C70, &qword_10034FE80);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100214F60, 0, 0);
}

uint64_t sub_100214F60()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_10021616C();
  *v2 = v0;
  v2[1] = sub_100215044;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D704C, 0, &type metadata for AccessibilityVoiceControlShowHintsEntity, v3);
}

uint64_t sub_100215044()
{

  return _swift_task_switch(sub_100215140, 0, 0);
}

uint64_t sub_100215140()
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
  if (qword_10043B280 != -1)
  {
    swift_once();
  }

  v3 = qword_10051F370;
  *(v0 + 288) = qword_10051F370;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100453C50, &qword_100453C58, &qword_10034FE60, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1002152A4;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1002152A4()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_100215414;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100215414()
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
  sub_100214804();
  sub_100216380();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10021568C()
{
  v0 = sub_10000321C(&qword_100453C78, &qword_10034FE88);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043B280 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100216380();
  sub_10002B6E4(&qword_100453C80, &qword_100453C78, &qword_10034FE88, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_100215800(uint64_t *a1))(void *)
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

void (*sub_100215874(uint64_t *a1))(void *)
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

unint64_t sub_100215910()
{
  result = qword_10044E9C0;
  if (!qword_10044E9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E9C0);
  }

  return result;
}

unint64_t sub_100215968()
{
  result = qword_10044E9C8;
  if (!qword_10044E9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E9C8);
  }

  return result;
}

uint64_t sub_100215A64(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100214D80(a1, v5, v4);
}

uint64_t sub_100215B10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002C3618();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100215B58()
{
  result = qword_10044E9D0;
  if (!qword_10044E9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E9D0);
  }

  return result;
}

unint64_t sub_100215BB0()
{
  result = qword_10044E9D8;
  if (!qword_10044E9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E9D8);
  }

  return result;
}

uint64_t sub_100215C24()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedPreferences];
  v3 = [v2 showHints];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100215D1C()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedPreferences];
  [v2 setShowHints:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100215DE4(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100215E74, 0, 0);
}

uint64_t sub_100215E74()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044E9B8, qword_10032EA60);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100453C50, &qword_100453C58, &qword_10034FE60, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000032;
  v1[1] = 0x800000010035BD60;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_100215FB4()
{
  result = qword_10044E9E0;
  if (!qword_10044E9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E9E0);
  }

  return result;
}

uint64_t sub_100216008(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1002165D8();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1002160BC()
{
  result = qword_10044E9E8;
  if (!qword_10044E9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E9E8);
  }

  return result;
}

unint64_t sub_100216114()
{
  result = qword_10044E9F0;
  if (!qword_10044E9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E9F0);
  }

  return result;
}

unint64_t sub_10021616C()
{
  result = qword_10044E9F8;
  if (!qword_10044E9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E9F8);
  }

  return result;
}

uint64_t sub_1002161C0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1002165D8();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100216274(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1002165D8();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100216328()
{
  result = qword_10044EA00;
  if (!qword_10044EA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EA00);
  }

  return result;
}

unint64_t sub_100216380()
{
  result = qword_10044EA08;
  if (!qword_10044EA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EA08);
  }

  return result;
}

uint64_t sub_100216418(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100215FB4();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1002164D0()
{
  result = qword_10044EA20;
  if (!qword_10044EA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EA20);
  }

  return result;
}

unint64_t sub_100216528()
{
  result = qword_10044EA28;
  if (!qword_10044EA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EA28);
  }

  return result;
}

unint64_t sub_100216580()
{
  result = qword_10044EA30;
  if (!qword_10044EA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EA30);
  }

  return result;
}

unint64_t sub_1002165D8()
{
  result = qword_10044EA38;
  if (!qword_10044EA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EA38);
  }

  return result;
}

uint64_t sub_10021662C()
{
  v0 = qword_100447328;

  return v0;
}

unint64_t sub_100216668()
{
  result = qword_10044EA40;
  if (!qword_10044EA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EA40);
  }

  return result;
}

uint64_t sub_1002166BC(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100453C40, &qword_10034FE40);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100453C48, &qword_10034FE48);
  __chkstk_darwin(v5);
  sub_10021616C();
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

unint64_t sub_100216884()
{
  result = qword_10044EA48;
  if (!qword_10044EA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EA48);
  }

  return result;
}

unint64_t sub_1002168DC()
{
  result = qword_10044EA50;
  if (!qword_10044EA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EA50);
  }

  return result;
}

unint64_t sub_100216934()
{
  result = qword_10044EA58;
  if (!qword_10044EA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EA58);
  }

  return result;
}

uint64_t sub_100216988(uint64_t a1)
{
  sub_1002D3C50();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100216A70(uint64_t a1)
{
  v2 = sub_10021616C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100216AC0()
{
  result = qword_10044EA70;
  if (!qword_10044EA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EA70);
  }

  return result;
}

uint64_t sub_100216B18(uint64_t a1)
{
  v2 = sub_100216934();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100216B68()
{
  result = qword_10044EA78;
  if (!qword_10044EA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EA78);
  }

  return result;
}

uint64_t sub_100216C20@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100216FBC()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051F3A8);
  v1 = sub_10001EDB8(v0, qword_10051F3A8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10021707C()
{
  result = swift_getKeyPath();
  qword_10051F3C0 = result;
  return result;
}

uint64_t sub_1002170A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100453C18, &qword_10034FE00);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100453C20, &qword_10034FE08);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100217284, 0, 0);
}

uint64_t sub_100217284()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_100218444();
  *v2 = v0;
  v2[1] = sub_100217368;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D7050, 0, &type metadata for AccessibilityVoiceControlOverlayEntity, v3);
}

uint64_t sub_100217368()
{

  return _swift_task_switch(sub_100217464, 0, 0);
}

uint64_t sub_100217464()
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
  if (qword_10043B2A0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051F3C0;
  v0[36] = qword_10051F3C0;

  v4 = swift_task_alloc();
  v0[37] = v4;
  v5 = sub_10002B6E4(&qword_100453BF8, &qword_100453C00, &qword_10034FDE0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1002175C0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 39, v3, &type metadata for AXVoiceControlOverlayModeAppEnum, v5);
}

uint64_t sub_1002175C0()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_100217730;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100217730()
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
  sub_100216B68();
  sub_100218658();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1002179A8()
{
  v0 = sub_10000321C(&qword_100453C28, &qword_10034FE10);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043B2A0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100218658();
  sub_10002B6E4(&qword_100453C30, &qword_100453C28, &qword_10034FE10, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_100217B1C(uint64_t *a1))(void *)
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

void (*sub_100217B90(uint64_t *a1))(void *)
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

unint64_t sub_100217C2C()
{
  result = qword_10044EA90;
  if (!qword_10044EA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EA90);
  }

  return result;
}

unint64_t sub_100217C84()
{
  result = qword_10044EA98;
  if (!qword_10044EA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EA98);
  }

  return result;
}

uint64_t sub_100217D80(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1002170A4(a1, v5, v4);
}

uint64_t sub_100217E2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002C3A80();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100217E74()
{
  result = qword_10044EAA0;
  if (!qword_10044EAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EAA0);
  }

  return result;
}

uint64_t sub_100217EEC()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedPreferences];
  v3 = [v2 alwaysShowOverlayType];

  v4 = sub_1002D8D10();
  v6 = v5;

  *v1 = sub_10001EC4C(v4, v6);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100217FDC()
{
  v1 = [objc_opt_self() sharedPreferences];
  sub_1002D8D10();
  v2 = sub_1002D8D00();

  [v1 setAlwaysShowOverlayType:v2];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1002180AC(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10021813C, 0, 0);
}

uint64_t sub_10021813C()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_10044EA88, &qword_10032F098);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100453BF8, &qword_100453C00, &qword_10034FDE0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  sub_10001DE2C();
  v2 = sub_1002D8890();
  *v1 = 0xD00000000000003ELL;
  v1[1] = 0x800000010035D0E0;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_10021828C()
{
  result = qword_10044EAA8;
  if (!qword_10044EAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EAA8);
  }

  return result;
}

uint64_t sub_1002182E0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1002188B0();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}