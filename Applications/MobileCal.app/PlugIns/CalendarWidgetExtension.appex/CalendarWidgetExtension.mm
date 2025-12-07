unint64_t sub_100001B60()
{
  result = qword_100070490;
  if (!qword_100070490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070490);
  }

  return result;
}

unint64_t sub_100001BB8()
{
  result = qword_100070498;
  if (!qword_100070498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070498);
  }

  return result;
}

uint64_t sub_100001C30()
{
  *(v0 + 160) = CalEnableTravelAdvisoriesForAutomaticBehavior();
  v1 = objc_opt_self();
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_100001D60;
  v2 = swift_continuation_init();
  *(v0 + 136) = sub_1000057AC(&qword_1000705A0, &qword_10004D470);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100001E98;
  *(v0 + 104) = &unk_10006DC50;
  *(v0 + 112) = v2;
  [v1 ttlLocationStatusWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100001D60()
{

  return _swift_task_switch(sub_100001E40, 0, 0);
}

uint64_t sub_100001E40()
{
  v1 = *(v0 + 144);
  if (v1 == 4)
  {
    v2 = 0;
    v3 = 0;
    if (!*(v0 + 160))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v2 = v1 != 0;
    if ((*(v0 + 160) & 1) == 0)
    {
      v3 = 0;
      goto LABEL_7;
    }
  }

  v3 = !v2;
LABEL_7:
  **(v0 + 152) = v3;
  return (*(v0 + 8))();
}

uint64_t sub_100001E98(uint64_t a1, uint64_t a2)
{
  **(*(*sub_100005C14((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return _swift_continuation_resume();
}

uint64_t sub_100001F18()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100002040;
  v2 = swift_continuation_init();
  v0[17] = sub_1000057AC(&qword_1000705A0, &qword_10004D470);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100001E98;
  v0[13] = &unk_10006DC28;
  v0[14] = v2;
  [v1 ttlLocationStatusWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100002040()
{

  return _swift_task_switch(sub_100002120, 0, 0);
}

uint64_t sub_100002120()
{
  if ((*(v0 + 144) | 4) == 4)
  {
    CalSetEnableTravelAdvisoriesForAutomaticBehavior();
  }

  else
  {
    sub_100005BC0();
    swift_allocError();
    *v2 = 4;
    swift_willThrow();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000021DC()
{
  v0 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v0 - 8);
  v2 = &v12[-v1];
  v3 = sub_10004C554();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10004C5A4();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004C754();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10004C564();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  sub_10004C744();
  sub_10004C594();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  sub_10004C574();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_10004C4C4();
}

uint64_t sub_1000024B8@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = sub_1000057AC(&qword_1000705B0, &unk_10004E990);
  __chkstk_darwin(v1 - 8);
  v21 = &v20 - v2;
  v3 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_10004C554();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004C5A4();
  __chkstk_darwin(v10 - 8);
  v11 = sub_10004C754();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10004C564();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  __chkstk_darwin(v14);
  sub_10004C744();
  sub_10004C594();
  (*(v7 + 104))(v9, enum case for LocalizedStringResource.BundleDescription.main(_:), v6);
  sub_10004C584();
  (*(v13 + 56))(v5, 1, 1, v12);
  if (qword_100070428 != -1)
  {
    swift_once();
  }

  v15 = sub_10004C3C4();
  v16 = sub_100005C58(v15, qword_100071B70);
  v17 = *(v15 - 8);
  v18 = v21;
  (*(v17 + 16))(v21, v16, v15);
  (*(v17 + 56))(v18, 0, 1, v15);
  sub_10004C544();
  return sub_10004C3E4();
}

uint64_t sub_1000028CC()
{
  v0 = qword_1000702F0;

  return v0;
}

unint64_t sub_100002908()
{
  result = qword_1000704A0;
  if (!qword_1000704A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000704A0);
  }

  return result;
}

unint64_t sub_100002960()
{
  result = qword_1000704A8;
  if (!qword_1000704A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000704A8);
  }

  return result;
}

unint64_t sub_1000029B8()
{
  result = qword_1000704B0;
  if (!qword_1000704B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000704B0);
  }

  return result;
}

unint64_t sub_100002A10()
{
  result = qword_1000704B8;
  if (!qword_1000704B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000704B8);
  }

  return result;
}

unint64_t sub_100002A78()
{
  result = qword_1000704C0;
  if (!qword_1000704C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000704C0);
  }

  return result;
}

unint64_t sub_100002AD0()
{
  result = qword_1000704C8;
  if (!qword_1000704C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000704C8);
  }

  return result;
}

unint64_t sub_100002B28()
{
  result = qword_1000704D0;
  if (!qword_1000704D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000704D0);
  }

  return result;
}

unint64_t sub_100002B80()
{
  result = qword_1000704D8;
  if (!qword_1000704D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000704D8);
  }

  return result;
}

uint64_t sub_100002C4C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002C94(uint64_t a1)
{
  v2 = sub_100001B60();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100002CE4()
{
  result = qword_1000704F0;
  if (!qword_1000704F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000704F0);
  }

  return result;
}

uint64_t sub_100002D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100002E00;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100002E00()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100002EF4(uint64_t a1)
{
  v2 = sub_100002B80();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100002F44()
{
  result = qword_1000704F8;
  if (!qword_1000704F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000704F8);
  }

  return result;
}

uint64_t sub_100002FDC()
{
  v0 = sub_10004C554();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10004C5A4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10004C754();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10004C564();
  sub_100005C90(v6, qword_100071928);
  sub_100005C58(v6, qword_100071928);
  sub_10004C744();
  sub_10004C594();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10004C574();
}

uint64_t sub_100003210()
{
  result = swift_getKeyPath();
  qword_100071940 = result;
  return result;
}

uint64_t sub_100003244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  sub_10004C7C4();
  v3[7] = sub_10004C7B4();
  v5 = sub_10004C7A4();
  v3[8] = v5;
  v3[9] = v4;

  return _swift_task_switch(sub_1000032E0, v5, v4);
}

uint64_t sub_1000032E0()
{
  sub_10004C1F4();
  v1 = *(v0 + 16);
  *(v0 + 24) = v1;
  *(v0 + 80) = v1;
  sub_10004C1F4();
  *(v0 + 113) = *(v0 + 112);
  if (qword_100070308 != -1)
  {
    swift_once();
  }

  v2 = qword_100071940;
  *(v0 + 88) = qword_100071940;

  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  v4 = sub_100005D70(&qword_100070590, &qword_100070598, &qword_10004D468, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v3 = v0;
  v3[1] = sub_100003440;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 113, v2, &type metadata for Bool, v4);
}

uint64_t sub_100003440()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_100003604;
  }

  else
  {
    v5 = sub_100003594;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100003594()
{

  sub_10004C1D4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100003604()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_100003668@<X0>(void *a1@<X8>)
{
  result = sub_10004C1F4();
  *a1 = v3;
  return result;
}

uint64_t sub_1000036A4(uint64_t *a1)
{

  sub_10004C204();
}

uint64_t (*sub_1000036EC(uint64_t *a1))()
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
  *(v2 + 32) = sub_10004C1E4();
  return sub_100003760;
}

void *sub_100003764@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10004C1F4();
  *a1 = v3;
  return result;
}

uint64_t (*sub_1000037D8(uint64_t *a1))()
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
  *(v2 + 32) = sub_10004C1E4();
  return sub_100005F04;
}

void sub_10000384C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_100003898()
{
  if (qword_100070308 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1000038F8()
{
  result = qword_100070510;
  if (!qword_100070510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070510);
  }

  return result;
}

unint64_t sub_100003950()
{
  result = qword_100070518;
  if (!qword_100070518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070518);
  }

  return result;
}

uint64_t sub_100003A10@<X0>(uint64_t a1@<X8>)
{
  if (qword_100070300 != -1)
  {
    swift_once();
  }

  v2 = sub_10004C564();
  v3 = sub_100005C58(v2, qword_100071928);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100003AD0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002E00;

  return sub_100003244(a1, v5, v4);
}

char *sub_100003B7C@<X0>(char **a1@<X8>)
{
  result = sub_100004FF0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100003BA4(uint64_t a1)
{
  v2 = sub_100002F44();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100003BE4()
{
  result = qword_100070520;
  if (!qword_100070520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070520);
  }

  return result;
}

unint64_t sub_100003C3C()
{
  result = qword_100070528;
  if (!qword_100070528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070528);
  }

  return result;
}

uint64_t sub_100003C90(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005F00;

  return sub_1000057F4();
}

uint64_t sub_100003D34(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100001BB8();
  *v4 = v2;
  v4[1] = sub_100003DE4;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

uint64_t sub_100003DE4(uint64_t a1)
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

unint64_t sub_100003EFC()
{
  result = qword_100070530;
  if (!qword_100070530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070530);
  }

  return result;
}

unint64_t sub_100003F54()
{
  result = qword_100070538;
  if (!qword_100070538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070538);
  }

  return result;
}

uint64_t sub_100003FA8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100001BB8();
  *v5 = v2;
  v5[1] = sub_100005F1C;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10000405C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100001BB8();
  *v4 = v2;
  v4[1] = sub_100005F00;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

uint64_t sub_10000410C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000041CC;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_1000041CC(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_1000042D0()
{
  result = qword_100070540;
  if (!qword_100070540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070540);
  }

  return result;
}

unint64_t sub_100004328()
{
  result = qword_100070548;
  if (!qword_100070548)
  {
    sub_100002C4C(&qword_100070550, qword_10004D290);
    sub_100002B28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070548);
  }

  return result;
}

uint64_t sub_1000043AC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100002A10();
  *v5 = v2;
  v5[1] = sub_100005EFC;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100004460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005EFC;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

__n128 sub_100004518(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100004524(uint64_t *a1, int a2)
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

uint64_t sub_10000456C(uint64_t result, int a2, int a3)
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

uint64_t sub_10000461C@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v1 = sub_1000057AC(&qword_1000705C0, &unk_10004D5D0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - v3;
  v5 = sub_1000057AC(&qword_1000705C8, qword_10004EA10);
  v6 = *(v5 - 8);
  v19 = v5;
  v20 = v6;
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  swift_getKeyPath();
  sub_1000057AC(&qword_1000705D0, &unk_10004D5E0);
  v17._object = &protocol witness table for Text;
  sub_100003C3C();
  sub_100005D70(&qword_1000705D8, &qword_1000705D0, &unk_10004D5E0, &protocol conformance descriptor for Label<A, B>);
  sub_10004C724();
  sub_10004C6A4();
  v9 = sub_100005D70(&qword_1000705E0, &qword_1000705C0, &unk_10004D5D0, &protocol conformance descriptor for ControlToggle<A>);
  sub_10004C6C4();

  (*(v2 + 8))(v4, v1);
  v10 = [objc_opt_self() mainBundle];
  v17._countAndFlagsBits = 0x8000000100055240;
  v26._object = 0x8000000100055220;
  v26._countAndFlagsBits = 0xD000000000000019;
  v27.value._countAndFlagsBits = 0;
  v27.value._object = 0;
  v11.super.isa = v10;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v12 = sub_10004C534(v26, v27, v11, v28, 0xD000000000000056, v17);
  v14 = v13;

  v24 = v12;
  v25 = v14;
  v22 = v1;
  v23 = v9;
  swift_getOpaqueTypeConformance2();
  sub_100005DB8();
  v15 = v19;
  sub_10004C6B4();

  return (*(v20 + 8))(v8, v15);
}

uint64_t sub_100004A04()
{
  v0 = [objc_opt_self() mainBundle];
  v3._countAndFlagsBits = 0x8000000100054F80;
  v4._countAndFlagsBits = 0x206F7420656D6954;
  v4._object = 0xED0000657661654CLL;
  v5.value._countAndFlagsBits = 0;
  v5.value._object = 0;
  v1.super.isa = v0;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_10004C534(v4, v5, v1, v6, 0xD000000000000025, v3);

  sub_100005DB8();
  return sub_10004C6E4();
}

uint64_t sub_100004AEC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10004C554();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004C5A4();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10004C754();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004C564();
  __chkstk_darwin(v8 - 8);
  sub_10004C744();
  sub_10004C594();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_10004C574();
  result = sub_10004C6D4();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_100004D20@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_10004C554();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004C5A4();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004C754();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10004C564();
  __chkstk_darwin(v9 - 8);
  sub_10004C744();
  sub_10004C594();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  sub_10004C574();
  result = sub_10004C6D4();
  *a2 = result;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v13;
  return result;
}

void *sub_100004FD4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

char *sub_100004FF0()
{
  v0 = sub_1000057AC(&qword_100070568, &unk_10004E1F0);
  __chkstk_darwin(v0 - 8);
  v50 = &v35 - v1;
  v2 = sub_10004C494();
  v3 = *(v2 - 8);
  v53 = v2;
  v54 = v3;
  __chkstk_darwin(v2);
  v49 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000057AC(&unk_100070570, &unk_10004D430);
  v6 = __chkstk_darwin(v5 - 8);
  v48 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v52 = &v35 - v8;
  v9 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v9 - 8);
  v51 = &v35 - v10;
  v11 = sub_10004C554();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10004C5A4();
  __chkstk_darwin(v15 - 8);
  v16 = sub_10004C754();
  __chkstk_darwin(v16 - 8);
  v17 = sub_10004C564();
  v45 = v17;
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v35 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1000057AC(&qword_100070580, &unk_10004D440);
  sub_10004C744();
  sub_10004C594();
  v20 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v21 = *(v12 + 104);
  v36 = v11;
  v21(v14, enum case for LocalizedStringResource.BundleDescription.main(_:), v11);
  v37 = v21;
  v38 = v12 + 104;
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v21(v14, v20, v11);
  v22 = v51;
  sub_10004C574();
  v23 = *(v18 + 56);
  v44 = v18 + 56;
  v46 = v23;
  v23(v22, 0, 1, v17);
  v56[0] = 0;
  v24 = sub_10004C1C4();
  v39 = v24;
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v43 = v26;
  v47 = v25 + 56;
  v26(v52, 1, 1, v24);
  v26(v48, 1, 1, v24);
  v40 = enum case for InputConnectionBehavior.default(_:);
  v27 = *(v54 + 104);
  v54 += 104;
  v41 = v27;
  v28 = v49;
  v27(v49);
  sub_100001B60();
  v29 = v28;
  v48 = sub_10004C224();
  v42 = sub_1000057AC(&qword_100070588, &qword_10004E210);
  sub_10004C744();
  sub_10004C594();
  v30 = v36;
  v31 = v37;
  v37(v14, v20, v36);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v31(v14, v20, v30);
  v32 = v51;
  sub_10004C574();
  v46(v32, 0, 1, v45);
  v55[0] = 2;
  v33 = sub_10004C794();
  (*(*(v33 - 8) + 56))(v50, 1, 1, v33);
  v43(v52, 1, 1, v39);
  v41(v29, v40, v53);
  sub_10004C234();
  return v48;
}

uint64_t sub_1000057AC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000057F4()
{
  v1 = sub_10004C554();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_10004C5A4();
  v0[5] = swift_task_alloc();
  sub_10004C754();
  v0[6] = swift_task_alloc();
  sub_10004C564();
  v0[7] = swift_task_alloc();

  return _swift_task_switch(sub_100005934, 0, 0);
}

