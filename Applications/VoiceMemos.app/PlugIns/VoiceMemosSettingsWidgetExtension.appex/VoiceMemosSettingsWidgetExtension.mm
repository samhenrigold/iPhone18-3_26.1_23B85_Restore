uint64_t sub_100001BFC(uint64_t a1)
{
  if ([*(a1 + 32) _isRunningInVoiceMemos])
  {
    v1 = +[NSUserDefaults standardUserDefaults];
  }

  else
  {
    v1 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.VoiceMemos"];
  }

  qword_100028ED0 = v1;

  return _objc_release_x1();
}

uint64_t sub_100001C60(uint64_t a1, uint64_t a2)
{
  if (qword_100028EE0 != -1)
  {
    sub_1000182CC();
  }

  return byte_100028EE8;
}

id OSLogForCategory(void *a1)
{
  v1 = a1;
  if (qword_100028EF8 != -1)
  {
    sub_1000182E0();
  }

  v2 = [qword_100028EF0 objectForKey:v1];
  if (!v2)
  {
    if ([qword_100028EF0 count] > 0xA)
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
LABEL_12:
        v2 = &_os_log_default;
        v6 = &_os_log_default;
        goto LABEL_13;
      }

      v8 = 0;
      v4 = "ERROR | Too many categories defined, use default";
      v5 = &v8;
    }

    else
    {
      v3 = os_log_create("com.apple.VoiceMemos", [v1 UTF8String]);
      if (v3)
      {
        v2 = v3;
        [qword_100028EF0 setObject:v3 forKey:v1];
        goto LABEL_13;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      *buf = 0;
      v4 = "ERROR | Failed os_log_create, use default";
      v5 = buf;
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
    goto LABEL_12;
  }

LABEL_13:

  return v2;
}

void sub_100001E08(id a1)
{
  qword_100028EF0 = [[NSMutableDictionary alloc] initWithCapacity:10];

  _objc_release_x1();
}

void sub_100001E90(id a1)
{
  qword_100028F08 = objc_alloc_init(RCAppGroupStorage);

  _objc_release_x1();
}

unint64_t sub_100002020()
{
  result = qword_100028538;
  if (!qword_100028538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028538);
  }

  return result;
}

uint64_t sub_1000020B8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002100()
{
  v0 = sub_100005C80(&qword_100028690, &qword_10001ABE0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_10001888C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_10001880C();
  sub_1000065AC(v5, qword_10002ED10);
  sub_100006574(v5, qword_10002ED10);
  sub_10001887C();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1000187FC();
}

uint64_t sub_100002270()
{
  v0 = sub_100005C80(&qword_1000286C0, &qword_100019D00);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_100005C80(&qword_100028690, &qword_10001ABE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_10001888C();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  __chkstk_darwin(v8);
  sub_10001887C();
  sub_10001887C();
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_1000186DC();
  v9 = sub_1000186EC();
  (*(*(v9 - 8) + 56))(v2, 0, 1, v9);
  sub_10001887C();
  return sub_10001870C();
}

uint64_t sub_1000024E0()
{
  v0 = sub_100005C80(&qword_1000286C8, &qword_100019D08);
  sub_1000065AC(v0, qword_10002ED28);
  sub_100006574(v0, qword_10002ED28);
  if (qword_100028438 != -1)
  {
    swift_once();
  }

  sub_100003E58();

  return sub_10001879C();
}

uint64_t sub_1000025C4()
{
  v1 = [objc_opt_self() sharedSettingsUserDefaults];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 rc_useLocationBasedNaming];
  }

  else
  {
    v3 = 0;
  }

  **(v0 + 16) = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100002690()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedSettingsUserDefaults];
  [v2 rc_setUseLocationBasedNaming:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10000272C()
{
  v0 = sub_10001888C();
  sub_1000065AC(v0, qword_10002ED40);
  sub_100006574(v0, qword_10002ED40);
  return sub_10001887C();
}

uint64_t sub_100002790()
{
  v0 = sub_100005C80(&qword_100028710, &unk_100019D80);
  sub_1000065AC(v0, qword_10002ED58);
  v1 = sub_100006574(v0, qword_10002ED58);
  sub_10001866C();
  v2 = sub_10001867C();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100002850()
{
  result = swift_getKeyPath();
  qword_10002ED70 = result;
  return result;
}

uint64_t sub_1000028B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  sub_100005C80(&qword_1000286E0, &unk_100019D30);
  v3[10] = swift_task_alloc();
  sub_100005C80(&qword_1000286E8, &qword_10001AC40);
  v3[11] = swift_task_alloc();
  sub_100005C80(&qword_1000286F0, &qword_100019D40);
  v3[12] = swift_task_alloc();
  v4 = sub_1000184BC();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v5 = sub_100005C80(&qword_1000286F8, &qword_100019D48);
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_100002A98, 0, 0);
}

uint64_t sub_100002A98()
{
  sub_1000184FC();
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  v2 = sub_100003E58();
  *v1 = v0;
  v1[1] = sub_100002B68;
  v3 = *(v0 + 152);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v3, v0 + 16, sub_1000066D4, 0, &type metadata for LocationBasedNamingEntity, v2);
}

uint64_t sub_100002B68()
{

  return _swift_task_switch(sub_100002C64, 0, 0);
}

uint64_t sub_100002C64()
{
  sub_1000184FC();
  v1 = *(v0 + 24);
  *(v0 + 32) = v1;
  *(v0 + 168) = v1;
  sub_1000184FC();
  *(v0 + 201) = *(v0 + 200);
  if (qword_1000283B8 != -1)
  {
    swift_once();
  }

  v2 = qword_10002ED70;
  *(v0 + 176) = qword_10002ED70;

  v3 = swift_task_alloc();
  *(v0 + 184) = v3;
  v4 = sub_100006610(&qword_1000286D0, &qword_1000286D8, &qword_100019D20, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v3 = v0;
  v3[1] = sub_100002DC4;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 201, v2, &type metadata for Bool, v4);
}

uint64_t sub_100002DC4()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_100003180;
  }

  else
  {
    v2 = sub_100002F18;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100002F18()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v10 = v0[18];
  v11 = v0[15];
  v12 = v0[14];
  v13 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  sub_1000184FC();
  v0[6] = v0[5];
  v6 = sub_1000187DC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = sub_10001881C();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_100002020();
  sub_100004230();
  sub_10001848C();
  (*(v2 + 16))(v10, v1, v3);
  sub_1000184AC();
  sub_1000184CC();
  (*(v12 + 8))(v11, v13);

  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100003180()
{
  (*(v0[17] + 8))(v0[19], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100003248()
{
  v0 = sub_100005C80(&qword_100028700, &qword_100019D50);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_1000283B8 != -1)
  {
    swift_once();
  }

  sub_1000186CC();

  sub_100004230();
  sub_100006610(&qword_100028708, &qword_100028700, &qword_100019D50, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1000186BC();
  return (*(v1 + 8))(v3, v0);
}

void *sub_1000033BC@<X0>(void *a1@<X8>)
{
  result = sub_1000184FC();
  *a1 = v3;
  return result;
}

uint64_t sub_1000033F8(uint64_t *a1)
{

  sub_10001850C();
}

uint64_t (*sub_100003440(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000184EC();
  return sub_1000034B4;
}

void *sub_1000034B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000184FC();
  *a1 = v3;
  return result;
}

uint64_t (*sub_10000352C(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000184EC();
  return sub_1000066DC;
}

uint64_t sub_1000035A0()
{
  if (qword_1000283B8 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10000360C()
{
  result = qword_100028550;
  if (!qword_100028550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028550);
  }

  return result;
}

unint64_t sub_100003664()
{
  result = qword_100028558;
  if (!qword_100028558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028558);
  }

  return result;
}

uint64_t sub_100003784@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000283B0 != -1)
  {
    swift_once();
  }

  v2 = sub_100005C80(&qword_100028710, &unk_100019D80);
  v3 = sub_100006574(v2, qword_10002ED58);

  return sub_100006658(v3, a1);
}

uint64_t sub_100003808(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000066C8;

  return sub_1000028B8(a1, v5, v4);
}

uint64_t sub_1000038B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100005CC8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000038FC()
{
  result = qword_100028560;
  if (!qword_100028560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028560);
  }

  return result;
}

unint64_t sub_100003954()
{
  result = qword_100028568;
  if (!qword_100028568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028568);
  }

  return result;
}

uint64_t sub_1000039A8()
{
  v0 = sub_10001888C();
  __chkstk_darwin(v0 - 8);
  sub_100005C80(&qword_100028548, qword_100019330);
  sub_10001887C();
  sub_100006610(&qword_1000286D0, &qword_1000286D8, &qword_100019D20, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  result = sub_10001886C();
  qword_10002ED78 = result;
  return result;
}

uint64_t sub_100003AE0()
{
  if (qword_1000283C0 != -1)
  {
    swift_once();
  }

  **(v0 + 16) = qword_10002ED78;
  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_100003B8C()
{
  result = qword_100028570;
  if (!qword_100028570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028570);
  }

  return result;
}

uint64_t sub_100003BE0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100004688();
  *v4 = v2;
  v4[1] = sub_100003C90;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

uint64_t sub_100003C90(uint64_t a1)
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

unint64_t sub_100003DA8()
{
  result = qword_100028578;
  if (!qword_100028578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028578);
  }

  return result;
}

unint64_t sub_100003E00()
{
  result = qword_100028580;
  if (!qword_100028580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028580);
  }

  return result;
}

unint64_t sub_100003E58()
{
  result = qword_100028588;
  if (!qword_100028588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028588);
  }

  return result;
}

uint64_t sub_100003EB0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100004688();
  *v5 = v2;
  v5[1] = sub_100006700;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100003F64(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100004688();
  *v4 = v2;
  v4[1] = sub_1000066D8;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

uint64_t sub_100004014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000040D4;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_1000040D4(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_1000041D8()
{
  result = qword_100028590;
  if (!qword_100028590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028590);
  }

  return result;
}

unint64_t sub_100004230()
{
  result = qword_100028598;
  if (!qword_100028598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028598);
  }

  return result;
}

unint64_t sub_100004288()
{
  result = qword_1000285A0;
  if (!qword_1000285A0)
  {
    sub_1000020B8(&qword_1000285A8, qword_1000195D0);
    sub_100004230();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000285A0);
  }

  return result;
}

uint64_t sub_10000430C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100003B8C();
  *v5 = v2;
  v5[1] = sub_1000043C0;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_1000043C0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000044B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000043C0;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_100004574()
{
  result = qword_1000285B0;
  if (!qword_1000285B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000285B0);
  }

  return result;
}

unint64_t sub_1000045CC()
{
  result = qword_1000285B8;
  if (!qword_1000285B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000285B8);
  }

  return result;
}

unint64_t sub_100004624()
{
  result = qword_1000285C0;
  if (!qword_1000285C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000285C0);
  }

  return result;
}

unint64_t sub_100004688()
{
  result = qword_1000285C8;
  if (!qword_1000285C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000285C8);
  }

  return result;
}

unint64_t sub_1000046E0()
{
  result = qword_1000285D0;
  if (!qword_1000285D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000285D0);
  }

  return result;
}

uint64_t sub_100004734@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000283A0 != -1)
  {
    swift_once();
  }

  v2 = sub_100005C80(&qword_1000286C8, &qword_100019D08);
  v3 = sub_100006574(v2, qword_10002ED28);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100004808()
{
  result = qword_1000285D8;
  if (!qword_1000285D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000285D8);
  }

  return result;
}

unint64_t sub_100004860()
{
  result = qword_1000285E0;
  if (!qword_1000285E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000285E0);
  }

  return result;
}

unint64_t sub_1000048B8()
{
  result = qword_1000285E8;
  if (!qword_1000285E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000285E8);
  }

  return result;
}

