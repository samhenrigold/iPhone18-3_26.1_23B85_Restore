unint64_t sub_1000205F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D200;
  if (!qword_10006D200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D200);
  }

  return result;
}

unint64_t sub_10002064C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D208;
  if (!qword_10006D208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D208);
  }

  return result;
}

unint64_t sub_1000206A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D210;
  if (!qword_10006D210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D210);
  }

  return result;
}

unint64_t sub_100020708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D218;
  if (!qword_10006D218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D218);
  }

  return result;
}

unint64_t sub_100020760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D220;
  if (!qword_10006D220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D220);
  }

  return result;
}

unint64_t sub_1000207B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D228;
  if (!qword_10006D228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D228);
  }

  return result;
}

unint64_t sub_100020810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D230;
  if (!qword_10006D230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D230);
  }

  return result;
}

unint64_t sub_1000208D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D238;
  if (!qword_10006D238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D238);
  }

  return result;
}

uint64_t sub_10002092C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000208D8(a1, a2, a3);

  return static AppEnum.defaultResolverSpecification.getter(a1, v4);
}

unint64_t sub_10002097C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D240;
  if (!qword_10006D240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D240);
  }

  return result;
}

unint64_t sub_1000209D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D248;
  if (!qword_10006D248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D248);
  }

  return result;
}

unint64_t sub_100020A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D250;
  if (!qword_10006D250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D250);
  }

  return result;
}

uint64_t sub_100020A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100020810(a1, a2, a3);

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v4);
}

uint64_t getEnumTagSinglePayload for CapsuleLayoutStyle(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CapsuleLayoutStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100020D4C()
{
  v33 = sub_10004BAFC();
  v0 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100001E64(&qword_10006C6B0, &unk_100050F30);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v25 - v6;
  v8 = sub_100001E64(&qword_10006C6B8, &qword_100051FC0);
  __chkstk_darwin(v8 - 8);
  v10 = v25 - v9;
  v11 = sub_10004BC7C();
  v31 = v11;
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v28 = sub_100001E64(&qword_10006D280, &qword_100053C00);
  sub_10004BC4C();
  v13 = *(v12 + 56);
  v29 = v12 + 56;
  v30 = v13;
  v13(v10, 1, 1, v11);
  v35 = 0;
  v14 = sub_10004B7DC();
  v15 = *(*(v14 - 8) + 56);
  v15(v7, 1, 1, v14);
  v15(v5, 1, 1, v14);
  v27 = enum case for InputConnectionBehavior.default(_:);
  v16 = *(v0 + 104);
  v25[1] = v0 + 104;
  v26 = v16;
  v17 = v32;
  v18 = v16(v32);
  sub_10001FE88(v18, v19, v20);
  v28 = sub_10004B88C();
  sub_100001E64(&qword_10006D288, &qword_100053C08);
  sub_10004BC4C();
  v30(v10, 1, 1, v31);
  v34 = 2;
  v15(v7, 1, 1, v14);
  v15(v5, 1, 1, v14);
  v21 = v26(v17, v27, v33);
  sub_1000208D8(v21, v22, v23);
  sub_10004B87C();
  return v28;
}

uint64_t sub_10002116C()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();
  v3 = [v2 safari_browserDefaults];
  if (v1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = [objc_allocWithZone(NSNumber) initWithInteger:v4];
  v6 = SFPreferredCapsuleLayoutStyleKey;
  [v3 setObject:v5 forKey:SFPreferredCapsuleLayoutStyleKey];

  v7 = [objc_opt_self() defaultCenter];
  v8 = [v2 safari_notificationNameForUserDefaultsKey:v6];
  [v7 postNotificationName:v8 object:0 userInfo:0 deliverImmediately:1];

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000212C0()
{
  v1 = sub_10004BC5C();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_10004BD8C();
  v0[5] = swift_task_alloc();
  sub_10004C54C();
  v0[6] = swift_task_alloc();
  sub_10004BC7C();
  v0[7] = swift_task_alloc();

  return _swift_task_switch(sub_100021400, 0, 0);
}

uint64_t sub_100021400()
{
  v0[8] = objc_opt_self();
  v0[9] = sub_10004C60C();
  v0[10] = sub_10004C5FC();
  v2 = sub_10004C5EC();

  return _swift_task_switch(sub_1000214A8, v2, v1);
}

uint64_t sub_1000214A8()
{
  v1 = *(v0 + 64);

  *(v0 + 88) = [v1 currentDevice];

  return _swift_task_switch(sub_100021530, 0, 0);
}

uint64_t sub_100021530()
{
  *(v0 + 96) = sub_10004C5FC();
  v2 = sub_10004C5EC();

  return _swift_task_switch(sub_1000215BC, v2, v1);
}

uint64_t sub_1000215BC()
{
  v1 = *(v0 + 88);

  *(v0 + 104) = [v1 userInterfaceIdiom];

  return _swift_task_switch(sub_10002163C, 0, 0);
}

uint64_t sub_10002163C()
{
  if (v0[13] == 1)
  {
    sub_10004B6BC();
    sub_10001CDF0(&qword_10006D058, &type metadata accessor for AppIntentError, &protocol conformance descriptor for AppIntentError);
    swift_allocError();
    sub_10004B6AC();
    swift_willThrow();

    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = v0[4];
    v4 = v0[2];
    v5 = v0[3];
    sub_100001E64(&qword_10006D140, qword_100053290);
    sub_10004C4FC();
    sub_10004BD7C();
    (*(v5 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v4);
    sub_10004BC9C();
    v6 = sub_1000020DC(&qword_10006D290, &qword_10006D298, &qword_100053C28, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
    sub_1000208D8(v6, v7, v8);
    v9 = sub_10004BC1C();

    v10 = v0[1];

    return v10(v9);
  }
}

double sub_1000218EC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;

  return result;
}

uint64_t sub_100021950@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = sub_10004BDCC();
  v44 = *(v1 - 8);
  v45 = v1;
  __chkstk_darwin(v1);
  v37 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100001E64(&qword_10006C460, &unk_1000501F0);
  v35 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v35 - v4;
  v6 = sub_100001E64(&qword_10006C468, &unk_100050090);
  v7 = *(v6 - 8);
  v38 = v6;
  v39 = v7;
  __chkstk_darwin(v6);
  v9 = &v35 - v8;
  v10 = sub_100001E64(&qword_10006C470, &unk_100050200);
  v11 = *(v10 - 8);
  v40 = v10;
  v41 = v11;
  __chkstk_darwin(v10);
  v13 = &v35 - v12;
  v14 = sub_100001E64(&qword_10006C478, &qword_1000500A0);
  v15 = *(v14 - 8);
  v42 = v14;
  v43 = v15;
  __chkstk_darwin(v14);
  v36 = &v35 - v16;
  swift_getKeyPath();
  v17 = sub_100001E64(&qword_10006C480, &unk_1000500D0);
  sub_1000131C8(v17, v18, v19);
  sub_1000020DC(&qword_10006C490, &qword_10006C480, &unk_1000500D0, &protocol conformance descriptor for Label<A, B>);
  sub_10004C44C();
  sub_10004BFDC();
  v20 = sub_1000020DC(&qword_10006C498, &qword_10006C460, &unk_1000501F0, &protocol conformance descriptor for ControlToggle<A>);
  sub_10004C05C();

  (*(v35 + 8))(v5, v3);
  v21 = v37;
  sub_10004BDBC();
  v22 = sub_10004BDAC();
  v24 = v23;
  (*(v44 + 8))(v21, v45);
  v47 = v22;
  v48 = v24;
  v51 = v3;
  v52 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = sub_100002214(OpaqueTypeConformance2, v26, v27);
  v29 = v38;
  sub_10004C01C();

  (*(v39 + 8))(v9, v29);
  v47 = v29;
  v48 = &type metadata for String;
  v49 = OpaqueTypeConformance2;
  v50 = v28;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = v36;
  v32 = v40;
  sub_10004C08C();
  (*(v41 + 8))(v13, v32);
  v47 = v32;
  v48 = v30;
  swift_getOpaqueTypeConformance2();
  v33 = v42;
  sub_10004C02C();
  return (*(v43 + 8))(v31, v33);
}

uint64_t sub_100021F28()
{
  v0 = sub_10004BFDC();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_100021F94@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_10004BDCC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004BDBC();
  v7 = sub_10004BDAC();
  v9 = v8;
  v10 = (*(v4 + 8))(v6, v3);
  v17[0] = v7;
  v17[1] = v9;
  sub_100002214(v10, v11, v12);
  result = sub_10004C1AC();
  *a2 = result;
  *(a2 + 8) = v14;
  *(a2 + 16) = v15 & 1;
  *(a2 + 24) = v16;
  return result;
}

unint64_t sub_1000220D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D2D8;
  if (!qword_10006D2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D2D8);
  }

  return result;
}

uint64_t sub_10002216C()
{
  v0 = sub_100001E64(&qword_10006C6B8, &qword_100051FC0);
  __chkstk_darwin(v0 - 8);
  v12[0] = v12 - v1;
  v2 = sub_10004BC5C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004BD8C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10004C54C();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004BC7C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_10004BBDC();
  sub_1000090DC(v10, qword_10006E3F8);
  sub_1000090A4(v10, qword_10006E3F8);
  sub_10004C4FC();
  sub_10004BD7C();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_10004BC8C();
  (*(v9 + 56))(v12[0], 1, 1, v8);
  return sub_10004BBCC();
}

uint64_t sub_100022484()
{
  v0 = sub_10004BC7C();
  sub_1000090DC(v0, qword_10006E410);
  sub_1000090A4(v0, qword_10006E410);
  return sub_10004BC4C();
}

uint64_t sub_1000224E8()
{
  v0 = sub_100001E64(&qword_10006C718, &qword_100050FD0);
  sub_1000090DC(v0, qword_10006E428);
  v1 = sub_1000090A4(v0, qword_10006E428);
  sub_10004B9DC();
  v2 = sub_10004B9EC();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000225A8()
{
  result = swift_getKeyPath();
  qword_10006E440 = result;
  return result;
}

uint64_t sub_1000225D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  sub_100001E64(&qword_10006C6E8, &unk_100050F80);
  v3[10] = swift_task_alloc();
  sub_100001E64(&qword_10006C6F0, &qword_100052010);
  v3[11] = swift_task_alloc();
  sub_100001E64(&qword_10006D3C8, &qword_1000543F8);
  v3[12] = swift_task_alloc();
  v4 = sub_10004B7DC();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v5 = sub_100001E64(&qword_10006D3D0, &qword_100054400);
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_1000227B0, 0, 0);
}

uint64_t sub_1000227B0()
{
  sub_10004B85C();
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  v4 = sub_100023858(v1, v2, v3);
  *v1 = v0;
  v1[1] = sub_100022880;
  v5 = *(v0 + 152);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 16, sub_100024A04, 0, &type metadata for SearchEngineSuggestionsEntity, v4);
}

uint64_t sub_100022880()
{

  return _swift_task_switch(sub_10002297C, 0, 0);
}

uint64_t sub_10002297C()
{
  sub_10004B85C();
  v1 = *(v0 + 24);
  *(v0 + 32) = v1;
  *(v0 + 168) = v1;
  sub_10004B85C();
  *(v0 + 201) = *(v0 + 200);
  if (qword_10006C2E0 != -1)
  {
    swift_once();
  }

  v2 = qword_10006E440;
  *(v0 + 176) = qword_10006E440;

  v3 = swift_task_alloc();
  *(v0 + 184) = v3;
  v4 = sub_1000020DC(&qword_10006D3B8, &qword_10006D3C0, &qword_1000543E0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v3 = v0;
  v3[1] = sub_100022ADC;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 201, v2, &type metadata for Bool, v4);
}

uint64_t sub_100022ADC()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_100004690;
  }

  else
  {
    v2 = sub_100022C30;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100022C30()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v16 = v0[18];
  v17 = v0[15];
  v18 = v0[14];
  v19 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  sub_10004B85C();
  v0[6] = v0[5];
  v6 = sub_10004BBAC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = sub_10004BBEC();
  v8 = (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v11 = sub_1000220D4(v8, v9, v10);
  sub_100023A6C(v11, v12, v13);
  sub_10004B7AC();
  (*(v2 + 16))(v16, v1, v3);
  sub_10004B7CC();
  sub_10004B7EC();
  (*(v18 + 8))(v17, v19);

  (*(v2 + 8))(v1, v3);

  v14 = v0[1];

  return v14();
}

uint64_t sub_100022E9C()
{
  v0 = sub_100001E64(&qword_10006D3D8, &qword_100054408);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - v2;
  if (qword_10006C2E0 != -1)
  {
    swift_once();
  }

  sub_10004BA5C();

  sub_100023A6C(v4, v5, v6);
  sub_1000020DC(&qword_10006D3E0, &qword_10006D3D8, &qword_100054408, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_10004BA4C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t (*sub_100023010(uint64_t *a1))()
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
  *(v2 + 32) = sub_10004B84C();
  return sub_100004980;
}

uint64_t (*sub_100023084(uint64_t *a1))()
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
  *(v2 + 32) = sub_10004B84C();
  return sub_10000950C;
}

double sub_1000230F8()
{
  if (qword_10006C2E0 != -1)
  {
    swift_once();
  }

  return result;
}

unint64_t sub_100023158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D2F0;
  if (!qword_10006D2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D2F0);
  }

  return result;
}

unint64_t sub_1000231B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D2F8;
  if (!qword_10006D2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D2F8);
  }

  return result;
}

uint64_t sub_1000232C0@<X0>(uint64_t a1@<X8>)
{
  if (qword_10006C2D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100001E64(&qword_10006C718, &qword_100050FD0);
  v3 = sub_1000090A4(v2, qword_10006E428);

  return sub_100009450(v3, a1);
}

uint64_t sub_100023344(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000094C4;

  return sub_1000225D0(a1, v5, v4);
}

uint64_t sub_1000233F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10002414C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100023438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D300;
  if (!qword_10006D300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D300);
  }

  return result;
}

uint64_t sub_1000234B0()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() safari_browserDefaults];
  v3 = [v2 BOOLForKey:SuppressSearchSuggestionsDefaultsKey];

  *v1 = v3 ^ 1;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100023564(uint64_t a1, char *a2)
{
  v3 = *a2;
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000094C4;

  return sub_1000245B0(v3);
}

uint64_t sub_1000235F8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000094F4;

  return sub_1000246F4();
}

unint64_t sub_1000236A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D308;
  if (!qword_10006D308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D308);
  }

  return result;
}

uint64_t sub_1000236F4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v7 = sub_100023C00(v4, v5, v6);
  *v4 = v2;
  v4[1] = sub_100005128;

  return _UniqueEntityQuery.allEntities()(a2, v7);
}

unint64_t sub_1000237A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D310;
  if (!qword_10006D310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D310);
  }

  return result;
}

unint64_t sub_100023800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D318;
  if (!qword_10006D318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D318);
  }

  return result;
}

unint64_t sub_100023858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D320;
  if (!qword_10006D320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D320);
  }

  return result;
}

uint64_t sub_1000238AC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v8 = sub_100023C00(v5, v6, v7);
  *v5 = v2;
  v5[1] = sub_100009550;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v8);
}

uint64_t sub_100023960(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v7 = sub_100023C00(v4, v5, v6);
  *v4 = v2;
  v4[1] = sub_1000094F4;

  return _UniqueEntityQuery.suggestedEntities()(a2, v7);
}

unint64_t sub_100023A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D328;
  if (!qword_10006D328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D328);
  }

  return result;
}

unint64_t sub_100023A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D330;
  if (!qword_10006D330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D330);
  }

  return result;
}

unint64_t sub_100023AC4()
{
  result = qword_10006D338;
  if (!qword_10006D338)
  {
    v1 = sub_100001FB0(&qword_10006D340, qword_100053FC0);
    sub_100023A6C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D338);
  }

  return result;
}

uint64_t sub_100023B48(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v8 = sub_1000236A0(v5, v6, v7);
  *v5 = v2;
  v5[1] = sub_100005810;

  return EntityQuery.results()(a1, a2, v8);
}

unint64_t sub_100023C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D348;
  if (!qword_10006D348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D348);
  }

  return result;
}

uint64_t sub_100023C54()
{
  v0 = qword_10006D2C8;

  return v0;
}

unint64_t sub_100023C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D350;
  if (!qword_10006D350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D350);
  }

  return result;
}

unint64_t sub_100023CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D358;
  if (!qword_10006D358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D358);
  }

  return result;
}

unint64_t sub_100023D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D360;
  if (!qword_10006D360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D360);
  }

  return result;
}

unint64_t sub_100023D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D368;
  if (!qword_10006D368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D368);
  }

  return result;
}

unint64_t sub_100023DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D370;
  if (!qword_10006D370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D370);
  }

  return result;
}

unint64_t sub_100023E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D378;
  if (!qword_10006D378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D378);
  }

  return result;
}

uint64_t sub_100023E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_100002C30(a1, a2, a3);
  result = sub_10004B80C();
  *a4 = result;
  a4[1] = v6;
  return result;
}

uint64_t sub_100023F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100023858(a1, a2, a3);

  return static AppEntity.defaultResolverSpecification.getter(a1, v4);
}

unint64_t sub_100023FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D390;
  if (!qword_10006D390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D390);
  }

  return result;
}

uint64_t sub_100023FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100002C30(a1, a2, a3);

  return _UniqueEntity.displayRepresentation.getter(a1, v4);
}

uint64_t sub_100024048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100023E48(a1, a2, a3);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v4);
}

uint64_t sub_10002414C()
{
  v0 = sub_100001E64(&qword_10006C6A8, &unk_100051FB0);
  __chkstk_darwin(v0 - 8);
  v33 = &v25 - v1;
  v34 = sub_10004BAFC();
  v2 = *(v34 - 8);
  __chkstk_darwin(v34);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100001E64(&qword_10006C6B0, &unk_100050F30);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v25 - v9;
  v11 = sub_100001E64(&qword_10006C6B8, &qword_100051FC0);
  __chkstk_darwin(v11 - 8);
  v13 = &v25 - v12;
  v14 = sub_10004BC7C();
  v32 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v26 = sub_100001E64(&qword_10006D3B0, &unk_1000543B8);
  sub_10004BC4C();
  v16 = *(v15 + 56);
  v30 = v15 + 56;
  v31 = v16;
  v16(v13, 1, 1, v14);
  v36 = 0;
  v17 = sub_10004B7DC();
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);
  v18(v8, 1, 1, v17);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v19 = *(v2 + 104);
  v27 = v2 + 104;
  v28 = v19;
  v20 = v19(v4);
  sub_100023858(v20, v21, v22);
  v26 = sub_10004B88C();
  sub_100001E64(&qword_10006C6C8, &qword_100051FD0);
  sub_10004BC4C();
  v31(v13, 1, 1, v32);
  v35 = 2;
  v23 = sub_10004C5DC();
  (*(*(v23 - 8) + 56))(v33, 1, 1, v23);
  v18(v10, 1, 1, v17);
  v28(v4, v29, v34);
  sub_10004B89C();
  return v26;
}

uint64_t sub_1000245D0()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();
  v3 = [v2 safari_browserDefaults];
  v4 = SuppressSearchSuggestionsDefaultsKey;
  [v3 setBool:(v1 & 1) == 0 forKey:SuppressSearchSuggestionsDefaultsKey];

  v5 = [objc_opt_self() defaultCenter];
  v6 = [v2 safari_notificationNameForUserDefaultsKey:v4];
  [v5 postNotificationName:v6 object:0 userInfo:0 deliverImmediately:1];

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000246F4()
{
  v1 = sub_10004BC5C();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_10004BD8C();
  v0[5] = swift_task_alloc();
  sub_10004C54C();
  v0[6] = swift_task_alloc();
  sub_10004BC7C();
  v0[7] = swift_task_alloc();

  return _swift_task_switch(sub_100024834, 0, 0);
}

uint64_t sub_100024834()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v0[3];
  sub_100001E64(&qword_10006D2E8, qword_100053D20);
  sub_10004C4FC();
  sub_10004BD7C();
  (*(v3 + 104))(v1, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_10004BC9C();
  sub_1000020DC(&qword_10006D3B8, &qword_10006D3C0, &qword_1000543E0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v4 = sub_10004BC3C();

  v5 = v0[1];

  return v5(v4);
}

double sub_1000249F8@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;

  return result;
}

unint64_t sub_100024A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D3F8;
  if (!qword_10006D3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D3F8);
  }

  return result;
}

uint64_t sub_100024AB8()
{
  v0 = sub_100001E64(&qword_10006C6B8, &qword_100051FC0);
  __chkstk_darwin(v0 - 8);
  v13 = &v11 - v1;
  v12 = sub_10004BC5C();
  v2 = *(v12 - 8);
  __chkstk_darwin(v12);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004BD8C();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10004C54C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10004BC7C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = sub_10004BBDC();
  sub_1000090DC(v9, qword_10006E448);
  sub_1000090A4(v9, qword_10006E448);
  sub_10004C4FC();
  sub_10004BD7C();
  (*(v2 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v12);
  sub_10004BC8C();
  (*(v8 + 56))(v13, 1, 1, v7);
  return sub_10004BBCC();
}

uint64_t sub_100024DCC()
{
  v0 = sub_10004BC7C();
  sub_1000090DC(v0, qword_10006E460);
  sub_1000090A4(v0, qword_10006E460);
  return sub_10004BC4C();
}

uint64_t sub_100024E30()
{
  v0 = sub_100001E64(&qword_10006C718, &qword_100050FD0);
  sub_1000090DC(v0, qword_10006E478);
  v1 = sub_1000090A4(v0, qword_10006E478);
  sub_10004B9DC();
  v2 = sub_10004B9EC();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100024EF0()
{
  result = swift_getKeyPath();
  qword_10006E490 = result;
  return result;
}

uint64_t sub_100024F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  sub_100001E64(&qword_10006C6E8, &unk_100050F80);
  v3[10] = swift_task_alloc();
  sub_100001E64(&qword_10006C6F0, &qword_100052010);
  v3[11] = swift_task_alloc();
  sub_100001E64(&qword_10006D4E8, &qword_100054AF8);
  v3[12] = swift_task_alloc();
  v4 = sub_10004B7DC();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v5 = sub_100001E64(&qword_10006D4F0, &qword_100054B00);
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_1000250F8, 0, 0);
}

uint64_t sub_1000250F8()
{
  sub_10004B85C();
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  v4 = sub_10002619C(v1, v2, v3);
  *v1 = v0;
  v1[1] = sub_1000251C8;
  v5 = *(v0 + 152);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 16, sub_100027344, 0, &type metadata for SafariSuggestionsEntity, v4);
}

uint64_t sub_1000251C8()
{

  return _swift_task_switch(sub_1000252C4, 0, 0);
}