uint64_t sub_100005934()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v0[3];
  sub_1000057AC(&qword_100070508, qword_10004D030);
  sub_10004C744();
  sub_10004C594();
  (*(v3 + 104))(v1, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_10004C574();
  sub_100005D70(&qword_100070590, &qword_100070598, &qword_10004D468, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v4 = sub_10004C514();

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_100005B10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100005B74(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_100005BC0()
{
  result = qword_1000705A8;
  if (!qword_1000705A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000705A8);
  }

  return result;
}

void *sub_100005C14(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100005C58(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100005C90(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void type metadata accessor for EKTTLLocationStatus()
{
  if (!qword_1000705B8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000705B8);
    }
  }
}

uint64_t sub_100005D70(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100002C4C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100005DB8()
{
  result = qword_1000705E8;
  if (!qword_1000705E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000705E8);
  }

  return result;
}

uint64_t sub_100005E0C()
{
  sub_100002C4C(&qword_1000705C8, qword_10004EA10);
  sub_100002C4C(&qword_1000705C0, &unk_10004D5D0);
  sub_100005D70(&qword_1000705E0, &qword_1000705C0, &unk_10004D5D0, &protocol conformance descriptor for ControlToggle<A>);
  swift_getOpaqueTypeConformance2();
  sub_100005DB8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100005F20()
{
  v0 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_10004C554();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004C5A4();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10004C754();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004C564();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_10004C4D4();
  sub_100005C90(v10, qword_100071948);
  sub_100005C58(v10, qword_100071948);
  sub_10004C744();
  sub_10004C594();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_10004C584();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_10004C4C4();
}

uint64_t sub_1000061FC()
{
  v0 = sub_1000057AC(&qword_1000705B0, &unk_10004E990);
  __chkstk_darwin(v0 - 8);
  v154 = &v132 - v1;
  v2 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v2 - 8);
  v4 = &v132 - v3;
  v145 = sub_10004C554();
  v5 = *(v145 - 8);
  __chkstk_darwin(v145);
  v7 = &v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004C5A4();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10004C754();
  __chkstk_darwin(v9 - 8);
  v155 = sub_10004C564();
  v10 = *(v155 - 8);
  v11 = __chkstk_darwin(v155);
  v157 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v132 - v13;
  sub_1000057AC(&qword_100070720, &unk_10004DB50);
  v15 = sub_1000057AC(&qword_100070728, &qword_100054810);
  v16 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
  v141 = *(*(v15 - 8) + 72);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10004D5F0;
  v134 = v17;
  v18 = (v17 + v16);
  v19 = v14;
  v156 = v15;
  v137 = *(v15 + 48);
  v139 = v18;
  *v18 = 0;
  sub_10004C744();
  sub_10004C594();
  v20 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v21 = *(v5 + 104);
  v22 = v145;
  v21(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v145);
  sub_10004C584();
  sub_10004C744();
  sub_10004C594();
  v147 = v20;
  v146 = v5 + 104;
  v153 = v21;
  v21(v7, v20, v22);
  sub_10004C584();
  v23 = *(v10 + 56);
  v138 = v4;
  v148 = v10 + 56;
  v152 = v23;
  v23(v4, 0, 1, v155);
  if (qword_100070428 != -1)
  {
    swift_once();
  }

  v24 = sub_10004C3C4();
  v25 = sub_100005C58(v24, qword_100071B70);
  v26 = *(v24 - 8);
  v27 = *(v26 + 16);
  v143 = v26 + 16;
  v150 = v25;
  v151 = v27;
  v28 = v154;
  v27(v154, v25, v24);
  v29 = *(v26 + 56);
  v149 = v26 + 56;
  v144 = v29;
  v29(v28, 0, 1, v24);
  sub_10004C544();
  v30 = v139;
  sub_10004C3E4();
  v140 = v19;
  v135 = &v30[v141];
  v136 = *(v156 + 48);
  *v135 = 1;
  sub_10004C744();
  sub_10004C594();
  v31 = v147;
  v32 = v145;
  v33 = v153;
  v153(v7, v147, v145);
  sub_10004C584();
  v137 = "e Override screen";
  sub_10004C744();
  sub_10004C594();
  v33(v7, v31, v32);
  v34 = v138;
  sub_10004C584();
  v152(v34, 0, 1, v155);
  v151(v28, v150, v24);
  v144(v28, 0, 1, v24);
  sub_10004C544();
  sub_10004C3E4();
  v136 = 2 * v141;
  v133 = &v139[2 * v141];
  v135 = *(v156 + 48);
  *v133 = 2;
  sub_10004C744();
  sub_10004C594();
  v35 = v147;
  v36 = v145;
  v37 = v153;
  v153(v7, v147, v145);
  sub_10004C584();
  sub_10004C744();
  sub_10004C594();
  v37(v7, v35, v36);
  v38 = v138;
  sub_10004C584();
  v152(v38, 0, 1, v155);
  v39 = v154;
  v142 = v24;
  v151(v154, v150, v24);
  v144(v39, 0, 1, v24);
  sub_10004C544();
  sub_10004C3E4();
  v40 = v141;
  v135 = &v139[v136 + v141];
  v136 = *(v156 + 48);
  *v135 = 3;
  sub_10004C744();
  sub_10004C594();
  v41 = v147;
  v42 = v153;
  v153(v7, v147, v36);
  sub_10004C584();
  sub_10004C744();
  sub_10004C594();
  v42(v7, v41, v36);
  sub_10004C584();
  v152(v38, 0, 1, v155);
  v43 = v154;
  v44 = v142;
  v151(v154, v150, v142);
  v144(v43, 0, 1, v44);
  sub_10004C544();
  sub_10004C3E4();
  v136 = 4 * v40;
  v45 = v139;
  v133 = &v139[4 * v40];
  v135 = *(v156 + 48);
  *v133 = 4;
  sub_10004C744();
  sub_10004C594();
  v46 = v147;
  v47 = v145;
  v48 = v153;
  v153(v7, v147, v145);
  sub_10004C584();
  sub_10004C744();
  sub_10004C594();
  v48(v7, v46, v47);
  v49 = v138;
  sub_10004C584();
  v152(v49, 0, 1, v155);
  v50 = v154;
  v51 = v142;
  v151(v154, v150, v142);
  v52 = v144;
  v144(v50, 0, 1, v51);
  sub_10004C544();
  sub_10004C3E4();
  v135 = &v45[v136 + v141];
  v136 = *(v156 + 48);
  *v135 = 5;
  sub_10004C744();
  sub_10004C594();
  v53 = v147;
  v54 = v145;
  v55 = v153;
  v153(v7, v147, v145);
  sub_10004C584();
  sub_10004C744();
  sub_10004C594();
  v55(v7, v53, v54);
  v56 = v49;
  sub_10004C584();
  v57 = v49;
  v58 = v152;
  v152(v57, 0, 1, v155);
  v59 = v154;
  v60 = v142;
  v151(v154, v150, v142);
  v52(v59, 0, 1, v60);
  sub_10004C544();
  sub_10004C3E4();
  v135 = &v139[6 * v141];
  v136 = *(v156 + 48);
  *v135 = 6;
  sub_10004C744();
  sub_10004C594();
  v61 = v145;
  v62 = v153;
  v153(v7, v53, v145);
  sub_10004C584();
  sub_10004C744();
  sub_10004C594();
  v62(v7, v53, v61);
  sub_10004C584();
  v58(v56, 0, 1, v155);
  v63 = v154;
  v64 = v142;
  v151(v154, v150, v142);
  v144(v63, 0, 1, v64);
  sub_10004C544();
  sub_10004C3E4();
  v135 = 8 * v141;
  v65 = v139;
  v133 = &v139[7 * v141];
  v136 = *(v156 + 48);
  *v133 = 7;
  sub_10004C744();
  sub_10004C594();
  v66 = v147;
  v67 = v145;
  v68 = v153;
  v153(v7, v147, v145);
  sub_10004C584();
  sub_10004C744();
  sub_10004C594();
  v68(v7, v66, v67);
  v69 = v138;
  sub_10004C584();
  v70 = v155;
  v152(v69, 0, 1, v155);
  v71 = v154;
  v72 = v142;
  v151(v154, v150, v142);
  v144(v71, 0, 1, v72);
  sub_10004C544();
  v73 = v69;
  sub_10004C3E4();
  v132 = &v65[v135];
  v133 = *(v156 + 48);
  *v132 = 8;
  sub_10004C744();
  sub_10004C594();
  v74 = v147;
  v75 = v145;
  v76 = v153;
  v153(v7, v147, v145);
  sub_10004C584();
  v136 = "en Birthdays row";
  sub_10004C744();
  sub_10004C594();
  v76(v7, v74, v75);
  sub_10004C584();
  v152(v73, 0, 1, v70);
  v77 = v154;
  v78 = v150;
  v79 = v142;
  v151(v154, v150, v142);
  v144(v77, 0, 1, v79);
  sub_10004C544();
  sub_10004C3E4();
  v133 = &v139[v135 + v141];
  v135 = *(v156 + 48);
  *v133 = 9;
  sub_10004C744();
  sub_10004C594();
  v80 = v147;
  v81 = v145;
  v82 = v153;
  v153(v7, v147, v145);
  sub_10004C584();
  sub_10004C744();
  sub_10004C594();
  v82(v7, v80, v81);
  v83 = v138;
  sub_10004C584();
  v84 = v155;
  v152(v83, 0, 1, v155);
  v85 = v154;
  v86 = v142;
  v87 = v151;
  v151(v154, v78, v142);
  v144(v85, 0, 1, v86);
  sub_10004C544();
  sub_10004C3E4();
  v133 = &v139[10 * v141];
  v135 = *(v156 + 48);
  *v133 = 10;
  sub_10004C744();
  sub_10004C594();
  v88 = v147;
  v89 = v145;
  v90 = v153;
  v153(v7, v147, v145);
  sub_10004C584();
  sub_10004C744();
  sub_10004C594();
  v90(v7, v88, v89);
  v91 = v138;
  sub_10004C584();
  v152(v91, 0, 1, v84);
  v92 = v154;
  v93 = v142;
  v87(v154, v150, v142);
  v94 = v144;
  v144(v92, 0, 1, v93);
  sub_10004C544();
  sub_10004C3E4();
  v95 = v139;
  v133 = &v139[11 * v141];
  v135 = *(v156 + 48);
  *v133 = 11;
  sub_10004C744();
  sub_10004C594();
  v96 = v147;
  v97 = v145;
  v98 = v153;
  v153(v7, v147, v145);
  sub_10004C584();
  sub_10004C744();
  sub_10004C594();
  v98(v7, v96, v97);
  v99 = v138;
  sub_10004C584();
  v152(v99, 0, 1, v155);
  v100 = v154;
  v101 = v142;
  v151(v154, v150, v142);
  v94(v100, 0, 1, v101);
  sub_10004C544();
  sub_10004C3E4();
  v135 = &v95[12 * v141];
  v136 = *(v156 + 48);
  *v135 = 12;
  sub_10004C744();
  sub_10004C594();
  v102 = v147;
  v103 = v145;
  v104 = v153;
  v153(v7, v147, v145);
  sub_10004C584();
  sub_10004C744();
  sub_10004C594();
  v104(v7, v102, v103);
  v105 = v138;
  sub_10004C584();
  v152(v105, 0, 1, v155);
  v106 = v154;
  v107 = v142;
  v151(v154, v150, v142);
  v144(v106, 0, 1, v107);
  sub_10004C544();
  sub_10004C3E4();
  v108 = v139;
  v135 = &v139[13 * v141];
  v136 = *(v156 + 48);
  *v135 = 13;
  sub_10004C744();
  sub_10004C594();
  v109 = v145;
  v104(v7, v102, v145);
  sub_10004C584();
  sub_10004C744();
  sub_10004C594();
  v104(v7, v102, v109);
  sub_10004C584();
  v152(v105, 0, 1, v155);
  v110 = v154;
  v111 = v142;
  v151(v154, v150, v142);
  v144(v110, 0, 1, v111);
  sub_10004C544();
  sub_10004C3E4();
  v112 = v156;
  v136 = *(v156 + 48);
  v108[14 * v141] = 14;
  sub_10004C744();
  sub_10004C594();
  v113 = v147;
  v114 = v153;
  v153(v7, v147, v109);
  sub_10004C584();
  sub_10004C744();
  sub_10004C594();
  v114(v7, v113, v109);
  v115 = v138;
  sub_10004C584();
  v152(v115, 0, 1, v155);
  v116 = v154;
  v117 = v142;
  v151(v154, v150, v142);
  v144(v116, 0, 1, v117);
  sub_10004C544();
  sub_10004C3E4();
  v136 = 16 * v141;
  v118 = v139;
  v135 = &v139[15 * v141];
  v141 = *(v112 + 48);
  *v135 = 15;
  sub_10004C744();
  sub_10004C594();
  v119 = v147;
  v120 = v145;
  v121 = v153;
  v153(v7, v147, v145);
  sub_10004C584();
  sub_10004C744();
  sub_10004C594();
  v122 = v120;
  v121(v7, v119, v120);
  v123 = v138;
  sub_10004C584();
  v152(v123, 0, 1, v155);
  v124 = v154;
  v125 = v142;
  v151(v154, v150, v142);
  v144(v124, 0, 1, v125);
  sub_10004C544();
  sub_10004C3E4();
  v141 = *(v156 + 48);
  v118[v136] = 16;
  sub_10004C744();
  sub_10004C594();
  v126 = v147;
  v127 = v153;
  v153(v7, v147, v122);
  sub_10004C584();
  sub_10004C744();
  sub_10004C594();
  v127(v7, v126, v122);
  v128 = v138;
  sub_10004C584();
  v152(v128, 0, 1, v155);
  v129 = v142;
  v151(v124, v150, v142);
  v144(v124, 0, 1, v129);
  sub_10004C544();
  sub_10004C3E4();
  v130 = sub_10004A1D0(v134);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100071960 = v130;
  return result;
}

uint64_t sub_100008600()
{
  v0 = sub_1000057AC(&qword_100070730, &qword_10004DB60);
  sub_100005C90(v0, qword_100071968);
  sub_100005C58(v0, qword_100071968);
  sub_1000057AC(&qword_100070738, &qword_10004DB68);
  v1 = *(sub_1000057AC(&qword_100070740, &unk_10004DB70) - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10004D5F0;
  v5 = v4 + v3;
  *(v4 + v3) = 0;
  sub_1000090DC();
  sub_10004C424();
  *(v5 + v2) = 1;
  sub_10004C424();
  *(v5 + 2 * v2) = 2;
  sub_10004C424();
  *(v5 + 3 * v2) = 3;
  sub_10004C424();
  *(v5 + 4 * v2) = 4;
  sub_10004C424();
  *(v5 + 5 * v2) = 5;
  sub_10004C424();
  *(v5 + 6 * v2) = 6;
  sub_10004C424();
  *(v5 + 7 * v2) = 7;
  sub_10004C424();
  *(v5 + 8 * v2) = 8;
  sub_10004C424();
  *(v5 + 9 * v2) = 9;
  sub_10004C424();
  *(v5 + 10 * v2) = 10;
  sub_10004C424();
  *(v5 + 11 * v2) = 11;
  sub_10004C424();
  *(v5 + 12 * v2) = 12;
  sub_10004C424();
  *(v5 + 13 * v2) = 13;
  sub_10004C424();
  *(v5 + 14 * v2) = 14;
  sub_10004C424();
  *(v5 + 15 * v2) = 15;
  sub_10004C424();
  *(v5 + 16 * v2) = 16;
  sub_10004C424();
  sub_10004A3E0(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return sub_10004C434();
}

unint64_t sub_100008B1C(char a1)
{
  result = 1953460082;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x626D754E6B656577;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
    case 16:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x61727544636E7973;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD00000000000001ALL;
      break;
    case 9:
      result = 0xD00000000000001CLL;
      break;
    case 10:
      result = 0xD00000000000001DLL;
      break;
    case 11:
      result = 0x654C6F54656D6974;
      break;
    case 12:
      result = 0xD000000000000014;
      break;
    case 13:
      result = 0x6565577472617473;
      break;
    case 14:
      result = 0x43746C7561666564;
      break;
    case 15:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100008D74(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100008B1C(*a1);
  v5 = v4;
  if (v3 == sub_100008B1C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10004C844();
  }

  return v8 & 1;
}

unint64_t sub_100008E00()
{
  result = qword_100070660;
  if (!qword_100070660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070660);
  }

  return result;
}

Swift::Int sub_100008E54()
{
  v1 = *v0;
  sub_10004C8A4();
  sub_100008B1C(v1);
  sub_10004C784();

  return sub_10004C8C4();
}

uint64_t sub_100008EB8(uint64_t a1)
{
  sub_100008B1C(*v1);
  sub_10004C784();
}

Swift::Int sub_100008F0C(uint64_t a1)
{
  v2 = *v1;
  sub_10004C8A4();
  sub_100008B1C(v2);
  sub_10004C784();

  return sub_10004C8C4();
}

unint64_t sub_100008F6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000A128(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_100008F9C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100008B1C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100008FC8()
{
  result = qword_100070668;
  if (!qword_100070668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070668);
  }

  return result;
}

unint64_t sub_100009020()
{
  result = qword_100070670;
  if (!qword_100070670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070670);
  }

  return result;
}

unint64_t sub_100009078()
{
  result = qword_100070678;
  if (!qword_100070678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070678);
  }

  return result;
}

unint64_t sub_1000090DC()
{
  result = qword_100070680;
  if (!qword_100070680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070680);
  }

  return result;
}

unint64_t sub_100009134()
{
  result = qword_100070688;
  if (!qword_100070688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070688);
  }

  return result;
}

uint64_t sub_100009188@<X0>(uint64_t a1@<X8>)
{
  if (qword_100070320 != -1)
  {
    swift_once();
  }

  v2 = sub_1000057AC(&qword_100070730, &qword_10004DB60);
  v3 = sub_100005C58(v2, qword_100071968);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100009240()
{
  result = qword_100070690;
  if (!qword_100070690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070690);
  }

  return result;
}

unint64_t sub_100009294()
{
  result = qword_100070698;
  if (!qword_100070698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070698);
  }

  return result;
}

unint64_t sub_1000092EC()
{
  result = qword_1000706A0;
  if (!qword_1000706A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000706A0);
  }

  return result;
}

unint64_t sub_100009344()
{
  result = qword_1000706A8;
  if (!qword_1000706A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000706A8);
  }

  return result;
}

uint64_t sub_10000939C(uint64_t a1)
{
  sub_10000A6AC();
  v2 = sub_10004C3A4();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10000946C(uint64_t a1)
{
  v2 = sub_1000090DC();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000094BC()
{
  result = qword_1000706B0;
  if (!qword_1000706B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000706B0);
  }

  return result;
}

unint64_t sub_100009514()
{
  result = qword_1000706B8;
  if (!qword_1000706B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000706B8);
  }

  return result;
}

unint64_t sub_10000956C()
{
  result = qword_1000706C0;
  if (!qword_1000706C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000706C0);
  }

  return result;
}

uint64_t sub_1000095C0()
{
  if (qword_100070318 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10000961C(uint64_t a1)
{
  v2 = sub_100009344();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10000966C()
{
  result = qword_1000706C8;
  if (!qword_1000706C8)
  {
    sub_100002C4C(&qword_1000706D0, &qword_10004D8C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000706C8);
  }

  return result;
}

unint64_t sub_1000096E4()
{
  result = qword_1000706D8;
  if (!qword_1000706D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000706D8);
  }

  return result;
}

uint64_t sub_10000973C()
{
  v0 = sub_10004C554();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10004C5A4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10004C754();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10004C564();
  sub_100005C90(v6, qword_100071980);
  sub_100005C58(v6, qword_100071980);
  sub_10004C744();
  sub_10004C594();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10004C584();
}

void *sub_10000991C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10004C1F4();
  *a1 = v3;
  return result;
}

void (*sub_100009990(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_10004C1E4();
  return sub_10000384C;
}

unint64_t sub_100009A04()
{
  result = qword_1000706E0;
  if (!qword_1000706E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000706E0);
  }

  return result;
}

uint64_t sub_100009A58(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A604();
  v5 = sub_10000A6AC();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100009AC8()
{
  v0 = qword_100070650;

  return v0;
}

unint64_t sub_100009B08()
{
  result = qword_1000706E8;
  if (!qword_1000706E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000706E8);
  }

  return result;
}

unint64_t sub_100009B60()
{
  result = qword_1000706F0;
  if (!qword_1000706F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000706F0);
  }

  return result;
}

unint64_t sub_100009BB8()
{
  result = qword_1000706F8;
  if (!qword_1000706F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000706F8);
  }

  return result;
}

uint64_t sub_100009CB8@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
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
  v9 = sub_100005C58(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_100009D70(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_10000A604();
  v6 = sub_10000A658();
  v7 = sub_10000A6AC();
  *v4 = v2;
  v4[1] = sub_100009E3C;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_100009E3C()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_100009F44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000A17C();
  *a1 = result;
  return result;
}

uint64_t sub_100009F6C(uint64_t a1)
{
  v2 = sub_100009A04();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t getEnumTagSinglePayload for SettingsCalendarStaticDeepLinks(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SettingsCalendarStaticDeepLinks(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000A128(uint64_t a1, uint64_t a2)
{
  v2 = sub_10004C854();

  if (v2 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10000A17C()
{
  v0 = sub_10004C494();
  v25 = *(v0 - 8);
  v26 = v0;
  __chkstk_darwin(v0);
  v24 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1000057AC(&unk_100070570, &unk_10004D430);
  v3 = __chkstk_darwin(v2 - 8);
  v23 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v22 - v5;
  v7 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_10004C554();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10004C5A4();
  __chkstk_darwin(v14 - 8);
  v15 = sub_10004C754();
  __chkstk_darwin(v15 - 8);
  v16 = sub_10004C564();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v22 = sub_1000057AC(&qword_100070700, &unk_10004DB40);
  sub_10004C744();
  sub_10004C594();
  (*(v11 + 104))(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  sub_10004C584();
  (*(v17 + 56))(v9, 1, 1, v16);
  v28[0] = 17;
  v18 = sub_10004C1C4();
  v19 = *(*(v18 - 8) + 56);
  v19(v6, 1, 1, v18);
  v19(v23, 1, 1, v18);
  (*(v25 + 104))(v24, enum case for InputConnectionBehavior.default(_:), v26);
  sub_1000090DC();
  v20 = sub_10004C214();
  v27 = 0;

  sub_10004C204();

  return v20;
}

unint64_t sub_10000A604()
{
  result = qword_100070708;
  if (!qword_100070708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070708);
  }

  return result;
}

unint64_t sub_10000A658()
{
  result = qword_100070710;
  if (!qword_100070710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070710);
  }

  return result;
}

unint64_t sub_10000A6AC()
{
  result = qword_100070718;
  if (!qword_100070718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070718);
  }

  return result;
}

unint64_t sub_10000A710()
{
  result = qword_100070758;
  if (!qword_100070758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070758);
  }

  return result;
}

unint64_t sub_10000A768()
{
  result = qword_100070760;
  if (!qword_100070760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070760);
  }

  return result;
}

uint64_t sub_10000A7E0()
{
  v1 = *(v0 + 16);
  *v1 = CalLocationSuggestionsEnabled();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000A86C()
{
  CalSetLocationSuggestionsEnabled();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000A8D0()
{
  v0 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v0 - 8);
  v2 = &v12[-v1];
  v3 = sub_10004C554();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10004C5A4();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004C754();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10004C564();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  sub_10004C744();
  sub_10004C594();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  sub_10004C574();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_10004C4C4();
}

uint64_t sub_10000ABA4@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = sub_1000057AC(&qword_1000705B0, &unk_10004E990);
  __chkstk_darwin(v1 - 8);
  v21 = &v20 - v2;
  v3 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_10004C554();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004C5A4();
  __chkstk_darwin(v10 - 8);
  v11 = sub_10004C754();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10004C564();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  __chkstk_darwin(v14);
  sub_10004C744();
  sub_10004C594();
  (*(v7 + 104))(v9, enum case for LocalizedStringResource.BundleDescription.main(_:), v6);
  sub_10004C584();
  (*(v13 + 56))(v5, 1, 1, v12);
  if (qword_100070428 != -1)
  {
    swift_once();
  }

  v15 = sub_10004C3C4();
  v16 = sub_100005C58(v15, qword_100071B70);
  v17 = *(v15 - 8);
  v18 = v21;
  (*(v17 + 16))(v21, v16, v15);
  (*(v17 + 56))(v18, 0, 1, v15);
  sub_10004C544();
  return sub_10004C3E4();
}

uint64_t sub_10000AFB4()
{
  v0 = qword_100070748;

  return v0;
}

unint64_t sub_10000AFF0()
{
  result = qword_100070768;
  if (!qword_100070768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070768);
  }

  return result;
}

unint64_t sub_10000B048()
{
  result = qword_100070770;
  if (!qword_100070770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070770);
  }

  return result;
}

