unint64_t sub_1000016BC()
{
  result = qword_100020338;
  if (!qword_100020338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020338);
  }

  return result;
}

uint64_t sub_100001754(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000179C()
{
  v0 = sub_10000518C(&qword_1000204C8, &qword_100013440);
  sub_1000058D4(v0, qword_100020A28);
  sub_10000589C(v0, qword_100020A28);
  sub_100003290();
  return sub_100012338();
}

uint64_t sub_100001820()
{
  v0 = sub_10000518C(&qword_100020498, &unk_100013B50);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1000123F8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_100012378();
  sub_1000058D4(v5, qword_100020A40);
  sub_10000589C(v5, qword_100020A40);
  sub_1000123E8();
  (*(v4 + 56))(v2, 1, 1, v3);
  sub_10000518C(&qword_1000204B8, ".!");
  *(swift_allocObject() + 16) = xmmword_100012A80;
  sub_1000123E8();
  return sub_100012358();
}

uint64_t sub_1000019FC()
{
  v0 = sub_1000123F8();
  sub_1000058D4(v0, qword_100020A58);
  sub_10000589C(v0, qword_100020A58);
  return sub_1000123E8();
}

uint64_t sub_100001A60()
{
  v0 = sub_10000518C(&qword_100020528, &unk_1000134D0);
  sub_1000058D4(v0, qword_100020A70);
  v1 = sub_10000589C(v0, qword_100020A70);
  sub_100012188();
  v2 = sub_100012198();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100001B20()
{
  result = swift_getKeyPath();
  qword_100020A88 = result;
  return result;
}

uint64_t sub_100001B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  sub_10000518C(&qword_1000204F8, &unk_100013480);
  v3[10] = swift_task_alloc();
  sub_10000518C(&qword_100020500, &qword_100013BE0);
  v3[11] = swift_task_alloc();
  sub_10000518C(&qword_100020508, &qword_100013490);
  v3[12] = swift_task_alloc();
  v4 = sub_1000120E8();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v5 = sub_10000518C(&qword_100020510, &qword_100013498);
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_100001D38, 0, 0);
}

uint64_t sub_100001D38()
{
  sub_100012138();
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  v2 = sub_100003290();
  *v1 = v0;
  v1[1] = sub_100001E08;
  v3 = *(v0 + 152);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v3, v0 + 16, sub_100005A44, 0, &type metadata for AlertHapticsEntity, v2);
}

uint64_t sub_100001E08()
{

  return _swift_task_switch(sub_100001F04, 0, 0);
}

uint64_t sub_100001F04()
{
  sub_100012138();
  v1 = v0[3];
  v0[4] = v1;
  v0[21] = v1;
  sub_100012138();
  if (qword_1000202B8 != -1)
  {
    swift_once();
  }

  v2 = qword_100020A88;
  v0[22] = qword_100020A88;

  v3 = swift_task_alloc();
  v0[23] = v3;
  v4 = sub_10000598C(&qword_1000204D0, &qword_1000204D8, &qword_100013458, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v3 = v0;
  v3[1] = sub_100002058;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 25, v2, &type metadata for HapticsOption, v4);
}

uint64_t sub_100002058()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_100002414;
  }

  else
  {
    v2 = sub_1000021AC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000021AC(uint64_t a1)
{
  v2 = v1[19];
  v4 = v1[16];
  v3 = v1[17];
  v11 = v1[18];
  v12 = v1[15];
  v13 = v1[14];
  v14 = v1[13];
  v5 = v1[10];
  v6 = v1[11];
  sub_100012138();
  v1[6] = v1[5];
  v7 = sub_100012348();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = sub_100012388();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_1000016BC();
  sub_100003668();
  sub_1000120B8();
  (*(v3 + 16))(v11, v2, v4);
  sub_1000120D8();
  sub_1000120F8();
  (*(v13 + 8))(v12, v14);

  (*(v3 + 8))(v2, v4);

  v9 = v1[1];

  return v9();
}

uint64_t sub_100002414()
{
  (*(v0[17] + 8))(v0[19], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000024DC()
{
  v0 = sub_10000518C(&qword_100020518, &qword_1000134A0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_1000202B8 != -1)
  {
    swift_once();
  }

  sub_1000121E8();

  sub_100003668();
  sub_10000598C(&qword_100020520, &qword_100020518, &qword_1000134A0, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1000121D8();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100002650@<X0>(void *a2@<X8>)
{
  result = sub_100012138();
  *a2 = v4;
  return result;
}

uint64_t sub_10000268C(uint64_t *a1)
{

  sub_100012148();
}

uint64_t (*sub_1000026D4(uint64_t *a1))()
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
  *(v2 + 32) = sub_100012128();
  return sub_100002748;
}

uint64_t sub_10000274C@<X0>(_BYTE *a2@<X8>)
{
  result = sub_100012138();
  *a2 = v4;
  return result;
}

uint64_t (*sub_1000027C0(uint64_t *a1))()
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
  *(v2 + 32) = sub_100012128();
  return sub_100005A4C;
}

void sub_100002834(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_100002880()
{
  if (qword_1000202B8 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1000028E0()
{
  result = qword_100020350;
  if (!qword_100020350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020350);
  }

  return result;
}

unint64_t sub_100002938()
{
  result = qword_100020358;
  if (!qword_100020358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020358);
  }

  return result;
}

uint64_t sub_100002A38@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000202B0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000518C(&qword_100020528, &unk_1000134D0);
  v3 = sub_10000589C(v2, qword_100020A70);
  return sub_1000059D4(v3, a1, &qword_100020528, &unk_1000134D0);
}

uint64_t sub_100002AC8(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005A3C;

  return sub_100001B58(a1, v5, v4);
}

uint64_t sub_100002B74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000052B0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100002BBC()
{
  result = qword_100020360;
  if (!qword_100020360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020360);
  }

  return result;
}

unint64_t sub_100002C14()
{
  result = qword_100020368;
  if (!qword_100020368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020368);
  }

  return result;
}

unint64_t sub_100002C88()
{
  if (qword_100020320 != -1)
  {
    swift_once();
  }

  result = sub_100010D9C();
  if (result > 3)
  {
    __break(1u);
  }

  else
  {
    **(v0 + 16) = result;
    v2 = *(v0 + 8);

    return v2();
  }

  return result;
}

uint64_t sub_100002D58()
{
  if (qword_100020320 != -1)
  {
    swift_once();
  }

  if (*(v0 + 16) >= 4u)
  {
    v1 = 0;
  }

  else
  {
    v1 = *(v0 + 16);
  }

  sub_100010ED4(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100002DFC(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1000123F8();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100002E8C, 0, 0);
}

uint64_t sub_100002E8C()
{
  v1 = *(v0 + 16);
  sub_10000518C(&qword_100020348, qword_100012AA0);
  sub_1000123E8();
  sub_10000598C(&qword_1000204D0, &qword_1000204D8, &qword_100013458, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  sub_100004C30();
  *v1 = sub_1000123B8();

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_100002FC4()
{
  result = qword_100020370;
  if (!qword_100020370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020370);
  }

  return result;
}

uint64_t sub_100003018(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100003AC0();
  *v4 = v2;
  v4[1] = sub_1000030C8;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

uint64_t sub_1000030C8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

unint64_t sub_1000031E0()
{
  result = qword_100020378;
  if (!qword_100020378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020378);
  }

  return result;
}

unint64_t sub_100003238()
{
  result = qword_100020380;
  if (!qword_100020380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020380);
  }

  return result;
}

unint64_t sub_100003290()
{
  result = qword_100020388;
  if (!qword_100020388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020388);
  }

  return result;
}

uint64_t sub_1000032E8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100003AC0();
  *v5 = v2;
  v5[1] = sub_100005A6C;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10000339C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100003AC0();
  *v4 = v2;
  v4[1] = sub_100005A48;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

uint64_t sub_10000344C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10000350C;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_10000350C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_100003610()
{
  result = qword_100020390;
  if (!qword_100020390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020390);
  }

  return result;
}

unint64_t sub_100003668()
{
  result = qword_100020398;
  if (!qword_100020398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020398);
  }

  return result;
}

unint64_t sub_1000036C0()
{
  result = qword_1000203A0;
  if (!qword_1000203A0)
  {
    sub_100001754(&qword_1000203A8, qword_100012D00);
    sub_100003668();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000203A0);
  }

  return result;
}

uint64_t sub_100003744(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100002FC4();
  *v5 = v2;
  v5[1] = sub_1000037F8;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_1000037F8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000038EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000037F8;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_1000039AC()
{
  result = qword_1000203B0;
  if (!qword_1000203B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000203B0);
  }

  return result;
}

unint64_t sub_100003A04()
{
  result = qword_1000203B8;
  if (!qword_1000203B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000203B8);
  }

  return result;
}

unint64_t sub_100003A5C()
{
  result = qword_1000203C0;
  if (!qword_1000203C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000203C0);
  }

  return result;
}

unint64_t sub_100003AC0()
{
  result = qword_1000203C8;
  if (!qword_1000203C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000203C8);
  }

  return result;
}

unint64_t sub_100003B18()
{
  result = qword_1000203D0;
  if (!qword_1000203D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000203D0);
  }

  return result;
}

uint64_t sub_100003B6C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100020298 != -1)
  {
    swift_once();
  }

  v2 = sub_10000518C(&qword_1000204C8, &qword_100013440);
  v3 = sub_10000589C(v2, qword_100020A28);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100003C24()
{
  result = qword_1000203D8;
  if (!qword_1000203D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000203D8);
  }

  return result;
}

unint64_t sub_100003C7C()
{
  result = qword_1000203E0;
  if (!qword_1000203E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000203E0);
  }

  return result;
}