uint64_t sub_100004918@<X0>(uint64_t *a2@<X8>)
{
  sub_100003954();
  result = sub_1000184DC();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100004958(uint64_t a1)
{
  sub_100006520();
  v2 = sub_10001876C();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1000049C4@<X0>(uint64_t a1@<X8>)
{
  if (qword_100028398 != -1)
  {
    swift_once();
  }

  v2 = sub_10001880C();
  v3 = sub_100006574(v2, qword_10002ED10);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_100004AC8(uint64_t a1)
{
  v2 = sub_100003E58();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100004B18()
{
  result = qword_100028600;
  if (!qword_100028600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028600);
  }

  return result;
}

uint64_t sub_100004B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000066C8;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100004C34(uint64_t a1)
{
  v2 = sub_1000048B8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100004C84()
{
  result = qword_100028608;
  if (!qword_100028608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028608);
  }

  return result;
}

uint64_t sub_100004CD8()
{
  v0 = sub_10001888C();
  sub_1000065AC(v0, qword_10002ED80);
  sub_100006574(v0, qword_10002ED80);
  return sub_10001887C();
}

uint64_t (*sub_100004D3C(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000184EC();
  return sub_1000066DC;
}

void sub_100004DB0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100004DFC()
{
  result = qword_100028610;
  if (!qword_100028610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028610);
  }

  return result;
}

uint64_t sub_100004E50(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006478();
  v5 = sub_100006520();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_100004EC0()
{
  result = qword_100028618;
  if (!qword_100028618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028618);
  }

  return result;
}

unint64_t sub_100004F18()
{
  result = qword_100028620;
  if (!qword_100028620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028620);
  }

  return result;
}

unint64_t sub_100004F70()
{
  result = qword_100028628;
  if (!qword_100028628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028628);
  }

  return result;
}

uint64_t sub_100005068@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
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
  v9 = sub_100006574(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_100005128(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_100006478();
  v6 = sub_1000064CC();
  v7 = sub_100006520();
  *v4 = v2;
  v4[1] = sub_1000051F4;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_1000051F4()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_1000052FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100006180();
  *a1 = result;
  return result;
}

uint64_t sub_100005324(uint64_t a1)
{
  v2 = sub_100004DFC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100005360()
{
  sub_100005C80(&qword_100028648, &qword_100019C80);
  sub_10001864C();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100019300;
  sub_100005CC8();
  sub_100002020();
  result = sub_10001865C();
  qword_10002ED98 = v0;
  return result;
}

uint64_t sub_10000546C(uint64_t a1)
{
  v12 = a1;
  v1 = sub_100005C80(&qword_100028668, &qword_100019CC0);
  v2 = *(v1 - 8);
  v14 = v1;
  v15 = v2;
  __chkstk_darwin(v1);
  v4 = &v12 - v3;
  v5 = sub_100005C80(&qword_100028670, &qword_100019CC8);
  __chkstk_darwin(v5);
  sub_100002020();
  sub_10001862C();
  v16._countAndFlagsBits = 0x206E727554;
  v16._object = 0xE500000000000000;
  sub_10001861C(v16);
  swift_getKeyPath();
  sub_10000612C();
  sub_10001854C();

  sub_10001860C();

  v17._object = 0x800000010001CE30;
  v17._countAndFlagsBits = 0xD000000000000016;
  sub_10001861C(v17);
  sub_10001863C();
  v13 = sub_10001857C();
  v6 = v14;
  v7 = *(v15 + 8);
  v15 += 8;
  v7(v4, v14);
  sub_10001862C();
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  sub_10001861C(v18);
  swift_getKeyPath();
  sub_10001854C();

  sub_10001860C();

  v19._object = 0x800000010001CE30;
  v19._countAndFlagsBits = 0xD000000000000016;
  sub_10001861C(v19);
  sub_10001863C();
  v8 = sub_10001857C();
  v7(v4, v6);
  sub_100005C80(&qword_100028678, &qword_100019CD0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100019310;
  *(v9 + 32) = v13;
  *(v9 + 40) = v8;
  v10 = sub_10001856C();

  return v10;
}

void *sub_1000057A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000184FC();
  *a1 = v3;
  return result;
}

uint64_t sub_100005814()
{
  v0 = sub_1000185EC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10000612C();
  sub_10001854C();

  sub_100002020();
  sub_1000185DC();
  v4 = sub_1000185CC();
  (*(v1 + 8))(v3, v0);
  sub_100005C80(&qword_100028658, &qword_100019CB0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100019300;
  *(v5 + 32) = v4;
  v6 = sub_1000185BC();

  return v6;
}

uint64_t sub_100005984()
{
  v0 = sub_10001859C();
  v1 = sub_10001859C();
  v2 = sub_10001859C();
  v3 = sub_10001859C();
  sub_100005C80(&qword_100028660, &qword_100019CB8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100019320;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = sub_10001858C();

  return v5;
}

uint64_t sub_100005AB4(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  if (*a3 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

__n128 sub_100005B58(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100005B64(uint64_t *a1, int a2)
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

uint64_t sub_100005BAC(uint64_t result, int a2, int a3)
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

uint64_t sub_100005C80(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100005CC8()
{
  v0 = sub_100005C80(&qword_100028680, &qword_100019CD8);
  __chkstk_darwin(v0 - 8);
  v30 = &v22 - v1;
  v31 = sub_1000187AC();
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005C80(&qword_100028688, &unk_100019CE0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v11 = sub_100005C80(&qword_100028690, &qword_10001ABE0);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = sub_10001888C();
  v29 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v23 = sub_100005C80(&qword_100028698, &qword_100019CF0);
  sub_10001887C();
  v16 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v16;
  v16(v13, 1, 1, v14);
  v33 = 0;
  v17 = sub_1000184BC();
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);
  v18(v8, 1, 1, v17);
  v26 = enum case for InputConnectionBehavior.default(_:);
  v19 = *(v2 + 104);
  v24 = v2 + 104;
  v25 = v19;
  v19(v4);
  sub_100003E58();
  v23 = sub_10001852C();
  sub_100005C80(&qword_1000286A0, &qword_100019CF8);
  sub_10001887C();
  v28(v13, 1, 1, v29);
  v32 = 2;
  v20 = sub_100018A1C();
  (*(*(v20 - 8) + 56))(v30, 1, 1, v20);
  v18(v10, 1, 1, v17);
  v25(v4, v26, v31);
  sub_10001853C();
  return v23;
}

unint64_t sub_10000612C()
{
  result = qword_100028650;
  if (!qword_100028650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028650);
  }

  return result;
}

uint64_t sub_100006180()
{
  v17[0] = sub_1000187AC();
  v0 = *(v17[0] - 8);
  __chkstk_darwin(v17[0]);
  v2 = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100005C80(&qword_100028688, &unk_100019CE0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v17 - v7;
  v9 = sub_100005C80(&qword_100028690, &qword_10001ABE0);
  __chkstk_darwin(v9 - 8);
  v11 = v17 - v10;
  v12 = sub_10001888C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100005C80(&qword_100028698, &qword_100019CF0);
  sub_10001887C();
  (*(v13 + 56))(v11, 1, 1, v12);
  v17[1] = 0;
  v14 = sub_1000184BC();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17[0]);
  sub_100003E58();
  return sub_10001852C();
}

unint64_t sub_100006478()
{
  result = qword_1000286A8;
  if (!qword_1000286A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000286A8);
  }

  return result;
}

unint64_t sub_1000064CC()
{
  result = qword_1000286B0;
  if (!qword_1000286B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000286B0);
  }

  return result;
}

unint64_t sub_100006520()
{
  result = qword_1000286B8;
  if (!qword_1000286B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000286B8);
  }

  return result;
}

uint64_t sub_100006574(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_1000065AC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100006610(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000020B8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100006658(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005C80(&qword_100028710, &unk_100019D80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006720(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_100006774(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

Swift::Int sub_100006820()
{
  sub_100018AAC();
  sub_100018ABC(0);
  return sub_100018ACC();
}

Swift::Int sub_100006890(uint64_t a1)
{
  sub_100018AAC();
  sub_100018ABC(0);
  return sub_100018ACC();
}

unint64_t sub_100006900()
{
  result = qword_100028718;
  if (!qword_100028718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028718);
  }

  return result;
}

unint64_t sub_100006958()
{
  result = qword_100028720;
  if (!qword_100028720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028720);
  }

  return result;
}

unint64_t sub_1000069D4()
{
  result = qword_100028728;
  if (!qword_100028728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028728);
  }

  return result;
}

uint64_t sub_100006A6C()
{
  v0 = sub_100005C80(&qword_100028690, &qword_10001ABE0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_10001888C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_10001880C();
  sub_1000065AC(v5, qword_10002EDA8);
  sub_100006574(v5, qword_10002EDA8);
  sub_10001887C();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1000187FC();
}

uint64_t sub_100006BDC()
{
  v0 = sub_100005C80(&qword_1000286C0, &qword_100019D00);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_100005C80(&qword_100028690, &qword_10001ABE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_10001888C();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  __chkstk_darwin(v8);
  sub_10001887C();
  sub_10001887C();
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_1000186DC();
  v9 = sub_1000186EC();
  (*(*(v9 - 8) + 56))(v2, 0, 1, v9);
  sub_10001887C();
  return sub_10001870C();
}

uint64_t sub_100006E48()
{
  v0 = sub_100005C80(&qword_1000288E0, &qword_10001AC00);
  sub_1000065AC(v0, qword_10002EDC0);
  sub_100006574(v0, qword_10002EDC0);
  if (qword_100028450 != -1)
  {
    swift_once();
  }

  sub_1000084BC();

  return sub_10001879C();
}

uint64_t sub_100006F2C()
{
  v1 = [objc_opt_self() sharedSettingsUserDefaults];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 rc_recentlyDeletedWindow];
  }

  else
  {
    v3 = 30;
  }

  v4 = *(v0 + 16);
  *v4 = sub_10000A4B8(v3);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100007000()
{
  v1 = [objc_opt_self() sharedSettingsUserDefaults];
  if (v1)
  {
    v2 = v1;
    [v1 rc_setRecentlyDeletedWindow:qword_10001AC88[*(v0 + 16)]];
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000070A4()
{
  v0 = sub_10001888C();
  sub_1000065AC(v0, qword_10002EDD8);
  sub_100006574(v0, qword_10002EDD8);
  return sub_10001887C();
}

uint64_t sub_100007108()
{
  v0 = sub_100005C80(&qword_100028710, &unk_100019D80);
  sub_1000065AC(v0, qword_10002EDF0);
  v1 = sub_100006574(v0, qword_10002EDF0);
  sub_10001866C();
  v2 = sub_10001867C();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000071C8()
{
  result = swift_getKeyPath();
  qword_10002EE08 = result;
  return result;
}

uint64_t sub_1000071F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  sub_100005C80(&qword_1000286E0, &unk_100019D30);
  v3[10] = swift_task_alloc();
  sub_100005C80(&qword_1000286E8, &qword_10001AC40);
  v3[11] = swift_task_alloc();
  sub_100005C80(&qword_100028908, &qword_10001AC48);
  v3[12] = swift_task_alloc();
  v4 = sub_1000184BC();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v5 = sub_100005C80(&qword_100028910, &qword_10001AC50);
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_1000073D0, 0, 0);
}

uint64_t sub_1000073D0()
{
  sub_1000184FC();
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  v2 = sub_1000084BC();
  *v1 = v0;
  v1[1] = sub_1000074A0;
  v3 = *(v0 + 152);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v3, v0 + 16, sub_10000B47C, 0, &type metadata for ClearDeletedEntity, v2);
}

uint64_t sub_1000074A0()
{

  return _swift_task_switch(sub_10000759C, 0, 0);
}

uint64_t sub_10000759C()
{
  sub_1000184FC();
  v1 = v0[3];
  v0[4] = v1;
  v0[21] = v1;
  sub_1000184FC();
  if (qword_100028400 != -1)
  {
    swift_once();
  }

  v2 = qword_10002EE08;
  v0[22] = qword_10002EE08;

  v3 = swift_task_alloc();
  v0[23] = v3;
  v4 = sub_100006610(&qword_1000288F8, &qword_100028900, &qword_10001AC28, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v3 = v0;
  v3[1] = sub_1000076F0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 25, v2, &type metadata for ClearDeletedEntity.IntentClearDeleted, v4);
}

uint64_t sub_1000076F0()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_100003180;
  }

  else
  {
    v2 = sub_100007844;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100007844()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v10 = v0[18];
  v11 = v0[15];
  v12 = v0[14];
  v13 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  sub_1000184FC();
  v0[6] = v0[5];
  v6 = sub_1000187DC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = sub_10001881C();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_1000069D4();
  sub_1000086D0();
  sub_10001848C();
  (*(v2 + 16))(v10, v1, v3);
  sub_1000184AC();
  sub_1000184CC();
  (*(v12 + 8))(v11, v13);

  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100007AB0()
{
  v0 = sub_100005C80(&qword_100028918, &qword_10001AC58);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_100028400 != -1)
  {
    swift_once();
  }

  sub_1000186CC();

  sub_1000086D0();
  sub_100006610(&qword_100028920, &qword_100028918, &qword_10001AC58, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1000186BC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t (*sub_100007C24(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000184EC();
  return sub_1000034B4;
}

uint64_t (*sub_100007C98(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000184EC();
  return sub_1000066DC;
}

uint64_t sub_100007D0C()
{
  if (qword_100028400 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100007D6C()
{
  result = qword_100028740;
  if (!qword_100028740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028740);
  }

  return result;
}

unint64_t sub_100007DC4()
{
  result = qword_100028748;
  if (!qword_100028748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028748);
  }

  return result;
}

uint64_t sub_100007EE8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000283F8 != -1)
  {
    swift_once();
  }

  v2 = sub_100005C80(&qword_100028710, &unk_100019D80);
  v3 = sub_100006574(v2, qword_10002EDF0);

  return sub_100006658(v3, a1);
}

uint64_t sub_100007F6C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000066C8;

  return sub_1000071F0(a1, v5, v4);
}

uint64_t sub_100008018@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000A63C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100008060()
{
  result = qword_100028750;
  if (!qword_100028750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028750);
  }

  return result;
}

unint64_t sub_1000080B8()
{
  result = qword_100028758;
  if (!qword_100028758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028758);
  }

  return result;
}

uint64_t sub_10000810C()
{
  v0 = sub_10001888C();
  __chkstk_darwin(v0 - 8);
  sub_100005C80(&qword_100028738, qword_100019FA0);
  sub_10001887C();
  sub_100006610(&qword_1000288F8, &qword_100028900, &qword_10001AC28, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  sub_100008E0C();
  result = sub_10001885C();
  qword_10002EE10 = result;
  return result;
}

uint64_t sub_100008258()
{
  if (qword_100028408 != -1)
  {
    swift_once();
  }

  **(v0 + 16) = qword_10002EE10;
  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_100008304()
{
  result = qword_100028760;
  if (!qword_100028760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028760);
  }

  return result;
}

uint64_t sub_100008358(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100009168();
  *v4 = v2;
  v4[1] = sub_100003C90;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10000840C()
{
  result = qword_100028768;
  if (!qword_100028768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028768);
  }

  return result;
}

unint64_t sub_100008464()
{
  result = qword_100028770;
  if (!qword_100028770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028770);
  }

  return result;
}

unint64_t sub_1000084BC()
{
  result = qword_100028778;
  if (!qword_100028778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028778);
  }

  return result;
}

uint64_t sub_100008510(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100009168();
  *v5 = v2;
  v5[1] = sub_100006700;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1000085C4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100009168();
  *v4 = v2;
  v4[1] = sub_1000066D8;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100008678()
{
  result = qword_100028780;
  if (!qword_100028780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028780);
  }

  return result;
}

unint64_t sub_1000086D0()
{
  result = qword_100028788;
  if (!qword_100028788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028788);
  }

  return result;
}

unint64_t sub_100008728()
{
  result = qword_100028790;
  if (!qword_100028790)
  {
    sub_1000020B8(&qword_100028798, qword_10001A240);
    sub_1000086D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028790);
  }

  return result;
}

uint64_t sub_1000087AC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100008304();
  *v5 = v2;
  v5[1] = sub_1000043C0;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100008860()
{
  v0 = sub_100005C80(&qword_100028690, &qword_10001ABE0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_10001888C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_10001880C();
  sub_1000065AC(v5, qword_10002EE18);
  sub_100006574(v5, qword_10002EE18);
  sub_10001887C();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1000187FC();
}

unint64_t sub_1000089E8()
{
  result = qword_1000287A0;
  if (!qword_1000287A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000287A0);
  }

  return result;
}

Swift::Int sub_100008A3C()
{
  v1 = *v0;
  sub_100018AAC();
  sub_100018ABC(v1);
  return sub_100018ACC();
}

Swift::Int sub_100008AB0(uint64_t a1)
{
  v2 = *v1;
  sub_100018AAC();
  sub_100018ABC(v2);
  return sub_100018ACC();
}

unint64_t sub_100008AF4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000B01C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100008B30()
{
  result = qword_1000287A8;
  if (!qword_1000287A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000287A8);
  }

  return result;
}

unint64_t sub_100008B88()
{
  result = qword_1000287B0;
  if (!qword_1000287B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000287B0);
  }

  return result;
}

unint64_t sub_100008BE0()
{
  result = qword_1000287B8;
  if (!qword_1000287B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000287B8);
  }

  return result;
}

unint64_t sub_100008C50()
{
  result = qword_1000287C0;
  if (!qword_1000287C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000287C0);
  }

  return result;
}