unint64_t sub_10000B0A0()
{
  result = qword_100070778;
  if (!qword_100070778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070778);
  }

  return result;
}

unint64_t sub_10000B0F8()
{
  result = qword_100070780;
  if (!qword_100070780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070780);
  }

  return result;
}

unint64_t sub_10000B150()
{
  result = qword_100070788;
  if (!qword_100070788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070788);
  }

  return result;
}

unint64_t sub_10000B1A8()
{
  result = qword_100070790;
  if (!qword_100070790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070790);
  }

  return result;
}

unint64_t sub_10000B200()
{
  result = qword_100070798;
  if (!qword_100070798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070798);
  }

  return result;
}

unint64_t sub_10000B258()
{
  result = qword_1000707A0;
  if (!qword_1000707A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000707A0);
  }

  return result;
}

uint64_t sub_10000B314(uint64_t a1)
{
  v2 = sub_10000A710();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10000B364()
{
  result = qword_1000707B8;
  if (!qword_1000707B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000707B8);
  }

  return result;
}

uint64_t sub_10000B3BC(uint64_t a1)
{
  v2 = sub_10000B258();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10000B40C()
{
  result = qword_1000707C0;
  if (!qword_1000707C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000707C0);
  }

  return result;
}

uint64_t sub_10000B4A4()
{
  v0 = sub_10004C554();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10004C5A4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10004C754();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10004C564();
  sub_100005C90(v6, qword_100071998);
  sub_100005C58(v6, qword_100071998);
  sub_10004C744();
  sub_10004C594();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10004C574();
}

uint64_t sub_10000B6A4()
{
  result = swift_getKeyPath();
  qword_1000719B0 = result;
  return result;
}

uint64_t sub_10000B6CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  sub_10004C7C4();
  v3[7] = sub_10004C7B4();
  v5 = sub_10004C7A4();
  v3[8] = v5;
  v3[9] = v4;

  return _swift_task_switch(sub_10000B768, v5, v4);
}

uint64_t sub_10000B768()
{
  sub_10004C1F4();
  v1 = *(v0 + 16);
  *(v0 + 24) = v1;
  *(v0 + 80) = v1;
  sub_10004C1F4();
  *(v0 + 113) = *(v0 + 112);
  if (qword_100070338 != -1)
  {
    swift_once();
  }

  v2 = qword_1000719B0;
  *(v0 + 88) = qword_1000719B0;

  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  v4 = sub_100005D70(&qword_100070828, &qword_100070830, &qword_10004E230, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v3 = v0;
  v3[1] = sub_100003440;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 113, v2, &type metadata for Bool, v4);
}

uint64_t (*sub_10000B8C8(uint64_t *a1))()
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
  *(v2 + 32) = sub_10004C1E4();
  return sub_100003760;
}

uint64_t (*sub_10000B93C(uint64_t *a1))()
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
  *(v2 + 32) = sub_10004C1E4();
  return sub_100005F04;
}

uint64_t sub_10000B9B0()
{
  if (qword_100070338 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10000BA10()
{
  result = qword_1000707D8;
  if (!qword_1000707D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000707D8);
  }

  return result;
}

unint64_t sub_10000BA68()
{
  result = qword_1000707E0;
  if (!qword_1000707E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000707E0);
  }

  return result;
}

uint64_t sub_10000BB28@<X0>(uint64_t a1@<X8>)
{
  if (qword_100070330 != -1)
  {
    swift_once();
  }

  v2 = sub_10004C564();
  v3 = sub_100005C58(v2, qword_100071998);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10000BBD0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002E00;

  return sub_10000B6CC(a1, v5, v4);
}

char *sub_10000BC7C@<X0>(char **a1@<X8>)
{
  result = sub_10000CC8C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000BCA4(uint64_t a1)
{
  v2 = sub_10000B40C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10000BCE4()
{
  result = qword_1000707E8;
  if (!qword_1000707E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000707E8);
  }

  return result;
}

unint64_t sub_10000BD3C()
{
  result = qword_1000707F0;
  if (!qword_1000707F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000707F0);
  }

  return result;
}

uint64_t sub_10000BD90(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005F00;

  return sub_10000D448();
}

uint64_t sub_10000BE34(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10000A768();
  *v4 = v2;
  v4[1] = sub_100003DE4;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10000BEE8()
{
  result = qword_1000707F8;
  if (!qword_1000707F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000707F8);
  }

  return result;
}

unint64_t sub_10000BF40()
{
  result = qword_100070800;
  if (!qword_100070800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070800);
  }

  return result;
}

uint64_t sub_10000BF94(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10000A768();
  *v5 = v2;
  v5[1] = sub_100005F1C;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10000C048(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10000A768();
  *v4 = v2;
  v4[1] = sub_100005F00;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10000C0FC()
{
  result = qword_100070808;
  if (!qword_100070808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070808);
  }

  return result;
}

unint64_t sub_10000C154()
{
  result = qword_100070810;
  if (!qword_100070810)
  {
    sub_100002C4C(&qword_100070818, qword_10004E050);
    sub_10000B200();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070810);
  }

  return result;
}

uint64_t sub_10000C1D8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10000B0F8();
  *v5 = v2;
  v5[1] = sub_100005EFC;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_10000C300@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v1 = sub_1000057AC(&qword_1000705C0, &unk_10004D5D0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - v3;
  v5 = sub_1000057AC(&qword_1000705C8, qword_10004EA10);
  v6 = *(v5 - 8);
  v19 = v5;
  v20 = v6;
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  swift_getKeyPath();
  sub_1000057AC(&qword_1000705D0, &unk_10004D5E0);
  v17._object = &protocol witness table for Text;
  sub_10000BD3C();
  sub_100005D70(&qword_1000705D8, &qword_1000705D0, &unk_10004D5E0, &protocol conformance descriptor for Label<A, B>);
  sub_10004C724();
  sub_10004C6A4();
  v9 = sub_100005D70(&qword_1000705E0, &qword_1000705C0, &unk_10004D5D0, &protocol conformance descriptor for ControlToggle<A>);
  sub_10004C6C4();

  (*(v2 + 8))(v4, v1);
  v10 = [objc_opt_self() mainBundle];
  v17._countAndFlagsBits = 0x8000000100057B60;
  v26._object = 0x8000000100057810;
  v26._countAndFlagsBits = 0xD000000000000019;
  v27.value._countAndFlagsBits = 0;
  v27.value._object = 0;
  v11.super.isa = v10;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v12 = sub_10004C534(v26, v27, v11, v28, 0xD000000000000055, v17);
  v14 = v13;

  v24 = v12;
  v25 = v14;
  v22 = v1;
  v23 = v9;
  swift_getOpaqueTypeConformance2();
  sub_100005DB8();
  v15 = v19;
  sub_10004C6B4();

  return (*(v20 + 8))(v8, v15);
}

uint64_t sub_10000C6D4()
{
  v0 = [objc_opt_self() mainBundle];
  v3._countAndFlagsBits = 0x8000000100057830;
  v4._object = 0x8000000100057810;
  v4._countAndFlagsBits = 0xD000000000000019;
  v5.value._countAndFlagsBits = 0;
  v5.value._object = 0;
  v1.super.isa = v0;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_10004C534(v4, v5, v1, v6, 0xD000000000000036, v3);

  sub_100005DB8();
  return sub_10004C6E4();
}

uint64_t sub_10000C7B8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10004C554();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004C5A4();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10004C754();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004C564();
  __chkstk_darwin(v8 - 8);
  sub_10004C744();
  sub_10004C594();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_10004C574();
  result = sub_10004C6D4();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_10000C9EC@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_10004C554();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004C5A4();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004C754();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10004C564();
  __chkstk_darwin(v9 - 8);
  sub_10004C744();
  sub_10004C594();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  sub_10004C574();
  result = sub_10004C6D4();
  *a2 = result;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v13;
  return result;
}

char *sub_10000CC8C()
{
  v0 = sub_1000057AC(&qword_100070568, &unk_10004E1F0);
  __chkstk_darwin(v0 - 8);
  v50 = &v35 - v1;
  v2 = sub_10004C494();
  v3 = *(v2 - 8);
  v53 = v2;
  v54 = v3;
  __chkstk_darwin(v2);
  v49 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000057AC(&unk_100070570, &unk_10004D430);
  v6 = __chkstk_darwin(v5 - 8);
  v48 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v52 = &v35 - v8;
  v9 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v9 - 8);
  v51 = &v35 - v10;
  v11 = sub_10004C554();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10004C5A4();
  __chkstk_darwin(v15 - 8);
  v16 = sub_10004C754();
  __chkstk_darwin(v16 - 8);
  v17 = sub_10004C564();
  v45 = v17;
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v35 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1000057AC(&qword_100070820, &qword_10004E208);
  sub_10004C744();
  sub_10004C594();
  v20 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v21 = *(v12 + 104);
  v36 = v11;
  v21(v14, enum case for LocalizedStringResource.BundleDescription.main(_:), v11);
  v37 = v21;
  v38 = v12 + 104;
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v21(v14, v20, v11);
  v22 = v51;
  sub_10004C574();
  v23 = *(v18 + 56);
  v44 = v18 + 56;
  v46 = v23;
  v23(v22, 0, 1, v17);
  v56[0] = 0;
  v24 = sub_10004C1C4();
  v39 = v24;
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v43 = v26;
  v47 = v25 + 56;
  v26(v52, 1, 1, v24);
  v26(v48, 1, 1, v24);
  v40 = enum case for InputConnectionBehavior.default(_:);
  v27 = *(v54 + 104);
  v54 += 104;
  v41 = v27;
  v28 = v49;
  v27(v49);
  sub_10000A710();
  v29 = v28;
  v48 = sub_10004C224();
  v42 = sub_1000057AC(&qword_100070588, &qword_10004E210);
  sub_10004C744();
  sub_10004C594();
  v30 = v36;
  v31 = v37;
  v37(v14, v20, v36);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v31(v14, v20, v30);
  v32 = v51;
  sub_10004C574();
  v46(v32, 0, 1, v45);
  v55[0] = 2;
  v33 = sub_10004C794();
  (*(*(v33 - 8) + 56))(v50, 1, 1, v33);
  v43(v52, 1, 1, v39);
  v41(v29, v40, v53);
  sub_10004C234();
  return v48;
}

uint64_t sub_10000D448()
{
  v1 = sub_10004C554();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_10004C5A4();
  v0[5] = swift_task_alloc();
  sub_10004C754();
  v0[6] = swift_task_alloc();
  sub_10004C564();
  v0[7] = swift_task_alloc();

  return _swift_task_switch(sub_10000D588, 0, 0);
}

uint64_t sub_10000D588()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v0[3];
  sub_1000057AC(&qword_1000707D0, qword_10004DDF0);
  sub_10004C744();
  sub_10004C594();
  (*(v3 + 104))(v1, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_10004C574();
  sub_100005D70(&qword_100070828, &qword_100070830, &qword_10004E230, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v4 = sub_10004C514();

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_10000D784()
{
  sub_100002C4C(&qword_1000705C8, qword_10004EA10);
  sub_100002C4C(&qword_1000705C0, &unk_10004D5D0);
  sub_100005D70(&qword_1000705E0, &qword_1000705C0, &unk_10004D5D0, &protocol conformance descriptor for ControlToggle<A>);
  swift_getOpaqueTypeConformance2();
  sub_100005DB8();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10000D87C()
{
  result = qword_100070848;
  if (!qword_100070848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070848);
  }

  return result;
}

unint64_t sub_10000D8D4()
{
  result = qword_100070850;
  if (!qword_100070850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070850);
  }

  return result;
}

id sub_10000D94C()
{
  result = [objc_opt_self() sharedPreferences];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 16);
    v4 = [result showWeekNumbers];

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

id sub_10000DA1C()
{
  result = [objc_opt_self() sharedPreferences];
  if (result)
  {
    v2 = result;
    [result setShowWeekNumbers:*(v0 + 16)];

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000DAB8()
{
  v0 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v0 - 8);
  v2 = &v12[-v1];
  v3 = sub_10004C554();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10004C5A4();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004C754();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10004C564();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  sub_10004C744();
  sub_10004C594();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  sub_10004C574();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_10004C4C4();
}

uint64_t sub_10000DD8C@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = sub_1000057AC(&qword_1000705B0, &unk_10004E990);
  __chkstk_darwin(v1 - 8);
  v21 = &v20 - v2;
  v3 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_10004C554();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004C5A4();
  __chkstk_darwin(v10 - 8);
  v11 = sub_10004C754();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10004C564();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  __chkstk_darwin(v14);
  sub_10004C744();
  sub_10004C594();
  (*(v7 + 104))(v9, enum case for LocalizedStringResource.BundleDescription.main(_:), v6);
  sub_10004C584();
  (*(v13 + 56))(v5, 1, 1, v12);
  if (qword_100070428 != -1)
  {
    swift_once();
  }

  v15 = sub_10004C3C4();
  v16 = sub_100005C58(v15, qword_100071B70);
  v17 = *(v15 - 8);
  v18 = v21;
  (*(v17 + 16))(v21, v16, v15);
  (*(v17 + 56))(v18, 0, 1, v15);
  sub_10004C544();
  return sub_10004C3E4();
}

uint64_t sub_10000E19C()
{
  v0 = qword_100070838;

  return v0;
}

unint64_t sub_10000E1D8()
{
  result = qword_100070858;
  if (!qword_100070858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070858);
  }

  return result;
}

unint64_t sub_10000E230()
{
  result = qword_100070860;
  if (!qword_100070860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070860);
  }

  return result;
}

unint64_t sub_10000E288()
{
  result = qword_100070868;
  if (!qword_100070868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070868);
  }

  return result;
}

unint64_t sub_10000E2E0()
{
  result = qword_100070870;
  if (!qword_100070870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070870);
  }

  return result;
}

unint64_t sub_10000E338()
{
  result = qword_100070878;
  if (!qword_100070878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070878);
  }

  return result;
}

unint64_t sub_10000E390()
{
  result = qword_100070880;
  if (!qword_100070880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070880);
  }

  return result;
}

unint64_t sub_10000E3E8()
{
  result = qword_100070888;
  if (!qword_100070888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070888);
  }

  return result;
}

unint64_t sub_10000E440()
{
  result = qword_100070890;
  if (!qword_100070890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070890);
  }

  return result;
}

uint64_t sub_10000E4FC(uint64_t a1)
{
  v2 = sub_10000D87C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10000E54C()
{
  result = qword_1000708A8;
  if (!qword_1000708A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000708A8);
  }

  return result;
}

uint64_t sub_10000E5A4(uint64_t a1)
{
  v2 = sub_10000E440();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10000E5F4()
{
  result = qword_1000708B0;
  if (!qword_1000708B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000708B0);
  }

  return result;
}

uint64_t sub_10000E68C()
{
  v0 = sub_10004C554();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10004C5A4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10004C754();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10004C564();
  sub_100005C90(v6, qword_1000719B8);
  sub_100005C58(v6, qword_1000719B8);
  sub_10004C744();
  sub_10004C594();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10004C574();
}

uint64_t sub_10000E88C()
{
  result = swift_getKeyPath();
  qword_1000719D0 = result;
  return result;
}

uint64_t sub_10000E8B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  sub_10004C7C4();
  v3[7] = sub_10004C7B4();
  v5 = sub_10004C7A4();
  v3[8] = v5;
  v3[9] = v4;

  return _swift_task_switch(sub_10000E950, v5, v4);
}

uint64_t sub_10000E950()
{
  sub_10004C1F4();
  v1 = *(v0 + 16);
  *(v0 + 24) = v1;
  *(v0 + 80) = v1;
  sub_10004C1F4();
  *(v0 + 113) = *(v0 + 112);
  if (qword_100070348 != -1)
  {
    swift_once();
  }

  v2 = qword_1000719D0;
  *(v0 + 88) = qword_1000719D0;

  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  v4 = sub_100005D70(&qword_100070918, &qword_100070920, &qword_10004E958, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v3 = v0;
  v3[1] = sub_100003440;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 113, v2, &type metadata for Bool, v4);
}

uint64_t (*sub_10000EAB0(uint64_t *a1))()
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
  *(v2 + 32) = sub_10004C1E4();
  return sub_100003760;
}

uint64_t (*sub_10000EB24(uint64_t *a1))()
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
  *(v2 + 32) = sub_10004C1E4();
  return sub_100005F04;
}

uint64_t sub_10000EB98()
{
  if (qword_100070348 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10000EBF8()
{
  result = qword_1000708C8;
  if (!qword_1000708C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000708C8);
  }

  return result;
}

unint64_t sub_10000EC50()
{
  result = qword_1000708D0;
  if (!qword_1000708D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000708D0);
  }

  return result;
}

uint64_t sub_10000ED10@<X0>(uint64_t a1@<X8>)
{
  if (qword_100070340 != -1)
  {
    swift_once();
  }

  v2 = sub_10004C564();
  v3 = sub_100005C58(v2, qword_1000719B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10000EDB8(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002E00;

  return sub_10000E8B4(a1, v5, v4);
}

char *sub_10000EE64@<X0>(char **a1@<X8>)
{
  result = sub_10000FE38();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000EE8C(uint64_t a1)
{
  v2 = sub_10000E5F4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10000EECC()
{
  result = qword_1000708D8;
  if (!qword_1000708D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000708D8);
  }

  return result;
}

unint64_t sub_10000EF24()
{
  result = qword_1000708E0;
  if (!qword_1000708E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000708E0);
  }

  return result;
}

uint64_t sub_10000EF78(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005F00;

  return sub_1000105F4();
}

uint64_t sub_10000F01C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10000D8D4();
  *v4 = v2;
  v4[1] = sub_100003DE4;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10000F0D0()
{
  result = qword_1000708E8;
  if (!qword_1000708E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000708E8);
  }

  return result;
}

unint64_t sub_10000F128()
{
  result = qword_1000708F0;
  if (!qword_1000708F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000708F0);
  }

  return result;
}