unint64_t sub_100003CD4()
{
  result = qword_1000203E8;
  if (!qword_1000203E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000203E8);
  }

  return result;
}

uint64_t sub_100003D34@<X0>(uint64_t *a2@<X8>)
{
  sub_100002C14();
  result = sub_100012118();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100003D74(uint64_t a1)
{
  sub_100005938();
  v2 = sub_100012308();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100003E5C(uint64_t a1)
{
  v2 = sub_100003290();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100003EAC()
{
  result = qword_100020400;
  if (!qword_100020400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020400);
  }

  return result;
}

uint64_t sub_100003F00(uint64_t a1)
{
  v2 = sub_100002C14();

  return _UniqueEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_100003F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100005A3C;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100004010(uint64_t a1)
{
  v2 = sub_100003CD4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10000405C()
{
  v0 = sub_10000518C(&qword_100020498, &unk_100013B50);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1000123F8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_100012378();
  sub_1000058D4(v5, qword_100020A90);
  sub_10000589C(v5, qword_100020A90);
  sub_1000123E8();
  (*(v4 + 56))(v2, 1, 1, v3);
  sub_10000518C(&qword_1000204B8, ".!");
  *(swift_allocObject() + 16) = xmmword_100012A80;
  sub_1000123E8();
  return sub_100012358();
}

uint64_t sub_100004230()
{
  v0 = sub_10000518C(&qword_100020490, &unk_100013410);
  __chkstk_darwin(v0 - 8);
  v2 = &v23 - v1;
  v3 = sub_10000518C(&qword_100020498, &unk_100013B50);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_1000123F8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  sub_10000518C(&qword_1000204A0, &qword_100013420);
  v8 = sub_10000518C(&qword_1000204A8, &qword_100013428);
  v33 = v8;
  v9 = *(*(v8 - 8) + 72);
  v10 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  v11 = swift_allocObject();
  v30 = v11;
  *(v11 + 16) = xmmword_100012A90;
  v12 = v11 + v10;
  v28 = *(v8 + 48);
  *(v11 + v10) = 0;
  sub_1000123E8();
  v13 = *(v7 + 56);
  v29 = v7 + 56;
  v34 = v6;
  v13(v5, 1, 1, v6);
  v24 = v13;
  v31 = sub_100012208();
  v14 = *(v31 - 8);
  v32 = *(v14 + 56);
  v25 = v14 + 56;
  v32(v2, 1, 1, v31);
  v27 = v12;
  sub_100012238();
  v26 = v9;
  v15 = v33;
  v28 = *(v33 + 48);
  *(v12 + v9) = 1;
  sub_1000123E8();
  v13(v5, 1, 1, v6);
  v17 = v31;
  v16 = v32;
  v32(v2, 1, 1, v31);
  sub_100012238();
  v18 = 2 * v9;
  v28 = 2 * v9;
  v19 = v27;
  v23 = *(v15 + 48);
  *(v27 + v18) = 2;
  sub_1000123E8();
  v20 = v24;
  v24(v5, 1, 1, v34);
  v16(v2, 1, 1, v17);
  sub_100012238();
  *(v19 + v28 + v26) = 3;
  sub_1000123E8();
  v20(v5, 1, 1, v34);
  v32(v2, 1, 1, v31);
  sub_100012238();
  v21 = sub_1000056C0(v30);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100020AA8 = v21;
  return result;
}

unint64_t sub_100004718()
{
  result = qword_100020408;
  if (!qword_100020408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020408);
  }

  return result;
}

Swift::Int sub_10000476C()
{
  v1 = *v0;
  sub_1000125A8();
  sub_1000125B8(v1);
  return sub_1000125C8();
}

Swift::Int sub_1000047E0(uint64_t a1)
{
  v2 = *v1;
  sub_1000125A8();
  sub_1000125B8(v2);
  return sub_1000125C8();
}

unint64_t sub_100004824@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000056B0(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10000486C()
{
  result = qword_100020410;
  if (!qword_100020410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020410);
  }

  return result;
}

unint64_t sub_1000048C4()
{
  result = qword_100020418;
  if (!qword_100020418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020418);
  }

  return result;
}

unint64_t sub_10000491C()
{
  result = qword_100020420;
  if (!qword_100020420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020420);
  }

  return result;
}

unint64_t sub_100004980()
{
  result = qword_100020428;
  if (!qword_100020428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020428);
  }

  return result;
}

unint64_t sub_1000049D8()
{
  result = qword_100020430;
  if (!qword_100020430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020430);
  }

  return result;
}

unint64_t sub_100004A30()
{
  result = qword_100020438;
  if (!qword_100020438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020438);
  }

  return result;
}

unint64_t sub_100004A88()
{
  result = qword_100020440;
  if (!qword_100020440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020440);
  }

  return result;
}

uint64_t sub_100004B14@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
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
  v9 = sub_10000589C(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

unint64_t sub_100004C30()
{
  result = qword_100020448;
  if (!qword_100020448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020448);
  }

  return result;
}

uint64_t sub_100004C84(uint64_t a1)
{
  v2 = sub_100004C30();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100004CD4()
{
  result = qword_100020450;
  if (!qword_100020450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020450);
  }

  return result;
}

unint64_t sub_100004D2C()
{
  result = qword_100020458;
  if (!qword_100020458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020458);
  }

  return result;
}

unint64_t sub_100004D84()
{
  result = qword_100020460;
  if (!qword_100020460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020460);
  }

  return result;
}

