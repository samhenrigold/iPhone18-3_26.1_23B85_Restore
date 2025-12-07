uint64_t sub_100001430@<X0>(uint64_t a1@<X8>)
{
  sub_100009FEC();
  result = sub_10000A00C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10000149C@<X0>(uint64_t a3@<X8>)
{
  sub_10000180C();

  result = sub_10000A01C();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_100001508(void *a1, uint64_t a2)
{
  sub_10000180C();

  sub_10000A01C();
  return sub_10000A05C();
}

uint64_t sub_1000015A0()
{
  v0 = sub_10000A03C();
  __chkstk_darwin(v0 - 8);
  swift_getKeyPath();
  sub_10000A02C();
  sub_100001710();
  sub_100001764();
  sub_1000017B8();
  return sub_10000A04C();
}

unint64_t sub_100001710()
{
  result = qword_100014128;
  if (!qword_100014128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014128);
  }

  return result;
}

unint64_t sub_100001764()
{
  result = qword_100014130;
  if (!qword_100014130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014130);
  }

  return result;
}

unint64_t sub_1000017B8()
{
  result = qword_100014138;
  if (!qword_100014138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014138);
  }

  return result;
}

unint64_t sub_10000180C()
{
  result = qword_100014140;
  if (!qword_100014140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014140);
  }

  return result;
}

unint64_t sub_100001864()
{
  result = qword_100014148;
  if (!qword_100014148)
  {
    sub_1000018C8(&qword_100014150, &unk_10000A460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014148);
  }

  return result;
}

uint64_t sub_1000018C8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100001914()
{
  result = qword_100014168;
  if (!qword_100014168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014168);
  }

  return result;
}

uint64_t sub_1000019BC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000095B4(&qword_100014330, &qword_10000B148);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_1000095B4(&qword_100014308, &qword_10000B138);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_100009FCC();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  __chkstk_darwin(v10);

  sub_100009FBC();
  sub_100009FBC();
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_100009E6C();
  v11 = sub_100009E7C();
  (*(*(v11 - 8) + 56))(v4, 0, 1, v11);
  sub_1000095B4(&qword_100014338, &qword_10000B150);
  *(swift_allocObject() + 16) = xmmword_10000A470;
  sub_100009FBC();
  sub_100009FBC();
  return sub_100009E8C();
}

uint64_t sub_100001C94()
{
  v0 = sub_1000095B4(&qword_100014308, &qword_10000B138);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_100009FCC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_100009F5C();
  sub_100009730(v5, qword_100015B00);
  sub_1000096F8(v5, qword_100015B00);
  sub_100009FBC();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_100009F4C();
}

uint64_t sub_100001E04()
{
  v0 = sub_100009FCC();
  sub_100009730(v0, qword_100015B18);
  sub_1000096F8(v0, qword_100015B18);
  return sub_100009FBC();
}

uint64_t sub_100001E68()
{
  v0 = sub_1000095B4(&qword_100014390, &qword_10000B1F0);
  sub_100009730(v0, qword_100015B30);
  v1 = sub_1000096F8(v0, qword_100015B30);
  sub_100009E4C();
  v2 = sub_100009E5C();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100001F28()
{
  result = swift_getKeyPath();
  qword_100015B48 = result;
  return result;
}

uint64_t sub_100001F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  return _swift_task_switch(sub_100001F7C, 0, 0);
}

uint64_t sub_100001F7C()
{
  sub_100009E0C();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v0 + 136) = v1;
  *(v0 + 144) = v2;
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  sub_100009E0C();
  *(v0 + 225) = *(v0 + 224);
  if (qword_1000140F0 != -1)
  {
    swift_once();
  }

  v3 = qword_100015B48;
  *(v0 + 152) = qword_100015B48;

  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  v5 = sub_100009938(&qword_100014370, &qword_100014378, &qword_10000B1A8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *(v0 + 168) = v5;
  *v4 = v0;
  v4[1] = sub_1000020E8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 225, v3, &type metadata for Bool, v5);
}