uint64_t sub_1000252C4()
{
  sub_10004B85C();
  v1 = *(v0 + 24);
  *(v0 + 32) = v1;
  *(v0 + 168) = v1;
  sub_10004B85C();
  *(v0 + 201) = *(v0 + 200);
  if (qword_10006C300 != -1)
  {
    swift_once();
  }

  v2 = qword_10006E490;
  *(v0 + 176) = qword_10006E490;

  v3 = swift_task_alloc();
  *(v0 + 184) = v3;
  v4 = sub_1000020DC(&qword_10006D4D8, &qword_10006D4E0, &qword_100054AE0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v3 = v0;
  v3[1] = sub_100025424;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 201, v2, &type metadata for Bool, v4);
}

uint64_t sub_100025424()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_100004690;
  }

  else
  {
    v2 = sub_100025578;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100025578()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v16 = v0[18];
  v17 = v0[15];
  v18 = v0[14];
  v19 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  sub_10004B85C();
  v0[6] = v0[5];
  v6 = sub_10004BBAC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = sub_10004BBEC();
  v8 = (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v11 = sub_100024A20(v8, v9, v10);
  sub_1000263B0(v11, v12, v13);
  sub_10004B7AC();
  (*(v2 + 16))(v16, v1, v3);
  sub_10004B7CC();
  sub_10004B7EC();
  (*(v18 + 8))(v17, v19);

  (*(v2 + 8))(v1, v3);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000257E4()
{
  v0 = sub_100001E64(&qword_10006D4F8, &qword_100054B08);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - v2;
  if (qword_10006C300 != -1)
  {
    swift_once();
  }

  sub_10004BA5C();

  sub_1000263B0(v4, v5, v6);
  sub_1000020DC(&qword_10006D500, &qword_10006D4F8, &qword_100054B08, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_10004BA4C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t (*sub_100025958(uint64_t *a1))()
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
  *(v2 + 32) = sub_10004B84C();
  return sub_100004980;
}

uint64_t (*sub_1000259CC(uint64_t *a1))()
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
  *(v2 + 32) = sub_10004B84C();
  return sub_10000950C;
}

double sub_100025A40()
{
  if (qword_10006C300 != -1)
  {
    swift_once();
  }

  return result;
}

unint64_t sub_100025AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D410;
  if (!qword_10006D410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D410);
  }

  return result;
}

unint64_t sub_100025AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D418;
  if (!qword_10006D418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D418);
  }

  return result;
}

uint64_t sub_100025C08@<X0>(uint64_t a1@<X8>)
{
  if (qword_10006C2F8 != -1)
  {
    swift_once();
  }

  v2 = sub_100001E64(&qword_10006C718, &qword_100050FD0);
  v3 = sub_1000090A4(v2, qword_10006E478);

  return sub_100009450(v3, a1);
}

uint64_t sub_100025C8C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000094C4;

  return sub_100024F18(a1, v5, v4);
}

uint64_t sub_100025D38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100026A90();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100025D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D420;
  if (!qword_10006D420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D420);
  }

  return result;
}

uint64_t sub_100025DF8()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() safari_browserDefaults];
  v3 = [v2 BOOLForKey:WBSUniversalSearchEnabledPreferenceKey];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100025EA8(uint64_t a1, char *a2)
{
  v3 = *a2;
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000094C4;

  return sub_100026EF4(v3);
}

uint64_t sub_100025F3C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000094F4;

  return sub_100027034();
}

unint64_t sub_100025FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D428;
  if (!qword_10006D428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D428);
  }

  return result;
}

uint64_t sub_100026038(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v7 = sub_100026544(v4, v5, v6);
  *v4 = v2;
  v4[1] = sub_100005128;

  return _UniqueEntityQuery.allEntities()(a2, v7);
}

unint64_t sub_1000260EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D430;
  if (!qword_10006D430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D430);
  }

  return result;
}

unint64_t sub_100026144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D438;
  if (!qword_10006D438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D438);
  }

  return result;
}

unint64_t sub_10002619C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D440;
  if (!qword_10006D440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D440);
  }

  return result;
}

uint64_t sub_1000261F0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v8 = sub_100026544(v5, v6, v7);
  *v5 = v2;
  v5[1] = sub_100009550;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v8);
}

uint64_t sub_1000262A4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v7 = sub_100026544(v4, v5, v6);
  *v4 = v2;
  v4[1] = sub_1000094F4;

  return _UniqueEntityQuery.suggestedEntities()(a2, v7);
}

unint64_t sub_100026358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D448;
  if (!qword_10006D448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D448);
  }

  return result;
}

unint64_t sub_1000263B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D450;
  if (!qword_10006D450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D450);
  }

  return result;
}

unint64_t sub_100026408()
{
  result = qword_10006D458;
  if (!qword_10006D458)
  {
    v1 = sub_100001FB0(&qword_10006D460, qword_1000546E0);
    sub_1000263B0(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D458);
  }

  return result;
}

uint64_t sub_10002648C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v8 = sub_100025FE4(v5, v6, v7);
  *v5 = v2;
  v5[1] = sub_100005810;

  return EntityQuery.results()(a1, a2, v8);
}

unint64_t sub_100026544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D468;
  if (!qword_10006D468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D468);
  }

  return result;
}

uint64_t sub_100026598()
{
  v0 = qword_10006D3E8;

  return v0;
}

unint64_t sub_1000265D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D470;
  if (!qword_10006D470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D470);
  }

  return result;
}

unint64_t sub_10002662C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D478;
  if (!qword_10006D478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D478);
  }

  return result;
}

unint64_t sub_100026684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D480;
  if (!qword_10006D480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D480);
  }

  return result;
}

unint64_t sub_1000266DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D488;
  if (!qword_10006D488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D488);
  }

  return result;
}

unint64_t sub_100026734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D490;
  if (!qword_10006D490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D490);
  }

  return result;
}

unint64_t sub_10002678C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D498;
  if (!qword_10006D498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D498);
  }

  return result;
}

uint64_t sub_1000267E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_100003834(a1, a2, a3);
  result = sub_10004B80C();
  *a4 = result;
  a4[1] = v6;
  return result;
}

uint64_t sub_10002689C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002619C(a1, a2, a3);

  return static AppEntity.defaultResolverSpecification.getter(a1, v4);
}

unint64_t sub_1000268EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D4B0;
  if (!qword_10006D4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D4B0);
  }

  return result;
}

uint64_t sub_100026940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100003834(a1, a2, a3);

  return _UniqueEntity.displayRepresentation.getter(a1, v4);
}

uint64_t sub_10002698C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002678C(a1, a2, a3);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v4);
}

uint64_t sub_100026A90()
{
  v0 = sub_100001E64(&qword_10006C6A8, &unk_100051FB0);
  __chkstk_darwin(v0 - 8);
  v33 = &v25 - v1;
  v34 = sub_10004BAFC();
  v2 = *(v34 - 8);
  __chkstk_darwin(v34);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100001E64(&qword_10006C6B0, &unk_100050F30);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v25 - v9;
  v11 = sub_100001E64(&qword_10006C6B8, &qword_100051FC0);
  __chkstk_darwin(v11 - 8);
  v13 = &v25 - v12;
  v14 = sub_10004BC7C();
  v32 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v26 = sub_100001E64(&qword_10006D4D0, &unk_100054AB8);
  sub_10004BC4C();
  v16 = *(v15 + 56);
  v30 = v15 + 56;
  v31 = v16;
  v16(v13, 1, 1, v14);
  v36 = 0;
  v17 = sub_10004B7DC();
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);
  v18(v8, 1, 1, v17);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v19 = *(v2 + 104);
  v27 = v2 + 104;
  v28 = v19;
  v20 = v19(v4);
  sub_10002619C(v20, v21, v22);
  v26 = sub_10004B88C();
  sub_100001E64(&qword_10006C6C8, &qword_100051FD0);
  sub_10004BC4C();
  v31(v13, 1, 1, v32);
  v35 = 2;
  v23 = sub_10004C5DC();
  (*(*(v23 - 8) + 56))(v33, 1, 1, v23);
  v18(v10, 1, 1, v17);
  v28(v4, v29, v34);
  sub_10004B89C();
  return v26;
}

uint64_t sub_100026F14()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();
  v3 = [v2 safari_browserDefaults];
  v4 = WBSUniversalSearchEnabledPreferenceKey;
  [v3 setBool:v1 forKey:WBSUniversalSearchEnabledPreferenceKey];

  v5 = [objc_opt_self() defaultCenter];
  v6 = [v2 safari_notificationNameForUserDefaultsKey:v4];
  [v5 postNotificationName:v6 object:0 userInfo:0 deliverImmediately:1];

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100027034()
{
  v1 = sub_10004BC5C();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_10004BD8C();
  v0[5] = swift_task_alloc();
  sub_10004C54C();
  v0[6] = swift_task_alloc();
  sub_10004BC7C();
  v0[7] = swift_task_alloc();

  return _swift_task_switch(sub_100027174, 0, 0);
}

uint64_t sub_100027174()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v0[3];
  sub_100001E64(&qword_10006D408, qword_100054440);
  sub_10004C4FC();
  sub_10004BD7C();
  (*(v3 + 104))(v1, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_10004BC9C();
  sub_1000020DC(&qword_10006D4D8, &qword_10006D4E0, &qword_100054AE0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v4 = sub_10004BC3C();

  v5 = v0[1];

  return v5(v4);
}

double sub_100027338@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;

  return result;
}

uint64_t sub_100027388@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = sub_10004BDCC();
  v44 = *(v1 - 8);
  v45 = v1;
  __chkstk_darwin(v1);
  v37 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100001E64(&qword_10006C460, &unk_1000501F0);
  v35 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v35 - v4;
  v6 = sub_100001E64(&qword_10006C468, &unk_100050090);
  v7 = *(v6 - 8);
  v38 = v6;
  v39 = v7;
  __chkstk_darwin(v6);
  v9 = &v35 - v8;
  v10 = sub_100001E64(&qword_10006C470, &unk_100050200);
  v11 = *(v10 - 8);
  v40 = v10;
  v41 = v11;
  __chkstk_darwin(v10);
  v13 = &v35 - v12;
  v14 = sub_100001E64(&qword_10006C478, &qword_1000500A0);
  v15 = *(v14 - 8);
  v42 = v14;
  v43 = v15;
  __chkstk_darwin(v14);
  v36 = &v35 - v16;
  swift_getKeyPath();
  v17 = sub_100001E64(&qword_10006C480, &unk_1000500D0);
  sub_1000073B4(v17, v18, v19);
  sub_1000020DC(&qword_10006C490, &qword_10006C480, &unk_1000500D0, &protocol conformance descriptor for Label<A, B>);
  sub_10004C44C();
  sub_10004BFDC();
  v20 = sub_1000020DC(&qword_10006C498, &qword_10006C460, &unk_1000501F0, &protocol conformance descriptor for ControlToggle<A>);
  sub_10004C05C();

  (*(v35 + 8))(v5, v3);
  v21 = v37;
  sub_10004BDBC();
  v22 = sub_10004BDAC();
  v24 = v23;
  (*(v44 + 8))(v21, v45);
  v47 = v22;
  v48 = v24;
  v51 = v3;
  v52 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = sub_100002214(OpaqueTypeConformance2, v26, v27);
  v29 = v38;
  sub_10004C01C();

  (*(v39 + 8))(v9, v29);
  v47 = v29;
  v48 = &type metadata for String;
  v49 = OpaqueTypeConformance2;
  v50 = v28;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = v36;
  v32 = v40;
  sub_10004C08C();
  (*(v41 + 8))(v13, v32);
  v47 = v32;
  v48 = v30;
  swift_getOpaqueTypeConformance2();
  v33 = v42;
  sub_10004C02C();
  return (*(v43 + 8))(v31, v33);
}

uint64_t sub_100027964()
{
  v0 = sub_10004BDCC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004BDBC();
  v4 = sub_10004BDAC();
  v6 = v5;
  v7 = (*(v1 + 8))(v3, v0);
  v11[0] = v4;
  v11[1] = v6;
  sub_100002214(v7, v8, v9);
  return sub_10004C2EC();
}

uint64_t sub_100027A94@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_10004BDCC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004BDBC();
  v7 = sub_10004BDAC();
  v9 = v8;
  v10 = (*(v4 + 8))(v6, v3);
  v17[0] = v7;
  v17[1] = v9;
  sub_100002214(v10, v11, v12);
  result = sub_10004C1AC();
  *a2 = result;
  *(a2 + 8) = v14;
  *(a2 + 16) = v15 & 1;
  *(a2 + 24) = v16;
  return result;
}

uint64_t sub_100027BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = sub_10004C41C();
  __chkstk_darwin(v3 - 8);
  v64 = sub_100001E64(&qword_10006C4B0, &unk_100051930);
  v60 = *(v64 - 8);
  __chkstk_darwin(v64);
  v57 = v50 - v4;
  v65 = sub_100001E64(&qword_10006C4A8, qword_100050170);
  v62 = *(v65 - 8);
  __chkstk_darwin(v65);
  v59 = v50 - v5;
  v63 = sub_100001E64(&qword_10006C4A0, &unk_100051920);
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v58 = v50 - v6;
  v7 = sub_10004BBDC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10004BC7C();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v50 - v16;
  if (qword_10006C2B8 != -1)
  {
    swift_once();
  }

  v18 = sub_1000090A4(v7, static CapsuleLayoutStyle.typeDisplayRepresentation);
  swift_beginAccess();
  (*(v8 + 16))(v10, v18, v7);
  sub_10004BBBC();
  (*(v8 + 8))(v10, v7);
  (*(v12 + 16))(v15, v17, v11);
  v19 = sub_10004C57C();
  v51 = v19;
  v21 = v20;
  v67 = &type metadata for TabBarLayoutControlPicker;
  sub_100001E64(&qword_10006D568, &qword_100054C78);
  v22 = sub_10004C58C();
  v24 = v23;
  sub_100020178(v22, v23, v25);
  v67 = sub_10004BB4C();
  v68 = v26;
  v71._countAndFlagsBits = 46;
  v71._object = 0xE100000000000000;
  sub_10004C5AC(v71);
  v72._countAndFlagsBits = v22;
  v72._object = v24;
  sub_10004C5AC(v72);

  v53 = v67;
  v52 = v68;
  v27 = swift_allocObject();
  *(v27 + 16) = v19;
  *(v27 + 24) = v21;
  swift_bridgeObjectRetain_n();

  sub_10004C40C();
  v50[1] = a1;
  sub_100001E64(&qword_10006C480, &unk_1000500D0);
  v56 = v11;
  v28 = sub_100001E64(&qword_10006D518, &qword_100054C68);
  v55 = v12;
  v31 = sub_1000208D8(v28, v29, v30);
  v54 = v17;
  v34 = sub_10002A04C(v31, v32, v33);
  sub_10001FD28(v34, v35, v36);
  sub_1000020DC(&qword_10006C490, &qword_10006C480, &unk_1000500D0, &protocol conformance descriptor for Label<A, B>);
  sub_100029E80();
  v37 = v57;
  v38 = v51;
  sub_10004C42C();
  v67 = v38;
  v68 = v21;
  v39 = sub_1000020DC(&qword_10006C4B8, &qword_10006C4B0, &unk_100051930, &protocol conformance descriptor for ControlPicker<A>);
  v42 = sub_100002214(v39, v40, v41);
  v43 = v59;
  v44 = v64;
  sub_10004C07C();
  (*(v60 + 8))(v37, v44);

  v67 = v44;
  v68 = &type metadata for String;
  v69 = v39;
  v70 = v42;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = v58;
  v47 = v65;
  sub_10004C08C();
  (*(v62 + 8))(v43, v47);
  v67 = v47;
  v68 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v48 = v63;
  sub_10004C02C();
  (*(v61 + 8))(v46, v48);
  return (*(v55 + 8))(v54, v56);
}

uint64_t sub_100028328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = sub_10004C41C();
  __chkstk_darwin(v3 - 8);
  v60 = sub_100001E64(&qword_10006C4B0, &unk_100051930);
  v56 = *(v60 - 8);
  __chkstk_darwin(v60);
  v53 = &v46 - v4;
  v61 = sub_100001E64(&qword_10006C4A8, qword_100050170);
  v58 = *(v61 - 8);
  __chkstk_darwin(v61);
  v55 = &v46 - v5;
  v59 = sub_100001E64(&qword_10006C4A0, &unk_100051920);
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v54 = &v46 - v6;
  v7 = sub_10004BC7C();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v46 - v12;
  if (qword_10006C3C0 != -1)
  {
    swift_once();
  }

  v14 = sub_10004BBDC();
  sub_1000090A4(v14, static TabLayoutConfigurationType.typeDisplayRepresentation);
  v52 = v13;
  sub_10004BBBC();
  (*(v8 + 16))(v11, v13, v7);
  v15 = sub_10004C57C();
  v47 = v15;
  v51 = v8;
  v17 = v16;
  v63 = &type metadata for TabLayoutControlPicker;
  sub_100001E64(&qword_10006D540, &qword_100054C70);
  v18 = sub_10004C58C();
  v50 = v7;
  v20 = v19;
  sub_100029EFC(v18, v19, v21);
  v63 = sub_10004BB4C();
  v64 = v22;
  v67._countAndFlagsBits = 46;
  v67._object = 0xE100000000000000;
  sub_10004C5AC(v67);
  v68._countAndFlagsBits = v18;
  v68._object = v20;
  sub_10004C5AC(v68);

  v48 = v64;
  v49 = v63;
  v23 = swift_allocObject();
  *(v23 + 16) = v15;
  *(v23 + 24) = v17;
  swift_bridgeObjectRetain_n();

  sub_10004C40C();
  v46 = a1;
  sub_100001E64(&qword_10006C480, &unk_1000500D0);
  v24 = sub_100001E64(&qword_10006D518, &qword_100054C68);
  v27 = sub_100029F50(v24, v25, v26);
  v30 = sub_100029FA4(v27, v28, v29);
  sub_100029FF8(v30, v31, v32);
  sub_1000020DC(&qword_10006C490, &qword_10006C480, &unk_1000500D0, &protocol conformance descriptor for Label<A, B>);
  sub_100029E80();
  v33 = v53;
  v34 = v47;
  sub_10004C42C();
  v63 = v34;
  v64 = v17;
  v35 = sub_1000020DC(&qword_10006C4B8, &qword_10006C4B0, &unk_100051930, &protocol conformance descriptor for ControlPicker<A>);
  v38 = sub_100002214(v35, v36, v37);
  v39 = v55;
  v40 = v60;
  sub_10004C07C();
  (*(v56 + 8))(v33, v40);

  v63 = v40;
  v64 = &type metadata for String;
  v65 = v35;
  v66 = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = v54;
  v43 = v61;
  sub_10004C08C();
  (*(v58 + 8))(v39, v43);
  v63 = v43;
  v64 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v44 = v59;
  sub_10004C02C();
  (*(v57 + 8))(v42, v44);
  return (*(v51 + 8))(v52, v50);
}

uint64_t sub_100028970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = sub_10004C41C();
  __chkstk_darwin(v3 - 8);
  v64 = sub_100001E64(&qword_10006C4B0, &unk_100051930);
  v60 = *(v64 - 8);
  __chkstk_darwin(v64);
  v57 = v50 - v4;
  v65 = sub_100001E64(&qword_10006C4A8, qword_100050170);
  v62 = *(v65 - 8);
  __chkstk_darwin(v65);
  v59 = v50 - v5;
  v63 = sub_100001E64(&qword_10006C4A0, &unk_100051920);
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v58 = v50 - v6;
  v7 = sub_10004BBDC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10004BC7C();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v50 - v16;
  if (qword_10006C328 != -1)
  {
    swift_once();
  }

  v18 = sub_1000090A4(v7, static CloseTabsIntervalType.typeDisplayRepresentation);
  swift_beginAccess();
  (*(v8 + 16))(v10, v18, v7);
  sub_10004BBBC();
  (*(v8 + 8))(v10, v7);
  (*(v12 + 16))(v15, v17, v11);
  v19 = sub_10004C57C();
  v51 = v19;
  v21 = v20;
  v67 = &type metadata for CloseTabsControlPicker;
  sub_100001E64(&qword_10006D508, &unk_100054C58);
  v22 = sub_10004C58C();
  v24 = v23;
  sub_100029818(v22, v23, v25);
  v67 = sub_10004BB4C();
  v68 = v26;
  v71._countAndFlagsBits = 46;
  v71._object = 0xE100000000000000;
  sub_10004C5AC(v71);
  v72._countAndFlagsBits = v22;
  v72._object = v24;
  sub_10004C5AC(v72);

  v53 = v67;
  v52 = v68;
  v27 = swift_allocObject();
  *(v27 + 16) = v19;
  *(v27 + 24) = v21;
  swift_bridgeObjectRetain_n();

  sub_10004C40C();
  v50[1] = a1;
  sub_100001E64(&qword_10006C480, &unk_1000500D0);
  v56 = v11;
  v28 = sub_100001E64(&qword_10006D518, &qword_100054C68);
  v55 = v12;
  v31 = sub_100029D84(v28, v29, v30);
  v54 = v17;
  v34 = sub_100029DD8(v31, v32, v33);
  sub_100029E2C(v34, v35, v36);
  sub_1000020DC(&qword_10006C490, &qword_10006C480, &unk_1000500D0, &protocol conformance descriptor for Label<A, B>);
  sub_100029E80();
  v37 = v57;
  v38 = v51;
  sub_10004C42C();
  v67 = v38;
  v68 = v21;
  v39 = sub_1000020DC(&qword_10006C4B8, &qword_10006C4B0, &unk_100051930, &protocol conformance descriptor for ControlPicker<A>);
  v42 = sub_100002214(v39, v40, v41);
  v43 = v59;
  v44 = v64;
  sub_10004C07C();
  (*(v60 + 8))(v37, v44);

  v67 = v44;
  v68 = &type metadata for String;
  v69 = v39;
  v70 = v42;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = v58;
  v47 = v65;
  sub_10004C08C();
  (*(v62 + 8))(v43, v47);
  v67 = v47;
  v68 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v48 = v63;
  sub_10004C02C();
  (*(v61 + 8))(v46, v48);
  return (*(v55 + 8))(v54, v56);
}