uint64_t sub_100004DD8()
{
  if (qword_1000202C8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100004E34(uint64_t a1)
{
  v2 = sub_100004A88();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t getEnumTagSinglePayload for HapticsOption(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HapticsOption(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100005064(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100005070(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000050B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000518C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000051D4(uint64_t a1)
{
  v1 = a1;
  sub_1000125A8();
  sub_1000125B8(v1);
  v2 = sub_1000125C8();

  return sub_100005240(v1, v2);
}

unint64_t sub_100005240(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1000052B0()
{
  v27 = sub_1000122F8();
  v0 = *(v27 - 8);
  __chkstk_darwin(v27);
  v26 = v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10000518C(&qword_1000204E0, &qword_100013460);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v19 - v6;
  v8 = sub_10000518C(&qword_100020498, &unk_100013B50);
  __chkstk_darwin(v8 - 8);
  v10 = v19 - v9;
  v11 = sub_1000123F8();
  v25 = v11;
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v22 = sub_10000518C(&qword_1000204E8, &qword_100013468);
  sub_1000123E8();
  v13 = *(v12 + 56);
  v23 = v12 + 56;
  v24 = v13;
  v13(v10, 1, 1, v11);
  v29 = 0;
  v14 = sub_1000120E8();
  v15 = *(*(v14 - 8) + 56);
  v15(v7, 1, 1, v14);
  v15(v5, 1, 1, v14);
  v21 = enum case for InputConnectionBehavior.default(_:);
  v16 = *(v0 + 104);
  v19[1] = v0 + 104;
  v20 = v16;
  v17 = v26;
  v16(v26);
  sub_100003290();
  v22 = sub_100012168();
  sub_10000518C(&qword_1000204F0, &qword_100013470);
  sub_1000123E8();
  v24(v10, 1, 1, v25);
  v28 = 4;
  v15(v7, 1, 1, v14);
  v15(v5, 1, 1, v14);
  v20(v17, v21, v27);
  sub_100004C30();
  sub_100012158();
  return v22;
}

unint64_t sub_1000056B0(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t sub_1000056C0(uint64_t a1)
{
  v2 = sub_10000518C(&qword_1000204A8, &qword_100013428);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000518C(&qword_1000204B0, &unk_100013430);
    v7 = sub_100012568();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_1000059D4(v9, v5, &qword_1000204A8, &qword_100013428);
      v11 = *v5;
      result = sub_1000051D4(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_100012248();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10000589C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_1000058D4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_100005938()
{
  result = qword_1000204C0;
  if (!qword_1000204C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000204C0);
  }

  return result;
}

uint64_t sub_10000598C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100001754(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000059D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000518C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_100005A74()
{
  result = qword_100020530;
  if (!qword_100020530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020530);
  }

  return result;
}

uint64_t sub_100005B0C()
{
  v0 = sub_10000518C(&qword_100020498, &unk_100013B50);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1000123F8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_100012378();
  sub_1000058D4(v5, qword_100020AB0);
  sub_10000589C(v5, qword_100020AB0);
  sub_1000123E8();
  (*(v4 + 56))(v2, 1, 1, v3);
  sub_10000518C(&qword_1000204B8, ".!");
  *(swift_allocObject() + 16) = xmmword_100012A80;
  sub_1000123E8();
  return sub_100012358();
}

uint64_t sub_100005CE8()
{
  v0 = sub_1000123F8();
  sub_1000058D4(v0, qword_100020AC8);
  sub_10000589C(v0, qword_100020AC8);
  return sub_1000123E8();
}

uint64_t sub_100005D4C()
{
  v0 = sub_10000518C(&qword_100020528, &unk_1000134D0);
  sub_1000058D4(v0, qword_100020AE0);
  v1 = sub_10000589C(v0, qword_100020AE0);
  sub_100012188();
  v2 = sub_100012198();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100005E0C()
{
  result = swift_getKeyPath();
  qword_100020AF8 = result;
  return result;
}

uint64_t sub_100005E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  sub_10000518C(&qword_1000204F8, &unk_100013480);
  v3[10] = swift_task_alloc();
  sub_10000518C(&qword_100020500, &qword_100013BE0);
  v3[11] = swift_task_alloc();
  sub_10000518C(&qword_100020650, &qword_100013BE8);
  v3[12] = swift_task_alloc();
  v4 = sub_1000120E8();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v5 = sub_10000518C(&qword_100020658, &qword_100013BF0);
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_100006014, 0, 0);
}

uint64_t sub_100006014(uint64_t a1)
{
  sub_100012138();
  v2 = swift_task_alloc();
  *(v1 + 160) = v2;
  v3 = sub_1000072E8();
  *v2 = v1;
  v2[1] = sub_1000060E4;
  v4 = *(v1 + 152);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v1 + 16, sub_100008308, 0, &type metadata for ShowInStatusBarEntity, v3);
}

uint64_t sub_1000060E4()
{

  return _swift_task_switch(sub_1000061E0, 0, 0);
}

uint64_t sub_1000061E0(uint64_t a1)
{
  sub_100012138();
  v2 = *(v1 + 24);
  *(v1 + 32) = v2;
  *(v1 + 168) = v2;
  sub_100012138();
  *(v1 + 201) = *(v1 + 200);
  if (qword_1000202E8 != -1)
  {
    swift_once();
  }

  v3 = qword_100020AF8;
  *(v1 + 176) = qword_100020AF8;

  v4 = swift_task_alloc();
  *(v1 + 184) = v4;
  v5 = sub_10000598C(&qword_100020620, &qword_100020628, qword_100013B70, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v1;
  v4[1] = sub_100006340;

  return AppEntity._setValue<A, B, C>(_:for:)(v1 + 201, v3, &type metadata for Bool, v5);
}

uint64_t sub_100006340()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_100002414;
  }

  else
  {
    v2 = sub_100006494;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100006494(uint64_t a1)
{
  v2 = v1[19];
  v4 = v1[16];
  v3 = v1[17];
  v11 = v1[18];
  v12 = v1[15];
  v13 = v1[14];
  v14 = v1[13];
  v5 = v1[10];
  v6 = v1[11];
  sub_100012138();
  v1[6] = v1[5];
  v7 = sub_100012348();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = sub_100012388();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_100005A74();
  sub_1000074FC();
  sub_1000120B8();
  (*(v3 + 16))(v11, v2, v4);
  sub_1000120D8();
  sub_1000120F8();
  (*(v13 + 8))(v12, v14);

  (*(v3 + 8))(v2, v4);

  v9 = v1[1];

  return v9();
}

uint64_t sub_100006700()
{
  v0 = sub_10000518C(&qword_100020660, &qword_100013BF8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_1000202E8 != -1)
  {
    swift_once();
  }

  sub_1000121E8();

  sub_1000074FC();
  sub_10000598C(&qword_100020668, &qword_100020660, &qword_100013BF8, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1000121D8();
  return (*(v1 + 8))(v3, v0);
}

uint64_t (*sub_100006874(uint64_t *a1))()
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
  *(v2 + 32) = sub_100012128();
  return sub_100002748;
}

uint64_t (*sub_1000068E8(uint64_t *a1))()
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
  *(v2 + 32) = sub_100012128();
  return sub_100005A4C;
}

uint64_t sub_10000695C()
{
  if (qword_1000202E8 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1000069BC()
{
  result = qword_100020548;
  if (!qword_100020548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020548);
  }

  return result;
}

unint64_t sub_100006A14()
{
  result = qword_100020550;
  if (!qword_100020550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020550);
  }

  return result;
}

uint64_t sub_100006B24@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000202E0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000518C(&qword_100020528, &unk_1000134D0);
  v3 = sub_10000589C(v2, qword_100020AE0);

  return sub_100008298(v3, a1);
}

uint64_t sub_100006BA8(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005A3C;

  return sub_100005E34(a1, v5, v4);
}

uint64_t sub_100006C54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100007E28();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100006C9C()
{
  result = qword_100020558;
  if (!qword_100020558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020558);
  }

  return result;
}

unint64_t sub_100006CF4()
{
  result = qword_100020560;
  if (!qword_100020560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020560);
  }

  return result;
}

uint64_t sub_100006D68()
{
  if (qword_100020320 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = qword_100020B80;
  swift_getKeyPath();
  v0[2] = v2;
  sub_100007DD0();
  sub_100012418();

  v3 = sub_100012538();
  v4 = sub_100012538();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v3, v4, 0);

  *v1 = AppBooleanValue != 0;
  v6 = v0[1];

  return v6();
}

uint64_t sub_100006EE0()
{
  if (qword_100020320 != -1)
  {
    swift_once();
  }

  sub_100011048(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100006F7C(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1000123F8();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10000700C, 0, 0);
}

uint64_t sub_10000700C()
{
  v1 = *(v0 + 16);
  sub_10000518C(&qword_100020540, qword_1000134E0);
  sub_1000123E8();
  sub_10000598C(&qword_100020620, &qword_100020628, qword_100013B70, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v1 = sub_1000123C8();

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_100007130()
{
  result = qword_100020568;
  if (!qword_100020568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020568);
  }

  return result;
}

uint64_t sub_100007184(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100007798();
  *v4 = v2;
  v4[1] = sub_1000030C8;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100007238()
{
  result = qword_100020570;
  if (!qword_100020570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020570);
  }

  return result;
}

unint64_t sub_100007290()
{
  result = qword_100020578;
  if (!qword_100020578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020578);
  }

  return result;
}

unint64_t sub_1000072E8()
{
  result = qword_100020580;
  if (!qword_100020580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020580);
  }

  return result;
}

uint64_t sub_10000733C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100007798();
  *v5 = v2;
  v5[1] = sub_100005A6C;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1000073F0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100007798();
  *v4 = v2;
  v4[1] = sub_100005A48;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1000074A4()
{
  result = qword_100020588;
  if (!qword_100020588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020588);
  }

  return result;
}

unint64_t sub_1000074FC()
{
  result = qword_100020590;
  if (!qword_100020590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020590);
  }

  return result;
}

unint64_t sub_100007554()
{
  result = qword_100020598;
  if (!qword_100020598)
  {
    sub_100001754(&qword_1000205A0, qword_100013740);
    sub_1000074FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020598);
  }

  return result;
}

uint64_t sub_1000075D8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100007130();
  *v5 = v2;
  v5[1] = sub_1000037F8;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100007690()
{
  result = qword_1000205A8;
  if (!qword_1000205A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000205A8);
  }

  return result;
}

unint64_t sub_1000076E8()
{
  result = qword_1000205B0;
  if (!qword_1000205B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000205B0);
  }

  return result;
}

unint64_t sub_100007740()
{
  result = qword_1000205B8;
  if (!qword_1000205B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000205B8);
  }

  return result;
}

unint64_t sub_100007798()
{
  result = qword_1000205C0;
  if (!qword_1000205C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000205C0);
  }

  return result;
}

unint64_t sub_1000077F0()
{
  result = qword_1000205C8;
  if (!qword_1000205C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000205C8);
  }

  return result;
}

uint64_t sub_100007844(uint64_t a1)
{
  sub_1000072E8();

  return sub_100012338();
}

unint64_t sub_1000078AC()
{
  result = qword_1000205D0;
  if (!qword_1000205D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000205D0);
  }

  return result;
}

unint64_t sub_100007904()
{
  result = qword_1000205D8;
  if (!qword_1000205D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000205D8);
  }

  return result;
}

unint64_t sub_10000795C()
{
  result = qword_1000205E0;
  if (!qword_1000205E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000205E0);
  }

  return result;
}

