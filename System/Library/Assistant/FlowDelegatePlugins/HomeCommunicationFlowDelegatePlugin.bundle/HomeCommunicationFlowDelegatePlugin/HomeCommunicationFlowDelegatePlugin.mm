uint64_t sub_21D8(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v5 = sub_2664(&qword_BF9B8, &qword_8E0C0);
  __chkstk_darwin(v5);
  v7 = (&v11 - v6);
  *v7 = *(v3 + *(*v3 + qword_C3D40 + 16));
  v8 = enum case for AppResolutionResult.selected(_:);
  v9 = sub_8CABC();
  (*(*(v9 - 8) + 104))(v7, v8, v9);
  swift_storeEnumTagMultiPayload();

  a3(v7);
  return sub_26AC(v7);
}

void sub_2390(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = swift_allocObject();
  a2(v3);
  __break(1u);
}

uint64_t sub_2440()
{
  sub_2714((v0 + *(*v0 + qword_C3D40 + 8)));
}

void *sub_24DC()
{
  v0 = sub_8CAAC();
  sub_2714((v0 + *(*v0 + qword_C3D40 + 8)));

  return v0;
}

uint64_t sub_2578()
{
  v0 = sub_24DC();

  return _swift_deallocClassInstance(v0, 64, 7);
}

NSString sub_260C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_2DF8(a2);
  *a1 = result;
  return result;
}

uint64_t sub_2664(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_26AC(uint64_t a1)
{
  v2 = sub_2664(&qword_BF9B8, &qword_8E0C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2714(void *a1)
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

void sub_27CC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void sub_2830(uint64_t a2@<X8>)
{
  sub_2864();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

uint64_t sub_286C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  result = SendAnnouncementNeedsValueModel.init(targetName:)(*(&a1 - 1)).targetName.value._countAndFlagsBits;
  *a2 = result;
  return result;
}

uint64_t sub_289C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_8CEAC();

  *a2 = v3;
  return result;
}

uint64_t sub_28E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2910(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2914(uint64_t a1)
{
  v2 = sub_2A60(&qword_BF9F8, type metadata accessor for FileAttributeKey, &unk_8E2C8);
  v3 = sub_2A60(&unk_BFA00, type metadata accessor for FileAttributeKey, &unk_8E21C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_2A60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2B44(uint64_t a1, uint64_t a2)
{
  v2 = sub_8CEDC();
  v4 = v3;
  if (v2 == sub_8CEDC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_8D45C();
  }

  return v7 & 1;
}

uint64_t sub_2BF0(uint64_t a1, uint64_t a2)
{
  sub_8CEDC();
  sub_8CF4C();
}

Swift::Int sub_2C44(uint64_t a1, Swift::UInt a2)
{
  sub_8D50C();
  sub_8D51C(a2);
  return sub_8D54C();
}

Swift::Int sub_2C88(uint64_t a1, uint64_t a2)
{
  sub_8CEDC();
  sub_8D50C();
  sub_8CF4C();
  v2 = sub_8D54C();

  return v2;
}

uint64_t sub_2D00(uint64_t a1, id *a2)
{
  result = sub_8CEBC();
  *a2 = 0;
  return result;
}

uint64_t sub_2D78(uint64_t a1, id *a2)
{
  v3 = sub_8CECC();
  *a2 = 0;
  return v3 & 1;
}

NSString sub_2DF8(uint64_t a1)
{
  sub_8CEDC();
  v1 = sub_8CEAC();

  return v1;
}

Swift::Int sub_2E30(Swift::UInt a1)
{
  sub_8D50C();
  sub_8D51C(a1);
  return sub_8D54C();
}

uint64_t sub_2E78(uint64_t a1)
{
  sub_8CEDC();
  v1 = sub_8CFDC();

  return v1;
}

void sub_2EF4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_8BE0C();
  sub_3488();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = (&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_2664(&qword_BFDF0, qword_8E3A8);
  __chkstk_darwin(v10 - 8);
  v12 = &v35 - v11;
  v13 = sub_8B47C();
  sub_3488();
  v15 = v14;
  v17 = __chkstk_darwin(v16);
  v35 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v35 - v20;
  __chkstk_darwin(v19);
  v23 = &v35 - v22;
  (*(v6 + 16))(v9, a1, v4);
  sub_72B5C(v9, v12);
  v24 = type metadata accessor for SmsNLIntent(0);
  if (sub_3364(v12, 1, v24) == 1)
  {
    sub_338C(v12);
    (*(v15 + 104))(a2, enum case for SiriKitConfirmationState.unset(_:), v13);
  }

  else
  {
    sub_73158(v23);
    sub_342C(v12);
    (*(v15 + 32))(a2, v23, v13);
  }

  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v25 = sub_8CD0C();
  sub_33F4(v25, qword_C3DF8);
  v26 = *(v15 + 16);
  v26(v21, a2, v13);
  v27 = sub_8CCEC();
  v28 = sub_8D11C();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v36 = v30;
    *v29 = 136315138;
    v26(v35, v21, v13);
    v31 = sub_8CEEC();
    v33 = v32;
    (*(v15 + 8))(v21, v13);
    v34 = sub_862D8(v31, v33, &v36);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_0, v27, v28, "Returning confirmation state: %s.", v29, 0xCu);
    sub_2714(v30);
  }

  else
  {

    (*(v15 + 8))(v21, v13);
  }
}

uint64_t sub_331C()
{
  v0 = sub_8BA0C();

  return _swift_deallocClassInstance(v0, 16, 7);
}

uint64_t sub_338C(uint64_t a1)
{
  v2 = sub_2664(&qword_BFDF0, qword_8E3A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_33F4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_342C(uint64_t a1)
{
  v2 = type metadata accessor for SmsNLIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_349C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_8B00C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_8AFFC();
  v10 = sub_8AFDC();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  sub_37C8(v10, v12, v9, &selRef_setAceId_);
  if (a3)
  {
    v13 = sub_8CEAC();
  }

  else
  {
    v13 = 0;
  }

  [v9 setAppId:v13];

  sub_3834();
  v14 = a1;
  v15 = sub_3650(v14);
  [v9 setIntent:v15];

  return v9;
}

id sub_3650(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = sub_3758([a1 backingStore]);
  if (v4 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v6 = v3;
    v7 = v4;
    isa = sub_8AFAC().super.isa;
    sub_3878(v6, v7);
  }

  [v2 setData:isa];

  v8 = [a1 typeName];
  v9 = sub_8CEDC();
  v11 = v10;

  sub_37C8(v9, v11, v2, &selRef_setTypeName_);
  return v2;
}

uint64_t sub_3758(void *a1)
{
  v2 = [a1 data];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_8AFBC();

  return v3;
}

void sub_37C8(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_8CEAC();

  [a3 *a4];
}

unint64_t sub_3834()
{
  result = qword_BFDF8;
  if (!qword_BFDF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_BFDF8);
  }

  return result;
}

uint64_t sub_3878(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_388C(a1, a2);
  }

  return a1;
}

uint64_t sub_388C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_38E4()
{
  sub_6608();
  v1[12] = v2;
  v1[13] = v0;
  v1[11] = v3;
  v4 = sub_8B00C();
  v1[14] = v4;
  v1[15] = *(v4 - 8);
  v1[16] = swift_task_alloc();
  v5 = type metadata accessor for SignpostLog.Signpost(0);
  v1[17] = v5;
  sub_65E4(v5);
  v1[18] = swift_task_alloc();
  sub_65B8();

  return _swift_task_switch(v6);
}

uint64_t sub_39CC()
{
  v30 = v0;
  if (qword_BF820 != -1)
  {
    swift_once();
  }

  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v27 = v0[14];
  v6 = qword_C0EE8;
  v0[19] = qword_C0EE8;
  v7 = v6;
  sub_8CCCC();
  sub_8D16C();
  sub_65FC();
  sub_8CCBC();
  v8 = v1 + *(v2 + 20);
  *v8 = "AnnouncementPayloadGeneration";
  *(v8 + 8) = 29;
  *(v8 + 16) = 2;
  v9 = sub_8AF6C(0);
  sub_4F28(v9, v10);

  v11 = sub_8AF6C(0);
  sub_4F28(v11, v12);

  sub_8AFFC();
  v13 = sub_8AFDC();
  v15 = v14;
  (*(v4 + 8))(v3, v27);
  v28 = v13;
  v29 = v15;
  sub_8CF7C(*(v5 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin29AnnouncementSpeechSynthesizer_audioFileExtension));
  v0[20] = v13;
  v0[21] = v15;
  v28 = sub_8AF6C(0);
  v29 = v16;
  v31._countAndFlagsBits = v13;
  v31._object = v15;
  sub_8CF7C(v31);
  v17 = v28;
  v18 = v29;
  v0[22] = v28;
  v0[23] = v18;
  if (qword_BF818 != -1)
  {
    sub_650C();
    swift_once();
  }

  v19 = sub_8CD0C();
  v0[24] = sub_33F4(v19, qword_C3DF8);

  v20 = sub_8CCEC();
  v21 = sub_8D11C();

  if (os_log_type_enabled(v20, v21))
  {
    sub_6594();
    v22 = swift_slowAlloc();
    v23 = sub_6630();
    v28 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_862D8(v17, v18, &v28);
    _os_log_impl(&dword_0, v20, v21, "#AnnouncementSpeechSynthesizer file path=%s", v22, 0xCu);
    sub_2714(v23);
    sub_6538();

    sub_6538();
  }

  v24 = swift_task_alloc();
  v0[25] = v24;
  *v24 = v0;
  v24[1] = sub_3CD8;
  sub_6614();

  return sub_4160();
}

uint64_t sub_3CD8()
{
  sub_6608();
  v2 = *v1;
  sub_65D8();
  *v3 = v2;
  v4 = *v1;
  sub_65D8();
  *v5 = v4;
  *(v2 + 208) = v0;

  if (v0)
  {
  }

  sub_65B8();

  return _swift_task_switch(v6);
}

void sub_3DF0()
{
  v21 = v0[26];
  v1 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  sub_2664(&qword_BFF50, &qword_8E4F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_8E3F0;
  *(inited + 64) = &type metadata for Int;
  *(inited + 32) = NSFilePosixPermissions;
  *(inited + 40) = 438;
  type metadata accessor for FileAttributeKey(0);
  sub_655C();
  sub_6300(v6, v7, &unk_8E2C8);
  v8 = NSFilePosixPermissions;
  v9 = sub_8CE6C();
  sub_5300(v4, v3, v1, v2, v9);
  if (v21)
  {

    sub_8D15C();
    sub_65FC();
    sub_8CCBC();
    v10 = v0[18];
    sub_6520();
    sub_64B4(v10, v11);

    sub_65A0();
    sub_6614();

    __asm { BRAA            X1, X16 }
  }

  v14 = sub_8CCEC();
  v15 = sub_8D11C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "#AnnouncementSpeechSynthesizer done generating file", v16, 2u);
    sub_6538();
  }

  v17 = v0[18];

  sub_8D15C();
  sub_65FC();
  sub_8CCBC();
  sub_6520();
  sub_64B4(v17, v18);

  sub_6614();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_40B4(uint64_t a1)
{
  sub_8D15C();
  sub_65FC();
  sub_8CCBC();
  v2 = *(v1 + 144);
  sub_6520();
  sub_64B4(v2, v3);

  sub_65A0();

  return v4();
}

uint64_t sub_4160()
{
  sub_6608();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = sub_8AF2C();
  v1[7] = v6;
  v1[8] = *(v6 - 8);
  v1[9] = swift_task_alloc();
  v7 = sub_2664(&qword_BFF28, &unk_8EFD0);
  sub_65E4(v7);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  sub_65B8();

  return _swift_task_switch(v8);
}

uint64_t sub_4260()
{
  v2 = *(v0[6] + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin29AnnouncementSpeechSynthesizer_voiceInfo);
  v0[12] = v2;
  if (v2)
  {
    v3 = qword_BF818;
    v4 = v2;
    if (v3 != -1)
    {
      sub_650C();
      swift_once();
    }

    v5 = sub_8CD0C();
    sub_33F4(v5, qword_C3DF8);
    v6 = v4;
    v7 = sub_8CCEC();
    v8 = sub_8D11C();

    if (os_log_type_enabled(v7, v8))
    {
      sub_6594();
      swift_slowAlloc();
      sub_6584();
      v9 = swift_slowAlloc();
      *v1 = 138412290;
      *(v1 + 4) = v6;
      *v9 = v2;
      v10 = v6;
      sub_65F0();
      _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
      sub_6298(v9);
      sub_6538();

      sub_6538();
    }

    v41 = [objc_allocWithZone(sub_8C8BC()) init];
    v0[13] = v41;
    v16 = sub_6348(v6, &selRef_languageCode);
    if (v17)
    {
      v18 = v0[11];
      v19 = v0[8];
      v38 = v0[10];
      v39 = v0[9];
      v40 = v0[7];
      sub_6348(v6, &selRef_name);
      v20 = objc_allocWithZone(sub_8C8DC());
      v21 = sub_8C8CC();
      v0[14] = v21;
      v22 = objc_allocWithZone(sub_8C8FC());

      v23 = v21;
      v24 = sub_8C8EC();
      v0[15] = v24;
      v25 = sub_8AF9C();
      sub_6270(v38, 1, 1, v25);
      (*(v19 + 104))(v39, enum case for URL.DirectoryHint.inferFromPath(_:), v40);
      v26 = v24;

      sub_8AF8C();
      sub_6270(v18, 0, 1, v25);
      sub_8C89C();

      v27 = swift_task_alloc();
      v0[16] = v27;
      *(v27 + 16) = v41;
      *(v27 + 24) = v26;
      v28 = swift_task_alloc();
      v0[17] = v28;
      *v28 = v0;
      v28[1] = sub_4750;
      sub_65B8();
    }

    else
    {
      __break(1u);
    }

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v16);
  }

  else
  {
    if (qword_BF818 != -1)
    {
      sub_650C();
      swift_once();
    }

    v29 = sub_8CD0C();
    sub_33F4(v29, qword_C3DF8);
    v30 = sub_8CCEC();
    v31 = sub_8D12C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_0, v30, v31, "#AnnouncementSpeechSynthesizer no voice info", v32, 2u);
      sub_6538();
    }

    type metadata accessor for HomeCommunicationError(0);
    sub_6544();
    sub_6300(v33, v34, &protocol conformance descriptor for HomeCommunicationError);
    swift_allocError();
    strcpy(v35, "No Siri Voice");
    *(v35 + 7) = -4864;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_65A0();

    return v36();
  }
}

uint64_t sub_4750()
{
  sub_6608();
  v2 = *v1;
  sub_65D8();
  *v3 = v2;
  v4 = *v1;
  sub_65D8();
  *v5 = v4;
  *(v2 + 144) = v0;

  if (!v0)
  {
  }

  sub_65B8();

  return _swift_task_switch(v6);
}

uint64_t sub_485C()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);

  sub_65A0();

  return v4();
}

uint64_t sub_48FC()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = *(v0 + 96);

  sub_65A0();

  return v4();
}

uint64_t sub_499C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2664(&qword_BFF48, &qword_8E4F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v8 = sub_8CD0C();
  sub_33F4(v8, qword_C3DF8);
  v9 = sub_8CCEC();
  v10 = sub_8D11C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "#AnnouncementSpeechSynthesizer synthesizing audio file", v11, 2u);
  }

  (*(v5 + 16))(v7, a1, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, v7, v4);
  sub_8C8AC();
}

uint64_t sub_4BAC(uint64_t a1)
{
  v2 = type metadata accessor for HomeCommunicationError(0);
  __chkstk_darwin(v2);
  v4 = (v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    swift_errorRetain();
    if (qword_BF818 != -1)
    {
      swift_once();
    }

    v5 = sub_8CD0C();
    sub_33F4(v5, qword_C3DF8);
    swift_errorRetain();
    v6 = sub_8CCEC();
    v7 = sub_8D12C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&dword_0, v6, v7, "#AnnouncementSpeechSynthesizer failed to synthesize: %@", v8, 0xCu);
      sub_6298(v9);
    }

    v20 = 0;
    v21 = 0xE000000000000000;
    v19[1] = a1;
    sub_2664(&qword_BFF30, &unk_8E4E0);
    sub_8D31C();
    v11 = v21;
    *v4 = v20;
    v4[1] = v11;
    swift_storeEnumTagMultiPayload();
    sub_6300(&qword_BFF38, type metadata accessor for HomeCommunicationError, &protocol conformance descriptor for HomeCommunicationError);
    v12 = swift_allocError();
    sub_15350(v13);
    sub_64B4(v4, type metadata accessor for HomeCommunicationError);
    v20 = v12;
    sub_2664(&qword_BFF48, &qword_8E4F0);
    sub_8D0BC();
  }

  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v14 = sub_8CD0C();
  sub_33F4(v14, qword_C3DF8);
  v15 = sub_8CCEC();
  v16 = sub_8D11C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "#AnnouncementSpeechSynthesizer synthesis complete", v17, 2u);
  }

  sub_2664(&qword_BFF48, &qword_8E4F0);
  return sub_8D0CC();
}

void sub_4F28(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin29AnnouncementSpeechSynthesizer_fileManager);
  sub_622C((v2 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin29AnnouncementSpeechSynthesizer_fileManager), *(v2 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin29AnnouncementSpeechSynthesizer_fileManager + 24));
  v4 = sub_65AC();
  if (v5(v4))
  {
    if (qword_BF818 != -1)
    {
      sub_650C();
      swift_once();
    }

    v6 = sub_8CD0C();
    sub_33F4(v6, qword_C3DF8);

    v7 = sub_8CCEC();
    v8 = sub_8D11C();

    if (os_log_type_enabled(v7, v8))
    {
      sub_6594();
      v9 = swift_slowAlloc();
      v27 = sub_6630();
      *v9 = 136315138;
      v10 = sub_65AC();
      *(v9 + 4) = sub_862D8(v10, v11, v12);
      sub_65F0();
      _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
      sub_2714(v27);
      sub_6538();

      sub_6538();
    }
  }

  else
  {
    if (qword_BF818 != -1)
    {
      sub_650C();
      swift_once();
    }

    v18 = sub_8CD0C();
    sub_33F4(v18, qword_C3DF8);

    v19 = sub_8CCEC();
    v20 = sub_8D11C();

    if (os_log_type_enabled(v19, v20))
    {
      sub_6594();
      v21 = swift_slowAlloc();
      v28 = sub_6630();
      *v21 = 136315138;
      v22 = sub_65AC();
      *(v21 + 4) = sub_862D8(v22, v23, v24);
      _os_log_impl(&dword_0, v19, v20, "#AnnouncementSpeechSynthesizer creating new directory at %s", v21, 0xCu);
      sub_2714(v28);
      sub_6538();

      sub_6538();
    }

    sub_622C(v3, v3[3]);
    v25 = sub_65AC();
    v26(v25);
  }
}