uint64_t sub_10000F17C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10000D8D4();
  *v5 = v2;
  v5[1] = sub_100005F1C;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10000F230(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10000D8D4();
  *v4 = v2;
  v4[1] = sub_100005F00;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10000F2E4()
{
  result = qword_1000708F8;
  if (!qword_1000708F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000708F8);
  }

  return result;
}

unint64_t sub_10000F33C()
{
  result = qword_100070900;
  if (!qword_100070900)
  {
    sub_100002C4C(&qword_100070908, qword_10004E7B0);
    sub_10000E3E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070900);
  }

  return result;
}

uint64_t sub_10000F3C0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10000E2E0();
  *v5 = v2;
  v5[1] = sub_100005EFC;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_10000F4A4@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v1 = sub_1000057AC(&qword_1000705C0, &unk_10004D5D0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - v3;
  v5 = sub_1000057AC(&qword_1000705C8, qword_10004EA10);
  v6 = *(v5 - 8);
  v19 = v5;
  v20 = v6;
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  swift_getKeyPath();
  sub_1000057AC(&qword_1000705D0, &unk_10004D5E0);
  v17._object = &protocol witness table for Text;
  sub_10000EF24();
  sub_100005D70(&qword_1000705D8, &qword_1000705D0, &unk_10004D5E0, &protocol conformance descriptor for Label<A, B>);
  sub_10004C724();
  sub_10004C6A4();
  v9 = sub_100005D70(&qword_1000705E0, &qword_1000705C0, &unk_10004D5D0, &protocol conformance descriptor for ControlToggle<A>);
  sub_10004C6C4();

  (*(v2 + 8))(v4, v1);
  v10 = [objc_opt_self() mainBundle];
  v17._countAndFlagsBits = 0x8000000100057F00;
  v26._countAndFlagsBits = 0xD00000000000001DLL;
  v26._object = 0x8000000100057EE0;
  v27.value._countAndFlagsBits = 0;
  v27.value._object = 0;
  v11.super.isa = v10;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v12 = sub_10004C534(v26, v27, v11, v28, 0xD00000000000004CLL, v17);
  v14 = v13;

  v24 = v12;
  v25 = v14;
  v22 = v1;
  v23 = v9;
  swift_getOpaqueTypeConformance2();
  sub_100005DB8();
  v15 = v19;
  sub_10004C6B4();

  return (*(v20 + 8))(v8, v15);
}

uint64_t sub_10000F880()
{
  v0 = [objc_opt_self() mainBundle];
  v3._countAndFlagsBits = 0x8000000100057C00;
  v4._object = 0x8000000100057BE0;
  v4._countAndFlagsBits = 0xD000000000000011;
  v5.value._countAndFlagsBits = 0;
  v5.value._object = 0;
  v1.super.isa = v0;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_10004C534(v4, v5, v1, v6, 0xD000000000000024, v3);

  sub_100005DB8();
  return sub_10004C6E4();
}

uint64_t sub_10000F964@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10004C554();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004C5A4();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10004C754();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004C564();
  __chkstk_darwin(v8 - 8);
  sub_10004C744();
  sub_10004C594();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_10004C574();
  result = sub_10004C6D4();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_10000FB98@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_10004C554();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004C5A4();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004C754();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10004C564();
  __chkstk_darwin(v9 - 8);
  sub_10004C744();
  sub_10004C594();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  sub_10004C574();
  result = sub_10004C6D4();
  *a2 = result;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v13;
  return result;
}

char *sub_10000FE38()
{
  v0 = sub_1000057AC(&qword_100070568, &unk_10004E1F0);
  __chkstk_darwin(v0 - 8);
  v50 = &v35 - v1;
  v2 = sub_10004C494();
  v3 = *(v2 - 8);
  v53 = v2;
  v54 = v3;
  __chkstk_darwin(v2);
  v49 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000057AC(&unk_100070570, &unk_10004D430);
  v6 = __chkstk_darwin(v5 - 8);
  v48 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v52 = &v35 - v8;
  v9 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v9 - 8);
  v51 = &v35 - v10;
  v11 = sub_10004C554();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10004C5A4();
  __chkstk_darwin(v15 - 8);
  v16 = sub_10004C754();
  __chkstk_darwin(v16 - 8);
  v17 = sub_10004C564();
  v45 = v17;
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v35 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1000057AC(&qword_100070910, &unk_10004E930);
  sub_10004C744();
  sub_10004C594();
  v20 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v21 = *(v12 + 104);
  v36 = v11;
  v21(v14, enum case for LocalizedStringResource.BundleDescription.main(_:), v11);
  v37 = v21;
  v38 = v12 + 104;
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v21(v14, v20, v11);
  v22 = v51;
  sub_10004C574();
  v23 = *(v18 + 56);
  v44 = v18 + 56;
  v46 = v23;
  v23(v22, 0, 1, v17);
  v56[0] = 0;
  v24 = sub_10004C1C4();
  v39 = v24;
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v43 = v26;
  v47 = v25 + 56;
  v26(v52, 1, 1, v24);
  v26(v48, 1, 1, v24);
  v40 = enum case for InputConnectionBehavior.default(_:);
  v27 = *(v54 + 104);
  v54 += 104;
  v41 = v27;
  v28 = v49;
  v27(v49);
  sub_10000D87C();
  v29 = v28;
  v48 = sub_10004C224();
  v42 = sub_1000057AC(&qword_100070588, &qword_10004E210);
  sub_10004C744();
  sub_10004C594();
  v30 = v36;
  v31 = v37;
  v37(v14, v20, v36);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v31(v14, v20, v30);
  v32 = v51;
  sub_10004C574();
  v46(v32, 0, 1, v45);
  v55[0] = 2;
  v33 = sub_10004C794();
  (*(*(v33 - 8) + 56))(v50, 1, 1, v33);
  v43(v52, 1, 1, v39);
  v41(v29, v40, v53);
  sub_10004C234();
  return v48;
}

uint64_t sub_1000105F4()
{
  v1 = sub_10004C554();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_10004C5A4();
  v0[5] = swift_task_alloc();
  sub_10004C754();
  v0[6] = swift_task_alloc();
  sub_10004C564();
  v0[7] = swift_task_alloc();

  return _swift_task_switch(sub_100010734, 0, 0);
}

uint64_t sub_100010734()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v0[3];
  sub_1000057AC(&qword_1000708C0, qword_10004E550);
  sub_10004C744();
  sub_10004C594();
  (*(v3 + 104))(v1, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_10004C574();
  sub_100005D70(&qword_100070918, &qword_100070920, &qword_10004E958, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v4 = sub_10004C514();

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_100010940()
{
  v0 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_10004C554();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004C5A4();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10004C754();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004C564();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_10004C4D4();
  sub_100005C90(v10, qword_1000719D8);
  sub_100005C58(v10, qword_1000719D8);
  sub_10004C744();
  sub_10004C594();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_10004C584();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_10004C4C4();
}

uint64_t sub_100010C1C()
{
  v0 = sub_1000057AC(&qword_1000705B0, &unk_10004E990);
  __chkstk_darwin(v0 - 8);
  v85 = &v58 - v1;
  v2 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v2 - 8);
  v91 = &v58 - v3;
  v4 = sub_10004C554();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004C5A4();
  __chkstk_darwin(v8 - 8);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10004C754();
  __chkstk_darwin(v11 - 8);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10004C564();
  v75 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v90 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v58 - v17;
  sub_1000057AC(&qword_100070A90, &unk_10004F400);
  v19 = sub_1000057AC(&qword_100070A98, &qword_100054800);
  v20 = (*(*(v19 - 8) + 80) + 32) & ~*(*(v19 - 8) + 80);
  v84 = *(*(v19 - 8) + 72);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10004EA30;
  v66 = v21;
  v89 = v19;
  v74 = *(v19 + 48);
  v86 = v21 + v20;
  *(v21 + v20) = 0;
  sub_10004C744();
  sub_10004C594();
  v22 = *(v5 + 104);
  v92 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v88 = v4;
  v67 = v5 + 104;
  v87 = v22;
  (v22)(v7);
  v60 = v13;
  v61 = v10;
  v62 = v7;
  sub_10004C574();
  v23 = *(v75 + 56);
  v81 = v14;
  v82 = v23;
  v83 = v75 + 56;
  v23(v91, 1, 1, v14);
  if (qword_100070428 != -1)
  {
    swift_once();
  }

  v24 = sub_10004C3C4();
  v25 = sub_100005C58(v24, qword_100071B70);
  v26 = *(v24 - 8);
  v27 = *(v26 + 16);
  v77 = v26 + 16;
  v79 = v25;
  v80 = v27;
  v28 = v85;
  v27(v85, v25, v24);
  v29 = *(v26 + 56);
  v78 = v26 + 56;
  v29(v28, 0, 1, v24);
  v71 = v29;
  sub_10004C544();
  v30 = v86;
  v31 = v91;
  sub_10004C3E4();
  v64 = v30 + v84;
  v65 = *(v89 + 48);
  *v64 = 1;
  sub_10004C744();
  sub_10004C594();
  v32 = v62;
  v76 = v18;
  v87(v62, v92, v88);
  sub_10004C574();
  v82(v31, 1, 1, v81);
  v69 = v24;
  v80(v28, v79, v24);
  v29(v28, 0, 1, v24);
  v70 = sub_1000057AC(&qword_100070AA0, &unk_10004F410);
  v33 = *(v75 + 72);
  v34 = *(v75 + 80);
  v74 = ((v34 + 32) & ~v34) + 2 * v33;
  v75 = v34;
  v73 = (v34 + 32) & ~v34;
  v68 = v33;
  v35 = swift_allocObject();
  v72 = xmmword_10004EA40;
  v63 = v35;
  *(v35 + 16) = xmmword_10004EA40;
  sub_10004C744();
  sub_10004C594();
  v36 = v92;
  v37 = v88;
  v38 = v87;
  v87(v32, v92, v88);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v38(v32, v36, v37);
  v39 = v38;
  sub_10004C574();
  sub_10004C544();
  v40 = v91;
  sub_10004C3E4();
  v65 = 2 * v84;
  v63 = (v86 + 2 * v84);
  v64 = *(v89 + 48);
  *v63 = 2;
  sub_10004C744();
  sub_10004C594();
  v41 = v88;
  v39(v32, v92, v88);
  sub_10004C574();
  v82(v40, 1, 1, v81);
  v42 = v69;
  v80(v28, v79, v69);
  v71(v28, 0, 1, v42);
  v59 = swift_allocObject();
  *(v59 + 16) = v72;
  sub_10004C744();
  sub_10004C594();
  v43 = v92;
  v44 = v87;
  v87(v32, v92, v41);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v44(v32, v43, v41);
  sub_10004C574();
  sub_10004C544();
  v45 = v91;
  v46 = v85;
  sub_10004C3E4();
  v64 = v86 + v65 + v84;
  v65 = *(v89 + 48);
  *v64 = 3;
  sub_10004C744();
  sub_10004C594();
  v44(v32, v43, v88);
  sub_10004C574();
  v82(v45, 1, 1, v81);
  v47 = v69;
  v80(v46, v79, v69);
  v71(v46, 0, 1, v47);
  *(swift_allocObject() + 16) = v72;
  sub_10004C744();
  sub_10004C594();
  v48 = v92;
  v49 = v88;
  v50 = v87;
  v87(v32, v92, v88);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v50(v32, v48, v49);
  sub_10004C574();
  sub_10004C544();
  v51 = v91;
  v52 = v85;
  sub_10004C3E4();
  v65 = v86 + 4 * v84;
  v84 = *(v89 + 48);
  *v65 = 4;
  sub_10004C744();
  sub_10004C594();
  v53 = v87;
  v87(v32, v92, v49);
  sub_10004C574();
  v82(v51, 1, 1, v81);
  v54 = v69;
  v80(v52, v79, v69);
  v71(v52, 0, 1, v54);
  *(swift_allocObject() + 16) = v72;
  sub_10004C744();
  sub_10004C594();
  v55 = v92;
  v53(v32, v92, v49);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v53(v32, v55, v49);
  sub_10004C574();
  sub_10004C544();
  sub_10004C3E4();
  v56 = sub_10004A5FC(v66);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1000719F0 = v56;
  return result;
}

uint64_t sub_100011DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000057AC(&qword_100070AB0, &unk_10004F490);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  if (qword_100070358 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = qword_1000719F0;
  if (*(qword_1000719F0 + 16) && (v11 = sub_100048684(a1), (v12 & 1) != 0))
  {
    v13 = v11;
    v14 = *(v10 + 56);
    v15 = sub_10004C414();
    v16 = *(v15 - 8);
    (*(v16 + 16))(v6, v14 + *(v16 + 72) * v13, v15);
    (*(v16 + 56))(v6, 0, 1, v15);
  }

  else
  {
    v15 = sub_10004C414();
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  }

  sub_10004C414();
  if ((*(*(v15 - 8) + 48))(v6, 1, v15))
  {
    sub_1000159C4(v6, &qword_100070AB0, &unk_10004F490);
    swift_endAccess();
    v17 = sub_10004C564();
    v18 = *(v17 - 8);
    (*(v18 + 56))(v9, 1, 1, v17);
    sub_10004C544();
    result = (*(v18 + 48))(v9, 1, v17);
    if (result != 1)
    {
      return sub_1000159C4(v9, &qword_100070E80, &qword_10004E200);
    }
  }

  else
  {
    sub_10004C3D4();
    sub_1000159C4(v6, &qword_100070AB0, &unk_10004F490);
    swift_endAccess();
    v20 = sub_10004C564();
    v21 = *(v20 - 8);
    (*(v21 + 56))(v9, 0, 1, v20);
    return (*(v21 + 32))(a2, v9, v20);
  }

  return result;
}

unint64_t sub_100012190()
{
  result = qword_100070938;
  if (!qword_100070938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070938);
  }

  return result;
}

Swift::Int sub_1000121E4()
{
  sub_10004C8A4();
  sub_10004C784();

  return sub_10004C8C4();
}

uint64_t sub_1000122D0(uint64_t a1)
{
  sub_10004C784();
}

Swift::Int sub_1000123A8(uint64_t a1)
{
  sub_10004C8A4();
  sub_10004C784();

  return sub_10004C8C4();
}

unint64_t sub_100012490@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100014E80(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1000124C8()
{
  result = qword_100070940;
  if (!qword_100070940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070940);
  }

  return result;
}

unint64_t sub_100012520()
{
  result = qword_100070948;
  if (!qword_100070948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070948);
  }

  return result;
}

unint64_t sub_100012578()
{
  result = qword_100070950;
  if (!qword_100070950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070950);
  }

  return result;
}

void sub_1000125CC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000073;
  v4 = 0x746E6576456C6C61;
  v5 = 0xD000000000000010;
  v6 = 0x8000000100054AC0;
  v7 = 0x8000000100054AE0;
  if (v2 != 3)
  {
    v7 = 0x8000000100054B00;
  }

  if (v2 != 2)
  {
    v5 = 0xD000000000000011;
    v6 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x8000000100054AA0;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v8;
  a1[1] = v3;
}

unint64_t sub_100012678()
{
  result = qword_100070958;
  if (!qword_100070958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070958);
  }

  return result;
}

unint64_t sub_1000126D0()
{
  result = qword_100070960;
  if (!qword_100070960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070960);
  }

  return result;
}

unint64_t sub_100012728()
{
  result = qword_100070968;
  if (!qword_100070968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070968);
  }

  return result;
}

unint64_t sub_100012780()
{
  result = qword_100070970;
  if (!qword_100070970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070970);
  }

  return result;
}

unint64_t sub_100012838()
{
  result = qword_100070978;
  if (!qword_100070978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070978);
  }

  return result;
}

uint64_t sub_10001288C(uint64_t a1)
{
  v2 = sub_100012838();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000128DC()
{
  result = qword_100070980;
  if (!qword_100070980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070980);
  }

  return result;
}

unint64_t sub_100012934()
{
  result = qword_100070988;
  if (!qword_100070988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070988);
  }

  return result;
}

unint64_t sub_10001298C()
{
  result = qword_100070990;
  if (!qword_100070990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070990);
  }

  return result;
}

uint64_t sub_1000129E0()
{
  if (qword_100070358 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_100012A58(uint64_t a1)
{
  v2 = sub_100012780();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100012AF8()
{
  result = qword_1000709A8;
  if (!qword_1000709A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000709A8);
  }

  return result;
}

unint64_t sub_100012B50()
{
  result = qword_1000709B0;
  if (!qword_1000709B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000709B0);
  }

  return result;
}

uint64_t sub_100012BC8()
{
  v1 = CalDaysToSync();
  if (v1 == 183)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  if (v1 == 92)
  {
    v3 = 3;
  }

  else
  {
    v3 = v2;
  }

  if (v1 == 31)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  if (v1 == 14)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  if (v1 <= 91)
  {
    v3 = v5;
  }

  **(v0 + 16) = v3;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100012C8C()
{
  CalSetDaysToSync();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100012CFC()
{
  v0 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v0 - 8);
  v2 = &v12[-v1];
  v3 = sub_10004C554();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10004C5A4();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004C754();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10004C564();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  sub_10004C744();
  sub_10004C594();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  sub_10004C574();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_10004C4C4();
}

uint64_t sub_100012FD0@<X0>(uint64_t a1@<X8>)
{
  v19[0] = a1;
  v1 = sub_1000057AC(&qword_1000705B0, &unk_10004E990);
  __chkstk_darwin(v1 - 8);
  v3 = v19 - v2;
  v4 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v4 - 8);
  v6 = v19 - v5;
  v7 = sub_10004C554();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10004C5A4();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10004C754();
  __chkstk_darwin(v12 - 8);
  v13 = sub_10004C564();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  sub_10004C744();
  sub_10004C594();
  (*(v8 + 104))(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v7);
  sub_10004C574();
  (*(v14 + 56))(v6, 1, 1, v13);
  if (qword_100070428 != -1)
  {
    swift_once();
  }

  v15 = sub_10004C3C4();
  v16 = sub_100005C58(v15, qword_100071B70);
  v17 = *(v15 - 8);
  (*(v17 + 16))(v3, v16, v15);
  (*(v17 + 56))(v3, 0, 1, v15);
  return sub_10004C404();
}

uint64_t sub_1000133A4()
{
  v0 = qword_100070928;

  return v0;
}

unint64_t sub_1000133E0()
{
  result = qword_1000709B8;
  if (!qword_1000709B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000709B8);
  }

  return result;
}

unint64_t sub_100013438()
{
  result = qword_1000709C0;
  if (!qword_1000709C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000709C0);
  }

  return result;
}

unint64_t sub_100013490()
{
  result = qword_1000709C8;
  if (!qword_1000709C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000709C8);
  }

  return result;
}

unint64_t sub_1000134E8()
{
  result = qword_1000709D0;
  if (!qword_1000709D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000709D0);
  }

  return result;
}