uint64_t sub_10002909C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = sub_10004C41C();
  __chkstk_darwin(v3 - 8);
  v64 = sub_100001E64(&qword_10006C4B0, &unk_100051930);
  v60 = *(v64 - 8);
  __chkstk_darwin(v64);
  v57 = v50 - v4;
  v65 = sub_100001E64(&qword_10006C4A8, qword_100050170);
  v62 = *(v65 - 8);
  __chkstk_darwin(v65);
  v59 = v50 - v5;
  v63 = sub_100001E64(&qword_10006C4A0, &unk_100051920);
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v58 = v50 - v6;
  v7 = sub_10004BBDC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10004BC7C();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v50 - v16;
  if (qword_10006C358 != -1)
  {
    swift_once();
  }

  v18 = sub_1000090A4(v7, static OpenLinksOption.typeDisplayRepresentation);
  swift_beginAccess();
  (*(v8 + 16))(v10, v18, v7);
  sub_10004BBBC();
  (*(v8 + 8))(v10, v7);
  (*(v12 + 16))(v15, v17, v11);
  v19 = sub_10004C57C();
  v51 = v19;
  v21 = v20;
  v67 = &type metadata for OpenLinksInBackgroundControlPicker;
  sub_100001E64(&qword_10006D578, &unk_100054C80);
  v22 = sub_10004C58C();
  v24 = v23;
  sub_10002A0A0(v22, v23, v25);
  v67 = sub_10004BB4C();
  v68 = v26;
  v71._countAndFlagsBits = 46;
  v71._object = 0xE100000000000000;
  sub_10004C5AC(v71);
  v72._countAndFlagsBits = v22;
  v72._object = v24;
  sub_10004C5AC(v72);

  v53 = v67;
  v52 = v68;
  v27 = swift_allocObject();
  *(v27 + 16) = v19;
  *(v27 + 24) = v21;
  swift_bridgeObjectRetain_n();

  sub_10004C40C();
  v50[1] = a1;
  sub_100001E64(&qword_10006C480, &unk_1000500D0);
  v56 = v11;
  v28 = sub_100001E64(&qword_10006D518, &qword_100054C68);
  v55 = v12;
  v31 = sub_10002A12C(v28, v29, v30);
  v54 = v17;
  v34 = sub_10002A180(v31, v32, v33);
  sub_10002A1D4(v34, v35, v36);
  sub_1000020DC(&qword_10006C490, &qword_10006C480, &unk_1000500D0, &protocol conformance descriptor for Label<A, B>);
  sub_100029E80();
  v37 = v57;
  v38 = v51;
  sub_10004C42C();
  v67 = v38;
  v68 = v21;
  v39 = sub_1000020DC(&qword_10006C4B8, &qword_10006C4B0, &unk_100051930, &protocol conformance descriptor for ControlPicker<A>);
  v42 = sub_100002214(v39, v40, v41);
  v43 = v59;
  v44 = v64;
  sub_10004C07C();
  (*(v60 + 8))(v37, v44);

  v67 = v44;
  v68 = &type metadata for String;
  v69 = v39;
  v70 = v42;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = v58;
  v47 = v65;
  sub_10004C08C();
  (*(v62 + 8))(v43, v47);
  v67 = v47;
  v68 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v48 = v63;
  sub_10004C02C();
  (*(v61 + 8))(v46, v48);
  return (*(v55 + 8))(v54, v56);
}

uint64_t sub_1000297C8@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_100028970(KeyPath, a1);
}

unint64_t sub_100029818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D510;
  if (!qword_10006D510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D510);
  }

  return result;
}

uint64_t sub_10002986C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000298AC(uint64_t a1)
{
  v2 = sub_10004BC7C();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10004BABC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10006C330 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = static CloseTabsIntervalType.caseDisplayRepresentations;
  if (*(static CloseTabsIntervalType.caseDisplayRepresentations + 16))
  {

    v8 = sub_10001A1E8(a1);
    if (v9)
    {
      (*(v4 + 16))(v6, *(v7 + 56) + *(v4 + 72) * v8, v3);

      sub_10004BA8C();
      v10 = sub_10004C19C();
      (*(v4 + 8))(v6, v3);
      return v10;
    }
  }

  return 0;
}

uint64_t sub_100029AB0(char a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t a6)
{
  v10 = sub_10004BC7C();
  __chkstk_darwin(v10 - 8);
  v11 = sub_10004BABC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = *a4;
  if (*(v15 + 16))
  {

    v16 = a5(a1 & 1);
    if (v17)
    {
      (*(v12 + 16))(v14, *(v15 + 56) + *(v12 + 72) * v16, v11);

      sub_10004BA8C();
      v18 = sub_10004C19C();
      (*(v12 + 8))(v14, v11);
      return v18;
    }
  }

  return 0;
}

uint64_t sub_100029D24@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  result = sub_100029AB0(*a1, a2, a3, a4, a5, a6);
  *a7 = result;
  a7[1] = v9;
  a7[2] = v10;
  a7[3] = v11;
  return result;
}

uint64_t sub_100029D54@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000298AC(*a1);
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

unint64_t sub_100029D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D520;
  if (!qword_10006D520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D520);
  }

  return result;
}

unint64_t sub_100029DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D528;
  if (!qword_10006D528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D528);
  }

  return result;
}

unint64_t sub_100029E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D530;
  if (!qword_10006D530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D530);
  }

  return result;
}

unint64_t sub_100029E80()
{
  result = qword_10006D538;
  if (!qword_10006D538)
  {
    sub_100001FB0(&qword_10006D518, &qword_100054C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D538);
  }

  return result;
}

unint64_t sub_100029EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D548;
  if (!qword_10006D548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D548);
  }

  return result;
}

unint64_t sub_100029F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D550;
  if (!qword_10006D550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D550);
  }

  return result;
}

unint64_t sub_100029FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D558;
  if (!qword_10006D558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D558);
  }

  return result;
}

unint64_t sub_100029FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D560;
  if (!qword_10006D560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D560);
  }

  return result;
}

unint64_t sub_10002A04C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D570;
  if (!qword_10006D570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D570);
  }

  return result;
}

unint64_t sub_10002A0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D580;
  if (!qword_10006D580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D580);
  }

  return result;
}

unint64_t sub_10002A12C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D588;
  if (!qword_10006D588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D588);
  }

  return result;
}

unint64_t sub_10002A180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D590;
  if (!qword_10006D590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D590);
  }

  return result;
}

unint64_t sub_10002A1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D598;
  if (!qword_10006D598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D598);
  }

  return result;
}

uint64_t sub_10002A228()
{
  sub_100001FB0(&qword_10006C4A0, &unk_100051920);
  sub_100001FB0(&qword_10006C4A8, qword_100050170);
  sub_100001FB0(&qword_10006C4B0, &unk_100051930);
  v3 = sub_1000020DC(&qword_10006C4B8, &qword_10006C4B0, &unk_100051930, &protocol conformance descriptor for ControlPicker<A>);
  sub_100002214(v3, v0, v1);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10002A364(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x796C6C61756E616DLL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6B656557656E6FLL;
    }

    else
    {
      v4 = 0x68746E6F4D656E6FLL;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x796144656E6FLL;
    }

    else
    {
      v4 = 0x796C6C61756E616DLL;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x6B656557656E6FLL;
  if (a2 != 2)
  {
    v8 = 0x68746E6F4D656E6FLL;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 0x796144656E6FLL;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_10004C72C();
  }

  return v11 & 1;
}

uint64_t sub_10002A4A0()
{
  v0 = sub_100001E64(&qword_10006C6B8, &qword_100051FC0);
  __chkstk_darwin(v0 - 8);
  v13 = &v11 - v1;
  v12 = sub_10004BC5C();
  v2 = *(v12 - 8);
  __chkstk_darwin(v12);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004BD8C();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10004C54C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10004BC7C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = sub_10004BBDC();
  sub_1000090DC(v9, qword_10006E498);
  sub_1000090A4(v9, qword_10006E498);
  sub_10004C4FC();
  sub_10004BD7C();
  (*(v2 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v12);
  sub_10004BC8C();
  (*(v8 + 56))(v13, 1, 1, v7);
  return sub_10004BBCC();
}

uint64_t sub_10002A7B0()
{
  v0 = sub_10004BC7C();
  sub_1000090DC(v0, qword_10006E4B0);
  sub_1000090A4(v0, qword_10006E4B0);
  return sub_10004BC4C();
}

uint64_t sub_10002A814()
{
  v0 = sub_100001E64(&qword_10006C718, &qword_100050FD0);
  sub_1000090DC(v0, qword_10006E4C8);
  v1 = sub_1000090A4(v0, qword_10006E4C8);
  sub_10004B9DC();
  v2 = sub_10004B9EC();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10002A8D4()
{
  result = swift_getKeyPath();
  qword_10006E4E0 = result;
  return result;
}

uint64_t sub_10002A8FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  sub_100001E64(&qword_10006C6E8, &unk_100050F80);
  v3[10] = swift_task_alloc();
  sub_100001E64(&qword_10006C6F0, &qword_100052010);
  v3[11] = swift_task_alloc();
  sub_100001E64(&qword_10006D708, &qword_100055650);
  v3[12] = swift_task_alloc();
  v4 = sub_10004B7DC();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v5 = sub_100001E64(&qword_10006D710, &qword_100055658);
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_10002AADC, 0, 0);
}

uint64_t sub_10002AADC()
{
  sub_10004B85C();
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  v4 = sub_10002DB80(v1, v2, v3);
  *v1 = v0;
  v1[1] = sub_10002ABAC;
  v5 = *(v0 + 152);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 16, sub_10002E6B0, 0, &type metadata for CloseTabsModeEntity, v4);
}

uint64_t sub_10002ABAC()
{

  return _swift_task_switch(sub_10002ACA8, 0, 0);
}

uint64_t sub_10002ACA8()
{
  sub_10004B85C();
  v1 = v0[3];
  v0[4] = v1;
  v0[21] = v1;
  sub_10004B85C();
  if (qword_10006C320 != -1)
  {
    swift_once();
  }

  v2 = qword_10006E4E0;
  v0[22] = qword_10006E4E0;

  v3 = swift_task_alloc();
  v0[23] = v3;
  v4 = sub_1000020DC(&qword_10006D6F8, &qword_10006D700, &qword_100055638, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v3 = v0;
  v3[1] = sub_10002ADFC;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 25, v2, &type metadata for CloseTabsIntervalType, v4);
}

uint64_t sub_10002ADFC()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_100004690;
  }

  else
  {
    v2 = sub_10002AF50;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10002AF50()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v16 = v0[18];
  v17 = v0[15];
  v18 = v0[14];
  v19 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  sub_10004B85C();
  v0[6] = v0[5];
  v6 = sub_10004BBAC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = sub_10004BBEC();
  v8 = (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v11 = sub_10002D870(v8, v9, v10);
  sub_10002DC30(v11, v12, v13);
  sub_10004B7AC();
  (*(v2 + 16))(v16, v1, v3);
  sub_10004B7CC();
  sub_10004B7EC();
  (*(v18 + 8))(v17, v19);

  (*(v2 + 8))(v1, v3);

  v14 = v0[1];

  return v14();
}

uint64_t sub_10002B1BC()
{
  v0 = sub_100001E64(&qword_10006D718, &qword_100055660);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - v2;
  if (qword_10006C320 != -1)
  {
    swift_once();
  }

  sub_10004BA5C();

  sub_10002DC30(v4, v5, v6);
  sub_1000020DC(&qword_10006D720, &qword_10006D718, &qword_100055660, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_10004BA4C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t (*sub_10002B330(uint64_t *a1))()
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
  *(v2 + 32) = sub_10004B84C();
  return sub_100004980;
}

uint64_t (*sub_10002B3A4(uint64_t *a1))()
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
  *(v2 + 32) = sub_10004B84C();
  return sub_10000950C;
}

double sub_10002B418()
{
  if (qword_10006C320 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_10002B4AC@<X0>(uint64_t a1@<X8>)
{
  if (qword_10006C318 != -1)
  {
    swift_once();
  }

  v2 = sub_100001E64(&qword_10006C718, &qword_100050FD0);
  v3 = sub_1000090A4(v2, qword_10006E4C8);

  return sub_100009450(v3, a1);
}

uint64_t sub_10002B530(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000094C4;

  return sub_10002A8FC(a1, v5, v4);
}

uint64_t sub_10002B5DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10002CFFC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10002B640()
{
  v1 = [objc_opt_self() automaticTabClosingInterval];
  if (v1 >= 4)
  {
    sub_10004B68C();
    sub_10002E64C();
    swift_allocError();
    sub_10004BA3C();
    swift_willThrow();
  }

  else
  {
    **(v0 + 16) = v1;
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10002B710(uint64_t a1, char *a2)
{
  v3 = *a2;
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000094C4;

  return sub_10002D3FC(v3);
}

uint64_t sub_10002B7A4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000094F4;

  return sub_10002D514();
}

uint64_t sub_10002B848(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v7 = sub_10002DD10(v4, v5, v6);
  *v4 = v2;
  v4[1] = sub_100005128;

  return _UniqueEntityQuery.allEntities()(a2, v7);
}

uint64_t sub_10002B8F8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v8 = sub_10002DD10(v5, v6, v7);
  *v5 = v2;
  v5[1] = sub_100009550;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v8);
}

uint64_t sub_10002B9AC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v7 = sub_10002DD10(v4, v5, v6);
  *v4 = v2;
  v4[1] = sub_1000094F4;

  return _UniqueEntityQuery.suggestedEntities()(a2, v7);
}

uint64_t sub_10002BA5C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v8 = sub_10002DA78(v5, v6, v7);
  *v5 = v2;
  v5[1] = sub_100005810;

  return EntityQuery.results()(a1, a2, v8);
}

uint64_t sub_10002BB10()
{
  v0 = qword_10006D5A0;

  return v0;
}

uint64_t sub_10002BB48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_100029E2C(a1, a2, a3);
  result = sub_10004B80C();
  *a4 = result;
  a4[1] = v6;
  return result;
}

uint64_t sub_10002BBC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002DB80(a1, a2, a3);

  return static AppEntity.defaultResolverSpecification.getter(a1, v4);
}

uint64_t sub_10002BC0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100029E2C(a1, a2, a3);

  return _UniqueEntity.displayRepresentation.getter(a1, v4);
}

uint64_t sub_10002BC58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002DECC(a1, a2, a3);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v4);
}

uint64_t CloseTabsIntervalType.id.getter(unsigned __int8 a1)
{
  v1 = 0x796C6C61756E616DLL;
  v2 = 0x6B656557656E6FLL;
  if (a1 != 2)
  {
    v2 = 0x68746E6F4D656E6FLL;
  }

  if (a1)
  {
    v1 = 0x796144656E6FLL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10002BD1C()
{
  v0 = sub_100001E64(&qword_10006C6B8, &qword_100051FC0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_10004BC5C();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004BD8C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10004C54C();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004BC7C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_10004BBDC();
  sub_1000090DC(v10, static CloseTabsIntervalType.typeDisplayRepresentation);
  sub_1000090A4(v10, static CloseTabsIntervalType.typeDisplayRepresentation);
  sub_10004C4FC();
  sub_10004BD7C();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_10004BC9C();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_10004BBCC();
}

uint64_t CloseTabsIntervalType.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (qword_10006C328 != -1)
  {
    swift_once();
  }

  v0 = sub_10004BBDC();

  return sub_1000090A4(v0, static CloseTabsIntervalType.typeDisplayRepresentation);
}

uint64_t static CloseTabsIntervalType.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10006C328 != -1)
  {
    swift_once();
  }

  v2 = sub_10004BBDC();
  v3 = sub_1000090A4(v2, static CloseTabsIntervalType.typeDisplayRepresentation);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static CloseTabsIntervalType.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_10006C328 != -1)
  {
    swift_once();
  }

  v2 = sub_10004BBDC();
  v3 = sub_1000090A4(v2, static CloseTabsIntervalType.typeDisplayRepresentation);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static CloseTabsIntervalType.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_10006C328 != -1)
  {
    swift_once();
  }

  v1 = sub_10004BBDC();
  sub_1000090A4(v1, static CloseTabsIntervalType.typeDisplayRepresentation);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_10002C2B4()
{
  v0 = sub_100001E64(&qword_10006D050, &qword_1000560B0);
  __chkstk_darwin(v0 - 8);
  v53 = v40 - v1;
  v2 = sub_100001E64(&qword_10006C6B8, &qword_100051FC0);
  __chkstk_darwin(v2 - 8);
  v52 = v40 - v3;
  v60 = sub_10004BC5C();
  v4 = *(v60 - 8);
  __chkstk_darwin(v60);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004BD8C();
  __chkstk_darwin(v7 - 8);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004C54C();
  __chkstk_darwin(v10 - 8);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004BC7C();
  v55 = v13;
  v59 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001E64(&qword_10006D728, &unk_100055690);
  v16 = sub_100001E64(&qword_10006D100, &qword_100053258);
  v48 = v16;
  v17 = *(v16 - 8);
  v49 = *(v17 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v43 = v19;
  *(v19 + 16) = xmmword_100054C90;
  v20 = (v19 + v18);
  v21 = *(v16 + 48);
  *v20 = 0;
  v41 = v21;
  v42 = 0xD000000000000015;
  v22 = v12;
  sub_10004C4FC();
  v56 = "Use Contact Info in Autofill";
  sub_10004BD7C();
  v57 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v47 = *(v4 + 104);
  v58 = v4 + 104;
  v54 = v6;
  v47(v6);
  sub_10004BC9C();
  v23 = *(v59 + 56);
  v59 += 56;
  v45 = v23;
  v24 = v52;
  v23(v52, 1, 1, v13);
  v50 = sub_10004BA7C();
  v25 = *(v50 - 8);
  v44 = *(v25 + 56);
  v51 = v25 + 56;
  v44(v53, 1, 1, v50);
  v46 = v20;
  sub_10004BAAC();
  v27 = v48;
  v26 = v49;
  v41 = *(v48 + 48);
  v20[v49] = 1;
  v40[1] = v22;
  sub_10004C4FC();
  v40[2] = v9;
  sub_10004BD7C();
  v28 = v47;
  (v47)(v54, v57, v60);
  v40[0] = v15;
  sub_10004BC9C();
  v29 = v45;
  v45(v24, 1, 1, v55);
  v30 = v53;
  v31 = v44;
  v44(v53, 1, 1, v50);
  v32 = v30;
  sub_10004BAAC();
  v33 = 2 * v26;
  v41 = 2 * v26;
  v34 = v46;
  v40[3] = *(v27 + 48);
  v46[v33] = 2;
  sub_10004C4FC();
  sub_10004BD7C();
  (v28)(v54, v57, v60);
  sub_10004BC9C();
  v35 = v52;
  v29(v52, 1, 1, v55);
  v36 = v50;
  v31(v32, 1, 1, v50);
  sub_10004BAAC();
  v37 = &v34[v41 + v49];
  v49 = *(v48 + 48);
  *v37 = 3;
  sub_10004C4FC();
  sub_10004BD7C();
  (v47)(v54, v57, v60);
  sub_10004BC9C();
  v45(v35, 1, 1, v55);
  v44(v32, 1, 1, v36);
  sub_10004BAAC();
  v38 = sub_10001BA68(v43);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  static CloseTabsIntervalType.caseDisplayRepresentations = v38;
  return result;
}

uint64_t *CloseTabsIntervalType.caseDisplayRepresentations.unsafeMutableAddressor()
{
  if (qword_10006C330 != -1)
  {
    swift_once();
  }

  return &static CloseTabsIntervalType.caseDisplayRepresentations;
}

uint64_t static CloseTabsIntervalType.caseDisplayRepresentations.getter()
{
  if (qword_10006C330 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static CloseTabsIntervalType.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_10006C330 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static CloseTabsIntervalType.caseDisplayRepresentations = a1;
}

uint64_t (*static CloseTabsIntervalType.caseDisplayRepresentations.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_10006C330 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

Swift::Int sub_10002CC80()
{
  sub_10004C74C();
  sub_10004C59C();

  return sub_10004C76C();
}

uint64_t sub_10002CD40(uint64_t a1)
{
  sub_10004C59C();
}

Swift::Int sub_10002CDEC(uint64_t a1)
{
  sub_10004C74C();
  sub_10004C59C();

  return sub_10004C76C();
}

unint64_t sub_10002CEA8@<X0>(Swift::String *a1@<X0>, SafariWidgetExtension::CloseTabsIntervalType_optional *a2@<X8>)
{
  result = _s21SafariWidgetExtension21CloseTabsIntervalTypeO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_10002CED8(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x796C6C61756E616DLL;
  v4 = 0xE700000000000000;
  v5 = 0x6B656557656E6FLL;
  if (*v1 != 2)
  {
    v5 = 0x68746E6F4D656E6FLL;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x796144656E6FLL;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_10002CF54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100029D84(a1, a2, a3);

  return static AppEnum.defaultResolverSpecification.getter(a1, v4);
}

uint64_t sub_10002CFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002E228(a1, a2, a3);

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v4);
}

uint64_t sub_10002CFFC()
{
  v33 = sub_10004BAFC();
  v0 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100001E64(&qword_10006C6B0, &unk_100050F30);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v25 - v6;
  v8 = sub_100001E64(&qword_10006C6B8, &qword_100051FC0);
  __chkstk_darwin(v8 - 8);
  v10 = v25 - v9;
  v11 = sub_10004BC7C();
  v31 = v11;
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v28 = sub_100001E64(&qword_10006D6E8, &qword_100055610);
  sub_10004BC4C();
  v13 = *(v12 + 56);
  v29 = v12 + 56;
  v30 = v13;
  v13(v10, 1, 1, v11);
  v35 = 0;
  v14 = sub_10004B7DC();
  v15 = *(*(v14 - 8) + 56);
  v15(v7, 1, 1, v14);
  v15(v5, 1, 1, v14);
  v27 = enum case for InputConnectionBehavior.default(_:);
  v16 = *(v0 + 104);
  v25[1] = v0 + 104;
  v26 = v16;
  v17 = v32;
  v18 = v16(v32);
  sub_10002DB80(v18, v19, v20);
  v28 = sub_10004B88C();
  sub_100001E64(&qword_10006D6F0, &qword_100055618);
  sub_10004BC4C();
  v30(v10, 1, 1, v31);
  v34 = 4;
  v15(v7, 1, 1, v14);
  v15(v5, 1, 1, v14);
  v21 = v26(v17, v27, v33);
  sub_100029D84(v21, v22, v23);
  sub_10004B87C();
  return v28;
}

uint64_t sub_10002D41C()
{
  [objc_opt_self() setAutomaticTabClosingInterval:*(v0 + 16)];
  v1 = [objc_opt_self() defaultCenter];
  v2 = [objc_opt_self() safari_notificationNameForUserDefaultsKey:WBSCloseTabsAutomaticallyDefaultsKey];
  [v1 postNotificationName:v2 object:0 userInfo:0 deliverImmediately:1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10002D514()
{
  v1 = sub_10004BC5C();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_10004BD8C();
  v0[5] = swift_task_alloc();
  sub_10004C54C();
  v0[6] = swift_task_alloc();
  sub_10004BC7C();
  v0[7] = swift_task_alloc();

  return _swift_task_switch(sub_10002D654, 0, 0);
}

uint64_t sub_10002D654()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v0[3];
  sub_100001E64(&qword_10006D5C0, qword_100054CA0);
  sub_10004C4FC();
  sub_10004BD7C();
  (*(v3 + 104))(v1, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_10004BC9C();
  v4 = sub_1000020DC(&qword_10006D6F8, &qword_10006D700, &qword_100055638, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  sub_100029D84(v4, v5, v6);
  v7 = sub_10004BC1C();

  v8 = v0[1];

  return v8(v7);
}

unint64_t _s21SafariWidgetExtension21CloseTabsIntervalTypeO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100069D98;
  v6._object = a2;
  v4 = sub_10004C71C(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10002D870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D5B0;
  if (!qword_10006D5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D5B0);
  }

  return result;
}

unint64_t sub_10002D90C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D5C8;
  if (!qword_10006D5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D5C8);
  }

  return result;
}

unint64_t sub_10002D964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D5D0;
  if (!qword_10006D5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D5D0);
  }

  return result;
}

unint64_t sub_10002DA1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D5D8;
  if (!qword_10006D5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D5D8);
  }

  return result;
}