uint64_t sub_1000079B0@<X0>(uint64_t *a2@<X8>)
{
  sub_100006CF4();
  result = sub_100012118();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1000079F0(uint64_t a1)
{
  sub_100007D74();
  v2 = sub_100012308();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100007A94@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
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
  v9 = sub_10000589C(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_100007B80(uint64_t a1)
{
  v2 = sub_1000072E8();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100007BD0()
{
  result = qword_1000205F8;
  if (!qword_1000205F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000205F8);
  }

  return result;
}

uint64_t sub_100007C24(uint64_t a1)
{
  v2 = sub_100006CF4();

  return _UniqueEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_100007C70(uint64_t a1)
{
  v2 = sub_10000795C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100007D74()
{
  result = qword_100020618;
  if (!qword_100020618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020618);
  }

  return result;
}

unint64_t sub_100007DD0()
{
  result = qword_100020630;
  if (!qword_100020630)
  {
    type metadata accessor for SoundsSettings(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020630);
  }

  return result;
}

uint64_t sub_100007E28()
{
  v0 = sub_10000518C(&qword_100020638, &unk_100013BB0);
  __chkstk_darwin(v0 - 8);
  v30 = &v22 - v1;
  v31 = sub_1000122F8();
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000518C(&qword_1000204E0, &qword_100013460);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v11 = sub_10000518C(&qword_100020498, &unk_100013B50);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = sub_1000123F8();
  v29 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v23 = sub_10000518C(&qword_100020640, &qword_100013BC0);
  sub_1000123E8();
  v16 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v16;
  v16(v13, 1, 1, v14);
  v33 = 0;
  v17 = sub_1000120E8();
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);
  v18(v8, 1, 1, v17);
  v26 = enum case for InputConnectionBehavior.default(_:);
  v19 = *(v2 + 104);
  v24 = v2 + 104;
  v25 = v19;
  v19(v4);
  sub_1000072E8();
  v23 = sub_100012168();
  sub_10000518C(&qword_100020648, &qword_100013BC8);
  sub_1000123E8();
  v28(v13, 1, 1, v29);
  v32 = 2;
  v20 = sub_100012558();
  (*(*(v20 - 8) + 56))(v30, 1, 1, v20);
  v18(v10, 1, 1, v17);
  v25(v4, v26, v31);
  sub_100012178();
  return v23;
}

uint64_t sub_100008298(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000518C(&qword_100020528, &unk_1000134D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100008320()
{
  result = qword_100020670;
  if (!qword_100020670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020670);
  }

  return result;
}

uint64_t sub_1000083B8()
{
  v0 = sub_10000518C(&qword_100020498, &unk_100013B50);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1000123F8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_100012378();
  sub_1000058D4(v5, qword_100020B00);
  sub_10000589C(v5, qword_100020B00);
  sub_1000123E8();
  (*(v4 + 56))(v2, 1, 1, v3);
  sub_10000518C(&qword_1000204B8, ".!");
  *(swift_allocObject() + 16) = xmmword_100012A80;
  sub_1000123E8();
  return sub_100012358();
}

uint64_t sub_100008588()
{
  v0 = sub_1000123F8();
  sub_1000058D4(v0, qword_100020B18);
  sub_10000589C(v0, qword_100020B18);
  return sub_1000123E8();
}

uint64_t sub_1000085EC()
{
  v0 = sub_10000518C(&qword_100020528, &unk_1000134D0);
  sub_1000058D4(v0, qword_100020B30);
  v1 = sub_10000589C(v0, qword_100020B30);
  sub_100012188();
  v2 = sub_100012198();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000086AC()
{
  result = swift_getKeyPath();
  qword_100020B48 = result;
  return result;
}

uint64_t sub_1000086D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  sub_10000518C(&qword_1000204F8, &unk_100013480);
  v3[10] = swift_task_alloc();
  sub_10000518C(&qword_100020500, &qword_100013BE0);
  v3[11] = swift_task_alloc();
  sub_10000518C(&qword_100020778, &qword_1000142F8);
  v3[12] = swift_task_alloc();
  v4 = sub_1000120E8();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v5 = sub_10000518C(&qword_100020780, &qword_100014300);
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_1000088B4, 0, 0);
}

uint64_t sub_1000088B4(uint64_t a1)
{
  sub_100012138();
  v2 = swift_task_alloc();
  *(v1 + 160) = v2;
  v3 = sub_100009BD8();
  *v2 = v1;
  v2[1] = sub_100008984;
  v4 = *(v1 + 152);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v1 + 16, sub_10000AC24, 0, &type metadata for SilentModeEntity, v3);
}

uint64_t sub_100008984()
{

  return _swift_task_switch(sub_100008A80, 0, 0);
}

uint64_t sub_100008A80(uint64_t a1)
{
  sub_100012138();
  v2 = *(v1 + 24);
  *(v1 + 32) = v2;
  *(v1 + 168) = v2;
  sub_100012138();
  *(v1 + 201) = *(v1 + 200);
  if (qword_100020308 != -1)
  {
    swift_once();
  }

  v3 = qword_100020B48;
  *(v1 + 176) = qword_100020B48;

  v4 = swift_task_alloc();
  *(v1 + 184) = v4;
  v5 = sub_10000598C(&qword_100020760, &qword_100020768, qword_1000142A0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v1;
  v4[1] = sub_100008BE0;

  return AppEntity._setValue<A, B, C>(_:for:)(v1 + 201, v3, &type metadata for Bool, v5);
}

uint64_t sub_100008BE0()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_100002414;
  }

  else
  {
    v2 = sub_100008D34;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100008D34(uint64_t a1)
{
  v2 = v1[19];
  v4 = v1[16];
  v3 = v1[17];
  v11 = v1[18];
  v12 = v1[15];
  v13 = v1[14];
  v14 = v1[13];
  v5 = v1[10];
  v6 = v1[11];
  sub_100012138();
  v1[6] = v1[5];
  v7 = sub_100012348();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = sub_100012388();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_100008320();
  sub_100009DE8();
  sub_1000120B8();
  (*(v3 + 16))(v11, v2, v4);
  sub_1000120D8();
  sub_1000120F8();
  (*(v13 + 8))(v12, v14);

  (*(v3 + 8))(v2, v4);

  v9 = v1[1];

  return v9();
}

uint64_t sub_100008FA0()
{
  v0 = sub_10000518C(&qword_100020788, &qword_100014308);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_100020308 != -1)
  {
    swift_once();
  }

  sub_1000121E8();

  sub_100009DE8();
  sub_10000598C(&qword_100020790, &qword_100020788, &qword_100014308, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1000121D8();
  return (*(v1 + 8))(v3, v0);
}

uint64_t (*sub_100009114(uint64_t *a1))()
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
  *(v2 + 32) = sub_100012128();
  return sub_100002748;
}

uint64_t (*sub_100009188(uint64_t *a1))()
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
  *(v2 + 32) = sub_100012128();
  return sub_100005A4C;
}

uint64_t sub_1000091FC()
{
  if (qword_100020308 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10000925C()
{
  result = qword_100020688;
  if (!qword_100020688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020688);
  }

  return result;
}

unint64_t sub_1000092B4()
{
  result = qword_100020690;
  if (!qword_100020690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020690);
  }

  return result;
}

uint64_t sub_1000093C4@<X0>(uint64_t a1@<X8>)
{
  if (qword_100020300 != -1)
  {
    swift_once();
  }

  v2 = sub_10000518C(&qword_100020528, &unk_1000134D0);
  v3 = sub_10000589C(v2, qword_100020B30);

  return sub_100008298(v3, a1);
}

uint64_t sub_100009448(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000037F8;

  return sub_1000086D4(a1, v5, v4);
}

uint64_t sub_1000094F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000A7B4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10000953C()
{
  result = qword_100020698;
  if (!qword_100020698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020698);
  }

  return result;
}

unint64_t sub_100009594()
{
  result = qword_1000206A0;
  if (!qword_1000206A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206A0);
  }

  return result;
}

id sub_100009608()
{
  if (qword_100020320 != -1)
  {
    swift_once();
  }

  v1 = qword_100020B80;
  swift_getKeyPath();
  v0[2] = v1;
  sub_100007DD0();
  sub_100012418();

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v3 = result;
    v4 = v0[3];
    v5 = [result getSilentMode];

    *v4 = v5;
    v6 = v0[1];

    return v6();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000974C()
{
  if (qword_100020320 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 25);
  v2 = qword_100020B80;
  swift_getKeyPath();
  *(swift_task_alloc() + 16) = v1;
  *(v0 + 16) = v2;
  sub_100007DD0();
  sub_100012408();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100009874(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1000123F8();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100009904, 0, 0);
}

uint64_t sub_100009904()
{
  v1 = *(v0 + 16);
  sub_10000518C(&qword_100020680, qword_100013C40);
  sub_1000123E8();
  sub_10000598C(&qword_100020760, &qword_100020768, qword_1000142A0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v1 = sub_1000123C8();

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_100009A24()
{
  result = qword_1000206A8;
  if (!qword_1000206A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206A8);
  }

  return result;
}

uint64_t sub_100009A78(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10000A140();
  *v4 = v2;
  v4[1] = sub_1000030C8;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100009B2C()
{
  result = qword_1000206B0;
  if (!qword_1000206B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206B0);
  }

  return result;
}

unint64_t sub_100009B84()
{
  result = qword_1000206B8;
  if (!qword_1000206B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206B8);
  }

  return result;
}

unint64_t sub_100009BD8()
{
  result = qword_1000206C0;
  if (!qword_1000206C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206C0);
  }

  return result;
}

uint64_t sub_100009C2C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10000A140();
  *v5 = v2;
  v5[1] = sub_100005A6C;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100009CE0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10000A140();
  *v4 = v2;
  v4[1] = sub_100005A48;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100009D94()
{
  result = qword_1000206C8;
  if (!qword_1000206C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206C8);
  }

  return result;
}

unint64_t sub_100009DE8()
{
  result = qword_1000206D0;
  if (!qword_1000206D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206D0);
  }

  return result;
}

unint64_t sub_100009E40()
{
  result = qword_1000206D8;
  if (!qword_1000206D8)
  {
    sub_100001754(&qword_1000206E0, qword_100013EA0);
    sub_100009DE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206D8);
  }

  return result;
}

uint64_t sub_100009EC4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100009A24();
  *v5 = v2;
  v5[1] = sub_100005A3C;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100009F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005A3C;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_10000A030()
{
  result = qword_1000206E8;
  if (!qword_1000206E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206E8);
  }

  return result;
}

unint64_t sub_10000A088()
{
  result = qword_1000206F0;
  if (!qword_1000206F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206F0);
  }

  return result;
}

unint64_t sub_10000A0E0()
{
  result = qword_1000206F8;
  if (!qword_1000206F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206F8);
  }

  return result;
}

unint64_t sub_10000A140()
{
  result = qword_100020700;
  if (!qword_100020700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020700);
  }

  return result;
}

unint64_t sub_10000A198()
{
  result = qword_100020708;
  if (!qword_100020708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020708);
  }

  return result;
}

uint64_t sub_10000A1EC(uint64_t a1)
{
  sub_100009BD8();

  return sub_100012338();
}

unint64_t sub_10000A254()
{
  result = qword_100020710;
  if (!qword_100020710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020710);
  }

  return result;
}

unint64_t sub_10000A2AC()
{
  result = qword_100020718;
  if (!qword_100020718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020718);
  }

  return result;
}

unint64_t sub_10000A308()
{
  result = qword_100020720;
  if (!qword_100020720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020720);
  }

  return result;
}