unint64_t sub_100013540()
{
  result = qword_1000709D8;
  if (!qword_1000709D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000709D8);
  }

  return result;
}

unint64_t sub_100013598()
{
  result = qword_1000709E0;
  if (!qword_1000709E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000709E0);
  }

  return result;
}

unint64_t sub_1000135F0()
{
  result = qword_1000709E8;
  if (!qword_1000709E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000709E8);
  }

  return result;
}

unint64_t sub_100013648()
{
  result = qword_1000709F0;
  if (!qword_1000709F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000709F0);
  }

  return result;
}

uint64_t sub_100013704(uint64_t a1)
{
  v2 = sub_100012AF8();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100013754()
{
  result = qword_100070A08;
  if (!qword_100070A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070A08);
  }

  return result;
}

uint64_t sub_1000137AC(uint64_t a1)
{
  v2 = sub_100013648();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000137FC()
{
  result = qword_100070A10;
  if (!qword_100070A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070A10);
  }

  return result;
}

uint64_t sub_100013894()
{
  v0 = sub_10004C554();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10004C5A4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10004C754();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10004C564();
  sub_100005C90(v6, qword_1000719F8);
  sub_100005C58(v6, qword_1000719F8);
  sub_10004C744();
  sub_10004C594();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10004C574();
}

uint64_t sub_100013A94()
{
  result = swift_getKeyPath();
  qword_100071A10 = result;
  return result;
}

uint64_t sub_100013ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  sub_10004C7C4();
  v3[7] = sub_10004C7B4();
  v5 = sub_10004C7A4();
  v3[8] = v5;
  v3[9] = v4;

  return _swift_task_switch(sub_100013B58, v5, v4);
}

uint64_t sub_100013B58()
{
  sub_10004C1F4();
  v1 = v0[2];
  v0[3] = v1;
  v0[10] = v1;
  sub_10004C1F4();
  if (qword_100070368 != -1)
  {
    swift_once();
  }

  v2 = qword_100071A10;
  v0[11] = qword_100071A10;

  v3 = swift_task_alloc();
  v0[12] = v3;
  v4 = sub_100005D70(&qword_100070A80, &qword_100070A88, &qword_10004F3C0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v3 = v0;
  v3[1] = sub_100003440;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 14, v2, &type metadata for SettingsSyncDurationType, v4);
}

uint64_t (*sub_100013CAC(uint64_t *a1))()
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
  *(v2 + 32) = sub_10004C1E4();
  return sub_100003760;
}

uint64_t (*sub_100013D20(uint64_t *a1))()
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
  *(v2 + 32) = sub_10004C1E4();
  return sub_100005F04;
}

uint64_t sub_100013D94()
{
  if (qword_100070368 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100013DF4()
{
  result = qword_100070A28;
  if (!qword_100070A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070A28);
  }

  return result;
}

unint64_t sub_100013E4C()
{
  result = qword_100070A30;
  if (!qword_100070A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070A30);
  }

  return result;
}

uint64_t sub_100013F68(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002E00;

  return sub_100013ABC(a1, v5, v4);
}

uint64_t sub_100014014@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100014ECC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10001403C(uint64_t a1)
{
  v2 = sub_1000137FC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10001407C()
{
  result = qword_100070A38;
  if (!qword_100070A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070A38);
  }

  return result;
}

unint64_t sub_1000140D4()
{
  result = qword_100070A40;
  if (!qword_100070A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070A40);
  }

  return result;
}

uint64_t sub_100014128(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005F00;

  return sub_100015628();
}

uint64_t sub_1000141CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100012B50();
  *v4 = v2;
  v4[1] = sub_100003DE4;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100014280()
{
  result = qword_100070A48;
  if (!qword_100070A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070A48);
  }

  return result;
}

unint64_t sub_1000142D8()
{
  result = qword_100070A50;
  if (!qword_100070A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070A50);
  }

  return result;
}

uint64_t sub_10001432C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100012B50();
  *v5 = v2;
  v5[1] = sub_100005F1C;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1000143E0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100012B50();
  *v4 = v2;
  v4[1] = sub_100005F00;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100014494()
{
  result = qword_100070A58;
  if (!qword_100070A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070A58);
  }

  return result;
}

unint64_t sub_1000144EC()
{
  result = qword_100070A60;
  if (!qword_100070A60)
  {
    sub_100002C4C(&qword_100070A68, qword_10004F1F0);
    sub_1000135F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070A60);
  }

  return result;
}

uint64_t sub_100014570(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000134E8();
  *v5 = v2;
  v5[1] = sub_100005EFC;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t getEnumTagSinglePayload for SettingsSyncDurationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SettingsSyncDurationType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000147E8@<X0>(uint64_t a1@<X8>)
{
  v10[1] = a1;
  v1 = sub_10004C704();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1000057AC(&qword_100070ED0, &qword_1000507C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v10 - v4;
  v6 = [objc_opt_self() mainBundle];
  v9._countAndFlagsBits = 0x8000000100057F90;
  v11._object = 0x8000000100057F70;
  v11._countAndFlagsBits = 0xD000000000000014;
  v12.value._countAndFlagsBits = 0;
  v12.value._object = 0;
  v7.super.isa = v6;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  sub_10004C534(v11, v12, v7, v13, 0xD00000000000002CLL, v9);

  swift_getKeyPath();
  sub_10004C6F4();
  sub_100012838();
  sub_100015970();
  sub_1000140D4();
  sub_10004C714();
  sub_10004C6A4();
  sub_100005D70(&qword_100070EE0, &qword_100070ED0, &qword_1000507C0, &protocol conformance descriptor for ControlPicker<A>);
  sub_10004C6C4();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100014AEC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10004C554();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004C5A4();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10004C754();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004C564();
  __chkstk_darwin(v8 - 8);
  sub_10004C744();
  sub_10004C594();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_10004C574();
  result = sub_10004C6D4();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_100014D20@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10004C564();
  __chkstk_darwin(v4 - 8);
  sub_100011DAC(*a1, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_10004C6D4();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

uint64_t sub_100014DB8(unsigned __int8 *a1)
{
  v2 = sub_10004C564();
  __chkstk_darwin(v2 - 8);
  sub_100011DAC(*a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10004C6D4();
  return sub_10004C734();
}

unint64_t sub_100014E80(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10006D350;
  v6._object = a2;
  v4 = sub_10004C834(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100014ECC()
{
  v0 = sub_10004C494();
  v1 = *(v0 - 8);
  v52 = v0;
  v53 = v1;
  __chkstk_darwin(v0);
  v51 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000057AC(&unk_100070570, &unk_10004D430);
  v4 = __chkstk_darwin(v3 - 8);
  v50 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v48 = &v34 - v6;
  v7 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v7 - 8);
  v49 = &v34 - v8;
  v9 = sub_10004C554();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004C5A4();
  __chkstk_darwin(v13 - 8);
  v14 = sub_10004C754();
  __chkstk_darwin(v14 - 8);
  v15 = sub_10004C564();
  v46 = v15;
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v34 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1000057AC(&qword_100070A70, &qword_10004F398);
  sub_10004C744();
  sub_10004C594();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v10 + 104);
  v35 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v36 = v9;
  v19(v12, enum case for LocalizedStringResource.BundleDescription.main(_:), v9);
  v37 = v19;
  v38 = v10 + 104;
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v19(v12, v18, v9);
  v20 = v49;
  sub_10004C574();
  v21 = *(v16 + 56);
  v45 = v16 + 56;
  v47 = v21;
  v21(v20, 0, 1, v15);
  v55[0] = 0;
  v22 = sub_10004C1C4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v40 = v24;
  v41 = v23 + 56;
  v25 = v48;
  v24(v48, 1, 1, v22);
  v24(v50, 1, 1, v22);
  v42 = enum case for InputConnectionBehavior.default(_:);
  v26 = *(v53 + 104);
  v53 += 104;
  v43 = v26;
  v26(v51);
  sub_100012AF8();
  v27 = v25;
  v44 = sub_10004C224();
  v39 = sub_1000057AC(&qword_100070A78, &qword_10004F3A0);
  sub_10004C744();
  sub_10004C594();
  v28 = v35;
  v29 = v36;
  v30 = v37;
  v37(v12, v35, v36);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v30(v12, v28, v29);
  v31 = v49;
  sub_10004C574();
  v47(v31, 0, 1, v46);
  v54[0] = 5;
  v32 = v40;
  v40(v27, 1, 1, v22);
  v32(v50, 1, 1, v22);
  v43(v51, v42, v52);
  sub_100012838();
  sub_10004C214();
  return v44;
}

uint64_t sub_100015628()
{
  v1 = sub_10004C554();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_10004C5A4();
  v0[5] = swift_task_alloc();
  sub_10004C754();
  v0[6] = swift_task_alloc();
  sub_10004C564();
  v0[7] = swift_task_alloc();

  return _swift_task_switch(sub_100015768, 0, 0);
}

uint64_t sub_100015768()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v0[3];
  sub_1000057AC(&qword_100070A20, qword_10004EF90);
  sub_10004C744();
  sub_10004C594();
  (*(v3 + 104))(v1, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_10004C574();
  sub_100005D70(&qword_100070A80, &qword_100070A88, &qword_10004F3C0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  sub_100012838();
  v4 = sub_10004C504();

  v5 = v0[1];

  return v5(v4);
}

unint64_t sub_100015970()
{
  result = qword_100070AA8;
  if (!qword_100070AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070AA8);
  }

  return result;
}

uint64_t sub_1000159C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000057AC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100015A24()
{
  sub_100002C4C(&qword_100070ED0, &qword_1000507C0);
  sub_100005D70(&qword_100070EE0, &qword_100070ED0, &qword_1000507C0, &protocol conformance descriptor for ControlPicker<A>);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100015AD8()
{
  result = qword_100070AC8;
  if (!qword_100070AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070AC8);
  }

  return result;
}

unint64_t sub_100015B30()
{
  result = qword_100070AD0;
  if (!qword_100070AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070AD0);
  }

  return result;
}

id sub_100015BA8()
{
  result = [objc_opt_self() sharedPreferences];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 16);
    v4 = [result weekViewStartsOnToday];

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

id sub_100015C78()
{
  result = [objc_opt_self() sharedPreferences];
  if (result)
  {
    v2 = result;
    [result setWeekViewStartsOnToday:*(v0 + 16)];

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100015D14()
{
  v0 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v0 - 8);
  v2 = &v12[-v1];
  v3 = sub_10004C554();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10004C5A4();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004C754();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10004C564();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  sub_10004C744();
  sub_10004C594();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  sub_10004C574();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_10004C4C4();
}

uint64_t sub_100015FE8@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = sub_1000057AC(&qword_1000705B0, &unk_10004E990);
  __chkstk_darwin(v1 - 8);
  v21 = &v20 - v2;
  v3 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_10004C554();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004C5A4();
  __chkstk_darwin(v10 - 8);
  v11 = sub_10004C754();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10004C564();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  __chkstk_darwin(v14);
  sub_10004C744();
  sub_10004C594();
  (*(v7 + 104))(v9, enum case for LocalizedStringResource.BundleDescription.main(_:), v6);
  sub_10004C584();
  (*(v13 + 56))(v5, 1, 1, v12);
  if (qword_100070428 != -1)
  {
    swift_once();
  }

  v15 = sub_10004C3C4();
  v16 = sub_100005C58(v15, qword_100071B70);
  v17 = *(v15 - 8);
  v18 = v21;
  (*(v17 + 16))(v21, v16, v15);
  (*(v17 + 56))(v18, 0, 1, v15);
  sub_10004C544();
  return sub_10004C3E4();
}

uint64_t sub_1000163F8()
{
  v0 = qword_100070AB8;

  return v0;
}

unint64_t sub_100016434()
{
  result = qword_100070AD8;
  if (!qword_100070AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070AD8);
  }

  return result;
}

unint64_t sub_10001648C()
{
  result = qword_100070AE0;
  if (!qword_100070AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070AE0);
  }

  return result;
}

unint64_t sub_1000164E4()
{
  result = qword_100070AE8;
  if (!qword_100070AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070AE8);
  }

  return result;
}

unint64_t sub_10001653C()
{
  result = qword_100070AF0;
  if (!qword_100070AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070AF0);
  }

  return result;
}

unint64_t sub_100016594()
{
  result = qword_100070AF8;
  if (!qword_100070AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070AF8);
  }

  return result;
}

unint64_t sub_1000165EC()
{
  result = qword_100070B00;
  if (!qword_100070B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070B00);
  }

  return result;
}

unint64_t sub_100016644()
{
  result = qword_100070B08;
  if (!qword_100070B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070B08);
  }

  return result;
}

unint64_t sub_10001669C()
{
  result = qword_100070B10;
  if (!qword_100070B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070B10);
  }

  return result;
}

uint64_t sub_100016758(uint64_t a1)
{
  v2 = sub_100015AD8();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000167A8()
{
  result = qword_100070B28;
  if (!qword_100070B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070B28);
  }

  return result;
}

uint64_t sub_100016800(uint64_t a1)
{
  v2 = sub_10001669C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100016850()
{
  result = qword_100070B30;
  if (!qword_100070B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070B30);
  }

  return result;
}

uint64_t sub_1000168E8()
{
  v0 = sub_10004C554();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10004C5A4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10004C754();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10004C564();
  sub_100005C90(v6, qword_100071A18);
  sub_100005C58(v6, qword_100071A18);
  sub_10004C744();
  sub_10004C594();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10004C574();
}

uint64_t sub_100016AE8()
{
  result = swift_getKeyPath();
  qword_100071A30 = result;
  return result;
}

uint64_t sub_100016B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  sub_10004C7C4();
  v3[7] = sub_10004C7B4();
  v5 = sub_10004C7A4();
  v3[8] = v5;
  v3[9] = v4;

  return _swift_task_switch(sub_100016BAC, v5, v4);
}

uint64_t sub_100016BAC()
{
  sub_10004C1F4();
  v1 = *(v0 + 16);
  *(v0 + 24) = v1;
  *(v0 + 80) = v1;
  sub_10004C1F4();
  *(v0 + 113) = *(v0 + 112);
  if (qword_100070378 != -1)
  {
    swift_once();
  }

  v2 = qword_100071A30;
  *(v0 + 88) = qword_100071A30;

  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  v4 = sub_100005D70(&qword_100070B98, &qword_100070BA0, &qword_10004FB60, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v3 = v0;
  v3[1] = sub_100003440;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 113, v2, &type metadata for Bool, v4);
}

uint64_t (*sub_100016D0C(uint64_t *a1))()
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
  *(v2 + 32) = sub_10004C1E4();
  return sub_100003760;
}

uint64_t (*sub_100016D80(uint64_t *a1))()
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
  *(v2 + 32) = sub_10004C1E4();
  return sub_100005F04;
}

uint64_t sub_100016DF4()
{
  if (qword_100070378 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100016E54()
{
  result = qword_100070B48;
  if (!qword_100070B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070B48);
  }

  return result;
}

unint64_t sub_100016EAC()
{
  result = qword_100070B50;
  if (!qword_100070B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070B50);
  }

  return result;
}

uint64_t sub_100016F6C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100070370 != -1)
  {
    swift_once();
  }

  v2 = sub_10004C564();
  v3 = sub_100005C58(v2, qword_100071A18);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100017014(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002E00;

  return sub_100016B10(a1, v5, v4);
}

char *sub_1000170C0@<X0>(char **a1@<X8>)
{
  result = sub_10001808C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000170E8(uint64_t a1)
{
  v2 = sub_100016850();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100017128()
{
  result = qword_100070B58;
  if (!qword_100070B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070B58);
  }

  return result;
}

unint64_t sub_100017180()
{
  result = qword_100070B60;
  if (!qword_100070B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070B60);
  }

  return result;
}

uint64_t sub_1000171D4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005F00;

  return sub_100018848();
}

uint64_t sub_100017278(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100015B30();
  *v4 = v2;
  v4[1] = sub_100003DE4;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10001732C()
{
  result = qword_100070B68;
  if (!qword_100070B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070B68);
  }

  return result;
}

unint64_t sub_100017384()
{
  result = qword_100070B70;
  if (!qword_100070B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070B70);
  }

  return result;
}

uint64_t sub_1000173D8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100015B30();
  *v5 = v2;
  v5[1] = sub_100005F1C;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10001748C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100015B30();
  *v4 = v2;
  v4[1] = sub_100005F00;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100017540()
{
  result = qword_100070B78;
  if (!qword_100070B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070B78);
  }

  return result;
}

unint64_t sub_100017598()
{
  result = qword_100070B80;
  if (!qword_100070B80)
  {
    sub_100002C4C(&qword_100070B88, qword_10004F9A0);
    sub_100016644();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070B80);
  }

  return result;
}

uint64_t sub_10001761C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10001653C();
  *v5 = v2;
  v5[1] = sub_100005EFC;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100017700@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v1 = sub_1000057AC(&qword_1000705C0, &unk_10004D5D0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - v3;
  v5 = sub_1000057AC(&qword_1000705C8, qword_10004EA10);
  v6 = *(v5 - 8);
  v19 = v5;
  v20 = v6;
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  swift_getKeyPath();
  sub_1000057AC(&qword_1000705D0, &unk_10004D5E0);
  v17._object = &protocol witness table for Text;
  sub_100017180();
  sub_100005D70(&qword_1000705D8, &qword_1000705D0, &unk_10004D5E0, &protocol conformance descriptor for Label<A, B>);
  sub_10004C724();
  sub_10004C6A4();
  v9 = sub_100005D70(&qword_1000705E0, &qword_1000705C0, &unk_10004D5D0, &protocol conformance descriptor for ControlToggle<A>);
  sub_10004C6C4();

  (*(v2 + 8))(v4, v1);
  v10 = [objc_opt_self() mainBundle];
  v17._countAndFlagsBits = 0x8000000100059090;
  v26._object = 0x8000000100055C00;
  v26._countAndFlagsBits = 0xD000000000000019;
  v27.value._countAndFlagsBits = 0;
  v27.value._object = 0;
  v11.super.isa = v10;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v12 = sub_10004C534(v26, v27, v11, v28, 0xD00000000000005ALL, v17);
  v14 = v13;

  v24 = v12;
  v25 = v14;
  v22 = v1;
  v23 = v9;
  swift_getOpaqueTypeConformance2();
  sub_100005DB8();
  v15 = v19;
  sub_10004C6B4();

  return (*(v20 + 8))(v8, v15);
}

uint64_t sub_100017AD4()
{
  v0 = [objc_opt_self() mainBundle];
  v3._countAndFlagsBits = 0x8000000100058FF0;
  v4._object = 0x8000000100055C00;
  v4._countAndFlagsBits = 0xD000000000000019;
  v5.value._countAndFlagsBits = 0;
  v5.value._object = 0;
  v1.super.isa = v0;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_10004C534(v4, v5, v1, v6, 0xD000000000000034, v3);

  sub_100005DB8();
  return sub_10004C6E4();
}

uint64_t sub_100017BB8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10004C554();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004C5A4();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10004C754();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004C564();
  __chkstk_darwin(v8 - 8);
  sub_10004C744();
  sub_10004C594();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_10004C574();
  result = sub_10004C6D4();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_100017DEC@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_10004C554();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004C5A4();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004C754();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10004C564();
  __chkstk_darwin(v9 - 8);
  sub_10004C744();
  sub_10004C594();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  sub_10004C574();
  result = sub_10004C6D4();
  *a2 = result;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v13;
  return result;
}