unint64_t sub_10002DA78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D5E0;
  if (!qword_10006D5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D5E0);
  }

  return result;
}

unint64_t sub_10002DAD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D5E8;
  if (!qword_10006D5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D5E8);
  }

  return result;
}

unint64_t sub_10002DB28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D5F0;
  if (!qword_10006D5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D5F0);
  }

  return result;
}

unint64_t sub_10002DB80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D5F8;
  if (!qword_10006D5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D5F8);
  }

  return result;
}

unint64_t sub_10002DBD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D600;
  if (!qword_10006D600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D600);
  }

  return result;
}

unint64_t sub_10002DC30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D608;
  if (!qword_10006D608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D608);
  }

  return result;
}

unint64_t sub_10002DC88()
{
  result = qword_10006D610;
  if (!qword_10006D610)
  {
    v1 = sub_100001FB0(&qword_10006D618, qword_100054F40);
    sub_10002DC30(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D610);
  }

  return result;
}

unint64_t sub_10002DD10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D620;
  if (!qword_10006D620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D620);
  }

  return result;
}

unint64_t sub_10002DD68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D628;
  if (!qword_10006D628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D628);
  }

  return result;
}

unint64_t sub_10002DDC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D630;
  if (!qword_10006D630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D630);
  }

  return result;
}

unint64_t sub_10002DE18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D638;
  if (!qword_10006D638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D638);
  }

  return result;
}

unint64_t sub_10002DE74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D640;
  if (!qword_10006D640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D640);
  }

  return result;
}

unint64_t sub_10002DECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D648;
  if (!qword_10006D648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D648);
  }

  return result;
}

unint64_t sub_10002DF68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D660;
  if (!qword_10006D660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D660);
  }

  return result;
}

unint64_t sub_10002DFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D668;
  if (!qword_10006D668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D668);
  }

  return result;
}

unint64_t sub_10002E018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D670;
  if (!qword_10006D670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D670);
  }

  return result;
}

unint64_t sub_10002E070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D678;
  if (!qword_10006D678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D678);
  }

  return result;
}

unint64_t sub_10002E0C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D680;
  if (!qword_10006D680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D680);
  }

  return result;
}

unint64_t sub_10002E120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D688;
  if (!qword_10006D688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D688);
  }

  return result;
}

unint64_t sub_10002E178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D690;
  if (!qword_10006D690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D690);
  }

  return result;
}

unint64_t sub_10002E1D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D698;
  if (!qword_10006D698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D698);
  }

  return result;
}

unint64_t sub_10002E228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D6A0;
  if (!qword_10006D6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D6A0);
  }

  return result;
}

unint64_t sub_10002E2F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D6A8;
  if (!qword_10006D6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D6A8);
  }

  return result;
}

unint64_t sub_10002E34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D6B0;
  if (!qword_10006D6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D6B0);
  }

  return result;
}

unint64_t sub_10002E3A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D6B8;
  if (!qword_10006D6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D6B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CloseTabsIntervalType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CloseTabsIntervalType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10002E64C()
{
  result = qword_10006D068;
  if (!qword_10006D068)
  {
    sub_10004B68C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D068);
  }

  return result;
}

double sub_10002E6A4@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;

  return result;
}

uint64_t sub_10002E6D8()
{
  v0 = sub_100001E64(&qword_10006C6B8, &qword_100051FC0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_10004BC5C();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004BD8C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10004C54C();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004BC7C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_10004BBDC();
  sub_1000090DC(v10, qword_10006E508);
  sub_1000090A4(v10, qword_10006E508);
  sub_10004C4FC();
  sub_10004BD7C();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_10004BC9C();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_10004BBCC();
}

uint64_t sub_10002E9C4()
{
  v0 = sub_10004BC7C();
  sub_1000090DC(v0, qword_10006E520);
  sub_1000090A4(v0, qword_10006E520);
  return sub_10004BC4C();
}

uint64_t sub_10002EA28()
{
  v0 = sub_100001E64(&qword_10006C718, &qword_100050FD0);
  sub_1000090DC(v0, qword_10006E538);
  v1 = sub_1000090A4(v0, qword_10006E538);
  sub_10004B9DC();
  v2 = sub_10004B9EC();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10002EAE8()
{
  result = swift_getKeyPath();
  qword_10006E550 = result;
  return result;
}

uint64_t sub_10002EB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  sub_100001E64(&qword_10006C6E8, &unk_100050F80);
  v3[10] = swift_task_alloc();
  sub_100001E64(&qword_10006C6F0, &qword_100052010);
  v3[11] = swift_task_alloc();
  sub_100001E64(&qword_10006D898, &qword_100056068);
  v3[12] = swift_task_alloc();
  v4 = sub_10004B7DC();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v5 = sub_100001E64(&qword_10006D8A0, &qword_100056070);
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_10002ECF0, 0, 0);
}

uint64_t sub_10002ECF0()
{
  sub_10004B85C();
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  v4 = sub_100031008(v1, v2, v3);
  *v1 = v0;
  v1[1] = sub_10002EDC0;
  v5 = *(v0 + 152);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 16, sub_100032420, 0, &type metadata for OpenLinksInBackgroundEntity, v4);
}

uint64_t sub_10002EDC0()
{

  return _swift_task_switch(sub_10002EEBC, 0, 0);
}

uint64_t sub_10002EEBC()
{
  sub_10004B85C();
  v1 = *(v0 + 24);
  *(v0 + 32) = v1;
  *(v0 + 168) = v1;
  sub_10004B85C();
  *(v0 + 201) = *(v0 + 200);
  if (qword_10006C350 != -1)
  {
    swift_once();
  }

  v2 = qword_10006E550;
  *(v0 + 176) = qword_10006E550;

  v3 = swift_task_alloc();
  *(v0 + 184) = v3;
  v4 = sub_1000020DC(&qword_10006D888, &qword_10006D890, &qword_100056058, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v3 = v0;
  v3[1] = sub_10002F01C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 201, v2, &type metadata for OpenLinksOption, v4);
}

uint64_t sub_10002F01C()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_100004690;
  }

  else
  {
    v2 = sub_10002F170;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10002F170()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v16 = v0[18];
  v17 = v0[15];
  v18 = v0[14];
  v19 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  sub_10004B85C();
  v0[6] = v0[5];
  v6 = sub_10004BBAC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = sub_10004BBEC();
  v8 = (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v11 = sub_100030CF8(v8, v9, v10);
  sub_1000310B8(v11, v12, v13);
  sub_10004B7AC();
  (*(v2 + 16))(v16, v1, v3);
  sub_10004B7CC();
  sub_10004B7EC();
  (*(v18 + 8))(v17, v19);

  (*(v2 + 8))(v1, v3);

  v14 = v0[1];

  return v14();
}

uint64_t sub_10002F3DC()
{
  v0 = sub_100001E64(&qword_10006D8A8, &qword_100056078);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - v2;
  if (qword_10006C350 != -1)
  {
    swift_once();
  }

  sub_10004BA5C();

  sub_1000310B8(v4, v5, v6);
  sub_1000020DC(&qword_10006D8B0, &qword_10006D8A8, &qword_100056078, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_10004BA4C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t (*sub_10002F550(uint64_t *a1))()
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
  *(v2 + 32) = sub_10004B84C();
  return sub_100004980;
}

uint64_t (*sub_10002F5C4(uint64_t *a1))()
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
  *(v2 + 32) = sub_10004B84C();
  return sub_10000950C;
}

double sub_10002F638()
{
  if (qword_10006C350 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_10002F6CC@<X0>(uint64_t a1@<X8>)
{
  if (qword_10006C348 != -1)
  {
    swift_once();
  }

  v2 = sub_100001E64(&qword_10006C718, &qword_100050FD0);
  v3 = sub_1000090A4(v2, qword_10006E538);

  return sub_100009450(v3, a1);
}

uint64_t sub_10002F750(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000094C4;

  return sub_10002EB10(a1, v5, v4);
}

uint64_t sub_10002F7FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100031D04();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10002F860()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() safari_browserDefaults];
  v3 = [v2 BOOLForKey:_SFOpenLinksInBackgroundDefaultsKey];

  *v1 = v3 ^ 1;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10002F938()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();
  v3 = [v2 safari_browserDefaults];
  v4 = _SFOpenLinksInBackgroundDefaultsKey;
  [v3 setBool:(v1 & 1) == 0 forKey:_SFOpenLinksInBackgroundDefaultsKey];

  v5 = [objc_opt_self() defaultCenter];
  v6 = [v2 safari_notificationNameForUserDefaultsKey:v4];
  [v5 postNotificationName:v6 object:0 userInfo:0 deliverImmediately:1];

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10002FA5C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000094F4;

  return sub_100032104();
}

uint64_t sub_10002FB00(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v7 = sub_100031198(v4, v5, v6);
  *v4 = v2;
  v4[1] = sub_100005128;

  return _UniqueEntityQuery.allEntities()(a2, v7);
}

uint64_t sub_10002FBB0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v8 = sub_100031198(v5, v6, v7);
  *v5 = v2;
  v5[1] = sub_100009550;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v8);
}

uint64_t sub_10002FC64(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v7 = sub_100031198(v4, v5, v6);
  *v4 = v2;
  v4[1] = sub_1000094F4;

  return _UniqueEntityQuery.suggestedEntities()(a2, v7);
}

uint64_t sub_10002FD14(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v8 = sub_100030F00(v5, v6, v7);
  *v5 = v2;
  v5[1] = sub_100005810;

  return EntityQuery.results()(a1, a2, v8);
}

uint64_t sub_10002FDC8()
{
  v0 = qword_10006D730;

  return v0;
}

uint64_t sub_10002FE00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_10002A1D4(a1, a2, a3);
  result = sub_10004B80C();
  *a4 = result;
  a4[1] = v6;
  return result;
}

uint64_t sub_10002FE78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100031008(a1, a2, a3);

  return static AppEntity.defaultResolverSpecification.getter(a1, v4);
}

uint64_t sub_10002FEC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002A1D4(a1, a2, a3);

  return _UniqueEntity.displayRepresentation.getter(a1, v4);
}

uint64_t sub_10002FF10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100031354(a1, a2, a3);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v4);
}

uint64_t OpenLinksOption.id.getter(char a1)
{
  if (a1)
  {
    return 0x62615477656ELL;
  }

  else
  {
    return 0x72676B6361426E69;
  }
}

uint64_t sub_10002FF98()
{
  v0 = sub_100001E64(&qword_10006C6B8, &qword_100051FC0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_10004BC5C();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004BD8C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10004C54C();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004BC7C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_10004BBDC();
  sub_1000090DC(v10, static OpenLinksOption.typeDisplayRepresentation);
  sub_1000090A4(v10, static OpenLinksOption.typeDisplayRepresentation);
  sub_10004C4FC();
  sub_10004BD7C();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_10004BC9C();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_10004BBCC();
}

uint64_t OpenLinksOption.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (qword_10006C358 != -1)
  {
    swift_once();
  }

  v0 = sub_10004BBDC();

  return sub_1000090A4(v0, static OpenLinksOption.typeDisplayRepresentation);
}

uint64_t static OpenLinksOption.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10006C358 != -1)
  {
    swift_once();
  }

  v2 = sub_10004BBDC();
  v3 = sub_1000090A4(v2, static OpenLinksOption.typeDisplayRepresentation);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static OpenLinksOption.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_10006C358 != -1)
  {
    swift_once();
  }

  v2 = sub_10004BBDC();
  v3 = sub_1000090A4(v2, static OpenLinksOption.typeDisplayRepresentation);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static OpenLinksOption.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_10006C358 != -1)
  {
    swift_once();
  }

  v1 = sub_10004BBDC();
  sub_1000090A4(v1, static OpenLinksOption.typeDisplayRepresentation);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_100030534()
{
  v0 = sub_100001E64(&qword_10006D050, &qword_1000560B0);
  __chkstk_darwin(v0 - 8);
  v36 = &v24 - v1;
  v2 = sub_100001E64(&qword_10006C6B8, &qword_100051FC0);
  __chkstk_darwin(v2 - 8);
  v35 = &v24 - v3;
  v31 = sub_10004BC5C();
  v4 = *(v31 - 8);
  __chkstk_darwin(v31);
  v38 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004BD8C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10004C54C();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004BC7C();
  v25 = v8;
  v40 = *(v8 - 8);
  __chkstk_darwin(v8);
  sub_100001E64(&qword_10006D8B8, &qword_1000560B8);
  v9 = sub_100001E64(&qword_10006D0F0, &unk_1000560C0);
  v39 = v9;
  v10 = *(v9 - 8);
  v34 = *(v10 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  v27 = v12;
  *(v12 + 16) = xmmword_100053280;
  v37 = v12 + v11;
  v33 = *(v9 + 48);
  *(v12 + v11) = 0;
  sub_10004C4FC();
  v28 = "Use Contact Info in Autofill";
  sub_10004BD7C();
  v29 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v13 = *(v4 + 104);
  v30 = v4 + 104;
  v32 = v13;
  v13(v38);
  sub_10004BC9C();
  v14 = *(v40 + 56);
  v40 += 56;
  v26 = v14;
  v15 = v35;
  v14(v35, 1, 1, v8);
  v16 = sub_10004BA7C();
  v17 = *(*(v16 - 8) + 56);
  v18 = v36;
  v17(v36, 1, 1, v16);
  v19 = v37;
  v20 = v18;
  sub_10004BAAC();
  v21 = (v19 + v34);
  v34 = *(v39 + 48);
  *v21 = 1;
  sub_10004C4FC();
  sub_10004BD7C();
  v32(v38, v29, v31);
  sub_10004BC9C();
  v26(v15, 1, 1, v25);
  v17(v20, 1, 1, v16);
  sub_10004BAAC();
  v22 = sub_10001BC50(v27);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  static OpenLinksOption.caseDisplayRepresentations = v22;
  return result;
}

uint64_t *OpenLinksOption.caseDisplayRepresentations.unsafeMutableAddressor()
{
  if (qword_10006C360 != -1)
  {
    swift_once();
  }

  return &static OpenLinksOption.caseDisplayRepresentations;
}

uint64_t static OpenLinksOption.caseDisplayRepresentations.getter()
{
  if (qword_10006C360 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static OpenLinksOption.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_10006C360 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static OpenLinksOption.caseDisplayRepresentations = a1;
}

uint64_t (*static OpenLinksOption.caseDisplayRepresentations.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_10006C360 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

SafariWidgetExtension::OpenLinksOption_optional __swiftcall OpenLinksOption.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v6._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_100069E90;
  v6._object = object;
  v3 = sub_10004C71C(v2, v6);

  if (v3 == 1)
  {
    v4.value = SafariWidgetExtension_OpenLinksOption_newTab;
  }

  else
  {
    v4.value = SafariWidgetExtension_OpenLinksOption_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100030CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D740;
  if (!qword_10006D740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D740);
  }

  return result;
}

unint64_t sub_100030D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D758;
  if (!qword_10006D758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D758);
  }

  return result;
}

unint64_t sub_100030DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D760;
  if (!qword_10006D760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D760);
  }

  return result;
}

unint64_t sub_100030EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D768;
  if (!qword_10006D768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D768);
  }

  return result;
}

unint64_t sub_100030F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D770;
  if (!qword_10006D770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D770);
  }

  return result;
}

unint64_t sub_100030F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D778;
  if (!qword_10006D778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D778);
  }

  return result;
}

unint64_t sub_100030FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D780;
  if (!qword_10006D780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D780);
  }

  return result;
}

unint64_t sub_100031008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D788;
  if (!qword_10006D788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D788);
  }

  return result;
}

unint64_t sub_100031060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D790;
  if (!qword_10006D790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D790);
  }

  return result;
}

unint64_t sub_1000310B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D798;
  if (!qword_10006D798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D798);
  }

  return result;
}

unint64_t sub_100031110()
{
  result = qword_10006D7A0;
  if (!qword_10006D7A0)
  {
    v1 = sub_100001FB0(&qword_10006D7A8, qword_100055940);
    sub_1000310B8(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D7A0);
  }

  return result;
}

unint64_t sub_100031198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D7B0;
  if (!qword_10006D7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D7B0);
  }

  return result;
}

unint64_t sub_1000311F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D7B8;
  if (!qword_10006D7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D7B8);
  }

  return result;
}

unint64_t sub_100031248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D7C0;
  if (!qword_10006D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D7C0);
  }

  return result;
}

unint64_t sub_1000312A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D7C8;
  if (!qword_10006D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D7C8);
  }

  return result;
}

unint64_t sub_1000312FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D7D0;
  if (!qword_10006D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D7D0);
  }

  return result;
}

unint64_t sub_100031354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D7D8;
  if (!qword_10006D7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D7D8);
  }

  return result;
}

unint64_t sub_1000313F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D7F0;
  if (!qword_10006D7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D7F0);
  }

  return result;
}

uint64_t sub_100031444(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x62615477656ELL;
  }

  else
  {
    v3 = 0x72676B6361426E69;
  }

  if (v2)
  {
    v4 = 0xEC000000646E756FLL;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x62615477656ELL;
  }

  else
  {
    v5 = 0x72676B6361426E69;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xEC000000646E756FLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10004C72C();
  }

  return v8 & 1;
}

unint64_t sub_1000314F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D7F8;
  if (!qword_10006D7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D7F8);
  }

  return result;
}

Swift::Int sub_100031548()
{
  sub_10004C74C();
  sub_10004C59C();

  return sub_10004C76C();
}

uint64_t sub_1000315D0(uint64_t a1)
{
  sub_10004C59C();
}

Swift::Int sub_100031644(uint64_t a1)
{
  sub_10004C74C();
  sub_10004C59C();

  return sub_10004C76C();
}

uint64_t sub_1000316C8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100069E90;
  v8._object = v3;
  v5 = sub_10004C71C(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_100031728(uint64_t *a1@<X8>)
{
  v2 = 0x72676B6361426E69;
  if (*v1)
  {
    v2 = 0x62615477656ELL;
  }

  v3 = 0xEC000000646E756FLL;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_100031770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D800;
  if (!qword_10006D800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D800);
  }

  return result;
}

unint64_t sub_1000317C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D808;
  if (!qword_10006D808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D808);
  }

  return result;
}

unint64_t sub_100031820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D810;
  if (!qword_10006D810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D810);
  }

  return result;
}

unint64_t sub_100031878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D818;
  if (!qword_10006D818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D818);
  }

  return result;
}

unint64_t sub_1000318D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D820;
  if (!qword_10006D820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D820);
  }

  return result;
}

unint64_t sub_100031928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D828;
  if (!qword_10006D828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D828);
  }

  return result;
}

unint64_t sub_100031980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D830;
  if (!qword_10006D830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D830);
  }

  return result;
}

uint64_t sub_100031A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002A12C(a1, a2, a3);

  return static AppEnum.defaultResolverSpecification.getter(a1, v4);
}

unint64_t sub_100031A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D838;
  if (!qword_10006D838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D838);
  }

  return result;
}

unint64_t sub_100031AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D840;
  if (!qword_10006D840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D840);
  }

  return result;
}

unint64_t sub_100031B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D848;
  if (!qword_10006D848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D848);
  }

  return result;
}

uint64_t sub_100031B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100031980(a1, a2, a3);

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v4);
}

uint64_t sub_100031D04()
{
  v33 = sub_10004BAFC();
  v0 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100001E64(&qword_10006C6B0, &unk_100050F30);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v25 - v6;
  v8 = sub_100001E64(&qword_10006C6B8, &qword_100051FC0);
  __chkstk_darwin(v8 - 8);
  v10 = v25 - v9;
  v11 = sub_10004BC7C();
  v31 = v11;
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v28 = sub_100001E64(&qword_10006D878, &qword_100056030);
  sub_10004BC4C();
  v13 = *(v12 + 56);
  v29 = v12 + 56;
  v30 = v13;
  v13(v10, 1, 1, v11);
  v35 = 0;
  v14 = sub_10004B7DC();
  v15 = *(*(v14 - 8) + 56);
  v15(v7, 1, 1, v14);
  v15(v5, 1, 1, v14);
  v27 = enum case for InputConnectionBehavior.default(_:);
  v16 = *(v0 + 104);
  v25[1] = v0 + 104;
  v26 = v16;
  v17 = v32;
  v18 = v16(v32);
  sub_100031008(v18, v19, v20);
  v28 = sub_10004B88C();
  sub_100001E64(&qword_10006D880, &qword_100056038);
  sub_10004BC4C();
  v30(v10, 1, 1, v31);
  v34 = 2;
  v15(v7, 1, 1, v14);
  v15(v5, 1, 1, v14);
  v21 = v26(v17, v27, v33);
  sub_10002A12C(v21, v22, v23);
  sub_10004B87C();
  return v28;
}

uint64_t sub_100032104()
{
  v1 = sub_10004BC5C();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_10004BD8C();
  v0[5] = swift_task_alloc();
  sub_10004C54C();
  v0[6] = swift_task_alloc();
  sub_10004BC7C();
  v0[7] = swift_task_alloc();

  return _swift_task_switch(sub_100032244, 0, 0);
}

uint64_t sub_100032244()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v0[3];
  sub_100001E64(&qword_10006D750, qword_1000556A0);
  sub_10004C4FC();
  sub_10004BD7C();
  (*(v3 + 104))(v1, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_10004BC9C();
  v4 = sub_1000020DC(&qword_10006D888, &qword_10006D890, &qword_100056058, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  sub_10002A12C(v4, v5, v6);
  v7 = sub_10004BC1C();

  v8 = v0[1];

  return v8(v7);
}

double sub_100032414@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;

  return result;
}