uint64_t sub_10000A35C@<X0>(uint64_t *a2@<X8>)
{
  sub_100009594();
  result = sub_100012118();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10000A39C(uint64_t a1)
{
  sub_10000A73C();
  v2 = sub_100012308();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10000A484(uint64_t a1)
{
  v2 = sub_100009BD8();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10000A4D4()
{
  result = qword_100020738;
  if (!qword_100020738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020738);
  }

  return result;
}

uint64_t sub_10000A528(uint64_t a1)
{
  v2 = sub_100009594();

  return _UniqueEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_10000A574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000037F8;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_10000A638(uint64_t a1)
{
  v2 = sub_10000A308();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10000A73C()
{
  result = qword_100020758;
  if (!qword_100020758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020758);
  }

  return result;
}

uint64_t sub_10000A7B4()
{
  v0 = sub_10000518C(&qword_100020638, &unk_100013BB0);
  __chkstk_darwin(v0 - 8);
  v30 = &v22 - v1;
  v31 = sub_1000122F8();
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000518C(&qword_1000204E0, &qword_100013460);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v11 = sub_10000518C(&qword_100020498, &unk_100013B50);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = sub_1000123F8();
  v29 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v23 = sub_10000518C(&qword_100020770, &unk_1000142E0);
  sub_1000123E8();
  v16 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v16;
  v16(v13, 1, 1, v14);
  v33 = 0;
  v17 = sub_1000120E8();
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);
  v18(v8, 1, 1, v17);
  v26 = enum case for InputConnectionBehavior.default(_:);
  v19 = *(v2 + 104);
  v24 = v2 + 104;
  v25 = v19;
  v19(v4);
  sub_100009BD8();
  v23 = sub_100012168();
  sub_10000518C(&qword_100020648, &qword_100013BC8);
  sub_1000123E8();
  v28(v13, 1, 1, v29);
  v32 = 2;
  v20 = sub_100012558();
  (*(*(v20 - 8) + 56))(v30, 1, 1, v20);
  v18(v10, 1, 1, v17);
  v25(v4, v26, v31);
  sub_100012178();
  return v23;
}

uint64_t sub_10000AC74@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_10000518C(&qword_1000207C8, &qword_100014448);
  v25 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v23 - v2;
  v4 = sub_10000518C(&qword_1000207D0, &qword_100014450);
  v5 = *(v4 - 8);
  v26 = v4;
  v27 = v5;
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = sub_10000518C(&qword_1000207D8, &qword_100014458);
  v9 = *(v8 - 8);
  v28 = v8;
  v29 = v9;
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  v12 = sub_10000518C(&qword_1000207E0, &qword_100014460);
  v13 = *(v12 - 8);
  v30 = v12;
  v31 = v13;
  __chkstk_darwin(v12);
  v24 = &v23 - v14;
  swift_getKeyPath();
  sub_10000518C(&qword_1000207E8, &unk_100014490);
  sub_100006CF4();
  sub_10000598C(&qword_1000207F0, &qword_1000207E8, &unk_100014490, &protocol conformance descriptor for Label<A, B>);
  sub_100012518();
  sub_100012468();
  v15 = sub_10000598C(&qword_1000207F8, &qword_1000207C8, &qword_100014448, &protocol conformance descriptor for ControlToggle<A>);
  sub_100012498();

  (*(v25 + 8))(v3, v1);
  sub_100012468();
  v33 = v1;
  v34 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = v26;
  sub_100012478();

  (*(v27 + 8))(v7, v17);
  v33 = v17;
  v34 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeConformance2();
  v19 = v24;
  v20 = v28;
  sub_1000124A8();
  (*(v29 + 8))(v11, v20);
  v33 = v20;
  v34 = v18;
  swift_getOpaqueTypeConformance2();
  v21 = v30;
  sub_100012488();
  return (*(v31 + 8))(v19, v21);
}

uint64_t sub_10000B1B8()
{
  v0 = sub_100012468();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_10000B240@<X0>(uint64_t a1@<X8>)
{
  sub_100012468();
  result = sub_1000124B8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10000B2B8@<X0>(uint64_t a2@<X8>)
{
  sub_100012468();
  result = sub_1000124B8();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_10000B358@<X0>(uint64_t a1@<X8>)
{
  sub_100012468();
  result = sub_1000124B8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

unint64_t sub_10000B3D8@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100012248();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000123F8();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v30 - v14;
  __chkstk_darwin(v13);
  v17 = &v30 - v16;
  result = *a1;
  if (qword_1000202C8 != -1)
  {
    v29 = *a1;
    swift_once();
    result = v29;
  }

  v19 = qword_100020AA8;
  v20 = *(qword_100020AA8 + 16);
  if (!v20)
  {
    v22 = 0;
    v24 = 0;
LABEL_8:
    v28 = 0;
    goto LABEL_9;
  }

  result = sub_1000051D4(result);
  if ((v21 & 1) == 0)
  {
    v22 = 0;
    v24 = 0;
    v20 = 0;
    goto LABEL_8;
  }

  (*(v5 + 16))(v7, *(v19 + 56) + *(v5 + 72) * result, v4);
  sub_100012218();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 32))(v17, v15, v8);
  (*(v9 + 16))(v12, v17, v8);
  v22 = sub_1000124C8();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  result = (*(v9 + 8))(v17, v8);
  v20 = v26 & 1;
LABEL_9:
  *a2 = v22;
  a2[1] = v24;
  a2[2] = v20;
  a2[3] = v28;
  return result;
}

uint64_t sub_10000B690(unsigned __int8 *a1)
{
  v2 = sub_100012248();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000518C(&qword_100020498, &unk_100013B50);
  __chkstk_darwin(v6 - 8);
  v8 = &v22 - v7;
  v9 = sub_1000123F8();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v22 - v14;
  v16 = *a1;
  if (qword_1000202C8 != -1)
  {
    v21 = *a1;
    swift_once();
    v16 = v21;
  }

  v17 = qword_100020AA8;
  if (*(qword_100020AA8 + 16) && (v18 = sub_1000051D4(v16), (v19 & 1) != 0))
  {
    (*(v3 + 16))(v5, *(v17 + 56) + *(v3 + 72) * v18, v2);
    sub_100012218();
    (*(v3 + 8))(v5, v2);
    (*(v10 + 56))(v8, 0, 1, v9);
    (*(v10 + 32))(v15, v8, v9);
  }

  else
  {
    (*(v10 + 56))(v8, 1, 1, v9);
    sub_1000123E8();
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      sub_10000BE40(v8);
    }
  }

  (*(v10 + 16))(v13, v15, v9);
  sub_1000124C8();
  sub_100012528();
  return (*(v10 + 8))(v15, v9);
}

uint64_t sub_10000BA18@<X0>(uint64_t a1@<X8>)
{
  v14 = a1;
  v1 = sub_1000124F8();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10000518C(&qword_100020798, &qword_100014400);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - v4;
  v13 = sub_10000518C(&qword_1000207A0, &qword_100014408);
  v6 = *(v13 - 8);
  __chkstk_darwin(v13);
  v8 = v12 - v7;
  v12[0] = "Mode's Silent Mode Enabled";
  v12[1] = swift_getKeyPath();
  sub_1000124E8();
  sub_10000518C(&qword_1000207A8, &unk_100014438);
  sub_100004C30();
  sub_10000BD70();
  sub_100002C14();
  sub_10000BDC4();
  sub_100012508();
  v9 = sub_10000598C(&qword_1000207C0, &qword_100020798, &qword_100014400, &protocol conformance descriptor for ControlPicker<A>);
  sub_1000124A8();
  (*(v3 + 8))(v5, v2);
  v15 = v2;
  v16 = v9;
  swift_getOpaqueTypeConformance2();
  v10 = v13;
  sub_100012488();
  return (*(v6 + 8))(v8, v10);
}

unint64_t sub_10000BD70()
{
  result = qword_1000207B0;
  if (!qword_1000207B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000207B0);
  }

  return result;
}

unint64_t sub_10000BDC4()
{
  result = qword_1000207B8;
  if (!qword_1000207B8)
  {
    sub_100001754(&qword_1000207A8, &unk_100014438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000207B8);
  }

  return result;
}