uint64_t sub_1000020E8()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_100002534;
  }

  else
  {
    v2 = sub_100002258;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100002258(uint64_t a1)
{
  sub_100009E0C();
  v2 = v1[8];
  v3 = v1[9];
  v4 = v1[10];
  v1[23] = v3;
  v1[24] = v4;
  v1[11] = v2;
  v1[12] = v3;
  v1[13] = v4;
  v5 = qword_100015B48;
  v1[25] = qword_100015B48;

  v6 = swift_task_alloc();
  v1[26] = v6;
  *v6 = v1;
  v6[1] = sub_10000233C;
  v7 = v1[21];

  return AppEntity._value<A, B>(for:)(v1 + 226, v5, v7);
}

uint64_t sub_10000233C()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_10000254C;
  }

  else
  {
    v2 = sub_1000024AC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000024AC()
{
  *(v0 + 227) = *(v0 + 226);
  sub_100009A58();
  sub_100009DEC();
  v1 = *(v0 + 8);

  return v1();
}

__n128 sub_100002564@<Q0>(uint64_t a2@<X8>)
{
  sub_100009E0C();
  result = v5;
  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1000025A8(void *a1)
{

  sub_100009E1C();
}

uint64_t (*sub_100002610(uint64_t *a1))()
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
  *(v2 + 32) = sub_100009DFC();
  return sub_100009AEC;
}

uint64_t sub_100002684@<X0>(_BYTE *a2@<X8>)
{
  result = sub_100009E0C();
  *a2 = v4;
  return result;
}

uint64_t (*sub_1000026F8(uint64_t *a1))()
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
  *(v2 + 32) = sub_100009DFC();
  return sub_100009AEC;
}

unint64_t sub_100002794()
{
  result = qword_100014180;
  if (!qword_100014180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014180);
  }

  return result;
}

unint64_t sub_1000027EC()
{
  result = qword_100014188;
  if (!qword_100014188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014188);
  }

  return result;
}

uint64_t sub_1000028E8(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100009AD8;

  return sub_100001F58(a1, v5, v4);
}

uint64_t sub_100002994@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100007468();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000029D8()
{
  result = qword_100014190;
  if (!qword_100014190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014190);
  }

  return result;
}

uint64_t sub_100002A2C(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = a1;
  v4 = *a2;
  v3 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_100002AE0;

  return sub_1000078D0(v4, v3);
}

uint64_t sub_100002AE0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 32) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_100002C14, 0, 0);
  }
}

uint64_t sub_100002C14()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = [*(v0 + 32) isOnDemandEnabled];
  }

  else
  {
    v2 = 0;
  }

  **(v0 + 16) = v2;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100002CA0(uint64_t *a1, _BYTE *a2)
{
  v4 = *a1;
  v3 = a1[1];
  *(v2 + 168) = *a2;
  v5 = swift_task_alloc();
  *(v2 + 144) = v5;
  *v5 = v2;
  v5[1] = sub_100002D58;

  return sub_1000078D0(v4, v3);
}

uint64_t sub_100002D58(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 152) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_100002E8C, 0, 0);
  }
}

uint64_t sub_100002E8C()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    [*(v0 + 152) setOnDemandEnabled:*(v0 + 168)];
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_100002FEC;
    v2 = swift_continuation_init();
    *(v0 + 136) = sub_1000095B4(&qword_100014380, &qword_10000B1B0);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1000031D0;
    *(v0 + 104) = &unk_100010C58;
    *(v0 + 112) = v2;
    [v1 saveToPreferencesWithCompletionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_100002FEC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_100003160;
  }

  else
  {
    v2 = sub_1000030FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000030FC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100003160()
{
  v1 = *(v0 + 152);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000031D0(uint64_t a1, void *a2)
{
  v3 = sub_1000098A8((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_1000095B4(&qword_100014368, &qword_10000B190);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_10000327C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_1000098A8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000095B4(&qword_100014368, &qword_10000B190);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_1000098EC();
    **(*(v4 + 64) + 40) = sub_10000A07C();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_10000335C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100003400;

  return sub_100008168();
}

uint64_t sub_100003400(uint64_t a1)
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

unint64_t sub_100003518()
{
  result = qword_100014198;
  if (!qword_100014198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014198);
  }

  return result;
}

unint64_t sub_100003570()
{
  result = qword_1000141A0;
  if (!qword_1000141A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000141A0);
  }

  return result;
}

uint64_t sub_1000035C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100009B28;

  return sub_100008824(a1);
}

uint64_t sub_10000366C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000017B8();
  *v5 = v2;
  v5[1] = sub_100009AD8;

  return EnumerableEntityQuery.suggestedEntities()(a1, a2, v6);
}

uint64_t sub_100003720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000037E0;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_1000037E0(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_1000038E4()
{
  result = qword_1000141A8;
  if (!qword_1000141A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000141A8);
  }

  return result;
}

unint64_t sub_100003938()
{
  result = qword_1000141B0;
  if (!qword_1000141B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000141B0);
  }

  return result;
}

unint64_t sub_100003990()
{
  result = qword_1000141B8;
  if (!qword_1000141B8)
  {
    sub_1000018C8(&qword_1000141C0, qword_10000A6A8);
    sub_100003938();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000141B8);
  }

  return result;
}

