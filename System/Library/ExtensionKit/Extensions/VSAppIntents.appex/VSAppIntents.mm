uint64_t sub_100001360()
{
  v0 = sub_100006D5C();
  sub_1000013FC(v0, qword_100010280);
  v1 = sub_100001460(v0, qword_100010280);
  *v1 = sub_100001498();
  v2 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t *sub_1000013FC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100001460(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100001498()
{
  result = qword_100010068;
  if (!qword_100010068)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100010068);
  }

  return result;
}

uint64_t sub_1000014E4()
{

  return _swift_task_switch(sub_100001570, 0, 0);
}

uint64_t sub_100001570()
{
  v1 = [objc_opt_self() sharedAccountStore];
  v0[19] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1000016E4;
  v2 = swift_continuation_init();
  v0[17] = sub_100001BF4(&qword_100010078, qword_100007238);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100001974;
  v0[13] = &unk_10000C990;
  v0[14] = v2;
  [v1 fetchAccountsWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000016E4()
{

  return _swift_task_switch(sub_1000017F0, 0, 0);
}

uint64_t sub_1000017F0()
{
  v1 = *(v0 + 144);

  *(v0 + 80) = 0;
  v2 = [v1 unwrappedWithError:v0 + 80];
  v3 = *(v0 + 80);
  if (v2)
  {
    sub_100001FC8();
    v4 = v3;
    result = sub_100006E5C();
    __break(1u);
  }

  else
  {
    v6 = v3;
    sub_100006D3C();

    swift_willThrow();
    v7 = *(v0 + 8);

    return v7();
  }

  return result;
}

uint64_t sub_100001974(uint64_t a1, void *a2)
{
  v3 = sub_100002014((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

void sub_1000019D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100001BF4(&qword_100010070, &qword_100007228);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  v8 = objc_allocWithZone(VSIdentityProviderFetchOperation);
  v9 = sub_100006E2C();
  v10 = [v8 initWithIdentityProviderID:v9];

  (*(v5 + 16))(v7, a1, v4);
  v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  (*(v5 + 32))(v12 + v11, v7, v4);
  aBlock[4] = sub_100001E3C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100001EAC;
  aBlock[3] = &unk_10000C968;
  v13 = _Block_copy(aBlock);
  v14 = v10;

  [v14 setCompletionBlock:v13];
  _Block_release(v13);

  [v14 start];
}

uint64_t sub_100001BF4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001C3C(void *a1)
{
  v1 = [a1 result];
  v2 = [v1 object];

  if (v2)
  {
    v8 = 0;
    v3 = [v2 unwrappedWithError:&v8];

    v4 = v8;
    if (!v3)
    {
      v5 = v4;
      v6 = sub_100006D3C();

      swift_willThrow();
      v8 = v6;
      sub_100001BF4(&qword_100010070, &qword_100007228);
      return sub_100006E6C();
    }
  }

  else
  {
    v3 = 0;
  }

  v8 = v3;
  sub_100001BF4(&qword_100010070, &qword_100007228);
  return sub_100006E7C();
}

uint64_t sub_100001D6C()
{
  v1 = sub_100001BF4(&qword_100010070, &qword_100007228);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100001E3C()
{
  sub_100001BF4(&qword_100010070, &qword_100007228);
  v1 = *(v0 + 16);

  return sub_100001C3C(v1);
}

uint64_t sub_100001EAC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100001EF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100001F18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100001F7C(void *a1)
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

unint64_t sub_100001FC8()
{
  result = qword_100010080;
  if (!qword_100010080)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100010080);
  }

  return result;
}

void *sub_100002014(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100002058(uint64_t a1)
{
  v2 = sub_1000021AC();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100002104();
  sub_100006DBC();
  return 0;
}

unint64_t sub_100002104()
{
  result = qword_100010088;
  if (!qword_100010088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010088);
  }

  return result;
}

unint64_t sub_1000021AC()
{
  result = qword_100010090;
  if (!qword_100010090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010090);
  }

  return result;
}

uint64_t sub_100002210@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = sub_100001BF4(&qword_100010098, &qword_100007330);
  __chkstk_darwin(v2 - 8);
  v39 = &v36 - v3;
  v4 = sub_100001BF4(&qword_1000100A0, &qword_100007338);
  __chkstk_darwin(v4 - 8);
  v42 = &v36 - v5;
  v6 = sub_100006DAC();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100006D5C();
  v37 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100006E1C();
  __chkstk_darwin(v10 - 8);
  v36 = sub_100006D6C();
  v11 = *(v36 - 8);
  v12 = __chkstk_darwin(v36);
  v38 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v41 = &v36 - v14;
  v15 = sub_100006DFC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18, v1, v15);
  v19 = (*(v16 + 88))(v18, v15);
  if (v19 == enum case for VSDestination.signIn(_:))
  {
    sub_100006E0C();
    if (qword_100010048 != -1)
    {
      swift_once();
    }

    v20 = sub_100001460(v7, qword_100010280);
    v21 = *(v37 + 2);
    v21(v9, v20, v7);
    sub_100006D9C();
    sub_100006D8C();
    sub_100006E0C();
    v37 = v21;
    v21(v9, v20, v7);
    sub_100006D9C();
    v22 = v42;
    sub_100006D7C();
    (*(v11 + 56))(v22, 0, 1, v36);
    if (qword_100010060 != -1)
    {
      swift_once();
    }

    v23 = sub_100006C0C();
    v24 = sub_100001460(v23, qword_1000102C8);
    v25 = *(v23 - 8);
    v26 = v39;
    (*(v25 + 16))(v39, v24, v23);
    (*(v25 + 56))(v26, 0, 1, v23);
    sub_100006E0C();
    v37(v9, v20, v7);
    sub_100006D9C();
LABEL_13:
    sub_100006D7C();
    return sub_100006C1C();
  }

  if (v19 == enum case for VSDestination.signOut(_:))
  {
    sub_100006E0C();
    v27 = v37;
    if (qword_100010048 != -1)
    {
      swift_once();
    }

    v28 = sub_100001460(v7, qword_100010280);
    v29 = *(v27 + 2);
    v29(v9, v28, v7);
    sub_100006D9C();
    sub_100006D8C();
    sub_100006E0C();
    v29(v9, v28, v7);
    sub_100006D9C();
    v30 = v42;
    sub_100006D7C();
    (*(v11 + 56))(v30, 0, 1, v36);
    if (qword_100010060 != -1)
    {
      swift_once();
    }

    v31 = sub_100006C0C();
    v32 = sub_100001460(v31, qword_1000102C8);
    v33 = *(v31 - 8);
    v34 = v39;
    (*(v33 + 16))(v39, v32, v31);
    (*(v33 + 56))(v34, 0, 1, v31);
    sub_100006E0C();
    v29(v9, v28, v7);
    sub_100006D9C();
    goto LABEL_13;
  }

  v43 = 0;
  v44 = 0xE000000000000000;
  sub_100006E8C(24);
  v45._countAndFlagsBits = 0xD000000000000016;
  v45._object = 0x8000000100007F00;
  sub_100006E4C(v45);
  sub_100006EAC();
  result = sub_100006EBC();
  __break(1u);
  return result;
}