unint64_t sub_100008CA8()
{
  result = qword_1000287C8;
  if (!qword_1000287C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000287C8);
  }

  return result;
}

unint64_t sub_100008CFC()
{
  result = qword_1000287D0;
  if (!qword_1000287D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000287D0);
  }

  return result;
}

unint64_t sub_100008D54()
{
  result = qword_1000287D8;
  if (!qword_1000287D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000287D8);
  }

  return result;
}

unint64_t sub_100008E0C()
{
  result = qword_1000287E0;
  if (!qword_1000287E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000287E0);
  }

  return result;
}

uint64_t sub_100008E64(uint64_t a1)
{
  v2 = sub_100008E0C();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100008EB4()
{
  result = qword_1000287E8;
  if (!qword_1000287E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000287E8);
  }

  return result;
}

unint64_t sub_100008F0C()
{
  result = qword_1000287F0;
  if (!qword_1000287F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000287F0);
  }

  return result;
}

unint64_t sub_100008F64()
{
  result = qword_1000287F8;
  if (!qword_1000287F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000287F8);
  }

  return result;
}

uint64_t sub_100008FBC(uint64_t a1)
{
  v2 = sub_100008D54();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100009060()
{
  result = qword_100028810;
  if (!qword_100028810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028810);
  }

  return result;
}

unint64_t sub_1000090B8()
{
  result = qword_100028818;
  if (!qword_100028818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028818);
  }

  return result;
}

unint64_t sub_100009110()
{
  result = qword_100028820;
  if (!qword_100028820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028820);
  }

  return result;
}

unint64_t sub_100009168()
{
  result = qword_100028828;
  if (!qword_100028828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028828);
  }

  return result;
}

unint64_t sub_1000091C0()
{
  result = qword_100028830;
  if (!qword_100028830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028830);
  }

  return result;
}

uint64_t sub_100009214@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000283E8 != -1)
  {
    swift_once();
  }

  v2 = sub_100005C80(&qword_1000288E0, &qword_10001AC00);
  v3 = sub_100006574(v2, qword_10002EDC0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1000092CC()
{
  result = qword_100028838;
  if (!qword_100028838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028838);
  }

  return result;
}

unint64_t sub_100009324()
{
  result = qword_100028840;
  if (!qword_100028840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028840);
  }

  return result;
}

unint64_t sub_10000937C()
{
  result = qword_100028848;
  if (!qword_100028848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028848);
  }

  return result;
}

uint64_t sub_1000093D0@<X0>(uint64_t *a2@<X8>)
{
  sub_1000080B8();
  result = sub_1000184DC();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100009410(uint64_t a1)
{
  sub_10000B3CC();
  v2 = sub_10001876C();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10000947C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000283E0 != -1)
  {
    swift_once();
  }

  v2 = sub_10001880C();
  v3 = sub_100006574(v2, qword_10002EDA8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_100009580(uint64_t a1)
{
  v2 = sub_1000084BC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000095D0()
{
  result = qword_100028860;
  if (!qword_100028860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028860);
  }

  return result;
}

uint64_t sub_100009628(uint64_t a1)
{
  v2 = sub_10000937C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100009678()
{
  result = qword_100028868;
  if (!qword_100028868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028868);
  }

  return result;
}

uint64_t sub_1000096CC()
{
  v0 = sub_10001888C();
  sub_1000065AC(v0, qword_10002EE30);
  sub_100006574(v0, qword_10002EE30);
  return sub_10001887C();
}

uint64_t (*sub_100009730(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000184EC();
  return sub_1000066DC;
}

unint64_t sub_1000097A4()
{
  result = qword_100028870;
  if (!qword_100028870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028870);
  }

  return result;
}

uint64_t sub_1000097F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000B324();
  v5 = sub_10000B3CC();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_100009868()
{
  result = qword_100028878;
  if (!qword_100028878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028878);
  }

  return result;
}

unint64_t sub_1000098C0()
{
  result = qword_100028880;
  if (!qword_100028880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028880);
  }

  return result;
}