uint64_t sub_5300(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v78 = a5;
  v95 = a3;
  v79 = type metadata accessor for HomeCommunicationError(0);
  sub_6574();
  __chkstk_darwin(v9);
  sub_65C4();
  v80 = v10;
  v91 = sub_8AF2C();
  sub_3488();
  v89 = v11;
  __chkstk_darwin(v12);
  sub_65C4();
  v90 = v13;
  v14 = sub_2664(&qword_BFF28, &unk_8EFD0);
  v15 = sub_65E4(v14);
  __chkstk_darwin(v15);
  v86 = &v77 - v16;
  v97 = sub_8AF9C();
  sub_3488();
  v93 = v17;
  v19 = __chkstk_darwin(v18);
  v77 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v87 = &v77 - v22;
  __chkstk_darwin(v21);
  v88 = &v77 - v23;
  v84 = v5;
  v98 = sub_8AF6C(0);
  v99 = v24;

  v101._countAndFlagsBits = a1;
  v101._object = a2;
  sub_8CF7C(v101);

  v26 = v98;
  v25 = v99;
  if (qword_BF818 != -1)
  {
    sub_650C();
    swift_once();
  }

  v27 = sub_8CD0C();
  v28 = sub_33F4(v27, qword_C3DF8);

  v85 = v28;
  v29 = sub_8CCEC();
  v30 = sub_8D11C();

  v31 = os_log_type_enabled(v29, v30);
  v94 = v25;
  v96 = v26;
  v83 = a4;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    *v32 = 136315394;
    *(v32 + 4) = sub_862D8(v95, a4, &v98);
    *(v32 + 12) = 2080;
    *(v32 + 14) = sub_862D8(v26, v25, &v98);
    _os_log_impl(&dword_0, v29, v30, "#AnnouncementSpeechSynthesizer moving file %s to %s", v32, 0x16u);
    swift_arrayDestroy();
    sub_6538();

    sub_6538();
  }

  v33 = (v84 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin29AnnouncementSpeechSynthesizer_fileManager);
  v34 = *(v84 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin29AnnouncementSpeechSynthesizer_fileManager + 32);
  v84 = *(v84 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin29AnnouncementSpeechSynthesizer_fileManager + 24);
  v82 = v34;
  v81 = sub_622C(v33, v84);
  v35 = v86;
  v36 = v97;
  sub_6270(v86, 1, 1, v97);
  v37 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v38 = v90;
  v39 = *(v89 + 104);
  v40 = v91;
  v39(v90, enum case for URL.DirectoryHint.inferFromPath(_:), v91);

  v41 = v88;
  sub_8AF8C();
  sub_6270(v35, 1, 1, v36);
  v39(v38, v37, v40);
  v42 = v94;

  v43 = v87;
  sub_8AF8C();
  v44 = v92;
  (*(v82 + 8))(v41, v43, v84);
  if (v44)
  {

    v45 = *(v93 + 8);
    v46 = v97;
    v45(v43, v97);
    v45(v41, v46);
    swift_errorRetain();
    v52 = sub_8CCEC();
    v53 = sub_8D11C();

    if (os_log_type_enabled(v52, v53))
    {
      sub_6594();
      swift_slowAlloc();
      sub_6584();
      v54 = swift_slowAlloc();
      *v46 = 138412290;
      swift_errorRetain();
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v46 + 4) = v55;
      *v54 = v55;
      _os_log_impl(&dword_0, v52, v53, "#AnnouncementSpeechSynthesizer error while moving file to destination: %@", v46, 0xCu);
      sub_6298(v54);
      sub_6538();

      sub_6538();
    }

    v98 = 0;
    v99 = 0xE000000000000000;
    v100 = v44;
    sub_2664(&qword_BFF30, &unk_8E4E0);
    sub_8D31C();
    v56 = v99;
    v57 = v80;
    *v80 = v98;
    *(v57 + 8) = v56;
    swift_storeEnumTagMultiPayload();
    sub_6544();
    sub_6300(v58, v59, &protocol conformance descriptor for HomeCommunicationError);
    swift_allocError();
    sub_15350(v60);
    sub_64B4(v57, type metadata accessor for HomeCommunicationError);
    swift_willThrow();
  }

  else
  {
    v47 = v43;
    v48 = *(v93 + 8);
    v49 = v97;
    v48(v47, v97);
    v48(v41, v49);
    v50 = v33[3];
    v51 = v33[4];
    sub_622C(v33, v50);
    (*(v51 + 40))(v78, v96, v42, v50, v51);
    v62 = v49;

    v63 = sub_8CCEC();
    v64 = sub_8D11C();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v98 = v95;
      *v65 = 136315394;
      type metadata accessor for FileAttributeKey(0);
      sub_655C();
      sub_6300(v66, v67, &unk_8E2C8);
      v68 = sub_8CE5C();
      v70 = sub_862D8(v68, v69, &v98);
      v62 = v97;

      *(v65 + 4) = v70;
      *(v65 + 12) = 2080;
      *(v65 + 14) = sub_862D8(v96, v94, &v98);
      sub_65F0();
      _os_log_impl(v71, v72, v73, v74, v75, 0x16u);
      swift_arrayDestroy();
      sub_6538();

      sub_6538();
    }

    v76 = v77;
    sub_8AF4C();

    v57 = sub_8AF3C();
    v48(v76, v62);
  }

  return v57;
}

uint64_t sub_5BCC()
{
  v1 = OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin29AnnouncementSpeechSynthesizer_synthesisDirectoryURL;
  v2 = sub_8AF9C();
  sub_6574();
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin29AnnouncementSpeechSynthesizer_trimmedAudioDirectoryURL, v2);
  sub_2714((v0 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin29AnnouncementSpeechSynthesizer_fileManager));

  return v0;
}

uint64_t sub_5C88()
{
  sub_5BCC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

id sub_5D04()
{
  v1 = v0;
  sub_8AF5C(__stack_chk_guard);
  v3 = v2;
  sub_8AF5C(v4);
  v6 = v5;
  v9 = 0;
  LODWORD(v1) = [v1 moveItemAtURL:v3 toURL:v5 error:&v9];

  if (v1)
  {
    return v9;
  }

  v8 = v9;
  sub_8AF1C();

  return swift_willThrow();
}

id sub_5E0C(uint64_t a1, uint64_t a2, char a3, Class a4)
{
  v7 = sub_8CEAC();
  if (a4)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_6300(&qword_BF9F8, type metadata accessor for FileAttributeKey, &unk_8E2C8);
    a4 = sub_8CE3C().super.isa;
  }

  v11 = 0;
  v8 = [v4 createDirectoryAtPath:v7 withIntermediateDirectories:a3 & 1 attributes:a4 error:&v11];

  if (v8)
  {
    return v11;
  }

  v10 = v11;
  sub_8AF1C();

  return swift_willThrow();
}

id sub_5F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_8CEAC();
  v6 = [v3 fileExistsAtPath:v5 isDirectory:a3];

  return v6;
}