char *sub_10001808C()
{
  v0 = sub_1000057AC(&qword_100070568, &unk_10004E1F0);
  __chkstk_darwin(v0 - 8);
  v50 = &v35 - v1;
  v2 = sub_10004C494();
  v3 = *(v2 - 8);
  v53 = v2;
  v54 = v3;
  __chkstk_darwin(v2);
  v49 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000057AC(&unk_100070570, &unk_10004D430);
  v6 = __chkstk_darwin(v5 - 8);
  v48 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v52 = &v35 - v8;
  v9 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v9 - 8);
  v51 = &v35 - v10;
  v11 = sub_10004C554();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10004C5A4();
  __chkstk_darwin(v15 - 8);
  v16 = sub_10004C754();
  __chkstk_darwin(v16 - 8);
  v17 = sub_10004C564();
  v45 = v17;
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v35 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1000057AC(&qword_100070B90, &unk_10004FB38);
  sub_10004C744();
  sub_10004C594();
  v20 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v21 = *(v12 + 104);
  v36 = v11;
  v21(v14, enum case for LocalizedStringResource.BundleDescription.main(_:), v11);
  v37 = v21;
  v38 = v12 + 104;
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v21(v14, v20, v11);
  v22 = v51;
  sub_10004C574();
  v23 = *(v18 + 56);
  v44 = v18 + 56;
  v46 = v23;
  v23(v22, 0, 1, v17);
  v56[0] = 0;
  v24 = sub_10004C1C4();
  v39 = v24;
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v43 = v26;
  v47 = v25 + 56;
  v26(v52, 1, 1, v24);
  v26(v48, 1, 1, v24);
  v40 = enum case for InputConnectionBehavior.default(_:);
  v27 = *(v54 + 104);
  v54 += 104;
  v41 = v27;
  v28 = v49;
  v27(v49);
  sub_100015AD8();
  v29 = v28;
  v48 = sub_10004C224();
  v42 = sub_1000057AC(&qword_100070588, &qword_10004E210);
  sub_10004C744();
  sub_10004C594();
  v30 = v36;
  v31 = v37;
  v37(v14, v20, v36);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v31(v14, v20, v30);
  v32 = v51;
  sub_10004C574();
  v46(v32, 0, 1, v45);
  v55[0] = 2;
  v33 = sub_10004C794();
  (*(*(v33 - 8) + 56))(v50, 1, 1, v33);
  v43(v52, 1, 1, v39);
  v41(v29, v40, v53);
  sub_10004C234();
  return v48;
}

uint64_t sub_100018848()
{
  v1 = sub_10004C554();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_10004C5A4();
  v0[5] = swift_task_alloc();
  sub_10004C754();
  v0[6] = swift_task_alloc();
  sub_10004C564();
  v0[7] = swift_task_alloc();

  return _swift_task_switch(sub_100018988, 0, 0);
}

uint64_t sub_100018988()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v0[3];
  sub_1000057AC(&qword_100070B40, qword_10004F740);
  sub_10004C744();
  sub_10004C594();
  (*(v3 + 104))(v1, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_10004C574();
  sub_100005D70(&qword_100070B98, &qword_100070BA0, &qword_10004FB60, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v4 = sub_10004C514();

  v5 = v0[1];

  return v5(v4);
}

uint64_t WidgetExtensionError.localizedStringResource.getter(unsigned __int8 a1)
{
  v1 = sub_10004C554();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004C5A4();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10004C754();
  __chkstk_darwin(v6 - 8);
  sub_10004C744();
  sub_10004C594();
  (*(v2 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v1);
  return sub_10004C584();
}

Swift::Int WidgetExtensionError.hashValue.getter(unsigned __int8 a1)
{
  sub_10004C8A4();
  sub_10004C8B4(a1);
  return sub_10004C8C4();
}

Swift::Int sub_100018FE8()
{
  v1 = *v0;
  sub_10004C8A4();
  sub_10004C8B4(v1);
  return sub_10004C8C4();
}

Swift::Int sub_10001905C(uint64_t a1)
{
  v2 = *v1;
  sub_10004C8A4();
  sub_10004C8B4(v2);
  return sub_10004C8C4();
}

unint64_t sub_1000190A4()
{
  result = qword_100070BA8;
  if (!qword_100070BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070BA8);
  }

  return result;
}

uint64_t sub_100019120(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x4D6E656574666966;
    v6 = 0x694D797472696874;
    if (a1 != 2)
    {
      v6 = 0xD000000000000010;
    }

    if (a1)
    {
      v5 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x72756F48656E6FLL;
    v2 = 0xD000000000000014;
    if (a1 != 7)
    {
      v2 = 0x7372756F486F7774;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6E694D7974666966;
    if (a1 != 4)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_10001926C()
{
  v0 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_10004C554();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004C5A4();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10004C754();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004C564();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_10004C4D4();
  sub_100005C90(v10, qword_100071A38);
  sub_100005C58(v10, qword_100071A38);
  sub_10004C744();
  sub_10004C594();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_10004C584();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_10004C4C4();
}

uint64_t sub_100019548()
{
  v0 = sub_1000057AC(&qword_1000705B0, &unk_10004E990);
  __chkstk_darwin(v0 - 8);
  v109 = v76 - v1;
  v2 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v2 - 8);
  v99 = v76 - v3;
  v104 = sub_10004C554();
  v4 = *(v104 - 8);
  __chkstk_darwin(v104);
  v6 = v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004C5A4();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004C754();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10004C564();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000057AC(&qword_100070D18, &qword_100050738);
  v13 = sub_1000057AC(&qword_100070D20, &unk_100050740);
  v14 = (*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80);
  v90 = *(*(v13 - 8) + 72);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10004FD10;
  v82 = v15;
  v107 = v13;
  v85 = *(v13 + 48);
  v106 = v15 + v14;
  *(v15 + v14) = 0;
  sub_10004C744();
  sub_10004C594();
  v16 = *(v4 + 104);
  v89 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v87 = v4 + 104;
  v17 = v16;
  (v16)(v6);
  v91 = v12;
  sub_10004C574();
  v18 = v10;
  v19 = *(v10 + 56);
  v105 = v9;
  v102 = v19;
  v103 = v10 + 56;
  v19(v99, 1, 1, v9);
  if (qword_100070428 != -1)
  {
    swift_once();
  }

  v20 = sub_10004C3C4();
  v96 = sub_100005C58(v20, qword_100071B70);
  v93 = v20;
  v21 = *(v20 - 8);
  v97 = *(v21 + 16);
  v98 = v21 + 16;
  v22 = v109;
  v97(v109, v96, v20);
  v101 = *(v21 + 56);
  v94 = v21 + 56;
  v101(v22, 0, 1, v20);
  v95 = sub_1000057AC(&qword_100070AA0, &unk_10004F410);
  v108 = *(v18 + 72);
  v100 = *(v18 + 80);
  v92 = (v100 + 32) & ~v100;
  v23 = swift_allocObject();
  v88 = xmmword_10004FD20;
  *(v23 + 16) = xmmword_10004FD20;
  sub_10004C744();
  sub_10004C594();
  v24 = v89;
  v17(v6, v89, v104);
  sub_10004C574();
  v25 = v106;
  v26 = v99;
  sub_10004C3F4();
  v84 = v25 + v90;
  v85 = *(v107 + 48);
  *v84 = 1;
  sub_10004C744();
  sub_10004C594();
  v27 = v104;
  v17(v6, v24, v104);
  sub_10004C574();
  v102(v26, 1, 1, v105);
  v28 = v109;
  v29 = v93;
  v97(v109, v96, v93);
  v101(v28, 0, 1, v29);
  *(swift_allocObject() + 16) = v88;
  sub_10004C744();
  sub_10004C594();
  v30 = v24;
  v31 = v24;
  v32 = v27;
  v17(v6, v31, v27);
  sub_10004C574();
  v33 = v99;
  sub_10004C3F4();
  v79 = 2 * v90;
  v77 = v106 + 2 * v90;
  v78 = *(v107 + 48);
  *v77 = 2;
  sub_10004C744();
  sub_10004C594();
  v17(v6, v30, v32);
  sub_10004C574();
  v102(v33, 1, 1, v105);
  v34 = v109;
  v35 = v93;
  v97(v109, v96, v93);
  v101(v34, 0, 1, v35);
  v85 = 2 * v108;
  v84 = 3 * v108;
  v81 = 6 * v108;
  v36 = v92;
  v37 = swift_allocObject();
  v76[2] = v37;
  *(v37 + 16) = xmmword_10004FD30;
  v38 = v37 + v36;
  sub_10004C744();
  sub_10004C594();
  v39 = v104;
  v17(v6, v30, v104);
  v40 = v17;
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v41 = v30;
  v40(v6, v30, v39);
  v42 = v108;
  v76[1] = v38;
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v40(v6, v41, v39);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v43 = v104;
  v40(v6, v41, v104);
  sub_10004C574();
  v83 = 4 * v42;
  sub_10004C744();
  sub_10004C594();
  v40(v6, v41, v43);
  sub_10004C574();
  v80 = 5 * v42;
  sub_10004C744();
  sub_10004C594();
  v44 = v43;
  v45 = v40;
  v40(v6, v41, v43);
  sub_10004C574();
  v46 = v99;
  v47 = v109;
  sub_10004C3F4();
  v78 = v106 + v79 + v90;
  v79 = *(v107 + 48);
  *v78 = 3;
  sub_10004C744();
  sub_10004C594();
  v40(v6, v41, v44);
  sub_10004C574();
  v102(v46, 1, 1, v105);
  v48 = v93;
  v97(v47, v96, v93);
  v101(v47, 0, 1, v48);
  *(swift_allocObject() + 16) = v88;
  sub_10004C744();
  sub_10004C594();
  v49 = v89;
  v86 = v40;
  v40(v6, v89, v44);
  sub_10004C574();
  v50 = v99;
  sub_10004C3F4();
  v79 = 4 * v90;
  v77 = v106 + 4 * v90;
  v78 = *(v107 + 48);
  *v77 = 4;
  sub_10004C744();
  sub_10004C594();
  v45(v6, v49, v44);
  sub_10004C574();
  v51 = v50;
  v102(v50, 1, 1, v105);
  v52 = v109;
  v53 = v93;
  v97(v109, v96, v93);
  v101(v52, 0, 1, v53);
  *(swift_allocObject() + 16) = v88;
  sub_10004C744();
  sub_10004C594();
  v54 = v86;
  v86(v6, v89, v44);
  sub_10004C574();
  v55 = v51;
  v56 = v109;
  sub_10004C3F4();
  v78 = v106 + v79 + v90;
  v79 = *(v107 + 48);
  *v78 = 5;
  sub_10004C744();
  sub_10004C594();
  v57 = v89;
  v54(v6, v89, v44);
  sub_10004C574();
  v102(v55, 1, 1, v105);
  v58 = v93;
  v97(v56, v96, v93);
  v59 = v56;
  v101(v56, 0, 1, v58);
  *(swift_allocObject() + 16) = v88;
  sub_10004C744();
  sub_10004C594();
  v60 = v57;
  v61 = v104;
  v62 = v86;
  v86(v6, v60, v104);
  sub_10004C574();
  v63 = v99;
  sub_10004C3F4();
  v78 = v106 + 6 * v90;
  v79 = *(v107 + 48);
  *v78 = 6;
  sub_10004C744();
  sub_10004C594();
  v64 = v89;
  v62(v6, v89, v61);
  sub_10004C574();
  v102(v63, 1, 1, v105);
  v65 = v93;
  v97(v59, v96, v93);
  v101(v59, 0, 1, v65);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_10004FD40;
  sub_10004C744();
  sub_10004C594();
  v66 = v104;
  v62(v6, v64, v104);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v62(v6, v64, v66);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v62(v6, v64, v66);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v62(v6, v64, v66);
  sub_10004C574();
  v67 = v99;
  v68 = v109;
  sub_10004C3F4();
  v79 = 8 * v90;
  v78 = v106 + 7 * v90;
  v90 = *(v107 + 48);
  *v78 = 7;
  sub_10004C744();
  sub_10004C594();
  v62(v6, v64, v66);
  sub_10004C574();
  v102(v67, 1, 1, v105);
  v69 = v93;
  v97(v68, v96, v93);
  v101(v68, 0, 1, v69);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_10004FD50;
  sub_10004C744();
  sub_10004C594();
  v62(v6, v64, v66);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v62(v6, v64, v66);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v62(v6, v64, v66);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v62(v6, v64, v66);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v62(v6, v64, v66);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v62(v6, v64, v66);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v62(v6, v64, v66);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v70 = v86;
  v86(v6, v64, v66);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v70(v6, v64, v66);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v70(v6, v64, v66);
  sub_10004C574();
  v71 = v99;
  v72 = v109;
  sub_10004C3F4();
  v85 = v106 + v79;
  v90 = *(v107 + 48);
  *v85 = 8;
  sub_10004C744();
  sub_10004C594();
  v70(v6, v64, v66);
  sub_10004C574();
  v102(v71, 1, 1, v105);
  v73 = v93;
  v97(v72, v96, v93);
  v101(v72, 0, 1, v73);
  *(swift_allocObject() + 16) = v88;
  sub_10004C744();
  sub_10004C594();
  v86(v6, v89, v104);
  sub_10004C574();
  sub_10004C3F4();
  v74 = sub_10004A7E4(v82);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100071A50 = v74;
  return result;
}

uint64_t sub_10001B7D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000057AC(&qword_100070AB0, &unk_10004F490);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  if (qword_100070388 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = qword_100071A50;
  if (*(qword_100071A50 + 16) && (v11 = sub_100048798(a1), (v12 & 1) != 0))
  {
    v13 = v11;
    v14 = *(v10 + 56);
    v15 = sub_10004C414();
    v16 = *(v15 - 8);
    (*(v16 + 16))(v6, v14 + *(v16 + 72) * v13, v15);
    (*(v16 + 56))(v6, 0, 1, v15);
  }

  else
  {
    v15 = sub_10004C414();
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  }

  sub_10004C414();
  if ((*(*(v15 - 8) + 48))(v6, 1, v15))
  {
    sub_1000159C4(v6, &qword_100070AB0, &unk_10004F490);
    swift_endAccess();
    v17 = sub_10004C564();
    v18 = *(v17 - 8);
    (*(v18 + 56))(v9, 1, 1, v17);
    sub_10004C544();
    result = (*(v18 + 48))(v9, 1, v17);
    if (result != 1)
    {
      return sub_1000159C4(v9, &qword_100070E80, &qword_10004E200);
    }
  }

  else
  {
    sub_10004C3D4();
    sub_1000159C4(v6, &qword_100070AB0, &unk_10004F490);
    swift_endAccess();
    v20 = sub_10004C564();
    v21 = *(v20 - 8);
    (*(v21 + 56))(v9, 0, 1, v20);
    return (*(v21 + 32))(a2, v9, v20);
  }

  return result;
}

unint64_t sub_10001BBB4()
{
  result = qword_100070BC0;
  if (!qword_100070BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070BC0);
  }

  return result;
}

Swift::Int sub_10001BC08()
{
  v1 = *v0;
  sub_10004C8A4();
  sub_100043B40(v3, v1);
  return sub_10004C8C4();
}

Swift::Int sub_10001BC58(uint64_t a1)
{
  v2 = *v1;
  sub_10004C8A4();
  sub_100043B40(v4, v2);
  return sub_10004C8C4();
}

unint64_t sub_10001BC9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001E748(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_10001BCCC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100019120(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10001BCFC()
{
  result = qword_100070BC8;
  if (!qword_100070BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070BC8);
  }

  return result;
}

unint64_t sub_10001BD54()
{
  result = qword_100070BD0;
  if (!qword_100070BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070BD0);
  }

  return result;
}

unint64_t sub_10001BDAC()
{
  result = qword_100070BD8;
  if (!qword_100070BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070BD8);
  }

  return result;
}

unint64_t sub_10001BE04()
{
  result = qword_100070BE0;
  if (!qword_100070BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070BE0);
  }

  return result;
}

unint64_t sub_10001BE5C()
{
  result = qword_100070BE8;
  if (!qword_100070BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070BE8);
  }

  return result;
}

unint64_t sub_10001BEB4()
{
  result = qword_100070BF0;
  if (!qword_100070BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070BF0);
  }

  return result;
}

unint64_t sub_10001BF0C()
{
  result = qword_100070BF8;
  if (!qword_100070BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070BF8);
  }

  return result;
}

unint64_t sub_10001BFC4()
{
  result = qword_100070C00;
  if (!qword_100070C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070C00);
  }

  return result;
}

uint64_t sub_10001C018(uint64_t a1)
{
  v2 = sub_10001BFC4();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10001C068()
{
  result = qword_100070C08;
  if (!qword_100070C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070C08);
  }

  return result;
}

unint64_t sub_10001C0C0()
{
  result = qword_100070C10;
  if (!qword_100070C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070C10);
  }

  return result;
}

unint64_t sub_10001C118()
{
  result = qword_100070C18;
  if (!qword_100070C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070C18);
  }

  return result;
}

uint64_t sub_10001C16C()
{
  if (qword_100070388 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_10001C1E4(uint64_t a1)
{
  v2 = sub_10001BF0C();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10001C284()
{
  result = qword_100070C30;
  if (!qword_100070C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070C30);
  }

  return result;
}

unint64_t sub_10001C2DC()
{
  result = qword_100070C38;
  if (!qword_100070C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070C38);
  }

  return result;
}

void sub_10001C354()
{
  v1 = [objc_opt_self() shared];
  [v1 defaultEventDuration];
  v3 = v2;

  v4 = v3 / 60.0;
  if (COERCE__INT64(fabs(v3 / 60.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v5 = *(v0 + 16);
  *v5 = sub_10001E6A0(v4);
  v6 = *(v0 + 8);

  v6();
}

uint64_t sub_10001C46C()
{
  v1 = dbl_1000507C8[*(v0 + 16)];
  v2 = [objc_opt_self() shared];
  [v2 setDefaultEventDuration:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10001C510()
{
  v0 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v0 - 8);
  v2 = &v12[-v1];
  v3 = sub_10004C554();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10004C5A4();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004C754();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10004C564();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  sub_10004C744();
  sub_10004C594();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  sub_10004C574();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_10004C4C4();
}

uint64_t sub_10001C7E4@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = sub_1000057AC(&qword_1000705B0, &unk_10004E990);
  __chkstk_darwin(v1 - 8);
  v21 = &v20 - v2;
  v3 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_10004C554();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004C5A4();
  __chkstk_darwin(v10 - 8);
  v11 = sub_10004C754();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10004C564();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  __chkstk_darwin(v14);
  sub_10004C744();
  sub_10004C594();
  (*(v7 + 104))(v9, enum case for LocalizedStringResource.BundleDescription.main(_:), v6);
  sub_10004C574();
  (*(v13 + 56))(v5, 1, 1, v12);
  if (qword_100070428 != -1)
  {
    swift_once();
  }

  v15 = sub_10004C3C4();
  v16 = sub_100005C58(v15, qword_100071B70);
  v17 = *(v15 - 8);
  v18 = v21;
  (*(v17 + 16))(v21, v16, v15);
  (*(v17 + 56))(v18, 0, 1, v15);
  sub_10004C544();
  return sub_10004C3E4();
}

uint64_t sub_10001CC14()
{
  v0 = qword_100070BB0;

  return v0;
}

unint64_t sub_10001CC50()
{
  result = qword_100070C40;
  if (!qword_100070C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070C40);
  }

  return result;
}

unint64_t sub_10001CCA8()
{
  result = qword_100070C48;
  if (!qword_100070C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070C48);
  }

  return result;
}

unint64_t sub_10001CD00()
{
  result = qword_100070C50;
  if (!qword_100070C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070C50);
  }

  return result;
}

unint64_t sub_10001CD58()
{
  result = qword_100070C58;
  if (!qword_100070C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070C58);
  }

  return result;
}