uint64_t sub_1000099C0@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
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
  v9 = sub_100006574(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_100009A68(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_10000B324();
  v6 = sub_10000B378();
  v7 = sub_10000B3CC();
  *v4 = v2;
  v4[1] = sub_1000051F4;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_100009B34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000B02C();
  *a1 = result;
  return result;
}

uint64_t sub_100009B5C(uint64_t a1)
{
  v2 = sub_1000097A4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100009B98()
{
  sub_100005C80(&qword_100028648, &qword_100019C80);
  sub_10001864C();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100019300;
  sub_10000A63C();
  sub_1000069D4();
  result = sub_10001865C();
  qword_10002EE48 = v0;
  return result;
}

uint64_t sub_100009CA4(uint64_t a1)
{
  v27 = a1;
  v23 = sub_10001855C();
  v28 = *(v23 - 8);
  __chkstk_darwin(v23);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100005C80(&qword_1000288A0, &qword_10001AB98);
  v21 = v3;
  v29 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v18 - v4;
  v6 = sub_100005C80(&qword_1000288A8, &qword_10001ABA0);
  __chkstk_darwin(v6);
  sub_1000069D4();
  sub_10001862C();
  v30._countAndFlagsBits = 0x6564207261656C43;
  v30._object = 0xEE0020646574656CLL;
  sub_10001861C(v30);
  swift_getKeyPath();
  v26 = sub_100008CFC();
  sub_10001854C();

  sub_10001860C();

  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  sub_10001861C(v31);
  sub_10001863C();
  v7 = sub_10001857C();
  v8 = *(v29 + 8);
  v29 += 8;
  v24 = v7;
  v25 = v8;
  v8(v5, v3);
  sub_10001862C();
  v32._countAndFlagsBits = 0x207974706D45;
  v32._object = 0xE600000000000000;
  sub_10001861C(v32);
  v20 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v9 = v28;
  v19 = *(v28 + 104);
  v10 = v23;
  v19(v2);
  sub_1000185FC();
  v11 = *(v9 + 8);
  v28 = v9 + 8;
  v18 = v11;
  v11(v2, v10);
  v33._countAndFlagsBits = 0x20687361727420;
  v33._object = 0xE700000000000000;
  sub_10001861C(v33);
  swift_getKeyPath();
  sub_10001854C();

  sub_10001860C();

  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  sub_10001861C(v34);
  sub_10001863C();
  v22 = sub_10001857C();
  v12 = v21;
  v25(v5, v21);
  sub_10001862C();
  v35._countAndFlagsBits = 0x207974706D65;
  v35._object = 0xE600000000000000;
  sub_10001861C(v35);
  (v19)(v2, v20, v10);
  sub_1000185FC();
  v18(v2, v10);
  v36._countAndFlagsBits = 0x206E696220;
  v36._object = 0xE500000000000000;
  sub_10001861C(v36);
  swift_getKeyPath();
  sub_10001854C();

  sub_10001860C();

  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  sub_10001861C(v37);
  sub_10001863C();
  v13 = sub_10001857C();
  v25(v5, v12);
  sub_100005C80(&qword_1000288B0, &unk_10001ABD0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100019F80;
  v15 = v22;
  *(v14 + 32) = v24;
  *(v14 + 40) = v15;
  *(v14 + 48) = v13;
  v16 = sub_10001856C();

  return v16;
}

uint64_t getEnumTagSinglePayload for ClearDeletedEntity.IntentClearDeleted(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ClearDeletedEntity.IntentClearDeleted(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10000A4B8(uint64_t result)
{
  if (result > 0)
  {
    switch(result)
    {
      case 30:
        return 3;
      case 7:
        return 2;
      case 1:
        return result;
    }

LABEL_8:
    v8[5] = v1;
    v8[6] = v2;
    if (qword_100028478 != -1)
    {
      swift_once();
    }

    v3 = sub_1000188CC();
    sub_100006574(v3, qword_10002EF00);
    v4 = sub_100018A2C();
    v5 = sub_1000188BC();
    if (os_log_type_enabled(v5, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_100016904(0xD000000000000016, 0x800000010001D3A0, v8);
      _os_log_impl(&_mh_execute_header, v5, v4, "%s - Unexpected rcDeletedWindow value", v6, 0xCu);
      sub_10000B420(v7);
    }

    return 4;
  }

  if (result == -1)
  {
    return 4;
  }

  if (result)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_10000A63C()
{
  v27 = sub_1000187AC();
  v0 = *(v27 - 8);
  __chkstk_darwin(v27);
  v26 = v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100005C80(&qword_100028688, &unk_100019CE0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v19 - v6;
  v8 = sub_100005C80(&qword_100028690, &qword_10001ABE0);
  __chkstk_darwin(v8 - 8);
  v10 = v19 - v9;
  v11 = sub_10001888C();
  v25 = v11;
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v22 = sub_100005C80(&qword_1000288B8, &qword_10001ABE8);
  sub_10001887C();
  v13 = *(v12 + 56);
  v23 = v12 + 56;
  v24 = v13;
  v13(v10, 1, 1, v11);
  v29 = 0;
  v14 = sub_1000184BC();
  v15 = *(*(v14 - 8) + 56);
  v15(v7, 1, 1, v14);
  v15(v5, 1, 1, v14);
  v21 = enum case for InputConnectionBehavior.default(_:);
  v16 = *(v0 + 104);
  v19[1] = v0 + 104;
  v20 = v16;
  v17 = v26;
  v16(v26);
  sub_1000084BC();
  v22 = sub_10001852C();
  sub_100005C80(&qword_1000288C0, &unk_10001ABF0);
  sub_10001887C();
  v24(v10, 1, 1, v25);
  v28 = 5;
  v15(v7, 1, 1, v14);
  v15(v5, 1, 1, v14);
  v20(v17, v21, v27);
  sub_100008E0C();
  sub_10001851C();
  return v22;
}

void *sub_10000AA3C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000184FC();
  *a1 = v3;
  return result;
}

unint64_t sub_10000AAB0()
{
  v0 = sub_100005C80(&qword_1000286C0, &qword_100019D00);
  __chkstk_darwin(v0 - 8);
  v2 = &v24 - v1;
  v3 = sub_100005C80(&qword_100028690, &qword_10001ABE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v24 - v4;
  v6 = sub_10001888C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  sub_100005C80(&qword_1000288E8, &qword_10001AC08);
  v8 = sub_100005C80(&qword_1000288F0, &qword_10001AC10);
  v9 = *(*(v8 - 8) + 72);
  v10 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  v28 = 4 * v9;
  v11 = swift_allocObject();
  v29 = v11;
  *(v11 + 16) = xmmword_100019F90;
  v12 = v11 + v10;
  v27 = *(v8 + 48);
  *(v11 + v10) = 0;
  sub_10001887C();
  v13 = *(v7 + 56);
  v31 = v7 + 56;
  v34 = v13;
  v13(v5, 1, 1, v6);
  v35 = sub_1000186EC();
  v14 = *(v35 - 8);
  v30 = *(v14 + 56);
  v33 = v14 + 56;
  v30(v2, 1, 1, v35);
  v15 = v12;
  sub_10001871C();
  v25 = v8;
  v26 = v9;
  v32 = v12;
  v27 = *(v8 + 48);
  *(v12 + v9) = 1;
  sub_10001887C();
  v34(v5, 1, 1, v6);
  v16 = v30;
  v30(v2, 1, 1, v35);
  sub_10001871C();
  v27 = *(v8 + 48);
  *(v15 + 2 * v9) = 2;
  sub_10001887C();
  v24 = v6;
  v17 = v34;
  v34(v5, 1, 1, v6);
  v18 = v35;
  v16(v2, 1, 1, v35);
  sub_10001871C();
  v19 = v32;
  v27 = *(v25 + 48);
  *(v32 + 2 * v9 + v26) = 3;
  sub_10001887C();
  v17(v5, 1, 1, v6);
  v20 = v18;
  v21 = v30;
  v30(v2, 1, 1, v20);
  sub_10001871C();
  *(v19 + v28) = 4;
  sub_10001887C();
  v17(v5, 1, 1, v24);
  v21(v2, 1, 1, v35);
  sub_10001871C();
  v22 = sub_100017064(v29);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v22;
}

unint64_t sub_10000B01C(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_10000B02C()
{
  v17[0] = sub_1000187AC();
  v0 = *(v17[0] - 8);
  __chkstk_darwin(v17[0]);
  v2 = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100005C80(&qword_100028688, &unk_100019CE0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v17 - v7;
  v9 = sub_100005C80(&qword_100028690, &qword_10001ABE0);
  __chkstk_darwin(v9 - 8);
  v11 = v17 - v10;
  v12 = sub_10001888C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100005C80(&qword_1000288B8, &qword_10001ABE8);
  sub_10001887C();
  (*(v13 + 56))(v11, 1, 1, v12);
  v17[1] = 0;
  v14 = sub_1000184BC();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17[0]);
  sub_1000084BC();
  return sub_10001852C();
}

unint64_t sub_10000B324()
{
  result = qword_1000288C8;
  if (!qword_1000288C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000288C8);
  }

  return result;
}

unint64_t sub_10000B378()
{
  result = qword_1000288D0;
  if (!qword_1000288D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000288D0);
  }

  return result;
}

unint64_t sub_10000B3CC()
{
  result = qword_1000288D8;
  if (!qword_1000288D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000288D8);
  }

  return result;
}

uint64_t sub_10000B420(void *a1)
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

uint64_t sub_10000B4D0@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = sub_10001888C();
  __chkstk_darwin(v1 - 8);
  v29 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10001897C();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1000188AC();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000189BC();
  __chkstk_darwin(v5 - 8);
  v28 = sub_100005C80(&qword_100028928, &qword_10001AD08);
  v25 = *(v28 - 8);
  __chkstk_darwin(v28);
  v7 = v23 - v6;
  v8 = sub_100005C80(&qword_100028930, &qword_10001AD10);
  v26 = *(v8 - 8);
  v27 = v8;
  __chkstk_darwin(v8);
  v24 = v23 - v9;
  v23[3] = "_VALUE_INTENT_TITLE";
  sub_1000189AC();
  sub_10001889C();
  v10 = sub_1000189EC();
  v23[1] = v11;
  v23[2] = v10;
  swift_getKeyPath();
  sub_10001896C();
  sub_100005C80(&qword_100028938, &qword_10001AD40);
  sub_100005C80(&qword_100028940, &qword_10001AD48);
  sub_100008E0C();
  sub_10000BD98();
  sub_1000080B8();
  sub_100006610(&qword_100028950, &qword_100028938, &qword_10001AD40, &protocol conformance descriptor for Label<A, B>);
  sub_10000BDEC();
  sub_10001898C();
  if (qword_1000283E0 != -1)
  {
    swift_once();
  }

  v12 = sub_10001880C();
  sub_100006574(v12, qword_10002EDA8);
  swift_beginAccess();
  sub_1000187EC();
  swift_endAccess();
  v13 = sub_10001894C();
  v15 = v14;
  v17 = v16;
  v18 = sub_100006610(&qword_100028960, &qword_100028928, &qword_10001AD08, &protocol conformance descriptor for ControlPicker<A>);
  v19 = v24;
  v20 = v28;
  sub_10001891C();
  sub_10000BE68(v13, v15, v17 & 1);

  (*(v25 + 8))(v7, v20);
  v31 = v20;
  v32 = v18;
  swift_getOpaqueTypeConformance2();
  v21 = v27;
  sub_10001892C();
  return (*(v26 + 8))(v19, v21);
}

uint64_t sub_10000BA2C()
{
  v0 = sub_10001890C();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_10000BA8C@<X0>(uint64_t a1@<X8>)
{
  sub_10001890C();
  result = sub_10001893C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10000BB04@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_10001872C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001888C();
  v32 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v31 - v13;
  __chkstk_darwin(v12);
  v16 = &v31 - v15;
  v17 = *a1;
  v18 = sub_10000AAB0();
  if (*(v18 + 16) && (v19 = sub_100016EAC(v17), (v20 & 1) != 0))
  {
    (*(v5 + 16))(v7, *(v18 + 56) + *(v5 + 72) * v19, v4);

    sub_1000186FC();
    (*(v5 + 8))(v7, v4);
    v21 = v32;
    (*(v32 + 32))(v16, v14, v8);
    (*(v21 + 16))(v11, v16, v8);
    v22 = sub_10001894C();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    result = (*(v21 + 8))(v16, v8);
    v30 = v26 & 1;
  }

  else
  {

    v22 = 0;
    v24 = 0;
    v30 = 0;
    v28 = 0;
  }

  *a2 = v22;
  a2[1] = v24;
  a2[2] = v30;
  a2[3] = v28;
  return result;
}

unint64_t sub_10000BD98()
{
  result = qword_100028948;
  if (!qword_100028948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028948);
  }

  return result;
}

unint64_t sub_10000BDEC()
{
  result = qword_100028958;
  if (!qword_100028958)
  {
    sub_1000020B8(&qword_100028940, &qword_10001AD48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028958);
  }

  return result;
}

uint64_t sub_10000BE68(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10000BE78()
{
  sub_1000020B8(&qword_100028930, &qword_10001AD10);
  sub_1000020B8(&qword_100028928, &qword_10001AD08);
  sub_100006610(&qword_100028960, &qword_100028928, &qword_10001AD08, &protocol conformance descriptor for ControlPicker<A>);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10000BF4C()
{
  v0 = sub_100005C80(&qword_100028970, &qword_10001ADB0);

  return TupleWidget.init(_:)(v0, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000BFD4();
  sub_1000188FC();
  return 0;
}

unint64_t sub_10000BFD4()
{
  result = qword_100028968;
  if (!qword_100028968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028968);
  }

  return result;
}

unint64_t sub_10000C058()
{
  result = qword_100028978;
  if (!qword_100028978)
  {
    sub_1000020B8(&qword_100028980, &qword_10001ADB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028978);
  }

  return result;
}

uint64_t sub_10000C0BC()
{
  result = sub_1000189DC();
  qword_10002EE58 = result;
  unk_10002EE60 = v1;
  return result;
}

uint64_t sub_10000C0E8()
{
  if (qword_100028430 != -1)
  {
    swift_once();
  }

  v1 = qword_10002EE58;
  v2 = unk_10002EE60;
  swift_bridgeObjectRetain_n();
  v3._object = 0x800000010001D570;
  v3._countAndFlagsBits = 0xD000000000000023;
  sub_1000189FC(v3);

  qword_10002EE68 = v1;
  unk_10002EE70 = v2;
  return result;
}

uint64_t sub_10000C190()
{
  if (qword_100028430 != -1)
  {
    swift_once();
  }

  v1 = qword_10002EE58;
  v2 = unk_10002EE60;
  swift_bridgeObjectRetain_n();
  v3._object = 0x800000010001D500;
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  sub_1000189FC(v3);

  qword_10002EE78 = v1;
  unk_10002EE80 = v2;
  return result;
}

uint64_t sub_10000C238()
{
  if (qword_100028430 != -1)
  {
    swift_once();
  }

  v1 = qword_10002EE58;
  v2 = unk_10002EE60;
  swift_bridgeObjectRetain_n();
  v3._object = 0x800000010001D4A0;
  v3._countAndFlagsBits = 0xD00000000000001CLL;
  sub_1000189FC(v3);

  qword_10002EE88 = v1;
  unk_10002EE90 = v2;
  return result;
}

uint64_t sub_10000C2E0()
{
  if (qword_100028430 != -1)
  {
    swift_once();
  }

  v1 = qword_10002EE58;
  v2 = unk_10002EE60;
  swift_bridgeObjectRetain_n();
  v3._object = 0x800000010001D540;
  v3._countAndFlagsBits = 0xD000000000000025;
  sub_1000189FC(v3);

  qword_10002EE98 = v1;
  unk_10002EEA0 = v2;
  return result;
}

uint64_t sub_10000C388()
{
  if (qword_100028430 != -1)
  {
    swift_once();
  }

  v1 = qword_10002EE58;
  v2 = unk_10002EE60;
  swift_bridgeObjectRetain_n();
  v3._object = 0x800000010001D520;
  v3._countAndFlagsBits = 0xD00000000000001DLL;
  sub_1000189FC(v3);

  qword_10002EEA8 = v1;
  unk_10002EEB0 = v2;
  return result;
}

uint64_t sub_10000C45C@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = sub_10001888C();
  __chkstk_darwin(v1 - 8);
  v2 = sub_100005C80(&qword_100028988, &unk_10001B5E0);
  v17 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v17 - v3;
  v5 = sub_100005C80(&qword_100028990, &qword_10001AE20);
  v18 = *(v5 - 8);
  v19 = v5;
  __chkstk_darwin(v5);
  v7 = &v17 - v6;
  swift_getKeyPath();
  sub_100005C80(&qword_100028938, &qword_10001AD40);
  sub_10000C930();
  sub_100006610(&qword_100028950, &qword_100028938, &qword_10001AD40, &protocol conformance descriptor for Label<A, B>);
  sub_10001899C();
  if (qword_1000284A0 != -1)
  {
    swift_once();
  }

  v8 = sub_10001880C();
  sub_100006574(v8, qword_10002EF78);
  swift_beginAccess();
  sub_1000187EC();
  swift_endAccess();
  v9 = sub_10001894C();
  v11 = v10;
  v13 = v12;
  v14 = sub_100006610(&qword_1000289A0, &qword_100028988, &unk_10001B5E0, &protocol conformance descriptor for ControlToggle<A>);
  sub_10001891C();
  sub_10000BE68(v9, v11, v13 & 1);

  (*(v17 + 8))(v4, v2);
  v21 = v2;
  v22 = v14;
  swift_getOpaqueTypeConformance2();
  v15 = v19;
  sub_10001892C();
  return (*(v18 + 8))(v7, v15);
}

uint64_t sub_10000C834()
{
  v0 = sub_10001890C();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_10000C894@<X0>(uint64_t a2@<X8>)
{
  sub_10001890C();
  result = sub_10001893C();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

unint64_t sub_10000C930()
{
  result = qword_100028998;
  if (!qword_100028998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028998);
  }

  return result;
}

uint64_t sub_10000C984()
{
  sub_1000020B8(&qword_100028990, &qword_10001AE20);
  sub_1000020B8(&qword_100028988, &unk_10001B5E0);
  sub_100006610(&qword_1000289A0, &qword_100028988, &unk_10001B5E0, &protocol conformance descriptor for ControlToggle<A>);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10000CA5C()
{
  result = qword_1000289A8;
  if (!qword_1000289A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000289A8);
  }

  return result;
}

unint64_t sub_10000CAB4()
{
  result = qword_1000289B0;
  if (!qword_1000289B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000289B0);
  }

  return result;
}

uint64_t sub_10000CB08()
{
  v0 = sub_100005C80(&qword_100028690, &qword_10001ABE0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_10001888C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_10001880C();
  sub_1000065AC(v5, qword_10002EEB8);
  sub_100006574(v5, qword_10002EEB8);
  sub_10001887C();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1000187FC();
}

uint64_t sub_10000CC78()
{
  v0 = sub_100005C80(&qword_1000286C0, &qword_100019D00);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_100005C80(&qword_100028690, &qword_10001ABE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_10001888C();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  __chkstk_darwin(v8);
  sub_10001887C();
  sub_10001887C();
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_1000186DC();
  v9 = sub_1000186EC();
  (*(*(v9 - 8) + 56))(v2, 0, 1, v9);
  sub_10001887C();
  return sub_10001870C();
}

uint64_t sub_10000CEE0()
{
  v0 = sub_100005C80(&qword_100028A90, &qword_10001B4F8);
  sub_1000065AC(v0, qword_10002EED0);
  sub_100006574(v0, qword_10002EED0);
  if (qword_100028458 != -1)
  {
    swift_once();
  }

  sub_10000D194();

  return sub_10001879C();
}

unint64_t sub_10000CFDC()
{
  result = qword_1000289B8;
  if (!qword_1000289B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000289B8);
  }

  return result;
}

uint64_t sub_10000D030(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10000D644();
  *v4 = v2;
  v4[1] = sub_100003C90;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10000D0E4()
{
  result = qword_1000289C0;
  if (!qword_1000289C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000289C0);
  }

  return result;
}

unint64_t sub_10000D13C()
{
  result = qword_1000289C8;
  if (!qword_1000289C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000289C8);
  }

  return result;
}

unint64_t sub_10000D194()
{
  result = qword_1000289D0;
  if (!qword_1000289D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000289D0);
  }

  return result;
}

uint64_t sub_10000D1E8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10000D644();
  *v5 = v2;
  v5[1] = sub_100006700;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10000D29C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10000D644();
  *v4 = v2;
  v4[1] = sub_1000066D8;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10000D350()
{
  result = qword_1000289D8;
  if (!qword_1000289D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000289D8);
  }

  return result;
}

unint64_t sub_10000D3A8()
{
  result = qword_1000289E0;
  if (!qword_1000289E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000289E0);
  }

  return result;
}

unint64_t sub_10000D400()
{
  result = qword_1000289E8;
  if (!qword_1000289E8)
  {
    sub_1000020B8(&qword_1000289F0, qword_10001AF50);
    sub_10000D3A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000289E8);
  }

  return result;
}

uint64_t sub_10000D484(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10000CFDC();
  *v5 = v2;
  v5[1] = sub_1000043C0;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10000D53C()
{
  result = qword_1000289F8;
  if (!qword_1000289F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000289F8);
  }

  return result;
}

unint64_t sub_10000D594()
{
  result = qword_100028A00;
  if (!qword_100028A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028A00);
  }

  return result;
}

unint64_t sub_10000D5EC()
{
  result = qword_100028A08;
  if (!qword_100028A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028A08);
  }

  return result;
}