uint64_t sub_100003A14(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000029D8();
  *v5 = v2;
  v5[1] = sub_100009AD8;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100003AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100009AD8;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_100003B80()
{
  result = qword_1000141C8;
  if (!qword_1000141C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000141C8);
  }

  return result;
}

unint64_t sub_100003BD8()
{
  result = qword_1000141D0;
  if (!qword_1000141D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000141D0);
  }

  return result;
}

unint64_t sub_100003C30()
{
  result = qword_1000141D8;
  if (!qword_1000141D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000141D8);
  }

  return result;
}

unint64_t sub_100003C9C()
{
  result = qword_1000141E0;
  if (!qword_1000141E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000141E0);
  }

  return result;
}

uint64_t sub_100003CF0(uint64_t a1)
{
  v2 = sub_100001710();

  return _EntityURLRepresentation.init(stringLiteral:)(0xD00000000000004DLL, 0x800000010000BF70, a1, v2);
}

unint64_t sub_100003D58()
{
  result = qword_1000141E8;
  if (!qword_1000141E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000141E8);
  }

  return result;
}

unint64_t sub_100003DB0()
{
  result = qword_1000141F0;
  if (!qword_1000141F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000141F0);
  }

  return result;
}

unint64_t sub_100003E0C()
{
  result = qword_1000141F8;
  if (!qword_1000141F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000141F8);
  }

  return result;
}

uint64_t sub_100003E6C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_100003E78(uint64_t a1)
{
  sub_1000096A4();
  v2 = sub_100009EFC();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100003F64(uint64_t a1)
{
  v2 = sub_100001710();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100003FB4()
{
  result = qword_100014210;
  if (!qword_100014210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014210);
  }

  return result;
}

uint64_t sub_100004010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100009AD8;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_1000040D4(uint64_t a1)
{
  v2 = sub_100003E0C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100004124()
{
  result = qword_100014218;
  if (!qword_100014218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014218);
  }

  return result;
}

uint64_t sub_1000041BC()
{
  v0 = sub_1000095B4(&qword_100014308, &qword_10000B138);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_100009FCC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_100009F5C();
  sub_100009730(v5, qword_100015B50);
  sub_1000096F8(v5, qword_100015B50);
  sub_100009FBC();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_100009F4C();
}

uint64_t sub_100004330()
{
  v0 = sub_1000095B4(&qword_100014330, &qword_10000B148);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_1000095B4(&qword_100014308, &qword_10000B138);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_100009FCC();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  __chkstk_darwin(v8);
  sub_100009FBC();
  sub_100009FBC();
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_100009E6C();
  v9 = sub_100009E7C();
  (*(*(v9 - 8) + 56))(v2, 0, 1, v9);
  sub_1000095B4(&qword_100014338, &qword_10000B150);
  *(swift_allocObject() + 16) = xmmword_10000A470;
  sub_100009FBC();
  sub_100009FBC();
  return sub_100009E8C();
}

uint64_t sub_1000045F0()
{
  v0 = sub_100009FCC();
  sub_100009730(v0, qword_100015B68);
  sub_1000096F8(v0, qword_100015B68);
  return sub_100009FBC();
}

uint64_t sub_100004654()
{
  v0 = sub_1000095B4(&qword_100014390, &qword_10000B1F0);
  sub_100009730(v0, qword_100015B80);
  v1 = sub_1000096F8(v0, qword_100015B80);
  sub_100009E4C();
  v2 = sub_100009E5C();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100004714()
{
  result = swift_getKeyPath();
  qword_100015B98 = result;
  return result;
}

uint64_t sub_10000473C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return _swift_task_switch(sub_100004760, 0, 0);
}

uint64_t sub_100004760(uint64_t a1)
{
  sub_100009E0C();
  v2 = v1[14];
  v1[21] = v2;
  v1[15] = v2;
  sub_100009E0C();
  v1[5] = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v1[22] = v3;
  v1[23] = v4;
  v1[6] = v3;
  v1[7] = v4;
  if (qword_100014110 != -1)
  {
    swift_once();
  }

  v5 = qword_100015B98;
  v1[24] = qword_100015B98;

  v6 = swift_task_alloc();
  v1[25] = v6;
  v7 = sub_100009938(&qword_100014348, &qword_100014350, &qword_10000B170, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v1[26] = v7;
  *v6 = v1;
  v6[1] = sub_1000048D0;

  return AppEntity._setValue<A, B, C>(_:for:)(v1 + 5, v5, &type metadata for VPNConfigurationEntity, v7);
}

uint64_t sub_1000048D0()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_10000254C;
  }

  else
  {
    v2 = sub_100004A64;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100004A64(uint64_t a1)
{
  sub_100009E0C();
  v2 = v1[16];
  v1[17] = v2;
  v3 = qword_100015B98;
  v1[28] = v2;
  v1[29] = v3;

  v4 = swift_task_alloc();
  v1[30] = v4;
  *v4 = v1;
  v4[1] = sub_100004B3C;
  v5 = v1[26];

  return AppEntity._value<A, B>(for:)(v1 + 8, v3, v5);
}

uint64_t sub_100004B3C()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_100004D38;
  }

  else
  {
    v2 = sub_100004C90;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100004C90()
{
  v1 = v0[9];
  v2 = v0[10];
  v0[11] = v0[8];
  v0[12] = v1;
  v0[13] = v2;
  sub_100003938();
  sub_100009DEC();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100004D50@<X0>(void *a2@<X8>)
{
  result = sub_100009E0C();
  *a2 = v4;
  return result;
}

uint64_t sub_100004D8C(uint64_t *a1)
{

  sub_100009E1C();
}

uint64_t (*sub_100004DD4(uint64_t *a1))()
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
  *(v2 + 32) = sub_100009DFC();
  return sub_100009AEC;
}

__n128 sub_100004E48@<Q0>(uint64_t a2@<X8>)
{
  sub_100009E0C();
  result = v5;
  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_100004E8C(void *a1)
{

  sub_100009E1C();
}

uint64_t (*sub_100004EF4(uint64_t *a1))()
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
  *(v2 + 32) = sub_100009DFC();
  return sub_100009AEC;
}

uint64_t sub_100004F8C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  if (*a3 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

unint64_t sub_100004FF4()
{
  result = qword_100014230;
  if (!qword_100014230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014230);
  }

  return result;
}

unint64_t sub_10000504C()
{
  result = qword_100014238;
  if (!qword_100014238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014238);
  }

  return result;
}

uint64_t sub_10000515C@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1000095B4(&qword_100014390, &qword_10000B1F0);
  v7 = sub_1000096F8(v6, a2);

  return sub_10000998C(v7, a4);
}