uint64_t sub_10000BE40(uint64_t a1)
{
  v2 = sub_10000518C(&qword_100020498, &unk_100013B50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000BEAC()
{
  sub_100001754(&qword_1000207A0, &qword_100014408);
  sub_100001754(&qword_100020798, &qword_100014400);
  sub_10000598C(&qword_1000207C0, &qword_100020798, &qword_100014400, &protocol conformance descriptor for ControlPicker<A>);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10000BF80()
{
  sub_100001754(&qword_1000207E0, &qword_100014460);
  sub_100001754(&qword_1000207D8, &qword_100014458);
  sub_100001754(&qword_1000207D0, &qword_100014450);
  sub_100001754(&qword_1000207C8, &qword_100014448);
  sub_10000598C(&qword_1000207F8, &qword_1000207C8, &qword_100014448, &protocol conformance descriptor for ControlToggle<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10000C0D4()
{
  v0 = sub_10000518C(&qword_100020808, &qword_100014500);

  return TupleWidget.init(_:)(v0, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000C15C();
  sub_100012458();
  return 0;
}

unint64_t sub_10000C15C()
{
  result = qword_100020800;
  if (!qword_100020800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020800);
  }

  return result;
}

unint64_t sub_10000C1E0()
{
  result = qword_100020810;
  if (!qword_100020810)
  {
    sub_100001754(&qword_100020818, &qword_100014508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020810);
  }

  return result;
}

unint64_t sub_10000C244(char a1)
{
  result = 0x746F6F7223;
  switch(a1)
  {
    case 1:
      result = 0x73654D5F74786554;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x5F544C5541464544;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0xD00000000000001DLL;
      break;
    case 7:
      result = 0xD00000000000003DLL;
      break;
    case 8:
      result = 0xD00000000000001ALL;
      break;
    case 9:
      result = 0x4C5F454D554C4F56;
      break;
    case 10:
      result = 0x4D5F544E454C4953;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0x53434954504148;
      break;
    case 14:
      result = 0x656E6F74676E6952;
      break;
    case 15:
      result = 0x69616D6563696F56;
      break;
    case 16:
      result = 0x4C49414D5F57454ELL;
      break;
    case 17:
      result = 0x49414D5F544E4553;
      break;
    case 18:
      result = 0xD000000000000011;
      break;
    case 19:
      result = 0x485F4D4554535953;
      break;
    case 20:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10000C528(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10000C244(*a1);
  v5 = v4;
  if (v3 == sub_10000C244(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100012578();
  }

  return v8 & 1;
}

unint64_t sub_10000C5B4()
{
  result = qword_100020830;
  if (!qword_100020830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020830);
  }

  return result;
}

Swift::Int sub_10000C608()
{
  v1 = *v0;
  sub_1000125A8();
  sub_10000C244(v1);
  sub_100012548();

  return sub_1000125C8();
}

uint64_t sub_10000C66C(uint64_t a1)
{
  sub_10000C244(*v1);
  sub_100012548();
}

Swift::Int sub_10000C6C0(uint64_t a1)
{
  v2 = *v1;
  sub_1000125A8();
  sub_10000C244(v2);
  sub_100012548();

  return sub_1000125C8();
}

unint64_t sub_10000C720@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000FB70(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_10000C750@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10000C244(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10000C7D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_10000FB70(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_10000C824()
{
  result = qword_100020848;
  if (!qword_100020848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020848);
  }

  return result;
}

unint64_t sub_10000C87C()
{
  result = qword_100020850;
  if (!qword_100020850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020850);
  }

  return result;
}

uint64_t sub_10000C8D0()
{
  v0 = sub_1000123F8();
  sub_1000058D4(v0, qword_100020B50);
  sub_10000589C(v0, qword_100020B50);
  return sub_1000123E8();
}

uint64_t sub_10000C934@<X0>(_BYTE *a2@<X8>)
{
  result = sub_100012138();
  *a2 = v4;
  return result;
}

void (*sub_10000C9A8(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_100012128();
  return sub_100002834;
}

unint64_t sub_10000CA1C()
{
  result = qword_100020858;
  if (!qword_100020858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020858);
  }

  return result;
}

uint64_t sub_10000CA70(uint64_t a1, uint64_t a2)
{
  v4 = sub_100010CD4();
  v5 = sub_10000F8F4();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_10000CAE0()
{
  result = qword_100020860;
  if (!qword_100020860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020860);
  }

  return result;
}

unint64_t sub_10000CB38()
{
  result = qword_100020868;
  if (!qword_100020868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020868);
  }

  return result;
}

unint64_t sub_10000CB90()
{
  result = qword_100020870;
  if (!qword_100020870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020870);
  }

  return result;
}

uint64_t sub_10000CC78(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_100010CD4();
  v6 = sub_100010D28();
  v7 = sub_10000F8F4();
  *v4 = v2;
  v4[1] = sub_10000CD44;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_10000CD44()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_10000CE4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000FBC4();
  *a1 = result;
  return result;
}

uint64_t sub_10000CE74(uint64_t a1)
{
  v2 = sub_10000CA1C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10000CEB4()
{
  result = qword_100020878;
  if (!qword_100020878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020878);
  }

  return result;
}

unint64_t sub_10000CF0C()
{
  result = qword_100020880;
  if (!qword_100020880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020880);
  }

  return result;
}

unint64_t sub_10000CF64()
{
  result = qword_100020888;
  if (!qword_100020888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020888);
  }

  return result;
}

uint64_t sub_10000CFB8()
{
  v0 = sub_10000518C(&qword_100020498, &unk_100013B50);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1000123F8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_100012378();
  sub_1000058D4(v5, qword_100020B68);
  sub_10000589C(v5, qword_100020B68);
  sub_1000123E8();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_100012368();
}

uint64_t sub_10000D128(char a1)
{
  v2 = sub_10000518C(&qword_100020490, &unk_100013410);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_10000518C(&qword_100020498, &unk_100013B50);
  __chkstk_darwin(v5 - 8);
  v7 = &v18 - v6;
  v8 = sub_1000123F8();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  __chkstk_darwin(v10);
  switch(a1)
  {
    case 1:
    case 18:
      sub_1000123E8();
      sub_1000123E8();
      (*(v9 + 56))(v7, 0, 1, v8);
      sub_1000121F8();
      v13 = sub_100012208();
      (*(*(v13 - 8) + 56))(v4, 0, 1, v13);
      sub_10000518C(&qword_1000204B8, ".!");
      *(swift_allocObject() + 16) = xmmword_100014510;
      sub_1000123E8();
      sub_1000123E8();
      sub_1000123E8();
      break;
    case 2:
    case 11:
    case 13:
    case 14:
    case 15:
    case 20:
      sub_1000123E8();
      sub_1000123E8();
      (*(v9 + 56))(v7, 0, 1, v8);
      sub_1000121F8();
      v14 = sub_100012208();
      (*(*(v14 - 8) + 56))(v4, 0, 1, v14);
      sub_10000518C(&qword_1000204B8, ".!");
      *(swift_allocObject() + 16) = xmmword_100012A80;
      sub_1000123E8();
      break;
    case 3:
    case 4:
    case 5:
    case 9:
    case 12:
    case 16:
    case 17:
    case 19:
      sub_1000123E8();
      sub_1000123E8();
      (*(v9 + 56))(v7, 0, 1, v8);
      sub_1000121F8();
      v16 = sub_100012208();
      (*(*(v16 - 8) + 56))(v4, 0, 1, v16);
      break;
    case 6:
    case 7:
      sub_1000123E8();
      sub_1000123E8();
      (*(v9 + 56))(v7, 0, 1, v8);
      sub_1000121F8();
      v12 = sub_100012208();
      (*(*(v12 - 8) + 56))(v4, 0, 1, v12);
      sub_10000518C(&qword_1000204B8, ".!");
      *(swift_allocObject() + 16) = xmmword_100014520;
      sub_1000123E8();
      sub_1000123E8();
      break;
    case 8:
    case 10:
      sub_1000123E8();
      sub_1000123E8();
      (*(v9 + 56))(v7, 0, 1, v8);
      sub_1000121F8();
      v15 = sub_100012208();
      (*(*(v15 - 8) + 56))(v4, 0, 1, v15);
      sub_10000518C(&qword_1000204B8, ".!");
      *(swift_allocObject() + 16) = xmmword_100012A80;
      sub_1000123E8();
      break;
    default:
      sub_1000123E8();
      (*(v9 + 56))(v7, 1, 1, v8);
      sub_1000121F8();
      v11 = sub_100012208();
      (*(*(v11 - 8) + 56))(v4, 0, 1, v11);
      sub_10000518C(&qword_1000204B8, ".!");
      *(swift_allocObject() + 16) = xmmword_100012A80;
      sub_1000123E8();
      break;
  }

  sub_1000123E8();
  return sub_100012228();
}

uint64_t sub_10000EADC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100005A6C;

  return sub_10000FFE0(a1);
}

uint64_t sub_10000EB84(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005A48;

  return sub_100010470();
}

unint64_t sub_10000EC2C()
{
  result = qword_100020890;
  if (!qword_100020890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020890);
  }

  return result;
}

uint64_t sub_10000EC80(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000030C8;

  return sub_10000FEC0();
}

unint64_t sub_10000ED28()
{
  result = qword_100020898;
  if (!qword_100020898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020898);
  }

  return result;
}

unint64_t sub_10000ED80()
{
  result = qword_1000208A0;
  if (!qword_1000208A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000208A0);
  }

  return result;
}

unint64_t sub_10000EDD8()
{
  result = qword_1000208A8;
  if (!qword_1000208A8)
  {
    sub_100001754(&qword_1000208B0, qword_100014888);
    sub_10000ED80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000208A8);
  }

  return result;
}

uint64_t sub_10000EE5C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10000EC2C();
  *v5 = v2;
  v5[1] = sub_1000037F8;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_10000EF10(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10000EFB4;

  return sub_100010900();
}

uint64_t sub_10000EFB4(char a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

unint64_t sub_10000F0C8()
{
  result = qword_1000208B8;
  if (!qword_1000208B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000208B8);
  }

  return result;
}

uint64_t sub_10000F11C(uint64_t a1)
{
  v1 = sub_10000518C(&qword_100020918, &qword_100014CA8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000518C(&qword_100020920, &qword_100014CB0);
  __chkstk_darwin(v5);
  sub_10000CF64();
  sub_1000122D8();
  v8._object = 0x80000001000167C0;
  v8._countAndFlagsBits = 0xD000000000000030;
  sub_1000122C8(v8);
  (*(v2 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v1);
  sub_1000122B8();
  (*(v2 + 8))(v4, v1);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_1000122C8(v9);
  return sub_1000122E8();
}

uint64_t sub_10000F2E0()
{
  v0 = qword_100020820;

  return v0;
}

unint64_t sub_10000F31C()
{
  result = qword_1000208C0;
  if (!qword_1000208C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000208C0);
  }

  return result;
}

unint64_t sub_10000F374()
{
  result = qword_1000208C8;
  if (!qword_1000208C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000208C8);
  }

  return result;
}

unint64_t sub_10000F3CC()
{
  result = qword_1000208D0;
  if (!qword_1000208D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000208D0);
  }

  return result;
}

uint64_t sub_10000F420(uint64_t a1)
{
  sub_10000F8F4();
  v2 = sub_100012288();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_10000F490()
{
  result = qword_1000208D8;
  if (!qword_1000208D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000208D8);
  }

  return result;
}

unint64_t sub_10000F4E8()
{
  result = qword_1000208E0;
  if (!qword_1000208E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000208E0);
  }

  return result;
}