unint64_t sub_10000D644()
{
  result = qword_100028A10;
  if (!qword_100028A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028A10);
  }

  return result;
}

unint64_t sub_10000D69C()
{
  result = qword_100028A18;
  if (!qword_100028A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028A18);
  }

  return result;
}

uint64_t sub_10000D6F0@<X0>(uint64_t a1@<X8>)
{
  if (qword_100028468 != -1)
  {
    swift_once();
  }

  v2 = sub_100005C80(&qword_100028A90, &qword_10001B4F8);
  v3 = sub_100006574(v2, qword_10002EED0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_10000D7A8()
{
  result = qword_100028A20;
  if (!qword_100028A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028A20);
  }

  return result;
}

unint64_t sub_10000D800()
{
  result = qword_100028A28;
  if (!qword_100028A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028A28);
  }

  return result;
}

unint64_t sub_10000D858()
{
  result = qword_100028A30;
  if (!qword_100028A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028A30);
  }

  return result;
}

uint64_t sub_10000D8AC@<X0>(uint64_t *a2@<X8>)
{
  sub_10000CAB4();
  result = sub_1000184DC();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10000D8EC(uint64_t a1)
{
  sub_10000E408();
  v2 = sub_10001876C();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_10000D994()
{
  result = qword_100028A38;
  if (!qword_100028A38)
  {
    sub_1000020B8(&qword_100028A40, &qword_10001B1F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028A38);
  }

  return result;
}

uint64_t sub_10000D9F8(uint64_t a1)
{
  v2 = sub_10000D194();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10000DA48()
{
  result = qword_100028A48;
  if (!qword_100028A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028A48);
  }

  return result;
}

uint64_t sub_10000DAA0(uint64_t a1)
{
  v2 = sub_10000D858();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10000DAF0()
{
  result = qword_100028A50;
  if (!qword_100028A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028A50);
  }

  return result;
}

uint64_t sub_10000DB44()
{
  v0 = sub_10001888C();
  sub_1000065AC(v0, qword_10002EEE8);
  sub_100006574(v0, qword_10002EEE8);
  return sub_10001887C();
}

void (*sub_10000DBF0(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1000184EC();
  return sub_100004DB0;
}

unint64_t sub_10000DC64()
{
  result = qword_100028A58;
  if (!qword_100028A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028A58);
  }

  return result;
}

uint64_t sub_10000DCB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000E360();
  v5 = sub_10000E408();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_10000DD28()
{
  result = qword_100028A60;
  if (!qword_100028A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028A60);
  }

  return result;
}

unint64_t sub_10000DD80()
{
  result = qword_100028A68;
  if (!qword_100028A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028A68);
  }

  return result;
}

uint64_t sub_10000DE5C@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
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
  v9 = sub_100006574(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_10000DF04(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_10000E360();
  v6 = sub_10000E3B4();
  v7 = sub_10000E408();
  *v4 = v2;
  v4[1] = sub_1000051F4;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_10000DFD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000E064();
  *a1 = result;
  return result;
}

uint64_t sub_10000DFF8(uint64_t a1)
{
  v2 = sub_10000DC64();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10000E064()
{
  v17 = sub_1000187AC();
  v0 = *(v17 - 8);
  __chkstk_darwin(v17);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100005C80(&qword_100028688, &unk_100019CE0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = sub_100005C80(&qword_100028690, &qword_10001ABE0);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_10001888C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100005C80(&qword_100028A70, "(8");
  sub_10001887C();
  (*(v13 + 56))(v11, 1, 1, v12);
  v18 = 1;
  v14 = sub_1000184BC();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17);
  sub_10000D194();
  return sub_10001852C();
}

unint64_t sub_10000E360()
{
  result = qword_100028A78;
  if (!qword_100028A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028A78);
  }

  return result;
}

unint64_t sub_10000E3B4()
{
  result = qword_100028A80;
  if (!qword_100028A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028A80);
  }

  return result;
}

unint64_t sub_10000E408()
{
  result = qword_100028A88;
  if (!qword_100028A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028A88);
  }

  return result;
}

uint64_t sub_10000E4A0@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = sub_10001888C();
  __chkstk_darwin(v1 - 8);
  v29 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10001897C();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1000188AC();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000189BC();
  __chkstk_darwin(v5 - 8);
  v28 = sub_100005C80(&qword_100028928, &qword_10001AD08);
  v25 = *(v28 - 8);
  __chkstk_darwin(v28);
  v7 = v23 - v6;
  v8 = sub_100005C80(&qword_100028930, &qword_10001AD10);
  v26 = *(v8 - 8);
  v27 = v8;
  __chkstk_darwin(v8);
  v24 = v23 - v9;
  v23[3] = "IDENTIFIER_DESCRIPTION_TEXT";
  sub_1000189AC();
  sub_10001889C();
  v10 = sub_1000189EC();
  v23[1] = v11;
  v23[2] = v10;
  swift_getKeyPath();
  sub_10001896C();
  sub_100005C80(&qword_100028938, &qword_10001AD40);
  sub_100005C80(&qword_100028940, &qword_10001AD48);
  sub_10000ECF0();
  sub_10000ED44();
  sub_10000ED98();
  sub_100006610(&qword_100028950, &qword_100028938, &qword_10001AD40, &protocol conformance descriptor for Label<A, B>);
  sub_10000BDEC();
  sub_10001898C();
  if (qword_1000284E8 != -1)
  {
    swift_once();
  }

  v12 = sub_10001880C();
  sub_100006574(v12, qword_10002F010);
  swift_beginAccess();
  sub_1000187EC();
  swift_endAccess();
  v13 = sub_10001894C();
  v15 = v14;
  v17 = v16;
  v18 = sub_100006610(&qword_100028960, &qword_100028928, &qword_10001AD08, &protocol conformance descriptor for ControlPicker<A>);
  v19 = v24;
  v20 = v28;
  sub_10001891C();
  sub_10000BE68(v13, v15, v17 & 1);

  (*(v25 + 8))(v7, v20);
  v31 = v20;
  v32 = v18;
  swift_getOpaqueTypeConformance2();
  v21 = v27;
  sub_10001892C();
  return (*(v26 + 8))(v19, v21);
}

uint64_t sub_10000E9FC()
{
  v0 = sub_10001890C();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_10000EA5C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_10001872C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001888C();
  v32 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v31 - v13;
  __chkstk_darwin(v12);
  v16 = &v31 - v15;
  v17 = *a1;
  v18 = sub_10001741C();
  if (*(v18 + 16) && (v19 = sub_100016F18(v17), (v20 & 1) != 0))
  {
    (*(v5 + 16))(v7, *(v18 + 56) + *(v5 + 72) * v19, v4);

    sub_1000186FC();
    (*(v5 + 8))(v7, v4);
    v21 = v32;
    (*(v32 + 32))(v16, v14, v8);
    (*(v21 + 16))(v11, v16, v8);
    v22 = sub_10001894C();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    result = (*(v21 + 8))(v16, v8);
    v30 = v26 & 1;
  }

  else
  {

    v22 = 0;
    v24 = 0;
    v30 = 0;
    v28 = 0;
  }

  *a2 = v22;
  a2[1] = v24;
  a2[2] = v30;
  a2[3] = v28;
  return result;
}

unint64_t sub_10000ECF0()
{
  result = qword_100028A98;
  if (!qword_100028A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028A98);
  }

  return result;
}

unint64_t sub_10000ED44()
{
  result = qword_100028AA0;
  if (!qword_100028AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028AA0);
  }

  return result;
}

unint64_t sub_10000ED98()
{
  result = qword_100028AA8;
  if (!qword_100028AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028AA8);
  }

  return result;
}

uint64_t sub_10000EDEC()
{
  v0 = sub_1000188CC();
  sub_1000065AC(v0, qword_10002EF00);
  sub_100006574(v0, qword_10002EF00);
  v1 = @"Default";
  v2 = OSLogForCategory(v1);

  return sub_1000188DC();
}

uint64_t sub_10000EEA0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10001882C();
  sub_1000065AC(v3, a2);
  v4 = sub_100006574(v3, a2);
  v5 = enum case for IntentAuthenticationPolicy.requiresAuthentication(_:);
  v6 = *(*(v3 - 8) + 104);

  return v6(v4, v5, v3);
}

uint64_t sub_10000EF50@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = sub_10001888C();
  __chkstk_darwin(v1 - 8);
  v2 = sub_100005C80(&qword_100028988, &unk_10001B5E0);
  v17 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v17 - v3;
  v5 = sub_100005C80(&qword_100028990, &qword_10001AE20);
  v18 = *(v5 - 8);
  v19 = v5;
  __chkstk_darwin(v5);
  v7 = &v17 - v6;
  swift_getKeyPath();
  sub_100005C80(&qword_100028938, &qword_10001AD40);
  sub_100003954();
  sub_100006610(&qword_100028950, &qword_100028938, &qword_10001AD40, &protocol conformance descriptor for Label<A, B>);
  sub_10001899C();
  if (qword_100028398 != -1)
  {
    swift_once();
  }

  v8 = sub_10001880C();
  sub_100006574(v8, qword_10002ED10);
  swift_beginAccess();
  sub_1000187EC();
  swift_endAccess();
  v9 = sub_10001894C();
  v11 = v10;
  v13 = v12;
  v14 = sub_100006610(&qword_1000289A0, &qword_100028988, &unk_10001B5E0, &protocol conformance descriptor for ControlToggle<A>);
  sub_10001891C();
  sub_10000BE68(v9, v11, v13 & 1);

  (*(v17 + 8))(v4, v2);
  v21 = v2;
  v22 = v14;
  swift_getOpaqueTypeConformance2();
  v15 = v19;
  sub_10001892C();
  return (*(v18 + 8))(v7, v15);
}

uint64_t sub_10000F328()
{
  v0 = sub_10001890C();

  return Label<>.init(_:systemImage:)(v0);
}

unint64_t sub_10000F394()
{
  result = qword_100028AB0;
  if (!qword_100028AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028AB0);
  }

  return result;
}