uint64_t static VSDestination.entityIdentifier(for:)(uint64_t a1, uint64_t a2)
{

  return sub_100006DDC();
}

uint64_t type metadata accessor for TVProviderDeepLinks(uint64_t a1)
{
  result = qword_1000101C8;
  if (!qword_1000101C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100002C6C()
{
  v0 = sub_100001BF4(&qword_1000100A0, &qword_100007338);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_100006D6C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_100006CEC();
  sub_1000013FC(v5, qword_100010298);
  sub_100001460(v5, qword_100010298);
  sub_100006D4C();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_100006CDC();
}

uint64_t sub_100002DE0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100002E00, 0, 0);
}

uint64_t sub_100002E00()
{
  v1 = *(v0 + 16);
  *v1 = _s24VideoSubscriberAccountUI13VSDestinationO12VSAppIntentsE22entityIdentifierStringSSvg_0();
  v1[1] = v2;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100002E68(uint64_t a1)
{
  v1 = sub_100001BF4(&qword_100010268, &qword_100007A68);
  __chkstk_darwin(v1);
  sub_100006838(&qword_1000100A8, type metadata accessor for TVProviderDeepLinks, &unk_1000073B8);
  sub_100006C9C();
  v3._object = 0x80000001000082E0;
  v3._countAndFlagsBits = 0xD00000000000003DLL;
  sub_100006C8C(v3);
  swift_getKeyPath();
  sub_100001BF4(&qword_100010270, &qword_100007A90);
  sub_100006A18(&qword_100010278, &qword_100010250, &qword_100007A38, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  sub_100006C7C();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  sub_100006C8C(v4);
  return sub_100006CAC();
}

unint64_t sub_100003144()
{
  result = qword_1000100D0;
  if (!qword_1000100D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100D0);
  }

  return result;
}

uint64_t sub_1000031E0(uint64_t a1)
{
  sub_100006838(&qword_100010238, type metadata accessor for TVProviderDeepLinks, &unk_100007350);
  v2 = sub_100006C4C();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1000033E4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100006DFC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1000034CC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003514(uint64_t a1)
{
  v2 = sub_100006838(&qword_1000100A8, type metadata accessor for TVProviderDeepLinks, &unk_1000073B8);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_1000035DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000036A0;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_1000036A0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100003794(uint64_t a1)
{
  v2 = sub_100006838(&qword_1000100F8, type metadata accessor for TVProviderDeepLinks, &unk_100007598);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100003814()
{
  result = qword_100010120;
  if (!qword_100010120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010120);
  }

  return result;
}

unint64_t sub_10000386C()
{
  result = qword_100010128;
  if (!qword_100010128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010128);
  }

  return result;
}

uint64_t sub_1000038C0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100006A80;

  return sub_100005DA0(a1);
}

uint64_t sub_100003968(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100006A60;

  return sub_1000051D4();
}

uint64_t sub_100003A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100003ACC;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100003ACC(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_100003BCC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100006A60;

  return sub_100004E8C();
}

unint64_t sub_100003C78()
{
  result = qword_100010130;
  if (!qword_100010130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010130);
  }

  return result;
}