uint64_t sub_100032474@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = sub_10004C41C();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10004BDCC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001E64(&qword_10006C4B0, &unk_100051930);
  v7 = *(v6 - 8);
  v33 = v6;
  v34 = v7;
  __chkstk_darwin(v6);
  v9 = v32 - v8;
  v10 = sub_100001E64(&qword_10006D8C0, &unk_1000561D0);
  v11 = *(v10 - 8);
  v35 = v10;
  v36 = v11;
  __chkstk_darwin(v10);
  v13 = v32 - v12;
  v14 = sub_100001E64(&qword_10006D8C8, &qword_100056130);
  v15 = *(v14 - 8);
  v37 = v14;
  v38 = v15;
  __chkstk_darwin(v14);
  v17 = v32 - v16;
  v32[2] = "new tab or background.";
  sub_10004BDBC();
  v18 = sub_10004BDAC();
  v32[0] = v19;
  v32[1] = v18;
  (*(v3 + 8))(v5, v2);
  swift_getKeyPath();
  sub_10004C40C();
  v20 = sub_100001E64(&qword_10006C480, &unk_1000500D0);
  v23 = sub_10001901C(v20, v21, v22);
  sub_100015CA0(v23, v24, v25);
  sub_1000020DC(&qword_10006C490, &qword_10006C480, &unk_1000500D0, &protocol conformance descriptor for Label<A, B>);
  sub_10004C43C();
  sub_10004BFDC();
  v26 = sub_1000020DC(&qword_10006C4B8, &qword_10006C4B0, &unk_100051930, &protocol conformance descriptor for ControlPicker<A>);
  v27 = v33;
  sub_10004C05C();

  (*(v34 + 8))(v9, v27);
  v40 = v27;
  v41 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v35;
  sub_10004C08C();
  (*(v36 + 8))(v13, v29);
  v40 = v29;
  v41 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v30 = v37;
  sub_10004C02C();
  return (*(v38 + 8))(v17, v30);
}

uint64_t sub_1000329A4()
{
  v0 = sub_10004BDCC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004BDBC();
  v4 = sub_10004BDAC();
  v6 = v5;
  v7 = (*(v1 + 8))(v3, v0);
  v11[0] = v4;
  v11[1] = v6;
  sub_100002214(v7, v8, v9);
  return sub_10004C2EC();
}

uint64_t sub_100032ADC@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_10004B81C();
  sub_100002214(v3, v4, v5);
  result = sub_10004C1AC();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

uint64_t sub_100032B48()
{
  sub_100001FB0(&qword_10006D8C8, &qword_100056130);
  sub_100001FB0(&qword_10006D8C0, &unk_1000561D0);
  sub_100001FB0(&qword_10006C4B0, &unk_100051930);
  sub_1000020DC(&qword_10006C4B8, &qword_10006C4B0, &unk_100051930, &protocol conformance descriptor for ControlPicker<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100032C8C@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = sub_10004C41C();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10004BDCC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001E64(&qword_10006C4B0, &unk_100051930);
  v7 = *(v6 - 8);
  v33 = v6;
  v34 = v7;
  __chkstk_darwin(v6);
  v9 = v32 - v8;
  v10 = sub_100001E64(&qword_10006D8C0, &unk_1000561D0);
  v11 = *(v10 - 8);
  v35 = v10;
  v36 = v11;
  __chkstk_darwin(v10);
  v13 = v32 - v12;
  v14 = sub_100001E64(&qword_10006D8C8, &qword_100056130);
  v15 = *(v14 - 8);
  v37 = v14;
  v38 = v15;
  __chkstk_darwin(v14);
  v17 = v32 - v16;
  v32[2] = "SearchEngineControlPicker";
  sub_10004BDBC();
  v18 = sub_10004BDAC();
  v32[0] = v19;
  v32[1] = v18;
  (*(v3 + 8))(v5, v2);
  swift_getKeyPath();
  sub_10004C40C();
  v20 = sub_100001E64(&qword_10006C480, &unk_1000500D0);
  v23 = sub_10001901C(v20, v21, v22);
  sub_100017F08(v23, v24, v25);
  sub_1000020DC(&qword_10006C490, &qword_10006C480, &unk_1000500D0, &protocol conformance descriptor for Label<A, B>);
  sub_10004C43C();
  sub_10004BFDC();
  v26 = sub_1000020DC(&qword_10006C4B8, &qword_10006C4B0, &unk_100051930, &protocol conformance descriptor for ControlPicker<A>);
  v27 = v33;
  sub_10004C05C();

  (*(v34 + 8))(v9, v27);
  v40 = v27;
  v41 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v35;
  sub_10004C08C();
  (*(v36 + 8))(v13, v29);
  v40 = v29;
  v41 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v30 = v37;
  sub_10004C02C();
  return (*(v38 + 8))(v17, v30);
}

uint64_t sub_1000331B8()
{
  v0 = sub_10004BDCC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004BDBC();
  v4 = sub_10004BDAC();
  v6 = v5;
  v7 = (*(v1 + 8))(v3, v0);
  v11[0] = v4;
  v11[1] = v6;
  sub_100002214(v7, v8, v9);
  return sub_10004C2EC();
}

unint64_t sub_1000332F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D8F0;
  if (!qword_10006D8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D8F0);
  }

  return result;
}

unint64_t sub_10003334C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D8F8;
  if (!qword_10006D8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D8F8);
  }

  return result;
}

unint64_t sub_1000333A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D900;
  if (!qword_10006D900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D900);
  }

  return result;
}

uint64_t sub_1000333F8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v121 = a2;
  v3 = sub_100001E64(&qword_10006D050, &qword_1000560B0);
  __chkstk_darwin(v3 - 8);
  v123 = &v112[-v4];
  v5 = sub_100001E64(&qword_10006C6B8, &qword_100051FC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v112[-v6];
  v8 = sub_10004BC5C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v112[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_10004BD8C();
  __chkstk_darwin(v12 - 8);
  v13 = sub_10004C54C();
  __chkstk_darwin(v13 - 8);
  v14 = sub_10004BC7C();
  v118 = *(v14 - 8);
  v119 = v14;
  v15 = __chkstk_darwin(v14);
  v120 = &v112[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v117 = &v112[-v17];
  switch(a1)
  {
    case 1:
      sub_10004C4FC();
      sub_10004BD7C();
      v72 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v122 = v7;
      v73 = *(v9 + 104);
      LODWORD(v115) = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v116 = v8;
      v73(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
      v114 = "Use Contact Info in Autofill";
      sub_10004BC9C();
      sub_10004C4FC();
      sub_10004BD7C();
      v73(v11, v72, v8);
      v74 = v122;
      sub_10004BC9C();
      (*(v118 + 56))(v74, 0, 1, v119);
      v75 = v123;
      sub_10004BA6C();
      v76 = sub_10004BA7C();
      (*(*(v76 - 8) + 56))(v75, 0, 1, v76);
      sub_100001E64(&qword_10006D9F0, &qword_1000569F8);
      *(swift_allocObject() + 16) = xmmword_100051180;
      sub_10004C4FC();
      sub_10004BD7C();
      v73(v11, v115, v116);
      sub_10004BC9C();
      sub_10004BC4C();
      return sub_10004BA9C();
    case 2:
      sub_10004C4FC();
      sub_10004BD7C();
      v52 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v53 = *(v9 + 104);
      v116 = v8;
      (v53)(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
      v114 = "Use Contact Info in Autofill";
      v115 = v53;
      sub_10004BC9C();
      sub_10004C4FC();
      sub_10004BD7C();
      (v53)(v11, v52, v8);
      v122 = v7;
      sub_10004BC9C();
      (*(v118 + 56))(v7, 0, 1, v119);
      v54 = v123;
      sub_10004BA6C();
      v55 = sub_10004BA7C();
      (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
      sub_100001E64(&qword_10006D9F0, &qword_1000569F8);
      *(swift_allocObject() + 16) = xmmword_100051180;
      sub_10004C4FC();
      sub_10004BD7C();
      v56 = v52;
      v58 = v115;
      v57 = v116;
      (v115)(v11, v52, v116);
      sub_10004BC9C();
      goto LABEL_19;
    case 3:
      sub_10004C4FC();
      sub_10004BD7C();
      v64 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v65 = *(v9 + 104);
      v116 = v8;
      (v65)(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
      v114 = "Use Contact Info in Autofill";
      v115 = v65;
      sub_10004BC9C();
      sub_10004C4FC();
      sub_10004BD7C();
      (v65)(v11, v64, v8);
      v122 = v7;
      sub_10004BC9C();
      (*(v118 + 56))(v7, 0, 1, v119);
      v66 = v123;
      sub_10004BA6C();
      v67 = sub_10004BA7C();
      (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
      sub_100001E64(&qword_10006D9F0, &qword_1000569F8);
      *(swift_allocObject() + 16) = xmmword_100051180;
      sub_10004C4FC();
      sub_10004BD7C();
      v56 = v64;
      v58 = v115;
      v57 = v116;
      (v115)(v11, v64, v116);
      sub_10004BC9C();
      goto LABEL_19;
    case 4:
      sub_10004C4FC();
      sub_10004BD7C();
      v40 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v41 = *(v9 + 104);
      v116 = v8;
      (v41)(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
      v114 = "Use Contact Info in Autofill";
      v115 = v41;
      sub_10004BC9C();
      sub_10004C4FC();
      sub_10004BD7C();
      (v41)(v11, v40, v8);
      v122 = v7;
      sub_10004BC9C();
      (*(v118 + 56))(v7, 0, 1, v119);
      v42 = v123;
      sub_10004BA6C();
      v43 = sub_10004BA7C();
      (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
      sub_100001E64(&qword_10006D9F0, &qword_1000569F8);
      *(swift_allocObject() + 16) = xmmword_100051180;
      sub_10004C4FC();
      sub_10004BD7C();
      v22 = v40;
      v23 = v115;
      v24 = v116;
      (v115)(v11, v40, v116);
      sub_10004BC9C();
      goto LABEL_21;
    case 5:
      sub_10004C4FC();
      sub_10004BD7C();
      v81 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v82 = *(v9 + 104);
      v116 = v8;
      (v82)(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
      v114 = "Use Contact Info in Autofill";
      v115 = v82;
      sub_10004BC9C();
      sub_10004C4FC();
      sub_10004BD7C();
      (v82)(v11, v81, v8);
      v122 = v7;
      sub_10004BC9C();
      (*(v118 + 56))(v7, 0, 1, v119);
      v83 = v123;
      sub_10004BA6C();
      v84 = sub_10004BA7C();
      (*(*(v84 - 8) + 56))(v83, 0, 1, v84);
      sub_100001E64(&qword_10006D9F0, &qword_1000569F8);
      *(swift_allocObject() + 16) = xmmword_100051180;
      sub_10004C4FC();
      sub_10004BD7C();
      v22 = v81;
      v23 = v115;
      v24 = v116;
      (v115)(v11, v81, v116);
      sub_10004BC9C();
      goto LABEL_21;
    case 6:
    case 8:
      sub_10004C4FC();
      sub_10004BD7C();
      v97 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v122 = v7;
      v98 = *(v9 + 104);
      v116 = v8;
      v98(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
      v115 = "Use Contact Info in Autofill";
      sub_10004BC9C();
      sub_10004C4FC();
      sub_10004BD7C();
      v99 = v97;
      v98(v11, v97, v8);
      v100 = v122;
      sub_10004BC9C();
      (*(v118 + 56))(v100, 0, 1, v119);
      v101 = v123;
      sub_10004BA6C();
      v102 = sub_10004BA7C();
      (*(*(v102 - 8) + 56))(v101, 0, 1, v102);
      sub_100001E64(&qword_10006D9F0, &qword_1000569F8);
      *(swift_allocObject() + 16) = xmmword_100051180;
      sub_10004C4FC();
      sub_10004BD7C();
      v103 = v99;
      v104 = v99;
      v105 = v116;
      v98(v11, v104, v116);
      sub_10004BC9C();
      sub_10004C4FC();
      sub_10004BD7C();
      v98(v11, v103, v105);
      goto LABEL_23;
    case 7:
      sub_10004C4FC();
      sub_10004BD7C();
      v68 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v69 = *(v9 + 104);
      v116 = v8;
      (v69)(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
      v114 = "Use Contact Info in Autofill";
      v115 = v69;
      sub_10004BC9C();
      sub_10004C4FC();
      sub_10004BD7C();
      (v69)(v11, v68, v8);
      v122 = v7;
      sub_10004BC9C();
      (*(v118 + 56))(v7, 0, 1, v119);
      v70 = v123;
      sub_10004BA6C();
      v71 = sub_10004BA7C();
      (*(*(v71 - 8) + 56))(v70, 0, 1, v71);
      sub_100001E64(&qword_10006D9F0, &qword_1000569F8);
      *(swift_allocObject() + 16) = xmmword_100051180;
      sub_10004C4FC();
      sub_10004BD7C();
      v22 = v68;
      v23 = v115;
      v24 = v116;
      (v115)(v11, v68, v116);
      sub_10004BC9C();
      goto LABEL_21;
    case 9:
      sub_10004C4FC();
      sub_10004BD7C();
      v48 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v49 = *(v9 + 104);
      v116 = v8;
      (v49)(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
      v114 = "Use Contact Info in Autofill";
      v115 = v49;
      sub_10004BC9C();
      sub_10004C4FC();
      sub_10004BD7C();
      (v49)(v11, v48, v8);
      v122 = v7;
      sub_10004BC9C();
      (*(v118 + 56))(v7, 0, 1, v119);
      v50 = v123;
      sub_10004BA6C();
      v51 = sub_10004BA7C();
      (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
      sub_100001E64(&qword_10006D9F0, &qword_1000569F8);
      *(swift_allocObject() + 16) = xmmword_100051180;
      sub_10004C4FC();
      sub_10004BD7C();
      v22 = v48;
      v23 = v115;
      v24 = v116;
      (v115)(v11, v48, v116);
      sub_10004BC9C();
      goto LABEL_21;
    case 10:
      sub_10004C4FC();
      sub_10004BD7C();
      v93 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v94 = *(v9 + 104);
      v116 = v8;
      (v94)(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
      v114 = "Use Contact Info in Autofill";
      v115 = v94;
      sub_10004BC9C();
      sub_10004C4FC();
      sub_10004BD7C();
      (v94)(v11, v93, v8);
      v122 = v7;
      sub_10004BC9C();
      (*(v118 + 56))(v7, 0, 1, v119);
      v95 = v123;
      sub_10004BA6C();
      v96 = sub_10004BA7C();
      (*(*(v96 - 8) + 56))(v95, 0, 1, v96);
      sub_100001E64(&qword_10006D9F0, &qword_1000569F8);
      *(swift_allocObject() + 16) = xmmword_100051180;
      sub_10004C4FC();
      sub_10004BD7C();
      v22 = v93;
      v23 = v115;
      v24 = v116;
      (v115)(v11, v93, v116);
      sub_10004BC9C();
      goto LABEL_21;
    case 11:
      sub_10004C4FC();
      sub_10004BD7C();
      v33 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v34 = *(v9 + 104);
      v116 = v8;
      (v34)(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
      v114 = "Use Contact Info in Autofill";
      v115 = v34;
      sub_10004BC9C();
      sub_10004C4FC();
      sub_10004BD7C();
      (v34)(v11, v33, v8);
      v122 = v7;
      sub_10004BC9C();
      (*(v118 + 56))(v7, 0, 1, v119);
      v35 = v123;
      sub_10004BA6C();
      v36 = sub_10004BA7C();
      (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
      sub_100001E64(&qword_10006D9F0, &qword_1000569F8);
      *(swift_allocObject() + 16) = xmmword_100051180;
      sub_10004C4FC();
      sub_10004BD7C();
      v37 = v33;
      v38 = v115;
      v39 = v116;
      (v115)(v11, v33, v116);
      sub_10004BC9C();
      goto LABEL_7;
    case 12:
      sub_10004C4FC();
      sub_10004BD7C();
      v44 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v45 = *(v9 + 104);
      v116 = v8;
      (v45)(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
      v114 = "Use Contact Info in Autofill";
      v115 = v45;
      sub_10004BC9C();
      sub_10004C4FC();
      sub_10004BD7C();
      (v45)(v11, v44, v8);
      v122 = v7;
      sub_10004BC9C();
      (*(v118 + 56))(v7, 0, 1, v119);
      v46 = v123;
      sub_10004BA6C();
      v47 = sub_10004BA7C();
      (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
      sub_100001E64(&qword_10006D9F0, &qword_1000569F8);
      *(swift_allocObject() + 16) = xmmword_100051180;
      sub_10004C4FC();
      sub_10004BD7C();
      v37 = v44;
      v38 = v115;
      v39 = v116;
      (v115)(v11, v44, v116);
      sub_10004BC9C();
LABEL_7:
      sub_10004C4FC();
      sub_10004BD7C();
      (v38)(v11, v37, v39);
      goto LABEL_23;
    case 13:
      sub_10004C4FC();
      sub_10004BD7C();
      v85 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v122 = v7;
      v86 = *(v9 + 104);
      v87 = v118;
      v116 = v8;
      (v86)(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
      v114 = "Use Contact Info in Autofill";
      v115 = v86;
      sub_10004BC9C();
      sub_10004C4FC();
      sub_10004BD7C();
      v88 = v85;
      (v86)(v11, v85, v8);
      v89 = v122;
      sub_10004BC9C();
      (*(v87 + 56))(v89, 0, 1, v119);
      v90 = v123;
      sub_10004BA6C();
      v91 = sub_10004BA7C();
      (*(*(v91 - 8) + 56))(v90, 0, 1, v91);
      sub_100001E64(&qword_10006D9F0, &qword_1000569F8);
      *(swift_allocObject() + 16) = xmmword_100051180;
      sub_10004C4FC();
      sub_10004BD7C();
      v56 = v88;
      v92 = v88;
      v58 = v115;
      v57 = v116;
      (v115)(v11, v92, v116);
      sub_10004BC9C();
LABEL_19:
      sub_10004C4FC();
      sub_10004BD7C();
      (v58)(v11, v56, v57);
      goto LABEL_23;
    case 14:
      sub_10004C4FC();
      sub_10004BD7C();
      v113 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v25 = *(v9 + 104);
      v116 = v8;
      (v25)(v11);
      v114 = "Use Contact Info in Autofill";
      v115 = v25;
      sub_10004BC9C();
      sub_10004C4FC();
      sub_10004BD7C();
      v26 = v113;
      (v25)(v11, v113, v8);
      sub_10004BC9C();
      (*(v118 + 56))(v7, 0, 1, v119);
      v27 = v123;
      sub_10004BA6C();
      v28 = sub_10004BA7C();
      (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
      sub_100001E64(&qword_10006D9F0, &qword_1000569F8);
      v122 = v7;
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_100053280;
      sub_10004C4FC();
      sub_10004BD7C();
      v29 = v26;
      v30 = v26;
      v31 = v115;
      v32 = v116;
      (v115)(v11, v30, v116);
      sub_10004BC9C();
      sub_10004C4FC();
      sub_10004BD7C();
      (v31)(v11, v29, v32);
      sub_10004BC9C();
      goto LABEL_11;
    case 15:
      sub_10004C4FC();
      sub_10004BD7C();
      v59 = *(v9 + 104);
      v60 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      (v59)(v11);
      v114 = "Use Contact Info in Autofill";
      v115 = v59;
      sub_10004BC9C();
      sub_10004C4FC();
      sub_10004BD7C();
      (v59)(v11, v60, v8);
      sub_10004BC9C();
      (*(v118 + 56))(v7, 0, 1, v119);
      v61 = v123;
      sub_10004BA6C();
      v62 = sub_10004BA7C();
      (*(*(v62 - 8) + 56))(v61, 0, 1, v62);
      sub_100001E64(&qword_10006D9F0, &qword_1000569F8);
      v122 = v7;
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_100053280;
      sub_10004C4FC();
      sub_10004BD7C();
      v29 = v60;
      v32 = v8;
      v63 = v8;
      v31 = v115;
      (v115)(v11, v60, v63);
      sub_10004BC9C();
      sub_10004C4FC();
      sub_10004BD7C();
      (v31)(v11, v60, v32);
      sub_10004BC9C();
LABEL_11:
      sub_10004C4FC();
      sub_10004BD7C();
      (v31)(v11, v29, v32);
      sub_10004BC9C();
      break;
    case 16:
    case 17:
      sub_10004C4FC();
      v115 = "nd Website Data from Safari.";
      sub_10004BD7C();
      v77 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v78 = *(v9 + 104);
      v78(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
      sub_10004BC9C();
      sub_10004C4FC();
      sub_10004BD7C();
      v78(v11, v77, v8);
      sub_10004BC9C();
      (*(v118 + 56))(v7, 0, 1, v119);
      v79 = v123;
      sub_10004BA6C();
      v80 = sub_10004BA7C();
      (*(*(v80 - 8) + 56))(v79, 0, 1, v80);
      sub_10004C4FC();
      sub_10004BD7C();
      v78(v11, v77, v8);
      sub_10004BC9C();
      break;
    case 18:
    case 19:
      sub_10004C4FC();
      v122 = v7;
      sub_10004BD7C();
      v107 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v108 = *(v9 + 104);
      v108(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
      v115 = "Use Contact Info in Autofill";
      sub_10004BC9C();
      sub_10004C4FC();
      sub_10004BD7C();
      v108(v11, v107, v8);
      v109 = v122;
      sub_10004BC9C();
      (*(v118 + 56))(v109, 0, 1, v119);
      v110 = v123;
      sub_10004BA6C();
      v111 = sub_10004BA7C();
      (*(*(v111 - 8) + 56))(v110, 0, 1, v111);
      sub_10004C4FC();
      sub_10004BD7C();
      v108(v11, v107, v8);
      sub_10004BC9C();
      break;
    default:
      sub_10004C4FC();
      sub_10004BD7C();
      v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v19 = *(v9 + 104);
      v116 = v8;
      (v19)(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
      v114 = "Use Contact Info in Autofill";
      v115 = v19;
      sub_10004BC9C();
      sub_10004C4FC();
      sub_10004BD7C();
      (v19)(v11, v18, v8);
      v122 = v7;
      sub_10004BC9C();
      (*(v118 + 56))(v7, 0, 1, v119);
      v20 = v123;
      sub_10004BA6C();
      v21 = sub_10004BA7C();
      (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
      sub_100001E64(&qword_10006D9F0, &qword_1000569F8);
      *(swift_allocObject() + 16) = xmmword_100051180;
      sub_10004C4FC();
      sub_10004BD7C();
      v22 = v18;
      v23 = v115;
      v24 = v116;
      (v115)(v11, v18, v116);
      sub_10004BC9C();
LABEL_21:
      sub_10004C4FC();
      sub_10004BD7C();
      (v23)(v11, v22, v24);
LABEL_23:
      sub_10004BC9C();
      break;
  }

  return sub_10004BA9C();
}

uint64_t sub_100036848()
{
  v0 = sub_100001E64(&qword_10006C6B8, &qword_100051FC0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_10004BC7C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_10004BBDC();
  sub_1000090DC(v5, qword_10006E578);
  sub_1000090A4(v5, qword_10006E578);
  sub_10004BC4C();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_10004BBCC();
}

uint64_t sub_1000369C0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100009550;

  return sub_100038DFC(a1);
}

uint64_t sub_100036A68(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000094F4;

  return sub_100038B7C();
}

unint64_t sub_100036B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D908;
  if (!qword_10006D908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D908);
  }

  return result;
}

uint64_t sub_100036B64(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005128;

  return sub_100038A5C();
}

unint64_t sub_100036C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D910;
  if (!qword_10006D910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D910);
  }

  return result;
}

unint64_t sub_100036C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D918;
  if (!qword_10006D918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D918);
  }

  return result;
}

unint64_t sub_100036CBC()
{
  result = qword_10006D920;
  if (!qword_10006D920)
  {
    v1 = sub_100001FB0(&qword_10006D928, qword_1000562C8);
    sub_100036C64(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D920);
  }

  return result;
}

uint64_t sub_100036D40(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v8 = sub_100036B10(v5, v6, v7);
  *v5 = v2;
  v5[1] = sub_100005810;

  return EntityQuery.results()(a1, a2, v8);
}

unint64_t sub_100036DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D930;
  if (!qword_10006D930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D930);
  }

  return result;
}

uint64_t sub_100036E4C(uint64_t a1)
{
  v1 = sub_100001E64(&qword_10006D9F8, &qword_100056A00);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - v3;
  v5 = sub_100001E64(&qword_10006DA00, &qword_100056A08);
  v6 = __chkstk_darwin(v5);
  sub_1000333A4(v6, v7, v8);
  sub_10004BB8C();
  v11._object = 0x800000010004F4F0;
  v11._countAndFlagsBits = 0xD000000000000045;
  sub_10004BB7C(v11);
  (*(v2 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v1);
  sub_10004BB6C();
  (*(v2 + 8))(v4, v1);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_10004BB7C(v12);
  return sub_10004BB9C();
}

uint64_t sub_100037010()
{
  v0 = qword_10006D8D0;

  return v0;
}

unint64_t sub_100037048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D938;
  if (!qword_10006D938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D938);
  }

  return result;
}

unint64_t sub_1000370A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D940;
  if (!qword_10006D940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D940);
  }

  return result;
}

unint64_t sub_1000370F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D948;
  if (!qword_10006D948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D948);
  }

  return result;
}

unint64_t sub_100037150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D950;
  if (!qword_10006D950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D950);
  }

  return result;
}

uint64_t sub_1000371A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000395FC(a1, a2, a3);
  v4 = sub_10004BB0C();
  v5 = *(v3 + 8);

  return v5(v4);
}

unint64_t sub_100037214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D958;
  if (!qword_10006D958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D958);
  }

  return result;
}

unint64_t sub_10003726C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D960;
  if (!qword_10006D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D960);
  }

  return result;
}

unint64_t sub_1000372C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D968;
  if (!qword_10006D968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D968);
  }

  return result;
}

unint64_t sub_10003731C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D970;
  if (!qword_10006D970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D970);
  }

  return result;
}

uint64_t sub_1000373F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000333A4(a1, a2, a3);

  return static AppEntity.defaultResolverSpecification.getter(a1, v4);
}