uint64_t type metadata accessor for AnnouncementSpeechSynthesizer(uint64_t a1)
{
  result = qword_BFE50;
  if (!qword_BFE50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_603C(uint64_t a1)
{
  result = sub_8AF9C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_60EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for FileAttributeKey(0);
  sub_6300(&qword_BF9F8, type metadata accessor for FileAttributeKey, &unk_8E2C8);
  isa = sub_8CE3C().super.isa;
  v5 = sub_8CEAC();
  v9 = 0;
  v6 = [v3 setAttributes:isa ofItemAtPath:v5 error:&v9];

  if (v6)
  {
    return v9;
  }

  v8 = v9;
  sub_8AF1C();

  return swift_willThrow();
}

void *sub_622C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_6298(uint64_t a1)
{
  v2 = sub_2664(&qword_BFF40, &unk_90F70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_6300(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_6348(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_8CEDC();

  return v4;
}

uint64_t sub_63B0()
{
  sub_2664(&qword_BFF48, &qword_8E4F0);
  sub_6574();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_643C(uint64_t a1)
{
  v2 = sub_2664(&qword_BFF48, &qword_8E4F0);
  sub_65E4(v2);

  return sub_4BAC(a1);
}

uint64_t sub_64B4(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  sub_6574();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_6630()
{

  return swift_slowAlloc();
}

void *sub_668C(uint64_t a1)
{
  v47 = sub_8C46C();
  sub_3488();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_9378();
  v46 = v5;
  __chkstk_darwin(v6);
  v45 = &v35 - v7;
  v8 = sub_8C29C();
  sub_3488();
  __chkstk_darwin(v9);
  sub_9378();
  v36 = v10;
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  v14 = 0;
  v15 = *(a1 + 16);
  v48 = a1;
  v49 = v15;
  v43 = v16 + 16;
  v42 = enum case for IdentifierAppBundle.abHomeKit(_:);
  v40 = (v3 + 8);
  v41 = (v3 + 104);
  v38 = (v16 + 8);
  v44 = v16;
  v35 = (v16 + 32);
  v37 = _swiftEmptyArrayStorage;
  while (v49 != v14)
  {
    v39 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v17 = *(v44 + 72);
    (*(v44 + 16))(v13, v48 + v39 + v17 * v14, v8);
    v18 = v45;
    sub_8C22C();
    v19 = v14;
    v21 = v46;
    v20 = v47;
    (*v41)(v46, v42, v47);
    v22 = sub_8C44C();
    v23 = v8;
    v24 = *v40;
    (*v40)(v21, v20);
    v24(v18, v20);
    if (v22)
    {
      v25 = v17;
      v26 = v39;
      v27 = *v35;
      (*v35)(v36, v13, v23);
      v28 = v37;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v28;
      v8 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_55174(0, v28[2] + 1, 1);
        v28 = v50;
      }

      v30 = v19;
      v31 = v25;
      v33 = v28[2];
      v32 = v28[3];
      if (v33 >= v32 >> 1)
      {
        sub_55174((v32 > 1), v33 + 1, 1);
        v28 = v50;
      }

      v14 = v30 + 1;
      v28[2] = v33 + 1;
      v37 = v28;
      v27(v28 + v26 + v33 * v31, v36, v23);
    }

    else
    {
      (*v38)(v13, v23);
      v14 = v19 + 1;
      v8 = v23;
    }
  }

  return v37;
}

void *sub_69E4(uint64_t a1)
{
  v47 = sub_8C29C();
  v2 = __chkstk_darwin(v47);
  v40 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v46 = &v37 - v4;
  v5 = 0;
  v6 = &_swiftEmptyDictionarySingleton;
  v48 = &_swiftEmptyDictionarySingleton;
  v7 = *(a1 + 16);
  v42 = v8;
  v43 = v7;
  v41 = v8 + 16;
  v44 = (v8 + 32);
  v38 = xmmword_8E3F0;
  v39 = a1;
  while (1)
  {
    if (v43 == v5)
    {

      return v6;
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    v9 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v10 = *(v42 + 72);
    v45 = v5;
    (*(v42 + 16))(v46, a1 + v9 + v10 * v5, v47);
    v11 = sub_8C24C();
    v12 = v11;
    v13 = HIDWORD(v11) & 1;
    v14 = v11;
    v16 = sub_71BD4(v11 | (v13 << 32));
    v17 = v6[2];
    v18 = (v15 & 1) == 0;
    v19 = v17 + v18;
    if (__OFADD__(v17, v18))
    {
      goto LABEL_19;
    }

    v20 = v15;
    if (v6[3] < v19)
    {
      sub_8228(v19, 1);
      v6 = v48;
      v21 = sub_71BD4(v14 | (v13 << 32));
      if ((v20 & 1) != (v22 & 1))
      {
        goto LABEL_21;
      }

      v16 = v21;
    }

    if (v20)
    {
      v23 = v6[7];
      v24 = *v44;
      (*v44)(v40, v46, v47);
      v25 = *(v23 + 8 * v16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v23 + 8 * v16) = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_75E7C();
        v25 = v34;
        *(v23 + 8 * v16) = v34;
      }

      v27 = *(v25 + 16);
      if (v27 >= *(v25 + 24) >> 1)
      {
        sub_75E7C();
        v25 = v35;
        *(v23 + 8 * v16) = v35;
      }

      a1 = v39;
      v28 = v40;
      *(v25 + 16) = v27 + 1;
      v24((v25 + v9 + v27 * v10), v28, v47);
    }

    else
    {
      sub_2664(&qword_C0018, &unk_927C0);
      v29 = swift_allocObject();
      *(v29 + 16) = v38;
      (*v44)((v29 + v9), v46, v47);
      v6[(v16 >> 6) + 8] |= 1 << v16;
      v30 = v6[6] + 8 * v16;
      *v30 = v12;
      *(v30 + 4) = v13;
      *(v6[7] + 8 * v16) = v29;
      v31 = v6[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_20;
      }

      v6[2] = v33;
      a1 = v39;
    }

    v5 = v45 + 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  sub_2664(&qword_C0020, &qword_90FC0);
  result = sub_8D4AC();
  __break(1u);
  return result;
}

void *sub_6D60(uint64_t a1)
{

  v2 = sub_69E4(v1);
  v4 = sub_816C(v2);
  sub_84E4(&v4);

  return v4;
}

uint64_t sub_6DD0(uint64_t *a1, void (**a2)(char *, uint64_t))
{
  v184 = a2;
  v187 = sub_8C48C();
  v3 = *(v187 - 8);
  __chkstk_darwin(v187);
  v168 = &v146 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2664(&qword_C0000, &qword_8E630);
  v6 = __chkstk_darwin(v5);
  v153 = &v146 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v160 = &v146 - v9;
  v10 = __chkstk_darwin(v8);
  v165 = &v146 - v11;
  __chkstk_darwin(v10);
  v13 = &v146 - v12;
  v14 = sub_2664(&qword_C0008, &qword_8FCD0);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v154 = &v146 - v19;
  v20 = __chkstk_darwin(v18);
  v157 = &v146 - v21;
  v22 = __chkstk_darwin(v20);
  v155 = &v146 - v23;
  v24 = __chkstk_darwin(v22);
  v156 = &v146 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v146 - v27;
  v29 = __chkstk_darwin(v26);
  v162 = &v146 - v30;
  v31 = __chkstk_darwin(v29);
  v161 = &v146 - v32;
  v33 = __chkstk_darwin(v31);
  v164 = &v146 - v34;
  v35 = __chkstk_darwin(v33);
  v172 = &v146 - v36;
  v37 = __chkstk_darwin(v35);
  v39 = &v146 - v38;
  __chkstk_darwin(v37);
  v185 = (&v146 - v40);
  v186 = sub_8C29C();
  v41 = __chkstk_darwin(v186);
  v158 = &v146 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v150 = &v146 - v44;
  v45 = __chkstk_darwin(v43);
  v159 = &v146 - v46;
  v47 = __chkstk_darwin(v45);
  v151 = &v146 - v48;
  v49 = __chkstk_darwin(v47);
  v167 = &v146 - v50;
  v51 = __chkstk_darwin(v49);
  v152 = &v146 - v52;
  v53 = __chkstk_darwin(v51);
  v55 = &v146 - v54;
  __chkstk_darwin(v53);
  v58 = *a1;
  v176 = *(*a1 + 16);
  if (!v176)
  {
    return 0;
  }

  v149 = &v146 - v56;
  v146 = v17;
  v59 = 0;
  v163 = *v184;
  v147 = (*(v57 + 80) + 32) & ~*(v57 + 80);
  v178 = (v58 + v147);
  v183 = v57 + 16;
  v182 = (v3 + 104);
  v166 = (v3 + 32);
  v181 = enum case for IdentifierNamespace.nsMatchInfo(_:);
  v173 = (v3 + 8);
  v174 = v55;
  v184 = (v57 + 8);
  v170 = v5;
  v148 = v28;
  v175 = v58;
  v177 = v57;
  while (1)
  {
    if (v59 >= *(v58 + 16))
    {
      __break(1u);
LABEL_53:
      sub_92C0(v39, &qword_C0008, &qword_8FCD0);
LABEL_54:
      v137 = v151;
      v138 = v186;
      v171(v151, v159, v186);
      v139 = sub_8C27C();
      v141 = v140;
      v185(v137, v138);
      if (v139 == 0xD00000000000001BLL && 0x80000000000953B0 == v141)
      {

        return 0;
      }

      v143 = sub_8D45C();

      v104 = v170;
      if (v143)
      {
        return 0;
      }

LABEL_40:
      v120 = 0;
      v121 = v153;
      v122 = v154;
      v123 = v149;
      while (1)
      {
        if (v120 >= *(v163 + 2))
        {
          goto LABEL_64;
        }

        v180(v158, v123, v186);
        sub_8C23C();
        v124 = v157;
        v125 = v187;
        v179(v122, v181, v187);
        sub_6270(v122, 0, 1, v125);
        v126 = *(v104 + 48);
        sub_9250(v124, v121);
        sub_9250(v122, v121 + v126);
        if (sub_3364(v121, 1, v125) == 1)
        {
          break;
        }

        v127 = v146;
        sub_9250(v121, v146);
        if (sub_3364(v121 + v126, 1, v187) == 1)
        {
          v128 = v154;
          sub_92C0(v154, &qword_C0008, &qword_8FCD0);
          sub_92C0(v124, &qword_C0008, &qword_8FCD0);
          v129 = v127;
          v122 = v128;
          (*v173)(v129, v187);
LABEL_47:
          sub_92C0(v121, &qword_C0000, &qword_8E630);
          goto LABEL_49;
        }

        v130 = v187;
        v131 = v168;
        (*v166)(v168, v121 + v126, v187);
        sub_9320();
        LODWORD(v178) = sub_8CE9C();
        v132 = *v173;
        v133 = v131;
        v134 = v130;
        (*v173)(v133, v130);
        v135 = v154;
        sub_92C0(v154, &qword_C0008, &qword_8FCD0);
        sub_92C0(v157, &qword_C0008, &qword_8FCD0);
        v136 = v127;
        v122 = v135;
        v132(v136, v134);
        v121 = v153;
        sub_92C0(v153, &qword_C0008, &qword_8FCD0);
        if (v178)
        {
          goto LABEL_61;
        }

LABEL_49:
        ++v120;
        v185(v158, v186);
        v104 = v170;
        v123 += v169;
        result = 1;
        if (v174 == v120)
        {
          return result;
        }
      }

      sub_92C0(v122, &qword_C0008, &qword_8FCD0);
      sub_92C0(v124, &qword_C0008, &qword_8FCD0);
      if (sub_3364(v121 + v126, 1, v187) == 1)
      {
        sub_92C0(v121, &qword_C0008, &qword_8FCD0);
LABEL_61:
        v144 = v150;
        v145 = v186;
        v171(v150, v158, v186);
        sub_8C27C();

        v185(v144, v145);
        return 1;
      }

      goto LABEL_47;
    }

    v60 = *(v57 + 72);
    v180 = *(v57 + 16);
    v180(v55, &v178[v60 * v59], v186);
    v61 = v185;
    sub_8C23C();
    v62 = v187;
    v179 = *v182;
    v179(v39, v181, v187);
    sub_6270(v39, 0, 1, v62);
    v63 = *(v5 + 48);
    sub_9250(v61, v13);
    sub_9250(v39, &v13[v63]);
    if (sub_3364(v13, 1, v62) == 1)
    {
      break;
    }

    v65 = v172;
    sub_9250(v13, v172);
    if (sub_3364(&v13[v63], 1, v187) != 1)
    {
      v169 = v60;
      v66 = &v13[v63];
      v67 = v187;
      v68 = v168;
      (*v166)(v168, v66, v187);
      sub_9320();
      LODWORD(v171) = sub_8CE9C();
      v69 = *v173;
      (*v173)(v68, v67);
      sub_92C0(v39, &qword_C0008, &qword_8FCD0);
      sub_92C0(v185, &qword_C0008, &qword_8FCD0);
      v69(v65, v67);
      v5 = v170;
      v55 = v174;
      sub_92C0(v13, &qword_C0008, &qword_8FCD0);
      if (v171)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    v64 = v5;
    sub_92C0(v39, &qword_C0008, &qword_8FCD0);
    sub_92C0(v185, &qword_C0008, &qword_8FCD0);
    (*v173)(v65, v187);
LABEL_9:
    sub_92C0(v13, &qword_C0000, &qword_8E630);
    v5 = v64;
LABEL_11:
    ++v59;
    (*v184)(v55, v186);
    v57 = v177;
    v58 = v175;
    if (v176 == v59)
    {
      return 0;
    }
  }

  v64 = v5;
  sub_92C0(v39, &qword_C0008, &qword_8FCD0);
  v55 = v174;
  sub_92C0(v61, &qword_C0008, &qword_8FCD0);
  if (sub_3364(&v13[v63], 1, v187) != 1)
  {
    goto LABEL_9;
  }

  v169 = v60;
  sub_92C0(v13, &qword_C0008, &qword_8FCD0);
LABEL_13:
  v71 = v177 + 32;
  v70 = *(v177 + 32);
  v72 = v149;
  v73 = v186;
  v70(v149, v55, v186);
  v74 = sub_8C20C();
  v76 = v75;
  v177 = v71;
  v185 = *(v71 - 24);
  result = (v185)(v72, v73);
  if (v76)
  {
    return 0;
  }

  v78 = v163;
  v174 = *(v163 + 2);
  if (!v174)
  {
    return 1;
  }

  v171 = v70;
  v79 = 0;
  v80 = *&v74;
  v81 = v163 + v147;
  v149 = v163 + v147;
  v39 = v160;
  v82 = v161;
  while (2)
  {
    if (v79 >= *(v78 + 2))
    {
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      return result;
    }

    v180(v167, v81, v186);
    v83 = v164;
    sub_8C23C();
    v84 = v187;
    v179(v82, v181, v187);
    sub_6270(v82, 0, 1, v84);
    v85 = *(v170 + 48);
    v86 = v165;
    sub_9250(v83, v165);
    sub_9250(v82, v86 + v85);
    if (sub_3364(v86, 1, v84) != 1)
    {
      v88 = v162;
      sub_9250(v86, v162);
      if (sub_3364(v86 + v85, 1, v187) != 1)
      {
        v91 = v86 + v85;
        v92 = v187;
        v93 = v168;
        (*v166)(v168, v91, v187);
        sub_9320();
        LODWORD(v172) = sub_8CE9C();
        v94 = *v173;
        v95 = v93;
        v96 = v92;
        (*v173)(v95, v92);
        v97 = v161;
        sub_92C0(v161, &qword_C0008, &qword_8FCD0);
        sub_92C0(v83, &qword_C0008, &qword_8FCD0);
        v82 = v97;
        v94(v162, v96);
        v39 = v160;
        sub_92C0(v165, &qword_C0008, &qword_8FCD0);
        if (v172)
        {
          goto LABEL_27;
        }

LABEL_25:
        ++v79;
        result = (v185)(v167, v186);
        v81 += v169;
        v78 = v163;
        if (v174 == v79)
        {
          return 1;
        }

        continue;
      }

      v87 = v39;
      v89 = v161;
      sub_92C0(v161, &qword_C0008, &qword_8FCD0);
      sub_92C0(v83, &qword_C0008, &qword_8FCD0);
      v90 = v88;
      v82 = v89;
      (*v173)(v90, v187);
LABEL_23:
      sub_92C0(v86, &qword_C0000, &qword_8E630);
      v39 = v87;
      goto LABEL_25;
    }

    break;
  }

  v87 = v39;
  sub_92C0(v82, &qword_C0008, &qword_8FCD0);
  sub_92C0(v83, &qword_C0008, &qword_8FCD0);
  if (sub_3364(v86 + v85, 1, v187) != 1)
  {
    goto LABEL_23;
  }

  sub_92C0(v86, &qword_C0008, &qword_8FCD0);
LABEL_27:
  v98 = v152;
  v99 = v186;
  v171(v152, v167, v186);
  v100 = COERCE_DOUBLE(sub_8C20C());
  v102 = v101;
  result = (v185)(v98, v99);
  if (v102)
  {
    return 1;
  }

  if (v80 == v100)
  {
    v103 = 0;
    v181 = enum case for IdentifierNamespace.nsHomeKitEntityType(_:);
    v104 = v170;
    v105 = v156;
    while (1)
    {
      if (v103 >= *(v175 + 16))
      {
        goto LABEL_63;
      }

      v180(v159, v178, v186);
      v106 = v148;
      sub_8C23C();
      v107 = v187;
      v179(v105, v181, v187);
      sub_6270(v105, 0, 1, v107);
      v108 = *(v104 + 48);
      sub_9250(v106, v39);
      sub_9250(v105, &v39[v108]);
      if (sub_3364(v39, 1, v107) == 1)
      {
        sub_92C0(v105, &qword_C0008, &qword_8FCD0);
        sub_92C0(v106, &qword_C0008, &qword_8FCD0);
        if (sub_3364(&v39[v108], 1, v187) == 1)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v109 = v155;
        sub_9250(v39, v155);
        if (sub_3364(&v39[v108], 1, v187) != 1)
        {
          v112 = &v39[v108];
          v113 = v187;
          v114 = v168;
          (*v166)(v168, v112, v187);
          sub_9320();
          LODWORD(v172) = sub_8CE9C();
          v115 = *v173;
          v116 = v114;
          v117 = v113;
          (*v173)(v116, v113);
          v118 = v156;
          sub_92C0(v156, &qword_C0008, &qword_8FCD0);
          sub_92C0(v106, &qword_C0008, &qword_8FCD0);
          v119 = v109;
          v105 = v118;
          v115(v119, v117);
          v39 = v160;
          v104 = v170;
          sub_92C0(v160, &qword_C0008, &qword_8FCD0);
          if (v172)
          {
            goto LABEL_54;
          }

          goto LABEL_39;
        }

        v110 = v156;
        sub_92C0(v156, &qword_C0008, &qword_8FCD0);
        sub_92C0(v106, &qword_C0008, &qword_8FCD0);
        v111 = v109;
        v105 = v110;
        (*v173)(v111, v187);
      }

      sub_92C0(v39, &qword_C0000, &qword_8E630);
LABEL_39:
      ++v103;
      result = (v185)(v159, v186);
      v178 += v169;
      if (v176 == v103)
      {
        goto LABEL_40;
      }
    }
  }

  return v100 < v80;
}

void *sub_816C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = sub_76558(*(a1 + 16), 0);
  v4 = sub_90F0(&v7, v3 + 4, v1, a1);
  v5 = v7;

  sub_9248(v5);
  if (v4 != v1)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v3;
}

uint64_t sub_8228(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2664(&qword_C0028, &qword_8E638);
  v35 = v4;
  result = sub_8D36C();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v7;
    return result;
  }

  v34 = v5;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      sub_76D44(0, (v33 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(v5 + 56);
    v20 = *(v5 + 48) + 8 * v18;
    v21 = *v20;
    v22 = *(v20 + 4);
    v23 = *(v19 + 8 * v18);
    if ((v35 & 1) == 0)
    {
    }

    sub_8D50C();
    if (v22)
    {
      sub_8D52C(0);
    }

    else
    {
      sub_8D52C(1u);
      sub_8D53C(v21);
    }

    result = sub_8D54C();
    v24 = -1 << *(v7 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = *(v7 + 48) + 8 * v27;
    *v32 = v21;
    *(v32 + 4) = v22;
    *(*(v7 + 56) + 8 * v27) = v23;
    ++*(v7 + 16);
    v5 = v34;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v14 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

Swift::Int sub_84E4(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_8A118(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_8550(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_8550(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_8D42C(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_2664(&qword_BFFF8, &qword_8E628);
        v6 = sub_8D07C();
        v6[2] = v5;
      }

      v7[0] = v6 + 4;
      v7[1] = v5;
      sub_874C(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_8654(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_8654(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v5 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = result - a3;
LABEL_4:
    v9 = *(v6 + 8 * v5);
    v10 = v8;
    v15 = v7;
    while (1)
    {
      v17 = v9;
      v16 = *v7;

      v11 = sub_6DD0(&v17, &v16);

      if (v4)
      {
        break;
      }

      if (v11)
      {
        if (!v6)
        {
          __break(1u);
          return result;
        }

        v12 = *v7;
        v9 = *(v7 + 8);
        *v7 = v9;
        *(v7 + 8) = v12;
        v7 -= 8;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v5;
      v7 = v15 + 8;
      --v8;
      if (v5 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_874C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_93:
    v99 = *v95;
    if (*v95)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_129;
      }

      goto LABEL_95;
    }

    goto LABEL_138;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v96 = v8;
      v10 = *a3;
      v102 = *(*a3 + 8 * v7);
      v101 = *(v10 + 8 * v9);

      LODWORD(v99) = sub_6DD0(&v102, &v101);
      if (v5)
      {
LABEL_106:
      }

      v11 = 8 * v9;
      v12 = v9;
      v13 = (v10 + 8 * v9 + 16);
      v93 = v12;
      v14 = v12 + 2;
      while (1)
      {
        v15 = v14;
        if (v7 + 1 >= v6)
        {
          break;
        }

        v16 = v6;
        v17 = *(v13 - 1);
        v102 = *v13;
        v101 = v17;

        v18 = sub_6DD0(&v102, &v101);

        v19 = v99 ^ v18;
        ++v13;
        ++v7;
        v14 = v15 + 1;
        v6 = v16;
        if (v19)
        {
          goto LABEL_10;
        }
      }

      v7 = v6;
LABEL_10:
      if (v99)
      {
        v9 = v93;
        if (v7 < v93)
        {
          goto LABEL_132;
        }

        v8 = v96;
        if (v93 < v7)
        {
          if (v6 >= v15)
          {
            v20 = v15;
          }

          else
          {
            v20 = v6;
          }

          v21 = 8 * v20 - 8;
          v22 = v7;
          v23 = v93;
          do
          {
            if (v23 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_136;
              }

              v25 = *(v24 + v11);
              *(v24 + v11) = *(v24 + v21);
              *(v24 + v21) = v25;
            }

            ++v23;
            v21 -= 8;
            v11 += 8;
          }

          while (v23 < v22);
        }
      }

      else
      {
        v8 = v96;
        v9 = v93;
      }
    }

    v26 = a3[1];
    if (v7 >= v26)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v7, v9))
    {
      goto LABEL_128;
    }

    if (v7 - v9 >= a4)
    {
      goto LABEL_32;
    }

    if (__OFADD__(v9, a4))
    {
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
      return result;
    }

    if (v9 + a4 >= v26)
    {
      v27 = a3[1];
    }

    else
    {
      v27 = v9 + a4;
    }

    if (v27 < v9)
    {
      goto LABEL_131;
    }

    if (v7 != v27)
    {
      v98 = v8;
      v73 = v9;
      v74 = *a3;
      v75 = *a3 + 8 * v7 - 8;
      v94 = v73;
      v76 = v73 - v7;
      v91 = v27;
      do
      {
        v77 = *(v74 + 8 * v7);
        v78 = v76;
        v99 = v75;
        do
        {
          v102 = v77;
          v101 = *v75;

          v79 = sub_6DD0(&v102, &v101);
          if (v5)
          {
            goto LABEL_106;
          }

          v80 = v79;

          if ((v80 & 1) == 0)
          {
            break;
          }

          if (!v74)
          {
            goto LABEL_135;
          }

          v81 = *v75;
          v77 = *(v75 + 8);
          *v75 = v77;
          *(v75 + 8) = v81;
          v75 -= 8;
        }

        while (!__CFADD__(v78++, 1));
        ++v7;
        v75 = v99 + 8;
        --v76;
      }

      while (v7 != v91);
      v7 = v91;
      v8 = v98;
      v9 = v94;
    }

LABEL_32:
    if (v7 < v9)
    {
      goto LABEL_127;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_75F54(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v29 = v8[2];
    v28 = v8[3];
    v30 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      result = sub_75F54((v28 > 1), v29 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v30;
    v31 = v8 + 4;
    v32 = &v8[2 * v29 + 4];
    *v32 = v9;
    v32[1] = v7;
    v97 = *v95;
    if (!*v95)
    {
      goto LABEL_137;
    }

    if (v29)
    {
      break;
    }

LABEL_81:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_93;
    }
  }

  while (1)
  {
    v33 = v30 - 1;
    v34 = &v31[2 * v30 - 2];
    v35 = &v8[2 * v30];
    if (v30 >= 4)
    {
      v40 = &v31[2 * v30];
      v41 = *(v40 - 8);
      v42 = *(v40 - 7);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_115;
      }

      v45 = *(v40 - 6);
      v44 = *(v40 - 5);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_116;
      }

      v47 = v35[1];
      v48 = v47 - *v35;
      if (__OFSUB__(v47, *v35))
      {
        goto LABEL_118;
      }

      v46 = __OFADD__(v38, v48);
      v49 = v38 + v48;
      if (v46)
      {
        goto LABEL_121;
      }

      if (v49 >= v43)
      {
        v63 = *v34;
        v62 = v34[1];
        v46 = __OFSUB__(v62, v63);
        v64 = v62 - v63;
        if (v46)
        {
          goto LABEL_126;
        }

        if (v38 < v64)
        {
          v33 = v30 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_52;
    }

    if (v30 == 3)
    {
      v36 = v8[4];
      v37 = v8[5];
      v46 = __OFSUB__(v37, v36);
      v38 = v37 - v36;
      v39 = v46;
LABEL_52:
      if (v39)
      {
        goto LABEL_117;
      }

      v51 = *v35;
      v50 = v35[1];
      v52 = __OFSUB__(v50, v51);
      v53 = v50 - v51;
      v54 = v52;
      if (v52)
      {
        goto LABEL_120;
      }

      v55 = v34[1];
      v56 = v55 - *v34;
      if (__OFSUB__(v55, *v34))
      {
        goto LABEL_123;
      }

      if (__OFADD__(v53, v56))
      {
        goto LABEL_125;
      }

      if (v53 + v56 >= v38)
      {
        if (v38 < v56)
        {
          v33 = v30 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_67;
    }

    if (v30 < 2)
    {
      goto LABEL_119;
    }

    v58 = *v35;
    v57 = v35[1];
    v46 = __OFSUB__(v57, v58);
    v53 = v57 - v58;
    v54 = v46;
LABEL_67:
    if (v54)
    {
      goto LABEL_122;
    }

    v60 = *v34;
    v59 = v34[1];
    v46 = __OFSUB__(v59, v60);
    v61 = v59 - v60;
    if (v46)
    {
      goto LABEL_124;
    }

    if (v61 < v53)
    {
      goto LABEL_81;
    }

LABEL_74:
    if (v33 - 1 >= v30)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_133;
    }

    v65 = &v31[2 * v33 - 2];
    v66 = *v65;
    v67 = v33;
    v68 = &v31[2 * v33];
    v69 = *(v68 + 1);
    sub_8DE0((*a3 + 8 * *v65), (*a3 + 8 * *v68), (*a3 + 8 * v69), v97);
    if (v5)
    {
    }

    if (v69 < v66)
    {
      goto LABEL_109;
    }

    v99 = 0;
    v5 = v31;
    v70 = v7;
    v71 = v8;
    v8 = v8[2];
    if (v67 > v8)
    {
      goto LABEL_110;
    }

    *v65 = v66;
    v65[1] = v69;
    if (v67 >= v8)
    {
      goto LABEL_111;
    }

    v30 = v8 - 1;
    result = sub_89FEC(v68 + 16, v8 - v67 - 1, v68);
    v71[2] = v8 - 1;
    v72 = v8 > 2;
    v8 = v71;
    v7 = v70;
    v31 = v5;
    v5 = 0;
    if (!v72)
    {
      goto LABEL_81;
    }
  }

  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  result = sub_89EF8(v8);
  v8 = result;
LABEL_95:
  v83 = v8;
  v84 = v8 + 2;
  for (i = v8[2]; ; *v84 = i)
  {
    v8 = (i - 2);
    if (i < 2)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_134;
    }

    v86 = &v83[2 * i];
    v87 = *v86;
    v88 = &v84[2 * i];
    v89 = *(v88 + 1);
    sub_8DE0((*a3 + 8 * *v86), (*a3 + 8 * *v88), (*a3 + 8 * v89), v99);
    if (v5)
    {
      break;
    }

    if (v89 < v87)
    {
      goto LABEL_112;
    }

    if (v8 >= *v84)
    {
      goto LABEL_113;
    }

    *v86 = v87;
    v86[1] = v89;
    v90 = *v84 - i;
    if (*v84 < i)
    {
      goto LABEL_114;
    }

    i = *v84 - 1;
    result = sub_89FEC(v88 + 16, v90, v88);
  }
}

uint64_t sub_8DE0(void (**a1)(char *, uint64_t), void (**a2)(char *, uint64_t), void (**a3)(char *, uint64_t), uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = a2 - a1;
  v10 = a3 - a2;
  if (v9 < v10)
  {
    sub_77294(a1, a2 - a1, a4);
    v12 = a4;
    for (i = (a4 + 8 * v9); ; i = v15)
    {
      if (v12 >= i || v7 >= v6)
      {
        v7 = v8;
        goto LABEL_30;
      }

      v15 = i;
      v16 = v6;
      v48 = *v7;
      v17 = v12;
      v47 = *v12;

      v18 = sub_6DD0(&v48, &v47);
      if (v4)
      {

        v12 = v17;
        v39 = v15 - v17;
        v40 = v8 < v17 || v8 >= &v17[v39];
        if (v40 || v8 != v17)
        {
          v37 = 8 * v39;
          v38 = v8;
          goto LABEL_50;
        }

        return 1;
      }

      v19 = v18;

      if ((v19 & 1) == 0)
      {
        break;
      }

      v20 = v7;
      v21 = v8 == v7++;
      v12 = v17;
      if (!v21)
      {
        goto LABEL_13;
      }

LABEL_14:
      ++v8;
      v6 = v16;
    }

    v20 = v17;
    v12 = v17 + 1;
    if (v8 == v17)
    {
      goto LABEL_14;
    }

LABEL_13:
    *v8 = *v20;
    goto LABEL_14;
  }

  sub_77294(a2, a3 - a2, a4);
  v12 = a4;
  i = (a4 + 8 * v10);
  v23 = -a4;
  v44 = v8;
  v45 = a4;
LABEL_16:
  v24 = (v7 - 1);
  v25 = v6 - 1;
  v26 = i + v23;
  v46 = v7;
  while (1)
  {
    if (i <= v12 || v7 <= v8)
    {
LABEL_30:
      v35 = i - v12;
      v36 = v7 < v12 || v7 >= &v12[v35];
      if (v36 || v7 != v12)
      {
        v37 = 8 * v35;
        v38 = v7;
        goto LABEL_50;
      }

      return 1;
    }

    v28 = v25;
    v29 = v5;
    v30 = i;
    v31 = i - 1;
    v48 = *(i - 1);
    v32 = v24;
    v47 = *v24;

    v33 = sub_6DD0(&v48, &v47);
    if (v29)
    {
      break;
    }

    v34 = v33;

    if (v34)
    {
      v6 = v28;
      v12 = v45;
      v21 = v28 + 1 == v46;
      v7 = v32;
      v8 = v44;
      i = v30;
      v5 = 0;
      if (!v21)
      {
        *v6 = *v32;
        v7 = v32;
      }

      goto LABEL_16;
    }

    v24 = v32;
    if (v30 != v28 + 1)
    {
      *v28 = *v31;
    }

    v25 = v28 - 1;
    v26 -= 8;
    i = v31;
    v8 = v44;
    v12 = v45;
    v7 = v46;
    v5 = 0;
  }

  v41 = v26 / 8;
  v12 = v45;
  v38 = v46;
  if (v46 < v45 || v46 >= &v45[v26 / 8])
  {
    memmove(v46, v45, 8 * v41);
  }

  else if (v46 != v45)
  {
    v37 = 8 * v41;
LABEL_50:
    memmove(v38, v12, v37);
  }

  return 1;
}

void *sub_90F0(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v15 << 9) | (8 * v16)));
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      ++v11;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_9250(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_C0008, &qword_8FCD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_92C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2664(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_9320()
{
  result = qword_C0010;
  if (!qword_C0010)
  {
    sub_8C48C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0010);
  }

  return result;
}

uint64_t sub_9394(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BaseFlow();
  sub_982C();
  return sub_8B34C();
}

uint64_t sub_9410()
{
  sub_8B7FC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_9494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_9544;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_9544(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_9664(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_96FC;

  return sub_93F0(a1);
}

uint64_t sub_96FC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_97F0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for BaseFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

unint64_t sub_982C()
{
  result = qword_C00E0;
  if (!qword_C00E0)
  {
    type metadata accessor for BaseFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C00E0);
  }

  return result;
}

HomeCommunicationFlowDelegatePlugin::ABCErrorType_optional __swiftcall ABCErrorType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v6._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_B6DA8;
  v6._object = object;
  v3 = sub_8D39C(v2, v6);

  if (v3 == 1)
  {
    v4.value = HomeCommunicationFlowDelegatePlugin_ABCErrorType_error;
  }

  else
  {
    v4.value = HomeCommunicationFlowDelegatePlugin_ABCErrorType_unknownDefault;
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

uint64_t ABCErrorType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x726F727265;
  }

  else
  {
    return 0x6775626564;
  }
}

HomeCommunicationFlowDelegatePlugin::ABCErrorType_optional sub_9920@<W0>(Swift::String *a1@<X0>, HomeCommunicationFlowDelegatePlugin::ABCErrorType_optional *a2@<X8>)
{
  result.value = ABCErrorType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_9950@<X0>(uint64_t *a1@<X8>)
{
  result = ABCErrorType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = 0xE500000000000000;
  return result;
}

HomeCommunicationFlowDelegatePlugin::ABCErrorSubType_optional __swiftcall ABCErrorSubType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v5._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_B6DF8;
  v5._object = object;
  v3 = sub_8D39C(v2, v5);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t ABCErrorSubType.rawValue.getter(char a1)
{
  result = 0x636972656E6567;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      return result;
    default:
      result = 0xD00000000000001ELL;
      break;
  }

  return result;
}

unint64_t sub_9A6C()
{
  result = qword_C00E8;
  if (!qword_C00E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C00E8);
  }

  return result;
}

unint64_t sub_9AD0()
{
  result = qword_C00F0[0];
  if (!qword_C00F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_C00F0);
  }

  return result;
}

HomeCommunicationFlowDelegatePlugin::ABCErrorSubType_optional sub_9B3C@<W0>(Swift::String *a1@<X0>, HomeCommunicationFlowDelegatePlugin::ABCErrorSubType_optional *a2@<X8>)
{
  result.value = ABCErrorSubType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t sub_9B6C@<X0>(unint64_t *a1@<X8>)
{
  result = ABCErrorSubType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for ABCErrorType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ABCErrorType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x9CFCLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ABCErrorSubType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ABCErrorSubType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x9E9CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_9F38(uint64_t *a1, void (*a2)(uint64_t, void), uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = *a1;
  v7 = *(a1 + 64);
  if (v7)
  {
    swift_errorRetain();
  }

  else
  {
    sub_AE8C(a1);
    sub_AE24(v10, v20, &qword_C0178, &qword_8E8C8);
    sub_9FFC(v21, a4, a5, v20);
    sub_AEB4(v11, v12, v13, v14, v15, v16, v17, v18, v20[0], v20[1], v20[2], v20[3], v20[4], v20[5], v20[6], v20[7], v20[8], v20[9], *&v21[0], *(&v21[0] + 1), *&v21[1], *(&v21[1] + 1), v21[2]);
    sub_92C0(v20, &qword_C0180, &unk_8E8D0);
  }

  a2(v6, v7 & 1);
  return sub_ADD8(v6, v7 & 1);
}

void sub_9FFC(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = a1[1];
  v57 = *a1;
  v5 = a1[3];
  v61 = a1[2];
  v53 = a1[5];
  v54 = a1[4];
  v47 = a1[6];
  v48 = a1[7];
  if (qword_BF848 != -1)
  {
    swift_once();
  }

  v6 = sub_8B71C();
  if (qword_BF850 != -1)
  {
    swift_once();
  }

  v50 = sub_8B71C();
  if (qword_BF858 != -1)
  {
    swift_once();
  }

  v55 = sub_8B71C();
  sub_ADE4(0, &qword_C2290, SAUIConfirmationOption_ptr);

  v7 = sub_8CEDC();
  v9 = v8;
  v10 = sub_8CEDC();
  v12 = v11;
  sub_2664(&qword_C0690, &unk_8EBF0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_8E860;
  *(v13 + 32) = v6;
  v62 = v6;
  v52 = sub_49108(v57, v4, v7, v9, v10, v12, v13);

  v14 = sub_8CEDC();
  v16 = v15;
  v17 = sub_8CEDC();
  v19 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_8E860;
  *(v20 + 32) = v50;
  v58 = v50;
  v51 = sub_49108(v61, v5, v14, v16, v17, v19, v20);

  v21 = sub_8CEDC();
  v23 = v22;
  v24 = sub_8CEDC();
  v26 = v25;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_8E860;
  *(v27 + 32) = v55;
  v56 = v55;
  v28 = sub_49108(v54, v53, v21, v23, v24, v26, v27);
  sub_ADE4(0, &qword_C0188, SAUIConfirmationOptions_ptr);
  v29 = v28;
  v30 = v51;
  v31 = v52;
  v32 = sub_491D8();
  if (a3)
  {
    v33 = a3;
    v34 = a2;
  }

  else
  {

    v33 = v48;

    v34 = v47;
  }

  v35 = qword_BF818;

  if (v35 != -1)
  {
    swift_once();
  }

  v36 = sub_8CD0C();
  sub_33F4(v36, qword_C3DF8);

  v37 = sub_8CCEC();
  v38 = sub_8D11C();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v60 = v31;
    v40 = v30;
    v41 = v29;
    v42 = v32;
    v43 = swift_slowAlloc();
    v64 = v43;
    *v39 = 136315138;

    v44 = sub_862D8(v34, v33, &v64);

    *(v39 + 4) = v44;
    _os_log_impl(&dword_0, v37, v38, "Making a CarPlay snippet to stop announcements with an announcer name: %s.", v39, 0xCu);
    sub_2714(v43);
    v32 = v42;
    v29 = v41;
    v30 = v40;
    v31 = v60;
  }

  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_8E860;
  sub_ADE4(0, &qword_C0190, SAHomeCommunicationAnnouncementSnippet_ptr);
  v46 = v32;
  *(v45 + 32) = sub_493D4();

  *a4 = v45;
}

uint64_t sub_A5A8(uint64_t *a1, void (*a2)(uint64_t, void), uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = *(a1 + 64);
  if (v6)
  {
    swift_errorRetain();
  }

  else
  {
    sub_AE8C(a1);
    sub_AE24(v7, v17, &qword_C0198, &qword_8E8E0);
    sub_A664(v18, v17);
    sub_AEB4(v8, v9, v10, v11, v12, v13, v14, v15, v17[0], v17[1], v17[2], v17[3], v17[4], v17[5], v17[6], v17[7], v17[8], v17[9], *&v18[0], *(&v18[0] + 1), *&v18[1], *(&v18[1] + 1), v18[2]);
    sub_92C0(v17, &qword_C01A0, &qword_8E8E8);
  }

  a2(v5, v6 & 1);
  return sub_ADD8(v5, v6 & 1);
}

void sub_A664(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[3];
  v54 = *a1;
  v56 = a1[2];
  v50 = a1[4];
  v49 = a1[5];
  v45 = a1[7];
  v46 = a1[6];
  if (qword_BF848 != -1)
  {
    swift_once();
  }

  v4 = sub_8B71C();
  if (qword_BF840 != -1)
  {
    swift_once();
  }

  v5 = sub_8B71C();
  if (qword_BF858 != -1)
  {
    swift_once();
  }

  v51 = sub_8B71C();
  sub_ADE4(0, &qword_C2290, SAUIConfirmationOption_ptr);

  v6 = sub_8CEDC();
  v8 = v7;
  v9 = sub_8CEDC();
  v11 = v10;
  sub_2664(&qword_C0690, &unk_8EBF0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_8E860;
  *(v12 + 32) = v4;
  v57 = v4;
  v48 = sub_49108(v54, v2, v6, v8, v9, v11, v12);

  v13 = sub_8CEDC();
  v15 = v14;
  v16 = sub_8CEDC();
  v18 = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_8E860;
  *(v19 + 32) = v5;
  v55 = v5;
  v47 = sub_49108(v56, v3, v13, v15, v16, v18, v19);

  v20 = sub_8CEDC();
  v22 = v21;
  v23 = sub_8CEDC();
  v25 = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_8E860;
  *(v26 + 32) = v51;
  v52 = v51;
  v27 = sub_49108(v50, v49, v20, v22, v23, v25, v26);
  sub_75540();
  v29 = sub_75AD4(v28);
  v31 = v30;

  if (!v31)
  {

    v31 = v45;

    v29 = v46;
  }

  sub_ADE4(0, &qword_C0188, SAUIConfirmationOptions_ptr);
  v32 = v27;
  v33 = v47;
  v34 = v48;
  v35 = sub_491D8();
  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v36 = sub_8CD0C();
  sub_33F4(v36, qword_C3DF8);

  v37 = sub_8CCEC();
  v38 = sub_8D11C();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v59 = v53;
    *v39 = 136315138;

    v40 = sub_862D8(v29, v31, &v59);
    v41 = v35;
    v42 = v40;

    *(v39 + 4) = v42;
    v35 = v41;
    _os_log_impl(&dword_0, v37, v38, "Making a CarPlay snippet to play announcements with an announcer name: %s.", v39, 0xCu);
    sub_2714(v53);
  }

  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_8E860;
  sub_ADE4(0, &qword_C0190, SAHomeCommunicationAnnouncementSnippet_ptr);
  v44 = v35;
  *(v43 + 32) = sub_493D4();

  *a2 = v43;
}

void *sub_ACF4()
{
  v0 = sub_8BB5C();

  sub_2714((v0 + *(*v0 + qword_C3D60 + 24)));
  return v0;
}

uint64_t sub_AD90()
{
  v0 = sub_ACF4();

  return _swift_deallocClassInstance(v0, 64, 7);
}

uint64_t sub_ADD8(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_ADE4(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_AE24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2664(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t CarPlayIntercomControlModel.playStopText.getter()
{
  sub_2664(&qword_C01A8, &qword_8E8F0);
  sub_8B07C();
  return v1;
}

uint64_t (*CarPlayIntercomControlModel.playStopText.modify(uint64_t *a1))()
{
  v2 = sub_AFF4(0x28uLL);
  *a1 = v2;
  sub_2664(&qword_C01A8, &qword_8E8F0);
  v2[4] = sub_8B06C();
  return sub_AFF0;
}

void *sub_AFF4(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t CarPlayIntercomControlModel.replyText.getter()
{
  type metadata accessor for CarPlayIntercomControlModel(0);
  sub_2664(&qword_C01A8, &qword_8E8F0);
  sub_8B07C();
  return v1;
}

uint64_t type metadata accessor for CarPlayIntercomControlModel(uint64_t a1)
{
  result = qword_C0258;
  if (!qword_C0258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CarPlayIntercomControlModel.replyText.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CarPlayIntercomControlModel(0);
  sub_2664(&qword_C01A8, &qword_8E8F0);
  return sub_8B08C();
}

uint64_t (*CarPlayIntercomControlModel.replyText.modify(void *a1))()
{
  v2 = sub_AFF4(0x28uLL);
  *a1 = v2;
  type metadata accessor for CarPlayIntercomControlModel(0);
  sub_2664(&qword_C01A8, &qword_8E8F0);
  v2[4] = sub_8B06C();
  return sub_C5E0;
}

uint64_t CarPlayIntercomControlModel.isPlaying.getter()
{
  type metadata accessor for CarPlayIntercomControlModel(0);
  sub_2664(&qword_C01B0, &qword_8E8F8);
  sub_8B07C();
  return v1;
}

uint64_t CarPlayIntercomControlModel.isPlaying.setter(char a1)
{
  type metadata accessor for CarPlayIntercomControlModel(0);
  sub_2664(&qword_C01B0, &qword_8E8F8);
  return sub_8B08C();
}

uint64_t (*CarPlayIntercomControlModel.isPlaying.modify(void *a1))()
{
  v2 = sub_AFF4(0x28uLL);
  *a1 = v2;
  type metadata accessor for CarPlayIntercomControlModel(0);
  sub_2664(&qword_C01B0, &qword_8E8F8);
  v2[4] = sub_8B06C();
  return sub_C5E0;
}

void sub_B30C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t CarPlayIntercomControlModel.init(playStopText:replyText:isPlaying:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_8B05C();
  type metadata accessor for CarPlayIntercomControlModel(0);
  sub_8B05C();
  return sub_8B05C();
}

uint64_t sub_B41C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x706F745379616C70 && a2 == 0xEC00000074786554;
  if (v4 || (sub_8D45C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x786554796C706572 && a2 == 0xE900000000000074;
    if (v6 || (sub_8D45C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E6979616C507369 && a2 == 0xE900000000000067)
    {

      return 2;
    }

    else
    {
      v8 = sub_8D45C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

Swift::Int sub_B57C(unsigned __int8 a1)
{
  sub_8D50C();
  sub_8D51C(a1);
  return sub_8D54C();
}

uint64_t sub_B5D0(char a1)
{
  if (!a1)
  {
    return 0x706F745379616C70;
  }

  if (a1 == 1)
  {
    return 0x786554796C706572;
  }

  return 0x6E6979616C507369;
}

Swift::Int sub_B658()
{
  v1 = *v0;
  sub_8D50C();
  sub_8D51C(v1);
  return sub_8D54C();
}

uint64_t sub_B6A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_B41C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_B6EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_B53C();
  *a1 = result;
  return result;
}

uint64_t sub_B714(uint64_t a1)
{
  v2 = sub_B968();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_B750(uint64_t a1)
{
  v2 = sub_B968();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CarPlayIntercomControlModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_2664(&qword_C01B8, &qword_8E900);
  sub_3488();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  sub_622C(a1, a1[3]);
  sub_B968();
  sub_8D57C();
  v20 = 0;
  sub_2664(&qword_C01A8, &qword_8E8F0);
  sub_C5E4();
  sub_BEB4(v11, v12);
  sub_C64C(v3, &v20);
  if (!v2)
  {
    v13 = *(type metadata accessor for CarPlayIntercomControlModel(0) + 20);
    v19 = 1;
    sub_C64C(v3 + v13, &v19);
    v18 = 2;
    sub_2664(&qword_C01B0, &qword_8E8F8);
    sub_C5E4();
    sub_BA04(v14, v15);
    sub_8D41C();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_B968()
{
  result = qword_C01C0;
  if (!qword_C01C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C01C0);
  }

  return result;
}

uint64_t sub_B9BC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_BA04(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_B9BC(&qword_C01B0, &qword_8E8F8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t CarPlayIntercomControlModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v40 = sub_2664(&qword_C01B0, &qword_8E8F8);
  sub_3488();
  v37 = v4;
  __chkstk_darwin(v5);
  v39 = &v34 - v6;
  v7 = sub_2664(&qword_C01A8, &qword_8E8F0);
  sub_3488();
  v41 = v8;
  v10 = __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v42 = &v34 - v13;
  sub_2664(&qword_C01D8, &qword_8E908);
  sub_3488();
  v43 = v15;
  v44 = v14;
  __chkstk_darwin(v14);
  v16 = type metadata accessor for CarPlayIntercomControlModel(0);
  __chkstk_darwin(v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[3];
  v45 = a1;
  sub_622C(a1, v19);
  sub_B968();
  sub_8D56C();
  if (v2)
  {
    return sub_2714(v45);
  }

  v35 = v16;
  v36 = v18;
  v48 = 0;
  sub_C5FC();
  v22 = sub_BEB4(v20, v21);
  v23 = v42;
  sub_C624(v22, &v48);
  v42 = *(v41 + 32);
  v24 = (v42)(v36, v23, v7);
  v47 = 1;
  v25 = v12;
  sub_C624(v24, &v47);
  v26 = v36;
  (v42)(&v36[*(v35 + 20)], v25, v7);
  v46 = 2;
  sub_C5FC();
  sub_BA04(v27, v28);
  v30 = v39;
  v29 = v40;
  sub_8D3DC();
  v31 = sub_C614();
  v32(v31);
  (*(v37 + 32))(v26 + *(v35 + 24), v30, v29);
  sub_BF24(v26, v38);
  sub_2714(v45);
  return sub_BF88(v26);
}

uint64_t sub_BEB4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_B9BC(&qword_C01A8, &qword_8E8F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_BF24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarPlayIntercomControlModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_BF88(uint64_t a1)
{
  v2 = type metadata accessor for CarPlayIntercomControlModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_C04C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CarPlayIntercomControlModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_C0D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2664(&qword_C01A8, &qword_8E8F0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_2664(&qword_C01B0, &qword_8E8F8);
    v8 = a1 + *(a3 + 24);
  }

  return sub_3364(v8, a2, v7);
}

uint64_t sub_C19C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2664(&qword_C01A8, &qword_8E8F0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_2664(&qword_C01B0, &qword_8E8F8);
    v10 = a1 + *(a4 + 24);
  }

  return sub_6270(v10, a2, a2, v9);
}

void sub_C258(uint64_t a1)
{
  sub_C2FC(319, &qword_C0268, &type metadata for String);
  if (v1 <= 0x3F)
  {
    sub_C2FC(319, &unk_C0270, &type metadata for Bool);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_C2FC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_8B09C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for CarPlayIntercomControlModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CarPlayIntercomControlModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0xC49CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_C4D8()
{
  result = qword_C02A8;
  if (!qword_C02A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C02A8);
  }

  return result;
}

unint64_t sub_C530()
{
  result = qword_C02B0;
  if (!qword_C02B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C02B0);
  }

  return result;
}

unint64_t sub_C588()
{
  result = qword_C02B8;
  if (!qword_C02B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C02B8);
  }

  return result;
}

uint64_t sub_C624(uint64_t a1, uint64_t a2)
{

  return sub_8D3DC();
}

uint64_t sub_C64C(uint64_t a1, uint64_t a2)
{

  return sub_8D41C();
}

void sub_C670(uint64_t a1)
{
  sub_8C95C();
  sub_8C94C();
  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v1 = sub_8CD0C();
  sub_33F4(v1, qword_C3DF8);
  oslog = sub_8CCEC();
  v2 = sub_8D11C();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, oslog, v2, "#CATBundleRegisterer Registering HomeCommunicationFlowDelegatePlugin bundle with DialogEngine", v3, 2u);
  }
}

uint64_t sub_C794()
{
  if (sub_8B5FC())
  {
    return 7;
  }

  sub_C834();
  if (sub_8B60C())
  {
    return 2;
  }

  sub_C834();
  if (sub_8B62C())
  {
    return 3;
  }

  sub_C834();
  if (sub_8B65C())
  {
    return 4;
  }

  sub_C834();
  if (sub_8B64C())
  {
    return 5;
  }

  sub_C834();
  if (sub_8B63C())
  {
    return 6;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_C840()
{
  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v0 = sub_8CD0C();
  sub_33F4(v0, qword_C3DF8);
  v1 = sub_8CCEC();
  v2 = sub_8D11C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = sub_E8E0();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "#DirectInvocationHomeCommunicationFlow on(input:) returning true", v3, 2u);
    sub_E890(v3);
  }

  return 1;
}

uint64_t sub_C8FC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DirectInvocationHomeCommunicationFlow(0);
  sub_E6A0(&qword_C0460, type metadata accessor for DirectInvocationHomeCommunicationFlow, &unk_8EB78);
  return sub_8B34C();
}

uint64_t sub_C98C()
{
  sub_6608();
  v1[77] = v0;
  v1[76] = v2;
  v3 = sub_8BDBC();
  v1[78] = v3;
  v1[79] = *(v3 - 8);
  v1[80] = sub_E83C();
  v4 = sub_8BE0C();
  v1[81] = v4;
  v1[82] = *(v4 - 8);
  v1[83] = sub_E83C();

  return _swift_task_switch(sub_CA98);
}

uint64_t sub_CA98()
{
  v77 = v0;
  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v1 = sub_8CD0C();
  v2 = sub_33F4(v1, qword_C3DF8);
  v3 = sub_8CCEC();
  v4 = sub_8D11C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = sub_E8E0();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "#DirectInvocationHomeCommunicationFlow executing", v5, 2u);
    sub_E890(v5);
  }

  v6 = *(v0 + 664);
  v7 = *(v0 + 656);
  v8 = *(v0 + 648);
  v9 = *(v0 + 616);

  v10 = v9 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin37DirectInvocationHomeCommunicationFlow_sharedGlobals;
  sub_622C((v9 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin37DirectInvocationHomeCommunicationFlow_sharedGlobals), *(v9 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin37DirectInvocationHomeCommunicationFlow_sharedGlobals + 24));

  sub_8BD9C();
  sub_2EBF0(v6, v0 + 56);

  (*(v7 + 8))(v6, v8);
  if (*(v0 + 80))
  {
    sub_E510((v0 + 56), v0 + 16);
    sub_8BE1C();
    v11 = sub_2664(&qword_C0440, &qword_8EBE8);
    sub_E824(v11);
    v12 = sub_7E410();
    v13 = *(v12 + *(*v12 + qword_C3D40 + 16));

    v14 = *(v0 + 40);
    v15 = *(v0 + 48);
    v16 = sub_622C((v0 + 16), v14);
    switch((*(v15 + 16))(v14, v15))
    {
      case 0u:
        v17 = sub_E794();
        v18(v17);
        sub_E528(v0 + 16, v0 + 176);
        sub_E528(v10, v0 + 216);
        sub_E58C(v0 + 216, *(v0 + 240));
        sub_E6E8();
        sub_E83C();
        sub_E8A8();
        v19();

        v20 = sub_181F4(v16, (v0 + 176), v13, v15);
        sub_2714((v0 + 216));

        AnnouncementFlow = type metadata accessor for SendAnnouncementFlow(0);
        *(v0 + 120) = AnnouncementFlow;
        sub_E73C();
        v24 = sub_E6A0(v22, v23, &unk_928D8);
        sub_E8BC(v24);
        *(v0 + 96) = v20;
        v25 = sub_8CCEC();
        v26 = sub_8D11C();
        if (!sub_E7DC(v26))
        {
          goto LABEL_21;
        }

        v27 = "#DirectInvocationHomeCommunicationFlow pushing send flow";
        break;
      case 1u:
        v53 = sub_E794();
        v54(v53);
        sub_E528(v0 + 16, v0 + 256);
        sub_E528(v10, v0 + 296);
        sub_E58C(v0 + 296, *(v0 + 320));
        sub_E6E8();
        sub_E83C();
        sub_E8A8();
        v55();

        v56 = sub_181F4(v16, (v0 + 256), v13, v15);
        sub_2714((v0 + 296));

        AnnouncementFlow = type metadata accessor for SendAnnouncementFlow(0);
        *(v0 + 120) = AnnouncementFlow;
        sub_E73C();
        v59 = sub_E6A0(v57, v58, &unk_928D8);
        sub_E8BC(v59);
        *(v0 + 96) = v56;
        v25 = sub_8CCEC();
        v60 = sub_8D11C();
        if (!sub_E7DC(v60))
        {
          goto LABEL_21;
        }

        v27 = "#DirectInvocationHomeCommunicationFlow pushing reply flow";
        break;
      case 2u:
        v33 = sub_E774();
        v34(v33);
        sub_E528(v0 + 16, v0 + 456);
        sub_E528(v10, v0 + 496);
        sub_E58C(v0 + 496, *(v0 + 520));
        sub_E6E8();
        sub_E83C();
        sub_E86C();
        v35();
        v36 = type metadata accessor for SharedGlobals(0);
        *(v0 + 560) = v36;
        *(v0 + 568) = &off_BB508;
        v37 = sub_E5DC((v0 + 536));
        sub_E8C8(v37);
        AnnouncementFlow = type metadata accessor for ReadAnnouncementFlow(0);
        v38 = sub_E824(AnnouncementFlow);
        v2 = v13;
        sub_E58C(v0 + 536, *(v0 + 560));
        sub_E6E8();
        sub_E83C();
        sub_E854();
        v39();
        v38[11] = v36;
        v38[12] = &off_BB508;
        v40 = sub_E5DC(v38 + 8);
        sub_E8C8(v40);
        (*(v6 + 32))(v38 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin20ReadAnnouncementFlow_input);
        sub_E510((v0 + 456), (v38 + 2));
        v38[7] = v13;

        sub_2714((v0 + 536));

        sub_2714((v0 + 496));

        *(v0 + 120) = AnnouncementFlow;
        v41 = sub_E6A0(&qword_C0458, type metadata accessor for ReadAnnouncementFlow, &unk_91A38);
        sub_E8BC(v41);
        *(v0 + 96) = v38;
        v25 = sub_8CCEC();
        v42 = sub_8D11C();
        if (!sub_E7DC(v42))
        {
          goto LABEL_21;
        }

        v27 = "#DirectInvocationHomeCommunicationFlow pushing reading flow";
        break;
      case 3u:
        v43 = sub_E774();
        v44(v43);
        sub_E528(v0 + 16, v0 + 336);
        sub_E528(v10, v0 + 376);
        sub_E58C(v0 + 376, *(v0 + 400));
        sub_E6E8();
        sub_E83C();
        sub_E86C();
        v45();
        v46 = type metadata accessor for SharedGlobals(0);
        *(v0 + 440) = v46;
        *(v0 + 448) = &off_BB508;
        v47 = sub_E5DC((v0 + 416));
        sub_E8C8(v47);
        AnnouncementFlow = type metadata accessor for StopAnnouncementFlow(0);
        v48 = sub_E824(AnnouncementFlow);
        v2 = v13;
        sub_E58C(v0 + 416, *(v0 + 440));
        sub_E6E8();
        sub_E83C();
        sub_E854();
        v49();
        v48[11] = v46;
        v48[12] = &off_BB508;
        v50 = sub_E5DC(v48 + 8);
        sub_E8C8(v50);
        (*(v6 + 32))(v48 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin20StopAnnouncementFlow_input);
        sub_E510((v0 + 336), (v48 + 2));
        v48[7] = v13;

        sub_2714((v0 + 416));

        sub_2714((v0 + 376));

        *(v0 + 120) = AnnouncementFlow;
        v51 = sub_E6A0(&qword_C0450, type metadata accessor for StopAnnouncementFlow, &unk_93DB8);
        sub_E8BC(v51);
        *(v0 + 96) = v48;
        v25 = sub_8CCEC();
        v52 = sub_8D11C();
        if (!sub_E7DC(v52))
        {
          goto LABEL_21;
        }

        v27 = "#DirectInvocationHomeCommunicationFlow pushing stop flow";
        break;
      default:
        sub_E528(v0 + 16, v0 + 136);
        v63 = sub_8CCEC();
        v64 = sub_8D12C();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v76[0] = v66;
          *v65 = 136315138;
          v67 = *(v0 + 160);
          v68 = *(v0 + 168);
          sub_622C((v0 + 136), v67);
          v69 = (*(v68 + 16))(v67, v68);
          v70 = sub_1D6AC(v69);
          v71 = [v70 _className];

          v72 = sub_8CEDC();
          v74 = v73;

          sub_2714((v0 + 136));
          v75 = sub_862D8(v72, v74, v76);

          *(v65 + 4) = v75;
          _os_log_impl(&dword_0, v63, v64, "#DirectInvocationHomeCommunicationFlow failed to get flow from announcementType%s", v65, 0xCu);
          sub_2714(v66);
          sub_E890(v66);
          sub_E890(v65);
        }

        else
        {

          sub_2714((v0 + 136));
        }

        sub_8B7FC();

        goto LABEL_22;
    }

    v61 = sub_E8E0();
    *v61 = 0;
    _os_log_impl(&dword_0, v25, v2, v27, v61, 2u);
    sub_E890(v61);
LABEL_21:

    sub_622C((v0 + 96), AnnouncementFlow);
    sub_8B7DC();

    sub_2714((v0 + 96));
LABEL_22:
    sub_2714((v0 + 16));

    sub_65A0();

    return v62();
  }

  else
  {
    sub_E3BC(v0 + 56);
    v28 = sub_8CCEC();
    v29 = sub_8D12C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = sub_E8E0();
      *v30 = 0;
      _os_log_impl(&dword_0, v28, v29, "#DirectInvocationHomeCommunicationFlow failed to get nlIntent from parse. Returning nil", v30, 2u);
      sub_E890(v30);
    }

    v31 = swift_task_alloc();
    *(v0 + 672) = v31;
    *v31 = v0;
    v31[1] = sub_D628;

    return sub_4C878();
  }
}

uint64_t sub_D628(uint64_t a1)
{
  sub_E884();
  v5 = v4;
  v6 = *v2;
  sub_E6F8();
  *v7 = v6;

  if (v1)
  {

    v8 = sub_D8A0;
  }

  else
  {
    *(v5 + 680) = a1;
    v8 = sub_D748;
  }

  return _swift_task_switch(v8);
}

uint64_t sub_D748()
{
  v1 = v0[85];
  v2 = v0[77];
  sub_8BB9C();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = sub_8B14C();
  sub_E824(v4);

  v5 = sub_E708(v1);
  type metadata accessor for RadarUtils();
  inited = swift_initStackObject();
  v7 = sub_8C88C();
  sub_E824(v7);
  *(inited + 16) = sub_E7B0(v8);
  sub_E7F8("DirectInvocationHomeCommunicationFlow transform failure");
  swift_setDeallocating();

  v0[75] = v5;
  sub_8B7DC();

  sub_65A0();

  return v9();
}

uint64_t sub_D8A0()
{
  v1 = [objc_allocWithZone(DialogExecutionResult) init];
  v2 = *(v0 + 616);
  sub_8BB9C();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = sub_8B14C();
  sub_E824(v4);

  v5 = sub_E708(v1);
  type metadata accessor for RadarUtils();
  inited = swift_initStackObject();
  v7 = sub_8C88C();
  sub_E824(v7);
  *(inited + 16) = sub_E7B0(v8);
  sub_E7F8("DirectInvocationHomeCommunicationFlow transform failure");
  swift_setDeallocating();

  *(v0 + 600) = v5;
  sub_8B7DC();

  sub_65A0();

  return v9();
}

uint64_t sub_DA10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  sub_8B6BC();
  v3[5] = swift_task_alloc();
  v4 = sub_8BCBC();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_DAFC);
}

uint64_t sub_DAFC()
{
  v1 = v0[4];
  v2 = sub_8B8FC();
  sub_E824(v2);
  v3 = sub_8B8EC();
  v0[9] = v3;
  v0[2] = v3;
  sub_2664(&qword_C0690, &unk_8EBF0);
  v4 = swift_allocObject();
  v0[10] = v4;
  *(v4 + 16) = xmmword_8E860;
  *(v4 + 32) = v1;
  v5 = v1;
  sub_8B6AC();
  sub_8BC3C();
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_DC4C;
  v7 = v0[8];
  v8 = v0[3];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v8, v4, v7, v2, &protocol witness table for ResponseFactory);
}

uint64_t sub_DC4C()
{
  sub_E884();
  v2 = v1[8];
  v3 = v1[7];
  v4 = v1[6];
  v5 = *v0;
  sub_E6F8();
  *v6 = v5;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_DDB4);
}

uint64_t sub_DDB4()
{
  sub_6608();

  sub_65A0();

  return v0();
}

uint64_t sub_DE54()
{
  v1 = OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin37DirectInvocationHomeCommunicationFlow_input;
  v2 = sub_8BDBC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_2714((v0 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin37DirectInvocationHomeCommunicationFlow_sharedGlobals));

  return v0;
}

uint64_t sub_DED4()
{
  sub_DE54();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for DirectInvocationHomeCommunicationFlow(uint64_t a1)
{
  result = qword_C0388;
  if (!qword_C0388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_DF80(uint64_t a1)
{
  result = sub_8BDBC();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_E044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_E0F4;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_E0F4()
{
  sub_6608();
  v2 = v1;
  sub_E884();
  v3 = *v0;
  sub_E6F8();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_E204()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_E2A0;

  return sub_C98C();
}

uint64_t sub_E2A0()
{
  sub_6608();
  sub_E884();
  v1 = *v0;
  sub_E6F8();
  *v2 = v1;

  sub_65A0();

  return v3();
}

uint64_t sub_E380(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DirectInvocationHomeCommunicationFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_E3BC(uint64_t a1)
{
  v2 = sub_2664(&qword_C0438, &qword_8EBD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_E424()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_E464(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_E2A0;

  return sub_DA10(a1, v5, v4);
}

uint64_t sub_E510(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_E528(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_E58C(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t *sub_E5DC(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_E63C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedGlobals(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_E6A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_E708(uint64_t a1, ...)
{

  return sub_8B13C();
}

uint64_t sub_E754(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_E7B0(__n128 a1)
{

  return sub_8C87C();
}

BOOL sub_E7DC(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_E7F8@<X0>(uint64_t a1@<X8>)
{

  return sub_38AE4(1, 1, v1 | 0x22, (a1 - 32) | 0x8000000000000000);
}

uint64_t sub_E824(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_E83C()
{

  return swift_task_alloc();
}

uint64_t sub_E890(uint64_t a1)
{
}

uint64_t sub_E8C8(uint64_t a1)
{

  return sub_E63C(v1, a1);
}

uint64_t sub_E8E0()
{

  return swift_slowAlloc();
}

uint64_t sub_E8F8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  return v6;
}

void *sub_E910()
{

  return v0;
}

uint64_t sub_E948()
{
  sub_E910();

  return _swift_deallocClassInstance(v0, 64, 7);
}

uint64_t sub_E9D0()
{
  v1 = *(*v0 + 24);

  return v1;
}

uint64_t sub_EA04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_22D1C(a1, WitnessTable);
}

unint64_t sub_EA58(uint64_t a1)
{
  result = sub_EA80();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_EA80()
{
  result = qword_C0528;
  if (!qword_C0528)
  {
    type metadata accessor for DirectInvocationHomeCommunicationNLIntent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0528);
  }

  return result;
}

id sub_EAD4(void *a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  sub_622C(a1, a1[3]);
  v5 = sub_8B66C();
  v6 = [v4 runSiriKitExecutorCommandWithContext:v5 payload:v2];

  return v6;
}

void sub_EB68(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v41 = a3;
  v4 = sub_8BDEC();
  sub_3488();
  v6 = v5;
  v8 = *(v7 + 64);
  v10 = __chkstk_darwin(v9);
  v11 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v39 - v12;
  v14 = sub_2664(&qword_C05D0, &qword_8ECC0);
  sub_3488();
  v40 = v15;
  __chkstk_darwin(v16);
  v18 = &v39 - v17;
  if (qword_BF7E0 != -1)
  {
    swift_once();
  }

  v19 = sub_2664(&qword_C05D8, &qword_8ECC8);
  sub_33F4(v19, qword_C3D88);
  v20 = sub_8C81C();
  v20(v43, a1);

  if (LOBYTE(v43[0]) == 7)
  {
    if (qword_BF818 != -1)
    {
      sub_E754(&qword_BF818);
    }

    v21 = sub_8CD0C();
    sub_33F4(v21, qword_C3DF8);
    v22 = v4;
    (*(v6 + 16))(v11, a1, v4);
    v23 = sub_8CCEC();
    v24 = sub_8D12C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v43[0] = v26;
      *v25 = 136315138;
      v27 = sub_8BDCC();
      v29 = v28;
      (*(v6 + 8))(v11, v22);
      v30 = sub_862D8(v27, v29, v43);

      *(v25 + 4) = v30;
      sub_2714(v26);
    }

    else
    {

      (*(v6 + 8))(v11, v4);
    }

    v31 = v41;
    *(v41 + 32) = 0;
    *v31 = 0u;
    v31[1] = 0u;
  }

  else
  {
    v32 = v39;
    LODWORD(v39) = LOBYTE(v43[0]);
    sub_E528(v32, v43);
    (*(v6 + 16))(v13, a1, v4);
    v33 = (*(v6 + 80) + 56) & ~*(v6 + 80);
    v34 = swift_allocObject();
    sub_E510(v43, v34 + 16);
    (*(v6 + 32))(v34 + v33, v13, v4);
    v35 = type metadata accessor for DirectInvocationHomeCommunicationNLIntent();
    sub_8C80C();
    v36 = sub_8C81C();
    (*(v40 + 8))(v18, v14);
    v42 = v39;
    v36(v43, &v42);

    v37 = *&v43[0];
    v38 = v41;
    *(v41 + 24) = v35;
    v38[4] = sub_FC80();
    *v38 = v37;
  }
}

uint64_t sub_F158()
{
  v0 = sub_2664(&qword_C05D8, &qword_8ECC8);
  sub_FCD8(v0, qword_C3D88);
  sub_33F4(v0, qword_C3D88);
  sub_8BDEC();
  sub_2664(&qword_C0600, &qword_8ECE8);
  return sub_8C80C();
}

void sub_F1F4(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_8BDEC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_8BDCC();
  v10 = v8;
  v11 = v9 == 0xD00000000000003ALL && 0x8000000000095C40 == v8;
  if (v11 || (sub_8D45C() & 1) != 0 || (v9 == 0xD000000000000047 ? (v12 = 0x8000000000095C80 == v10) : (v12 = 0), v12 || (sub_8D45C() & 1) != 0 || (v9 == 0xD000000000000036 ? (v13 = 0x8000000000095CD0 == v10) : (v13 = 0), v13 || (sub_8D45C() & 1) != 0)))
  {

    v14 = 2;
  }

  else
  {
    v15 = v9 == 0xD000000000000036 && 0x8000000000095D10 == v10;
    if (v15 || (sub_8D45C() & 1) != 0)
    {

      v14 = 3;
    }

    else
    {
      v16 = v9 == 0xD000000000000037 && 0x8000000000095D50 == v10;
      if (v16 || (sub_8D45C() & 1) != 0)
      {

        v14 = 1;
      }

      else if (v9 == 0xD000000000000036 && 0x8000000000095D90 == v10)
      {

        v14 = 0;
      }

      else
      {
        v18 = sub_8D45C();

        v14 = 0;
        if ((v18 & 1) == 0)
        {
          if (qword_BF818 != -1)
          {
            swift_once();
          }

          v19 = sub_8CD0C();
          sub_33F4(v19, qword_C3DF8);
          (*(v5 + 16))(v7, a1, v4);
          v20 = sub_8CCEC();
          v21 = sub_8D11C();
          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v28 = swift_slowAlloc();
            v29 = v28;
            *v22 = 136315138;
            HIDWORD(v27) = v21;
            v23 = sub_8BDCC();
            v25 = v24;
            (*(v5 + 8))(v7, v4);
            v26 = sub_862D8(v23, v25, &v29);

            *(v22 + 4) = v26;
            sub_2714(v28);
          }

          else
          {

            (*(v5 + 8))(v7, v4);
          }

          v14 = 7;
        }
      }
    }
  }

  *a2 = v14;
}

uint64_t sub_F5F0@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v7 = sub_2664(&qword_C05E8, &unk_8ECD0);
  __chkstk_darwin(v7 - 8);
  v9 = v34 - v8;
  v10 = *a1;
  if (v10)
  {
    if (v10 == 1)
    {
      sub_2FCD4();
      v11 = sub_8CDCC();
      if (sub_3364(v9, 1, v11) != 1)
      {
        v17 = sub_8CDBC();
        v16 = v20;
        (*(*(v11 - 8) + 8))(v9, v11);
        v21 = qword_BF818;

        if (v21 != -1)
        {
          swift_once();
        }

        v22 = sub_8CD0C();
        sub_33F4(v22, qword_C3DF8);

        v23 = sub_8CCEC();
        v24 = sub_8D11C();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v34[1] = v4;
          *&v35 = v26;
          v27 = v26;
          *v25 = 136315138;
          v28 = sub_862D8(v17, v16, &v35);

          *(v25 + 4) = v28;
          _os_log_impl(&dword_0, v23, v24, "DirectInvocationTransformer replying to intercom with id=%s", v25, 0xCu);
          sub_2714(v27);
        }

        else
        {
        }

        goto LABEL_38;
      }

      sub_92C0(v9, &qword_C05E8, &unk_8ECD0);
      if (qword_BF818 != -1)
      {
        swift_once();
      }

      v12 = sub_8CD0C();
      sub_33F4(v12, qword_C3DF8);
      v13 = sub_8CCEC();
      v14 = sub_8D12C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_0, v13, v14, "#DirectInvocationTransformer replying to intercom through direct invocation but found no announcement ID", v15, 2u);
      }
    }

    v16 = 0;
    v17 = 0;
LABEL_38:
    v32 = _swiftEmptyArrayStorage;
    v30 = _swiftEmptyArrayStorage;
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_39;
  }

  v18 = sub_8BDDC();
  if (!v18)
  {
    v35 = 0u;
    v36 = 0u;
    goto LABEL_19;
  }

  sub_5A1A8(0x73656D6F68, 0xE500000000000000, v18, &v35);

  if (!*(&v36 + 1))
  {
LABEL_19:
    sub_92C0(&v35, &qword_C05F0, &unk_8F020);
    goto LABEL_20;
  }

  sub_2664(&qword_C05F8, &qword_8ECE0);
  if (swift_dynamicCast())
  {
    v19 = v37;
    goto LABEL_21;
  }

LABEL_20:
  v19 = _swiftEmptyArrayStorage;
LABEL_21:
  v29 = sub_8BDDC();
  if (!v29)
  {
    v35 = 0u;
    v36 = 0u;
    goto LABEL_26;
  }

  sub_5A1A8(0x736D6F6F72, 0xE500000000000000, v29, &v35);

  if (!*(&v36 + 1))
  {
LABEL_26:
    sub_92C0(&v35, &qword_C05F0, &unk_8F020);
    goto LABEL_27;
  }

  sub_2664(&qword_C05F8, &qword_8ECE0);
  if (swift_dynamicCast())
  {
    v30 = v37;
    goto LABEL_28;
  }

LABEL_27:
  v30 = _swiftEmptyArrayStorage;
LABEL_28:
  v31 = sub_8BDDC();
  if (!v31)
  {
    v35 = 0u;
    v36 = 0u;
    goto LABEL_33;
  }

  sub_5A1A8(0x73656E6F7ALL, 0xE500000000000000, v31, &v35);

  if (!*(&v36 + 1))
  {
LABEL_33:
    sub_92C0(&v35, &qword_C05F0, &unk_8F020);
    goto LABEL_34;
  }

  sub_2664(&qword_C05F8, &qword_8ECE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_34:
    v32 = _swiftEmptyArrayStorage;
    goto LABEL_35;
  }

  v32 = v37;
LABEL_35:
  v16 = 0;
  v17 = 0;
LABEL_39:
  type metadata accessor for DirectInvocationHomeCommunicationNLIntent();
  swift_allocObject();
  result = sub_E8F8(v10, v17, v16, v19, v30, v32);
  *a3 = result;
  return result;
}

uint64_t sub_FB48()
{
  v1 = sub_8BDEC();
  sub_3488();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 56) & ~v4;
  v7 = *(v6 + 64);
  sub_2714((v0 + 16));
  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

unint64_t sub_FC80()
{
  result = qword_C05E0;
  if (!qword_C05E0)
  {
    type metadata accessor for DirectInvocationHomeCommunicationNLIntent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C05E0);
  }

  return result;
}

uint64_t *sub_FCD8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t type metadata accessor for DisplayTextTemplatingService(uint64_t a1)
{
  result = qword_C0610;
  if (!qword_C0610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_FDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_11614();
  v28 = v4;
  v29 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_2664(&qword_C0660, &qword_92260);
  __chkstk_darwin(v12 - 8);
  v14 = v27 - v13;
  v15 = sub_8B02C();
  sub_3488();
  v17 = v16;
  __chkstk_darwin(v18);
  v20 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + qword_C0608) = v7;
  v27[1] = "displayTextCatFamily";
  sub_622C(v9, v9[3]);

  sub_8B5DC();
  v21 = sub_8B01C();
  v23 = v22;
  (*(v17 + 8))(v20, v15);
  v31[0] = v21;
  v31[1] = v23;
  v30[0] = 45;
  v30[1] = 0xE100000000000000;
  v31[5] = 95;
  v31[6] = 0xE100000000000000;
  sub_10C68();
  sub_8D1FC();

  type metadata accessor for INIntentSlotValueType(0);
  sub_10CBC();
  sub_8CE6C();
  sub_E528(v11, v31);
  sub_E528(v9, v30);
  v24 = sub_8BCEC();
  v25 = *(v24 - 8);
  v26 = v29;
  (*(v25 + 16))(v14, v29, v24);
  sub_6270(v14, 0, 1, v24);
  sub_8BA5C();

  sub_2714(v11);
  (*(v25 + 8))(v26, v24);
  sub_2714(v9);
  sub_115FC();
}

uint64_t sub_10130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void *))
{
  v10 = swift_allocObject();
  v10[2] = v5;
  v10[3] = a1;
  v10[4] = a2;

  a5(a4, v10);
}

void sub_101D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_11614();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = sub_2664(&qword_C0680, &unk_8ED30);
  v33 = sub_115AC(v32);
  v35 = v34;
  __chkstk_darwin(v33);
  v37 = &a9 - v36;
  sub_10D50(v31, &a9 - v36);
  v38 = (*(v35 + 80) + 40) & ~*(v35 + 80);
  v39 = swift_allocObject();
  v39[2] = v29;
  v39[3] = v27;
  v39[4] = v25;
  sub_10DC0(v37, v39 + v38);

  sub_1438C(v23, v39);

  sub_115FC();
}

void sub_10300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_11614();
  v31 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = sub_2664(&qword_C0680, &unk_8ED30);
  v17 = sub_115AC(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v17);
  v23 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v30 - v24;
  sub_10D50(v15, &v30 - v24);
  sub_10D50(v7, v23);
  v26 = *(v19 + 80);
  v27 = (v26 + 40) & ~v26;
  v28 = (v21 + v26 + v27) & ~v26;
  v29 = swift_allocObject();
  v29[2] = v13;
  v29[3] = v11;
  v29[4] = v9;
  sub_10DC0(v25, v29 + v27);
  sub_10DC0(v23, v29 + v28);

  sub_143DC(v31, v29);

  sub_115FC();
}

void sub_10478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_11614();
  v36 = v5;
  v37 = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v35 = v13;
  v15 = v14;
  v16 = sub_2664(&qword_C0680, &unk_8ED30);
  v17 = sub_115AC(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v17);
  v23 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v26 = &v34 - v25;
  __chkstk_darwin(v24);
  v28 = &v34 - v27;
  sub_10D50(v15, &v34 - v27);
  sub_10D50(v10, v26);
  sub_10D50(v8, v23);
  v29 = *(v19 + 80);
  v30 = (v29 + 32) & ~v29;
  v31 = (v21 + v29 + v30) & ~v29;
  v32 = (v21 + v29 + v31) & ~v29;
  v33 = swift_allocObject();
  *(v33 + 16) = v35;
  *(v33 + 24) = v12;
  sub_10DC0(v28, v33 + v30);
  sub_10DC0(v26, v33 + v31);
  sub_10DC0(v23, v33 + v32);

  sub_14364(v37, v33);

  sub_115FC();
}

void sub_1062C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_11614();
  v6 = v5;
  v54 = v7;
  v47 = v8;
  v49 = v9;
  v50 = v10;
  v52 = v11;
  v53 = v12;
  v14 = v13;
  v15 = sub_8B93C();
  sub_3488();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_115DC();
  __chkstk_darwin(v19);
  sub_115DC();
  __chkstk_darwin(v20);
  sub_115DC();
  __chkstk_darwin(v21);
  v23 = &v43 - v22;
  v24 = sub_2664(&qword_C0680, &unk_8ED30);
  v25 = __chkstk_darwin(v24);
  v27 = (&v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = __chkstk_darwin(v25);
  v30 = (&v43 - v29);
  v31 = __chkstk_darwin(v28);
  v33 = (&v43 - v32);
  __chkstk_darwin(v31);
  v35 = (&v43 - v34);
  sub_10D50(v14, &v43 - v34);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = *v35;
    v55[0] = 1;
    v56[0] = v36;
    LOBYTE(v56[8]) = 1;
  }

  else
  {
    v44 = v6;
    v6 = *(v17 + 32);
    v46 = v23;
    (v6)(v23, v35, v15);
    sub_10D50(v50, v33);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v37 = *v33;
      sub_115BC();
      v38 = v46;
    }

    else
    {
      (v6)(v51, v33, v15);
      sub_10D50(v49, v30);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v37 = *v30;
        sub_115BC();
      }

      else
      {
        v39 = v48;
        (v6)(v48, v30, v15);
        sub_10D50(v47, v27);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v37 = *v27;
          LOBYTE(v27) = 1;
          LOBYTE(v56[0]) = 1;
          v40 = v39;
          v23 = *(v17 + 8);
        }

        else
        {
          v41 = v45;
          (v6)(v45, v27, v15);
          v42 = v41;
          sub_10AA4(v41, v51, v39, v46);
          v37 = v56[0];
          v50 = v56[1];
          v49 = v56[2];
          v47 = v56[3];
          v35 = v56[5];
          v43 = v56[4];
          v27 = v39;
          v23 = *(v17 + 8);
          v33 = v56[6];
          v24 = v56[7];
          (v23)(v42, v15);
          v40 = v27;
          LOBYTE(v27) = 0;
        }

        v6 = v44;
        (v23)(v40, v15);
      }

      v38 = v46;
      (v23)(v51, v15);
    }

    (v23)(v38, v15);
    v56[0] = v37;
    v56[1] = v50;
    v56[2] = v49;
    v56[3] = v47;
    v56[4] = v43;
    v56[5] = v35;
    v56[6] = v33;
    v56[7] = v24;
    LOBYTE(v56[8]) = v27;
  }

  memcpy(v55, v56, 0x41uLL);
  v53(v55);
  sub_1151C(v56, v54, v6);
  sub_115FC();
}

void sub_10AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_11614();
  v5 = v4;
  v6 = sub_8B91C();
  if (!v6[2])
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = v6[4];
  v7 = v6[5];

  v9 = sub_8B91C();
  if (!v9[2])
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v11 = v9[4];
  v10 = v9[5];

  v12 = sub_8B91C();
  if (!v12[2])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v14 = v12[4];
  v13 = v12[5];

  v15 = sub_8B91C();
  if (v15[2])
  {
    v17 = v15[4];
    v16 = v15[5];

    *v5 = v8;
    v5[1] = v7;
    v5[2] = v11;
    v5[3] = v10;
    v5[4] = v14;
    v5[5] = v13;
    v5[6] = v17;
    v5[7] = v16;
    sub_115FC();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_10C10()
{
  v0 = sub_8BA7C();

  return _swift_deallocClassInstance(v0, 24, 7);
}

unint64_t sub_10C68()
{
  result = qword_C0668;
  if (!qword_C0668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0668);
  }

  return result;
}

unint64_t sub_10CBC()
{
  result = qword_C0670;
  if (!qword_C0670)
  {
    type metadata accessor for INIntentSlotValueType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0670);
  }

  return result;
}

uint64_t sub_10D50(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_C0680, &unk_8ED30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10DC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_C0680, &unk_8ED30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10E84()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10F00()
{
  sub_2664(&qword_C0680, &unk_8ED30);
  sub_11594();
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v5 = *(v4 + 64);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    sub_8B93C();
    sub_11580();
    (*(v6 + 8))(v0 + v3);
  }

  return _swift_deallocObject(v0, v3 + v5, v2 | 7);
}

void sub_1101C()
{
  sub_115EC();
  sub_2664(&qword_C0680, &unk_8ED30);
  sub_1162C();
  sub_10300(v1, v3, v4, v5, v0 + v2);
}

uint64_t sub_110A4()
{
  sub_2664(&qword_C0680, &unk_8ED30);
  sub_11594();
  v2 = *(v1 + 80);
  v4 = *(v3 + 64);
  v5 = (v2 + 40) & ~v2;
  v6 = (v4 + v2 + v5) & ~v2;

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    sub_8B93C();
    sub_11580();
    (*(v7 + 8))(v0 + v5);
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    sub_8B93C();
    sub_11580();
    (*(v8 + 8))(v0 + v6);
  }

  return _swift_deallocObject(v0, v6 + v4, v2 | 7);
}

void sub_11218()
{
  sub_115EC();
  v0 = sub_2664(&qword_C0680, &unk_8ED30);
  sub_115AC(v0);
  sub_1162C();
  v1 = sub_11638();
  sub_10478(v1, v2, v3, v4, v5);
}

uint64_t sub_112B8()
{
  sub_2664(&qword_C0680, &unk_8ED30);
  sub_11594();
  v2 = *(v1 + 80);
  v4 = *(v3 + 64);
  v5 = (v2 + 32) & ~v2;
  v6 = (v4 + v2 + v5) & ~v2;

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    sub_8B93C();
    sub_11580();
    (*(v7 + 8))(v0 + v5);
  }

  v8 = (v4 + v2 + v6) & ~v2;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    sub_8B93C();
    sub_11580();
    (*(v9 + 8))(v0 + v6);
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    sub_8B93C();
    sub_11580();
    (*(v10 + 8))(v0 + v8);
  }

  return _swift_deallocObject(v0, v8 + v4, v2 | 7);
}

void sub_11474()
{
  sub_115EC();
  v0 = sub_2664(&qword_C0680, &unk_8ED30);
  sub_115AC(v0);
  v1 = sub_11638();
  sub_1062C(v1, v2, v3, v4, v5);
}

uint64_t sub_1151C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_2664(a2, a3);
  sub_11580();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1164C(void (*a1)(uint64_t *__return_ptr, char *))
{
  v3 = sub_8B93C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2664(&qword_C0680, &unk_8ED30);
  __chkstk_darwin(v7);
  v9 = &v12 - v8;
  sub_10D50(v1, &v12 - v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return *v9;
  }

  (*(v4 + 32))(v6, v9, v3);
  a1(&v13, v6);
  v10 = v13;
  (*(v4 + 8))(v6, v3);
  return v10;
}

uint64_t sub_117E4@<X0>(uint64_t a1@<X0>, void *a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v10 = sub_8CD0C();
  sub_33F4(v10, qword_C3DF8);
  v11 = sub_8CCEC();
  v12 = sub_8D11C();
  if (sub_125A0(v12))
  {
    v13 = sub_E8E0();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "[SendAnnouncementViewBuilders] Providing ErrorButtonBuilder", v13, 2u);
    sub_12584();
  }

  sub_622C(a5, a5[3]);
  sub_8B62C();
  sub_8CA8C();
  v14 = sub_8CA6C();
  [a4 code];
  v15 = sub_8CCEC();
  v16 = sub_8D11C();
  if (sub_125A0(v16))
  {
    v17 = sub_E8E0();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "[SendAnnouncementViewBuilders] Defaulting to Home app button", v17, 2u);
    sub_12584();
  }

  sub_ADE4(0, &qword_C06A8, SAIntentGroupLaunchAppWithIntent_ptr);
  v18 = sub_8D19C();
  a6[3] = &type metadata for ButtonBuilder;
  a6[4] = &off_B9A38;
  v19 = swift_allocObject();
  *a6 = v19;
  sub_E528(a5, (v19 + 5));
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = v14;
  v19[2] = sub_12484;
  v19[3] = v20;
  v19[4] = v18;
}

uint64_t sub_11A84@<X0>(unint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t *a3@<X8>)
{
  v6 = *(sub_8B92C() + 16);

  v7 = a1 >> 62;
  if (!v6)
  {
    if (!v7)
    {

      sub_8D46C();
      result = sub_ADE4(0, &qword_C0688, SAAceView_ptr);
      goto LABEL_8;
    }

LABEL_11:
    sub_ADE4(0, &qword_C0688, SAAceView_ptr);

    v16 = sub_8D34C();

    a1 = v16;
    goto LABEL_8;
  }

  if (v7)
  {
    sub_ADE4(0, &qword_C0688, SAAceView_ptr);

    v15 = sub_8D34C();

    a1 = v15;
  }

  else
  {

    sub_8D46C();
    sub_ADE4(0, &qword_C0688, SAAceView_ptr);
  }

  sub_2664(&qword_C0690, &unk_8EBF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_8E860;
  sub_ADE4(0, &qword_C0698, SASTItemGroup_ptr);
  v9 = sub_8B91C();
  if (!v9[2])
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v9[4];
  v11 = v9[5];

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_8E860;
  *(v12 + 32) = *(a2 + 16);
  swift_unknownObjectRetain();
  v13 = sub_48D60(v10, v11, v12, 1);

  *(inited + 32) = v13;
  result = sub_2C7D0(inited);
LABEL_8:
  *a3 = a1;
  return result;
}

uint64_t sub_11D18(unint64_t a1, void (*a2)(uint64_t, void), uint64_t a3, uint64_t (*a4)(void), const char *a5)
{
  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v9 = sub_8CD0C();
  sub_33F4(v9, qword_C3DF8);
  v10 = sub_8CCEC();
  v11 = a4();
  if (sub_125A0(v11))
  {
    v12 = sub_E8E0();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, a5, v12, 2u);
  }

  if (a1 >> 62)
  {
    sub_ADE4(0, &qword_C0688, SAAceView_ptr);

    v13 = sub_8D34C();
  }

  else
  {

    sub_8D46C();
    sub_ADE4(0, &qword_C0688, SAAceView_ptr);
    v13 = a1;
  }

  a2(v13, 0);
}

uint64_t sub_11EC8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6)
{
  v9 = v6;
  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v13 = sub_8CD0C();
  sub_33F4(v13, qword_C3DF8);
  v14 = sub_8CCEC();
  v15 = sub_8D10C();
  if (sub_125A0(v15))
  {
    v16 = sub_E8E0();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, a4, v16, 2u);
    sub_12584();
  }

  v17 = *v9;
  sub_122E8(v9, v22);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  *(v18 + 32) = a1;
  v19 = v22[1];
  *(v18 + 40) = v22[0];
  *(v18 + 56) = v19;
  v20 = v22[3];
  *(v18 + 72) = v22[2];
  *(v18 + 88) = v20;

  v17(a6, v18);
}

uint64_t sub_12018(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *__return_ptr, char *))
{
  v7 = sub_1164C(a6);
  v9 = v8;
  a2(v7, v8 & 1);
  return sub_ADD8(v7, v9 & 1);
}

uint64_t sub_1208C@<X0>(unint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t *a3@<X8>)
{
  v6 = *(sub_8B92C() + 16);

  v7 = a1 >> 62;
  if (!v6)
  {
    if (!v7)
    {

      sub_8D46C();
      result = sub_ADE4(0, &qword_C0688, SAAceView_ptr);
      goto LABEL_8;
    }

LABEL_11:
    sub_ADE4(0, &qword_C0688, SAAceView_ptr);

    v15 = sub_8D34C();

    a1 = v15;
    goto LABEL_8;
  }

  if (v7)
  {
    sub_ADE4(0, &qword_C0688, SAAceView_ptr);

    v14 = sub_8D34C();

    a1 = v14;
  }

  else
  {

    sub_8D46C();
    sub_ADE4(0, &qword_C0688, SAAceView_ptr);
  }

  sub_2664(&qword_C0690, &unk_8EBF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_8E860;
  sub_ADE4(0, &qword_C06A0, SAUIButton_ptr);
  v9 = sub_8B91C();
  if (!v9[2])
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v9[4];
  v11 = v9[5];

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_8E860;
  *(v12 + 32) = *(a2 + 16);
  swift_unknownObjectRetain();
  *(inited + 32) = sub_48E8C(v10, v11, v12);
  result = sub_2C7D0(inited);
LABEL_8:
  *a3 = a1;
  return result;
}

uint64_t sub_12364()
{

  swift_unknownObjectRelease();
  sub_2714((v0 + 64));

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_123FC()
{

  swift_unknownObjectRelease();
  sub_2714((v0 + 40));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_12444()
{

  return _swift_deallocObject(v0, 32, 7);
}

__n128 sub_124B4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_124C8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_12508(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_12584()
{
}

BOOL sub_125A0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t (*HomeAppLaunchModel.bundleId.modify(void *a1))()
{
  v2 = sub_AFF4(0x28uLL);
  *a1 = v2;
  sub_2664(&qword_C01A8, &qword_8E8F0);
  v2[4] = sub_8B06C();
  return sub_C5E0;
}

uint64_t HomeAppLaunchModel.buttonLabel.getter()
{
  type metadata accessor for HomeAppLaunchModel(0);
  sub_2664(&qword_C01A8, &qword_8E8F0);
  sub_8B07C();
  return v1;
}

uint64_t type metadata accessor for HomeAppLaunchModel(uint64_t a1)
{
  result = qword_C0790;
  if (!qword_C0790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HomeAppLaunchModel.buttonLabel.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HomeAppLaunchModel(0);
  sub_2664(&qword_C01A8, &qword_8E8F0);
  return sub_8B08C();
}

uint64_t (*HomeAppLaunchModel.buttonLabel.modify(void *a1))()
{
  v2 = sub_AFF4(0x28uLL);
  *a1 = v2;
  type metadata accessor for HomeAppLaunchModel(0);
  sub_2664(&qword_C01A8, &qword_8E8F0);
  v2[4] = sub_8B06C();
  return sub_AFF0;
}

uint64_t sub_127D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_8D45C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614C6E6F74747562 && a2 == 0xEB000000006C6562)
  {

    return 1;
  }

  else
  {
    v7 = sub_8D45C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int sub_128E4(char a1)
{
  sub_8D50C();
  sub_8D51C(a1 & 1);
  return sub_8D54C();
}

uint64_t sub_1292C(char a1)
{
  if (a1)
  {
    return 0x614C6E6F74747562;
  }

  else
  {
    return 0x6449656C646E7562;
  }
}

uint64_t sub_12990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_127D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_129B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_128A4();
  *a1 = result;
  return result;
}

uint64_t sub_129E0(uint64_t a1)
{
  v2 = sub_12BE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_12A1C(uint64_t a1)
{
  v2 = sub_12BE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t HomeAppLaunchModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_2664(&qword_C0710, &qword_8EDB8);
  sub_3488();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_622C(a1, a1[3]);
  sub_12BE0();
  sub_8D57C();
  v15 = 0;
  sub_2664(&qword_C01A8, &qword_8E8F0);
  sub_BEB4(&qword_C01C8, &protocol conformance descriptor for <A> Loggable<A>);
  sub_C64C(v3, &v15);
  if (!v2)
  {
    v11 = *(type metadata accessor for HomeAppLaunchModel(0) + 20);
    v14 = 1;
    sub_C64C(v3 + v11, &v14);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_12BE0()
{
  result = qword_C0718;
  if (!qword_C0718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0718);
  }

  return result;
}

uint64_t HomeAppLaunchModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v34 = sub_2664(&qword_C01A8, &qword_8E8F0);
  sub_3488();
  v31 = v4;
  v6 = __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v32 = &v25 - v9;
  v33 = sub_2664(&qword_C0720, &qword_8EDC0);
  sub_3488();
  v30 = v10;
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  v14 = type metadata accessor for HomeAppLaunchModel(0);
  __chkstk_darwin(v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_622C(a1, a1[3]);
  sub_12BE0();
  sub_8D56C();
  if (v2)
  {
    return sub_2714(a1);
  }

  v26 = v14;
  v27 = v8;
  v28 = v16;
  v18 = v30;
  v17 = v31;
  v36 = 0;
  v19 = sub_BEB4(&qword_C01E0, &protocol conformance descriptor for <A> Loggable<A>);
  v21 = v32;
  v20 = v33;
  sub_8D3DC();
  v25 = v19;
  v32 = *(v17 + 32);
  (v32)(v28, v21, v34);
  v35 = 1;
  v22 = v27;
  sub_8D3DC();
  (*(v18 + 8))(v13, v20);
  v23 = v28;
  (v32)(&v28[*(v26 + 20)], v22, v34);
  sub_12F98(v23, v29);
  sub_2714(a1);
  return sub_12FFC(v23);
}

uint64_t sub_12F98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeAppLaunchModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_12FFC(uint64_t a1)
{
  v2 = type metadata accessor for HomeAppLaunchModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_130C0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HomeAppLaunchModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_13148(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_C01A8, &qword_8E8F0);

  return sub_3364(a1, a2, v4);
}

uint64_t sub_131B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_C01A8, &qword_8E8F0);

  return sub_6270(a1, a2, a2, v4);
}

void sub_13208(uint64_t a1)
{
  sub_13274();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_13274()
{
  if (!qword_C0268)
  {
    v0 = sub_8B09C();
    if (!v1)
    {
      atomic_store(v0, &qword_C0268);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for HomeAppLaunchModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x13390);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_133CC()
{
  result = qword_C07C8;
  if (!qword_C07C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C07C8);
  }

  return result;
}

unint64_t sub_13424()
{
  result = qword_C07D0;
  if (!qword_C07D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C07D0);
  }

  return result;
}

unint64_t sub_1347C()
{
  result = qword_C07D8;
  if (!qword_C07D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C07D8);
  }

  return result;
}

uint64_t sub_134D0()
{
  sub_2664(&qword_C07E0, &qword_8FCB0);
  swift_allocObject();
  result = sub_8C13C();
  qword_C3DB0 = result;
  return result;
}

uint64_t type metadata accessor for HomeCommunicationCATs(uint64_t a1)
{
  result = qword_C07E8;
  if (!qword_C07E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_13618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_8CA2C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2664(&qword_BFF28, &unk_8EFD0);
  __chkstk_darwin(v9 - 8);
  sub_137BC(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_8C90C();
  (*(v6 + 8))(a2, v5);
  sub_1382C(a1);
  return v11;
}

uint64_t sub_13784()
{
  v0 = sub_8C93C();

  return _swift_deallocClassInstance(v0, 16, 7);
}

uint64_t sub_137BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_BFF28, &unk_8EFD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1382C(uint64_t a1)
{
  v2 = sub_2664(&qword_BFF28, &unk_8EFD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for HomeCommunicationCATsSimple(uint64_t a1)
{
  result = qword_C0838;
  if (!qword_C0838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_13920()
{
  v3 = &async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_139E4;

  return (v3)(0xD000000000000021, 0x8000000000096070, _swiftEmptyArrayStorage);
}

uint64_t sub_139E4(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_13B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_8CA2C();
  sub_13DCC();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2664(&qword_BFF28, &unk_8EFD0);
  __chkstk_darwin(v11 - 8);
  sub_137BC(a1, &v15 - v12);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_8C9AC();
  (*(v7 + 8))(a2, v3);
  sub_1382C(a1);
  return v13;
}

uint64_t sub_13C94(uint64_t a1, uint64_t a2)
{
  sub_8CA2C();
  sub_13DCC();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_8C9BC();
  (*(v5 + 8))(a2, v2);
  return v9;
}

uint64_t sub_13D94()
{
  v0 = sub_8C9DC();

  return _swift_deallocClassInstance(v0, 16, 7);
}

uint64_t sub_13DE4(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_B82C8;
  v7._object = a2;
  v4 = sub_8D39C(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_13E38(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_B8318;
  v6._object = a2;
  v4 = sub_8D39C(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_13E84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_71C64(0x6C646E7542707061, 0xEB00000000644965), (v5 & 1) == 0) || (v6 = sub_1412C(*(a1 + 56) + 32 * v4, v63), (sub_14298(v6, v7, v8, &type metadata for String, v9, v10, v11, v12, v59, v61, v63[0]) & 1) == 0))
  {

    v13 = 0;
    v14 = 0;
    v23 = 0;
    v24 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
LABEL_12:
    v30 = 0;
    goto LABEL_13;
  }

  v13 = v60;
  v14 = v62;
  sub_5A1A8(0x65636E756F6E6E61, 0xEE006449746E656DLL, a1, v63);
  if (v64)
  {
    v22 = sub_14298(v15, v16, v17, &type metadata for String, v18, v19, v20, v21, v60, v62, v63[0]);
    if (v22)
    {
      v23 = v60;
    }

    else
    {
      v23 = 0;
    }

    if (v22)
    {
      v24 = v62;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    sub_14188(v63);
    v23 = 0;
    v24 = 0;
  }

  sub_5A1A8(0xD000000000000010, 0x80000000000960A0, a1, v63);
  if (v64)
  {
    v38 = sub_14298(v31, v32, v33, &type metadata for String, v34, v35, v36, v37, v60, v62, v63[0]);
    if (v38)
    {
      v26 = v60;
    }

    else
    {
      v26 = 0;
    }

    if (v38)
    {
      v27 = v62;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    sub_14188(v63);
    v26 = 0;
    v27 = 0;
  }

  sub_142B8(1701670760, v39, v40);
  if (v64)
  {
    v41 = sub_2664(&qword_C05F8, &qword_8ECE0);
    if (sub_14298(v41, v42, v43, v41, v44, v45, v46, v47, v60, v62, v63[0]))
    {
      v28 = v60;
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    sub_14188(v63);
    v28 = 0;
  }

  sub_142B8(1836019570, v48, v49);
  if (v64)
  {
    v50 = sub_2664(&qword_C05F8, &qword_8ECE0);
    if (sub_14298(v50, v51, v52, v50, v53, v54, v55, v56, v60, v62, v63[0]))
    {
      v29 = v60;
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    sub_14188(v63);
    v29 = 0;
  }

  sub_142B8(1701736314, v57, v58);

  if (!v64)
  {
    result = sub_14188(v63);
    goto LABEL_12;
  }

  sub_2664(&qword_C05F8, &qword_8ECE0);
  result = swift_dynamicCast();
  v30 = v60;
  if (!result)
  {
    v30 = 0;
  }

LABEL_13:
  *a2 = v13;
  a2[1] = v14;
  a2[2] = v23;
  a2[3] = v24;
  a2[4] = v26;
  a2[5] = v27;
  a2[6] = v28;
  a2[7] = v29;
  a2[8] = v30;
  return result;
}

uint64_t sub_1412C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_14188(uint64_t a1)
{
  v2 = sub_2664(&qword_C05F0, &unk_8F020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_141F8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_14238(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_14298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{

  return swift_dynamicCast();
}

double sub_142B8(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  v5 = a1 & 0xFFFF0000FFFFFFFFLL | 0x7300000000;

  return sub_5A1A8(v5, 0xE500000000000000, v3, &v7);
}

uint64_t type metadata accessor for HomeCommunicationDisplayTextCATs(uint64_t a1)
{
  result = qword_C0888;
  if (!qword_C0888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_14480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_8CA2C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2664(&qword_BFF28, &unk_8EFD0);
  __chkstk_darwin(v9 - 8);
  sub_137BC(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_8C90C();
  (*(v6 + 8))(a2, v5);
  sub_1382C(a1);
  return v11;
}

uint64_t type metadata accessor for HomeCommunicationDisplayTextCATsSimple(uint64_t a1)
{
  result = qword_C08D8;
  if (!qword_C08D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_14688()
{
  sub_152C4();
  v1._rawValue = &off_B8380;
  v3._object = v0;
  sub_8D39C(v1, v3);
  sub_152D0();
  return sub_152AC();
}

BOOL sub_146D0@<W0>(_BYTE *a1@<X8>)
{
  result = sub_14688();
  *a1 = result;
  return result;
}

uint64_t sub_14718()
{
  sub_152A0();
  v1 = sub_15268();
  sub_152B8(v1);
  sub_14F28();
  sub_15288();
  *v0 = v2;
  v0[1] = sub_1524C;
  v3 = sub_15250();

  return v4(v3);
}

BOOL sub_147C4()
{
  sub_152C4();
  v1._rawValue = &off_B83B8;
  v3._object = v0;
  sub_8D39C(v1, v3);
  sub_152D0();
  return sub_152AC();
}

BOOL sub_14808@<W0>(_BYTE *a1@<X8>)
{
  result = sub_147C4();
  *a1 = result;
  return result;
}

uint64_t sub_1484C()
{
  sub_152A0();
  v1 = sub_15268();
  sub_152B8(v1);
  sub_14ED4();
  sub_15288();
  *v0 = v2;
  v0[1] = sub_139E4;
  v3 = sub_15250();

  return v4(v3);
}

BOOL sub_148F8()
{
  sub_152C4();
  v1._rawValue = &off_B83F0;
  v3._object = v0;
  sub_8D39C(v1, v3);
  sub_152D0();
  return sub_152AC();
}

BOOL sub_1493C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_148F8();
  *a1 = result;
  return result;
}

uint64_t sub_14984()
{
  sub_152A0();
  v1 = sub_15268();
  sub_152B8(v1);
  sub_14E80();
  sub_15288();
  *v0 = v2;
  v0[1] = sub_1524C;

  return v4(0xD00000000000002CLL, 0x8000000000096140, _swiftEmptyArrayStorage, &type metadata for HomeCommunicationDisplayTextCATsSimple.ReplyButtonTextDialogIds);
}

BOOL sub_14A40()
{
  sub_152C4();
  v1._rawValue = &off_B8428;
  v3._object = v0;
  sub_8D39C(v1, v3);
  sub_152D0();
  return sub_152AC();
}

BOOL sub_14A84@<W0>(_BYTE *a1@<X8>)
{
  result = sub_14A40();
  *a1 = result;
  return result;
}

uint64_t sub_14AC8()
{
  sub_152A0();
  v1 = sub_15268();
  sub_152B8(v1);
  sub_14E2C();
  sub_15288();
  *v0 = v2;
  v0[1] = sub_1524C;
  v3 = sub_15250();

  return v4(v3);
}

uint64_t sub_14BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_8CA2C();
  sub_13DCC();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2664(&qword_BFF28, &unk_8EFD0);
  __chkstk_darwin(v11 - 8);
  sub_137BC(a1, &v15 - v12);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_8C9AC();
  (*(v7 + 8))(a2, v3);
  sub_1382C(a1);
  return v13;
}

uint64_t sub_14D24(uint64_t a1, uint64_t a2)
{
  sub_8CA2C();
  sub_13DCC();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_8C9BC();
  (*(v5 + 8))(a2, v2);
  return v9;
}

unint64_t sub_14E2C()
{
  result = qword_C0928;
  if (!qword_C0928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0928);
  }

  return result;
}

unint64_t sub_14E80()
{
  result = qword_C0930;
  if (!qword_C0930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0930);
  }

  return result;
}

unint64_t sub_14ED4()
{
  result = qword_C0938;
  if (!qword_C0938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0938);
  }

  return result;
}

unint64_t sub_14F28()
{
  result = qword_C0940;
  if (!qword_C0940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0940);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SendAnnouncementCATsSimple.OpenHomeAppDialogIds(unsigned int *a1, int a2)
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

_BYTE *sub_15010(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x150ACLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_150E8()
{
  result = qword_C0948;
  if (!qword_C0948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0948);
  }

  return result;
}

unint64_t sub_15140()
{
  result = qword_C0950;
  if (!qword_C0950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0950);
  }

  return result;
}

unint64_t sub_15198()
{
  result = qword_C0958;
  if (!qword_C0958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0958);
  }

  return result;
}

unint64_t sub_151F0()
{
  result = qword_C0960;
  if (!qword_C0960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0960);
  }

  return result;
}

uint64_t sub_15268()
{

  return swift_task_alloc();
}

uint64_t sub_152D0()
{
}

uint64_t sub_15350@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for RadarUtils();
  inited = swift_initStackObject();
  sub_8C88C();
  swift_allocObject();
  *(inited + 16) = sub_16898(v4);
  sub_38BE4(1, v1);
  swift_setDeallocating();

  swift_initStackObject();
  swift_allocObject();
  sub_16898(v5);
  sub_8D25C(40);
  v13._countAndFlagsBits = 0xD000000000000026;
  v13._object = 0x80000000000962C0;
  sub_8CF7C(v13);
  type metadata accessor for HomeCommunicationError(0);
  sub_8D31C();
  v11 = sub_15518();
  v12 = v6;
  v14._countAndFlagsBits = 2570;
  v14._object = 0xE200000000000000;
  sub_8CF7C(v14);
  v7 = sub_15C5C();
  sub_38F9C(0, 0xE000000000000000, v11, v12, v7, v8);

  sub_1681C();
  return sub_16778(v1, a1, v9);
}

uint64_t sub_15518()
{
  v1 = v0;
  v2 = type metadata accessor for HomeCommunicationParseError(0);
  __chkstk_darwin(v2 - 8);
  sub_16854();
  v5 = v4 - v3;
  v6 = type metadata accessor for HomeCommunicationError(0);
  sub_6574();
  __chkstk_darwin(v7);
  sub_16854();
  v10 = (v9 - v8);
  sub_1681C();
  sub_16778(v1, v10, v11);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_167F8();
      sub_8D25C(28);

      sub_16848();
      v27 = 0xD00000000000001ALL;
      goto LABEL_12;
    case 2u:
    case 5u:
      sub_167F8();
      sub_8D25C(26);

      sub_16848();
      v27 = 0xD000000000000018;
LABEL_12:
      v35[0] = v27;
      goto LABEL_14;
    case 3u:
      sub_166BC(v10, v5);
      strcpy(v35, "Parse error: ");
      HIWORD(v35[1]) = -4864;
      v39._countAndFlagsBits = sub_15A8C();
      sub_8CF7C(v39);

      sub_16864();
      sub_16720(v5, v22);
      goto LABEL_30;
    case 4u:
      sub_167F8();
      sub_8D25C(28);

      sub_16848();
      sub_1687C(v17);

      v18._countAndFlagsBits = 32;
      goto LABEL_29;
    case 6u:
      sub_167F8();
      sub_8D25C(20);

      sub_16848();
      v35[0] = 0xD000000000000012;
LABEL_14:
      v35[1] = v26;
      goto LABEL_15;
    case 7u:
      v23 = v10[2];
      v24 = v10[3];
      sub_1680C();
      sub_8D25C(39);

      sub_16848();
      sub_1687C(v25);

      v40._countAndFlagsBits = 544175136;
      v40._object = 0xE400000000000000;
      sub_8CF7C(v40);
      v41._countAndFlagsBits = v23;
      v41._object = v24;
      sub_8CF7C(v41);

      v18._countAndFlagsBits = 46;
      goto LABEL_29;
    case 8u:
      sub_167F8();
      sub_8D25C(57);
      v45._countAndFlagsBits = 0xD000000000000037;
      v45._object = 0x8000000000096470;
      sub_8CF7C(v45);
LABEL_15:
      v42._countAndFlagsBits = v1;
      v42._object = v6;
      sub_8CF7C(v42);
      goto LABEL_16;
    case 9u:
      v19 = *v10;
      sub_1680C();
      sub_8D25C(21);

      sub_16848();
      v35[0] = 0xD000000000000012;
      v35[1] = v20;
      if (v19 < 0xFFFFFFFF80000000)
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v19 > 0x7FFFFFFF)
      {
LABEL_33:
        __break(1u);
        JUMPOUT(0x15A38);
      }

      switch(v19)
      {
        case 1:
          v21 = @"RECIPIENTS_UNREACHABLE";
          goto LABEL_27;
        case 2:
          v21 = @"RECIPIENTS_ANNOUNCEMENTS_DISABLED";
          goto LABEL_27;
        case 3:
          v21 = @"SENDER_ANNOUNCEMENTS_DISABLED";
          goto LABEL_27;
        case 4:
          v21 = @"RECIPIENT_CANNOT_RECEIVE_ANNOUNCEMENTS";
          goto LABEL_27;
        case 5:
          v21 = @"NO_HOMEPOD";
          goto LABEL_27;
        case 6:
          v21 = @"RECIPIENT_HOMEPODS_UPDATE_REQUIRED";
          goto LABEL_27;
        case 7:
          v21 = @"REMOTE_ACCESS_NOT_ALLOWED";
          goto LABEL_27;
        case 8:
          v21 = @"NO_OTHER_HOMEPOD_TO_RECEIVE_ANNOUNCEMENTS";
          goto LABEL_27;
        case 9:
          v21 = @"ONLY_ANNOUNCERS_DEVICE_IS_AVAILABLE";
LABEL_27:
          v28 = v21;
          break;
        default:
          v21 = [NSString stringWithFormat:@"(unknown: %i)", v19];
          break;
      }

      v29 = v21;
      v30 = sub_8CEDC();
      v32 = v31;

      v46._countAndFlagsBits = v30;
      v46._object = v32;
      sub_8CF7C(v46);

      v18._countAndFlagsBits = 41;
LABEL_29:
      v18._object = 0xE100000000000000;
      sub_8CF7C(v18);
LABEL_30:
      sub_1680C();
      sub_8D25C(27);

      sub_16848();
      sub_1687C(v33);

      return v35[0];
    case 0xAu:
      sub_167F8();
      sub_8D25C(53);
      v43._countAndFlagsBits = 0xD000000000000032;
      v43._object = 0x80000000000963F0;
      sub_8CF7C(v43);
      v44._countAndFlagsBits = v1;
      v44._object = v6;
      sub_8CF7C(v44);

      v18._countAndFlagsBits = 34;
      goto LABEL_29;
    case 0xBu:
      goto LABEL_30;
    default:
      v13 = *v10;
      v12 = v10[1];
      v14 = v10[2];
      v15 = v10[3];
      sub_1680C();
      sub_8D25C(37);

      sub_16848();
      v35[0] = 0xD00000000000001FLL;
      v35[1] = v16;
      v36._countAndFlagsBits = v14;
      v36._object = v15;
      sub_8CF7C(v36);

      v37._countAndFlagsBits = 8250;
      v37._object = 0xE200000000000000;
      sub_8CF7C(v37);
      v38._countAndFlagsBits = v13;
      v38._object = v12;
      sub_8CF7C(v38);
LABEL_16:

      goto LABEL_30;
  }
}

uint64_t sub_15A8C()
{
  v1 = sub_8BE0C();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v15 - v6;
  v8 = type metadata accessor for HomeCommunicationParseError(0);
  __chkstk_darwin(v8 - 8);
  sub_16854();
  v11 = v10 - v9;
  sub_16778(v0, v10 - v9, type metadata accessor for HomeCommunicationParseError);
  (*(v2 + 32))(v7, v11, v1);
  sub_1680C();
  sub_8D25C(21);

  sub_16848();
  v15[0] = 0xD000000000000013;
  v15[1] = v12;
  (*(v2 + 16))(v5, v7, v1);
  v16._countAndFlagsBits = sub_72160(v5);
  sub_8CF7C(v16);

  v13 = v15[0];
  (*(v2 + 8))(v7, v1);
  return v13;
}

uint64_t sub_15C5C()
{
  v1 = v0;
  type metadata accessor for HomeCommunicationParseError(0);
  sub_6574();
  __chkstk_darwin(v2);
  sub_16854();
  v5 = v4 - v3;
  type metadata accessor for HomeCommunicationError(0);
  sub_6574();
  __chkstk_darwin(v6);
  sub_16854();
  v9 = (v8 - v7);
  sub_1681C();
  sub_16778(v1, v9, v10);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_167F8();
      sub_8D25C(30);

      sub_16834();
      goto LABEL_14;
    case 2u:
      sub_167F8();
      sub_8D25C(27);

      sub_16848();
      goto LABEL_14;
    case 3u:
      sub_166BC(v9, v5);
      v28._countAndFlagsBits = 0x7272456573726170;
      v28._object = 0xEB000000003A726FLL;
      sub_8CF7C(v28);
      sub_8D31C();
      v12 = 0;
      sub_16864();
      sub_16720(v5, v13);
      return v12;
    case 4u:
      sub_167F8();
      sub_8D25C(24);

      sub_16834();
      goto LABEL_14;
    case 5u:
      sub_167F8();
      sub_8D25C(23);

      sub_16848();
      goto LABEL_14;
    case 6u:
      sub_167F8();
      sub_8D25C(18);

      sub_16834();
      goto LABEL_14;
    case 7u:
      v14 = *v9;
      v15 = v9[1];
      v17 = v9[2];
      v16 = v9[3];
      sub_1680C();
      sub_8D25C(38);

      sub_16848();
      v27 = 0xD00000000000001ALL;
      v29._countAndFlagsBits = v14;
      v29._object = v15;
      sub_8CF7C(v29);

      v30._countAndFlagsBits = 0x3D74757074756F20;
      v30._object = 0xE800000000000000;
      sub_8CF7C(v30);
      v31._countAndFlagsBits = v17;
      v31._object = v16;
      sub_8CF7C(v31);
      goto LABEL_15;
    case 9u:
      v18 = *v9;
      sub_1680C();
      sub_8D25C(22);

      sub_16834();
      v27 = v19 | 4;
      if (v18 < 0xFFFFFFFF80000000)
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v18 > 0x7FFFFFFF)
      {
LABEL_30:
        __break(1u);
        JUMPOUT(0x160B4);
      }

      switch(v18)
      {
        case 1:
          v20 = @"RECIPIENTS_UNREACHABLE";
          goto LABEL_26;
        case 2:
          v20 = @"RECIPIENTS_ANNOUNCEMENTS_DISABLED";
          goto LABEL_26;
        case 3:
          v20 = @"SENDER_ANNOUNCEMENTS_DISABLED";
          goto LABEL_26;
        case 4:
          v20 = @"RECIPIENT_CANNOT_RECEIVE_ANNOUNCEMENTS";
          goto LABEL_26;
        case 5:
          v20 = @"NO_HOMEPOD";
          goto LABEL_26;
        case 6:
          v20 = @"RECIPIENT_HOMEPODS_UPDATE_REQUIRED";
          goto LABEL_26;
        case 7:
          v20 = @"REMOTE_ACCESS_NOT_ALLOWED";
          goto LABEL_26;
        case 8:
          v20 = @"NO_OTHER_HOMEPOD_TO_RECEIVE_ANNOUNCEMENTS";
          goto LABEL_26;
        case 9:
          v20 = @"ONLY_ANNOUNCERS_DEVICE_IS_AVAILABLE";
LABEL_26:
          v22 = v20;
          break;
        default:
          v20 = [NSString stringWithFormat:@"(unknown: %i)", v18];
          break;
      }

      v23 = v20;
      v24 = sub_8CEDC();
      v26 = v25;

      v32._countAndFlagsBits = v24;
      v32._object = v26;
      sub_8CF7C(v32);
LABEL_15:

      return v27;
    case 0xAu:
      sub_167F8();
      sub_8D25C(29);

      sub_16848();
LABEL_14:
      sub_1687C(v11);
      goto LABEL_15;
    default:
      sub_16720(v9, type metadata accessor for HomeCommunicationError);
      return 0;
  }
}

uint64_t sub_16148(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_161B0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_16210(uint64_t a1)
{
  sub_16394(319, &qword_C09F0, "error intentType ");
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v2 = sub_1636C();
    if (v4 <= 0x3F)
    {
      sub_16418(319, &qword_C0A00, type metadata accessor for HomeCommunicationParseError);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_16394(319, &qword_C0A08, "input output ");
        v2 = v7;
        if (v8 <= 0x3F)
        {
          v2 = sub_163F0();
          if (v9 <= 0x3F)
          {
            sub_16418(319, &qword_C0A18, type metadata accessor for INSendAnnouncementIntentResponseCode);
            v2 = v10;
            if (v11 <= 0x3F)
            {
              v2 = sub_16464();
              if (v12 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

void *sub_1636C()
{
  result = qword_C09F8;
  if (!qword_C09F8)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_C09F8);
  }

  return result;
}

void sub_16394(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void *sub_163F0()
{
  result = qword_C0A10;
  if (!qword_C0A10)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_C0A10);
  }

  return result;
}

void sub_16418(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *sub_16464()
{
  result = qword_C0A20;
  if (!qword_C0A20)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_C0A20);
  }

  return result;
}

uint64_t sub_1648C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_C0A50, &qword_8F5B8);

  return sub_3364(a1, a2, v4);
}

uint64_t sub_164E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2664(&qword_C0A50, &qword_8F5B8);

  return sub_6270(a1, a2, a3, v6);
}

uint64_t sub_16544(uint64_t a1)
{
  sub_16418(319, &unk_C0AD8, &type metadata accessor for Parse);
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = sub_8BE0C();
    v3 = v5;
    if (v6 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
      return 0;
    }
  }

  return v3;
}

__n128 sub_16618(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1662C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1666C(uint64_t result, int a2, int a3)
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

uint64_t sub_166BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeCommunicationParseError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_16720(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_6574();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_16778(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_6574();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void sub_1687C(uint64_t a1@<X8>)
{
  *(v4 - 64) = v1;
  *(v4 - 56) = a1;
  v6._countAndFlagsBits = v2;
  v6._object = v3;

  sub_8CF7C(v6);
}

uint64_t sub_16898(__n128 a1)
{

  return sub_8C87C();
}

Swift::Int sub_16938()
{
  sub_8D50C();
  sub_8D51C(0);
  return sub_8D54C();
}

Swift::Int sub_16984()
{
  sub_8D50C();
  sub_8D51C(0);
  return sub_8D54C();
}

_BYTE *sub_169E4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x16AB0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_16AF0(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x16B8CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_16BC4()
{
  result = qword_C0B00;
  if (!qword_C0B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0B00);
  }

  return result;
}

unint64_t sub_16C1C()
{
  result = qword_C0B08;
  if (!qword_C0B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0B08);
  }

  return result;
}

uint64_t sub_16C80()
{
  if (sub_4E03C(0))
  {
    v0 = sub_4E03C(1) ^ 1;
  }

  else
  {
    v0 = 1;
  }

  return v0 & 1;
}

uint64_t sub_16CB8()
{
  sub_2714((v0 + 16));

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_16D14(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HomeCommunicationFlow(0);
  sub_19520(&qword_C0D28, type metadata accessor for HomeCommunicationFlow, &unk_8F868);
  return sub_8B34C();
}

uint64_t sub_16DA4()
{
  sub_6608();
  v1[21] = v2;
  v1[22] = v0;
  v3 = sub_8BDBC();
  v1[23] = v3;
  v1[24] = *(v3 - 8);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();

  return _swift_task_switch(sub_16E6C);
}

uint64_t sub_16E6C()
{
  v50 = v0;
  v1 = *(v0 + 176);
  v2 = OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin21HomeCommunicationFlow_input;
  v3 = *(*(v0 + 192) + 16);
  (v3)(*(v0 + 208), v1 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin21HomeCommunicationFlow_input, *(v0 + 184));
  v4 = sub_174C8(v0 + 56);
  v6 = v5;
  v7 = *(*(v0 + 192) + 8);
  v7(*(v0 + 208), *(v0 + 184));
  v47 = v2;
  sub_E510((v0 + 56), v0 + 16);
  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v8 = sub_8CD0C();
  sub_33F4(v8, qword_C3DF8);

  v9 = v6;
  v10 = sub_8CCEC();
  v11 = sub_8D11C();

  v45 = v3;
  v46 = v7;
  v48 = v1;
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v49[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_862D8(v4, v9, v49);
    _os_log_impl(&dword_0, v10, v11, "#HomeCommunicationFlow Chose SKIntent name: %s. ", v12, 0xCu);
    sub_2714(v13);
    sub_E890(v13);
    sub_E890(v12);
  }

  v14 = *(v0 + 176);
  sub_8BE1C();
  v15 = sub_2664(&qword_C0440, &qword_8EBE8);
  sub_E824(v15);
  v16 = sub_7E410();
  v17 = *(v16 + *(*v16 + qword_C3D40 + 16));

  sub_E528(v14 + 16, v0 + 96);
  v18 = sub_622C((v0 + 96), *(v0 + 120));
  v19 = sub_19210(v18, (v0 + 16));
  sub_2714((v0 + 96));
  v20 = *(v0 + 200);
  v21 = *(v0 + 184);
  if (v19 == 8)
  {

    v22 = sub_1957C();
    v45(v22);
    v44 = v17;
    v23 = *(v0 + 40);
    v24 = *(v0 + 48);
    sub_622C((v0 + 16), v23);
    v25 = (*(v24 + 16))(v23, v24);
    v26 = sub_177CC(v20, (v0 + 16), v25, v44);
    v46(v20, v21);
    if (v26)
    {
      sub_8B7EC();
    }

    else
    {

      v31 = sub_8CCEC();
      v32 = sub_8D12C();

      if (os_log_type_enabled(v31, v32))
      {
        v43 = v32;
        v33 = *(v0 + 200);
        v34 = *(v0 + 184);
        v35 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v49[0] = v42;
        *v35 = 136315138;
        (v45)(v33, v48 + v47, v34);
        sub_19520(&qword_C0D20, &type metadata accessor for Input, &protocol conformance descriptor for Input);
        v36 = sub_8D43C();
        v38 = v37;
        v46(v33, v34);
        v39 = sub_862D8(v36, v38, v49);

        *(v35 + 4) = v39;
        _os_log_impl(&dword_0, v31, v43, "HomeCommunicationFlow unable to find flow for input %s", v35, 0xCu);
        sub_2714(v42);
        sub_E890(v42);
        sub_E890(v35);
      }

      sub_8B7FC();
    }
  }

  else
  {
    v27 = sub_1957C();
    v45(v27);
    sub_178E4(v19, v28, (v0 + 16), v29, v30, v17);

    v46(v20, v21);
  }

  sub_2714((v0 + 16));

  sub_65A0();

  return v40();
}

uint64_t sub_174C8(uint64_t a1)
{
  v2 = sub_8BE0C();
  sub_E6E8();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_16854();
  v8 = v7 - v6;
  v9 = *(v1 + 40);
  sub_622C((v1 + 16), v9);
  sub_E6E8();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_16854();
  v15 = v14 - v13;
  (*(v11 + 16))(v14 - v13);
  v16 = *(v11 + 8);

  v16(v15, v9);
  sub_8BD9C();
  sub_2EBF0(v8, &v25);

  v18 = *(v4 + 8);
  v17 = v4 + 8;
  v18(v8, v2);
  if (v26)
  {
    sub_E510(&v25, v27);
    sub_E528(v1 + 16, &v25);
    v19 = v27[6];
    v20 = sub_25FD8(v27);
    sub_2714(&v25);
    if (!v19)
    {
      sub_E528(v27, a1);
      v22 = [v20 _className];
      v17 = sub_8CEDC();
    }

    sub_2714(v27);
  }

  else
  {
    sub_E3BC(&v25);
    v17 = sub_8C85C();
    sub_19520(&qword_C0D18, &type metadata accessor for TransformationError, &protocol conformance descriptor for TransformationError);
    swift_allocError();
    *v21 = 0xD00000000000001FLL;
    v21[1] = 0x80000000000967F0;
    (*(*(v17 - 8) + 104))(v21, enum case for TransformationError.cannotTransform(_:), v17);
    swift_willThrow();
  }

  return v17;
}

uint64_t sub_177CC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_8BE0C();
  sub_E6E8();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_16854();
  v14 = v13 - v12;
  sub_8BD9C();
  sub_E528(v4 + 16, v18);
  v15 = sub_622C(v18, v18[3]);
  v16 = sub_184E0(v14, a3, a4, a2, v15);
  (*(v10 + 8))(v14, v8);
  sub_2714(v18);
  return v16;
}

uint64_t sub_178E4(char a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_8B6BC();
  __chkstk_darwin(v10 - 8);
  sub_16854();
  v11 = sub_8CA2C();
  __chkstk_darwin(v11 - 8);
  sub_16854();
  sub_E528(v6 + 16, &v45);
  type metadata accessor for SendAnnouncementCATsSimple(0);
  sub_8CA1C();
  v36 = sub_8C9CC();
  type metadata accessor for ReadAnnouncementCATsSimple(0);
  sub_8CA1C();
  v12 = sub_8C9CC();
  type metadata accessor for SkipAnnouncementCATsSimple(0);
  sub_8CA1C();
  v13 = sub_8C9CC();
  sub_E58C(&v45, v46);
  sub_E6E8();
  __chkstk_darwin(v14);
  sub_16854();
  v17 = v16 - v15;
  (*(v18 + 16))(v16 - v15);
  v19 = type metadata accessor for SharedGlobals(0);
  v43 = v19;
  v44 = &off_BB508;
  v20 = sub_E5DC(v42);
  sub_E63C(v17, v20);
  v21 = type metadata accessor for UnsupportedFlowOutputFactory(0);
  v22 = sub_E824(v21);
  sub_E58C(v42, v43);
  sub_E6E8();
  __chkstk_darwin(v23);
  sub_16854();
  v25 = sub_19568(v24);
  v26(v25);
  v40 = v19;
  v41 = &off_BB508;
  v27 = sub_E5DC(&v39);
  sub_E63C(v7, v27);
  sub_8B68C();
  sub_8BC3C();
  *(v22 + 16) = a1;
  sub_E510(&v39, v22 + 24);
  *(v22 + 64) = a6;
  *(v22 + 72) = v36;
  *(v22 + 80) = v12;
  *(v22 + 88) = v13;

  sub_2714(v42);
  sub_2714(&v45);
  sub_622C((v37 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin21HomeCommunicationFlow_siriKitEventSender), *(v37 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin21HomeCommunicationFlow_siriKitEventSender + 24));
  sub_8B59C();
  v28 = a3[3];
  v29 = a3[4];
  sub_622C(a3, v28);
  v30 = (*(v29 + 16))(v28, v29);
  v31 = sub_1D6AC(v30);
  v32 = [v31 _className];

  sub_8CEDC();
  sub_E528(a3, &v45);
  v33 = swift_allocObject();
  sub_E510(&v45, v33 + 16);
  LOBYTE(v42[0]) = 0;
  sub_8B58C();
  sub_8B40C();

  sub_8BB9C();
  v34 = sub_8B14C();
  sub_E824(v34);

  *&v45 = sub_8B13C();
  sub_8B7DC();
}

uint64_t sub_17DB0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_E2A0;

  return sub_84770(a1);
}

uint64_t sub_17E4C()
{
  sub_2714((v0 + 16));

  v1 = OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin21HomeCommunicationFlow_input;
  v2 = sub_8BDBC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_2714((v0 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin21HomeCommunicationFlow_siriKitEventSender));
  return v0;
}

uint64_t sub_17ECC()
{
  sub_17E4C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for HomeCommunicationFlow(uint64_t a1)
{
  result = qword_C0C00;
  if (!qword_C0C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_17F78(uint64_t a1)
{
  result = sub_8BDBC();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_18044()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_E2A0;

  return sub_16DA4();
}

uint64_t sub_180E0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for HomeCommunicationFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_1811C()
{
  sub_2714((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1815C()
{
  sub_6608();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_E2A0;

  return sub_17DB0(v2);
}

void *sub_181F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_8BDBC();
  sub_E6E8();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_16854();
  v14 = v13 - v12;
  v15 = type metadata accessor for SharedGlobals(0);
  v37[3] = v15;
  v37[4] = &off_BB508;
  v16 = sub_E5DC(v37);
  sub_E63C(a4, v16);
  (*(v10 + 16))(v14, a1, v8);
  sub_E528(a2, v36);
  sub_E528(v37, v35);
  sub_E58C(v35, v35[3]);
  sub_E6E8();
  __chkstk_darwin(v17);
  sub_16854();
  v20 = v19 - v18;
  (*(v21 + 16))(v19 - v18);
  v33 = v15;
  v34 = &off_BB508;
  v22 = sub_E5DC(v32);
  sub_E63C(v20, v22);
  v23 = type metadata accessor for SendAnnouncementFlow(0);
  v24 = sub_E824(v23);
  sub_E58C(v32, v33);
  sub_E6E8();
  __chkstk_darwin(v25);
  sub_16854();
  v27 = sub_19568(v26);
  v28(v27);
  v24[11] = v15;
  v24[12] = &off_BB508;
  v29 = sub_E5DC(v24 + 8);
  sub_E63C(v4, v29);
  sub_2714(a2);
  (*(v10 + 8))(a1, v8);
  sub_2714(v37);
  *(v24 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin20SendAnnouncementFlow_state) = 0;
  (*(v10 + 32))(v24 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin20SendAnnouncementFlow_input, v14, v8);
  sub_E510(v36, (v24 + 2));
  v24[7] = a3;
  sub_2714(v32);
  sub_2714(v35);
  return v24;
}

uint64_t sub_184E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v81 = a4;
  v82 = a3;
  v6 = a2;
  v80 = a1;
  v7 = a2;
  v8 = sub_8BE0C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_8BDBC();
  v12 = *(v83 - 8);
  v13 = __chkstk_darwin(v83);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v79 - v16;
  v18 = type metadata accessor for SharedGlobals(0);
  v90[3] = v18;
  v90[4] = &off_BB508;
  v19 = sub_E5DC(v90);
  sub_191AC(a5, v19);
  if (v7 == 7)
  {
    goto LABEL_2;
  }

  if (v7 < 2)
  {
    if (qword_BF818 != -1)
    {
      swift_once();
    }

    v47 = sub_8CD0C();
    sub_33F4(v47, qword_C3DF8);
    v48 = sub_8CCEC();
    v49 = sub_8D11C();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_0, v48, v49, "#HomeCommunicationRequestSupportPolicy calling SendAnnouncementFlow", v50, 2u);
    }

    (*(v9 + 16))(v11, v80, v8);
    sub_8BDAC();
    v51 = v83;
    (*(v12 + 16))(v15, v17, v83);
    sub_E528(v81, v89);
    sub_E528(v90, v87);
    v52 = sub_E58C(v87, v88);
    __chkstk_darwin(v52);
    v54 = &v79 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v55 + 16))(v54);
    v56 = v82;

    v57 = sub_181F4(v15, v89, v56, v54);
    sub_2714(v87);
    sub_569FC();
    *&v89[0] = v57;
    type metadata accessor for SendAnnouncementFlow(0);
    sub_19520(&qword_C0448, type metadata accessor for SendAnnouncementFlow, &unk_928D8);
    v58 = sub_8B33C();
    (*(v12 + 8))(v17, v51);
    goto LABEL_29;
  }

  if (v7 == 3)
  {
    if (qword_BF818 != -1)
    {
      swift_once();
    }

    v63 = sub_8CD0C();
    sub_33F4(v63, qword_C3DF8);
    v64 = sub_8CCEC();
    v65 = sub_8D11C();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_0, v64, v65, "#HomeCommunicationRequestSupportPolicy calling StopAnnouncementFlow", v66, 2u);
    }

    (*(v9 + 16))(v11, v80, v8);
    sub_8BDAC();
    v31 = v12;
    v32 = v83;
    (*(v12 + 16))(v15, v17, v83);
    sub_E528(v81, v89);
    sub_E528(v90, v87);
    v67 = sub_E58C(v87, v88);
    v81 = &v79;
    __chkstk_darwin(v67);
    v69 = &v79 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v70 + 16))(v69);
    v85 = v18;
    v86 = &off_BB508;
    v71 = sub_E5DC(v84);
    sub_E63C(v69, v71);
    type metadata accessor for StopAnnouncementFlow(0);
    v72 = swift_allocObject();
    v73 = sub_E58C(v84, v85);
    __chkstk_darwin(v73);
    v75 = &v79 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v76 + 16))(v75);
    v72[11] = v18;
    v72[12] = &off_BB508;
    v77 = sub_E5DC(v72 + 8);
    sub_E63C(v75, v77);
    (*(v31 + 32))(v72 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin20StopAnnouncementFlow_input, v15, v32);
    sub_E510(v89, (v72 + 2));
    v72[7] = v82;

    sub_2714(v84);
    sub_2714(v87);
    sub_78190();
    *&v89[0] = v72;
    v44 = &qword_C0450;
    v45 = type metadata accessor for StopAnnouncementFlow;
    v46 = &unk_93DB8;
    goto LABEL_28;
  }

  if (v7 == 2)
  {
    if (qword_BF818 != -1)
    {
      swift_once();
    }

    v27 = sub_8CD0C();
    sub_33F4(v27, qword_C3DF8);
    v28 = sub_8CCEC();
    v29 = sub_8D11C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_0, v28, v29, "#HomeCommunicationRequestSupportPolicy calling ReadAnnouncementFlow", v30, 2u);
    }

    (*(v9 + 16))(v11, v80, v8);
    sub_8BDAC();
    v31 = v12;
    v32 = v83;
    (*(v12 + 16))(v15, v17, v83);
    sub_E528(v81, v89);
    sub_E528(v90, v87);
    v33 = sub_E58C(v87, v88);
    v81 = &v79;
    __chkstk_darwin(v33);
    v35 = &v79 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v36 + 16))(v35);
    v85 = v18;
    v86 = &off_BB508;
    v37 = sub_E5DC(v84);
    sub_E63C(v35, v37);
    type metadata accessor for ReadAnnouncementFlow(0);
    v38 = swift_allocObject();
    v39 = sub_E58C(v84, v85);
    __chkstk_darwin(v39);
    v41 = &v79 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v42 + 16))(v41);
    v38[11] = v18;
    v38[12] = &off_BB508;
    v43 = sub_E5DC(v38 + 8);
    sub_E63C(v41, v43);
    (*(v31 + 32))(v38 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin20ReadAnnouncementFlow_input, v15, v32);
    sub_E510(v89, (v38 + 2));
    v38[7] = v82;

    sub_2714(v84);
    sub_2714(v87);
    sub_3C598();
    *&v89[0] = v38;
    v44 = &qword_C0458;
    v45 = type metadata accessor for ReadAnnouncementFlow;
    v46 = &unk_91A38;
LABEL_28:
    sub_19520(v44, v45, v46);
    v58 = sub_8B33C();
    (*(v31 + 8))(v17, v32);
LABEL_29:

    goto LABEL_30;
  }

LABEL_2:
  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v20 = sub_8CD0C();
  sub_33F4(v20, qword_C3DF8);
  v21 = sub_8CCEC();
  v22 = sub_8D12C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v89[0] = v24;
    *v23 = 136315138;
    if (v6 == 7)
    {
      v25 = 0xEF3E656D616E2073;
      v26 = 0x73616C63206F4E3CLL;
    }

    else
    {
      v59 = sub_1D6AC(v6);
      v60 = [v59 _className];

      v26 = sub_8CEDC();
      v25 = v61;
    }

    v62 = sub_862D8(v26, v25, v89);

    *(v23 + 4) = v62;
    _os_log_impl(&dword_0, v21, v22, "#HomeCommunicationRequestSupportPolicy unknown HomeCommunicationIntentClassName. Can't find an intent matching %s", v23, 0xCu);
    sub_2714(v24);
  }

  v58 = 0;
LABEL_30:
  sub_2714(v90);
  return v58;
}

uint64_t sub_191AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedGlobals(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}