unint64_t sub_100003CD0()
{
  result = qword_100010138;
  if (!qword_100010138)
  {
    sub_1000034CC(&qword_100010140, qword_1000076B0);
    sub_100006838(&qword_1000100F0, type metadata accessor for TVProviderDeepLinks, &unk_100007538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010138);
  }

  return result;
}

uint64_t sub_100003D84(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100003144();
  *v5 = v2;
  v5[1] = sub_1000036A0;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100003E58()
{
  v1 = *(v0 + 16);
  v2 = enum case for VSDestination.signIn(_:);
  v3 = sub_100006DFC();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = type metadata accessor for TVProviderDeepLinks(0);
  v5 = *(v4 + 20);
  sub_100001BF4(&qword_100010250, &qword_100007A38);
  swift_allocObject();
  *(v1 + v5) = sub_100006D1C();
  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100003F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_10000404C;

  return sub_1000060C8(a2, a3);
}

uint64_t sub_10000404C(uint64_t a1)
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

unint64_t sub_100004160()
{
  result = qword_100010148;
  if (!qword_100010148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010148);
  }

  return result;
}

uint64_t sub_1000041B4()
{
  v0 = sub_100006D6C();
  sub_1000013FC(v0, qword_1000102B0);
  sub_100001460(v0, qword_1000102B0);
  return sub_100006D4C();
}

uint64_t sub_10000423C(uint64_t a1)
{
  v2 = type metadata accessor for TVProviderDeepLinks(0);
  __chkstk_darwin(v2 - 8);
  sub_100006880(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100006BDC();
  return sub_1000068E4(a1);
}

uint64_t (*sub_1000042CC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100006BBC();
  return sub_100004340;
}

void sub_100004340(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_10000438C()
{
  result = qword_100010150;
  if (!qword_100010150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010150);
  }

  return result;
}

uint64_t sub_1000043E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006790();
  v5 = sub_100006838(&qword_100010238, type metadata accessor for TVProviderDeepLinks, &unk_100007350);

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_10000448C()
{
  result = qword_100010158;
  if (!qword_100010158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010158);
  }

  return result;
}

unint64_t sub_1000044E4()
{
  result = qword_100010160;
  if (!qword_100010160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010160);
  }

  return result;
}

unint64_t sub_10000453C()
{
  result = qword_100010168;
  if (!qword_100010168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010168);
  }

  return result;
}