unint64_t sub_100037448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D988;
  if (!qword_10006D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D988);
  }

  return result;
}

uint64_t sub_1000374A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000372C4(a1, a2, a3);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v4);
}

unint64_t sub_1000374F0(char a1)
{
  result = 0x44414F4C4E574F44;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000024;
      break;
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      return result;
    case 5:
      result = 0x5323495241464153;
      break;
    case 6:
      result = 0x4C49465F4F545541;
      break;
    case 7:
      result = 0x464F52505F57454ELL;
      break;
    case 8:
      result = 0x455458455F424557;
      break;
    case 9:
      result = 0x41545F45534F4C43;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 13:
    case 14:
      result = 0xD000000000000020;
      break;
    case 15:
      result = 0xD000000000000021;
      break;
    case 16:
    case 17:
      result = 0xD000000000000014;
      break;
    case 18:
      result = 0xD000000000000016;
      break;
    case 19:
      result = 0x495241464153;
      break;
    default:
      result = 0xD00000000000001FLL;
      break;
  }

  return result;
}

uint64_t sub_1000377A0(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1000374F0(*a1);
  v5 = v4;
  if (v3 == sub_1000374F0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10004C72C();
  }

  return v8 & 1;
}

unint64_t sub_10003782C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D990;
  if (!qword_10006D990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D990);
  }

  return result;
}

Swift::Int sub_100037880()
{
  v1 = *v0;
  sub_10004C74C();
  sub_1000374F0(v1);
  sub_10004C59C();

  return sub_10004C76C();
}

uint64_t sub_1000378E4(uint64_t a1)
{
  sub_1000374F0(*v1);
  sub_10004C59C();
}

Swift::Int sub_100037938(uint64_t a1)
{
  v2 = *v1;
  sub_10004C74C();
  sub_1000374F0(v2);
  sub_10004C59C();

  return sub_10004C76C();
}

unint64_t sub_100037998@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100039080(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1000379C8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000374F0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100037A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_100039080(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_100037A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D9A8;
  if (!qword_10006D9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D9A8);
  }

  return result;
}

uint64_t sub_100037AF4()
{
  v0 = sub_10004BC5C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10004BD8C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10004C54C();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10004BC7C();
  sub_1000090DC(v6, qword_10006E590);
  sub_1000090A4(v6, qword_10006E590);
  sub_10004C4FC();
  sub_10004BD7C();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10004BC9C();
}

void *sub_100037D1C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10004B85C();
  *a1 = v3;
  return result;
}

void (*sub_100037D90(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_10004B84C();
  return sub_100006F78;
}

unint64_t sub_100037E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D9B0;
  if (!qword_10006D9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D9B0);
  }

  return result;
}

unint64_t sub_100037E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D9B8;
  if (!qword_10006D9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D9B8);
  }

  return result;
}

uint64_t sub_100037EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100039554(a1, a2, a3);
  v8 = sub_1000395FC(v5, v6, v7);

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v5, a2, v8);
}

uint64_t sub_100037F18()
{
  v0 = qword_10006D8E0;

  return v0;
}

unint64_t sub_100037F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D9C0;
  if (!qword_10006D9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D9C0);
  }

  return result;
}

unint64_t sub_100037FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D9C8;
  if (!qword_10006D9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D9C8);
  }

  return result;
}

uint64_t sub_10003808C@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
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
  v9 = sub_1000090A4(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_100038148(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v8 = sub_100039554(v5, v6, v7);
  v11 = sub_1000395A8(v8, v9, v10);
  v14 = sub_1000395FC(v11, v12, v13);
  *v5 = v2;
  v5[1] = sub_10003821C;

  return _URLRepresentableIntent<>.perform()(a1, a2, v8, v11, v14);
}

uint64_t sub_10003821C()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_100038324@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000390D4();
  *a1 = result;
  return result;
}

uint64_t sub_10003834C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100037E04(a1, a2, a3);

  return static AppIntent.persistentIdentifier.getter(a1, v4);
}