unint64_t sub_10001CDB0()
{
  result = qword_100070C60;
  if (!qword_100070C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070C60);
  }

  return result;
}

unint64_t sub_10001CE08()
{
  result = qword_100070C68;
  if (!qword_100070C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070C68);
  }

  return result;
}

unint64_t sub_10001CE60()
{
  result = qword_100070C70;
  if (!qword_100070C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070C70);
  }

  return result;
}

unint64_t sub_10001CEB8()
{
  result = qword_100070C78;
  if (!qword_100070C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070C78);
  }

  return result;
}

uint64_t sub_10001CF74(uint64_t a1)
{
  v2 = sub_10001C284();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10001CFC4()
{
  result = qword_100070C90;
  if (!qword_100070C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070C90);
  }

  return result;
}

uint64_t sub_10001D01C(uint64_t a1)
{
  v2 = sub_10001CEB8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10001D06C()
{
  result = qword_100070C98;
  if (!qword_100070C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070C98);
  }

  return result;
}

uint64_t sub_10001D104()
{
  v0 = sub_10004C554();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10004C5A4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10004C754();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10004C564();
  sub_100005C90(v6, qword_100071A58);
  sub_100005C58(v6, qword_100071A58);
  sub_10004C744();
  sub_10004C594();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10004C574();
}

uint64_t sub_10001D304()
{
  result = swift_getKeyPath();
  qword_100071A70 = result;
  return result;
}

uint64_t sub_10001D32C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  sub_10004C7C4();
  v3[7] = sub_10004C7B4();
  v5 = sub_10004C7A4();
  v3[8] = v5;
  v3[9] = v4;

  return _swift_task_switch(sub_10001D3C8, v5, v4);
}

uint64_t sub_10001D3C8()
{
  sub_10004C1F4();
  v1 = v0[2];
  v0[3] = v1;
  v0[10] = v1;
  sub_10004C1F4();
  if (qword_100070398 != -1)
  {
    swift_once();
  }

  v2 = qword_100071A70;
  v0[11] = qword_100071A70;

  v3 = swift_task_alloc();
  v0[12] = v3;
  v4 = sub_100005D70(&qword_100070D08, &qword_100070D10, &qword_1000506F8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v3 = v0;
  v3[1] = sub_100003440;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 14, v2, &type metadata for SettingsDurationForNewEventsType, v4);
}

uint64_t (*sub_10001D51C(uint64_t *a1))()
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
  *(v2 + 32) = sub_10004C1E4();
  return sub_100003760;
}

uint64_t (*sub_10001D590(uint64_t *a1))()
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
  *(v2 + 32) = sub_10004C1E4();
  return sub_100005F04;
}

uint64_t sub_10001D604()
{
  if (qword_100070398 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10001D664()
{
  result = qword_100070CB0;
  if (!qword_100070CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070CB0);
  }

  return result;
}

unint64_t sub_10001D6BC()
{
  result = qword_100070CB8;
  if (!qword_100070CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070CB8);
  }

  return result;
}

uint64_t sub_10001D7D8(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002E00;

  return sub_10001D32C(a1, v5, v4);
}

uint64_t sub_10001D884@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001E794();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10001D8AC(uint64_t a1)
{
  v2 = sub_10001D06C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10001D8EC()
{
  result = qword_100070CC0;
  if (!qword_100070CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070CC0);
  }

  return result;
}

unint64_t sub_10001D944()
{
  result = qword_100070CC8;
  if (!qword_100070CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070CC8);
  }

  return result;
}

uint64_t sub_10001D998(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005F00;

  return sub_10001EEF0();
}

uint64_t sub_10001DA3C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10001C2DC();
  *v4 = v2;
  v4[1] = sub_100003DE4;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10001DAF0()
{
  result = qword_100070CD0;
  if (!qword_100070CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070CD0);
  }

  return result;
}

unint64_t sub_10001DB48()
{
  result = qword_100070CD8;
  if (!qword_100070CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070CD8);
  }

  return result;
}

uint64_t sub_10001DB9C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10001C2DC();
  *v5 = v2;
  v5[1] = sub_100005F1C;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10001DC50(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10001C2DC();
  *v4 = v2;
  v4[1] = sub_100005F00;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10001DD04()
{
  result = qword_100070CE0;
  if (!qword_100070CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070CE0);
  }

  return result;
}

unint64_t sub_10001DD5C()
{
  result = qword_100070CE8;
  if (!qword_100070CE8)
  {
    sub_100002C4C(&qword_100070CF0, qword_100050500);
    sub_10001CE60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070CE8);
  }

  return result;
}

uint64_t sub_10001DDE0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10001CD58();
  *v5 = v2;
  v5[1] = sub_100005EFC;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t getEnumTagSinglePayload for SettingsDurationForNewEventsType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SettingsDurationForNewEventsType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10001E014@<X0>(uint64_t a1@<X8>)
{
  v10[1] = a1;
  v1 = sub_10004C704();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1000057AC(&qword_100070ED0, &qword_1000507C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v10 - v4;
  v10[0] = "ng a duration for new events";
  v6 = [objc_opt_self() mainBundle];
  v9._countAndFlagsBits = 0x8000000100059440;
  v11._object = 0x8000000100056890;
  v11._countAndFlagsBits = 0xD000000000000017;
  v12.value._countAndFlagsBits = 0;
  v12.value._object = 0;
  v7.super.isa = v6;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  sub_10004C534(v11, v12, v7, v13, 0xD000000000000033, v9);

  swift_getKeyPath();
  sub_10004C6F4();
  sub_10001BFC4();
  sub_10001F238();
  sub_10001D944();
  sub_10004C714();
  sub_10004C6A4();
  sub_100005D70(&qword_100070EE0, &qword_100070ED0, &qword_1000507C0, &protocol conformance descriptor for ControlPicker<A>);
  sub_10004C6C4();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10001E30C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10004C554();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004C5A4();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10004C754();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004C564();
  __chkstk_darwin(v8 - 8);
  sub_10004C744();
  sub_10004C594();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_10004C574();
  result = sub_10004C6D4();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_10001E540@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10004C564();
  __chkstk_darwin(v4 - 8);
  sub_10001B7D0(*a1, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_10004C6D4();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

uint64_t sub_10001E5D8(unsigned __int8 *a1)
{
  v2 = sub_10004C564();
  __chkstk_darwin(v2 - 8);
  sub_10001B7D0(*a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10004C6D4();
  return sub_10004C734();
}

uint64_t sub_10001E6A0(uint64_t a1)
{
  if (a1 <= 49)
  {
    if (a1 > 29)
    {
      if (a1 != 30)
      {
        if (a1 == 40)
        {
          return 3;
        }

        return 6;
      }

      return 2;
    }

    else
    {
      if (a1 != 15)
      {
        if (a1 == 25)
        {
          return 1;
        }

        return 6;
      }

      return 0;
    }
  }

  else if (a1 <= 59)
  {
    if (a1 != 50)
    {
      if (a1 == 55)
      {
        return 5;
      }

      return 6;
    }

    return 4;
  }

  else
  {
    if (a1 == 60)
    {
      return 6;
    }

    if (a1 != 90)
    {
      if (a1 == 120)
      {
        return 8;
      }

      return 6;
    }

    return 7;
  }
}

unint64_t sub_10001E748(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10006D438;
  v6._object = a2;
  v4 = sub_10004C834(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10001E794()
{
  v0 = sub_10004C494();
  v1 = *(v0 - 8);
  v52 = v0;
  v53 = v1;
  __chkstk_darwin(v0);
  v51 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000057AC(&unk_100070570, &unk_10004D430);
  v4 = __chkstk_darwin(v3 - 8);
  v50 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v48 = &v34 - v6;
  v7 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v7 - 8);
  v49 = &v34 - v8;
  v9 = sub_10004C554();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004C5A4();
  __chkstk_darwin(v13 - 8);
  v14 = sub_10004C754();
  __chkstk_darwin(v14 - 8);
  v15 = sub_10004C564();
  v46 = v15;
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v34 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1000057AC(&qword_100070CF8, &qword_1000506D0);
  sub_10004C744();
  sub_10004C594();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v10 + 104);
  v35 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v36 = v9;
  v19(v12, enum case for LocalizedStringResource.BundleDescription.main(_:), v9);
  v37 = v19;
  v38 = v10 + 104;
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v19(v12, v18, v9);
  v20 = v49;
  sub_10004C574();
  v21 = *(v16 + 56);
  v45 = v16 + 56;
  v47 = v21;
  v21(v20, 0, 1, v15);
  v55[0] = 0;
  v22 = sub_10004C1C4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v40 = v24;
  v41 = v23 + 56;
  v25 = v48;
  v24(v48, 1, 1, v22);
  v24(v50, 1, 1, v22);
  v42 = enum case for InputConnectionBehavior.default(_:);
  v26 = *(v53 + 104);
  v53 += 104;
  v43 = v26;
  v26(v51);
  sub_10001C284();
  v27 = v25;
  v44 = sub_10004C224();
  v39 = sub_1000057AC(&qword_100070D00, &qword_1000506D8);
  sub_10004C744();
  sub_10004C594();
  v28 = v35;
  v29 = v36;
  v30 = v37;
  v37(v12, v35, v36);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v30(v12, v28, v29);
  v31 = v49;
  sub_10004C574();
  v47(v31, 0, 1, v46);
  v54[0] = 9;
  v32 = v40;
  v40(v27, 1, 1, v22);
  v32(v50, 1, 1, v22);
  v43(v51, v42, v52);
  sub_10001BFC4();
  sub_10004C214();
  return v44;
}

uint64_t sub_10001EEF0()
{
  v1 = sub_10004C554();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_10004C5A4();
  v0[5] = swift_task_alloc();
  sub_10004C754();
  v0[6] = swift_task_alloc();
  sub_10004C564();
  v0[7] = swift_task_alloc();

  return _swift_task_switch(sub_10001F030, 0, 0);
}

uint64_t sub_10001F030()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v0[3];
  sub_1000057AC(&qword_100070CA8, qword_1000502A0);
  sub_10004C744();
  sub_10004C594();
  (*(v3 + 104))(v1, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_10004C574();
  sub_100005D70(&qword_100070D08, &qword_100070D10, &qword_1000506F8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  sub_10001BFC4();
  v4 = sub_10004C504();

  v5 = v0[1];

  return v5(v4);
}

unint64_t sub_10001F238()
{
  result = qword_100070D28;
  if (!qword_100070D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070D28);
  }

  return result;
}

uint64_t sub_10001F28C()
{
  sub_100002C4C(&qword_100070ED0, &qword_1000507C0);
  sub_100005D70(&qword_100070EE0, &qword_100070ED0, &qword_1000507C0, &protocol conformance descriptor for ControlPicker<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001F344(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x7472656C416F6ELL;
    v7 = 0x756E694D65766966;
    v8 = 0x74756E694D6E6574;
    if (a1 != 3)
    {
      v8 = 0x4D6E656574666966;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x7645664F656D6974;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x796144656E6FLL;
    v2 = 0x737961446F7774;
    if (a1 != 9)
    {
      v2 = 0x6B656557656E6FLL;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x694D797472696874;
    v4 = 0x72756F48656E6FLL;
    if (a1 != 6)
    {
      v4 = 0x7372756F486F7774;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_10001F4C4()
{
  v0 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_10004C554();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004C5A4();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10004C754();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004C564();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_10004C4D4();
  sub_100005C90(v10, qword_100071A78);
  sub_100005C58(v10, qword_100071A78);
  sub_10004C744();
  sub_10004C594();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_10004C584();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_10004C4C4();
}

uint64_t sub_10001F7A0()
{
  v0 = sub_1000057AC(&qword_1000705B0, &unk_10004E990);
  __chkstk_darwin(v0 - 8);
  v139 = &v106 - v1;
  v2 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v2 - 8);
  v136 = &v106 - v3;
  v4 = sub_10004C554();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004C5A4();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10004C754();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10004C564();
  v124 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000057AC(&qword_100070EB8, &unk_100051240);
  v13 = sub_1000057AC(&unk_100070EC0, &qword_1000547E0);
  v14 = (*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80);
  v119 = *(*(v13 - 8) + 72);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100050810;
  v110 = v15;
  v138 = v13;
  *&v115 = *(v13 + 48);
  v137 = v15 + v14;
  *(v15 + v14) = 0;
  sub_10004C744();
  sub_10004C594();
  v16 = *(v5 + 104);
  v120 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v135 = v4;
  v17 = v124;
  v118 = v5 + 104;
  v117 = v16;
  (v16)(v7);
  v121 = v12;
  v106 = v7;
  sub_10004C574();
  v18 = *(v17 + 56);
  v133 = v17 + 56;
  v134 = v10;
  v132 = v18;
  v18(v136, 1, 1, v10);
  if (qword_100070428 != -1)
  {
    swift_once();
  }

  v19 = sub_10004C3C4();
  v125 = sub_100005C58(v19, qword_100071B70);
  v123 = v19;
  v20 = *(v19 - 8);
  v128 = *(v20 + 16);
  v130 = v20 + 16;
  v21 = v139;
  v128(v139, v125, v19);
  v131 = *(v20 + 56);
  v127 = v20 + 56;
  v131(v21, 0, 1, v19);
  v129 = sub_1000057AC(&qword_100070AA0, &unk_10004F410);
  v126 = *(v17 + 72);
  v124 = *(v17 + 80);
  v122 = (v124 + 32) & ~v124;
  v116 = 2 * v126;
  v22 = swift_allocObject();
  v114 = xmmword_10004EA40;
  *(v22 + 16) = xmmword_10004EA40;
  sub_10004C744();
  sub_10004C594();
  v23 = v106;
  v24 = v120;
  v25 = v135;
  v26 = v117;
  v117(v106, v120, v135);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v27 = v24;
  v28 = v25;
  v26(v23, v27, v25);
  sub_10004C574();
  v29 = v136;
  v30 = v137;
  sub_10004C3F4();
  v31 = v29;
  v113 = (v30 + v119);
  *&v115 = *(v138 + 48);
  *v113 = 1;
  *&v112 = 0xD000000000000010;
  sub_10004C744();
  sub_10004C594();
  v32 = v120;
  v26(v23, v120, v28);
  sub_10004C574();
  v132(v31, 1, 1, v134);
  v33 = v139;
  v34 = v123;
  v128(v139, v125, v123);
  v131(v33, 0, 1, v34);
  v35 = v122;
  v36 = swift_allocObject();
  *(v36 + 16) = v114;
  *&v114 = v36 + v35;
  sub_10004C744();
  sub_10004C594();
  v37 = v32;
  v38 = v32;
  v39 = v135;
  v40 = v117;
  v117(v23, v38, v135);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v41 = v37;
  v40(v23, v37, v39);
  sub_10004C574();
  v42 = v136;
  sub_10004C3F4();
  *&v114 = 2 * v119;
  v111 = v137 + 2 * v119;
  v113 = *(v138 + 48);
  *v111 = 2;
  sub_10004C744();
  sub_10004C594();
  v43 = v117;
  v117(v23, v41, v39);
  sub_10004C574();
  v132(v42, 1, 1, v134);
  v44 = v139;
  v45 = v123;
  v128(v139, v125, v123);
  v131(v44, 0, 1, v45);
  v46 = swift_allocObject();
  v115 = xmmword_10004FD20;
  *(v46 + 16) = xmmword_10004FD20;
  sub_10004C744();
  sub_10004C594();
  v47 = v135;
  v43(v23, v41, v135);
  sub_10004C574();
  v48 = v136;
  sub_10004C3F4();
  v113 = (v137 + v114 + v119);
  *&v114 = *(v138 + 48);
  *v113 = 3;
  sub_10004C744();
  sub_10004C594();
  v43(v23, v41, v47);
  sub_10004C574();
  v132(v48, 1, 1, v134);
  v49 = v139;
  v50 = v123;
  v128(v139, v125, v123);
  v131(v49, 0, 1, v50);
  *(swift_allocObject() + 16) = v115;
  sub_10004C744();
  sub_10004C594();
  v51 = v120;
  v43(v23, v120, v47);
  sub_10004C574();
  v52 = v136;
  sub_10004C3F4();
  *&v114 = 4 * v119;
  v111 = v137 + 4 * v119;
  v113 = *(v138 + 48);
  *v111 = 4;
  sub_10004C744();
  sub_10004C594();
  v43(v23, v51, v47);
  sub_10004C574();
  v53 = v52;
  v132(v52, 1, 1, v134);
  v54 = v139;
  v55 = v123;
  v128(v139, v125, v123);
  v131(v54, 0, 1, v55);
  *(swift_allocObject() + 16) = v115;
  sub_10004C744();
  sub_10004C594();
  v56 = v120;
  v57 = v117;
  v117(v23, v120, v47);
  sub_10004C574();
  v58 = v139;
  sub_10004C3F4();
  v113 = (v137 + v114 + v119);
  *&v114 = *(v138 + 48);
  *v113 = 5;
  sub_10004C744();
  sub_10004C594();
  v57(v23, v56, v135);
  sub_10004C574();
  v132(v53, 1, 1, v134);
  v59 = v123;
  v128(v58, v125, v123);
  v131(v58, 0, 1, v59);
  *(swift_allocObject() + 16) = v115;
  sub_10004C744();
  sub_10004C594();
  v60 = v56;
  v61 = v56;
  v62 = v135;
  v63 = v117;
  v117(v23, v60, v135);
  sub_10004C574();
  v64 = v136;
  sub_10004C3F4();
  v109 = v137 + 6 * v119;
  v111 = *(v138 + 48);
  *v109 = 6;
  sub_10004C744();
  sub_10004C594();
  v63(v23, v61, v62);
  v65 = v63;
  sub_10004C574();
  v132(v64, 1, 1, v134);
  v66 = v139;
  v67 = v123;
  v128(v139, v125, v123);
  v131(v66, 0, 1, v67);
  v68 = v126;
  *&v114 = 4 * v126;
  v69 = v122;
  v70 = swift_allocObject();
  v108 = v70;
  *(v70 + 16) = xmmword_10004FD40;
  v71 = v70 + v69;
  sub_10004C744();
  sub_10004C594();
  v72 = v120;
  v73 = v135;
  v65(v23, v120, v135);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v65(v23, v72, v73);
  v107 = v71;
  v74 = v68;
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v75 = v120;
  v65(v23, v120, v73);
  v76 = v116;
  sub_10004C574();
  v113 = (v76 + v74);
  sub_10004C744();
  sub_10004C594();
  v77 = v65;
  v65(v23, v75, v73);
  sub_10004C574();
  v78 = v136;
  v79 = v139;
  sub_10004C3F4();
  v111 = 8 * v119;
  v108 = v137 + 7 * v119;
  v109 = *(v138 + 48);
  *v108 = 7;
  sub_10004C744();
  sub_10004C594();
  v80 = v120;
  v77(v23, v120, v73);
  sub_10004C574();
  v132(v78, 1, 1, v134);
  v81 = v123;
  v128(v79, v125, v123);
  v131(v79, 0, 1, v81);
  *(swift_allocObject() + 16) = v115;
  sub_10004C744();
  sub_10004C594();
  v82 = v80;
  v83 = v135;
  v84 = v117;
  v117(v23, v80, v135);
  sub_10004C574();
  v85 = v136;
  sub_10004C3F4();
  v108 = v137 + v111;
  v109 = *(v138 + 48);
  *v108 = 8;
  sub_10004C744();
  sub_10004C594();
  v84(v23, v82, v83);
  sub_10004C574();
  v132(v85, 1, 1, v134);
  v86 = v139;
  v87 = v123;
  v128(v139, v125, v123);
  v131(v86, 0, 1, v87);
  *&v115 = v114 + v126;
  v88 = swift_allocObject();
  v112 = xmmword_10004EA30;
  v107 = v88;
  *(v88 + 16) = xmmword_10004EA30;
  sub_10004C744();
  sub_10004C594();
  v89 = v120;
  v90 = v135;
  v84(v23, v120, v135);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v84(v23, v89, v90);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v84(v23, v89, v90);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v91 = v90;
  v84(v23, v89, v90);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v84(v23, v89, v90);
  sub_10004C574();
  v92 = v136;
  v93 = v139;
  sub_10004C3F4();
  v109 = v137 + v111 + v119;
  v111 = *(v138 + 48);
  *v109 = 9;
  sub_10004C744();
  sub_10004C594();
  v84(v23, v89, v91);
  sub_10004C574();
  v132(v92, 1, 1, v134);
  v94 = v93;
  v95 = v93;
  v96 = v123;
  v128(v95, v125, v123);
  v131(v94, 0, 1, v96);
  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_100050820;
  sub_10004C744();
  sub_10004C594();
  v97 = v135;
  v84(v23, v89, v135);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v98 = v97;
  v84(v23, v89, v97);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v84(v23, v89, v97);
  sub_10004C574();
  v99 = v136;
  v100 = v139;
  sub_10004C3F4();
  v111 = v137 + 10 * v119;
  v119 = *(v138 + 48);
  *v111 = 10;
  sub_10004C744();
  sub_10004C594();
  v84(v23, v89, v98);
  sub_10004C574();
  v132(v99, 1, 1, v134);
  v101 = v123;
  v128(v100, v125, v123);
  v131(v100, 0, 1, v101);
  *(swift_allocObject() + 16) = v112;
  sub_10004C744();
  sub_10004C594();
  v102 = v120;
  v103 = v135;
  v84(v23, v120, v135);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v84(v23, v102, v103);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v84(v23, v102, v103);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v84(v23, v102, v103);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v84(v23, v102, v103);
  sub_10004C574();
  sub_10004C3F4();
  v104 = sub_10004A9CC(v110);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100071A90 = v104;
  return result;
}

uint64_t sub_100021E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000057AC(&qword_100070AB0, &unk_10004F490);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  if (qword_1000703A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = qword_100071A90;
  if (*(qword_100071A90 + 16) && (v11 = sub_100048804(a1), (v12 & 1) != 0))
  {
    v13 = v11;
    v14 = *(v10 + 56);
    v15 = sub_10004C414();
    v16 = *(v15 - 8);
    (*(v16 + 16))(v6, v14 + *(v16 + 72) * v13, v15);
    (*(v16 + 56))(v6, 0, 1, v15);
  }

  else
  {
    v15 = sub_10004C414();
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  }

  sub_10004C414();
  if ((*(*(v15 - 8) + 48))(v6, 1, v15))
  {
    sub_1000159C4(v6, &qword_100070AB0, &unk_10004F490);
    swift_endAccess();
    v17 = sub_10004C564();
    v18 = *(v17 - 8);
    (*(v18 + 56))(v9, 1, 1, v17);
    sub_10004C544();
    result = (*(v18 + 48))(v9, 1, v17);
    if (result != 1)
    {
      return sub_1000159C4(v9, &qword_100070E80, &qword_10004E200);
    }
  }

  else
  {
    sub_10004C3D4();
    sub_1000159C4(v6, &qword_100070AB0, &unk_10004F490);
    swift_endAccess();
    v20 = sub_10004C564();
    v21 = *(v20 - 8);
    (*(v21 + 56))(v9, 0, 1, v20);
    return (*(v21 + 32))(a2, v9, v20);
  }

  return result;
}

uint64_t sub_100022200(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_10001F344(*a1);
  v5 = v4;
  if (v3 == sub_10001F344(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10004C844();
  }

  return v8 & 1;
}

unint64_t sub_10002228C()
{
  result = qword_100070D40;
  if (!qword_100070D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070D40);
  }

  return result;
}

Swift::Int sub_1000222E0()
{
  v1 = *v0;
  sub_10004C8A4();
  sub_10001F344(v1);
  sub_10004C784();

  return sub_10004C8C4();
}

uint64_t sub_100022344(uint64_t a1)
{
  sub_10001F344(*v1);
  sub_10004C784();
}

Swift::Int sub_100022398(uint64_t a1)
{
  v2 = *v1;
  sub_10004C8A4();
  sub_10001F344(v2);
  sub_10004C784();

  return sub_10004C8C4();
}

unint64_t sub_1000223F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002551C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100022428@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001F344(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100022458()
{
  result = qword_100070D48;
  if (!qword_100070D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070D48);
  }

  return result;
}

unint64_t sub_1000224B0()
{
  result = qword_100070D50;
  if (!qword_100070D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070D50);
  }

  return result;
}

unint64_t sub_100022508()
{
  result = qword_100070D58;
  if (!qword_100070D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070D58);
  }

  return result;
}

unint64_t sub_100022560()
{
  result = qword_100070D60;
  if (!qword_100070D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070D60);
  }

  return result;
}

unint64_t sub_1000225B8()
{
  result = qword_100070D68;
  if (!qword_100070D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070D68);
  }

  return result;
}

unint64_t sub_100022610()
{
  result = qword_100070D70;
  if (!qword_100070D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070D70);
  }

  return result;
}

unint64_t sub_100022668()
{
  result = qword_100070D78;
  if (!qword_100070D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070D78);
  }

  return result;
}

unint64_t sub_100022720()
{
  result = qword_100070D80;
  if (!qword_100070D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070D80);
  }

  return result;
}

uint64_t sub_100022774(uint64_t a1)
{
  v2 = sub_100022720();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000227C4()
{
  result = qword_100070D88;
  if (!qword_100070D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070D88);
  }

  return result;
}

unint64_t sub_10002281C()
{
  result = qword_100070D90;
  if (!qword_100070D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070D90);
  }

  return result;
}

unint64_t sub_100022874()
{
  result = qword_100070D98;
  if (!qword_100070D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070D98);
  }

  return result;
}