uint64_t sub_1000051CC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005278;

  return sub_10000473C(a1, v5, v4);
}

uint64_t sub_100005278()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000536C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100008EB8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000053B4()
{
  result = qword_100014240;
  if (!qword_100014240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014240);
  }

  return result;
}

unint64_t sub_100005450()
{
  result = qword_100014258;
  if (!qword_100014258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014258);
  }

  return result;
}

uint64_t sub_1000054A4(uint64_t a1)
{
  v1[2] = a1;
  sub_100009FCC();
  v1[3] = swift_task_alloc();
  v2 = swift_task_alloc();
  v1[4] = v2;
  *v2 = v1;
  v2[1] = sub_100005574;

  return sub_100007D40();
}

uint64_t sub_100005574(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 40) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_1000056C4, 0, 0);
  }
}

uint64_t sub_1000056C4()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = [*(v0 + 40) localizedDescription];
    if (v2)
    {
      v3 = v2;
      v4 = sub_10000A06C();
      v6 = v5;

      sub_1000095B4(&qword_100014178, qword_10000A490);
      sub_100009FBC();
      sub_100009938(&qword_100014370, &qword_100014378, &qword_10000B1A8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
      v7 = sub_100009F9C();

      goto LABEL_6;
    }
  }

  sub_1000095B4(&qword_100014178, qword_10000A490);
  sub_100009FBC();
  sub_100009938(&qword_100014370, &qword_100014378, &qword_10000B1A8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v7 = sub_100009F9C();
  v6 = 0xEC00000064657463;
  v4 = 0x656E6E6F63736944;
LABEL_6:
  v8 = *(v0 + 16);
  *v8 = v4;
  v8[1] = v6;
  v8[2] = v7;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100005910(uint64_t a1, void *a2)
{
  v3 = a2[1];
  v2[3] = *a2;
  v2[4] = v3;
  v4 = swift_task_alloc();
  v2[5] = v4;
  *v4 = v2;
  v4[1] = sub_1000059E4;

  return sub_100007D40();
}

uint64_t sub_1000059E4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_100005B5C, 0, 0);
  }
}

uint64_t sub_100005B5C()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = [*(v0 + 48) connection];
    [v2 stopVPNTunnel];
  }

  v3 = *(v0 + 24) == 0x656E6E6F63736944 && *(v0 + 32) == 0xEC00000064657463;
  if (v3 || (sub_10000A0BC() & 1) != 0)
  {
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v0 + 56) = v6;
    *v6 = v0;
    v6[1] = sub_100005CF0;
    v8 = *(v0 + 24);
    v7 = *(v0 + 32);

    return sub_1000078D0(v8, v7);
  }
}