uint64_t sub_1000383AC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100038440(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *sub_100038510(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100038590(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100038530(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100038768(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100038550(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100038874(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100038570(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100038968(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100038590(void *result, int64_t a2, char a3, void *a4)
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

  sub_100001E64(&qword_10006C950, &qword_100051360);
  v10 = *(type metadata accessor for BookmarkItem(0) - 8);
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
  v15 = *(type metadata accessor for BookmarkItem(0) - 8);
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

char *sub_100038768(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001E64(&qword_10006DA18, &qword_100056A38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100038874(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001E64(&qword_10006DA08, &qword_100056A18);
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

char *sub_100038968(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001E64(&qword_10006DA10, &qword_100056A28);
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

uint64_t sub_100038A78()
{
  sub_100038550(0, 20, 0);
  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v3 = _swiftEmptyArrayStorage[2];
  do
  {
    v4 = *(&off_100069F30 + v1 + 32);
    v8 = v2;
    v5 = v2[3];
    if (v3 >= v5 >> 1)
    {
      sub_100038550((v5 > 1), v3 + 1, 1);
      v2 = v8;
    }

    ++v1;
    v2[2] = v3 + 1;
    *(v2 + v3++ + 32) = v4;
  }

  while (v1 != 20);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100038B98()
{
  for (i = 0; i != 20; ++i)
  {
    v4 = *(&off_100069F30 + i + 32);
    if ((v4 - 4) >= 0x10)
    {
      if (*(&off_100069F30 + i + 32) > 1u)
      {
        if (v4 != 2)
        {
LABEL_16:
          if (_SFDeviceIsPad())
          {
            continue;
          }

          goto LABEL_7;
        }

        v5 = [objc_opt_self() safari_browserSharedDefaults];
        v6 = sub_10004C55C();
        v7 = [v5 BOOLForKey:v6];

        if (v7)
        {
          continue;
        }
      }

      else
      {
        if (!*(&off_100069F30 + i + 32))
        {
          goto LABEL_16;
        }

        if ((_SFDeviceIsPad() & 1) == 0)
        {
          continue;
        }
      }
    }

LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100038570(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v3 = _swiftEmptyArrayStorage[2];
    v2 = _swiftEmptyArrayStorage[3];
    if (v3 >= v2 >> 1)
    {
      sub_100038570((v2 > 1), v3 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v3 + 1;
    *(&_swiftEmptyArrayStorage[4] + v3) = v4;
  }

  v8 = _swiftEmptyArrayStorage[2];
  if (v8)
  {
    sub_100038550(0, v8, 0);
    v9 = _swiftEmptyArrayStorage[2];
    v10 = 32;
    do
    {
      v11 = *(_swiftEmptyArrayStorage + v10);
      v12 = _swiftEmptyArrayStorage[3];
      if (v9 >= v12 >> 1)
      {
        sub_100038550((v12 > 1), v9 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v9 + 1;
      *(&_swiftEmptyArrayStorage[4] + v9) = v11;
      ++v10;
      ++v9;
      --v8;
    }

    while (v8);
  }

  v13 = *(v0 + 8);

  return v13(_swiftEmptyArrayStorage);
}

uint64_t sub_100038E1C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v7 = *v3++;
      v6 = v7;
      if ((v7 - 4) < 0x10)
      {
LABEL_8:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100038570(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v5 = _swiftEmptyArrayStorage[2];
        v4 = _swiftEmptyArrayStorage[3];
        if (v5 >= v4 >> 1)
        {
          sub_100038570((v4 > 1), v5 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v5 + 1;
        *(&_swiftEmptyArrayStorage[4] + v5) = v6;
        goto LABEL_6;
      }

      if (v6 > 1)
      {
        if (v6 == 2)
        {
          v8 = [objc_opt_self() safari_browserSharedDefaults];
          v9 = sub_10004C55C();
          v10 = [v8 BOOLForKey:v9];

          if ((v10 & 1) == 0)
          {
            goto LABEL_8;
          }

          goto LABEL_6;
        }
      }

      else if (v6)
      {
        if (_SFDeviceIsPad())
        {
          goto LABEL_8;
        }

        goto LABEL_6;
      }

      if ((_SFDeviceIsPad() & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_6:
      --v2;
    }

    while (v2);
  }

  v11 = _swiftEmptyArrayStorage[2];
  if (v11)
  {
    sub_100038550(0, v11, 0);
    v12 = _swiftEmptyArrayStorage[2];
    v13 = 32;
    do
    {
      v14 = *(_swiftEmptyArrayStorage + v13);
      v15 = _swiftEmptyArrayStorage[3];
      if (v12 >= v15 >> 1)
      {
        sub_100038550((v15 > 1), v12 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v12 + 1;
      *(&_swiftEmptyArrayStorage[4] + v12) = v14;
      ++v13;
      ++v12;
      --v11;
    }

    while (v11);
  }

  v16 = *(v0 + 8);

  return v16(_swiftEmptyArrayStorage);
}

unint64_t sub_100039080(uint64_t a1, uint64_t a2)
{
  v2 = sub_10004C73C();

  if (v2 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000390D4()
{
  v0 = sub_10004BAFC();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100001E64(&qword_10006C6B0, &unk_100050F30);
  v3 = __chkstk_darwin(v2 - 8);
  v25 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v24 = v23 - v5;
  v6 = sub_100001E64(&qword_10006C6B8, &qword_100051FC0);
  __chkstk_darwin(v6 - 8);
  v8 = v23 - v7;
  v9 = sub_10004BC5C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004BD8C();
  __chkstk_darwin(v13 - 8);
  v14 = sub_10004C54C();
  __chkstk_darwin(v14 - 8);
  v15 = sub_10004BC7C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v23[1] = sub_100001E64(&qword_10006D9D0, &unk_1000569E8);
  sub_10004C4FC();
  sub_10004BD7C();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.main(_:), v9);
  sub_10004BC9C();
  (*(v16 + 56))(v8, 1, 1, v15);
  v29[0] = 20;
  v17 = sub_10004B7DC();
  v18 = *(*(v17 - 8) + 56);
  v18(v24, 1, 1, v17);
  v18(v25, 1, 1, v17);
  v19 = (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  sub_1000333A4(v19, v20, v21);
  return sub_10004B88C();
}

unint64_t sub_100039554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D9D8;
  if (!qword_10006D9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D9D8);
  }

  return result;
}

unint64_t sub_1000395A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D9E0;
  if (!qword_10006D9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D9E0);
  }

  return result;
}

unint64_t sub_1000395FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006D9E8;
  if (!qword_10006D9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D9E8);
  }

  return result;
}

uint64_t sub_100039674(uint64_t a1)
{
  v2 = sub_10004B8BC();
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v29 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100001E64(&qword_10006DB78, &qword_100056E00);
  v24[0] = v4;
  v32 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v24 - v5;
  v7 = sub_100001E64(&qword_10006DB80, &qword_100056E08);
  v8 = __chkstk_darwin(v7);
  sub_10002D870(v8, v9, v10);
  sub_10004B97C();
  v33._countAndFlagsBits = 0xD000000000000017;
  v33._object = 0x800000010004FA00;
  sub_10004B96C(v33);
  KeyPath = swift_getKeyPath();
  v24[1] = sub_10002E1D0(KeyPath, v12, v13);
  v26 = a1;
  sub_10004B8AC();

  sub_10004B95C();

  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  sub_10004B96C(v34);
  sub_10004B98C();
  v28 = sub_10004B8DC();
  v14 = *(v32 + 8);
  v32 += 8;
  v14(v6, v4);
  v25 = v14;
  sub_10004B97C();
  v35._countAndFlagsBits = 0xD00000000000001DLL;
  v35._object = 0x800000010004FA20;
  sub_10004B96C(v35);
  swift_getKeyPath();
  sub_10004B8AC();

  sub_10004B95C();

  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  sub_10004B96C(v36);
  sub_10004B98C();
  v27 = sub_10004B8DC();
  v15 = v24[0];
  v14(v6, v24[0]);
  sub_10004B97C();
  v37._countAndFlagsBits = 0x61542065736F6C43;
  v37._object = 0xEE00206E69207362;
  sub_10004B96C(v37);
  v17 = v29;
  v16 = v30;
  v18 = v31;
  (*(v30 + 104))(v29, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v31);
  sub_10004B94C();
  (*(v16 + 8))(v17, v18);
  v38._object = 0x800000010004FA40;
  v38._countAndFlagsBits = 0xD000000000000015;
  sub_10004B96C(v38);
  swift_getKeyPath();
  sub_10004B8AC();

  sub_10004B95C();

  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  sub_10004B96C(v39);
  sub_10004B98C();
  v19 = sub_10004B8DC();
  v25(v6, v15);
  sub_100001E64(&qword_10006DB88, &unk_100056E10);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100051170;
  v21 = v27;
  *(v20 + 32) = v28;
  *(v20 + 40) = v21;
  *(v20 + 48) = v19;
  v22 = sub_10004B8CC();

  return v22;
}

uint64_t sub_100039BE0()
{
  v0 = sub_10004B8FC();
  v1 = sub_10004B8FC();
  v2 = sub_10004B8FC();
  v3 = sub_10004B8FC();
  sub_100001E64(&qword_10006DA40, &qword_100056AF8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100054C90;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = sub_10004B8EC();

  return v5;
}

uint64_t sub_100039CCC(uint64_t a1)
{
  v2 = sub_10004B8BC();
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v29 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100001E64(&qword_10006DB60, &qword_100056DC0);
  v34 = *(v32 - 8);
  __chkstk_darwin(v32);
  v5 = v24 - v4;
  v6 = sub_100001E64(&qword_10006DB68, &qword_100056DC8);
  v7 = __chkstk_darwin(v6);
  sub_1000220D4(v7, v8, v9);
  sub_10004B97C();
  v35._countAndFlagsBits = 0x206E727554;
  v35._object = 0xE500000000000000;
  sub_10004B96C(v35);
  KeyPath = swift_getKeyPath();
  v33 = sub_10003F0A0(KeyPath, v11, v12);
  v24[1] = a1;
  sub_10004B8AC();

  sub_10004B95C();

  v36._object = 0x800000010004F960;
  v36._countAndFlagsBits = 0xD00000000000001BLL;
  sub_10004B96C(v36);
  sub_10004B98C();
  v28 = sub_10004B8DC();
  v25 = *(v34 + 8);
  v34 += 8;
  v13 = v32;
  v25(v5, v32);
  sub_10004B97C();
  v37._countAndFlagsBits = 0xD000000000000021;
  v37._object = 0x800000010004F980;
  sub_10004B96C(v37);
  swift_getKeyPath();
  sub_10004B8AC();

  sub_10004B95C();

  v38._countAndFlagsBits = 46;
  v38._object = 0xE100000000000000;
  sub_10004B96C(v38);
  sub_10004B98C();
  v27 = sub_10004B8DC();
  v14 = v25;
  v25(v5, v13);
  sub_10004B97C();
  v39._countAndFlagsBits = 0xD000000000000024;
  v39._object = 0x800000010004F9B0;
  sub_10004B96C(v39);
  swift_getKeyPath();
  sub_10004B8AC();

  sub_10004B95C();

  v40._countAndFlagsBits = 46;
  v40._object = 0xE100000000000000;
  sub_10004B96C(v40);
  sub_10004B98C();
  v26 = sub_10004B8DC();
  v15 = v32;
  v14(v5, v32);
  sub_10004B97C();
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  sub_10004B96C(v41);
  swift_getKeyPath();
  sub_10004B8AC();

  sub_10004B95C();

  v42._countAndFlagsBits = 0xD00000000000001ELL;
  v42._object = 0x800000010004F9E0;
  sub_10004B96C(v42);
  v16 = v29;
  v17 = v30;
  v18 = v31;
  (*(v30 + 104))(v29, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v31);
  sub_10004B94C();
  (*(v17 + 8))(v16, v18);
  v43._countAndFlagsBits = 46;
  v43._object = 0xE100000000000000;
  sub_10004B96C(v43);
  sub_10004B98C();
  v19 = sub_10004B8DC();
  v14(v5, v15);
  sub_100001E64(&qword_10006DB70, &qword_100056DD0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100054C90;
  v21 = v27;
  *(v20 + 32) = v28;
  *(v20 + 40) = v21;
  *(v20 + 48) = v26;
  *(v20 + 56) = v19;
  v22 = sub_10004B8CC();

  return v22;
}

uint64_t sub_10003A308(uint64_t a1)
{
  v2 = sub_10004B8BC();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v30 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_100001E64(&qword_10006DB48, &qword_100056D80);
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v24 - v4;
  v6 = sub_100001E64(&qword_10006DB50, &qword_100056D88);
  v7 = __chkstk_darwin(v6);
  sub_100024A20(v7, v8, v9);
  sub_10004B97C();
  v36._countAndFlagsBits = 0x206E727554;
  v36._object = 0xE500000000000000;
  sub_10004B96C(v36);
  KeyPath = swift_getKeyPath();
  v34 = sub_10003F0A0(KeyPath, v11, v12);
  v26 = a1;
  sub_10004B8AC();

  sub_10004B95C();

  v37._object = 0x800000010004F8E0;
  v37._countAndFlagsBits = 0xD000000000000014;
  sub_10004B96C(v37);
  sub_10004B98C();
  v29 = sub_10004B8DC();
  v25 = *(v35 + 8);
  v35 += 8;
  v13 = v33;
  v25(v5, v33);
  sub_10004B97C();
  v38._countAndFlagsBits = 0xD00000000000001ALL;
  v38._object = 0x800000010004F900;
  sub_10004B96C(v38);
  swift_getKeyPath();
  sub_10004B8AC();

  sub_10004B95C();

  v39._countAndFlagsBits = 46;
  v39._object = 0xE100000000000000;
  sub_10004B96C(v39);
  sub_10004B98C();
  v28 = sub_10004B8DC();
  v14 = v25;
  v25(v5, v13);
  sub_10004B97C();
  v40._countAndFlagsBits = 0xD00000000000001DLL;
  v40._object = 0x800000010004F920;
  sub_10004B96C(v40);
  swift_getKeyPath();
  sub_10004B8AC();

  sub_10004B95C();

  v41._countAndFlagsBits = 46;
  v41._object = 0xE100000000000000;
  sub_10004B96C(v41);
  sub_10004B98C();
  v27 = sub_10004B8DC();
  v15 = v33;
  v14(v5, v33);
  sub_10004B97C();
  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  sub_10004B96C(v42);
  swift_getKeyPath();
  sub_10004B8AC();

  sub_10004B95C();

  v43._countAndFlagsBits = 0xD000000000000017;
  v43._object = 0x800000010004F940;
  sub_10004B96C(v43);
  v16 = v30;
  v17 = v31;
  v18 = v32;
  (*(v31 + 104))(v30, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v32);
  sub_10004B94C();
  (*(v17 + 8))(v16, v18);
  v44._countAndFlagsBits = 46;
  v44._object = 0xE100000000000000;
  sub_10004B96C(v44);
  sub_10004B98C();
  v19 = sub_10004B8DC();
  v14(v5, v15);
  sub_100001E64(&qword_10006DB58, &qword_100056D90);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100054C90;
  v21 = v28;
  *(v20 + 32) = v29;
  *(v20 + 40) = v21;
  *(v20 + 48) = v27;
  *(v20 + 56) = v19;
  v22 = sub_10004B8CC();

  return v22;
}

uint64_t sub_10003A948()
{
  v0 = sub_10004B8FC();
  v1 = sub_10004B8FC();
  v2 = sub_10004B8FC();
  v3 = sub_10004B8FC();
  sub_100001E64(&qword_10006DA40, &qword_100056AF8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100054C90;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = sub_10004B8EC();

  return v5;
}

uint64_t sub_10003AA18(uint64_t a1)
{
  v26 = sub_100001E64(&qword_10006DB30, &qword_100056D40);
  v28 = *(v26 - 8);
  __chkstk_darwin(v26);
  v3 = &v21 - v2;
  v4 = sub_100001E64(&qword_10006DB38, &qword_100056D48);
  v5 = __chkstk_darwin(v4);
  sub_10000388C(v5, v6, v7);
  sub_10004B97C();
  v29._countAndFlagsBits = 0x206E727554;
  v29._object = 0xE500000000000000;
  sub_10004B96C(v29);
  KeyPath = swift_getKeyPath();
  v21 = sub_10003F0A0(KeyPath, v9, v10);
  v27 = a1;
  sub_10004B8AC();

  sub_10004B95C();

  v30._countAndFlagsBits = 0xD000000000000021;
  v30._object = 0x800000010004F830;
  sub_10004B96C(v30);
  sub_10004B98C();
  v11 = sub_10004B8DC();
  v12 = *(v28 + 8);
  v24 = v11;
  v25 = v12;
  v28 += 8;
  v13 = v26;
  v12(v3, v26);
  sub_10004B97C();
  v31._countAndFlagsBits = 0xD000000000000027;
  v31._object = 0x800000010004F860;
  sub_10004B96C(v31);
  swift_getKeyPath();
  sub_10004B8AC();

  sub_10004B95C();

  v32._countAndFlagsBits = 46;
  v32._object = 0xE100000000000000;
  sub_10004B96C(v32);
  sub_10004B98C();
  v23 = sub_10004B8DC();
  v14 = v25;
  v25(v3, v13);
  sub_10004B97C();
  v33._countAndFlagsBits = 0xD000000000000024;
  v33._object = 0x800000010004F890;
  sub_10004B96C(v33);
  swift_getKeyPath();
  sub_10004B8AC();

  sub_10004B95C();

  v34._countAndFlagsBits = 46;
  v34._object = 0xE100000000000000;
  sub_10004B96C(v34);
  sub_10004B98C();
  v22 = sub_10004B8DC();
  v15 = v26;
  v14(v3, v26);
  sub_10004B97C();
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  sub_10004B96C(v35);
  swift_getKeyPath();
  sub_10004B8AC();

  sub_10004B95C();

  v36._object = 0x800000010004F8C0;
  v36._countAndFlagsBits = 0xD00000000000001BLL;
  sub_10004B96C(v36);
  sub_10004B98C();
  v16 = sub_10004B8DC();
  v25(v3, v15);
  sub_100001E64(&qword_10006DB40, &qword_100056D50);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100054C90;
  v18 = v23;
  *(v17 + 32) = v24;
  *(v17 + 40) = v18;
  *(v17 + 48) = v22;
  *(v17 + 56) = v16;
  v19 = sub_10004B8CC();

  return v19;
}

uint64_t sub_10003AF70(uint64_t a1)
{
  v30 = a1;
  v1 = sub_100001E64(&qword_10006DB18, &qword_100056D00);
  v2 = *(v1 - 8);
  v28 = v1;
  v29 = v2;
  __chkstk_darwin(v1);
  v4 = v22 - v3;
  v5 = sub_100001E64(&qword_10006DB20, &qword_100056D08);
  v6 = __chkstk_darwin(v5);
  sub_100005F10(v6, v7, v8);
  sub_10004B97C();
  v31._countAndFlagsBits = 0x206E727554;
  v31._object = 0xE500000000000000;
  sub_10004B96C(v31);
  KeyPath = swift_getKeyPath();
  v22[1] = sub_10003F0A0(KeyPath, v10, v11);
  sub_10004B8AC();

  sub_10004B95C();

  v26 = "Change 'Block Pop-Ups' to ";
  v32._object = 0x800000010004F7A0;
  v32._countAndFlagsBits = 0xD000000000000021;
  sub_10004B96C(v32);
  sub_10004B98C();
  v27 = sub_10004B8DC();
  v12 = v28;
  v13 = v29 + 8;
  v23 = *(v29 + 8);
  v23(v4, v28);
  v29 = v13;
  sub_10004B97C();
  v33._countAndFlagsBits = 0xD000000000000027;
  v33._object = 0x800000010004F7D0;
  sub_10004B96C(v33);
  swift_getKeyPath();
  sub_10004B8AC();

  sub_10004B95C();

  v34._countAndFlagsBits = 46;
  v34._object = 0xE100000000000000;
  sub_10004B96C(v34);
  sub_10004B98C();
  v25 = sub_10004B8DC();
  v14 = v23;
  v23(v4, v12);
  sub_10004B97C();
  v35._countAndFlagsBits = 0xD00000000000002ALL;
  v35._object = 0x800000010004F800;
  sub_10004B96C(v35);
  swift_getKeyPath();
  sub_10004B8AC();

  sub_10004B95C();

  v36._countAndFlagsBits = 46;
  v36._object = 0xE100000000000000;
  sub_10004B96C(v36);
  sub_10004B98C();
  v24 = sub_10004B8DC();
  v15 = v28;
  v14(v4, v28);
  sub_10004B97C();
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  sub_10004B96C(v37);
  swift_getKeyPath();
  sub_10004B8AC();

  sub_10004B95C();

  v38._object = (v26 | 0x8000000000000000);
  v38._countAndFlagsBits = 0xD000000000000021;
  sub_10004B96C(v38);
  sub_10004B98C();
  v16 = sub_10004B8DC();
  v14(v4, v15);
  sub_100001E64(&qword_10006DB28, &qword_100056D10);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100054C90;
  v18 = v24;
  v19 = v25;
  *(v17 + 32) = v27;
  *(v17 + 40) = v19;
  *(v17 + 48) = v18;
  *(v17 + 56) = v16;
  v20 = sub_10004B8CC();

  return v20;
}

uint64_t sub_10003B4B0(uint64_t a1)
{
  v41 = a1;
  v1 = sub_100001E64(&qword_10006DB00, &qword_100056CC0);
  v2 = *(v1 - 8);
  v42 = v1;
  v43 = v2;
  __chkstk_darwin(v1);
  v4 = &v28 - v3;
  v5 = sub_10004B8BC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100001E64(&qword_10006DB08, &qword_100056CC8);
  v10 = __chkstk_darwin(v9);
  sub_100011E34(v10, v11, v12);
  sub_10004B97C();
  v44._countAndFlagsBits = 0x206E727554;
  v44._object = 0xE500000000000000;
  sub_10004B96C(v44);
  KeyPath = swift_getKeyPath();
  v40 = sub_10003F0A0(KeyPath, v14, v15);
  sub_10004B8AC();

  sub_10004B95C();

  v38 = " landscape tab bar ";
  v45._object = 0x800000010004F740;
  v45._countAndFlagsBits = 0xD000000000000015;
  sub_10004B96C(v45);
  v37 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v16 = *(v6 + 104);
  v35 = v6 + 104;
  v36 = v16;
  v31 = v8;
  v32 = v5;
  v16(v8);
  sub_10004B94C();
  v17 = *(v6 + 8);
  v33 = v6 + 8;
  v34 = v17;
  v17(v8, v5);
  v46._countAndFlagsBits = 46;
  v46._object = 0xE100000000000000;
  sub_10004B96C(v46);
  sub_10004B98C();
  v39 = sub_10004B8DC();
  v18 = v42;
  v28 = *(v43 + 8);
  v43 += 8;
  v28(v4, v42);
  sub_10004B97C();
  v47._countAndFlagsBits = 0xD000000000000017;
  v47._object = 0x800000010004F760;
  sub_10004B96C(v47);
  swift_getKeyPath();
  sub_10004B8AC();

  sub_10004B95C();

  v48._countAndFlagsBits = 46;
  v48._object = 0xE100000000000000;
  sub_10004B96C(v48);
  sub_10004B98C();
  v30 = sub_10004B8DC();
  v19 = v28;
  v28(v4, v18);
  sub_10004B97C();
  v49._countAndFlagsBits = 0xD00000000000001ALL;
  v49._object = 0x800000010004F780;
  sub_10004B96C(v49);
  swift_getKeyPath();
  sub_10004B8AC();

  sub_10004B95C();

  v50._countAndFlagsBits = 46;
  v50._object = 0xE100000000000000;
  sub_10004B96C(v50);
  sub_10004B98C();
  v29 = sub_10004B8DC();
  v19(v4, v42);
  sub_10004B97C();
  v51._countAndFlagsBits = 0;
  v51._object = 0xE000000000000000;
  sub_10004B96C(v51);
  swift_getKeyPath();
  sub_10004B8AC();

  sub_10004B95C();

  v52._object = (v38 | 0x8000000000000000);
  v52._countAndFlagsBits = 0xD000000000000015;
  sub_10004B96C(v52);
  v21 = v31;
  v20 = v32;
  v36(v31, v37, v32);
  sub_10004B94C();
  v34(v21, v20);
  v53._countAndFlagsBits = 46;
  v53._object = 0xE100000000000000;
  sub_10004B96C(v53);
  sub_10004B98C();
  v22 = sub_10004B8DC();
  v19(v4, v42);
  sub_100001E64(&qword_10006DB10, &qword_100056CD0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100054C90;
  v24 = v29;
  v25 = v30;
  *(v23 + 32) = v39;
  *(v23 + 40) = v25;
  *(v23 + 48) = v24;
  *(v23 + 56) = v22;
  v26 = sub_10004B8CC();

  return v26;
}

uint64_t sub_10003BB18(uint64_t a1)
{
  v28 = a1;
  v38 = sub_100001E64(&qword_10006DAE8, &qword_100056C80);
  v32 = *(v38 - 8);
  __chkstk_darwin(v38);
  v2 = v26 - v1;
  v37 = sub_10004B8BC();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001E64(&qword_10006DAF0, &qword_100056C88);
  v7 = __chkstk_darwin(v6);
  sub_10003EEA8(v7, v8, v9);
  sub_10004B97C();
  v39._countAndFlagsBits = 0x206E727554;
  v39._object = 0xE500000000000000;
  sub_10004B96C(v39);
  KeyPath = swift_getKeyPath();
  v26[1] = sub_10003F0A0(KeyPath, v11, v12);
  sub_10004B8AC();

  sub_10004B95C();

  v40._countAndFlagsBits = 0xD000000000000016;
  v40._object = 0x800000010004F6E0;
  sub_10004B96C(v40);
  v35 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v13 = v3;
  v33 = *(v3 + 104);
  v34 = v3 + 104;
  v29 = v5;
  v14 = v37;
  v33(v5);
  sub_10004B94C();
  v15 = *(v13 + 8);
  v30 = v13 + 8;
  v31 = v15;
  v15(v5, v14);
  v41._countAndFlagsBits = 46;
  v41._object = 0xE100000000000000;
  sub_10004B96C(v41);
  sub_10004B98C();
  v36 = sub_10004B8DC();
  v27 = *(v32 + 8);
  v16 = v38;
  v27(v2, v38);
  sub_10004B97C();
  v42._countAndFlagsBits = 0xD00000000000001BLL;
  v42._object = 0x800000010004F700;
  sub_10004B96C(v42);
  swift_getKeyPath();
  sub_10004B8AC();

  sub_10004B95C();

  v43._countAndFlagsBits = 46;
  v43._object = 0xE100000000000000;
  sub_10004B96C(v43);
  sub_10004B98C();
  v32 = sub_10004B8DC();
  v17 = v16;
  v18 = v27;
  v27(v2, v17);
  sub_10004B97C();
  v44._countAndFlagsBits = 0;
  v44._object = 0xE000000000000000;
  sub_10004B96C(v44);
  swift_getKeyPath();
  sub_10004B8AC();

  sub_10004B95C();

  v45._object = 0x800000010004F720;
  v45._countAndFlagsBits = 0xD000000000000013;
  sub_10004B96C(v45);
  v19 = v29;
  v20 = v37;
  (v33)(v29, v35, v37);
  sub_10004B94C();
  v31(v19, v20);
  v46._countAndFlagsBits = 46;
  v46._object = 0xE100000000000000;
  sub_10004B96C(v46);
  sub_10004B98C();
  v21 = sub_10004B8DC();
  v18(v2, v38);
  sub_100001E64(&qword_10006DAF8, &qword_100056C90);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100051170;
  v23 = v32;
  *(v22 + 32) = v36;
  *(v22 + 40) = v23;
  *(v22 + 48) = v21;
  v24 = sub_10004B8CC();

  return v24;
}

uint64_t sub_10003C0C8(uint64_t a1)
{
  v2 = sub_10004B8BC();
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v29 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100001E64(&qword_10006DAC8, &qword_100056C40);
  v24[0] = v4;
  v32 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v24 - v5;
  v7 = sub_100001E64(&qword_10006DAD0, &qword_100056C48);
  v8 = __chkstk_darwin(v7);
  sub_100030CF8(v8, v9, v10);
  sub_10004B97C();
  v33._countAndFlagsBits = 0xD000000000000020;
  v33._object = 0x800000010004F690;
  sub_10004B96C(v33);
  KeyPath = swift_getKeyPath();
  v24[1] = sub_100031928(KeyPath, v12, v13);
  v26 = a1;
  sub_10004B8AC();

  sub_10004B95C();

  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  sub_10004B96C(v34);
  sub_10004B98C();
  v28 = sub_10004B8DC();
  v14 = *(v32 + 8);
  v32 += 8;
  v14(v6, v4);
  v25 = v14;
  sub_10004B97C();
  v35._object = 0x800000010004F6C0;
  v35._countAndFlagsBits = 0xD00000000000001DLL;
  sub_10004B96C(v35);
  swift_getKeyPath();
  sub_10004B8AC();

  sub_10004B95C();

  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  sub_10004B96C(v36);
  sub_10004B98C();
  v27 = sub_10004B8DC();
  v15 = v24[0];
  v14(v6, v24[0]);
  sub_10004B97C();
  v37._countAndFlagsBits = 0x6E696C206E65704FLL;
  v37._object = 0xEE00206E6920736BLL;
  sub_10004B96C(v37);
  v17 = v29;
  v16 = v30;
  v18 = v31;
  (*(v30 + 104))(v29, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v31);
  sub_10004B94C();
  (*(v16 + 8))(v17, v18);
  v38._countAndFlagsBits = 32;
  v38._object = 0xE100000000000000;
  sub_10004B96C(v38);
  swift_getKeyPath();
  sub_10004B8AC();

  sub_10004B95C();

  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  sub_10004B96C(v39);
  sub_10004B98C();
  v19 = sub_10004B8DC();
  v25(v6, v15);
  sub_100001E64(&qword_10006DAD8, &qword_100056C50);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100051170;
  v21 = v27;
  *(v20 + 32) = v28;
  *(v20 + 40) = v21;
  *(v20 + 48) = v19;
  v22 = sub_10004B8CC();

  return v22;
}

uint64_t sub_10003C620()
{
  v0 = sub_10004B8FC();
  v1 = sub_10004B8FC();
  v2 = sub_10004B8FC();
  v3 = sub_10004B8FC();
  sub_100001E64(&qword_10006DA40, &qword_100056AF8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100054C90;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = sub_10004B8EC();

  return v5;
}

uint64_t sub_10003C704(uint64_t a1)
{
  v33 = a1;
  v1 = sub_10004B8BC();
  v30 = *(v1 - 8);
  v31 = v1;
  __chkstk_darwin(v1);
  v29 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100001E64(&qword_10006DAB0, &qword_100056C00);
  v3 = *(v26 - 8);
  __chkstk_darwin(v26);
  v5 = &v24 - v4;
  v6 = sub_100001E64(&qword_10006DAB8, &qword_100056C08);
  v7 = __chkstk_darwin(v6);
  sub_100014858(v7, v8, v9);
  sub_10004B97C();
  v34._countAndFlagsBits = 0xD000000000000020;
  v34._object = 0x800000010004F620;
  sub_10004B96C(v34);
  KeyPath = swift_getKeyPath();
  v32 = sub_100019880(KeyPath, v11, v12);
  sub_10004B8AC();

  sub_10004B95C();

  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  sub_10004B96C(v35);
  sub_10004B98C();
  v28 = sub_10004B8DC();
  v13 = *(v3 + 8);
  v14 = v26;
  v13(v5, v26);
  v25 = v13;
  sub_10004B97C();
  v36._countAndFlagsBits = 0xD000000000000018;
  v36._object = 0x800000010004F650;
  sub_10004B96C(v36);
  swift_getKeyPath();
  sub_10004B8AC();

  sub_10004B95C();

  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  sub_10004B96C(v37);
  sub_10004B98C();
  v27 = sub_10004B8DC();
  v15 = v14;
  v13(v5, v14);
  sub_10004B97C();
  v38._countAndFlagsBits = 0x20656B614DLL;
  v38._object = 0xE500000000000000;
  sub_10004B96C(v38);
  swift_getKeyPath();
  sub_10004B8AC();

  sub_10004B95C();

  v39._object = 0x800000010004F670;
  v39._countAndFlagsBits = 0xD000000000000015;
  sub_10004B96C(v39);
  v17 = v29;
  v16 = v30;
  v18 = v31;
  (*(v30 + 104))(v29, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v31);
  sub_10004B94C();
  (*(v16 + 8))(v17, v18);
  v40._countAndFlagsBits = 0;
  v40._object = 0xE000000000000000;
  sub_10004B96C(v40);
  sub_10004B98C();
  v19 = sub_10004B8DC();
  v25(v5, v15);
  sub_100001E64(&qword_10006DAC0, &qword_100056C10);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100051170;
  v21 = v27;
  *(v20 + 32) = v28;
  *(v20 + 40) = v21;
  *(v20 + 48) = v19;
  v22 = sub_10004B8CC();

  return v22;
}

uint64_t sub_10003CC48(uint64_t a1)
{
  v33 = a1;
  v1 = sub_10004B8BC();
  v30 = *(v1 - 8);
  v31 = v1;
  __chkstk_darwin(v1);
  v29 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100001E64(&qword_10006DA98, &qword_100056BC0);
  v3 = *(v26 - 8);
  __chkstk_darwin(v26);
  v5 = &v24 - v4;
  v6 = sub_100001E64(&qword_10006DAA0, &qword_100056BC8);
  v7 = __chkstk_darwin(v6);
  sub_100016AE4(v7, v8, v9);
  sub_10004B97C();
  v34._object = 0x800000010004F5A0;
  v34._countAndFlagsBits = 0xD000000000000020;
  sub_10004B96C(v34);
  KeyPath = swift_getKeyPath();
  v32 = sub_100019880(KeyPath, v11, v12);
  sub_10004B8AC();

  sub_10004B95C();

  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  sub_10004B96C(v35);
  sub_10004B98C();
  v28 = sub_10004B8DC();
  v13 = *(v3 + 8);
  v14 = v26;
  v13(v5, v26);
  v25 = v13;
  sub_10004B97C();
  v36._object = 0x800000010004F5D0;
  v36._countAndFlagsBits = 0xD000000000000020;
  sub_10004B96C(v36);
  swift_getKeyPath();
  sub_10004B8AC();

  sub_10004B95C();

  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  sub_10004B96C(v37);
  sub_10004B98C();
  v27 = sub_10004B8DC();
  v15 = v14;
  v13(v5, v14);
  sub_10004B97C();
  v38._countAndFlagsBits = 0x20656B614DLL;
  v38._object = 0xE500000000000000;
  sub_10004B96C(v38);
  swift_getKeyPath();
  sub_10004B8AC();

  sub_10004B95C();

  v39._countAndFlagsBits = 0xD00000000000001DLL;
  v39._object = 0x800000010004F600;
  sub_10004B96C(v39);
  v17 = v29;
  v16 = v30;
  v18 = v31;
  (*(v30 + 104))(v29, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v31);
  sub_10004B94C();
  (*(v16 + 8))(v17, v18);
  v40._countAndFlagsBits = 0;
  v40._object = 0xE000000000000000;
  sub_10004B96C(v40);
  sub_10004B98C();
  v19 = sub_10004B8DC();
  v25(v5, v15);
  sub_100001E64(&qword_10006DAA8, &qword_100056BD0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100051170;
  v21 = v27;
  *(v20 + 32) = v28;
  *(v20 + 40) = v21;
  *(v20 + 48) = v19;
  v22 = sub_10004B8CC();

  return v22;
}

uint64_t sub_10003D184()
{
  v0 = sub_10004B8FC();
  v1 = sub_10004B8FC();
  v2 = sub_10004B8FC();
  v3 = sub_10004B8FC();
  v4 = sub_10004B8FC();
  sub_100001E64(&qword_10006DA40, &qword_100056AF8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100056A40;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = sub_10004B8EC();

  return v6;
}

uint64_t sub_10003D278(uint64_t a1)
{
  v30 = a1;
  v1 = sub_100001E64(&qword_10006DA80, &qword_100056B80);
  v2 = *(v1 - 8);
  v35 = v1;
  v36 = v2;
  __chkstk_darwin(v1);
  v4 = &v25 - v3;
  v5 = sub_10004B8BC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100001E64(&qword_10006DA88, &qword_100056B88);
  v10 = __chkstk_darwin(v9);
  sub_10001FB24(v10, v11, v12);
  sub_10004B97C();
  v37._countAndFlagsBits = 0x20656B614DLL;
  v37._object = 0xE500000000000000;
  sub_10004B96C(v37);
  v34 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v33 = *(v6 + 104);
  v33(v8);
  sub_10004B94C();
  v13 = *(v6 + 8);
  v31 = v6 + 8;
  v32 = v13;
  v13(v8, v5);
  v38._countAndFlagsBits = 0xD00000000000001BLL;
  v38._object = 0x800000010004F540;
  sub_10004B96C(v38);
  KeyPath = swift_getKeyPath();
  v29 = sub_1000207B8(KeyPath, v15, v16);
  sub_10004B8AC();

  sub_10004B95C();

  v39._countAndFlagsBits = 46;
  v39._object = 0xE100000000000000;
  sub_10004B96C(v39);
  sub_10004B98C();
  v17 = sub_10004B8DC();
  v18 = *(v36 + 8);
  v36 += 8;
  v27 = v17;
  v28 = v18;
  v18(v4, v35);
  sub_10004B97C();
  v40._countAndFlagsBits = 544503120;
  v40._object = 0xE400000000000000;
  sub_10004B96C(v40);
  (v33)(v8, v34, v5);
  sub_10004B94C();
  v32(v8, v5);
  v41._object = 0x800000010004F560;
  v41._countAndFlagsBits = 0xD000000000000015;
  sub_10004B96C(v41);
  swift_getKeyPath();
  sub_10004B8AC();

  sub_10004B95C();

  v42._countAndFlagsBits = 46;
  v42._object = 0xE100000000000000;
  sub_10004B96C(v42);
  sub_10004B98C();
  v26 = sub_10004B8DC();
  v19 = v35;
  v28(v4, v35);
  sub_10004B97C();
  v43._countAndFlagsBits = 544499027;
  v43._object = 0xE400000000000000;
  sub_10004B96C(v43);
  (v33)(v8, v34, v5);
  sub_10004B94C();
  v32(v8, v5);
  v44._countAndFlagsBits = 0xD000000000000016;
  v44._object = 0x800000010004F580;
  sub_10004B96C(v44);
  swift_getKeyPath();
  sub_10004B8AC();

  sub_10004B95C();

  v45._countAndFlagsBits = 46;
  v45._object = 0xE100000000000000;
  sub_10004B96C(v45);
  sub_10004B98C();
  v20 = sub_10004B8DC();
  v28(v4, v19);
  sub_100001E64(&qword_10006DA90, &qword_100056B90);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100051170;
  v22 = v26;
  *(v21 + 32) = v27;
  *(v21 + 40) = v22;
  *(v21 + 48) = v20;
  v23 = sub_10004B8CC();

  return v23;
}

uint64_t sub_10003D888(uint64_t a1)
{
  v30 = a1;
  v1 = sub_100001E64(&qword_10006DA68, &qword_100056B40);
  v2 = *(v1 - 8);
  v35 = v1;
  v36 = v2;
  __chkstk_darwin(v1);
  v4 = &v25 - v3;
  v5 = sub_10004B8BC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100001E64(&qword_10006DA70, &qword_100056B48);
  v10 = __chkstk_darwin(v9);
  sub_10003EEFC(v10, v11, v12);
  sub_10004B97C();
  v37._countAndFlagsBits = 0x20656B614DLL;
  v37._object = 0xE500000000000000;
  sub_10004B96C(v37);
  v34 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v33 = *(v6 + 104);
  v33(v8);
  sub_10004B94C();
  v13 = *(v6 + 8);
  v31 = v6 + 8;
  v32 = v13;
  v13(v8, v5);
  v38._countAndFlagsBits = 0x207362617420;
  v38._object = 0xE600000000000000;
  sub_10004B96C(v38);
  KeyPath = swift_getKeyPath();
  v29 = sub_10003EFC4(KeyPath, v15, v16);
  sub_10004B8AC();

  sub_10004B95C();

  v39._countAndFlagsBits = 46;
  v39._object = 0xE100000000000000;
  sub_10004B96C(v39);
  sub_10004B98C();
  v17 = sub_10004B8DC();
  v18 = *(v36 + 8);
  v36 += 8;
  v27 = v17;
  v28 = v18;
  v18(v4, v35);
  sub_10004B97C();
  v40._countAndFlagsBits = 0x742065676E616843;
  v40._object = 0xEF206E6920736261;
  sub_10004B96C(v40);
  (v33)(v8, v34, v5);
  sub_10004B94C();
  v32(v8, v5);
  v41._countAndFlagsBits = 544175136;
  v41._object = 0xE400000000000000;
  sub_10004B96C(v41);
  swift_getKeyPath();
  sub_10004B8AC();

  sub_10004B95C();

  v42._countAndFlagsBits = 46;
  v42._object = 0xE100000000000000;
  sub_10004B96C(v42);
  sub_10004B98C();
  v26 = sub_10004B8DC();
  v19 = v35;
  v28(v4, v35);
  sub_10004B97C();
  v43._countAndFlagsBits = 544499027;
  v43._object = 0xE400000000000000;
  sub_10004B96C(v43);
  (v33)(v8, v34, v5);
  sub_10004B94C();
  v32(v8, v5);
  v44._countAndFlagsBits = 0x6F74207362617420;
  v44._object = 0xEC00000020656220;
  sub_10004B96C(v44);
  swift_getKeyPath();
  sub_10004B8AC();

  sub_10004B95C();

  v45._countAndFlagsBits = 46;
  v45._object = 0xE100000000000000;
  sub_10004B96C(v45);
  sub_10004B98C();
  v20 = sub_10004B8DC();
  v28(v4, v19);
  sub_100001E64(&qword_10006DA78, &qword_100056B50);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100051170;
  v22 = v26;
  *(v21 + 32) = v27;
  *(v21 + 40) = v22;
  *(v21 + 48) = v20;
  v23 = sub_10004B8CC();

  return v23;
}

uint64_t sub_10003DE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_10004B8FC();
  v5 = sub_10004B8FC();
  sub_100001E64(&qword_10006DA40, &qword_100056AF8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100053280;
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;
  v7 = sub_10004B8EC();

  return v7;
}

uint64_t sub_10003DF28(uint64_t a1)
{
  v27 = a1;
  v1 = sub_100001E64(&qword_10006DA48, &qword_100056B00);
  v2 = *(v1 - 8);
  v29 = v1;
  v30 = v2;
  __chkstk_darwin(v1);
  v4 = &v23 - v3;
  v5 = sub_10004B8BC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100001E64(&qword_10006DA50, &qword_100056B08);
  v10 = __chkstk_darwin(v9);
  sub_100037E04(v10, v11, v12);
  sub_10004B97C();
  v31._countAndFlagsBits = 0x206E65704FLL;
  v31._object = 0xE500000000000000;
  sub_10004B96C(v31);
  KeyPath = swift_getKeyPath();
  v26 = sub_100036C64(KeyPath, v14, v15);
  sub_10004B8AC();

  sub_10004B95C();

  v32._countAndFlagsBits = 544106784;
  v32._object = 0xE400000000000000;
  sub_10004B96C(v32);
  (*(v6 + 104))(v8, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v5);
  sub_10004B94C();
  (*(v6 + 8))(v8, v5);
  v33._countAndFlagsBits = 0x6E69747465532029;
  v33._object = 0xEA00000000007367;
  sub_10004B96C(v33);
  sub_10004B98C();
  v28 = sub_10004B8DC();
  v16 = v29;
  v24 = *(v30 + 8);
  v30 += 8;
  v24(v4, v29);
  sub_10004B97C();
  v34._countAndFlagsBits = 0x206E65704FLL;
  v34._object = 0xE500000000000000;
  sub_10004B96C(v34);
  swift_getKeyPath();
  sub_10004B8AC();

  sub_10004B95C();

  v35._countAndFlagsBits = 0x676E697474657320;
  v35._object = 0xE800000000000000;
  sub_10004B96C(v35);
  sub_10004B98C();
  v25 = sub_10004B8DC();
  v17 = v24;
  v24(v4, v16);
  sub_10004B97C();
  v36._countAndFlagsBits = 0x20656D20656B6154;
  v36._object = 0xEB00000000206F74;
  sub_10004B96C(v36);
  swift_getKeyPath();
  sub_10004B8AC();

  sub_10004B95C();

  v37._countAndFlagsBits = 0x676E697474657320;
  v37._object = 0xE800000000000000;
  sub_10004B96C(v37);
  sub_10004B98C();
  v18 = sub_10004B8DC();
  v17(v4, v29);
  sub_100001E64(&qword_10006DA58, &qword_100056B10);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100051170;
  v20 = v25;
  *(v19 + 32) = v28;
  *(v19 + 40) = v20;
  *(v19 + 48) = v18;
  v21 = sub_10004B8CC();

  return v21;
}

uint64_t sub_10003E478(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v7 = sub_10004B93C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  a3();
  sub_10004B8AC();

  a4(v11);
  sub_10004B92C();
  v12 = sub_10004B91C();
  (*(v8 + 8))(v10, v7);
  sub_100001E64(&qword_10006DA38, &qword_100056AF0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100051180;
  *(v13 + 32) = v12;
  v14 = sub_10004B90C();

  return v14;
}

uint64_t sub_10003E5F8()
{
  v0 = sub_10004B8FC();
  v1 = sub_10004B8FC();
  v2 = sub_10004B8FC();
  v3 = sub_10004B8FC();
  v4 = sub_10004B8FC();
  sub_100001E64(&qword_10006DA40, &qword_100056AF8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100056A40;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = sub_10004B8EC();

  return v6;
}

uint64_t sub_10003E728()
{
  if (qword_10006C378 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10003E794()
{
  v0 = sub_10004B9BC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_10002CFFC();
  v52 = v4;
  sub_10002D870(v51, v4, v5);
  sub_10004B9CC();
  v50 = sub_10004B9AC();
  v6 = *(v1 + 8);
  v6(v3, v0);
  v51 = sub_10002414C();
  v52 = v7;
  sub_1000220D4(v51, v7, v8);
  sub_10004B9CC();
  v49 = sub_10004B9AC();
  v6(v3, v0);
  v51 = sub_100026A90();
  v52 = v9;
  sub_100024A20(v51, v9, v10);
  sub_10004B9CC();
  v48 = sub_10004B9AC();
  v6(v3, v0);
  v51 = sub_1000084D8();
  v52 = v11;
  sub_10000388C(v51, v11, v12);
  sub_10004B9CC();
  v47 = sub_10004B9AC();
  v6(v3, v0);
  v51 = sub_100008C40();
  v52 = v13;
  sub_100005F10(v51, v13, v14);
  sub_10004B9CC();
  v46 = sub_10004B9AC();
  v6(v3, v0);
  v51 = sub_100013F80();
  v52 = v15;
  sub_100011E34(v51, v15, v16);
  sub_10004B9CC();
  v45 = sub_10004B9AC();
  v6(v3, v0);
  v51 = sub_100041B04();
  v52 = v17;
  sub_10003EEA8(v51, v17, v18);
  sub_10004B9CC();
  v44 = sub_10004B9AC();
  v6(v3, v0);
  v51 = sub_100031D04();
  v52 = v19;
  sub_100030CF8(v51, v19, v20);
  sub_10004B9CC();
  v21 = sub_10004B9AC();
  v6(v3, v0);
  v51 = sub_10001A9C8();
  v52 = v22;
  sub_100014858(v51, v22, v23);
  sub_10004B9CC();
  v24 = sub_10004B9AC();
  v6(v3, v0);
  v51 = sub_10001B350();
  v52 = v25;
  sub_100016AE4(v51, v25, v26);
  sub_10004B9CC();
  v27 = sub_10004B9AC();
  v6(v3, v0);
  v51 = sub_100020D4C();
  v52 = v28;
  sub_10001FB24(v51, v28, v29);
  sub_10004B9CC();
  v30 = sub_10004B9AC();
  v6(v3, v0);
  v51 = sub_10004883C();
  v52 = v31;
  sub_10003EEFC(v51, v31, v32);
  sub_10004B9CC();
  v33 = sub_10004B9AC();
  v6(v3, v0);
  v51 = sub_1000390D4();
  sub_100037E04(v51, v34, v35);
  sub_10004B9CC();
  v36 = sub_10004B9AC();
  v6(v3, v0);
  sub_100001E64(&qword_10006DA30, &qword_100056AC0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100056A50;
  v38 = v49;
  *(v37 + 32) = v50;
  *(v37 + 40) = v38;
  v39 = v47;
  *(v37 + 48) = v48;
  *(v37 + 56) = v39;
  v40 = v45;
  *(v37 + 64) = v46;
  *(v37 + 72) = v40;
  *(v37 + 80) = v44;
  *(v37 + 88) = v21;
  *(v37 + 96) = v24;
  *(v37 + 104) = v27;
  *(v37 + 112) = v30;
  *(v37 + 120) = v33;
  *(v37 + 128) = v36;
  v41 = sub_10004B99C();

  return v41;
}

unint64_t sub_10003EEA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DA20;
  if (!qword_10006DA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DA20);
  }

  return result;
}

unint64_t sub_10003EEFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DA28;
  if (!qword_10006DA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DA28);
  }

  return result;
}

void *sub_10003EF50@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10004B85C();
  *a1 = v3;
  return result;
}

unint64_t sub_10003EFC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DA60;
  if (!qword_10006DA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DA60);
  }

  return result;
}

void *sub_10003F020@<X0>(void *a1@<X8>)
{
  result = sub_10004B85C();
  *a1 = v3;
  return result;
}

unint64_t sub_10003F0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DAE0;
  if (!qword_10006DAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DAE0);
  }

  return result;
}

void *sub_10003F0F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10004B85C();
  *a1 = v3;
  return result;
}

void *sub_10003F168@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10004B85C();
  *a1 = v3;
  return result;
}

uint64_t sub_10003F258@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = sub_10004BDCC();
  v44 = *(v1 - 8);
  v45 = v1;
  __chkstk_darwin(v1);
  v37 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100001E64(&qword_10006C460, &unk_1000501F0);
  v35 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v35 - v4;
  v6 = sub_100001E64(&qword_10006C468, &unk_100050090);
  v7 = *(v6 - 8);
  v38 = v6;
  v39 = v7;
  __chkstk_darwin(v6);
  v9 = &v35 - v8;
  v10 = sub_100001E64(&qword_10006C470, &unk_100050200);
  v11 = *(v10 - 8);
  v40 = v10;
  v41 = v11;
  __chkstk_darwin(v10);
  v13 = &v35 - v12;
  v14 = sub_100001E64(&qword_10006C478, &qword_1000500A0);
  v15 = *(v14 - 8);
  v42 = v14;
  v43 = v15;
  __chkstk_darwin(v14);
  v36 = &v35 - v16;
  swift_getKeyPath();
  v17 = sub_100001E64(&qword_10006C480, &unk_1000500D0);
  sub_100004D6C(v17, v18, v19);
  sub_1000020DC(&qword_10006C490, &qword_10006C480, &unk_1000500D0, &protocol conformance descriptor for Label<A, B>);
  sub_10004C44C();
  sub_10004BFDC();
  v20 = sub_1000020DC(&qword_10006C498, &qword_10006C460, &unk_1000501F0, &protocol conformance descriptor for ControlToggle<A>);
  sub_10004C05C();

  (*(v35 + 8))(v5, v3);
  v21 = v37;
  sub_10004BDBC();
  v22 = sub_10004BDAC();
  v24 = v23;
  (*(v44 + 8))(v21, v45);
  v47 = v22;
  v48 = v24;
  v51 = v3;
  v52 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = sub_100002214(OpaqueTypeConformance2, v26, v27);
  v29 = v38;
  sub_10004C01C();

  (*(v39 + 8))(v9, v29);
  v47 = v29;
  v48 = &type metadata for String;
  v49 = OpaqueTypeConformance2;
  v50 = v28;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = v36;
  v32 = v40;
  sub_10004C08C();
  (*(v41 + 8))(v13, v32);
  v47 = v32;
  v48 = v30;
  swift_getOpaqueTypeConformance2();
  v33 = v42;
  sub_10004C02C();
  return (*(v43 + 8))(v31, v33);
}

uint64_t sub_10003F830()
{
  v0 = sub_10004BDCC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004BDBC();
  v4 = sub_10004BDAC();
  v6 = v5;
  v7 = (*(v1 + 8))(v3, v0);
  v11[0] = v4;
  v11[1] = v6;
  sub_100002214(v7, v8, v9);
  return sub_10004C2EC();
}

uint64_t sub_10003F960@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_10004BDCC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004BDBC();
  v7 = sub_10004BDAC();
  v9 = v8;
  v10 = (*(v4 + 8))(v6, v3);
  v17[0] = v7;
  v17[1] = v9;
  sub_100002214(v10, v11, v12);
  result = sub_10004C1AC();
  *a2 = result;
  *(a2 + 8) = v14;
  *(a2 + 16) = v15 & 1;
  *(a2 + 24) = v16;
  return result;
}

uint64_t sub_10003FA9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100002214(a1, a2, a3);

  return sub_10004C2EC();
}

uint64_t sub_10003FB54()
{
  v0 = sub_100001E64(&qword_10006C6B8, &qword_100051FC0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_10004BC5C();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004BD8C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10004C54C();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004BC7C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_10004BBDC();
  sub_1000090DC(v10, qword_10006E5B0);
  sub_1000090A4(v10, qword_10006E5B0);
  sub_10004C4FC();
  sub_10004BD7C();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_10004BC9C();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_10004BBCC();
}

uint64_t sub_10003FE40()
{
  v0 = sub_10004BC7C();
  sub_1000090DC(v0, qword_10006E5C8);
  sub_1000090A4(v0, qword_10006E5C8);
  return sub_10004BC4C();
}

uint64_t sub_10003FEA4()
{
  v0 = sub_100001E64(&qword_10006C718, &qword_100050FD0);
  sub_1000090DC(v0, qword_10006E5E0);
  v1 = sub_1000090A4(v0, qword_10006E5E0);
  sub_10004B9DC();
  v2 = sub_10004B9EC();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10003FF64()
{
  result = swift_getKeyPath();
  qword_10006E5F8 = result;
  return result;
}

uint64_t sub_10003FF8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  sub_100001E64(&qword_10006C6E8, &unk_100050F80);
  v3[10] = swift_task_alloc();
  sub_100001E64(&qword_10006C6F0, &qword_100052010);
  v3[11] = swift_task_alloc();
  sub_100001E64(&qword_10006DC88, &qword_100057568);
  v3[12] = swift_task_alloc();
  v4 = sub_10004B7DC();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v5 = sub_100001E64(&qword_10006DC90, &qword_100057570);
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_10004016C, 0, 0);
}

uint64_t sub_10004016C()
{
  sub_10004B85C();
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  v4 = sub_100041210(v1, v2, v3);
  *v1 = v0;
  v1[1] = sub_10004023C;
  v5 = *(v0 + 152);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 16, sub_1000426FC, 0, &type metadata for LandscapeTabBarEntity, v4);
}

uint64_t sub_10004023C()
{

  return _swift_task_switch(sub_100040338, 0, 0);
}

uint64_t sub_100040338()
{
  sub_10004B85C();
  v1 = *(v0 + 24);
  *(v0 + 32) = v1;
  *(v0 + 168) = v1;
  sub_10004B85C();
  *(v0 + 201) = *(v0 + 200);
  if (qword_10006C398 != -1)
  {
    swift_once();
  }

  v2 = qword_10006E5F8;
  *(v0 + 176) = qword_10006E5F8;

  v3 = swift_task_alloc();
  *(v0 + 184) = v3;
  v4 = sub_1000020DC(&qword_10006DC70, &qword_10006DC78, &qword_100057540, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v3 = v0;
  v3[1] = sub_100040498;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 201, v2, &type metadata for Bool, v4);
}

uint64_t sub_100040498()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_100004690;
  }

  else
  {
    v2 = sub_1000405EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000405EC()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v16 = v0[18];
  v17 = v0[15];
  v18 = v0[14];
  v19 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  sub_10004B85C();
  v0[6] = v0[5];
  v6 = sub_10004BBAC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = sub_10004BBEC();
  v8 = (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v11 = sub_10003EEA8(v8, v9, v10);
  sub_100041424(v11, v12, v13);
  sub_10004B7AC();
  (*(v2 + 16))(v16, v1, v3);
  sub_10004B7CC();
  sub_10004B7EC();
  (*(v18 + 8))(v17, v19);

  (*(v2 + 8))(v1, v3);

  v14 = v0[1];

  return v14();
}

uint64_t sub_100040858()
{
  v0 = sub_100001E64(&qword_10006DC98, &qword_100057578);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - v2;
  if (qword_10006C398 != -1)
  {
    swift_once();
  }

  sub_10004BA5C();

  sub_100041424(v4, v5, v6);
  sub_1000020DC(&qword_10006DCA0, &qword_10006DC98, &qword_100057578, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_10004BA4C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t (*sub_1000409CC(uint64_t *a1))()
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
  *(v2 + 32) = sub_10004B84C();
  return sub_100004980;
}

uint64_t (*sub_100040A40(uint64_t *a1))()
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
  *(v2 + 32) = sub_10004B84C();
  return sub_10000950C;
}

double sub_100040AB4()
{
  if (qword_10006C398 != -1)
  {
    swift_once();
  }

  return result;
}

unint64_t sub_100040B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DBB0;
  if (!qword_10006DBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DBB0);
  }

  return result;
}

unint64_t sub_100040B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DBB8;
  if (!qword_10006DBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DBB8);
  }

  return result;
}

uint64_t sub_100040C7C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10006C390 != -1)
  {
    swift_once();
  }

  v2 = sub_100001E64(&qword_10006C718, &qword_100050FD0);
  v3 = sub_1000090A4(v2, qword_10006E5E0);

  return sub_100009450(v3, a1);
}

uint64_t sub_100040D00(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000094C4;

  return sub_10003FF8C(a1, v5, v4);
}

uint64_t sub_100040DAC@<X0>(uint64_t *a2@<X8>)
{
  result = sub_100041B04();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_100040DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DBC0;
  if (!qword_10006DBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DBC0);
  }

  return result;
}

uint64_t sub_100040E6C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() safari_browserDefaults];
  v3 = [v2 BOOLForKey:SFShowTabBarDefaultsKey];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100040F1C(uint64_t a1, char *a2)
{
  v3 = *a2;
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000094C4;

  return sub_100041F68(v3);
}

uint64_t sub_100040FB0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000094F4;

  return sub_1000420A8();
}

unint64_t sub_100041058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DBC8;
  if (!qword_10006DBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DBC8);
  }

  return result;
}

uint64_t sub_1000410AC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v7 = sub_1000415B8(v4, v5, v6);
  *v4 = v2;
  v4[1] = sub_100005128;

  return _UniqueEntityQuery.allEntities()(a2, v7);
}

unint64_t sub_100041160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DBD0;
  if (!qword_10006DBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DBD0);
  }

  return result;
}

unint64_t sub_1000411B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DBD8;
  if (!qword_10006DBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DBD8);
  }

  return result;
}