uint64_t sub_10000F42C()
{
  v0 = sub_100005C80(&qword_100028690, &qword_10001ABE0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_10001888C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_10001880C();
  sub_1000065AC(v5, qword_10002EF78);
  sub_100006574(v5, qword_10002EF78);
  sub_10001887C();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1000187FC();
}

uint64_t sub_10000F59C()
{
  v0 = sub_100005C80(&qword_1000286C0, &qword_100019D00);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_100005C80(&qword_100028690, &qword_10001ABE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_10001888C();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  __chkstk_darwin(v8);
  sub_10001887C();
  sub_10001887C();
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_1000186DC();
  v9 = sub_1000186EC();
  (*(*(v9 - 8) + 56))(v2, 0, 1, v9);
  sub_10001887C();
  return sub_10001870C();
}

uint64_t sub_10000F804()
{
  v0 = sub_100005C80(&qword_100028BE8, &qword_10001BF78);
  sub_1000065AC(v0, qword_10002EF90);
  sub_100006574(v0, qword_10002EF90);
  if (qword_100028440 != -1)
  {
    swift_once();
  }

  sub_100010E60();

  return sub_10001879C();
}

uint64_t sub_10000F8E8()
{
  v1 = [objc_opt_self() sharedSettingsUserDefaults];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 rc_useStereoRecording];
  }

  else
  {
    v3 = 0;
  }

  **(v0 + 16) = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10000F9B4()
{
  v1 = sub_1000189CC();
  v2 = MGGetBoolAnswer();

  if (v2)
  {
    sub_100012F58();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v4 = *(v0 + 16);
    v5 = [objc_opt_self() sharedSettingsUserDefaults];
    [v5 rc_setUseStereoRecording:v4];
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10000FAB8()
{
  v0 = sub_10001888C();
  sub_1000065AC(v0, qword_10002EFA8);
  sub_100006574(v0, qword_10002EFA8);
  return sub_10001887C();
}

uint64_t sub_10000FB1C()
{
  v0 = sub_100005C80(&qword_100028710, &unk_100019D80);
  sub_1000065AC(v0, qword_10002EFC0);
  v1 = sub_100006574(v0, qword_10002EFC0);
  sub_10001866C();
  v2 = sub_10001867C();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10000FBDC()
{
  result = swift_getKeyPath();
  qword_10002EFD8 = result;
  return result;
}

uint64_t sub_10000FC04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  sub_100005C80(&qword_1000286E0, &unk_100019D30);
  v3[10] = swift_task_alloc();
  sub_100005C80(&qword_1000286E8, &qword_10001AC40);
  v3[11] = swift_task_alloc();
  sub_100005C80(&qword_100028C08, &qword_10001BFA0);
  v3[12] = swift_task_alloc();
  v4 = sub_1000184BC();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v5 = sub_100005C80(&qword_100028C10, &qword_10001BFA8);
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_10000FDE4, 0, 0);
}

uint64_t sub_10000FDE4()
{
  sub_1000184FC();
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  v2 = sub_100010E60();
  *v1 = v0;
  v1[1] = sub_10000FEB4;
  v3 = *(v0 + 152);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v3, v0 + 16, sub_100012FB8, 0, &type metadata for StereoRecordingEntity, v2);
}

uint64_t sub_10000FEB4()
{

  return _swift_task_switch(sub_10000FFB0, 0, 0);
}

uint64_t sub_10000FFB0()
{
  sub_1000184FC();
  v1 = *(v0 + 24);
  *(v0 + 32) = v1;
  *(v0 + 168) = v1;
  sub_1000184FC();
  *(v0 + 201) = *(v0 + 200);
  if (qword_1000284C0 != -1)
  {
    swift_once();
  }

  v2 = qword_10002EFD8;
  *(v0 + 176) = qword_10002EFD8;

  v3 = swift_task_alloc();
  *(v0 + 184) = v3;
  v4 = sub_100006610(&qword_100028BF0, &qword_100028BF8, &qword_10001BF90, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v3 = v0;
  v3[1] = sub_100010110;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 201, v2, &type metadata for Bool, v4);
}

uint64_t sub_100010110()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_100003180;
  }

  else
  {
    v2 = sub_100010264;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100010264()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v10 = v0[18];
  v11 = v0[15];
  v12 = v0[14];
  v13 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  sub_1000184FC();
  v0[6] = v0[5];
  v6 = sub_1000187DC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = sub_10001881C();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_10000F394();
  sub_100011074();
  sub_10001848C();
  (*(v2 + 16))(v10, v1, v3);
  sub_1000184AC();
  sub_1000184CC();
  (*(v12 + 8))(v11, v13);

  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000104D0()
{
  v0 = sub_100005C80(&qword_100028C18, &qword_10001BFB0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_1000284C0 != -1)
  {
    swift_once();
  }

  sub_1000186CC();

  sub_100011074();
  sub_100006610(&qword_100028C20, &qword_100028C18, &qword_10001BFB0, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1000186BC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t (*sub_100010644(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000184EC();
  return sub_1000034B4;
}

uint64_t (*sub_1000106B8(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000184EC();
  return sub_1000066DC;
}

uint64_t sub_10001072C()
{
  if (qword_1000284C0 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10001078C()
{
  result = qword_100028AC8;
  if (!qword_100028AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028AC8);
  }

  return result;
}

unint64_t sub_1000107E4()
{
  result = qword_100028AD0;
  if (!qword_100028AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028AD0);
  }

  return result;
}

uint64_t sub_1000108F4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000284B8 != -1)
  {
    swift_once();
  }

  v2 = sub_100005C80(&qword_100028710, &unk_100019D80);
  v3 = sub_100006574(v2, qword_10002EFC0);

  return sub_100006658(v3, a1);
}

uint64_t sub_100010978(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000066C8;

  return sub_10000FC04(a1, v5, v4);
}

uint64_t sub_100010A24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001268C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100010A6C()
{
  result = qword_100028AD8;
  if (!qword_100028AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028AD8);
  }

  return result;
}

uint64_t sub_100010AC4()
{
  v0 = sub_10001888C();
  __chkstk_darwin(v0 - 8);
  sub_100005C80(&qword_100028AC0, qword_10001B620);
  sub_10001887C();
  sub_100006610(&qword_100028BF0, &qword_100028BF8, &qword_10001BF90, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  result = sub_10001886C();
  qword_10002EFE0 = result;
  return result;
}

uint64_t sub_100010BFC()
{
  if (qword_1000284C8 != -1)
  {
    swift_once();
  }

  **(v0 + 16) = qword_10002EFE0;
  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_100010CA8()
{
  result = qword_100028AE0;
  if (!qword_100028AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028AE0);
  }

  return result;
}

uint64_t sub_100010CFC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100011310();
  *v4 = v2;
  v4[1] = sub_100003C90;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100010DB0()
{
  result = qword_100028AE8;
  if (!qword_100028AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028AE8);
  }

  return result;
}

unint64_t sub_100010E08()
{
  result = qword_100028AF0;
  if (!qword_100028AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028AF0);
  }

  return result;
}

unint64_t sub_100010E60()
{
  result = qword_100028AF8;
  if (!qword_100028AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028AF8);
  }

  return result;
}

uint64_t sub_100010EB4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100011310();
  *v5 = v2;
  v5[1] = sub_100006700;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100010F68(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100011310();
  *v4 = v2;
  v4[1] = sub_1000066D8;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10001101C()
{
  result = qword_100028B00;
  if (!qword_100028B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028B00);
  }

  return result;
}

unint64_t sub_100011074()
{
  result = qword_100028B08;
  if (!qword_100028B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028B08);
  }

  return result;
}

unint64_t sub_1000110CC()
{
  result = qword_100028B10;
  if (!qword_100028B10)
  {
    sub_1000020B8(&qword_100028B18, qword_10001B8C0);
    sub_100011074();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028B10);
  }

  return result;
}

uint64_t sub_100011150(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100010CA8();
  *v5 = v2;
  v5[1] = sub_1000043C0;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100011208()
{
  result = qword_100028B20;
  if (!qword_100028B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028B20);
  }

  return result;
}

unint64_t sub_100011260()
{
  result = qword_100028B28;
  if (!qword_100028B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028B28);
  }

  return result;
}

unint64_t sub_1000112B8()
{
  result = qword_100028B30;
  if (!qword_100028B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028B30);
  }

  return result;
}

unint64_t sub_100011310()
{
  result = qword_100028B38;
  if (!qword_100028B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028B38);
  }

  return result;
}

unint64_t sub_100011368()
{
  result = qword_100028B40;
  if (!qword_100028B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028B40);
  }

  return result;
}

uint64_t sub_1000113BC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000284A8 != -1)
  {
    swift_once();
  }

  v2 = sub_100005C80(&qword_100028BE8, &qword_10001BF78);
  v3 = sub_100006574(v2, qword_10002EF90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100011474()
{
  result = qword_100028B48;
  if (!qword_100028B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028B48);
  }

  return result;
}

unint64_t sub_1000114CC()
{
  result = qword_100028B50;
  if (!qword_100028B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028B50);
  }

  return result;
}

unint64_t sub_100011524()
{
  result = qword_100028B58;
  if (!qword_100028B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028B58);
  }

  return result;
}

uint64_t sub_100011578@<X0>(uint64_t *a2@<X8>)
{
  sub_10000C930();
  result = sub_1000184DC();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1000115B8(uint64_t a1)
{
  sub_100012F04();
  v2 = sub_10001876C();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100011624@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000284A0 != -1)
  {
    swift_once();
  }

  v2 = sub_10001880C();
  v3 = sub_100006574(v2, qword_10002EF78);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_100011728(uint64_t a1)
{
  v2 = sub_100010E60();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100011778()
{
  result = qword_100028B70;
  if (!qword_100028B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028B70);
  }

  return result;
}

uint64_t sub_1000117D0(uint64_t a1)
{
  v2 = sub_100011524();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100011820()
{
  result = qword_100028B78;
  if (!qword_100028B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028B78);
  }

  return result;
}

uint64_t sub_100011874()
{
  v0 = sub_10001888C();
  sub_1000065AC(v0, qword_10002EFE8);
  sub_100006574(v0, qword_10002EFE8);
  return sub_10001887C();
}

uint64_t (*sub_1000118D8(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000184EC();
  return sub_1000066DC;
}

unint64_t sub_10001194C()
{
  result = qword_100028B80;
  if (!qword_100028B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028B80);
  }

  return result;
}

uint64_t sub_1000119A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012E5C();
  v5 = sub_100012F04();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_100011A10()
{
  result = qword_100028B88;
  if (!qword_100028B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028B88);
  }

  return result;
}

unint64_t sub_100011A68()
{
  result = qword_100028B90;
  if (!qword_100028B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028B90);
  }

  return result;
}

uint64_t sub_100011B60(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_100012E5C();
  v6 = sub_100012EB0();
  v7 = sub_100012F04();
  *v4 = v2;
  v4[1] = sub_1000051F4;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_100011C2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100012B64();
  *a1 = result;
  return result;
}

uint64_t sub_100011C54(uint64_t a1)
{
  v2 = sub_10001194C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100011C90()
{
  sub_100005C80(&qword_100028648, &qword_100019C80);
  sub_10001864C();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100019300;
  sub_10001268C();
  sub_10000F394();
  result = sub_10001865C();
  qword_10002F000 = v0;
  return result;
}

uint64_t sub_100011D9C(uint64_t a1)
{
  v29 = a1;
  v26 = sub_10001855C();
  v33 = *(v26 - 8);
  __chkstk_darwin(v26);
  v25 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100005C80(&qword_100028BB0, &qword_10001BF50);
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v18 - v3;
  v5 = sub_100005C80(&qword_100028BB8, &qword_10001BF58);
  __chkstk_darwin(v5);
  sub_10000F394();
  sub_10001862C();
  v34._countAndFlagsBits = 0x206E727554;
  v34._object = 0xE500000000000000;
  sub_10001861C(v34);
  swift_getKeyPath();
  v28 = sub_10000612C();
  sub_10001854C();

  sub_10001860C();

  v24 = "ATION_BASED_NAMING";
  v35._object = 0x800000010001D770;
  v35._countAndFlagsBits = 0xD000000000000011;
  sub_10001861C(v35);
  sub_10001863C();
  v27 = sub_10001857C();
  v6 = v2 + 8;
  v31 = *(v2 + 8);
  v7 = v32;
  v31(v4, v32);
  v30 = v6;
  sub_10001862C();
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  sub_10001861C(v36);
  swift_getKeyPath();
  sub_10001854C();

  sub_10001860C();

  v37._object = (v24 | 0x8000000000000000);
  v37._countAndFlagsBits = 0xD000000000000011;
  sub_10001861C(v37);
  sub_10001863C();
  v24 = sub_10001857C();
  v31(v4, v7);
  sub_10001862C();
  v38._countAndFlagsBits = 0x206E727554;
  v38._object = 0xE500000000000000;
  sub_10001861C(v38);
  swift_getKeyPath();
  sub_10001854C();

  sub_10001860C();

  v22 = " stereo recording";
  v39._countAndFlagsBits = 0xD000000000000015;
  v39._object = 0x800000010001D790;
  sub_10001861C(v39);
  v21 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v8 = v33;
  v20 = *(v33 + 104);
  v10 = v25;
  v9 = v26;
  v20(v25);
  sub_1000185FC();
  v11 = *(v8 + 8);
  v33 = v8 + 8;
  v19 = v11;
  v11(v10, v9);
  v40._countAndFlagsBits = 0;
  v40._object = 0xE000000000000000;
  sub_10001861C(v40);
  sub_10001863C();
  v23 = sub_10001857C();
  v31(v4, v32);
  sub_10001862C();
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  sub_10001861C(v41);
  swift_getKeyPath();
  sub_10001854C();

  sub_10001860C();

  v42._countAndFlagsBits = 0xD000000000000015;
  v42._object = (v22 | 0x8000000000000000);
  sub_10001861C(v42);
  (v20)(v10, v21, v9);
  sub_1000185FC();
  v19(v10, v9);
  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  sub_10001861C(v43);
  sub_10001863C();
  v12 = sub_10001857C();
  v31(v4, v32);
  sub_100005C80(&qword_100028BC0, &unk_10001BF60);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100019320;
  v14 = v23;
  v15 = v24;
  *(v13 + 32) = v27;
  *(v13 + 40) = v15;
  *(v13 + 48) = v14;
  *(v13 + 56) = v12;
  v16 = sub_10001856C();

  return v16;
}

uint64_t sub_1000123E8()
{
  v0 = sub_1000185EC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10000612C();
  sub_10001854C();

  sub_10000F394();
  sub_1000185DC();
  v4 = sub_1000185CC();
  (*(v1 + 8))(v3, v0);
  sub_100005C80(&qword_100028658, &qword_100019CB0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100019300;
  *(v5 + 32) = v4;
  v6 = sub_1000185BC();

  return v6;
}

uint64_t sub_10001268C()
{
  v0 = sub_100005C80(&qword_100028680, &qword_100019CD8);
  __chkstk_darwin(v0 - 8);
  v30 = &v22 - v1;
  v31 = sub_1000187AC();
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005C80(&qword_100028688, &unk_100019CE0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v11 = sub_100005C80(&qword_100028690, &qword_10001ABE0);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = sub_10001888C();
  v29 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v23 = sub_100005C80(&qword_100028BC8, &qword_10001BF70);
  sub_10001887C();
  v16 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v16;
  v16(v13, 1, 1, v14);
  v33 = 0;
  v17 = sub_1000184BC();
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);
  v18(v8, 1, 1, v17);
  v26 = enum case for InputConnectionBehavior.default(_:);
  v19 = *(v2 + 104);
  v24 = v2 + 104;
  v25 = v19;
  v19(v4);
  sub_100010E60();
  v23 = sub_10001852C();
  sub_100005C80(&qword_1000286A0, &qword_100019CF8);
  sub_10001887C();
  v28(v13, 1, 1, v29);
  v32 = 2;
  v20 = sub_100018A1C();
  (*(*(v20 - 8) + 56))(v30, 1, 1, v20);
  v18(v10, 1, 1, v17);
  v25(v4, v26, v31);
  sub_10001853C();
  return v23;
}

void *sub_100012AF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000184FC();
  *a1 = v3;
  return result;
}

uint64_t sub_100012B64()
{
  v17[0] = sub_1000187AC();
  v0 = *(v17[0] - 8);
  __chkstk_darwin(v17[0]);
  v2 = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100005C80(&qword_100028688, &unk_100019CE0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v17 - v7;
  v9 = sub_100005C80(&qword_100028690, &qword_10001ABE0);
  __chkstk_darwin(v9 - 8);
  v11 = v17 - v10;
  v12 = sub_10001888C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100005C80(&qword_100028BC8, &qword_10001BF70);
  sub_10001887C();
  (*(v13 + 56))(v11, 1, 1, v12);
  v17[1] = 0;
  v14 = sub_1000184BC();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17[0]);
  sub_100010E60();
  return sub_10001852C();
}

unint64_t sub_100012E5C()
{
  result = qword_100028BD0;
  if (!qword_100028BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028BD0);
  }

  return result;
}