uint64_t sub_100005CF0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_100005E68, 0, 0);
  }
}

uint64_t sub_100005E68()
{
  v1 = *(v0 + 64);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = [*(v0 + 64) connection];
  *(v0 + 16) = 0;
  v3 = [v2 startVPNTunnelAndReturnError:v0 + 16];

  v4 = *(v0 + 16);
  if (v3)
  {
    v5 = v4;

LABEL_4:
    v6 = *(v0 + 8);
    goto LABEL_6;
  }

  v7 = v4;
  sub_100009FAC();

  swift_willThrow();
  v6 = *(v0 + 8);
LABEL_6:

  return v6();
}

uint64_t sub_100005FA0()
{
  v0 = sub_1000095B4(&qword_100014250, &qword_10000AB40);
  sub_100009730(v0, qword_100015BA0);
  sub_1000096F8(v0, qword_100015BA0);
  sub_100001764();
  return sub_100009EBC();
}

uint64_t sub_100006024(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_100009FCC();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000060B4, 0, 0);
}

uint64_t sub_1000060B4()
{
  v1 = *(v0 + 16);
  sub_1000095B4(&qword_100014228, qword_10000A9E0);
  sub_100009FBC();
  sub_100009938(&qword_100014348, &qword_100014350, &qword_10000B170, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  sub_100001710();
  *v1 = sub_100009F8C();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000061E8(uint64_t a1)
{
  v2 = sub_1000053B4();

  return _EntityURLRepresentation.init(stringLiteral:)(0xD00000000000004DLL, 0x800000010000BF70, a1, v2);
}

unint64_t sub_100006250()
{
  result = qword_100014260;
  if (!qword_100014260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014260);
  }

  return result;
}

unint64_t sub_1000062A8()
{
  result = qword_100014268;
  if (!qword_100014268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014268);
  }

  return result;
}

unint64_t sub_100006300()
{
  result = qword_100014270;
  if (!qword_100014270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014270);
  }

  return result;
}

uint64_t sub_100006398@<X0>(uint64_t a1@<X8>)
{
  if (qword_100014118 != -1)
  {
    swift_once();
  }

  v2 = sub_1000095B4(&qword_100014250, &qword_10000AB40);
  v3 = sub_1000096F8(v2, qword_100015BA0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10000644C(uint64_t a1)
{
  sub_100009794();
  v2 = sub_100009EFC();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_1000064BC()
{
  result = qword_100014280;
  if (!qword_100014280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014280);
  }

  return result;
}

unint64_t sub_100006514()
{
  result = qword_100014288;
  if (!qword_100014288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014288);
  }

  return result;
}

unint64_t sub_100006568()
{
  result = qword_100014290;
  if (!qword_100014290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014290);
  }

  return result;
}

unint64_t sub_1000065C0()
{
  result = qword_100014298;
  if (!qword_100014298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014298);
  }

  return result;
}

uint64_t sub_1000066A4(uint64_t a1)
{
  v2 = sub_1000053B4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000066F4()
{
  result = qword_1000142B0;
  if (!qword_1000142B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142B0);
  }

  return result;
}

uint64_t sub_10000674C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100005278;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100006810(uint64_t a1)
{
  v2 = sub_1000065C0();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100006860()
{
  result = qword_1000142B8;
  if (!qword_1000142B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142B8);
  }

  return result;
}

uint64_t sub_1000068B8()
{
  v0 = sub_100009FCC();
  sub_100009730(v0, qword_100015BB8);
  sub_1000096F8(v0, qword_100015BB8);
  return sub_100009FBC();
}

uint64_t (*sub_10000691C(uint64_t *a1))()
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
  *(v2 + 32) = sub_100009DFC();
  return sub_100006990;
}

void sub_100006994(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_1000069E4()
{
  result = qword_1000142C0;
  if (!qword_1000142C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142C0);
  }

  return result;
}

unint64_t sub_100006A3C()
{
  result = qword_1000142C8;
  if (!qword_1000142C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142C8);
  }

  return result;
}

uint64_t sub_100006A90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000095FC();
  v5 = sub_1000096A4();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100006AFC()
{
  v0 = qword_100014158;

  return v0;
}

unint64_t sub_100006B3C()
{
  result = qword_1000142D0;
  if (!qword_1000142D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142D0);
  }

  return result;
}

unint64_t sub_100006B94()
{
  result = qword_1000142D8;
  if (!qword_1000142D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142D8);
  }

  return result;
}

uint64_t sub_100006C8C@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
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
  v9 = sub_1000096F8(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_100006D48(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000095FC();
  v7 = sub_100009650();
  v8 = sub_1000096A4();
  *v5 = v2;
  v5[1] = sub_100006E1C;

  return _URLRepresentableIntent<>.perform()(a1, a2, v6, v7, v8);
}

uint64_t sub_100006E1C()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_100006F24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000092B0();
  *a1 = result;
  return result;
}