uint64_t sub_100004618@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
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
  v9 = sub_100001460(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_1000046E0(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_100006790();
  v6 = sub_1000067E4();
  v7 = sub_100006838(&qword_100010238, type metadata accessor for TVProviderDeepLinks, &unk_100007350);
  *v4 = v2;
  v4[1] = sub_1000047DC;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_1000047DC()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_1000048E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000063E0();
  *a1 = result;
  return result;
}

uint64_t sub_10000490C(uint64_t a1)
{
  v2 = sub_10000438C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10000497C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100006DFC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100004A4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100006DFC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_100004B04(uint64_t a1)
{
  sub_100006DFC();
  if (v1 <= 0x3F)
  {
    sub_100004B88(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100004B88(uint64_t a1)
{
  if (!qword_1000101D8)
  {
    type metadata accessor for TVProviderDeepLinks(255);
    sub_100006838(&qword_1000100A8, type metadata accessor for TVProviderDeepLinks, &unk_1000073B8);
    sub_100004C40();
    v1 = sub_100006D2C();
    if (!v2)
    {
      atomic_store(v1, &qword_1000101D8);
    }
  }
}

unint64_t sub_100004C40()
{
  result = qword_1000101E0;
  if (!qword_1000101E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101E0);
  }

  return result;
}

void *sub_100004C94(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100004CB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100004CB4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100001BF4(&qword_100010248, &qword_100007A28);
  v10 = *(type metadata accessor for TVProviderDeepLinks(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for TVProviderDeepLinks(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_100004E8C()
{
  v1 = sub_100006DFC();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = type metadata accessor for TVProviderDeepLinks(0);
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();

  return _swift_task_switch(sub_100004FA4, 0, 0);
}

uint64_t sub_100004FA4()
{
  v1 = sub_100006DCC();
  v2 = *(v1 + 16);
  if (v2)
  {
    v19 = v0[5];
    v20 = v0[6];
    v3 = v0[3];
    sub_100004C94(0, v2, 0);
    v4 = *(v3 + 16);
    v3 += 16;
    v5 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v17 = *(v3 + 56);
    v18 = v4;
    v6 = (v3 - 8);
    do
    {
      v7 = v0[7];
      v8 = v0[4];
      v9 = v0[2];
      v18(v8, v5, v9);
      v18(v7, v8, v9);
      v10 = *(v19 + 20);
      sub_100001BF4(&qword_100010250, &qword_100007A38);
      swift_allocObject();
      v11 = sub_100006D1C();
      (*v6)(v8, v9);
      *(v7 + v10) = v11;
      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        sub_100004C94((v12 > 1), v13 + 1, 1);
      }

      v14 = v0[7];
      _swiftEmptyArrayStorage[2] = v13 + 1;
      sub_1000069A8(v14, _swiftEmptyArrayStorage + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v13);
      v5 += v17;
      --v2;
    }

    while (v2);
  }

  v15 = v0[1];

  return v15(_swiftEmptyArrayStorage);
}

uint64_t sub_1000051D4()
{
  v1 = sub_100006DFC();
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();
  v2 = type metadata accessor for TVProviderDeepLinks(0);
  v0[6] = v2;
  v0[7] = *(v2 - 8);
  v0[8] = swift_task_alloc();
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_100005318;

  return sub_1000014E4();
}

uint64_t sub_100005318(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 80) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_100005474, 0, 0);
  }
}

uint64_t sub_100005474(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, void (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v9 = v8[10];
  if (v9 >> 62)
  {
    v10 = sub_100006ECC();
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_12:

    goto LABEL_13;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v11 = sub_100006E9C();
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, a2, a3, a4, a5, a6, a7, a8);
    }

    v11 = *(v8[10] + 32);
  }

  v8[11] = v11;

  v12 = [v11 identityProviderID];
  v13 = [v12 object];
  v8[12] = v13;

  if (v13)
  {
    v14 = sub_100006E3C();
    v16 = v15;
    v8[13] = v15;
    v17 = swift_task_alloc();
    v8[14] = v17;
    *(v17 + 16) = v14;
    *(v17 + 24) = v16;
    v18 = swift_task_alloc();
    v8[15] = v18;
    a8 = sub_100001BF4(&qword_100010260, &qword_100007A58);
    *v18 = v8;
    v18[1] = sub_1000058B4;
    a6 = sub_100006A10;
    v10 = (v8 + 2);
    a5 = 0x80000001000082A0;
    a2 = 0;
    a3 = 0;
    a4 = 0xD00000000000001CLL;
    a7 = v17;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, a2, a3, a4, a5, a6, a7, a8);
  }

LABEL_13:
  v19 = v8[3];
  v20 = v8[4];
  sub_100001BF4(&qword_100010258, &qword_100007A50);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v40 = *(v20 + 72);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100007340;
  v23 = v22 + v21;
  (*(v20 + 104))(v22 + v21, enum case for VSDestination.signIn(_:), v19);
  v24 = *(v22 + 16);
  if (v24)
  {
    v38 = v8[6];
    v39 = v8[7];
    v25 = v8[4];
    sub_100004C94(0, v24, 0);
    v37 = *(v25 + 16);
    v26 = (v25 + 8);
    do
    {
      v27 = v8[8];
      v28 = v8[5];
      v29 = v8[3];
      v37(v28, v23, v29);
      v37(v27, v28, v29);
      v30 = *(v38 + 20);
      sub_100001BF4(&qword_100010250, &qword_100007A38);
      swift_allocObject();
      v31 = sub_100006D1C();
      (*v26)(v28, v29);
      *(v27 + v30) = v31;
      v33 = _swiftEmptyArrayStorage[2];
      v32 = _swiftEmptyArrayStorage[3];
      if (v33 >= v32 >> 1)
      {
        sub_100004C94((v32 > 1), v33 + 1, 1);
      }

      v34 = v8[8];
      _swiftEmptyArrayStorage[2] = v33 + 1;
      sub_1000069A8(v34, _swiftEmptyArrayStorage + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v33);
      v23 += v40;
      --v24;
    }

    while (v24);
  }

  v35 = v8[1];

  return v35(_swiftEmptyArrayStorage);
}

uint64_t sub_1000058B4()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_100005D0C;
  }

  else
  {

    v2 = sub_1000059D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000059D8()
{
  v1 = v0[2];
  v3 = v0[11];
  v2 = v0[12];
  if (v1)
  {
    v4 = v0[3];
    v5 = v0[4];
    v6 = v0;
    sub_100001BF4(&qword_100010258, &qword_100007A50);
    v7 = *(v5 + 80);
    v29 = *(v5 + 72);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100007340;
    (*(v5 + 104))(v8 + ((v7 + 32) & ~v7), enum case for VSDestination.signOut(_:), v4);

    LODWORD(v1) = v7;
    v9 = *(v8 + 16);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_9:

    v10 = v6;
    goto LABEL_10;
  }

  v22 = v0[3];
  v23 = v0[4];
  v6 = v0;
  sub_100001BF4(&qword_100010258, &qword_100007A50);
  v1 = *(v23 + 80);
  v29 = *(v23 + 72);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100007340;
  (*(v23 + 104))(v8 + ((v1 + 32) & ~v1), enum case for VSDestination.signIn(_:), v22);
  v9 = *(v8 + 16);
  if (!v9)
  {
    goto LABEL_9;
  }

LABEL_3:
  v10 = v6;
  v27 = v6[6];
  v28 = v6[7];
  v11 = v6[4];
  sub_100004C94(0, v9, 0);
  v26 = *(v11 + 16);
  v12 = v8 + ((v1 + 32) & ~v1);
  v13 = (v11 + 8);
  do
  {
    v14 = v10[8];
    v15 = v10[5];
    v16 = v10[3];
    v26(v15, v12, v16);
    v26(v14, v15, v16);
    v17 = *(v27 + 20);
    sub_100001BF4(&qword_100010250, &qword_100007A38);
    swift_allocObject();
    v18 = sub_100006D1C();
    (*v13)(v15, v16);
    *(v14 + v17) = v18;
    v20 = _swiftEmptyArrayStorage[2];
    v19 = _swiftEmptyArrayStorage[3];
    if (v20 >= v19 >> 1)
    {
      sub_100004C94((v19 > 1), v20 + 1, 1);
    }

    v21 = v10[8];
    _swiftEmptyArrayStorage[2] = v20 + 1;
    sub_1000069A8(v21, _swiftEmptyArrayStorage + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v20);
    v12 += v29;
    --v9;
  }

  while (v9);

LABEL_10:

  v24 = v10[1];

  return v24(_swiftEmptyArrayStorage);
}

uint64_t sub_100005D0C()
{
  v2 = v0[11];
  v1 = v0[12];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100005DA0(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_100006DFC();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for TVProviderDeepLinks(0);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_100005EBC, 0, 0);
}

uint64_t sub_100005EBC()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v19 = v0[6];
    v20 = v0[7];
    v3 = v0[4];
    sub_100004C94(0, v2, 0);
    v4 = *(v3 + 16);
    v3 += 16;
    v5 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v17 = *(v3 + 56);
    v18 = v4;
    v6 = (v3 - 8);
    do
    {
      v7 = v0[8];
      v8 = v0[5];
      v9 = v0[3];
      v18(v8, v5, v9);
      v18(v7, v8, v9);
      v10 = *(v19 + 20);
      sub_100001BF4(&qword_100010250, &qword_100007A38);
      swift_allocObject();
      v11 = sub_100006D1C();
      (*v6)(v8, v9);
      *(v7 + v10) = v11;
      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        sub_100004C94((v12 > 1), v13 + 1, 1);
      }

      v14 = v0[8];
      _swiftEmptyArrayStorage[2] = v13 + 1;
      sub_1000069A8(v14, _swiftEmptyArrayStorage + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v13);
      v5 += v17;
      --v2;
    }

    while (v2);
  }

  v15 = v0[1];

  return v15(_swiftEmptyArrayStorage);
}