unint64_t sub_100012EB0()
{
  result = qword_100028BD8;
  if (!qword_100028BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028BD8);
  }

  return result;
}

unint64_t sub_100012F04()
{
  result = qword_100028BE0;
  if (!qword_100028BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028BE0);
  }

  return result;
}

unint64_t sub_100012F58()
{
  result = qword_100028C00;
  if (!qword_100028C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028C00);
  }

  return result;
}

unint64_t sub_100012FDC()
{
  result = qword_100028C28;
  if (!qword_100028C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028C28);
  }

  return result;
}

uint64_t sub_100013074()
{
  v0 = sub_100005C80(&qword_100028690, &qword_10001ABE0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_10001888C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_10001880C();
  sub_1000065AC(v5, qword_10002F010);
  sub_100006574(v5, qword_10002F010);
  sub_10001887C();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1000187FC();
}

uint64_t sub_1000131E4()
{
  v0 = sub_100005C80(&qword_100028DD0, &qword_10001CC30);
  sub_1000065AC(v0, qword_10002F028);
  sub_100006574(v0, qword_10002F028);
  if (qword_100028448 != -1)
  {
    swift_once();
  }

  sub_100014B54();

  return sub_10001879C();
}

uint64_t sub_1000132A8()
{
  v0 = sub_100005C80(&qword_1000286C0, &qword_100019D00);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_100005C80(&qword_100028690, &qword_10001ABE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_10001888C();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  __chkstk_darwin(v8);
  sub_10001887C();
  sub_10001887C();
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_1000186DC();
  v9 = sub_1000186EC();
  (*(*(v9 - 8) + 56))(v2, 0, 1, v9);
  sub_10001887C();
  return sub_10001870C();
}

uint64_t sub_100013534()
{
  v1 = [objc_opt_self() sharedSettingsUserDefaults];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 rc_audioQuality];
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v0 + 16);
  *v4 = sub_100017798(v3) & 1;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100013614()
{
  v1 = sub_1000189CC();
  v2 = MGGetBoolAnswer();

  v3 = objc_opt_self();
  v4 = [v3 sharedSettingsUserDefaults];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 rc_channelConfiguration];
  }

  else
  {
    v6 = 2;
  }

  if (v6 == 2)
  {
    v7 = v2;
  }

  else
  {
    v7 = 0;
  }

  if (v7 != 1 || *(v0 + 16) == 0)
  {
    v9 = [v3 sharedSettingsUserDefaults];
    if (v9)
    {
      v10 = v9;
      [v9 rc_setAudioQuality:*(v0 + 16)];
    }

    v11 = *(v0 + 8);
  }

  else
  {
    sub_100018148();
    swift_allocError();
    swift_willThrow();
    v11 = *(v0 + 8);
  }

  return v11();
}

uint64_t sub_100013778()
{
  v0 = sub_10001888C();
  sub_1000065AC(v0, qword_10002F040);
  sub_100006574(v0, qword_10002F040);
  return sub_10001887C();
}

uint64_t sub_1000137DC()
{
  v0 = sub_100005C80(&qword_100028710, &unk_100019D80);
  sub_1000065AC(v0, qword_10002F058);
  v1 = sub_100006574(v0, qword_10002F058);
  sub_10001866C();
  v2 = sub_10001867C();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10001389C()
{
  result = swift_getKeyPath();
  qword_10002F070 = result;
  return result;
}

uint64_t sub_1000138C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  sub_100005C80(&qword_1000286E0, &unk_100019D30);
  v3[10] = swift_task_alloc();
  sub_100005C80(&qword_1000286E8, &qword_10001AC40);
  v3[11] = swift_task_alloc();
  sub_100005C80(&qword_100028E10, &qword_10001CC78);
  v3[12] = swift_task_alloc();
  v4 = sub_1000184BC();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v5 = sub_100005C80(&qword_100028E18, &qword_10001CC80);
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_100013AA4, 0, 0);
}

uint64_t sub_100013AA4()
{
  sub_1000184FC();
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  v2 = sub_100014B54();
  *v1 = v0;
  v1[1] = sub_100013B74;
  v3 = *(v0 + 152);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v3, v0 + 16, sub_100018270, 0, &type metadata for AudioQualityEntity, v2);
}

uint64_t sub_100013B74()
{

  return _swift_task_switch(sub_100013C70, 0, 0);
}

uint64_t sub_100013C70()
{
  sub_1000184FC();
  v1 = *(v0 + 24);
  *(v0 + 32) = v1;
  *(v0 + 168) = v1;
  sub_1000184FC();
  *(v0 + 201) = *(v0 + 200);
  if (qword_100028508 != -1)
  {
    swift_once();
  }

  v2 = qword_10002F070;
  *(v0 + 176) = qword_10002F070;

  v3 = swift_task_alloc();
  *(v0 + 184) = v3;
  v4 = sub_100006610(&qword_100028DF0, &qword_100028DF8, &qword_10001CC60, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v3 = v0;
  v3[1] = sub_100013DD0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 201, v2, &type metadata for AudioQualityEntity.IntentAudioQuality, v4);
}

uint64_t sub_100013DD0()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_100003180;
  }

  else
  {
    v2 = sub_100013F24;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100013F24()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v10 = v0[18];
  v11 = v0[15];
  v12 = v0[14];
  v13 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  sub_1000184FC();
  v0[6] = v0[5];
  v6 = sub_1000187DC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = sub_10001881C();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_100012FDC();
  sub_100014D68();
  sub_10001848C();
  (*(v2 + 16))(v10, v1, v3);
  sub_1000184AC();
  sub_1000184CC();
  (*(v12 + 8))(v11, v13);

  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100014190()
{
  v0 = sub_100005C80(&qword_100028E20, &qword_10001CC88);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_100028508 != -1)
  {
    swift_once();
  }

  sub_1000186CC();

  sub_100014D68();
  sub_100006610(&qword_100028E28, &qword_100028E20, &qword_10001CC88, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1000186BC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t (*sub_100014304(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000184EC();
  return sub_1000034B4;
}

uint64_t (*sub_100014378(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000184EC();
  return sub_1000066DC;
}

uint64_t sub_1000143EC()
{
  if (qword_100028508 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10001444C()
{
  result = qword_100028C40;
  if (!qword_100028C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028C40);
  }

  return result;
}

unint64_t sub_1000144A4()
{
  result = qword_100028C48;
  if (!qword_100028C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028C48);
  }

  return result;
}

uint64_t sub_1000145C8@<X0>(uint64_t a1@<X8>)
{
  if (qword_100028500 != -1)
  {
    swift_once();
  }

  v2 = sub_100005C80(&qword_100028710, &unk_100019D80);
  v3 = sub_100006574(v2, qword_10002F058);
  return sub_100018208(v3, a1, &qword_100028710, &unk_100019D80);
}

uint64_t sub_100014658(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000066C8;

  return sub_1000138C4(a1, v5, v4);
}

uint64_t sub_100014704@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000178E0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10001474C()
{
  result = qword_100028C50;
  if (!qword_100028C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028C50);
  }

  return result;
}

uint64_t sub_1000147A4()
{
  v0 = sub_10001888C();
  __chkstk_darwin(v0 - 8);
  sub_100005C80(&qword_100028C38, qword_10001BFE0);
  sub_10001887C();
  sub_100006610(&qword_100028DF0, &qword_100028DF8, &qword_10001CC60, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  sub_10000ECF0();
  result = sub_10001885C();
  qword_10002F078 = result;
  return result;
}

uint64_t sub_1000148F0()
{
  if (qword_100028510 != -1)
  {
    swift_once();
  }

  **(v0 + 16) = qword_10002F078;
  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_10001499C()
{
  result = qword_100028C58;
  if (!qword_100028C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028C58);
  }

  return result;
}

uint64_t sub_1000149F0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000156C8();
  *v4 = v2;
  v4[1] = sub_100003C90;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100014AA4()
{
  result = qword_100028C60;
  if (!qword_100028C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028C60);
  }

  return result;
}

unint64_t sub_100014AFC()
{
  result = qword_100028C68;
  if (!qword_100028C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028C68);
  }

  return result;
}

unint64_t sub_100014B54()
{
  result = qword_100028C70;
  if (!qword_100028C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028C70);
  }

  return result;
}

uint64_t sub_100014BA8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000156C8();
  *v5 = v2;
  v5[1] = sub_100006700;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100014C5C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000156C8();
  *v4 = v2;
  v4[1] = sub_1000066D8;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100014D10()
{
  result = qword_100028C78;
  if (!qword_100028C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028C78);
  }

  return result;
}

unint64_t sub_100014D68()
{
  result = qword_100028C80;
  if (!qword_100028C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028C80);
  }

  return result;
}

unint64_t sub_100014DC0()
{
  result = qword_100028C88;
  if (!qword_100028C88)
  {
    sub_1000020B8(&qword_100028C90, qword_10001C280);
    sub_100014D68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028C88);
  }

  return result;
}

uint64_t sub_100014E44(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10001499C();
  *v5 = v2;
  v5[1] = sub_1000043C0;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100014EF8()
{
  v0 = sub_100005C80(&qword_100028690, &qword_10001ABE0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_10001888C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_10001880C();
  sub_1000065AC(v5, qword_10002F080);
  sub_100006574(v5, qword_10002F080);
  sub_10001887C();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1000187FC();
}

unint64_t sub_100015084()
{
  result = qword_100028C98;
  if (!qword_100028C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028C98);
  }

  return result;
}

void *sub_1000150D8@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_1000150FC()
{
  result = qword_100028CA0;
  if (!qword_100028CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028CA0);
  }

  return result;
}

unint64_t sub_100015154()
{
  result = qword_100028CA8;
  if (!qword_100028CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028CA8);
  }

  return result;
}

unint64_t sub_1000151AC()
{
  result = qword_100028CB0;
  if (!qword_100028CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028CB0);
  }

  return result;
}

unint64_t sub_100015204()
{
  result = qword_100028CB8;
  if (!qword_100028CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028CB8);
  }

  return result;
}

unint64_t sub_10001525C()
{
  result = qword_100028CC0;
  if (!qword_100028CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028CC0);
  }

  return result;
}

unint64_t sub_1000152B0()
{
  result = qword_100028CC8;
  if (!qword_100028CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028CC8);
  }

  return result;
}

unint64_t sub_100015308()
{
  result = qword_100028CD0;
  if (!qword_100028CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028CD0);
  }

  return result;
}

uint64_t sub_1000153C4(uint64_t a1)
{
  v2 = sub_10000ECF0();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100015414()
{
  result = qword_100028CD8;
  if (!qword_100028CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028CD8);
  }

  return result;
}

unint64_t sub_10001546C()
{
  result = qword_100028CE0;
  if (!qword_100028CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028CE0);
  }

  return result;
}