unint64_t sub_10000F540()
{
  result = qword_1000208E8;
  if (!qword_1000208E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000208E8);
  }

  return result;
}

unint64_t sub_10000F598()
{
  result = qword_1000208F0;
  if (!qword_1000208F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000208F0);
  }

  return result;
}

uint64_t sub_10000F674(uint64_t a1)
{
  v2 = sub_10000CF64();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10000F6C4()
{
  result = qword_100020908;
  if (!qword_100020908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020908);
  }

  return result;
}

uint64_t sub_10000F720(uint64_t a1)
{
  v2 = sub_10000F540();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10000F7A0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10000F834(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000F8F4()
{
  result = qword_100020910;
  if (!qword_100020910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020910);
  }

  return result;
}

char *sub_10000F948(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000F988(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000F968(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000FA7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000F988(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000518C(&qword_100020928, &qword_100014CC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_10000FA7C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000518C(&qword_100020930, &qword_100014CD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_10000FB70(uint64_t a1, uint64_t a2)
{
  v2 = sub_100012588();

  if (v2 >= 0x15)
  {
    return 21;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10000FBC4()
{
  v17 = sub_1000122F8();
  v0 = *(v17 - 8);
  __chkstk_darwin(v17);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000518C(&qword_1000204E0, &qword_100013460);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = sub_10000518C(&qword_100020498, &unk_100013B50);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_1000123F8();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_10000518C(&qword_100020938, &unk_100014CF0);
  sub_1000123E8();
  (*(v13 + 56))(v11, 1, 1, v12);
  v18 = 21;
  v14 = sub_1000120E8();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17);
  sub_10000CF64();
  return sub_100012168();
}

uint64_t sub_10000FEDC()
{
  sub_10000F948(0, 21, 0);
  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v3 = _swiftEmptyArrayStorage[2];
  do
  {
    v4 = *(&off_10001D070 + v1 + 32);
    v8 = v2;
    v5 = v2[3];
    if (v3 >= v5 >> 1)
    {
      sub_10000F948((v5 > 1), v3 + 1, 1);
      v2 = v8;
    }

    ++v1;
    v2[2] = v3 + 1;
    *(v2 + v3++ + 32) = v4;
  }

  while (v1 != 21);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10000FFE0(uint64_t a1)
{
  *(v1 + 24) = a1;

  return _swift_task_switch(sub_100010070, 0, 0);
}

id sub_100010070()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_44:
    v29 = _swiftEmptyArrayStorage[2];
    if (v29)
    {
      sub_10000F948(0, v29, 0);
      v30 = _swiftEmptyArrayStorage[2];
      v31 = 32;
      do
      {
        v32 = *(_swiftEmptyArrayStorage + v31);
        v33 = _swiftEmptyArrayStorage[3];
        if (v30 >= v33 >> 1)
        {
          sub_10000F948((v33 > 1), v30 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v30 + 1;
        *(&_swiftEmptyArrayStorage[4] + v30) = v32;
        ++v31;
        ++v30;
        --v29;
      }

      while (v29);
    }

    v34 = v0[1];

    return v34(_swiftEmptyArrayStorage);
  }

  v3 = (v1 + 32);
  while (1)
  {
    v6 = *v3++;
    v5 = v6;
    if (v6 <= 11)
    {
      break;
    }

    if (v5 <= 15)
    {
      if ((v5 - 14) >= 2 && v5 != 12)
      {
        result = MobileGestalt_get_current_device();
        if (!result)
        {
          goto LABEL_54;
        }

        goto LABEL_41;
      }

      v15 = MobileGestalt_get_current_device();
      if (!v15)
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
      }

      v16 = v15;
      telephonyCapability = MobileGestalt_get_telephonyCapability();

      if (telephonyCapability)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (v5 > 18)
      {
        if (v5 != 19)
        {
          goto LABEL_7;
        }

        v18 = MobileGestalt_get_current_device();
        if (!v18)
        {
          goto LABEL_53;
        }

        v19 = v18;
        deviceSupportsClosedLoopHaptics = MobileGestalt_get_deviceSupportsClosedLoopHaptics();

        if ((deviceSupportsClosedLoopHaptics & 1) == 0)
        {
          goto LABEL_4;
        }

        result = MobileGestalt_get_current_device();
        if (!result)
        {
          goto LABEL_57;
        }

LABEL_41:
        v21 = result;
        iPadCapability = MobileGestalt_get_iPadCapability();
LABEL_42:
        v28 = iPadCapability;

        if ((v28 & 1) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_4;
      }

      if ((v5 - 16) >= 2)
      {
        v23 = [objc_opt_self() currentDevice];
        v24 = [v23 _feedbackSupportLevel];

        if (v24 == 2)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v9 = objc_allocWithZone(LSApplicationRecord);
        v10 = sub_100012538();
        v0[2] = 0;
        v11 = [v9 initWithBundleIdentifier:v10 allowPlaceholder:0 error:v0 + 2];

        v12 = v0[2];
        if (v11)
        {
          v13 = v12;

LABEL_7:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_10000F968(0, _swiftEmptyArrayStorage[2] + 1, 1);
          }

          v8 = _swiftEmptyArrayStorage[2];
          v7 = _swiftEmptyArrayStorage[3];
          if (v8 >= v7 >> 1)
          {
            sub_10000F968((v7 > 1), v8 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v8 + 1;
          *(&_swiftEmptyArrayStorage[4] + v8) = v5;
          goto LABEL_4;
        }

        v4 = v12;
        sub_1000123D8();

        swift_willThrow();
      }
    }

LABEL_4:
    if (!--v2)
    {
      goto LABEL_44;
    }
  }

  if (v5 < 0xA)
  {
    goto LABEL_7;
  }

  if (v5 == 10)
  {
    result = MobileGestalt_get_current_device();
    if (!result)
    {
      goto LABEL_56;
    }

    v21 = result;
    iPadCapability = MobileGestalt_get_ringerSwitchCapability();
    goto LABEL_42;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v26 = result;
    ringerSwitchCapability = MobileGestalt_get_ringerSwitchCapability();

    if (ringerSwitchCapability)
    {
      goto LABEL_4;
    }

    result = MobileGestalt_get_current_device();
    if (!result)
    {
      goto LABEL_58;
    }

    goto LABEL_41;
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return result;
}

uint64_t sub_100010470()
{

  return _swift_task_switch(sub_1000104FC, 0, 0);
}

id sub_1000104FC()
{
  v1 = 0;
  while (1)
  {
    v3 = *(&off_10001D070 + v1 + 32);
    if (v3 > 0xB)
    {
      break;
    }

    if (v3 < 0xA)
    {
      goto LABEL_6;
    }

    if (v3 != 10)
    {
      v24 = MobileGestalt_get_current_device();
      if (!v24)
      {
        goto LABEL_54;
      }

      v25 = v24;
      ringerSwitchCapability = MobileGestalt_get_ringerSwitchCapability();

      if (ringerSwitchCapability)
      {
        goto LABEL_3;
      }

      result = MobileGestalt_get_current_device();
      if (!result)
      {
        goto LABEL_56;
      }

      goto LABEL_40;
    }

    v18 = MobileGestalt_get_current_device();
    if (!v18)
    {
      goto LABEL_55;
    }

    v19 = v18;
    iPadCapability = MobileGestalt_get_ringerSwitchCapability();
LABEL_41:
    v27 = iPadCapability;

    if ((v27 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_3:
    if (++v1 == 21)
    {
      v28 = _swiftEmptyArrayStorage[2];
      if (v28)
      {
        sub_10000F948(0, v28, 0);
        v29 = _swiftEmptyArrayStorage[2];
        v30 = 32;
        do
        {
          v31 = *(_swiftEmptyArrayStorage + v30);
          v32 = _swiftEmptyArrayStorage[3];
          if (v29 >= v32 >> 1)
          {
            sub_10000F948((v32 > 1), v29 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v29 + 1;
          *(&_swiftEmptyArrayStorage[4] + v29) = v31;
          ++v30;
          ++v29;
          --v28;
        }

        while (v28);
      }

      v33 = *(v0 + 8);

      return v33(_swiftEmptyArrayStorage);
    }
  }

  if (*(&off_10001D070 + v1 + 32) <= 0xFu)
  {
    if (v3 - 14 >= 2 && v3 != 12)
    {
      result = MobileGestalt_get_current_device();
      if (!result)
      {
        goto LABEL_53;
      }

LABEL_40:
      v19 = result;
      iPadCapability = MobileGestalt_get_iPadCapability();
      goto LABEL_41;
    }

    v12 = MobileGestalt_get_current_device();
    if (!v12)
    {
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
    }

    v13 = v12;
    telephonyCapability = MobileGestalt_get_telephonyCapability();

    if ((telephonyCapability & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10000F968(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v5 = _swiftEmptyArrayStorage[2];
    v4 = _swiftEmptyArrayStorage[3];
    if (v5 >= v4 >> 1)
    {
      sub_10000F968((v4 > 1), v5 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v5 + 1;
    *(&_swiftEmptyArrayStorage[4] + v5) = v3;
    goto LABEL_3;
  }

  if (*(&off_10001D070 + v1 + 32) <= 0x12u)
  {
    if (v3 - 16 >= 2)
    {
      v21 = [objc_opt_self() currentDevice];
      v22 = [v21 _feedbackSupportLevel];

      if (v22 == 2)
      {
        goto LABEL_6;
      }

      goto LABEL_3;
    }

    v6 = objc_allocWithZone(LSApplicationRecord);
    v7 = sub_100012538();
    *(v0 + 16) = 0;
    v8 = [v6 initWithBundleIdentifier:v7 allowPlaceholder:0 error:v0 + 16];

    v9 = *(v0 + 16);
    if (!v8)
    {
      v2 = v9;
      sub_1000123D8();

      swift_willThrow();

      goto LABEL_3;
    }

    v10 = v9;

    goto LABEL_6;
  }

  if (v3 != 19)
  {
    goto LABEL_6;
  }

  v15 = MobileGestalt_get_current_device();
  if (!v15)
  {
    goto LABEL_52;
  }

  v16 = v15;
  deviceSupportsClosedLoopHaptics = MobileGestalt_get_deviceSupportsClosedLoopHaptics();

  if ((deviceSupportsClosedLoopHaptics & 1) == 0)
  {
    goto LABEL_3;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    goto LABEL_40;
  }

  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_100010900()
{

  return _swift_task_switch(sub_10001098C, 0, 0);
}

id sub_10001098C()
{
  v1 = 0;
  while (1)
  {
    v4 = *(&off_10001D070 + v1 + 32);
    if (*(&off_10001D070 + v1 + 32) <= 0xDu)
    {
      break;
    }

    if (*(&off_10001D070 + v1 + 32) <= 0x11u)
    {
      if ((v4 - 14) >= 2)
      {
        v5 = objc_allocWithZone(LSApplicationRecord);
        v6 = sub_100012538();
        *(v0 + 16) = 0;
        v7 = [v5 initWithBundleIdentifier:v6 allowPlaceholder:0 error:v0 + 16];

        v8 = *(v0 + 16);
        if (v7)
        {
          v31 = v8;

          goto LABEL_35;
        }

        v9 = v8;
        sub_1000123D8();

        swift_willThrow();

        goto LABEL_3;
      }

LABEL_25:
      v21 = MobileGestalt_get_current_device();
      if (!v21)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
      }

      v22 = v21;
      telephonyCapability = MobileGestalt_get_telephonyCapability();

      if (telephonyCapability)
      {
        goto LABEL_35;
      }

      goto LABEL_3;
    }

    if (v4 == 18)
    {
      v2 = [objc_opt_self() currentDevice];
      v3 = [v2 _feedbackSupportLevel];

      if (v3 == 2)
      {
        v4 = 18;
        goto LABEL_35;
      }
    }

    else
    {
      if (v4 != 19)
      {
        goto LABEL_35;
      }

      v16 = MobileGestalt_get_current_device();
      if (!v16)
      {
        goto LABEL_41;
      }

      v17 = v16;
      deviceSupportsClosedLoopHaptics = MobileGestalt_get_deviceSupportsClosedLoopHaptics();

      if (deviceSupportsClosedLoopHaptics)
      {
        result = MobileGestalt_get_current_device();
        if (!result)
        {
          goto LABEL_46;
        }

        v19 = result;
        iPadCapability = MobileGestalt_get_iPadCapability();

        if ((iPadCapability & 1) == 0)
        {
          v4 = 19;
          goto LABEL_35;
        }
      }
    }

LABEL_3:
    if (++v1 == 21)
    {
      v4 = 21;
      goto LABEL_35;
    }
  }

  if (*(&off_10001D070 + v1 + 32) > 0xBu)
  {
    if (v4 == 12)
    {
      goto LABEL_25;
    }

    v24 = MobileGestalt_get_current_device();
    if (!v24)
    {
      goto LABEL_43;
    }

    v25 = v24;
    v26 = MobileGestalt_get_iPadCapability();

    if ((v26 & 1) == 0)
    {
      v4 = 13;
      goto LABEL_35;
    }

    goto LABEL_3;
  }

  if (v4 == 10)
  {
    v27 = MobileGestalt_get_current_device();
    if (!v27)
    {
      goto LABEL_42;
    }

    v28 = v27;
    ringerSwitchCapability = MobileGestalt_get_ringerSwitchCapability();

    if ((ringerSwitchCapability & 1) == 0)
    {
      v4 = 10;
      goto LABEL_35;
    }

    goto LABEL_3;
  }

  if (v4 != 11)
  {
    goto LABEL_35;
  }

  v10 = MobileGestalt_get_current_device();
  if (!v10)
  {
    goto LABEL_44;
  }

  v11 = v10;
  v12 = MobileGestalt_get_ringerSwitchCapability();

  if (v12)
  {
    goto LABEL_3;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v14 = result;
    v15 = MobileGestalt_get_iPadCapability();

    if ((v15 & 1) == 0)
    {
      v4 = 11;
LABEL_35:
      v30 = *(v0 + 8);

      return v30(v4);
    }

    goto LABEL_3;
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

unint64_t sub_100010CD4()
{
  result = qword_100020940;
  if (!qword_100020940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020940);
  }

  return result;
}

unint64_t sub_100010D28()
{
  result = qword_100020948;
  if (!qword_100020948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020948);
  }

  return result;
}

BOOL sub_100010D9C()
{
  swift_getKeyPath();
  sub_100007DD0();
  sub_100012418();

  v0 = sub_100012538();
  v1 = sub_100012538();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v0, v1, 0);

  v3 = sub_100012538();
  v4 = sub_100012538();
  v5 = CFPreferencesGetAppBooleanValue(v3, v4, 0);

  v6 = 2;
  if (!v5)
  {
    v6 = 3;
  }

  if (AppBooleanValue)
  {
    return v5 == 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_100010ED4(uint64_t a1)
{
  swift_getObjectType();
  swift_getKeyPath();
  sub_100007DD0();
  sub_100012408();
}

BOOL sub_100010F78()
{
  swift_getKeyPath();
  sub_100007DD0();
  sub_100012418();

  v0 = sub_100012538();
  v1 = sub_100012538();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v0, v1, 0);

  return AppBooleanValue != 0;
}

uint64_t sub_100011048(char a1)
{
  swift_getObjectType();
  swift_getKeyPath();
  sub_100007DD0();
  sub_100012408();
}

id sub_1000110F0()
{
  swift_getKeyPath();
  sub_100007DD0();
  sub_100012418();

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = [result getSilentMode];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10001119C()
{
  result = [objc_allocWithZone(type metadata accessor for SoundsSettings(0)) init];
  qword_100020B80 = result;
  return result;
}

void sub_1000113A8(unsigned __int8 *a2@<X8>)
{
  swift_getKeyPath();
  sub_100007DD0();
  sub_100012418();

  v3 = [objc_opt_self() sharedInstance];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 getSilentMode];

    *a2 = v5;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10001145C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100007DD0();
  sub_100012408();
}

void sub_1000114F8(char a1@<W0>, unsigned __int8 *a2@<X8>)
{
  v4 = [objc_opt_self() sharedInstance];
  if (v4)
  {
    v5 = v4;
    v6 = sub_100012538();
    v7 = [v5 setSilentMode:a1 & 1 untilTime:0 reason:v6 clientType:7];

    *a2 = v7;
  }

  else
  {
    __break(1u);
  }
}

BOOL sub_1000116A4@<W0>(_BYTE *a1@<X8>)
{
  result = sub_100010F78();
  *a1 = result;
  return result;
}

void sub_1000116FC(char a1)
{
  v2 = sub_100012538();
  v3 = [objc_allocWithZone(NSNumber) initWithBool:a1 & 1];
  v4 = sub_100012538();
  CFPreferencesSetValue(v2, v3, v4, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);

  v5 = sub_100012538();
  CFPreferencesSynchronize(v5, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);

  v6 = sub_100012538();
  v7 = sub_100012538();
  GSSendAppPreferencesChanged();
}

void sub_100011934(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v3 = sub_100012538();
      v4 = kCFBooleanFalse;
      v5 = sub_100012538();
      v6 = kCFPreferencesCurrentUser;
      v7 = kCFPreferencesAnyHost;
      CFPreferencesSetValue(v3, v4, v5, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);

      v8 = sub_100012538();
      v9 = &kCFBooleanTrue;
LABEL_8:
      v13 = *v9;
LABEL_12:
      v15 = sub_100012538();
      CFPreferencesSetValue(v8, v13, v15, v6, v7);

      v16 = sub_100012538();
      CFPreferencesSynchronize(v16, v6, v7);

      return;
    }

    if (a1 == 3)
    {
      v1 = sub_100012538();
      v2 = &kCFBooleanFalse;
      goto LABEL_11;
    }
  }

  else
  {
    if (!a1)
    {
      v1 = sub_100012538();
      v2 = &kCFBooleanTrue;
LABEL_11:
      v13 = *v2;
      v14 = sub_100012538();
      v6 = kCFPreferencesCurrentUser;
      v7 = kCFPreferencesAnyHost;
      CFPreferencesSetValue(v1, v13, v14, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);

      v8 = sub_100012538();
      goto LABEL_12;
    }

    if (a1 == 1)
    {
      v10 = sub_100012538();
      v11 = kCFBooleanTrue;
      v12 = sub_100012538();
      v6 = kCFPreferencesCurrentUser;
      v7 = kCFPreferencesAnyHost;
      CFPreferencesSetValue(v10, v11, v12, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);

      v8 = sub_100012538();
      v9 = &kCFBooleanFalse;
      goto LABEL_8;
    }
  }

  sub_100012598();
  __break(1u);
}

id sub_100011D04()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SoundsSettings(uint64_t a1)
{
  result = qword_100020980;
  if (!qword_100020980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100011DFC(uint64_t a1, uint64_t a2)
{
  result = sub_100012438();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_100011E8C@<W0>(_BOOL8 *a1@<X8>)
{
  result = sub_100010D9C();
  *a1 = result;
  return result;
}

BOOL sub_100011EFC@<W0>(_BYTE *a1@<X8>)
{
  result = sub_100010F78();
  *a1 = result;
  return result;
}