uint64_t sub_1000060C8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_100001BF4(&qword_100010240, &qword_100007A20);
  v2[4] = swift_task_alloc();
  v3 = sub_100006DFC();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000061C0, 0, 0);
}

uint64_t sub_1000061C0()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];

  sub_100006DDC();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100006940(v0[4]);
    v4 = _swiftEmptyArrayStorage;
  }

  else
  {
    v6 = v0[6];
    v5 = v0[7];
    v7 = v0[5];
    (*(v6 + 32))(v5, v0[4], v7);
    sub_100001BF4(&qword_100010248, &qword_100007A28);
    v8 = (type metadata accessor for TVProviderDeepLinks(0) - 8);
    v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
    v4 = swift_allocObject();
    *(v4 + 1) = xmmword_100007340;
    v10 = v4 + v9;
    (*(v6 + 16))(v10, v5, v7);
    v11 = v8[7];
    sub_100001BF4(&qword_100010250, &qword_100007A38);
    swift_allocObject();
    *&v10[v11] = sub_100006D1C();
    (*(v6 + 8))(v5, v7);
  }

  v12 = v0[1];

  return v12(v4);
}

uint64_t sub_1000063E0()
{
  v22 = sub_100006CBC();
  v0 = *(v22 - 8);
  __chkstk_darwin(v22);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100001BF4(&qword_100010210, &qword_1000079F8);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v21 - v7;
  v9 = sub_100001BF4(&qword_100010218, &unk_100007A00);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - v10;
  v12 = sub_100001BF4(&qword_1000100A0, &qword_100007338);
  __chkstk_darwin(v12 - 8);
  v14 = &v21 - v13;
  v15 = sub_100006D6C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v21 = sub_100001BF4(&qword_100010220, &qword_100007A10);
  sub_100006D4C();
  (*(v16 + 56))(v14, 1, 1, v15);
  v17 = type metadata accessor for TVProviderDeepLinks(0);
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  v18 = sub_100006BAC();
  v19 = *(*(v18 - 8) + 56);
  v19(v8, 1, 1, v18);
  v19(v6, 1, 1, v18);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v22);
  sub_100006838(&qword_1000100A8, type metadata accessor for TVProviderDeepLinks, &unk_1000073B8);
  return sub_100006BEC();
}

unint64_t sub_100006790()
{
  result = qword_100010228;
  if (!qword_100010228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010228);
  }

  return result;
}

unint64_t sub_1000067E4()
{
  result = qword_100010230;
  if (!qword_100010230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010230);
  }

  return result;
}

uint64_t sub_100006838(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100006880(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TVProviderDeepLinks(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000068E4(uint64_t a1)
{
  v2 = type metadata accessor for TVProviderDeepLinks(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100006940(uint64_t a1)
{
  v2 = sub_100001BF4(&qword_100010240, &qword_100007A20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000069A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TVProviderDeepLinks(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006A18(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000034CC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100006A84()
{
  v0 = sub_100006C0C();
  sub_1000013FC(v0, qword_1000102C8);
  sub_100001460(v0, qword_1000102C8);
  return sub_100006BFC();
}