uint64_t sub_100006F4C(uint64_t a1)
{
  v2 = sub_1000069E4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

__n128 sub_100006FA8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 sub_100006FDC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100006FF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100007038(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100007088(uint64_t *a1, int a2)
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

uint64_t sub_1000070D0(uint64_t result, int a2, int a3)
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

uint64_t sub_1000071A4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_10000729C(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_10000729C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000095B4(&qword_100014398, &qword_10000B200);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000073BC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_100007468()
{
  v0 = sub_1000095B4(&qword_1000143A0, &qword_10000B210);
  __chkstk_darwin(v0 - 8);
  v28 = v22 - v1;
  v29 = sub_100009EEC();
  v2 = *(v29 - 8);
  __chkstk_darwin(v29);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000095B4(&qword_100014300, &qword_10000B130);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v22 - v9;
  v11 = sub_1000095B4(&qword_100014308, &qword_10000B138);
  __chkstk_darwin(v11 - 8);
  v13 = v22 - v12;
  v14 = sub_100009FCC();
  v27 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22[0] = sub_1000095B4(&qword_100014310, &qword_10000B140);
  sub_100009FBC();
  v16 = *(v15 + 56);
  v25 = v15 + 56;
  v26 = v16;
  v16(v13, 1, 1, v14);
  v17 = sub_100009DDC();
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);
  v18(v8, 1, 1, v17);
  v24 = enum case for InputConnectionBehavior.default(_:);
  v19 = *(v2 + 104);
  v22[1] = v2 + 104;
  v23 = v19;
  v19(v4);
  sub_100001710();
  v22[0] = sub_100009E2C();
  sub_1000095B4(&qword_1000143A8, &qword_10000B218);
  sub_100009FBC();
  v26(v13, 1, 1, v27);
  LOBYTE(v30) = 2;
  v20 = sub_10000A08C();
  (*(*(v20 - 8) + 56))(v28, 1, 1, v20);
  v18(v10, 1, 1, v17);
  v23(v4, v24, v29);
  sub_100009E3C();
  return v22[0];
}

uint64_t sub_1000078D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return _swift_task_switch(sub_1000078F0, 0, 0);
}

uint64_t sub_1000078F0()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100007A18;
  v2 = swift_continuation_init();
  v0[17] = sub_1000095B4(&qword_100014358, &qword_10000B188);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10000327C;
  v0[13] = &unk_100010C08;
  v0[14] = v2;
  [v1 loadAllFromPreferencesWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100007A18()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_100007CD4;
  }

  else
  {
    v2 = sub_100007B28;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100007B28()
{
  v1 = v0[18];
  if (v1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10000A0AC())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = sub_10000A09C();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = [v4 localizedDescription];
      if (v7)
      {
        v8 = v0[19];
        v17 = v0[20];
        v9 = v7;
        v10 = sub_10000A06C();
        v12 = v11;

        if (v10 == v8 && v12 == v17)
        {

LABEL_18:

          goto LABEL_23;
        }

        v14 = sub_10000A0BC();

        if (v14)
        {
          goto LABEL_18;
        }
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_22:

  v5 = 0;
LABEL_23:
  v15 = v0[1];

  return v15(v5);
}

uint64_t sub_100007CD4()
{
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100007D5C()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100007E84;
  v2 = swift_continuation_init();
  v0[17] = sub_1000095B4(&qword_100014358, &qword_10000B188);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10000327C;
  v0[13] = &unk_100010C30;
  v0[14] = v2;
  [v1 loadAllFromPreferencesWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100007E84()
{
  v1 = *(*v0 + 48);
  *(*v0 + 152) = v1;
  if (v1)
  {
    v2 = sub_1000080FC;
  }

  else
  {
    v2 = sub_100007F94;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100007F94()
{
  v1 = *(v0 + 144);
  if (v1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10000A0AC())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = sub_10000A09C();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = [v4 connection];
      v8 = [v7 status];

      if (v8 == 3)
      {

        goto LABEL_17;
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  v5 = 0;
LABEL_17:
  v9 = *(v11 + 8);

  return v9(v5);
}

uint64_t sub_1000080FC()
{
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100008168()
{
  sub_100009FCC();
  *(v0 + 152) = swift_task_alloc();

  return _swift_task_switch(sub_1000081F4, 0, 0);
}

uint64_t sub_1000081F4()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10000831C;
  v2 = swift_continuation_init();
  v0[17] = sub_1000095B4(&qword_100014358, &qword_10000B188);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10000327C;
  v0[13] = &unk_100010CA8;
  v0[14] = v2;
  [v1 loadAllFromPreferencesWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000831C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_1000087B0;
  }

  else
  {
    v2 = sub_10000842C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000842C()
{
  v1 = *(v0 + 144);
  sub_1000095B4(&qword_100014398, &qword_10000B200);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10000A470;
  sub_1000095B4(&qword_100014178, qword_10000A490);
  sub_100009FBC();
  sub_100009938(&qword_100014370, &qword_100014378, &qword_10000B1A8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v3 = sub_100009F9C();
  strcpy((v2 + 32), "Disconnected");
  *(v2 + 45) = 0;
  *(v2 + 46) = -5120;
  *(v2 + 48) = v3;
  if (!(v1 >> 62))
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_22:
    v22 = &_swiftEmptyArrayStorage;
    goto LABEL_23;
  }

LABEL_21:
  v4 = sub_10000A0AC();
  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_3:
  v5 = 0;
  v22 = &_swiftEmptyArrayStorage;
  do
  {
    v6 = v5;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = sub_10000A09C();
      }

      else
      {
        if (v6 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v7 = *(v1 + 8 * v6 + 32);
      }

      v8 = v7;
      v5 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v9 = [v7 localizedDescription];
      if (v9)
      {
        break;
      }

      ++v6;
      if (v5 == v4)
      {
        goto LABEL_23;
      }
    }

    v10 = v9;
    v11 = sub_10000A06C();
    v19 = v12;
    v20 = v11;

    sub_100009FBC();
    v13 = sub_100009F9C();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_10000729C(0, *(v22 + 2) + 1, 1, v22);
    }

    v15 = *(v22 + 2);
    v14 = *(v22 + 3);
    if (v15 >= v14 >> 1)
    {
      v22 = sub_10000729C((v14 > 1), v15 + 1, 1, v22);
    }

    *(v22 + 2) = v15 + 1;
    v16 = &v22[24 * v15];
    *(v16 + 4) = v20;
    *(v16 + 5) = v19;
    *(v16 + 6) = v13;
  }

  while (v5 != v4);
LABEL_23:

  sub_1000071A4(v22);

  v17 = *(v21 + 8);

  return v17(v2);
}

uint64_t sub_1000087B0()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100008824(uint64_t a1)
{
  *(v1 + 168) = a1;
  sub_100009FCC();
  *(v1 + 176) = swift_task_alloc();

  return _swift_task_switch(sub_1000088B4, 0, 0);
}

uint64_t sub_1000088B4()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_1000089DC;
  v2 = swift_continuation_init();
  v0[17] = sub_1000095B4(&qword_100014358, &qword_10000B188);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10000327C;
  v0[13] = &unk_100010C80;
  v0[14] = v2;
  [v1 loadAllFromPreferencesWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000089DC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_100008E44;
  }

  else
  {
    v2 = sub_100008AEC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100008AEC()
{
  v1 = *(v0 + 160);
  if (v1 >> 62)
  {
LABEL_24:
    v27 = v1 & 0xFFFFFFFFFFFFFF8;
    v2 = sub_10000A0AC();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v27 = v1 & 0xFFFFFFFFFFFFFF8;
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v26 = v1 & 0xC000000000000001;
      v23 = &_swiftEmptyArrayStorage;
      v24 = v1;
      while (1)
      {
        v4 = v3;
        while (1)
        {
          if (v26)
          {
            v5 = sub_10000A09C();
          }

          else
          {
            if (v4 >= *(v27 + 16))
            {
              goto LABEL_23;
            }

            v5 = *(v1 + 8 * v4 + 32);
          }

          v6 = v5;
          v3 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

          v7 = [v5 localizedDescription];
          if (v7)
          {
            break;
          }

LABEL_6:

          ++v4;
          if (v3 == v2)
          {
            goto LABEL_26;
          }
        }

        v8 = v7;
        v9 = v2;
        v10 = v25[21];
        v11 = sub_10000A06C();
        v13 = v12;

        v25[18] = v11;
        v25[19] = v13;
        v14 = swift_task_alloc();
        *(v14 + 16) = v25 + 18;
        LOBYTE(v10) = sub_1000073BC(sub_1000099FC, v14, v10);

        if ((v10 & 1) == 0)
        {
          break;
        }

        sub_1000095B4(&qword_100014178, qword_10000A490);
        sub_100009FBC();
        sub_100009938(&qword_100014370, &qword_100014378, &qword_10000B1A8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
        v15 = sub_100009F9C();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v23 = sub_10000729C(0, *(v23 + 2) + 1, 1, v23);
        }

        v18 = *(v23 + 2);
        v17 = *(v23 + 3);
        if (v18 >= v17 >> 1)
        {
          v23 = sub_10000729C((v17 > 1), v18 + 1, 1, v23);
        }

        *(v23 + 2) = v18 + 1;
        v19 = &v23[24 * v18];
        *(v19 + 4) = v11;
        *(v19 + 5) = v13;
        *(v19 + 6) = v15;
        v2 = v9;
        v20 = v3 == v9;
        v1 = v24;
        if (v20)
        {
          goto LABEL_26;
        }
      }

      v2 = v9;
      v1 = v24;
      goto LABEL_6;
    }
  }

  v23 = &_swiftEmptyArrayStorage;
LABEL_26:

  v21 = v25[1];

  return v21(v23);
}

uint64_t sub_100008E44()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100008EB8()
{
  v26 = sub_100009EEC();
  v0 = *(v26 - 8);
  __chkstk_darwin(v26);
  v25 = v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1000095B4(&qword_100014300, &qword_10000B130);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v19 - v6;
  v8 = sub_1000095B4(&qword_100014308, &qword_10000B138);
  __chkstk_darwin(v8 - 8);
  v10 = v19 - v9;
  v11 = sub_100009FCC();
  v24 = v11;
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v22 = sub_1000095B4(&qword_100014388, &qword_10000B1B8);
  sub_100009FBC();
  v23 = *(v12 + 56);
  v23(v10, 1, 1, v11);
  v27 = 0;
  v13 = sub_100009DDC();
  v14 = *(*(v13 - 8) + 56);
  v14(v7, 1, 1, v13);
  v15 = v5;
  v14(v5, 1, 1, v13);
  v21 = enum case for InputConnectionBehavior.default(_:);
  v16 = *(v0 + 104);
  v19[1] = v0 + 104;
  v20 = v16;
  v17 = v25;
  v16(v25);
  sub_1000053B4();
  v22 = sub_100009E2C();
  sub_1000095B4(&qword_100014310, &qword_10000B140);
  sub_100009FBC();
  v23(v10, 1, 1, v24);
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v14(v7, 1, 1, v13);
  v14(v15, 1, 1, v13);
  v20(v17, v21, v26);
  sub_100001710();
  sub_100009E2C();
  return v22;
}

uint64_t sub_1000092B0()
{
  v17[0] = sub_100009EEC();
  v0 = *(v17[0] - 8);
  __chkstk_darwin(v17[0]);
  v2 = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000095B4(&qword_100014300, &qword_10000B130);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v17 - v7;
  v9 = sub_1000095B4(&qword_100014308, &qword_10000B138);
  __chkstk_darwin(v9 - 8);
  v11 = v17 - v10;
  v12 = sub_100009FCC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_1000095B4(&qword_100014310, &qword_10000B140);
  sub_100009FBC();
  (*(v13 + 56))(v11, 1, 1, v12);
  v14 = sub_100009DDC();
  memset(&v17[1], 0, 24);
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17[0]);
  sub_100001710();
  return sub_100009E2C();
}

uint64_t sub_1000095B4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000095FC()
{
  result = qword_100014318;
  if (!qword_100014318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014318);
  }

  return result;
}

unint64_t sub_100009650()
{
  result = qword_100014320;
  if (!qword_100014320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014320);
  }

  return result;
}

unint64_t sub_1000096A4()
{
  result = qword_100014328;
  if (!qword_100014328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014328);
  }

  return result;
}

uint64_t sub_1000096F8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100009730(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_100009794()
{
  result = qword_100014340;
  if (!qword_100014340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014340);
  }

  return result;
}

uint64_t sub_1000097F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000985C(void *a1)
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

void *sub_1000098A8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1000098EC()
{
  result = qword_100014360;
  if (!qword_100014360)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100014360);
  }

  return result;
}

uint64_t sub_100009938(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000018C8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000998C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000095B4(&qword_100014390, &qword_10000B1F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000099FC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_10000A0BC() & 1;
  }
}

unint64_t sub_100009A58()
{
  result = qword_1000143B0;
  if (!qword_1000143B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000143B0);
  }

  return result;
}

uint64_t sub_100009B2C()
{
  v0 = sub_100009C28();

  return static WidgetBundleBuilder.buildBlock<A>(_:)(v0, &type metadata for VPNAppIntentWidget, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100009BA8();
  sub_100009FDC();
  return 0;
}

unint64_t sub_100009BA8()
{
  result = qword_1000143B8;
  if (!qword_1000143B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000143B8);
  }

  return result;
}

unint64_t sub_100009C28()
{
  result = qword_1000143C0;
  if (!qword_1000143C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000143C0);
  }

  return result;
}