unint64_t sub_100041210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DBE0;
  if (!qword_10006DBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DBE0);
  }

  return result;
}

uint64_t sub_100041264(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v8 = sub_1000415B8(v5, v6, v7);
  *v5 = v2;
  v5[1] = sub_100009550;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v8);
}

uint64_t sub_100041318(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v7 = sub_1000415B8(v4, v5, v6);
  *v4 = v2;
  v4[1] = sub_1000094F4;

  return _UniqueEntityQuery.suggestedEntities()(a2, v7);
}

unint64_t sub_1000413CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DBE8;
  if (!qword_10006DBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DBE8);
  }

  return result;
}

unint64_t sub_100041424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DBF0;
  if (!qword_10006DBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DBF0);
  }

  return result;
}

unint64_t sub_10004147C()
{
  result = qword_10006DBF8;
  if (!qword_10006DBF8)
  {
    v1 = sub_100001FB0(&qword_10006DC00, qword_100057150);
    sub_100041424(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DBF8);
  }

  return result;
}

uint64_t sub_100041500(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v8 = sub_100041058(v5, v6, v7);
  *v5 = v2;
  v5[1] = sub_100005810;

  return EntityQuery.results()(a1, a2, v8);
}

unint64_t sub_1000415B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DC08;
  if (!qword_10006DC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DC08);
  }

  return result;
}

uint64_t sub_10004160C()
{
  v0 = qword_10006DB90;

  return v0;
}

unint64_t sub_100041648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DC10;
  if (!qword_10006DC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DC10);
  }

  return result;
}

unint64_t sub_1000416A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DC18;
  if (!qword_10006DC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DC18);
  }

  return result;
}

unint64_t sub_1000416F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DC20;
  if (!qword_10006DC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DC20);
  }

  return result;
}

unint64_t sub_100041750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DC28;
  if (!qword_10006DC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DC28);
  }

  return result;
}

unint64_t sub_1000417A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DC30;
  if (!qword_10006DC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DC30);
  }

  return result;
}

unint64_t sub_100041800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DC38;
  if (!qword_10006DC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DC38);
  }

  return result;
}

uint64_t sub_100041854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_10000BBB8(a1, a2, a3);
  result = sub_10004B80C();
  *a4 = result;
  a4[1] = v6;
  return result;
}

uint64_t sub_100041910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100041210(a1, a2, a3);

  return static AppEntity.defaultResolverSpecification.getter(a1, v4);
}