uint64_t sub_1000228C8()
{
  if (qword_1000703A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_100022940(uint64_t a1)
{
  v2 = sub_100022668();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000229E0()
{
  result = qword_100070DB0;
  if (!qword_100070DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070DB0);
  }

  return result;
}

unint64_t sub_100022A38()
{
  result = qword_100070DB8;
  if (!qword_100070DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070DB8);
  }

  return result;
}

uint64_t sub_100022AB0()
{
  v1 = [objc_opt_self() defaultTimedAlarmOffset];
  v2 = [v1 integerValue];
  if (v2 == sub_10004C524())
  {
    v3 = 0;
  }

  else
  {
    v4 = [v1 doubleValue];
    v3 = sub_1000253E4(v4, v5);
  }

  v6 = *(v0 + 16);

  *v6 = v3;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100022B80(uint64_t a1, _BYTE *a2)
{
  *(v2 + 24) = *(a1 + 8);
  *(v2 + 32) = *a2;
  return _swift_task_switch(sub_100022BAC, 0, 0);
}

uint64_t sub_100022BAC()
{
  sub_10004C084();
  v1 = [*(v0 + 16) eventStore];
  swift_unknownObjectRelease();
  if (v1)
  {
    if (sub_10001F344(*(v0 + 32)) == 0x7472656C416F6ELL && v2 == 0xE700000000000000)
    {
    }

    else
    {
      v4 = sub_10004C844();

      if ((v4 & 1) == 0)
      {
        if (*(v0 + 32) < 2u && !*(v0 + 32))
        {
          sub_10004C524();
        }

        v5 = objc_opt_self();
        v6.super.super.isa = sub_10004C7D4().super.super.isa;
        goto LABEL_14;
      }
    }

    v5 = objc_opt_self();
    sub_10004C524();
    v6.super.super.isa = sub_10004C7E4().super.super.isa;
LABEL_14:
    isa = v6.super.super.isa;
    [v5 setDefaultAlarmOffset:v6.super.super.isa forAlarmType:0 eventStore:v1];
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100022DC8()
{
  v0 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v0 - 8);
  v2 = &v12[-v1];
  v3 = sub_10004C554();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10004C5A4();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004C754();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10004C564();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  sub_10004C744();
  sub_10004C594();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  sub_10004C574();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_10004C4C4();
}

uint64_t sub_10002309C@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = sub_1000057AC(&qword_1000705B0, &unk_10004E990);
  __chkstk_darwin(v1 - 8);
  v21 = &v20 - v2;
  v3 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_10004C554();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004C5A4();
  __chkstk_darwin(v10 - 8);
  v11 = sub_10004C754();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10004C564();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  __chkstk_darwin(v14);
  sub_10004C744();
  sub_10004C594();
  (*(v7 + 104))(v9, enum case for LocalizedStringResource.BundleDescription.main(_:), v6);
  sub_10004C574();
  (*(v13 + 56))(v5, 1, 1, v12);
  if (qword_100070428 != -1)
  {
    swift_once();
  }

  v15 = sub_10004C3C4();
  v16 = sub_100005C58(v15, qword_100071B70);
  v17 = *(v15 - 8);
  v18 = v21;
  (*(v17 + 16))(v21, v16, v15);
  (*(v17 + 56))(v18, 0, 1, v15);
  sub_10004C544();
  return sub_10004C3E4();
}

uint64_t sub_1000234CC()
{
  sub_1000057AC(&qword_100070E98, &qword_1000511E8);
  sub_10004C0F4();
  sub_10004C0E4();
  result = sub_10004C0A4();
  qword_100071A98 = result;
  return result;
}

uint64_t sub_10002353C()
{
  v0 = qword_100070D30;

  return v0;
}

unint64_t sub_100023578()
{
  result = qword_100070DC0;
  if (!qword_100070DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070DC0);
  }

  return result;
}

unint64_t sub_1000235D0()
{
  result = qword_100070DC8;
  if (!qword_100070DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070DC8);
  }

  return result;
}

unint64_t sub_100023628()
{
  result = qword_100070DD0;
  if (!qword_100070DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070DD0);
  }

  return result;
}

unint64_t sub_100023680()
{
  result = qword_100070DD8;
  if (!qword_100070DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070DD8);
  }

  return result;
}

uint64_t sub_1000236D4@<X0>(void *a1@<X8>)
{
  if (qword_1000703B0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_100071A98;
}

unint64_t sub_100023748()
{
  result = qword_100070DE0;
  if (!qword_100070DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070DE0);
  }

  return result;
}

unint64_t sub_1000237A0()
{
  result = qword_100070DE8;
  if (!qword_100070DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070DE8);
  }

  return result;
}

unint64_t sub_1000237F8()
{
  result = qword_100070DF0;
  if (!qword_100070DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070DF0);
  }

  return result;
}

unint64_t sub_100023850()
{
  result = qword_100070DF8;
  if (!qword_100070DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070DF8);
  }

  return result;
}

uint64_t sub_10002390C(uint64_t a1)
{
  v2 = sub_1000229E0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10002395C()
{
  result = qword_100070E10;
  if (!qword_100070E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070E10);
  }

  return result;
}

uint64_t sub_1000239B4(uint64_t a1)
{
  v2 = sub_100023850();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100023A04()
{
  result = qword_100070E18;
  if (!qword_100070E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070E18);
  }

  return result;
}

uint64_t sub_100023A9C()
{
  v0 = sub_10004C554();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10004C5A4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10004C754();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10004C564();
  sub_100005C90(v6, qword_100071AA0);
  sub_100005C58(v6, qword_100071AA0);
  sub_10004C744();
  sub_10004C594();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10004C574();
}

uint64_t sub_100023C9C()
{
  result = swift_getKeyPath();
  qword_100071AB8 = result;
  return result;
}

uint64_t sub_100023CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  sub_10004C7C4();
  v3[9] = sub_10004C7B4();
  v5 = sub_10004C7A4();
  v3[10] = v5;
  v3[11] = v4;

  return _swift_task_switch(sub_100023D60, v5, v4);
}

uint64_t sub_100023D60()
{
  sub_10004C1F4();
  v1 = v0[2];
  v0[4] = v1;
  v2 = v0[3];
  v0[12] = v1;
  v0[13] = v2;
  v0[5] = v2;
  sub_10004C1F4();
  if (qword_1000703C0 != -1)
  {
    swift_once();
  }

  v3 = qword_100071AB8;
  v0[14] = qword_100071AB8;

  v4 = swift_task_alloc();
  v0[15] = v4;
  v5 = sub_100005D70(&qword_100070EA0, &unk_100070EA8, &qword_100051200, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_100023EBC;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 17, v3, &type metadata for SettingsEventsDefaultAlertTimeType, v5);
}

uint64_t sub_100023EBC()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_1000240A8;
  }

  else
  {
    v5 = sub_100024038;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100024038()
{

  sub_10004C1D4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000240A8()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_10002410C@<D0>(_OWORD *a1@<X8>)
{
  sub_10004C1F4();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_100024148(uint64_t *a1)
{

  sub_10004C204();
}

uint64_t (*sub_1000241A8(uint64_t *a1))()
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
  *(v2 + 32) = sub_10004C1E4();
  return sub_100003760;
}

uint64_t (*sub_10002421C(uint64_t *a1))()
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
  *(v2 + 32) = sub_10004C1E4();
  return sub_100005F04;
}

uint64_t sub_100024290()
{
  if (qword_1000703C0 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1000242F0()
{
  result = qword_100070E30;
  if (!qword_100070E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070E30);
  }

  return result;
}

unint64_t sub_100024348()
{
  result = qword_100070E38;
  if (!qword_100070E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070E38);
  }

  return result;
}

uint64_t sub_100024464(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002E00;

  return sub_100023CC4(a1, v5, v4);
}

uint64_t sub_100024510@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000258AC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100024538(uint64_t a1)
{
  v2 = sub_100023A04();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100024578()
{
  result = qword_100070E40;
  if (!qword_100070E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070E40);
  }

  return result;
}

unint64_t sub_1000245D0()
{
  result = qword_100070E48;
  if (!qword_100070E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070E48);
  }

  return result;
}

uint64_t sub_100024624(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return _swift_task_switch(sub_100024648, 0, 0);
}

uint64_t sub_100024648()
{
  v1 = v0[3];
  sub_10004C084();
  *v1 = sub_100025568(v0[2]);
  v1[1] = v2;
  v3 = v0[1];

  return v3();
}

uint64_t sub_1000246BC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100022A38();
  *v4 = v2;
  v4[1] = sub_100003DE4;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100024770()
{
  result = qword_100070E50;
  if (!qword_100070E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070E50);
  }

  return result;
}

unint64_t sub_1000247C8()
{
  result = qword_100070E58;
  if (!qword_100070E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070E58);
  }

  return result;
}

uint64_t sub_10002481C@<X0>(uint64_t *a1@<X8>)
{
  sub_1000057AC(&qword_100070E98, &qword_1000511E8);
  sub_10004C0F4();
  sub_10004C0E4();
  result = sub_10004C0A4();
  *a1 = result;
  return result;
}

uint64_t sub_100024894(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100022A38();
  *v5 = v2;
  v5[1] = sub_100005F1C;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100024948(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100022A38();
  *v4 = v2;
  v4[1] = sub_100005F00;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1000249FC()
{
  result = qword_100070E60;
  if (!qword_100070E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070E60);
  }

  return result;
}

unint64_t sub_100024A54()
{
  result = qword_100070E68;
  if (!qword_100070E68)
  {
    sub_100002C4C(&unk_100070E70, qword_100050FD0);
    sub_1000237F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070E68);
  }

  return result;
}

uint64_t sub_100024AD8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100023680();
  *v5 = v2;
  v5[1] = sub_100005EFC;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t getEnumTagSinglePayload for SettingsEventsDefaultAlertTimeType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SettingsEventsDefaultAlertTimeType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100024D58@<X0>(uint64_t a1@<X8>)
{
  v10[1] = a1;
  v1 = sub_10004C704();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1000057AC(&qword_100070ED0, &qword_1000507C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v10 - v4;
  v10[0] = "ert times for events.";
  v6 = [objc_opt_self() mainBundle];
  v9._countAndFlagsBits = 0x800000010005AED0;
  v11._countAndFlagsBits = 0xD00000000000001BLL;
  v11._object = 0x800000010005AEB0;
  v12.value._countAndFlagsBits = 0;
  v12.value._object = 0;
  v7.super.isa = v6;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  sub_10004C534(v11, v12, v7, v13, 0xD000000000000036, v9);

  swift_getKeyPath();
  sub_10004C6F4();
  sub_100022720();
  sub_100026048();
  sub_1000245D0();
  sub_10004C714();
  sub_10004C6A4();
  sub_100005D70(&qword_100070EE0, &qword_100070ED0, &qword_1000507C0, &protocol conformance descriptor for ControlPicker<A>);
  sub_10004C6C4();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100025050@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10004C554();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004C5A4();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10004C754();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004C564();
  __chkstk_darwin(v8 - 8);
  sub_10004C744();
  sub_10004C594();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_10004C574();
  result = sub_10004C6D4();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_100025284@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10004C564();
  __chkstk_darwin(v4 - 8);
  sub_100021E2C(*a1, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_10004C6D4();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

uint64_t sub_10002531C(unsigned __int8 *a1)
{
  v2 = sub_10004C564();
  __chkstk_darwin(v2 - 8);
  sub_100021E2C(*a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10004C6D4();
  return sub_10004C734();
}

uint64_t sub_1000253E4(uint64_t a1, double a2)
{
  if (sub_10004C524() == a2)
  {
    return 0;
  }

  if (a2 == 0.0)
  {
    return 1;
  }

  if (a2 == -300.0)
  {
    return 2;
  }

  if (a2 == -600.0)
  {
    return 3;
  }

  if (a2 == -900.0)
  {
    return 4;
  }

  if (a2 == -1800.0)
  {
    return 5;
  }

  if (a2 == -3600.0)
  {
    return 6;
  }

  if (a2 == -7200.0)
  {
    return 7;
  }

  if (a2 == -572400.0)
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  if (a2 == -172800.0)
  {
    v5 = 9;
  }

  else
  {
    v5 = v4;
  }

  if (a2 == -86400.0)
  {
    return 8;
  }

  else
  {
    return v5;
  }
}