unint64_t sub_1000154C4()
{
  result = qword_100028CE8;
  if (!qword_100028CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028CE8);
  }

  return result;
}

uint64_t sub_10001551C(uint64_t a1)
{
  v2 = sub_100015308();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000155C0()
{
  result = qword_100028D00;
  if (!qword_100028D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D00);
  }

  return result;
}

unint64_t sub_100015618()
{
  result = qword_100028D08;
  if (!qword_100028D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D08);
  }

  return result;
}

unint64_t sub_100015670()
{
  result = qword_100028D10;
  if (!qword_100028D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D10);
  }

  return result;
}

unint64_t sub_1000156C8()
{
  result = qword_100028D18;
  if (!qword_100028D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D18);
  }

  return result;
}

unint64_t sub_100015720()
{
  result = qword_100028D20;
  if (!qword_100028D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D20);
  }

  return result;
}

uint64_t sub_100015774@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000284F0 != -1)
  {
    swift_once();
  }

  v2 = sub_100005C80(&qword_100028DD0, &qword_10001CC30);
  v3 = sub_100006574(v2, qword_10002F028);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_10001582C()
{
  result = qword_100028D28;
  if (!qword_100028D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D28);
  }

  return result;
}

unint64_t sub_100015884()
{
  result = qword_100028D30;
  if (!qword_100028D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D30);
  }

  return result;
}

unint64_t sub_1000158DC()
{
  result = qword_100028D38;
  if (!qword_100028D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D38);
  }

  return result;
}

uint64_t sub_100015930@<X0>(uint64_t *a2@<X8>)
{
  sub_10000ED98();
  result = sub_1000184DC();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100015970(uint64_t a1)
{
  sub_1000180F4();
  v2 = sub_10001876C();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1000159DC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000284E8 != -1)
  {
    swift_once();
  }

  v2 = sub_10001880C();
  v3 = sub_100006574(v2, qword_10002F010);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_100015AE0(uint64_t a1)
{
  v2 = sub_100014B54();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100015B30()
{
  result = qword_100028D50;
  if (!qword_100028D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D50);
  }

  return result;
}

uint64_t sub_100015B88(uint64_t a1)
{
  v2 = sub_1000158DC();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100015BD8()
{
  result = qword_100028D58;
  if (!qword_100028D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D58);
  }

  return result;
}

uint64_t sub_100015C2C()
{
  v0 = sub_10001888C();
  sub_1000065AC(v0, qword_10002F098);
  sub_100006574(v0, qword_10002F098);
  return sub_10001887C();
}

uint64_t (*sub_100015C90(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000184EC();
  return sub_1000066DC;
}

unint64_t sub_100015D04()
{
  result = qword_100028D60;
  if (!qword_100028D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D60);
  }

  return result;
}

uint64_t sub_100015D58(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001804C();
  v5 = sub_1000180F4();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_100015DC8()
{
  result = qword_100028D68;
  if (!qword_100028D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D68);
  }

  return result;
}

unint64_t sub_100015E20()
{
  result = qword_100028D70;
  if (!qword_100028D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D70);
  }

  return result;
}

uint64_t sub_100015F20(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_10001804C();
  v6 = sub_1000180A0();
  v7 = sub_1000180F4();
  *v4 = v2;
  v4[1] = sub_1000051F4;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_100015FEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100017D54();
  *a1 = result;
  return result;
}

uint64_t sub_100016014(uint64_t a1)
{
  v2 = sub_100015D04();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100016050()
{
  sub_100005C80(&qword_100028648, &qword_100019C80);
  sub_10001864C();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100019300;
  sub_1000178E0();
  sub_100012FDC();
  result = sub_10001865C();
  qword_10002F0B0 = v0;
  return result;
}

uint64_t sub_10001615C(uint64_t a1)
{
  v2 = sub_10001855C();
  v25 = *(v2 - 8);
  v26 = v2;
  __chkstk_darwin(v2);
  v24 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100005C80(&qword_100028D90, &qword_10001CBD8);
  v18 = v4;
  v27 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v18 - v5;
  v7 = sub_100005C80(&qword_100028D98, &qword_10001CBE0);
  __chkstk_darwin(v7);
  sub_100012FDC();
  sub_10001862C();
  v28._countAndFlagsBits = 0xD000000000000028;
  v28._object = 0x800000010001DA00;
  sub_10001861C(v28);
  swift_getKeyPath();
  v20 = sub_1000152B0();
  v21 = a1;
  sub_10001854C();

  sub_10001860C();

  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  sub_10001861C(v29);
  sub_10001863C();
  v23 = sub_10001857C();
  v8 = *(v27 + 8);
  v27 += 8;
  v8(v6, v4);
  v19 = v8;
  sub_10001862C();
  v30._countAndFlagsBits = 0x692064726F636552;
  v30._object = 0xEA0000000000206ELL;
  sub_10001861C(v30);
  swift_getKeyPath();
  sub_10001854C();

  sub_10001860C();

  v31._countAndFlagsBits = 0x7974696C61757120;
  v31._object = 0xE800000000000000;
  sub_10001861C(v31);
  sub_10001863C();
  v22 = sub_10001857C();
  v9 = v18;
  v8(v6, v18);
  sub_10001862C();
  v32._countAndFlagsBits = 0x2065676E616863;
  v32._object = 0xE700000000000000;
  sub_10001861C(v32);
  v11 = v24;
  v10 = v25;
  v12 = v26;
  (*(v25 + 104))(v24, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v26);
  sub_1000185FC();
  (*(v10 + 8))(v11, v12);
  v33._object = 0x800000010001DA30;
  v33._countAndFlagsBits = 0xD000000000000010;
  sub_10001861C(v33);
  swift_getKeyPath();
  sub_10001854C();

  sub_10001860C();

  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  sub_10001861C(v34);
  sub_10001863C();
  v13 = sub_10001857C();
  v19(v6, v9);
  sub_100005C80(&qword_100028DA0, &qword_10001CC10);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100019F80;
  v15 = v22;
  *(v14 + 32) = v23;
  *(v14 + 40) = v15;
  *(v14 + 48) = v13;
  v16 = sub_10001856C();

  return v16;
}

uint64_t getEnumTagSinglePayload for AudioQualityEntity.IntentAudioQuality(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AudioQualityEntity.IntentAudioQuality(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100016904(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000169D0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10001819C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000B420(v11);
  return v7;
}

unint64_t sub_1000169D0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100016ADC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_100018A4C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100016ADC(uint64_t a1, unint64_t a2)
{
  v3 = sub_100016B28(a1, a2);
  sub_100016C58(&off_100024FD8);
  return v3;
}

char *sub_100016B28(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100016D44(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100018A4C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100018A0C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100016D44(v10, 0);
        result = sub_100018A3C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100016C58(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100016DB8(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100016D44(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100005C80(&qword_100028E08, &qword_10001CC68);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100016DB8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005C80(&qword_100028E08, &qword_10001CC68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

unint64_t sub_100016EAC(uint64_t a1)
{
  v1 = a1;
  sub_100018AAC();
  sub_100018ABC(v1);
  v2 = sub_100018ACC();

  return sub_100016F84(v1, v2);
}

unint64_t sub_100016F18(char a1)
{
  sub_100018AAC();
  sub_100018ABC(a1 & 1);
  v2 = sub_100018ACC();

  return sub_100016FF4(a1 & 1, v2);
}

unint64_t sub_100016F84(unsigned __int8 a1, uint64_t a2)
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

unint64_t sub_100016FF4(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100017064(uint64_t a1)
{
  v2 = sub_100005C80(&qword_1000288F0, &qword_10001AC10);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100005C80(&qword_100028E30, &qword_10001CCB8);
    v7 = sub_100018A5C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_100018208(v9, v5, &qword_1000288F0, &qword_10001AC10);
      v11 = *v5;
      result = sub_100016EAC(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_10001872C();
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

unint64_t sub_100017240(uint64_t a1)
{
  v2 = sub_100005C80(&qword_100028DE0, &qword_10001CC40);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100005C80(&qword_100028DE8, &qword_10001CC48);
    v7 = sub_100018A5C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_100018208(v9, v5, &qword_100028DE0, &qword_10001CC40);
      v11 = *v5;
      result = sub_100016F18(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_10001872C();
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

unint64_t sub_10001741C()
{
  v0 = sub_100005C80(&qword_1000286C0, &qword_100019D00);
  __chkstk_darwin(v0 - 8);
  v2 = &v20 - v1;
  v3 = sub_100005C80(&qword_100028690, &qword_10001ABE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_10001888C();
  v21 = v6;
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  sub_100005C80(&qword_100028DD8, &qword_10001CC38);
  v8 = sub_100005C80(&qword_100028DE0, &qword_10001CC40);
  v9 = *(v8 - 8);
  v23 = *(v9 + 72);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100019310;
  v12 = (v11 + v10);
  *v12 = 0;
  sub_10001887C();
  v13 = *(v7 + 56);
  v20 = v7 + 56;
  v22 = v13;
  v14 = v5;
  v13(v5, 1, 1, v6);
  v15 = sub_1000186EC();
  v16 = *(*(v15 - 8) + 56);
  v16(v2, 1, 1, v15);
  sub_10001871C();
  v17 = &v12[v23];
  v23 = *(v8 + 48);
  *v17 = 1;
  sub_10001887C();
  v22(v14, 1, 1, v21);
  v16(v2, 1, 1, v15);
  sub_10001871C();
  v18 = sub_100017240(v11);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v18;
}

unint64_t sub_100017798(unint64_t result)
{
  if (result >= 2)
  {
    v8[5] = v1;
    v8[6] = v2;
    if (qword_100028478 != -1)
    {
      swift_once();
    }

    v3 = sub_1000188CC();
    sub_100006574(v3, qword_10002EF00);
    v4 = sub_100018A2C();
    v5 = sub_1000188BC();
    if (os_log_type_enabled(v5, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_100016904(0xD000000000000015, 0x800000010001DBF0, v8);
      _os_log_impl(&_mh_execute_header, v5, v4, "%s - Unexpected rcAudioQuality value", v6, 0xCu);
      sub_10000B420(v7);
    }

    return 0;
  }

  return result;
}

uint64_t sub_1000178E0()
{
  v27 = sub_1000187AC();
  v0 = *(v27 - 8);
  __chkstk_darwin(v27);
  v26 = v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100005C80(&qword_100028688, &unk_100019CE0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v19 - v6;
  v8 = sub_100005C80(&qword_100028690, &qword_10001ABE0);
  __chkstk_darwin(v8 - 8);
  v10 = v19 - v9;
  v11 = sub_10001888C();
  v25 = v11;
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v22 = sub_100005C80(&qword_100028DA8, &qword_10001CC18);
  sub_10001887C();
  v13 = *(v12 + 56);
  v23 = v12 + 56;
  v24 = v13;
  v13(v10, 1, 1, v11);
  v29 = 0;
  v14 = sub_1000184BC();
  v15 = *(*(v14 - 8) + 56);
  v15(v7, 1, 1, v14);
  v15(v5, 1, 1, v14);
  v21 = enum case for InputConnectionBehavior.default(_:);
  v16 = *(v0 + 104);
  v19[1] = v0 + 104;
  v20 = v16;
  v17 = v26;
  v16(v26);
  sub_100014B54();
  v22 = sub_10001852C();
  sub_100005C80(&qword_100028DB0, &unk_10001CC20);
  sub_10001887C();
  v24(v10, 1, 1, v25);
  v28 = 2;
  v15(v7, 1, 1, v14);
  v15(v5, 1, 1, v14);
  v20(v17, v21, v27);
  sub_10000ECF0();
  sub_10001851C();
  return v22;
}

void *sub_100017CE0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000184FC();
  *a1 = v3;
  return result;
}

uint64_t sub_100017D54()
{
  v17[0] = sub_1000187AC();
  v0 = *(v17[0] - 8);
  __chkstk_darwin(v17[0]);
  v2 = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100005C80(&qword_100028688, &unk_100019CE0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v17 - v7;
  v9 = sub_100005C80(&qword_100028690, &qword_10001ABE0);
  __chkstk_darwin(v9 - 8);
  v11 = v17 - v10;
  v12 = sub_10001888C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100005C80(&qword_100028DA8, &qword_10001CC18);
  sub_10001887C();
  (*(v13 + 56))(v11, 1, 1, v12);
  v17[1] = 0;
  v14 = sub_1000184BC();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17[0]);
  sub_100014B54();
  return sub_10001852C();
}

unint64_t sub_10001804C()
{
  result = qword_100028DB8;
  if (!qword_100028DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028DB8);
  }

  return result;
}

unint64_t sub_1000180A0()
{
  result = qword_100028DC0;
  if (!qword_100028DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028DC0);
  }

  return result;
}

unint64_t sub_1000180F4()
{
  result = qword_100028DC8;
  if (!qword_100028DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028DC8);
  }

  return result;
}

unint64_t sub_100018148()
{
  result = qword_100028E00;
  if (!qword_100028E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028E00);
  }

  return result;
}

uint64_t sub_10001819C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100018208(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100005C80(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_100018308(os_log_t log)
{
  v1 = 136315138;
  v2 = "[RCAppGroupStorage init]";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "%s -- app group user defaults are nil", &v1, 0xCu);
}